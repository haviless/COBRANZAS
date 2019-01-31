Unit COB919;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB919
// Formulario                    : fCalfCtaxCob
// Fecha de Creación             :
// Autor                         : Área de Desarrollo DM
// Objetivo                      : Cuentas Por Cobrar / Calificación de Cartera
//
// Actualizaciones:
// HPC_201402_COB                :  Modificación por Cambio de Socket
// SPP_201402_COB                :  Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201505_COB                :  Modificar por el redondeo
// HPC_201517_COB                :  Separar refinaciados de ampliados en los reportes de uso interno
// HPC_201703_COB                :  Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
// HPC_201734_COB                :  Añadir Campos de Creditos Refinanciados

//Inicio HPC_201713_COB          :  alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados


Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Mask, wwdbedit, Wwdbspin, Excel2000,
   OleServer, Grids, Wwdbigrd, Wwdbgrid, DB, DBGrids, ExtCtrls, wwdblook,
   ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
   // Inicio: HPP_201006_COB por JDCRUZ
   ppComm, ppRelatv, ppDBPipe, ppVar, Wwdbdlg, ppEndUsr, ppParameter, TXComp,
// Inicio HPC_201517_COB                :  Separar refinaciados de ampliados en los reportes de uso interno
   ComCtrls, jpeg;
// Fin HPC_201517_COB                :  Separar refinaciados de ampliados en los reportes de uso interno
   // Fin: HPP_201006_COB

Type
// Inicio HPC_201517_COB                :  Separar refinaciados de ampliados en los reportes de uso interno
   TfCalfCtaxCob = Class(TForm)
      grpCtaCob: TGroupBox;
      grbParametros: TGroupBox;
      BitProcesar: TBitBtn;
      dbsAnoIni: TwwDBSpinEdit;
      dbsMesIni: TwwDBSpinEdit;
      lblNomMes: TLabel;
      dbgCtaCob: TwwDBGrid;
      BitResCxc: TBitBtn;
      ppDBDataCxc: TppDBPipeline;
      ppRepResCxC: TppReport;
      ppHeaderBand6: TppHeaderBand;
      ppDetailBand6: TppDetailBand;
      ppDBText78: TppDBText;
      ppDBText79: TppDBText;
      ppDBText80: TppDBText;
      ppDBText81: TppDBText;
      ppFooterBand3: TppFooterBand;
      ppSummaryBand5: TppSummaryBand;
      ppLabel149: TppLabel;
      ppDBCalc84: TppDBCalc;
      ppDBCalc85: TppDBCalc;
      ppLine31: TppLine;
      ppLine32: TppLine;
      ppLblTitulo1: TppLabel;
      ppLabel141: TppLabel;
      ppLabel142: TppLabel;
      ppLabel143: TppLabel;
      ppLabel144: TppLabel;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppSystemVariable4: TppSystemVariable;
      ppLabel146: TppLabel;
      ppLabel147: TppLabel;
      ppLabel148: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppDBResClfCar: TppDBPipeline;
      BitMorosidad: TBitBtn;
      ppRepMorosidad: TppReport;
      ppHeaderBand2: TppHeaderBand;
      pplblTitMor: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppSystemVariable7: TppSystemVariable;
      ppSystemVariable8: TppSystemVariable;
      ppSystemVariable9: TppSystemVariable;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppSummaryBand2: TppSummaryBand;
      ppLabel28: TppLabel;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppDBText1: TppDBText;
      ppDBText13: TppDBText;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppDBCalc10: TppDBCalc;
      ppDBCalc11: TppDBCalc;
      ppLabel35: TppLabel;
      ppDBMorosidad: TppDBPipeline;
      ppLabel13: TppLabel;
      BitIngEgresos: TBitBtn;
      DbConsolidado: TppDBPipeline;
      Repconsolidado: TppReport;
      ppHeaderBand27: TppHeaderBand;
      Titulo: TppLabel;
      ppLabel547: TppLabel;
      ppLabel548: TppLabel;
      ppLabel549: TppLabel;
      ppLabel557: TppLabel;
      ppLabel558: TppLabel;
      ppSystemVariable50: TppSystemVariable;
      ppSystemVariable51: TppSystemVariable;
      ppSystemVariable52: TppSystemVariable;
      ppLabel560: TppLabel;
      ppLabel561: TppLabel;
      ppLabel562: TppLabel;
      ppLabel565: TppLabel;
      ppLabel566: TppLabel;
      ppDetailBand29: TppDetailBand;
      ppDBText228: TppDBText;
      ppDBText233: TppDBText;
      ppFooterBand22: TppFooterBand;
      ppSummaryBand27: TppSummaryBand;
      ppGroup37: TppGroup;
      ppGroupHeaderBand37: TppGroupHeaderBand;
      ppGroupFooterBand37: TppGroupFooterBand;
      ppShape12: TppShape;
      ppLabel564: TppLabel;
      ppDBCalc207: TppDBCalc;
      ppShape13: TppShape;
      ppDBText240: TppDBText;
      chkCtb: TCheckBox;
      ppRepResCxC_C: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppLblTitulo1_C: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppSystemVariable10: TppSystemVariable;
      ppSystemVariable11: TppSystemVariable;
      ppSystemVariable12: TppSystemVariable;
      ppLabel64: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLabel67: TppLabel;
      ppLabel68: TppLabel;
      ppLabel69: TppLabel;
      ppLabel73: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand3: TppSummaryBand;
      ppLabel74: TppLabel;
      ppDBCalc13: TppDBCalc;
      ppDBCalc15: TppDBCalc;
      ppLine5: TppLine;
      ppLine6: TppLine;
      ppLabel59: TppLabel;
      RepCons: TppReport;
      ppHeaderBand4: TppHeaderBand;
      LblTitulo: TppLabel;
      ppLabel84: TppLabel;
      ppLabel85: TppLabel;
      ppLabel86: TppLabel;
      ppLabel87: TppLabel;
      ppSystemVariable13: TppSystemVariable;
      ppSystemVariable14: TppSystemVariable;
      ppSystemVariable15: TppSystemVariable;
      ppLabel88: TppLabel;
      ppLabel89: TppLabel;
      ppLabel90: TppLabel;
      ppLine13: TppLine;
      ppLine14: TppLine;
      ppLabel91: TppLabel;
      ppLabel92: TppLabel;
      ppLabel93: TppLabel;
      ppDetailBand4: TppDetailBand;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppFooterBand5: TppFooterBand;
      ppSummaryBand4: TppSummaryBand;
      ppLabel94: TppLabel;
      ppLine15: TppLine;
      ppLine16: TppLine;
      DataCons: TppDBPipeline;
      ppDBText12: TppDBText;
      ppDBText11: TppDBText;
      ppDBText28: TppDBText;
      lblIndMor: TppLabel;
      lblrPorMor: TppLabel;
      lblIndPro: TppLabel;
      lblrPorPro: TppLabel;
      ppLabel82: TppLabel;
      ppLabel95: TppLabel;
      ppLabel96: TppLabel;
      ppLabel97: TppLabel;
      BitCndCnt: TBitBtn;
      RpCndCnt: TppReport;
      ppHeaderBand5: TppHeaderBand;
      TitCndCnt: TppLabel;
      ppLabel55: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel98: TppLabel;
      ppSystemVariable16: TppSystemVariable;
      ppSystemVariable17: TppSystemVariable;
      ppSystemVariable18: TppSystemVariable;
      ppLabel99: TppLabel;
      ppLabel100: TppLabel;
      ppLabel101: TppLabel;
      ppLine17: TppLine;
      ppLine18: TppLine;
      ppLabel102: TppLabel;
      ppLabel103: TppLabel;
      ppLabel104: TppLabel;
      ppLabel105: TppLabel;
      ppLabel106: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppDBText20: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppFooterBand6: TppFooterBand;
      ppSummaryBand6: TppSummaryBand;
      ppLabel107: TppLabel;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppLine19: TppLine;
      ppLine20: TppLine;
      DbCndCnt: TppDBPipeline;
      ppDBText19: TppDBText;
      ppDBCalc18: TppDBCalc;
      ppDBCalc19: TppDBCalc;
      ppDBText31: TppDBText;
      ppLabel54: TppLabel;
      ppLabel108: TppLabel;
      ppLabel109: TppLabel;
      lblIndice0: TppLabel;
      ppLabel111: TppLabel;
      ppLabel112: TppLabel;
      ppLine21: TppLine;
      ppLabel113: TppLabel;
      ppLabel114: TppLabel;
      ppLabel115: TppLabel;
      ppLabel116: TppLabel;
      ppLabel117: TppLabel;
      ppLine22: TppLine;
      ppLabel118: TppLabel;
      lblProv0: TppLabel;
      ppLabel120: TppLabel;
      ppLabel121: TppLabel;
      lblPorMor0: TppLabel;
      lblPorPro0: TppLabel;
      DbIntDev: TppDBPipeline;
      RepIntDev: TppReport;
      ppHeaderBand7: TppHeaderBand;
      ppShape4: TppShape;
      ppShape14: TppShape;
      ppShape15: TppShape;
      ppShape16: TppShape;
      ppShape17: TppShape;
      ppShape18: TppShape;
      ppLabel110: TppLabel;
      ppLabel119: TppLabel;
      ppLabel122: TppLabel;
      ppLabel123: TppLabel;
      ppLabel124: TppLabel;
      ppSystemVariable19: TppSystemVariable;
      ppSystemVariable20: TppSystemVariable;
      ppSystemVariable21: TppSystemVariable;
      ppLabel125: TppLabel;
      ppLabel126: TppLabel;
      ppLabel127: TppLabel;
      ppLbltit01: TppLabel;
      ppLabel129: TppLabel;
      ppLabel130: TppLabel;
      ppLabel131: TppLabel;
      ppLabel132: TppLabel;
      ppLabel134: TppLabel;
      ppShape19: TppShape;
      ppLabel135: TppLabel;
      ppLabel136: TppLabel;
      ppLabel145: TppLabel;
      ppLabel150: TppLabel;
      ppLabel152: TppLabel;
      ppLabel153: TppLabel;
      ppLabel154: TppLabel;
      ppLabel155: TppLabel;
      ppLabel156: TppLabel;
      ppLabel157: TppLabel;
      ppLabel158: TppLabel;
      ppLabel159: TppLabel;
      ppLabel160: TppLabel;
      ppLabel162: TppLabel;
      ppLabel163: TppLabel;
      ppDetailBand7: TppDetailBand;
      ppDBText32: TppDBText;
      ppDBText33: TppDBText;
      ppDBText35: TppDBText;
      ppDBText37: TppDBText;
      ppDBText38: TppDBText;
      ppDBText40: TppDBText;
      ppDBText43: TppDBText;
      ppFooterBand7: TppFooterBand;
      ppSummaryBand7: TppSummaryBand;
      ppShape20: TppShape;
      ppDBCalc20: TppDBCalc;
      ppDBCalc22: TppDBCalc;
      ppDBCalc24: TppDBCalc;
      ppDBCalc25: TppDBCalc;
      ppDBCalc26: TppDBCalc;
      ppDBCalc28: TppDBCalc;
      ppLabel164: TppLabel;
      ppRepClfcar01: TppReport;
      ppHeaderBand8: TppHeaderBand;
      ppShape23: TppShape;
      ppShape24: TppShape;
      ppShape25: TppShape;
      ppShape26: TppShape;
      ppLabel128: TppLabel;
      ppLabel133: TppLabel;
      ppLabel137: TppLabel;
      ppLabel138: TppLabel;
      ppLabel139: TppLabel;
      ppSystemVariable22: TppSystemVariable;
      ppSystemVariable23: TppSystemVariable;
      ppSystemVariable24: TppSystemVariable;
      ppLabel140: TppLabel;
      ppLabel151: TppLabel;
      ppLabel161: TppLabel;
      ppLbltit01x: TppLabel;
      ppLabel166: TppLabel;
      ppLabel167: TppLabel;
      ppLabel168: TppLabel;
      ppLabel169: TppLabel;
      ppLabel170: TppLabel;
      ppLabel171: TppLabel;
      ppLabel188: TppLabel;
      ppLabel189: TppLabel;
      ppLabel190: TppLabel;
      lblOfiDesx: TppLabel;
      ppDetailBand8: TppDetailBand;
      ppDBText34: TppDBText;
      ppDBText36: TppDBText;
      ppDBText39: TppDBText;
      ppDBText41: TppDBText;
      ppDBText42: TppDBText;
      ppDBText44: TppDBText;
      ppDBText45: TppDBText;
      ppDBText46: TppDBText;
      ppDBText48: TppDBText;
      ppFooterBand8: TppFooterBand;
      ppSummaryBand8: TppSummaryBand;
      ppShape28: TppShape;
      ppDBCalc21: TppDBCalc;
      ppDBCalc23: TppDBCalc;
      ppDBCalc27: TppDBCalc;
      ppDBCalc29: TppDBCalc;
      ppDBCalc30: TppDBCalc;
      ppDBCalc31: TppDBCalc;
      ppLabel193: TppLabel;
      IndMorCob: TppLabel;
      ppLabel195: TppLabel;
      ppLabel196: TppLabel;
      ppLine23: TppLine;
      ppLabel197: TppLabel;
      ppLabel198: TppLabel;
      ppLabel204: TppLabel;
      PorMorCob: TppLabel;
      ppDBResClfCar01: TppDBPipeline;
      ppDBCalc32: TppDBCalc;
      ppDBCalc33: TppDBCalc;
      ppShape29: TppShape;
      ppLabel165: TppLabel;
      ppLabel172: TppLabel;
      ppLabel173: TppLabel;
      ppLabel174: TppLabel;
      ppLabel175: TppLabel;
      ppLabel176: TppLabel;
      RepIndMor: TppReport;
      ppHeaderBand9: TppHeaderBand;
      ppLabel177: TppLabel;
      ppLabel178: TppLabel;
      TituloInd01: TppLabel;
      ppLabel180: TppLabel;
      ppLabel181: TppLabel;
      ppLabel182: TppLabel;
      ppLabel183: TppLabel;
      ppLabel184: TppLabel;
      ppLabel185: TppLabel;
      ppSystemVariable25: TppSystemVariable;
      ppSystemVariable26: TppSystemVariable;
      ppSystemVariable27: TppSystemVariable;
      ppLabel186: TppLabel;
      ppLabel187: TppLabel;
      ppLabel191: TppLabel;
      ppLine25: TppLine;
      ppLine26: TppLine;
      ppDetailBand9: TppDetailBand;
      ppDBText47: TppDBText;
      ppDBText49: TppDBText;
      ppDBText50: TppDBText;
      ppFooterBand9: TppFooterBand;
      ppSummaryBand9: TppSummaryBand;
      ppLabel192: TppLabel;
      ppLabel199: TppLabel;
      ppLine27: TppLine;
      ppLine28: TppLine;
      DataIndMor: TppDBPipeline;
      IndMorCob01: TppLabel;
      PorMorCob01: TppLabel;
      ppLabel179: TppLabel;
      grpCalCar: TGroupBox;

// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
{
      Shape1: TShape;
}
// fin: HPP_201006_COB
      dtgData: TDBGrid;
      dtgClfCar: TwwDBGrid;
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
{
      BitResClfCar: TBitBtn;
}
// Fin: HPP_201006_COB
      BitSalir: TBitBtn;
      pnlOficinas: TPanel;
      Panel1: TPanel;
      EdtOfiDes: TEdit;
      DBLkOfiDes: TwwDBLookupCombo;
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
{
      BitConOfi: TBitBtn;
}
// fin: HPP_201006_COB
      BitIntDev: TBitBtn;
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
{
      chkCob: TCheckBox;
}
// fin: HPP_201006_COB
      rgTipoResumen: TRadioGroup;
      pnlUgel: TPanel;
      Panel3: TPanel;
      EdtUseNom: TEdit;
      dblcdUPro: TwwDBLookupComboDlg;
      dblcdUPago: TwwDBLookupComboDlg;
      dblcdUse: TwwDBLookupComboDlg;
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
{
      BitConUge: TBitBtn;
}
// fin: HPP_201006_COB
      DataIndMor2: TppDBPipeline;
      RepIndMor2: TppReport;
      ppParameterList1: TppParameterList;
      ppHeaderBand10: TppHeaderBand;
      ppLabel203: TppLabel;
      ppLabel205: TppLabel;
      TituloInd02: TppLabel;
      ppLabel207: TppLabel;
      ppLabel208: TppLabel;
      ppLabel209: TppLabel;
      ppLabel210: TppLabel;
      ppLabel211: TppLabel;
      ppLabel212: TppLabel;
      ppSystemVariable28: TppSystemVariable;
      ppSystemVariable29: TppSystemVariable;
      ppSystemVariable30: TppSystemVariable;
      ppLabel213: TppLabel;
      ppLabel214: TppLabel;
      ppLabel215: TppLabel;
      ppLine24: TppLine;
      ppLine29: TppLine;
      ppLabel216: TppLabel;
      ppDetailBand10: TppDetailBand;
      ppDBText53: TppDBText;
      ppDBText54: TppDBText;
      ppDBText55: TppDBText;
      ppFooterBand10: TppFooterBand;
      ppSummaryBand10: TppSummaryBand;
      ppLabel217: TppLabel;
      ppLabel218: TppLabel;
      ppLine30: TppLine;
      ppLine33: TppLine;
      IndMorCob02: TppLabel;
      PorMorCob02: TppLabel;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText56: TppDBText;
      ppGroupFooterBand1: TppGroupFooterBand;
      DataCons02: TppDBPipeline;
      RepCons02: TppReport;
      ppParameterList2: TppParameterList;
      ppHeaderBand11: TppHeaderBand;
      LblTitulo3b: TppLabel;
      ppLabel221: TppLabel;
      ppLabel222: TppLabel;
      ppLabel223: TppLabel;
      ppLabel224: TppLabel;
      ppSystemVariable31: TppSystemVariable;
      ppSystemVariable32: TppSystemVariable;
      ppSystemVariable33: TppSystemVariable;
      ppLabel225: TppLabel;
      ppLabel226: TppLabel;
      ppLabel227: TppLabel;
      ppLine34: TppLine;
      ppLine35: TppLine;
      ppLabel228: TppLabel;
      ppLabel229: TppLabel;
      ppLabel230: TppLabel;
      ppLabel231: TppLabel;
      ppLabel232: TppLabel;
      ppLabel233: TppLabel;
      ppLabel234: TppLabel;
      ppDetailBand11: TppDetailBand;
      ppDBText57: TppDBText;
      ppDBText58: TppDBText;
      ppDBText59: TppDBText;
      ppDBText60: TppDBText;
      ppDBText61: TppDBText;
      ppFooterBand11: TppFooterBand;
      ppLabel235: TppLabel;
      ppLine36: TppLine;
      ppLine37: TppLine;
      lblIndMor3b: TppLabel;
      lblrPorMor3b: TppLabel;
      lblIndPro3b: TppLabel;
      lblrPorPro3b: TppLabel;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppDBText62: TppDBText;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppSummaryBand11: TppSummaryBand;
      rgTipAso: TRadioGroup;
      ppltipoaso: TppLabel;
      pplTipAsoRepIndMor: TppLabel;
      pplTipAsoRepCons: TppLabel;
      pplAsotipidIndMor2: TppLabel;
      pplasotipidRepCons02: TppLabel;
// Inicio: HPP_201006_COB
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
{
      ExtraOptions1: TExtraOptions;
}

      pcTipoReporte: TPageControl;
      tsGeneral: TTabSheet;
      tsInterno: TTabSheet;
      Panel2: TPanel;
      BitConUge: TBitBtn;
      BitResClfCar: TBitBtn;
      BitConOfi: TBitBtn;
      Panel4: TPanel;
      BitConUge_Interno: TBitBtn;
      BitConOfi_Interno: TBitBtn;
      BitResClfCar_Interno: TBitBtn;
      tsRefInterno: TTabSheet;
      Panel5: TPanel;
      BitResClfCar_RefInterno: TBitBtn;
      BitConOfi_RefInterno: TBitBtn;
      BitConUge_RefInterno: TBitBtn;
    btnAExcelRef: TBitBtn;
    SaveDialog1: TSaveDialog;
    DBGrid1: TDBGrid;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    btnResClfCar_AmpInterno: TBitBtn;
    btnConOfi_AmpInterno: TBitBtn;
    btnConUge_AmpInterno: TBitBtn;
    btnAExcelAmp: TBitBtn;
    pprRepConsAmp: TppReport;
    ppHeaderBand12: TppHeaderBand;
    lblTituloAmp: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppSystemVariable34: TppSystemVariable;
    ppSystemVariable35: TppSystemVariable;
    ppSystemVariable36: TppSystemVariable;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    pplTipAsoRepConsAmp: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppFooterBand12: TppFooterBand;
    ppSummaryBand12: TppSummaryBand;
    ppLabel251: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    lblIndMorAmp: TppLabel;
    lblrPorMorAmp: TppLabel;
    lblIndProAmp: TppLabel;
    lblrPorProAmp: TppLabel;
    ppDBDataConsAmp: TppDBPipeline;
    ppImage1: TppImage;
    ppImage2: TppImage;
    pprRepCons02Amp: TppReport;
    ppHeaderBand13: TppHeaderBand;
    LblTitulo3bAmp: TppLabel;
    ppLabel219: TppLabel;
    ppLabel250: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppSystemVariable37: TppSystemVariable;
    ppSystemVariable38: TppSystemVariable;
    ppSystemVariable39: TppSystemVariable;
    ppLabel254: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    pplasotipidRepCons02Amp: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppFooterBand13: TppFooterBand;
    ppSummaryBand13: TppSummaryBand;
    ppLabel265: TppLabel;
    ppLine44: TppLine;
    ppLine45: TppLine;
    lblIndMor3bamp: TppLabel;
    lblrPorMor3bamp: TppLabel;
    lblIndPro3bamp: TppLabel;
    lblrPorPro3bamp: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText73: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppParameterList3: TppParameterList;
    ppdbDataCons02Amp: TppDBPipeline;
    ppImage3: TppImage;
    ppImage4: TppImage;
    ppRepClfcar: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape5: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLbltit: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppShape6: TppShape;
    ppLabel32: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel58: TppLabel;
    lblOfiDes: TppLabel;
    ppShape10: TppShape;
    ppShape21: TppShape;
    ppLabel194: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    pplTipAso: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape11: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLabel4: TppLabel;
    lblIndice: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine11: TppLine;
    ppLabel72: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLine12: TppLine;
    ppLabel79: TppLabel;
    lblProv: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    lblPorMor: TppLabel;
    lblPorPro: TppLabel;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppImage5: TppImage;
// fin: HPP_201009_COB

// Fin HPC_201517_COB                :  Separar refinaciados de ampliados en los reportes de uso interno
      Procedure FormActivate(Sender: TObject);
      Procedure BitProcesarClick(Sender: TObject);
      Procedure BitResCxcClick(Sender: TObject);
      Procedure BitResClfCarClick(Sender: TObject);
      Procedure BitMorosidadClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dtgClfCarDblClick(Sender: TObject);
      Procedure dbgCtaCobDblClick(Sender: TObject);
      Procedure BitIngEgresosClick(Sender: TObject);
      Procedure DBLkOfiDesChange(Sender: TObject);
      Procedure BitConOfiClick(Sender: TObject);
      Procedure BitCndCntClick(Sender: TObject);
      Procedure BitIntDevClick(Sender: TObject);
      Procedure rgTipoResumenClick(Sender: TObject);
      Procedure dblcdUseChange(Sender: TObject);
      Procedure dblcdUPagoChange(Sender: TObject);
      Procedure dblcdUProChange(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure BitConUgeClick(Sender: TObject);
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
      Procedure BitResClfCar_InternoClick(Sender: TObject);
      Procedure BitConOfi_InternoClick(Sender: TObject);
      Procedure BitConUge_InternoClick(Sender: TObject);
      Procedure BitConUge_RefInternoClick(Sender: TObject);
      Procedure BitResClfCar_RefInternoClick(Sender: TObject);
      Procedure BitConOfi_RefInternoClick(Sender: TObject);
    procedure dbsMesIniExit(Sender: TObject);
    procedure dbsMesIniKeyPress(Sender: TObject; var Key: Char);
// fin: HPP_201006_COB

// inicio: HPP_201009_COB - SAR-2010-0141
// Inicio HPC_201517_COB                :  Separar refinaciados de ampliados en los reportes de uso interno
    procedure btnAExcelRefClick(Sender: TObject);
    procedure btnConOfi_AmpInternoClick(Sender: TObject);
    procedure btnConUge_AmpInternoClick(Sender: TObject);
    procedure btnResClfCar_AmpInternoClick(Sender: TObject);
    procedure btnAExcelAmpClick(Sender: TObject);
// Fin HPC_201517_COB                :  Separar refinaciados de ampliados en los reportes de uso interno

// fin: HPP_201009_COB
   Private
    { Private declarations }
      Procedure CrgGridCtaCob;
      Procedure CrgGridClfCar;
      Procedure LimpiaGrid;
      Procedure filtrarUpago(IUproid: String);
      Procedure filtrarUSE(IUProId, IUPagoId: String);
   Public
    { Public declarations }
   End;

Var
   fCalfCtaxCob: TfCalfCtaxCob;
// Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
   xsFecIniRep: String;
// Fin    HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
Implementation

Uses COBDM1, COB933, COB934;

{$R *.dfm}

Procedure TfCalfCtaxCob.FormActivate(Sender: TObject);
Begin
   dbsAnoIni.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
   dbsMesIni.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2));
   lblNomMes.Caption := DM1.DesMes(StrToInt(dbsMesIni.Text), 'N');
   LimpiaGrid;
   pnlOficinas.Visible := false;
   pnlUgel.Visible := false;
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
   pcTipoReporte.TabIndex := 0;
// fin: HPP_201006_COB
// Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
   xsFecIniRep:='01/10/2008';
// Fin HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
End;

Procedure TfCalfCtaxCob.BitProcesarClick(Sender: TObject);
Begin
   Try
      CrgGridCtaCob;
      CrgGridClfCar;
      Screen.Cursor := crDefault;
   Except
      DM1.cdsMGrupo.Close;
      DM1.cdsModelo.Close;
      Screen.Cursor := crDefault;
      MessageDlg(' No Existe Información Procesada Para Ese Periodo ', mtError, [mbOk], 0);
   End;
End;

Procedure TfCalfCtaxCob.CrgGridCtaCob;
Var
   xSQL: String;
   xSaldo, xSaldo_V, xSaldo_P, xMovim: Currency;
Begin
   Screen.Cursor := crHourglass;
   xSQL := 'SELECT A.TIPCREID TIPCREID,NVL(B.TIPCREDES,''POR IDENTIFICAR'') TIPCREDES, '
      + '       COUNT(*) MOVIM,SUM(NVL(SALDOS,0)) SALDOS,SUM(NVL(SALDOS_V,0)) SALDOS_V,'
      + '       SUM(NVL(SALDOS_P,0)) SALDOS_P '
      + 'FROM SAL000 A,CRE110 B '
      + 'WHERE '
      + '  A.PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '  AND A.TIPCREID=B.TIPCREID(+) '
      + 'GROUP BY A.TIPCREID,B.TIPCREDES '
      + 'ORDER BY A.TIPCREID ';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;
   TNumericField(DM1.cdsMGrupo.FieldByName('MOVIM')).DisplayFormat := '###,###,###';
   TNumericField(DM1.cdsMGrupo.FieldByName('SALDOS')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMGrupo.FieldByName('SALDOS_V')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsMGrupo.FieldByName('SALDOS_P')).DisplayFormat := '###,###,###.#0';
   xSaldo := 0;
   xMovim := 0;
   DM1.cdsMGrupo.First;
   While Not DM1.cdsMGrupo.Eof Do
   Begin
      xSaldo := xSaldo + DM1.cdsMGrupo.FieldByName('SALDOS').AsCurrency;
      xSaldo_V := xSaldo_V + DM1.cdsMGrupo.FieldByName('SALDOS_V').AsCurrency;
      xSaldo_P := xSaldo_P + DM1.cdsMGrupo.FieldByName('SALDOS_P').AsCurrency;
      xMovim := xMovim + DM1.cdsMGrupo.FieldByName('MOVIM').AsCurrency;
      DM1.cdsMGrupo.Next;
   End;
   dbgCtaCob.ColumnByName('TIPCREDES').FooterValue := 'Totales';
   dbgCtaCob.ColumnByName('MOVIM').FooterValue := FloatToStrF(xMovim, ffNumber, 10, 0);
   dbgCtaCob.ColumnByName('SALDOS').FooterValue := FloatToStrF(xSaldo, ffNumber, 15, 2);
   dbgCtaCob.ColumnByName('SALDOS_V').FooterValue := FloatToStrF(xSaldo_V, ffNumber, 15, 2);
   dbgCtaCob.ColumnByName('SALDOS_P').FooterValue := FloatToStrF(xSaldo_P, ffNumber, 15, 2);
   Screen.Cursor := crDefault;
End;

Procedure TfCalfCtaxCob.CrgGridClfCar;
Var
   xSQL: String;
   xSaldo, xMovim, xSaldo_Cb, xSaldo_Nc, xPorNc, xProCb, xTotProv: Currency;
