Unit COBD10;

// Inicio Uso Estándares:   01/08/2011
// Unidad               :   COBD10
// Formulario           :   fRepCronog1
// Fecha de Creación    :   01/01/2011
// Autor                :   Hugo Noriega
// Objetivo             :   Reprogramación de Cronogramas

// Actualizaciones      :
// HPP_00047_COB 14/11/2008 785-2008-DM-COB  DAD-HN-2008-0043  SAR 2008JC-0167
//////////////////////////////////////////////////////////////////////
// HPP_200903_COB (F1)
// forma modificada en HPP_200903_COB(F1) por Hugo Noriega
// el cambio se debe considerar como una forma nueva ya que
// el acceso se realiza desde el menú principal
// desde las opciones de:
//       Solicitud de Refinanciados (COBD12) FRefiBusca con parámetro 'S'
//       Aprobación de Refinanciados (COBD12) FRefiBusca  con parámetro 'A'
//////////////////////////////////////////////////////////////////////
// HPP_200905_COB - Se cambia variable mAnula por mAproba ya que el Update
               //    es por la aprobación.
// HPP_200907_COB - realizado por HNORIEGA
// HPP_200908_COB    // se incorpora Declaración Jurada del Domicilio
//////////////////////////////////////////////////////////////////////
// inicio HPP_200916_COB - SAR 2009-0502 - DAD HN-2009-0118
// realizado por: HUGO NORIEGA 18/06/2009
// Se cambia modalidad de evaluación de categoría a días de vencimiento
// mayor a 9.
//////////////////////////////////////////////////////////////////////
// HPP_200919_COB F2 - SAR2009-0454 - DAD-HN-2009-0113
// HPP_200925_COB por HNORIEGA Memorandum 674-2009-DM-COB - SAR2009-0572(13/7/2009) - DAD-HN-2009-0138(22/7/2009)
// HPP_200926_COB POR EALVA
// HPP_200935_COB Memorándum 826-209-DM-COB - SAR-2009-0749 - DAD-IR-2009-0150
// HPP_201007_COB por JCARBONEL
// HPP_201106_COB
// HPP_201121_COB 08/09/2011  Se mostrará en Pantalla el Calculo de días de atraso de la Deuda.
// HPP_201122_COB 13/09/2011  Se ajusta para que no lea los datos de la cartera, sólo del cálculo con la fecha vcmto de la cuota (CRE302)
// Pase a Producción: Se ha asignado el número HPP_201122_COB
// DPP_201203_COB : Se realiza el pase a producción para el 01-03-2012, a partir del HPC_201204_COB
// HPC_201301_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO
// SPP_201302_COB : El pase a producción se realiza de acuerdo al HPC_201301_COB
// HPC_201306_COB : 27/05/2013 - Imprimir carta de Autorización de Descuento por ONP
// SPP_201308_COB : Se realiza el pase a producción a partir del HPC_201308_COB
// SPP_201310_COB : Se realiza el pase a producción a partir del HPC_201308_COB
//                  Cambio a nivel de DFM
// HPC_201309_COB : 21/08/2013 - Modificar Carta de Autorización de Descuento por ONP
// SPP_201311_COB : Se realiza el pase a producción a partir del HPC_201309_COB
// HPC_201503_COB : Modificar la Refinanciación Individual incluir desgravamen y TCEA
// HPC_201613_COB : Se añade descripción de la prestación en el reporte "CARTA DE AUTORIZACION DE DESCUENTO A TRAVÉS DE ONP".
// HPC_201711_COB : Cambio de Formato de Solicitud de Descuento por Planilla
Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, wwdblook,
   Mask, wwdbedit, Wwdbspin, DB, fcButton, fcImgBtn, fcShapeBtn, ppBands,
   ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
   ppProd, ppReport, DBClient, wwclient, ppBarCod, Math, myChkBox, ppEndUsr,
   ppParameter, ppVar, ppDB, ppDBPipe, TeEngine, Series, TeeProcs, Chart,
//Inicio HPC_201711_COB
//Cambio de Formato de Solicitud de Descuento por Planilla
  DbChart, ComCtrls, jpeg, ppModule, daDataModule;
//Final HPC_201711_COB

Type
   TfRepCronog1 = Class(TForm)
      gbDet: TGroupBox;
      dtgNotaAbono: TwwDBGrid;
      gbBoton: TGroupBox;
      gbCab: TGroupBox;
      BitSalir: TBitBtn;
      lblAsociado: TLabel;
      Label1: TLabel;
      Panel1: TPanel;
      lblSaldo: TLabel;
      Label3: TLabel;
      lblCreditos: TLabel;
      DBLCTipCob: TwwDBLookupCombo;
      Panel2: TPanel;
      EdtForPago: TEdit;
      Label4: TLabel;
      BitGrabar: TBitBtn;
      DBLCTipC: TwwDBLookupCombo;
      Panel3: TPanel;
      EdtTipCob: TEdit;
      BitCalcular: TBitBtn;
      GroupBox4: TGroupBox;
      dbeCuotas: TwwDBEdit;
      chkMesInicio: TCheckBox;
      GroupBox5: TGroupBox;
      dbeSaldo: TwwDBEdit;
      BitLote: TButton;
      GroupBox6: TGroupBox;
      dbeCapacidad: TwwDBEdit;
      BitPreCalculo: TBitBtn;
      rpContratoN: TppReport;
      cdsCronograma: TwwClientDataSet;
      ppHojRes: TppReport;
      rpCheGer: TppReport;
      ppHeaderBand6: TppHeaderBand;
      ppDetailBand6: TppDetailBand;
      ppMemo4: TppMemo;
      lblAsoCG: TppLabel;
      ppLabel6: TppLabel;
      ppLabel10: TppLabel;
      lblDniCG: TppLabel;
      lblNroCG: TppLabel;
      lblMonCG: TppLabel;
      lblRucDni: TppLabel;
      ppLabel11: TppLabel;
      CodBarCG: TppBarCode;
      lblFechaCG: TppLabel;
      ppLabel13: TppLabel;
      lblCopia02: TppLabel;
      ppImage2: TppImage;
      ppFooterBand6: TppFooterBand;
      lblDatosUser: TppLabel;
      rpCartaAutDes: TppReport;
      ppHeaderBand8: TppHeaderBand;
      lblFechaCarta: TppLabel;
      ppMemo6: TppMemo;
      ppLabel52: TppLabel;
      ppMemo7: TppMemo;
      lblNombresC: TppLabel;
      lblAsoDniC: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppLabel63: TppLabel;
      lblDirReg01: TppLabel;
      lblDirReg02: TppLabel;
      lblDirReg03: TppLabel;
      lblCargo: TppLabel;
      lblDireccion: TppLabel;
      lblTelefono: TppLabel;
      lblDirReg04: TppLabel;
      lblDirReg05: TppLabel;
      lblMontoC: TppLabel;
      lblMonCuo: TppLabel;
      lblPlazoC: TppLabel;
      lblNunLetras: TppLabel;
      ppDetailBand8: TppDetailBand;
      ppFooterBand8: TppFooterBand;
      rpPagare: TppReport;
      ppHeaderBand4: TppHeaderBand;
      ppLabel89: TppLabel;
      ppLabel90: TppLabel;
      ppLabel91: TppLabel;
      ppLabel92: TppLabel;
      ppShape85: TppShape;
      ppLabel93: TppLabel;
      ppLabel94: TppLabel;
      ppLabel95: TppLabel;
      ppLabel96: TppLabel;
      lblCreDid: TppLabel;
      lblFecPag: TppLabel;
      ppLabel3: TppLabel;
      ppImage1: TppImage;
      ppDetailBand4: TppDetailBand;
      ppShape87: TppShape;
      mTexto01: TppMemo;
      ppLabel97: TppLabel;
      lblNombres: TppLabel;
      ppLabel98: TppLabel;
      ppLabel100: TppLabel;
      lblAsoDni: TppLabel;
      ppLabel106: TppLabel;
      ppLabel107: TppLabel;
      ppLabel108: TppLabel;
      ppLabel109: TppLabel;
      ppLabel110: TppLabel;
      ppLabel111: TppLabel;
      ppLabel112: TppLabel;
      ppLabel99: TppLabel;
      ppLabel114: TppLabel;
      ppLabel115: TppLabel;
      ppLabel117: TppLabel;
      ppLabel120: TppLabel;
      ppLabel121: TppLabel;
      ppLabel133: TppLabel;
      ppLabel12: TppLabel;
      ppFooterBand4: TppFooterBand;
      ppSummaryBand2: TppSummaryBand;
      ppReport1: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppLabel4: TppLabel;
      ppMemo1: TppMemo;
      ppLabel119: TppLabel;
      ppMemo2: TppMemo;
      lblNombresa: TppLabel;
      lblAsoDnia: TppLabel;
      ppLabel124: TppLabel;
      ppLabel125: TppLabel;
      ppLabel126: TppLabel;
      ppLabel5: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppShape86: TppShape;
      ppLine1: TppLine;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      ppLabel24: TppLabel;
      lblNumCar: TppLabel;
      ppTitCCred: TppReport;
      ppHeaderBand5: TppHeaderBand;
      ppLabel25: TppLabel;
      lblNCredito: TppLabel;
      lblFecOtor: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      lblDNI2: TppLabel;
      lblNombreAso: TppLabel;
      ppLabel237: TppLabel;
      ppLabel238: TppLabel;
      ppLabel239: TppLabel;
      ppLabel240: TppLabel;
      ppLabel241: TppLabel;
      ppLabel242: TppLabel;
      lblDirTitular: TppLabel;
      ppLabel243: TppLabel;
      ppLabel244: TppLabel;
      lblAval: TppLabel;
      ppLabel246: TppLabel;
      ppLabel247: TppLabel;
      lblDNIAval: TppLabel;
      ppDetailBand5: TppDetailBand;
      lblGerente: TppLabel;
      lblDniGer: TppLabel;
      ppFooterBand5: TppFooterBand;
      dbsNumCuotas: TwwDBSpinEdit;
      lblCuo02: TLabel;
      lblCuo01: TLabel;
      Label2: TLabel;
      Label5: TLabel;
      mObserva: TMemo;
      lblDirReg06: TppLabel;
      Label6: TLabel;
      bbtnAceptar: TBitBtn;
      bbtnAnular: TBitBtn;
      gbObs: TGroupBox;
      mAnula: TMemo;
      mAproba: TMemo;
      cbAnu: TCheckBox;
      cbApr: TCheckBox;
      pnlReportes: TPanel;
      sRep: TShape;
      rdbContrato: TRadioButton;
      rdbHoja: TRadioButton;
      rdbPagare: TRadioButton;
      z2bbtnImprime: TfcShapeBtn;
      chkCopia: TCheckBox;

    rdbDecJur: TRadioButton;
    rpDeclaracionJurada: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel44: TppLabel;
    pplAsoApeNomDni: TppLabel;
    pplAsoDni: TppLabel;
    myCheckBox1: TmyCheckBox;
    ppLabel51: TppLabel;
    myCheckBox2: TmyCheckBox;
    ppLabel53: TppLabel;
    myCheckBox3: TmyCheckBox;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine2: TppLine;
    ppLabel58: TppLabel;
    ppLine4: TppLine;
    ppLabel59: TppLabel;
    ppLine5: TppLine;
    ppLabel62: TppLabel;
    ppLine6: TppLine;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel68: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    pplFecha: TppLabel;
    ppLine9: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine10: TppLine;
    ppLabel82: TppLabel;
    ppLabel84: TppLabel;
    myCheckBox4: TmyCheckBox;
    ppShape1: TppShape;
    ppd1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppMemo3: TppMemo;
    mDat01: TppMemo;
    ppLabel41: TppLabel;
    lblCopia01: TppLabel;
    ppLabel67: TppLabel;
    ppLabel69: TppLabel;
    ppLabel83: TppLabel;
    ppLabel76: TppLabel;
    ppLabel72: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    lblNomGen: TppLabel;
    lblDni: TppLabel;
    lblFecCre: TppLabel;
    lblTipCre: TppLabel;
    lblTipDes: TppLabel;
    lblNumCredito: TppLabel;
    lblMonto: TppLabel;
    lblTasEfe: TppLabel;
    lblTasGas: TppLabel;
    lblPlazo: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppLabel66: TppLabel;
    lblFrmDes: TppLabel;
    ppLine3: TppLine;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppParameterList2: TppParameterList;
    ppHeaderBand7: TppHeaderBand;
    ppShape205: TppShape;
    ppShape184: TppShape;
    ppShape182: TppShape;
    ppShape180: TppShape;
    ppShape174: TppShape;
    ppShape168: TppShape;
    ppShape158: TppShape;
    ppShape152: TppShape;
    ppShape147: TppShape;
    ppShape108: TppShape;
    ppShape107: TppShape;
    ppShape97: TppShape;
    ppShape112: TppShape;
    ppShape103: TppShape;
    ppShape93: TppShape;
    ppShape94: TppShape;
    ppShape95: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape96: TppShape;
    ppLabel16: TppLabel;
    ppLabel30: TppLabel;
    ppShape98: TppShape;
    ppLabel31: TppLabel;
    ppShape99: TppShape;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppShape100: TppShape;
    ppShape101: TppShape;
    ppShape102: TppShape;
    ppShape104: TppShape;
    ppShape105: TppShape;
    ppShape106: TppShape;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppShape109: TppShape;
    ppShape110: TppShape;
    ppShape111: TppShape;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppShape113: TppShape;
    ppShape114: TppShape;
    ppShape117: TppShape;
    ppLabel43: TppLabel;
    ppShape119: TppShape;
    ppShape121: TppShape;
    ppLabel45: TppLabel;
    ppShape123: TppShape;
    ppLabel46: TppLabel;
    ppShape125: TppShape;
    ppLabel47: TppLabel;
    ppShape127: TppShape;
    ppLabel189: TppLabel;
    ppShape148: TppShape;
    ppLabel192: TppLabel;
    ppShape149: TppShape;
    ppShape151: TppShape;
    ppShape155: TppShape;
    ppShape157: TppShape;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppShape159: TppShape;
    ppShape160: TppShape;
    ppShape164: TppShape;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppShape165: TppShape;
    ppLabel215: TppLabel;
    ppShape166: TppShape;
    ppLabel216: TppLabel;
    Shape: TppShape;
    ppLabel217: TppLabel;
    ppShape169: TppShape;
    ppShape170: TppShape;
    ppLabel218: TppLabel;
    ppShape171: TppShape;
    ppShape172: TppShape;
    ppLabel219: TppLabel;
    ppShape173: TppShape;
    ppShape175: TppShape;
    ppShape176: TppShape;
    ppShape177: TppShape;
    ppShape178: TppShape;
    ppShape179: TppShape;
    ppShape181: TppShape;
    ppLabel224: TppLabel;
    ppShape183: TppShape;
    ppLabel225: TppLabel;
    ppShape185: TppShape;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppShape192: TppShape;
    ppLabel229: TppLabel;
    ppShape193: TppShape;
    ppShape194: TppShape;
    ppShape195: TppShape;
    ppShape196: TppShape;
    ppShape197: TppShape;
    ppShape198: TppShape;
    ppShape199: TppShape;
    ppShape200: TppShape;
    ppShape201: TppShape;
    ppShape202: TppShape;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppShape203: TppShape;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppShape204: TppShape;
    ppShape206: TppShape;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    lblEstV: TppLabel;
    lblNroCon: TppLabel;
    lblFecEval: TppLabel;
    lblOrigenN: TppLabel;
    lblNroSol: TppLabel;
    lblAsoApenom: TppLabel;
    lblDNIN: TppLabel;
    lblFecOto: TppLabel;
    lblFecNac: TppLabel;
    lblSexo: TppLabel;
    lblEstCiv: TppLabel;
    lblAsoDir: TppLabel;
    lblCodModN: TppLabel;
    lblDist: TppLabel;
    lblProv: TppLabel;
    lblDep: TppLabel;
    lblTipAsoN: TppLabel;
    lblCtaAho: TppLabel;
    lblTipPre: TppLabel;
    lblNotaAbn: TppLabel;
    mCuotasProceso: TppMemo;
    lblTotInt: TppLabel;
    lblTotGas: TppLabel;
    lblTasIntN: TppLabel;
    lblMonOto: TppLabel;
    lblSalTot: TppLabel;
    lblNumCuo: TppLabel;
    lblFecIni: TppLabel;
    lblCuota: TppLabel;
    lblNumLetra: TppLabel;
    lblUsuarioC: TppLabel;
    lblAutorizadoC: TppLabel;
    lblCopia: TppLabel;
    pplTotDes: TppLabel;
    ppShape2: TppShape;
    ppLabel29: TppLabel;
    ppLabel48: TppLabel;
    ppLabel221: TppLabel;
    ppShape5: TppShape;
    ppLabel42: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    pplDocPag: TppLabel;
    ppShape11: TppShape;
    ppLabel50: TppLabel;
    ppShape12: TppShape;
    ppShape13: TppShape;
    pplFPago: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    ppLabel49: TppLabel;
    ppShape3: TppShape;
    pplCreAnt: TppLabel;

    GroupBox1: TGroupBox;
    dbeAtraso: TwwDBEdit;
    bitImprimir: TfcShapeBtn;
    Label7: TLabel;
    lblCalifica: TLabel;
// Inicio: SPP_201308_COB - 27/05/2013  : Imprimir carta de Autorización de Descuento por ONP
    ppCartaONP: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppDetailBand10: TppDetailBand;
    ppShape154: TppShape;
    ppMemo9: TppMemo;
    ppLabel255: TppLabel;
    lblAsoOnp: TppLabel;
    lblDniOnp: TppLabel;
    ppLabel280: TppLabel;
// Inicio: SPP_201311_COB : 21/08/2013 - Modificar Carta de Autorización de Descuento por ONP
   { lblMontoOnp: TppLabel;}
// Fin: SPP_201311_COB : 21/08/2013 - Modificar Carta de Autorización de Descuento por ONP
    lblRegSolOnp: TppLabel;
    ppLabel273: TppLabel;
    // Inicio: HPC_201613_COB
    // Se retira etiqueta de modelo de reporte ONP anterior.
    // ppLabel279: TppLabel;
    // Fin: HPC_201613_COB
    ppShape4: TppShape;
    ppShape156: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
// Inicio: SPP_201311_COB : 21/08/2013 - Modificar Carta de Autorización de Descuento por ONP
    {lblletrasOnp: TppLabel;
    lblPlazoOnp: TppLabel;
    lblCuotaOnp: TppLabel;}
// Fin: SPP_201311_COB : 21/08/2013 - Modificar Carta de Autorización de Descuento por ONP
    ppShape14: TppShape;
    lblNumCarOnp: TppLabel;
    lblFecCarOnp: TppLabel;
    lblCodPenOnp: TppLabel;
    ppFooterBand10: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
// Inicio HPC_201503_COB
    ppLabel73: TppLabel;
    lblTasEfeAnu: TppLabel;
    ppLabel74: TppLabel;
    lblTasEfeAnnual: TppLabel;
    ppImage3: TppImage;
    // Inicio: HPC_201613_COB
    // Etiquetas que se añaden para el nuevo reporte "AUTORIZACION DE DESCUENTOS"
    ppMemo18: TppMemo;
    ppMemo8: TppMemo;
    lblDesPreONP: TppLabel;
    ppMemo11: TppMemo;
    ppMemo10: TppMemo;
    ppMemo19: TppMemo;
