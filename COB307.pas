//** 13/01/2003 - PJSV
unit COB307;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, MsgDlgs,
  Wwdotdot, StdCtrls, Mask, wwdbedit, ExtCtrls, Buttons, DBCtrls, db,
  CheckLst, wwriched,Mant, ppBands, ppCtrls, ppClass, ppStrtch, ppMemo,
  ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, Spin,DateUtils, Wwdatsrc, DBClient, wwclient;

type
  TFBloqueoCuotas = class(TForm)
    dbeApePat: TwwDBEdit;
    dbeAsocodmod: TwwDBEdit;
    clbCreditos: TCheckListBox;
    lblTitu1: TLabel;
    dbgBloqueoC: TwwDBGrid;
    pnlMemo: TPanel;
    btnCerrar: TBitBtn;
    StaticText1: TStaticText;
    dbreMemo: TwwDBRichEdit;
    pnlImpre: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    spRAI: TSpinEdit;
    seRMI: TSpinEdit;
    seRAF: TSpinEdit;
    seRMF: TSpinEdit;
    rgEstado: TRadioGroup;
    bbtnBloqueo: TfcShapeBtn;
    bdeppBloqueo: TppBDEPipeline;
    rptBloqueo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    pplblTitulo: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    pplblRango: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel6: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine15: TppLine;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppdbtOfc: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    Z2bbtnSigue: TfcShapeBtn;
    bbtnNuevo: TfcShapeBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    Bevel4: TBevel;
    cdsQry1: TwwClientDataSet;
    cdsQry2: TwwClientDataSet;
    cdsQry: TwwClientDataSet;
    cdsSolicitud: TwwClientDataSet;
    dsSolicitud: TwwDataSource;
    dsQry: TwwDataSource;
    procedure FormActivate(Sender: TObject);
    procedure clbCreditosClickCheck(Sender: TObject);
    procedure dbgBloqueoCFieldChanged(Sender: TObject; Field: TField);
    procedure btnCerrarClick(Sender: TObject);
    procedure Z2bbtnSigueClick(Sender: TObject);
    procedure dbeApePatExit(Sender: TObject);
    procedure bbtnBloqueoClick(Sender: TObject);
    procedure spRAIKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbeApePatEnter(Sender: TObject);
    procedure dbeAsocodmodExit(Sender: TObject);
    procedure bbtnNuevoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    xAsoid : STring;
    Mtx : TMant;
    xFecha,xEstid,xEstado : String;
    xSysDate : TDate;
    strTmp : String ;
    procedure cargabusqueda;  //** BUSCA AL ASOCIADO
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
    function VerificaDetalle:boolean;
  public
    { Public declarations }
  end;

var
  FBloqueoCuotas: TFBloqueoCuotas;
  xSQL : String;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFBloqueoCuotas.FormActivate(Sender: TObject);
var
 xSql : String;
begin

   clbCreditos.Clear;
   //** CARGO LA FECHA DEL SISTEMA
   xSQL := 'Select '+wRepFecServi+' FECHA From TGE901 '; //Where DUME = '+QuotedStr('PER');
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   xFecha := copy(cdsQry.FieldByName('FECHA').AsString, 1, 10);
   xSysDate := StrToDate(xFecha);

end;

procedure TFBloqueoCuotas.clbCreditosClickCheck(Sender: TObject);
Var
 xEstid3,xEstado3,xEstid2,xEstado2,xEstid1,xEstado1,xSql : String;
