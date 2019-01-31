// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB903
// Formulario                    : fCronoPag
// Fecha de Creación             :
// Autor                         : EQUIPO DE SISTEMAS
// Objetivo                      : Muestra el Cronograma de Pagos del Asociado, se puede imprimir el Cronograma o el detalle de pagos,bloquear/desbloquear, marcar proceso de cobranzas

// Actualizaciones:
//                               : HPP_200902      -
//                               : HPP_200910_COB  - Se adiciona un Case en el Selesct, indicador de DIFERIDO
//                               : HPP_200911      - Modificado por Daniel Fernández
//                               : HPP_200915_COB  - 15/06/2009 - SAR-2009-0481 - DAD-DF-2009-0035 realizado por DFERNANDEZ
//                               : HPP_200923_COB  - Memorándum 686-2009-DM-COB - SAR2009-0593 - DAD-JD-2009-0117
//                               : HPP_200931_COB  - por RMEDINA Memorándum 843-2009-DM-COB - SAR-2009-0765 - DAD-RM-2009-0129.  Se adicona la columna de Periodo de la Cobranza
//                               : HPP_200939_COB  - por IREVILLA  Memorándum 867-2009-DM-COB - SAR-2009-0791 - DAD-DF-2009-0069
//                               : HPP_201002_COB  - por DFERNANDEZ  Memorándum 991-2009-DM-COB - SAR-2009-0906 - DAD-DF-2009-0081
//                               : HPP_201007_COB  - por JCARBONEL Temporales del Report Builder
//                               : HPC_201203_COB  - Se retita la opción de pagar desde y pagar directamente a la cuota
// DPP_201204_COB                : Pase a realizar a partir del HPC_201103_COB
// HPC_201208_COB                : RMEDINA 22/03/2012  - Se adiciona la deshabilitación del boton de adición de pagos
// DPP_201206_COB                : Se realiza el pase a producción a partir del pase HPC_201208_COB
// HPC_201207_COB                : RMEDINA 22/05/2012 - Se adicona estado de cuenta segun formato propuesto por cobranzas MEMO 089-2012-DM-COB
// DPP_201209_COB                : Se realiza el pase a producción a partir del pase HPC_201207_COB
// HPC_201215_COB                : Se agregan las columnas correspondientes al fondo de desgravamen
// DPP_201211_COB                : Pase se realiza de acuerdo al HPC_201215_COB
// HPC_201306_COB - 27/05/2013   : Problemas por Columnas de Desgravamen y Pago Diferido
// SPP_201308_COB                : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201308_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas
// SPP_201310_COB                : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201310_COB   07/10/2013   : Si credito tiene FSC no imprimir cronograma cancelado, imprimir Resumen FSC
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201312_COB - 20/12/2013   : Restricción de Impresión de Reportes del FSC
// SPP_201314_COB                : Se realiza el pase a producción a partir del documento HPC_201312_COB
// HPC_201402_COB                : Cambio DbExpress-Socket 
// SPP_201402_COB                : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201407_COB                : Mejora en la consulta del estado de cuenta - selección de monto en proceso de cobranzas y Hoja resumen de créditos
// SPP_201410_COB                : Se realiza el pase a producción a partir del HPC_201407_COB.
// HPC_201503_COB                : Modificar la Refinanciación Individual Incluir desgravamen y TCEA
// HPC_201510_COB : CAMBIAR LA DESCRIPCION DE LOS DESEMBOLSOS     
// HPC_201514_COB                : se la modifica la impresión del Estado de Cuenta, el Cronograma, y detalle de pagos para que muestre las aplicaciones por CCI
// HPC_201603_COB                : Se modifica el filtro de restricción para la impresión del Estado de Cuenta.
// HPC_201614_COB                : Se adiciona un opción para que se apruebe un pago adelantado
// HPC_201701_COB                : Se modifica el Qry para la impresión del cronograma de pagos
// HPC_201710_COB                : Se añade la columa mostrando si la cuota fue reprogramación exogena "DE" o rescate "(D)"
// HPC_201711_COB                : Se adiciona Reprogramación de Créditos - Flag de Reprogramación Excepcional
// HPC_201720_COB                : Exportación a Excel de los cronogramas de Pago
// HPC_201804_COB                : Modificación de Resumen del Cronograma de Pagos
// HPC_201814_COB                : Se añaden los montos de proceso de conranza en el caso que el cobro sea por ONP
// COB_201822_HPC                : Se añade fecha de cancelación en el cronograma de pago del credito

Unit COB903;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
   DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
   ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppStrtch, ppSubRpt,
   ppDBBDE, ppParameter, ppModule, daDataModule,
   AppEvnts,
   ppEndUsr,
   //Inicio HPC_201514_COB
   // Inicio SPP_201410_COB  
// Inicio HPC_201720_COB
// Exportación a Excel de los cronogramas de Pago
   ppMemo, Math, wwclient, jpeg, ppRegion, DBGrids;
// Fin HPC_201720_COB
   // Fin SPP_201410_COB  
   //Final HPC_201514_COB

Type
   TfCronoPag = Class(TForm)
      gBPagos: TGroupBox;
      dtgPagos: TwwDBGrid;
      BitSalir: TBitBtn;
      BitPagar: TBitBtn;
      BitDetPag: TBitBtn;
      BitProc: TBitBtn;
      BitBLoq: TBitBtn;
      grpImprimir: TGroupBox;
      BitPrint: TBitBtn;
      ChkFoto: TCheckBox;
      ppDBEstCta: TppDBPipeline;
      ppREstCta: TppReport;
      GroupBox1: TGroupBox;
      lblEstado: TLabel;
      BitMarcar: TBitBtn;
      Panel1: TPanel;
      Label2: TLabel;
      EdtDesUse: TEdit;
      EdtFecDes: TEdit;
      EdtCodMod: TEdit;
      EdtNomGen: TEdit;
      EdtFecPre: TEdit;
      EdtCreDid: TEdit;
      EdtDesTip: TEdit;
      Panel2: TPanel;
      EdtMonto: TEdit;
      EdtNumCuo: TEdit;
      EdtMoneda: TEdit;
      grpEncuesta: TGroupBox;
      ChkHistorico: TCheckBox;
      BitEncuesta: TBitBtn;
      BitPrintEncuesta: TBitBtn;
      DbOfides: TppDBPipeline;
      RepOfides: TppReport;
      ppHeaderBand29: TppHeaderBand;
      lblPerEnc: TppLabel;
      ppLabel599: TppLabel;
      ppLabel600: TppLabel;
      ppLabel601: TppLabel;
      ppLabel602: TppLabel;
      ppLabel603: TppLabel;
      ppSystemVariable56: TppSystemVariable;
      ppSystemVariable57: TppSystemVariable;
      ppSystemVariable58: TppSystemVariable;
      ppLabel604: TppLabel;
      ppLabel605: TppLabel;
      ppLabel606: TppLabel;
      ppDBText251: TppDBText;
      ppDBText252: TppDBText;
      lblUse: TppLabel;
      lblProc: TppLabel;
      lblTipAso: TppLabel;
      ppLabel59: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppShape1: TppShape;
      ppLabel64: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppLabel67: TppLabel;
      ppLabel68: TppLabel;
      ppDetailBand31: TppDetailBand;
      ppShape8: TppShape;
      ppDBText253: TppDBText;
      ppDBText254: TppDBText;
      ppDBText255: TppDBText;
      ppDBText257: TppDBText;
      ppDBText258: TppDBText;
      ppDBText259: TppDBText;
      ppLabel590: TppLabel;
      ppLabel591: TppLabel;
      ppLabel592: TppLabel;
      ppLabel593: TppLabel;
      ppDBText256: TppDBText;
      ppDBText249: TppDBText;
      ppDBText250: TppDBText;
      ppLabel594: TppLabel;
      ppLabel595: TppLabel;
      ppFooterBand24: TppFooterBand;
      ppSummaryBand29: TppSummaryBand;
      ppShape9: TppShape;
      ppLabel610: TppLabel;
      ppLabel613: TppLabel;
      ppDBCalc217: TppDBCalc;
      ppParameterList1: TppParameterList;
      BitCorrige: TBitBtn;
      Bitmuehis: TBitBtn;
      BitEnvioPorcentual: TBitBtn;
      Timer1: TTimer;
      pnlFirma: TPanel;
      Label5: TLabel;
      Label6: TLabel;
      ppDesigner1: TppDesigner;
      ppHeaderBand1: TppHeaderBand;
      ppSystemVariable2: TppSystemVariable;
      ppLine4: TppLine;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppLblTitulo: TppLabel;
      ppLabel21: TppLabel;
      ppLblCodMod: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      pplblTipCre: TppLabel;
      pplblNomGen: TppLabel;
      pplblNumPre: TppLabel;
      ppLabel25: TppLabel;
      pplblFecPre: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      pplblUse: TppLabel;
      pplblMonto: TppLabel;
      ppLabel28: TppLabel;
      pplblNumCuo: TppLabel;
      ppLabel29: TppLabel;
      pplblTipCli: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppShpImg: TppShape;
      ppImage1: TppImage;
      ppLabel20: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLblInt: TppLabel;
      ppLblFlat: TppLabel;
      ppLine5: TppLine;
      ppLabel50: TppLabel;
      ppLabel51: TppLabel;
      ppLabel52: TppLabel;
      ppLabel53: TppLabel;
      ppLblCuenta: TppLabel;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      ppLblOriOto: TppLabel;
      pplblRotulo: TppLabel;
      pplblRot02: TppLabel;
      ppLblTipDes: TppLabel;
      ppLblEstado: TppLabel;
      ppLblCuotas: TppLabel;
      ppLabel76: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
// Inicio HPC_201503_COB  
      lblGas02: TppLabel;
// Fin HPC_201503_COB  
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel58: TppLabel;
      ppLabel71: TppLabel;
      ppLabel70: TppLabel;
      ppLabel79: TppLabel;
      ppLabel80: TppLabel;
      pplblTipCliOtorg: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppLine6: TppLine;
      ppLine1: TppLine;
      ppLabel1: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLabel2: TppLabel;
      lblSalTot: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLblCuoVen: TppLabel;
      pplblCuoPen: TppLabel;
      ppLabel32: TppLabel;
      pplblMonPag: TppLabel;
      ppLNota1: TppLabel;
      ppLine7: TppLine;
      ppLabel43: TppLabel;
      ppLabel46: TppLabel;
      ppLabel45: TppLabel;
      ppLabel44: TppLabel;
      ppLblUser: TppLabel;
      ppDBCalc6: TppDBCalc;
      ppLblApro: TppLabel;
      ppLNota2: TppLabel;
      ppLabel33: TppLabel;
      lblVen: TppLabel;
      lblPen: TppLabel;
      lblTot: TppLabel;
      ppLabel69: TppLabel;
      ppLabel75: TppLabel;
      ppLabel74: TppLabel;
      ppLabel73: TppLabel;
      ppLabel72: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel77: TppLabel;
      ppLabel78: TppLabel;
      ppLblCuoDif: TppLabel;
      lblDif: TppLabel;
      chkInterno: TCheckBox;
      ppLabel81: TppLabel;
      ppLabel82: TppLabel;
      ppLblRegimen: TppLabel;
      ppLabel83: TppLabel;
      ppLabel84: TppLabel;
      ppLblDirDom: TppLabel;
      ppLabel85: TppLabel;
      ppLabel86: TppLabel;
      ppLblTelefono: TppLabel;
      ppLabel87: TppLabel;
      ppLabel88: TppLabel;
      ppLblDiasAtraso: TppLabel;
      ppGroup1: TppGroup;
      ppLabel89: TppLabel;
      ppLabel90: TppLabel;
      ppLblFirmoAutorizacion: TppLabel;
      ppLabel91: TppLabel;
      ppLabel92: TppLabel;
      ppLblProvision: TppLabel;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppREstadoCuenta: TppReport;
      ppParameterList2: TppParameterList;
      SBEstadoCuenta: TSpeedButton;
      ppDBPEstadoCuenta: TppDBPipeline;
      ppDBProcesoCobranza: TppDBPipeline;
      ppHeaderBand2: TppHeaderBand;
      ppShape4: TppShape;
      ppShape3: TppShape;
      ppDBText11: TppDBText;
      ppLabel93: TppLabel;
      ppLabel94: TppLabel;
      ppLabel95: TppLabel;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppLabel96: TppLabel;
      ppLabel97: TppLabel;
      ppLabel98: TppLabel;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppLine8: TppLine;
      ppLabel99: TppLabel;
      ppLabel100: TppLabel;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppLabel101: TppLabel;
      ppDBText19: TppDBText;
      ppLabel103: TppLabel;
      ppDBText21: TppDBText;
      ppLine9: TppLine;
      ppLabel104: TppLabel;
      ppLabel106: TppLabel;
      ppLabel107: TppLabel;
      ppLabel108: TppLabel;
      ppDBText22: TppDBText;
      ppDBText23: TppDBText;
      ppDBText24: TppDBText;
      ppLine10: TppLine;
      ppLabel110: TppLabel;
      ppLabel111: TppLabel;
      ppLabel112: TppLabel;
      ppLabel113: TppLabel;
      ppLabel114: TppLabel;
      ppLine12: TppLine;
      ppLabel117: TppLabel;
      ppLabel118: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
    //Inicio HPC_201514_COB
    //ppLabel119: TppLabel;
    //Final HPC_201514_COB
      ppLabel120: TppLabel;
      ppLabel105: TppLabel;
      ppDBText29: TppDBText;
      ppLabel123: TppLabel;
      ppLabel137: TppLabel;
      ppLabel138: TppLabel;
      ppLabel139: TppLabel;
      ppLabel140: TppLabel;
      ppDBText30: TppDBText;
      ppDBText31: TppDBText;
      ppDBText32: TppDBText;
      ppDBText33: TppDBText;
      ppDBText34: TppDBText;
      ppDetailBand2: TppDetailBand;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppLabel122: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      ppDetailBand3: TppDetailBand;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppLabel121: TppLabel;
      ppSummaryBand3: TppSummaryBand;
      ppFooterBand2: TppFooterBand;
      ppSummaryBand2: TppSummaryBand;
      ppShape2: TppShape;
      ppLabel109: TppLabel;
      ppLine11: TppLine;
      ppSystemVariable3: TppSystemVariable;
      ppDBText25: TppDBText;
      ppLabel115: TppLabel;
      ppLabel116: TppLabel;
      ppLine14: TppLine;
      pplblVencido: TppLabel;
      pplblImpVencido: TppLabel;
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
      ppSystemVariable7: TppSystemVariable;
      ppLabel102: TppLabel;
      ppLabel136: TppLabel;
      ppLblDesgravamen: TppLabel;
      ppLabel141: TppLabel;
      ppLabel142: TppLabel;
      ppDBText20: TppDBText;
      ppDBCalc7: TppDBCalc;

