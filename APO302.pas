unit APO302;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, StdCtrls, ComCtrls,
  wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Wwdbspin, Buttons,
  Wwdbigrd, Grids, Wwdbgrid, Wwdotdot, Wwdbdlg,wwClient;
type
  TFListaAutDisk = class(TForm)
    pnlCabecera: TPanel;
    Panel3: TPanel;
    pnlUse: TPanel;
    bbtnSigue: TfcShapeBtn;
    bbtnAtras: TfcShapeBtn;
    dbgListaAutdisk: TwwDBGrid;
    pbLista: TProgressBar;
    pnlUnidadPago: TPanel;
    Label1: TLabel;
    dbgAsociados: TwwDBGrid;
    bbtnCerrar: TfcShapeBtn;
    procedure bbtnAtrasClick(Sender: TObject);

    procedure bbtnSigueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure bbtnCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   end;

var
   FListaAutDisk      : TFListaAutDisk;
   xcrea, wActualizado: Boolean;
   wModo1, xASOAPENOM : String;
   xAno,xMes, xBanco, xTrans : String;
   xSaldoAnt, xSaldoTrimAn : Real;

implementation

uses COBDM1, COB001, APO306, MsgDlgs;

{$R *.DFM}

procedure TFListaAutDisk.bbtnAtrasClick(Sender: TObject);
begin
   Close;
end;

procedure TFListaAutDisk.bbtnSigueClick(Sender: TObject);
var
   xSQL : String;
begin
   If Length(Trim(DM1.cdsCobxUse.FieldByName('ARCHIVO').AsString)) > 0 Then
    begin
     If DM1.cdsCobxUse.FieldByName('ARCHIVO').AsString <> DM1.cdsQry2.FieldByName('ARCHIVO').AsString Then
      begin
       ErrorMsg(Caption, 'Sólo Puede Transferir Información del Mismo Archivo');
       Exit;
      end;
    end;
   Screen.Cursor := crDefault;
   xSQL := 'Select COUNT(ASOID) CONTA'
          +' From COB310'
          +' Where ARCHIVO ='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
          +' And TRANSANO  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 1, 4)))
          +' And TRANSMES  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 5, 2)))
          +' And UPROID    ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))
          +' And UPAGOID   ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPAGOID').AsString))
{          +' And NVL(ASOID,''N'')<>''N'' '                   //25/08/2003
          +' And NVL(FL_TRANSF,''N'')=''N'' '}
          +' And ASOID Is Not Null'
          +' And ((FL_TRANSF Is Null) Or (FL_TRANSF = ''N''))'
          +' GROUP BY ASOID'
          +' HAVING COUNT(ASOID) > 1';

   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSQL);
   DM1.cdsReporte1.Open;

   If DM1.cdsReporte1.RecordCount > 0 Then
    begin
     DM1.cdsReporte1.Close;
     Screen.Cursor := crDefault;
     ShowMessage('Existen Asociados Duplicados, No se Puede Transferir '+#13+#13+
                'Solucione estos casos en Consistenciar Datos - AutDisk');
     Exit;
    end;

   pbLista.Max   := 20;
   Screen.Cursor := crHourGlass;
   pbLista.Position := pbLista.Position+1;
   xSQL := 'Select ARCHIVO From COB310'
          +' Where ARCHIVO ='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
          +' And TRANSANO  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 1, 4)))
          +' And TRANSMES  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 5, 2)))
          +' And UPROID    ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))
          +' And UPAGOID   ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPAGOID').AsString))
          +' And ASOID Is Not Null'
          +' And FL_TRANSF Is Null';
//25/08/2003          +' And NVL(ASOID,''N'')<>''N'' '
//25/08/2003          +' And NVL(FL_TRANSF,''N'')=''N''';

   DM1.cdsReporte1.IndexFieldNames := '';
   pbLista.Position := pbLista.Position+1;
   DM1.cdsReporte1.Close;
   pbLista.Position := pbLista.Position+1;
   DM1.cdsReporte1.DataRequest(xSQL);
   pbLista.Position := pbLista.Position+1;
   DM1.cdsReporte1.Open;
   pbLista.Position := pbLista.Position+1;
   Screen.Cursor    := crDefault;
   Screen.Cursor    := crHourGlass;
   pbLista.Position := pbLista.Position+1;

