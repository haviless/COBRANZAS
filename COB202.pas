unit COB202;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdbdatetimepicker, Buttons, Wwdbigrd, Grids, Wwdbgrid, db,
  ComCtrls, wwriched, ExtCtrls, DBCtrls, fcButton, fcImgBtn, fcShapeBtn,
  Mask, wwdbedit, wwdblook, Wwdbspin, Wwdotdot, Wwdbdlg, ppBands, ppCtrls,
  jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,  ppReport,
  Wwdbcomb;

type
  TFRepresentante = class(TForm)
    pnlCabecera: TPanel;
    pnlCod: TPanel;
    pnlCab: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    dblcFormaRepr: TwwDBLookupCombo;
    edtFormaRepr: TEdit;
    dbeApePat: TwwDBEdit;
    dbeApeMat: TwwDBEdit;
    dbeNombres: TwwDBEdit;
    Label1: TLabel;
    dbeApeNom: TwwDBEdit;
    dblcBanco: TwwDBLookupCombo;
    edtBanco: TEdit;
    dbeCuenta: TwwDBEdit;
    dblcSitCuenta: TwwDBLookupCombo;
    edtSitCuenta: TEdit;
    dblcTipDocID: TwwDBLookupCombo;
    edtTipDocID: TEdit;
    dbeNumDoc: TwwDBEdit;
    dbeRUC: TwwDBEdit;
    dbeLibMil: TwwDBEdit;
    dbecodigo: TwwDBEdit;
    dbepago: TwwDBEdit;
    dbrgpago: TDBRadioGroup;
    pnlUPro: TPanel;
    lblLugNac: TLabel;
    StaticText1: TStaticText;
    Z2bbtnCancelaru: TfcShapeBtn;
    Z2bbtnAceptaru: TfcShapeBtn;
    dblcUPro: TwwDBLookupComboDlg;
    dbdtpfecini: TwwDBDateTimePicker;
    dbdtpfecfin: TwwDBDateTimePicker;
    edtUPro: TEdit;
    pnlPersonal: TPanel;
    StaticText6: TStaticText;
    Panel13: TPanel;
    Label2: TLabel;
    Z2bbtnAceptarp: TfcShapeBtn;
    Z2bbtnCancelarp: TfcShapeBtn;
    dblcreprdocid: TwwDBLookupCombo;
    dbereprnodoc: TwwDBEdit;
    dbereprtel: TwwDBEdit;
    dblcdreprid: TwwDBLookupComboDlg;
    dbereprnom: TwwDBEdit;
    edtreprdocid: TEdit;
    dbereprane: TwwDBEdit;
    pnlAgTransporte: TPanel;
    StaticText2: TStaticText;
    Panel7: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Z2bbtnAceptara: TfcShapeBtn;
    Z2bbtnCancelara: TfcShapeBtn;
    dbeagtrtel: TwwDBEdit;
    dbeagtrnom: TwwDBEdit;
    dbeagtrdir: TwwDBEdit;
    dbeagtrcon: TwwDBEdit;
    dbeagtrane: TwwDBEdit;
    dblcdagtrid: TwwDBLookupComboDlg;
    pcDatos: TPageControl;
    tbDatosGenerales: TTabSheet;
    Panel4: TPanel;
    dbeDireccion: TwwDBEdit;
    dbeTelefono: TwwDBEdit;
    dblcDpto: TwwDBLookupCombo;
    dblcProvincia: TwwDBLookupCombo;
    dblcZip: TwwDBLookupCombo;
    dbeemail: TwwDBEdit;
    dbeFax: TwwDBEdit;
    dbeSegSoc: TwwDBEdit;
    edtDepto: TEdit;
    edtProv: TEdit;
    edtZip: TEdit;
    dblcEstCiv: TwwDBLookupCombo;
    edtEstCiv: TEdit;
    dbdtpFFin: TwwDBDateTimePicker;
    dbdtpFNac: TwwDBDateTimePicker;
    dbrgSexo: TDBRadioGroup;
    dbdtpFIni: TwwDBDateTimePicker;
    dbeanexo: TwwDBEdit;
    dblcunidesc: TwwDBLookupCombo;
    edtunidesc: TEdit;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    dbgUPro: TwwDBGrid;
    wwIButton3: TwwIButton;
    tbDatosLaborales: TTabSheet;
    Panel3: TPanel;
    dbgAgTransporte: TwwDBGrid;
    wwIButton1: TwwIButton;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    dbgPersonal: TwwDBGrid;
    wwIButton2: TwwIButton;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    edtccosto: TEdit;
    dblcdccosto: TwwDBLookupComboDlg;
    lblEstado: TLabel;
    lblFRet: TLabel;
    lblFIni: TLabel;
    dbcbActivo: TwwDBComboBox;
    procedure FormActivate(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure wwIButton1Click(Sender: TObject);
    procedure wwIButton2Click(Sender: TObject);
    procedure Z2bbtnCancelarpClick(Sender: TObject);
    procedure bbtnSigueClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcFormaReprExit(Sender: TObject);
    procedure dblcBancoExit(Sender: TObject);
    procedure dblcSitCuentaExit(Sender: TObject);
    procedure dblcTipDocIDExit(Sender: TObject);
    procedure dblcEstCivExit(Sender: TObject);
    procedure dblcDptoExit(Sender: TObject);
    procedure dblcProvinciaExit(Sender: TObject);
    procedure dblcZipExit(Sender: TObject);
    procedure dblcUProExit(Sender: TObject);
    procedure dbeApePatExit(Sender: TObject);
    procedure dbeApeMatExit(Sender: TObject);
    procedure dbeNombresExit(Sender: TObject);
    procedure wwIButton3Click(Sender: TObject);
    procedure dbgUProDblClick(Sender: TObject);
    procedure Z2bbtnAceptaruClick(Sender: TObject);
    procedure Z2bbtnCancelaruClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumDocExit(Sender: TObject);
    procedure dbepagoExit(Sender: TObject);
    procedure dbeCuentaExit(Sender: TObject);
    procedure dbeLibMilExit(Sender: TObject);
    procedure dbeRUCExit(Sender: TObject);
    procedure dbgUProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbdtpfecfinExit(Sender: TObject);
    procedure dbgAgTransporteDblClick(Sender: TObject);
    procedure dblcdagtridExit(Sender: TObject);
    procedure Z2bbtnAceptaraClick(Sender: TObject);
    procedure dbgAgTransporteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdrepridExit(Sender: TObject);
    procedure Z2bbtnAceptarpClick(Sender: TObject);
    procedure dbgPersonalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPersonalDblClick(Sender: TObject);
    procedure dbdtpFNacExit(Sender: TObject);
    procedure dbrgSexoExit(Sender: TObject);
    procedure dbrgpagoExit(Sender: TObject);
    procedure dbeSegSocExit(Sender: TObject);
    procedure dbeTelefonoExit(Sender: TObject);
    procedure dbeanexoExit(Sender: TObject);
    procedure dbeFaxExit(Sender: TObject);
    procedure dbeDireccionExit(Sender: TObject);
    procedure dbeemailExit(Sender: TObject);
    procedure dbdtpFIniExit(Sender: TObject);
    procedure dbdtpFFinExit(Sender: TObject);
    procedure dbdtpfeciniExit(Sender: TObject);
    procedure dblcunidescExit(Sender: TObject);
    procedure Z2bbtnCancelaraClick(Sender: TObject);
    procedure dblcdccostoExit(Sender: TObject);
  private
    { Private declarations }
    procedure LlenarDatosRepUProc;
    procedure LlenarDatosRepTransporte;
    procedure LlenarDatosRepPersonal;
    procedure LlenarDatosRecaudador;
  public
    { Public declarations }
    wModoUPro : String;
  end;

var
  FRepresentante : TFRepresentante;
  xCrea : boolean;
  sWhere : String;
  
implementation

uses COBDM1;
{$R *.DFM}

procedure TFRepresentante.FormActivate(Sender: TObject);
var
   xSQL : string;
begin
   DM1.cdsTUse.close;
   DM1.cdsRepresentante1.close;
   DM1.cdsRTransporte.close;
   DM1.cdsRRepresentante.close;

   xSQL:='SELECT REPRID, REPRAPENOM, TIPDOCCOD, REPRDOCNUM, REPRTELF, REPRANEX FROM COB201';
   DM1.cdsEjecuta.Close;
   DM1.cdsEjecuta.indexfieldnames:='REPRID';
   DM1.cdsEjecuta.datarequest(xSQL);
   DM1.cdsEjecuta.open;

   // Llena cds forma de representación
   dblcFormaRepr.selected.clear;
   dblcFormaRepr.selected.add('FORREPRID'#9'10'#9'Id');
   dblcFormaRepr.selected.add('FORREPRDES'#9'40'#9'Descripción');

   // Llena cds Banco
   dblcBanco.selected.clear;
   dblcBanco.selected.add('BANCOID'#9'2'#9'Id');
   dblcBanco.selected.add('BANCONOM'#9'40'#9'Descripción');

   // Llena cds Situación de Cuenta
   dblcSitCuenta.selected.clear;
   dblcSitCuenta.selected.add('SITCTAID'#9'2'#9'Id');
   dblcSitCuenta.selected.add('SITCTADES'#9'30'#9'Descripción');

   // Llena cds Tipo de Documento
   dblcTipDocID.selected.clear;
   dblcTipDocID.selected.add('TIPDOCCOD'#9'2'#9'Id');
   dblcTipDocID.selected.add('TIPDOCDES'#9'35'#9'Descripción');

   // Llena cds Estado Civil
   dblcEstCiv.selected.clear;
   dblcEstCiv.selected.add('ESTCIVID'#9'2'#9'Id');
   dblcEstCiv.selected.add('ESTCIVDES'#9'35'#9'Descripción');

   // Llena cds Departamento
   dblcDpto.selected.clear;
   dblcDpto.selected.add('DPTOID'#9'2'#9'Id');
   dblcDpto.selected.add('DPTODES'#9'30'#9'Descripción');

   // Llena cds Provincia
   dblcProvincia.selected.clear;
   dblcProvincia.selected.add('CIUDID'#9'4'#9'Id');
   dblcProvincia.selected.add('CIUDDES'#9'30'#9'Descripción');

   // Llena cds Distrito
   dblcZip.selected.clear;
   dblcZip.selected.add('ZIPID'#9'6'#9'Id');
   dblcZip.selected.add('ZIPDES'#9'35'#9'Descripción');

   // Llena cds Oficina Desconcentrada
   dblcunidesc.selected.clear;
   dblcunidesc.selected.add('OFDESID'#9'3'#9'Id');
   dblcunidesc.selected.add('OFDESNOM'#9'40'#9'Descripción');

   // Llena cds Oficina Desconcentrada
   dblcdccosto.selected.clear;
   dblcdccosto.selected.add('CCOSID'#9'15'#9'Id');
   dblcdccosto.selected.add('CCOSDES'#9'40'#9'Descripción');

   // Llena cds Transporte
   dblcdagtrid.selected.clear;
   dblcdagtrid.selected.add('AGTRID'#9'5'#9'Id');
   dblcdagtrid.selected.add('AGTRDES'#9'80'#9'Descripción');

   // Llena cds Personal
   dblcdreprid.selected.clear;
   dblcdreprid.selected.add('REPRID'#9'5'#9'Id');
   dblcdreprid.selected.add('REPRAPENOM'#9'80'#9'Descripción');
   dblcdreprid.lookuptable:=DM1.cdsEjecuta;

   edtFormaRepr.text:='';
   edtbanco.text:='';
   edtsitcuenta.text:='';
   edttipdocid.text:='';
   edtestciv.text:='';
   edtdepto.text:='';
   edtprov.text:='';
   edtzip.text:='';

   if dm1.wModo='M' then
   begin
      DM1.cdsRepresentante.edit;

      pnlCod.Enabled          :=False;
      pnlCab.Enabled          :=True;
      pcDatos.Enabled         :=True;
      pcDatos.ActivePageIndex :=0;

      z2bbtnaceptar.Enabled :=True;
      z2bbtncancel.Enabled  :=True;

      LlenarDatosRecaudador;

      dbeapepat.setfocus;
   end;

   if dm1.wModo='A' then
   begin
      DM1.cdsRepresentante.Insert;

      pnlCod.Enabled          :=False;
      pnlCab.Enabled          :=True;
      pcDatos.Enabled         :=True;
      pcDatos.ActivePageIndex :=0;

      z2bbtnaceptar.Enabled :=True;
      z2bbtncancel.Enabled  :=True;

      xSQL := 'SELECT MAX(CAST(REPRID AS INTEGER)) NUEVOREP FROM COB201';
      DM1.FiltraCds(DM1.cdsQry, xSQL);
      if DM1.cdsQry.FieldByName('NUEVOREP').AsString <> '' then
         DM1.cdsRepresentante.FieldByName('REPRID').AsString :=
            DM1.StrZero( IntToStr(StrToInt(DM1.cdsQry.FieldByName('NUEVOREP').AsString)+1), DM1.cdsRepresentante.FieldByName('REPRID').Size)
      else
         DM1.cdsRepresentante.FieldByName('REPRID').AsString :=
            DM1.StrZero('1', DM1.cdsRepresentante.FieldByName('REPRID').Size);
      DM1.cdsRepresentante.FieldByName('REPRFLGACT').AsString := 'A';
      dbeapepat.SetFocus;
   end;

   // Unidades de Proceso por Representante
   xSQL:='SELECT * FROM COB203'
       +' WHERE REPRID='+quotedstr(dbecodigo.text);
   DM1.cdsTUse.Close;
   DM1.cdsTUse.Fields.clear;
   DM1.cdsTUse.indexfieldnames:='UPROID';
   DM1.cdsTUse.datarequest(xSQL);
   DM1.cdsTUse.open;

   dbgUPro.Selected.Clear;
   dbgUPro.Selected.Add('UPROID'#9'3'#9'Id');
   dbgUPro.Selected.Add('lkUProc'#9'75'#9'Descripción');
   dbgUPro.Selected.Add('FECHAINI'#9'10'#9'Fecha~Inicio');
   dbgUPro.Selected.Add('FECHAFIN'#9'10'#9'Fecha~Fin');
   dbgUPro.datasource:=DM1.dsTUSE;

   // Agencia de Transporte por Representante
   xSQL:='SELECT * FROM COB206'
       +' WHERE REPRID='+quotedstr(dbecodigo.text);
   DM1.cdsRTransporte.Close;
   DM1.cdsRTransporte.Fields.clear;
   DM1.cdsRTransporte.indexfieldnames:='AGTRID';
   DM1.cdsRTransporte.datarequest(xSQL);
   DM1.cdsRTransporte.open;

   dbgAgTransporte.Selected.Clear;
   dbgAgTransporte.Selected.Add('AGTRID'#9'5'#9'Id');
   dbgAgTransporte.Selected.Add('lkAgTr'#9'80'#9'Descripción');
   dbgAgTransporte.datasource:=DM1.dsRTransporte;

   // Personal por Representante
   xSql:='SELECT * FROM COB205'
       +' WHERE REPRID='+quotedstr(dbecodigo.text);
   DM1.cdsRRepresentante.Close;
   DM1.cdsRRepresentante.Fields.clear;
   DM1.cdsRRepresentante.indexfieldnames:='REPRIDP';
   DM1.cdsRRepresentante.datarequest(xSQL);
   DM1.cdsRRepresentante.open;

   dbgPersonal.Selected.Clear;
   dbgPersonal.Selected.Add('REPRIDP'#9'5'#9'Id');
   dbgPersonal.Selected.Add('lkRepre'#9'90'#9'Nombre');
   dbgPersonal.datasource:=DM1.dsRRepresentante;
end;

procedure TFRepresentante.Z2bbtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TFRepresentante.wwIButton1Click(Sender: TObject);
var
   xwhere : string;
begin
   xWhere:='REPRID='+quotedstr(dbecodigo.text);
   if (length(DM1.DisplayDescrip('prvSQL','COB201','REPRID',xWhere,'REPRID'))=0) then
   begin
      ShowMessage('El Recaudador aún no esta registrado');
      exit;
   end;

   pnlAgTransporte.visible :=True;
   pnlCabecera.Enabled     :=False;

   dblcdagtrid.Enabled:=True;
   dbeagtrnom.enabled:=false;
   dbeagtrdir.enabled:=false;
   dbeagtrcon.enabled:=false;
   dbeagtrtel.enabled:=false;
   dbeagtrane.enabled:=false;

   z2bbtnCancelara.Enabled   :=True;
   z2bbtnAceptara.Enabled    :=True;

   dbeagtrnom.text:='';
   dbeagtrdir.text:='';
   dbeagtrcon.text:='';
   dbeagtrtel.text:='';
   dbeagtrane.text:='';

   DM1.cdsRTransporte.Insert;
   DM1.cdsRTransporte.FieldByName('REPRID').AsString := DM1.cdsRepresentante.FieldByName('REPRID').AsString;

   dblcdagtrid.SetFocus;
end;

procedure TFRepresentante.wwIButton2Click(Sender: TObject);
var
   xwhere : string;
begin
   xWhere:='REPRID='+quotedstr(dbecodigo.text);
   if (length(DM1.DisplayDescrip('prvSQL','COB201','REPRID',xWhere,'REPRID'))=0) then
   begin
      ShowMessage('El Recaudador aún no esta registrado');
      exit;
   end;

   pnlPersonal.visible  :=True;
   pnlCabecera.Enabled  :=False;

   dblcdreprid.Enabled:=True;
   dbereprnom.enabled:=false;
   dblcreprdocid.enabled:=false;
   dbereprnodoc.enabled:=false;
   dbereprtel.enabled:=false;
   dbereprane.enabled:=false;

   z2bbtnCancelarp.Enabled   :=True;
   z2bbtnAceptarp.Enabled    :=True;

   dbereprnom.text:='';
   dblcreprdocid.text:='';
   edtreprdocid.text:='';
   dbereprnodoc.text:='';
   dbereprtel.text:='';
   dbereprane.text:='';

   DM1.cdsRRepresentante.Insert;
   DM1.cdsRRepresentante.FieldByName('REPRID').AsString     := DM1.cdsRepresentante.FieldByName('REPRID').AsString;

   dblcdreprid.SetFocus;
end;

procedure TFRepresentante.Z2bbtnCancelarpClick(Sender: TObject);
begin
   dm1.cdsRRepresentante.Cancel;
   pnlPersonal.visible  :=False;
   pnlCabecera.Enabled :=True;
end;

procedure TFRepresentante.bbtnSigueClick(Sender: TObject);
begin
  //if dm1.cdsRepresentante.active then
  if (dm1.cdsRepresentante.ChangeCount > 0) or (dm1.cdsRepresentante.Modified) then
  begin
    if dm1.cdsRepresentante.State = dsBrowse then
      dm1.cdsRepresentante.Edit;
    cdsPost(dm1.cdsRepresentante);
    DM1.cdsRepresentante.Post;
    DM1.cdsRepresentante.Edit;
  end;
  pnlCab.Enabled:=False;
  pnlCod.Enabled:=False;
  pcDatos.Enabled:=True;
end;

procedure TFRepresentante.Z2bbtnAceptarClick(Sender: TObject);
begin
   DM1.cdsRepresentante.FieldByName('USUARIO').AsString:=dm1.wUsuario;
   DM1.cdsRepresentante.FieldByName('FREG').AsDateTime:=date;
   DM1.cdsRepresentante.FieldByName('HREG').AsDateTime:=date+SysUtils.Time;

   cdspost(DM1.cdsRepresentante);
   DM1.cdsRepresentante.Post;
   DM1.cdsRepresentante.ApplyUpdates(-1);

   DM1.cdsRepresentante.edit;
end;

procedure TFRepresentante.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dm1.cdsRepresentante.cancel;
   DM1.cdsRRepresentante.Cancel;
   DM1.cdsRRepresentante.Close;
   DM1.cdsRRepresentante.Fields.clear;
   DM1.cdsRTransporte.Cancel;
   DM1.cdsRTransporte.Close;
   DM1.cdsRTransporte.Fields.clear;
   DM1.cdsTUse.Cancel;
   DM1.cdsTUse.Close;
   DM1.cdsTUse.Fields.clear;
   DM1.cdsEjecuta.indexfieldnames:='';
   close;
{   DM1.cdsEjecuta.indexfieldnames:='';
   DM1.cdsEjecuta.filtered:=false;
   DM1.cdsEjecuta.filter:='';
   DM1.cdsEjecuta.close;
   DM1.cdsEjecuta.Fields.clear;
   dblcdreprid.lookuptable:=nil;}
end;

procedure TFRepresentante.dblcFormaReprExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dblcFormaRepr.parent.name) and
      (activecontrol.taborder<dblcFormaRepr.taborder) then
      exit;

   dbepago.visible:=false;

   DM1.cdsFRepr.setkey;
   DM1.cdsFRepr.fieldbyname('FORREPRID').AsString:=dblcFormaRepr.text;
   if not DM1.cdsFRepr.gotokey then
   begin
      showmessage('Forma de Representación no es válida');
      edtFormaRepr.text:='';
      dblcFormaRepr.setfocus;
      exit;
   end;
   edtFormaRepr.text:=DM1.cdsFRepr.fieldbyname('FORREPRDES').AsString;

   dbrgpago.setfocus;
end;

procedure TFRepresentante.dblcBancoExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (activecontrol.parent.name=dblcBanco.parent.name) and
      (activecontrol.taborder<dblcBanco.taborder) then
      exit;

   DM1.cdsBcos.setkey;
   DM1.cdsBcos.fieldbyname('BANCOID').AsString:=dblcBanco.text;
   if not DM1.cdsBcos.gotokey then
   begin
      showmessage('Banco no es válido');
      edtbanco.text:='';
      dblcBanco.setfocus;
      exit;
   end;
   edtbanco.text:=DM1.cdsBcos.fieldbyname('BANCONOM').AsString;
end;

procedure TFRepresentante.dblcSitCuentaExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (activecontrol.parent.name=dblcSitCuenta.parent.name) and
      (activecontrol.taborder<dblcSitCuenta.taborder) then
      exit;

   DM1.cdsSitCta.setkey;
   DM1.cdsSitCta.fieldbyname('SITCTAID').AsString:=dblcsitcuenta.text;
   if not DM1.cdsSitCta.gotokey then
   begin
      showmessage('Situación de cuenta no es válida');
      edtsitcuenta.text:='';
      dblcsitcuenta.setfocus;
      exit;
   end;
   edtsitcuenta.text:=DM1.cdsSitCta.fieldbyname('SITCTADES').AsString;
end;

procedure TFRepresentante.dblcTipDocIDExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (activecontrol.parent.name=dblcTipDocID.parent.name) and
      (activecontrol.taborder<dblcTipDocID.taborder) then
      exit;

   DM1.cdsTdoc.setkey;
   DM1.cdsTdoc.fieldbyname('TIPDOCCOD').AsString:=dblcTipDocID.Text;
   if not DM1.cdsTdoc.gotokey then
   begin
      showmessage('Situación de cuenta no es válida');
      edtTipDocID.text:='';
      dblcTipDocID.setfocus;
      exit;
   end;
   edtTipDocID.text:=DM1.cdsTdoc.fieldbyname('TIPDOCDES').AsString;
end;

procedure TFRepresentante.dblcEstCivExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   DM1.cdsEstCiv.setkey;
   DM1.cdsEstCiv.fieldbyname('ESTCIVID').AsString:=dblcEstCiv.Text;
   if not DM1.cdsEstCiv.gotokey then
   begin
      showmessage('Estado Civil no es válido');
      edtestciv.text:='';
      dblcEstCiv.setfocus;
      exit;
   end;
   edtestciv.text:=DM1.cdsEstCiv.fieldbyname('ESTCIVDES').AsString;
end;

procedure TFRepresentante.dblcDptoExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dblcDpto.parent.name) and
      (activecontrol.taborder<dblcDpto.taborder) then
      exit;

   DM1.cdsDpto.setkey;
   DM1.cdsDpto.fieldbyname('DPTOID').AsString:=dblcDpto.Text;
   if not DM1.cdsDpto.gotokey then
   begin
      showmessage('Departamento no es válido');
      edtDepto.text:='';
      dblcDpto.setfocus;
      exit;
   end;
   edtDepto.text:=DM1.cdsDpto.fieldbyname('DPTODES').AsString;

   DM1.cdsProvin.Filtered := False;
   DM1.cdsProvin.Filter   := 'DPTOID='+QuotedStr(dblcDpto.Text);
   DM1.cdsProvin.Filtered := True;
end;

procedure TFRepresentante.dblcProvinciaExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dblcProvincia.parent.name) and
      (activecontrol.taborder<dblcProvincia.taborder) then
      exit;

   DM1.cdsProvin.setkey;
   DM1.cdsProvin.fieldbyname('DPTOID').AsString:=dblcDpto.Text;
   DM1.cdsProvin.fieldbyname('CIUDID').AsString:=dblcProvincia.Text;
   if not DM1.cdsProvin.gotokey then
   begin
      showmessage('Provincia no es válida');
      edtProv.text:='';
      dblcProvincia.setfocus;
      exit;
   end;
   edtProv.text:=DM1.cdsProvin.fieldbyname('CIUDDES').AsString;

   DM1.cdsDist.Filtered := False;
   DM1.cdsDist.Filter   := 'DPTOID='+QuotedStr(dblcDpto.Text)
                          +' AND CIUDID='+QuotedStr(dblcProvincia.Text);
   DM1.cdsDist.Filtered := True;
end;

procedure TFRepresentante.dblcZipExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dblcZip.parent.name) and
      (activecontrol.taborder<dblcZip.taborder) then
      exit;

   DM1.cdsDist.setkey;
   DM1.cdsDist.fieldbyname('DPTOID').AsString:=dblcDpto.Text;
   DM1.cdsDist.fieldbyname('CIUDID').AsString:=dblcProvincia.Text;
   DM1.cdsDist.fieldbyname('ZIPID').AsString:=dblcZip.Text;
   if not DM1.cdsDist.gotokey then
   begin
      showmessage('Distrito no es válido');
      edtZip.text:='';
      dblcZip.setfocus;
      exit;
   end;
   edtZip.text:=DM1.cdsDist.fieldbyname('ZIPDES').AsString;
end;

procedure TFRepresentante.dblcUProExit(Sender: TObject);
var
   xwhere : string;
begin
   if Z2bbtnCancelaru.focused then exit;

   DM1.cdsUPro.setkey;
   DM1.cdsUPro.fieldbyname('UPROID').AsString:=dblcUPro.Text;
   if not DM1.cdsUPro.gotokey then
   begin
      ShowMessage('Unidad de Proceso no es válida');
      dblcUPro.SetFocus;
      exit;
   end;

{   DM1.cdsTUse.setkey;
   DM1.cdsTUse.fieldbyname('UPROID').AsString:=dblcUPro.Text;
   if DM1.cdsTUse.gotokey then
   begin
      ShowMessage('Unidad de Proceso ya existe');
      dblcUPro.SetFocus;
      exit;
   end;}

   xWhere:='REPRID='+quotedstr(dbecodigo.text)
          +' AND UPROID='+quotedstr(dblcUPro.Text);
   if (length(DM1.DisplayDescrip('prvSQL','COB203','UPROID',xWhere,'UPROID'))>0) then
   begin
      ShowMessage('Unidad de Proceso ya existe');
      dblcUPro.SetFocus;
      exit;
   end;
end;

procedure TFRepresentante.dbeApePatExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

  dbeApeNom.Text:=dbeApePat.Text+' '+dbeApeMat.Text+' '+dbeNombres.Text;
  DM1.cdsRepresentante.FieldByName('REPRAPENOM').AsString:= DM1.cdsRepresentante.FieldByName('REPRAPEPAT').AsString+' '+
                                                            DM1.cdsRepresentante.FieldByName('REPRAPEMAT').AsString+' '+
                                                            DM1.cdsRepresentante.FieldByName('REPRNOMBRES').AsString;
end;

procedure TFRepresentante.dbeApeMatExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbeApeMat.parent.name) and
      (activecontrol.taborder<dbeApeMat.taborder) then
      exit;

  dbeApeNom.Text:=dbeApePat.Text+' '+dbeApeMat.Text+' '+dbeNombres.Text;
  DM1.cdsRepresentante.FieldByName('REPRAPENOM').AsString:= DM1.cdsRepresentante.FieldByName('REPRAPEPAT').AsString+' '+
                                                            DM1.cdsRepresentante.FieldByName('REPRAPEMAT').AsString+' '+
                                                            DM1.cdsRepresentante.FieldByName('REPRNOMBRES').AsString;
end;

procedure TFRepresentante.dbeNombresExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbeNombres.parent.name) and
      (activecontrol.taborder<dbeNombres.taborder) then
      exit;

  dbeApeNom.Text:=dbeApePat.Text+' '+dbeApeMat.Text+' '+dbeNombres.Text;
  DM1.cdsRepresentante.FieldByName('REPRAPENOM').AsString:= DM1.cdsRepresentante.FieldByName('REPRAPEPAT').AsString+' '+
                                                            DM1.cdsRepresentante.FieldByName('REPRAPEMAT').AsString+' '+
                                                            DM1.cdsRepresentante.FieldByName('REPRNOMBRES').AsString;
end;

procedure TFRepresentante.wwIButton3Click(Sender: TObject);
var
   xwhere : string;
begin
   xWhere:='REPRID='+quotedstr(dbecodigo.text);
   if (length(DM1.DisplayDescrip('prvSQL','COB201','REPRID',xWhere,'REPRID'))=0) then
   begin
      ShowMessage('El Recaudador aún no esta registrado');
      exit;
   end;

   dblcUPro.Enabled:=True;
   dbdtpfecini.enabled:=true;
   dbdtpfecfin.enabled:=true;

   z2bbtnCancelaru.Enabled   :=True;
   z2bbtnAceptaru.Enabled    :=True;

   edtupro.text:='';

   DM1.cdsTUse.Insert;
   DM1.cdsTUse.FieldByName('REPRID').AsString     := DM1.cdsRepresentante.FieldByName('REPRID').AsString;
   DM1.cdsTUse.FieldByName('FECHAINI').AsDateTime := date;
   DM1.cdsTUse.FieldByName('FECHAFIN').Clear;

   pnlCabecera.Enabled  :=False;
   pnlUPro.visible      :=True;

   dblcUPro.SetFocus;
End;

procedure TFRepresentante.LlenarDatosRepUProc;
begin
   edtupro.text:='';
   DM1.cdsUPro.setkey;
   DM1.cdsUPro.fieldbyname('UPROID').AsString:=dblcUPro.text;
   if DM1.cdsUPro.gotokey then
      edtupro.text:=DM1.cdsUPro.fieldbyname('UPRONOM').AsString;
end;

procedure TFRepresentante.LlenarDatosRepTransporte;
begin
   dbeagtrnom.text:='';
   dbeagtrdir.text:='';
   dbeagtrcon.text:='';
   dbeagtrtel.text:='';
   dbeagtrane.text:='';

   DM1.cdsTransporte.setkey;
   DM1.cdsTransporte.fieldbyname('AGTRID').AsString:=DM1.cdsRTransporte.fieldbyname('AGTRID').AsString;
   if DM1.cdsTransporte.gotokey then
   begin
      dbeagtrnom.text:=DM1.cdsTransporte.fieldbyname('AGTRID').AsString;
      dbeagtrdir.text:=DM1.cdsTransporte.fieldbyname('AGTRDES').AsString;
      dbeagtrcon.text:=DM1.cdsTransporte.fieldbyname('AGTRCON').AsString;
      dbeagtrtel.text:=DM1.cdsTransporte.fieldbyname('AGTRTEL').AsString;
      dbeagtrane.text:=DM1.cdsTransporte.fieldbyname('AGTRANE').AsString;
   end;
end;

procedure TFRepresentante.LlenarDatosRecaudador;
var
	xWhere : string;
begin
	//   dm1.wModo:='MX';
  if DM1.cdsRepresentante.fieldbyname('REPRPAGO').AsString='S' then
  begin
		//dbrgpago.itemindex:=0;
  	DM1.cdsRepresentante.fieldbyname('REPRCOMIS').AsFloat:=0;
    dbepago.datasource:=DM1.dsRepresentante;
    dbepago.datafield:='REPRSUELDO';
    dbepago.enabled:=true;
    dbepago.visible:=true;
  end
  else if DM1.cdsRepresentante.fieldbyname('REPRPAGO').AsString='C' then
  begin
		//dbrgpago.itemindex:=1;
    DM1.cdsRepresentante.fieldbyname('REPRSUELDO').AsFloat:=0;
    dbepago.datasource:=DM1.dsRepresentante;
    dbepago.datafield:='REPRCOMIS';
    dbepago.enabled:=true;
    dbepago.visible:=true;
  end
  else
  begin
  	//dbrgpago.itemindex:=2;
    DM1.cdsRepresentante.fieldbyname('REPRSUELDO').AsFloat:=0;
    DM1.cdsRepresentante.fieldbyname('REPRCOMIS').AsFloat:=0;
    dbepago.datasource:=nil;
    dbepago.datafield:='';
    dbepago.enabled:=false;
    dbepago.visible:=false;
  end;

  edtformarepr.text:='';
  xWhere:='FORREPRID='+quotedstr(dblcformarepr.Text);
  if length(DM1.DisplayDescrip('prvSQL','COB105','FORREPRID,FORREPRDES',xwhere,'FORREPRID'))>0 then
  begin
  	edtformarepr.text := DM1.cdsQry.FieldByName('FORREPRDES').AsString;
  end;

  edtbanco.text:='';
  xwhere:='BANCOID='+quotedstr(dblcbanco.Text);
  if length(DM1.DisplayDescrip('prvSQL','TGE105','BANCOID,BANCONOM',xwhere,'BANCOID'))>0 then
  begin
    edtbanco.text := DM1.cdsQry.FieldByName('BANCONOM').AsString;
  end;

  edtSitCuenta.text:='';
  xwhere:='SITCTAID='+quotedstr(dblcSitCuenta.Text);
  if length(DM1.DisplayDescrip('prvSQL','COB103','SITCTAID,SITCTADES',xwhere,'SITCTAID'))>0 then
  begin
    edtSitCuenta.text := DM1.cdsQry.FieldByName('SITCTADES').AsString;
  end;

  edtTipDocID.text:='';
  xwhere:='TIPDOCCOD='+quotedstr(dblcTipDocID.Text);
  if length(DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCCOD,TIPDOCDES',xwhere,'TIPDOCCOD'))>0 then
  begin
  	edtTipDocID.text := DM1.cdsQry.FieldByName('TIPDOCDES').AsString;
  end;

  edtEstCiv.text:='';
  xwhere:='ESTCIVID='+quotedstr(dblcEstCiv.Text);
  if length(DM1.DisplayDescrip('prvSQL','TGE125','ESTCIVID,ESTCIVDES',xwhere,'ESTCIVID'))>0 then
  begin
    edtEstCiv.text := DM1.cdsQry.FieldByName('ESTCIVDES').AsString;
  end;

  edtDepto.text:='';
  xwhere:='DPTOID='+quotedstr(dblcDpto.Text);
  if length(DM1.DisplayDescrip('prvSQL','APO158','DPTOID,DPTODES',xwhere,'DPTOID'))>0 then
  begin
    edtDepto.text := DM1.cdsQry.FieldByName('DPTODES').AsString;
  end;

  edtProv.text:='';
  xwhere:='DPTOID='+quotedstr(dblcDpto.Text)+
          ' AND CIUDID='+quotedstr(dblcProvincia.Text);
  if length(DM1.DisplayDescrip('prvSQL','APO123','CIUDID,CIUDDES',xwhere,'CIUDID'))>0 then
  begin
    edtProv.text := DM1.cdsQry.FieldByName('CIUDDES').AsString;
  end;

  edtZip.text:='';
  xwhere:='DPTOID='+quotedstr(dblcDpto.Text)+
          ' AND CIUDID='+quotedstr(dblcProvincia.Text)+
          ' AND ZIPID='+quotedstr(dblcZip.Text);
  if length(DM1.DisplayDescrip('prvSQL','APO122','ZIPID,ZIPDES',xwhere,'ZIPID'))>0 then
  begin
    edtZip.text := DM1.cdsQry.FieldByName('ZIPDES').AsString;
  end;

  edtUniDesc.text:='';
  xwhere:='OFDESID='+quotedstr(dblcUniDesc.Text);
  if length(DM1.DisplayDescrip('prvSQL','APO110','OFDESID,OFDESNOM',xwhere,'OFDESID'))>0 then
  begin
    edtUniDesc.text := DM1.cdsQry.FieldByName('OFDESNOM').AsString;
  end;

  edtccosto.text:='';
  xwhere:='CCOSID='+quotedstr(dblcdccosto.Text);
  if length(DM1.DisplayDescrip('prvSQL','TGE203','CCOSID,CCOSDES',xwhere,'CCOSID'))>0 then
  begin
  	edtccosto.text := DM1.cdsQry.FieldByName('CCOSDES').AsString;
  end;
end;

procedure TFRepresentante.LlenarDatosRepPersonal;
var
   xwhere : string;
begin
   dbereprnom.text:='';
   dblcreprdocid.text:='';
   edtreprdocid.text:='';
   dbereprnodoc.text:='';
   dbereprtel.text:='';
   dbereprane.text:='';

   DM1.cdsEjecuta.setkey;
   DM1.cdsEjecuta.fieldbyname('REPRID').AsString:=dblcdreprid.Text;
   if DM1.cdsEjecuta.gotokey then
   begin
      dbereprnom.text    :=DM1.cdsEjecuta.fieldbyname('REPRAPENOM').AsString;
      dblcreprdocid.text :=DM1.cdsEjecuta.fieldbyname('TIPDOCCOD').AsString;

      xwhere:='TIPDOCCOD='+quotedstr(DM1.cdsEjecuta.fieldbyname('TIPDOCCOD').AsString);
      edtreprdocid.text  :=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',sWhere,'TIPDOCDES');

      dbereprnodoc.text  :=DM1.cdsEjecuta.fieldbyname('REPRDOCNUM').AsString;
      dbereprtel.text    :=DM1.cdsEjecuta.fieldbyname('REPRTELF').AsString;
      dbereprane.text    :=DM1.cdsEjecuta.fieldbyname('REPRANEX').AsString;
   end;
end;

procedure TFRepresentante.dbgUProDblClick(Sender: TObject);
begin
   if DM1.cdsTUSE.recordcount=0 then exit;

   LlenarDatosRepUProc;

   pnlUPro.visible      :=True;
   pnlCabecera.Enabled  :=False;

   dblcUPro.Enabled:=False;
   dbdtpfecini.enabled:=false;
   dbdtpfecfin.enabled:=true;

   DM1.cdsTUse.Edit;

   z2bbtnCancelaru.Enabled   :=True;
   z2bbtnAceptaru.Enabled    :=True;

   z2bbtnCancelaru.SetFocus;
end;

procedure TFRepresentante.Z2bbtnAceptaruClick(Sender: TObject);
begin
   Screen.Cursor:=crHourGlass;

   DM1.cdsTUSE.FieldByName('USUARIO').AsString:=DM1.wUsuario;
   DM1.cdsTUSE.FieldByName('FREG').AsDateTime:=Date;
   DM1.cdsTUSE.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;
   cdspost(DM1.cdsTUSE);
   DM1.cdsTUSE.Post;
   DM1.cdsTUSE.ApplyUpdates(-1);   

   Screen.Cursor:=crDefault;

   pnlUPro.visible     :=False;
   pnlCabecera.Enabled :=True;
end;

procedure TFRepresentante.Z2bbtnCancelaruClick(Sender: TObject);
begin
   dm1.cdsTUse.Cancel;
   pnlUPro.visible  :=False;
   pnlCabecera.Enabled :=True;
end;

procedure TFRepresentante.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
    if Self.ActiveControl Is TDBMemo then Exit;
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFRepresentante.dbeNumDocExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (activecontrol.parent.name=dbeNumDoc.parent.name) and
      (activecontrol.taborder<dbeNumDoc.taborder) then
      exit;

   if (length(trim(dbeNumDoc.text))=0) then
   begin
      showmessage('Número no es válido');
      dbeNumDoc.setfocus;
      exit;
   end;
end;

procedure TFRepresentante.dbepagoExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (length(trim(dbepago.text))=0) or
      (strtofloat(dbepago.text)=0) then
   begin
      showmessage('Monto o Porcentaje no es válido');
      dbepago.setfocus;
      exit;
   end;
end;

procedure TFRepresentante.dbeCuentaExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (activecontrol.parent.name=dbeCuenta.parent.name) and
      (activecontrol.taborder<dbeCuenta.taborder) then
      exit;

   if (length(trim(dbeCuenta.text))=0) then
   begin
      showmessage('Cuenta no es válida');
      dbeCuenta.setfocus;
      exit;
   end;
end;

procedure TFRepresentante.dbeLibMilExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (activecontrol.parent.name=dbeLibMil.parent.name) and
      (activecontrol.taborder<dbeLibMil.taborder) then
      exit;

   if (length(trim(dbeLibMil.text))=0) then
   begin
      showmessage('Número Libreta Militar no es válido');
      dbeLibMil.setfocus;
      exit;
   end;
end;

procedure TFRepresentante.dbeRUCExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (activecontrol.parent.name=dbeRUC.parent.name) and
      (activecontrol.taborder<dbeRUC.taborder) then
      exit;

   if (length(trim(dbeRUC.text))=0) then
   begin
      showmessage('RUC no es válido');
      dbeRUC.setfocus;
      exit;
   end;
end;

procedure TFRepresentante.dbgUProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key=VK_Delete) and (ssCtrl in Shift) then
   begin
      if MessageDlg('¿Eliminar Detalle ?',
      mtconfirmation,[mbYes,mbNo],0)=mrYes then
      begin
         DM1.cdsTUse.delete;
         DM1.cdsTUse.ApplyUpdates(-1);
      end;
   end;
end;

procedure TFRepresentante.dbdtpfecfinExit(Sender: TObject);
begin
   if Z2bbtnCancelaru.focused then exit;

   if (activecontrol.parent.name=dbdtpfecfin.parent.name) and
      (activecontrol.taborder<dbdtpfecfin.taborder) then
      exit;

   if (dbdtpfecfin.date<dbdtpfecini.date) and
      (dbdtpfecfin.date<>0) then
   begin
      showmessage('Fecha Final es menor a Fecha Inicio');
      dbdtpfecfin.setfocus;
      exit;
   end;
end;

procedure TFRepresentante.dbgAgTransporteDblClick(Sender: TObject);
begin
   if DM1.cdsRTransporte.recordcount=0 then exit;

   LlenarDatosRepTransporte;

   pnlAgTransporte.visible:=True;
   pnlCabecera.Enabled    :=False;

   dblcdagtrid.Enabled:=False;
   dbeagtrnom.enabled:=false;
   dbeagtrdir.enabled:=false;
   dbeagtrcon.enabled:=false;
   dbeagtrtel.enabled:=false;
   dbeagtrane.enabled:=false;

   DM1.cdsRTransporte.Edit;

   z2bbtnCancelara.Enabled   :=True;
   z2bbtnAceptara.Enabled    :=False;

   z2bbtnCancelara.SetFocus;
end;

procedure TFRepresentante.dblcdagtridExit(Sender: TObject);
var
   xwhere : string;
begin
   if Z2bbtnCancelara.focused then exit;

   dbeagtrnom.text:='';
   dbeagtrdir.text:='';
   dbeagtrcon.text:='';
   dbeagtrtel.text:='';
   dbeagtrane.text:='';

   DM1.cdsTransporte.setkey;
   DM1.cdsTransporte.fieldbyname('AGTRID').AsString:=dblcdagtrid.Text;
   if not DM1.cdsTransporte.gotokey then
   begin
      ShowMessage('Agencia de Transporte no es válida');
      dblcdagtrid.SetFocus;
      exit;
   end;

{   DM1.cdsRTransporte.setkey;
   DM1.cdsRTransporte.fieldbyname('AGTRID').AsString:=dblcdagtrid.Text;
   if DM1.cdsRTransporte.gotokey then
   begin
      ShowMessage('Agencia de Transporte ya existe');
      dblcdagtrid.SetFocus;
      exit;
   end;}

   xWhere:='REPRID='+quotedstr(dbecodigo.text)
          +' AND AGTRID='+quotedstr(dblcdagtrid.Text);
   if (length(DM1.DisplayDescrip('prvSQL','COB206','AGTRID',xWhere,'AGTRID'))>0) then
   begin
      ShowMessage('Agencia de Transporte ya existe');
      dblcdagtrid.SetFocus;
      exit;
   end;

   dbeagtrnom.text:=DM1.cdsTransporte.fieldbyname('AGTRID').AsString;
   dbeagtrdir.text:=DM1.cdsTransporte.fieldbyname('AGTRDES').AsString;
   dbeagtrcon.text:=DM1.cdsTransporte.fieldbyname('AGTRCON').AsString;
   dbeagtrtel.text:=DM1.cdsTransporte.fieldbyname('AGTRTEL').AsString;
   dbeagtrane.text:=DM1.cdsTransporte.fieldbyname('AGTRANE').AsString;
end;

procedure TFRepresentante.Z2bbtnAceptaraClick(Sender: TObject);
begin
   Screen.Cursor:=crHourGlass;

   DM1.cdsRTransporte.FieldByName('USUARIO').AsString:=DM1.wUsuario;
   DM1.cdsRTransporte.FieldByName('FREG').AsDateTime:=Date;
   DM1.cdsRTransporte.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;
   cdspost(DM1.cdsRTransporte);
   DM1.cdsRTransporte.Post;
   DM1.cdsRTransporte.ApplyUpdates(-1);

   Screen.Cursor:=crDefault;

   pnlAgTransporte.visible :=False;
   pnlCabecera.Enabled     :=True;
end;

procedure TFRepresentante.dbgAgTransporteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key=VK_Delete) and (ssCtrl in Shift) then
   begin
      if MessageDlg('¿Eliminar Detalle ?',
      mtconfirmation,[mbYes,mbNo],0)=mrYes then
      begin
         DM1.cdsRTransporte.delete;
         DM1.cdsRTransporte.ApplyUpdates(-1);
      end;
   end;
end;

procedure TFRepresentante.dblcdrepridExit(Sender: TObject);
var
   xwhere : string;
begin
   if Z2bbtnCancelarp.focused then exit;

   dbereprnom.text:='';
   dblcreprdocid.text:='';
   edtreprdocid.text:='';
   dbereprnodoc.text:='';
   dbereprtel.text:='';
   dbereprane.text:='';

   DM1.cdsEjecuta.setkey;
   DM1.cdsEjecuta.fieldbyname('REPRID').AsString:=dblcdreprid.Text;
   if not DM1.cdsEjecuta.gotokey then
   begin
      ShowMessage('Recaudador no es válido');
      dblcdreprid.SetFocus;
      exit;
   end;

   // Valida si se esta asignando a si mismo como subordinado
   if (dbecodigo.text=dblcdreprid.Text) then
   begin
      ShowMessage('No puede asignarse a si mismo');
      dblcdreprid.SetFocus;
      exit;
   end;

{   DM1.cdsRRepresentante.setkey;
   DM1.cdsRRepresentante.fieldbyname('REPRIDP').AsString:=dblcdreprid.Text;
   if DM1.cdsRRepresentante.gotokey then
   begin
      ShowMessage('Representante ya existe');
      dblcdreprid.SetFocus;
      exit;
   end;}

   xWhere:='REPRID='+quotedstr(dbecodigo.text)
          +' AND REPRIDP='+quotedstr(dblcdreprid.Text);
   if (length(DM1.DisplayDescrip('prvSQL','COB205','REPRIDP',xWhere,'REPRIDP'))>0) then
   begin
      ShowMessage('Representante ya existe');
      dblcdreprid.SetFocus;
      exit;
   end;

   dbereprnom.text    :=DM1.cdsEjecuta.fieldbyname('REPRAPENOM').AsString;
   dblcreprdocid.text :=DM1.cdsEjecuta.fieldbyname('TIPDOCCOD').AsString;

   xwhere:='TIPDOCCOD='+quotedstr(DM1.cdsEjecuta.fieldbyname('TIPDOCCOD').AsString);
   edtreprdocid.text  :=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',sWhere,'TIPDOCDES');

   dbereprnodoc.text  :=DM1.cdsEjecuta.fieldbyname('REPRDOCNUM').AsString;
   dbereprtel.text    :=DM1.cdsEjecuta.fieldbyname('REPRTELF').AsString;
   dbereprane.text    :=DM1.cdsEjecuta.fieldbyname('REPRANEX').AsString;
end;

procedure TFRepresentante.Z2bbtnAceptarpClick(Sender: TObject);
begin
   Screen.Cursor:=crHourGlass;

   DM1.cdsRRepresentante.FieldByName('USUARIO').AsString:=DM1.wUsuario;
   DM1.cdsRRepresentante.FieldByName('FREG').AsDateTime:=Date;
   DM1.cdsRRepresentante.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;
   cdspost(DM1.cdsRRepresentante);
   DM1.cdsRRepresentante.Post;
   DM1.cdsRRepresentante.ApplyUpdates(-1);

   Screen.Cursor:=crDefault;

   pnlPersonal.visible :=False;
   pnlCabecera.Enabled     :=True;
end;

procedure TFRepresentante.dbgPersonalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key=VK_Delete) and (ssCtrl in Shift) then
   begin
      if MessageDlg('¿Eliminar Detalle ?',
      mtconfirmation,[mbYes,mbNo],0)=mrYes then
      begin
         DM1.cdsRRepresentante.delete;
         DM1.cdsRRepresentante.ApplyUpdates(-1);
      end;
   end;
end;

procedure TFRepresentante.dbgPersonalDblClick(Sender: TObject);
begin
   if DM1.cdsRRepresentante.recordcount=0 then exit;

   LlenarDatosRepPersonal;

   pnlPersonal.visible      :=True;
   pnlCabecera.Enabled  :=False;

   dblcdreprid.Enabled:=False;
   dbereprnom.Enabled:=False;
   dblcreprdocid.Enabled:=False;
   dbereprnodoc.enabled:=false;
   dbereprtel.enabled:=false;
   dbereprane.enabled:=false;

   DM1.cdsRRepresentante.edit;

   z2bbtnCancelarp.Enabled   :=True;
   z2bbtnAceptarp.Enabled    :=False;

   z2bbtnCancelarp.SetFocus;
end;

procedure TFRepresentante.dbdtpFNacExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;
end;

procedure TFRepresentante.dbrgSexoExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbrgSexo.parent.name) and
      (activecontrol.taborder<dbrgSexo.taborder) then
      exit;
end;

procedure TFRepresentante.dbrgpagoExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

//   if DM1.wmodo='MX' then exit;

   if (activecontrol.parent.name=dbrgpago.parent.name) and
      (activecontrol.taborder<dbrgpago.taborder) then
      exit;

   if dbrgpago.itemindex=0 then
   begin
      DM1.cdsRepresentante.fieldbyname('REPRSUELDO').AsFloat:=0;
      DM1.cdsRepresentante.fieldbyname('REPRCOMIS').AsFloat:=0;
      dbepago.datasource:=DM1.dsRepresentante;
      dbepago.datafield:='REPRSUELDO';
      dbepago.enabled:=true;
      dbepago.visible:=true;
      dbepago.setfocus;
   end
   else if dbrgpago.itemindex=1 then
   begin
      DM1.cdsRepresentante.fieldbyname('REPRSUELDO').AsFloat:=0;
      DM1.cdsRepresentante.fieldbyname('REPRCOMIS').AsFloat:=0;
      dbepago.datasource:=DM1.dsRepresentante;
      dbepago.datafield:='REPRCOMIS';
      dbepago.enabled:=true;
      dbepago.visible:=true;
      dbepago.setfocus;
   end
   else
   begin
      DM1.cdsRepresentante.fieldbyname('REPRSUELDO').AsFloat:=0;
      DM1.cdsRepresentante.fieldbyname('REPRCOMIS').AsFloat:=0;
      dbepago.datasource:=nil;
      dbepago.datafield:='';
      dbepago.enabled:=false;
      dbepago.visible:=false;
      dblcbanco.setfocus;
   end;
end;

procedure TFRepresentante.dbeSegSocExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbeSegSoc.parent.name) and
      (activecontrol.taborder<dbeSegSoc.taborder) then
      exit;
end;

procedure TFRepresentante.dbeTelefonoExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbeTelefono.parent.name) and
      (activecontrol.taborder<dbeTelefono.taborder) then
      exit;
end;

procedure TFRepresentante.dbeanexoExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbeanexo.parent.name) and
      (activecontrol.taborder<dbeanexo.taborder) then
      exit;
end;

procedure TFRepresentante.dbeFaxExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbeFax.parent.name) and
      (activecontrol.taborder<dbeFax.taborder) then
      exit;
end;

procedure TFRepresentante.dbeDireccionExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbeDireccion.parent.name) and
      (activecontrol.taborder<dbeDireccion.taborder) then
      exit;
end;

procedure TFRepresentante.dbeemailExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbeemail.parent.name) and
      (activecontrol.taborder<dbeemail.taborder) then
      exit;
end;

procedure TFRepresentante.dbdtpFIniExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbdtpFIni.parent.name) and
      (activecontrol.taborder<dbdtpFIni.taborder) then
      exit;
end;

procedure TFRepresentante.dbdtpFFinExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dbdtpFFin.parent.name) and
      (activecontrol.taborder<dbdtpFFin.taborder) then
      exit;
end;

procedure TFRepresentante.dbdtpfeciniExit(Sender: TObject);
begin
   if Z2bbtnCancelaru.focused then exit;

   if (activecontrol.parent.name=dbdtpfecini.parent.name) and
      (activecontrol.taborder<dbdtpfecini.taborder) then
      exit;
end;

procedure TFRepresentante.dblcunidescExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dblcunidesc.parent.name) and
      (activecontrol.taborder<dblcunidesc.taborder) then
      exit;

   if length(dblcunidesc.Text)>0 then
   begin
      DM1.cdsOfDes.setkey;
      DM1.cdsOfDes.fieldbyname('OFDESID').AsString:=dblcunidesc.Text;
      if not DM1.cdsOfDes.gotokey then
      begin
         showmessage('Unidad Desconcentrada no es válida');
         edtunidesc.text:='';
         dblcunidesc.setfocus;
         exit;
      end;
      edtunidesc.text:=DM1.cdsOfDes.fieldbyname('OFDESNOM').AsString;
   end;
end;

procedure TFRepresentante.Z2bbtnCancelaraClick(Sender: TObject);
begin
   dm1.cdsRTransporte.Cancel;
   pnlAgTransporte.visible :=False;
   pnlCabecera.Enabled     :=True;
end;

procedure TFRepresentante.dblcdccostoExit(Sender: TObject);
begin
   if z2bbtncancel.focused then exit;

   if (activecontrol.parent.name=dblcdccosto.parent.name) and
      (activecontrol.taborder<dblcdccosto.taborder) then
      exit;

   if length(dblcdccosto.Text)>0 then
   begin
      DM1.cdsCCosto.setkey;
      DM1.cdsCCosto.fieldbyname('CCOSID').AsString:=dblcdccosto.Text;
      if not DM1.cdsCCosto.gotokey then
      begin
         showmessage('Centro de Costo no es válido');
         edtccosto.text:='';
         dblcdccosto.setfocus;
         exit;
      end;
      edtccosto.text:=DM1.cdsCCosto.fieldbyname('CCOSDES').AsString;
   end;
end;

end.