// Inicio: SPP_201310_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas
      bbtnCuotaAnula: TBitBtn;
   // Inicio SPP_201410_COB  
    btnHojRes: TBitBtn;
    ppHojResNor: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppMemo3: TppMemo;
    mDat01: TppMemo;
    ppLabel143: TppLabel;
    lblCopia01: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
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
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppLabel154: TppLabel;
    lblFrmDes: TppLabel;
    ppLabel211: TppLabel;
    lblFonDes: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    cdsCronograma_Tmp: TwwClientDataSet;
    dsCronograma_Tmp: TDataSource;
    cdsCronograma: TwwClientDataSet;
    dsCronograma: TDataSource;
    ppHojResRef: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppMemo1: TppMemo;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    lblNomGen01: TppLabel;
    lblDni01: TppLabel;
    lblFecCre01: TppLabel;
    lblTipCre01: TppLabel;
    lblTipDes01: TppLabel;
    lblNumCredito01: TppLabel;
    lblMonto01: TppLabel;
    lblTasEfe01: TppLabel;
    lblTasGas01: TppLabel;
    lblPlazo01: TppLabel;
    ppLabel175: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    lblFrmDes01: TppLabel;
    ppLine13: TppLine;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppParameterList3: TppParameterList;
    mDat02: TppMemo;
    ppLabel165: TppLabel;
// Inicio HPC_201503_COB  
    lblGasRef: TppLabel;
    lblMonGasRef: TppLabel;
    ppLabel12: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    lblTasEfe02: TppLabel;
    ppLabel168: TppLabel;
    lblTasEfe03: TppLabel;
//Inicio HPC_201514_COB
    ppImage2: TppImage;
    ppRegCCI: TppRegion;
    pplblCCI: TppLabel;
    ppLabel183: TppLabel;
    ppImage3: TppImage;
    chkCCI: TCheckBox;
    ppDBCCI: TppDBPipeline;
    ppRepCCI: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape5: TppShape;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel176: TppLabel;
    ppLabel180: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine22: TppLine;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel182: TppLabel;
//Inicio HPC_201614_COB
//Se adiciona una opción para que se apruebe un pago adelantado
    ppReport1: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppImage4: TppImage;
    grbPAdelantado: TGroupBox;
    chkPagoAdelantado: TCheckBox;
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Flag de Reprogramación Excepcional
    chkRepExc: TCheckBox;
// Inicio HPC_201720_COB
// Exportación a Excel de los cronogramas de Pago
    dtgData: TDBGrid;
    cdsCronograma_Tmp2: TwwClientDataSet;
    dsCronograma_Tmp2: TDataSource;
    chkExcel: TCheckBox;
    Image2: TImage;

    // Inicio: COB_201822_HPC
    // Se añade variable en cronograma para fecha de cancelación
    Panel3: TPanel;
    EdtFecCan: TEdit;
    // Fin: COB_201822_HPC

// Fin HPC_201720_COB
//Final HPC_201711_COB
//Final HPC_201614_COB
//Final HPC_201514_COB
// Fin HPC_201503_COB  

  // Fin SPP_201410_COB  
// Fin: SPP_201310_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas

      Procedure BitSalirClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure BitMarcarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dtgPagosRowChanged(Sender: TObject);
      Procedure dtgPagosDblClick(Sender: TObject);
      Procedure BitPagarClick(Sender: TObject);
      Procedure dtgPagosDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure BitPrintClick(Sender: TObject);
      Procedure BitBLoqClick(Sender: TObject);
      Procedure BitDetPagClick(Sender: TObject);
      Procedure ChkHistoricoClick(Sender: TObject);
      Procedure BitPrintEncuestaClick(Sender: TObject);
      Procedure BitEncuestaClick(Sender: TObject);
      Procedure BitCorrigeClick(Sender: TObject);
      Procedure BitmuehisClick(Sender: TObject);
      Procedure BitEnvioPorcentualClick(Sender: TObject);
      Procedure dtgPagosMouseUp(Sender: TObject; Button: TMouseButton;
         Shift: TShiftState; X, Y: Integer);
      Procedure Timer1Timer(Sender: TObject);
      Procedure BitProcClick(Sender: TObject);
      procedure SBEstadoCuentaClick(Sender: TObject);
// Inicio: SPP_201310_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas
      procedure bbtnCuotaAnulaClick(Sender: TObject);
// Inicio SPP_201410_COB  
    procedure btnHojResClick(Sender: TObject);
// Inicio HPC_201720_COB
// Exportación a Excel de los cronogramas de Pago
    procedure FormShow(Sender: TObject);
// Fin HPC_201720_COB
// Fin SPP_201410_COB  
// Fin: SPP_201310_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas
   Private
    { Private declarations }
      xSaldoP: Currency;
      Dragging: Boolean;
      DeltaX, DeltaY: Integer;
      Procedure Botones(xLogic: Boolean);
// Inicio SPP_201410_COB
      Procedure GnrCronograma_Tmp(xTipAso, xAsoid, xCredId, xDesEnv: String; xTas_Int, xTas_Flt, xMonOto: Real; xFec_Pre: tDateTime; xNumCuo: Integer);
// Fin SPP_201410_COB

// Inicio: SPP_201312_COB   07/10/2013   : Si credito tiene FSC no imprimir cronograma cancelado, imprimir Resumen FSC
      Function MuestraCreditoConFSC(xAsoid, xCredid : String) : Boolean;
// Fin: SPP_201312_COB   07/10/2013   : Si credito tiene FSC no imprimir cronograma cancelado, imprimir Resumen FSC
   Public
    { Public declarations }
      Procedure LimpiaFlgvar(xAsoId, xCreDid: String);
      Procedure GrabaFlgvar(xAsoId, xCreDid, xCreCuota: String);
      Function vrfMarca(xDataSet: tDataSet): String;
      Function CalculaProvision(xAsoID: String): Currency;
    //Inicio HPC_201514_ASO
      Procedure PagosCCI(xAsoid,xCredid:String);
    //Final HPC_201514_ASO
    //Inicio HPC_201614_COB
    //Se define procedimientos 
      Procedure ApruebaPagAnt(xAsoid,xCredid:String);
      Procedure VerificaPagAnt(xAsoid,xCredid:String);
    //Final HPC_201614_COB
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Flag de Reprogramación Excepcional
      Procedure ApruebaRepExc(xAsoid,xCredid:String);
      Procedure VerificaRepExc(xAsoid,xCredid:String);
//Final  HPC_201711_COB
   End;

Var
   fCronoPag: TfCronoPag;

Implementation

Uses COBDM1, COB904, COB906, COB901, COB914, COB922, CRE945, COB973,
   COB972, COB981, COB801,
// Inicio: SPP_201310_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas
   COBD001, COB324;
// Fin: SPP_201310_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas

{$R *.dfm}

Type
   THintConFont = Class(THintWindow)
      Constructor Create(AOwner: TComponent); Override;
   End;

Constructor THintConFont.Create(AOwner: TComponent);
Begin
   Inherited
      Create(Aowner);
   Canvas.Font.Name := 'Times New Roman';
   Canvas.Font.Size := 24;
   Canvas.Brush.Color := claqua;
   Canvas.Font.Color := claqua;
End;

Procedure TfCronoPag.BitSalirClick(Sender: TObject);
Var
   xAsoId, xCredid: String;
 //Inicio HPC_201614_COB
 //Se adiciona variable
   xsql:String;
 //Final HPC_201614_COB
Begin
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   LimpiaFlgvar(xAsoId, xCreDid);
   //Inicio HPC_201614_COB
   //procedimiento de aprobación de pagos adelantados
   ApruebaPagAnt(xAsoId, xCreDid);
   //Final HPC_201614_COB
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Flag de Reprogramación Excepcional
    ApruebaRepExc(xAsoId, xCreDid);
//Final HPC_201711_COB
   Close;
End;

Procedure TfCronoPag.FormCreate(Sender: TObject);
Begin
   dtgPagos.SetControlType('FLAGVAR', fctCheckBox, 'S;N');
   DM1.BlqComponentes(Self);
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
 //Inicio HPC_201514_ASO
   PagosCCI(DM1.cdsSolicitud.fieldbyname('ASOID').AsString,DM1.cdsSolicitud.fieldbyname('CREDID').AsString);
 //Final HPC_201514_ASO
End;

Procedure TfCronoPag.BitMarcarClick(Sender: TObject);
Var
   xAsoId, xCreDid, xCreCuota, xSQL: String;
   xRegistro: TBookmark;
Begin
   If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Copy(DM1.CrgArea(DM1.wUsuario), 6, 2)) = 0 Then
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
      Exit;
   End;

   If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '19') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '31') Then
   Begin
      xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
      xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      xCreCuota := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
      xRegistro := DM1.cdsCuotas.GetBookmark;
      If DM1.cdsCuotas.FieldByName('FLAGVAR').AsString = 'S' Then
      Begin
         BitMarcar.Caption := 'Marcar';
         xSQL := 'UPDATE CRE302 '
            + '   SET FLAGVAR = ''N'' '
            + ' WHERE ASOID    = ' + QuotedStr(Trim(xAsoId)) + ' And'
            + '       CREDID   = ' + QuotedStr(Trim(xCreDid)) + ' And'
            + '       CRECUOTA = ' + QuotedStr(Trim(xCreCuota));
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         fNpago.ActualizaCrono(xAsoId, xCreDid);
         DM1.cdsCuotas.GotoBookmark(xRegistro);
         dtgPagos.SetFocus;
      End
      Else
      Begin
         BitMarcar.Caption := 'DesMarcar';
         xSQL := 'UPDATE CRE302 '
            + '   SET FLAGVAR  = ''S'' '
            + ' WHERE ASOID    = ' + QuotedStr(Trim(xAsoId)) + ' And'
            + '       CREDID   = ' + QuotedStr(Trim(xCreDid)) + ' And'
            + '       CRECUOTA = ' + QuotedStr(Trim(xCreCuota));
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         fNpago.ActualizaCrono(xAsoId, xCreDid);
         DM1.cdsCuotas.GotoBookmark(xRegistro);
         dtgPagos.SetFocus;
      End;
   End
   Else
   Begin
      MessageDlg(' CUOTA NO ESTA PENDIENTE DE PAGO', mtInformation, [mbOk], 0);
      dtgPagos.SetFocus;
   End;
End;

// Inicio: SPP_201402_COB
Procedure TfCronoPag.GrabaFlgvar(xAsoId, xCreDid, xCreCuota: String);
var xSQL:String; 
Begin
   xSQL:='SELECT ASOID,CREDID,CRECUOTA,FLAGVAR FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CRECUOTA=' + QuotedStr(Trim(xCreCuota)) + ' AND FLAGVAR=''S'' ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   If DM1.cdsQry3.RecordCount = 1 Then
   Begin
      DM1.cdsQry3.Edit;
      DM1.cdsQry3.FieldByName('FLAGVAR').AsString := ' ';
      DM1.cdsQry3.ApplyUpdates(0);
   End;
   DM1.cdsQry3.Close;
End;
// Fin: SPP_201402_COB
Procedure TfCronoPag.LimpiaFlgvar(xAsoId, xCreDid: String);
Var
   xCreCuota: String;
Begin
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest('SELECT ASOID,CREDID,CRECUOTA,FLAGVAR FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND FLAGVAR=''S'' ');
   DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.Eof Do
      Begin
         xCreCuota := DM1.cdsQry2.FieldByName('CRECUOTA').AsString;
         GrabaFlgvar(xAsoId, xCreDid, xCreCuota);
         DM1.cdsQry2.Next;
      End;
   End;
   DM1.cdsQry2.Close;
End;

Procedure TfCronoPag.FormActivate(Sender: TObject);
Var
   // Inicio: DPP_201211_COB
   xCrecapital, xCremtoint, xCremtoflat, xCremtocob, xCremto, xMoncobdesgrav: Currency;
   xSQL, xAsoId, xCreDid: String;
Begin
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   xCrecapital := 0;
   xCremtoint := 0;
   xCremtoflat := 0;
   xCremtocob := 0;
   xCremto := 0;
   xMoncobdesgrav := 0;

   
//Inicio HPC_201614_COB
//Verifica pagos adelantados
  VerificaPagAnt(xAsoid, xCredid);
//Final HPC_201614_COB

//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Flag de Reprogramación Excepcional
//Verifica pagos adelantados
  VerificaRepExc(xAsoid, xCredid);
//Final HPC_201711_COB


