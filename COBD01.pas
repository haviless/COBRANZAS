unit COBD01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, wwriched, Buttons, ExtCtrls, fcButton, fcImgBtn,db,
  fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid, CheckLst, Mask, wwdbedit,mant,wwClient,
  Wwdotdot, Wwdbcomb, Wwdatsrc, DBClient, wwcheckbox,DateUtils,Math;

type
  TFReprogCred = class(TForm)
    Z2bbtnSigue: TfcShapeBtn;
    bbtnNuevo: TfcShapeBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    gbDatosOperacion: TGroupBox;
    dbeApePat: TwwDBEdit;
    dbeAsocodmod: TwwDBEdit;
    GroupBox5: TGroupBox;
    lblTitu1: TLabel;
    dbgBloqueoC: TwwDBGrid;
    pnlMemo: TPanel;
    StaticText1: TStaticText;
    btnCerrar: TBitBtn;
    dbreMemo: TwwDBRichEdit;
    GroupBox6: TGroupBox;
    dblcTipoOperacion: TwwDBComboBox;
    dbeASOID: TwwDBEdit;
    dbeASODNI: TwwDBEdit;
    dbeUSEID: TwwDBEdit;
    dbeUPROID: TwwDBEdit;
    dbeUPAGOID: TwwDBEdit;
    dbeUSENOM: TwwDBEdit;
    dbeASOTELF1: TwwDBEdit;
    dbeASODIR: TwwDBEdit;
    dbeASOTIPDES: TwwDBEdit;
    dbeREGPENDES: TwwDBEdit;
    dbeCUENTA: TwwDBEdit;
    cdsDatosAdicionales: TwwClientDataSet;
    dsDatosAdicionales: TwwDataSource;
    dbeSaldo: TwwDBEdit;
    dbeCREDIDNEW: TwwDBEdit;
    dbeMtoCuota: TwwDBEdit;
    dbeNumCuotas: TwwDBEdit;
    dbeFecha: TwwDBEdit;
    rgModalidad: TRadioGroup;
    rgMesInicio: TRadioGroup;
    dbeTasaInteres: TwwDBEdit;
    dbeTasaFlat: TwwDBEdit;
    Bevel1: TBevel;
    GroupBox3: TGroupBox;
    spA: TSpeedButton;
    spE: TSpeedButton;
    spD: TSpeedButton;
    spC: TSpeedButton;
    spB: TSpeedButton;
    z2bbtnCrono: TfcShapeBtn;
    cdsVariable: TwwClientDataSet;
    z2bbtnPreliminar: TfcShapeBtn;
    spVerCobranzas: TSpeedButton;
    GroupBox7: TGroupBox;
    spSeleccioneCredito: TSpeedButton;
    spRefrescar: TSpeedButton;
    dbeNRONABO: TwwDBEdit;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
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
    procedure dblcTipoOperacionEnter(Sender: TObject);
    procedure dblcTipoOperacionExit(Sender: TObject);
    procedure spAClick(Sender: TObject);
    procedure spBClick(Sender: TObject);
    procedure spCClick(Sender: TObject);
    procedure spDClick(Sender: TObject);
    procedure spEClick(Sender: TObject);
    procedure z2bbtnCronoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure z2bbtnPreliminarClick(Sender: TObject);
    procedure spVerCobranzasClick(Sender: TObject);
    procedure spSeleccioneCreditoClick(Sender: TObject);
    procedure dblcTipoOperacionChange(Sender: TObject);
    procedure spRefrescarClick(Sender: TObject);
    procedure dbeNumCuotasKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumCuotasExit(Sender: TObject);
    procedure dbeNumCuotasEnter(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
    xAsoid : STring;
    Mtx : TMant;
    xFecha,xEstid,xEstado,xEstid1,xEstado1 : String;
    xSysDate : TDate;
    strTmp : String;
//    currSaldo , currExceso : Currency ;

    procedure cargabusqueda;  //** BUSCA AL ASOCIADO
    procedure CargaDatosAdicionales;
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
    procedure HabilitaObs(bHabilita:Boolean);
    function  VerificaDetalle:boolean;
    procedure AnalizaCreditos;
    function  ValidaSaldos (cds :TwwClientDataset;bImprime:boolean=False;bMuestraTodo:Boolean=False): boolean ;
    function  RecuperaFechaSys :TDateTime;
    function  RecuperaSaldosExcesos (sCREDID,sASOID : String;iTipo : Integer;var currSaldo,currExcesos:Currency): boolean ;
    function  GeneraCorrelativo(sTipoDoc : String;bPrevio:Boolean=False) :String;
    function  GeneraSaldosNAbono (sCREDID,sASOID : String;iTipo : Integer): TwwClientDataset ;
    procedure AnalizaTipoOperacion(iTipo : word) ;
    procedure LimpiaDatosCredito;
    function  CreditoSeleccionado :boolean;
    procedure ValidaCronograma ;
    procedure ValidaEmisionCredito ;
    procedure HabilitaBotones(bIndicador : Boolean) ;
  public
    { Public declarations }
  end;

var
  FReprogCred: TFReprogCred;

implementation

uses COBDM1, COBD02, COBD03, COBD04, COBD05, COB307, COB220;

{$R *.DFM}

procedure TFReprogCred.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 Then
  begin
   key:=#0;
   perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFReprogCred.dbeApePatExit(Sender: TObject);
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
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSQL);
    DM1.cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If DM1.cdsQry1.RecordCount = 1 Then
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
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSQL);
    DM1.cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If DM1.cdsQry1.RecordCount = 1 Then
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

procedure TFReprogCred.LevantaFiltro(xCampo : String);
begin
   DM1.cdsQry2.close;
   Mtx  := TMant.Create(Self);
   Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.TableName       := 'CRE303';
    Mtx.rEGISTROS       := 30;
    Mtx.ClientDataSet   := DM1.cdsQry2;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.Module          := DM1.wModulo;
    Mtx.Titulo 	        := 'Créditos';
    Mtx.SectionName     := 'Bloqueo';
    Mtx.FileNameIni     := '\SOLAPO.INI';
    Mtx.Filter          := xCampo;
    Mtx.OnEdit          := OnEditAso;
    Mtx. Execute;
   Finally
    DM1.cdsQry2.Close;
    Mtx.Free;
   end;
   DM1.cdsQry2.Close;
end;

//** AL HACER DOBLE CLICK EN ALGUNA FILA DEL MANT
procedure TFReprogCred.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL : String;
begin
   //** 2 Me indica cuotas por cobrar
//   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
//   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xSQL := 'Select * From APO201 '+
           ' Where ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
   DM1.FiltraCDS(DM1.cdsQry1,xSQL);
   xAsoid := DM1.cdsQry1.FieldByName('ASOID').AsString;
   mtx.FMant.Close;
end;

procedure TFReprogCred.cargabusqueda;
var
 xSql : String;
begin
//   clbCreditos.Clear;
   LimpiaDatosCredito ;
   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;

   xSQL := 'Select * From CRE303 '+
           ' Where ASOID ='+QuotedStr(DM1.cdsQry1.FieldByName('ASOID').AsString)+
           ' AND CREESTID ='+quotedstr(xEstid);
   DM1.FiltraCDS(DM1.cdsQry2,xSQL);
   dbeApePat.text:= dm1.cdsQry1.FieldByName('ASOAPENOM').AsString;
   dbeAsocodmod.text:= dm1.cdsQry1.FieldByName('ASOCODMOD').AsString;
   dm1.cdsQry2.First;
   While not dm1.cdsQry2.eof do
    begin
//     clbCreditos.Items.Add(DM1.cdsQry2.FieldByName('CREDID').AsString);
     DM1.cdsQry2.next;
    end;

   //Carga Datos Adicionales
   CargaDatosAdicionales ;

   clbCreditosClickCheck(nil);
end;

procedure TFReprogCred.clbCreditosClickCheck(Sender: TObject);
Var
 xSql : String;