//Para Verificar si hay Asociado con Igual Unidad de Proceso y Diferente Unidad de Pago
   xSQL := 'Select * From COB310'
          +' Where ARCHIVO ='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
          +' And TRANSANO  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 1, 4)))
          +' And TRANSMES  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 5, 2)))
          +' And UPROID    ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))
          +' And UPAGOID   <>'+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPAGOID').AsString))
          +' And ASOID Is Not Null'
          +' And FL_TRANSF Is Null And ARCHIVO Not In (Select ARCHIVO From COB310'
          +' Where ARCHIVO ='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
          +' And TRANSANO  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 1, 4)))
          +' And TRANSMES  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 5, 2)))
          +' And UPROID    ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))
          +' And UPAGOID   ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPAGOID').AsString))
          +' And ASOID Is Not Null'
          +' And FL_TRANSF Is Null)';

   DM1.cdsQry4.Filter   := '';
   DM1.cdsQry4.Filtered := False;
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;

   If DM1.cdsQry4.RecordCount > 0 Then
    begin
     dbgAsociados.Selected.Clear;
     dbgAsociados.Selected.Add('ASOID'#9'12'#9'Código~Asociado'#9'T');
     dbgAsociados.Selected.Add('ASOCODMOD'#9'12'#9'Código~Modular'#9'T');
     dbgAsociados.Selected.Add('ASOAPENOM'#9'35'#9'Apellidos y Nombres'#9'T');
     dbgAsociados.Selected.Add('ASOCODPAGO'#9'35'#9'Código~Pago'#9'T');
     dbgAsociados.Selected.Add('UPROID'#9'4'#9'Unidad~Proceso'#9'T');
     dbgAsociados.Selected.Add('UPAGOID'#9'4'#9'Unidad~Pago'#9'T');
     dbgAsociados.Selected.Add('USEID'#9'35'#9'USE'#9'T');
     dbgAsociados.ApplySelected;

     Beep;
     pnlUnidadPago.Visible := True;
     MessageDlg('Existen '+IntToStr(DM1.cdsQry4.RecordCount)+' Registros con Diferente Unidad de Pago', mtInformation, [mbOk], 0);
     pbLista.Max := 0;
     Exit;
    end;

   If DM1.cdsReporte1.RecordCount = 0 Then
    begin
     pbLista.Position := pbLista.Position+1;
     DM1.cdsReporte1.Close;
     pbLista.Max      := 0;
     Screen.Cursor    := crDefault;
     Beep;
     MessageDlg('No Existe Información a Transferir para este Archivo', mtInformation, [mbOk], 0);
     Exit;
    end;

   If not Question(Caption, 'Existen '+ FloatToStr(DM1.cdsReporte1.RecordCount) +' Registros para Transferir '+#13+#13+
                      'Desea Continuar?')  Then
    begin
     DM1.cdsReporte1.Close;
     pbLista.Max := 0;
     Screen.Cursor := crDefault;
     Exit;
    end;

   pbLista.Position := pbLista.Position+1;

//*************************************************
{   xSQL := 'Select ARCHIVO From COB310'
          +' Where ARCHIVO ='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
          +' And TRANSANO  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 1, 4)))
          +' And TRANSMES  ='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 5, 2)))
          +' And UPROID    ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))
          +' And UPAGOID   ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPAGOID').AsString))
          +' And ASOID Is Not Null'
          +' And FL_TRANSF Is Null';

   DM1.cdsQry1.Filter   := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;

   xSQL := 'Select * From COB304'
          +' Where ASOID ='+QuotedStr('X');

   DM1.cdsQry5.Filter   := '';
   DM1.cdsQry5.Filtered := False;
   DM1.cdsQry5.IndexFieldNames := '';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;

   DM1.cdsQry1.First;
   While Not DM1.cdsReporte1.EOF do
    begin
     DM1.cdsQry5.Append;
     If DM1.cdsQry2.FieldByName('RECAUDA').AsString = 'APORTE' Then
      begin
       DM1.cdsQry5.FieldByName('TRANSMTO').AsFloat := DM1.cdsQry1.FieldByName('TRANSMTO').AsFloat + DM1.cdsQry1.FieldByName('CREMTO').AsFloat;
       DM1.cdsQry5.FieldByName('TRANSAPO').AsFloat := DM1.cdsQry1.FieldByName('TRANSMTO').AsFloat;
       DM1.cdsQry5.FieldByName('TRANSCUO').AsFloat := 0.00;
      end
     Else
      begin
       If DM1.cdsQry2.FieldByName('RECAUDA').AsString = 'CUOTA' Then
        begin
         DM1.cdsQry5.FieldByName('TRANSMTO').AsFloat := DM1.cdsQry1.FieldByName('TRANSMTO').AsFloat + DM1.cdsQry1.FieldByName('CREMTO').AsFloat;
         DM1.cdsQry5.FieldByName('TRANSAPO').AsFloat := 0.00;
         DM1.cdsQry5.FieldByName('TRANSCUO').AsFloat := DM1.cdsQry1.FieldByName('CREMTO').AsFloat;
        end
       Else
        begin
         If DM1.cdsQry2.FieldByName('RECAUDA').AsString = 'APORTE + CUOTA' Then
          begin
           DM1.cdsQry5.FieldByName('TRANSMTO').AsFloat := DM1.cdsQry1.FieldByName('TRANSMTO').AsFloat + DM1.cdsQry1.FieldByName('CREMTO').AsFloat;
           If DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat >= DM1.cdsQry1.FieldByName('TRANSMTO').AsFloat Then
            DM1.cdsQry5.FieldByName('TRANSAPO').AsFloat := DM1.cdsQry1.FieldByName('TRANSMTO').AsFloat
           Else
            If (DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat - DM1.cdsQry1.FieldByName('TRANSMTO').AsFloat ) <=
                DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat Then
             DM1.cdsQry5.FieldByName('TRANSAPO').AsFloat := DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat
            Else
             DM1.cdsQry5.FieldByName('TRANSAPO').AsFloat := 0.00;
           If DM1.cdsQry5.FieldByName('
          end;
        end;
      end;


              +' NVL(A.TRANSMTO,0) + NVL(A.CREMTO,0) TRANSMTO,'
              +' CASE WHEN '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+' >= NVL(A.TRANSMTO,0) THEN NVL(A.TRANSMTO,0) ELSE'
              +' CASE WHEN ('+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+' - NVL(A.TRANSMTO,0) <='
              +FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+') THEN'
              +FloattoStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+' ELSE NVL(A.TRANSMTO,0) END'
              +' END TRANSAPO,'

              +' CASE WHEN'
              +' (NVL(A.TRANSMTO,0) + NVL(A.CREMTO,0)) - '
              +' CASE WHEN '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)
              +' >= NVL(A.TRANSMTO,0) THEN NVL(A.TRANSMTO,0) ELSE '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)
              +' END'
              +' < '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+' THEN 0 ELSE'
              +' (NVL(A.TRANSMTO,0) + NVL(A.CREMTO,0)) - '
              +' CASE WHEN '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)
              +' >= NVL(A.TRANSMTO,0) THEN NVL(A.TRANSMTO,0) ELSE '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)
              +' END END TRANSCUO,';


          end
         Else
          begin
          end;
        end;
      end;
     DM1.cdsReporte1.Next;
    end;}
