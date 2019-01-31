unit COBD15;
// Inicio Uso Estándares:   01/08/2011
// Unidad               :   COBD15
// Formulario           :   FCalificaAso
// Fecha de Creación    :   15/01/2013
// Autor                :   Hugo Noriega
// Objetivo             :   REPORTE CREDITICIO CONSOLIDADO EXTERNO
// Actualizaciones      :
// HPC_201301_COB       : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO
// SPP_201302_COB       : El pase a producción se realiza de acuerdo al HPC_201301_COB
// HPC_201403_COB       : Error en redondeo en consulta.
// SPP_201403_COB       : Se realiza el pase a producción a partir del HPC_201403_COB.
// HPC_201516_COB       : Se modifica los label del reporte "rpResCentral".
//                        Se incializa con valores por defecto con la finalidad de ser mostrada cuando el asociado no cuenta con información. 
// ////////////////////////////////////////////////////////////////////

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwcheckbox, fcButton, fcImgBtn, fcShapeBtn,
  fcLabel, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart, Grids,
  Wwdbigrd, Wwdbgrid, ComCtrls, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppModule,
  daDataModule, ppStrtch, ppMemo, jpeg, db;

type
  TFCalificaAso = class(TForm)
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    GroupBox2: TGroupBox;
    Shape11: TShape;
    lblCalGen: TfcLabel;
    Shape19: TShape;
    lblCalExtExt: TLabel;
    PageControl4: TPageControl;
    TabSheet11: TTabSheet;
    Label3: TLabel;
    Label2: TLabel;
    Shape20: TShape;
    Label63: TLabel;
    lblSaldo: TLabel;
    Label23: TLabel;
    lblFuente: TLabel;
    Label24: TLabel;
    lblFechaReporte: TLabel;
    PageControl7: TPageControl;
    TabSheet19: TTabSheet;
    dtgDatSbs: TwwDBGrid;
    TabSheet20: TTabSheet;
    bitImprimir: TfcShapeBtn;
    TabSheet10: TTabSheet;
    Label4: TLabel;
    Label16: TLabel;
    dtgSalEnt: TwwDBGrid;
    ebSaldos: TwwExpandButton;
    dtgSalEntHijo: TwwDBGrid;
    ebSaldosHijo: TwwExpandButton;
    dtgSalEntNieto: TwwDBGrid;
    TabSheet12: TTabSheet;
    Label17: TLabel;
    Label29: TLabel;
    dtgProtSol: TwwDBGrid;
    dtgProtDol: TwwDBGrid;
    BitCalExt: TBitBtn;
    DbResCentral: TppDBPipeline;
    rpSolicitud: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape149: TppShape;
    ppShape50: TppShape;
    Mar06: TppShape;
    Mar08: TppShape;
    Mar05: TppShape;
    Mar07: TppShape;
    Mar04: TppShape;
    Mar03: TppShape;
    Mar02: TppShape;
    Mar01: TppShape;
    ppShape308: TppShape;
    ppShape147: TppShape;
    ppShape49: TppShape;
    ppShape148: TppShape;
    ppShape151: TppShape;
    ppShape193: TppShape;
    ppShape141: TppShape;
    ppShape191: TppShape;
    lblAut00: TppShape;
    ppShape190: TppShape;
    ppShape189: TppShape;
    ppShape188: TppShape;
    ppShape187: TppShape;
    ppShape137: TppShape;
    ppShape134: TppShape;
    ppShape171: TppShape;
    ppShape122: TppShape;
    ppShape119: TppShape;
    ppShape55: TppShape;
    ppShape54: TppShape;
    ppShape53: TppShape;
    ppShape34: TppShape;
    ppShape33: TppShape;
    ppShape32: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    lblNroEval: TppLabel;
    lblFecEval: TppLabel;
    lblConSol: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    pImaFoto: TppImage;
    pImaFirma: TppImage;
    ppShape8: TppShape;
    ppLabel6: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel7: TppLabel;
    ppShape6: TppShape;
    ppLabel8: TppLabel;
    ppShape7: TppShape;
    ppShape12: TppShape;
    ppLabel9: TppLabel;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppLabel13: TppLabel;
    ppShape20: TppShape;
    ppLabel14: TppLabel;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLabel15: TppLabel;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppLabel16: TppLabel;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppLabel17: TppLabel;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppLabel18: TppLabel;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppLabel19: TppLabel;
    ppShape31: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppLabel20: TppLabel;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppShape47: TppShape;
    ppShape48: TppShape;
    lblApo08: TppLabel;
    ppShape51: TppShape;
    ppLabel23: TppLabel;
    ppShape52: TppShape;
    ppLabel24: TppLabel;
    ppShape56: TppShape;
    ppLabel25: TppLabel;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppLabel26: TppLabel;
    ppShape59: TppShape;
    ppShape60: TppShape;
    ppLabel27: TppLabel;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppShape65: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppShape66: TppShape;
    ppShape70: TppShape;
    ppShape77: TppShape;
    lblfVen01: TppLabel;
    ppShape78: TppShape;
    ppShape67: TppShape;
    ppShape68: TppShape;
    ppShape69: TppShape;
    ppShape71: TppShape;
    ppShape72: TppShape;
    ppShape73: TppShape;
    ppShape74: TppShape;
    ppShape75: TppShape;
    ppShape76: TppShape;
    ppShape79: TppShape;
    ppShape80: TppShape;
    ppShape81: TppShape;
    ppShape82: TppShape;
    ppShape83: TppShape;
    ppShape84: TppShape;
    ppShape85: TppShape;
    ppShape86: TppShape;
    ppShape87: TppShape;
    ppShape88: TppShape;
    ppShape89: TppShape;
    ppShape90: TppShape;
    ppShape91: TppShape;
    ppShape92: TppShape;
    ppShape93: TppShape;
    ppShape94: TppShape;
    ppShape95: TppShape;
    ppShape96: TppShape;
    ppShape97: TppShape;
    ppShape98: TppShape;
    ppShape99: TppShape;
    ppShape100: TppShape;
    ppShape101: TppShape;
    ppShape102: TppShape;
    ppShape103: TppShape;
    ppShape104: TppShape;
    ppShape105: TppShape;
    ppShape106: TppShape;
    ppShape107: TppShape;
    ppShape108: TppShape;
    ppShape109: TppShape;
    ppShape110: TppShape;
    ppShape111: TppShape;
    ppShape112: TppShape;
    ppShape113: TppShape;
    ppShape114: TppShape;
    ppLabel33: TppLabel;
    ppShape115: TppShape;
    ppLabel34: TppLabel;
    ppShape116: TppShape;
    ppLabel35: TppLabel;
    ppShape117: TppShape;
    ppLabel36: TppLabel;
    ppShape118: TppShape;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppShape120: TppShape;
    ppLabel39: TppLabel;
    ppShape121: TppShape;
    ppLblCuoRen: TppLabel;
    lblIngBto: TppLabel;
    ppShape123: TppShape;
    ppShape124: TppShape;
    ppShape125: TppShape;
    ppShape126: TppShape;
    ppShape127: TppShape;
    ppLabel42: TppLabel;
    ppShape128: TppShape;
    ppLabel43: TppLabel;
    ppShape129: TppShape;
    ppShape130: TppShape;
    ppLabel44: TppLabel;
    ppShape131: TppShape;
    ppShape132: TppShape;
    ppLabel45: TppLabel;
    ppShape133: TppShape;
    ppLabel46: TppLabel;
    ppShape136: TppShape;
    ppLabel47: TppLabel;
    ppShape138: TppShape;
    ppLabel48: TppLabel;
    ppShape139: TppShape;
    ppLabel49: TppLabel;
    ppShape142: TppShape;
    ppLabel50: TppLabel;
    ppShape143: TppShape;
    lblFecPag: TppLabel;
    ppShape144: TppShape;
    ppShape145: TppShape;
    ppLabel52: TppLabel;
    ppShape146: TppShape;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppShape150: TppShape;
    ppLabel55: TppLabel;
    ppShape152: TppShape;
    ppLabel56: TppLabel;
    ppShape153: TppShape;
    ppLabel57: TppLabel;
    ppShape154: TppShape;
    ppShape155: TppShape;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppShape156: TppShape;
    ppShape157: TppShape;
    ppShape158: TppShape;
    ppShape159: TppShape;
    ppLabel60: TppLabel;
    ppShape160: TppShape;
    ppShape161: TppShape;
    ppLabel61: TppLabel;
    ppShape162: TppShape;
    ppShape163: TppShape;
    ppShape164: TppShape;
    ppLabel62: TppLabel;
    lblTipAso: TppLabel;
    lblNomGen: TppLabel;
    lblDni: TppLabel;
    lblCuenta: TppLabel;
    lblCodMod: TppLabel;
    lblAtzPro: TppLabel;
    lblRegPen: TppLabel;
    lblSexo: TppLabel;
    lblUniPro: TppLabel;
    lblUse: TppLabel;
    lblApo12: TppLabel;
    lblApo06: TppLabel;
    lblApo11: TppLabel;
    lblApo10: TppLabel;
    lblApo09: TppLabel;
    lblApo07: TppLabel;
    lblApo03: TppLabel;
    lblApo05: TppLabel;
    lblApo04: TppLabel;
    lblApo02: TppLabel;
    lblApo01: TppLabel;
    lblfVen02: TppLabel;
    lblfVen03: TppLabel;
    lblfVen04: TppLabel;
    lblfVen05: TppLabel;
    lblfVen06: TppLabel;
    lblfVen07: TppLabel;
    lblfVen08: TppLabel;
    lblfVen09: TppLabel;
    lblfVen10: TppLabel;
    lblfVen11: TppLabel;
    lblfVen12: TppLabel;
    lblfPag01: TppLabel;
    lblfPag02: TppLabel;
    lblfPag03: TppLabel;
    lblfPag04: TppLabel;
    lblfPag05: TppLabel;
    lblfPag06: TppLabel;
    lblfPag07: TppLabel;
    lblfPag08: TppLabel;
    lblfPag09: TppLabel;
    lblfPag10: TppLabel;
    lblfPag11: TppLabel;
    lblfPag12: TppLabel;
    lblfMto01: TppLabel;
    lblfMto02: TppLabel;
    lblfMto03: TppLabel;
    lblfMto04: TppLabel;
    lblfMto05: TppLabel;
    lblfMto06: TppLabel;
    lblfMto07: TppLabel;
    lblfMto08: TppLabel;
    lblfMto09: TppLabel;
    lblfMto10: TppLabel;
    lblfMto11: TppLabel;
    lblfMto12: TppLabel;
    lblFrm01: TppLabel;
    lblFrm02: TppLabel;
    lblFrm03: TppLabel;
    lblFrm04: TppLabel;
    lblFrm05: TppLabel;
    lblFrm06: TppLabel;
    lblFrm07: TppLabel;
    lblFrm08: TppLabel;
    lblFrm09: TppLabel;
    lblFrm10: TppLabel;
    lblFrm11: TppLabel;
    lblFrm12: TppLabel;
    lblAtzMax: TppLabel;
    lblCalCar: TppLabel;
    lblCalif: TppLabel;
    lblIngLiq: TppLabel;
    lblDsct: TppLabel;
    lblIndDisp: TppLabel;
    lblRctaTen: TppLabel;
    lblTipCre: TppLabel;
    lblMtoApro: TppLabel;
    lblNroCta: TppLabel;
    lblMonCuo: TppLabel;
    lblTasInt: TppLabel;
    lblTasGas: TppLabel;
    lblSalPag: TppLabel;
    lblUsuario: TppLabel;
    lblTlf01: TppLabel;
    lblTlf02: TppLabel;
    lblCorreo: TppLabel;
    lblDirAso: TppLabel;
    lblColLab: TppLabel;
    lblDist: TppLabel;
    lblProv: TppLabel;
    lblDpto: TppLabel;
    lblEstCiv: TppLabel;
    lblUniPag: TppLabel;
    lblCodPag: TppLabel;
    ppShape165: TppShape;
    ppLabel21: TppLabel;
    ppLabel32: TppLabel;
    lblUltAct: TppLabel;
    ppShape167: TppShape;
    ppLabel51: TppLabel;
    ppShape168: TppShape;
    lblCalExt: TppLabel;
    ppShape169: TppShape;
    ppLabel63: TppLabel;
    ppShape170: TppShape;
    lblNumEnt: TppLabel;
    lblPerExt: TppLabel;
    ppShape172: TppShape;
    ppLabel64: TppLabel;
    ppShape173: TppShape;
    ppShape174: TppShape;
    ppLabel65: TppLabel;
    ppShape175: TppShape;
    ppShape176: TppShape;
    ppShape177: TppShape;
    ppLabel66: TppLabel;
    ppShape178: TppShape;
    ppShape179: TppShape;
    ppShape180: TppShape;
    ppShape181: TppShape;
    ppShape182: TppShape;
    ppShape183: TppShape;
    lblDeuTot: TppLabel;
    ppShape184: TppShape;
    ppLabel67: TppLabel;
    lblDniExt: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    lblSbs01: TppLabel;
    lblSbs02: TppLabel;
    lblNoSbs01: TppLabel;
    lblNoSbs02: TppLabel;
    ppShape135: TppShape;
    ppLabel41: TppLabel;
    ppShape166: TppShape;
    lblAbono: TppLabel;
    ppLabel72: TppLabel;
    lblDesemb: TppLabel;
    ppShape185: TppShape;
    ppLabel73: TppLabel;
    ppShape186: TppShape;
    lblCuoAbn: TppLabel;
    ppShape140: TppShape;
    lblMonPag: TppLabel;
    lblPrefente: TppLabel;
    lblAut02: TppLabel;
    lblAut01: TppLabel;
    lblVrfReniec: TppLabel;
    ppLabel74: TppLabel;
    lblDesDer: TppLabel;
    ppShape192: TppShape;
    ppLabel75: TppLabel;
    lblDesFin: TppLabel;
    Ent01: TppLabel;
    Ent02: TppLabel;
    Ent03: TppLabel;
    Ent04: TppLabel;
    Ent05: TppLabel;
    Ent06: TppLabel;
    Ent07: TppLabel;
    Ent08: TppLabel;
    ppLabel80: TppLabel;
    Mnt01: TppLabel;
    Mnt04: TppLabel;
    Mnt07: TppLabel;
    Mnt02: TppLabel;
    Mnt05: TppLabel;
    Mnt08: TppLabel;
    Mnt03: TppLabel;
    Mnt06: TppLabel;
    lblCtaInd: TppLabel;
    ppLabel22: TppLabel;
    ppLabel40: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel99: TppLabel;
    ppLabel110: TppLabel;
    mObsApro: TppMemo;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    daDataModule1: TdaDataModule;
    Shape16: TShape;
    Label7: TLabel;
    Label54: TLabel;
    lbl04: TLabel;
    lbl01: TLabel;
    Label52: TLabel;
    lbl02: TLabel;
    Label57: TLabel;
    lbl05: TLabel;
    lbl03: TLabel;
    Label55: TLabel;
    rpResCentral: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape349: TppShape;
    ppShape348: TppShape;
    ppShape347: TppShape;
    ppShape346: TppShape;
    ppShape342: TppShape;
    ppLabel119: TppLabel;
    ppShape313: TppShape;
    ppShape314: TppShape;
    ppShape315: TppShape;
    ppShape316: TppShape;
    ppShape323: TppShape;
    ppShape332: TppShape;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppShape350: TppShape;
    ppShape351: TppShape;
    ppShape388: TppShape;
    ppShape389: TppShape;
    ppShape390: TppShape;
    ppShape391: TppShape;
    ppShape392: TppShape;
    ppShape393: TppShape;
    ppShape394: TppShape;
    ppShape395: TppShape;
    ppShape396: TppShape;
    ppShape397: TppShape;
    ppShape398: TppShape;
    ppShape399: TppShape;
    ppShape400: TppShape;
    ppShape401: TppShape;
    ppShape402: TppShape;
    ppShape403: TppShape;
    ppShape404: TppShape;
    ppShape405: TppShape;
    ppShape406: TppShape;
    ppShape407: TppShape;
    ppShape408: TppShape;
    ppShape409: TppShape;
    ppShape410: TppShape;
    lblCab01: TppLabel;
    lblCab02: TppLabel;
    lblCab03: TppLabel;
    lblCab04: TppLabel;
    lblCab05: TppLabel;
    ppShape411: TppShape;
    lblCab06: TppLabel;
    ppShape412: TppShape;
    ppShape413: TppShape;
    ppShape414: TppShape;
    ppShape415: TppShape;
    ppShape416: TppShape;
    lblCab01a: TppLabel;
    lblCab01b: TppLabel;
    lblCab01c: TppLabel;
    lblCab01d: TppLabel;
    lblCab01e: TppLabel;
    ppShape417: TppShape;
    ppLabel150: TppLabel;
    ppShape418: TppShape;
    ppShape419: TppShape;
    ppShape420: TppShape;
    ppShape421: TppShape;
    ppShape422: TppShape;
    ppShape423: TppShape;
    lblCan01: TppLabel;
    lblCan02: TppLabel;
    lblCan03: TppLabel;
    lblCan04: TppLabel;
    lblCan05: TppLabel;
    lblCan06: TppLabel;
    lblCab02a: TppLabel;
    lblCab03a: TppLabel;
    lblCab04a: TppLabel;
    lblCab05a: TppLabel;
    lblCab06a: TppLabel;
    lblCab02b: TppLabel;
    lblCab03b: TppLabel;
    lblCab04b: TppLabel;
    lblCab05b: TppLabel;
    lblCab06b: TppLabel;
    lblCab02c: TppLabel;
    lblCab03c: TppLabel;
    lblCab04c: TppLabel;
    lblCab05c: TppLabel;
    lblCab06c: TppLabel;
    lblCab02d: TppLabel;
    lblCab03d: TppLabel;
    lblCab04d: TppLabel;
    lblCab05d: TppLabel;
    lblCab06d: TppLabel;
    lblCab02e: TppLabel;
    lblCab03e: TppLabel;
    lblCab04e: TppLabel;
    lblCab05e: TppLabel;
    lblCab06e: TppLabel;
    lblFecReporte: TppLabel;
    lblFuentes: TppLabel;
    lblTipDoc: TppLabel;
    lblDocIdent: TppLabel;
    lblApellidos_Nombres: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel151: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppShape424: TppShape;
    ppShape425: TppShape;
    ppShape426: TppShape;
    ppShape427: TppShape;
    ppLabel129: TppLabel;
    ppLabel131: TppLabel;
    ppLabel134: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel162: TppLabel;
    ppLabel165: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape428: TppShape;
    ppShape429: TppShape;
    ppShape430: TppShape;
    ppShape431: TppShape;
    ppDBText1: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLabel143: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel166: TppLabel;
    lblEvaluado: TppLabel;
    lblImpreso: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppShape432: TppShape;
    ppDBCalc5: TppDBCalc;
    ppLabel167: TppLabel;
    ImageCentralRiesgo: TppImage;
    DBChart3: TDBChart;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    lblPerCar: TppLabel;
    //Inicio: HPC_201516_COB
    ppImage2: TppImage;
    ppLabel76: TppLabel;
    //Fin: HPC_201516_COB
    procedure bitImprimirClick(Sender: TObject);
    procedure rpResCentralPrintingComplete(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PROCEDURE CalificarCob(xAsoId: STRING);
    Function  MesIniCompInterno(xMesFin: String): String;
    procedure CreaGrafico01(xSQL: String; xTipoGrafico: Integer);
    procedure CreaGrafico02(xSQL: String; xTipoGrafico: Integer);
    FUNCTION  CalificarAsociado(xDias: Integer; xMst: Char): STRING;
    Function  PerInfExt(xAsoId, xPost: String): String;
    procedure CreaGrafico03(xSQL: String; xTipoGrafico: Integer);
    Function  MaxPeriodo(xPost: String): String;
    procedure PintaGrafico03(xTipoGrafico: Integer);
    PROCEDURE CrgSolicitud;
    Procedure CalfExterna(xAsoId, xPost, xAccion: String);
  end;

var
  FCalificaAso: TFCalificaAso;

implementation

uses COBDM1, COBD10;

{$R *.dfm}

procedure TFCalificaAso.bitImprimirClick(Sender: TObject);
var xSQL:String;
    xCount:Integer;
    ImageCentral: TImage;
begin
ImageCentral := TImage.Create(Nil);
ImageCentral.Width := DBChart3.Width;
ImageCentral.Height := DBChart3.Height;

xSQL:='SELECT MAX(FECREP) FECREP FROM CRE_CAL_EXT_DIS';
DM1.cdsQry26.Close;
DM1.cdsQry26.DataRequest(xSQL);
DM1.cdsQry26.Open;
lblFecReporte.Caption:=DM1.cdsQry26.FieldByName('FECREP').AsString;
DM1.cdsQry26.Close;
xSQL:='SELECT DISTINCT FUENTE  FROM CRE_CAL_EXT_ENT';
DM1.cdsQry26.Close;
DM1.cdsQry26.DataRequest(xSQL);
DM1.cdsQry26.Open;
lblFuentes.Caption:=DM1.cdsQry26.FieldByName('FUENTE').AsString;
DM1.cdsQry26.Close;
lblTipDoc.Caption:='D.N.I.';

lblDocIdent.Caption:=lbl03.Caption;
lblApellidos_Nombres.Caption:=lbl04.Caption;
lblPerCar.Caption:='A : '+DM1.NombreMes(Copy(PerInfExt(DM1.cdsAso.FieldByName('ASOID').AsString,''),5,2))+' -  '+Copy(PerInfExt(DM1.cdsAso.FieldByName('ASOID').AsString,''),1,4);

xSQL:='SELECT FECREP,CANENTREP,PORNOR,PORCPP,PORDEF,PORDUD,PORPER '+
      'FROM (SELECT FECREP,CANENTREP,PORNOR,PORCPP,PORDEF,PORDUD,PORPER FROM CRE_CAL_EXT_DIS '+
      'WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' ORDER BY FECREP DESC) WHERE ROWNUM < 7 ORDER BY FECREP DESC ';
