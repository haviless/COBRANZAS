Unit COB901;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB901
// Formulario                    : FpagoCuotas
// Fecha de Creación             :
// Autor                         : Equipo de sistemas
// Objetivo                      : Consulta de Creditos vigentes e historicos, Registro individual de cuotas, extorno de pagos, devolucion de pagos
//                               : Aplicaciones al FSC (Consultas, impresiones, detalles)
// Actualizaciones:
// -----------------------------------------------------------------------
// HPP_200901_COB
//     HN El botón de Refinanciados quedará siempre deshabilitado
//     en esta pantalla ya que tiene una administración diferente
//     como opción propia del Menú principal
// -----------------------------------------------------------------------
// HPP_200909_COB - SAR2009-315 - realizado por IREVILLA
// -----------------------------------------------------------------------
// HPP_200923_COB - Memorándum 686-2009-DM-COB - SAR2009-0593 - DAD-JD-2009-0117
// -----------------------------------------------------------------------
// HPP_200933_COB - por IREVILLA Memorándum 805-2009-DM-COB - SAR-2009-0716 - DAD-IR-2009-0150
// -----------------------------------------------------------------------
// HPP_200934_COB por LYUPANQUI
// -----------------------------------------------------------------------
// HPP_201008_COB por RMEDINA
// Memorándum 962-2009-DM-COB - SAR-2009-0893 - DAF-2010-004-COB
// por RMEDINA  Memorándum 962-2009-DM-COB - SAR-2009-0893 - DAF-2010-004-COB, Aplicaciones al FSC
// -----------------------------------------------------------------------
// HPP_201104_COB - se pone alias a campos para evitar ambigüedad
// -----------------------------------------------------------------------
// HPP_201107_COB - RMZ, SE ADICIONA  EL PERIODO DE LA COBRANZA DE PLANILLA
// -----------------------------------------------------------------------
// HPP_201108_COB - modifica mensaje, porque no necesariamente los pagos son el bcp
// -----------------------------------------------------------------------
// HPP_201109_COB - RMZ, VARIABLES PARA EL IMPORTE APLICADO CON EL FSC Y EL IMPORTE PAGADO AL FSC
// -----------------------------------------------------------------------
// HPP_201110_COB - Por modificaciòn de mensaje, El Asociado tiene aplicación de FSC, favor indicarle realizar el'#13'pago de : '
// -----------------------------------------------------------------------
// HPP_201113_COB - por RMEDINA Devoluciòn de Excesos
// -----------------------------------------------------------------------
// HPC_201205_COB // Cambia lectura de imagen y firma de Derrama a RENIEC
// DPP_201202_COB : Se realiza el pase a partir del HPC_201205
// -----------------------------------------------------------------------
// HPC_201203_COB - RMZ, Ingreso de vouchers de Bancos en forma manual
// DPP_201204_COB : Pase a realizar a partir del HPC_201103_COB
// HPC_201215_COB : Modificaciones correspondientes al fondo de desgravamen
// DPP_201211_COB : Pase se realiza de acuerdo al HPC_201215_COB
// HPC_201301_COB : 16/01/2013 - Se Agrega Para Busqueda de Cuotas Pagadas
// SPP_201302_COB : El pase a producción se realiza de acuerdo al HPC_201301_COB
// HPC_201310_COB : 07/10/2013  Gestiones de cobranza realizadas ordenadas por fecha
// SPP_201312_COB : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201312_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
// SPP_201314_COB : Se realiza el pase a producción a partir del documento HPC_201312_COB
// HPC_201402_COB : Alerta de autorización de descuento ONP.
// SPP_201402_COB : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201410_COB : Anulación de ampliación de créditos.
// SPP_201409_COB : Se realiza el pase a producción a partir del HPC_201410_COB.
// HPC_201407_COB : Se realiza el cambio del mensaje FSC, y se incluye la etiqueta de Fallecido y Fecha de Fallecimiento
// SPP_201410_COB : Se realiza el pase a producción a partir del HPC_201407_COB. 
// HPC_201412_COB : Ampliación Individual.
// SPP_201411_COB : Se realiza el pase a producción a partir del HPC_201412_COB.
// HPC_201502_COB : 07/01/2015 Se adiciona una opción de impresión de ADENDA para los créditos ampliados
//                : Se adiciona una opción de consolidado de de las atenciones y gestiones de cobranzas para ser anexado al expediente del FSC
// HPC_201515_COB : SE modifica el boton de consulta de devoluciones de inconsistencias para que se emita asi el asociado
//                  no tenga creditos ya que puede ser un cobro indebido.
//HPC_201603_COB  : Se habilita la carga de los créditos históricos para consulta
//HPC_201606_COB  : Se adiciona una nueva opción para bloqueo y desbloqueo de cuentas al FSC 
//HPC_201607_COB  : Graba datos adicionales del Extorno de Creditos e Imprimir
//HPC_201614_COB  : Se adiciona opción para pagos adelantados
//HPC_201705_COB  : Anulación de Ampliados, si existe pagos debe aplicarse en el crédito origen 
//HPC_201711_COB  : Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
//HPC_201712_COB  : Generación de Exceso en la Anulación de Ampliados
// HPC_201716_COB : Implementación de Trazabilidad de la reversión del Ampliado
//HPC_201719_COB  : Mejoras funcionales en el registro de la atención del asociado
//HPC_2017123_COB : Modificación en la búsqueda por ASOID
// HPC_201731_COB : Mejoras en el proceso de Pago Adelantado
// HPC_201733_COB : Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
// HPC_201735_COB : Mejoras en el proceso de Aprobación de Devoluciones en efectivo
// HPC_201805_COB : Constancia de deuda al FSC
// HPC_201813_COB : Se modifica reporte de Constancia de Deuda
// COB_201822_HPC : Se amplia el formulario para mostrar el estado del crédito y se actualiza la etiqueta Fecha de Cancelación
Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Db,
   DBClient, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
   IdFTP, ComCtrls, IniFiles, fcButton, fcImgBtn, fcShapeBtn, ppBands,
   ppStrtch, ppMemo, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm, ppRelatv,
   ppProd, ppReport, wwriched, ppVar, ppParameter, ppSubRpt, ppDB,
   //Inicio HPC_201502_COB
   // Inicio SPP_201410_COB
   ppDBPipe, ppDBBDE, ppEndUsr, fcLabel, DBGrids, ppRichTx, jpeg;
   // Fin SPP_201410_COB
   //Fin HPC_201502_COB


Type
   TfPagoCuotas = Class(TForm)
      gpbDatos: TGroupBox;
      EdtCodMod: TEdit;
      Label1: TLabel;
      GroupBox2: TGroupBox;
      BitSalir: TBitBtn;
      BitBuscar: TBitBtn;
      BitExceso: TBitBtn;
      BitDevolver: TBitBtn;
      bFirma: TBevel;
      bFoto: TBevel;
      ImagAso: TImage;
      IdFTP1: TIdFTP;
      BitReprograma: TBitBtn;
      Panel2: TPanel;
      Label2: TLabel;
      EdtNomGen: TEdit;
      Panel1: TPanel;
      Label3: TLabel;
      Label5: TLabel;
      Label9: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      EdtDNI: TEdit;
      EdtCtaAho: TEdit;
      EdtSitCta: TEdit;
      EdtSitDes: TEdit;
      EdtNumRes: TEdit;
      EdtFecRes: TEdit;
      EdtCodUse: TEdit;
      EdtDesUse: TEdit;
      BitGenCrono: TBitBtn;
      ImaFirma: TImage;
      BitFDes: TBitBtn;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      TabSheet2: TTabSheet;
      dtgPrestamos: TwwDBGrid;
      dtgHistoricos: TwwDBGrid;
      BitBtn1: TBitBtn;
      BitAnulaRep: TBitBtn;
      BitMstApo: TfcShapeBtn;
      Panel3: TPanel;
      BitAsociado: TBitBtn;
      btnExtornar: TBitBtn;
      BitReclas: TBitBtn;
      Label8: TLabel;
      EdtCodLug: TEdit;
      EdtDesLug: TEdit;
      Label10: TLabel;
      edtLiquidado: TEdit;
      EdtTipAso: TEdit;
      EdtDesAso: TEdit;
      Label4: TLabel;
      BitReclamos: TBitBtn;
//Inicio HPC_201614_COB
//botón de pago adelantado
      btnReimp: TBitBtn;
//Final HPC_201614_COB
      rpCartaAutDes: TppReport;
      ppHeaderBand1: TppHeaderBand;
      lblFechaCarta: TppLabel;
      ppMemo1: TppMemo;
      ppLabel119: TppLabel;
      ppMemo3: TppMemo;
      lblNombresa: TppLabel;
      lblAsoDnia: TppLabel;
      ppLabel124: TppLabel;
      ppLabel125: TppLabel;
      ppLabel126: TppLabel;
      lblDirReg01: TppLabel;
      lblDirReg02: TppLabel;
      lblDirReg03: TppLabel;
      lblCargo: TppLabel;
      lblDireccion: TppLabel;
      lblTelefono: TppLabel;
      lblDirReg04: TppLabel;
      lblDirReg05: TppLabel;
      lblMonto: TppLabel;
      lblMonCuo: TppLabel;
      lblPlazo: TppLabel;
      lblNunLetras: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      BitAtencion: TBitBtn;
      BitGestion: TBitBtn;

      btnGesDom: TBitBtn;
      TabSheet3: TTabSheet;
      dbgFSC: TwwDBGrid;
      btnPrestCancFSC: TBitBtn;
      BtnInfAdicFSC: TBitBtn;
      BitAnulaFSC: TBitBtn;
      pnlInfAdicional: TPanel;
      Shape1: TShape;
      btnCancelapanel: TButton;
      Label11: TLabel;
      ObsAplia: TwwDBRichEdit;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      ObsAnula: TwwDBRichEdit;
      Label17: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      Label20: TLabel;
      Shape2: TShape;
      Panel4: TPanel;
      edtFechaAplica: TEdit;
      Panel5: TPanel;
      edtUsuarioAplica: TEdit;
      Panel6: TPanel;
      edtFechaAnula: TEdit;
      Panel7: TPanel;
      edtUsuarioAnula: TEdit;
      ppRepResFSC: TppReport;
      ppParameterList2: TppParameterList;
// Inicio: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
      BitPrintResFSC: TBitBtn;
// Fin: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
      ppBDE1: TppBDEPipeline;
      ppD1: TppDesigner;
      ppHeaderBand2: TppHeaderBand;
      ppShape1: TppShape;
//Inicio HPC_201606_COB --Procedimeinto de bloqueo
//    ppLabel21: TppLabel;
//Final HPC_201606_COB
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      LblCodMod: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      lblTipCre: TppLabel;
      lblNomGen: TppLabel;
      lblNumPre: TppLabel;
      ppLabel30: TppLabel;
      lblFecPre: TppLabel;
      ppLabel32: TppLabel;
      lblUse2: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      lblLugarGenera: TppLabel;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppLabel51: TppLabel;
      ppLabel28: TppLabel;
      ppLabel57: TppLabel;
      ppLabel58: TppLabel;
      ppLabel59: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      ppLabel49: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLabel1: TppLabel;
      lblNumActa: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel8: TppLabel;
      lblFecActa: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppFooterBand2: TppFooterBand;
      lblUser: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      ppShape3: TppShape;
      ppDBCalc3: TppDBCalc;
      ppLabel3: TppLabel;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppLabel7: TppLabel;
      ppDetailBand3: TppDetailBand;
      ppSummaryBand2: TppSummaryBand;
      ppShape4: TppShape;
      ppLabel29: TppLabel;
      ppLabel31: TppLabel;
      ppLabel33: TppLabel;
      ppLabel42: TppLabel;
      ppLabel53: TppLabel;
      ppVariable2: TppVariable;
      ppVariable3: TppVariable;
      ppVariable4: TppVariable;
      ppVariable5: TppVariable;
      ppVariable6: TppVariable;
      ppLabel56: TppLabel;
      ppVariable7: TppVariable;
      ppLine7: TppLine;
      ppLine8: TppLine;
      IMGANULADO: TppImage;
      IMGEXTORNADO: TppImage;
      ppSystemVariable1: TppSystemVariable;
      BitBtn2: TBitBtn;
      BitIngVouBco: TBitBtn;
// Inicio: SPP_201312_COB : 15/10/2013  Consulta de Devoluciones de Cuotas
    bbtnDevInc: TBitBtn;
    // Inicio: SPP_201402_COB
    pnlDesOnp: TPanel;
    // Fin: SPP_201402_COB
    
// Inicio SPP_201410_COB
    lblFallecido: TfcLabel;
    // Fin SPP_201410_COB

    // Inicio SPP_201411_COB
    btnAmpliar: TBitBtn;
    shAmpliado: TShape;
    // Fin SPP_201411_COB
  //Inicio HPC_201502_COB
    dtgData: TDBGrid;
    ppRepAdenda: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppImage1: TppImage;
    pplblRUC: TppLabel;
    pplblGerenteG: TppLabel;
    pplblDNIGERENTE: TppLabel;
    pplblPARTIDA: TppLabel;
    pplblNOMDOC: TppLabel;
    pplblDNIDOC: TppLabel;
    pplblDIRDOCENTE: TppLabel;
    pplblFECDOC: TppLabel;
    pplblDIA: TppLabel;
    pplblMES: TppLabel;
    pplblANO: TppLabel;
    btnAdenda: TBitBtn;
    btnConsolidado: TBitBtn;    
    pplblDNIDOC2: TppLabel;
//Inicio HPC_201606_COB --Procedimeinto de bloqueo
    BitBLoqFSC: TBitBtn;
    ppImage2: TppImage;
    IMGBLOQUEADA: TppImage;
//Inicio HPC_201614_COB
//Se adiciona botón para pagos adelantados y revesión de diferidos
    btnPagoAdelantado: TBitBtn;
    btnRevertirDif: TBitBtn;
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
    Shape3: TShape;
    BitBtn3: TBitBtn;
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
    btnHistorialAmp: TBitBtn;
//Final HPC_201716_COB
//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
    lblcalcartera: TLabel;
    edtCalCartera: TEdit;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    btnSimular: TBitBtn;
// Inicio HPC_201805_COB
// Constancia de deuda al FSC
    btnDeudaFSC: TBitBtn;
    ppBDE2: TppBDEPipeline;
    ppConstancia: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand5: TppHeaderBand;
    ppLabel98: TppLabel;
    ppLabel100: TppLabel;
    ppLabel113: TppLabel;
    ppLabel121: TppLabel;
    ppImage9: TppImage;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel70: TppLabel;
    ppLine13: TppLine;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    lblFecha: TppLabel;
    ppDetailBand7: TppDetailBand;
    // Inicio: HPC_201813_COB
    // Se retiran variables no usadas
    // ppDBText7: TppDBText;
    // ppDBText8: TppDBText;
    // ppDBText12: TppDBText;
    // ppDBText13: TppDBText;
    // ppDBText14: TppDBText;
    // ppDBText15: TppDBText;
    // ppDBText16: TppDBText;
    // ppDBText17: TppDBText;
    // ppDBText18: TppDBText;
    // ppLine16: TppLine;
    // ppFooterBand5: TppFooterBand;
    // Fin: HPC_201813_COB
    ppSummaryBand5: TppSummaryBand;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;

    // Inicio: HPC_201813_COB
    // Se retiran variables no usadas
    // ppLabel68: TppLabel;
    // ppLabel69: TppLabel;
    // lblUsuario: TppLabel;
    // ppGroup1: TppGroup;
    // ppGroupHeaderBand1: TppGroupHeaderBand;
    // ppDBText9: TppDBText;
    // Fin: HPC_201813_COB

    ppLabel4: TppLabel;
    ppLabel12: TppLabel;

    // Inicio: HPC_201813_COB
    // Nuevas variables
    pplusuimprime: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    // Fin: HPC_201813_COB


    ppLabel16: TppLabel;
    ppLabel15: TppLabel;

    // Inicio: HPC_201813_COB
    // Nuevas variables
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel74: TppLabel;
    ppLabel73: TppLabel;
    ppLabel76: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel77: TppLabel;
    ppLabel81: TppLabel;
    // Fin: HPC_201813_COB


    ppDBText10: TppDBText;
    ppDBText11: TppDBText;

    // Inicio: HPC_201813_COB
    // Se reira grupo no usado
    // ppGroupFooterBand1: TppGroupFooterBand;
    // Fin: HPC_201813_COB

    // Inicio: HPC_201813_COB
    // Nuevas variables usadas
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine6: TppLine;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLine9: TppLine;
    pplasoapenom: TppLabel;
    ppldni: TppLabel;
    pplnumdeu: TppLabel;
    // Fin: HPC_201813_COB
    ppLabel24: TppLabel;

    // Inicio: HPC_201813_COB
    pplresumen: TppLabel;
    pplliqdeuda: TppLabel;
    ppltotpag: TppLabel;
    pplpenpag: TppLabel;
    // Fin: HPC_201813_COB


    ppLabel27: TppLabel;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    
    // Inicio: HPC_201813_COB
    // ppDBText19: TppDBText;
    // ppDBText20: TppDBText;
    // ppDBText21: TppDBText;
    // ppLine9: TppLine;
    // ppLine11: TppLine;
    // ppLine12: TppLine;
    // ppGroup2: TppGroup;
    // ppGroupHeaderBand2: TppGroupHeaderBand;
    // ppLabel13: TppLabel;
    // ppLabel14: TppLabel;
    // ppLabel17: TppLabel;
    // ppLabel18: TppLabel;
    // ppLabel19: TppLabel;
    // ppLabel20: TppLabel;
    // ppLabel21: TppLabel;
    // ppLine6: TppLine;
    // ppLine15: TppLine;
    // ppGroupFooterBand2: TppGroupFooterBand;
    // ppLabel73: TppLabel;
    // ppDBCalc1: TppDBCalc;
    // ppDBCalc2: TppDBCalc;
    // ppDBCalc4: TppDBCalc;
    // ppDBCalc5: TppDBCalc;
    // ppLine14: TppLine;
    // Fin: HPC_201813_COB


    ppLine10: TppLine;


    // Inicio: HPC_201813_COB
    // Nuevas variables
    ppLabel75: TppLabel;
    ppLabel68: TppLabel;
    // Fin: HPC_201813_COB
// Fin HPC_201805_COB
// Fin HPC_201731_COB
//Fin HPC_201719_COB
//Final HPC_201711_COB
//Final HPC_201614_COB
//Final HPC_201606_COB
 //Final HPC_201502_COB



// Fin: SPP_201312_COB : 15/10/2013  Consulta de Devoluciones de Cuotas

      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure EdtCodModKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitBuscarClick(Sender: TObject);
      Procedure btnCancelapanelClick(Sender: TObject);
      Procedure dtgPrestamosDblClick(Sender: TObject);
      Procedure dtgPrestamosKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitExcesoClick(Sender: TObject);
      Procedure BitDevolverClick(Sender: TObject);
      Procedure dtgPrestamosDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure EdtCodModChange(Sender: TObject);
      Procedure BitReprogramaClick(Sender: TObject);
      Procedure BitGenCronoClick(Sender: TObject);
      Procedure ImaFirmaClick(Sender: TObject);
      Procedure ImagAsoClick(Sender: TObject);
      Procedure BitFDesClick(Sender: TObject);
      Procedure PageControl1Change(Sender: TObject);
      Procedure dtgHistoricosDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure BitAnulaRepClick(Sender: TObject);
      Procedure BitMstApoClick(Sender: TObject);
      Procedure BitAsociadoClick(Sender: TObject);
      Procedure dtgHistoricosDblClick(Sender: TObject);
      Procedure btnExtornarClick(Sender: TObject);
      Procedure BitReclasClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure BitReclamosClick(Sender: TObject);
//Inicio HPC_201614_cob
//    Procedure BitAutDesClick(Sender: TObject);
//    se modifica nombre de boton
      Procedure btnReimpClick(Sender: TObject);
//Final HPC_201614_cob
      Procedure BitAtencionClick(Sender: TObject);
      Procedure BitGestionClick(Sender: TObject);
      Procedure btnGesDomClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dbgFSCDblClick(Sender: TObject);
      Procedure btnPrestCancFSCClick(Sender: TObject);
      Procedure BitAnulaFSCClick(Sender: TObject);
      Procedure dbgFSCRowChanged(Sender: TObject);
      Procedure dbgFSCCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure BtnInfAdicFSCClick(Sender: TObject);
// Inicio: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
      Procedure BitPrintResFSCClick(Sender: TObject);
// Fin: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
      Procedure ppVariable2Print(Sender: TObject);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure BitIngVouBcoClick(Sender: TObject);
// Inicio: SPP_201312_COB : 15/10/2013  Consulta de Devoluciones de Cuotas
    procedure bbtnDevIncClick(Sender: TObject);
// Inicio: SPP_201402_COB
    procedure EdtNomGenChange(Sender: TObject);    
 //Inicio HPC_201502_COB
    procedure dtgPrestamosColExit(Sender: TObject);
    procedure btnAdendaClick(Sender: TObject);
    procedure btnConsolidadoClick(Sender: TObject);    
    procedure dtgPrestamosRowChanged(Sender: TObject);
 //Fin HPC_201502_COB
// Fin: SPP_201402_COB
// Fin: SPP_201312_COB    : 15/10/2013  Consulta de Devoluciones de Cuotas
// Inicio SPP_201411_COB
   procedure btnAmpliarClick(Sender: TObject);
//Inicio HPC_201606_COB --Procedimeinto de bloqueo
    procedure BitBLoqFSCClick(Sender: TObject);
//Inicio HPC_201614_COB
//Evento de los botones
    procedure btnPagoAdelantadoClick(Sender: TObject);
    procedure btnRevertirDifClick(Sender: TObject);
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
    procedure BitBtn3Click(Sender: TObject);
//Incio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
    procedure btnHistorialAmpClick(Sender: TObject);
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    procedure btnSimularClick(Sender: TObject);
// Fin HPC_201731_COB
//Final HPC_201716_COB
//Final HPC_201711_COB
//Final HPC_201614_COB
//Final HPC_201606_COB
// Fin SPP_201411_COB
// Inicio HPC_201805_COB
// Constancia de deuda al FSC
procedure btnDeudaFSCClick(Sender: TObject);
// Fin HPC_201805_COB
   Private
    { Private declarations }
      Function Busca302(xAsoId, xCreDid: String): String;
      Procedure Botones(xLogic: Boolean);
      Procedure AnulaCuoAct(xAsoId, xCreDid, xCreCuota, xCnd: String);
      Procedure AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, xCnd: String; tCremtoCob: Currency);
      Function Busca310(xAsoId, xCreDid: String): String;
      function ParaAdenda():boolean;                      //Inicio HPC_201502_COB
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
      function ParaHistAmp():Boolean;
//Final HPC_201716_COB
      Procedure ControlaBotones;
      Procedure actfootCabFSC;
      // Inicio SPP_201410_COB
      procedure FechaFall;
      // Fin SPP_201410_COB
      //Inicio HPC_201614_COB
	  //Evento de activación de boton
      procedure ActivaBtnPagosAnticipados;
      //Final HPC_201614_COB
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
      procedure saldoscreditoant(vasoid,vcredid: String);
//Final HPC_201711_COB
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
      procedure DatadeAmpliacion(vasoid,vcredid: String);
//Final HPC_201716_COB
// Inicio HPC_201805_COB
// Constancia de deuda al FSC
      Function VerificaConstanciaFSC: Boolean;
// Fin HPC_201805_COB
   Public
    { Public declarations }
      VTOTCOB, VIMP_APL_FSC, VIMP_COB_FSC, VIMP_EXC_DEU, VIMP_EXC_DEV: CURRENCY;

//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
      kASOID,kCREDID,kFECGEN: String;
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
      XIMPSALCAP,XIMPCUOREP,XIMPAPLCROORIPLA,XIMPAPLCROORIBAN,XIMPAPLCROORIEFE,
      XIMPAPLCROORIBEN,XIMPAPLCROORIOTR:Double;
      XUSUGENREP: String;
//Final HPC_201716_COB
//Final HPC_201711_COB
      Procedure ConFSC;
      Procedure AnulaPagosFSC(xAsoId, xCreDid, xDocPag, xFrmPag, xFecPag: String);
      Procedure CrgPrestamos();
      Procedure LimPrestamos();
      Procedure BorraFotos();
      Procedure CrgPrestamosHis();
      Procedure LImPrestamosHis();
      Procedure AnulaPrestamo(xAsoId, xCreDid, xNroNabo, xFecPre, xCnd: String);
      Procedure AnulaAct(xAsoId, xCreDid, xCnd: String);
      Procedure muestrafonsol(xAsoid: String);

   End;

Var
   fPagoCuotas: TfPagoCuotas;

Implementation

Uses COBDM1, COB902, COB903, COB905, COB907, COB913, COB915, COB914,
   CRE944, CRE908, COB943, COB959, COB979, COBD06, COBD08, COBD10,
   COB821,
   COBF007,
   COBF002, COB904, COB906, COBF003, COBF005,
// Inicio: SPP_201312_COB : 15/10/2013  Consulta de Devoluciones de Cuotas
// Inicio SPP_201411_COB
//Inicio HPC_201606_COB --Procedimeinto de bloqueo
//Inicio HPC_201614_COB
//Adición de código fuente
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
   COBD001, COB468, COB329, COB972B, COBD016, COBR001, COBD016A;
// Fin HPC_201731_COB
//Final HPC_201711_COB
//Final HPC_201614_COB
//Final HPC_201606_COB
// Fin SPP_201411_COB
// Fin: SPP_201312_COB : 15/10/2013  Consulta de Devoluciones de Cuotas

{$R *.dfm}

Procedure TfPagoCuotas.BitSalirClick(Sender: TObject);
Begin
   DM1.cdsAso.Close;
   Close;
End;

Procedure TfPagoCuotas.FormActivate(Sender: TObject);
Begin
   LimPrestamos;
   EdtCodMod.SetFocus;
   TabSheet3.TabVisible := False;
End;

Procedure TfPagoCuotas.EdtCodModKeyPress(Sender: TObject; Var Key: Char);
Var
//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
   xCondicion,xSQL: String;