Begin
   Screen.Cursor := crHourglass;
   xSQL := 'SELECT RESUMEID, RESUMEDES, NVL(B.MOVIM,0) MOVIM, NVL(B.SALDOS,0) SALDOS, '
      + '       NVL(B.SALDO_CB,0) SALDO_CB, NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC, '
      + '       A.P_CB,NVL(B.PORCB,0) PORCB, NVL(B.TOTPROV,0) TOTPROV '
      + 'FROM COB113 A, '
      + '     (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,SUM(NVL(SALDOS_FT,0)) SALDOS, '
      + '             SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC, '
      + '             MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
      + '             MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
      + '             (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)'
      + '            +(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV '
      + '      FROM CFC000,COB113 '
      + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + '        AND CFC000.CFC_F=COB113.RESUMEID(+) '
      + '      GROUP BY CFC_F,RESUMEDES) B '
      + 'WHERE A.RESUMEID=B.CFC(+) '
      + 'ORDER BY A.P_NC';
   DM1.cdsModelo.Close;
   DM1.cdsModelo.DataRequest(xSQL);
   DM1.cdsModelo.Open;
   TNumericField(DM1.cdsModelo.FieldByName('MOVIM')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsModelo.FieldByName('SALDOS')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('SALDO_CB')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('SALDO_NC')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('PORNC')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('PORCB')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('TOTPROV')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('P_CB')).DisplayFormat := '###,###,###.#0';
   TNumericField(DM1.cdsModelo.FieldByName('P_NC')).DisplayFormat := '###,###,###.#0';
   xSaldo := 0;
   xSaldo_Cb := 0;
   xSaldo_Nc := 0;
   xPorNc := 0;
   xProCb := 0;
   xTotProv := 0;
   xMovim := 0;
   DM1.cdsModelo.First;
   While Not DM1.cdsModelo.Eof Do
   Begin
      xSaldo := xSaldo + DM1.cdsModelo.FieldByName('SALDOS').AsCurrency;
      xMovim := xMovim + DM1.cdsModelo.FieldByName('MOVIM').AsCurrency;
      xSaldo_Cb := xSaldo_Cb + DM1.cdsModelo.FieldByName('SALDO_CB').AsCurrency;
      xSaldo_Nc := xSaldo_Nc + DM1.cdsModelo.FieldByName('SALDO_NC').AsCurrency;
      xPorNc := xPorNc + DM1.cdsModelo.FieldByName('PORNC').AsCurrency;
      xProCb := xProCb + DM1.cdsModelo.FieldByName('PORCB').AsCurrency;
      xTotProv := xTotProv + DM1.cdsModelo.FieldByName('TOTPROV').AsCurrency;
      DM1.cdsModelo.Next;
   End;
   dtgClfCar.ColumnByName('RESUMEDES').FooterValue := 'Totales';
   dtgClfCar.ColumnByName('MOVIM').FooterValue := FloatToStrF(xMovim, ffNumber, 10, 0);
   dtgClfCar.ColumnByName('SALDOS').FooterValue := FloatToStrF(xSaldo, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDO_CB').FooterValue := FloatToStrF(xSaldo_Cb, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDO_NC').FooterValue := FloatToStrF(xSaldo_Nc, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('PORNC').FooterValue := FloatToStrF(xPorNc, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('PORCB').FooterValue := FloatToStrF(xProCb, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('TOTPROV').FooterValue := FloatToStrF(xTotProv, ffNumber, 15, 2);
   xSQL := 'SELECT RESUMEID,RESUMEDES FROM COB113 WHERE RESUMEID NOT IN (''0'') ORDER BY RESUMEID';
   DM1.cdsConcre.Close;
   DM1.cdsConcre.DataRequest(xSQL);
   DM1.cdsConcre.Open;

  (* por oficina *)
   xSQL := 'SELECT NVL(A.OFDESID,''-0-'') OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM '
      + 'FROM (SELECT OFDESID '
      + '      FROM CFC000 '
      + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '      GROUP BY OFDESID) A,APO110 B '
      + 'WHERE A.OFDESID=B.OFDESID(+) '
      + 'ORDER BY OFDESID ';
   DM1.cdsOfDes.Close;
   DM1.cdsOfDes.DataRequest(xSQL);
   DM1.cdsOfDes.Open;

  (* por ugel *)
   xSQL := 'SELECT NVL(A.UPROID, ''-0-'') UPROID, '
      + '       NVL(A.UPAGOID, ''-0-'') UPAGOID, '
      + '       NVL(A.USEID, ''-0-'') USEID, '
      + '       NVL(B.USENOM, ''POR IDENTIFICAR'') USENOM '
      + 'FROM (SELECT DISTINCT UPROID,UPAGOID,USEID '
      + '      FROM CFC000 '
      + '      WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ') A, '
   + '    APO101 B '
      + 'WHERE A.UPROID = B.UPROID(+) '
      + ' AND A.UPAGOID = B.UPAGOID(+) '
      + ' AND A.USEID = B.USEID(+) '
      + 'ORDER BY A.UPROID,A.UPAGOID,A.USEID ';
   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSQL);
   DM1.cdsUSES.Open;
   dblcdUse.LookupField := '';
   dblcdUse.LookupTable := DM1.cdsUSES;
   dblcdUse.LookupField := 'USEID';
   dblcdUse.Selected.Clear;
   dblcdUse.Selected.Add('USEID'#9'6'#9'Id'#9#9);
   dblcdUse.Selected.Add('USENOM'#9'25'#9'Nombre'#9#9);

  (* por UPAGO *)
   xSQL := 'SELECT NVL(A.UPROID, ''-0-'') UPROID, '
      + '       NVL(A.UPAGOID, ''-0-'') UPAGOID, '
      + '       NVL(B.UPAGONOM, ''POR IDENTIFICAR'') UPAGONOM '
      + 'FROM (SELECT DISTINCT UPROID,UPAGOID '
      + '      FROM CFC000 '
      + '      WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ') A, '
   + '     APO103 B '
      + 'WHERE A.UPROID = B.UPROID(+) '
      + '   AND A.UPAGOID = B.UPAGOID(+) '
      + 'ORDER BY A.UPROID,A.UPAGOID ';
   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
   dblcdUPago.LookupField := '';
   dblcdUPago.LookupTable := DM1.cdsUPago;
   dblcdUPago.LookupField := 'UPAGOID';
   dblcdUPago.Selected.Clear;
   dblcdUPago.Selected.Add('UPAGOID'#9'6'#9'Id'#9#9);
   dblcdUPago.Selected.Add('UPAGONOM'#9'25'#9'Nombre'#9#9);

  (* por UPRO *)
   xSQL := 'SELECT NVL(A.UPROID, ''-0-'') UPROID, '
      + '       NVL(B.UPAGONOM, ''POR IDENTIFICAR'') UPRONOM '
      + 'FROM (SELECT DISTINCT UPROID '
      + '      FROM CFC000 '
      + '      WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ') A, '
   + '     APO103 B '
      + 'WHERE A.UPROID = B.UPROID(+) '
      + 'ORDER BY A.UPROID ';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSQL);
   DM1.cdsUPro.Open;
   dblcdUPro.LookupField := '';
   dblcdUPro.LookupTable := DM1.cdsUPro;
   dblcdUPro.LookupField := 'UPROID';
   dblcdUPro.Selected.Clear;
   dblcdUPro.Selected.Add('UPROID'#9'6'#9'Id'#9#9);
   dblcdUPro.Selected.Add('UPRONOM'#9'25'#9'Nombre'#9#9);

   filtrarUPago('-..-');
   filtrarUSE('-..-', '-..-');

   pnlUgel.Visible := false;
   pnlOficinas.Visible := false;
   rgTipoResumen.ItemIndex := 0;

   Screen.Cursor := crDefault;
End;

Procedure TfCalfCtaxCob.LimpiaGrid;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT A.TIPCREID TIPCREID,NVL(B.TIPCREDES,''POR IDENTIFICAR'') TIPCREDES, COUNT(*) MOVIM, '
      + '       SUM(NVL(SALDOS,0)) SALDOS, SUM(NVL(SALDOS_V,0)) SALDOS_V, SUM(NVL(SALDOS_P,0)) SALDOS_P '
      + 'FROM SAL000 A,CRE110 B '
      + 'WHERE A.ASOID=' + QuotedStr('%$#@^&*!@_') + ' AND A.TIPCREID=B.TIPCREID(+) '
      + 'GROUP BY A.TIPCREID,B.TIPCREDES '
      + 'ORDER BY A.TIPCREID ';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;
   dbgCtaCob.ColumnByName('TIPCREDES').FooterValue := 'Totales';
   dbgCtaCob.ColumnByName('MOVIM').FooterValue := FloatToStrF(0, ffNumber, 10, 0);
   dbgCtaCob.ColumnByName('SALDOS').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dbgCtaCob.ColumnByName('SALDOS_V').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dbgCtaCob.ColumnByName('SALDOS_P').FooterValue := FloatToStrF(0, ffNumber, 15, 2);

   xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM,NVL(B.SALDOS,0) SALDOS,NVL(B.SALDO_CB,0) SALDO_CB, '
      + '       NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
      + '       NVL(B.TOTPROV,0) TOTPROV '
      + 'FROM COB113 A, '
      + '    (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,SUM(NVL(SALDOS_FT,0)) SALDOS, '
      + '            SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC, '
      + '           (SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC,'
      + '            MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
      + '           (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV '
      + '     FROM CFC000,COB113 '
      + '     WHERE ASOID=' + QuotedStr('%$#@^&*!@_') + ' AND CFC000.CFC_F=COB113.RESUMEID(+) '
      + '     GROUP BY CFC_F,RESUMEDES) B '
      + 'WHERE A.RESUMEID=B.CFC(+) AND A.RESUMEID=''%'' '
      + 'ORDER BY A.P_NC';
   DM1.cdsModelo.Close;
   DM1.cdsModelo.DataRequest(xSQL);
   DM1.cdsModelo.Open;
   dtgClfCar.ColumnByName('RESUMEDES').FooterValue := 'Totales';
   dtgClfCar.ColumnByName('MOVIM').FooterValue := FloatToStrF(0, ffNumber, 10, 0);
   dtgClfCar.ColumnByName('SALDOS').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDO_CB').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('SALDO_NC').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('PORNC').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('PORCB').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
   dtgClfCar.ColumnByName('TOTPROV').FooterValue := FloatToStrF(0, ffNumber, 15, 2);
End;

Procedure TfCalfCtaxCob.BitResCxcClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   xSQL := 'SELECT SAL000.TIPCREID TIPO,CRE110.TIPCREDES DESCRIPCION,COUNT(*) MOVIM , '
      + '       SUM(NVL(SALDOS,0)) SALDOS,SUM(NVL(SALDOS_V,0)) SAL_VEN,SUM(NVL(SALDOS_P,0)) SAL_PEN '
      + 'FROM SAL000,CRE110 '
      + 'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '  AND SAL000.TIPCREID=CRE110.TIPCREID GROUP BY SAL000.TIPCREID,CRE110.TIPCREDES ';
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.DataRequest(xSQL);
   DM1.cdsDetalle.Open;
   If DM1.cdsDetalle.RecordCount > 0 Then
   Begin
      If chkCtb.Checked Then
      Begin
         ppLblTitulo1_C.Caption := 'RESUMEN DE CUENTAS POR COBRAR A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
         ppRepResCxC_C.Print;
         ppRepResCxC_C.Cancel;
      End
      Else
      Begin
         ppLblTitulo1.Caption := 'RESUMEN DE CUENTAS POR COBRAR A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
         ppRepResCxC.Print;
         ppRepResCxC.Cancel;
      End;
   End
   Else
   Begin
      MessageDlg(' No Existe Información Procesada Para Ese Periodo ', mtError, [mbOk], 0);
   End;
   DM1.cdsDetalle.Close;
   Screen.Cursor := crDefault;
End;

Procedure TfCalfCtaxCob.BitResClfCarClick(Sender: TObject);
Var
   xSQL: String;
   xReg: Integer;
   xTot: Currency;
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
   xasotipid: String;
// fin: HPP_200938_COB
Begin
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
// se añade el radiobutton rgtipaso
// Se selecciona el tipo de asociado
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
// fin: HPP_200938_COB
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
   {
   If chkCob.Checked Then // uso interno de cobranzas
   Begin
      xSQL := 'SELECT A.CODIGO,RESUMEID,RESUMEDES,MOVIM, '
         + '       CASE WHEN NVL(MOVIM_P,0)=0 THEN 0 ELSE MOVIM*100/NVL(MOVIM_P,0) END AS MOVIM_POR, '
         + '       SALDOS_FT, '
         + '       CASE WHEN NVL(SALDOS_FT_P,0)=0 THEN 0 ELSE SALDOS_FT*100/NVL(SALDOS_FT_P,0) END AS SALDOS_FT_POR, '
         + '       SALDOS_FV, '
         + '       CASE WHEN NVL(SALDOS_FV_P,0)=0 THEN 0 ELSE SALDOS_FV*100/NVL(SALDOS_FV_P,0) END AS SALDOS_FV_POR, '
         + '       SALDOS_FP, '
         + '       CASE WHEN NVL(SALDOS_FP_P,0)=0 THEN 0 ELSE SALDOS_FP*100/NVL(SALDOS_FP_P,0) END AS SALDOS_FP_POR '
         + 'FROM (SELECT CODIGO,RESUMEID,RESUMEDES,MOVIM,SALDOS_FT,SALDOS_FV,SALDOS_FP,ROWNUM ORDEN '
         + '      FROM (SELECT CODIGO,RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, NVL(B.SALDOS_FT,0) SALDOS_FT, '
         + '                   NVL(SALDOS_FV,0) SALDOS_FV,NVL(SALDOS_FP,0) SALDOS_FP '
         + '            FROM COB113 A,(SELECT ''01'' CODIGO,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
         + '                                  SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV, '
         + '                                  SUM(NVL(SALDOS_FP,0)) SALDOS_FP '
         + '                           FROM CFC000,COB113 '
         + '                           WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
      + xasotipid
// fin: HPP_200938_COB
      + '                             AND CFC000.CFC_F=COB113.RESUMEID(+) '
         + '                           GROUP BY CFC_F,RESUMEDES) B '
         + '            WHERE A.RESUMEID=B.CFC(+) '
         + '            ORDER BY A.P_NC '
         + '            ) '
         + '      ) A, '
         + '     (SELECT CODIGO,MOVIM_P,SALDOS_FT_P,SALDOS_FV_P,SALDOS_FP_P '
         + '      FROM (SELECT ''01'' CODIGO, SUM(NVL(B.MOVIM,0)) MOVIM_P, SUM(NVL(B.SALDOS_FT,0)) SALDOS_FT_P, '
         + '                   SUM(NVL(SALDOS_FV,0)) SALDOS_FV_P, '
         + '                   SUM(NVL(SALDOS_FP,0)) SALDOS_FP_P '
         + '            FROM COB113 A,(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
         + '                                  SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
         + '                                  SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP '
         + '                           FROM CFC000,COB113 '
         + '                           WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + '                             AND CFC000.CFC_F=COB113.RESUMEID(+) '
         + '                           GROUP BY CFC_F,RESUMEDES) B '
         + '            WHERE A.RESUMEID=B.CFC(+) '
         + '            ) '
         + '      ) B '
         + 'WHERE A.CODIGO=B.CODIGO(+) '
         + 'ORDER BY ORDEN  ';
      lblOfiDesx.Caption := 'TODAS LAS OFICINAS DESCONCENTRADAS';
      DM1.cdsDetalle.Close;
      DM1.cdsDetalle.DataRequest(xSQL);
      DM1.cdsDetalle.Open;
      If DM1.cdsDetalle.RecordCount > 0 Then
      Begin
         xSQL := 'SELECT SALDOS_FT,SALDOS_FV,SALDOS_FV/SALDOS_FT INDMOR,SALDOS_FV/SALDOS_FT*100 PORMOR '
            + 'FROM (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FT '
            + '      FROM CFC000 '
            + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
         + '      ) A, '
            + '     (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FV '
            + '      FROM CFC000 '
            + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         + xasotipid
// fin: HPP_200938_COB
         + '        AND CFC_F<>''0'' '
            + '      ) B ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            ppLbltit01x.Caption := 'CALIFICACION DE DEUDORES DE LA CARTERA DE CREDITOS DE CONSUMO A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text + ' - USO INTERNO DE COBRANZAS';
            IndMorCob.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
            PorMorCob.Caption := '(' + FloatToStrF(DM1.cdsQry.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2) + ' %)';
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
            ppltipoaso.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
// fin: HPP_200938_COB
            ppRepClfcar01.Print;
            ppRepClfcar01.Cancel;
         End;
         DM1.cdsQry.Close;
      End;
   End
   Else // si no es para uso interno de cobranzas
   Begin
   }
// fin: HPP_201006_COB

      If rgTipoResumen.ItemIndex = 0 Then // Tipo de Resumen = TODOS
      Begin
// Inicio: HPP_201006_COB POR JCARBONEL
{
         xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM,(NVL(B.MOVIM,0))*100/' + FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue)) + ' Movim_Por, '
            + '       NVL(B.SALDOS_FT,0) SALDOS_FT, '
            + '       NVL(B.SALDOS_FT,0)*100/' + FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue)) + ' SaldoTotal_Por, '
}
         if DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue)>0 then
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket
            xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, '
               + 'round((NVL(B.MOVIM,0))*100/' + FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue)) + ',4) Movim_Por, '
               + '       NVL(B.SALDOS_FT,0) SALDOS_FT, '
               + 'round(NVL(B.SALDOS_FT,0)*100/' + FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue)) + ',4) SaldoTotal_Por, '
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
         else
            xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, 0.00 Movim_Por, '
               + '       NVL(B.SALDOS_FT,0) SALDOS_FT, '
               + '       0.00 SaldoTotal_Por, ';
// fin: HPP_201006_COB POR JCARBONEL
         xSQL := xSQL
            + '       NVL(SALDOS_FV,0) SALDOS_FV, NVL(SALDOS_FP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
            + '       NVL(B.SALDO_NC,0) SALDO_NC, A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
            + '       NVL(B.TOTPROV,0) TOTPROV '
            + 'FROM COB113 A, '
            + '    (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
            + '            SUM(NVL(SALDOS_FV,0)) SALDOS_FV, SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
            + '            SUM(NVL(SALDO_CB,0)) SALDO_CB, SUM(NVL(SALDO_NC,0)) SALDO_NC, '
            + '            MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
            + '            MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
            + '           (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '
            + '     FROM CFC000,COB113 '
            + '     WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         + xasotipid //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
         + '       AND CFC000.CFC_F=COB113.RESUMEID(+) '
            + '     GROUP BY CFC_F,RESUMEDES) B '
            + 'WHERE A.RESUMEID=B.CFC(+) '
            + 'ORDER BY A.P_NC';
         lblOfiDes.Caption := 'TODAS LAS OFICINAS DESCONCENTRADAS';
      End
      Else
      Begin
         If rgTipoResumen.ItemIndex = 1 Then // Tipo de Resumen = Por Oficina
         Begin
            If Length(Trim(EdtOfiDes.Text)) = 0 Then
            Begin
               MessageDlg(' Debe SELECCIONAR UNA OFICINA!!', mtError, [mbOk], 0);
               Screen.Cursor := crDefault;
               Exit;
            End;
            xSQL := 'SELECT ASOID '
               + 'FROM CFC000 '
               + 'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
            + xasotipid //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
            + ' AND OFDESID=' + QuotedStr(DBLkOfiDes.Text);
            xReg := DM1.CountReg(xSQL);
            xSQL := 'SELECT NVL(SUM(NVL(SALDOS_FT,0)),0) SALDOS FROM CFC000 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND OFDESID=' + QuotedStr(DBLkOfiDes.Text);
            DM1.cdsTRela.Close;
            DM1.cdsTRela.DataRequest(xSQL);
            DM1.cdsTRela.Open;
            xTot := DM1.cdsTRela.FieldByName('SALDOS').AsCurrency;
            DM1.cdsTRela.Close;
            xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, '
            // Inicio HPC_201505_COB                :  Modificar por el redondeo
               + '       round( (NVL(B.MOVIM,0))*100/' + IntToStr(xReg) + ',2) Movim_Por, '
               + '       NVL(B.SALDOS_FT,0) SALDOS_FT, round( NVL(B.SALDOS_FT,0)*100/' + FloatToStr(xTot) + ',2) SaldoTotal_Por, '
            // Fin    HPC_201505_COB                :  Modificar por el redondeo
               + '       NVL(SALDOS_FV,0) SALDOS_FV, NVL(SALDOS_FP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
               + '       NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
               + '       NVL(B.TOTPROV,0) TOTPROV '
               + 'FROM COB113 A,(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
               + '                      SUM(NVL(SALDOS_FV,0)) SALDOS_FV, SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
               + '                      SUM(NVL(SALDO_CB,0)) SALDO_CB, SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC, '
               + '                     (SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
               + '                      MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
               + '                     (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV '
               + '               FROM CFC000,COB113 '
               + '               WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
            + xasotipid //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
            + '                 AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text)
               + '                 AND CFC000.CFC_F=COB113.RESUMEID(+) '
               + '               GROUP BY CFC_F,RESUMEDES) B '
               + 'WHERE A.RESUMEID=B.CFC(+) '
               + 'ORDER BY A.P_NC';
            lblOfiDes.Caption := 'OFICINA DESCONCENTRADA  : ' + Trim(EdtOfiDes.Text);
         End
         Else // Tipo de Resumen = Por UGEL
            If rgTipoResumen.ItemIndex = 2 Then
            Begin
               If trim(EdtUseNom.Text) = '' Then
               Begin
                  MessageDlg(' Debe SELECCIONAR UNA UGEL!!', mtError, [mbOk], 0);
                  Screen.Cursor := crDefault;
                  Exit;
               End;
               xSQL := 'SELECT ASOID '
                  + 'FROM CFC000 '
                  + 'WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
               + xasotipid //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
               + '  AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
                  + '  AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
                  + '  AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text);
               xReg := DM1.CountReg(xSQL);

               xSQL := 'SELECT NVL(SUM(NVL(SALDOS_FT, 0)), 0) SALDOS '
                  + 'FROM CFC000 '
                  + 'WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
               + xasotipid //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
               + ' AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
                  + ' AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
                  + ' AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text);
               DM1.cdsTRela.Close;
               DM1.cdsTRela.DataRequest(xSQL);
               DM1.cdsTRela.Open;
               xTot := DM1.cdsTRela.FieldByName('SALDOS').AsCurrency;
               DM1.cdsTRela.Close;
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket
               xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) '
                  + '       MOVIM, round((NVL(B.MOVIM,0))*100/' + IntToStr(xReg) + ',4) Movim_Por, '
                  + '       NVL(B.SALDOS_FT,0) SALDOS_FT, round(NVL(B.SALDOS_FT,0)*100/' + FloatToStr(xTot) + ',4) SaldoTotal_Por, '
                  + '       NVL(SALDOS_FV,0) SALDOS_FV,NVL(SALDOS_FP,0) SALDOS_FP,NVL(B.SALDO_CB,0) SALDO_CB, '
                  + '       NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
                  + '       NVL(B.TOTPROV,0) TOTPROV '
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
                  + 'FROM COB113 A,'
                  + '    (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
                  + '            SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV, '
                  + '            SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
                  + '            SUM(NVL(SALDO_CB,0)) SALDO_CB, SUM(NVL(SALDO_NC,0)) SALDO_NC, '
                  + '            MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
                  + '            MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
                  + '           (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '
                  + '     FROM CFC000,COB113 '
                  + '     WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
               + xasotipid //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
               + '       AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
                  + '       AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
                  + '       AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
                  + '       AND CFC000.CFC_F=COB113.RESUMEID(+) '
                  + '     GROUP BY CFC_F,RESUMEDES) B '
                  + 'WHERE A.RESUMEID = B.CFC(+) '
                  + 'ORDER BY A.P_NC ';
               lblOfiDes.Caption := 'UND.PROCESO : (' + Trim(DM1.cdsUPro.fieldbyname('UPROID').AsString) + ')' + Trim(DM1.cdsUPro.fieldbyname('UPRONOM').AsString) + '         '
                  + 'UND.PAGO : (' + Trim(DM1.cdsUPago.fieldbyname('UPAGOID').AsString) + ')' + Trim(DM1.cdsUPago.fieldbyname('UPAGONOM').AsString) + '         '
                  + 'UGEL : (' + Trim(DM1.cdsUSES.fieldbyname('USEID').AsString) + ')' + Trim(DM1.cdsUSES.fieldbyname('USENOM').AsString);
            End;
      End;
      DM1.cdsDetalle.Close;
      DM1.cdsDetalle.DataRequest(xSQL);
      DM1.cdsDetalle.Open;
      If DM1.cdsDetalle.RecordCount > 0 Then
      Begin
         If rgTipoResumen.ItemIndex = 1 Then
            If Length(Trim(EdtOfiDes.Text)) = 0 Then
            Begin
               Screen.Cursor := crDefault;
               Exit;
            End;
         If rgTipoResumen.ItemIndex = 2 Then
            If Length(Trim(EdtUseNom.Text)) = 0 Then
            Begin
               Screen.Cursor := crDefault;
               Exit;
            End;
         If rgTipoResumen.ItemIndex = 0 Then
// Inicio: HPP_201006_COB POR JCARBONEL
{
            xSQL := 'SELECT SUM(SALDOS_FV)/SUM(SALDOS_FT) INDMOR,SUM(TOTPROV)/SUM(SALDOS_FV) INDPRO  FROM ' +
}
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket
            xSQL := 'SELECT case when SUM(SALDOS_FT)=0 then 0 else round(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) end INDMOR, '
                   +'       case when SUM(SALDOS_FV)=0 then 0 else round(SUM(TOTPROV)/SUM(SALDOS_FV),4) end INDPRO '
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
                   +'FROM ' +
// Fin: HPP_201006_COB POR JCARBONEL
               '(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP, ' +
               'SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC,  ' +
               'MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  ' +
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
            'FROM CFC000,COB113'
               + ' WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
            + xasotipid //SAR2009-0715 por IREVILLA
               + ' AND CFC000.CFC_F=COB113.RESUMEID(+) GROUP BY CFC_F,RESUMEDES) '
// fin: HPP_200938_COB
         Else
         Begin
            If rgTipoResumen.ItemIndex = 1 Then
// Inicio: HPP_201006_COB POR JCARBONEL
{
               xSQL := 'SELECT CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE (SUM(SALDOS_FV)/SUM(SALDOS_FT)) END INDMOR,CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE (SUM(TOTPROV)/SUM(SALDOS_FV)) END INDPRO  FROM ' +
}
            // Inicio HPC_201505_COB                :  Modificar por el redondeo
               xSQL := 'SELECT CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE round( (SUM(SALDOS_FV)/SUM(SALDOS_FT)) ,6) END INDMOR, '
                      +'       CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE round( (SUM(TOTPROV)/SUM(SALDOS_FV)) ,6) END INDPRO '
            // Fin    HPC_201505_COB                :  Modificar por el redondeo
                      +'FROM ' +
// Fin: HPP_201006_COB POR JCARBONEL
                  '(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP, ' +
                  'SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC,  ' +
                  'MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  ' +
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
               'FROM CFC000,COB113'
                  + ' WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
               + xasotipid //SAR2009-0715 por IREVILLA
                  + ' AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text) + ' AND CFC000.CFC_F=COB113.RESUMEID(+) GROUP BY CFC_F,RESUMEDES) '
// fin: HPP_200938_COB
            Else
               If rgTipoResumen.ItemIndex = 2 Then
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket

                  xSQL := 'SELECT CASE WHEN SUM(NVL(SALDOS_FV,0))=0 '
                     + '            THEN SUM(0) '
                     + '            ELSE round((SUM(SALDOS_FV)/SUM(SALDOS_FT)),4) END INDMOR, '
                     + '       CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE round((SUM(TOTPROV)/SUM(SALDOS_FV)),4) END INDPRO  '
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
                     + '  FROM (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
                     + '               SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV,'
                     + '               SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
                     + '               SUM(NVL(SALDO_CB,0)) SALDO_CB, '
                     + '               SUM(NVL(SALDO_NC,0)) SALDO_NC, '
                     + '               MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC,  '
                     + '               MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,'
                     + '               (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '
                     + '          FROM CFC000,COB113 '
                     + '         WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
                  + xasotipid //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
                  + '           AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
                     + '           AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
                     + '           AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
                     + '           AND CFC000.CFC_F = COB113.RESUMEID(+) '
                     + '         GROUP BY CFC_F,RESUMEDES) ';

         End;

         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.FieldByName('INDMOR').AsCurrency > 0 Then
         Begin
            lblIndice.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
            lblProv.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDPRO').AsCurrency, ffNumber, 10, 5);
            lblPorMor.Caption := '(' + FloatToStrF((DM1.cdsQry.FieldByName('INDMOR').AsCurrency * 100), ffNumber, 10, 2) + ' %)';
            lblPorPro.Caption := '(' + FloatToStrF((DM1.cdsQry.FieldByName('INDPRO').AsCurrency * 100), ffNumber, 10, 2) + ' %)';
         End
         Else
         Begin
            lblIndice.Caption := '0.0000';
            lblProv.Caption := '0.0000';
            lblPorMor.Caption := '(0.00 %)';
            lblPorPro.Caption := '(0.00 %)';
         End;
         DM1.cdsQry.Close;
         ppLbltit.Caption := 'CALIFICACION DE DEUDORES Y EXIGENCIA DE PROVISIONES  A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         pplTipAso.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
// fin: HPP_200938_COB
         ppRepClfcar.Print;
         ppRepClfcar.Cancel;
      End
      Else
      Begin
         MessageDlg(' No Existe Información Procesada Para Ese Periodo ', mtError, [mbOk], 0);
      End;
      DM1.cdsDetalle.Close;
// Inicio: HPP_201006_COB por JDCRUZ
//   End;
// fin: HPP_201006_COB
   Screen.Cursor := crDefault;
End;

Procedure TfCalfCtaxCob.BitMorosidadClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   xSQL := 'SELECT NVL(B.DESCRIPCION,''NO IDENTIFICADO'') DESCRIPCION,  ' +
      'SUM(REGISTROS) REGISTROS,SUM(SALDOS) SALDOS FROM  ' +
      '(SELECT IDAGP,SUM(REGISTROS) REGISTROS,SUM(SALDOS) SALDOS FROM ' +
      '(SELECT NVL(B.IDAGP,''00'') IDAGP,REGISTROS,SALDOS FROM  ' +
      '(SELECT TIPCREID,COUNT(*) REGISTROS,SUM(NVL(SALDOS,0)) SALDOS ' +
      'FROM SAL000 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' GROUP BY TIPCREID) A,CRE110 B ' +
   'WHERE A.TIPCREID=B.TIPCREID(+)) ' +
      'GROUP BY IDAGP) A,CRE411 B WHERE A.IDAGP=B.IDAGP(+) GROUP BY B.DESCRIPCION ORDER BY SALDOS DESC';
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xSQL);
   DM1.cdsGradoI.Open;
   If DM1.cdsGradoI.RecordCount > 0 Then
   Begin
      pplblTitMor.Caption := 'RESUMEN POR CLASIFICACION DE CREDITOS A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
      ppDBMorosidad.DataSource := DM1.dsGradoI;
      ppRepMorosidad.Print;
      ppRepMorosidad.Cancel;
   End
   Else
   Begin
      MessageDlg(' No Existe Información Procesada Para Ese Periodo ', mtError, [mbOk], 0);
   End;
   DM1.cdsGradoI.Close;
End;

Procedure TfCalfCtaxCob.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfCalfCtaxCob.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure TfCalfCtaxCob.dtgClfCarDblClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      If DM1.cdsModelo.FieldByName('MOVIM').AsInteger = 0 Then Exit;

      fDetClfcar := TfDetClfcar.create(Self);
      Screen.Cursor := crHourglass;
      xSQL := 'SELECT ASOTIPID,ASOCODMOD,ASOAPENOM,NVL(SALDOS_FT,0) SALDOS_FT,NVL(CTAIND_F,0) CTAIND_F, ' +
         'NVL(SALDO_CB,0) SALDO_CB,NVL(SALDO_NC,0) SALDO_NC,MESTRA ' +
         'FROM CFC000 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CFC_F=' + QuotedStr(DM1.cdsModelo.FieldByName('RESUMEID').AsString) + ' ORDER BY ASOAPENOM';
      DM1.cdsCredito.Close;
      DM1.cdsCredito.DataRequest(xSQL);
      DM1.cdsCredito.Open;
      TNumericField(DM1.cdsCredito.FieldByName('SALDOS_FT')).DisplayFormat := '###,###,###.#0';
      TNumericField(DM1.cdsCredito.FieldByName('CTAIND_F')).DisplayFormat := '###,###,###.#0';
      TNumericField(DM1.cdsCredito.FieldByName('SALDO_CB')).DisplayFormat := '###,###,###.#0';
      TNumericField(DM1.cdsCredito.FieldByName('SALDO_NC')).DisplayFormat := '###,###,###.#0';
      Screen.Cursor := crDefault;
      fDetClfcar.lblTitulo.Caption := DM1.cdsModelo.FieldByName('RESUMEDES').AsString;
      fDetClfcar.ShowModal;
   Finally
      DM1.cdsCredito.Close;
      fDetClfcar.Free;
   End;
End;

Procedure TfCalfCtaxCob.dbgCtaCobDblClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      If dbgCtaCob.DataSource.DataSet.RecordCount = 0 Then Exit;

      fDetCtaCob := TfDetCtaCob.create(Self);
      Screen.Cursor := crHourglass;
      xSQL := 'SELECT ASOCODMOD,ASOAPENOM,CREFOTORG,NVL(SALDOS,0) SALDOS, ' +
         'NVL(SALDOS_V,0) SALDOS_V,NVL(SALDOS_P,0) SALDOS_P ' +
         'FROM SAL000 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND TIPCREID=' + QuotedStr(DM1.cdsMGrupo.FieldByName('TIPCREID').AsString) + ' ORDER BY ASOAPENOM';
      DM1.cdsCredito.Close;
      DM1.cdsCredito.DataRequest(xSQL);
      DM1.cdsCredito.Open;
      TNumericField(DM1.cdsCredito.FieldByName('SALDOS')).DisplayFormat := '###,###,###.#0';
      TNumericField(DM1.cdsCredito.FieldByName('SALDOS_V')).DisplayFormat := '###,###,###.#0';
      TNumericField(DM1.cdsCredito.FieldByName('SALDOS_P')).DisplayFormat := '###,###,###.#0';
      Screen.Cursor := crDefault;
      fDetCtaCob.lblTitulo.Caption := DM1.cdsMGrupo.FieldByName('TIPCREID').AsString + '-' + DM1.cdsMGrupo.FieldByName('TIPCREDES').AsString;
      fDetCtaCob.ShowModal;
   Finally
      DM1.cdsCredito.Close;
      fDetCtaCob.Free;
   End;
End;

Procedure TfCalfCtaxCob.BitIngEgresosClick(Sender: TObject);
Var
   xPeriodo, xSQL, xfIni, xfFin: String;
   xAno, xMes: Integer;
   xSaldoMes: Currency;