DM1.cdsQry26.Close;
DM1.cdsQry26.DataRequest(xSQL);
DM1.cdsQry26.Open;
   If DM1.cdsQry26.RecordCount > 0 Then
   Begin
       DM1.cdsQry26.First; xCount:=0;
       While Not DM1.cdsQry26.Eof Do
       Begin
          xCount := xCount + 1;
          If xCount=1 Then
             Begin
                 lblCab01.Caption :=DM1.cdsQry26.FieldByName('FECREP').AsString;
                 lblCan01.Caption :=DM1.cdsQry26.FieldByName('CANENTREP').AsString;
                 lblCab01a.Caption:=DM1.cdsQry26.FieldByName('PORNOR').AsString+'%';
                 lblCab01b.Caption:=DM1.cdsQry26.FieldByName('PORCPP').AsString+'%';
                 lblCab01c.Caption:=DM1.cdsQry26.FieldByName('PORDEF').AsString+'%';
                 lblCab01d.Caption:=DM1.cdsQry26.FieldByName('PORDUD').AsString+'%';
                 lblCab01e.Caption:=DM1.cdsQry26.FieldByName('PORPER').AsString+'%';
             End;
          If xCount=2 Then
             Begin
                 lblCab02.Caption :=DM1.cdsQry26.FieldByName('FECREP').AsString;
                 lblCan02.Caption :=DM1.cdsQry26.FieldByName('CANENTREP').AsString;
                 lblCab02a.Caption:=DM1.cdsQry26.FieldByName('PORNOR').AsString+'%';
                 lblCab02b.Caption:=DM1.cdsQry26.FieldByName('PORCPP').AsString+'%';
                 lblCab02c.Caption:=DM1.cdsQry26.FieldByName('PORDEF').AsString+'%';
                 lblCab02d.Caption:=DM1.cdsQry26.FieldByName('PORDUD').AsString+'%';
                 lblCab02e.Caption:=DM1.cdsQry26.FieldByName('PORPER').AsString+'%';
             End;
          If xCount=3 Then
             Begin
                 lblCab03.Caption :=DM1.cdsQry26.FieldByName('FECREP').AsString;
                 lblCan03.Caption :=DM1.cdsQry26.FieldByName('CANENTREP').AsString;
                 lblCab03a.Caption:=DM1.cdsQry26.FieldByName('PORNOR').AsString+'%';
                 lblCab03b.Caption:=DM1.cdsQry26.FieldByName('PORCPP').AsString+'%';
                 lblCab03c.Caption:=DM1.cdsQry26.FieldByName('PORDEF').AsString+'%';
                 lblCab03d.Caption:=DM1.cdsQry26.FieldByName('PORDUD').AsString+'%';
                 lblCab03e.Caption:=DM1.cdsQry26.FieldByName('PORPER').AsString+'%';
             End;
          If xCount=4 Then
             Begin
                 lblCab04.Caption :=DM1.cdsQry26.FieldByName('FECREP').AsString;
                 lblCan04.Caption :=DM1.cdsQry26.FieldByName('CANENTREP').AsString;
                 lblCab04a.Caption:=DM1.cdsQry26.FieldByName('PORNOR').AsString+'%';
                 lblCab04b.Caption:=DM1.cdsQry26.FieldByName('PORCPP').AsString+'%';
                 lblCab04c.Caption:=DM1.cdsQry26.FieldByName('PORDEF').AsString+'%';
                 lblCab04d.Caption:=DM1.cdsQry26.FieldByName('PORDUD').AsString+'%';
                 lblCab04e.Caption:=DM1.cdsQry26.FieldByName('PORPER').AsString+'%';
             End;
          If xCount=5 Then
             Begin
                 lblCab05.Caption :=DM1.cdsQry26.FieldByName('FECREP').AsString;
                 lblCan05.Caption :=DM1.cdsQry26.FieldByName('CANENTREP').AsString;
                 lblCab05a.Caption:=DM1.cdsQry26.FieldByName('PORNOR').AsString+'%';
                 lblCab05b.Caption:=DM1.cdsQry26.FieldByName('PORCPP').AsString+'%';
                 lblCab05c.Caption:=DM1.cdsQry26.FieldByName('PORDEF').AsString+'%';
                 lblCab05d.Caption:=DM1.cdsQry26.FieldByName('PORDUD').AsString+'%';
                 lblCab05e.Caption:=DM1.cdsQry26.FieldByName('PORPER').AsString+'%';
             End;
          If xCount=6 Then
             Begin
                 lblCab06.Caption :=DM1.cdsQry26.FieldByName('FECREP').AsString;
                 lblCan06.Caption :=DM1.cdsQry26.FieldByName('CANENTREP').AsString;
                 lblCab06a.Caption:=DM1.cdsQry26.FieldByName('PORNOR').AsString+'%';
                 lblCab06b.Caption:=DM1.cdsQry26.FieldByName('PORCPP').AsString+'%';
                 lblCab06c.Caption:=DM1.cdsQry26.FieldByName('PORDEF').AsString+'%';
                 lblCab06d.Caption:=DM1.cdsQry26.FieldByName('PORDUD').AsString+'%';
                 lblCab06e.Caption:=DM1.cdsQry26.FieldByName('PORPER').AsString+'%';
             End;
          DM1.cdsQry26.Next;
       End;
   End;

   DM1.cdsQry26.Close;
   xSQL:='SELECT CODENT,NOMENTBAN,CASE WHEN CLASIFICACION=''0'' THEN ''NOR''  '+
         'WHEN CLASIFICACION=''1'' THEN ''CPP'' WHEN CLASIFICACION=''2'' THEN ''DEF'' '+
         'WHEN CLASIFICACION=''3'' THEN ''DUD'' WHEN CLASIFICACION=''4'' THEN ''PER'' END CLASIFICACION, '+
         'TOTDEU FROM CRE_CAL_EXT_ENT A, CRE_ENT_BAN_CER B, CRE_CTA_INF_DET C WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' '+
         'AND A.CODENT=CODENTBAN AND A.COD_CUENTA=C.CODIGO AND C.SUMAR_SALDO=''S''  ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   If DM1.cdsQry1.RecordCount=0 Then
      Begin
         DM1.cdsQry1.Append;
         DM1.cdsQry1.FieldByName('NOMENTBAN').AsString:='NO REGISTRA DEUDA EN EXTERNA';
         DM1.cdsQry1.Post;
      End;
   DBChart3.Title.Visible:=False;
   DBChart3.Draw(ImageCentral.Canvas, ImageCentral.BoundsRect);
   ImageCentralRiesgo.Picture:= ImageCentral.Picture;
   lblImpreso.Caption:= DM1.wUsuario+' - '+DM1.CrgDescrip('USERID='+QuotedStr(DM1.wUsuario), 'TGE006', 'USERNOM')+' - '+DM1.CrgDescrip('OFDESID='+QuotedStr(DM1.CrgDescrip('USERID='+QuotedStr(DM1.wUsuario), 'TGE006', 'OFDESID')), 'APO110', 'OFDESNOM'); //+' - '+DM1.FechaHora;
   rpResCentral.Print;
   rpResCentral.Cancel;