//Fin HPC_201719_COB
Begin
   If Key = #13 Then
   Begin
      BorraFotos;
      ImagAso.Visible := False;
      ImaFirma.Visible := False;
      If Length(Trim(EdtCodMod.Text)) > 10 Then
      Begin
         MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
         EdtCodMod.Text := '';
         Exit;
      End;
      EdtCodMod.Text := Format('%.10d', [StrToInt64(EdtCodMod.Text)]);
      DM1.cdsAso.Close;

      // Se modifica el select. Se quita el asterisco
      DM1.cdsAso.DataRequest('Select ASOID, ASOCODMOD, ASOAPENOM, ASOAPENOMDNI, UPROID, UPAGOID, USEID, IDIMAGE,'
         + 'ASODNI, ASONCTA,ASOFRESNOM, ASORESNOM, ASORESCESE, ASOFRESCESE,ASOTIPID, ASOAPEPAT, ASOAPEPATDNI,'
         + 'ASOAPEMAT, ASOAPEMATDNI, ASONOMBRES, ASONOMDNI, SITCTA, ASOCODPAGO, ASODPTO, CIUDID, ZIPID,'
         + 'ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOFECNAC, ASOSEXO, REGPENID, CODAFP, ASOTELF1, ASOTELF2, ASODIR,'
         + 'ASODESLAB, ASODIRLAB, CARGO, HREG'
         + ' From APO201 Where ASOCODMOD LIKE ' + QuotedStr(Trim(EdtCodMod.Text) + '%'));

      DM1.cdsAso.DataRequest('SELECT * From APO201 Where ASOCODMOD LIKE ' + QuotedStr(Trim(EdtCodMod.Text) + '%'));

      DM1.cdsAso.Open;
      If DM1.cdsAso.RecordCount = 1 Then
      Begin
         //Inicio HPC_2017123_COB
         //Modificación en la búsqueda por ASOID
         //Inicio HPC_201719_COB
         //Mejoras funcionales en el registro de la atención del asociado
         xSQL:='SELECT PERIODO,NVL(CFCDES_F,'''') CFCDES_F FROM CFC000 WHERE ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))+' AND PERIODO=(SELECT MAX(PERIODO) FROM CFC000 WHERE ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))+')';
         DM1.cdsQryCalfCartera.DataRequest(xSQL);
         DM1.cdsQryCalfCartera.Open;
         lblcalcartera.Caption:='Cal.Cartera '+DM1.cdsQryCalfCartera.fieldbyname('PERIODO').AsString;
         edtCalCartera.Text:= DM1.cdsQryCalfCartera.fieldbyname('CFCDES_F').AsString;
         DM1.cdsQryCalfCartera.Close;
         // Fin HPC_201719_COB
         // Fin HPC_201723_COB
         DM1.xSgr := '1';
         DM1.CargaImagenesDNI(trim(DM1.cdsAso.FieldByName('ASODNI').AsString), 'RegIndiv');

         DM1.LimpiaDatos;
         DM1.CrgDatos;
       //Inicio HPC_201614_COB
	   //Activación de boton
         ActivaBtnPagosAnticipados;
       //Final HPC_201614_COB

         // Inicio SPP_201410_COB
         If Length(Trim(EdtNomGen.Text)) > 0 Then
         Begin
            If DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
               lblFallecido.Visible := false
            Else
               lblFallecido.Visible := true;

            If DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' THEN
            Begin
               If DM1.cdsAso.FieldByName('ASOSEXO').AsString = 'M' THEN
                  lblFallecido.Caption := 'FALLECIDO'
               Else
                  lblFallecido.Caption := 'FALLECIDA';
                  FechaFall;
            End;
         End;
         // Fin SPP_201410_COB

      // Mostrar mensaje que asociado cuenta con fondo solidario
         If DM1.cdsAso.Active = True Then
            muestrafonsol(DM1.cdsAso.FieldByName('ASOID').AsString);

         PageControl1.TabIndex := 0;

         fPagoCuotas.ConFSC;

      End
      Else
         If DM1.cdsAso.RecordCount > 1 Then
         Begin
            DM1.xSgr := '0';
            DM1.LimpiaDatos;
            fSeleccion := TfSeleccion.create(self);
            fSeleccion.BitMostrar.Enabled := False;
            fSeleccion.edtBuscar.Text := EdtCodMod.Text;
            fSeleccion.edtBuscar.ReadOnly := True;
            fSeleccion.rbtDni.Enabled := False;
            fSeleccion.rbtCuenta.Enabled := False;
            fSeleccion.rbtCodMod.Enabled := False;
            fSeleccion.rbtApeNom.Enabled := False;
            fSeleccion.Showmodal;
            fSeleccion.free;
         // Mostrar mensaje que asociado cuenta con fondo solidario
            If DM1.cdsAso.Active = True Then
               muestrafonsol(DM1.cdsAso.FieldByName('ASOID').AsString);
         End
         Else
         Begin
            DM1.LimpiaDatos;
            LimPrestamos;
            MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
         End;
   End;
End;

Procedure TfPagoCuotas.BitBuscarClick(Sender: TObject);
Begin
   DM1.xSgr := '1';
   BorraFotos;
   ImagAso.Visible := False;
   ImaFirma.Visible := False;
   // Inicio: SPP_201410_COB
   lblFallecido.Visible:=False;
   // Fin: SPP_201410_COB
   DM1.LimpiaDatos;
//Inicio HPC_201719_COB
//Mejoras funcionales en el registro de la atención del asociado
   lblcalcartera.Caption:='';
   edtCalCartera.Text:='';
//Fin HPC_201719_COB
   LimPrestamos;
   fSeleccion := TfSeleccion.create(self);
   fSeleccion.gbbuscar.Width := 430;
   fSeleccion.gbbuscar.Height := 40;
   fSeleccion.edtBuscar.Width := 407;
   fSeleccion.edtBuscar.Height := 28;
   fSeleccion.Showmodal;
   fSeleccion.free;
   // Inicio: SPP_201410_COB
   If Length(Trim(EdtNomGen.Text)) > 0 Then
   Begin
      If DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
         lblFallecido.Visible := false
      Else
         lblFallecido.Visible := true;

      If DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' THEN
      Begin
         If DM1.cdsAso.FieldByName('ASOSEXO').AsString = 'M' THEN
            lblFallecido.Caption := 'FALLECIDO'
         Else
            lblFallecido.Caption := 'FALLECIDA';
            FechaFall;
      End;

   End;
   // Fin: SPP_201410_COB
// Mostrar mensaje que asociado cuenta con fondo solidario
   If DM1.cdsAso.Active = True Then
      muestrafonsol(DM1.cdsAso.FieldByName('ASOID').AsString);
End;

Procedure TfPagoCuotas.CrgPrestamos;
Var
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
   xAsoId,XSQL: String;
//Final HPC_201716_COB
Begin
   LimPrestamos;
   xAsoId := Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsSolicitud.Close;
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
// DM1.cdsSolicitud.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* FROM CRE301 a,CRE110 b Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId)) + ' Order By a.CREFOTORG ');
   XSQL:='SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,'
        +'a.tipcreid,asoid,asocodmod,asocodpago,asoapenom, useid, crefotorg, crefecini, cremtosol, cremtootor, cremtogir, creinteres, credflat, crecuota, crenumcuo, creluggiro, bancoid,'
        +'crenumcta, cremtopag, cresdoact, crepergra, crecuopag, crecuoenv, creperiodi, cremtotal, crecappgo, crenewid, cresaldot, a.usuario, a.freg, a.hreg, ofdesid, calificaid, apruebaid,'
        +'creestado, tmonid, cuotaini, upagoid, uproid, dptoid, listaid, credid, crecom, creseg, crepor, cregadm, crecomp, cremora, forpagoid, cretcalid, tmonabr, cretcalabr, listaabr,'
        +'forpagoabr, a.ciaid, crefrecl, creestid, creanomes, nropagare, nroautdes, a.tipcredes, garapenom, garasoid, asocodaux, nronabo, numref, fecref, tiporef, nroficio, ciudid, archivoftp,'
        +'agenbancoid, dptogiro, useidgar, tipdeseid, bcogiro, cremtonabo, creffinpag, crefinipag, crebloqfec, usubloq, crebloq, flgcaja, fechacaja, crenumcomp, ccosid, a.cuentah, cuentad,'
//Inicio COB_201822_HPC 
//Se amplia el formulario para mostrar el estado del crédito y se actualiza la etiqueta Fecha de Cancelación
        +'cregencob, flgautoma, refanomes, nrorefinan, cajausu, horacaja, a.asotipid, asodni, anulacaja, men_anu, mot_pre, numrefi, flgrefi,CASE WHEN CREESTID NOT IN(''02'',''27'',''11'',''19'',''13'',''04'') Then crefcan ELSE NULL END crefcan, '
        +'flginconsis, perconta, c_abn, cntanomm,'
//Fin COB_201822_HPC 
        +'fec_rcp, crecapliq, crefdes, cremenobs, tipocont, cntflag, cremtodep, crefanul, useranul, cresumcuo, cremotext, nroficio_bck, migrado, usuautcre, fecautcre, estautcre, comautcre,'
        +'usuanusup, fecanusup, motanusup, estanusup, docid, ccserie, ccnodoc, ciaser, cremonins, impcon, dniruc, fecimpcon, codarchivo, cremtoapo, autdescre, fecautdes, usuautdes, impcaraut,'
        +'nrocaraut, diasproc, descenv, autdesges, usudesges, fechordesges, usumodcuo, fecmodcuo, motmodcuo, tasfondes, nroautonp, fecenvbcp, estenvbcp, feccobbcp, codagebcp, impcaronp, monintpro,'
        +'mespergra, creidori, flgpagade, usuautpagade, fecautpagade, diaintcor, monpagade, moncapade, monintcorade, monflaade, mondesade, usupropagade, fecpropagade, flgpropagade, usuaprrepexc,'
        +'fecaprrepexc, codsolrep, cod_campana, cod_prospecto, cod_oferta, cod_oferta_det, email_aso,'
        +'(Select ''A'' From COB_REV_CRE_REC_CAB c where c.asoid=a.asoid and c.credid=a.credid) Ampliado '
        +'FROM CRE301 a,CRE110 b '
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
        +'WHERE a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId)) + ' Order By a.CREFOTORG, a.crefdes ';
// Fin HPC_201731_COB
   DM1.cdsSolicitud.DataRequest(XSQL);
//Final HPC_201716_COB
   DM1.cdsSolicitud.Open;
   If DM1.cdsSolicitud.RecordCount > 0 Then DM1.cdsSolicitud.Last;
   TNumericField(DM1.cdsSolicitud.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsSolicitud.fieldbyname('CRESDOACT')).DisplayFormat := '###,###.#0';

End;

Procedure TfPagoCuotas.btnCancelapanelClick(Sender: TObject);
Begin
   pnlInfAdicional.Visible := False;
End;

Procedure TfPagoCuotas.LimPrestamos;
Begin
   DM1.cdsSolicitud.Close;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
   DM1.cdsSolicitud.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* FROM CRE301 a,CRE110 b Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr('!@#$%^&*+/*') + ' Order By a.CREFOTORG, a.crefdes ');
// Fin HPC_201731_COB
   DM1.cdsSolicitud.Open;
End;

Procedure TfPagoCuotas.dtgPrestamosDblClick(Sender: TObject);
Var
   xAsoId, xCreDid, xCreEstid, xSQL: String;
   Puntero: TBookmark;
Begin
   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xAsoId := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
   xCreEstid := DM1.cdsSolicitud.fieldbyname('CREESTID').AsString;
   Puntero := DM1.cdsSolicitud.GetBookmark;
   Case StrToInt(xCreEstid) Of
      4:
         Begin
         End;
      12:
         Begin
         End;
      13:
         Begin
         End;
      22:
         Begin
         End;
      29:
         Begin
         End;
   Else
      Begin
         DM1.EvaluaSaldos(xAsoId, xCreDid);
         DM1.CrgDatos;
       //Inicio HPC_201614_COB
	   //Activación de boton
         ActivaBtnPagosAnticipados;
       //Final HPC_201614_COB         
      End;
   End;
   DM1.cdsSolicitud.GotoBookmark(Puntero);
   If Trim(DM1.cdsSolicitud.fieldbyname('CREESTID').AsString) = '02' Then
   Begin
      DM1.cdsProvin.Close;
   End;
   fCronoPag := Nil;
   fCronoPag := TfCronoPag.create(self);
//Inicio COB_201822_HPC
//Se amplia el formulario para mostrar el estado del crédito y se actualiza la etiqueta Fecha de Cancelación
   If Length(trim(DM1.cdsSolicitud.FieldByName('CREFCAN').AsString))>0 Then
   Begin
     fCronoPag.EdtFecCan.Visible := True;
     fCronoPag.EdtFecCan.Text := DM1.cdsSolicitud.fieldbyname('CREFCAN').AsString;
   End
   Else fCronoPag.EdtFecCan.Visible := False;
//Final COB_201822_HPC   
   DM1.xHis := 'N';
   fCronoPag.LimpiaFlgvar(xAsoId, xCreDid);
   DM1.CargaCronograma(xAsoId, xCreDid);
   If xCreEstid <> '02' Then
   Begin
      fCronoPag.BitEncuesta.Enabled := False;
   End;
   fCronoPag.Caption := 'Cronograma De Pagos';

   If Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) > '01' Then fCronoPag.BitCorrige.Visible := True;
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
  If (DM1.cdsSolicitud.fieldbyname('TIPDESEID').AsString='10')  or
     (DM1.cdsSolicitud.fieldbyname('CREESTID').AsString<>'02')  or
     (DM1.cdsAso.fieldbyname('FALLECIDO').AsString='S') Then
  Begin
     fCronoPag.chkRepExc.Visible := False
  End;
//Final HPC_201711_COB
   fCronoPag.Showmodal;
   fCronoPag.free;
 //Inicio HPC_201614_COB
 //Activación de boton
   ActivaBtnPagosAnticipados;
 //Final HPC_201614_COB
End;

Procedure TfPagoCuotas.dtgPrestamosKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key = #13 Then
      dtgPrestamos.OnDblClick(dtgPrestamos)

End;

Procedure TfPagoCuotas.BitExcesoClick(Sender: TObject);
Var
   xAsoId: String;
Begin
   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
   fExcesos := Nil;
   fExcesos := TfExcesos.create(self);
   DM1.cdsCambios.Close;
   DM1.cdsCambios.DataRequest('SELECT CREDID,CRECUOTA,CREFPAG,CREMTOCOB,CREMTOEXC,CREAPLEXC,NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) AS PORAPLICA FROM CRE310 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREMTOEXC>0 AND CREESTID NOT IN (''04'',''13'')  Order By CREDID,CRECUOTA');
   DM1.cdsCambios.Open;
   If DM1.cdsCambios.RecordCount = 0 Then Exit;
   TNumericField(DM1.cdsCambios.fieldbyname('CREMTOCOB')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsCambios.fieldbyname('CREMTOEXC')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsCambios.fieldbyname('CREAPLEXC')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsCambios.fieldbyname('PORAPLICA')).DisplayFormat := '###,###.#0';
   fExcesos.Showmodal;
   fExcesos.free;

End;

Procedure TfPagoCuotas.BitDevolverClick(Sender: TObject);
Var
   xAsoId, xSQL: String;
Begin

   DM1.xSgr := '1';
   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
   DM1.cdsAgenciaBco.Close;
   DM1.cdsAgenciaBco.DataRequest('Select a.AGENBCOID,a.AGENBCODES,A.DPTOID,B.DPTODES FROM COB102 A, APO158 B WHERE A.DPTOID=B.DPTOID ORDER BY A.DPTOID,A.AGENBCODES');
   DM1.cdsAgenciaBco.Open;
   DM1.cdsFormPago.Close;
   DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR FROM CRE104 WHERE TIPDESEID IN (''04'',''05'',''06'') ORDER BY TIPDESEID');
   DM1.cdsFormPago.Open;
   DM1.cdsCambios.Close;

   xSQL := 'SELECT CREDID,CRECUOTA,CREFPAG,CREMTODEV,CREFLAGDEV,CREMTOEXC,CREAPLEXC,'
      + '       NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) AS PORAPLICA,CREANO,CREMES'
      + '  FROM CRE310 '
      + ' WHERE ASOID     = ' + QuotedStr(Trim(xAsoId))
      + '   AND CREMTOEXC > CREAPLEXC'
      + '   AND CREESTID NOT IN (''04'',''13'') '
      + ' ORDER BY CREDID, CRECUOTA';

   DM1.cdsCambios.DataRequest(xSQL);
   DM1.cdsCambios.Open;
   If DM1.cdsCambios.RecordCount = 0 Then Exit;
   TNumericField(DM1.cdsCambios.fieldbyname('CREMTOEXC')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsCambios.fieldbyname('CREAPLEXC')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsCambios.fieldbyname('PORAPLICA')).DisplayFormat := '###,###.#0';
   fDevoluciones := Nil;
   fDevoluciones := TfDevoluciones.create(self);
   fDevoluciones.Showmodal;
   fDevoluciones.free;

End;

Procedure TfPagoCuotas.dtgPrestamosDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '21') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '23') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '26') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '24') Then
   Begin
      dtgPrestamos.Canvas.Font.Color := clGreen;
      dtgPrestamos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '12') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '22') Or
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '31') Or 
//Final HPC_201711_COB
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '29') Then
   Begin
      dtgPrestamos.Canvas.Font.Color := $00FF5BFF;
      dtgPrestamos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '13') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '04') Then
   Begin
      dtgPrestamos.Canvas.Font.Color := clRed;
      dtgPrestamos.DefaultDrawDataCell(rect, Field, State);
   End;

   If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '30' Then
   Begin
      dtgPrestamos.Canvas.Font.Color := clTeal;
      dtgPrestamos.DefaultDrawDataCell(rect, Field, State);
   End;

   // Inicio SPP_201411_COB
   If Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString,9,1)= 'A' Then
   Begin 
      dtgPrestamos.Canvas.Font.Color := $004080FF;
      dtgPrestamos.DefaultDrawDataCell(rect, Field, State);
   End;
   // Fin SPP_201411_COB


End;

Procedure TfPagoCuotas.BorraFotos;
Var
   search: TSearchRec;
   nFiles: integer;
Begin
   nFiles := FindFirst('C:\SOLEXES\*.JPG', faAnyFile, search);
   While nFiles = 0 Do
   Begin
      SysUtils.DeleteFile('C:\SOLEXES\' + Search.Name);
      nFiles := FindNext(Search);
   End;
   FindClose(Search);

End;

Procedure TfPagoCuotas.EdtCodModChange(Sender: TObject);
Begin
   BorraFotos;
   If DM1.xSgr <> '1' Then
   Begin
      ImagAso.Visible := False;
      ImaFirma.Visible := False;
   End;
End;

Procedure TfPagoCuotas.BitReprogramaClick(Sender: TObject);
Var
   xAsoId, xCreDid, xPreCre, XSQL: String;
   Boton: Integer;
Begin
   ShowMessage('El Refinanciamiento debe ser manejado desde una opción del Menú Principal');
   exit;

   If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '12' Then
   Begin
      If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'CRE_NIV_AUT_USU', 'USERNIV') >= 'N3' Then
      Begin
         If DM1.cdsSolicitud.FieldByName('IMPCARAUT').AsString = '1' Then
         Begin
            Boton := Application.MessageBox('SEGURO DE AUTORIZAR LA REIMPRESION DE DOCUMENTOS', 'Sistema De Cobranzas', MB_YESNO + MB_ICONQUESTION);
            If Boton = ID_YES Then
            Begin
               xSQL := 'UPDATE CRE301'
                  + '   SET IMPCARAUT = ''0'' '
                  + ' WHERE ASOID     = ' + QuotedStr(xAsoId)
                  + '   AND CREDID    = ' + QuotedStr(xCreDid)
                  + '   AND CREESTID  IN (''01'',''02'') '
                  + '   AND IMPCARAUT = ''1'' ';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            End;
         End;
      End;
      fRepCronog1 := TfRepCronog1.create(self);
      fRepCronog1.lblAsociado.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString + ' - (' + DM1.cdsAso.FieldByName('ASOTIPID').AsString + ')';
      fRepCronog1.lblCreditos.Caption := Copy(xCreDid, 11, 5) + '-' + Copy(xCreDid, 3, 4) + '-' + DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(xCreDid, 7, 2)), 'CRE110', 'TIPCREDES');
      fRepCronog1.gbCab.Visible := False;
      fRepCronog1.gbDet.Visible := False;
      fRepCronog1.BitGrabar.Visible := False;
      fRepCronog1.z2bbtnImprime.Enabled := True;
      fRepCronog1.gbBoton.Top := 10;
      fRepCronog1.Height := 100;
      fRepCronog1.Showmodal;
      fRepCronog1.Free;
      Exit;
   End;

   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xPreCre := Copy(DateToStr(DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime), 7, 4) + Copy(DateToStr(DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime), 4, 2);
   If xPreCre >= Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2) Then
   Begin
      MessageDlg(' No Aplicable a Operaciones en el Mismo Mes...!! ', mtError, [mbOk], 0);
      Exit;
   End;
   If DM1.cdsSolicitud.fieldbyname('CREESTID').AsString <> '02' Then
   Begin
      MessageDlg('El Prestamo No esta Pendiente de Pago!! ', mtError, [mbOk], 0);
      Exit;
   End;
   DM1.cdsFormaPago.Close;
   If DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'DO' Then
      DM1.cdsFormaPago.DataRequest('SELECT ID,DESCRIPCION FROM COB805 WHERE ID IN (''01'',''02'') ORDER BY ID')
   Else
      If DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'CE' Then
         DM1.cdsFormaPago.DataRequest('SELECT ID,DESCRIPCION FROM COB805 WHERE ID IN (''01'',''02'',''03'') ORDER BY ID');
   DM1.cdsFormaPago.Open;
   DM1.cdsTtransaccion.Close;
// Se modifica el select. Se quita el asterisco
   DM1.cdsTtransaccion.DataRequest('SELECT FORPAGOID, FORPAGOABR, USUARIO, DREG, HREG, FORPAGFAPO, FPAGFDEV, FORPAGODES,'
      + ' FLGDCT, FLGTEL, FLGDEV, TIPO, FLGCANC, FOROPEBCON, FLGPAGAUTDISK, FPLANILLA, ACTIVO, FORPAGACT, PERANUCUO'
      + ' FROM COB101 WHERE FLGDCT=''S'' ');
   DM1.cdsTtransaccion.Open;
   xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
   fRepCronog1 := TfRepCronog1.create(self);
   fRepCronog1.lblAsociado.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString + ' - (' + DM1.cdsAso.FieldByName('ASOTIPID').AsString + ')';
   fRepCronog1.lblCreditos.Caption := Copy(xCreDid, 11, 5) + '-' + Copy(xCreDid, 3, 4) + '-' + DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(xCreDid, 7, 2)), 'CRE110', 'TIPCREDES');
   fRepCronog1.Showmodal;
   fRepCronog1.Free;
   DM1.cdsFormaPago.Close;
   DM1.cdsTtransaccion.Close;
End;

Procedure TfPagoCuotas.BitGenCronoClick(Sender: TObject);
Var
   xAsoId, xCreDid, xSQL: String;
   xInteres, xFlat, xMonto, xCuoIni: Real;
   xNumCuo, Boton: Integer;
   xFecPre, xFecDes: tDateTime;
Begin
   xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   xInteres := DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat;
   xFlat := DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat;
   xMonto := DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat;
   xCuoIni := DM1.cdsSolicitud.FieldByName('CUOTAINI').AsFloat;
   xNumCuo := DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger;
   xFecPre := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime;
   xFecDes := DM1.cdsSolicitud.FieldByName('CREFDES').AsDateTime;

   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;

   If Length(Trim(DM1.cdsSolicitud.FieldByName('CREFDES').AsString)) = 0 Then
   Begin
      MessageDlg('Prestamo sin Fecha De Desembolso, No Generara Cronograma De Pagos !!! ', mtError, [mbOk], 0);
      Exit;
   End;
   If Busca302(xAsoId, xCreDid) = 'S' Then
   Begin
      MessageDlg('Imposible, Cronograma De Pagos Ya Fue Generado ...!', mtError, [mbOk], 0);
      Exit;
   End;
   Boton := Application.MessageBox('Seguro De Generar El Cronograma De Pagos ', 'Reprogramación De Cronogramas', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
      DM1.GnrCronograma(xAsoid, xCreDid, xInteres, xFlat, xMonto - xCuoIni, xFecDes, xNumCuo);

      xSQL := 'UPDATE CRE301'
         + '   SET CREESTID  = ''02'', '
         + '       CREESTADO = ''POR COBRAR'', '
         + '       CRECUOTA  = ' + FloattoStr(DM1.CalculaCuota(xInteres, xFlat, xMonto - xCuoIni, xNumCuo)) + ', '
         + '       CRESDOACT = ' + FloatToStr(DM1.CalculaCuota(xInteres, xFlat, xMonto - xCuoIni, xNumCuo) * xNumCuo) + ','
         + ' WHERE ASOID     = ' + QuotedStr(xAsoId)
         + '   AND CREDID    = ' + QuotedStr(xCreDid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      DM1.CrgDatos;
    //Inicio HPC_201614_COB
	//Activación de boton
      ActivaBtnPagosAnticipados;
    //Final HPC_201614_COB
      MessageDlg('Cronograma De Pagos se Genero Con Exito...!', mtInformation, [mbOk], 0);
   End;
End;

Function TfPagoCuotas.Busca302(xAsoId, xCreDid: String): String;
Begin
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest('SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)));
   DM1.cdsCEdu.Open;
   If DM1.cdsCEdu.RecordCount > 0 Then
      Result := 'S'
   Else
      Result := 'N';

   DM1.cdsCEdu.Close;

End;

Procedure TfPagoCuotas.ImaFirmaClick(Sender: TObject);
Begin
   If Length(Trim(EdtNomGen.Text)) = 0 Then
   Begin
      MessageDlg('Debe Seleccionar Un Asociado ...!', mtError, [mbOk], 0);
      Exit;
   End
   Else
   Begin
      DM1.xSgr := 'IDE';
      fIdentAso := TfIdentAso.Create(self);
      fIdentAso.ImagAso.Picture := ImagAso.Picture;
      fIdentAso.ImaFirma.Picture := ImaFirma.Picture;
      fIdentAso.Showmodal;
      fIdentAso.free;
   End;
End;

Procedure TfPagoCuotas.ImagAsoClick(Sender: TObject);
Begin
   If Length(Trim(EdtNomGen.Text)) = 0 Then
   Begin
      MessageDlg('Debe Seleccionar Un Asociado ...!', mtError, [mbOk], 0);
      Exit;
   End
   Else
   Begin
      DM1.xSgr := 'IDE';
      fIdentAso := TfIdentAso.Create(self);
      fIdentAso.ImagAso.Picture := ImagAso.Picture;
      fIdentAso.ImaFirma.Picture := ImaFirma.Picture;
      fIdentAso.Showmodal;
      fIdentAso.free;
   End;
End;

Procedure TfPagoCuotas.BitFDesClick(Sender: TObject);
Var
   xAsoId, xCreDId, xSQL, xTipDes, xAbrDes, xMsgCambio, xCodDes: String;
   Boton: Integer;
   xRegistro: TBookmark;
Begin
   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;

   If DM1.cdsSolicitud.FieldByName('CREESTID').AsInteger > 2 Then
   Begin
      MessageDlg('Solo Apliacable a Prestamos Aprobados ó Por Cobrar ...!', mtError, [mbOk], 0);
      Exit;
   End;

   xTipDes := DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString;
   If Not ((xTipDes = '01') Or (xTipDes = '18')) Then
   Begin
      MessageDlg('El Tipo de Descuento Actual no esta Catalogado ...!, Comuniquese Con Sistemas', mtError, [mbOk], 0);
      Exit;
   End;

   If xTipDes = '18' Then
      xAbrDes := DM1.CrgDescrip('FORPAGOID=' + QuotedStr('01'), 'COB101', 'FORPAGODES')
   Else
      xAbrDes := DM1.CrgDescrip('FORPAGOID=' + QuotedStr('18'), 'COB101', 'FORPAGODES');
   xMsgCambio := 'Seguro De Cambiar Tipo De Descuento a : ' + xAbrDes;

   Boton := Application.MessageBox(pChar(xMsgCambio), 'Tipo De Descuento', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
      xAsoId := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
      xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
      xRegistro := DM1.cdsSolicitud.GetBookmark;

      If xTipDes = '18' Then
      Begin
         xCodDes := '01';
         xAbrDes := Copy(DM1.CrgDescrip('FORPAGOID=' + QuotedStr(xCodDes), 'COB101', 'FORPAGODES'), 1, 3)
      End
      Else
      Begin
         xCodDes := '18';
         xAbrDes := Copy(DM1.CrgDescrip('FORPAGOID=' + QuotedStr(xCodDes), 'COB101', 'FORPAGODES'), 1, 3);
      End;
      xSQL := 'UPDATE CRE301 '
         + '   SET FORPAGOID  = ' + QuotedStr(xCodDes) + ','
         + '       FORPAGOABR = ' + QuotedStr(xAbrDes) + ','
         + '       BANCOID    = ''04'' '
         + ' WHERE ASOID      = ' + QuotedStr(xAsoId)
         + '   AND CREDID     = ' + QuotedStr(xCreDid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      xSQL := 'UPDATE CRE302'
         + '   SET FORPAGOID  = ' + QuotedStr(xCodDes) + ','
         + '       FORPAGOABR = ' + QuotedStr(xAbrDes) + ','
         + '       BANCOID    = ''04'' '
         + ' WHERE ASOID      = ' + QuotedStr(xAsoId)
         + '   AND CREDID     = ' + QuotedStr(xCreDid)
         + '   AND CREESTID   IN (''02'',''11'',''14'',''27'')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      DM1.CrgDatos;
    //Inicio HPC_201614_COB
	//Activación de boton
      ActivaBtnPagosAnticipados;
    //Final HPC_201614_COB
      DM1.cdsSolicitud.GotoBookmark(xRegistro);
      dtgPrestamos.SetFocus;
      xMsgCambio := 'Tipo De Descuento Cambiado a : ' + DM1.CrgDescrip('FORPAGOID=' + QuotedStr(xCodDes), 'COB101', 'FORPAGODES');
      MessageDlg(xMsgCambio, mtInformation, [mbOk], 0);
   End
End;

Procedure TfPagoCuotas.Botones(xLogic: Boolean);
Begin
 //BitReprograma.Enabled:= xLogic ; BitGenCrono.Enabled:= xLogic ; BitAnulaRep.Enabled:= xLogic ; BitFDes.Enabled:= xLogic ; BitDevolver.Enabled:= xLogic ; BitExceso.Enabled:= xLogic ; BitMstApo.Enabled:= xLogic ;
End;

Procedure TfPagoCuotas.PageControl1Change(Sender: TObject);
Begin
   actfootCabFSC;
//Inicio HPC_201603_COB - Se habilita la carga de los créditos históricos para consulta
   //Inicio HPC_201502_COB
//   If not ParaAdenda Then Exit;
   //Final HPC_201502_COB
   ParaAdenda;
//Final HPC_201603_COB
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
   ParaHistAmp;
//Final HPC_201716_COB
   If Length(Trim(EdtNomGen.Text)) > 0 Then
      CrgPrestamosHis
   Else
      LImPrestamosHis;
   If PageControl1.ActivePageIndex = 0 Then
   Begin
      ControlaBotones;
   End
   Else
   Begin
      BitReprograma.Enabled := False;
      BitGenCrono.Enabled := False;
      BitFDes.Enabled := False;
      BitMstApo.Enabled := False;
      BitReclas.Enabled := False;
      BitAnulaRep.Enabled := False;
      btnExtornar.Enabled := False;
      BitDevolver.Enabled := False;
      BitExceso.Enabled := False;
// Inicio HPC_201805_COB
// Constancia de deuda al FSC
      If VerificaConstanciaFSC Then
      Begin
        btnDeudaFSC.Enabled:=true;
      End;
   End;
End;
// Fin HPC_201805_COB

// Inicio HPC_201805_COB
// Constancia de deuda al FSC
Function TfPagoCuotas.VerificaConstanciaFSC: Boolean;
Var
   xSQL: String;
Begin
   Result := False;
   While Not DM1.cdsMGrupo.Eof Do
   Begin
     If ((Dm1.cdsMGrupo.FieldByName('ID_EST_FSC').AsString = '02') Or (Dm1.cdsMGrupo.FieldByName('ID_EST_FSC').AsString = '27')) Then
     Begin
       Result := true;
     End;
       DM1.cdsMGrupo.Next
   End;
   DM1.cdsMGrupo.First;
End;
// Fin HPC_201805_COB

Procedure TfPagoCuotas.CrgPrestamosHis;
Var
   xAsoId: String;
Begin
   LImPrestamosHis;
   xAsoId := Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsSolicitudA.Close;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
// Inicio HPC_201735_COB: nuevos campos a retornar
   //DM1.cdsSolicitudA.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* FROM PREST a,CRE110 b Where a.TIP_PRE=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId)) + ' Order By a.CREFOTORG, a.crefdes ');
   DM1.cdsSolicitudA.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* FROM PREST a,CRE110 b Where a.TIP_PRE=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId)) + ' Order By a.CREFOTORG ');
// Fin HPC_201735_COB
// Fin HPC_201731_COB
   DM1.cdsSolicitudA.Open;
   If DM1.cdsSolicitudA.RecordCount > 0 Then DM1.cdsSolicitudA.Last;
   TNumericField(DM1.cdsSolicitudA.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsSolicitudA.fieldbyname('CRESDOACT')).DisplayFormat := '###,###.#0';
End;

Procedure TfPagoCuotas.dtgHistoricosDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '21') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '23') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '26') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '24') Then
   Begin
      dtgHistoricos.Canvas.Font.Color := clGreen;
      dtgHistoricos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '12') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '22') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '29') Then
   Begin
      dtgHistoricos.Canvas.Font.Color := $00FF5BFF;
      dtgHistoricos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '13') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '04') Then
   Begin
      dtgHistoricos.Canvas.Font.Color := clRed;
      dtgHistoricos.DefaultDrawDataCell(rect, Field, State);
   End;

End;

Procedure TfPagoCuotas.LImPrestamosHis;
Begin
   DM1.cdsSolicitudA.Close;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
// Inicio HPC_201735_COB: nuevos campos a retornar
   //DM1.cdsSolicitudA.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* FROM PREST a,CRE110 b Where a.TIP_PRE=b.TIPCREID AND a.ASOID =' + QuotedStr('#$%^&*!@+*') + ' Order By a.CREFOTORG, a.crefdes');
   DM1.cdsSolicitudA.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* FROM PREST a,CRE110 b Where a.TIP_PRE=b.TIPCREID AND a.ASOID =' + QuotedStr('#$%^&*!@+*') + ' Order By a.CREFOTORG');
// Fin HPC_201735_COB
// Fin HPC_201731_COB
   DM1.cdsSolicitudA.Open;
   If DM1.cdsSolicitudA.RecordCount > 0 Then DM1.cdsSolicitudA.Last;
   TNumericField(DM1.cdsSolicitudA.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsSolicitudA.fieldbyname('CRESDOACT')).DisplayFormat := '###,###.#0';
End;

// Inicio SPP_201409_COB
Procedure TfPagoCuotas.BitAnulaRepClick(Sender: TObject);
var
   Boton: Integer;
//Inicio HPC_201705_COB
//Anulación de Ampliados, si existe pagos debe aplicarse en el crédito origen 
   xAsoId, xCreDid, xMensaje, xSQL,xSQL1,xSQL2,xSQL3,xSQL4,xNumCreOri : String;
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
   CSQL,XSQL5,XSQL6,xMotivo:String;
   xIMPAPLCROORI:double;
//Final HPC_201711_COB
//Final  HPC_201705_COB
//Inicio HPC_201712_COB
//Generación de Exceso en la Anulación de Ampliados
  XSQL7:String;
//Final  HPC_201712_COB
Begin
   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
//Inicio HPC_201712_COB
//Generación de Exceso en la Anulación de Ampliados
// If Length(Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)) > 0 Then
   If (Length(Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)) > 0)  and
      (Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)<>'D') Then
//Final HPC_201712_COB
   Begin
      If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '02' Then
      Begin
            If Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='A' Then
               xMensaje:='Ampliación de Préstamos'
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
            Else If Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='P' Then
               xMensaje:='Reprogramación de Préstamos'
//Final HPC_201711_COB
            Else
               xMensaje:='Refinanciamiento de Préstamos';

            xAsoId := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
            xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
//           If Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='A' Then
             If (Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='A') or
                (Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='P') Then
//Final HPC_201711_COB
                Begin
                   If Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) <> '03' Then
                      Begin
                         MessageDlg(' OPERACIÓN SOLO PERMITIDA A USUARIO DE NIVEL 3 !! ', mtInformation,[mbOk],0);
                         Exit;
                      End;
                   xSQL:='SELECT ASOID FROM CRE310 WHERE ASOID='+QuotedStr(xAsoId)+' AND '+
                         'CREDID='+QuotedStr(xCreDid)+' AND FORPAGID IN (''05'',''10'',''15'') AND CREESTID NOT IN (''04'',''13'',''99'') ';
                   If DM1.CountReg(xSQL) > 0 Then
                      Begin
                          MessageDlg(' NO SE PUEDE ANULAR PRESTAMO CON PAGOS POR ABONO/LIQ.BENEFICIOS O DEVOLUCIONES !! ', mtInformation,[mbOk],0);
                          Exit;
                      End;
                End;
             Boton := Application.MessageBox('Seguro de Anular este Préstamo ', pChar(xMensaje), MB_YESNO + MB_ICONQUESTION);
             If Boton = ID_YES Then
             Begin
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
//              If Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='A' Then
                If (Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='A') or
                   (Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='P') Then
//Final HPC_201711_COB
                   Begin
                       DM1.xSgr := 'AMP';
                       fMenObs := Nil;
                       fMenObs := tfMenObs.Create(Self);
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
//                     fMenObs.Caption := 'Anulación de Préstamo Ampliado';
                       fMenObs.cbxMotivos.Visible := True;
                       If (Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='A') Then
                           fMenObs.Caption := 'Anulación de Préstamo Ampliado';
                       If (Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)='P') Then
                           fMenObs.Caption := 'Anulación de Préstamo Reprogramado';
//Final HPC_201711_COB
                       fMenObs.Showmodal;
                       xMensaje:=Trim(fMenObs.mObsDat.Text);
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
                       xMotivo :=Trim(fMenObs.cbxMotivos.Text);
//Final HPC_201711_COB
                       fMenObs.Free;
                       If DM1.xSgr='PMA' Then Exit;

                       xNumCreOri:=DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid), 'CRE301', 'NUMREFI');

//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
//Toma datos para grabar del nuevo crédito antes de anular
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
                       //Toma algunos datos del ampliado
                        DatadeAmpliacion(xAsoId,DM1.cdsSolicitud.FieldByName('CREDID').AsString);
                        XIMPSALCAP:=dm1.cdsQry11.FieldByname('CREAMORT').Asfloat;
                        XIMPCUOREP:=dm1.cdsQry11.FieldByname('CRECUOTA').Asfloat;
                        XUSUGENREP:=dm1.cdsQry11.FieldByname('USUARIO').AsString;
//Final HPC_201716_COB
                       saldoscreditoant(xAsoId,xCreDid);
//Final HPC_201711_COB
                       DM1.DCOM1.AppServer.SolStartTransaction;
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
                       //Toma algunos datos del ampliado
                       XIMPAPLCROORIPLA:=dm1.cdsQry11.FieldByname('PLA').Asfloat;
                       XIMPAPLCROORIBAN:=dm1.cdsQry11.FieldByname('BAN').Asfloat;
                       XIMPAPLCROORIEFE:=dm1.cdsQry11.FieldByname('EFE').Asfloat;
                       XIMPAPLCROORIBEN:=dm1.cdsQry11.FieldByname('BEN').Asfloat;
                       XIMPAPLCROORIOTR:=dm1.cdsQry11.FieldByname('OTR').Asfloat;
//Final HPC_201716_COB
                      //Se Anula los pago MDF del crédito origen y el nuevo(ampliado) y se pone un FLAG en la observacion del CRE310
                       xSQL:='BEGIN '+
                             '  UPDATE CRE301 SET CREESTID=''13'',CREESTADO=''ANULADO'',MEN_ANU='+QuotedStr(xMensaje)+', '+
                             '  CREFANUL=SYSDATE, USERANUL='+QuotedStr(DM1.wUsuario)+' ' +
                             '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+'; ' +

                             '  UPDATE CRE302 SET CREESTID=''13'',CREESTADO=''ANULADO'' ' +
                             '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+'; ' +

                             '  UPDATE CRE310 SET CREESTID = ''13'', CREESTADO = ''ANULADO'', CREOBS=''ANULADO-''||TRIM(CREOBS)  '+
                             '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID NOT IN (''13'',''04'',''99'') '+
                             '  AND NUMDEV IS NULL ;'+

                             '  UPDATE CRE310 SET CREESTID = ''13'', CREESTADO = ''ANULADO'', CREOBS=''ANULADO-''||TRIM(CREOBS)  '+
//Inicio HPC_201712_COB
//Generación de Exceso en la Anulación de Ampliados
//                           '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri)+' AND FORPAGID=''27'' AND CREDOCPAG='+QuotedStr(xAsoId)+' AND CREESTID NOT IN (''13'',''04'',''99'') '+
                             '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri)+' AND FORPAGID=''27'' AND CREESTID NOT IN (''13'',''04'',''99'') '+
//Final HPC_201712_COB
                             '  AND NUMDEV IS NULL ;'+
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
                             '  UPDATE CRE301 SET  CREESTID=''02'',CREESTADO=''POR COBRAR'',CREIDORI=NULL,USUAPRREPEXC=NULL,FECAPRREPEXC=NULL  '+
                             '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri)+';'+
//Inicio HPC_201712_COB
//Actualiza segÚn CRE302
//Generación de Exceso en la Anulación de Ampliados
                             'End;';
//                           '  DECLARE '+
//                           '  CURSOR ACTUALIZA IS '+
//                           '  SELECT ASOID,CREDID,CRECUOTA FROM CRE302 '+
//                           '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri) +' AND CREESTID IN (''20'',''22''); '+
//                           '  BEGIN '+
//                           '   FOR A IN ACTUALIZA LOOP '+
//                           '     DB2ADMIN.sp_act_cre302(A.ASOID,A.CREDID,A.CRECUOTA); '+
//                           '   END LOOP; '+
//                           '  END; '+
//
//                           '  DECLARE '+
//                           '  CURSOR ACTUALIZA IS '+
//                           '  SELECT ASOID,CREDID,CRECUOTA FROM CRE310 '+
//                           '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri) +' AND FORPAGID=''27'' ;' +
//                           '  BEGIN '+
//                           '   FOR A IN ACTUALIZA LOOP '+
//                           '     DB2ADMIN.sp_act_cre302(A.ASOID,A.CREDID,A.CRECUOTA); '+
//                           '   END LOOP; '+
//                           '  END;'+
//
//                           '  DB2ADMIN.SP_SALDOTOTAL('+QuotedStr(xAsoId)+','+QuotedStr(xNumCreOri)+');'+
//                           'END; ';
//Final HPC_201712_COB


//Inicio HPC_201712_COB
//Generación de Exceso en la Anulación de Ampliados
                   XSQL7:=   'BEGIN '+
                             '  DECLARE '+
                             '  CURSOR ACTUALIZA IS '+
                             '  SELECT ASOID,CREDID,CRECUOTA FROM CRE302 '+
                             '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri) +' AND CREESTID IN (''20'',''22''); '+
                             '  BEGIN '+
                             '   FOR A IN ACTUALIZA LOOP '+
                             '     DB2ADMIN.sp_act_cre302(A.ASOID,A.CREDID,A.CRECUOTA); '+
                             '   END LOOP; '+
                             '  END; '+

                             '  DECLARE '+
                             '  CURSOR ACTUALIZA IS '+
                             '  SELECT ASOID,CREDID,CRECUOTA FROM CRE310 '+
                             '  WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri) +' AND FORPAGID=''27'' ;' +
                             '  BEGIN '+
                             '   FOR A IN ACTUALIZA LOOP '+
                             '     DB2ADMIN.sp_act_cre302(A.ASOID,A.CREDID,A.CRECUOTA); '+
                             '   END LOOP; '+
                             '  END;'+
                             '  DB2ADMIN.SP_SALDOTOTAL('+QuotedStr(xAsoId)+','+QuotedStr(xNumCreOri)+');'+
                             'END; ';
//Final HPC_201712_COB

                       //Se aplica los pagos del ampliado si exiten, al crédito original
//Inicio HPC_201712_COB
//Generación de Exceso en la Anulación de Ampliados
//                    xSQL1:='DECLARE '+
//                           'CURSOR PAGOS IS  '+
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
//                           'SELECT ASOID,MAX(CREDID)CREDID,CREDOCPAG,CREFPAG,FREG,USUARIO,FORPAGID,CCBCOID,CREOBS,NROOPE, '+
//Final HPC_201711_COB
//                           '       FOPERAC,FORPAGOABR,DETRCOBID,ASOAPENOM, RCOBID,CNTANOMM,TIPOCONT,OFDESID, '+
//                           '       BANCOID,USERCOBID,CNTFLAG,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '+
//                           '       FROM CRE310 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid) +
//                           '       AND CREESTID =''13'' AND SUBSTR(CREOBS,1,8)=''ANULADO-'' '+
//                           '       GROUP BY ASOID,CREDOCPAG,CREFPAG,FREG,USUARIO,FORPAGID,CCBCOID,CREOBS,NROOPE, '+
//                           '                FOPERAC,FORPAGOABR,DETRCOBID,ASOAPENOM, '+
//                           '                RCOBID,CNTANOMM,TIPOCONT,OFDESID,BANCOID,USERCOBID,CNTFLAG; '+
//                           'CURSOR APLICA IS '+
//                           'SELECT REF,POS,INTERES,ASOID,ASOCODMOD,FLECHA,ASOAPENOM,ASOCODAUX,TIPCREDES, '+
//                           '       CREAMORT,CREINTERES,CREFLAT,AMORTIZACION,CREMTOFLAT,CREMTO,CREDID,CREDITO, '+
//                           '       CUOTA,CREANO,CREMES,FVENCIMIENTO,TIPCREID,FORPAGOID,FORPAGOABR,CREESTID, '+
//                           '       CREESTADO,PERCOB,CREFOTORG,SALDO,CINTERES,INTERESCRE310,MODO,ACUMULADO, '+
//                           '       PAGO,MONCOBDESGRAV,MONPACDESGRAV,XID,PROCESADO,CRECAPITAL,CREMTOINT, '+
//                           '       CREMTOFLA,CREMTODESG,CREMTOEXC,TIPCREPAR FROM COB_POLITICA_CUO_GTT '+
//                           '        WHERE NVL(PAGO,0) > 0; '+
//                           ' BEGIN '+
//                           '     FOR C IN PAGOS LOOP '+
//                           '         DB2ADMIN.SP_COB_POLITICA_AMORTIZACION(C.ASOID,'+QuotedStr(xNumCreOri)+',''1'',''1'',C.CREMTOCOB, TO_CHAR(C.FOPERAC,''YYYYMM''), TO_CHAR(ADD_MONTHS(C.FOPERAC,-1),''YYYYMM''),null); '+
//                           '         FOR D IN APLICA LOOP '+
//                           '           DB2ADMIN.SP_COB_PAGO_CUOTA_V21(D.ASOID, D.CREDID, D.CUOTA, D.CINTERES, D.PAGO, C.NROOPE, C.FOPERAC,C.FOPERAC,C.BANCOID, C.CCBCOID, C.FORPAGID, TRIM(SUBSTR(C.CREOBS,9)), C.TIPOCONT,'+
//                           '           C.RCOBID, C.DETRCOBID, C.USERCOBID, C.USUARIO, NULL,C.FREG,C.CNTFLAG); '+
//                           '         END LOOP; '+
//                           '      END LOOP; '+
//                           ' END;';
//}
                        xSQL1:='BEGIN SP_COB_APL_PAG_REV('+QuotedStr(xAsoId)+','+QuotedStr(xCreDid)+','+QuotedStr(xNumCreOri)+'); END;';
//Final HPC_201712_COB

//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
                        //Adiciona a tabla estadístico de anulados recalendarizados
                        //Se adiciona el importe que va a aplicar al credito original
                         CSQL:='SELECT SUM(NVL(CREMTOCOB,0)) CREMTOCOB '+
                               '       FROM CRE310 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid) +
                               '       AND CREESTID NOT IN (''13'',''04'',''99'')  AND NUMDEV IS NULL ';
                         Dm1.cdsDFam.Close;
                         Dm1.cdsDFam.DataRequest(CSQL);
                         Dm1.cdsDFam.Open;
                         xIMPAPLCROORI:=Dm1.cdsDFam.Fieldbyname('CREMTOCOB').AsFloat;
                         //Se consulta si existe en la tabla de Recalendarizados (Ampliados y Reprogramados)
                         CSQL:='Select CODSOLREP,ASOID,ASOCODMOD,ASODNI,CREDID,TIPCREID,CRECUOTA,FORPAGOID,CFCDES_F,DIAATR,IMPSALTOT,IMPSALREP,IMPSALCAP,TIPREC,TIPREP,TASINTREP,NUMCRENUE,CRENUMCUO,'
                               +'      CRENUMGRA,FECINIVEN,FECFINVEN,IMPCUOREP,DESMOTREC,USUGEN,FECGEN '
                               +' From COB_REP_CRE_CAB '
                               +'Where  CODSOLREP='+QuotedStr(DM1.cdsSolicitud.FieldByName('CODSOLREP').AsString);
                         Dm1.cdsDFam.Close;
                         Dm1.cdsDFam.DataRequest(CSQL);
                         Dm1.cdsDFam.Open;

                         //si no existe los datos en COB_REP_CRE_CAB lo toma de la tabla CRE301 esto es por los ampliados antes de este pase
                         If Dm1.cdsDFam.RecordCount=0 Then
                         Begin
                           CSQL:='select '' '' CODSOLREP,ASOID,ASOCODMOD,ASODNI,'+QuotedStr(xNumCreOri)+' CREDID,TIPCREID,CRECUOTA,FORPAGOID, NULL CFCDES_F,'
                               +' 0 DIAATR,0 IMPSALTOT,CREMTOOTOR IMPSALREP, 0 IMPSALCAP,''AMPLIADO'' TIPREC, '' '' TIPREP,'
                               +' CREINTERES TASINTREP, CREDID NUMCRENUE,CRENUMCUO,0 CRENUMGRA,NULL FECINIVEN,NULL FECFINVEN,'
                               +'  CRECUOTA IMPCUOREP,NULL DESMOTREC,NULL DESMOTREC,TRUNC(CREFOTORG) FECGEN '
                               +'From cre301 where asoid='+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND '
                               +'                 credid='+QuotedStr(DM1.cdsSolicitud.FieldByName('CREDID').AsString);
                           Dm1.cdsDFam.Close;
                           Dm1.cdsDFam.DataRequest(CSQL);
                           Dm1.cdsDFam.Open;
                         End;
                         //llave para busqueda
                         kASOID :=Dm1.cdsDFam.FieldByName('ASOID').AsString;
                         kCREDID:=xNumCreOri;
                         kFECGEN:=FormatDateTime('dd/mm/yyyy',Dm1.cdsDFam.FieldByName('FECGEN').AsDateTime);

                         XSQL5:='Insert Into db2admin.COB_REV_CRE_REC_CAB(ASOID,ASOCODMOD,ASODNI,ASOAPENOM,CREDID,CODSOLREP,IMPSALTOT,NUMCRENUE,FECREP,IMPREP,TIPREC,TIPREP,IMPAPLCROORI,MOTREV,USUREV,FECREV,OBSADI,FECINIVEN,FECFINVEN,TASINTREP,CRENUMCUO,CRENUMGRA) VALUES('+
                         QuotedStr(Dm1.cdsDFam.FieldByName('ASOID').AsString)+','+
                         QuotedStr(Dm1.cdsDFam.FieldByName('ASOCODMOD').AsString)+','+
                         QuotedStr(Dm1.cdsDFam.FieldByName('ASODNI').AsString)+','+
                         QuotedStr(Dm1.cdsSolicitud.FieldByName('ASOAPENOM').AsString)+','+
                         QuotedStr(Dm1.cdsDFam.FieldByName('CREDID').AsString)+','+
                         QuotedStr(Dm1.cdsDFam.FieldByName('CODSOLREP').AsString)+','+
                         FloatToStr(Dm1.cdsDFam.FieldByName('IMPSALTOT').AsFloat)+','+
                         QuotedStr(Dm1.cdsDFam.FieldByName('NUMCRENUE').AsString)+','+
                         QuotedStr(FormatDateTime('dd/mm/yyyy',Dm1.cdsDFam.FieldByName('FECGEN').AsDateTime))+','+
                         FloatToStr(Dm1.cdsDFam.FieldByName('IMPSALREP').AsFloat)+','+
                         QuotedStr(Dm1.cdsDFam.FieldByName('TIPREC').AsString)+','+
                         QuotedStr(Dm1.cdsDFam.FieldByName('TIPREP').AsString)+','+
                         FloatToStr(xIMPAPLCROORI)+','+
                         QuotedStr(xMotivo)+','+
                         QuotedStr(DM1.wUsuario)+',sysdate,'+
                         QuotedStr(xMensaje)+','+
                         QuotedStr(Dm1.cdsQry11.FieldByName('FECVENINI').AsString)+','+
                         QuotedStr(Dm1.cdsQry11.FieldByName('FECVENFIN').AsString)+','+
                         Dm1.cdsQry11.FieldByName('TASAINT').AsString+','+
                         Dm1.cdsQry11.FieldByName('CRENUMCUO').AsString+','+
                         Dm1.cdsQry11.FieldByName('CRENUMGRA').AsString+')';

                         XSQL6:='Update COB_REP_CRE_CAB SET FLAANU=''A'',USUANU='''+DM1.wUsuario+''',FECANU=SYSDATE '
                               +'Where  CODSOLREP='+QuotedStr(DM1.cdsSolicitud.FieldByName('CODSOLREP').AsString);
//Final HPC_201711_COB
                        //Se elimina el crédito ampliado
                        xSQL2:='Begin '+
                                 'DELETE FROM CRE310 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID =''13'' AND SUBSTR(CREOBS,1,8)=''ANULADO-''; '+
                                 'DELETE FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+';'+
                                 'DELETE FROM CRE301 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+';'+
                               'End;';
                         Try
                             DM1.DCOM1.AppServer.EjecutaSql(xSQL);
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
//                           DM1.DCOM1.AppServer.EjecutaSql(xSQL1);
                             DM1.DCOM1.AppServer.EjecutaSql(XSQL5);
//Inicio HPC_201712_COB
//Generación de Exceso en la Anulación de Ampliados
                             DM1.DCOM1.AppServer.EjecutaSql(XSQL7);
//Final HPC_201712_COB
                             //si no tiene el dato CODSOLREP es de una apliacion antigua y les falta datos
                             If  Length(Trim(dm1.cdsDFam.FieldByName('CODSOLREP').AsString))=0 Then
                             Begin
                              //toma datos faltantes del crédito original
                              saldoscreditoant(xAsoId,kCREDID);
//Inicio HPC_201712_COB
//Generación de Exceso en la Anulación de Ampliados
                              CSQL:='Delete COB_REV_CRE_REC_CAB '
                                   +' Where asoid='''+kASOID+''' and credid='''+kCREDID+''' and CODSOLREP=''SIN SOLIC.'' and FECREP='''+kFECGEN+''' ';
                              DM1.DCOM1.AppServer.EjecutaSql(CSQL);
                              CSQL:='Update COB_REV_CRE_REC_CAB SET  CODSOLREP=''SIN SOLIC.'',IMPSALTOT='+dm1.cdsQry11.FieldByname('SALDO_TOT').AsString
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
                                   +',IMPSALCAPORI='+FloatToStr(XIMPSALCAP)+',IMPCUOREP='+FloatToStr(XIMPCUOREP)+',USUGENREP='''+XUSUGENREP+''','
                                   +'IMPAPLCROORIPLA='+FloatToStr(XIMPAPLCROORIPLA)+',IMPAPLCROORIBAN='+FloatToStr(XIMPAPLCROORIBAN)+','
                                   +'IMPAPLCROORIEFE='+FloatToStr(XIMPAPLCROORIEFE)+',IMPAPLCROORIBEN='+FloatToStr(XIMPAPLCROORIBEN)+','
                                   +'IMPAPLCROORIOTR='+FloatToStr(XIMPAPLCROORIOTR)
//Final HPC_201716_COB

                                    +' Where asoid='''+kASOID+''' and credid='''+kCREDID+''' and FECREP='''+kFECGEN+''' ';
                              DM1.DCOM1.AppServer.EjecutaSql(CSQL);
//Final HPC_201712_COB
                             End;
                             DM1.DCOM1.AppServer.EjecutaSql(xSQL1);
                             DM1.DCOM1.AppServer.EjecutaSql(XSQL6);
//Final HPC_201711_COB
                             DM1.DCOM1.AppServer.EjecutaSql(xSQL2);
                             DM1.DCOM1.AppServer.SolCommit;
                          Except
                             DM1.DCOM1.AppServer.SolRollBack;
                             ShowMessage('Error al Revertir Crédito Ampliado');
                             CrgPrestamos;
                             EXIT;
                          End;

                         //Si existen pagos devueltos anulados o extornados del crédito ampliado
                         //estos pagos pasan de la misma forma a la ultima cuota cancelada del crédito original si no existen cancelados
                         //a la ultima parcial si no exiten parciales a la primera por cobrar.
                         xSql4:='Select max(CRECUOTA) CUOTA FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri)+' AND CREESTID=''21'' ';
                         DM1.cdsPais.Close;
                         DM1.cdsPais.DataRequest(xSQL4);
                         DM1.cdsPais.Open;

                         If DM1.cdsPais.RecordCount=0 Then
                         Begin
                           xSql4:='Select max(CRECUOTA) CUOTA FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri)+' AND CREESTID=''27'' ';
                           DM1.cdsPais.Close;
                           DM1.cdsPais.DataRequest(xSQL4);
                           DM1.cdsPais.Open;
                         End;

                         If DM1.cdsPais.RecordCount=0 Then
                         Begin
                           xSql4:='Select max(CRECUOTA) CUOTA FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xNumCreOri)+' AND CREESTID=''02'' ';
                           DM1.cdsPais.Close;
                           DM1.cdsPais.DataRequest(xSQL4);
                           DM1.cdsPais.Open;
                         End;

                         If DM1.cdsPais.RecordCount>0  Then
                         Begin
                           xSQL3:='UPDATE CRE310 SET CREDID='+QuotedStr(xNumCreOri)+',CRECUOTA='+QuotedStr(DM1.cdsPais.FieldByname('CUOTA').Asstring) +
                                  'WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+ ' AND SUBSTR(CREOBS,1,8)<>''ANULADO-'' ' ;
                           Try
                               DM1.DCOM1.AppServer.EjecutaSql(xSQL3);
                               DM1.DCOM1.AppServer.SolCommit;
                            Except
                               DM1.DCOM1.AppServer.SolRollBack;
                               ShowMessage('Error al Actualizar las cuotas devueltas en el crédito ampliado');
                               CrgPrestamos;
                               EXIT;
                            End;
                         End;

                         CrgPrestamos;
                    //Final HPC_201705_COB
                   End
                Else
                   Begin
                      If Busca310(xAsoId, xCreDid) = 'S' Then
                      Begin
                         MessageDlg('No se puede Anular tiene Pagos Efectuados!', mtError, [mbOk], 0);
                         Exit;
                      End;
                      DM1.xSgr := 'REP';
                      fMenObs := Nil;
                      fMenObs := tfMenObs.Create(Self);
                      fMenObs.Caption := 'Anulación de Préstamos Refinanciado';
                      fMenObs.Showmodal;
                      fMenObs.Free;
                   End;

             End;
      End
      Else
      Begin
         MessageDlg('Solo Aplicacable a Préstamos Refinanciados/Ampliados Por Cobrar...!', mtError, [mbOk], 0);
         Exit;
      End;
   End
   Else
   Begin
      MessageDlg('Solo Aplicable a Préstamos Refinanciados/Ampliados...!', mtError, [mbOk], 0);
      Exit;
   End;
End;

// Fin SPP_201409_COB

Procedure TfPagoCuotas.AnulaAct(xAsoId, xCreDid, xCnd: String);
Var
   xSQL: String;
Begin
   DM1.cdsAportes.Close;
   DM1.cdsAportes.DataRequest('SELECT ASOID,CREDID,CREESTID,CREESTADO,CRESDOACT,CREMENOBS FROM CRE301 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)));
   DM1.cdsAportes.Open;
   If DM1.cdsAportes.RecordCount = 1 Then
   Begin
      DM1.cdsAportes.Edit;
      DM1.cdsAportes.FieldByName('CREESTID').AsString := '13';
      DM1.cdsAportes.FieldByName('CREESTADO').AsString := 'ANULADO';
      DM1.cdsAportes.FieldByName('CRESDOACT').AsFloat := 0;
      DM1.cdsAportes.FieldByName('CREMENOBS').AsString := Trim(fMenObs.mObsDat.Lines.Text);
      DM1.cdsAportes.ApplyUpdates(0);
   End;

   DM1.cdsAportes.Close;
   DM1.cdsAportes.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREESTADO FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)));
   DM1.cdsAportes.Open;
   If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      DM1.cdsAportes.First;
      While Not DM1.cdsAportes.Eof Do
      Begin
         AnulaCuoAct(DM1.cdsAportes.FieldByName('ASOID').AsString, DM1.cdsAportes.FieldByName('CREDID').AsString, DM1.cdsAportes.FieldByName('CRECUOTA').AsString, xCnd);
         DM1.cdsAportes.Next;
      End;
   End;

End;

Procedure TfPagoCuotas.AnulaPrestamo(xAsoId, xCreDid, xNroNabo, xFecPre, xCnd: String);
Var
   tAsoid, tCreDid, tCreCuota, tEstado, xSQL: String;
   tCremtoCob: Currency;
Begin
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREFPAG,CREMTOCOB,FORPAGID,CREESTID,CREESTADO,CREESTANT,CREESTANTDES FROM CRE310 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND NRONABO=' + QuotedStr(Trim(xNroNabo)) + ' AND FORPAGID IN (''12'',''27'',''28'')  AND CREESTID<>''13'' AND  CREFPAG =To_Date(' + QuotedStr(Trim(xFecPre)) + ',''dd/mm/yyyy'') Order By CREDID,CRECUOTA ');
   DM1.cdsQry3.Open;
   If DM1.cdsQry3.RecordCount > 0 Then
   Begin
      DM1.cdsQry3.First;
      While Not DM1.cdsQry3.Eof Do
      Begin
         tAsoid := DM1.cdsQry3.FieldByName('ASOID').AsString;
         tCreDid := DM1.cdsQry3.FieldByName('CREDID').AsString;
         tCreCuota := DM1.cdsQry3.FieldByName('CRECUOTA').AsString;
         tCremtoCob := DM1.cdsQry3.FieldByName('CREMTOCOB').AsFloat;
         tEstado := Trim(DM1.cdsQry3.FieldByName('CREESTANT').AsString) + Trim(DM1.cdsQry3.FieldByName('CREESTANTDES').AsString);
         AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, xCnd, tCremtoCob);
         DM1.cdsQry3.Next;
      End;
      DM1.cdsQry3.First;
      While Not DM1.cdsQry3.Eof Do
      Begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CREESTID').AsString := '13';
         DM1.cdsQry3.FieldByName('CREESTADO').AsString := 'ANULADO';
         DM1.cdsQry3.Next;
      End;
      DM1.cdsQry3.ApplyUpdates(0);
      xSQL := 'UPDATE CRE301'
         + '   SET CREESTID  = ''02'', '
         + '       CREESTADO = ''POR COBRAR'' '
         + ' WHERE ASOID     = ' + QuotedStr(tAsoId)
         + '   AND CREDID    = ' + QuotedStr(tCreDid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   End;

   DM1.cdsQry3.Close;

End;

Procedure TfPagoCuotas.AnulaCuoAct(xAsoId, xCreDid, xCreCuota, xCnd: String);
Begin
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREESTADO FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CRECUOTA=' + QuotedStr(Trim(xCreCuota)));
   DM1.cdsCuotas.Open;
   If DM1.cdsCuotas.RecordCount = 1 Then
   Begin
      DM1.cdsCuotas.Edit;
      DM1.cdsCuotas.FieldByName('CREESTID').AsString := '13';
      DM1.cdsCuotas.FieldByName('CREESTADO').AsString := 'ANULADO';
      DM1.cdsCuotas.ApplyUpdates(0);
   End;
   DM1.cdsCuotas.Close;

End;

Procedure TfPagoCuotas.AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, xCnd: String; tCremtoCob: Currency);
Begin
// Inicio: DPP_201211_COB
   DM1.cdsAportes.Close;
   DM1.cdsAportes.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,CREMONLOC, ' +
      'CREMONEXT,CRECAPITAL,CREMTOINT,CREMTOFLAT,FORPAGOABR, ' +
      'CREESTID,CREESTADO,NRONABO,FLGPAG,CREDIDNABO,CRESALDO, ' +
      'FNABONO,TCAMBIO,CREMTO,MONCOBDESGRAV FROM CRE302 ' +
      'WHERE ASOID=' + QuotedStr(Trim(tAsoId)) + ' AND CREDID=' + QuotedStr(Trim(tCreDid)) + ' AND CRECUOTA=' + QuotedStr(Trim(tCreCuota)));
   DM1.cdsAportes.Open;
   If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      DM1.cdsAportes.Edit;
      DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat := DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat - tCremtoCob;
      If DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat > 0 Then
      Begin
         DM1.cdsAportes.FieldByName('CREMONLOC').AsFloat := DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat;
         If DM1.cdsAportes.FieldByName('TCAMBIO').AsFloat > 0 Then
            DM1.cdsAportes.FieldByName('CREMONEXT').AsFloat := (DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat / DM1.cdsAportes.FieldByName('TCAMBIO').AsFloat)
         Else
            DM1.cdsAportes.FieldByName('CREMONEXT').AsFloat := 0;
      End
      Else
      Begin
         DM1.cdsAportes.FieldByName('CREMONLOC').AsFloat := 0;
         DM1.cdsAportes.FieldByName('CREMONEXT').AsFloat := 0;
         DM1.cdsAportes.FieldByName('TCAMBIO').AsFloat := 0;
      End;

      DM1.cdsAportes.FieldByName('CREESTID').AsString := Copy(tEstado, 1, 2);
      DM1.cdsAportes.FieldByName('CREESTADO').AsString := Copy(tEstado, 3, 25);
      DM1.cdsAportes.FieldByName('NRONABO').AsString := '';
      DM1.cdsAportes.FieldByName('CRECAPITAL').AsFloat := 0;
      DM1.cdsAportes.FieldByName('CREMTOINT').AsFloat := 0;
      DM1.cdsAportes.FieldByName('CREMTOFLAT').AsFloat := 0;
      DM1.cdsAportes.FieldByName('MONCOBDESGRAV').AsFloat := 0;
      DM1.cdsAportes.FieldByName('FLGPAG').AsString := '';
      DM1.cdsAportes.FieldByName('CREDIDNABO').AsString := '';
      DM1.cdsAportes.FieldByName('FNABONO').AsString := '';
      DM1.cdsAportes.FieldByName('CRESALDO').AsFloat := (DM1.cdsAportes.FieldByName('CREMTO').AsFloat - DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat);
      DM1.cdsAportes.ApplyUpdates(0);
   End;
   DM1.cdsAportes.Close;
// Fin: DPP_201211_COB
End;

// Inicio: SPP_201302_COB : Se Agrega Para Busqueda de Cuotas Pagadas
Function TfPagoCuotas.Busca310(xAsoId, xCreDid: String): String;
Begin
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest('SELECT ASOID,CREDID,CREESTID FROM CRE310 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CREESTID NOT IN (''13'',''04'')');
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount > 0 Then
      Result := 'S'
   Else
      Result := 'N';

   DM1.cdsQry4.Close;

End;
// Fin: SPP_201302_COB : Se Agrega Para Busqueda de Cuotas Pagadas



Procedure TfPagoCuotas.BitMstApoClick(Sender: TObject);
Begin
   If length(EdtNomGen.text) = 0 Then Exit;
   Try
      fRegApor := TfRegApor.create(self);
      fRegApor.Showmodal;
   Finally
      fRegApor.free;
   End;

End;

Procedure TfPagoCuotas.BitAsociadoClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   Try
      Botones(False);
      If Length(Trim(EdtNomGen.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN ASOCIADO !!! ', mtError, [mbOk], 0);
         Exit;
      End;

      xSQL := 'SELECT * FROM TGE158';
      DM1.cdsPadre.Close;
      DM1.cdsPadre.DataRequest(xSQL);
      DM1.cdsPadre.Open;

      DM1.cdsRec.Close;
      DM1.cdsRec.DataRequest(xSQL);
      DM1.cdsRec.Open;
      xSQL := 'SELECT ID,DESCRIP FROM TGE817 ';
      DM1.cdsSexo.Close;
      DM1.cdsSexo.DataRequest(xSQL);
      DM1.cdsSexo.Open;
      xSQL := 'SELECT ASOTIPID,ASOTIPDES FROM APO107';
      DM1.cdsTAso.Close;
      DM1.cdsTAso.DataRequest(xSQL);
      DM1.cdsTAso.Open;
      xSQL := 'SELECT REGPENID,REGPENDES FROM APO105';
      DM1.cdsResol.Close;
      DM1.cdsResol.DataRequest(xSQL);
      DM1.cdsResol.Open;
      xSQL := 'SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE SUBSTR(PROV,1,1)=''A'' ';
      DM1.cdsTCredito.Close;
      DM1.cdsTCredito.DataRequest(xSQL);
      DM1.cdsTCredito.Open;
      fMatAso := TfMatAso.create(self);
      fMatAso.lkcDpto.Text := DM1.cdsAso.fieldbyname('ASODPTO').AsString;
      fMatAso.lkcProv.Text := DM1.cdsAso.fieldbyname('CIUDID').AsString;
      fMatAso.lkcDist.Text := DM1.cdsAso.fieldbyname('ZIPID').AsString;
      fMatAso.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
      fMatAso.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
      fMatAso.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
      fMatAso.ImagAso.Picture := ImagAso.Picture;
      fMatAso.ImaFirma.Picture := ImaFirma.Picture;
      fMatAso.lblAsoApeNom.Caption := DM1.cdsAso.fieldbyname('ASOAPENOM').AsString + ' (Dato de Planillas)';
      fMatAso.EdtApePatDni.Enabled := False;
      fMatAso.EdtApeMatDni.Enabled := False;
      fMatAso.EdtAsoNomDni.Enabled := False;
      fMatAso.dbeCodPag.Enabled := False;
      fMatAso.dbeLibDni.Enabled := False;
      fMatAso.BitModifica.Enabled := False;
      fMatAso.ShowModal;
   Finally
      DM1.cdsPadre.Close;
      DM1.cdsHijo.Close;
      DM1.cdsCAso.Close;
      DM1.cdsRec.Close;
      DM1.cdsTRela.Close;
      DM1.cdsQry6.Close;
      DM1.cdsSexo.Close;
      DM1.cdsTAso.Close;
      DM1.cdsResol.Close;
      DM1.cdsTCredito.Close;
      fMatAso.Free;
      Botones(True);

   End;

End;

Procedure TfPagoCuotas.dtgHistoricosDblClick(Sender: TObject);
Var
   xAsoId, xCreDid, xCreEstid, xSQL: String;
Begin
   If dtgHistoricos.DataSource.DataSet.RecordCount = 0 Then Exit;
   DM1.xHis := 'S';
   fCronoPag := Nil;
   fCronoPag := TfCronoPag.create(self);
   xAsoId := DM1.cdsSolicitudA.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSolicitudA.fieldbyname('CREDID').AsString;
   xCreEstid := DM1.cdsSolicitudA.fieldbyname('CREESTID').AsString;
   DM1.CargaCronograma(xAsoId, xCreDid);
   fCronoPag.Caption := 'Cronograma De Pagos - Historicos';
   fCronoPag.Showmodal;
   fCronoPag.free;

End;

Procedure TfPagoCuotas.btnExtornarClick(Sender: TObject);
Var
   xSQL: String;
Begin
 // Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '04' Then
   Begin
      MessageDlg('Ya Fue Extornado!', mtError, [mbOk], 0);
      xSQL := 'Select FECOPE, PERCON, USUOPE, MOTEXT, CCBCOID, TIPDEV, NUMOPEBAN  from CRE_EXT_CRE '
         + 'WHERE ASOID=''' + DM1.cdsSolicitud.fieldbyname('ASOID').AsString + ''' '
         + 'AND CREDID=''' + DM1.cdsSolicitud.fieldbyname('CREDID').AsString + ''' ';
      DM1.cdsQry3.close;
      DM1.cdsQry3.DataRequest(xSQL);
      DM1.cdsQry3.Open;
      fExtorPrest := Nil;
      fExtorPrest := tfExtorPrest.Create(Self);
      fExtorPrest.dblcCC.Enabled := False;
      fExtorPrest.edtmsgExtorno.ReadOnly := True;
      fExtorPrest.bbtnImp.Enabled := True;
      fExtorPrest.BitGrabar.Enabled := False;
      fExtorPrest.CargaDatosDeExtorno;
      fExtorPrest.bbtnImp.OnClick(self);
      fExtorPrest.Free;
      Exit;
   End
   ELSE
   BEGIN
     // VERIFICA SI EL CREDITO ESTA APROBADO PARA SU DEVOLUCION
     xSql := 'SELECT ASOID,CREDID,TIPCREID,ASOAPENOM,ASOCODMOD,IMPREV,IMPDEV,IMPAPL,FLAEXTPRE,USUCRE,'
        + ' FECCRE,HORCRE,FLAAPR,USUAPR,FECAPR,HORAPR,MOTDES,MOTDEV,FLADEVEFE,USUDEV,FECDEV,'
        + ' HORDEV,ANODEV,CORDEV,FLAANU,FECANU,HORANU,USUANU,FORPAGID,AGEBAN,DEVEFE,APLEFE,'
		+ ' FLAIMPREV,OFDESPAG,TRANSANO,TRANSMES,UPROID,UPAGOID,USEID,RCOBID,DETRCOBID'
	    + ' FROM PRE_APR_DEV WHERE ASOID = ' + QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)
        + ' AND CREDID = ' + QuotedStr(DM1.cdsSolicitud.FieldByName('CREDID').AsString) + ' AND NVL(FLAAPR,''X'') = ''S'''
        + ' AND NVL(FLADEVEFE,''X'') <> ''S'' AND NVL(FLAANU,''X'')<>''S'' ';

     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSQL);
     DM1.cdsQry.Open;
     If DM1.cdsQry.RecordCount = 0 Then
     Begin
        ShowMessage(' EL CREDITO :' + COPY(DM1.cdsSolicitud.FieldByName('CREDID').AsString, 9, 7) + ' NO TIENE APROBACION PARA DEVOLUCION ');
        EXIT;
     End;
     fExtorPrest := Nil;
     fExtorPrest := tfExtorPrest.Create(Self);
     fExtorPrest.xanodev := DM1.cdsQry.FieldByName('ANODEV').AsString;
     fExtorPrest.xcordev := DM1.cdsQry.FieldByName('CORDEV').AsString;
     fExtorPrest.Showmodal;
     fExtorPrest.Free;
   END;
   // FIN  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
