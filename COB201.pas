unit COB201;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, wwdbdatetimepicker, ComCtrls,
  Tabnotbk, wwdblook, StdCtrls, Mask, wwdbedit, Wwdbdlg, ExtCtrls, fcLabel,
  DBCtrls, fcButton, fcImgBtn, fcShapeBtn,Wwdbcomb,Wwdotdot,Db, dbiProcs,
  dbclient, wwclient, DBGrids;


type
  TFAsociados = class(TForm)
    Panel1: TPanel;
    fcLabel1: TfcLabel;
    Bevel1: TBevel;
    pnlTool: TPanel;
    sbtnFirma: TfcShapeBtn;
    sbtnSitu: TfcShapeBtn;
    sbtnCtasBanc: TfcShapeBtn;
    sbtnResol: TfcShapeBtn;
    sbtnAportes: TfcShapeBtn;
    sbtnDFam: TfcShapeBtn;
    sbtnDLab: TfcShapeBtn;
    pnlInicio: TPanel;
    lblCodigoDM: TLabel;
    lblCodigoMod: TLabel;
    dbeCodMod: TwwDBEdit;
    dbeCodigo: TwwDBEdit;
    dblcdCodigo: TwwDBLookupComboDlg;
    dblcdCodMod: TwwDBLookupComboDlg;
    pnlNomTrab: TPanel;
    pnlTrab: TPanel;
    pcAsociados: TPageControl;
    tsDPer: TTabSheet;
    tsDDom: TTabSheet;
    tsDLab: TTabSheet;
    sbtnAceptar: TfcShapeBtn;
    sbtnCancelar: TfcShapeBtn;
    lblApePat: TLabel;
    dbeApePaterno: TwwDBEdit;
    dbeApeMaterno: TwwDBEdit;
    lblApeMat: TLabel;
    dbeNombres: TwwDBEdit;
    lblNombres: TLabel;
    dblcSituacion: TwwDBLookupCombo;
    lblSituacion: TLabel;
    edtSituacion: TEdit;
    lblTipoAsociado: TLabel;
    dblcTipo: TwwDBLookupCombo;
    edtTipoAso: TEdit;
    dblcUProceso: TwwDBLookupCombo;
    lblUnidadProceso: TLabel;
    edtUProceso: TEdit;
    dblcUSE: TwwDBLookupCombo;
    lblUSE: TLabel;
    edtUSE: TEdit;
    dbeNroDNI: TwwDBEdit;
    lblDNI: TLabel;
    lblNomTot: TLabel;
    dbeNombre: TwwDBEdit;
    dbdtpFechaNac: TwwDBDateTimePicker;
    lblFNac: TLabel;
    dblcSexo: TwwDBLookupCombo;
    lblSexo: TLabel;
    edtSexo: TEdit;
    lblEstCivil: TLabel;
    dblcEstCivil: TwwDBLookupCombo;
    edtEstCivil: TEdit;
    edtNacionalidad: TEdit;
    dblcdNacionalidad: TwwDBLookupComboDlg;
    lblNacionalidad: TLabel;
    edtLugarNac: TEdit;
    dblcLugarNac: TwwDBLookupComboDlg;
    lblLugNac: TLabel;
    lblTipDocIdent: TLabel;
    dblcTipoDoc: TwwDBLookupCombo;
    edtTipoDoc: TEdit;
    dbeNroDoc: TwwDBEdit;
    lblNroDocId: TLabel;
    dbeNroLibM: TwwDBEdit;
    lblLibMilitar: TLabel;
    dbeNroRUC: TwwDBEdit;
    lblRUC: TLabel;
    dbeemail: TwwDBEdit;
    lblEMail: TLabel;
    lblCodigoPago: TLabel;
    dbeCodigoPago: TwwDBEdit;
    dblcUPago: TwwDBLookupCombo;
    lblUnidadPago: TLabel;
    edtUPago: TEdit;
    dbeResolucion: TwwDBEdit;
    lblResolucion: TLabel;
    dbdtpFecha: TwwDBDateTimePicker;
    lblFechaPago: TLabel;
    sbtnNuevo: TfcShapeBtn;
    dblcRTipResol: TwwDBLookupCombo;
    edtResolDescrip: TEdit;
    lblRegimen: TLabel;
    dblcRegimen: TwwDBLookupCombo;
    edtRegimen: TEdit;
    dblcdBco: TwwDBLookupCombo;
    edtBanco: TEdit;
    Label1: TLabel;
    nroCta: TwwDBEdit;
    TabSheet1: TTabSheet;
    dblcGradoIns: TwwDBLookupCombo;
    lblGradoInst: TLabel;
    edtGradoIns: TEdit;
    lblGradoAc: TLabel;
    dblcGradoAcad: TwwDBLookupCombo;
    edtGradoAcad: TEdit;
    lblProfesion: TLabel;
    dblcdProfesion: TwwDBLookupComboDlg;
    edtProfesion: TEdit;
    Label2: TLabel;
    dbeInstitucion: TwwDBEdit;
    dbdtpFecTermino: TwwDBDateTimePicker;
    Label4: TLabel;
    dbeTiempo: TwwDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    sbtnDSocioE: TfcShapeBtn;
    Label6: TLabel;
    dblcdSit: TwwDBLookupCombo;
    edtSitCtaBco: TEdit;
    lblTipoVia: TLabel;
    lblNomVia: TLabel;
    lblNroCasa: TLabel;
    lblNroDpto: TLabel;
    lblDistrito: TLabel;
    lblNomZona: TLabel;
    lblTipoZona: TLabel;
    lblDireccion: TLabel;
    lblTelf1: TLabel;
    lblTelf2: TLabel;
    lblDepartamento: TLabel;
    lblProvincia: TLabel;
    lblRefDomic: TLabel;
    dblcTipoVia: TwwDBLookupCombo;
    edtTipoVia: TEdit;
    dbeNombreVia: TwwDBEdit;
    dbeNroDireccion: TwwDBEdit;
    dbeDpto: TwwDBEdit;
    edtDistrito: TEdit;
    dblcdDistrito: TwwDBLookupComboDlg;
    dbeNombreZona: TwwDBEdit;
    edtZona: TEdit;
    dblcTipoZona: TwwDBLookupCombo;
    dbeDireccion: TwwDBEdit;
    dbeTelefono1: TwwDBEdit;
    dbeTelefono2: TwwDBEdit;
    dblcdDepto: TwwDBLookupComboDlg;
    edtDepto: TEdit;
    dblcdCiudad: TwwDBLookupComboDlg;
    edtProvincia: TEdit;
    dbeReferencia: TwwDBEdit;
    edtUbigeo: TwwDBEdit;
    Label7: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcSituacionExit(Sender: TObject);
    procedure dblcTipoExit(Sender: TObject);
    procedure dblcUSEExit(Sender: TObject);
    procedure dblcUPagoExit(Sender: TObject);
    procedure dblcUProcesoExit(Sender: TObject);
    procedure dblcRegimenExit(Sender: TObject);
    procedure dblcEstCivilExit(Sender: TObject);
    procedure dblcTipoDocExit(Sender: TObject);
    procedure dblcLugarNacExit(Sender: TObject);
    procedure dblcdNacionalidadExit(Sender: TObject);
    procedure dblcGradoAcadExit(Sender: TObject);
    procedure dblcGradoInsExit(Sender: TObject);
    procedure dblcdProfesionExit(Sender: TObject);
    procedure dblcTipoViaExit(Sender: TObject);
    procedure dblcTipoZonaExit(Sender: TObject);
    procedure dblcdDistritoExit(Sender: TObject);
    procedure dblcdCiudadExit(Sender: TObject);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure sbtnDLabClick(Sender: TObject);
    procedure sbtnDFamClick(Sender: TObject);
    procedure sbtnAportesClick(Sender: TObject);
    procedure sbtnCtaIndClick(Sender: TObject);
    procedure sbtnResolClick(Sender: TObject);
    procedure sbtnCtasBancClick(Sender: TObject);
    procedure sbtnSituClick(Sender: TObject);
    procedure sbtnFirmaClick(Sender: TObject);
    procedure sbtnAceptarClick(Sender: TObject);
    procedure sbtnNuevoClick(Sender: TObject);
    procedure sbtnCancelarClick(Sender: TObject);
    procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dblcSexoExit(Sender: TObject);
    procedure dbeNombresExit(Sender: TObject);
    procedure dblcdCodigoExit(Sender: TObject);
    procedure dblcdCodModExit(Sender: TObject);
    procedure dbeApeMaternoExit(Sender: TObject);
    procedure dbeApePaternoExit(Sender: TObject);
    procedure dblcRTipResolExit(Sender: TObject);
    procedure dbeNroDNIExit(Sender: TObject);
    procedure dblcdCodigoCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure dbeNroRUCExit(Sender: TObject);
    procedure sbtnDSocioEClick(Sender: TObject);
    procedure dblcdBcoExit(Sender: TObject);
    procedure dblcdSitExit(Sender: TObject);
  private
    { Private declarations }
     function ValidaPrincipalAso:Boolean;
     function ValidaDatosPerAso:Boolean;
     function ValidaDomicilioAso:Boolean;
     //function ValidaLaboralesAso:Boolean;
     //function ValidaAcademicosAso:Boolean;
     Procedure LimpiaEdits;
  public
    { Public declarations }
     xSQL,vSQL,sSQL,xwhere:string;
     Procedure DisplayDescrips;
  end;

