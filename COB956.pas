// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB956
// Formulario                    : fRepExtornos
// Fecha de Creación             :
// Autor                         : Equipo de sistemas
// Objetivo                      : REPORTE DE EXTORNOS
// Actualizaciones:
// -----------------------------------------------------------------------
// Actualizaciones
// HPC_201217_COB  Añade Columnas de FPD
// DPP_201212_COB : Pase a producción a partir del pase HPC_201217
// HPC_201301_COB : 03/01/2013 RMEDINA Se añade una condicion para que no tome solo los pagos extornados  
// SPP_201301_COB : Se realiza el pase a producción a partir del HPC_201301_COB
// HPC_201615_COB : Exportar a Excel
// HPC_201718_COB : Adecuación de Reporte de Extorno

unit COB956;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppPrnabl, ppCtrls, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, StdCtrls, Buttons, ExtCtrls,
  wwdbdatetimepicker, ppVar, Mask, wwdblook, Wwdbdlg, Grids, Wwdbigrd,
// HPC_201718_COB
// Adecuación de Reporte de Extorno
  Wwdbgrid, ppParameter, DBGrids, ppEndUsr;
// HPC_201718_COB : Adecuación de Reporte de Extorno
type
  TfRepExtornos = class(TForm)
    btnsalir: TBitBtn;
    btnimprime: TBitBtn;
    ppbdereporte: TppBDEPipeline;
    ppRCuoExtor: TppReport;
    ppRPreExtor: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtpFechaIni: TwwDBDateTimePicker;
    dtpFechaFin: TwwDBDateTimePicker;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppShape1: TppShape;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppShape2: TppShape;
    ppLabel11: TppLabel;
    ppDBText3: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel12: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLfecIni: TppLabel;
    ppLfecFin: TppLabel;
    ppLabel17: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine4: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLFecIni2: TppLabel;
    ppLFecFin2: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppShape4: TppShape;
    ppDBCalc5: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel23: TppLabel;
    ppDBText24: TppDBText;
    ppShape5: TppShape;
    ppLabel34: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    btnprocesar: TBitBtn;
    rdgExtorno: TRadioGroup;
    Label1: TLabel;
    Label4: TLabel;
    dblcdforpag: TwwDBLookupComboDlg;
    dblcdusureg: TwwDBLookupComboDlg;
    pnlforpag: TPanel;
    meforpag: TMaskEdit;
    pnlusureg: TPanel;
    meusureg: TMaskEdit;
    dbgprevio: TwwDBGrid;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText25: TppDBText;
    ppShape6: TppShape;
    ppDBText28: TppDBText;
    ppShape7: TppShape;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppShape8: TppShape;
    ppLabel35: TppLabel;
    ppShape9: TppShape;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLabel43: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBText32: TppDBText;
    ppDBText16: TppDBText;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppParameterList1: TppParameterList;
    ppLabel9: TppLabel;
    ppDBText31: TppDBText;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
//Inicio HPC_201718_COB
//Adecuación de Reporte de Extorno
    ppD1: TppDesigner;
//Final HPC_201718_COB
//Inicio HPC_201615_COB
//Se adiciona componentes para exporta a excel
    btnaexcel: TBitBtn;
    DTGDATA: TDBGrid;