Begin
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   If dbgCtaCob.DataSource.DataSet.RecordCount = 0 Then
   Begin
      MessageDlg(' No Existe Información Procesada Para Ese Periodo ', mtError, [mbOk], 0);
      Exit;
   End;

   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then
   Begin
      MessageDlg(' No Existe Información Procesada Para Ese Periodo ', mtError, [mbOk], 0);
      Exit;
   End;

   Screen.Cursor := crHourglass;
   xSQL := 'SELECT CFC_F,CFCDES_F,SALDOS_FT FROM CFC000 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])));
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 0 Then
   Begin
      MessageDlg(' No Existe Información De Cuentas Por Cobrar Procesada Para El Mes Anterior ', mtError, [mbOk], 0);
      Exit;
   End;

   If StrToInt(Trim(dbsMesIni.Text)) = 1 Then
   Begin
      xAno := StrToInt(Trim(dbsAnoIni.Text)) - 1;
      xMes := 12;
   End
   Else
   Begin
      xAno := StrToInt(Trim(dbsAnoIni.Text));
      xMes := StrToInt(Trim(dbsMesIni.Text)) - 1;
   End;
   xSQL := 'DELETE FROM COB902 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])));
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL := 'INSERT INTO COB902 SELECT ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' PERIODO,''SI'' ID,SUM(NVL(SALDOS_FT,0)) IMPORTE,COUNT(*) MOVIM,''+'' SIGNO,''A'' TRANS  FROM CFC000 WHERE PERIODO=' + QuotedStr(IntToStr(xAno) + Format('%.2d', [xMes]));
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xfIni := '01/' + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]) + '/' + Trim(dbsAnoIni.Text);
   xfFin := DM1.UltimoDia(StrToInt(Trim(dbsMesIni.Text)), StrToInt(Trim(dbsAnoIni.Text))) + '/' + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]) + '/' + Trim(dbsAnoIni.Text);

   xSQL := 'INSERT INTO COB902 SELECT ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' PERIODO,''CO'' ID,SUM(NVL(CREMTOOTOR,0)) IMPORTE,COUNT(*) MOVIM,''+'' SIGNO,''E'' TRANS FROM CRE301 ' +
   'WHERE CREFOTORG BETWEEN ' + QuotedStr(xfIni) + ' AND ' + QuotedStr(xfFin) + ' AND CREESTID NOT IN (''13'') AND TIPDESEID NOT IN (''10'')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL := 'INSERT INTO COB902 SELECT ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' PERIODO,''XP'' ID,SUM(NVL(CREMTOOTOR,0)) IMPORTE,COUNT(*) MOVIM,''-'' SIGNO,''I'' TRANS FROM CRE301 ' +
   'WHERE CREFOTORG BETWEEN ' + QuotedStr(xfIni) + ' AND ' + QuotedStr(xfFin) + ' AND CREESTID IN (''04'') AND TIPDESEID NOT IN (''10'')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL := 'INSERT INTO COB902 SELECT ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' PERIODO,''RP'' ID,SUM(NVL(CREMTOOTOR,0)) IMPORTE,COUNT(*) MOVIM,''+'' SIGNO,''E'' TRANS FROM CRE301 ' +
   'WHERE CREFOTORG BETWEEN ' + QuotedStr(xfIni) + ' AND ' + QuotedStr(xfFin) + ' AND TIPDESEID=''10'' AND CREESTID NOT IN (''13'',''04'') ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL := 'INSERT INTO COB902 SELECT ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' PERIODO,''DV'' ID,SUM(NVL(CREDEVEXC,0)) IMPORTE,COUNT(*) MOVIM,''+'' SIGNO,''E'' TRANS FROM MDEVDET ' +
   'WHERE FREG BETWEEN ' + QuotedStr(xfIni) + ' AND ' + QuotedStr(xfFin) + ' AND CREESTID IN (''99'') ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL := 'INSERT INTO COB902 SELECT MAX(' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ') PERIODO,FORPAGID ID,SUM(NVL(CREAMORT,0)+NVL(CREMTOEXC,0)  ) IMPORTE,COUNT(*) MOVIM,MAX(''-'') SIGNO,MAX(''I'') TRANS ' +
   'FROM CRE310 WHERE CNTANOMM=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CREESTID NOT IN (''13'',''99'',''04'') AND CNTFLAG=''S'' GROUP BY FORPAGID ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL := 'INSERT INTO COB902 SELECT MAX(' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ') PERIODO,''EX'' ID,SUM(NVL(CREAMORT,0)+NVL(CREMTOEXC,0)  ) IMPORTE,COUNT(*) MOVIM,MAX(''+'') SIGNO,MAX(''E'') TRANS ' +
   'FROM CRE310 WHERE CNTANOMM=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CREESTID IN (''04'') AND CNTFLAG=''S'' ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL := 'SELECT SUM(NVL(SUMA,0))- SUM(NVL(RESTA,0)) SALDOMES FROM (SELECT IDCONCEPTO,IMPORTE, CASE WHEN SIGNO=''+'' THEN NVL(IMPORTE,0) END SUMA,CASE WHEN SIGNO=''-'' THEN NVL(IMPORTE,0) END RESTA FROM COB902 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND SIGNO IN (''+'',''-'') ORDER BY SIGNO) ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      xSaldoMes := DM1.cdsQry.FieldByName('SALDOMES').AsCurrency;
      xSQL := 'INSERT INTO COB902(PERIODO,IDCONCEPTO,IMPORTE,MOVIM,SIGNO,TRANS) VALUES (' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ',''SF'',' + FloatToStr(xSaldoMes) + ',' + FloatToStr(0) + ',''S'',''X'' ) ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
   DM1.cdsQry.Close;

   xSQL := 'INSERT INTO COB902(PERIODO,IDCONCEPTO,IMPORTE,MOVIM,SIGNO,TRANS) VALUES (' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ',''CC'',' + FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue)) + ',' + FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue)) + ',''F'',''Z'' ) ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL := 'SELECT A.IDCONCEPTO,B.DESCONCEPTO,IMPORTE,A.SIGNO,DECODE(A.SIGNO,''-'',''INGRESOS'',''+'',''EGRESOS'','''') TRANSACCION,A.TRANS FROM COB902 A,COB903 B WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND A.IDCONCEPTO=B.IDCONCEPTO(+) ORDER BY A.TRANS ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   Screen.Cursor := crDefault;
   Titulo.Caption := 'CONSOLIDADO (INGRESOS / EGRESOS )  AL ' + xfFin;
   Repconsolidado.Print;
   Repconsolidado.Cancel;
End;

Procedure TfCalfCtaxCob.DBLkOfiDesChange(Sender: TObject);
Begin
   If DM1.cdsOfdes.Locate('OFDESID', VarArrayof([DBLkOfiDes.Text]), []) Then
   Begin
      EdtOfiDes.Text := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString;
   End
   Else
   Begin
      If Length(DBLkOfiDes.Text) <> 2 Then
      Begin
         Beep;
         EdtOfiDes.Text := '';
      End;
   End;
End;

Procedure TfCalfCtaxCob.BitConOfiClick(Sender: TObject);
Var
   xSQL: String;
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
   xasotipid: String;
// fin: HPP_200938_COB
Begin
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
// se añade el radiobutton rgtipaso
// Se selecciona el tipo de asociado
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
// fin: HPP_200938_COB
   // HPP_200902_COB
   // SAR 2009JC-0122
   // DAD-MT-2009-0006 .
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   rgTipoResumen.ItemIndex := 0;
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
   {
   If chkCob.Checked Then
   Begin
      xSQL := 'SELECT OFDESID, OFDESNOM, SALDOS_FT, NVL(SALDOS_FV,0) SALDOS_FV,'
         + '    NVL(INDICE,0) INDICE, NVL(PORIND,0) PORIND'
         + ' FROM (SELECT A.OFDESID,C.OFDESNOM,SALDOS_FT,B.SALDOS_FV,CASE'
         + ' WHEN B.SALDOS_FV=0 THEN 0 ELSE (B.SALDOS_FV/SALDOS_FT) END INDICE, '
         + ' CASE WHEN SALDOS_FT=0 THEN 0 ELSE (B.SALDOS_FV/SALDOS_FT*100) END PORIND'
         + ' FROM (SELECT OFDESID, SUM(NVL(SALDOS_FT,0)) SALDOS_FT FROM CFC000'
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
      + ' WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid //SAR2009-0715 por IREVILLA
         + ' GROUP BY OFDESID) A,'
         + '(SELECT OFDESID,SUM(NVL(SALDOS_FT,0)) SALDOS_FV FROM CFC000 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid //SAR2009-0715 por IREVILLA
         + '  AND CFC_F<>''0'' GROUP BY OFDESID) B, APO110 C '
// fin: HPP_200938_COB
      + ' WHERE A.OFDESID=B.OFDESID(+)  AND A.OFDESID=C.OFDESID(+) ) ORDER BY PORIND DESC ';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;
      If DM1.cdsQry6.RecordCount > 0 Then
      Begin
         xSQL := 'SELECT SALDOS_FT,SALDOS_FV,SALDOS_FV/SALDOS_FT INDMOR,SALDOS_FV/SALDOS_FT*100 PORMOR '
            + 'FROM (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FT '
            + '      FROM CFC000 '
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
         + xasotipid + ') A, ' //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
         + '     (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FV '
            + '      FROM CFC000 '
            + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         + xasotipid //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
         + '        AND CFC_F<>''0'' ) B ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            IndMorCob01.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
            PorMorCob01.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
            TituloInd01.Caption := 'INDICE DE MOROSIDAD POR OFICINA DESCONCENTRADA - ' + Trim(lblNomMes.Caption) + ' - ' + Trim(dbsAnoIni.Text);
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
            pplTipAsoRepIndMor.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
// fin: HPP_200938_COB
            RepIndMor.Print;
            RepIndMor.Cancel;
         End;
      End;
      DM1.cdsQry6.Close;
      Screen.Cursor := crDefault;
   End //SUM(NVL(SALDOS_FV,0))

   Else // sin check
   Begin
   }
// fin: HPP_201006_COB
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket
      xSQL := 'SELECT NVL(A.OFDESID,''00'') OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, '+
         'CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE round((SUM(SALDOS_FV)/SUM(SALDOS_FT)),4) END INDMOR, ' +
         'CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE round((SUM(SALDOS_FV)/SUM(SALDOS_FT)*100),4) END PORMOR, ' +
         'CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE round((SUM(TOTPROV)/SUM(SALDOS_FV)),4) END INDPRO, '+
         'CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE round((SUM(TOTPROV)/SUM(SALDOS_FV)*100),4) END  PORPRO FROM ' +
         '(SELECT CFC000.OFDESID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, ' +
         'SUM(NVL(SALDOS_FV,0))  SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP, ' +
         'SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, ' +
         'MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  ' +
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
      'FROM CFC000,COB113 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid //SAR2009-0715 por IREVILLA
         + ' AND CFC000.CFC_F=COB113.RESUMEID(+) GROUP BY CFC000.OFDESID,CFC_F,RESUMEDES) A, APO110 B WHERE A.OFDESID=B.OFDESID(+) GROUP BY A.OFDESID,B.OFDESNOM ORDER BY INDMOR DESC ';
// fin: HPP_200938_COB
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry6.RecordCount > 0 Then
      Begin
         Screen.Cursor := crHourglass;
         LblTitulo.Caption := 'INDICE DE MOROSIDAD Y PROVISION POR OFICINA DESCONCENTRADA - ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
// Inicio: HPP_201006_COB POR JCARBONEL
{
         xSQL := 'SELECT round(SUM(SALDOS_FV)/SUM(SALDOS_FT),5) INDMOR,round(SUM(SALDOS_FV)/SUM(SALDOS_FT)*100,5) PORMOR, '
            + '       round(SUM(TOTPROV)/SUM(SALDOS_FV),5) INDPRO,round(SUM(TOTPROV)/SUM(SALDOS_FV)*100,5) PORPRO '
}
         xSQL := 'SELECT case when SUM(SALDOS_FT)=0 then 0.00 else round(SUM(SALDOS_FV)/SUM(SALDOS_FT),5) end INDMOR, '
                +'       case when SUM(SALDOS_FT)=0 then 0.00 else round(SUM(SALDOS_FV)/SUM(SALDOS_FT)*100,5) end PORMOR, '
                +'       case when SUM(SALDOS_FV)=0 then 0.00 else round(SUM(TOTPROV)/SUM(SALDOS_FV),5) end INDPRO, '
                +'       case when SUM(SALDOS_FV)=0 then 0.00 else round(SUM(TOTPROV)/SUM(SALDOS_FV)*100,5) end PORPRO '
// Fin: HPP_201006_COB POR JCARBONEL
            + 'FROM (SELECT CFC000.OFDESID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
            + '             SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV, '
            + '             SUM(NVL(SALDOS_FP,0)) SALDOS_FP, SUM(NVL(SALDO_CB,0)) SALDO_CB, '
            + '             SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC, '
            + '             round((SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100,5) PORNC, '
            + '             MAX(P_CB) P_CB,round((SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100,5) PORCB, '
            + '             round((SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100),2) TOTPROV '
            + '      FROM CFC000,COB113 '
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
         + xasotipid //SAR2009-0715 por IREVILLA
// fin: HPP_200938_COB
         + '        AND CFC000.CFC_F=COB113.RESUMEID(+) '
            + '      GROUP BY CFC000.OFDESID,CFC_F,RESUMEDES) A '; //, APO110 B WHERE A.OFDESID=B.OFDESID(+) ';
         DM1.cdsQry5.Close;
         DM1.cdsQry5.DataRequest(xSQL);
         DM1.cdsQry5.Open;
         Screen.Cursor := crDefault;
         If DM1.cdsQry5.RecordCount > 0 Then
         Begin
            lblIndMor.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
            lblrPorMor.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
            lblIndPro.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('INDPRO').AsCurrency, ffNumber, 10, 5);
            lblrPorPro.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('PORPRO').AsCurrency, ffNumber, 10, 2);
         End;
         DM1.cdsQry5.Close;
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         pplTipAsoRepCons.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
// fin: HPP_200938_COB
         RepCons.Print;
         RepCons.Cancel;
      End;
      DM1.cdsQry6.Close;
// Inicio: HPP_201006_COB por JDCRUZ
//   End;
// fin: HPP_201006_COB
   Screen.Cursor := crDefault;
End;

Procedure TfCalfCtaxCob.BitCndCntClick(Sender: TObject);
Var
   xSQL: String;
Begin

   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   xSQL := 'SELECT RESUABR,SALVEN,SALPEN,SALTOT,REGISTROS FROM (SELECT A.PROVISID,RESUMEID,A.RESUABR,NVL(B.SALVEN,0) SALVEN,NVL(B.SALPEN,0) SALPEN,NVL(B.SALTOT,0) SALTOT,NVL(REGISTROS,0) REGISTROS FROM COB914 A, ' +
      '(SELECT PROVISID,RESUABR,IDCONCNT,SUM(NVL(SALVEN,0)) SALVEN,SUM(NVL(SALPEN,0)) SALPEN,NVL(SUM(SALTOT),0) SALTOT,COUNT(*) REGISTROS ' +
      'FROM SAL000 A,COB914 B WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND A.IDCONCNT=B.RESUMEID(+) GROUP BY PROVISID,RESUABR,IDCONCNT ORDER BY PROVISID) B WHERE A.RESUMEID=B.IDCONCNT(+) ORDER BY A.PROVISID) ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
// Inicio: HPP_201006_COB POR JCARBONEL
{
      xSQL := 'SELECT SUM(SALVEN)/SUM(SALTOT) INDMOR FROM ' +
}
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket
      xSQL := 'SELECT case when SUM(SALTOT)=0 then 0.00 else round(SUM(SALVEN)/SUM(SALTOT),4) end INDMOR FROM ' +
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
// Fin: HPP_201006_COB POR JCARBONEL
         '(SELECT RESUABR,SALVEN,SALPEN,SALTOT,REGISTROS FROM (SELECT A.PROVISID,RESUMEID,A.RESUABR,NVL(B.SALVEN,0) SALVEN,NVL(B.SALPEN,0) SALPEN,NVL(B.SALTOT,0) SALTOT,NVL(REGISTROS,0) REGISTROS FROM COB914 A, ' +
         '(SELECT PROVISID,RESUABR,IDCONCNT,SUM(NVL(SALVEN,0)) SALVEN,SUM(NVL(SALPEN,0)) SALPEN,NVL(SUM(SALTOT),0) SALTOT,COUNT(*) REGISTROS ' +
         'FROM SAL000 A,COB914 B WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND A.IDCONCNT=B.RESUMEID(+) GROUP BY PROVISID,RESUABR,IDCONCNT ORDER BY PROVISID) B WHERE A.RESUMEID=B.IDCONCNT(+) ORDER BY A.PROVISID))';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSQL);
      DM1.cdsQry5.Open;
      If DM1.cdsQry5.FieldByName('INDMOR').AsCurrency > 0 Then
      Begin
         lblIndice0.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         lblPorMor0.Caption := '(' + FloatToStrF((DM1.cdsQry5.FieldByName('INDMOR').AsCurrency * 100), ffNumber, 10, 2) + ' %)';
      End;
      DM1.cdsQry5.Close;
      TitCndCnt.Caption := 'CONDICION CONTABLE POR CREDITO, SEGUN DIAS DE ATRASO  A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
      RpCndCnt.Print;
      RpCndCnt.Cancel;
   End;
   DM1.cdsQry.Close;
   Screen.Cursor := crDefault;
End;

Procedure TfCalfCtaxCob.BitIntDevClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   xSQL := 'SELECT RESUMEDES,MOVIM,SALDOS_FT,INTERES_FV,INTERES_FP,INTERES_FT,INTERES_PM FROM (SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM,(NVL(B.MOVIM,0))*100/' + FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue)) + ' Movim_Por,NVL(B.SALDOS_FT,0) SALDOS_FT,NVL(B.SALDOS_FT,0)*100/' + FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue)) + ' SaldoTotal_Por, ' +
      'NVL(SALDOS_FV,0) SALDOS_FV,NVL(SALDOS_FP,0) SALDOS_FP,NVL(B.SALDO_CB,0) SALDO_CB, ' +
      'NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB,NVL(B.TOTPROV,0) TOTPROV,NVL(B.INTERES_FV,0) INTERES_FV, NVL(INTERES_FP,0) INTERES_FP,NVL(INTERES_FT,0) INTERES_FT ,NVL(INTERES_PM,0) INTERES_PM ' +
      'FROM COB113 A,(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP, ' +
      'SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, ' +
      'MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV, SUM(NVL(INTERES_FV,0)) INTERES_FV, SUM(NVL(INTERES_FP,0)) INTERES_FP, ' +
      'SUM(NVL(INTERES_FT,0)) INTERES_FT ,SUM(NVL(INTERES_PM,0)) INTERES_PM   ' +
      'FROM CFC000,COB113 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CFC000.CFC_F=COB113.RESUMEID(+) ' +
   'GROUP BY CFC_F,RESUMEDES) B WHERE A.RESUMEID=B.CFC(+) ORDER BY A.P_NC)';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      ppLbltit01.Caption := 'CALIFICACION DE DEUDORES Y EXIGENCIA DE PROVISIONES  A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
      RepIntDev.Print;
      RepIntDev.Cancel;
   End
   Else
   Begin
      MessageDlg(' No Existe Información Procesada Para Ese Periodo ', mtError, [mbOk], 0);
      Exit;
   End;
   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TfCalfCtaxCob.rgTipoResumenClick(Sender: TObject);
Begin
   pnlOficinas.Visible := (rgTipoResumen.ItemIndex = 1);
   pnlUgel.Visible := (rgTipoResumen.ItemIndex = 2);
   pnlOficinas.Enabled := pnlOficinas.Visible;
   pnlUgel.Enabled := pnlUgel.Visible;
End;

(******************************************************************************)

Procedure TfCalfCtaxCob.dblcdUProChange(Sender: TObject);
Begin
   If Not DM1.cdsUPro.Locate('UPROID', VarArrayof([self.dblcdUPro.text]), []) Then
      If Not dblcdUPro.Focused Then dblcdUPro.Text := '';
   dblcdUPago.Text := '';
   dblcdUSE.Text := '';
   filtrarUPago(self.dblcdUPro.text);
End;

(******************************************************************************)

Procedure TfCalfCtaxCob.dblcdUPagoChange(Sender: TObject);
Begin
   If Not DM1.cdsUPago.Locate('UPAGOID', VarArrayof([self.dblcdUPago.text]), []) Then
      If Not dblcdUPago.Focused Then dblcdUPago.Text := '';
   dblcdUSE.Text := '';
   filtrarUSE(DM1.cdsUPro.fieldbyname('UPROID').AsString, dblcdUPago.text);
End;

(******************************************************************************)

Procedure TfCalfCtaxCob.dblcdUseChange(Sender: TObject);
Begin
   If DM1.cdsUses.Locate('USEID', VarArrayof([self.dblcdUse.text]), []) Then
      EdtUseNom.Text := DM1.cdsUses.FieldByName('USENOM').AsString
   Else
   Begin
      If Not dblcdUse.Focused Then dblcdUse.Text := '';
      self.EdtUseNom.text := '';
   End;
End;

(******************************************************************************)

Procedure TfCalfCtaxCob.filtrarUPago(IUproId: String);
Begin
   DM1.cdsUPago.Filtered := false;
   DM1.cdsUPago.Filter := 'UPROID=' + quotedstr(IUproid);
   DM1.cdsUPago.Filtered := true;
End;

(******************************************************************************)

Procedure TfCalfCtaxCob.filtrarUSE(IUProId: String; IUPagoId: String);
Begin
   DM1.cdsUSES.Filtered := false;
   DM1.cdsUSES.Filter := 'UPROID=' + quotedstr(IUProId) + ' AND UPAGOID=' + quotedstr(IUPagoId);
   DM1.cdsUSES.Filtered := true;
End;

(******************************************************************************)

Procedure TfCalfCtaxCob.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.Filter := '';
   DM1.cdsMGrupo.IndexFieldNames := '';
   DM1.cdsMGrupo.Filtered := False;

   DM1.cdsModelo.Close;
   DM1.cdsModelo.Filter := '';
   DM1.cdsModelo.IndexFieldNames := '';
   DM1.cdsModelo.Filtered := False;

   DM1.cdsConcre.Close;
   DM1.cdsConcre.Filter := '';
   DM1.cdsConcre.IndexFieldNames := '';
   DM1.cdsConcre.Filtered := False;

   DM1.cdsOfDes.Close;
   DM1.cdsOfDes.Filter := '';
   DM1.cdsOfDes.IndexFieldNames := '';
   DM1.cdsOfDes.Filtered := False;

   DM1.cdsUSES.Close;
   DM1.cdsUSES.Filter := '';
   DM1.cdsUSES.IndexFieldNames := '';
   DM1.cdsUSES.Filtered := False;

   DM1.cdsUPago.Close;
   DM1.cdsUPago.Filter := '';
   DM1.cdsUPago.IndexFieldNames := '';
   DM1.cdsUPago.Filtered := False;

   DM1.cdsUPro.Close;
   DM1.cdsUPro.Filter := '';
   DM1.cdsUPro.IndexFieldNames := '';
   DM1.cdsUPro.Filtered := False;

   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.Filter := '';
   DM1.cdsDetalle.IndexFieldNames := '';
   DM1.cdsDetalle.Filtered := False;

   DM1.cdsQry.Close;
   DM1.cdsQry.Filter := '';
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.Filtered := False;

   DM1.cdsTRela.Close;
   DM1.cdsTRela.Filter := '';
   DM1.cdsTRela.IndexFieldNames := '';
   DM1.cdsTRela.Filtered := False;

   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.Filter := '';
   DM1.cdsGradoI.IndexFieldNames := '';
   DM1.cdsGradoI.Filtered := False;

   DM1.cdsCredito.Close;
   DM1.cdsCredito.Filter := '';
   DM1.cdsCredito.IndexFieldNames := '';
   DM1.cdsCredito.Filtered := False;

   DM1.cdsQry6.Close;
   DM1.cdsQry6.Filter := '';
   DM1.cdsQry6.IndexFieldNames := '';
   DM1.cdsQry6.Filtered := False;

   DM1.cdsQry5.Close;
   DM1.cdsQry5.Filter := '';
   DM1.cdsQry5.IndexFieldNames := '';
   DM1.cdsQry5.Filtered := False;

   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter := '';
   DM1.cdsReporte.IndexFieldNames := '';
   DM1.cdsReporte.Filtered := False;

   Action := caFree;
End;

Procedure TfCalfCtaxCob.BitConUgeClick(Sender: TObject);
Var
   xSQL: String;
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
   xasotipid: String;
// fin: HPP_200938_COB
Begin
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
// se añade el radiobutton rgtipaso
// Se selecciona el tipo de asociado
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
// fin: HPP_200938_COB

   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   rgTipoResumen.ItemIndex := 0;
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
   {
   If chkCob.Checked Then
   Begin
      xSQL := 'select UPROID, UPRONOM,UPAGOID, UPAGONOM,   USEID, USENOM,   SALDOS_FT, '
         + '       SALDOS_FV,INDICE, PORIND '
         + 'from ( '
         + 'SELECT UPROID, UPRONOM,UPAGOID, UPAGONOM,'
         + '   USEID, USENOM,'
         + '   SALDOS_FT, NVL(SALDOS_FV,0) SALDOS_FV,'
         + '   NVL(INDICE,0) INDICE, NVL(PORIND,0) PORIND'
         + ' FROM (SELECT A.UPROID, C.UPRONOM,'
         + '          A.UPAGOID, D.UPAGONOM,'
         + '          A.USEID, E.USENOM,'
         + '          A.SALDOS_FT,A.SALDOS_FV,'
         + '          CASE WHEN A.SALDOS_FV=0 THEN 0 ELSE (A.SALDOS_FV/SALDOS_FT) END INDICE,'
         + '          CASE WHEN SALDOS_FT=0 THEN 0 ELSE (A.SALDOS_FV/SALDOS_FT*100) END PORIND'
         + '       FROM (SELECT UPROID,UPAGOID,USEID,'
         + '                SUM(NVL(SALDOS_FT,0)) SALDOS_FT,'
         + '                sum(case when CFC_F<>''0'' then NVL(SALDOS_FT,0) else 0 end) SALDOS_FV'
         + '             FROM CFC000'
         + '             WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
      + xasotipid
// fin: HPP_200938_COB
      + '             GROUP BY UPROID,UPAGOID,USEID) A,'
         + ' APO102 C, APO103 D, APO101 E'
         + ' WHERE C.UPROID(+) = A.UPROID'
         + '       and D.UPROID(+) = A.UPROID and D.UPAGOID(+) = A.UPAGOID'
         + '       and E.UPROID(+) = A.UPROID and E.UPAGOID(+) = A.UPAGOID and E.USEID(+) = A.USEID) '
         + ')XX '
         + 'order by UPROID asc, PORIND desc ';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSQL);
      DM1.cdsReporte.Open;
      If DM1.cdsReporte.RecordCount > 0 Then
      Begin
         xSQL := 'SELECT SALDOS_FT,SALDOS_FV,SALDOS_FV/SALDOS_FT INDMOR,SALDOS_FV/SALDOS_FT*100 PORMOR '
            + 'FROM (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FT '
            + '      FROM CFC000 '
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
         + xasotipid
            + ') A, '
// fin: HPP_200938_COB
         + '     (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FV '
            + '      FROM CFC000 '
            + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         + xasotipid
// fin: HPP_200938_COB
         + '        AND CFC_F<>''0'' ) B ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            IndMorCob02.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
            PorMorCob02.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
            TituloInd02.Caption := 'INDICE DE MOROSIDAD POR UGEL - ' + Trim(lblNomMes.Caption) + ' - ' + Trim(dbsAnoIni.Text);
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
            pplAsotipidIndMor2.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
// fin: HPP_200938_COB
            RepIndMor2.Print;
            RepIndMor2.Cancel;
         End;
      End;
      DM1.cdsReporte.Close;
      Screen.Cursor := crDefault;
   End //SUM(NVL(SALDOS_FV,0))
   Else // sin check
   Begin
   }
// fin: HPP_201006_COB
      xSQL := 'select UPROID,UPRONOM,UPAGOID,UPAGONOM,USEID,USENOM,INDMOR,PORMOR,INDPRO, PORPRO '
         + 'from ( '
         + 'SELECT a.UPROID, C.UPRONOM, '
         + '  a.UPAGOID, D.UPAGONOM, '
         + '  a.USEID, E.USENOM, '
         + '  round(CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE (SUM(SALDOS_FV)/SUM(SALDOS_FT)) END,5) INDMOR, '
         + '  round(CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE (SUM(SALDOS_FV)/SUM(SALDOS_FT)*100) END,5) PORMOR, '
         + '  round(CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE (SUM(TOTPROV)/SUM(SALDOS_FV)) END,5) INDPRO, '
         + '  round(CASE WHEN SUM(NVL(SALDOS_FV,0))=0 THEN SUM(0) ELSE (SUM(TOTPROV)/SUM(SALDOS_FV)*100) END,5)  PORPRO '
         + 'FROM (SELECT UPROID,UPAGOID,USEID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
         + '        SUM(NVL(SALDOS_FV,0))  SALDOS_FV, SUM(NVL(SALDOS_FP,0)) SALDOS_FP, SUM(NVL(SALDO_CB,0)) SALDO_CB, '
         + '        SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
         + '        MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
         + '        (SUM(NVL(SALDO_CB,0))*MAX(P_CB)) /MAX(100) + (SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV '
         + '      FROM CFC000,COB113 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
      + xasotipid
// fin: HPP_200938_COB
      + '            AND CFC000.CFC_F=COB113.RESUMEID(+) '
         + '      GROUP BY CFC000.UPROID,CFC000.UPAGOID,CFC000.USEID,CFC_F,RESUMEDES) A, '
         + '  APO102 C, APO103 D, APO101 E '
         + 'WHERE C.UPROID(+) = A.UPROID '
         + '      and D.UPROID(+) = A.UPROID and D.UPAGOID(+) = A.UPAGOID '
         + '      and E.UPROID(+) = A.UPROID and E.UPAGOID(+) = A.UPAGOID and E.USEID(+) = A.USEID '
         + 'GROUP BY a.UPROID, C.UPRONOM, '
         + '         a.UPAGOID, D.UPAGONOM, '
         + '         a.USEID, E.USENOM '
         + ')XX '
         + 'order by UPROID asc, INDMOR desc';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSQL);
      DM1.cdsReporte.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsReporte.RecordCount > 0 Then
      Begin
         Screen.Cursor := crHourglass;
         LblTitulo3b.Caption := 'INDICE DE MOROSIDAD Y PROVISION POR UGEL - ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;

// Inicio: HPP_201006_COB POR JCARBONEL
{
         xSQL := 'SELECT round(SUM(SALDOS_FV)/SUM(SALDOS_FT),5) INDMOR,round(SUM(SALDOS_FV)/SUM(SALDOS_FT)*100,5) PORMOR, '
            + '       round(SUM(TOTPROV)/SUM(SALDOS_FV),5) INDPRO,round(SUM(TOTPROV)/SUM(SALDOS_FV)*100,5) PORPRO '
}
         xSQL := 'SELECT case when SUM(SALDOS_FT)=0 then 0.00 else round(SUM(SALDOS_FV)/SUM(SALDOS_FT),5) end INDMOR, '
                +'       case when SUM(SALDOS_FT)=0 then 0.00 else round(SUM(SALDOS_FV)/SUM(SALDOS_FT)*100,5) end PORMOR, '
                +'       case when SUM(SALDOS_FV)=0 then 0.00 else round(SUM(TOTPROV)/SUM(SALDOS_FV),5) end INDPRO, '
                +'       case when SUM(SALDOS_FV)=0 then 0.00 else round(SUM(TOTPROV)/SUM(SALDOS_FV)*100,5) end PORPRO '
// Fin: HPP_201006_COB POR JCARBONEL
            + 'FROM (SELECT CFC000.OFDESID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
            + '             SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV, '
            + '             SUM(NVL(SALDOS_FP,0)) SALDOS_FP, SUM(NVL(SALDO_CB,0)) SALDO_CB, '
            + '             SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC, '
            + '             round((SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100,5) PORNC, '
            + '             MAX(P_CB) P_CB,round((SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100,5) PORCB, '
            + '             round((SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100),2) TOTPROV '
            + '      FROM CFC000,COB113 '
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
         + xasotipid //SAR2009-0715 por IREVILLA
            + '      AND CFC000.CFC_F=COB113.RESUMEID(+) '
// fin: HPP_200938_COB
         + '      GROUP BY CFC000.OFDESID,CFC_F,RESUMEDES) A ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         Screen.Cursor := crDefault;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            lblIndMor3b.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
            lblrPorMor3b.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
            lblIndPro3b.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDPRO').AsCurrency, ffNumber, 10, 5);
            lblrPorPro3b.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORPRO').AsCurrency, ffNumber, 10, 2);
         End;
         DM1.cdsReporte.Close;
// inicio: HPP_200938_COB
// Memorándum 792-2009-DM-COB - SAR-2009-0715 - DAD-IR-2009-0150
         pplasotipidRepCons02.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
// fin: HPP_200938_COB
         RepCons02.Print;
         RepCons02.Cancel;
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
      End;
      DM1.cdsReporte.Close;
//   End;
   Screen.Cursor := crDefault;
End;
// fin: HPP_201006_COB

// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
Procedure TfCalfCtaxCob.BitResClfCar_InternoClick(Sender: TObject);
Var
   xSQL: String;
   xReg: Integer;
   xTot: Currency;
   xasotipid: String;
Begin
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket
   xSQL := 'SELECT A.CODIGO,RESUMEID,RESUMEDES,MOVIM, '
      + '       CASE WHEN NVL(MOVIM_P,0)=0 THEN 0 ELSE round(MOVIM*100/NVL(MOVIM_P,0),4) END AS MOVIM_POR, '
      + '       SALDOS_FT, '
      + '       CASE WHEN NVL(SALDOS_FT_P,0)=0 THEN 0 ELSE round(SALDOS_FT*100/NVL(SALDOS_FT_P,0),4) END AS SALDOS_FT_POR, '
      + '       SALDOS_FV, '
      + '       CASE WHEN NVL(SALDOS_FV_P,0)=0 THEN 0 ELSE round(SALDOS_FV*100/NVL(SALDOS_FV_P,0),4) END AS SALDOS_FV_POR, '
      + '       SALDOS_FP, '
      + '       CASE WHEN NVL(SALDOS_FP_P,0)=0 THEN 0 ELSE round(SALDOS_FP*100/NVL(SALDOS_FP_P,0),4) END AS SALDOS_FP_POR '
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
      + 'FROM (SELECT CODIGO,RESUMEID,RESUMEDES,MOVIM,SALDOS_FT,SALDOS_FV,SALDOS_FP,ROWNUM ORDEN '
      + '      FROM (SELECT CODIGO,RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, NVL(B.SALDOS_FT,0) SALDOS_FT, '
      + '                   NVL(SALDOS_FV,0) SALDOS_FV,NVL(SALDOS_FP,0) SALDOS_FP '
      + '            FROM COB113 A,(SELECT ''01'' CODIGO,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
      + '                                  SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV, '
      + '                                  SUM(NVL(SALDOS_FP,0)) SALDOS_FP '
      + '                           FROM CFC000,COB113 '
      + '                           WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + xasotipid
      + '                             AND CFC000.CFC_F=COB113.RESUMEID(+) '
      + '                           GROUP BY CFC_F,RESUMEDES) B '
      + '            WHERE A.RESUMEID=B.CFC(+) '
      + '            ORDER BY A.P_NC '
      + '            ) '
      + '      ) A, '
      + '     (SELECT CODIGO,MOVIM_P,SALDOS_FT_P,SALDOS_FV_P,SALDOS_FP_P '
      + '      FROM (SELECT ''01'' CODIGO, SUM(NVL(B.MOVIM,0)) MOVIM_P, SUM(NVL(B.SALDOS_FT,0)) SALDOS_FT_P, '
      + '                   SUM(NVL(SALDOS_FV,0)) SALDOS_FV_P, '
      + '                   SUM(NVL(SALDOS_FP,0)) SALDOS_FP_P '
      + '            FROM COB113 A,(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
      + '                                  SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
      + '                                  SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP '
      + '                           FROM CFC000,COB113 '
      + '                           WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + '                             AND CFC000.CFC_F=COB113.RESUMEID(+) '
      + '                           GROUP BY CFC_F,RESUMEDES) B '
      + '            WHERE A.RESUMEID=B.CFC(+) '
      + '            ) '
      + '      ) B '
      + 'WHERE A.CODIGO=B.CODIGO(+) '
      + 'ORDER BY ORDEN  ';
   lblOfiDesx.Caption := 'TODAS LAS OFICINAS DESCONCENTRADAS';
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.DataRequest(xSQL);
   DM1.cdsDetalle.Open;
   If DM1.cdsDetalle.RecordCount > 0 Then
   Begin
// Inicio: HPP_201006_COB POR JCARBONEL
{
      xSQL := 'SELECT SALDOS_FT,SALDOS_FV,SALDOS_FV/SALDOS_FT INDMOR,SALDOS_FV/SALDOS_FT*100 PORMOR '
}
// Inicio: SPP_201402_COB             :  Modificación por Cambio de Socket
      xSQL := 'SELECT SALDOS_FT,SALDOS_FV, '
             +'       case when SALDOS_FT=0 then 0.00 else round(SALDOS_FV/SALDOS_FT,4) end INDMOR, '
             +'       case when SALDOS_FT=0 then 0.00 else round(SALDOS_FV/SALDOS_FT*100,4) end PORMOR '
// Fin: SPP_201402_COB                :  Modificación por Cambio de Socket
// Fin: HPP_201006_COB POR JCARBONEL
         + 'FROM (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FT '
         + '      FROM CFC000 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + '      ) A, '
         + '     (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FV '
         + '      FROM CFC000 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid
         + '        AND CFC_F<>''0'' '
         + '      ) B ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         ppLbltit01x.Caption := 'CALIFICACION DE DEUDORES DE LA CARTERA DE CREDITOS DE CONSUMO A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text + ' - USO INTERNO DE COBRANZAS';
         IndMorCob.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         PorMorCob.Caption := '(' + FloatToStrF(DM1.cdsQry.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2) + ' %)';
         ppltipoaso.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
         ppRepClfcar01.Print;
         ppRepClfcar01.Cancel;
      End;
      DM1.cdsQry.Close;
   End;
   Screen.Cursor := crDefault;
End;

Procedure TfCalfCtaxCob.BitConOfi_InternoClick(Sender: TObject);
Var
   xSQL: String;
   xasotipid: String;
Begin
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   rgTipoResumen.ItemIndex := 0;

// Inicio: SPP_201402_COB             :  Modificación por Cambio de Socket
   xSQL := 'SELECT OFDESID, OFDESNOM, SALDOS_FT, NVL(SALDOS_FV,0) SALDOS_FV,'
      + '    NVL(INDICE,0) INDICE, NVL(PORIND,0) PORIND'
      + ' FROM (SELECT A.OFDESID,C.OFDESNOM,SALDOS_FT,B.SALDOS_FV, '
      + ' CASE WHEN B.SALDOS_FV=0 THEN 0 ELSE round((B.SALDOS_FV/SALDOS_FT),4) END INDICE, '
      + ' CASE WHEN SALDOS_FT=0 THEN 0 ELSE round((B.SALDOS_FV/SALDOS_FT*100),4) END PORIND'
// Fin: SPP_201402_COB                :  Modificación por Cambio de Socket
      + ' FROM (SELECT OFDESID, SUM(NVL(SALDOS_FT,0)) SALDOS_FT FROM CFC000'
      + ' WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + xasotipid
      + ' GROUP BY OFDESID) A,'
      + '(SELECT OFDESID,SUM(NVL(SALDOS_FT,0)) SALDOS_FV FROM CFC000 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + xasotipid
      + '  AND CFC_F<>''0'' GROUP BY OFDESID) B, APO110 C '
      + ' WHERE A.OFDESID=B.OFDESID(+)  AND A.OFDESID=C.OFDESID(+) ) ORDER BY PORIND DESC ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   If DM1.cdsQry6.RecordCount > 0 Then
   Begin
// Inicio: HPP_201006_COB POR JCARBONEL
{
      xSQL := 'SELECT SALDOS_FT,SALDOS_FV,SALDOS_FV/SALDOS_FT INDMOR,SALDOS_FV/SALDOS_FT*100 PORMOR '
}
// Inicio: SPP_201402_COB             :  Modificación por Cambio de Socket
      xSQL := 'SELECT SALDOS_FT, '
         + '          SALDOS_FV, '
         + '          case when SALDOS_FT=0 then 0.00 else round(SALDOS_FV/SALDOS_FT,4) end INDMOR, '
         + '          case when SALDOS_FT=0 then 0.00 else round(SALDOS_FV/SALDOS_FT*100,4) end PORMOR '
// Fin: SPP_201402_COB                :  Modificación por Cambio de Socket
// Fin: HPP_201006_COB POR JCARBONEL
         + 'FROM (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FT '
         + '      FROM CFC000 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid + ') A, '
         + '     (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FV '
         + '      FROM CFC000 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid
         + '        AND CFC_F<>''0'' ) B ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         IndMorCob01.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         PorMorCob01.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
         TituloInd01.Caption := 'INDICE DE MOROSIDAD POR OFICINA DESCONCENTRADA - ' + Trim(lblNomMes.Caption) + ' - ' + Trim(dbsAnoIni.Text);
         pplTipAsoRepIndMor.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
         RepIndMor.Print;
         RepIndMor.Cancel;
      End;
   End;
   DM1.cdsQry6.Close;
   Screen.Cursor := crDefault;
End;

Procedure TfCalfCtaxCob.BitConUge_InternoClick(Sender: TObject);
Var
   xSQL: String;
   xasotipid: String;
Begin
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   rgTipoResumen.ItemIndex := 0;

   xSQL := 'select UPROID, UPRONOM,UPAGOID, UPAGONOM,   USEID, USENOM,   SALDOS_FT, '
      + '       SALDOS_FV,INDICE, PORIND '
      + 'from ( '
      + 'SELECT UPROID, UPRONOM,UPAGOID, UPAGONOM,'
      + '   USEID, USENOM,'
      + '   SALDOS_FT, NVL(SALDOS_FV,0) SALDOS_FV,'
      + '   NVL(INDICE,0) INDICE, NVL(PORIND,0) PORIND'
      + ' FROM (SELECT A.UPROID, C.UPRONOM,'
      + '          A.UPAGOID, D.UPAGONOM,'
      + '          A.USEID, E.USENOM,'
      + '          A.SALDOS_FT,A.SALDOS_FV,'
// Inicio: SPP_201402_COB               :  Modificación por Cambio de Socket
      + '          CASE WHEN A.SALDOS_FV=0 THEN 0 ELSE round((A.SALDOS_FV/SALDOS_FT),4) END INDICE,'
      + '          CASE WHEN SALDOS_FT=0 THEN 0 ELSE round((A.SALDOS_FV/SALDOS_FT*100),4) END PORIND'
// Fin: SPP_201402_COB                  :  Modificación por Cambio de Socket
      + '       FROM (SELECT UPROID,UPAGOID,USEID,'
      + '                SUM(NVL(SALDOS_FT,0)) SALDOS_FT,'
      + '                sum(case when CFC_F<>''0'' then NVL(SALDOS_FT,0) else 0 end) SALDOS_FV'
      + '             FROM CFC000'
      + '             WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + xasotipid
      + '             GROUP BY UPROID,UPAGOID,USEID) A,'
      + ' APO102 C, APO103 D, APO101 E'
      + ' WHERE C.UPROID(+) = A.UPROID'
      + '       and D.UPROID(+) = A.UPROID and D.UPAGOID(+) = A.UPAGOID'
      + '       and E.UPROID(+) = A.UPROID and E.UPAGOID(+) = A.UPAGOID and E.USEID(+) = A.USEID) '
      + ')XX '
      + 'order by UPROID asc, PORIND desc ';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   If DM1.cdsReporte.RecordCount > 0 Then
   Begin
// Inicio: HPP_201006_COB POR JCARBONEL
{
      xSQL := 'SELECT SALDOS_FT,SALDOS_FV,SALDOS_FV/SALDOS_FT INDMOR,SALDOS_FV/SALDOS_FT*100 PORMOR '
}
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket
      xSQL := 'SELECT SALDOS_FT,SALDOS_FV, '
             +'       case when SALDOS_FT=0 then 0.00 else round(SALDOS_FV/SALDOS_FT,4) end INDMOR, '
             +'       case when SALDOS_FT=0 then 0.00 else round(SALDOS_FV/SALDOS_FT*100,4) end PORMOR '
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
// Fin: HPP_201006_COB POR JCARBONEL
         + 'FROM (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FT '
         + '      FROM CFC000 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid
         + ') A, '
         + '     (SELECT SUM(NVL(SALDOS_FT,0)) SALDOS_FV '
         + '      FROM CFC000 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid
         + '        AND CFC_F<>''0'' ) B ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         IndMorCob02.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         PorMorCob02.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
         TituloInd02.Caption := 'INDICE DE MOROSIDAD POR UGEL - ' + Trim(lblNomMes.Caption) + ' - ' + Trim(dbsAnoIni.Text);
         pplAsotipidIndMor2.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
         RepIndMor2.Print;
         RepIndMor2.Cancel;
      End;
   End;
   DM1.cdsReporte.Close;
   Screen.Cursor := crDefault;
End;

Procedure TfCalfCtaxCob.BitResClfCar_RefInternoClick(Sender: TObject);
Var
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
   xSQL,xWhere: String;
//Final HPC_201713_COB
   xReg: Integer;
   xTot: Currency;
   xAsoTipId: String;
Begin
  // Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
   xAsoTipId := '';
   If rgtipaso.ItemIndex = 1 Then xAsoTipId := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xAsoTipId := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xAsoTipId := ' AND ASOTIPID = ''CO''';
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   xTot := 0;
   xReg := 0;
   //Inicio : HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB

   {xSQL := 'SELECT SUM(NVL(SALDOS_RT,0)) TOT,COUNT(*) REG FROM CFC000 ' +
      'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + ' AND CFC000.SALDOS_RT > 0 AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG ' +
   'FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' ' +
      'AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' ) ';}
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
   {xSQL := 'SELECT SUM(NVL(SALDOS_FT,0)) TOT,COUNT(1) REG FROM CFC000 ' +
           'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) +  xAsoTipId +' AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG ' +
           'FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' ' +
           ' AND SUBSTR(CREDID,9,1)=''R'' ) ';}
    Case rgTipAso.ItemIndex Of
                0:Begin
                    xWhere:=' AND EXISTS (SELECT ASOID,CREDID FROM SAL000'+
                              ' WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' '+
                              ' AND CFC000.ASOID=ASOID AND SUBSTR(CREDID,9,1)=''R'') ';
                  End;
                1:Begin
                    xWhere:=' AND EXISTS (SELECT ASOID,CREDID FROM SAL000'+
                              ' WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' '+
                              ' AND CFC000.ASOID=ASOID AND SUBSTR(CREDID,9,1)=''R'') AND ASOTIPID=''DO'' ';
                  End;
                2:Begin
                    xWhere:=' AND EXISTS (SELECT ASOID,CREDID FROM SAL000'+
                              ' WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' '+
                              ' AND CFC000.ASOID=ASOID AND SUBSTR(CREDID,9,1)=''R'') AND ASOTIPID=''CE'' ';
                  End;
                3:Begin
                    xWhere:=' AND EXISTS (SELECT ASOID,CREDID FROM SAL000'+
                              ' WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' '+
                              ' AND CFC000.ASOID=ASOID AND SUBSTR(CREDID,9,1)=''R'') AND ASOTIPID=''CO'' ';
                  End;
     End;
   xSQL:='SELECT SUM(NVL(SALDOS_FT,0)) TOT,SUM(MOVIM) REG '+
                     ' FROM( '+
                     'SELECT '+
                     '        RESUMEID, '+
                     '        RESUMEDES, '+
                     '        SUM(MOVIM) MOVIM, '+
                     '        ROUND((NVL(SUM(MOVIM),0))*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue))+',4) Movim_Por, '+
                     '        SUM(SALDOS) SALDOS_FT, '+
                     '        ROUND(NVL(SUM(SALDOS),0)*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue))+',4) SaldoTotal_Por, '+
                     '        SUM(SALDOS_FV) SALDOS_FV, '+
                     '        SUM(SALDOS_FP) SALDOS_FP, '+
                     '        SUM(SALDO_CB) SALDO_CB, '+
                     '        SUM(SALDO_NC) SALDO_NC, '+
                     '        P_NC, '+
                     '        SUM(PORNC) PORNC, '+
                     '        P_CB, '+
                     '        SUM(PORCB) PORCB, '+
                     '        SUM(TOTPROV) TOTPROV '+
                     ' FROM '+
                     ' ( '+
                     'SELECT RESUMEID, '+
                     'RESUMEDES, '+
                     'ROUND(NVL(D.MOVIM, 0), 4) MOVIM, '+
                     'ROUND(NVL(D.SALDOS, 0), 4) SALDOS, '+
                     'ROUND(NVL(D.SALDOS_FP, 0), 4) SALDOS_FP, '+
                     'ROUND(NVL(D.SALDOS_FV, 0), 4) SALDOS_FV, '+
                     'ROUND(NVL(D.SALDO_CB, 0), 4) SALDO_CB, '+
                     'ROUND(NVL(D.SALDO_NC, 0), 4) SALDO_NC, '+
                     'ROUND(A.P_NC, 4) P_NC, '+
                     'ROUND(NVL(PORNC, 0), 4) PORNC, '+
                     'ROUND(A.P_CB, 4) P_CB, '+
                     'ROUND(NVL(D.PORCB, 0), 4) PORCB, '+
                     'ROUND(NVL(D.TOTPROV, 0), 4) TOTPROV '+
                     'FROM COB113 A, '+
                     '(SELECT C.ASOID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,C.PORCENTAJE,C.SALTOREF,SALDOS_FT, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN SUM(NVL(C.SALTOREF, 0))  ELSE SUM(NVL(SALDOS_FT, 0)) END SALDOS, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN SUM(NVL(C.SALDOS_P, 0)) ELSE SUM(NVL(SALDOS_FP, 0)) END SALDOS_FP, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN (SUM(NVL(C.SALDOS_V, 0))) ELSE SUM(NVL(SALDOS_FV, 0)) END SALDOS_FV, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_CB, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_CB, 0)) END SALDO_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_NC, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_NC, 0)) END SALDO_NC, '+
                             'MAX(P_NC) P_NC, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 END PORNC, '+
                             'MAX(P_CB) P_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 END PORCB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100))*(C.PORCENTAJE),2) '+
                             'ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) END TOTPROV '+
                             'FROM CFC000, COB113 , '+
                             '( '+
                              'SELECT A.ASOID,A.SALDOS,B.SALTOREF, B.SALDOS_V,B.SALDOS_P, '+
                              ' CASE WHEN A.SALDOS=B.SALTOREF THEN 1 '+
                              '   WHEN A.SALDOS > B.SALTOREF THEN ROUND((B.SALTOREF/A.SALDOS),4) '+
                              ' END PORCENTAJE '+
                              ' FROM '+
                              ' (SELECT ASOID,CFC_F CFC,RESUMEDES CFCDES, '+
                                              ' COUNT(*) MOVIM, '+
                                              ' SUM(NVL(SALDOS_FT, 0)) SALDOS, '+
                                              ' SUM(NVL(SALDOS_FP, 0)) SALDOS_FP, '+
                                              ' SUM(NVL(SALDOS_FV, 0)) SALDOS_FV, '+
                                              ' SUM(NVL(SALDO_CB, 0)) SALDO_CB, '+
                                              ' SUM(NVL(SALDO_NC, 0)) SALDO_NC, '+
                                              ' MAX(P_NC) P_NC, '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 PORNC, '+
                                              ' MAX(P_CB) P_CB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 PORCB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) TOTPROV '+
                                         ' FROM CFC000, COB113 WHERE PERIODO ='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+xWhere+' '+
                                         ' GROUP BY ASOID,CFC_F, RESUMEDES) A, '+
                                         '( '+
                                         ' SELECT '+
                                         ' ASOID,SUM(SALTOT) SALTOREF, SUM(SALDOS_V) SALDOS_V, SUM(SALDOS_P) SALDOS_P FROM '+
                                         ' (SELECT ASOID,CREDID, NVL(SALTOT,0) SALTOT, NVL(SALVEN, 0) SALDOS_V, NVL(SALPEN, 0) SALDOS_P FROM SAL000 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' AND SUBSTR(CREDID,9,1)=''R'' '+
                                         ' ) '+
                                         ' GROUP BY ASOID '+
                                         ' )B '+
                                         ' WHERE A.ASOID=B.ASOID '+
                                         ' ) C '+
                                         ' WHERE PERIODO = '+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.ASOID = C.ASOID '+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+ xWhere +
                                         ' GROUP BY C.ASOID,C.SALTOREF,C.PORCENTAJE,SALDOS_FT,CFC_F, RESUMEDES) D  '+
                                 ' WHERE A.RESUMEID = D.CFC(+) '+
                                 ' ORDER BY A.P_NC'+
                                 ' ) '+
                                 ' GROUP BY RESUMEID, RESUMEDES , P_NC, P_CB)';