var
  FAsociados: TFAsociados;
	wNomAnt : String;

implementation

uses COBDM1, MsgDlgs, COB206, COB207, COB208, COB209, COB205, COB210, COB2A1, COB2A2, COB212;

{$R *.DFM}

function TFAsociados.ValidaPrincipalAso:Boolean;
begin
  result:=False;
      //*** Princiapal
  If length(dbeCodigo.Text)=0 Then
  Begin
    ShowMessage('Registre Código del Asociado');
    If DM1.wModo='M' then
      dblcdCodigo.SetFocus
    else
      dbeCodigo.SetFocus;
    exit;
  End;
  If length(dbeCodMod.Text)=0 Then
  Begin
    ShowMessage('Registre el Código Modular del Asociado');
    If DM1.wModo='M' then
      dblcdCodMod.SetFocus
    else
      dbeCodMod.SetFocus;
    exit;
  End;
  If length(dbeApePaterno.Text)=0 Then
  Begin
    ShowMessage('Registre el Apellido Paterno del Asociado');
    dbeApePaterno.SetFocus;
    exit;
  End;
  If length(dbeApeMaterno.Text)=0 Then
  Begin
    ShowMessage('Registre el Apellido Materno del Asociado');
    dbeApeMaterno.SetFocus;
    exit;
  End;
  If length(dbeNombres.Text)=0 Then
  Begin
    ShowMessage('Registre los Nombres del Asociado');
    dbeNombres.SetFocus;
    exit;
  End;
  {If length(edtSituacion.Text)=0 Then Begin
        ShowMessage('Seleccione la Situación del Asociado');
        dblcSituacion.SetFocus;
        exit;
      End;

      If length(edtTipoAso.Text)=0 Then Begin
        ShowMessage('Seleccione el Tipo del Asociado');
        dblcTipo.SetFocus;
        exit;
  End;}
  {If length(edtUProceso.Text)=0 Then Begin
        ShowMessage('Seleccione la Unidad de Proceso');
        dblcUProceso.SetFocus;
        exit;
      End;
      If length(edtUSE.Text)=0 Then Begin
        ShowMessage('Seleccione la USE');
        dblcUSE.SetFocus;
        exit;
  End;}
  //*************************
  {If dblcdNacionalidad.Text= '01' then
  begin
              If length(dbeNroDNI.Text)=0 Then
                  Begin
                        If length(edtTipoDoc.Text)=0 Then
                              Begin
                                   ShowMessage('Registre el Número de D.N.I. o L.E. ');
                                   dbeNroDNI.SetFocus;
                                   exit;
                              End
                        Else
                            Begin
                                  If length(dbeNroDoc.Text)=0 Then
                                  Begin
                                      ShowMessage('Registre el Número del Documento seleccionado ');
                                      dbeNroDoc.Text;
                                      exit;
                                  End;
                            End;
              End;
      End
      Else
      Begin
            If length(edtTipoDoc.Text)=0 Then
              Begin
                  ShowMessage('Seleccione el Tipo de Documento');
                  dbeNroDNI.SetFocus;
                  exit;
              End
              Else
              Begin
                  If length(dbeNroDoc.Text)=0 Then
                    Begin
                      ShowMessage('Registre el Número del Documento seleccionado ');
                      dbeNroDoc.Text;
                      exit;
                     End;
               End;
  End;}
  result:=True;