end;


PROCEDURE TFCalificaAso.CalificarCob(xAsoId: STRING);
VAR
   xSQL, xPeriodo, xCfc_F, xPerIni, xPerFin: String;
   xSQL01, xSQL02, xSQL03 : String;
   xMax,xPro:Integer;
BEGIN
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT PERIODO,RESUMEID CFC_F '
      + '  FROM CFC000 A,COB113 B '
      + ' WHERE ASOID=' + QuotedStr(xAsoId)
      + '   AND A.DIASTRANS BETWEEN B.DIASINI AND B.DIASFIN '
      + '   AND PERIODO IN (SELECT MAX(PERIODO) PERIODO FROM CFC000) ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   IF DM1.cdsQry3.RecordCount = 0 THEN
      xCfc_F := 'X'
   ELSE
      xCfc_F := DM1.cdsQry3.FieldByName('CFC_F').AsString;
   xPeriodo := DM1.cdsQry3.FieldByName('PERIODO').AsString;
   DM1.cdsQry3.Close;
   xPerFin:=DM1.UltCartera('A');
   xPerIni:=MesIniCompInterno(xPerFin);
   xSQL:='SELECT ASOAPENOM,PERIODO,DIASTRANS, CASE WHEN DIASTRANS BETWEEN 0 AND 8 THEN ''NOR'' WHEN DIASTRANS BETWEEN 9 AND 31 THEN ''CPP''  '+
         'WHEN DIASTRANS BETWEEN 32 AND 62 THEN ''DEF'' WHEN DIASTRANS BETWEEN 63 AND 123 THEN ''DUD'' WHEN DIASTRANS > 123 THEN ''PER'' END CLASREAL, '+
         'SALDOS_FT SALDODEUDA FROM CFC000  WHERE ASOID='+QuotedStr(xAsoId)+' AND PERIODO BETWEEN '+QuotedStr(xPerIni)+' AND '+QuotedStr(xPerFin)+' ORDER BY PERIODO ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   If DM1.cdsQry6.RecordCount > 0 Then DM1.cdsQry6.Last;

   TNumericField(DM1.cdsQry6.fieldbyname('SALDODEUDA')).DisplayFormat := '###,###.#0';

   xSQL01:='SELECT PERIODO,DIASTRANS DIAS FROM ('+xSQL+')';
   CreaGrafico01(xSQL01,1);

   xSQL02:='SELECT PERIODO,SALDODEUDA FROM ('+xSQL+')';
   CreaGrafico02(xSQL02,1);
   xMax:=0; xPro:=0;