// los botones quedan invisibles por estar en desuso
   BitPrintEncuesta.Visible := False;
   BitEncuesta.Visible := False;
   // Inicio HPC_201503_COB
      xSQL:='UPDATE CRE302 SET FECVENORI=CREFVEN,NUMCUOORI=CRECUOTA WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND FECVENORI IS NULL ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   // Fin  HPC_201503_COB
   pnlFirma.Visible := False;
   If DM1.cdsSolicitud.FieldByName('AUTDESCRE').AsString = 'S' Then
      pnlFirma.Visible := True;

   If grpImprimir.Enabled Then BitPrint.Enabled := True;
   If DM1.xHis = 'S' Then
   Begin
      Botones(False);
      xSQL := 'SELECT SUM(AMO_PAG) AS CRECAPITAL,SUM(INT_PAG) AS CREMTOINT,SUM(GAS_PAG) AS CREMTOFLAT,SUM(MON_PAG) AS CREMTOCOB,SUM(MON_CUO) AS CREMTO, SUM(DESGRAV_PAG) MONCOBDESGRAV FROM PAGO WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' Group By ASOID,CREDID';
   End
   Else
   Begin
      Botones(True);
      xSQL := 'SELECT SUM(CRECAPITAL) AS CRECAPITAL,SUM(CREMTOINT) AS CREMTOINT,SUM(CREMTOFLAT) AS CREMTOFLAT,SUM(CREMTOCOB) AS CREMTOCOB,SUM(CREMTO) AS CREMTO, SUM(MONCOBDESGRAV) MONCOBDESGRAV FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' Group By ASOID,CREDID';
   End;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      xCrecapital := DM1.cdsQry.fieldbyname('CRECAPITAL').AsCurrency;
      xCremtoint := DM1.cdsQry.fieldbyname('CREMTOINT').AsCurrency;
      xCremtoflat := DM1.cdsQry.fieldbyname('CREMTOFLAT').AsCurrency;
      xCremtocob := DM1.cdsQry.fieldbyname('CREMTOCOB').AsCurrency;
      xCremto := DM1.cdsQry.fieldbyname('CREMTO').AsCurrency;
      xMoncobdesgrav := DM1.cdsQry.fieldbyname('MONCOBDESGRAV').AsCurrency;
   End
   Else
   Begin
      xCrecapital := 0;
      xCremtoint := 0;
      xCremtoflat := 0;
      xCremtocob := 0;
      xCremto := 0;
      xMoncobdesgrav := 0;
   End;

   DM1.cdsQry.Close;
   dtgPagos.ColumnByName('CREFVEN').FooterValue := 'Total';
   dtgPagos.ColumnByName('CRECAPITAL').FooterValue := FloatToStrF(xCrecapital, ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTOINT').FooterValue := FloatToStrF(xCremtoint, ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTOFLAT').FooterValue := FloatToStrF(xCremtoflat, ffNumber, 10, 2);
   dtgPagos.ColumnByName('MONCOBDESGRAV').FooterValue := FloatToStrF(xMoncobdesgrav, ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtocob, ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTO').FooterValue := FloatToStrF(xCremto, ffNumber, 10, 2);
   // Fin: DPP_201211_COB
End;

Procedure TfCronoPag.dtgPagosRowChanged(Sender: TObject);
Begin
   If DM1.cdsCuotas.FieldByName('FLAGVAR').AsString = 'S' Then
      BitMarcar.Caption := 'DesMacar'
   Else
      BitMarcar.Caption := 'Marcar';
   If DM1.cdsCuotas.FieldByName('CREESTID').AsString = '19' Then
      BitBLoq.Caption := 'DesBloqueo'
   Else
      BitBLoq.Caption := 'Bloqueo';
End;

Procedure TfCronoPag.dtgPagosDblClick(Sender: TObject);
Var
   xAsoId, xCredId, xCreCuota, xCreCuoFin, xfCalc, xpercob: String;
   xRegistro: TBookmark;
Begin
   If dtgPagos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xpercob := DM1.cdsCuotas.Fieldbyname('PERCOB').AsString;
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   xCreCuota := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
   xRegistro := DM1.cdsCuotas.GetBookmark;
   xSaldoP := 0.00;
   DM1.xSal := 'A';
   DM1.xGrabaExc := 'N';

   If DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '14' Then
      Exit
   Else
      dtgPagos.ShowHint := False;

   If ((DM1.cdsCuotas.fieldbyname('CREESTID').AsString <> '02')
      And (DM1.cdsCuotas.fieldbyname('CREESTID').AsString <> '11')
      And (DM1.cdsCuotas.fieldbyname('CREESTID').AsString <> '27')
      And (DM1.cdsCuotas.fieldbyname('CREESTID').AsString <> '31'))
      And (DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency = 0) Then
      Exit;

   If DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency > 0 Then
   Begin
      DM1.cdsDetalle.Close;
      DM1.cdsDetalle.DataRequest(' Select CIAID, ASOID, ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, TIPCREID, CREDID, '
         + '        CRECUOTA, CREMONLOC, CREMONEXT, CREFPAG, CREAMORT, CREINTERES, CREFLAT, '
         + '        CREMTOCOB, TMONID, TCAMBIO, USUARIO, FREG, HREG, UPROID, DPTOID, UPAGOID, '
         + '        BANCOID, CCBCOID, ASOAPENOM, CIUDID, ARCHIVOFTP, CREOBS, CREANO, FORPAGOID, '
         + '        NROOPE, FOPERAC, NRONABO, AREAID, CREMES, CREMTODEV, FORPAGOABR, TRANSINTID, '
         + '        COBFDEV, COBFRECL, COBFNP, CREESTID, CREESTADO, CREMTOCUO, FLGEXC, FECEXC,  '
         + '        CREDOCPAG, DEVID, FLGSSS, AGENBCOID, FORPAGID, FORPAGABR, DETRCOBID,  '
         + '        USERCOBID, RCOBID, DOCID, FLGTA, NROREFINAN, CREFLAGDEV, FL_DISTRIB,  '
         + '        CREESTANT, CREESTANTDES, NROOPETMP, FOPERACTMP, ASOSITID, FLAGVAR, '
         + '        FLAGVAR2, CNTANOMM, TIPOCONT, CREMTOEXC, FLAGVAR3, FLAGVAR4, FLGINCONSIS,  '
         + '        CREAPLEXC, PERCONTA, TIPNABO, CNTFLAG, OFDESID, NUMDEV, CRECUOTAINI,  '
         + '        CRECUOTAINI2, CRECUOTAINI3 '
         + '   from CRE310 '
         + '  Where ASOID    = ' + QuotedStr(Trim(xAsoId))
         + '    And CREDID   = ' + QuotedStr(Trim(xCreDid))
         + '    And CRECUOTA = ' + QuotedStr(xCreCuota)
         + '    And CREESTID NOT IN (''13'', ''04'') '
         + '  Order By CREFPAG ');
      DM1.cdsDetalle.Open;
      TNumericField(DM1.cdsDetalle.fieldbyname('CREMTOCOB')).DisplayFormat := '###,###.#0';
      TNumericField(DM1.cdsDetalle.fieldbyname('CREMTOCUO')).DisplayFormat := '###,###.#0';
      If DM1.cdsDetalle.RecordCount > 0 Then
      Begin
         fDetPagos := Nil;
         fDetPagos := tfDetPagos.Create(Self);
         fDetPagos.Showmodal;
         fDetPagos.Free;
         DM1.cdsCuotas.GotoBookmark(xRegistro);
      End;
   End;

End;

Procedure TfCronoPag.BitPagarClick(Sender: TObject);
Var
   xAsoId, xCredId, xCreCuota, xCreCuoFin, xfCalc: String;
   xRegistro: TBookmark;
Begin
   If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Copy(DM1.CrgArea(DM1.wUsuario), 6, 2)) = 0 Then
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
      Exit;
   End;

   If (DM1.cdsSolicitud.fieldbyname('CREESTID').AsString = '04') Or
      (DM1.cdsSolicitud.fieldbyname('CREESTID').AsString = '13') Then
   Begin
      MessageDlg('No Se Puede Ingresar Pagos a Creditos ANULADOS/EXTORNADOS !!!', mtError, [mbOk], 0);
      Exit;
   End;

   If dtgPagos.DataSource.DataSet.RecordCount = 0 Then Exit;
   If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '30' Then Exit;
   xRegistro := DM1.cdsCuotas.GetBookmark;
   If vrfMarca(DM1.cdsCuotas) = 'S' Then
   Begin
      DM1.cdsCuotas.GotoBookmark(xRegistro);
      DM1.xCnd := '2';
      xSaldoP := 0.00;
      xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
      xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      xCreCuota := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
      DM1.xSal := 'A';
      DM1.xGrabaExc := 'N';
      fNPago := Nil;
      fNPago := TfNPago.create(self);
      DM1.CrgLisFrmPag;
      If Not fNPago.DBLCTipCob.Enabled Then
      Begin
         MessageDlg('USUARIO NO TIENE NINGUNA FORMAS DE PAGO ASIGNADA !!!! ', mtError, [mbOk], 0);
         Exit;
      End;
      xCreCuoFin := DM1.cdsSolicitud.fieldByname('CRENUMCUO').AsString;
      fNPago.EdtCuotas.Text := 'Cuotas Seleccionadas';
      DM1.cdsCBcos.Close;
      DM1.cdsCBcos.DataRequest('SELECT BANCOID,BANCONOM FROM TGE105 WHERE  NVL(FLAVIGCOB, ''X'') = ''S'' Order By BANCOID');
      DM1.cdsCBcos.Open;
      fNPago.DBLCBanco.LookupTable := DM1.cdsCBcos;
      fNPago.DBLCBanco.LookupField := 'BANCOID';
      fNPago.Showmodal;
      fNPago.free;
      DM1.cdsCuotas.GotoBookmark(xRegistro);
   End
   Else
   Begin
      DM1.cdsCuotas.GotoBookmark(xRegistro);
      DM1.xCnd := '1';
      xSaldoP := 0.00;
      xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
      xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      xCreCuota := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
      DM1.xSal := 'A';
      DM1.xGrabaExc := 'N';
      fNPago := Nil;
      fNPago := TfNPago.create(self);
      DM1.CrgLisFrmPag;
      If Not fNPago.DBLCTipCob.Enabled Then
      Begin
         MessageDlg('USUARIO NO TIENE NINGUNA FORMAS DE PAGO ASIGNADA !!!! ', mtError, [mbOk], 0);
         Exit;
      End;
      xCreCuoFin := DM1.cdsSolicitud.fieldByname('CRENUMCUO').AsString;
      fNPago.EdtCuotas.Text := 'Cuotas :  de la ' + xCrecuota + ' a la ' + xCreCuoFin;
      DM1.cdsCBcos.Close;
      DM1.cdsCBcos.DataRequest('SELECT BANCOID,BANCONOM FROM TGE105 WHERE  NVL(FLAVIGCOB, ''X'') = ''S'' Order By BANCOID');
      DM1.cdsCBcos.Open;
      fNPago.DBLCBanco.LookupTable := DM1.cdsCBcos;
      fNPago.DBLCBanco.LookupField := 'BANCOID';
      fNPago.Showmodal;
      fNPago.free;
      DM1.cdsCuotas.GotoBookmark(xRegistro);
   End;
End;

Function TfCronoPag.vrfMarca(xDataSet: tDataSet): String;
Var
   xMarca: String;
Begin
   xMarca := 'N';
   xDataSet.First;
   While Not xDataSet.Eof Do
   Begin
      If xDataSet.FieldByName('FLAGVAR').AsString = 'S' Then
      Begin
         xMarca := 'S';
         Result := xMarca;
      End;
      xDataSet.Next;
   End;
   Result := xMarca;
End;

Procedure TfCronoPag.dtgPagosDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '21') Or
      (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '23') Or
      (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '26') Or
      (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '24') Then
   Begin
      dtgPagos.Canvas.Font.Color := clGreen;
      dtgPagos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '12') Or
      (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '22') Or
      (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '29') Then
   Begin
      dtgPagos.Canvas.Font.Color := $00FF5BFF;
      dtgPagos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '13') Or
      (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '04') Then
   Begin
      dtgPagos.Canvas.Font.Color := clRed;
      dtgPagos.DefaultDrawDataCell(rect, Field, State);
   End;

   If DM1.cdsCuotas.FieldByName('CREESTID').AsString = '30' Then
   Begin
      dtgPagos.Canvas.Font.Color := clTeal;
      dtgPagos.DefaultDrawDataCell(rect, Field, State);
   End;
End;


// Inicio: SPP_201312_COB   07/10/2013   : Si credito tiene FSC no imprimir cronograma cancelado, imprimir Resumen FSC
Function TfCronoPag.MuestraCreditoConFSC(xAsoid, xCredid : String) : Boolean;
Var
   xSql, xNumDeu : String;
   VCREMTOCOB, VIMP_COB_FSC: Currency;