//Inicio HPC_201711_COB
//Cambio de Formato de Solicitud de Descuento por Planilla
    pprPlaAutDesUni: TppReport;
    ppParameterList3: TppParameterList;
    ppHeaderBand12: TppHeaderBand;
    ppShape289: TppShape;
    ppShape263: TppShape;
    ppMemo26: TppMemo;
    ppLabel316: TppLabel;
    pplApeNomDNI: TppLabel;
    ppLabel310: TppLabel;
    ppLabel312: TppLabel;
    ppLabel311: TppLabel;
    pplconlabnom1: TppLabel;
    pplconlabcon1: TppLabel;
    pplconlabpen1: TppLabel;
    ppLabel317: TppLabel;
    ppLabel313: TppLabel;
    ppLabel314: TppLabel;
    ppLabel315: TppLabel;
    pplUGEL: TppLabel;
    ppLabel318: TppLabel;
    ppLabel319: TppLabel;
    ppLabel320: TppLabel;
    ppLabel321: TppLabel;
    ppShape264: TppShape;
    ppLabel322: TppLabel;
    ppShape265: TppShape;
    ppLabel323: TppLabel;
    ppShape266: TppShape;
    ppShape267: TppShape;
    ppLabel324: TppLabel;
    ppLabel325: TppLabel;
    ppLabel326: TppLabel;
    ppShape268: TppShape;
    ppShape269: TppShape;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppShape270: TppShape;
    ppLabel327: TppLabel;
    ppShape271: TppShape;
    ppLabel331: TppLabel;
    ppLabel330: TppLabel;
    ppShape272: TppShape;
    ppLabel332: TppLabel;
    ppShape273: TppShape;
    ppShape274: TppShape;
    ppShape275: TppShape;
    ppShape276: TppShape;
    ppShape277: TppShape;
    ppShape278: TppShape;
    ppShape262: TppShape;
    ppShape279: TppShape;
    ppShape280: TppShape;
    ppShape281: TppShape;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppShape282: TppShape;
    ppLabel338: TppLabel;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel343: TppLabel;
    ppLabel344: TppLabel;
    ppLabel346: TppLabel;
    ppLabel347: TppLabel;
    ppLabel348: TppLabel;
    ppShape283: TppShape;
    ppLabel349: TppLabel;
    ppShape284: TppShape;
    pplApomen: TppLabel;
    ppLabel351: TppLabel;
    ppLabel352: TppLabel;
    ppLabel355: TppLabel;
    ppShape285: TppShape;
    ppLabel358: TppLabel;
    ppShape286: TppShape;
    ppLabel359: TppLabel;
    ppShape287: TppShape;
    ppLabel360: TppLabel;
    ppShape288: TppShape;
    ppMemo21: TppMemo;
    ppShape290: TppShape;
    ppLabel361: TppLabel;
    pplLugyFec: TppLabel;
    ppLine11: TppLine;
    ppLabel363: TppLabel;
    pplapenomaut: TppLabel;
    ppLine12: TppLine;
    pplUsuOto: TppLabel;
    ppLabel366: TppLabel;
    ppLine13: TppLine;
    ppLabel367: TppLabel;
    ppMemo22: TppMemo;
    pplasoapenomdni2: TppLabel;
    pplasodni2: TppLabel;
    pplMesCAPADS: TppLabel;
    pplAnoCADAPS: TppLabel;
    pplconlabnom: TppLabel;
    pplconlabcon: TppLabel;
    pplconlabpen: TppLabel;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel356: TppLabel;
    ppLabel357: TppLabel;
    pplMesIniCrono: TppLabel;
    pplAnoIniCrono: TppLabel;
    pplMesFinCrono: TppLabel;
    pplAnoFinCrono: TppLabel;
    pplDesMen: TppLabel;
    pplTotDes2: TppLabel;
    pplNumcuo: TppLabel;
    ppldniaut: TppLabel;
    pplUsuImpPlaUniPag: TppLabel;
    pplApoObli: TppLabel;
    ppLabel350: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppFooterBand12: TppFooterBand;
    daDataModule1: TdaDataModule;
//HPC_201711_COB
    // Fin: HPC_201613_COB

// Fin HPC_201503_COB
// Fin: SPP_201308_COB - 27/05/2013  : Imprimir carta de Autorización de Descuento por ONP

      Procedure BitSalirClick(Sender: TObject);
      Procedure DBLCTipCobChange(Sender: TObject);
      Procedure BitGrabarClick(Sender: TObject);
      Procedure DBLCTipCChange(Sender: TObject);
      Procedure BitCalcularClick(Sender: TObject);
      Procedure DBLCTipCExit(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormActivate(Sender: TObject);
      Procedure dbsNumCuotasChange(Sender: TObject);
      Procedure BitLoteClick(Sender: TObject);
      Procedure BitPreCalculoClick(Sender: TObject);
      Procedure z2bbtnImprimeClick(Sender: TObject);
      Procedure dbeCapacidadExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnAceptarClick(Sender: TObject);
      Procedure bbtnAnularClick(Sender: TObject);
      Procedure cbAnuClick(Sender: TObject);
      Procedure cbAprClick(Sender: TObject);
      Procedure mObservaExit(Sender: TObject);
      Procedure mAnulaExit(Sender: TObject);
      Procedure mAprobaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
// Inicio: SPP_201302_COB
    procedure bitImprimirClick(Sender: TObject);
// Fin: SPP_201302_COB
   Private
    { Private declarations }
      xCapital, xIntFla: Currency;
      sOficina: String;
      sUsuario: String;
      nImpCuota : Double;
      //

      Function RegProCob(xAsoId, xCredid: String): Boolean;
      Function PerVenc(xAsoId, xCreDid, xCreNumCuo: String): String;
      Function NumCuotas(xAsoId, xCreDid: String): Integer;
      Function AbonoCuotas(xAsoId, xCreDid: String): Currency;
      Function AbonoCuotas_AR(xAsoId, xCreDid: String): Currency;
      Function GrbCorrelatRef(xConsulta: String): String;
      Function GrbCorrelatCredRef(xCondicion, xTipos: String): String;
      Function GrbCorrelatCredRefNuevo(Area, Ano, xTipos: String): String;
      Procedure GrabaPrestamoRef(xAsoId, xCreDid: String);
      Function LimpiaCds(xAsoId, xCreDid: String): Currency;
      Procedure MstProCob(xAsoId, xIdEval: String);
      Procedure GnrCronograma_Tmp(xAsoid, xCredId, xDesEnv: String; xTas_Int, xTas_Flt, xMonOto: Real; xFec_Pre: tDateTime; xNumCuo: Integer);
      Function CalificarAsociado(xDias: Integer; xMst: Char): String;
      Function FechaHora: String;
      Function MontoPendiente(xAsoId, xCreDid: String): String;
      Function CuotasPendiente(xAsoId, xCreDid: String): String;
      Function MaximoPlazo(xAsoId, xCreDid: String): String;
      Function NumerodeCarta(xAsoId: String): Integer;
      Function UltimoDia(xMes: Integer; xAno: Integer): String;
      Procedure CrgPrestamos;
      Procedure UbicaPrestamos;
//Inicio HPC_201711_COB
//Cambio de Formato de Solicitud de Descuento por Planilla
      Procedure LlenaDatosPlaUniPag(xasoid:String; xcredid:String);
//Final HPC_201711_COB

   Public
    { Public declarations }
      xNroAbonoRef, xCreditoIdRef: String;

      // Inicio: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO
      sImpCalifica : String;
      // Fin: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO

      Function GrbCorrelatEval: String;
   End;

Var
   fRepCronog1: TfRepCronog1;

Implementation


Uses COBDM1, COB904, COB001, COBD11, COBD15;

{$R *.dfm}

Procedure TfRepCronog1.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfRepCronog1.DBLCTipCobChange(Sender: TObject);
Begin
   If DM1.cdsFormaPago.Locate('ID', VarArrayof([DBLCTipCob.Text]), []) Then
   Begin
      EdtForPago.Text := DM1.cdsFormaPago.fieldbyname('DESCRIPCION').AsString;
      lblSaldo.Caption := FormatFloat('###,###.#0', 0);
      BitGrabar.Enabled := False;
   End
   Else
   Begin
      If Length(DBLCTipCob.Text) <> 2 Then
      Begin
         Beep;
         EdtForPago.Text := '';
      End;
   End;
End;

Procedure TfRepCronog1.BitGrabarClick(Sender: TObject);
Var
   Boton: Integer;
   xAsoId, xCreDid, xMensaje, xYear, xConsulta, xTipo, xTipos, xCondicion, xSQL, xfVenc, xEstAnt, xEstDes, xFecCalCulo, xTipPag, xMens: String;
   Year, Month, Day: Word;
   xAplicar, xSaldo, xCuota, xAmoPag, xIntPag, xGasPag: Currency;
   xIdEval, xChk: String;
Begin


   If DM1.Valores(dbeCuotas.Text) > DM1.Valores(dbeCapacidad.tEXT) Then
   Begin
      MessageDlg('CUOTA NO PUEDE SE MAYOR A LA CAPACIDAD DE PAGO!!', mtError, [mbOk], 0);
      Exit;
   End;

// La cuota pactada de nuevo crédito no podrá en ningún caso ser mayor q la cuota del crédito a refinanciar
   if DM1.Valores(dbeCuotas.Text)>=nImpCuota then
   begin
      MessageDlg('Monto de la cuota de Refinanciación ('+dbeCuotas.Text+'), debe ser menor a la cuota del crédito origen ('+FloatToStr(nImpCuota)+')!!', mtError, [mbOk], 0);
      Exit;
   end;

   xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   If DM1.RegAplFon(xAsoid) Then
   Begin
      MessageDlg(' ASOCIADO TIENE APLICACION DE FONDO SOLIDARIO!!', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.RegCuoBlq(xAsoid) Then
   Begin
      MessageDlg(' ASOCIADO TIENE CUOTAS BLOQUEADAS!!', mtError, [mbOk], 0);
      Exit;
   End;

   If RegProCob(xAsoid, DM1.cdsSolicitud.FieldByName('CREDID').AsString) Then
   Begin
      MessageDlg(' ASOCIADO TIENE CUOTAS EN PROCESO DE COBRANZAS!!', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.Valores(dbeCapacidad.Text) = 0 Then
   Begin
      MessageDlg('DEBE INGRESAR LA CAPACIDAD DE PAGO!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(mObserva.Text)) = 0 Then
   Begin
      MessageDlg('DEBE INGRESAR ALGUNA OBSERVACION!!', mtError, [mbOk], 0);
      Exit;
   End;

   // Inicio: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO
   if sImpCalifica='N' then
   begin
      MessageDlg('Antes de Grabar debe Imprimir la Calificación Externa del Asociado!!', mtError, [mbOk], 0);
      Exit;
   end;
   // Fin: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO

   xMensaje := ' ¿ Está seguro de Grabar la Solicitud de Refinanciación ? ';

   Boton := Application.MessageBox(pChar(xMensaje), 'Refinanciación de Cronogramas', MB_YESNO + MB_ICONQUESTION);

   If Boton = ID_YES Then
   Begin
   // GRABAR LOS DATOS
      xIdEval := GrbCorrelatEval; // GRABA EL NÚMERO DE SOLICITUD DE REFINANCIADO

      If xIdEval = '' Then
      Begin
         Screen.Cursor := crDefault;
         MessageDlg(' <<<  A T E N C I Ó N  >>>   NO SE GENERÓ CORRELATIVO COMUNIQUESE CON SISTEMAS !!!!!  ', mtError, [mbOk], 0);
         Exit;
      End;

      If chkMesInicio.Checked Then
         xChk := 'S'
      Else
         xChk := 'N';

   // se modificó script para que grabe saldo del credito anterior en la Refinanciación
      xSQL := 'INSERT INTO EVAL_REF_CAB( IDEVAL, FECEVAL, IDRESEVAL, USUARIO, FREG, HREG, '
         + 'OFDESID, ASOID, CREFOTORG, CREDID, TIPOPE, FORPAGOID, '
         + 'INIMES, CAPPAG, NUMCUO, MONCUO, NUESAL, MENOBS, '
         + 'IMPCAP, IMPINT, IMPREP, DEUDATOT ) '
         + 'Values( ''' + xIdEval + ''', ''' + DateToStr(DM1.FechaSys) + ''', ''0'', '
         + '''' + dm1.wUsuario + ''', ''' + DateToStr(DM1.FechaSys) + ''', sysdate, '
         + '''' + dm1.xOfiDes + ''', '
         + '''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString + ''', '
         + '''' + DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString + ''', '
         + '''' + DM1.cdsSolicitud.FieldByName('CREDID').AsString + ''', '
         + '''' + DBLCTipCob.Text + ''', ' + '''' + DBLCTipC.Text + ''', '
         + '''' + xChk + ''', ' + StringReplace(dbeCapacidad.Text, ',', '', [rfReplaceAll]) + ', '
         + StringReplace(dbsNumCuotas.Text, ',', '', [rfReplaceAll]) + ', '
         + StringReplace(dbeCuotas.Text, ',', '', [rfReplaceAll]) + ', '
         + StringReplace(dbeSaldo.Text, ',', '', [rfReplaceAll]) + ', '
         + '''' + mObserva.Text + ''', '
         + CurrToStr(xCapital) + ', '
         + CurrToStr(xIntFla) + ', ' + CurrToStr(xCapital + xIntFla) + ', '
         + CurrToStr(DM1.SaldoActual(xAsoId,xCreDid,'1'))
         + ' ) ';

      DM1.DCOM1.AppServer.SolStartTransaction;
      DM1.cdsQry30.Close;
      DM1.cdsQry30.DataRequest(xSQL);
      Try
         Begin
           DM1.cdsQry30.Execute;
           DM1.DCOM1.AppServer.SolCommit;
         End;
      Except
         Begin
           DM1.DCOM1.AppServer.SolRollBack;
           ShowMessage('Error al generar Número Correlativo de Solicitud de Refinanciación');
           Exit;
         End;
      End;

      BitGrabar.Enabled := False;
      gbCab.Enabled := False;
      MessageDlg('SOLICITUD DE REFINANCIACION GRABADA OK.', mtInformation, [mbOk], 0);
   End;
End;

Procedure TfRepCronog1.DBLCTipCChange(Sender: TObject);
Begin
   If DM1.cdsTtransaccion.Locate('FORPAGOID', VarArrayof([DBLCTipC.Text]), []) Then
      EdtTipCob.Text := DM1.cdsTtransaccion.fieldbyname('FORPAGODES').AsString
   Else
   Begin
      If Length(DBLCTipC.Text) <> 2 Then
      Begin
         Beep;
         EdtTipCob.Text := '';
      End;
   End;

End;

Function TfRepCronog1.PerVenc(xAsoId, xCreDid, xCreNumCuo: String): String;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREANO||CREMES AS VENCE FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoid)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CRECUOTA=' + QuotedStr(Trim(xCreNumCuo));
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   If DM1.cdsQry1.RecordCount = 1 Then
      Result := Trim(DM1.cdsQry1.FieldByName('VENCE').AsString)
   Else
      Result := '999999';

   DM1.cdsQry1.Close;
End;

Procedure TfRepCronog1.BitCalcularClick(Sender: TObject);
Var
   xAsoid, xCreDid, xCreNumCuo, xCreCuota, xPeriodo, xMes, xAno, xfCalc: String;
   xCuotas: Integer;
   xSaldo, xMontAbn, xFlat: Currency;
Begin
   DM1.xCnd := '1';
   xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   xCreNumCuo := DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString;
   If Trim(DBLCTipCob.Text) = '03' Then
   Begin
      MessageDlg(' Esta Opcion Esta En Desarrollo!! ', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(EdtForPago.Text)) = 0 Then
   Begin
      MessageDlg(' Debe Seleccionar Un Tipo De Operación!! ', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(EdtTipCob.Text)) = 0 Then
   Begin
      MessageDlg(' Debe Seleccionar Un Tipo De Descuento!! ', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.RegAplFon(xAsoid) Then
   Begin
      MessageDlg(' ASOCIADO TIENE APLICACION DE FONDO SOLIDARIO!!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.RegCuoBlq(xAsoid) Then
   Begin
      MessageDlg(' ASOCIADO TIENE CUOTAS BLOQUEADAS!!', mtError, [mbOk], 0);
      Exit;
   End;

   Screen.Cursor := crHourGlass;
   If DM1.SaldoActual(xAsoId, xCreDid, '1') = 0 Then
   Begin
      Screen.Cursor := crDefault;
      MessageDlg(' No Exite Ningun Saldo Por Refinanciar!! ', mtInformation, [mbOk], 0);
      Exit;
   End;

   xMes := Copy(DateToStr(DM1.FechaSys), 4, 2);
   xAno := Copy(DateToStr(DM1.FechaSys), 7, 4);
   If xMes = '01' Then
   Begin
      xMes := '12';
      xAno := IntToStr((StrToInt(xAno) - 1));
   End
   Else
   Begin
      xMes := Format('%.2d', [StrToInt(xMes) - 1]);
   End;
   xPeriodo := Trim(xAno + xMes);
   If Trim(DBLCTipCob.Text) <> '02' Then
   Begin
      If Trim(DBLCTipCob.Text) = '03' Then
      Begin
         If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO' Then
         Begin
            Screen.Cursor := crDefault;
            MessageDlg(' El Asociado No Es CESANTE Debe Ser Refinanciado !! ', mtError, [mbOk], 0);
            Exit;
         End;
      End;

      xPeriodo := '204001';
      If PerVenc(xAsoId, xCreDid, xCreNumCuo) > xPeriodo Then
      Begin
         Screen.Cursor := crDefault;
         MessageDlg(' El Cronograma No Ha Vencido ó Exite Alguna Inconsistencia !!! ', mtError, [mbOk], 0);
         Exit;
      End
      Else
      Begin
       //refinanciar ó Recalendarizar
         xfCalc := Trim(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 7, 4) + Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 4, 2));
         xCreCuota := '1';
         lblSaldo.Caption := FormatFloat('###,###.#0', DM1.xCalSalPag(xAsoid, xCreDid, xfCalc, xCrecuota, DM1.xCnd, ''));
         BitGrabar.Enabled := True;

         xMontAbn := AbonoCuotas(xAsoId, xCreDid);
         dtgNotaAbono.ColumnByName('CREFVEN').FooterValue := 'Total : ';
         dtgNotaAbono.ColumnByName('CAPITAL').FooterValue := FormatFloat('###,###.#0', xCapital);
         dtgNotaAbono.ColumnByName('INTFLA').FooterValue := FormatFloat('###,###.#0', xIntFla);
         dtgNotaAbono.ColumnByName('ABONO').FooterValue := FormatFloat('###,###.#0', xMontAbn);
         dbeCuotas.Text := FormatFloat('###,###.#0', DM1.CalculaCuota(DM1.Valores(DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(Trim(xCreDid), 7, 2)), 'CRE110', 'POR_INT')), DM1.Valores(DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(Trim(xCreDid), 7, 2)), 'CRE110', 'POR_FLT')), DM1.Valores(lblSaldo.Caption), StrToInt(FloatToStr(dbsNumCuotas.Value))));
         xFlat := xIntFla / dbsNumCuotas.Value;
         dbeCuotas.Text := FormatFloat('###,###.#0', xFlat + DM1.CalculaCuota(DM1.Valores(DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(Trim(xCreDid), 7, 2)), 'CRE110', 'POR_INT')), 0, xCapital, StrToInt(FloatToStr(dbsNumCuotas.Value))));
         If Length(Trim(dbsNumCuotas.Text)) = 0 Then dbsNumCuotas.Value := 1;
         dbeSaldo.Text := FormatFloat('###,###.#0', DM1.Valores(dbeCuotas.Text) * DM1.Valores(dbsNumCuotas.Text));
      End;

   End
   Else // amp/red
      If PerVenc(xAsoId, xCreDid, xCreNumCuo) <= xPeriodo Then
      Begin
         MessageDlg(' El Cronograma Ha Vencido El Prestamo Debe Ser REFINANCIADO !!! ', mtError, [mbOk], 0);
         Exit;
      End
      Else
      Begin
        //ampl/Red
         xfCalc := Trim(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 7, 4) + Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 4, 2));
         xCreCuota := '1';
         lblSaldo.Caption := FormatFloat('###,###.#0', DM1.CalSalPag_AR(xAsoid, xCreDid, xfCalc, xCreCuota, DM1.xCnd, ''));
         BitGrabar.Enabled := True;
         xMontAbn := AbonoCuotas_AR(xAsoId, xCreDid);
         dtgNotaAbono.ColumnByName('CREFVEN').FooterValue := 'Total : ';
         dtgNotaAbono.ColumnByName('ABONO').FooterValue := FormatFloat('###,###.#0', xMontAbn);
         dbeCuotas.Text := FormatFloat('###,###.#0', DM1.CalculaCuota(DM1.Valores(DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(Trim(xCreDid), 7, 2)), 'CRE110', 'POR_INT')), 0, DM1.Valores(lblSaldo.Caption), StrToInt(FloatToStr(dbsNumCuotas.Value))));
         If Length(Trim(dbsNumCuotas.Text)) = 0 Then dbsNumCuotas.Value := 1;
         dbeSaldo.Text := FormatFloat('###,###.#0', DM1.Valores(dbeCuotas.Text) * DM1.Valores(dbsNumCuotas.Text));
      End;
   Screen.Cursor := crDefault;