end;

procedure TFAsociados.FormActivate(Sender: TObject);
begin
  pcAsociados.ActivePage:=tsDPer;
  If DM1.wModo='A' then
  begin
    dblcdCodigo.Visible:=False;
    dbeCodigo.Visible:=True;
    dbeCodMod.Visible:=True;
    dbeCodMod.SetFocus;
    dblcdCodMod.Visible:=False;
    dbeCodigo.Enabled:=False;
    dbeCodMod.ReadOnly:=False;

    dblcSituacion.Enabled:=False;
    dblcTipo.Enabled:=False;
    sbtnNuevo.Visible:=True;
    LimpiaEdits;

    DM1.cdsAso.FieldByName('CIAID').AsString:=wCiaDef;

    dblcSituacion.text:='AC';
    DM1.cdsAso.FieldByName('ASOSITID').AsString:='AC';
    xWhere:='ASOSITID='''+dblcSituacion.Text+'''';
    edtSituacion.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');

    dblcTipo.Text:='NI';
    DM1.cdsAso.FieldByName('ASOTIPID').AsString:='NI';
    xWhere:='ASOTIPID='''+dblcTipo.Text+'''';
    edtTipoAso.Text:=DM1.DisplayDescrip('prvSQL','APO107','ASOTIPDES',xWhere,'ASOTIPDES');

    dblcdNacionalidad.Text:='01';
    DM1.cdsAso.FieldByName('PAISID').AsString:='01';
    xWhere:='PAISID='''+dblcdNacionalidad.Text+'''';
    edtNacionalidad.Text:=DM1.DisplayDescrip('prvSQL','TGE118','PAISABR',xWhere,'PAISABR');
  end;

  If DM1.wModo='M' Then
  Begin
		wNomAnt:=Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString);
    dblcdCodigo.Visible:=True;
    dbeCodigo.Visible:=False;
		dbeCodMod.ReadOnly:=True;
		//dbeCodMod.Visible:=False;
		//dblcdCodMod.Visible:=True;
		//dblcSituacion.Enabled:=True;
		//dblcTipo.Enabled:=True;
    sbtnNuevo.Visible:=False;
  End;
  DisplayDescrips;

  dblcdCodigo.Text:=DM1.cdsAso.FieldByName('ASOID').AsString;
  dblcdCodMod.Text:=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
end;

procedure TFAsociados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	dbeCodigo.Enabled:=True;

	If (DM1.wModo='A') or (DM1.wModo='M') Then
  Begin
  	If (DM1.cdsAso.ChangeCount > 0) or (DM1.cdsAso.Modified) Then
    Begin
    	if MessageDlg('¿Desea Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      	sbtnAceptar.Click;
      End
      Else
      begin
      	DM1.cdsAso.Cancel;
        DM1.cdsAso.CancelUpdates;
      end;
    End;
  End;
  //DM1.cdsAso.Cancel;
  //DM1.cdsAso.CancelUpdates;
end;

procedure TFAsociados.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFAsociados.dblcSituacionExit(Sender: TObject);
begin
  xWhere:='ASOSITID='''+dblcSituacion.Text+'''';
  edtSituacion.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');
end;

procedure TFAsociados.dblcTipoExit(Sender: TObject);
begin
  xWhere:='ASOTIPID='''+dblcTipo.Text+'''';
  edtTipoAso.Text:=DM1.DisplayDescrip('prvSQL','APO107','ASOTIPDES',xWhere,'ASOTIPDES');
end;

procedure TFAsociados.dblcUSEExit(Sender: TObject);
begin
  xWhere:='USEID='''+dblcUSE.Text+'''';
  edtUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');
  {sSQL := 'SELECT * '+
          'FROM APO103 WHERE UPROID='+''''+dblcUProceso.Text+''''+
          'ORDER BY UPAGOID';

  DM1.FiltraCDS(DM1.cdsUPago,sSQL);

  xWhere:='UPAGOID ='''+dblcUPago.Text+'''';
  edtUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');}
end;

procedure TFAsociados.dblcUPagoExit(Sender: TObject);
begin
  xWhere:='UPAGOID ='''+dblcUPago.Text+'''';
  edtUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');
end;

procedure TFAsociados.dblcUProcesoExit(Sender: TObject);
begin
  DM1.cdsAso.FieldByName('USEID').Clear;
  edtUSE.Text:='';

  xWhere:='UPROID='''+dblcUProceso.Text+'''';
  edtUProceso.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');

  sSQL := 'SELECT * '+
          'FROM APO101 WHERE UPROCID='+''''+dblcUProceso.Text+''''+
          ' ORDER BY USEID';
  DM1.FiltraCDS(DM1.cdsUSES,sSQL);

  DM1.cdsAso.FieldByName('USEID').Clear;
  edtUSE.Text:='';

  xWhere:='USEID='''+dblcUSE.Text+'''';
  edtUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');
end;

procedure TFAsociados.dblcRegimenExit(Sender: TObject);
begin
  xWhere:='REGPENID='''+dblcRegimen.Text+'''';
  edtRegimen.Text:=DM1.DisplayDescrip('prvSQL','APO105','REGPENDES',xWhere,'REGPENDES');
end;

procedure TFAsociados.dblcEstCivilExit(Sender: TObject);
begin
  xWhere:='ESTCIVID='''+dblcEstCivil.Text+'''';
  edtEstCivil.Text:=DM1.DisplayDescrip('prvSQL','TGE125','ESTCIVDES',xWhere,'ESTCIVDES');
end;

procedure TFAsociados.dblcTipoDocExit(Sender: TObject);
begin
  xWhere:='TIPDOCCOD='''+dblcTipoDoc.Text+'''';
  edtTipoDoc.Text:=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',xWhere,'TIPDOCDES');
end;

procedure TFAsociados.dblcLugarNacExit(Sender: TObject);
begin
  xWhere:='UBIGEOID='''+dblcLugarNac.Text+'''';
  edtLugarNac.Text:=DM1.DisplayDescrip('prvSQL','TGE147','UBIGEODES',xWhere,'UBIGEODES');
end;

procedure TFAsociados.dblcdNacionalidadExit(Sender: TObject);
begin
  xWhere:='PAISID='''+dblcdNacionalidad.Text+'''';
  edtNacionalidad.Text:=DM1.DisplayDescrip('prvSQL','TGE118','PAISABR',xWhere,'PAISABR');
end;

procedure TFAsociados.dblcGradoAcadExit(Sender: TObject);
begin
  xWhere:='GRAACID='''+dblcGradoAcad.Text+'''';
  edtGradoAcad.Text:=DM1.DisplayDescrip('prvSQL','TGE123','GRAACDES',xWhere,'GRAACDES');
end;

procedure TFAsociados.dblcGradoInsExit(Sender: TObject);
begin
  xWhere:='GRAINSID='''+dblcGradoIns.Text+'''';
  edtGradoIns.Text:=DM1.DisplayDescrip('prvSQL','TGE119','GRAINSDES',xWhere,'GRAINSDES');
end;

procedure TFAsociados.dblcdProfesionExit(Sender: TObject);
begin
  xWhere:='PROFID='''+dblcdProfesion.Text+'''';
  edtProfesion.Text:=DM1.DisplayDescrip('prvSQL','TGE124','PROFDES',xWhere,'PROFDES');
end;

procedure TFAsociados.dblcTipoViaExit(Sender: TObject);
begin
  xWhere:='TIPVIAID='''+dblcTipoVia.Text+'''';
  edtTipoVia.Text:=DM1.DisplayDescrip('prvSQL','TGE145','TIPVIADES',xWhere,'TIPVIADES');
end;

procedure TFAsociados.dblcTipoZonaExit(Sender: TObject);
begin
  xWhere:='TIPZONAID='''+dblcTipoZona.Text+'''';
  edtZona.Text:=DM1.DisplayDescrip('prvSQL','TGE146','TIPZONADES',xWhere,'TIPZONADES');
end;

procedure TFAsociados.dblcdDistritoExit(Sender: TObject);
begin
  If Trim(dblcdDistrito.Text)<>'' Then
  Begin
    edtDistrito.Text:=DM1.cdsDist.FieldByName('ZIPDES').AsString;
    edtUbigeo.Text  :=dblcdDepto.Text+dblcdCiudad.Text+dblcdDistrito.Text;
  End
  Else
  Begin
    edtDistrito.Clear;
  End;
end;

procedure TFAsociados.dblcdCiudadExit(Sender: TObject);
begin
  If Trim(dblcdCiudad.Text)<>'' Then
  Begin
    edtProvincia.Text:=DM1.CdsProvin.FieldByName('CIUDDES').AsString;
    sSQL := 'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 '+
            ' WHERE CIUDID='+''''+dblcdCiudad.Text+''' AND'+
            ' DPTOID='+''''+dblcdDepto.Text+''''+
            ' ORDER BY DPTOID,CIUDID,ZIPID';
  End
  Else
  Begin
    edtProvincia.Clear;
    sSQL := ' SELECT ZIPID,ZIPDES,CIUDID,DPTOID '+
            ' FROM APO122 '+
            ' ORDER BY DPTOID,CIUDID,ZIPID';
  End;
  DM1.FiltraCDS(DM1.cdsDist,sSQL);
  DM1.cdsAso.FieldByName('ZIPID').Clear;
  edtDistrito.Clear;
  DM1.cdsAso.FieldByName('UBIGEOID').Clear;