End;

Procedure TfPagoCuotas.BitReclasClick(Sender: TObject);
Var
   xSQL, xCondicion, xAsoId, xCreDid: String;
Begin
   xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').asString;

   If DM1.cdsSolicitud.RecordCount = 0 Then Exit;
   If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '30' Then
   Begin
      MessageDlg(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'REC_CON_CRE', 'CREESTADO') + #13 + #13 + 'Credito Reclasificado :  ' + #13 + DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'REC_CON_CRE', 'MOTREC') + #13 + #13 + ' Hecho Por : ' + #13 + #13 + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'REC_CON_CRE', 'USUREC'))), 'USERTABLE', 'USERNOM') + #13 + #13 + DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'REC_CON_CRE', 'HREC'), mtInformation, [mbOk], 0);
      Exit;
   End;
   fReclaCont := Nil;
   fReclaCont := TfReclaCont.create(self);
   fReclaCont.EdtCodMod.Text := DM1.cdsSolicitud.FieldByName('ASOCODMOD').AsString;
   fReclaCont.EdtFecPre.Text := DM1.cdsSolicitud.FieldByName('CREFOTORG').asString;
   fReclaCont.EdtMonto.Text := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
   fReclaCont.EdtCreDid.Text := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   If DM1.cdsSolicitud.FieldByName('TMONID').AsString = 'N' Then
      fReclaCont.EdtMoneda.Text := 'S/.'
   Else
      fReclaCont.EdtMoneda.Text := 'US$';
   fReclaCont.EdtNumCuo.Text := DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString;
   fReclaCont.EdtNomGen.Text := fPagoCuotas.EdtNomGen.Text;
   xCondicion := 'TIPCREID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString));
   fReclaCont.EdtDesTip.Text := DM1.cdsSolicitud.FieldByName('TIPCREID').AsString + ' - ' + DM1.CrgDescrip(xCondicion, 'CRE110', 'TIPCREDES');
   fReclaCont.Showmodal;
   fReclaCont.free;

