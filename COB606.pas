unit COB606;
// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB606
// Formulario                    : FEstadisticaFSC
// Fecha de Creación             : 17/09/2013
// Autor                         : Sistemas
// Objetivo                      : Estadistica del FSC
// Actualizaciones               :
// HPC_201310_COB    17/09/2013  : Estadistica del FSC
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201312_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago, agregar filtros adicionales y Graficos
// SPP_201314_COB                : Se realiza el pase a producción a partir del documento HPC_201312_COB
// HPC_201502_COB    07/01/2014  : Opción para exportar a excel los créditos cancelados con FSC segun filtro por año
// HPC_201508_COB    26/03/2015  : Se le adiciona dos columnas al exportable a excel "Cartera FSC"
// HPC_201521_COB                : Se adiciona boton para generar excel con consolidado de las deudas al FSC a la fecha
// HPC_201601_COB                : Se modifica para que calcule el saldo de la desuda al FSC en el Consolidad del FSC
// HPC_201729_COB    07/11/2017  : Se agrego tres columnas al reporte consolidado FSC en formato excel
// COB_201823_HPC                : Se añade opción para imprimir información por incobrabilidad
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, db,
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
  wwdbdatetimepicker, ppEndUsr, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppCtrls, ppVar, ppPrnabl,
//Inicio HPC_201502_COB
  // Inicio: COB_201823_HPC 
  // Se añaden nuevas unidades para controlar los reportes 
  // ppParameter, DBGrids;
  ppParameter, DBGrids, ComCtrls, wwriched, jpeg, ppStrtch, ppSubRpt;
  // Fin: COB_201823_HPC 
//Final HPC_201502_COB
// Fin: SPP_201314_COB       28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

type
  TFEstadisticaFSC = class(TForm)
    dbgAnos: TwwDBGrid;
    Panel1: TPanel;
    rgTipo: TRadioGroup;
    // Inicio: COB_201823_HPC
    // Se retira boton ya no usado.
    // BitProcesar: TBitBtn;
    // Fin: COB_201823_HPC
    Panel2: TPanel;
    btnSalir: TBitBtn;
    dbgMeses: TwwDBGrid;
    btnAExcel: TBitBtn;
    dbgDepa: TwwDBGrid;
    // Inicio: COB_201823_HPC
    // Se retiran botones ya no usados
    // pnlfecha: TPanel;
    // Label3: TLabel;
    // dtpHasta: TwwDBDateTimePicker;
    // Fin: COB_201823_HPC
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    dbgForPag: TwwDBGrid;
    // Inicio: COB_201823_HPC
    // Se retira componentes no usados
    // pnlFiltro: TPanel;
    // rgTipAso: TRadioGroup;
    // rgCausal: TRadioGroup;
    // Fin: COB_201823_HPC
    bbtnImprimir: TBitBtn;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    ppd1: TppDesigner;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine1: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppDBText10: TppDBText;
    ppLabel5: TppLabel;
    bbtnGrafico: TBitBtn;
    bbtnConsolida: TBitBtn;
    ppdb2: TppDBPipeline;
    ppr2: TppReport;
    ppd2: TppDesigner;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine44: TppLine;
    ppLine22: TppLine;
    ppDBText23: TppDBText;
    ppLabel23: TppLabel;
    // Inicio: COB_201823_HPC
    // Se retira componente no usado
    // ppLabel24: TppLabel;
    // Fin: COB_201823_HPC
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel25: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppFooterBand1: TppFooterBand;
    ppDBText24: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppdbEnv: TppDBCalc;
    ppDBText22: TppDBText;
    ppLabel11: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine24: TppLine;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppDBCalc7: TppDBCalc;
    ppdbCob: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppvEfe: TppVariable;
    //Inicio HPC_201502_COB
    btnCarteraFSC: TBitBtn;
    dtgData: TDBGrid;
   //Inicio HPC_201521_COB
    BtnConsolodado: TBitBtn;
    // Inicio: COB_201823_HPC
    // Nuevos componentes para los nuevos reportes
    pnlFiltro: TPanel;
    rgTipAso: TRadioGroup;
    rgCausal: TRadioGroup;
    BitProcesar: TBitBtn;
    pnlincobrabilidad: TPanel;
    rgfallecido: TRadioGroup;
    rgIncobrabilidad: TRadioGroup;
    rgFecha: TGroupBox;
    dtpHasta: TwwDBDateTimePicker;
    wwDBRichEdit1: TwwDBRichEdit;
    ppImage1: TppImage;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppTitleBand1: TppTitleBand;
    ppImage2: TppImage;
    ppLabel24: TppLabel;
    ppShape1: TppShape;
    ppLabel26: TppLabel;
    ppShape2: TppShape;
    ppLabel27: TppLabel;
    ppShape3: TppShape;
    ppLabel28: TppLabel;
    ppShape4: TppShape;
    ppLabel29: TppLabel;
    ppShape5: TppShape;
    ppLabel30: TppLabel;
    ppShape6: TppShape;
    ppLabel31: TppLabel;
    ppShape7: TppShape;
    ppLabel32: TppLabel;
    ppShape8: TppShape;
    ppLabel33: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape25: TppShape;
    ppLabel34: TppLabel;
    ppShape33: TppShape;
    ppLabel35: TppLabel;
    ppShape34: TppShape;
    ppLabel36: TppLabel;
    ppShape35: TppShape;
    ppLabel37: TppLabel;
    ppShape36: TppShape;
    ppLabel38: TppLabel;
    ppShape37: TppShape;
    ppLabel39: TppLabel;
    ppShape38: TppShape;
    ppLabel40: TppLabel;
    ppShape39: TppShape;
    ppLabel41: TppLabel;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppShape47: TppShape;
    ppShape48: TppShape;
    ppShape49: TppShape;
    ppShape50: TppShape;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppShape53: TppShape;
    ppShape54: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppShape59: TppShape;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppShape63: TppShape;
    ppLabel42: TppLabel;
    ppShape64: TppShape;
    ppLabel43: TppLabel;
    ppShape65: TppShape;
    ppLabel44: TppLabel;
    ppShape66: TppShape;
    ppLabel45: TppLabel;
    ppShape67: TppShape;
    ppLabel46: TppLabel;
    ppShape68: TppShape;
    ppLabel47: TppLabel;
    ppShape69: TppShape;
    ppLabel48: TppLabel;
    ppShape70: TppShape;
    ppLabel49: TppLabel;
    ppShape71: TppShape;
    ppShape72: TppShape;
    ppShape73: TppShape;
    ppShape74: TppShape;
    ppShape75: TppShape;
    ppShape76: TppShape;
    ppShape77: TppShape;
    ppShape78: TppShape;
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
    ppLabel50: TppLabel;
    ppShape95: TppShape;
    ppLabel51: TppLabel;
    ppShape96: TppShape;
    ppLabel52: TppLabel;
    ppShape97: TppShape;
    ppLabel53: TppLabel;
    ppShape98: TppShape;
    ppLabel54: TppLabel;
    ppShape99: TppShape;
    ppLabel55: TppLabel;
    ppShape100: TppShape;
    ppLabel56: TppLabel;
    ppShape101: TppShape;
    ppLabel57: TppLabel;
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
    ppShape115: TppShape;
    ppShape116: TppShape;
    ppShape117: TppShape;
    ppShape118: TppShape;
    ppShape119: TppShape;
    ppShape120: TppShape;
    ppShape121: TppShape;
    ppShape122: TppShape;
    ppShape123: TppShape;
    ppShape124: TppShape;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
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
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    pplTodIncConFecNac: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    DBPConInc: TppDBPipeline;
    PprConInc: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppDBText25: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    pplTotAso: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppShape125: TppShape;
    ppLabel150: TppLabel;
    ppShape126: TppShape;
    ppLabel151: TppLabel;
    ppShape127: TppShape;
    ppLabel152: TppLabel;
    ppShape128: TppShape;
    ppLabel153: TppLabel;
    ppShape129: TppShape;
    ppLabel154: TppLabel;
    ppShape130: TppShape;
    ppLabel155: TppLabel;
    ppShape131: TppShape;
    ppLabel156: TppLabel;
    ppShape132: TppShape;
    ppLabel157: TppLabel;
    ppLine45: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppShape133: TppShape;
    ppLabel158: TppLabel;
    ppShape134: TppShape;
    ppLabel159: TppLabel;
    ppShape135: TppShape;
    ppLabel160: TppLabel;
    ppShape136: TppShape;
    ppLabel161: TppLabel;
    ppShape137: TppShape;
    ppLabel162: TppLabel;
    ppShape138: TppShape;
    ppLabel163: TppLabel;
    ppShape139: TppShape;
    ppLabel164: TppLabel;
    ppShape140: TppShape;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLine46: TppLine;
    pplImpresopor: TppLabel;
    ppImage3: TppImage;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel177: TppLabel;
    pplConIncFecProc: TppLabel;
    pplAplConFecFall: TppLabel;
    pplAplSinFecFall: TppLabel;
    pplAsoConFecFall: TppLabel;
    pplAsoSinFecFall: TppLabel;
    pplCanCreConFecFall: TppLabel;
    pplCanCreSinFecFall: TppLabel;
    pplCobConFecFall: TppLabel;
    pplCobSinFecFal: TppLabel;
    pplEfeConFecFal: TppLabel;
    pplEfecSinFecFall: TppLabel;
    pplSalConFecFal: TppLabel;
    pplSalSinFecFal: TppLabel;
    ppLabel178: TppLabel;
    pplAplTot: TppLabel;
    pplAsoTot: TppLabel;
    pplCanCreTot: TppLabel;
    pplCobTot: TppLabel;
    pplSalTot: TppLabel;
    pprAplMen10Anos: TppReport;
    DBPAplMen10Anos: TppDBPipeline;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppImage4: TppImage;
    ppLabel149: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel185: TppLabel;
    pplFecRecGen: TppLabel;
    ppShape141: TppShape;
    ppShape142: TppShape;
    ppShape143: TppShape;
    ppShape144: TppShape;
    ppShape145: TppShape;
    ppShape146: TppShape;
    ppShape147: TppShape;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppShape148: TppShape;
    ppShape149: TppShape;
    ppShape150: TppShape;
    ppShape151: TppShape;
    ppShape153: TppShape;
    ppLabel186: TppLabel;
    pplImpresoporFSCInc: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppShape152: TppShape;
    pplEfectTot: TppLabel;
    ppLine36: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    chkExcel: TCheckBox;
    Image4: TImage;
    // Fin: COB_201823_HPC

   //Fin HPC_201521_COB
    //Final HPC_201502_COB    
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    procedure BitProcesarClick(Sender: TObject);
    procedure dbgAnosDblClick(Sender: TObject);
    procedure dbgMesesDblClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtpHastaExit(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure dbgAnosEnter(Sender: TObject);
    procedure dbgMesesEnter(Sender: TObject);
    procedure dbgDepaEnter(Sender: TObject);
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    procedure rgTipAsoClick(Sender: TObject);
    procedure rgCausalClick(Sender: TObject);
    procedure dbgForPagEnter(Sender: TObject);
    procedure bbtnImprimirClick(Sender: TObject);
    procedure bbtnGraficoClick(Sender: TObject);
    procedure bbtnConsolidaClick(Sender: TObject);
    procedure ppvEfeCalc(Sender: TObject; var Value: Variant);
    //Inicio HPC_201502_COB
    procedure btnCarteraFSCClick(Sender: TObject);
  //Inicio HPC_201521_COB
    procedure BtnConsolodadoClick(Sender: TObject);

    // Inicio: COB_201823_HPC
    // Cabecera de procedimiento que imprime cabecera de reporte
    procedure ppDBText26Print(Sender: TObject);
    // Fin: COB_201823_HPC

  //Final HPC_201521_COB
    //Final HPC_201502_COB
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
  private
    { Private declarations }
    sHasta : String;
    XGRID: String;

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    sTipAso : String;
    sCausal : String;
    // Inicio: COB_201823_HPC
    // Nuevas variables para controlar el proceso por incobrabilidad
    sFallecido : String;
    sIncobrabilidad : String;
    // Fin: COB_201823_HPC

    sTitAso : String;
    sTitCau : String;
    sTitPag : String;
    sTitPro : String;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

    procedure FiltrarAnos;
    procedure FiltrarMeses;
    procedure FiltrarDptos;

    procedure LimpiaAnos;
    procedure LimpiaMeses;
    procedure LimpiaDptos;

    procedure FormatoAnos;
    procedure FormatoMeses;
    procedure FormatoDptos;

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    procedure FiltrarFormaPago;
    procedure FormatoFormaPago;
    procedure LimpiaFormaPago;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

  public
    { Public declarations }
  end;

var
  FEstadisticaFSC: TFEstadisticaFSC;

implementation

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
uses COBDM1, COB607;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

{$R *.dfm}

procedure TFEstadisticaFSC.LimpiaAnos;
var
  xSQL : String;
begin
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    xSQL:='select ''    '' cobano, 0.00 env_imp, 0 env_con, 0.00 cob_imp, 0 cob_con, 0.00 Saldo, 0.00 efectividad '
         +  'from dual';
    dbgAnos.OnRowChanged:=nil;
    DM1.cdsAcuerdos.Close;
    DM1.cdsAcuerdos.DataRequest( xSQL );
    DM1.cdsAcuerdos.Open;
    DM1.cdsAcuerdos.EmptyDataSet;
    FormatoAnos;
    dbgAnos.OnRowChanged:=dbgAnosDblClick;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
end;


procedure TFEstadisticaFSC.FormatoAnos;
begin

   dbgAnos.DataSource:=DM1.dsAcuerdos;

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
   if rgTipo.ItemIndex=1 then
   begin
      dbgAnos.Selected.Clear;
      dbgAnos.Selected.Add('COBANO'#9'4'#9'Año');
      dbgAnos.Selected.Add('env_imp'#9'12'#9'Enviado~Importe');
      dbgAnos.Selected.Add('env_con'#9'09'#9'Enviado~Asociados');
      dbgAnos.Selected.Add('cob_imp'#9'12'#9'Cobrado~Importe');
      //dbgAnos.Selected.Add('cob_con'#9'09'#9'Cobrado~Asociados');
      dbgAnos.Selected.Add('Saldo'#9'12'#9'Saldo');
      dbgAnos.ApplySelected;
   end
   else
   begin
      dbgAnos.Selected.Clear;
      dbgAnos.Selected.Add('COBANO'#9'4'#9'Año~Apl.');
      dbgAnos.Selected.Add('env_imp'#9'14'#9'FSC.Apl.~Importe');
      dbgAnos.Selected.Add('env_con'#9'07'#9'FSC.Apl.~Asoc.');
      dbgAnos.Selected.Add('cob_imp'#9'12'#9'Cobrado~Importe');
      //dbgAnos.Selected.Add('cob_con'#9'06'#9'Cobrado~Asoc.');
      dbgAnos.Selected.Add('efectividad'#9'05'#9'%~Efect.');
      dbgAnos.Selected.Add('Saldo'#9'14'#9'Saldo');
      dbgAnos.ApplySelected;
      TNumericField(DM1.cdsAcuerdos.FieldByName('efectividad')).DisplayFormat := '##0.00';
   end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

   TNumericField(DM1.cdsAcuerdos.FieldByName('env_imp')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsAcuerdos.FieldByName('cob_imp')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsAcuerdos.FieldByName('env_con')).DisplayFormat := '##,###,##0';
   TNumericField(DM1.cdsAcuerdos.FieldByName('cob_con')).DisplayFormat := '##,###,##0';
   TNumericField(DM1.cdsAcuerdos.FieldByName('Saldo')).DisplayFormat   := '##,###,##0.00';

   dbgAnos.ColumnByName('env_imp').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAcuerdos, 'SUM(env_imp)',''))), ffNumber, 15, 2);
   dbgAnos.ColumnByName('cob_imp').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAcuerdos, 'SUM(cob_imp)',''))), ffNumber, 15, 2);
   dbgAnos.ColumnByName('Saldo').FooterValue   :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAcuerdos, 'SUM(Saldo)',''))),   ffNumber, 15, 2);

   dbgAnos.ColumnByName('env_con').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0', DM1.OperClientDataSet(DM1.cdsAcuerdos, 'SUM(env_con)',''))), ffNumber, 15, 0);
   dbgAnos.ColumnByName('cob_con').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0', DM1.OperClientDataSet(DM1.cdsAcuerdos, 'SUM(cob_con)',''))), ffNumber, 15, 0);