//Final HPC_201615_COB
    procedure FormActivate(Sender: TObject);
    procedure dblcdforpagChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdusuregChange(Sender: TObject);
    procedure btnprocesarClick(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure btnimprimeClick(Sender: TObject);
    procedure rdgExtornoClick(Sender: TObject);
    procedure LimpiaGrid;
//Inicio HPC_201615_COB
//Para exportar a Excel
    procedure btnaexcelClick(Sender: TObject);
//Final HPC_201615_COB
  private
    { Private declarations }
  public
    { Public declarations }
//Inicio HPC_201615_COB
//Se define variable
    xSql:String;
//Final HPC_201615_COB
  end;

var
  fRepExtornos: TfRepExtornos;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfRepExtornos.FormActivate(Sender: TObject);
Var xSql:String;
begin

  rdgExtorno.ItemIndex := 1;

  xSql := 'SELECT FORPAGOID, FORPAGODES FROM COB101';
  DM1.cdsFormPago.Close;
  DM1.cdsFormPago.DataRequest(xSql);
  DM1.cdsFormPago.Open;
  dblcdforpag.LookupTable := DM1.cdsFormPago;
  dblcdforpag.LookupField := 'FORPAGOID';
  dblcdforpag.Selected.Clear;
  dblcdforpag.Selected.Add('FORPAGOID'#9'2'#9'Código'#9#9);
  dblcdforpag.Selected.Add('FORPAGODES'#9'25'#9'Descripción'#9#9);
  LimpiaGrid;
  xSql := 'SELECT USERID, UPPER(USERNOM) USERNOM FROM USERTABLE WHERE AREA = ''COB''';
  DM1.cdsUser.Close;
  DM1.cdsUser.DataRequest(xSql);
  DM1.cdsUser.Open;
  dblcdusureg.LookupTable := DM1.cdsUser;
  dblcdusureg.LookupField := 'USERID';
  dblcdusureg.Selected.Clear;
  dblcdusureg.Selected.Add('USERID'#9'15'#9'Código'#9#9);
  dblcdusureg.Selected.Add('USERNOM'#9'30'#9'Descripción'#9#9);
  rdgExtorno.SetFocus;

end;

procedure TfRepExtornos.dblcdforpagChange(Sender: TObject);
begin
  If Trim(dblcdforpag.Text) = '' Then
  Begin
    dblcdforpag.Text := '';
    meforpag.Text := '';
  End;
  If Length(dblcdforpag.Text) = 2 then
  Begin
    If DM1.cdsFormPago.Locate('FORPAGOID', dblcdforpag.Text, []) Then
      meforpag.Text := DM1.cdsFormPago.FieldByName('FORPAGODES').AsString
    Else
    Begin
      dblcdforpag.Text := '';
      meforpag.Text := '';
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdforpag.SetFocus;
      Exit;
    End;
  End;
end;

procedure TfRepExtornos.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TfRepExtornos.dblcdusuregChange(Sender: TObject);
begin

  If Trim(dblcdusureg.Text) = '' Then
  Begin
    dblcdusureg.Text := '';
    meusureg.Text := '';
  End;

  If DM1.cdsUser.Locate('USERID', dblcdusureg.Text, []) Then
    meusureg.Text := DM1.cdsUser.FieldByName('USERNOM').AsString
end;

Procedure TfRepExtornos.btnprocesarClick(Sender: TObject);
Begin
  If rdgExtorno.ItemIndex = 0 then
  Begin
    MessageDlg('OPCION NO IMPLEMENTADA!!! ', mtInformation,[mbOk],0);
    Exit;
    // 1 forma de pago 1 usuario
    If (dblcdforpag.Text <> '') And (dblcdusureg.Text <> '') Then
      xSql := 'SELECT B.USENOM,A.ASOCODMOD,A.ASOAPENOM,C.TIPCREDES,substr(A.CREDID,9,7) CREDID,A.CREMTOOTOR,A.CREMTONABO,A.CREMTOGIR,A.CNTANOMM,A.CNTFLAG,A.USUEXT,A.FECEXT'
      +' FROM COB913 A,APO101 B,CRE110 C WHERE TO_DATE(A.FECEXT)>= '+QuotedStr(dtpFechaIni.Text)+' AND TO_DATE(A.FECEXT)<= '+QuotedStr(dtpFechaFin.Text)
      +' AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+) AND A.TIPCREID=C.TIPCREID(+)'
      +' AND '
      +' ORDER BY B.USENOM,A.ASOAPENOM,A.FECEXT';
    // 1 forma de pago todos los usuarios
    If (dblcdforpag.Text <> '') And (dblcdusureg.Text = '') Then
    // todas las forma de pago 1 usuario
    If (dblcdforpag.Text = '') And (dblcdusureg.Text <> '') Then
    // todas las forma de pago todos los usuarios
    If (dblcdforpag.Text = '') And (dblcdusureg.Text = '') Then
  End;
  If rdgExtorno.ItemIndex = 1 Then
  Begin
    // 1 forma de pago 1 usuario
    If (dblcdforpag.Text <> '') And (dblcdusureg.Text <> '') Then
      xSql := 'SELECT C.FORPAGOID, C.FORPAGODES, B.USEID, B.USENOM,A.ASOCODMOD,A.ASOAPENOM,A.CREDID,A.CRECUOTA,A.CREFPAG,A.CREDOCPAG,A.CREFPAG,A.CREAMORT,'
      +' A.CREINTERES,A.MONCOBDESGRAV,A.CREFLAT,A.CREMTOCOB,A.FREG,A.FECANULA, A.USRANULA, UPPER(D.USERNOM) USERNOM, A.CNTANOMM,A.TIPOCONT'
//Inicio HPC_201718_COB
//Adecuación de Reporte de Reversos (Cuotas)
      +',A.CREMENANU,A.CREOBS '
//Final HPC_201718_COB
      +' FROM COB901 A,APO101 B,COB101 C, USERTABLE D WHERE CREESTID= ''04'' AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+)'
      +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
      +' AND A.FORPAGID=C.FORPAGOID(+) AND A.USRANULA = D.USERID AND TO_DATE(A.FECANULA)>='+QuotedStr(dtpFechaIni.Text)+' AND TO_DATE(a.FECANULA)<='+QuotedStr(dtpFechaFin.Text)
      +' AND A.USRANULA = '+QuotedStr(dblcdusureg.Text)+' AND A.FORPAGID = '+QuotedStr(dblcdforpag.Text)
      +' ORDER BY C.FORPAGOID, A.USRANULA, B.USEID, A.ASOAPENOM, A.FREG';
    // 1 forma de pago todos los usuarios
    If (dblcdforpag.Text <> '') And (dblcdusureg.Text = '') Then
      xSql := 'SELECT C.FORPAGOID, C.FORPAGODES, B.USEID, B.USENOM,A.ASOCODMOD,A.ASOAPENOM,A.CREDID,A.CRECUOTA,A.CREFPAG,A.CREDOCPAG,A.CREFPAG,A.CREAMORT,'
      +' A.CREINTERES,A.MONCOBDESGRAV,A.CREFLAT,A.CREMTOCOB,A.FREG,A.FECANULA, A.USRANULA, UPPER(D.USERNOM) USERNOM, A.CNTANOMM,A.TIPOCONT'
//Inicio HPC_201718_COB
//Adecuación de Reporte de Reversos (Cuotas)
      +',A.CREMENANU,A.CREOBS '
//Final HPC_201718_COB
      +' FROM COB901 A,APO101 B,COB101 C, USERTABLE D WHERE CREESTID= ''04'' AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+)'
      +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
      +' AND A.FORPAGID=C.FORPAGOID(+) AND A.USRANULA = D.USERID AND TO_DATE(A.FECANULA)>='+QuotedStr(dtpFechaIni.Text)+' AND TO_DATE(a.FECANULA)<='+QuotedStr(dtpFechaFin.Text)
      +' AND A.FORPAGID = '+QuotedStr(dblcdforpag.Text)
      +' ORDER BY C.FORPAGOID, A.USRANULA, B.USEID, A.ASOAPENOM, A.FREG';
    // todas las forma de pago 1 usuario
    If (dblcdforpag.Text = '') And (dblcdusureg.Text <> '') Then
      xSql := 'SELECT C.FORPAGOID, C.FORPAGODES, B.USEID, B.USENOM,A.ASOCODMOD,A.ASOAPENOM,A.CREDID,A.CRECUOTA,A.CREFPAG,A.CREDOCPAG,A.CREFPAG,A.CREAMORT,'
      +' A.CREINTERES,A.MONCOBDESGRAV,A.CREFLAT,A.CREMTOCOB,A.FREG,A.FECANULA, A.USRANULA, UPPER(D.USERNOM) USERNOM, A.CNTANOMM,A.TIPOCONT'
//Inicio HPC_201718_COB
//Adecuación de Reporte de Reversos (Cuotas)
      +',A.CREMENANU,A.CREOBS '
//Final HPC_201718_COB
      +' FROM COB901 A,APO101 B,COB101 C, USERTABLE D WHERE CREESTID= ''04'' AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+)'
      +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
      +' AND A.FORPAGID=C.FORPAGOID(+) AND A.USRANULA = D.USERID AND TO_DATE(A.FECANULA)>='+QuotedStr(dtpFechaIni.Text)+' AND TO_DATE(a.FECANULA)<='+QuotedStr(dtpFechaFin.Text)
      +' AND A.USRANULA = '+QuotedStr(dblcdusureg.Text)
      +' ORDER BY C.FORPAGOID, A.USRANULA, B.USEID, A.ASOAPENOM, A.FREG';
    // todas las forma de pago todos los usuarios
    If (dblcdforpag.Text = '') And (dblcdusureg.Text = '') Then
        xSql := 'SELECT C.FORPAGOID, C.FORPAGODES, B.USEID, B.USENOM,A.ASOCODMOD,A.ASOAPENOM,A.CREDID,A.CRECUOTA,A.CREFPAG,A.CREDOCPAG,A.CREFPAG,A.CREAMORT,'
      +' A.CREINTERES,A.MONCOBDESGRAV,A.CREFLAT,A.CREMTOCOB,A.FREG,A.FECANULA, A.USRANULA, UPPER(D.USERNOM) USERNOM, A.CNTANOMM,A.TIPOCONT'
//Inicio HPC_201718_COB
//Adecuación de Reporte de Reversos (Cuotas)
      +',A.CREMENANU,A.CREOBS '
//Final HPC_201718_COB
      +' FROM COB901 A,APO101 B,COB101 C, USERTABLE D WHERE CREESTID= ''04'' AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+)'
      +' AND A.FORPAGID=C.FORPAGOID(+) AND A.USRANULA = D.USERID AND TO_DATE(A.FECANULA)>='+QuotedStr(dtpFechaIni.Text)+' AND TO_DATE(a.FECANULA)<='+QuotedStr(dtpFechaFin.Text)
      +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
      +' ORDER BY C.FORPAGOID, A.USRANULA, B.USEID, A.ASOAPENOM, A.FREG';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.DataSource := DM1.dsReporte;
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
    dbgprevio.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos~y Nombres'#9#9);
    dbgprevio.Selected.Add('FORPAGODES'#9'30'#9'Forma de~Pago'#9#9);
    dbgprevio.Selected.Add('USENOM'#9'40'#9'Descripción~de la UGEL'#9#9);
    dbgprevio.Selected.Add('CREDID'#9'17'#9'Número~de Credito'#9#9);
    dbgprevio.Selected.Add('CRECUOTA'#9'4'#9'Cuota del~Crédito'#9#9);
    dbgprevio.Selected.Add('CREFPAG'#9'10'#9'Fecha de~pago'#9#9);
    dbgprevio.Selected.Add('CREDOCPAG'#9'10'#9'Documento~del Cuota'#9#9);
    dbgprevio.Selected.Add('CREAMORT'#9'10'#9'Amortización de~la Cuota'#9#9);
//Inicio HPC_201718_COB
//Adecuación de Reporte de Extorno
    dbgprevio.Selected.Add('CREINTERES'#9'10'#9'Interés~del Cuota'#9#9);
//Final HPC_201718_COB
    dbgprevio.Selected.Add('MONCOBDESGRAV'#9'10'#9'Fondo~Desgrav.'#9#9);
    dbgprevio.Selected.Add('CREFLAT'#9'10'#9'Gastos~del Cuota'#9#9);
    dbgprevio.Selected.Add('CREMTOCOB'#9'10'#9'Monto Cobrado~del Cuota'#9#9);
    dbgprevio.Selected.Add('FECANULA'#9'22'#9'Fecha de~Extorno'#9#9);
    dbgprevio.Selected.Add('USRANULA'#9'15'#9'Usuario que~Extorna'#9#9);
//Inicio HPC_201718_COB
//Adecuación de Reporte de Extorno
    dbgprevio.Selected.Add('CREMENANU'#9'250'#9'Motivo de~Anulación'#9#9);
    dbgprevio.Selected.Add('CREOBS'#9'500'#9'Observación~Adicional'#9#9);
//Final HPC_201718_COB    
    dbgprevio.ApplySelected;
    If DM1.cdsReporte.RecordCount=0 Then
    Begin
       MessageDlg('NO EXISTE INFORMACION PARA ESE RANGO !!!', mtError,[mbOk],0);
       Exit;
    End;

  End;






End;

procedure TfRepExtornos.btnsalirClick(Sender: TObject);
begin
  fRepExtornos.Close;
end;

procedure TfRepExtornos.btnimprimeClick(Sender: TObject);
begin
  If DM1.cdsReporte.RecordCount=0 Then
     Begin
        MessageDlg('NO EXISTE INFORMACION PARA ESE RANGO !!!', mtError,[mbOk],0);
        Exit;
     End;

  ppbdereporte.DataSource := DM1.dsReporte;
  ppLfecIni.Text := dtpFechaIni.Text;
  ppLfecFin.Text := dtpFechaFin.Text;
//Inicio HPC_201718_COB
//Adecuación de Reporte de Extorno
  ppD1.Report :=  ppRCuoExtor;
  //PPD1.ShowModal;
  ppRCuoExtor.Print;
//Final HPC_201718_COB

  If rdgExtorno.ItemIndex = 1 Then
  Begin
    // 1 forma de pago 1 usuario
    If (dblcdforpag.Text <> '') And (dblcdusureg.Text <> '') Then
    Begin

    End;
    // 1 forma de pago todos los usuarios
    If (dblcdforpag.Text <> '') And (dblcdusureg.Text = '') Then
    Begin
    End;
    // todas las forma de pago 1 usuario
    If (dblcdforpag.Text = '') And (dblcdusureg.Text <> '') Then
    Begin
    End;
    // todas las forma de pago todos los usuarios
    If (dblcdforpag.Text = '') And (dblcdusureg.Text = '') Then
    Begin
    End;
  End
  Else
  Begin
  End;
end;

Procedure TfRepExtornos.rdgExtornoClick(Sender: TObject);
Begin
  LimpiaGrid; dblcdforpag.Enabled := True;
  If rdgExtorno.ItemIndex = 0 Then
     Begin
        MessageDlg('OPCION NO IMPLEMENTADA!!! ', mtInformation,[mbOk],0);
        dblcdforpag.Enabled := False;
        rdgExtorno.ItemIndex := 1;
        Exit;
     End;

End;

procedure TfRepExtornos.LimpiaGrid;
var xSQL:String;
begin
  xSQL := 'SELECT C.FORPAGOID, C.FORPAGODES, B.USEID, B.USENOM,A.ASOCODMOD,A.ASOAPENOM,A.CREDID,A.CRECUOTA,A.CREFPAG,A.CREDOCPAG,A.CREFPAG,A.CREAMORT,'
      +' A.CREINTERES,A.MONCOBDESGRAV,A.CREFLAT,A.CREMTOCOB,A.FREG,A.FECANULA, A.USRANULA, UPPER(D.USERNOM) USERNOM, A.CNTANOMM,A.TIPOCONT'
//Inicio HPC_201718_COB
//Adecuación de Reporte de Extorno
      +',A.CREMENANU,A.CREOBS '
//Final HPC_201718_COB
      +' FROM COB901 A,APO101 B,COB101 C, USERTABLE D WHERE CREESTID= ''04'' AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+)'
      +' AND A.FORPAGID=C.FORPAGOID(+) AND A.USRANULA = D.USERID AND A.FECANULA IS NULL AND a.FECANULA IS NULL '
      +' ORDER BY C.FORPAGOID, A.USRANULA, B.USEID, A.ASOAPENOM, A.FREG';

    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.DataSource := DM1.dsReporte;
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
    dbgprevio.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos~y Nombres'#9#9);
    dbgprevio.Selected.Add('FORPAGODES'#9'30'#9'Forma de~Pago'#9#9);
    dbgprevio.Selected.Add('USENOM'#9'40'#9'Descripción~de la UGEL'#9#9);
//Inicio HPC_201718_COB
//Adecuación de Reporte de Extorno
    dbgprevio.Selected.Add('CREDID'#9'17'#9'Número~de Crédito'#9#9);
//Final HPC_201718_COB
    dbgprevio.Selected.Add('CRECUOTA'#9'4'#9'Cuota del~Crédito'#9#9);
    dbgprevio.Selected.Add('CREFPAG'#9'10'#9'Fecha de~pago'#9#9);
    dbgprevio.Selected.Add('CREDOCPAG'#9'10'#9'Documento~del Cuota'#9#9);
    dbgprevio.Selected.Add('CREAMORT'#9'10'#9'Amortización de~la Cuota'#9#9);
//Inicio HPC_201718_COB
//Adecuación de Reporte de Extorno
    dbgprevio.Selected.Add('CREINTERES'#9'10'#9'Interés~del Cuota'#9#9);
//Final HPC_201718_COB
    dbgprevio.Selected.Add('MONCOBDESGRAV'#9'10'#9'Fondo~Desgrav.'#9#9);
    dbgprevio.Selected.Add('CREFLAT'#9'10'#9'Gastos~del Cuota'#9#9);
    dbgprevio.Selected.Add('CREMTOCOB'#9'10'#9'Monto Cobrado~del Cuota'#9#9);
    dbgprevio.Selected.Add('FECANULA'#9'22'#9'Fecha de~Extorno'#9#9);
    dbgprevio.Selected.Add('USRANULA'#9'15'#9'Usuario que~Extorna'#9#9);
//Inicio HPC_201718_COB
//Adecuación de Reporte de Extorno
    dbgprevio.Selected.Add('CREMENANU'#9'250'#9'Motivo de~Anulación'#9#9);
    dbgprevio.Selected.Add('CREOBS'#9'500'#9'Observación~Adicional'#9#9);
//Final HPC_201718_COB
    dbgprevio.ApplySelected;


end;

//Inicio HPC_201615_COB
//Exporta a Excel
procedure TfRepExtornos.btnaexcelClick(Sender: TObject);
begin
   	try
         DM1.cdsReporte.DataRequest(xSql);
         DTGDATA.DataSource := DM1.dsReporte;
         Screen.Cursor := crHourGlass;
         DM1.HojaExcel('EXT.'+FormatDateTime('dd-mm-yyyy',dtpFechaIni.Date)+' AL '+FormatDateTime('dd-mm-yyyy',dtpFechaFin.Date),DM1.dsReporte, dtgData);
         Screen.Cursor := crDefault;
   	except
   	 on Ex: Exception do
   	  	 Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
 	   end;
end;
//Final HPC_201615_COB

end.
