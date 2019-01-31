// Inicio Uso Estándares   : 01/08/2011
// Unidad		               : COB428.pas
// Formulario		           : FCtaRecBcoCre
// Fecha de Creación       : 15/12/1993
// Autor			             : Área de Desarrollo de Sistemas
// Objetivo		             : Procesa Recaudación de Cobranzas por Bco Crédito.

// Actualizaciones:
// HPP_00041_COB                    23/10/2088  Reporte Cronograma de Pagos
// HPC_201010_COB(HPP_201108_COB)   14/12/2010  Cobranza de Cta.Recaudadora con FSC
// HPC_201121_COB	                  10/08/2011  IREVILLA / Valida Descargos realizados al FSC - Rutina: validarPagos
// Pase de HPC_201121_COB a HPP_201118_COB: Supervisor de Calidad - 15/08/2011
// HPC_201215_COB                : 20/06/2012  Cobranza de Fondo de Desgravamen
// DPP_201211_COB: Pase se realiza de acuerdo al HPC_201215_COB
// HPC_201221_COB : 03/09/2012 Se modifica el código para que considere los pagos realizados al FSC por Banco.
// DPP_201216_COB : Se realiza el pase a producción a partir del pase HPC_201221_COB
// DPP_201219_COB : Se realiza el pase a producción a partir del HPC_201226_COB
// HPC_201305_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
// SPP_201307_COB : Se realiza el pase a producción a partir del HPC_201305_COB
// HPC_201806_COB : Exceso en Cronogramas Cerrados (ONP, BANCO)
// HPC_201811_COB : Se adiciona la forma de pago en la consulta de cronogramas cerrados
// HPC_201820_COB : Se añade opción de pagos por resolver en los cronogramas cerrados
// COB_201824_HPC : Mejoras en la aplicación de Pagos por Resolver
unit COB428;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, fcTreeView, FileCtrl, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache,
  DB, DBClient, fcButton, fcImgBtn, fcShapeBtn, wwdblook, Wwdbdlg, ComCtrls,
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  ppVar, DBGrids, Mask, fcLabel, ppDBBDE, ppParameter,Mant, ppEndUsr,
  ppStrtch, ppMemo;
// Fin HPC_201806_COB 
type
    TFCtaRecBcoCre = class(TForm)
    btnEnvinfban: TBitBtn;
    BtnCerrar: TBitBtn;
    Memo1: TMemo;
    btnDesOra: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppRepDescargo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    Edit1: TEdit;
    cdsFantasmas: TClientDataSet;
    dsFantasmas: TDataSource;
    btnInconsistencias: TBitBtn;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgCabecera: TwwDBGrid;
    dbgdetalle: TwwDBGrid;
    ppLabel1: TppLabel;
    pplblFecha: TppLabel;
    pplblHora: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape5: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape6: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel13: TppLabel;
    ppDBText16: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    pplImpreso: TppLabel;
    TabSheet4: TTabSheet;
    TabTeletransfer: TPageControl;
    fcLabel1: TfcLabel;
    TabSheet5: TTabSheet;
    bdeNoReg: TppBDEPipeline;
    pprNoReg: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppShape7: TppShape;
    ppLabel17: TppLabel;
    ppShape8: TppShape;
    ppLabel18: TppLabel;
    ppShape9: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppShape10: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppShape11: TppShape;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppShape12: TppShape;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel28: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel29: TppLabel;
    btnrepboldep: TBitBtn;
    btnrepdia: TBitBtn;
    btnelifecpro: TBitBtn;
    btnrepfecpag: TBitBtn;
    btnmarpag: TBitBtn;
    dbgnoregistrados: TwwDBGrid;
    btnreppagnoreg: TBitBtn;
    btndesaut: TBitBtn;
    btnvalaut: TBitBtn;
    dbginconsistencias: TwwDBGrid;
    btnrepdescargo: TBitBtn;
    ppbdepcuodes: TppBDEPipeline;
    pprcuodes: TppReport;
    ppDetailBand5: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppHeaderBand5: TppHeaderBand;
    ppShape18: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLine5: TppLine;
    ppShape21: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppDBText34: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppShape26: TppShape;
    ppLabel48: TppLabel;
    ppShape27: TppShape;
    ppLabel49: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine9: TppLine;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape22: TppShape;
    ppLabel58: TppLabel;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppLabel59: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    pplObservacion: TppLabel;
    ppLabel70: TppLabel;
    pplTitulo02: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLine10: TppLine;
    ppLabel77: TppLabel;
    pplImpresopor: TppLabel;
    ppbdeprepfecreg: TppBDEPipeline;
    pprrepfecreg: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBText9: TppDBText;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppLabel71: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel81: TppLabel;
    ppLabel83: TppLabel;
    ppShape45: TppShape;
    ppDBText23: TppDBText;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    pnlapenom: TPanel;
    Label3: TLabel;
    pnlasoapenomdni: TPanel;
    edtBuscarDet: TEdit;
    rgord: TRadioGroup;
    btnsalmin: TBitBtn;
    btncuocanade: TBitBtn;
    bdeDetGnrDescargo: TppBDEPipeline;
    pprDetGnrDescargo: TppReport;
    bbtnDetGralDescargo: TBitBtn;
    ppParameterList1: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppShape13: TppShape;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLabel47: TppLabel;
    ppLabel50: TppLabel;
    ppLine6: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel30: TppLabel;
    ppLDel: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel82: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppDetailBand3: TppDetailBand;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText45: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLImpresopor2: TppLabel;
    ppDBText27: TppDBText;
    ppDBText35: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText46: TppDBText;
    ppDBText50: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLabel51: TppLabel;
    ppLine15: TppLine;
    ppDBText36: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel86: TppLabel;
//Inicio: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
    btnAsoBanco: TBitBtn;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    TabSheet3: TTabSheet;
    dbgCronogramaCerrados: TwwDBGrid;
    bbtnEnvDev: TBitBtn;
    btnAExcel: TBitBtn;
    dtgData: TDBGrid;
    ppRepDevol: TppReport;
    ppHeaderBand6: TppHeaderBand;
    lblRotPag: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    xxx: TppLabel;
    ppp: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLblNomGen: TppLabel;
    ppLblCodMod: TppLabel;
    ppLblFecDoc: TppLabel;
    ppLblDpto: TppLabel;
    ppLblCodPag: TppLabel;
    ppLblUproc: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLblDesem: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    PPLblDni: TppLabel;
    lblPagEn: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppMeses: TppMemo;
    ppSummaryBand5: TppSummaryBand;
    ppLTotal: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLblMonDev: TppLabel;
    ppLblUsuario: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel108: TppLabel;
    ppLine26: TppLine;
    ppLabel109: TppLabel;
    pplFirmaAso: TppLabel;
    ppLabel110: TppLabel;
    ppParameterList2: TppParameterList;
    ppDBPi2: TppDBPipeline;
    ppDBPi2ppField1: TppField;
    ppDBPi2ppField2: TppField;
    ppDBPi2ppField3: TppField;
    ppDBPi2ppField4: TppField;
    ppDBPi2ppField5: TppField;
    ppDBPi2ppField6: TppField;
    ppDesigner1: TppDesigner;