End;

Function TfRepCronog1.NumCuotas(xAsoId, xCreDid: String): Integer;
Var
   xCuotas: Integer;
Begin
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREESTID FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoid)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CREESTID IN (''02'',''11'',''27'',''14'',''19'')');
   DM1.cdsQry1.Open;
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xCuotas := 0;
      DM1.cdsQry1.First;
      While Not DM1.cdsQry1.Eof Do
      Begin
         If (DM1.cdsQry1.FieldByName('CREESTID').AsString = '14') Or (DM1.cdsQry1.FieldByName('CREESTID').AsString = '19') Then
         Begin
            xCuotas := 0;
            Result := xCuotas;
            DM1.cdsQry1.Last;
         End
         Else
            xCuotas := xCuotas + 1;
         DM1.cdsQry1.Next;
      End;

      Result := xCuotas;
   End
   Else
      Result := 0;

   DM1.cdsQry1.Close;
End;

// Inicio HPC_201503_COB
Function TfRepCronog1.AbonoCuotas(xAsoId, xCreDid: String): Currency;
Var
   xfecCalculo, xSQL: String;
   xSalAbn: Currency;
Begin
   xfecCalculo := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   DM1.cdsAportes.Close;

   (*
   xSQL := 'SELECT SUBSTR(A.CREDID,11,7) AS NUMPRE,SUBSTR(A.CREDID,3,4) AS ANOPRE, '
          +'       SUBSTR(A.CREDID,7,2) AS TIPPRE,SUBSTR(A.CREDID,1,2) AS ORIOTO, '
          +'       A.CRECUOTA,CREFVEN,  '
          +'       NVL(CREAMORT,0)-NVL(CRECAPITAL,0) CAPITAL, '
          +'      ( NVL(CREFLAT,0)-NVL(CREMTOFLAT,0) ) '
          +'     + CASE WHEN CREANO||CREMES>' + QuotedStr(Trim(xfecCalculo))
          +'    and CREFVEN=CREFVENINI THEN 0 ELSE NVL(CREINTERES,0)-NVL(CREMTOINT,0) END AS INTFLA, '
          +'CASE WHEN CREANO||CREMES>' + QuotedStr(Trim(xfecCalculo)) + ' and CREFVEN=CREFVENINI '
          +'     THEN (NVL(CREAMORT,0)+ ( NVL(CREFLAT,0)-NVL(CREMTOFLAT,0) )   )-NVL(CREMTOCOB,0) ' +
      'ELSE NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END AS ABONO, ' +
      'A.CREESTADO FROM CRE302 A ' +
      'WHERE A.ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND A.CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND A.CREESTID IN (''02'',''11'',''27'',''14'') ' +
      'ORDER BY A.CREDID,A.CRECUOTA ';          *)

   xSQL:='SELECT SUBSTR(A.CREDID, 11, 7) AS NUMPRE, SUBSTR(A.CREDID, 3, 4) AS ANOPRE, SUBSTR(A.CREDID, 7, 2) AS TIPPRE, '+
         'SUBSTR(A.CREDID, 1, 2) AS ORIOTO, A.CRECUOTA, CREFVEN, NVL(CREAMORT, 0) - NVL(CRECAPITAL, 0) CAPITAL, '+
         '(NVL(CREFLAT, 0) - NVL(CREMTOFLAT, 0)) +  '+
         ' CASE          '+
         '   WHEN CREANO || CREMES > '+QuotedStr(Trim(xfecCalculo))+' AND CREFVEN = CREFVENINI THEN '+
         '    0 '+
         '   ELSE '+
         '    (NVL(CREINTERES, 0) - NVL(CREMTOINT, 0)) + (NVL(MONPACDESGRAV, 0) - NVL(MONCOBDESGRAV, 0)) '+
         ' END AS INTFLA, '+
         'CASE '+
         '  WHEN CREANO || CREMES > '+QuotedStr(Trim(xfecCalculo))+' and CREFVEN = CREFVENINI THEN '+
         '   (NVL(CREAMORT, 0) - NVL(CRECAPITAL, 0) + '+
         '   (NVL(CREFLAT, 0) -  NVL(CREMTOFLAT, 0)) - NVL(CREMTOCOB, 0)) '+
         '  ELSE '+
         '   NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) '+
         'END AS ABONO, A.CREESTADO FROM CRE302 A  WHERE A.ASOID = '+QuotedStr(xAsoId)+'    AND A.CREDID = '+QuotedStr(xCreDid)+' '+
         'AND A.CREESTID IN (''02'', ''11'', ''27'', ''14'')  ORDER BY A.CREDID, A.CRECUOTA '; 
   DM1.cdsAportes.DataRequest(xSQL);
   DM1.cdsAportes.Open;
   TNumericField(DM1.cdsAportes.fieldbyname('ABONO')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsAportes.fieldbyname('CAPITAL')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsAportes.fieldbyname('INTFLA')).DisplayFormat := '###,###.#0';

   xSalAbn := 0;
   xCapital := 0;
   xIntFla := 0;

   If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      xSalAbn := 0;
      DM1.cdsAportes.First;
      While Not DM1.cdsAportes.Eof Do
      Begin
         xSalAbn := xSalAbn + DM1.cdsAportes.FieldByName('ABONO').AsCurrency;
         xCapital := xCapital + DM1.cdsAportes.FieldByName('CAPITAL').AsCurrency;
         xIntFla := xIntFla + DM1.cdsAportes.FieldByName('INTFLA').AsCurrency;
         DM1.cdsAportes.Next;
      End;
      Result := xSalAbn;
   End
   Else
   Begin
      Result := 0;
   End;
End;
// Fin HPC_201503_COB

Function TfRepCronog1.GrbCorrelatRef(xConsulta: String): String;
Var
   xCorAbn: Integer;
   xResAbn: String;
Begin
   DM1.cdsTDoc.Close;
   DM1.cdsTDoc.DataRequest('SELECT CREAREA,CORREANO,NRONABO,TIPO FROM CRE206 WHERE ' + xConsulta);
   DM1.cdsTDoc.Open;
   If DM1.cdsTDoc.RecordCount = 1 Then
   Begin
      xCorAbn := StrToInt(DM1.cdsTDoc.fieldbyname('NRONABO').AsString) + 1;
      xResAbn := Format('%.10d', [xCorAbn]);
      DM1.cdsTDoc.Edit;
      DM1.cdsTDoc.fieldbyname('NRONABO').AsString := xResAbn;
      DM1.cdsTDoc.ApplyUpdates(0);
      Result := xResAbn;
   End;
   DM1.cdsTDoc.Close;
End;

Function TfRepCronog1.GrbCorrelatCredRef(xCondicion, xTipos: String): String;
Var
   xCorrelativo: Integer;
   xCreDid, xSQL: String;
Begin
   xSQL := 'SELECT CREAREA,CORREANO,CREDID,TIPO,TIPOCOB FROM CRE206 WHERE ' + xCondicion;
   DM1.cdsTDoc.Close;
   DM1.cdsTDoc.DataRequest(xSQL);
   DM1.cdsTDoc.Open;
   If DM1.cdsTDoc.RecordCount = 1 Then
   Begin
      xCorrelativo := StrToInt(Copy(DM1.cdsTDoc.fieldbyname('CREDID').AsString, 10, 6)) + 1;
      xCreDid := xTipos + 'R' + Format('%.6d', [xCorrelativo]);
      DM1.cdsTDoc.Edit;
      DM1.cdsTDoc.fieldbyname('CREDID').AsString := xCreDid;
      DM1.cdsTDoc.ApplyUpdates(0);
      DM1.cdsQry30.Close;
      DM1.cdsQry30.DataRequest(xSQL);
      DM1.cdsQry30.Open;
      If Trim(xCreDid) > Trim(DM1.cdsQry30.fieldbyname('CREDID').AsString) Then xCredid := '';
      DM1.cdsQry30.Close;
      Result := xCredid;
   End;
   DM1.cdsTDoc.Close;
End;

Function TfRepCronog1.GrbCorrelatCredRefNuevo(Area, Ano, xTipos: String): String;
Var
   xCorrelativo: Integer;
   xCreDid, xSQL: String;
Begin
   xSQL := 'SELECT CREAREA,CORREANO,CREDID,TIPO,TIPOCOB FROM CRE206 '
      + 'WHERE CREAREA=''' + Area + ''' and Correano=' + Ano
      + ' AND CREDID LIKE ''' + xTipos + '%'' and TipoCob=''1''';
   DM1.cdsTDoc.Close;
   DM1.cdsTDoc.DataRequest(xSQL);
   DM1.cdsTDoc.Open;

   If DM1.cdsTDoc.RecordCount = 0 Then
   Begin
      xSQL := 'INSERT INTO CRE206( CREAREA, CORREANO, CREDID, TIPO, TIPOCOB ) '
         + 'Values( ''' + Area + ''', ' + Ano + ', '
         + '''' + xTipos + '000000'', ''0'', ''1'' )';
      TRY
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      EXCEPT
      END;

      xSQL := 'SELECT CREAREA,CORREANO,CREDID,TIPO,TIPOCOB FROM CRE206 '
         + 'WHERE CREAREA=''' + Area + ''' and Correano=' + Ano
         + ' AND CREDID LIKE ''' + xTipos + '%'' and TipoCob=''1''';
      DM1.cdsTDoc.Close;
      DM1.cdsTDoc.DataRequest(xSQL);
      DM1.cdsTDoc.Open;

      If DM1.cdsTDoc.RecordCount = 0 Then
         Result := ''
      Else
      Begin
         xCorrelativo := StrToInt(Copy(DM1.cdsTDoc.fieldbyname('CREDID').AsString, 10, 6)) + 1;
         xCreDid := xTipos + Format('%.6d', [xCorrelativo]);
         DM1.cdsTDoc.Edit;
         DM1.cdsTDoc.fieldbyname('CREDID').AsString := xCreDid;
         DM1.cdsTDoc.ApplyUpdates(0);
         DM1.cdsQry30.Close;
         DM1.cdsQry30.DataRequest(xSQL);
         DM1.cdsQry30.Open;
         If Trim(xCreDid) > Trim(DM1.cdsQry30.fieldbyname('CREDID').AsString) Then xCredid := '';
         DM1.cdsQry30.Close;
         Result := xCredid;
      End;
      DM1.cdsTDoc.Close;
   End;
End;

Procedure TfRepCronog1.GrabaPrestamoRef(xAsoid, xCredid: String);
Var
   xSQl, xPeriodo, xDia, xTipo, xTipPag: String;
   Year, Month, Day: Word;
   xAno, xMes: Integer;
   xFec_Cro: tDateTime;