//Final HPC_201713_COB
   DM1.cdsCtasBco.Close;
   DM1.cdsCtasBco.DataRequest(xSQL);
   DM1.cdsCtasBco.Open;
   If DM1.cdsCtasBco.RecordCount = 1 Then
   Begin
      xReg := DM1.cdsCtasBco.FieldByName('REG').AsInteger;
      xTot := DM1.cdsCtasBco.FieldByName('TOT').AsFloat;
   End;
   DM1.cdsCtasBco.Close;
   If rgTipoResumen.ItemIndex = 0 Then // Tipo de Resumen = TODOS
   Begin
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
     // Inicio: HPP_201006_COB POR JCARBONEL
{
      xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM,(NVL(B.MOVIM,0))*100/' + FloatToStr(xReg) + ' Movim_Por, '
         + '         NVL(B.SALDOS_RT,0) SALDOS_FT, '
         + '         NVL(B.SALDOS_RT,0)*100/' + FloatToStr(xTot) + ' SaldoTotal_Por, '
}
// Inicio: SPP_201402_COB              :  Modificación por Cambio de Socket
{      if xReg>0 then
         xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, round((NVL(B.MOVIM,0))*100/' + FloatToStr(xReg) + ',4) Movim_Por, '
      else
         xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM,0.00 Movim_Por, ';

      xSQL := xSQL+ '         NVL(B.SALDOS_FT,0) SALDOS_FT, ';

      if xTot>0 then
         xSQL :=   xSQL+ '       round( NVL(B.SALDOS_FT,0)*100/' + FloatToStr(xTot) + ',4) SaldoTotal_Por, '
      else
         xSQL :=   xSQL+ '         0.00 SaldoTotal_Por, ';}
// Fin: SPP_201402_COB                 :  Modificación por Cambio de Socket
// Fin: HPP_201006_COB POR JCARBONEL
         {xSQL :=   xSQL
         + '         NVL(SALDOS_FV,0) SALDOS_FV, NVL(SALDOS_FP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
         + '         NVL(B.SALDO_NC,0) SALDO_NC, A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
         + '         NVL(B.TOTPROV,0) TOTPROV '
         + '    FROM COB113 A, '
         + '    (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
         + '            SUM(NVL(SALDOS_FV,0)) SALDOS_FV, SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
         + '            SUM(NVL(SALDO_CB,0)) SALDO_CB, SUM(NVL(SALDO_NC,0)) SALDO_NC, '
         + '            MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
         + '            MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
         + '           (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '
         + '     FROM CFC000,COB113 '
         + '     WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
         + '       AND CFC000.CFC_F=COB113.RESUMEID(+) '
         + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
         + '                      FROM SAL000 SAL '
         + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
         + '                       AND SAL.ASOID = CFC000.ASOID '
         + '                       AND SAL.TIPDESEID = ''10'' '
         + '                       AND SUBSTR(CREDID,9,1)=''R'' )'
         + '     GROUP BY CFC_F,RESUMEDES) B '
         + 'WHERE A.RESUMEID=B.CFC(+) '
         + 'ORDER BY A.P_NC';
         {
         + '         NVL(SALDOS_RV,0) SALDOS_FV, NVL(SALDOS_RP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
         + '         NVL(B.SALDO_NC,0) SALDO_NC, A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
         + '         NVL(B.TOTPROV,0) TOTPROV '
         + '    FROM COB113 A, '
         + '    (SELECT CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_RT,0)) SALDOS_RT, '
         + '            SUM(NVL(SALDOS_RV,0)) SALDOS_RV, SUM(NVL(SALDOS_RP,0)) SALDOS_RP, '
         + '            SUM(NVL(SALREFCUB,0)) SALDO_CB, SUM(NVL(SALREFNOCUB,0)) SALDO_NC, '
         + '            MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC, '
         + '            MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB, '
         + '           (SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV  '
         + '     FROM CFC000,COB113 '
         + '     WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
      + '       AND CFC000.CFC_R=COB113.RESUMEID(+) '
         + '       AND CFC000.SALDOS_RT > 0 '
         + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
         + '                      FROM SAL000 SAL '
         + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
         + '                       AND SAL.ASOID = CFC000.ASOID '
         + '                       AND SAL.TIPDESEID = ''10'' '
         + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'
         + '     GROUP BY CFC_R,RESUMEDES) B '
         + 'WHERE A.RESUMEID=B.CFC(+) '
         + 'ORDER BY A.P_NC';
      lblOfiDes.Caption := 'TODAS LAS OFICINAS DESCONCENTRADAS - REFINANCIADOS';}
      //Fin : HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
       xSQL:='SELECT '+
                     '        RESUMEID, '+
                     '        RESUMEDES, '+
                     '        SUM(MOVIM) MOVIM, '+
                     '        ROUND((NVL(SUM(MOVIM),0))*100/'+FloatToStr(xReg)+',4) Movim_Por, '+
                     '        SUM(SALDOS) SALDOS_FT, '+
                     '        ROUND(NVL(SUM(SALDOS),0)*100/'+FloatToStr(xTot)+',4) SaldoTotal_Por, '+
                     '        SUM(SALDOS_FV) SALDOS_FV, '+
                     '        SUM(SALDOS_FP) SALDOS_FP, '+
                     '        SUM(SALDO_CB) SALDO_CB, '+
                     '        SUM(SALDO_NC) SALDO_NC, '+
                     '        P_NC, '+
                     '        SUM(PORNC) PORNC, '+
                     '        P_CB, '+
                     '        SUM(PORCB) PORCB, '+
                     '        SUM(TOTPROV) TOTPROV '+
                     ' FROM '+
                     ' ( '+
                     'SELECT RESUMEID, '+
                     'RESUMEDES, '+
                     'ROUND(NVL(D.MOVIM, 0), 4) MOVIM, '+
                     'ROUND(NVL(D.SALDOS, 0), 4) SALDOS, '+
                     'ROUND(NVL(D.SALDOS_FP, 0), 4) SALDOS_FP, '+
                     'ROUND(NVL(D.SALDOS_FV, 0), 4) SALDOS_FV, '+
                     'ROUND(NVL(D.SALDO_CB, 0), 4) SALDO_CB, '+
                     'ROUND(NVL(D.SALDO_NC, 0), 4) SALDO_NC, '+
                     'ROUND(A.P_NC, 4) P_NC, '+
                     'ROUND(NVL(PORNC, 0), 4) PORNC, '+
                     'ROUND(A.P_CB, 4) P_CB, '+
                     'ROUND(NVL(D.PORCB, 0), 4) PORCB, '+
                     'ROUND(NVL(D.TOTPROV, 0), 4) TOTPROV '+
                     'FROM COB113 A, '+
                     '(SELECT C.ASOID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,C.PORCENTAJE,C.SALTOREF,SALDOS_FT, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN SUM(NVL(C.SALTOREF, 0))  ELSE SUM(NVL(SALDOS_FT, 0)) END SALDOS, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN SUM(NVL(C.SALDOS_P, 0)) ELSE SUM(NVL(SALDOS_FP, 0)) END SALDOS_FP, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN (SUM(NVL(C.SALDOS_V, 0))) ELSE SUM(NVL(SALDOS_FV, 0)) END SALDOS_FV, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_CB, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_CB, 0)) END SALDO_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_NC, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_NC, 0)) END SALDO_NC, '+
                             'MAX(P_NC) P_NC, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 END PORNC, '+
                             'MAX(P_CB) P_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 END PORCB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100))*(C.PORCENTAJE),2) '+
                             'ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) END TOTPROV '+
                             'FROM CFC000, COB113 , '+
                             '( '+
                              'SELECT A.ASOID,A.SALDOS,B.SALTOREF , B.SALDOS_V, B.SALDOS_P, '+
                              ' CASE WHEN A.SALDOS=B.SALTOREF THEN 1 '+
                              '   WHEN A.SALDOS > B.SALTOREF THEN ROUND((B.SALTOREF/A.SALDOS),4) '+
                              ' END PORCENTAJE '+
                              ' FROM '+
                              ' (SELECT ASOID,CFC_F CFC,RESUMEDES CFCDES, '+
                                              ' COUNT(*) MOVIM, '+
                                              ' SUM(NVL(SALDOS_FT, 0)) SALDOS, '+
                                              ' SUM(NVL(SALDOS_FP, 0)) SALDOS_FP, '+
                                              ' SUM(NVL(SALDOS_FV, 0)) SALDOS_FV, '+
                                              ' SUM(NVL(SALDO_CB, 0)) SALDO_CB, '+
                                              ' SUM(NVL(SALDO_NC, 0)) SALDO_NC, '+
                                              ' MAX(P_NC) P_NC, '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 PORNC, '+
                                              ' MAX(P_CB) P_CB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 PORCB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) TOTPROV '+
                                         ' FROM CFC000, COB113 WHERE PERIODO ='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+xWhere+' '+
                                         ' GROUP BY ASOID,CFC_F, RESUMEDES) A, '+
                                         '( '+
                                         ' SELECT '+
                                         ' ASOID,SUM(SALTOT) SALTOREF, SUM(SALDOS_V) SALDOS_V, SUM(SALDOS_P) SALDOS_P FROM '+
                                         ' (SELECT ASOID,CREDID, NVL(SALTOT,0) SALTOT, NVL(SALVEN, 0) SALDOS_V, NVL(SALPEN, 0) SALDOS_P FROM SAL000 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' AND SUBSTR(CREDID,9,1)=''R'' '+
                                         ' ) '+
                                         ' GROUP BY ASOID '+
                                         ' )B '+
                                         ' WHERE A.ASOID=B.ASOID '+
                                         ' ) C '+
                                         ' WHERE PERIODO = '+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.ASOID = C.ASOID '+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+ xWhere +
                                         ' GROUP BY C.ASOID,C.SALTOREF,C.PORCENTAJE,SALDOS_FT,CFC_F, RESUMEDES) D  '+
                                 ' WHERE A.RESUMEID = D.CFC(+) '+
                                 ' ORDER BY A.P_NC'+
                                 ' ) '+
                                 ' GROUP BY RESUMEID, RESUMEDES , P_NC, P_CB';
       lblOfiDes.Caption := 'TODAS LAS OFICINAS DESCONCENTRADAS - REFINANCIADOS';
//Final HPC_201713_COB
   End
   Else
   Begin
      If rgTipoResumen.ItemIndex = 1 Then // Tipo de Resumen = Por Oficina
      Begin
         If Length(Trim(EdtOfiDes.Text)) = 0 Then
         Begin
            MessageDlg(' Debe SELECCIONAR UNA OFICINA!!', mtError, [mbOk], 0);
            Screen.Cursor := crDefault;
            Exit;
         End;
         //Inicio : HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
         {xSQL := 'SELECT ASOID '
            + '    FROM CFC000 '
            + '   WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
         + '     AND OFDESID=' + QuotedStr(DBLkOfiDes.Text)
            + '     AND CFC000.SALDOS_RT > 0 '
            + '     AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                      FROM SAL000 SAL '
            + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                       AND SAL.ASOID = CFC000.ASOID '
            + '                       AND SAL.TIPDESEID = ''10'' '
            + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )';
         xReg := DM1.CountReg(xSQL);
         xSQL := 'SELECT NVL(SUM(NVL(SALDOS_RT,0)),0) SALDOS '
            + '    FROM CFC000 '
            + '   WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
         + '     AND OFDESID=' + QuotedStr(DBLkOfiDes.Text)
            + '     AND CFC000.SALDOS_RT > 0 '
            + '     AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                      FROM SAL000 SAL '
            + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                       AND SAL.ASOID = CFC000.ASOID '
            + '                       AND SAL.TIPDESEID = ''10'' '
            + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )';}
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
         {xSQL := 'SELECT SUM(NVL(SALDOS_FT,0)) TOT,COUNT(1) REG FROM CFC000 ' +
           'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) +  xAsoTipId +
           ' AND OFDESID=' + QuotedStr(DBLkOfiDes.Text)   +
           ' AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG ' +
           ' FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' ' +
           ' AND SUBSTR(CREDID,9,1)=''R'' ) '; }

         xSQL:='SELECT SUM(NVL(SALDOS_FT,0)) TOT,SUM(MOVIM) REG '+
                     ' FROM( '+
                     'SELECT '+
                     '        RESUMEID, '+
                     '        RESUMEDES, '+
                     '        SUM(MOVIM) MOVIM, '+
                     '        ROUND((NVL(SUM(MOVIM),0))*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue))+',4) Movim_Por, '+
                     '        SUM(SALDOS) SALDOS_FT, '+
                     '        ROUND(NVL(SUM(SALDOS),0)*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue))+',4) SaldoTotal_Por, '+
                     '        SUM(SALDOS_FV) SALDOS_FV, '+
                     '        SUM(SALDOS_FP) SALDOS_FP, '+
                     '        SUM(SALDO_CB) SALDO_CB, '+
                     '        SUM(SALDO_NC) SALDO_NC, '+
                     '        P_NC, '+
                     '        SUM(PORNC) PORNC, '+
                     '        P_CB, '+
                     '        SUM(PORCB) PORCB, '+
                     '        SUM(TOTPROV) TOTPROV '+
                     ' FROM '+
                     ' ( '+
                     'SELECT RESUMEID, '+
                     'RESUMEDES, '+
                     'ROUND(NVL(D.MOVIM, 0), 4) MOVIM, '+
                     'ROUND(NVL(D.SALDOS, 0), 4) SALDOS, '+
                     'ROUND(NVL(D.SALDOS_FP, 0), 4) SALDOS_FP, '+
                     'ROUND(NVL(D.SALDOS_FV, 0), 4) SALDOS_FV, '+
                     'ROUND(NVL(D.SALDO_CB, 0), 4) SALDO_CB, '+
                     'ROUND(NVL(D.SALDO_NC, 0), 4) SALDO_NC, '+
                     'ROUND(A.P_NC, 4) P_NC, '+
                     'ROUND(NVL(PORNC, 0), 4) PORNC, '+
                     'ROUND(A.P_CB, 4) P_CB, '+
                     'ROUND(NVL(D.PORCB, 0), 4) PORCB, '+
                     'ROUND(NVL(D.TOTPROV, 0), 4) TOTPROV '+
                     'FROM COB113 A, '+
                     '(SELECT C.ASOID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,C.PORCENTAJE,C.SALTOREF,SALDOS_FT, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN SUM(NVL(C.SALTOREF, 0))  ELSE SUM(NVL(SALDOS_FT, 0)) END SALDOS, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN SUM(NVL(C.SALDOS_P, 0)) ELSE SUM(NVL(SALDOS_FP, 0)) END SALDOS_FP, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN (SUM(NVL(C.SALDOS_V, 0))) ELSE SUM(NVL(SALDOS_FV, 0)) END SALDOS_FV, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_CB, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_CB, 0)) END SALDO_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_NC, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_NC, 0)) END SALDO_NC, '+
                             'MAX(P_NC) P_NC, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 END PORNC, '+
                             'MAX(P_CB) P_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 END PORCB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100))*(C.PORCENTAJE),2) '+
                             'ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) END TOTPROV '+
                             'FROM CFC000, COB113 , '+
                             '( '+
                              'SELECT A.ASOID,A.SALDOS,B.SALTOREF, B.SALDOS_V,B.SALDOS_P, '+
                              ' CASE WHEN A.SALDOS=B.SALTOREF THEN 1 '+
                              '   WHEN A.SALDOS > B.SALTOREF THEN ROUND((B.SALTOREF/A.SALDOS),4) '+
                              ' END PORCENTAJE '+
                              ' FROM '+
                              ' (SELECT ASOID,CFC_F CFC,RESUMEDES CFCDES, '+
                                              ' COUNT(*) MOVIM, '+
                                              ' SUM(NVL(SALDOS_FT, 0)) SALDOS, '+
                                              ' SUM(NVL(SALDOS_FP, 0)) SALDOS_FP, '+
                                              ' SUM(NVL(SALDOS_FV, 0)) SALDOS_FV, '+
                                              ' SUM(NVL(SALDO_CB, 0)) SALDO_CB, '+
                                              ' SUM(NVL(SALDO_NC, 0)) SALDO_NC, '+
                                              ' MAX(P_NC) P_NC, '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 PORNC, '+
                                              ' MAX(P_CB) P_CB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 PORCB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) TOTPROV '+
                                         ' FROM CFC000, COB113 WHERE PERIODO ='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+xWhere+' '+
                                         ' GROUP BY ASOID,CFC_F, RESUMEDES) A, '+
                                         '( '+
                                         ' SELECT '+
                                         ' ASOID,SUM(SALTOT) SALTOREF, SUM(SALDOS_V) SALDOS_V, SUM(SALDOS_P) SALDOS_P FROM '+
                                         ' (SELECT ASOID,CREDID, NVL(SALTOT,0) SALTOT, NVL(SALVEN, 0) SALDOS_V, NVL(SALPEN, 0) SALDOS_P FROM SAL000 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' AND SUBSTR(CREDID,9,1)=''R'' '+
                                         ' ) '+
                                         ' GROUP BY ASOID '+
                                         ' )B '+
                                         ' WHERE A.ASOID=B.ASOID '+
                                         ' ) C '+
                                         ' WHERE PERIODO = '+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.ASOID = C.ASOID '+
                                           ' AND CFC000.OFDESID='+QuotedStr(DBLkOfiDes.Text)+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+ xWhere +
                                         ' GROUP BY C.ASOID,C.SALTOREF,C.PORCENTAJE,SALDOS_FT,CFC_F, RESUMEDES) D  '+
                                 ' WHERE A.RESUMEID = D.CFC(+) '+
                                 ' ORDER BY A.P_NC'+
                                 ' ) '+
                                 ' GROUP BY RESUMEID, RESUMEDES , P_NC, P_CB)';