begin
   dbgBloqueoC.DataSource := nil;
   //** 2 Me indica Creditos con Saldo
   xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
   xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
   xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
   xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;

   dm1.cdsQry2.IndexFieldNames := '';
   dm1.cdsQry2.Filter := '';
   dm1.cdsQry2.Filtered := False;

   xSql := 'SELECT FORPAGOID,CREDID,CREFOTORG,CREMTOOTOR,CREESTADO,0.00 SALDO,'+
           ' 0.00 EXCESO,''N'' INDICADOR, ''N'' INCONSISTENTE,''N'' APTOREFI,''N'' A,''N'' B,''N'' C,''N'' D,''N'' E,''N'' F,''N'' G,'+
           ' ''N'' NUMBLOQPROC ,''N'' PROCESADO'+
           ' FROM CRE301 WHERE '+
           ' ASOID = '+quotedstr(dm1.cdsQry1.FieldByName('ASOID').AsString)+
           ' AND (CREESTID ='+quotedstr(xEstid)+ ' OR CREESTID ='+quotedstr(xEstid1)+')' +
           ' ORDER  BY CREFOTORG,CREDID';

   dm1.cdsSolicitud.close;
   dm1.cdsSolicitud.datarequest(xSql);
   dm1.cdsSolicitud.open;
   If dm1.cdsSolicitud.Recordcount = 0 then
    begin
     ShowMessage(' El Asociado No Tiene Créditos para Procesar ');
     Z2bbtnSigue.Enabled := False ;
     HabilitaBotones( Z2bbtnSigue.Enabled );
     exit;
    end;
   Z2bbtnSigue.Enabled := True ;
   HabilitaBotones( Z2bbtnSigue.Enabled );

   dm1.cdsSolicitud.FieldByName('CREDID').ReadOnly         := True;
   dm1.cdsSolicitud.FieldByName('CREFOTORG').ReadOnly      := True;
   dm1.cdsSolicitud.FieldByName('CREMTOOTOR').ReadOnly     := True;
   dm1.cdsSolicitud.FieldByName('CREESTADO').ReadOnly      := True;
   dm1.cdsSolicitud.FieldByName('SALDO').ReadOnly          := True;
   dm1.cdsSolicitud.FieldByName('EXCESO').ReadOnly         := True;
   dm1.cdsSolicitud.FieldByName('INDICADOR').ReadOnly      := False;
   dm1.cdsSolicitud.FieldByName('INCONSISTENTE').ReadOnly  := True;
   dm1.cdsSolicitud.FieldByName('APTOREFI').ReadOnly       := True;
   dm1.cdsSolicitud.FieldByName('NUMBLOQPROC').ReadOnly    := True;
   dm1.cdsSolicitud.FieldByName('A').ReadOnly              := True;
   dm1.cdsSolicitud.FieldByName('B').ReadOnly              := True;
   dm1.cdsSolicitud.FieldByName('C').ReadOnly              := True;
   dm1.cdsSolicitud.FieldByName('D').ReadOnly              := True;
   dm1.cdsSolicitud.FieldByName('E').ReadOnly              := True;
   dm1.cdsSolicitud.FieldByName('F').ReadOnly              := True;
   dm1.cdsSolicitud.FieldByName('G').ReadOnly              := True;

   tfloatfield(dm1.cdsSolicitud.FieldByName('CREMTOOTOR')).DisplayFormat := '###,##0.00';
   tfloatfield(dm1.cdsSolicitud.FieldByName('SALDO')).DisplayFormat := '###,##0.00';
   tfloatfield(dm1.cdsSolicitud.FieldByName('EXCESO')).DisplayFormat := '###,##0.00';

   dbgBloqueoC.selected.Clear;
   dbgBloqueoC.selected.Add('CREDID'#9'15'#9'NºCrédito');
   dbgBloqueoC.selected.Add('CREFOTORG'#9'10'#9'F.Otorg.');
   dbgBloqueoC.selected.Add('CREMTOOTOR'#9'8'#9'Monto~Otorgado');
   dbgBloqueoC.selected.Add('CREESTADO'#9'15'#9'Estado');
   dbgBloqueoC.selected.Add('SALDO'#9'8'#9'~Saldo');
   dbgBloqueoC.selected.Add('EXCESO'#9'8'#9'Monto~Exceso');
//   dbgBloqueoC.selected.Add('INCONSISTENTE'#9'8'#9'Inconsis');
   dbgBloqueoC.selected.Add('APTOREFI'#9'8'#9'Apto~Operación');
   dbgBloqueoC.selected.Add('INDICADOR'#9'8'#9'S/N');
   dbgBloqueoC.selected.Add('NUMBLOQPROC'#9'8'#9'BLOQ.~PROC.');
   dbgBloqueoC.selected.Add('A'#9'2'#9'A');
   dbgBloqueoC.selected.Add('B'#9'2'#9'B');
   dbgBloqueoC.selected.Add('C'#9'2'#9'C');
   dbgBloqueoC.selected.Add('D'#9'2'#9'D');
   dbgBloqueoC.selected.Add('E'#9'2'#9'E');
   dbgBloqueoC.selected.Add('F'#9'2'#9'F');
   dbgBloqueoC.selected.Add('G'#9'2'#9'G');

   dbgBloqueoC.DataSource := DM1.dsSolicitud;
   dbgBloqueoC.SetControlType('INDICADOR', fctCheckBox, 'S;N');
//   dbgBloqueoC.SetControlType('INCONSISTENTE', fctCheckBox, 'S;N');
   dbgBloqueoC.SetControlType('APTOREFI', fctCheckBox, 'S;N');
   dbgBloqueoC.SetControlType('NUMBLOQPROC', fctCheckBox, 'S;N');

   dbgBloqueoC.SetControlType('A', fctCheckBox, 'S;N');
   dbgBloqueoC.SetControlType('B', fctCheckBox, 'S;N');
   dbgBloqueoC.SetControlType('C', fctCheckBox, 'S;N');
   dbgBloqueoC.SetControlType('D', fctCheckBox, 'S;N');
   dbgBloqueoC.SetControlType('E', fctCheckBox, 'S;N');
   dbgBloqueoC.SetControlType('F', fctCheckBox, 'S;N');
   dbgBloqueoC.SetControlType('G', fctCheckBox, 'S;N');   
   dbgBloqueoC.ApplySelected;
//wmc 20031027   dbreMemo.DataSource := DM1.dsSolicitud;
//wmc 20031027   dbreMemo.DataField := 'OBSDESMAR';

   dbgBloqueoC.DataSource := DM1.dsSolicitud;

   AnalizaCreditos ;
   AnalizaTipoOperacion(dblcTipoOperacion.ItemIndex);
end;


procedure TFReprogCred.dbeAsocodmodExit(Sender: TObject);
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
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSQL);
    DM1.cdsQry1.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If DM1.cdsQry1.RecordCount = 1 Then
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


procedure TFReprogCred.dbgBloqueoCFieldChanged(Sender: TObject;
  Field: TField);
begin
{
    If (Field.fullName = 'FLGDESMAR') and (field.AsString = 'S') then
    begin
      pnlMemo.Visible := True;
      HabilitaObs(True);
      dbreMemo.SetFocus ;
      dm1.cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := False;
    end;
    If (Field.fullName = 'FLGDESMAR') and (field.AsString = 'N') then
    begin
      dm1.cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := False;
      dm1.cdsSolicitud.FieldByName('OBSDESMAR').Clear;
      dm1.cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := True;
      DM1.cdsSolicitud.Post;
    end;
}
end;

procedure TFReprogCred.btnCerrarClick(Sender: TObject);
var
 xI : Integer;
begin
   pnlMemo.Visible := False;
   HabilitaObs(False);
   DM1.cdsSolicitud.Edit;
   For xI := 0 to dbreMemo.Lines.Count -1 do
    DM1.cdsSolicitud.FieldByName('OBSDESMAR').AsString := dbreMemo.Lines.Strings[xI];
   DM1.cdsSolicitud.Post;
end;

procedure TFReprogCred.Z2bbtnSigueClick(Sender: TObject);
var
   currSaldo,currExcesos : Currency ;
   CDS , cdsCreditoProc : TwwClientDataSet ;
   sCredito,sNroNabo : String ;
   sTipoDes , sFORPAGOID , sFORPAGOABR : String ;
   sPrefijoNABO : String ;
   sAREA : String ;
   sCreditoOri : String ;
begin
  if not CreditoSeleccionado then
   Raise exception.Create('No ha Seleccionado ningún Crédito a Procesar');

  ValidaCronograma ;
  ValidaEmisionCredito ;
  Screen.Cursor := crHourGlass ;
  try
     //Emisión del Crédito
    cdsCreditoProc := TwwClientDataset.Create(nil);
    cdsCreditoProc.CloneCursor(DM1.cdsSolicitud,True);
    cdsCreditoProc.Filter   := 'INDICADOR=''S''' ;
    cdsCreditoProc.Filtered := True ;
    sCreditoOri  := cdsCreditoProc.fieldByName('CREDID').AsString ;


    if rgModalidad.ItemIndex = 0 then
       sFORPAGOID := '18'
    else
       sFORPAGOID := '01' ;

    sFORPAGOABR := DM1.DisplayDescrip('prvSQL','COB101','FORPAGOABR','FORPAGOID='+quotedstr(sFORPAGOID),'FORPAGOABR');
    sTipoDes    := DM1.DisplayDescrip('prvSQL','CRE104','TIPDESEABR','TIPDESEID='+quotedstr('10'),'TIPDESEABR');
  //
    CDS := GeneraSaldosNAbono(sCreditoOri,
                           cdsDatosAdicionales.FieldByName('ASOID').AsString,
                           dblcTipoOperacion.itemindex);
    currSaldo := dm1.OperClientDataSet(cds,'SUM(NA_SALDO)','NA_FLAG=''S''') ;
    currExcesos := dm1.OperClientDataSet(cds,'SUM(NA_EXCESO)','');
    if trim(dbeCREDIDNEW.Text) = '' then
    begin
      case dblcTipoOperacion.ItemIndex of
       0: sPrefijoNABO := 'R';
       1: sPrefijoNABO := 'A';
       2: sPrefijoNABO := 'C';
       end ;
      sNroNabo   := GeneraCorrelativo(sPrefijoNABO + 'NRONABO',False);
      sCredito   := GeneraCorrelativo('CREDID',False) ;
    end
    else
    begin
      sNroNabo   := dbeNRONABO.Text;
      sCredito   := dbeCREDIDNEW.Text ;
    end ;
    sAREA := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''003''','MODULOID');
    FSimulaCronograma := TFSimulaCronograma.Create(nil);
    FSimulaCronograma.ReprocesaCronograma(
          date,currSaldo,strtoint(dbenumcuotas.Text),sCredito,sNroNabo,rgMesInicio.ItemIndex,
          strtocurr(dbeTasaInteres.Text),strtocurr(dbeTasaFlat.Text),
          sCreditoOri,cdsDatosAdicionales.FieldByName('ASOID').AsString,
          sFORPAGOID,sFORPAGOABR,sAREA,'10',sTipoDes,CDS,False);
    FSimulaCronograma.Free;
    dbeCREDIDNEW.Text := sCredito ;
    dbeNRONABO.Text   := sNroNabo ;
    gbDatosOperacion.Enabled := False ;
    cdsCreditoProc.Edit;
    cdsCreditoProc.FieldByName('PROCESADO').AsString := 'S' ;
    cdsCreditoProc.Post ;
    cdsCreditoProc . Free ;
    Screen.Cursor := crDefault ;
    ShowMessage('El Número del Crédito generado : ' + sCredito + #13 +
                'El Número de la Nota de Abono generada : ' + sNroNabo);
    bbtnNuevo.OnClick(bbtnNuevo);            
  Except
    Screen.Cursor := crDefault ;
  end;
{
  FPreliminarRefinanciado := TFPreliminarRefinanciado.Create(nil);
  try
    FPreliminarRefinanciado.MuestraPrevio(cdsDatosAdicionales.FieldByName('ASOID').AsString,
                                          sCredito,DM1.cdsSolicitud.FieldByName('CREDID').AsString) ;
  finally
    FPreliminarRefinanciado.Free ;
  end ;
}
end;

procedure TFReprogCred.HabilitaObs(bHabilita: Boolean);
begin
  dbeApePat.Enabled    := not bHabilita ;
  dbeAsocodmod.Enabled := not bHabilita ;
//  clbCreditos.Enabled  := not bHabilita ;
  dbgBloqueoC.Enabled  := not bHabilita ;
  bbtnNuevo.Enabled    := not bHabilita ;
  Z2bbtnSigue.Enabled  := not bHabilita ;
end;

procedure TFReprogCred.bbtnNuevoClick(Sender: TObject);
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
  dbgBloqueoC.DataSource := nil;
  dbeApePat.SetFocus ;
  cdsDatosAdicionales.Close;
  LimpiaDatosCredito ;
  Z2bbtnSigue.Enabled := False ;
  HabilitaBotones(Z2bbtnSigue.Enabled);
end;

procedure TFReprogCred.dbgBloqueoCDblClick(Sender: TObject);
begin
    If (dbgBloqueoC.GetActiveCol = 10) and (dbgBloqueoC.DataSource.DataSet.FieldByName('FLGDESMAR').AsString = 'S') then
    begin
      pnlMemo.Visible := True;
      HabilitaObs(True);
      dbreMemo.SetFocus ;
    end;
end;

procedure TFReprogCred.dbgBloqueoCCellChanged(Sender: TObject);
begin
{ WMC 20031027
   if (dbgBloqueoC.GetActiveCol = 10) and
      (dbgBloqueoC.DataSource.DataSet.fieldByName('FLGDESMAR').AsString = 'S') then
      dm1.cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := False
   else
      dm1.cdsSolicitud.FieldByName('OBSDESMAR').ReadOnly := True
}
end;

procedure TFReprogCred.dbeApePatEnter(Sender: TObject);
begin
  strTmp := trim(TCustomEdit(Sender).Text) ;
end;

function TFReprogCred.VerificaDetalle:boolean;
begin
{
  result := False ;
  if dbgBloqueoC.DataSource = nil then
     Exit;
  if dbgBloqueoC.DataSource.DataSet.RecordCount = 0 then
     Exit;
  result := dm1.OperClientDataSet(TwwClientDataset(dbgBloqueoC.DataSource.DataSet),'COUNT(*)','FLGDESMAR=''S''') > 0 ;
}
  result := False ;
end;

procedure TFReprogCred.FormShow(Sender: TObject);
begin
  dm1.LimpiaClientDataset(DM1.cdsQry);
  dm1.LimpiaClientDataset(DM1.cdsQry1);
  dm1.LimpiaClientDataset(DM1.cdsSolicitud);
  dbeApePat.SetFocus ;
end;

procedure TFReprogCred.dblcTipoOperacionEnter(Sender: TObject);
begin
  dblcTipoOperacion.Tag := dblcTipoOperacion.ItemIndex ;
end;

procedure TFReprogCred.dblcTipoOperacionExit(Sender: TObject);
begin
{
  if dblcTipoOperacion.Tag <> dblcTipoOperacion.ItemIndex then
  begin
     //Acá se pone el código que verifica Las Operaciones que se deben de realizasr despues de
     //Cambio en el Tipo de Operación
    AnalizaTipoOperacion(dblcTipoOperacion.ItemIndex) ;
  end ;
}  
end;

procedure TFReprogCred.CargaDatosAdicionales;
var
   xSQL : String ;
begin

   xSql :=
       ' SELECT A.ASOID,A.UPROID,A.USEID,A.UPAGOID,B.USENOM,A.ASOTIPID,C.ASOTIPDES,D.REGPENDES,A.REGPENID, '
            +  ' A.ASONCTA,A.SITCTA, '
            +  ' NVL(A.ASONCTA,'''')||DECODE(A.SITCTA,NULL,'''',''-['')||A.SITCTA||DECODE(A.SITCTA,NULL,'''','']'') CUENTA,'
            +  ' A.ASODNI,A.ASOTELF1,A.ASODIR'
//            +  ' 0.00 DA_TASAINTERES,0.00 DA_TASAFLAT,SYSDATE DA_FECHA,0.00 DA_SALDO,0 DA_NROCUOTAS,'
//            +  ' 0.00 DA_MTOCUOTA,'''' DA_CREDIDNEW,0 DA_MESINICIO,'''' DA_FORPAGOID'
        + ' FROM APO201 A,APO101 B,APO107 C,APO105 D'
        + ' WHERE A.UPROID = B.UPROID(+)'
            +  ' AND A.USEID = B.USEID(+)'
            +  ' AND A.UPAGOID = B.UPAGOID(+)'
            +  ' AND A.ASOTIPID = C.ASOTIPID(+)'
            +  ' AND A.REGPENID = D.REGPENID(+)'
            +  ' AND A.ASOID = '+QuotedStr(dm1.cdsQry1.FieldByName('ASOID').AsString);
   if not assigned(cdsDatosAdicionales.RemoteServer) then
   begin
      cdsDatosAdicionales.RemoteServer := dm1.DCOM1 ;
      cdsDatosAdicionales.ProviderName := dm1.cdsQry.ProviderName ;
   end ;
   cdsDatosAdicionales.Close;
   cdsDatosAdicionales.DataRequest(xSQL);
   cdsDatosAdicionales.Open;

end;

procedure TFReprogCred.AnalizaCreditos;
var
  cdsClone : TwwClientDataset;
  i , iNumFilas : integer;
  sSQL : String ;
  frm : TFValidaRefi1;
begin
  cdsClone := TwwClientDataSet.Create(nil);
  cdsClone.CloneCursor(dm1.cdsSolicitud,True);
  iNumFilas := cdsClone.RecordCount ;
  frm := TFValidaRefi1.Create(nil);
  for i := 1 to iNumFilas do
  begin
    cdsClone.RecNo := i ;
    //Validar por Existencia de Cuotas Bloqueadas o en Proceso

    sSQL :=
     ' SELECT 1 '
       + ' FROM CRE302 A,CRE113 B '
       + ' WHERE A.ASOID = ' + QuotedStr( cdsDatosAdicionales.FieldByName('ASOID').AsString )
       + ' AND A.CREDID = ' + Quotedstr(cdsClone.FieldByName('CREDID').AsString)
       + ' AND A.CREESTID = B.ESTID(+) '
       + ' AND (B.FLGTIPO IN (''3'',''D'') OR CREBLOQ=''S'' OR CREBLOQ=''1'') ' ;
    DM1.cdsQry.Close ;
    DM1.cdsQry.Datarequest(sSQL);
    dm1.cdsQry.Open;
    if dm1.cdsQry.RecordCount > 0 then
    begin

      cdsClone.Edit ;
      cdsClone.FieldByName('NUMBLOQPROC').AsString := 'S' ;
      cdsClone.Post ;

    end ;

    //Prueba 1
    if not frm.ValidaA(cdsClone.FieldByName('CREDID').AsString,cdsDatosAdicionales.FieldByName('ASOID').AsString) then
    begin
      cdsClone.Edit ;
      cdsClone.FieldByName('A').AsString := 'S' ;
      cdsClone.Post ;
    end;
    //Prueba 2
    if not frm.ValidaB(cdsClone.FieldByName('CREDID').AsString,cdsDatosAdicionales.FieldByName('ASOID').AsString) then
    begin
      cdsClone.Edit ;
      cdsClone.FieldByName('B').AsString := 'S' ;
      cdsClone.Post ;
    end;
    //Prueba 3
    if not frm.ValidaC(cdsClone.FieldByName('CREDID').AsString,cdsDatosAdicionales.FieldByName('ASOID').AsString) then
    begin
      cdsClone.Edit ;
      cdsClone.FieldByName('C').AsString := 'S' ;
      cdsClone.Post ;
    end;
    //Prueba 4
    if not frm.ValidaD(cdsClone.FieldByName('CREDID').AsString,cdsDatosAdicionales.FieldByName('ASOID').AsString) then
    begin
      cdsClone.Edit ;
      cdsClone.FieldByName('D').AsString := 'S' ;
      cdsClone.Post ;
    end;

    //Prueba 5
    if not ValidaSaldos(cdsClone) then
    begin
      cdsClone.Edit ;
      cdsClone.FieldByName('E').AsString := 'S' ;
      cdsClone.Post ;
    end ;

    //Prueba 6
    if not frm.ValidaF(cdsClone.FieldByName('CREDID').AsString,cdsDatosAdicionales.FieldByName('ASOID').AsString) then
    begin
      cdsClone.Edit ;
      cdsClone.FieldByName('F').AsString := 'S' ;
      cdsClone.Post ;
    end;

    //Prueba 7
    if not frm.ValidaG(cdsClone.FieldByName('CREDID').AsString,cdsDatosAdicionales.FieldByName('ASOID').AsString) then
    begin
      cdsClone.Edit ;
      cdsClone.FieldByName('G').AsString := 'S' ;
      cdsClone.Post ;
    end;

  end ;
  frm.Free
end;

function  TFReprogCred.ValidaSaldos (cds :TwwClientDataset;bImprime:boolean=False;bMuestraTodo:Boolean=False): boolean ;
var
  cdsCRE302 , cdsCRE310 : TwwClientDataset ;
  iFilas , i : Integer ;
  sSQL : String ;
  currAmort , currInteres,currFlat,
  currExceso,currAplic,currDev : Currency ;
  currSaldoCred , currExcesoCred : Currency ;
  currCobradoCRE310 : Currency ;
  currDif : Currency ;
  bCancelado : boolean ;
  dateFechaBase : TDateTime;
  dateFechaSYS  : TDateTime;
  sAno , sMes : String ;
  sAnoProc , sMesProc : String ;
  procedure InicializaMontos ;
  begin
    currAmort    := 0 ;    currInteres  := 0 ;    currFlat     := 0 ;
    currExceso   := 0 ;    currAplic    := 0 ;    currDev      := 0 ;
    bCancelado   := False ;
  end ;
  procedure VerificaCancelacionAdelantada;
  begin
    if (currAmort+currInteres+currFlat+currExceso)>=
        (cdsCRE302.FieldByName('CREAMORT').AsCurrency
       + cdsCRE302.FieldByName('CREFLAT').AsCurrency) then
       bCancelado := True
    else
       bcancelado := False ;
  end ;
  procedure VerificaCancelacion;
  begin
    if (currAmort+currInteres+currFlat+currExceso)>=
        (cdsCRE302.FieldByName('CREAMORT').AsCurrency
       + cdsCRE302.FieldByName('CREFLAT').AsCurrency
       + cdsCRE302.FieldByName('CREINTERES').AsCurrency) then
       bCancelado := True
    else
       bcancelado := False ;
  end ;
  procedure LimpiaCDS ;
  begin
    cdsCRE302.Close;
    cdsCRE310.Close;
    cdsCRE302.Free;
    cdsCRE310.Free;
  end ;
  procedure AdicionaCRE302Inconsis ;
  begin
   with FValidaRefi2.cdsCRE302Inconsis do
   begin
    Append ;
///
    FieldByName('CREANO'       ).AsString    := cdsCRE302.FieldByName('CREANO'       ).AsString     ;
    FieldByName('CREMES'       ).AsString    := cdsCRE302.FieldByName('CREMES'       ).AsString     ;
    FieldByName('CRECUOTA'     ).AsInteger   := cdsCRE302.FieldByName('CRECUOTA'     ).AsInteger    ;
    FieldByName('CREMTO'       ).AsFloat     := cdsCRE302.FieldByName('CREMTO'       ).AsFloat      ;
    FieldByName('CREAMORT'     ).AsFloat     := cdsCRE302.FieldByName('CREAMORT'     ).AsFloat      ;
    FieldByName('CREINTERES'   ).AsFloat     := cdsCRE302.FieldByName('CREINTERES'   ).AsFloat      ;
    FieldByName('CREFLAT'      ).AsFloat     := cdsCRE302.FieldByName('CREFLAT'      ).AsFloat      ;
    FieldByName('CREMTOCOB'    ).AsFloat     := cdsCRE302.FieldByName('CREMTOCOB'    ).AsFloat      ;
    FieldByName('CRECAPITAL'   ).AsFloat     := cdsCRE302.FieldByName('CRECAPITAL'   ).AsFloat      ;
    FieldByName('CREMTOINT'    ).AsFloat     := cdsCRE302.FieldByName('CREMTOINT'    ).AsFloat      ;
    FieldByName('CREMTOFLAT'   ).AsFloat     := cdsCRE302.FieldByName('CREMTOFLAT'   ).AsFloat      ;
    FieldByName('CREMTOEXC'    ).AsFloat     := cdsCRE302.FieldByName('CREMTOEXC'    ).AsFloat      ;
    FieldByName('CREESTADO'    ).AsString    := cdsCRE302.FieldByName('CREESTADO'    ).AsString     ;
    FieldByName('CREDID'    ).AsString        := cdsCRE302.FieldByName('CREDID'    ).AsString      ;
    FieldByName('ASOID'    ).AsString        := cdsCRE302.FieldByName('ASOID'    ).AsString     ;


//    FieldByName('C_FREG'       ).AsDateTime  := cdsCRE302.FieldByName('C_FREG'       ).AsDateTime   ;
//    FieldByName('C_CREFPAG'    ).AsDateTime  := cdsCRE302.FieldByName('C_CREFPAG'    ).AsDateTime   ;
    FieldByName('C_CREMTOCOB'  ).AsFloat     := currAmort + currInteres + currFlat + currExceso     ;
    FieldByName('C_CREAMORT'   ).AsFloat     := currAmort      ;
    FieldByName('C_CREINTERES' ).AsFloat     := currInteres     ;
    FieldByName('C_CREFLAT'    ).AsFloat     := currFlat     ;
    FieldByName('C_CREMTOEXC'  ).AsFloat     := currExceso     ;
///
    Next;
   end ;
  end ;
begin

  Result := True ;
  if bimprime then
  begin
    FValidaRefi2 := TFValidaRefi2.Create(nil);
  end;
  cdsCRE302 := TwwClientDataset.Create(nil);
  cdsCRE302.RemoteServer := dm1.DCOM1 ;
  cdsCRE302.ProviderName := dm1.cdsQry.ProviderName ;
  cdsCRE310 := TwwClientDataset.Create(nil);
  cdsCRE310.RemoteServer := dm1.DCOM1 ;
  cdsCRE310.ProviderName := dm1.cdsQry.ProviderName ;

  //Recuperación de Información
  cdsCRE302.DataRequest('SELECT * FROM CRE302 WHERE ASOID ='
         + QuotedStr(cdsDatosAdicionales.fieldbyname('ASOID').AsString)
         + ' AND CREDID = ' + QuotedStr(cds.fieldbyname('CREDID').AsString)
         + ' ORDER BY CRECUOTA') ;
  cdsCRE302.Open ;
  iFilas := cdsCRE302.RecordCount ;
  currSaldoCred  := 0 ;
  currExcesoCred := 0 ;
  dateFechaSYS := RecuperaFechaSys ;
  sAnoProc := dm1.strzero(inttostr(yearof(dateFechaSYS)),4);
  sMesProc := dm1.strzero(inttostr(MonthOf(dateFechaSYS)),2);
  for i := 1 to iFilas do
  begin
    cdsCRE302.RecNo := i ;
    cdsCRE310.Close;
    sSQL :=
     ' SELECT * '
   +  ' FROM CRE310 '
   +  ' WHERE CREDID = ' + QuotedStr(cdsCRE302.FieldBYName('CREDID').AsString)
   +   ' AND ASOID = ' + QuotedStr(cdsCRE302.FieldBYName('ASOID').AsString)
   +   ' AND CRECUOTA = ' + cdsCRE302.FieldBYName('CRECUOTA').AsString
   +   ' AND NOT FORPAGID IN (''06'',''10'') '
   +   ' ORDER BY FREG , CREFPAG ' ;

    cdsCRE310.DataRequest(sSQL);
    cdsCRE310.Open ;
    if cdsCRE310.RecordCount = 0 then
    begin
        if sAnoProc + sMesProc <
           cdsCRE302.FieldByName('CREANO').AsString+cdsCRE302.FieldByName('CREMES').AsString then
           currSaldoCred := currSaldoCred
                + cdsCRE302.FieldByName('CREAMORT').AsCurrency
                + cdsCRE302.FieldByName('CREFLAT').AsCurrency
        else
           currSaldoCred := currSaldoCred
                + cdsCRE302.FieldByName('CREAMORT').AsCurrency
                + cdsCRE302.FieldByName('CREINTERES').AsCurrency
                + cdsCRE302.FieldByName('CREFLAT').AsCurrency ;
    end
    else
    begin
      InicializaMontos;
      while not cdsCRE310.Eof do
      begin
        bCancelado := False ;
        currCobradoCRE310 := cdsCRE310.FieldByName('CREMTOCOB').AsCurrency ;
        if cdsCRE310.FieldByName('CREFPAG').IsNull then
           dateFechaBase := cdsCRE310.FieldByName('FREG').AsDateTime
        else
           dateFechaBase := cdsCRE310.FieldByName('CREFPAG').AsDateTime ;

        sAno := dm1.strzero(inttostr(yearof(datefechaBase)),4);
        sMes := dm1.strzero(inttostr(MonthOf(datefechaBase)),2);
        //Distribuye Monto Cobrado
        if (sAno+sMes)<(cdsCRE302.FieldByName('CREANO').AsString+cdsCRE302.FieldByName('CREMES').AsString) then
        begin
          if not bcancelado then
          begin
             //FLAT
             if currFlat < cdsCRE302.FieldByName('CREFLAT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat)
                   >= currCobradoCRE310 then
                begin
                   currFlat := currFlat + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat ) ;
                   currFlat := currFlat + currDif ;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacionAdelantada ;
                cdscre310.Next;
                continue;
             end ;
             //AMORTIZACION
             if currAmort < cdsCRE302.FieldByName('CREAMORT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort)
                   >= currCobradoCRE310 then
                begin
                   currAmort := currAmort + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif   := cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort ;
                   currAmort := currAmort +currDif;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacionAdelantada ;
                cdsCRE310.Next;
                continue;
             end
             else
             begin
               //Aqui va el Exceso
               currExceso := currexceso + currCobradoCRE310 ;
               //Aplicado
               currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency ;
               //Devuelto
               currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;
               //ojo
               VerificaCancelacionAdelantada ;
               //
             end;
          end
          else
          begin

             //Aqui va el Exceso
             currExceso := currexceso + currCobradoCRE310 ;
             //Aplicado
             currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency;
             //Devuelto
             currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;

          end ;
        end
        else
        //AQUI VA CUANDO SON COBRANZAS DEL MES EN CURSO
        begin
////////////////////////
          if not bcancelado then
          begin
             //FLAT
             if currFlat < cdsCRE302.FieldByName('CREFLAT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat)
                   >= currCobradoCRE310 then
                begin
                   currFlat := currFlat + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat ) ;
                   currFlat := currFlat +currDif;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacion ;
                cdsCRE310.Next ;
                continue;
             end ;
             //INTERES
             if currInteres < cdsCRE302.FieldByName('CREINTERES').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREINTERES').AsCurrency - currInteres)
                   >= currCobradoCRE310 then
                begin
                   currInteres := currInteres + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREINTERES').AsCurrency - currInteres ) ;
                   currInteres := currInteres + currDif ;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacion ;
                cdsCRE310.Next;
                continue;
             end ;
             //AMORTIZACION
             if currAmort < cdsCRE302.FieldByName('CREAMORT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort)
                   >= currCobradoCRE310 then
                begin
                   currAmort := currAmort + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort ) ;
                   currAmort := currAmort +currDif;
                   currCobradoCRE310 := currCobradoCRE310 - currDif;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacion ;
                cdsCRE310.Next;
                continue;
             end
             else
             begin
               //Aqui va el Exceso
               currExceso := currexceso + currCobradoCRE310 ;
               //Aplicado
               currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency;
               //Devuelto
               currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;
               //ojo
               VerificaCancelacion ;
               //
             end;
          end
          else
          begin

             //Aqui va el Exceso
             currExceso := currexceso + currCobradoCRE310 ;
             //Aplicado
             currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency;
             //Devuelto
             currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;

          end ;
////////////////////////
        end ;
        cdsCRE310.Next ;
        //Fin de Análisis
      end ; //Fin del While
//
      //Análisis Contra el Cronograma
//wmc 20031127      Result := True  ;
      if bMuestraTodo then
         AdicionaCRE302Inconsis ;
      if (Abs(cdsCRE302.FieldByName('CRECAPITAL').AsCurrency - currAmort) > 0.05)
         or (Abs(cdsCRE302.FieldByName('CREMTOINT').AsCurrency - currInteres) > 0.05 )
         or (Abs(cdsCRE302.FieldByName('CREMTOFLAT').AsCurrency - currFlat) > 0.05 )
         or (Abs(cdsCRE302.FieldByName('CREMTOEXC').AsCurrency - currExceso) > 0.05 )  then
      begin
        Result := False ;
        if bImprime and not bMuestraTodo then
           AdicionaCRE302Inconsis
        else
        begin
          if not bImprime and not bMuestraTodo then
          begin
            cds.edit;
            cds.FieldByName('E').AsString := 'S' ;
            cds.Post;
          end ;
        end;
      end ;
      //Verificar Estado y saldos
      if not bCancelado then
      begin
        if sAnoProc + sMesProc <
           cdsCRE302.FieldByName('CREANO').AsString+cdsCRE302.FieldByName('CREMES').AsString then
           currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').ASCurrency
                    + cdsCRE302.FieldByName('CREFLAT').ASCurrency
                    - (currAmort+currFlat)
        else
           currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').ASCurrency
                    + cdsCRE302.FieldByName('CREFLAT').ASCurrency
                    + cdsCRE302.FieldByName('CREINTERES').ASCurrency
                    - (currAmort+currInteres+currFlat);
      end;
      currExcesoCred := currExcesoCred + currExceso ;
//
    end ;
  end ;
  if bImprime then
  begin
    if FValidaRefi2.cdsCRE302Inconsis.RecordCount > 0 then
      try
        FValidaRefi2.ShowModal;
      finally
        FValidaRefi2.Free ;
      end;
  end
  else
  begin
     if (cds.FieldByName('A').AsString = 'N') and
        (cds.FieldByName('B').AsString = 'N') and
        (cds.FieldByName('C').AsString = 'N') and
        (cds.FieldByName('D').AsString = 'N') and
        (cds.FieldByName('E').AsString = 'N') then
     begin
        cds.edit;
{wmc 20031127
        cds.FieldByName('SALDO').AsCurrency  := currSaldoCred ;
        cds.FieldByName('EXCESO').AsCurrency := currExcesoCred ;
}
//        cds.FieldByName('SALDO').AsCurrency  := 0 ;
//        cds.FieldByName('EXCESO').AsCurrency := 0 ;
        cds.Post;
     end ;

  end ;
  LimpiaCDS ;
end;

function TFReprogCred.RecuperaFechaSys: TDateTime;
begin
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest('SELECT SYSDATE FECHA FROM DUAL');
   dm1.cdsQry.Open;
   result := dm1.cdsQry.FieldByName('FECHA').AsDateTime ;
end;

procedure TFReprogCred.spAClick(Sender: TObject);
begin
  if dm1.cdsSolicitud.RecordCount = 0 then
  begin
     ShowMessage('No Existen Créditos por Visualizar');
     Exit ;
  end ;
  if dm1.cdsSolicitud.FieldByName('A').AsString = 'N' then
  begin
     ShowMessage('No Existen Inconsistencia de este Tipo por Visualizar');
     Exit;
  end ;
  try
    FValidaRefi1 := TFValidaRefi1.Create(nil);
    FValidaRefi1.MuestraA(dm1.cdsSolicitud.FieldByName('CREDID').AsString,
                         cdsDatosAdicionales.FieldByName('ASOID').ASString);
  finally
    FValidaRefi1.Free;
  end;

end;

procedure TFReprogCred.spBClick(Sender: TObject);
begin
  if dm1.cdsSolicitud.RecordCount = 0 then
  begin
     ShowMessage('No Existen Créditos por Visualizar');
     Exit ;
  end ;
  if dm1.cdsSolicitud.FieldByName('B').AsString = 'N' then
  begin
     ShowMessage('No Existen Inconsistencia de este Tipo por Visualizar');
     Exit;
  end ;
  try
    FValidaRefi1 := TFValidaRefi1.Create(nil);
    FValidaRefi1.Muestrab(dm1.cdsSolicitud.FieldByName('CREDID').AsString,
                         cdsDatosAdicionales.FieldByName('ASOID').ASString);
  finally
    FValidaRefi1.Free;
  end;


end;

procedure TFReprogCred.spCClick(Sender: TObject);
begin
  if dm1.cdsSolicitud.RecordCount = 0 then
  begin
     ShowMessage('No Existen Créditos por Visualizar');
     Exit ;
  end ;

  if dm1.cdsSolicitud.FieldByName('C').AsString = 'N' then
  begin
     ShowMessage('No Existen Inconsistencia de este Tipo por Visualizar');
     Exit;
  end ;
  try
    FValidaRefi1 := TFValidaRefi1.Create(nil);
    FValidaRefi1.Muestrac(dm1.cdsSolicitud.FieldByName('CREDID').AsString,
                         cdsDatosAdicionales.FieldByName('ASOID').ASString);
  finally
    FValidaRefi1.Free;
  end;


end;

procedure TFReprogCred.spDClick(Sender: TObject);
begin
  if dm1.cdsSolicitud.RecordCount = 0 then
  begin
     ShowMessage('No Existen Créditos por Visualizar');
     Exit ;
  end ;
  if dm1.cdsSolicitud.FieldByName('D').AsString = 'N' then
  begin
     ShowMessage('No Existen Inconsistencia de este Tipo por Visualizar');
     Exit;
  end ;
  try
    FValidaRefi1 := TFValidaRefi1.Create(nil);
    FValidaRefi1.Muestrad(dm1.cdsSolicitud.FieldByName('CREDID').AsString,
                         cdsDatosAdicionales.FieldByName('ASOID').ASString);
  finally
    FValidaRefi1.Free;
  end;


end;

procedure TFReprogCred.spEClick(Sender: TObject);
begin

  if dm1.cdsSolicitud.RecordCount = 0 then
  begin
     ShowMessage('No Existen Créditos por Visualizar');
     Exit ;
  end ;

  if dm1.cdsSolicitud.FieldByName('E').AsString = 'N' then
  begin
     ShowMessage('No Existen Inconsistencia de este Tipo por Visualizar');
     Exit;
  end ;
  ValidaSaldos(dm1.cdsSolicitud,True);

end;

procedure TFReprogCred.z2bbtnCronoClick(Sender: TObject);
begin

  if not CreditoSeleccionado then
     Raise exception.Create('No ha Seleccionado ningún Crédito a Procesar');

   ValidaCronograma ;

   FSimulaCronograma := TFSimulaCronograma.Create(nil);
   try
     FSimulaCronograma.SimulaSaldo(strtocurr(dbeSaldo.text) ,strtocurr(dbeTasaInteres.Text),
                                   strtocurr(dbeTasaFlat.Text),strtoint(dbeNumCuotas.Text),rgMesInicio.ItemIndex);
     FSimulaCronograma.ShowModal
   finally
     FSimulaCronograma.Free;
   end;

end;

function TFReprogCred.RecuperaSaldosExcesos(sCREDID, sASOID : String;iTipo : Integer;
  var currSaldo, currExcesos: Currency): boolean;
var
  cdsCRE302 , cdsCRE310 : TwwClientDataset ;
  iFilas , i : Integer ;
  sSQL : String ;
  currAmort , currInteres,currFlat,
  currExceso,currAplic,currDev : Currency ;
  currSaldoCred , currExcesoCred : Currency ;
  currCobradoCRE310 : Currency ;
  currDif : Currency ;
  bCancelado : boolean ;
  dateFechaBase : TDateTime;
  dateFechaSYS  : TDateTime;
  sAno , sMes : String ;
  sAnoProc , sMesProc : String ;
  procedure InicializaMontos ;
  begin
    currAmort    := 0 ;    currInteres  := 0 ;    currFlat     := 0 ;
    currExceso   := 0 ;    currAplic    := 0 ;    currDev      := 0 ;
    bCancelado   := False ;
  end ;
  procedure VerificaCancelacionAdelantada;
  begin
    if (currAmort+currInteres+currFlat+currExceso)>=
        (cdsCRE302.FieldByName('CREAMORT').AsCurrency
       + cdsCRE302.FieldByName('CREFLAT').AsCurrency) then
       bCancelado := True
    else
       bcancelado := False ;
  end ;
  procedure VerificaCancelacion;
  begin
    if (currAmort+currInteres+currFlat+currExceso)>=
        (cdsCRE302.FieldByName('CREAMORT').AsCurrency
       + cdsCRE302.FieldByName('CREFLAT').AsCurrency
       + cdsCRE302.FieldByName('CREINTERES').AsCurrency) then
       bCancelado := True
    else
       bcancelado := False ;
  end ;
  procedure LimpiaCDS ;
  begin
    cdsCRE302.Close;
    cdsCRE310.Close;
  end ;
begin

  cdsCRE302 := TwwClientDataset.Create(nil);
  cdsCRE302.RemoteServer := dm1.DCOM1 ;
  cdsCRE302.ProviderName := dm1.cdsQry.ProviderName ;
  cdsCRE310 := TwwClientDataset.Create(nil);
  cdsCRE310.RemoteServer := dm1.DCOM1 ;
  cdsCRE310.ProviderName := dm1.cdsQry.ProviderName ;

  //Recuperación de Información
  cdsCRE302.DataRequest('SELECT * FROM CRE302 WHERE ASOID ='
         + QuotedStr(sASOID)
         + ' AND CREDID = ' + QuotedStr(sCREDID)
         + ' ORDER BY CRECUOTA') ;
  cdsCRE302.Open ;
  iFilas := cdsCRE302.RecordCount ;
  currSaldoCred  := 0 ;
  currExcesoCred := 0 ;
  dateFechaSYS := RecuperaFechaSys ;
  sAnoProc := dm1.strzero(inttostr(yearof(dateFechaSYS)),4);
  sMesProc := dm1.strzero(inttostr(MonthOf(dateFechaSYS)),2);
  for i := 1 to iFilas do
  begin
    cdsCRE302.RecNo := i ;
    cdsCRE310.Close;
    sSQL :=
     ' SELECT * '
   +  ' FROM CRE310 '
   +  ' WHERE CREDID = ' + QuotedStr(cdsCRE302.FieldBYName('CREDID').AsString)
   +   ' AND ASOID = ' + QuotedStr(cdsCRE302.FieldBYName('ASOID').AsString)
   +   ' AND CRECUOTA = ' + cdsCRE302.FieldBYName('CRECUOTA').AsString
   +   ' AND NOT FORPAGID IN (''06'',''10'') '
   +   ' ORDER BY FREG , CREFPAG ' ;

    cdsCRE310.DataRequest(sSQL);
    cdsCRE310.Open ;
    if cdsCRE310.RecordCount = 0 then
    begin
        if sAnoProc + sMesProc <
           cdsCRE302.FieldByName('CREANO').AsString+cdsCRE302.FieldByName('CREMES').AsString then
        begin
           case iTipo of
             //Refinanciamiento
             0:  currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').AsCurrency
                    + cdsCRE302.FieldByName('CREFLAT').AsCurrency ;
             //Ampliación/Reducción
             1:  currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').AsCurrency ;
             //Recalendarización
             2:  currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').AsCurrency
                    + cdsCRE302.FieldByName('CREINTERES').AsCurrency
                    + cdsCRE302.FieldByName('CREFLAT').AsCurrency ;
           end;
        end
        else
        begin

           currSaldoCred := currSaldoCred
                + cdsCRE302.FieldByName('CREAMORT').AsCurrency
                + cdsCRE302.FieldByName('CREINTERES').AsCurrency
                + cdsCRE302.FieldByName('CREFLAT').AsCurrency;
        end;
    end
    else
    begin
      InicializaMontos;
      while not cdsCRE310.Eof do
      begin
        bCancelado := False ;
        currCobradoCRE310 := cdsCRE310.FieldByName('CREMTOCOB').AsCurrency ;
        if cdsCRE310.FieldByName('CREFPAG').IsNull then
           dateFechaBase := cdsCRE310.FieldByName('FREG').AsDateTime
        else
           dateFechaBase := cdsCRE310.FieldByName('CREFPAG').AsDateTime ;

        sAno := dm1.strzero(inttostr(yearof(datefechaBase)),4);
        sMes := dm1.strzero(inttostr(MonthOf(datefechaBase)),2);
        //Distribuye Monto Cobrado
        if (sAno+sMes)<(cdsCRE302.FieldByName('CREANO').AsString+cdsCRE302.FieldByName('CREMES').AsString) then
        begin
          if not bcancelado then
          begin
             //FLAT
             if currFlat < cdsCRE302.FieldByName('CREFLAT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat)
                   >= currCobradoCRE310 then
                begin
                   currFlat := currFlat + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat ) ;
                   currFlat := currFlat + currDif ;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacionAdelantada ;
                cdscre310.Next;
                continue;
             end ;
             //AMORTIZACION
             if currAmort < cdsCRE302.FieldByName('CREAMORT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort)
                   >= currCobradoCRE310 then
                begin
                   currAmort := currAmort + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif   := cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort ;
                   currAmort := currAmort +currDif;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacionAdelantada ;
                cdsCRE310.Next;
                continue;
             end
             else
             begin
               //Aqui va el Exceso
               currExceso := currexceso + currCobradoCRE310 ;
               //Aplicado
               currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency ;
               //Devuelto
               currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;
               VerificaCancelacionAdelantada ;
             end;
          end
          else
          begin

             //Aqui va el Exceso
             currExceso := currexceso + currCobradoCRE310 ;
             //Aplicado
             currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency;
             //Devuelto
             currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;

          end ;
        end
        else
        //AQUI VA CUANDO SON COBRANZAS DEL MES EN CURSO
        begin
////////////////////////
          if not bcancelado then
          begin
             //FLAT
             if currFlat < cdsCRE302.FieldByName('CREFLAT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat)
                   >= currCobradoCRE310 then
                begin
                   currFlat := currFlat + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat ) ;
                   currFlat := currFlat +currDif;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacion ;
                cdsCRE310.Next ;
                continue;
             end ;
             //INTERES
             if currInteres < cdsCRE302.FieldByName('CREINTERES').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREINTERES').AsCurrency - currInteres)
                   >= currCobradoCRE310 then
                begin
                   currInteres := currInteres + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREINTERES').AsCurrency - currInteres ) ;
                   currInteres := currInteres + currDif ;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacion ;
                cdsCRE310.Next;
                continue;
             end ;
             //AMORTIZACION
             if currAmort < cdsCRE302.FieldByName('CREAMORT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort)
                   >= currCobradoCRE310 then
                begin
                   currAmort := currAmort + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort ) ;
                   currAmort := currAmort +currDif;
                   currCobradoCRE310 := currCobradoCRE310 - currDif;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacion ;
                cdsCRE310.Next;
                continue;
             end
             else
             begin
               //Aqui va el Exceso
               currExceso := currexceso + currCobradoCRE310 ;
               //Aplicado
               currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency;
               //Devuelto
               currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;
               //
               VerificaCancelacion ;
             end;
          end
          else
          begin

             //Aqui va el Exceso
             currExceso := currexceso + currCobradoCRE310 ;
             //Aplicado
             currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency;
             //Devuelto
             currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;

          end ;
////////////////////////
        end ;
        cdsCRE310.Next ;
        //Fin de Análisis
      end ; //Fin del While
//
      //Verificar Estado y saldos
      if not bCancelado then
      begin
        if sAnoProc + sMesProc <
           cdsCRE302.FieldByName('CREANO').AsString+cdsCRE302.FieldByName('CREMES').AsString then
           currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').ASCurrency
                    + cdsCRE302.FieldByName('CREFLAT').ASCurrency
                    - (currAmort+currFlat)
        else
           currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').ASCurrency
                    + cdsCRE302.FieldByName('CREFLAT').ASCurrency
                    + cdsCRE302.FieldByName('CREINTERES').ASCurrency
                    - (currAmort+currInteres+currFlat);
      end;
      currExcesoCred := currExcesoCred + currExceso ;
//
    end ;
  end ;
  LimpiaCDS ;
  currSaldo  := currSaldoCred  ;
  currExcesos := currExcesoCred ;

end;

function TFReprogCred.GeneraCorrelativo(sTipoDoc : String;bPrevio:Boolean=False) :String;
var
  xCorre , xCorreCampo : String ;
  xPaso : Boolean;
  xCorreWherex,xCorreWherey :String ;
  xCorreWhere : String ;
  xCeros : Integer ;
  xTabla : String ;
  xCorreCadena ,xArea : String;
  xAnoReg : Word ;
  xTipocorre , wTipCre,xCorreCred: String;

  procedure CorreCred(pCorre : String);
  var
   xCadena,xSql : String;
  begin
   //** dependiendo del pCorre, lleno xCadena para el Sql
   If pCorre = 'CREDID' then
     xCadena := 'substr(CREDID,9,7)'
   else
     xCadena := pCorre;

     xSql := 'select '+xCadena+' +1 NUMCRED from CRE206 '+
             'where '+ xCorreWhere +
             xCorreCampo+' IN (select x.'+xCorreCampo+' from CRE206 x, CRE206 y '+
            ' where '+ xCorreWherex + xCorreWherey +')';
     Dm1.cdsQry.Close;
     Dm1.cdsQry.DataRequest(xSql);
     Dm1.cdsQry.Open;
     //** asigno el nuevo correlativo
     if dm1.cdsQry.RecordCount = 0 then
      xCorre := dm1.StrZero(IntToStr(1),xCeros)
     else
      xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger),xCeros);
  end;

  Procedure BuscaCorre;
  var
   xSql : String;
  begin
    //** por defecto
    xPaso := True;
    //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
    //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
    //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
    //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
    xSql := 'SELECT count(NUMERO) TOTAL FROM '+xTabla+' WHERE NUMERO='+quotedstr(xCorre);
    Dm1.cdsQry.Close;
    Dm1.cdsQry.DataRequest(xSql);
    Dm1.cdsQry.Open;
    //** False = para que siga repitiendo la busqueda
    If Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 then
      xPaso := False
    else
     //** sino graba en la tabla auxiliar (cre201)
      begin
       xSql := 'INSERT INTO '+xTabla+' (NUMERO) VALUES (';
       If xCorreCampo = 'CREDID' then
        xSql := xSql + quotedstr(xCorreCadena+xCorre)+')'
       else
        xSql := xSql + quotedstr(xCorre)+')';
       try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       except
         ShowMessage('Error en 1');
       end;

       If StrtoInt(xCorre) = 1 then
        begin
         If xCorreCampo = 'CREDID' then
          xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,CORREANO,TIPO) VALUES ('+quotedstr(xCorreCadena+xCorre)+
                  ','+quotedstr(xArea)+','+quotedstr(FloatToStr(xAnoReg))+','+quotedstr(xTipocorre)+')'
         else
          xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,CORREANO,TIPO) VALUES ('+quotedstr(xCorre)+
                  ','+quotedstr(xArea)+','+quotedstr(FloatToStr(xAnoReg))+','+quotedstr(xTipocorre)+')';
        end
       else
        begin
         If xCorreCampo = 'CREDID' then
          xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorreCadena+xCorre)+
                  ' WHERE CREAREA ='+quotedstr(xArea)+' AND CORREANO='+quotedstr(FloatToStr(xAnoReg))+
                  ' AND SUBSTR(CREDID,1,2)='+quotedstr(copy(xCorreCadena,1,2))+
                  ' AND SUBSTR(CREDID,3,4)='+quotedstr(copy(xCorreCadena,3,4))+
                  ' AND SUBSTR(CREDID,7,2)='+quotedstr(copy(xCorreCadena,7,2))+
                  ' AND TIPO ='+quotedstr(xTipocorre)
         else
          xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorre)+
                  ' WHERE CREAREA ='+quotedstr(xArea)+' AND CORREANO='+quotedstr(FloatToStr(xAnoReg))+
                  ' AND TIPO ='+quotedstr(xTipocorre);
        end;
       try
        if not bPrevio then
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       except
         ShowMessage('Error en 2');
       end;
      end;
  end;

  Procedure Correlativo;
  begin
    //** cuando es primera vez, se pasa el nombre del campo del cual se sacara el correlativo
    xCorre := xCorreCampo;
    Repeat
      //** si esto se repitiera más de una vez, xCorre será igual al correlativo que se
      //** encontro más 1
      CorreCred(xcorre);
      //** verifica en la tabla auxiliar que el correlativo no este tomado por otro usuario
      BuscaCorre;
      //** esta busqueda se repitirá hasta que se encuentra un correlativo que no haya
      //** sido tomado
    until xPaso = True;
  end;
  procedure LimpiaTabla ;
  var
    sSQL : String ;
  begin
//
    if (xTabla <> 'CRE215') and (xTabla <> 'CRE216') then
       Exit;
    sSql := 'DELETE FROM '+xTabla+' ';
    try
     DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
    except
     ShowMessage('Error en 1');
    end;
//
  end ;

begin
      //Recupera Datos del Credito Original
      cdsVariable.Close ;
      cdsVariable.DataRequest('SELECT * FROM CRE301 WHERE CREDID ='+QuotedStr(DM1.cdsSolicitud.FieldByName('CREDID').AsString)
                               + ' AND ASOID ='+QuotedStr(cdsDatosAdicionales.FieldByName('ASOID').AsString) );
      cdsVariable.Open  ;

      wTipCre := cdsVariable.FieldByName('TIPCREID').AsString ;
      xAnoReg := yearof(RecuperaFechaSys);
      if sTipoDoc = 'CREDID' then
        xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''002''','MODULOID')
      else
        xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''003''','MODULOID') ;
//
      if sTipoDoc = 'RNRONABO' then  //REFINANCIACION
      begin
        xTipocorre   := 'X';
        if not bPrevio then
          xTabla       := 'CRE217'
        else
          xTabla       := 'CRE216';
        xCeros       := 5;
        xCorreCampo  := 'NRONABO';
        xCorreCadena := 'R'+dm1.StrZero(inttostr(xAnoReg),4) ;
        xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' AND CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                        ' TIPO ='+quotedstr(xTipocorre)+' and ';
        xCorreWherex := ' x.CREAREA = '+quotedstr(xArea)+' AND x.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                       ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
        xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' AND y.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                        ' y.TIPO ='+quotedstr(xTipocorre);
      end;
      if sTipoDoc = 'ANRONABO' then //AMPLIACION/REDUCCION
      begin
        xTipocorre   := 'Y';
        if not bPrevio then
          xTabla       := 'CRE218'
        else
          xTabla       := 'CRE216';
        xCeros       := 5;
        xCorreCampo  := 'NRONABO';
        xCorreCadena := 'A'+dm1.StrZero(inttostr(xAnoReg),4) ;
        xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' AND CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                        ' TIPO ='+quotedstr(xTipocorre)+' and ';
        xCorreWherex := ' x.CREAREA = '+quotedstr(xArea)+' AND x.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                       ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
        xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' AND y.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                        ' y.TIPO ='+quotedstr(xTipocorre);
      end;
      if sTipoDoc = 'CNRONABO' then //RECALENDARIZACIÓN
      begin
        xTipocorre   := 'Z';
        if not bPrevio then
          xTabla       := 'CRE219'
        else
          xTabla       := 'CRE216';
        xCeros       := 5;
        xCorreCampo  := 'NRONABO';
        xCorreCadena := 'C'+dm1.StrZero(inttostr(xAnoReg),4) ;
        xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' AND CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                        ' TIPO ='+quotedstr(xTipocorre)+' and ';
        xCorreWherex := ' x.CREAREA = '+quotedstr(xArea)+' AND x.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                       ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
        xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' AND y.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+' and '+
                        ' y.TIPO ='+quotedstr(xTipocorre);
      end;

      if sTipoDoc = 'CREDID' then
      begin
//
        xTipocorre   := '1';
        if not bPrevio then
          xTabla       := 'CRE201'
        else
          xTabla       := 'CRE215';
        xCeros       := 7;
        xCorreCampo  := 'CREDID';
//wmc 20031029        xCorreCadena := DM1.cdsOfDes.FieldByName('OFDESID').AsString+FloatToStr(xAnoReg)+copy(wTipCre,1,2);
        xCorreCadena := '01'+FloatToStr(xAnoReg)+copy(wTipCre,1,2);
//
        xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' AND CORREANO = '+quotedstr(FloatToStr(xAnoReg))+
                        ' and substr(credid,1,2) = '+quotedstr('01')+
                        ' and substr(credid,3,4) = '+quotedstr(FloatToStr(xAnoReg))+
                        ' and substr(credid,7,2) = '+quotedstr(copy(wTipCre,1,2))+' and '+
                        ' TIPO ='+quotedstr(xTipocorre)+' and ';
        xCorreWherex :=  ' x.CREAREA = '+quotedstr(xArea)+' AND x.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+
                        ' and substr(x.credid,1,2) = '+quotedstr('01')+
                        ' and substr(x.credid,3,4) = '+quotedstr(FloatToStr(xAnoReg))+
                        ' and substr(x.credid,7,2) = '+quotedstr(copy(wTipCre,1,2))+' and '+
                        ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
        xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' AND y.CORREANO = '+quotedstr(FloatToStr(xAnoReg))+
                        ' and substr(y.credid,1,2) = '+quotedstr('01')+
                        ' and substr(y.credid,3,4) = '+quotedstr(FloatToStr(xAnoReg))+
                        ' and substr(y.credid,7,2) = '+quotedstr(copy(wTipCre,1,2))+' and '+
                        ' y.TIPO ='+quotedstr(xTipocorre);

      end;

      if bPrevio then
         LimpiaTabla ;

//WMC 20031029      xTabla := 'CRE201';
//WMC 20031029      xCeros := 7;
//WMC 20031029      xCorreCampo := 'CREDID';
//WMC 20031029      xCorreCadena := DM1.cdsOfDes.FieldByName('OFDESID').AsString+FloatToStr(xAnoReg)+copy(wTipCre,1,2);
      Correlativo;
//WMC 20031029      xCorreCred := xCorreCadena+xcorre;
      Result := xCorreCadena + xcorre;
//
end;

procedure TFReprogCred.FormCreate(Sender: TObject);
var
   xSQL : String ;
begin
   cdsVariable.RemoteServer := dm1.DCOM1 ;
   cdsVariable.ProviderName := dm1.cdsQry.ProviderName ;
   //** CARGO LA FECHA DEL SISTEMA
   xSQL := 'Select '+wRepFecServi+' FECHA From TGE901 '; //Where DUME = '+QuotedStr('PER');
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xFecha := copy(DM1.cdsQry.FieldByName('FECHA').AsString, 1, 10);
   xSysDate := StrToDate(xFecha);
   
end;

function TFReprogCred.GeneraSaldosNAbono(sCREDID, sASOID: String;
  iTipo: Integer): TwwClientDataset;
var
  cdsCRE302 , cdsCRE310 : TwwClientDataset ;
  iFilas , i : Integer ;
  sSQL : String ;
  currAmort , currInteres,currFlat,
  currExceso,currAplic,currDev : Currency ;
  currSaldoCred , currExcesoCred : Currency ;
  currCobradoCRE310 : Currency ;
  currDif : Currency ;
  bCancelado : boolean ;
  dateFechaBase : TDateTime;
  dateFechaSYS  : TDateTime;
  sAno , sMes : String ;
  sAnoProc , sMesProc : String ;
  procedure InicializaMontos ;
  begin
    currAmort    := 0 ;    currInteres  := 0 ;    currFlat     := 0 ;
    currExceso   := 0 ;    currAplic    := 0 ;    currDev      := 0 ;
    bCancelado   := False ;
  end ;
  procedure VerificaCancelacionAdelantada;
  begin
    if (currAmort+currInteres+currFlat+currExceso)>=
        (cdsCRE302.FieldByName('CREAMORT').AsCurrency
       + cdsCRE302.FieldByName('CREFLAT').AsCurrency) then
       bCancelado := True
    else
       bcancelado := False ;
  end ;
  procedure VerificaCancelacion;
  begin
    if (currAmort+currInteres+currFlat+currExceso)>=
        (cdsCRE302.FieldByName('CREAMORT').AsCurrency
       + cdsCRE302.FieldByName('CREFLAT').AsCurrency
       + cdsCRE302.FieldByName('CREINTERES').AsCurrency) then
       bCancelado := True
    else
       bcancelado := False ;
  end ;
  procedure LimpiaCDS ;
  begin
//    cdsCRE302.Close;
    cdsCRE310.Close;
  end ;
begin

  cdsCRE302 := TwwClientDataset.Create(nil);
  cdsCRE302.RemoteServer := dm1.DCOM1 ;
  cdsCRE302.ProviderName := dm1.cdsQry.ProviderName ;
  cdsCRE310 := TwwClientDataset.Create(nil);
  cdsCRE310.RemoteServer := dm1.DCOM1 ;
  cdsCRE310.ProviderName := dm1.cdsQry.ProviderName ;

  //Recuperación de Información
  cdsCRE302.DataRequest(
    'SELECT CRE302.*,0.00 NA_SALDO, 0.00 NA_EXCESO, 0.00 NA_AMORT, 0.00 NA_INTERES, 0.00 NA_FLAT, ''N'' NA_FLAG FROM CRE302 WHERE ASOID ='
         + QuotedStr(sASOID)
         + ' AND CREDID = ' + QuotedStr(sCREDID)
         + ' ORDER BY CRECUOTA'
         ) ;
  cdsCRE302.Open ;
  iFilas := cdsCRE302.RecordCount ;
  currSaldoCred  := 0 ;
  currExcesoCred := 0 ;
  dateFechaSYS := RecuperaFechaSys ;
  sAnoProc := dm1.strzero(inttostr(yearof(dateFechaSYS)),4);
  sMesProc := dm1.strzero(inttostr(MonthOf(dateFechaSYS)),2);
  for i := 1 to iFilas do
  begin
    cdsCRE302.RecNo := i ;
    cdsCRE310.Close;
    sSQL :=
     ' SELECT * '
   +  ' FROM CRE310 '
   +  ' WHERE CREDID = ' + QuotedStr(cdsCRE302.FieldBYName('CREDID').AsString)
   +   ' AND ASOID = ' + QuotedStr(cdsCRE302.FieldBYName('ASOID').AsString)
   +   ' AND CRECUOTA = ' + cdsCRE302.FieldBYName('CRECUOTA').AsString
   +   ' AND NOT FORPAGID IN (''06'',''10'') '
   +   ' ORDER BY FREG , CREFPAG ' ;

    cdsCRE310.DataRequest(sSQL);
    cdsCRE310.Open ;
    if cdsCRE310.RecordCount = 0 then
    begin
        if sAnoProc + sMesProc <
           cdsCRE302.FieldByName('CREANO').AsString+cdsCRE302.FieldByName('CREMES').AsString then
        begin
           cdsCRE302.Edit ;
           case iTipo of
             //Refinanciamiento
             0:begin  currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').AsCurrency
                    + cdsCRE302.FieldByName('CREFLAT').AsCurrency ;
                 cdscre302.FieldBYName('NA_SALDO').AsCurrency :=  cdsCRE302.FieldByName('CREAMORT').AsCurrency
                                 + cdsCRE302.FieldByName('CREFLAT').AsCurrency ;
               end;
             //Ampliación/Reducción
             1:begin  currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').AsCurrency ;
                 cdscre302.FieldBYName('NA_SALDO').AsCurrency :=  cdsCRE302.FieldByName('CREAMORT').AsCurrency ;
               end;
             //Recalendarización
             2:begin  currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').AsCurrency
                    + cdsCRE302.FieldByName('CREINTERES').AsCurrency
                    + cdsCRE302.FieldByName('CREFLAT').AsCurrency ;
                 cdscre302.FieldBYName('NA_SALDO').AsCurrency :=  cdsCRE302.FieldByName('CREAMORT').AsCurrency
                    + cdsCRE302.FieldByName('CREINTERES').AsCurrency
                    + cdsCRE302.FieldByName('CREFLAT').AsCurrency ;

               end;
           end;
           cdscre302.FieldBYName('NA_FLAG').AsString   := 'S';
           cdscre302.Post ;

        end
        else
        begin

           currSaldoCred := currSaldoCred
                + cdsCRE302.FieldByName('CREAMORT').AsCurrency
                + cdsCRE302.FieldByName('CREINTERES').AsCurrency
                + cdsCRE302.FieldByName('CREFLAT').AsCurrency;
           cdsCRE302.Edit ;
           cdsCRE302.FieldByName('NA_SALDO').AsCurrency := cdsCRE302.FieldByName('CREAMORT').AsCurrency
                + cdsCRE302.FieldByName('CREINTERES').AsCurrency
                + cdsCRE302.FieldByName('CREFLAT').AsCurrency;
           cdscre302.FieldBYName('NA_FLAG').AsString   := 'S';
           cdscre302.Post ;

        end;

    end
    else
    begin
      InicializaMontos;
      while not cdsCRE310.Eof do
      begin
        bCancelado := False ;
        currCobradoCRE310 := cdsCRE310.FieldByName('CREMTOCOB').AsCurrency ;
        if cdsCRE310.FieldByName('CREFPAG').IsNull then
           dateFechaBase := cdsCRE310.FieldByName('FREG').AsDateTime
        else
           dateFechaBase := cdsCRE310.FieldByName('CREFPAG').AsDateTime ;

        sAno := dm1.strzero(inttostr(yearof(datefechaBase)),4);
        sMes := dm1.strzero(inttostr(MonthOf(datefechaBase)),2);
        //Distribuye Monto Cobrado
        if (sAno+sMes)<(cdsCRE302.FieldByName('CREANO').AsString+cdsCRE302.FieldByName('CREMES').AsString) then
        begin
          if not bcancelado then
          begin
             //FLAT
             if currFlat < cdsCRE302.FieldByName('CREFLAT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat)
                   >= currCobradoCRE310 then
                begin
                   currFlat := currFlat + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat ) ;
                   currFlat := currFlat + currDif ;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacionAdelantada ;
                cdscre310.Next;
                continue;
             end ;
             //AMORTIZACION
             if currAmort < cdsCRE302.FieldByName('CREAMORT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort)
                   >= currCobradoCRE310 then
                begin
                   currAmort := currAmort + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif   := cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort ;
                   currAmort := currAmort +currDif;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacionAdelantada ;
                cdsCRE310.Next;
                continue;
             end
             else
             begin
               //Aqui va el Exceso
               currExceso := currexceso + currCobradoCRE310 ;
               //Aplicado
               currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency ;
               //Devuelto
               currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;
               VerificaCancelacionAdelantada ;
             end;
          end
          else
          begin
             //Aqui va el Exceso
             currExceso := currexceso + currCobradoCRE310 ;
             //Aplicado
             currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency;
             //Devuelto
             currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;
             //ojo
             //VerificaCancelacionAdelantada;
             //
          end ;
        end
        else
        //AQUI VA CUANDO SON COBRANZAS DEL MES EN CURSO
        begin
////////////////////////
          if not bcancelado then
          begin
             //FLAT
             if currFlat < cdsCRE302.FieldByName('CREFLAT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat)
                   >= currCobradoCRE310 then
                begin
                   currFlat := currFlat + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREFLAT').AsCurrency - currFlat ) ;
                   currFlat := currFlat +currDif;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacion ;
                cdsCRE310.Next ;
                continue;
             end ;
             //INTERES
             if currInteres < cdsCRE302.FieldByName('CREINTERES').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREINTERES').AsCurrency - currInteres)
                   >= currCobradoCRE310 then
                begin
                   currInteres := currInteres + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREINTERES').AsCurrency - currInteres ) ;
                   currInteres := currInteres + currDif ;
                   currCobradoCRE310 := currCobradoCRE310 - currDif ;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacion ;
                cdsCRE310.Next;
                continue;
             end ;
             //AMORTIZACION
             if currAmort < cdsCRE302.FieldByName('CREAMORT').AsCurrency then
             begin
                if (cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort)
                   >= currCobradoCRE310 then
                begin
                   currAmort := currAmort + currCobradoCRE310 ;
                   currCobradoCRE310 := 0 ;
                end
                else
                begin
                   currDif := ( cdsCRE302.FieldByName('CREAMORT').AsCurrency - currAmort ) ;
                   currAmort := currAmort +currDif;
                   currCobradoCRE310 := currCobradoCRE310 - currDif;
                end ;
             end ;
             if currCobradoCRE310 = 0 then
             begin
                VerificaCancelacion ;
                cdsCRE310.Next;
                continue;
             end
             else
             begin
               //Aqui va el Exceso
               currExceso := currexceso + currCobradoCRE310 ;
               //Aplicado
               currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency;
               //Devuelto
               currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;
               //ojo
               VerificaCancelacion ;
               //
             end;
          end
          else
          begin

             //Aqui va el Exceso
             currExceso := currexceso + currCobradoCRE310 ;
             //Aplicado
             currAplic  := currAplic + cdscre310.fieldbyName('CREAPLEXC').AsCurrency;
             //Devuelto
             currDev    := currdev + cdscre310.fieldbyName('CREMTODEV').AsCurrency ;

          end ;
////////////////////////
        end ;
        cdsCRE310.Next ;
        //Fin de Análisis
      end ; //Fin del While
//
      //Verificar Estado y saldos
      if not bCancelado then
      begin
        if sAnoProc + sMesProc <
           cdsCRE302.FieldByName('CREANO').AsString+cdsCRE302.FieldByName('CREMES').AsString then
        begin
           currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').ASCurrency
                    + cdsCRE302.FieldByName('CREFLAT').ASCurrency
                    - (currAmort+currFlat);
    //
          cdsCRE302.Edit ;
          cdsCRE302.FieldByName('NA_SALDO').AsCurrency   := + cdsCRE302.FieldByName('CREAMORT').ASCurrency
                                                            + cdsCRE302.FieldByName('CREFLAT').ASCurrency
                                                            - (currAmort+currFlat);
          cdsCRE302.FieldByName('NA_AMORT').AsCurrency   := currAmort ;
          cdsCRE302.FieldByName('NA_FLAT').AsCurrency    := currFlat ;
          cdsCRE302.FieldByName('NA_FLAG').AsString    := 'S' ;
          cdscre302.Post ;
    //
        end
        else
        begin
           currSaldoCred := currSaldoCred
                    + cdsCRE302.FieldByName('CREAMORT').ASCurrency
                    + cdsCRE302.FieldByName('CREFLAT').ASCurrency
                    + cdsCRE302.FieldByName('CREINTERES').ASCurrency
                    - (currAmort+currInteres+currFlat);
    //
          cdsCRE302.Edit ;
          cdsCRE302.FieldByName('NA_SALDO').AsCurrency   := cdsCRE302.FieldByName('CREAMORT').ASCurrency
                    + cdsCRE302.FieldByName('CREFLAT').ASCurrency
                    + cdsCRE302.FieldByName('CREINTERES').ASCurrency
                    - (currAmort+currInteres+currFlat);

          cdsCRE302.FieldByName('NA_AMORT').AsCurrency   := currAmort ;
          cdsCRE302.FieldByName('NA_INTERES').AsCurrency := currInteres ;
          cdsCRE302.FieldByName('NA_FLAT').AsCurrency    := currFlat ;
          cdsCRE302.FieldByName('NA_FLAG').AsString      := 'S' ;
          cdscre302.Post ;
    //
        end;
      end
      else
      begin
    //
          cdsCRE302.Edit ;
          cdsCRE302.FieldByName('NA_EXCESO').AsCurrency  := currExceso ;
          cdsCRE302.FieldByName('NA_AMORT').AsCurrency   := currAmort ;
          cdsCRE302.FieldByName('NA_INTERES').AsCurrency := currInteres ;
          cdsCRE302.FieldByName('NA_FLAT').AsCurrency    := currFlat ;
          cdscre302.Post ;
    //
      end;
      currExcesoCred := currExcesoCred + currExceso ;
//
    end ;
  end ;
  LimpiaCDS ;
  RESULT := cdscre302 ;
end;

procedure TFReprogCred.z2bbtnPreliminarClick(Sender: TObject);
var
   currSaldo,currExcesos : Currency ;
   CDS , cdsCreditoProc : TwwClientDataSet ;
   sCredito,sNroNabo : String ;
   sTipoDes , sFORPAGOID , sFORPAGOABR : String ;
   sPrefijoNABO : String ;
   sAREA : String ;
   sCreditoOri : String ;
begin

  if not CreditoSeleccionado then
     Raise exception.Create('No ha Seleccionado ningún Crédito a Procesar');

  ValidaCronograma ;

  cdsCreditoProc := TwwClientDataset.Create(nil);
  cdsCreditoProc.CloneCursor(DM1.cdsSolicitud,True);
  cdsCreditoProc.Filter   := 'INDICADOR=''S''' ;
  cdsCreditoProc.Filtered := True ;
  sCreditoOri  := cdsCreditoProc.fieldByName('CREDID').AsString ;
  cdsCreditoProc . Free ;
  if rgModalidad.ItemIndex = 0 then
     sFORPAGOID := '18'
  else
     sFORPAGOID := '01' ;

  sFORPAGOABR := DM1.DisplayDescrip('prvSQL','COB101','FORPAGOABR','FORPAGOID='+quotedstr(sFORPAGOID),'FORPAGOABR');
  sTipoDes    := DM1.DisplayDescrip('prvSQL','CRE104','TIPDESEABR','TIPDESEID='+quotedstr('10'),'TIPDESEABR');
//
  CDS := GeneraSaldosNAbono(sCreditoOri,
                         cdsDatosAdicionales.FieldByName('ASOID').AsString,
                         dblcTipoOperacion.itemindex);
  currSaldo := dm1.OperClientDataSet(cds,'SUM(NA_SALDO)','NA_FLAG=''S''') ;
  currExcesos := dm1.OperClientDataSet(cds,'SUM(NA_EXCESO)','');
  if trim(dbeCREDIDNEW.Text) = '' then
  begin
    case dblcTipoOperacion.ItemIndex of
     0: sPrefijoNABO := 'R';
     1: sPrefijoNABO := 'A';
     2: sPrefijoNABO := 'C';
     end ;
    sNroNabo   := GeneraCorrelativo(sPrefijoNABO + 'NRONABO',True);
    sCredito   := GeneraCorrelativo('CREDID',True) ;
  end
  else
  begin
    sNroNabo   := dbeNRONABO.Text;
    sCredito   := dbeCREDIDNEW.Text ;
  end ;
  sAREA := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''003''','MODULOID');
  FSimulaCronograma := TFSimulaCronograma.Create(nil);
  FSimulaCronograma.ReprocesaCronograma(
        date,currSaldo,strtoint(dbenumcuotas.Text),sCredito,sNroNabo,rgMesInicio.ItemIndex,
        strtocurr(dbeTasaInteres.Text),strtocurr(dbeTasaFlat.Text),
        sCreditoOri,cdsDatosAdicionales.FieldByName('ASOID').AsString,
        sFORPAGOID,sFORPAGOABR,sAREA,'10',sTipoDes,CDS);
  FSimulaCronograma.Free;

  FPreliminarRefinanciado := TFPreliminarRefinanciado.Create(nil);
  try
    FPreliminarRefinanciado.MuestraPrevio(cdsDatosAdicionales.FieldByName('ASOID').AsString,
                                          sCredito,sCreditoOri) ;
  finally
    FPreliminarRefinanciado.Free ;
  end ;
end;

procedure TFReprogCred.spVerCobranzasClick(Sender: TObject);
begin
  ValidaSaldos(dm1.cdsSolicitud,True,True);
end;

procedure TFReprogCred.spSeleccioneCreditoClick(Sender: TObject);
var
     cdsClone : TwwClientDataset ;
begin
     if (dm1.cdsSolicitud.FieldByName('A').AsString = 'S') or
        (dm1.cdsSolicitud.FieldByName('B').AsString = 'S') or
        (dm1.cdsSolicitud.FieldByName('C').AsString = 'S') or
        (dm1.cdsSolicitud.FieldByName('D').AsString = 'S') or
        (dm1.cdsSolicitud.FieldByName('E').AsString = 'S') or
        (dm1.cdsSolicitud.FieldByName('F').AsString = 'S') or
        (dm1.cdsSolicitud.FieldByName('G').AsString = 'S') then
        Raise Exception.Create('No puede Seleccionar este Crédito pues '+#13 +'Tiene Inconsistencias no resueltas');
     if (dm1.cdsSolicitud.FieldByName('NUMBLOQPROC').AsString = 'S') then
        Raise Exception.Create('No puede Seleccionar este Crédito pues '+#13
                              +'Tiene Cuotas en Proceso de Cobranza'
                              +#13+'o Cuotas Bloqueadas');
     if (dm1.cdsSolicitud.FieldByName('APTOREFI').AsString = 'N') then
        Raise Exception.Create('No puede Seleccionar este Crédito pues '
                                +#13 +'No califica para la Operación de ' + dblcTipoOperacion.Text) ;
     if (dm1.cdsSolicitud.FieldByName('PROCESADO').AsString = 'S') then
        Raise Exception.Create('No puede Seleccionar este Crédito pues '
                                +#13 +'ya ha sido procesado por Usted ' ) ;

     LimpiaDatosCredito ;
     //Recuperar datos del Credito Activo
     if cdsDatosAdicionales.FieldByName('ASOTIPID').AsString = 'DO' then
     begin
       dbeTasaInteres.Text  := '1.85' ;
       dbeTasaFlat.Text     := '4.36' ;
     end;
     if cdsDatosAdicionales.FieldByName('ASOTIPID').AsString = 'CE' then
     begin
       dbeTasaInteres.Text  := '1.85' ;
       dbeTasaFlat.Text     := '7.16' ;
     end;

     dbeFecha.Text      := datetimetostr(xSysDate) ;
     dbeSaldo.Text      := floattostrf(dm1.cdsSolicitud.FieldByName('SALDO').ASCurrency,fffixed,15,2) ;
//     dbeNumCuotas.Text  := ;
//     dbeMtoCuota.Text   := ;
//     dbeCREDIDNEW.Text  ;
     rgMesInicio.ItemIndex := 0 ;
     if dm1.cdsSolicitud.FieldByName('FORPAGOID').AsString = '18' then
       rgModalidad.ItemIndex := 0 ;
     if dm1.cdsSolicitud.FieldByName('FORPAGOID').AsString = '01' then
       rgModalidad.ItemIndex := 1 ;

     cdsClone := TwwClientDataSet.Create(nil);
     cdsClone.CloneCursor(dm1.cdsSolicitud,True);
     cdsClone.Filter := 'INDICADOR = ''S''';
     cdsClone.Filtered := True ;
     if cdsClone.RecordCount > 0 then
     begin
       cdsClone.Edit ;
       cdsClone.FieldByName('INDICADOR').AsString := 'N' ;
       cdsClone.Post ;
     end ;
     cdsClone.Free ;
     
     with DM1.cdsSolicitud do
     begin
       Edit ;
       FieldByName('INDICADOR').AsString := 'S' ;
       Post ;
     end ;
end;

procedure TFReprogCred.AnalizaTipoOperacion;
var
  cds ,cdsClone : TwwClientDataset ;
  i,iNumFilas   : Integer  ;
  fContador     : Currency ;
  sCondicion    : String   ;
  sAno,sMes     : String   ;
  currSaldo , currExceso : Currency;
begin
  //verificar si existe crédito seleccionado
  if not DM1.cdsSolicitud.Active then
     Exit ;
  if not (DM1.cdsSolicitud.RecordCount > 0) then
     Exit ;

  sAno := dm1.strZero(IntToStr(YearOf(xSysDate)),4);
  sMes := dm1.strZero(IntToStr(MOnthOf(xSysDate)),2);
  cdsClone := TwwClientDataSet.Create(nil);
  cdsClone.CloneCursor(dm1.cdsSolicitud,True);
  cdsClone.First ;
  iNumFilas := cdsClone.RecordCount ;
  for i := 1 to iNumFilas do
  begin
     cdsClone.RecNo := i ;
     if (cdsClone.FieldByName('NUMBLOQPROC').AsString = 'S') or
        (cdsClone.FieldByName('A').AsString = 'S') or
        (cdsClone.FieldByName('B').AsString = 'S') or
        (cdsClone.FieldByName('C').AsString = 'S') or
        (cdsClone.FieldByName('D').AsString = 'S') or
        (cdsClone.FieldByName('E').AsString = 'S') then
        continue ;
     cds := GeneraSaldosNAbono(cdsClone.FieldByName('CREDID').AsString,
                               cdsDatosAdicionales.FieldByName('ASOID').AsString,iTipo);
     cdsClone.Edit;
     cdsClone.FieldByName('APTOREFI').AsString := 'S';
     cdsClone.Post ;

     case itipo of
      0:begin
         sCondicion := 'NA_FLAG=''S'' AND ((CREANO='+QuotedStr(sAno)
                      + ' AND CREMES > '+QuotedStr(sMes) + ' ) OR (CREANO > ' + QuotedStr(sAno) +'))' ;
         fContador := dm1.operclientdataset(cds,'COUNT(*)',sCondicion);
         cdsClone.Edit;
         if fContador = 0 then
            cdsClone.FieldByName('APTOREFI').AsString := 'S'
         else
            cdsClone.FieldByName('APTOREFI').AsString := 'N';
         cdsClone.Post ;
        end ;
      1:begin end ;
      2:begin end ;
     end;
     if cdsClone.FieldByName('APTOREFI').AsString = 'S' then
     begin
       currSaldo   := roundto(dm1.OperClientDataSet(cds,'SUM(NA_SALDO)','NA_FLAG=''S'''),-2);
       currExceso := roundto(dm1.OperClientDataSet(cds,'SUM(NA_EXCESO)',''),-2);
       cdsClone.Edit;
       cdsClone.FieldByName('SALDO').AsCurrency  := currSaldo ;
       cdsClone.FieldByName('EXCESO').AsCurrency := currExceso ;
       cdsClone.Post ;
       if cdsClone.FieldByName('INDICADOR').AsString = 'S' then
       begin
          if strtocurr(dbesaldo.Text)<> currSaldo then
          begin
            dbeSaldo.Text := floattostrf(currSaldo,fffixed,15,2);
            if trim(dbeNumCuotas.Text)<>'' then
            begin
              strTmp := '' ;
              dbeNumCuotas.OnExit(dbeNumCuotas);
            end ;
          end ;
       end ;
     end
     else
     begin
       cdsClone.Edit;
       cdsClone.FieldByName('SALDO').AsCurrency  := 0 ;
       cdsClone.FieldByName('EXCESO').AsCurrency := 0 ;
       cdsClone.Post ;
       if cdsClone.FieldByName('INDICADOR').AsString = 'S' then
       begin
          LimpiaDatosCredito;
          cdsClone.Edit;
          cdsClone.FieldByName('INDICADOR').AsString  := 'N' ;
          cdsClone.Post ;
       end ;
     end ;
     cds.Free ;
  end ;
end;

procedure TFReprogCred.LimpiaDatosCredito;
begin
   dbeTasaInteres.Clear ;
   dbeTasaFlat.Clear ;
   dbeFecha.Clear ;
   dbeSaldo.Clear ;
   dbeNumCuotas.Clear ;
   dbeMtoCuota.Clear ;
   dbeCREDIDNEW.Clear ;
   dbeNRONABO.Clear ;
   rgMesInicio.ItemIndex := -1 ;
   rgModalidad.ItemIndex := -1 ;
   gbDatosOperacion.Enabled := True ;
end;

procedure TFReprogCred.dblcTipoOperacionChange(Sender: TObject);
begin
try
    Screen.Cursor := crHourGlass ;
    AnalizaTipoOperacion(dblcTipoOperacion.ItemIndex) ;
finally
    Screen.Cursor := crDefault ;
end ;
end;

procedure TFReprogCred.spRefrescarClick(Sender: TObject);
begin
   try
    Screen.Cursor := crHourGlass ;
    CargaBusqueda ;
   finally
    Screen.Cursor := crDefault ;
   end ;
end;

procedure TFReprogCred.dbeNumCuotasKeyPress(Sender: TObject;
  var Key: Char);
var
   sCadBuscar : String ;
   i : integer  ;
   j : integer  ;
begin
   if key = #8 then
      Exit ;
   if not(key in ['0'..'9','.']) then
   begin
      key := #0;
      Exit ;
   end ;
   if (key ='.') and (TCustomEdit(Sender).Tag=1) then
   begin
      key := #0;
      Exit ;
   end ;

   //verificar que solo se ingrese a lo sumo un punto
   sCadBuscar := TCustomEdit(Sender).Text ;
   i   := AnsiPos('.', sCadBuscar) ;
   if key = '.' then
        if AnsiPos('.', sCadBuscar) > 0 then
           key := #0 ;

   //verificar que no se ingresen mas de dos decimales
   if i <> 0 then
   begin
     j := TCustomEdit(Sender).SelStart ;
     if ( j - i >= 2 ) and ( key <> #8 ) then
        key := #0
     else
     begin
        if (j >= i) and ( key <> #8 ) then
           if (Length(sCadBuscar) - i) >= 2 then
           begin
               TCustomEdit(Sender).Text := copy(sCadBuscar,1,Length(sCadBuscar) - 1) ;
               TCustomEdit(Sender).SelStart := j ;
           end ;
     end ;
   end ;
end;

procedure TFReprogCred.dbeNumCuotasExit(Sender: TObject);
var
   frm : TFSimulaCronograma ;
begin
   if strTmp = dbeNumCuotas.Text then
      exit ;
   if dbeNumCuotas.Text = '' then
      dbeMtoCuota.Clear
   else
   begin
     if StrToInt(dbeNumCuotas.Text) = 0 then
        dbeMtoCuota.Clear
     else
     begin
       if dbeSaldo.Text <> '' then
       begin
         if StrToFloat(dbeSaldo.Text)<> 0 then
         begin
            frm := TFSimulaCronograma.Create(nil);
            dbeMtoCuota.Text := floattostrf(frm.CalculaCuota(strtocurr(dbeSaldo.Text),
                                                             strToCurr(dbeTasaInteres.text),
                                                             strToCurr(dbetasaFlat.text),
                                                             strToInt(dbeNumCuotas.text)),fffixed,15,2);
            frm.Free ;
         end
         else
         begin
            dbeMtoCuota.Clear ;
         end ;
       end
       else
         dbeMtoCuota.Clear ;
     end ;
   end ;
end;

procedure TFReprogCred.dbeNumCuotasEnter(Sender: TObject);
begin
  strTmp := trim(dbeNumCuotas.Text) ;
end;

function TFReprogCred.CreditoSeleccionado: boolean;
var
  cds : TwwClientDataset ;
begin
  cds := TwwClientDataSet.Create(nil);
  cds.CloneCursor(dm1.cdsSolicitud,True);
  cds.Filter := 'INDICADOR=''S''' ;
  cds.Filtered := True ;
  result := (cds.RecordCount>0);
  cds.Free;
end;

procedure TFReprogCred.ValidaCronograma;
begin
   if dbesaldo.Text = '' then
   begin
     Raise exception.Create('No se puede Visualizar el previo del Cronograma'+#13+
                     'Debido a que el Saldo escogido se encuentra en Blanco');
   end
   else
   begin
      if strtocurr(dbesaldo.Text) = 0 then
      begin
         Raise exception.Create('No se puede Visualizar el previo del Cronograma'+#13+
                         'Debido a que el Saldo escogido es 0.00');
      end ;
   end ;
   if dbeTasaInteres.Text = '' then
   begin
     Raise exception.Create('No se puede Visualizar el previo del Cronograma'+#13+
                     'Debido a que el Interes escogido se encuentra en Blanco');
   end
   else
   begin
      if strtocurr(dbeTasaInteres.Text) = 0 then
      begin
         Raise exception.Create('No se puede Visualizar el previo del Cronograma'+#13+
                         'Debido a que el Interes escogido es 0.00');
      end ;
   end ;
   if dbeTasaFlat.Text = '' then
   begin
     Raise exception.Create('No se puede Visualizar el previo del Cronograma'+#13+
                     'Debido a que el Flat escogido se encuentra en Blanco');
   end
   else
   begin
      if strtocurr(dbeTasaFlat.Text) = 0 then
      begin
         Raise exception.Create('No se puede Visualizar el previo del Cronograma'+#13+
                         'Debido a que el Flat escogido es 0.00');
      end ;
   end ;
   if dbeNumCuotas.Text = '' then
   begin
     Raise exception.Create('No se puede Visualizar el previo del Cronograma'+#13+
                     'Debido a que el Número de Cuotas escogido se encuentra en Blanco');
   end
   else
   begin
      if strtocurr(dbeNumCuotas.Text) = 0 then
      begin
         Raise exception.Create('No se puede Visualizar el previo del Cronograma'+#13+
                         'Debido a que el Número de Cuotas escogido es 0.00');
      end ;
   end ;
end;

procedure TFReprogCred.ValidaEmisionCredito;
begin

   if (cdsDatosAdicionales.FieldByName('ASOTIPID').AsString <> 'DO')
   and (cdsDatosAdicionales.FieldByName('ASOTIPID').AsString <> 'CE') then
     Raise Exception.Create('El tipo de Asociado NO permite la Ejecución de esta Operación');

   if cdsDatosAdicionales.FieldByName('ASOTIPID').AsString = 'CE' then
   begin
      if cdsDatosAdicionales.FieldByName('REGPENID').AsString <> '01' then
        Raise exception.Create('El Régimen Pensionario de este Profesor Cesante'+#13+
                               'No permite la Ejecución de la Operación') ;
   end ;
   if rgModalidad.ItemIndex = 0 then
   begin
     if (trim(cdsDatosAdicionales.FieldByName('ASONCTA').AsString) = '') or
        (cdsDatosAdicionales.FieldByName('ASONCTA').IsNull) then
        Raise exception.Create('Falta Asignar Cuenta a este Asociado')
     else
     begin
       if cdsDatosAdicionales.FieldByName('SITCTA').AsString<>'A' then
        Raise exception.Create('La Cuenta de este Asociado se encuentra Desactivada') ;
     end ;
   end ;

end;

procedure TFReprogCred.fcShapeBtn1Click(Sender: TObject);
begin
  FBloqueoCuotas := TFBloqueoCuotas.Create(Self);
  FBloqueoCuotas.Showmodal;
  FBloqueoCuotas.Free;
end;

procedure TFReprogCred.fcShapeBtn2Click(Sender: TObject);
begin
  FDesmarque := TFDesmarque.create(self);
  FDesmarque.Showmodal;
  FDesmarque.free;
end;

procedure TFReprogCred.HabilitaBotones(bIndicador: Boolean);
begin
   GroupBox7.Enabled        := bIndicador ;
   GroupBox3.Enabled        := bIndicador ;
   gbDatosOperacion.Enabled := bIndicador ;
   z2bbtnPreliminar.Enabled := bIndicador ;
   z2bbtnCrono.Enabled      := bIndicador ;

   spSeleccioneCredito.Enabled      := bIndicador ;
   spRefrescar        .Enabled      := bIndicador ;
   spVerCobranzas     .Enabled      := bIndicador ;
   spA                .Enabled      := bIndicador ;
   spB                .Enabled      := bIndicador ;
   spC                .Enabled      := bIndicador ;
   spD                .Enabled      := bIndicador ;
   spE                .Enabled      := bIndicador ;
end;

end.