Begin
   xSQL:='SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, '
        +   'ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, '
        +   'ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, '
        +   'ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, '
        +   'GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, '
        +   'ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, '
        +   'ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, '
        +   'FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, '
        +   'ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, '
        +   'ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, '
        +   'CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, '
        +   'OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO, GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, '
        +   'NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, '
        +   'ANOENV, ENVIO, CODOTRDOCIDE, NUMOTRDOCIDE, CODMOTDESTAPO, AUTDESCUO, FECAUTDESCUO, USUREGAUTDESCUO, '
        +   'OFIREGAUTDESCUO, CODMODAUTDESCUO, MDFASODIR, MDFZIPID, MDFCNTREG, MDFUSRMOD, MDFFECMOD, EMICARTA, DESMANVIV, '
        +   'CODMOTDESTCUO, FECACTPAD, CENEDUID '
        +'FROM APO201 WHERE ASOID =' + QuotedStr(Trim(xAsoId));
   DM1.cdsAsoX.Close;
   DM1.cdsAsoX.DataRequest( xSQL );
   //   DM1.cdsAsoX.DataRequest('SELECT * FROM APO201 WHERE ASOID =' + QuotedStr(Trim(xAsoId)));
   DM1.cdsAsoX.Open;

   xSQL:='SELECT TIPCREID, ASOID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, USEID, CREFOTORG, CREFECINI, CREMTOSOL, CREMTOOTOR, '
        +  'CREMTOGIR, CREINTERES, CREDFLAT, CRECUOTA, CRENUMCUO, CRELUGGIRO, BANCOID, CRENUMCTA, CREMTOPAG, CRESDOACT, '
        +  'CREPERGRA, CRECUOPAG, CRECUOENV, CREPERIODI, CREMTOTAL, CRECAPPGO, CRENEWID, CRESALDOT, USUARIO, FREG, HREG, '
        +  'OFDESID, CALIFICAID, APRUEBAID, CREESTADO, TMONID, CUOTAINI, UPAGOID, UPROID, DPTOID, LISTAID, CREDID, CRECOM, '
        +  'CRESEG, CREPOR, CREGADM, CRECOMP, CREMORA, FORPAGOID, CRETCALID, TMONABR, CRETCALABR, LISTAABR, FORPAGOABR, '
        +  'CIAID, CREFRECL, CREESTID, CREANOMES, NROPAGARE, NROAUTDES, TIPCREDES, GARAPENOM, GARASOID, ASOCODAUX, NRONABO, '
        +  'NUMREF, FECREF, TIPOREF, NROFICIO, CIUDID, ARCHIVOFTP, AGENBANCOID, DPTOGIRO, USEIDGAR, TIPDESEID, BCOGIRO, '
        +  'CREMTONABO, CREFFINPAG, CREFINIPAG, CREBLOQFEC, USUBLOQ, CREBLOQ, FLGCAJA, FECHACAJA, CRENUMCOMP, CCOSID, '
        +  'CUENTAH, CUENTAD, CREGENCOB, FLGAUTOMA, REFANOMES, NROREFINAN, CAJAUSU, HORACAJA, ASOTIPID, ASODNI, ANULACAJA, '
        +  'MEN_ANU, MOT_PRE, NUMREFI, FLGREFI, CREFCAN, FLGINCONSIS, PERCONTA, C_ABN, CNTANOMM, FEC_RCP, CRECAPLIQ, CREFDES, '
        +  'CREMENOBS, TIPOCONT, CNTFLAG, CREMTODEP, CREFANUL, USERANUL, CRESUMCUO, CREMOTEXT, NROFICIO_BCK, MIGRADO, '
        +  'USUAUTCRE, FECAUTCRE, ESTAUTCRE, COMAUTCRE, USUANUSUP, FECANUSUP, MOTANUSUP, ESTANUSUP, DOCID, CCSERIE, CCNODOC, '
        +  'CIASER, CREMONINS, IMPCON, DNIRUC, FECIMPCON, CODARCHIVO, CREMTOAPO, AUTDESCRE, FECAUTDES, USUAUTDES, IMPCARAUT, '
        +  'NROCARAUT, DIASPROC, DESCENV, AUTDESGES, USUDESGES, FECHORDESGES '
        +'FROM CRE301 WHERE ASOID =' + QuotedStr(Trim(xAsoId));
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.DataRequest( xSQL );

   DM1.cdsDetalle.Open;
   DM1.cdsDetalle.Insert;
   DM1.cdsDetalle.fieldbyname('TIPCREID').AsString := Copy(Trim(xCreDid), 7, 2);
   DM1.cdsDetalle.fieldbyname('NUMREFI').AsString := Trim(xCreDid);
   DM1.cdsDetalle.fieldbyname('FLGREFI').AsString := Copy(Trim(EdtForPago.Text), 1, 1);
   DM1.cdsDetalle.fieldbyname('ASOID').AsString := xAsoid;
   DM1.cdsDetalle.fieldbyname('ASOCODMOD').AsString := DM1.cdsAsoX.fieldbyname('ASOCODMOD').AsString;
   DM1.cdsDetalle.fieldbyname('ASOCODAUX').AsString := DM1.cdsAsoX.fieldbyname('ASOCODAUX').AsString;
   DM1.cdsDetalle.fieldbyname('ASOCODPAGO').AsString := DM1.cdsAsoX.fieldbyname('ASOCODPAGO').AsString;
   DM1.cdsDetalle.fieldbyname('ASOAPENOM').AsString := DM1.cdsAsoX.fieldbyname('ASOAPENOM').AsString;
   DM1.cdsDetalle.fieldbyname('USEID').AsString := DM1.cdsAsoX.fieldbyname('USEID').AsString;
   DM1.cdsDetalle.fieldbyname('NRONABO').AsString := xNroAbonoRef;
   DM1.cdsDetalle.fieldbyname('NUMREF').AsString := xNroAbonoRef;
   DM1.cdsDetalle.fieldbyname('CREFOTORG').AsDateTime := DM1.FechaSys;
   DM1.cdsDetalle.fieldbyname('FECREF').AsDateTime := DM1.FechaSys;
   DM1.cdsDetalle.fieldbyname('CREMTOSOL').AsFloat := xCapital; //DM1.Valores(lblSaldo.Caption) ;
   DM1.cdsDetalle.fieldbyname('CREMTOOTOR').AsFloat := xCapital; //DM1.Valores(lblSaldo.Caption) ;
   DM1.cdsDetalle.fieldbyname('CREMTOGIR').AsFloat := xCapital; //DM1.Valores(lblSaldo.Caption);
   DM1.cdsDetalle.fieldbyname('CREMTONABO').AsFloat := xCapital; //DM1.Valores(lblSaldo.Caption);
   DM1.cdsDetalle.fieldbyname('CREINTERES').AsFloat := DM1.Valores(DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString), 7, 2)), 'CRE110', 'POR_INT'));
   DM1.cdsDetalle.fieldbyname('CREDFLAT').AsFloat := 0; //DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString),7,2)),'CRE110','POR_FLT'));
   DM1.cdsDetalle.fieldbyname('CRECUOTA').AsFloat := DM1.Valores(dbeCuotas.Text);
   DM1.cdsDetalle.fieldbyname('CRENUMCUO').AsInteger := StrToInt(FloatToStr(dbsNumCuotas.Value));
   DM1.cdsDetalle.fieldbyname('CREESTID').AsString := '02';
   DM1.cdsDetalle.fieldbyname('CREESTADO').AsString := 'POR COBRAR';
   DM1.cdsDetalle.fieldbyname('CREFDES').AsDateTime := DM1.FechaSys;
   DM1.cdsDetalle.fieldbyname('CREMTOPAG').AsFloat := 0;
   DM1.cdsDetalle.fieldbyname('CRESDOACT').AsFloat := DM1.Valores(dbeCuotas.Text) * StrToInt(FloatToStr(dbsNumCuotas.Value));
   DM1.cdsDetalle.fieldbyname('CREMTOTAL').AsFloat := xCapital; //DM1.Valores(lblSaldo.Caption);
   DM1.cdsDetalle.fieldbyname('CRESALDOT').AsFloat := 0;
   DM1.cdsDetalle.fieldbyname('BANCOID').AsString := DM1.cdsAsoX.Fieldbyname('BANCOID').AsString;
   DM1.cdsDetalle.fieldbyname('CREMOTEXT').AsString := mObserva.Text;
   DM1.cdsDetalle.fieldbyname('CRENUMCTA').AsString := DM1.cdsAsoX.Fieldbyname('ASONCTA').AsString;
   DM1.cdsDetalle.fieldbyname('FORPAGOID').AsString := Trim(DBLCTipC.Text);
   DM1.cdsDetalle.fieldbyname('TIPCREDES').AsString := DM1.cdsSolicitud.fieldbyname('TIPCREDES').AsString;
   DecodeDate(DM1.FechaSys, Year, Month, Day);
   DM1.cdsDetalle.fieldbyname('CREANOMES').AsString := Trim(IntToStr(Year)) + Format('%.2d', [Month]);
   DM1.cdsDetalle.fieldbyname('REFANOMES').AsString := Trim(IntToStr(Year)) + Format('%.2d', [Month]);
   DM1.cdsDetalle.fieldbyname('TIPDESEID').AsString := '10';
   DM1.cdsDetalle.fieldbyname('USUARIO').AsString := sUsuario; // Usuario de Solicitud
   DM1.cdsDetalle.fieldbyname('OFDESID').AsString := sOficina; // Oficina de Solicitud DM1.xOfiDes;
   DM1.cdsDetalle.fieldbyname('ASOTIPID').AsString := DM1.cdsAsoX.fieldbyname('ASOTIPID').AsString;
   DM1.cdsDetalle.fieldbyname('ASODNI').AsString := DM1.cdsAsoX.fieldbyname('ASODNI').AsString;
   DM1.cdsDetalle.fieldbyname('CALIFICAID').AsString := DM1.wUsuario;
   DM1.cdsDetalle.fieldbyname('APRUEBAID').AsString := DM1.wUsuario;
   DM1.cdsDetalle.fieldbyname('TMONID').AsString := 'N';
   DM1.cdsDetalle.fieldbyname('UPAGOID').AsString := DM1.cdsAsoX.fieldbyname('UPAGOID').AsString;
   DM1.cdsDetalle.fieldbyname('UPROID').AsString := DM1.cdsAsoX.fieldbyname('UPROID').AsString;
   DM1.cdsDetalle.fieldbyname('DPTOID').AsString := DM1.cdsAsoX.fieldbyname('DPTOID').AsString;
   DM1.cdsDetalle.fieldbyname('FREG').AsDateTime := DM1.FechaSys;
   DM1.cdsDetalle.fieldbyname('HREG').AsString := DateToStr(DM1.FechaSys) + DM1.HoraSys;
   DM1.cdsDetalle.fieldbyname('TMONABR').AsString := 'S/.';
   DM1.cdsDetalle.fieldbyname('CREDID').AsString := xCreditoIdRef;
   DM1.cdsDetalle.fieldbyname('CREFINIPAG').AsString := Copy(DM1.IniFinCrono(DM1.FechaSys, StrToInt(FloatToStr(dbsNumCuotas.Value)), 'N', xCreDid), 1, 8);
   DM1.cdsDetalle.fieldbyname('CREFFINPAG').AsString := Copy(DM1.IniFinCrono(DM1.FechaSys, StrToInt(FloatToStr(dbsNumCuotas.Value)), 'N', xCreDid), 9, 8);
   DM1.cdsDetalle.fieldbyname('NROAUTDES').AsString := xCreditoIdRef;
   DM1.cdsDetalle.ApplyUpdates(0);
   DM1.cdsDetalle.Close;
   DM1.cdsAsoX.Close;

   If chkMesInicio.Checked = True Then
   Begin
      If StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2)) = 1 Then
      Begin
         xAno := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4)) - 1;
         xMes := 12;
      End
      Else
      Begin
         xAno := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
         xMes := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2)) - 1;
      End;
      xDia := DM1.UltimoDia(xMes, xAno);
      xFec_Cro := StrToDate(xDia + '/' + Format('%.2d', [xMes]) + '/' + Trim(IntToStr(xAno)));

      DM1.GnrCronograma_Ref(xAsoid, xCreditoIdRef, DM1.Valores(DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString), 7, 2)), 'CRE110', 'POR_INT')), 0, xCapital, StrToFloat(FloatToStrF(xIntFla / dbsNumCuotas.Value, ffFixed, 15, 2)), xFec_Cro, StrToInt(FloatToStr(dbsNumCuotas.Value)));
   End
   Else
      DM1.GnrCronograma_ref(xAsoid, xCreditoIdRef, DM1.Valores(DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString), 7, 2)), 'CRE110', 'POR_INT')), 0, xCapital, StrToFloat(FloatToStrF(xIntFla / dbsNumCuotas.Value, ffFixed, 15, 2)), DM1.FechaSys, StrToInt(FloatToStr(dbsNumCuotas.Value)));

   xTipo := Copy(Trim(EdtForPago.Text), 1, 1);
   If xTipo = 'R' Then
      xTipPag := '12'
   Else
      If xTipo = 'A' Then
         xTipPag := '22'
      Else
         If xTipo = 'C' Then xTipPag := '29';

   xSQL:='UPDATE CRE301 SET CREESTID='+QuotedStr(xTipPag)+ ',CREESTADO='+QuotedStr(DM1.CrgDescrip('ESTID='+QuotedStr(Trim(xTipPag)),'CRE113','ESTDES'))
        +       ', NROREFINAN=' + QuotedStr(xCreditoIdRef) + ',CRENEWID=' + QuotedStr(xCreditoIdRef)
        +' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCredid);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   chkMesInicio.Checked := False;
End;

Procedure TfRepCronog1.DBLCTipCExit(Sender: TObject);
Var
   xAsoid, xCreDid: String;
Begin
   xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   dbsNumCuotas.Value := NumCuotas(xAsoId, xCreDid);
End;

Procedure TfRepCronog1.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
  chkMesInicio.Checked := False;
  if cRefi='A' then
  begin
    xSQL := 'UPDATE EVAL_REF_CAB SET USUAUT=null '
           +'where IDEVAL='''+DM1.cdsSoliRefi.FieldByName('IDEVAL').AsString+''' '
           +'AND CREDID='''+DM1.cdsSoliRefi.FieldByName('CREDID').AsString+''' '
           +'AND IDRESEVAL = ''0'' AND USUAUT=''' + dm1.wUsuario +'''';
    DM1.cdsQry30.Close;
    DM1.cdsQry30.DataRequest(xSQL);
    TRY
      DM1.cdsQry30.Execute;
    EXCEPT
      ShowMessage('Error al Consultar Solicitud...');
    END;
  end;

// Cerrando los client abiertos en la forma
  DM1.cdsFormaPago.Close;
  DM1.cdsFormaPago.Filter := '';
  DM1.cdsFormaPago.IndexFieldNames := '';

  DM1.cdsSolicitud.Filter := '';
  DM1.cdsSolicitud.IndexFieldNames := '';

  DM1.cdsQry30.Close;
  DM1.cdsQry30.Filter := '';
  DM1.cdsQry30.IndexFieldNames := '';

  DM1.cdsTtransaccion.Close;
  DM1.cdsTtransaccion.Filter := '';
  DM1.cdsTtransaccion.IndexFieldNames := '';

  DM1.cdsQry1.Close;
  DM1.cdsQry1.Filter := '';
  DM1.cdsQry1.IndexFieldNames := '';

// Inicio: SPP_201308_COB  : Imprimir carta de Autorización de Descuento por ONP
  DM1.cdsQry2.Close;
  DM1.cdsQry2.Filter := '';
  DM1.cdsQry2.IndexFieldNames := '';
// Fin: SPP_201308_COB     : Imprimir carta de Autorización de Descuento por ONP

  DM1.cdsAso.Filter := '';
  DM1.cdsAso.IndexFieldNames := '';

  DM1.cdsAportes.Close;
  DM1.cdsAportes.Filter := '';
  DM1.cdsAportes.IndexFieldNames := '';

  DM1.cdsSoliRefi.Filter := '';
  DM1.cdsSoliRefi.IndexFieldNames := '';

  DM1.cdsDcuotas.Close;
  DM1.cdsDcuotas.Filter := '';
  DM1.cdsDcuotas.IndexFieldNames := '';

  DM1.cdsTDoc.Close;
  DM1.cdsTDoc.Filter := '';
  DM1.cdsTDoc.IndexFieldNames := '';

  DM1.cdsAsoX.Close;
  DM1.cdsAsoX.Filter := '';
  DM1.cdsAsoX.IndexFieldNames := '';

  DM1.cdsListaCred.Close;
  DM1.cdsListaCred.Filter := '';
  DM1.cdsListaCred.IndexFieldNames := '';

  DM1.cdsDetalle.Close;
  DM1.cdsDetalle.Filter := '';
  DM1.cdsDetalle.IndexFieldNames := '';

  DM1.cdsProvin.Close;
  DM1.cdsProvin.Filter := '';
  DM1.cdsProvin.IndexFieldNames := '';

  DM1.cdsCViv.Close;
  DM1.cdsCViv.Filter := '';
  DM1.cdsCViv.IndexFieldNames := '';

  Action := caFree;

End;

Function TfRepCronog1.LimpiaCds(xAsoId, xCreDid: String): Currency;
Var
   xfecCalculo, xSQL: String;
   xSalAbn: Currency;
Begin
   xfecCalculo := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   DM1.cdsAportes.Close;
   xSQL := 'SELECT SUBSTR(A.CREDID,11,7) AS NUMPRE,SUBSTR(A.CREDID,3,4) AS ANOPRE, ' +
      'SUBSTR(A.CREDID,7,2) AS TIPPRE,SUBSTR(A.CREDID,1,2) AS ORIOTO, ' +
      'A.CRECUOTA,CREFVEN,  ' +
      'CREAMORT-CRECAPITAL CAPITAL, ' +
      '( NVL(CREFLAT,0)-NVL(CREMTOFLAT,0) ) + CASE WHEN CREANO||CREMES>' + QuotedStr(Trim(xfecCalculo)) + ' and CREFVEN=CREFVENINI THEN 0 ELSE NVL(CREINTERES,0)-NVL(CREMTOINT,0) END AS INTFLA, ' +
      'CASE WHEN CREANO||CREMES>' + QuotedStr(Trim(xfecCalculo)) + ' and CREFVEN=CREFVENINI THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0))-NVL(CREMTOCOB,0) ' +
      'ELSE NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END AS ABONO, ' +
      'A.CREESTADO FROM CRE302 A ' +
      'WHERE A.ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND A.CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND A.CREESTID IN (''02'',''11'',''27'') ' +
      'ORDER BY A.CREDID,A.CRECUOTA ';

   DM1.cdsAportes.DataRequest(xSQL);
   DM1.cdsAportes.Open;
   TNumericField(DM1.cdsAportes.fieldbyname('ABONO')).DisplayFormat := '###,###.#0';
   If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      xSalAbn := 0;
      DM1.cdsAportes.First;
      While Not DM1.cdsAportes.Eof Do
      Begin
         xSalAbn := xSalAbn + DM1.cdsAportes.FieldByName('ABONO').AsCurrency;
         DM1.cdsAportes.Next;
      End;
      Result := xSalAbn;
   End
   Else
   Begin
      Result := 0;
   End;

End;

Procedure TfRepCronog1.FormActivate(Sender: TObject);
Var
   xMontAbn: Currency;
   xfCalc, xCreCuota: String;
// Inicio HPC_201503_COB
   xSQL:String;
// Fin HPC_201503_COB
Begin

   // Inicio HPC_201503_COB
   xSQL:='SELECT TO_DATE(SYSDATE)-MIN(CREFVEN) DIASTRANS '
        +'FROM CRE302 '
        +'WHERE ASOID='+ QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND CREESTID IN (''02'',''11'',''27'',''14'',''19'')';

   DM1.cdsQry26.Close;
   DM1.cdsQry26.Datarequest(xSQL);
   DM1.cdsQry26.Open;
   dbeAtraso.Text:=DM1.cdsQry26.FieldByname('DIASTRANS').AsString;
   DM1.cdsQry26.Close;
   // Fin HPC_201503_COB

   // Inicio: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO
   sImpCalifica :='N';
   // Fin: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO


   // La cuota pactada de nuevo crédito no podrá en ningún caso ser mayor q la cuota del crédito a refinanciar
   xSQL := 'SELECT CRECUOTA FROM CRE301 A '
         + ' WHERE ASOID  = ''' +DM1.cdsSolicitud.FieldByName('ASOID').AsString +''' '
         + '   AND CREDID = '''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+'''';
   DM1.cdsQry30.Close;
   DM1.cdsQry30.DataRequest( xSQL );
   DM1.cdsQry30.Open;
   nImpCuota:=DM1.cdsQry30.FieldByname('CRECUOTA').AsFloat;

   xSQL:='select a.IDEVAL, a.FECEVAL, a.IDRESEVAL, a.USUARIO, a.FREG, a.HREG, a.USUAUT, a.FECAUT, a.MENAUT, a.USUANU, '
        +'       a.FECANU, a.MENANU, a.OFDESID, a.ASOID, a.CREFOTORG, a.CREDID, a.TIPOPE, a.FORPAGOID, a.INIMES, a.CAPPAG, '
        +'       a.NUMCUO, a.MONCUO, a.NUESAL, a.MENOBS, a.IMPCAP, a.IMPINT, a.IMPREP, a.CREDNEW, a.USUCREANU, a.FECCREANU, '
        +'       a.MENCREANU, a.CREANU, a.FLG_BLOQ_REF, a.USU_BLOQ_REF, a.FREG_BLOQ_REF, ROWID '
        +'  From EVAL_REF_CAB A '
        +' where ASOID  =''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString + ''' '
        +'   AND CREDID =''' + DM1.cdsSolicitud.FieldByName('CREDID').AsString + ''' AND IDRESEVAL=''0''';
   DM1.cdsQry30.Close;
   DM1.cdsQry30.DataRequest(xSQL);
   DM1.cdsQry30.Open;

   If Not gbCab.Visible Then Exit;

   pnlReportes.Visible := False;
   If DM1.cdsQry30.RecordCount = 1 Then
   Begin

      If DM1.cdsQry30.FieldByname('IDRESEVAL').AsString = '1' Then
         pnlReportes.Visible := True;

      gbCab.Enabled := False;

      dbsNumCuotas.OnChange := Nil;

      dbeCapacidad.Text := '0.00';
      LimpiaCds('!@#$%^&*@#', '!@#$%^&*@#%#&*!');
      sOficina := DM1.cdsQry30.FieldByname('OFDESID').AsString;
      sUsuario := DM1.cdsQry30.FieldByname('USUARIO').AsString;
      DBLCTipCob.Text := DM1.cdsQry30.FieldByname('TIPOPE').AsString;
      DBLCTipC.Text := DM1.cdsQry30.FieldByname('FORPAGOID').AsString;
      mObserva.Text := DM1.cdsQry30.FieldByname('MENOBS').AsString;
      dbeCapacidad.Text := DM1.cdsQry30.FieldByname('CAPPAG').AsString;
      dbsNumCuotas.Text := DM1.cdsQry30.FieldByname('NUMCUO').AsString;
      dbeCuotas.Text := DM1.cdsQry30.FieldByname('MONCUO').AsString;
      dbeSaldo.Text := DM1.cdsQry30.FieldByname('NUESAL').AsString;
      If DM1.cdsQry30.FieldByname('INIMES').AsString = 'S' Then
         chkMesInicio.Checked := True
      Else
         chkMesInicio.Checked := False;

      xMontAbn := AbonoCuotas(DM1.cdsSolicitud.FieldByName('ASOID').AsString, DM1.cdsSolicitud.FieldByName('CREDID').AsString);
// Inicio: SPP_201302_COB
      lblCalifica.Caption:= DM1.CrgDescrip('ASOID=' + QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString) + ' AND PERIODO=' + QuotedStr(DM1.UltCartera('A')), 'CFC000', 'CFCDES_F')
                          + ' A : '+DM1.NombreMes(Copy(DM1.UltCartera('A'),5,2))+' -  '+Copy(DM1.UltCartera('A'),1,4);
// Fin: SPP_201302_COB

      dtgNotaAbono.ColumnByName('NUMPRE').FooterValue := 'Registros';
      dtgNotaAbono.ColumnByName('ANOPRE').FooterValue := FormatFloat('###,###', DM1.cdsAportes.RecordCount);

      dtgNotaAbono.ColumnByName('CREFVEN').FooterValue := 'Total : ';
      dtgNotaAbono.ColumnByName('CAPITAL').FooterValue := FormatFloat('###,###.#0', xCapital);
      dtgNotaAbono.ColumnByName('INTFLA').FooterValue := FormatFloat('###,###.#0', xIntFla);
      dtgNotaAbono.ColumnByName('ABONO').FooterValue := FormatFloat('###,###.#0', xMontAbn);
      DM1.xCnd := '1';
      xfCalc := Trim(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 7, 4) + Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 4, 2));
      xCreCuota := '1';
      lblSaldo.Caption := FormatFloat('###,###.#0', DM1.xCalSalPag(DM1.cdsSolicitud.FieldByName('ASOID').AsString, DM1.cdsSolicitud.FieldByName('CREDID').AsString, xfCalc, xCrecuota, DM1.xCnd, ''));

      If cRefi = 'A' Then
      Begin
         Caption := 'Reprogramación De Cronogramas ( Aceptar / Rechazar )';