//Final HPC_201713_COB
         DM1.cdsTRela.Close;
         DM1.cdsTRela.DataRequest(xSQL);
         DM1.cdsTRela.Open;
         If DM1.cdsTRela.RecordCount = 1 Then
         Begin
            xReg := DM1.cdsTRela.FieldByName('REG').AsInteger;
            xTot := DM1.cdsTRela.FieldByName('TOT').AsFloat;
         End;
         DM1.cdsTRela.Close;
         {xTot := DM1.cdsTRela.FieldByName('SALDOS').AsCurrency;
         DM1.cdsTRela.Close;
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket
         xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, '
            + '         CASE WHEN ' + IntToStr(xReg) + '=0 THEN 0 ELSE round((NVL(B.MOVIM,0))*100/' + IntToStr(xReg) + ',4) END Movim_Por, '
            + '         NVL(B.SALDOS_RT,0) SALDOS_FT, CASE WHEN ' + FloatToStr(xTot) + '=0 THEN 0 ELSE round(NVL(B.SALDOS_RT,0)*100/' + FloatToStr(xTot) + ',4) END SaldoTotal_Por, '
            + '         NVL(SALDOS_RV,0) SALDOS_FV, NVL(SALDOS_RP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
            + '         NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
            + '         NVL(B.TOTPROV,0) TOTPROV '
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
            + '    FROM COB113 A,(SELECT CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_RT,0)) SALDOS_RT, '
            + '                      SUM(NVL(SALDOS_RV,0)) SALDOS_RV, SUM(NVL(SALDOS_RP,0)) SALDOS_RP, '
            + '                      SUM(NVL(SALREFCUB,0)) SALDO_CB, SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC, '
            + '                     (SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC, '
            + '                      MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB, '
            + '                     (SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV '
            + '               FROM CFC000,COB113 '
            + '              WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
         + '                AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text)
            + '                AND CFC000.CFC_R=COB113.RESUMEID(+) '
            + '                AND CFC000.SALDOS_RT > 0 '
            + '                 AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                                FROM SAL000 SAL '
            + '                               WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                                 AND SAL.ASOID = CFC000.ASOID '
            + '                                 AND SAL.TIPDESEID = ''10'' '
            + '                                 AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'
            + '               GROUP BY CFC_R,RESUMEDES) B '
            + 'WHERE A.RESUMEID=B.CFC(+) '
            + 'ORDER BY A.P_NC';}
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
         {xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, '
            + '         CASE WHEN ' + IntToStr(xReg) + '=0 THEN 0 ELSE round((NVL(B.MOVIM,0))*100/' + IntToStr(xReg) + ',4) END Movim_Por, '
            + '         NVL(B.SALDOS_FT,0) SALDOS_FT, CASE WHEN ' + FloatToStr(xTot) + '=0 THEN 0 ELSE round(NVL(B.SALDOS_FT,0)*100/' + FloatToStr(xTot) + ',4) END SaldoTotal_Por, '
            + '         NVL(SALDOS_FV,0) SALDOS_FV, NVL(SALDOS_FP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
            + '         NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
            + '         NVL(B.TOTPROV,0) TOTPROV '
            + '    FROM COB113 A,'
            + '    (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
            + '            SUM(NVL(SALDOS_FV,0)) SALDOS_FV, SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
            + '            SUM(NVL(SALDO_CB,0)) SALDO_CB, SUM(NVL(SALDO_NC,0)) SALDO_NC, '
            + '            MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
            + '            MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
            + '           (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '
            + '     FROM CFC000,COB113 '
            + '              WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
            + '                AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text)
            + '                AND CFC000.CFC_F=COB113.RESUMEID(+) '
            + '                 AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                                FROM SAL000 SAL '
            + '                               WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                                 AND SAL.ASOID = CFC000.ASOID '
            + '                                 AND SAL.TIPDESEID = ''10'' '
            + '                                 AND SUBSTR(CREDID,9,1)=''R'' )'
            + '               GROUP BY CFC_F,RESUMEDES) B '
            + 'WHERE A.RESUMEID=B.CFC(+) '
            + 'ORDER BY A.P_NC'; }

         xSQL:='SELECT '+
                     '        RESUMEID, '+
                     '        RESUMEDES, '+
                     '        SUM(MOVIM) MOVIM, '+
                     '        ROUND((NVL(SUM(MOVIM),0))*100/'+FloatToStr(xReg)+',4) Movim_Por, '+
                     '        SUM(SALDOS) SALDOS_FT, '+
                     '        ROUND(NVL(SUM(SALDOS),0)*100/'+FloatToStr(xTot)+',4) SaldoTotal_Por, '+
                     '        SUM(SALDOS_FV) SALDOS_FV, '+
                     '        SUM(SALDOS_FP) SALDOS_FP, '+
                     '        SUM(SALDO_CB) SALDO_CB, '+
                     '        SUM(SALDO_NC) SALDO_NC, '+
                     '        P_NC, '+
                     '        SUM(PORNC) PORNC, '+
                     '        P_CB, '+
                     '        SUM(PORCB) PORCB, '+
                     '        SUM(TOTPROV) TOTPROV '+
                     ' FROM '+
                     ' ( '+
                     'SELECT RESUMEID, '+
                     'RESUMEDES, '+
                     'ROUND(NVL(D.MOVIM, 0), 4) MOVIM, '+
                     'ROUND(NVL(D.SALDOS, 0), 4) SALDOS, '+
                     'ROUND(NVL(D.SALDOS_FP, 0), 4) SALDOS_FP, '+
                     'ROUND(NVL(D.SALDOS_FV, 0), 4) SALDOS_FV, '+
                     'ROUND(NVL(D.SALDO_CB, 0), 4) SALDO_CB, '+
                     'ROUND(NVL(D.SALDO_NC, 0), 4) SALDO_NC, '+
                     'ROUND(A.P_NC, 4) P_NC, '+
                     'ROUND(NVL(PORNC, 0), 4) PORNC, '+
                     'ROUND(A.P_CB, 4) P_CB, '+
                     'ROUND(NVL(D.PORCB, 0), 4) PORCB, '+
                     'ROUND(NVL(D.TOTPROV, 0), 4) TOTPROV '+
                     'FROM COB113 A, '+
                     '(SELECT C.ASOID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,C.PORCENTAJE,C.SALTOREF,SALDOS_FT, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN SUM(NVL(C.SALTOREF, 0))  ELSE SUM(NVL(SALDOS_FT, 0)) END SALDOS, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN SUM(NVL(C.SALDOS_P, 0)) ELSE SUM(NVL(SALDOS_FP, 0)) END SALDOS_FP, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN (SUM(NVL(C.SALDOS_V, 0))) ELSE SUM(NVL(SALDOS_FV, 0)) END SALDOS_FV, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_CB, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_CB, 0)) END SALDO_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_NC, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_NC, 0)) END SALDO_NC, '+
                             'MAX(P_NC) P_NC, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 END PORNC, '+
                             'MAX(P_CB) P_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 END PORCB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100))*(C.PORCENTAJE),2) '+
                             'ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) END TOTPROV '+
                             'FROM CFC000, COB113 , '+
                             '( '+
                              'SELECT A.ASOID,A.SALDOS,B.SALTOREF , B.SALDOS_V, B.SALDOS_P, '+
                              ' CASE WHEN A.SALDOS=B.SALTOREF THEN 1 '+
                              '   WHEN A.SALDOS > B.SALTOREF THEN ROUND((B.SALTOREF/A.SALDOS),4) '+
                              ' END PORCENTAJE '+
                              ' FROM '+
                              ' (SELECT ASOID,CFC_F CFC,RESUMEDES CFCDES, '+
                                              ' COUNT(*) MOVIM, '+
                                              ' SUM(NVL(SALDOS_FT, 0)) SALDOS, '+
                                              ' SUM(NVL(SALDOS_FP, 0)) SALDOS_FP, '+
                                              ' SUM(NVL(SALDOS_FV, 0)) SALDOS_FV, '+
                                              ' SUM(NVL(SALDO_CB, 0)) SALDO_CB, '+
                                              ' SUM(NVL(SALDO_NC, 0)) SALDO_NC, '+
                                              ' MAX(P_NC) P_NC, '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 PORNC, '+
                                              ' MAX(P_CB) P_CB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 PORCB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) TOTPROV '+
                                         ' FROM CFC000, COB113 WHERE PERIODO ='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.OFDESID='+QuotedStr(DBLkOfiDes.Text)+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+xWhere+' '+
                                         ' GROUP BY ASOID,CFC_F, RESUMEDES) A, '+
                                         '( '+
                                         ' SELECT '+
                                         ' ASOID,SUM(SALTOT) SALTOREF, SUM(SALDOS_V) SALDOS_V, SUM(SALDOS_P) SALDOS_P FROM '+
                                         ' (SELECT ASOID,CREDID, NVL(SALTOT,0) SALTOT, NVL(SALVEN, 0) SALDOS_V, NVL(SALPEN, 0) SALDOS_P FROM SAL000 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' AND SUBSTR(CREDID,9,1)=''R'' '+
                                         ' ) '+
                                         ' GROUP BY ASOID '+
                                         ' )B '+
                                         ' WHERE A.ASOID=B.ASOID '+
                                         ' ) C '+
                                         ' WHERE PERIODO = '+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.ASOID = C.ASOID '+
                                           ' AND CFC000.OFDESID='+QuotedStr(DBLkOfiDes.Text)+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+ xWhere +
                                         ' GROUP BY C.ASOID,C.SALTOREF,C.PORCENTAJE,SALDOS_FT,CFC_F, RESUMEDES) D  '+
                                 ' WHERE A.RESUMEID = D.CFC(+) '+
                                 ' ORDER BY A.P_NC'+
                                 ' ) '+
                                 ' GROUP BY RESUMEID, RESUMEDES , P_NC, P_CB';
//Final HPC_201713_COB
         lblOfiDes.Caption := 'OFICINA DESCONCENTRADA  - REFINANCIADOS : ' + Trim(EdtOfiDes.Text);
         //Fin : HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
      End
      Else // Tipo de Resumen = Por UGEL
         If rgTipoResumen.ItemIndex = 2 Then
         Begin
            If trim(EdtUseNom.Text) = '' Then
            Begin
               MessageDlg(' Debe SELECCIONAR UNA UGEL!!', mtError, [mbOk], 0);
               Screen.Cursor := crDefault;
               Exit;
            End;
            //Inicio : HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
            {SQL := 'SELECT ASOID '
               + '    FROM CFC000 '
               + '   WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
            + xAsoTipId
               + '     AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
               + '     AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
               + '     AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
               + '       AND CFC000.SALDOS_RT > 0 '
               + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
               + '                      FROM SAL000 SAL '
               + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
               + '                       AND SAL.ASOID = CFC000.ASOID '
               + '                       AND SAL.TIPDESEID = ''10'' '
               + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )';
            xReg := DM1.CountReg(xSQL);

            xSQL := 'SELECT NVL(SUM(NVL(SALDOS_RT, 0)), 0) SALDOS '
               + '    FROM CFC000 '
               + '   WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
            + xAsoTipId
               + '     AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
               + '     AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
               + '     AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
               + '       AND CFC000.SALDOS_RT > 0 '
               + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
               + '                      FROM SAL000 SAL '
               + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
               + '                       AND SAL.ASOID = CFC000.ASOID '
               + '                       AND SAL.TIPDESEID = ''10'' '
               + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'; }
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
            {xSQL := 'SELECT SUM(NVL(SALDOS_FT,0)) TOT,COUNT(1) REG FROM CFC000 ' +
           'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) +  xAsoTipId +
           '     AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text) +
           '     AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)  +
           '     AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)  +
           ' AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG ' +
           ' FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' ' +
           ' AND SUBSTR(CREDID,9,1)=''R'' ) '; }

           xSQL:='SELECT SUM(NVL(SALDOS_FT,0)) TOT,SUM(MOVIM) REG '+
                     ' FROM( '+
                     'SELECT '+
                     '        RESUMEID, '+
                     '        RESUMEDES, '+
                     '        SUM(MOVIM) MOVIM, '+
                     '        ROUND((NVL(SUM(MOVIM),0))*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue))+',4) Movim_Por, '+
                     '        SUM(SALDOS) SALDOS_FT, '+
                     '        ROUND(NVL(SUM(SALDOS),0)*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue))+',4) SaldoTotal_Por, '+
                     '        SUM(SALDOS_FV) SALDOS_FV, '+
                     '        SUM(SALDOS_FP) SALDOS_FP, '+
                     '        SUM(SALDO_CB) SALDO_CB, '+
                     '        SUM(SALDO_NC) SALDO_NC, '+
                     '        P_NC, '+
                     '        SUM(PORNC) PORNC, '+
                     '        P_CB, '+
                     '        SUM(PORCB) PORCB, '+
                     '        SUM(TOTPROV) TOTPROV '+
                     ' FROM '+
                     ' ( '+
                     'SELECT RESUMEID, '+
                     'RESUMEDES, '+
                     'ROUND(NVL(D.MOVIM, 0), 4) MOVIM, '+
                     'ROUND(NVL(D.SALDOS, 0), 4) SALDOS, '+
                     'ROUND(NVL(D.SALDOS_FP, 0), 4) SALDOS_FP, '+
                     'ROUND(NVL(D.SALDOS_FV, 0), 4) SALDOS_FV, '+
                     'ROUND(NVL(D.SALDO_CB, 0), 4) SALDO_CB, '+
                     'ROUND(NVL(D.SALDO_NC, 0), 4) SALDO_NC, '+
                     'ROUND(A.P_NC, 4) P_NC, '+
                     'ROUND(NVL(PORNC, 0), 4) PORNC, '+
                     'ROUND(A.P_CB, 4) P_CB, '+
                     'ROUND(NVL(D.PORCB, 0), 4) PORCB, '+
                     'ROUND(NVL(D.TOTPROV, 0), 4) TOTPROV '+
                     'FROM COB113 A, '+
                     '(SELECT C.ASOID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,C.PORCENTAJE,C.SALTOREF,SALDOS_FT, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN SUM(NVL(C.SALTOREF, 0))  ELSE SUM(NVL(SALDOS_FT, 0)) END SALDOS, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN SUM(NVL(C.SALDOS_P, 0)) ELSE SUM(NVL(SALDOS_FP, 0)) END SALDOS_FP, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN (SUM(NVL(C.SALDOS_V, 0))) ELSE SUM(NVL(SALDOS_FV, 0)) END SALDOS_FV, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_CB, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_CB, 0)) END SALDO_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_NC, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_NC, 0)) END SALDO_NC, '+
                             'MAX(P_NC) P_NC, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 END PORNC, '+
                             'MAX(P_CB) P_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 END PORCB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100))*(C.PORCENTAJE),2) '+
                             'ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) END TOTPROV '+
                             'FROM CFC000, COB113 , '+
                             '( '+
                              'SELECT A.ASOID,A.SALDOS,B.SALTOREF, B.SALDOS_V,B.SALDOS_P, '+
                              ' CASE WHEN A.SALDOS=B.SALTOREF THEN 1 '+
                              '   WHEN A.SALDOS > B.SALTOREF THEN ROUND((B.SALTOREF/A.SALDOS),4) '+
                              ' END PORCENTAJE '+
                              ' FROM '+
                              ' (SELECT ASOID,CFC_F CFC,RESUMEDES CFCDES, '+
                                              ' COUNT(*) MOVIM, '+
                                              ' SUM(NVL(SALDOS_FT, 0)) SALDOS, '+
                                              ' SUM(NVL(SALDOS_FP, 0)) SALDOS_FP, '+
                                              ' SUM(NVL(SALDOS_FV, 0)) SALDOS_FV, '+
                                              ' SUM(NVL(SALDO_CB, 0)) SALDO_CB, '+
                                              ' SUM(NVL(SALDO_NC, 0)) SALDO_NC, '+
                                              ' MAX(P_NC) P_NC, '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 PORNC, '+
                                              ' MAX(P_CB) P_CB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 PORCB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) TOTPROV '+
                                         ' FROM CFC000, COB113 WHERE PERIODO ='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+xWhere+' '+
                                         ' GROUP BY ASOID,CFC_F, RESUMEDES) A, '+
                                         '( '+
                                         ' SELECT '+
                                         ' ASOID,SUM(SALTOT) SALTOREF, SUM(SALDOS_V) SALDOS_V, SUM(SALDOS_P) SALDOS_P FROM '+
                                         ' (SELECT ASOID,CREDID, NVL(SALTOT,0) SALTOT, NVL(SALVEN, 0) SALDOS_V, NVL(SALPEN, 0) SALDOS_P FROM SAL000 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' AND SUBSTR(CREDID,9,1)=''R'' '+
                                         ' ) '+
                                         ' GROUP BY ASOID '+
                                         ' )B '+
                                         ' WHERE A.ASOID=B.ASOID '+
                                         ' ) C '+
                                         ' WHERE PERIODO = '+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.ASOID = C.ASOID '+
                                           ' AND NVL(CFC000.UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text) +
                                           ' AND NVL(CFC000.UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)  +
                                           ' AND NVL(CFC000.USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)  +
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+ xWhere +
                                         ' GROUP BY C.ASOID,C.SALTOREF,C.PORCENTAJE,SALDOS_FT,CFC_F, RESUMEDES) D  '+
                                 ' WHERE A.RESUMEID = D.CFC(+) '+
                                 ' ORDER BY A.P_NC'+
                                 ' ) '+
                                 ' GROUP BY RESUMEID, RESUMEDES , P_NC, P_CB)';
//Final HPC_201713_COB
            DM1.cdsTRela.Close;
            DM1.cdsTRela.DataRequest(xSQL);
            DM1.cdsTRela.Open;
            If DM1.cdsTRela.RecordCount = 1 Then
            Begin
                xReg := DM1.cdsTRela.FieldByName('REG').AsInteger;
                xTot := DM1.cdsTRela.FieldByName('TOT').AsFloat;
            End;
            DM1.cdsTRela.Close;
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
            {xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, '
            + '         CASE WHEN ' + IntToStr(xReg) + '=0 THEN 0 ELSE round((NVL(B.MOVIM,0))*100/' + IntToStr(xReg) + ',4) END Movim_Por, '
            + '         NVL(B.SALDOS_FT,0) SALDOS_FT, CASE WHEN ' + FloatToStr(xTot) + '=0 THEN 0 ELSE round(NVL(B.SALDOS_FT,0)*100/' + FloatToStr(xTot) + ',4) END SaldoTotal_Por, '
            + '         NVL(SALDOS_FV,0) SALDOS_FV, NVL(SALDOS_FP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
            + '         NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
            + '         NVL(B.TOTPROV,0) TOTPROV '
            + '    FROM COB113 A,'
            + '    (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
            + '            SUM(NVL(SALDOS_FV,0)) SALDOS_FV, SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
            + '            SUM(NVL(SALDO_CB,0)) SALDO_CB, SUM(NVL(SALDO_NC,0)) SALDO_NC, '
            + '            MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
            + '            MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
            + '           (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '
            + '     FROM CFC000,COB113 '
            + '              WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
            + '                AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
            + '                AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
            + '                AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
            + '                AND CFC000.CFC_F=COB113.RESUMEID(+) '
            + '                 AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                                FROM SAL000 SAL '
            + '                               WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                                 AND SAL.ASOID = CFC000.ASOID '
            + '                                 AND SAL.TIPDESEID = ''10'' '
            + '                                 AND SUBSTR(CREDID,9,1)=''R'' )'
            + '               GROUP BY CFC_F,RESUMEDES) B '
            + 'WHERE A.RESUMEID=B.CFC(+) '
            + 'ORDER BY A.P_NC'; }


            xSQL:='SELECT '+
                     '        RESUMEID, '+
                     '        RESUMEDES, '+
                     '        SUM(MOVIM) MOVIM, '+
                     '        ROUND((NVL(SUM(MOVIM),0))*100/'+FloatToStr(xReg)+',4) Movim_Por, '+
                     '        SUM(SALDOS) SALDOS_FT, '+
                     '        ROUND(NVL(SUM(SALDOS),0)*100/'+FloatToStr(xTot)+',4) SaldoTotal_Por, '+
                     '        SUM(SALDOS_FV) SALDOS_FV, '+
                     '        SUM(SALDOS_FP) SALDOS_FP, '+
                     '        SUM(SALDO_CB) SALDO_CB, '+
                     '        SUM(SALDO_NC) SALDO_NC, '+
                     '        P_NC, '+
                     '        SUM(PORNC) PORNC, '+
                     '        P_CB, '+
                     '        SUM(PORCB) PORCB, '+
                     '        SUM(TOTPROV) TOTPROV '+
                     ' FROM '+
                     ' ( '+
                     'SELECT RESUMEID, '+
                     'RESUMEDES, '+
                     'ROUND(NVL(D.MOVIM, 0), 4) MOVIM, '+
                     'ROUND(NVL(D.SALDOS, 0), 4) SALDOS, '+
                     'ROUND(NVL(D.SALDOS_FP, 0), 4) SALDOS_FP, '+
                     'ROUND(NVL(D.SALDOS_FV, 0), 4) SALDOS_FV, '+
                     'ROUND(NVL(D.SALDO_CB, 0), 4) SALDO_CB, '+
                     'ROUND(NVL(D.SALDO_NC, 0), 4) SALDO_NC, '+
                     'ROUND(A.P_NC, 4) P_NC, '+
                     'ROUND(NVL(PORNC, 0), 4) PORNC, '+
                     'ROUND(A.P_CB, 4) P_CB, '+
                     'ROUND(NVL(D.PORCB, 0), 4) PORCB, '+
                     'ROUND(NVL(D.TOTPROV, 0), 4) TOTPROV '+
                     'FROM COB113 A, '+
                     '(SELECT C.ASOID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,C.PORCENTAJE,C.SALTOREF,SALDOS_FT, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN SUM(NVL(C.SALTOREF, 0))  ELSE SUM(NVL(SALDOS_FT, 0)) END SALDOS, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN SUM(NVL(C.SALDOS_P, 0)) ELSE SUM(NVL(SALDOS_FP, 0)) END SALDOS_FP, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN (SUM(NVL(C.SALDOS_V, 0))) ELSE SUM(NVL(SALDOS_FV, 0)) END SALDOS_FV, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_CB, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_CB, 0)) END SALDO_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_NC, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_NC, 0)) END SALDO_NC, '+
                             'MAX(P_NC) P_NC, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 END PORNC, '+
                             'MAX(P_CB) P_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 END PORCB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100))*(C.PORCENTAJE),2) '+
                             'ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) END TOTPROV '+
                             'FROM CFC000, COB113 , '+
                             '( '+
                              'SELECT A.ASOID,A.SALDOS,B.SALTOREF , B.SALDOS_V, B.SALDOS_P, '+
                              ' CASE WHEN A.SALDOS=B.SALTOREF THEN 1 '+
                              '   WHEN A.SALDOS > B.SALTOREF THEN ROUND((B.SALTOREF/A.SALDOS),4) '+
                              ' END PORCENTAJE '+
                              ' FROM '+
                              ' (SELECT ASOID,CFC_F CFC,RESUMEDES CFCDES, '+
                                              ' COUNT(*) MOVIM, '+
                                              ' SUM(NVL(SALDOS_FT, 0)) SALDOS, '+
                                              ' SUM(NVL(SALDOS_FP, 0)) SALDOS_FP, '+
                                              ' SUM(NVL(SALDOS_FV, 0)) SALDOS_FV, '+
                                              ' SUM(NVL(SALDO_CB, 0)) SALDO_CB, '+
                                              ' SUM(NVL(SALDO_NC, 0)) SALDO_NC, '+
                                              ' MAX(P_NC) P_NC, '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 PORNC, '+
                                              ' MAX(P_CB) P_CB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 PORCB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) TOTPROV '+
                                         ' FROM CFC000, COB113 WHERE PERIODO ='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND NVL(CFC000.UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text) +
                                           ' AND NVL(CFC000.UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)  +
                                           ' AND NVL(CFC000.USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)  +
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+xWhere+' '+
                                         ' GROUP BY ASOID,CFC_F, RESUMEDES) A, '+
                                         '( '+
                                         ' SELECT '+
                                         ' ASOID,SUM(SALTOT) SALTOREF, SUM(SALDOS_V) SALDOS_V, SUM(SALDOS_P) SALDOS_P FROM '+
                                         ' (SELECT ASOID,CREDID, NVL(SALTOT,0) SALTOT, NVL(SALVEN, 0) SALDOS_V, NVL(SALPEN, 0) SALDOS_P FROM SAL000 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' AND SUBSTR(CREDID,9,1)=''R'' '+
                                         ' ) '+
                                         ' GROUP BY ASOID '+
                                         ' )B '+
                                         ' WHERE A.ASOID=B.ASOID '+
                                         ' ) C '+
                                         ' WHERE PERIODO = '+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.ASOID = C.ASOID '+
                                           ' AND NVL(CFC000.UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text) +
                                           ' AND NVL(CFC000.UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)  +
                                           ' AND NVL(CFC000.USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)  +
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+ xWhere +
                                         ' GROUP BY C.ASOID,C.SALTOREF,C.PORCENTAJE,SALDOS_FT,CFC_F, RESUMEDES) D  '+
                                 ' WHERE A.RESUMEID = D.CFC(+) '+
                                 ' ORDER BY A.P_NC'+
                                 ' ) '+
                                 ' GROUP BY RESUMEID, RESUMEDES , P_NC, P_CB';