Begin
   Result := False;
   xSql:='SELECT NUM_DEU, ASOID, CRE_APL_FSC from db2admin.COB_FSC_DEUDA_FSC_DET '
        +'where asoid='''+xAsoid+''' and cre_apl_fsc='''+xCredid+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   if DM1.cdsQry.FieldByName('NUM_DEU').AsString='' then
   begin
      Exit;
   end;
   xNumDeu:=DM1.cdsQry.FieldByName('NUM_DEU').AsString;

   xSql := 'SELECT SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM CRE310 WHERE ASOID = ' + QuotedStr(xAsoid)
      + ' and credid ='''+xCredid+''' '
      + ' AND FORPAGID IN (''23'',''24'') AND CREESTID NOT IN (''04'',''13'', ''99'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
  //SUMATORIA DEL IMPORTE PAGADO AL FSC QUE LUEGO SE COMPARA CON EL IMPORTE APLICADO CON EL FSC
   VCREMTOCOB := DM1.cdsQry.FieldByName('CREMTOCOB').AsFloat;
   xSql:='SELECT SUM(NVL(IMP_COB_DEU,0))IMP_COB_DEU FROM COB_FSC_PAGOS_AL_FSC '
        + 'WHERE ASOID = ' + QuotedStr(xAsoid)
        +  ' and NUM_DEU = ' + QuotedStr(xNumDeu)
        + ' AND EST_COB_COD NOT IN (''04'',''13'',''99'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   VIMP_COB_FSC := DM1.cdsQry.FieldByName('IMP_COB_DEU').AsFloat;
   If VCREMTOCOB - VIMP_COB_FSC > 0 Then
      Result := True;
End;
// Fin: SPP_201312_COB   07/10/2013   : Si credito tiene FSC no imprimir cronograma cancelado, imprimir Resumen FSC


Procedure TfCronoPag.BitPrintClick(Sender: TObject);
Var
   xSql, xAsoId, xCredId, xfVenc, xfCalc: String;
   xSalAnt, xSalVen, xSalDif, xCuoProCob: Currency;
   xCuoPen, xCuoVen, xCuoDif: Integer;
   xRegistro: TBookmark;
   xProvision: Currency;
   // Inicio HPC_201503_COB
   xGasRef:Currency;
   // Fin HPC_201503_COB
   // INICIO : HPC_201510_COB
   xsDescripcionTipo : string;
   // FIN : HPC_201510_COB
Begin
   If dtgPagos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xRegistro := DM1.cdsCuotas.GetBookmark;
   DM1.xSgr := 'REP';
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;

   if MuestraCreditoConFSC( xAsoid, xCredid) then
   begin
// Inicio: SPP_201314_COB : 20/12/2013   : Restricción de Impresión de Reportes del FSC
      //fPagoCuotas.BitPrintClick(Self);
      fPagoCuotas.BitPrintResFSCClick(Self);
// Fin: SPP_201314_COB : 20/12/2013   : Restricción de Impresión de Reportes del FSC
      Exit;
   end;

   //Inicio HPC_201514_COB
      xsql:='Select Asoid,Credid,Crecuota,Nroope,Foperac,Creamort,Creinteres,Creflat,Moncobdesgrav,Cremtocob ' +
            ' From CRE310 where Asoid='''+xAsoid+''' And Credid='''+xCredid+''' And Forpagid=''99'' And Creestid not in (''13'',''04'',''99'') '+
            'Order by crecuota,Foperac';
      DM1.cdsCuentas.Close;
      DM1.cdsCuentas.DataRequest(xsql);
      DM1.cdsCuentas.Open;
      ppDBCCI.DataSource := DM1.dsCuentas;
   //Final HPC_201514_COB

   If DM1.xHis = 'S' Then
   Begin
      lblSalTot.Caption := FormatFloat('###,###.00', DM1.SaldoActual(xAsoId, xCreDid, '1'));
      ppLblCodMod.Caption := EdtCodMod.Text;
      // INICIO : HPC_201510_COB
      // Inicio SPP_201410_COB
      If Length(Trim(DM1.cdsSolicitudA.FieldByName('NUM_REF').AsString)) > 0 Then
      BEGIN
       //  pplblTipCre.Caption := Trim(DM1.cdsSolicitudA.FieldByName('TIP_PRE').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitudA.FieldByName('TIP_PRE').AsString, 'TIPCREDES') + '    [REFINANCIADO]'
           IF ((Trim(DM1.cdsSolicitudA.FieldByName('TIPDESEID').AsString) = '10') AND (Copy(DM1.cdsSolicitudA.FieldByName('CREDID').AsString, 9, 1) = 'A')) then
             xsDescripcionTipo := 'AMPLIACIÓN DE PLAZO'
           ELSE
             xsDescripcionTipo := DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsSolicitudA.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');
           pplblTipCre.Caption := Trim(DM1.cdsSolicitudA.FieldByName('TIP_PRE').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitudA.FieldByName('TIP_PRE').AsString, 'TIPCREDES') + '    ['+xsDescripcionTipo+']'
      END
      Else
         pplblTipCre.Caption := Trim(DM1.cdsSolicitudA.FieldByName('TIP_PRE').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitudA.FieldByName('TIP_PRE').AsString, 'TIPCREDES') + '    [NORMAL]';
      // Fin SPP_201410_COB
      // FIN : HPC_201510_COB
      ppLblEstado.Caption := Trim(lblEstado.Caption);

      // Inicio: COB_201822_HPC
      // Se añade variable fecha de cancelación en el cronograma de pago
      If ppLblEstado.Caption = 'CANCELADO' Then
         ppLblEstado.Caption := ppLblEstado.Caption + ' EL '+DM1.cdsSolicitud.FieldByName('CREFCAN').AsString;
      // Fin: COB_201822_HPC

      pplblRotulo.Visible := False;
      pplblRot02.Visible := False;
      ppLblTipDes.Visible := False;
      pplblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
      pplblNumPre.Caption := Copy(DM1.cdsSolicitudA.FieldByName('CREDID').AsString, 11, 5);
      pplblFecPre.Caption := DM1.cdsSolicitudA.FieldByName('CREFOTORG').AsString;
      pplblUse.Caption := Trim(EdtDesUse.Text);
      pplblMonto.Caption := FormatFloat('###,###.#0', DM1.cdsSolicitudA.FieldByName('CREMTOOTOR').AsFloat);
      pplblNumCuo.Caption := FormatFloat('###,###', DM1.cdsSolicitudA.FieldByName('CRENUMCUO').AsFloat);
      ppLblInt.Caption := FormatFloat('###.#0', DM1.cdsSolicitudA.FieldByName('TAS_INT').AsFloat);
      ppLblFlat.Caption := FormatFloat('###.#0', DM1.cdsSolicitudA.FieldByName('TAS_GAS').AsFloat);
      // Inicio: DPP_201211_COB
      ppLblDesgravamen.Caption := FormatFloat('##0.000', DM1.cdsSolicitudA.FieldByName('TASFONDES').AsFloat);
      // Fin: DPP_201211_COB
      pplblTipCli.Caption := DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitudA.FieldByName('TIP_PRE').AsString, 'ASOTIPID') + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitudA.FieldByName('TIP_PRE').AsString, 'ASOTIPID'), 'ASOTIPDES');
      ppLblOriOto.Caption := Copy(DM1.cdsSolicitudA.FieldByName('CREDID').AsString, 1, 2) + ' -  ' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(Copy(DM1.cdsSolicitudA.FieldByName('CREDID').AsString, 1, 2))), 'APO110', 'OFDESNOM');
      ppLblCuenta.Caption := DM1.cdsAso.FieldByName('ASONCTA').AsString + ' - [' + DM1.cdsAso.FieldByName('SITCTA').AsString + ']';
   End
   Else
   Begin
      lblSalTot.Caption := FormatFloat('###,###.00', DM1.SaldoActual(xAsoId, xCreDid, '1'));
      ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      // INICIO : HPC_201510_COB
      // Inicio SPP_201410_COB
      If Length(Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)) > 0 Then
      BEGIN
//         pplblTipCre.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    [REFINANCIADO]'
        if ((Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) = '10') AND (Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 9, 1) = 'A')) then
           xsDescripcionTipo := 'AMPLIACIÓN DE PLAZO'
        else
           xsDescripcionTipo := DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');
        pplblTipCre.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    ['+xsDescripcionTipo+']'
      END
      Else
         pplblTipCre.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsSolicitud.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    [NORMAL]';
      // Fin SPP_201410_COB
      // FIN : HPC_201510_COB
      ppLblEstado.Caption := Trim(lblEstado.Caption);

      // Inicio: COB_201822_HPC
      // Se añade variable fecha de cancelación en el cronograma de pago
      If ppLblEstado.Caption = 'CANCELADO' Then
         ppLblEstado.Caption := ppLblEstado.Caption + ' EL '+DM1.cdsSolicitud.FieldByName('CREFCAN').AsString;
      // Fin: COB_201822_HPC

      pplblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
      ppLblCuenta.Caption := DM1.cdsAso.FieldByName('ASONCTA').AsString + ' - [' + DM1.cdsAso.FieldByName('SITCTA').AsString + ']';
      pplblNumPre.Caption := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   //Inicio HPC_201614_COB
   //Determina el número de prestamo
      If Length(trim(DM1.cdsSolicitud.FieldByName('CREIDORI').AsString))>0 Then
           pplblNumPre.Caption := DM1.cdsSolicitud.FieldByName('CREIDORI').AsString
      Else pplblNumPre.Caption := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   //Final HPC_201614_COB
      pplblFecPre.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
      ppLblOriOto.Caption := Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2) + ' -  ' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 1, 2))), 'APO110', 'OFDESNOM');
      pplblUse.Caption := Trim(EdtDesUse.Text);
      pplblMonto.Caption := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
      pplblNumCuo.Caption := FormatFloat('###,###', DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsFloat);
      ppLblInt.Caption := FormatFloat('##0.#0', DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat);
      ppLblFlat.Caption := FormatFloat('##0.#0', DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat);
      // Inicio: DPP_201211_COB
      ppLblDesgravamen.Caption := FormatFloat('##0.000', DM1.cdsSolicitud.FieldByName('TASFONDES').AsFloat);
      // Fin: DPP_201211_COB
      // Muestra la situación (Tipo de Asociado) con el cual se generó el crédito
      pplblTipCliOtorg.Caption := DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString, 'ASOTIPDES');
      pplblTipCli.Caption := DM1.cdsAso.fieldbyname('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsAso.fieldbyname('ASOTIPID').AsString, 'ASOTIPDES');
      // INICIO : HPC_201510_COB
      if ((Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) = '10') AND (Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 9, 1) = 'A')) then
         ppLblTipDes.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) + '- AMPLIACIÓN DE PLAZO'
      else
         ppLblTipDes.Caption := Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString) + '-' + DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');
      // FIN : HPC_201510_COB
   End;
   // Inicio HPC_201503_COB
   DM1.cdsCuotas.First;
   xSalAnt := 0;
   xSalVen := 0;
   xSalDif := 0;
   xCuoProCob := 0;
   xCuoVen := 0;
   xCuoPen := 0;
   xCuoDif := 0;
   xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   xGasRef := 0;
   While Not DM1.cdsCuotas.Eof Do
   Begin
     // Inicio: SPP_201308_COB - 27/05/2013    : Problemas por Columnas de Desgravamen y Pago Diferido
      If DM1.xHis <> 'S' Then
      Begin
        If (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString <> DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) And ((DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27')) Then
        Begin
           xCuoDif := xCuoDif + 1;
           xSalDif := xSalDif + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
        End;
      end;
      // Fin: SPP_201308_COB       : Reportes de la Cobranza por ONP a cesantes por la Ley 19990

      If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '14') Then
         xCuoProCob := xCuoProCob + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);


     // Inicio: SPP_201308_COB - 27/05/2013    : Problemas por Columnas de Desgravamen y Pago Diferido
      If DM1.xHis <> 'S' Then
      Begin
         If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27') Then
         Begin
            xfVenc := Trim(DM1.cdsCuotas.fieldbyname('CREANO').AsString + DM1.cdsCuotas.fieldbyname('CREMES').AsString);
            If (xfVenc > xfCalc) And (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) Then
            Begin
               xSalAnt := xSalAnt + (DM1.cdsCuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency + DM1.cdsCuotas.fieldbyname('MONPACDESGRAV').AsCurrency) - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency;
               xCuoPen := xCuoPen + 1;
            End
            Else
               If DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString Then
               Begin
                  xSalVen := xSalVen + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
                  xCuoVen := xCuoVen + 1;
               End;
         End;
      end;
      // Fin: SPP_201308_COB       : Reportes de la Cobranza por ONP a cesantes por la Ley 19990
      xGasRef := xGasRef + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency ;
      DM1.cdsCuotas.Next;
   End;
// Inicio HPC_201720_COB
   // Exportación a Excel de los cronogramas de Pago
   If chkExcel.Checked Then
   Begin
      dtgData.DataSource:=DM1.dsCuotas;
      DM1.HojaExcel('Cronograma_Pago',dtgData.DataSource,dtgData);
      Screen.Cursor := crDefault;
      Exit;
   End;
// Fin HPC_201720_COB

   lblDif.Caption := '(' + FormatFloat('###,##0', xCuoDif) + ')';
   lblVen.Caption := '(' + FormatFloat('###,##0', xCuoVen) + ')';
   lblPen.Caption := '(' + FormatFloat('###,##0', xCuoPen) + ')';
   lblTot.Caption := '(' + FormatFloat('###,##0', xCuoVen + xCuoPen + xCuoDif) + ')';

   If Copy(xCredId,9,1)='R' Then
      Begin
        lblMonGasRef.Caption:=FormatFloat('##,###,##0.#0', xGasRef);
        lblGas02.Caption:='REF(S/.)';
        lblGasRef.Visible:=True;
        lblMonGasRef.Visible:=True;
      End;
   // Fin HPC_201503_COB
   If DM1.xHis = 'S' Then
   Begin
      If DM1.cdsSolicitudA.FieldByName('DSC_NAC').AsString = 'N' Then
         ppLNota2.Caption := 'POR EL "BANCO DE LA NACION"'
      Else
         ppLNota2.Caption := 'POR "PLANILLA DE HABERES"';
   End
   Else
   Begin
      If DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString = '18' Then
         ppLNota2.Caption := 'POR EL "BANCO DE LA NACION"'
      Else
         ppLNota2.Caption := 'POR "PLANILLA DE HABERES"';
   End;
   ppLblCuoDif.Caption := FormatFloat('###,###.00', xSalDif);
   ppLblCuoVen.Caption := FormatFloat('###,###.00', xSalVen);
   pplblCuoPen.Caption := FormatFloat('###,###.00', xSalAnt);
   pplblMonPag.Caption := FormatFloat('###,###.00', xSalVen + xSalAnt + xSalDif);
   DM1.cdsAbonoCuotas.Close;
   xSQL := 'SELECT COUNT(ASOID) AS CUOPEN '
      + 'FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(Trim(xAsoId))
      + '  AND CREDID=' + QuotedStr(Trim(xCreDid))
      + '  AND CREESTID IN (''02'',''11'',''27'') ';
   DM1.cdsAbonoCuotas.DataRequest(xSQL);
   DM1.cdsAbonoCuotas.Open;
   ppLblCuotas.Caption := '( ' + lblTot.Caption + '-Cuotas Por Pagar )';
   DM1.cdsAbonoCuotas.Close;
   DM1.cdsAsoX.Close;
   // Inicio: DPP_201211_COB
   If DM1.xHis = 'N' Then
      // Inicio: HPC_201701_COB
      // Se modifica el Qry para la impresión del cronograma de pagos
      // xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CREMTO, '
      // + '       CASE WHEN CREFVEN<>CREFVENINI THEN ''(D)'' ELSE NULL END AS REPRO ,  '
      // + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREAMORT,0) ELSE NVL(CRECAPITAL,0) END AS AMORT, '
      // + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREINTERES,0) ELSE NVL(CREMTOINT,0) END AS INTER, '
      // + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREFLAT,0) ELSE NVL(CREMTOFLAT,0) END AS GASTO, '
      // + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(MONPACDESGRAV,0) ELSE NVL(MONCOBDESGRAV,0) END AS DESGRAVAMEN, '
      // + '       NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) CREMTOEXC,CREESTADO '
      // + '  FROM CRE302 '
      // + ' WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid))
      // + ' ORDER BY CREDID,CRECUOTA'
// Inicio: HPC_201710_COB
// Se añade la columa mostrando si la cuota fue reprogramación exogena "DE" o rescate "(D)"
      // xSQL := 'SELECT A.ASOID, A.CREDID, A.CRECUOTA, A.CREFVEN, A.CREMTO, CASE WHEN B.TIPGEN IS NOT NULL THEN ''DE'' ELSE CASE WHEN A.CREFVEN <> A.CREFVENINI THEN ''(D)'' ELSE NULL END END REPRO,'
      // +' CASE WHEN NVL(A.CREMTOCOB,0)=0 THEN NVL(A.CREAMORT,0) ELSE NVL(A.CRECAPITAL,0) END AS AMORT, CASE WHEN NVL(A.CREMTOCOB,0)=0 THEN NVL(A.CREINTERES,0) ELSE NVL(A.CREMTOINT,0) END AS INTER,'
      // +' CASE WHEN NVL(A.CREMTOCOB,0)=0 THEN NVL(A.CREFLAT,0) ELSE NVL(A.CREMTOFLAT,0) END AS GASTO, CASE WHEN NVL(A.CREMTOCOB,0)=0 THEN NVL(A.MONPACDESGRAV,0) ELSE NVL(A.MONCOBDESGRAV,0) END AS DESGRAVAMEN,'
      // +' NVL(A.CREMTOCOB,0) CREMTOCOB, NVL(A.CREMTOEXC,0)-NVL(A.CREAPLEXC,0) CREMTOEXC, A.CREESTADO FROM CRE302 A, COB_REP_CUO_CAR B'
      // +' WHERE A.ASOID = '+QuotedStr(Trim(xAsoId))+' AND A.CREDID = '+QuotedStr(Trim(xCreDid))
      // +' AND A.ASOID = B.ASOID(+) AND A.CREDID = B.CREDID(+) AND A.CRECUOTA = B.CRENUMCUOREP(+)'
      // +' AND B.TIPGEN(+) IS NOT NULL AND ESTREG(+) IS NOT NULL'
      // +' ORDER BY A.CREDID,A.CRECUOTA'
      // Fin: HPC_201701_COB
      xSQL := 'SELECT A.ASOAPENOM, A.ASOID, A.CREDID, A.CRECUOTA, A.CREFVEN, A.CREMTO,'
      +' CASE WHEN NVL(A.FLAREPEXO,''X'') = ''S'' THEN ''DE'' ELSE CASE WHEN A.CREFVEN <> A.CREFVENINI THEN ''(D)'' ELSE NULL END END REPRO,'
      +' CASE WHEN NVL(A.CREMTOCOB,0)=0 THEN NVL(A.CREAMORT,0) ELSE NVL(A.CRECAPITAL,0) END AS AMORT,'
      +' CASE WHEN NVL(A.CREMTOCOB,0)=0 THEN NVL(A.CREINTERES,0) ELSE NVL(A.CREMTOINT,0) END AS INTER,'
      +' CASE WHEN NVL(A.CREMTOCOB,0)=0 THEN NVL(A.CREFLAT,0) ELSE NVL(A.CREMTOFLAT,0) END AS GASTO,'
      +' CASE WHEN NVL(A.CREMTOCOB,0)=0 THEN NVL(A.MONPACDESGRAV,0) ELSE NVL(A.MONCOBDESGRAV,0) END AS DESGRAVAMEN,'
      +' NVL(A.CREMTOCOB,0) CREMTOCOB, NVL(A.CREMTOEXC,0)-NVL(A.CREAPLEXC,0) CREMTOEXC, A.CREESTADO'
      +' FROM CRE302 A WHERE A.ASOID = '+QuotedStr(Trim(xAsoId))+' AND A.CREDID = '+QuotedStr(Trim(xCreDid))
      +' ORDER BY A.CREDID,A.CRECUOTA'
// Fin: HPC_201710_COB
   Else
// Inicio: SPP_201308_COB - 27/05/2013    : Problemas por Columnas de Desgravamen y Pago Diferido
      xSQL := 'SELECT A.ASOID, A.CREDID, SUBSTR(FEC_VEN,1,4) CREANO, '
         + '       SUBSTR(FEC_VEN,5,2) CREMES,TO_DATE(FEC_VEN,''YYYY-MM-DD'') CREFVEN, '
         + '       AMO_PAG AMORT, INT_PAG INTER,GAS_PAG GASTO, NVL(DESGRAV_PAG,0) DESGRAVAMEN, NVL(MON_PAG,0) AS CREMTOCOB, '
         + '       NVL(MON_CUO,0) AS CREMTO, '' '' REPRO, TO_NUMBER(ITE_CUO) CRECUOTA, '
         + '       CASE WHEN A.CREESTADO IS NOT NULL THEN A.CREESTADO ELSE B.CREESTADO END CREESTADO, '
         + '       CASE WHEN A.CREESTID IS NOT NULL THEN A.CREESTID ELSE B.CREESTID END CREESTADO, '
         + '       AMO_ACT CREAMORT,GAS_ACT CREFLAT,'' '' FLAGVAR,NVL(EXC_PAG,0) CREMTOEXC '
         + ' FROM PAGO A, PREST B '
         + ' Where A.ASOID =' + QuotedStr(Trim(xAsoId)) + ' And A.CREDID=' + QuotedStr(Trim(xCreDid))
         + '   and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) '
         + ' Order By CREDID, CRECUOTA ';
// Fin: SPP_201308_COB - 27/05/2013    : Problemas por Columnas de Desgravamen y Pago Diferido

   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   ppLblTitulo.Caption := 'CRONOGRAMA DE PAGOS N°: ' + pplblNumPre.Caption + '    al: ' + DateToStr(DM1.FechaSys);
   If ChkFoto.Checked = True Then
   Begin
      ppShpImg.Visible := True;
      ppImage1.Visible := True;
      DM1.CargaImagenesDNI(trim(DM1.cdsAso.FieldByName('ASODNI').AsString), 'FotoCronog');
   End
   Else
   Begin
      ppShpImg.Visible := False;
      ppImage1.Visible := False;
   End;
   ppLblUser.Caption := 'Impreso por   : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
   ppLblApro.Caption := 'Otorgado por  : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('USUARIO').AsString)), 'TGE006', 'USERNOM');

   If chkInterno.Checked Then
   Begin
      ppLabel81.Visible := true;
      ppLabel82.Visible := true;
      ppLblRegimen.Visible := true;
      ppLblRegimen.Caption := DM1.CrgDescrip('REGPENID=' + DM1.cdsAso.FieldByName('REGPENID').AsString, 'APO105', 'REGPENDES');
      ppLabel83.Visible := true;
      ppLabel84.Visible := true;
      ppLblDirDom.Visible := true;
      ppLblDirDom.Caption := Copy(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASODIR'), 1, 47);
      ppLabel85.Visible := true;
      ppLabel86.Visible := true;
      ppLblTelefono.Visible := true;
      ppLblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTELF1');
      ppLabel87.Visible := true;
      ppLabel88.Visible := true;
      ppLblDiasAtraso.Visible := true;
      xSQL := 'SELECT MAX(TRUNC(SYSDATE) - CREFVEN) DIASATRASO'
         + ' FROM CRE302 '
         + ' Where ASOID = ' + QuotedStr(Trim(xAsoId)) + ' And CREDID = ' + QuotedStr(Trim(xCreDid))
         + '    AND CREESTID IN (''02'', ''11'', ''14'', ''27'')'
         + '    AND (NVL(CREMTO,0) - NVL(CREMTOCOB,0)) > 0'
         + ' Order By CREDID,CRECUOTA ';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;

      If (DM1.cdsQry6.RecordCount > 0) And (DM1.cdsQry6.FieldByName('DIASATRASO').AsInteger > 0) Then
      Begin
         ppLblDiasAtraso.Caption := DM1.cdsQry6.FieldByName('DIASATRASO').AsString;
      End
      Else
      Begin
         ppLblDiasAtraso.Caption := '0';
      End;
      DM1.cdsQry6.Close;

      If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO' Then
      Begin
         ppLabel89.Visible := true;
         ppLabel90.Visible := true;
         ppLblFirmoAutorizacion.Visible := true;
         If DM1.cdsAso.FieldByName('AUTDESAPO').AsString = 'S' Then
            ppLblFirmoAutorizacion.Caption := 'Si'
         Else
            ppLblFirmoAutorizacion.Caption := 'No';
      End
      Else
      Begin
         ppLabel89.Visible := false;
         ppLabel90.Visible := false;
         ppLblFirmoAutorizacion.Visible := false;
      End;

      ppLabel91.Visible := true;
      ppLabel92.Visible := true;
      ppLblProvision.Visible := true;
      xProvision := CalculaProvision(xAsoId);
      ppLblProvision.Caption := FormatFloat('###,##0.00', xProvision);
   End
   Else
   Begin
      ppLabel81.Visible := false;
      ppLabel82.Visible := false;
      ppLblRegimen.Visible := false;
      ppLabel83.Visible := false;
      ppLabel84.Visible := false;
      ppLblDirDom.Visible := false;
      ppLabel85.Visible := false;
      ppLabel86.Visible := false;
      ppLblTelefono.Visible := false;
      ppLabel87.Visible := false;
      ppLabel88.Visible := false;
      ppLblDiasAtraso.Visible := false;
      ppLabel89.Visible := false;
      ppLabel90.Visible := false;
      ppLblFirmoAutorizacion.Visible := false;
      ppLabel91.Visible := false;
      ppLabel92.Visible := false;
      ppLblProvision.Visible := false;
   End;

   //Incio HPC201514_COB
   ppREstCta.Print;
   //ppDesigner1.Report := ppREstCta;
   //ppDesigner1.ShowModal;
   //Final HPC201514_COB   
   ppREstCta.Cancel;
   DM1.cdsAsoX.Close;
   DM1.cdsFormaPago.Close;
   DM1.cdsCuotas.GotoBookmark(xRegistro);
   dtgPagos.SetFocus;
End;

Procedure TfCronoPag.BitBLoqClick(Sender: TObject);
Var
   xRegistro: TBookmark;
   xAsoId, xCreDid, xCreCuota, xSQL: String;
   xfCalc, xfVen: String;
   candes, canblo: Integer;
Begin
   candes := 0;
   canblo := 0;
   DM1.cdsCuotas.First;
   While Not DM1.cdsCuotas.Eof Do
   Begin
      If DM1.cdsCuotas.FieldByName('FLAGVAR').AsString = 'S' Then
      Begin
         If DM1.cdsCuotas.FieldByName('CREESTID').AsString = '19' Then
         Begin
            candes := candes + 1;
         End;

         If (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '02') Or
            (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '11') Or
            (DM1.cdsCuotas.FieldByName('CREESTID').AsString = '27') Then
         Begin
            canblo := canblo + 1;
         End;
      End;
      DM1.cdsCuotas.Next;
   End;
   If (candes = 0) And (canblo = 0) Then
   Begin
      MessageDlg('No ha seleccionado ninguna cuota', mtInformation, [mbOk], 0);
      Exit;
   End;
   If (candes <> 0) And (canblo <> 0) Then
   Begin
      MessageDlg('Solo seleccione cuotas para bloquear o desbloquear, nunca ambas', mtInformation, [mbOk], 0);
      Exit;
   End;

   If candes <> 0 Then DM1.xSgr := 'DES';
   If canblo <> 0 Then DM1.xSgr := 'BLO';

   Try
      Fmanblo := TFmanblo.create(Self);
      Fmanblo.ShowModal;
   Finally
      Fmanblo.Free;
   End;
End;

Procedure TfCronoPag.BitDetPagClick(Sender: TObject);
Var
   xSQL, xAsoId, xCreDid: String;
   //Inicio HPC_201514_COB
   xWhere:String;
   //Final HPC_201514_COB
Begin

   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   //Inicio HPC_201514_COB
   If chkCCI.Checked Then
     xWhere := 'And Forpagid=''99'' '
   Else
     xWhere := '';
   //Final HPC_201514_COB

   Try
      fDetReg := TfDetReg.Create(self);
      xSQL := 'SELECT CRECUOTA,CREFVEN,CREFPAG,FORPAGABR,CREDOCPAG,NVL(DEVOL,0) DEVOL, '
         + '       NVL(PAGOS,0) PAGOS,FREG, CCBCOID, BANCONOM,NROOPE,FOPERAC '
         + 'FROM (SELECT A.CRECUOTA,CREFVEN,A.CREFPAG,A.FORPAGABR,A.CREDOCPAG, '
         + '             CASE WHEN FORPAGABR=''DEV'' THEN NVL(A.CREMTOCOB,0) END DEVOL, '
         + '             CASE WHEN FORPAGABR<>''DEV'' THEN NVL(A.CREMTOCOB,0) END PAGOS,'
         + '             A.FREG, A.CCBCOID, C.BANCONOM,A.NROOPE,A.FOPERAC '
         + '      FROM CRE310 A,CRE302 B, TGE105 C '
         + '      WHERE A.ASOID=' + QuotedStr(xAsoId) + ' AND A.CREDID=' + QuotedStr(xCreDid)
         + '        AND A.CREESTID NOT IN (''13'', ''04'')  AND A.ASOID=B.ASOID '
         + '        AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
     //Inicio HPC_201514_COB
         + '        AND A.BANCOID = C.BANCOID(+) '+xWhere+' ) '
     //Final HPC_201514_COB
         + 'ORDER BY FREG DESC';
      DM1.cdsCEdu.Close;
      DM1.cdsCEdu.DataRequest(xSQL);
      DM1.cdsCEdu.Open;
      TNumericField(DM1.cdsCEdu.fieldbyname('PAGOS')).DisplayFormat := '###,##0.#0';
      TNumericField(DM1.cdsCEdu.fieldbyname('DEVOL')).DisplayFormat := '###,##0.#0';

      If DM1.cdsCEdu.RecordCount > 0 Then
      Begin

         xSql := 'SELECT CRECUOTA,TO_CHAR(CREFVEN,''DD/MM/YYYY'')CREFVEN,TO_CHAR(CREFPAG,''DD/MM/YYYY'')CREFPAG,FORPAGABR,CREDOCPAG, NVL(PAGOS,0) PAGOS,NVL(DEVOL,0) DEVOL,'
            + '       NVL(APLIC,0)APLIC,CCBCOID, BANCONOM,NROOPE,TO_CHAR(FOPERAC,''DD/MM/YYYY'')FOPERAC,TO_CHAR(FREG,''DD/MM/YYYY'')FREG,USUARIO, '
            + 'CASE WHEN TRIM(SUBSTR(F_MES(RCOBMES),1,3)||''-''||RCOBANO)=''-'' THEN '' '' ELSE TRIM(SUBSTR(F_MES(RCOBMES),1,3)||''-''||RCOBANO) END RCOBPER, '
            + 'CASE WHEN FORPAGABR=''APL'' THEN SUBSTR(ORICREDID,9,7) END ORICREDID,'
            + 'CASE WHEN FORPAGABR=''APL'' THEN ORICUO    END ORICUO '
            + 'FROM (SELECT A.CRECUOTA,CREFVEN,A.CREFPAG,A.FORPAGABR,A.CREDOCPAG,D.RCOBMES,D.RCOBANO,'
            + '             CASE WHEN FORPAGABR=''DEV'' THEN NVL(A.CREMTOCOB,0)  END DEVOL,'
            + '             CASE WHEN FORPAGABR=''APL'' THEN NVL(A.CREMTOCOB,0)  END APLIC,'
            + '             CASE WHEN FORPAGABR NOT IN (''DEV'',''APL'') THEN NVL(A.CREMTOCOB,0) END PAGOS,'
            + '             A.FREG, A.CCBCOID,C.BANCONOM,A.NROOPE, SUBSTR(CREOBS,17,15) ORICREDID,'
            + '             SUBSTR(CREOBS,33,3)ORICUO,A.FOPERAC,A.USUARIO '
            + '      FROM CRE310 A,CRE302 B, TGE105 C ,COB302 D '
            + '      WHERE A.ASOID=' + QuotedStr(xAsoId) + ' AND A.CREDID=' + QuotedStr(xCreDid)
            + '            AND A.CREESTID NOT IN (''13'', ''04'')  AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
            + '            AND A.CRECUOTA=B.CRECUOTA AND A.BANCOID = C.BANCOID(+)  '
         //Inicio HPC_201514_COB
            + '            AND A.RCOBID=D.RCOBID(+) AND A.DETRCOBID=D.DETRCOBID(+) '+xWhere+' ) '
         //Fin HPC_201514_COB
            + 'ORDER BY CRECUOTA,CREFVEN,FREG DESC,CREFPAG';
         DM1.cdsCViv.Close;
         DM1.cdsCViv.DataRequest(xSql);
         DM1.cdsCViv.Open;
         DM1.cdsCViv.IndexFieldNames := 'CRECUOTA;CREFVEN;FREG;CREFPAG';
         fDetReg.Showmodal;

      End;
   Finally
      DM1.cdsCEdu.Close;
      fDetReg.free;
   End;
End;

Procedure TfCronoPag.ChkHistoricoClick(Sender: TObject);
Begin
   If ChkHistorico.Checked Then
   Begin
      BitPrintEncuesta.Visible := True;
      BitEncuesta.Visible := False;
   End
   Else
   Begin
      BitPrintEncuesta.Visible := False;
      BitEncuesta.Visible := True;
   End;
End;

Procedure TfCronoPag.BitPrintEncuestaClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   DM1.cdsProvin.Close;
End;

Procedure TfCronoPag.BitEncuestaClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
      Exit;
   End;
   xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
   xSQL := 'SELECT ASOID FROM COB907 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND FREG=' + QuotedStr(DateToStr(DM1.FechaSys));
   DM1.cdsCViv.Close;
   DM1.cdsCViv.DataRequest(xSQL);
   DM1.cdsCViv.Open;
   If DM1.cdsCViv.RecordCount > 0 Then
   Begin
      MessageDlg(' Solo Puede Realizar Una ENCUESTA Por Dia Al Mismo ASOCIADO  ', mtError, [mbOk], 0);
      DM1.cdsCViv.Close;
      Exit;
   End;
   DM1.cdsCViv.Close;
   Try
      fEncuesta := TfEncuesta.Create(self);
      xSQL := 'SELECT ID,DESCRIPCION FROM COB904 WHERE ID<>''99'' AND ESTREG =''S'' ORDER BY ID';
      DM1.cdsTMoneda.Close;
      DM1.cdsTMoneda.DataRequest(xSQL);
      DM1.cdsTMoneda.Open;
      xSQL := 'SELECT ID,DESCRIPCION FROM COB905 WHERE ID<>''99'' AND ESTREG =''S'' ORDER BY ID';
      DM1.cdsTPension.Close;
      DM1.cdsTPension.DataRequest(xSQL);
      DM1.cdsTPension.Open;
      xSQL := 'SELECT ID,DESCRIPCION FROM COB906 WHERE ID<>''99'' AND ESTREG =''S'' ORDER BY ID';
      DM1.cdsTransacciones.Close;
      DM1.cdsTransacciones.DataRequest(xSQL);
      DM1.cdsTransacciones.Open;
      fEncuesta.Showmodal;
   Finally
      DM1.cdsTMoneda.Close;
      DM1.cdsTPension.Close;
      DM1.cdsTransacciones.Close;
      fEncuesta.free;
   End;
End;

Procedure TfCronoPag.Botones(xLogic: Boolean);
Begin
   grpEncuesta.Visible := False;
   BitPrintEncuesta.Visible := False;

   BitProc.Visible := xLogic;
   BitBLoq.Visible := xLogic;
     BitPagar.Enabled:= False ;
   BitEncuesta.Visible := xLogic;
   BitDetPag.Visible := xLogic;
   BitCorrige.Visible := xLogic;
   Bitmuehis.Visible := xLogic;
End;

Procedure TfCronoPag.BitCorrigeClick(Sender: TObject);
Var
   xExc302, xExc310, xMonto, xCremToCob: Currency;
   xSQL, xAsoid, xCreDid, xCreCuota: String;
Begin
   If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '30' Then Exit;
   If DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString > '31/12/1996' Then
   Begin
      MessageDlg('LA FECHA DE OTORGAMIENTO DEL CREDITO ES POSTERIOR AL 31/12/1996  !!!', mtError, [mbOk], 0);
      Exit;
   End;

   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   xCreCuota := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
   xExc302 := DM1.cdsCuotas.FieldByName('CREMTOEXC').AsCurrency;
   If xExc302 > 0 Then
   Begin
      xCremToCob := DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency;
      xSQL := 'SELECT SUM(NVL(CREMTOCOB,0)) PAGADO FROM CRE310 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CRECUOTA=' + QuotedStr(xCreCuota) + ' AND CREESTID NOT IN (''13'',''04'') ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         xMonto := DM1.cdsQry.FieldByName('PAGADO').AsCurrency;
         If xMonto > xCremToCob Then
         Begin
            xExc310 := xMonto - xCremToCob;
            xSQL := 'UPDATE CRE310 '
               + 'SET CREMTOEXC=' + FloatToStr(xExc310) + ',CREAPLEXC=0 '
               + 'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid)
               + '  AND CRECUOTA=' + QuotedStr(xCreCuota)
               + '  AND CREESTID NOT IN (''13'',''04'') AND ROWNUM=1 ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            MessageDlg('EXCESO ACTUALIZADO PARA APLICACION !!!', mtInformation, [mbOk], 0);
         End;
      End;
   End
   Else
   Begin
      MessageDlg('NO EXISTE EXCESO POR CORREGIR !!!', mtError, [mbOk], 0);
      Exit;
   End;
End;

Procedure TfCronoPag.BitmuehisClick(Sender: TObject);
Var
   xSql: String;
Begin
// Historico de bloqueos
   DM1.xSgr := 'HIS';
   xSql := 'SELECT A.FECBLO, A.USUBLO, DECODE(A.TIPDAT, ''B'', ''BLOQUEADO'', ''D'', '
      + '       ''DESBLOQUEADO'') TIPO, A.CREDID, A.CRECUOTA, B.DESTIP, A.CODTIP, '
      + '       A.DESMEN, A.TIPDAT, A.CREMTO, A.CREFVEN FROM COB_LOG_BLO A, COB_TIP_BLO_CUO B '
      + 'WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByname('ASOID').AsString)
      + '  AND CREDID = ' + QuotedStr(DM1.cdsCuotas.FieldByname('CREDID').AsString)
      + '  AND A.CODTIP = B.CODTIP AND A.TIPDAT = B.TIPDAT ORDER BY FECBLO DESC';
   DM1.cdsDFam.Close;
   DM1.cdsDFam.DataRequest(xSql);
   DM1.cdsDFam.Open;
   If DM1.cdsDFam.RecordCount > 0 Then
   Begin
      Try
         Fhisblo := TFhisblo.create(Self);
         Fhisblo.ShowModal;
      Finally
         Fhisblo.Free;
      End;
   End;
End;

Procedure TfCronoPag.BitEnvioPorcentualClick(Sender: TObject);
Var
   xSQL, xAsoId, xCreDid, xBlqCaj: String;
Begin
   xAsoId := DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsCuotas.FieldByName('CREDID').AsString;
   xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CRESALDO,PORENVIO,CREMONENV,CREESTID,CREESTADO,OBSENVIO,USUARIO,HREG FROM COB_CUO_DES_PRO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''02'',''11'',''27'') ORDER BY CREDID,CRECUOTA';
   xBlqCaj := 'N';
   If DM1.CountReg(xSQL) > 0 Then
   Begin
      xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CRESALDO,PORENVIO,CREMONENV,CREESTID,CREESTADO,OBSENVIO,USUARIO,HREG FROM COB_CUO_DES_PRO WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid) + ' AND CREESTID IN (''02'',''11'',''27'') ORDER BY CREDID,CRECUOTA';
      xBlqCaj := 'S';
   End
   Else
   Begin
      xSQL := 'SELECT ASOID,CREDID,CREANO,CREMES,CREFVEN,CRECAPITAL,CREMTOINT,CREMTOFLAT, '
         + '       NVL(CREMTO,0)-NVL(CREMTOCOB,0) CRESALDO,0 PORENVIO,0 CREMONENV, '
         + '       NVL(CREMTOCOB,0) AS CREMTOCOB, NVL(CREMTO,0) AS CREMTO, CRECUOTA, '
         + '       CREESTADO,CREESTID,CREAMORT,CREFLAT,FLAGVAR, '
         + '       NVL(CREMTOEXC,0) CREMTOEXC,NVL(CREAPLEXC,0) CREAPLEXC,PERCOB '
         + 'FROM CRE302 '
         + 'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid)
         + '  AND FLAGVAR=''S'' AND CREESTID IN (''02'',''11'',''27'') '
         + 'ORDER BY CREDID,CRECUOTA';
   End;
   Try
      fSelDesPorc := TfSelDesPorc.Create(self);
      If xBlqCaj = 'S' Then
      Begin
         fSelDesPorc.mObsEnv.ReadOnly := True;
         fSelDesPorc.dbsPorc.Enabled := False;
         fSelDesPorc.BitGrabar.Enabled := False;
         fSelDesPorc.BitAnular.Enabled := True;
      End;
      DM1.cdsDcuotas.Close;
      DM1.cdsDcuotas.DataRequest(xSQL);
      DM1.cdsDcuotas.Open;
      TNumericField(DM1.cdsDcuotas.fieldbyname('CRESALDO')).DisplayFormat := '###,##0.#0';
      TNumericField(DM1.cdsDcuotas.fieldbyname('PORENVIO')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsDcuotas.fieldbyname('CREMONENV')).DisplayFormat := '###,##0.#0';
      If DM1.cdsDcuotas.RecordCount > 0 Then
      Begin
         If xBlqCaj = 'S' Then fSelDesPorc.mObsEnv.Text := DM1.cdsDcuotas.FieldByName('OBSENVIO').AsString;
         fSelDesPorc.lblNumCre.Caption := Copy(Trim(EdtCreDid.Text), 7, 2) + '-' + Copy(Trim(EdtCreDid.Text), 11, 5) + '-' + Copy(Trim(EdtCreDid.Text), 3, 4);
         fSelDesPorc.lblTipCre.Caption := EdtDesTip.Text;
         fSelDesPorc.Showmodal;
      End;
   Finally
      DM1.cdsDcuotas.Close;
      fSelDesPorc.free;
   End;
End;

Procedure TfCronoPag.dtgPagosMouseUp(Sender: TObject; Button: TMouseButton;
   Shift: TShiftState; X, Y: Integer);
Var
   XCRECUOTA, XPERCOB: String;
Begin
   XCRECUOTA := '';
   XPERCOB := '';
   DtgPagos.ShowHint := fALSE;
   If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '14') Or
      (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '21') Or
      (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '23') Or
      (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '24') Or
      (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '26') Or
      (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27') Then
   Begin
      XCRECUOTA := DM1.cdsCuotas.fieldbyname('CRECUOTA').AsString;
      XPERCOB := DM1.cdsCuotas.fieldbyname('PERCOB').AsString;
      HintWindowClass := THintConFont;
      dtgPagos.ShowHint := False;
      dtgPagos.Hint := 'Cuota:' + xCrecuota + ' Cobranza del ' + copy(xpercob, 1, 4) + '-' + copy(xpercob, 5, 2);
      dtgPagos.ShowHint := True;
      Timer1.Enabled := True;
   End
   Else
      dtgPagos.ShowHint := False;
End;

Procedure TfCronoPag.Timer1Timer(Sender: TObject);
Begin
   dtgPagos.ShowHint := False;
   Timer1.Enabled := False;
End;

Procedure TfCronoPag.BitProcClick(Sender: TObject);
Var
   xfCalc, xfVen, xSql: String;
   xTipo: Integer;
Begin
   If (DM1.cdsCuotas.FieldByName('CREESTID').AsString <> '02') And
      (DM1.cdsCuotas.FieldByName('CREESTID').AsString <> '11') And
      (DM1.cdsCuotas.FieldByName('CREESTID').AsString <> '27') And
      (DM1.cdsCuotas.FieldByName('CREESTID').AsString <> '14') Then
   Begin
      MessageDlg('Proceso solo para cuotas pendiente de pago...!', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.cdsCuotas.FieldByName('CREESTID').AsString = '31' Then Exit;
   xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   xfVen := DM1.cdsCuotas.FieldByName('CREANO').AsString + DM1.cdsCuotas.FieldByName('CREMES').AsString;
   If ((xfVen = xfCalc) And ((Copy(DM1.CrgArea(DM1.wUsuario), 1, 3) <> 'CAJ') And
      (Copy(DM1.CrgArea(DM1.wUsuario), 1, 3) <> 'SIS') And
      (Copy(DM1.CrgArea(DM1.wUsuario), 1, 3) <> 'COB'))) Then
   Begin
      If (Copy(DM1.CrgArea(DM1.wUsuario), 1, 3) = 'CRE') And (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '02') Then
      Begin
         MessageDlg('El proceso de cobranza esta pendiente', mtError, [mbOk], 0);
         Exit;
      End;
   End
   Else
   Begin
      If (xfVen = xfCalc) And (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '02') Then
      Begin
         MessageDlg('Nivel no autorizado a esta opción...!', mtError, [mbOk], 0);
         Exit;
      End;
   End;
   Try
      Fmardesprocob := TFmardesprocob.Create(Self);
      Fmardesprocob.ShowModal;
   Finally
      Fmardesprocob.Free;
   End;
End;

Function TfCronoPag.CalculaProvision(xAsoID: String): Currency;
Var
   xProvision: Currency;
   xPeriodo, xSql: String;
Begin

   xProvision := 0;
  //obtiene el ultimo periodo de saldos internos
   xSql := 'SELECT MAX(PERIODO) PERIODO FROM CFC000';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xPeriodo := DM1.cdsQry1.FieldByName('PERIODO').AsString;
   End;

  //calcula la provision
   xSql := 'SELECT (NVL(SALDO_CB,0)*B.P_CB)/ 100 + (NVL(SALDO_NC,0)*B.P_NC)/ 100 PROVISION '
      + ' FROM CFC000 A, COB113 B'
      + ' WHERE A.ASOID = ' + QuotedStr(xAsoID) + ' AND A.PERIODO = ' + QuotedStr(xPeriodo)
      + ' AND A.CFC_F = B.RESUMEID';

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xProvision := DM1.cdsQry1.FieldByName('PROVISION').AsVariant;
   End;
   Result := xProvision;

End;

// Inicio: DPP_201209_COB
procedure TfCronoPag.SBEstadoCuentaClick(Sender: TObject);
var
   xSQL:STRING;
begin


   //Inicio HPC_201514_COB
   ppRegCCI.Visible:=False;
   If chkCCI.Visible then
   Begin
     Xsql:='Select Sum(Nvl(Cremtocob,0)) Cremtocob ' +
           'From CRE310 Where Asoid='''+DM1.cdsCuotas.FieldByName('ASOID').AsString+''' And Credid='''+DM1.cdsCuotas.FieldByName('CREDID').AsString+''' And Forpagid=''99'' And Creestid not in (''13'',''04'',''99'') ';
     DM1.cdsCuentas.Close;
     DM1.cdsCuentas.DataRequest(xsql);
     DM1.cdsCuentas.Open;
     TNumericField(DM1.cdsCuentas.FieldByName('Cremtocob')).DisplayFormat := '###,##0.00';
     ppDBCCI.DataSource := DM1.dsCuentas;
     ppRegCCI.Visible   := True;
     pplblCCI.Caption   := DM1.cdsCuentas.FieldByname('Cremtocob').AsString;
   End;
   //Final HPC_201514_COB

   xSQL:='SELECT ASOID,CRE_APL_FSC '
        +'  FROM COB_FSC_DEUDA_FSC_DET '
        +' WHERE ASOID='''+DM1.cdsCuotas.FieldByName('ASOID').AsString+''' '
//Inicio HPC_201603_COB - Se modifica el filtro de restricción para la impresión del Estado de Cuenta.
//      +'   AND CRE_APL_FSC='''+DM1.cdsCuotas.FieldByName('CREDID').AsString+''' ';
        +'   AND CRE_APL_FSC='''+DM1.cdsCuotas.FieldByName('CREDID').AsString+''' '
        +'   AND FLG_ANU_EXT IS NULL ';        
//Final HPC_201603_COB
   DM1.cdsTDoc.Close;
   DM1.cdsTDoc.DataRequest(XSQL);
   DM1.cdsTDoc.Open;
   If DM1.cdsTDoc.RecordCount>0 Then
   Begin
      ShowMessage('Crédito cancelado con FSC, no se puede emitir Estado de Cuenta...');
      exit;
   End;

   xSQL:='SELECT ASOID,CREDID,MAX(CREESTADODES)CREESTADODES,MAX(ASOAPENOM)ASOAPENOM,MAX(ASODIR)ASODIR,MAX(ASOCODMOD)ASOCODMOD, '
        +'       MAX(ASOTIPID)ASOTIPID,MAX(ASOTIPDES)ASOTIPDES,MAX(CREFOTORG)CREFOTORG,MAX(REGPENDES)REGPENDES,'
        +'       MAX(DPTODES)DPTODES,MAX(CIUDDES)CIUDDES,MAX(ZIPDES)ZIPDES,MAX(TIPCREID)TIPCREID,MAX(TIPCREDES)TIPCREDES, '
        +'       MAX(CRENUMCUO)CRENUMCUO, MAX(CREMTOOTOR)CREMTOOTOR,MAX(CREMTO)CREMTO,'
        +'       SUM(NVL(CREMTO,0))TOTAPAGAR,SUM(NVL(CREMTOCOB,0))TOTPAGADO,'
        +'       SUM(NVL(SALDOPORPAGAR,0)) SALDOPORPAGAR,'
        +'       SUM(NVL(TOT_MOR,0))+SUM(NVL(TOT_VEN,0))+SUM(NVL(TOT_DIF,0))+SUM(NVL(TOT_PEN,0)) SALDOPAGOHOY,'
        +'       TO_CHAR(MIN(CREFVEN),''MONTH YYYY'')INICIO,TO_CHAR(MAX(CREFVEN),''MONTH YYYY'')FINAL,'
        +'       SUM(NVL(TOT_MOR,0))TOT_MOR,SUM(NVL(TOT_VEN,0))TOT_VEN,SUM(NVL(TOT_DIF,0))TOT_DIF,'
        +'       SUM(NVL(TOT_MOR,0))+SUM(NVL(TOT_VEN,0))+SUM(NVL(TOT_DIF,0)) SALDOVENCIDO,'
        +'       SUM(NVL(TOT_PEN,0))TOT_PEN,SUM(NVL(INT_FUTURO,0))INT_FUTURO,SUM(NVL(PROCESO,0)) PROCESO '
        +'FROM ( '
//Inicio HPC_201614_COB
//Se adiciona campos al select
        +'       SELECT A.ASOID,CASE WHEN A.CREIDORI IS NOT NULL THEN A.CREIDORI ELSE A.CREDID END CREDID,C.ASOAPENOM,C.ASOCODMOD,C.ASOTIPID,E.ASOTIPDES,A.CREESTID CREESTADO, '
//      +'       SELECT A.ASOID,A.CREDID,C.ASOAPENOM,C.ASOCODMOD,C.ASOTIPID,E.ASOTIPDES,A.CREESTID CREESTADO, '
//Final HPC_201614_COB
        +'              A.CREESTADO CREESTADODES,A.CREFOTORG,A.TIPCREID,D.TIPCREDES,A.CRENUMCUO,A.CREMTOOTOR,F.REGPENDES, '
        +'              C.ASODIR,G.DPTODES,H.CIUDDES,I.ZIPDES,B.CREMTO,B.CREMTOCOB,B.CREFVEN,TO_DATE(SYSDATE)FECHA, '
        +'              TO_CHAR(CREFVEN,''YYYYMM'') FECVEN, TO_CHAR(SYSDATE,''YYYYMM'')FANOMES,B.CREESTID,'
        +'              CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')<TO_CHAR(SYSDATE,''YYYYMM'')) '
        +'                    AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
        +'                    AND B.CREESTID IN (''02'',''27'',''11'') '
        +'                   THEN NVL(CREMTO,0)  -NVL(CREMTOCOB,0) END TOT_MOR,'
        +'              CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')=TO_CHAR(SYSDATE,''YYYYMM'')) '
        +'                    AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
        +'                    AND B.CREESTID IN (''02'',''27'',''11'') '
        +'                   THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END TOT_VEN,'
        +'              CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN<>CREFVENINI) '
        +'                    AND B.CREESTID IN (''02'',''27'',''11'') '
        +'                   THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END TOT_DIF,'
        +'              CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) '
        +'                    AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
        +'                    AND B.CREESTID IN (''02'',''27'',''11'') '
        +'                   THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0) END TOT_PEN,'
        +'              CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) '
        +'                    AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
        +'                    AND B.CREESTID IN (''02'',''27'',''11'') '
        +'                   THEN NVL(cremtoint,0) END INT_FUTURO,'
        +'              CASE WHEN B.CREESTID IN (''02'',''27'',''11'',''14'') '
        +'                   THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END SALDOPORPAGAR,'

        // Inicio  SPP_201410_COB
        +'              CASE WHEN B.CREESTID=''14'' '
        +'                   THEN (      '
        +' SELECT SUM(MONCUOENV) '
        +'                           FROM COB319  '
        +'                          WHERE ASOID=B.ASOID AND COBANO=SUBSTR(B.PERCOB,1,4) '
        +'                            AND COBMES=SUBSTR(B.PERCOB,5,2) AND UPROID=B.UPROID AND UPAGOID=B.UPAGOID AND USEID=B.USEID '
        +') END PROCESO '
        // Fin  SPP_201410_COB

        +'         FROM CRE301 A, CRE302 B, APO201 C, CRE110 D, APO107 E, APO105 F, APO158 G, APO123 H, APO122 I '
        +'        WHERE A.ASOID='''+DM1.cdsCuotas.FieldByName('ASOID').AsString+''' '
        +'          AND A.CREDID='''+DM1.cdsCuotas.FieldByName('CREDID').AsString+''' '
        +'          AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
        +'          AND A.ASOID=C.ASOID AND A.TIPCREID=D.TIPCREID(+) '
        +'          AND C.ASOTIPID=E.ASOTIPID(+) AND C.REGPENID=F.REGPENID(+) '
        +'          AND C.DPTOID=G.DPTOID(+) AND C.CIUDID=H.CIUDID(+) AND C.ZIPID=I.ZIPID(+) '
        +'     ) '
        +'GROUP BY ASOID,CREDID ';
   DM1.cdsTDoc.Close;
   DM1.cdsTDoc.DataRequest(XSQL);
   DM1.cdsTDoc.Open;

   If Dm1.cdsTDoc.RecordCount>0 Then
   Begin
      If Dm1.cdsTDoc.FieldByName('INT_FUTURO').AsCurrency>0 Then
      Begin
         ShowMessage('SALDO NO ES CORRECTO, existe INTERES C0BRADO EN CUOTAS A FUTURO, Verifique por el Cronograma..');
         exit;
      End;
   End
   Else
   Begin
      ShowMessage('NO EXISTE INFORMACION PARA EMITIR ESTADO DE CUENTA');
      exit;
   End;
   // Inicio  SPP_201410_COB

   // Inicio: HPC_201814_COB
   // Se añaden los montos de proceso de conranza en el caso que el cobro sea por ONP
   // xSQL:='SELECT B.ASOID,B.CREDID,B.CREESTADO,TO_CHAR(TO_DATE(B.PERCOB,''YYYYMM''),''MONTH YYYY'')PERIODO,'
   //      +'       SUM((SELECT MONCUOENV'
   //      +'          FROM COB319 '
   //      +'         WHERE ASOID=B.ASOID AND COBANO=SUBSTR(B.PERCOB,1,4) '
   //      +'           AND COBMES=SUBSTR(B.PERCOB,5,2) AND UPROID=B.UPROID AND UPAGOID=B.UPAGOID AND USEID=B.USEID )) PROCESO '
   //      +'  FROM CRE302 B '
   //      +' WHERE B.ASOID='''+DM1.cdsCuotas.FieldByName('ASOID').AsString+''' '
   //      +'   AND B.CREDID='''+DM1.cdsCuotas.FieldByName('CREDID').AsString+''' '
   //      +'   AND CREESTID=''14'' '
   //      +' GROUP BY B.ASOID, B.CREDID, B.PERCOB, B.CREESTADO, TO_CHAR(TO_DATE(B.PERCOB,''YYYYMM''),''MONTH YYYY'') ';
    xSQL:='SELECT ASOID, CREDID, CREESTADO, F_MES(SUBSTR(PERCOB,5,2))||'' ''||SUBSTR(PERCOB,1,4) PERIODO, SUM(NVL(MONCUOENV,0)+NVL(MONENVCOB,0)) PROCESO FROM'
    +' (SELECT A.ASOID, A.CREDID, A.CREESTADO, A.PERCOB, B.MONCUOENV, C.MONENVCOB FROM CRE302 A, COB319 B, COB_ONP_PRO_DET C'
    +' WHERE A.ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND A.CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' AND A.CREESTID = ''14'''
    +' AND A.ASOID = B.ASOID(+) AND SUBSTR(A.PERCOB,1,4) = B.COBANO(+) AND SUBSTR(A.PERCOB,5,2) = B.COBMES(+)'
    +' AND A.ASOID = C.ASOID(+) AND A.PERCOB = C.PERCOB(+)) GROUP BY ASOID, CREDID, CREESTADO, PERCOB';
   // Fin: HPC_201814_COB


   DM1.cdsTZona.Close;
   DM1.cdsTZona.DataRequest(XSQL);
   DM1.cdsTZona.Open;
   // Fin  SPP_201410_COB
   If Dm1.cdsTDoc.Fieldbyname('SALDOVENCIDO').AsFloat>0 Then
   Begin
      pplblVencido.Visible     := True;
      pplblImpVencido.Visible  := True;
      pplblVencido.Caption     := 'A LA FECHA UD. TIENE UN SALDO VENCIDO DE    S/.';
      pplblImpVencido.Caption  := FormatFloat('###,###.#0',DM1.cdsTDoc.Fieldbyname('SALDOVENCIDO').AsFloat);
   End
   Else
      If Dm1.cdsTDoc.FieldByName('SALDOPORPAGAR').AsFloat=0 Then
      Begin
         pplblVencido.Visible     := True;
         pplblImpVencido.Visible  := False;
         pplblVencido.Caption     := '*** CREDITO '+TRIM(Dm1.cdsTDoc.FieldByName('CREESTADODES').ASSTRING)+' ***';
      End
      Else
      Begin
         pplblVencido.Visible     := False;
         pplblImpVencido.Visible  := False;
      End;

  //ppDesigner1.ShowModal;
   ppREstadoCuenta.Print;
   ppREstadoCuenta.Stop;
   DM1.cdsTZona.Close;
   DM1.cdsTDoc.Close;