End;

Procedure TfPagoCuotas.FormCreate(Sender: TObject);
Begin
// deshabilita para que se habilite de acuerdo a permisos del usuario
   BitAnulaFSC.Enabled := False;

   DM1.BlqComponentes(Self);
End;

Procedure TfPagoCuotas.ControlaBotones;
Var
   xSQL: String;
Begin
// El botón de Refinanciados quedará siempre deshabilitado en esta pantalla
//  ya que tiene una administración diferente como opción propia del Menú principal
   xSQL := 'SELECT USERID FROM SIS000 '
      + ' WHERE USERID     =' + QuotedStr(DM1.wUsuario) + ' AND'
      + '       TABLA      =''Detalles'' AND '
      + '       CAMPO      =''Boton'' AND '
      + '       COMPONENTE =''BitGenCrono'' AND '
      + '       MODULOID   =''COB'' ';
   BitGenCrono.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID FROM SIS000 '
      + ' WHERE USERID     =' + QuotedStr(DM1.wUsuario) + ' AND'
      + '       TABLA      =''Detalles'' AND '
      + '       CAMPO      =''Boton'' AND '
      + '       COMPONENTE =''BitFDes'' AND '
      + '       MODULOID   =''COB'' ';
   BitFDes.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID FROM SIS000 '
      + ' WHERE USERID     =' + QuotedStr(DM1.wUsuario) + ' AND '
      + '       TABLA      =''Detalles'' AND '
      + '       CAMPO      =''Boton'' AND '
      + '       COMPONENTE =''BitMstApo'' AND '
      + '       MODULOID   =''COB'' ';
   BitMstApo.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID FROM SIS000 '
      + ' WHERE USERID     =' + QuotedStr(DM1.wUsuario) + ' AND '
      + '       TABLA      =''Detalles'' AND '
      + '       CAMPO      =''Boton'' AND '
      + '       COMPONENTE =''BitReclas'' AND '
      + '       MODULOID   =''COB'' ';
   BitReclas.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID FROM SIS000 '
      + ' WHERE USERID     =' + QuotedStr(DM1.wUsuario) + ' AND'
      + '       TABLA      =''Detalles'' AND '
      + '       CAMPO      =''Boton'' AND '
      + '       COMPONENTE =''BitAnulaRep'' AND '
      + '       MODULOID   =''COB'' ';
   BitAnulaRep.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID FROM SIS000 '
      + ' WHERE USERID     =' + QuotedStr(DM1.wUsuario) + ' AND '
      + '       TABLA      =''Detalles'' AND '
      + '       CAMPO      =''Boton'' AND '
      + '       COMPONENTE =''btnExtornar'' AND '
      + '       MODULOID   =''COB'' ';
   btnExtornar.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID FROM SIS000 '
      + ' WHERE USERID     =' + QuotedStr(DM1.wUsuario) + ' AND '
      + '       TABLA      =''Detalles'' AND '
      + '       CAMPO      =''Boton'' AND '
      + '       COMPONENTE =''BitDevolver'' AND '
      + '       MODULOID   =''COB'' ';
   BitDevolver.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID FROM SIS000 '
      + ' WHERE USERID     =' + QuotedStr(DM1.wUsuario) + ' AND '
      + '       TABLA      =''Detalles'' AND '
      + '       CAMPO      =''Boton'' AND '
      + '       COMPONENTE =''BitExceso'' AND '
      + '       MODULOID   =''COB'' ';
   BitExceso.Enabled := DM1.VrfCtrAccUsr(xSQL);