//Final HPC_201713_COB
              {
// Inicio: SPP_201402_COB                :  Modificación por Cambio de Socket
            xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, '
               + '       CASE WHEN ' + IntToStr(xReg) + '=0 THEN 0 ELSE round((NVL(B.MOVIM,0))*100/' + IntToStr(xReg) + ',4) END Movim_Por, '
               + '       NVL(B.SALDOS_RT,0) SALDOS_FT, CASE WHEN ' + FloatToStr(xTot) + '=0 THEN 0 ELSE round(NVL(B.SALDOS_RT,0)*100/' + FloatToStr(xTot) + ',4) END SaldoTotal_Por, '
               + '       NVL(SALDOS_RV,0) SALDOS_FV,NVL(SALDOS_RP,0) SALDOS_FP,NVL(B.SALDO_CB,0) SALDO_CB, '
               + '       NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
               + '       NVL(B.TOTPROV,0) TOTPROV '
// Fin: SPP_201402_COB                   :  Modificación por Cambio de Socket
               + 'FROM COB113 A,'
               + '    (SELECT CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
               + '            SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV, '
               + '            SUM(NVL(SALDOS_RP,0)) SALDOS_RP, '
               + '            SUM(NVL(SALREFCUB,0)) SALDO_CB, SUM(NVL(SALREFNOCUB,0)) SALDO_NC, '
               + '            MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC, '
               + '            MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB, '
               + '           (SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV  '
               + '     FROM CFC000,COB113 '
               + '     WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
            + xAsoTipId
               + '       AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
               + '       AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
               + '       AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
               + '       AND CFC000.CFC_R=COB113.RESUMEID(+) '
               + '       AND CFC000.SALDOS_RT > 0 '
               + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
               + '                      FROM SAL000 SAL '
               + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
               + '                       AND SAL.ASOID = CFC000.ASOID '
               + '                       AND SAL.TIPDESEID = ''10'' '
               + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'
               + '     GROUP BY CFC_R,RESUMEDES) B '
               + 'WHERE A.RESUMEID = B.CFC(+) '
               + 'ORDER BY A.P_NC '; }
            lblOfiDes.Caption := 'UND.PROCESO  - REFINANCIADOS : (' + Trim(DM1.cdsUPro.fieldbyname('UPROID').AsString) + ')' + Trim(DM1.cdsUPro.fieldbyname('UPRONOM').AsString) + '         '
               + 'UND.PAGO : (' + Trim(DM1.cdsUPago.fieldbyname('UPAGOID').AsString) + ')' + Trim(DM1.cdsUPago.fieldbyname('UPAGONOM').AsString) + '         '
               + 'UGEL : (' + Trim(DM1.cdsUSES.fieldbyname('USEID').AsString) + ')' + Trim(DM1.cdsUSES.fieldbyname('USENOM').AsString);
              //Fin : HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
         End;
   End;
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.DataRequest(xSQL);
   DM1.cdsDetalle.Open;
   If DM1.cdsDetalle.RecordCount > 0 Then
   Begin
      If rgTipoResumen.ItemIndex = 1 Then
         If Length(Trim(EdtOfiDes.Text)) = 0 Then
         Begin
            Screen.Cursor := crDefault;
            Exit;
         End;
      If rgTipoResumen.ItemIndex = 2 Then
         If Length(Trim(EdtUseNom.Text)) = 0 Then
         Begin
            Screen.Cursor := crDefault;
            Exit;
         End;
      If rgTipoResumen.ItemIndex = 0 Then
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
         xSQL:=
                     ' SELECT '+
                     ' CASE WHEN (SUM(SALDOS_FT)=0) THEN 0 ELSE '+
                     ' ROUND(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) END INDMOR, '+
                     ' CASE WHEN (SUM(SALDOS_FV)=0) THEN 0 ELSE '+
                     ' ROUND(SUM(TOTPROV)/SUM(SALDOS_FV),4) END INDPRO '+
                     ' FROM( '+
                     'SELECT '+
                     '        RESUMEID, '+
                     '        RESUMEDES, '+
                     '        SUM(MOVIM) MOVIM, '+
                     '        ROUND((NVL(SUM(MOVIM),0))*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue))+',4) Movim_Por, '+
                     '        SUM(SALDOS) SALDOS_FT, '+
                     '        ROUND(NVL(SUM(SALDOS),0)*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue))+',4) SaldoTotal_Por, '+
                     '        SUM(SALDOS_FV) SALDOS_FV, '+
                     '        SUM(SALDOS_FP) SALDOS_FP, '+
                     '        SUM(SALDO_CB) SALDO_CB, '+
                     '        SUM(SALDO_NC) SALDO_NC, '+
                     '        P_NC, '+
                     '        SUM(PORNC) PORNC, '+
                     '        P_CB, '+
                     '        SUM(PORCB) PORCB, '+
                     '        SUM(TOTPROV) TOTPROV '+
                     ' FROM '+
                     ' ( '+
                     'SELECT RESUMEID, '+
                     'RESUMEDES, '+
                     'ROUND(NVL(D.MOVIM, 0), 4) MOVIM, '+
                     'ROUND(NVL(D.SALDOS, 0), 4) SALDOS, '+
                     'ROUND(NVL(D.SALDOS_FP, 0), 4) SALDOS_FP, '+
                     'ROUND(NVL(D.SALDOS_FV, 0), 4) SALDOS_FV, '+
                     'ROUND(NVL(D.SALDO_CB, 0), 4) SALDO_CB, '+
                     'ROUND(NVL(D.SALDO_NC, 0), 4) SALDO_NC, '+
                     'ROUND(A.P_NC, 4) P_NC, '+
                     'ROUND(NVL(PORNC, 0), 4) PORNC, '+
                     'ROUND(A.P_CB, 4) P_CB, '+
                     'ROUND(NVL(D.PORCB, 0), 4) PORCB, '+
                     'ROUND(NVL(D.TOTPROV, 0), 4) TOTPROV '+
                     'FROM COB113 A, '+
                     '(SELECT C.ASOID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,C.PORCENTAJE,C.SALTOREF,SALDOS_FT, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN SUM(NVL(C.SALTOREF, 0))  ELSE SUM(NVL(SALDOS_FT, 0)) END SALDOS, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN SUM(NVL(C.SALDOS_P, 0)) ELSE SUM(NVL(SALDOS_FP, 0)) END SALDOS_FP, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN (SUM(NVL(C.SALDOS_V, 0))) ELSE SUM(NVL(SALDOS_FV, 0)) END SALDOS_FV, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_CB, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_CB, 0)) END SALDO_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_NC, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_NC, 0)) END SALDO_NC, '+
                             'MAX(P_NC) P_NC, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 END PORNC, '+
                             'MAX(P_CB) P_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 END PORCB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100))*(C.PORCENTAJE),2) '+
                             'ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) END TOTPROV '+
                             'FROM CFC000, COB113 , '+
                             '( '+
                              'SELECT A.ASOID,A.SALDOS,B.SALTOREF, B.SALDOS_V,B.SALDOS_P, '+
                              ' CASE WHEN A.SALDOS=B.SALTOREF THEN 1 '+
                              '   WHEN A.SALDOS > B.SALTOREF THEN ROUND((B.SALTOREF/A.SALDOS),4) '+
                              ' END PORCENTAJE '+
                              ' FROM '+
                              ' (SELECT ASOID,CFC_F CFC,RESUMEDES CFCDES, '+
                                              ' COUNT(*) MOVIM, '+
                                              ' SUM(NVL(SALDOS_FT, 0)) SALDOS, '+
                                              ' SUM(NVL(SALDOS_FP, 0)) SALDOS_FP, '+
                                              ' SUM(NVL(SALDOS_FV, 0)) SALDOS_FV, '+
                                              ' SUM(NVL(SALDO_CB, 0)) SALDO_CB, '+
                                              ' SUM(NVL(SALDO_NC, 0)) SALDO_NC, '+
                                              ' MAX(P_NC) P_NC, '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 PORNC, '+
                                              ' MAX(P_CB) P_CB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 PORCB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) TOTPROV '+
                                         ' FROM CFC000, COB113 WHERE PERIODO ='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+xWhere+' '+
                                         ' GROUP BY ASOID,CFC_F, RESUMEDES) A, '+
                                         '( '+
                                         ' SELECT '+
                                         ' ASOID,SUM(SALTOT) SALTOREF, SUM(SALDOS_V) SALDOS_V, SUM(SALDOS_P) SALDOS_P FROM '+
                                         //Inicio HPC_201702_RSG
                                         //Corrección del cálculo del monto de saldo pendiente y saldo vencido.
                                         ' (SELECT ASOID,CREDID, NVL(SALTOT,0) SALTOT, NVL(SALVEN, 0) SALDOS_V, NVL(SALPEN, 0) SALDOS_P FROM SAL000 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' AND SUBSTR(CREDID,9,1)=''R'' '+
                                         //Fin HPC_201702_RSG
                                         ' ) '+
                                         ' GROUP BY ASOID '+
                                         ' )B '+
                                         ' WHERE A.ASOID=B.ASOID '+
                                         ' ) C '+
                                         ' WHERE PERIODO = '+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.ASOID = C.ASOID '+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+ xWhere +
                                         ' GROUP BY C.ASOID,C.SALTOREF,C.PORCENTAJE,SALDOS_FT,CFC_F, RESUMEDES) D  '+
                                 ' WHERE A.RESUMEID = D.CFC(+) '+
                                 ' ORDER BY A.P_NC'+
                                 ' ) '+
                                 ' GROUP BY RESUMEID, RESUMEDES , P_NC, P_CB)'
//Final HPC_201713_COB
      Else
      Begin
         If rgTipoResumen.ItemIndex = 1 Then
           //Inicio: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
            {xSQL:='SELECT ROUND(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) INDMOR, '+
                           ' ROUND(SUM(TOTPROV)/SUM(SALDOS_FV),4) INDPRO '+
                       'FROM '+
                     '(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '+
                     'SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC,  '+
                     'MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '+
                     'FROM CFC000,COB113 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+ xAsoTipId +
                     ' AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text) +
                     ' AND CFC000.CFC_F=COB113.RESUMEID(+)  '+
                     '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG  FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' '+
                     ' AND SUBSTR(CREDID,9,1)=''R'' )'+
                     'GROUP BY CFC_F,RESUMEDES) '  }


               xSQL:=' SELECT '+
                     ' CASE WHEN (SUM(SALDOS_FT)=0) THEN 0 ELSE '+
                     ' ROUND(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) END INDMOR, '+
                     ' CASE WHEN (SUM(SALDOS_FV)=0) THEN 0 ELSE '+
                     ' ROUND(SUM(TOTPROV)/SUM(SALDOS_FV),4) END INDPRO '+
                     ' FROM( '+
                     'SELECT '+
                     '        RESUMEID, '+
                     '        RESUMEDES, '+
                     '        SUM(MOVIM) MOVIM, '+
                     '        ROUND((NVL(SUM(MOVIM),0))*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue))+',4) Movim_Por, '+
                     '        SUM(SALDOS) SALDOS_FT, '+
                     '        ROUND(NVL(SUM(SALDOS),0)*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue))+',4) SaldoTotal_Por, '+
                     '        SUM(SALDOS_FV) SALDOS_FV, '+
                     '        SUM(SALDOS_FP) SALDOS_FP, '+
                     '        SUM(SALDO_CB) SALDO_CB, '+
                     '        SUM(SALDO_NC) SALDO_NC, '+
                     '        P_NC, '+
                     '        SUM(PORNC) PORNC, '+
                     '        P_CB, '+
                     '        SUM(PORCB) PORCB, '+
                     '        SUM(TOTPROV) TOTPROV '+
                     ' FROM '+
                     ' ( '+
                     'SELECT RESUMEID, '+
                     'RESUMEDES, '+
                     'ROUND(NVL(D.MOVIM, 0), 4) MOVIM, '+
                     'ROUND(NVL(D.SALDOS, 0), 4) SALDOS, '+
                     'ROUND(NVL(D.SALDOS_FP, 0), 4) SALDOS_FP, '+
                     'ROUND(NVL(D.SALDOS_FV, 0), 4) SALDOS_FV, '+
                     'ROUND(NVL(D.SALDO_CB, 0), 4) SALDO_CB, '+
                     'ROUND(NVL(D.SALDO_NC, 0), 4) SALDO_NC, '+
                     'ROUND(A.P_NC, 4) P_NC, '+
                     'ROUND(NVL(PORNC, 0), 4) PORNC, '+
                     'ROUND(A.P_CB, 4) P_CB, '+
                     'ROUND(NVL(D.PORCB, 0), 4) PORCB, '+
                     'ROUND(NVL(D.TOTPROV, 0), 4) TOTPROV '+
                     'FROM COB113 A, '+
                     '(SELECT C.ASOID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,C.PORCENTAJE,C.SALTOREF,SALDOS_FT, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN SUM(NVL(C.SALTOREF, 0))  ELSE SUM(NVL(SALDOS_FT, 0)) END SALDOS, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN SUM(NVL(C.SALDOS_P, 0)) ELSE SUM(NVL(SALDOS_FP, 0)) END SALDOS_FP, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN (SUM(NVL(C.SALDOS_V, 0))) ELSE SUM(NVL(SALDOS_FV, 0)) END SALDOS_FV, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_CB, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_CB, 0)) END SALDO_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_NC, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_NC, 0)) END SALDO_NC, '+
                             'MAX(P_NC) P_NC, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 END PORNC, '+
                             'MAX(P_CB) P_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 END PORCB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100))*(C.PORCENTAJE),2) '+
                             'ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) END TOTPROV '+
                             'FROM CFC000, COB113 , '+
                             '( '+
                              'SELECT A.ASOID,A.SALDOS,B.SALTOREF, B.SALDOS_V,B.SALDOS_P, '+
                              ' CASE WHEN A.SALDOS=B.SALTOREF THEN 1 '+
                              '   WHEN A.SALDOS > B.SALTOREF THEN ROUND((B.SALTOREF/A.SALDOS),4) '+
                              ' END PORCENTAJE '+
                              ' FROM '+
                              ' (SELECT ASOID,CFC_F CFC,RESUMEDES CFCDES, '+
                                              ' COUNT(*) MOVIM, '+
                                              ' SUM(NVL(SALDOS_FT, 0)) SALDOS, '+
                                              ' SUM(NVL(SALDOS_FP, 0)) SALDOS_FP, '+
                                              ' SUM(NVL(SALDOS_FV, 0)) SALDOS_FV, '+
                                              ' SUM(NVL(SALDO_CB, 0)) SALDO_CB, '+
                                              ' SUM(NVL(SALDO_NC, 0)) SALDO_NC, '+
                                              ' MAX(P_NC) P_NC, '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 PORNC, '+
                                              ' MAX(P_CB) P_CB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 PORCB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) TOTPROV '+
                                         ' FROM CFC000, COB113 WHERE PERIODO ='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text)+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+xWhere+' '+
                                         ' GROUP BY ASOID,CFC_F, RESUMEDES) A, '+
                                         '( '+
                                         ' SELECT '+
                                         ' ASOID,SUM(SALTOT) SALTOREF, SUM(SALDOS_V) SALDOS_V, SUM(SALDOS_P) SALDOS_P FROM '+
                                         //Inicio HPC_201702_RSG
                                         //Corrección del cálculo del monto de saldo pendiente y saldo vencido.
                                         ' (SELECT ASOID,CREDID, NVL(SALTOT,0) SALTOT, NVL(SALVEN, 0) SALDOS_V, NVL(SALPEN, 0) SALDOS_P FROM SAL000 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' AND SUBSTR(CREDID,9,1)=''R'' '+
                                         //Fin HPC_201702_RSG
                                         ' ) '+
                                         ' GROUP BY ASOID '+
                                         ' )B '+
                                         ' WHERE A.ASOID=B.ASOID '+
                                         ' ) C '+
                                         ' WHERE PERIODO = '+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.ASOID = C.ASOID '+
                                           ' AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text)+
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+ xWhere +
                                         ' GROUP BY C.ASOID,C.SALTOREF,C.PORCENTAJE,SALDOS_FT,CFC_F, RESUMEDES) D  '+
                                 ' WHERE A.RESUMEID = D.CFC(+) '+
                                 ' ORDER BY A.P_NC'+
                                 ' ) '+
                                 ' GROUP BY RESUMEID, RESUMEDES , P_NC, P_CB)'
//Final HPC_201713_COB
            {// Inicio HPC_201505_COB                :  Modificar por el redondeo
            xSQL := 'SELECT CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE round( (SUM(SALDOS_RV)/SUM(SALDOS_RT)) ,6) END INDMOR,'
               + '         CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE round( (SUM(TOTPROV)/SUM(SALDOS_RV)) ,6) END INDPRO  '
            // Fin    HPC_201505_COB                :  Modificar por el redondeo
               + '    FROM (SELECT CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV,SUM(NVL(SALDOS_RP,0)) SALDOS_RP, '
               + '                 SUM(NVL(SALREFCUB,0)) SALDO_CB,SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC,  '
               + '                 MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV  '
               + '            FROM CFC000,COB113 '
               + '           WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
            + xAsoTipId
               + '             AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text)
               + '             AND CFC000.CFC_R=COB113.RESUMEID(+) '
               + '       AND CFC000.SALDOS_RT > 0 '
               + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
               + '                      FROM SAL000 SAL '
               + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
               + '                       AND SAL.ASOID = CFC000.ASOID '
               + '                       AND SAL.TIPDESEID = ''10'' '
               + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'
               + '           GROUP BY CFC_R,RESUMEDES) ' }
              //Fin: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
         Else
            If rgTipoResumen.ItemIndex = 2 Then
                //Inicio: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
//Inicio HPC_201713_COB
//alinear saldo total del reporte Calificación de Deudores y Exigencia de Provisiones para Refinanciados
                {xSQL:='SELECT ROUND(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) INDMOR, '+
                           ' ROUND(SUM(TOTPROV)/SUM(SALDOS_FV),4) INDPRO '+
                       'FROM '+
                     '(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '+
                     'SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC,  '+
                     'MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '+
                     'FROM CFC000,COB113 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+ xAsoTipId +
                     '            AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text) +
                     '            AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text) +
                     '            AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text) +
                     ' AND CFC000.CFC_F=COB113.RESUMEID(+)  '+
                     '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG  FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' '+
                     ' AND SUBSTR(CREDID,9,1)=''R'' )'+
                     'GROUP BY CFC_F,RESUMEDES) ' ; }

                     xSQL:=' SELECT '+
                     ' CASE WHEN (SUM(SALDOS_FT)=0) THEN 0 ELSE '+
                     ' ROUND(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) END INDMOR, '+
                     ' CASE WHEN (SUM(SALDOS_FV)=0) THEN 0 ELSE '+
                     ' ROUND(SUM(TOTPROV)/SUM(SALDOS_FV),4) END INDPRO '+
                     ' FROM( '+
                     'SELECT '+
                     '        RESUMEID, '+
                     '        RESUMEDES, '+
                     '        SUM(MOVIM) MOVIM, '+
                     '        ROUND((NVL(SUM(MOVIM),0))*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('MOVIM').FooterValue))+',4) Movim_Por, '+
                     '        SUM(SALDOS) SALDOS_FT, '+
                     '        ROUND(NVL(SUM(SALDOS),0)*100/'+FloatToStr(DM1.Valores(dtgClfCar.ColumnByName('SALDOS').FooterValue))+',4) SaldoTotal_Por, '+
                     '        SUM(SALDOS_FV) SALDOS_FV, '+
                     '        SUM(SALDOS_FP) SALDOS_FP, '+
                     '        SUM(SALDO_CB) SALDO_CB, '+
                     '        SUM(SALDO_NC) SALDO_NC, '+
                     '        P_NC, '+
                     '        SUM(PORNC) PORNC, '+
                     '        P_CB, '+
                     '        SUM(PORCB) PORCB, '+
                     '        SUM(TOTPROV) TOTPROV '+
                     ' FROM '+
                     ' ( '+
                     'SELECT RESUMEID, '+
                     'RESUMEDES, '+
                     'ROUND(NVL(D.MOVIM, 0), 4) MOVIM, '+
                     'ROUND(NVL(D.SALDOS, 0), 4) SALDOS, '+
                     'ROUND(NVL(D.SALDOS_FP, 0), 4) SALDOS_FP, '+
                     'ROUND(NVL(D.SALDOS_FV, 0), 4) SALDOS_FV, '+
                     'ROUND(NVL(D.SALDO_CB, 0), 4) SALDO_CB, '+
                     'ROUND(NVL(D.SALDO_NC, 0), 4) SALDO_NC, '+
                     'ROUND(A.P_NC, 4) P_NC, '+
                     'ROUND(NVL(PORNC, 0), 4) PORNC, '+
                     'ROUND(A.P_CB, 4) P_CB, '+
                     'ROUND(NVL(D.PORCB, 0), 4) PORCB, '+
                     'ROUND(NVL(D.TOTPROV, 0), 4) TOTPROV '+
                     'FROM COB113 A, '+
                     '(SELECT C.ASOID,CFC_F CFC,RESUMEDES CFCDES,COUNT(*) MOVIM,C.PORCENTAJE,C.SALTOREF,SALDOS_FT, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN SUM(NVL(C.SALTOREF, 0))  ELSE SUM(NVL(SALDOS_FT, 0)) END SALDOS, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN SUM(NVL(C.SALDOS_P, 0)) ELSE SUM(NVL(SALDOS_FP, 0)) END SALDOS_FP, '+
                             'CASE WHEN C.PORCENTAJE <> 1 THEN (SUM(NVL(C.SALDOS_V, 0))) ELSE SUM(NVL(SALDOS_FV, 0)) END SALDOS_FV, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_CB, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_CB, 0)) END SALDO_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND((SUM(NVL(SALDO_NC, 0)))*(C.PORCENTAJE),2) ELSE SUM(NVL(SALDO_NC, 0)) END SALDO_NC, '+
                             'MAX(P_NC) P_NC, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 END PORNC, '+
                             'MAX(P_CB) P_CB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100)*(C.PORCENTAJE),2) ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 END PORCB, '+
                             'CASE WHEN C.PORCENTAJE <>1 THEN ROUND(((SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100))*(C.PORCENTAJE),2) '+
                             'ELSE (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) END TOTPROV '+
                             'FROM CFC000, COB113 , '+
                             '( '+
                              'SELECT A.ASOID,A.SALDOS,B.SALTOREF, B.SALDOS_V,B.SALDOS_P, '+
                              ' CASE WHEN A.SALDOS=B.SALTOREF THEN 1 '+
                              '   WHEN A.SALDOS > B.SALTOREF THEN ROUND((B.SALTOREF/A.SALDOS),4) '+
                              ' END PORCENTAJE '+
                              ' FROM '+
                              ' (SELECT ASOID,CFC_F CFC,RESUMEDES CFCDES, '+
                                              ' COUNT(*) MOVIM, '+
                                              ' SUM(NVL(SALDOS_FT, 0)) SALDOS, '+
                                              ' SUM(NVL(SALDOS_FP, 0)) SALDOS_FP, '+
                                              ' SUM(NVL(SALDOS_FV, 0)) SALDOS_FV, '+
                                              ' SUM(NVL(SALDO_CB, 0)) SALDO_CB, '+
                                              ' SUM(NVL(SALDO_NC, 0)) SALDO_NC, '+
                                              ' MAX(P_NC) P_NC, '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / 100 PORNC, '+
                                              ' MAX(P_CB) P_CB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / 100 PORCB, '+
                                              ' (SUM(NVL(SALDO_CB, 0)) * MAX(P_CB)) / MAX(100) + '+
                                              ' (SUM(NVL(SALDO_NC, 0)) * MAX(P_NC)) / MAX(100) TOTPROV '+
                                         ' FROM CFC000, COB113 WHERE PERIODO ='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND NVL(CFC000.UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text) +
                                           ' AND NVL(CFC000.UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text) +
                                           ' AND NVL(CFC000.USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text) +
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+xWhere+' '+
                                         ' GROUP BY ASOID,CFC_F, RESUMEDES) A, '+
                                         '( '+
                                         ' SELECT '+
                                         ' ASOID,SUM(SALTOT) SALTOREF, SUM(SALDOS_V) SALDOS_V, SUM(SALDOS_P) SALDOS_P FROM '+
                                         ' (SELECT ASOID,CREDID, NVL(SALTOT,0) SALTOT, NVL(SALVEN, 0) SALDOS_V, NVL(SALPEN, 0) SALDOS_P FROM SAL000 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+' AND TIPDESEID=''10'' AND SUBSTR(CREDID,9,1)=''R'' '+
                                         ' ) '+
                                         ' GROUP BY ASOID '+
                                         ' )B '+
                                         ' WHERE A.ASOID=B.ASOID '+
                                         ' ) C '+
                                         ' WHERE PERIODO = '+QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))+
                                           ' AND CFC000.ASOID = C.ASOID '+
                                           ' AND NVL(CFC000.UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text) +
                                           ' AND NVL(CFC000.UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text) +
                                           ' AND NVL(CFC000.USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text) +
                                           ' AND CFC000.CFC_F = COB113.RESUMEID(+) '+ xWhere +
                                         ' GROUP BY C.ASOID,C.SALTOREF,C.PORCENTAJE,SALDOS_FT,CFC_F, RESUMEDES) D  '+
                                 ' WHERE A.RESUMEID = D.CFC(+) '+
                                 ' ORDER BY A.P_NC'+
                                 ' ) '+
                                 ' GROUP BY RESUMEID, RESUMEDES , P_NC, P_CB)'
//Final HPC_201713_COB
            {// Inicio HPC_201505_COB                :  Modificar por el redondeo
               xSQL := 'SELECT CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) '
                  + '              ELSE round( (SUM(SALDOS_RV)/SUM(SALDOS_RT)) ,6) END INDMOR, '
                  + '         CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) '
                  + '              ELSE round( (SUM(TOTPROV)/SUM(SALDOS_RV)) ,6) END INDPRO  '
            // Fin    HPC_201505_COB                :  Modificar por el redondeo
                  + '    FROM (SELECT CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
                  + '                 SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV,'
                  + '                 SUM(NVL(SALDOS_RP,0)) SALDOS_RP, '
                  + '                 SUM(NVL(SALREFCUB,0)) SALDO_CB, '
                  + '                 SUM(NVL(SALREFNOCUB,0)) SALDO_NC, '
                  + '                 MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC,  '
                  + '                 MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB,'
                  + '                 (SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV  '
                  + '           FROM CFC000,COB113 '
                  + '          WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
               + xAsoTipId
                  + '            AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
                  + '            AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
                  + '            AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
                  + '            AND CFC000.CFC_R = COB113.RESUMEID(+) '
                  + '       AND CFC000.SALDOS_RT > 0 '
                  + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
                  + '                      FROM SAL000 SAL '
                  + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
                  + '                       AND SAL.ASOID = CFC000.ASOID '
                  + '                       AND SAL.TIPDESEID = ''10'' '
                  + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'
                  + '          GROUP BY CFC_R,RESUMEDES) ';}
                  //Fin: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
      End;

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('INDMOR').AsCurrency > 0 Then
      Begin
         lblIndice.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         lblProv.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDPRO').AsCurrency, ffNumber, 10, 5);
         lblPorMor.Caption := '(' + FloatToStrF((DM1.cdsQry.FieldByName('INDMOR').AsCurrency * 100), ffNumber, 10, 2) + ' %)';
         lblPorPro.Caption := '(' + FloatToStrF((DM1.cdsQry.FieldByName('INDPRO').AsCurrency * 100), ffNumber, 10, 2) + ' %)';
      End
      Else
      Begin
         lblIndice.Caption := '0.0000';
         lblProv.Caption := '0.0000';
         lblPorMor.Caption := '(0.00 %)';
         lblPorPro.Caption := '(0.00 %)';
      End;
      DM1.cdsQry.Close;
      ppLbltit.Caption := 'CALIFICACIÓN DE DEUDORES Y EXIGENCIA DE PROVISIONES  A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
      pplTipAso.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
      ppRepClfcar.Print;
      ppRepClfcar.Cancel;
   End
   Else
   Begin
      MessageDlg(' No Existe Información Procesada Para Ese Periodo ', mtError, [mbOk], 0);
   End;
   DM1.cdsDetalle.Close;
   Screen.Cursor := crDefault;
   // Fin HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
End;
// Fin: HPP_201006_COB

// Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
Procedure TfCalfCtaxCob.BitConUge_RefInternoClick(Sender: TObject);
Var
   xSQL: String;
   xasotipid: String;
Begin
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   rgTipoResumen.ItemIndex := 0;
   xSQL := 'select UPROID,UPRONOM,UPAGOID,UPAGONOM,USEID,USENOM,INDMOR,PORMOR,INDPRO, PORPRO '
      + 'from ( '
      + 'SELECT a.UPROID, C.UPRONOM, '
      + '  a.UPAGOID, D.UPAGONOM, '
      + '  a.USEID, E.USENOM, '
      + '  round(CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(SALDOS_RV)/SUM(SALDOS_RT)) END,5) INDMOR, '
      + '  round(CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(SALDOS_RV)/SUM(SALDOS_RT)*100) END,5) PORMOR, '
      + '  round(CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(TOTPROV)/SUM(SALDOS_RV)) END,5) INDPRO, '
      + '  round(CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(TOTPROV)/SUM(SALDOS_RV)*100) END,5)  PORPRO '
      + 'FROM (SELECT UPROID,UPAGOID,USEID,CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_RT,0)) SALDOS_RT, '
      + '        SUM(NVL(SALDOS_RV,0))  SALDOS_RV, SUM(NVL(SALDOS_RP,0)) SALDOS_RP, SUM(NVL(SALREFCUB,0)) SALDO_CB, '
      + '        SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC, '
      + '        MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB, '
      + '        (SUM(NVL(SALREFCUB,0))*MAX(P_CB)) /MAX(100) + (SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV '
      + '      FROM CFC000,COB113 '
      + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + xasotipid
      + '            AND CFC000.CFC_R=COB113.RESUMEID(+) '
      + '       AND CFC000.SALDOS_RT > 0 '
      + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
      + '                      FROM SAL000 SAL '
      + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
      + '                       AND SAL.ASOID = CFC000.ASOID '
      + '                       AND SAL.TIPDESEID = ''10'' '
      + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'
      + '      GROUP BY CFC000.UPROID,CFC000.UPAGOID,CFC000.USEID,CFC_R,RESUMEDES) A, '
      + '  APO102 C, APO103 D, APO101 E '
      + 'WHERE C.UPROID(+) = A.UPROID '
      + '      and D.UPROID(+) = A.UPROID and D.UPAGOID(+) = A.UPAGOID '
      + '      and E.UPROID(+) = A.UPROID and E.UPAGOID(+) = A.UPAGOID and E.USEID(+) = A.USEID '
      + 'GROUP BY a.UPROID, C.UPRONOM, '
      + '         a.UPAGOID, D.UPAGONOM, '
      + '         a.USEID, E.USENOM '
      + ')XX '
      + 'order by UPROID asc, INDMOR desc';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsReporte.RecordCount > 0 Then
   Begin
      Screen.Cursor := crHourglass;
      LblTitulo3b.Caption := 'INDICE DE MOROSIDAD Y PROVISIÓN POR UGEL - ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;

// Inicio: HPP_201006_COB POR JCARBONEL
{
      xSQL := 'SELECT round(SUM(SALDOS_RV)/SUM(SALDOS_RT),5) INDMOR,round(SUM(SALDOS_RV)/SUM(SALDOS_RT)*100,5) PORMOR, '
         + '       round(SUM(TOTPROV)/SUM(SALDOS_RV),5) INDPRO,round(SUM(TOTPROV)/SUM(SALDOS_RV)*100,5) PORPRO '
}
      xSQL := 'SELECT case when SUM(SALDOS_RT)=0 then 0.00 else round(SUM(SALDOS_RV)/SUM(SALDOS_RT),5) end INDMOR, '
         +'           case when SUM(SALDOS_RT)=0 then 0.00 else round(SUM(SALDOS_RV)/SUM(SALDOS_RT)*100,5) end PORMOR, '
         + '          case when SUM(SALDOS_RV)=0 then 0.00 else round(SUM(TOTPROV)/SUM(SALDOS_RV),5) end INDPRO, '
         + '          case when SUM(SALDOS_RV)=0 then 0.00 else round(SUM(TOTPROV)/SUM(SALDOS_RV)*100,5) end PORPRO '