// Inicio: SPP_201302_COB
         BitGrabar.Visible   := False;
         bitImprimir.Visible := False;

         bbtnAceptar.Visible := True;
         bbtnAceptar.Enabled := False;
         bbtnAnular.Visible  := True;
         bbtnAnular.Enabled  := False;
         gbObs.Visible       := True;
      End
      Else
      Begin
         Caption := 'Reprogramación De Cronogramas ( Elaborar )';
         BitGrabar.Visible   := False;
         bitImprimir.Visible := False;
         bbtnAceptar.Visible := False;
         bbtnAnular.Visible  := True;
         bbtnAnular.Enabled  := False;
// Fin: SPP_201302_COB
         mAproba.Visible := False;
         cbApr.Visible := False;
         mAnula.Visible := False;
         cbAnu.Visible := False;
         gbObs.Visible := True;
      End;
      // Fecha de Solicitud sea igual a Fecha del Sistema
      If DM1.cdsQry30.FieldByname('FECEVAL').AsDateTime <> DM1.FechaSys Then
      Begin
         gbCab.Enabled := False;
         pnlReportes.Enabled := False;
         gbObs.Enabled := False;
         ShowMessage('Fecha de la Solicitud es diferente a la FECHA DEL SISTEMA');
         Exit;
      End;

   End
   Else
   Begin
      Caption := 'Reprogramación De Cronogramas ( Elaborar )';
// Inicio: SPP_201302_COB
      lblCalifica.Caption:= DM1.CrgDescrip('ASOID=' + QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString) + ' AND PERIODO=' + QuotedStr(DM1.UltCartera('A')), 'CFC000', 'CFCDES_F')
                          + ' A : '+DM1.NombreMes(Copy(DM1.UltCartera('A'),5,2))+' -  '+Copy(DM1.UltCartera('A'),1,4);
// Fin: SPP_201302_COB
      dbeCapacidad.Text := '0.00';
      LimpiaCds('!@#$%^&*@#', '!@#$%^&*@#%#&*!');
      DBLCTipCob.Text := '01';
      DBLCTipC.Text := '01';
      DBLCTipCExit(Sender);
      xMontAbn := AbonoCuotas(DM1.cdsSolicitud.FieldByName('ASOID').AsString, DM1.cdsSolicitud.FieldByName('CREDID').AsString);
      dtgNotaAbono.ColumnByName('NUMPRE').FooterValue := 'Registros';
      dtgNotaAbono.ColumnByName('ANOPRE').FooterValue := FormatFloat('###,###', DM1.cdsAportes.RecordCount);
      dtgNotaAbono.ColumnByName('CREFVEN').FooterValue := 'Total : ';
      dtgNotaAbono.ColumnByName('CAPITAL').FooterValue := FormatFloat('###,###.#0', xCapital);
      dtgNotaAbono.ColumnByName('INTFLA').FooterValue := FormatFloat('###,###.#0', xIntFla);
      dtgNotaAbono.ColumnByName('ABONO').FooterValue := FormatFloat('###,###.#0', xMontAbn);
      DM1.xCnd := '1';
      xfCalc := Trim(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 7, 4) + Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 4, 2));
      xCreCuota := '1';
      lblSaldo.Caption := FormatFloat('###,###.#0', DM1.xCalSalPag(DM1.cdsSolicitud.FieldByName('ASOID').AsString, DM1.cdsSolicitud.FieldByName('CREDID').AsString, xfCalc, xCrecuota, DM1.xCnd, ''));

      bbtnAceptar.Visible := False;
      bbtnAnular.Visible := False;
      gbObs.Visible := False;
      pnlReportes.Visible := False;

      If dbeCapacidad.Visible Then dbeCapacidad.SetFocus;
   End;
End;

Procedure TfRepCronog1.dbsNumCuotasChange(Sender: TObject);
Begin
   BitCalcular.OnClick(BitCalcular);
End;

Procedure TfRepCronog1.BitLoteClick(Sender: TObject);
Var
   Boton, xCount: Integer;
   xAsoId, xCreDid, xMensaje, xConsulta, xTipo, xTipos, xCondicion, xfVenc, xEstAnt, xEstDes, xFecCalCulo, xTipPag: String;
   Year, Month, Day: Word;
   xAplicar, xSaldo, xCuota: Currency;
Begin

   xMensaje := ' ¿ Está Seguro Que Desea Generar y Grabar Esta ' + Trim(EdtForPago.Text) + ' ? ';
   Boton := Application.MessageBox(pChar(xMensaje), 'Reprogramación De Cronogramas', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin

   End;

End;

Function TfRepCronog1.AbonoCuotas_AR(xAsoId, xCreDid: String): Currency;
Var
   xfecCalculo, xSQL: String;
   xSalAbn: Currency;
Begin
   xfecCalculo := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   DM1.cdsAportes.Close;
   xSQL := 'SELECT SUBSTR(A.CREDID,11,7) AS NUMPRE,SUBSTR(A.CREDID,3,4) AS ANOPRE, ' +
      'SUBSTR(A.CREDID,7,2) AS TIPPRE,SUBSTR(A.CREDID,1,2) AS ORIOTO, ' +
      'A.CRECUOTA,CREFVEN,  ' +
      'CASE WHEN CREANO||CREMES>' + QuotedStr(Trim(xfecCalculo)) + ' THEN NVL(CREAMORT,0)-NVL(CREMTOCOB,0) ' +
      'ELSE NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END AS ABONO, ' +
      'A.CREESTADO FROM CRE302 A ' +
      'WHERE A.ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND A.CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND A.CREESTID IN (''02'',''11'',''27'') ' +
      'ORDER BY A.CREDID,A.CRECUOTA ';

   DM1.cdsAportes.DataRequest(xSQL);
   DM1.cdsAportes.Open;
   TNumericField(DM1.cdsAportes.fieldbyname('ABONO')).DisplayFormat := '###,###.#0';
   If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      xSalAbn := 0;
      DM1.cdsAportes.First;
      While Not DM1.cdsAportes.Eof Do
      Begin
         If DM1.cdsAportes.FieldByName('ABONO').AsCurrency < 0 Then DM1.cdsAportes.FieldByName('ABONO').AsCurrency := 0;
         xSalAbn := xSalAbn + DM1.cdsAportes.FieldByName('ABONO').AsCurrency;
         DM1.cdsAportes.Next;
      End;
      Result := xSalAbn;
   End
   Else
   Begin
      Result := 0;
   End;
End;

Procedure TfRepCronog1.BitPreCalculoClick(Sender: TObject);
Var
   xFlat, xGastos, xCuota, xMonDisp: Currency;
   i, xValMax, xValMin: Integer;
   xAsoId, xCreDid, xMes, xAno, xPeriodo, xCreNumCuo, xfCalc, xCreCuota: String;
   xCuotas: Integer;
   xSaldo, xMontAbn: Currency;
Begin
   If Length(dbeCapacidad.text) = 0 Then
   Begin
      ShowMessage('Debe Ingresar Capacidad de pago');
      dbeCapacidad.SetFocus;
      Exit;
   End;
   Screen.Cursor := crHourGlass;

   xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   xCreNumCuo := DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString;
   


   xMonDisp := StrToFloat(StringReplace(dbeCapacidad.Text, ',', '', [rfReplaceAll]));

   If DM1.SaldoActual(xAsoId, xCreDid, '1') = 0 Then
   Begin
      Screen.Cursor := crDefault;
      MessageDlg(' No Exite Ningun Saldo Por Refinanciar!! ', mtInformation, [mbOk], 0);
      Exit;
   End;
   If DM1.RegAplFon(xAsoid) Then
   Begin
      Screen.Cursor := crDefault;
      MessageDlg(' ASOCIADO TIENE APLICACION DE FONDO SOLIDARIO!!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.RegCuoBlq(xAsoid) Then
   Begin
      Screen.Cursor := crDefault;
      MessageDlg(' ASOCIADO TIENE CUOTAS BLOQUEADAS!!', mtError, [mbOk], 0);
      Exit;
   End;

   Screen.Cursor := crHourGlass;
// Inicio: DPP_201203_COB
   xValMax := 72; //60;
// Fin: DPP_201203_COB
   xValMin := 1;
   xGastos := 0;

   xfCalc := Trim(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 7, 4) + Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)), 4, 2));
   xCreCuota := '1';
   lblSaldo.Caption := FormatFloat('###,###.#0', DM1.xCalSalPag(xAsoid, xCreDid, xfCalc, xCrecuota, DM1.xCnd, ''));
   BitGrabar.Enabled := True;

   xMontAbn := AbonoCuotas(xAsoId, xCreDid);
   dtgNotaAbono.ColumnByName('CREFVEN').FooterValue := 'Total : ';
   dtgNotaAbono.ColumnByName('CAPITAL').FooterValue := FormatFloat('###,###.#0', xCapital);
   dtgNotaAbono.ColumnByName('INTFLA').FooterValue := FormatFloat('###,###.#0', xIntFla);
   dtgNotaAbono.ColumnByName('ABONO').FooterValue := FormatFloat('###,###.#0', xMontAbn);

   dbsNumCuotas.MinValue := 0;

   For I := xValMax Downto xValMin Do
   Begin
      xFlat := StrToFloat(FloatToStrF(xIntFla / I, ffFixed, 15, 2));
      xCuota := DM1.CalculaCuota_Ref(DM1.Valores(DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(Trim(xCreDid), 7, 2)), 'CRE110', 'POR_INT')), xGastos, xCapital, xFlat, I);
      If xCuota <= xMonDisp Then
      Begin
         dbsNumCuotas.MinValue := I;
      End
      Else
         Break;
   End;

   dbsNumCuotas.onchange := Nil;

   If dbsNumCuotas.MinValue = 0 Then
   Begin
      dbsNumCuotas.Value := 0;
      dbeSaldo.Text := '';
      dbeCuotas.Text := '';
      Screen.Cursor := crDefault;
// Inicio: SPP_201302_COB
      MessageDlg('No tiene Capacidad de Pago para realizar la Refinanciación del Crédito!!', mtError, [mbOk], 0);
// Fin: SPP_201302_COB
      Exit;
   End;

   dbsNumCuotas.Value := dbsNumCuotas.MinValue;

   xFlat := StrToFloat(FloatToStrF(xIntFla / dbsNumCuotas.Value, ffFixed, 15, 2));
   dbeCuotas.Text := FormatFloat('###,###.#0', DM1.CalculaCuota_Ref(DM1.Valores(DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(Trim(xCreDid), 7, 2)), 'CRE110', 'POR_INT')), 0, xCapital, xFlat, StrToInt(FloatToStr(dbsNumCuotas.Value))));
   If Length(Trim(dbsNumCuotas.Text)) = 0 Then dbsNumCuotas.Value := 1;
   dbeSaldo.Text := FormatFloat('###,###.#0', DM1.Valores(dbeCuotas.Text) * DM1.Valores(dbsNumCuotas.Text));
   Screen.Cursor := crDefault;
   BitGrabar.Enabled := True;
   dbsNumCuotas.onchange := dbsNumCuotasChange;
   Screen.Cursor := crDefault;
End;

Procedure TfRepCronog1.z2bbtnImprimeClick(Sender: TObject);
Var
   xInteres, xFlat, xMonto, xCuoIni, xTasEfe: Real;
   xNumCuo, Boton: Integer;
   xFecPre, xFecDes, xFecCre: tDateTime;
   xFecEval, xCad, xAsoId, xCreDid, xSQL, xTexto, xFecVen, xCreEstid, xDesEnv: String;
   xCreMto, xCreAmort, xCreInteres, xCreFlat, xTot, xSaldo: Real;
   xImprime, xImp: Boolean;
   ano, mes, dia:Word;
   // Inicio: SPP_201311_COB : 21/08/2013 - Modificar Carta de Autorización de Descuento por ONP
   xNroAutOnp : String;
   // Fin: SPP_201311_COB : 21/08/2013 - Modificar Carta de Autorización de Descuento por ONP