end;
// Fin: DPP_201209_COB

// Inicio: SPP_201310_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas
procedure TfCronoPag.bbtnCuotaAnulaClick(Sender: TObject);
var
  sSQL : String;
begin
  sSQL:='SELECT A.ASOID, A.ASOCODMOD, A.CREDID, A.CRECUOTA, A.CREFPAG, A.CREMTOCOB, A.ASOAPENOM, '
       +  'B.CREESTID, B.CREESTADO, A.FORPAGABR, B.NROOPE, B.CREMENANU, B.USRANULA, B.FECANULA, '
       +  'SUBSTR(B.CREOBS,1,200) CREOBS '
       +  'FROM CRE310 A, COB901 B '
       + 'WHERE A.ASOID=' + QuotedStr(DM1.cdsCuotas.FieldByname('ASOID').AsString)
       +  ' AND A.CREDID='+ QuotedStr(DM1.cdsCuotas.FieldByname('CREDID').AsString)
       +  ' AND A.CREESTID IN (''13'',''04'') '
       +  ' AND A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.CRECUOTA=B.CRECUOTA(+) AND A.NROOPE=B.NROOPE(+) '
       +  ' AND B.ASOID IS NOT NULL '
       + 'ORDER BY B.FECANULA DESC, A.CRECUOTA';
  DM1.cdsCuotasAnu.Close;
  DM1.cdsCuotasAnu.DataRequest(sSQL);
  DM1.cdsCuotasAnu.Open;

  if DM1.cdsCuotasAnu.RecordCount<=0 then
  begin
      MessageDlg('No existen cuotas Anuladas o Extornadas para este Crédito !!!', mtError, [mbOk], 0);
      Exit;
  end;

  try
    FCuotasAnu:=TFCuotasAnu.Create(self);
    FCuotasAnu.ShowModal;
  finally
    FCuotasAnu.Free;
  end;
