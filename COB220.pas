unit COB220;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, wwriched, Buttons, ExtCtrls, fcButton, fcImgBtn,db,
  fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid, CheckLst, Mask, wwdbedit,mant,wwClient,
  Wwdatsrc, DBClient,dATEuTILS;

type
  TFDesmarque = class(TForm)
    dbeApePat: TwwDBEdit;
    dbeAsocodmod: TwwDBEdit;
    clbCreditos: TCheckListBox;
    lblTitu1: TLabel;
    dbgBloqueoC: TwwDBGrid;
    Z2bbtnSigue: TfcShapeBtn;
    pnlMemo: TPanel;
    StaticText1: TStaticText;
    btnCerrar: TBitBtn;
    dbreMemo: TwwDBRichEdit;
    bbtnNuevo: TfcShapeBtn;
    cdsQry1: TwwClientDataSet;
    cdsQry2: TwwClientDataSet;
    cdsQry: TwwClientDataSet;
    cdsSolicitud: TwwClientDataSet;
    dsSolicitud: TwwDataSource;
    dsQry: TwwDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeApePatExit(Sender: TObject);
    procedure clbCreditosClickCheck(Sender: TObject);
    procedure dbeAsocodmodExit(Sender: TObject);
    procedure dbgBloqueoCFieldChanged(Sender: TObject; Field: TField);
    procedure btnCerrarClick(Sender: TObject);
    procedure Z2bbtnSigueClick(Sender: TObject);
    procedure bbtnNuevoClick(Sender: TObject);
    procedure dbgBloqueoCDblClick(Sender: TObject);
    procedure dbgBloqueoCCellChanged(Sender: TObject);
    procedure dbeApePatEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    xAsoid : STring;
    Mtx : TMant;
    xFecha,xEstid,xEstado,xEstid1,xEstado1 : String;
    xSysDate : TDate;
    strTmp : String;
    procedure cargabusqueda;  //** BUSCA AL ASOCIADO
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
    procedure HabilitaObs(bHabilita:Boolean);
    function VerificaDetalle:boolean;
  public
    { Public declarations }
  end;

var
  FDesmarque: TFDesmarque;

implementation

uses COBDM1, COB307;

{$R *.DFM}

procedure TFDesmarque.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 Then
  begin
   key:=#0;
   perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFDesmarque.dbeApePatExit(Sender: TObject);
var
 xSQL : String;
begin

  if trim(dbeApePat.Text) = strTmp then
  begin
     dbeApePat.Text := strTmp ;
     Exit ;
  end ;

  //** SI HAY UN NOMBRE SE BUSCA
  If dbeApePat.Text <> '' Then
   begin
   
//
    if VerificaDetalle then
    begin
       if MessageDlg('Tiene Modificaciones No Grabadas para : ' + strTmp+#13 + '      ¿Desea Proseguir?', mtconfirmation, [mbYes, MbNo], 0) = mrNo then
       begin
          dbeApePat.Text := strTmp ;
          Exit;
       end;
    end;
//

    xAsoid := '';
    xSQL := 'Select * From APO201'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%'));
    cdsQry1.Close;
    cdsQry1.DataRequest(xSQL);
    cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If cdsQry1.RecordCount = 1 Then
     begin
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

{
  //** SI HAY UN NOMBRE SE BUSCA
  If dbeApePat.Text <> '' Then
   begin
    xAsoid := '';
    xSQL := 'Select * From APO201'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%'));
    cdsQry1.Close;
    cdsQry1.DataRequest(xSQL);
    cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If cdsQry1.RecordCount = 1 Then
     begin
      CargaBusqueda;
     end
    Else
     begin
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeApePat.Text+'%')));
      If xAsoid <> '' then
       begin
        cargabusqueda;
       end;
     end;
   end;
}
end;

procedure TFDesmarque.LevantaFiltro(xCampo : String);
begin
   cdsQry2.close;
   Mtx  := TMant.Create(Self);
   Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.TableName       := 'CRE303';
    Mtx.rEGISTROS       := 30;
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

//** AL HACER DOBLE CLICK EN ALGUNA FILA DEL MANT
procedure TFDesmarque.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL : String;
begin
   //** 2 Me indica cuotas por cobrar