End;

Procedure TfPagoCuotas.BitReclamosClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   If Length(Trim(EdtNomGen.Text)) = 0 Then
   Begin
      MessageDlg('DEBE SELECCIONAR UN ASOCIADO !!! ', mtError, [mbOk], 0);
      Exit;
   End;
   fReclaAso := Nil;
   fReclaAso := TfReclaAso.create(self);
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   xSQL := 'SELECT RECIDE, RECDNI, RECAREA, RECAPENOM, RECTIPIDE, B.REC_DESC, RECDESC, RECRECUSU, ' +
      'RECFECREC, FREGREC, RECCONC, FRECFECCON, RECUSUCON, RECDESCCON, FREGCON, ASOID FROM TGE310 A, ' +
      '(SELECT ID_RECLAMO,REC_DESC FROM TGE311 WHERE ID_AREA =''COB'') B WHERE ASOID=' + QuotedStr(xAsoId) + ' AND RECAREA=''COB'' ' +
      'AND A.RECTIPIDE=B.ID_RECLAMO(+) ORDER BY FREGREC DESC';
   DM1.cdssitreclamo.Close;
   DM1.cdssitreclamo.DataRequest(xSQL);
   DM1.cdssitreclamo.Open;
   xSQL := 'SELECT ID_RECLAMO,REC_DESC FROM TGE311 WHERE ID_AREA =''COB'' ';
   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.DataRequest(xSQL);
   DM1.cdsFormaPago.Open;

   xSQL := 'SELECT ID_TIPCON,DES_TIPCON FROM TGE312 WHERE VISUALIZA=''S'' ';
   DM1.cdsFormPago.Close;
   DM1.cdsFormPago.DataRequest(xSQL);
   DM1.cdsFormPago.Open;

   fReclaAso.Showmodal;
   fReclaAso.free;
End;
//Inicio HPC_201614_COB
//Renombra nombre por conflicto 
Procedure TfPagoCuotas.btnReimpClick(Sender: TObject);
//Final HPC_201614_COB
Var
   xInteres, xFlat, xMonto, xCuoIni, xTasEfe: Real;
   xNumCuo, Boton: Integer;
   xFecPre, xFecDes: tDateTime;
   xFecEval, xCad, xAsoId, xCreDid, xSQL, xTexto, xFecVen, xCreEstid: String;
   xCreMto, xCreAmort, xCreInteres, xCreFlat, xTot, xSaldo: Real;
   xImprime, xImp: Boolean;