Begin
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   xCreDId := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   xCreEstid := DM1.cdsSolicitud.FieldByName('CREESTID').AsString;
   xFecCre := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime;
   DecodeDate(date, ano,mes,dia);
   CrgPrestamos;
   UbicaPrestamos;

   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'IMPCARAUT') = '1' Then
   Begin
      xSQL := 'SELECT ASOID,CREDID FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND AUTDESCRE IS NULL ';
      If DM1.CountReg(xSQL) = 0 Then
      Begin

         If (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
            (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) >= 2) Then
         Begin
            If DM1.cdsSolicitud.FieldByName('IMPCARAUT').AsString = '1' Then
            Begin
               Boton := Application.MessageBox('SEGURO DE AUTORIZAR LA REIMPRESION DE DOCUMENTOS', 'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
               If Boton = ID_YES Then
               Begin
                  xSQL := 'UPDATE CRE301 SET IMPCARAUT=''0'' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND IMPCARAUT=''1'' ';
                  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
               End;
            End;
         End
         Else
         Begin
            MessageDlg(' DOCUMENTOS YA FUERON IMPRESOS!!!', mtError, [mbOk], 0);
            Exit;
         End;
      End;
   End;
   If rdbContrato.Checked Then
   Begin
      xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
      If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'IMPCARAUT') = '1' Then
      Begin
         xSQL := 'SELECT ASOID,CREDID FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND AUTDESCRE IS NULL ';
         If DM1.CountReg(xSQL) = 0 Then
         Begin
            MessageDlg(' DOCUMENTOS YA FUERON IMPRESOS!!!', mtError, [mbOk], 0);
            Exit;
         End;
      End;

      lblNroCon.Caption := xCredId;
      xFecEval := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCredId)) + ' and IDRESEVAL=''1''', 'EVAL_RES_CAB', 'FECEVAL');
      lblFecEval.Caption := xFecEval;
   // se modificó visualización del Nro. de Solicitud y Crédito Anterior
      lblNroSol.Caption := DM1.cdsSolicitud.FieldByName('NUMREFI').AsString;
      pplCreAnt.Caption := DM1.cdsSolicitud.FieldByName('NUMREFI').AsString;

      lblFecEval.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;

      lblAsoApenom.Caption := DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
      lblFecOto.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
      lblOrigenN.Caption := DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(Copy(xCredId, 1, 2))), 'APO110', 'OFDESNOM');
      If chkCopia.Checked Then
         lblCopia.Visible := True
      Else
         lblCopia.Visible := False;
      lblSexo.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOSEXO');
      lblEstCiv.Caption := DM1.CrgDescrip('ESTCIVID=' + QuotedStr(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ESTCIVID'))), 'TGE125', 'ESTCIVDES');
      lblFecNac.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOFECNAC');
      lblAsoDir.Caption := DM1.cdsAso.FieldByName('ASODIR').AsString;
      lblDNIN.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASODNI');
      lblDep.Caption := DM1.CrgDescrip('DPTOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('DPTOID').AsString)), 'APO158', 'DPTODES');
      lblProv.Caption := DM1.CrgDescrip('DPTOID||CIUDID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('CIUDID').AsString)), 'TGE121', 'CIUDABR');
      lblDist.Caption := DM1.CrgDescrip('ZIPID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ZIPID').AsString)), 'APO122', 'ZIPABR');
      lblCodModN.Caption := DM1.cdsSolicitud.FieldByName('ASOCODMOD').AsString;
      lblTipAsoN.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTIPID') + ' - ' + DM1.CrgDescrip('ASOTIPID=' + QuotedStr(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTIPID'))), 'APO107', 'ASOTIPDES');
      lblCtaAho.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASONCTA') + ' - ' + DM1.CrgDescrip('SITCTAID=' + QuotedStr(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'SITCTA')), 'COB103', 'SITCTADES');
      lblTipPre.Caption := DM1.cdsSolicitud.FieldByName('TIPCREDES').AsString;
      // Inicio HPC_201503_COB
      lblTasEfeAnnual.Caption:=DM1.FormatoNumeros(FloatToStr(RoundTo((Power(1 + DM1.TIR(DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat,DM1.cdsSolicitud.FieldByName('CRECUOTA').AsFloat,DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger),12)-1)*100,-2)))+' %';
      // Fin HPC_201503_COB

   // reporte Hoja Resumen
      xSQL:='SELECT CREDOCPAG, FORPAGABR, NVL(SUM( CREMTOCOB ),0) SALREF '
           +'FROM CRE310 WHERE ASOID='+ QuotedStr(Trim(xAsoId)) +' and CREDID='+QuotedStr(DM1.cdsSolicitud.FieldByName('NUMREFI').AsString)
           +' AND CREESTID=''12'' '
           +'GROUP BY CREDOCPAG, FORPAGABR';
      DM1.cdsQry30.Close;
      DM1.cdsQry30.DataRequest( xSQL );
      DM1.cdsQry30.Open;
      lblNotaAbn.Caption := DM1.FormatoNumeros(DM1.cdsQry30.FieldByname('SALREF').AsString);
      pplFPago.Caption   := DM1.cdsQry30.FieldByname('FORPAGABR').AsString;
      pplDocPag.Caption  := DM1.cdsQry30.FieldByname('CREDOCPAG').AsString;
      pplTotDes.Caption :=DM1.FormatoNumeros(Trim(FloatToStr(DM1.cdsSoliRefi.FieldByname('DEUDATOT').AsFloat)));
      MstProCob(xAsoId, lblNroSol.Caption);
      xInteres := DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat;
      xFlat := DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat;
      xMonto := DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat;
      xCuoIni := DM1.cdsSolicitud.FieldByName('CUOTAINI').AsFloat;
      xNumCuo := DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger;
      xFecPre := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime;
      xFecDes := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime;
      xDesEnv := DM1.cdsSolicitud.FieldByName('DESCENV').AsString;
      GnrCronograma_Tmp(xAsoid, xCreDid, xDesEnv, xInteres, xFlat, xMonto - xCuoIni, xFecDes, xNumCuo);
      cdsCronograma.First;
      xCreMto := 0;
      xCreAmort := 0;
      xCreInteres := 0;
      xCreFlat := 0;
      While Not cdsCronograma.Eof Do
      Begin
         xCreMto := xCreMto + cdsCronograma.FieldByname('CREMTO').AsFloat;
         xCreAmort := xCreAmort + cdsCronograma.FieldByname('CREAMORT').AsFloat;
         xCreInteres := xCreInteres + cdsCronograma.FieldByname('CREINTERES').AsFloat;
         xCreFlat := xCreFlat + cdsCronograma.FieldByname('CREFLAT').AsFloat;
         cdsCronograma.Next;
      End;
      lblTotInt.Caption := DM1.FormatoNumeros(FloatToStr(xCreInteres));
      lblTotGas.Caption := DM1.FormatoNumeros(FloatToStr(xCreFlat));
      lblTasIntN.Caption := Trim(DM1.cdsSolicitud.FieldByName('CREINTERES').AsString) + ' %';

      cdsCronograma.Close;

      lblMonOto.Caption := DM1.FormatoNumeros(DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsString);
      lblSalTot.Caption := DM1.FormatoNumeros(FloatToStr(DM1.cdsSolicitud.FieldByName('CRECUOTA').AsFloat * DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger));
      lblCuota.Caption := Trim(DM1.cdsSolicitud.FieldByName('CRECUOTA').AsString);
      lblNumCuo.Caption := Trim(DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString);
      lblFecIni.Caption := DM1.FechasCrono(xAsoId, DM1.cdsSolicitud.FieldByName('CREDID').AsString, 'INI');

   // reporte Contrato de Refinanciación
      xTot := Int(DM1.Valores(lblSalTot.Caption));
      lblNumLetra.Caption := 'Son (' + trim(DM1.xIntToLletras(StrToInt(FloatToStr(xTot)), (DM1.Valores(lblSalTot.Caption)))) + ')';
      If Length(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND IDEVAL=' + QuotedStr(Trim(lblNroSol.Caption)), 'EVAL_SAL_CRE_CAB', 'ASOID'))) > 0 Then
      Begin

      End;

      xSQL := 'Select IDEVAL, USUAUT, FECAUT, HREG From EVAL_REF_CAB '
         + 'where ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDNEW=' + QuotedStr(Trim(xCredId)) + ' and IDRESEVAL=''1''';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;
      lblUsuarioC.Caption := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('USUARIO').AsString)), 'TGE006', 'USERNOM') + ' - ' + Copy(DM1.cdsQry2.FieldByName('HREG').AsString, 12, 8);
      lblAutorizadoC.Caption := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.cdsQry2.FieldByName('USUAUT').AsString)), 'TGE006', 'USERNOM') + ' - ' + Copy(DM1.cdsQry2.FieldByName('FECAUT').AsString, 12, 8);
      xSQL := 'UPDATE CRE301 SET IMPCON=''S'' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      rpContratoN.Print;
      rpContratoN.Cancel;
      xImprime := True;
      Case DM1.cdsSolicitud.FieldByName('CREESTID').AsInteger Of
         04: xImprime := False;
         13: xImprime := False;
      End;
      If xImprime Then
      Begin
         If DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString = '16' Then
         Begin
            lblAsoCG.Caption := DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
            lblDniCG.Caption := DM1.cdsSolicitud.FieldByName('ASODNI').AsString;
            lblNroCG.Caption := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
            lblMonCG.Caption := FormatFloat('##,###.00', DM1.cdsSolicitud.FieldByName('CREMTOGIR').AsFloat);
            lblRucDni.Caption := DM1.cdsSolicitud.FieldByName('DNIRUC').AsString;
            CodBarCG.Text := DM1.cdsSolicitud.FieldByName('DNIRUC').AsString;
            lblFechaCG.Caption := DM1.cdsSolicitud.FieldByName('FECAUTCRE').AsString;
            lblDatosUser.Caption := 'F.Impresión : ' + FechaHora + '/ ' + DM1.wUsuario + ' /' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(DM1.xOfiDes)), 'APO110', 'OFDESNOM') + ' / N°Crédito : ' + DM1.cdsSolicitud.FieldByName('CREDID').AsString;
            If chkCopia.Checked Then
               lblCopia02.Visible := True
            Else
               lblCopia02.Visible := False;
            rpCheGer.Print;
            rpCheGer.Stop;
         End;
      End;
      If Length(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'FECIMPCON'))) = 0 Then
      Begin
         xSQL := 'UPDATE CRE301 SET FECIMPCON=SYSDATE WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid));
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'IMPCARAUT') = '0' Then
      Begin
         Boton := Application.MessageBox('SEGURO QUE REIMPRIMIO LOS DOCUMENTOS NECESARIOS, DESEA TERMINAR ', 'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
         If Boton = ID_YES Then
         Begin
            xSQL := 'UPDATE CRE301 SET IMPCARAUT=''1'' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND IMPCARAUT=''0'' ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;
      End;

      // Inicio: SPP_201308_COB  27/05/2013  : Imprimir carta de Autorización de Descuento por ONP
      If (DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'REGPENID')='02') And
         (DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTIPID')='CE') Then
      Begin

         // Inicio: SPP_201311_COB : 21/08/2013 - Modificar Carta de Autorización de Descuento por ONP
         xNroAutOnp:='';
         If Length(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'NUMAUTONP')))=0 Then
         Begin
            xNroAutOnp:=DM1.GrbCorrelativoONP;
            xSQL:='UPDATE APO201 SET NUMAUTONP='+QuotedStr(xNroAutOnp)+' WHERE ASOID='+QuotedStr(xAsoId);
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;

         lblAsoOnp.Caption:=DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
         lblDniOnp.Caption:=DM1.cdsSolicitud.FieldByName('ASODNI').AsString;
         //lblMontoOnp.Caption:=FormatFloat('##,##0.#0', xMonto);
         //xTot := Int(xMonto);
         //lblletrasOnp.Caption := 'Son: ' + Trim(DM1.xIntToLletras(StrToInt(FloatToStr(xTot)), xMonto)) ;
         //lblPlazoOnp.Caption:=IntToStr(xNumCuo);
         //lblCuotaOnp.Caption:=FormatFloat('##,##0.#0', DM1.cdsSolicitud.FieldByName('CRECUOTA').AsFloat);
         // Fin: SPP_201311_COB : 21/08/2013 - Modificar Carta de Autorización de Descuento por ONP

         lblNumCarOnp.Caption:=DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), 'APO201', 'NUMAUTONP');
         lblFecCarOnp.Caption:=DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;


         lblCodPenOnp.Caption:=DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'CODPENSION');
         lblRegSolOnp.Caption:='';

         // Inicio: HPC_201613_COB
         // Se añade descripción de la prestación en el reporte "CARTA DE AUTORIZACION DE DESCUENTO A TRAVÉS DE ONP".
         xSql := 'SELECT B.DESPRE FROM APO201 A, ASO_COD_PRE_MAE B WHERE A.ASOID = '+QuotedStr(xAsoId)+' AND A.CODPRE = B.CODPRE(+)';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         lblDesPreONP.Caption := DM1.cdsQry.FieldByName('DESPRE').AsString;
         // Fin: HPC_201613_COB

         ppCartaONP.Print;
         ppCartaONP.Stop;
      End;
      // Fin: SPP_201308_COB  27/05/2013  : Imprimir carta de Autorización de Descuento por ONP

   End;
   If rdbPagare.Checked Then
   Begin
      Case DM1.cdsSolicitud.FieldByName('CREESTID').AsInteger Of
         13:
            Begin
               MessageDlg('NO SE PUEDE IMPRIMIR DOCUMENTO, CREDITO ANULADO!!!', mtError, [mbOk], 0);
               Exit;
            End;
      End;

      xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
      If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'IMPCARAUT') = '1' Then
      Begin
         xSQL := 'SELECT ASOID,CREDID FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND AUTDESCRE IS NULL ';
         If DM1.CountReg(xSQL) = 0 Then
         Begin
            MessageDlg(' DOCUMENTOS YA FUERON IMPRESOS!!!', mtError, [mbOk], 0);
            Exit;
         End;
      End;
      If chkCopia.Checked Then
         lblCopia.Visible := True
      Else
         lblCopia.Visible := False;
      lblNombres.Caption := DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
      lblAsoDni.Caption := DM1.cdsSolicitud.FieldByName('ASODNI').AsString;
      lblNombresC.Caption := DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
      lblAsoDniC.Caption := DM1.cdsSolicitud.FieldByName('ASODNI').AsString;
      lblCreDid.Caption := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
      lblAsoDnia.Caption := lblAsoDni.Caption;
      lblNombresa.Caption := lblNombres.Caption;
      lblFechaCarta.Caption := 'Lima,  ' + FormatDateTime('d "de" mmmm "del" yyyy', now);
      lblDirReg01.Caption := DM1.CrgDescrip('USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString)), 'APO101', 'USENOM');
      lblDirReg02.Caption := lblDirReg01.Caption;
      lblDirReg03.Caption := lblDirReg02.Caption;
      lblDirReg04.Caption := lblDirReg03.Caption;
      lblDirReg06.Caption := lblDirReg04.Caption;
      lblCargo.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'CARGO');
      lblDireccion.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASODIR');
      lblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTELF1');
      lblMonto.Caption := MontoPendiente(xAsoId, xCreDid);
      lblMontoC.Caption := MontoPendiente(xAsoId, xCreDid);
      lblMonCuo.Caption := CuotasPendiente(xAsoId, xCreDid);
      lblPlazo.Caption := MaximoPlazo(xAsoId, xCreDid);
      lblPlazoC.Caption := MaximoPlazo(xAsoId, xCreDid);
      xTot := Int(DM1.Valores(lblMonto.Caption));
      lblNunLetras.Caption := trim(DM1.xIntToLletras(StrToInt(FloatToStr(xTot)), (DM1.Valores(lblMonto.Caption))));
      lblDatosUser.Caption := 'F.Impresión : ' + FechaHora + '/ ' + DM1.wUsuario + ' /' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(DM1.xOfiDes)), 'APO110', 'OFDESNOM') + ' / N°Crédito : ' + DM1.cdsSolicitud.FieldByName('CREDID').AsString;
      If DM1.Valores(MontoPendiente(xAsoId, xCreDid)) > 0 Then
      Begin
         xSQL := 'SELECT ASOID,CREDID FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND NVL(IMPCARAUT,''0'')=''0'' ';
         If DM1.CountReg(xSQL) > 0 Then
         Begin
            rpPagare.Print;
            rpPagare.Cancel;
            If xFecCre = DM1.FechaSys Then
            Begin
               If Length(Trim(DM1.cdsSolicitud.FieldByName('NROCARAUT').AsString)) = 0 Then
               Begin
                  xSQL := 'UPDATE CRE301 SET NROCARAUT=' + IntToStr(NumerodeCarta(xAsoId)) + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid);
                  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
               End;
            End;
            lblNumCar.Caption := 'N°Carta : ' + DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCredId)), 'CRE301', 'NROCARAUT');

//Inicio HPC_201711_COB
//Cambio de Formato de Solicitud de Descuento por Planilla
//          rpCartaAutDes.Print;
//          rpCartaAutDes.Cancel;
            LlenaDatosPlaUniPag(xAsoId,xCreDid);
            pprPlaAutDesUni.Print;
            pprPlaAutDesUni.Cancel;
//Final HPC_201711_COB

            Boton := Application.MessageBox('Está Seguro De Haber Colocado EL FORMATO DE CONTRATO IMPRESO CORRECTAMENTE ', 'Sistema De Creditos', MB_YESNO + MB_ICONQUESTION);
            If Boton = ID_YES Then
            Begin
               lblNCredito.Caption := Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 7, 2) + '-' + Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 11, 5) + '-' + Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 3, 4);
               lblNombreAso.Caption := DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
               lblDNI2.Caption := DM1.cdsSolicitud.FieldByName('ASODNI').AsString;
               lblFecOtor.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
               lblGerente.Caption := DM1.CrgDescrip('OCUPID=''042'' AND CIAID=''01'' ', 'RRHH201', 'TRABNOMT');
               lblDniGer.Caption := DM1.CrgDescrip('OCUPID=''042'' AND CIAID=''01'' ', 'RRHH201', 'TRABLE');
               lblDirTitular.Caption := Trim(DM1.cdsAso.FieldByName('ASODIR').AsString);
               lblAval.Caption := '';
               lblDNIAval.Caption := '';
               ppTitCCred.Print;
               ppTitCCred.Stop;
            End;

            If Length(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'USUAUTDES'))) = 0 Then
            Begin
               Boton := Application.MessageBox('Confirme, si el docente firmó : ' + #13 + 'CARTA DE AUTORIZACION DE DESCUENTO POR PLANILLA,' + #13 + ' SU CONFIRMACION INDICARA QUE TODOS LOS DOCUMENTOS HAN SIDO IMPRESOS Y FIRMADOS', 'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
               If Boton = ID_YES Then
               Begin
                  xSQL := 'UPDATE CRE301 SET IMPCARAUT=''1'',AUTDESCRE=' + QuotedStr('S') + ',FECAUTDES=SYSDATE,USUAUTDES=' + QuotedStr(DM1.wUsuario) + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND AUTDESCRE IS NULL ';
                  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
               End;
            End;

         End;
      End;
      If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'IMPCARAUT') = '0' Then
      Begin
         Boton := Application.MessageBox('SEGURO QUE REIMPRIMIO LOS DOCUMENTOS NECESARIOS, DESEA TERMINAR ', 'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
         If Boton = ID_YES Then
         Begin
            xSQL := 'UPDATE CRE301 SET IMPCARAUT=''1'' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND IMPCARAUT=''0'' ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;
      End;
   End;
   If rdbHoja.Checked Then
   Begin
      Case DM1.cdsSolicitud.FieldByName('CREESTID').AsInteger Of
         13:
            Begin
               MessageDlg('NO SE PUEDE IMPRIMIR DOCUMENTO, CREDITO ANULADO!!!', mtError, [mbOk], 0);
               Exit;
            End;
      End;
      xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
      xCredId := DM1.cdsSolicitud.FieldByName('CREDID').AsString;

      If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'IMPCARAUT') = '1' Then
      Begin
         xSQL := 'SELECT ASOID,CREDID FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND AUTDESCRE IS NULL ';
         If DM1.CountReg(xSQL) = 0 Then
         Begin
            MessageDlg(' DOCUMENTOS YA FUERON IMPRESOS!!!', mtError, [mbOk], 0);
            Exit;
         End;
      End;
      Screen.Cursor := crHourGlass;
      xTexto := '';
      mDat01.Text := '';
      lblNomGen.Caption := DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
      lblDni.Caption := DM1.cdsSolicitud.FieldByName('ASODNI').AsString;
      lblFecCre.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
      lblTipCre.Caption := DM1.CrgDescrip('TIPCREID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)), 'CRE110', 'TIPCREDES');
      If DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString = 'DO' Then
      Else
         If DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString = 'CE' Then
            If chkCopia.Checked Then
               lblCopia01.Visible := True
            Else
               lblCopia01.Visible := False;
      lblMonto.Caption := FormatFloat('###,##0.#0', DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
      lblPlazo.Caption := FormatFloat('###', DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger);

      xTasEfe := (Power((1 + DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat / 100), 12) - 1) * 100;
      lblTasEfe.Caption := FormatFloat('###,##0.#0', xTasEfe) + ' %';
      lblTipDes.Caption := DM1.CrgDescrip('TIPDESEID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString)), 'CRE104', 'TIPDESEABR');
      lblFrmDes.Caption := DM1.CrgDescrip('FORPAGOID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString)), 'COB101', 'FORPAGODES');
      // Inicio HPC_201503_COB
      lblTasEfeAnu.Caption:=DM1.FormatoNumeros(FloatToStr(RoundTo((Power(1 + DM1.TIR(DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat,DM1.cdsSolicitud.FieldByName('CRECUOTA').AsFloat,DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger),12)-1)*100,-2)))+' %';
      // Fin HPC_201503_COB
      xSQL := 'SELECT ASOID,CREDID,CREINTERES,CREDFLAT,CREMTOOTOR,CUOTAINI,CRENUMCUO,CREFOTORG,DESCENV FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid);
      DM1.cdsListaCred.Close;
      DM1.cdsListaCred.DataRequest(xSQL);
      DM1.cdsListaCred.Open;
      If DM1.cdsListaCred.RecordCount > 0 Then
      Begin
         xAsoId := DM1.cdsListaCred.FieldByName('ASOID').AsString;
         xCredid := DM1.cdsListaCred.FieldByName('CREDID').AsString;
         xInteres := DM1.cdsListaCred.FieldByName('CREINTERES').AsFloat;
         xFlat := DM1.cdsListaCred.FieldByName('CREDFLAT').AsFloat;
         xMonto := DM1.cdsListaCred.FieldByName('CREMTOOTOR').AsFloat;
         xCuoIni := DM1.cdsListaCred.FieldByName('CUOTAINI').AsFloat;
         xNumCuo := DM1.cdsListaCred.FieldByName('CRENUMCUO').AsInteger;
         xFecPre := DM1.cdsListaCred.FieldByName('CREFOTORG').AsDateTime;
         xFecDes := DM1.cdsListaCred.FieldByName('CREFOTORG').AsDateTime;
         xDesEnv := DM1.cdsListaCred.FieldByName('DESCENV').AsString;
         GnrCronograma_Tmp(xAsoid, xCreDid, xDesEnv, xInteres, xFlat, xMonto - xCuoIni, xFecDes, xNumCuo);
      End;
      cdsCronograma.First;

      lblTasGas.Caption := 'S/.' + FormatFloat('###,##0.#0', cdsCronograma.FieldByname('CREFLAT').AsFloat);
      // Inicio HPC_201503_COB
      xCreMto := 0;
      xCreAmort := 0;
      xCreInteres := 0;
      xCreFlat := 0;
      mDat01.Lines.Add('');
      While Not cdsCronograma.Eof Do
      Begin
         xFecVen := Copy(cdsCronograma.FieldByname('CREFVEN').AsString, 1, 2) + '/' + Copy(cdsCronograma.FieldByname('CREFVEN').AsString, 4, 2) + '/' + Copy(cdsCronograma.FieldByname('CREFVEN').AsString, 9, 2);
         xTexto := DM1.StrSpace(FormatFloat('##', cdsCronograma.FieldByName('CRECUOTA').AsInteger), 2) + ' ' + xFecVen + ' ' + DM1.StrSpace(FormatFloat('##,##0.#0', cdsCronograma.FieldByname('CREMTO').AsFloat), 8) + ' ' + DM1.StrSpace(FormatFloat('##,##0.#0', cdsCronograma.FieldByname('CREAMORT').AsFloat), 9) + ' ' + DM1.StrSpace(FormatFloat('##,##0.#0', cdsCronograma.FieldByname('CREINTERES').AsFloat), 8) + ' ' + DM1.StrSpace(FormatFloat('##,##0.#0', cdsCronograma.FieldByname('CREFLAT').AsFloat), 8);
         xCreMto := xCreMto + cdsCronograma.FieldByname('CREMTO').AsFloat;
         xCreAmort := xCreAmort + cdsCronograma.FieldByname('CREAMORT').AsFloat;
         xCreInteres := xCreInteres + cdsCronograma.FieldByname('CREINTERES').AsFloat;
         xCreFlat := xCreFlat + cdsCronograma.FieldByname('CREFLAT').AsFloat;
         mDat01.Lines.Add(xTexto);
         cdsCronograma.Next;
      End;
      mDat01.Lines.Add('________________________________________________');
      xTexto := ' ' + ' ' + 'TOTAL :  ' + DM1.StrSpace(FormatFloat('###,##0.#0', xCreMto), 9) + ' ' + DM1.StrSpace(FormatFloat('##,##0.#0', xCreAmort), 9) + ' ' + DM1.StrSpace(FormatFloat('##,##0.#0', xCreInteres), 8) + ' ' + DM1.StrSpace(FormatFloat('##,##0.#0', xCreFlat), 8);
      mDat01.Lines.Add(xTexto);
      lblNumCredito.Caption := DM1.cdsSolicitud.FieldByName('TIPCREID').AsString + '-' + Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 11, 5) + '-' + Copy(DateToStr(xFecPre), 7, 4);
      // Fin HPC_201503_COB
      Screen.Cursor := crDefault;
      If chkCopia.Checked Then
         lblCopia01.Visible := True
      Else
         lblCopia01.Visible := False;
      ppHojRes.Print;
      ppHojRes.Stop;

      If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'IMPCARAUT') = '0' Then
      Begin
         Boton := Application.MessageBox('SEGURO QUE REIMPRIMIO LOS DOCUMENTOS NECESARIOS, DESEA TERMINAR ', 'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
         If Boton = ID_YES Then
         Begin
            xSQL := 'UPDATE CRE301 SET IMPCARAUT=''1'' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') AND IMPCARAUT=''0'' ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;
      End;
   End;
   // radio Button "Declaración Jurada"
   If rdbDecJur.Checked = True Then
   Begin
     pplAsoApeNomDni.Caption := 'Yo, '+DM1.cdsSoliRefi.FieldByName('ASOAPENOM').AsString;
     pplAsoDni.Caption := 'Identificado(a) con DNI Nº '+DM1.cdsSoliRefi.FieldByName('ASODNI').AsString
     +' en mi calidad de DOCENTE (Marque su condición actual con un aspa (X))';
     pplFecha.Caption := 'Jesús María, '+IntToStr(dia)+' de '+DM1.DesMes(mes, 'N')+' del '+IntToStr(ano);
     rpDeclaracionJurada.Print;
     rpDeclaracionJurada.Stop;
   End;
End;

Procedure TfRepCronog1.MstProCob(xAsoId, xIdEval: String);
Var
   xSQL, xCad: String;
   xSaldo: Double;
Begin
   mCuotasProceso.Lines.Text := '';
   xSaldo := 0;
   xSQL := 'SELECT SUBSTR(CREDID,7,2)||''-''||SUBSTR(CREDID,11,5)||''-''||SUBSTR(CREDID,3,4) NUMERO,CREFVEN,CRECUOTA, ' +
      'CREDID,NVL(CREMTO,0)-NVL(CREMTOCOB,0) MONPRO FROM EVAL_CUO_PRO_COB WHERE ASOID=' + QuotedStr(xAsoId) + ' AND IDEVAL=' + QuotedStr(xIdEval) + ' ORDER BY CRECUOTA ';
   DM1.cdsQry30.Close;
   DM1.cdsQry30.DataRequest(xSQL);
   DM1.cdsQry30.Open;
   If DM1.cdsQry30.RecordCount > 0 Then
   Begin
      DM1.cdsQry30.First;
      While Not DM1.cdsQry30.Eof Do
      Begin
         xSaldo := xSaldo + DM1.cdsQry30.FieldByName('MONPRO').AsFloat;
         xCad := DM1.cdsQry30.FieldByName('NUMERO').AsString + '  ' + DM1.cdsQry30.FieldByName('CREFVEN').AsString + '   S/. ' + DM1.StrSpace(FormatFloat('##,###.00', DM1.cdsQry30.FieldByName('MONPRO').AsFloat), 8);
         mCuotasProceso.Lines.Add(xCad);
         DM1.cdsQry30.Next;
      End;
      mCuotasProceso.Lines.Add('');
      mCuotasProceso.Lines.Add('');
      mCuotasProceso.Lines.Add('Total                       S/. ' + DM1.StrSpace(FormatFloat('##,###.00', xSaldo), 8));
   End;
   DM1.cdsQry30.Close;
End;

Procedure TfRepCronog1.GnrCronograma_Tmp(xAsoid, xCredId, xDesEnv: String; xTas_Int, xTas_Flt, xMonOto: Real; xFec_Pre: tDateTime; xNumCuo: Integer);
Var
   i, xDiasMesAct, j: Integer;
   xMon_Cuo, cNumer, cDenom, sFlt_Pag, xSal_Pag: Real;
   xMon_Aux, xAmo_Pag, xInt_Pag, xGas_Pag, s, r: Real;
   sMon_Cuo, sAmo_Pag, sInt_Pag, sGas_Pag: Real;
   xFec_Ven: tDateTime;
   tMes, tAno, xMes, xAno: Integer;
   tDia, xDia, xPrdGra: String;
   xCuota, xIntIni: Double;
Begin
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   xCreDId := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,' +
      'CRECUOTA,CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN,CREFVENINI, CREFPAG, USEID, UPROID, DPTOID,   ' +
      'UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT,      ' +
      'USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL,       ' +
      'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR,           ' +
      'CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, CIAID, CREESTID, CREESTADO,FLGINT,                  ' +
      'CREMTOGADM, ASOCODAUX, NRONABO, CIUDID, FLGPAG,CREDIDNABO, CREMTOEXC, AREAID,CREDOCPAG     ' +
      'FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid))
      +' Order By CREDID,CRECUOTA';
   cdsCronograma.Close;
   cdsCronograma.DataRequest(xSQL);
   cdsCronograma.Open;

   xMon_Aux := xMonOto;
   xSal_Pag := xMonOto;

End;

Function TfRepCronog1.CalificarAsociado(xDias: Integer; xMst: Char): String;
Var
   xSQL, xCalDes: String;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT RESUMEABR,RESUMEDES FROM COB914 WHERE DIASINI<=' + IntToStr(xDias) + ' AND DIASFIN>=' + IntToStr(xDias);
   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   Screen.Cursor := crDefault;
   If xMst = 'R' Then
      xCalDes := DM1.cdsProvin.FieldByName('RESUMEABR').AsString
   Else
      xCalDes := DM1.cdsProvin.FieldByName('RESUMEABR').AsString;
   DM1.cdsProvin.Close;
   Result := xCalDes;
End;
Function TfRepCronog1.FechaHora: String;
Var
   xFechaHora: String;
Begin
   DM1.cdsQry30.Close;
   DM1.cdsQry30.DataRequest('SELECT SYSDATE FROM DUAL');
   DM1.cdsQry30.Open;
   xFechaHora := DM1.cdsQry30.FieldByName('SYSDATE').AsString;
   DM1.cdsQry30.Close;
   Result := xFechaHora;
End;

Function TfRepCronog1.MontoPendiente(xAsoId, xCreDid: String): String;
Var
   xSQL: String;
Begin
   Result := '0.00';
   xSQL := 'SELECT nvl(SUM(CREMTOOTOR),0) MONTO FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') ';
   DM1.cdsQry30.Close;
   DM1.cdsQry30.DataRequest(xSQL);
   DM1.cdsQry30.Open;
   Result := DM1.FormatoNumeros(DM1.cdsQry30.FieldByName('MONTO').AsString);
   DM1.cdsQry30.Close;
End;

Function TfRepCronog1.CuotasPendiente(xAsoId, xCreDid: String): String;
Begin
   Result := '0.00';
   xSQL := 'SELECT nvl(SUM(CRECUOTA),0) CUOTA FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') ';
   DM1.cdsQry30.Close;
   DM1.cdsQry30.DataRequest(xSQL);
   DM1.cdsQry30.Open;
   Result := DM1.FormatoNumeros(DM1.cdsQry30.FieldByName('CUOTA').AsString);
   DM1.cdsQry30.Close;