begin
   dbgBloqueoC.DataSource := nil;

   //** 2 Me indica cuotas por cobrar
   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('3'),'ESTDES');
   xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
   xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xEstado3 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('D'),'ESTDES');
   xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;

   cdsQry2.IndexFieldNames := '';
   cdsQry2.Filter := '';
   cdsQry2.Filtered := False;
   //** el bloqueo1 me sirve como historico antes de grabar
   xSql := 'SELECT CREDID,CREAMORT,CRECAPITAL,CREINTERES,CREMTOINT,CREFLAT,CREMTOFLAT,ASOID,CREANO,CREMES,CRECUOTA,CREMTO,CREESTADO,CREBLOQFEC,CREBLOQOBS,DESBLOFEC,USUBLOQ,USUDESBLOQ,CREESTID,CREESTADO,'+
           ' CASE WHEN CREBLOQ = ''S'' OR CREBLOQ = ''1'' THEN ''S'' ELSE ''N'' END BLOQUEO,'+
           ' CASE WHEN CREBLOQ = ''S'' OR CREBLOQ = ''1'' THEN ''S'' ELSE ''N'' END BLOQUEO1'+
           ' FROM CRE302 WHERE '+
           ' ASOID = '+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
//wmc 20031022           ' AND CREDID ='+quotedstr(clbCreditos.Items.Strings[clbCreditos.ItemIndex])+
           ' AND (CREESTID ='+quotedstr(xEstid)+
           ' or CREESTID ='+quotedstr(xEstid1)+
           ' or CREESTID ='+quotedstr(xEstid2)+
           ' or CREESTID ='+quotedstr(xEstid3)+
           ' or CREBLOQ IN (''S'',''1'')'+
           ' ) ORDER  BY CREDID,CRECUOTA';
   cdsSolicitud.close;
   cdsSolicitud.datarequest(xSql);
   cdsSolicitud.open;
   If cdsSolicitud.Recordcount = 0 then
    begin
     ShowMessage('El Crédito(s) del Asociado no tiene Cuotas para ser Bloquedas o Desbloqueadas ');
     exit;
    end;
   Z2bbtnSigue.Enabled := True ;
   cdsSolicitud.FieldByName('CREDID').ReadOnly := True;   
   cdsSolicitud.FieldByName('CREANO').ReadOnly := True;
   cdsSolicitud.FieldByName('CREMES').ReadOnly := True;
   cdsSolicitud.FieldByName('CRECUOTA').ReadOnly := True;
   cdsSolicitud.FieldByName('CREMTO').ReadOnly := True;
   cdsSolicitud.FieldByName('CREESTADO').ReadOnly := True;
   cdsSolicitud.FieldByName('USUBLOQ').ReadOnly := True;
   cdsSolicitud.FieldByName('CREBLOQFEC').ReadOnly := True;
   cdsSolicitud.FieldByName('USUDESBLOQ').ReadOnly := True;
   cdsSolicitud.FieldByName('DESBLOFEC').ReadOnly := True;
   cdsSolicitud.FieldByName('CREBLOQOBS').ReadOnly := False;
   cdsSolicitud.FieldByName('BLOQUEO').ReadOnly := False;

   dbgBloqueoC.selected.Add('CREDID'#9'15'#9'Nº Crédito');
   dbgBloqueoC.selected.Add('CRECUOTA'#9'2'#9'Cuota');
   dbgBloqueoC.selected.Add('CREANO'#9'4'#9'Año');
   dbgBloqueoC.selected.Add('CREMES'#9'2'#9'Mes');
   dbgBloqueoC.selected.Add('CREMTO'#9'8'#9'Mto ~Cuota');
   dbgBloqueoC.selected.Add('CREESTADO'#9'20'#9'Estado');
   dbgBloqueoC.selected.Add('BLOQUEO'#9'2'#9'S/N');
   dbgBloqueoC.selected.Add('USUBLOQ'#9'10'#9'Usuario~Bloqueo');
   dbgBloqueoC.selected.Add('CREBLOQFEC'#9'10'#9'Fecha ~Bloqueo');
   dbgBloqueoC.selected.Add('USUDESBLOQ'#9'10'#9'Usuario~Desblo');
   dbgBloqueoC.selected.Add('DESBLOFEC'#9'10'#9'Fecha ~DesBlo.');
   dbgBloqueoC.selected.Add('CREBLOQOBS'#9'10'#9'Observa.');
   dbgBloqueoC.DataSource := dsSolicitud;
   dbgBloqueoC.SetControlType('BLOQUEO', fctCheckBox, 'S;N');
   dbgBloqueoC.ApplySelected;

   dbreMemo.DataSource := dsSolicitud;
   dbreMemo.DataField := 'CREBLOQOBS';
end;

procedure TFBloqueoCuotas.dbgBloqueoCFieldChanged(Sender: TObject;
  Field: TField);
begin
    If Field.fullName = 'BLOQUEO' then
      pnlMemo.Visible := True;
end;

procedure TFBloqueoCuotas.btnCerrarClick(Sender: TObject);
var
 xI : Integer;
begin
   pnlMemo.Visible := False;
   cdsSolicitud.Edit;
   For xI := 0 to dbreMemo.Lines.Count -1 do
    cdsSolicitud.FieldByName('CREBLOQOBS').AsString := dbreMemo.Lines.Strings[xI];
end;

procedure TFBloqueoCuotas.Z2bbtnSigueClick(Sender: TObject);
var
 xTrue1,xTrue2,xSql : String;
 xEstado,xEstid,xEstado1,xEstid1,xEstado2,xEstid2,xEstado3,xEstid3,xEstado4,xEstid4 : String ;
 sMesAct , sAnoActual   : String ;
 xEstadoAct , xEstidAct : String ;
 procedure AnalizaEstado ;
 begin
     if cdsSolicitud.FieldByName('CREAMORT').AsCurrency =
        cdsSolicitud.FieldByName('CRECAPITAL').AsCurrency then
     begin
        xEstadoAct := xEstado4 ;
        xEstidAct  := xEstid4 ;
     end
     else
     begin
       if cdsSolicitud.FieldByName('CREMTOFLAT').AsCurrency > 0 then
       begin
          xEstadoAct := xEstado1 ;
          xEstidAct  := xEstid1 ;
       end
       else
       begin
          if (cdsSolicitud.FieldByName('CREANO').AsString+cdsSolicitud.FieldByName('CREMES').AsString <=
             sAnoActual + sMesAct) then
          begin
            xEstadoAct := xEstado2 ;
            xEstidAct  := xEstid2 ;
          end
          else
          begin
            xEstadoAct := xEstado ;
            xEstidAct  := xEstid ;
          end ;
       end ;

     end ;
 end ;
begin
 //** Cuotas por cobrar
 xEstado  := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
 xEstid   := DM1.cdsQry.FieldByName('ESTID').AsString;
 //** Pagos Parciales
 xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
 xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
 //** No Pagado
 xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
 xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
 //** Bloqueo
 xEstado3 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('D'),'ESTDES');
 xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;
 //** Cuota Cancelada
 xEstado4  := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Y'),'ESTDES');
 xEstid4   := DM1.cdsQry.FieldByName('ESTID').AsString;

 sMesAct    := dm1.StrZero(IntToStr(monthof(xSysDate)),2);
 sAnoActual := dm1.StrZero(IntToStr(yearof(xSysDate)),4);
{
 cdsSolicitud.FieldByName('USUBLOQ').ReadOnly := False;
 cdsSolicitud.FieldByName('CREBLOQFEC').ReadOnly := False;
 cdsSolicitud.FieldByName('USUDESBLOQ').ReadOnly := False;
 cdsSolicitud.FieldByName('DESBLOFEC').ReadOnly := False;
}
 try
   Screen.Cursor := crHourGlass;
   cdsSolicitud.DisableControls;
   cdsSolicitud.first;
   xTrue1 := '';
   xTrue2 := '';
   while not cdsSolicitud.eof do
    begin
     If (cdsSolicitud.FieldByName('BLOQUEO').AsString <>
         cdsSolicitud.FieldByName('BLOQUEO1').AsString ) then
     begin
        if cdsSolicitud.FieldByName('BLOQUEO').AsString = 'S' then
        begin
          xSql := 'UPDATE CRE302 SET '+
                  ' USUBLOQ ='+quotedstr(dm1.wUsuario)+
                  ' ,CREBLOQFEC ='+quotedstr(xFecha)+
                  ' ,CREBLOQ ='+quotedstr('S')+
                  ' ,CREBLOQOBS='+quotedstr(cdsSolicitud.FieldByName('CREBLOQOBS').AsString)+
                  ' WHERE ASOID ='+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
                  ' AND CREDID ='+quotedstr(cdsSolicitud.FieldByName('CREDID').AsString)+
                  ' AND CREANO ='+quotedstr(cdsSolicitud.FieldByName('CREANO').AsString)+
                  ' AND CREMES ='+quotedstr(cdsSolicitud.FieldByName('CREMES').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          //Grabaciones Adicionales en Cabecera
          xSql := 'UPDATE CRE303 SET '+
                 ' CREBLOQFEC ='+quotedstr(xFecha)+
                 ' ,CREBLOQ ='+quotedstr('S')+
                 ' WHERE ASOID ='+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
                 ' AND CREDID ='+quotedstr(cdsSolicitud.FieldByName('CREDID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSql := 'UPDATE CRE301 SET '+
                 ' CREBLOQFEC ='+quotedstr(xFecha)+
                 ' ,CREBLOQ ='+quotedstr('S')+
                 ' WHERE ASOID ='+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
                 ' AND CREDID ='+quotedstr(cdsSolicitud.FieldByName('CREDID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          //
        end
        else
        begin
           AnalizaEstado ;
           xSql := 'UPDATE CRE302 SET '+
                   ' CREESTID ='+quotedstr(xEstidAct)+
                   ' ,CREESTADO ='+quotedstr(xEstadoAct)+
                   ' ,USUDESBLOQ ='+quotedstr(dm1.wUsuario)+
                   ' ,DESBLOFEC ='+quotedstr(xFecha)+
                   ' ,CREBLOQ ='+quotedstr('N')+
                   ' ,CREBLOQOBS='+quotedstr(cdsSolicitud.FieldByName('CREBLOQOBS').AsString)+
                   ' WHERE ASOID ='+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
                   ' AND CREDID ='+quotedstr(cdsSolicitud.FieldByName('CREDID').AsString)+
                   ' AND CREANO ='+quotedstr(cdsSolicitud.FieldByName('CREANO').AsString)+
                   ' AND CREMES ='+quotedstr(cdsSolicitud.FieldByName('CREMES').AsString);
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
           //Grabaciones Adicionales en Cabecera CRE303
           xSql := 'UPDATE CRE303 SET '+
                   ' CREBLOQFEC = NULL'+
                   ' ,CREBLOQ ='+quotedstr('N')+
                   ' WHERE ASOID ='+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
                   ' AND CREDID ='+quotedstr(cdsSolicitud.fIELDbYnAME('CREDID').AsString) +
                   ' AND NOT EXISTS (SELECT 1 FROM CRE302 WHERE ASOID ='+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
                                   ' AND CREDID ='+quotedstr(cdsSolicitud.fIELDbYnAME('CREDID').AsString)  +
                                   ' AND (CREBLOQ=''1'' OR CREBLOQ=''S'' OR CREESTID='+QuotedStr(xEstid3)+'))';

           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
           //Grabaciones Adicionales en Cabecera CRE301
           xSql := 'UPDATE CRE301 SET '+
                   ' CREBLOQFEC = NULL'+
                   ' ,CREBLOQ ='+quotedstr('N')+
                   ' WHERE ASOID ='+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
                   ' AND CREDID ='+quotedstr(cdsSolicitud.fIELDbYnAME('CREDID').AsString) +
                   ' AND NOT EXISTS (SELECT 1 FROM CRE302 WHERE ASOID ='+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
                                   ' AND CREDID ='+quotedstr(cdsSolicitud.fIELDbYnAME('CREDID').AsString)  +
                                   ' AND (CREBLOQ=''1'' OR CREBLOQ=''S'' OR CREESTID='+QuotedStr(xEstid3)+'))';

           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
           //
        end ;
     end ;
     cdsSolicitud.next;
    end;
 Finally
  Screen.Cursor := crDefault;
  cdsSolicitud.EnableControls;
//  clbCreditos.OnClickCheck(clbCreditos);
  Showmessage('Proceso Concluido');
 end;
end;

procedure TFBloqueoCuotas.cargabusqueda;
begin
{
   xSQL := 'Select * From CRE303'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%'))
           +' and creestid = '+quotedstr(xEstid);
}
   xSQL := 'Select * From CRE301'
           +' Where ASOID = '+QuotedStr(cdsQry1.FieldByName('ASOID').AsString)
           +' and creestid = '+quotedstr(xEstid);

   cdsQry1.Close;
   cdsQry1.DataRequest(xSQL);
   cdsQry1.Open;
   dbeApePat.text := cdsQry1.FieldByName('ASOAPENOM').AsString;
//   FBloqueoCuotas := TFBloqueoCuotas.Create(Self);
//   FBloqueoCuotas.Showmodal;
//   FBloqueoCuotas.Free;
   clbCreditos.Clear;

   dbeApePat.text:= cdsQry1.FieldByName('ASOAPENOM').AsString;
   dbeAsocodmod.text:= cdsQry1.FieldByName('ASOCODMOD').AsString;
   cdsQry1.First;
   While not cdsQry1.eof do
    begin
     clbCreditos.Items.Add(cdsQry1.FieldByName('CREDID').AsString);
     cdsQry1.next;
    end;
   clbCreditos.OnClickCheck(clbCreditos);
end;

procedure TFBloqueoCuotas.LevantaFiltro(xCampo: String);
begin
   cdsQry2.close;
   Mtx  := TMant.Create(Self);
   Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
//    Mtx.TableName       := 'CRE303';
    Mtx.TableName       := 'CRE301';
    Mtx.ClientDataSet   := cdsQry2;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.Module          := DM1.wModulo;
    Mtx.Titulo 	        := 'Créditos';
    Mtx.SectionName     := 'Bloqueo';
    Mtx.FileNameIni     := '\SOLAPO.INI';
    Mtx.Filter          := xCampo;
    Mtx.OnEdit          := OnEditAso;
    Mtx. Execute;
   Finally
    cdsQry2.Close;
    Mtx.Free;
   end;
   cdsQry2.Close;
end;

procedure TFBloqueoCuotas.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL : String;
begin
   xSQL := 'Select * From CRE301 '+
           ' Where ASOID ='+QuotedStr(cdsQry2.FieldByName('ASOID').AsString)+
           ' and credid = '+quotedstr(cdsQry2.FieldByName('CREDID').AsString)+
           ' AND CREESTID ='+quotedstr(xEstid) ;
   DM1.FiltraCDS(cdsQry1,xSQL);

   xAsoid := cdsQry1.FieldByName('ASOID').AsString;
   mtx.FMant.Close;
end;

procedure TFBloqueoCuotas.dbeApePatExit(Sender: TObject);
var
 xSQL : String;
begin
/////////////////////////////////
  if trim(dbeApePat.Text) = strTmp then
  begin
     dbeApePat.Text := strTmp ;
     Exit ;
  end ;

  //** SI HAY UN NOMBRE SE BUSCA
  If dbeApePat.Text <> '' Then
   begin
    xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
    xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;

    if VerificaDetalle then
    begin
       if MessageDlg('Tiene Modificaciones No Grabadas para : ' + strTmp+#13 + '      ¿Desea Proseguir?', mtconfirmation, [mbYes, MbNo], 0) = mrNo then
       begin
          dbeApePat.Text := strTmp ;
          Exit;
       end;
    end;
    xAsoid := '';
//    xSQL := 'Select * From APO201'
//           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%'));
    xSQL := 'Select DISTINCT ASOAPENOM,ASOID From CRE301'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%'))
           +' and creestid = '+quotedstr(xEstid);

    cdsQry1.Close;
    cdsQry1.DataRequest(xSQL);
    cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If cdsQry1.RecordCount = 1 Then
     begin
      xAsoid := cdsQry1.FieldByName('ASOID').AsString ;
      CargaBusqueda;
     end
    Else
     begin
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%')));
      If xAsoid <> '' then
       begin
        cargabusqueda;
       end
      else
       begin
        dbeApePat.Text := strTmp ;
        //bbtnNuevo.OnClick(bbtnNuevo);
       end;
     end;
   end
   else
   begin
    if VerificaDetalle then
    begin
       if MessageDlg('Tiene Modificaciones No Grabadas para : ' + strTmp+#13 + '      ¿Desea Proseguir?', mtconfirmation, [mbYes, MbNo], 0) = mrYes then
          bbtnNuevo.OnClick(bbtnNuevo)
       else
          dbeApePat.Text := strTmp ;
    end
    else
        bbtnNuevo.OnClick(bbtnNuevo);

   end ;
/////////////////////////////////
  Exit;
//
   //** 2 Me indica cuotas por cobrar
   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** SI HAY UN NOMBRE SE BUSCA
  If dbeApePat.Text <> '' Then
   begin
    xAsoid := '';
    xSQL := 'Select DISTINCT ASOAPENOM,ASOID From CRE301'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%'))
           +' and creestid = '+quotedstr(xEstid);
    cdsQry1.Close;
    cdsQry1.DataRequest(xSQL);
    cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If cdsQry1.RecordCount = 1 Then
     CargaBusqueda
    Else
     begin
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%')));
      If xAsoid <> '' then
       cargabusqueda;
     end;
   end;
end;

procedure TFBloqueoCuotas.bbtnBloqueoClick(Sender: TObject);
var
 xRI,xRF,xTitulo,xSql : String;
 sAnoTmp,sMesTmp : String ;
begin
   If rgEstado.ItemIndex = -1 then exit;
//   pnlImpre.Visible := False;
   Screen.cursor := crHourGlass;
   if (spRAI.Text+Dm1.StrZero(seRMI.text,2) < spRAI.Text+Dm1.StrZero(seRMI.text,2) ) then
   begin
      sAnoTmp := spRAI.Text ;
      sMesTmp := seRMI.text ;
      spRAI.Text := seRAF.Text ;
      seRMI.text := seRMF.text ;
      spRAI.Text := sAnoTmp ;
      seRMI.text := sMesTmp ;
   end ;
   xRI := spRAI.Text+Dm1.StrZero(seRMI.text,2);
   xRF := seRAF.text+Dm1.StrZero(seRMF.text,2);
   If rgEstado.ItemIndex = 0 then
    begin
     xSql := 'SELECT c.ofdesABR,b.crebloq,A.USEID,A.ASOCODMOD,A.OFDESID,A.ASOAPENOM, '+
             ' A.CREFOTORG,A.CREDID, B.CRECUOTA,B.CRECUOTA,B.CREBLOQFEC FECHA,'+
             ' B.USUBLOQ USUARIO, B.CREBLOQOBS,b.creano||''/''||b.cremes ANOMES'+
             ' FROM CRE301 A,CRE302 B, APO110 C WHERE (A.CREBLOQ = ''S'') AND'+
             ' (B.CREBLOQ = ''S'')  AND B.CREANO||B.CREMES>='+quotedstr(xRI)+
             ' AND B.CREANO||B.CREMES<='+quotedstr(xRF)+
             ' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID  and'+
             ' A.OFDESID = C.OFDESID';
     xTitulo := 'RELACION DE CUOTAS BLOQUEADAS';
    end
   else
    begin
     xSql := 'SELECT c.ofdesABR,b.crebloq,A.USEID,A.ASOCODMOD,A.OFDESID,A.ASOAPENOM, '+
             ' A.CREFOTORG,A.CREDID, B.CRECUOTA,B.CRECUOTA,B.DESBLOFEC FECHA,'+
             ' B.USUDESBLOQ USUARIO, B.CREBLOQOBS,b.creano||''/''||b.cremes ANOMES'+
             ' FROM CRE301 A,CRE302 B, APO110 C WHERE (A.CREBLOQ = ''N'' OR A.CREBLOQ = ''S'') AND'+
             ' (B.CREBLOQ = ''N'') AND B.CREANO||B.CREMES>='+quotedstr(xRI)+
             ' AND B.CREANO||B.CREMES<='+quotedstr(xRF)+
             ' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID  and'+
             ' A.OFDESID = C.OFDESID';
     xTitulo := 'RELACION DE CUOTAS DESBLOQUEADAS';
    end;
{    xSql := 'SELECT c.ofdesABR,b.crebloq,A.USEID,A.ASOCODMOD,A.OFDESID,A.ASOAPENOM,'+
            ' A.CREFOTORG,A.CREDID,'+
            ' B.CRECUOTA,case when b.CREBLOQ = ''S'' then ''SI'' else '+
            ' case when b.CREBLOQ = ''N'' then ''NO'' end end BLOQUEADA,'+
            ' B.CRECUOTA,case when b.CREBLOQ = ''S'' then B.CREBLOQFEC else'+
            ' case when b.CREBLOQ = ''N'' then B.DESBLOFEC end end FECHA,'+
            ' B.CRECUOTA,case when b.CREBLOQ = ''S'' then B.USUBLOQ else'+
            ' case when b.CREBLOQ = ''N'' then B.USUDESBLOQ end end USUARIO,'+
            ' B.CREBLOQOBS,b.creano||''/''||b.cremes ANOMES'+
            ' FROM CRE303 A,CRE302 B, APO110 C '+
            ' WHERE (A.CREBLOQ = ''S'' or A.CREBLOQ = ''N'') AND '+
            ' (B.CREBLOQ = ''S'' or B.CREBLOQ = ''N'')  AND'+
            ' A.ASOID = B.ASOID AND A.CREDID = B.CREDID  and A.OFDESID = C.OFDESID';
}
  cdsQry.close;
  cdsQry.datarequest(xSql);
  cdsQry.open;
  bdeppBloqueo.DataSource := dsQry;
  rptBloqueo.Template.FileName := wRutaRpt+'\BLOQUEO.rtm';
  rptBloqueo.Template.LoadFromFile ;
  pplblTitulo.Caption := xTitulo;
  pplblRango.Caption := ' DEL '+copy(xRI,1,4)+'/'+copy(xRI,5,2)+' AL '+copy(xRF,1,4)+'/'+copy(xRF,5,2);
  Screen.cursor := crDefault;  
  rptBloqueo.Print;
  rptBloqueo.Stop;

end;

function TFBloqueoCuotas.VerificaDetalle: boolean;
begin
  result := False ;
end;

procedure TFBloqueoCuotas.spRAIKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0','1','2','3','4','5','6','7','8','9',#8]) then
    key := #0;
end;

procedure TFBloqueoCuotas.FormShow(Sender: TObject);
begin
  sPRAI.Text := dm1.StrZero(inttostr(yearof(date)),4);
  seRMI.Text := '01';

  seRAF.Text := dm1.StrZero(inttostr(yearof(date)),4);
  seRMF.Text := dm1.StrZero(inttostr(MonthOf(date)),2);
  dbeApePat.SetFocus ;
end;

procedure TFBloqueoCuotas.dbeApePatEnter(Sender: TObject);
begin
  strTmp := Trim(TCustomEdit(Sender).Text);
end;

procedure TFBloqueoCuotas.dbeAsocodmodExit(Sender: TObject);
var
 xSQL : String;
begin

  if (trim(dbeAsocodmod.Text) = strTmp) and (strTmp = '') then
  begin
     dbeAsocodmod.Text := strTmp ;
     Exit ;
  end ;

  dbeAsocodmod.text := dm1.StrZero(trim(dbeAsocodmod.text),10);

  if trim(dbeAsocodmod.Text) = strTmp then
  begin
     dbeAsocodmod.Text := strTmp ;
     Exit ;
  end ;

  //** SI HAY UN NOMBRE SE BUSCA
  If dbeAsocodmod.Text <> '' Then
   begin

//
    if VerificaDetalle then
    begin
       if MessageDlg('Tiene Modificaciones No Grabadas para : ' + dbeApePat.Text+#13 + '      ¿Desea Proseguir?', mtconfirmation, [mbYes, MbNo], 0) = mrNo then
       begin
          dbeAsocodmod.Text := strTmp ;
          Exit;
       end;
    end;
//
    xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
    xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;

    xAsoid := '';

    xSQL := 'Select DISTINCT ASOCODMOD,ASOCODAUX , ASOID From CRE301'
           +' Where ASOCODMOD LIKE '+QuotedStr(Trim(dbeAsocodmod.Text+'%'))
           +' and creestid = '+quotedstr(xEstid);

    cdsQry1.Close;
    cdsQry1.DataRequest(xSQL);
    cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If cdsQry1.RecordCount = 1 Then
    begin
     xAsoid := cdsQry1.FieldByName('ASOID').AsString ;
     CargaBusqueda;
    end
    Else
     begin
      LevantaFiltro('ASOCODMOD LIKE '+QuotedStr(Trim(dbeAsocodmod.Text+'%')));
      If xAsoid <> '' then
       cargabusqueda
//
      else
       begin
        dbeAsocodmod.Text := strTmp ;
        //bbtnNuevo.OnClick(bbtnNuevo);
       end;
//
     end;
   end
   else
   begin
    if VerificaDetalle then
    begin
       if MessageDlg('Tiene Modificaciones No Grabadas para : ' + dbeApePat.Text+#13 + '      ¿Desea Proseguir?', mtconfirmation, [mbYes, MbNo], 0) = mrYes then
          bbtnNuevo.OnClick(bbtnNuevo)
       else
          dbeAsocodmod.Text := strTmp ;
    end
    else
        bbtnNuevo.OnClick(bbtnNuevo);

   end ;
end;

procedure TFBloqueoCuotas.bbtnNuevoClick(Sender: TObject);
begin
  if VerificaDetalle then
  begin
     if MessageDlg('Tiene Modificaciones No Grabadas para : ' + strTmp+#13 + '      ¿Desea Proseguir?', mtconfirmation, [mbYes, MbNo], 0) = mrNo then
     begin
        Exit;
     end;
  end;

  dbeApePat.Clear;
  dbeAsocodmod.Clear;
  clbCreditos.Items.Clear;
  dbgBloqueoC.DataSource := nil;
  dbeApePat.SetFocus ;

end;

procedure TFBloqueoCuotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 Then
  begin
   key:=#0;
   perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFBloqueoCuotas.FormCreate(Sender: TObject);
begin
   cdsQry1      . RemoteServer  := dm1.DCOM1 ;
   cdsQry2      . RemoteServer  := dm1.DCOM1 ;
   cdsQry       . RemoteServer  := dm1.DCOM1 ;
   cdsSolicitud . RemoteServer  := dm1.DCOM1 ;
   cdsQry1      . ProviderName  := dm1.cdsQry.ProviderName ;
   cdsQry2      . ProviderName  := cdsQry1 . ProviderName ;
   cdsQry       . ProviderName  := cdsQry1 . ProviderName ;
   cdsSolicitud . ProviderName  := cdsQry1 . ProviderName ;
end;

end.