end;
// Fin: SPP_201310_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas


// Inicio SPP_201410_COB
procedure TfCronoPag.btnHojResClick(Sender: TObject);
var xInteres, xFlat, xMonto, xCuoIni, xTasEfe, xFonDes: Real;
    xNumCuo: Integer;
    xFecEval, xCad, xAsoId, xTipAso,  xCreDid, xSQL, xTexto, xFecVen, xCreEstid, xDesEnv: String;
    xFecPre, xFecDes, xFecCre: tDateTime;
    xCreMto, xCreAmort, xCreInteres, xCreFlat, xTot, xSaldo: Real;

begin
    Screen.Cursor := crHourGlass;
    xAsoId  := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
    xCredId := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
    xTexto := '';
    mDat01.Text := ''; mDat02.Text := '';
    lblNomGen.Caption := DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
    lblDni.Caption := DM1.cdsSolicitud.FieldByName('ASODNI').AsString;
    lblFecCre.Caption := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
    lblTipCre.Caption := DM1.CrgDescrip('TIPCREID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)), 'CRE110', 'TIPCREDES');
    lblMonto.Caption := FormatFloat('###,##0.#0', DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
    lblPlazo.Caption := FormatFloat('###', DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger);
    lblTasGas.Caption := FormatFloat('###,##0.#0', DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat) + ' %';
    lblFonDes.Caption := FormatFloat('###,##0.##0', DM1.cdsSolicitud.FieldByName('TASFONDES').AsFloat) + ' %';
    xTasEfe := (POWER((1 + DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat / 100), 12) - 1) * 100;
    lblTasEfe.Caption := FormatFloat('###,##0.#0', xTasEfe) + ' %';
    lblTipDes.Caption := DM1.CrgDescrip('TIPDESEID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString)), 'CRE104', 'TIPDESEABR');
    lblFrmDes.Caption := DM1.CrgDescrip('FORPAGOID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString)), 'COB101', 'FORPAGODES');
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
       xTipAso := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsListaCred.FieldByName('ASOID').AsString)), 'APO201', 'ASOTIPID');
       GnrCronograma_Tmp(xTipAso, xAsoid, xCreDid, xDesEnv, xInteres, xFlat, xMonto - xCuoIni, xFecDes, xNumCuo);
// Inicio HPC_201720_COB
// Exportación a Excel de los cronogramas de Pago
       If chkExcel.Checked Then
       Begin
          dtgData.DataSource:=dsCronograma_Tmp2;
          DM1.HojaExcel('Resumen_Cronograma_Pago',dtgData.DataSource,dtgData);
          Screen.Cursor := crDefault;
          Exit;
       End;
// Fin HPC_201720_COB
    End;
    cdsCronograma_Tmp.First;
    xCreMto := 0;
    xCreAmort := 0;
    xCreInteres := 0;
    xCreFlat := 0;
    xFonDes := 0;
    mDat01.Lines.Add(''); mDat02.Lines.Add('');
    While Not cdsCronograma_Tmp.Eof Do
    Begin
       xFecVen := Copy(cdsCronograma_Tmp.FieldByname('CREFVEN').AsString, 1, 2) + '/' + Copy(cdsCronograma_Tmp.FieldByname('CREFVEN').AsString, 4, 2) + '/' + Copy(cdsCronograma_Tmp.FieldByname('CREFVEN').AsString, 9, 2);
       xTexto :=
       DM1.StrSpace(FormatFloat('##', cdsCronograma_Tmp.FieldByName('CRECUOTA').AsInteger), 2) + ' ' +
       xFecVen + ' ' +
       DM1.StrSpace(FormatFloat('##,##0.#0', cdsCronograma_Tmp.FieldByname('CREMTO').AsFloat), 9) + ' ' +
       DM1.StrSpace(FormatFloat('##,##0.#0', cdsCronograma_Tmp.FieldByname('CREAMORT').AsFloat), 9) + ' ' +
       DM1.StrSpace(FormatFloat('##,##0.#0', cdsCronograma_Tmp.FieldByname('CREINTERES').AsFloat), 9) + ' '+
       DM1.StrSpace(FormatFloat('##,##0.#0', cdsCronograma_Tmp.FieldByname('CREDESGRAV').AsFloat), 6) +' ' +
       DM1.StrSpace(FormatFloat('##,##0.#0', cdsCronograma_Tmp.FieldByname('CREFLAT').AsFloat), 6);
       xCreMto := xCreMto + cdsCronograma_Tmp.FieldByname('CREMTO').AsFloat;
       xCreAmort := xCreAmort + cdsCronograma_Tmp.FieldByname('CREAMORT').AsFloat;
       xCreInteres := xCreInteres + cdsCronograma_Tmp.FieldByname('CREINTERES').AsFloat;
       xCreFlat := xCreFlat + cdsCronograma_Tmp.FieldByname('CREFLAT').AsFloat;
       xFonDes :=  xFonDes + cdsCronograma_Tmp.FieldByname('CREDESGRAV').AsFloat;
       mDat01.Lines.Add(xTexto); mDat02.Lines.Add(xTexto);
       cdsCronograma_Tmp.Next;
    End;
    // Inicio HPC_201503_COB
    mDat01.Lines.Add('_______________________________________________________');
    mDat02.Lines.Add('_______________________________________________________');
    xTexto := ' ' + ' ' + 'TOTAL :  ' + ' ' +
    DM1.StrSpace(FormatFloat('##,##0.#0', xCreMto), 9) + ' ' +
    DM1.StrSpace(FormatFloat('##,##0.#0', xCreAmort), 9) + ' ' +
    DM1.StrSpace(FormatFloat('##,##0.#0', xCreInteres), 9) + ' '+
    DM1.StrSpace(FormatFloat('##,##0.#0', xFonDes), 6)+' ' +
    DM1.StrSpace(FormatFloat('##,##0.#0', xCreFlat), 6);
    mDat01.Lines.Add(xTexto);
    mDat02.Lines.Add(xTexto);
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Flag de Reprogramación Excepcional
//  lblNumCredito.Caption := DM1.cdsSolicitud.FieldByName('TIPCREID').AsString + '-' + Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 11, 5) + '-' + Copy(DateToStr(xFecPre), 7, 4);
    lblNumCredito.Caption := DM1.cdsSolicitud.FieldByName('TIPCREID').AsString + '-' + Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 11, 5) + '-' + Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 3, 4);