End;

Function TfRepCronog1.MaximoPlazo(xAsoId, xCreDid: String): String;
Begin
   Result := '0';
   xSQL := 'SELECT MAX(CRENUMCUO) PLAZO FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''01'',''02'') ';
   DM1.cdsQry30.Close;
   DM1.cdsQry30.DataRequest(xSQL);
   DM1.cdsQry30.Open;
   Result := DM1.cdsQry30.FieldByName('PLAZO').AsString;
   DM1.cdsQry30.Close;
End;

Function TfRepCronog1.NumerodeCarta(xAsoId: String): Integer;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT SUM(NVL(NROCARAUT,0)) NROCARAUT FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID IN (''04'',''13'') ';
   DM1.cdsCViv.Close;
   DM1.cdsCViv.DataRequest(xSQL);
   DM1.cdsCViv.Open;
   Result := DM1.cdsCViv.FieldByName('NROCARAUT').AsInteger + 1;
   DM1.cdsCViv.Close;
End;

Function TfRepCronog1.UltimoDia(xMes, xAno: Integer): String;
Var
   xDia: String;
Const
   FinDia: Array[1..13] Of String = ('31', '28', '31', '30', '31', '30', '31', '31', '30', '31', '30', '31', '29');
Begin
   If xAno Mod 4 = 0 Then
   Begin
      If xMes = 2 Then
         xMes := 13;
   End;
   Result := FinDia[xMes];
End;

Procedure TfRepCronog1.CrgPrestamos;
Var
   xAsoId: String;
   xSQL : String;
Begin
   // LimPrestamos;
   xAsoId := Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
   xSQL:='SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES, '
        +'       a.TIPCREID, a.ASOID, a.ASOCODMOD, a.ASOCODPAGO, a.ASOAPENOM, a.USEID, a.CREFOTORG, a.CREFECINI, '
        +'       a.CREMTOSOL, a.CREMTOOTOR, a.CREMTOGIR, a.CREINTERES, a.CREDFLAT, a.CRECUOTA, a.CRENUMCUO, '
        +'       a.CRELUGGIRO, a.BANCOID, a.CRENUMCTA, a.CREMTOPAG, a.CRESDOACT, a.CREPERGRA, a.CRECUOPAG, '
        +'       a.CRECUOENV, a.CREPERIODI, a.CREMTOTAL, a.CRECAPPGO, a.CRENEWID, a.CRESALDOT, a.USUARIO, a.FREG, a.HREG, '
        +'       a.OFDESID, a.CALIFICAID, a.APRUEBAID, a.CREESTADO, a.TMONID, a.CUOTAINI, a.UPAGOID, a.UPROID, a.DPTOID, '
        +'       a.LISTAID, a.CREDID, a.CRECOM, a.CRESEG, a.CREPOR, a.CREGADM, a.CRECOMP, a.CREMORA, a.FORPAGOID, a.CRETCALID,'
        +'       a.TMONABR, a.CRETCALABR, a.LISTAABR, a.FORPAGOABR, a.CIAID, a.CREFRECL, a.CREESTID, a.CREANOMES, a.NROPAGARE,'
        +'       a.NROAUTDES, a.TIPCREDES, a.GARAPENOM, a.GARASOID, a.ASOCODAUX, a.NRONABO, a.NUMREF, a.FECREF, a.TIPOREF, '
        +'       a.NROFICIO, a.CIUDID, a.ARCHIVOFTP, a.AGENBANCOID, a.DPTOGIRO, a.USEIDGAR, a.TIPDESEID, a.BCOGIRO, '
        +'       a.CREMTONABO, a.CREFFINPAG, a.CREFINIPAG, a.CREBLOQFEC, a.USUBLOQ, a.CREBLOQ, a.FLGCAJA, a.FECHACAJA, '
        +'       a.CRENUMCOMP, a.CCOSID, a.CUENTAH, a.CUENTAD, a.CREGENCOB, a.FLGAUTOMA, a.REFANOMES, a.NROREFINAN, a.CAJAUSU,'
        +'       a.HORACAJA, a.ASOTIPID, a.ASODNI, a.ANULACAJA, a.MEN_ANU, a.MOT_PRE, a.NUMREFI, a.FLGREFI, a.CREFCAN, '
        +'       a.FLGINCONSIS, a.PERCONTA, a.C_ABN, a.CNTANOMM, a.FEC_RCP, a.CRECAPLIQ, a.CREFDES, a.CREMENOBS, a.TIPOCONT,'
        +'       a.CNTFLAG, a.CREMTODEP, a.CREFANUL, a.USERANUL, a.CRESUMCUO, a.CREMOTEXT, a.NROFICIO_BCK, a.MIGRADO, '
        +'       a.USUAUTCRE, a.FECAUTCRE, a.ESTAUTCRE, a.COMAUTCRE, a.USUANUSUP, a.FECANUSUP, a.MOTANUSUP, a.ESTANUSUP, '
        +'       a.DOCID, a.CCSERIE, a.CCNODOC, a.CIASER, a.CREMONINS, a.IMPCON, a.DNIRUC, a.FECIMPCON, a.CODARCHIVO, '
        +'       a.CREMTOAPO, a.AUTDESCRE, a.FECAUTDES, a.USUAUTDES, a.IMPCARAUT, a.NROCARAUT, a.DIASPROC, a.DESCENV, '
        +'       a.AUTDESGES, a.USUDESGES, a.FECHORDESGES '
        +'  FROM CRE301 a, CRE110 b '
        +' WHERE a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId))
        +' ORDER By a.CREFOTORG ';
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest( xSQL );
   DM1.cdsSolicitud.Open;
   If DM1.cdsSolicitud.RecordCount > 0 Then DM1.cdsSolicitud.Last;
End;

Procedure TfRepCronog1.UbicaPrestamos;
Var
   xAsoId: String;
Begin
   DM1.cdsSolicitud.First;
   While Not DM1.cdsSolicitud.Eof Do
   Begin
      If xCreditoIdRef = DM1.cdsSolicitud.FieldByname('CREDID').AsString Then
      Begin
         Exit;
      End;
      DM1.cdsSolicitud.Next;
   End;
End;

Procedure TfRepCronog1.dbeCapacidadExit(Sender: TObject);
Begin
   dbeCapacidad.Text := FormatFloat('###,###.#0', dm1.Valores(dbeCapacidad.Text));
End;

Procedure TfRepCronog1.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End

End;

Procedure TfRepCronog1.bbtnAceptarClick(Sender: TObject);
Var
   Boton: Integer;
   xAsoId, xCreDid, xMensaje, xYear, xConsulta, xTipo, xTipos, xCondicion, xSQL, xfVenc, xEstAnt, xEstDes, xFecCalCulo, xTipPag, xMens: String;
   Year, Month, Day: Word;
   xAplicar, xSaldo, xCuota, xAmoPag, xIntPag, xGasPag: Currency;