// Fin HPC_201806_COB 
//Fin: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista

    procedure BtnCerrarClick(Sender: TObject);
    procedure btnEnvinfbanClick(Sender: TObject);
    procedure btnDesOraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnEliminaClick(Sender: TObject);
    procedure btnVerCobClick(Sender: TObject);
    procedure TabTeletransferChange(Sender: TObject);
    //DPP_201211_COB
    //ELIMINAR
    //procedure fcsbDesAutClick(Sender: TObject);
    //DPP_201211_COB
   procedure edtBuscarDetChange(Sender: TObject);
    procedure edtBuscarDetKeyPress(Sender: TObject; var Key: Char);
    procedure ppHeaderBand4BeforePrint(Sender: TObject);
    procedure dbgCabeceraCellChanged(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure btnelifecproClick(Sender: TObject);
    procedure btnrepboldepClick(Sender: TObject);
    procedure btnrepdiaClick(Sender: TObject);
    procedure btnrepfecpagClick(Sender: TObject);
    procedure btnmarpagClick(Sender: TObject);
    procedure btnreppagnoregClick(Sender: TObject);
    procedure btndesautClick(Sender: TObject);
    procedure btnvalautClick(Sender: TObject);
    procedure btnrepdescargoClick(Sender: TObject);
    procedure pplObservacionPrint(Sender: TObject);
    procedure dbgdetalleDblClick(Sender: TObject);
    procedure rgordClick(Sender: TObject);
    procedure btnsalminClick(Sender: TObject);
    procedure btncuocanadeClick(Sender: TObject);
    procedure bbtnDetGralDescargoClick(Sender: TObject);
//Inicio: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
    procedure btnAsoBancoClick(Sender: TObject);
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    procedure bbtnEnvDevClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure dbgCronogramaCerradosDblClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
// Inicio: HPC_201820_COB
// Se adicona en el grid para los desaprobados qu lo pinte de color rojo
    procedure dbgCronogramaCerradosCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
// Fin: HPC_201820_COB
// Fin HPC_201806_COB 
//Fin: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista

  private
    { Private declarations }
  public
    { Public declarations }
    function verificaNoRegistrado:String;
    //INICIO: DPP_201211_COB
    //procedure descargoPago;
    //FINAL: DPP_201211_COB
    procedure validarPagos;
    procedure validardatos;
    procedure cargadetalle(fecpro:String; xorde:String);
//Inicio 201820_COB 
//Se añade opción de pagos por resolver en los cronogramas cerrados
    procedure actcrocer;
//Fin 201820_COB

//Inicio: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
    Procedure EliminaProcesoDeCobranza( sAsoid : String);
//Fin: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
  end;
var
  FCtaRecBcoCre: TFCtaRecBcoCre;

implementation

uses COBDM1, COB314, COB429, COB433, COB434, COB445, COB443, COB451,
//Inicio: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  COB453, COB460,COB467, COB001;
// Fin HPC_201806_COB 
//Fin: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista

{$R *.dfm}

procedure TFCtaRecBcoCre.BtnCerrarClick(Sender: TObject);
begin
FCtaRecBcoCre.Close;
end;

Procedure TFCtaRecBcoCre.btnEnvinfbanClick(Sender: TObject);
Begin
  Try
    Finfgenbancre := TFinfgenbancre.create(Self);
    Finfgenbancre.ShowModal;
  Finally
    Finfgenbancre.Free;
  End;
End;

Procedure TFCtaRecBcoCre.btnDesOraClick(Sender: TObject);
Var xSql:String;
Begin
  Try
    Fdescuerec := TFdescuerec.create(Self);
    Fdescuerec.ShowModal;
  Finally
    Fdescuerec.Free;
  End;
  xSql := ' SELECT SUBSTR(FECPRO,7,2)||''/''||SUBSTR(FECPRO,5,2)||''/''||SUBSTR(FECPRO,1,4) FECPRO,'
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  +' NUMCUE, CANTOT, DECODE(CODMON, ''0'', ''MN'', ''ME'') CODMON,  MONTOT, CODSUC, UPPER(CIERRE) CIERRE, FECPRO ORDENA,'
//Inicio HPC_201811_COB
//Se adiciona la forma de pago 
  +' (SELECT SUM(IMPORTE) FROM DB2ADMIN.COB_DES_CRO_CERRADO_DET WHERE FORPAGID=''03'' AND FEC_PROCESO= '
//Final HPC_201811_COB
  +' SUBSTR(FECPRO, 7, 2) || ''/'' || SUBSTR(FECPRO, 5, 2) || ''/'' ||SUBSTR(FECPRO, 1, 4)) CRONOCERRADO '
// Fin HPC_201806_COB 
  +' FROM COB347 ORDER BY ORDENA DESC';
  DM1.cdsCuentas.Close;
  DM1.cdsCuentas.DataRequest(xSql);
  DM1.cdsCuentas.Open;
  dbgCabecera.Refresh;
End;

Procedure TFCtaRecBcoCre.btnVerCobClick(Sender: TObject);
Var vUsuario, vDocPag, vfecpag, vAsoId, xSql, fechaProceso:String;
MontoTot:Currency;
Begin
  Screen.Cursor := crHourGlass;
  DM1.xSgr := 'N';
  validardatos;
  If DM1.xSgr = 'S' Then
  Begin
    ValidarPagos;
    MessageDlg('Validación Concluida', mtInformation,[mbOk],0);
  End;
  Screen.Cursor := crDefault;
End;

Procedure TFCtaRecBcoCre.FormActivate(Sender: TObject);
Var xSql:String;
Begin
  xSql := 'SELECT OFDESID, OFDESNOM FROM APO110';
  DM1.cdsOfDes.Close;
  DM1.cdsOfDes.DataRequest(xSql);
  DM1.cdsOfDes.Open;
  TabTeletransfer.TabIndex := 0;
  pnlapenom.Visible := False;
  rgord.Visible := False;
  DM1.cdsRegCob.Close;
  xSql := ' SELECT SUBSTR(FECPRO,7,2)||''/''||SUBSTR(FECPRO,5,2)||''/''||SUBSTR(FECPRO,1,4) FECPRO,'
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
          +' NUMCUE, CANTOT, DECODE(CODMON, ''0'', ''MN'', ''ME'') CODMON,  MONTOT, CODSUC, UPPER(CIERRE) CIERRE, FECPRO ORDENA,'
//Inicio HPC_201811_COB
//Se adiciona la forma de pago 
          +' (SELECT SUM(IMPORTE) FROM DB2ADMIN.COB_DES_CRO_CERRADO_DET WHERE FORPAGID=''03'' AND FEC_PROCESO= '
//Final HPC_201811_COB
          +' SUBSTR(FECPRO, 7, 2) || ''/'' || SUBSTR(FECPRO, 5, 2) || ''/'' ||SUBSTR(FECPRO, 1, 4)) CRONOCERRADO '
// Fin HPC_201806_COB
          +' FROM COB347 ORDER BY ORDENA DESC';
  DM1.cdsCuentas.Close;
  DM1.cdsCuentas.DataRequest(xSql);
  DM1.cdsCuentas.Open;
  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('FECPRO'#9'12'#9'Fecha de~Proceso'#9#9);
  dbgCabecera.Selected.Add('NUMCUE'#9'10'#9'Número de~Cuenta'#9#9);
  dbgCabecera.Selected.Add('CANTOT'#9'10'#9'Cantidad de Pagos~Realizados'#9#9);
  dbgCabecera.Selected.Add('CODMON'#9'12'#9'Tipo de~Moneda'#9#9);
  dbgCabecera.Selected.Add('MONTOT'#9'15'#9'Monto Total~Pagado'#9#9);
  dbgCabecera.Selected.Add('CODSUC'#9'12'#9'Código de~sucursal'#9#9);
  dbgCabecera.Selected.Add('CIERRE'#9'12'#9'Estado del~descargo'#9#9);
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  dbgCabecera.Selected.Add('CRONOCERRADO'#9'12'#9'Cronogramas~Cerrados'#9#9);
// Fin HPC_201806_COB 
  dbgCabecera.ApplySelected;
  TNumericField(DM1.cdsCuentas.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
  TNumericField(DM1.cdsCuentas.FieldByName('CANTOT')).DisplayFormat := '###,###,##0';
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  TNumericField(DM1.cdsCuentas.FieldByName('CRONOCERRADO')).DisplayFormat := '###,###,##0.00';
// Fin HPC_201806_COB 
End;

procedure TFCtaRecBcoCre.btnEliminaClick(Sender: TObject);
Var xSql, vFecPro:String;
begin
  vFecPro := copy(DM1.cdsQry4.FieldByName('FECPRO').AsString,7,4)+copy(DM1.cdsQry4.FieldByName('FECPRO').AsString,4,2)+copy(DM1.cdsQry4.FieldByName('FECPRO').AsString,1,2);
  xSql := 'DELETE COB347 WHERE FECPRO = '+QuotedStr(vFecPro);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Execute;
  xSql := 'DELETE COB348 WHERE FECPRO = '+QuotedStr(vFecPro);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Execute;
end;

procedure TFCtaRecBcoCre.TabTeletransferChange(Sender: TObject);
Var mensaje, vFecPro, xSql:String;
begin
  vFecPro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  If TabTeletransfer.TabIndex  = 0 Then
  Begin
    pnlapenom.Visible := False;
    rgord.Visible := False;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
      xSql := ' SELECT SUBSTR(FECPRO,7,2)||''/''||SUBSTR(FECPRO,5,2)||''/''||SUBSTR(FECPRO,1,4) FECPRO,'
          +' NUMCUE, CANTOT, DECODE(CODMON, ''0'', ''MN'', ''ME'') CODMON,  MONTOT, CODSUC, UPPER(CIERRE) CIERRE, FECPRO ORDENA,'
//Inicio HPC_201811_COB
//Se adiciona la forma de pago 
          +' (SELECT SUM(IMPORTE) FROM DB2ADMIN.COB_DES_CRO_CERRADO_DET WHERE FORPAGID=''03'' AND FEC_PROCESO= '
//Fin HPC_201811_COB
          +' SUBSTR(FECPRO, 7, 2) || ''/'' || SUBSTR(FECPRO, 5, 2) || ''/'' ||SUBSTR(FECPRO, 1, 4)) CRONOCERRADO '
          +' FROM COB347 ORDER BY ORDENA DESC';
      DM1.cdsCuentas.Close;
      DM1.cdsCuentas.DataRequest(xSql);
      DM1.cdsCuentas.Open;
      dbgCabecera.Refresh;
// Fin HPC_201806_COB
  End;
  // Detalle de Pagos
  If TabTeletransfer.TabIndex  = 1 Then
  begin
    rgord.Visible := True;
    pnlapenom.Visible := True;
    cargadetalle(vFecPro, '0');
    edtBuscarDet.SetFocus;
  End;
  // Pagos no Registrados
  If TabTeletransfer.TabIndex = 2 Then
  Begin
    pnlapenom.Visible := False;
    rgord.Visible := False;
    xSql := 'SELECT ROWNUM CUENTA, ASOID, ASOCODMOD, ASOAPENOMDNI, FECPAG, NUMOPE, AGENBCODES, MONTOT FROM'
    +'( SELECT SUBSTR(A.CAMRET,21,10) ASOID, B.ASOCODMOD ASOCODMOD, SUBSTR(B.ASOAPENOMDNI,1,31) ASOAPENOMDNI, TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, MONTOT, ''OP-0''||NUMOPE NUMOPE, C.AGENBCODES'
    +' FROM COB348 A, APO201 B, COB102 C'
    +' WHERE A.FECPRO = '+QuotedStr(vFecPro)
    +' AND NVL(CIERRE, ''X'') = ''R'' AND SUBSTR(A.CAMRET,21,10) = B.ASOID AND A.CODOFI = C.AGENBCOID(+)'
    +' ORDER BY B.ASOAPENOM)';
    DM1.cdsDLabo.Close;
    DM1.cdsDLabo.DataRequest(xSql);
    DM1.cdsDLabo.Open;
    dbgnoregistrados.Selected.Clear;
    dbgnoregistrados.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
    dbgnoregistrados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y~Nombre(s)'#9#9);
    dbgnoregistrados.Selected.Add('FECPAG'#9'10'#9'Fecha de~Pago'#9#9);
    dbgnoregistrados.Selected.Add('NUMOPE'#9'10'#9'Número de~Operación'#9#9);
    dbgnoregistrados.Selected.Add('AGENBCODES'#9'20'#9'Agencia de~deposito'#9#9);
    dbgnoregistrados.Selected.Add('MONTOT'#9'10'#9'Monto del~deposito'#9#9);
    dbgnoregistrados.ApplySelected;
    TNumericField(DM1.cdsDLabo.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
    mensaje := 'PAGOS DETECTADOS COMO NO REGISTRADOS '+chr(13)+' DEL DIA : '+DM1.cdsCuentas.FieldByName('FECPRO').AsString
    +chr(13)+'VERIFIQUE SI REALMENTE NO FUERON DESCARGADOS'+chr(13)+'ANTES DE PROCEDER A SU DESCARGO AUTOMATICO'
    +chr(13)+chr(13)+'VALIDE LA INFORMACION DEL DIA ANTES DE DESCARGAR';
    MessageDlg(mensaje, mtInformation,[mbOk],0);
  End;
  // Inconsistencias
  If TabTeletransfer.TabIndex = 3 Then
  Begin
    pnlapenom.Visible := False;
    rgord.Visible := False;
    If Not DM1.cdsRegCob.Active  Then
    Begin
      xSql := ' SELECT B.ASOCODMOD, SUBSTR(A.CAMRET,21,10) ASOID, SUBSTR(B.ASOAPENOMDNI,1,31) ASOAPENOMDNI, TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, MONTOT, ''OP-0''||NUMOPE NUMOPE, C.AGENBCODES'
      +' FROM COB348 A, APO201 B, COB102 C WHERE NVL(CIERRE, ''X'') NOT IN (''K'',''A'',''C'',''O'') AND SUBSTR(A.CAMRET,21,10) = B.ASOID AND A.CODOFI = C.AGENBCOID(+) ORDER BY B.ASOAPENOMDNI';
      DM1.cdsResol.Close;
      DM1.cdsResol.DataRequest(xSql);
      DM1.cdsResol.Open;
      dbginconsistencias.Selected.Clear;
      dbginconsistencias.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
      dbginconsistencias.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y~Nombre(s)'#9#9);
      dbginconsistencias.Selected.Add('FECPAG'#9'10'#9'Fecha de~Pago'#9#9);
      dbginconsistencias.Selected.Add('NUMOPE'#9'10'#9'Número de~Operación'#9#9);
      dbginconsistencias.Selected.Add('AGENBCODES'#9'20'#9'Agencia de~deposito'#9#9);
      dbginconsistencias.Selected.Add('MONTOT'#9'10'#9'Monto del~deposito'#9#9);
      dbginconsistencias.ApplySelected;
      TNumericField(DM1.cdsResol.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
    End;
  End;
// Inicio HPC_201806_COB
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  If TabTeletransfer.TabIndex = 4 Then
  Begin

 //Final HPC_201811_COB
 //Se adiciona la forma de pago en la consulta de cronogramas cerrados
    xSql:='Select sum(nvl(IMPORTE,0)) IMPORTE From  COB_DES_CRO_CERRADO_DET where FORPAGID = ''03'' '
         +'AND FEC_PROCESO= TO_DATE('+QuotedStr(DM1.cdsCuentas.FieldByName('FECPRO').AsString)+')';
    DM1.cdsAsoBanAct.Close;
    DM1.cdsAsoBanAct.DataRequest(xSql);
    DM1.cdsAsoBanAct.Open;
    dbgCronogramaCerrados.ColumnByName('IMPORTE').FooterValue := FloatToStrF(DM1.cdsAsoBanAct.Fieldbyname('IMPORTE').AsFloat, ffNumber, 15, 2);
 //Inicial HPC_201811_COB    
   // Inicio: HPC_201820_COB
   //  Se añade al Qry el campo si el asociado tiene flag de fallecido
   // xSql := 'SELECT A.ASOID, A.OFIDES, A.FORPAGID, A.NRO_OPERACION,A.NRO_OPERACION NROOPE, A.FEC_OPERACION,A.FEC_OPERACION FOPERAC,A.FEC_OPERACION CREFPAG, TO_CHAR(A.FEC_OPERACION, ''YYYY'') TRANSANO '+
   // ',TO_CHAR(A.FEC_OPERACION, ''MM'') TRANSMES, A.UPROID, A.UPAGOID, A.USEID, A.ASOCODMOD, '+
   // 'A.ASOAPENOM, A.BANCOID, A.CCBCOID, A.IMPORTE, A.FREG, A.HREG, A.USERID, A.RCOBID, A.DETRCOBID, A.USERCOBID, A.FLGEST,C.AGENBCODES,MONTOT, '+
   // '(SELECT ESTDES FROM CRE113 WHERE ESTID=A.FLGEST) ESTADO '+
   // 'FROM COB_DES_CRO_CERRADO_DET A,COB348 B,COB102 C WHERE '+
   // 'B.NUMOPE = SUBSTR(A.NRO_OPERACION,5) AND B.FECPAG = TO_CHAR(A.FEC_OPERACION, ''YYYYMMDD'') '+
   // 'AND A.FEC_PROCESO = TO_DATE('+QuotedStr(DM1.cdsCuentas.FieldByName('FECPRO').AsString)+')'+
   // 'AND A.FORPAGID = ''03'' AND B.CODOFI = C.AGENBCOID (+)';
   // DM1.cdsAsoBanAct.Close;
   // DM1.cdsAsoBanAct.DataRequest(xSql);
   // DM1.cdsAsoBanAct.Open;
   // dbgCronogramaCerrados.Selected.Clear;
   // dbgCronogramaCerrados.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
   // dbgCronogramaCerrados.Selected.Add('ASOAPENOM'#9'35'#9'Apellidos y~Nombre(s)'#9#9);
   // dbgCronogramaCerrados.Selected.Add('FEC_OPERACION'#9'10'#9'Fecha de~Pago'#9#9);
   // dbgCronogramaCerrados.Selected.Add('NRO_OPERACION'#9'10'#9'Número de~Operación'#9#9);
   // dbgCronogramaCerrados.Selected.Add('AGENBCODES'#9'15'#9'Agencia de~deposito'#9#9);
   // dbgCronogramaCerrados.Selected.Add('IMPORTE'#9'10'#9'Monto no~Registrado'#9#9);
   // dbgCronogramaCerrados.Selected.Add('ESTADO'#9'14'#9'Estado del~deposito'#9#9);
   // dbgCronogramaCerrados.ApplySelected;
   // TNumericField(DM1.cdsAsoBanAct.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
   actcrocer;
   // Fin: HPC_201820_COB
  End;
// Fin HPC_201806_COB
end;

//INICIO: DPP_201211_COB
{
procedure TFCtaRecBcoCre.fcsbDesAutClick(Sender: TObject);
Var
  montoRestante, montoDescontadoCuo, montoCapital, montoInteres, montoFlat, tipoCambio: Currency;
  xSql, xCampos, xValores: String;
  xcreestadoant, xcreestidant, xmesExc, xcredidExc: String;
begin
  // verificando si el monto ya fue pagado o si tiene algun tipo de inconsistencias.
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
  +' AND BANCOID = ''03'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    MessageDlg(' En el Sistema ya existe registro de este pago ', mtInformation,[mbOk],0);
    Exit;
  End
  Else
  Begin
    If DM1.cdsQry5.FieldByName('MONTOT').AsCurrency > 0 Then
    Begin
      MessageDlg(' Se ha detectado registro de este pago,'+chr(13)+'pero con inconsistencias en el monto.'+chr(13)+'Verifique y registre en forma manual', mtInformation,[mbOk],0);
      Exit;
    End;
  End;
  // Chequeando que solo el numero de documento este mal
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
  +' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+' AND BANCOID = ''03'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    MessageDlg('En el sistema ya existe registro de este pago,'+chr(13)+'pero con otro número de documento.'+chr(13)+' Verifique, y registre en forma manual', mtInformation,[mbOk],0);
    Exit;
  End;
  // Chequeando que solo la fecha este mal
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+' AND BANCOID = ''03'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    MessageDlg('En el sistema ya existe registro de este pago,'+chr(13)+'pero con otra fecha de deposito.'+chr(13)+' Verifique, y registre en forma manual', mtInformation,[mbOk],0);
    Exit;
  End;
  // Chequeando que solo exista error en la cuenta
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
  +' AND CREESTID NOT IN (''04'', ''13'') AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString);
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    MessageDlg('En el sistema ya existe registro de este pago,'+chr(13)+'pero en otra cuenta.'+chr(13)+' Verifique, y registre en forma manual', mtInformation,[mbOk],0);
    Exit;
  End;
  If MessageDlg('No se ha logrado detectar pagos en el sistema para este registro'+chr(13)+' ¿ Desea descargar este registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    xSql := 'SELECT TCAMVBC FROM TGE107 WHERE FECHA = (SELECT MAX(FECHA) FROM TGE107 WHERE FECHA <= '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+')';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    tipoCambio := DM1.cdsQry.FieldByName('TCAMVBC').AsCurrency;
    // Tomando datos del APO201
    xSql := 'SELECT * FROM APO201 WHERE ASOID ='+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString);
    DM1.cdsAsociados.Close;
    DM1.cdsAsociados.DataRequest(xSql);
    DM1.cdsAsociados.Open;
    montoRestante := DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency;
    // Proceso para el descargo en forma automatica del monto depositado en el Banco
    // Cuotas Vencidas
    xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
    +' AND TO_CHAR(A.CREFOTORG, ''YYYYMMDD'')  < '+QuotedStr(Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 4,2)+ Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 1,2))
    +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') <= '+QuotedStr(Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 4,2))
    +' ORDER BY CREFVEN, CREMTO';
    DM1.cdsCuotas.Close;
    DM1.cdsCuotas.DataRequest(xSql);
    DM1.cdsCuotas.Open;
    If DM1.cdsCuotas.RecordCount >= 1 Then
    Begin
      While Not DM1.cdsCuotas.Eof Do
      Begin
        xmesExc := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
        xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
        // Cuando el monto a pagar en la cuota es menor que el saldo disponible
        If montoRestante >= (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency) Then
        Begin
          montoRestante   := montoRestante - (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency);
          montoDescontadoCuo := DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency;
          montoCapital    := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
          montoInteres    := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
          montoFlat       := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
          xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
          xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
          xSql := 'UPDATE CRE302 SET'
          +' CRECAPITAL = '+DM1.cdsCuotas.FieldByName('CREAMORT').AsString
          +',CREMTOINT = '+DM1.cdsCuotas.FieldByName('CREINTERES').AsString
          +',CREMTOFLAT = '+DM1.cdsCuotas.FieldByName('CREFLAT').AsString
          +',CREMTOCOB = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString
          +',CREMONLOC = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString
          +',CRESALDO = 0'
          +',CREESTID = ''21'' ,CREESTADO = ''CANCELADO'' ,CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)
          +',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
          +',FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
          +',HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
          xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
          +','+QuotedStr('21')+','+QuotedStr('CANCELADO')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        end
        Else
        // Cuando el monto a pagar en la cuota es mayor que el saldo disponible
        Begin
          If montoRestante > 0 Then
          Begin

          
            montoDescontadoCuo := montoRestante;
            // Controlando el Flat
            If DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency < DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
                montoFlat := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
              End
              Else
              Begin
                montoFlat := montoRestante;
                montoRestante := 0;
              End;
            End;
            // Controlando el Interes
            If DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency < DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency);
                montoInteres := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
              End
              Else
              Begin
                montoInteres := montoRestante;
                montoRestante := 0;
              End;
            End;
            // Controlando el Capital
            If DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency < DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency);
                montoCapital := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
              End
              Else
              Begin
                montoCapital := montoRestante;
                montoRestante := 0;
              End;
            End;
            xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
            xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
            xSql := 'UPDATE CRE302 SET'
            +' CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)
            +',CREMTOINT = NVL(CREMTOINT,0)+'+CurrToStr(montoInteres)
            +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)
            +',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
            +',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)
            +',CRESALDO = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
            +',CREESTID = ''27'', CREESTADO = ''PARCIAL'''
            +',CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)
            +',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
            +',USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
            +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            //  Añadiendo detalles de pago
            xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
            +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
            +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
            +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
            xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
            +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
            +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
            +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
            +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
            +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
            +', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
            xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          End;
        End;
        DM1.cdsCuotas.Next;
      End;
    End;
    // Proceso para el descargo en forma automatica del monto depositado en el Banco
    // Cuotas No Vencidas
    xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
    +' AND TO_CHAR(A.CREFOTORG, ''YYYYMMDD'')  < '+QuotedStr(Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 4,2)+ Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 1,2))
    +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') > '+QuotedStr(Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 4,2))
    +' ORDER BY CREFVEN DESC, CREMTO DESC';
    DM1.cdsCuotas.Close;
    DM1.cdsCuotas.DataRequest(xSql);
    DM1.cdsCuotas.Open;
    If DM1.cdsCuotas.RecordCount >= 1 Then
    Begin
      While Not DM1.cdsCuotas.Eof Do
      Begin
        xmesExc := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
        xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
        // Cuando el monto a pagar en la cuota es menor que el saldo disponible
        If montoRestante >= (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency+DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
        Begin
          montoRestante   := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency+DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
          montoDescontadoCuo := (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency)+(DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
          montoCapital    := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
          montoInteres    := 0.00;
          montoFlat       := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
          xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
          xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
          xSql := 'UPDATE CRE302 SET'
          +' CRECAPITAL = '+DM1.cdsCuotas.FieldByName('CREAMORT').AsString
          +',CREMTOINT = '+CurrToStr(0.00)
          +',CREMTOFLAT = '+DM1.cdsCuotas.FieldByName('CREFLAT').AsString
          +',CREMTOCOB = '+CurrToStr(montoDescontadoCuo)
          +',CREMONLOC = '+CurrToStr(montoDescontadoCuo)
          +',CRESALDO = 0 ,CREESTID = ''23'' ,CREESTADO = ''CANCELADO A'' ,CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)
          +',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
          +',FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
          xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
          +','+QuotedStr('23')+','+QuotedStr('CANCELADO A')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL''';
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        end
        Else
        // Cuando el monto a pagar en la cuota es mayor que el saldo disponible
        Begin
          If montoRestante > 0 Then
          Begin
            montoDescontadoCuo := montoRestante;
            // Controlando el Flat
            If DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency < DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
                montoFlat := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
              End
              Else
              Begin
                montoFlat := montoRestante;
                montoRestante := 0.00;
              End;
            End;
            // Controlando el Interes
            montoInteres := 0.00;
            // Controlando el Capital
            If DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency < DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency);
                montoCapital := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
              End
              Else
              Begin
                montoCapital := montoRestante;
                montoRestante := 0.00;
              End;
            End;
            xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
            xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
            xSql := 'UPDATE CRE302 SET'
            +' CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)
            +',CREMTOINT = 0.00'
            +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)
            +',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
            +',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)
            +',CRESALDO = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
            +',CREESTID = ''27'' ,CREESTADO = ''PARCIAL'' ,CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)
            +',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
            +',FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,USUARIO = '+QuotedStr(DM1.wUsuario)
            +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
            +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            //  Añadiendo detalles de pago
            xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
            +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
            +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
            +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
            xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
            +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
            +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
            +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
            +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
            +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
            +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
            xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          End;
        End;
        DM1.cdsCuotas.Next;
      End;
    End;
    // Verificando si hay monto restante para ser enviado a Exceso
    If montoRestante > 0 Then
    Begin
      // Modificando campo en el CRE302
      xSql := 'UPDATE CRE302 SET CREMTOEXC =  '+CurrToStr(montoRestante)+' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+xcredidExc
      +' AND CREANO||CREMES ='+xmesExc;
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      //  Añadiendo detalles de pago
      xCampos := 'CIAID,   ASOID,    ASOCODMOD, ASOCODAUX ,   USEID ,   UPROID,   UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
      +' CREMONLOC, CREMTOCOB, TMONID,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
      +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
      +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
      xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
      +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
      +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTOCUO').AsString
      +','+CurrToStr(montoRestante)+','+CurrToStr(montoRestante)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)
      +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
      +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
      +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(montoRestante)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'') , SYSDATE'
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)+','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('EXC')
      +','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')+','+QuotedStr('21')+','+QuotedStr('CANCELADO')
      +','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)+', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
      xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    end;
    // Actualizando el CRE301
    xSql := 'SELECT * FROM CRE301 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)+'  AND CREESTID <> ''13'' ';
    DM1.cdsCredito.Close;
    DM1.cdsCredito.DataRequest(xSql);
    DM1.cdsCredito.Open;
    While Not DM1.cdsCredito.Eof Do
    Begin
     DM1.xCnd := 'S';
     DM1.AplicaSaldoPre(DM1.cdsCredito.FieldByName('ASOID').AsString, DM1.cdsCredito.FieldByName('CREDID').AsString);
     DM1.cdsCredito.Next;
    End;
    // Actualizar el registro COB348
    xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
    +' AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
    +' AND BANCOID = ''03'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' ';
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSql);
    DM1.cdsQry5.Open;
    If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
    Begin
      xSql := 'UPDATE COB348 SET CIERRE = ''K'' WHERE SUBSTR(CAMRET,21,10) = '+DM1.cdsRegCob.FieldByName('ASOID').AsString
      +' AND NUMOPE = SUBSTR('+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+',5,6)';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := ' SELECT SUBSTR(A.CAMRET,21,10) ASOID, SUBSTR(B.ASOAPENOM,1,31) ASOAPENOM, TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, MONTOT, ''OP-0''||NUMOPE NUMOPE, C.AGENBCODES'
      +' FROM COB348 A, APO201 B, COB102 C WHERE NVL(CIERRE, ''X'') NOT IN (''K'', ''A'') AND SUBSTR(A.CAMRET,21,10) = B.ASOID AND A.CODOFI = C.AGENBCOID ORDER BY B.ASOAPENOM';
      DM1.cdsRegCob.Close;
      DM1.cdsRegCob.DataRequest(xSql);
      DM1.cdsRegCob.Open;
    End;
    // Actualizar el registro COB347
    xSql := 'SELECT * FROM COB348 WHERE FECPRO = '+QuotedStr(DM1.cdsCuentas.FieldByname('FECPRO').AsString)+ ' AND NVL(CIERRE, ''Z'') NOT IN (''K'',''A'') ';
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;
    If DM1.cdsQry1.RecordCount = 0 Then
    Begin
       DM1.cdsCuentas.Edit;
       DM1.cdsCuentas.FieldByName('CIERRE').AsString := 'OK';
       DM1.cdsCuentas.ApplyUpdates(0);
    end;
    MessageDlg('El monto pagado por banco fue descargado,'+chr(13)+'satisfactoriamente en el sistema.'+chr(13)+'Verifique', mtInformation,[mbOk],0);
  end;
end;
}
//FIN: DPP_201211_COB

Procedure TFCtaRecBcoCre.edtBuscarDetChange(Sender: TObject);
Begin
  If TabTeletransfer.TabIndex = 1 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
      DM1.cdsDFam.Locate('ASOAPENOMDNI', VarArrayOf([TRIM(edtBuscarDet.Text)]), [loPartialKey]);
  End;
End;

procedure TFCtaRecBcoCre.edtBuscarDetKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key=#13 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
    Begin
      edtBuscarDet.Text := '';
      dbgdetalle.SetFocus;
    End
    Else
    Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
      edtBuscarDet.SetFocus;
    End;
  End;
end;

procedure TFCtaRecBcoCre.ppHeaderBand4BeforePrint(Sender: TObject);
begin
  ppLabel14.Caption := 'PAGOS EFECTUADOS EN CUENTA RECAUDARORA DEL : '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  ppLabel28.Caption := 'NO DETECTADOS COMO REGISTRADOS EN EL SISTEMA';
  ppLabel29.Caption := 'IMPRESO POR : '+DM1.wUsuario;
end;

procedure TFCtaRecBcoCre.dbgCabeceraCellChanged(Sender: TObject);
begin
  TabSheet2.Caption := 'Detalle del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
  TabSheet4.Caption := 'Pagos no registrados del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
end;


Function TFCtaRecBcoCre.verificaNoRegistrado: String;
Var xSql:String;
Begin

// Inicio: DPP_201216_COB
{
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
  +' AND BANCOID = ''03'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' ';
}
// verificando si el monto ya fue pagado o si tiene algun tipo de inconsistencias.
// Inicio: DPP_201219_COB
  xSQL := 'SELECT NVL(SUM(MONTOT),0) MONTOT FROM '
// Fin: DPP_201219_COB
         +'('
         +' SELECT NVL(CREMTOCOB,0) MONTOT '
         +'   FROM CRE310 '
         +'  WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
         +'    AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
         +'    AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
         +'    AND BANCOID = ''03'' '
         +'    AND FORPAGID = ''03'' '
         +'    AND CREESTID NOT IN (''04'', ''13'') '
         +'    AND CCBCOID = ''193-1405628-0-61'' '
         +' UNION ALL '
         +' SELECT NVL(IMP_COB_DEU,0) MONTOT '
         +'   FROM COB_FSC_PAGOS_AL_FSC '
         +'  WHERE ASOID='+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
         +'    AND NROOPE='+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
         +'    AND FOPERAC='+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
         +'    AND BANCOID = ''03'' '
         +'    AND FORPAGID = ''03'' '
         +'    AND EST_COB_COD NOT IN (''04'',''13'') '
         +'    AND CCBCOID = ''193-1405628-0-61'' '
         +')';
// Fin: DPP_201216_COB
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSQL);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End
  Else
  Begin
    If DM1.cdsQry5.FieldByName('MONTOT').AsCurrency > 0 Then
    Begin
      Result := 'N';
      Exit;
    End;
  End;

// Inicio: DPP_201216_COB
 { xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+' AND BANCOID = ''03'' AND FORPAGID = ''03'' '
  +' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' ';}
  // Chequeando que solo el numero de documento este mal
// Inicio: DPP_201219_COB
  xSQL := 'SELECT NVL(SUM(MONTOT),0) MONTOT FROM '
// Fin: DPP_201219_COB
         +'('
         +' SELECT NVL(CREMTOCOB,0) MONTOT '
         +'   FROM CRE310 '
         +'  WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
         +'    AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
         +'    AND BANCOID = ''03'' '
         +'    AND FORPAGID = ''03'' '
         +'    AND CREESTID NOT IN (''04'', ''13'') '
         +'    AND CCBCOID = ''193-1405628-0-61'' '
         +' UNION ALL '
         +' SELECT NVL(IMP_COB_DEU,0) MONTOT '
         +'   FROM COB_FSC_PAGOS_AL_FSC '
         +'  WHERE ASOID='+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
         +'    AND FOPERAC='+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
         +'    AND BANCOID = ''03'' '
         +'    AND FORPAGID = ''03'' '
         +'    AND EST_COB_COD NOT IN (''04'',''13'') '
         +'    AND CCBCOID = ''193-1405628-0-61'' '
         +')';
// Fin: DPP_201216_COB
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End;

// Inicio: DPP_201216_COB
  {xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+' AND BANCOID = ''03'' AND FORPAGID = ''03'' '
  +' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' ';}
  // Chequeando que solo la fecha este mal
// Inicio: DPP_201219_COB
  xSQL := 'SELECT NVL(SUM(MONTOT),0) MONTOT FROM '
// Fin: DPP_201219_COB
         +'('
         +' SELECT NVL(CREMTOCOB,0) MONTOT '
         +'   FROM CRE310 '
         +'  WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
         +'    AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
         +'    AND BANCOID = ''03'' '
         +'    AND FORPAGID = ''03'' '
         +'    AND CREESTID NOT IN (''04'', ''13'') '
         +'    AND CCBCOID = ''193-1405628-0-61'' '
         +' UNION ALL '
         +' SELECT NVL(IMP_COB_DEU,0) MONTOT '
         +'   FROM COB_FSC_PAGOS_AL_FSC '
         +'  WHERE ASOID='+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
         +'    AND NROOPE='+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
         +'    AND BANCOID = ''03'' '
         +'    AND FORPAGID = ''03'' '
         +'    AND EST_COB_COD NOT IN (''04'',''13'') '
         +'    AND CCBCOID = ''193-1405628-0-61'' '
         +')';
// Fin: DPP_201216_COB
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End;

// Inicio: DPP_201216_COB
  {xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREESTID NOT IN (''04'', ''13'') AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
  +' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString);}
  // Chequeando que solo exista error en la cuenta
// Inicio: DPP_201219_COB
  xSQL := 'SELECT NVL(SUM(MONTOT),0) MONTOT FROM '
// Fin: DPP_201219_COB
         +'('
         +' SELECT NVL(CREMTOCOB,0) MONTOT '
         +'   FROM CRE310 '
         +'  WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
         +'    AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
         +'    AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
         +'    AND CREESTID NOT IN (''04'', ''13'') '
         +' UNION ALL '
         +' SELECT NVL(IMP_COB_DEU,0) MONTOT '
         +'   FROM COB_FSC_PAGOS_AL_FSC '
         +'  WHERE ASOID='+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
         +'    AND NROOPE='+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
         +'    AND FOPERAC='+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
         +'    AND EST_COB_COD NOT IN (''04'',''13'') '
         +')';
// Fin: DPP_201216_COB

  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End;
  Result := 'S';
  Exit;
End;


//INICIO: DPP_201211_COB
{
Procedure TFCtaRecBcoCre.descargoPago;
Var montoRestante, montoDescontadoCuo: Currency;
  montoCapital, montoInteres, montoFlat, tipoCambio: Currency;
  xSql, xCampos, xValores, xflging: String;
  xcreestadoant, xcreestidant, xmesExc, xcredidExc: String;
Begin
  xSql := 'UPDATE CRE302 SET CRECAPITAL = 0, CREMTOINT=0, CREMTOFLAT = 0 WHERE  ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)+' AND NVL(CREMTOCOB,0) = 0';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  xflging := 'N';
  xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND A.CREESTID = ''02'' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'')';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount = 0 Then Exit;
  xSql := 'SELECT TCAMVBC FROM TGE107 WHERE FECHA = (SELECT MAX(FECHA) FROM TGE107 WHERE FECHA <= '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+')';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  tipoCambio := DM1.cdsQry.FieldByName('TCAMVBC').AsCurrency;
  // Tomando datos del APO201
  xSql := 'SELECT * FROM APO201 WHERE ASOID ='+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString);
  DM1.cdsAsociados.Close;
  DM1.cdsAsociados.DataRequest(xSql);
  DM1.cdsAsociados.Open;
  montoRestante := DM1.cdsDLabo.FieldByName('MONTOT').AsCurrency;
  // Proceso para el descargo en forma automatica del monto depositado en el Banco
  // Cuotas Vencidas
  xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND TO_CHAR(A.CREFOTORG, ''YYYYMMDD'')  < '+QuotedStr(Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 4,2)+ Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 1,2))
  +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') <= '+QuotedStr(Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 4,2))
  +' ORDER BY CREFVEN, CREMTO';
  DM1.cdsCuotas.Close;
  DM1.cdsCuotas.DataRequest(xSql);
  DM1.cdsCuotas.Open;
  If DM1.cdsCuotas.RecordCount >= 1 Then
  Begin
    xflging := 'S';
    While Not DM1.cdsCuotas.Eof Do
    Begin
      // Inicializando las variable del capital, interes y gasto.
      montoFlat := 0;
      montoInteres := 0;
      montoCapital := 0;
      xmesExc    := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
      xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      // Cuando el monto a pagar en la cuota es menor que el saldo disponible
      If montoRestante >= (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency) Then
      Begin
        montoRestante      := montoRestante - (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency);
        montoDescontadoCuo := DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency;
        montoCapital       := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
        montoInteres       := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
        montoFlat          := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
        xcreestadoant      := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
        xcreestidant       := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
        xSql := 'UPDATE CRE302 SET '
        +' CRECAPITAL = CREAMORT'
        +',CREMTOINT  = CREINTERES'
        +',CREMTOFLAT = CREFLAT'
        +',CREMTOCOB  = CREMTO'
        +',CREMONLOC  = CREMTO'
        +',CRESALDO   = 0'
        +',CREESTID = ''21'' ,CREESTADO = ''CANCELADO'' '
        +',CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
        +',NROOPE = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
        +',CREFPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',FOPERAC = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',USUARIO = '+QuotedStr(DM1.wUsuario)
        +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
        +',HREG = SYSDATE'
        +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas  .FieldByName('ASOID').AsString)
        +' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        //  Añadiendo detalles de pago
        xCampos := 'CIAID, ASOID, ASOCODMOD,'
        +' ASOCODAUX , USEID , UPROID,'
        +' UPAGOID,  TIPCREID, CREDID,'
        +' CRECUOTA, CREMTOCUO, CREMONLOC, CREMTOCOB,'
        +' TMONID, CREAMORT, CREINTERES, CREFLAT,'
        +' NROOPETMP, CREDOCPAG, NROOPE,'
        +' FOPERACTMP, CREFPAG, FOPERAC,'
        +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG,'
        +' HREG, ASOAPENOM, DPTOID,'
        +' CIUDID, CREANO, CREMES,'
        +' AREAID, FORPAGID, FORPAGABR,  TRANSINTID, BANCOID, CCBCOID, CREOBS,'
        +' CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
        xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
        +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
        +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
        +','+QuotedStr('21')+','+QuotedStr('CANCELADO')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)+', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
        xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      end
      Else
      // Cuando el monto a pagar en la cuota es mayor que el saldo disponible
      Begin
        If montoRestante > 0 Then
        Begin
          montoDescontadoCuo := montoRestante;
          // Controlando el Flat
          If DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency < DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
              montoFlat := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
            End
            Else
            Begin
              montoFlat := montoRestante;
              montoRestante := 0;
            End;
          End;
          // Controlando el Interes
          If DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency < DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency);
              montoInteres := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
            End
            Else
            Begin
              montoInteres := montoRestante;
              montoRestante := 0;
            End;
          End;
          // Controlando el Capital
          If DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency < DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency);
              montoCapital := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
            End
            Else
            Begin
              montoCapital := montoRestante;
              montoRestante := 0;
            End;
          End;
          xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
          xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
          xSql := 'UPDATE CRE302 SET'
          +' CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)
          +',CREMTOINT  = NVL(CREMTOINT,0)+'+CurrToStr(montoInteres)
          +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)
          +',CREMTOCOB  = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
          +',CREMONLOC  = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)
          +',CRESALDO   = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
          +',CREESTID   = ''27'', CREESTADO = ''PARCIAL'''
          +',CREDOCPAG  = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
          +',NROOPE     = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
          +',CREFPAG    = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',FOPERAC    = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',USUARIO    = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
          xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
          +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        End;
      End;
      DM1.cdsCuotas.Next;
    End;
  End;
  // Proceso para el descargo en forma automatica del monto depositado en el Banco
  // Cuotas No Vencidas
  xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND TO_CHAR(A.CREFOTORG, ''YYYYMMDD'')  < '+QuotedStr(Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 4,2)+ Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 1,2))
  +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') > '+QuotedStr(Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 4,2))
  +' ORDER BY CREFVEN DESC, CREMTO DESC';
  DM1.cdsCuotas.Close;
  DM1.cdsCuotas.DataRequest(xSql);
  DM1.cdsCuotas.Open;
  If DM1.cdsCuotas.RecordCount >= 1 Then
  Begin
    xflging := 'S';
    While Not DM1.cdsCuotas.Eof Do
    Begin
      // Esto inicializando las tres variables de amortizacion, interes y gastos.
      montoFlat := 0;
      montoCapital := 0;
      montoInteres := 0;
      xmesExc := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
      xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      // Cuando el monto a pagar en la cuota es menor que el saldo disponible
      If montoRestante >= (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency+DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
      Begin
        montoRestante   := montoRestante - ((DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency)+(DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency));
        montoDescontadoCuo := (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency)+(DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
        montoCapital    := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
        montoInteres    := 0.00;
        montoFlat       := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
        xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
        xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
        xSql := 'UPDATE CRE302 SET'
        +' CRECAPITAL  = CREAMORT'
        +',CREMTOINT   = 0'
        +',CREMTOFLAT  = CREFLAT'
        +',CREMTOCOB   =  NVL(CREAMORT,0) + NVL(CREFLAT,0)'
        +',CREMONLOC   =  NVL(CREAMORT,0) + NVL(CREFLAT,0)'
        +',CRESALDO    = 0 ,CREESTID = ''23'' ,CREESTADO = ''CANCELADO A'''
        +',CREDOCPAG   = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
        +',NROOPE      = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
        +',CREFPAG     = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',FOPERAC     = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',USUARIO     = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), HREG = SYSDATE'
        +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        //  Añadiendo detalles de pago
        xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
        +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
        +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
        +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
        xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
        +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
        +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
        +','+QuotedStr('23')+','+QuotedStr('CANCELADO A')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
        +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL''';
        xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      end
      Else
      // Cuando el monto a pagar en la cuota es mayor que el saldo disponible
      Begin
        If montoRestante > 0 Then
        Begin
          montoDescontadoCuo := montoRestante;
          // Controlando el Flat
          If DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency < DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
              montoFlat := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
            End
            Else
            Begin
              montoFlat := montoRestante;
              montoRestante := 0.00;
            End;
          End;

          // Controlando el Interes
          // No existe interes

          // Controlando el Capital
          If DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency < DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency);
              montoCapital := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
            End
            Else
            Begin
              montoCapital := montoRestante;
              montoRestante := 0.00;
            End;
          End;
          xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
          xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
          xSql := 'UPDATE CRE302 SET'
          +' CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)
          +',CREMTOINT  = NVL(CREMTOINT,0)+'+CurrToStr(montoInteres)
          +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)
          +',CREMTOCOB  = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
          +',CREMONLOC  = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)
          +',CRESALDO   = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
          +',CREESTID   = ''27'' ,CREESTADO = ''PARCIAL'' ,CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
          +',NROOPE = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
          +',CREFPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',FOPERAC = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',USUARIO = '+QuotedStr(DM1.wUsuario)
          +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
          xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
          +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        End;
      End;
      DM1.cdsCuotas.Next;
    End;
  End;
  If xflging = 'S' Then
  Begin
    // Verificando si hay monto restante para ser enviado a Exceso
    If montoRestante > 0 Then
    Begin
      If (DM1.cdsCuotas.FieldByName('ASOID').AsString <> '') And (xcredidExc <> '') And (xmesExc <> '') Then
      Begin
        // Modificando campo en el CRE302
        xSql := 'UPDATE CRE302 SET CREMTOEXC =  '+CurrToStr(montoRestante)+' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(xcredidExc)
        +' AND CREANO||CREMES ='+QuotedStr(xmesExc);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xSql := 'SELECT * FROM CRE302 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(xcredidExc)
        +' AND CREANO||CREMES ='+QuotedStr(xmesExc);
        DM1.cdsCuotas.Close;
        DM1.cdsCuotas.DataRequest(xSql);
        DM1.cdsCuotas.Open;
        //  Añadiendo detalles de pago
          xCampos := 'CIAID,   ASOID,    ASOCODMOD, ASOCODAUX ,   USEID ,   UPROID,   UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
        +' CREMONLOC, CREMTOCOB, TMONID,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
        +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
        +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
        xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString
        +','+CurrToStr(montoRestante)+','+CurrToStr(montoRestante)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(montoRestante)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'') , SYSDATE'
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)+','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('EXC')
        +','+QuotedStr('03')+','+QuotedStr('193-1405628-0-61')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')+','+QuotedStr('21')+','+QuotedStr('CANCELADO')
        +','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)+', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
        xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      End;
    End;
  End;
  // Actualizando el CRE301
  xSql := 'SELECT * FROM CRE301 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)+'  AND CREESTID <> ''13'' ';
  DM1.cdsCredito.Close;
  DM1.cdsCredito.DataRequest(xSql);
  DM1.cdsCredito.Open;
  While Not DM1.cdsCredito.Eof Do
  Begin
    DM1.xCnd := 'S';
    DM1.AplicaSaldoPre(DM1.cdsCredito.FieldByName('ASOID').AsString, DM1.cdsCredito.FieldByName('CREDID').AsString);
    DM1.cdsCredito.Next;
  End;
  // Actualizar el registro COB348
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
  +' AND BANCOID = ''03'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    xSql := 'UPDATE COB348 SET CIERRE = ''K'' WHERE SUBSTR(CAMRET,21,10) = '+DM1.cdsDLabo.FieldByName('ASOID').AsString
    +' AND NUMOPE = SUBSTR('+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)+',5,6)';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  End;
  // Actualizar el registro COB347
  xSql := 'SELECT * FROM COB348 WHERE FECPRO = '+QuotedStr(DM1.cdsCuentas.FieldByname('FECPRO').AsString)+ ' AND NVL(CIERRE, ''Z'') NOT IN (''K'', ''A'') ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  If DM1.cdsQry1.RecordCount = 0 Then
  Begin
     DM1.cdsCuentas.Edit;
     DM1.cdsCuentas.FieldByName('CIERRE').AsString := 'OK';
     DM1.cdsCuentas.ApplyUpdates(0);
  end;
end;
}
//FINAL: DPP_201211_COB

procedure TFCtaRecBcoCre.validarPagos;
Var vUsuario, vDocPag, vfecpag, vAsoId, xSql, fechaProceso, xflag:String;
  MontoTot:Currency;
begin
  fechaProceso := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  // Limpiando Campos para validar información
  xSql := 'UPDATE COB348 SET CIERRE=NULL, OFIREG=NULL, MONREG=NULL WHERE FECPRO = '+QuotedStr(fechaProceso)+' AND NVL(CIERRE, ''X'') NOT IN (''D'',''A'', ''C'', ''O'')';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  xSql := 'SELECT * FROM COB348 WHERE FECPRO = '+QuotedStr(fechaProceso)+' AND NVL(CIERRE, ''X'') NOT IN (''D'', ''A'', ''C'', ''O'')';
  DM1.cdsRegCob.Close;
  DM1.cdsRegCob.DataRequest(xSql);
  DM1.cdsRegCob.Open;
  While Not DM1.cdsRegCob.Eof Do
  Begin
    vasoid := copy(DM1.cdsRegCob.FieldByName('CAMRET').AsString,21,10);
    vfecpag := copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString,7,2)+'/'+copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString,5,2)+'/'+copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString,1,4);
    vDocPag := 'OP-0'+DM1.cdsRegCob.FieldByName('NUMOPE').AsString;
    xflag := 'N';
    // Chequeando los registros Ok
    If xflag = 'N' Then
    Begin
// Inicio: HPP_201118_COB
       MontoTot := 0;
    // Chequeando registros pagados en el CRE310
       xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT '
              +' FROM CRE310 '
              +' WHERE ASOID = '+QuotedStr(vasoid)+' AND CREDOCPAG = '+QuotedStr(vDocPag)
              +'   AND CREFPAG = '+ QuotedStr(vfecpag)+' AND BANCOID = ''03'' '
              +'   AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') '
              +'   AND CCBCOID = ''193-1405628-0-61'' '
              +' GROUP BY USUARIO';
       DM1.cdsQry5.Close;
       DM1.cdsQry5.DataRequest(xSql);
       DM1.cdsQry5.Open;
       DM1.cdsQry5.First;
       vUsuario := DM1.cdsQry5.FieldByName('USUARIO').AsString;
       While Not DM1.cdsQry5.Eof Do
       Begin
          MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
          DM1.cdsQry5.Next;
       End;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
       //sumando de la tabla nueva COB_DES_CRO_CERRADO_DET
       xSql:='SELECT IMPORTE FROM DB2ADMIN.COB_DES_CRO_CERRADO_DET WHERE '+
                  ' FORPAGID=''03'' AND NRO_OPERACION=''OP-0''||'+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString)+
                  ' AND FEC_OPERACION= SUBSTR('+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+
                  ' ,7,2)||''/''||SUBSTR('+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+
                  ' ,5,2)||''/''||SUBSTR('+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+',1,4)';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsQry5.First;
      While Not DM1.cdsQry5.Eof Do
      Begin
         MontoTot := MontoTot + DM1.cdsQry5.FieldByName('IMPORTE').AsCurrency;
         DM1.cdsQry5.Next;
      End;
// Fin HPC_201806_COB 
    // Chequeando registros pagados en el COB_FSC_PAGOS_AL_FSC
       xsql := ' SELECT USU_COB_DEU, NVL(SUM(NVL(IMP_COB_DEU,0)),0) MONTOT '
              +' FROM COB_FSC_PAGOS_AL_FSC '
              +' WHERE ASOID = '+QuotedStr(vasoid)+' AND NROOPE = '+QuotedStr(vDocPag)
              +'   AND FOPERAC = '+QuotedStr(vfecpag)+' AND BANCOID = ''03'' '
              +'   AND FORPAGID = ''03'' AND EST_COB_COD NOT IN (''04'', ''13'') '
              +'   AND CCBCOID = ''193-1405628-0-61'' '
              +' GROUP BY USU_COB_DEU';
       DM1.cdsQry5.Close;
       DM1.cdsQry5.DataRequest(xSql);
       DM1.cdsQry5.Open;
       DM1.cdsQry5.First;
       if length(trim(vUsuario))=0 then
          vUsuario := DM1.cdsQry5.FieldByName('USU_COB_DEU').AsString;
       While Not DM1.cdsQry5.Eof Do
       Begin
          MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
          DM1.cdsQry5.Next;
       End;
// Fin: HPP_201118_COB

      If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = MontoTot Then
      Begin
        xSql := 'UPDATE COB348 SET CIERRE = '+QuotedStr('K')
        +', MONREG = '+FloatToStr(MontoTot)+', USUREG = '+QuotedStr(vUsuario)
        +' WHERE CAMRET = '+QuotedStr(DM1.cdsRegCob.FieldByName('CAMRET').AsString)
        +' AND FECPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
        +' AND NUMOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xflag := 'S';
      End
      Else
      Begin
        If MontoTot > 0 Then
        Begin
          xSql := 'UPDATE COB348 SET CIERRE = '+QuotedStr('M')
          +', MONREG = '+FloatToStr(MontoTot)+', USUREG = '+QuotedStr(vUsuario)
          +' WHERE CAMRET = '+QuotedStr(DM1.cdsRegCob.FieldByName('CAMRET').AsString)
          +' AND FECPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
          +' AND NUMOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          xflag := 'S';
        End;
      End;
    End;

    // Chequeando los registros Ok descargados al FSC
    If xflag = 'N' Then
    Begin
      xSql := ' SELECT USU_COB_DEU, NVL(SUM(NVL(IMP_COB_DEU,0)),0) MONTOT FROM  COB_FSC_PAGOS_AL_FSC WHERE '
             +' ASOID = '+QuotedStr(vasoid)+' AND FORPAGID=''03'' AND NROOPE = '+QuotedStr(vDocPag)+' AND FOPERAC = '+ QuotedStr(vfecpag)
             +' AND BANCOID = ''03'' AND EST_COB_COD NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' '
             +' GROUP BY USU_COB_DEU';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsQry5.First;
      vUsuario := DM1.cdsQry5.FieldByName('USU_COB_DEU').AsString;
      MontoTot := 0;

      While Not DM1.cdsQry5.Eof Do
      Begin
        MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
        DM1.cdsQry5.Next;
      End;

      If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = MontoTot Then
      Begin
        xSql := 'UPDATE COB348 SET CIERRE = '+QuotedStr('K')
        +', MONREG = '+FloatToStr(MontoTot)+', USUREG = '+QuotedStr(vUsuario)
        +' WHERE CAMRET = '+QuotedStr(DM1.cdsRegCob.FieldByName('CAMRET').AsString)
        +' AND FECPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
        +' AND NUMOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xflag := 'S';
      End
      Else
      Begin
        If MontoTot > 0 Then
        Begin
          xSql := 'UPDATE COB348 SET CIERRE = '+QuotedStr('M')
          +', MONREG = '+FloatToStr(MontoTot)+', USUREG = '+QuotedStr(vUsuario)
          +' WHERE CAMRET = '+QuotedStr(DM1.cdsRegCob.FieldByName('CAMRET').AsString)
          +' AND FECPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
          +' AND NUMOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          xflag := 'S';
        End;
      End;

    End;

    // Chequeando con error en el numero de documento
    If xflag = 'N' Then
    Begin
      xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE '
      +' ASOID = '+QuotedStr(vasoid)+' AND CREFPAG = '+ QuotedStr(vfecpag)
      +' AND BANCOID = ''03'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' '
      +' GROUP BY USUARIO';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsQry5.First;
      vUsuario := DM1.cdsQry5.FieldByName('USUARIO').AsString;
      MontoTot := 0;
      While Not DM1.cdsQry5.Eof Do
      Begin
        MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
        DM1.cdsQry5.Next;
      End;
      If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = MontoTot Then
      Begin
        xSql := 'UPDATE COB348 SET CIERRE = '+QuotedStr('N')
        +', MONREG = '+FloatToStr(MontoTot)+', USUREG = '+QuotedStr(vUsuario)
        +' WHERE CAMRET = '+QuotedStr(DM1.cdsRegCob.FieldByName('CAMRET').AsString)
        +' AND FECPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
        +' AND NUMOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xflag := 'S';
      End;
    End;
    // Chequeando con error en la fecha
    If xflag = 'N' Then
    Begin
      xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE '
      +' ASOID = '+QuotedStr(vasoid)+' AND CREDOCPAG = '+QuotedStr(vDocPag)
      +' AND BANCOID = ''03'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''193-1405628-0-61'' '
      +' GROUP BY USUARIO';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsQry5.First;
      vUsuario := DM1.cdsQry5.FieldByName('USUARIO').AsString;
      MontoTot := 0;
      While Not DM1.cdsQry5.Eof Do
      Begin
        MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
        DM1.cdsQry5.Next;
      End;
      If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = MontoTot Then
      Begin
        xSql := 'UPDATE COB348 SET CIERRE = '+QuotedStr('F')
        +', MONREG = '+FloatToStr(MontoTot)+', USUREG = '+QuotedStr(vUsuario)
        +' WHERE CAMRET = '+QuotedStr(DM1.cdsRegCob.FieldByName('CAMRET').AsString)
        +' AND FECPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
        +' AND NUMOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xflag := 'S';
      End;
    End;
    // Chequeando con error en la cuenta
    If xflag = 'N' Then
    Begin
      xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE '
      +' ASOID = '+QuotedStr(vasoid)+' AND CREDOCPAG = '+QuotedStr(vDocPag)+' AND CREFPAG = '+ QuotedStr(vfecpag)
      +' AND CREESTID NOT IN (''04'', ''13'') GROUP BY USUARIO';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsQry5.First;
      vUsuario := DM1.cdsQry5.FieldByName('USUARIO').AsString;
      MontoTot := 0;
      While Not DM1.cdsQry5.Eof Do
      Begin
        MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
        DM1.cdsQry5.Next;
      End;
      If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = MontoTot Then
      Begin
        xSql := 'UPDATE COB348 SET CIERRE = '+QuotedStr('E')
        +', MONREG = '+FloatToStr(MontoTot)+', USUREG = '+QuotedStr(vUsuario)
        +' WHERE CAMRET = '+QuotedStr(DM1.cdsRegCob.FieldByName('CAMRET').AsString)
        +' AND FECPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
        +' AND NUMOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xflag := 'S';
      End;
    End;
    // Poniendo Flag de no registrado
    If xflag = 'N' Then
    Begin
      xSql := 'UPDATE COB348 SET CIERRE = '+QuotedStr('R')
      +' WHERE CAMRET = '+QuotedStr(DM1.cdsRegCob.FieldByName('CAMRET').AsString)
      +' AND FECPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
      +' AND NUMOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    End;
    // Recuperando oficina de Usuario que registro
    xSql := 'SELECT ORIGEN FROM USERTABLE WHERE USERID = '+QuotedStr(vUsuario);
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSql);
    DM1.cdsQry5.Open;
    xSql := 'UPDATE COB348 SET OFIREG = '+QuotedStr(DM1.cdsQry5.FieldByName('ORIGEN').AsString)
    +' WHERE CAMRET = '+QuotedStr(DM1.cdsRegCob.FieldByName('CAMRET').AsString)
    +' AND FECPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
    +' AND NUMOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    DM1.cdsRegCob.Next;
  End;
  xSql := 'SELECT * FROM COB348 WHERE FECPRO = '+QuotedStr(fechaProceso)+' AND NVL(CIERRE,''X'') NOT IN (''K'', ''D'',''A'',''C'',''O'')';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsQry5.RecordCount = 0 Then
  Begin
     DM1.cdsCuentas.Edit;
     DM1.cdsCuentas.FieldByName('CIERRE').AsString := 'OK';
     xSql := 'UPDATE COB347 SET CIERRE = ''OK'' WHERE FECPRO = '+QuotedStr(fechaProceso);
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  End
  Else
  Begin
     DM1.cdsCuentas.Edit;
     DM1.cdsCuentas.FieldByName('CIERRE').AsString := '  ';
     xSql := 'UPDATE COB347 SET CIERRE = NULL WHERE FECPRO = '+QuotedStr(fechaProceso);
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  End;
  cargadetalle(fechaProceso, '0');
  dbgCabecera.Refresh;
End;

procedure TFCtaRecBcoCre.ppHeaderBand1BeforePrint(Sender: TObject);
begin
 pplImpreso.Caption := 'IMPRESO POR : '+DM1.wUsuario;
 ppLabel13.Caption := 'FECHA DEL ARCHIVO '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
end;

procedure TFCtaRecBcoCre.validardatos;
Var xSql:String;
begin
  DM1.xSgr := 'S';
end;

Procedure TFCtaRecBcoCre.btnelifecproClick(Sender: TObject);
Var xSql, vFecPro : String;
Begin
  If MessageDlg('se eliminara registros descargado del banco.  Seguro?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    vFecPro := DM1.cdsCuentas.FieldByName('ORDENA').AsString;
    xSql := 'DELETE COB347 WHERE FECPRO = '+QuotedStr(vFecPro);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Execute;
    xSql := 'DELETE COB348 WHERE FECPRO = '+QuotedStr(vFecPro);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Execute;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
//Inicio HPC_201811_COB
//Se adiciona la forma de pago 
    xSql := 'DELETE COB_DES_CRO_CERRADO_DET WHERE FORPAGID=''03'' AND FEC_PROCESO = SUBSTR('+
//Final HPC_201811_COB
    QuotedStr(vFecPro)+', 7, 2) || ''/'' || SUBSTR('+QuotedStr(vFecPro)+', 5, 2) || ''/'' ||SUBSTR('+QuotedStr(vFecPro)
    +', 1, 4)';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Execute;
// Fin HPC_201806_COB 
  End;
End;

procedure TFCtaRecBcoCre.btnrepboldepClick(Sender: TObject);
begin
 Try
    FRepPagBcoCre := TFRepPagBcoCre.create(Self);
    FRepPagBcoCre.ShowModal;
  Finally
    FRepPagBcoCre.Free;
  end;
end;

procedure TFCtaRecBcoCre.btnrepdiaClick(Sender: TObject);
begin
Try
    FRepRes := TFRepRes.create(Self);
    FRepRes.ShowModal;
  Finally
    FRepRes.Free;
  end;
end;

procedure TFCtaRecBcoCre.btnrepfecpagClick(Sender: TObject);
begin
  ppRepDescargo.Print;
  ppRepDescargo.Stop;
end;

procedure TFCtaRecBcoCre.btnmarpagClick(Sender: TObject);
Var xSql, VFECPAG:String;
begin
  DM1.xCnd := 'C';
  Try
    Fpagosobservados := TFpagosobservados.create(Self);
    Fpagosobservados.ShowModal;
  Finally
    Fpagosobservados.Free;
  End;
  vfecpag := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  cargadetalle(vfecpag, '0');
  Screen.Cursor := crHourGlass;
  Screen.Cursor := crDefault;
  dbgCabecera.Refresh;
  dbgdetalle.Refresh;
End;

procedure TFCtaRecBcoCre.btnreppagnoregClick(Sender: TObject);
begin
  pprNoReg.Print;
  pprNoReg.Stop;
end;

Procedure TFCtaRecBcoCre.btndesautClick(Sender: TObject);
Var
  montoRestante, montoDescontadoCuo, montoCapital, montoInteres, montoFlat, tipoCambio: Currency;
  xSql, xCampos, xValores, vFecPro: String;
  xcreestadoant, xcreestidant, xmesExc, xcredidExc: String;
Begin
  vFecPro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  If MessageDlg('Se va a proceder a descargar todos estos registros en el Sistema.  Seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    Screen.Cursor := crHourGlass;
    DM1.cdsDLabo.First;
    While Not DM1.cdsDLabo.Eof Do
    Begin
      If verificaNoRegistrado = 'S' Then
      Begin

        //Inicio: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
        EliminaProcesoDeCobranza( DM1.cdsDLabo.FieldByName('ASOID').AsString );
        //Fin: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
// Inicio HPC_201806_COB
// Exceso en Cronogramas Cerrados (ONP, BANCO)
        xSql := 'BEGIN SP_DESCARGA_RECAUDADORA_V2('
        +QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
        +','+DM1.cdsDLabo.FieldByName('MONTOT').AsString
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMOPE').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+QuotedStr(DM1.wUsuario)
        +','+QuotedStr('193-1405628-0-61')
        +','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
        +', ''03'''
        +', '+QuotedStr(DM1.cdsCuentas.FieldByName('FECPRO').AsString)+'); END;';
//Fin  HPC_201806_COB 
        DM1.DCOM1.AppServer.ejecutaSQL(xSql);
      End;
      DM1.cdsDLabo.Next;
    End;
    validarPagos;
    cargadetalle(vFecPro, '0');
    Screen.Cursor := crDefault;
    MessageDlg('Proceso de descargo Concluido', mtInformation,[mbOk],0);
  End;
End;


//Inicio: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
Procedure TFCtaRecBcoCre.EliminaProcesoDeCobranza( sAsoid : String);
var
  xSQL : String;
begin
  xSql:='SELECT ASOID FROM COB_ASO_DES_BAN '
       +'WHERE ASOID='''+sAsoid+''' AND ACTIVO=''S'' ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;

  if DM1.cdsQry.RecordCount=1 then
  begin
      xSql:='SELECT ASOID FROM CRE302 '
           + 'WHERE ASOID='''+sAsoid+''' AND CREESTID=''14'' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;

      if DM1.cdsQry.RecordCount>=1 then
      begin
         // Elimina cuotas en proceso de cobranza
         xSql:='update CRE302 Set CREESTID=''11'', CREESTADO=''NO PAGADO'' '
               +'WHERE ASOID='''+sAsoid+''' AND CREESTID=''14'' ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Execute;
      end;
  end;
end;
//Fin: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista


Procedure TFCtaRecBcoCre.btnvalautClick(Sender: TObject);
Var xfecpro, xSql :String;
Begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
  xSql := 'SELECT B.ASOID, B.ASOAPENOMDNI, A.CAMRET CAMRETBCO, A.CODIDE CODIDEBCO, A.NUMOPE, ''                              '' DES'
  +' FROM COB348 A, APO201 B WHERE A.FECPRO = '+QuotedStr(xfecpro)
  +' AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND B.ASOID IS NULL';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsQry5.RecordCount > 0 Then
  Begin
    Try
      FIncdescuerec := TFIncdescuerec.create(Self);
      FIncdescuerec.ShowModal;
    Finally
      FIncdescuerec.Free;
    end;
  End
  Else
    MessageDlg(' ! No se encontro registros errados ! ', mtInformation,[mbOk],0);
End;

Procedure TFCtaRecBcoCre.btnrepdescargoClick(Sender: TObject);
Var fecpag, xSql:String;
Begin
  Screen.Cursor := crHourGlass;
  fecpag := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  xSql := 'SELECT A.ASOCODMOD, A.ASOAPENOMDNI, A.FECPAG, SUBSTR(A.NUMOPE,4,7) NUMOPE, A.MONTOT, A.AGENBCODES, SUBSTR(A.CU_CREDID,11,5) CU_CREDID, A.CU_CRECUOTA,'
  //INICIO: DPP_201211_COB
  //+' A.CU_CREAMORT, A.CU_CREINTERES, A.CU_CREFLAT, A.CU_CREMTOEXC, A.CU_CREMTOCOB, B.CREAMORT PAC_CREAMORT, B.CREINTERES PAC_CREINTERES, B.CREFLAT PAC_CREFLAT,'
  //+' B.CREFVEN PAC_CREFVEN, B.CREMTO PAC_CREMTO, B.CRECAPITAL PA_CRECAPITAL, B.CREMTOEXC PA_CREMTOEXC, B.CREMTOINT  PA_CREMTOINT, B.CREMTOFLAT PA_CREMTOFLAT, B.CREMTOCOB PA_CREMTOCOB,'
  //+' B.CREAMORT CU_CREAMORT, B.CREINTERES CU_CREINTERES, B.CREFLAT CU_CREFLAT, NVL(B.CREMTOCOB,0)-NVL(B.CREMTOEXC,0) CU_CREMTOCOB, NVL(B.CREMTOEXC,0) CU_CREMTOEXC FROM ('
  +' A.CU_CREAMORT, A.CU_CREINTERES, A.CU_CREFLAT, A.CU_MONCOBDESGRAV, A.CU_CREMTOEXC, A.CU_CREMTOCOB, B.CREAMORT PAC_CREAMORT, B.CREINTERES PAC_CREINTERES, B.CREFLAT PAC_CREFLAT,B.MONPACDESGRAV PAC_MONPACDESGRAV,'
  +' B.CREFVEN PAC_CREFVEN, B.CREMTO PAC_CREMTO, B.CRECAPITAL PA_CRECAPITAL, B.CREMTOEXC PA_CREMTOEXC, B.CREMTOINT  PA_CREMTOINT,B.MONCOBDESGRAV PA_MONCOBDESGRAV, B.CREMTOFLAT PA_CREMTOFLAT, B.CREMTOCOB PA_CREMTOCOB,'
  +' B.CREESTADO PA_CREESTADO FROM (SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOMDNI, A.FECPAG, A.NUMOPE, A.MONTOT, A.AGENBCODES, B.CREDID CU_CREDID, B.CRECUOTA CU_CRECUOTA,'
  +' B.CREAMORT CU_CREAMORT, B.CREINTERES CU_CREINTERES, B.CREFLAT CU_CREFLAT,B.MONCOBDESGRAV CU_MONCOBDESGRAV, NVL(B.CREMTOCOB,0)-NVL(B.CREMTOEXC,0) CU_CREMTOCOB, NVL(B.CREMTOEXC,0) CU_CREMTOEXC FROM ('
  //FINAL: DPP_201211_COB
  +' SELECT SUBSTR(CAMRET,21,10) ASOID, B.ASOCODMOD, B.ASOAPENOMDNI, TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, ''OP-0''||NUMOPE NUMOPE, MONTOT, C.AGENBCODES'
  +' FROM COB348 A, APO201 B, COB102 C WHERE A.FECPRO = '+QuotedStr(fecpag)+' AND SUBSTR(CAMRET,21,10) = B.ASOID AND A.CODOFI = C.AGENBCOID) A, CRE310 B'
  +' WHERE A.ASOID = B.ASOID AND A.NUMOPE = B.CREDOCPAG AND A.FECPAG = B.CREFPAG AND B.CREESTID NOT IN (''04'', ''13'')) A, CRE302 B WHERE A.ASOID = B.ASOID AND A.CU_CREDID = B.CREDID AND A.CU_CRECUOTA = B.CRECUOTA';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  ppltitulo02.Caption   := 'DEL '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  pplImpresopor.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  Screen.Cursor := crDefault;
  pprcuodes.Print;
  pprcuodes.Stop;
End;

procedure TFCtaRecBcoCre.pplObservacionPrint(Sender: TObject);
begin
 // Chequeando
 pplObservacion.Caption := 'Descargo Ok';
 //INICIO: DPP_201211_COB
 //If FloatToStrF(DM1.cdsReporte.FieldByName('CU_CREAMORT').AsFloat+DM1.cdsReporte.FieldByName('CU_CREINTERES').AsFloat+DM1.cdsReporte.FieldByName('CU_CREFLAT').AsFloat,ffNumber,10,2) <> FloatToStrF(DM1.cdsReporte.FieldByName('CU_CREMTOCOB').AsFloat, ffNumber,10,2) Then
 If FloatToStrF(DM1.cdsReporte.FieldByName('CU_CREAMORT').AsFloat+DM1.cdsReporte.FieldByName('CU_CREINTERES').AsFloat+DM1.cdsReporte.FieldByName('CU_CREFLAT').AsFloat+DM1.cdsReporte.FieldByName('CU_MONCOBDESGRAV').AsFloat,ffNumber,10,2) <> FloatToStrF(DM1.cdsReporte.FieldByName('CU_CREMTOCOB').AsFloat, ffNumber,10,2) Then
   pplObservacion.Caption := 'Dist. Dif. a lo Pagado';
 //If FloatToStrF(DM1.cdsReporte.FieldByName('PA_CRECAPITAL').AsFloat+DM1.cdsReporte.FieldByName('PA_CREMTOINT').AsFloat+DM1.cdsReporte.FieldByName('PA_CREMTOFLAT').AsFloat, ffNumber,10,2) <> FloatToStrF(DM1.cdsReporte.FieldByName('PA_CREMTOCOB').AsFloat, ffNumber,10,2) Then
 If FloatToStrF(DM1.cdsReporte.FieldByName('PA_CRECAPITAL').AsFloat+DM1.cdsReporte.FieldByName('PA_CREMTOINT').AsFloat+DM1.cdsReporte.FieldByName('PA_CREMTOFLAT').AsFloat+DM1.cdsReporte.FieldByName('PA_MONCOBDESGRAV').AsFloat, ffNumber,10,2) <> FloatToStrF(DM1.cdsReporte.FieldByName('PA_CREMTOCOB').AsFloat, ffNumber,10,2) Then
   pplObservacion.Caption := 'Crono. mal distribuido';
 //FINAL: DPP_201211_COB
end;

procedure TFCtaRecBcoCre.dbgdetalleDblClick(Sender: TObject);
begin
  If DM1.cdsDFam.FieldByName('CIERRE').AsString <> 'R' Then
  Begin
    MessageDlg('No puede marcar un registro si no se encuentra como no registrado', mtInformation,[mbOk],0);
    Exit;
  End;
  DM1.cdsDFam.Edit;
  If DM1.cdsDFam.FieldByName('FLAMAR').AsString = 'S' Then
    DM1.cdsDFam.FieldByName('FLAMAR').AsString := 'N'
  Else
    DM1.cdsDFam.FieldByName('FLAMAR').AsString := 'S';
  DM1.cdsDFam.Post;
end;

procedure TFCtaRecBcoCre.cargadetalle(fecpro: String; xorde:String);
Var xSql:String;
begin
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  xSql := 'SELECT ROWNUM NUMERO, FLAMAR, ASOCODMOD, ASOAPENOMDNI, MONTOT, NUMOPE,(''OP-0''||NUMOPE) NUMOPECOMP, AGENBCODES, CIERRE, DESTIP, ASOID, FECPAG'
// Fin HPC_201806_COB 
  +' FROM (SELECT B.ASOCODMOD, B.ASOAPENOMDNI, A.MONTOT, A.NUMOPE, A.REFERENCIA, C.AGENBCODES, A.CIERRE, D.DESTIP,'
  +' A.FLAMAR, B.ASOID, TO_DATE(A.FECPAG, ''YYYYMMDD'') FECPAG  FROM COB348 A, APO201 B, COB102 C, COB_TIP_DES_CUE_REC D'
  +' WHERE FECPRO = '+QuotedStr(fecpro)+' AND SUBSTR(CAMRET,21,10) = B.ASOID AND C.BANCOID(+) = ''03'' AND A.CODOFI = C.AGENBCOID(+)'
  +' AND A.CIERRE = D.CODTIP ';
  If xorde = '0' Then xSql := xSql + 'ORDER BY B.ASOAPENOMDNI)';
  If xorde = '1' Then xSql := xSql + 'ORDER BY MONTOT)';
  If xorde = '2' Then xSql := xSql + 'ORDER BY DESTIP)';
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(xSql);
  DM1.cdsDFam.Open;
  dbgdetalle.Selected.Clear;
  dbgdetalle.SetControlType('FLAMAR',fctCheckBox, 'S;N');
  dbgdetalle.Selected.Add('FLAMAR'#9'7'#9'Marcar'#9#9);
  dbgdetalle.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
  dbgdetalle.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y~Nombre(s)'#9#9);
  dbgdetalle.Selected.Add('MONTOT'#9'10'#9'Monto~depositado'#9#9);
  dbgdetalle.Selected.Add('AGENBCODES'#9'20'#9'Oficina de~deposito'#9#9);
  dbgdetalle.Selected.Add('NUMOPE'#9'7'#9'Número de~operación'#9#9);
  dbgdetalle.Selected.Add('FECPAG'#9'10'#9'Fecha~de Pago'#9#9);
  dbgdetalle.Selected.Add('DESTIP'#9'35'#9'Estado del~pago'#9#9);
  dbgdetalle.ApplySelected;
  TNumericField(DM1.cdsDFam.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
end;

procedure TFCtaRecBcoCre.rgordClick(Sender: TObject);
Var vfecpro:String;
begin
  vfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  If rgord.ItemIndex = 0 Then cargadetalle(vfecpro, '1');
  If rgord.ItemIndex = 1 Then cargadetalle(vfecpro, '2');
  If rgord.ItemIndex = 2 Then cargadetalle(vfecpro, '0');
end;

procedure TFCtaRecBcoCre.btnsalminClick(Sender: TObject);
begin
  // Saldos mínimos
  Try
    fcuerecsalmin := Tfcuerecsalmin.create(Self);
    fcuerecsalmin.ShowModal;
  Finally
    fcuerecsalmin.Free;
  End;
End;

procedure TFCtaRecBcoCre.btncuocanadeClick(Sender: TObject);
begin
  // Cuotas adelantadas
 Try
    FCuoPagBanAde := TFCuoPagBanAde.create(Self);
    FCuoPagBanAde.ShowModal;
 Finally
    FCuoPagBanAde.Free;
 end;
end;

procedure TFCtaRecBcoCre.bbtnDetGralDescargoClick(Sender: TObject);
Var
   fecpag, xSql : String;
Begin
   Screen.Cursor := crHourGlass;
   fecpag := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
   xSql:='SELECT ''CRE'' TIPO,A.ASOCODMOD, A.ASOAPENOMDNI, A.FECPAG, SUBSTR(A.NUMOPE,4,7) NUMOPE, A.MONTOT,A.AGENBCODES, '
//INICIO: DPP_201211_COB
//      +'       SUBSTR(A.CU_CREDID,11,5) CU_CREDID, A.CU_CRECUOTA, A.CU_CREAMORT, A.CU_CREINTERES, A.CU_CREFLAT, A.CU_CREMTOEXC, '
        +'       SUBSTR(A.CU_CREDID,11,5) CU_CREDID, A.CU_CRECUOTA, A.CU_CREAMORT, A.CU_CREINTERES, A.CU_CREFLAT, A.CU_MONCOBDESGRAV, A.CU_CREMTOEXC, '
//      +'       A.CU_CREMTOCOB, B.CREAMORT PAC_CREAMORT,B.CREINTERES PAC_CREINTERES, B.CREFLAT PAC_CREFLAT, B.CREFVEN PAC_CREFVEN,'
        +'       A.CU_CREMTOCOB, B.CREAMORT PAC_CREAMORT,B.CREINTERES PAC_CREINTERES, B.CREFLAT PAC_CREFLAT, B.MONPACDESGRAV PAC_MONPACDESGRAV, B.CREFVEN PAC_CREFVEN,'
//        +'       B.CREMTO PAC_CREMTO, B.CRECAPITAL PA_CRECAPITAL, B.CREMTOEXC PA_CREMTOEXC,B.CREMTOINT  PA_CREMTOINT, B.CREMTOFLAT PA_CREMTOFLAT, '
        +'       B.CREMTO PAC_CREMTO, B.CRECAPITAL PA_CRECAPITAL, B.CREMTOEXC PA_CREMTOEXC,B.CREMTOINT  PA_CREMTOINT, B.CREMTOFLAT PA_CREMTOFLAT,B.MONCOBDESGRAV PA_MONCOBDESGRAV, '
        +'       B.CREMTOCOB PA_CREMTOCOB,B.CREESTADO PA_CREESTADO '
        +' FROM (SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOMDNI, A.FECPAG, A.NUMOPE, A.MONTOT, A.AGENBCODES,B.CREDID CU_CREDID, '
//      +'             B.CRECUOTA CU_CRECUOTA, B.CREAMORT CU_CREAMORT, B.CREINTERES CU_CREINTERES, B.CREFLAT CU_CREFLAT, '
        +'             B.CRECUOTA CU_CRECUOTA, B.CREAMORT CU_CREAMORT, B.CREINTERES CU_CREINTERES, B.CREFLAT CU_CREFLAT,B.MONCOBDESGRAV CU_MONCOBDESGRAV, '
        +'             NVL(B.CREMTOCOB,0)-NVL(B.CREMTOEXC,0) CU_CREMTOCOB,NVL(B.CREMTOEXC,0) CU_CREMTOEXC '
        +'      FROM (SELECT SUBSTR(CAMRET,21,10) ASOID, B.ASOCODMOD, B.ASOAPENOMDNI,TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, '
        +'                    ''OP-0''||NUMOPE NUMOPE, MONTOT,C.AGENBCODES '
        +'             FROM COB348 A, APO201 B, COB102 C '
        +'             WHERE A.FECPRO = '+QuotedStr(fecpag)+' AND SUBSTR(CAMRET,21,10) = B.ASOID AND  A.CODOFI = C.AGENBCOID) A,'
        +'         CRE310 B '
        +'      WHERE A.ASOID = B.ASOID AND  A.NUMOPE = B.CREDOCPAG AND A.FECPAG = B.CREFPAG AND B.CREESTID NOT IN (''04'',''13'')) A,'
        +'      CRE302 B '
        +' WHERE A.ASOID = B.ASOID AND A.CU_CREDID = B.CREDID AND A.CU_CRECUOTA = B.CRECUOTA '
        +'UNION ALL '
        +'SELECT ''FSC'' TIPO,A.ASOCODMOD, A.ASOAPENOMDNI, A.FECPAG, SUBSTR(A.NUMOPE,4,7) NUMOPE, A.MONTOT,A.AGENBCODES, '
//      +'       NUM_DEU CU_CREDID, 0 CU_CRECUOTA, 0 CU_CREAMORT,0 CU_CREINTERES,0 CU_CREFLAT, 0 CU_CREMTOEXC,'
        +'       NUM_DEU CU_CREDID, 0 CU_CRECUOTA, 0 CU_CREAMORT,0 CU_CREINTERES,0 CU_CREFLAT,0 CU_MONCOBDESGRAV, 0 CU_CREMTOEXC,'
//      +'       IMP_COB_DEU CU_CREMTOCOB, 0 PAC_CREAMORT,0 PAC_CREINTERES, 0 PAC_CREFLAT, TO_DATE('''',''DD/MM/YYYY'') PAC_CREFVEN, '
        +'       IMP_COB_DEU CU_CREMTOCOB, 0 PAC_CREAMORT,0 PAC_CREINTERES, 0 PAC_CREFLAT,0 PAC_MONPACDESGRAV,TO_DATE('''',''DD/MM/YYYY'') PAC_CREFVEN, '
//      +'       0 PAC_CREMTO,0 PA_CRECAPITAL, 0 PA_CREMTOEXC, 0  PA_CREMTOINT, 0 PA_CREMTOFLAT, '
        +'       0 PAC_CREMTO,0 PA_CRECAPITAL, 0 PA_CREMTOEXC, 0  PA_CREMTOINT, 0 PA_CREMTOFLAT,0 PA_MONCOBDESGRAV,'
        +'       IMP_COB_DEU PA_CREMTOCOB, B.EST_COB_DES PA_CREESTADO '
        +' FROM (SELECT SUBSTR(CAMRET,21,10) ASOID, B.ASOCODMOD, B.ASOAPENOMDNI,TO_DATE(FECPAG,''YYYYMMDD'')FECPAG, '
        +'             ''OP-0''||NUMOPE NUMOPE, MONTOT,C.AGENBCODES '
        +'      FROM COB348 A, APO201 B, COB102 C '
        +'      WHERE A.FECPRO = '+QuotedStr(fecpag)+' AND SUBSTR(CAMRET,21,10) = B.ASOID AND A.CODOFI = C.AGENBCOID) A,'
        +'     COB_FSC_PAGOS_AL_FSC B '
        +' WHERE B.ASOID=A.ASOID AND B.FEC_COB_DEU=A.FECPAG AND B.FORPAGID=''03'' AND B.NROOPE=A.NUMOPE AND  B.EST_COB_COD NOT IN (''04'',''13'') '
        +'ORDER BY ASOAPENOMDNI,NUMOPE,FECPAG';
//FINAL: DPP_201211_COB
   DM1.cdsReporte.Close;
   DM1.cdsReporte.IndexFieldNames :='ASOAPENOMDNI;NUMOPE;FECPAG';
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   DM1.cdsReporte.First;

   bdeDetGnrDescargo.DataSource := Dm1.dsReporte;
   ppLDel.Caption   := 'Del '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
   ppLImpresopor2.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
   Screen.Cursor := crDefault;
   pprDetGnrDescargo.Print;
   pprDetGnrDescargo.Stop;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.IndexFieldNames :='';
end;
            
//Inicio: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista
procedure TFCtaRecBcoCre.btnAsoBancoClick(Sender: TObject);
begin
  try 
   FAsoEnBanco := TFAsoEnBanco.Create(SELF);
   FAsoEnBanco.ShowModal;
  except
   FAsoEnBanco.fREE
  end;
end;
//Fin: SPP_201307_COB : 10/04/2012 - Eliminar las Cuotas en proceso de cobranza para los asociados que se encuentran en lista

// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
procedure TFCtaRecBcoCre.bbtnEnvDevClick(Sender: TObject);
var
  // Inicio: HPC_201820_COB
  // Se añade variable para controlar estado de la solicitud 
  // xSQL : String;
  xSQL, xflgDev : String;
  // Fin: HPC_201820_COB
  Mtx : TMant;
begin
   // Inicio: HPC_201820_COB
   // Se valida el registro antes del proceso

   If DM1.cdsAsoBanAct.FieldByName('ESTADO').AsString ='DESAPROBADO' Then
   Begin
//Inicio COB_201824_HPC 
//Mejoras en la aplicación de Pagos por Resolver
     //MessageDlg('Registro DESAPROBADO.', mtError, [mbOk], 0);
     //Exit;
     If MessageDlg('Registro DESAPROBADO,' + #13 + #13 +'¿Esta  Seguro(a) de continuar con el proceso? ',
                    mtConfirmation, [mbNo,mbYes], 0) = mrNo Then  Exit;
   End;
   xflgDev := 'N';
   //If DM1.cdsAsoBanAct.FieldByName('ESTADO').AsString <> 'EN TRAMITE' Then
   If (DM1.cdsAsoBanAct.FieldByName('ESTADO').AsString <> 'EN TRAMITE') AND
      (DM1.cdsAsoBanAct.FieldByName('ESTADO').AsString <>'DESAPROBADO') Then
//Fin COB_201824_HPC
   Begin
      ShowMessage('La Solicitud debe encontrarse en trámite para su devolución');
      Exit;
   End;
   // If DM1.cdsAsoBanAct.FieldByName('ESTADO').AsString = 'DEVOLUCION' Then
   // Begin
   //   ShowMessage('La Solicitud fue Devuelta');
   //   Exit;
   // End;
   DM1.cdsQry5.CloneCursor(dm1.cdsAsoBanAct,False);
   xSQL:='SELECT NVL(SUM((NVL(CREMTO,0)-NVL(CREMTOCOB,0))),0) SALDO '
      +  'FROM CRE302 '
      + 'WHERE ASOID='''+DM1.cdsQry5.FieldByName('ASOID').AsString+''' '
      +  ' AND CREESTID IN (''02'',''11'',''14'',''27'',''31'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('SALDO').AsFloat=0 then
  begin
      xSQL := 'SELECT ASOID, CREDID, CRECUOTA FROM CRE302'
          +' WHERE ASOID='''+DM1.cdsQry5.FieldByName('ASOID').AsString+''''
          +' AND CREESTID IN (''19'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount>0 then
      begin
         ShowMessage('No se puede enviar a Devolución por que tiene BLOQUEADA la cuota '+DM1.cdsQry.FieldByName('CRECUOTA').AsString
                    +' del Crédito '+DM1.cdsQry.FieldByName('CREDID').AsString+'. Revisar...');
         Exit;
      end;
      If DM1.cdsQry5.FieldByName('IMPORTE').AsFloat<5 then
      Begin
         If MessageDlg('¿Marcará como "pago por resolver", está seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         Begin
            xflgDev := 'S';
            xSQL := 'UPDATE COB_DES_CRO_CERRADO_DET SET FLGEST = ''32'',FEC_PRO_PAG_RES=SYSDATE,USU_PRO_PAG_RES='''+DM1.WUSUARIO+''' '
            +' WHERE ASOID = '+QuotedStr(DM1.cdsAsoBanAct.FieldByName('ASOID').AsString)
            +' AND NRO_OPERACION = '+QuotedStr(DM1.cdsAsoBanAct.FieldByName('NROOPE').AsString)
            +' AND FEC_OPERACION = '+QuotedStr(DM1.cdsAsoBanAct.FieldByName('FOPERAC').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            actcrocer;
            ShowMessage('La Solicitud ha sido registrado con exito.');
            Exit;
         End;
         Exit;
      End
      Else
      Begin
         If (DM1.cdsAsoBanAct.FieldByName('FALLECIDO').AsString = 'S') Then
         Begin
            If MessageDlg('FALLECIDO - ¿Desea generar una Solicitud de Pago por Resolver?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               xflgDev := 'S';
               xSQL := 'UPDATE COB_DES_CRO_CERRADO_DET SET FLGEST = ''10'' '
               +', USU_SOLICITA = '+QuotedStr(DM1.wUsuario)+', FEC_SOLICITA = SYSDATE'
//Inicio COB_201824_HPC 
//Mejoras en la aplicación de Pagos por Resolver
               +', FALLECIDO = ''S'',FLA_APROBADO=NULL '
//Fin COB_201824_HPC 
               +' WHERE ASOID = '+QuotedStr(DM1.cdsAsoBanAct.FieldByName('ASOID').AsString)
               +' AND NRO_OPERACION = '+QuotedStr(DM1.cdsAsoBanAct.FieldByName('NROOPE').AsString)
               +' AND FEC_OPERACION = '+QuotedStr(DM1.cdsAsoBanAct.FieldByName('FOPERAC').AsString);
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
               actcrocer;
               ShowMessage('La Solicitud ha sido registrado con exito.');
               Exit;
//Inicio COB_201824_HPC
//No debe realizar ninguna operación si no se desea generar solicitud de Pago por Resolver por Fallecimiento
            End
            Else  Exit;
//Fin COB_201824_HPC
         End;
      End;
   End; //De Saldo=0

      If xflgDev = 'N' Then
      Begin
         // Validar que no se haya Registrado
         XSQL:='select ASOID from PRE_APR_DEV '
            +'where asoid='   +QuotedStr(DM1.cdsQry5.FieldByName('asoid').AsString)
          + ' and transano='+QuotedStr(DM1.cdsQry5.FieldByName('transano').AsString)
          + ' and transmes='+QuotedStr(DM1.cdsQry5.FieldByName('transmes').AsString)
          + ' and uproid='  +QuotedStr(DM1.cdsQry5.FieldByName('uproid').AsString)
          + ' and upagoid=' +QuotedStr(DM1.cdsQry5.FieldByName('upagoid').AsString)
          + ' and useid='   +QuotedStr(DM1.cdsQry5.FieldByName('useid').AsString)
          + ' and NVL(FLADEVEFE,''X'')<>''S'' '
          + ' and NVL(FLAAPR,''X'')<>''N'' AND NVL(FLAANU,''X'')<>''S'' ';
         DM1.cdsQry2.CLOSE;
         DM1.cdsQry2.DataRequest(XSQL);
         DM1.cdsQry2.Open;
         If DM1.cdsQry2.RecordCount > 0 Then
         begin
            ShowMessage('Solicitud para este asociado ya fue registrada. Verificar...');
            exit;
         end;
         try
            FSolicitudDevo:=TFSolicitudDevo.Create(self);
            FSolicitudDevo.ShowModal;
         finally
           FSolicitudDevo.Free;
      End;

      TabTeletransferChange(self);
      //BitBtn1Click(SELF);
// Fin: HPC_201820_COB

  end
  else
  begin
     ShowMessage('No se puede enviar a Devolución por que tiene Saldo ('+DM1.cdsQry.FieldByName('SALDO').AsString+'). Revisar...');
     Exit;
  end;
end;
// Fin HPC_201806_COB 

// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
procedure TFCtaRecBcoCre.btnAExcelClick(Sender: TObject);
begin
    DM1.HojaExcel('CronogramaCerrados', self.dtgData.DataSource, self.dtgData);
end;
// Fin HPC_201806_COB

// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
procedure TFCtaRecBcoCre.dbgCronogramaCerradosDblClick(Sender: TObject);
begin
    BitPrintClick(SELF);
end;
// Fin HPC_201806_COB

// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
procedure TFCtaRecBcoCre.BitPrintClick(Sender: TObject);
Var
   xFrmDes, xTipDes, xMeses, Xsql, xAno, xMes: String;
   xCremToCob: Currency;
   xLin: Integer;
Begin
   If DM1.cdsAsoBanAct.FieldByName('ESTADO').AsString <> 'DEVOLUCION' Then
   Begin
     ShowMessage('Solicitud Sin Devolución');
     Exit;
   End;

   xAno :=  Copy(DM1.cdsAsoBanAct.FieldByName('FEC_OPERACION').AsString,7,4);
   xMes :=  Copy(DM1.cdsAsoBanAct.FieldByName('FEC_OPERACION').AsString,4,2);

   xSQL:='select  A.ASOID, A.TRANSANO, A.TRANSMES, ''N'' TMONID, E.MONREV IMPORTE, B.ASOAPENOM, '
        +   'USUCRE USUARIO, A.FECCRE FREG, A.HORCRE HREG, E.CREFPAG, E.NROOPE, E.FOPERAC, '
        +   'A.FORPAGID, B.ASOCODMOD, A.UPROID, A.UPAGOID, A.USEID, '
        +   'B.ASOTIPID, C.UPRONOM, D.UPAGONOM, '
        +   'F.CODOFI, G.OFDESNOM, H.LUGGIRO, H.CODGIRO, H.DEPGIRO, '
        +   'I.AGENBCODES, J.DPTODES, H.ASOCTAAHO, H.ASOOBSERV, H.ASONUMDEV, H.ASOANODEV, H.ASOFECDEV, H.ASOMONDEV '
        +' FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D, DES_DEV_EFE F, '
        +  'APO110 G, MDEVCAB H, COB102 I, APO158 J, COB_DES_CRO_CERRADO_DET K '
        +' WHERE A.TRANSANO=' + Quotedstr(xAno)
        +' AND A.TRANSMES=' + Quotedstr(xMes)

        +' AND K.ASOID='+QuotedStr(DM1.cdsAsoBanAct.FieldByName('ASOID').AsString)
        +' AND E.ASOID = K.ASOID    AND E.NROOPE = K.NRO_OPERACION    AND E.MONREV = K.IMPORTE '
        //+' AND E.NROOPE = K.NRO_OPERACION AND E.FOPERAC = K.FEC_OPERACION AND E.ASOID = K.ASOID AND A.ANODEV = E.ANODEV '

        +' AND A.ANODEV=E.ANODEV AND A.CORDEV=E.CORDEV'
        +' AND A.ASOID = B.ASOID '
        +' AND C.UPROID(+)=A.UPROID '
        +' AND D.UPROID(+)=A.UPROID and D.UPAGOID(+)=A.UPAGOID '
        + ' AND E.ASOID=F.ASOID(+) '
        + ' AND E.ASONUMDEV=F.ASONUMDEV(+) '
        + ' AND E.ANODEV=F.ASOANODEV(+) '
        + ' AND F.CODOFI=G.OFDESID(+) '
        + ' AND E.ASONUMDEV=H.ASONUMDEV(+) '
        + ' AND E.ANODEV=H.ASOANODEV(+) '
        + ' AND H.CODGIRO=I.AGENBCOID(+) '
        + ' AND H.DEPGIRO=J.DPTOID(+) '
        //+ ' AND A.ASOID='+QuotedStr(DM1.cdsTDoc.FieldByName('ASOID').AsString)
        + ' order by H.ASOANODEV, H.ASONUMDEV';
   DM1.cdsRepDev.Close;
   DM1.cdsRepDev.DataRequest( xSQL );
   DM1.cdsRepDev.Open;

   if DM1.cdsRepDev.FieldByName('ASOMONDEV').AsFloat<=0 then
   begin
      ShowMessage('Registro no tiene Nota de Devolución. Revisar...');
      exit;
   end;

   xSQL:='SELECT asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, '
        +  'useid, uproid, upagoid, asoresnom, asofresnom, resid, regpenid, asositid, asofact, asotipid, '
        +  'viaid, vianombre, asonumdir, asofdpto, asodpto, zonaid, zonanomb, ubigeoid, dptoid, paisid, '
        +  'refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil, asoruc, estcivid, '
        +  'asosexo, asoemail, bancoid, asoncta, sitcta, asodni, graacid, grainsid, profid, asofmov, '
        +  'asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid, '
        +  'asorescese, asofrescese, fgarante, zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, '
        +  'flgfsol, estclf, observa, usr_crea, fec_crea, usr_ben, fec_ben, ctaser, cargo, variascuot, '
        +  'crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni, '
        +  'asonomdni, asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, '
        +  'dptnacid, prvnacid, dstnacid, vialabid, zonalabid, fecact, indicador, ccosid, password, codafp, '
        +  'deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant, actarcren, '
        +  'reingreso, autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, '
        +  'gencodbar, envautdes, corenvautdes, codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, '
        +  'codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio, codotrdocide, '
        +  'numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, '
        +  'codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg, mdfusrmod, mdffecmod, emicarta, desmanviv, '
        +  'codmotdestcuo, fecactpad, ceneduid, fallecido, tipo_fall_id, en_actualiz, codtiptel1, codreftel1, '
        +  'codtiptel2, codreftel2, codpension, fecregautdesapo, codleypen, numautonp, codblocharen, numblocharen, '
        +  'coddepintren, desdepintren, asoapecasdni, invalidez, tipo_inva_id '
        + 'FROM APO201 '
        +'WHERE ASOID = ' + QuotedStr(DM1.cdsRepDev.FieldByName('ASOID').AsString);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSQL);
   DM1.cdsAso.Open;

   xFrmDes := DM1.cdsRepDev.FieldByName('FORPAGID').AsString ;
   lblPagEn.Visible := False;
   lblRotPag.Visible := False;
   If xFrmDes = '04' Then
   Begin
      xTipDes := 'EFECTIVO';
      lblPagEn.Visible := True;
      lblRotPag.Visible := True;
      ppLblDesem.Caption := xTipDes;//////////////////////////////////////////
      lblPagEn.Caption := DM1.cdsRepDev.FieldByName('OFDESNOM').AsString ;
   End
   Else
      If xFrmDes = '05' Then
      Begin
         xTipDes := 'GIRO/TRANSFERENCIA';
         ppLblDesem.Caption := 'GIRO : ' + DM1.cdsRepDev.FieldByName('DPTODES').AsString + '- AGENCIA : ' + DM1.cdsRepDev.FieldByName('AGENBCODES').AsString;
      End
      Else
         If xFrmDes = '06' Then
         Begin
            xTipDes := 'CUENTA DE AHORROS';
            ppLblDesem.Caption := xTipDes + ' N: ' + DM1.cdsRepDev.FieldByName('ASOCTAAHO').AsString;
         End;
   ppMeses.Lines.Text := '';
   xCremToCob := 0;
   xMeses := '';

   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('POR CONCEPTO  : DEVOLUCION');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('DEL PERIODO ' + DM1.cdsRepDev.FieldByName('TRANSANO').AsString+' - '+DM1.cdsRepDev.FieldByName('TRANSMES').AsString);
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('---------------------------------------------------------------------');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('Nota :' + DM1.cdsRepDev.FieldByName('ASOOBSERV').AsString);
   ppLblTitulo.Caption := 'NOTA DE DESEMBOLSO : ' + xTipDes + '   N ' + DM1.cdsRepDev.FieldByName('ASONUMDEV').AsString + '-' + DM1.cdsRepDev.FieldByName('ASOANODEV').AsString + '-' + 'DM-COB';
   pplFirmaAso.Caption := trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString);

   PPLblDni.Caption := DM1.cdsAso.FieldByName('ASODNI').AsString;
   ppLblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   ppLblFecDoc.Caption := DM1.cdsRepDev.FieldByName('ASOFECDEV').AsString;
   ppLblDpto.Caption   := DM1.CrgDescrip('DPTOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('DPTOID').AsString)), 'APO158', 'DPTODES');
   ppLblCodPag.Caption := DM1.cdsAso.FieldByName('ASOCODPAGO').AsString;
   ppLblUproc.Caption  := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
   ppLblMonDev.Caption := FormatFloat('###,###.#0', DM1.Valores(DM1.cdsRepDev.FieldByName('ASOMONDEV').AsString));
   ppLblUsuario.Caption:= 'Hecho Por :' + Trim(DM1.cdsRepDev.FieldByName('USUARIO').AsString);

   ppRepDevol.Print;
   ppRepDevol.Cancel

end;
// Fin HPC_201806_COB

//Inicio 201820_COB 
//Se añade opción de pagos por resolver en los cronogramas cerrados
procedure TFCtaRecBcoCre.actcrocer;
Var xSql:String;
begin
   xSql := 'SELECT A.ASOID, A.OFIDES, A.FORPAGID, A.NRO_OPERACION,A.NRO_OPERACION NROOPE, A.FEC_OPERACION,A.FEC_OPERACION FOPERAC,A.FEC_OPERACION CREFPAG, TO_CHAR(A.FEC_OPERACION, ''YYYY'') TRANSANO'
   +' ,TO_CHAR(A.FEC_OPERACION, ''MM'') TRANSMES, A.UPROID, A.UPAGOID, A.USEID, A.ASOCODMOD,'
   +' A.ASOAPENOM, A.BANCOID, A.CCBCOID, A.IMPORTE, A.FREG, A.HREG, A.USERID, A.RCOBID, A.DETRCOBID, A.USERCOBID, A.FLGEST,C.AGENBCODES,MONTOT,'
   +' (CASE WHEN NVL(FLA_APROBADO,''X'')=''N'' THEN ''DESAPROBADO'' ELSE (SELECT ESTDES FROM CRE113 WHERE ESTID=FLGEST) END) ESTADO, '
   +' NVL(D.FALLECIDO,''N'')FALLECIDO'
   +' FROM COB_DES_CRO_CERRADO_DET A,COB348 B,COB102 C, APO201 D WHERE'
   +' B.NUMOPE = SUBSTR(A.NRO_OPERACION,5) AND B.FECPAG = TO_CHAR(A.FEC_OPERACION, ''YYYYMMDD'')'
   +' AND A.FEC_PROCESO = TO_DATE('+QuotedStr(DM1.cdsCuentas.FieldByName('FECPRO').AsString)+')'
   +' AND A.FORPAGID = ''03'' AND B.CODOFI = C.AGENBCOID (+) AND A.ASOID = D.ASOID';
   DM1.cdsAsoBanAct.Close;
   DM1.cdsAsoBanAct.DataRequest(xSql);
   DM1.cdsAsoBanAct.Open;
   dbgCronogramaCerrados.Selected.Clear;
   dbgCronogramaCerrados.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
   dbgCronogramaCerrados.Selected.Add('ASOAPENOM'#9'35'#9'Apellidos y~Nombre(s)'#9#9);
   dbgCronogramaCerrados.Selected.Add('FEC_OPERACION'#9'10'#9'Fecha de~Pago'#9#9);
   dbgCronogramaCerrados.Selected.Add('NRO_OPERACION'#9'10'#9'Número de~Operación'#9#9);
   dbgCronogramaCerrados.Selected.Add('AGENBCODES'#9'15'#9'Agencia de~deposito'#9#9);
   dbgCronogramaCerrados.Selected.Add('IMPORTE'#9'10'#9'Monto no~Registrado'#9#9);
   dbgCronogramaCerrados.Selected.Add('ESTADO'#9'14'#9'Estado del~deposito'#9#9);
   dbgCronogramaCerrados.ApplySelected;
   TNumericField(DM1.cdsAsoBanAct.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
End;

procedure TFCtaRecBcoCre.dbgCronogramaCerradosCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   If DM1.cdsAsoBanAct.FieldByName('ESTADO').AsString = 'DESAPROBADO' Then
   Begin
      ABrush.Color := clRed;
      AFont.Color := clWhite;
   End;
end;
//Fin 201820_COB
End.