// Inicio SPP_201403_COB       : 12/09/2014 - Error en redondeo
   xSQL03:='SELECT NVL(ROUND((SUM(DIASTRANS)/COUNT(*)),2),0) PROMEDIO,NVL(MAX(DIASTRANS),0) MAXIMO FROM ('+xSQL+')';
// Fin  SPP_201403_COB       : 12/09/2014 - Error en redondeo
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL03);
   DM1.cdsQry3.Open;
   xMax:=DM1.cdsQry3.FieldByName('MAXIMO').AsInteger;
   xPro:=DM1.cdsQry3.FieldByName('PROMEDIO').AsInteger;
   DM1.cdsQry3.Close;

   xSQL:='SELECT TO_CHAR(FECREP,''YYYYMM'') PERIODO,PORNOR,PORCPP,PORDEF,PORDUD,PORPER FROM (SELECT FECREP,NVL(PORNOR,0) PORNOR, '+
         'NVL(PORCPP,0) PORCPP,NVL(PORDEF,0) PORDEF,NVL(PORDUD,0) PORDUD, '+
         'NVL(PORPER,0) PORPER,TOTDEUSOL,TOTDEUDOL,DEUCAS  FROM CRE_CAL_EXT_DIS '+
         'WHERE ASOID='+QuotedStr(xAsoId)+' AND PERIODO='+QuotedStr(PerInfExt(xAsoId,''))+' ORDER BY FECREP DESC) ';
    CreaGrafico03(xSQL,1);