end;

procedure TFEstadisticaFSC.LimpiaMeses;
var
  xSQL : String;
begin
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    dbgMeses.OnRowChanged:=nil; 
    xSQL:='select ''  '' cobano, ''  '' cobmes, 0.00 env_imp, 0 env_con, '
         +   '0.00 cob_imp,  0 cob_con, 0.00 Saldo, '' '' mesdes, 0.00 efectividad '
         +  'from dual';
    DM1.cdsUtilidades.Close;
    DM1.cdsUtilidades.DataRequest( xSQL );
    DM1.cdsUtilidades.Open;
    DM1.cdsUtilidades.EmptyDataSet;

    FormatoMeses;
    dbgMeses.OnRowChanged:=dbgMesesDblClick
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
end;


procedure TFEstadisticaFSC.FormatoMeses;
var
  sTitulo : String;
begin
  dbgMeses.DataSource:=DM1.dsUtilidades;

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
  if rgTipo.ItemIndex=1 then
  begin
    sTitulo:='Año '+DM1.cdsUtilidades.fieldByName('COBANO').AsString;

    dbgMeses.Selected.Clear;
    dbgMeses.Selected.Add('MESDES'#9'10'#9'Mes'#9'F'#9+sTitulo);
    dbgMeses.Selected.Add('env_imp'#9'11'#9'Enviado~Importe'#9'F'#9+sTitulo);
    dbgMeses.Selected.Add('env_con'#9'07'#9'Enviado~Cantidad'#9'F'#9+sTitulo);
    dbgMeses.Selected.Add('cob_imp'#9'11'#9'Cobrado~Importe'#9'F'#9+sTitulo);
    //dbgMeses.Selected.Add('cob_con'#9'07'#9'Cobrado~Cantidad'#9'F'#9+sTitulo);
    dbgMeses.Selected.Add('Saldo'#9'11'#9'Saldo'#9'F'#9+sTitulo);
    dbgMeses.ApplySelected;
  end
  else
  begin
    sTitulo:='Año '+DM1.cdsUtilidades.fieldByName('COBANO').AsString;

    dbgMeses.Selected.Clear;
    dbgMeses.Selected.Add('MESDES'#9'09'#9'Mes'#9'F'#9+sTitulo);
    dbgMeses.Selected.Add('env_imp'#9'12'#9'FSC.Apl.~Importe'#9'F'#9+sTitulo);
    dbgMeses.Selected.Add('env_con'#9'06'#9'FSC.Apl.~Asoc.'#9'F'#9+sTitulo);
    dbgMeses.Selected.Add('cob_imp'#9'11'#9'Cobrado~Importe'#9'F'#9+sTitulo);
    //dbgMeses.Selected.Add('cob_con'#9'06'#9'Cobrado~Asoc.'#9'F'#9+sTitulo);
    dbgMeses.Selected.Add('efectividad'#9'05'#9'%~Efect.'#9'F'#9+sTitulo);
    dbgMeses.Selected.Add('Saldo'#9'12'#9'Saldo'#9'F'#9+sTitulo);
    dbgMeses.ApplySelected;
    TNumericField(DM1.cdsUtilidades.FieldByName('efectividad')).DisplayFormat := '##0.00';
  end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

    TNumericField(DM1.cdsUtilidades.FieldByName('env_imp')).DisplayFormat := '##,###,##0.00';
    TNumericField(DM1.cdsUtilidades.FieldByName('cob_imp')).DisplayFormat := '##,###,##0.00';
    TNumericField(DM1.cdsUtilidades.FieldByName('env_con')).DisplayFormat := '##,###,##0';
    TNumericField(DM1.cdsUtilidades.FieldByName('cob_con')).DisplayFormat := '##,###,##0';
    TNumericField(DM1.cdsUtilidades.FieldByName('Saldo')).DisplayFormat := '##,###,##0.00';

    dbgMeses.ColumnByName('env_imp').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(env_imp)',''))), ffNumber, 15, 2);
    dbgMeses.ColumnByName('cob_imp').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(cob_imp)',''))), ffNumber, 15, 2);
    dbgMeses.ColumnByName('Saldo').FooterValue   :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(Saldo)',''))),   ffNumber, 15, 2);

    dbgMeses.ColumnByName('env_con').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(env_con)',''))), ffNumber, 15, 0);
    dbgMeses.ColumnByName('cob_con').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(cob_con)',''))), ffNumber, 15, 0);
end;


procedure TFEstadisticaFSC.LimpiaDptos;
var
    xSQL : String;
begin
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    xSQL:='select ''    '' cobano, ''  '' cobmes, ''  '' dptoid, ''  '' dptodes, '
         +   '0.00 env_imp, 0 env_con, 0.00 cob_imp, 0 cob_con, 0.00 Saldo, 0.00 efectividad '
         +  'from dual';
    DM1.cdsCuotasAnu.Close;
    DM1.cdsCuotasAnu.DataRequest( xSQL );
    DM1.cdsCuotasAnu.DisableControls;
    DM1.cdsCuotasAnu.Open;
    DM1.cdsCuotasAnu.EmptyDataSet;

    FormatoDptos;
    DM1.cdsCuotasAnu.EnableControls;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
end;


procedure TFEstadisticaFSC.FormatoDptos;
var
  sTitulo : String;
begin
  dbgDepa.DataSource:=DM1.dsCuotasAnu;

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
  if rgTipo.ItemIndex=1 then
  begin
    sTitulo:=trim(DM1.cdsUtilidades.fieldByName('MESDES').AsString)+' del '+DM1.cdsUtilidades.fieldByName('COBANO').AsString;
    dbgDepa.Selected.Clear;
    dbgDepa.Selected.Add('dptodes'#9'13'#9'Departamento'#9'F'#9+sTitulo);
    dbgDepa.Selected.Add('env_imp'#9'11'#9'Enviado~Importe'#9'F'#9+sTitulo);
    dbgDepa.Selected.Add('env_con'#9'07'#9'Enviado~Cantidad'#9'F'#9+sTitulo);
    dbgDepa.Selected.Add('cob_imp'#9'10'#9'Cobrado~Importe'#9'F'#9+sTitulo);
    //dbgDepa.Selected.Add('cob_con'#9'07'#9'Cobrado~Cantidad'#9'F'#9+sTitulo);
    dbgDepa.Selected.Add('Saldo'#9'10'#9'Saldo'#9'F'#9+sTitulo);
    dbgDepa.ApplySelected;
  end
  else
  begin
    sTitulo:=trim(DM1.cdsUtilidades.fieldByName('MESDES').AsString)+' del '+DM1.cdsUtilidades.fieldByName('COBANO').AsString;
    dbgDepa.Selected.Clear;
    dbgDepa.Selected.Add('dptodes'#9'12'#9'Departam.'#9'F'#9+sTitulo);
    dbgDepa.Selected.Add('env_imp'#9'12'#9'FSC.Apl.~Importe'#9'F'#9+sTitulo);
    dbgDepa.Selected.Add('env_con'#9'06'#9'FSC.Apl.~Asoc.'#9'F'#9+sTitulo);
    dbgDepa.Selected.Add('cob_imp'#9'10'#9'Cobrado~Importe'#9'F'#9+sTitulo);
    //dbgDepa.Selected.Add('cob_con'#9'06'#9'Cobrado~Asoc.'#9'F'#9+sTitulo);
    dbgDepa.Selected.Add('efectividad'#9'05'#9'%~Efect.'#9'F'#9+sTitulo);
    dbgDepa.Selected.Add('Saldo'#9'11'#9'Saldo'#9'F'#9+sTitulo);
    dbgDepa.ApplySelected;
    TNumericField(DM1.cdsCuotasAnu.FieldByName('efectividad')).DisplayFormat := '##0.00';
  end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

    TNumericField(DM1.cdsCuotasAnu.FieldByName('env_imp')).DisplayFormat := '##,###,##0.00';
    TNumericField(DM1.cdsCuotasAnu.FieldByName('cob_imp')).DisplayFormat := '##,###,##0.00';
    TNumericField(DM1.cdsCuotasAnu.FieldByName('env_con')).DisplayFormat := '##,###,##0';
    TNumericField(DM1.cdsCuotasAnu.FieldByName('cob_con')).DisplayFormat := '##,###,##0';
    TNumericField(DM1.cdsCuotasAnu.FieldByName('Saldo')).DisplayFormat := '##,###,##0.00';

    dbgDepa.ColumnByName('env_imp').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(env_imp)',''))), ffNumber, 15, 2);
    dbgDepa.ColumnByName('cob_imp').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(cob_imp)',''))), ffNumber, 15, 2);
    dbgDepa.ColumnByName('Saldo').FooterValue   :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(Saldo)',''))),   ffNumber, 15, 2);

    dbgDepa.ColumnByName('env_con').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(env_con)',''))), ffNumber, 15, 0);
    dbgDepa.ColumnByName('cob_con').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(cob_con)',''))), ffNumber, 15, 0);
end;


procedure TFEstadisticaFSC.FiltrarAnos;
var
  xSQL : String;
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
  sTit1, sTit2 : String;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
begin
  if rgTipo.ItemIndex=1 then
  begin
    // Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    sTit1:=', ''ENVIADO'' titulo5 ';
    sTit2:=', ''COBRADO'' titulo6 ';
    xSQL:='select cobano, sum(nvl(moncuoenvfsc,0)) env_imp, count(*) env_con, '
         +   'nvl(sum(nvl(MONCUOAPL,0)),0) cob_imp,  nvl(sum( case when nvl(MONCUOAPL,0)>0 then 1 else 0 end ),0) cob_con, '
         +   'sum(nvl(moncuoenvfsc,0))- sum(nvl(MONCUOAPL,0)) Saldo '
         +   sTitAso + sTitCau + ', ''Usuario : '+DM1.wUsuario+''' TITUSU '
         +   sTitPag + sTitPro + sTit1 + sTit2
         +  'from cob319 a '
         + 'where cobano>=''2011'' and nvl(moncuoenvfsc,0)>0 '
         + 'group by cobano '
         + 'order by cobano desc';
    // Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    DM1.cdsAcuerdos.Close;
    DM1.cdsAcuerdos.DataRequest( xSQL );
    DM1.cdsAcuerdos.Open;
  end
  else
  begin
    // Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    sTit1:=', ''APLICACION DEL F.S.C'' titulo5 ';
    sTit2:=', ''COBRADO DEL F.S.C'' titulo6 ';
    xSQL:='select to_char(fec_apl_fsc,''yyyy'') cobano, sum(imp_apl_fsc) env_imp, count(*) env_con, '
         +  'sum(nvl(impcob,0)) cob_imp, sum(nvl(cant,0)) cob_con, sum(imp_apl_fsc)-sum(nvl(impcob,0)) saldo, '
         +  'round(sum(nvl(impcob, 0))*100/sum(imp_apl_fsc),2) efectividad '
         +   sTitAso + sTitCau + ', ''Usuario : '+DM1.wUsuario+''' TITUSU '
         +   sTitPag + sTitPro + sTit1 + sTit2
         + 'from cob_fsc_deuda_fsc_cab a, '
         +   '( select num_deu, sum(nvl(imp_cob_deu,0)) impcob, 1 cant '
         +      ' from cob_fsc_pagos_al_fsc '
         +      'where est_cob_cod not in (''13'',''04'',''99'') '
         +        'and fec_cob_deu <= '''+sHasta+''' '
         +        'and NUM_DEV_EXC IS NULL '
         // Inicio: COB_201823_HPC
         // Se añade Qry para controlar la forma de pago por incobrabilidad
         // +      'group by num_deu ) b '
         // + 'where fec_apl_fsc>=''01/01/2000'' '
         // +  ' and id_est_fsc not in (''13'',''04'',''99'') '
         +      'group by num_deu ) b, apo201 c ';
         If sIncobrabilidad = '' Then
            xSQL:= xSQL + 'where a.fec_apl_fsc>=''01/01/2000'' '
         Else
            xSQL:= xSQL + sIncobrabilidad;
         xSQL:= xSQL +  ' and a.id_est_fsc not in (''13'',''04'',''99'') '
         // Fin: COB_201823_HPC
         +  sTipAso
         +  sCausal
         // Inicio: COB_201823_HPC
         // Se añade variable para controlar si esta fallecido o no.
         +  sfallecido
         // Fin: HPC_201813_COB
         +  ' and a.num_deu=b.num_deu(+) '
         // Inicio: COB_201823_HPC
         // Se añade condición para ver si el asociado es fallecido o no
         +  ' and a.asoid = c.asoid (+) '
         // Fin: HPC_201813_COB
         + 'group by to_char(fec_apl_fsc,''yyyy'') '
         + 'order by cobano desc';
    // Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    DM1.cdsAcuerdos.Close;
    DM1.cdsAcuerdos.DataRequest( xSQL );
    DM1.cdsAcuerdos.Open;
  end;
end;


procedure TFEstadisticaFSC.BitProcesarClick(Sender: TObject);
begin

  FiltrarAnos;
  FormatoAnos;

  FiltrarMeses;
  FormatoMeses;

  FiltrarDptos;
  FormatoDptos;

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
  FiltrarFormaPago;
  FormatoFormaPago;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
end;


// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.FiltrarFormaPago;
var
  xSQL : String;
begin
  if rgTipo.ItemIndex=1 then
  begin
      xSQL:='select cobano, cobmes, sum(nvl(moncuoenvfsc,0)) env_imp, count(*) env_con, '
           +   'sum(nvl(MONCUOAPL,0)) cob_imp,  sum( case when nvl(MONCUOAPL,0)>0 then 1 else 0 end ) cob_con, '
           +   'sum(nvl(moncuoenvfsc,0))- sum(nvl(MONCUOAPL,0)) Saldo, '
           +   'to_char(to_date(''01/''||cobmes||''/''||cobano), ''Month'') mesdes '
           +  'from cob319 a '
           + 'where cobano='''+DM1.cdsAcuerdos.fieldByName('COBANO').AsString+''' and nvl(moncuoenvfsc,0)>0 '
           + 'group by cobano, cobmes '
           + 'order by cobano, cobmes desc';

      DM1.cdsQry31.Close;
      DM1.cdsQry31.DataRequest( xSQL );
      DM1.cdsQry31.Open;
  end
  else
  begin
      xSQL:='select forpagabr, to_char(fec_apl_fsc, ''yyyy'') cobano, sum(impcob) cob_imp, sum(cant) cob_con '
           +   '  from cob_fsc_deuda_fsc_cab a, '
           +   '       (select num_deu, forpagodes forpagabr, sum(nvl(imp_cob_deu, 0)) impcob, 1 cant '
           +   '          from cob_fsc_pagos_al_fsc d, COB101 c '
           +   '         where est_cob_cod not in (''13'', ''04'', ''99'') '
           +   '           and fec_cob_deu <= '''+sHasta+''' '
           +   '           and NUM_DEV_EXC IS NULL '
           +   '           and d.forpagid is not null '
           +   '           and d.forpagid=c.forpagoid(+) '
           +   '         group by num_deu, forpagodes ) b '
           +   ' where to_char(fec_apl_fsc,''yyyy'') = '''+DM1.cdsAcuerdos.fieldByName('COBANO').AsString+''' '
           +   '   and id_est_fsc not in (''13'', ''04'', ''99'') '
           +   sTipAso
           +   sCausal
           +   '   and a.num_deu = b.num_deu(+) '
           +   '   and forpagabr is not null '
           +   ' group by to_char(fec_apl_fsc, ''yyyy''), forpagabr '
           +   ' order by cobano desc';
      DM1.cdsQry31.Close;
      DM1.cdsQry31.DataRequest( xSQL );
      DM1.cdsQry31.Open;
  end;

end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales


// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.FormatoFormaPago;
var
  sTitulo : String;
begin
  dbgForPag.DataSource:=DM1.dsQry31;

  if rgTipo.ItemIndex=1 then
  begin

  end
  else
  begin
    sTitulo:=' Año '+DM1.cdsUtilidades.fieldByName('COBANO').AsString;
    dbgForPag.Selected.Clear;
    dbgForPag.Selected.Add('forpagabr'#9'30'#9'Forma de Pago'#9'F'#9+sTitulo);
    dbgForPag.Selected.Add('cob_imp'#9'12'#9'Cobrado~Importe'#9'F'#9+sTitulo);
    dbgForPag.ApplySelected;
  end;

  TNumericField(DM1.cdsQry31.FieldByName('cob_imp')).DisplayFormat := '##,###,##0.00';
  dbgForPag.ColumnByName('cob_imp').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsQry31, 'SUM(cob_imp)',''))), ffNumber, 15, 2);

end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales



procedure TFEstadisticaFSC.FiltrarMeses;
var
  xSQL : String;
begin
  if rgTipo.ItemIndex=1 then
  begin
      xSQL:='select cobano, cobmes, sum(nvl(moncuoenvfsc,0)) env_imp, count(*) env_con, '
           +   'sum(nvl(MONCUOAPL,0)) cob_imp,  sum( case when nvl(MONCUOAPL,0)>0 then 1 else 0 end ) cob_con, '
           +   'sum(nvl(moncuoenvfsc,0))- sum(nvl(MONCUOAPL,0)) Saldo, '
           +   'to_char(to_date(''01/''||cobmes||''/''||cobano), ''Month'') mesdes '
           +  'from cob319 a '
           + 'where cobano='''+DM1.cdsAcuerdos.fieldByName('COBANO').AsString+''' and nvl(moncuoenvfsc,0)>0 '
           + 'group by cobano, cobmes '
           + 'order by cobano, cobmes desc';

      DM1.cdsUtilidades.Close;
      DM1.cdsUtilidades.DataRequest( xSQL );
      DM1.cdsUtilidades.Open;
  end
  else
  begin
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
      xSQL:='select to_char(fec_apl_fsc,''yyyy'') cobano, to_char(fec_apl_fsc,''mm'') cobmes, '
           +   'to_char(to_date(''01/''||to_char(fec_apl_fsc,''mm'')||''/''||to_char(fec_apl_fsc,''yyyy'')), ''Month'') mesdes, '
           +   'sum(imp_apl_fsc) env_imp, count(*) env_con, sum(impcob) cob_imp, sum(cant) cob_con, '
           +   'sum(imp_apl_fsc)-sum(impcob) saldo, '
           +   'round(sum(nvl(impcob, 0))*100/sum(imp_apl_fsc),2) efectividad '
           +  'from cob_fsc_deuda_fsc_cab a, '
           +     '( select num_deu, sum(nvl(imp_cob_deu,0)) impcob, 1 cant '
           +        ' from cob_fsc_pagos_al_fsc '
           +        'where est_cob_cod not in (''13'',''04'',''99'') '
           +          'and fec_cob_deu <= '''+sHasta+''' '
           +          'and NUM_DEV_EXC IS NULL '
           +        'group by num_deu ) b '
           + 'where fec_apl_fsc>=''01/01/2000'' '
           +  ' and to_char(fec_apl_fsc,''yyyy'') = '''+DM1.cdsAcuerdos.fieldByName('COBANO').AsString+''' '
           +  ' and id_est_fsc not in (''13'',''04'',''99'') '
           +  sTipAso
           +  sCausal
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
           +  ' and a.num_deu=b.num_deu(+) '
           + 'group by to_char(fec_apl_fsc,''yyyy''), to_char(fec_apl_fsc,''mm'') '
           + 'order by cobmes desc';
      DM1.cdsUtilidades.Close;
      DM1.cdsUtilidades.DataRequest( xSQL );
      DM1.cdsUtilidades.Open;
  end;

end;


procedure TFEstadisticaFSC.dbgAnosDblClick(Sender: TObject);
begin

  FiltrarMeses;
  FormatoMeses;

  FiltrarDptos;

  FormatoDptos;

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
  FiltrarFormaPago;
  FormatoFormaPago;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
end;


procedure TFEstadisticaFSC.FiltrarDptos;
var
  xSQL : String;
begin
  if rgTipo.ItemIndex=1 then
  begin
    xSQL:='select cobano, cobmes, b.dptoid, c.dptodes, sum(nvl(moncuoenvfsc,0)) env_imp, count(*) env_con, '
         +   'sum(nvl(MONCUOAPL,0)) cob_imp,  sum( case when nvl(MONCUOAPL,0)>0 then 1 else 0 end ) cob_con, '
         +   'sum(nvl(moncuoenvfsc,0))- sum(nvl(MONCUOAPL,0)) Saldo '
         +  'from cob319 a, apo101 b, apo158 c '
         + 'where cobano='''+DM1.cdsUtilidades.fieldByName('COBANO').AsString+''' '
         +   'and cobmes='''+DM1.cdsUtilidades.fieldByName('COBMES').AsString+''' '
         +   'and nvl(moncuoenvfsc,0)>0 '
         +   'and a.uproid=b.uproid(+) and a.upagoid=b.upagoid(+) and a.useid=b.useid(+) '
         +   'and b.dptoid=c.dptoid(+) '
         + 'group by cobano, cobmes, b.dptoid, c.dptodes '
         + 'order by cobano, cobmes, dptodes';

    DM1.cdsCuotasAnu.Close;
    DM1.cdsCuotasAnu.DataRequest( xSQL );
    DM1.cdsCuotasAnu.Open;
  end
  else
  begin
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
    xSQL:='select to_char(a.fec_apl_fsc,''yyyy'') cobano, to_char(a.fec_apl_fsc,''mm'') cobmes, '
         +  'd.dptodes, '
         +  'to_char(to_date(''01/''||to_char(a.fec_apl_fsc,''mm'')||''/''||to_char(a.fec_apl_fsc,''yyyy'')), ''Month'') mesdes, '
         +  'sum(nvl(a.imp_apl_fsc,0)) env_imp, count(*) env_con, sum(nvl(impcob,0)) cob_imp, sum(nvl(cant,0)) cob_con, '
         +  'sum(nvl(a.imp_apl_fsc,0))-sum(nvl(impcob,0)) saldo, '
         +  'round(sum(nvl(impcob, 0))*100/sum(imp_apl_fsc),2) efectividad '
         + 'from cob_fsc_deuda_fsc_cab a, '
         +   '(select num_deu, sum(nvl(imp_cob_deu,0)) impcob, 1 cant '
         +      'from cob_fsc_pagos_al_fsc '
         +     'where est_cob_cod not in (''13'',''04'',''99'') '
         +       'and fec_cob_deu <= '''+sHasta+''' '
         +       'and NUM_DEV_EXC IS NULL '
         +     'group by num_deu ) b, '
         +   '(select distinct num_deu, dptoid from cob_fsc_deuda_fsc_det ) c, '
         +   'apo158 d '
         + 'where a.fec_apl_fsc>=''01/01/2000'' '
         +   'and to_char(a.fec_apl_fsc,''yyyy'') = '''+DM1.cdsUtilidades.fieldByName('COBANO').AsString+''' '
         +   'and to_char(a.fec_apl_fsc,''mm'') = '''+DM1.cdsUtilidades.fieldByName('COBMES').AsString+''' '
         +   'and id_est_fsc not in (''13'',''04'',''99'') '
         +   sTipAso
         +   sCausal
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
         +   'and a.num_deu=b.num_deu(+) '
         +   'and a.num_deu=c.num_deu(+) '
         +   'and c.dptoid=d.dptoid(+) '
         + 'group by to_char(a.fec_apl_fsc,''yyyy''), to_char(a.fec_apl_fsc,''mm''), d.dptodes '
         + 'order by dptodes';
    DM1.cdsCuotasAnu.Close;
    DM1.cdsCuotasAnu.DataRequest( xSQL );
    DM1.cdsCuotasAnu.Open;
  end;
end;


procedure TFEstadisticaFSC.dbgMesesDblClick(Sender: TObject);
begin
   FiltrarDptos;
   FormatoDptos;
end;

procedure TFEstadisticaFSC.btnSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFEstadisticaFSC.rgTipoClick(Sender: TObject);
begin
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

  dbgMeses.OnRowChanged:=nil;

   if rgTipo.ItemIndex=0 then
   begin
      // Inicio: COB_201823_HPC
      // Se cambia componente un panel por un radio group
      // pnlfecha.Visible := true;
      rgFecha.Visible := True;
      // Fin: COB_201823_HPC
      bbtnConsolida.Visible:=true;
      pnlFiltro.Visible:=True;
      dbgDepa.Height:= 317;
      dbgDepa.Top   := 312;
      Image1.Visible:=True;
      sTitPag := ', ''Por Todas las Forma de Pago'' titulo3 ';
      rgTipAsoClick(self);
      rgCausalClick(self);
      sTitPro := ', ''Recuperación General al '+dtpHasta.Text+''' titulo4 ';
   end
   else
   begin
      // Inicio: COB_201823_HPC
      // Se cambia el panel de fecha por un ragio group
      // pnlfecha.Visible:=False;
      rgFecha.Visible := False;
      // Fin: COB_201823_HPC
      pnlFiltro.Visible:=False;
      bbtnConsolida.Visible:=false;
      sTitAso := ', '' '' TITULO1 ';
      sTitCau := ', '' '' TITULO2 ';
      dbgDepa.Height:= 522;
      dbgDepa.Top   := 107;
      Image1.Visible:=False;
      dbgDepa.BringToFront;
      LimpiaDptos;
      LimpiaMeses;
      LimpiaAnos;
      sTitPag := ', ''Por Solo Planilla'' titulo3 ';
      sTitPro := ', '' '' titulo4 ';
   end;
   dbgMeses.OnRowChanged:=dbgMesesDblClick;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
end;

procedure TFEstadisticaFSC.FormActivate(Sender: TObject);
begin
   dtpHasta.Date := DM1.FechaSys;
   sHasta:=FormatDateTime(wFormatFecha, dtpHasta.DateTime);

   LimpiaAnos;
   LimpiaMeses;
   LimpiaDptos;
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
   LimpiaFormaPago;

   sTipAso:=' and a.tip_aso_origen IN (''DO'',''CE'',''CO'') ';
   sTitPag := ', ''Por Todas las Forma de Pago'' titulo3 ';
   sTitAso:=', ''Tipos de Asociados : Todos''       titulo1 ';
   sTitCau:=', ''Causal : Todas''          titulo2 ';
   sTitPro := ', ''Recuperación General al '+dtpHasta.Text+''' titulo4 ';
   // Inicio: COB_201823_HPC
   // Se pone en invisible panel de incobrabilidad 
   pnlincobrabilidad.Visible := False;
   // Fin: COB_201823_HPC
   BitProcesarClick(Self);
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
end;

procedure TFEstadisticaFSC.dtpHastaExit(Sender: TObject);
begin
   sHasta:=FormatDateTime(wFormatFecha, dtpHasta.DateTime);
end;

procedure TFEstadisticaFSC.btnAExcelClick(Sender: TObject);
Var
   xArchivo: String;
Begin

   If Length(trim(xgrid)) = 0 Then
   Begin
      ShowMessage('Debe seleccionar uno de los cuadros de la pantalla.');
      exit;
   End;

   If XGRID = '1' Then
   Begin
      If DM1.cdsAcuerdos.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      if rgTipo.ItemIndex=0 then
         xArchivo := 'General por Años'
      else
         xArchivo := 'Planilla por Años';
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dbgAnos, xArchivo);
   End;

   If XGRID = '2' Then
   Begin
      If DM1.cdsUtilidades.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      if rgTipo.ItemIndex=0 then
         xArchivo := 'General por Meses'
      else
         xArchivo := 'Planilla por Meses';
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dbgMeses, xArchivo);
   End;

   If XGRID = '3' Then
   Begin
      If DM1.cdsCuotasAnu.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      if rgTipo.ItemIndex=0 then
         xArchivo := 'General por Dptos'
      else
         xArchivo := 'Planilla por Dptos';
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dbgDepa, xArchivo);
   End;

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
   If XGRID = '4' Then
   Begin
      If DM1.cdsQry31.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      if rgTipo.ItemIndex=0 then
         xArchivo := 'General por Forma de Pago'
      else
         xArchivo := 'Planilla por Forma de Pago';
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dbgForPag, xArchivo);
   End;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales


end;

procedure TFEstadisticaFSC.dbgAnosEnter(Sender: TObject);
begin
   If dbgAnos.Focused Then XGRID := '1';

end;

procedure TFEstadisticaFSC.dbgMesesEnter(Sender: TObject);
begin
   If dbgMeses.Focused Then XGRID := '2';

end;

procedure TFEstadisticaFSC.dbgDepaEnter(Sender: TObject);
begin
   If dbgDepa.Focused Then XGRID := '3';
end;

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.rgTipAsoClick(Sender: TObject);
begin
   if rgTipAso.ItemIndex=0 then sTipAso:=' and a.tip_aso_origen IN (''DO'',''CE'',''CO'') ';
   if rgTipAso.ItemIndex=1 then sTipAso:=' and a.tip_aso_origen=''DO'' ';
   if rgTipAso.ItemIndex=2 then sTipAso:=' and a.tip_aso_origen=''CE'' ';
   if rgTipAso.ItemIndex=3 then sTipAso:=' and a.tip_aso_origen=''CO'' ';

   if rgTipAso.ItemIndex=0 then sTitAso:=', ''Tipos de Asociados : Todos''       titulo1 ';
   if rgTipAso.ItemIndex=1 then sTitAso:=', ''Tipos de Asociados : Docentes''    titulo1 ';
   if rgTipAso.ItemIndex=2 then sTitAso:=', ''Tipos de Asociados : Cesantes''    titulo1 ';
   if rgTipAso.ItemIndex=3 then sTitAso:=', ''Tipos de Asociados : Contratados'' titulo1 ';


   LimpiaAnos;
   LimpiaMeses;
   LimpiaDptos;
   LimpiaFormaPago;
end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales


// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.rgCausalClick(Sender: TObject);
begin
   // Inicio: COB_201823_HPC
   // Se pone en visible panel de incobrabilidad
   pnlincobrabilidad.Visible := False;
   // Fin: COB_201823_HPC
   if rgCausal.ItemIndex=0 then sCausal:='';
   if rgCausal.ItemIndex=1 then sCausal:=' and a.forpagid=''23'' ';
   // Inicio: COB_201823_HPC
   // Se controlan los filtros por incobrabilidad y fallecimiento  
   if rgCausal.ItemIndex=2 then
   Begin
      sCausal:=' and a.forpagid=''24'' ';
      pnlincobrabilidad.Visible := True;
      If rgfallecido.ItemIndex = 0 Then sFallecido := '';
      If rgfallecido.ItemIndex = 1 Then sFallecido := ' and nvl(c.fallecido,''N'') = ''S'' ';
      If rgfallecido.ItemIndex = 2 Then sFallecido := ' and nvl(c.fallecido,''N'') <> ''S'' ';
      if rgIncobrabilidad.ItemIndex = 0 Then sIncobrabilidad := '';
//    if rgIncobrabilidad.ItemIndex = 1 Then sIncobrabilidad := ' WHERE TO_CHAR(A.FEC_APL_FSC,''YYYYMM'') > TO_CHAR(ADD_MONTHS(ADD_MONTHS('+QuotedStr(dtpHasta.Text)+',-1),-120),''YYYYMM'')';
      if rgIncobrabilidad.ItemIndex = 1 Then sIncobrabilidad := ' WHERE TO_CHAR(A.FEC_APL_FSC,''YYYYMM'') > TO_CHAR(ADD_MONTHS(ADD_MONTHS('+QuotedStr(DateToStr(DM1.FechaSys))+',-1),-120),''YYYYMM'')';
   End;
   // Fin: COB_201823_HPC
   if rgCausal.ItemIndex=3 then sCausal:=' and a.forpagid=''44'' ';
   if rgCausal.ItemIndex=0 then sTitCau:=', ''Causal : Todas''          titulo2 ';
   if rgCausal.ItemIndex=1 then sTitCau:=', ''Causal : Fallecidos ''    titulo2 ';
   if rgCausal.ItemIndex=2 then sTitCau:=', ''Causal : Incobrabilidad'' titulo2 ';
   if rgCausal.ItemIndex=3 then sTitCau:=', ''Causal : Invalidez''      titulo2 ';

   LimpiaAnos;
   LimpiaMeses;
   LimpiaDptos;
   LimpiaFormaPago;
end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales


// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.dbgForPagEnter(Sender: TObject);
begin
   If dbgForPag.Focused Then XGRID := '4';
end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.LimpiaFormaPago;
var
    xSQL : String;
begin
    xSQL:='select ''    '' forpagabr, ''  '' cobano, 0.00 cob_imp, 0 cob_con '
         +  'from dual';
    DM1.cdsQry31.Close;
    DM1.cdsQry31.DataRequest( xSQL );
    DM1.cdsQry31.Open;
    DM1.cdsQry31.EmptyDataSet;

    FormatoFormaPago;
end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales


// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.bbtnImprimirClick(Sender: TObject);
begin
   if DM1.cdsAcuerdos.RecordCount<=0 then
   begin
      MessageDlg('No existe información para el reporte...!', mtError, [mbOk], 0);
      Exit;
   end;

   DM1.cdsAcuerdos.DisableControls;
   ppdb1.DataSource:=DM1.dsAcuerdos;
   //ppd1.ShowModal;
   ppr1.Print;
   DM1.cdsAcuerdos.EnableControls;
   ppdb1.DataSource:=nil;
end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales


// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.bbtnGraficoClick(Sender: TObject);
begin
   if DM1.cdsAcuerdos.RecordCount<=0 then
   begin
      MessageDlg('No existe información para el Grafico...!', mtError, [mbOk], 0);
      Exit;
   end;

   FGrafFSC := tFGrafFSC.create(self);
   if rgTipo.ItemIndex=0 then FGrafFSC.sTitulo:='Forma de Pago : Todos' else FGrafFSC.sTitulo:='Forma de Pago : Solo Planilla';
   FGrafFSC.ShowModal;
   FGrafFSC.Free;
end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales


// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.bbtnConsolidaClick(Sender: TObject);
var
  xSQL : String;
  // Inicio: COB_201823_HPC
  // Variables para guardar los totales de nuevo reporte de consolidado
  xAplConFecFall, xAplSinFecFall, xAplTot, xAsoConFecFall, xAsoSinFecFall: Double;
  xAsoTot, xCanCreConFecFall, xCanCreSinFecFall, xCanCreTot, xCobConFecFall: Double;
  xCobSinFecFal, xCobTot, xEfeConFecFal, xEfecSinFecFall, xSalConFecFal: Double;
  xSalSinFecFal, xSalTot: Double;
  // Fin: COB_201823_HPC
begin
  if DM1.cdsAcuerdos.RecordCount<=0 then
  begin
      MessageDlg('No existe información para el reporte...!', mtError, [mbOk], 0);
      Exit;
  end;
  // Inicio: COB_201823_HPC
  // Qry de los nuevos reportes
  If (rgCausal.ItemIndex = 2) And (rgIncobrabilidad.ItemIndex = 0) Then
  Begin
     xSql := 'SELECT CASE WHEN A.TIP_ASO_ORIGEN = ''DO'' THEN ''DOCENTE'' WHEN A.TIP_ASO_ORIGEN = ''CE'' THEN ''CESANTE'' WHEN A.TIP_ASO_ORIGEN = ''CO'' THEN ''CONTRATADO'' END TIPO_ASOCIADO,'
     +' CASE WHEN A.FALLECIDO = ''S'' THEN ''FSC. INCOB. CON FECHA DE FALLEC.'' ELSE ''FSC. INCOB. SIN FECHA DE FALLEC.'' END INCOBRABILIDAD,'
     +' SUM(IMP_APL_FSC) IMP_APL_FSC, MAX(CANT_ASOCIADO) CANT_ASOCIADO, SUM(CANT_CRED) CANT_CRED, SUM(NVL(IMP_COB_DEU, 0)) IMP_COB_DEU, TRUNC(SUM(NVL(IMP_COB_DEU, 0)) / SUM(NVL(IMP_APL_FSC, 0)) * 100, 2) EFECTIVIDAD,'
     +' SUM(NVL(IMP_APL_FSC, 0) - NVL(A.IMP_COB_DEU, 0)) IMP_SAL_FSC,SUM(NVL(DEV_AL_FSC_EXC,0)) DEV_AL_FSC_EXC,SUM(NVL(EXC_DEV_AL_ASO,0)) EXC_DEV_AL_ASO,SUM(NVL(EXC_POR_DEV,0)) EXC_POR_DEV_AL_ASO '
     +' FROM (SELECT A.TIP_ASO_ORIGEN, B.FALLECIDO, A.ASOID, A.NUM_DEU, SUM(NVL(A.IMP_APL_FSC, 0)) IMP_APL_FSC,'
     +' SUM(NVL(A.IMP_SAL_FSC, 0)) IMP_SAL_FSC, SUM(NVL(C.IMP_COB_DEU, 0)) IMP_COB_DEU, SUM(NVL(CANT_CRED, 0)) CANT_CRED,SUM(NVL(IMP_EXC_DEU,0))DEV_AL_FSC_EXC,SUM(NVL(IMP_EXC_DEV,0))EXC_DEV_AL_ASO,'
     +' SUM(NVL(IMP_EXC_DEU,0)-NVL(IMP_EXC_DEV,0)) EXC_POR_DEV FROM COB_FSC_DEUDA_FSC_CAB A, APO201 B,'
     +' (SELECT ASOID, NUM_DEU, SUM(NVL(IMP_COB_DEU, 0)) IMP_COB_DEU FROM COB_FSC_PAGOS_AL_FSC WHERE EST_COB_COD NOT IN (''04'', ''13'', ''99'') AND FEC_COB_DEU <='+QuotedStr(dtpHasta.Text)
     +' AND NUM_DEV_EXC IS NULL /*AND TIP_MOV_DEU = ''COB'' */ GROUP BY ASOID, NUM_DEU) C, (SELECT A.ASOID, COUNT(*) CANT_CRED FROM COB_FSC_DEUDA_FSC_CAB A, COB_FSC_DEUDA_FSC_DET B'
     +' WHERE A.FEC_APL_FSC >= ''01/01/2000''  AND A.FORPAGID = ''24'' AND A.ID_EST_FSC NOT IN (''04'', ''13'' ) AND A.TIP_ASO_ORIGEN IN (''DO'', ''CE'', ''CO'')'
     +' AND A.ASOID = B.ASOID AND A.NUM_DEU = B.NUM_DEU GROUP BY A.ASOID) D'
     +' WHERE A.FEC_APL_FSC >= ''01/01/2000'' AND A.FORPAGID = ''24'' AND A.ID_EST_FSC NOT IN (''04'', ''13'') AND A.TIP_ASO_ORIGEN IN (''DO'',''CE'',''CO'')'
     +' AND A.ASOID = B.ASOID(+) AND A.ASOID = C.ASOID(+) AND A.NUM_DEU = C.NUM_DEU(+) AND A.ASOID = D.ASOID(+)'
     +' GROUP BY A.TIP_ASO_ORIGEN, B.FALLECIDO, A.ASOID, A.NUM_DEU) A,'
     +' ( SELECT A.TIP_ASO_ORIGEN, NVL(B.FALLECIDO, ''N'') FALLECIDO, COUNT(*) CANT_ASOCIADO FROM COB_FSC_DEUDA_FSC_CAB A, APO201 B WHERE A.FEC_APL_FSC >= ''01/01/2000'' '
     +' AND A.ID_EST_FSC NOT IN (''04'', ''13'') AND A.TIP_ASO_ORIGEN IN (''DO'', ''CE'', ''CO'') AND A.FORPAGID = ''24'' AND A.ASOID = B.ASOID'
     +' GROUP BY A.TIP_ASO_ORIGEN, NVL(B.FALLECIDO, ''N'')) B WHERE A.TIP_ASO_ORIGEN = B.TIP_ASO_ORIGEN'
     +' AND  NVL(A.FALLECIDO,''N'') = B.FALLECIDO GROUP BY A.TIP_ASO_ORIGEN,'
     +' CASE WHEN A.FALLECIDO = ''S'' THEN ''FSC. INCOB. CON FECHA DE FALLEC.'' ELSE ''FSC. INCOB. SIN FECHA DE FALLEC.'' END ORDER BY A.TIP_ASO_ORIGEN';
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest( xSQL );
     DM1.cdsQry2.Open;
     If DM1.cdsQry2.RecordCount<=0 then
     Begin
        MessageDlg('No existe información para el reporte...!', mtError, [mbOk], 0);
        Exit;
     End;
     xAplConFecFall := 0;
     xAplSinFecFall := 0;
     xAplTot := 0;
     xAsoConFecFall := 0;
     xAsoSinFecFall := 0;
     xAsoTot := 0;
     xCanCreConFecFall := 0;
     xCanCreSinFecFall := 0;
     xCanCreTot := 0;
     xCobConFecFall := 0;
     xCobSinFecFal := 0;
     xCobTot := 0;
     xEfeConFecFal := 0;
     xEfecSinFecFall := 0;
     xSalConFecFal := 0;
     xSalSinFecFal := 0;
     xSalTot := 0;
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.Eof Do
     Begin
        If DM1.cdsQry2.FieldByName('INCOBRABILIDAD').AsString = 'FSC. INCOB. CON FECHA DE FALLEC.' Then
        Begin
           xAplConFecFall    := xAplConFecFall    + DM1.cdsQry2.FieldByName('IMP_APL_FSC').AsFloat;
           xAsoConFecFall    := xAsoConFecFall    + DM1.cdsQry2.FieldByName('CANT_ASOCIADO').AsFloat;
           xCanCreConFecFall := xCanCreConFecFall + DM1.cdsQry2.FieldByName('CANT_CRED').AsFloat;
           xCobConFecFall    := xCobConFecFall    + DM1.cdsQry2.FieldByName('IMP_COB_DEU').AsFloat;
           xSalConFecFal     := xSalConFecFal     + DM1.cdsQry2.FieldByName('IMP_SAL_FSC').AsFloat;
        End;
        If DM1.cdsQry2.FieldByName('INCOBRABILIDAD').AsString = 'FSC. INCOB. SIN FECHA DE FALLEC.' Then
        Begin
           xAplSinFecFall    := xAplSinFecFall    + DM1.cdsQry2.FieldByName('IMP_APL_FSC').AsFloat;
           xAsoSinFecFall    := xAsoSinFecFall    + DM1.cdsQry2.FieldByName('CANT_ASOCIADO').AsFloat;
           xCanCreSinFecFall := xCanCreSinFecFall + DM1.cdsQry2.FieldByName('CANT_CRED').AsFloat;
           xCobSinFecFal     := xCobSinFecFal     + DM1.cdsQry2.FieldByName('IMP_COB_DEU').AsFloat;
           xSalSinFecFal     := xSalSinFecFal     + DM1.cdsQry2.FieldByName('IMP_SAL_FSC').AsFloat;
        End;
        xAplTot           := xAplTot           + DM1.cdsQry2.FieldByName('IMP_APL_FSC').AsFloat;
        xAsoTot           := xAsoTot           + DM1.cdsQry2.FieldByName('CANT_ASOCIADO').AsFloat;
        xCanCreTot        := xCanCreTot        + DM1.cdsQry2.FieldByName('CANT_CRED').AsFloat;
        xCobTot           := xCobTot           + DM1.cdsQry2.FieldByName('IMP_COB_DEU').AsFloat;
        xSalTot           := xSalTot           + DM1.cdsQry2.FieldByName('IMP_SAL_FSC').AsFloat;
        DM1.cdsQry2.Next;
     End;
     xEfeConFecFal     := xEfeConFecFal     + (xCobConFecFall / xAplConFecFall)*100;
     xEfecSinFecFall   := xEfecSinFecFall   + (xCobSinFecFal / xAplSinFecFall)*100;
     pplConIncFecProc.Caption := 'FECHA DE PROCESO GENERADO '+dtpHasta.Text;
     pplImpresopor.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
     pplAplConFecFall.Caption    := FloatToStrF(xAplConFecFall,ffNumber,12,2);
     pplAplSinFecFall.Caption    := FloatToStrF(xAplSinFecFall,ffNumber,12,2);
     pplAplTot.Caption           := FloatToStrF(xAplTot,ffNumber,12,2);
     pplAsoConFecFall.Caption    := FloatToStrF(xAsoConFecFall,ffNumber,12,0);
     pplAsoSinFecFall.Caption    := FloatToStrF(xAsoSinFecFall,ffNumber,12,0);
     pplAsoTot.Caption           := FloatToStrF(xAsoTot,ffNumber,12,0);
     pplCanCreConFecFall.Caption := FloatToStrF(xCanCreConFecFall,ffNumber,12,0);
     pplCanCreSinFecFall.Caption := FloatToStrF(xCanCreSinFecFall,ffNumber,12,0);
     pplCanCreTot.Caption        := FloatToStrF(xCanCreTot,ffNumber,12,0);
     pplCobConFecFall.Caption    := FloatToStrF(xCobConFecFall,ffNumber,12,2);
     pplCobSinFecFal.Caption     := FloatToStrF(xCobSinFecFal,ffNumber,12,2);
     pplCobTot.Caption           := FloatToStrF(xCobTot,ffNumber,12,2);
     pplSalConFecFal.Caption     := FloatToStrF(xSalConFecFal,ffNumber,12,2);
     pplSalSinFecFal.Caption     := FloatToStrF(xSalSinFecFal,ffNumber,12,2);
     pplSalTot.Caption           := FloatToStrF(xSalTot,ffNumber,12,2);
     pplEfeConFecFal.Caption     := FloatToStrF(xEfeConFecFal,ffNumber,12,2);
     pplEfecSinFecFall.Caption   := FloatToStrF(xEfecSinFecFall,ffNumber,12,2);
     If not chkExcel.Checked Then
     Begin
       PprConInc.Print;
       PprConInc.Stop;
     end
     Else
     Begin
       dtgData.DataSource:=DM1.dsQry2;
       DM1.HojaExcel('Consolidado',dtgData.DataSource,dtgData);
     End;
     Exit;
  End;
  If (rgCausal.ItemIndex = 2) And (rgIncobrabilidad.ItemIndex = 1) Then
  Begin
      xSql := 'SELECT SUBSTR(PERIODO,1,4) PERIODO,SUM(NVL(NUMERO_APLICACIONES, 0)) NUMERO_APLICACIONES,SUM(NVL(IMPORTE_APLICADO, 0)) IMPORTE_APLICADO,'
     +' SUM(NVL(IMPORTE_COBRADO, 0)) IMPORTE_COBRADO,CASE WHEN SUM(NVL(IMPORTE_COBRADO, 0)) / SUM(NVL(IMPORTE_APLICADO, 0)) > 1 THEN ROUND(100, 2) ELSE'
     +' ROUND(SUM(NVL(IMPORTE_COBRADO, 0)) / SUM(NVL(IMPORTE_APLICADO, 0)) * 100,2) END EFECTIVIDAD,SUM(NVL(IMP_SAL_FSC, 0)) SALDO FROM (SELECT TO_CHAR(FEC_APL_FSC,''YYYY'') PERIODO,'
     +' COUNT(1) NUMERO_APLICACIONES, SUM(NVL(A.IMP_APL_FSC, 0)) IMPORTE_APLICADO,SUM(nvl(IMPCOB, 0)) IMPORTE_COBRADO,SUM(imp_apl_fsc) - sum(nvl(impcob, 0)) IMP_SAL_FSC '
     +' FROM COB_FSC_DEUDA_FSC_CAB A, '
     +' (select ASOID,num_deu, sum(nvl(imp_cob_deu, 0)) impcob, 1 cant '
     +'  from cob_fsc_pagos_al_fsc '
     +'  where est_cob_cod not in (''13'', ''04'', ''99'') '
     +'    and fec_cob_deu <= '+QuotedStr(dtpHasta.Text)+' and NUM_DEV_EXC IS NULL group by ASOID,num_deu) b '
     +'  WHERE  TO_CHAR(A.FEC_APL_FSC,''YYYYMM'') > TO_CHAR(ADD_MONTHS(ADD_MONTHS(SYSDATE,-1),-120),''YYYYMM'') '
     +'    AND A.ID_EST_FSC NOT IN (''04'', ''13'',''99'') '
     +'    AND A.TIP_ASO_ORIGEN IN (''DO'',''CE'',''CO'') '
     +'    AND A.forpagid = ''24'' '
     +'    AND A.NUM_DEU = B.NUM_DEU(+) '
     +'    AND A.ASOID = B.ASOID(+) '
     +' GROUP BY TO_CHAR(FEC_APL_FSC,''YYYY'') '
     +' ORDER BY TO_CHAR(FEC_APL_FSC,''YYYY''))'
     +' GROUP BY SUBSTR(PERIODO,1,4)'
     +' ORDER BY SUBSTR(PERIODO,1,4) DESC ';
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest( xSQL );
     DM1.cdsQry2.Open;
     If DM1.cdsQry2.RecordCount<=0 then
     Begin
        MessageDlg('No existe información para el reporte...!', mtError, [mbOk], 0);
        Exit;
     End;

     xAplTot := 0;
     xCobTot := 0;
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.Eof Do
     Begin
        xAplTot := xAplTot + DM1.cdsQry2.FieldByName('IMPORTE_APLICADO').AsFloat;
        xCobTot := xCobTot + DM1.cdsQry2.FieldByName('IMPORTE_COBRADO').AsFloat;
        DM1.cdsQry2.Next;
     End;
     pplImpresoporFSCInc.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
     pplFecRecGen.Caption := 'RECUPERACION GENERAL AL '+dtpHasta.Text;
     pplEfectTot.Caption := FloatToStrF((xCobTot/xAplTot)*100,ffNumber,10,2);

      If not chkExcel.Checked Then
      Begin
        pprAplMen10Anos.Print;
         pprAplMen10Anos.Stop;
      end
      Else
      Begin
        dtgData.DataSource:=DM1.dsQry2;
        DM1.HojaExcel('Consolidado',dtgData.DataSource,dtgData);
      End;
      Exit;
  End;
  sTitPro := ', ''Recuperación General al '+dtpHasta.Text+''' titulo4 ';
  // Fin: COB_201823_HPC

  xSQL:='select 1 ord1, ''TODOS'' tip_aso_origen, ''TODOS'' asotipdes,  a.forpagid, c.forpagodes, '
       +    'sum(imp_apl_fsc) env_imp, count(*) env_con, '
       +    'sum(nvl(impcob, 0)) cob_imp, sum(nvl(cant, 0)) cob_con, '
       +    'sum(imp_apl_fsc) - sum(nvl(impcob, 0)) saldo, '
       +    'round(sum(nvl(impcob, 0)) * 100 / sum(imp_apl_fsc), 2) efectividad, '
       +    '''Usuario : '+DM1.wUsuario+''' TITUSU '
       +    sTitPro+ ' '
       +  'from cob_fsc_deuda_fsc_cab a, '
       +     '( '
       +       'select num_deu, sum(nvl(imp_cob_deu, 0)) impcob, 1 cant from cob_fsc_pagos_al_fsc '
       +        'where est_cob_cod not in (''13'', ''04'', ''99'') '
       +          'and fec_cob_deu <= '''+sHasta+''' '
//Inicio HPC_201601_COB
       +        'and NUM_DEV_EXC IS NULL '
//Final HPC_201601_COB  
       +        'group by num_deu '
       +     ') b, COB101 c, APO107 d '
       + 'where fec_apl_fsc >= ''01/01/2000'' and id_est_fsc not in (''13'', ''04'', ''99'') '
       +   'and a.num_deu = b.num_deu(+) '
       +   'and a.tip_aso_origen in (''DO'',''CE'',''CO'') '
       +   'and a.forpagid=c.forpagoid(+) '
       +   'and a.tip_aso_origen=d.asotipid(+) '
       + 'group by a.forpagid, c.forpagodes '
       +'union all '
       +'select case when a.tip_aso_origen=''DO'' then 2 '
       +   '         when a.tip_aso_origen=''CE'' then 3 '
       +   '         when a.tip_aso_origen=''CO'' then 4 '
       +   '    end ord1, '
       +   'a.tip_aso_origen, d.asotipdes,  a.forpagid, c.forpagodes, '
       +   'sum(imp_apl_fsc)    env_imp,  count(*) env_con, '
       +   'sum(nvl(impcob, 0)) cob_imp,  sum(nvl(cant, 0)) cob_con, '
       +   'sum(imp_apl_fsc) - sum(nvl(impcob, 0)) saldo, '
       +   'round(sum(nvl(impcob, 0)) * 100 / sum(imp_apl_fsc), 2) efectividad, '
       +   '''Usuario : '+DM1.wUsuario+''' TITUSU '
       +    sTitPro+ ' '
       +  'from cob_fsc_deuda_fsc_cab a, '
       +   '( '
       +   '  select num_deu, sum(nvl(imp_cob_deu, 0)) impcob, 1 cant from cob_fsc_pagos_al_fsc '
       +   '   where est_cob_cod not in (''13'', ''04'', ''99'') '
       +   '     and fec_cob_deu <= '''+sHasta+''' '
//Inicio HPC_201601_COB
       +        'and NUM_DEV_EXC IS NULL '
//Final HPC_201601_COB
       +   '   group by num_deu '
       +   ') b, COB101 c, APO107 d '
       + 'where fec_apl_fsc >= ''01/01/2000'' and id_est_fsc not in (''13'', ''04'', ''99'') '
       +  '    and a.num_deu = b.num_deu(+) '
       +  '    and a.tip_aso_origen in (''DO'', ''CE'', ''CO'') '
       +  '    and a.forpagid=c.forpagoid(+) '
       +  '    and a.tip_aso_origen=d.asotipid(+) '
       + 'group by a.tip_aso_origen, d.asotipdes, a.forpagid, c.forpagodes '
       + 'order by ord1, forpagodes';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest( xSQL );
  DM1.cdsQry2.Open;
  if DM1.cdsQry2.RecordCount<=0 then
  begin
      MessageDlg('No existe información para el reporte...!', mtError, [mbOk], 0);
      Exit;
  end;
  ppdb2.DataSource:=DM1.dsQry2;
  //ppd2.ShowModal;

//Inicio COB_201823_HPC
If not chkExcel.Checked Then
Begin
  ppr2.Print;
  ppdb2.DataSource:=nil;
end
Else
Begin
  dtgData.DataSource:=DM1.dsQry2;
  DM1.HojaExcel('Consolidado',dtgData.DataSource,dtgData);
End;
//Final COB_201823_HPC

end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales


// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
procedure TFEstadisticaFSC.ppvEfeCalc(Sender: TObject; var Value: Variant);
begin
  //Value:=DM1.FRound( DM1.cdsQry2.FieldByname('cob_imp').AsFloat * 100 / DM1.cdsQry2.FieldByname('env_imp').AsFloat,8,2);
  Value:=DM1.FRound(ppdbCob.Value * 100 / ppdbEnv.Value, 8, 2);
end;
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

//Inicio HPC_201502_COB
procedure TFEstadisticaFSC.btnCarteraFSCClick(Sender: TObject);
VAR Xsql:String;
begin

  xsql:='SELECT ASOID,NUM_DEU,ASOAPENOM,TIP_ASO_ORIGEN,ASOCODMOD,ASODNI,'
        +'CARGO,UPROID,UPAGOID,USEID,CRE_APL_FSC,CRECUOTA,CREFOTORG,CRENUMCUO,CREMTOOTOR,'
        +'TIPCREDES,FEC_APL_FSC,IMP_APL_AL_CRE,IMP_APL_FSC IMP_TOT_APL_FSC,IMP_SAL_FSC,IMP_COB_FSC,IMP_EXC_DEU,'
      //Inicio HPC_201508_COB
      //+'IMP_EXC_APL,FORPAGID,SUBSTR(OBS_FSC,1,50)OBS_FSC,FALLECIDO,'
        +'IMP_EXC_APL,IMP_EXC_DEV,IMP_SAL_EXE,FORPAGID,SUBSTR(OBS_FSC,1,50)OBS_FSC,FALLECIDO,'
      //Final HPC_201508_COB
        +'TO_DATE(SF_COB_FSC_ULTIMO_PAGO(''1'',NUM_DEU),''DD/MM/YYYY'') ULTFECGA,'
        +'SUBSTR(SF_COB_FSC_ULTIMO_PAGO(''2'',NUM_DEU),1,15) ULTFORPAGO,'
        +'TO_NUMBER(SF_COB_FSC_ULTIMO_PAGO(''4'',NUM_DEU),''9999999999.99'') ULTMONPAG '
        +' FROM '
        +'( '
        +' SELECT C.ASOID, A.NUM_DEU, C.ASOAPENOM, A.TIP_ASO_ORIGEN, B.ASOCODMOD, C.ASODNI, '
        +' C.CARGO, C.UPROID, C.UPAGOID, C.USEID, B.CRE_APL_FSC,B.IMP_APL_FSC IMP_APL_AL_CRE, D.CRECUOTA, D.CREFOTORG, D.CRENUMCUO, D.CREMTOOTOR,'
      //Inicio HPC_201508_COB
      // +' D.TIPCREDES,  A.FEC_APL_FSC, A.IMP_APL_FSC, A.IMP_SAL_FSC, A.IMP_COB_FSC, A.IMP_EXC_DEU,'
        +' D.TIPCREDES,  A.FEC_APL_FSC, A.IMP_APL_FSC, A.IMP_SAL_FSC, A.IMP_COB_FSC, A.IMP_EXC_DEU,A.IMP_EXC_DEV,NVL(A.IMP_EXC_DEU,0)-NVL(A.IMP_EXC_DEV,0) IMP_SAL_EXE,'
      //Final HPC_201508_COB
        +' A.IMP_EXC_APL, A.FORPAGID, A.OBS_FSC, C.FALLECIDO '
        +' FROM COB_FSC_DEUDA_FSC_CAB A, '
        +'      COB_FSC_DEUDA_FSC_DET B, '
        +'      APO201 C,'
        +'      CRE301 D  '
        +' WHERE A.NUM_DEU in (select num_deu from cob_fsc_deuda_fsc_cab where to_char(fec_apl_fsc, ''yyyy'')='''+DM1.cdsAcuerdos.fieldByName('COBANO').AsString+''') '
        +  sTipAso
        +  sCausal
        +'  AND   A.ID_EST_FSC not in (''13'',''04'') '
        +'  AND   B.NUM_DEU = A.NUM_DEU '
        +'  AND   C.ASOID = A.ASOID '
        +'  AND   D.ASOID = A.ASOID AND D.CREDID = B.CRE_APL_FSC '
        +') A ';
   Dm1.cdsQry6.Close;
   Dm1.cdsQry6.DataRequest(xSql);
   Dm1.cdsQry6.Open;

   If DM1.cdsQry6.RecordCount=0 Then
   Begin
     ShowMessage('No existe información para exportar');
   End;

   dtgData.DataSource:=DM1.dsQry6;
   DM1.HojaExcel('Creditos Cancelado FSC',dtgData.DataSource,dtgData);

end;
//Final HPC_201502_COB

//Inicio HPC_201521_COB
procedure TFEstadisticaFSC.BtnConsolodadoClick(Sender: TObject);
VAR XSQL : STRING;
begin
//Inicio HPC_201729_COB: Se agrego nuevas columnas al reporte consolidado FSC
//xSQL:='SELECT A.ASOID,A.NUM_DEU,D.ASOAPENOM,A.TIP_ASO_ORIGEN,B.ASOCODMOD,D.ASODNI,B.UPROID,B.UPAGOID,B.USEID,B.CRE_APL_FSC,'+
xSQL:='SELECT A.ASOID,A.NUM_DEU,D.ASOAPENOM,A.TIP_ASO_ORIGEN,B.ASOCODMOD,D.ASODNI,' +
      'D.ASOFECNAC,(CASE WHEN D.USUAUTONP IS NOT NULL THEN ''S'' ELSE ''N'' END) AUTDSCONP,(SELECT AP.REGPENABR FROM APO105 AP WHERE AP.REGPENID = D.REGPENID ) REGPEN, ' +
      'B.UPROID,B.UPAGOID,B.USEID,B.CRE_APL_FSC,'+
//Fin HPC_201729_COB
  //Inicio HPC_201601_COB
  //  'C.CRECUOTA,B.FEC_OTORG,C.CRENUMCUO,C.CREMTOOTOR,C.TIPCREID,B.FEC_APL_FSC,B.IMP_APL_FSC,A.IMP_APL_FSC IMP_TOT_APL_FSC,'+
  //  'A.IMP_SAL_FSC,A.IMP_COB_FSC,A.IMP_EXC_DEU,A.IMP_EXC_DEV,A.FORPAGID,I.FORPAGODES TIPO_FSC,D.FALLECIDO,A.ULT_FEC_COB,'+
        'C.CRECUOTA,B.FEC_OTORG,C.CRENUMCUO,C.CREMTOOTOR,C.TIPCREID,B.FEC_APL_FSC,NVL(B.IMP_APL_FSC,0) IMP_APL_FSC,NVL(A.IMP_APL_FSC,0) IMP_TOT_APL_FSC,'+
       'NVL(A.IMP_APL_FSC,0) -(NVL(A.IMP_COB_FSC,0) - NVL(A.IMP_EXC_DEU,0)) IMP_SAL_FSC,NVL(A.IMP_COB_FSC,0) IMP_COB_FSC,NVL(A.IMP_EXC_DEU,0) IMP_EXC_DEU,'+
       'NVL(A.IMP_EXC_DEV,0) IMP_EXC_DEV,A.FORPAGID,I.FORPAGODES TIPO_FSC,D.FALLECIDO,A.ULT_FEC_COB,'+
  //Final HPC_201601_COB
      'SUBSTR(SF_COB_FSC_ULTIMO_PAGO(''2'',A.NUM_DEU),1,15) ULTFORPAG,TO_NUMBER(SF_COB_FSC_ULTIMO_PAGO(''4'',A.NUM_DEU),''999,999,999.99'') ULTMONPAG,'+
      'A.IMP_COB_FSC MONT_ACU_PAG,SUBSTR(SF_COB_FSC_ULTIMO_PAGO(''5'',A.NUM_DEU),1,6) PER_DESC,B.DPTOID,DP.DPTODES,'+
      'CASE WHEN H.FEC_LIQ_BEN IS NULL THEN ''S'' ELSE ''N'' END CTAIND,'+
      'CASE WHEN INTE.ASOID IS NOT NULL THEN ''S'' ELSE ''N'' END INTERINO,H.FEC_LIQ_BEN,'+
      'F.CFCDES_F CLFACT,DP_DOM.DPTODES DOM_DPT,PR_DOM.CIUDDES DOM_PROV,DS_DOM.ZIPDES DOM_DIST,D.ASODIR,D.CENEDUID CEN_EDU_ID,'+
      'E.NOMCENEDU NOM_CEN_EDU,DP_CED.DPTODES CEN_DPTO '+
      'FROM COB_FSC_DEUDA_FSC_CAB A,'+
      'COB_FSC_DEUDA_FSC_DET B,'+
      'CRE301 C,'+
      'APO201 D,'+
      'APO158 DP_DOM,'+
      'APO123 PR_DOM,'+
      'APO122 DS_DOM,'+
      'ASO_CEN_EDU E,'+
      'APO158 DP_CED,'+
//Inicio HPC_201729_COB: Se agrego nuevas columnas al reporte consolidado FSC
      //'(SELECT ASOID, CFCDES_F '+
      //' FROM (Select A.ASOID, B.CFCDES_F, '+
      //'              DENSE_RANK() OVER(PARTITION BY A.ASOID ORDER BY A.ASOID, B.PERIODO DESC) DNRK '+
      //'        From (SELECT DISTINCT ASOID FROM COB_FSC_DEUDA_FSC_CAB) A, CFC000 B'+
      //'        Where A.ASOID = B.ASOID) '+
      //' WHERE DNRK = 1) F,'+
      '(SELECT D.ASOID, D.CFCDES_F '+
      ' FROM CFC000 D, '+
      '     (SELECT A.ASOID, MAX(A.PERIODO) PERIODO '+
      '      FROM CFC000 A '+
      '      WHERE A.ASOID IN (SELECT DISTINCT ASOID FROM COB_FSC_DEUDA_FSC_CAB) '+
      '      GROUP BY A.ASOID '+
      '     ) E '+
      ' WHERE D.ASOID = E.ASOID '+
      ' AND D.PERIODO = E.PERIODO) F,'+
//Fin HPC_201729_COB
      '(SELECT DISTINCT ASOID,FEC_LIQ_BEN  FROM '+
      ' (SELECT A.ASOID,TRUNC(C.PVSLFECBE) FEC_LIQ_BEN ,'+
      '         DENSE_RANK() OVER(PARTITION BY A.ASOID ORDER BY A.ASOID,TRUNC(NVL(C.PVSLFECBE,TO_DATE(''01/01/1900'',''DD/MM/YYYY''))) DESC) DNRK '+
      '  FROM (SELECT DISTINCT ASOID FROM COB_FSC_DEUDA_FSC_CAB) A,'+
      '        PVS301 B,PVS306 C '+
      '  WHERE B.ASOID=A.ASOID AND B.PVSESTADO NOT IN (''04'',''13'') AND C.ASOID(+)=B.ASOID AND C.PVSLBENNR(+)=B.PVSLBENNR AND '+
      '        C.PVSESTLIQ(+) NOT IN (''04'',''13'')) '+
      ' WHERE DNRK = 1) H,'+
      ' COB101 I,'+
      ' APO158 DP,'+
  //Inicio HPC_201601_COB
  //  'DB2ADMIN.ASO_CES_INTERINOS INTE '+
      '(select DISTINCT asoid from DB2ADMIN.ASO_CES_INTERINOS) INTE '+
  //Final HPC_201601_COB
      'WHERE A.ID_EST_FSC IN (''02'',''27'') AND A.ASOID=B.ASOID AND A.NUM_DEU=B.NUM_DEU AND '+
      'C.ASOID(+)=B.ASOID AND C.CREDID(+)=B.CRE_APL_FSC AND C.CREESTID(+)<>''13'' AND '+
      'D.ASOID(+)=A.ASOID AND '+
      'DP_DOM.DPTOID(+)=SUBSTR(D.ZIPID,1,2) AND '+
      'PR_DOM.CIUDID(+)=SUBSTR(D.ZIPID,1,4) AND '+
      'DS_DOM.ZIPID(+)=D.ZIPID AND '+
      'E.CENEDUID(+)=D.CENEDUID AND '+
      'DP_CED.DPTOID(+)=SUBSTR(E.UBIGEO_DIR,1,2) AND '+
      'F.ASOID(+) = A.ASOID AND '+
      'H.ASOID(+) = A.ASOID  AND '+
      'I.FORPAGOID(+) = A.FORPAGID  AND '+
      'DP.DPTOID(+)=B.DPTOID AND '+
      'INTE.ASOID(+)=A.ASOID ';
      Screen.Cursor := crHourGlass;
      Dm1.cdsQry6.Close;
      Dm1.cdsQry6.DataRequest(xSql);
      Dm1.cdsQry6.Open;
      Screen.Cursor := crDefault;

      If DM1.cdsQry6.RecordCount=0 Then
      Begin
        ShowMessage('No existe información para exportar');
      End;

      dtgData.DataSource:=DM1.dsQry6;
      DM1.HojaExcel('Créditos Cancelado FSC',dtgData.DataSource,dtgData);
//Final HPC_201521_COB

end;

// Inicio: COB_201823_HPC
// Procedimiento que pinta total por tipo de asociado en reporte de consolidado 
procedure TFEstadisticaFSC.ppDBText26Print(Sender: TObject);
begin
   pplTotAso.Caption := 'TOTAL '+Trim(DM1.cdsQry2.FieldByName('TIPO_ASOCIADO').AsString)+' '; 
end;
// Fin: COB_201823_HPC

end.