//Final HPC_201711_COB
    Screen.Cursor := crDefault;
    If Length(Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)) > 0 Then
       Begin
          lblNumCredito01.Caption:=lblNumCredito.Caption;
          lblFecCre01.Caption:=lblFecCre.Caption;
          lblMonto01.Caption:=lblMonto.Caption;
          lblPlazo01.Caption:=lblPlazo.Caption;
          lblTipCre01.Caption:=lblTipCre.Caption;
          lblTipDes01.Caption:=lblTipDes.Caption;
          lblTasEfe01.Caption:=lblTasEfe.Caption;
          lblTasGas01.Caption:='S/.' + FormatFloat('###,##0.#0', cdsCronograma_Tmp.FieldByname('CREFLAT').AsFloat);
          lblFrmDes01.Caption:=lblFrmDes.Caption;
          lblNomGen01.Caption:=lblNomGen.Caption;
          lblDni01.Caption:=lblDni.Caption;
// Inicio HPC_201804_COB
// Modificación de Resumen del Cronograma de Pagos
          //lblTasEfe02.Caption:=DM1.FormatoNumeros(FloatToStr(RoundTo((Power(1 + DM1.TIR(DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat,DM1.cdsSolicitud.FieldByName('CRECUOTA').AsFloat,DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger),12)-1)*100,-2)))+' %';
          lblTasEfe02.Caption:=DM1.FormatoNumeros(FloatToStr(RoundTo((Power(1 + DM1.TIR(DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat+DM1.cdsSolicitud.FieldByName('MONINTPRO').AsFloat,DM1.cdsSolicitud.FieldByName('CRECUOTA').AsFloat,DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger),12)-1)*100,-2)))+' %';
