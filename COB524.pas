// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB524                                                                                                  
// Formulario           : FCandidatosFSC
// Fecha de Creación    :
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Candidatos al Fondo Solidario de Contingencia
// Actualizaciones      :
// inicio: HPP_200944_COB por DFERNANDEZ
// Memorándum 820-2009-DM-COB - SAR-2009-0737 - DAD-DF-2009-0076
// Lista los candidatos al Fondo Solidario de Contingencia
//HPC_201504_COB        :14/01/2015 Se cambia la forma de calculo de los candidatos al FSC
//HPC_201524_COB        : Se adicionan dos pestañas para cancelación con el FSC, para asociados Interinos y Mayores o iguales a 65 años
//HPC_201605_COB        :Se adiciona boton de cierre de candidatos, para cerrar candidatos que no se procesaron.
//HPC_201702_COB        : Se adiciona condición en el boton filtrar para asociados INTERINOS reingresantes.
//HPC_201703_COB        : Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
//HPC_201709_COB        : Modificar los rangos de días de atraso
//HPC_201715_COB        : Realizar las mejoras en el proceso de generación de candidatos INTERINOS para ser cancelados con el F.S.C.
unit COB524;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdblook, Wwdbdlg, Grids, Wwdbigrd,
  Wwdbgrid, wwdbedit, Wwdbspin, ppEndUsr, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppCtrls, ppVar,
//Inicio HPC_201524_COB
  ppPrnabl, ppParameter, ExtCtrls, jpeg, ComCtrls, DBGrids, DB, DBClient,
  ppStrtch, ppSubRpt;
//Final HPC_201524_COB
type
  TFCandidatosFSC = class(TForm)
    grpParametros: TGroupBox;
    lblTipoAsociado: TLabel;
    dblcdTipoAsociado: TwwDBLookupComboDlg;
    edtTipoAsociado: TMaskEdit;
    btnFiltrar: TBitBtn;
    dbgCandidatos: TwwDBGrid;
    btnAExcel: TBitBtn;
    btnImprimir: TBitBtn;
    btnCerrar: TBitBtn;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    lblNomMes: TLabel;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDesigner1: TppDesigner;
    ppParameterList1: TppParameterList;
    btnDetalle: TBitBtn;
    pnlMetodo: TPanel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Shape1: TShape;
    lblUltFecProc: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLine9: TppLine;
    ppLine7: TppLine;
    ppLine6: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine10: TppLine;
    ppLine8: TppLine;
    ppShape3: TppShape;
    ppLabel12: TppLabel;
    ppShape4: TppShape;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppShape5: TppShape;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel6: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppImage1: TppImage;
    Shape2: TShape;
//Inicio HPC_201524_COB
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGINTERINO: TwwDBGrid;
    BitBtn5: TBitBtn;
    BtnFiltaInterinos: TBitBtn;
    BitBtn4: TBitBtn;
    DBGMAY65: TwwDBGrid;
    BitBtn6: TBitBtn;
    BtnFiltaMayo65: TBitBtn;
    BitBtn8: TBitBtn;
    DSINTERINO: TDataSource;
    CDSINTERINO: TClientDataSet;
    DSMAY65: TDataSource;
    CDSMAY65: TClientDataSet;
    dtgData: TDBGrid;
    pnlInterino: TPanel;
    Shape3: TShape;
    BitBtn9: TBitBtn;
    Image2: TImage;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    Panel1: TPanel;
    edtNumero: TEdit;
    Label1: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    edtMarca: TEdit;
    BitBtn14: TBitBtn;
    SpeedButton2: TSpeedButton;
    BitBtn15: TBitBtn;
    btnProcFSC: TBitBtn;
    Panel2: TPanel;
    edtNumeroMas65: TEdit;
    Label2: TLabel;
    BitBtn16: TBitBtn;
    SpeedButton1: TSpeedButton;
    BitBtn17: TBitBtn;
    Label3: TLabel;
    Panel3: TPanel;
    edtMarca2: TEdit;
    BitBtn18: TBitBtn;
    btnProcFSC2: TBitBtn;
    pnlMAYOR65: TPanel;
    Shape4: TShape;
    BitBtn20: TBitBtn;
    Image3: TImage;
    dtgData2: TDBGrid;
    BitBtn19: TBitBtn;
//Inicio HPC_201605_COB --Boton cerrar
    brnCerrarNoProc: TBitBtn;
    BitBtn3: TBitBtn;
    //Inicio : HPC_201703_COB  Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
    lblMesesAtrasoLabel: TLabel;
    lblMesesAtraso: TLabel;
    //Fin : HPC_201703_COB  Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
//Final HPC_201605_COB
// Final HPC_201524_cob
// fin: HPP_201107_COB
//
    procedure btnAExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblcdTipoAsociadoChange(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure dbsMesIniChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    //Inicio : HPC_201703_COB  Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
    {procedure dbgCandidatosDblClick(Sender: TObject);}
    //Fin : HPC_201703_COB  Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbsAnoIniChange(Sender: TObject);
    //Inicio HPC_201504_COB
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
//Inicio HPC_201524_COB
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnFiltaInterinosClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BtnFiltaMayo65Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGINTERINODblClick(Sender: TObject);
    procedure DBGMAY65DblClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure btnProcFSCClick(Sender: TObject);
    procedure DBGINTERINOCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn16Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure DBGMAY65CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure btnProcFSC2Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
//Inicio HPC_201605_COB --Boton cerrar
    procedure brnCerrarNoProcClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
//Final HPC_201605_COB
//Final HPC_201524_COB
    //Final HPC_201504_COB
  private
    { Private declarations }
//Inicio HPC_201524_COB
    procedure sumafooterINTERINOS;
    procedure sumafooterMAY65;
//Final HPC_201524_COB
  public
    { Public declarations }
//Inicio HPC_201524_COB
    vsuma,vsuma2:double;
//Final HPC_201524_COB
    procedure DeshabilitarBotones;
    procedure HabilitarBotones;
    procedure CargarCandidatos;
    procedure DetalleCandidatos;
    procedure LimpiarGrid;
//Inicio HPC_201524_COB
    procedure CargarCandidatosInterinos;
    procedure CargarCandidatosMayor65;
    procedure sumamarcadorINT;
    procedure sumamarcadorMAY65;
//Final HPC_201524_COB
    //Inicio HPC_201504_COB
    procedure CargarResCartFSC;
    //Final HPC_201504_COB
  end;

var
  FCandidatosFSC: TFCandidatosFSC;

implementation
//Inicio HPC_201524_COB
uses COBDM1, COB525, COB524A, COBF001;
//Final HPC_201524_COB

{$R *.dfm}

procedure TFCandidatosFSC.btnAExcelClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
  try
    if DM1.cdsQry1.RecordCount <= 0 then
      exit;

    DeshabilitarBotones;

    decodedate(DM1.FechaSys,xAno,xMes,xDia);
    xArchivo:='CAND_FSC_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
    xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
    xArchivo:=xArchivo;

    if FileExists(xArchivo+'.slk') then
      DeleteFile(xArchivo+'.slk');

    DM1.ExportaGridExcel(dbgCandidatos, xArchivo);
  finally
    HabilitarBotones;
  end;
end;

procedure TFCandidatosFSC.DeshabilitarBotones;
begin
  btnFiltrar.Enabled := false;
  btnAExcel.Enabled := false;
  btnImprimir.Enabled := false;
end;

procedure TFCandidatosFSC.HabilitarBotones;
begin
  btnFiltrar.Enabled := true;
  btnAExcel.Enabled := true;
  btnImprimir.Enabled := true;
end;

procedure TFCandidatosFSC.FormCreate(Sender: TObject);
var
  xSql: String;
begin
  xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'', ''CE'', ''CO'') ORDER BY ASOTIPID';
  DM1.cdsTAso.Close;
  DM1.cdsTAso.DataRequest(xSql);
  DM1.cdsTAso.Open;
  dblcdTipoAsociado.Selected.Clear;
  dblcdTipoAsociado.Selected.Add('ASOTIPID'#9'3'#9'ID'#9#9);
  dblcdTipoAsociado.Selected.Add('ASOTIPDES'#9'20'#9'Tipo de Asociado'#9#9);

  dblcdTipoAsociado.Text := 'DO';
  dbsAnoIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)); dbsMesIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));
  lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');

  LimpiarGrid;
  //Inicio: HPP_201007_COB por JCARBONEL
  ppDesigner1.IniStorageName := '.\rbuilder.ini';
  //Fin: HPP_201007_COB por JCARBONEL

  //Inicio HPC_201504_COB
  lblUltFecProc.Caption := '';
  //Final HPC_201504_COB

