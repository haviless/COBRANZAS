// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Cobranzas
// Unidad                    : COB409
// Formulario                : FContabilizacion
// Fecha de Creación         :
// Autor                     :
// Objetivo                  : Contabilización de los diferentes Movimientos de Cobranzas
//                             Boletas de Deposito, Efectivo, Anulación de Aportes, Extorno de Deposito, Aplica al FSC, Devol.al FSc.

// Relacion de pases a producción:
// N° de Pases a Calidad     : HPP_200903_COB
//                           : HPP_201007_COB ubicación de los temporales de los reportes (rbuilder.ini)
//                           : HPP_201108_COB contabilización de devoluciones al FSC Banco
//                           : HPP_201111_COB contabilizacion de devoluciones al FSC Efectivo, Planilla
//                           : HPP_201115_COB cambios varios :
//                           : HPP_201125_COB el tipo de asociado debe salir del credito de origen para la contabilizacion de aplicaciones al FSC
//                           : HPC_201133_COB En las devoluciones al FSC el tipo de asociado debe ser del origen del prestamos
//                           : HPP_201128_COB Pase realizado sobre el pase de desarrollo N° HPC_201133_COB
//                           : HPC_201201_COB 05/01/2012 Modifica el orden del reporte para visualizar mejor el reporte de la contabilización
// DPP_201201_COB            : Se realiza el pase a producción a partir del pase HPC_201201_COB
// HPC_201219_COB            : 04/09/2012 Fondo de Protección de Desgravamen FPD
// DPP_201214_COB            : Pase a producción de cobranzas a partir del pase HPC_201219_A
// HPC_201226_COB            : Contabilización de Extorno de Cuotas
// DPP_201219_COB            : Se realiza el pase a producción a partir del HPC_201226_COB
// HPC_201302_COB            : Se añade Resumen agrupado por Periodo de Cobranza
// SPP_201303_COB            : Se realiza el pase a producción a partir del HPC_201302_COB
// HPC_201304_COB            : Extornos de Boleta de Depositos (EXT2) al contabilizar elimina los Extornos de Créditos (EXTC)
// HPC_201304_COB            : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
// HPC_201304_COB            : Reporte de Planillas, se modifico el ppReport ( REPPLA )
// SPP_201304_COB            : Se realiza el pase a producción a partir del HPC_201304_COB
// HPC_201306_COB            : Contabilización de cobranzas por ONP
// SPP_201308_COB            : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201309_COB            : Contabilización de Aplicación de FPD
// SPP_201311_COB            : Se realiza el pase a producción a partir del HPC_201309_COB
// HPC_201403_COB            : Consistenciar Contabilización de Cobranzas en Efectivo.
// SPP_201403_COB            : Se realiza el pase a producción a partir del HPC_201403_COB.
// HPC_201409_COB            : Corregir el Filtro de Contabilización de Extorno de Boletas de Depositos.
// SPP_201407_COB            : Se realiza el pase a producción a partir del HPC_201409_COB.
// HPC_201407_COB            : Transferencia de aportea anulados a contabilidad con monto 0
// SPP_201410_COB            : Se realiza el pase a producción a partir del HPC_201407_COB.
// HPC_201512_COB            : Contabilización de Aplicación de CCI
// HPC_201514_COB            : Reporte sustento de la Contabilización de CCI
// HPC_201520_COB            : Contabilización de Cobranzas en Efectivo - Redondeo a dos Decimales
// HPC_201523_COB            : Contabilizacion de CXC y AJUSTES-CDO  
// HPC_201601_COB            : CONTABILIZACIÓN DEVOLUCIONES AL FSC ONP
// HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// HPC_201615_COB            : Contabilización de Extorno de CCI
// HPC_201723_COB            : Contabilización de Extorno de Planillas
// HPC_201726_COB            : Mejoras al Reporte de sustento de CXC
// HPC_201728_COB            : Mejoras a la Contabilización de Extorno de Boletas de depósito
// HPC_201730_COB            : ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
// HPC_201736_COB            : Exportar a Excel  los reportes sustento de la contabilización
// HPC_201738_COB            : Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
// HPC_201802_COB            : Exportar a Excel los reportes sustento de la contabilización.
//                             Para las opciones: Anulación de Aportes, ONP y Aplica Ajuste(CDO). 
// HPC_201806_COB            : Exceso en Cronogramas Cerrados (ONP, BANCO)
// HPC_201809_COB            : Se añade contabilización de extorno FSC
// HPC_201815_COB            : Se modifica la agrupación por Fecha de anulación en forma truncada DD/MM/YYYY
//                           : Se corrige el fitro del reporte de excesos por ONP de cronogramas cerrados
// COB_201822_HPC            : Contabilización de pagos por resolver

unit COB409;

interface

uses

  Windows, Messages, SysUtils, Classes, StdCtrls, Controls, ExtCtrls,
  ppBands, ppReport, ppStrtch, ppSubRpt, ppParameter, ppClass, ppCtrls,
  ppVar, ppDB, ppDBPipe, ppDBBDE, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, Mask,dialogs,
  wwdbedit, Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, Forms, variants,
//Inicio HPC_201514_COB
  ppEndUsr, wwdbdatetimepicker, jpeg;
//Final HPC_201514_COB
           
type
  TFContabilizacion = class(TForm)
    pnlCabecera: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    dbseMes: TwwDBSpinEdit;
    dbseAno: TwwDBSpinEdit;
    pcCNT: TPageControl;
    edtFecha: TEdit;
    tsTel: TTabSheet;
    fcShapeBtn6: TfcShapeBtn;
    tsPla: TTabSheet;
    tsBol: TTabSheet;
    tsEfe: TTabSheet;
    ppBDEPipeline2: TppBDEPipeline;
    ppBDEPipeline1: TppBDEPipeline;
    DBPBANCOS: TppBDEPipeline;
    DBPRESUMEN: TppBDEPipeline;
    prbAvance: TProgressBar;
    Label1: TLabel;
    Panel2: TPanel;
    bbtnTeleCorrige: TBitBtn;
    bbtnTeleIncons: TBitBtn;
    bbtnVerifCtasCCosTel: TBitBtn;
    Panel3: TPanel;
    bbtnContabTeleAhorro: TBitBtn;
    BitBtn1: TBitBtn;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn3: TfcShapeBtn;
    Label2: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    bbtnPlanCorrige: TBitBtn;
    bbtnPlanIncons: TBitBtn;
    bbtnVerifCtasCCosPla: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    fcShapeBtn4: TfcShapeBtn;
    fcShapeBtn5: TfcShapeBtn;
    Label3: TLabel;
    Panel6: TPanel;
    bbtnBolDCorrige: TBitBtn;
    bbtnBolDIncons: TBitBtn;
    bbtnVerifCtasCCosBol: TBitBtn;
    Panel7: TPanel;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    fcShapeBtn7: TfcShapeBtn;
    fcShapeBtn8: TfcShapeBtn;
    Panel8: TPanel;
    Panel9: TPanel;
    Label4: TLabel;
    bbtnVerifCtasCCosEfe: TBitBtn;
    bbtnEfeTrans: TBitBtn;
    fcShapeBtn9: TfcShapeBtn;
    bbtnTELSustento: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn4: TBitBtn;
    fcShapeBtn10: TfcShapeBtn;
    BitBtn9: TBitBtn;
    Label5: TLabel;
    tsFondo: TTabSheet;
    Label7: TLabel;
    Panel10: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Panel11: TPanel;
    BitBtn12: TBitBtn;
    fcShapeBtn11: TfcShapeBtn;
    BitBtn13: TBitBtn;
    fcShapeBtn12: TfcShapeBtn;
    BitBtn14: TBitBtn;
//Inicio HPC_201615_COB
//Se quitan botones para reubicarlos
//  TabSheet2: TTabSheet;
//  Panel12: TPanel;
//  BitBtn15: TBitBtn;
//  BitBtn16: TBitBtn;
//  BitBtn17: TBitBtn;
//  BitBtn18: TBitBtn;
//  Panel13: TPanel;
//  BitBtn19: TBitBtn;
//  BitBtn20: TBitBtn;
//  fcShapeBtn13: TfcShapeBtn;
//  fcShapeBtn14: TfcShapeBtn;
//  Label6: TLabel;
//Final HPC_201615_COB
    BitBtn21: TBitBtn;
    TabSheet3: TTabSheet;
    Label8: TLabel;
    Panel14: TPanel;
    bbtnRepFSC: TBitBtn;
    Panel15: TPanel;
    bbtnTransFon: TBitBtn;
    fcShapeBtn15: TfcShapeBtn;
    bbtnCNTFon: TBitBtn;
    fcShapeBtn16: TfcShapeBtn;
    ppdb10: TppDBPipeline;
    ppr10: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppDBText132: TppDBText;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppSystemVariable21: TppSystemVariable;
    ppLabel91: TppLabel;
    ppLabel99: TppLabel;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppDBText111: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLine90: TppLine;
    ppDBCalc100: TppDBCalc;
    ppDBCalc101: TppDBCalc;
    ppDBCalc102: TppDBCalc;
    ppDBCalc103: TppDBCalc;
    ppDBCalc104: TppDBCalc;
    ppLine91: TppLine;
    ppLabel107: TppLabel;
    ppGroup16: TppGroup;
    ppGroupHeaderBand16: TppGroupHeaderBand;
    ppGroupFooterBand16: TppGroupFooterBand;
    ppLine89: TppLine;
    ppDBCalc95: TppDBCalc;
    ppDBCalc96: TppDBCalc;
    ppDBCalc97: TppDBCalc;
    ppDBCalc98: TppDBCalc;
    ppDBCalc99: TppDBCalc;
    ppDBText133: TppDBText;
    ppParameterList6: TppParameterList;
    ppd10: TppDesigner;
    ppdb6: TppDBPipeline;
    ppd6: TppDesigner;
    ppr6: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppLabel83: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppSystemVariable17: TppSystemVariable;
    ppLabel84: TppLabel;
    ppLabel86: TppLabel;
    ppLine86: TppLine;
    ppSystemVariable18: TppSystemVariable;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    pplPeriodo6: TppLabel;
    ppLabel85: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel68: TppLabel;
    ppLine94: TppLine;
    ppDetailBand10: TppDetailBand;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText124: TppDBText;
    ppDBText110: TppDBText;
    ppDBText134: TppDBText;
    ppLine92: TppLine;
    ppSummaryBand8: TppSummaryBand;
    ppLine93: TppLine;
    ppDBCalc105: TppDBCalc;
    ppParameterList5: TppParameterList;
    ppr5: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppSystemVariable15: TppSystemVariable;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    lblPeriodo: TppLabel;
    ppDBText109: TppDBText;
    ppDetailBand9: TppDetailBand;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppParameterList4: TppParameterList;
    ppd5: TppDesigner;
    ppdb5: TppDBPipeline;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    (*
    ppHeaderBand7: TppHeaderBand;
    ppDBText99: TppDBText;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDBText153: TppDBText;
    ppLabel125: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppLine81: TppLine;
    ppDBCalc89: TppDBCalc;
    ppDBCalc90: TppDBCalc;
    ppLabel72: TppLabel;
    ppDBText112: TppDBText;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppGroupFooterBand14: TppGroupFooterBand;
    ppLine83: TppLine;
    ppDBCalc93: TppDBCalc;
    ppDBCalc94: TppDBCalc;
    ppLabel74: TppLabel;
    ppDBText113: TppDBText;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppLine82: TppLine;
    ppDBCalc91: TppDBCalc;
    ppDBCalc92: TppDBCalc;
    ppLabel73: TppLabel;
    *)
    ppParameterList3: TppParameterList;
    ppd1: TppDesigner;
    ppbdeAnulaApo: TppBDEPipeline;
    ppRAnulaApo: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppLabel69: TppLabel;
    ppLabel75: TppLabel;
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
    ppSystemVariable22: TppSystemVariable;
    ppSystemVariable23: TppSystemVariable;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLabel118: TppLabel;
    ppLanomes: TppLabel;
    ppLabel119: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand9: TppSummaryBand;
    ppLabel120: TppLabel;
    ppLine97: TppLine;
    ppLabel121: TppLabel;
    ppDBCalc106: TppDBCalc;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    ppShape31: TppShape;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppGroupFooterBand17: TppGroupFooterBand;
    ppShape32: TppShape;
    ppLabel122: TppLabel;
    ppDBText146: TppDBText;
    ppDBCalc107: TppDBCalc;
    ppGroup18: TppGroup;
    ppGroupHeaderBand18: TppGroupHeaderBand;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppGroupFooterBand18: TppGroupFooterBand;
    ppDBCalc108: TppDBCalc;
    ppLabel123: TppLabel;
    ppDBText149: TppDBText;
    ppLine98: TppLine;
    ppGroup19: TppGroup;
    ppGroupHeaderBand19: TppGroupHeaderBand;
    ppGroupFooterBand19: TppGroupFooterBand;
    ppLabel124: TppLabel;
    ppDBText150: TppDBText;
    ppDBCalc109: TppDBCalc;
    ppLine99: TppLine;
    ppGroup20: TppGroup;
    ppGroupHeaderBand20: TppGroupHeaderBand;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppGroupFooterBand20: TppGroupFooterBand;
    REPPLA: TppReport;
    REPBANCO: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel18: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppXtitulo: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape7: TppShape;
    ppLabel24: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBText32: TppDBText;
    ppXsubtitulo: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape6: TppShape;
    ppLabel23: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBText34: TppDBText;
    ppDBCalc22: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape2: TppShape;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape5: TppShape;
    ppLabel22: TppLabel;
    ppDBText33: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppLine17: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape3: TppShape;
    ppLabel15: TppLabel;
    ppDBText31: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    BDEPPBANCO: TppBDEPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine3: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine4: TppLine;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppBDEPPBANCO2: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape17: TppShape;
    ppLabel14: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
//Inicio HPC_201615_COB
//Se quita Label de reporte  
//  ppLabel40: TppLabel;
//Final HPC_201615_COB
    ppXtitulo2: TppLabel;
    ppLabel41: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel42: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppDetailBand5: TppDetailBand;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppShape18: TppShape;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppLabel43: TppLabel;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape19: TppShape;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppDetailBand6: TppDetailBand;
    ppShape20: TppShape;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppSummaryBand5: TppSummaryBand;
    ppShape21: TppShape;
    ppDBCalc58: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    PPXSUBTITULO2: TppLabel;
    ppDBText72: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppShape22: TppShape;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppLabel48: TppLabel;
    ppDBText73: TppDBText;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppShape23: TppShape;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppDBCalc64: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLabel49: TppLabel;
    ppDBText76: TppDBText;
    ppParameterList2: TppParameterList;
    ppBDEPPBANCO: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppShape24: TppShape;
    ppLabel50: TppLabel;
//Inicio HPC_201615_COB
//  ppLabel51: TppLabel;
//Final HPC_201615_COB
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppSummaryBand6: TppSummaryBand;
    ppShape25: TppShape;
    ppLabel55: TppLabel;
    ppDBCalc69: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    ppDBCalc71: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    ppDBCalc73: TppDBCalc;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppShape26: TppShape;
    ppLabel56: TppLabel;
    ppDBText90: TppDBText;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppShape27: TppShape;
    ppLabel57: TppLabel;
    ppDBText91: TppDBText;
    ppDBCalc74: TppDBCalc;
    ppDBCalc75: TppDBCalc;
    ppDBCalc76: TppDBCalc;
    ppDBCalc77: TppDBCalc;
    ppDBCalc78: TppDBCalc;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppShape28: TppShape;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppShape29: TppShape;
    ppLabel58: TppLabel;
    ppDBText94: TppDBText;
    ppDBCalc79: TppDBCalc;
    ppDBCalc80: TppDBCalc;
    ppDBCalc81: TppDBCalc;
    ppDBCalc82: TppDBCalc;
    ppDBCalc83: TppDBCalc;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppLine78: TppLine;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppShape30: TppShape;
    ppLabel59: TppLabel;
    ppDBText98: TppDBText;
    ppDBCalc84: TppDBCalc;
    ppDBCalc85: TppDBCalc;
    ppDBCalc86: TppDBCalc;
    ppDBCalc87: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    ppParameterList1: TppParameterList;
    dtpFecIni: TwwDBDateTimePicker;
    dtpFecFin: TwwDBDateTimePicker;
    BitBtn23: TBitBtn;
    BitBtn22: TBitBtn;
    TabSheet1: TTabSheet;
    PgDevolucionFSC: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label9: TLabel;
    Panel16: TPanel;
    BitBtn24: TBitBtn;
    Panel17: TPanel;
    BitBtn26: TBitBtn;
    fcShapeBtn17: TfcShapeBtn;
    BitBtn27: TBitBtn;
    fcShapeBtn18: TfcShapeBtn;
    ppRepDetBanFSC: TppReport;
    ppHeaderBand12: TppHeaderBand;
    ppLblTitFSC01: TppLabel;
    ppLine100: TppLine;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppSystemVariable24: TppSystemVariable;
    ppSystemVariable25: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppDBText154: TppDBText;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppSummaryBand10: TppSummaryBand;
    ppLine101: TppLine;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppDBCalc110: TppDBCalc;
    ppDBCalc111: TppDBCalc;
    ppLine102: TppLine;
    ppGroup21: TppGroup;
    ppGroupHeaderBand21: TppGroupHeaderBand;
    ppDBText161: TppDBText;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppGroupFooterBand21: TppGroupFooterBand;
    ppLine103: TppLine;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppDBCalc112: TppDBCalc;
    ppDBCalc113: TppDBCalc;
    ppGroup22: TppGroup;
    ppGroupHeaderBand22: TppGroupHeaderBand;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppGroupFooterBand22: TppGroupFooterBand;
    ppLine104: TppLine;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppDBCalc114: TppDBCalc;
    ppDBCalc115: TppDBCalc;
    ppGroup23: TppGroup;
    ppGroupHeaderBand23: TppGroupHeaderBand;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppGroupFooterBand23: TppGroupFooterBand;
    ppLine105: TppLine;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppDBCalc116: TppDBCalc;
    ppDBCalc117: TppDBCalc;
    ppGroup24: TppGroup;
    ppGroupHeaderBand24: TppGroupHeaderBand;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppGroupFooterBand24: TppGroupFooterBand;
    ppLine106: TppLine;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppDBCalc118: TppDBCalc;
    ppDBCalc119: TppDBCalc;
    ppGroup25: TppGroup;
    ppGroupHeaderBand25: TppGroupHeaderBand;
    ppLine107: TppLine;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLine108: TppLine;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppDBText168: TppDBText;
    ppGroupFooterBand25: TppGroupFooterBand;
    ppDBCalc120: TppDBCalc;
    ppDBCalc121: TppDBCalc;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLine109: TppLine;
    ppParameterList7: TppParameterList;
    ppRSustFSCBanco: TppReport;
    ppParameterList8: TppParameterList;
    ppHeaderBand13: TppHeaderBand;
    ppShape33: TppShape;
//Inicio HPC_201601_COB - Se elimina línea
//	ppLabel166: TppLabel;
//Fin HPC_201601_COB
    ppSystemVariable27: TppSystemVariable;
    ppSystemVariable28: TppSystemVariable;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppltitulo: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppDBText174: TppDBText;
    ppDBText178: TppDBText;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppDBText179: TppDBText;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppLine120: TppLine;
    ppFooterBand4: TppFooterBand;
    ppShape34: TppShape;
    ppLabel171: TppLabel;
    ppGroup26: TppGroup;
    ppGroupHeaderBand26: TppGroupHeaderBand;
    ppLabel172: TppLabel;
    ppDBText182: TppDBText;
    ppShape35: TppShape;
    ppGroupFooterBand26: TppGroupFooterBand;
    ppShape36: TppShape;
    ppLabel173: TppLabel;
    ppDBText183: TppDBText;
    ppDBText169: TppDBText;
    ppDBCalc122: TppDBCalc;
    ppDBCalc123: TppDBCalc;
    ppDBCalc124: TppDBCalc;
    pplSubtituloSustFSC: TppLabel;
    ppShape37: TppShape;
    ppSummaryBand11: TppSummaryBand;
    ppltitulo2: TppLabel;
    TabSheet7: TTabSheet;
    Label10: TLabel;
    Panel18: TPanel;
    BitBtn25: TBitBtn;
    BitBtn28: TBitBtn;
    Panel19: TPanel;
    BitBtn29: TBitBtn;
    fcShapeBtn19: TfcShapeBtn;
    BitBtn30: TBitBtn;
    fcShapeBtn20: TfcShapeBtn;
    Label11: TLabel; // Título Dev FSC x Efectivo
    Panel20: TPanel; // panel de botones Reporte Dev FSC x Efectivo
    BitBtn31: TBitBtn; // botón Reporte Sustento Dev. al FSC (EFECTIVO)
    Panel21: TPanel; // panel de botones Contab Dev FSC x Efectivo
    BitBtn32: TBitBtn; // botón Transferencia a Contabilidad x Efectivo
    fcShapeBtn21: TfcShapeBtn; // botón reporte de Transferencia a Contabilidad x Efectivo
    BitBtn33: TBitBtn; // botón Contabilización Dev. al FSC (EFECTIVO)
    fcShapeBtn22: TfcShapeBtn; // botón reporte Contabilización Dev. al FSC (EFECTIVO)
    Label12: TLabel; // Título Dev FSC x Planillas
    Panel22: TPanel; // panel de botones Reporte Dev FSC x Planillas
    BitBtn34: TBitBtn; // botón Reporte Sustento Dev. al FSC x Planillas
    Panel23: TPanel; // panel de botones Contab Dev FSC x Planillas
    BitBtn35: TBitBtn; // botón Transferencia a Contabilidad x Planillas
    fcShapeBtn23: TfcShapeBtn; // botón reporte de Transferencia a Contabilidad x Planilla
    BitBtn36: TBitBtn; // botón Contabilización Dev. al FSC x Planilla
    fcShapeBtn24: TfcShapeBtn; // botón reporte Contabilización Dev. al FSC x Planilla
    ppLabel170: TppLabel;
    ppdb2: TppDBPipeline;
    ppDBText184: TppDBText;
    ppDBCalc127: TppDBCalc;
    ppDBCalc128: TppDBCalc;
    ppLabel186: TppLabel;

//Inicio: DPP_201214_COB
    ppDBText185: TppDBText;
    ppLabel187: TppLabel;
    ppDBText186: TppDBText;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppDBText187: TppDBText;
    ppDBCalc129: TppDBCalc;
    ppDBCalc130: TppDBCalc;
    ppDBCalc131: TppDBCalc;
    ppLabel188: TppLabel;
// Inicio: SPP_201303_COB
    ppParameterList9: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppShape8: TppShape;
    ppLabel16: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    XTITULO3: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDBText59: TppDBText;
    ppLine33: TppLine;
    ppDBText188: TppDBText;
    ppLine123: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppShape9: TppShape;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppLabel28: TppLabel;
    ppDBCalc136: TppDBCalc;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppShape42: TppShape;
    ppShape41: TppShape;
    ppShape40: TppShape;
    ppShape39: TppShape;
    ppShape38: TppShape;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppShape43: TppShape;
    ppLabel201: TppLabel;
    ppShape56: TppShape;
    ppLabel202: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppShape47: TppShape;
    ppShape48: TppShape;
    ppShape49: TppShape;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppShape57: TppShape;
    ppDBText195: TppDBText;
    ppSummaryBand14: TppSummaryBand;
    ppShape50: TppShape;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppShape53: TppShape;
    ppShape54: TppShape;
    ppShape55: TppShape;
    ppLabel203: TppLabel;
    ppDBCalc137: TppDBCalc;
    ppDBCalc138: TppDBCalc;
    ppDBCalc139: TppDBCalc;
    ppDBCalc140: TppDBCalc;
    ppDBCalc141: TppDBCalc;
    ppShape58: TppShape;
    ppDBCalc142: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppShape16: TppShape;
    ppDBText57: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape14: TppShape;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppLabel33: TppLabel;
    ppDBText58: TppDBText;
    ppDBCalc135: TppDBCalc;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape10: TppShape;
    XSUBTITULO3: TppLabel;
    ppDBText48: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppShape15: TppShape;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppLabel30: TppLabel;
    ppDBText49: TppDBText;
    ppDBCalc134: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppShape12: TppShape;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape11: TppShape;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLabel31: TppLabel;
    ppDBText52: TppDBText;
    ppDBCalc133: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppLine32: TppLine;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppShape13: TppShape;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppLabel32: TppLabel;
    ppDBText56: TppDBText;
    ppDBCalc132: TppDBCalc;
// Fin: SPP_201303_COB


    BDEPPSUBRBANCO: TppBDEPipeline;

// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
    TabSheet8: TTabSheet;
    Label13: TLabel;
    Panel24: TPanel;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    BitBtn39: TBitBtn;
    bbtnONPRepSus: TBitBtn;
    Panel25: TPanel;
    bbtnONPConta: TBitBtn;
    bbtnONPTransf: TBitBtn;
    bbtnONPRepPrevio: TfcShapeBtn;
    bbtnONPRepConta: TfcShapeBtn;
    ppdbONP: TppBDEPipeline;
    pprONP: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppShape59: TppShape;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppXtitulo3: TppLabel;
    ppLabel215: TppLabel;
    ppSystemVariable29: TppSystemVariable;
    ppLabel216: TppLabel;
    ppSystemVariable30: TppSystemVariable;
    ppLabel217: TppLabel;
    ppDetailBand17: TppDetailBand;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppDBText200: TppDBText;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppDBText203: TppDBText;
    ppDBText204: TppDBText;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppDBText205: TppDBText;
    ppSummaryBand15: TppSummaryBand;
    ppShape60: TppShape;
    ppDBCalc143: TppDBCalc;
    ppDBCalc144: TppDBCalc;
    ppDBCalc145: TppDBCalc;
    ppDBCalc146: TppDBCalc;
    ppDBCalc147: TppDBCalc;
    ppLabel218: TppLabel;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine144: TppLine;
    ppDBCalc149: TppDBCalc;
    ppGroup27: TppGroup;
    ppGroupHeaderBand27: TppGroupHeaderBand;
    ppGroupFooterBand27: TppGroupFooterBand;
    ppShape64: TppShape;
    ppDBCalc150: TppDBCalc;
    ppDBCalc151: TppDBCalc;
    ppDBCalc152: TppDBCalc;
    ppDBCalc153: TppDBCalc;
    ppDBCalc154: TppDBCalc;
    ppLabel224: TppLabel;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppDBCalc155: TppDBCalc;
    ppParameterList10: TppParameterList;
    ppLabel223: TppLabel;
    ppDBText209: TppDBText;
    ppLine126: TppLine;
    ppHeaderBand7: TppHeaderBand;
    ppDBText99: TppDBText;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    //Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
    //ppSystemVariable12: TppSystemVariable;
    //Fin HPC_201723_COB
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine79: TppLine;
    ppLine80: TppLine;
//Inicio HPC_201615_COB
//Se quita label
//  ppLabel62: TppLabel;
//Final HPC_201615_COB
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDBText153: TppDBText;
    ppLabel125: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppSummaryBand12: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel169: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel184: TppLabel;
    ppLine117: TppLine;
    ppLabel185: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppDBText170: TppDBText;
    ppDBText175: TppDBText;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppSummaryBand13: TppSummaryBand;
    ppLine116: TppLine;
    ppDBCalc125: TppDBCalc;
    ppDBCalc126: TppDBCalc;
    ppGroup28: TppGroup;
    ppGroupHeaderBand28: TppGroupHeaderBand;
    ppDBText206: TppDBText;
    ppLabel206: TppLabel;
    ppGroupFooterBand28: TppGroupFooterBand;
    ppLine140: TppLine;
    ppDBCalc148: TppDBCalc;
    ppDBCalc156: TppDBCalc;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppLine81: TppLine;
    ppDBCalc89: TppDBCalc;
    ppDBCalc90: TppDBCalc;
    ppLabel72: TppLabel;
    ppDBText112: TppDBText;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppGroupFooterBand14: TppGroupFooterBand;
    ppLine83: TppLine;
    ppDBCalc93: TppDBCalc;
    ppDBCalc94: TppDBCalc;
    ppLabel74: TppLabel;
    ppDBText113: TppDBText;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppLine82: TppLine;
    ppDBCalc91: TppDBCalc;
    ppDBCalc92: TppDBCalc;
    ppLabel73: TppLabel;
// Inicio: SPP_201311_COB            : Contabilización de Aplicación de FPD
    TabSheet9: TTabSheet;
    Label14: TLabel;
    Panel26: TPanel;
    BitBtn40: TBitBtn;
    BitBtn41: TBitBtn;
    BitBtn42: TBitBtn;
    bbtnRepSusFPD: TBitBtn;
    Panel27: TPanel;
    bbtnFPDCnt: TBitBtn;
    bbtnFPDTransf: TBitBtn;
    bbtnFPDRepPrevio: TfcShapeBtn;
    bbtnFPDRepConta: TfcShapeBtn;
    ppdb11: TppDBPipeline;
    ppr11: TppReport;
    ppHeaderBand15: TppHeaderBand;
    ppDBText207: TppDBText;
    ppSystemVariable31: TppSystemVariable;
    ppSystemVariable32: TppSystemVariable;
    ppSystemVariable33: TppSystemVariable;
    ppLabel214: TppLabel;
    ppLabel219: TppLabel;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppDetailBand18: TppDetailBand;
    ppDBText208: TppDBText;
    ppDBText210: TppDBText;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppDBText213: TppDBText;
    ppDBText214: TppDBText;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppSummaryBand16: TppSummaryBand;
    ppLine143: TppLine;
    ppDBCalc157: TppDBCalc;
    ppDBCalc158: TppDBCalc;
    ppDBCalc159: TppDBCalc;
    ppDBCalc160: TppDBCalc;
    ppDBCalc161: TppDBCalc;
    ppLine151: TppLine;
    ppLabel230: TppLabel;
    ppDBCalc162: TppDBCalc;
    ppGroup29: TppGroup;
    ppGroupHeaderBand29: TppGroupHeaderBand;
    ppGroupFooterBand29: TppGroupFooterBand;
    ppLine152: TppLine;
    ppDBCalc163: TppDBCalc;
    ppDBCalc164: TppDBCalc;
    ppDBCalc165: TppDBCalc;
    ppDBCalc166: TppDBCalc;
    ppDBCalc167: TppDBCalc;
    ppDBText218: TppDBText;
    ppDBCalc168: TppDBCalc;
    ppParameterList11: TppParameterList;
    ppd11: TppDesigner;
    ppDBText219: TppDBText;
    ppDBText220: TppDBText;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
// Fin: SPP_201311_COB           : Contabilización de Aplicación de FPD
// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
    TabSheet10: TTabSheet;
    Label15: TLabel;
    Panel28: TPanel;
    BitBtn43: TBitBtn;
    BitBtn44: TBitBtn;
    Panel29: TPanel;
    BitBtn45: TBitBtn;
    fcShapeBtn25: TfcShapeBtn;
    BitBtn46: TBitBtn;
    fcShapeBtn26: TfcShapeBtn;
    ppdb12: TppDBPipeline;
    ppr12: TppReport;
    ppHeaderBand16: TppHeaderBand;
    ppDBText221: TppDBText;
    ppSystemVariable34: TppSystemVariable;
    ppSystemVariable35: TppSystemVariable;
    ppSystemVariable36: TppSystemVariable;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
  //Inicio HPC_201514_COB
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLine165: TppLine;
    ppLabel246: TppLabel;
    ppImage1: TppImage;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppDBText234: TppDBText;
    ppShape61: TppShape;
    pplblUsuario: TppLabel;
  //Final HPC_201514_COB
    ppDetailBand19: TppDetailBand;
    ppDBText222: TppDBText;
  //Inicio HPC_201514_COB
  //ppDBText223: TppDBText;
  //Final HPC_201514_COB
    ppDBText224: TppDBText;
    ppDBText225: TppDBText;
    ppDBText226: TppDBText;
    ppDBText227: TppDBText;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    ppSummaryBand17: TppSummaryBand;
    ppLine155: TppLine;
  //Inicio HPC_201514_COB
  //ppDBCalc169: TppDBCalc;
  //ppDBCalc170: TppDBCalc;
  //ppDBCalc171: TppDBCalc;
  //ppDBCalc172: TppDBCalc;
  //ppDBCalc173: TppDBCalc;
  //ppLine156: TppLine;
  //Final HPC_201514_COB
    ppLabel243: TppLabel;
  //Inicio HPC_201514_COB
  //ppDBCalc174: TppDBCalc;
  //Final HPC_201514_COB
    ppGroup30: TppGroup;
    ppGroupHeaderBand30: TppGroupHeaderBand;
    ppGroupFooterBand30: TppGroupFooterBand;
    ppLine157: TppLine;
    ppDBCalc175: TppDBCalc;
    ppDBCalc176: TppDBCalc;
    ppDBCalc177: TppDBCalc;
    ppDBCalc178: TppDBCalc;
    ppDBCalc179: TppDBCalc;
  //Inicio HPC_201514_COB
  //ppDBCalc180: TppDBCalc;
  //Final HPC_201514_COB
    ppParameterList12: TppParameterList;
    ppd12: TppDesigner;
//Inicio HPC_201523_COB
    TabSheet11: TTabSheet;
    Label16: TLabel;
    Panel30: TPanel;
    BitBtn47: TBitBtn;
    BitBtn48: TBitBtn;
    Panel31: TPanel;
    BitBtn49: TBitBtn;
    fcShapeBtn27: TfcShapeBtn;
    BitBtn50: TBitBtn;
    fcShapeBtn28: TfcShapeBtn;
    pprCXC: TppReport;
    ppHeaderBand17: TppHeaderBand;
    ppShape62: TppShape;
    ppDBText223: TppDBText;
    ppSystemVariable37: TppSystemVariable;
    ppSystemVariable38: TppSystemVariable;
    ppSystemVariable39: TppSystemVariable;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLabel255: TppLabel;
    ppLine156: TppLine;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLine174: TppLine;
    ppLabel258: TppLabel;
    ppImage2: TppImage;
    ppLabel259: TppLabel;
    ppDetailBand20: TppDetailBand;
    ppDBText231: TppDBText;
    ppDBText235: TppDBText;
    ppDBText236: TppDBText;
    ppDBText237: TppDBText;
    ppDBText238: TppDBText;
    ppDBText239: TppDBText;
    ppDBText240: TppDBText;
    ppDBText241: TppDBText;
    ppDBText242: TppDBText;
    ppDBText243: TppDBText;
    ppDBText244: TppDBText;
    ppSummaryBand18: TppSummaryBand;
    ppLabel260: TppLabel;
    ppGroup31: TppGroup;
    ppGroupHeaderBand31: TppGroupHeaderBand;
    ppGroupFooterBand31: TppGroupFooterBand;
    ppLine175: TppLine;
    ppDBCalc169: TppDBCalc;
    ppDBCalc170: TppDBCalc;
    ppDBCalc171: TppDBCalc;
    ppDBCalc172: TppDBCalc;
    ppDBCalc173: TppDBCalc;
    ppDBCalc174: TppDBCalc;
    ppLabel261: TppLabel;
    ppLine176: TppLine;
    ppParameterList13: TppParameterList;
    TabSheet12: TTabSheet;
    Label17: TLabel;
    Panel32: TPanel;
    BitBtn51: TBitBtn;
    BitBtn52: TBitBtn;
    Panel33: TPanel;
    BitBtn53: TBitBtn;
    fcShapeBtn29: TfcShapeBtn;
    BitBtn54: TBitBtn;
    fcShapeBtn30: TfcShapeBtn;
//Inicio HPC_201601_COB
    TabSheet13: TTabSheet;
    Label18: TLabel;
    Panel34: TPanel;
    BitBtn55: TBitBtn;
    Panel35: TPanel;
    BitBtn56: TBitBtn;
    fcShapeBtn31: TfcShapeBtn;
    BitBtn57: TBitBtn;
    fcShapeBtn32: TfcShapeBtn;
    ppLabel262: TppLabel;
    ppImage3: TppImage;
//Inicio HPC_201615_COB
//Componentes nuevos para la contabilización 
    TabSheet14: TTabSheet;
    PageControl1: TPageControl;
    TabSheet15: TTabSheet;
    Label19: TLabel;
    Panel36: TPanel;
    BitBtn58: TBitBtn;
    Panel37: TPanel;
    BitBtn59: TBitBtn;
    fcShapeBtn33: TfcShapeBtn;
    BitBtn60: TBitBtn;
    fcShapeBtn34: TfcShapeBtn;
    TabSheet17: TTabSheet;
    Label21: TLabel;
    Panel40: TPanel;
    BitBtn64: TBitBtn;
    Panel41: TPanel;
    BitBtn65: TBitBtn;
    fcShapeBtn37: TfcShapeBtn;
    BitBtn66: TBitBtn;
    fcShapeBtn38: TfcShapeBtn;
    ppImage4: TppImage;
    ppImage5: TppImage;
    ppImage6: TppImage;
//Final HPC_201615_COB
//Fin HPC_201601_COB
//Fin HPC_201523_COB
// Fin   HPC_201512_COB            : Contabilización de Aplicación de CCI
//Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
    TabSheet2: TTabSheet;
    Label6: TLabel;
    Panel12: TPanel;
    BitBtn15: TBitBtn;
    Panel13: TPanel;
    BitBtn16: TBitBtn;
    fcShapeBtn13: TfcShapeBtn;
    BitBtn17: TBitBtn;
    fcShapeBtn14: TfcShapeBtn;
    ppLabel40: TppLabel;
    ppLabel51: TppLabel;
    ppLabel62: TppLabel;
    ppLUsuario: TppLabel;
    ppLUser: TppLabel;
    ppSystemVariable40: TppSystemVariable;
    ppSystemVariable41: TppSystemVariable;
    ppLabel166: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
    btnExcelPla: TBitBtn;
    dbgExcel: TwwDBGrid;
    btnExcelCuoXBanco: TBitBtn;
    btnExcelCuoEfec: TBitBtn;
    btnExcelDevoBanco: TBitBtn;
    btnExcelDevoPla: TBitBtn;
    btnExcelDevoEfec: TBitBtn;
    btnExcelExtBanco: TBitBtn;
    btnExcelExtCCI: TBitBtn;
    btnExcelExtPla: TBitBtn;
// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
    btnExcelFPD: TBitBtn;
    btnExcelCXC: TBitBtn;
    btnExcelFSC: TBitBtn;
    btnExcelCCI: TBitBtn;
// Fin HPC_201736_COB
// Final HPC_201730_COB

//Fin HPC_201723_COB
    // Inicio HPC_201802_COB: Exportar a Excel los reportes sustento de la contabilización.
    btnExcelAnuApo: TBitBtn;
    btnExcelCobONP: TBitBtn;
    btnExcelAjusteCDO: TBitBtn;
    // Inicio: HPC_201809_COB
    // Variables para el nuevo reporte de extornos FSC
    TabSheet16: TTabSheet;
    Label20: TLabel;
    Panel38: TPanel;
    BitBtn18: TBitBtn;
    Panel39: TPanel;
    BitBtn19: TBitBtn;
    fcShapeBtn35: TfcShapeBtn;
    BitBtn20: TBitBtn;
    fcShapeBtn36: TfcShapeBtn;
    pprRepAplFsc: TppReport;
    ppHeaderBand18: TppHeaderBand;
    ppShape63: TppShape;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    pplTitAplFsc: TppLabel;
    ppLabel275: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLabel276: TppLabel;
    ppSystemVariable42: TppSystemVariable;
    ppLabel277: TppLabel;
    ppImage7: TppImage;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    pplUsuAplFsc: TppLabel;
    ppSystemVariable43: TppSystemVariable;
    ppDetailBand21: TppDetailBand;
    ppDBText245: TppDBText;
    ppDBText246: TppDBText;
    ppDBText247: TppDBText;
    ppDBText248: TppDBText;
    ppDBText249: TppDBText;
    ppDBText250: TppDBText;
    ppDBText251: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppDBText254: TppDBText;
    ppSummaryBand19: TppSummaryBand;
    ppShape65: TppShape;
    ppDBCalc181: TppDBCalc;
    ppDBCalc182: TppDBCalc;
    ppDBCalc183: TppDBCalc;
    ppDBCalc184: TppDBCalc;
    ppDBCalc185: TppDBCalc;
    ppLabel281: TppLabel;
    ppLine188: TppLine;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLine191: TppLine;
    ppLine192: TppLine;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppShape66: TppShape;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppLabel284: TppLabel;
    ppLabel285: TppLabel;
    ppLine193: TppLine;
    ppLine194: TppLine;
    ppDetailBand22: TppDetailBand;
    ppShape67: TppShape;
    ppDBText255: TppDBText;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    ppLine195: TppLine;
    ppLine196: TppLine;
    ppSummaryBand20: TppSummaryBand;
    ppShape68: TppShape;
    ppDBCalc186: TppDBCalc;
    ppLine197: TppLine;
    ppDBCalc187: TppDBCalc;
    ppGroup32: TppGroup;
    ppGroupHeaderBand32: TppGroupHeaderBand;
    pplSubTitAplFsc: TppLabel;
    ppDBText258: TppDBText;
    ppGroupFooterBand32: TppGroupFooterBand;
    ppShape69: TppShape;
    ppDBCalc188: TppDBCalc;
    ppDBCalc189: TppDBCalc;
    ppDBCalc190: TppDBCalc;
    ppDBCalc191: TppDBCalc;
    ppDBCalc192: TppDBCalc;
    ppLabel287: TppLabel;
    ppDBText259: TppDBText;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLine202: TppLine;
    ppLine203: TppLine;
    ppDBCalc193: TppDBCalc;
    ppGroup33: TppGroup;
    ppGroupHeaderBand33: TppGroupHeaderBand;
    ppShape70: TppShape;
    ppDBText260: TppDBText;
    ppDBText261: TppDBText;
    ppGroupFooterBand33: TppGroupFooterBand;
    ppLine204: TppLine;
    ppLine205: TppLine;
    ppLine206: TppLine;
    ppLine207: TppLine;
    ppLine208: TppLine;
    ppLine209: TppLine;
    ppDBCalc194: TppDBCalc;
    ppDBCalc195: TppDBCalc;
    ppDBCalc196: TppDBCalc;
    ppDBCalc197: TppDBCalc;
    ppDBCalc198: TppDBCalc;
    ppLine210: TppLine;
    ppLine211: TppLine;
    ppLabel288: TppLabel;
    ppDBText262: TppDBText;
    ppLine212: TppLine;
    ppDBCalc199: TppDBCalc;
    ppParameterList14: TppParameterList;
    BitBtn61: TBitBtn;
    // Inicio: COB_201822_HPC
    // Se añaden variables para nuevo reporte de sustento de pagos por resolver 
    TabSheet18: TTabSheet;
    Panel42: TPanel;
    btnRepSusPagxRes: TBitBtn;
    Panel43: TPanel;
    btnTransfaCont: TBitBtn;
    fcShapeBtn39: TfcShapeBtn;
    btnConPagxRes: TBitBtn;
    fcShapeBtn40: TfcShapeBtn;
    pprPrevioPagxRes: TppReport;
    BDEPPrevioPagxRes: TppBDEPipeline;
    ppHeaderBand19: TppHeaderBand;
    ppDetailBand23: TppDetailBand;
    ppDBText263: TppDBText;
    ppDBText264: TppDBText;
    ppDBText265: TppDBText;
    ppDBText266: TppDBText;
    ppDBText267: TppDBText;
    ppDBText268: TppDBText;
    ppDBText269: TppDBText;
    ppGroup34: TppGroup;
    ppGroupHeaderBand34: TppGroupHeaderBand;
    ppGroupFooterBand34: TppGroupFooterBand;
    ppImage8: TppImage;
    ppLabel274: TppLabel;
    ppSystemVariable44: TppSystemVariable;
    ppSystemVariable45: TppSystemVariable;
    ppLabel286: TppLabel;
    ppSystemVariable46: TppSystemVariable;
    ppLabel289: TppLabel;
    pplUsuPagxRes: TppLabel;
    ppLabel293: TppLabel;
    ppShape71: TppShape;
    ppImage9: TppImage;
    ppLabel309: TppLabel;
    ppImage10: TppImage;
    xTituloPagxRes: TppLabel;
    ppLabel324: TppLabel;
    ppLabel325: TppLabel;
    ppLabel329: TppLabel;
    ppLabel334: TppLabel;
    ppLabel292: TppLabel;
    ppDBCalc200: TppDBCalc;
    ppLabel294: TppLabel;
    ppDBCalc201: TppDBCalc;
    ppLine213: TppLine;
    ppLine214: TppLine;
    ppLine215: TppLine;
    ppLine216: TppLine;
    ppLine217: TppLine;
    ppLabel280: TppLabel;
    ppLabel291: TppLabel;
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppSummaryBand21: TppSummaryBand;
    Label22: TLabel;
    // Fin: COB_201822_HPC

    // Fin: HPC_201809_COB
    // Fin HPC_201802_COB
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure dbseMesExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtnContabTeleAhorroClick(Sender: TObject);
    procedure DatosFecha;
    procedure dbseAnoExit(Sender: TObject);
    procedure bbtnVerifCtasCCosTelClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure bbtnVerifCtasCCosBolClick(Sender: TObject);
    procedure bbtnVerifCtasCCosPlaClick(Sender: TObject);
    procedure bbtnVerifCtasCCosEfeClick(Sender: TObject);
    procedure bbtnTeleCorrigeClick(Sender: TObject);
    procedure bbtnPlanCorrigeClick(Sender: TObject);
    procedure bbtnBolDCorrigeClick(Sender: TObject);
    procedure bbtnBolDInconsClick(Sender: TObject);
    procedure bbtnTeleInconsClick(Sender: TObject);
    procedure bbtnPlanInconsClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure bbtnEfeTransClick(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure fcShapeBtn4Click(Sender: TObject);
    procedure fcShapeBtn5Click(Sender: TObject);
    procedure fcShapeBtn8Click(Sender: TObject);
    procedure fcShapeBtn9Click(Sender: TObject);
    procedure tsPlaEnter(Sender: TObject);
    procedure tsEfeEnter(Sender: TObject);
    procedure bbtnTELSustentoClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure fcShapeBtn7Click(Sender: TObject);
    procedure fcShapeBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure fcShapeBtn12Click(Sender: TObject);
    procedure fcShapeBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  //Inicio HPC_201615_COB
  //Se quitan botones para reubicarlos
  //  procedure BitBtn19Click(Sender: TObject);
  //  procedure fcShapeBtn13Click(Sender: TObject);
  //  procedure BitBtn20Click(Sender: TObject);
  //  procedure fcShapeBtn14Click(Sender: TObject);
  //  procedure BitBtn18Click(Sender: TObject);
  //Final HPC_201615_COB  
    procedure BitBtn21Click(Sender: TObject);
    procedure bbtnRepFSCClick(Sender: TObject);
    procedure bbtnCNTFonClick(Sender: TObject);
    procedure bbtnTransFonClick(Sender: TObject);
    procedure fcShapeBtn16Click(Sender: TObject);
    procedure fcShapeBtn15Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pcCNTChange(Sender: TObject);
    procedure tsBolEnter(Sender: TObject);
    procedure tsTelEnter(Sender: TObject);
    procedure tsFondoEnter(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure fcShapeBtn18Click(Sender: TObject);
    procedure fcShapeBtn17Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure fcShapeBtn20Click(Sender: TObject);
    procedure fcShapeBtn19Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure fcShapeBtn22Click(Sender: TObject);
    procedure fcShapeBtn21Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure fcShapeBtn24Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure fcShapeBtn23Click(Sender: TObject);
// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
    procedure bbtnONPRepSusClick(Sender: TObject);
    procedure bbtnONPContaClick(Sender: TObject);
    procedure bbtnONPRepPrevioClick(Sender: TObject);
    procedure bbtnONPTransfClick(Sender: TObject);
    procedure bbtnONPRepContaClick(Sender: TObject);
// Inicio: SPP_201311_COB            : Contabilización de Aplicación de FPD
    procedure bbtnRepSusFPDClick(Sender: TObject);
    procedure bbtnFPDCntClick(Sender: TObject);
    procedure bbtnFPDRepPrevioClick(Sender: TObject);
    procedure bbtnFPDTransfClick(Sender: TObject);
    procedure bbtnFPDRepContaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
// Fin: SPP_201311_COB            : Contabilización de Aplicación de FPD
// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
    procedure BitBtn44Click(Sender: TObject);
    procedure BitBtn43Click(Sender: TObject);
    procedure BitBtn46Click(Sender: TObject);
    procedure fcShapeBtn26Click(Sender: TObject);
    procedure BitBtn45Click(Sender: TObject);
    procedure fcShapeBtn25Click(Sender: TObject);
//Inicio HPC_201523_COB
    procedure BitBtn47Click(Sender: TObject);
    procedure BitBtn50Click(Sender: TObject);
    procedure BitBtn49Click(Sender: TObject);
    procedure fcShapeBtn28Click(Sender: TObject);
    procedure fcShapeBtn27Click(Sender: TObject);
    procedure BitBtn48Click(Sender: TObject);
    procedure BitBtn51Click(Sender: TObject);
    procedure BitBtn54Click(Sender: TObject);
    procedure fcShapeBtn30Click(Sender: TObject);
    procedure BitBtn53Click(Sender: TObject);
    procedure fcShapeBtn29Click(Sender: TObject);
    procedure BitBtn52Click(Sender: TObject);
//Inicio HPC_201601_COB
    procedure BitBtn55Click(Sender: TObject);
    procedure BitBtn57Click(Sender: TObject);
    procedure BitBtn56Click(Sender: TObject);
    procedure fcShapeBtn31Click(Sender: TObject);
    procedure fcShapeBtn32Click(Sender: TObject);
//Inicio HPC_201615_COB
//componentes adicionados para contabilización y reubicados
    procedure BitBtn58Click(Sender: TObject);
    procedure BitBtn60Click(Sender: TObject);
    procedure BitBtn59Click(Sender: TObject);
    procedure fcShapeBtn34Click(Sender: TObject);
    procedure fcShapeBtn33Click(Sender: TObject);
    procedure BitBtn64Click(Sender: TObject);
    procedure BitBtn66Click(Sender: TObject);
    procedure fcShapeBtn38Click(Sender: TObject);
    procedure BitBtn65Click(Sender: TObject);
    procedure fcShapeBtn37Click(Sender: TObject);
//Final HPC_201615_COB
//Final HPC_201601_COB
//Fin HPC_201523_COB
// Fin   HPC_201512_COB            : Contabilización de Aplicación de CCI
   //Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
   procedure BitBtn15Click(Sender: TObject);
   procedure BitBtn16Click(Sender: TObject);
   procedure BitBtn17Click(Sender: TObject);
   procedure fcShapeBtn13Click(Sender: TObject);
   procedure fcShapeBtn14Click(Sender: TObject);
// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
    procedure btnExcelPlaClick(Sender: TObject);
    procedure btnExcelCuoXBancoClick(Sender: TObject);
    procedure btnExcelCuoEfecClick(Sender: TObject);
    procedure btnExcelDevoBancoClick(Sender: TObject);
    procedure btnExcelDevoPlaClick(Sender: TObject);
    procedure btnExcelDevoEfecClick(Sender: TObject);
    procedure btnExcelExtBancoClick(Sender: TObject);
    procedure btnExcelExtCCIClick(Sender: TObject);
    procedure btnExcelExtPlaClick(Sender: TObject);
// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
    procedure btnExcelFPDClick(Sender: TObject);
    procedure btnExcelCXCClick(Sender: TObject);
    procedure btnExcelFSCClick(Sender: TObject);
    procedure btnExcelCCIClick(Sender: TObject);
// Fin HPC_201736_COB
// Final HPC_201730_COB

   //Fin HPC_201723_COB

    // Inicio HPC_201802_COB: Exportar a Excel los reportes sustento de la contabilización.
    procedure btnExcelAnuApoClick(Sender: TObject);
    procedure btnExcelCobONPClick(Sender: TObject);
    procedure btnExcelAjusteCDOClick(Sender: TObject);
    // Inicio: HPC_201809_COB
    // Nuevos botones para procesar la contabilización de extorno FSC  
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure fcShapeBtn36Click(Sender: TObject);
    procedure BitBtn61Click(Sender: TObject);
    procedure fcShapeBtn35Click(Sender: TObject);

    // Inicio: COB_201822_HPC
    // Nuevos procedimientos usados en contabilización de pagos x resolver
    procedure btnConPagxResClick(Sender: TObject);
    procedure btnTransfaContClick(Sender: TObject);
    procedure btnRepSusPagxResClick(Sender: TObject);
    procedure fcShapeBtn40Click(Sender: TObject);
    procedure fcShapeBtn39Click(Sender: TObject);
    // Fin: COB_201822_HPC

    // Fin: HPC_201809_COB
    // Fin HPC_201802_COB
private
    { Private declarations }
    xPeriodo : String;
    xCNT300  : String;
    xCNT311  : String;
    xCnt300r : String;
    xCnt311r : String;
    xMesdes  : String;
    bError   : Boolean;
    xWhereBusqueda : String;
    cLink    : String;
    xWhereExcluye  : String;

// Inicio: SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
    xWhereIncluyeLote : String;
// Fin: SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo

// Inicio HPC_201738_COB
// Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
    xCtaRefi : String;
// Fin HPC_201738_COB
    procedure CorrigeUnidadesDePago( cTipo : String );
    procedure FilIncos;
    procedure FilIncos2;
    procedure FilIncos3;
    procedure FilIncos4;
    procedure FilIncos5;
    procedure ImprimeInconsistenciaVerificaCuentaCCosto( cSQL : String );
    procedure ImprimeInconsistenciaPagosCRE310( cSQL : String );
    procedure ParametrosTeleahorro;
    procedure ParametrosPlanilla;
    procedure ParametrosBoleta;
    procedure ParametrosEfectivo;
    procedure ParametrosExtorno;
    procedure ParametrosAnulApo;
    procedure ParametrosFondo;
// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
    procedure ParametrosONP;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP
    procedure UpdatePlanilla;
    procedure CorrigeUnidadDePago2;
    function NroComp(xPeriodo:String):String;
    function NroDNI(xAsoid:String):String;
    procedure GrabaCaja(xAsoid,xPeriodo,xCrefPag,xCreDocPag,xUsuario:String;xCremtoCob:Currency);
    procedure ParametrosSorteo;
    procedure ParametrosDevolucionFondo;
    procedure ParametrosDevolucionFondoEFE;
    procedure ParametrosDevolucionFondoPLA;
// Inicio: SPP_201311_COB        : Contabilización de Aplicación de FPD
    procedure ParametrosAplicaFPD;
// Fin: SPP_201311_COB           : Contabilización de Aplicación de FPD
// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
    procedure ParametrosCCI;
// Fin  HPC_201512_COB            : Contabilización de Aplicación de CCI
//Inicio HPC_201523_COB
   procedure ParametrosCDO;
   Procedure ParametrosCXC;
//Final HPC_201523_COB
//Inicio HPC_201601_COB
   procedure ParametrosDevolucionFondoONP;
//Final HPC_201601_COB
//Inicio HPC_201615_COB
//Procedimiento para parametros de la contabilización de extorno de CCI
   procedure ParametrosExtornoCCI;
//Final HPC_201615_COB
//Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
   procedure ParametrosExtornoPlanilla;
   // Inicio: HPC_201809_COB
   // Nuevo procedimiento para la contabilización del extorno de FSC
   Procedure ParametrosExtornoFsc;
   // Fin: HPC_201809_COB

//Fin HPC_201723_COB

  public
    procedure TransferirContabilidad(cLote,cOrigen,xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r : String);
    procedure TransferirContabilidadBol(cLote,cOrigen,xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r : String);
    procedure TransferirContabilidad2(cLote,cOrigen,xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r : String);
  //Transferencia de Boleta de deposito por Devolucion al FSC
    procedure TransferirContBolDevFSC(cLote,cOrigen,xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r : String);

    procedure ReporteContabilizaCredito( cTabla, cLote,xPeriodo  : String );

// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
    procedure TransferirContabilidadONP(cLote,cOrigen,xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r : String);
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP

    { Public declarations }
  end;

var
  FContabilizacion: TFContabilizacion;
  wCalcUnaCuota : boolean;
  wTipoCont,wTipoCont2,sValCuota, sMontoCuota, sMontoCob, sAmort, sInteres, sFlat, sExceso,xMesAno : String;
  xMontoCuota, xMontoCob, xAmort, xInteres, xFlat, xExceso : double;
  xValCta, xPagFlat,xPagInteres,xPagAmort : double;

  xfecmes,xfecdia,xfectrim,xfecsem,xfecss,xfecaatri,xfecaasem,xfecaass : String;
  xDiaIni, xDiaFin, xMes, xAno : String;
  xTCambio : String;
// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
  xArchivo : String;
// Final HPC_201730_COB
implementation

uses COBDM1,COB001;

{$R *.DFM}


// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
procedure TFContabilizacion.ParametrosCCI;
begin
   wTipoCont := 'CC';
   wTipoCont2 := 'CCI';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
   xWhereIncluyeLote:=' ';
end;
// Fin   HPC_201512_COB            : Contabilización de Aplicación de CCI


procedure TFContabilizacion.fcShapeBtn2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFContabilizacion.dbseMesExit(Sender: TObject);
begin
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
end;

procedure TFContabilizacion.FormKeyPress(Sender: TObject; var Key: Char);
begin

 If key=#13 Then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;

end;

procedure TFContabilizacion.fcShapeBtn6Click(Sender: TObject);
var
   xSQL, ySQL, xAsoId, xCredId, xCuota : String;
   wDia, wMes, wAno : word;
   xDia, xMes, xAno : String;
begin
   if not wCalcUnaCuota then
   begin
      xAsoId  := DM1.cdsQry2.FieldByName('ASOID').AsString;
      xCredId := DM1.cdsQry2.FieldByName('CREDID').AsString;
      xCuota  := DM1.cdsQry2.FieldByName('CRECUOTA').AsString;
   end
   else
   begin
      xAsoId  := '0000214337';
      xCredId := '052002240001403';
      xCuota  := '26';
   end;

   xSQL := 'select ASOID,CREDID,CRECUOTA, nvl(CREMTO,0) CREMTO, nvl(CREAMORT,0) CREAMORT,'
          +'nvl(CREINTERES,0) CREINTERES,nvl(CREFLAT,0) CREFLAT,nvl(CREMTOEXC,0) CREMTOEXC,nvl(CREMTOCOB,0) CREMTOCOB,'
          +'CREESTID,CREESTADO '
          +'from CRE302 '
          +'where ASOID='+quotedstr(xAsoId)
          +' and CREDID='+quotedstr(xCredId)
          +' and CRECUOTA='+xCuota;
   DM1.cdsQry4.Close;
   DM1.cdsQry4.Filter:='';
   DM1.cdsQry4.Filtered:=False;
   DM1.cdsQry4.IndexFieldNames:='';
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   if DM1.cdsQry4.recordcount>1 then
   begin
      ShowMessage('Alerta, existe mas de una cuota para el Mismo crédito del Asociado!!!!');
      exit;
   end;
   sMontoCuota:= DM1.cdsQry4.FieldByName('CREMTO').AsString;
   sValCuota  := sMontoCuota;
   sAmort     := DM1.cdsQry4.FieldByName('CREAMORT').AsString;
   sInteres   := DM1.cdsQry4.FieldByName('CREINTERES').AsString;
   sFlat      := DM1.cdsQry4.FieldByName('CREFLAT').AsString;
   sExceso    := DM1.cdsQry4.FieldByName('CREMTOEXC').AsString;
   xValCta    := strtofloat(sValCuota);

   xMontoCuota:= strtofloat(sMontoCuota);
   xAmort     := DM1.FRound(strtofloat(sAmort),15,2);
   xInteres   := DM1.FRound(strtofloat(sInteres),15,2);
   xFlat      := DM1.FRound(strtofloat(sFlat),15,2);
   xExceso    := DM1.FRound(strtofloat(sExceso),15,2);

   xValCta:= DM1.cdsQry4.FieldByName('CREAMORT').AsFloat
            +DM1.cdsQry4.FieldByName('CREINTERES').AsFloat
            +DM1.cdsQry4.FieldByName('CREFLAT').AsFloat
            +DM1.cdsQry4.FieldByName('CREMTOEXC').AsFloat;

   xSQL := 'select ASOID,CREDID,CRECUOTA,CREANO,CREMES,CREFPAG,CREMTOCOB,CREAMORT,'
          +'CREINTERES,CREFLAT,CREMTOEXC,NROOPETMP,FREG '
          +'from CRE310 '
          +'where ASOID='+quotedstr(xAsoId)
          +' and CREDID='+quotedstr(xCredId)
          +' and CRECUOTA='+xCuota;
   ySQL := xSQL;
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.Filter:='';
   DM1.cdsDetalle.Filtered:=False;
   DM1.cdsDetalle.IndexFieldNames:='';
   DM1.cdsDetalle.DataRequest(xSQL);
   DM1.cdsDetalle.Open;
   DM1.cdsDetalle.IndexFieldNames:='FREG';
   DM1.cdsDetalle.First;
   xPagFlat    := 0;
   xPagInteres := 0;
   xPagAmort   := 0;
   while not DM1.cdsDetalle.EOF do
   begin
      xMontoCob := DM1.FRound(DM1.cdsDetalle.FieldByName('CREMTOCOB').AsFloat,15,2);
      DM1.cdsDetalle.Edit;
      DM1.cdsDetalle.FieldByName('CREMTOEXC').AsFloat  := 0;
      DM1.cdsDetalle.FieldByName('CREFLAT').AsFloat    := 0;
      DM1.cdsDetalle.FieldByName('CREINTERES').AsFloat := 0;
      DM1.cdsDetalle.FieldByName('CREAMORT').AsFloat   := 0;
      if xMontoCob>0 then
      begin
         if xPagFlat<xFlat then
         begin
            if (xFlat-xPagFlat)<xMontoCob then
               DM1.cdsDetalle.FieldByName('CREFLAT').AsFloat:=xFlat-xPagFlat
            else
               DM1.cdsDetalle.FieldByName('CREFLAT').AsFloat:=xMontoCob;
            xMontoCob := xMontoCob-DM1.FRound(DM1.cdsDetalle.FieldByName('CREFLAT').AsFloat,15,2);
            xPagFlat := xPagFlat+DM1.cdsDetalle.FieldByName('CREFLAT').AsFloat;
         end;
      end;
      if xMontoCob>0 then
      begin
         decodedate(DM1.cdsDetalle.FieldByName('CREFPAG').AsDateTime,wAno,wMes,wDia);
         xAno := inttostr(wAno);
         xMes := DM1.strzero(inttostr(wMes),2);
         if (xAno+xMes)>=(DM1.cdsDetalle.FieldByName('CREANO').AsString+DM1.cdsDetalle.FieldByName('CREMES').AsString) then
         begin
            if xPagInteres<xInteres then
            begin
               if (xInteres-xPagInteres)<xMontoCob then
                  DM1.cdsDetalle.FieldByName('CREINTERES').AsFloat:=xInteres-xPagInteres
               else
                  DM1.cdsDetalle.FieldByName('CREINTERES').AsFloat:=xMontoCob;
               xMontoCob := xMontoCob-DM1.FRound(DM1.cdsDetalle.FieldByName('CREINTERES').AsFloat,15,2);
               xPagInteres := xPagInteres+DM1.cdsDetalle.FieldByName('CREINTERES').AsFloat;
            end;
         end;
      end;
      if xMontoCob>0 then
      begin
         if xPagAmort<xAmort then
         begin
            if (xAmort-xPagAmort)<xMontoCob then
               DM1.cdsDetalle.FieldByName('CREAMORT').AsFloat:=xAmort-xPagAmort
            else
               DM1.cdsDetalle.FieldByName('CREAMORT').AsFloat:=xMontoCob;
            xMontoCob := xMontoCob-DM1.FRound(DM1.cdsDetalle.FieldByName('CREAMORT').AsFloat,15,2);
            xPagAmort := xPagAmort+DM1.cdsDetalle.FieldByName('CREAMORT').AsFloat;
         end;
      end;
      if xMontoCob>0 then
      begin
         DM1.cdsDetalle.FieldByName('CREMTOEXC').AsFloat:=xMontoCob;
      end;
      DM1.cdsDetalle.ApplyUpdates(0);
      DM1.cdsDetalle.Next;
   end;

end;

procedure TFContabilizacion.FormActivate(Sender: TObject);
var
   wAno, wMes, wDia : Word;
   xMes : String;
// Inicio HPC_201738_COB
// Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
   xSQL : String;
// Fin HPC_201738_COB
begin
   decodedate(Date,wAno,wMes,wDia);
   dbseAno.Text := inttostr(wAno);
   wMes:=wMes-1;
   if wMes<=0 then
   begin
      dbseMes.Text := '12';
      dbseAno.Text := inttostr(wAno-1)
   end
   else
   begin
      if wMes<10 then
         dbseMes.Text := '0'+inttostr(wMes)
      else
         dbseMes.Text := inttostr(wMes)
   end;

   cLink    := '';

   ParametrosTeleahorro;

   xCNT300  := 'CNT300COB';
   xCNT311  := 'CNT311COB';
   xCnt300r := 'CNT300VHN';
   xCnt311r := 'CNT311VHN';
   xCnt300r := 'CNT300';
   xCnt311r := 'CNT311';
// Inicio HPC_201738_COB
// Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
   xSQL := 'SELECT CUENTAID FROM CRE110 WHERE TIPCREID='+quotedstr('RE');
   DM1.cdsQry33.Close;
   DM1.cdsQry33.DataRequest(xSQL);
   DM1.cdsQry33.Open;
   xCtaRefi := DM1.cdsQry33.FieldByName('CUENTAID').AsString;
// Fin HPC_201738_COB  
end;

procedure TFContabilizacion.bbtnContabTeleAhorroClick(Sender: TObject);
var
   xCia, xSQL, xCNTComprob  : String;
   xNumComp : Integer;
begin
   try
   ParametrosTeleahorro;
   Screen.Cursor:=crHourGlass;
   wTipoCont := 'TE';
   wTipoCont2:= 'TEL';
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where TDIARID=''32'''
          +' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE ='+quotedstr( wTipoCont2 );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where TDIARID=''32'''
          +' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE ='+quotedstr( wTipoCont2 );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Compañía Principal ('02')
// Total Cobrado
   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, '
          +'                                 CCOSID,CNTLOTE, CNTGLOSA, CNTDEBEMN, CNTHABEMN ) '
// MONTO COBRADO (DEBE)
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTACOBD,'
          +'null CCOSID, A.UPROID LOTE,'
          +quotedstr('COBRADO: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'sum(NVL(A.CREMTOCOB,0)) DEBE,0.00 HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and A.CREESTID<>''13'' and A.CREESTID<>''99'''
          +'group by A.UPROID,B.CTACOBD '
// Amortizaciones
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, A.UPROID LOTE, '
          +quotedstr('AMORT: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREAMORT,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C '
          +'where '+xWhereBusqueda
//          +'  A.FOPERACTMP >= TO_DATE('+quotedstr(xDiaIni)+')'
//          +'  and A.FOPERACTMP <= TO_DATE('+quotedstr(xDiaFin)+')'
          +'  and A.CREESTID<>''13'' and A.CREESTID<>''99'''
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'group by B.CIAID,B.CUENTAID,C.CCOSID,A.UPROID '
//          +'having B.CIAID is null '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID,A.UPROID LOTE, '
          +quotedstr('EXCESOS: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C '
          +'where '+xWhereBusqueda
//          +'  A.FOPERACTMP >= TO_DATE('+quotedstr(xDiaIni)+')'
//          +'  and A.FOPERACTMP <= TO_DATE('+quotedstr(xDiaFin)+')'
          +'  and A.CREESTID<>''13'' and A.CREESTID<>''99'''
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'group by B.CIAID,B.CUENTAID,C.CCOSID,A.UPROID '
//          +'having B.CIAID is null '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAINT,'
          +'null CCOSID, A.UPROID LOTE,'
          +quotedstr('INTERES: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREINTERES,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
//          +'  A.FOPERACTMP >= TO_DATE('+quotedstr(xDiaIni)+')'
//          +'  and A.FOPERACTMP <= TO_DATE('+quotedstr(xDiaFin)+')'
          +'  and A.CREESTID<>''13'' and A.CREESTID<>''99'''
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'group by B.CIAID,A.UPROID,B.CTAINT '
       //   +'having B.CIAID is null '
// Flat
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAFLAT,'
          +'null CCOSID, A.UPROID LOTE,'
          +quotedstr('FLAT: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREFLAT,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          +'  and A.CREESTID<>''13'' and A.CREESTID<>''99'''
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'group by B.CIAID,A.UPROID,B.CTAFLAT '
       //   +'having B.CIAID is null '
// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          //+quotedstr(dbseAno.text+dbseMes.text)+',B.FILIAL,'
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, A.UPROID LOTE,'
          +quotedstr('OTRAS CIAS: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREAMORT,0))+sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          +'  and A.CREESTID<>''13'' and A.CREESTID<>''99'''
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'group by B.CIAID,A.UPROID, B.CUENTAID '
//          +'having B.CIAID is null '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';

          // NO SE VA HA USAR
          {
//////////////////////////////////////////////////////////////////////////////////////////////////////
// ASIENTOS DE LAS FILIALES
//////////////////////////////////////////////////////////////////////////////////////////////////////
// Monto Cobrado
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAH,'
          +'null CCOSID, A.UPROID LOTE,'
          +quotedstr('COBRADO: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'sum(NVL(A.CREAMORT,0))+sum(nvl(A.CREMTOEXC,0)) DEBE, 0.00 HABER '
          +'from CRE310 A,CRE110 B '
          +'where '+xWhereBusqueda
          +'  and A.CREESTID<>''13'' and A.CREESTID<>''99'''
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'group by B.CIAID,A.UPROID,CUENTAH '
          +'having NVL(B.CIAID,''02'') <> ''02'' '
// Amortización
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, A.UPROID LOTE,'
          +quotedstr('AMORT: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREAMORT,0))+sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310 A, CRE110 B, APO101 C '
          +'where '+xWhereBusqueda
//          +'  A.FOPERACTMP >= TO_DATE('+quotedstr(xDiaIni)+')'
//          +'  and A.FOPERACTMP <= TO_DATE('+quotedstr(xDiaFin)+')'
          +'  and A.CREESTID<>''13'' and A.CREESTID<>''99'''
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'group by B.CIAID,B.CUENTAID,C.CCOSID,A.UPROID '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';}

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// generando otros datos
   xSQL := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')+',CNTSERIE='+quotedstr('000')
          +',CNTNODOC='+quotedstr('TELE-'+dbseAno.text+dbseMes.text)
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when NVL(CNTDEBEMN,0)>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when NVL(CNTDEBEMN,0)>0 then NVL(CNTDEBEMN,0) else NVL(CNTHABEMN,0) end'
          +',CNTMTOLOC=case when NVL(CNTDEBEMN,0)>0 then NVL(CNTDEBEMN,0) else NVL(CNTHABEMN,0) end'
          +',CNTMTOEXT=case when NVL(CNTDEBEMN,0)>0 then round(NVL(CNTDEBEMN,0)/'+xTCambio+',2) else round(NVL(CNTHABEMN,0)/'+xTCambio+') end'
          +',CNTFEMIS='+quotedstr(xDiaFin)+',CNTFVCMTO='+quotedstr(xDiaFin)
          +',CNTFCOMP='+quotedstr(xDiaFin)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('TRANSF. DE COBRANZAS')
          +',DOCDES='+quotedstr('Bol.Depo')
          +',CNTDEBEME=round(NVL(CNTDEBEMN,0)/'+xTCambio+',2)'
          +',CNTHABEME=round(NVL(CNTHABEMN,0)/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL:='Delete from CNT311COB '
        +' where TDIARID='+quotedstr(wTipoCont)
        +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
        +'   and CNTMTOORI=0 AND CNTMTOLOC=0 AND CNTMTOEXT=0';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'update CNT311COB A '
//          +'set A.CNTGLOSA=(select trim(B.UPROABR)||'' (''||substr(A.CNTGLOSA,1,4)||'')'' '
          +'set A.CNTGLOSA=(select trim(B.UPROABR) '
          +'                 from APO102 B '
          +'                 where B.UPROID=A.CNTLOTE) '
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'update CNT311COB '
          +'set CNTGLOSA=CNTGLOSA||'+'-'+quotedstr(dbseAno.text+dbseMes.text)
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID,CNTLOTE from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' group by CIAID,CNTLOTE ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTLOTE';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 10000
      else
         xNumComp := 10000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Actualiza Lote como identificador de TeleAhorro
   xSQL := 'update CNT311COB '
          +'set CNTLOTE='+quotedstr(wTipoCont2)
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, ''32'', A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
//          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'A.CNTGLOSA CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +''''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,A.CNTGLOSA, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

   xSQL:='select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, ROWID from CNT311COB '
        +'where TDIARID='+quotedstr('32')
        +'  and CNTLOTE='+quotedstr(wTipoCont2)
        +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
        +' order by CIAID,CNTCOMPROB,CNTDH,CUENTAID,CCOSID ';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.Filter:='';
   DM1.cdsCEdu.Filtered:=False;
   DM1.cdsCEdu.IndexFieldNames:='';
   DM1.cdsCEdu.DataRequest(xSQL);
   DM1.cdsCEdu.Open;
   DM1.cdsCEdu.First;
   while not DM1.cdsCEdu.EOF do
     begin
       xCNTComprob := DM1.cdsCEdu.FieldByName('CNTCOMPROB').AsString;
       xNumComp    := 1;
       while (not DM1.cdsCEdu.EOF) and (DM1.cdsCEdu.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
         begin
           DM1.cdsCEdu.Edit;
           DM1.cdsCEdu.FieldByName('CNTREG').Value  := xNumComp;
           xNumComp := xNumComp+1;
           DM1.cdsCEdu.Next;
        end;
    end;

    DM1.AplicaDatos( DM1.cdsCEdu, 'CEDU' );

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;

procedure TFContabilizacion.DatosFecha;
var
   xSQL    : String;
   xFecCnt : String;
begin
   xDiaIni := '01/'+dbseMes.Text+'/'+dbseAno.Text;
   xMes := DM1.strZero(inttostr(strtoint(dbseMes.Text)+1),2);
   if strtoint(xMes)>12 then
      xDiaFin := '31/12/'+dbseAno.Text
   else
   begin
      xDiaFin := datetostr(strtodate('01/'+xMes+'/'+dbseAno.Text)-1);
   end;

   edtFecha.Text:=xDiaFin;
   xFecCnt      :=xDiaFin;
   xPeriodo     :=dbseAno.Text+dbseMes.Text;

   if xPeriodo='200703' then
   begin
      if (wTipoCont2='EFE') or (wTipoCont2='BOL') then
         xDiaFin := '11/04/2007';
   end;

   if xPeriodo='200704' then
   begin
      if (wTipoCont2='EFE') or (wTipoCont2='BOL') then
         xDiaIni := '12/04/2007';

      if (wTipoCont2='PLA') or (wTipoCont2='EFE') or (wTipoCont2='BOL') then
         xDiaFin := '19/05/2007';
   end;

   if xPeriodo='200705' then
   begin
      if wTipoCont2='PLA' then
      begin
         xDiaIni := '20/05/2007';
         xDiaFin := '31/05/2007';
      end;
      if (wTipoCont2='EFE') or (wTipoCont2='BOL') then
      begin
         xDiaIni := '20/05/2007';
         xDiaFin := '11/06/2007';
      end;
   end;

   if xPeriodo='200706' then
   begin
      if (wTipoCont2='EFE') or (wTipoCont2='BOL') then
      begin
         xDiaIni := '12/06/2007';
         xDiaFin := '30/06/2007';
      end;
   end;
   if xPeriodo='200902' then
   begin
      if (wTipoCont2='REFI') then
      begin
         xDiaIni := '01/10/2008';
         xDiaFin := '28/02/2009';
      end;
   end;

   dtpFecIni.Date:=StrToDate(xDiaIni);
   dtpFecFin.Date:=StrToDate(xDiaFin);

   xSQL := 'SELECT * FROM TGE181 WHERE MESIDR='+quotedstr(dbseMes.Text);
   DM1.cdsQry.close;
   DM1.cdsQry.DataRequest(Xsql);
   DM1.cdsQry.open;
   xMesDes:=dm1.cdsQry.FieldByName('MESDESL').AsString;

   xSQL := 'SELECT * FROM TGE114 WHERE TO_CHAR(FECHA,''DD/MM/YYYY'') = '+quotedstr( xFecCnt );
   DM1.cdsQry.close;
   DM1.cdsQry.DataRequest(Xsql);
   DM1.cdsQry.open;
   xfecmes  := dm1.cdsQry.FieldByName('FECMES').AsString;
   xfecdia  := dm1.cdsQry.FieldByName('FECDIA').AsString;
   xfectrim := dm1.cdsQry.FieldByName('FECTRIM').AsString;
   xfecsem  := dm1.cdsQry.FieldByName('FECSEM').AsString;
   xfecss   := dm1.cdsQry.FieldByName('FECSS').AsString;
   xfecaatri:= dm1.cdsQry.FieldByName('FECAATRI').AsString;
   xfecaasem:= dm1.cdsQry.FieldByName('FECAASEM').AsString;
   xfecaass := dm1.cdsQry.FieldByName('FECAASS').AsString;

   xSQL := 'SELECT * FROM TGE107 WHERE TO_CHAR(FECHA,''DD/MM/YYYY'') = '+quotedstr( xFecCnt );
   DM1.cdsQry.close;
   DM1.cdsQry.DataRequest(Xsql);
   DM1.cdsQry.open;
   xTCambio := dm1.cdsQry.fieldbyname('TCAMVBC').AsString;
   if xTCambio = '' then
      ShowMessage('No hay Tipo de cambio para el ' + xdiafin);
end;

procedure TFContabilizacion.dbseAnoExit(Sender: TObject);
begin
   DatosFecha;
end;

procedure TFContabilizacion.bbtnVerifCtasCCosTelClick(Sender: TObject);
var
   xSQL : String;
begin
   bError:=True;

   ParametrosTeleahorro;

// Verifica que esten todos los Centros de Costos
   xSQL:='Select distinct GLOSA, ''Sin Centro de Costo'' OBSERVACION, '
        +   '''INCONSISTENCIA DE TELEAHORRO'' TITULO '
        +'from ( '
        +  'select ''USE=''||A.USEID||'' y UPAGO=''||A.UPAGOID||'' y UPRO=''||A.UPROID||'' / ''||A.ASOAPENOM||'' / ''||A.CREMTOCOB GLOSA, C.CCOSID '
        +  'from CRE310 A, APO101 C '
        +  'where '+xWhereBusqueda
        //+  'where A.FOPERACTMP>='+quotedstr( xDiaIni )+' and A.FOPERACTMP<='+quotedstr( xDiaFin )+' '
        +   ' and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
        +   ' AND A.CREESTID<>''13'' AND A.CREESTID<>''99'' '
        +') XX '
        +'where CCOSID is null '
        +'order by GLOSA ';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );


// Verifica que los Tipos de Creditos tengan Cuenta Contable
   xSQL:='select distinct GLOSA, OBSERVACION, '
        +   '''INCONSISTENCIA DE TELEAHORRO'' TITULO '
        +'from ( '
        +  'select A.TIPCREID, B.CIAID, B.CUENTAID, B.CUENTAH, CTAINT, CTAFLAT, FILIAL, CTACOBD, '
        +     '''TIPO CREDITO ''||A.TIPCREID||'' ''||B.TIPCREDES GLOSA, ''FALTA CUENTA: ''||'
        +     'CASE WHEN CUENTAID is null THEN ''DEBE, '' ELSE '''' END||'
        +     'CASE WHEN CUENTAH is null  THEN ''HABER, '' ELSE '''' END||'
        +     'CASE WHEN CTAINT is null   THEN ''INTERES, '' ELSE '''' END||'
        +     'CASE WHEN CTAFLAT is null  THEN ''FLAT, '' ELSE '''' END||'
        +     'CASE WHEN CTACOBD is null  THEN ''COBRANZA, '' ELSE '''' END OBSERVACION '
        +  'from CRE310 A, CRE110 B '
        +  'where '+xWhereBusqueda
        //+  'where A.FOPERACTMP>='+quotedstr(xDiaIni)+' and A.FOPERACTMP<='+quotedstr(xDiaFin)+' '
        +   ' and B.TIPCREID(+)=A.TIPCREID '
        + ' ) XX '
        +'where CUENTAID is null or CUENTAH is null or CTAINT is null or CTAFLAT is null or CTACOBD is null';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );

   if bError then
      ShowMessage('ok');
end;

procedure TFContabilizacion.BitBtn2Click(Sender: TObject);
var
   xCia, xSQL, xSQL2, xCNTComprob  : String;
   xNumComp : Integer;
begin
   wTipoCont := 'PL';
   wTipoCont2 := 'PLA';
   ParametrosPlanilla;
   Screen.Cursor:=crHourGlass;
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where TDIARID=''32'''
          +' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE ='+quotedstr( wTipoCont2 );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where TDIARID=''32'''
          +' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE ='+quotedstr( wTipoCont2 );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Compañía Principal ('02')
// Total Cobrado
   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, CNTFEMIS, CNTFVCMTO,'
          +'                       CCOSID,CNTLOTE, CNTSERIE, CNTNODOC,CNTGLOSA, CNTDEBEMN, CNTHABEMN ) '

// MONTO COBRADO (DEBE)
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTACOBD, A.FREG, A.FOPERAC, '
          +'null CCOSID, A.UPROID LOTE, ''COBR'' CNTSERIE, A.NROOPE,'
          +quotedstr('COBRADO: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'sum(A.CREMTOCOB) DEBE,0.00 HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          + ' and B.TIPCREID(+) = A.TIPCREID '
          + ' and nvl(A.CREMTOCOB,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CTACOBD, A.FREG, A.FOPERAC '               //RMZ

// Inicio HPC_201738_COB
// Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
// Amortizaciones no refinanciados
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID, A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CUENTAID, A.FREG, A.FOPERAC,'
          +'null CCOSID,A.UPROID LOTE, ''AMOR'' CNTSERIE, A.NROOPE,'
          +quotedstr('AMORT: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(A.CREAMORT) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          + ' and B.TIPCREID(+) = A.TIPCREID '
          + ' and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          + ' and nvl(A.CREAMORT,0)>0 '
          + ' AND A.CREDID NOT LIKE ''%R%'' '
          +'group by A.UPROID,A.NROOPE,B.CUENTAID,B.CIAID, A.FREG, A.FOPERAC '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Amortizaciones refinanciados
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', '+quotedstr(xCtaRefi)+', A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CUENTAID, A.FREG, A.FOPERAC,'
          +'null CCOSID,A.UPROID LOTE, ''AMOR'' CNTSERIE, A.NROOPE,'
          +quotedstr('AMORT: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(A.CREAMORT) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          + ' and B.TIPCREID(+) = A.TIPCREID '
          + ' and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          + ' and nvl(A.CREAMORT,0)>0 '
          + ' AND A.CREDID LIKE ''%R%'' '
          +'group by A.UPROID,A.NROOPE,B.CUENTAID,B.CIAID, A.FREG, A.FOPERAC '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Fin HPC_201738_COB
// Excesos
          +'union all '
// Inicio HPC_201607_COB            : Cambiar Cuenta contable de Excesos
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUEEXC, A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CUENTAID, A.FREG, A.FOPERAC,'
          +'null CCOSID,A.UPROID LOTE, ''EXCE'' CNTSERIE, A.NROOPE,'
          +quotedstr('EXCESOS: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C  '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREMTOEXC,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CUEEXC,B.CIAID, A.FREG, A.FOPERAC '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Fin HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAINT, A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CTAINT, A.FREG, A.FOPERAC,'
          +'null CCOSID, A.UPROID LOTE, ''INTE'' CNTSERIE, A.NROOPE,'
          +quotedstr('INTERES: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(A.CREINTERES) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREINTERES,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CTAINT,B.CIAID, A.FREG, A.FOPERAC '
// Flat
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAFLAT, A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CTAFLAT, A.FREG, A.FOPERAC,'
          +'null CCOSID, A.UPROID LOTE, ''FLAT'' CNTSERIE, A.NROOPE,'
          +quotedstr('FLAT: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(A.CREFLAT) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREFLAT,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CTAFLAT,B.CIAID, A.FREG, A.FOPERAC '

//Inicio: DPP_201214_COB
// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',T.CTA_DESGRAV, A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CTAFLAT, A.FREG, A.FOPERAC,'
          +'null CCOSID, A.UPROID LOTE, ''FPD'' CNTSERIE, A.NROOPE,'
          +quotedstr('FPD: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(A.MONCOBDESGRAV) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, CRE301 C, APO107 T '
          +'where '+xWhereBusqueda
          + ' and not A.CREESTID in (''13'',''04'',''99'') '
          + ' and B.TIPCREID(+) = A.TIPCREID '
          + ' and nvl(A.MONCOBDESGRAV,0)>0 '
          + ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          + ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by A.UPROID,A.NROOPE,T.CTA_DESGRAV,B.CIAID, A.FREG, A.FOPERAC '
//Fin: DPP_201214_COB

// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID, A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CUENTAID, A.FREG, A.FOPERAC,'
          +'null CCOSID, A.UPROID LOTE, ''OTRA'' CNTSERIE, A.NROOPE,'
          +quotedstr('OTRAS CIAS: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' a, CRE110'+cLink+' B  '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
         +'group by A.UPROID, A.NROOPE, B.CUENTAID, B.CIAID, A.FREG, A.FOPERAC '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
//////////////////////////////////////////////////////////////////////////////////////////////////////
// ASIENTOS DE LAS FILIALES
//////////////////////////////////////////////////////////////////////////////////////////////////////
// Monto Cobrado
      xSQL2:=''
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAH, A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CUENTAH, A.FREG, A.FOPERAC,'
          +'null CCOSID, A.UPROID LOTE, ''COBR'' CNTSERIE, A.NROOPE,'
          +quotedstr('COBRADO: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) DEBE, 0.00 HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B  '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'group by A.UPROID,A.NROOPE,B.CUENTAH,B.CIAID, A.FREG, A.FOPERAC '
          +'having NVL(B.CIAID,''02'') <> ''02'' '
// Amortización
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID, A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CUENTAID, A.FREG, A.FOPERAC,'
          +'null CCOSID, A.UPROID LOTE, ''AMOR'' CNTSERIE, A.NROOPE,'
          +quotedstr('AMORT: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(A.CREAMORT) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C  '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREAMORT,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CUENTAID,B.CIAID, A.FREG, A.FOPERAC '
          +'having NVL(B.CIAID,''02'') <> ''02'' '
// Excesos
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID, A.FREG, A.FOPERAC,'
          //+quotedstr(dbseAno.text+dbseMes.text)+', ''16701'' CUENTAID, A.FREG, A.FOPERAC,'
          +'null CCOSID, A.UPROID LOTE, ''EXCE'' CNTSERIE, A.NROOPE,'
          +quotedstr('EXCESOS: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C  '
          +'where '+xWhereBusqueda
          + ' and not CREESTID in (''13'',''04'',''99'') '
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREMTOEXC,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CUENTAID,B.CIAID, A.FREG, A.FOPERAC '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
   //DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')+', CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=TO_DATE(SYSDATE), CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)     +', CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)   +', CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)      +', CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)+', CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X PLANILLA')
          +',DOCDES='+quotedstr('Cob.Plan')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2) '
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2) '
          +',CNTTS='+quotedstr('OV')+', CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   xSQL := 'update CNT311COB A '
          +'set A.CNTGLOSA=(select B.UPROABR from APO102 B '
          +'                where B.UPROID=A.CNTLOTE) '
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'update CNT311COB '
          +'set CNTGLOSA=CNTGLOSA||'+'-'+quotedstr(dbseAno.text+dbseMes.text)
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID,CNTLOTE from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' group by CIAID,CNTLOTE ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTLOTE';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 20014
      else
         xNumComp := 20014;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Actualiza Lote como identificador de Planilla
 //  xSQL := 'update CNT311COB '
 //         +'set CNTLOTE='+quotedstr(wTipoCont2)+','
 //         +'    CNTFCOMP=TO_DATE(CNTFCOMP,''DD/MM/YYYY'') '
 //         +'where TDIARID='+quotedstr(wTipoCont)
 //         +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   xSQL := 'update CNT311COB '
          +'set CNTLOTE='+quotedstr(wTipoCont2)+' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select a.*, rowid '
          +'from CNT311COB a '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         cdsPost(DM1.cdsQry3);
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
   begin
      ShowMessage('Nro. de Items no actualizados');
   end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;


// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'A.CNTGLOSA CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTLOTE ='+quotedstr( wTipoCont2 )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,A.CNTGLOSA, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;

procedure TFContabilizacion.BitBtn4Click(Sender: TObject);
var
   xCia, xSQL, xSQL2, xSQL3, xCNTComprob  : String;
   xNumComp : Integer;
begin
   wTipoCont := 'EF';
   wTipoCont2 := 'EFE';
   Screen.Cursor:=crHourGlass;
   ParametrosEfectivo;
   xSQL := 'Select CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, CNTFEMIS from CNT311COB '
          +'where CNTANOMM ='+quotedstr( dbseAno.text+dbseMes.text )
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
// Inicio: SPP_201403_COB          : Consistenciar Contabilización de Cobranzas en Efectivo
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )
          + xWhereIncluyeLote;
// Fin: SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   while not DM1.cdsQry3.Eof do
   begin
       // Borra Cabecera
       xSQL := 'delete from CNT300COB '
              +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
       // Inicio: SPP_201403_COB          : Consistenciar Contabilización de Cobranzas en Efectivo
              + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )
              + xWhereIncluyeLote;
       // Fin: SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       DM1.cdsQry3.Next;
   end;

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
// Inicio: SPP_201403_COB          : Consistenciar Contabilización de Cobranzas en Efectivo
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )
          + xWhereIncluyeLote;
// Fin: SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, '
          +'                       CNTFEMIS, CNTFVCMTO, CNTFCOMP,'
          +'                       CCOSID,CNTLOTE,CNTSERIE,CNTNODOC, CNTGLOSA, CNTDEBEMN, CNTHABEMN ) '
// MONTO COBRADO (DEBE)
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', '
          //+  '16209'' CTACAJA, '  //CTAPRINC CTACAJA, '
          +  'CASE WHEN SUBSTR(TO_CHAR(CREFPAG,''YYYYMMDD''),5,2)='''+DM1.StrZero(dbseMes.Text,2)+''' THEN max(CTAPRINC) ELSE ''16209'' END, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   '''EF''||A.OFDESID LOTE, ''COBR'' CNTSERIE, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID CNTNODOC, '
          +   'USUARIO GLOSA, sum(A.CREMTOCOB) DEBE, 0.00 HABER '
          +'from CRE310'+cLink+' A, TGE106 F '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +  'and F.CIAID=''02'' and F.TMONID=''N'' and F.BANCOID=''18'' and nvl(A.CREMTOCOB,0)>0 '
          +'group by CREFPAG, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID, USUARIO, A.OFDESID '
// Inicio HPC_201738_COB
// Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
// Amortizaciones no refinanciados
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID,'
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, '
          +   'NULL CCOSID, ''EF''||A.OFDESID LOTE, ''AMOR'' CNTSERIE, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID CNTNODOC,'
          +   'MAX(P.CTADES) GLOSA, '+'0.00 DEBE, sum(A.CREAMORT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C, TGE202 P '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREAMORT,0)>0 '
          +'  and P.CIAID=''02'' AND P.CUENTAID(+)=B.CUENTAID '
          +'   AND A.CREDID NOT LIKE ''%R%'' '
          +'group by B.CIAID, B.CUENTAID, CREFPAG,''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID, A.OFDESID '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Amortizaciones refinanciados
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', '+quotedstr(xCtaRefi)+', '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, '
          +   'NULL CCOSID, ''EF''||A.OFDESID LOTE, ''AMOR'' CNTSERIE, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID CNTNODOC,'
          +   'MAX(P.CTADES) GLOSA, '+'0.00 DEBE, sum(A.CREAMORT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C, TGE202 P '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREAMORT,0)>0 '
          +'  and P.CIAID=''02'' AND P.CUENTAID(+)=B.CUENTAID '
          +'  AND A.CREDID LIKE ''%R%'' '
          +'group by B.CIAID, B.CUENTAID, CREFPAG,''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID, A.OFDESID '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Fin HPC_201738_COB
// Excesos
// Inicio HPC_201607_COB            : Cambiar Cuenta contable de Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CUEEXC, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, '
          +   'NULL CCOSID, ''EF''||A.OFDESID LOTE, ''EXCE'' CNTSERIE, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID CNTNODOC,'
          +   '''EXCESOS'' GLOSA, 0.00 DEBE, sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREMTOEXC,0)>0 '
          +'group by B.CIAID, B.CUEEXC, CREFPAG,''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID, A.OFDESID '
          +'having NVL(B.CIAID,''02'') = ''02'' ';
// FIN   HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Intereses
   xSQL2 := ''
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAINT, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, '
          +   'null CCOSID, ''EF''||A.OFDESID LOTE, ''INTE'' CNTSERIE, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID CNTNODOC,'
          +   '''INTERESES POR PRESTAMO'' GLOSA, '+'0.00 DEBE, sum(A.CREINTERES) HABER '
          +'from CRE310'+cLink+' A, CRE110 B '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREINTERES,0)>0 '
          +'group by B.CIAID, B.CTAINT, CREFPAG, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID, A.OFDESID '
// Flat
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAFLAT, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, '
          +   'null CCOSID, ''EF''||A.OFDESID LOTE, ''FLAT'' CNTSERIE, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID CNTNODOC, '
          +   '''GASTOS ADMINISTRATIVOS POR PRESTAMOS'' GLOSA, 0.00 DEBE, sum(A.CREFLAT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREFLAT,0)>0 '
          +'group by B.CIAID, B.CTAFLAT, CREFPAG,''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID, A.OFDESID '

//Inicio: DPP_201214_COB
// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, '
          +   'null CCOSID, ''EF''||A.OFDESID LOTE, ''FPD'' CNTSERIE, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID CNTNODOC, '
          +   '''FPD POR PRESTAMOS'' GLOSA, 0.00 DEBE, sum(nvl(A.MONCOBDESGRAV,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, CRE301 C, APO107 T  '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
         +  ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
         +  ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID, T.CTA_DESGRAV, CREFPAG,''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID, A.OFDESID '
//Fin: DPP_201214_COB

// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, '
          +   'null CCOSID, ''EF''||A.OFDESID LOTE, ''OTRA'' CNTSERIE, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID CNTNODOC, '
          +   '''OTRAS COMPAÑIAS''  GLOSA, 0.00 DEBE, sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'group by B.CIAID, B.CUENTAID, CREFPAG, ''EFE-''||TO_CHAR(CREFPAG,''YYYYMMDD'')||''-''||A.OFDESID, A.OFDESID '
          +'having nvl(B.CIAID,''02'') <> ''02'' ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2);

// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
// Inicio HPC_201520_COB            : Contabilización de Cobranzas en Efectivo - Redondeo a dos Decimales
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+',2) end'
// Fin   HPC_201520_COB            : Contabilización de Cobranzas en Efectivo - Redondeo a dos Decimales
          +',CNTESTADO='+quotedstr('I')+', CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'+', CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)      +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)    +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)       +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem) +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COB.EN EFECTIVO')
          +',DOCDES='+quotedstr('Cob.Efec')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')+',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
// Inicio: SPP_201403_COB          : Consistenciar Contabilización de Cobranzas en Efectivo
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + xWhereIncluyeLote;
// Fin: SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, CNTLOTE, CNTNODOC from CNT311COB '
          +' where TDIARID=''EF'' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
// Inicio: SPP_201403_COB          : Consistenciar Contabilización de Cobranzas en Efectivo
          + xWhereIncluyeLote
// Fin: SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
          +' group by CIAID, CNTLOTE, CNTNODOC ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTNODOC';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 40000
      else
         xNumComp := 40000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID=''EF'' '
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='+quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + '  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select a.*, rowid '
          +'from CNT311COB a '
          +'where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         cdsPost(DM1.cdsQry3);
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
      if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
         ShowMessage('Nro. de Items no actualizados');
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
   begin
      ShowMessage('Nro. de Items no actualizados');
   end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
  xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'''COBRANZA ''||CNTNODOC CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +''''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          + ' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )+' '
 // Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
          + xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
         +' group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, A.CNTNODOC, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;

procedure TFContabilizacion.BitBtn3Click(Sender: TObject);
var
   cCampoFec, cCampoFPa, xCia, xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xCNTComprob, xAnoMes : String;
   xNumComp : Integer;
begin
   wTipoCont  := 'BO';
   wTipoCont2 := 'BOL';
   xAnoMes    := dbseAno.Text+dbseMes.Text;
   cCampoFPa  := 'CREFPAG';
   cCampoFec  := 'FREG';

   ParametrosBoleta;
   Screen.Cursor:=crHourGlass;
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Compañía Principal ('02')
// Total Cobrado
   xSQL1 :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, '
          +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, '
          +  'CNTHABEMN, CNTFEMIS, CNTFVCMTO ) ';

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE COBRANZAS X BOL.DEPOSITO DEL MES SOBRE CNT311COB
//-----------------------------------------------------------------------------------
// MONTO COBRADO (DEBE)
   xSQL2:='Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(xAnoMes)+', '
         +  'CASE WHEN SUBSTR(TO_CHAR('+cCampoFPa+',''YYYYMMDD''),1,6)='''+xAnoMes+''' THEN E.CTAPRINC '
         +       'WHEN SUBSTR(TO_CHAR('+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''4691203'' '
         +       'ELSE ''1641401'' END CUENTAID, '
         +  'null CCOSID, CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
         +  '''COBR'' CNTSERIE, A.NROOPE,'
         //+  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN E.CCBCOID ELSE SUBSTR(ASOAPENOM,1,40) END GLOSA, '
         +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' '
         +       'THEN E.CCBCOID ELSE H.ASODNI||''-''||SUBSTR(A.ASOAPENOM,1,31) END GLOSA, '
         +  'sum(NVL(A.CREMTOCOB,0)) DEBE, 0.00 HABER, A.'+cCampoFPa+', A.'+cCampoFec+' '
         +'From CRE310'+cLink+' A, TGE106'+cLink+' E, TGE105'+cLink+' F, APO201'+cLink+' H '
         +'where A.FORPAGID=''03'' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  xWhereExcluye
         +  ' and CREESTID NOT IN (''13'',''99'')'
         //+  ' and CREESTID NOT IN (''13'',''04'',''99'')'
         +  ' and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +  ' and nvl(A.CREMTOCOB,0)>0'
         +  ' and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +  ' and A.BANCOID=F.BANCOID '
         +  ' and A.ASOID=H.ASOID(+) '
         +'group by CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)='''+xAnoMes+''' THEN E.CTAPRINC '
         +  'WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''4691203'' ELSE ''1641401'' END, '
         +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END, '
         +  'A.NROOPE, A.'+cCampoFPa+', A.'+cCampoFec+', '
         +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN E.CCBCOID ELSE H.ASODNI||''-''||SUBSTR(A.ASOAPENOM,1,31) END '
// Inicio HPC_201738_COB
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
         +  'UNION ALL '
         +'Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(xAnoMes)+', '
         +  'CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)='''+xAnoMes+''' THEN E.CTAPRINC '
         +       'WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''4691203'' '
         +       'ELSE ''1641401'' END CUENTAID, '
         +  'null CCOSID, CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
         +  '''COBR'' CNTSERIE, A.NRO_OPERACION,'
         +  'CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' '
         +       'THEN E.CCBCOID ELSE H.ASODNI||''-''||SUBSTR(A.ASOAPENOM,1,31) END GLOSA, '
         +  'sum(NVL(A.IMPORTE,0)) DEBE, 0.00 HABER, A.FEC_OPERACION, A.'+cCampoFec+' '
         +'From COB_DES_CRO_CERRADO_DET A, TGE106 E, TGE105 F, APO201 H '
         +'where A.FORPAGID=''03'' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and A.FLGEST NOT IN (''13'')'
         +  ' and A.NRO_OPERACION is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +  ' and nvl(A.IMPORTE,0)>0'
         +  ' and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +  ' and A.BANCOID=F.BANCOID '
         +  ' and A.ASOID=H.ASOID(+) '
         +'group by CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)='''+xAnoMes+''' THEN E.CTAPRINC '
         +  'WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''4691203'' ELSE ''1641401'' END, '
         +  'CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END, '
         +  'A.NRO_OPERACION, A.FEC_OPERACION, A.'+cCampoFec+', '
         +  'CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN E.CCBCOID ELSE H.ASODNI||''-''||SUBSTR(A.ASOAPENOM,1,31) END '
// Fin HPC_201806_COB 
// Inicio HPC_201738_COB
// Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
// Amortizaciones no refinanciados
         +'union all '
         +'select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, null CCOSID, '
         +'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
         +'''AMOR'' CNTSERIE,  TO_CHAR(A.'+cCampoFec+',''YYYYMMDD'') , ''CREDITO DE CONSUMO'' GLOSA,'
         +'0.00 DEBE, sum(NVL(A.CREAMORT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
         +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C, TGE106'+cLink+' E '
         +'where A.FORPAGID=''03'' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
         + xWhereExcluye
         +'  and CREESTID NOT IN (''13'',''99'')'
         //+'  and CREESTID NOT IN (''13'',''04'',''99'')'
         +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +'  and nvl(A.CREAMORT,0)>0'
         +'  and B.TIPCREID(+)=A.TIPCREID '
         +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
         +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +'  AND A.CREDID NOT LIKE ''%R%'' '
         +'group by B.CIAID, B.CUENTAID, A.'+cCampoFec+', '
         +   'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END '
         +'having NVL(B.CIAID,''02'') = ''02'' '
// Amortizaciones refinanciados
         +'union all '
         +'select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +quotedstr(dbseAno.text+dbseMes.text)+', '+quotedstr(xCtaRefi)+' CUENTAID, null CCOSID, '
         +'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
         +'''AMOR'' CNTSERIE,  TO_CHAR(A.'+cCampoFec+',''YYYYMMDD'') , ''CREDITO DE CONSUMO'' GLOSA,'
         +'0.00 DEBE, sum(NVL(A.CREAMORT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
         +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C, TGE106'+cLink+' E '
         +'where A.FORPAGID=''03'' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
         + xWhereExcluye
         +'  and CREESTID NOT IN (''13'',''99'')'
         //+'  and CREESTID NOT IN (''13'',''04'',''99'')'
         +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +'  and nvl(A.CREAMORT,0)>0'
         +'  and B.TIPCREID(+)=A.TIPCREID '
         +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
         +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +'  AND A.CREDID LIKE ''%R%'' '
         +'group by B.CIAID, B.CUENTAID, A.'+cCampoFec+', '
         +   'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END '
// Fin HPC_201738_COB
         +'having NVL(B.CIAID,''02'') = ''02'' ';
// Excesos
   //xSQL3:='union all '
// Inicio HPC_201607_COB            : Cambiar Cuenta contable de Excesos
   xSQL3:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUEEXC,'
          +'null CCOSID, CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
          +'''EXCE'' CNTSERIE, TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''), ''EXCESOS'' GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, TGE106'+cLink+' E '
          +'where A.FORPAGID=''03'' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          //+'  and CREESTID NOT IN (''13'',''04'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null '
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          +'group by B.CIAID, B.CUEEXC, A.'+cCampoFec+', TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''), '
          +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Fin    HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
//EXCESOS CRONOGRAMA CERRADO
          +' UNION ALL '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', E.EXCCROCERR,'
          +'null CCOSID, CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
          +'''EXCE'' CNTSERIE, TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''), ''EXCESOS CRONOGRAMA CERRADO'' GLOSA, '
          +'0.00 DEBE, sum(NVL(A.IMPORTE,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from COB_DES_CRO_CERRADO_DET A, TGE106 E '
          +'where A.FORPAGID=''03'' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and A.FLGEST NOT IN (''13'')'
          +'  and A.NRO_OPERACION is not null and A.BANCOID is not null and A.CCBCOID is not null '
          +'  and nvl(A.IMPORTE,0)>0'
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          +'group by E.EXCCROCERR, A.'+cCampoFec+', TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''), '
          +  'CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END '
// Fin HPC_201806_COB
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +   quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAINT,'
          +   'null CCOSID, CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
          +   '''INTE'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''INTERESES POR PRESTAMOS'' GLOSA, '
          +   '0.00 DEBE, sum(nvl(A.CREINTERES,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, TGE106'+cLink+' E '
          +'where A.FORPAGID=''03'' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          //+'  and CREESTID NOT IN (''13'',''04'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null '
          +'  and nvl(A.CREINTERES,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          +'group by B.CIAID, B.CTAINT, A.'+cCampoFec+',  '
          +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END ';
// Flat
    //xSQL4:='union all '
    xSQL4:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CTAFLAT,'
          +'null CCOSID, CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
          +'''FLAT'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''GASTOS ADMINISTRATIVOS POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREFLAT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, TGE106'+cLink+' E '
          +'where A.FORPAGID=''03'' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          //+'  and CREESTID NOT IN (''13'',''04'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
          +'  and nvl(A.CREFLAT,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          +'group by B.CIAID, B.CTAFLAT, A.'+cCampoFec+', '
          +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END '

//Inicio: DPP_201214_COB
// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV,'
          +'null CCOSID, CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
          +'''FPD'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FPD POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.MONCOBDESGRAV,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, TGE106'+cLink+' E, CRE301 C, APO107 T  '
          +'where A.FORPAGID=''03'' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and a.CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          + ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          + ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID, T.CTA_DESGRAV, A.'+cCampoFec+', '
          +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END '
//Fin: DPP_201214_COB


// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +'null CCOSID, CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END LOTE, '
          +'''FILI'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FILIALES'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREAMORT,0))+sum(nvl(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' a, CRE110'+cLink+' B, TGE106'+cLink+' E '
          +'where A.FORPAGID=''03'' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          //+'  and CREESTID NOT IN (''13'',''04'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          +'group by B.CUENTAID, B.CIAID, A.'+cCampoFec+', '
          +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''BOL2'' ELSE ''BOL1'' END '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
   xSQL:=xSQL1+xSQL2+xSQL3+xSQL4;

   TRY
     xSQL:=xSQL1+xSQL2;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL3;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL4;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT

   END;

// generando otros datos
  xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X BOL.DEPO')
          +',DOCDES='+quotedstr('Cob.Bole')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID, to_date(CNTFVCMTO), CNTLOTE';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='    +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='  +quotedstr(wTipoCont)
                +'   and CNTANOMM=' +quotedstr(dbseAno.text+dbseMes.text)
//                +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
                +'   and CNTFVCMTO='  +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='  +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
//                +'   and CNTNODOC=' +quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;


// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;

   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''35'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''BOLETAS DEPOSITO '' CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('35')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;


procedure TFContabilizacion.bbtnVerifCtasCCosBolClick(Sender: TObject);
var
   xSQL, xGlosa,xAnoMEs: String;
begin
// Verifica que esten todos los Centros de Costos

   ParametrosBoleta;

   bError:=True;
   xAnoMes :=dbseAno.Text+dbseMes.Text;

// Cuando no hay BancoId,CiaId,CcBcoId ... 12-01-2005
    xSQL:=  'SELECT ''Nro. Crédito: ''||A.CREDID||'' Cuota: ''||A.CRECUOTA||'' Monto Cob.: ''||A.CREMTOCOB||'' CREFPAG: ''||A.CREFPAG GLOSA,'+
            '''Cód. Modular: ''||A.ASOCODMOD||'' - ''|| A.ASOAPENOM OBSERVACION,' +
            '''BANCO Y CTA. CTE. MAL ASIGNADOS'' TITULO' +
            ' FROM CRE310'+cLink+' A '+
            ' WHERE ' + xWhereBusqueda + ' AND A.CREESTID<>''13'' and A.CREESTID<>''04''' +
            ' and A.CREESTID<>''99'' AND NOT EXISTS (SELECT CIAID,BANCOID,CCBCOID FROM TGE106' +
            ' WHERE ' + xWhereBusqueda + ' AND A.CREESTID<>''13'' and A.CREESTID<>''04''' +
            ' and A.CREESTID<>''99'' AND A.CIAID=CIAID AND A.BANCOID=BANCOID AND A.CCBCOID=CCBCOID)';

   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );

// Boletas de Depósito
   xSQL := 'select GLOSA, ''Sin Centro de Costo'' OBSERVACION, '
          +'''INCONSISTENCIA DE BOLETAS DE DEPOSITO'' TITULO '
          +'from( '
          +'select ''USE=''||A.USEID||'' y UPAGO=''||A.UPAGOID||'' y UPRO=''||A.UPROID||'' / ''||A.ASOAPENOM||''/ ''||BANCOABR||''/ ''||A.CREMTOCOB  GLOSA, '
          +  'C.CCOSID '
          +'from CRE310'+cLink+' A, APO101'+cLink+' C, TGE105 D '
          +'where '+xWhereBusqueda
          +'  and CREESTID<>''13'' and CREESTID<>''99'' and CREESTID<>''04'''
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null and A.CCBCOID is not null'
          +'  and nvl(A.CREAMORT,0)>0'
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and a.bancoid=d.bancoid(+) '
          +') XX '
          +'where CCOSID is null '
          +'order by GLOSA ';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );

// Verifica que los Tipos de Creditos tengan Cuenta Contable
   xSQL:='select distinct GLOSA, OBSERVACION, '
        +  '''INCONSISTENCIA DE BOLETAS DE DEPOSITO'' TITULO '
        +'from ( '
        +  'select A.TIPCREID, B.CIAID, B.CUENTAID, B.CUENTAH, CTAINT, CTAFLAT, FILIAL, CTACOBD, '
        +     '''TIPO CREDITO ''||A.TIPCREID||'' ''||B.TIPCREDES GLOSA, ''FALTA CUENTA: ''||'
        +     'CASE WHEN CUENTAID is null THEN ''DEBE, '' ELSE '''' END||'
        +     'CASE WHEN CUENTAH is null  THEN ''HABER, '' ELSE '''' END||'
        +     'CASE WHEN CTAINT is null   THEN ''INTERES, '' ELSE '''' END||'
        +     'CASE WHEN CTAFLAT is null  THEN ''FLAT, '' ELSE '''' END||'
        +     'CASE WHEN CTACOBD is null  THEN ''COBRANZA, '' ELSE '''' END OBSERVACION '
        +  'from CRE310'+cLink+' A, CRE110'+cLink+' B '
        +  'where '+xWhereBusqueda
        +    'and CREESTID<>''13''  and CREESTID<>''99'' and CREESTID<>''04'' '
        +    'and CREDOCPAG is not null '
        +    'and A.BANCOID is not null and A.CCBCOID is not null '
        +    'and nvl(A.CREAMORT,0)>0 '
        +    'and B.TIPCREID(+)=A.TIPCREID '
        +' ) XX '
        +'where CUENTAID is null or CUENTAH is null or CTAINT is null or CTAFLAT is null or CTACOBD is null';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );

   xSQL:='select GLOSA, ''Sin Cuenta Contable - Asociado ''||ASOID||'' CR:''||CREDID||'' CT:''||CRECUOTA OBSERVACION, '
        +  '''INCONSISTENCIA DE BOLETAS DE DEPOSITO'' TITULO '
        +'from( '
        +'select ''Banco: ''||A.BANCOID||'' Cuenta Corriente: ''||A.CCBCOID GLOSA, '
        +  'A.ASOID, A.CREDID, A.CRECUOTA, E.CTAPRINC '
        +'from CRE310'+cLink+' A, TGE106 E '
        +'where '+xWhereBusqueda
        +  'and CREESTID<>''13'' and CREESTID<>''99'' and CREESTID<>''04'' '
        +  'and CREDOCPAG is not null '
        +  'and A.BANCOID is not null and A.CCBCOID is not null '
        +  'and nvl(A.CREMTOCOB,0)>0 '
        +  'and E.BANCOID(+)=A.BANCOID and E.CCBCOID(+)=A.CCBCOID '
        +  'and E.CIAID(+)=''02'' '
        +' ) XX '
        +'where CTAPRINC is null';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );

   if bError then
      ShowMessage('ok');
end;


procedure TFContabilizacion.bbtnVerifCtasCCosPlaClick(Sender: TObject);
var
   xSQL : String;
begin
   bError:=True;

   ParametrosPlanilla;
   UpdatePlanilla;

// Verifica que esten todos los Centros de Costos
   xSQL:='select distinct GLOSA, ''Sin Centro de Costo'' OBSERVACION, '
        +   '''INCONSISTENCIA DE PLANILLAS'' TITULO '
        +'from( '
        +'select ''USE=''||A.USEID||'' y UPAGO=''||A.UPAGOID||'' y UPRO=''||A.UPROID||'' / ''||A.ASOAPENOM||'' / ''||A.CREMTOCOB GLOSA,C.CCOSID '
        +'from CRE310'+cLink+' A, APO101'+cLink+' C '
        +'where '+xWhereBusqueda
        //+'where A.TIPOCONT='+quotedstr(wTipoCont2)
        //+'  and A.CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
        +'  and C.USEID(+)=A.USEID   and C.UPAGOID(+)=A.UPAGOID   and C.UPROID(+)=A.UPROID '
        +'  AND A.CREESTID<>''13'' AND A.CREESTID<>''99'' AND A.CREESTID<>''04'' '
        +') XX '
        +'where CCOSID is null '
        +'order by GLOSA ';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );

// Verifica que los Tipos de Creditos tengan Cuenta Contable
   xSQL:='select distinct GLOSA, OBSERVACION, '
        +   '''INCONSISTENCIA DE PLANILLAS'' TITULO '
        +'from ( '
        +  'select A.TIPCREID, B.CIAID, B.CUENTAID, B.CUENTAH, CTAINT, CTAFLAT, FILIAL, CTACOBD, '
        +     '''TIPO CREDITO ''||A.TIPCREID||'' ''||B.TIPCREDES GLOSA, ''FALTA CUENTA: ''||'
        +     'CASE WHEN CUENTAID is null THEN ''DEBE, '' ELSE '''' END||'
        +     'CASE WHEN CUENTAH is null  THEN ''HABER, '' ELSE '''' END||'
        +     'CASE WHEN CTAINT is null   THEN ''INTERES, '' ELSE '''' END||'
        +     'CASE WHEN CTAFLAT is null  THEN ''FLAT, '' ELSE '''' END||'
        +     'CASE WHEN CTACOBD is null  THEN ''COBRANZA, '' ELSE '''' END OBSERVACION '
        +  'from CRE310'+cLink+' A, CRE110'+cLink+' B '
        +  'where '+xWhereBusqueda
        //+  'where A.TIPOCONT='+quotedstr(wTipoCont2)
        //+   ' and A.CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
        +   ' and B.TIPCREID(+)=A.TIPCREID  AND A.CREESTID<>''13'' AND A.CREESTID<>''99'' AND A.CREESTID<>''04'' '
        +' ) XX '
        +'where CUENTAID is null or CUENTAH is null or CTAINT is null or CTAFLAT is null or CTACOBD is null';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );

   if bError then
      ShowMessage('ok');
end;


procedure TFContabilizacion.bbtnVerifCtasCCosEfeClick(Sender: TObject);
var
   xSQL,xPeriodo : String;
   xAno,xMes:Integer;
begin
   bError:=True;

   ParametrosEfectivo;

// Verifica que esten todos los Centros de Costos
   xSQL := 'select distinct GLOSA, ''Sin Centro de Costo'' OBSERVACION, '
          +   '''INCONSISTENCIA DE COBRANZAS EN EFECTIVO'' TITULO '
          +' from( '
          +'select ''USE=''||A.USEID||'' y UPAGO=''||A.UPAGOID||'' y UPRO=''||A.UPROID||'' / ''||A.ASOAPENOM||''/ ''||BANCOABR||''/ ''||A.CREMTOCOB GLOSA, C.CCOSID '
          +'from CRE310'+cLink+' A, APO101'+cLink+' C, TGE105 D '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          + ' and C.USEID(+)=A.USEID  and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          + ' and a.bancoid=d.bancoid(+) '
          +') XX '
          +'where CCOSID is null '
          +'order by GLOSA ';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );

// Verifica que los Tipos de Creditos tengan Cuenta Contable
   xSQL:='select distinct GLOSA, OBSERVACION, '
        +   '''INCONSISTENCIA DE COBRANZAS EN EFECTIVO'' TITULO '
        +'from ( '
        +  'select A.TIPCREID, B.CIAID, B.CUENTAID, B.CUENTAH, CTAINT, CTAFLAT, FILIAL, CTACOBD, '
        +     '''TIPO CREDITO ''||A.TIPCREID||'' ''||B.TIPCREDES GLOSA, ''FALTA CUENTA: ''||'
        +     'CASE WHEN B.CUENTAID is null THEN ''DEBE, '' ELSE '''' END||'
        +     'CASE WHEN CUENTAH is null  THEN ''HABER, '' ELSE '''' END||'
        +     'CASE WHEN CTAINT is null   THEN ''INTERES, '' ELSE '''' END||'
        +     'CASE WHEN CTAFLAT is null  THEN ''FLAT, '' ELSE '''' END||'
        +     'CASE WHEN CTACOBD is null  THEN ''COBRANZA, '' ELSE '''' END OBSERVACION '
        +  'from CRE310'+cLink+' A, CRE110'+cLink+' B '
        +  'Where '+xWhereBusqueda
        +   ' and CREESTID NOT IN (''13'',''04'',''99'')'
        +    'and B.TIPCREID(+) = A.TIPCREID '
        +' ) XX '
        +'where CUENTAID is null or CUENTAH is null or CTAINT is null or CTAFLAT is null or CTACOBD is null';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );

   if bError then
      ShowMessage('ok');
end;

procedure TFContabilizacion.bbtnTeleCorrigeClick(Sender: TObject);
begin
   ParametrosTeleahorro;
   CorrigeUnidadesDePago( 'TELEAHORRO' );

   ShowMessage('Proceso Concluido');
end;

procedure TFContabilizacion.bbtnPlanCorrigeClick(Sender: TObject);
begin
   ParametrosPlanilla;
   UpdatePlanilla;
   CorrigeUnidadesDePago( 'PLANILLA' );

   ShowMessage('Proceso Concluido');
end;

procedure TFContabilizacion.bbtnBolDCorrigeClick(Sender: TObject);
begin
   ParametrosBoleta;
   CorrigeUnidadesDePago( 'BOLETAS' );

   ShowMessage('Proceso Concluido');
end;


procedure TFContabilizacion.CorrigeUnidadesDePago( cTipo : String );
var
   xSql:string;
begin

  Screen.Cursor:=crHourGlass;

  // Primera pasada pones la Useid Uproid y Upagoid del Apo201

  // Filtra del CRE310 Aquellas Uses Uproid Upagoid no estan en APO101

  if cTipo='TELEAHORRO' then
     FilIncos;   // TELEAHORROS;

  if cTipo='BOLETAS' then
     FilIncos2;  // boleta de deposito;

  if cTipo='PLANILLA' then
     FilIncos3;  // Planilla de Regiones

  if cTipo='EFECTIVO' then
     FilIncos5;  // Efectivo

  while not DM1.cdsQry1.Eof do
  begin
     //Filtra del CRE301 La cuota a modificar               ¿
     xSQL := 'SELECT A.* FROM CRE310 A '
           + 'WHERE ASOID='''  +DM1.cdsQry1.FieldByName('ASOID').AsString   +''' '
           +  'and CREDID='''  +DM1.cdsQry1.FieldByName('CREDID').AsString  +''' '
           +  'and CRECUOTA='+DM1.cdsQry1.FieldByName('CRECUOTA').AsString;
     DM1.cdsCambios.Close;
     DM1.cdsCambios.DataRequest(xSQL);
     DM1.cdsCambios.Open;
     if DM1.cdsCambios.RecordCount >= 1 then
       Begin
         while not DM1.cdsCambios.Eof do
           begin
           // Actualiza la USEID, UPROID, UPAGOID de la tabla APO201
              xSql:= 'Select asoid,useid,uproid,upagoid From APO201 Where ASOID='''+DM1.cdsCambios.FieldByName('ASOID').AsString +''' ';
              DM1.cdsQry2.Close;
              DM1.cdsQry2.DataRequest(xSql);
              DM1.cdsQry2.Open;

              If DM1.cdsQry2.RecordCount >=1 then
                begin
                  DM1.cdsCambios.Edit;
                  DM1.cdsCambios.FieldByName('USEID').AsString  := DM1.cdsQry2.FieldByName('USEID').AsString ;
                  DM1.cdsCambios.FieldByName('UPROID').AsString := DM1.cdsQry2.FieldByName('UPROID').AsString ;
                  DM1.cdsCambios.FieldByName('UPAGOID').AsString:= DM1.cdsQry2.FieldByName('UPAGOID').AsString ;
                  DM1.cdsCambios.ApplyUpdates(0);
                end;

            DM1.cdsCambios.Next;
         End
     End;
     DM1.cdsQry1.Next;
  end;


  // Segunda pasada actualiza del APO101 el Upagoid

  //Filtra del CRE310 Aquellas Uses Uproid Upagoid no estan en APO101

  if cTipo='TELEAHORRO' then
     FilIncos;      //TELEAHORROS;

  if cTipo='BOLETAS' then
     FilIncos2;     //Boleta de deposito;

  if cTipo='PLANILLA' then
     FilIncos3;     //Planilla de Regiones

  if cTipo='EFECTIVO' then
     FilIncos5;     // Efectivo

  while not DM1.cdsQry1.Eof do
  begin
     //Filtra del CRE301 La cuota a modificar la unida de pago
     xSql := 'SELECT * FROM CRE310 '
           + 'WHERE ASOID ='''    +DM1.cdsQry1.FieldByName('ASOID').AsString   +''' '
           +  ' and CREDID = '''  +DM1.cdsQry1.FieldByName('CREDID').AsString  +''' '
           +  ' and CRECUOTA = '''+DM1.cdsQry1.FieldByName('CRECUOTA').AsString+''' ' ;
     DM1.cdsCambios.Close;
     DM1.cdsCambios.DataRequest(xSQL);
     DM1.cdsCambios.Open;
     if DM1.cdsCambios.RecordCount >= 1 then
     begin
        while not DM1.cdsCambios.Eof do
        begin
           // Actualiza la Upagoid de la tabla APO101
           xSql:= 'Select * From APO101 Where USEID='''+DM1.cdsCambios.FieldByName('USEID').AsString +
                  ''' and UPROID='''+DM1.cdsCambios.FieldByName('UPROID').AsString +''' ';
           DM1.cdsQry2.Close;
           DM1.cdsQry2.DataRequest(xSql);
           DM1.cdsQry2.Open;

           if DM1.cdsQry2.RecordCount >=1 then
           begin
              DM1.cdsCambios.Edit;
              DM1.cdsCambios.FieldByName('UPAGOID').AsString := DM1.cdsQry2.FieldByName('UPAGOID').AsString ;
              DM1.cdsCambios.ApplyUpdates(0);
           end
           else
             //SI NO LO ENCUENTRA POR UPROID+USEID LO BUSCA POR UPROID+UPAGOID
           begin
              xSql:= 'Select * From APO101 Where UPAGOID='''+DM1.cdsCambios.FieldByName('UPAGOID').AsString +
                     ''' and UPROID='''+DM1.cdsCambios.FieldByName('UPROID').AsString +''' ';
              DM1.cdsQry2.Close;
              DM1.cdsQry2.DataRequest(xSql);
              DM1.cdsQry2.Open;
              if DM1.cdsQry2.RecordCount>= 1 then
              begin
                 DM1.cdsCambios.Edit;
                 DM1.cdsCambios.FieldByName('USEID').AsString := DM1.cdsQry2.FieldByName('USEID').AsString ;
                 DM1.cdsCambios.ApplyUpdates(0);
              end;

           end;

           DM1.cdsCambios.Next;
        end
     end;

     DM1.cdsQry1.Next;
  end;

	Screen.Cursor:=crDefault;

end;


//Filtra del CRE310 Aquellas Uses Uproid Upagoid no estan en APO101
procedure TFContabilizacion.FilIncos;
begin
  xSql:='SELECT * FROM '
       + '( Select A.ASOID, A.CREDID, A.CRECUOTA, A.USEID, A.UPROID, A.UPAGOID, B.USEID BUSEID, '
       +      'B.UPROID BUPROID, B.UPAGOID BUPAGOID, B.CCOSID BCCOSID '
       +   'From ( SELECT ASOID, CREDID, CRECUOTA, USEID, UPROID, UPAGOID '
       +          'FROM CRE310 A '
       +          'where '+xWhereBusqueda
       //+          'WHERE FOPERACTMP >= '''+xDiaIni+''' '
       //+            'and FOPERACTMP <= '''+xDiaFin+''' '
       +        ' ) A,'
       +     'APO101 B '
       +   'Where A.USEID=B.USEID(+) AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) '
       + ') C '
       +'WHERE BUSEID IS NULL';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
end;


//Filtra del CRE310 Aquellas Uses Uproid Upagoid no estan en APO101
procedure TFContabilizacion.FilIncos2;
begin
  xSQL:='SELECT * FROM '
       +  '( SELECT  A.ASOID, A.CREDID, A.CRECUOTA, A.USEID, A.UPROID, A.UPAGOID, B.USEID BUSEID, '
       +       'B.UPROID BUPROID, B.UPAGOID BUPAGOID, B.CCOSID BCCOSID '
       +    'FROM ( SELECT ASOID, CREDID, CRECUOTA, USEID, UPROID, UPAGOID '
       +           'From CRE310 A '
       +           'where '+xWhereBusqueda
       //+           'where FORPAGID=''03'' '
       //+             'and FREG>='''+xDiaIni+''' AND FREG<='''+xDiaFin+''' '
       +             'and CREESTID<>''13'' and CREESTID<>''04'' and CREESTID<>''99'' '
       +             'and CREDOCPAG is not null '
       +             'and BANCOID is not null '
       +             'and CCBCOID is not null '
       +          ') A, APO101 B '
       +    'WHERE A.USEID=B.USEID(+) AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) '
       + ') C '
       +'WHERE BUSEID IS NULL ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(XsQL);
  DM1.cdsQry1.Open;
end;


procedure TFContabilizacion.FilIncos5;
begin
  xSQL:='SELECT * FROM '
       +  '( SELECT  A.ASOID, A.CREDID, A.CRECUOTA, A.USEID, A.UPROID, A.UPAGOID, B.USEID BUSEID, '
       +       'B.UPROID BUPROID, B.UPAGOID BUPAGOID, B.CCOSID BCCOSID '
       +    'FROM ( SELECT ASOID, CREDID, CRECUOTA, USEID, UPROID, UPAGOID '
       +           'From CRE310 A '
       +           'where '+xWhereBusqueda
       +             'and CREESTID<>''13'' and CREESTID<>''04'' and CREESTID<>''99'' '
       +          ') A, APO101 B '
       +    'WHERE A.USEID=B.USEID(+) AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) '
       + ') C '
       +'WHERE BUSEID IS NULL ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(XsQL);
  DM1.cdsQry1.Open;
end;


//Filtr de CRE310 Aquellas uses uproid upagoid no estan en APO101
procedure TFContabilizacion.FilIncos3;
begin
  xSql:='SELECT * from '
       +  '( Select A.ASOID, A.CREDID, A.CRECUOTA, A.USEID, A.UPROID, A.UPAGOID, B.USEID BUSEID, '
       +       'B.UPROID BUPROID, B.UPAGOID BUPAGOID, B.CCOSID BCCOSID '
       +    'From ( SELECT ASOID, CREDID, CRECUOTA, USEID, UPROID, UPAGOID '
       +           'FROM CRE310 A '
       +           'where '+xWhereBusqueda
       //+           'WHERE TIPOCONT=''PLA'' '
       //+             'AND FREG>='''+xDiaIni+''' AND FREG<='''+xDiaFin+''' '
       +             'AND CREESTID<>''13'' AND CREESTID<>''04'' AND CREESTID<>''99'' '
       +          ') A, APO101 B '
       +    'WHERE A.USEID=B.USEID(+) AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) '
       +  ') C '
       +'WHERE BUSEID IS NULL';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
end;


procedure TFContabilizacion.bbtnBolDInconsClick(Sender: TObject);
begin
  bError:=True;
  ParametrosBoleta;
   //Inicio: DPP_201214_COB
  xSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM, CREDID, CRECUOTA, CREMTOCOB, CREAMORT, CREINTERES, CREFLAT, CREMTOEXC, '
       +   'NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0)) DIFERENCIA, '
       +   'CREMTODEV, NVL(MONCOBDESGRAV,0) MONCOBDESGRAV '
       +'From CRE310'+cLink+' A '
       +'where '+xWhereBusqueda
       +  'and CREESTID<>''13'' and CREESTID<>''99'' and CREESTID<>''04'' '
       +  'and CREDOCPAG is not null '
       +  'and A.BANCOID is not null and A.CCBCOID is not null '
       +  'and (NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0))<>0 '
       +   'or NVL(CREAMORT,0)<0 or NVL(CREINTERES,0)<0 or NVL(CREFLAT,0)<0 or NVL(MONCOBDESGRAV,0)<0)';
   //Fin: DPP_201214_COB
  ImprimeInconsistenciaPagosCRE310( xSQL );
  if bError then
     ShowMessage('ok');
end;



procedure TFContabilizacion.bbtnTeleInconsClick(Sender: TObject);
begin
  bError:=True;
  ParametrosTeleahorro;
  xSQL:='Select ASOID, ASOCODMOD, ASOAPENOM, CREDID, CRECUOTA, CREMTOCOB, CREAMORT, CREINTERES, CREFLAT, CREMTOEXC, '
       +   'NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)) DIFERENCIA,'
       +   'CREMTODEV '
       +'From CRE310 A '
       +'where '+xWhereBusqueda
       //+'Where FOPERACTMP>='''+xDiaIni+''' and FOPERACTMP<='''+xDiaFin+''' '
       +  'AND CREESTID<>''13'' AND CREESTID<>''99'' AND CREESTID<>''04'' '
       +  'and (NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)))<>0';
  ImprimeInconsistenciaPagosCRE310( xSQL );
  if bError then
     ShowMessage('ok');
end;

procedure TFContabilizacion.bbtnPlanInconsClick(Sender: TObject);
var
   xSQLPla : String;
begin
  bError:=True;

  ParametrosPlanilla;
  UpdatePlanilla;

  //Inicio: DPP_201214_COB
  xSQL:='Select ASOID, ASOCODMOD, ASOAPENOM, CREDID, CRECUOTA, CREMTOCOB, CREAMORT, CREINTERES, CREFLAT, CREMTOEXC, '
       +  'NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)) DIFERENCIA, '
       +  'CREMTODEV, NVL(MONCOBDESGRAV,0) MONCOBDESGRAV '
       +'From CRE310'+cLink+' A '
       +'where '+xWhereBusqueda
       + ' and CREESTID<>''13'' AND CREESTID<>''99'' AND CREESTID<>''04'' '
       + ' and (NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0))<>0 '
       + '  or  NVL(CREAMORT,0)<0 or NVL(CREINTERES,0)<0 or NVL(CREFLAT,0)<0 or NVL(MONCOBDESGRAV,0)<0)';
  //Fin: DPP_201214_COB
  ImprimeInconsistenciaPagosCRE310( xSQL );
  if bError then
     ShowMessage('ok');
end;


procedure TFContabilizacion.TransferirContabilidad(cLote,cOrigen,xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r : String);
var
   xSQL, xNumMax, xNumMin : String;
   xCambioNum : String;
   NumComp, NumCompAnt : String;
begin

   If MessageDlg('¿Está Seguro de Transferir Contabilidad ( '+cLote+ ' ) ?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

   Screen.Cursor:=crHourGlass;

   //Inicio HPC_201723_COB: Se eliminaron los comentarios para una mejor lectura
   xSQL:='Select * from CNT300 A '
        +'where CIAID>=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
        + xWhereIncluyeLote
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Open;
   except
   end;

   if DM1.cdsQry2.Recordcount>0 then
   begin
      If MessageDlg('Asientos Generados fueron Transferidos a Contabilidad. ¿Desea Eliminar Asientos Transferidos?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

      xSQL:='Select * from CNT300 A '
           +'where CIAID>=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' '
           +  'and CNTLOTE LIKE '''+cLote+'%'' and CNTESTADO=''P'' '
           + xWhereIncluyeLote
           +  'and exists( select B.cntcomprob from CNT311 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
          +                'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
           +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB '
           +              'union all '
           +              'select B.cntcomprob from CNT301 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
           +                'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
           +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
         DM1.cdsQry2.Open;
      except
      end;

      if DM1.cdsQry2.Recordcount>0 then
      begin
         Screen.Cursor:=crDefault;
         MessageDlg('Asientos ya fueron Aceptados por Contabilidad. NO se pueden Eliminar !!!', mtError, [mbOk], 0);
         Exit
      end;
   end;


   xSQL:='Select * from '+xCnt300r+' A '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''',''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
        + xWhereIncluyeLote
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   try
      DM1.cdsQry.Open;
   except
      Exit;
   end;

   if DM1.cdsQry.RecordCount>0 Then
    begin
       If MessageDlg('Existen Registros Transferidos de Cobranzas. ¿Desea continuar con Transferencia?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
       Begin
          Screen.Cursor:=crDefault;
          Exit;
       end;
       xSQL:='Delete from '+xCnt300r+' A '
            +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and CNTLOTE LIKE '''+cLote+'%'' '
            + xWhereIncluyeLote
            +  'and exists( select B.cntcomprob from CNT311 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
            +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB '
            +              'union all '
            +              'select B.cntcomprob from CNT301 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
            +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
          DM1.cdsQry2.Execute;
       except
       end;

       xSQL:='Delete from '+xCnt311r+' '
            +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
            +  ' and CNTLOTE LIKE '''+cLote+'%'' '
            +  xWhereIncluyeLote;
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
         DM1.cdsQry2.Execute;
       except
       end;

      xSQL:='Delete from CNT301 '
           +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
           +  'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
           +  ' and CNTLOTE LIKE '''+cLote+'%'' '
           +  xWhereIncluyeLote;
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
         DM1.cdsQry2.Execute;
      except
      end;

   end;
   //Fin HPC_201723_COB

   //Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
   xSQL:='Select CIAID,TDIARID,CNTANOMM,CNTCOMPROB,CNTUSER FROM CNT300 where CIAID=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' and CNTLOTE LIKE '''+cLote+'%'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   try
      DM1.cdsQry.Open;
   except
      Exit;
   end;

   if DM1.cdsQry.RecordCount>0 Then
   begin
      If MessageDlg('Existen Registros Transferidos de Cobranzas. ¿Desea continuar con Transferencia?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
          Screen.Cursor:=crDefault;
          Exit;
      end;

      xSQL:='Delete from '+xCnt300r+' A '
            +'where CIAID=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' and CNTLOTE LIKE '''+cLote+'%'' ';

      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
          DM1.cdsQry2.Execute;
      except
      end;

      xSQL:='Delete from '+xCnt311r+' A '
            +'where CIAID=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' and CNTLOTE LIKE '''+cLote+'%'' ';

      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
          DM1.cdsQry2.Execute;
      except
      end;
   end;
   //Fin HPC_201723_COB

   // Para poder obtener el xNumMin y xNumMax


   //PARA RENUMERAR ORIGEN 32
    xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
         +'FROM '+xCNT311+' '
         +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
         +  'AND TDIARID in ('''+cOrigen+''') '
//Inicio HPC_201615_COB
//Se cambia a fecha de comprobante, fecha con la que se debe comparar para transferir
//       +  'and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
         +  'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
//Final HPC_201615_COB
         +  ' and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
         +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
         +' ORDER BY TDIARID, CNTCOMPROB';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
    xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;


   //COD BERGER
    xSQL:='select NVL(MAX( CNTCOMPROB ),''0'') MAXIMO FROM '+xCnt300r+' '
         +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
         +'order by CIAID, TDIARID, CNTCOMPROB';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest( xSQL );
    try
       DM1.cdsQry2.oPEN;
    except
    end;

   //NUMCOMP:=inttostr(DM1.cdsQry2.recordcount);
    NUMCOMP:=DM1.cdsQry2.FieldByName('MAXIMO').ASSTRING;
    NUMCOMP:= DM1.strzero(inttostr(strtoint(numcomp)+1),10);
    NUMCOMPANT:=xNumMin;

    xCambioNum := 'F';

    WHILE NUMCOMPANT<=xNumMax do
    BEGIN
      xSQL:='update '+xCnt300+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
	      +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
      NUMCOMP:=DM1.strzero(inttostr(strtoint(NUMCOMP)+1),10);
      NUMCOMPANT:=DM1.strzero(inttostr(strtoint(NUMCOMPANT)+1),10);
      xCambioNum := 'S';
    END;

    if xCambioNum='S' then
    begin

      xSQL:='update '+xCnt300+' A '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +  'and exists( select B.cntcomprob from CNT311COB B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201615_COB
//Se cambia a fecha de comprobante, fecha con la que se debe comparar para transferir
//      +                'and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
        +                'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
//Final HPC_201615_COB
        +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201615_COB
//Se cambia a fecha de comprobante, fecha con la que se debe comparar para transferir
//      +  'and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
        +  'and CNTFCOMP>='+quotedstr( dtpFecIni.Text )+' and CNTFCOMP<='+quotedstr( dtpFecFin.Text )
//Final HPC_201615_COB
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
        +  xWhereIncluyeLote;
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

    end;


   // Renumerar Origen 30
   //PARA RENUMERAR ORIGEN 30
   xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
        +'FROM '+xCNT300+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in (''30'') '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;


   //COD BERGER
   xSQL:='select NVL(MAX( CNTCOMPROB ),''0'') MAXIMO FROM '+xCnt300r+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
        +'order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.oPEN;
   except
   end;
   //NUMCOMP:=inttostr(DM1.cdsQry2.recordcount);
   NUMCOMP:=DM1.cdsQry2.FieldByName('MAXIMO').ASSTRING;
   NUMCOMP:= DM1.strzero(inttostr(strtoint(numcomp)+1),10);
   NUMCOMPANT:=xNumMin;

   xCambioNum := 'F';

   WHILE NUMCOMPANT<=xNumMax do
   BEGIN
      xSQL:='update '+xCnt300+' '
        //+'set CNTCOMPROB = '''+NUMCOMP+''' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
	      +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        //+'set CNTCOMPROB = '''+NUMCOMP+''' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
      NUMCOMP:=DM1.strzero(inttostr(strtoint(NUMCOMP)+1),10);
      NUMCOMPANT:=DM1.strzero(inttostr(strtoint(NUMCOMPANT)+1),10);
      xCambioNum := 'S';
    END;

    if xCambioNum='S' then
    begin

      xSQL:='update '+xCnt300+' '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +  'and CNTLOTE LIKE '''+cLote+'%'' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +  'and CNTLOTE LIKE '''+cLote+'%'' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

    end;

   // FIN COD BERGER

   // Valida si no hay repetidos antes de insertarlos en la tabla xCnt300r
    // origen 32
   xSQL:='SELECT MAX( CNTCOMPROB ) NUMMAX, MIN( CNTCOMPROB ) NUMMIN FROM '+xCNT311+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;

   xSQL:='SELECT * FROM '+xCnt300r+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
        +  'AND CNTCOMPROB BETWEEN '''+xNumMin+''' AND '''+xNumMax+''' '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if DM1.cdsQry.RecordCount>0 Then
   begin
      MessageDlg('Error : En Contabilidad existen comprobantes con el mismo Numero, Debe volver a Transferir Contabilidad !!!', mtError, [mbOk], 0);
      Exit;
   end;

   // origen 30
    xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
        + 'FROM '+xCNT311+' '
        + 'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +   'AND TDIARID in (''30'') '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +   'and CNTLOTE LIKE '''+cLote+'%'' '
        + 'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;

   xSQL:='SELECT * FROM '+xCnt300r+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in (''30'') '
        +  'AND CNTCOMPROB BETWEEN '''+xNumMin+''' AND '''+xNumMax+''' '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if DM1.cdsQry.RecordCount>0 Then
   begin
      MessageDlg('Error : En Contabilidad existen comprobantes con el mismo Numero, Debe volver a Transferir Contabilidad !!!', mtError, [mbOk], 0);
      Exit;
   end;


   //Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
   DM1.DCOM1.AppServer.SolStartTransaction;

   // transferir
   xSQL:='insert into '+xCnt300r+' '
        +'select * from '+xCNT300+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +'order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
      on E : Exception do
        begin
        DM1.DCOM1.AppServer.SolRollBack;
        Screen.Cursor := crDefault;
        showmessage('Ocurrió algún error.. No se pudo transferir.' + #13 + E.Message);
        Exit;
        end;
   end;

   xSQL:='insert into '+xCnt311r+' '
        +'select * from '+xCNT311+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        +  xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +'order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
      on E : Exception do
        begin
        DM1.DCOM1.AppServer.SolRollBack;
        Screen.Cursor := crDefault;
        showmessage('Ocurrió algún error.. No se pudo transferir.' + #13 + E.Message);
        Exit;
        end;
   end;
   // Inicio: HPC_201809_COB
   // Se añade Lote de extorno de fondo solidario
   // If (cLote = 'CCIE') or (cLote = 'EXT2') or (cLote = 'EXT1') Then
   If (cLote = 'CCIE') or (cLote = 'EXT2') or (cLote = 'EXT1') Or (cLote = 'EFSC') Then
   // Fin: HPC_201809_COB
   begin
      try
      //--ACTUALIZA FLAG CONTB.
      xSQL:='UPDATE COB901 A SET A.CNTFLAG=''S'' ';

      If cLote = 'EXT2' Then
          xSQL:= xSQL
                 +' where A.FORPAGID=''03'' '
                 +' and TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
                 +' and A.CREESTID=''04'''
                 +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' '
                 +' and A.CREDOCPAG is not null '
                 +' and A.BANCOID is not null '
                 +' and A.CCBCOID is not null '
      Else If cLote = 'CCIE' Then
          xSQL:= xSQL
                 +' where A.FORPAGID=''99'' '
                 +' and TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
                 +' and A.CREESTID=''04'''
                 +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' '
                 +' and A.CREDOCPAG is not null '
                 +' and A.BANCOID is not null '
                 +' and A.CCBCOID is not null '
      // Inicio: HPC_201809_COB
      // Se añade la condición para extorno de fondo solidario
      Else If cLote = 'EFSC' Then
          xSQL:= xSQL
                 +' where A.FORPAGID in (''23'',''24'',''44'') '
                 +' and TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
                 +' and A.CREESTID=''04'''
      // Fin: HPC_201809_COB
      Else If cLote = 'EXT1' Then
          xSQL:= xSQL
                 +' where A.FORPAGID in (''01'',''09'',''22'') '
                 +' and TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
                 +' and A.CREESTID=''04'''
                 +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' '
                 +' and A.CREDOCPAG is not null ';

      DM1.cdsQry2.DataRequest( xSQL );
      DM1.cdsQry2.Execute;
      except
      on E : Exception do
        begin
        DM1.DCOM1.AppServer.SolRollBack;
        Screen.Cursor := crDefault;
        showmessage('Ocurrió algún error.. No se pudo transferir.' + #13 + E.Message);
        Exit;
        end
      end
   end

//Inicio COB_201822_HPC
//Contabilización de pagos por resolver
   else If (cLote = 'PRS') Then
   begin
       //flag de contabilizacion
       xSQl:='UPDATE COB_DES_CRO_CERRADO_DET A SET A.CNTFLAG=''S'', CNTANOMM='''+xPeriodo+''' '
            +' WHERE  A.FLGEST = ''32'' '
            +' AND A.FEC_PRO_PAG_RES BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text);
       DM1.cdsQry2.DataRequest( xSQL );
       DM1.cdsQry2.Execute;
   end
   else
   begin
       If  (LENGTH(TRIM(xWhereBusqueda)) > 0) Then
       Begin
          try
          //--ACTUALIZA FLAG CONTB. DESEMBOLSO EN EFECTIVO
          xSQL:='UPDATE CRE310 A SET A.CNTFLAG=''S'', CNTANOMM='''+xPeriodo+''' '
               +'where '+xWhereBusqueda+' ';

          If cLote = 'TEL' Then
              //xVar:=0
          Else If cLote = 'PLA' Then
              xSQL:= xSQL  +  ' AND CREESTID NOT IN (''13'',''04'',''99'') '
                           +  ' AND A.CIAID=''02'' '
          Else If cLote = 'BOL' Then
              xSQL:= xSQL + ' and A.CREDOCPAG is not null '
                          + ' and A.CREESTID NOT IN (''13'',''04'',''99'') '
                          + ' and A.BANCOID is not null and A.CCBCOID is not null '
                          + ' and A.CIAID=''02'' '
          Else If cLote = 'EFE' Then
              xSQL:=xSQL + ' and CREESTID NOT IN (''13'',''04'',''99'') ';

          DM1.cdsQry2.DataRequest( xSQL );
          DM1.cdsQry2.Execute;
          except
            on E : Exception do
            begin
            DM1.DCOM1.AppServer.SolRollBack;
            Screen.Cursor := crDefault;
            showmessage('Ocurrió algún error.. No se pudo transferir.' + #13 + E.Message);
            Exit;
            end;
          end;
       End;
    end;
//Fin COB_201822_HPC

   DM1.DCOM1.AppServer.SolCommit;
   //Fin HPC_201723_COB

   Screen.Cursor:=crDefault;
   MessageDlg('La Transferencia Exitosa !!!', mtConfirmation, [mbOk], 0);
end;



procedure TFContabilizacion.BitBtn1Click(Sender: TObject);
begin
   ParametrosTeleahorro;
   TransferirContabilidad( 'TEL', '32',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);
end;


procedure TFContabilizacion.ReporteContabilizaCredito( cTabla, cLote,xPeriodo : String);
var
   xSQL, cCampo : String;
// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
   sOrigenONP : String;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP
begin
   Screen.Cursor:=crHourGlass;

   wTipoCont2:=cLote;

   DatosFecha;

// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
//Inicio HPC_201601_COB
// if (cLote='BOL') or (cLote='APOA') or (cLote='DFB') or (cLote='ONP')then
   if (cLote='BOL') or (cLote='APOA') or (cLote='DFB') or (cLote='ONP') or (cLote='FONP') then
//Final HPC_201601_COB
       cCampo:='CNTFVCMTO'
   else
//Inicio HPC_201615_COB
//Se cambia a fecha de comprobante, fecha con la que se debe comparar para transferir
      if ((cLote='REFI') or (cLote='PANT') ) then  
//Final HPC_201615_COB
         cCampo:='CNTFCOMP'
      else
         cCampo:='CNTFEMIS';

   sOrigenONP:='';
//Inicio HPC_201601_COB
// if (cLote='ONP') then sOrigenONP:= ', ''28''';
   if (cLote='ONP') or (cLote='FONP') then sOrigenONP:= ', ''28''';
//Final HPC_201601_COB


   XSQL:='SELECT TDIARID, CUENTAID, CNTDH, Sum( CNTDEBEMN ) CNTDEBEMN, Sum( CNTHABEMN ) CNTHABEMN '
        +'FROM '+cTabla+' '
        +'WHERE CIAID>=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID IN (''32'',''30'',''35'',''33'''+sOrigenONP+') AND CNTLOTE LIKE '''+cLote+'%'' '
        + ' and '+cCampo+'>='+quotedstr( dtpFecIni.Text )+' and '+cCampo+'<='+quotedstr(dtpFecFin.Text)
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
          + xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +' GROUP BY TDIARID, CUENTAID,CNTDH '
    //Inicio: DPP_201201_COB
    //Se cambia el Orden
    //  +'ORDER BY CUENTAID,CNTDH';
        +'ORDER BY TDIARID, CNTDH,CUENTAID';
    //Final: DPP_201201_COB
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;


   xSQL:='SELECT CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTDH, CUENTAID, DOCID, CNTSERIE, '
        +  'CNTNODOC, sum( CNTDEBEMN ) CNTDEBEMN, sum( CNTHABEMN ) CNTHABEMN, '
        +  ''''+cLote+''' LOTE '
        +'FROM '+cTabla+' '
        +'WHERE CIAID>=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID IN (''32'',''30'',''35'',''33'''+sOrigenONP+') AND CNTLOTE LIKE '''+cLote+'%'' '
        + ' and '+cCampo+'>='+quotedstr( dtpFecIni.Text )+' and '+cCampo+'<='+quotedstr(dtpFecFin.Text)
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
        + xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
        +' GROUP BY CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTDH, CUENTAID, DOCID, CNTSERIE, CNTNODOC '
    //Inicio: DPP_201201_COB
    //Se cambia el Orden
    //  +'ORDER BY CIAID, TDIARID, CNTCOMPROB';
        +'ORDER BY CIAID, TDIARID, CNTCOMPROB,CNTDH,CUENTAID';
    //Final: DPP_201201_COB
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP

   //Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
   ppLUser.Caption:= dm1.wUsuario;
   //Fin HPC_201723_COB

   Screen.Cursor:=crDefault;
   If DM1.cdsQry.RecordCount>0 Then
    begin
          //imprime el reporte contable
          ppdb1.DataSource :=nil;
          ppr1.DataPipeline:=nil;
          //ppr1.Template.FileName:='CreditosConta.rtm';
          //ppr1.Template.LoadFromFile;
          ppdb1.DataSource :=DM1.dsQry;
          ppr1.DataPipeline:=ppdb1;
          //ppd1.ShowModal;
          ppr1.Print;
          ppr1.Stop;
          ppdb1.DataSource :=nil;
          ppr1.DataPipeline:=nil;

      // se cerciora si hay diferencia entre debe y haber

// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
         xSql:='SELECT CNTCOMPROB, SUM(CNTDEBEMN), SUM(CNTHABEMN) FROM (' + xSql
             +') GROUP BY CNTCOMPROB HAVING SUM(CNTDEBEMN) <> SUM(CNTHABEMN)';
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount>0 Then
            ShowMessage('No hay igualdad entre el Debe y Haber');

    end
  else
  begin
     if cTabla='CNT311' then
     begin
        xSQL:='SELECT * FROM CNT300 '
             +'WHERE CIAID>=''02'' AND CNTANOMM = '''+xPeriodo+''' '
             +  'AND TDIARID IN ( ''32'',''30'',''35'',''33'' ) AND CNTLOTE LIKE '''+cLote+'%'' '
             +  'AND CNTESTADO=''P'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
             + xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
             +'ORDER BY CIAID, TDIARID, CNTCOMPROB';
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSQL);
        DM1.cdsQry.Open;

        If DM1.cdsQry.RecordCount>0 Then
        begin
           ShowMessage('Transferencia ya fue Aceptada por Contabilidad');
           xSQL:='SELECT * FROM CNT301 '
                +'WHERE CIAID>=''02'' AND CNTANOMM = '''+xPeriodo+''' '
                +  'AND TDIARID IN ( ''32'',''30'',''35'',''33'' ) AND CNTLOTE LIKE '''+cLote+'%'' '
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
                + xWhereIncluyeLote
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
                +'ORDER BY CIAID, TDIARID, CNTCOMPROB, CNTREG';
           DM1.cdsQry.Close;
           DM1.cdsQry.DataRequest(xSQL);
           DM1.cdsQry.Open;
           ppdb1.DataSource :=nil;
           ppr1.DataPipeline:=nil;
           //ppr1.Template.FileName:='CreditosConta.rtm';
           //ppr1.Template.LoadFromFile;
           ppdb1.DataSource :=DM1.dsQry;
           ppr1.DataPipeline:=ppdb1;
           //ppd1.ShowModal;
           ppr1.Print;
           ppr1.Stop;
           ppdb1.DataSource :=nil;
           ppr1.DataPipeline:=nil;
        end
        else
           ShowMessage('No se ha Transferido Contabilización');

     end
     else
        ShowMessage('No se ha Generado Contabilización')
  end;
end;


procedure TFContabilizacion.BitBtn6Click(Sender: TObject);
begin
  ParametrosPlanilla;
  TransferirContabilidad( 'PLA', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;


procedure TFContabilizacion.BitBtn7Click(Sender: TObject);
begin
  ParametrosBoleta;
  TransferirContabilidadBol( 'BOL', '35', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;

procedure TFContabilizacion.bbtnEfeTransClick(Sender: TObject);
begin
   ParametrosEfectivo;
   TransferirContabilidad( 'EF', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;

procedure TFContabilizacion.fcShapeBtn3Click(Sender: TObject);
begin
   ParametrosTeleahorro;
   ReporteContabilizaCredito( xCnt311r, 'TEL',xPeriodo );
end;

procedure TFContabilizacion.fcShapeBtn4Click(Sender: TObject);
begin
   ParametrosPlanilla;
   ReporteContabilizaCredito( xCnt311, 'PLA', xPeriodo  );
end;

procedure TFContabilizacion.fcShapeBtn5Click(Sender: TObject);
begin
   ParametrosPlanilla;
   ReporteContabilizaCredito( xCnt311r, 'PLA',xPeriodo  );
end;

procedure TFContabilizacion.fcShapeBtn8Click(Sender: TObject);
begin
   ParametrosBoleta;
   ReporteContabilizaCredito( xCnt311r, 'BOL', xPeriodo );
end;

procedure TFContabilizacion.fcShapeBtn9Click(Sender: TObject);
begin
   ParametrosEfectivo;
   ReporteContabilizaCredito( xCnt311r, 'EF', xPeriodo );
end;


procedure TFContabilizacion.ImprimeInconsistenciaVerificaCuentaCCosto( cSQL : String );
begin
   Screen.Cursor:=crHourGlass;
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(cSQL);
   DM1.cdsQry3.Open;
   if DM1.cdsQry3.RecordCount>0 then //q solo sea ">"
   begin
      ppdb5.DataSource :=nil;
      ppr5.DataPipeline:=nil;
      //ppr5.Template.FileName:='CobInconsistencia.rtm';
      //ppr5.Template.LoadFromFile;
      lblperiodo.Caption:= dbsemes.Text  + ' / ' + dbseano.Text;
      ppdb5.DataSource :=DM1.dsQry3;
      ppr5.DataPipeline:=ppdb5;
      Screen.Cursor:=crDefault;
      //ppd5.ShowModal;
      ppr5.Print;
      ppr5.Stop;
      ppdb5.DataSource :=nil;
      ppr5.DataPipeline:=nil;
      bError:=False;
   end;
   Screen.Cursor:=crDefault;
end;


procedure TFContabilizacion.ImprimeInconsistenciaPagosCRE310( cSQL : String );
begin
   Screen.Cursor:=crHourGlass;
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(cSQL);
   DM1.cdsQry3.Open;
   if DM1.cdsQry3.RecordCount>0 then //q solo sea ">"
   begin
      ppdb6.DataSource :=nil;
      ppr6.DataPipeline:=nil;
//      ppr6.Template.FileName:='CobInconsistenciaCRE310.rtm';
//      ppr6.Template.LoadFromFile;
      pplPeriodo6.Caption:= dbsemes.Text  + ' / ' + dbseano.Text;
      ppdb6.DataSource :=DM1.dsQry3;
      ppr6.DataPipeline:=ppdb6;
      //ppd6.ShowModal;
    	Screen.Cursor:=crDefault;
      ppr6.Print;
      ppr6.Stop;
      ppdb6.DataSource :=nil;
      ppr6.DataPipeline:=nil;
      bError:=False;
   end;
   Screen.Cursor:=crDefault;
end;

procedure TFContabilizacion.tsPlaEnter(Sender: TObject);
begin
   ParametrosPlanilla;
end;

procedure TFContabilizacion.tsEfeEnter(Sender: TObject);
begin
   ParametrosEfectivo;
end;

procedure TFContabilizacion.bbtnTELSustentoClick(Sender: TObject);
begin
   ParametrosTeleahorro;
   Screen.Cursor:=crHourGlass;

   xSql:='SELECT  TO_CHAR(A.FREG,''MM/YYYY'') FREG, A.UPROID, A.USEID, A.ASOID, '
        +  'SUBSTR(A.CREDID,9,7) CREDID, A.CREDOCPAG, MIN(A.ASOAPENOM) ASOAPENOM, '
        +  'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM, MIN(B.CCOSID) CCOSID, '
        +  'MIN(A.TIPCREID) TIPCREID, MIN(D.TIPCREDES) TIPCREDES, MIN(A.BANCOID) BANCOID, '
        +  'MIN(E.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, '
        +  'MIN(A.FOPERAC) FOPERAC, SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB, '
        +  'SUM(NVL(A.CREAMORT,0)) CREAMORT, SUM(NVL(A.CREINTERES,0)) CREINTERES, '
        +  'SUM(NVL(A.CREFLAT,0)) CREFLAT, SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '
        +'FROM CRE310'+cLink+' A, '
        +  '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B, '
        +  'APO102'+cLink+' C, CRE110'+cLink+' D, TGE105'+cLink+' E '
        +'where '+xWhereBusqueda
        + ' and A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) and A.UPROID=C.UPROID(+) '
        + ' and A.TIPCREID=D.TIPCREID(+) and A.BANCOID=E.BANCOID(+) '
        +'GROUP BY TO_CHAR(A.FREG,''MM/YYYY''),A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG '
        +'ORDER BY TO_CHAR(A.FREG,''MM/YYYY''),A.UPROID,A.USEID,A.CREDOCPAG ';
  dm1.cdsQry1.Close;
  dm1.cdsQry1.DataRequest(xSql);
  dm1.cdsQry1.Open;
  BDEPPBANCO.DataSource:=  DM1.dsQry1;
  ppXtitulo.Caption    := 'COBRANZA POR TELEAHORRO CONTABILIZADOS EN EL MES DE '+xMesDes+' DEL '+dbseAno.Text;
  ppXsubtitulo.Caption := 'COBRANZA POR TELEAHORRO DEL MES DE';
  Screen.Cursor:=crDefault;
  REPBANCO.Print;
end;

procedure TFContabilizacion.fcShapeBtn1Click(Sender: TObject);
begin
   ParametrosTeleahorro;
   ReporteContabilizaCredito( xCnt311, 'TEL', xPeriodo );
end;

procedure TFContabilizacion.ParametrosTeleahorro;
begin
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   wTipoCont := 'TE';
   wTipoCont2:= 'TEL';
   DatosFecha;
   xWhereBusqueda:=' A.CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;

procedure TFContabilizacion.ParametrosPlanilla;
begin
   wTipoCont := 'PL';
   wTipoCont2:= 'PLA';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;

procedure TFContabilizacion.ParametrosBoleta;
begin
   wTipoCont := 'BO';
   wTipoCont2:= 'BOL';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';

   if xPeriodo='200703' then
   begin
   xWhereExcluye := ' and A.FREG<=''15/04/2007'' '
                  + ' and ( not CREESTID in (''13'',''04'') OR (ASOID=''0000279277'') ) ';
   xWhereBusqueda:=xWhereBusqueda+xWhereExcluye
   end;

   if xPeriodo='200704' then
   begin
   xWhereExcluye :=' and not ( '
                  +    ' A.CREFPAG BETWEEN '+QuotedStr('01/04/2007')+' AND '+QuotedStr('11/04/2007')+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' '
                  +' and A.FREG<=''15/04/2007'' '
                  +' and ( not CREESTID in (''13'',''04'') OR (ASOID=''0000279277'') ) '
                  +    ' ) ';
   xWhereBusqueda:=xWhereBusqueda+xWhereExcluye
   end;
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;

procedure TFContabilizacion.ParametrosFondo;
begin
   wTipoCont := 'FS';
   wTipoCont2 := 'FSC';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;




procedure TFContabilizacion.ParametrosEfectivo;
begin
   wTipoCont := 'EF';
   wTipoCont2 := 'EFE';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';

// Inicio SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote := ' and ( CNTLOTE>=''EF01'' and CNTLOTE<=''EF99'' ) ';
// Fin SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo

end;

procedure TFContabilizacion.UpdatePlanilla;
begin
   xSQL:='Update CRE310 SET TIPOCONT=''PLA'' '
        +'where CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
        +' and TIPOCONT in ( ''REG'', ''CEF'' )';
   dm1.cdsQry1.Close;
   dm1.cdsQry1.DataRequest(xSQL);
   dm1.cdsQry1.Execute;
end;

procedure TFContabilizacion.BitBtn5Click(Sender: TObject);
var
  xSql, xAnoMes : string;
begin
   ParametrosPlanilla;
   Screen.Cursor:=crHourGlass;
// Inicio: SPP_201303_COB
     xsql:='SELECT SUBSTR(ANOMES,1,4)||''-''||SUBSTR(ANOMES,5,2) ANOMES,SUM(CREAMORT)CREAMORT,SUM(MONCOBDESGRAV)MONCOBDESGRAV,SUM(CREINTERES)CREINTERES,SUM(CREFLAT)CREFLAT,SUM(CREMTOCOB)CREMTOCOB,SUM(CREMTOEXC)CREMTOEXC '+
           ' FROM '+
           '(SELECT /*+ INDEX_JOIN(A) */ A.RCOBANO||A.RCOBMES ANOMES  ,C.CREAMORT,C.MONCOBDESGRAV,C.CREINTERES,C.CREFLAT,C.CREMTOCOB,C.CREMTOEXC,''CRE'' TIPO FROM '+
           'COB302 A, '+
           '(SELECT CREFPAG,NROOPE,FOPERAC,DETRCOBID,UPROID,UPAGOID,USEID,CREDOCPAG,FORPAGABR,CREESTID,RCOBID,NVL(CREAMORT,0)CREAMORT,NVL(MONCOBDESGRAV,0)MONCOBDESGRAV, NVL(CREINTERES,0)CREINTERES,NVL(CREFLAT,0)CREFLAT,'+
           ' NVL(CREMTOCOB,0)CREMTOCOB,NVL(CREMTOEXC,0)CREMTOEXC '+
           'FROM CRE310 WHERE FREG >='''+DateToStr(dtpFecIni.Date)+''' and  FREG <= last_day ('''+DateToStr(dtpFecIni.Date)+''')  AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '+
           'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) ) '+
           ' GROUP BY ANOMES  ORDER BY ANOMES ' ;
    dm1.cdsQry2.Close;
    dm1.cdsQry2.DataRequest(xSql);
    dm1.cdsQry2.Open;
    BDEPPSUBRBANCO.DataSource :=  DM1.dsQry2;
// Fin: SPP_201303_COB

   xSql:='SELECT  TO_CHAR(A.FREG,''MM/YYYY'') FREG,'+
        'CASE  WHEN A.FORPAGABR=''PLA'' THEN ''PLANILLA MINISTERIAL'' '+
        '      WHEN A.FORPAGABR=''REG'' THEN ''PLANILLA REGIONAL'' '+
        '      WHEN A.FORPAGABR=''CEF'' THEN ''ESCUELA FISCALIZADA'' END AS FORPAGABR, '+
        'A.UPROID, A.USEID, A.ASOID, SUBSTR(A.CREDID,9,7) CREDID, A.CREDOCPAG, '+
        'MAX(A.CREANO||''-''||A.CREMES) PERCUO,'+
        'MIN(A.ASOAPENOM) ASOAPENOM,'+
        'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM,'+
        'MIN(B.CCOSID) CCOSID,'+
        'MIN(A.TIPCREID) TIPCREID, MIN(D.TIPCREDES) TIPCREDES, '+
// Inicio: SPP_201308_COB            : Contabilización de cobranzas por PLA
        'MIN(nvl(A.BANCOID,''SIN VALOR'')) BANCOID, MIN(NVL(E.BANCONOM,''SIN VALOR'')) BANCONOM,'+
        'MAX(NVL(A.CCBCOID,''SIN VALOR'')) CCBCOID, MIN(A.CREFPAG) FOPERAC,'+
// Fin: SPP_201308_COB            : Contabilización de cobranzas por PLA
        'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
        'SUM(NVL(A.CREAMORT,0)) CREAMORT, SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
        //Inicio: DPP_201214_COB
        'SUM(NVL(A.CREFLAT,0)) CREFLAT, SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC, SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV '+
        //Fin: DPP_201214_COB
  'FROM CRE310'+cLink+' A, '+
       '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101'+cLink+' GROUP BY UPROID,USEID) B, '+
       'APO102'+cLink+' C, CRE110'+cLink+' D, TGE105'+cLink+' E '
       +'where '+xWhereBusqueda
       +  ' and not CREESTID in (''13'',''04'',''99'') '
       +  ' and A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) and A.UPROID = C.UPROID (+) '
       +  ' and A.TIPCREID=D.TIPCREID(+) and '+
        'A.BANCOID=E.BANCOID (+) and '+
// Inicio: SPP_201303_COB
        'A.CIAID(+)=''02'' '+
// Fin: SPP_201303_COB
   'GROUP BY forpagabr,TO_CHAR(A.FREG,''MM/YYYY''),A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG '+
   'ORDER BY forpagabr,TO_CHAR(A.FREG,''MM/YYYY''),A.UPROID,A.USEID,A.CREDOCPAG ';

  dm1.cdsQry1.Close;
  dm1.cdsQry1.DataRequest(xSql);
  dm1.cdsQry1.Open;
  BDEPPBANCO.DataSource :=  DM1.dsQry1;
  Xtitulo3.Caption := 'CUOTAS POR PLANILLA CONTABILIZADOS EN EL MES DE '+xMesDes+' DEL '+dbseAno.Text;
  Xsubtitulo3.Caption := 'CUOTAS POR PLANILLA DEL MES DE';
  Screen.Cursor:=crDefault;
  REPPLA.Print;
end;

procedure TFContabilizacion.BitBtn8Click(Sender: TObject);
var
   xSql,xSql2,xAnoMes,VMES:string ;
   xmes:integer;
begin
   ParametrosBoleta;
   Screen.Cursor:=crHourGlass;

   xSql:='SELECT CREFPAG FOPERAC, A.UPROID, A.USEID, A.ASOID, SUBSTR(A.CREDID,9,7) CREDID, '
        +   'A.CREDOCPAG, TO_CHAR(MIN(A.CREFPAG),''MM/YYYY'') FOP, MIN(A.ASOAPENOM) ASOAPENOM, '
        +   'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM, MIN(B.CCOSID) CCOSID, '
        +   'MIN(A.TIPCREID) TIPCREID, MIN(D.TIPCREDES) TIPCREDES, MIN(A.BANCOID) BANCOID, '
        +   'MIN(E.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, '
        +   'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB, SUM(NVL(A.CREAMORT,0)) CREAMORT, '
        +   'SUM(NVL(A.CREINTERES,0)) CREINTERES, '
   //Inicio: DPP_201214_COB
        +   'SUM(NVL(A.CREFLAT,0)) CREFLAT, SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC, '
        +   'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV '
   //Fin: DPP_201214_COB
        +'FROM CRE310'+cLink+' A, '
        +   '(SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'
        +   'APO102 C, CRE110 D, TGE105 E  '
        +'where '+xWhereBusqueda
        + ' and CREDOCPAG is not null '
        + ' and not CREESTID in (''13'') '
        //+ ' and not CREESTID in (''13'',''04'') '
        // SI ES DE MARZO 2007
        //+' and A.FREG<=''15/04/2007'' '
        //+ ' and ( not CREESTID in (''13'',''04'') OR (ASOID=''0000279277'') ) '
        // FIN MARZO 2007
        + ' and A.BANCOID is not null and A.CCBCOID is not null '
        + ' and A.UPROID=B.UPROID(+) and A.USEID=B.USEID(+) and A.UPROID=C.UPROID(+) '
        + ' and A.TIPCREID=D.TIPCREID(+) '
        + ' and A.BANCOID=E.BANCOID(+) and A.CIAID=''02'' '
        +'GROUP BY CREFPAG, A.UPROID, A.USEID, A.ASOID, A.CREDID, A.CREDOCPAG '
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
        //+'ORDER BY TO_CHAR(CREFPAG,''MM/YYYY''), CCBCOID, CREDOCPAG'
        +' UNION ALL '
        +' SELECT A.FEC_OPERACION FOPERAC, A.UPROID, A.USEID, A.ASOID, '''' CREDID, '
        +   'A.NRO_OPERACION, TO_CHAR(MIN(A.FEC_OPERACION),''MM/YYYY'') FOP, MIN(A.ASOAPENOM) ASOAPENOM, '
        +   'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM, MIN(B.CCOSID) CCOSID, '
        +   ''''' TIPCREID,'''' TIPCREDES, MIN(A.BANCOID) BANCOID, '
        +   'MIN(E.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, '
        +   'SUM(NVL(A.IMPORTE,0)) CREMTOCOB, 0 CREAMORT, '
        +   '0 CREINTERES, '
        +   '0 CREFLAT, SUM(NVL(A.IMPORTE,0)) CREMTOEXC, '
        +   '0 MONCOBDESGRAV '
        +'FROM COB_DES_CRO_CERRADO_DET A, '
        +   '(SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'
        +   'APO102 C,TGE105 E  '
//Inicio HPC_201815_COB
//Se corrige el fitro del reporte de excesos por banco de cronogramas cerrados
        +'  where A.FORPAGID=''03'' AND A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
//Final HPC_201815_COB
        + ' and A.NRO_OPERACION is not null '
        + ' and not A.FLGEST in (''13'') '
        + ' and A.BANCOID is not null and A.CCBCOID is not null '
        + ' and A.UPROID=B.UPROID(+) and A.USEID=B.USEID(+) and A.UPROID=C.UPROID(+) '
        + ' and A.BANCOID=E.BANCOID(+) '
        +'GROUP BY A.FEC_OPERACION, A.UPROID, A.USEID, A.ASOID , A.NRO_OPERACION ';
        //+'ORDER BY TO_CHAR(A.FEC_OPERACION,''MM/YYYY''), A.CCBCOID, A.NRO_OPERACION';
// Fin HPC_201806_COB 
    xSql2:='SELECT TO_CHAR(MIN(A.CREFPAG),''MM/YYYY'') FOP, A.CCBCOID, MAX(B.BANCONOM) BANCO, '
          +   'SUM(NVL(A.CREMTOCOB,0)) TOTAL '
          +'From CRE310'+cLink+' A, TGE105 B '
          +'Where '+xWhereBusqueda
          + ' and CREDOCPAG is not null '
          + ' and not CREESTID in (''13'') '
          //+ ' and not CREESTID in (''13'',''04'') '
          // SI ES DE MARZO 2007
          //+' and A.FREG<=''15/04/2007'' '
          //+ ' and ( not CREESTID in (''13'',''04'') OR (ASOID=''0000279277'') ) '
          // FIN MARZO 2007
          + ' and A.BANCOID is not null '
          + ' and A.CCBCOID is not null and A.BANCOID=B.BANCOID(+) '
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
          +'GROUP BY A.CCBCOID,TO_CHAR(a.CREFPAG,''MM/YYYY'')'
          +' UNION ALL '
          +' SELECT TO_CHAR(MIN(A.FEC_OPERACION),''MM/YYYY'') FOP, A.CCBCOID, MAX(B.BANCONOM) BANCO, '
          +   'SUM(NVL(A.IMPORTE,0)) TOTAL '
          +'From COB_DES_CRO_CERRADO_DET  A, TGE105 B '
//Inicio HPC_201815_COB
//Se corrige el fitro del reporte de excesos por banco de cronogramas cerrados
          +'Where  A.FORPAGID=''03'' AND A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
//Fin HPC_201815_COB
          + ' and A.NRO_OPERACION is not null '
          + ' and not A.FLGEST in (''13'') '
          + ' and A.BANCOID is not null '
          + ' and A.CCBCOID is not null and A.BANCOID=B.BANCOID(+) '
          +'GROUP BY A.CCBCOID,TO_CHAR(a.FEC_OPERACION,''MM/YYYY'')';
 // Fin HPC_201806_COB
  dm1.cdsQry3.Close;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  dm1.cdsQry3.IndexFieldNames:='FOPERAC;CCBCOID';
// Fin HPC_201806_COB
  dm1.cdsQry3.DataRequest(xSql);
  dm1.cdsQry3.Open;
  DBPBANCOS.DataSource  := DM1.dsQry3;

  dm1.cdsQry4.Close;
  dm1.cdsQry4.DataRequest(xSql2);
  dm1.cdsQry4.Open;
  DBPRESUMEN.DataSource := DM1.dsQry4;

  ppXtitulo2.Caption   := 'BOLETAS DE DEPOSITO DE BANCOS CONTABILIZADOS EN EL MES DE '+xMesDes+' DEL '+dbseAno.Text;
  ppXsubtitulo2.Caption:= 'BOLETAS DE BANCO FECHA DE OPERACION DEL ' ;
// Inicio: SPP_201308_COB        : Contabilización de cobranzas por ONP
  Screen.Cursor:=crDefault;
// Fin: SPP_201308_COB           : Contabilización de cobranzas por ONP
  ppBDEPPBANCO2.Print;

end;

procedure TFContabilizacion.fcShapeBtn7Click(Sender: TObject);
begin
   ParametrosBoleta;
   ReporteContabilizaCredito( xCnt311, 'BOL', xPeriodo );
end;

procedure TFContabilizacion.fcShapeBtn10Click(Sender: TObject);
begin
   ParametrosEfectivo;
   ReporteContabilizaCredito( xCnt311, 'EF', xPeriodo );
end;

procedure TFContabilizacion.BitBtn9Click(Sender: TObject);
var
   xSQL, xPeriodo : String;
begin
   ParametrosEfectivo;
   xSQL:='SELECT USUARIO, USERNOM, CREFPAG, SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '
        +   'SUM(NVL(CREAMORT,0)) CREAMORT, SUM(NVL(CREINTERES,0)) CREINTERES, '
        +   'SUM(NVL(CREFLAT,0)) CREFLAT, SUM(NVL(CREMTOEXC,0)) CREMTOEXC, '
   //Inicio: DPP_201214_COB
        +   'SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV, '
   //Fin: DPP_201214_COB
        +   '''COBRANZAS EN EFECTIVO DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310'+cLink+' A, USERTABLE B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99'' AND CREESTID<>''04'' '
        + ' and A.USUARIO=B.USERID(+) '
        +'GROUP BY USUARIO,USERNOM,CREFPAG '
        +'ORDER BY USUARIO,USERNOM,CREFPAG ';

   dm1.cdsQry4.Close;
   dm1.cdsQry4.DataRequest(xSQL);
   dm1.cdsQry4.Open;

   ppdb10.DataSource :=nil;
   ppr10.DataPipeline:=nil;
//   ppr10.Template.FileName:='CobranzasEnEfectivo.rtm';
//   ppr10.Template.LoadFromFile;
   ppdb10.DataSource :=  DM1.dsQry4;
   ppr10.DataPipeline:=ppdb10;
   Screen.Cursor:=crDefault;
   //ppd10.ShowModal;
   ppr10.Print;
   ppr5.Stop;
   ppdb5.DataSource :=nil;
   ppr5.DataPipeline:=nil;
end;

procedure TFContabilizacion.BitBtn13Click(Sender: TObject);
var
   xCia, xSQL, xSQL2, xSQL3, xSQL4, xCNTComprob,xAnoMes,CTAHABE,CTADEBE  : String;
   xNumComp : Integer;
begin
   wTipoCont := 'AP';
   wTipoCont2 := 'APOA';
   xAnoMes :=dbseAno.Text+dbseMes.Text;
   CTAHABE:='4691205';
   CTADEBE:='4810001';

   ParametrosAnulApo;
   Screen.Cursor:=crHourGlass;

// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Compañía Principal ('02')
// Total Cobrado
   xSQL:='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, '
        +  'CCOSID,CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, CNTHABEMN, CNTFEMIS, CNTFVCMTO ) '

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE ANULACION DE APORTES
//-----------------------------------------------------------------------------------
// APORTES  DEBE
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+','+CTADEBE+','
          +'B.CCOSID, ''APOA'' LOTE, ''000'' CNTSERIE, A.TRANSNOPE,'
          +'A.UPROID||''-''||substr(B.USENOM,1,22)||''-''||A.TRANSANO||''-''||A.TRANSMES GLOSA,'
          +'sum(NVL(A.TRANSMTO,0)) DEBE,0.00 HABER,'
          +'A.TRANSFOPE, TO_DATE(A.FECANULA) '
          +'From APO313'+cLink+' A, APO101'+cLink+' B '
          +'where CNTANOMMN='''+ xAnoMes +''''
          +'  and CNTFLAG=''S'' '
          // Inicio SPP_201410_COB 
          +'  and nvl(TRANSMTO,0)>0 '
          // Fin SPP_201410_COB
          +'  and A.UPROID=B.UPROID'
          +'  and A.USEID=B.USEID'
          +'  and A.UPAGOID=B.UPAGOID'
          +' group by A.TRANSNOPE, B.CCOSID, A.UPROID||''-''||substr(B.USENOM,1,22)||''-''||A.TRANSANO||''-''||A.TRANSMES, A.TRANSFOPE, A.TRANSNOPE, A.FECANULA '
// APORTES POR IDENTIFICAR HABER
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+','+CTAHABE+','
          +''' '' CCOSID, ''APOA'' LOTE, ''000'' CNTSERIE,A.TRANSNOPE,'
          +'A.UPROID||''-''||substr(B.USENOM,1,22)||''-''||A.TRANSANO||''-''||A.TRANSMES GLOSA, '
          +'0.00 DEBE, sum(NVL(A.TRANSMTO,0)) HABER,'
          +'A.TRANSFOPE, TO_DATE(A.FECANULA) '
          +'from APO313'+cLink+' A, APO101'+cLink+' B  '
          +'where CNTANOMMN='''+ xAnoMes +''''
          +'  and CNTFLAG=''S'' '
          // Inicio SPP_201410_COB 
          +'  and nvl(TRANSMTO,0)>0 '
          // Fin SPP_201410_COB
          +'  and A.UPROID=B.UPROID'
          +'  and A.USEID=B.USEID'
          +'  and A.UPAGOID=B.UPAGOID'
          +' group by A.TRANSNOPE,A.UPROID||''-''||substr(B.USENOM,1,22)||''-''||A.TRANSANO||''-''||A.TRANSMES, A.TRANSFOPE, A.TRANSNOPE, A.FECANULA';

    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// generando otros datos
   xTCambio:='3.28';
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('23')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(xDiaFin)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')+',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE, CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)  +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)+',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)   +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)+',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('APORTES')+',DOCDES='+quotedstr('Cob.Bole')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'+',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')+',CNTMODDOC='+quotedstr('APO')
          +',MODULO='+quotedstr('APO')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, CNTLOTE, CNTNODOC, CNTGLOSA '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' group by CIAID, CNTLOTE, CNTNODOC, CNTGLOSA ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTLOTE;CNTNODOC;CNTGLOSA';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 10000
      else
         xNumComp := 10000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString)
                +'   and CNTNODOC='+quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTGLOSA='+quotedstr(DM1.cdsQry3.FieldByName('CNTGLOSA').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select * '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;
   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''33'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''APORTES ANULADOS ''||''-''||SUBSTR(A.CNTGLOSA,1,3)||''-''||CNTNODOC CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('33')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,''APORTES ANULADOS ''||''-''||SUBSTR(A.CNTGLOSA,1,3)||''-''||CNTNODOC, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;


procedure TFContabilizacion.ParametrosAnulApo;
begin
   //SE CONTABILIZA SOLO AQUELLOS QUE SE ANULARON EN EL MES Y ANO A CONTABILIZAR (CNTANOMM)
   //Y EN PERIODOS ANTERIORES YA FUERON CONTABILIZADOS (CNTFLAG='S')
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   wTipoCont := 'AP';
   wTipoCont2 := 'APOA';
   DatosFecha;
   xWhereBusqueda:=' A.CNTANOMMN='+quotedstr(dbseAno.text+dbseMes.text)+' '
                  +' and A.CNTFLAG=''S'' ';
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;

procedure TFContabilizacion.BitBtn14Click(Sender: TObject);
begin
 ParametrosAnulApo;
 CorrigeUnidadDePago2;
end;




procedure TFContabilizacion.CorrigeUnidadDePago2;
var
   xSql:string;
begin

  Screen.Cursor:=crHourGlass;

  FilIncos4;  //Aportes anulados

  while not DM1.cdsQry1.Eof do
  begin
     //Filtra del CRE301 La cuota a modificar               ¿
     xSQL := 'SELECT A.* FROM APO313 A '
           + 'WHERE ASOID='''  +DM1.cdsQry1.FieldByName('ASOID').AsString   +''' '
           +  'and APOSEC='''  +DM1.cdsQry1.FieldByName('APOSEC').AsString  +''' '
           +  'and APO301ID='+DM1.cdsQry1.FieldByName('APO301ID').AsString;
     DM1.cdsCambios.Close;
     DM1.cdsCambios.DataRequest(xSQL);
     DM1.cdsCambios.Open;
     if DM1.cdsCambios.RecordCount >= 1 then
       Begin
         while not DM1.cdsCambios.Eof do
           begin
           // Actualiza la USEID, UPROID, UPAGOID de la tabla APO201
              xSql:= 'Select asoid,useid,uproid,upagoid From APO201 Where ASOID='''+DM1.cdsCambios.FieldByName('ASOID').AsString +''' ';
              DM1.cdsQry2.Close;
              DM1.cdsQry2.DataRequest(xSql);
              DM1.cdsQry2.Open;

              If DM1.cdsQry2.RecordCount >=1 then
                begin
                  DM1.cdsCambios.Edit;
                  DM1.cdsCambios.FieldByName('USEID').AsString  := DM1.cdsQry2.FieldByName('USEID').AsString ;
                  DM1.cdsCambios.FieldByName('UPROID').AsString := DM1.cdsQry2.FieldByName('UPROID').AsString ;
                  DM1.cdsCambios.FieldByName('UPAGOID').AsString:= DM1.cdsQry2.FieldByName('UPAGOID').AsString ;
                  DM1.cdsCambios.ApplyUpdates(0);
                end;

            DM1.cdsCambios.Next;
         End
     End;
     DM1.cdsQry1.Next;
  end;


  // Segunda pasada actualiza del APO101 el Upagoid

  //Filtra del CRE310 Aquellas Uses Uproid Upagoid no estan en APO101

  FilIncos4;     //Aportes Anulados

  while not DM1.cdsQry1.Eof do
  begin
     //Filtra del CRE301 La cuota a modificar la unida de pago
     xSql := 'SELECT * FROM APO313 '
           + 'WHERE ASOID='''  +DM1.cdsQry1.FieldByName('ASOID').AsString   +''' '
           +  'and APOSEC='''  +DM1.cdsQry1.FieldByName('APOSEC').AsString  +''' '
           +  'and APO301ID='+DM1.cdsQry1.FieldByName('APO301ID').AsString;
     DM1.cdsCambios.Close;
     DM1.cdsCambios.DataRequest(xSQL);
     DM1.cdsCambios.Open;
     if DM1.cdsCambios.RecordCount >= 1 then
     begin
        while not DM1.cdsCambios.Eof do
        begin
           // Actualiza la Upagoid de la tabla APO101
           xSql:= 'Select * From APO101 Where USEID='''+DM1.cdsCambios.FieldByName('USEID').AsString +
                  ''' and UPROID='''+DM1.cdsCambios.FieldByName('UPROID').AsString +''' ';
           DM1.cdsQry2.Close;
           DM1.cdsQry2.DataRequest(xSql);
           DM1.cdsQry2.Open;

           if DM1.cdsQry2.RecordCount >=1 then
           begin
              DM1.cdsCambios.Edit;
              DM1.cdsCambios.FieldByName('UPAGOID').AsString := DM1.cdsQry2.FieldByName('UPAGOID').AsString ;
              DM1.cdsCambios.ApplyUpdates(0);
           end
           else
             //SI NO LO ENCUENTRA POR UPROID+USEID LO BUSCA POR UPROID+UPAGOID
           begin
              xSql:= 'Select * From APO101 Where UPAGOID='''+DM1.cdsCambios.FieldByName('UPAGOID').AsString +
                     ''' and UPROID='''+DM1.cdsCambios.FieldByName('UPROID').AsString +''' ';
              DM1.cdsQry2.Close;
              DM1.cdsQry2.DataRequest(xSql);
              DM1.cdsQry2.Open;
              if DM1.cdsQry2.RecordCount>= 1 then
              begin
                 DM1.cdsCambios.Edit;
                 DM1.cdsCambios.FieldByName('USEID').AsString := DM1.cdsQry2.FieldByName('USEID').AsString ;
                 DM1.cdsCambios.ApplyUpdates(0);
              end;

           end;

           DM1.cdsCambios.Next;
        end
     end;

     DM1.cdsQry1.Next;
  end;

	Screen.Cursor:=crDefault;
end;


procedure TFContabilizacion.FilIncos4;


begin
  xSQL:='SELECT * FROM '
       +  '( SELECT  A.ASOID, A.APOSEC,A.APO301ID, A.USEID, A.UPROID, A.UPAGOID, B.USEID BUSEID, '
       +       'B.UPROID BUPROID, B.UPAGOID BUPAGOID, B.CCOSID BCCOSID '
       +    'FROM ( SELECT ASOID, APOSEC,APO301ID, USEID, UPROID, UPAGOID '
       +           'From APO313 A '
       +           'where '+xWhereBusqueda
       +          ') A, APO101 B '
       +    'WHERE A.USEID=B.USEID(+) AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) '
       + ') C '
       +'WHERE BUSEID IS NULL ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(XsQL);
  DM1.cdsQry1.Open;
end;


procedure TFContabilizacion.BitBtn10Click(Sender: TObject);

var
   xSQL : String;

begin
   bError:=True;
   ParametrosAnulApo;
// Verifica que esten todos los Centros de Costos
   xSQL := 'select distinct GLOSA, ''Sin Centro de Costo'' OBSERVACION, '
          +   '''INCONSISTENCIA DE ANULACION DE APORTES'' TITULO '
          +' from( '
          +'select ''USE=''||A.USEID||'' y UPAGO=''||A.UPAGOID||'' y UPRO=''||A.UPROID||'' / ''||A.ASOAPENOM||''/ ''||A.TRANSNOPE||''/ ''||A.TRANSMTO GLOSA, C.CCOSID '
          +'from APO313'+cLink+' A, APO101'+cLink+' C '
          +'where'+xWhereBusqueda
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +') XX '
          +'where CCOSID is null '
          +'order by GLOSA ';
   ImprimeInconsistenciaVerificaCuentaCCosto( xSQL );


   ShowMessage('ok');
end;

procedure TFContabilizacion.fcShapeBtn12Click(Sender: TObject);
begin
    ReporteContabilizaCredito( xCnt311, 'APOA',xPeriodo );
end;

procedure TFContabilizacion.fcShapeBtn11Click(Sender: TObject);
begin
    ReporteContabilizaCredito( xCnt311r, 'APOA',xPeriodo );
end;

procedure TFContabilizacion.BitBtn12Click(Sender: TObject);
begin
   ParametrosAnulApo;
   TransferirContabilidad2('APOA','33',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);
end;



//TRANSFERIR HA CONTABILIDID
procedure TFContabilizacion.TransferirContabilidad2(cLote, cOrigen,xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r: String);
var nMAxComprob:integer;
    nRenumCompro,oRenumCompro:string;
begin
    //VERIFICA SI YA EXISTE EN CONTABILIDA
      xSQL:='SELECT COUNT(1) CUENTA FROM '+ xCnt300r+' WHERE CIAID=''02'' AND CNTANOMM='''+xPeriodo
            +''' AND TDIARID='''+cOrigen
            +''' and CNTLOTE ='''+cLote+''' ' ;
      dm1.cdsQry.Close;
      dm1.cdsQry.DataRequest(xSQL);
      dm1.cdsQry.Open;

      if dm1.cdsQry.FieldByName('CUENTA').AsInteger > 0 then
         begin
           ShowMessage('Ya exite Aportes anulados transferidos para el periodo '+xPeriodo);
           exit;
         end;


   //VERIFICA SI EXISTE INFORMACION HA TRANSFERIR
       xSQL:='SELECT COUNT(1) CUENTA FROM '+ xCnt300+ ' WHERE CIAID=''02'' AND CNTANOMM='''+xPeriodo
            +''' AND TDIARID='''+cOrigen
            +''' and CNTLOTE ='''+cLote+ ''' ';
      dm1.cdsQry.Close;
      dm1.cdsQry.DataRequest(xSQL);
      dm1.cdsQry.Open;

      if dm1.cdsQry.FieldByName('CUENTA').AsInteger <=0 then
         begin
          ShowMessage('No existe información para transferir del periodo '+xPeriodo);
           exit;
         end;


    //BUSCA EL VALOR MAXIMO EN LA CONTABILIDAD
      XSQL:='SELECT MAX(CNTCOMPROB) MAXCOMPRO FROM '+ xCnt300r+ ' WHERE CIAID=''02'' AND  CNTANOMM='''+xPeriodo
            +''' AND TDIARID='''+cOrigen+''' '
            +' GROUP BY CIAID,CNTANOMM,TDIARID ';
      dm1.cdsQry.Close;
      dm1.cdsQry.DataRequest(xSql);
      dm1.cdsQry.Open;
      if dm1.cdsQry.RecordCount > 0  then
         nMAxComprob:=dm1.cdsQry.FieldByname('MAXCOMPRO').AsInteger else nMAxComprob:=0;



    //RENUMERA SOBRE EL ARCHIVO DE TRABAJO
      XSQL:='SELECT * FROM ' + xCnt300 + ' WHERE CIAID=''02'' AND CNTANOMM='''+xPeriodo
            +''' AND TDIARID='''+cOrigen
            +''' AND CNTLOTE ='''+cLote+ ''' ' ;
      dm1.cdsQry.Close;
      dm1.cdsQry.DataRequest(xSql);
      dm1.cdsQry.Open;
      dm1.cdsQry.First;

      While not dm1.cdsQry.Eof do
        begin
         nMAxComprob:=nMAxComprob+1;
         nRenumCompro:= dm1.StrZero(trim(IntToStr(nMAxComprob)),10);
         oRenumCompro:= dm1.cdsQry.FieldByName('CNTCOMPROB').AsString;

         //Renumera CNT300COB
           XSQL:='UPDATE '+ xCnt300 + ' SET CNTCOMPROB='''+nRenumCompro
                 +''' WHERE CIAID=''02'''
                 +' AND   CNTANOMM='''+xPeriodo
                 +''' AND TDIARID='''+cOrigen
                 +''' AND CNTLOTE='''+clote
                 +''' AND CNTCOMPROB='''+oRenumCompro+'''';
           dm1.cdsCEdu.Close;
           dm1.cdsCEdu.DataRequest(XSQL);
           dm1.cdsCEdu.Execute;

         //Renumera CNT311COB
           XSQL:='UPDATE '+ xCnt311 + ' SET CNTCOMPROB='''+nRenumCompro
                 +''' WHERE CIAID=''02'''
                 +' AND  CNTANOMM='''+xPeriodo
                 +''' AND  TDIARID='''+cOrigen
                 +''' AND CNTLOTE='''+clote
                 +''' AND CNTCOMPROB='''+oRenumCompro+'''';
           dm1.cdsCEdu.Close;
           dm1.cdsCEdu.DataRequest(XSQL);
           dm1.cdsCEdu.Execute;

         dm1.cdsQry.Next;
        end;


    //TRASNFIERE AL ARCHIVO DE CONTABILIDAD
      xSQL:='insert into '+xCnt300r+' '
           +'select * from '+xCNT300+' '
           +'where CIAID=''02'' AND CNTANOMM='''+xPeriodo+''' '
           +' and TDIARID ='''+cOrigen +''' '
           +' and CNTLOTE LIKE '''+cLote+'%'' '
           +'order by CIAID, TDIARID, CNTCOMPROB';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
        DM1.cdsQry2.Execute;
      except
      end;


     xSQL:='insert into '+xCnt311r+' '
          +'select * from '+xCNT311+' '
          +'where CIAID=''02'' AND CNTANOMM='''+xPeriodo+''' '
          +' and TDIARID ='''+cOrigen+''' '
          +  'and CNTLOTE LIKE '''+cLote+'%'' '
          +'order by CIAID, TDIARID, CNTCOMPROB';
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest( xSQL );
     try
        DM1.cdsQry2.Execute;
     except
    end;


    //MARCA APORTES TRANSFERIDOS CNTFLAG='S' en APO313
     XSQL:='UPDATE APO313 SET CNTFLAGN=''S'' '
          +'where CNTANOMMN='''+ xPeriodo +''''
          +'  and CNTFLAG=''S'' ';
    dm1.cdsQry2.Close;
    dm1.cdsQry2.DataRequest(xSql);
    try
      dm1.cdsQry2.Execute;
    except
    end;
end;

procedure TFContabilizacion.BitBtn11Click(Sender: TObject);
begin

  xsql:='SELECT * FROM APO313'+cLink+' '
       +'WHERE CNTANOMMN='''+ xPeriodo +''' and CNTFLAG=''S'' '
       // Inicio SPP_201410_COB
       +'  and nvl(TRANSMTO,0)>0 '
       // Fin SPP_201410_COB
       +'order by UPROID,USEID,TRANSNOPE';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(XSQL);
  DM1.cdsQry1.Open;
  ppbdeAnulaApo.DataSource := DM1.dsQry1;
  ppLanomes.Caption:= xPeriodo;
  ppRAnulaApo.Print;
  ppRAnulaApo.Stop;

end;

//Inicio HPC_201615_COB
//Se reestructura ubicación de la opción de contabilización de extornos
{
procedure TFContabilizacion.BitBtn19Click(Sender: TObject);
var
   xCia, xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xCNTComprob,xAnoMes  : String;
   xNumComp : Integer;
begin
   wTipoCont := 'EX';
// Inicio: SPP_201304_COB         : Extornos de Boleta de Depositos (EXT2) al contabilizar elimina los Extornos de Créditos (EXTC)
   wTipoCont2 := 'EXT2';
// Fin: SPP_201304_COB            : Extornos de Boleta de Depositos (EXT2) al contabilizar elimina los Extornos de Créditos (EXTC)

   xAnoMes :=dbseAno.Text+dbseMes.Text;

   ParametrosExtorno;
   
   Screen.Cursor:=crHourGlass;
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Compañía Principal ('02')
// Total Cobrado
   xSQL1:='';
   xSQL2:='';
   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, '
          +'                       CCOSID,CNTLOTE, CNTSERIE, CNTNODOC,CNTGLOSA, CNTDEBEMN, CNTHABEMN,CNTFEMIS ) ';

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE COBRANZAS X BOL.DEPOSITO DE MESES ANTERIORES SOBRE CNT311COB
//-----------------------------------------------------------------------------------
// MONTO COBRADO (DEBE)
      xSQL3:=''
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',E.CTAOPEXLIQ,'
          +'null CCOSID, ''EXT2'' LOTE, ''COBR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'0.00 DEBE,  sum(A.CREMTOCOB) HABER, '
// Inicio: SPP_201304_COB         : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB            : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'from COB901 A, TGE106 E '
          +'where A.FORPAGID=''03'' '
          //+'  and CNTANOMM='''+xAnoMes+''''
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
// Inicio: DPP_201219_COB
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
// Fin: DPP_201219_COB
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREMTOCOB,0)>0'
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by CREDOCPAG, TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30), E.CTAOPEXLIQ '
// Amortizaciones
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, ''EXT2'' LOTE, ''AMOR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREAMORT) DEBE, 0.00 HABER, '
// Inicio: SPP_201304_COB         : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB            : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
           +'from COB901 A, CRE110 B, APO101 C, TGE106 E '
          +'where A.FORPAGID=''03'' '
          //+'  and CNTANOMM='''+xAnoMes+''''
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
// Inicio: DPP_201219_COB
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
// Fin: DPP_201219_COB
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREAMORT,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, ''EXT2'' LOTE, ''EXCE'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREMTOEXC) DEBE, 0.00 HABER, '
// Inicio: SPP_201304_COB         : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB            : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'from COB901 A, CRE110 B, APO101 C, TGE106 E '
          +'where A.FORPAGID=''03'' '
          //+'  and CNTANOMM='''+xAnoMes+''''
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
// Inicio: DPP_201219_COB
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
// Fin: DPP_201219_COB
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAINT,'
          +'null CCOSID, ''EXT2'' LOTE, ''INTE'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREINTERES) DEBE, 0.00 HABER, '
// Inicio: SPP_201304_COB        : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB           : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'from COB901 A, CRE110 B, TGE106 E '
          +'where A.FORPAGID=''03'' '
          //+'  and CNTANOMM='''+xAnoMes+''''
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
// Inicio: DPP_201219_COB
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
// Fin: DPP_201219_COB
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREINTERES,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CTAINT,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
// Flat
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAFLAT,'
          +'null CCOSID, ''EXT2'' LOTE, ''FLAT'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREFLAT) DEBE, 0.00 HABER, '
// Inicio: SPP_201304_COB         : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB            : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'from COB901 A, CRE110 B, TGE106 E '
          +'where A.FORPAGID=''03'' '
          //+'  and CNTANOMM='''+xAnoMes+''''
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
// Inicio: DPP_201219_COB
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
// Fin: DPP_201219_COB
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREFLAT,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CTAFLAT,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
//----
// Inicio: DPP_201219_COB
// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV,'
          +'null CCOSID,''EXT2'' LOTE,''FPD'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(nvl(A.MONCOBDESGRAV,0)) DEBE,0.00 HABER, '
// Inicio: SPP_201304_COB        : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB           : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'from COB901 A, CRE110 B, TGE106 E, CRE301 C, APO107 T  '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and a.CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null '
          +'  and A.BANCOID is not null  '
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID  '
          +'  and E.CCBCOID=A.CCBCOID '
          +'  and E.CIAID=''02'' '
          + ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          + ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID,T.CTA_DESGRAV,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
// Fin: DPP_201219_COB
//----

// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          //+quotedstr(dbseAno.text+dbseMes.text)+',B.FILIAL,'
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +'null CCOSID, ''EXT2'' LOTE, ''FILI'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) DEBE, 0.00 HABER, '
// Inicio: SPP_201304_COB         : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB            : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'from COB901 a, CRE110 B, TGE106 E '
          +'where A.FORPAGID=''03'' '
          //+'  and CNTANOMM='''+xAnoMes+''''
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
// Inicio: SPP_201407_COB            : Corregir el Filtro de Contabilización de Extorno de Boletas de Depositos
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
// Fin   : SPP_201407_COB            : Corregir el Filtro de Contabilización de Extorno de Boletas de Depositos
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CUENTAID, B.CIAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
//////////////////////////////////////////////////////////////////////////////////////////////////////
// ASIENTOS DE LAS OTRAS COMPAÑÍAS
//////////////////////////////////////////////////////////////////////////////////////////////////////
// Monto Cobrado
      xSQL4:=''
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAH,'
          +'null CCOSID, ''EXT2'' LOTE, ''COBR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'0.00 DEBE, sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) HABER, '
// Inicio: SPP_201304_COB        : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB           : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'from COB901 A,CRE110 B, TGE106 E '
          +'where A.FORPAGID=''03'' '
          //+'  and CNTANOMM='''+xAnoMes+''''
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          //+'  and E.CIAID=A.CIAID '
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,CUENTAH,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' '
// Amortización
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, ''EXT2'' LOTE, ''AMOR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREAMORT) DEBE, 0.00 HABER, '
// Inicio: SPP_201304_COB         : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB            : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'from COB901 A, CRE110 B, APO101 C, TGE106 E '
          +'where A.FORPAGID=''03'' '
          //+'  and CNTANOMM='''+xAnoMes+''''
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREAMORT,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          //+'  and E.CIAID=A.CIAID '
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' '
// Excesos
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, ''EXT2'' LOTE, ''EXCE'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREMTOEXC) DEBE, 0.00 HABER, '
// Inicio: SPP_201304_COB         : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
// Fin: SPP_201304_COB            : Ademas grabar en CNTFEMIS = TO_DATE( FECANULA )
          +'from COB901 A, CRE110 B, APO101 C, TGE106 E '
          +'where A.FORPAGID=''03'' '
          //+'  and CNTANOMM='''+xAnoMes+''''
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          //+'  and E.CIAID=A.CIAID '
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';

    //DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2+xSQL3+xSQL4);
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2+xSQL3);


    //DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2);

// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFVCMTO='+quotedstr(xDiaFin)
          +',CNTFCOMP='+quotedstr(xDiaFin)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X BOL.DEPO')
          +',DOCDES='+quotedstr('Cob.Bole')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
// Inicio: DPP_201219_COB


   xSQL := 'select B.CIAID,CNTNODOC,CNTGLOSA  '
          +'from CNT311COB B '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by B.CIAID,CNTNODOC,CNTGLOSA ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   //DM1.cdsQry3.IndexFieldNames:='CIAID;CNTLOTE;CNTGLOSA';
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTNODOC;CNTGLOSA';
// Fin: DPP_201219_COB
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
// Inicio: DPP_201219_COB


         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='    +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='  +quotedstr(wTipoCont)
                +'   and CNTANOMM=' +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='  +quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTGLOSA='  +quotedstr(DM1.cdsQry3.FieldByName('CNTGLOSA').AsString);
// Fin: DPP_201219_COB
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;


// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select * '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''35'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''BOLETAS DEPOSITO ''||substr(A.CNTGLOSA,1,8) CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('35')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,''BOLETAS DEPOSITO ''||substr(A.CNTGLOSA,1,8), '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;}
//Final HPC_201615_COB

procedure TFContabilizacion.ParametrosExtorno;
begin
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   wTipoCont := 'EX';
   wTipoCont2 := 'EXT';
   DatosFecha;
   xWhereBusqueda:=' A.CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)+' '
                  +' and A.TIPOCONT LIKE '+quotedstr( wTipoCont2+'%')+' ';
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;

//Inicio HPC_201615_COB
//Se reestructura ubicación de botones
{procedure TFContabilizacion.fcShapeBtn13Click(Sender: TObject);
begin
    ReporteContabilizaCredito( xCnt311, 'EXT',xPeriodo );
end;}
//Final HPC_201615_COB

//Inicio HPC_201615_COB
//Se reestructura ubicación de botones
{
procedure TFContabilizacion.BitBtn20Click(Sender: TObject);
begin
// Inicio: SPP_201304_COB         : Extornos de Boleta de Depositos (EXT2) al contabilizar elimina los Extornos de Créditos (EXTC)
   wTipoCont2:= 'EXT2';
   wTipoCont := 'EXT2';
  TransferirContabilidad( 'EXT2', '35',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);
// Fin: SPP_201304_COB            : Extornos de Boleta de Depositos (EXT2) al contabilizar elimina los Extornos de Créditos (EXTC)
end;
}
//Final HPC_201615_COB


//Inicio HPC_201615_COB
//Se reestructura ubicación de botones
{
procedure TFContabilizacion.fcShapeBtn14Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311r, 'EXT',xPeriodo );
end;
}
//Final HPC_201615_COB

//Inicio HPC_201615_COB
//Se reestructura ubicación de botones
{procedure TFContabilizacion.BitBtn18Click(Sender: TObject);
VAR
   xSql,xSql2,xAnoMes,VMES:string ;
   xmes:integer;
begin
   ParametrosExtorno;
   Screen.Cursor:=crHourGlass;

   xSql := 'SELECT  A.FECANULA FOPERAC,'+
           'A.UPROID,'+
           'A.USEID,'+
           'A.ASOID,'+
           'SUBSTR(A.CREDID,9,7) CREDID,'+
           'A.CREDOCPAG,'+
           'TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,'+
           'MIN(A.ASOAPENOM) ASOAPENOM,'+
           'MIN(C.UPRONOM) UPRONOM,'+
           'MIN(B.USENOM) USENOM,'+
           'MIN(B.CCOSID) CCOSID,'+
           'MIN(A.TIPCREID) TIPCREID,'+
           'MIN(D.TIPCREDES) TIPCREDES,'+
           'MIN(A.BANCOID) BANCOID,'+
           'MIN(E.BANCONOM) BANCONOM,'+
           'MAX(A.CCBCOID) CCBCOID,'+
           'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
           'SUM(NVL(A.CREAMORT,0)) CREAMORT,'+
           'SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
           'SUM(NVL(A.CREFLAT,0)) CREFLAT,'+
// Inicio: DPP_201219_COB
           'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
// Fin: DPP_201219_COB
           'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '+
           'FROM COB901 A,'+
                '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
                'APO102 C,'+
                'CRE110 D,'+
                'TGE105 E  '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
// Inicio: DPP_201219_COB
          +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
// Fin: DPP_201219_COB
                +' and CREDOCPAG is not null  and '+
                'A.BANCOID is not null  and '+
                'A.CCBCOID is not null  and '+
                'A.UPROID=B.UPROID(+) AND '+
                'A.USEID=B.USEID(+) and '+
                'A.UPROID = C.UPROID (+) and '+
                'A.TIPCREID=D.TIPCREID (+)  and '+
                'A.BANCOID=E.BANCOID (+) '+
                //'A.CIAID=''02'' '+
         'GROUP BY A.FECANULA, A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG '+
         'ORDER BY TO_CHAR(FECANULA,''MM/YYYY''),CCBCOID,CREDOCPAG ' ;

    xSql2 := 'SELECT TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,A.CCBCOID,MAX(B.BANCONOM) BANCO,SUM(NVL(A.CREMTOCOB,0)) TOTAL '+
             ' FROM COB901 A, TGE105 B '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
// Inicio: DPP_201219_COB
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
// Fin: DPP_201219_COB
                  +' and CREDOCPAG is not null  and '+
                  'A.BANCOID is not null  and '+
                  'A.CCBCOID is not null  and '+
                  'A.BANCOID=B.BANCOID(+) '+
             'GROUP BY A.CCBCOID,TO_CHAR(A.FECANULA,''MM/YYYY'') ' ;

  dm1.cdsQry3.Close;
  dm1.cdsQry3.IndexFieldNames:='FOP;CCBCOID';
  dm1.cdsQry3.DataRequest(xSql);
  dm1.cdsQry3.Open;
  DBPBANCOS.DataSource  := DM1.dsQry3;

  dm1.cdsQry4.Close;
  dm1.cdsQry4.DataRequest(xSql2);
  dm1.cdsQry4.Open;
  DBPRESUMEN.DataSource := DM1.dsQry4;

  ppXtitulo2.Caption   := 'EXTORNO DE BOLETAS DE DEPOSITO CONTABILIZADOS EN '+xMesDes+' DEL '+dbseAno.Text;
  ppXsubtitulo2.Caption:= 'BOLETAS DE BANCO FECHA DE OPERACION DEL ' ;
  ppBDEPPBANCO2.Print;

end;}
//Final HPC_201615_COB

procedure TFContabilizacion.BitBtn21Click(Sender: TObject);
var xSQL,xAsoId,xPeriodo,xPerCob,xfIni,xCrefPag,xCreDocPag,xUsuario,xfFin:String;
    xAno,xMes:Integer;
    xCremtoCob:Currency;
begin
 xAno := StrToInt(dbseAno.Text);  xMes := StrToInt(dbseMes.Text);
 xPeriodo:=IntToStr(xAno)+Format('%.2d',[xMes]);   xfIni:='01/'+Format('%.2d',[StrToInt(Trim(Copy(xPeriodo,5,2)))])+'/'+Trim(Copy(xPeriodo,1,4));   xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(xPeriodo,5,2))),StrToInt(Trim(Copy(xPeriodo,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(xPeriodo,5,2)))])+'/'+Trim(Copy(xPeriodo,1,4));
 xSQL:='SELECT * FROM CAJA321 WHERE TO_CHAR(ECFCOMP,''YYYYMM'')='+QuotedStr(xPeriodo)+' AND TDIARID=''04'' AND CIAID=''02'' AND CUENTAID=''CTAME0004'' AND EC_IE=''I'' ';
 DM1.cdsQry.Close;
 DM1.cdsQry.DataRequest(xSQL);
 DM1.cdsQry.Open;
 If DM1.cdsQry.RecordCount > 0 Then
    Begin
       MessageDlg('Información De Cobranza En EFECTIVO Ya Se Encuentra Generada En CAJA321 ', mtInformation, [mbOk], 0);
       DM1.cdsQry.Close;
       Exit;
    End;
 DM1.cdsQry.Close;
 xSQL:='SELECT ASOID, CREDID, CREFPAG, CREDOCPAG, USUARIO, SUM(CREMTOCOB) CREMTOCOB FROM CRE310 '
      +'WHERE CREFPAG BETWEEN '+QuotedStr(xfIni)+' AND '+QuotedStr(xfFin)+' AND FORPAGID=''02'' AND CREESTID<>''13'' '
      +'GROUP BY ASOID,CREDID,CREFPAG,CREDOCPAG,USUARIO ';
 DM1.cdsCuotas.Close;
 DM1.cdsCuotas.DataRequest(xSQL);
 DM1.cdsCuotas.Open;
 If DM1.cdsCuotas.RecordCount>0 Then
    Begin
       prbAvance.Visible:=True;
       prbAvance.Position := 0; prbAvance.Max:=DM1.cdsCuotas.RecordCount; prbAvance.Position := 1;
       DM1.cdsCuotas.First;
       While Not DM1.cdsCuotas.Eof Do
       Begin
           FContabilizacion.Refresh;
           prbAvance.Position := prbAvance.Position + 1;
           xAsoId:=DM1.cdsCuotas.FieldByName('ASOID').AsString;
           xCremtoCob:=DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency;
           xCrefPag:=DM1.cdsCuotas.FieldByName('CREFPAG').AsString;
           xCreDocPag:=DM1.cdsCuotas.FieldByName('CREDOCPAG').AsString;
           xUsuario:=DM1.cdsCuotas.FieldByName('USUARIO').AsString;
           GrabaCaja(xAsoid,xPeriodo,xCrefPag,xCreDocPag,xUsuario,xCremtoCob);
           DM1.cdsCuotas.Next;
       End;
       prbAvance.Position:=0; prbAvance.Visible:=False;
       MessageDlg('Información De Cobranza En EFECTIVO Generada En CAJA321 !!!!', mtInformation, [mbOk], 0);
    End;
    DM1.cdsCuotas.Close;

end;

function TFContabilizacion.NroComp(xPeriodo:String): String;
var xCorr:Integer;
    xSQL:String;
begin
xSQL:='SELECT MAX(ECNOCOMP)+1 TOTAL FROM CAJA321 WHERE CIAID=''02'' AND TDIARID=''04'' AND ECANOMM='+QuotedStr(xPeriodo);
DM1.cdsDetRegCob.Close;
DM1.cdsDetRegCob.DataRequest(xSQL);
DM1.cdsDetRegCob.Open;
xCorr:=DM1.cdsDetRegCob.FieldByName('TOTAL').AsInteger;
Result:= Format('%.10d',[xCorr]);
DM1.cdsDetRegCob.Close;
end;

function TFContabilizacion.NroDNI(xAsoid: String): String;
var xSQL,xDni:String;
begin
xDni:='';
xSQL:='SELECT ASODNI FROM APO201 WHERE ASOID='+QuotedStr(xAsoid);
DM1.cdsCEdu.Close;
DM1.cdsCEdu.DataRequest(xSQL);
DM1.cdsCEdu.Open;
If DM1.cdsCEdu.RecordCount > 0 Then
   Begin
     xDni:=DM1.cdsCEdu.FieldByName('ASODNI').AsString;
   End;
Result:=xDni;
DM1.cdsCEdu.Close;
end;

procedure TFContabilizacion.GrabaCaja(xAsoid, xPeriodo,xCrefPag,xCreDocPag,xUsuario: String;  xCremtoCob: Currency);
var xSQL:String;
    xAno,xMes,xDia:String;
begin
xSQL:='SELECT * FROM CAJA321 WHERE PROVRUC='+QuotedStr(xAsoid);
DM1.cdsDetalle.Close;
DM1.cdsDetalle.DataRequest(xSQL);
DM1.cdsDetalle.Open;
DM1.cdsDetalle.Insert;
DM1.cdsDetalle.fieldbyname('CIAID').AsString := '02' ;
DM1.cdsDetalle.fieldbyname('TDIARID').AsString := '04';
DM1.cdsDetalle.fieldbyname('ECANOMM').AsString :=xPeriodo;
DM1.cdsDetalle.fieldbyname('ECNOCOMP').AsString := NroComp(xPeriodo);
DM1.cdsDetalle.fieldbyname('CLAUXID').AsString :='AS';
DM1.cdsDetalle.fieldbyname('PROV').AsString := xAsoId;
DM1.cdsDetalle.fieldbyname('PROVRUC').AsString := NroDNI(xAsoId);
DM1.cdsDetalle.fieldbyname('ECFCOMP').AsString := xCrefPag;
DM1.cdsDetalle.fieldbyname('ECFEMICH').AsString := xCrefPag;
DM1.cdsDetalle.fieldbyname('ECFPAGOP').AsString := xCrefPag;
DM1.cdsDetalle.fieldbyname('FPAGOID').AsString :='01';
DM1.cdsDetalle.fieldbyname('DOCID').AsString :='38';
DM1.cdsDetalle.fieldbyname('ECNODOC').AsString := xCreDocPag;
DM1.cdsDetalle.fieldbyname('TMONID').AsString := 'N';
DM1.cdsDetalle.fieldbyname('ECTCAMB').AsCurrency := 3.461;
DM1.cdsDetalle.fieldbyname('ECMTOORI').AsCurrency := xCremtoCob;
DM1.cdsDetalle.fieldbyname('ECMTOLOC').AsCurrency := xCremtoCob;
DM1.cdsDetalle.fieldbyname('ECMTOEXT').AsCurrency := xCremtoCob/3.461;
DM1.cdsDetalle.fieldbyname('BANCOID').AsString := '15';
DM1.cdsDetalle.fieldbyname('CCBCOID').AsString := 'Caja Moneda Nacional';
DM1.cdsDetalle.fieldbyname('CPTOID').AsString := 'ME0004';
DM1.cdsDetalle.fieldbyname('CUENTAID').AsString := 'CTAME0004';
DM1.cdsDetalle.fieldbyname('ECGLOSA').AsString := 'Ingreso a Caja';
DM1.cdsDetalle.fieldbyname('ECLOTE').AsString := '000';
DM1.cdsDetalle.fieldbyname('ECELABO').AsString:='EFECTCRE';
DM1.cdsDetalle.fieldbyname('ECESTADO').AsString:='C';
DM1.cdsDetalle.fieldbyname('ECCONTA').AsString:='N';
DM1.cdsDetalle.fieldbyname('ECUSER').AsString:=xUsuario;
DM1.cdsDetalle.fieldbyname('ECHREG').AsString:=xCrefPag;
DM1.cdsDetalle.fieldbyname('ECFREG').AsString:=xCrefPag;
xAno := Copy(xCrefPag, 7, 4); xMes := Copy(xCrefPag, 4, 2); xDia := Copy(xCrefPag, 1, 2);
DM1.cdsDetalle.fieldbyname('ECANO').AsString:=xAno;
DM1.cdsDetalle.fieldbyname('ECMM').AsString:=xMes;
DM1.cdsDetalle.fieldbyname('ECDD').AsString:=xDia;
xSQL:='SELECT * FROM TGE114 WHERE FECANO='+QuotedStr(xAno)+' AND FECMES='+QuotedStr(xMes)+' AND FECDIA='+QuotedStr(xDia);
DM1.cdsFPago.Close;
DM1.cdsFPago.DataRequest(xSQL);
DM1.cdsFPago.Open;
DM1.cdsDetalle.fieldbyname('ECSS').AsString:=DM1.cdsFPago.fieldbyname('FECSS').AsString;
DM1.cdsDetalle.fieldbyname('ECSEM').AsString:=DM1.cdsFPago.fieldbyname('FECSEM').AsString;
DM1.cdsDetalle.fieldbyname('ECTRI').AsString:=DM1.cdsFPago.fieldbyname('FECTRIM').AsString;
DM1.cdsDetalle.fieldbyname('ECAASS').AsString:=DM1.cdsFPago.fieldbyname('FECAASS').AsString;
DM1.cdsDetalle.fieldbyname('ECAASEM').AsString:=DM1.cdsFPago.fieldbyname('FECAASEM').AsString;
DM1.cdsDetalle.fieldbyname('ECAATRI').AsString:=DM1.cdsFPago.fieldbyname('FECAATRI').AsString;
DM1.cdsFPago.Close;
DM1.cdsDetalle.fieldbyname('EC_IE').AsString:='I';
DM1.cdsDetalle.fieldbyname('CAJARETIGV').AsString:='N';
DM1.cdsDetalle.fieldbyname('AUXID').AsString:=xAsoId;
DM1.cdsDetalle.fieldbyname('CCBCOVOUCH').AsString:='04';
DM1.cdsDetalle.fieldbyname('EC_PROCE').AsString:='Y';
DM1.cdsDetalle.fieldbyname('ECOPAGO').AsString:='X';
DM1.cdsDetalle.ApplyUpdates(0);

end;


procedure TFContabilizacion.bbtnRepFSCClick(Sender: TObject);
var
   xSQL, xPeriodo : String;
begin
   ParametrosFondo;
// Inicio: SPP_201308_COB         : Contabilización de cobranzas por FSC
   xSQL:='SELECT USUARIO, USERNOM, CREFPAG, SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '
        +   'SUM(NVL(CREAMORT,0)) CREAMORT, SUM(NVL(CREINTERES,0)) CREINTERES, '
        +   'SUM(NVL(CREFLAT,0)) CREFLAT, SUM(NVL(CREMTOEXC,0)) CREMTOEXC, SUM(NVL(moncobdesgrav,0)) moncobdesgrav, '
        +   '''FONDO SOLIDARIO PARA CONTINGENCIAS DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310'+cLink+' A, USERTABLE'+cLink+' B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99'' AND CREESTID<>''04'' '
        + ' and A.USUARIO=B.USERID '
        +'GROUP BY USUARIO,USERNOM,CREFPAG '
        +'ORDER BY USUARIO,USERNOM,CREFPAG ';
// Fin: SPP_201308_COB            : Contabilización de cobranzas por FSC

   dm1.cdsQry4.Close;
   dm1.cdsQry4.DataRequest(xSQL);
   dm1.cdsQry4.Open;

   ppdb10.DataSource :=nil;
   ppr10.DataPipeline:=nil;
//   ppr10.Template.FileName:='CobranzasEnEfectivo.rtm';
//   ppr10.Template.LoadFromFile;
   ppdb10.DataSource :=  DM1.dsQry4;
   ppr10.DataPipeline:=ppdb10;
   Screen.Cursor:=crDefault;
   //ppd10.ShowModal;
   ppr10.Print;
   ppr5.Stop;
   ppdb5.DataSource :=nil;
   ppr5.DataPipeline:=nil;
end;

procedure TFContabilizacion.bbtnCNTFonClick(Sender: TObject);
var
   xCia, xSQL, xSQL2, xSQL3, xCNTComprob  : String;
   xNumComp : Integer;
begin
   wTipoCont := 'FS';
   wTipoCont2 := 'FSC';
   Screen.Cursor:=crHourGlass;
   ParametrosFondo;

   xSQL := 'Select CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, CNTFEMIS from CNT311COB '
          +'where CNTANOMM ='+quotedstr( dbseAno.text+dbseMes.text )
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   while not DM1.cdsQry3.Eof do
   begin
       // Borra Cabecera
       xSQL := 'delete from CNT300COB '
              +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
              +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       DM1.cdsQry3.Next;
   end;

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, '
          +'                       CNTFEMIS, CNTFVCMTO, CNTFCOMP,'
          +'                       CCOSID,CNTLOTE,CNTSERIE,CNTNODOC, CNTGLOSA, CNTDEBEMN, CNTHABEMN ) '
// MONTO COBRADO (DEBE)
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', '
          +   'T.CTA_FSC CTACAJA, '
          //+   'CASE WHEN M.ASOTIPID=''DO'' THEN ''46908'' ELSE ''46915'' END CTACAJA, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''COBR'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   'A.USUARIO GLOSA, sum(A.CREMTOCOB) DEBE, 0.00 HABER '
          +'from CRE310'+cLink+' A, TGE106'+cLink+' F, CRE301'+cLink+' M, APO107 T  '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +  'and F.CIAID=''02'' and F.TMONID=''N'' and F.BANCOID=''18'' and nvl(A.CREMTOCOB,0)>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +  'and m.asotipid=t.asotipid(+) '
          +'group by T.CTA_FSC, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.USUARIO, A.OFDESID, M.ASOTIPID '
// Inicio HPC_201738_COB
// Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
// Amortizaciones no refinanciados
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID,'
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, NULL CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''AMOR'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   'MAX(P.CTADES) GLOSA, '+'0.00 DEBE, sum(A.CREAMORT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C, TGE202 P, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREAMORT,0)>0 '
          +'  and P.CIAID=''02'' AND P.CUENTAID(+)=B.CUENTAID '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'  AND A.CREDID NOT LIKE ''%R%'' '
          +'group by B.CIAID, B.CUENTAID, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Amortizaciones refinanciados
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', '+quotedstr(xCtaRefi)+', '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, NULL CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''AMOR'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   'MAX(P.CTADES) GLOSA, '+'0.00 DEBE, sum(A.CREAMORT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C, TGE202 P, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREAMORT,0)>0 '
          +'  and P.CIAID=''02'' AND P.CUENTAID(+)=B.CUENTAID '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'  AND A.CREDID LIKE ''%R%'' '
          +'group by B.CIAID, B.CUENTAID, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Fin HPC_201738_COB
// Excesos
// Inicio HPC_201607_COB            : Cambiar Cuenta contable de Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CUEEXC, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, NULL CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''EXCE'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC,'
          +   '''EXCESOS'' GLOSA, 0.00 DEBE, sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREMTOEXC,0)>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'group by B.CIAID, B.CUEEXC, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
          +'having NVL(B.CIAID,''02'') = ''02'' ';
// FIN    HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Intereses
   xSQL2 := ''
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          //+   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAINT, '
          +   quotedstr(dbseAno.text+dbseMes.text)+', ''7680101'' CUENTA, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''INTE'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC,'
          +   '''INTERESES POR PRESTAMO'' GLOSA, '+'0.00 DEBE, sum(A.CREINTERES) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREINTERES,0)>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'group by B.CIAID, B.CTAINT, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
// Flat
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +   quotedstr(dbseAno.text+dbseMes.text)+', ''7680101'' CUENTA, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''FLAT'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   '''GASTOS ADMINISTRATIVOS POR PRESTAMOS'' GLOSA, 0.00 DEBE, sum(A.CREFLAT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'') '
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREFLAT,0)>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'group by B.CIAID, B.CTAFLAT, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '

// Inicio: SPP_201308_COB
// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN C.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''FPD'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   '''FPD POR PRESTAMOS'' GLOSA, 0.00 DEBE, sum(nvl(A.MONCOBDESGRAV,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, CRE301 C, APO107 T  '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
         +  ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
         +  ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID, T.CTA_DESGRAV, CREFPAG, C.ASOTIPID '
// Fin: SPP_201308_COB


// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''OTRA'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   '''OTRAS COMPAÑIAS''  GLOSA, 0.00 DEBE, sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'group by B.CIAID, B.CUENTAID, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
          +'having nvl(B.CIAID,''02'') <> ''02'' ';
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2);

// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTESTADO='+quotedstr('I')+', CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'+', CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)      +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)    +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)       +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem) +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COB.EN EFECTIVO')
          +',DOCDES='+quotedstr('Cob.Efec')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')+',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text );
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, CNTLOTE, CNTNODOC from CNT311COB '
          +' where TDIARID=' +quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID, CNTLOTE, CNTNODOC ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTLOTE; CNTNODOC';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 40000
      else
         xNumComp := 40000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='+quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + '  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select * '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         cdsPost(DM1.cdsQry3);
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
   begin
      ShowMessage('Nro. de Items no actualizados');
   end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)            + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
  xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'''COBRANZA ''||CNTNODOC CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +''''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          + ' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )+' '
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, A.CNTNODOC, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;

procedure TFContabilizacion.bbtnTransFonClick(Sender: TObject);
begin
   ParametrosFondo;
   TransferirContabilidad( 'FS', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;

procedure TFContabilizacion.fcShapeBtn16Click(Sender: TObject);
begin
   ParametrosFondo;
   ReporteContabilizaCredito( xCnt311, 'FSC', xPeriodo );
end;

procedure TFContabilizacion.fcShapeBtn15Click(Sender: TObject);
begin
   ParametrosFondo;
   ReporteContabilizaCredito( xCnt311r, 'FS', xPeriodo );
end;

procedure TFContabilizacion.TransferirContabilidadBol(cLote,cOrigen,xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r : String);
var
   xSQL, xNumMax, xNumMin : String;
   xCambioNum : String;
   NumComp, NumCompAnt : String;
begin

   If MessageDlg('¿Está Seguro de Transferir Contabilidad ( '+cLote+ ' ) ?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

   Screen.Cursor:=crHourGlass;

   ///
   xSQL:='Select * from CNT300 A '
        +'where CIAID>=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE in (''BOL1'',''BOL2'') AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE in (''BOL1'',''BOL2'') AND A.CNTCOMPROB=B.CNTCOMPROB )';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Open;
   except
   end;

   if DM1.cdsQry2.Recordcount>0 then
   begin
      If MessageDlg('Asientos Generados fueron Transferidos a Contabilidad. ¿Desea Eliminar Asientos Transferidos?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

      xSQL:='Select * from CNT300 A '
           +'where CIAID>=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' '
           +  'and CNTLOTE in (''BOL1'',''BOL2'') and CNTESTADO=''P'' '
           +  'and exists( select B.cntcomprob from CNT311 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
           +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
           +                'and B.CNTLOTE in (''BOL1'',''BOL2'') AND A.CNTCOMPROB=B.CNTCOMPROB '
           +              'union all '
           +              'select B.cntcomprob from CNT301 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
           +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
           +                'and B.CNTLOTE in (''BOL1'',''BOL2'') AND A.CNTCOMPROB=B.CNTCOMPROB )';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
         DM1.cdsQry2.Open;
      except
      end;

      if DM1.cdsQry2.Recordcount>0 then
      begin
         Screen.Cursor:=crDefault;
         MessageDlg('Asientos ya fueron Aceptados por Contabilidad. NO se pueden Eliminar !!!', mtError, [mbOk], 0);
         Exit
      end;
   end;
   ///


   xSQL:='Select * from '+xCnt300r+' A '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''',''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE in (''BOL1'',''BOL2'') AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE in (''BOL1'',''BOL2'') AND A.CNTCOMPROB=B.CNTCOMPROB )';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   try
      DM1.cdsQry.Open;
   except
      Exit;
   end;


   if DM1.cdsQry.RecordCount>0 Then
    begin
       If MessageDlg('Existen Registros Transferidos de Cobranzas. ¿Desea continuar con Transferencia?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
       Begin
          Screen.Cursor:=crDefault;
          Exit;
       end;
       xSQL:='Delete from '+xCnt300r+' A '
            +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and CNTLOTE in (''BOL1'',''BOL2'') '
            +  'and exists( select B.cntcomprob from CNT311 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
            +                'and B.CNTLOTE in (''BOL1'',''BOL2'') AND A.CNTCOMPROB=B.CNTCOMPROB '
            +              'union all '
            +              'select B.cntcomprob from CNT301 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
            +                'and B.CNTLOTE in (''BOL1'',''BOL2'') AND A.CNTCOMPROB=B.CNTCOMPROB )';
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
          DM1.cdsQry2.Execute;
       except
       end;

       xSQL:='Delete from '+xCnt311r+' '
            +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
            +  'and CNTLOTE in (''BOL1'',''BOL2'') ';
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
         DM1.cdsQry2.Execute;
       except
       end;

      xSQL:='Delete from CNT301 '
           +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
           +  'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
           +  'and CNTLOTE in (''BOL1'',''BOL2'') ';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
         DM1.cdsQry2.Execute;
      except
      end;

   end;
   // Para poder obtener el xNumMin y xNumMax


   //PARA RENUMERAR ORIGEN 32
    xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
         +'FROM '+xCNT311+' '
         +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
         +  'and TDIARID in ('''+cOrigen+''') '
         +  'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
         +  'and CNTLOTE in (''BOL1'',''BOL2'') '
         +'ORDER BY TDIARID, CNTCOMPROB';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
    xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;


   //COD BERGER
    xSQL:='select NVL(MAX( CNTCOMPROB ),''0'') MAXIMO FROM '+xCnt300r+' '
         +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
         +'order by CIAID, TDIARID, CNTCOMPROB';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest( xSQL );
    try
       DM1.cdsQry2.oPEN;
    except
    end;

   //NUMCOMP:=inttostr(DM1.cdsQry2.recordcount);
    NUMCOMP:=DM1.cdsQry2.FieldByName('MAXIMO').ASSTRING;
    NUMCOMP:= DM1.strzero(inttostr(strtoint(numcomp)+1),10);
    NUMCOMPANT:=xNumMin;

    xCambioNum := 'F';

    WHILE NUMCOMPANT<=xNumMax do
    BEGIN
      xSQL:='update '+xCnt300+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
	      +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
        +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
      NUMCOMP:=DM1.strzero(inttostr(strtoint(NUMCOMP)+1),10);
      NUMCOMPANT:=DM1.strzero(inttostr(strtoint(NUMCOMPANT)+1),10);
      xCambioNum := 'S';
    END;

    if xCambioNum='S' then
    begin

      xSQL:='update '+xCnt300+' A '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
        +  'and exists( select B.cntcomprob from CNT311COB B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
        +  'and CNTLOTE in (''BOL1'',''BOL2'') ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

    end;


   // Renumerar Origen 30
   //PARA RENUMERAR ORIGEN 30
   xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
        +'FROM '+xCNT300+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in (''30'') '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;


   //COD BERGER
   xSQL:='select NVL(MAX( CNTCOMPROB ),''0'') MAXIMO FROM '+xCnt300r+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
        +'order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.oPEN;
   except
   end;
   //NUMCOMP:=inttostr(DM1.cdsQry2.recordcount);
   NUMCOMP:=DM1.cdsQry2.FieldByName('MAXIMO').ASSTRING;
   NUMCOMP:= DM1.strzero(inttostr(strtoint(numcomp)+1),10);
   NUMCOMPANT:=xNumMin;

   xCambioNum := 'F';

   WHILE NUMCOMPANT<=xNumMax do
   BEGIN
      xSQL:='update '+xCnt300+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
	      +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
        +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
      NUMCOMP:=DM1.strzero(inttostr(strtoint(NUMCOMP)+1),10);
      NUMCOMPANT:=DM1.strzero(inttostr(strtoint(NUMCOMPANT)+1),10);
      xCambioNum := 'S';
    END;

    if xCambioNum='S' then
    begin

      xSQL:='update '+xCnt300+' '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

    end;

   // FIN COD BERGER

   // Valida si no hay repetidos antes de insertarlos en la tabla xCnt300r
    // origen 32
   xSQL:='SELECT MAX( CNTCOMPROB ) NUMMAX, MIN( CNTCOMPROB ) NUMMIN FROM '+xCNT311+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;

   xSQL:='SELECT * FROM '+xCnt300r+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
        +  'AND CNTCOMPROB BETWEEN '''+xNumMin+''' AND '''+xNumMax+''' '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if DM1.cdsQry.RecordCount>0 Then
   begin
      MessageDlg('Error : En Contabilidad existen comprobantes con el mismo Numero, Debe volver a Transferir Contabilidad !!!', mtError, [mbOk], 0);
      Exit;
   end;

   // origen 30
    xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
        + 'FROM '+xCNT311+' '
        + 'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +   'AND TDIARID in (''30'') '
        +   'and CNTLOTE in (''BOL1'',''BOL2'') '
        + 'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;

   xSQL:='SELECT * FROM '+xCnt300r+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in (''30'') '
        +  'AND CNTCOMPROB BETWEEN '''+xNumMin+''' AND '''+xNumMax+''' '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if DM1.cdsQry.RecordCount>0 Then
   begin
      MessageDlg('Error : En Contabilidad existen comprobantes con el mismo Numero, Debe volver a Transferir Contabilidad !!!', mtError, [mbOk], 0);
      Exit;
   end;

   // transferir
   xSQL:='insert into '+xCnt300r+' '
        +'select * from '+xCNT300+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
        +'order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
   end;

   xSQL:='insert into '+xCnt311r+' '
        +'select * from '+xCNT311+' '
        +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTLOTE in (''BOL1'',''BOL2'') '
        +'order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
   end;

   ///
   try
      //--ACTUALIZA FLAG CONTB. DESEMBOLSO EN EFECTIVO
      xSQL:='UPDATE CRE310 A SET A.CNTFLAG=''S'', CNTANOMM='''+xPeriodo+''' '
           +'where '+xWhereBusqueda+' ';

      If cLote = 'TEL' Then
          //xVar:=0
      Else If cLote = 'PLA' Then
          xSQL:= xSQL  +  ' AND CREESTID NOT IN (''13'',''04'',''99'') '
                       +  ' AND A.CIAID=''02'' '
      Else If cLote = 'BOL' Then
          xSQL:= xSQL + ' and A.CREDOCPAG is not null '
                      + ' and A.CREESTID NOT IN (''13'',''04'',''99'') '
                      + ' and A.BANCOID is not null and A.CCBCOID is not null '
                      + ' and A.CIAID=''02'' '
      Else If cLote = 'EFE' Then
          xSQL:=xSQL + ' and CREESTID NOT IN (''13'',''04'',''99'') ';

      DM1.cdsQry2.DataRequest( xSQL );
      DM1.cdsQry2.Execute;
   except
   end;
   ///
   Screen.Cursor:=crDefault;
   MessageDlg('La Transferencia Exitosa !!!', mtConfirmation, [mbOk], 0);
end;

procedure TFContabilizacion.FormCreate(Sender: TObject);
begin
   pcCNT.ActivePageIndex:=0;
   ppD10.IniStorageName := '.\rbuilder.ini';
   ppD6.IniStorageName := '.\rbuilder.ini';
   ppD5.IniStorageName := '.\rbuilder.ini';
   ppD1.IniStorageName := '.\rbuilder.ini';
end;

procedure TFContabilizacion.pcCNTChange(Sender: TObject);
begin
   if pcCNT.ActivePage=tsTel then
      ParametrosTeleahorro;

   if pcCNT.ActivePage=tsPla then
      ParametrosPlanilla;

   if pcCNT.ActivePage=tsBol then
      ParametrosBoleta;

   if pcCNT.ActivePage=tsEfe then
      ParametrosEfectivo;

   if pcCNT.ActivePage=tsFondo then
      ParametrosFondo;
      PgDevolucionFSC.TabIndex:=0;
end;

procedure TFContabilizacion.tsBolEnter(Sender: TObject);
begin
   ParametrosBoleta;
end;

procedure TFContabilizacion.tsTelEnter(Sender: TObject);
begin
   ParametrosTeleahorro;
end;

procedure TFContabilizacion.tsFondoEnter(Sender: TObject);
begin
   ParametrosAnulApo;
end;

procedure TFContabilizacion.BitBtn23Click(Sender: TObject);
begin
   ParametrosEfectivo;
   CorrigeUnidadesDePago( 'EFECTIVO' );
   ShowMessage('Proceso Concluido');
end;

procedure TFContabilizacion.BitBtn22Click(Sender: TObject);
begin
  bError:=True;
  ParametrosFondo;
// Inicio: SPP_201308_COB         : Contabilización de cobranzas por ONP
  xSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM, CREDID, CRECUOTA, CREMTOCOB, CREAMORT, CREINTERES, CREFLAT, CREMTOEXC, MONCOBDESGRAV, '
       +   'NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0)) DIFERENCIA, '
       +   'CREMTODEV '
       +'From CRE310'+cLink+' A '
       +'where '+xWhereBusqueda
       +  'and CREESTID<>''13'' and CREESTID<>''99'' and CREESTID<>''04'' '
       +  'and (NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0))<>0 '
       +   'or NVL(CREAMORT,0)<0 or NVL(CREINTERES,0)<0 or NVL(CREFLAT,0)<0 or NVL(MONCOBDESGRAV,0)<0) '
       +'ORDER BY ASOID, CREDID, CRECUOTA';
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP

  ImprimeInconsistenciaPagosCRE310( xSQL );
  if bError then
     ShowMessage('ok');
end;

procedure TFContabilizacion.BitBtn24Click(Sender: TObject);
var
   XSQL:STRING;
begin
   xSql:='SELECT A.UPROID,A.USEID,A.FEC_CRE_COB_FSC FREG,A.ASOID,A.ASOAPENOM,A.NUM_DEU,A.NROOPE,FEC_COB_DEU FOPERAC,SUM(NVL(A.IMP_COB_DEU,0))IMP_COB_DEU,SUM(NVL(A.IMP_EXC_DEU,0))IMP_EXC_DEU,'+
         'MIN(D.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, ' +
         'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM ' +
         'FROM COB_FSC_PAGOS_AL_FSC A, '+
         '     (SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
         '     APO102 C, TGE105 D  '+
         'WHERE  A.FORPAGID=''03'' AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') and'+
         '       To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.EST_COB_COD NOT IN (''04'',''13'')  AND '+
         '       A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPROID=C.UPROID(+) AND ' +
         '       A.BANCOID=D.BANCOID(+)   '+
         'GROUP BY A.FEC_CRE_COB_FSC,A.FEC_COB_DEU, A.UPROID, A.USEID, A.ASOID, A.ASOAPENOM, A.NUM_DEU, A.NROOPE '+
         'ORDER BY TO_CHAR(FEC_COB_DEU,''MM/YYYY''), CCBCOID, FEC_COB_DEU';


  DM1.cdsCambios.Close;
  DM1.cdsCambios.DataRequest(xSQL);
  DM1.cdsCambios.Open;
  If DM1.cdsCambios.RecordCount > 0 Then
     Begin
       BDEPPBANCO.DataSource := Dm1.dsCambios;
       ppltitulo.Caption  := 'DEVOLUCIONES AL FONDO SOLIDARIO DE CONTINGENCIA (DEPOSITO EN BANCOS)';
       ppltitulo2.Caption := 'REGISTRADO DEL: '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
       pplSubtituloSustFSC.Caption := 'DEVOLUCIONES AL FSC POR DEPOSITO EN BANCO, FECHA DE REGISTRO DEL:';
       ppRSustFSCBanco.Print;
       ppRSustFSCBanco.Stop;
     End
  Else MessageDlg(' No Existe Información Para Este Rango ó El Criterio Seleccionado ', mtError,[mbOk],0);
end;

procedure TFContabilizacion.ParametrosDevolucionFondo;
begin
   wTipoCont := 'DF';
   wTipoCont2 := '';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;


procedure TFContabilizacion.BitBtn27Click(Sender: TObject);
 VAR XSQL,XSQL1,XSQL2,xCia,wTipoCont2,xCntComprob:STRING;
     xNumComp:integer;
begin

   wTipoCont:='DF';
   wTipoCont2 := '';
   Screen.Cursor:=crHourGlass;
   ParametrosDevolucionFondo;
   if (xTCambio='') then
   begin
      Screen.Cursor:=crDefault;
      exit;
   end;

// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Inserta Movimientos
   xSQL1 :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, '
           +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, '
           +  'CNTHABEMN, CNTFEMIS, CNTFVCMTO ) ';
//Se recorta a 40 con Subr tamaño del texto a grabar por tamaño de campo;   
   XSQL2 :='Select ''02'' CIAD,'''+wTipoCont+'''TDIARID,''0000000001''CNTCOMPROB,'''+dbseAno.text+''' CNTANO,'+quotedstr(dbseAno.text+dbseMes.text)+' CNTANOMM,'+
           '      CASE WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)+' THEN  F.CTAPRINC '+
           '           WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')<'+quotedstr(dbseAno.text+dbseMes.text)+' THEN ''4691203'' ELSE ''1641401'' END CUENTAID,'+
           '      NULL CCOSID,CASE WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')<'+quotedstr(dbseAno.text+dbseMes.text)+'THEN  MIN(''DFB2'') ELSE MIN(''DFB1'') END CNTLOTE,''COBR'' CNTSERIE,'+
           '      TRIM(NROOPE)||TRIM(M.ASOCODMOD) CNTNODOC, CASE WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')<'+quotedstr(dbseAno.text+dbseMes.text)+'THEN SUBSTR(TRIM(MIN(A.CCBCOID))||''-''||TRIM(M.ASOAPENOM),1,40) ELSE SUBSTR(TRIM(M.ASOAPENOM),1,40) END GLOSA,'+  
           '      SUM(NVL(IMP_COB_DEU,0)) DEBE, 0.00 HABER, '+
           '      FEC_COB_DEU CNTFEMIS, MIN(FEC_CRE_COB_FSC) CNTFVCMTO '+
           'From COB_FSC_PAGOS_AL_FSC A, TGE106 F, APO201 M, COB_FSC_DEUDA_FSC_CAB N '+ //RMZ
           'Where A.FORPAGID=''03'' AND FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
           '      and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 '+
           '      and A.NROOPE is not null and A.BANCOID is not null and A.CCBCOID is not null '+
           '      and F.BANCOID=A.BANCOID and F.CCBCOID=A.CCBCOID and F.CIAID=''02'' and A.ASOID=M.ASOID(+) '+
           '      and A.ASOID=N.ASOID(+) AND A.NUM_DEU=N.NUM_DEU(+) '+  //RMZ
           'Group by TRIM(NROOPE)||TRIM(M.ASOCODMOD) ,FEC_COB_DEU, TO_CHAR(FEC_COB_DEU,''YYYYMMDD''), M.ASOAPENOM, N.TIP_ASO_ORIGEN,'+  //RMZ
           '     CASE WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)+' THEN  F.CTAPRINC '+
           '          WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')<'+quotedstr(dbseAno.text+dbseMes.text)+' THEN ''4691203'' ELSE ''1641401'' END '+
           ' UNION ALL '+
           'Select ''02'' CIAD,'''+wTipoCont+'''TDIARID,''0000000001''CNTCOMPROB,'''+dbseAno.text+''' CNTANO,'+quotedstr(dbseAno.text+dbseMes.text)+' CNTANOMM,'+
           '       F.CTA_FSC CUENTAID,'+
           '       NULL CCOSID,CASE WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')<'+quotedstr(dbseAno.text+dbseMes.text)+'THEN  MIN(''DFB2'') ELSE MIN(''DFB1'') END CNTLOTE,''COBR'' CNTSERIE,'+
           '       TRIM(NROOPE)||TRIM(M.ASOCODMOD) CNTNODOC,SUBSTR(TRIM(M.ASOAPENOM),1,40) GLOSA,'+   
           '       0.00 DEBE,SUM(NVL(IMP_COB_DEU,0)) HABER,'+
           '       FEC_COB_DEU CNTFEMIS, MIN(FEC_CRE_COB_FSC) CNTFVCMTO '+
           'From COB_FSC_PAGOS_AL_FSC A, APO107 F, APO201 M,COB_FSC_DEUDA_FSC_CAB N '+ //RMZ '+
           'Where A.FORPAGID=''03'' AND FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
           '      and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 '+
           '      and A.NROOPE is not null and A.BANCOID is not null and A.CCBCOID is not null '+
           '      and A.ASOID=N.ASOID(+) AND A.NUM_DEU=N.NUM_DEU(+) '+  //RMZ
           '      and A.ASOID=M.ASOID(+) AND N.TIP_ASO_ORIGEN=F.ASOTIPID(+) '+  //RMZ
           'group by TRIM(NROOPE)||TRIM(M.ASOCODMOD) ,FEC_COB_DEU, TO_CHAR(FEC_COB_DEU,''YYYYMMDD''), M.ASOAPENOM, N.TIP_ASO_ORIGEN,F.CTA_FSC ';
   TRY
     xSQL:=xSQL1+xSQL2;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT

   END;

// generando otros datos
  xSql := 'Update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X BOL.DEPO')
          +',DOCDES='+quotedstr('Cob.Bole')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID,CNTNODOC,to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID,CNTNODOC,to_date(CNTFVCMTO), CNTLOTE';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTNODOC;CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   While not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'Update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +'Where  CIAID='     +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='   +quotedstr(wTipoCont)
                +'   and CNTANOMM='  +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='  +quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTFVCMTO=' +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='   +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'Update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;

   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;

   If DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;
   try
   xSQL := 'Update CNT311COB '
          +'set TDIARID=''35'', CNTNODOC=SUBSTR(CNTNODOC,1,10) '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''BOLETAS DEPOSITO '' CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('35')
          +' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' and CNTLOTE like '+quotedstr( wTipoCont+'%' )+' '          //ULTIMO CAMBIO RMZ
          +' group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;



//Reporte de Contabilizacion de Devolucion al FSC por Banco, antes de la transferencia
procedure TFContabilizacion.fcShapeBtn18Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311, 'DFB', xPeriodo );
end;

procedure TFContabilizacion.fcShapeBtn17Click(Sender: TObject);
begin
  ReporteContabilizaCredito( xCnt311r, 'DFB', xPeriodo );
end;


//Transferencia de de la contabilizacion de Devolucion al FSC por Banco
procedure TFContabilizacion.BitBtn26Click(Sender: TObject);
begin
   TransferirContBolDevFSC( 'DFB', '35', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;


//Transferencia de Boleta de deposito por Devolucion al FSC
procedure TFContabilizacion.TransferirContBolDevFSC(cLote, cOrigen,
  xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r: String);
var
   xSQL, xNumMax, xNumMin : String;
   xCambioNum,xLote,xLoteB : String;
   NumComp, NumCompAnt : String;
   xforpagid:string;
begin
   If MessageDlg('¿Está Seguro de Transferir Contabilidad ( '+cLote+ ' ) ?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

   //Definición de condiciones segun Lote
   If cLote='DFB' Then Begin xLote := 'CNTLOTE in (''DFB1'',''DFB2'')'; xLoteB := 'B.CNTLOTE in (''DFB1'',''DFB2'')'; xforpagid:='A.FORPAGID=''03'' '; End;
   If cLote='FE'  Then Begin xLote := 'CNTLOTE in (''FE15'')';          xLoteB := 'B.CNTLOTE in (''FE15'')';          xforpagid:='A.FORPAGID=''02'' '; End;
   If cLote='DF'  Then Begin xLote := 'CNTLOTE in (''DFPL'')';          xLoteB := 'B.CNTLOTE in (''DFPL'')';          xforpagid:='A.FORPAGID in (''01'',''09'',''27'') '; End;
   Screen.Cursor:=crHourGlass;

   ///
   xSQL:='Select * from CNT300 A '
        +'where CIAID>=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' '
        +  'and '+xLote
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and B.'+xLote+'  AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and B.'+xLote+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Open;
   except
   end;

   if DM1.cdsQry2.Recordcount>0 then
   begin
      If MessageDlg('Asientos Generados fueron Transferidos a Contabilidad. ¿Desea Eliminar Asientos Transferidos?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

      xSQL:='Select * from CNT300 A '
           +'where CIAID>=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' '
           +  'and '+xLote+' and CNTESTADO=''P'' '
           +  'and exists( select B.cntcomprob from CNT311 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
           +                'and B.'+xLote+' AND A.CNTCOMPROB=B.CNTCOMPROB '
           +              'union all '
           +              'select B.cntcomprob from CNT301 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
           +                'and B.'+xLote+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( XSQL );
      try
         DM1.cdsQry2.Open;
      except
      end;

      if DM1.cdsQry2.Recordcount>0 then
      begin
         Screen.Cursor:=crDefault;
         MessageDlg('Asientos ya fueron Aceptados por Contabilidad. NO se pueden Eliminar !!!', mtError, [mbOk], 0);
         Exit
      end;
   end;
   ///


   xSQL:='Select * from '+xCnt300r+' A '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''',''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and '+xLote+' '
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and B.'+xLote+' AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and B.'+xLote+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   try
      DM1.cdsQry.Open;
   except
      Exit;
   end;


   If DM1.cdsQry.RecordCount>0 Then
    begin
       If MessageDlg('Existen Registros Transferidos de Cobranzas. ¿Desea continuar con Transferencia?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
       Begin
          Screen.Cursor:=crDefault;
          Exit;
       end;
       xSQL:='Delete from '+xCnt300r+' A '
            +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and '+ xLote
            +  'and exists( select B.cntcomprob from CNT311 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and '+xLoteB+' AND A.CNTCOMPROB=B.CNTCOMPROB '
            +              'union all '
            +              'select B.cntcomprob from CNT301 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and '+xLoteB+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
          DM1.cdsQry2.Execute;
       except
       end;

       xSQL:='Delete from '+xCnt311r+' '
            +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and '+ xLote ;
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
         DM1.cdsQry2.Execute;
       except
       end;

      xSQL:='Delete from CNT301 '
           +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
           +  'and '+ xLote ;
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
         DM1.cdsQry2.Execute;
      except
      end;

   end;
   // Para poder obtener el xNumMin y xNumMax


   //PARA RENUMERAR ORIGEN 35
    xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
         +'FROM '+xCNT311+' '
         +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
         +  'and TDIARID in ('''+cOrigen+''') '
         +  'and '+xLote
         +  ' ORDER BY TDIARID, CNTCOMPROB';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
    xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;


    xSQL:='select NVL(MAX( CNTCOMPROB ),''0'') MAXIMO FROM '+xCnt300r+' '
         +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
         +'order by CIAID, TDIARID, CNTCOMPROB';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest( xSQL );
    try
       DM1.cdsQry2.oPEN;
    except
    end;

    NUMCOMP    :=DM1.cdsQry2.FieldByName('MAXIMO').ASSTRING;
    NUMCOMP    := DM1.strzero(inttostr(strtoint(numcomp)+1),10);
    NUMCOMPANT :=xNumMin;
    xCambioNum := 'F';


    WHILE NUMCOMPANT<=xNumMax do
    BEGIN
      xSQL:='update '+xCnt300+' '
            +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
            +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +'and '+xLote
            +' and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +'and '+xLote
        +' and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
      NUMCOMP:=DM1.strzero(inttostr(strtoint(NUMCOMP)+1),10);
      NUMCOMPANT:=DM1.strzero(inttostr(strtoint(NUMCOMPANT)+1),10);
      xCambioNum := 'S';
    END;

    if xCambioNum='S' then
    begin

      xSQL:='update '+xCnt300+' A '
            +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
            +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and '+xLote
            +  ' and exists( select B.cntcomprob from CNT311COB B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and B.'+xLote+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
           +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
           +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
           +  'and '+xLote;
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

    end;


   // Valida si no hay repetidos antes de insertarlos en la tabla xCnt300r
   // origen 35
   xSQL:='SELECT MAX( CNTCOMPROB ) NUMMAX, MIN( CNTCOMPROB ) NUMMIN FROM '+xCNT311+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
        +  'and '+xLote
        +' ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;

   xSQL:='SELECT * FROM '+xCnt300r+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
        +  'AND CNTCOMPROB BETWEEN '''+xNumMin+''' AND '''+xNumMax+''' '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if DM1.cdsQry.RecordCount>0 Then
   begin
      MessageDlg('Error : En Contabilidad existen comprobantes con el mismo Numero, Debe volver a Transferir Contabilidad !!!', mtError, [mbOk], 0);
      Exit;
   end;


   // transferir
   xSQL:='insert into '+xCnt300r+' '
        +'select * from '+xCNT300+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +'and '+xLote
        +' order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
   end;

   xSQL:='insert into '+xCnt311r+' '
        +'select * from '+xCNT311+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and '+xLote
        +' order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
   end;


   try
      //--ACTUALIZA FLAG CONTB. DESEMBOLSO EN EFECTIVO
      xSQL:='UPDATE COB_FSC_PAGOS_AL_FSC A SET A.CNTFLAG=''S'', CNTANOMM='''+xPeriodo+''' '
           +'Where '+xforpagid+' AND A.FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND A.FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
            ' and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 ';
      DM1.cdsQry2.DataRequest( xSQL );
      DM1.cdsQry2.Execute;
   except
   end;


   Screen.Cursor:=crDefault;
   MessageDlg('La Transferencia Exitosa !!!', mtConfirmation, [mbOk], 0);
End;


procedure TFContabilizacion.ParametrosSorteo;
begin
   wTipoCont := 'SO';
   wTipoCont2 := 'SOR';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;

procedure TFContabilizacion.BitBtn28Click(Sender: TObject);
begin
  bError:=True;
  ParametrosSorteo;
  xSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM, CREDID, CRECUOTA, CREMTOCOB, CREAMORT, CREINTERES, CREFLAT, CREMTOEXC, '
       +   'NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)) DIFERENCIA, '
       +   'CREMTODEV '
       +'From CRE310'+cLink+' A '
       +'where '+xWhereBusqueda
       +  'and CREESTID<>''13'' and CREESTID<>''99'' and CREESTID<>''04'' '
       +  'and (NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0))<>0 '
       +   'or NVL(CREAMORT,0)<0 or NVL(CREINTERES,0)<0 or NVL(CREFLAT,0)<0)';
  ImprimeInconsistenciaPagosCRE310( xSQL );
  if bError then
     ShowMessage('ok');
end;


procedure TFContabilizacion.BitBtn25Click(Sender: TObject);
var
   xSQL, xPeriodo : String;
begin
   ParametrosSorteo;
   xSQL:='SELECT USUARIO, USERNOM, CREFPAG, SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '
        +   'SUM(NVL(CREAMORT,0)) CREAMORT, SUM(NVL(CREINTERES,0)) CREINTERES, '
        +   'SUM(NVL(CREFLAT,0)) CREFLAT, SUM(NVL(CREMTOEXC,0)) CREMTOEXC, '
        +   '''FONDO SOLIDARIO PARA CONTINGENCIAS DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310'+cLink+' A, USERTABLE'+cLink+' B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99'' AND CREESTID<>''04'' '
        + ' and A.USUARIO=B.USERID '
        +'GROUP BY USUARIO,USERNOM,CREFPAG '
        +'ORDER BY USUARIO,USERNOM,CREFPAG ';

   dm1.cdsQry4.Close;
   dm1.cdsQry4.DataRequest(xSQL);
   dm1.cdsQry4.Open;

   ppdb10.DataSource :=nil;
   ppr10.DataPipeline:=nil;
 //ppr10.Template.FileName:='CobranzasEnEfectivo.rtm';
 //ppr10.Template.LoadFromFile;
   ppdb10.DataSource :=  DM1.dsQry4;
   ppr10.DataPipeline:=ppdb10;
   Screen.Cursor:=crDefault;
 //ppd10.ShowModal;
   ppr10.Print;
   ppr5.Stop;
   ppdb5.DataSource :=nil;
   ppr5.DataPipeline:=nil;
end;


procedure TFContabilizacion.BitBtn30Click(Sender: TObject);
var
   xCia, xSQL, xSQL2, xSQL3, xCNTComprob, xCuentaSor, xCCosto : String;
   xNumComp : Integer;
begin
   wTipoCont  := 'SO';
   wTipoCont2 := 'SOR';
   xCuentaSor := '95905';
   xCCosto    := '0301';
   Screen.Cursor:=crHourGlass;
   ParametrosSorteo;
   if (xTCambio='') then
   begin
      Screen.Cursor:=crDefault;
      exit;
   end;

   xSQL := 'Select CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, CNTFEMIS from CNT311COB '
          +'where CNTANOMM ='+quotedstr( dbseAno.text+dbseMes.text )
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   while not DM1.cdsQry3.Eof do
   begin
       // Borra Cabecera
       xSQL := 'delete from CNT300COB '
              +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
              +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       DM1.cdsQry3.Next;
   end;

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, '
          +'                       CNTFEMIS, CNTFVCMTO, CNTFCOMP,'
          +'                       CCOSID,CNTLOTE,CNTSERIE,CNTNODOC, CNTGLOSA, CNTDEBEMN, CNTHABEMN ) '
// MONTO COBRADO (DEBE)
// INICIO SAR-2010-0349
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', '
          +   ''''+xCuentaSor+''' CTACAJA, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, '''+xCCosto+''' CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''COBR'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   'A.USUARIO GLOSA, sum(A.CREMTOCOB) DEBE, 0.00 HABER '
          +'from CRE310'+cLink+' A, TGE106'+cLink+' F, APO201'+cLink+' M, APO107 T  '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +  'and F.CIAID=''02'' and F.TMONID=''N'' and F.BANCOID=''18'' and nvl(A.CREMTOCOB,0)>0 '
          +  'and A.ASOID=M.ASOID(+) '
          +  'and m.asotipid=t.asotipid(+) '
          +'group by CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.USUARIO, A.OFDESID, M.ASOTIPID, T.CTA_FSC '
// FINAL SAR-2010-0349

// Amortizaciones
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID,'
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, NULL CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''AMOR'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   'MAX(P.CTADES) GLOSA, '+'0.00 DEBE, sum(A.CREAMORT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C, TGE202 P, APO201'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREAMORT,0)>0 '
          +'  and P.CIAID=''02'' AND P.CUENTAID(+)=B.CUENTAID '
          +  'and A.ASOID=M.ASOID(+) '
          +'group by B.CIAID, B.CUENTAID, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Excesos
// Inicio HPC_201607_COB            : Cambiar Cuenta contable de Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CUEEXC, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, NULL CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''EXCE'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC,'
          +   '''EXCESOS'' GLOSA, 0.00 DEBE, sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C, APO201'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREMTOEXC,0)>0 '
          +  'and A.ASOID=M.ASOID(+) '
          +'group by B.CIAID, B.CUEEXC, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
          +'having NVL(B.CIAID,''02'') = ''02'' ';
// FIN   HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Intereses
   xSQL2 := ''
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAINT, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''INTE'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC,'
          +   '''INTERESES POR PRESTAMO'' GLOSA, '+'0.00 DEBE, sum(A.CREINTERES) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO201'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREINTERES,0)>0 '
          +  'and A.ASOID=M.ASOID(+) '
          +'group by B.CIAID, B.CTAINT, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
// Flat
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAFLAT, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''FLAT'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   '''GASTOS ADMINISTRATIVOS POR PRESTAMOS'' GLOSA, 0.00 DEBE, sum(A.CREFLAT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO201'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREFLAT,0)>0 '
          +  'and A.ASOID=M.ASOID(+) '
          +'group by B.CIAID, B.CTAFLAT, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '

// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''A'' ELSE ''C'' END LOTE, '
          +   '''OTRA'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   '''OTRAS COMPAÑIAS''  GLOSA, 0.00 DEBE, sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO201'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +  'and A.ASOID=M.ASOID(+) '
          +'group by B.CIAID, B.CUENTAID, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
          +'having nvl(B.CIAID,''02'') <> ''02'' ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2);

// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTESTADO='+quotedstr('I')+', CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'+', CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)      +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)    +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)       +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem) +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COB.EN EFECTIVO')
          +',DOCDES='+quotedstr('Cob.Efec')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')+',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text );
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, CNTLOTE, CNTNODOC from CNT311COB '
          +' where TDIARID=' +quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID, CNTLOTE, CNTNODOC ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTLOTE; CNTNODOC';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 50000
      else
         xNumComp := 50000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='+quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + '  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select * '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         cdsPost(DM1.cdsQry3);
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
   begin
      ShowMessage('Nro. de Items no actualizados');
   end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)            + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
  xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'''COBRANZA ''||CNTNODOC CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +''''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          + ' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )+' '
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, A.CNTNODOC, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;

procedure TFContabilizacion.BitBtn29Click(Sender: TObject);
begin
   ParametrosSorteo;
   TransferirContabilidad( 'SO', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;

procedure TFContabilizacion.fcShapeBtn20Click(Sender: TObject);
begin
   ParametrosSorteo;
   ReporteContabilizaCredito( xCnt311, 'SOR', xPeriodo );
end;

procedure TFContabilizacion.fcShapeBtn19Click(Sender: TObject);
begin
   ParametrosSorteo;
   ReporteContabilizaCredito( xCnt311r, 'SO', xPeriodo );
end;

//Impresión de sustento de contabilización de pagos en efectivo
procedure TFContabilizacion.BitBtn31Click(Sender: TObject);
var xsql:string;
begin
   xSql:='SELECT A.UPROID,A.USEID,A.FEC_CRE_COB_FSC FREG,A.ASOID,A.ASOAPENOM,A.NUM_DEU,A.NROOPE,FEC_COB_DEU FOPERAC,SUM(NVL(A.IMP_COB_DEU,0))IMP_COB_DEU,SUM(NVL(A.IMP_EXC_DEU,0))IMP_EXC_DEU,'+
         'MIN(D.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, ' +
         'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM ' +
         'FROM COB_FSC_PAGOS_AL_FSC A, '+
         '     (SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
         '     APO102 C, TGE105 D  '+
         'WHERE  A.FORPAGID=''02'' AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') and'+
         '       To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.EST_COB_COD NOT IN (''04'',''13'')  AND '+
         '       A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPROID=C.UPROID(+) AND ' +
         '       D.BANCOID=''15'' '+
         'GROUP BY A.FEC_CRE_COB_FSC,A.FEC_COB_DEU, A.UPROID, A.USEID, A.ASOID, A.ASOAPENOM, A.NUM_DEU, A.NROOPE '+
         'ORDER BY TO_CHAR(FEC_COB_DEU,''MM/YYYY''), CCBCOID, FEC_COB_DEU';

  DM1.cdsCambios.Close;
  DM1.cdsCambios.DataRequest(xSQL);
  DM1.cdsCambios.Open;
  If DM1.cdsCambios.RecordCount > 0 Then
     Begin
       BDEPPBANCO.DataSource := Dm1.dsCambios;
       ppltitulo.Caption  := 'DEVOLUCIONES AL FONDO SOLIDARIO DE CONTINGENCIA (PAGOS EN EFECTIVO)';
       ppltitulo2.Caption := 'REGISTRADO DEL: '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
       pplSubtituloSustFSC.Caption := 'DEVOLUCIONES AL FSC EN EFECTIVO, FECHA DE REGISTRO DEL:';
       ppRSustFSCBanco.Print;
       ppRSustFSCBanco.Stop;
     End
  Else MessageDlg(' No Existe Información Para Este Rango ó El Criterio Seleccionado ', mtError,[mbOk],0);

end;

procedure TFContabilizacion.BitBtn33Click(Sender: TObject);
 VAR XSQL,XSQL1,XSQL2,xCia,wTipoCont2,xCntComprob:STRING;
     xNumComp:integer;
begin

   wTipoCont:='FE';
   wTipoCont2 := '';
   Screen.Cursor:=crHourGlass;
   ParametrosDevolucionFondoEFE;
   if (xTCambio='') then
   begin
      Screen.Cursor:=crDefault;
      exit;
   end;

// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Inserta Movimientos
   xSQL1 :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, '
           +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, '
           +  'CNTHABEMN, CNTFEMIS, CNTFVCMTO ) ';
   XSQL2 :='Select ''02'' CIAD,'''+wTipoCont+'''TDIARID,''0000000001''CNTCOMPROB,'''+dbseAno.text+''' CNTANO,'+quotedstr(dbseAno.text+dbseMes.text)+' CNTANOMM,'+
           '      CASE WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)+' THEN  F.CTACOBR '+
           '           WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')<'+quotedstr(dbseAno.text+dbseMes.text)+' THEN ''4691203'' ELSE ''1641401'' END CUENTAID,'+
           '      NULL CCOSID,''FE15'' CNTLOTE,''COBR'' CNTSERIE,TRIM(NROOPE)||TRIM(M.ASOCODMOD)  CNTNODOC,'+
//Inicio: DPP_201214_COB
           '      substr(''Dev.FSC EFE ''||TO_CHAR(A.FEC_COB_DEU,''YYYYMMDD'')||''-''||TRIM(USU_COB_DEU),1,40) GLOSA,'+
//Fin: DPP_201214_COB
           '      SUM(NVL(IMP_COB_DEU,0)) DEBE, 0.00 HABER,FEC_COB_DEU CNTFEMIS, MIN(FEC_CRE_COB_FSC) CNTFVCMTO '+
           'From COB_FSC_PAGOS_AL_FSC A, TGE106 F, APO201 M, COB_FSC_DEUDA_FSC_CAB N '+
           'Where A.FORPAGID=''02'' AND FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
           '      AND EST_COB_COD NOT IN (''13'',''04'',''99'') AND nvl(A.IMP_COB_DEU,0)>0 '+
           '      AND A.NROOPE is not null AND F.CIAID=''02'' AND F.BANCOID=''15'' AND A.ASOID=M.ASOID(+) '+
           '      and A.ASOID=N.ASOID(+) AND A.NUM_DEU=N.NUM_DEU(+) '+
           'Group by TRIM(NROOPE)||TRIM(M.ASOCODMOD),FEC_COB_DEU, TO_CHAR(FEC_COB_DEU,''YYYYMMDD''),M.ASOAPENOM, N.TIP_ASO_ORIGEN,TRIM(USU_COB_DEU),'+
           '     CASE WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)+' THEN  F.CTACOBR '+
           '          WHEN TO_CHAR(A.FEC_COB_DEU,''YYYYMM'')<'+quotedstr(dbseAno.text+dbseMes.text)+' THEN ''4691203'' ELSE ''1641401'' END '+
           ' UNION ALL '+
           'Select ''02'' CIAD,'''+wTipoCont+'''TDIARID,''0000000001''CNTCOMPROB,'''+dbseAno.text+''' CNTANO,'+quotedstr(dbseAno.text+dbseMes.text)+' CNTANOMM,'+
           '       F.CTA_FSC CUENTAID,'+
//Inicio: DPP_201214_COB
           '       NULL CCOSID,''FE15'' CNTLOTE,''COBR'' CNTSERIE,TRIM(NROOPE)||TRIM(M.ASOCODMOD) CNTNODOC, substr(M.ASOAPENOM,1,40) GLOSA,'+
//Fin: DPP_201214_COB
           '       0.00 DEBE,SUM(NVL(IMP_COB_DEU,0)) HABER,FEC_COB_DEU CNTFEMIS, MIN(FEC_CRE_COB_FSC) CNTFVCMTO '+
           'From COB_FSC_PAGOS_AL_FSC A, APO107 F, APO201 M,COB_FSC_DEUDA_FSC_CAB N '+
           'Where A.FORPAGID=''02'' AND FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
           '      and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 '+
           '      and A.NROOPE is not null '+
           '      and A.ASOID=N.ASOID(+) AND A.NUM_DEU=N.NUM_DEU(+) '+
           '      and A.ASOID=M.ASOID(+) AND N.TIP_ASO_ORIGEN=F.ASOTIPID(+) '+
           'group by TRIM(NROOPE)||TRIM(M.ASOCODMOD) ,FEC_COB_DEU, TO_CHAR(FEC_COB_DEU,''YYYYMMDD''), M.ASOAPENOM, N.TIP_ASO_ORIGEN,F.CTA_FSC ';
   TRY
     xSQL:=xSQL1+xSQL2;
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT

   END;

// generando otros datos
  xSql := 'Update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COB.EN EFECTIVO')
          +',DOCDES='+quotedstr('Cob.Efec')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID,CNTNODOC,to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID,CNTNODOC,to_date(CNTFVCMTO), CNTLOTE';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTNODOC;CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   While not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 60000
      else
         xNumComp := 60000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'Update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +'Where  CIAID='     +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='   +quotedstr(wTipoCont)
                +'   and CNTANOMM='  +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='  +quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTFVCMTO=' +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='   +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'Update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;

   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;

   If DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;
   try
   xSQL := 'Update CNT311COB '
          +'set TDIARID=''32'',CNTNODOC=SUBSTR(CNTNODOC,1,10) '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''COBR.EFE DEV.AL FSC''||CNTNODOC ,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )+' '
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,CNTNODOC, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');

end;


//Paramatros para la Contabilizacion de Devolucion al FSC por pagos en efectivo
procedure TFContabilizacion.ParametrosDevolucionFondoEFE;
begin
   wTipoCont := 'FE';
   wTipoCont2 := '';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;



//Reporte de Contabilizacion de Devolucion al FSC por Efectivo, antes de la transferencia
procedure TFContabilizacion.fcShapeBtn22Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311, 'FE', xPeriodo );
end;


//Reporte de Contabilizacion de Devolucion al FSC por Efectivo, despues de la transferencia
procedure TFContabilizacion.fcShapeBtn21Click(Sender: TObject);
begin
  ReporteContabilizaCredito( xCnt311r, 'FE15', xPeriodo );
end;


//Transferencia de de la contabilizacion de Devolucion al FSC por Efectivo
procedure TFContabilizacion.BitBtn32Click(Sender: TObject);
begin
   TransferirContBolDevFSC( 'FE', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;


//Reporte sustento de la información de Devoluciones al FSC por pagos de Planilla
procedure TFContabilizacion.BitBtn34Click(Sender: TObject);
var
   XSQL:STRING;
begin
   xSql:='SELECT A.UPROID,A.USEID,A.FEC_CRE_COB_FSC FREG,A.ASOID,A.ASOAPENOM,A.NUM_DEU,A.NROOPE,FEC_COB_DEU FOPERAC,SUM(NVL(A.IMP_COB_DEU,0))IMP_COB_DEU,SUM(NVL(A.IMP_EXC_DEU,0))IMP_EXC_DEU,'+
         'MIN(D.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, ' +
         'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM ' +
         'FROM COB_FSC_PAGOS_AL_FSC A, '+
         '     (SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
         '     APO102 C, TGE105 D  '+
         'WHERE  A.FORPAGID IN (''01'',''09'',''22'') AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') and'+
         '       To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.EST_COB_COD NOT IN (''04'',''13'')  AND '+
         '       A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPROID=C.UPROID(+) AND ' +
         '       A.BANCOID=D.BANCOID(+)   '+
         'GROUP BY A.FEC_CRE_COB_FSC,A.FEC_COB_DEU, A.UPROID, A.USEID, A.ASOID, A.ASOAPENOM, A.NUM_DEU, A.NROOPE '+
         'ORDER BY TO_CHAR(FEC_COB_DEU,''MM/YYYY''), CCBCOID, FEC_COB_DEU';


  DM1.cdsCambios.Close;
  DM1.cdsCambios.DataRequest(xSQL);
  DM1.cdsCambios.Open;
  If DM1.cdsCambios.RecordCount > 0 Then
     Begin
       BDEPPBANCO.DataSource := Dm1.dsCambios;
       ppltitulo.Caption  := 'DEVOLUCIONES AL FONDO SOLIDARIO DE CONTINGENCIA (PLANILLAS)';
       ppltitulo2.Caption := 'REGISTRADO DEL: '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
       pplSubtituloSustFSC.Caption := 'DEVOLUCIONES AL FSC, PAGOS POR PLANILLA, FECHA DE REGISTRO DEL:';
       ppRSustFSCBanco.Print;
       ppRSustFSCBanco.Stop;
     End
  Else MessageDlg(' No Existe Información Para Este Rango ó El Criterio Seleccionado ', mtError,[mbOk],0);
end;


//Contabilización de Devoluciones al FSC por Planilla
procedure TFContabilizacion.BitBtn36Click(Sender: TObject);
var
   xCia, xSQL, xSQL2, xCNTComprob  : String;
   xNumComp : Integer;
begin
   wTipoCont := 'DF';
   wTipoCont2 := 'DFPL';
   ParametrosDevolucionFondoPLA;
   Screen.Cursor:=crHourGlass;

// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Total Cobrado
   xSQL := 'Insert Into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, CNTFEMIS, CNTFVCMTO,'+
           '                       CCOSID,CNTLOTE, CNTSERIE, CNTNODOC,CNTGLOSA, CNTDEBEMN, CNTHABEMN ) ';

   XSQL2 :='Select ''02'' CIAD,'''+wTipoCont+'''TDIARID,''0000000001''CNTCOMPROB,'''+dbseAno.text+''' CNTANO,'+quotedstr(dbseAno.text+dbseMes.text)+' CNTANOMM,'+
           '       ''4691205'' CUENTAID,FEC_CRE_COB_FSC CNTFEMIS,FOPERAC CNTFVCMTO,'+
           '       NULL CCOSID,''DFPL'' CNTLOTE,''COBR'' CNTSERIE,'+
           '       TRIM(NROOPE)||TRIM(M.ASOCODMOD) CNTNODOC,SUBSTR(TRIM(''Dev.FSC ''||'+quotedstr(dbseAno.text+dbseMes.text)+'||''-''||TRIM(F.USENOM)),1,40) GLOSA,'+

           '       SUM(NVL(IMP_COB_DEU,0)) DEBE, 0.00 HABER '+  
           'From COB_FSC_PAGOS_AL_FSC A, APO101 F, APO201 M, COB_FSC_DEUDA_FSC_CAB N '+
           'Where A.FORPAGID IN (''01'',''09'',''22'')  AND FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
           '      and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 '+
           '      and A.NROOPE is not null  '+
           '      and F.USEID=A.USEID(+) and F.UPROID=A.UPROID(+) and F.UPAGOID=A.UPAGOID(+) '+
           '      and A.ASOID=M.ASOID(+) '+
           '      and A.ASOID=N.ASOID(+) AND A.NUM_DEU=N.NUM_DEU(+) '+
           'Group by TRIM(NROOPE)||TRIM(M.ASOCODMOD),FEC_CRE_COB_FSC,FOPERAC, M.ASOAPENOM, N.TIP_ASO_ORIGEN,F.USENOM'+
           ' UNION ALL '+
           'Select ''02'' CIAD,'''+wTipoCont+'''TDIARID,''0000000001''CNTCOMPROB,'''+dbseAno.text+''' CNTANO,'+quotedstr(dbseAno.text+dbseMes.text)+' CNTANOMM,'+
           '       F.CTA_FSC CUENTAID,FEC_CRE_COB_FSC CNTFEMIS,FOPERAC CNTFVCMTO,'+
           '       NULL CCOSID,''DFPL'' CNTLOTE,''COBR'' CNTSERIE,'+
           '       TRIM(NROOPE)||TRIM(M.ASOCODMOD) CNTNODOC,SUBSTR(TRIM(M.ASOAPENOM),1,40) GLOSA,'+
           '       0.00 DEBE,SUM(NVL(IMP_COB_DEU,0)) HABER '+
           'From COB_FSC_PAGOS_AL_FSC A, APO107 F, APO201 M,COB_FSC_DEUDA_FSC_CAB N '+
           'Where A.FORPAGID IN (''01'',''09'',''22'')  AND FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
           '      and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 '+
           '      and A.NROOPE is not null '+
           '      and A.ASOID=N.ASOID(+) AND A.NUM_DEU=N.NUM_DEU(+) '+
           '      and A.ASOID=M.ASOID(+) AND N.TIP_ASO_ORIGEN=F.ASOTIPID(+) '+
           'group by TRIM(NROOPE)||TRIM(M.ASOCODMOD) ,FEC_CRE_COB_FSC,FOPERAC, M.ASOAPENOM, N.TIP_ASO_ORIGEN,F.CTA_FSC ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2);


// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')+', CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=TO_DATE(SYSDATE), CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)     +', CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)   +', CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)      +', CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)+', CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X PLANILLA')
          +',DOCDES='+quotedstr('Cob.Plan')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2) '
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2) '
          +',CNTTS='+quotedstr('OV')+', CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID,CNTNODOC,to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE  from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' group by CIAID,CNTNODOC,to_date(CNTFVCMTO), CNTLOTE';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTNODOC;CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30014
      else
         xNumComp := 30014;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='  +quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTFVCMTO=' +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;


// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;

   
   xSQL := 'select a.*, rowid '
          +'from CNT311COB a '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         cdsPost(DM1.cdsQry3);
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
   begin
      ShowMessage('Nro. de Items no actualizados');
   end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'',CNTNODOC=SUBSTR(CNTNODOC,1,10) '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;


// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'MAX(CASE WHEN CNTREG=1 THEN A.CNTGLOSA ELSE '' '' END )  CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTLOTE ='+quotedstr( wTipoCont2 )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,'
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;


procedure TFContabilizacion.ParametrosDevolucionFondoPLA;
begin
   wTipoCont := 'DF';
   wTipoCont2:= 'DFPL';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;


//Reporte de Contabilizacion de Devolucion al FSC por Planilla, antes de la transferencia
procedure TFContabilizacion.fcShapeBtn24Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311, 'DF', xPeriodo );
end;


//Transferencia de de la contabilizacion de Devolucion al FSC por Planilla
procedure TFContabilizacion.BitBtn35Click(Sender: TObject);
begin
   TransferirContBolDevFSC( 'DF', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;


//Reporte de Contabilizacion de Devolucion al FSC por Planilla, despues de la transferencia
procedure TFContabilizacion.fcShapeBtn23Click(Sender: TObject);
begin
  ReporteContabilizaCredito( xCnt311r, 'DFPL', xPeriodo );
end;



// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
procedure TFContabilizacion.bbtnONPRepSusClick(Sender: TObject);
var
   xSql,xSql2,xAnoMes,VMES:string ;
   xmes:integer;
begin
   ParametrosONP;
   Screen.Cursor:=crHourGlass;

   xSql:='SELECT CREFPAG FOPERAC, A.UPROID, A.USEID, A.ASOID, SUBSTR(A.CREDID,9,7) CREDID, '
        +   'A.CREDOCPAG, TO_CHAR(MIN(A.CREFPAG),''MM/YYYY'') FOP, MIN(A.ASOAPENOM) ASOAPENOM, '
        +   'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM, MIN(B.CCOSID) CCOSID, '
        +   'MIN(A.TIPCREID) TIPCREID, MIN(D.TIPCREDES) TIPCREDES, MIN(A.BANCOID) BANCOID, '
        +   'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB, SUM(NVL(A.CREAMORT,0)) CREAMORT, '
        +   'SUM(NVL(A.CREINTERES,0)) CREINTERES, '
        +   'SUM(NVL(A.CREFLAT,0)) CREFLAT, SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC, '
        +   'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV '
        +'FROM CRE310'+cLink+' A, '
        +   '(SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'
        +   'APO102 C, CRE110 D  '
        +'where '+xWhereBusqueda
        + ' and CREDOCPAG is not null '
        + ' and not CREESTID in (''13'') '
        + ' and A.UPROID=B.UPROID(+) and A.USEID=B.USEID(+) and A.UPROID=C.UPROID(+) '
        + ' and A.TIPCREID=D.TIPCREID(+) '
        +'GROUP BY CREFPAG, A.UPROID, A.USEID, A.ASOID, A.CREDID, A.CREDOCPAG '
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
        //+'ORDER BY TO_CHAR(CREFPAG,''MM/YYYY''), CREDOCPAG'

//CRONOGRAMA CERRADO

        +' UNION ALL '
        +'SELECT A.FEC_OPERACION FOPERAC, A.UPROID, A.USEID, A.ASOID, '''' CREDID, '
        +   'A.NRO_OPERACION, TO_CHAR(MIN(A.FEC_OPERACION),''MM/YYYY'') FOP, MIN(A.ASOAPENOM) ASOAPENOM, '
        +   'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM, MIN(B.CCOSID) CCOSID, '
        +   ''''' TIPCREID, '''' TIPCREDES, MIN(A.BANCOID) BANCOID, '
        +   'SUM(NVL(A.IMPORTE,0)) CREMTOCOB, 0 CREAMORT, '
        +   '0 CREINTERES, '
        +   '0 CREFLAT, SUM(NVL(A.IMPORTE,0)) CREMTOEXC, '
        +   '0 MONCOBDESGRAV '
        +'FROM COB_DES_CRO_CERRADO_DET A, '
        +   '(SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'
        +   'APO102 C'
//Inicio HPC_201815_COB
//Se corrige el fitro del reporte de excesos por ONP de cronogramas cerrados
        + ' where '
        + ' A.FORPAGID=''43'' AND A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
        + ' and A.NRO_OPERACION is not null '
//Fin HPC_201815_COB
        + ' and not A.FLGEST in (''13'') '
        + ' and A.UPROID=B.UPROID(+) and A.USEID=B.USEID(+) and A.UPROID=C.UPROID(+) '
        +'GROUP BY A.FEC_OPERACION, A.UPROID, A.USEID, A.ASOID, A.NRO_OPERACION ';
        //+'ORDER BY TO_CHAR(CREFPAG,''MM/YYYY''), CREDOCPAG'
// Fin HPC_201806_COB 
  try
    dm1.cdsQry3.Close;
    dm1.cdsQry3.IndexFieldNames:='CREDOCPAG';
    dm1.cdsQry3.DataRequest(xSql);
    dm1.cdsQry3.Open;
  except
  end;
  ppdbONP.DataSource  := DM1.dsQry3;
  ppXtitulo3.Caption   := 'COBRANZAS POR ONP CONTABILIZADOS EN EL MES DE '+xMesDes+' DEL '+dbseAno.Text;
  Screen.Cursor:=crDefault;
  pprONP.Print;
end;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP


// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
procedure TFContabilizacion.ParametrosONP;
begin
   wTipoCont := 'ON';
   wTipoCont2:= 'ONP';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP


// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
procedure TFContabilizacion.bbtnONPContaClick(Sender: TObject);
var
   cCampoFec, cCampoFPa, xCia, xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xCNTComprob, xAnoMes : String;
   xNumComp : Integer;
   sforPag  : String;
begin
   wTipoCont  := 'ON';
   wTipoCont2 := 'ONP';
   xAnoMes    := dbseAno.Text+dbseMes.Text;
   cCampoFPa  := 'CREFPAG';
   cCampoFec  := 'FREG';
   sforPag    := '43';

   ParametrosONP;
   Screen.Cursor:=crHourGlass;
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Compañía Principal ('02')
// Total Cobrado
   xSQL1 :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, '
          +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, '
          +  'CNTHABEMN, CNTFEMIS, CNTFVCMTO ) ';

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE COBRANZAS X ONP DEL MES SOBRE CNT311COB
//-----------------------------------------------------------------------------------
// MONTO COBRADO (DEBE)
   xSQL2:='Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(xAnoMes)+', '
         +  '''4691205'' CUENTAID, '
         +  'null CCOSID, ''ONP'' LOTE, '
         +  '''COBR'' CNTSERIE, A.NROOPE,'
         +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' '
         +       'THEN E.CCBCOID ELSE H.ASODNI||''-''||SUBSTR(A.ASOAPENOM,1,31) END GLOSA, '
         +  'sum(NVL(A.CREMTOCOB,0)) DEBE, 0.00 HABER, A.'+cCampoFPa+', A.'+cCampoFec+' '
         +'From CRE310'+cLink+' A, TGE106'+cLink+' E, TGE105'+cLink+' F, APO201'+cLink+' H '
         +'where A.FORPAGID='''+sforPag+''' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and CREESTID NOT IN (''13'',''99'')'
         +  ' and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +  ' and nvl(A.CREMTOCOB,0)>0'
         +  ' and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +  ' and A.BANCOID=F.BANCOID '
         +  ' and A.ASOID=H.ASOID(+) '
         +'group by  A.NROOPE, A.'+cCampoFPa+', A.'+cCampoFec+', '
         +  'CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN E.CCBCOID ELSE H.ASODNI||''-''||SUBSTR(A.ASOAPENOM,1,31) END '
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)

         +' UNION  ALL '
         +'Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(xAnoMes)+', '
         +  '''4691205'' CUENTAID, '
         +  'null CCOSID, ''ONP'' LOTE, '
         +  '''COBR'' CNTSERIE, A.NRO_OPERACION,'
         +  'CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' '
         +       'THEN E.CCBCOID ELSE H.ASODNI||''-''||SUBSTR(A.ASOAPENOM,1,31) END GLOSA, '
         +  'sum(NVL(A.IMPORTE,0)) DEBE, 0.00 HABER, A.FEC_OPERACION, A.'+cCampoFec+' '
         +'From COB_DES_CRO_CERRADO_DET A, TGE106 E, TGE105 F, APO201 H '
         +'where A.FORPAGID='''+sforPag+''' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and A.FLGEST NOT IN (''13'')'
         +  ' and A.NRO_OPERACION is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +  ' and nvl(A.IMPORTE,0)>0'
         +  ' and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +  ' and A.BANCOID=F.BANCOID '
         +  ' and A.ASOID=H.ASOID(+) '
         +'group by  A.NRO_OPERACION, A.FEC_OPERACION, A.'+cCampoFec+', '
         +  'CASE WHEN SUBSTR(TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN E.CCBCOID ELSE H.ASODNI||''-''||SUBSTR(A.ASOAPENOM,1,31) END '
// Fin HPC_201806_COB 
// Inicio HPC_201738_COB
// Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
// Amortizaciones no refinanciados
         +'union all '
         +'select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, null CCOSID, '
         +'''ONP'' LOTE, '
         +'''AMOR'' CNTSERIE,  TO_CHAR(A.'+cCampoFec+',''YYYYMMDD'') , ''CREDITO DE CONSUMO'' GLOSA,'
         +'0.00 DEBE, sum(NVL(A.CREAMORT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
         +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C, TGE106'+cLink+' E '
         +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
         + xWhereExcluye
         +'  and CREESTID NOT IN (''13'',''99'')'
         +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +'  and nvl(A.CREAMORT,0)>0'
         +'  and B.TIPCREID(+)=A.TIPCREID '
         +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
         +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +'  AND A.CREDID NOT LIKE ''%R%'' '
         +'group by B.CIAID, B.CUENTAID, A.'+cCampoFec+' '
         +'having NVL(B.CIAID,''02'') = ''02'' '
// Amortizaciones refinanciados
         +'union all '
         +'select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +quotedstr(dbseAno.text+dbseMes.text)+', '+quotedstr(xCtaRefi)+' CUENTAID, null CCOSID, '
         +'''ONP'' LOTE, '
         +'''AMOR'' CNTSERIE,  TO_CHAR(A.'+cCampoFec+',''YYYYMMDD'') , ''CREDITO DE CONSUMO'' GLOSA,'
         +'0.00 DEBE, sum(NVL(A.CREAMORT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
         +'from CRE310'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C, TGE106'+cLink+' E '
         +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
         + xWhereExcluye
         +'  and CREESTID NOT IN (''13'',''99'')'
         +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +'  and nvl(A.CREAMORT,0)>0'
         +'  and B.TIPCREID(+)=A.TIPCREID '
         +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
         +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +'  AND A.CREDID LIKE ''%R%'' '
         +'group by B.CIAID, B.CUENTAID, A.'+cCampoFec+' '
// Fin HPC_201738_COB
         +'having NVL(B.CIAID,''02'') = ''02'' ';
// Excesos
// Inicio   HPC_201607_COB            : Cambiar Cuenta contable de Excesos
   xSQL3:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUEEXC,'
          +'null CCOSID, '
          +'''ONP'' LOTE, '
          +'''EXCE'' CNTSERIE, TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''), ''EXCESOS'' GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, TGE106'+cLink+' E '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null '
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          +'group by B.CIAID, B.CUEEXC, A.'+cCampoFec+', TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD'') '
          +'having NVL(B.CIAID,''02'') = ''02'' '

// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
//CRONOGRAMA CERRADO

         +' UNION ALL '
         +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
         +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
         +quotedstr(dbseAno.text+dbseMes.text)+', E.EXCCROCERR,'
         +'null CCOSID, '
         +'''ONP'' LOTE, '
         +'''EXCE'' CNTSERIE, TO_CHAR(A.FEC_OPERACION,''YYYYMMDD''), ''EXCESOS'' GLOSA, '
         +'0.00 DEBE, sum(NVL(A.IMPORTE,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
         +'from COB_DES_CRO_CERRADO_DET A, TGE106 E '
         +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
         +'  and A.FLGEST NOT IN (''13'')'
         +'  and A.NRO_OPERACION is not null and A.BANCOID is not null and A.CCBCOID is not null '
         +'  and nvl(A.IMPORTE,0)>0'
         +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +'group by E.EXCCROCERR, A.'+cCampoFec+', TO_CHAR(A.FEC_OPERACION,''YYYYMMDD'') '
// Fin HPC_201806_COB 
// FIN   HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +   quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAINT,'
          +   'null CCOSID, '
          +   '''ONP'' LOTE, '
          +   '''INTE'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''INTERESES POR PRESTAMOS'' GLOSA, '
          +   '0.00 DEBE, sum(nvl(A.CREINTERES,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, TGE106'+cLink+' E '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null '
          +'  and nvl(A.CREINTERES,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          +'group by B.CIAID, B.CTAINT, A.'+cCampoFec+' ';
// Flat
    xSQL4:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CTAFLAT,'
          +'null CCOSID, '
          +'''ONP'' LOTE, '
          +'''FLAT'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''GASTOS ADMINISTRATIVOS POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREFLAT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, TGE106'+cLink+' E '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
          +'  and nvl(A.CREFLAT,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          +'group by B.CIAID, B.CTAFLAT, A.'+cCampoFec+' '

// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV,'
          +'null CCOSID, '
          +'''ONP'' LOTE, '
          +'''FPD'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FPD POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.MONCOBDESGRAV,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' A, CRE110'+cLink+' B, TGE106'+cLink+' E, CRE301 C, APO107 T  '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and a.CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          + ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          + ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID, T.CTA_DESGRAV, A.'+cCampoFec+' '


// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +'null CCOSID, '
          +'''ONP'' LOTE, '
          +'''FILI'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FILIALES'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREAMORT,0))+sum(nvl(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310'+cLink+' a, CRE110'+cLink+' B, TGE106'+cLink+' E '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
          +'group by B.CUENTAID, B.CIAID, A.'+cCampoFec+' '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
   xSQL:=xSQL1+xSQL2+xSQL3+xSQL4;

   TRY
     xSQL:=xSQL1+xSQL2;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL3;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL4;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT

   END;


// generando otros datos
  xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X BOL.DEPO')
          +',DOCDES='+quotedstr('Cob.Bole')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID, to_date(CNTFVCMTO), CNTLOTE';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='    +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='  +quotedstr(wTipoCont)
                +'   and CNTANOMM=' +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTFVCMTO='  +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='  +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;

   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''BOLETAS DEPOSITO '' CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// ASIENTO ORIGEN 28

// Compañía Principal ('02')
// Total Cobrado
   xSQL1 :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, '
          +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, '
          +  'CNTHABEMN, CNTFEMIS, CNTFVCMTO ) ';

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE COBRANZAS X ONP DEL MES SOBRE CNT311COB
//-----------------------------------------------------------------------------------
// MONTO COBRADO (DEBE)
//INICIO HPC_201815_COB
//Se adiciona los descargos por CREDITOS CERRADOS
   xSQL2:='SELECT max(CIAID) ciaid,max(LOTE1)LOTE1,MAX(COMPROB)COMPROB,MAX(ANHO)ANHO,MAX(PERIODO)PERIODO,'
         +'       CUENTAID,CCOSID,LOTE,CNTSERIE,NROOPE,GLOSA,SUM(NVL(DEBE,0)) DEBE,SUM(NVL(HABER,0)) HABER,CREFPAG,FREG'
         +' FROM ( '
         +'Select '+quotedstr('02')+' CIAID, '+quotedstr(wTipoCont)+' LOTE1, '
         +  quotedstr('0000000001')+' COMPROB, '+quotedstr(dbseAno.text)+' ANHO, '
         +  quotedstr(xAnoMes)+' PERIODO, '
         +  'CASE WHEN SUBSTR(TO_CHAR('+cCampoFPa+',''YYYYMMDD''),1,6)='''+xAnoMes+''' THEN E.CTAPRINC '
         +       'WHEN SUBSTR(TO_CHAR('+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''4691203'' '
         +       'ELSE ''1641401'' END CUENTAID, '
         +  'null CCOSID, ''ONP'' LOTE, '
         +  '''COBR'' CNTSERIE, A.NROOPE, A.NROOPE GLOSA, '
         +  'sum(NVL(A.CREMTOCOB,0)) DEBE, 0.00 HABER, A.'+cCampoFPa+', A.'+cCampoFec+' '
         +'From CRE310'+cLink+' A, TGE106'+cLink+' E, TGE105'+cLink+' F, APO201'+cLink+' H '
         +'where A.FORPAGID='''+sforPag+''' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and CREESTID NOT IN (''13'',''99'')'
         +  ' and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +  ' and nvl(A.CREMTOCOB,0)>0'
         +  ' and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +  ' and A.BANCOID=F.BANCOID '
         +  ' and A.ASOID=H.ASOID(+) '
         +'group by CASE WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)='''+xAnoMes+''' THEN E.CTAPRINC '
         +  'WHEN SUBSTR(TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''4691203'' ELSE ''1641401'' END, '
         +  'A.NROOPE, A.'+cCampoFPa+', A.'+cCampoFec+' '
         +  ' UNION ALL '
         + 'Select '+quotedstr('02')+' CIAID, '+quotedstr(wTipoCont)+' LOTE1, '
         +  quotedstr('0000000001')+' COMPROB, '+quotedstr(dbseAno.text)+' ANHO, '
         +  quotedstr(xAnoMes)+' PERIODO, '
         +  'CASE WHEN SUBSTR(TO_CHAR(fec_operacion,''YYYYMMDD''),1,6)='''+xAnoMes+''' THEN E.CTAPRINC '
         +       'WHEN SUBSTR(TO_CHAR(fec_operacion,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''4691203'' '
         +       'ELSE ''1641401'' END CUENTAID, '
         +  'null CCOSID, ''ONP'' LOTE, '
         +  '''COBR'' CNTSERIE,A.nro_operacion nroope,A.nro_operacion GLOSA,'
         +  'sum(NVL(A.importe, 0)) DEBE, 0.00 HABER, A.fec_operacion CREFPAG, A.'+cCampoFec+' '
         +'From COB_DES_CRO_CERRADO_DET A,TGE106 E, TGE105 F, APO201 H  '
         +'Where A.FORPAGID = '''+sforPag+''' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and A.FLGEST NOT IN (''13'')'
         +  ' and nro_operacion is not null and A.BANCOID is not null and A.CCBCOID is not null '
         +  ' and nvl(A.importe, 0) > 0  '
         +  ' and E.BANCOID = A.BANCOID  and E.CCBCOID = A.CCBCOID  AND E.CIAID= ''02'' '
         +  ' and A.BANCOID = F.BANCOID '
         +  ' and A.ASOID   = H.ASOID(+)'
         +  'group by CASE  WHEN SUBSTR(TO_CHAR(A.fec_operacion,''YYYYMMDD''), 1, 6) = '''+xAnoMes+''' THEN  E.CTAPRINC '
         +  ' WHEN SUBSTR(TO_CHAR(A.fec_operacion,''YYYYMMDD''), 1, 6) < '''+xAnoMes+''' THEN  ''4691203''  ELSE ''1641401''  END, '
         +  ' A.nro_operacion, A.fec_operacion, A.'+cCampoFec+' '
         +' UNION ALL '
         + 'Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(xAnoMes)+', '
         +  '''4691205'' CUENTAID, '
         +  'null CCOSID, ''ONP'' LOTE, '
         +  '''COBR'' CNTSERIE, A.NROOPE, A.NROOPE GLOSA, '
         +  '0.00 DEBE, sum(NVL(A.CREMTOCOB,0)) HABER, A.'+cCampoFPa+', A.'+cCampoFec+' '
         +'From CRE310'+cLink+' A, TGE106'+cLink+' E, TGE105'+cLink+' F, APO201'+cLink+' H '
         +'where A.FORPAGID='''+sforPag+''' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and CREESTID NOT IN (''13'',''99'')'
         +  ' and CREDOCPAG is not null and A.BANCOID is not null and A.CCBCOID is not null'
         +  ' and nvl(A.CREMTOCOB,0)>0'
         +  ' and E.BANCOID=A.BANCOID and E.CCBCOID=A.CCBCOID and E.CIAID=''02'' '
         +  ' and A.BANCOID=F.BANCOID '
         +  ' and A.ASOID=H.ASOID(+) '
         +'group by A.NROOPE, A.'+cCampoFPa+', A.'+cCampoFec+' '
         +' UNION ALL '
         +' Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(xAnoMes)+', '
         +  '''4691205'' CUENTAID, '
         +  'null CCOSID, ''ONP'' LOTE, '
         +  '''COBR'' CNTSERIE, A.nro_operacion nroope, A.nro_operacion GLOSA,'
         +  '0.00 DEBE, sum(NVL(A.importe, 0)) HABER,A.fec_operacion CREFPAG, A.'+cCampoFec+' '
         +'From COB_DES_CRO_CERRADO_DET A,TGE106 E , TGE105 F, APO201 H '
         +'where A.FORPAGID = '''+sforPag+''' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and A.FLGEST NOT IN (''13'') and nro_operacion is not null and A.BANCOID is not null  and A.CCBCOID is not null '
         +  ' and nvl(A.importe, 0) > 0 '
         +  ' and E.BANCOID = A.BANCOID  and E.CCBCOID = A.CCBCOID AND E.CIAID= ''02'' '
         +  ' and A.BANCOID = F.BANCOID '
         +  ' and A.ASOID   = H.ASOID(+) '
         + 'group by A.nro_operacion,A.fec_operacion,A.FREG '
         + ' ) '
         + 'GROUP BY CUENTAID,CCOSID,LOTE,CNTSERIE,NROOPE,GLOSA,nroope,CREFPAG,FREG ';
//FINAL HPC_201815_COB
   TRY
     xSQL:=xSQL1+xSQL2;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT

   END;

// generando otros datos
  xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X BOL.DEPO')
          +',DOCDES='+quotedstr('Cob.Bole')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID, to_date(CNTFVCMTO), CNTLOTE';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='    +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='  +quotedstr(wTipoCont)
                +'   and CNTANOMM=' +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTFVCMTO='  +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='  +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;

   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''28'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''BOLETAS DEPOSITO '' CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('28')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP


// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
procedure TFContabilizacion.bbtnONPRepPrevioClick(Sender: TObject);
begin
   ParametrosONP;
   ReporteContabilizaCredito( xCnt311, 'ONP', xPeriodo );
end;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP


// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
procedure TFContabilizacion.bbtnONPTransfClick(Sender: TObject);
begin
  ParametrosONP;
  TransferirContabilidadONP( 'ONP', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP


// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
procedure TFContabilizacion.TransferirContabilidadONP(cLote,cOrigen,xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r : String);
var
   xSQL, xNumMax, xNumMin : String;
   xCambioNum : String;
   NumComp, NumCompAnt : String;
//Inicio HPC_201601_COB
   xTabla : String;
//Final HPC_201601_COB
begin

   If MessageDlg('¿Está Seguro de Transferir Contabilidad ( '+cLote+ ' ) ?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

   Screen.Cursor:=crHourGlass;

   ///
   xSQL:='Select * from CNT300 A '
        +'where CIAID>=''02'' AND TDIARID IN ('''+cOrigen+''',''28'' ) and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//      +                'and B.CNTLOTE in (''ONP'') AND A.CNTCOMPROB=B.CNTCOMPROB '
        +                'and B.CNTLOTE LIKE '+quotedstr( cLote+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//      +                'and B.CNTLOTE in (''ONP'') AND A.CNTCOMPROB=B.CNTCOMPROB )';
        +                'and B.CNTLOTE LIKE '+quotedstr( cLote+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
//Final HPC_201601_COB
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Open;
   except
   end;

   if DM1.cdsQry2.Recordcount>0 then
   begin
      If MessageDlg('Asientos Generados fueron Transferidos a Contabilidad. ¿Desea Eliminar Asientos Transferidos?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

      xSQL:='Select * from CNT300 A '
           +'where CIAID>=''02'' AND TDIARID IN ('''+cOrigen+''',''28'' ) and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//         +  'and CNTLOTE in (''ONP'') and CNTESTADO=''P'' '
           +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )+' and CNTESTADO=''P'' '
           +  'and exists( select B.cntcomprob from CNT311 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
           +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//      +                'and B.CNTLOTE in (''ONP'') AND A.CNTCOMPROB=B.CNTCOMPROB '
        +                'and B.CNTLOTE LIKE '+quotedstr( cLote+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB '
           +              'union all '
           +              'select B.cntcomprob from CNT301 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
           +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//      +                'and B.CNTLOTE in (''ONP'') AND A.CNTCOMPROB=B.CNTCOMPROB )';
        +                'and B.CNTLOTE LIKE '+quotedstr( cLote+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
//Final HPC_201601_COB
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
         DM1.cdsQry2.Open;
      except
      end;

      if DM1.cdsQry2.Recordcount>0 then
      begin
         Screen.Cursor:=crDefault;
         MessageDlg('Asientos ya fueron Aceptados por Contabilidad. NO se pueden Eliminar !!!', mtError, [mbOk], 0);
         Exit
      end;
   end;
   ///


   xSQL:='Select * from '+xCnt300r+' A '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''',''28'') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//      +                'and B.CNTLOTE in (''ONP'') AND A.CNTCOMPROB=B.CNTCOMPROB '
        +                'and B.CNTLOTE LIKE '+quotedstr( cLote+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//      +                'and B.CNTLOTE in (''ONP'') AND A.CNTCOMPROB=B.CNTCOMPROB )';
        +                'and B.CNTLOTE LIKE '+quotedstr( cLote+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )' ;
//Final HPC_201601_COB
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   try
      DM1.cdsQry.Open;
   except
      Exit;
   end;


   if DM1.cdsQry.RecordCount>0 Then
    begin
       If MessageDlg('Existen Registros Transferidos de Cobranzas. ¿Desea continuar con Transferencia?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
       Begin
          Screen.Cursor:=crDefault;
          Exit;
       end;
       xSQL:='Delete from '+xCnt300r+' A '
            +'where CIAID>=''02'' AND TDIARID in (''28'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//          +  'and CNTLOTE in (''ONP'') '
            +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
            +  'and exists( select B.cntcomprob from CNT311 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//          +                'and B.CNTLOTE in (''ONP'') AND A.CNTCOMPROB=B.CNTCOMPROB '
            +                'and B.CNTLOTE LIKE '+quotedstr( cLote+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB '
            +              'union all '
            +              'select B.cntcomprob from CNT301 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//          +                'and B.CNTLOTE in (''ONP'') AND A.CNTCOMPROB=B.CNTCOMPROB )';
            +                'and B.CNTLOTE LIKE '+quotedstr( cLote+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
//Final HPC_201601_COB
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
          DM1.cdsQry2.Execute;
       except
       end;

       xSQL:='Delete from '+xCnt311r+' '
            +'where CIAID>=''02'' AND TDIARID in (''28'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//Inicio HPC_201601_COB
//          +  'and CNTLOTE in (''ONP'') ';
            +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' );
//Final HPC_201601_COB
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
         DM1.cdsQry2.Execute;
       except
       end;

      xSQL:='Delete from CNT301 '
           +'where CIAID>=''02'' AND TDIARID in (''28'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
           +  'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//Inicio HPC_201601_COB
//         +  'and CNTLOTE in (''ONP'') ';
           +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' );
//Final HPC_201601_COB
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
         DM1.cdsQry2.Execute;
      except
      end;

   end;
   // Para poder obtener el xNumMin y xNumMax


   //PARA RENUMERAR ORIGEN 32
    xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
         +'FROM '+xCNT311+' '
         +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
         +  'and TDIARID in ('''+cOrigen+''') '
         +  'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//Inicio HPC_201601_COB
//       +  'and CNTLOTE in (''ONP'') '
         +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
         +'ORDER BY TDIARID, CNTCOMPROB';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
    xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;


   //COD BERGER
    xSQL:='select NVL(MAX( CNTCOMPROB ),''0'') MAXIMO FROM '+xCnt300r+' '
         +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
         +'order by CIAID, TDIARID, CNTCOMPROB';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest( xSQL );
    try
       DM1.cdsQry2.oPEN;
    except
    end;

   //NUMCOMP:=inttostr(DM1.cdsQry2.recordcount);
    NUMCOMP:=DM1.cdsQry2.FieldByName('MAXIMO').ASSTRING;
    NUMCOMP:= DM1.strzero(inttostr(strtoint(numcomp)+1),10);
    NUMCOMPANT:=xNumMin;

    xCambioNum := 'F';

    WHILE NUMCOMPANT<=xNumMax do
    BEGIN
      xSQL:='update '+xCnt300+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
	      +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
        +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
      NUMCOMP:=DM1.strzero(inttostr(strtoint(NUMCOMP)+1),10);
      NUMCOMPANT:=DM1.strzero(inttostr(strtoint(NUMCOMPANT)+1),10);
      xCambioNum := 'S';
    END;

    if xCambioNum='S' then
    begin

      xSQL:='update '+xCnt300+' A '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
        +  'and exists( select B.cntcomprob from CNT311COB B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
        +                'and B.CNTLOTE like '+quotedstr( wTipoCont+'%' )+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') ';
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' );
//Final HPC_201601_COB
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

    end;


   //PARA RENUMERAR ORIGEN 28
   xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
        +'FROM '+xCNT300+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in (''28'') '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;


   //COD BERGER
   xSQL:='select NVL(MAX( CNTCOMPROB ),''0'') MAXIMO FROM '+xCnt300r+' '
        +'where CIAID>=''02'' AND TDIARID in (''28'') and CNTANOMM='''+xPeriodo+''' '
        +'order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.oPEN;
   except
   end;
   //NUMCOMP:=inttostr(DM1.cdsQry2.recordcount);
   NUMCOMP:=DM1.cdsQry2.FieldByName('MAXIMO').ASSTRING;
   NUMCOMP:= DM1.strzero(inttostr(strtoint(numcomp)+1),10);
   NUMCOMPANT:=xNumMin;

   xCambioNum := 'F';

   WHILE NUMCOMPANT<=xNumMax do
   BEGIN
      xSQL:='update '+xCnt300+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in (''28'') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
	      +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in (''28'') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
        +  'and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
      NUMCOMP:=DM1.strzero(inttostr(strtoint(NUMCOMP)+1),10);
      NUMCOMPANT:=DM1.strzero(inttostr(strtoint(NUMCOMPANT)+1),10);
      xCambioNum := 'S';
    END;

    if xCambioNum='S' then
    begin

      xSQL:='update '+xCnt300+' '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in (''28'') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') ';
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' );
//Final HPC_201601_COB
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
        +'where CIAID>=''02'' AND TDIARID in (''28'') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') ';
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' );
//Final HPC_201601_COB
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

    end;

   // FIN COD BERGER

   // Valida si no hay repetidos antes de insertarlos en la tabla xCnt300r
    // origen 32
   xSQL:='SELECT MAX( CNTCOMPROB ) NUMMAX, MIN( CNTCOMPROB ) NUMMIN FROM '+xCNT311+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;

   xSQL:='SELECT * FROM '+xCnt300r+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
        +  'AND CNTCOMPROB BETWEEN '''+xNumMin+''' AND '''+xNumMax+''' '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if DM1.cdsQry.RecordCount>0 Then
   begin
      MessageDlg('Error : En Contabilidad existen comprobantes con el mismo Numero, Debe volver a Transferir Contabilidad !!!', mtError, [mbOk], 0);
      Exit;
   end;

   // origen 28
    xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
        + 'FROM '+xCNT311+' '
        + 'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +   'AND TDIARID in (''28'') '
//Inicio HPC_201601_COB
//      +   'and CNTLOTE in (''ONP'') '
        +   'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
        + 'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;

   xSQL:='SELECT * FROM '+xCnt300r+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in (''28'') '
        +  'AND CNTCOMPROB BETWEEN '''+xNumMin+''' AND '''+xNumMax+''' '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if DM1.cdsQry.RecordCount>0 Then
   begin
      MessageDlg('Error : En Contabilidad existen comprobantes con el mismo Numero, Debe volver a Transferir Contabilidad !!!', mtError, [mbOk], 0);
      Exit;
   end;

   // transferir
   xSQL:='insert into '+xCnt300r+' '
        +'select * from '+xCNT300+' '
        +'where CIAID>=''02'' AND TDIARID in (''28'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
        +'order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
   end;

   xSQL:='insert into '+xCnt311r+' '
        +'select * from '+xCNT311+' '
        +'where CIAID>=''02'' AND TDIARID in (''28'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
//Inicio HPC_201601_COB
//      +  'and CNTLOTE in (''ONP'') '
        +  'and CNTLOTE LIKE '+quotedstr( cLote+'%' )
//Final HPC_201601_COB
        +'order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
   end;

   ///
   try
      //--ACTUALIZA FLAG CONTB. DESEMBOLSO EN EFECTIVO
//Inicio HPC_201601_COB
//   xSQL:='UPDATE CRE310 A SET A.CNTFLAG=''S'', CNTANOMM='''+xPeriodo+''' '
     If cLote='FONP' Then xTabla:='COB_FSC_PAGOS_AL_FSC' else xTabla:='CRE310';
     xSQL:='UPDATE '+xTabla+' A SET A.CNTFLAG=''S'', CNTANOMM='''+xPeriodo+''' '
//Final HPC_201601_COB
           +'where '+xWhereBusqueda+' ';

      If cLote = 'TEL' Then
          //xVar:=0
      Else If cLote = 'PLA' Then
           xSQL:= xSQL  +  ' AND CREESTID NOT IN (''13'',''04'',''99'') '
                           +  ' AND A.CIAID=''02'' '
      Else If cLote = 'BOL' Then
           xSQL:= xSQL + ' and A.CREDOCPAG is not null '
                      + ' and A.CREESTID NOT IN (''13'',''04'',''99'') '
                      + ' and A.BANCOID is not null and A.CCBCOID is not null '
                      + ' and A.CIAID=''02'' '
      Else If cLote = 'EFE' Then
           xSQL:=xSQL + ' and CREESTID NOT IN (''13'',''04'',''99'') '
      Else If cLote = 'ONP' Then
//Inicio HPC_201601_COB
//         xSQL:=xSQL + ' and CREESTID NOT IN (''13'',''04'',''99'') ';
           xSQL:=xSQL + ' and CREESTID NOT IN (''13'',''04'',''99'') '
      Else If cLote = 'FONP' Then
           xSQL:=xSQL + ' and EST_COB_COD NOT IN (''13'',''04'',''99'') ';
//Final HPC_201601_COB
      DM1.cdsQry2.DataRequest( xSQL );
      DM1.cdsQry2.Execute;
   except
   end;
   ///
   Screen.Cursor:=crDefault;
   MessageDlg('La Transferencia Exitosa !!!', mtConfirmation, [mbOk], 0);
end;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP


// Inicio: SPP_201308_COB            : Contabilización de cobranzas por ONP
procedure TFContabilizacion.bbtnONPRepContaClick(Sender: TObject);
begin
   ParametrosONP;
   ReporteContabilizaCredito( xCnt311r, 'ONP', xPeriodo );
end;
// Fin: SPP_201308_COB            : Contabilización de cobranzas por ONP


// Inicio: SPP_201311_COB            : Contabilización de Aplicación de FPD
procedure TFContabilizacion.bbtnRepSusFPDClick(Sender: TObject);
var
   xSQL, xPeriodo : String;
begin
   ParametrosAplicaFPD;
   xSQL:='SELECT USUARIO, USERNOM, CREFPAG, ASOCODMOD, ASOAPENOM, SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '
        +   'SUM(NVL(CREAMORT,0)) CREAMORT, SUM(NVL(CREINTERES,0)) CREINTERES, '
        +   'SUM(NVL(CREFLAT,0)) CREFLAT, SUM(NVL(CREMTOEXC,0)) CREMTOEXC, SUM(NVL(moncobdesgrav,0)) moncobdesgrav, '
        +   '''APLICA FONDO DE PROTECCION DE DESGRAVAMEN DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310'+cLink+' A, USERTABLE'+cLink+' B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99'' AND CREESTID<>''04'' '
        + ' and A.USUARIO=B.USERID '
        +'GROUP BY USUARIO,USERNOM,CREFPAG, ASOCODMOD, ASOAPENOM '
        +'ORDER BY USUARIO,USERNOM,CREFPAG, ASOCODMOD, ASOAPENOM ';

   dm1.cdsQry4.Close;
   dm1.cdsQry4.DataRequest(xSQL);
   dm1.cdsQry4.Open;

   ppdb11.DataSource :=nil;
   ppr11.DataPipeline:=nil;
   ppdb11.DataSource :=  DM1.dsQry4;
   ppr11.DataPipeline:=ppdb11;
   Screen.Cursor:=crDefault;
   ppr11.Print;
   ppr11.Stop;
   ppdb11.DataSource :=nil;
   ppr11.DataPipeline:=nil;
end;
// Fin: SPP_201311_COB           : Contabilización de Aplicación de FPD

// Inicio: SPP_201311_COB           : Contabilización de Aplicación de FPD
procedure TFContabilizacion.ParametrosAplicaFPD;
begin
   wTipoCont := 'FD';
   wTipoCont2 := 'FD';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT LIKE '+quotedstr( wTipoCont2+'%' )+' ';
// Inicio SPP_201403_COB           : Consistenciar Contabilización de Cobranzas en Efectivo
   xWhereIncluyeLote:=' ';
// Fin  SPP_201403_COB             : Consistenciar Contabilización de Cobranzas en Efectivo
end;
// Fin: SPP_201311_COB           : Contabilización de Aplicación de FPD


// Inicio: SPP_201311_COB            : Contabilización de Aplicación de FPD
procedure TFContabilizacion.bbtnFPDCntClick(Sender: TObject);
var
   xCia, xSQL, xSQL2, xSQL3, xCNTComprob  : String;
   xNumComp : Integer;
begin
   Screen.Cursor:=crHourGlass;
   ParametrosAplicaFPD;

   xSQL := 'Select CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, CNTFEMIS from CNT311COB '
          +'where CNTANOMM ='+quotedstr( dbseAno.text+dbseMes.text )
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   while not DM1.cdsQry3.Eof do
   begin
       // Borra Cabecera
       xSQL := 'delete from CNT300COB '
              +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
              +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       DM1.cdsQry3.Next;
   end;

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, '
          +'                       CNTFEMIS, CNTFVCMTO, CNTFCOMP,'
          +'                       CCOSID,CNTLOTE,CNTSERIE,CNTNODOC, CNTGLOSA, CNTDEBEMN, CNTHABEMN ) '
// MONTO COBRADO (DEBE)
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', '
          +   'T.CTA_DESGRAV CTACAJA, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''AC'' WHEN M.ASOTIPID=''CE'' THEN ''CE'' ELSE ''CO'' END LOTE, '
          +   '''COBR'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   '''FONDO DESGRAVAMEN ''||CASE WHEN M.ASOTIPID=''DO'' THEN ''ACTIVOS'' WHEN M.ASOTIPID=''CESANTES'' THEN ''CE'' ELSE ''CONTRATADOS'' END GLOSA, '
          +   'sum(A.CREMTOCOB) DEBE, 0.00 HABER '
          +'from CRE310'+cLink+' A, TGE106'+cLink+' F, CRE301'+cLink+' M, APO107 T  '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +  'and F.CIAID=''02'' and F.TMONID=''N'' and F.BANCOID=''18'' and nvl(A.CREMTOCOB,0)>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +  'and m.asotipid=t.asotipid(+) '
          +'group by T.CTA_DESGRAV, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
// Amortizaciones
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','
          +   quotedstr(dbseAno.text)+', '+quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID,'
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, NULL CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''AC'' WHEN M.ASOTIPID=''CE'' THEN ''CE'' ELSE ''CO'' END LOTE, '
          +   '''AMOR'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   'SUBSTR(A.ASOAPENOM,1,40) GLOSA, '+'0.00 DEBE, sum(A.CREAMORT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C, TGE202 P, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREAMORT,0)>0 '
          +'  and P.CIAID=''02'' AND P.CUENTAID(+)=B.CUENTAID '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'group by B.CIAID, B.CUENTAID, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID, A.ASOAPENOM '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Excesos
// Inicio HPC_201607_COB            : Cambiar Cuenta contable de Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CUEEXC, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, NULL CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''AC'' WHEN M.ASOTIPID=''CE'' THEN ''CE'' ELSE ''CO'' END LOTE, '
          +   '''EXCE'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC,'
          +   '''EXCESOS'' GLOSA, 0.00 DEBE, sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, APO101 C, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +'  and nvl(A.CREMTOEXC,0)>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'group by B.CIAID, B.CUEEXC, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
          +'having NVL(B.CIAID,''02'') = ''02'' ';
// FIN   HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Intereses
   xSQL2 := ''
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          //+   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAINT, '
          +   quotedstr(dbseAno.text+dbseMes.text)+', ''7680101'' CUENTA, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''AC'' WHEN M.ASOTIPID=''CE'' THEN ''CE'' ELSE ''CO'' END LOTE, '
          +   '''INTE'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC,'
          +   '''INTERESES POR PRESTAMO'' GLOSA, '+'0.00 DEBE, sum(A.CREINTERES) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREINTERES,0)>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'group by B.CIAID, B.CTAINT, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
// Flat
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +   quotedstr(dbseAno.text+dbseMes.text)+', ''7680101'' CUENTA, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''AC'' WHEN M.ASOTIPID=''CE'' THEN ''CE'' ELSE ''CO'' END LOTE, '
          +   '''FLAT'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   '''GASTOS ADMINISTRATIVOS POR PRESTAMOS'' GLOSA, 0.00 DEBE, sum(A.CREFLAT) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'') '
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.CREFLAT,0)>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'group by B.CIAID, B.CTAFLAT, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '

// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN C.ASOTIPID=''DO'' THEN ''AC'' WHEN C.ASOTIPID=''CE'' THEN ''CE'' ELSE ''CO'' END LOTE, '
          +   '''FPD'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   '''FPD POR PRESTAMOS'' GLOSA, 0.00 DEBE, sum(nvl(A.MONCOBDESGRAV,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, CRE301 C, APO107 T  '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
         +  ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
         +  ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID, T.CTA_DESGRAV, CREFPAG, C.ASOTIPID '

// Contabilización de cobranzas por ONP
// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '+quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +   'CREFPAG CNTFEMIS, CREFPAG CNTFVCMTO, '''+edtFecha.Text+''' CNTFCOMP, null CCOSID, '
          +   quotedstr(wTipoCont2)+'||CASE WHEN M.ASOTIPID=''DO'' THEN ''AC'' WHEN M.ASOTIPID=''CE'' THEN ''CE'' ELSE ''CO'' END LOTE, '
          +   '''OTRA'' CNTSERIE, TO_CHAR(CREFPAG,''YYYYMMDD'') CNTNODOC, '
          +   '''OTRAS COMPAÑIAS''  GLOSA, 0.00 DEBE, sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) HABER '
          +'from CRE310'+cLink+' A, CRE110 B, CRE301'+cLink+' M '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID NOT IN (''13'',''04'',''99'')'
          +'  and B.TIPCREID(+) = A.TIPCREID '
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +  'and A.ASOID=M.ASOID(+) AND A.CREDID=M.CREDID(+) '
          +'group by B.CIAID, B.CUENTAID, CREFPAG, TO_CHAR(CREFPAG,''YYYYMMDD''), A.OFDESID, M.ASOTIPID '
          +'having nvl(B.CIAID,''02'') <> ''02'' ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2);

// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTESTADO='+quotedstr('I')+', CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'+', CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)      +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)    +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)       +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem) +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COB.EN EFECTIVO')
          +',DOCDES='+quotedstr('Cob.Efec')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')+',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text );
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, CNTLOTE, CNTNODOC from CNT311COB '
          +' where TDIARID=' +quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID, CNTLOTE, CNTNODOC ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTLOTE; CNTNODOC';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 40000
      else
         xNumComp := 40000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='+quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + '  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select * '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         cdsPost(DM1.cdsQry3);
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
   begin
      ShowMessage('Nro. de Items no actualizados');
   end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)            + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
  xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'''COBRANZA ''||CNTNODOC CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +''''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          + ' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFEMIS>='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )+' '
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, A.CNTNODOC, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;
// Fin: SPP_201311_COB            : Contabilización de Aplicación de FPD


// Inicio: SPP_201311_COB            : Contabilización de Aplicación de FPD
procedure TFContabilizacion.bbtnFPDRepPrevioClick(Sender: TObject);
begin
   ParametrosAplicaFPD;
   ReporteContabilizaCredito( xCnt311, 'FD', xPeriodo );
end;
// Fin: SPP_201311_COB            : Contabilización de Aplicación de FPD

// Inicio: SPP_201311_COB            : Contabilización de Aplicación de FPD
procedure TFContabilizacion.bbtnFPDTransfClick(Sender: TObject);
begin
   ParametrosAplicaFPD;
   TransferirContabilidad( 'FD', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;
// Fin: SPP_201311_COB            : Contabilización de Aplicación de FPD

// Inicio: SPP_201311_COB            : Contabilización de Aplicación de FPD
procedure TFContabilizacion.bbtnFPDRepContaClick(Sender: TObject);
begin
   ParametrosAplicaFPD;
   ReporteContabilizaCredito( xCnt311r, 'FD', xPeriodo );
end;
// Fin: SPP_201311_COB            : Contabilización de Aplicación de FPD

// Inicio: SPP_201311_COB            : Contabilización de Aplicación de FPD
procedure TFContabilizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
//Inicio COB_201822_HPC  
// Contabilización de pagos por resolver
   DM1.cdsQry26.Close;
   DM1.cdsQry26.Filter:='';
   DM1.cdsQry26.Filtered:=False;
   DM1.cdsQry26.IndexFieldNames:='';
//Fin COB_201822_HPC
end;
// Fin: SPP_201311_COB            : Contabilización de Aplicación de FPD


// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
procedure TFContabilizacion.BitBtn44Click(Sender: TObject);
begin
  bError:=True;
  ParametrosCCI;
  xSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM, CREDID, CRECUOTA, CREMTOCOB, CREAMORT, CREINTERES, CREFLAT, CREMTOEXC, '
       +   'NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0)) DIFERENCIA, '
       +   'CREMTODEV, NVL(MONCOBDESGRAV,0) MONCOBDESGRAV  '
       +'From CRE310 A '
       +'where '+xWhereBusqueda
       +  'and CREESTID<>''13'' and CREESTID<>''99'' and CREESTID<>''04'' '
       +  'and (NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0))<>0 '
       +   'or NVL(CREAMORT,0)<0 or NVL(CREINTERES,0)<0 or NVL(CREFLAT,0)<0)';
  ImprimeInconsistenciaPagosCRE310( xSQL );
  if bError then
     ShowMessage('ok');
end;
// Fin  HPC_201512_COB            : Contabilización de Aplicación de CCI


// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
procedure TFContabilizacion.BitBtn43Click(Sender: TObject);
var
   xSQL, xPeriodo : String;
begin
   ParametrosCCI;


   //Inicio HPC_201514_COB

   {xSQL:='SELECT USUARIO, USERNOM, CREFPAG, SUM(NVL(CREMTOCOB,0)) CREMTOCOB, '
        +   'SUM(NVL(CREAMORT,0)) CREAMORT, SUM(NVL(CREINTERES,0)) CREINTERES, '
        +   'SUM(NVL(CREFLAT,0)) CREFLAT, SUM(NVL(CREMTOEXC,0)) CREMTOEXC, '
        +   'SUM(NVL(moncobdesgrav,0)) moncobdesgrav, '
        +   '''CANCELACIONES CONTRA CUENTA INDIVIDUAL DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310 A, USERTABLE B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99''  '
        + ' and A.USUARIO=B.USERID '
        +'GROUP BY USUARIO,USERNOM,CREFPAG '
        +'ORDER BY USUARIO,USERNOM,CREFPAG ';}

   xSQL:='SELECT ASOCODMOD,ASOAPENOM,CREDID,NROOPE,FOPERAC, '
        +   'SUM(NVL(CREMTOCOB,0)) CREMTOCOB,  '
        +   'SUM(NVL(CREAMORT,0))  CREAMORT,   '
        +   'SUM(NVL(CREINTERES,0)) CREINTERES,'
        +   'SUM(NVL(CREFLAT,0)) CREFLAT,'
        +   'SUM(NVL(CREMTOEXC,0)) CREMTOEXC, '
        +   'SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV, '
        +   '''CANCELACIONES CONTRA CUENTA INDIVIDUAL DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310 A, USERTABLE B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99''  '
        + ' and A.USUARIO=B.USERID '
        +'GROUP BY ASOCODMOD,ASOAPENOM,CREDID,NROOPE,FOPERAC '
        +'ORDER BY ASOAPENOM,FOPERAC';
   //Final HPC_201514_COB

   dm1.cdsQry4.Close;
   dm1.cdsQry4.DataRequest(xSQL);
   dm1.cdsQry4.Open;
  //Inicio HPC_201514_COB
   If DM1.cdsQry4.RecordCount=0 Then
   Begin
     ShowMessage('No existe información para mostrar....');
     close;
     exit;
   End;
   
   pplblUsuario.Caption:= dm1.wUsuario;
 //Final HPC_201514_COB
   ppdb12.DataSource :=nil;
   ppr12.DataPipeline:=nil;
   ppdb12.DataSource :=  DM1.dsQry4;
   ppr12.DataPipeline:=ppdb12;
   Screen.Cursor:=crDefault;
   ppr12.Print;
   ppr12.Stop;
end;
// Fin  HPC_201512_COB            : Contabilización de Aplicación de CCI

// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
procedure TFContabilizacion.BitBtn46Click(Sender: TObject);
var
   cCampoFec, cCampoFPa, xCia, xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xCNTComprob, xAnoMes : String;
   xNumComp : Integer;
   sforPag  : String;
begin
    cCampoFPa  := 'CREFPAG';
   cCampoFec  := 'FREG';
   sforPag    := '99';

   ParametrosCCI;
   Screen.Cursor:=crHourGlass;
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Compañía Principal ('02')
// Total Cobrado
   xSQL1 :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, '
          +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, '
          +  'CNTHABEMN, CNTFEMIS, CNTFVCMTO ) ';

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE COBRANZAS X ONP DEL MES SOBRE CNT311COB
//-----------------------------------------------------------------------------------
// MONTO COBRADO (DEBE)
   xSQL2:='Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(dbseAno.text+dbseMes.text)+', '
         +  '''4840001'' CUENTAID, '
         +  'null CCOSID, '''+wTipoCont2+''' LOTE, '
         +  '''COBR'' CNTSERIE, A.NROOPE,'
         +  '''DEPOSITO EN GARANTIA'' GLOSA, '
         +  'sum(NVL(A.CREMTOCOB,0)) DEBE, 0.00 HABER, A.'+cCampoFPa+', A.'+cCampoFec+' '
         +'From CRE310 A, APO201 H '
         +'where A.FORPAGID='''+sforPag+''' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and CREESTID NOT IN (''13'',''99'')'
         +  ' and CREDOCPAG is not null '
         +  ' and nvl(A.CREMTOCOB,0)>0'
         +  ' and A.ASOID=H.ASOID(+) '
         +'group by  A.NROOPE, A.'+cCampoFPa+', A.'+cCampoFec+' '

// Inicio HPC_201738_COB
// Direccionar los descargos de la cobranza de créditos refinanciados a la cuenta contable crédito consumo-refinanciado
// Amortizaciones no refinanciados
         +'union all '
         +'select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, null CCOSID, '
         +''''+wTipoCont2+''' LOTE, '
         +'''AMOR'' CNTSERIE,  TO_CHAR(A.'+cCampoFec+',''YYYYMMDD'') , ''CREDITO DE CONSUMO'' GLOSA,'
         +'0.00 DEBE, sum(NVL(A.CREAMORT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
         +'from CRE310 A, CRE110 B, APO101 C '
         +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
         + xWhereExcluye
         +'  and CREESTID NOT IN (''13'',''99'')'
         +'  and CREDOCPAG is not null '
         +'  and nvl(A.CREAMORT,0)>0'
         +'  and B.TIPCREID(+)=A.TIPCREID '
         +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
         +'  AND A.CREDID NOT LIKE ''%R%'' '
         +'group by B.CIAID, B.CUENTAID, A.'+cCampoFec+' '
         +'having NVL(B.CIAID,''02'') = ''02'' '
// Amortizaciones refinanciados
         +'union all '
         +'select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +quotedstr(dbseAno.text+dbseMes.text)+', '+quotedstr(xCtaRefi)+' CUENTAID, null CCOSID, '
         +''''+wTipoCont2+''' LOTE, '
         +'''AMOR'' CNTSERIE,  TO_CHAR(A.'+cCampoFec+',''YYYYMMDD'') , ''CREDITO DE CONSUMO'' GLOSA,'
         +'0.00 DEBE, sum(NVL(A.CREAMORT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
         +'from CRE310 A, CRE110 B, APO101 C '
         +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
         + xWhereExcluye
         +'  and CREESTID NOT IN (''13'',''99'')'
         +'  and CREDOCPAG is not null '
         +'  and nvl(A.CREAMORT,0)>0'
         +'  and B.TIPCREID(+)=A.TIPCREID '
         +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
         +'  AND A.CREDID LIKE ''%R%'' '
         +'group by B.CIAID, B.CUENTAID, A.'+cCampoFec+' '
// Fin HPC_201738_COB
         +'having NVL(B.CIAID,''02'') = ''02'' ';
// Excesos
// Inicio HPC_201607_COB            : Cambiar Cuenta contable de Excesos
   xSQL3:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUEEXC,'
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''EXCE'' CNTSERIE, TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''), ''EXCESOS'' GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID, B.CUEEXC, A.'+cCampoFec+', TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD'') '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// FIN   HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +   quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAINT,'
          +   'null CCOSID, '
          +   ''''+wTipoCont2+''' LOTE, '
          +   '''INTE'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''INTERESES POR PRESTAMOS'' GLOSA, '
          +   '0.00 DEBE, sum(nvl(A.CREINTERES,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.CREINTERES,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID, B.CTAINT, A.'+cCampoFec+' ';
// Flat
    xSQL4:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CTAFLAT,'
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''FLAT'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''GASTOS ADMINISTRATIVOS POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREFLAT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.CREFLAT,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID, B.CTAFLAT, A.'+cCampoFec+' '

// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV,'
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''FPD'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FPD POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.MONCOBDESGRAV,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B,  CRE301 C, APO107 T  '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and a.CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          + ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          + ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID, T.CTA_DESGRAV, A.'+cCampoFec+' '


// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''FILI'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FILIALES'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREAMORT,0))+sum(nvl(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CUENTAID, B.CIAID, A.'+cCampoFec+' '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
   xSQL:=xSQL1+xSQL2+xSQL3+xSQL4;

   TRY
     xSQL:=xSQL1+xSQL2;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL3;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL4;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT

   END;


// generando otros datos
  xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X BOL.DEPO')
          +',DOCDES='+quotedstr('Cob.Bole')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID, to_date(CNTFVCMTO), CNTLOTE';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='    +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='  +quotedstr(wTipoCont)
                +'   and CNTANOMM=' +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTFVCMTO='  +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='  +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;

   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''BOLETAS DEPOSITO '' CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;
// Fin  HPC_201512_COB            : Contabilización de Aplicación de CCI

// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
procedure TFContabilizacion.fcShapeBtn26Click(Sender: TObject);
begin
   ParametrosCCI;
   ReporteContabilizaCredito( xCnt311, 'CCI', xPeriodo );
end;
// Fin  HPC_201512_COB            : Contabilización de Aplicación de CCI

// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
procedure TFContabilizacion.BitBtn45Click(Sender: TObject);
begin
   ParametrosCCI;
   TransferirContabilidad( 'CCI', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;
// Fin  HPC_201512_COB            : Contabilización de Aplicación de CCI


// Inicio HPC_201512_COB            : Contabilización de Aplicación de CCI
procedure TFContabilizacion.fcShapeBtn25Click(Sender: TObject);
begin
   ParametrosCCI;
   ReporteContabilizaCredito( xCnt311r, 'CCI', xPeriodo );
end;
// Fin  HPC_201512_COB            : Contabilización de Aplicación de CCI

// Inicio HPC_201523_COB
procedure TFContabilizacion.ParametrosCDO;
begin
   wTipoCont := 'CD';
   wTipoCont2 := 'CDO';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
   xWhereIncluyeLote:=' ';
end;
// Fin HPC_201523_COB


//Inicio HPC_201523_COB
procedure TFContabilizacion.BitBtn47Click(Sender: TObject);
begin
  ParametrosCXC;
  {
   xSQL:='SELECT ASOCODMOD,ASOAPENOM,CREDID,NROOPE,FOPERAC, '
        +   'SUM(NVL(CREMTOCOB,0)) CREMTOCOB,  '
        +   'SUM(NVL(CREAMORT,0))  CREAMORT,   '
        +   'SUM(NVL(CREINTERES,0)) CREINTERES,'
        +   'SUM(NVL(CREFLAT,0)) CREFLAT,'
        +   'SUM(NVL(CREMTOEXC,0)) CREMTOEXC, '
        +   'SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV, '
        +   '''CANCELACIONES POR CUENTAS POR PAGAR (CXC) DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310 A, USERTABLE B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99''  '
        + ' and A.USUARIO=B.USERID '
        +'GROUP BY ASOCODMOD,ASOAPENOM,CREDID,NROOPE,FOPERAC '
        +'ORDER BY ASOAPENOM,FOPERAC';
   }

   //Inicio HPC_201726_COB : Mejoras al Reporte de sustento de CXC
   //se comento query anterior
   {xSQL:='SELECT ''6666666666''ASOCODMOD,''DRE UCAYALI'' ASOAPENOM,'' ''CREDID,NROOPE,FOPERAC,'
        +   'SUM(NVL(CREMTOCOB,0)) CREMTOCOB,  '
        +   'SUM(NVL(CREAMORT,0))  CREAMORT,   '
        +   'SUM(NVL(CREINTERES,0)) CREINTERES,'
        +   'SUM(NVL(CREFLAT,0)) CREFLAT,'
        +   'SUM(NVL(CREMTOEXC,0)) CREMTOEXC, '
        +   'SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV, '
        +   '''CANCELACIONES POR CUENTAS POR PAGAR (CXC) DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310 A, USERTABLE B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99''  '
        + ' and A.USUARIO=B.USERID '
        +'GROUP BY NROOPE,FOPERAC '
        +'ORDER BY ASOAPENOM,FOPERAC';
   }
   xSQL:= 'SELECT B.ASOCODMOD,B.ASOAPENOM,A.CREDID,A.NROOPE,A.FOPERAC,A.CREMTOCOB, '
         +'       A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CREMTOEXC,A.MONCOBDESGRAV,A.PERIODO '
         +'FROM '
         +' ( '
         +'   SELECT '' '' CREDID, '
         +'    A.NROOPE, '
         +'    A.FOPERAC, '
         +'    SUM(NVL(A.CREMTOCOB, 0)) CREMTOCOB, '
         +'    SUM(NVL(A.CREAMORT, 0)) CREAMORT, '
         +'    SUM(NVL(A.CREINTERES, 0)) CREINTERES, '
         +'    SUM(NVL(A.CREFLAT, 0)) CREFLAT, '
         +'    SUM(NVL(A.CREMTOEXC, 0)) CREMTOEXC, '
         +'    SUM(NVL(A.MONCOBDESGRAV, 0)) MONCOBDESGRAV, '
         +'    ''CANCELACIONES POR CUENTAS POR PAGAR (CXC) DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO, '
         +'    ( SELECT C.ASOID '
         +'      FROM   COB_FSC_DEUDA_FSC_CAB C '
         +'      WHERE  C.NROOPECXC = A.NROOPE AND C.FECOPECXC = A.FOPERAC) ASOIDB '
         +'   FROM   CRE310 A, USERTABLE B '
         +'   WHERE '+xWhereBusqueda
         +'   AND    A.CREESTID <> ''13'' '
         +'   AND    A.CREESTID <> ''99'' '
         +'   AND    A.USUARIO = B.USERID '
         +'   GROUP BY A.NROOPE, A.FOPERAC '
         +'   ORDER BY A.FOPERAC '
         +' ) A, APO201 B '
         +'WHERE  A.ASOIDB = B.ASOID ';
   //Fin HPC_201726_COB

   dm1.cdsQry4.Close;
   dm1.cdsQry4.DataRequest(xSQL);
   dm1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount=0 Then
   Begin
     ShowMessage('No existe información para mostrar....');
     //Inicio HPC_201726_COB : Mejoras al Reporte de sustento de CXC
     //close;
     //Fin HPC_201726_COB
     exit;
   End;

   pplblUsuario.Caption:= dm1.wUsuario;
   ppdb12.DataSource :=nil;
   ppr12.DataPipeline:=nil;
   ppdb12.DataSource :=  DM1.dsQry4;
   pprCXC.DataPipeline:=ppdb12;
   Screen.Cursor:=crDefault;
   pprCXC.Print;
   pprCXC.Stop
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.BitBtn50Click(Sender: TObject);
{
485001  FONDO DE CONTINGENCIA		XXXX
485002  FONDO DE CONTINGENCIA		XXXX
485003  FONDO DE CONTINGENCIA                     XXXX

1710102	PRESTAMO						XXXXXXX
7710102	INTERES						XXXXXXX
75601		FLAT							XXXXXXX}

var
   cCampoFec, cCampoFPa, xCia, xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xCNTComprob, xAnoMes : String;
   xNumComp : Integer;
   sforPag  : String;
begin
   cCampoFPa  := 'CREFPAG';
   cCampoFec  := 'FREG';
   sforPag    := '98';

   ParametrosCXC;
   Screen.Cursor:=crHourGlass;
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Compañía Principal ('02')
// Total Cobrado
   xSQL1 :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, '
          +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, '
          +  'CNTHABEMN, CNTFEMIS, CNTFVCMTO ) ';

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE COBRANZAS X ONP DEL MES SOBRE CNT311COB
//-----------------------------------------------------------------------------------
// MONTO COBRADO (DEBE)
   xSQL2:='Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(dbseAno.text+dbseMes.text)+', '
         + 'CASE WHEN J.ASOTIPID=''DO'' THEN ''4850001'' '
         + '     WHEN J.ASOTIPID=''CE'' THEN ''4850002'' '
         + '     WHEN J.ASOTIPID=''CO'' THEN ''4850003'' '
         + ' ELSE  ''4840001''  END CUENTAID, '
         +  'null CCOSID, '''+wTipoCont2+''' LOTE, '
         +  '''COBR'' CNTSERIE, A.NROOPE,'
         +  '''CUENTA X COBRAR'' GLOSA, '
         +  'sum(NVL(A.CREMTOCOB,0)) DEBE, 0.00 HABER, A.'+cCampoFPa+', A.'+cCampoFec+' '
         +'From CRE310 A, APO201 H,CRE301 J '
         +'where A.FORPAGID='''+sforPag+''' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and A.CREESTID NOT IN (''13'',''99'')'
         +  ' and A.CREDOCPAG is not null '
         +  ' and nvl(A.CREMTOCOB,0)>0'
         +  ' and A.ASOID=H.ASOID(+) '
         +  ' and A.ASOID=J.ASOID  and A.CREDID=J.CREDID '
         +'group by  A.NROOPE, A.'+cCampoFPa+', A.'+cCampoFec+',J.ASOTIPID '
// Amortizaciones
         +'union all '
         +'select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, null CCOSID, '
         +''''+wTipoCont2+''' LOTE, '
         +'''AMOR'' CNTSERIE,  TO_CHAR(A.'+cCampoFec+',''YYYYMMDD'') , ''CREDITO DE CONSUMO'' GLOSA,'
         +'0.00 DEBE, sum(NVL(A.CREAMORT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
         +'from CRE310 A, CRE110 B, APO101 C '
         +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
         + xWhereExcluye
         +'  and CREESTID NOT IN (''13'',''99'')'
         +'  and CREDOCPAG is not null '
         +'  and nvl(A.CREAMORT,0)>0'
         +'  and B.TIPCREID(+)=A.TIPCREID '
         +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
         +'group by B.CIAID, B.CUENTAID, A.'+cCampoFec+' '
         +'having NVL(B.CIAID,''02'') = ''02'' ';
// Excesos
// Inicio HPC_201607_COB            : Cambiar Cuenta contable de Excesos
   xSQL3:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUEEXC,'
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''EXCE'' CNTSERIE, TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''), ''EXCESOS'' GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID, B.CUEEXC, A.'+cCampoFec+', TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD'') '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// FIN   HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +   quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAINT,'
          +   'null CCOSID, '
          +   ''''+wTipoCont2+''' LOTE, '
          +   '''INTE'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''INTERESES POR PRESTAMOS'' GLOSA, '
          +   '0.00 DEBE, sum(nvl(A.CREINTERES,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.CREINTERES,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID, B.CTAINT, A.'+cCampoFec+' ';
// Flat
    xSQL4:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CTAFLAT,'
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''FLAT'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''GASTOS ADMINISTRATIVOS POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREFLAT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.CREFLAT,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID, B.CTAFLAT, A.'+cCampoFec+' '
// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV,'
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''FPD'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FPD POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.MONCOBDESGRAV,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B,  CRE301 C, APO107 T  '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and a.CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          + ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          + ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID, T.CTA_DESGRAV, A.'+cCampoFec+' '

// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''FILI'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FILIALES'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREAMORT,0))+sum(nvl(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CUENTAID, B.CIAID, A.'+cCampoFec+' '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
   xSQL:=xSQL1+xSQL2+xSQL3+xSQL4;

   TRY
     xSQL:=xSQL1+xSQL2;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL3;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL4;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT
      ShowMessage('Error al Contabilizar, comuníquese con Sistemas');
      Screen.Cursor:=crDefault;
      exit;
   END;


// generando otros datos
  xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA - CTA X COB')
          +',DOCDES='+quotedstr('Cob.CxC')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID, to_date(CNTFVCMTO), CNTLOTE';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='    +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='  +quotedstr(wTipoCont)
                +'   and CNTANOMM=' +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTFVCMTO='  +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='  +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;

   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''BOLETAS DEPOSITO '' CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');

end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.ParametrosCXC;
begin
   wTipoCont := 'CX';
   wTipoCont2 := 'CXC';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FREG BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
   xWhereIncluyeLote:=' ';

end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.BitBtn49Click(Sender: TObject);
begin
   ParametrosCXC;
   TransferirContabilidad( 'CXC', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.fcShapeBtn28Click(Sender: TObject);
begin
   ParametrosCXC;
   ReporteContabilizaCredito( xCnt311, 'CXC', xPeriodo );
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.fcShapeBtn27Click(Sender: TObject);
begin
   ParametrosCXC;
   ReporteContabilizaCredito( xCnt311r, 'CXC', xPeriodo );
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.BitBtn48Click(Sender: TObject);
begin
  bError:=True;
  ParametrosCXC;
  xSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM, CREDID, CRECUOTA, CREMTOCOB, CREAMORT, CREINTERES, CREFLAT, CREMTOEXC, '
       +   'NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0)) DIFERENCIA, '
       +   'CREMTODEV, NVL(MONCOBDESGRAV,0) MONCOBDESGRAV  '
       +'From CRE310 A '
       +'where '+xWhereBusqueda
       +  'and CREESTID<>''13'' and CREESTID<>''99'' and CREESTID<>''04'' '
       +  'and (NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0))<>0 '
       +   'or NVL(CREAMORT,0)<0 or NVL(CREINTERES,0)<0 or NVL(CREFLAT,0)<0)';
  ImprimeInconsistenciaPagosCRE310( xSQL );
  if bError then
     ShowMessage('ok');
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.BitBtn51Click(Sender: TObject);
begin
 ParametrosCDO;

   xSQL:='SELECT ASOCODMOD,ASOAPENOM,CREDID,NROOPE,FOPERAC, '
        +   'SUM(NVL(CREMTOCOB,0)) CREMTOCOB,  '
        +   'SUM(NVL(CREAMORT,0))  CREAMORT,   '
        +   'SUM(NVL(CREINTERES,0)) CREINTERES,'
        +   'SUM(NVL(CREFLAT,0)) CREFLAT,'
        +   'SUM(NVL(CREMTOEXC,0)) CREMTOEXC, '
        +   'SUM(NVL(MONCOBDESGRAV,0)) MONCOBDESGRAV, '
        +   '''CANCELACIONES POR AJUSTE (CDO) DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310 A, USERTABLE B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99''  '
        + ' and A.USUARIO=B.USERID '
        +'GROUP BY ASOCODMOD,ASOAPENOM,CREDID,NROOPE,FOPERAC '
        +'ORDER BY ASOAPENOM,FOPERAC';
   dm1.cdsQry4.Close;
   dm1.cdsQry4.DataRequest(xSQL);
   dm1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount=0 Then
   Begin
     ShowMessage('No existe información para mostrar....');
     close;
     exit;
   End;

   pplblUsuario.Caption:= dm1.wUsuario;
   ppdb12.DataSource :=nil;
   ppr12.DataPipeline:=nil;
   ppdb12.DataSource :=  DM1.dsQry4;
   ppr12.DataPipeline:=ppdb12;
   Screen.Cursor:=crDefault;
   ppr12.Print;
   ppr12.Stop
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.BitBtn54Click(Sender: TObject);
var
   cCampoFec, cCampoFPa, xCia, xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xCNTComprob, xAnoMes : String;
   xNumComp : Integer;
   sforPag  : String;
begin
   cCampoFPa  := 'CREFPAG';
   cCampoFec  := 'FREG';
   sforPag    := '26';

   ParametrosCDO;
   Screen.Cursor:=crHourGlass;
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Compañía Principal ('02')
// Total Cobrado
   xSQL1 :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, '
          +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, '
          +  'CNTHABEMN, CNTFEMIS, CNTFVCMTO ) ';

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE COBRANZAS X ONP DEL MES SOBRE CNT311COB
//-----------------------------------------------------------------------------------
// MONTO COBRADO (DEBE)
   xSQL2:='Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(dbseAno.text+dbseMes.text)+', '
         +  '''668'' CUENTAID, '
         +  'null CCOSID, '''+wTipoCont2+''' LOTE, '
         +  '''COBR'' CNTSERIE, A.NROOPE,'
         +  '''CANCELACIÓN POR AJUSTE - TIP.PAGOS (CDO)'', '
         +  'sum(NVL(A.CREMTOCOB,0)) DEBE, 0.00 HABER, A.'+cCampoFPa+', A.'+cCampoFec+' '
         +'From CRE310 A, APO201 H '
         +'where A.FORPAGID='''+sforPag+''' '
         +  ' and A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
         +  ' and CREESTID NOT IN (''13'',''99'')'
         +  ' and CREDOCPAG is not null '
         +  ' and nvl(A.CREMTOCOB,0)>0'
         +  ' and A.ASOID=H.ASOID(+) '
         +'group by  A.NROOPE, A.'+cCampoFPa+', A.'+cCampoFec+' '

// Amortizaciones
         +'union all '
         +'select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, null CCOSID, '
         +''''+wTipoCont2+''' LOTE, '
         +'''AMOR'' CNTSERIE,  TO_CHAR(A.'+cCampoFec+',''YYYYMMDD'') , ''CREDITO DE CONSUMO'' GLOSA,'
         +'0.00 DEBE, sum(NVL(A.CREAMORT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
         +'from CRE310 A, CRE110 B, APO101 C '
         +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
         + xWhereExcluye
         +'  and CREESTID NOT IN (''13'',''99'')'
         +'  and CREDOCPAG is not null '
         +'  and nvl(A.CREAMORT,0)>0'
         +'  and B.TIPCREID(+)=A.TIPCREID '
         +'  and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
         +'group by B.CIAID, B.CUENTAID, A.'+cCampoFec+' '
         +'having NVL(B.CIAID,''02'') = ''02'' ';
// Excesos
// Inicio HPC_201607_COB            : Cambiar Cuenta contable de Excesos
   xSQL3:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUEEXC,'
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''EXCE'' CNTSERIE, TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD''), ''EXCESOS'' GLOSA, '
          +'0.00 DEBE, sum(NVL(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID, B.CUEEXC, A.'+cCampoFec+', TO_CHAR(A.'+cCampoFPa+',''YYYYMMDD'') '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// FIN   HPC_201607_COB            : Cambiar Cuenta contable de Excesos
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +   quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +   quotedstr(dbseAno.text+dbseMes.text)+', B.CTAINT,'
          +   'null CCOSID, '
          +   ''''+wTipoCont2+''' LOTE, '
          +   '''INTE'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''INTERESES POR PRESTAMOS'' GLOSA, '
          +   '0.00 DEBE, sum(nvl(A.CREINTERES,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.CREINTERES,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID, B.CTAINT, A.'+cCampoFec+' ';
// Flat
    xSQL4:='select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CTAFLAT,'
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''FLAT'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''GASTOS ADMINISTRATIVOS POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREFLAT,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.CREFLAT,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID, B.CTAFLAT, A.'+cCampoFec+' '

// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV,'
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''FPD'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FPD POR PRESTAMOS'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.MONCOBDESGRAV,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B,  CRE301 C, APO107 T  '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and a.CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          + ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          + ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID, T.CTA_DESGRAV, A.'+cCampoFec+' '

// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+', '
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+', '
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +'null CCOSID, '
          +''''+wTipoCont2+''' LOTE, '
          +'''FILI'' CNTSERIE, TO_CHAR(A.'+cCampoFec+',''YYYYMMDD''), ''FILIALES'' GLOSA, '
          +'0.00 DEBE, sum(nvl(A.CREAMORT,0))+sum(nvl(A.CREMTOEXC,0)) HABER, A.'+cCampoFec+', A.'+cCampoFec+' '
          +'from CRE310 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' AND A.'+cCampoFec+' BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
          +'  and CREESTID NOT IN (''13'',''99'')'
          + xWhereExcluye
          +'  and CREDOCPAG is not null '
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CUENTAID, B.CIAID, A.'+cCampoFec+' '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
   xSQL:=xSQL1+xSQL2+xSQL3+xSQL4;

   TRY
     xSQL:=xSQL1+xSQL2;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL3;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     xSQL:=xSQL1+xSQL4;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT

   END;

// generando otros datos
  xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COB. X AJUSTE (CDO)')
          +',DOCDES='+quotedstr('Cob.AJU')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID, to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID, to_date(CNTFVCMTO), CNTLOTE';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID; CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='    +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='  +quotedstr(wTipoCont)
                +'   and CNTANOMM=' +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTFVCMTO='  +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='  +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;

   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''BOLETAS DEPOSITO '' CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.fcShapeBtn30Click(Sender: TObject);
begin
   ParametrosCDO;
   ReporteContabilizaCredito( xCnt311, 'CDO', xPeriodo );
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.BitBtn53Click(Sender: TObject);
begin
   ParametrosCDO;
   TransferirContabilidad( 'CDO', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.fcShapeBtn29Click(Sender: TObject);
begin
   ParametrosCDO;
   ReporteContabilizaCredito( xCnt311r, 'CDO', xPeriodo );
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFContabilizacion.BitBtn52Click(Sender: TObject);
begin
  bError:=True;
  ParametrosCDO;
  xSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM, CREDID, CRECUOTA, CREMTOCOB, CREAMORT, CREINTERES, CREFLAT, CREMTOEXC, '
       +   'NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0)) DIFERENCIA, '
       +   'CREMTODEV, NVL(MONCOBDESGRAV,0) MONCOBDESGRAV  '
       +'From CRE310 A '
       +'where '+xWhereBusqueda
       +  'and CREESTID<>''13'' and CREESTID<>''99'' and CREESTID<>''04'' '
       +  'and (NVL(CREMTOCOB,0)-(NVL(CREAMORT,0)+NVL(CREINTERES,0)+NVL(CREFLAT,0)+NVL(CREMTOEXC,0)+NVL(MONCOBDESGRAV,0))<>0 '
       +   'or NVL(CREAMORT,0)<0 or NVL(CREINTERES,0)<0 or NVL(CREFLAT,0)<0)';
  ImprimeInconsistenciaPagosCRE310( xSQL );
  if bError then
     ShowMessage('ok');
end;
//Fin HPC_201523_COB

//Inicio HPC_201601_COB
procedure TFContabilizacion.BitBtn55Click(Sender: TObject);
var xsql:string;
begin
   xSql:='SELECT A.UPROID,A.USEID,A.FEC_CRE_COB_FSC FREG,A.ASOID,A.ASOAPENOM,A.NUM_DEU,A.NROOPE,FEC_COB_DEU FOPERAC,SUM(NVL(A.IMP_COB_DEU,0))IMP_COB_DEU,SUM(NVL(A.IMP_EXC_DEU,0))IMP_EXC_DEU,'+
         ' '' '' BANCONOM, MAX(A.CCBCOID) CCBCOID, ' +
         'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM ' +
         'FROM COB_FSC_PAGOS_AL_FSC A, '+
         '     (SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
         '     APO102 C  '+
         'WHERE  A.FORPAGID=''43'' AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') and'+
         '       To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.EST_COB_COD NOT IN (''04'',''13'')  AND '+
         '       A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPROID=C.UPROID(+) ' +
         'GROUP BY A.FEC_CRE_COB_FSC,A.FEC_COB_DEU, A.UPROID, A.USEID, A.ASOID, A.ASOAPENOM, A.NUM_DEU, A.NROOPE '+
         'ORDER BY TO_CHAR(FEC_COB_DEU,''MM/YYYY''), CCBCOID, FEC_COB_DEU';

  DM1.cdsCambios.Close;
  DM1.cdsCambios.DataRequest(xSQL);
  DM1.cdsCambios.Open;
  If DM1.cdsCambios.RecordCount > 0 Then
     Begin
       BDEPPBANCO.DataSource := Dm1.dsCambios;
       ppltitulo.Caption  := 'DEVOLUCIONES AL FONDO SOLIDARIO DE CONTINGENCIA (ONP)';
       ppltitulo2.Caption := 'REGISTRADO DEL: '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
       pplSubtituloSustFSC.Caption := 'DEVOLUCIONES AL FSC POR ONP, FECHA DE REGISTRO DEL:';
       ppRSustFSCBanco.Print;
       ppRSustFSCBanco.Stop;
     End
  Else MessageDlg(' No Existe Información para el periodo seleccionado ', mtError,[mbOk],0);

end;
//Final HPC_201601_COB

//Inicio HPC_201601_COB
procedure TFContabilizacion.BitBtn57Click(Sender: TObject);
VAR XSQL,XSQL1,XSQL2,xCia,wTipoCont2,xCntComprob,cCampoFPa,cCampoFec,xAnoMes:STRING;
     xNumComp:integer;
begin

   Screen.Cursor:=crHourGlass;
   //cCampoFPa  := 'CREFPAG';
   //cCampoFec  := 'FREG';
   xAnoMes    := dbseAno.Text+dbseMes.Text;
   ParametrosDevolucionFondoONP;
   if (xTCambio='') then
   begin
      Screen.Cursor:=crDefault;
      exit;
   end;

// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Total Cobrado
   xSQL1 := 'Insert Into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, CNTFEMIS, CNTFVCMTO,'+
           '                       CCOSID,CNTLOTE, CNTSERIE, CNTNODOC,CNTGLOSA, CNTDEBEMN, CNTHABEMN ) ';

   XSQL2 :='Select ''02'' CIAD,'''+wTipoCont+'''TDIARID,''0000000001''CNTCOMPROB,'''+dbseAno.text+''' CNTANO,'+quotedstr(dbseAno.text+dbseMes.text)+' CNTANOMM,'+
           '       ''4691205'' CUENTAID,FEC_CRE_COB_FSC CNTFEMIS,FOPERAC CNTFVCMTO,'+
           '       NULL CCOSID,''FONP'' CNTLOTE,''COBR'' CNTSERIE,'+
           '       TRIM(NROOPE)||TRIM(M.ASOCODMOD) CNTNODOC,SUBSTR(TRIM(''Dev.FSC ONP ''||'+quotedstr(dbseAno.text+dbseMes.text)+'||''-''||TRIM(F.USENOM)),1,40) GLOSA,'+

           '       SUM(NVL(IMP_COB_DEU,0)) DEBE, 0.00 HABER '+
           'From COB_FSC_PAGOS_AL_FSC A, APO101 F, APO201 M, COB_FSC_DEUDA_FSC_CAB N '+
           'Where A.FORPAGID=''43''  AND FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
           '      and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 '+
           '      and A.NROOPE is not null  '+
           '      and F.USEID=A.USEID(+) and F.UPROID=A.UPROID(+) and F.UPAGOID=A.UPAGOID(+) '+
           '      and A.ASOID=M.ASOID(+) '+
           '      and A.ASOID=N.ASOID(+) AND A.NUM_DEU=N.NUM_DEU(+) '+
           'Group by TRIM(NROOPE)||TRIM(M.ASOCODMOD),FEC_CRE_COB_FSC,FOPERAC, M.ASOAPENOM, N.TIP_ASO_ORIGEN,F.USENOM'+
           ' UNION ALL '+
           'Select ''02'' CIAD,'''+wTipoCont+'''TDIARID,''0000000001''CNTCOMPROB,'''+dbseAno.text+''' CNTANO,'+quotedstr(dbseAno.text+dbseMes.text)+' CNTANOMM,'+
           '       F.CTA_FSC CUENTAID,FEC_CRE_COB_FSC CNTFEMIS,FOPERAC CNTFVCMTO,'+
           '       NULL CCOSID,''FONP'' CNTLOTE,''COBR'' CNTSERIE,'+
           '       TRIM(NROOPE)||TRIM(M.ASOCODMOD) CNTNODOC,SUBSTR(TRIM(M.ASOAPENOM),1,40) GLOSA,'+
           '       0.00 DEBE,SUM(NVL(IMP_COB_DEU,0)) HABER '+
           'From COB_FSC_PAGOS_AL_FSC A, APO107 F, APO201 M,COB_FSC_DEUDA_FSC_CAB N '+
           'Where A.FORPAGID=''43''  AND FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
           '      and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 '+
           '      and A.NROOPE is not null '+
           '      and A.ASOID=N.ASOID(+) AND A.NUM_DEU=N.NUM_DEU(+) '+
           '      and A.ASOID=M.ASOID(+) AND N.TIP_ASO_ORIGEN=F.ASOTIPID(+) '+
           'group by TRIM(NROOPE)||TRIM(M.ASOCODMOD) ,FEC_CRE_COB_FSC,FOPERAC, M.ASOAPENOM, N.TIP_ASO_ORIGEN,F.CTA_FSC ';
   TRY
     xSQL:=xSQL1+xSQL2;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT
     ShowMessage('ERROR AL INSERTAR MOVIMIENTOS PARA LA CONTABILIZACIÓN');
     Screen.Cursor:=crDefault;
     EXIT;
   END;


// generando otros datos
  xSql := 'Update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COB.EN ONP')
          +',DOCDES='+quotedstr('Cob.ONP')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   TRY
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT
    ShowMessage('ERROR AL ACTUALIZAR MOVIMIENTOS(CNT311COB-1) PARA LA CONTABILIZACIÓN');
    Screen.Cursor:=crDefault;
    EXIT;
   END;


// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID,CNTNODOC,to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID,CNTNODOC,to_date(CNTFVCMTO), CNTLOTE';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTNODOC;CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   While not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 60000
      else
         xNumComp := 60000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'Update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +'Where  CIAID='     +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='   +quotedstr(wTipoCont)
                +'   and CNTANOMM='  +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='  +quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTFVCMTO=' +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='   +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         Try
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
           ShowMessage('ERROR AL ACTUALIZAR MOVIMIENTOS (CNT311COB-2) PARA LA CONTABILIZACIÓN');
           Screen.Cursor:=crDefault;
           EXIT;
         End;
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;


// Numeracion de Item por cada Comprobante Generado
   xSQL := 'Update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('No se pudo limpiar el valor de los Items');
      exit;
   end;


   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
     xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
     xNumComp := 1;
     while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
     begin
       DM1.cdsQry3.Edit;
       DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
       xNumComp := xNumComp+1;
       DM1.cdsQry3.Next;
     end;
   end;


   If DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;
   try
   xSQL := 'Update CNT311COB '
          +'set TDIARID=''32'',CNTNODOC=SUBSTR(CNTNODOC,1,10) '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;


// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''COBR.ONP DEV.AL FSC''||CNTNODOC ,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )+' '
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,CNTNODOC, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';
   Try
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
    ShowMessage('Error al insertar en la contabilización (CNT300COB)');
    Screen.Cursor:=crDefault;
    exit;
   end;



// Origen 28
// Total Cobrado
   xSQL1 :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, '
          +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA, CNTDEBEMN, '
          +  'CNTHABEMN,CNTFEMIS, CNTFVCMTO ) ';
// MONTO COBRADO (DEBE)
   XSQL2 :='Select ''02'' CIAD,'''+wTipoCont+'''TDIARID,''0000000001''CNTCOMPROB,'''+dbseAno.text+''' CNTANO,'+quotedstr(dbseAno.text+dbseMes.text)+' CNTANOMM,'+
           'CASE WHEN SUBSTR(TO_CHAR(FEC_CRE_COB_FSC,''YYYYMMDD''),1,6)='''+xAnoMes+''' THEN NVL(E.CTAPRINC,''104010301'') '+
                'WHEN SUBSTR(TO_CHAR(FEC_CRE_COB_FSC,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''4691203'' '+
                'ELSE ''1641401'' END CUENTAID, '+
           ' NULL CCOSID,''FONP'' CNTLOTE,''COBR'' CNTSERIE,'+
           ' A.NROOPE, A.NROOPE GLOSA, '+
           ' SUM(NVL(IMP_COB_DEU,0)) DEBE, 0.00 HABER,FEC_CRE_COB_FSC CNTFEMIS,FOPERAC CNTFVCMTO '+
           'From COB_FSC_PAGOS_AL_FSC A, APO201 M, COB_FSC_DEUDA_FSC_CAB N,TGE106 E,TGE105 F '+
           'Where A.FORPAGID=''43''  AND FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
           '      and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 '+
           '      and A.NROOPE is not null  '+
           '      and E.BANCOID (+) =A.BANCOID and E.CCBCOID (+) =A.CCBCOID and E.CIAID (+) =''02'' '+
           '      and A.BANCOID=F.BANCOID (+) '+
           '      and A.ASOID=M.ASOID(+) '+
           '      and A.ASOID=N.ASOID(+) AND A.NUM_DEU=N.NUM_DEU(+) '+
           'Group by '+
           'CASE WHEN SUBSTR(TO_CHAR(FEC_CRE_COB_FSC,''YYYYMMDD''),1,6)='''+xAnoMes+''' THEN NVL(E.CTAPRINC,''104010301'') '+
                'WHEN SUBSTR(TO_CHAR(FEC_CRE_COB_FSC,''YYYYMMDD''),1,6)<'''+xAnoMes+''' THEN ''4691203'' '+
                'ELSE ''1641401'' END , '+
           'A.NROOPE, A.FEC_CRE_COB_FSC,FEC_CRE_COB_FSC,FOPERAC '+
           'UNION ALL '+
           'Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+','+
           quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+','+
           quotedstr(xAnoMes)+', '+
           '''4691205'' CUENTAID, '+
           'null CCOSID, ''FONP'' LOTE, '+
           '''COBR'' CNTSERIE, A.NROOPE, A.NROOPE GLOSA, '+
           '0.00 DEBE, SUM(NVL(IMP_COB_DEU, 0)) HABER,FEC_CRE_COB_FSC CNTFEMIS,FOPERAC CNTFVCMTO '+
           'From COB_FSC_PAGOS_AL_FSC A, TGE106 E, TGE105 F, APO201 H '+
           'where A.FORPAGID=''43'' '+
           ' and A.FEC_CRE_COB_FSC BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+
           ' and EST_COB_COD NOT IN (''13'',''04'',''99'') and nvl(A.IMP_COB_DEU,0)>0 '+
           ' and NROOPE is not null ' +//and A.BANCOID is not null and A.CCBCOID is not null'+
           ' and E.BANCOID(+) =A.BANCOID and E.CCBCOID(+) =A.CCBCOID and E.CIAID(+) =''02'' '+
           ' and A.BANCOID=F.BANCOID (+)'+
           ' and A.ASOID=H.ASOID(+) '+
           'group by A.NROOPE, A.FEC_CRE_COB_FSC,FEC_CRE_COB_FSC,FOPERAC ';
   TRY
     xSQL:=xSQL1+xSQL2;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT

   END;


// generando otros datos
  xSql := 'Update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COB.EN ONP')
          +',DOCDES='+quotedstr('Cob.ONP')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +'   and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   TRY
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   EXCEPT
    ShowMessage('ERROR AL ACTUALIZAR MOVIMIENTOS ORIGEN 28 (CNT311COB-1) PARA LA CONTABILIZACIÓN');
    Screen.Cursor:=crDefault;
    EXIT;
   END;

// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID,CNTNODOC,to_date(CNTFVCMTO) CNTFVCMTO, CNTLOTE '
          +'from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by CIAID,CNTNODOC,to_date(CNTFVCMTO), CNTLOTE';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTNODOC;CNTFVCMTO; CNTLOTE';
   DM1.cdsQry3.First;

   While not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 60000
      else
         xNumComp := 60000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'Update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +'Where  CIAID='     +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='   +quotedstr(wTipoCont)
                +'   and CNTANOMM='  +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='  +quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTFVCMTO=' +quotedstr(DM1.cdsQry3.FieldByName('CNTFVCMTO').AsString)
                +'   and CNTLOTE='   +quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         Try
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
           ShowMessage('ERROR AL ACTUALIZAR MOVIMIENTOS ORIGEN 28 (CNT311COB-2) PARA LA CONTABILIZACIÓN');
           Screen.Cursor:=crDefault;
           EXIT;
         End;
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;


// Numeracion de Item por cada Comprobante Generado
   xSQL := 'Update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('No se pudo limpiar el valor de los Items');
      exit;
   end;


   xSQL := 'select CIAID, CNTCOMPROB, CNTDH, CUENTAID, CCOSID, CNTREG, CNTFEMIS, CNTNODOC, ROWID '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CNTFEMIS;CNTNODOC;CCOSID;';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
     xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
     xNumComp := 1;
     while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
     begin
       DM1.cdsQry3.Edit;
       DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
       xNumComp := xNumComp+1;
       DM1.cdsQry3.Next;
     end;
   end;


   If DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;
   try
   xSQL := 'Update CNT311COB '
          +'set TDIARID=''28'',CNTNODOC=SUBSTR(CNTNODOC,1,10) '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar Origen 28');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''COBR.ONP DEV.AL FSC''||CNTNODOC ,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('28')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          + ' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          + ' and CNTLOTE like '+quotedstr( wTipoCont+'%' )+' '
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,CNTNODOC, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';
   Try
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
    ShowMessage('Error al insertar en la contabilización Origen 28 (CNT300COB)');
    Screen.Cursor:=crDefault;
    exit;
   end;

   Screen.Cursor:=crDefault;
   ShowMessage('ok');

end;
//Final HPC_201601_COB

//Inicio HPC_201601_COB
procedure TFContabilizacion.ParametrosDevolucionFondoONP;
begin
   wTipoCont := 'FO';
   wTipoCont2:= 'FONP';
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   DatosFecha;
   xWhereBusqueda:=' A.FEC_CRE_COB_FSC BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)+' '
                  +' and A.TIPOCONT='+quotedstr( wTipoCont2 )+' ';
   xWhereIncluyeLote:=' ';
end;
//Final HPC_201601_COB

//Inicio HPC_201601_COB
procedure TFContabilizacion.BitBtn56Click(Sender: TObject);
begin
   ParametrosDevolucionFondoONP;
   TransferirContabilidadONP( 'FONP','32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
end;
//Final HPC_201601_COB

//Inicio HPC_201601_COB
procedure TFContabilizacion.fcShapeBtn31Click(Sender: TObject);
begin
  ParametrosDevolucionFondoONP;
  ReporteContabilizaCredito( xCnt311r, 'FONP', xPeriodo );
end;
//Final HPC_201601_COB

//Inicio HPC_201601_COB
procedure TFContabilizacion.fcShapeBtn32Click(Sender: TObject);
begin
   ParametrosDevolucionFondoONP;;
   ReporteContabilizaCredito( xCnt311, 'FONP', xPeriodo );
end;
//Final HPC_201601_COB


//Inicio HPC_201615_COB
//Se reestructura ubicación de botones
procedure TFContabilizacion.BitBtn58Click(Sender: TObject);
VAR
   xSql,xSql2,xAnoMes,VMES:string ;
   xmes:integer;
begin
   ParametrosExtorno;
   Screen.Cursor:=crHourGlass;

   xSql := 'SELECT  A.FECANULA FOPERAC,'+
           'A.UPROID,'+
           'A.USEID,'+
           'A.ASOID,'+
           'SUBSTR(A.CREDID,9,7) CREDID,'+
           'A.CREDOCPAG,'+
           'TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,'+
           'MIN(A.ASOAPENOM) ASOAPENOM,'+
           'MIN(C.UPRONOM) UPRONOM,'+
           'MIN(B.USENOM) USENOM,'+
           'MIN(B.CCOSID) CCOSID,'+
           'MIN(A.TIPCREID) TIPCREID,'+
           'MIN(D.TIPCREDES) TIPCREDES,'+
           'MIN(A.BANCOID) BANCOID,'+
           'MIN(E.BANCONOM) BANCONOM,'+
           'MAX(A.CCBCOID) CCBCOID,'+
           'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
           'SUM(NVL(A.CREAMORT,0)) CREAMORT,'+
           'SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
           'SUM(NVL(A.CREFLAT,0)) CREFLAT,'+
           'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
           'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '+
           'FROM COB901 A,'+
                '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
                'APO102 C,'+
                'CRE110 D,'+
                'TGE105 E  '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                +' and CREDOCPAG is not null  and '+
                'A.BANCOID is not null  and '+
                'A.CCBCOID is not null  and '+
                'A.UPROID=B.UPROID(+) AND '+
                'A.USEID=B.USEID(+) and '+
                'A.UPROID = C.UPROID (+) and '+
                'A.TIPCREID=D.TIPCREID (+)  and '+
                'A.BANCOID=E.BANCOID (+) '+
         'GROUP BY A.FECANULA, A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG '+
         'ORDER BY TO_CHAR(FECANULA,''MM/YYYY''),CCBCOID,CREDOCPAG ' ;
    xSql2 := 'SELECT TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,A.CCBCOID,MAX(B.BANCONOM) BANCO,SUM(NVL(A.CREMTOCOB,0)) TOTAL '+
             ' FROM COB901 A, TGE105 B '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                  +' and CREDOCPAG is not null  and '+
                  'A.BANCOID is not null  and '+
                  'A.CCBCOID is not null  and '+
                  'A.BANCOID=B.BANCOID(+) '+
             'GROUP BY A.CCBCOID,TO_CHAR(A.FECANULA,''MM/YYYY'') ' ;
  dm1.cdsQry3.Close;
  dm1.cdsQry3.IndexFieldNames:='FOP;CCBCOID';
  dm1.cdsQry3.DataRequest(xSql);
  dm1.cdsQry3.Open;
  DBPBANCOS.DataSource  := DM1.dsQry3;

  dm1.cdsQry4.Close;
  dm1.cdsQry4.DataRequest(xSql2);
  dm1.cdsQry4.Open;
  DBPRESUMEN.DataSource := DM1.dsQry4;
// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
  Screen.Cursor:=crDefault;
// Final HPC_201730_COB
  ppXtitulo2.Caption   := 'EXTORNO DE BOLETAS DE DEPOSITO CONTABILIZADOS EN '+xMesDes+' DEL '+dbseAno.Text;
  ppXsubtitulo2.Caption:= 'BOLETAS DE BANCO FECHA DE OPERACION DEL ' ;
  ppBDEPPBANCO2.Print;
end;
//Final HPC_201615_COB


//Inicio HPC_201615_COB
//Se reestructura ubicación de botones
procedure TFContabilizacion.BitBtn60Click(Sender: TObject);
var
   xCia, xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xCNTComprob,xAnoMes  : String;
   xNumComp : Integer;
begin
   wTipoCont := 'EX';
   wTipoCont2 := 'EXT2';
   xAnoMes :=dbseAno.Text+dbseMes.Text;

   ParametrosExtorno;

   Screen.Cursor:=crHourGlass;
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Compañía Principal ('02')
// Total Cobrado
   xSQL1:='';
   xSQL2:='';
   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, '
          +'                       CCOSID,CNTLOTE, CNTSERIE, CNTNODOC,CNTGLOSA, CNTDEBEMN, CNTHABEMN,CNTFEMIS ) ';

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE COBRANZAS X BOL.DEPOSITO DE MESES ANTERIORES SOBRE CNT311COB
//-----------------------------------------------------------------------------------
// MONTO COBRADO (DEBE)
      xSQL3:=''
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',E.CTAOPEXLIQ,'
          +'null CCOSID, ''EXT2'' LOTE, ''COBR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'0.00 DEBE,  sum(A.CREMTOCOB) HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, TGE106 E '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREMTOCOB,0)>0'
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by CREDOCPAG, TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30), E.CTAOPEXLIQ '
// Amortizaciones
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, ''EXT2'' LOTE, ''AMOR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREAMORT) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
           +'from COB901 A, CRE110 B, APO101 C, TGE106 E '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' '
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREAMORT,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, ''EXT2'' LOTE, ''EXCE'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREMTOEXC) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, APO101 C, TGE106 E '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAINT,'
          +'null CCOSID, ''EXT2'' LOTE, ''INTE'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREINTERES) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, TGE106 E '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREINTERES,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CTAINT,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
// Flat
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAFLAT,'
          +'null CCOSID, ''EXT2'' LOTE, ''FLAT'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREFLAT) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, TGE106 E '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREFLAT,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CTAFLAT,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV,'
          +'null CCOSID,''EXT2'' LOTE,''FPD'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(nvl(A.MONCOBDESGRAV,0)) DEBE,0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, TGE106 E, CRE301 C, APO107 T  '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and a.CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null '
          +'  and A.BANCOID is not null  '
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID  '
          +'  and E.CCBCOID=A.CCBCOID '
          +'  and E.CIAID=''02'' '
          + ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          + ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID,T.CTA_DESGRAV,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '

// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          //+quotedstr(dbseAno.text+dbseMes.text)+',B.FILIAL,'
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +'null CCOSID, ''EXT2'' LOTE, ''FILI'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 a, CRE110 B, TGE106 E '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CUENTAID, B.CIAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
//////////////////////////////////////////////////////////////////////////////////////////////////////
// ASIENTOS DE LAS OTRAS COMPAÑÍAS
//////////////////////////////////////////////////////////////////////////////////////////////////////
// Monto Cobrado
      xSQL4:=''
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAH,'
          +'null CCOSID, ''EXT2'' LOTE, ''COBR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'0.00 DEBE, sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A,CRE110 B, TGE106 E '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,CUENTAH,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' '
// Amortización
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, ''EXT2'' LOTE, ''AMOR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREAMORT) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, APO101 C, TGE106 E '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREAMORT,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' '
// Excesos
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, ''EXT2'' LOTE, ''EXCE'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREMTOEXC) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, APO101 C, TGE106 E '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +'  and CREDOCPAG is not null'
          +'  and A.BANCOID is not null'
          +'  and A.CCBCOID is not null'
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'  and E.BANCOID=A.BANCOID'
          +'  and E.CCBCOID=A.CCBCOID'
          +'  and E.CIAID=''02'' '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';

    DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2+xSQL3);


// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFVCMTO='+quotedstr(xDiaFin)
          +',CNTFCOMP='+quotedstr(xDiaFin)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X BOL.DEPO')
          +',DOCDES='+quotedstr('Cob.Bole')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select B.CIAID,CNTNODOC,CNTGLOSA  '
          +'from CNT311COB B '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by B.CIAID,CNTNODOC,CNTGLOSA ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTNODOC;CNTGLOSA';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='    +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='  +quotedstr(wTipoCont)
                +'   and CNTANOMM=' +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='  +quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString)
                +'   and CNTGLOSA='  +quotedstr(DM1.cdsQry3.FieldByName('CNTGLOSA').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;


// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select * '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''35'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''BOLETAS DEPOSITO ''||substr(A.CNTGLOSA,1,8) CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('35')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,''BOLETAS DEPOSITO ''||substr(A.CNTGLOSA,1,8), '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;
//Final HPC_201615_COB

//Inicio HPC_201615_COB
//Se reestructura ubicación de botones
procedure TFContabilizacion.BitBtn59Click(Sender: TObject);
begin
  wTipoCont2:= 'EXT2';
  wTipoCont := 'EXT2';
  TransferirContabilidad( 'EXT2', '35',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);
end;
//Final HPC_201615_COB

//Inicio HPC_201615_COB
//Se reestructura ubicación de botones
procedure TFContabilizacion.fcShapeBtn34Click(Sender: TObject);
begin
   //Inicio HPC_201728_COB : Mejoras a la Contabilización de Extorno de Boletas de depósito
   ReporteContabilizaCredito( xCnt311, 'EXT2',xPeriodo );
   //Fin HPC_201728_COB
end;
//Final HPC_201615_COB

//Inicio HPC_201615_COB
//Se reestructura ubicación de botones
procedure TFContabilizacion.fcShapeBtn33Click(Sender: TObject);
begin
   //Inicio HPC_201728_COB : Mejoras a la Contabilización de Extorno de Boletas de depósito
   ReporteContabilizaCredito( xCnt311r, 'EXT2',xPeriodo );
   //Fin HPC_201728_COB
end;
//Final HPC_201615_COB

//Inicio HPC_201615_COB
//Reporte sustento de contabilización
procedure TFContabilizacion.BitBtn64Click(Sender: TObject);
VAR
   xSql,xSql2,xAnoMes,VMES:string ;
   xmes:integer;
begin
   ParametrosExtorno;
   Screen.Cursor:=crHourGlass;

   xSql := 'SELECT  A.FECANULA FOPERAC,'+
           'A.UPROID,'+
           'A.USEID,'+
           'A.ASOID,'+
           'SUBSTR(A.CREDID,9,7) CREDID,'+
           'A.CREDOCPAG,'+
           'TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,'+
           'MIN(A.ASOAPENOM) ASOAPENOM,'+
           'MIN(C.UPRONOM) UPRONOM,'+
           'MIN(B.USENOM) USENOM,'+
           'MIN(B.CCOSID) CCOSID,'+
           'MIN(A.TIPCREID) TIPCREID,'+
           'MIN(D.TIPCREDES) TIPCREDES,'+
           'MIN(A.BANCOID) BANCOID,'+
           'MIN(E.BANCONOM) BANCONOM,'+
           'MAX(A.CCBCOID) CCBCOID,'+
           'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
           'SUM(NVL(A.CREAMORT,0)) CREAMORT,'+
           'SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
           'SUM(NVL(A.CREFLAT,0)) CREFLAT,'+
           'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
           'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '+
           'FROM COB901 A,'+
                '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
                'APO102 C,'+
                'CRE110 D,'+
                'TGE105 E  '
          +'where A.FORPAGID=''99'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                +' and CREDOCPAG is not null  and '+
                'A.BANCOID is not null  and '+
                'A.CCBCOID is not null  and '+
                'A.UPROID=B.UPROID(+) AND '+
                'A.USEID=B.USEID(+) and '+
                'A.UPROID = C.UPROID (+) and '+
                'A.TIPCREID=D.TIPCREID (+)  and '+
                'A.BANCOID=E.BANCOID (+) '+
         'GROUP BY A.FECANULA, A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG '+
         'ORDER BY TO_CHAR(FECANULA,''MM/YYYY''),CCBCOID,CREDOCPAG ' ;

    xSql2 := 'SELECT TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,A.CCBCOID,MAX(B.BANCONOM) BANCO,SUM(NVL(A.CREMTOCOB,0)) TOTAL '+
             ' FROM COB901 A, TGE105 B '
          +'where A.FORPAGID=''99'' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                  +' and CREDOCPAG is not null  and '+
                  'A.BANCOID is not null  and '+
                  'A.CCBCOID is not null  and '+
                  'A.BANCOID=B.BANCOID(+) '+
             'GROUP BY A.CCBCOID,TO_CHAR(A.FECANULA,''MM/YYYY'') ' ;

  dm1.cdsQry3.Close;
  dm1.cdsQry3.IndexFieldNames:='FOP;CCBCOID';
  dm1.cdsQry3.DataRequest(xSql);
  dm1.cdsQry3.Open;
  DBPBANCOS.DataSource  := DM1.dsQry3;

  If dm1.cdsQry3.RecordCount=0 Then
  Begin
   ShowMessage('No existe información para contabilizar');
   Screen.Cursor:=crDefault;
   exit;
  End;

  dm1.cdsQry4.Close;
  dm1.cdsQry4.DataRequest(xSql2);
  dm1.cdsQry4.Open;
  DBPRESUMEN.DataSource := DM1.dsQry4;
  Screen.Cursor:=crDefault;
  
  ppXtitulo2.Caption   := 'EXTORNO DE APLICACIONES DE CCI CONTABILIZADOS EN '+xMesDes+' DEL '+dbseAno.Text;
  ppXsubtitulo2.Caption:= 'APLICACIONES DE CCI FECHA DE OPERACIÓN DEL ' ;
  ppBDEPPBANCO2.Print;
end;
//Final HPC_201615_COB

//Inicio HPC_201615_COB
//Contabilización de extorno de aplicaciones CCI
procedure TFContabilizacion.BitBtn66Click(Sender: TObject);
var
   xCia, xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xCNTComprob,xAnoMes,cCampoFPa,cCampoFec,sforPag : String;
   xNumComp : Integer;
begin
   xAnoMes :=dbseAno.Text+dbseMes.Text;
   cCampoFPa  := 'CREFPAG';
   cCampoFec  := 'FREG';
   sforPag    := '99';
   ParametrosExtornoCCI;

   Screen.Cursor:=crHourGlass;
// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE like '+quotedstr( wTipoCont2+'%' );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Compañía Principal ('02')
// Total Cobrado
   xSQL1:='';
   xSQL2:='';
   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, '
          +'                       CCOSID,CNTLOTE, CNTSERIE, CNTNODOC,CNTGLOSA, CNTDEBEMN, CNTHABEMN,CNTFEMIS ) ';

//-----------------------------------------------------------------------------------
//-- SE INSERTA LOS MOVIMIENTOS DE COBRANZAS X BOL.DEPOSITO DE MESES ANTERIORES SOBRE CNT311COB
//-----------------------------------------------------------------------------------
// MONTO COBRADO (DEBE)
   xSQL3:='Select '+quotedstr('02')+', '+quotedstr(wTipoCont)+', '
         +  quotedstr('0000000001')+', '+quotedstr(dbseAno.text)+', '
         +  quotedstr(dbseAno.text+dbseMes.text)+', '
         +  '''4840001'' CUENTAID, '
         +  'null CCOSID, '''+wTipoCont2+''' LOTE, '
         +  '''COBR'' CNTSERIE, A.CREDOCPAG,'
         +  'TO_CHAR(A.FREG,''YYYYMMDD'')||''-DEPOSITO EN GARANTIA'' GLOSA, '
         +  '0.00 DEBE, sum(NVL(A.CREMTOCOB,0)) HABER, TO_DATE(MAX(A.FECANULA))  FOPERAC '
         +'From COB901 A, APO201 H '
         +'Where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
         +  ' and CREESTID=''04'' '
         +  ' and CREDOCPAG is not null '
         +  ' and nvl(A.CREMTOCOB,0)>0'
         +  ' and A.ASOID=H.ASOID(+) '
         +'Group by  A.NROOPE, A.'+cCampoFPa+',TO_CHAR(A.FREG, ''YYYYMMDD'')||''-DEPOSITO EN GARANTIA'', A.CREDOCPAG '
// Amortizaciones
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''AMOR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREAMORT) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
           +'from COB901 A, CRE110 B, APO101 C '
          +'where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' '
          +'  and CREDOCPAG is not null'
          +'  and nvl(A.CREAMORT,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE, ''EXCE'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREMTOEXC) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, APO101 C '
          +'where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null'
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAINT,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''INTE'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREINTERES) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null'
          +'  and nvl(A.CREINTERES,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID,B.CTAINT,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
// Flat
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAFLAT,'
          +'null CCOSID, '''+wTipoCont2+'''  LOTE, ''FLAT'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREFLAT) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null'
          +'  and nvl(A.CREFLAT,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CIAID,B.CTAFLAT,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', T.CTA_DESGRAV,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE,''FPD'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(nvl(A.MONCOBDESGRAV,0)) DEBE,0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, CRE301 C, APO107 T  '
          +'where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and a.CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null '
          +'  and nvl(A.MONCOBDESGRAV,0)>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          + ' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          + ' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by B.CIAID,T.CTA_DESGRAV,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '

// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+', B.CUENTAID, '
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''FILI'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 a, CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +'  and CREDOCPAG is not null'
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'group by B.CUENTAID, B.CIAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
//////////////////////////////////////////////////////////////////////////////////////////////////////
// ASIENTOS DE LAS OTRAS COMPAÑÍAS
//////////////////////////////////////////////////////////////////////////////////////////////////////
// Monto Cobrado
      xSQL4:=''
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAH,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE, ''COBR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'0.00 DEBE, sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A,CRE110 B '
          +'where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +'  and CREDOCPAG is not null'
          +'  and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
          +'  and B.TIPCREID(+)=A.TIPCREID '
            +'group by B.CIAID,CUENTAH,CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' '
// Amortización
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE, ''AMOR'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREAMORT) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, APO101 C '
          +'where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +'  and CREDOCPAG is not null'
          +'  and nvl(A.CREAMORT,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
           +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' '
// Excesos
          +'union all '
          +'select B.CIAID,'+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE, ''EXCE'' CNTSERIE, A.CREDOCPAG,'
          +'TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) GLOSA,'
          +'sum(A.CREMTOEXC) DEBE, 0.00 HABER, '
          +'TO_DATE(MAX(A.FECANULA)) FOPERAC '
          +'from COB901 A, CRE110 B, APO101 C '
          +'where A.FORPAGID='''+sforPag+''' '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +'  and CREDOCPAG is not null'
          +'  and nvl(A.CREMTOEXC,0)>0'
          +'  and B.TIPCREID(+)=A.TIPCREID '
          +'  and C.USEID(+)=A.USEID '
          +'  and C.UPAGOID(+)=A.UPAGOID '
          +'  and C.UPROID(+)=A.UPROID '
          +'group by B.CIAID,B.CUENTAID, CREDOCPAG,TO_CHAR(A.FREG,''YYYYMMDD'')||''-''||SUBSTR(A.ASOAPENOM,1,30) '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';

    DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2+xSQL3);


// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFVCMTO='+quotedstr(xDiaFin)
          +',CNTFCOMP='+quotedstr(xDiaFin)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')
          +',CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=SYSDATE'
          +',CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)
          +',CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)
          +',CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)
          +',CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)
          +',CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('EXTORNO CCI')
          +',DOCDES='+quotedstr('Ext.CCI')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2)'
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2)'
          +',CNTTS='+quotedstr('OV')
          +',CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


// Actualizacion de Numero de Comprobante
   xSQL := 'select B.CIAID,CNTNODOC '
          +'from CNT311COB B '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTFVCMTO>='+quotedstr( dtpFecIni.Text )+' and CNTFVCMTO<='+quotedstr( dtpFecFin.Text )
          +' group by B.CIAID,CNTNODOC ';

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTNODOC';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 30000
      else
         xNumComp := 30000;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='    +quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='  +quotedstr(wTipoCont)
                +'   and CNTANOMM=' +quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTNODOC='  +quotedstr(DM1.cdsQry3.FieldByName('CNTNODOC').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;


// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select * '
          +'from CNT311COB '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;

   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
      begin
        ShowMessage('Nro. de Items no actualizados');
      end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +' ''EXTORNO CCI ''||substr(A.CNTGLOSA,1,8) CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CNTLOTE='+quotedstr('CCIE')
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,''EXTORNO CCI ''||substr(A.CNTGLOSA,1,8), '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES '
          +'order by A.CIAID,A.CNTCOMPROB ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;
//Final HPC_201615_COB


//Inicial HPC_201615_COB
procedure TFContabilizacion.ParametrosExtornoCCI;
begin
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   wTipoCont := 'CC';
   wTipoCont2 := 'CCIE';
   DatosFecha;
   xWhereBusqueda:=' A.CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)+' '
                  +' and A.TIPOCONT LIKE '+quotedstr( wTipoCont2+'%')+' ';
   xWhereIncluyeLote:=' ';
end;
//Final HPC_201615_COB


//Inicio HPC_201615_COB
//Listado de Contabilización de extorno de aplicaciones
procedure TFContabilizacion.fcShapeBtn38Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311, 'CCIE',xPeriodo );
end;
//Final HPC_201615_COB

//Inicio HPC_201615_COB
//Transferencia de contabilización de extorno de aplicaciones de CCI
procedure TFContabilizacion.BitBtn65Click(Sender: TObject);
begin
  wTipoCont2:= 'CCIE';
  wTipoCont := 'CCIE';
  TransferirContabilidad(wTipoCont2,'32',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);
end;
//Final HPC_201615_COB

//Inicio HPC_201615_COB
///Reporte de contabilización de extorno de aplicacion CCI
procedure TFContabilizacion.fcShapeBtn37Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311r,'CCIE',xPeriodo );
end;
//Final HPC_201615_COB

//Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
procedure TFContabilizacion.BitBtn15Click(Sender: TObject);
VAR
   xSql,xSql2,xAnoMes,VMES:string ;
   xmes:integer;
begin
   ParametrosExtorno;
   Screen.Cursor:=crHourGlass;

   xSql := 'SELECT  A.FECANULA FOPERAC,'+
           'A.UPROID,'+
           'A.USEID,'+
           'A.ASOID,'+
           'SUBSTR(A.CREDID,9,7) CREDID,'+
           'A.CREDOCPAG,'+
           'TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,'+
           'MIN(A.ASOAPENOM) ASOAPENOM,'+
           'MIN(C.UPRONOM) UPRONOM,'+
           'MIN(B.USENOM) USENOM,'+
           'MIN(B.CCOSID) CCOSID,'+
           'MIN(A.TIPCREID) TIPCREID,'+
           'MIN(D.TIPCREDES) TIPCREDES,'+
           'MIN(A.BANCOID) BANCOID,'+
           'MIN(E.BANCONOM) BANCONOM,'+
           'MAX(A.CCBCOID) CCBCOID,'+
           'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
           'SUM(NVL(A.CREAMORT,0)) CREAMORT,'+
           'SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
           'SUM(NVL(A.CREFLAT,0)) CREFLAT,'+
           'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
           'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '+
           'FROM COB901 A,'+
                '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
                'APO102 C,'+
                'CRE110 D,'+
                'TGE105 E  '
          +'where A.FORPAGID in (''01'',''09'',''22'') '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                +' and A.CREDOCPAG is not null  and '+
                'A.UPROID=B.UPROID(+) AND '+
                'A.USEID=B.USEID(+) and '+
                'A.UPROID = C.UPROID (+) and '+
                'A.TIPCREID=D.TIPCREID (+)  and '+
                'A.BANCOID=E.BANCOID (+) '+
         'GROUP BY A.FECANULA, A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG '+
         'ORDER BY TO_CHAR(FECANULA,''MM/YYYY''),CCBCOID,CREDOCPAG ' ;

    xSql2 := 'SELECT TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,A.CCBCOID,MAX(B.BANCONOM) BANCO,SUM(NVL(A.CREMTOCOB,0)) TOTAL '+
             ' FROM COB901 A, TGE105 B '
          +'where A.FORPAGID in (''01'',''09'',''22'') '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                  +' and CREDOCPAG is not null  and '+
              //    'A.BANCOID is not null  and '+
              //    'A.CCBCOID is not null  and '+
                  'A.BANCOID=B.BANCOID(+) '+
             'GROUP BY A.CCBCOID,TO_CHAR(A.FECANULA,''MM/YYYY'') ' ;

  dm1.cdsQry3.Close;
  dm1.cdsQry3.IndexFieldNames:='FOP;CCBCOID';
  dm1.cdsQry3.DataRequest(xSql);
  dm1.cdsQry3.Open;
  DBPBANCOS.DataSource  := DM1.dsQry3;

  If dm1.cdsQry3.RecordCount=0 Then
  Begin
   ShowMessage('No existe información para contabilizar');
   Screen.Cursor:=crDefault;
   exit;
  End;

  dm1.cdsQry4.Close;
  dm1.cdsQry4.DataRequest(xSql2);
  dm1.cdsQry4.Open;
  DBPRESUMEN.DataSource := DM1.dsQry4;
  Screen.Cursor:=crDefault;
  
  ppXtitulo2.Caption   := 'EXTORNO DE PAGO PLANILLAS CONTABILIZADOS EN '+xMesDes+' DEL '+dbseAno.Text;
  ppXsubtitulo2.Caption:= 'PAGO PLANILLAS FECHA DE OPERACIÓN DEL ' ;
  ppLUsuario.Caption := dm1.wUsuario;
  ppBDEPPBANCO2.Print;
end;
//Fin HPC_201723_COB

//Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
procedure TFContabilizacion.BitBtn17Click(Sender: TObject);
var
   xCia, xSQL, xSQL2,xSQL3, xCNTComprob  : String;
   xNumComp : Integer;
begin
   wTipoCont := 'E1';
   wTipoCont2 := 'EXT1';
   ParametrosExtornoPlanilla;
   Screen.Cursor:=crHourGlass;

// Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where TDIARID=''32'''
          +' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE ='+quotedstr( wTipoCont2 );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where TDIARID=''32'''
          +' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE ='+quotedstr( wTipoCont2 );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Compañía Principal ('02')
// Total Cobrado
   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, CNTFEMIS, CNTFVCMTO,'
          +'                       CCOSID,CNTLOTE, CNTSERIE, CNTNODOC,CNTGLOSA, CNTDEBEMN, CNTHABEMN ) '

// MONTO COBRADO (DEBE)
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTACOBD, A.FECANULA, A.CREFPAG, '
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''COBR'' CNTSERIE, A.NROOPE,'
          //+quotedstr('EXT-PLA: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'A.UPROID GLOSA,'
          +'0.00 DEBE, sum(A.CREMTOCOB) HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''01'',''09'',''22'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and nvl(A.CREMTOCOB,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CTACOBD, A.FECANULA, A.CREFPAG ';

 xSQL2 :=
// Amortizaciones
          'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID, A.FECANULA, A.CREFPAG,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE, ''AMOR'' CNTSERIE, A.NROOPE,'
          //+quotedstr('AMORT: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'A.UPROID GLOSA,'
          +'sum(A.CREAMORT) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''01'',''09'',''22'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +' and nvl(A.CREAMORT,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CUENTAID,B.CIAID, A.FECANULA, A.CREFPAG '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUEEXC, A.FECANULA, A.CREFPAG,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE, ''EXCE'' CNTSERIE, A.NROOPE,'
          //+quotedstr('EXCESOS: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'A.UPROID GLOSA,'
          +'sum(nvl(A.CREMTOEXC,0)) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C  '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''01'',''09'',''22'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +' and nvl(A.CREMTOEXC,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CUEEXC,B.CIAID, A.FECANULA, A.CREFPAG '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAINT, A.FECANULA, A.CREFPAG,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''INTE'' CNTSERIE, A.NROOPE,'
          //+quotedstr('INTERES: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'A.UPROID GLOSA,'
          +'sum(A.CREINTERES) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''01'',''09'',''22'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and nvl(A.CREINTERES,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CTAINT,B.CIAID, A.FECANULA, A.CREFPAG ';
xSQL3:=
// Flat
          'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAFLAT, A.FECANULA, A.CREFPAG,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''FLAT'' CNTSERIE, A.NROOPE,'
          //+quotedstr('FLAT: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'A.UPROID GLOSA,'
          +'sum(A.CREFLAT) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''01'',''09'',''22'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and nvl(A.CREFLAT,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CTAFLAT,B.CIAID, A.FECANULA, A.CREFPAG '

// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',T.CTA_DESGRAV, A.FECANULA, A.CREFPAG,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''FPD'' CNTSERIE, A.NROOPE,'
          //+quotedstr('FPD: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'A.UPROID GLOSA,'
          +'sum(A.MONCOBDESGRAV) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B, CRE301 C, APO107 T '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''01'',''09'',''22'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and nvl(A.MONCOBDESGRAV,0)>0 '
          +' and A.ASOID=C.ASOID(+) AND A.CREDID=C.CREDID(+) '
          +' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by A.UPROID,A.NROOPE,T.CTA_DESGRAV,B.CIAID, A.FECANULA, A.CREFPAG '
//Fin: DPP_201214_COB

// Otras Compañías (166xxxxx)
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID, A.FECANULA, A.CREFPAG,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''OTRA'' CNTSERIE, A.NROOPE,'
          //+quotedstr('OTRAS CIAS: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'A.UPROID GLOSA,'
          +'sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' a, CRE110'+cLink+' B  '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''01'',''09'',''22'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
         +'group by A.UPROID, A.NROOPE, B.CUENTAID, B.CIAID, A.FECANULA, A.CREFPAG '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2+xSQL3);

// generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTFEMIS = TRUNC(CNTFEMIS,''DD''), CNTFVCMTO = TRUNC(CNTFVCMTO,''DD'')'
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')+', CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=TRUNC(SYSDATE,''DD''), CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)     +', CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)   +', CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)      +', CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)+', CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('EXTORNO PLANILLA')
          +',DOCDES='+quotedstr('Ext.Plan')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2) '
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2) '
          +',CNTTS='+quotedstr('OV')+', CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'update CNT311COB A '
          +'set A.CNTGLOSA=(select B.UPROABR from APO102 B '
          +'                where B.UPROID=A.CNTGLOSA) '
          +' where A.TDIARID='+quotedstr(wTipoCont)
          +'   and A.CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'update CNT311COB A '
          +'set A.CNTGLOSA= A.CNTGLOSA||'+'-'+quotedstr(dbseAno.text+dbseMes.text)
          +' where A.TDIARID='+quotedstr(wTipoCont)
          +'   and A.CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID,CNTLOTE from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' group by CIAID,CNTLOTE ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTLOTE';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 20014
      else
         xNumComp := 20014;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Actualiza Lote como identificador de Planilla
   xSQL := 'update CNT311COB '
          +'set CNTLOTE='+quotedstr(wTipoCont2)+' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select a.*, rowid '
          +'from CNT311COB a '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         cdsPost(DM1.cdsQry3);
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
   begin
      ShowMessage('Nro. de Items no actualizados');
   end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;


// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'''EXT-PLA:'+dbseAno.text+dbseMes.text + ''' CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +''''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTLOTE ='+quotedstr( wTipoCont2 )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,''EXT-PLA:'+dbseAno.text+dbseMes.text + ''','
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;
//Fin HPC_201723_COB

//Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
procedure TFContabilizacion.BitBtn16Click(Sender: TObject);
begin
  wTipoCont2:= 'EXT1';
  wTipoCont := 'EXT1';
  TransferirContabilidad(wTipoCont2,'32',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);
end;
//Fin HPC_201723_COB

//Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
procedure TFContabilizacion.fcShapeBtn14Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311, 'EXT1',xPeriodo );
end;
//Fin HPC_201723_COB

//Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
procedure TFContabilizacion.fcShapeBtn13Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311r,'EXT1',xPeriodo );
end;
//Fin HPC_201723_COB

//Inicio HPC_201723_COB: Contabilización de Extorno de Planillas
procedure TFContabilizacion.ParametrosExtornoPlanilla;
begin
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   wTipoCont := 'E1';
   wTipoCont2 := 'EXT1';
   DatosFecha;
   xWhereBusqueda:=' TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
                  +' and A.TIPOCONT=''PLA'' ';
    xWhereIncluyeLote:=' ';
end;
//Fin HPC_201723_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacion.btnExcelPlaClick(Sender: TObject);
var xsql:string;
begin
     xSql:='SELECT  TO_CHAR(A.FREG,''YYYYMM'') PERIODO, A.FREG FEC_REGISTRO,'+
        'CASE  WHEN A.FORPAGABR=''PLA'' THEN ''PLANILLA MINISTERIAL'' '+
        '      WHEN A.FORPAGABR=''REG'' THEN ''PLANILLA REGIONAL'' '+
        '      WHEN A.FORPAGABR=''CEF'' THEN ''ESCUELA FISCALIZADA'' END AS TIPO_PLA, '+
        'A.UPROID UPRO,  A.UPAGOID UPAG, A.USEID UGEL, A.ASOID, SUBSTR(A.CREDID,9,7) CREDID, A.CREDOCPAG, '+
        'A.CREDOCPAG, A.NROOPE NUM_OPE,  MAX(A.CREANO||''-''||A.CREMES) PERCUO,'+
        'A.ASOCODMOD CODMODULAR, MIN(A.ASOAPENOM) ASOAPENOM,'+
        'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM,'+
        'MIN(B.CCOSID) CCOSID,'+
        'MIN(A.TIPCREID) TIPCREID, MIN(D.TIPCREDES) TIPCREDES, '+
        'MIN(nvl(A.BANCOID,''SIN VALOR'')) BANCOID, MIN(NVL(E.BANCONOM,''SIN VALOR'')) BANCONOM,'+
        'MAX(NVL(A.CCBCOID,''SIN VALOR'')) CCBCOID, MIN(A.CREFPAG) FOPERAC,'+
        'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
        'SUM(NVL(A.CREAMORT,0)) CREAMORT, SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
        'SUM(NVL(A.CREFLAT,0)) CREFLAT, SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC, SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV '+
        'FROM CRE310'+cLink+' A, '+
        '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101'+cLink+' GROUP BY UPROID,USEID) B, '+
        'APO102'+cLink+' C, CRE110'+cLink+' D, TGE105'+cLink+' E '
        +'where '+xWhereBusqueda
        +  ' and not CREESTID in (''13'',''04'',''99'') '
        +  ' and A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) and A.UPROID = C.UPROID (+) '
        +  ' and A.TIPCREID=D.TIPCREID(+) and '+
        'A.BANCOID=E.BANCOID (+) and '+
        'A.CIAID(+)=''02'' '+
   'GROUP BY forpagabr,TO_CHAR(A.FREG,''YYYYMM''),A.FREG,A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG ,A.ASOCODMOD,A.NROOPE, A.ASOCODMOD,A.UPROID,A.UPAGOID,A.USEID,A.NROOPE '+
   'ORDER BY forpagabr,TO_CHAR(A.FREG,''YYYYMM''),A.UPROID,A.USEID,A.CREDOCPAG ';

    dm1.cdsQry1.Close;
    dm1.cdsQry1.DataRequest(xSql);
    dm1.cdsQry1.Open;

    If DM1.cdsQry1.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsQry1;
    xArchivo:='ReporteSustentoPlanillas';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacion.btnExcelCuoXBancoClick(Sender: TObject);
var xsql:string;
begin
    xSql:='SELECT A.CREFPAG FOPERAC, TO_CHAR(MIN(A.CREFPAG), ''YYYYMM'') PER_OPERAC, '
        +'A.FREG FEC_REGISTRO, A.UPROID, A.UPAGOID, A.USEID UGEL, A.ASOCODMOD, A.ASOID, '
        +'A.CREDID CREDID, F.CREANO||F.CREMES PER_CUOTA, A.CREDOCPAG, MIN(A.ASOAPENOM) ASOAPENOM, '
        +'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM, MIN(B.CCOSID) CCOSID, MIN(A.TIPCREID) TIPCREID, '
        +'MIN(D.TIPCREDES) TIPCREDES, MIN(A.BANCOID) BANCOID, MIN(E.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, '
        +'SUM(NVL(A.CREMTOCOB, 0)) CREMTOCOB, SUM(NVL(A.CREAMORT, 0)) CREAMORT, SUM(NVL(A.CREINTERES, 0)) CREINTERES, '
        +'SUM(NVL(A.CREFLAT, 0)) CREFLAT, SUM(NVL(A.CREMTOEXC, 0)) CREMTOEXC, SUM(NVL(A.MONCOBDESGRAV, 0)) MONCOBDESGRAV '
        +'FROM CRE310'+cLink+' A, '
        +   '(SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'
        +   'APO102 C, CRE110 D, TGE105 E, CRE302 F  '
        +'where '+xWhereBusqueda
        + ' and A.CREDOCPAG is not null '
        + ' and not A.CREESTID in (''13'') '
        + ' and A.BANCOID is not null and A.CCBCOID is not null '
        + ' and A.UPROID=B.UPROID(+) and A.USEID=B.USEID(+) and A.UPROID=C.UPROID(+) '
        + ' and A.TIPCREID=D.TIPCREID(+) '
        + ' and A.BANCOID=E.BANCOID(+) and A.CIAID=''02'' '
        + ' and F.CREDID = A.CREDID and A.ASOID = F.ASOID and A.CRECUOTA = F.CRECUOTA '
        +'GROUP BY A.CREFPAG, A.UPROID, A.USEID, A.ASOID, A.CREDID, A.CREDOCPAG,A.FREG,A.ASOCODMOD,A.UPAGOID,F.CREANO,F.CREMES,A.CCBCOID, A.CREDOCPAG '
        +'ORDER BY TO_CHAR(A.CREFPAG, ''MM/YYYY''), A.CCBCOID, A.CREDOCPAG';
    dm1.cdsQry3.Close;
    dm1.cdsQry3.IndexFieldNames:='PER_OPERAC;CCBCOID';
    dm1.cdsQry3.DataRequest(xSql);
    dm1.cdsQry3.Open;

    If DM1.cdsQry3.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;
    dbgExcel.DataSource := DM1.dsQry3;
    xArchivo:='ReporteSustentoCuotasPorBanco';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacion.btnExcelCuoEfecClick(Sender: TObject);
var xsql:string;
begin
    xSQL:='SELECT A.FREG FEC_REGISTRO,A.USUARIO,A.ASOCODMOD,A.ASOAPENOM,MIN(A.TIPCREID) TIPCREID,MIN(A.BANCOID) BANCOID, '
        +' MAX(A.CCBCOID) CCBCOID,A.CREDID CREDID,A.NROOPE,A.FOPERAC,F.CREANO||F.CREMES PER_CUOTA,A.UPROID,A.UPAGOID,A.USEID UGEL, '
        +' B.USERNOM, A.CREFPAG, SUM(NVL(A.CREMTOCOB, 0)) CREMTOCOB, SUM(NVL(A.CREAMORT, 0)) CREAMORT, SUM(NVL(A.CREINTERES, 0)) CREINTERES, '
        +' SUM(NVL(A.CREFLAT, 0)) CREFLAT, SUM(NVL(A.CREMTOEXC, 0)) CREMTOEXC, SUM(NVL(A.MONCOBDESGRAV, 0)) MONCOBDESGRAV,'
        +   '''COBRANZAS EN EFECTIVO DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310'+cLink+' A, USERTABLE B, CRE302 F '
        +'Where '+xWhereBusqueda
        + ' and A.CREESTID<>''13'' AND A.CREESTID<>''99'' AND A.CREESTID<>''04'' '
        + ' and A.USUARIO=B.USERID(+) and F.CREDID = A.CREDID and A.ASOID = F.ASOID and A.CRECUOTA = F.CRECUOTA'
        +' GROUP BY A.USUARIO, B.USERNOM, A.CREFPAG ,A.FREG,A.ASOCODMOD, A.ASOAPENOM,A.TIPCREID,A.BANCOID,A.CREDID,F.CREANO,F.CREMES,A.UPROID, '
        +' A.UPAGOID,A.USEID,A.CCBCOID,A.NROOPE,A.FOPERAC '
        +'ORDER BY A.USUARIO, B.USERNOM, A.CREFPAG ';

    dm1.cdsQry4.Close;
    dm1.cdsQry4.DataRequest(xSQL);
    dm1.cdsQry4.Open;

    If DM1.cdsQry4.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsQry4;
    xArchivo:='ReporteSustentoCuotasEfectivo';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacion.btnExcelDevoBancoClick(Sender: TObject);
var xsql:string;
begin
    xSql:='SELECT A.UPROID,A.UPAGOID,A.USEID UGEL,A.FEC_CRE_COB_FSC FREG,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.NUM_DEU,A.NROOPE,FEC_COB_DEU FOPERAC,SUM(NVL(A.IMP_COB_DEU,0))IMP_COB_DEU,SUM(NVL(A.IMP_EXC_DEU,0))IMP_EXC_DEU,'+
         'MIN(D.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, ' +
         'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM ' +
         'FROM COB_FSC_PAGOS_AL_FSC A, '+
         '     (SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
         '     APO102 C, TGE105 D  '+
         'WHERE  A.FORPAGID=''03'' AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') and'+
         '       To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.EST_COB_COD NOT IN (''04'',''13'')  AND '+
         '       A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPROID=C.UPROID(+) AND ' +
         '       A.BANCOID=D.BANCOID(+)   '+
         'GROUP BY A.FEC_CRE_COB_FSC,A.FEC_COB_DEU, A.UPROID, A.USEID, A.ASOID, A.ASOAPENOM, A.NUM_DEU, A.NROOPE,A.ASOCODMOD,A.UPAGOID '+
         'ORDER BY TO_CHAR(FEC_COB_DEU,''MM/YYYY''), CCBCOID, FEC_COB_DEU';
      
    DM1.cdsCambios.Close;
    DM1.cdsCambios.DataRequest(xSQL);
    DM1.cdsCambios.Open;

    If DM1.cdsCambios.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsCambios;
    xArchivo:='ReporteSustentoDevolucionesFSC(Bancos)';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacion.btnExcelDevoPlaClick(Sender: TObject);
var xsql:string;
begin
    xSql:='SELECT A.UPROID,A.UPAGOID,A.USEID UGEL,A.FEC_CRE_COB_FSC FREG,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.NUM_DEU,A.NROOPE,FEC_COB_DEU FOPERAC,SUM(NVL(A.IMP_COB_DEU,0))IMP_COB_DEU,SUM(NVL(A.IMP_EXC_DEU,0))IMP_EXC_DEU,'+
         'MIN(D.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, ' +
         'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM ' +
         'FROM COB_FSC_PAGOS_AL_FSC A, '+
         '     (SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
         '     APO102 C, TGE105 D  '+
         'WHERE  A.FORPAGID IN (''01'',''09'',''22'') AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') and'+
         '       To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.EST_COB_COD NOT IN (''04'',''13'')  AND '+
         '       A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPROID=C.UPROID(+) AND ' +
         '       A.BANCOID=D.BANCOID(+)   '+
         'GROUP BY A.FEC_CRE_COB_FSC,A.FEC_COB_DEU, A.UPROID, A.USEID, A.ASOID, A.ASOAPENOM, A.NUM_DEU, A.NROOPE,A.ASOCODMOD,A.UPAGOID '+
         'ORDER BY TO_CHAR(FEC_COB_DEU,''MM/YYYY''), CCBCOID, FEC_COB_DEU';


    DM1.cdsCambios.Close;
    DM1.cdsCambios.DataRequest(xSQL);
    DM1.cdsCambios.Open;

    If DM1.cdsCambios.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsCambios;
    xArchivo:='ReporteSustentoDevolucionesFSC(Planillas)';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacion.btnExcelDevoEfecClick(Sender: TObject);
var xsql:string;
begin
    xSql:='SELECT A.UPROID,A.UPAGOID,A.USEID UGEL,A.FEC_CRE_COB_FSC FREG,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.NUM_DEU,A.NROOPE,FEC_COB_DEU FOPERAC,SUM(NVL(A.IMP_COB_DEU,0))IMP_COB_DEU,SUM(NVL(A.IMP_EXC_DEU,0))IMP_EXC_DEU,'+
         'MIN(D.BANCONOM) BANCONOM, MAX(A.CCBCOID) CCBCOID, ' +
         'MIN(C.UPRONOM) UPRONOM, MIN(B.USENOM) USENOM ' +
         'FROM COB_FSC_PAGOS_AL_FSC A, '+
         '     (SELECT UPROID, USEID, MAX(CCOSID) CCOSID, MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
         '     APO102 C, TGE105 D  '+
         'WHERE  A.FORPAGID=''02'' AND A.FEC_CRE_COB_FSC BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') and'+
         '       To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.EST_COB_COD NOT IN (''04'',''13'')  AND '+
         '       A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPROID=C.UPROID(+) AND ' +
         '       D.BANCOID=''15'' '+
         'GROUP BY A.FEC_CRE_COB_FSC,A.FEC_COB_DEU, A.UPROID, A.USEID, A.ASOID, A.ASOAPENOM, A.NUM_DEU, A.NROOPE,A.ASOCODMOD,A.UPAGOID '+
         'ORDER BY TO_CHAR(FEC_COB_DEU,''MM/YYYY''), CCBCOID, FEC_COB_DEU';

    DM1.cdsCambios.Close;
    DM1.cdsCambios.DataRequest(xSQL);
    DM1.cdsCambios.Open;

    If DM1.cdsCambios.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsCambios;
    xArchivo:='ReporteSustentoDevolucionesFSC(PagoEfectivo)';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacion.btnExcelExtBancoClick(Sender: TObject);
var xsql:string;
begin
       xSql := 'SELECT  A.FECANULA FEC_EXTORNO,'+
           'A.UPROID, A.UPAGOID, '+
           'A.USEID UGEL,'+
           'A.ASOID,'+
           'A.CREDID CREDID,'+
           'A.CREDOCPAG,'+
           'TO_CHAR(MIN(A.FECANULA),''YYYYMM'') PER_EXTORN, A.ASOCODMOD, '+
           'MIN(A.ASOAPENOM) ASOAPENOM,'+
           'MIN(C.UPRONOM) UPRONOM,'+
           'MIN(B.USENOM) USENOM,'+
           'MIN(B.CCOSID) CCOSID,'+
           'MIN(A.TIPCREID) TIPCREID,'+
           'MIN(D.TIPCREDES) TIPCREDES, F.CREANO||F.CREMES PER_CUOTA, '+
           'MIN(A.BANCOID) BANCOID,'+
           'MIN(E.BANCONOM) BANCONOM,'+
           'MAX(A.CCBCOID) CCBCOID,'+
           'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
           'SUM(NVL(A.CREAMORT,0)) CREAMORT,'+
           'SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
           'SUM(NVL(A.CREFLAT,0)) CREFLAT,'+
           'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
           'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '+
           'FROM COB901 A,'+
                '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
                'APO102 C,'+
                'CRE110 D,'+
                'TGE105 E, CRE302 F  '
          +'where A.FORPAGID=''03'' '
          +'  and TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and A.CREESTID=''04'''
          +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                +' and A.CREDOCPAG is not null  and '+
                'A.BANCOID is not null  and '+
                'A.CCBCOID is not null  and '+
                'A.UPROID=B.UPROID(+) AND '+
                'A.USEID=B.USEID(+) and '+
                'A.UPROID = C.UPROID (+) and '+
                'A.TIPCREID=D.TIPCREID (+)  and '+
                'A.BANCOID=E.BANCOID (+) AND A.CREDID = F.CREDID (+) AND A.ASOID = F.ASOID (+) AND A.CRECUOTA = F.CRECUOTA (+) '+
         'GROUP BY A.FECANULA, A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG,A.ASOCODMOD,A.UPAGOID,F.CREANO,F.CREMES '+
         'ORDER BY TO_CHAR(A.FECANULA,''YYYYMM''),CCBCOID,CREDOCPAG ' ;

      dm1.cdsQry3.Close;
      dm1.cdsQry3.IndexFieldNames:='PER_EXTORN;CCBCOID';
      dm1.cdsQry3.DataRequest(xSql);
      dm1.cdsQry3.Open;

      If DM1.cdsQry3.RecordCount<=0 then
      begin
         ShowMessage('No existe información para exportar');
         Exit;
      end;

      dbgExcel.DataSource := DM1.dsQry3;
      xArchivo:='ReporteSustentoExtornoBoletasConta'+dbseAno.Text+xMesDes;
      Screen.Cursor := crHourglass;
      DM1.ExportaGridExcel(dbgExcel,xArchivo);
      Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacion.btnExcelExtCCIClick(Sender: TObject);
var xsql:string;
begin
    xSql := 'SELECT  A.FECANULA FEC_EXTORNO,'+
           'A.UPROID, A.UPAGOID, '+
           'A.USEID UGEL,'+
           'A.ASOID,'+
           'A.CREDID CREDID,'+
           'A.CREDOCPAG,'+
           'TO_CHAR(MIN(A.FECANULA),''YYYYMM'') PER_EXTORN, A.ASOCODMOD,'+
           'MIN(A.ASOAPENOM) ASOAPENOM,'+
           'MIN(C.UPRONOM) UPRONOM,'+
           'MIN(B.USENOM) USENOM,'+
           'MIN(B.CCOSID) CCOSID,'+
           'MIN(A.TIPCREID) TIPCREID,'+
           'MIN(D.TIPCREDES) TIPCREDES, F.CREANO||F.CREMES PER_CUOTA,'+
           'MIN(A.BANCOID) BANCOID,'+
           'MIN(E.BANCONOM) BANCONOM,'+
           'MAX(A.CCBCOID) CCBCOID,'+
           'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
           'SUM(NVL(A.CREAMORT,0)) CREAMORT,'+
           'SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
           'SUM(NVL(A.CREFLAT,0)) CREFLAT,'+
           'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
           'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '+
           'FROM COB901 A,'+
                '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
                'APO102 C,'+
                'CRE110 D,'+
                'TGE105 E, CRE302 F  '
          +'where A.FORPAGID=''99'' '
          +'  and TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and A.CREESTID=''04'''
          +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                +' and A.CREDOCPAG is not null  and '+
                'A.BANCOID is not null  and '+
                'A.CCBCOID is not null  and '+
                'A.UPROID=B.UPROID(+) AND '+
                'A.USEID=B.USEID(+) and '+
                'A.UPROID = C.UPROID (+) and '+
                'A.TIPCREID=D.TIPCREID (+)  and '+
                'A.BANCOID=E.BANCOID (+) AND A.CREDID = F.CREDID (+) AND A.ASOID = F.ASOID (+) AND A.CRECUOTA = F.CRECUOTA (+) '+
         'GROUP BY A.FECANULA, A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG,A.ASOCODMOD,A.UPAGOID,F.CREANO,F.CREMES '+
         'ORDER BY TO_CHAR(FECANULA,''YYYYMM''),CCBCOID,CREDOCPAG ' ;

        dm1.cdsQry3.Close;
        dm1.cdsQry3.IndexFieldNames:='PER_EXTORN;CCBCOID';
        dm1.cdsQry3.DataRequest(xSql);
        dm1.cdsQry3.Open;

        If dm1.cdsQry3.RecordCount=0 Then
        Begin
         ShowMessage('No existe información para contabilizar');
         Screen.Cursor:=crDefault;
         exit;
        End;

        dbgExcel.DataSource := DM1.dsQry3;
        xArchivo:='ReporteSustentoExtornoCCIConta'+dbseAno.Text+xMesDes;
        Screen.Cursor := crHourglass;
        DM1.ExportaGridExcel(dbgExcel,xArchivo);
        Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacion.btnExcelExtPlaClick(Sender: TObject);
var xsql:string;
begin
         xSql := 'SELECT  A.FECANULA FEC_EXTORNO,'+
           'A.UPROID, A.UPAGOID,'+
           'A.USEID UGEL,'+
           'A.ASOID,'+
           'A.CREDID CREDID,'+
           'A.CREDOCPAG,'+
           'TO_CHAR(MIN(A.FECANULA),''YYYYMM'') PER_EXTORN, A.ASOCODMOD,'+
           'MIN(A.ASOAPENOM) ASOAPENOM,'+
           'MIN(C.UPRONOM) UPRONOM,'+
           'MIN(B.USENOM) USENOM,'+
           'MIN(B.CCOSID) CCOSID,'+
           'MIN(A.TIPCREID) TIPCREID,'+
           'MIN(D.TIPCREDES) TIPCREDES, F.CREANO||F.CREMES PER_CUOTA,'+
           'MIN(A.BANCOID) BANCOID,'+
           'MIN(E.BANCONOM) BANCONOM,'+
           'MAX(A.CCBCOID) CCBCOID,'+
           'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
           'SUM(NVL(A.CREAMORT,0)) CREAMORT,'+
           'SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
           'SUM(NVL(A.CREFLAT,0)) CREFLAT,'+
           'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
           'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '+
           'FROM COB901 A,'+
                '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
                'APO102 C,'+
                'CRE110 D,'+
                'TGE105 E, CRE302 F  '
          +'where A.FORPAGID in (''01'',''09'',''22'') '
          +'  and TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and A.CREESTID=''04'''
          +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                +' and A.CREDOCPAG is not null  and '+
                'A.UPROID=B.UPROID(+) AND '+
                'A.USEID=B.USEID(+) and '+
                'A.UPROID = C.UPROID (+) and '+
                'A.TIPCREID=D.TIPCREID (+)  and '+
                'A.BANCOID=E.BANCOID (+) AND A.CREDID = F.CREDID (+) AND A.ASOID = F.ASOID (+) AND A.CRECUOTA = F.CRECUOTA (+) '+
         'GROUP BY A.FECANULA, A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG,A.ASOCODMOD,A.UPAGOID,F.CREANO,F.CREMES '+
         'ORDER BY TO_CHAR(FECANULA,''YYYYMM''),CCBCOID,CREDOCPAG ' ;


          dm1.cdsQry3.Close;
          dm1.cdsQry3.IndexFieldNames:='PER_EXTORN;CCBCOID';
          dm1.cdsQry3.DataRequest(xSql);
          dm1.cdsQry3.Open;
          DBPBANCOS.DataSource  := DM1.dsQry3;

          If dm1.cdsQry3.RecordCount=0 Then
          Begin
           ShowMessage('No existe información para contabilizar');
           Screen.Cursor:=crDefault;
           exit;
          End;

          dbgExcel.DataSource := DM1.dsQry3;
          xArchivo:='ReporteSustentoExtornoPlanillasConta'+dbseAno.Text+xMesDes;
          Screen.Cursor := crHourglass;
          DM1.ExportaGridExcel(dbgExcel,xArchivo);
          Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
procedure TFContabilizacion.btnExcelFPDClick(Sender: TObject);
var
  xSQL: String;
begin
    ParametrosAplicaFPD;
    xSQL:='SELECT C.CREFOTORG,A.FREG FEC_REGISTRO,A.USUARIO, B.USERNOM, A.CREFPAG, A.ASOCODMOD, A.ASOAPENOM, A.CREDID CREDID,A.NROOPE,A.FOPERAC,SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB, '
          +   'SUM(NVL(A.CREAMORT,0)) CREAMORT, SUM(NVL(A.CREINTERES,0)) CREINTERES, '
          +   'SUM(NVL(A.CREFLAT,0)) CREFLAT, SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC, SUM(NVL(A.moncobdesgrav,0)) moncobdesgrav, '
          +   '''APLICA FONDO DE PROTECCION DE DESGRAVAMEN DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
          +'FROM CRE310'+cLink+' A, USERTABLE'+cLink+' B, CRE301 C '
          +'Where '+xWhereBusqueda
          + ' and A.CREESTID<>''13'' AND A.CREESTID<>''99'' AND A.CREESTID<>''04'' '
          +' AND A.ASOID = C.ASOID(+) AND A.CREDID = C.CREDID(+) AND C.CREESTID NOT IN (''04'', ''13'') '
          + ' and A.USUARIO=B.USERID '
          +'GROUP BY A.USUARIO, B.USERNOM, A.CREFPAG, A.ASOCODMOD, A.ASOAPENOM '
          +',C.CREFOTORG,A.FREG,A.CREDID,A.NROOPE,A.FOPERAC '
          +'ORDER BY USUARIO,USERNOM,CREFPAG, ASOCODMOD, ASOAPENOM ';
		
    dm1.cdsQry4.Close;
    dm1.cdsQry4.DataRequest(xSQL);
    dm1.cdsQry4.Open;

    If DM1.cdsQry4.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsQry4;
    xArchivo:='ReporteSustentoFPD';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Fin HPC_201736_COB

// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
procedure TFContabilizacion.btnExcelCXCClick(Sender: TObject);
var
  xSQL: String;
begin
  ParametrosCXC;
	xSQL:= 'SELECT A.FREG FEC_REGISTRO, '
         +'       A.USUARIO, '
         +'       A.ASOCODMOD, '
         +'       A.ASOAPENOM, '
         +'       A.CREDID, '
         +'       C.CREFOTORG, '
         +'       C.CREMTONABO, '
         +'       A.CREFPAG, '
         +'       A.NROOPE, '
         +'       A.FOPERAC, '
         +'       SUM(NVL(A.CREMTOCOB, 0)) CREMTOCOB, '
         +'       SUM(NVL(A.CREAMORT, 0)) CREAMORT, '
         +'       SUM(NVL(A.CREINTERES, 0)) CREINTERES, '
         +'       SUM(NVL(A.CREFLAT, 0)) CREFLAT, '
         +'       SUM(NVL(A.CREMTOEXC, 0)) CREMTOEXC, '
         +'       SUM(NVL(A.MONCOBDESGRAV, 0)) MONCOBDESGRAV '
         +'   FROM   CRE310 A, USERTABLE B, CRE301 C '
         +'   WHERE '+xWhereBusqueda
         +'   AND A.CREESTID NOT IN (''04'', ''13'', ''99'') '
         +'   AND A.ASOID = C.ASOID(+) AND A.CREDID = C.CREDID(+) AND C.CREESTID NOT IN (''04'', ''13'') '
         +'   AND    A.USUARIO = B.USERID(+) '
         +'   GROUP BY A.NROOPE, A.FOPERAC '
         +'   ,A.FREG,A.USUARIO,A.CREFPAG,C.CREFOTORG,A.CREDID,A.ASOCODMOD,A.ASOAPENOM,C.CREMTONABO '
         +'   ORDER BY A.FOPERAC ';

    dm1.cdsQry4.Close;
    dm1.cdsQry4.DataRequest(xSQL);
    dm1.cdsQry4.Open;

    If DM1.cdsQry4.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsQry4;
    xArchivo:='ReporteSustentoDetalleCXC';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Fin HPC_201736_COB

// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
procedure TFContabilizacion.btnExcelFSCClick(Sender: TObject);
var
  xSQL: String;
begin
    ParametrosFondo;
    xSQL:= 'SELECT A.FREG FEC_REGISTRO, '
         +'       A.USUARIO, '
         +'       A.ASOCODMOD, '
         +'       A.ASOAPENOM, '
         +'       A.CREDID, '
         +'       C.CREFOTORG, '
         +'       C.CREMTONABO, '
         +'       A.CREFPAG, '
         +'       A.NROOPE, '
         +'       A.FOPERAC, '
         +'       SUM(NVL(A.CREMTOCOB, 0)) CREMTOCOB, '
         +'       SUM(NVL(A.CREAMORT, 0)) CREAMORT, '
         +'       SUM(NVL(A.CREINTERES, 0)) CREINTERES, '
         +'       SUM(NVL(A.CREFLAT, 0)) CREFLAT, '
         +'       SUM(NVL(A.CREMTOEXC, 0)) CREMTOEXC, '
         +'       SUM(NVL(A.MONCOBDESGRAV, 0)) MONCOBDESGRAV '
         +'   FROM   CRE310 A, USERTABLE B, CRE301 C '
         +'   WHERE '+xWhereBusqueda
         +'   AND A.CREESTID NOT IN (''04'', ''13'', ''99'') '
         +'   AND A.ASOID = C.ASOID(+) AND A.CREDID = C.CREDID(+) AND C.CREESTID NOT IN (''04'', ''13'') '
         +'   AND    A.USUARIO = B.USERID(+) '
         +'   GROUP BY A.NROOPE, A.FOPERAC '
         +'   ,A.FREG,A.USUARIO,A.CREFPAG,C.CREFOTORG,A.CREDID,A.ASOCODMOD,A.ASOAPENOM,C.CREMTONABO '
         +'   ORDER BY A.FOPERAC ';

    dm1.cdsQry4.Close;
    dm1.cdsQry4.DataRequest(xSQL);
    dm1.cdsQry4.Open;

    If DM1.cdsQry4.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsQry4;
    xArchivo:='ReporteSustentoDetalleFSC';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Fin HPC_201736_COB

// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
procedure TFContabilizacion.btnExcelCCIClick(Sender: TObject);
var
  xSQL: String;
begin
    ParametrosCCI;
    xSQL:='SELECT '
        +   'A.FREG FEC_REGISTRO, A.USUARIO, '
        +   'A.ASOCODMOD,A.ASOAPENOM,A.CREDID,C.CREFOTORG, '
        +   'A.CREFPAG,A.NROOPE,A.FOPERAC, '
        +   'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,  '
        +   'SUM(NVL(A.CREAMORT,0))  CREAMORT,   '
        +   'SUM(NVL(A.CREINTERES,0)) CREINTERES,'
        +   'SUM(NVL(A.CREFLAT,0)) CREFLAT,'
        +   'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC, '
        +   'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV, '
        +   '''CANCELACIONES CONTRA CUENTA INDIVIDUAL DEL MES DE '+xMesDes+' DEL '+dbseAno.Text+''' PERIODO '
        +'FROM CRE310 A, USERTABLE B, CRE301 C  '
        +'Where '+xWhereBusqueda
        +'   AND A.CREESTID NOT IN (''04'', ''13'', ''99'') '
        +'   AND A.ASOID = C.ASOID(+) AND A.CREDID = C.CREDID(+) AND C.CREESTID NOT IN (''04'', ''13'') '
        +'   AND    A.USUARIO = B.USERID(+) '
        +'   GROUP BY A.NROOPE, A.FOPERAC '
        +'   ,A.FREG,A.USUARIO,A.CREFPAG,C.CREFOTORG,A.CREDID,A.ASOCODMOD,A.ASOAPENOM,C.CREMTONABO '
        +'ORDER BY ASOAPENOM,FOPERAC';
		
    dm1.cdsQry4.Close;
    dm1.cdsQry4.DataRequest(xSQL);
    dm1.cdsQry4.Open;

    If DM1.cdsQry4.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsQry4;
    xArchivo:='ReporteSustentoDetalleCCI';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Fin HPC_201736_COB

// Inicio HPC_201802_COB: Exportar a Excel los reportes sustento de la contabilización.
procedure TFContabilizacion.btnExcelAnuApoClick(Sender: TObject);
var xsql:string;
begin


    xsql:='SELECT UPROID,UPROABR, USEID,USEABR, ASOAPENOM, ASOCODMOD, FECANULA, OBSANULA, '
          +'TRANSNOPE NRO_OPE, TRANSFOPE FECHA_OPE, TRANSANO||TRANSMES PER_COB, TRANSMTO APORTE, CNTANOMM PER_CONTABLE, CNTFLAG CONTABILIZADO '
          +'FROM  APO313'+cLink+' '
          +'WHERE CNTANOMMN='''+ xPeriodo +''' and CNTFLAG=''S'' '
          +'AND   NVL(TRANSMTO,0)>0 '
          +'ORDER BY UPROID,USEID,TRANSNOPE';


    dm1.cdsQry4.Close;
    dm1.cdsQry4.DataRequest(xSQL);
    dm1.cdsQry4.Open;

    If DM1.cdsQry4.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsQry4;
    xArchivo:='ReporteSustentoAnulacionAportes';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Fin HPC_201802_COB

// Inicio HPC_201802_COB: Exportar a Excel los reportes sustento de la contabilización.
procedure TFContabilizacion.btnExcelCobONPClick(Sender: TObject);
var xSQL:string;
begin

   ParametrosONP;

   xSQL:='SELECT A.ASOCODMOD ASOCODMOD,'
        +'       MIN(A.ASOAPENOM) ASOAPENOM, E.CODPENSION COD_PENSION,'
        +'       A.CREFPAG FECHA_OPE, A.CREDOCPAG NRO_OPE, '
        +'       A.CREDID NRO_CREDITO, MIN(D.TIPCREDES) TIPCREDES,'
        +'       SUM(NVL(A.CREMTOCOB,0)) MTO_COB, SUM(NVL(A.CREAMORT,0)) AMORTIZACION,'
        +'       SUM(NVL(A.CREINTERES,0)) INTERES, SUM(NVL(A.CREFLAT,0)) FLAT,'
        +'       SUM(NVL(A.MONCOBDESGRAV,0)) DESGRAVAMEN, SUM(NVL(A.CREMTOEXC,0)) EXCESO '
        +'FROM   CRE310 A, CRE110 D , APO201 E '
        +'WHERE  '+ xWhereBusqueda
        +'AND    A.CREDOCPAG IS NOT NULL '
        +'AND    NOT A.CREESTID IN (''13'') '
        +'AND    A.TIPCREID=D.TIPCREID(+) '
        +'AND    A.ASOID = E.ASOID(+) '
        +'GROUP BY A.ASOCODMOD, E.CODPENSION, A.CREDOCPAG, A.CREFPAG, A.CREDID '
        +'ORDER BY 2,4,5';

    dm1.cdsQry4.Close;
    dm1.cdsQry4.DataRequest(xSQL);
    dm1.cdsQry4.Open;

    If DM1.cdsQry4.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsQry4;
    xArchivo:='ReporteSustentoCobranzaPorONP';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Fin HPC_201802_COB

// Inicio HPC_201802_COB: Exportar a Excel los reportes sustento de la contabilización.
procedure TFContabilizacion.btnExcelAjusteCDOClick(Sender: TObject);
var xSQL:string;
begin

    ParametrosCDO;

    xSQL:='SELECT ASOCODMOD, ASOAPENOM, CREDID NRO_CREDITO, FOPERAC FECHA_OPE, NROOPE NRO_OPE, '
        +   'SUM(NVL(CREMTOCOB,0)) MTO_COB,  '
        +   'SUM(NVL(CREAMORT,0))  CAPITAL,   '
        +   'SUM(NVL(CREINTERES,0)) INTERES,'
        +   'SUM(NVL(CREFLAT,0)) FLAT,'
        +   'SUM(NVL(MONCOBDESGRAV,0)) DESGRAVAMEN, '
        +   'SUM(NVL(CREMTOEXC,0)) EXCESO, '
        +   ''''+ xPeriodo + ''' PERIODO '
        +'FROM CRE310 A, USERTABLE B '
        +'Where '+xWhereBusqueda
        + ' and CREESTID<>''13'' AND CREESTID<>''99''  '
        + ' and A.USUARIO=B.USERID '
        +'GROUP BY ASOCODMOD,ASOAPENOM,CREDID,NROOPE,FOPERAC '
        +'ORDER BY 2,4,5';

    dm1.cdsQry4.Close;
    dm1.cdsQry4.DataRequest(xSQL);
    dm1.cdsQry4.Open;

    If DM1.cdsQry4.RecordCount<=0 then
    begin
       ShowMessage('No existe información para exportar');
       Exit;
    end;

    dbgExcel.DataSource := DM1.dsQry4;
    xArchivo:='ReporteSustentoAjusteCDO';

    Screen.Cursor := crHourglass;
    DM1.ExportaGridExcel(dbgExcel,xArchivo);
    Screen.Cursor := crDefault;
end;
// Fin HPC_201802_COB

// Inicio: HPC_201809_COB
// Nuevos procedimientos para la contabilización de extorno FSC
procedure TFContabilizacion.BitBtn18Click(Sender: TObject);
Var
   xSql,xSql2,xAnoMes,VMES:string ;
   xmes:integer;
begin
   ParametrosExtornoFsc;
   Screen.Cursor:=crHourGlass;
//Inicio HPC_201815_COB
//Se modifica la agrupación por Fecha de anulación en forma truncada DD/MM/YYYY
   xSql := 'SELECT  TRUNC(A.FECANULA) FOPERAC,'+
//Final HPC_201815_COB
           'A.UPROID,'+
           'A.USEID,'+
           'A.ASOID,'+
           'SUBSTR(A.CREDID,9,7) CREDID,'+
           'A.CREDOCPAG,'+
           'TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,'+
           'MIN(A.ASOAPENOM) ASOAPENOM,'+
           'MIN(C.UPRONOM) UPRONOM,'+
           'MIN(B.USENOM) USENOM,'+
           'MIN(B.CCOSID) CCOSID,'+
           'MIN(A.TIPCREID) TIPCREID,'+
           'MIN(D.TIPCREDES) TIPCREDES,'+
           'MIN(A.BANCOID) BANCOID,'+
           'MIN(E.BANCONOM) BANCONOM,'+
           'MAX(A.CCBCOID) CCBCOID,'+
           'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
           'SUM(NVL(A.CREAMORT,0)) CREAMORT,'+
           'SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
           'SUM(NVL(A.CREFLAT,0)) CREFLAT,'+
           'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
           'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '+
           'FROM COB901 A,'+
                '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
                'APO102 C,'+
                'CRE110 D,'+
                'TGE105 E  '
          +'where A.FORPAGID in (''23'',''24'',''44'') '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                +' and A.CREDOCPAG is not null  and '+
                'A.UPROID=B.UPROID(+) AND '+
                'A.USEID=B.USEID(+) and '+
                'A.UPROID = C.UPROID (+) and '+
                'A.TIPCREID=D.TIPCREID (+)  and '+
                'A.BANCOID=E.BANCOID (+) '+
//Inicio HPC_201815_COB
//Se modifica la agrupación por Fecha de anulación en forma truncada DD/MM/YYYY
         'GROUP BY TRUNC(A.FECANULA), A.UPROID,A.USEID,A.ASOID,A.CREDID,A.CREDOCPAG '+
         'ORDER BY TO_CHAR(TRUNC(FECANULA),''MM/YYYY''),CCBCOID,CREDOCPAG ' ;
//Fin HPC_201815_COB

    xSql2 := 'SELECT TO_CHAR(MIN(A.FECANULA),''MM/YYYY'') FOP,A.CCBCOID,MAX(B.BANCONOM) BANCO,SUM(NVL(A.CREMTOCOB,0)) TOTAL '+
             ' FROM COB901 A, TGE105 B '
          +'where A.FORPAGID in (''23'',''24'',''44'') '
          +'  and TO_CHAR(FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and CREESTID=''04'''
          +' and  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                  +' and CREDOCPAG is not null  and '+
              //    'A.BANCOID is not null  and '+
              //    'A.CCBCOID is not null  and '+
                  'A.BANCOID=B.BANCOID(+) '+
             'GROUP BY A.CCBCOID,TO_CHAR(A.FECANULA,''MM/YYYY'') ' ;

  dm1.cdsQry3.Close;
  dm1.cdsQry3.IndexFieldNames:='FOP;CCBCOID';
  dm1.cdsQry3.DataRequest(xSql);
  dm1.cdsQry3.Open;
  DBPBANCOS.DataSource  := DM1.dsQry3;

  If dm1.cdsQry3.RecordCount=0 Then
  Begin
   ShowMessage('No existe información para contabilizar');
   Screen.Cursor:=crDefault;
   exit;
  End;

  dm1.cdsQry4.Close;
  dm1.cdsQry4.DataRequest(xSql2);
  dm1.cdsQry4.Open;
  DBPRESUMEN.DataSource := DM1.dsQry4;
  Screen.Cursor:=crDefault;

  pplTitAplFsc.Caption   := 'EXTORNO DE APLICACIONES FSC DE '+xMesDes+' DEL '+dbseAno.Text;
  pplSubTitAplFsc.Caption:= 'APLICACIONES FSC DEL ' ;
  pplUsuAplFsc.Caption := dm1.wUsuario;
  pprRepAplFsc.Print;


end;

procedure TFContabilizacion.ParametrosExtornoFsc;
begin
   dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   wTipoCont := 'EF';
   wTipoCont2 := 'EFSC';
   DatosFecha;
   xWhereBusqueda:=' TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
                  +' and A.TIPOCONT=''FSC'' ';
    xWhereIncluyeLote:=' ';
end;

procedure TFContabilizacion.BitBtn20Click(Sender: TObject);
var
   xCia, xSQL, xSQL2,xSQL3, xCNTComprob  : String;
   xNumComp : Integer;
begin
  wTipoCont := 'EF';
   wTipoCont2 := 'EFSC';
   ParametrosExtornoFsc;
   Screen.Cursor:=crHourGlass;
   // Borra Cabecera
   xSQL := 'delete from CNT300COB '
          +'where TDIARID=''32'''
          +' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE ='+quotedstr( wTipoCont2 );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   // Borra Movimientos
   xSQL := 'delete from CNT311COB '
          +'where TDIARID=''32'''
          +' and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text)
          +' and CNTLOTE ='+quotedstr( wTipoCont2 );
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   // Compañía Principal ('02')
   // Total Cobrado
   xSQL := 'Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, CNTFEMIS, CNTFVCMTO,'
          +'                       CCOSID,CNTLOTE, CNTSERIE, CNTNODOC,CNTGLOSA, CNTDEBEMN, CNTHABEMN ) '
          // MONTO COBRADO (DEBE)
          +' SELECT '+QUOTEDSTR('02')+', '+QUOTEDSTR(wTipoCont)+','
          +QUOTEDSTR('0000000001')+', '+QUOTEDSTR(dbseAno.text)+','
//Inicio HPC_201815_COB
//Se modifica la agrupación por Fecha de anulación en forma truncada DD/MM/YYYY
    //    +QUOTEDSTR(dbseAno.text+dbseMes.text)+',C.CTA_FSC CTACOBD, A.FECANULA, A.CREFPAG, '
          +QUOTEDSTR(dbseAno.text+dbseMes.text)+','
          +'NVL(C.CTA_FSC,(SELECT CTA_FSC FROM APO107 WHERE ASOTIPID=SUBSTR(NROOPE,11,2))) CTACOBD, '
          +'TRUNC(A.FECANULA) FECANULA , A.CREFPAG,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''COBR'' CNTSERIE, A.NROOPE,'
//Fin HPC_201815_COB
          +'A.UPROID GLOSA, '
          +'0.00 DEBE, sum(A.CREMTOCOB) HABER'
          +' FROM COB901'+cLink+' A, CRE301'+cLink+' B, APO107'+cLink+' C'
          +' WHERE '+xWhereBusqueda
          +' AND A.FORPAGID in (''23'',''24'',''44'')'
          +' AND A.CREESTID = ''04'''
          +' AND TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'''
          +' AND A.CREDOCPAG is not null'
//Inicio HPC_201815_COB
//Se modifica la agrupación por Fecha de anulación en forma truncada DD/MM/YYYY
          +' AND A.ASOID = B.ASOID (+) AND A.CREDID = B.CREDID (+)'
          +' AND B.ASOTIPID = C.ASOTIPID (+)'
          +' AND NVL(A.CREMTOCOB,0) > 0'
          +' GROUP BY A.UPROID,A.NROOPE,C.CTA_FSC,TRUNC(A.FECANULA), A.CREFPAG ';
//Fin HPC_201815_COB
 xSQL2 :=
// Amortizaciones
          // Credito normal
          'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
//Inicio HPC_201815_COB
//Se modifica la agrupación por Fecha de anulación en forma truncada DD/MM/YYYY
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID, TRUNC(A.FECANULA) FECANULA , A.CREFPAG,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE, ''AMOR'' CNTSERIE, A.NROOPE,'
          +'A.UPROID GLOSA,'
          +'sum(A.CREAMORT) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C '
          +'where '+xWhereBusqueda
          +' AND SUBSTR(A.CREDID,9,1) <> ''R'''
          +' and A.FORPAGID in (''23'',''24'',''44'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' '
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +' and nvl(A.CREAMORT,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CUENTAID,B.CIAID, TRUNC(A.FECANULA), A.CREFPAG '
          +'having NVL(B.CIAID,''02'') = ''02'' '
          // Credito refinanciado
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+','+quotedstr(xCtaRefi)+',TRUNC(A.FECANULA)FECANULA, A.CREFPAG,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE, ''AMOR'' CNTSERIE, A.NROOPE,'
          +'A.UPROID GLOSA,'
          +'sum(A.CREAMORT) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C '
          +'where '+xWhereBusqueda
          +' AND SUBSTR(A.CREDID,9,1) = ''R'''
          +' and A.FORPAGID in (''23'',''24'',''44'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +' and nvl(A.CREAMORT,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CUENTAID,B.CIAID, TRUNC(A.FECANULA), A.CREFPAG '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Excesos
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUEEXC, TRUNC(A.FECANULA) FECANULA, A.CREFPAG,'
          +'null CCOSID,'''+wTipoCont2+''' LOTE, ''EXCE'' CNTSERIE, A.NROOPE,'
          +'A.UPROID GLOSA,'
          +'sum(nvl(A.CREMTOEXC,0)) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B, APO101'+cLink+' C  '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''23'',''24'',''44'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and C.USEID(+)=A.USEID and C.UPAGOID(+)=A.UPAGOID and C.UPROID(+)=A.UPROID '
          +' and nvl(A.CREMTOEXC,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CUEEXC,B.CIAID, TRUNC(A.FECANULA), A.CREFPAG '
          +'having NVL(B.CIAID,''02'') = ''02'' '
// Intereses
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAINT, TRUNC(A.FECANULA) FECANULA, A.CREFPAG,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''INTE'' CNTSERIE, A.NROOPE,'
          +'A.UPROID GLOSA,'
          +'sum(A.CREINTERES) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''23'',''24'',''44'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and A.TIPCREID = B.TIPCREID(+) '
          +' and nvl(A.CREINTERES,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CTAINT,B.CIAID, TRUNC(A.FECANULA), A.CREFPAG ';
xSQL3:=
// Flat
          'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CTAFLAT, TRUNC(A.FECANULA) FECANULA, A.CREFPAG,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''FLAT'' CNTSERIE, A.NROOPE,'
          +'A.UPROID GLOSA,'
          +'sum(A.CREFLAT) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''23'',''24'',''44'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and nvl(A.CREFLAT,0)>0 '
          +'group by A.UPROID,A.NROOPE,B.CTAFLAT,B.CIAID, TRUNC(A.FECANULA), A.CREFPAG '
// Fondo de Protección de Desgravamen FPD
          +'union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',T.CTA_DESGRAV, TRUNC(A.FECANULA) FECANULA, A.CREFPAG,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''FPD'' CNTSERIE, A.NROOPE,'
          +'A.UPROID GLOSA,'
          +'sum(A.MONCOBDESGRAV) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' A, CRE110'+cLink+' B, CRE301 C, APO107 T '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''23'',''24'',''44'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and nvl(A.MONCOBDESGRAV,0)>0 '
          +' and A.TIPCREID = B.TIPCREID(+)'
          +' and A.ASOID = C.ASOID(+) AND A.CREDID = C.CREDID(+) '
          +' and C.ASOTIPID=T.ASOTIPID(+) '
          +'group by A.UPROID,A.NROOPE,T.CTA_DESGRAV,B.CIAID, TRUNC(A.FECANULA) , A.CREFPAG '
// Otras Compañías (166xxxxx)
          +' union all '
          +'select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
          +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
          +quotedstr(dbseAno.text+dbseMes.text)+',B.CUENTAID, TRUNC(A.FECANULA) FECANULA, A.CREFPAG,'
          +'null CCOSID, '''+wTipoCont2+''' LOTE, ''OTRA'' CNTSERIE, A.NROOPE,'
          //+quotedstr('OTRAS CIAS: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
          +'A.UPROID GLOSA,'
          +'sum(A.CREAMORT)+sum(nvl(A.CREMTOEXC,0)) DEBE, 0.00 HABER '
          +'from COB901'+cLink+' a, CRE110'+cLink+' B  '
          +'where '+xWhereBusqueda
          +' and A.FORPAGID in (''23'',''24'',''44'') '
          +' and A.CREESTID = ''04'' '
          +' and TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
          +' and A.CREDOCPAG is not null '
          +' and B.TIPCREID(+) = A.TIPCREID '
          +' and (nvl(A.CREAMORT,0)+nvl(A.CREMTOEXC,0))>0 '
         +'group by A.UPROID, A.NROOPE, B.CUENTAID, B.CIAID, TRUNC(A.FECANULA), A.CREFPAG '
          +'having NVL(B.CIAID,''02'') <> ''02'' ';
//Fin HPC_201815_COB
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL2+xSQL3);

   // generando otros datos
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')
          +',CNTTCAMBIO='+xTCambio
          +',CNTFEMIS = TRUNC(CNTFEMIS,''DD''), CNTFVCMTO = TRUNC(CNTFVCMTO,''DD'')'
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')+', CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=TRUNC(SYSDATE,''DD''), CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)     +', CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)   +', CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)      +', CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)+', CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('EXTORNO PLANILLA')
          +',DOCDES='+quotedstr('Ext.Plan')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2) '
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2) '
          +',CNTTS='+quotedstr('OV')+', CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'update CNT311COB A '
          +'set A.CNTGLOSA=(select B.UPROABR from APO102 B '
          +'                where B.UPROID=A.CNTGLOSA) '
          +' where A.TDIARID='+quotedstr(wTipoCont)
          +'   and A.CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'update CNT311COB A '
          +'set A.CNTGLOSA= A.CNTGLOSA||'+'-'+quotedstr(dbseAno.text+dbseMes.text)
          +' where A.TDIARID='+quotedstr(wTipoCont)
          +'   and A.CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Actualizacion de Numero de Comprobante
   xSQL := 'select CIAID,CNTLOTE from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' group by CIAID,CNTLOTE ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTLOTE';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 20014
      else
         xNumComp := 20014;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

// Actualiza Lote como identificador de Planilla
   xSQL := 'update CNT311COB '
          +'set CNTLOTE='+quotedstr(wTipoCont2)+' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

// Numeracion de Item por cada Comprobante Generado
   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select a.*, rowid '
          +'from CNT311COB a '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         cdsPost(DM1.cdsQry3);
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
   begin
      ShowMessage('Nro. de Items no actualizados');
   end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;


// Actualiza Comprobante
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'''EXT-PLA:'+dbseAno.text+dbseMes.text + ''' CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +''''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTLOTE ='+quotedstr( wTipoCont2 )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,''EXT-PLA:'+dbseAno.text+dbseMes.text + ''','
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   ShowMessage('ok');
end;

procedure TFContabilizacion.BitBtn19Click(Sender: TObject);
begin
  wTipoCont2:= 'EFSC';
  wTipoCont := 'EFSC';
  TransferirContabilidad(wTipoCont2,'32',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);
end;

procedure TFContabilizacion.fcShapeBtn36Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311, 'EFSC',xPeriodo );
end;


procedure TFContabilizacion.BitBtn61Click(Sender: TObject);
var xsql:string;
begin
//Inicio HPC_201815_COB
//Se adiciona truncate para la agrupación
   xSql := 'SELECT  TRUNC(A.FECANULA) FEC_EXTORNO,'+
//Final HPC_201815_COB
           'A.UPROID,A.UPAGOID,'+
           'A.USEID UGEL,'+
           'A.ASOID,'+
           'A.CREDID CREDID,'+
           'A.CREDOCPAG,'+
           'TO_CHAR(MIN(A.FECANULA),''YYYYMM'') PER_EXTORN, A.ASOCODMOD, '+
           'MIN(A.ASOAPENOM) ASOAPENOM,'+
           'MIN(C.UPRONOM) UPRONOM,'+
           'MIN(B.USENOM) USENOM,'+
           'MIN(B.CCOSID) CCOSID,'+
           'MIN(A.TIPCREID) TIPCREID,'+
           'MIN(D.TIPCREDES) TIPCREDES,'+
           'MIN(A.BANCOID) BANCOID,'+
           'MIN(E.BANCONOM) BANCONOM,'+
           'MAX(A.CCBCOID) CCBCOID,'+
           'SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,'+
           'SUM(NVL(A.CREAMORT,0)) CREAMORT,'+
           'SUM(NVL(A.CREINTERES,0)) CREINTERES,'+
           'SUM(NVL(A.CREFLAT,0)) CREFLAT,'+
           'SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV,'+
           'SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC '+
           'FROM COB901 A,'+
                '(SELECT UPROID,USEID,MAX(CCOSID) CCOSID,MAX(USENOM) USENOM FROM APO101 GROUP BY UPROID,USEID) B,'+
                'APO102 C,'+
                'CRE110 D,'+
                'TGE105 E, CRE302 F  '
          +'where A.FORPAGID in (''23'',''24'',''44'') '
          +'  and TO_CHAR(A.FECANULA,''YYYYMM'')='+quotedstr(dbseAno.text+dbseMes.text)
          +'  and A.CREESTID=''04'''
          +' AND  TRIM(A.CREMENANU)<>''EXTORNO DE CUOTA'' ' //ESTE MENSAJE ES AUTOMATICO Y VIENE DE LAS DEVOLUCIONES DE CUOTAS Y NO SE DEBE TOMAR COMO EXTORNO
                +' and A.CREDOCPAG is not null  and '+
                'A.UPROID=B.UPROID(+) AND '+
                'A.USEID=B.USEID(+) and '+
                'A.UPROID = C.UPROID (+) and '+
                'A.TIPCREID=D.TIPCREID (+)  and '+
                'A.BANCOID=E.BANCOID (+) AND A.CREDID = F.CREDID (+) AND A.ASOID = F.ASOID (+) AND A.CRECUOTA = F.CRECUOTA (+) '+
//Inicio HPC_201815_COB
//Se adiciona truncate para la agrupación
         'GROUP BY TRUNC(A.FECANULA), A.UPROID,A.UPAGOID, A.USEID, A.ASOID, A.ASOCODMOD, A.CREDID, A.CREDOCPAG '+
         'ORDER BY TO_CHAR(TRUNC(FECANULA),''MM/YYYY''),CCBCOID,CREDOCPAG ' ;
//Final HPC_201815_COB
        dm1.cdsQry3.Close;
        dm1.cdsQry3.IndexFieldNames:='PER_EXTORN;CCBCOID';
        dm1.cdsQry3.DataRequest(xSql);
        dm1.cdsQry3.Open;

        If dm1.cdsQry3.RecordCount=0 Then
        Begin
         ShowMessage('No existe información para contabilizar');
         Screen.Cursor:=crDefault;
         exit;
        End;

        dbgExcel.DataSource := DM1.dsQry3;
        xArchivo:='ReporteSustentoExtornoFSCConta'+dbseAno.Text+xMesDes;
        Screen.Cursor := crHourglass;
        DM1.ExportaGridExcel(dbgExcel,xArchivo);
        Screen.Cursor := crDefault;
end;

procedure TFContabilizacion.fcShapeBtn35Click(Sender: TObject);
begin
  ReporteContabilizaCredito( xCnt311r,'EFSC',xPeriodo );
end;
// Fin: HPC_201809_COB

// Inicio: COB_201822_HPC
// Se añaden procedimientos para contabilización de pagos x resolver
procedure TFContabilizacion.btnConPagxResClick(Sender: TObject);
var
   xCia, xSql, xSQL2, xCNTComprob  : String;
   xNumComp : Integer;
begin

   wTipoCont  := '32';
   wTipoCont2 := 'PRS';

   Screen.Cursor:=crHourGlass;
   xSql := 'DELETE FROM CNT300COB'
   +' WHERE TDIARID = '+QuotedStr(wTipoCont)
   +' AND CNTANOMM = '+quotedstr(dbseAno.text+dbseMes.text)
   +' AND CNTLOTE = '+quotedstr(wTipoCont2);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   xSql := 'DELETE FROM CNT311COB'
   +' WHERE TDIARID = '+QuotedStr(wTipoCont)
   +' AND CNTANOMM = '+QuotedStr(dbseAno.text+dbseMes.text)
   +' AND CNTLOTE = '+QuotedStr(wTipoCont2);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   xSql := 'INSERT INTO CNT311COB (CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CUENTAID, CNTFEMIS, CNTFVCMTO,'
       +'                          CCOSID,CNTLOTE, CNTSERIE, CNTNODOC,CNTGLOSA, CNTDEBEMN, CNTHABEMN)'
       +' SELECT '+quotedstr('02')+','+quotedstr(wTipoCont)+','
       +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
       +quotedstr(dbseAno.text+dbseMes.text)+','
       + 'CASE WHEN FORPAGID IN (''01'',''09'',''22'') THEN ''4691205'' '
       +       'ELSE ''4692202'' END CUENTAID, '
       +' A.FEC_PRO_PAG_RES, A.FEC_OPERACION, NULL CCOSID, A.UPROID LOTE, '+QuotedStr('COBR')+' CNTSERIE, A.NRO_OPERACION,'
       +quotedstr('COBRADO: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
       +' A.IMPORTE DEBE, 0 HABER'
       +' FROM COB_DES_CRO_CERRADO_DET A WHERE  A.FLGEST = ''32'' '      // FORPAGID IN (''01'',''09'',''22'') AND
       +' AND A.FEC_PRO_PAG_RES BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
       +' union all '
       +' select '+quotedstr('02')+','+quotedstr(wTipoCont)+','
       +quotedstr('0000000001')+','+quotedstr(dbseAno.text)+','
       +quotedstr(dbseAno.text+dbseMes.text)+','+QuotedStr('7591801')+','
       +' A.FEC_PRO_PAG_RES, A.FEC_OPERACION, NULL CCOSID, A.UPROID LOTE, '+QuotedStr('COBR')+' CNTSERIE, A.NRO_OPERACION,'
       +quotedstr('COBRADO: U.Proc: ')+'||A.UPROID||''  ''||'+quotedstr(dbseAno.text+dbseMes.text)+'  GLOSA, '
       +' 0 DEBE, A.IMPORTE HABER'
       +' FROM COB_DES_CRO_CERRADO_DET A WHERE  A.FLGEST = ''32'' '       //FORPAGID IN (''01'',''09'',''22'') AND
       +' AND A.FEC_PRO_PAG_RES  BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   try
   xSql := 'update CNT311COB '
          +'set DOCID='+quotedstr('20')// +',CNTSERIE='+quotedstr('000')
          +',CNTTCAMBIO=nvl('+xTCambio+',0)'
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+xTCambio+',2) else round(CNTHABEMN/'+xTCambio+') end'
          +',CNTFCOMP='+quotedstr(edtFecha.Text)+',CNTESTADO='+quotedstr('I')
          +',CNTCUADRE='+quotedstr('N')+', CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=TO_DATE(SYSDATE), CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)     +', CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)   +', CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)      +', CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)+', CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('COBRANZA X PLANILLA')
          +',DOCDES='+quotedstr('Cob.Plan')
          +',CNTDEBEME=round(CNTDEBEMN/'+xTCambio+',2) '
          +',CNTHABEME=round(CNTHABEMN/'+xTCambio+',2) '
          +',CNTTS='+quotedstr('OV')+', CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Ocurrió un error al actualizar la tabla CNT311COB');
      Screen.Cursor:=crDefault;
      exit;
   end;

 {xSql := 'UPDATE CNT311COB A '
          +'set A.CNTGLOSA=(select B.UPROABR from APO102 B '
          +'                where B.UPROID=A.CNTLOTE) '
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);


   xSql := 'update CNT311COB '
   +'set CNTGLOSA=CNTGLOSA||'+'-'+quotedstr(dbseAno.text+dbseMes.text)
   +' where TDIARID='+quotedstr(wTipoCont)
   +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);}

   xSQL := 'select CIAID,CNTLOTE from CNT311COB '
          +' where TDIARID='+quotedstr(wTipoCont)+' and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +' group by CIAID,CNTLOTE ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTLOTE';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCia := DM1.cdsQry3.FieldByName('CIAID').AsString;
      if xCia='02' then
         xNumComp := 20014
      else
         xNumComp := 20014;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CIAID').AsString=xCia) do
      begin
         xCntComprob := DM1.strzero(inttostr(xNumComp),10);
         xSQL := 'update CNT311COB set CNTCOMPROB='+quotedstr(xCntComprob)
                +' where CIAID='+quotedstr(DM1.cdsQry3.FieldByName('CIAID').AsString)
                +'   and TDIARID='+quotedstr(wTipoCont)
                +'   and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
                +'   and CNTLOTE='+quotedstr(DM1.cdsQry3.FieldByName('CNTLOTE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsQry3.Next;
         xNumComp:=xNumComp+1;
      end;
   end;

   xSQL := 'update CNT311COB '
          +'set CNTLOTE='+quotedstr(wTipoCont2)+' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'update CNT311COB '
          +'set CNTREG=null '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('No se pudo limpiar el valor de los Items');
   end;
   xSQL := 'select a.*, rowid '
          +'from CNT311COB a '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter:='';
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry3.IndexFieldNames:='';
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   DM1.cdsQry3.IndexFieldNames:='CIAID;CNTCOMPROB;CNTDH;CUENTAID;CCOSID';
   DM1.cdsQry3.First;
   while not DM1.cdsQry3.EOF do
   begin
      xCNTComprob := DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;
      xNumComp := 1;
      while (not DM1.cdsQry3.EOF) and (DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString=xCNTComprob) do
      begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CNTREG').AsInteger := xNumComp;
         cdsPost(DM1.cdsQry3);
         xNumComp := xNumComp+1;
         DM1.cdsQry3.Next;
      end;
   end;
   if DM1.cdsQry3.ApplyUpdates(0)>0 then
   begin
      ShowMessage('Nro. de Items no actualizados');
   end;

   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'' '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
                 +'A.CNTGLOSA CNTGLOSA,'+xTCambio+','+'A.CNTFCOMP, ''I'', ''N'', '
                 +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
                 +'A.CNTMM, A.CNTDD, A.CNTTRI, '
                 +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
                 +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
                 +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTLOTE ='+quotedstr( wTipoCont2 )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,A.CNTGLOSA, '
                   +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
                   +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

//Inicio COB_201822_HPC  
// Contabilización de pagos por resolver
   xSql:='Select CNTCOMPROB '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTLOTE ='+quotedstr( wTipoCont2 )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text) ;
   DM1.cdsQry26.Close;
   DM1.cdsQry26.DataRequest(xSQL);
   DM1.cdsQry26.Open;
   If  DM1.cdsQry26.RecordCount=0 Then
   Begin
    ShowMessage('No existe información para contabilizar');
    Screen.Cursor:=crDefault;
    exit;
   End;
//Fin COB_201822_HPC
   Screen.Cursor:=crDefault;
   ShowMessage('ok');

end;

procedure TFContabilizacion.btnTransfaContClick(Sender: TObject);
begin
  wTipoCont2:= 'PRS';
  wTipoCont := 'PRS';
//Inicio COB_201822_HPC  
// Contabilización de pagos por resolver
   xSql:='Select CNTCOMPROB '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and CNTLOTE ='+quotedstr( wTipoCont2 )
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text) ;
   DM1.cdsQry26.Close;
   DM1.cdsQry26.DataRequest(xSQL);
   DM1.cdsQry26.Open;
   If  DM1.cdsQry26.RecordCount=0 Then
   Begin
    ShowMessage('No existe información para contabilizar');
    Screen.Cursor:=crDefault;
    exit;
   End;
//Fin COB_201822_HPC  
  TransferirContabilidad(wTipoCont2,'32',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);

end;

procedure TFContabilizacion.btnRepSusPagxResClick(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT A.ASOAPENOM,  A.FORPAGID, B.FORPAGODES, trunc(A.FEC_PRO_PAG_RES) FEC_GENERACION, A.FEC_OPERACION, A.NRO_OPERACION, A.IMPORTE EXCESO'
   +' FROM COB_DES_CRO_CERRADO_DET A, COB101 B'
   +' WHERE A.FEC_PRO_PAG_RES  BETWEEN '+QuotedStr(dtpFecIni.Text)+' AND '+QuotedStr(dtpFecFin.Text)
   +' AND A.FORPAGID = B.FORPAGOID AND FLGEST IN (''32'') '
   +' ORDER BY A.FORPAGID';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
//Inicio COB_201822_HPC  
// Contabilización de pagos por resolver
   If dm1.cdsReporte.RecordCount=0 Then
   Begin
    ShowMessage('No existe información para contabilizar');
    Screen.Cursor:=crDefault;
    exit;
   End;
//Fin COB_201822_HPC  
   pplUsuPagxRes.Caption  := DM1.wUsuario;
   xTituloPagxRes.Caption := 'PAGOS POR RESOLVER CONTABILIZADOS EN '+xMesDes+' DEL '+dbseAno.Text;
   pprPrevioPagxRes.Print;
end;

procedure TFContabilizacion.fcShapeBtn40Click(Sender: TObject);
begin
   ReporteContabilizaCredito( xCnt311, 'PRS', xPeriodo  );
end;

procedure TFContabilizacion.fcShapeBtn39Click(Sender: TObject);
begin
 ReporteContabilizaCredito( xCnt311r,'PRS',xPeriodo );
end;
// Fin: COB_201822_HPC
End.