// Fin: HPP_201006_COB POR JCARBONEL
         + 'FROM (SELECT CFC000.OFDESID,CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
         + '             SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV, '
         + '             SUM(NVL(SALDOS_RP,0)) SALDOS_RP, SUM(NVL(SALREFCUB,0)) SALDO_CB, '
         + '             SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC, '
         + '             round((SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100,5) PORNC, '
         + '             MAX(P_CB) P_CB,round((SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100,5) PORCB, '
         + '             round((SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100),2) TOTPROV '
         + '      FROM CFC000,COB113 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid
         + '      AND CFC000.CFC_R=COB113.RESUMEID(+) '
         + '       AND CFC000.SALDOS_RT > 0 '
         + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
         + '                      FROM SAL000 SAL '
         + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
         + '                       AND SAL.ASOID = CFC000.ASOID '
         + '                       AND SAL.TIPDESEID = ''10'' '
         + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'
         + '      GROUP BY CFC000.OFDESID,CFC_R,RESUMEDES) A ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         lblIndMor3b.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         lblrPorMor3b.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
         lblIndPro3b.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDPRO').AsCurrency, ffNumber, 10, 5);
         lblrPorPro3b.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORPRO').AsCurrency, ffNumber, 10, 2);
      End;
      DM1.cdsReporte.Close;
      pplasotipidRepCons02.Caption := 'TIPO DE ASOCIADO  - REFINANCIADOS : ' + rgtipaso.Items[rgtipaso.ItemIndex];
      RepCons02.Print;
      RepCons02.Cancel;
   End
   else
   begin
     showmessage('No existe información para mostrar.');
   end;
   DM1.cdsReporte.Close;
   Screen.Cursor := crDefault;
End;
// Fin: HPP_201006_COB

// Fin HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno

// Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
Procedure TfCalfCtaxCob.BitConOfi_RefInternoClick(Sender: TObject);
Var
   xSQL: String;
   xasotipid: String;
Begin
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   rgTipoResumen.ItemIndex := 0;
// Inicio: HPP_201006_COB POR JCARBONEL
{
   xSQL := 'SELECT NVL(A.OFDESID,''00'') OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(SALDOS_RV)/SUM(SALDOS_RT)) END INDMOR, ' +
      'CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(SALDOS_RV)/SUM(SALDOS_RT)*100) END PORMOR, ' +
      'CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(TOTPROV)/SUM(SALDOS_RV)) END INDPRO,CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(TOTPROV)/SUM(SALDOS_RV)*100) END  PORPRO FROM ' +
}
// Inicio: SPP_201402_COB             :  Modificación por Cambio de Socket
   xSQL := 'SELECT NVL(A.OFDESID,''00'') OFDESID, '
          +'       NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, '
          +'       CASE WHEN SUM(NVL(SALDOS_RT,0))=0 THEN SUM(0) ELSE round((SUM(SALDOS_RV)/SUM(SALDOS_RT)),4) END INDMOR, '
          +'       CASE WHEN SUM(NVL(SALDOS_RT,0))=0 THEN SUM(0) ELSE round((SUM(SALDOS_RV)/SUM(SALDOS_RT)*100),4) END PORMOR, '
          +'       CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE round((SUM(TOTPROV)/SUM(SALDOS_RV)),4) END INDPRO, '
          +'       CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE round((SUM(TOTPROV)/SUM(SALDOS_RV)*100),4) END  PORPRO FROM ' +
// Fin: SPP_201402_COB                :  Modificación por Cambio de Socket
// Fin: HPP_201006_COB POR JCARBONEL
      '(SELECT CFC000.OFDESID,CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_RT,0)) SALDOS_RT, ' +
      'SUM(NVL(SALDOS_RV,0))  SALDOS_RV,SUM(NVL(SALDOS_RP,0)) SALDOS_RP, ' +
      'SUM(NVL(SALREFCUB,0)) SALDO_CB,SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC, ' +
      'MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV  ' +
      'FROM CFC000,COB113 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + xasotipid
      + ' AND CFC000.CFC_R=COB113.RESUMEID(+) '
      + '       AND CFC000.SALDOS_RT > 0 '
      + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
      + '                      FROM SAL000 SAL '
      + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
      + '                       AND SAL.ASOID = CFC000.ASOID '
      + '                       AND SAL.TIPDESEID = ''10'' '
      + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'
      + ' GROUP BY CFC000.OFDESID,CFC_R,RESUMEDES) A, APO110 B WHERE A.OFDESID=B.OFDESID(+) GROUP BY A.OFDESID,B.OFDESNOM ORDER BY INDMOR DESC ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsQry6.RecordCount > 0 Then
   Begin
      Screen.Cursor := crHourglass;
      LblTitulo.Caption := 'INDICE DE MOROSIDAD Y PROVISIÓN POR OFICINA DESCONCENTRADA - ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
// Inicio: HPP_201006_COB POR JCARBONEL
      xSQL := 'SELECT '
         + '       case when SUM(SALDOS_RT)=0 then 0 else round(SUM(SALDOS_RV) / SUM(SALDOS_RT), 5) end INDMOR, '
         + '       case when SUM(SALDOS_RT)=0 then 0 else round(SUM(SALDOS_RV) / SUM(SALDOS_RT) * 100, 5) end PORMOR, '
         + '       case when SUM(SALDOS_RV)=0 then 0 else round(SUM(TOTPROV)   / SUM(SALDOS_RV), 5) end INDPRO, '
         + '       case when SUM(SALDOS_RV)=0 then 0 else round(SUM(TOTPROV)   / SUM(SALDOS_RV) * 100, 5) end PORPRO '
// Fin: HPP_201006_COB POR JCARBONEL
         + 'FROM (SELECT CFC000.OFDESID,CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
         + '             SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV, '
         + '             SUM(NVL(SALDOS_RP,0)) SALDOS_RP, SUM(NVL(SALREFCUB,0)) SALDO_CB, '
         + '             SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC, '
         + '             round((SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100,5) PORNC, '
         + '             MAX(P_CB) P_CB,round((SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100,5) PORCB, '
         + '             round((SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100),2) TOTPROV '
         + '      FROM CFC000,COB113 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid
         + '        AND CFC000.CFC_R=COB113.RESUMEID(+) '
         + '       AND CFC000.SALDOS_RT > 0 '
         + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
         + '                      FROM SAL000 SAL '
         + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
         + '                       AND SAL.ASOID = CFC000.ASOID '
         + '                       AND SAL.TIPDESEID = ''10'' '
         + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )'
         + '      GROUP BY CFC000.OFDESID,CFC_R,RESUMEDES) A ';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSQL);
      DM1.cdsQry5.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry5.RecordCount > 0 Then
      Begin
         lblIndMor.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         lblrPorMor.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
         lblIndPro.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('INDPRO').AsCurrency, ffNumber, 10, 5);
         lblrPorPro.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('PORPRO').AsCurrency, ffNumber, 10, 2);
      End;
      DM1.cdsQry5.Close;
      pplTipAsoRepCons.Caption := 'TIPO DE ASOCIADO  - REFINANCIADOS : ' + rgtipaso.Items[rgtipaso.ItemIndex];
      RepCons.Print;
      RepCons.Cancel;
   End
   else
   begin
     showmessage('No existe información para mostrar.');
   end;
   DM1.cdsQry6.Close;
   Screen.Cursor := crDefault;
End;
// Fin: HPP_201006_COB

// Fin HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno

// Inicio: HPP_201006_COB POR JCARBONEL
procedure TfCalfCtaxCob.dbsMesIniExit(Sender: TObject);
begin
   if (length(dbsMesIni.Text)=0) or
      (strtoint(dbsMesIni.Text)=0) or
      (strtoint(dbsMesIni.Text)>12) then
   begin
      ShowMessage('Debe indicar un Mes válido');
      dbsMesIni.SetFocus;
      exit;
   end;
   if strtoint(dbsMesIni.Text)>0 then
   begin
      lblNomMes.Caption := DM1.DesMes(StrToInt(dbsMesIni.Text), 'N');
      LimpiaGrid;
   end;
end;

procedure TfCalfCtaxCob.dbsMesIniKeyPress(Sender: TObject; var Key: Char);
begin
   if Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
      Key :=#0;
end;
// Fin: HPP_201006_COB POR JCARBONEL

// inicio: HPP_201009_COB - SAR-2010-0141

// Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
procedure TfCalfCtaxCob.btnAExcelRefClick(Sender: TObject);
    function getSQL(): String;
    Var
        xSQL: String;
        xSQL01: String;
        xSQLAsoTipId: String;
        xPeriodo: String;
// Inicio HPC_201734_COB                :  Añadir Campos de Creditos Refinanciados
        xSQL2: String;
// Fin   HPC_201734_COB                :  Añadir Campos de Creditos Refinanciados
    Begin
        xSQLAsoTipId := '';
        xPeriodo := Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]));
        If rgtipaso.ItemIndex = 1 Then xSQLAsoTipId := ' AND ASOTIPID = ''DO''';
        If rgtipaso.ItemIndex = 2 Then xSQLAsoTipId := ' AND ASOTIPID = ''CE''';
        If rgtipaso.ItemIndex = 3 Then xSQLAsoTipId := ' AND ASOTIPID = ''CO''';
        If rgTipoResumen.ItemIndex = 0 Then // Tipo de Resumen = TODOS
        Begin
            xSQL01 := '';
        End
        Else
            If rgTipoResumen.ItemIndex = 1 Then // Tipo de Resumen = Por Oficina
            Begin
                If Length(Trim(EdtOfiDes.Text)) = 0 Then
                Begin
                    MessageDlg(' Debe SELECCIONAR UNA OFICINA!!', mtError, [mbOk], 0);
                    Screen.Cursor := crDefault;
                    Exit;
                End;
                xSQL01 := ' AND NVL(OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text);
            End
            Else
                If rgTipoResumen.ItemIndex = 2 Then // Tipo de Resumen = Por ugel
                Begin
                    If trim(EdtUseNom.Text) = '' Then
                    Begin
                        MessageDlg(' Debe SELECCIONAR UNA UGEL!!', mtError, [mbOk], 0);
                        Screen.Cursor := crDefault;
                        Exit;
                    End;
                    xSQL01 := ' AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
                        + ' AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
                        + ' AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
                End;

        xSQL := 'SELECT CFC_APO.CALIF CALIFICACION, DPTO_LAB.DPTODES DPTO_LABORAL, UGEL.USENOM UGEL, CFC_APO.ASOTIPID TIPO_ASOCIADO, '
            + '         REGPEN.REGPENDES REG_PENSIONES, CFC_APO.ASOCODMOD COD_MODULAR, CFC_APO.ASODNI DNI, CFC_APO.ASOAPENOM APELLIDOS_NOMBRES, CFC_APO.ASODIR DIR_DOMICILIARIA, '
            + '         DPTO_DOM.DPTODES DPTO_DOMICILIO, PROV_DOM.CIUDDES PROV_DOMICILIO, DIST_DOM.ZIPDES DIST_DOMICILIO, CFC_APO.ASOTELF1 TELEFONO,   '
            + '         CFC_APO.SALDOS_FT SALDO_PERIODO, CFC_APO.SALDOS_FV SALDO_VENCIDO, CFC_APO.SALDOS_FP SALDO_PENDIENTE, CFC_APO.SALTOT SALDO_TOTAL, '
            + '         CFC_APO.MESES_ATRASO ATRASO_MESES, CFC_APO.CTAIND_F CTA_IND_GARANTIA, CFC_APO.SALREFCUB SALDO_CUBIERTO_GARANTIA   '
            + '   FROM (SELECT APO.ASOTIPID, APO.ASOCODMOD, APO.ASODNI, APO.ASOAPENOM,  '
            + '                 APO.ASODIR, APO.ASOTELF1, CFC.CALIF, CFC.SALDOS_FT, '
            + '                 CFC.SALDOS_FV, CFC.SALDOS_FP, CFC.SALTOT, CFC.MESES_ATRASO, '
            + '                 CFC.CTAIND_F, CFC.SALREFCUB, APO.UPROID, APO.UPAGOID,   '
            + '                 APO.USEID, APO.ZIPID, APO.REGPENID, APO.ASODSTLABID, '
            + '                 CFC.PESO_CALIF                                      '
            + '            FROM (SELECT ASOID,                                      '
            + '                          CASE WHEN CFC_R = ''0'' THEN ''NOR''       '
            + '                               WHEN CFC_R = ''A'' THEN ''PPT''       '
            + '                               WHEN CFC_R = ''B'' THEN ''DEF''       '
            + '                               WHEN CFC_R = ''C'' THEN ''DUD''       '
            + '                               WHEN CFC_R = ''D'' THEN ''PER''       '
            + '                           END CALIF,                                '
            + '                          CASE WHEN CFC_R = ''0'' THEN 0             '
            + '                               WHEN CFC_R = ''A'' THEN 1             '
            + '                               WHEN CFC_R = ''B'' THEN 2             '
            + '                               WHEN CFC_R = ''C'' THEN 3             '
            + '                               WHEN CFC_R = ''D'' THEN 4             '
            + '                           END PESO_CALIF, SALDOS_RT SALDOS_FT,      '
            + '                          SALDOS_RV SALDOS_FV, SALDOS_RP SALDOS_FP, SALTOT,  '
            + '                          TRUNC(DIASTRANS / 30) MESES_ATRASO,        '
            + '                          NVL(CTAIND_F, 0.0) CTAIND_F, SALREFCUB     '
            + '                     FROM CFC000                                     '
            + '                    WHERE PERIODO = ' + QuotedStr(xPeriodo)
            + xSQLAsoTipId
            + xSQL01
            + '                      AND SALDOS_RT > 0                              '
            + '                      AND EXISTS (SELECT PERIODO, ASOID, TIPDESEID, CREFOTORG'
            + '                                    FROM SAL000 SAL                  '
            + '                                   WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                                     AND SAL.ASOID = CFC000.ASOID    '
            + '                                     AND SAL.TIPDESEID = ''10''      '
            + '                                     AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )) CFC,  '
            + '                 APO201 APO                                          '
            + '           WHERE CFC.ASOID = APO.ASOID) CFC_APO, APO101 UGEL, APO158 DPTO_DOM,   '
            + '        APO123 PROV_DOM, APO122 DIST_DOM, APO158 DPTO_LAB, APO105 REGPEN '
            + '  WHERE CFC_APO.UPROID = UGEL.UPROID(+)                              '
            + '    AND CFC_APO.UPAGOID = UGEL.UPAGOID(+)                            '
            + '    AND CFC_APO.USEID = UGEL.USEID(+)                                '
            + '    AND SUBSTR(CFC_APO.ZIPID, 1, 2) = DPTO_DOM.DPTOID(+)             '
            + '    AND SUBSTR(CFC_APO.ZIPID, 1, 4) = PROV_DOM.CIUDID(+)             '
            + '    AND CFC_APO.ZIPID = DIST_DOM.ZIPID(+)                            '
            + '    AND SUBSTR(CFC_APO.ASODSTLABID, 1, 2) = DPTO_LAB.DPTOID(+)       '
            + '    AND CFC_APO.REGPENID = REGPEN.REGPENID(+)                        '
            + '  ORDER BY CFC_APO.PESO_CALIF, DPTO_LAB.DPTODES, UGEL.USENOM, CFC_APO.ASOTIPID, REGPEN.REGPENDES ';

// Inicio HPC_201734_COB                :  Añadir Campos de Creditos Refinanciados
        xSQL := 'SELECT a.CALIFICACION, a.DPTO_LABORAL, a.UGEL, a.TIPO_ASOCIADO, a.REG_PENSIONES, a.COD_MODULAR, '
              +   'a.DNI, a.APELLIDOS_NOMBRES, a.DIR_DOMICILIARIA, a.DPTO_DOMICILIO, a.PROV_DOMICILIO, '
              +   'a.DIST_DOMICILIO, a.TELEFONO, a.SALDO_PERIODO, a.SALDO_VENCIDO, a.SALDO_PENDIENTE, '
              +   'a.SALDO_TOTAL, a.ATRASO_MESES, a.CTA_IND_GARANTIA, a.SALDO_CUBIERTO_GARANTIA, '
              +   'a.CRE_ORIGINAL, B.CREFOTORG FECHA_OTORG_CRE_ORI, B.CRENUMCUO CUOTAS_CRE_ORI, C.CFCDES_F CARTERA_CRE_ORI, '
              +   'D.CRESDOACT SALDO_CRE_REFI, CRE_REFI, D.CREFOTORG FECHA_OTORG_CRE_REFI, D.CRENUMCUO CUOTAS_CRE_REFI, '
              +   '(select count(1) from cre302 where asoid=a.ASOID and credid=CRE_REFI and creestid not in (''02'',''11'',''14'',''27'',''19'' ) ) CUOTAS_CANC_CRE_REFI '
              + 'FROM ( '
            +' SELECT CFC_APO.CALIF CALIFICACION, DPTO_LAB.DPTODES DPTO_LABORAL, UGEL.USENOM UGEL, CFC_APO.ASOTIPID TIPO_ASOCIADO, '
            + '         REGPEN.REGPENDES REG_PENSIONES, CFC_APO.ASOCODMOD COD_MODULAR, CFC_APO.ASODNI DNI, CFC_APO.ASOAPENOM APELLIDOS_NOMBRES, CFC_APO.ASODIR DIR_DOMICILIARIA, '
            + '         DPTO_DOM.DPTODES DPTO_DOMICILIO, PROV_DOM.CIUDDES PROV_DOMICILIO, DIST_DOM.ZIPDES DIST_DOMICILIO, CFC_APO.ASOTELF1 TELEFONO,   '
            + '         CFC_APO.SALDOS_FT SALDO_PERIODO, CFC_APO.SALDOS_FV SALDO_VENCIDO, CFC_APO.SALDOS_FP SALDO_PENDIENTE, CFC_APO.SALTOT SALDO_TOTAL, '
            + '         CFC_APO.MESES_ATRASO ATRASO_MESES, CFC_APO.CTAIND_F CTA_IND_GARANTIA, CFC_APO.SALREFCUB SALDO_CUBIERTO_GARANTIA   '
            + '       , CFC_APO.ASOID, CRE.CREDID CRE_REFI, SUBSTR(db2admin.sf_cre_refinanciado_origen( CFC_APO.ASOID, CRE.CREDID ),1,20) CRE_ORIGINAL '
            + '   FROM (SELECT APO.ASOID, APO.ASOTIPID, APO.ASOCODMOD, APO.ASODNI, APO.ASOAPENOM,  '
            + '                 APO.ASODIR, APO.ASOTELF1, CFC.CALIF, CFC.SALDOS_FT, '
            + '                 CFC.SALDOS_FV, CFC.SALDOS_FP, CFC.SALTOT, CFC.MESES_ATRASO, '
            + '                 CFC.CTAIND_F, CFC.SALREFCUB, APO.UPROID, APO.UPAGOID,   '
            + '                 APO.USEID, APO.ZIPID, APO.REGPENID, APO.ASODSTLABID, '
            + '                 CFC.PESO_CALIF                                      '
            + '            FROM (SELECT ASOID,                                      '
            + '                          CASE WHEN CFC_R = ''0'' THEN ''NOR''       '
            + '                               WHEN CFC_R = ''A'' THEN ''PPT''       '
            + '                               WHEN CFC_R = ''B'' THEN ''DEF''       '
            + '                               WHEN CFC_R = ''C'' THEN ''DUD''       '
            + '                               WHEN CFC_R = ''D'' THEN ''PER''       '
            + '                           END CALIF,                                '
            + '                          CASE WHEN CFC_R = ''0'' THEN 0             '
            + '                               WHEN CFC_R = ''A'' THEN 1             '
            + '                               WHEN CFC_R = ''B'' THEN 2             '
            + '                               WHEN CFC_R = ''C'' THEN 3             '
            + '                               WHEN CFC_R = ''D'' THEN 4             '
            + '                           END PESO_CALIF, SALDOS_RT SALDOS_FT,      '
            + '                          SALDOS_RV SALDOS_FV, SALDOS_RP SALDOS_FP, SALTOT,  '
            + '                          TRUNC(DIASTRANS / 30) MESES_ATRASO,        '
            + '                          NVL(CTAIND_F, 0.0) CTAIND_F, SALREFCUB     '
            + '                     FROM CFC000                                     '
            + '                    WHERE PERIODO = ' + QuotedStr(xPeriodo)
            + xSQLAsoTipId
            + xSQL01
            + '                      AND SALDOS_RT > 0                              '
            + '                      AND EXISTS (SELECT PERIODO, ASOID, TIPDESEID, CREFOTORG'
            + '                                    FROM SAL000 SAL                  '
            + '                                   WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                                     AND SAL.ASOID = CFC000.ASOID    '
            + '                                     AND SAL.TIPDESEID = ''10''      '
            + '                                     AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''R'' )) CFC,  '
            + '                 APO201 APO                                          '
            + '           WHERE CFC.ASOID = APO.ASOID) CFC_APO, APO101 UGEL, APO158 DPTO_DOM,   '
            + '        APO123 PROV_DOM, APO122 DIST_DOM, APO158 DPTO_LAB, APO105 REGPEN '
            + '      ,  SAL000 CRE ';

      xSQL2:= '  WHERE CFC_APO.UPROID = UGEL.UPROID(+)                              '
            + '    AND CFC_APO.UPAGOID = UGEL.UPAGOID(+)                            '
            + '    AND CFC_APO.USEID = UGEL.USEID(+)                                '
            + '    AND SUBSTR(CFC_APO.ZIPID, 1, 2) = DPTO_DOM.DPTOID(+)             '
            + '    AND SUBSTR(CFC_APO.ZIPID, 1, 4) = PROV_DOM.CIUDID(+)             '
            + '    AND CFC_APO.ZIPID = DIST_DOM.ZIPID(+)                            '
            + '    AND SUBSTR(CFC_APO.ASODSTLABID, 1, 2) = DPTO_LAB.DPTOID(+)       '
            + '    AND CFC_APO.REGPENID = REGPEN.REGPENID(+) '

            + '   AND '''+xPeriodo+''' = CRE.PERIODO '
            + '   AND CFC_APO.ASOID = CRE.ASOID '
            + '   AND CRE.TIPDESEID = ''10'' '
            + '   AND CRE.CREFOTORG >= ''01/10/2008'' '
            + '   AND SUBSTR(CRE.CREDID, 9, 1) = ''R'' '

            + '  ORDER BY CFC_APO.PESO_CALIF, DPTO_LAB.DPTODES, UGEL.USENOM, CFC_APO.ASOTIPID, REGPEN.REGPENDES '
            + ' ) A, CRE301 B, CFC000 C, CRE301 D '
            + 'WHERE A.ASOID=B.ASOID(+) '
            + '  AND A.CRE_ORIGINAL=B.CREDID(+) '
            + '  AND TO_CHAR(add_months(B.CREFOTORG,-1),''YYYYMM'')=C.PERIODO(+) AND B.ASOID=C.ASOID(+) '
            + '  AND A.ASOID=D.ASOID(+) '
            + '  AND A.CRE_REFI=D.CREDID(+)';

        getSQL := xSQL + xSQL2;
// Fin   HPC_201734_COB                :  Añadir Campos de Creditos Refinanciados
    End;
Begin
    If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then
    Begin
        showmessage('No existe información para exportar.');
        exit;
    End;
    Screen.Cursor := crHourglass;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(getSQL());
    DM1.cdsQry.Open;
    DBGrid1.DataSource:=DM1.dsQry;
    DM1.HojaExcel('Refinanciados',DM1.dsQry,DBGrid1);
    DM1.cdsQry.Close;
    Screen.Cursor := crDefault;
end;
// Fin HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno

// fin: HPP_201009_COB

// Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
procedure TfCalfCtaxCob.btnConOfi_AmpInternoClick(Sender: TObject);
var
   xSQL: String;
   xasotipid: String;
Begin
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   rgTipoResumen.ItemIndex := 0;
   xSQL := 'SELECT NVL(A.OFDESID,''00'') OFDESID, '
          +'       NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, '
          +'       CASE WHEN SUM(NVL(SALDOS_RT,0))=0 THEN SUM(0) ELSE round((SUM(SALDOS_RV)/SUM(SALDOS_RT)),4) END INDMOR, '
          +'       CASE WHEN SUM(NVL(SALDOS_RT,0))=0 THEN SUM(0) ELSE round((SUM(SALDOS_RV)/SUM(SALDOS_RT)*100),4) END PORMOR, '
          +'       CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE round((SUM(TOTPROV)/SUM(SALDOS_RV)),4) END INDPRO, '
          +'       CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE round((SUM(TOTPROV)/SUM(SALDOS_RV)*100),4) END  PORPRO FROM ' +
      '(SELECT CFC000.OFDESID,CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_RT,0)) SALDOS_RT, ' +
      'SUM(NVL(SALDOS_RV,0))  SALDOS_RV,SUM(NVL(SALDOS_RP,0)) SALDOS_RP, ' +
      'SUM(NVL(SALREFCUB,0)) SALDO_CB,SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC, ' +
      'MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV  ' +
      'FROM CFC000,COB113 WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + xasotipid
      + ' AND CFC000.CFC_R=COB113.RESUMEID(+) '
      + '       AND CFC000.SALDOS_RT > 0 '
      + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
      + '                      FROM SAL000 SAL '
      + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
      + '                       AND SAL.ASOID = CFC000.ASOID '
      + '                       AND SAL.TIPDESEID = ''10'' '
      + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )'
      + ' GROUP BY CFC000.OFDESID,CFC_R,RESUMEDES) A, APO110 B WHERE A.OFDESID=B.OFDESID(+) GROUP BY A.OFDESID,B.OFDESNOM ORDER BY INDMOR DESC ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsQry6.RecordCount > 0 Then
   Begin
      Screen.Cursor := crHourglass;
      lblTituloAmp.Caption := 'INDICE DE MOROSIDAD Y PROVISIÓN POR OFICINA DESCONCENTRADA - ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
      xSQL := 'SELECT '
         + '       case when SUM(SALDOS_RT)=0 then 0 else round(SUM(SALDOS_RV) / SUM(SALDOS_RT), 5) end INDMOR, '
         + '       case when SUM(SALDOS_RT)=0 then 0 else round(SUM(SALDOS_RV) / SUM(SALDOS_RT) * 100, 5) end PORMOR, '
         + '       case when SUM(SALDOS_RV)=0 then 0 else round(SUM(TOTPROV)   / SUM(SALDOS_RV), 5) end INDPRO, '
         + '       case when SUM(SALDOS_RV)=0 then 0 else round(SUM(TOTPROV)   / SUM(SALDOS_RV) * 100, 5) end PORPRO '
         + 'FROM (SELECT CFC000.OFDESID,CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
         + '             SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV, '
         + '             SUM(NVL(SALDOS_RP,0)) SALDOS_RP, SUM(NVL(SALREFCUB,0)) SALDO_CB, '
         + '             SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC, '
         + '             round((SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100,5) PORNC, '
         + '             MAX(P_CB) P_CB,round((SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100,5) PORCB, '
         + '             round((SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100),2) TOTPROV '
         + '      FROM CFC000,COB113 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid
         + '        AND CFC000.CFC_R=COB113.RESUMEID(+) '
         + '       AND CFC000.SALDOS_RT > 0 '
         + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
         + '                      FROM SAL000 SAL '
         + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
         + '                       AND SAL.ASOID = CFC000.ASOID '
         + '                       AND SAL.TIPDESEID = ''10'' '
         + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )'
         + '      GROUP BY CFC000.OFDESID,CFC_R,RESUMEDES) A ';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSQL);
      DM1.cdsQry5.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry5.RecordCount > 0 Then
      Begin
         lblIndMorAmp.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         lblrPorMorAmp.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
         lblIndProAmp.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('INDPRO').AsCurrency, ffNumber, 10, 5);
         lblrPorProAmp.Caption := FloatToStrF(DM1.cdsQry5.FieldByName('PORPRO').AsCurrency, ffNumber, 10, 2);
      End;
      DM1.cdsQry5.Close;
      pplTipAsoRepConsAmp.Caption := 'TIPO DE ASOCIADO  - AMPLIADOS : ' + rgtipaso.Items[rgtipaso.ItemIndex];
      pprRepConsAmp.Print;
      pprRepConsAmp.Cancel;
   End
   else
   begin
     showmessage('No existe información para mostrar.');
   end;
   DM1.cdsQry6.Close;
   Screen.Cursor := crDefault;
end;
// Fin HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno

// Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
procedure TfCalfCtaxCob.btnConUge_AmpInternoClick(Sender: TObject);
var
   xSQL: String;
   xasotipid: String;
Begin
   xasotipid := '';
   If rgtipaso.ItemIndex = 1 Then xasotipid := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xasotipid := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xasotipid := ' AND ASOTIPID = ''CO''';
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   rgTipoResumen.ItemIndex := 0;
   xSQL := 'select UPROID,UPRONOM,UPAGOID,UPAGONOM,USEID,USENOM,INDMOR,PORMOR,INDPRO, PORPRO '
      + 'from ( '
      + 'SELECT a.UPROID, C.UPRONOM, '
      + '  a.UPAGOID, D.UPAGONOM, '
      + '  a.USEID, E.USENOM, '
      + '  round(CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(SALDOS_RV)/SUM(SALDOS_RT)) END,5) INDMOR, '
      + '  round(CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(SALDOS_RV)/SUM(SALDOS_RT)*100) END,5) PORMOR, '
      + '  round(CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(TOTPROV)/SUM(SALDOS_RV)) END,5) INDPRO, '
      + '  round(CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE (SUM(TOTPROV)/SUM(SALDOS_RV)*100) END,5)  PORPRO '
      + 'FROM (SELECT UPROID,UPAGOID,USEID,CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_RT,0)) SALDOS_RT, '
      + '        SUM(NVL(SALDOS_RV,0))  SALDOS_RV, SUM(NVL(SALDOS_RP,0)) SALDOS_RP, SUM(NVL(SALREFCUB,0)) SALDO_CB, '
      + '        SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC, '
      + '        MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB, '
      + '        (SUM(NVL(SALREFCUB,0))*MAX(P_CB)) /MAX(100) + (SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV '
      + '      FROM CFC000,COB113 '
      + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
   + xasotipid
      + '            AND CFC000.CFC_R=COB113.RESUMEID(+) '
      + '       AND CFC000.SALDOS_RT > 0 '
      + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
      + '                      FROM SAL000 SAL '
      + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
      + '                       AND SAL.ASOID = CFC000.ASOID '
      + '                       AND SAL.TIPDESEID = ''10'' '
      + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )'
      + '      GROUP BY CFC000.UPROID,CFC000.UPAGOID,CFC000.USEID,CFC_R,RESUMEDES) A, '
      + '  APO102 C, APO103 D, APO101 E '
      + 'WHERE C.UPROID(+) = A.UPROID '
      + '      and D.UPROID(+) = A.UPROID and D.UPAGOID(+) = A.UPAGOID '
      + '      and E.UPROID(+) = A.UPROID and E.UPAGOID(+) = A.UPAGOID and E.USEID(+) = A.USEID '
      + 'GROUP BY a.UPROID, C.UPRONOM, '
      + '         a.UPAGOID, D.UPAGONOM, '
      + '         a.USEID, E.USENOM '
      + ')XX '
      + 'order by UPROID asc, INDMOR desc';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsReporte.RecordCount > 0 Then
   Begin
      Screen.Cursor := crHourglass;
      LblTitulo3bAmp.Caption := 'INDICE DE MOROSIDAD Y PROVISIÓN POR UGEL - ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;

      xSQL := 'SELECT case when SUM(SALDOS_RT)=0 then 0.00 else round(SUM(SALDOS_RV)/SUM(SALDOS_RT),5) end INDMOR, '
         +'           case when SUM(SALDOS_RT)=0 then 0.00 else round(SUM(SALDOS_RV)/SUM(SALDOS_RT)*100,5) end PORMOR, '
         + '          case when SUM(SALDOS_RV)=0 then 0.00 else round(SUM(TOTPROV)/SUM(SALDOS_RV),5) end INDPRO, '
         + '          case when SUM(SALDOS_RV)=0 then 0.00 else round(SUM(TOTPROV)/SUM(SALDOS_RV)*100,5) end PORPRO '

         + 'FROM (SELECT CFC000.OFDESID,CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
         + '             SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV, '
         + '             SUM(NVL(SALDOS_RP,0)) SALDOS_RP, SUM(NVL(SALREFCUB,0)) SALDO_CB, '
         + '             SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC, '
         + '             round((SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100,5) PORNC, '
         + '             MAX(P_CB) P_CB,round((SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100,5) PORCB, '
         + '             round((SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100),2) TOTPROV '
         + '      FROM CFC000,COB113 '
         + '      WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
      + xasotipid
         + '      AND CFC000.CFC_R=COB113.RESUMEID(+) '
         + '       AND CFC000.SALDOS_RT > 0 '
         + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
         + '                      FROM SAL000 SAL '
         + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
         + '                       AND SAL.ASOID = CFC000.ASOID '
         + '                       AND SAL.TIPDESEID = ''10'' '
         + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )'
         + '      GROUP BY CFC000.OFDESID,CFC_R,RESUMEDES) A ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         lblIndMor3bAmp.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         lblrPorMor3bAmp.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORMOR').AsCurrency, ffNumber, 10, 2);
         lblIndPro3bAmp.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDPRO').AsCurrency, ffNumber, 10, 5);
         lblrPorPro3bAmp.Caption := FloatToStrF(DM1.cdsQry.FieldByName('PORPRO').AsCurrency, ffNumber, 10, 2);
      End;
      DM1.cdsReporte.Close;
      pplasotipidRepCons02Amp.Caption := 'TIPO DE ASOCIADO  - AMPLIADOS : ' + rgtipaso.Items[rgtipaso.ItemIndex];
      pprRepCons02Amp.Print;
      pprRepCons02Amp.Cancel;
   End
   else
   begin
     showmessage('No existe información para mostrar.');
   end;
   DM1.cdsReporte.Close;
   Screen.Cursor := crDefault;