//Inicio HPC_201524_COB
   PageControl1.TabIndex := 0;
   DBGMAY65.Selected.Clear;
   DBGMAY65.Selected.Add('FLAG'#9'2'#9' '#9#9);
   DBGMAY65.Selected.Add('REGID'#9'4'#9'Lin'#9#9);
   DBGMAY65.Selected.Add('VASOCODMOD'#9'10'#9'Cod.Mod.'#9#9);
   DBGMAY65.Selected.Add('VASOAPENOM'#9'10'#9'Apellidos y Nombres'#9#9);
   DBGMAY65.Selected.Add('VNUMCRE'#9'13'#9'Créditos'#9#9);
   DBGMAY65.Selected.Add('VFECLIQ'#9'10'#9'Fec.Liquid.'#9#9);
   DBGMAY65.Selected.Add('VREGPEN'#9'4'#9'Reg.Pen.'#9#9);
   DBGMAY65.Selected.Add('VASOTIPID'#9'2'#9'T.Aso.cre.'#9#9);
   DBGMAY65.Selected.Add('VAUTONP'#9'1'#9'Aut.ONP'#9#9);
   DBGMAY65.Selected.Add('VEDAD'#9'3'#9'Edad'#9#9);
   DBGMAY65.Selected.Add('VMONSALCRE'#9'13'#9'Saldo Total'#9#9);
   DBGMAY65.Selected.Add('FLAG'#9'2'#9' ');


   DBGINTERINO.Selected.Clear;
   DBGINTERINO.Selected.Add('FLAG'#9'2'#9' '#9#9);
   DBGINTERINO.Selected.Add('REGID'#9'4'#9'Lin'#9#9);
   DBGINTERINO.Selected.Add('VASOCODMOD'#9'10'#9'Cod.Mod.'#9#9);
   DBGINTERINO.Selected.Add('VASOAPENOM'#9'10'#9'Apellidos y Nombres'#9#9);
   DBGINTERINO.Selected.Add('VNUMCRE'#9'13'#9'Créditos'#9#9);
   DBGINTERINO.Selected.Add('VFECLIQ'#9'10'#9'Fec.Liquid.'#9#9);
   DBGINTERINO.Selected.Add('VREGPEN'#9'4'#9'Reg.Pen.'#9#9);
   DBGINTERINO.Selected.Add('VASOTIPID'#9'2'#9'T.Aso.cre.'#9#9);
   DBGINTERINO.Selected.Add('VAUTONP'#9'1'#9'Aut.ONP.'#9#9);
   DBGINTERINO.Selected.Add('VMONSALCRE'#9'13'#9'Saldo Total'#9#9);
   DBGINTERINO.Selected.Add('FLAG'#9'2'#9' ');
   btnProcFSC.Visible:= False;
//Final HPC_201524_COB

end;

procedure TFCandidatosFSC.dblcdTipoAsociadoChange(Sender: TObject);
begin
  If DM1.cdsTAso.Active and DM1.cdsTAso.Locate('ASOTIPID', dblcdTipoAsociado.Text, []) Then
    edtTipoAsociado.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').AsString
  Else
    edtTipoAsociado.Text := '';
  LimpiarGrid;
end;

procedure TFCandidatosFSC.CargarCandidatos;
var
  xSql: String;
  CantidadAsociados: integer;
  SaldoVencido, SaldoCapital, SaldoTotal: currency;
begin
  if length(trim(dblcdTipoAsociado.Text)) <> 2 then
  begin
    MessageDlg('Seleccione el tipo de asociado', mtInformation, [mbOk], 0);
    exit;
  end;
  if length(trim(dbsAnoIni.Text)) <> 4 then
  begin
    MessageDlg('Seleccione el año', mtInformation, [mbOk], 0);
    exit;
  end;
  if (StrToInt(trim(dbsMesIni.Text)) <= 0) or (StrToInt(trim(dbsMesIni.Text)) > 12) then
  begin
    MessageDlg('Seleccione el mes', mtInformation, [mbOk], 0);
    exit;
  end;

  try
    Screen.Cursor := crHourGlass;
// inicio: HPP_201107_COB
//SAR2010-458 INICIO
    xSql := 'SELECT ' + QuotedStr(DM1.wUsuario) + ' USUARIO,'
      + QuotedStr(Trim(dbsAnoIni.Text) + Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])) + ' PERIODO,'
      + QuotedStr(edtTipoAsociado.Text) + ' TIPOASOCIADO,'
      + '         CASE WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 4 AND 12 THEN 4'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 13 AND 23 THEN 13'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 24 AND 36 THEN 24'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 37 AND 48 THEN 37'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 49 AND 60 THEN 49'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 61 AND 72 THEN 61'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 73 AND 84 THEN 73'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 85 AND 96 THEN 85'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 97 AND 108 THEN 97'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 109 AND 120 THEN 109'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 121 AND 132 THEN 121'
      + '            WHEN max(TRUNC(c.diastrans / 30)) > 132 THEN 133'
      + '         END MESINICIAL,'
      + '         CASE WHEN max(TRUNC(c.diastrans / 30)) BETWEEN  4 AND 12 THEN 12'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 13 AND 23 THEN 23'
      +'             WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 24 AND 36 THEN 36'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 37 AND 48 THEN 48'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 49 AND 60 THEN 60'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 61 AND 72 THEN 72'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 73 AND 84 THEN 84'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 85 AND 96 THEN 96'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 97 AND 108 THEN 108'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 109 AND 120 THEN 120'
      + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 121 AND 132 THEN 132'
      + '            WHEN max(TRUNC(c.diastrans / 30)) > 132 THEN 999'
      + '         END MESFINAL,'
      + '         CASE WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN   4 AND  12 THEN  '' 4 A  12'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN  13 AND  23 THEN  ''13 A  23'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN  24 AND  36 THEN  ''24 A  36'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN  37 AND  48 THEN  ''37 A  48'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN  49 AND  60 THEN  ''49 A  60'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN  61 AND  72 THEN  ''61 A  72'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN  73 AND  84 THEN  ''73 A  84'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN  85 AND  96 THEN  ''85 A  96'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN  97 AND 108 THEN  ''97 A 108'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 109 AND 120 THEN ''109 A 120'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 121 AND 132 THEN ''121 A 132'''
      + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) > 132 THEN ''MAS DE 133'''
      + '    END MESESATRASO,'
      + '    COUNT(DISTINCT C.ASOID) CANTASOCIADOS,'
      + '    SUM(NVL(C.SALVEN,0)) SALDOVENCIDO,'
      + '    SUM(NVL(C.SALDOS_FT,0)) SALDOCAPITAL,'
      + '    SUM(NVL(C.SALTOT,0)) SALDOTOTAL '
      + 'FROM CFC000 C '
      + 'WHERE'
      + '    C.PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text) + Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))
      + '    AND C.ASOTIPID = ' + QuotedStr(Trim(dblcdTipoAsociado.Text))
      + '    AND C.DIASTRANS / 30 >= 4 '
      + 'GROUP BY CASE '
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN  4 AND 12 THEN  4'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 13 AND 23 THEN 13'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 24 AND 36 THEN 24'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 37 AND 48 THEN 37'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 49 AND 60 THEN 49'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 61 AND 72 THEN 61'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 73 AND 84 THEN 73'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 85 AND 96 THEN 85'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 97 AND 108 THEN 97'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 109 AND 120 THEN 109'
      + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 121 AND 132 THEN 121'
      + '    WHEN (TRUNC(c.diastrans / 30)) > 132 THEN 133 END '
      + 'ORDER BY 1';
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;
// fin: HPP_201107_COB

    TNumericField(DM1.cdsQry1.FieldByName('CANTASOCIADOS')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('SALDOVENCIDO')).DisplayFormat:='###,###,##0.00';
    TNumericField(DM1.cdsQry1.FieldByName('SALDOCAPITAL')).DisplayFormat:='###,###,##0.00';
    TNumericField(DM1.cdsQry1.FieldByName('SALDOTOTAL')).DisplayFormat:='###,###,##0.00';

    dbgCandidatos.Selected.Clear;
    dbgCandidatos.Selected.Add('MESESATRASO'#9'30'#9'Meses de Atraso'#9#9);
    dbgCandidatos.Selected.Add('CANTASOCIADOS'#9'12'#9'Nº Aso'#9#9);
    dbgCandidatos.Selected.Add('SALDOVENCIDO'#9'25'#9'Saldo Vencido'#9#9);
    dbgCandidatos.Selected.Add('SALDOCAPITAL'#9'25'#9'Saldo Capital'#9#9);
    dbgCandidatos.Selected.Add('SALDOTOTAL'#9'25'#9'Saldo Total'#9#9);
    dbgCandidatos.ApplySelected;

    //Sumariza totales
    CantidadAsociados := 0;
    SaldoVencido      := 0;
    SaldoCapital      := 0;
    SaldoTotal        := 0;
    DM1.cdsQry1.First;
    while not DM1.cdsQry1.Eof do
    begin
      CantidadAsociados := CantidadAsociados + DM1.cdsQry1.FieldByName('CANTASOCIADOS').AsInteger;
      SaldoVencido := SaldoVencido + DM1.cdsQry1.FieldByName('SALDOVENCIDO').AsCurrency;
      SaldoCapital := SaldoCapital + DM1.cdsQry1.FieldByName('SALDOCAPITAL').AsCurrency;
      SaldoTotal := SaldoTotal + DM1.cdsQry1.FieldByName('SALDOTOTAL').AsCurrency;
      DM1.cdsQry1.Next;
    end;

    dbgCandidatos.ColumnByName('MESESATRASO').FooterValue := 'Total';
    dbgCandidatos.ColumnByName('CANTASOCIADOS').FooterValue := FloatTostrf(CantidadAsociados, ffnumber, 15, 0);
    dbgCandidatos.ColumnByName('SALDOVENCIDO').FooterValue := FloatTostrf(SaldoVencido, ffnumber, 15, 2);
    dbgCandidatos.ColumnByName('SALDOCAPITAL').FooterValue := FloatTostrf(SaldoCapital, ffnumber, 15, 2);
    dbgCandidatos.ColumnByName('SALDOTOTAL').FooterValue := FloatTostrf(SaldoTotal, ffnumber, 15, 2);
    dbgCandidatos.RefreshDisplay;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFCandidatosFSC.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFCandidatosFSC.btnFiltrarClick(Sender: TObject);
begin
//Inicio HPC_201504_COB
  //CargarCandidatos;
  CargarResCartFSC;
//Final HPC_201504_COB
end;

procedure TFCandidatosFSC.dbsMesIniChange(Sender: TObject);
begin
  lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');
  LimpiarGrid;
end;

procedure TFCandidatosFSC.btnImprimirClick(Sender: TObject);
begin
  if DM1.cdsQry1.RecordCount <= 0 then
    exit;
  ppReport1.Print;
  ppReport1.Stop;
  //ppDesigner1.ShowModal;
end;

procedure TFCandidatosFSC.btnDetalleClick(Sender: TObject);
begin
  if DM1.cdsQry1.RecordCount <= 0 then
    exit;

  DetalleCandidatos;
end;

//Inicio : HPC_201703_COB Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
{procedure TFCandidatosFSC.dbgCandidatosDblClick(Sender: TObject);
begin
  if DM1.cdsQry1.RecordCount <= 0 then
    exit;

  DetalleCandidatos;  
end; }
//Fin : HPC_201703_COB Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB

procedure TFCandidatosFSC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsTAso.Close;
  DM1.cdsQry1.Close;
end;

procedure TFCandidatosFSC.DetalleCandidatos;
begin
  try
    FCandidatosFSCDet              := TFCandidatosFSCDet.Create(self);
 //Inicio HPC_201504_COB
 //   FCandidatosFSCDet.MesInicial   := DM1.cdsQry1.FieldByName('MESINICIAL').AsInteger;
 //   FCandidatosFSCDet.MesFinal     := DM1.cdsQry1.FieldByName('MESFINAL').AsInteger;
 //Final HPC_201504_COB
    FCandidatosFSCDet.Periodo      := Trim(dbsAnoIni.Text) + Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]);
    FCandidatosFSCDet.TipoAsociado := edtTipoAsociado.Text;
    FCandidatosFSCDet.ASOTIPID     := dblcdTipoAsociado.Text;

    FCandidatosFSCDet.ShowModal;
  finally
    FCandidatosFSCDet.Free;
  end;
end;

procedure TFCandidatosFSC.LimpiarGrid;
var
  xSql: string;
begin
//Inicio HPC_201504
{
// Inicio: HPP_201107_COB
//   SAR2010-458 INICIO
  xSql := 'SELECT ' + QuotedStr(DM1.wUsuario) + ' USUARIO,'
    + '       CASE WHEN max(TRUNC(c.diastrans / 30)) BETWEEN  4 AND 12 THEN  4'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 13 AND 23 THEN 13'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 24 AND 36 THEN 24'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 37 AND 48 THEN 37'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 49 AND 60 THEN 49'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 61 AND 72 THEN 61'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 73 AND 84 THEN 73'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 85 AND 96 THEN 85'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 97 AND 108 THEN 97'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 109 AND 120 THEN 109'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 121 AND 132 THEN 121'
    + '            WHEN max(TRUNC(c.diastrans / 30)) > 132 THEN 133'
    + '         END MESINICIAL,'
    + '       CASE WHEN max(TRUNC(c.diastrans / 30)) BETWEEN  4 AND 12 THEN  4'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 13 AND 23 THEN 13'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 24 AND 36 THEN 36'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 37 AND 48 THEN 48'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 49 AND 60 THEN 60'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 61 AND 72 THEN 72'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 73 AND 84 THEN 84'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 85 AND 96 THEN 96'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 97 AND 108 THEN 108'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 109 AND 120 THEN 120'
    + '            WHEN max(TRUNC(c.diastrans / 30)) BETWEEN 121 AND 132 THEN 132'
    + '            WHEN max(TRUNC(c.diastrans / 30)) > 132 THEN 999'
    + '         END MESFINAL,'
    + '       CASE WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN  4 AND 12 THEN '' 4 A 12'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 13 AND 23 THEN ''13 A 23'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 24 AND 36 THEN ''24 A 36'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 37 AND 48 THEN ''37 A 48'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 49 AND 60 THEN ''49 A 60'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 61 AND 72 THEN ''61 A 72'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 73 AND 84 THEN ''73 A 84'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 85 AND 96 THEN ''85 A 96'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 97 AND 108 THEN ''97 A 108'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 109 AND 120 THEN ''109 A 120'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) BETWEEN 121 AND 132 THEN ''121 A 132'''
    + '            WHEN MAX(TRUNC(C.DIASTRANS / 30)) > 132 THEN ''MAS DE 133'''
    + '         END MESESATRASO,'
    + '    COUNT(DISTINCT C.ASOID) CANTASOCIADOS,'
    + '    SUM(NVL(C.SALVEN,0)) SALDOVENCIDO,'
    + '    SUM(NVL(C.SALDOS_FT,0)) SALDOCAPITAL,'
    + '    SUM(NVL(C.SALTOT,0)) SALDOTOTAL '
    + 'FROM CFC000 C '
    + 'WHERE 1 = 2 '
    + 'GROUP BY  CASE '
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN  4 AND 12 THEN  4'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 13 AND 23 THEN 13'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 24 AND 36 THEN 24'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 37 AND 48 THEN 37'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 49 AND 60 THEN 49'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 61 AND 72 THEN 61'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 73 AND 84 THEN 73'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 85 AND 96 THEN 85'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 97 AND 108 THEN 97'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 109 AND 120 THEN 109'
    + '    WHEN (TRUNC(c.diastrans / 30)) BETWEEN 121 AND 132 THEN 121'
    + '    WHEN (TRUNC(c.diastrans / 30)) > 132 THEN 133 END '
    + 'ORDER BY 1';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
// Fin: HPP_201107_COB


  dbgCandidatos.Selected.Clear;
  dbgCandidatos.Selected.Add('MESESATRASO'#9'30'#9'Meses de Atraso'#9#9);
  dbgCandidatos.Selected.Add('CANTASOCIADOS'#9'12'#9'Nº Aso'#9#9);
  dbgCandidatos.Selected.Add('SALDOVENCIDO'#9'25'#9'Saldo Vencido'#9#9);
  dbgCandidatos.Selected.Add('SALDOCAPITAL'#9'25'#9'Saldo Capital'#9#9);
  dbgCandidatos.Selected.Add('SALDOTOTAL'#9'25'#9'Saldo Total'#9#9);
  dbgCandidatos.ApplySelected;

  dbgCandidatos.ColumnByName('MESESATRASO').FooterValue   := 'Total';
  dbgCandidatos.ColumnByName('CANTASOCIADOS').FooterValue := '';
  dbgCandidatos.ColumnByName('SALDOVENCIDO').FooterValue  := '';
  dbgCandidatos.ColumnByName('SALDOCAPITAL').FooterValue  := '';
  dbgCandidatos.ColumnByName('SALDOTOTAL').FooterValue    := '';
  dbgCandidatos.RefreshDisplay;
}
//Inicio : HPC_201703_COB  Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
{lblUltFecProc.Caption := ' ';
xSql:= 'SELECT '' ''ORDEN,''        ''RANGO,''      ''NASOID,''       ''NCREDITOS,''     ''SALDO_PEN,''     ''SALDO_VEN,''     ''SALDO_DPE,''     ''SALDO_TOTAL,''      ''SALDO_CAP,''     ''PROVISION,''      ''FEC_PROC '
      +'FROM DUAL ';
DM1.cdsQry1.Close;
DM1.cdsQry1.DataRequest(xSql);
DM1.cdsQry1.Open;
dbgCandidatos.Selected.Clear;
dbgCandidatos.Selected.Add('RANGO'#9'30'#9'Días de Atraso'#9#9);
dbgCandidatos.Selected.Add('NASOID'#9'7'#9'N°Asoc.'#9#9);
dbgCandidatos.Selected.Add('NCREDITOS'#9'7'#9'N°Créd.'#9#9);
dbgCandidatos.Selected.Add('SALDO_VEN'#9'15'#9'Saldo~Vencido'#9#9);
dbgCandidatos.Selected.Add('SALDO_DPE'#9'15'#9'Saldo~Dif.Pendiente'#9#9);
dbgCandidatos.Selected.Add('SALDO_PEN'#9'15'#9'Saldo~Pendiente'#9#9);
dbgCandidatos.Selected.Add('SALDO_TOTAL'#9'15'#9'Saldo~Total'#9#9);
dbgCandidatos.Selected.Add('SALDO_CAP'#9'15'#9'Saldo~Capital'#9#9);
dbgCandidatos.Selected.Add('PROVISION'#9'15'#9'Provisión'#9#9);
dbgCandidatos.ApplySelected;
dbgCandidatos.DataSource := DM1.dsQry1;
DM1.cdsQry1.EmptyDataSet;
//Final HPC_201504_COB
}

  lblUltFecProc.Caption := ' ';
  xSql:= 'SELECT ''        ''FILA,'
  +' ''        ''dptlab,          '
  +' ''        ''ugel,            '
  +' ''        ''ASOTIPID,        '
  +' ''        ''ASOID,           '
  +' ''        ''ASOCODMOD,       '
  +' ''        ''asodni,          '
  +' ''        ''ASOAPENOM,       '
  +' ''        ''ASODIR,          '
  +' ''        ''dptdom,          '
  +' ''        ''prvdom,          '
  +' ''        ''disdom,          '
  +' ''        ''ASOTELF1,        '
  +' ''        ''ASOTELF2,        '
  +' ''        ''ASOTELLAB,       '
  +' ''        ''credid,          '
  +' ''        ''tipcredes,       '
  +' ''        ''crefotorg,       '
  +' ''        ''ofdesnom,        '
  +' ''        ''saldo_ven,       '
  +' ''        ''cuo_ven,         '
  +' ''        ''saldo_dpe,       '
  +' ''        ''cuo_dpe,         '
  +' ''        ''saldo_pen,       '
  +' ''        ''cuo_pen,         '
  +' ''        ''saldo_tot,       '
  +' ''        ''saldo_cap,       '
  +' ''        ''salcapven,       '
  +' ''        ''provision,       '
  +' ''        ''provisionPOR,    '
  +' ''        ''dias_atra,       '
  +' ''        ''CFC_F,           '
  +' ''        ''CFCDES_F         '
  +' FROM DUAL ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  dbgCandidatos.Selected.Clear;
  dbgCandidatos.Selected.Add('FILA'#9'6'#9'Fila'#9#9);
  dbgCandidatos.Selected.Add('dptlab'#9'15'#9'Dpt. Laboral'#9#9);
  dbgCandidatos.Selected.Add('ugel'#9'15'#9'Ugel'#9#9);
  dbgCandidatos.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso'#9#9);
  dbgCandidatos.Selected.Add('ASOID'#9'10'#9'ID Asociado'#9#9);
  dbgCandidatos.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Modular'#9#9);
  dbgCandidatos.Selected.Add('asodni'#9'08'#9'DNI'#9#9);
  dbgCandidatos.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos y Nombres'#9#9);
  dbgCandidatos.Selected.Add('ASODIR'#9'30'#9'Dirección'#9#9);
  dbgCandidatos.Selected.Add('dptdom'#9'20'#9'Dpt. Dom'#9#9);
  dbgCandidatos.Selected.Add('prvdom'#9'20'#9'Prov. Dom'#9#9);
  dbgCandidatos.Selected.Add('disdom'#9'20'#9'Dis. Dom'#9#9);
  dbgCandidatos.Selected.Add('ASOTELF1'#9'12'#9'Telf. 1'#9#9);
  dbgCandidatos.Selected.Add('ASOTELF2'#9'12'#9'Telf. 2'#9#9);
  dbgCandidatos.Selected.Add('ASOTELLAB'#9'12'#9'Telf. Lab'#9#9);
  dbgCandidatos.Selected.Add('credid'#9'15'#9'N° Crédito'#9#9);
  dbgCandidatos.Selected.Add('tipcredes'#9'20'#9'Tipo de Crédito'#9#9);
  dbgCandidatos.Selected.Add('crefotorg'#9'20'#9'Fec. de Otorgamiento'#9#9);
  dbgCandidatos.Selected.Add('ofdesnom'#9'20'#9'Oficina de Otorgamiento'#9#9);
  dbgCandidatos.Selected.Add('saldo_ven'#9'12'#9'Saldo Vencido'#9#9);
  dbgCandidatos.Selected.Add('cuo_ven'#9'12'#9'Cuotas Vencidas'#9#9);
  dbgCandidatos.Selected.Add('saldo_dpe'#9'12'#9'Saldo Dif.Pendiente'#9#9);
  dbgCandidatos.Selected.Add('cuo_dpe'#9'12'#9'Cuotas Dif.Pendiente'#9#9);
  dbgCandidatos.Selected.Add('saldo_pen'#9'12'#9'Saldo por Vencer'#9#9);
  dbgCandidatos.Selected.Add('cuo_pen'#9'12'#9'Cuotas Pendientes'#9#9);
  dbgCandidatos.Selected.Add('saldo_tot'#9'12'#9'Saldo Total'#9#9);
  dbgCandidatos.Selected.Add('saldo_cap'#9'12'#9'Saldo Capital'#9#9);
  dbgCandidatos.Selected.Add('salcapven'#9'12'#9'Saldo Capital Vencido'#9#9);
  dbgCandidatos.Selected.Add('provision'#9'12'#9'Provisión Tot.'#9#9);
  dbgCandidatos.Selected.Add('provisionPOR'#9'12'#9'Provisión Porc.'#9#9);  
  dbgCandidatos.Selected.Add('dias_atra'#9'12'#9'Días Atraso'#9#9);
  dbgCandidatos.Selected.Add('CFC_F'#9'12'#9'Codigo Calificación'#9#9);
  dbgCandidatos.Selected.Add('CFCDES_F'#9'12'#9'Descripcion Calificación'#9#9);
  dbgCandidatos.ApplySelected;
  dbgCandidatos.DataSource := DM1.dsQry1;
  DM1.cdsQry1.EmptyDataSet;

  dbgCandidatos.ColumnByName('dptlab').FooterValue := 'Total';
  dbgCandidatos.ColumnByName('ugel').FooterValue := '';
  dbgCandidatos.ColumnByName('ASOID').FooterValue := '';
  dbgCandidatos.ColumnByName('ASOCODMOD').FooterValue := '';
  dbgCandidatos.ColumnByName('SALDO_VEN').FooterValue := '';
  dbgCandidatos.ColumnByName('SALDO_DPE').FooterValue := '';
  dbgCandidatos.ColumnByName('SALDO_PEN').FooterValue := '';
  dbgCandidatos.ColumnByName('SALDO_CAP').FooterValue := '';
  dbgCandidatos.ColumnByName('SALDO_TOT').FooterValue := '';
  dbgCandidatos.ColumnByName('salcapven').FooterValue := '';
  dbgCandidatos.ColumnByName('PROVISIONPOR').FooterValue := '';

  //Fin : HPC_201703_COB  Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
end;

procedure TFCandidatosFSC.dbsAnoIniChange(Sender: TObject);
begin
  LimpiarGrid;
end;

// Fin: HPP_200944_COB

//Inicio HPC_201504_COB
//Inicio : HPC_201703_COB  Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
procedure TFCandidatosFSC.CargarResCartFSC;
var xSql:String;
    xRango, sAsociado : sTring;
    CantidadAsociados,CantidadCreditos, nItem : Integer;
    xsaldo_ven,xsaldo_dpe,xsaldo_pen,xsaldo_tot,xsaldo_cap,xprovision,xsaldo_cap_ven: Currency;
begin
    if Trim(dblcdTipoAsociado.Text)='DO' then
    begin
//Inicio HPC_201709_COB
//Modificar los rangos de días de atraso
//    xRango := ' ( A.dias_atra>=700 OR '
//            + ' ( A.dias_atra < 700  AND (SELECT COUNT(asoid) TOTCRE FROM COB_FSC_CARTERA '
      xRango := ' ( A.dias_atra>=695 OR '
              + ' ( A.dias_atra < 695  AND (SELECT COUNT(asoid) TOTCRE FROM COB_FSC_CARTERA '
              +                            ' WHERE A.ASOID=ASOID '
              +                              ' AND PERIODO='+QuotedStr(Trim(dbsAnoIni.Text) + Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))
//            +' AND DIAS_ATRA>=700)>=1 ) )  AND ';              
              +' AND DIAS_ATRA>=695)>=1 ) )  AND ';
//    lblMesesAtraso.Caption  := ' de 700 días a mas';
      lblMesesAtraso.Caption  := ' de 695 días a mas';
//Final HPC_201709_COB
    end;
    if Trim(dblcdTipoAsociado.Text)='CE' then
    begin
//Inicio HPC_201709_COB
//Modificar los rangos de días de atraso
//      xRango := ' ( A.dias_atra>=720 OR '
//              + ' ( A.dias_atra < 720  AND (SELECT COUNT(asoid) TOTCRE FROM COB_FSC_CARTERA '
//              +                            ' WHERE A.ASOID=ASOID '
        xRango := ' ( A.dias_atra>=695 OR '
                + ' ( A.dias_atra < 695  AND (SELECT COUNT(asoid) TOTCRE FROM COB_FSC_CARTERA '
              +                            ' WHERE A.ASOID=ASOID '
              +                              ' AND PERIODO='+QuotedStr(Trim(dbsAnoIni.Text) + Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))
//            +' AND DIAS_ATRA>=720)>=1 ) )  AND ';
              +' AND DIAS_ATRA>=695)>=1 ) )  AND ';
//    lblMesesAtraso.Caption  := ' de 720 días a mas';
      lblMesesAtraso.Caption  := ' de 695 días a mas';
//Final HPC_201709_COB
    end;
    if Trim(dblcdTipoAsociado.Text)='CO' then
    begin
//Inicio HPC_201709_COB
//Modificar los rangos de días de atraso
//    xRango := ' ( A.dias_atra>=360 OR '
//            + ' ( A.dias_atra < 360  AND (SELECT COUNT(asoid) TOTCRE FROM COB_FSC_CARTERA '
      xRango := ' ( A.dias_atra>=335 OR '
              + ' ( A.dias_atra < 335  AND (SELECT COUNT(asoid) TOTCRE FROM COB_FSC_CARTERA '
              +                            ' WHERE A.ASOID=ASOID '
              +                              ' AND PERIODO='+QuotedStr(Trim(dbsAnoIni.Text) + Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))
//            +' AND DIAS_ATRA>=360)>=1 ) )  AND ';
              +' AND DIAS_ATRA>=335)>=1 ) )  AND ';
//    lblMesesAtraso.Caption  := ' de 360 días a mas';
      lblMesesAtraso.Caption  := ' de 335 días a mas';
//Final HPC_201709_COB
    end;
    xSql:='SELECT rownum FILA,A.periodo,A.asoid, A.credid, A.numcre, A.asotipid,A.tipcredid, A.tipcredes, A.ofdesid,J.ofdesnom,'
       +'A.crefotorg,A.crefven, A.dias_atra,nvl(A.saldo_ven,0)saldo_ven,nvl(A.cuo_ven,0)cuo_ven,nvl(A.saldo_dpe,0)saldo_dpe,nvl(A.cuo_dpe,0)cuo_dpe,'
       +'nvl(A.saldo_pen,0)saldo_pen,nvl(A.cuo_pen,0)cuo_pen,nvl(A.saldo_ven,0)+nvl(A.saldo_pen,0)+nvl(A.saldo_dpe,0) saldo_tot, A.saldo_cap,a.salcapven,A.provision,A.provisionpor,'
       +'A.fec_proc,I.DPTODES dptlab,H.USENOM ugel,B.ASOTIPID,B.ASOID,B.ASOCODMOD,B.ASODNI,B.ASOAPENOM,B.ASODIR,E.DPTODES dptdom,F.CIUDDES prvdom,G.ZIPDES disdom,'
       +'B.ASOTELF1,B.ASOTELF2,B.ASOTELLAB,a.PROVISION '
       + ' ,K.CFC_F, K.CFCDES_F '
       +'FROM  COB_FSC_CARTERA A,APO201 B,TGE121 C,TGE122 D, '
       +'      TGE158 E,TGE121 F,TGE122 G,APO101 H,TGE158 I,'
       +'      APO110 J, '
       +' (SELECT ASOID, CFC_F, CFCDES_F '
       +'    FROM CFC000 '
       +'   WHERE PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE('+QuotedStr(Trim(dbsAnoIni.Text) + Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))+',''YYYYMM''),-1),''YYYYMM'')) K, '
       + 'PVS301 P, '
       + '(SELECT ASOID, ''S'' BLOQUEADO FROM CRE302 A WHERE A.CREESTID=''19'') Q '

       +'WHERE A.periodo='+QuotedStr(Trim(dbsAnoIni.Text) + Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))+' AND '
       +'      A.ASOTIPID='+QuotedStr(Trim(dblcdTipoAsociado.Text))+' AND '
       +xRango
       +' A.ASOID=B.ASOID AND '
       +' C.dptoid(+)  = substr(B.asodstlabid, 1, 2)  AND substr(C.ciudid(+), 1, 2) = substr(B.asodstlabid, 3, 2) AND '
       +' D.DPTOID(+)  = substr(B.asodstlabid, 1, 2)  AND D.CIUDID(+) = substr(B.asodstlabid, 3, 2)  AND substr(D.zipid(+), 1, 2) = substr(B.asodstlabid, 5, 2) AND '
       +' E.dptoid (+) = substr(B.zipid, 1, 2) AND '
       +' F.dptoid (+) = substr(B.zipid, 1, 2) AND substr(F.ciudid(+), 1, 2) =substr(B.zipid, 3, 2) AND '
       +' G.DPTOID (+) = substr(B.zipid, 1, 2) AND G.CIUDID (+)=substr(B.zipid, 3, 2) AND substr(G.zipid (+), 1, 2)=substr(B.zipid, 5, 2) AND '
       +' H.uproid (+) = B.UPROID AND H.UPAGOID(+) = B.UPAGOID AND H.USEID (+)  = B.USEID AND '
       + 'I.DPTOID (+) = H.DPTOID AND '
       + 'J.OFDESID(+) = A.OFDESID  '
       + ' AND A.ASOID = K.ASOID(+) '
       //  FALLECIMIENTO
       + ' AND NVL(FALLECIDO,''N'')=''N'' '
       //  INVALIDEZ
       + ' AND NVL(INVALIDEZ,''N'')=''N'' '
       //  BENEFICIO POR LIQUIDAR
       + ' AND A.ASOID=P.ASOID(+) AND P.PVSESTADO(+) NOT IN (''04'',''13'') '
       + ' AND ( PVSEXPNRO IS NULL  OR  (PVSEXPNRO IS NOT NULL AND PVSLBENNR IS NOT NULL)) '
       //  BLOQUEADOS
       + ' AND A.ASOID=Q.ASOID(+) AND NVL(BLOQUEADO,''N'')=''N'' '
       //  DISTRIBUCION CON ERROR
       + ' AND NVL(( SELECT sum(nvl(cremtocob,0)-(nvl(creamort,0)+nvl(creinteres,0)+nvl(creflat,0)+nvl(cremtoexc,0)+nvl(moncobdesgrav,0))) Dif '
       +             ' From CRE310 '
       +            ' where ASOID=A.ASOID AND CREDID=A.CREDID AND CREESTID not in (''13'',''04'',''99'') and NUMDEV is null '
       +            ' group by asoid ),0)=0 '
       // CREDITOS CANCELADOS
       + ' AND NVL( ( SELECT '
       +     ' NVL(sum(CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'')) '
       +              '      AND (CREFVEN = CREFVENINI OR CREFVENINI IS NULL) '
       +              '     THEN NVL(CREMTO,0) - NVL(CREMTOCOB,0) END),0) + '
       +     ' NVL(sum(CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN <> CREFVENINI) THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END),0) + '
       +     ' NVL(sum(CASE WHEN (TO_CHAR(CREFVEN, ''YYYYMM'') > TO_CHAR(SYSDATE, ''YYYYMM'')) AND (CREFVEN = CREFVENINI OR CREFVENINI IS NULL) THEN '
       +     ' (NVL(CREAMORT, 0) + NVL(CREFLAT, 0) + NVL(MONPACDESGRAV, 0)) - NVL(CREMTOCOB, 0) END),0) TOT_SAL '
       +   ' FROM CRE302 '
       +   ' WHERE asoid=a.asoid and credid=a.credid AND CREESTID IN (''14'', ''02'', ''27'', ''11'', ''19'') '
       +   ' GROUP BY asoid, Credid ),0) >0 '
       +' ORDER BY B.ASOAPENOM';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  Screen.Cursor := crHourGlass;
  DM1.cdsQry1.Open;
  Screen.Cursor := crDefault;
  If DM1.cdsQry1.RecordCount=0 Then
  Begin
    ShowMessage('No existe información Procesada en este Periodo');
    Exit;
  End;
  dm1.cdsQry1.First;
  xsaldo_ven := 0;
  xsaldo_dpe := 0;
  xsaldo_pen := 0;
  xsaldo_tot := 0;
  xsaldo_cap := 0;
  xprovision := 0;
  xsaldo_cap_ven:=0;

  TNumericField(DM1.cdsQry1.FieldByName('SALDO_VEN')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry1.FieldByName('SALDO_DPE')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry1.FieldByName('SALDO_PEN')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry1.FieldByName('SALDO_TOT')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry1.FieldByName('SALDO_CAP')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry1.FieldByName('PROVISION')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry1.FieldByName('PROVISIONPOR')).DisplayFormat:='###,###,##0.00';

  CantidadAsociados:=0;
  sAsociado:='';
  nItem:=0;
  While Not dm1.cdsQry1.eof Do
  Begin
     nItem:=nItem+1;
     DM1.cdsQry1.Edit;
     DM1.cdsQry1.FieldbyName('FILA').AsInteger:=nItem;
     DM1.cdsQry1.Post;
     if sAsociado<>DM1.cdsQry1.FieldbyName('ASOID').AsString then
     begin
        CantidadAsociados:=CantidadAsociados+1;
        sAsociado:=DM1.cdsQry1.FieldbyName('ASOID').AsString;
     end;
     xsaldo_ven := xsaldo_ven + DM1.cdsQry1.FieldbyName('saldo_ven').AsCurrency ;
     xsaldo_dpe := xsaldo_dpe + DM1.cdsQry1.FieldbyName('saldo_dpe').AsCurrency ;
     xsaldo_pen := xsaldo_pen + DM1.cdsQry1.FieldbyName('saldo_pen').AsCurrency ;
     xsaldo_tot := xsaldo_tot + DM1.cdsQry1.FieldbyName('saldo_tot').AsCurrency ;
     xsaldo_cap := xsaldo_cap + DM1.cdsQry1.FieldbyName('saldo_cap').AsCurrency ;
     xprovision := xprovision + DM1.cdsQry1.FieldbyName('provisionpor').AsCurrency ;
     xsaldo_cap_ven:=xsaldo_cap_ven+ DM1.cdsQry1.FieldbyName('salcapven').AsCurrency;
     dm1.cdsQry1.Next;
  End;
  DM1.cdsQry1.First;

  dbgCandidatos.ColumnByName('dptlab').FooterValue := 'Total';
  dbgCandidatos.ColumnByName('ugel').FooterValue := 'Créditos:  '+FloatTostrf(dm1.cdsQry1.RecordCount, ffnumber, 10,0);
  dbgCandidatos.ColumnByName('ASOID').FooterValue := 'Asociados: ';
  dbgCandidatos.ColumnByName('ASOCODMOD').FooterValue := FloatTostrf(CantidadAsociados, ffnumber, 10,0);
  dbgCandidatos.ColumnByName('SALDO_VEN').FooterValue := FloatTostrf(xsaldo_ven, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('SALDO_DPE').FooterValue := FloatTostrf(xsaldo_dpe, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('SALDO_PEN').FooterValue := FloatTostrf(xsaldo_pen, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('SALDO_CAP').FooterValue := FloatTostrf(xsaldo_cap, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('SALDO_TOT').FooterValue := FloatTostrf(xsaldo_tot, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('salcapven').FooterValue := FloatTostrf(xsaldo_cap_ven, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('PROVISIONPOR').FooterValue := FloatTostrf(xprovision, ffnumber, 15, 2);
  dbgCandidatos.RefreshDisplay;

  dbgCandidatos.Selected.Clear;
  dbgCandidatos.Selected.Add('FILA'#9'6'#9'Fila'#9#9);
  dbgCandidatos.Selected.Add('dptlab'#9'15'#9'Dpt. Laboral'#9#9);
  dbgCandidatos.Selected.Add('ugel'#9'15'#9'Ugel'#9#9);
  dbgCandidatos.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso'#9#9);
  dbgCandidatos.Selected.Add('ASOID'#9'10'#9'ID Asociado'#9#9);
  dbgCandidatos.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Modular'#9#9);
  dbgCandidatos.Selected.Add('asodni'#9'08'#9'DNI'#9#9);
  dbgCandidatos.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos y Nombres'#9#9);
  dbgCandidatos.Selected.Add('ASODIR'#9'30'#9'Dirección'#9#9);
  dbgCandidatos.Selected.Add('dptdom'#9'20'#9'Dpt. Dom'#9#9);
  dbgCandidatos.Selected.Add('prvdom'#9'20'#9'Prov. Dom'#9#9);
  dbgCandidatos.Selected.Add('disdom'#9'20'#9'Dis. Dom'#9#9);
  dbgCandidatos.Selected.Add('ASOTELF1'#9'12'#9'Telf. 1'#9#9);
  dbgCandidatos.Selected.Add('ASOTELF2'#9'12'#9'Telf. 2'#9#9);
  dbgCandidatos.Selected.Add('ASOTELLAB'#9'12'#9'Telf. Lab'#9#9);
  dbgCandidatos.Selected.Add('credid'#9'15'#9'N° Crédito'#9#9);
  dbgCandidatos.Selected.Add('tipcredes'#9'20'#9'Tipo de Crédito'#9#9);
  dbgCandidatos.Selected.Add('crefotorg'#9'20'#9'Fec. de Otorgamiento'#9#9);
  dbgCandidatos.Selected.Add('ofdesnom'#9'20'#9'Oficina de Otorgamiento'#9#9);
  dbgCandidatos.Selected.Add('saldo_ven'#9'12'#9'Saldo Vencido'#9#9);
  dbgCandidatos.Selected.Add('cuo_ven'#9'12'#9'Cuotas Vencidas'#9#9);
//  dbgCandidatos.Selected.Add('saldo_dpe'#9'12'#9'Saldo Dif.Pendiente'#9#9);
//  dbgCandidatos.Selected.Add('cuo_dpe'#9'12'#9'Cuotas Dif.Pendiente'#9#9);
  dbgCandidatos.Selected.Add('saldo_pen'#9'12'#9'Saldo por Vencer'#9#9);
  dbgCandidatos.Selected.Add('cuo_pen'#9'12'#9'Cuotas Pendientes'#9#9);
  dbgCandidatos.Selected.Add('saldo_tot'#9'12'#9'Saldo Total'#9#9);
  dbgCandidatos.Selected.Add('saldo_cap'#9'12'#9'Saldo Capital'#9#9);
  dbgCandidatos.Selected.Add('salcapven'#9'12'#9'Saldo Capital Vencido'#9#9);
  dbgCandidatos.Selected.Add('provision'#9'12'#9'Provisión Tot.'#9#9);
  dbgCandidatos.Selected.Add('provisionPOR'#9'12'#9'Provisión Porc.'#9#9);
  dbgCandidatos.Selected.Add('dias_atra'#9'12'#9'Días Atraso'#9#9);
  dbgCandidatos.Selected.Add('CFC_F'#9'12'#9'Codigo Calificación'#9#9);
  dbgCandidatos.Selected.Add('CFCDES_F'#9'12'#9'Descripcion Calificación'#9#9);
  dbgCandidatos.ApplySelected;
  {
xSql:= 'SELECT ORDEN,MAX(PERIODO)PERIODO,MAX(ASOTIPID)ASOTIPID,MAX(RANGO)RANGO,COUNT(ASOID)NASOID,SUM(NCREDITOS)NCREDITOS,'
      +'SUM(SALDO_PEN)SALDO_PEN,SUM(SALDO_VEN)SALDO_VEN,SUM(SALDO_DPE)SALDO_DPE,SUM(SALDO_TOTAL)SALDO_TOTAL,SUM(SALDO_CAP)SALDO_CAP,SUM(PROVISIONPOR) PROVISION,MAX(FEC_PROC)FEC_PROC '
      +'FROM('
      +'SELECT '
      +'CASE WHEN MAX(DIAS_ATRA)>=120  AND MAX(DIAS_ATRA)<=360  THEN 120 '
      +'     WHEN MAX(DIAS_ATRA)>=361  AND MAX(DIAS_ATRA)<=720  THEN 361 '
      +'     WHEN MAX(DIAS_ATRA)>=721  AND MAX(DIAS_ATRA)<=1080 THEN 721 '
      +'     WHEN MAX(DIAS_ATRA)>=1081 AND MAX(DIAS_ATRA)<=1800 THEN 1081'
      +'     WHEN MAX(DIAS_ATRA)>=1801 AND MAX(DIAS_ATRA)<=3600 THEN 1801'
      +'     WHEN MAX(DIAS_ATRA)>=3601                          THEN 3601 END ORDEN,'
      +'CASE WHEN MAX(DIAS_ATRA)>=120  AND MAX(DIAS_ATRA)<=360  THEN ''120 A 360'' '
      +'     WHEN MAX(DIAS_ATRA)>=361  AND MAX(DIAS_ATRA)<=720  THEN ''361 A 720'' '
      +'     WHEN MAX(DIAS_ATRA)>=721  AND MAX(DIAS_ATRA)<=1080 THEN ''721 A 1080'' '
      +'     WHEN MAX(DIAS_ATRA)>=1081 AND MAX(DIAS_ATRA)<=1800 THEN ''1081 A 1800'' '
      +'     WHEN MAX(DIAS_ATRA)>=1801 AND MAX(DIAS_ATRA)<=3600 THEN ''1801 A 3600'' '
      +'     WHEN MAX(DIAS_ATRA)>=3601                          THEN ''3601 A MAS'' END RANGO,'
      +' ASOID,'
      +'MAX(PERIODO)PERIODO, '
      +'MAX(ASOTIPID) ASOTIPID, '
      +'COUNT(CREDID) NCREDITOS,'
      +'SUM(NVL(SALDO_PEN,0)) SALDO_PEN,'
      +'SUM(NVL(SALDO_VEN,0)) SALDO_VEN,'
      +'SUM(NVL(SALDO_DPE,0)) SALDO_DPE,'
      +'SUM(NVL(SALDO_VEN,0)+NVL(SALDO_PEN,0)+NVL(SALDO_DPE,0) ) SALDO_TOTAL,'
      +'SUM(NVL(SALDO_CAP,0)) SALDO_CAP,'
      +'SUM(NVL(PROVISION,0)) PROVISION,'
      +'SUM(NVL(PROVISIONPOR,0)) PROVISIONPOR,'
      +'MAX(FEC_PROC) FEC_PROC '
      +' FROM COB_FSC_CARTERA b  Where '
      +' PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text) + Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))
      +' AND ASOTIPID = ' + QuotedStr(Trim(dblcdTipoAsociado.Text))
      +' GROUP BY '
      +' CASE WHEN DIAS_ATRA>=120  AND DIAS_ATRA<=360  THEN 120 '
      +' WHEN DIAS_ATRA>=361  AND DIAS_ATRA<=720  THEN 361  '
      +' WHEN DIAS_ATRA>=721  AND DIAS_ATRA<=1080 THEN 721  '
      +' WHEN DIAS_ATRA>=1081 AND DIAS_ATRA<=1800 THEN 1081 '
      +' WHEN DIAS_ATRA>=1801 AND DIAS_ATRA<=3600 THEN 1801 '
      +' WHEN DIAS_ATRA>=3601  THEN 3601 END,ASOID '
      +') '
      +' GROUP BY ORDEN '
      +' ORDER BY ORDEN ';
DM1.cdsQry1.Close;
DM1.cdsQry1.DataRequest(xSql);
DM1.cdsQry1.Open;

If DM1.cdsQry1.RecordCount=0 Then
Begin
//Inicio HPC_201524_COB
  ShowMessage('No existe información Procesada en este Periodo');
//FInal HPC_201524_COB
  Exit;
End;


 TNumericField(DM1.cdsQry1.FieldByName('SALDO_VEN')).DisplayFormat:='###,###,##0';
 TNumericField(DM1.cdsQry1.FieldByName('SALDO_DPE')).DisplayFormat:='###,###,##0';
 TNumericField(DM1.cdsQry1.FieldByName('SALDO_PEN')).DisplayFormat:='###,###,##0.00';
 TNumericField(DM1.cdsQry1.FieldByName('SALDO_TOTAL')).DisplayFormat:='###,###,##0.00';
 TNumericField(DM1.cdsQry1.FieldByName('SALDO_CAP')).DisplayFormat:='###,###,##0.00';
 TNumericField(DM1.cdsQry1.FieldByName('PROVISION')).DisplayFormat:='###,###,##0.00';

 dbgCandidatos.Selected.Clear;
 dbgCandidatos.Selected.Add('RANGO'#9'14'#9'Días de Atraso'#9#9);
 dbgCandidatos.Selected.Add('NASOID'#9'7'#9'N°Asoc.'#9#9);
 dbgCandidatos.Selected.Add('NCREDITOS'#9'7'#9'N°Créd.'#9#9);
 dbgCandidatos.Selected.Add('SALDO_VEN'#9'15'#9'Saldo~Vencido'#9#9);
 dbgCandidatos.Selected.Add('SALDO_DPE'#9'15'#9'Saldo~Dif.Pendiente'#9#9);
 dbgCandidatos.Selected.Add('SALDO_PEN'#9'15'#9'Saldo~Pendiente'#9#9);
 dbgCandidatos.Selected.Add('SALDO_TOTAL'#9'15'#9'Saldo~Total'#9#9);
 dbgCandidatos.Selected.Add('SALDO_CAP'#9'15'#9'Saldo~Capital'#9#9);
 dbgCandidatos.Selected.Add('PROVISION'#9'15'#9'Provisión'#9#9);
 dbgCandidatos.ApplySelected;

    //Sumariza totales
    CantidadAsociados := 0;
    CantidadCreditos  := 0;
    SaldoVencido      := 0;
    SaldoPendiente    := 0;
    SaldoCapital      := 0;
    SaldoDifPendiente := 0;
    SaldoTotal        := 0;
    Provision         := 0;
    DM1.cdsQry1.First;
    lblUltFecProc.Caption := 'Del Periodo, ultima Fec.Proceso:'+ FormatDateTime('dd/mm/yyyy',DM1.cdsQry1.fieldbyname('FEC_PROC').AsDateTime);
    while not DM1.cdsQry1.Eof do
    begin
      CantidadAsociados := CantidadAsociados + DM1.cdsQry1.FieldByName('NASOID').AsInteger;
      CantidadCreditos  := CantidadCreditos  + DM1.cdsQry1.FieldByName('NCREDITOS').AsInteger;
      SaldoDifPendiente := SaldoDifPendiente + DM1.cdsQry1.FieldByName('SALDO_DPE').AsCurrency;
      SaldoVencido      := SaldoVencido + DM1.cdsQry1.FieldByName('SALDO_VEN').AsCurrency;
      SaldoPendiente    := SaldoPendiente + DM1.cdsQry1.FieldByName('SALDO_PEN').AsCurrency;
      SaldoCapital      := SaldoCapital + DM1.cdsQry1.FieldByName('SALDO_CAP').AsCurrency;
      SaldoTotal        := SaldoTotal + DM1.cdsQry1.FieldByName('SALDO_TOTAL').AsCurrency;
      Provision         := Provision + DM1.cdsQry1.FieldByName('PROVISION').AsCurrency;
      DM1.cdsQry1.Next;
    end;

    dbgCandidatos.ColumnByName('RANGO').FooterValue := 'Total';
    dbgCandidatos.ColumnByName('NASOID').FooterValue := FloatTostrf(CantidadAsociados, ffnumber, 15, 0);
    dbgCandidatos.ColumnByName('NCREDITOS').FooterValue := FloatTostrf(CantidadCreditos, ffnumber, 15, 0);
    dbgCandidatos.ColumnByName('SALDO_VEN').FooterValue := FloatTostrf(SaldoVencido, ffnumber, 15, 2);
    dbgCandidatos.ColumnByName('SALDO_DPE').FooterValue := FloatTostrf(SaldoDifPendiente, ffnumber, 15, 2);
    dbgCandidatos.ColumnByName('SALDO_PEN').FooterValue := FloatTostrf(SaldoPendiente, ffnumber, 15, 2);
    dbgCandidatos.ColumnByName('SALDO_CAP').FooterValue := FloatTostrf(SaldoCapital, ffnumber, 15, 2);
    dbgCandidatos.ColumnByName('SALDO_TOTAL').FooterValue := FloatTostrf(SaldoTotal, ffnumber, 15, 2);
    dbgCandidatos.ColumnByName('PROVISION').FooterValue := FloatTostrf(Provision, ffnumber, 15, 2);
    dbgCandidatos.RefreshDisplay;
         }
end;
//Fin : HPC_201703_COB  Modificar el reporte de los candidatos al FSC - MEMO 905-2016-DM-COB
//Final HPC_201504_COB                                                                      

//Inicio HPC_201504_COB
procedure TFCandidatosFSC.BitBtn1Click(Sender: TObject);
begin
pnlMetodo.Visible := False;
end;
//Final HPC_201504_COB

//Inicio HPC_201504_COB
procedure TFCandidatosFSC.BitBtn2Click(Sender: TObject);
begin
  pnlMetodo.Top  := 0;
  pnlMetodo.Left := 97;
  pnlMetodo.Visible := True;
end;
//Final HPC_201504_COB
//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn5Click(Sender: TObject);
begin
 If CDSINTERINO.RecordCount=0 Then
 Begin
  ShowMessage('No existe información para exportar');
  exit;
 End;

 If Length(Trim(edtNumero.Text))>0 Then
 Begin
   DM1.cdsQry5.Filter :='FLAG<>''0'' ';
   DM1.cdsQry5.Filtered := True;
 End
 Else
 Begin
   DM1.cdsQry4.Filter :='FLAG<>''0'' ';
   DM1.cdsQry4.Filtered := True;
 End;

 DM1.HojaExcel('CANDIDATOS INTERINOS',dtgData.DataSource,dtgData);
 DM1.cdsQry5.Filtered := False;
 DM1.cdsQry4.Filtered := False;

end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BtnFiltaInterinosClick(Sender: TObject);
VAR XSQL:STRING;
begin


 CDSINTERINO.EmptyDataSet;
 edtNumero.Text :='';
 btnProcFSC.Visible:= False;
 
 CargarCandidatosInterinos;
 If  CDSINTERINO.RecordCount>0 Then
 Begin
   edtNumero.Text :=DM1.cdsQry5.fieldByname('num_candidato').AsString;
   dtgData.DataSource:=DM1.dsQry5 ;
   btnProcFSC.Visible:= True;
   exit;
 End;
 dtgData.DataSource:=DM1.dsQry4 ;
//Inicio HPC_201715_COB
//Realizar las mejoras en el proceso de generación de candidatos INTERINOS para ser cancelados con el F.S.C.
 XSQL:='WITH CALIFICACION AS '+
       '(SELECT ASOID,CFCDES_F,PERIODO,DNRK FROM ('+
       ' Select A.ASOID, B.CFCDES_F, B.PERIODO,'+
       '         DENSE_RANK() OVER(PARTITION BY A.ASOID ORDER BY A.ASOID, B.PERIODO DESC) DNRK '+
       ' FROM (SELECT DISTINCT ASOID FROM DB2ADMIN.ASO_CES_INTERINOS WHERE NVL(FLA_REI_CON_CRE_INT,''S'')=''S'') A, CFC000 B '+
       '       WHERE A.ASOID = B.ASOID) '+
       ' WHERE  DNRK = 1)  '+
       'SELECT ''1'' FLAG,ROWNUM LIN,SUBSTR(ASOID, 1, 10) ASOID,ASOCODMOD,ASOAPENOM,INVALIDEZ, FALLECIDO,ASOTIPID,DIAS_ATRA,MONSALCRE,MONSALVEN,NUMCRE,NUMCREAMPL,'+
       '      FECLIQ,TIPBEN,CFCDES_F,SALDOS_PV FROM '+
       '(SELECT ASOID,ASOCODMOD,ASOAPENOM,INVALIDEZ,FALLECIDO,ASOTIPID,DIAS_ATRA,MONSALCRE,MONSALVEN,NUMCRE,NUMCREAMPL,FECLIQ,TIPBEN,'+
       '        CFCDES_F,SALDOS_PV FROM '+
       '('+
       'SELECT A.ASOID,'+
       'B.ASOCODMOD,'+
       'B.ASOAPENOM,'+
       'B.INVALIDEZ,B.FALLECIDO,'+
       'A.ASOTIPID,'+
       'A.DIAS_ATRA,'+
       'DB2ADMIN.SF_COB_DAT_SAL_CREDITO(''1'', A.ASOID, null) MONSALCRE,'+
       'DB2ADMIN.SF_COB_DAT_SAL_CREDITO(''5'', A.ASOID, null) MONSALVEN,'+
       'DB2ADMIN.SF_COB_DAT_SAL_CREDITO(''2'', A.ASOID, A.ASOTIPID) NUMCRE,'+
       'DB2ADMIN.SF_COB_DAT_SAL_CREDITO(''4'', A.ASOID, A.ASOTIPID) NUMCREAMPL,'+
       'FECLIQ,TIPBEN,'+
       'D.CFCDES_F,'+
       'C.SALDOS_PV '+
       'FROM (SELECT C.ASOID,A.ASOTIPID,'+
       '        MAX(CASE WHEN (TO_CHAR(D.CREFVEN,''YYYYMM'') <=TO_CHAR(SYSDATE,''YYYYMM'')) THEN TO_DATE(SYSDATE) - TO_DATE(D.CREFVEN) '+
       '            END) DIAS_ATRA,'+
       '        MAX(FEC_LIQ_BEN) FECLIQ,MAX(TIPBEN)TIPBEN ' +
       '   FROM CRE301 A,'+
       '        (SELECT DISTINCT ASOID, FEC_LIQ_BEN,TIPBEN '+
       '           FROM (SELECT A.ASOID,'+
       '                        TRUNC(C.PVSLFECBE) FEC_LIQ_BEN,PVSTIPBEN TIPBEN,'+
       '                        DENSE_RANK() OVER(PARTITION BY A.ASOID ORDER BY A.ASOID, TRUNC(NVL(C.PVSLFECBE, TO_DATE(''01/01/1900'',''DD/MM/YYYY''))) DESC) DNRK '+
       '                   FROM (SELECT DISTINCT ASOID FROM DB2ADMIN.ASO_CES_INTERINOS  WHERE NVL(FLA_REI_CON_CRE_INT,''S'')=''S'') A,'+
       '                        PVS301 B,'+
       '                        PVS306 C '+
       '                  WHERE B.ASOID = A.ASOID ' +
       '                    AND B.PVSESTADO NOT IN (''04'',''13'') '+
       '                    AND C.ASOID(+) = B.ASOID '+
       '                    AND C.PVSLBENNR(+) = B.PVSLBENNR '+
       '                    AND C.PVSESTLIQ(+) NOT IN (''04'',''13'')) '+
       '          WHERE DNRK = 1 '+
       '            AND FEC_LIQ_BEN IS NOT NULL) C, '+
       '        CRE302 D '+
       '  WHERE C.ASOID = A.ASOID  '+
       '    AND A.CREESTID = ''02'' '+
       '    AND A.ASOTIPID=''DO'' '+
       '    AND A.CREFOTORG<C.FEC_LIQ_BEN '+
       '    AND D.ASOID = A.ASOID '+
       '    AND D.CREDID = A.CREDID '+
       '    AND D.CREESTID IN (''14'', ''02'',''11'',''27'',''19'') '+
       '  GROUP BY C.ASOID, A.ASOTIPID) A, '+
       'APO201 B,RIE_EST_GEN C,CALIFICACION D '+
' WHERE A.ASOID = B.ASOID '+
'    AND C.ASOID=A.ASOID AND C.PERACT=TO_CHAR(ADD_MONTHS(SYSDATE,-1),''YYYYMM'') '+
'    AND D.ASOID = C.ASOID '+
'    AND D.CFCDES_F IN (''DUDOSO'', ''PERDIDA'') '+
' ) WHERE '+
'  MONSALCRE > 0  AND DIAS_ATRA > 59 '+
'  AND ((NVL(INVALIDEZ,''N'')<>''S'' AND NVL(FALLECIDO,''N'')<>''S'') AND (TIPBEN NOT IN (''02'',''03''))) '+
'ORDER BY ASOAPENOM ) A';
//Final HPC_201715_COB
   Screen.Cursor := crHourGlass;
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(XSQL);
   DM1.cdsQry4.IndexFieldNames := 'LIN';
   DM1.cdsQry4.Open;
 //INICIO HPC_201702_COB
 If DM1.cdsQry4.RecordCount=0 Then
 Begin
   ShowMessage('No existe información para mostrar');
   Screen.Cursor := crDefault;
   exit;
 End;
 //FINAL HPC_201702_COB

   TNumericField(CDSINTERINO.fieldbyname('VMONSALCRE')).DisplayFormat := '###,###,##0.#0';
   CDSINTERINO.IndexFieldNames :='REGID';

   If DM1.cdsQry4.RecordCount>=1 Then
   Begin
     DM1.cdsQry4.First;
     While not DM1.cdsQry4.Eof do
     Begin
       CDSINTERINO.Append;
       CDSINTERINO.FieldByName('FLAG').AsString       := '1';
       CDSINTERINO.FieldByName('REGID').AsInteger     := DM1.cdsQry4.Fieldbyname('LIN').AsInteger;
       CDSINTERINO.FieldByName('VASOID').AsString     := DM1.cdsQry4.Fieldbyname('ASOID').AsString;
       CDSINTERINO.FieldByName('VASOCODMOD').AsString := DM1.cdsQry4.Fieldbyname('ASOCODMOD').AsString;
       CDSINTERINO.FieldByName('VASOAPENOM').AsString := DM1.cdsQry4.Fieldbyname('ASOAPENOM').AsString;
       CDSINTERINO.FieldByName('VASOTIPID').AsString  := DM1.cdsQry4.Fieldbyname('ASOTIPID').AsString;
       CDSINTERINO.FieldByName('VDIASATRA').AsString  := DM1.cdsQry4.Fieldbyname('DIAS_ATRA').AsString;
       CDSINTERINO.FieldByName('VMONSALCRE').AsFloat  := DM1.cdsQry4.Fieldbyname('MONSALCRE').AsFloat;
       CDSINTERINO.FieldByName('VNUMCRE').AsString    := DM1.cdsQry4.Fieldbyname('NUMCRE').AsString;
       CDSINTERINO.FieldByName('FECLIQ').AsDateTime   := DM1.cdsQry4.Fieldbyname('FECLIQ').AsDateTime;
       DM1.cdsQry4.Next;
     End;
   End;
   sumafooterINTERINOS;
   sumamarcadorINT;
   CDSINTERINO.First;
   Screen.Cursor := crDefault;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn4Click(Sender: TObject);
var xSQL:String;
begin

 If CDSINTERINO.RecordCount=0 then
 Begin
   ShowMessage('No existe ningún registro para procesar');
   exit;
 End;

 If Application.MessageBox(' Primero verifique que NINGUN USUARIO '+#13+
                           ' ESTE GENERANDO CUENTAS AL FSC ',
                           ' ¿ ESTA SEGURO(A) DE CONTINUAR ?',
                                    MB_YESNO + MB_DEFBUTTON1) = IDYES Then
 Begin
  Screen.Cursor := crHourGlass;
  CDSINTERINO.First;
  xSQL:='delete db2admin.COB_CAN_FSC_LOTE_GTT';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  While NOT CDSINTERINO.Eof do
  Begin
    If CDSINTERINO.FieldByName('FLAG').AsString='1' Then
    Begin
      //Tabla Temporal
      xSQL:='Insert Into COB_CAN_FSC_LOTE_GTT(ASOID,ASOTIPID) VALUES('+
            ''''+CDSINTERINO.FieldByname('VASOID').AsString+''','+
            ''''+CDSINTERINO.FieldByname('VASOTIPID').AsString+''')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    End;
    CDSINTERINO.Next
  End;

 xSQL:='Begin db2admin.SP_COB_FSC_LOTE('''+dm1.wUsuario+'''); end;';
 DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

 CDSINTERINO.EmptyDataSet;
 Screen.Cursor := crDefault;
 ShowMessage('Gestion de Cobranzas');
 End;

end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn6Click(Sender: TObject);
begin

 If CDSMAY65.RecordCount=0 Then
 Begin
  ShowMessage('No existe información para exportar');
  exit;
 End;
 
 If Length(Trim(edtNumeroMas65.Text))>0 Then
 Begin
   DM1.cdsQry10.Filter :='FLAG<>''0'' ';
   DM1.cdsQry10.Filtered := True;
 End
 Else
 Begin
   DM1.cdsQry3.Filter :='FLAG<>''0'' ';
   DM1.cdsQry3.Filtered := True;
 End;

 DM1.HojaExcel('CANDIDATOS MAYORES DE 65',dtgData2.DataSource,dtgData2);
 DM1.cdsQry10.Filtered := False;
 DM1.cdsQry3.Filtered := False;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BtnFiltaMayo65Click(Sender: TObject);
VAR XSQL:STRING;
begin


 CDSMAY65.EmptyDataSet;
 edtNumeroMas65.Text :='';
 btnProcFSC2.Visible:= False;

 CargarCandidatosMayor65;
 If  CDSMAY65.RecordCount>0 Then
 Begin
   edtNumeroMas65.Text :=DM1.cdsQry10.fieldByname('num_candidato').AsString;
   dtgData2.DataSource:=DM1.dsQry10 ;
   btnProcFSC2.Visible:= True;
   exit;
 End;
 dtgData2.DataSource:=DM1.dsQry3 ;



 XSQL:=' WITH MAS65 AS '+
       '(SELECT ASOID,ASOCODMOD,ASOAPENOM,'+
       '       (CASE WHEN ASOFECNAC IS NOT NULL THEN (trunc(months_between(sysdate,ASOFECNAC )/12))  ELSE 0 END) EDAD,'+
       '        REGPENID,NUMAUTONP,ASOFECNAC '+
       ' FROM APO201 '+
       ' WHERE   ((CASE WHEN ASOFECNAC IS NOT NULL THEN (trunc(months_between(to_date(''01/04/2014'', ''dd/mm/yyyy''),ASOFECNAC)/12)) ELSE 0 END) <= 65) '+
       '     and ((CASE  WHEN ASOFECNAC IS NOT NULL THEN (trunc(months_between(sysdate, ASOFECNAC) / 12)) ELSE 0 END) >= 65) ), '+

       ' CALIFICACION AS '+
       '(SELECT ASOID,CFCDES_F,PERIODO,DNRK FROM ('+
       ' Select A.ASOID, B.CFCDES_F, B.PERIODO,'+
       '         DENSE_RANK() OVER(PARTITION BY A.ASOID ORDER BY A.ASOID, B.PERIODO DESC) DNRK '+
       ' FROM MAS65 A, CFC000 B '+
       '       WHERE A.ASOID = B.ASOID) '+
       ' WHERE  DNRK = 1)  '+

       ' SELECT ''1''FLAG,ROWNUM LIN,A.ASOID,ASOTIPID,ASOCODMOD,A.ASOAPENOM,MONSALCRE,MONSALVEN,NUMCRE,NUMCREAMPL,FECLIQ,EDAD,REGPEN,AUTONP,A.CFCDES_F,SALDOS_PV FROM '+
       '( '+
       ' SELECT DISTINCT C.ASOID,A.ASOTIPID,'+
       '        C.ASOCODMOD,C.ASOAPENOM,'+
       '        SF_COB_DAT_SAL_CREDITO(''1'', C.ASOID, null) MONSALCRE,'+
       '        SF_COB_DAT_SAL_CREDITO(''5'', A.ASOID, null) MONSALVEN,'+
       '        SF_COB_DAT_SAL_CREDITO(''2'', C.ASOID, A.ASOTIPID) NUMCRE,'+
       '        SF_COB_DAT_SAL_CREDITO(''4'', C.ASOID, A.ASOTIPID) NUMCREAMPL,'+
       '        FEC_LIQ_BEN FECLIQ,C.EDAD,'+
       '        CASE WHEN C.REGPENID = ''02'' THEN ''19990'' ELSE ''AFP'' END REGPEN,'+
       '         C.AUTONP, '+
       '         D.CFCDES_F '+
       'FROM CRE301 A,'+
       '    (SELECT DISTINCT ASOID,ASOCODMOD,ASOAPENOM,EDAD,REGPENID,(CASE WHEN NUMAUTONP IS NOT NULL THEN ''S'' ELSE NULL END) AUTONP,FEC_LIQ_BEN '+
       '      FROM (SELECT A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.EDAD,A.REGPENID,A.NUMAUTONP,'+
       '                TRUNC(C.PVSLFECBE) FEC_LIQ_BEN,'+
       '                DENSE_RANK() OVER(PARTITION BY A.ASOID ORDER BY A.ASOID, TRUNC(NVL(C.PVSLFECBE, TO_DATE(''01/01/1900'',''DD/MM/YYYY''))) DESC) DNRK '+
       '            FROM MAS65 A, PVS301 B, PVS306 C '+
       '            WHERE B.ASOID = A.ASOID '+
       '              AND B.PVSESTADO NOT IN (''04'', ''13'') '+
       '              AND C.ASOID(+) = B.ASOID '+
       '              AND C.PVSLBENNR(+) = B.PVSLBENNR '+
       '              AND C.PVSESTLIQ(+) NOT IN (''04'',''13'')) '+
       '     WHERE DNRK = 1 AND FEC_LIQ_BEN IS NOT NULL ) C, '+
       '     CALIFICACION D '+
       ' WHERE (C.REGPENID = ''03'' OR (C.REGPENID = ''02'' AND C.AUTONP IS NULL)) AND '+
       '       A.ASOID = C.ASOID   AND '+
       '       A.CREESTID = ''02'' AND '+
       '       D.ASOID=A.ASOID AND D.CFCDES_F IN (''DUDOSO'',''PERDIDA'') AND '+
       '       NOT EXISTS (SELECT ASOID '+
       '                   FROM DB2ADMIN.ASO_CES_INTERINOS '+
       '                   WHERE ASOID = C.ASOID) ORDER BY ASOAPENOM '+
       ')A, RIE_EST_GEN C '+
       ' WHERE C.ASOID=A.ASOID AND C.PERACT=TO_CHAR(ADD_MONTHS(SYSDATE,-1),''YYYYMM'') ';
      Screen.Cursor := crHourGlass;
      DM1.cdsQry3.IndexFieldNames := 'LIN';
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(XSQL);
      DM1.cdsQry3.Open;

   TNumericField(CDSMAY65.fieldbyname('VMONSALCRE')).DisplayFormat := '###,###,##0.#0';
   CDSMAY65.IndexFieldNames :='REGID';

   If DM1.cdsQry3.RecordCount>1 Then
   Begin
     DM1.cdsQry3.First;
     While not DM1.cdsQry3.Eof do
     Begin
       CDSMAY65.Append;
       CDSMAY65.FieldByName('FLAG').AsString        := '1';
       CDSMAY65.FieldByName('REGID').AsInteger      := DM1.cdsQry3.Fieldbyname('LIN').AsInteger;
       CDSMAY65.FieldByName('VASOID').AsString      := DM1.cdsQry3.Fieldbyname('ASOID').AsString;
       CDSMAY65.FieldByName('VASOCODMOD').AsString  := DM1.cdsQry3.Fieldbyname('ASOCODMOD').AsString;
       CDSMAY65.FieldByName('VASOAPENOM').AsString  := DM1.cdsQry3.Fieldbyname('ASOAPENOM').AsString;
       CDSMAY65.FieldByName('VEDAD').AsString       := DM1.cdsQry3.Fieldbyname('EDAD').AsString;
       CDSMAY65.FieldByName('VMONSALCRE').AsString  := DM1.cdsQry3.Fieldbyname('MONSALCRE').AsString;
       CDSMAY65.FieldByName('VNUMCRE').AsString     := DM1.cdsQry3.Fieldbyname('NUMCRE').AsString;
       CDSMAY65.FieldByName('VREGPEN').AsString     := DM1.cdsQry3.Fieldbyname('REGPEN').AsString;
       CDSMAY65.FieldByName('VAUTONP').AsString     := DM1.cdsQry3.Fieldbyname('AUTONP').AsString;
       CDSMAY65.FieldByName('VFECLIQ').AsDateTime   := DM1.cdsQry3.Fieldbyname('FECLIQ').AsDateTime;
       CDSMAY65.FieldByName('VASOTIPID').AsString   := DM1.cdsQry3.Fieldbyname('ASOTIPID').AsString;
       DM1.cdsQry3.Next;
     End;
   End;
   sumafooterMAY65;
   sumamarcadorMAY65;
   CDSMAY65.First;
   Screen.Cursor := crDefault;

end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn8Click(Sender: TObject);
var xSQL:String;
begin

 If CDSMAY65.RecordCount=0 then
 Begin
   ShowMessage('No existe ningún registro para procesar');
   exit;
 End;

 If Application.MessageBox(' Primero verifique que NINGUN USUARIO '+#13+
                           ' ESTE GENERANDO CUENTAS AL FSC ',
                           ' ¿ ESTA SEGURO(A) DE CONTINUAR ?',
                                    MB_YESNO + MB_DEFBUTTON1) = IDYES Then
 Begin
  Screen.Cursor := crHourGlass;
  CDSMAY65.First;
  xSQL:='delete db2admin.COB_CAN_FSC_LOTE_GTT';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  While NOT CDSMAY65.Eof do
  Begin
    If CDSMAY65.FieldByName('FLAG').AsString='1' Then
    Begin
    //Tabla Temporal
    xSQL:='Insert Into COB_CAN_FSC_LOTE_GTT(ASOID,ASOTIPID) VALUES('+
          ''''+CDSMAY65.FieldByname('VASOID').AsString+''','+
          ''''+CDSMAY65.FieldByname('VASOTIPID').AsString+''')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    End;
    CDSMAY65.Next
  End;

 xSQL:='Begin db2admin.SP_COB_FSC_LOTE('''+dm1.wUsuario+'''); end;';
 DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

 CDSMAY65.EmptyDataSet;
 Screen.Cursor := crDefault;
 ShowMessage('Termino descargo FSC');
 End;

end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.sumafooterINTERINOS;
var total : double;
begin
  CDSINTERINO.First;
  total:=0;
  While Not CDSINTERINO.Eof do
  Begin
    total := total+CDSINTERINO.FieldByname('VMONSALCRE').AsFloat;
    CDSINTERINO.Next;
  End;
  DBGINTERINO.ColumnByName('VASOAPENOM').FooterValue := 'Total';
  DBGINTERINO.ColumnByName('VMONSALCRE').FooterValue := FormatFloat('###,###,##0.00', total);
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.sumafooterMAY65;
var total : double;
begin
  CDSMAY65.First;
  total:=0;
  While Not CDSMAY65.Eof do
  Begin
    total := total+CDSMAY65.FieldByname('VMONSALCRE').AsFloat;
    CDSMAY65.Next;
  End;
  DBGMAY65.ColumnByName('VASOAPENOM').FooterValue := 'Total';
  DBGMAY65.ColumnByName('VMONSALCRE').FooterValue := FormatFloat('###,###,##0.00', total);
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.DBGINTERINODblClick(Sender: TObject);
begin
   DBGINTERINO.Columns[0].ReadOnly  := True;
   DBGINTERINO.Columns[1].ReadOnly  := True;
   DBGINTERINO.Columns[2].ReadOnly  := True;
   DBGINTERINO.Columns[3].ReadOnly  := True;
   DBGINTERINO.Columns[4].ReadOnly  := True;
   DBGINTERINO.Columns[5].ReadOnly  := True;
   DBGINTERINO.Columns[6].ReadOnly  := True;
   DBGINTERINO.Columns[7].ReadOnly  := True;
   DBGINTERINO.Columns[9].ReadOnly  := True;
   If Length(TRim(edtNumero.Text))=0 Then
   Begin
   If CDSINTERINO.FieldByName('FLAG').AsString = '1' Then
   Begin
      CDSINTERINO.Edit;
      CDSINTERINO.FieldByName('FLAG').AsString := '0';
      If DM1.cdsQry4.Locate('LIN',VarArrayOf([CDSINTERINO.FieldByName('REGID').AsInteger]), []) Then
      Begin
        DM1.cdsQry4.Edit;
        DM1.cdsQry4.FieldByName('FLAG').AsString:='0';
      End;
      If  CDSINTERINO.FieldByName('FLAG').AsString='0' Then   vsuma:= DM1.FRound(vsuma-CDSINTERINO.FieldByName('VMONSALCRE').AsFloat,15,2);
   End
   Else
   Begin
      CDSINTERINO.Edit;
      CDSINTERINO.FieldByName('FLAG').AsString := '1' ;
      If DM1.cdsQry4.Locate('LIN',VarArrayOf([CDSINTERINO.FieldByName('REGID').AsInteger]), []) Then
      Begin
        DM1.cdsQry4.Edit;
        DM1.cdsQry4.FieldByName('FLAG').AsString:='1';
      End;
      If  CDSINTERINO.FieldByName('FLAG').AsString='1' Then   vsuma:=DM1.FRound(vsuma+CDSINTERINO.FieldByName('VMONSALCRE').AsFloat,15,2);
   End;
   edtMarca.Text := FloatToStr(vsuma);
   edtMarca.Text := FormatFloat('###,###.00', DM1.Valores(edtMarca.Text));
   End;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.DBGMAY65DblClick(Sender: TObject);
begin

   DBGMAY65.Columns[0].ReadOnly  := True;
   DBGMAY65.Columns[1].ReadOnly  := True;
   DBGMAY65.Columns[2].ReadOnly  := True;
   DBGMAY65.Columns[3].ReadOnly  := True;
   DBGMAY65.Columns[4].ReadOnly  := True;
   DBGMAY65.Columns[5].ReadOnly  := True;
   DBGMAY65.Columns[6].ReadOnly  := True;
   DBGMAY65.Columns[7].ReadOnly  := True;
   DBGMAY65.Columns[9].ReadOnly  := True;
   DBGMAY65.Columns[10].ReadOnly  := True;

   If Length(TRim(edtNumeroMas65.Text))=0 Then
   Begin
   If CDSMAY65.FieldByName('FLAG').AsString = '1' Then
   Begin
      CDSMAY65.Edit;
      CDSMAY65.FieldByName('FLAG').AsString := '0';
      If DM1.cdsQry3.Locate('LIN',VarArrayOf([CDSMAY65.FieldByName('REGID').AsInteger]), []) Then
      Begin
        DM1.cdsQry3.Edit;
        DM1.cdsQry3.FieldByName('FLAG').AsString:='0';
      End;
      If  CDSMAY65.FieldByName('FLAG').AsString='0' Then   vsuma2:= DM1.FRound(vsuma2-CDSMAY65.FieldByName('VMONSALCRE').AsFloat,15,2);
   End
   Else
   Begin
      CDSMAY65.Edit;
      CDSMAY65.FieldByName('FLAG').AsString := '1' ;
      If DM1.cdsQry3.Locate('LIN',VarArrayOf([CDSMAY65.FieldByName('REGID').AsInteger]), []) Then
      Begin
        DM1.cdsQry3.Edit;
        DM1.cdsQry3.FieldByName('FLAG').AsString:='1';
      End;
      If  CDSMAY65.FieldByName('FLAG').AsString='1' Then   vsuma2:=DM1.FRound(vsuma2+CDSMAY65.FieldByName('VMONSALCRE').AsFloat,15,2);
   End;
   edtMarca2.Text := FloatToStr(vsuma2);
   edtMarca2.Text := FormatFloat('###,###.00', DM1.Valores(edtMarca2.Text));
   End;

END;
//Final HPC_201524_COB


//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn10Click(Sender: TObject);
begin
 //Inicio HPC_201715_COB
 //Realizar las mejoras en el proceso de generación de candidatos INTERINOS para ser cancelados con el F.S.C.
 //Inicio HPC_201702_COB
 // pnlInterino.Top  := 126;
 // pnlInterino.Left := 160;
 // pnlInterino.Top  := 99;
 // pnlInterino.Left := 105;
    pnlInterino.Top  := 68;
    pnlInterino.Left := 56;
 //Final HPC_201702_COB
 //Final HPC_201715_COB
  pnlInterino.Visible := True;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn9Click(Sender: TObject);
begin
  pnlInterino.Visible := False;
end;
//Final HPC_201524_COB


//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn11Click(Sender: TObject);
VAR XSQL:String;
begin

 If CDSINTERINO.RecordCount=0 Then
 Begin
  ShowMessage('No existe información para procesar');
  exit;
 End;

 XSQL:='WITH CREDITOS AS '+
       '(SELECT ASOID,CREDID,SUM(NVL(SALDO,0)) CRESDOACT,max(atraso) ATRASO '+
       ' FROM('+
       'Select ASOID,CREDID,NVL(sum(NVL(CREMTO,0)-NVL(CREMTOCOB,0)),0)  SALDO,max(trunc(SYSDATE-CREFVEN)) atraso '+ //VENCIDO
       'FROM CRE302 '+
       'WHERE ASOID= '''+CDSINTERINO.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'') '+
       'GROUP BY ASOID,CREDID '+
       'UNION ALL '+
       'Select ASOID,CREDID,sum( (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0)) SALDO,max(trunc(SYSDATE-CREFVEN)) atraso '+ //PENDIENTE NO DIFERIDO
       'FROM CRE302 '+
       'WHERE ASOID= '''+CDSINTERINO.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
       '      AND (CREFVEN=CREFVENINI or CREFVENINI IS NULL)'+
       'GROUP BY ASOID,CREDID '+
       ' UNION ALL '+
       'Select ASOID,CREDID,sum( NVL(CREMTO,0)- NVL(CREMTOCOB,0)) SALDO,max(trunc(SYSDATE-CREFVEN)) atraso '+//PENDIENTE DIFERIDO
       'FROM CRE302 '+
       'WHERE ASOID= '''+CDSINTERINO.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
       '      AND (CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) '+
       'GROUP BY ASOID,CREDID '+
       ')GROUP BY ASOID,CREDID )'+
//Inicio HPC_201715_COB
//Realizar las mejoras en el proceso de generación de candidatos INTERINOS para ser cancelados con el F.S.C.
       'SELECT A.ASOID,A.ASOCODMOD,A.CREDID,A.TIPCREDES,A.CREFOTORG,A.CREMTOOTOR,A.ASOTIPID,B.CRESDOACT,B.ATRASO, '+
       'CASE WHEN NVL(C.INVALIDEZ,''N'')=''S'' Then ''INVALIDEZ'' ELSE '+
       'CASE WHEN NVL(C.FALLECIDO,''N'')=''S'' Then ''FALLECIDO'' END END ESTADO  '+
       'FROM   CRE301 A,CREDITOS B,APO201 C '+
       'WHERE  A.ASOID = '''+CDSINTERINO.FieldByname('VASOID').AsString+'''  AND A.CREESTID = ''02'' AND '+
       '       B.ASOID=A.ASOID AND B.CREDID=A.CREDID AND C.ASOID=A.ASOID ';
//Final HPC_201715_COB
 DM1.cdsConsulta.Close;
 DM1.cdsConsulta.DataRequest(XSQL);
 DM1.cdsConsulta.Open;
 If DM1.cdsConsulta.RecordCount=0 Then
 Begin
   ShowMessage('No existe información para mostrar');
   Exit;
 End;

 Try
  FFSCCreditos := TFFSCCreditos.Create(Self);
  FFSCCreditos.ShowModal;
 Finally
  FFSCCreditos.Free;
 End;

end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn12Click(Sender: TObject);
VAR XSQL:String;
begin
 If CDSMAY65.RecordCount=0 Then
 Begin
  ShowMessage('No existe información para procesar');
  exit;
 End;

 XSQL:='WITH CREDITOS AS '+
       '(SELECT ASOID,CREDID,SUM(NVL(SALDO,0)) CRESDOACT,max(atraso) ATRASO '+
       ' FROM('+
       'Select ASOID,CREDID,NVL(sum(NVL(CREMTO,0)-NVL(CREMTOCOB,0)),0)  SALDO,max(trunc(SYSDATE-CREFVEN)) atraso '+ //VENCIDO
       'FROM CRE302 '+
       'WHERE ASOID= '''+CDSMAY65.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'') '+
       'GROUP BY ASOID,CREDID '+
       'UNION ALL '+
       'Select ASOID,CREDID,sum( (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0)) SALDO,max(trunc(SYSDATE-CREFVEN)) atraso '+ //PENDIENTE NO DIFERIDO
       'FROM CRE302 '+
       'WHERE ASOID= '''+CDSMAY65.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
       '      AND (CREFVEN=CREFVENINI or CREFVENINI IS NULL)'+
       'GROUP BY ASOID,CREDID '+
       ' UNION ALL '+
       'Select ASOID,CREDID,sum( NVL(CREMTO,0)- NVL(CREMTOCOB,0)) SALDO,max(trunc(SYSDATE-CREFVEN)) atraso '+//PENDIENTE DIFERIDO
       'FROM CRE302 '+
       'WHERE ASOID= '''+CDSMAY65.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
       '      AND (CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) '+
       'GROUP BY ASOID,CREDID '+
       ')GROUP BY ASOID,CREDID )'+

       'SELECT A.ASOID,A.ASOCODMOD,A.CREDID,A.TIPCREDES,A.CREFOTORG,A.CREMTOOTOR,A.ASOTIPID,B.CRESDOACT,B.ATRASO '+
       'FROM   CRE301 A,CREDITOS B '+
       'WHERE  A.ASOID = '''+CDSMAY65.FieldByname('VASOID').AsString+'''  AND A.CREESTID = ''02'' AND '+
       '       B.ASOID=A.ASOID AND B.CREDID=A.CREDID ';
 DM1.cdsConsulta.Close;
 DM1.cdsConsulta.DataRequest(XSQL);
 DM1.cdsConsulta.Open;
 If DM1.cdsConsulta.RecordCount=0 Then
 Begin
   ShowMessage('No existe información para mostrar');
   Exit;
 End;

 Try
  FFSCCreditos := TFFSCCreditos.Create(Self);
  FFSCCreditos.ShowModal;
 Finally
  FFSCCreditos.Free;
 End;

end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn13Click(Sender: TObject);
var XSQL,XNUMERO: string;
    CUENTA:integer;
begin

  If CDSINTERINO.RecordCount=0 Then
  Begin
   ShowMessage('No existe información para procesar');
   exit;
  End;

  If MessageDlg('¿Esta seguro(a) de generar los candidatos marcados para su aplicación con FSC? ', mtConfirmation, [mbYes, mbNo], 0) = mrNO Then Exit;
   CUENTA:=0;
   CDSINTERINO.First;
   While Not CDSINTERINO.Eof Do
   Begin
     If CDSINTERINO.FieldByName('FLAG').AsString='1' Then
     Begin
       XSQL:='Select NUM_CANDIDATO FROM  COB_FSC_INT_MAS_65 Where Asoid='''+CDSINTERINO.FieldByname('VASOID').AsString+''' AND TIPO=''INTERINO'' AND FLGPRO IS NULL ';
       DM1.cdsDSocioE.Close;
       DM1.cdsDSocioE.DataRequest(XSQL);
       DM1.cdsDSocioE.Open;
       If DM1.cdsDSocioE.RecordCount>0 Then
       Begin
        ShowMessage('Existe un Grupo de CANDIDATOS INTERINOS ('+DM1.cdsDSocioE.FieldByname('NUM_CANDIDATO').AsString+') donde se encontró almenos un asociado que quiere ingresar en esta nueva lista, verifique primero..' );
        exit;
       End;
     End;
     CDSINTERINO.Next;
   End;


   CDSINTERINO.First;
     XSQL:='SELECT NVL(TO_NUMBER(MAX(NUM_CANDIDATO))+1,TO_CHAR(SYSDATE,''YYYY'')||''000001'') NUMERO '+
           'FROM COB_FSC_INT_MAS_65 WHERE TO_CHAR(FECCRE,''YYYY'')=TO_CHAR(SYSDATE,''YYYY'') ';
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(XSQL);
     DM1.cdsQry.Open;
     XNUMERO := DM1.cdsQry.FieldByname('NUMERO').AsString;
     
   While Not CDSINTERINO.Eof Do
   Begin
     If CDSINTERINO.FieldByName('FLAG').AsString='1' Then
     Begin
     XSQL:='Insert Into COB_FSC_INT_MAS_65(NUM_CANDIDATO,REGID,TIPO,ASOID,ASOCODMOD,ASOAPENOM,NUMCRE,FECLIQ,ASOTIPID,SALDO,DIAATR,FECCRE,USUARIO)  VALUES('+
           ''''+XNUMERO+''','+
               IntToStr(CDSINTERINO.FieldByName('REGID').AsInteger)+',''INTERINO'','+
           ''''+CDSINTERINO.FieldByName('VASOID').AsString+''','+
           ''''+CDSINTERINO.FieldByName('VASOCODMOD').AsString+''','+
           ''''+CDSINTERINO.FieldByName('VASOAPENOM').AsString+''','+
           ''''+CDSINTERINO.FieldByName('VNUMCRE').AsString+''','+
           ''''+CDSINTERINO.FieldByName('FECLIQ').AsString+''','+
           ''''+CDSINTERINO.FieldByName('VASOTIPID').AsString+''','+
               FloatToStr(CDSINTERINO.FieldByName('VMONSALCRE').AsFloat)+','+
           ''''+CDSINTERINO.FieldByName('VDIASATRA').AsString+''',TRUNC(SYSDATE),'+
           ''''+DM1.wUsuario+''')';
        Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         CUENTA:=CUENTA+1;
        Except
         ShowMessage('Error al actualizar tabla de INTERINOS - COB_FSC_INT_MAS_65' );
         Exit;
       End;

     End;
     CDSINTERINO.Next;
   End;
   If CUENTA=0 Then
   Begin
     ShowMessage('No marcó ningun registro para procesar, intentelo nuevamente');
     exit
   End;

   ShowMessage('Se actualizo con éxito');
   CDSINTERINO.EmptyDataSet;
   edtNumero.Text :='';
   BtnFiltaInterinosClick(Self);


end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.CargarCandidatosInterinos;
var XSQL,XNUMERO:STRING;
begin

  XSQL:='Select num_candidato,COUNT(1) CANT '+
        'From   COB_FSC_INT_MAS_65 Where TIPO=''INTERINO'' AND  FLGPRO IS NULL GROUP BY num_candidato ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(XSQL);
  DM1.cdsQry5.Open;
  If DM1.cdsQry5.RecordCount>0 Then
  Begin
    XNUMERO:=dm1.cdsQry5.FieldByname('num_candidato').AsString;
    XSQL:='Select ''1'' FLAG,num_candidato,regid LIN, asoid, asocodmod,asoapenom, numcre, tipo,fecliq, regpen, onp, asotipid, edad, saldo, diaatr, feccre, usuario, flgpro, usupro, fecpro '+
          'From   COB_FSC_INT_MAS_65 where  num_candidato='''+XNUMERO+''' and FLGPRO IS NULL';
    Dm1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(XSQL);
    DM1.cdsQry5.Open;
 End;

  TNumericField(CDSINTERINO.fieldbyname('VMONSALCRE')).DisplayFormat := '###,###,##0.#0';
  CDSINTERINO.IndexFieldNames :='REGID';

   If DM1.cdsQry5.RecordCount>=1 Then
   Begin
     DM1.cdsQry5.First;
     edtNumero.Text:= DM1.cdsQry5.FieldByName('NUM_CANDIDATO').AsString;
     While not DM1.cdsQry5.Eof do
     Begin
       CDSINTERINO.Append;
       CDSINTERINO.FieldByName('FLAG').AsString       := '1';
       CDSINTERINO.FieldByName('REGID').AsInteger     := DM1.cdsQry5.Fieldbyname('LIN').AsInteger;
       CDSINTERINO.FieldByName('VASOID').AsString     := DM1.cdsQry5.Fieldbyname('ASOID').AsString;
       CDSINTERINO.FieldByName('VASOCODMOD').AsString := DM1.cdsQry5.Fieldbyname('ASOCODMOD').AsString;
       CDSINTERINO.FieldByName('VASOAPENOM').AsString := DM1.cdsQry5.Fieldbyname('ASOAPENOM').AsString;
       CDSINTERINO.FieldByName('VASOTIPID').AsString  := DM1.cdsQry5.Fieldbyname('ASOTIPID').AsString;
       CDSINTERINO.FieldByName('VDIASATRA').AsString  := DM1.cdsQry5.Fieldbyname('DIAATR').AsString;
       CDSINTERINO.FieldByName('VMONSALCRE').AsFloat  := DM1.cdsQry5.Fieldbyname('SALDO').AsFloat;
       CDSINTERINO.FieldByName('VNUMCRE').AsString    := DM1.cdsQry5.Fieldbyname('NUMCRE').AsString;
       CDSINTERINO.FieldByName('FECLIQ').AsDateTime   := DM1.cdsQry5.Fieldbyname('FECLIQ').AsDateTime;
       CDSINTERINO.FieldByName('FLGPRO').AsString     := DM1.cdsQry5.Fieldbyname('FLGPRO').AsString;

       DM1.cdsQry5.Next;
     End;
   End
   Else
   Begin
    CDSINTERINO.IndexFieldNames :='';
    CDSINTERINO.EmptyDataSet;
   End;
   sumafooterINTERINOS;
   sumamarcadorINT;
   CDSINTERINO.First;
   Screen.Cursor := crDefault;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.sumamarcadorINT;
var b:TBookmark;
begin
  CDSINTERINO.DisableControls;
  b:= CDSINTERINO.GetBookmark;
  CDSINTERINO.First;
  vsuma:=0.00;
  While Not CDSINTERINO.Eof do
  Begin
   If CDSINTERINO.FieldByName('FLAG').AsString='1' Then
   Begin
    vsuma    := vsuma+ CDSINTERINO.FieldByname('VMONSALCRE').AsFloat;
   End;
    CDSINTERINO.Next;
  End;
  edtMarca.Text := FloatToStr(vsuma);
  edtMarca.Text := FormatFloat('###,###.00', DM1.Valores(edtMarca.Text));

  CDSINTERINO.GotoBookmark(b);
  CDSINTERINO.EnableControls;
  CDSINTERINO.FreeBookmark(b);
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.SpeedButton2Click(Sender: TObject);
var b:TBookmark;
    XSQL:sTRING;
begin

 If CDSINTERINO.RecordCount=0 Then
 Begin
  ShowMessage('No existe información para procesar');
  exit;
 End;

  If MessageDlg('¿Esta seguro(a) de imprimir los cronogramas de pago marcados? ', mtConfirmation, [mbYes, mbNo], 0) = mrNO Then Exit;

  CDSINTERINO.DisableControls;
  b:= CDSINTERINO.GetBookmark;
  CDSINTERINO.First;
  vsuma:=0.00;
  FFSCCreditos := TFFSCCreditos.Create(Self);
  While Not CDSINTERINO.Eof do
  Begin
   If CDSINTERINO.FieldByName('FLAG').AsString='1' Then
   Begin

     XSQL:='WITH CREDITOS AS '+
           '(SELECT ASOID,CREDID,SUM(NVL(SALDO,0)) CRESDOACT '+
           ' FROM('+
           'Select ASOID,CREDID,NVL(sum(NVL(CREMTO,0)-NVL(CREMTOCOB,0)),0)  SALDO '+ //VENCIDO
           'FROM CRE302 '+
           'WHERE ASOID= '''+CDSINTERINO.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'') '+
           'GROUP BY ASOID,CREDID '+
           'UNION ALL '+
           'Select ASOID,CREDID,sum( (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0)) SALDO  '+ //PENDIENTE NO DIFERIDO
           'FROM CRE302 '+
           'WHERE ASOID= '''+CDSINTERINO.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
           '      AND (CREFVEN=CREFVENINI or CREFVENINI IS NULL)'+
           'GROUP BY ASOID,CREDID '+
           ' UNION ALL '+
           'Select ASOID,CREDID,sum( NVL(CREMTO,0)- NVL(CREMTOCOB,0)) SALDO '+//PENDIENTE DIFERIDO
           'FROM CRE302 '+
           'WHERE ASOID= '''+CDSINTERINO.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
           '      AND (CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) '+
           'GROUP BY ASOID,CREDID '+
           ')GROUP BY ASOID,CREDID )'+

           'SELECT A.ASOID,A.ASOCODMOD,A.CREDID,A.TIPCREDES,A.CREFOTORG,A.CREMTOOTOR,A.ASOTIPID,B.CRESDOACT '+
           'FROM   CRE301 A,CREDITOS B '+
           'WHERE  A.ASOID = '''+CDSINTERINO.FieldByname('VASOID').AsString+'''  AND A.CREESTID = ''02'' AND '+
           '       B.ASOID=A.ASOID AND B.CREDID=A.CREDID ';
     DM1.cdsConsulta.Close;
     DM1.cdsConsulta.DataRequest(XSQL);
     DM1.cdsConsulta.Open;

     If DM1.cdsConsulta.RecordCount>0 Then
     Begin
       While not DM1.cdsConsulta.Eof Do
       Begin
         FFSCCreditos.ppREstCta.DeviceType := 'Printer';
         FFSCCreditos.imprCronograma;
         DM1.cdsConsulta.Next;
       End;
     End;

   End;

    CDSINTERINO.Next;
  End;

  CDSINTERINO.GotoBookmark(b);
  CDSINTERINO.EnableControls;
  CDSINTERINO.FreeBookmark(b);
  FFSCCreditos.Free;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn15Click(Sender: TObject);
VAR XSQL:STRING;
    vdatas : TDataSource;
begin

 If CDSINTERINO.RecordCount=0 Then
 Begin
  ShowMessage('No existe información para exportar');
  exit;
 End;

   XSQL:=
    'SELECT NUMGEST,TIPGES,DESCRIPCION,GESTIONADO,HREG FROM '
   +'(SELECT ''ASOCIADO:''NUMGEST,'''+CDSINTERINO.FieldByname('vAsoapenom').AsString+''' TIPGES,'' ''DESCRIPCION,'' ''GESTIONADO,NULL HREG From dual '
   +' UNION ALL '
   +'SELECT ''COD.MODULAR:''NUMGEST,'''+CDSINTERINO.FieldByname('vAsocodmod').AsString+''' TIPGES,'' ''DESCRIPCION,'' ''GESTIONADO,NULL HREG From dual '
   +' UNION ALL '
   +'SELECT SUBSTR(NUMGEST,1,20)NUMGEST,SUBSTR(TIPGES,1,20)TIPGES,SUBSTR(DESCRIPCION,1,100)DESCRIPCION,SUBSTR(GESTIONADO,1,20)GESTIONADO,TO_DATE(HREG,''DD/MM/YYYY HH24:MI:SS'') HREG FROM '
   +'( SELECT A.CODATE NUMGEST,''ATENCION'' TIPGES, B.DESCRIPCION, A.USUARIO GESTIONADO,TO_CHAR(A.HREG,''DD/MM/YYYY HH24:MI:SS'') HREG '
   +' FROM COB_ATE_ASO A,GES_REF_SEG_DET B '
   +'  WHERE A.ASOID='''+CDSINTERINO.FieldByName('vASOID').AsString+''' '
   +'    AND A.CODATE = B.IDGTNDET(+) '
   +'    AND B.IDGTN  = ''02'' '
   +' UNION ALL '
   +' SELECT A.NROGEST NUMGEST,''TELEFONICA (Externa)'' TIPGES,A.DETOBS DESCRIPCION, A.USUARIO GESTIONADO,TO_CHAR(A.FECHA,''DD/MM/YYYY'')||'' ''||A.HORA HREG '
   +' FROM GES_COB_SEG A, GES_REF_SEG_DET B, GES_REF_SEG C '
   +' WHERE A.ASOID = '''+CDSINTERINO.FieldByName('vASOID').AsString+''' '
   +'   AND  A.IDGESTIONDET = B.IDGTNDET(+) '
   +'   AND C.IDGTN         = A.IDGESTION(+)'
   +' UNION ALL '
   +' SELECT ROWNUM||''-''||A.IDEGESDOM NUMGEST, ''DOMICILIARIA'' TIPGES, C.DESCRIPCION, B.DESGESDOM GESTIONADO,TO_CHAR(A.FECHORREG,''DD/MM/YYYY HH24:MI:SS'')HREG '
   +' FROM COB_GES_DOM_HIS A, COB_GES_DOM  B, GES_REF_SEG_DET C '
   +' WHERE A.ASOID ='''+CDSINTERINO.FieldByName('vASOID').AsString+''' '
   +' AND A.IDEGESDOM = B.IDEGESDOM '
   +' AND A.IDGTNDET  = C.IDGTNDET) )'
   +' ORDER BY TO_DATE(SUBSTR(HREG,1,10),''DD/MM/YYYY'') ASC,SUBSTR(HREG,12,08) ASC ';
   DM1.cdsQry33.Close;
   DM1.cdsQry33.DataRequest(XSQL);
   DM1.cdsQry33.Open;
   If DM1.cdsQry33.RecordCount = 0 Then
   Begin
     ShowMessage('No existe informacion a exportar');
     exit;
   End;
   vdatas := dtgData.DataSource;
   dtgData.DataSource:=DM1.dsQry33;
   DM1.HojaExcel('Consolidado',dtgData.DataSource,dtgData);
   dtgData.DataSource :=vdatas;
end;
procedure TFCandidatosFSC.btnProcFSCClick(Sender: TObject);
VAR XSQL:String;
begin
   If CDSINTERINO.RecordCount=0 Then
   Begin
    ShowMessage('No existe información para procesar');
    exit;
   End;

   fCanstigaFSC := TfCanstigaFSC.create(self);
   XSQL:='SELECT asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid, upagoid, asoresnom, asofresnom,'+
         'resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto, asodpto, zonaid, zonanomb, ubigeoid, dptoid,'+
         'paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil, asoruc, estcivid, asosexo, asoemail, bancoid, asoncta,'+
         'sitcta, asodni, graacid, grainsid, profid, asofmov, asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid,'+
         'asorescese, asofrescese, fgarante, zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea,'+
         'usr_ben, fec_ben, ctaser, cargo, variascuot, crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni,'+
         'asonomdni, asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid,'+
         'zonalabid, fecact, indicador, ccosid, password, codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant,'+
         'actarcren, reingreso, autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, gencodbar, envautdes, corenvautdes,'+
         'codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio,'+
         'codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg,'+
         'mdfusrmod, mdffecmod, emicarta, desmanviv, codmotdestcuo, fecactpad, ceneduid, fallecido, tipo_fall_id, en_actualiz, codtiptel1, codreftel1, codtiptel2,'+
         'codreftel2, codpension, fecregautdesapo, codleypen, numautonp, codblocharen, numblocharen, coddepintren, desdepintren, asoapecasdni, invalidez,'+
         'tipo_inva_id, fecautonp, asoaptser, fecactsit, codreglab, usuautonp, oriopeonp '+
         'FROM APO201 WHERE ASOID='''+CDSINTERINO.FieldByname('VASOID').AsString+''' ';
   Dm1.cdsAso.Close;
   Dm1.cdsAso.DataRequest(XSQL);
   Dm1.cdsAso.Open;
   If Dm1.cdsAso.RecordCount=1 Then
   Begin
     fCanstigaFSC.dtgAsociadoDblClick(Self);
     fCanstigaFSC.Showmodal;
     fCanstigaFSC.free;
   End;

   XSQL:='SELECT ASOID FROM CRE301 WHERE ASOID='''+CDSINTERINO.FieldByname('VASOID').AsString+''' AND ASOTIPID='''+CDSINTERINO.FieldByname('VASOTIPID').AsString+''' AND CREESTID=''02'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 0 Then
   Begin
     XSQL:='UPDATE COB_FSC_INT_MAS_65 SET  FLGPRO=''S'',USUPRO='''+DM1.wUsuario+''',FECPRO=SYSDATE  '+
           'WHERE NUM_CANDIDATO='''+TRIM(edtNumero.Text)+''' AND REGID='''+CDSINTERINO.FieldByname('REGID').AsString+''' AND TIPO=''INTERINO'' AND  ASOID='''+CDSINTERINO.FieldByname('VASOID').AsString+''' ';
     Try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       CDSINTERINO.Edit;
       CDSINTERINO.FieldByName('FLGPRO').AsString := 'S';
     Except
       ShowMessage('Error en la actualización de la tabla COB_FSC_INT_MAS_65, comuniquese con el área de Sistemas');
       exit;
     End;

   End;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.DBGINTERINOCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If CDSINTERINO.FieldByName('FLGPRO').AsString='S' Then
  Begin
    AFont.Color :=  clBlack;
    ABrush.Color := $00C1FFFF;
  End;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn16Click(Sender: TObject);
VAR XSQL:STRING;
    vdatas : TDataSource;
begin

 If CDSMAY65.RecordCount=0 Then
 Begin
  ShowMessage('No existe información para exportar');
  exit;
 End;

   XSQL:=
    'SELECT NUMGEST,TIPGES,DESCRIPCION,GESTIONADO,HREG FROM '
   +'(SELECT ''ASOCIADO:''NUMGEST,'''+CDSMAY65.FieldByname('vAsoapenom').AsString+''' TIPGES,'' ''DESCRIPCION,'' ''GESTIONADO,NULL HREG From dual '
   +' UNION ALL '
   +'SELECT ''COD.MODULAR:''NUMGEST,'''+CDSMAY65.FieldByname('vAsocodmod').AsString+''' TIPGES,'' ''DESCRIPCION,'' ''GESTIONADO,NULL HREG From dual '
   +' UNION ALL '
   +'SELECT SUBSTR(NUMGEST,1,20)NUMGEST,SUBSTR(TIPGES,1,20)TIPGES,SUBSTR(DESCRIPCION,1,100)DESCRIPCION,SUBSTR(GESTIONADO,1,20)GESTIONADO,TO_DATE(HREG,''DD/MM/YYYY HH24:MI:SS'') HREG FROM '
   +'( SELECT A.CODATE NUMGEST,''ATENCION'' TIPGES, B.DESCRIPCION, A.USUARIO GESTIONADO,TO_CHAR(A.HREG,''DD/MM/YYYY HH24:MI:SS'') HREG '
   +' FROM COB_ATE_ASO A,GES_REF_SEG_DET B '
   +'  WHERE A.ASOID='''+CDSMAY65.FieldByName('vASOID').AsString+''' '
   +'    AND A.CODATE = B.IDGTNDET(+) '
   +'    AND B.IDGTN  = ''02'' '
   +' UNION ALL '
   +' SELECT A.NROGEST NUMGEST,''TELEFONICA (Externa)'' TIPGES,A.DETOBS DESCRIPCION, A.USUARIO GESTIONADO,TO_CHAR(A.FECHA,''DD/MM/YYYY'')||'' ''||A.HORA HREG '
   +' FROM GES_COB_SEG A, GES_REF_SEG_DET B, GES_REF_SEG C '
   +' WHERE A.ASOID = '''+CDSMAY65.FieldByName('vASOID').AsString+''' '
   +'   AND  A.IDGESTIONDET = B.IDGTNDET(+) '
   +'   AND C.IDGTN         = A.IDGESTION(+)'
   +' UNION ALL '
   +' SELECT ROWNUM||''-''||A.IDEGESDOM NUMGEST, ''DOMICILIARIA'' TIPGES, C.DESCRIPCION, B.DESGESDOM GESTIONADO,TO_CHAR(A.FECHORREG,''DD/MM/YYYY HH24:MI:SS'')HREG '
   +' FROM COB_GES_DOM_HIS A, COB_GES_DOM  B, GES_REF_SEG_DET C '
   +' WHERE A.ASOID ='''+CDSMAY65.FieldByName('vASOID').AsString+''' '
   +' AND A.IDEGESDOM = B.IDEGESDOM '
   +' AND A.IDGTNDET  = C.IDGTNDET) )'
   +' ORDER BY TO_DATE(SUBSTR(HREG,1,10),''DD/MM/YYYY'') ASC,SUBSTR(HREG,12,08) ASC ';
   DM1.cdsQry33.Close;
   DM1.cdsQry33.DataRequest(XSQL);
   DM1.cdsQry33.Open;
   If DM1.cdsQry33.RecordCount = 0 Then
   Begin
     ShowMessage('No existe informacion a exportar');
     exit;
   End;
   vdatas := dtgData.DataSource;
   dtgData.DataSource:=DM1.dsQry33;
   DM1.HojaExcel('Consolidado',dtgData.DataSource,dtgData);
   dtgData.DataSource :=vdatas;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.SpeedButton1Click(Sender: TObject);
var b:TBookmark;
    XSQL:sTRING;
begin

  If CDSMAY65.RecordCount=0 Then
  Begin
   ShowMessage('No existe información para procesar');
   exit;
  End;

  If MessageDlg('¿Esta seguro(a) de imprimir los cronogramas de pago marcados? ', mtConfirmation, [mbYes, mbNo], 0) = mrNO Then Exit;

  CDSMAY65.DisableControls;
  b:= CDSMAY65.GetBookmark;
  CDSMAY65.First;
  vsuma2:=0.00;
  FFSCCreditos := TFFSCCreditos.Create(Self);
  While Not CDSMAY65.Eof do
  Begin
   If CDSMAY65.FieldByName('FLAG').AsString='1' Then
   Begin

     XSQL:='WITH CREDITOS AS '+
           '(SELECT ASOID,CREDID,SUM(NVL(SALDO,0)) CRESDOACT '+
           ' FROM('+
           'Select ASOID,CREDID,NVL(sum(NVL(CREMTO,0)-NVL(CREMTOCOB,0)),0)  SALDO '+ //VENCIDO
           'FROM CRE302 '+
           'WHERE ASOID= '''+CDSMAY65.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'') '+
           'GROUP BY ASOID,CREDID '+
           'UNION ALL '+
           'Select ASOID,CREDID,sum( (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0)) SALDO  '+ //PENDIENTE NO DIFERIDO
           'FROM CRE302 '+
           'WHERE ASOID= '''+CDSMAY65.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
           '      AND (CREFVEN=CREFVENINI or CREFVENINI IS NULL)'+
           'GROUP BY ASOID,CREDID '+
           ' UNION ALL '+
           'Select ASOID,CREDID,sum( NVL(CREMTO,0)- NVL(CREMTOCOB,0)) SALDO '+//PENDIENTE DIFERIDO
           'FROM CRE302 '+
           'WHERE ASOID= '''+CDSMAY65.FieldByname('VASOID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
           '      AND (CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) '+
           'GROUP BY ASOID,CREDID '+
           ')GROUP BY ASOID,CREDID )'+

           'SELECT A.ASOID,A.ASOCODMOD,A.CREDID,A.TIPCREDES,A.CREFOTORG,A.CREMTOOTOR,A.ASOTIPID,B.CRESDOACT '+
           'FROM   CRE301 A,CREDITOS B '+
           'WHERE  A.ASOID = '''+CDSMAY65.FieldByname('VASOID').AsString+'''  AND A.CREESTID = ''02'' AND '+
           '       B.ASOID=A.ASOID AND B.CREDID=A.CREDID ';
     DM1.cdsConsulta.Close;
     DM1.cdsConsulta.DataRequest(XSQL);
     DM1.cdsConsulta.Open;

     If DM1.cdsConsulta.RecordCount>0 Then
     Begin
       While not DM1.cdsConsulta.Eof Do
       Begin
         FFSCCreditos.ppREstCta.DeviceType := 'Printer';
         FFSCCreditos.imprCronograma;
         DM1.cdsConsulta.Next;
       End;
     End;

   End;

    CDSMAY65.Next;
  End;

  CDSMAY65.GotoBookmark(b);
  CDSMAY65.EnableControls;
  CDSMAY65.FreeBookmark(b);
  FFSCCreditos.Free;
end;
//Final HPC_201524_COB


//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn17Click(Sender: TObject);
var XSQL,XNUMERO: string;
    CUENTA:integer;
begin

  If CDSMAY65.RecordCount=0 Then
  Begin
   ShowMessage('No existe información para procesar');
   exit;
  End;

  If MessageDlg('¿Esta seguro(a) de generar los candidatos marcados para su aplicación con FSC? ', mtConfirmation, [mbYes, mbNo], 0) = mrNO Then Exit;
   CUENTA:=0;
   CDSMAY65.First;
   While Not CDSMAY65.Eof Do
   Begin
     If CDSMAY65.FieldByName('FLAG').AsString='1' Then
     Begin
       XSQL:='Select NUM_CANDIDATO FROM  COB_FSC_INT_MAS_65 Where Asoid='''+CDSMAY65.FieldByname('VASOID').AsString+''' AND TIPO=''MAYOR65'' AND FLGPRO IS NULL ';
       DM1.cdsDSocioE.Close;
       DM1.cdsDSocioE.DataRequest(XSQL);
       DM1.cdsDSocioE.Open;
       If DM1.cdsDSocioE.RecordCount>0 Then
       Begin
        ShowMessage('Existe un Grupo de CANDIDATOS Mayores de 65 años ('+DM1.cdsDSocioE.FieldByname('NUM_CANDIDATO').AsString+') donde se encontró almenos un asociado que quiere ingresar en esta nueva lista, verifique primero..' );
        exit;
       End;
     End;
     CDSMAY65.Next;
   End;


     CDSMAY65.First;
     XSQL:='SELECT NVL(TO_NUMBER(MAX(NUM_CANDIDATO))+1,TO_CHAR(SYSDATE,''YYYY'')||''000001'') NUMERO '+
           'FROM COB_FSC_INT_MAS_65 WHERE TO_CHAR(FECCRE,''YYYY'')=TO_CHAR(SYSDATE,''YYYY'') ';
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(XSQL);
     DM1.cdsQry.Open;
     XNUMERO := DM1.cdsQry.FieldByname('NUMERO').AsString;

   While Not CDSMAY65.Eof Do
   Begin
     If CDSMAY65.FieldByName('FLAG').AsString='1' Then
     Begin
 //   XSQL:='Insert Into COB_FSC_INT_MAS_65(NUM_CANDIDATO,           ASOID,ASOCODMOD,         NUMCRE,FECLIQ,REGPEN,ONP,ASOTIPID,EDAD,SALDO,DIAATR,FECCRE,USUARIO)'
     XSQL:='Insert Into COB_FSC_INT_MAS_65(NUM_CANDIDATO,REGID,TIPO,ASOID,ASOCODMOD,ASOAPENOM,EDAD,NUMCRE,REGPEN,ONP,FECLIQ,ASOTIPID,SALDO,FECCRE,USUARIO)  VALUES('+
           ''''+XNUMERO+''','+
               IntToStr(CDSMAY65.FieldByName('REGID').AsInteger)+',''MAYOR65'','+
           ''''+CDSMAY65.FieldByName('VASOID').AsString+''','+
           ''''+CDSMAY65.FieldByName('VASOCODMOD').AsString+''','+
           ''''+CDSMAY65.FieldByName('VASOAPENOM').AsString+''','+
           ''''+CDSMAY65.FieldByName('VEDAD').AsString+''','+
           ''''+CDSMAY65.FieldByName('VNUMCRE').AsString+''','+
           ''''+CDSMAY65.FieldByName('VREGPEN').AsString+''','+
           ''''+CDSMAY65.FieldByName('VAUTONP').AsString+''','+
           ''''+CDSMAY65.FieldByName('VFECLIQ').AsString+''','+
           ''''+CDSMAY65.FieldByName('VASOTIPID').AsString+''','+
               FloatToStr(CDSMAY65.FieldByName('VMONSALCRE').AsFloat)+',TRUNC(SYSDATE),'+
           ''''+DM1.wUsuario+''')';
        Try
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        Except
         ShowMessage('Error al actualizar tabla de Mayores de 65 años - COB_FSC_INT_MAS_65' );
         Exit;
       End;
       
     End;
     CDSMAY65.Next;
   End;

   ShowMessage('Se actualizo con éxito');
   CDSMAY65.EmptyDataSet;
   edtNumeroMas65.Text :='';
   BtnFiltaMayo65Click(Self);
 End;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.CargarCandidatosMayor65;
var XSQL,XNUMERO:STRING;
begin

  XSQL:='Select num_candidato,COUNT(1) CANT '+
        'From   COB_FSC_INT_MAS_65 Where TIPO=''MAYOR65'' AND  FLGPRO IS NULL GROUP BY num_candidato ';
  DM1.cdsQry10.Close;
  DM1.cdsQry10.DataRequest(XSQL);
  DM1.cdsQry10.Open;
  If DM1.cdsQry10.RecordCount>0 Then
  Begin
    XNUMERO:=dm1.cdsQry10.FieldByname('num_candidato').AsString;
    XSQL:='Select ''1'' FLAG,num_candidato,regid LIN, asoid, asocodmod,asoapenom, numcre, tipo,fecliq, regpen, onp, asotipid, edad, saldo, diaatr, feccre, usuario, flgpro, usupro, fecpro '+
          'From   COB_FSC_INT_MAS_65 where  num_candidato='''+XNUMERO+''' and FLGPRO IS NULL';
    Dm1.cdsQry10.Close;
    DM1.cdsQry10.DataRequest(XSQL);
    DM1.cdsQry10.Open;
 End;

  TNumericField(CDSMAY65.fieldbyname('VMONSALCRE')).DisplayFormat := '###,###,##0.#0';
  CDSMAY65.IndexFieldNames :='REGID';

   If DM1.cdsQry10.RecordCount>=1 Then
   Begin
     DM1.cdsQry10.First;
     edtNumeroMas65.Text:= DM1.cdsQry10.FieldByName('NUM_CANDIDATO').AsString;
     While not DM1.cdsQry10.Eof do
     Begin
       CDSMAY65.Append;
       CDSMAY65.FieldByName('FLAG').AsString       := '1';
       CDSMAY65.FieldByName('REGID').AsInteger     := DM1.cdsQry10.Fieldbyname('LIN').AsInteger;
       CDSMAY65.FieldByName('VASOID').AsString     := DM1.cdsQry10.Fieldbyname('ASOID').AsString;
       CDSMAY65.FieldByName('VASOCODMOD').AsString := DM1.cdsQry10.Fieldbyname('ASOCODMOD').AsString;
       CDSMAY65.FieldByName('VASOAPENOM').AsString := DM1.cdsQry10.Fieldbyname('ASOAPENOM').AsString;
       CDSMAY65.FieldByName('VASOTIPID').AsString  := DM1.cdsQry10.Fieldbyname('ASOTIPID').AsString;
       CDSMAY65.FieldByName('VMONSALCRE').AsFloat  := DM1.cdsQry10.Fieldbyname('SALDO').AsFloat;
       CDSMAY65.FieldByName('VNUMCRE').AsString    := DM1.cdsQry10.Fieldbyname('NUMCRE').AsString;
       CDSMAY65.FieldByName('VFECLIQ').AsDateTime  := DM1.cdsQry10.Fieldbyname('FECLIQ').AsDateTime;
       CDSMAY65.FieldByName('VEDAD').AsInteger     := DM1.cdsQry10.Fieldbyname('EDAD').AsInteger;
       CDSMAY65.FieldByName('VREGPEN').AsString    := DM1.cdsQry10.Fieldbyname('REGPEN').AsString;
       CDSMAY65.FieldByName('VAUTONP').AsString    := DM1.cdsQry10.Fieldbyname('ONP').AsString;
       CDSMAY65.FieldByName('FLGPRO').AsString     := DM1.cdsQry10.Fieldbyname('FLGPRO').AsString;       
       DM1.cdsQry10.Next;
     End;
   End
   Else
   Begin
    CDSMAY65.IndexFieldNames :='';
    CDSMAY65.EmptyDataSet;
   End;
   sumafooterMAY65;
   sumamarcadorMAY65;
   CDSMAY65.First;
   Screen.Cursor := crDefault;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.sumamarcadorMAY65;
var b:TBookmark;
begin
  CDSMAY65.DisableControls;
  b:= CDSMAY65.GetBookmark;
  CDSMAY65.First;
  vsuma2:=0.00;
  While Not CDSMAY65.Eof do
  Begin
   If CDSMAY65.FieldByName('FLAG').AsString='1' Then
   Begin
    vsuma2    := vsuma2+ CDSMAY65.FieldByname('VMONSALCRE').AsFloat;
   End;
    CDSMAY65.Next;
  End;
  edtMarca2.Text := FloatToStr(vsuma2);
  edtMarca2.Text := FormatFloat('###,###.00', DM1.Valores(edtMarca2.Text));

  CDSMAY65.GotoBookmark(b);
  CDSMAY65.EnableControls;
  CDSMAY65.FreeBookmark(b);
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.DBGMAY65CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If CDSMAY65.FieldByName('FLGPRO').AsString='S' Then
  Begin
    AFont.Color :=  clBlack;
    ABrush.Color := $00C1FFFF;
  End
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn20Click(Sender: TObject);
begin
pnlMAYOR65.Visible := False;
end;

procedure TFCandidatosFSC.BitBtn18Click(Sender: TObject);
begin
  pnlMAYOR65.Top  := 126;
  pnlMAYOR65.Left := 130;
  pnlMAYOR65.Visible := True;
end;
//Final HPC_201524_COB


//Inicio HPC_201524_COB
procedure TFCandidatosFSC.btnProcFSC2Click(Sender: TObject);
VAR XSQL:String;
begin

   If CDSMAY65.RecordCount=0 Then
   Begin
    ShowMessage('No existe información para procesar');
    exit;
   End;

   fCanstigaFSC := TfCanstigaFSC.create(self);
   XSQL:='SELECT asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid, upagoid, asoresnom, asofresnom,'+
         'resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto, asodpto, zonaid, zonanomb, ubigeoid, dptoid,'+
         'paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil, asoruc, estcivid, asosexo, asoemail, bancoid, asoncta,'+
         'sitcta, asodni, graacid, grainsid, profid, asofmov, asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid,'+
         'asorescese, asofrescese, fgarante, zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea,'+
         'usr_ben, fec_ben, ctaser, cargo, variascuot, crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni,'+
         'asonomdni, asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid,'+
         'zonalabid, fecact, indicador, ccosid, password, codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant,'+
         'actarcren, reingreso, autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, gencodbar, envautdes, corenvautdes,'+
         'codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio,'+
         'codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg,'+
         'mdfusrmod, mdffecmod, emicarta, desmanviv, codmotdestcuo, fecactpad, ceneduid, fallecido, tipo_fall_id, en_actualiz, codtiptel1, codreftel1, codtiptel2,'+
         'codreftel2, codpension, fecregautdesapo, codleypen, numautonp, codblocharen, numblocharen, coddepintren, desdepintren, asoapecasdni, invalidez,'+
         'tipo_inva_id, fecautonp, asoaptser, fecactsit, codreglab, usuautonp, oriopeonp '+
         'FROM APO201 WHERE ASOID='''+CDSMAY65.FieldByname('VASOID').AsString+''' ';
   Dm1.cdsAso.Close;
   Dm1.cdsAso.DataRequest(XSQL);
   Dm1.cdsAso.Open;
   If Dm1.cdsAso.RecordCount=1 Then
   Begin
     fCanstigaFSC.dtgAsociadoDblClick(Self);
     fCanstigaFSC.Showmodal;
     fCanstigaFSC.free;
   End;

   XSQL:='SELECT ASOID FROM CRE301 WHERE ASOID='''+CDSMAY65.FieldByname('VASOID').AsString+''' AND ASOTIPID='''+CDSMAY65.FieldByname('VASOTIPID').AsString+''' AND CREESTID=''02'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 0 Then
   Begin
     XSQL:='UPDATE COB_FSC_INT_MAS_65 SET  FLGPRO=''S'',USUPRO='''+DM1.wUsuario+''',FECPRO=SYSDATE  '+
           'WHERE NUM_CANDIDATO='''+TRIM(edtNumeroMas65.Text)+''' AND REGID='''+CDSMAY65.FieldByname('REGID').AsString+''' AND TIPO=''MAYOR65'' AND  ASOID='''+CDSMAY65.FieldByname('VASOID').AsString+''' ';
     Try
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       CDSMAY65.Edit;
       CDSMAY65.FieldByName('FLGPRO').AsString := 'S';
     Except
       ShowMessage('Error en la actualización de la tabla COB_FSC_INT_MAS_65, comuniquese con el área de Sistemas');
       exit;
     End;

   End;
end;
//Final HPC_201524_COB

//Inicio HPC_201524_COB
procedure TFCandidatosFSC.BitBtn19Click(Sender: TObject);
begin
  Close;
end;
//Final HPC_201524_COB


//Inicio HPC_201605_COB --Boton cerrar
procedure TFCandidatosFSC.brnCerrarNoProcClick(Sender: TObject);
 VAR XSQL:STRING;
begin

 XSQL:='Select NUM_CANDIDATO From  COB_FSC_INT_MAS_65 Where NUM_CANDIDATO='''+Trim(edtNumero.Text)+''' AND TIPO=''INTERINO'' AND FLGPRO IS NULL ';
 DM1.cdsQry33.Close;
 DM1.cdsQry33.DataRequest(XSQL);
 DM1.cdsQry33.Open;
 If DM1.cdsQry33.RecordCount=0 Then
 Begin
   ShowMessage('No existe Información para Cerrar');
   exit;
 End;


 If MessageDlg('¿Esta seguro(a) de cerrar los candidatos NO PROCESADOS? ', mtConfirmation, [mbYes, mbNo], 0) = mrNO Then Exit;

 Try
   XSQL:='UPDATE COB_FSC_INT_MAS_65 SET FLGPRO=''C'' WHERE NUM_CANDIDATO='''+Trim(edtNumero.Text)+''' AND TIPO=''INTERINO'' AND FLGPRO IS NULL ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   CDSINTERINO.EmptyDataSet;
   edtNumero.Text :='';
   edtMarca.Text:='';
   sumafooterINTERINOS;   
   btnProcFSC.Visible:= False;
 Except
   ShowMessage('Error en la actualización de la tabla COB_FSC_INT_MAS_65, comuniquese con el área de Sistemas');
   Exit;
 End;
end;
//Final HPC_201605_COB


//Inicio HPC_201605_COB  --Candidatos que no se procesaron.
procedure TFCandidatosFSC.BitBtn3Click(Sender: TObject);
 VAR XSQL:STRING;
begin


 XSQL:='Select NUM_CANDIDATO From  COB_FSC_INT_MAS_65 Where NUM_CANDIDATO='''+Trim(edtNumeroMas65.Text)+''' AND TIPO=''MAYOR65'' AND FLGPRO IS NULL ';
 DM1.cdsQry33.Close;
 DM1.cdsQry33.DataRequest(XSQL);
 DM1.cdsQry33.Open;
 If DM1.cdsQry33.RecordCount=0 Then
 Begin
   ShowMessage('No existe Información para Cerrar');
   exit;
 End;

 If MessageDlg('¿Esta seguro(a) de cerrar los candidatos NO PROCESADOS? ', mtConfirmation, [mbYes, mbNo], 0) = mrNO Then Exit;
 Try
   XSQL:='UPDATE COB_FSC_INT_MAS_65 SET FLGPRO=''C'' WHERE NUM_CANDIDATO='''+Trim(edtNumeroMas65.Text)+''' AND TIPO=''MAYOR65'' AND FLGPRO IS NULL ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   CDSMAY65.EmptyDataSet;
   edtNumeroMas65.Text :='';
   edtMarca2.Text:='';
   sumafooterMAY65;
   btnProcFSC2.Visible:= False;
 Except
   ShowMessage('Error en la actualización de la tabla COB_FSC_INT_MAS_65, comuniquese con el área de Sistemas');
   Exit;
 End;
End;
//Final HPC_201605_COB

end.