Begin
   // DESCRIPCION: bloquea solicitud de refinanciado para evitar la doble concurrencia
   xSQL:='SELECT ASOID, IDEVAL, FLG_BLOQ_REF, USU_BLOQ_REF, FREG_BLOQ_REF from EVAL_REF_CAB A '
        + 'WHERE ASOID  = ''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString  + ''' '
        + '  AND IDEVAL = ''' + DM1.cdsSoliRefi.FieldByName('IDEVAL').AsString  + ''' ';
   DM1.cdsQry30.Close;
   DM1.cdsQry30.DataRequest( xSQL );
   DM1.cdsQry30.Open;

   if DM1.cdsQry30.fieldbyname('FLG_BLOQ_REF').AsString='S' then
   begin
      if DM1.cdsQry30.fieldbyname('USU_BLOQ_REF').AsString<>DM1.wUsuario then
      begin
         MessageDlg('Registro Bloqueado por '+DM1.cdsQry30.fieldbyname('USU_BLOQ_REF').AsString+' desde '+DM1.cdsQry30.fieldbyname('FREG_BLOQ_REF').AsString+'!! ', mtError, [mbOk], 0);
         Exit;
      end;
   end;

   If DM1.Valores(dbeCuotas.Text) > DM1.Valores(dbeCapacidad.tEXT) Then
   Begin
      MessageDlg('CUOTA NO PUEDE SE MAYOR A LA CAPACIDAD DE PAGO!!', mtError, [mbOk], 0);
      Exit;
   End;

   // DESCRIPCION: la cuota pactada de nuevo crédito no podrá en ningún caso ser mayor q la cuota del crédito a refinanciar
   if DM1.Valores(dbeCuotas.Text)>=nImpCuota then
   begin
      MessageDlg('Monto de la cuota de Refinanciación ('+dbeCuotas.Text+'), debe ser menor a la cuota del crédito origen ('+FloatToStr(nImpCuota)+')!!', mtError, [mbOk], 0);
      Exit;
   end;

   xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   If DM1.RegAplFon(xAsoid) Then
   Begin
      MessageDlg(' ASOCIADO TIENE APLICACION DE FONDO SOLIDARIO!!', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.RegCuoBlq(xAsoid) Then
   Begin
      MessageDlg(' ASOCIADO TIENE CUOTAS BLOQUEADAS!!', mtError, [mbOk], 0);
      Exit;
   End;

   If RegProCob(xAsoid, xCreDid) Then
   Begin
      MessageDlg(' ASOCIADO TIENE CUOTAS EN PROCESO DE COBRANZAS!!', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.Valores(dbeCapacidad.Text) = 0 Then
   Begin
      MessageDlg('DEBE INGRESAR LA CAPACIDAD DE PAGO!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(mAproba.Text)) = 0 Then
   Begin
      MessageDlg('DEBE INGRESAR ALGUNA OBSERVACION!!', mtError, [mbOk], 0);
      Exit;
   End;


   xMensaje := ' ¿ Está seguro que Aprobar esta ' + Trim(EdtForPago.Text) + ' ? ';
   Boton := Application.MessageBox(pChar(xMensaje), 'Refinanciación de Cronogramas', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
      xSQL:='select IDEVAL from EVAL_REF_CAB A '
           +'where IDEVAL='''+DM1.cdsSoliRefi.FieldByName('IDEVAL').AsString+''' '
           +  'AND CREDID='''+DM1.cdsSoliRefi.FieldByName('CREDID').AsString+''' '
           +  'AND IDRESEVAL in (''1'',''2'')';
      DM1.cdsQry30.Close;
      DM1.cdsQry30.DataRequest( xSQL );
      DM1.cdsQry30.Open;

      if DM1.cdsQry30.RecordCount=1 then
      begin
         ShowMessage('El estado de la  Solicitud no permite su Aprobación/Desaprobación ...');
         Close;
         Exit;
      end;

      DM1.xSal := 'RP';
      Screen.Cursor := crHourGlass;
      DecodeDate(DM1.FechaSys, Year, Month, Day);
      xYear := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4));

      xTipos := Trim(sOficina) + Trim(xYear) + Copy(xCreDid, 7, 2);
      xfecCalculo := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
      xCondicion := 'CREAREA=' + QuotedStr('CRE') + ' And CORREANO=' + QuotedStr(Trim(xYear)) + ' And SubStr(CREDID,1,8)=' + QuotedStr(xTipos) + ' And TIPOCOB=' + QuotedStr('1');
      xCreditoIdRef := GrbCorrelatCredRef(xCondicion, xTipos);
      If Length(Trim(xCreditoIdRef)) = 0 Then
      Begin
         xCreditoIdRef := GrbCorrelatCredRefNuevo('CRE', QuotedStr(Trim(xYear)), xTipos + 'R');
         If Length(Trim(xCreditoIdRef)) = 0 Then
         Begin
            Screen.Cursor := crDefault;
            MessageDlg(' <<<  A T E N C I Ó N  >>>   NO SE GENERÓ CORRELATIVO COMUNIQUESE CON SISTEMAS !!!!!  ', mtError, [mbOk], 0);
            Exit;
         End;
      End;
      xTipo := Copy(Trim(EdtForPago.Text), 1, 1);
      xConsulta := 'CREAREA=' + QuotedStr('COB') + ' AND CORREANO=' + QuotedStr(Trim(xYear)) + ' AND TIPO=' + QuotedStr(xTipo);
      xNroAbonoRef := GrbCorrelatRef(xConsulta);
      xAplicar := DM1.Valores(lblSaldo.Caption);

      //En Cre302
      DM1.cdsDcuotas.Close;
      DM1.cdsDcuotas.DataRequest('SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,' +
         'CRECUOTA,CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN,CREFVENINI, CREFPAG, USEID, UPROID, DPTOID,   ' +
         'UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT,      ' +
         'USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL,       ' +
         'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR,           ' +
         'CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, CIAID, CREESTID, CREESTADO,FLGINT,                  ' +
         'CREMTOGADM, ASOCODAUX, NRONABO, CIUDID, FLGPAG,CREDIDNABO, CREMTOEXC, AREAID,CREDOCPAG     ' +
         'FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' And  CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA');
      DM1.cdsDcuotas.Open;
      //En Cre310
      DM1.cdsDetalle.Close;
      DM1.cdsDetalle.DataRequest('SELECT CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA, ' +
         'CREMONLOC,CREMONEXT,CREMTOCOB,CREFPAG,TMONID,CREAMORT,CREINTERES,FOPERAC,   ' +
         'CREFLAT,TCAMBIO,USUARIO,FREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,NROOPE,   ' +
         'ASOAPENOM,CIUDID,CREOBS,CREANO,CREMES,AREAID,FORPAGABR,TRANSINTID,CREDOCPAG,  ' +
         'FORPAGID,CREESTID,CREESTADO,NRONABO,CREESTANT,CREESTANTDES,CREMTOCUO,CREMTOEXC,HREG,PERCONTA,CNTANOMM,TIPOCONT,OFDESID   ' +
         'FROM CRE310 WHERE ASOID =' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)));

      DM1.cdsDetalle.Open;
      DM1.xGrabaExc := 'N';
      If xTipo = 'R' Then
         xTipPag := '12'
      Else
         If xTipo = 'A' Then
            xTipPag := '27'
         Else
            If xTipo = 'C' Then xTipPag := '28';
      xCuota := 0;
      xAmoPag := 0;
      xIntPag := 0;
      xGasPag := 0;
      DM1.cdsDcuotas.First;
      While Not DM1.cdsDcuotas.Eof Do
      Begin
         If xAplicar > 0 Then
         Begin
            xfVenc := Trim(DM1.cdsDcuotas.fieldbyname('CREANO').AsString + DM1.cdsDcuotas.fieldbyname('CREMES').AsString);
            xEstAnt := Trim(DM1.cdsDcuotas.fieldbyname('CREESTID').AsString);
            xEstDes := Trim(DM1.cdsDcuotas.fieldbyname('CREESTADO').AsString);
            xAmoPag := DM1.cdsDcuotas.fieldbyname('CRECAPITAL').AsCurrency;
            xIntPag := DM1.cdsDcuotas.fieldbyname('CREMTOINT').AsCurrency;
            xGasPag := DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency;

            If (xfVenc > xFecCalCulo) And (DM1.cdsDcuotas.fieldbyname('CREFVEN').AsString = DM1.cdsDcuotas.fieldbyname('CREFVENINI').AsString) Then // ANTICIPADA
            Begin
               If xTipPag = '27' Then
                  xCuota := DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency - DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency
               Else
                  xCuota := (DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency) - DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency;

               If xCuota > xAplicar Then
               Begin
                  fNPago.AplicaCronogramaPago(xAplicar, 0, 2, 'N', xTipPag);
                  fNPago.InsertaDetPagos(xAplicar, 0, xAmoPag, xIntPag, xGasPag, 1, xEstAnt, xEstDes, xTipPag, '1');
               End
               Else
               Begin
                  fNPago.AplicaCronogramaPago(xCuota, 0, 0, 'N', xTipPag);
                  fNPago.InsertaDetPagos(xCuota, 0, xAmoPag, xIntPag, xGasPag, 1, xEstAnt, xEstDes, xTipPag, '1');
               End;
            End
            Else // NO ANTICIPADA
            Begin
               xCuota := (DM1.cdsDcuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency);
               If xCuota > xAplicar Then
               Begin
                  fNPago.AplicaCronogramaPago(xAplicar, 0, 2, 'S', xTipPag);
                  fNPago.InsertaDetPagos(xAplicar, 0, xAmoPag, xIntPag, xGasPag, 1, xEstAnt, xEstDes, xTipPag, '1');
               End
               Else
               Begin
                  fNPago.AplicaCronogramaPago(xCuota, 0, 1, 'S', xTipPag);
                  fNPago.InsertaDetPagos(xCuota, 0, xAmoPag, xIntPag, xGasPag, 1, xEstAnt, xEstDes, xTipPag, '1');
               End;

            End;

         End;
         xAplicar := xAplicar - xCuota;
         DM1.cdsDcuotas.Next;
      End;
      DM1.cdsDcuotas.ApplyUpdates(0);
      DM1.cdsDetalle.ApplyUpdates(0);
      DM1.cdsDcuotas.Close;
      DM1.cdsDetalle.Close;
      // Inicio HPC_201503_COB
      xSQL:='SELECT TASFONDES FROM CRE301 WHERE ASOID='+QuotedStr(xAsoId)+' AND '+
            'CREDID='+QuotedStr(xCreDid)+' AND NVL(TASFONDES,0)>0 AND CREESTID NOT IN (''04'',''13'') ';
      If DM1.CountReg(xSQL) > 0 Then
         Begin
            xSQL:='UPDATE CRE302 A SET MONCOBDESGRAV=(SELECT NVL(CREMTOCOB,0)-(NVL(CRECAPITAL,0)+NVL(CREMTOINT,0)+NVL(CREMTOFLAT,0)+NVL(MONCOBDESGRAV,0)) '+
                  'FROM CRE302 WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CRECUOTA=A.CRECUOTA AND (TO_CHAR(CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'') OR CREFVEN<>CREFVENINI) '+
                  'AND NVL(CRECAPITAL,0)+NVL(CREMTOINT,0)+NVL(CREMTOFLAT,0)+NVL(MONCOBDESGRAV,0) <> NVL(CREMTOCOB,0)) WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND NVL(MONPACDESGRAV,0)<>NVL(MONCOBDESGRAV,0) ' ;
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            xSQL:='UPDATE CRE310 A SET MONCOBDESGRAV=(SELECT SUM(NVL(CREMTOCOB,0))-SUM(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(MONCOBDESGRAV,0)) '+
                  'FROM CRE310 WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CRECUOTA=A.CRECUOTA AND CREESTID NOT IN (''13'',''04'',''99'') AND NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(MONCOBDESGRAV,0) <> NVL(CREMTOCOB,0) '+
                  'GROUP BY ASOID,CREDID,CRECUOTA) WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND FORPAGID=''12'' AND FREG=TO_DATE(SYSDATE) ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;
         xSQL:='UPDATE CRE301 A SET CRECUOTA=(SELECT MAX(CREMTO) FROM CRE302 WHERE A.ASOID=ASOID AND A.CREDID=CREDID) '+
               'WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreditoIdRef);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      // Fin HPC_201503_COB


      //En Cre301
      GrabaPrestamoRef(xAsoId, xCreDid);

      xSQL := 'UPDATE EVAL_REF_CAB SET USUAUT=''' + dm1.wUsuario + ''', '
            + '      FECAUT    = SYSDATE, MENAUT=''' + mAproba.Text + ''', IDRESEVAL=''1'', '
            + '      CREDNEW   = ''' + xCreditoIdRef + ''' '
            + 'WHERE ASOID     = ''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString + ''' '
            + '  AND CREDID    = ''' + DM1.cdsSolicitud.FieldByName('CREDID').AsString + ''' '
            + '  AND IDRESEVAL = ''0'' AND FECEVAL=''' + DateToStr(DM1.FechaSys) + '''';
      DM1.cdsQry30.Close;
      DM1.cdsQry30.DataRequest(xSQL);
      DM1.cdsQry30.Execute;

      xMensaje := 'El Proceso De ' + Trim(EdtForPago.Text) + ' Concluyó con Exito ...! ';
      MessageDlg(pChar(xMensaje), mtInformation, [mbOk], 0);

      gbCab.Enabled := False;
      z2bbtnImprime.Enabled := True;
      pnlReportes.Visible := True;

      bbtnAceptar.Enabled := False;
      gbObs.Enabled := False;

      Screen.Cursor := crDefault;
      MessageDlg('ES OBLIGATORIO IMPRIMIR TODOS LOS DOCUMENTOS ANTES DE SALIR, BAJO SU RESPONSABILIDAD.!!!', mtInformation, [mbOk], 0);
   End;

End;

Function tfRepCronog1.GrbCorrelatEval: String;
Var
   xCorEval: Integer;
   xResEval, xAnoAct: String;
Begin
   Screen.Cursor := crHourGlass;
   xAnoAct := Copy(DateToStr(DM1.FechaSys), 7, 4);
   DM1.cdsListaCred.Close;
   DM1.cdsListaCred.DataRequest('SELECT CREAREA,CORREANO,VARIOS,TIPO FROM CRE206 WHERE CREAREA=''COB'' AND CORREANO=' + QuotedStr(xAnoAct) + ' AND TIPO=''A''  ');
   DM1.cdsListaCred.Open;
   If DM1.cdsListaCred.RecordCount = 1 Then
   Begin
      If DM1.cdsListaCred.fieldbyname('VARIOS').AsString = '' Then
         xCorEval := 1
      Else
         xCorEval := StrToInt(DM1.cdsListaCred.fieldbyname('VARIOS').AsString) + 1;
      xResEval := Format('%.10d', [xCorEval]);
      DM1.cdsListaCred.Edit;
      DM1.cdsListaCred.fieldbyname('VARIOS').AsString := xResEval;
      DM1.cdsListaCred.ApplyUpdates(0);
      Result := Copy(xResEval, 3, 8);
   End;
   DM1.cdsListaCred.Close;
   Screen.Cursor := crDefault;
End;

Procedure TfRepCronog1.bbtnAnularClick(Sender: TObject);
Var
   Boton: Integer;
   xAsoId, xCreDid, xMensaje, xYear, xConsulta, xTipo, xTipos, xCondicion, xSQL, xfVenc, xEstAnt, xEstDes, xFecCalCulo, xTipPag, xMens: String;
   Year, Month, Day: Word;
   xAplicar, xSaldo, xCuota, xAmoPag, xIntPag, xGasPag: Currency;
   xIdEval, xChk: String;
Begin

   xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;

   If Length(Trim(mAnula.Text)) = 0 Then
   Begin
      MessageDlg('DEBE INGRESAR ALGUNA OBSERVACION POR LA DESAPROBACIÓN!!', mtError, [mbOk], 0);
      Exit;
   End;


   xMensaje := ' ¿ Está seguro de Desaprobar la Solicitud de Refinanciación ? ';
   Boton := Application.MessageBox(pChar(xMensaje), 'Refinanciación de Cronogramas', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
      xSQL:='select IDEVAL from EVAL_REF_CAB A '
           +'where IDEVAL='''+DM1.cdsSoliRefi.FieldByName('IDEVAL').AsString+''' '
           +  'AND CREDID='''+DM1.cdsSoliRefi.FieldByName('CREDID').AsString+''' '
           +  'AND IDRESEVAL in (''1'',''2'')';
      DM1.cdsQry30.Close;
      DM1.cdsQry30.DataRequest( xSQL );
      DM1.cdsQry30.Open;

      if DM1.cdsQry30.RecordCount=1 then
      begin
         ShowMessage('El estado de la  Solicitud no permite su Aprobación/Desaprobación ...');
         Close;
      end;

      xSQL := 'UPDATE EVAL_REF_CAB '
            + '   SET USUANU    = ''' + dm1.wUsuario + ''', '
            + '       FECANU    = ''' + DateToStr(DM1.FechaSys) + ''', '
            + '       MENANU    = ''' + mAnula.Text + ''', IDRESEVAL=''2'' '
            + ' WHERE ASOID     = ''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString + ''' '
            + '   AND CREDID    = ''' + DM1.cdsSolicitud.FieldByName('CREDID').AsString + ''' '
            + '   AND IDRESEVAL = ''0'' '
            + '   AND FECEVAL   = ''' + DateToStr(DM1.FechaSys) + '''';
      DM1.cdsQry30.Close;
      DM1.cdsQry30.DataRequest(xSQL);
      DM1.cdsQry30.Execute;

      bbtnAnular.Enabled := False;
      gbObs.Enabled := False;

      SHOWMessage('REFINANCIACION DESAPROBADA');
   End;
End;

Procedure TfRepCronog1.cbAnuClick(Sender: TObject);
Begin
   If cbAnu.Checked Then
   Begin
      mAproba.Clear;
      cbApr.Checked := False;
      bbtnAnular.Enabled := True;
      mAnula.Enabled := True;
   End
   Else
   Begin
      mAnula.Clear;
      mAnula.Enabled := False;
      bbtnAnular.Enabled := False;
   End;
End;

Procedure TfRepCronog1.cbAprClick(Sender: TObject);
Begin
   If cbApr.Checked Then
   Begin
      mAnula.Clear;
      cbAnu.Checked := False;
      bbtnAceptar.Enabled := True;
      mAproba.Enabled := True;
   End
   Else
   Begin
      mAproba.Clear;
      mAproba.Enabled := False;
      bbtnAceptar.Enabled := False;
   End;
End;

Procedure TfRepCronog1.mObservaExit(Sender: TObject);
Begin
   mObserva.Text := StringReplace(mObserva.Text, '''', '"', [rfReplaceAll])
End;

Procedure TfRepCronog1.mAnulaExit(Sender: TObject);
Begin
   mAnula.Text := StringReplace(mAnula.Text, '''', '"', [rfReplaceAll])
End;

Procedure TfRepCronog1.mAprobaExit(Sender: TObject);
Begin
   mAproba.Text := StringReplace(mAproba.Text, '''', '"', [rfReplaceAll])
End;

Function TfRepCronog1.RegProCob(xAsoId, xCredid: String): Boolean;
Var
   xSQL: String;
Begin
   Result := False;
   xSQL := 'SELECT ASOID FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID=''14'' and CREDID=''' + xCredid + '''';
   If DM1.CountReg(xSQL) > 0 Then Result := True;
End;

procedure TfRepCronog1.FormCreate(Sender: TObject);
begin
   ppD1.IniStorageName := '.\rbuilder.ini';
end;

// Inicio: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO
procedure TfRepCronog1.bitImprimirClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   FCalificaAso := TFCalificaAso.Create(Self);
   FCalificaAso.CrgSolicitud;
   FCalificaAso.bitImprimirClick(self);
   Screen.Cursor := crDefault;
   FCalificaAso.Free;

end;
// Fin: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO

//Inicio HPC_201711_COB
//Cambio de Formato de Solicitud de Descuento por Planilla
procedure TfRepCronog1.LlenaDatosPlaUniPag(xasoid, xcredid: String);
Var xSql :String;
begin
   pplasoapenomdni2.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOAPENOMDNI');
   pplasodni2.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASODNI');
   xSQL := 'SELECT B.USENOM FROM APO201 A, APO101 B WHERE A.ASOID = '+QuotedStr(xAsoId)+' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   pplUGEL.Caption := DM1.cdsQry.FieldByName('USENOM').AsString;
   If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'FECAUTDESAPO') <> '' Then
   Begin
      pplMesCAPADS.Caption := DM1.DesMes(StrToInt(Copy(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'FECAUTDESAPO'),4,2)), 'N');
      pplAnoCADAPS.Caption := Copy(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'FECAUTDESAPO'),7,4);
   End;
   xSQL := 'SELECT A.ASOTIPID, A.ASOTIPID, A.CREDID, A.CREFINIPAG, A.CREFFINPAG, A.CRENUMCUO, A.CRECUOTA, A.CREFOTORG, B.OFDESNOM, A.ASOAPENOM, A.ASODNI, A.USUARIO FROM CRE301 A, APO110 B WHERE A.ASOID = '+QuotedStr(xAsoId)+' AND A.CREDID = '+QuotedStr(xCreDid)
   +' AND A.OFDESID = B.OFDESID';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('ASOTIPID').AsString = 'DO' Then
   Begin
      pplconlabnom.Caption := '( X )';
      pplconlabcon.Caption := '(   )';
      pplconlabpen.Caption := '(   )';
      pplApoObli.Caption := '( X )';
      pplApomen.Visible := True;
      pplMesCAPADS.Visible := True;
      pplAnoCADAPS.Visible := True;
   End;
   If DM1.cdsQry.FieldByName('ASOTIPID').AsString = 'CO' Then
   Begin
      pplconlabnom.Caption := '(   )';
      pplconlabcon.Caption := '( X )';
      pplconlabpen.Caption := '(   )';
      pplApoObli.Caption := '(   )';
      pplApomen.Visible := False;
      pplMesCAPADS.Visible := False;
      pplAnoCADAPS.Visible := False;
   End;
   If DM1.cdsQry.FieldByName('ASOTIPID').AsString = 'CE' Then
   Begin
      pplconlabnom.Caption := '(   )';
      pplconlabcon.Caption := '(   )';
      pplconlabpen.Caption := '( X )';
      pplApoObli.Caption := '(   )';
      pplApomen.Visible := False;
      pplMesCAPADS.Visible := False;
      pplAnoCADAPS.Visible := False;
   End;
   pplAnoFinCrono.Caption := Copy(DM1.cdsQry.FieldByName('CREFFINPAG').AsString,1,4);
   pplAnoIniCrono.Caption := Copy(DM1.cdsQry.FieldByName('CREFINIPAG').AsString,1,4);
   pplMesFinCrono.Caption := DM1.DesMes(StrToInt(Copy(DM1.cdsQry.FieldByName('CREFFINPAG').AsString,5,2)), 'N');
   pplMesIniCrono.Caption := DM1.DesMes(StrToInt(Copy(DM1.cdsQry.FieldByName('CREFINIPAG').AsString,5,2)), 'N');
   pplDesMen.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CRECUOTA').AsFloat,ffNumber,12,2);
   pplNumcuo.Caption := IntToStr(DM1.cdsQry.FieldByName('CRENUMCUO').AsInteger);
   pplTotDes2.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CRECUOTA').AsFloat*DM1.cdsQry.FieldByName('CRENUMCUO').AsInteger,ffNumber,12,2);
   pplLugyFec.Caption := DM1.cdsQry.FieldByName('OFDESNOM').AsString+', '+Copy(DM1.cdsQry.FieldByName('CREFOTORG').AsString, 1,2)+' de '
   +DM1.DesMes(StrToInt(Copy(DM1.cdsQry.FieldByName('CREFOTORG').AsString,4,2)), 'N')+' de '+Copy(DM1.cdsQry.FieldByName('CREFOTORG').AsString,7,4);
   pplapenomaut.Caption := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
   ppldniaut.Caption := 'DNI: '+DM1.cdsQry.FieldByName('ASODNI').AsString;
   pplUsuOto.Caption := DM1.CrgDescrip('USERID=' + QuotedStr(DM1.cdsQry.FieldByName('USUARIO').AsString), 'TGE006', 'USERNOM');
   pplUsuImpPlaUniPag.Caption := 'F.Impresión : ' + DateToStr(DM1.FechaSys) + '/ ' + DM1.wUsuario + ' /' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(DM1.xOfiDes)), 'APO110', 'OFDESNOM') + ' / N°Crédito : ' + xCreDid;
end;
//Final HPC_201711_COB

End.