//*************************************************

   xSQL := 'INSERT INTO COB304 ('
          +' ASOID, ASOCODMOD, USEID, UPROID, UPAGOID, DPTOID, TRANSANO,'
          +' TRANSMES, TMONID, TRANSMTO, TRANSAPO, TRANSCUO,'
          +' BANCOID, CCBCOID, APOSEC, ASOAPENOM, ASOCODPAGO,'
          +' FORPAGOID, TRANSNOPE, TRANSFOPE, RCOBID,'
          +' DETRCOBID, USERCOBID, USUARIO, FREG, HREG, ARCHIVO, CARGO)'
          +' Select'
          +' A.ASOID, A.ASOCODMOD, A.USEID, A.UPROID, A.UPAGOID, SUBSTR(C.DPTOID,1,2) DPTOID, A.TRANSANO,'
          +' A.TRANSMES, A.TMONID, ';

   If DM1.cdsQry2.FieldByName('RECAUDA').AsString = 'APORTE' Then
    begin
     xSQL := xSQL
            +' NVL(A.TRANSMTO, 0) + NVL(A.CREMTO,0) TRANSMTO,'
            +' NVL(A.TRANSMTO, 0) TRANSAPO,'
            +' 0 TRANSCUO,';
    end
   Else
    If DM1.cdsQry2.FieldByName('RECAUDA').AsString = 'CUOTA' Then
     begin
  	{  xSQL := xSQL
             +' NVL(A.TRANSMTO, 0) + NVL(A.CREMTO,0) TRANSMTO,'
             +' 0 TRANSAPO,'
             +' NVL(A.CREMTO, 0) TRANSCUO,';}   //RICMZ
  	   xSQL := xSQL
             +' NVL(A.TRANSMTO, 0) + NVL(A.CREMTO,0) TRANSMTO,'
             +' 0 TRANSAPO,'
             +' NVL(A.TRANSMTO, 0) TRANSCUO,';
     end
    Else
     If DM1.cdsQry2.FieldByName('RECAUDA').AsString = 'APORTE + CUOTA' Then
      begin
       xSQL := xSQL
              +' NVL(A.TRANSMTO, 0) + NVL(A.CREMTO, 0) TRANSMTO,'
              +' CASE WHEN '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+' >= NVL(A.TRANSMTO,0) THEN NVL(A.TRANSMTO,0) ELSE'
              +' CASE WHEN ('+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+' - NVL(A.TRANSMTO,0) <='
              +FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+') THEN '
              +FloattoStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+' ELSE NVL(A.TRANSMTO,0) END'
              +' END TRANSAPO,'
              +' CASE WHEN'
              +' (NVL(A.TRANSMTO,0) + NVL(A.CREMTO,0)) - '
              +' CASE WHEN '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)
              +' >= NVL(A.TRANSMTO,0) THEN NVL(A.TRANSMTO,0) ELSE '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)
              +' END'
              +' < '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+' THEN 0 ELSE'
              +' (NVL(A.TRANSMTO,0) + NVL(A.CREMTO,0)) - '
              +' CASE WHEN '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)
              +' >= NVL(A.TRANSMTO,0) THEN NVL(A.TRANSMTO,0) ELSE '+FloatToStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)
              +' END END TRANSCUO,';
      end
     Else
      If DM1.cdsQry2.FieldByName('RECAUDA').AsString = 'APORTE Y CUOTA' Then
       begin
  	    xSQL := xSQL
               +' NVL(A.TRANSMTO,0) + NVL(A.CREMTO,0) TRANSMTO,'
               +' NVL(A.TRANSMTO,0) TRANSAPO,'
               +' NVL(A.CREMTO,0) TRANSCUO,';
       end;

   xSQL := xSQL+
         QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString)+', '+
         QuotedStr(DM1.cdsCobxUse.FieldByName('CCBCO').AsString)+', '+
        'A.APOSEC, A.ASOAPENOM, A.ASOCODPAGO, '+
         QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)+', '+
         QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
         QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString)+', '+
         QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+', '+
         QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+', '+
         QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)+', '+
        'A.USUARIO||'' AUTO'', A.FREG, A.HREG, A.ARCHIVO, A.CARGO'
        +' From COB310 A, APO201 B, APO101 C'
        +' Where A.ASOID = B.ASOID(+)'
        +' And A.UPROID = C.UPROID'
        +' And A.UPAGOID = C.UPAGOID'
        +' And A.USEID = C.USEID'
        +' And A.ARCHIVO  ='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
        +' And A.TRANSANO ='+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 1, 4))
        +' And A.TRANSMES ='+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 5, 2))
        +' And A.UPROID   ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))
        +' And A.UPAGOID  ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPAGOID').AsString))
{        +' And NVL(A.ASOID,''N'')<>''N'' '
        +' And NVL(FL_TRANSF,''N'')=''N''';}
        +' And A.ASOID Is Not Null'
        +' And ((FL_TRANSF Is Null) Or (FL_TRANSF = ''N''))';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   //Verifica si el TRANSAPO + TRANSCUO < TRANSMTO => TRANSAPO = TRANSMTO y TRANSCUO = 0
   xSQL := 'Select * From COB304'
          +' Where RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' And USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' And NVL(TRANSAPO, 0) + NVL(TRANSCUO, 0) < NVL(TRANSMTO, 0)';

   DM1.cdsAux.Filter   := '';
   DM1.cdsAux.Filtered := False;
   DM1.cdsAux.IndexFieldNames := '';
   DM1.cdsAux.Close;
   DM1.cdsAux.DataRequest(xSQL);
   DM1.cdsAux.Open;

   If DM1.cdsAux.RecordCount > 0 Then
    begin
     DM1.cdsAux.First;
     While Not DM1.cdsAux.EOF do
      begin
       xSQL := 'Update COB304 Set'
              +' TRANSAPO ='+DM1.cdsAux.FieldByName('TRANSMTO').AsString+', TRANSCUO = 0'
              +' Where ASOID ='+QuotedStr(DM1.cdsAux.FieldByName('ASOID').AsString)
              +' And ASOCODMOD ='+QuotedStr(DM1.cdsAux.FieldByName('ASOCODMOD').AsString)
              +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
              +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
              +' And USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
              +' And NVL(TRANSAPO, 0) + NVL(TRANSCUO, 0) < NVL(TRANSMTO, 0)';
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL); 
       DM1.cdsAux.Next;
      end;
    end;

   pbLista.Position := pbLista.Position+1;
   DM1.cdsReporte1.Close;
   pbLista.Position := pbLista.Position+1;
   DM1.cdsAutdisk.Close;
   pbLista.Position := pbLista.Position+1;

   xSQL := 'Select * From COB304'
          +' Where RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' And USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
   DM1.cdsAutdisk.DataRequest(xSQL);
   DM1.cdsAutdisk.Open;
   pbLista.Position := pbLista.Position+1;
   FIngresoLote.ActualizaFooter;
   pbLista.Position := pbLista.Position+1;

   DM1.cdsCobxUse.Edit;

   pbLista.Position := pbLista.Position+1;
   DM1.cdsCobxUse.FieldByName('RCOBUSEAPO').AsFloat := StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)','')));
   pbLista.Position := pbLista.Position+1;
   DM1.cdsCobxUse.FieldByName('RCOBUSECUO').AsFloat := StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)','')));
   pbLista.Position := pbLista.Position+1;
   DM1.cdsCobxUse.FieldByName('RCOBUSETOT').AsFloat := StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)','')));
   pbLista.Position := pbLista.Position+1;
   DM1.cdsCobxUse.FieldByName('ARCHIVO').AsString   := DM1.cdsQry2.FieldByName('ARCHIVO').AsString;

   pbLista.Position := pbLista.Position+1;
   cdspost(DM1.cdsCobxUse);
   pbLista.Position := pbLista.Position+1;
   DM1.cdsCobxUse.post;
   pbLista.Position := pbLista.Position+1;
   DM1.ControlTran;

   xSQL := 'UPDATE COB312 SET FL_TRANSF = ''S'' '
          +' Where PERIODO ='+QuotedStr(DM1.cdsQry2.FieldByName('PERIODO').AsString)
          +' And ARCHIVO   ='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
          +' And UPROID    ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))
          +' And UPAGOID   ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPAGOID').AsString))