//   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
//   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xSQL := 'Select * From APO201 '+
           ' Where ASOID ='+QuotedStr(cdsQry2.FieldByName('ASOID').AsString);
   DM1.FiltraCDS(cdsQry1,xSQL);
   xAsoid := cdsQry1.FieldByName('ASOID').AsString;
   mtx.FMant.Close;
end;

procedure TFDesmarque.cargabusqueda;
var
 xSql : String;
begin
   clbCreditos.Clear;
   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xSQL := 'Select * From CRE303 '+
           ' Where ASOID ='+QuotedStr(cdsQry1.FieldByName('ASOID').AsString)+
           ' AND CREESTID ='+quotedstr(xEstid);
   DM1.FiltraCDS(cdsQry2,xSQL);
   dbeApePat.text:= cdsQry1.FieldByName('ASOAPENOM').AsString;
   dbeAsocodmod.text:= cdsQry1.FieldByName('ASOCODMOD').AsString;
   cdsQry2.First;
   While not cdsQry2.eof do
    begin
     clbCreditos.Items.Add(cdsQry2.FieldByName('CREDID').AsString);
     cdsQry2.next;
    end;

   //** CARGO LA FECHA DEL SISTEMA
   xSQL := 'Select '+wRepFecServi+' FECHA From TGE901 '; //Where DUME = '+QuotedStr('PER');
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   xFecha := copy(cdsQry.FieldByName('FECHA').AsString, 1, 10);
   xSysDate := StrToDate(xFecha);

   clbCreditos.OnClickCheck(clbCreditos);
end;

procedure TFDesmarque.clbCreditosClickCheck(Sender: TObject);
Var
 xSql : String;
begin
   dbgBloqueoC.DataSource := nil;
   //** 2 Me indica cuotas por cobrar
   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('3'),'ESTDES');
   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
   cdsQry2.IndexFieldNames := '';
   cdsQry2.Filter := '';
   cdsQry2.Filtered := False;
   //** el bloqueo1 me sirve como historico antes de grabar
   xSql := 'SELECT ASOID,CREANO,CREMES,CRECUOTA,CREMTO,CREESTADO,'+
           ' ''N'' FLGDESMAR,USUDESMAR,FECDESMAR,OBSDESMAR,ASOID,'+
           ' CREDID,CREAMORT,CREINTERES,CREFLAT,CRECAPITAL,CREMTOINT,CREMTOFLAT,CREMTOCOB,CREMTOEXC'+
           ' FROM CRE302 WHERE '+
           ' ASOID = '+quotedstr(cdsQry1.FieldByName('ASOID').AsString)+
