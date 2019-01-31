unit COB414;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Mask, wwdbedit,
  variants, DBCtrls, Wwdbspin, ComCtrls, wwdblook;

type
  TFPlantMan = class(TForm)
    Panel1: TPanel;
    wwDBGrid2: TwwDBGrid;
    dbgCabec: TwwDBGrid;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    bbtnImportar: TBitBtn;
    wwDBGrid3IButton: TwwIButton;
    wwDBGrid2IButton: TwwIButton;
    wwDBGrid1IButton: TwwIButton;
    pnlCab: TPanel;
    pnlDet: TPanel;
    dbeCodigo: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    bbtnOkC: TBitBtn;
    bbtnCancC: TBitBtn;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    bbtnOkD: TBitBtn;
    bbtnCancD: TBitBtn;
    dbeItem: TwwDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    spLongCero: TwwDBSpinEdit;
    dbcbCero: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    spDesde: TwwDBSpinEdit;
    Label11: TLabel;
    spHasta: TwwDBSpinEdit;
    bbtnEliminar: TBitBtn;
    pgProc: TProgressBar;
    pnlPrevio: TPanel;
    dbgPrevio: TwwDBGrid;
    bbtnCerrar: TBitBtn;
    lblPrevio: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    bbtnPrevio: TBitBtn;
    dblcCampo: TwwDBLookupCombo;
    bbtnVerifica: TBitBtn;
    sbBase: TScrollBox;
    dbgPlantilla: TwwDBGrid;
    BitBtn3: TBitBtn;
    procedure bbtnImportarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwDBGrid3IButtonClick(Sender: TObject);
    procedure bbtnCancCClick(Sender: TObject);
    procedure bbtnOkCClick(Sender: TObject);
    procedure wwDBGrid2IButtonClick(Sender: TObject);
    procedure bbtnOkDClick(Sender: TObject);
    procedure bbtnCancDClick(Sender: TObject);
    procedure dbgCabecDblClick(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgCabecKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwDBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbtnEliminarClick(Sender: TObject);
    procedure bbtnPrevioClick(Sender: TObject);
    procedure bbtnCerrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dblcCampoExit(Sender: TObject);
    procedure dbgCabecRowChanged(Sender: TObject);
    procedure bbtnVerificaClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    xModoPC : String;
    xSQL: String;

    //procedure ErrorDialog(E.Message, E.HelpContext);
    function verTransferencia(xArchivo,xAno,xMes:string):boolean;
  public
    { Public declarations }
  end;

var
  FPlantMan: TFPlantMan;

implementation

{$R *.DFM}

USES COBDM1, MsgDlgs;


procedure TFPlantMan.bbtnImportarClick(Sender: TObject);
var
   xSQL, xSQL2, xSelect1, xSelect2, xSelect3, xDesde, xHasta, xCeros, xUSE, xAde, sWhere, xPagoId : String;
begin

   {If DM1.cdsDetalle.FieldByName('FL_IMPORT').AsString='S' Then
     begin
      ShowMessage('Error: Archivo ya fué Importado');
      Exit;
    end; }

    If  verTransferencia(DM1.cdsDetalle.FieldByName('ARCHIVO').AsString,
                         Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,1,4),
                         Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,5,2) ) Then
     Begin
        ShowMessage('La Información ya fue tranferida al Ingreso en Lote, no se podra Importar ..');
        Exit;
     End;

   If not Question(Caption, 'Seguro de Importar Archivo?') Then
    Exit;

   Screen.Cursor := crHourGlass;
   xSelect1 := '';
   xSelect2 := '';
   xSelect3 := '';
   xCeros   := '0000000000';

   pgProc.Visible := True;
   pgProc.Max := DM1.cdsModelo.RecordCount+4;
   pgProc.Min := 0;
   pgProc.Position := 1;

   xAde := 'N';

   DM1.cdsModelo.First;
   While not DM1.cdsModelo.Eof do
    begin
     If ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) And
        ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) Then
      begin
       If ( DM1.cdsModelo.FieldByName('CAMPO').AsString = 'ADEID'  ) or
         ( DM1.cdsModelo.FieldByName('CAMPO').AsString = 'ADEDES' ) Then
        begin
         xAde := 'S';
         Break;
        end;
      end;
     DM1.cdsModelo.Next;
    end;

   If xAde = 'N' Then
    begin
     xUSE := '';
     DM1.cdsModelo.First;
     While not DM1.cdsModelo.Eof do
      begin
       Application.ProcessMessages;
       pgProc.Position := pgProc.Position+1;
       If ( DM1.cdsModelo.FieldByName('DESDE').AsInteger>0 ) And
          ( DM1.cdsModelo.FieldByName('DESDE').AsInteger>0 ) Then
        begin
         xDesde := DM1.cdsModelo.FieldByName('DESDE').AsString;
         xHasta := IntToStr( DM1.cdsModelo.FieldByName('HASTA').AsInteger - DM1.cdsModelo.FieldByName('DESDE').AsInteger + 1 );

         xSelect1 := xSelect1 + ', '+DM1.cdsModelo.FieldByName('CAMPO').AsString;

         If DM1.cdsModelo.FieldByName('TIPO').AsString = 'FLOAT' Then
          xSelect2 := xSelect2 + ', ROUND(TO_NUMBER( TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )), ''9999999.9999999999'' ),2) '
         Else
          begin
           If DM1.cdsModelo.FieldByName('CEROIZQ').AsString = 'S' Then
            begin
             xSelect2 := xSelect2 + ',SUBSTR('''+xCeros+'''||TRIM(SUBSTR(LINEA, '+xDesde+', '+xHasta+' ) ), '
                                              +'LENGTH( TRIM(SUBSTR(LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) ';
            end
           Else
            xSelect2 := xSelect2 + ', TRIM(SUBSTR(LINEA, '+xDesde+', '+xHasta+' ) ) ';
          end;

         If DM1.cdsModelo.FieldByName('CAMPO').AsString = 'USEID' Then
          begin
           If DM1.cdsModelo.FieldByName('CEROIZQ').AsString = 'S' Then
            begin
             xUSE := ' SUBSTR('''+xCeros+'''||TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                    +'LENGTH( TRIM(SUBSTR(LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) ';
            end
           Else
            xUSE := ' TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) ';
          end;
        end;
       DM1.cdsModelo.Next;
      end;

     If xUSE = '' Then
      begin
       Screen.Cursor := crDefault;
       ShowMessage('Error : Falta Posición de USE');
       pgProc.Visible := False;
       Exit;
      end;

     xSQL := 'INSERT INTO COB310 ( ARCHIVO'+ xSelect1+', '
            +'APOSEC, USUARIO, FREG, HREG, UPROID, UPAGOID, TRANSANO, TRANSMES ) '

            +'SELECT COB306.ARCHIVO '+xSelect2+', '''+DM1.cdsDetalle.FieldByName('PERIODO').AsString+''', '
            +''''+DM1.wUsuario+''', SYSDATE, SYSDATE, COB306.UPROID, NVL(APO101.UPAGOID, COB306.UPAGOID ) UPAGOID, '
            +'SUBSTR(PERIODO,1,4), SUBSTR(PERIODO,5,2) '
            +'FROM COB306, APO101 '
            +'WHERE COB306.ARCHIVO ='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' '
            +'AND COB306.PERIODO   ='''+DM1.cdsDetalle.FieldByName('PERIODO').AsString+''' '
            +'AND '+xUSE+' = APO101.USEID(+) '
            +'AND COB306.UPROID  = APO101.UPROID(+) '
            +'AND COB306.UPAGOID = APO101.UPAGOID(+)';
    end
   Else
    begin
     // Si En Origen Tiene ADE
     xUSE := '';

     DM1.cdsModelo.First;
     While not DM1.cdsModelo.Eof do
      begin
       Application.ProcessMessages;

       pgProc.Position := pgProc.Position+1;

       If ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) And
          ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) Then
        begin
         xDesde := DM1.cdsModelo.FieldByName('DESDE').AsString;
         xHasta := IntToStr( DM1.cdsModelo.FieldByName('HASTA').AsInteger -
                          DM1.cdsModelo.FieldByName('DESDE').AsInteger + 1 );

         If DM1.cdsModelo.FieldByName('CAMPO').AsString<>'USEID' Then
          begin
           If DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEID' Then
            begin
             xSelect1 := xSelect1+', USEID';
             xSelect2 := xSelect2+', APO125.USEID ';
             xSelect3 := xSelect3+', A.USEID ';

             If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
              begin
               xUSE := ' AND SUBSTR('''+xCeros+'''||Trim( Substr( LINEA, '+xDesde+', '+xHasta+' ) ), '+
                       'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+
                       DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) =APO125.ADEID(+)';
              end
             Else
              xUSE := ' AND SUBSTR( LINEA, '+xDesde+', '+xHasta+' )=TRIM(APO125.ADEID(+))';
            end
           Else
            begin
             If DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEDES' Then
              begin
               xSelect1 := xSelect1+', USEID';
               xSelect2 := xSelect2+', APO125.USEID ';
               xSelect3 := xSelect3+', A.USEID';

               If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
                begin
                 xUSE := ' And SUBSTR('''+xCeros+'''||Trim( Substr( LINEA, '+xDesde+', '+xHasta+' ) ), '
                     + 'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) =TRIM( APO125.ADEDES(+) )';
                end
               Else
                xUSE := ' And TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) )=TRIM( APO125.ADEDES(+) )';
              end
             Else
              begin
               xSelect1 := xSelect1+', '+DM1.cdsModelo.FieldByName('CAMPO').AsString;

               If DM1.cdsModelo.FieldByName('TIPO').AsString='FLOAT' Then
                xSelect2 := xSelect2+', ROUND(TO_NUMBER(TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )), ''9999999.9999999999'' ),2) '+DM1.cdsModelo.FieldByName('CAMPO').AsString
               Else
                begin
                 If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
                  begin
                   xSelect2 := xSelect2+', SUBSTR('''+xCeros+'''||Trim( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                                          +  'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) '+DM1.cdsModelo.FieldByName('CAMPO').AsString;
                  end
                 Else
                  xSelect2 := xSelect2 + ', TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) '+ DM1.cdsModelo.FieldByName('CAMPO').AsString;
                end;
               xSelect3 := xSelect3+', A.'+DM1.cdsModelo.FieldByName('CAMPO').AsString;
              end;
            end;
          end;
        end;
       DM1.cdsModelo.Next;
      end;

    If xUSE='' Then
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('Error : Falta Posición de USE');
      xUSE:='COB306.USEID'
    end;

    xSQL := 'INSERT INTO COB310 (ARCHIVO'+ xSelect1+', '
           +'APOSEC, USUARIO, FREG, HREG, UPROID, UPAGOID, TRANSANO, TRANSMES ) '
           +'SELECT ARCHIVO '+xSelect3+', '''+DM1.cdsDetalle.FieldByName('PERIODO').AsString+''', '
           +''''+DM1.wUsuario+''', SYSDATE, SYSDATE, A.UPROID, NVL(B.UPAGOID, A.UPAGOID ) UPAGOID, '
           +'SUBSTR(PERIODO,1,4), SUBSTR(PERIODO,5,2) '
           +'FROM ('
           +'SELECT ARCHIVO '+xSelect2+', '
           +'COB306.UPROID, COB306.UPAGOID, SUBSTR( LINEA, 107, 7 ) ADEDES, PERIODO '
           +'FROM COB306, APO125 '
           +'WHERE COB306.ARCHIVO ='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' '
           +'AND COB306.PERIODO ='''+DM1.cdsDetalle.FieldByName('PERIODO').AsString+''' '
           +xUse
           +') A, APO101 B '
           +'WHERE A.USEID = B.USEID(+) '
           +'AND A.UPROID  = B.UPROID(+) '
           +'AND A.UPAGOID = B.UPAGOID(+)';
         //  +'AND COB306.UPAGOID=APO101.UPAGOID(+)';
  end;

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL+xSQL2);
  pgProc.Position := pgProc.Position+1;
  Try
    DM1.cdsQry.Execute;
  Except
    //on E: Exception do ErrorDialog(E.Message, E.HelpContext);
    on E: Exception do //ShowMessage( E.Message +#13+#13+ InttoStr(E.HelpContext));
    begin
      ShowMessage( E.Message );
      //ShowMessage( E.Message +#13+#13+ InttoStr(E.HelpContext));
      Screen.Cursor := crDefault;
      pgProc.Position := 0;
      //ErrorMsg(Caption, 'Existe Data Erronea, Verifique Antes de Importar ');
      Exit;
    end;
  end;

   pgProc.Position := pgProc.Position+1;

   sWhere := 'SELECT A.USEID'
            +' FROM COB310 A, APO101 B'
            +' WHERE ARCHIVO ='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' '
            +' AND TRANSANO ='''+Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,1,4)+''' '
            +' AND TRANSMES ='''+Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,5,2)+''' '
            +' AND A.USEID = B.USEID'
            +' AND B.UPROID='+QuotedStr(DM1.cdsDetalle.FieldByName('UPROID').AsString);

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(sWhere);
   DM1.cdsQry.Open;

  {sWhere:='ARCHIVO='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' '+
          'AND TRANSANO='''+Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,1,4)+''' '+
          'AND TRANSMES='''+Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,5,2)+'''';

  DM1.DisplayDescrip('prvTGE','COB310','USEID',sWhere,'USEID');}

   sWhere := 'UPROID ='+QuotedStr(DM1.cdsDetalle.FieldByName('UPROID').AsString)
            +' AND USEID ='+QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString);

   xPagoId := DM1.DisplayDescrip('prvTGE', 'APO101', 'UPAGOID', sWhere, 'UPAGOID');

   If Length(Trim(xPagoId)) = 0 Then
    begin
     ErrorMsg(Caption,'No Existe Unidad de Pago Asignada a la Unidad de Proceso  '+DM1.cdsDetalle.FieldByName('UPROID').AsString);
    end;

   DM1.cdsDetalle.Edit;
   DM1.cdsDetalle.FieldByName('FL_IMPORT').AsString := 'S';
   pgProc.Position := pgProc.Position+1;
//  DM1.cdsDetalle.FieldByName('UPAGOID').AsString:=xPagoId;
   pgProc.Position := pgProc.Position+1;
   DM1.cdsDetalle.Post;
   DM1.AplicaDatos( DM1.cdsDetalle, '' );
   Screen.Cursor   := crDefault;
   pgProc.Position := pgProc.Position+1;
   pgProc.Visible  := False;
   ShowMessage('Transferencia Ok.');
end;

procedure TFPlantMan.FormActivate(Sender: TObject);
var
   xSQL, xLin1, xLin2 : String;
   xCols : Integer;
begin
   DM1.cdsModelo.Close;
   DM1.cdsModelo.DataRequest('SELECT * FROM COB311');
   DM1.cdsModelo.Open;

   xSQL := 'SELECT LINEA FROM COB306'
          +' WHERE ARCHIVO ='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' AND '
          +' PERIODO ='''+DM1.cdsDetalle.FieldByName('PERIODO').AsString+'''';

   DM1.cdsEjecuta.Close;
   DM1.cdsEjecuta.PacketRecords := 100;
   DM1.cdsEjecuta.DataRequest(xSQL);
   DM1.cdsEjecuta.Open;

   xSQL := 'SELECT * FROM COB313 ORDER BY PLANTILLA';

   DM1.cdsPlantilla.Close;
   DM1.cdsPlantilla.DataRequest(xSQL);
   DM1.cdsPlantilla.Open;

   xLin1 := '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';
   xLin2 := '         1         2         3         4         5         6         7         8         9        10        11        12        13        14        15        16        17        18        19        20';
   xLin1 := '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';
   xLin2 := '         1         2         3         4         5         6         7         8         9        10        11        12        13        14        15        16        17        18        19        20';
   xCols := 200;

   DM1.cdsEjecuta.FieldByName('LINEA').DisplayLabel := Copy( xLin1,1,xCols)+'~'+Copy(xLin2,1,xCols);
   DM1.cdsEjecuta.FieldByName('LINEA').DisplayWidth := xCols;

  //DM1.cdsEjecuta.FieldByName('LINEA2').DisplayLabel:=Copy( xLin1,81,xCols)+'~'+Copy(xLin2,xCols+1,xCols);
  //DM1.cdsEjecuta.FieldByName('LINEA2').DisplayWidth:=xCols;
  {
  DM1.cdsEjecuta.FieldByName('FLAG').Visible    :=False;
  DM1.cdsEjecuta.FieldByName('ITEM').Visible    :=False;
  DM1.cdsEjecuta.FieldByName('ARCHIVO').Visible :=False;
  DM1.cdsEjecuta.FieldByName('PERIODO').Visible :=False;
  DM1.cdsEjecuta.FieldByName('FREG').Visible    :=False;
  DM1.cdsEjecuta.FieldByName('LINEA2').Visible  :=False;
  DM1.cdsEjecuta.FieldByName('USEID').Visible   :=False;
  DM1.cdsEjecuta.FieldByName('UPAGOID').Visible :=False;
  DM1.cdsEjecuta.FieldByName('UPROID').Visible  :=False;
  }
   dbgCabec.Selected.Clear;
   dbgCabec.Selected.Add('PLANTILLA'+#9+'5'+#9+'It.');
   dbgCabec.Selected.Add('NOMBRE'+#9+'20'+#9+'Plantilla');

   DM1.cdsPlandet.Open;
end;

procedure TFPlantMan.wwDBGrid3IButtonClick(Sender: TObject);
var
   xSQL : String;
begin
   pnlCab.Visible := True;
   dbeCodigo.Enabled := False;
   xSQL := 'SELECT MAX( NVL(PLANTILLA,''0'') ) NUMERO FROM COB313';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;

   DM1.cdsPlantilla.Append;
   If (Length(Trim(DM1.cdsQry.FieldByName('NUMERO').AsString)) = 0) Or
      (DM1.cdsQry.FieldByName('NUMERO').AsString = '0') Then
    DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString := '00001'
   Else
    begin
     DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString := DM1.StrZero(IntToStr(StrToInt(Trim(DM1.cdsQry.FieldByName('NUMERO').AsString))+1),5);
    end;
   xModoPC := 'A';
end;

procedure TFPlantMan.bbtnCancCClick(Sender: TObject);
begin
  pnlCab.Visible:=False;
  DM1.cdsPlantilla.CancelUpdates;
end;

procedure TFPlantMan.bbtnOkCClick(Sender: TObject);
var
   xSQL : String;
begin
   pnlCab.Visible := False;

   If xModoPC = 'A' Then
    begin
     xSQL := 'INSERT INTO COB314 (PLANTILLA, ITEM, CAMPO, NOMBRE, USUARIO, CEROIZQ)'
            +' SELECT '''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+''','
            +' ITEM, CAMPO, NOMBRE, '''+DM1.wUsuario+''', ''N'' FROM COB311';

     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest( xSQL );
     DM1.cdsQry.Execute;

     xSQL := 'SELECT * FROM COB314'
            +' WHERE PLANTILLA ='''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+''' '
            +' ORDER BY ITEM';

     DM1.cdsPlanDet.Close;
     DM1.cdsPlanDet.Datarequest( xSQL );
     DM1.cdsPlanDet.Open;
    end;

   DM1.cdsPlantilla.ApplyUpdates( 0 );
end;

procedure TFPlantMan.wwDBGrid2IButtonClick(Sender: TObject);
var
   xSQL : String;
begin
   pnlDet.Visible :=True;
   dbeItem.Enabled:=False;

   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest('SELECT * FROM COB311') ;
   DM1.cdsPadre.Open;
   dblcCampo.LookupField:='NOMBRE';
   dblcCampo.LookupTable:=DM1.cdsPadre;



   xSQL := 'SELECT * FROM COB311 A'
          +' WHERE NOT EXISTS(SELECT * FROM COB314 B '+
                          'WHERE PLANTILLA='''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+''' AND A.CAMPO=B.CAMPO)';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest( xSQL );
   DM1.cdsReporte.Open;


   DM1.cdsPlanDet.Insert;
   DM1.cdsPlanDet.FieldByName('PLANTILLA').AsString := DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString;
   DM1.cdsPlanDet.FieldByName('CEROIZQ').AsString   := 'N';
   dblcCampo.SetFocus;
end;

procedure TFPlantMan.bbtnOkDClick(Sender: TObject);
begin
   If (Length(Trim(spDesde.Text))=0) Or
      (Trim(spDesde.Text)='0') Then
    begin
     ShowMessage('Debe Ingresar un valor Diferente a cero');
     spDesde.SetFocus;
     exit;
    end;

   If (Length(Trim(spHasta.Text))=0) Or
      (Trim(spDesde.Text)='0') Then
    begin
     ShowMessage('Debe Ingresar un valor Diferente a cero');
     spHasta.SetFocus;
     exit;
    end;

   If dbcbCero.Checked Then
    begin
     If spLongCero.Value<(spHasta.Value-spDesde.value) Then
      begin
       ShowMessage('La Longitud Total del campo debe ser Mayor');
       spLongCero.SetFocus;
       Exit;
      end;
    end;
   pnlDet.Visible := False;
   DM1.cdsPlanDet.ApplyUpdates( 0 );
end;

procedure TFPlantMan.bbtnCancDClick(Sender: TObject);
begin
//  dblcCampo.DataSource:=nil;
   DM1.cdsPlanDet.CancelUpdates;
   pnlDet.Visible := False;
end;

procedure TFPlantMan.dbgCabecDblClick(Sender: TObject);
begin
   pnlCab.Visible    := True;
   dbeCodigo.Enabled := False;
   DM1.cdsPlantilla.Edit;
end;

procedure TFPlantMan.wwDBGrid2DblClick(Sender: TObject);
begin

   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest('SELECT * FROM COB311') ;
   DM1.cdsPadre.Open;
   dblcCampo.LookupField:='NOMBRE';
   dblcCampo.LookupTable:=DM1.cdsPadre;

   pnlDet.Visible  := True;
   dbeItem.Enabled := False;


 { xSQL:='SELECT * FROM COB311 A '+
        'WHERE NOT EXISTS(SELECT * FROM COB314 B '+
                          'WHERE PLANTILLA='''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+''' AND A.CAMPO=B.CAMPO)';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest( xSQL );
  DM1.cdsReporte.Open;

  dblcCampo.LookupField:='NOMBRE';
  dblcCampo.LookupTable:=DM1.cdsReporte;  }

   DM1.cdsPlanDet.Edit;
end;

procedure TFPlantMan.BitBtn2Click(Sender: TObject);
begin
   Screen.Cursor  := crHourGlass;
   pgProc.Visible := True;
   pgProc.Max := DM1.cdsModelo.RecordCount+
                 DM1.cdsPlandet.RecordCount;
   pgProc.Min := 0;
   pgProc.Position := 1;
   DM1.cdsModelo.First;
   While not DM1.cdsModelo.Eof do
    begin
     Application.ProcessMessages;
     DM1.cdsModelo.Edit;
     DM1.cdsModelo.FieldByName('DESDE').AsInteger    := 0;
     DM1.cdsModelo.FieldByName('HASTA').AsInteger    := 0;
     DM1.cdsModelo.FieldByName('CEROIZQ').AsString   := '';
     DM1.cdsModelo.FieldByName('LONGITUD').AsInteger := 0;
     pgProc.Position:=pgProc.Position+1;
     DM1.cdsModelo.Next;
    end;

   DM1.cdsPlandet.First;
   While not DM1.cdsPlandet.Eof do
    begin
     Application.ProcessMessages;
     If DM1.cdsModelo.Locate('CAMPO',VarArrayOf([DM1.cdsPlanDet.FieldByName('CAMPO').AsString]),[]) Then
      begin
       DM1.cdsModelo.Edit;
       DM1.cdsModelo.FieldByName('DESDE').AsString    := DM1.cdsPlanDet.FieldByName('DESDE').AsString;
       DM1.cdsModelo.FieldByName('HASTA').AsString    := DM1.cdsPlandet.FieldByName('HASTA').AsString;
       DM1.cdsModelo.FieldByName('CEROIZQ').AsString  := DM1.cdsPlanDet.FieldByName('CEROIZQ').AsString;
       DM1.cdsModelo.FieldByName('LONGITUD').AsString := DM1.cdsPlanDet.FieldByName('LONGITUD').AsString;
       pgProc.Position := pgProc.Position+1;
       DM1.cdsModelo.Post;
      end;
     DM1.cdsPlandet.Next;
    end;
   pgProc.Visible := False;
   Screen.Cursor  := crDefault;
end;

procedure TFPlantMan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsPlanDet.Close;
   DM1.cdsEjecuta.Close;
   DM1.cdsEjecuta.PacketRecords := -1;
end;

procedure TFPlantMan.dbgCabecKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
   xSQL : String;
begin
   If (Key = VK_Delete) And (ssCtrl in Shift) Then
    begin
     If MessageDlg( ' ¿ Eliminar Plantilla ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      begin
       xSQL := 'DELETE FROM COB314 WHERE PLANTILLA='''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+'''';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest( xSQL );
       Try
         DM1.cdsQry.Execute;
       except
       end;

      DM1.cdsPlantilla.Delete;
      DM1.cdsPlantilla.ApplyUpdates( 0 );
     end
    end;
end;

procedure TFPlantMan.wwDBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   If (key=VK_Delete) And (ssCtrl in Shift) Then
  begin
    If MessageDlg( ' ¿ aEliminar Registro ? ' ,mtConfirmation, [mbYes, mbNo], 0)=mrYes Then
    begin
      DM1.cdsPlandet.Delete;
      DM1.cdsPlanDet.ApplyUpdates( 0 );
    end
  end;
end;

procedure TFPlantMan.bbtnEliminarClick(Sender: TObject);
begin

    If  verTransferencia(DM1.cdsDetalle.FieldByName('ARCHIVO').AsString,
                         Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,1,4),
                         Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,5,2) ) Then
    Begin
      ShowMessage('La Información ya fue tranferida al Ingreso en Lote, no se podra eliminar..');
      Exit;
    End;



    If MessageDlg('¿Está Seguro de Eliminar los Registros?', mtconfirmation,[mbYes,MbNo],0)=mrNo Then Exit;

    Screen.Cursor:=crHourGlass;
    pgProc.Visible:=True;
    pgProc.Max:=6;
    pgProc.Min:=0;
    pgProc.Position:=1;

    xSQL:='DELETE COB310 '
         +'WHERE ARCHIVO='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' '
         +'AND TRANSANO=''' +Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,1,4)+''' '
         +'AND TRANSMES=''' +Copy(DM1.cdsDetalle.FieldByName('PERIODO').AsString,5,2)+'''';
    DM1.cdsQry.Close;
    pgProc.Position:=pgProc.Position+1;
    DM1.cdsQry.DataRequest(xSQL);
    pgProc.Position:=pgProc.Position+1;
    DM1.cdsQry.Execute;
    pgProc.Position:=pgProc.Position+1;

    DM1.cdsDetalle.Edit;
    pgProc.Position := pgProc.Position+1;
    DM1.cdsDetalle.FieldByName('FL_IMPORT').Clear;
    pgProc.Position := pgProc.Position+1;
    DM1.cdsDetalle.ApplyUpdates(-1);

    pgProc.Position := pgProc.Position+1;
    pgProc.Visible  := False;
    Screen.Cursor   := crDefault;

    ShowMessage('Los Datos Importados se Eliminaron ');

end;

procedure TFPlantMan.bbtnPrevioClick(Sender: TObject);
var
  xSQL, xSelect1, xSelect2, xSelect3, xDesde, xHasta, xCeros, xUSE, xAde, xNumber : String;
begin
   If DM1.cdsDetalle.FieldByName('FL_IMPORT').AsString = 'S' Then
    begin
     ErrorMsg(Caption, 'Archivo ya fué Importado');
    end;

   Screen.Cursor := crHourGlass;
   xSelect1 := '';
   xSelect2 := '';
   xSelect3 := '';
   xCeros   := '0000000000';

   pgProc.Visible := True;
//  pgProc.BringToFront;
   pgProc.Max := DM1.cdsModelo.RecordCount+4;
   pgProc.Min := 0;
   pgProc.Position := 1;

   xAde := 'N';

   DM1.cdsModelo.First;
   While not DM1.cdsModelo.Eof do
    begin
     If ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) And
        ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) Then
      begin

       If ( DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEID'  ) or
         ( DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEDES' ) Then
        begin
         xAde := 'S';
         Break;
       end;
      end;
     DM1.cdsModelo.Next;
    end;

   xNumber := '';

   If xAde = 'N' Then
    begin
     // Si Tiene USE

     xUSE := '';

     DM1.cdsModelo.First;
     While not DM1.cdsModelo.Eof do
      begin
       Application.ProcessMessages;

       pgProc.Position := pgProc.Position+1;

       If ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) And
          ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) Then
        begin
         xDesde := DM1.cdsModelo.FieldByName('DESDE').AsString;
         xHasta := IntToStr( DM1.cdsModelo.FieldByName('HASTA').AsInteger -
                          DM1.cdsModelo.FieldByName('DESDE').AsInteger + 1 );

         xSelect1 := xSelect1+', '+DM1.cdsModelo.FieldByName('CAMPO').AsString;

         If DM1.cdsModelo.FieldByName('TIPO').AsString = 'FLOAT' Then
          begin
           xSelect2 := xSelect2+', ROUND(TO_NUMBER(TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )), ''9999999.9999999999'' ),2) '+DM1.cdsModelo.FieldByName('CAMPO').AsString;
           xNumber  := xNumber +', TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )) '+DM1.cdsModelo.FieldByName('CAMPO').AsString
          end
         Else
          begin
           If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
            begin
             xSelect2 := xSelect2+', CAST(SUBSTR('''+xCeros+'''||TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                               +  'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) AS VARCHAR2('
                               + DM1.cdsModelo.FieldByName('LONGITUD').AsString + ')) '+DM1.cdsModelo.FieldByName('CAMPO').AsString;
            end
           Else
            xSelect2 := xSelect2 + ', RTRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) '+ DM1.cdsModelo.FieldByName('CAMPO').AsString;
          end;

         If DM1.cdsModelo.FieldByName('CAMPO').AsString = 'USEID' Then
          begin
           If DM1.cdsModelo.FieldByName('CEROIZQ').AsString = 'S' Then
            begin
             xUSE := ' SUBSTR('''+xCeros+'''||Trim( Substr( LINEA, '+xDesde+', '+xHasta+' ) ), '
                    + 'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) ';
            end
           Else
            xUSE := 'SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ';
          end;

        end;
       DM1.cdsModelo.Next;
      end;

    xSelect2 := Copy( xSelect2, 2, Length( xSelect2 )-1 );

    If xUSE = '' Then
     begin
      Screen.Cursor := crDefault;
      ShowMessage('Error : Falta Posición de USE');
      xUSE := 'COB306.USEID'
     end;

    xSQL := 'SELECT ITEM, '+xSelect2+', '
           +'COB306.UPROID, NVL(APO101.UPAGOID, COB306.UPAGOID ) UPAGOID '
           +'FROM COB306, APO101 '
           +'WHERE COB306.ARCHIVO ='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' '
           +'AND COB306.PERIODO ='''+DM1.cdsDetalle.FieldByName('PERIODO').AsString+''' '
           +'AND '+xUSE+' = APO101.USEID(+)'
           +' AND COB306.UPROID = APO101.UPROID(+)'
           +' AND COB306.UPAGOID = APO101.UPAGOID(+)';
    end
   Else
    begin
     // Si En Origen Tiene ADE
     xUSE := '';

     DM1.cdsModelo.First;
     While not DM1.cdsModelo.Eof do
      begin
       Application.ProcessMessages;

       pgProc.Position := pgProc.Position+1;

       If ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) And
          ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) Then
        begin
         xDesde := DM1.cdsModelo.FieldByName('DESDE').AsString;
         xHasta := IntToStr( DM1.cdsModelo.FieldByName('HASTA').AsInteger -
                          DM1.cdsModelo.FieldByName('DESDE').AsInteger + 1 );

         If DM1.cdsModelo.FieldByName('CAMPO').AsString<>'USEID' Then
          begin

           If DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEID' Then
            begin
             xSelect1 := xSelect1+', USEID';

             xSelect2 := xSelect2+', APO125.USEID ';

             xSelect3 := xSelect3+', A.USEID ';

             If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
              begin
               xUSE := ' AND SUBSTR('''+xCeros+'''||Trim( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                     + 'LENGTH( TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) =APO125.ADEID(+)';
              end
             Else
              xUSE := ' AND TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) )=TRIM( APO125.ADEID(+) )';
              //xUSE:=' AND SUBSTR( LINEA, '+xDesde+', '+xHasta+' )=APO125.ADEID(+)';
            end
           Else
            begin
             If DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEDES' Then
              begin
               xSelect1 := xSelect1+', USEID';

               xSelect2 := xSelect2+', APO125.USEID ';

               xSelect3 := xSelect3+', B.USEID ';

               If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
                begin
                 xUSE := ' AND SUBSTR('''+xCeros+'''||Trim( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                        + 'LENGTH( TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) =TRIM( APO125.ADEDES(+))';
                end
               Else
                xUSE := ' AND TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) )=TRIM( APO125.ADEDES(+) )';
              end
             Else
              begin
               xSelect1 := xSelect1+', '+DM1.cdsModelo.FieldByName('CAMPO').AsString;

               If DM1.cdsModelo.FieldByName('TIPO').AsString = 'FLOAT' Then
                xSelect2 := xSelect2+', ROUND(TO_NUMBER(TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )), ''9999999.9999999999'' ),2) '+DM1.cdsModelo.FieldByName('CAMPO').AsString
               Else
                begin
                 If DM1.cdsModelo.FieldByName('CEROIZQ').AsString = 'S' Then
                  begin
                   xSelect2 := xSelect2+', CAST(SUBSTR('''+xCeros+'''||Trim( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                                         +  'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) AS VARCHAR2('
                                         + DM1.cdsModelo.FieldByName('LONGITUD').AsString + ')) ' + DM1.cdsModelo.FieldByName('CAMPO').AsString;
                  end
                 Else
                  xSelect2 := xSelect2 + ', RTRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) '+ DM1.cdsModelo.FieldByName('CAMPO').AsString;
              end;
             xSelect3 := xSelect3+', A.'+DM1.cdsModelo.FieldByName('CAMPO').AsString;
            end;
          end;
        end;
      end;
      DM1.cdsModelo.Next;
    end;

   xSelect2 := Copy( xSelect2, 2, Length( xSelect2 )-1 );
   xSelect3 := Copy( xSelect3, 2, Length( xSelect3 )-1 );

   If xUSE = '' Then
    begin
     Screen.Cursor := crDefault;
     ShowMessage('Error : Falta Posición de USE');
     xUSE := 'COB306.USEID'
    end;

     xSQL := 'SELECT ITEM, '+xSelect3+', '
            +'A.UPROID, NVL( B.UPAGOID, A.UPAGOID ) UPAGOID '
            +'FROM '
            +'( SELECT ITEM, '+xSelect2+', '
            +'COB306.UPROID, COB306.UPAGOID '
            +'FROM COB306, APO125 '
            +'WHERE COB306.ARCHIVO='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' '
            +'AND COB306.PERIODO='''+DM1.cdsDetalle.FieldByName('PERIODO').AsString+''' '
            +xUse
            +') A, APO101 B '
            +'WHERE A.USEID=B.USEID(+) AND A.UPROID=B.UPROID(+)';
   end;

   dbgPrevio.Selected.Clear;
   dbgPrevio.Selected.Add( 'ITEM'+#9+'5'+#9+'Item' );
   dbgPrevio.Selected.Add( 'USEID'+#9+'4'+#9+'USE' );
   dbgPrevio.Selected.Add( 'ASOCODMOD'+#9+'11'+#9+'Código~Modular' );
   dbgPrevio.Selected.Add( 'ASOCODPAGO'+#9+'10'+#9+'Código~Pago' );
   dbgPrevio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Nombre Asociado' );
   dbgPrevio.Selected.Add( 'TRANSMTO'+#9+'10'+#9+'Monto' );
   dbgPrevio.Selected.Add( 'UPROID'+#9+'8'+#9+'Unidad~Proceso' );
   dbgPrevio.Selected.Add( 'UPAGOID'+#9+'9'+#9+'Unidad~Pago' );

   DM1.cdsCambios.Close;
   DM1.cdsCambios.DataRequest(xSQL );
   DM1.cdsCambios.FetchOnDemand := False;
   DM1.cdsCambios.PacketRecords := 100;
   DM1.cdsCambios.FetchOnDemand := True;
   pgProc.Position := pgProc.Position+1;
   Try
    DM1.cdsCambios.Open;
   except
    Screen.Cursor := crDefault;
    pgProc.Position := 0;
    ErrorMsg(Caption, 'Existe Data Errónea, Verifique Antes de Generar el Preliminar ');
    Exit;
   end;
   pgProc.Position := pgProc.Position+1;

   pgProc.Position := pgProc.Position+1;
   pgProc.Visible  := False;

   dbgPrevio.DataSource := DM1.dsCambios;

   dbgPrevio.Selected.Clear;
   dbgPrevio.Selected.Add( 'USEID'+#9+'5'+#9+'USE');
   dbgPrevio.Selected.Add( 'ASOCODMOD'+#9+'11'+#9+'Código~Modular');
   dbgPrevio.Selected.Add( 'ASOCODPAGO'+#9+'10'+#9+'Código~Pago');
   dbgPrevio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Nombre Asociado');
   dbgPrevio.Selected.Add( 'TRANSMTO'+#9+'10'+#9+'Monto');
   dbgPrevio.Selected.Add( 'UPROID'+#9+'8'+#9+'Unidad~Proceso');
   dbgPrevio.Selected.Add( 'UPAGOID'+#9+'9'+#9+'Unidad~Pago');

   panel1.Enabled := False;
   panel2.Enabled := False;
   panel3.Enabled := False;

   DM1.cdsCambios.FetchOnDemand := False;
   DM1.cdsCambios.PacketRecords := -1;
   DM1.cdsCambios.FetchOnDemand := True;

   Screen.Cursor     := crDefault;
   lblPrevio.Caption := 'Preliminar de Importar';
   pnlPrevio.Height  := 252;
   pnlPrevio.Left    := 24;
   pnlPrevio.Top     := 208;

   pnlPrevio.Visible := True;
   pnlPrevio.BringToFront;
end;

procedure TFPlantMan.bbtnCerrarClick(Sender: TObject);
begin
   DM1.cdsCambios.Filtered := False;
   DM1.cdsCambios.Filter   := '';
   panel1.Enabled := True;
   panel2.Enabled := True;
   panel3.Enabled := True;
   dbgPrevio.DataSource := nil;
   pnlPrevio.Visible    := False;
end;

procedure TFPlantMan.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFPlantMan.BitBtn1Click(Sender: TObject);
begin
   dbgPlantilla.TitleFont.Size := 8;
   dbgPlantilla.Font.Size      := 8;
   dbgPlantilla.Width          := 1450;
   dbgPlantilla.RefreshDisplay;
end;

procedure TFPlantMan.BitBtn4Click(Sender: TObject);
begin
   dbgPlantilla.TitleFont.Size := 14;
   dbgPlantilla.Font.Size      := 14;
   dbgPlantilla.Width          := 3000;
   dbgPlantilla.RefreshDisplay;
end;

procedure TFPlantMan.dblcCampoExit(Sender: TObject);
begin
   If bbtnCancD.Focused Then Exit;

   If dblcCampo.Text = '' Then
    begin
     ShowMessage('Error : Falta Ingresar Campo');
     dblcCampo.SetFocus;
     Exit
    end;
   
   DM1.cdsPlandet.Edit;
 //DM1.cdsPlandet.FieldByName('CAMPO').AsString := DM1.cdsReporte.FieldByName('CAMPO').AsString;  RMZ
 //DM1.cdsPlandet.FieldByName('ITEM').AsString  := DM1.cdsReporte.FieldByName('ITEM').AsString;   RMZ
   DM1.cdsPlandet.FieldByName('CAMPO').AsString := DM1.cdsPadre.FieldByName('CAMPO').AsString;
   DM1.cdsPlandet.FieldByName('ITEM').AsString  := DM1.cdsPadre.FieldByName('ITEM').AsString;

end;

procedure TFPlantMan.dbgCabecRowChanged(Sender: TObject);
var
   xSQL : String;
begin
   xSQL := 'SELECT * FROM COB314'
          +' Where PLANTILLA ='''+DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString+''' '
          +' ORDER BY ITEM';

   DM1.cdsPlanDet.Close;
   DM1.cdsPlanDet.Datarequest( xSQL );
   DM1.cdsPlanDet.Open;
end;
 
procedure TFPlantMan.bbtnVerificaClick(Sender: TObject);
var
   xSQL, xSelect1, xSelect2, xSelect3, xDesde, xHasta, xCeros, xUSE, xAde, xNumber : String;
begin
   If DM1.cdsDetalle.FieldByName('FL_IMPORT').AsString = 'S' Then
    begin
     ErrorMsg(Caption, 'Archivo ya fué Importado');
    end;

   Screen.Cursor := crHourGlass;
   xSelect1 := '';
   xSelect2 := '';
   xSelect3 := '';
   xCeros   := '0000000000';

   pgProc.Visible  := True;
   pgProc.Max      := DM1.cdsModelo.RecordCount+4;
   pgProc.Min      := 0;
   pgProc.Position := 1;

   xAde := 'N';

   DM1.cdsModelo.First;
   While not DM1.cdsModelo.Eof do
    begin
     If ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) And
        ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) Then
      begin

       If ( DM1.cdsModelo.FieldByName('CAMPO').AsString = 'ADEID'  ) or
         ( DM1.cdsModelo.FieldByName('CAMPO').AsString = 'ADEDES' ) Then
        begin
         xAde := 'S';
         Break;
        end;
      end;
     DM1.cdsModelo.Next;
    end;

   xNumber := '';

   If xAde = 'N' Then
    begin
    // Si Tiene USE

     xUSE := '';

     DM1.cdsModelo.First;
     While not DM1.cdsModelo.Eof do
      begin
       Application.ProcessMessages;

       pgProc.Position := pgProc.Position+1;

       If ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) And
         ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) Then
        begin
         xDesde := DM1.cdsModelo.FieldByName('DESDE').AsString;
         xHasta := IntToStr( DM1.cdsModelo.FieldByName('HASTA').AsInteger -
                          DM1.cdsModelo.FieldByName('DESDE').AsInteger + 1 );

         xSelect1 := xSelect1+', '+DM1.cdsModelo.FieldByName('CAMPO').AsString;

         If DM1.cdsModelo.FieldByName('TIPO').AsString = 'FLOAT' Then
          begin
           xSelect2 := xSelect2+', ROUND(TO_NUMBER(TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )), ''9999999.9999999999'' ),2) '+DM1.cdsModelo.FieldByName('CAMPO').AsString;
           xNumber  := xNumber +', TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )) '+DM1.cdsModelo.FieldByName('CAMPO').AsString
          end
         Else
          begin
           If DM1.cdsModelo.FieldByName('CEROIZQ').AsString = 'S' Then
            begin
             xSelect2 := xSelect2+', SUBSTR('''+xCeros+'''||TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                               +  'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) '+DM1.cdsModelo.FieldByName('CAMPO').AsString;
            end
           Else
            xSelect2 := xSelect2 + ', RTRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) '+ DM1.cdsModelo.FieldByName('CAMPO').AsString;
          end;

         If DM1.cdsModelo.FieldByName('CAMPO').AsString = 'USEID' Then
          begin
           If DM1.cdsModelo.FieldByName('CEROIZQ').AsString = 'S' Then
            begin
             xUSE:=' SUBSTR('''+xCeros+'''||Trim( Substr( LINEA, '+xDesde+', '+xHasta+' ) ), '
                   + 'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) ';
            end
           Else
            xUSE:='SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ';
          end;

        end;
       DM1.cdsModelo.Next;
      end;

     xSelect2 := Copy( xSelect2, 2, Length( xSelect2 )-1 );

     If xUSE = '' Then
      begin
       Screen.Cursor := crDefault;
       ShowMessage('Error : Falta Posición de USE');
       xUSE := 'COB306.USEID'
      end;

    xSQL := 'SELECT ITEM '+xNumber+', '' '' ERROR'
           +' FROM COB306 '
           +' WHERE COB306.ARCHIVO ='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' '
           +' AND COB306.PERIODO ='''+DM1.cdsDetalle.FieldByName('PERIODO').AsString+''' ';
  end
  Else
   begin
    // Si En Origen Tiene ADE
    xUSE := '';

    DM1.cdsModelo.First;
    While not DM1.cdsModelo.Eof do
     begin
      Application.ProcessMessages;

      pgProc.Position := pgProc.Position+1;

      If ( DM1.cdsModelo.FieldByName('DESDE').AsInteger > 0 ) And
         ( DM1.cdsModelo.FieldByName('HASTA').AsInteger > 0 ) Then
      begin
        xDesde:=DM1.cdsModelo.FieldByName('DESDE').AsString;
        xHasta:=IntToStr( DM1.cdsModelo.FieldByName('HASTA').AsInteger -
                          DM1.cdsModelo.FieldByName('DESDE').AsInteger + 1 );

        If DM1.cdsModelo.FieldByName('CAMPO').AsString<>'USEID' Then
        begin

          If DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEID' Then
          begin
            xSelect1:=xSelect1+', USEID';

            xSelect2:=xSelect2+', APO125.USEID ';

            xSelect3:=xSelect3+', A.USEID ';

            If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
            begin
              xUSE:=' AND SUBSTR('''+xCeros+'''||Trim( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                  + 'LENGTH( TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) =APO125.ADEID(+)';
            end
            Else
              xUSE:=' AND SUBSTR( LINEA, '+xDesde+', '+xHasta+' )=APO125.ADEID(+)';
          end
          Else
          begin
            If DM1.cdsModelo.FieldByName('CAMPO').AsString='ADEDES' Then
            begin
              xSelect1:=xSelect1+', USEID';

              xSelect2:=xSelect2+', APO125.USEID ';

              xSelect3:=xSelect3+', B.USEID ';

              If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
              begin
                xUSE:=' AND SUBSTR('''+xCeros+'''||Trim( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                    + 'LENGTH( TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) =TRIM( APO125.ADEDES(+) )';
              end
              Else
                xUSE:=' AND TRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) )=TRIM( APO125.ADEDES(+) )';
            end
            Else
            begin
              xSelect1:=xSelect1+', '+DM1.cdsModelo.FieldByName('CAMPO').AsString;

              If DM1.cdsModelo.FieldByName('TIPO').AsString='FLOAT' Then begin
                xSelect2:=xSelect2+', ROUND(TO_NUMBER(TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )), ''9999999.9999999999'' ),2) '+DM1.cdsModelo.FieldByName('CAMPO').AsString;
                xNumber :=xNumber +', TRIM(SUBSTR( LINEA, '+xDesde+', '+xHasta+' )) '+DM1.cdsModelo.FieldByName('CAMPO').AsString
              end
              Else
              begin
                If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
                begin
                  xSelect2:=xSelect2+', SUBSTR('''+xCeros+'''||Trim( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ), '
                                         +  'LENGTH( TRIM( Substr( LINEA, '+xDesde+', '+xHasta+' ) ) )+11-'+DM1.cdsModelo.FieldByName('LONGITUD').AsString+', '+DM1.cdsModelo.FieldByName('LONGITUD').AsString+' ) '+DM1.cdsModelo.FieldByName('CAMPO').AsString;
                end
                Else
                  xSelect2:=xSelect2 + ', RTRIM( SUBSTR( LINEA, '+xDesde+', '+xHasta+' ) ) '+ DM1.cdsModelo.FieldByName('CAMPO').AsString;
              end;
              xSelect3:=xSelect3+', A.'+DM1.cdsModelo.FieldByName('CAMPO').AsString;
            end;
          end;
        end;
      end;
      DM1.cdsModelo.Next;
    end;

    xSelect2:=Copy( xSelect2, 2, Length( xSelect2 )-1 );
    xSelect3:=Copy( xSelect3, 2, Length( xSelect3 )-1 );

    If xUSE='' Then
    begin
      Screen.Cursor:=crDefault;
      ShowMessage('Error : Falta Posición de USE');
      xUSE:='COB306.USEID'
    end;

    xSQL:='SELECT ITEM '+xNumber+', '' '' ERROR '
         +'FROM COB306 '
         +'WHERE COB306.ARCHIVO='''+DM1.cdsDetalle.FieldByName('ARCHIVO').AsString+''' '
         +'AND COB306.PERIODO='''+DM1.cdsDetalle.FieldByName('PERIODO').AsString+''' ';
  end;

   dbgPrevio.Selected.Clear;
   dbgPrevio.Selected.Add( 'ITEM'+#9+'7'+#9+'Item' );
   dbgPrevio.Selected.Add( 'USEID'+#9+'4'+#9+'USE' );
   dbgPrevio.Selected.Add( 'ASOCODMOD'+#9+'11'+#9+'Código~Modular' );
   dbgPrevio.Selected.Add( 'ASOCODPAGO'+#9+'10'+#9+'Código~Pago' );
   dbgPrevio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Nombre Asociado' );
   dbgPrevio.Selected.Add( 'TRANSMTO'+#9+'10'+#9+'Monto' );
   dbgPrevio.Selected.Add( 'UPROID'+#9+'8'+#9+'Unidad~Proceso' );
   dbgPrevio.Selected.Add( 'UPAGOID'+#9+'9'+#9+'Unidad~Pago' );
   dbgPrevio.Selected.Add( 'ERROR'+#5+'9'+#9+'Error~S/N' );

   DM1.cdsCambios.Close;
   DM1.cdsCambios.DataRequest(xSQL );
   DM1.cdsCambios.FetchOnDemand := False;
   DM1.cdsCambios.PacketRecords := 100;
   pgProc.Position := pgProc.Position+1;
   Try
    DM1.cdsCambios.Open;
    DM1.cdsCambios.FetchOnDemand := True;
   except
    Screen.Cursor := crDefault;
    pgProc.Position := 0;
    ErrorMsg(Caption, 'Existe Data Errónea, Verifique Antes de Generar el Preliminar ');
    Exit;
   end;
   pgProc.Position := pgProc.Position+1;

   dbgPrevio.DataSource := DM1.dsCambios;

   dbgPrevio.Selected.Clear;
   dbgPrevio.Selected.Add( 'USEID'+#9+'5'+#9+'USE');
   dbgPrevio.Selected.Add( 'ASOCODMOD'+#9+'11'+#9+'Código~Modular');
   dbgPrevio.Selected.Add( 'ASOCODPAGO'+#9+'10'+#9+'Código~Pago');
   dbgPrevio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Nombre Asociado');
   dbgPrevio.Selected.Add( 'TRANSMTO'+#9+'10'+#9+'Monto');
   dbgPrevio.Selected.Add( 'UPROID'+#9+'8'+#9+'Unidad~Proceso');
   dbgPrevio.Selected.Add( 'UPAGOID'+#9+'9'+#9+'Unidad~Pago');

   panel1.Enabled := False;
   panel2.Enabled := False;
   panel3.Enabled := False;

   DM1.cdsCambios.FetchOnDemand := False;
   DM1.cdsCambios.PacketRecords := -1;
   DM1.cdsCambios.FetchOnDemand := True;

   DM1.cdsCambios.First;
   While not DM1.cdsCambios.Eof do
    begin
     Try
      If DM1.cdsCambios.FieldByName('TRANSMTO').AsFloat=0 Then
         DM1.cdsCambios.FieldByName('ERROR').AsString:='S';
     except
      DM1.cdsCambios.Edit;
      DM1.cdsCambios.FieldByName('ERROR').AsString:='S';
     end;
     DM1.cdsCambios.Next;
   end;
   DM1.cdsCambios.Filtered := False;
   DM1.cdsCambios.Filter   := '';
   DM1.cdsCambios.Filter   := 'ERROR=''S''';
   DM1.cdsCambios.Filtered := True;

   pgProc.Position := pgProc.Position+1;
   pgProc.Visible  := False;

   Screen.Cursor := crDefault;
   lblPrevio.Caption := 'Errores de Origen';
   pnlPrevio.Height  := 252;
   pnlPrevio.Left    := 24;
   pnlPrevio.Top     := 208;

   pnlPrevio.Visible := True;
end;

procedure TFPlantMan.BitBtn3Click(Sender: TObject);
begin
   dbgPlantilla.TitleFont.Size := 7;
   dbgPlantilla.Font.Size      := 7;
   dbgPlantilla.Width          := 1050;
   dbgPlantilla.RefreshDisplay;
end;


//Verifica si Ya fue Transferido
Function TFPlantMan.verTransferencia(xArchivo, xAno,
  xMes: string): boolean;

var xsql:string;
begin
  Result:=False;
  Xsql :='Select * From Cob310 Where Archivo='''+xArchivo+''' and '+
         ' Transano='''+xAno+''' and Transmes='''+xMes+''' and Fl_Transf is not null';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(Xsql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount>0 Then Result := True else
  Begin
     Xsql :='Select * From Cob312 Where Archivo='''+xArchivo+''' and '+
            ' Periodo='''+xAno+xMes+''' and Fl_Transf is not null';
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(Xsql);
     DM1.cdsQry.Open;
     If DM1.cdsQry.RecordCount>0 Then Result := True;
  End;
End;

end.