//          +' And NVL(TRIM(FL_TRANSF),''N'')=''N'''; //25/08/2003
          +' And ((FL_TRANSF Is Null) Or (FL_TRANSF = ''N''))';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbLista.Position := pbLista.Position+1;

   xSQL := 'UPDATE COB310 SET FL_TRANSF = ''S'' '
          +' Where TRANSANO ='+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 1, 4))
          +' And TRANSMES   ='+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString, 5, 2))
          +' And ARCHIVO    ='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)
          +' And UPROID     ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))
          +' And UPAGOID    ='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPAGOID').AsString))
{          +' And NVL(ASOID,''N'')<>''N'' '
          +' And NVL(FL_TRANSF,''N'')=''N''';}
          +' And ASOID Is Not Null'
          +' And ((FL_TRANSF Is Null) Or (FL_TRANSF = ''N''))'; //Si el Flag de Transferido es Nulo o Igual a 'N'}

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbLista.Position := pbLista.Position+1;
   pbLista.Max := 0;

   Beep;
   ShowMessage('Actualización Realizada');
   FIngresoLote.dbgAportes.Enabled := True;
   Screen.Cursor := crDefault;
   FIngresoLote.bbtnAtras.SetFocus;
   Close;
   pbLista.Max := 0;
end;

procedure TFListaAutDisk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsQry2.Filter   := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry4.Filter   := '';
   DM1.cdsQry4.Filtered := False;
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry4.Close;
   DM1.cdsAux.Filter   := '';
   DM1.cdsAux.Filtered := False;
   DM1.cdsAux.IndexFieldNames := '';
   DM1.cdsAux.Close;
end;

procedure TFListaAutDisk.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFListaAutDisk.FormActivate(Sender: TObject);
begin
   pnlUnidadPago.Visible := False;
end;

procedure TFListaAutDisk.bbtnCerrarClick(Sender: TObject);
begin
   pnlUnidadPago.Visible := False;
end;

end.