end;

procedure TFAsociados.dblcdDeptoExit(Sender: TObject);
begin
  If Trim(dblcdDepto.Text)<>'' then
  Begin
    edtDepto.Text:=DM1.cdsDpto.FieldByName('DPTODES').AsString;
    sSQL := 'SELECT CIUDID,CIUDDES,DPTOID FROM APO123'+
            ' WHERE DPTOID='+''''+dblcdDepto.Text+''''+
            ' ORDER BY DPTOID,CIUDID';
  End
  Else
  Begin
    edtDepto.Clear;
    DM1.FiltraCDS(DM1.cdsDist,'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 ORDER BY DPTOID,CIUDID,ZIPID');
    sSQL := 'SELECT CIUDID,CIUDDES,DPTOID FROM APO123 ORDER BY DPTOID,CIUDID';
  End;
  DM1.FiltraCDS(DM1.cdsProvin,sSQL);
  DM1.cdsAso.FieldByName('CIUDID').Clear;  edtProvincia.Clear;
  DM1.cdsAso.FieldByName('ZIPID').Clear; edtDistrito.Clear;
  DM1.cdsAso.FieldByName('UBIGEOID').Clear;
  edtUbigeo.Text  :='';
end;

procedure TFAsociados.sbtnDLabClick(Sender: TObject);
begin
	Try
  	FDLab:=TFDLab.Create(Self);
    FDLab.ShowModal;
  Finally
  	FDLab.Free;
  End;
end;

procedure TFAsociados.sbtnDFamClick(Sender: TObject);
begin
  try
    FDFam:=TFDFam.Create(Self);
    FDFam.ShowModal;
  finally
    FDFam.Free;
  end;
end;

procedure TFAsociados.sbtnAportesClick(Sender: TObject);
begin
 try
    FDAportes:=TFDAportes.Create(Self);
    FDAportes.ShowModal;
  finally
    FDAportes.Free;
  end;