//   Screen.Cursor := crDefault;
END;



Function TFCalificaAso.MesIniCompInterno(xMesFin: String): String;
Var
   xSQL, xVal: String;
Begin
   xVal := '01/' + Copy(xMesFin, 5, 2) + '/' + Copy(xMesFin, 1, 4);
   xSQL := 'SELECT ADD_MONTHS(' + QuotedStr(xVal) + ',-23) VALOR FROM DUAL ';
   DM1.cdsTResol.Close;
   DM1.cdsTResol.DataRequest(xSQL);
   DM1.cdsTResol.Open;
   Result := Copy(DM1.cdsTResol.FieldByName('VALOR').AsString, 7, 4) + Copy(DM1.cdsTResol.FieldByName('VALOR').AsString, 4, 2);
   DM1.cdsTResol.Close;
End;


procedure TFCalificaAso.CreaGrafico01(xSQL: String; xTipoGrafico: Integer);
begin
{
   Screen.Cursor := crHourGlass;
   DM1.cdsQry26.Close;
   DM1.cdsQry26.DataRequest(xSQL);
   DM1.cdsQry26.Open;
   //PintaGrafico01(xTipoGrafico);
   Screen.Cursor := crDefault;
   }
end;


procedure TFCalificaAso.CreaGrafico02(xSQL: String; xTipoGrafico: Integer);
begin
{
   Screen.Cursor := crHourGlass;
   DM1.cdsqry27.Close;
   DM1.cdsQry27.DataRequest(xSQL);
   DM1.cdsQry27.Open;
//   PintaGrafico02(xTipoGrafico);
   Screen.Cursor := crDefault;
   }
end;


FUNCTION TFCalificaAso.CalificarAsociado(xDias: Integer; xMst: Char): STRING;
VAR
   xSQL, xCalDes: STRING;
BEGIN
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT RESUMEABR,RESUMEDES FROM COB914 WHERE DIASINI<=' + IntToStr(xDias) + ' AND DIASFIN>=' + IntToStr(xDias);
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
//   Screen.Cursor := crDefault;
   IF xMst = 'R' THEN
      xCalDes := DM1.cdsProvin.FieldByName('RESUMEABR').AsString
   ELSE
      xCalDes := DM1.cdsProvin.FieldByName('RESUMEABR').AsString;
   DM1.cdsProvin.Close;
   Result := xCalDes;
END;

Function TFCalificaAso.PerInfExt(xAsoId, xPost: String): String;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT MAX(PERIODO) PERINF FROM CRE_CAL_EXT_CAB' + xPost + ' WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.cdsProf.Close;
   DM1.cdsProf.DataRequest(xSQL);
   DM1.cdsProf.Open;
   If Length(Trim(DM1.cdsProf.FieldByName('PERINF').AsString)) = 0 Then
   Begin
      Result := MaxPeriodo(xPost);
   End
   Else
   Begin
      Result := DM1.cdsProf.FieldByName('PERINF').AsString;
   End;
   DM1.cdsProf.Close;