//           ' AND CREDID ='+quotedstr(clbCreditos.Items.Strings[clbCreditos.ItemIndex])+
           ' AND CREESTID ='+quotedstr(xEstid)+' ORDER  BY CREDID,CREANO,CREMES';
   cdsSolicitud.close;
   cdsSolicitud.datarequest(xSql);
   cdsSolicitud.open;
   If cdsSolicitud.Recordcount = 0 then
    begin
     ShowMessage('El Crédito(s) del Asociado no tiene Cuotas para ser Bloquedas o Desbloqueadas ');
     Z2bbtnSigue.Enabled := False ;
     exit;
    end;
   Z2bbtnSigue.Enabled := True ;
   cdsSolicitud.FieldByName('CREDID').ReadOnly := True;
   cdsSolicitud.FieldByName('CREANO').ReadOnly := True;
   cdsSolicitud.FieldByName('CREMES').ReadOnly := True;
   cdsSolicitud.FieldByName('CRECUOTA').ReadOnly := True;
   cdsSolicitud.FieldByName('CREMTO').ReadOnly := True;
   cdsSolicitud.FieldByName('CREESTADO').ReadOnly := True;
   cdsSolicitud.FieldByName('FLGDESMAR').ReadOnly := False;
   cdsSolicitud.FieldByName('USUDESMAR').ReadOnly := True;
   cdsSolicitud.FieldByName('FECDESMAR').ReadOnly := True;
   cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := True;

   dbgBloqueoC.selected.Clear;
   dbgBloqueoC.selected.Add('CREDID'#9'18'#9'NºCrédito');
   dbgBloqueoC.selected.Add('CREANO'#9'4'#9'Año');
   dbgBloqueoC.selected.Add('CREMES'#9'2'#9'Mes');
   dbgBloqueoC.selected.Add('CRECUOTA'#9'2'#9'Cuota');
   dbgBloqueoC.selected.Add('CREMTO'#9'10'#9'Mto ~Cuota');
   dbgBloqueoC.selected.Add('CREESTADO'#9'25'#9'Estado');
   dbgBloqueoC.selected.Add('FLGDESMAR'#9'2'#9'S/N');
   dbgBloqueoC.selected.Add('USUDESMAR'#9'10'#9'Usuario~Desmarque');
   dbgBloqueoC.selected.Add('FECDESMAR'#9'10'#9'Fecha ~Desmarque');
   dbgBloqueoC.selected.Add('USUDESBLOQ'#9'10'#9'Usuario~Desblo');
   dbgBloqueoC.selected.Add('OBSDESMAR'#9'15'#9'Observa.');
   dbgBloqueoC.DataSource := dsSolicitud;
   dbgBloqueoC.SetControlType('FLGDESMAR', fctCheckBox, 'S;N');
   dbgBloqueoC.ApplySelected;
   dbreMemo.DataSource := dsSolicitud;
   dbreMemo.DataField := 'OBSDESMAR';
end;


procedure TFDesmarque.dbeAsocodmodExit(Sender: TObject);
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
    xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
    xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
    if VerificaDetalle then
    begin
       if MessageDlg('Tiene Modificaciones No Grabadas para : ' + dbeApePat.Text+#13 + '      ¿Desea Proseguir?', mtconfirmation, [mbYes, MbNo], 0) = mrNo then
       begin
          dbeAsocodmod.Text := strTmp ;
          Exit;
       end;
    end;
//

    xAsoid := '';
    xSQL := 'Select * From APO201'
           +' Where ASOCODMOD LIKE '+QuotedStr(Trim(dbeAsocodmod.Text+'%'));
    cdsQry1.Close;
    cdsQry1.DataRequest(xSQL);
    cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If cdsQry1.RecordCount = 1 Then
     CargaBusqueda
    Else
     begin
      LevantaFiltro('ASOCODMOD LIKE '+QuotedStr(Trim(dbeAsocodmod.Text+'%')));
      If xAsoid <> '' then
       cargabusqueda
      else
       begin
        dbeAsocodmod.Text := strTmp ;
       end;
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


procedure TFDesmarque.dbgBloqueoCFieldChanged(Sender: TObject;
  Field: TField);
begin
    If (Field.fullName = 'FLGDESMAR') and (field.AsString = 'S') then
    begin
      pnlMemo.Visible := True;
      HabilitaObs(True);
      dbreMemo.SetFocus ;
      cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := False;
    end;
    If (Field.fullName = 'FLGDESMAR') and (field.AsString = 'N') then
    begin
      cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := False;
      cdsSolicitud.FieldByName('OBSDESMAR').Clear;
      cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := True;
      cdsSolicitud.Post;      
    end;

end;

procedure TFDesmarque.btnCerrarClick(Sender: TObject);
var
 xI : Integer;
begin
   pnlMemo.Visible := False;
   HabilitaObs(False);
   cdsSolicitud.Edit;
   For xI := 0 to dbreMemo.Lines.Count -1 do
    cdsSolicitud.FieldByName('OBSDESMAR').AsString := dbreMemo.Lines.Strings[xI];
   cdsSolicitud.Post;
end;

procedure TFDesmarque.Z2bbtnSigueClick(Sender: TObject);
var
 xEstado,xEstid,xEstado1,xEstid1,xEstado2,xEstid2,xEstado3,xEstid3,xEstado4,xEstid4 : String ;
 sMesAct , sAnoActual   : String ;
 xEstadoAct , xEstidAct : String ;
 xSql : String;
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

  if MessageDlg('Esta Seguro que desea desmarcar el proceso de cobranza', mtconfirmation, [mbYes, MbNo], 0) = mrYes then
   begin
    cdsSolicitud.first;
    while not cdsSolicitud.eof do
     begin
      If cdsSolicitud.FieldByName('FLGDESMAR').AsString = 'S' then
       begin
        AnalizaEstado;
        xSql := 'UPDATE CRE302 SET '+
              'CREESTID ='+quotedstr(xEstidAct)+
              ',CREESTADO ='+quotedstr(xEstadoAct)+
              ',FLGDESMAR ='+quotedstr('S')+
              ',USUDESMAR ='+quotedstr(dm1.wUsuario)+
              ',FECDESMAR ='+quotedstr(DateToStr(xSysDate))+
              ',OBSDESMAR ='+quotedstr(cdsSolicitud.FieldByName('OBSDESMAR').AsString)+
              ',CREINFO ='+quotedstr('0')+
              ' WHERE ASOID ='+quotedstr(cdsSolicitud.FieldByName('ASOID').AsString)+
              ' AND CREDID ='+quotedstr(cdsSolicitud.FieldByName('CREDID').AsString)+
              ' AND CRECUOTA ='+quotedstr(cdsSolicitud.FieldByName('CRECUOTA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       end;
        cdsSolicitud.next;
     end;
     dbgBloqueoC.DataSource := nil ;
     bbtnNuevo.OnClick(bbtnNuevo);
   end;
end;

procedure TFDesmarque.HabilitaObs(bHabilita: Boolean);
begin
  dbeApePat.Enabled    := not bHabilita ;
  dbeAsocodmod.Enabled := not bHabilita ;
  clbCreditos.Enabled  := not bHabilita ;
  dbgBloqueoC.Enabled  := not bHabilita ;
  bbtnNuevo.Enabled    := not bHabilita ;
  Z2bbtnSigue.Enabled  := not bHabilita ;
end;

procedure TFDesmarque.bbtnNuevoClick(Sender: TObject);
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

procedure TFDesmarque.dbgBloqueoCDblClick(Sender: TObject);
begin
    If (dbgBloqueoC.GetActiveCol = 10) and (dbgBloqueoC.DataSource.DataSet.FieldByName('FLGDESMAR').AsString = 'S') then
    begin
      pnlMemo.Visible := True;
      HabilitaObs(True);
      dbreMemo.SetFocus ;
    end;
end;

procedure TFDesmarque.dbgBloqueoCCellChanged(Sender: TObject);
begin
   if (dbgBloqueoC.GetActiveCol = 10) and
      (dbgBloqueoC.DataSource.DataSet.fieldByName('FLGDESMAR').AsString = 'S') then
      cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := False
   else
      cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := True
end;

procedure TFDesmarque.dbeApePatEnter(Sender: TObject);
begin
  strTmp := trim(TCustomEdit(Sender).Text) ;
end;

function TFDesmarque.VerificaDetalle:boolean;
begin
  result := False ;
  if dbgBloqueoC.DataSource = nil then
     Exit;
  if dbgBloqueoC.DataSource.DataSet.RecordCount = 0 then
     Exit;
  result := dm1.OperClientDataSet(TwwClientDataset(dbgBloqueoC.DataSource.DataSet),'COUNT(*)','FLGDESMAR=''S''') > 0 ;
end;

procedure TFDesmarque.FormShow(Sender: TObject);
begin
  dm1.LimpiaClientDataset(DM1.cdsQry);
  dm1.LimpiaClientDataset(cdsQry1);
  dm1.LimpiaClientDataset(cdsSolicitud);
end;

procedure TFDesmarque.FormCreate(Sender: TObject);
begin
   cdsQry1      . RemoteServer  := dm1.DCOM1 ;
   cdsQry2      . RemoteServer  := dm1.DCOM1 ;
   cdsQry       . RemoteServer  := dm1.DCOM1 ;
   cdsSolicitud . RemoteServer  := dm1.DCOM1 ;
   cdsQry1      . ProviderName  := dm1.cdsQry.ProviderName ;
   cdsQry2      . ProviderName  := cdsQry1 . ProviderName ;
   cdsQry       . ProviderName  := cdsQry1 . ProviderName ;
   cdsSolicitud . ProviderName  := cdsQry1 . ProviderName ;
//
   //** CARGO LA FECHA DEL SISTEMA
   xSQL := 'Select '+wRepFecServi+' FECHA From TGE901 '; //Where DUME = '+QuotedStr('PER');
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   xFecha := copy(cdsQry.FieldByName('FECHA').AsString, 1, 10);
   xSysDate := StrToDate(xFecha);
//
end;

end.