// Fin HPC_201804_COB
          ppHojResRef.Print;
          ppHojResRef.Stop;
       End
    Else
       Begin
// Inicio HPC_201804_COB
// Modificación de Resumen del Cronograma de Pagos
          //lblTasEfe03.Caption:=DM1.FormatoNumeros(FloatToStr(RoundTo((Power(1 + DM1.TIR(DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat,DM1.cdsSolicitud.FieldByName('CRECUOTA').AsFloat,DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger),12)-1)*100,-2)))+' %';
          lblTasEfe03.Caption:=DM1.FormatoNumeros(FloatToStr(RoundTo((Power(1 + DM1.TIR(DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat+DM1.cdsSolicitud.FieldByName('MONINTPRO').AsFloat,DM1.cdsSolicitud.FieldByName('CRECUOTA').AsFloat,DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger),12)-1)*100,-2)))+' %';
// Fin HPC_201804_COB
          ppHojResNor.Print;
          ppHojResNor.Stop;
       End;
   // Fin HPC_201503_COB
end;
// Fin SPP_201410_COB

// Inicio SPP_201410_COB
procedure TfCronoPag.GnrCronograma_Tmp(xTipAso, xAsoid, xCredId,
  xDesEnv: String; xTas_Int, xTas_Flt, xMonOto: Real; xFec_Pre: tDateTime;
  xNumCuo: Integer);
var
   i, xDiasMesAct, j: Integer;
   xMon_Cuo, cNumer, cDenom, sFlt_Pag, xSal_Pag: Real;
   xMon_Aux, xAmo_Pag, xInt_Pag, xGas_Pag,sSeg_Des, s, r: Real;
   sMon_Cuo, sAmo_Pag, sInt_Pag, sGas_Pag: Real;
   xFec_Ven: tDateTime;
   tMes, tAno, xMes, xAno: Integer;
   tDia, xDia, xPrdGra, xSQL: String;
   xCuota, xIntIni: Double;
begin
   Begin
     cdsCronograma_Tmp.Close;
     cdsCronograma_Tmp.Open;
     TNumericField(cdsCronograma_Tmp.fieldbyname('CREAMORT')).DisplayFormat := '###,##0.#0';
     TNumericField(cdsCronograma_Tmp.fieldbyname('CREINTERES')).DisplayFormat := '###,##0.#0';
     TNumericField(cdsCronograma_Tmp.fieldbyname('CREFLAT')).DisplayFormat := '###,##0.#0';
     cdsCronograma_Tmp.EmptyDataSet;
// Inicio HPC_201720_COB
// Exportación a Excel de los cronogramas de Pago
     If chkExcel.Checked Then
     Begin
         cdsCronograma_Tmp2.Close;
         cdsCronograma_Tmp2.Open;
         TNumericField(cdsCronograma_Tmp2.fieldbyname('CREAMORT')).DisplayFormat := '###,##0.#0';
         TNumericField(cdsCronograma_Tmp2.fieldbyname('CREINTERES')).DisplayFormat := '###,##0.#0';
         TNumericField(cdsCronograma_Tmp2.fieldbyname('CREFLAT')).DisplayFormat := '###,##0.#0';
         cdsCronograma_Tmp2.EmptyDataSet;
     End; 
// Fin HPC_201720_COB
     xSQL:='SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CREAMORT,CREINTERES,MONPACDESGRAV,CREFLAT,CREMTO,  '+
           'NUMCUOORI,FECVENORI FROM CRE302 WHERE ASOID='+QuotedStr(xAsoid)+' AND CREDID='+QuotedStr(xCredId)+' '+
           'ORDER BY ASOID,CREDID,NUMCUOORI ';
     DM1.cdsQry6.Close;
     DM1.cdsQry6.DataRequest(xSQL);
     DM1.cdsQry6.Open;
     DM1.cdsQry6.First;
     While Not DM1.cdsQry6.Eof Do
     Begin
         cdsCronograma_Tmp.Append;
         cdsCronograma_Tmp.FieldByName('CRECUOTA').AsInteger := DM1.cdsQry6.FieldByName('NUMCUOORI').AsInteger;
         cdsCronograma_Tmp.FieldByName('CREFVEN').AsDateTime := DM1.cdsQry6.FieldByName('FECVENORI').AsDateTime;
         cdsCronograma_Tmp.FieldByName('CREAMORT').AsFloat := DM1.cdsQry6.FieldByName('CREAMORT').AsFloat;
         cdsCronograma_Tmp.FieldByName('CREINTERES').AsFloat := DM1.cdsQry6.FieldByName('CREINTERES').AsFloat;
         cdsCronograma_Tmp.FieldByName('CREDESGRAV').AsFloat := DM1.cdsQry6.FieldByName('MONPACDESGRAV').AsFloat;
         cdsCronograma_Tmp.FieldByName('CREFLAT').AsFloat := DM1.cdsQry6.FieldByName('CREFLAT').AsFloat;
         cdsCronograma_Tmp.FieldByName('CREMTO').AsFloat := DM1.cdsQry6.FieldByName('CREMTO').AsFloat;
// Inicio HPC_201720_COB
// Exportación a Excel de los cronogramas de Pago
         If chkExcel.Checked Then
         Begin
             cdsCronograma_Tmp2.Append;
             cdsCronograma_Tmp2.FieldByName('CRECUOTA').AsInteger := DM1.cdsQry6.FieldByName('NUMCUOORI').AsInteger;
             cdsCronograma_Tmp2.FieldByName('CREFVEN').AsDateTime := DM1.cdsQry6.FieldByName('FECVENORI').AsDateTime;
             cdsCronograma_Tmp2.FieldByName('CREAMORT').AsFloat := DM1.cdsQry6.FieldByName('CREAMORT').AsFloat;
             cdsCronograma_Tmp2.FieldByName('CREINTERES').AsFloat := DM1.cdsQry6.FieldByName('CREINTERES').AsFloat;
             cdsCronograma_Tmp2.FieldByName('CREDESGRAV').AsFloat := DM1.cdsQry6.FieldByName('MONPACDESGRAV').AsFloat;
             cdsCronograma_Tmp2.FieldByName('CREFLAT').AsFloat := DM1.cdsQry6.FieldByName('CREFLAT').AsFloat;
             cdsCronograma_Tmp2.FieldByName('CREMTO').AsFloat := DM1.cdsQry6.FieldByName('CREMTO').AsFloat;
         End;
// Fin HPC_201720_COB
         DM1.cdsQry6.Next;
     End;
     DM1.cdsQry6.Close;
end;
end;


// Fin SPP_201410_COB


//Inicio HPC_201514_ASO
procedure TfCronoPag.PagosCCI(xAsoid, xCredid: String);
VAR xsql:sTring;
begin
  xsql:='Select Asoid,Credid,Crecuota,Nroope,Foperac,Creamort,Creinteres,Creflat,Moncobdesgrav,Cremtocob ' +
        ' From CRE310 where Asoid='''+xAsoid+''' And Credid='''+xCredid+''' And Forpagid=''99'' And Creestid not in (''13'',''04'',''99'') ';
  DM1.cdsqry.Close;
  DM1.cdsqry.DataRequest(xsql);
  DM1.cdsqry.Open;
  If DM1.cdsQry.RecordCount>0 Then
  Begin
       chkCCI.Visible    := true;
       chkCCI.Font.Color := clRed;
  End
  Else chkCCI.Visible    := false;
end;
//Final HPC_201514_ASO



//Inicio HPC_201614_COB
//Aprobación para pagos adelantados
Procedure TfCronoPag.ApruebaPagAnt(xAsoid, xCredid: String);
var xSql:String;
begin
 //Verifica si esta marcado en CRE301
 xSql:='Select FLGPAGADE,FLGPROPAGADE From CRE301 WHERE ASOID='''+xAsoid+''' AND CREDID='''+xCredid+''' ';
 DM1.cdsTZona.Close;
 DM1.cdsTZona.DataRequest(xSql);
 DM1.cdsTZona.Open;

 If chkPagoAdelantado.Checked Then
 Begin
    //Si esta procesado
    If   (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPROPAGADE').AsString))=0) Then
    Begin
        xsql:= 'Update CRE301 SET FLGPAGADE=''X'',USUAUTPAGADE='''+DM1.wUsuario+''',FECAUTPAGADE=SYSDATE '
              +'WHERE ASOID='''+xAsoId+''' AND  CREDID='''+xCreDid+''' ';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    End;
 End
 Else
 Begin
   //Si no esta procesado
   If   (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPROPAGADE').AsString))=0) Then
   Begin
      xSql:= 'Update CRE301 SET FLGPAGADE=NULL,USUAUTPAGADE=NULL,FECAUTPAGADE=NULL '
            +'WHERE ASOID='''+xAsoId+''' AND  CREDID='''+xCreDid+''' ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
  End;

end;
//Final HPC_201614_COB


//Inicio HPC_201614_COB
//Verificación si esta marcado para pagos adelantados
procedure TfCronoPag.VerificaPagAnt(xAsoid, xCredid: String);
var xsql:String;
begin
 //Verifica si esta marcado en CRE301
 xSql:='Select FLGPAGADE,FLGPROPAGADE,TIPCREID From CRE301 WHERE ASOID='''+xAsoid+''' AND CREDID='''+xCredid+''' ';
 DM1.cdsTZona.Close;
 DM1.cdsTZona.DataRequest(xSql);
 DM1.cdsTZona.Open;

 If DM1.cdsTZona.FieldByName('TIPCREID').AsString<>'RE' Then
 Begin

   //Si esta marcado y no procesado
   If (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPAGADE').AsString))>0) AND
      (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPROPAGADE').AsString))=0) Then
   Begin
     chkPagoAdelantado.Checked := True;
     grbPAdelantado.Enabled    := True;
   End;

    //Si esta marcado y procesado
   If (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPAGADE').AsString))>0) AND
      (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPROPAGADE').AsString))>0) Then
   Begin
     chkPagoAdelantado.Checked := True;
     grbPAdelantado.Enabled    := False;
   End;

   //Si no esta marcado
   If (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPAGADE').AsString))=0) AND
      (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPROPAGADE').AsString))=0) Then
   Begin
      chkPagoAdelantado.Checked := False;
      grbPAdelantado.Enabled    := True;
   End;

End;

end;
//Final HPC_201614_COB

//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Flag de Reprogramación Excepcional
procedure TfCronoPag.ApruebaRepExc(xAsoid, xCredid: String);
var xSql:String;
begin
 //Verifica si esta marcado en CRE301
 xSql:='Select USUAPRREPEXC,FECAPRREPEXC From CRE301 WHERE ASOID='''+xAsoid+''' AND CREDID='''+xCredid+''' ';
 DM1.cdsTZona.Close;
 DM1.cdsTZona.DataRequest(xSql);
 DM1.cdsTZona.Open;

 If chkRepExc.Checked Then
 Begin
    //Si esta procesado
    If   (Length(TRIM(DM1.cdsTZona.FieldByName('USUAPRREPEXC').AsString))=0) Then
    Begin
        xsql:= 'Update CRE301 SET USUAPRREPEXC='''+DM1.wUsuario+''',FECAPRREPEXC=SYSDATE '
              +'WHERE ASOID='''+xAsoId+''' AND  CREDID='''+xCreDid+''' ';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        DM1.cdsSolicitud.edit;
        DM1.cdsSolicitud.FieldByName('USUAPRREPEXC').AsString:=DM1.wUsuario;
    End;
 End
 Else
 Begin
   //Si no esta procesado
   If   (Length(TRIM(DM1.cdsTZona.FieldByName('USUAPRREPEXC').AsString))>0) Then
   Begin
      xSql:= 'Update CRE301 SET USUAPRREPEXC=NULL,FECAPRREPEXC=NULL '
            +'WHERE ASOID='''+xAsoId+''' AND  CREDID='''+xCreDid+''' ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      DM1.cdsSolicitud.edit;
      DM1.cdsSolicitud.FieldByName('USUAPRREPEXC').AsString:='';
   End;
  End;

end;
//Final HPC_201711_COB


//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Flag de Reprogramación Excepcional
procedure TfCronoPag.VerificaRepExc(xAsoid, xCredid: String);
var xsql:String;
begin
 //Verifica si esta marcado en CRE301
 xSql:='Select USUAPRREPEXC,FECAPRREPEXC,TIPCREID From CRE301 WHERE ASOID='''+xAsoid+''' AND CREDID='''+xCredid+''' ';
 DM1.cdsTZona.Close;
 DM1.cdsTZona.DataRequest(xSql);
 DM1.cdsTZona.Open;

 If DM1.cdsTZona.FieldByName('TIPCREID').AsString<>'RE' Then
 Begin

   //Si esta marcado
   If (Length(TRIM(DM1.cdsTZona.FieldByName('USUAPRREPEXC').AsString))>0) Then
   Begin
     chkRepExc.Checked := True;
   End;

   //Si no esta marcado
   If (Length(TRIM(DM1.cdsTZona.FieldByName('USUAPRREPEXC').AsString))=0) Then
   Begin
     chkRepExc.Checked := False;
   End;

 End;
End; 
//Final HPC_201711_COB
// Inicio HPC_201720_COB
// Exportación a Excel de los cronogramas de Pago
procedure TfCronoPag.FormShow(Sender: TObject);
begin
   DM1.cdsCuotas.First;
   While Not DM1.cdsCuotas.Eof Do
   Begin
    If (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString <> DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) Then
    begin
       DM1.cdsCuotas.Edit;
       DM1.cdsCuotas.fieldbyname('DIF').AsString:='D';
       DM1.cdsCuotas.Post;
    End;
    DM1.cdsCuotas.Next;
   End;
   DM1.cdsCuotas.First;
end;
// Fin HPC_201720_COB
End.