End;


procedure TFCalificaAso.CreaGrafico03(xSQL: String; xTipoGrafico: Integer);
begin
//   Screen.Cursor := crHourGlass;
   DM1.cdsExtornoPCab.Close;
   DM1.cdsExtornoPCab.DataRequest(xSQL);
   DM1.cdsExtornoPCab.Open;
   PintaGrafico03(xTipoGrafico);
//   Screen.Cursor := crDefault;
end;


Function TFCalificaAso.MaxPeriodo(xPost: String): String;
Var
   xSQL, xPeriodo, xTabla: String;
Begin
   If xPost = '' Then
      xTabla := 'CFC000'
   Else
      xTabla := 'CRE_CAL_EXT_CAB_TMP';
   xSQL := 'SELECT MAX(PERIODO) PERIODO FROM ' + xTabla;
   DM1.cdsListaCred.Close;
   DM1.cdsListaCred.DataRequest(xSQL);
   DM1.cdsListaCred.Open;
   xPeriodo := DM1.cdsListaCred.FieldByName('PERIODO').AsString;
   DM1.cdsListaCred.Close;
   Result := xPeriodo;
End;

procedure TFCalificaAso.PintaGrafico03(xTipoGrafico: Integer);
var
   xFieldDefList: TFieldDefList;
   i: integer;
   i2: integer;
   vContPuntos: integer;
   MySerie: TChartSeries;
   xIndex: STRING;
begin
   DBChart3.Title.Text.Add('CALIFICACION EXTERNA HISTORICA');
   xFieldDefList := DM1.cdsExtornoPCab.FieldDefList;
   xIndex :=xFieldDefList.FieldDefs[0].Name;
   i2 := 0;
   For i := 0 TO xFieldDefList.Count - 1 Do
   Begin
      If xFieldDefList.FieldDefs[i].Name <> xIndex Then
      Begin
         If xTipoGrafico=1 Then
            Begin
             // DBChart3.AddSeries(TBarSeries.Create(self));
             End;

         DBChart3.Series[i2].DataSource := DM1.cdsExtornoPCab;
         DBChart3.Series[i2].XLabelsSource := xIndex;
         DBChart3.Series[i2].YValueS.ValueSource := xFieldDefList.FieldDefs[i].Name;
         DBChart3.Series[i2].Name := xFieldDefList.FieldDefs[i].Name;
         i2:=i2 + 1;
      End;
   End;
   DBChart3.RefreshData;
end;


PROCEDURE TFCalificaAso.CrgSolicitud;
VAR
   xAsoId, xCondicion, xSQL, xIdEval, xIdObs: STRING;
   xFecha, xAsoidAval, xCondicionSQLAval1, xCondicionSQLAval2: STRING;
   IB,DL,ILMED,CEMC,DT,ILDM,CEMDM,DP,CENDM : Real;