end;
// Fin HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno

// Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
procedure TfCalfCtaxCob.btnResClfCar_AmpInternoClick(Sender: TObject);
Var
   xSQL: String;
   xReg: Integer;
   xTot: Currency;
   xAsoTipId: String;
Begin

   xAsoTipId := '';
   If rgtipaso.ItemIndex = 1 Then xAsoTipId := ' AND ASOTIPID = ''DO''';
   If rgtipaso.ItemIndex = 2 Then xAsoTipId := ' AND ASOTIPID = ''CE''';
   If rgtipaso.ItemIndex = 3 Then xAsoTipId := ' AND ASOTIPID = ''CO''';
   If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then Exit;
   Screen.Cursor := crHourglass;
   xTot := 0;
   xReg := 0;
   //Inicio: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
   xSQL := 'SELECT SUM(NVL(SALDOS_FT,0)) TOT,COUNT(1) REG FROM CFC000 ' +                      
           'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) +  xAsoTipId +' AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG ' +
           'FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' ' +
           { 'AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' ) ';  }
           ' AND SUBSTR(CREDID,9,1)=''A'' ) ';
   DM1.cdsCtasBco.Close;
   DM1.cdsCtasBco.DataRequest(xSQL);
   DM1.cdsCtasBco.Open;
   If DM1.cdsCtasBco.RecordCount = 1 Then
   Begin
      xReg := DM1.cdsCtasBco.FieldByName('REG').AsInteger;
      xTot := DM1.cdsCtasBco.FieldByName('TOT').AsFloat;
   End;
   DM1.cdsCtasBco.Close;
   If rgTipoResumen.ItemIndex = 0 Then // Tipo de Resumen = TODOS
   Begin
      if xReg>0 then
         xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, round((NVL(B.MOVIM,0))*100/' + FloatToStr(xReg) + ',4) Movim_Por, '
      else
         xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM,0.00 Movim_Por, ';

      xSQL := xSQL+ '         NVL(B.SALDOS_FT,0) SALDOS_FT, ';

      if xTot>0 then
         xSQL :=   xSQL+ '       round( NVL(B.SALDOS_FT,0)*100/' + FloatToStr(xTot) + ',4) SaldoTotal_Por, '
      else
         xSQL :=   xSQL+ '         0.00 SaldoTotal_Por, ';
      xSQL :=   xSQL
         + '         NVL(SALDOS_FV,0) SALDOS_FV, NVL(SALDOS_FP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
         + '         NVL(B.SALDO_NC,0) SALDO_NC, A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
         + '         NVL(B.TOTPROV,0) TOTPROV '
         + '    FROM COB113 A, '
         + '    (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
         + '            SUM(NVL(SALDOS_FV,0)) SALDOS_FV, SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
         + '            SUM(NVL(SALDO_CB,0)) SALDO_CB, SUM(NVL(SALDO_NC,0)) SALDO_NC, '
         + '            MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
         + '            MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
         + '           (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '
         + '     FROM CFC000,COB113 '
         + '     WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
         + '       AND CFC000.CFC_F=COB113.RESUMEID(+) '
         {+ '       AND CFC000.SALDOS_RT > 0 ' }
         + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
         + '                      FROM SAL000 SAL '
         + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
         + '                       AND SAL.ASOID = CFC000.ASOID '
         + '                       AND SAL.TIPDESEID = ''10'' '
         {+ '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )'}
         + '                       AND SUBSTR(CREDID,9,1)=''A'' )'
         + '     GROUP BY CFC_F,RESUMEDES) B '
         + 'WHERE A.RESUMEID=B.CFC(+) '
         + 'ORDER BY A.P_NC';
      lblOfiDes.Caption := 'TODAS LAS OFICINAS DESCONCENTRADAS - AMPLIADOS';
      //Fin: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
   End
   Else
   Begin
      If rgTipoResumen.ItemIndex = 1 Then // Tipo de Resumen = Por Oficina
      Begin
         //Inicio: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB 
         If Length(Trim(EdtOfiDes.Text)) = 0 Then
         Begin
            MessageDlg(' Debe SELECCIONAR UNA OFICINA!!', mtError, [mbOk], 0);
            Screen.Cursor := crDefault;
            Exit;
         End;

         xSQL := 'SELECT SUM(NVL(SALDOS_FT,0)) TOT,COUNT(1) REG FROM CFC000 ' +
           'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) +  xAsoTipId +
           ' AND OFDESID=' + QuotedStr(DBLkOfiDes.Text)   +
           ' AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG ' +
           ' FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' ' +
           ' AND SUBSTR(CREDID,9,1)=''A'' ) ';

         {xSQL := 'SELECT ASOID '
            + '    FROM CFC000 '
            + '   WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
         + '     AND OFDESID=' + QuotedStr(DBLkOfiDes.Text)
            + '     AND CFC000.SALDOS_RT > 0 '
            + '     AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                      FROM SAL000 SAL '
            + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                       AND SAL.ASOID = CFC000.ASOID '
            + '                       AND SAL.TIPDESEID = ''10'' '
            + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )';
         xReg := DM1.CountReg(xSQL);
         xSQL := 'SELECT NVL(SUM(NVL(SALDOS_RT,0)),0) SALDOS '
            + '    FROM CFC000 '
            + '   WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
         + '     AND OFDESID=' + QuotedStr(DBLkOfiDes.Text)
            + '     AND CFC000.SALDOS_RT > 0 '
            + '     AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                      FROM SAL000 SAL '
            + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                       AND SAL.ASOID = CFC000.ASOID '
            + '                       AND SAL.TIPDESEID = ''10'' '
            + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )';}
         DM1.cdsTRela.Close;
         DM1.cdsTRela.DataRequest(xSQL);
         DM1.cdsTRela.Open;
         If DM1.cdsTRela.RecordCount = 1 Then
         Begin
            xReg := DM1.cdsTRela.FieldByName('REG').AsInteger;
            xTot := DM1.cdsTRela.FieldByName('TOT').AsFloat;
         End;
         DM1.cdsTRela.Close;
         xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, '
            + '         CASE WHEN ' + IntToStr(xReg) + '=0 THEN 0 ELSE round((NVL(B.MOVIM,0))*100/' + IntToStr(xReg) + ',4) END Movim_Por, '
            + '         NVL(B.SALDOS_FT,0) SALDOS_FT, CASE WHEN ' + FloatToStr(xTot) + '=0 THEN 0 ELSE round(NVL(B.SALDOS_FT,0)*100/' + FloatToStr(xTot) + ',4) END SaldoTotal_Por, '
            + '         NVL(SALDOS_FV,0) SALDOS_FV, NVL(SALDOS_FP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
            + '         NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
            + '         NVL(B.TOTPROV,0) TOTPROV '
            + '    FROM COB113 A,'
            + '    (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
            + '            SUM(NVL(SALDOS_FV,0)) SALDOS_FV, SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
            + '            SUM(NVL(SALDO_CB,0)) SALDO_CB, SUM(NVL(SALDO_NC,0)) SALDO_NC, '
            + '            MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
            + '            MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
            + '           (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '
            + '     FROM CFC000,COB113 '
            + '              WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
            + '                AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text)
            + '                AND CFC000.CFC_F=COB113.RESUMEID(+) '
            + '                 AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                                FROM SAL000 SAL '
            + '                               WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                                 AND SAL.ASOID = CFC000.ASOID '
            + '                                 AND SAL.TIPDESEID = ''10'' '
            + '                                 AND SUBSTR(CREDID,9,1)=''A'' )'
            + '               GROUP BY CFC_F,RESUMEDES) B '
            + 'WHERE A.RESUMEID=B.CFC(+) '
            + 'ORDER BY A.P_NC';
         lblOfiDes.Caption := 'OFICINA DESCONCENTRADA  - AMPLIADOS : ' + Trim(EdtOfiDes.Text);
         //Fin: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
      End
      Else // Tipo de Resumen = Por UGEL
         If rgTipoResumen.ItemIndex = 2 Then
         Begin
            //Inicio: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
            If trim(EdtUseNom.Text) = '' Then
            Begin
               MessageDlg(' Debe SELECCIONAR UNA UGEL!!', mtError, [mbOk], 0);
               Screen.Cursor := crDefault;
               Exit;
            End;
            xSQL := 'SELECT SUM(NVL(SALDOS_FT,0)) TOT,COUNT(1) REG FROM CFC000 ' +
           'WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) +  xAsoTipId +
           '     AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text) +
           '     AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)  +
           '     AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)  +
           ' AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG ' +
           ' FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' ' +
           ' AND SUBSTR(CREDID,9,1)=''A'' ) ';
           { xSQL := 'SELECT ASOID '
               + '    FROM CFC000 '
               + '   WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
            + xAsoTipId
               + '     AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
               + '     AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
               + '     AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
               + '       AND CFC000.SALDOS_RT > 0 '
               + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
               + '                      FROM SAL000 SAL '
               + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
               + '                       AND SAL.ASOID = CFC000.ASOID '
               + '                       AND SAL.TIPDESEID = ''10'' '
               + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )';
            xReg := DM1.CountReg(xSQL);

            xSQL := 'SELECT NVL(SUM(NVL(SALDOS_RT, 0)), 0) SALDOS '
               + '    FROM CFC000 '
               + '   WHERE PERIODO = ' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
            + xAsoTipId
               + '     AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
               + '     AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
               + '     AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
               + '       AND CFC000.SALDOS_RT > 0 '
               + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
               + '                      FROM SAL000 SAL '
               + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
               + '                       AND SAL.ASOID = CFC000.ASOID '
               + '                       AND SAL.TIPDESEID = ''10'' '
               + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )';  }
            DM1.cdsTRela.Close;
            DM1.cdsTRela.DataRequest(xSQL);
            DM1.cdsTRela.Open;
            If DM1.cdsTRela.RecordCount = 1 Then
            Begin
                xReg := DM1.cdsTRela.FieldByName('REG').AsInteger;
                xTot := DM1.cdsTRela.FieldByName('TOT').AsFloat;
            End;
            DM1.cdsTRela.Close;
            xSQL := 'SELECT RESUMEID,RESUMEDES,NVL(B.MOVIM,0) MOVIM, '
            + '         CASE WHEN ' + IntToStr(xReg) + '=0 THEN 0 ELSE round((NVL(B.MOVIM,0))*100/' + IntToStr(xReg) + ',4) END Movim_Por, '
            + '         NVL(B.SALDOS_FT,0) SALDOS_FT, CASE WHEN ' + FloatToStr(xTot) + '=0 THEN 0 ELSE round(NVL(B.SALDOS_FT,0)*100/' + FloatToStr(xTot) + ',4) END SaldoTotal_Por, '
            + '         NVL(SALDOS_FV,0) SALDOS_FV, NVL(SALDOS_FP,0) SALDOS_FP, NVL(B.SALDO_CB,0) SALDO_CB, '
            + '         NVL(B.SALDO_NC,0) SALDO_NC,A.P_NC,NVL(PORNC,0) PORNC,A.P_CB,NVL(B.PORCB,0) PORCB, '
            + '         NVL(B.TOTPROV,0) TOTPROV '
            + '    FROM COB113 A,'
            + '    (SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, '
            + '            SUM(NVL(SALDOS_FV,0)) SALDOS_FV, SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '
            + '            SUM(NVL(SALDO_CB,0)) SALDO_CB, SUM(NVL(SALDO_NC,0)) SALDO_NC, '
            + '            MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC, '
            + '            MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB, '
            + '           (SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '
            + '     FROM CFC000,COB113 '
            + '              WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]))) + xAsoTipId
            + '                AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
            + '                AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
            + '                AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
            + '                AND CFC000.CFC_F=COB113.RESUMEID(+) '
            + '                 AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                                FROM SAL000 SAL '
            + '                               WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                                 AND SAL.ASOID = CFC000.ASOID '
            + '                                 AND SAL.TIPDESEID = ''10'' '
            + '                                 AND SUBSTR(CREDID,9,1)=''A'' )'
            + '               GROUP BY CFC_F,RESUMEDES) B '
            + 'WHERE A.RESUMEID=B.CFC(+) '
            + 'ORDER BY A.P_NC';
            lblOfiDes.Caption := 'UND.PROCESO  - AMPLIADOS : (' + Trim(DM1.cdsUPro.fieldbyname('UPROID').AsString) + ')' + Trim(DM1.cdsUPro.fieldbyname('UPRONOM').AsString) + '         '
               + 'UND.PAGO : (' + Trim(DM1.cdsUPago.fieldbyname('UPAGOID').AsString) + ')' + Trim(DM1.cdsUPago.fieldbyname('UPAGONOM').AsString) + '         '
               + 'UGEL : (' + Trim(DM1.cdsUSES.fieldbyname('USEID').AsString) + ')' + Trim(DM1.cdsUSES.fieldbyname('USENOM').AsString);
            //Fin: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
         End;
   End;
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.DataRequest(xSQL);
   DM1.cdsDetalle.Open;
   If DM1.cdsDetalle.RecordCount > 0 Then
   Begin
      If rgTipoResumen.ItemIndex = 1 Then
         If Length(Trim(EdtOfiDes.Text)) = 0 Then
         Begin
            Screen.Cursor := crDefault;
            Exit;
         End;
      If rgTipoResumen.ItemIndex = 2 Then
         If Length(Trim(EdtUseNom.Text)) = 0 Then
         Begin
            Screen.Cursor := crDefault;
            Exit;
         End;
      If rgTipoResumen.ItemIndex = 0 Then
         //Inicio: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
         xSQL:='SELECT ROUND(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) INDMOR, '+                             
                           ' ROUND(SUM(TOTPROV)/SUM(SALDOS_FV),4) INDPRO '+
                       'FROM '+
                     '(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '+
                     'SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC,  '+
                     'MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '+
                     'FROM CFC000,COB113 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+ xAsoTipId + ' AND CFC000.CFC_F=COB113.RESUMEID(+)  '+
                     '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG  FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' '+
                     ' AND SUBSTR(CREDID,9,1)=''A'' )'+
                     'GROUP BY CFC_F,RESUMEDES) '

        { xSQL := 'SELECT ROUND(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) INDMOR, '
            + '         ROUND(SUM(TOTPROV)/SUM(SALDOS_FV),4) INDPRO  '
            + '    FROM (SELECT CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV,SUM(NVL(SALDOS_RP,0)) SALDOS_RP, '
            + '                 SUM(NVL(SALREFCUB,0)) SALDO_CB,SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC,  '
            + '                 MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV  '
            + '            FROM CFC000,COB113 '
            + '           WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
         + xAsoTipId
            + '             AND CFC000.CFC_R=COB113.RESUMEID(+) '
            + '       AND CFC000.SALDOS_RT > 0 '
            + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                      FROM SAL000 SAL '
            + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                       AND SAL.ASOID = CFC000.ASOID '
            + '                       AND SAL.TIPDESEID = ''10'' '
            + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )'
            + '           GROUP BY CFC_R,RESUMEDES) '  }
         //Fin: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
      Else
      Begin
         If rgTipoResumen.ItemIndex = 1 Then
            //Inicio: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
            xSQL:='SELECT ROUND(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) INDMOR, '+
                           ' ROUND(SUM(TOTPROV)/SUM(SALDOS_FV),4) INDPRO '+
                       'FROM '+
                     '(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '+
                     'SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC,  '+
                     'MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '+
                     'FROM CFC000,COB113 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+ xAsoTipId +
                     ' AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text) +
                     ' AND CFC000.CFC_F=COB113.RESUMEID(+)  '+
                     '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG  FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' '+
                     ' AND SUBSTR(CREDID,9,1)=''A'' )'+
                     'GROUP BY CFC_F,RESUMEDES) '

            {xSQL := 'SELECT CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE round( (SUM(SALDOS_RV)/SUM(SALDOS_RT)) ,6) END INDMOR,'
               + '         CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) ELSE round( (SUM(TOTPROV)/SUM(SALDOS_RV)) ,6) END INDPRO  '
               + '    FROM (SELECT CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV,SUM(NVL(SALDOS_RP,0)) SALDOS_RP, '
               + '                 SUM(NVL(SALREFCUB,0)) SALDO_CB,SUM(NVL(SALREFNOCUB,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC,  '
               + '                 MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV  '
               + '            FROM CFC000,COB113 '
               + '           WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
            + xAsoTipId
               + '             AND NVL(CFC000.OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text)
               + '             AND CFC000.CFC_R=COB113.RESUMEID(+) '
               + '       AND CFC000.SALDOS_RT > 0 '
               + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
               + '                      FROM SAL000 SAL '
               + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
               + '                       AND SAL.ASOID = CFC000.ASOID '
               + '                       AND SAL.TIPDESEID = ''10'' '
               + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )'
               + '           GROUP BY CFC_R,RESUMEDES) ' }
             //Fin: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
         Else                                                                                         
            If rgTipoResumen.ItemIndex = 2 Then
               //Inicio: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
               xSQL:='SELECT ROUND(SUM(SALDOS_FV)/SUM(SALDOS_FT),4) INDMOR, '+
                           ' ROUND(SUM(TOTPROV)/SUM(SALDOS_FV),4) INDPRO '+
                       'FROM '+
                     '(SELECT CFC_F CFC,RESUMEDES CFCDES,COUNT(1) MOVIM, SUM(NVL(SALDOS_FT,0)) SALDOS_FT, SUM(NVL(SALDOS_FV,0)) SALDOS_FV,SUM(NVL(SALDOS_FP,0)) SALDOS_FP, '+
                     'SUM(NVL(SALDO_CB,0)) SALDO_CB,SUM(NVL(SALDO_NC,0)) SALDO_NC,MAX(P_NC) P_NC,(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/100 PORNC,  '+
                     'MAX(P_CB) P_CB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/100 PORCB,(SUM(NVL(SALDO_CB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALDO_NC,0))*MAX(P_NC))/MAX(100) TOTPROV  '+
                     'FROM CFC000,COB113 WHERE PERIODO='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+ xAsoTipId +
                     ' AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text) +
                     ' AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)+
                     ' AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)  +
                     ' AND CFC000.CFC_F=COB113.RESUMEID(+)  '+
                     '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG  FROM SAL000 SAL WHERE SAL.PERIODO = CFC000.PERIODO AND SAL.ASOID = CFC000.ASOID AND SAL.TIPDESEID = ''10'' '+
                     ' AND SUBSTR(CREDID,9,1)=''A'' )'+
                     'GROUP BY CFC_F,RESUMEDES) ' ;
               {xSQL := 'SELECT CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) '
                  + '              ELSE round( (SUM(SALDOS_RV)/SUM(SALDOS_RT)) ,6) END INDMOR, '
                  + '         CASE WHEN SUM(NVL(SALDOS_RV,0))=0 THEN SUM(0) '
                  + '              ELSE round( (SUM(TOTPROV)/SUM(SALDOS_RV)) ,6) END INDPRO  '
                  + '    FROM (SELECT CFC_R CFC,RESUMEDES CFCDES,COUNT(*) MOVIM, '
                  + '                 SUM(NVL(SALDOS_RT,0)) SALDOS_RT, SUM(NVL(SALDOS_RV,0)) SALDOS_RV,'
                  + '                 SUM(NVL(SALDOS_RP,0)) SALDOS_RP, '
                  + '                 SUM(NVL(SALREFCUB,0)) SALDO_CB, '
                  + '                 SUM(NVL(SALREFNOCUB,0)) SALDO_NC, '
                  + '                 MAX(P_NC) P_NC,(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/100 PORNC,  '
                  + '                 MAX(P_CB) P_CB,(SUM(NVL(SALREFCUB,0))*MAX(P_CB))/100 PORCB,'
                  + '                 (SUM(NVL(SALREFCUB,0))*MAX(P_CB))/MAX(100)+(SUM(NVL(SALREFNOCUB,0))*MAX(P_NC))/MAX(100) TOTPROV  '
                  + '           FROM CFC000,COB113 '
                  + '          WHERE PERIODO=' + QuotedStr(Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))])))
               + xAsoTipId
                  + '            AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
                  + '            AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
                  + '            AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
                  + '            AND CFC000.CFC_R = COB113.RESUMEID(+) '
                  + '       AND CFC000.SALDOS_RT > 0 '
                  + '       AND EXISTS ( SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
                  + '                      FROM SAL000 SAL '
                  + '                     WHERE SAL.PERIODO = CFC000.PERIODO '
                  + '                       AND SAL.ASOID = CFC000.ASOID '
                  + '                       AND SAL.TIPDESEID = ''10'' '
                  + '                       AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )'
                  + '          GROUP BY CFC_R,RESUMEDES) '; }

               //Fin: HPC_201703_COB Moficiar reporte ampliados y refinanciados - MEMO 0067-2017-DM-COB
      End;

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('INDMOR').AsCurrency > 0 Then
      Begin
         lblIndice.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDMOR').AsCurrency, ffNumber, 10, 5);
         lblProv.Caption := FloatToStrF(DM1.cdsQry.FieldByName('INDPRO').AsCurrency, ffNumber, 10, 5);
         lblPorMor.Caption := '(' + FloatToStrF((DM1.cdsQry.FieldByName('INDMOR').AsCurrency * 100), ffNumber, 10, 2) + ' %)';
         lblPorPro.Caption := '(' + FloatToStrF((DM1.cdsQry.FieldByName('INDPRO').AsCurrency * 100), ffNumber, 10, 2) + ' %)';
      End
      Else
      Begin
         lblIndice.Caption := '0.0000';
         lblProv.Caption := '0.0000';
         lblPorMor.Caption := '(0.00 %)';
         lblPorPro.Caption := '(0.00 %)';
      End;
      DM1.cdsQry.Close;
      ppLbltit.Caption := 'CALIFICACIÓN DE DEUDORES Y EXIGENCIA DE PROVISIONES  A : ' + Trim(lblNomMes.Caption) + ' - ' + dbsAnoIni.Text;
      pplTipAso.Caption := 'TIPO DE ASOCIADO : ' + rgtipaso.Items[rgtipaso.ItemIndex];
      ppRepClfcar.Print;
      ppRepClfcar.Cancel;
   End
   Else
   Begin
      MessageDlg(' No Existe Información Procesada Para Ese Periodo ', mtError, [mbOk], 0);
   End;
   DM1.cdsDetalle.Close;
   Screen.Cursor := crDefault;

end;
// Fin HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno

// Inicio HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno
procedure TfCalfCtaxCob.btnAExcelAmpClick(Sender: TObject);
    function getSQL(): String;
    Var
        xSQL: String;
        xSQL01: String;
        xSQLAsoTipId: String;
        xPeriodo: String;
    Begin
        xSQLAsoTipId := '';
        xPeriodo := Trim(dbsAnoIni.Text + Format('%.2d', [StrToInt(Trim(dbsMesIni.Text))]));
        If rgtipaso.ItemIndex = 1 Then xSQLAsoTipId := ' AND ASOTIPID = ''DO''';
        If rgtipaso.ItemIndex = 2 Then xSQLAsoTipId := ' AND ASOTIPID = ''CE''';
        If rgtipaso.ItemIndex = 3 Then xSQLAsoTipId := ' AND ASOTIPID = ''CO''';
        If rgTipoResumen.ItemIndex = 0 Then // Tipo de Resumen = TODOS
        Begin
            xSQL01 := '';
        End
        Else
            If rgTipoResumen.ItemIndex = 1 Then // Tipo de Resumen = Por Oficina
            Begin
                If Length(Trim(EdtOfiDes.Text)) = 0 Then
                Begin
                    MessageDlg(' Debe SELECCIONAR UNA OFICINA!!', mtError, [mbOk], 0);
                    Screen.Cursor := crDefault;
                    Exit;
                End;
                xSQL01 := ' AND NVL(OFDESID,''00'')=' + QuotedStr(DBLkOfiDes.Text);
            End
            Else
                If rgTipoResumen.ItemIndex = 2 Then // Tipo de Resumen = Por ugel
                Begin
                    If trim(EdtUseNom.Text) = '' Then
                    Begin
                        MessageDlg(' Debe SELECCIONAR UNA UGEL!!', mtError, [mbOk], 0);
                        Screen.Cursor := crDefault;
                        Exit;
                    End;
                    xSQL01 := ' AND NVL(UPROID,''-0-'') =' + QuotedStr(dblcdUPro.Text)
                        + ' AND NVL(UPAGOID,''-0-'') = ' + QuotedStr(dblcdUPago.Text)
                        + ' AND NVL(USEID,''-0-'') = ' + QuotedStr(dblcdUse.Text)
                End;

        xSQL := 'SELECT CFC_APO.CALIF CALIFICACION, DPTO_LAB.DPTODES DPTO_LABORAL, UGEL.USENOM UGEL, CFC_APO.ASOTIPID TIPO_ASOCIADO, '
            + '         REGPEN.REGPENDES REG_PENSIONES, CFC_APO.ASOCODMOD COD_MODULAR, CFC_APO.ASODNI DNI, CFC_APO.ASOAPENOM APELLIDOS_NOMBRES, CFC_APO.ASODIR DIR_DOMICILIARIA, '
            + '         DPTO_DOM.DPTODES DPTO_DOMICILIO, PROV_DOM.CIUDDES PROV_DOMICILIO, DIST_DOM.ZIPDES DIST_DOMICILIO, CFC_APO.ASOTELF1 TELEFONO,   '
            + '         CFC_APO.SALDOS_FT SALDO_PERIODO, CFC_APO.SALDOS_FV SALDO_VENCIDO, CFC_APO.SALDOS_FP SALDO_PENDIENTE, CFC_APO.SALTOT SALDO_TOTAL, '
            + '         CFC_APO.MESES_ATRASO ATRASO_MESES, CFC_APO.CTAIND_F CTA_IND_GARANTIA, CFC_APO.SALREFCUB SALDO_CUBIERTO_GARANTIA   '
            + '   FROM (SELECT APO.ASOTIPID, APO.ASOCODMOD, APO.ASODNI, APO.ASOAPENOM,  '
            + '                 APO.ASODIR, APO.ASOTELF1, CFC.CALIF, CFC.SALDOS_FT, '
            + '                 CFC.SALDOS_FV, CFC.SALDOS_FP, CFC.SALTOT, CFC.MESES_ATRASO, '
            + '                 CFC.CTAIND_F, CFC.SALREFCUB, APO.UPROID, APO.UPAGOID,   '
            + '                 APO.USEID, APO.ZIPID, APO.REGPENID, APO.ASODSTLABID, '
            + '                 CFC.PESO_CALIF                                      '
            + '            FROM (SELECT ASOID,                                      '
            + '                          CASE WHEN CFC_R = ''0'' THEN ''NOR''       '
            + '                               WHEN CFC_R = ''A'' THEN ''PPT''       '
            + '                               WHEN CFC_R = ''B'' THEN ''DEF''       '
            + '                               WHEN CFC_R = ''C'' THEN ''DUD''       '
            + '                               WHEN CFC_R = ''D'' THEN ''PER''       '
            + '                           END CALIF,                                '
            + '                          CASE WHEN CFC_R = ''0'' THEN 0             '
            + '                               WHEN CFC_R = ''A'' THEN 1             '
            + '                               WHEN CFC_R = ''B'' THEN 2             '
            + '                               WHEN CFC_R = ''C'' THEN 3             '
            + '                               WHEN CFC_R = ''D'' THEN 4             '
            + '                           END PESO_CALIF, SALDOS_RT SALDOS_FT,      '
            + '                          SALDOS_RV SALDOS_FV, SALDOS_RP SALDOS_FP, SALTOT,  '
            + '                          TRUNC(DIASTRANS / 30) MESES_ATRASO,        '
            + '                          NVL(CTAIND_F, 0.0) CTAIND_F, SALREFCUB     '
            + '                     FROM CFC000                                     '
            + '                    WHERE PERIODO = ' + QuotedStr(xPeriodo)
            + xSQLAsoTipId
            + xSQL01
            + '                      AND SALDOS_RT > 0                              '
            + '                      AND EXISTS (SELECT PERIODO, ASOID, TIPDESEID, CREFOTORG'
            + '                                    FROM SAL000 SAL                  '
            + '                                   WHERE SAL.PERIODO = CFC000.PERIODO '
            + '                                     AND SAL.ASOID = CFC000.ASOID    '
            + '                                     AND SAL.TIPDESEID = ''10''      '
            + '                                     AND SAL.CREFOTORG >='+QuotedStr(xsFecIniRep)+' AND SUBSTR(CREDID,9,1)=''A'' )) CFC,  '
            + '                 APO201 APO                                          '
            + '           WHERE CFC.ASOID = APO.ASOID) CFC_APO, APO101 UGEL, APO158 DPTO_DOM,   '
            + '        APO123 PROV_DOM, APO122 DIST_DOM, APO158 DPTO_LAB, APO105 REGPEN '
            + '  WHERE CFC_APO.UPROID = UGEL.UPROID(+)                              '
            + '    AND CFC_APO.UPAGOID = UGEL.UPAGOID(+)                            '
            + '    AND CFC_APO.USEID = UGEL.USEID(+)                                '
            + '    AND SUBSTR(CFC_APO.ZIPID, 1, 2) = DPTO_DOM.DPTOID(+)             '
            + '    AND SUBSTR(CFC_APO.ZIPID, 1, 4) = PROV_DOM.CIUDID(+)             '
            + '    AND CFC_APO.ZIPID = DIST_DOM.ZIPID(+)                            '
            + '    AND SUBSTR(CFC_APO.ASODSTLABID, 1, 2) = DPTO_LAB.DPTOID(+)       '
            + '    AND CFC_APO.REGPENID = REGPEN.REGPENID(+)                        '
            + '  ORDER BY CFC_APO.PESO_CALIF, DPTO_LAB.DPTODES, UGEL.USENOM, CFC_APO.ASOTIPID, REGPEN.REGPENDES ';
        getSQL := xSQL;
    End;
Begin
    If dtgClfCar.DataSource.DataSet.RecordCount = 0 Then
    Begin
        showmessage('No existe información para exportar.');
        exit;
    End;
    Screen.Cursor := crHourglass;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(getSQL());
    DM1.cdsQry.Open;
    DBGrid1.DataSource:=DM1.dsQry;
    DM1.HojaExcel('Ampliados',DM1.dsQry,DBGrid1);
    DM1.cdsQry.Close;
    Screen.Cursor := crDefault;
end;
// Fin HPC_201517_COB  :  Separar refinaciados de ampliados en los reportes de uso interno



End.