end;

procedure TFAsociados.sbtnCtaIndClick(Sender: TObject);
begin
 try
    FDCtaInd:=TFDCtaInd.Create(Self);
    FDCtaInd.ShowModal;
  finally
    FDCtaInd.Free;
  end;

end;

procedure TFAsociados.sbtnResolClick(Sender: TObject);
begin
{  try
    FResoluciones:=TFResoluciones.Create(Self);
    FResoluciones.ShowModal;
  finally
    FResoluciones.Free;
  end;
}  
end;

procedure TFAsociados.sbtnCtasBancClick(Sender: TObject);
begin
{ try
    FDCtasBcos:=TFDCtasBcos.Create(Self);
    FDCtasBcos.ShowModal;
  finally
    FDCtasBcos.Free;
  end;
}  
end;

procedure TFAsociados.sbtnSituClick(Sender: TObject);
begin
 try
    FDSituaciones:=TFDSituaciones.Create(Self);
    FDSituaciones.ShowModal;
  finally
    FDSituaciones.Free;
  end;
end;

procedure TFAsociados.sbtnFirmaClick(Sender: TObject);
begin
 try
    FDFirmaHuella:=TFDFirmaHuella.Create(Self);
    FDFirmaHuella.ShowModal;
  finally
    FDFirmaHuella.Free;
  end;
end;

procedure TFAsociados.sbtnAceptarClick(Sender: TObject);
var
  xAsoApePat : string;