BEGIN
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   lbl03.Caption := DM1.cdsAso.FieldByName('ASODNI').AsString;
   lbl01.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   lbl04.Caption := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
   lbl05.Caption := DM1.cdsAso.FieldByName('ASONCTA').AsString + ' - ' + DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)), 'COB103', 'SITCTADES');
   xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
   lbl02.Caption := DM1.cdsAso.FieldByName('ASOTIPID').AsString + ' - ' + DM1.CrgDescrip('ASOTIPID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOTIPID').AsString)), 'APO107', 'ASOTIPDES');
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT TIPCREDES,CREDITO,CRECUOTA,CREFVEN,CREFPAG,CREMTOCOB,FORPAGABR,ROWNUM ORDEN FROM (SELECT A.TIPCREID||'' - ''||B.TIPCREDES TIPCREDES, SUBSTR(A.CREDID,11,5)||''-''||SUBSTR(A.CREDID,3,4) CREDITO,  ' +
      'A.ASOID,A.CREDID,A.CRECUOTA,C.CREFVEN,A.CREFPAG,A.CREMTOCOB,FORPAGABR FROM CRE310 A,CRE110 B,CRE302 C WHERE A.ASOID=' + QuotedStr(xAsoId) + ' AND NVL(A.CREMTOCOB,0)>0 AND A.CREESTID NOT IN (''04'',''13'') AND CREFVEN<' + QuotedStr(DateToStr(DM1.FechaSys)) + ' AND FORPAGABR NOT IN (''DEV'',''APL'',''CDO'',''REF'',''MDF'') ' +
      'AND A.TIPCREID=B.TIPCREID AND A.CREFPAG IS NOT NULL AND A.ASOID=C.ASOID AND A.CREDID=C.CREDID AND A.CRECUOTA=C.CRECUOTA ORDER BY CREFPAG DESC) WHERE ROWNUM<13 ';
   DM1.cdsRelCapCuo.Close;
   DM1.cdsRelCapCuo.DataRequest(xSQL);
   DM1.cdsRelCapCuo.Open;
   DM1.cdsRelCapCuo.IndexFieldNames := 'ORDEN';
   TNumericField(DM1.cdsRelCapCuo.fieldbyname('CREMTOCOB')).DisplayFormat := '###,##0.#0';
   CalificarCob(xAsoId);
   CalfExterna(xAsoId,'','SOL');
//   Screen.Cursor := crDefault;
END;


Procedure TFCalificaAso.CalfExterna(xAsoId, xPost, xAccion: String);
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourGlass;

   xSQL := 'SELECT '' '' LINK, FUENTE, FECREP, CODENT, NOMENTBAN, '
      + '       SUM(CASE WHEN CLASIFICACION <> ''8'' AND NVL(SUMAR_SALDO,''N'') = ''S'' THEN TOTDEU ELSE 0 END) TOTAL_APLICA, '
      + '       SUM(CASE WHEN CLASIFICACION <> ''8'' AND NVL(SUMAR_SALDO,''N'') = ''N'' THEN TOTDEU ELSE 0 END) TOTAL_NOAPLICA, '
      + '       SUM(CASE WHEN CLASIFICACION = ''8'' THEN TOTDEU ELSE 0 END) TOTAL_NOCLASIFICADO, '
      + '       SUM(TOTDEU) TOTAL '
      + '  FROM (SELECT A.FUENTE, A.FECREP, A.CODENT, B.NOMENTBAN, NVL(A.TOTDEU, 0) TOTDEU, A.CLASIFICACION, '
      + '               NVL(C.SUMAR_SALDO, ''N'') SUMAR_SALDO '
      + '           FROM CRE_CAL_EXT_ENT' + xPost + ' A, CRE_ENT_BAN_CER B, '
      + '                CRE_CTA_INF_DET C '
      + '          WHERE A.ASOID=' + QuotedStr(xAsoId)
      + '            AND A.PERIODO=' + QuotedStr(PerInfExt(xAsoId, xPost))
      + '            AND A.CODENT = B.CODENTBAN(+) '
      + '            AND A.COD_CUENTA =C.CODIGO(+) ) '
      + ' GROUP BY FUENTE, FECREP, CODENT, NOMENTBAN '
      + ' ORDER BY FUENTE, FECREP, NOMENTBAN ';
   DM1.cdsBcos.Close;
   DM1.cdsBcos.DataRequest(xSQL);
   DM1.cdsBcos.Open;

   TNumericField(DM1.cdsBcos.fieldbyname('TOTAL_APLICA')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsBcos.fieldbyname('TOTAL_NOAPLICA')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsBcos.fieldbyname('TOTAL_NOCLASIFICADO')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsBcos.fieldbyname('TOTAL')).DisplayFormat := '###,##0.#0';

   dtgSalEnt.DataSource := DM1.dsBcos;
   dtgSalEnt.Selected.Clear;
   dtgSalEnt.Selected.Add('LINK'#9'2'#9'_');
   dtgSalEnt.Selected.Add('NOMENTBAN'#9'30'#9'Descripción de Entidad');
   dtgSalEnt.Selected.Add('TOTAL_APLICA'#9'10'#9'Aplicado'#9'F'#9'Saldo');
   dtgSalEnt.Selected.Add('TOTAL_NOAPLICA'#9'10'#9'No Aplicado'#9'F'#9'Saldo');
   dtgSalEnt.Selected.Add('TOTAL_NOCLASIFICADO'#9'10'#9'No Clasificado'#9'F'#9'Saldo');
   dtgSalEnt.Selected.Add('TOTAL'#9'10'#9'Total'#9'F'#9'Saldo');
   dtgSalEnt.SetControlType('LINK', fctCustom, 'ebSaldos');
   dtgSalEnt.ApplySelected;

 //detalle

   xSQL := 'SELECT '' '' LINK,CODENT, COD_CUENTA, CTA_DES, '
      + '       SUM(CASE WHEN CLASIFICACION <> ''8'' AND NVL(SUMAR_SALDO,''N'') = ''S'' THEN TOTDEU ELSE 0 END) TOTAL_APLICA, '
      + '       SUM(CASE WHEN CLASIFICACION <> ''8'' AND NVL(SUMAR_SALDO,''N'') = ''N'' THEN TOTDEU ELSE 0 END) TOTAL_NOAPLICA, '
      + '       SUM(CASE WHEN CLASIFICACION = ''8'' THEN TOTDEU ELSE 0 END) TOTAL_NOCLASIFICADO, '
      + '       SUM(TOTDEU) TOTAL '
      + '  FROM (SELECT A.CODENT, A.COD_CUENTA, E.DESCRIPCION CTA_DES, '
      + '               A.TOTDEU, A.CLASIFICACION, NVL(E.SUMAR_SALDO, ''N'') SUMAR_SALDO '
      + '           FROM CRE_CAL_EXT_ENT' + xPost + ' A, CRE_CTA_INF_DET E '
      + '          WHERE A.ASOID=' + QuotedStr(xAsoId)
      + '            AND A.PERIODO=' + QuotedStr(PerInfExt(xAsoId, xPost))
      + '            AND A.COD_CUENTA = E.CODIGO(+)) '
      + ' GROUP BY CODENT, COD_CUENTA, CTA_DES '
      + ' ORDER BY CTA_DES ';
   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(xSQL);
   DM1.cdsQry10.Open;

   TNumericField(DM1.cdsQry10.fieldbyname('TOTAL_APLICA')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry10.fieldbyname('TOTAL_NOAPLICA')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry10.fieldbyname('TOTAL_NOCLASIFICADO')).DisplayFormat := '###,##0.#0';

   TNumericField(DM1.cdsQry10.fieldbyname('TOTAL')).DisplayFormat := '###,##0.#0';

   dtgSalEntHijo.DataSource := DM1.dsQry10;
   dtgSalEntHijo.Selected.Clear;
   dtgSalEntHijo.Selected.Add('LINK'#9'2'#9'_');
   dtgSalEntHijo.Selected.Add('CTA_DES'#9'30'#9'Cuenta');
   dtgSalEntHijo.Selected.Add('TOTAL_APLICA'#9'10'#9'Aplicado'#9'F'#9'Saldo');
   dtgSalEntHijo.Selected.Add('TOTAL_NOAPLICA'#9'10'#9'No Aplicado'#9'F'#9'Saldo');
   dtgSalEntHijo.Selected.Add('TOTAL_NOCLASIFICADO'#9'10'#9'No Clasificado'#9'F'#9'Saldo');
   dtgSalEntHijo.Selected.Add('TOTAL'#9'10'#9'Total'#9'F'#9'Saldo');
   dtgSalEntHijo.SetControlType('LINK', fctCustom, 'ebSaldosHijo');
   dtgSalEntHijo.ApplySelected;

   xSQL := 'SELECT * '
      + '  FROM (SELECT A.CODENT, A.COD_CUENTA, TOTDEU, D.DESCLA, A.CONDIAS, C.DESTIP, '
      + '                CASE WHEN SUBSTR(E.CODIGO, 3, 1) = ''1'' THEN ''Soles'' '
      + '                     WHEN SUBSTR(E.CODIGO, 3, 1) = ''2'' THEN ''Dolares'' '
      + '                     ELSE ''No Encontrado'' '
      + '                 END MONEDA, A.CLASIFICACION, NVL(E.SUMAR_SALDO, ''N'') SUMAR_SALDO '
      + '           FROM CRE_CAL_EXT_ENT' + xPost + ' A, CRE_ENT_BAN_CER B, CRE_REF_TIP_CRE C, '
      + '                CRE_REF_CLA_CLI D, CRE_CTA_INF_DET E '
      + '          WHERE A.ASOID=' + QuotedStr(xAsoId)
      + '            AND A.PERIODO=' + QuotedStr(PerInfExt(xAsoId, xPost))
      + '            AND A.CODENT = B.CODENTBAN(+) '
      + '            AND A.TIPCRE = C.CODTIP(+) '
      + '            AND A.CLASIFICACION = D.CODCLA(+) '
      + '            AND A.COD_CUENTA = E.CODIGO(+)) '
      + ' ORDER BY DESTIP, MONEDA';

   DM1.cdsQry11.Close;
   DM1.cdsQry11.DataRequest(xSQL);
   DM1.cdsQry11.Open;

   TNumericField(DM1.cdsQry11.fieldbyname('TOTDEU')).DisplayFormat := '###,##0.#0';

   dtgSalEntNieto.DataSource := DM1.dsQry11;
   dtgSalEntNieto.Selected.Clear;
   dtgSalEntNieto.Selected.Add('TOTDEU'#9'10'#9'Saldo');
   dtgSalEntNieto.Selected.Add('DESCLA'#9'20'#9'Calificacion');
   dtgSalEntNieto.Selected.Add('CONDIAS'#9'5'#9'Dias');
   dtgSalEntNieto.Selected.Add('DESTIP'#9'30'#9'Tipo de Credito');
   dtgSalEntNieto.Selected.Add('MONEDA'#9'10'#9'Moneda');
   dtgSalEntNieto.ApplySelected;

// maestro detalle
   DM1.cdsQry10.IndexFieldNames := 'CODENT';
   DM1.cdsQry10.MasterSource := DM1.dsBcos;
   DM1.cdsQry10.MasterFields := 'CODENT';

   DM1.cdsQry11.IndexFieldNames := 'CODENT;COD_CUENTA';
   DM1.cdsQry11.MasterSource := DM1.dsQry10;
   DM1.cdsQry11.MasterFields := 'CODENT;COD_CUENTA';

   xSQL := 'SELECT ASOID,FECREP,NVL(CANENTREP,0) CANENTREP,NVL(PORNOR,0) PORNOR, '
      + '       NVL(PORCPP,0) PORCPP,NVL(PORDEF,0) PORDEF,NVL(PORDUD,0) PORDUD, '
      + '       NVL(PORPER,0) PORPER,TOTDEUSOL,TOTDEUDOL,DEUCAS '
      + ' FROM CRE_CAL_EXT_DIS' + xPost
      + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(PerInfExt(xAsoId, xPost))
      + ' ORDER BY FECREP DESC ';
   DM1.cdsCia.Close;
   DM1.cdsCia.DataRequest(xSQL);
   DM1.cdsCia.Open;
   TNumericField(DM1.cdsCia.fieldbyname('TOTDEUSOL')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsCia.fieldbyname('TOTDEUDOL')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsCia.fieldbyname('DEUCAS')).DisplayFormat := '###,##0.#0';
   xSQL := 'SELECT ASOID,TIPDEU,B.DESCRIP,FECULTREP,CANTIDAD,MONTO,TIPMON '
      + ' FROM CRE_CAL_EXT_MOR A, '
      + '    (SELECT ID,DESCRIP '
      + '     FROM (SELECT ''MOR'' ID,''MOROSIDAD ACTUAL'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION '
      + '           SELECT ''PRR'' ID,''PROTESTOS REGULARIZADOS'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION '
      + '           SELECT ''PRN'' ID,''PROTESTOS NO REGULARIZADOS'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION '
      + '           SELECT ''TCA'' ID,''TARJETAS DE CREDITO ANULADAS'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION SELECT ''CCC'' ID,''CUENTA CORRIENTE CERRADAS'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION SELECT ''CHE'' ID,''CHEQUES RECHAZADOS'' DESCRIP '
      + '           FROM DUAL)) B '
      + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(PerInfExt(xAsoId, xPost))
      + '   AND TIPMON=''S'' AND A.TIPDEU=B.ID(+) ';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(xSQL);
   DM1.cdsCEdu.Open;
   TNumericField(DM1.cdsCEdu.fieldbyname('MONTO')).DisplayFormat := '###,##0.#0';
   xSQL := 'SELECT ASOID,TIPDEU,B.DESCRIP,FECULTREP,CANTIDAD,MONTO,TIPMON '
      + 'FROM CRE_CAL_EXT_MOR A, '
      + '    (SELECT ID,DESCRIP '
      + '     FROM (SELECT ''MOR'' ID,''MOROSIDAD ACTUAL'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION '
      + '           SELECT ''PRR'' ID,''PROTESTOS REGULARIZADOS'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION '
      + '           SELECT ''PRN'' ID,''PROTESTOS NO REGULARIZADOS'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION '
      + '           SELECT ''TCA'' ID,''TARJETAS DE CREDITO ANULADAS'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION '
      + '           SELECT ''CCC'' ID,''CUENTA CORRIENTE CERRADAS'' DESCRIP '
      + '           FROM DUAL '
      + '           UNION '
      + '           SELECT ''CHE'' ID,''CHEQUES RECHAZADOS'' DESCRIP '
      + '           FROM DUAL)) B '
      + 'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(PerInfExt(xAsoId, xPost))
      + '  AND TIPMON=''D'' AND A.TIPDEU=B.ID(+) ';
   DM1.cdsGradoA.Close;
   DM1.cdsGradoA.DataRequest(xSQL);
   DM1.cdsGradoA.Open;
   TNumericField(DM1.cdsGradoA.fieldbyname('MONTO')).DisplayFormat := '###,##0.#0';
   xSQL := 'SELECT ASOID,A.CALGEN,B.DESGEN '
      + ' FROM CRE_CAL_EXT_CAB' + xPost + ' A, CRE_CAL_REF_EXT B '
      + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND PERIODO=' + QuotedStr(PerInfExt(xAsoId, xPost))
      + '  AND A.CALGEN=B.CALGEN(+) ';
   DM1.cdsTAso.Close;
   DM1.cdsTAso.DataRequest(xSQL);
   DM1.cdsTAso.Open;
   If DM1.cdsTAso.RecordCount > 0 Then
   Begin
      lblCalGen.Caption := DM1.cdsTAso.FieldByName('DESGEN').AsString;
      If Trim(DM1.cdsTAso.FieldByName('CALGEN').AsString) = 'A' Then
         If xAccion = 'SOL' Then
            lblCalGen.Font.Color := clGreen
         Else
            If Trim(DM1.cdsTAso.FieldByName('CALGEN').AsString) = 'B' Then
               If xAccion = 'SOL' Then
                  lblCalGen.Font.Color := clBlue
               Else
                  If Trim(DM1.cdsTAso.FieldByName('CALGEN').AsString) = 'C' Then
                     If xAccion = 'SOL' Then
                        lblCalGen.Font.Color := clNavy
                     Else
                        If Trim(DM1.cdsTAso.FieldByName('CALGEN').AsString) = 'O' Then
                           If xAccion = 'SOL' Then
                              lblCalGen.Font.Color := clYellow
                           Else
                              If Trim(DM1.cdsTAso.FieldByName('CALGEN').AsString) = 'R' Then
                                 If xAccion = 'SOL' Then
                                    lblCalGen.Font.Color := clRed
   End
   Else
   Begin
      If xAccion = 'SOL' Then lblCalGen.Caption := 'NO CALIFICADO';
      If xAccion = 'SOL' Then lblCalGen.Font.Color := clNavy;
   End;

   If xAccion = 'SOL' Then
   Begin
      If Length(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))
         + ' AND FECEVAL=' + QuotedStr(DateToStr(DM1.FechaSys))
         + ' AND ESTCAL=''02'' ', 'CRE_CAL_EXT_ASO', 'ASOID'))) > 0 Then
      Begin
         xSQL := 'SELECT CALGEN,DESGEN '
            + 'FROM CRE_CAL_REF_EXT '
            + 'WHERE CALGEN=' + QuotedStr(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))
            + '                     AND FECEVAL=' + QuotedStr(DateToStr(DM1.FechaSys))
            + '                     AND ESTCAL=''02'' ', 'CRE_CAL_EXT_ASO', 'IDCALEXT'));
         DM1.cdsQry4.Close;
         DM1.cdsQry4.DataRequest(xSQL);
         DM1.cdsQry4.Open;
         If DM1.cdsQry4.RecordCount > 0 Then
         Begin
            If xAccion = 'SOL' Then lblCalExtExt.Caption := DM1.cdsQry4.FieldByName('DESGEN').AsString;
         End
         Else
         Begin
            If xAccion = 'SOL' Then lblCalExtExt.Caption := 'NO CALIFICADO';
         End;
         DM1.cdsQry4.Close;
      End;
   End;
   If xAccion = 'SOL' Then lblCalGen.Color := clWhite;
//   Screen.Cursor := crDefault;
End;


procedure TFCalificaAso.rpResCentralPrintingComplete(Sender: TObject);
begin
   fRepCronog1.sImpCalifica :='S';
end;

end.