Begin
    //Cambio realizado por el Memo 326 - 2008 - Eduardo Alva
   If Length(Trim(EdtNomGen.Text)) = 0 Then
   Begin
      MessageDlg('ERROR, DEBE SELECCIONAR UN ASOCIADO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   Case DM1.cdsSolicitud.FieldByName('CREESTID').AsInteger Of
      1: xImprime := True;
      2: xImprime := True;
   Else
      xImprime := False;
   End;
   If Not xImprime Then
   Begin
      MessageDlg('CREDITO NO SE ENCUENTRA PENDIENTE DE PAGO!!!', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.NivelUsuario(DM1.wUsuario) >= '02' Then
   Begin
      If DM1.cdsSolicitud.FieldByName('IMPCARAUT').AsString = '1' Then
      Begin
         Boton := Application.MessageBox('SEGURO DE AUTORIZAR LA REIMPRESION DE DOCUMENTOS', 'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
         If Boton = ID_YES Then
         Begin
            xSQL := 'UPDATE CRE301 '
               + '   SET IMPCARAUT = ''0'' '
               + ' WHERE ASOID     = ' + QuotedStr(xAsoId) + ' AND '
               + '       CREESTID  IN (''01'',''02'') AND '
               + '       IMPCARAUT  = ''1'' ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;
      End;
   End;

   lblAsoDnia.Caption := DM1.cdsSolicitud.FieldByName('ASODNI').AsString;
   lblNombresa.Caption := DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
   lblFechaCarta.Caption := 'Lima,  ' + FormatDateTime('d "de" mmmm "del" yyyy', now);
   lblDirReg01.Caption := DM1.CrgDescrip('USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString)), 'APO101', 'USENOM');
   lblDirReg02.Caption := lblDirReg01.Caption;
   lblDirReg03.Caption := lblDirReg02.Caption;
   lblDirReg04.Caption := lblDirReg03.Caption;
   lblDirReg05.Caption := lblDirReg04.Caption;
   lblCargo.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'CARGO');
   lblDireccion.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASODIR');
   lblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTELF1');
   lblMonto.Caption := DM1.MontoPendiente(xAsoId);
   lblMonCuo.Caption := DM1.CuotasPendiente(xAsoId);
   lblPlazo.Caption := DM1.MaximoPlazo(xAsoId);
   xTot := Int(DM1.Valores(lblMonto.Caption));
   lblNunLetras.Caption := trim(DM1.xIntToLletras(StrToInt(FloatToStr(xTot)), (DM1.Valores(lblMonto.Caption))));
   If DM1.Valores(DM1.MontoPendiente(xAsoId)) > 0 Then
   Begin
      xSQL := 'SELECT ASOID,CREDID FROM CRE301 '
         + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND '
         + '       CREESTID IN (''01'',''02'') AND '
         + '       NVL(IMPCARAUT,''0'')=''0'' ';
      If DM1.CountReg(xSQL) > 0 Then
      Begin
         rpCartaAutDes.Print;
         rpCartaAutDes.Cancel;
         If Length(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'USUAUTDES'))) = 0 Then
         Begin
            Boton := Application.MessageBox('Confirme, si el docente firmó' + #13 + 'CARTA DE AUTORIZACION DE DESCUENTO POR PLANILLA', 'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
            If Boton = ID_YES Then
            Begin
               xSQL := 'UPDATE CRE301 '
                  + '   SET IMPCARAUT = ''1'','
                  + '       AUTDESCRE = ' + QuotedStr('S') + ','
                  + '       FECAUTDES = SYSDATE,'
                  + '       USUAUTDES = ' + QuotedStr(DM1.wUsuario)
                  + ' WHERE ASOID     = ' + QuotedStr(xAsoId)
                  + '   AND CREESTID IN (''01'',''02'') '
                  + '   AND AUTDESCRE IS NULL ';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            End;
         End;
         If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'IMPCARAUT') = '0' Then
         Begin
            Boton := Application.MessageBox('SEGURO QUE REIMPRIMIO LOS DOCUMENTOS NECESARIOS, DESEA TERMINAR ', 'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
            If Boton = ID_YES Then
            Begin
               xSQL := 'UPDATE CRE301 SET IMPCARAUT=''1'' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID IN (''01'',''02'') AND IMPCARAUT=''0'' ';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            End;
         End;

      End;
   End;

End;

Procedure TfPagoCuotas.BitAtencionClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   If Length(Trim(EdtNomGen.Text)) = 0 Then
   Begin
      MessageDlg('DEBE SELECCIONAR UN ASOCIADO !!! ', mtError, [mbOk], 0);
      Exit;
   End;
   fTipAtencion := Nil;
   fTipAtencion := TfTipAtencion.create(self);
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   fTipAtencion.Showmodal;
   fTipAtencion.free;

End;

Procedure TfPagoCuotas.BitGestionClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If Length(Trim(EdtNomGen.Text)) = 0 Then
   Begin
      MessageDlg('DEBE SELECCIONAR UN ASOCIADO !!! ', mtError, [mbOk], 0);
      Exit;
   End;
// se pone alias a campos para evitar ambigüedad
// Inicio: SPP_201312_COB : 07/10/2013  Gestiones de cobranza realizadas ordenadas por fecha
   xSQL := 'SELECT C.DESCRIPCION TIPGES, B.DESCRIPCION DESGES, '
      + '          A.NROGEST, TO_CHAR(A.FECHA,''DD/MM/YYYY'')||'' ''||A.HORA HREG, A.USUARIO, A.DETOBS '
      + '  FROM GES_COB_SEG A, GES_REF_SEG_DET B, GES_REF_SEG C '
      + ' WHERE A.ASOID        = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
      + '   AND A.IDGESTIONDET = B.IDGTNDET(+) '
      + '   AND C.IDGTN        = A.IDGESTION(+) '
      + ' ORDER BY A.FECHA DESC, A.HORA DESC ';
// Fin: SPP_201312_COB : 07/10/2013  Gestiones de cobranza realizadas ordenadas por fecha
   DM1.cdsSitReclamo.Close;
   DM1.cdsSitReclamo.DataRequest(xSQL);
   DM1.cdsSitReclamo.Open;
   If DM1.cdsSitReclamo.RecordCount > 0 Then
   Begin
      fGesCob := Nil;
      fGesCob := TfGesCob.create(self);
      fGesCob.Showmodal;
      fGesCob.free;
   End;
   DM1.cdsSitReclamo.Close;

End;

Procedure TfPagoCuotas.btnGesDomClick(Sender: TObject);
Begin
   Try
      FGesDom := TFGesDom.create(Self);
      FGesDom.ShowModal;
   Finally
      FGesDom.Free;
   End;
End;

// Mostrar mensaje que asociado cuenta con fondo solidario

Procedure TfPagoCuotas.muestrafonsol(xAsoid: String);
Var
   xSql: String;
   VCREMTOCOB, VIMP_COB_FSC: Currency;
Begin
   xSql := 'SELECT SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM CRE310 WHERE ASOID = ' + QuotedStr(xAsoid)
      + ' AND FORPAGID IN (''23'',''24'') AND CREESTID NOT IN (''04'',''13'', ''99'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
  //SUMATORIA DEL IMPORTE PAGADO AL FSC QUE LUEGO SE COMPARA CON EL IMPORTE APLICADO CON EL FSC
   VCREMTOCOB := DM1.cdsQry.FieldByName('CREMTOCOB').AsFloat;
   xSql := 'SELECT SUM(NVL(IMP_COB_DEU,0))IMP_COB_DEU FROM COB_FSC_PAGOS_AL_FSC  WHERE ASOID = ' + QuotedStr(xAsoid) + ' AND EST_COB_COD NOT IN (''04'',''13'',''99'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   VIMP_COB_FSC := DM1.cdsQry.FieldByName('IMP_COB_DEU').AsFloat;
   If VCREMTOCOB - VIMP_COB_FSC > 0 Then
     // Inicio SPP_201410_COB
     {
      MessageDlg('El Asociado tiene aplicación de FSC, favor indicarle realizar el'#13'pago de : '
         + FloatToStrF(VCREMTOCOB, ffCurrency, 10, 2)
         + ',' + ' en las agencias bancarias.', mtInformation, [mbOK], 0);

     }
      Begin
        MessageDlg('Asociado aplicado al FSC, sírvase revisar la pestaña: Aplicaciones al FSC', mtInformation, [mbOK], 0);
      End;
     // Fin SPP_201410_COB
End;

Procedure TfPagoCuotas.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsAso.Close;
   DM1.cdsAso.Filter := '';
   DM1.cdsAso.IndexFieldNames := '';
   DM1.cdsAso.Filtered := False;

   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.Filter := '';
   DM1.cdsSolicitud.IndexFieldNames := '';
   DM1.cdsSolicitud.Filtered := False;

   DM1.cdsCambios.Close;
   DM1.cdsCambios.Filter := '';
   DM1.cdsCambios.IndexFieldNames := '';
   DM1.cdsCambios.Filtered := False;

   DM1.cdsAgenciaBco.Close;
   DM1.cdsAgenciaBco.Filter := '';
   DM1.cdsAgenciaBco.IndexFieldNames := '';
   DM1.cdsAgenciaBco.Filtered := False;

   DM1.cdsFormPago.Close;
   DM1.cdsFormPago.Filter := '';
   DM1.cdsFormPago.IndexFieldNames := '';
   DM1.cdsFormPago.Filtered := False;

   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.Filter := '';
   DM1.cdsFormaPago.IndexFieldNames := '';
   DM1.cdsFormaPago.Filtered := False;

   DM1.cdsTtransaccion.Close;
   DM1.cdsTtransaccion.Filter := '';
   DM1.cdsTtransaccion.IndexFieldNames := '';
   DM1.cdsTtransaccion.Filtered := False;

   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.Filter := '';
   DM1.cdsCEdu.IndexFieldNames := '';
   DM1.cdsCEdu.Filtered := False;

   DM1.cdsSolicitudA.Close;
   DM1.cdsSolicitudA.Filter := '';
   DM1.cdsSolicitudA.IndexFieldNames := '';
   DM1.cdsSolicitudA.Filtered := False;

   DM1.cdsAportes.Close;
   DM1.cdsAportes.Filter := '';
   DM1.cdsAportes.IndexFieldNames := '';
   DM1.cdsAportes.Filtered := False;

   DM1.cdsQry3.Close;
   DM1.cdsQry3.Filter := '';
   DM1.cdsQry3.IndexFieldNames := '';
   DM1.cdsQry3.Filtered := False;

   DM1.cdsQry4.Close;
   DM1.cdsQry4.Filter := '';
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry4.Filtered := False;

   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.Filter := '';
   DM1.cdsCuotas.IndexFieldNames := '';
   DM1.cdsCuotas.Filtered := False;

   DM1.cdsPadre.Close;
   DM1.cdsPadre.Filter := '';
   DM1.cdsPadre.IndexFieldNames := '';
   DM1.cdsPadre.Filtered := False;

   DM1.cdsRec.Close;
   DM1.cdsRec.Filter := '';
   DM1.cdsRec.IndexFieldNames := '';
   DM1.cdsRec.Filtered := False;

   DM1.cdsSexo.Close;
   DM1.cdsSexo.Filter := '';
   DM1.cdsSexo.IndexFieldNames := '';
   DM1.cdsSexo.Filtered := False;

   DM1.cdsTAso.Close;
   DM1.cdsTAso.Filter := '';
   DM1.cdsTAso.IndexFieldNames := '';
   DM1.cdsTAso.Filtered := False;

   DM1.cdsResol.Close;
   DM1.cdsResol.Filter := '';
   DM1.cdsResol.IndexFieldNames := '';
   DM1.cdsResol.Filtered := False;

   DM1.cdsTCredito.Close;
   DM1.cdsTCredito.Filter := '';
   DM1.cdsTCredito.IndexFieldNames := '';
   DM1.cdsTCredito.Filtered := False;

   DM1.cdsQry.Close;
   DM1.cdsQry.Filter := '';
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.Filtered := False;

   DM1.cdssitreclamo.Close;
   DM1.cdssitreclamo.Filter := '';
   DM1.cdssitreclamo.IndexFieldNames := '';
   DM1.cdssitreclamo.Filtered := False;

   DM1.cdsDFam.Close;
   DM1.cdsDFam.Filter := '';
   DM1.cdsDFam.IndexFieldNames := '';
   DM1.cdsDFam.Filtered := False;

   DM1.cdsGrupos.Close;
   DM1.cdsGrupos.Filter := '';
   DM1.cdsGrupos.IndexFieldNames := '';
   DM1.cdsGrupos.Filtered := False;

   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.Filter := '';
   DM1.cdsMGrupo.IndexFieldNames := '';
   DM1.cdsMGrupo.Filtered := False;

   Action := caFree;
End;

Procedure TfPagoCuotas.ConFSC;
Var
   XSQL: String;
Begin
   dbgFSC.Selected.clear;
   dbgFSC.Selected.Add('NUM_DEU'#9'11'#9'Num.Deuda'#9#9);
   dbgFSC.Selected.Add('NRO_REF_FSC'#9'15'#9'Num.Acta'#9#9);
   dbgFSC.Selected.Add('FORPAGODES'#9'30'#9'Forma de Pago'#9#9);
   dbgFSC.Selected.Add('FEC_APL_FSC'#9'10'#9'Fec.Aplica'#9#9);
   dbgFSC.Selected.Add('IMP_APL_FSC'#9'10'#9'Imp.Aplica'#9#9);
   dbgFSC.Selected.Add('ESTDES'#9'13'#9'Estado'#9#9);
   dbgFSC.Selected.Add('USU_APL_FSC'#9'15'#9'Usu.Aplico'#9#9);
   dbgFSC.Selected.Add('IMP_COB_FSC'#9'10'#9'Imp.Cobra'#9#9);
   dbgFSC.Selected.Add('ULT_FEC_COB'#9'10'#9'Ult.Fec.Cob.'#9#9);
   dbgFSC.Selected.Add('IMP_SAL_FSC'#9'10'#9'Saldo'#9#9);
   dbgFSC.DataSource := Dm1.dsMGrupo;

//Inicio HPC_201606_COB --Procedimeinto de bloqueo
//   XSQL := 'SELECT A.ASOID,A.NUM_DEU,A.NRO_REF_FSC,A.FEC_REF_FSC,B.FORPAGODES,A.FEC_APL_FSC,A.IMP_APL_FSC,C.ESTDES,' +
//      'A.USU_APL_FSC,A.IMP_COB_FSC,A.ULT_FEC_COB,A.IMP_SAL_FSC,FORPAGID,A.ID_EST_FSC,A.OBS_FSC,A.FREG_ANULA,A.USER_ANULA,OBS_ANULA ' +
   XSQL := 'SELECT A.ASOID,A.NUM_DEU,A.NRO_REF_FSC,A.FEC_REF_FSC,B.FORPAGODES,A.FEC_APL_FSC,A.IMP_APL_FSC,C.ESTDES,' +
      'A.USU_APL_FSC,A.IMP_COB_FSC,A.ULT_FEC_COB,A.IMP_SAL_FSC,FORPAGID,A.ID_EST_FSC,A.OBS_FSC,A.FREG_ANULA,A.USER_ANULA,OBS_ANULA,' +
      'A.USUBLO,A.FECBLO,A.OBSBLO,A.USUDESBLO,A.FECDESBLO,A.OBSDESBLO '+
      ' FROM COB_FSC_DEUDA_FSC_CAB A,COB101 B, CRE113 C ' +
      ' WHERE ASOID=''' + Dm1.cdsAso.fieldbyname('ASOID').AsString + ''' AND A.FORPAGID=B.FORPAGOID AND A.ID_EST_FSC=C.ESTID ';
//Final HPC_201606_COB

   Dm1.cdsMGrupo.Close;
   Dm1.cdsMGrupo.DataRequest(XSQL);
   Dm1.cdsMGrupo.Open;
   TNumericField(Dm1.cdsMGrupo.fieldbyname('IMP_APL_FSC')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsMGrupo.fieldbyname('IMP_SAL_FSC')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsMGrupo.fieldbyname('IMP_COB_FSC')).DisplayFormat := '###,###.#0';

   If Dm1.cdsMGrupo.RecordCount = 0 Then
   Begin
      TabSheet3.TabVisible := False;
      Exit;
   End;
   TabSheet3.TabVisible := True;
   actfootCabFSC;
End;

Procedure TfPagoCuotas.dbgFSCDblClick(Sender: TObject);
Var
   xsql: String;
Begin

   If (DM1.cdsMGrupo.FieldByName('ID_EST_FSC').asstring = '13') Or
      (DM1.cdsMGrupo.FieldByName('ID_EST_FSC').asstring = '04') Then
   Begin
      ShowMessage('Aplicación con el FSC ANULADO');
      Exit;
   End;

   XSQL := 'SELECT A.ASOID,A.NUM_DEU,A.COR_COB_DEU,A.TIP_MOV_DEU,A.IMP_COB_DEU,A.USU_COB_DEU,A.FEC_COB_DEU,A.HOR_COB_DEU,A.BANCOID,A.CCBCOID,' +
      'CASE WHEN TRIM(SUBSTR(F_MES(C.RCOBMES),1,3)||''-''||C.RCOBANO)=''-'' THEN '' '' ELSE TRIM(SUBSTR(F_MES(C.RCOBMES),1,3)||''-''||C.RCOBANO) END RCOBPER, ' +
      'CASE WHEN  NVL(IMP_EXC_DEV,0)>0 THEN IMP_EXC_DEV END DEVOLUCION ,' +
      'CASE WHEN NVL(IMP_EXC_APL,0)>0 THEN IMP_EXC_APL END APLICACION ,' +
      'CASE WHEN NVL(IMP_EXC_DEV,0)=0 THEN IMP_COB_DEU END COBRADO ,' +
      'NROOPE,FOPERAC,AREAID,FORPAGID,FORPAGABR,EST_COB_COD,EST_COB_DES,OFI_CREACION,ANO_COB,MES_COB,FEC_CRE_COB_FSC,' +
      'IMP_EXC_DEV,IMP_EXC_APL,IMP_EXC_DEV,NUM_DEV_EXC,OBS_COB_DEU,OFDESNOM ' +
      ' FROM ' +
      'COB_FSC_PAGOS_AL_FSC A,APO110 B,COB302 C  WHERE ASOID=''' + Dm1.cdsMGrupo.FieldByName('ASOID').AsString + ''' AND NUM_DEU=''' + Dm1.cdsMGrupo.FieldByName('NUM_DEU').AsString + ''' AND ' +
      ' OFI_CREACION=OFDESID(+) ' +
      ' AND A.RCOBID=C.RCOBID(+) AND A.DETRCOBID=C.DETRCOBID(+)  ' +
      ' AND A.EST_COB_COD NOT IN (''13'',''04'') ' +
      ' ORDER BY COR_COB_DEU ';
   Dm1.cdsDetalle.Close;
   Dm1.cdsDetalle.DataRequest(xsql);
   Dm1.cdsDetalle.Open;
   Try
      fDetalleDevFSC := TfDetalleDevFSC.create(Self);
      fDetalleDevFSC.ShowModal;
   Finally
      fDetalleDevFSC.Free;
   End;
End;

Procedure TfPagoCuotas.btnPrestCancFSCClick(Sender: TObject);
Var
   XSQL: String;
Begin
// Inicio: DPP_201211_COB
// se incluye campo de Fondo de Desgravamen aplicado
   XSQL := 'SELECT A.NUM_DEU, A.NRO_REF_FSC, SUBSTR(A.CRE_APL_FSC,9,7) CREDITO, A.FEC_OTORG, B.TIPCREDES, '
          +'       A.ULT_FEC_VEN, A.DIA_ATRASO, B.TIPCREDES, '
          +'       A.CAP_APL_FSC, A.INT_APL_FSC, A.DSG_APL_FSC, A.FLA_APL_FSC, A.IMP_APL_FSC, '
          +'       A.FLG_ANU_EXT '
          +'  FROM COB_FSC_DEUDA_FSC_DET A,CRE110 B '
          +' WHERE ASOID='+quotedstr(DM1.cdsAso.fieldbyname('ASOID').AsString)
          +'   AND A.NUM_DEU='+quotedstr(DM1.cdsMGrupo.FieldByName('NUM_DEU').AsString)
          +'   AND B.TIPCREID(+)=SUBSTR(A.CRE_APL_FSC,7,2) ';
// Fin: DPP_201211_COB
   Dm1.cdsGrupos.Close;
   Dm1.cdsGrupos.DataRequest(XSQL);
   Dm1.cdsGrupos.Open;
   Try
      fDetPresCanFSC := TfDetPresCanFSC.create(Self);
      fDetPresCanFSC.ShowModal;
   Finally
      fDetPresCanFSC.Free;
   End;
End;

Procedure TfPagoCuotas.BitAnulaFSCClick(Sender: TObject);
Begin
   //Inicio HPC_201606_COB --Procedimeinto de bloqueo
    If Dm1.cdsMGrupo.FieldByName('ID_EST_FSC').AsString = '19' Then
    Begin
      ShowMessage('La aplicación al FSC está Bloqueada');
      exit;
    End;
   //Final HPC_201606_COB

   If (Dm1.cdsMGrupo.FieldByName('ID_EST_FSC').AsString = '13') Or
      (Dm1.cdsMGrupo.FieldByName('ID_EST_FSC').AsString = '04') Then
   Begin
      ShowMessage('La aplicación al FSC esta Anulada o Extornada');
      exit;
   End;

   If MessageDlg('¿Esta seguro(a) de ' + BitAnulaFSC.Caption + 'r ?', mtconfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
      Exit;
   End;

   If Dm1.cdsMGrupo.FieldByName('IMP_COB_FSC').AsCurrency > 0 Then
   Begin
      ShowMessage('No se puede Anular, existe devolución al FSC');
      Exit;
   End;

   dbgFSCRowChanged(self);
   fObsAnulFSC := Nil;
   fObsAnulFSC := tfObsAnulFSC.Create(Self);
   fObsAnulFSC.Showmodal;
   fObsAnulFSC.Free;
End;

Procedure TfPagoCuotas.dbgFSCRowChanged(Sender: TObject);
Begin
   If FormatDateTime('YYYYMM', Dm1.FechaSys) <=
      FormatDateTime('YYYYMM', Dm1.cdsMGrupo.FieldByName('FEC_APL_FSC').AsDateTime) Then
   Begin
      BitAnulaFSC.Caption := 'Anula';
      DM1.xSgr := 'ANU'
   End
   Else
   Begin
      BitAnulaFSC.Caption := 'Extorna';
      DM1.xSgr := 'EXT';
   End;
End;

// Anula pagos FSC

Procedure TfPagoCuotas.AnulaPagosFSC(xAsoId, xCreDid, xDocPag, xFrmPag, xFecPag: String);
Var
   xsql, xCreEstid, xCreEstado, tAsoid, tCreDid, tCreCuota, tEstado: String;
   tCremtoCob: currency;
Begin
// Inicio: DPP_201211_COB
   xSQL := 'SELECT ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG ' +
      ',NVL(CREAMORT,0) CREAMORT,NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB, NVL(MONPACDESGRAV,0) MONPACDESGRAV ' +
      'TMONID,NVL(TCAMBIO,0)TCAMBIO,USUARIO,FREG,HREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,ARCHIVOFTP,CREOBS,CREANO,NROOPE, ' +
      'NRONABO,AREAID,CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,CREESTID,CREESTADO,CREMTOCUO ' +
      ',CREDOCPAG,AGENBCOID,FORPAGID,FORPAGABR,NROREFINAN,CREFLAGDEV,CREESTANT,CREESTANTDES,NROOPETMP,FOPERACTMP,ASOSITID,CNTANOMM,TIPOCONT,NVL(CREMTOEXC,0) CREMTOEXC,NVL(CREAPLEXC,0) CREAPLEXC,PERCONTA,TIPNABO,CNTFLAG FROM CRE310 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CREDOCPAG=' + QuotedStr(Trim(xDocPag)) + ' AND FORPAGID=' + QuotedStr(Trim(xFrmPag)) + ' AND CREFPAG =To_Date(' + QuotedStr(Trim(xFecPag)) + ',''dd/mm/yyyy'') AND CREESTID NOT IN (''13'',''04'') Order By ASOID,CREDID,CRECUOTA ';
   DM1.cdsConcre.Close;
   DM1.cdsConcre.DataRequest(xSQL);
   DM1.cdsConcre.Open;
   If DM1.cdsConcre.RecordCount > 0 Then
   Begin
      If DM1.xSgr = 'EXT' Then
      Begin
         xCreEstid := '04';
         xCreEstado := 'EXTORNADO';
      End
      Else
      Begin
         xCreEstid := '13';
         xCreEstado := 'ANULADO';
      End;
      xSQL := 'UPDATE CRE310 SET CREESTID=' + QuotedStr(xCreEstid) + ', CREESTADO=' + QuotedStr(xCreEstado) + ' WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CREDOCPAG=' + QuotedStr(Trim(xDocPag)) + ' AND FORPAGID=' + QuotedStr(Trim(xFrmPag)) + ' AND CREFPAG =To_Date(' + QuotedStr(Trim(xFecPag)) + ',''dd/mm/yyyy'') ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      DM1.cdsConcre.First;
      While Not DM1.cdsConcre.Eof Do
      Begin
         tAsoid := DM1.cdsConcre.FieldByName('ASOID').AsString;
         tCreDid := DM1.cdsConcre.FieldByName('CREDID').AsString;
         tCreCuota := DM1.cdsConcre.FieldByName('CRECUOTA').AsString;
         tCremtoCob := DM1.cdsConcre.FieldByName('CREMTOCOB').AsCurrency;
         tEstado := Trim(DM1.cdsConcre.FieldByName('CREESTANT').AsString) + Trim(DM1.cdsConcre.FieldByName('CREESTANTDES').AsString);
         AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, '', tCremtoCob);

         DM1.cdsConcre.Next;
      End;
      DM1.cdsConcre.First;
      While Not DM1.cdsConcre.Eof Do
      Begin
         xSQL := 'INSERT INTO COB901(ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG, '
            + '                   CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,UPROID, '
            + '                   DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,ARCHIVOFTP,CREOBS,CREANO,NROOPE,NRONABO, '
            + '                   AREAID,CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,CREESTID,CREESTADO,CREMTOCUO, '
            + '                   CREDOCPAG,AGENBCOID,FORPAGID,FORPAGABR,NROREFINAN,CREFLAGDEV,CREESTANT, '
            + '                   CREESTANTDES,NROOPETMP,FOPERACTMP,ASOSITID,CNTANOMM,TIPOCONT,CREMTOEXC, '
            + '                   CREAPLEXC,PERCONTA,TIPNABO,CNTFLAG,CREMENANU,USRANULA,FECANULA,MONCOBDESGRAV) '
            + 'VALUES (' + QuotedStr(DM1.cdsConcre.FieldByName('ASOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ASOCODMOD').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ASOCODAUX').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('USEID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TIPCREID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREDID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CRECUOTA').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREFPAG').AsString) + ','
            + DM1.cdsConcre.FieldByName('CREAMORT').AsString + ','
            + DM1.cdsConcre.FieldByName('CREINTERES').AsString + ','
            + DM1.cdsConcre.FieldByName('CREFLAT').AsString + ','
            + DM1.cdsConcre.FieldByName('CREMTOCOB').AsString + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TMONID').AsString) + ','
            + DM1.cdsConcre.FieldByName('TCAMBIO').AsString + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('USUARIO').AsString) + ','
            + QuotedStr(DateToStr(DM1.cdsConcre.FieldByName('FREG').AsDateTime)) + ','
            + QuotedStr(DateToStr(DM1.cdsConcre.FieldByName('HREG').AsDateTime)) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('UPROID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('DPTOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('UPAGOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('BANCOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CCBCOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ASOAPENOM').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ARCHIVOFTP').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREOBS').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREANO').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('NROOPE').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('NRONABO').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('AREAID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREMES').AsString) + ','
            + CurrToStr(DM1.cdsConcre.FieldByName('CREMTODEV').AsCurrency) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('FORPAGOABR').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TRANSINTID').AsString) + ','
            + QuotedStr(xCreEstid) + ','
            + QuotedStr(xCreEstado) + ','
            + DM1.cdsConcre.FieldByName('CREMTOCUO').AsString + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREDOCPAG').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('AGENBCOID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('FORPAGID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('FORPAGABR').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('NROREFINAN').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREFLAGDEV').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREESTANT').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CREESTANTDES').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('NROOPETMP').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('FOPERACTMP').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('ASOSITID').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CNTANOMM').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TIPOCONT').AsString) + ','
            + DM1.cdsConcre.FieldByName('CREMTOEXC').AsString + ','
            + DM1.cdsConcre.FieldByName('CREAPLEXC').AsString + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('PERCONTA').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('TIPNABO').AsString) + ','
            + QuotedStr(DM1.cdsConcre.FieldByName('CNTFLAG').AsString) + ','
            + QuotedStr('') + ','
            + QuotedStr(DM1.wUsuario) + ',SYSDATE' + ','
            + DM1.cdsConcre.FieldByName('MONPACDESGRAV').AsString + ')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         DM1.cdsConcre.Next;
      End;
   End;
   DM1.AplicaSaldoPre(tAsoId, tCreDid);
   DM1.cdsConcre.Close;
// Fin: DPP_201211_COB
End;

Procedure TfPagoCuotas.dbgFSCCalcCellColors(Sender: TObject; Field: TField;
   State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin

   If (DM1.cdsMGrupo.FieldByName('ID_EST_FSC').asstring = '13') Or
      (DM1.cdsMGrupo.FieldByName('ID_EST_FSC').asstring = '04') Then
      AFont.Color := clRed
   Else
      AFont.Color := clGreen;

   If Highlight Then
   Begin
      ABrush.Color := clblue;
      If (DM1.cdsMGrupo.FieldByName('ID_EST_FSC').asstring = '13') Or
         (DM1.cdsMGrupo.FieldByName('ID_EST_FSC').asstring = '04') Then
      Begin
         Afont.Color := $008C8CFF;
            //  AFont.Style := [fsBold];
      End
      Else
      Begin
         Afont.Color := clwhite;
            //  AFont.Style := [fsBold];
      End;
   End;
End;

Procedure TfPagoCuotas.BtnInfAdicFSCClick(Sender: TObject);
Begin

   pnlInfAdicional.Left := 236;
   pnlInfAdicional.Top := 116;
   If (Dm1.cdsMGrupo.FieldByName('ID_EST_FSC').AsString = '13') Or
      (Dm1.cdsMGrupo.FieldByName('ID_EST_FSC').AsString = '04') Then
      pnlInfAdicional.Height := 297
   Else
      pnlInfAdicional.Height := 149;

   pnlInfAdicional.Visible := True;
   ObsAplia.Text := Dm1.cdsMGrupo.FieldByName('OBS_FSC').AsString;
   edtFechaAplica.Text := Dm1.cdsMGrupo.FieldByName('FEC_APL_FSC').AsString;
   edtUsuarioAplica.Text := Dm1.cdsMGrupo.FieldByName('USU_APL_FSC').AsString;
   ObsAnula.Text := Dm1.cdsMGrupo.FieldByname('OBS_ANULA').AsString;
   edtFechaAnula.Text := Dm1.cdsMGrupo.FieldByname('FREG_ANULA').AsString;
   edtUsuarioAnula.Text := Dm1.cdsMGrupo.FieldByname('USER_ANULA').AsString;
End;

Procedure TfPagoCuotas.actfootCabFSC;
Var
   B: TBookmark;
   ximp_apl_fsc, ximp_cob_fsc, ximp_sal_fsc: currency;
Begin

   dbgFsc.ColumnByName('NUM_DEU').FooterValue := 'Total';

  //Guardo la posicion
   B := DM1.cdsMGrupo.GetBookmark;
   DM1.cdsMGrupo.DisableControls;
   DM1.cdsMGrupo.First;
   ximp_apl_fsc := 0;
   ximp_cob_fsc := 0;
   ximp_sal_fsc := 0;

   While Not DM1.cdsMGrupo.Eof Do
   Begin
      If Length(TRIM(DM1.cdsMGrupo.FieldByName('USER_ANULA').Asstring)) = 0 Then
         ximp_apl_fsc := ximp_apl_fsc + DM1.cdsMGrupo.FieldByName('imp_apl_fsc').AsCurrency;
      ximp_cob_fsc := ximp_cob_fsc + DM1.cdsMGrupo.FieldByName('imp_cob_fsc').AsCurrency;
      ximp_sal_fsc := ximp_sal_fsc + DM1.cdsMGrupo.FieldByName('imp_sal_fsc').AsCurrency;
      DM1.cdsMGrupo.Next
   End;

   dbgFsc.ColumnByName('imp_apl_fsc').FooterValue := FormatCurr('###,##0.#0', ximp_apl_fsc);
   dbgFsc.ColumnByName('imp_cob_fsc').FooterValue := FormatCurr('###,##0.#0', ximp_cob_fsc);
   dbgFsc.ColumnByName('imp_sal_fsc').FooterValue := FormatCurr('###,##0.#0', ximp_sal_fsc);

  //Me posiciono nuevamente en el posicion marcada
   DM1.cdsMGrupo.GotoBookmark(B);
   DM1.cdsMGrupo.EnableControls;
   DM1.cdsMGrupo.FreeBookmark(B);

End;

// Inicio: SPP_201314_COB : 20/12/2013  Se cambio el nombre
Procedure TfPagoCuotas.BitPrintResFSCClick(Sender: TObject);
// Fin: SPP_201314_COB : 20/12/2013  Se cambio el Nombre
Var
   xsql, vOFI_CREACION, vFORPAGID: String;
Begin
//---Variables de la cabcera de la Cabecera del Reporte

   LblCodMod.Caption := DM1.cdsAso.Fieldbyname('AsoCodmod').AsString;
   lblNomGen.Caption := DM1.cdsAso.Fieldbyname('AsoApenom').AsString;
   lblUser.Caption := DM1.wUsuario;

   XSQL := 'Select NUM_DEU,FEC_APL_FSC,FORPAGID,OFI_CREACION ,' +
      ' IMP_APL_FSC,IMP_COB_FSC,IMP_EXC_DEU,IMP_EXC_DEV, ' +
      ' NRO_REF_FSC,FEC_REF_FSC,ID_EST_FSC ' +
      ' From COB_FSC_DEUDA_FSC_CAB ' +
      'Where Asoid=''' + dm1.cdsMGrupo.FieldByname('Asoid').AsString + ''' ' +
      'And Num_Deu=''' + dm1.cdsMGrupo.FieldByname('Num_deu').AsString + ''' ';
   Dm1.cdsDFam.Close;
   Dm1.cdsDFam.DataRequest(xsql);
   Dm1.cdsDFam.Open;

   lblNumPre.Caption := Dm1.cdsDFam.FieldByname('NUM_DEU').AsString;
   lblFecPre.Caption := Dm1.cdsDFam.FieldByname('FEC_APL_FSC').AsString;
   lblNumActa.Caption := DM1.cdsDFam.Fieldbyname('NRO_REF_FSC').AsString;
   lblFecActa.Caption := DM1.cdsDFam.Fieldbyname('FEC_REF_FSC').AsString;
   IMGANULADO.Visible := False;
   IMGEXTORNADO.Visible := False;
//Inicio HPC_201606_COB --Procedimeinto de bloqueo
   IMGBLOQUEADA.Visible := False;
   If DM1.cdsDFam.Fieldbyname('ID_EST_FSC').AsString = '19' Then IMGBLOQUEADA.Visible := True;
//Final HPC_201606_COB
   If DM1.cdsDFam.Fieldbyname('ID_EST_FSC').AsString = '13' Then IMGANULADO.Visible := True;
   If DM1.cdsDFam.Fieldbyname('ID_EST_FSC').AsString = '04' Then IMGEXTORNADO.Visible := True;

   VOFI_CREACION := Dm1.cdsDFam.FieldByname('OFI_CREACION').AsString;
   VFORPAGID := Dm1.cdsDFam.FieldByname('FORPAGID').AsString;
   VIMP_APL_FSC := Dm1.cdsDFam.FieldByname('IMP_APL_FSC').AsCurrency;
   VIMP_COB_FSC := Dm1.cdsDFam.FieldByname('IMP_COB_FSC').AsCurrency;
   VIMP_EXC_DEU := Dm1.cdsDFam.FieldByname('IMP_EXC_DEU').AsCurrency;
   VIMP_EXC_DEV := Dm1.cdsDFam.FieldByname('IMP_EXC_DEV').AsCurrency;

   TNumericField(Dm1.cdsDFam.FieldByname('IMP_APL_FSC')).DisplayFormat := '###,###.#0';

   XSQL := 'Select OFDESNOM From APO110 WHERE OFDESID=''' + vOFI_CREACION + ''' ';
   Dm1.cdsDFam.Close;
   Dm1.cdsDFam.DataRequest(xsql);
   Dm1.cdsDFam.Open;
   lblLugarGenera.Caption := Dm1.cdsDFam.FieldByName('OFDESNOM').AsString;

   XSQL := 'Select FORPAGODES From COB101 WHERE FORPAGOID=''' + vFORPAGID + ''' ';
   Dm1.cdsDFam.Close;
   Dm1.cdsDFam.DataRequest(xsql);
   Dm1.cdsDFam.Open;
   lblTipCre.Caption := Dm1.cdsDFam.FieldByName('FORPAGODES').AsString;

//-----------------------

//----Prestamos Cancelados con FSC, para mostrar en el reportes
   XSQL := 'SELECT A.NUM_DEU,A.NRO_REF_FSC,SUBSTR(A.CRE_APL_FSC,9,7)CREDITO,A.FEC_OTORG,B.TIPCREDES,A.ULT_FEC_VEN,A.DIA_ATRASO,' +
      'B.TIPCREDES,A.CAP_APL_FSC,A.INT_APL_FSC,A.FLA_APL_FSC,A.IMP_APL_FSC,A.FLG_ANU_EXT ' +
      ' FROM COB_FSC_DEUDA_FSC_DET A,CRE110 B ' +
      ' WHERE ASOID=''' + Dm1.cdsMGrupo.fieldbyname('ASOID').AsString + ''' AND A.NUM_DEU=''' + Dm1.cdsMGrupo.FieldByName('NUM_DEU').AsString + ''' AND SUBSTR(A.CRE_APL_FSC,7,2)=B.TIPCREID(+)  ';
   Dm1.cdsGrupos.Close;
   Dm1.cdsGrupos.DataRequest(XSQL);
   Dm1.cdsGrupos.Open;
//-----

   ppRepResFSC.Print;
   ppRepResFSC.Stop;
  //ppD1.ShowModal;

End;

Procedure TfPagoCuotas.ppVariable2Print(Sender: TObject);
Begin
   ppVariable2.Value := VIMP_APL_FSC;
   ppVariable3.Value := VIMP_COB_FSC - VIMP_EXC_DEU;
   ppVariable4.Value := VIMP_APL_FSC - (VIMP_COB_FSC - VIMP_EXC_DEU);
   ppVariable5.Value := VIMP_EXC_DEU;
   ppVariable6.Value := VIMP_EXC_DEV;
   ppVariable7.Value := VIMP_EXC_DEU - VIMP_EXC_DEV;
End;

Procedure TfPagoCuotas.BitBtn2Click(Sender: TObject);
Var
   XSQL: String;
Begin

 //VERIFICA SI TIENE DEVOLUCIONES POR EXCESO APROBADAS
   xSql := 'SELECT ASOID,ASOAPENOM,ASOCODMOD,IMPREV,IMPDEV,IMPAPL,USUCRE,FECCRE,HORCRE,FLAAPR,' +
      'USUAPR,FECAPR,HORAPR,MOTDES,MOTDEV,FLADEVEFE,USUDEV,FECDEV,HORDEV,ANODEV,CORDEV,FLAANU,FECANU,' +
      'HORANU,USUANU,FORPAGID,AGEBAN,DEVEFE,APLEFE,FLAIMPREV,OFDESPAG ' +
      //Inicio HPC_201735_COB: nuevos campos a retornar
      ',NIVAPR, USUAPRSUB, USUAPRJEF ' +
      ' FROM COB_SOLICITUD_DEV_EXC_FSC_CAB WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
      //Fin HPC_201735_COB
      + ' AND NVL(FLAAPR,''X'') = ''S'' AND NVL(FLADEVEFE,''X'') <> ''S'' AND NVL(FLAANU,''X'')<>''S'' ';
   DM1.cdsGradoA.Close;
   DM1.cdsGradoA.DataRequest(xSQL);
   DM1.cdsGradoA.Open;
   If DM1.cdsGradoA.RecordCount = 0 Then
   Begin
      ShowMessage(' EL ASOCIADO NO TIENE APROBACION PARA DEVOLUCION DE EXCESOS');
      EXIT;
   End;

 //FILTRA EL DETALLE DE LAS DEVOLUCIONES DE LA TABLA DE SOLICITUD
   xSql := 'SELECT ANODEV,ASOID,NUM_DEU,COR_COB_DEU,MONREV,CORDEV,MONDEV,MONAPL,CREFPAG,NROOPE,FOPERAC,ASONUMDEV,TIP_MOV_DEU,FORPAGID ' +
      'FROM COB_SOLICITUD_DEV_EXC_FSC_DET WHERE ASOID=''' + DM1.cdsGradoA.Fieldbyname('ASOID').AsString + ''' AND ANODEV=''' + DM1.cdsGradoA.Fieldbyname('ANODEV').AsString + ''' AND CORDEV=''' + DM1.cdsGradoA.Fieldbyname('CORDEV').AsString + ''' ';
   DM1.cdsPlanDet.Close;
   DM1.cdsPlanDet.DataRequest(xSQL);
   DM1.cdsPlanDet.Open;

 //PANTALLA DE DEVOLUCION
   Try
      fDevExcFSC := TfDevExcFSC.create(Self);
      fDevExcFSC.ShowModal;
   Finally
      fDevExcFSC.Free;
   End;

End;

//INICIO: DPP_201204_COB
//Ingreso de voucher de Bancos

Procedure TfPagoCuotas.BitIngVouBcoClick(Sender: TObject);
Begin
   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
   Dm1.vsCobranza := 'B';
   Try
      FNuevoPago := TFNuevoPago.Create(self);
      FNuevoPago.Caption := 'Registro Voucher - Banco ';
      FNuevoPago.ShowModal;
   Finally
      FNuevoPago.Free;
   End;
//FINAL: DPP_201204_COB
End;

// Inicio: SPP_201312_COB : 15/10/2013  Consulta de Devoluciones de Cuotas
procedure TfPagoCuotas.bbtnDevIncClick(Sender: TObject);
var
   xSQL: String;
begin
//Inicio HPC_201515_COB
// If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
//Final  HPC_201515_COB
   xSQL:='select  A.ASOID, A.TRANSANO, A.TRANSMES, ''N'' TMONID, E.MONREV IMPORTE, B.ASOAPENOM, '
        +   'USUCRE USUARIO, A.FECCRE FREG, A.HORCRE HREG, E.CREFPAG, E.NROOPE, E.FOPERAC, '
        +   'A.FORPAGID, B.ASOCODMOD, A.UPROID, A.UPAGOID, A.USEID, '
        +   'B.ASOTIPID, C.UPRONOM, D.UPAGONOM, '
        +   'F.CODOFI, G.OFDESNOM, H.LUGGIRO, H.CODGIRO, H.DEPGIRO, '
        +   'I.AGENBCODES, J.DPTODES, H.ASOCTAAHO, H.ASOOBSERV, H.ASONUMDEV, H.ASOANODEV, H.ASOFECDEV, H.ASOMONDEV '
        +' FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D, DES_DEV_EFE F, '
        +  'APO110 G, MDEVCAB H, COB102 I, APO158 J '
//Inicio HPC_201515_COB
//      +' WHERE A.ASOID=' + Quotedstr(DM1.cdsSolicitud.fieldbyname('ASOID').AsString)
        +' WHERE A.ASOID=' + Quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
//Final  HPC_201515_COB
        +  ' AND A.ANODEV=E.ANODEV AND A.CORDEV=E.CORDEV';
   xSQL := xSQL + ' AND A.ASOID = B.ASOID '
      + ' AND C.UPROID(+)=A.UPROID '
      + ' AND D.UPROID(+)=A.UPROID and D.UPAGOID(+)=A.UPAGOID ';
   xSQL := xSQL
      + ' AND E.ASOID=F.ASOID(+) '
      + ' AND E.ASONUMDEV=F.ASONUMDEV(+) '
      + ' AND E.ANODEV=F.ASOANODEV(+) '
      + ' AND F.CODOFI=G.OFDESID(+) '
      + ' AND E.ASONUMDEV=H.ASONUMDEV(+) '
      + ' AND E.ANODEV=H.ASOANODEV(+) '
      + ' AND H.CODGIRO=I.AGENBCOID(+) '
      + ' AND H.DEPGIRO=J.DPTOID(+) ';

   xSQL := xSQL
      + ' order by H.ASOANODEV, H.ASONUMDEV';
   DM1.cdsRepDev.Close;
   DM1.cdsRepDev.DataRequest( xSQL );
   DM1.cdsRepDev.Open;

   if DM1.cdsRepDev.RecordCount<=0 then
   begin
      MessageDlg('Asociado no tiene Devoluciones grabadas...!', mtError, [mbOk], 0);
      Exit;
   end;

   try
     FDevoInconsis:=TFDevoInconsis.create(self);
     FDevoInconsis.ShowModal;
   finally
     FDevoInconsis.Free;
   end;
end;
// Fin: SPP_201312_COB : 15/10/2013  Consulta de Devoluciones de Cuotas

// Inicio: SPP_201402_COB
procedure TfPagoCuotas.EdtNomGenChange(Sender: TObject);
var xSQL:String;
begin
   xSQL:='SELECT NUMAUTONP FROM APO201 WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND NUMAUTONP IS NOT NULL';
   If DM1.CountReg(xSQL)>0 Then
      pnlDesOnp.Visible:=True
   Else  pnlDesOnp.Visible:=False;
end;
// Fin: SPP_201402_COB

// Inicio SPP_201410_COB
procedure TfPagoCuotas.FechaFall;
var xSQL : String;
begin
   If DM1.cdsAso.FieldByName('TIPO_FALL_ID').AsString='X LIQ.FALL' then
   Begin
      xSQL := 'select ASOFRESCESE FECHA_FALL '
             +'from PVS301 '
             +'where ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
             +'  and PVSESTADO not in (''13'',''04'') ';
   End
   Else
   Begin
      xSQL := 'select FECFALGES FECHA_FALL from ASO_FAC_GES_DET '
             +'where ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
   End;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount>0 then
   Begin
      lblFallecido.Caption := lblFallecido.Caption +chr(13)+ DM1.cdsQry.FieldByName('FECHA_FALL').AsString;
      lblFallecido.Height := 67;
   End;

end;
// Fin SPP_201410_COB

// Inicio SPP_201411_COB
procedure TfPagoCuotas.btnAmpliarClick(Sender: TObject);
var xSQL, xAsoId, xCreDid:String;
begin
If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
If DM1.cdsSolicitud.FieldByName('CREESTID').AsString='02' Then
   Begin
       Try
         xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;
         xCreDid:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
         xSQL:='SELECT ASOID,CREDID FROM CRE301 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID=''02'' AND CREFOTORG>'+QuotedStr('16/01/2014');
         If DM1.CountReg(xSQL) > 0 Then
            Begin
               MessageDlg('SOLO APLICA A CRÉDITOS OTORGADOS HASTA EL 16/01/2014 !!!', mtError, [mbOk], 0);
               Exit;
            End;

         xSQL:='SELECT ASOID,CREDID FROM CRE301 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND SUBSTR(CREDID,9,1)=''R'' AND CREESTID NOT IN (''04'',''13'') ';
         If DM1.CountReg(xSQL) > 0 Then
            Begin
               MessageDlg('NO SE PUEDE AMPLIAR, CRÉDITO REFINANCIADO !!!', mtError, [mbOk], 0);
               Exit;
            End;

         xSQL:='SELECT ASOID,CREDID FROM CRE301 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND SUBSTR(CREDID,9,1)=''A'' AND CREESTID NOT IN (''04'',''13'') ';
         If DM1.CountReg(xSQL) > 0 Then
            Begin
               MessageDlg('SOLO SE PUEDE AMPLIAR EL CRÉDITO UNA SOLA VEZ !!!', mtError, [mbOk], 0);
               Exit;
            End;

         xSQL:='SELECT ASOID,CREDID FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID=''19'' ';
         If DM1.CountReg(xSQL) > 0 Then
            Begin
               MessageDlg('NO APLICA A CRÉDITO CON CUOTAS BLOQUEDAS !!!', mtError, [mbOk], 0);
               Exit;
            End;

         xSQL:='SELECT SUM(NVL(CREAMORT,0)-NVL(CRECAPITAL,0)) SALCAP FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID IN (''02'',''11'',''27'',''14'') ';
         DM1.cdsQry10.Close;
         DM1.cdsQry10.DataRequest(xSQL);
         DM1.cdsQry10.Open;
         If DM1.cdsQry10.FieldByName('SALCAP').AsFloat <= 100 Then
            Begin
               MessageDlg('NO APLICA A CRÉDITO CON SALDO CAPITAL <= 100 SOLES !!!', mtError, [mbOk], 0);
               Exit;
            End;
         DM1.cdsQry10.Close;
         fAmplIndividual := TfAmplIndividual.Create(self);
         fAmplIndividual.lblCodMod.Caption:=EdtCodMod.Text;
         fAmplIndividual.lblDNI.Caption:=EdtDNI.Text;
         fAmplIndividual.lblApeNom.Caption:=EdtNomGen.Text;
         fAmplIndividual.lblFecPre.Caption:=DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
         fAmplIndividual.lblCredito.Caption:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
         fAmplIndividual.lblMonto.Caption:=DM1.FormatoNumeros(DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsString);
         fAmplIndividual.lblNumCuo.Caption:=DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString;
         fAmplIndividual.lblValor.Caption:=DM1.FormatoNumeros(DM1.cdsSolicitud.FieldByName('CRECUOTA').AsString);
         fAmplIndividual.lblFecOpe.Caption:=DateToStr(DM1.FechaSys);
         xSQL:='SELECT COUNT(ASOID) CUOPEN, NVL(SUM(NVL(CREAMORT,0)-NVL(CRECAPITAL,0)),0) SALCAP, '+
               'NVL(SUM(NVL(CREFLAT,0)-NVL(CREMTOFLAT,0)),0) SALGAS, NVL(SUM(NVL(MONPACDESGRAV,0)-NVL(MONCOBDESGRAV,0)),0) SALDES '+
               'FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND '+
               'CREESTID IN (''02'',''11'',''27'',''14'') ';
         DM1.cdsQry33.Close;
         DM1.cdsQry33.DataRequest(xSQL);
         DM1.cdsQry33.Open;
         If DM1.cdsQry33.RecordCount > 0 Then
            Begin
              If DM1.cdsQry33.FieldByName('SALCAP').AsFloat <= 0 Then
                 Begin
                    MessageDlg('NO EXISTE SALDO CAPITAL POR AMPLIAR !!!', mtInformation, [mbOk], 0);
                    Exit;
                 End;
              fAmplIndividual.lblFecAmp.Caption:=fAmplIndividual.lblFecPre.Caption;
              fAmplIndividual.lblCreAmp.Caption:=Copy(fAmplIndividual.lblCredito.Caption,1,8)+'A'+Copy(fAmplIndividual.lblCredito.Caption,10,6);
              fAmplIndividual.lblSalCap.Caption:=DM1.FormatoNumeros(DM1.cdsQry33.FieldByName('SALCAP').AsString);
              fAmplIndividual.lblSalGas.Caption:=DM1.FormatoNumeros(DM1.cdsQry33.FieldByName('SALGAS').AsString);
              fAmplIndividual.lblSalDes.Caption:=DM1.FormatoNumeros(DM1.cdsQry33.FieldByName('SALDES').AsString);
              fAmplIndividual.lblCuoPen.Caption:=DM1.cdsQry33.FieldByName('CUOPEN').AsString;
              fAmplIndividual.speNumCuo.MinValue:=DM1.cdsQry33.FieldByName('CUOPEN').AsInteger+6;
              fAmplIndividual.speNumCuo.Value:=fAmplIndividual.speNumCuo.MinValue;
              fAmplIndividual.ShowModal;
            End;
       Finally
         fAmplIndividual.Free;
       End;
   End
Else
   Begin
       MessageDlg('SOLO APLICA A CREDITOS POR COBRAR!!!', mtInformation, [mbOk], 0);
       Exit;
   End;
end;
// Fin SPP_201411_COB


//Inicio HPC_201502_COB
procedure TFpagocuotas.btnConsolidadoClick(Sender: TObject);
VAR XSQL:STRING;
begin
   XSQL:=
    'SELECT NUMGEST,TIPGES,DESCRIPCION,GESTIONADO,HREG FROM '
   +'(SELECT ''ASOCIADO:''NUMGEST,'''+DM1.cdsAso.FieldByname('Asoapenom').AsString+''' TIPGES,'' ''DESCRIPCION,'' ''GESTIONADO,NULL HREG From dual '
   +' UNION ALL '
   +'SELECT ''COD.MODULAR:''NUMGEST,'''+DM1.cdsAso.FieldByname('Asocodmod').AsString+''' TIPGES,'' ''DESCRIPCION,'' ''GESTIONADO,NULL HREG From dual '
   +' UNION ALL '
   +'SELECT SUBSTR(NUMGEST,1,20)NUMGEST,SUBSTR(TIPGES,1,20)TIPGES,SUBSTR(DESCRIPCION,1,100)DESCRIPCION,SUBSTR(GESTIONADO,1,20)GESTIONADO,TO_DATE(HREG,''DD/MM/YYYY HH24:MI:SS'') HREG FROM '
   +'( SELECT A.CODATE NUMGEST,''ATENCION'' TIPGES, B.DESCRIPCION, A.USUARIO GESTIONADO,TO_CHAR(A.HREG,''DD/MM/YYYY HH24:MI:SS'') HREG '
   +' FROM COB_ATE_ASO A,GES_REF_SEG_DET B '
   +'  WHERE A.ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString+''' '
   +'    AND A.CODATE = B.IDGTNDET(+) '
   +'    AND B.IDGTN  = ''02'' '
   +' UNION ALL '
   +' SELECT A.NROGEST NUMGEST,''TELEFONICA (Externa)'' TIPGES,A.DETOBS DESCRIPCION, A.USUARIO GESTIONADO,TO_CHAR(A.FECHA,''DD/MM/YYYY'')||'' ''||A.HORA HREG '
   +' FROM GES_COB_SEG A, GES_REF_SEG_DET B, GES_REF_SEG C '
   +' WHERE A.ASOID = '''+DM1.cdsAso.FieldByName('ASOID').AsString+''' '
   +'   AND  A.IDGESTIONDET = B.IDGTNDET(+) '
   +'   AND C.IDGTN         = A.IDGESTION(+)'
   +' UNION ALL '
   +' SELECT ROWNUM||''-''||A.IDEGESDOM NUMGEST, ''DOMICILIARIA'' TIPGES, C.DESCRIPCION, B.DESGESDOM GESTIONADO,TO_CHAR(A.FECHORREG,''DD/MM/YYYY HH24:MI:SS'')HREG '
   +' FROM COB_GES_DOM_HIS A, COB_GES_DOM  B, GES_REF_SEG_DET C '
   +' WHERE A.ASOID ='''+DM1.cdsAso.FieldByName('ASOID').AsString+''' '
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
   dtgData.DataSource:=DM1.dsQry33;
   DM1.HojaExcel('Consolidado',dtgData.DataSource,dtgData);

end;
//Final HPC_201502_COB

//Inicio HPC_201502_COB
procedure TFpagocuotas.dtgPrestamosColExit(Sender: TObject);
begin
   ParaAdenda;
end;
//Final HPC_201502_COB



//Inicio HPC_201502_COB
procedure TFpagocuotas.btnAdendaClick(Sender: TObject);
VAR XSQL:STRING;
begin

   If not ParaAdenda Then Exit;

   XSQL:=  'Select CIAID,PARTIDA,ASIENTO,REPRESENTANTE,DNI_REPRES,CARGO_REPRES,OPEBANC,VIGENTE '
          +'From  TGE_REG_PUB '
          +'Where OPEBANC=''S'' AND VIGENTE=''S'' ';
   DM1.cdsQry33.Close;
   DM1.cdsQry33.DataRequest(XSQL);
   DM1.cdsQry33.Open;

   If DM1.cdsQry33.RecordCount = 1 Then
   Begin
      pplblRUC.Caption        := '20136424867';
      pplblGerenteG.Caption   := DM1.cdsQry33.FieldByName('REPRESENTANTE').AsString;
      pplblDNIGERENTE.Caption := DM1.cdsQry33.FieldByName('DNI_REPRES').AsString;
      pplblPARTIDA.Caption    := DM1.cdsQry33.FieldByName('PARTIDA').AsString;
      pplblNOMDOC.Caption     := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
      pplblDNIDOC.Caption     := DM1.cdsAso.FieldByName('ASODNI').AsString;
      pplblDNIDOC2.Caption    := DM1.cdsAso.FieldByName('ASODNI').AsString;
      pplblDIRDOCENTE.Caption := DM1.cdsAso.FieldByName('ASODIR').AsString;

      If DM1.cdsSolicitud.FieldByName('FREG').AsDateTime<= StrToDate('13/11/2014') then
      Begin
         pplblFECDOC.Caption := '11/11/2014';
         pplblMES.Caption    := 'Noviembre';
         pplblDIA.Caption    := '11';
         pplblANO.Caption    := '2014';
      End
      Else
      Begin
         pplblFECDOC.Caption := '30/12/2014';
         pplblMES.Caption    := 'Diciembre';
         pplblDIA.Caption    := '30';
         pplblANO.Caption    := '2014';
      End;

      ppRepAdenda.Print;
      ppRepAdenda.Stop;
   End
   Else
   Begin
     ShowMessage('No existe REPRESENTANTE VIGENTE (TGE_REG_PUB)' );
     exit;
   End;
   DM1.cdsQry33.Close;
end;
//Final HPC_201502_COB

//Inicio HPC_201502_COB
function TFpagocuotas.ParaAdenda():boolean;
begin
    If (DM1.cdsSolicitud.FieldByName('TIPOREF').AsString = 'AM') AND
       (DM1.cdsSolicitud.FieldByName('CREESTID').AsString <>'13') AND
       (DM1.cdsSolicitud.FieldByName('CREESTID').AsString <>'04') Then
    Begin
       btnAdenda.Visible := True;
       Result := True;
    End
    Else
    Begin
       btnAdenda.Visible := False;
       Result := False;
    End;
end;
//Final HPC_201502_COB

//Inicio HPC_201502_COB
procedure TFpagocuotas.dtgPrestamosRowChanged(Sender: TObject);
begin
   ParaAdenda;
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
   ParaHistAmp;
//Final HPC_201716_COB
//Inicio HPC_201614_COB
//Boton de activación
   ActivaBtnPagosAnticipados;
//Final HPC_201614_COB   
end;
//Final HPC_201502_COB

//Inicio HPC_201606_COB --Procedimeinto de bloqueo
procedure TfPagoCuotas.BitBLoqFSCClick(Sender: TObject);
var xsql:string;
begin

   xsql:='Select asoid From COB_FSC_DEUDA_FSC_CAB '+
         'WHERE ASOID='''+Dm1.cdsAso.fieldbyname('ASOID').AsString+''' AND ID_EST_FSC IN (''02'',''27'',''14'',''19'') ';
   Dm1.cdsGradoA.Close;
   Dm1.cdsGradoA.DataRequest(xsql);
   Dm1.cdsGradoA.Open;
   If Dm1.cdsGradoA.RecordCount=0 Then
   Begin
    ShowMessage('No éxiste cuentas al FSC para Bloquear');
    Exit;
   End;
   
   Dm1.cdsGradoA.Close;
   FBloqueoFSC := TFBloqueoFSC.create(self);
   FBloqueoFSC.Showmodal;
   FBloqueoFSC.free;
end;
//Final HPC_201606_COB
//Inicio HPC_201614_COB
// Boton de ingreso a Pagos adelantados
procedure TfPagoCuotas.btnPagoAdelantadoClick(Sender: TObject);
var xsql,xasoid,xcredid:String;
begin

 XASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
 XCREDID:= DM1.CdsSolicitud.FieldByName('CREDID').AsString;

 If DM1.cdsSolicitud.FieldByName('CREESTID').AsString ='02'  then
 Begin

   Xsql:='Select asoid,credid,creestid,crecuota from cre302 '
       +'where asoid='''+XASOID+''' and credid='''+XCREDID+''' and creestid in (''14'',''19'') ';
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(XSQL);
  DM1.cdsDFam.Open;
  If Dm1.cdsDFam.RecordCount>0 Then
  Begin
    ShowMessage('El Crédito tiene cuotas en PROCESO DE COBRANZAS o BLOQUEADAS, verifique');
    exit;
  End;

  Xsql:='Select asoid,credid,crecuota,crefven,crefvenini from cre302 '
       +'where  asoid='''+XASOID+''' and credid='''+XCREDID+''' and crefven<>crefvenini and crefvenini is not null';
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(XSQL);
  DM1.cdsDFam.Open;
  If Dm1.cdsDFam.RecordCount>0 Then
  Begin
    ShowMessage('El Crédito tiene cuotas DIFERIDAS, revierta el diferido y verifique');
    exit;
  End;
   fPagosAdelantados := TfPagosAdelantados.create(self);
   fPagosAdelantados.Showmodal;
   fPagosAdelantados.free;
 End
 Else
 ShowMessage('El crédito debe estar pendiente de pago');
end;
//Final HPC_201614_COB

//Inicio HPC_201614_COB
//Activa botones
procedure TfPagoCuotas.ActivaBtnPagosAnticipados;
var Xsql:String;
begin
  //Verifica si esta marcado en CRE301
 xSql:='Select FLGPAGADE,FLGPROPAGADE From CRE301 WHERE ASOID='''+DM1.cdsSolicitud.FieldByName('asoid').AsString+''' AND CREDID='''+DM1.cdsSolicitud.FieldByName('credid').AsString+''' ';
 DM1.cdsTZona.Close;
 DM1.cdsTZona.DataRequest(xSql);
 DM1.cdsTZona.Open;

 //Si esta marcado y no procesado
  btnPagoAdelantado.Visible := False;
  btnRevertirDif.Visible := False;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
// Inicio HPC_201733_COB
// Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
//  If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'CRE_NIV_AUT_USU', 'USERNIV') >= 'N3' Then
  If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) >= 3 Then
// Fin HPC_201733_COB
  Begin
    btnSimular.Top:=325;
    btnSimular.Left:=496;
    btnSimular.Visible:=true;
  End;
// Fin HPC_201731_COB
 If (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPAGADE').AsString))>0) AND
    (Length(TRIM(DM1.cdsTZona.FieldByName('FLGPROPAGADE').AsString))=0) Then
 Begin
    btnPagoAdelantado.Visible := True;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    btnSimular.Visible:=false;
// Fin HPC_201731_COB
    Xsql:='Select asoid,credid,crecuota,crefven,crefvenini from cre302 '
        +'where  asoid='''+DM1.cdsSolicitud.FieldByName('asoid').AsString+''' and '
        +'credid='''+DM1.cdsSolicitud.FieldByName('credid').AsString+''' and '
        +'crefven<>crefvenini and crefvenini is not null';
    DM1.cdsDFam.Close;
    DM1.cdsDFam.DataRequest(XSQL);
    DM1.cdsDFam.Open;
    If Dm1.cdsDFam.RecordCount>0 Then
       btnRevertirDif.Visible    := True;
 End;
end;
//Final HPC_201614_COB

//Inicio HPC_201614_COB
//Revierte diferidos
procedure TfPagoCuotas.btnRevertirDifClick(Sender: TObject);
var xsql,xAsoid,xCredid:String;
begin
  xAsoId  := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
  xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;

  If MessageDlg('Se revertira las cuotas diferidas, desea continuar? ',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
  Begin
    xSQL := 'BEGIN '
          + ' SP_COB_REV_DIF_X_CRED('
          + quotedstr(xAsoId) + ','
          + quotedstr(xCreDid) + '); END;';
    Try
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      ShowMessage('Reversión exitosa');
    Except
      ShowMessage('Error en LA REVERSIÓN de DIFERIDOS');
      exit;
    End;
  End;
end;
//Final HPC_201614_COB

//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
procedure TfPagoCuotas.BitBtn3Click(Sender: TObject);
var xsql,xAsoid,xCreDid,xtipcredes,xtipodescuento,xtipcancelacion:STRING;

begin
  If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
  If DM1.cdsSolicitud.FieldByName('CREESTID').AsString<>'02' Then
   Begin
       MessageDlg('SOLO APLICA A CRÉDITOS POR COBRAR!!!', mtInformation, [mbOk], 0);
       Exit;
   End;

  xAsoId          := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
  xCreDid         := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
  xtipcredes      :=DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(xCreDid, 7, 2)), 'CRE110', 'TIPCREDES');
  xtipodescuento  :=DM1.CrgDescrip('FORPAGOID=' + QuotedStr(DM1.cdsSolicitud.fieldbyname('FORPAGOID').AsString),'COB101', 'FORPAGODES');
  xtipcancelacion :=DM1.CrgDescrip('TIPDESEID=' + QuotedStr(DM1.cdsSolicitud.fieldbyname('TIPDESEID').AsString),'CRE104', 'TIPDESEDES');

  freprogramar   := Tfreprogramar.Create(self);
  fReprogramar.edtdiasatraso.Text :='0';

   XSQL := 'SELECT MAX(TRUNC(SYSDATE) - CREFVEN) DIASATRASO'
         + ' FROM CRE302 '
         + ' Where ASOID = ' + QuotedStr(Trim(xAsoId)) + ' And CREDID = ' + QuotedStr(Trim(xCreDid))
         + '    AND CREESTID IN (''02'', ''11'', ''14'', ''27'')'
         + '    AND (NVL(CREMTO,0) - NVL(CREMTOCOB,0)) > 0'
         + ' Order By CREDID,CRECUOTA ';
   DM1.cdsQry10.Close;
   DM1.cdsQry10.DataRequest(xSQL);
   DM1.cdsQry10.Open;
   If DM1.cdsQry10.FieldByName('DIASATRASO').AsFloat<0 Then
        fReprogramar.edtdiasatraso.Text :='0'
   else fReprogramar.edtdiasatraso.Text := DM1.cdsQry10.FieldByName('DIASATRASO').AsString;;

  XSQL:='WITH CALIFICACION AS '
       +'(SELECT ASOID,CFCDES_F,PERIODO FROM CFC000 WHERE PERIODO=(SELECT MAX(PERIODO) FROM CFC000))'
       +' SELECT A.ASOID,A.CREDID,A.CREESTID,A.CRENUMCUO,A.FORPAGOID,A.TIPDESEID,B.PERIODO,B.CFCDES_F,A.CREINTERES '
       +' FROM   CRE301 A, CALIFICACION B '
       +' WHERE A.ASOID='+quotedstr(xAsoId)+' AND A.CREDID='+quotedstr(xCreDid)+' AND A.ASOID=B.ASOID ';
  DM1.cdsQry10.Close;
  DM1.cdsQry10.DataRequest(xSQL);
  DM1.cdsQry10.Open;
  
   saldoscreditoant(xAsoId,xCreDid);

    SysLocale.MiddleEast := true;
    fReprogramar.edtSaldodeuda.BiDiMode   := bdRightToLeft;
    fReprogramar.edtSaldoRepro.BiDiMode   := bdRightToLeft;
    fReprogramar.edtdiasatraso.BiDiMode   := bdRightToLeft;
    fReprogramar.edtSaldocapital.BiDiMode := bdRightToLeft;
    fReprogramar.edttasa.BiDiMode         := bdRightToLeft;
    fReprogramar.edtPeriodo.Text       := DM1.cdsQry10.fieldbyname('PERIODO').AsString;
    fReprogramar.edtApellNombres.Text  := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
    fReprogramar.edtasocodmod.Text     := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
    fReprogramar.edtdni.Text           := DM1.cdsAso.FieldByName('ASODNI').AsString;
    fReprogramar.edtcredito.Text       := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
    fReprogramar.edtCalificacion.Text  := DM1.cdsQry10.fieldbyname('CFCDES_F').AsString;
    fReprogramar.edttipocredito.Text   := xtipcredes;
    fReprogramar.edtTipoDescuento.Text := xtipodescuento;
    fReprogramar.edtSaldodeuda.Text    := DM1.cdsQry11.FieldByName('SALDO_TOT').AsString;
    fReprogramar.edtMeses.MinValue     :=  6;
    fReprogramar.edtMeses.maxValue     := DM1.cdsSolicitud.fieldbyname('CRENUMCUO').AsInteger;
    fReprogramar.edtMeses.Text         := '6';
    fReprogramar.edtSaldoRepro.Text    := DM1.cdsQry11.FieldByName('SALDO_REP').AsString;
    fReprogramar.dtpFechaEva.Date      := Dm1.FechaSys;
    fReprogramar.edtSaldocapital.Text  := DM1.cdsQry11.FieldByName('SALDO_CAPITAL').AsString;
    fReprogramar.edttasa.Text          := FloatToStr(DM1.cdsQry10.FieldByName('CREINTERES').AsFloat);

    If length(trim(DM1.cdsSolicitud.FieldByName('USUAPRREPEXC').AsString))>0 Then
    Begin
      fReprogramar.lblTipo.Caption        := 'REPROGRAMACIÓN EXCEPCIONAL';
      fReprogramar.edtMeses.MaxValue      := fReprogramar.EdtMeses.MaxValue+6;
      fReprogramar.Edtpergracias.MinValue := 0;
      fReprogramar.edtpergracias.MAXValue := 3;
      fReprogramar.edtpergracias.Enabled  := True;
    End
    Else
    Begin
      fReprogramar.lblTipo.Caption := 'REPROGRAMACIÓN ESTÁNDAR';
      fReprogramar.edtMeses.MaxValue      := fReprogramar.edtMeses.MaxValue;
      fReprogramar.Edtpergracias.maxValue := 0;
      fReprogramar.edtpergracias.Value    := 0;
      fReprogramar.edtpergracias.Enabled  := False;
    End;


   //llena observaciones
     If DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' THEN
     Begin
       fReprogramar.cdsobservaciones.Insert;
       fReprogramar.cdsobservaciones.FieldByname('OBSERVACION').AsString := 'Asociado FALLECIDO';
       fReprogramar.cdsobservaciones.Post;
     End
     Else If DM1.cdsSolicitud.fieldbyname('TIPDESEID').AsString='10' Then
     Begin
       fReprogramar.cdsobservaciones.Insert;
       fReprogramar.cdsobservaciones.FieldByname('OBSERVACION').AsString := 'El crédito se encuentra '+xtipcancelacion;
       fReprogramar.cdsobservaciones.Post;
     End
     Else If DM1.cdsSolicitud.fieldbyname('CREESTID').AsString<>'02' Then
     Begin
       fReprogramar.cdsobservaciones.Insert;
       fReprogramar.cdsobservaciones.FieldByname('OBSERVACION').AsString := 'El crédito no se encuentra en estado POR COBRAR';
       fReprogramar.cdsobservaciones.Post;
     End
     Else  If ((DM1.cdsQry10.fieldbyname('CFCDES_F').AsString<>'NORMAL') AND
       (DM1.cdsQry10.fieldbyname('CFCDES_F').AsString<>'PROBLEMAS POTENCIALES')) AND
       (length(trim(DM1.cdsSolicitud.FieldByName('USUAPRREPEXC').AsString))=0) Then
     Begin
       fReprogramar.cdsobservaciones.Insert;
       fReprogramar.cdsobservaciones.FieldByname('OBSERVACION').AsString := 'Calificación Interna debe ser NORMAL/PROBLEMAS POTENCIALES';
       fReprogramar.cdsobservaciones.Post;
     End
     Else If (StrToInt(fReprogramar.edtdiasatraso.Text)>0) AND
       (length(trim(DM1.cdsSolicitud.FieldByName('USUAPRREPEXC').AsString))=0) Then
     Begin
       fReprogramar.cdsobservaciones.Insert;
       fReprogramar.cdsobservaciones.FieldByname('OBSERVACION').AsString := 'El crédito tiene cuotas vencidas';
       fReprogramar.cdsobservaciones.Post;
     End;

  Try
   fReprogramar.ShowModal;
  Finally
   fReprogramar.Free;
  End;

end;
//Final HPC_201711_COB

//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Anulación de Reprogramación y Ampliación
procedure TfPagoCuotas.saldoscreditoant(Vasoid,Vcredid:String);
VAR  XSQL: String;
begin
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
{  XSQL:='SELECT ASOID,CREDID,SUM(NVL(TOT_VEN,0)) TOT_VEN, SUM(NVL(TOT_PER,0)) TOT_PER,'
       +' SUM(NVL(TOT_DIF,0) )TOT_DIF,SUM(NVL(TOT_ADE,0)) TOT_ADE,SUM(NVL(TOT_PEN,0)) TOT_PEN,'
       +' SUM(NVL(TOT_VEN,0)+NVL(TOT_PER,0)+NVL(TOT_DIF,0)+NVL(TOT_ADE,0)) SALDO_REP,'
       +' SUM(NVL(TOT_VEN,0)+NVL(TOT_PER,0)+NVL(TOT_DIF,0)+NVL(TOT_PEN,0)) SALDO_TOT,'
       +' SUM(NVL(SALDOPORPAGAR,0)) SALDOPORPAGAR,SUM(NVL(SALDOCAPITAL,0)) SALDO_CAPITAL, '
       +' (SELECT MAX(CREFVEN) FROM  CRE302 WHERE ASOID='+quotedstr(VAsoId)+' AND CREDID='+quotedstr(VCreDid)+')FECVENFIN,'
       +' (SELECT MIN(CREFVEN) FROM  CRE302 WHERE ASOID='+quotedstr(VAsoId)+' AND CREDID='+quotedstr(VCreDid)+')FECVENINI,'
       +' MAX(CREINTERES) TASAINT, MAX(CRENUMCUO) CRENUMCUO,NVL(MAX(MESPERGRA),0)CRENUMGRA '
       +' FROM  '
       +' (SELECT A.ASOID,A.CREDID,A.CREESTID,A.CRECUOTA,'
       +'  B.CREINTERES,B.CRENUMCUO,B.MESPERGRA'
       +'  CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')<TO_CHAR(SYSDATE,''YYYYMM''))'
       +'  AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL)'
       +'  AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END TOT_VEN,'
       +'  CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')=TO_CHAR(SYSDATE,''YYYYMM''))'
       +'  AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL)'
       +'  AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END TOT_PER,'
       +'  CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN<>CREFVENINI)'
       +'  AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       +'  THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END TOT_DIF,'
       +'  CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) '
       +'  AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
       +'  AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN (NVL(CREAMORT,0)-NVL(CRECAPITAL,0)) END TOT_ADE ,'
       +'  CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM''))'
       +'  AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL)'
       +'  AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0) END TOT_PEN,'
       +'  CASE WHEN a.CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END SALDOPORPAGAR, '
       +'  CASE WHEN a.CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN NVL(CREAMORT, 0) - NVL(CRECAPITAL, 0) END SALDOCAPITAL '
      +'  FROM CRE302 A,CRE301 B '
       +' WHERE  A.ASOID='+quotedstr(VAsoId)+' AND A.CREDID='+quotedstr(VCreDid)+' AND A.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       +'       AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
       +' ) '
       +'GROUP BY ASOID,CREDID '; }

  XSQL:='WITH PAGOS AS '
       + '(SELECT MAX(ASOID) ASOID, MAX(CREDID) CREDID,'
       + ' SUM(CASE WHEN FORPAGABR IN (''PLA'',''REG'',''CEF'') THEN NVL(CREMTOCOB,0) END) PLA,'
       + ' SUM(CASE WHEN FORPAGABR IN (''BAN'') THEN NVL(CREMTOCOB,0) END) BAN,'
       + ' SUM(CASE WHEN FORPAGABR IN (''EFE'') THEN NVL(CREMTOCOB,0) END) EFE,'
       + ' SUM(CASE WHEN FORPAGABR IN (''BEN'') THEN NVL(CREMTOCOB,0) END) BEN,'
       + ' SUM(CASE WHEN FORPAGABR NOT IN (''PLA'',''REG'',''CEF'',''BEN'',''BAN'',''EFE'')  THEN NVL(CREMTOCOB,0) END) OTR,'
       + ' SUM(NVL(CREMTOCOB,0)) CREMTOCOB '
       + ' FROM CRE310 '
       + ' WHERE ASOID='+quotedstr(VAsoId)+' AND CREDID='+quotedstr(VCreDid)
       + ' AND CREESTID NOT IN (''13'',''04'',''99'')  AND NUMDEV IS NULL) '

       + ' SELECT ASOID,CREDID,SUM(NVL(TOT_VEN,0)) TOT_VEN, SUM(NVL(TOT_PER,0)) TOT_PER,'
       + '  SUM(NVL(TOT_DIF,0) )TOT_DIF,SUM(NVL(TOT_ADE,0)) TOT_ADE,SUM(NVL(TOT_PEN,0)) TOT_PEN,'
       + '  SUM(NVL(TOT_VEN,0)+NVL(TOT_PER,0)+NVL(TOT_DIF,0)+NVL(TOT_ADE,0)) SALDO_REP,'
       + '  SUM(NVL(TOT_VEN,0)+NVL(TOT_PER,0)+NVL(TOT_DIF,0)+NVL(TOT_PEN,0)) SALDO_TOT,'
       + '  SUM(NVL(SALDOPORPAGAR,0)) SALDOPORPAGAR,SUM(NVL(SALDOCAPITAL,0)) SALDO_CAPITAL,'
       + '  (SELECT MAX(CREFVEN) FROM  CRE302 WHERE  ASOID='+quotedstr(VAsoId)+' AND CREDID='+quotedstr(VCreDid)+') FECVENFIN,'
       + '  (SELECT MIN(CREFVEN) FROM  CRE302 WHERE  ASOID='+quotedstr(VAsoId)+' AND CREDID='+quotedstr(VCreDid)+') FECVENINI,'
       + '  MAX(CREINTERES) TASAINT, MAX(CRENUMCUO) CRENUMCUO,MAX(CRECUOTA) CRECUOTA,NVL(MAX(MESPERGRA),0)CRENUMGRA,'
       + '  NVL(MAX(PLA),0)PLA, NVL(MAX(BAN),0) BAN,NVL(MAX(EFE),0) EFE,NVL(MAX(BEN),0) BEN,NVL(MAX(OTR),0) OTR'
       + ' FROM '
       + '(SELECT A.ASOID,A.CREDID,A.CREESTID,B.CRECUOTA,'
       + ' B.CREINTERES,B.CRENUMCUO,B.MESPERGRA,A.USUARIO,'
       + ' CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')<TO_CHAR(SYSDATE,''YYYYMM''))'
       + '   AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL)'
       + '   AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       + '   THEN NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0) END TOT_VEN,'
       + ' CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')=TO_CHAR(SYSDATE,''YYYYMM'')) '
       + '   AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
       + '   AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       + '   THEN NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0) END TOT_PER, '
       + '  CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN<>CREFVENINI) '
       + '  AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       + '   THEN NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0) END TOT_DIF,'
       + ' CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) '
       + '  AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
       + '  AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       + '  THEN (NVL(A.CREAMORT,0)-NVL(A.CRECAPITAL,0)) END TOT_ADE, '
       + ' CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM''))'
       + '   AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
       + '   AND a.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       + '  THEN (NVL(A.CREAMORT,0)+NVL(A.CREFLAT,0)+NVL(A.MONPACDESGRAV,0))-NVL(A.CREMTOCOB,0) END TOT_PEN,'
       + '  CASE WHEN a.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       + '  THEN NVL(A.CREMTO, 0) - NVL(A.CREMTOCOB, 0) END SALDOPORPAGAR,'
       + '  CASE WHEN a.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       + '  THEN NVL(A.CREAMORT, 0) - NVL(A.CRECAPITAL, 0) END SALDOCAPITAL,'
       + '  C.PLA,C.BAN,C.EFE,C.BEN,C.OTR '
       + '  FROM CRE302 A,CRE301 B,PAGOS C '
       + ' WHERE  A.ASOID='+quotedstr(VAsoId)+' AND A.CREDID='+quotedstr(VCreDid)+' AND A.CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       + '       AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
       + '       AND C.ASOID(+)=A.ASOID AND C.CREDID(+)=A.CREDID'
       + ' ) '
       + ' GROUP BY ASOID,CREDID ' ;
//Final HPC_201716_COB
    DM1.cdsQry11.Close;
    DM1.cdsQry11.DataRequest(xSQL);
    DM1.cdsQry11.Open;
end;
//Final HPC_201711_COB

//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
procedure TfPagoCuotas.DatadeAmpliacion(vasoid, vcredid: String);
VAR XSQL:sTRING;
begin
XSQL:='SELECT A.ASOID,A.CREDID,A.NUMREFI,A.CREFOTORG,A.TIPDESEID,A.CREMTOOTOR,A.CRECUOTA,A.CRENUMCUO,A.CRESDOACT,MAX(A.USUARIO)USUARIO,'
      +'MAX(CREFPAG) PAGO,SUM(NVL(CREMTOCOB,0)) CREMTOCOB, SUM(NVL(CREAMORT,0)) CREAMORT,SUM(NVL(CREINTERES,0))CREINTERES,SUM(NVL(CREFLAT,0))CREFLAT,'
      +'SUM(NVL(MONCOBDESGRAV,0))MONCOBDESGRAV '
      +' FROM '
      +'  (SELECT ASOID,CREDID,NUMREFI,CREFOTORG,TIPDESEID,CREMTOOTOR,CRECUOTA,CRENUMCUO,CRESDOACT,USUARIO '
      +'   FROM CRE301 WHERE SUBSTR(CREDID,9,1)=''A'' AND ASOID='+quotedstr(VAsoId)+' AND CREDID='+quotedstr(VCreDid)+') A,'
      +'  CRE310 B '
      +' WHERE  A.ASOID=B.ASOID AND A.NUMREFI=B.CREDID AND '
      +'        B.FORPAGID=''27'' AND B.CREESTID NOT IN (''13'',''04'') '
      +' GROUP BY A.ASOID,A.CREDID,A.NUMREFI,A.CREFOTORG,A.TIPDESEID,A.CREMTOOTOR,A.CRECUOTA,A.CRENUMCUO,A.CRESDOACT ';
DM1.cdsQry11.Close;
Dm1.cdsQry11.DataRequest(XSQL);
DM1.cdsQry11.Open;

end;
//Final HPC_201716_COB

//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
function TfPagoCuotas.ParaHistAmp: Boolean;
begin
    If (DM1.cdsSolicitud.FieldByName('AMPLIADO').AsString = 'A') AND
       (DM1.cdsSolicitud.FieldByName('CREESTID').AsString <>'13') AND
       (DM1.cdsSolicitud.FieldByName('CREESTID').AsString <>'04') Then
    Begin
       btnHistorialAmp.Visible := True;
       Result := True;
    End
    Else
    Begin
       btnHistorialAmp.Visible := False;
       Result := False;
    End;
end;
//Final HPC_201716_COB

//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
procedure TfPagoCuotas.btnHistorialAmpClick(Sender: TObject);
var xsql:String;
begin
 XSQL:='Select  TO_CHAR(A.FECREV, ''YYYY'' || ''-'' || ''MONTH'') PERIODO,A.CODSOLREP,A.ASOID, A.ASOCODMOD,A.ASODNI,A.CREDID,'
        +' D.TIPCREID,D.CRECUOTA,D.FORPAGOID,B.DIAATR, A.IMPSALTOT,A.IMPREP IMPSALREP,'
        +' CASE WHEN NVL(B.IMPSALCAP,0)=0 THEN A.IMPSALCAPORI ELSE B.IMPSALCAP END IMPSALCAP,'
        +' A.TIPREC,'
        +' CASE WHEN  A.TIPREC=''AMPLIADO'' THEN ''NO APLICA'' ELSE A.TIPREP END TIPREP ,'
        +' A.TASINTREP,A.NUMCRENUE, A.CRENUMCUO, A.CRENUMGRA, A.FECINIVEN,A.FECFINVEN,'
        +' CASE WHEN NVL(B.IMPCUOREP,0)=0 THEN A.IMPCUOREP ELSE B.IMPCUOREP END IMPCUOREP,'
        +' MOTREV DESMOTREC,'
        +' CASE WHEN TRIM(B.USUGEN) IS NULL THEN TRIM(A.USUGENREP) ELSE  TRIM(B.USUGEN) END USUGEN,'
        +' A.FECREP FECGEN,''S'' FLAANU, A.USUREV USUANU, A.FECREV FECANU, A.MOTREV,A.USUREV,A.FECREV,A.OBSADI,C.ASOAPENOM,'
        +' CASE WHEN TRIM(B.CFCDES_F) IS NULL THEN (SELECT CFCDES_F  FROM CFC000 WHERE ASOID=A.ASOID AND PERIODO=TO_CHAR(ADD_MONTHS(A.FECREP,-1),''YYYYMM''))'
        +'      ELSE B.CFCDES_F  END CFCDES_F,'
        +' IMPAPLCROORIPLA PLA,IMPAPLCROORIBAN BAN ,IMPAPLCROORIEFE EFE ,IMPAPLCROORIBEN BEN ,IMPAPLCROORIOTR OTR '
        +'From COB_REP_CRE_CAB B, COB_REV_CRE_REC_CAB A, APO201 C ,CRE301 D '
        +'Where A.ASOID='''+DM1.cdsSolicitud.FieldByname('ASOID').AsString+''' and A.CREDID='''+DM1.cdsSolicitud.FieldByname('Credid').AsString+''' AND A.CODSOLREP=B.CODSOLREP(+) AND A.ASOID=C.ASOID '
        +' and a.asoid=d.asoid and a.credid=d.credid '
        +' Order by A.TIPREC, A.FECREV, A.ASOCODMOD, A.TIPREP ';
   DM1.cdsQry33.Close;
   DM1.cdsQry33.DataRequest(XSQL);
   DM1.cdsQry33.Open;
   dtgData.DataSource:=Dm1.dsQry33;
   If Dm1.cdsQry33.RecordCount=0 Then
   Begin
     ShowMessage('No existe información para consultar');
     exit;
   End;
   DM1.HojaExcel('Reprogramaciones Revertidas',dtgData.DataSource,dtgData);
end;
//Final HPC_201716_COB
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TfPagoCuotas.btnSimularClick(Sender: TObject);
var
  xsql1,xsql2,xsql3:String;
begin

 If DM1.cdsSolicitud.FieldByName('CREESTID').AsString ='02'  then
 Begin
   If DM1.cdsSolicitud.RecordCount > 0 Then
   Begin
     xsql1:='INSERT INTO DB2ADMIN.COB_SIM_CRO_CAB_GTT ( SELECT '+
           'TIPCREID, ASOID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, USEID, CREFOTORG, CREFECINI, CREMTOSOL, CREMTOOTOR, CREMTOGIR, CREINTERES, CREDFLAT, CRECUOTA, CRENUMCUO, '+
           'CRELUGGIRO, BANCOID, CRENUMCTA, CREMTOPAG, CRESDOACT, CREPERGRA, CRECUOPAG, CRECUOENV, CREPERIODI, CREMTOTAL, CRECAPPGO, CRENEWID, CRESALDOT, USUARIO, FREG, '+
           'HREG, OFDESID, CALIFICAID, APRUEBAID, CREESTADO, TMONID, CUOTAINI, UPAGOID, UPROID, DPTOID, LISTAID, CREDID, CRECOM, CRESEG, CREPOR, CREGADM, CRECOMP, CREMORA, '+
           'FORPAGOID, CRETCALID, TMONABR, CRETCALABR, LISTAABR, FORPAGOABR, CIAID, CREFRECL, CREESTID, CREANOMES, NROPAGARE, NROAUTDES, TIPCREDES, GARAPENOM, GARASOID, '+
           'ASOCODAUX, NRONABO, NUMREF, FECREF, TIPOREF, NROFICIO, CIUDID, ARCHIVOFTP, AGENBANCOID, DPTOGIRO, USEIDGAR, TIPDESEID, BCOGIRO, CREMTONABO, CREFFINPAG, CREFINIPAG, '+
           'CREBLOQFEC, USUBLOQ, CREBLOQ, FLGCAJA, FECHACAJA, CRENUMCOMP, CCOSID, CUENTAH, CUENTAD, CREGENCOB, FLGAUTOMA, REFANOMES, NROREFINAN, CAJAUSU, HORACAJA, ASOTIPID, '+
           'ASODNI, ANULACAJA, MEN_ANU, MOT_PRE, NUMREFI, FLGREFI, CREFCAN, FLGINCONSIS, PERCONTA, C_ABN, CNTANOMM, FEC_RCP, CRECAPLIQ, CREFDES, CREMENOBS, TIPOCONT, CNTFLAG, '+
           'CREMTODEP, CREFANUL, USERANUL, CRESUMCUO, CREMOTEXT, NROFICIO_BCK, MIGRADO, USUAUTCRE, FECAUTCRE, ESTAUTCRE, COMAUTCRE, USUANUSUP, FECANUSUP, MOTANUSUP, ESTANUSUP, '+
           'DOCID, CCSERIE, CCNODOC, CIASER, CREMONINS, IMPCON, DNIRUC, FECIMPCON, CODARCHIVO, CREMTOAPO, AUTDESCRE, FECAUTDES, USUAUTDES, IMPCARAUT, NROCARAUT, DIASPROC, DESCENV, '+
           'AUTDESGES, USUDESGES, FECHORDESGES, USUMODCUO, FECMODCUO, MOTMODCUO, TASFONDES, NROAUTONP, FECENVBCP, ESTENVBCP, FECCOBBCP, CODAGEBCP, IMPCARONP, MONINTPRO, MESPERGRA, '+
           'CREIDORI, FLGPAGADE, USUAUTPAGADE, FECAUTPAGADE, DIAINTCOR, MONPAGADE, MONCAPADE, MONINTCORADE, MONFLAADE, MONDESADE, USUPROPAGADE, FECPROPAGADE, FLGPROPAGADE, '+
           'USUAPRREPEXC, FECAPRREPEXC, CODSOLREP, COD_PROSPECTO, COD_OFERTA, COD_OFERTA_DET, EMAIL_ASO, COD_CAMPANA '+
           'FROM CRE301 WHERE ASOID= ' + QuotedStr(Trim(DM1.cdsSolicitud.fieldbyname('ASOID').AsString)) + ' AND CREDID= ' + QuotedStr(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString))+')';

      xsql2:='INSERT INTO DB2ADMIN.COB_SIM_CRO_DET_GTT ( SELECT '+
           'ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO, CRECUOTA, CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, '+
           'DPTOID, UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT, USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, '+
           'AGENBCOID, CRECAPITAL, CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR, CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, LISTAABR, '+
           'CIAID, CREESTID, CREESTADO, CRECOM, CRESEG, CREPOR, CREGADM, CRECOMP, CREMORA, CREMTOCOM, CREMTOSEG, CREMTOPOR, CREMTOGADM, CREMTOCOMP, CREMTOMORA, LISTAID, '+
           'ASOCODAUX, NRONABO, CIUDID, FLGPAG, ARCHIVOFTP, CREBLOQ, CREBLOQFEC, CREBLOQOBS, CREDIDNABO, CREINFO, CREMTOEXC, AREAID, CREDOCPAG, FLAGVAR, CRECAPCRON, '+
           'CREINTCRON, CREFLACRON, CREMTOAN, CREAMORTAN, CREINTERESAN, CREFLATAN, FLAGNVINT, DESBLOFEC, USUBLOQ, USUDESBLOQ, NROREFINAN, CREFLGEXC, CREFECEXC, FLGINT, '+
           'NROOPETMP, FOPERACTMP, FLGDESMAR, USUDESMAR, FECDESMAR, OBSDESMAR, CREMTODEV, CRECAPCON, FLGINCONSIS, CREAPLEXC, TIPNABO, PERPROC, FECPROC, FLGPROC, PERCOB, '+
           'CREESTIDANT, SALDOSBS, CREANOINI, CREMESINI, CRECUOTAINI, CREFVENINI, CRECUOTAINI2, CREFVENINI2, CRECUOTAINI3, CREFVENINI3, FLAREP, MONPACDESGRAV, '+
           'MONCOBDESGRAV, FECVENORI, NUMCUOORI, FLGPAGADE, DIAINTCOR, FLAREPEXO '+
           'FROM CRE302 WHERE ASOID= ' + QuotedStr(Trim(DM1.cdsSolicitud.fieldbyname('ASOID').AsString)) + ' AND CREDID= ' + QuotedStr(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString))+')';

      xsql3:='INSERT INTO DB2ADMIN.COB_SIM_CRO_MOV_GTT ( SELECT '+
            'CIAID, ASOID, ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, TIPCREID, CREDID, CRECUOTA, CREMONLOC, CREMONEXT, CREFPAG, CREAMORT, CREINTERES, CREFLAT, CREMTOCOB, '+
            'TMONID, TCAMBIO, USUARIO, FREG, HREG, UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, ASOAPENOM, CIUDID, ARCHIVOFTP, CREOBS, CREANO, FORPAGOID, NROOPE, FOPERAC, '+
            'NRONABO, AREAID, CREMES, CREMTODEV, FORPAGOABR, TRANSINTID, COBFDEV, COBFRECL, COBFNP, CREESTID, CREESTADO, CREMTOCUO, FLGEXC, FECEXC, CREDOCPAG, DEVID, '+
            'FLGSSS, AGENBCOID, FORPAGID, FORPAGABR, DETRCOBID, USERCOBID, RCOBID, DOCID, FLGTA, NROREFINAN, CREFLAGDEV, FL_DISTRIB, CREESTANT, CREESTANTDES, NROOPETMP, '+
            'FOPERACTMP, ASOSITID, FLAGVAR, FLAGVAR2, CNTANOMM, TIPOCONT, CREMTOEXC, FLAGVAR3, FLAGVAR4, FLGINCONSIS, CREAPLEXC, PERCONTA, TIPNABO, CNTFLAG, OFDESID, '+
            'NUMDEV, CRECUOTAINI, CRECUOTAINI2, CRECUOTAINI3, MONCOBDESGRAV '+
            'FROM CRE310 WHERE ASOID='+QuotedStr(DM1.cdsSolicitud.fieldbyname('ASOID').AsString)+' AND CREDID='+QuotedStr(DM1.cdsSolicitud.fieldbyname('CREDID').AsString)+' )';
     try
         DM1.DCOM1.AppServer.EjecutaSql(xsql1);
         DM1.DCOM1.AppServer.EjecutaSql(xsql2);
         DM1.DCOM1.AppServer.EjecutaSql(xsql3);
         DM1.DCOM1.AppServer.SolCommit;


         fPagosAdelantadosSimu := TfPagosAdelantadosSimu.create(self);
         fPagosAdelantadosSimu.Showmodal;
         fPagosAdelantadosSimu.free;

     Except
         DM1.DCOM1.AppServer.SolRollBack;
         ShowMessage('Error al Copiar Información del Asociado');
         exit;
     End;
  End
  Else
  Begin
      ShowMessage('El Asociado no cuenta con algún Crédito');
      exit;
  End;
 End
 Else  ShowMessage('El crédito debe estar pendiente de pago');


end;
// Fin HPC_201731_COB

// Inicio HPC_201805_COB
// Constancia de deuda al FSC
procedure TfPagoCuotas.btnDeudaFSCClick(Sender: TObject);
var
   xSQL:String;
   Present: TDateTime;
   Year,Mes,Dia: Word;
begin 
   // Inicio: HPC_201813_COB
   // Se modifica el Qry
   // xSQL:='SELECT '+
   //       'A.ASOID, '+
   //       'C.ASOAPENOM, '+
   //       'C.ASODNI, '+
   //       'A.NUM_DEU, '+
   //       'A.FEC_APL_FSC, '+
   //       'A.TIP_ASO_ORIGEN, '+
   //       'B.CRE_APL_FSC, '+
   //       'SUBSTR(B.CRE_APL_FSC,9,7) NUMERO_CREDITO, '+
   //       'B.FEC_OTORG, '+
   //       'B.DIA_ATRASO, '+
   //       'C.CREMTOOTOR, '+
   //       '(SELECT SUM(D.CREMTO) FROM CRE302 D WHERE D.ASOID= A.ASOID AND D.CREDID= B.CRE_APL_FSC) DEU_TOTAL, '+
   //       '(SELECT SUM(CREMTOCOB) FROM CRE310 WHERE ASOID=A.ASOID AND CREDID=B.CRE_APL_FSC AND CREESTID NOT IN (''13'',''04'',''99'') AND NUMDEV IS NULL AND FORPAGABR<>''FSC'') TOT_PAGADO, '+
   //       'NVL(B.IMP_APL_FSC,0) IMP_APL_FSC, '+
   //       'NVL(A.IMP_APL_FSC,0) LIQDEU, '+
   //       'NVL(A.IMP_COB_FSC,0) COBDEU, '+
   //       'NVL(A.IMP_SAL_FSC,0) SALDEU '+
   //      'FROM '+
   //       'COB_FSC_DEUDA_FSC_CAB A, COB_FSC_DEUDA_FSC_DET B, CRE301 C '+
   //       'WHERE '+
   //       'A.NUM_DEU = B.NUM_DEU AND '+
   //       'A.ASOID = B.ASOID AND '+
   //       'B.ASOID = C.ASOID AND '+
   //       'B.CRE_APL_FSC = C.CREDID AND '+
   //       'C.CREESTID NOT IN (''13'',''04'') '+
   //       'AND A.ASOID='+ QuotedStr(DM1.cdsSolicitud.fieldbyname('ASOID').AsString)+
   //       ' GROUP BY '+
   //       'A.ASOID,A.NUM_DEU,A.FEC_APL_FSC,A.TIP_ASO_ORIGEN,B.CRE_APL_FSC,B.FEC_OTORG,B.DIA_ATRASO,C.CREMTOOTOR,B.IMP_APL_FSC,A.IMP_APL_FSC,A.IMP_COB_FSC,A.IMP_SAL_FSC,C.ASOAPENOM,C.ASODNI';
    XSQL:='SELECT C.ASOAPENOMDNI APELLIDOS_NOMBRE,C.ASODNI DNI_ASOCIADO,B.NUM_DEU NUMERO_DEUDA,'
          +'SUBSTR(B.CRE_APL_FSC, 9, 7) || '' - '' || E.TIPCREDES RES_CRED,D.CREFOTORG FECHA_OTORG,'
          +'D.CREMTOOTOR IMPORTE_APROBADO,D.CRENUMCUO NUMERO_CUOTAS,D.CRECUOTA VALOR_CUOTA,'
          +'A.IMP_APL_FSC,A.IMP_COB_FSC,A.IMP_SAL_FSC,B.IMP_APL_FSC IMP_APL_FSC_DET, '
          +'A.FEC_APL_FSC,B.CRE_APL_FSC,B.DIA_ATRASO,'
          +'NVL((SELECT SUM(NVL(CREMTOCOB,0)) '
          +'FROM CRE310 '
          +'WHERE ASOID=B.ASOID AND CREDID=B.CRE_APL_FSC AND '
          +' FORPAGABR=''FSC'' AND CREESTID NOT IN (''13'',''04'') GROUP BY ASOID ),0) PEN_X_PAGAR, '
          +'NVL((SELECT SUM(NVL(CREMTO,0)) '
          +' FROM CRE302 '
          +' WHERE ASOID=B.ASOID AND CREDID=B.CRE_APL_FSC AND '
          +' CREESTID NOT IN (''13'',''04'') '
          +' GROUP BY ASOID),0) TOTAL_PAGAR, '
          +'NVL((SELECT SUM(NVL(CREMTOCOB, 0)) '
          +' FROM CRE310 '
          +' WHERE ASOID=B.ASOID AND CREDID=B.CRE_APL_FSC AND '
          +' FORPAGABR<>''FSC'' AND CREESTID NOT IN (''13'',''04'',''99'') AND '
          +' NUMDEV IS NULL  GROUP BY ASOID ),0) TOTAL_PAGADO '
          +' FROM COB_FSC_DEUDA_FSC_CAB A, '
          +'      COB_FSC_DEUDA_FSC_DET B,'
          +' APO201                C,'
          +' CRE301                D,'
          +' CRE110                E  '
          +' WHERE A.ASOID = '+QuotedStr(DM1.cdsMGrupo.fieldbyname('ASOID').AsString)
          +' AND A.NUM_DEU = '+QuotedStr(DM1.cdsMGrupo.fieldbyname('NUM_DEU').AsString)
          +' AND A.ASOID   = B.ASOID '
          +' AND A.NUM_DEU = B.NUM_DEU '
          +' AND A.ASOID   = C.ASOID '
          +' AND B.ASOID   = D.ASOID '
          +' AND B.CRE_APL_FSC=D.CREDID '
          +' AND D.TIPCREID = E.TIPCREID '
          +' ORDER BY D.CREFOTORG ';
   Dm1.cdsQry11.Close;
   Dm1.cdsQry11.DataRequest(xSQL);
   Dm1.cdsQry11.Open;

   pplasoapenom.Caption  := DM1.cdsQry11.FieldByName('APELLIDOS_NOMBRE').AsString;
   ppldni.Caption        := DM1.cdsQry11.FieldByName('DNI_ASOCIADO').AsString;
   pplnumdeu.Caption     := DM1.cdsQry11.FieldByName('NUMERO_DEUDA').AsString;
   pplresumen.Caption    := DM1.cdsQry11.FieldByName('NUMERO_DEUDA').AsString+' al '+DM1.cdsQry11.FieldByName('FEC_APL_FSC').AsString;
   pplusuimprime.Caption := DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
   pplliqdeuda.Caption   := FloatToStrF(DM1.cdsQry11.FieldByName('IMP_APL_FSC').AsFloat,ffNumber,12,2);
   ppltotpag.Caption     := FloatToStrF(DM1.cdsQry11.FieldByName('IMP_COB_FSC').AsFloat,ffNumber,12,2);
   pplpenpag.Caption     := FloatToStrF(DM1.cdsQry11.FieldByName('IMP_SAL_FSC').AsFloat,ffNumber,12,2);
   // Fin: HPC_201813_COB

   xSQL:='SELECT USERNOM FROM TGE006 WHERE USERID='+QuotedStr(DM1.wUsuario);
   Dm1.cdsQry10.Close;
   Dm1.cdsQry10.DataRequest(xSQL);
   Dm1.cdsQry10.Open;
   // Inicio: HPC_201813_COB
   // Se reemplaza por otro label
   // lblUsuario.Caption := DM1.cdsQry10.fieldbyname('USERNOM').AsString;
   // Fin: HPC_201813_COB
   Present:= DM1.FechaSys;
   DecodeDate(Present,Year,Mes,Dia);
   lblFecha.Caption := 'Jesús María '+IntToStr(Dia)+' de '+Dm1.NombreMes(IntToStr(Mes))+' del '+IntToStr(Year);

   ppConstancia.Print;
   ppConstancia.Stop;
   //ppD1.ShowModal;

end;
// Fin HPC_201805_COB
End.