begin
  if (DM1.cdsAso.Modified) or (DM1.cdsAso.ChangeCount > 0)  Then
  begin
    DM1.cdsAso.Edit;
    If (DM1.wModo='A') or (DM1.wModo='M') Then
    Begin
      If Not ValidaPrincipalAso then exit;
      If Not ValidaDatosPerAso then exit;
      If Not ValidaDomicilioAso then exit;
      //If Not ValidaAcademicosAso then exit;
      // Verifica Si existe Asociado
      Screen.Cursor:=crHourGlass;
      If DM1.wModo='A' then
      Begin
        xWhere:='ASOAPENOM='''+TRIM(dbeNombre.Text)+'''';
        xAsoApePat:=DM1.DisplayDescrip('prvSQL','APO201','ASOAPENOM',xWhere,'ASOAPENOM');
        If (DM1.cdsQry.RecordCount>0) Then
        Begin
          If MessageDlg('El Asociado que Ingreso ya se encuentra Registrado ¿Desea Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          Begin
            DM1.cdsAso.Cancel;
            DM1.cdsAso.CancelUpdates;
            sbtnAceptar.SetFocus;
            Exit;
          End;
        End;
      End;
      // Fin Verifica
      DM1.cdsAso.FieldByName('ASOFLUGING').AsString:='S';
      DM1.cdsAso.FieldByName('ASOAPENOM').AsString:=TRIM(DM1.cdsAso.FieldByName('ASOAPEPAT').AsString)+' '+TRIM(DM1.cdsAso.FieldByName('ASOAPEMAT').AsString)+' '+TRIM(DM1.cdsAso.FieldByName('ASONOMBRES').AsString);
      DM1.cdsAso.FieldByName('ASODIR').AsString:=TRIM(edtTipoVia.text+' '+dbeNombreVia.text+' '+dbeNroDireccion.Text+' '+dbeDpto.Text+' '+edtZona.Text+' '+dbeNombreZona.Text+' ,'+edtDistrito.Text);

      DM1.cdsAso.FieldByName('ASOTIPID').AsString:=dblcTipo.Text;
      DM1.cdsAso.FieldByName('ASOSITID').AsString:=dblcSituacion.Text;
      DM1.cdsAso.FieldByName('ASOCODAUX').AsString:=DM1.StrZero(DM1.BuscaCodMod('APO201',dbeCodMod.Text),2);
      DM1.cdsAso.FieldByName('USUARIO').AsString:=dm1.wUsuario;
      DM1.cdsAso.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;;
      DM1.cdsAso.FieldByName('FREG').AsDateTime:=Date;
      cdsPost(DM1.cdsAso);
      DM1.cdsAso.Post;
      DM1.ControlTran;
      If DM1.wModo='M' then
      Begin
        if DM1.cdsAso.FieldByName('ASOAPENOM').AsString <> wNomAnt then
        begin
          xSQL := 'UPDATE APO207 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE APO301 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE CRE301 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+' '+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE CRE302 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+' '+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE CRE303 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+' '+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE CRE306 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+' '+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        end;
      End;
      pcAsociados.ActivePage:=tsDPer;
      Screen.Cursor:=crDefault;
      ShowMessage('Registro Grabado');
    end;
  end;
end;

procedure TFAsociados.sbtnNuevoClick(Sender: TObject);
begin
  If (DM1.cdsAso.Modified) or (DM1.cdsAso.ChangeCount > 0)  Then
  Begin
    DM1.cdsAso.Edit;
    If MessageDlg('Desea Guardar los Datos', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      sbtnAceptar.SetFocus;
      exit;
    End;
  End
  Else
  Begin
    DM1.wModo := 'A';
    dblcdCodigo.Visible:=False;
    dbeCodigo.Visible:=True;
    dbeCodMod.Visible:=True;
    dbeCodMod.SetFocus;
    dblcdCodMod.Visible:=False;
    dbeCodigo.Enabled:=False;
    dblcSituacion.Text:='01';
    dblcTipo.Text:='DO';
    dblcdNacionalidad.Text:='01';
    dblcSituacion.Enabled:=False;
    dblcTipo.Enabled:=False;
    sbtnNuevo.Visible:=True;
    LimpiaEdits;

    DM1.cdsAso.Insert;
    DM1.cdsAso.FieldByName('ASOID').AsString:=dm1.StrZero(DM1.MaxSQL('APO201','ASOID',''),xLogAsoid);
    FAsociados.dbeCodigo.Text:=DM1.cdsAso.FieldByName('ASOID').AsString;
  End;
end;

procedure TFAsociados.sbtnCancelarClick(Sender: TObject);
begin
  Close;
end;

function TFAsociados.ValidaDatosPerAso:Boolean;
var
	Present: TDateTime;
  Year,ActYear,Mes,ActMes,Dia: Word;
begin
	result:=False;
  //*** Valida Datos Personales
  //Valida fecha
  Present:= Now;
  DecodeDate(Present,Year,Mes,Dia);
  Year:=Year-16;
  Present:=dbdtpFechaNac.Date;
  DecodeDate(Present, ActYear,ActMes,Dia);
  if ActYear>Year then
  begin
  	ShowMessage('La fecha debe ser válida');
    pcAsociados.ActivePage:=tsDPer;
    dbdtpFechaNac.SetFocus;
    exit;
  end;
  //Fin valida fecha

  If length(edtSexo.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Sexo del Asociado');
    pcAsociados.ActivePage:=tsDPer;
    dblcSexo.SetFocus;
    exit;
  End;
  If length(edtNacionalidad.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Nacionalidad del Asociado');
    pcAsociados.ActivePage:=tsDPer;
    dblcdNacionalidad.SetFocus;
    exit;
  End;
  {If length(edtEstCivil.Text)=0 Then Begin
    ShowMessage('Seleccione el Estado Civil del Asociado');
    pcAsociados.ActivePage:=tsDPer;
    dblcEstCivil.SetFocus;
    exit;
  End;}
  //****Valida Documentos de Identificación y Números, Nacionalidad

  If dblcdNacionalidad.Text= '01' then
  begin
  	If (length(dbeNroDNI.Text)=0) And (length(edtTipoDoc.Text)=0) And (length(dbeNroDoc.Text)=0) Then
    Begin
    	ShowMessage('Registre el Número de D.N.I. o L.E. ');
      pcAsociados.ActivePage:=tsDPer;
      dbeNroDNI.SetFocus;
      exit;
    End;
    If (length(dbeNroDNI.Text)=0) And (length(edtTipoDoc.Text)<>0) And (length(dbeNroDoc.Text)=0) Then
    Begin
    	ShowMessage('Registre el Número del Documento seleccionado ');
      pcAsociados.ActivePage:=tsDPer;
      dbeNroDoc.Text;
      exit;
    End;
    If (length(dbeNroDNI.Text)=0) And (length(edtTipoDoc.Text)=0) And (length(dbeNroDoc.Text)<>0) Then
    Begin
    	ShowMessage('Seleccione el Tipo de Documento');
      pcAsociados.ActivePage:=tsDPer;
      dblcTipoDoc.SetFocus;
      exit;
    End;
    If (length(dbeNroDNI.Text)<>0) And (length(edtTipoDoc.Text)<>0) And (length(dbeNroDoc.Text)=0) Then
    Begin
    	ShowMessage('Registre el Número del Documento seleccionado ');
      pcAsociados.ActivePage:=tsDPer;
      dbeNroDoc.Text;
      exit;
    End;
    If (length(dbeNroDNI.Text)<>0) Then
    Begin
    	If (length(dbeNroDNI.Text)<8) Or (length(dbeNroDNI.Text)>8) then
      Begin
      	ShowMessage('Ingrese un Número de D.N.I. o L.E. válido');
        dbeNroDNI.SetFocus;
        exit;
      End;
    End;
  End
  Else
  Begin
  	///Nacionalidad Vacia
    If (length(edtTipoDoc.Text)=0) And (length(dbeNroDoc.Text)=0) Then
    Begin
    	ShowMessage('Seleccione el Tipo de Documento');
      pcAsociados.ActivePage:=tsDPer;
      dblcTipoDoc.SetFocus;
      exit;
    End;
    If (length(edtTipoDoc.Text)=0) And (length(dbeNroDoc.Text)<>0) Then
    Begin
    	ShowMessage('Seleccione el Tipo de Documento');
      pcAsociados.ActivePage:=tsDPer;
      dblcTipoDoc.SetFocus;
      exit;
    End;
    If (Length(edtTipoDoc.Text)<>0) And (length(dbeNroDoc.Text)=0) Then
    Begin
      ShowMessage('Registre el Número del Documento seleccionado ');
      pcAsociados.ActivePage:=tsDPer;
      dbeNroDoc.Text;
      exit;
    End
  End;
  //****Valida Documentos de Identificación y Números, Nacioanlidad}
  If length(edtRegimen.Text)=0 Then
  Begin
  	ShowMessage('Seleccione el Regimen de Pension');
    dblcRegimen.SetFocus;
    exit;
  End;
  Result:=True;
  //*** Fin Valida Datos Personales
end;

function TFAsociados.ValidaDomicilioAso:Boolean;
begin
  Result:=False;
  //*** Valida Domicilio
  pcAsociados.ActivePage:=tsDDom;

  {If length(dbeDireccion.Text)=0 Then Begin
    ShowMessage('Registre la Dirección Asociado');
    dbeDireccion.SetFocus;
    exit;
  End;}
  If Length(edtTipoVia.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Tipo de Via del Domicilio del Asociado');
    dblcTipoVia.SetFocus;
    exit;
  End;
  If Length(dbeNombreVia.Text)=0 Then
  Begin
    ShowMessage('Registre el Nombre de la Via del Domicilio del Asociado');
    dbeNombreVia.SetFocus;
    exit;
  End;
  If Length(dbeNroDireccion.Text)=0 Then
  Begin
    ShowMessage('Registre el Número del Domicilio del Asociado');
    dbeNroDireccion.SetFocus;
    exit;
  End;
  {If Length(edtZona.Text)=0 Then Begin
    ShowMessage('Seleccione el Tipo de Zona del Domicilio del Asociado');
    dblcTipoZona.SetFocus;
    exit;
  End;
  If Length(dbeNombreZona.Text)=0 Then Begin
    ShowMessage('Registre el Nombre de la Zona del Domicilio del Asociado');
    dbeNombreZona.SetFocus;
    exit;
  End;}
  If Length(edtDepto.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Departamento del Domicilio del Asociado');
    dblcdDepto.SetFocus;
    exit;
  End;
  If Length(edtProvincia.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Provincia del Domicilio del Asociado');
    dblcdCiudad.SetFocus;
    exit;
  End;
  If Length(edtDistrito.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Distrito del Domicilio del Asociado');
    dblcdDistrito.SetFocus;
    exit;
  End;
  {If Length(edtUbigeo.Text)=0 Then Begin
    ShowMessage('Seleccione el Ubigeo del Domicilio del Asociado');
    dblcdUbigeo.SetFocus;
    exit;
  End;}
  Result:=true;
end;

//function TFAsociados.ValidaLaboralesAso:Boolean;
//begin
  //*** Valida Datos Laborales
  //result:=False;
  {pcAsociados.ActivePage:=tsDLab;
  If Length(dbeCodigoPago.Text)=0 Then Begin
    ShowMessage('Registre el Código de Pago del Asociado');
    dbeCodigoPago.SetFocus;
    exit;
  End;

  If Length(edtUPago.Text)=0 Then Begin
    ShowMessage('Seleccione la Unidad de Pago');
    dblcUPago.SetFocus;
    exit;
  End;

  If Length(edtRegimen.Text)=0 Then Begin
    ShowMessage('Seleccione el Regimen de Pension');
    dblcRegimen.SetFocus;
    exit;
  End;

  If Length(edtResolDescrip.Text)=0 Then Begin
    ShowMessage('Seleccione el Tipo de Resolución');
    dblcRTipResol.SetFocus;
    exit;
  End;

  If Length(dbeResolucion.Text)=0 Then Begin
    ShowMessage('Registre la Resolución de Nombramiento');
    dbeResolucion.SetFocus;
    exit;
  End;
  //Valida fecha
  If Length(dbdtpFecha.Text)=0 Then Begin
    ShowMessage('Seleccione la Fecha de Nombramiento');
    dbdtpFecha.SetFocus;
    exit;
  End
  Else
  Begin
      Present:= Now;
      DecodeDate(Present,Year,Mes,Dia);
      Year:=Year;

      Present:=dbdtpFecha.Date;
      DecodeDate(Present, ActYear,ActMes,Dia);

      If ActYear>Year then
      begin
        ShowMessage('Ingrese un Fecha de Nombramiento valida');
        pcAsociados.ActivePage:=tsDLab;
        dbdtpFecha.SetFocus;
        exit;
      end;
  End;
  //* Fin Valida Fecha
  result:=true;
  //*** Valida Datos Laborales}
//end;

procedure TFAsociados.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFAsociados.dblcSexoExit(Sender: TObject);
begin
  If dblcSexo.Text='M' Then edtSexo.Text:='MASCULINO';
  If dblcSexo.Text='F' Then edtSexo.Text:='FEMENINO';
  iF Length(dblcSexo.Text)=0 then edtSexo.Text:='';
end;

Procedure TFAsociados.LimpiaEdits;
begin
  // DisplayDescrip Maestro de Asociados
  edtSituacion.Text:='';
  edtTipoAso.Text:='';
  edtUSE.Text:='';
  edtUPago.Text:='';
  edtUProceso.Text:='';
  edtRegimen.Text:='';
  edtEstCivil.Text:='';
  edtTipoDoc.Text:='';
  edtLugarNac.Text:='';
  edtNacionalidad.Text:='';
  edtGradoAcad.Text:='';
  edtGradoIns.Text:='';
  edtProfesion.Text:='';
  edtTipoVia.Text:='';
  edtZona.Text:='';
  edtDistrito.Text:='';
  edtDepto.Text:='';
  edtProvincia.Text:='';
  If dblcSexo.Text='' Then edtSexo.Text:='';
  If dblcSexo.Text='M' Then edtSexo.Text:='MASCULINO';
  If dblcSexo.Text='F' Then edtSexo.Text:='FEMENINO';
end;

procedure TFAsociados.dbeNombresExit(Sender: TObject);
begin
  if Length(Trim(dbeApePaterno.Text))<>0 Then
  begin
    if Length(Trim(dbeApeMaterno.Text))<>0 Then
    begin
      if Length(Trim(dbeNombres.Text))<>0 Then
      begin
        dbeNombre.Text:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
        DM1.cdsAso.FieldByName('ASOAPENOM').AsString:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
      end;
    end;
  end;
end;

procedure TFAsociados.DisplayDescrips;
Begin
	// DisplayDescrip Maestro de Asociados
  if DM1.wModo='M' then
  begin
      xWhere:='ASOSITID='''+dblcSituacion.Text+'''';
      edtSituacion.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');

      xWhere:='ASOTIPID='''+dblcTipo.Text+'''';
      edtTipoAso.Text:=DM1.DisplayDescrip('prvSQL','APO107','ASOTIPDES',xWhere,'ASOTIPDES');

       xWhere:='PAISID='''+dblcdNacionalidad.Text+'''';
      edtNacionalidad.Text:=DM1.DisplayDescrip('prvSQL','TGE118','PAISABR',xWhere,'PAISABR');
  end;

  xWhere:='SITCTAID='''+dblcdSit.Text+'''';
  edtSitCtaBco.Text:=DM1.DisplayDescrip('prvSQL','COB103','SITCTADES',xWhere,'SITCTADES');

  xWhere:='BANCOID='''+dblcdBco.Text+'''';
  edtBanco.Text:=DM1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xWhere,'BANCONOM');

  xWhere:='ESTCIVID='''+dblcEstCivil.Text+'''';
  edtEstCivil.Text:=DM1.DisplayDescrip('prvSQL','TGE125','ESTCIVDES',xWhere,'ESTCIVDES');

  xWhere:='TIPDOCCOD='''+dblcTipoDoc.Text+'''';
  edtTipoDoc.Text:=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',xWhere,'TIPDOCDES');

  xWhere:='UBIGEOID='''+dblcLugarNac.Text+'''';
  edtLugarNac.Text:=DM1.DisplayDescrip('prvSQL','TGE147','UBIGEODES',xWhere,'UBIGEODES');

  xWhere:='GRAACID='''+dblcGradoAcad.Text+'''';
  edtGradoAcad.Text:=DM1.DisplayDescrip('prvSQL','TGE123','GRAACDES',xWhere,'GRAACDES');

  xWhere:='GRAINSID='''+dblcGradoIns.Text+'''';
  edtGradoIns.Text:=DM1.DisplayDescrip('prvSQL','TGE119','GRAINSDES',xWhere,'GRAINSDES');

  xWhere:='PROFID='''+dblcdProfesion.Text+'''';
  edtProfesion.Text:=DM1.DisplayDescrip('prvSQL','TGE124','PROFDES',xWhere,'PROFDES');

  xWhere:='TIPVIAID='''+dblcTipoVia.Text+'''';
  edtTipoVia.Text:=DM1.DisplayDescrip('prvSQL','TGE145','TIPVIADES',xWhere,'TIPVIADES');

  xWhere:='TIPZONAID='''+dblcTipoZona.Text+'''';
  edtZona.Text:=DM1.DisplayDescrip('prvSQL','TGE146','TIPZONADES',xWhere,'TIPZONADES');

  xWhere:='DPTOID='''+dblcdDepto.Text+'''';
  edtDepto.Text:=DM1.DisplayDescrip('prvSQL','APO158','DPTODES',xWhere,'DPTODES');

  xWhere:='CIUDID='''+dblcdCiudad.Text+'''';
  edtProvincia.Text:=DM1.DisplayDescrip('prvSQL','APO123','CIUDDES',xWhere,'CIUDDES');

  xWhere:='REGPENID='''+dblcRegimen.Text+'''';
  edtRegimen.Text:=DM1.DisplayDescrip('prvSQL','APO105','REGPENDES',xWhere,'REGPENDES');

  xWhere:='UPROID='''+dblcUProceso.Text+'''';
  edtUProceso.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');

  xWhere:='USEID='''+dblcUSE.Text+'''';
  edtUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');

  xWhere:='UPAGOID ='''+dblcUPago.Text+'''';
  edtUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');

  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtResolDescrip.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');

  If dblcSexo.Text='M' Then
  Begin
    edtSexo.Text:='MASCULINO';
  End;
  If dblcSexo.Text='F' Then
  Begin
    edtSexo.Text:='FEMENINO';
  End;
  If Length(dblcSexo.Text)=0 Then
  Begin
    edtSexo.Text:='';
  End;
  xWhere:='BANCOID='''+dblcdBco.Text+'''';
  edtBanco.Text:=DM1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xWhere,'BANCONOM');
  xWhere:='ZIPID='''+dblcdDistrito.Text+'''';
  edtDistrito.Text:=DM1.DisplayDescrip('prvSQL','APO122','ZIPDES,CIUDID',xWhere,'ZIPDES');
  // Fin DisplayDescrip Maestro de Asociados
End;

procedure TFAsociados.dblcdCodigoExit(Sender: TObject);
begin
  DisplayDescrips;
end;

procedure TFAsociados.dblcdCodModExit(Sender: TObject);
begin
  DisplayDescrips;
end;

procedure TFAsociados.dbeApeMaternoExit(Sender: TObject);
begin
  If length(Trim(dbeApePaterno.Text))<>0 Then
  Begin
    If length(Trim(dbeApeMaterno.Text))<>0 Then
    Begin
      If length(Trim(dbeNombres.Text))<>0 Then
      Begin
        dbeNombre.Text:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
        DM1.cdsAso.FieldByName('ASOAPENOM').AsString:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
      End;
    End;
  End;
end;

procedure TFAsociados.dbeApePaternoExit(Sender: TObject);
begin
  If length(Trim(dbeApePaterno.Text))<>0 Then
  Begin
    If length(Trim(dbeApeMaterno.Text))<>0 Then
    Begin
      If length(Trim(dbeNombres.Text))<>0 Then
      Begin
        dbeNombre.Text:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
        DM1.cdsAso.FieldByName('ASOAPENOM').AsString:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
      End;
    End;
  End;
end;

procedure TFAsociados.dblcRTipResolExit(Sender: TObject);
begin
  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtResolDescrip.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');
end;

procedure TFAsociados.dbeNroDNIExit(Sender: TObject);
begin
  If (length(dbeNroDNI.Text)<8) And (length(dbeNroDNI.Text)>8) Then
  Begin
    ShowMessage('Registre Correctamente el Número de D.N.I.');
    dbeNroDNI.SetFocus;
    exit;
  End;
  DM1.cdsAso.FieldByName('ASODOCNUM').AsString:=DM1.cdsAso.FieldByName('ASODNI').AsString
end;

procedure TFAsociados.dblcdCodigoCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  dblcdCodigo.Text:=DM1.cdsAso.FieldByName('ASOID').AsString;
end;

procedure TFAsociados.dbeNroRUCExit(Sender: TObject);
begin
  If length(Trim(dbeNroRUC.Text))=11 Then
  Begin
  End
  else
  begin
    ShowMessage('Registre Correctamente el R.U.C.');
    dbeNroDNI.SetFocus;
    exit;
  end;
end;

{function TFAsociados.ValidaAcademicosAso:Boolean;
Begin

End;}

procedure TFAsociados.sbtnDSocioEClick(Sender: TObject);
begin
  try
    FDSocioEco:=TFDSocioEco.Create(Self);
    FDSocioEco.ShowModal;
  finally
    FDSocioEco.Free;
  end;
end;

procedure TFAsociados.dblcdBcoExit(Sender: TObject);
begin
  xWhere:='BANCOID='''+dblcdBco.Text+'''';
  edtBanco.Text:=DM1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xWhere,'BANCONOM');
end;

procedure TFAsociados.dblcdSitExit(Sender: TObject);
begin
  edtSitCtaBco.Text:=DM1.DisplayDescrip('prvSQL','COB103','SITCTADES','SITCTAID='''+dblcdSit.Text+'''','SITCTADES');
end;

end.
