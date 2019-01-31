//Inicio de Estámdares 01/08/2011
//Unidad             : COB943
//Formulario         : FEXTORPREST
//Fecha de Creación  :
//Autor              : Ricardo Medina Zavaleta
//Objetivo           : Devolver, APlicar, Extornar prestamo.

//Actualizaciones    :
//HPP_200903_COB     : Verificación de lo registros marcados por el usuario para la aplicación o devolucion, muestra mensaje de error.
//HPP_200917_COB     : No se estaba considerando devoluciones anuladas
//HPP_201115_COB     : Se adiciona el indicador si es una cuota diferida, no se estaba contemplado estos casos para recrear el CRE302
//                     se adiciona la condición que no sea diferido para verificar si es pago adelantado.
//HPP_201116_COB     : Se hacen alguna modificacione como no se mostraba un panel completo, se refresca el grid para el pintado del footer
//HPP_200940_COB     : existia un error en el orden de las cuotas
//HPP_201007_COB     : se pone archivo ini para direccionar la ruta de los temporales de los reportes
//HPC_200942_COB     : Al monto exceso se le estaba restando lo aplicado y debe quedar tal y como está el exceso (Memorándum 918-2009-DM-COB )
//HPC_201129_COB     : Se adiciona en el insert  los campos de amortización, interés, flat, ya que solo se podrá devolver todo lo pagado y debe ir con su distribución
//HPP_201130_COB     : Se realiza el pase a producción a partir del HPC_201130_COB
//HPC_201201_COB     : 05/01/2012 Se modifica para que tambien tome las devolciónes de las pagos de cuotas que no sean excesos que se han aprobado. Tambien se adiciona unas condiciones mas en algunos Where.
//DPP_201201_COB     : Se realiza el pase a producción a partir del pase HPC_201201_COB
//HPC_201215_COB     : 01/06/2012 Se corrige problema cuando se revierte el pago de una devolucion
//                   : 21/06/2012 Debido a la implementación del Fondo de Desgravamen se
//                     adiciona la columna de desgravamen "MONCOBDESGRAV"
//DPP_201212_COB     : Pase a producción a partir del pase HPC_201217
//HPC_201607_COB     : Graba datos adicionales del Extorno de Creditos
//HPC_201611_COB     : Modificar la Fecha del Asiento
//HPC_201735_COB     : Mejoras en el proceso de Aprobación de Devoluciones en efectivo
//HPC_201816_COB     : Se mantiene la distribucion actual en una devolución de un pago en una cuota con mas de un pago
//HPC_201020_COB     : Se modificó l aposición del panel en el DFM
//COB_201822_HPC     : Se añade forma de pago de la devoluciones
Unit COB943;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, StdCtrls, DB, DBClient,
   ExtCtrls, Mask, Buttons, AppEvnts, ppCtrls, ppPrnabl, ppClass, ppBands,
   ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppVar,
   fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, wwdblook, Wwdbdlg,
   // Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   ppStrtch, ppMemo, ppSubRpt, ppParameter, ppEndUsr, wwdbedit,
   wwclient, jpeg;
   // Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos

Type
   TfExtorPrest = Class(TForm)
      grbDatTransfiere: TGroupBox;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      TabSheet2: TTabSheet;
      dbgNotaAbono: TwwDBGrid;
      dbgCuotasPag: TwwDBGrid;
      GroupBox1: TGroupBox;
      CDSNABONO: TClientDataSet;
      DSNABONO: TDataSource;
      CDSCTASPAG: TClientDataSet;
      DSCTASPAG: TDataSource;
      Label1: TLabel;
      Panel1: TPanel;
      Label2: TLabel;
      Panel2: TPanel;
      Label3: TLabel;
      Label4: TLabel;
      Panel4: TPanel;
      edtNotaAbono: TEdit;
      edtPrestamo: TEdit;
      edtMtoAprobado: TEdit;
      Panel3: TPanel;
      edtMtoNtoAbono: TEdit;
      edtmsg: TMemo;
      pnlmsgExtorno: TPanel;
      edtmsgExtorno: TEdit;
      Shape4: TShape;
      BitSalir: TBitBtn;
      btnAceptaMsgExtorno: TButton;
      Label8: TLabel;
      Button1: TButton;
      CDSDEVOLUCIONES: TClientDataSet;
      DSDEVOLUCIONES: TDataSource;
      TabSheet3: TTabSheet;
      dbgDevoluciones: TwwDBGrid;
      ppRDevol: TppReport;
      ppDBPipeline1: TppDBPipeline;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      ppLabel1: TppLabel;
      ppLine1: TppLine;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLine2: TppLine;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLine3: TppLine;
      pplCodMod: TppLabel;
      pplAsoapenom: TppLabel;
      ppLabel9: TppLabel;
      pplTipAso: TppLabel;
      pplDesAso: TppLabel;
      pplCodLugP: TppLabel;
      pplDesLugp: TppLabel;
      pplCodUse: TppLabel;
      ppLDesUse: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppSystemVariable2: TppSystemVariable;
      ppLabel14: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLabel16: TppLabel;
      ppDBCalc2: TppDBCalc;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppDBText4: TppDBText;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppGroupFooterBand2: TppGroupFooterBand;
      pplNotaAbono: TppLabel;
      ppLabel15: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppDBText9: TppDBText;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppGroupFooterBand3: TppGroupFooterBand;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLUsuario: TppLabel;
      ppLFecha: TppLabel;
      fcSBTodos: TfcShapeBtn;
      fcSBProcesaMoDev: TfcShapeBtn;
      BitExtPrestamo: TBitBtn;
      pnlOtrosPrestamos: TPanel;
      GroupBox2: TGroupBox;
      GroupBox3: TGroupBox;
      DBGPrestamos: TwwDBGrid;
      DBGCuotas: TwwDBGrid;
      fcSBTodos2: TfcShapeBtn;
      GroupBox4: TGroupBox;
      lblmsg1: TLabel;
      edtTotal1: TEdit;
      FCSBRegresa1: TfcShapeBtn;
      GroupBox5: TGroupBox;
      Label5: TLabel;
      edtCodMod: TEdit;
      Label6: TLabel;
      edtNombres: TEdit;
      pnlAplica: TPanel;
      GroupBox6: TGroupBox;
      EdtMonApl: TEdit;
      Label14: TLabel;
      EdtMonCob: TEdit;
      mObsPag: TMemo;
      Shape2: TShape;
      Label16: TLabel;
      Label17: TLabel;
      GroupBox7: TGroupBox;
      Label10: TLabel;
      EdtDesForPago: TEdit;
      Shape1: TShape;
      Label11: TLabel;
      Label13: TLabel;
      DtpFecReg: TDateTimePicker;
      Label7: TLabel;
      Label12: TLabel;
      DtpFecPag: TwwDBDateTimePicker;
      Label9: TLabel;
      EdtMonPag: TEdit;
      Label15: TLabel;
      EdtDocPag: TEdit;
      edtForPag: TEdit;
      FCSBRegesa2: TfcShapeBtn;
      BitGrabar: TBitBtn;
      rdgAplDev: TRadioGroup;
      fsbProcesa: TfcShapeBtn;
      GroupBox8: TGroupBox;
      Label18: TLabel;
      edtImporteAplicar: TEdit;
      GroupBox9: TGroupBox;
      GroupBox10: TGroupBox;
      lblImpAprDev: TLabel;
      lblImpAprApl: TLabel;
      pnlDevolucion: TPanel;
      Shape3: TShape;
      GroupBox12: TGroupBox;
      Label19: TLabel;
      Label20: TLabel;
      Label22: TLabel;
      DtpFecDev: TDateTimePicker;
      EdtNroDev: TEdit;
      Panel6: TPanel;
      lblMonDev: TLabel;
      grpDetDev: TGroupBox;
      dtgDevuelvo: TwwDBGrid;
      GroupBox13: TGroupBox;
      BitBtn3: TBitBtn;
      BitGrabar2: TBitBtn;
      BitPrint: TBitBtn;
      Label24: TLabel;
      CDSDEVUELVO: TClientDataSet;
      DSDEVUELVO: TDataSource;
      mObservacion: TMemo;
      Label23: TLabel;
      GroupBox11: TGroupBox;
      lblImpMarPro: TLabel;
      ppRepDevol: TppReport;
      Shape5: TShape;
      Label25: TLabel;
      GroupBox14: TGroupBox;
      chkEstornaPrestamo: TCheckBox;
      grbTipoDesembolso: TGroupBox;
      Label21: TLabel;
      DBLkuCTipDes: TwwDBLookupCombo;
      EdtTipDes: TEdit;
      lblCtaAhorros: TLabel;
      EdtCtaAhorros: TEdit;
      EdtSitCta: TEdit;
      lblAgencia: TLabel;
      DBLkCDAgencias: TwwDBLookupComboDlg;
      EdtCodAgen: TEdit;
      EdtDepGir: TEdit;
      BitBtn2: TBitBtn;
      rdgImprime: TRadioGroup;
      BitBtn1: TBitBtn;
      CDSAPLICADOS: TClientDataSet;
      DSAPLICADOS: TDataSource;
      ppDBPi2: TppDBPipeline;
      ppParameterList1: TppParameterList;
      chkConInteres: TCheckBox;
      grpPagar: TGroupBox;
      edtOfDesId: TEdit;
      edtOfDesNom: TEdit;
      ppDesigner1: TppDesigner;
      ppHeaderBand2: TppHeaderBand;
      lblRotPag: TppLabel;
      ppLabel27: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppLblTitulo: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      xxx: TppLabel;
      ppp: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLabel45: TppLabel;
      ppLblNomGen: TppLabel;
      ppLblCodMod: TppLabel;
      ppLblFecDoc: TppLabel;
      ppLblDpto: TppLabel;
      ppLblCodPag: TppLabel;
      ppLblUproc: TppLabel;
      ppLine6: TppLine;
      ppLine7: TppLine;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLblDesem: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      PPLblDni: TppLabel;
      lblPagEn: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppMeses: TppMemo;
      ppSummaryBand2: TppSummaryBand;
      ppLTotal: TppLabel;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLblMonDev: TppLabel;
      ppLblUsuario: TppLabel;
      ppLine10: TppLine;
      ppLine11: TppLine;
      ppLabel51: TppLabel;
      //Inicio HPC_201735_COB: objeto eliminado
      //ppLine12: TppLine;
      //Fin HPC_201735_COB  
      ppLabel52: TppLabel;
      pplFirmaAso: TppLabel;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppLabel50: TppLabel;
      ppLine14: TppLine;
      ppColumnHeaderBand1: TppColumnHeaderBand;
      ppDetailBand3: TppDetailBand;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppdbCREMTOCOBNEW: TppDBText;
      ppDBText13: TppDBText;
      ppColumnFooterBand1: TppColumnFooterBand;
      ppSubReport2: TppSubReport;
      ppChildReport2: TppChildReport;
      ppTitleBand2: TppTitleBand;
      ppLabel53: TppLabel;
      ppVCREMTOCOBNEW: TppVariable;
      ppLine13: TppLine;
      ppLine15: TppLine;
      ppDetailBand4: TppDetailBand;
   // Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
    pnlExt2: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    dbeUsuario: TwwDBEdit;
    dbePeriodo: TwwDBEdit;
    dbeTipCre: TwwDBEdit;
    dtpFecha: TwwDBDateTimePicker;
    dbeMtoGir: TwwDBEdit;
    pnlExt1: TPanel;
    Label35: TLabel;
    rgTipDev: TRadioGroup;
    pnlExt3: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    dblcCC: TwwDBLookupCombo;
    dbeNumOpe: TwwDBEdit;
    dtpFecOpe: TwwDBDateTimePicker;
    dbeDeposito: TwwDBEdit;
    bbtnImp: TBitBtn;
    ppr1: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDBText12: TppDBText;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppDBText27: TppDBText;
    ppLabel83: TppLabel;
    ppDBText28: TppDBText;
    ppLabel84: TppLabel;
    ppDBText29: TppDBText;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDBText30: TppDBText;
    ppLabel88: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel89: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBText41: TppDBText;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppSystemVariable9: TppSystemVariable;
    ppDBMemo1: TppDBMemo;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel98: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel99: TppLabel;
    ppParameterList2: TppParameterList;
    ppdb1: TppDBPipeline;
    ppd1: TppDesigner;
    ppdb2: TppDBPipeline;
    BitBtn4: TBitBtn;
    Label36: TLabel;
    ppImage3: TppImage;
    ppDBText45: TppDBText;
   // Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
    //Inicio HPC_201735_COB: Nuevos objetos para el manejo del formato: Nota de desembolso
    ppImage5: TppImage;
    ppLinNivApr03Ger: TppLine;
    ppLblNivApr03Ger: TppLabel;
    ppLblMotDes: TppLabel;
    ppLineFirmaSectorista: TppLine;
    ppLblFirmaSectorista1: TppLabel;
    ppLblFirmaSectorista2: TppLabel;
    ppLineFirmaSubjefatura: TppLine;
    ppLblFirmaSubjefatura1: TppLabel;
    ppLblFirmaSubjefatura2: TppLabel;
    ppLineFirmaJefatura: TppLine;
    ppLblFirmaJefatura1: TppLabel;
    ppLblFirmaJefatura2: TppLabel;
    //Fin HPC_201735_COB
      Procedure FormActivate(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure dbgCuotasPagDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure BitAnulaPreClick(Sender: TObject);
      Procedure btnAceptaMsgExtornoClick(Sender: TObject);
      Function ExtPreNoAbo(): boolean;
      Function ExCPagEfec(): boolean;
      Procedure CargaDatos;
      Procedure CargaDatos2;
      Function VerifExisteData(): integer;
      Procedure Button1Click(Sender: TObject);
      Function GnrCDev(): String;
      Procedure ActCre302NABN;
      Procedure ActCre302CTAPAG;
      Function VerifPagos(): boolean;
      Function GnrCorrApl(): String;
      Procedure dbgDevolucionesDblClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure ppDBText4Print(Sender: TObject);
      Procedure fcSBTodosClick(Sender: TObject);
      Procedure fcSBProcesaMoDevClick(Sender: TObject);
      Procedure fsbProcesaClick(Sender: TObject);
      Procedure DBGPrestamosRowChanged(Sender: TObject);
      Procedure fcSBTodos2Click(Sender: TObject);
      Procedure FCSBRegresa1Click(Sender: TObject);
      Procedure DBGCuotasDblClick(Sender: TObject);
      Procedure FCSBRegesa2Click(Sender: TObject);
      Procedure BitGrabarClick(Sender: TObject);
      Procedure rdgAplDevClick(Sender: TObject);
      Function verifcuodev(xasoid, xcredid, xnroope, xfoperac, xtransintid: String; xcrecuota: integer; ximprev: currency): currency;
      Procedure BitBtn3Click(Sender: TObject);
      Procedure DBLkuCTipDesChange(Sender: TObject);
      Procedure DBLkuCTipDesKeyPress(Sender: TObject; Var Key: Char);
      Procedure DBLkCDAgenciasChange(Sender: TObject);
      Procedure BitGrabar2Click(Sender: TObject);
      Function VrfGrabaDev(xFrmDes, xSitCta: String): Char;
      Procedure GrabaDev(xAsoId, xNroDev, xFrmDes: String);
      Procedure BitPrintClick(Sender: TObject);
      Function verificaDevTotal(): currency;
      Procedure BitExtPrestamoClick(Sender: TObject);
      Procedure MarcDevPro_en_PRE_APR_DEV();
      Procedure SoloDesmarcoCDSDEVOLUCIONES();
      Procedure Act_Saldo_PRE_APR();
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Function CresalPag(xasoid, xcredid, xFecCalculo, xCrecuota, xFrmPag: String): currency;
      Function VerfMarca(): currency; 
      Function CreImpPag(xasoid, xcredid, xcrecuota: String): currency;
      Procedure CaptDestinoAplicado(xasoid, xcredid, xnroope, xcrecuota: String);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure actFooter();
      Procedure Puntero();
      Procedure ImprDevApli();
      Procedure ppdbCREMTOCOBNEWPrint(Sender: TObject);
      Procedure ppVCREMTOCOBNEWPrint(Sender: TObject);
      Procedure PageControl1Change(Sender: TObject);
      Procedure chkConInteresClick(Sender: TObject);
      Procedure DBGCuotasDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);

   // Inicio  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
    procedure bbtnImpClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
   // Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   Private
    { Private declarations }

   Public
      xAsoid, xCredid, xCrecuota, xNroNabo, xForpagid, xAgeBan, xobs, xanodev, xcordev, xOfDesPag: String;
      RCREFPAG: TDATE;
      ZAplicacion, ZaplicacionRep, xSaldoP: currency;
      xcRep: Integer;
      xPeriodoMasAnt: String;
      //Inicio HPC_201735_COB: Mejoras en el proceso de Aprobación de Devoluciones en efectivo
      xNivApr : String;
      xMotDev : String;
      xUsuApr : String;
      xUsuAprSub : String;
      xUsuAprJef : String;
      //Fin HPC_201735_COB
    { Public declarations }
      // Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
      cLote      : String;
      xOrigen    : String;
      xPeriodo   : String;
      xNoComp    : String;
      xTCambio   : Double;
      cdsTipCre : TwwClientDataset ;
      Procedure GrabaDatosAdicionalesExtorno;
      Procedure CargaDatosDeExtorno;
      Function  TipDes(xTipPre: String): String;
      procedure AsientoContable;
      procedure ContabilizaCreditosOtorgadosInicializa;
      procedure GeneraDataCredito;
// Inicio HPC_201611_COB     : Modificar la Fecha del Asiento
      procedure GeneraCNT300( sGlosa : String );
// Fin HPC_201611_COB     : Modificar la Fecha del Asiento
      procedure GeneraDataDesembolso;
      function  ComprobanteInicial( cOrigen : String ) : Integer;
      // Fin   HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   End;

Var
   fExtorPrest: TfExtorPrest;

Implementation

Uses COB901, COBDM1;

{$R *.dfm}

Procedure TfExtorPrest.FormActivate(Sender: TObject);
Var
   XSQL: String;
Begin

//PONE INVISIBLE LA PARTE DE DEVOLUCION Y BLANQUEA EL CDS
   TabSheet3.TabVisible := False;
   CDSDEVOLUCIONES.EmptyDataSet;

//PRESTAMO CON CUOTAS PARA DEVOLVER
   XSQL := 'SELECT NVL(A.IMPDEV,0) IMPDEV2,NVL(A.IMPAPL,0) IMPAPL2, '
      + '  A.ASOID, A.CREDID, A.TIPCREID, A.ASOAPENOM, A.ASOCODMOD, A.IMPREV, A.IMPDEV, A.IMPAPL, '
      + '  A.FLAEXTPRE, A.USUCRE, A.FECCRE, A.HORCRE, A.FLAAPR, A.USUAPR, A.FECAPR, A.HORAPR, '
      + '  A.MOTDES, A.MOTDEV, A.FLADEVEFE, A.USUDEV, A.FECDEV, A.HORDEV, A.ANODEV, A.CORDEV, '
      + '  A.FLAANU, A.FECANU, A.HORANU, A.USUANU, A.FORPAGID, A.AGEBAN, A.DEVEFE, A.APLEFE, '
      + '  A.FLAIMPREV, A.OFDESPAG '
      //Inicio HPC_201735_COB: Mejoras en el proceso de Aprobación de Devoluciones en efectivo
      + '  ,A.NIVAPR, A.USUAPRSUB, A.USUAPRJEF, NVL((Select b.descripcion From COB_REF_DEVOLUCIONES b Where b.codtipref=''MOT'' and b.codref= A.CODMOTDEV), A.MOTDEV) DESCMOTDEV '
      //Fin HPC_201735_COB
      + 'FROM PRE_APR_DEV A '
      + 'WHERE ASOID=' + quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)
      + '  AND CREDID=' + quotedstr(DM1.cdsSolicitud.FieldByName('CREDID').AsString)
      + '  AND NVL(FLAAPR,''X'')=''S'' '
      + '  AND NVL(FLADEVEFE,''X'')<>''S'' '
      + '  AND NVL(FLAANU,''X'')<>''S'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

   //Inicio HPC_201735_COB: Mejoras en el proceso de Aprobación de Devoluciones en efectivo
   xNivApr :=  TRIM(DM1.cdsQry.FieldByName('NIVAPR').AsString);
   xMotDev :=  TRIM(DM1.cdsQry.FieldByName('DESCMOTDEV').AsString);
   xUsuApr :=  TRIM(DM1.cdsQry.FieldByName('USUAPR').AsString);
   xUsuAprSub :=  TRIM(DM1.cdsQry.FieldByName('USUAPRSUB').AsString);
   xUsuAprJef :=  TRIM(DM1.cdsQry.FieldByName('USUAPRJEF').AsString);
   //Fin HPC_201735_COB

   lblImpAprDev.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.FieldByName('IMPDEV2').AsFloat);
   lblImpAprApl.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.FieldByName('IMPAPL2').AsFloat);
   xAgeBan := TRIM(DM1.cdsQry.FieldByName('AGEBAN').AsString);
   xForpagid := TRIM(DM1.cdsQry.FieldByName('FORPAGID').AsString);
   xobs := TRIM(DM1.cdsQry.FieldByName('MOTDEV').AsString);
   xOfDesPag := TRIM(DM1.cdsQry.FieldByName('OFDESPAG').AsString);
   If DM1.cdsQry.FieldByName('FLAEXTPRE').AsString = '1' Then
      chkEstornaPrestamo.Checked := True
   Else
      chkEstornaPrestamo.Checked := False;

   If (DM1.cdsQry.FieldByName('IMPDEV2').AsFloat > 0) And (DM1.cdsQry.FieldByName('IMPAPL2').AsFloat = 0) Then
   Begin
      rdgAplDev.ItemIndex := 1;
      rdgAplDev.Enabled := False;
   End
   Else
      If (DM1.cdsQry.FieldByName('IMPAPL2').AsFloat > 0) And (DM1.cdsQry.FieldByName('IMPDEV2').AsFloat = 0) Then
      Begin
         rdgAplDev.ItemIndex := 0;
         rdgAplDev.Enabled := False;
      End
      Else
      Begin
         rdgAplDev.ItemIndex := 0;
         rdgAplDev.Enabled := True;
      End;

   If DM1.cdsQry.FieldByName('FLAIMPREV').AsString <> 'S' Then
   //CARGA DATOS A LOS CDS DESDES LA PRIMERA PARTE
   Begin
      If DM1.cdsQry.Active Then DM1.cdsQry.Close;
      CargaDatos
   End
   Else
  // CARGA DATOS A LOS CDS DESDE LA SEGUNDA PARTE (YA SE EJECUTO LA REVESION)
   Begin
      If DM1.cdsQry.Active Then DM1.cdsQry.Close;
      CargaDatos2;
   End;

End;

Procedure TfExtorPrest.BitSalirClick(Sender: TObject);
Begin
   CDSDEVOLUCIONES.EmptyDataSet;
   ZAplicacion := 0;
   dm1.cdsQry.Close;
   dm1.cdsQry.IndexFieldNames := '';
   dm1.cdsQry2.Close;
   dm1.cdsQry2.IndexFieldNames := '';
   dm1.cdsQry3.Close;
   dm1.cdsQry3.IndexFieldNames := '';
   fExtorPrest.Close;
End;

Procedure TfExtorPrest.dbgCuotasPagDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If CDSCTASPAG.FieldByName('CREFLAGDEV').AsString = 'D' Then
   Begin
      dbgCuotasPag.Canvas.Font.Color := clRed;
      dbgCuotasPag.DefaultDrawDataCell(Rect, Field, State);
   End;

   If (CDSCTASPAG.FieldByName('CREMTOEXC').AsFloat > 0) And (CDSCTASPAG.FieldByName('CREFLAGDEV').AsString <> 'D') Then
   Begin
      dbgCuotasPag.Canvas.Font.Color := $00FF8000;
      dbgCuotasPag.DefaultDrawDataCell(Rect, Field, State);
   End;

End;

Procedure TfExtorPrest.BitAnulaPreClick(Sender: TObject);
Var
   xsql: String;
   xcuenta: integer;
Begin

//VERIFICA SI AUN TIENE CUOTAS PAGADAS POR DEVOLVER
   XSQL := 'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES, '
      + '       NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
      + '       NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC,'
      + '       TRANSINTID,NUMDEV '
      //Inicio: DPP_201212_COB
      //Adicionando el campo de desgravamen
      + ',      NVL(MONCOBDESGRAV,0) MONCOBDESGRAV '
      //Fin: DPP_201212_COB
      + 'FROM CRE310 A '
      + 'WHERE ASOID=''' + xASOID + ''' AND credid =''' + xCREDID + ''''
      + ' AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' '
      + ' AND NOT EXISTS (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV,DEV '
      + '                 FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV,DEV '
      + '                       FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, '
      + '                                MAX(CREMTODEV) DEV '
      + '                             FROM CRE310 '
      + '                             WHERE ASOID=''' + xASOID + ''' '
      + '                               and CREDID =''' + xCREDID + ''' '





      + '                               and CREESTID <> ''13'' '

      + '                             GROUP BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB,NUMDEV) '
      + '                       WHERE DEV>0) B '
      + '                 WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
      + '                   AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.NUMDEV=B.NUMDEV ) '
      + 'ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsql);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      ShowMessage('NO SE PUEDE EXTORNAR EL PRESTAMO, EXISTE CUOTAS PAGADAS POR DEVOLVER');
      EXIT;
   End;

//VERIFICA SI EXSITE DATOS QUE CUMPLAN LAS CONDICIONES PARA PROCESAR
   If VerifExisteData <= 0 Then
   Begin
      ShowMessage('NO EXISTE INFORMACION PROCESABLE');
      EXIT;
   End;

   grbDatTransfiere.Enabled := False;
//VISIBLE A PANTALLA DE COMENTARIO DE EXTORNO PARA PROCEDER AL EXTORNO TOTAL DEL PRESTAMO
   pnlmsgExtorno.Visible := True;
   edtmsgExtorno.SetFocus;

End;

Procedure TfExtorPrest.btnAceptaMsgExtornoClick(Sender: TObject);
Var
   XSQL: String;
   xflag: boolean;
Begin

   xflag := False;

   // Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   if TipDes(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)='P' Then
   begin
      If Length(Trim(dblcCC.Text))=0 Then
      Begin
         MessageDlg(' Debe Ingresar El Origen de Recuperación ', mtError,[mbOk],0);
         Exit;
      End;
      If Length(Trim(dbeNumOpe.Text))=0 Then
      Begin
         MessageDlg(' Debe Ingresar Número de Operación ', mtError,[mbOk],0);
         Exit;
      End;
      If dtpFecOpe.Date=0 Then
      Begin
         MessageDlg(' Debe Ingresar Fecha de Depósito ', mtError,[mbOk],0);
         Exit;
      End;
      If DM1.cdsQry26.fieldbyname('IMPDEP').AsCurrency  <= 0 Then
      Begin
         MessageDlg(' Debe Ingresar importe Depositado correctamente ', mtError,[mbOk],0);
         Exit;
      End;
   end;
   // Fin   HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


   If MessageDlg('ESTA SEGURO DE REALIZAR EL EXTORNO TOTAL DEL PRESTAMO ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
   // VERIFICA  SI  EL PRESTAMO EN CRE301 YA FUE EXTORNADO PARA NO HACERLO NUEVAMENTE
      XSQL := 'SELECT TIPCREID, ASOID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, USEID, CREFOTORG, CREFECINI, '
         + '       CREMTOSOL, CREMTOOTOR, CREMTOGIR, CREINTERES, CREDFLAT, CRECUOTA, CRENUMCUO, '
         + '       CRELUGGIRO, BANCOID, CRENUMCTA, CREMTOPAG, CRESDOACT, CREPERGRA, CRECUOPAG, '
         + '       CRECUOENV, CREPERIODI, CREMTOTAL, CRECAPPGO, CRENEWID, CRESALDOT, USUARIO, '
         + '       FREG, HREG, OFDESID, CALIFICAID, APRUEBAID, CREESTADO, TMONID, CUOTAINI, '
         + '       UPAGOID, UPROID, DPTOID, LISTAID, CREDID, CRECOM, CRESEG, CREPOR, CREGADM, '
         + '       CRECOMP, CREMORA, FORPAGOID, CRETCALID, TMONABR, CRETCALABR, LISTAABR, '
         + '       FORPAGOABR, CIAID, CREFRECL, CREESTID, CREANOMES, NROPAGARE, NROAUTDES, '
         + '       TIPCREDES, GARAPENOM, GARASOID, ASOCODAUX, NRONABO, NUMREF, FECREF, TIPOREF, '
         + '       NROFICIO, CIUDID, ARCHIVOFTP, AGENBANCOID, DPTOGIRO, USEIDGAR, TIPDESEID, BCOGIRO, '
         + '       CREMTONABO, CREFFINPAG, CREFINIPAG, CREBLOQFEC, USUBLOQ, CREBLOQ, FLGCAJA, FECHACAJA, '
         + '       CRENUMCOMP, CCOSID, CUENTAH, CUENTAD, CREGENCOB, FLGAUTOMA, REFANOMES, NROREFINAN, '
         + '       CAJAUSU, HORACAJA, ASOTIPID, ASODNI, ANULACAJA, MEN_ANU, MOT_PRE, NUMREFI, FLGREFI, '
         + '       CREFCAN, FLGINCONSIS, PERCONTA, C_ABN, CNTANOMM, FEC_RCP, CRECAPLIQ, CREFDES, CREMENOBS, '
         + '       TIPOCONT, CNTFLAG, CREMTODEP, CREFANUL, USERANUL, CRESUMCUO, CREMOTEXT, NROFICIO_BCK, '
         + '       MIGRADO, USUAUTCRE, FECAUTCRE, ESTAUTCRE, COMAUTCRE, USUANUSUP, FECANUSUP, MOTANUSUP, '
         + '       ESTANUSUP, DOCID, CCSERIE, CCNODOC, CIASER, CREMONINS, IMPCON, DNIRUC, FECIMPCON, CODARCHIVO, '
         + '       CREMTOAPO, AUTDESCRE, FECAUTDES, USUAUTDES, IMPCARAUT, NROCARAUT, DIASPROC, DESCENV '
         + 'FROM CRE301 '
         + 'WHERE ASOID=''' + trim(xASOID) + ''''
         + ' AND CREDID=''' + TRIM(xCredid) + ''' AND CREESTID<>''04'' ';

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(XSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount = 1 Then
      Begin
         If Length(trim(edtmsgExtorno.Text)) = 0 Then
         Begin
            ShowMessage('DEBE INGRESAR COMENTARIO DEL EXTORNO');
            edtmsgExtorno.SetFocus;
            exit;
         End
         Else
         Begin
            //EXTORNA PRESTAMO OTORGADO Y NOTAS DE ABONO SI FUESE EL CASO
            xflag := ExtPreNoAbo;

            // Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
            If xflag Then //Si xflag es falso significa que no genero el correlativo de la Devolucin
               GrabaDatosAdicionalesExtorno;
            // Fin   HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
         End;
      End;

      If xflag Then //Si xflag es falso significa que no genero el correlativo de la Devolucin
      Begin
         // Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
         pnlExt1.Enabled:=False;
         pnlExt2.Enabled:=False;
         pnlExt3.Enabled:=False;
         BitGrabar.Enabled:=False;
         bbtnImp.Enabled:=True;
         //pnlmsgExtorno.Visible := False;
         //grbDatTransfiere.Enabled := True;

         CargaDatos;
         MarcDevPro_en_PRE_APR_DEV;
         btnAceptaMsgExtorno.Enabled := False;
         BitExtPrestamo.Enabled := False;
         BitSalir.Enabled := True;
         ShowMessage('PROCESO CONCLUIDO');
         // Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
      End;

   End;

End;

// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
Procedure TfExtorPrest.GrabaDatosAdicionalesExtorno;
var
  sTipDev, xSQL : String;
Begin
  if rgTipDev.ItemIndex=0 then
     sTipDev:='BAN'
  else
     sTipDev:='PER';

  xSQL:='INSERT INTO CRE_EXT_CRE( CODOPE, ASOID, CREDID, TIPCREID, MONOTO, MONGIR, '
       +  'PERCON, TIPDESEID, MOTEXT, USUOPE, FECOPE, HOROPE, CCBCOID, NUMOPEBAN, FECDEP, TIPDEV ) '
       +'SELECT LPAD( TO_NUMBER( NVL(MAX(CODOPE),''1'') )+1,10,''0''), '''+xAsoId+''', '
       +   ''''+ xCredid +''', '
       +   ''''+ DM1.cdsQry.FieldByName('TIPCREID').AsString+''', '
       +   DM1.cdsQry.FieldByName('CREMTOOTOR').AsString   +', '
       +   DM1.cdsQry.FieldByName('CREMTOGIR').AsString    +', '
       +   ''''+dbePeriodo.Text+''', '''+DM1.cdsQry.FieldByName('TIPDESEID').AsString+''', '
       +   ''''+edtmsgExtorno.Text+''', '''+DM1.wUsuario+''', TO_DATE(sysdate), sysdate, '
       +   ''''+dblcCC.Text+''', '''+dbeNumOpe.Text+''', '''+dtpFecOpe.Text+''', '
       +   ''''+sTipDev+''' '
       +   'FROM CRE_EXT_CRE Where 1 = 1';

  DM1.DCOM1.AppServer.EjecutaSql(xSQL);

  AsientoContable;

End;
// Fin   HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


//EXTORNA PRESTAMO OTORGADO Y NOTA DE ABONO

Function TfExtorPrest.ExtPreNoAbo: boolean;
Var
   XSQL: String;
   xNroDev: String;
Begin

//VERIFICO EL CORRELATIVO DE LA DEVOLUCION SI TIENEN NOTA DE ABONO PARA DEVOLVER
 


   Result := True;

   If CDSNABONO.RecordCount > 0 Then
   Begin
      xNroDev := GnrCDev;
      If Length(Trim(xNroDev)) = 0 Then
      Begin
         Screen.Cursor := crDefault;
         MessageDlg(' <<<  A T E N C I O N  >>>   NO SE GENERO CORRELATIVO DEVOLUCION COMUNIQUESE CON SISTEMAS !!!!!  ', mtError, [mbOk], 0);
         Result := False;
         Exit;
      End;
   End;

       //EXTORNA EL PRESTAMO OTORGADO
   XSQL := ' UPDATE CRE301 SET CREESTID=''04'',CREESTADO=''EXTORNADO'' WHERE  ASOID=''' + TRIM(xAsoid) + '''' +
      ' AND CREDID=''' + TRIM(xCredid) + '''';

   DM1.DCOM1.AppServer.EjecutaSql(XSQL);

       //INSERTA EL PRESTAMO EXTORNADO A LA TABLA DE PRESTAMOS EXTORNADOS PARA SU CONTABILIZACION
   XSQL := 'SELECT   TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFECINI,NVL(CREMTOSOL,0) CREMTOSOL,NVL(CREMTOOTOR,0)CREMTOOTOR,NVL(CREMTOGIR,0)CREMTOGIR, ' +
      'NVL(CREINTERES,0)CREINTERES,NVL(CREDFLAT,0)CREDFLAT,CRECUOTA,CRENUMCUO,CRELUGGIRO,BANCOID,CRENUMCTA,NVL(CREMTOPAG,0)CREMTOPAG,NVL(CRESDOACT,0)CRESDOACT,USUARIO,FREG,' +
      'HREG,OFDESID,CALIFICAID,APRUEBAID,CREESTADO,TMONID,UPAGOID,UPROID,DPTOID,CREDID,FORPAGOID,FORPAGOABR,CIAID,CREESTID,CREANOMES,TIPCREDES,ASOCODAUX,NRONABO,NUMREF,FECREF,TIPOREF,NROFICIO,ARCHIVOFTP,' +
      'NVL(CREMTONABO,0) CREMTONABO, CREBLOQFEC,USUBLOQ,CREBLOQ,REFANOMES,NROREFINAN,CAJAUSU,HORACAJA,ASOTIPID,ASODNI,ANULACAJA,MEN_ANU,NUMREFI,FLGREFI,CREFCAN,PERCONTA,TIPOCONT,TO_DATE(CREFANUL) CREFANUL,USERANUL ' +
      ' FROM CRE301 WHERE ASOID=''' + TRIM(xAsoid) + ''' AND CREDID=''' + TRIM(xCredid) + '''';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(XSQL);
   DM1.cdsQry3.Open;

   XSQL := 'INSERT INTO COB913(TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFECINI,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,' +
      'CRELUGGIRO,BANCOID,CRENUMCTA,CREMTOPAG,CRESDOACT,USUARIO,FREG,HREG,OFDESID,CALIFICAID,APRUEBAID,CREESTADO,TMONID,UPAGOID,UPROID,DPTOID,CREDID,FORPAGOID,' +
      'FORPAGOABR,CIAID,CREESTID,CREANOMES,TIPCREDES,ASOCODAUX,NRONABO,NUMREF,FECREF,TIPOREF,NROFICIO,ARCHIVOFTP,CREMTONABO,CREBLOQFEC,USUBLOQ,' +
      'CREBLOQ,REFANOMES,NROREFINAN,CAJAUSU,HORACAJA,ASOTIPID,ASODNI,ANULACAJA,MEN_ANU,NUMREFI,FLGREFI,CREFCAN,PERCONTA,CNTANOMM,TIPOCONT,CNTFLAG,CREFANUL,USERANUL,' +
      'CREMOTEXT,USUEXT,FECEXT) ' +
      'VALUES(' + QuotedStr(DM1.cdsQry3.FieldByName('TIPCREID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOCODMOD').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOCODPAGO').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOAPENOM').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('USEID').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREFECINI').AsString) + ',' + DM1.cdsQry3.FieldByName('CREMTOSOL').AsString + ',' + DM1.cdsQry3.FieldByName('CREMTOOTOR').AsString +
      ',' + DM1.cdsQry3.FieldByName('CREMTOGIR').AsString + ',' + DM1.cdsQry3.FieldByName('CREINTERES').AsString + ',' + DM1.cdsQry3.FieldByName('CREDFLAT').AsString +
      ',' + DM1.cdsQry3.FieldByName('CRECUOTA').AsString + ',' + DM1.cdsQry3.FieldByName('CRENUMCUO').AsString + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CRELUGGIRO').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('BANCOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CRENUMCTA').AsString) + ',' + DM1.cdsQry3.FieldByName('CREMTOPAG').AsString +
      ',' + DM1.cdsQry3.FieldByName('CRESDOACT').AsString + ',' + QuotedStr(DM1.cdsQry3.FieldByName('USUARIO').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('FREG').AsString) +
      ',TO_DATE(' + QuotedStr(COPY(DM1.cdsQry3.FieldByName('HREG').AsString, 1, 19)) + ',''dd/mm/yyyy hh24:mi:ss''),' + QuotedStr(DM1.cdsQry3.FieldByName('OFDESID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CALIFICAID').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('APRUEBAID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREESTADO').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('TMONID').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('UPAGOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('DPTOID').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREDID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('FORPAGOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('FORPAGOABR').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('CIAID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREESTID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREANOMES').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('TIPCREDES').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOCODAUX').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NRONABO').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('NUMREF').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('FECREF').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('TIPOREF').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('NROFICIO').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ARCHIVOFTP').AsString) + ',' + DM1.cdsQry3.FieldByName('CREMTONABO').AsString +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREBLOQFEC').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('USUBLOQ').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREBLOQ').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('REFANOMES').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NROREFINAN').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CAJAUSU').AsString) +
      ',TO_DATE(' + QuotedStr(COPY(DM1.cdsQry3.FieldByName('HORACAJA').AsString, 1, 19)) + ',''dd/mm/yyyy hh24:mi:ss''),' + QuotedStr(DM1.cdsQry3.FieldByName('ASOTIPID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASODNI').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('ANULACAJA').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('MEN_ANU').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NUMREFI').AsString) +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('FLGREFI').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREFCAN').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('PERCONTA').AsString) +
      ',TO_CHAR(SYSDATE,''yyyymm''),' + QuotedStr(DM1.cdsQry3.FieldByName('TIPOCONT').AsString) + ', NULL' +
      ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREFANUL').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('USERANUL').AsString) + ',' + QuotedStr(TRIM(edtmsgExtorno.Text)) +
      ',' + QuotedStr(DM1.wUsuario) + ',sysdate)';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

       //PONGO COMO EXTORNADO TODAS LAS CUOTAS DEL CRONOGRAMA CRE302 QUE NO TENGAN PAGOS - (SOLO SI ES QUE EXTORNO TODO EL PRESTAMO)
   XSQL := 'UPDATE CRE302 SET ' +
      ' CREESTID=''04'', ' +
      ' CREESTADO=''EXTORNADO'' WHERE' +
      ' ASOID=''' + TRIM(xAsoid) + '''' +
      ' AND CREDID=''' + TRIM(xCredid) + '''' +
      ' AND NVL(CREMTOCOB,0)=0 ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

       //SI TIENE NOTA DE ABONO GENERA UNA DEVOLUCION Y UN REGISTRO DE EXTORNO
   If CDSNABONO.RecordCount > 0 Then
   Begin
      CDSNABONO.First;
      While Not CDSNABONO.Eof Do
      Begin

                  //ME PONGO EN EL PAGO PARA SACAR LOS DATOS PARA GENERAR EL REGISTRO DE DEVOLUCION
         DM1.cdsQry3.Close;
         XSQL := 'SELECT A.CIAID, A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.USEID, A.ASOCODPAGO, A.TIPCREID, '
            + '       A.CREDID, A.CRECUOTA, A.CREMONLOC, A.CREMONEXT, A.CREFPAG, A.CREAMORT, A.CREINTERES,'
            //Inicio: DPP_201212_COB
            //Adicionando el campo de desgavamen
            //+ '       A.CREFLAT, A.CREMTOCOB, A.TMONID, A.TCAMBIO, A.USUARIO, A.FREG, A.HREG, A.UPROID,'
            + '       A.CREFLAT, A.MONCOBDESGRAV, A.CREMTOCOB, A.TMONID, A.TCAMBIO, A.USUARIO, A.FREG, A.HREG, A.UPROID,'
            //Fin: DPP_201212_COB
            + '       A.DPTOID, A.UPAGOID, A.BANCOID, A.CCBCOID, A.ASOAPENOM, A.CIUDID, A.ARCHIVOFTP,'
            + '       A.CREOBS, A.CREANO, A.FORPAGOID, A.NROOPE, A.FOPERAC, A.NRONABO, A.AREAID, A.CREMES,'
            + '       A.CREMTODEV, A.FORPAGOABR, A.TRANSINTID, A.COBFDEV, A.COBFRECL, A.COBFNP,'
            + '       A.CREESTID, A.CREESTADO, A.CREMTOCUO, A.FLGEXC, A.FECEXC, A.CREDOCPAG, A.DEVID,'
            + '       A.FLGSSS, A.AGENBCOID, A.FORPAGID, A.FORPAGABR, A.DETRCOBID, A.USERCOBID, A.RCOBID,'
            + '       A.DOCID, A.FLGTA, A.NROREFINAN, A.CREFLAGDEV, A.FL_DISTRIB, A.CREESTANT,'
            + '       A.CREESTANTDES, A.NROOPETMP, A.FOPERACTMP, A.ASOSITID, A.FLAGVAR, A.FLAGVAR2,'
            + '       A.CNTANOMM, A.TIPOCONT, A.CREMTOEXC, A.FLAGVAR3, A.FLAGVAR4, A.FLGINCONSIS,'
            + '       A.CREAPLEXC, A.PERCONTA, A.TIPNABO, A.CNTFLAG, A.OFDESID, A.NUMDEV, A.CRECUOTAINI,'
            + '       A.CRECUOTAINI2, A.CRECUOTAINI3, '
            + '       NVL(A.TCAMBIO,0) TCAMB,NVL(A.CREMTOEXC,0) CREMTOEX,NVL(A.CREAPLEXC,0) CREAPLEX '
            + 'FROM CRE310 A '
            + 'WHERE ASOID=''' + TRIM(CDSNABONO.FieldByname('ASOID').AsString) + ''''
            + '  AND CREDID=''' + TRIM(CDSNABONO.FieldByname('CREDID').AsString) + ''''
            + '  AND CRECUOTA=''' + TRIM(CDSNABONO.FieldByname('CRECUOTA').AsString) + ''''
            + '  AND TO_CHAR(CREFPAG,''DD/MM/YYYY'')=''' + TRIM(CDSNABONO.FieldByname('CREFPAG').AsString) + ''''
            + '  AND CREESTID<>''13'' AND CREESTID<>''04'' AND CREESTID<>''99'' ';
         DM1.cdsQry3.DataRequest(XSQL);
         DM1.cdsQry3.Open;

                  //INSERTO UN REGISTRO EN EL CRE310 DE DEVOLUCION
         XSQL := 'INSERT INTO CRE310 (CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,CREDID,CRECUOTA,CREFPAG,TMONID,USUARIO,UPROID,DPTOID,' +
            'UPAGOID,ASOAPENOM,CIUDID,CREANO,CREMES,AREAID,CREMTODEV,CREMTOCOB,CREMTOCUO,TRANSINTID,FORPAGOABR,CREDOCPAG,NUMDEV,CREESTID,COBFNP,' +
            'CREESTADO,CREOBS,FORPAGID,FORPAGABR,CNTANOMM,TIPOCONT,FREG,HREG,NROOPE,FOPERAC,PERCONTA) VALUES (' +
            QuotedStr('02') + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('ASOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('ASOCODAUX').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('USEID').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('ASOCODPAGO').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('TIPCREID').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('CREDID').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('CRECUOTA').AsString) + ',' +
            QuotedStr(CDSNABONO.FieldByName('CREFPAG').AsString) + ',' +
            QuotedStr('N') + ',' +
            QuotedStr(DM1.wUsuario) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('DPTOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('UPAGOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('ASOAPENOM').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('CIUDID').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('CREANO').AsString) + ',' +
            QuotedStr(DM1.cdsQry3.FieldByName('CREMES').AsString) + ',' +
            QuotedStr('COB') + ',' +
            CDSNABONO.FieldByName('CREMTOCOB').AsString + ',' +
            CDSNABONO.FieldByName('CREMTOCOB').AsString + ',' +
            QuotedStr('0') + ',' +
            QuotedStr('DEV') + ',' +
            QuotedStr('DEV') + ',' +
            QuotedStr(xNroDev) + ',' +
            QuotedStr(xNroDev) + ',' +
            QuotedStr('99') + ',' +
            QuotedStr('R') + ',' +
            QuotedStr('DEVOLUCION') + ',' +
            QuotedStr(TRIM(xobs)) + ',' +
            QuotedStr('10') + ',' +
            QuotedStr('DEV') + ',TO_CHAR(SYSDATE,''yyyymm''),' +
            QuotedStr('DEV') + ',' +
            QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
            'TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),' +
            QuotedStr(CDSNABONO.FieldByName('NROOPE').AsString) + ',' +
            QuotedStr(CDSNABONO.FieldByName('FOPERAC').AsString) + ',' +
            'TO_CHAR(SYSDATE,''yyyymm''))';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                  //INSERTO EN EL COB901 COMO EXTORNADO
         //Inicio: DPP_201212_COB
         //Adicionando el campo de desgravamen
         //XSQL := 'INSERT INTO COB901(ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG,CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,TMONID,TCAMBIO,' +
         XSQL := 'INSERT INTO COB901(ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG,CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV ,CREMTOCOB,TMONID,TCAMBIO,' +
         //Fin: DPP_201212_COB
            'USUARIO,FREG,HREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,ARCHIVOFTP,CREOBS,CREANO,NROOPE,NRONABO,AREAID,CREMES,CREMTODEV,FORPAGOABR,' +
            'TRANSINTID,CREESTID,CREESTADO,CREMTOCUO,CREDOCPAG,AGENBCOID,FORPAGID,FORPAGABR,NROREFINAN,CREFLAGDEV,CREESTANT,CREESTANTDES,NROOPETMP,FOPERACTMP,' +
            'ASOSITID,CNTANOMM,TIPOCONT,CREMTOEXC,CREAPLEXC,PERCONTA,TIPNABO,CNTFLAG,CREMENANU,USRANULA,FECANULA )' +
            'VALUES (' + QuotedStr(DM1.cdsQry3.FieldByName('ASOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOCODMOD').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOCODAUX').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('USEID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('TIPCREID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREDID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CRECUOTA').AsString) + ' ' +
            //Inicio: DPP_201212_COB
            //Adicionando el campo de Desgravamen
            //',' + QuotedStr(DM1.cdsQry3.FieldByName('CREFPAG').AsString) + ',' + CDSNABONO.FieldByName('CREAMORT').AsString + ',' + CDSNABONO.FieldByName('CREINTERES').AsString + ',' + CDSNABONO.FieldByName('CREFLAT').AsString + ',' + CDSNABONO.FieldByName('CREMTOCOB').AsString + ',' + QuotedStr(DM1.cdsQry3.FieldByName('TMONID').AsString) + ',' + DM1.cdsQry3.FieldByName('TCAMB').AsString + ',' + QuotedStr(DM1.cdsQry3.FieldByName('USUARIO').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREFPAG').AsString) + ',' + CDSNABONO.FieldByName('CREAMORT').AsString + ',' + CDSNABONO.FieldByName('CREINTERES').AsString + ',' + CDSNABONO.FieldByName('CREFLAT').AsString + ','+ CDSNABONO.FieldByName('MONCOBDESGRAV').AsString + ',' + CDSNABONO.FieldByName('CREMTOCOB').AsString + ',' + QuotedStr(DM1.cdsQry3.FieldByName('TMONID').AsString) + ',' + DM1.cdsQry3.FieldByName('TCAMB').AsString + ',' + QuotedStr(DM1.cdsQry3.FieldByName('USUARIO').AsString) + ' ' +
            //Fin: DPP_201212_COB
            ',' + QuotedStr(DateToStr(DM1.cdsQry3.FieldByName('FREG').AsDateTime)) + ',' + QuotedStr(DateToStr(DM1.cdsQry3.FieldByName('HREG').AsDateTime)) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('DPTOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('UPAGOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('BANCOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CCBCOID').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOAPENOM').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ARCHIVOFTP').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREOBS').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREANO').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NROOPE').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NRONABO').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('AREAID').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREMES').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREMTODEV').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('FORPAGOABR').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('TRANSINTID').AsString) + ',''04'',''EXTORNADO'',' + DM1.cdsQry3.FieldByName('CREMTOCUO').AsString + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREDOCPAG').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('AGENBCOID').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsQry3.FieldByName('FORPAGID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('FORPAGABR').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NROREFINAN').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREFLAGDEV').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREESTANT').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREESTANTDES').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NROOPETMP').AsString) + ',' + QuotedStr(DateToStr(DM1.cdsQry3.FieldByName('FOPERACTMP').AsDateTime)) + ' ' +
            ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOSITID').AsString) + ',TO_CHAR(SYSDATE,''yyyymm''),' + QuotedStr(DM1.cdsQry3.FieldByName('TIPOCONT').AsString) + ',0,0,TO_CHAR(SYSDATE,''yyyymm''),' + QuotedStr(DM1.cdsQry3.FieldByName('TIPNABO').AsString) + ','''',' + QuotedStr(Trim('EXTORNO DE NOTA DE ABONO')) + ' ' +
            ',' + QuotedStr(DM1.wUsuario) + ',SYSDATE' + ')';
         DM1.DCOM1.AppServer.EjecutaSql(XSQL);

                 //ACTUALIZO EN EL CRE310 LA CUOTA DEVUELTA CON EL FLAG 'D' EL CAMPO CREMTODEV Y NUMDEV
                 //Modificación - Ricardo Medina - 20/02/2008
         XSQL := 'UPDATE CRE310 SET CREFLAGDEV=''D'',CREMTODEV=' + CDSNABONO.FieldByName('CREMTOCOB').AsString +
            ',NUMDEV=' + QuotedStr(xNroDev) + ' WHERE ' +
            ' ASOID=''' + TRIM(xAsoId) + '''' +
            ' AND CREDID=''' + TRIM(CDSNABONO.FieldByName('CREDID').AsString) + '''' +
            ' AND CRECUOTA=''' + TRIM(CDSNABONO.FieldByName('CRECUOTA').AsString) + '''' +
            ' AND TO_CHAR(CREFPAG,''DD/MM/YYYY'')=''' + TRIM(CDSNABONO.FieldByName('CREFPAG').AsString) + '''' +
            ' AND CREMTOCOB=' + CDSNABONO.FieldByName('CREMTOCOB').AsString +
                          //Modificación - Ricardo Medina - 20/02/2008
         ' AND NVL(TRANSINTID,''X'')=' + QuotedStr(TRIM(CDSNABONO.FieldByName('TRANSINTID').AsString)) +
                          //Fin de la modificación
         ' AND CREESTID<>''13'' AND CREESTID<>''04'' AND CREESTID<>''99'' ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                  //ACTUALIZA EL CRE302 DE LA NOTA DE ABONO
         ActCre302NABN;

         CDSNABONO.Next;
      End; //Enddo

                 //ACTUALIZAO EL PRESTAMO EN EL CRE301  DE LA NOTA DE ABONO
      XSQL := 'UPDATE CRE301 SET ' +
         ' CREESTID=''02'', ' +
         ' CREESTADO=''POR COBRAR'', ' +
         ' CRESDOACT=NVL(CRESDOACT,0)+' + CDSNABONO.FieldByname('CREMTOCOB').AsString + ' WHERE ' +
         ' ASOID=''' + TRIM(CDSNABONO.FieldByname('ASOID').AsString) + '''' +
         ' AND CREDID=''' + TRIM(CDSNABONO.FieldByname('CREDID').AsString) + '''';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      Result := True;
   End; //FIN DE EXTORNO DE NOTA DE ABONO
End;

Procedure TfExtorPrest.Button1Click(Sender: TObject);
Begin
   pnlmsgExtorno.Visible := False;
   grbDatTransfiere.Enabled := True;
// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   cdsTipCre.Free;
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   exit;
End;

//LOS PAGOS EFECTUADOS LE GENERA SU MOVIMIENTO DE DEVOLUCION

Function TfExtorPrest.ExCPagEfec: boolean;
Var
//Inicio: DPP_201201_COB
   XSQL, xNroDev, XTRAN,XFECHA: String;
//Fin: DPP_201201_COB
   ZZCREAMORT, ZZCREINTERES, ZZCREFLAT: CURRENCY;
Begin

   If CDSCTASPAG.RecordCount > 0 Then

   Begin
      CDSCTASPAG.First;
      xNroDev := GnrCDev;
      If Length(Trim(xNroDev)) = 0 Then
      Begin
         Screen.Cursor := crDefault;
         MessageDlg(' <<<  A T E N C I O N  >>>   NO SE GENERO CORRELATIVO DEVOLUCION COMUNIQUESE CON SISTEMAS !!!!!  ', mtError, [mbOk], 0);
         Result := False;
         Exit;
      End;

      While Not CDSCTASPAG.Eof Do
      Begin

         If CDSCTASPAG.FieldByName('FLAG').AsString = '1' Then
         Begin

            //ME PONGO EN EL PAGO PARA SACAR LOS DATOS PARA GENERAR EL REGISTRO DE DEVOLUCION
            DM1.cdsQry3.Close;
            XSQL := 'SELECT A.CIAID, A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.USEID, A.ASOCODPAGO, A.TIPCREID, '
               + '       A.CREDID, A.CRECUOTA, A.CREMONLOC, A.CREMONEXT, A.CREFPAG, A.CREAMORT, A.CREINTERES,'
               + '       A.CREFLAT, A.MONCOBDESGRAV, A.CREMTOCOB, A.TMONID, A.TCAMBIO, A.USUARIO, A.FREG, A.HREG, A.UPROID,'
               + '       A.DPTOID, A.UPAGOID, A.BANCOID, A.CCBCOID, A.ASOAPENOM, A.CIUDID, A.ARCHIVOFTP,'
               + '       A.CREOBS, A.CREANO, A.FORPAGOID, A.NROOPE, A.FOPERAC, A.NRONABO, A.AREAID, A.CREMES,'
               + '       A.CREMTODEV, A.FORPAGOABR, A.TRANSINTID, A.COBFDEV, A.COBFRECL, A.COBFNP,'
               + '       A.CREESTID, A.CREESTADO, A.CREMTOCUO, A.FLGEXC, A.FECEXC, A.CREDOCPAG, A.DEVID,'
               + '       A.FLGSSS, A.AGENBCOID, A.FORPAGID, A.FORPAGABR, A.DETRCOBID, A.USERCOBID, A.RCOBID,'
               + '       A.DOCID, A.FLGTA, A.NROREFINAN, A.CREFLAGDEV, A.FL_DISTRIB, A.CREESTANT,'
               + '       A.CREESTANTDES, A.NROOPETMP, A.FOPERACTMP, A.ASOSITID, A.FLAGVAR, A.FLAGVAR2,'
               + '       A.CNTANOMM, A.TIPOCONT, A.CREMTOEXC, A.FLAGVAR3, A.FLAGVAR4, A.FLGINCONSIS,'
               + '       A.CREAPLEXC, A.PERCONTA, A.TIPNABO, A.CNTFLAG, A.OFDESID, A.NUMDEV, A.CRECUOTAINI,'
               + '       A.CRECUOTAINI2, A.CRECUOTAINI3, '
               + '       NVL(A.TCAMBIO,0) TCAMB,NVL(A.CREMTOEXC,0) CREMTOEX,NVL(A.CREAPLEXC,0) CREAPLEX '
               + 'FROM CRE310 A '
               + 'WHERE ASOID=''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + ''''
               + ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + ''''
               + ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + ''''
               + ' AND NROOPE=''' + TRIM(CDSCTASPAG.FieldByname('NROOPE').AsString) + ''''
               + ' AND TO_CHAR(FOPERAC,''DD/MM/YYYY'')=''' + TRIM(CDSCTASPAG.FieldByname('FOPERAC').AsString) + ''''
               + ' AND CREMTOCOB='+CDSCTASPAG.FieldByname('CREMTOCOB').AsString
               + ' AND TO_CHAR(CREFPAG,''DD/MM/YYYY'')=''' + TRIM(CDSCTASPAG.FieldByname('CREFPAG').AsString) + ''''
               + ' AND CREESTID<>''13'' AND CREESTID<>''04'' AND CREESTID<>''99'' ';
            DM1.cdsQry3.DataRequest(XSQL);
            DM1.cdsQry3.Open;

            //INSERTO UN REGISTRO EN EL CRE310 DE DEVOLUCION
            XSQL := 'INSERT INTO CRE310 (CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,CREDID,CRECUOTA,CREFPAG,TMONID,USUARIO,UPROID,DPTOID,' +
               'UPAGOID,ASOAPENOM,CIUDID,CREANO,CREMES,AREAID,CREMTODEV,CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREMTOCOB,CREMTOCUO,TRANSINTID,FORPAGOABR,CREDOCPAG,NUMDEV,CREESTID,COBFNP,' +
               'CREESTADO,CREOBS,FORPAGID,FORPAGABR,CNTANOMM,TIPOCONT,FREG,HREG,NROOPE,FOPERAC,PERCONTA,OFDESID) VALUES (' +
               QuotedStr('02') + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('ASOID').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('ASOCODMOD').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('ASOCODAUX').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('USEID').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('ASOCODPAGO').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('TIPCREID').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('CREDID').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('CRECUOTA').AsString) + ',' +
               QuotedStr(CDSCTASPAG.FieldByName('CREFPAG').AsString) + ',' +
               QuotedStr('N') + ',' +
               QuotedStr(DM1.wUsuario) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('DPTOID').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('UPAGOID').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('ASOAPENOM').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('CIUDID').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('CREANO').AsString) + ',' +
               QuotedStr(DM1.cdsQry3.FieldByName('CREMES').AsString) + ',' +
               QuotedStr('COB') + ',' +
               CDSCTASPAG.FieldByName('CREMTOCOB').AsString + ',' +
               CDSCTASPAG.FieldByName('CREAMORT').AsString + ',' +
               CDSCTASPAG.FieldByName('CREINTERES').AsString + ',' +
               CDSCTASPAG.FieldByName('CREFLAT').AsString + ',' +
               CDSCTASPAG.FieldByName('MONCOBDESGRAV').AsString + ',' +
               CDSCTASPAG.FieldByName('CREMTOCOB').AsString + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('DEV') + ',' +
               QuotedStr('DEV') + ',' +
               QuotedStr(xNroDev) + ',' +
               QuotedStr(xNroDev) + ',' +
               QuotedStr('99') + ',' +
               QuotedStr('R') + ',' +
               QuotedStr('DEVOLUCION') + ',' +
               QuotedStr(TRIM(xobs)) + ',' +
               QuotedStr('10') + ',' +
               QuotedStr('DEV') + ',TO_CHAR(SYSDATE,''yyyymm''),' +
               QuotedStr('DEV') + ',' +
               QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
               'TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),' +
               QuotedStr(CDSCTASPAG.FieldByName('NROOPE').AsString) + ',' +
               QuotedStr(CDSCTASPAG.FieldByName('FOPERAC').AsString) + ',' +
               'TO_CHAR(SYSDATE,''yyyymm''),' +
               QuotedStr(DM1.xOfiDes) + ')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

           //INSERTO EN EL CDSDEVOLUCIONES PARA GENERAR DOCUMENTO DE DEVOLUCION
            CDSDEVOLUCIONES.Insert;
            CDSDEVOLUCIONES.FieldByName('CREDID').AsString := DM1.cdsQry3.FieldByName('CREDID').AsString;
            CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString := DM1.cdsQry3.FIeldByName('CRECUOTA').AsString;
            CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency := CDSCTASPAG.FieldByName('CREMTOCOB').AsCurrency;
            CDSDEVOLUCIONES.FieldByName('DEV').AsString := 'CU';
            CDSDEVOLUCIONES.FieldByName('CREFPAG').AsString := FormatDateTime('dd/mm/yyyy', DM1.cdsQry3.FIeldByName('CREFPAG').AsDateTime);
            CDSDEVOLUCIONES.FieldByName('NROOPE').AsString := DM1.cdsQry3.FIeldByName('NROOPE').AsString;
            CDSDEVOLUCIONES.FieldByName('FOPERAC').AsString := FormatDateTime('dd/mm/yyyy', DM1.cdsQry3.FIeldByName('FOPERAC').AsDateTime);
            CDSDEVOLUCIONES.FieldByName('NRONABO').AsString := DM1.cdsQry3.FIeldByName('NRONABO').AsString;
            CDSDEVOLUCIONES.FieldByName('N.DEVOL').AsString := xNroDev;
            CDSDEVOLUCIONES.FieldByName('CREAMORT').AsCurrency   := DM1.cdsQry3.FieldByName('CREAMORT').AsCurrency;
            CDSDEVOLUCIONES.FieldByName('CREINTERES').AsCurrency := DM1.cdsQry3.FieldByName('CREINTERES').AsCurrency;
            CDSDEVOLUCIONES.FieldByName('CREFLAT').AsCurrency    := DM1.cdsQry3.FieldByName('CREFLAT').AsCurrency;
            CDSDEVOLUCIONES.FieldByName('MONCOBDESGRAV').AsCurrency    := DM1.cdsQry3.FieldByName('MONCOBDESGRAV').AsCurrency;
            CDSDEVOLUCIONES.FieldByName('CREMTOEXC').AsCurrency  := DM1.cdsQry3.FieldByName('CREMTOEXC').AsCurrency;
            
            // Inicio: COB_201822_HPC
            // Se añade al client CDSDEVOLUCIONES el campo FORPAGID
            CDSDEVOLUCIONES.FieldByName('FORPAGID').AsString  := DM1.cdsQry3.FieldByName('FORPAGID').AsString;
            // Fin: COB_201822_HPC

            XFECHA:=FormatDateTime('dd/mm/yyyy HH:mm:ss',DM1.cdsQry3.FieldByName('HREG').AsDateTime);

            XSQL := 'INSERT INTO COB901(ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG,CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREMTOCOB,TMONID,TCAMBIO,' +
              'USUARIO,FREG,HREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,ARCHIVOFTP,CREOBS,CREANO,NROOPE,NRONABO,AREAID,CREMES,CREMTODEV,FORPAGOABR,' +
               'TRANSINTID,CREESTID,CREESTADO,CREMTOCUO,CREDOCPAG,AGENBCOID,FORPAGID,FORPAGABR,NROREFINAN,CREFLAGDEV,CREESTANT,CREESTANTDES,NROOPETMP,FOPERACTMP,' +
               'ASOSITID,CNTANOMM,TIPOCONT,CREMTOEXC,CREAPLEXC,PERCONTA,TIPNABO,CNTFLAG,CREMENANU,USRANULA,FECANULA )' +
               'VALUES (' + QuotedStr(DM1.cdsQry3.FieldByName('ASOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOCODMOD').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOCODAUX').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('USEID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('TIPCREID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREDID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CRECUOTA').AsString) + ' ' +
               ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREFPAG').AsString) + ',' + CDSCTASPAG.FieldByName('CREAMORT').AsString + ',' + CDSCTASPAG.FieldByName('CREINTERES').AsString + ',' + CDSCTASPAG.FieldByName('CREFLAT').AsString + ','+ CDSCTASPAG.FieldByName('MONCOBDESGRAV').AsString + ',' + CDSCTASPAG.FieldByName('CREMTOCOB').AsString + ',' + QuotedStr(DM1.cdsQry3.FieldByName('TMONID').AsString) + ',' + DM1.cdsQry3.FieldByName('TCAMB').AsString + ',' + QuotedStr(DM1.cdsQry3.FieldByName('USUARIO').AsString) + ' ' +
               ',' + QuotedStr(DateToStr(DM1.cdsQry3.FieldByName('FREG').AsDateTime)) + ', TO_DATE(' + QuotedStr(XFECHA) + ',''dd/mm/yyyy hh24:mi:ss''),' + QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('DPTOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('UPAGOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('BANCOID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CCBCOID').AsString) + ' ' +
               ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOAPENOM').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('ARCHIVOFTP').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREOBS').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREANO').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NROOPE').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NRONABO').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('AREAID').AsString) + ' ' +
               ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREMES').AsString) + ',NVL(' + QuotedStr(DM1.cdsQry3.FieldByName('CREMTODEV').AsString) + ',0),' + QuotedStr(DM1.cdsQry3.FieldByName('FORPAGOABR').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('TRANSINTID').AsString) + ',''04'',''EXTORNADO'',NVL(' + DM1.cdsQry3.FieldByName('CREMTOCUO').AsString + ',0),' + QuotedStr(DM1.cdsQry3.FieldByName('CREDOCPAG').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('AGENBCOID').AsString) + ' ' +
               ',' + QuotedStr(DM1.cdsQry3.FieldByName('FORPAGID').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('FORPAGABR').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NROREFINAN').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREFLAGDEV').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREESTANT').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('CREESTANTDES').AsString) + ',' + QuotedStr(DM1.cdsQry3.FieldByName('NROOPETMP').AsString) + ',' + QuotedStr(DateToStr(DM1.cdsQry3.FieldByName('FOPERACTMP').AsDateTime)) + ' ' +
               ',' + QuotedStr(DM1.cdsQry3.FieldByName('ASOSITID').AsString) + ',TO_CHAR(SYSDATE,''yyyymm''),' + QuotedStr(DM1.cdsQry3.FieldByName('TIPOCONT').AsString) + ',' + CDSCTASPAG.FieldByName('CREMTOEXC').AsString + ',0,TO_CHAR(SYSDATE,''yyyymm''),' + QuotedStr(DM1.cdsQry3.FieldByName('TIPNABO').AsString) + ','''',' + QuotedStr(Trim('EXTORNO DE CUOTA')) + ' ' +
               ',' + QuotedStr(DM1.wUsuario) + ',SYSDATE' + ')';
            DM1.DCOM1.AppServer.EjecutaSql(XSQL);

            //ACTUALIZO EN EL CRE310 LA CUOTA DEVUELTA CON NUMDEV
            XSQL := 'UPDATE CRE310 SET NUMDEV=' + QuotedStr(xNroDev) + ' WHERE ' +
               ' ASOID=''' + TRIM(xAsoId) + '''' +
               ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByName('CREDID').AsString) + '''' +
               ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByName('CRECUOTA').AsString) + '''' +
               ' AND NROOPE=''' + TRIM(CDSCTASPAG.FieldByname('NROOPE').AsString) + ''''+
               ' AND FOPERAC=''' + TRIM(CDSCTASPAG.FieldByname('FOPERAC').AsString) + ''''+
               ' AND TO_CHAR(CREFPAG,''DD/MM/YYYY'')=''' + TRIM(CDSCTASPAG.FieldByName('CREFPAG').AsString) + '''' +
               ' AND CREMTOCOB=' + CDSCTASPAG.FieldByName('CREMTOCOB').AsString +
               ' AND NVL(TRANSINTID,''X'')=' + QuotedStr(TRIM(CDSCTASPAG.FieldByName('TRANSINTID').AsString)) +
               ' AND CREESTID<>''13'' AND CREESTID<>''04'' AND CREESTID<>''99'' ';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

           //ACTUALIZO EL CRE302 DE LA CUOTA PAGADA
           //Inicio HPC_201816_COB
           // ActCre302CTAPAG;
           XSQL := 'BEGIN '
                   +'SP_ACT_CRE302('''+TRIM(xAsoId)+''','''+TRIM(CDSCTASPAG.FieldByName('CREDID').AsString)+''','''+TRIM(CDSCTASPAG.FieldByName('CRECUOTA').AsString)+'''); '
                   +'END; ';
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
           //Final HPC_201816_COB
         End;
         CDSCTASPAG.Next;
      End; //Enddo;

     //ACTUALIZO EL CRE301
      DM1.ActSaldoPrest(TRIM(CDSCTASPAG.FieldByname('ASOID').AsString));

    //ACTUALIZA EL FLAG DE REVERSION EN PRE_APR_DEV (FLAIMPREV='S')
      XSQL := 'UPDATE PRE_APR_DEV SET ' +
         ' FLAIMPREV = ''S'' ' +
         ' WHERE ANODEV= ''' + xanodev + ''' AND ' +
         'CORDEV= ''' + xcordev + ''' AND ' +
         'CREDID= ''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      Result := True;
   End;

End;

//CARGA LOS DATOS

Procedure TfExtorPrest.CargaDatos;
Var
   XSQL, NABOCRED, xtrans: String;
   xtotal: currency;
Begin
   If DM1.cdsQry.Active Then DM1.cdsQry.Close;
   If DM1.cdsQry2.Active Then DM1.cdsQry2.Close;
   If DM1.cdsQry3.Active Then DM1.cdsQry3.Close;
   xAsoId := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
   xNroNabo := TRIM(DM1.cdsSolicitud.fieldbyname('NRONABO').AsString);
   xtotal := 0;

   //Si tiene nota de abono
   //if DM1.cdsSolicitud.FieldByName('CREMTONABO').AsCurrency > 0 then
   If (DM1.cdsSolicitud.FieldByName('CREMTONABO').AsCurrency > 0) And (DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString <> '10') Then
   Begin
      //SI TIENE MONTO DE NOTA DE ABONO Y NO TO TIENEN EL NRO DE NOTA DE ABONO LO TOMO DEL CAMPO MOT_PRE (REGISTRO DE MIGRACION)
      If Length(trim(xNroNabo)) = 0 Then
      Begin
         xNroNabo := TRIM(DM1.cdsSolicitud.fieldbyname('MOT_PRE').AsString);
      End;

      //TOMO EL NUMERO DEL PRESTAMO QUE AFECTO LA NOTA DE ABONO
      XSQL := 'SELECT CREDID FROM CRE310 WHERE ASOID=''' + xAsoid + ''' AND TRIM(NRONABO) =''' + xNronabo + '''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(XSQL);
      DM1.cdsQry.Open;
      NABOCRED := DM1.cdsQry.FieldByName('CREDID').AsString;

      XSQL := 'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES, '
         //Inicio: DPP_201212_COB
         //Adicionando el campo de Desgravamen
         //+ '       NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
         + '       NVL(CREFLAT,0) CREFLAT,NVL(MONCOBDESGRAV,0) MONCOBDESGRAV,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
         //Fin: DPP_201212_COB
         + '       NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC,'
         + '       TRANSINTID,NUMDEV '
         + 'FROM CRE310 A '
         + 'WHERE ASOID=''' + xAsoid + ''' and TRIM(NRONABO)=''' + xNronabo + ''' '
         + '  AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' '
         + '  AND NOT EXISTS (SELECT ASOID, CREDID, CRECUOTA, CREMTOCOB, NROOPE, FOPERAC, NUMDEV, DEV '
         + '                  FROM (SELECT ASOID, CREDID, CRECUOTA, CREMTOCOB, NROOPE, FOPERAC, NUMDEV, DEV '
         + '                        FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, '
         + '                                     MAX(CREMTODEV) DEV '
         + '                              FROM CRE310 '
         + '                              WHERE ASOID=''' + xAsoid + ''' AND credid =''' + NABOCRED + ''' '
      
       




         + '                                and CREESTID <> ''13'' '
         + '                              GROUP BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB,NUMDEV) '
         + '                        WHERE DEV>0) B '
         + '                  WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
         + '                    AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.NUMDEV=B.NUMDEV) '
         + 'ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsql);
      DM1.cdsQry.Open;
   End; //Fin si tiene nota de Abono

   //Si tiene cuotas pagadas
   XSQL := 'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES, '
      //Inicio: DPP_201212_COB
      //Adicionando el campo de desgravamen
      //+ '       NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
      + '       NVL(CREFLAT,0) CREFLAT,NVL(MONCOBDESGRAV,0) MONCOBDESGRAV,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
      //Fin: DPP_201212_COB
      + '       NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC,'
      + '       TRANSINTID,NUMDEV '
      + 'FROM CRE310 A '
      + 'WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''''
      + '  AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' '
      + '  AND NOT EXISTS (SELECT ASOID, CREDID, CRECUOTA, CREMTOCOB, NROOPE, FOPERAC, NUMDEV, DEV '
      + '                  FROM (SELECT ASOID, CREDID, CRECUOTA, CREMTOCOB, NROOPE, FOPERAC, NUMDEV, DEV '
      + '                        FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, '
      + '                                     MAX(CREMTODEV) DEV '
      + '                              FROM CRE310  '
 






      + '                              WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''' '
      + '                                AND creestid<>''13'' '
      + '                              GROUP BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB,NUMDEV) '
      + '                        WHERE DEV>0) B '
      + '                  WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
      + '                    AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.NUMDEV=B.NUMDEV) '
      + 'ORDER BY ASOID,CREDID,CRECUOTA DESC,CREFPAG ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsql);
   DM1.cdsQry2.Open;

   CDSNABONO.EmptyDataSet;
   CDSCTASPAG.EmptyDataSet;

// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   //edtmsgExtorno.Text := '';
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   edtPrestamo.Text := DM1.cdsSolicitud.FieldByName('CREDID').AsString; // DM1.cdsQry2.FieldByname('CREDID').AsString ;
   edtNotaAbono.Text := DM1.cdsSolicitud.FieldByName('NRONABO').AsString;
   edtMtoNtoAbono.Text := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldByName('CREMTONABO').AsFloat);
   edtMtoAprobado.Text := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldBynAME('CREMTOOTOR').AsFloat);

   If dm1.cdsSolicitud.FieldByName('CREESTID').AsString = '04' Then edtmsg.Text := 'PRESTAMO OTORGADO Y NOTAS DE ABONO YA EXTORNADOS';

   //Adiciona notas de abono ha anular en CDS
   Try
      If (dm1.cdsQry.RecordCount > 0) And
         (dm1.cdsSolicitud.FieldByName('CREESTID').AsString <> '04') And
         (dm1.cdsSolicitud.FieldByName('CREESTID').AsString <> '13') Then

      Begin
         dm1.cdsQry.First;
         edtNotaAbono.Text := DM1.cdsQry.FieldByname('NRONABO').AsString;
         While Not dm1.cdsQry.Eof Do
         Begin
         //Modificación - Ricardo Medina - 20/02/2008
            If Length(trim(DM1.cdsQry.FieldByname('TRANSINTID').AsString)) = 0 Then
               xtrans := 'X'
            Else
               xtrans := DM1.cdsQry.FieldByname('TRANSINTID').AsString;
         //Fin de la modificación
            CDSNABONO.Insert;
            CDSNABONO.FieldByName('ASOID').AsString := DM1.cdsQry.FieldByname('ASOID').AsString;
            CDSNABONO.FieldByName('CREDID').AsString := DM1.cdsQry.FieldByname('CREDID').AsString;
            CDSNABONO.FieldByName('CRECUOTA').AsString := DM1.cdsQry.FieldByname('CRECUOTA').AsString;
            CDSNABONO.FieldByName('CREAMORT').AsString := DM1.cdsQry.FieldByname('CREAMORT').AsString;
            CDSNABONO.FieldByName('CREINTERES').AsString := DM1.cdsQry.FieldByname('CREINTERES').AsString;
            CDSNABONO.FieldByName('CREFLAT').AsString := DM1.cdsQry.FieldByname('CREFLAT').AsString;
            //Inicio: DPP_201212_COB
            //Adicionando el campo de desgravamen
            CDSNABONO.FieldByName('MONCOBDESGRAV').AsString := DM1.cdsQry.FieldByname('MONCOBDESGRAV').AsString;
            //Fin: DPP_201212_COB
            CDSNABONO.FieldByName('CREMTOCOB').AsString := DM1.cdsQry.FieldByname('CREMTOCOB').AsString;
            CDSNABONO.FieldByName('CREFPAG').AsString := FormatDateTime('dd/mm/yyyy', DM1.cdsQry.FieldByname('CREFPAG').AsDateTime);
            CDSNABONO.FieldByName('NRONABO').AsString := DM1.cdsQry.FieldByname('NRONABO').AsString;
            CDSNABONO.FieldByName('NROOPE').AsString := DM1.cdsQry.FieldByname('NROOPE').AsString;
            CDSNABONO.FieldByName('FOPERAC').AsString := FormatDateTime('dd/mm/yyyy', DM1.cdsQry.FieldByname('FOPERAC').AsDateTime);
            CDSNABONO.FieldByName('TRANSINTID').AsString := xtrans;

            DM1.CDSQRY.Next;
         End;
         TabSheet1.TabVisible := True;
         CDSNABONO.First;
      End
      Else
         TabSheet1.TabVisible := False;

   Except TabSheet1.TabVisible := False;
   End;

   //Adiciona cuotas pagadas ha anular en el CDS
   If dm1.cdsQry2.RecordCount > 0 Then
   Begin
      dm1.cdsQry2.First;
      While Not dm1.cdsQry2.Eof Do
      Begin

         If DM1.cdsQry2.FieldBYname('CREMTOCOB').AsCurrency - DM1.cdsQry2.FieldBYname('CREAPLEXC').AsCurrency > 0 Then
           //Si todo el Monto cobrado fue execeso y fue aPlicado en su totalidad ya no procede devolucion
         Begin

            If Length(trim(DM1.cdsQry2.FieldByname('TRANSINTID').AsString)) = 0 Then
               xtrans := 'X'
            Else
               xtrans := DM1.cdsQry2.FieldByname('TRANSINTID').AsString;
           //Aqui verifico si la cuota esta en el archivo para su devolucin,
           //SOLO FILTRO AQUELLAS CUOTAS QUE HAN SIDO APROBADAS PARA SU DEVOLUCION
            If verifcuodev(DM1.cdsQry2.FieldByname('ASOID').AsString, DM1.cdsQry2.FieldByname('CREDID').AsString, DM1.cdsQry2.FieldByname('NROOPE').AsString,
               DM1.cdsQry2.FieldByname('FOPERAC').AsString, xtrans, DM1.cdsQry2.FieldByname('CRECUOTA').AsInteger,
               DM1.cdsQry2.FieldByname('CREMTOCOB').AsCurrency - DM1.cdsQry2.FieldBYname('CREAPLEXC').AsCurrency) > 0 Then
            Begin
               xanodev := DM1.cdsQry.FieldByName('ANODEV').AsString;
               xcordev := DM1.cdsQry.FieldByName('CORDEV').AsString;

               CDSCTASPAG.Insert;

               CDSCTASPAG.FieldByName('FLAG').AsString := '1';
               xtotal := xtotal + DM1.cdsQry2.FieldByname('CREMTOCOB').AsCurrency - DM1.cdsQry2.FieldBYname('CREAPLEXC').AsCurrency;

               CDSCTASPAG.FieldByName('ASOID').AsString := DM1.cdsQry2.FieldByname('ASOID').AsString;
               CDSCTASPAG.FieldByName('CREDID').AsString := DM1.cdsQry2.FieldByname('CREDID').AsString;
               CDSCTASPAG.FieldByName('CRECUOTA').AsString := DM1.cdsQry2.FieldByname('CRECUOTA').AsString;
               CDSCTASPAG.FieldByName('CREAMORT').AsString := DM1.cdsQry2.FieldByname('CREAMORT').AsString;
               CDSCTASPAG.FieldByName('CREINTERES').AsString := DM1.cdsQry2.FieldByname('CREINTERES').AsString;
               CDSCTASPAG.FieldByName('CREFLAT').AsString := DM1.cdsQry2.FieldByname('CREFLAT').AsString;
               //Inicio: DPP_201212_COB
               //Adicionando el campo de desgravamen
               CDSCTASPAG.FieldByName('MONCOBDESGRAV').AsString := DM1.cdsQry2.FieldByname('MONCOBDESGRAV').AsString;
               //Fin: DPP_201212_COB
               CDSCTASPAG.FieldByName('CREMTOCOB').AsString := CurrToStr(DM1.cdsQry2.FieldByname('CREMTOCOB').AsCurrency - DM1.cdsQry2.FieldBYname('CREAPLEXC').AsCurrency);
              



               CDSCTASPAG.FieldByName('CREMTOEXC').AsString := CurrToStr(DM1.cdsQry2.FieldBYname('CREMTOEXC').AsCurrency);
               CDSCTASPAG.FieldByName('CREAPLEXC').AsString := DM1.cdsQry2.FieldBYname('CREAPLEXC').AsString;
               CDSCTASPAG.FieldByName('CREFPAG').AsString := FormatDateTime('dd/mm/yyyy', DM1.cdsQry2.FieldByname('CREFPAG').AsDateTime);
               CDSCTASPAG.FieldByName('CREFLAGDEV').AsString := DM1.cdsQry2.FieldByname('CREFLAGDEV').AsString;
               CDSCTASPAG.FieldByName('CREESTID').AsString := DM1.cdsQry2.FieldByname('CREESTID').AsString;
               CDSCTASPAG.FieldByName('NROOPE').AsString := DM1.cdsQry2.FieldByname('NROOPE').AsString;
               CDSCTASPAG.FieldByName('TRANSINTID').AsString := xtrans;
               CDSCTASPAG.FieldByName('FOPERAC').AsString := FormatDateTime('dd/mm/yyyy', DM1.cdsQry2.FieldByname('FOPERAC').AsDateTime);
            End; //EndIf

         End; //EndIf

         DM1.cdsQry2.Next;
      End; //Enddo

      TabSheet2.TabVisible := True;
      lblImpMarPro.Caption := FormatCurr('###,##0.#0', xtotal);
      CDSCTASPAG.First;
   End
   Else
      TabSheet2.TabVisible := False;

End;

//Verifica si tiene datos para extornar

Function TfExtorPrest.VerifExisteData: integer;
Var
   xc: integer;
Begin
   xc := 0;
    //SI EL PRESTAMO ESTA EXTORNADO
   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString <> '04') And
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString <> '13') Then
      xc := xc + 1;
   If CDSCTASPAG.RecordCount > 0 Then
   Begin
      CDSCTASPAG.First;
      While Not CDSCTASPAG.Eof Do
      Begin
         If (CDSCTASPAG.FieldByName('CREMTOEXC').AsFloat = 0) And
            (CDSCTASPAG.FieldByName('CREESTID').AsString <> '04') And
            (CDSCTASPAG.FieldByName('CREESTID').AsString <> '13') Then xc := xc + 1;
         CDSCTASPAG.Next;
      End;
   End;
   Result := xc;
End;

//....Genera Correlativo de Devolucion
Function TfExtorPrest.GnrCDev: String;
Var
   xCorrAct: Integer;
   xCorrDev, xSQL, xSQL2: String;
Begin

   xSQL := 'SELECT CREAREA,TIPO,CANCUO FROM CRE206 WHERE CREAREA=''COB'' AND TIPO=''D'' AND CORREANO=' + QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)), 7, 4)) + ' AND CANCUO IS NOT NULL';
   DM1.cdsFEfec.Close;
   DM1.cdsFEfec.DataRequest(xSQL);
   DM1.cdsFEfec.Open;
   If DM1.cdsFEfec.RecordCount = 1 Then
   Begin
      xCorrAct := StrToInt(DM1.cdsFEfec.fieldbyname('CANCUO').AsString) + 1;
      xCorrDev := Format('%.10d', [xCorrAct]);
      xSQL2 := 'Update CRE206 Set Cancuo=''' + xCorrDev + ''' WHERE CREAREA=''COB'' AND TIPO=''D'' AND CORREANO=' + QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)), 7, 4)) + ' AND CANCUO IS NOT NULL';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL2);
      DM1.cdsFEfec.Close;
      DM1.cdsFEfec.DataRequest(xSQL);
      DM1.cdsFEfec.Open;
      If Trim(xCorrDev) > Trim(DM1.cdsFEfec.fieldbyname('CANCUO').AsString) Then xCorrDev := '';
      DM1.cdsFEfec.Close;

      Result := Copy(xCorrDev, 5, 6);
   End;
   DM1.cdsFEfec.Close;
End;

//Actualiza el cre302 (Cronograma de pagos)  de la Nota de Abono
Procedure TfExtorPrest.ActCre302NABN;

Var
   XSQL, XCREESTID, XCREESTADO: String;
   ZSALDO, ZINTERES, ZFLAT, ZAMORT: CURRENCY;
   //Inicio: DPP_201212_COB
   //Variable que contiene el importe por desgravamen
   ZDESGRAVAMEN :CURRENCY;
   //Fin: DPP_201212_COB
Begin
   ZSALDO := 0;
   ZINTERES := 0;
   ZFLAT := 0;
   ZAMORT := 0;
   //Inicio: DPP_201212_COB
   //inicializando la variable que contendr{a el importe por Desgravamen
   ZDESGRAVAMEN := 0;
   //Fin: DPP_201212_COB

   XSQL := 'SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO, CRECUOTA, CREMTO, '
      //Inicio: DPP_201212_COB
      //Adicionando el campo de Desgravamen
      //+ '       CREAMORT, CREINTERES, CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID, UPAGOID, BANCOID, '
      + '       CREAMORT, CREINTERES, CREFLAT,MONPACDESGRAV, MONCOBDESGRAV, CREFVEN, CREFPAG, USEID, UPROID, DPTOID, UPAGOID, BANCOID, '
      //Fin: DPP_201212_COB
      + '       CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT, USUARIO, FREG, HREG, '
      + '       FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL, CREMTOINT, CREMTOFLAT, CRENEWID, '
      + '       FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR, CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, '
      + '       LISTAABR, CIAID, CREESTID, CREESTADO, CRECOM, CRESEG, CREPOR, CREGADM, CRECOMP, CREMORA, '
      + '       CREMTOCOM, CREMTOSEG, CREMTOPOR, CREMTOGADM, CREMTOCOMP, CREMTOMORA, LISTAID, ASOCODAUX, '
      + '       NRONABO, CIUDID, FLGPAG, ARCHIVOFTP, CREBLOQ, CREBLOQFEC, CREBLOQOBS, CREDIDNABO, CREINFO, '
      + '       CREMTOEXC, AREAID, CREDOCPAG, FLAGVAR, CRECAPCRON, CREINTCRON, CREFLACRON,  CREMTOAN, CREAMORTAN, '
      + '       CREINTERESAN, CREFLATAN, FLAGNVINT, DESBLOFEC, USUBLOQ, USUDESBLOQ, NROREFINAN, CREFLGEXC, '
      + '       CREFECEXC, FLGINT, NROOPETMP, FOPERACTMP, FLGDESMAR, USUDESMAR, FECDESMAR, OBSDESMAR, CREMTODEV, '
      + '       CRECAPCON, FLGINCONSIS, CREAPLEXC, TIPNABO, PERPROC, FECPROC, FLGPROC, PERCOB, CREESTIDANT, '
      + '       SALDOSBS,  CREANOINI, CREMESINI, CRECUOTAINI, CREFVENINI, CRECUOTAINI2, CREFVENINI2, CRECUOTAINI3, '
      + '       CREFVENINI3, FLAREP '
      + '  FROM CRE302 '
      + ' WHERE ASOID    = ''' + TRIM(CDSNABONO.FieldByname('ASOID').AsString) + ''''
      + '   AND CREDID   = ''' + TRIM(CDSNABONO.FieldByname('CREDID').AsString) + ''''
      + '   AND CRECUOTA = ''' + TRIM(CDSNABONO.FieldByname('CRECUOTA').AsString) + '''';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency = CDSNABONO.FieldByname('CREMTOCOB').AsCurrency Then //CANCELATORIO
   Begin
            //ES PAGO CANCELATORIO POR LO TANTO
      If StrToInt(FormatDateTime('YYYYMM', DM1.cdsQry.FieldByName('CREFVEN').AsDateTime)) >=
         StrToInt(FormatDateTime('YYYYMM', DM1.FechaSys)) Then
      Begin
         XCREESTID := '02';
         XCREESTADO := 'POR COBRAR';
      End
      Else
      Begin
         XCREESTID := '11';
         XCREESTADO := 'NO PAGADO'
      End;

      XSQL := 'UPDATE CRE302 SET ' +
         ' CREESTID=' + QuotedStr(XCREESTID) + ', ' +
         ' CREESTADO=' + QuotedStr(XCREESTADO) + ',' +
         ' CRESALDO= ' + DM1.cdsQry.FieldByName('CREMTO').AsString + ',' +
         ' CREMTOCOB=''0'' ,' +
         ' CRECAPITAL=''0'' ,' +
         ' CREMTOINT=''0'' ,' +
         //Inicio: DPP_201212_COB
         //Actualizando con valor cero el campo de Desgravamen
         ' MONCOBDESGRAV=''0'' ,' +
         //Fin: DPP_201212_COB
         ' CREMTOFLAT=''0''  WHERE ' +
         ' ASOID=''' + TRIM(CDSNABONO.FieldByname('ASOID').AsString) + '''' +
         ' AND CREDID=''' + TRIM(CDSNABONO.FieldByname('CREDID').AsString) + '''' +
         ' AND CRECUOTA=''' + TRIM(CDSNABONO.FieldByname('CRECUOTA').AsString) + '''';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   End
   Else
      If DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency <> CDSNABONO.FieldByname('CREMTOCOB').AsCurrency Then //PARCIAL
      Begin
             //RESTO EL MONTO COBRADO DEL CRE302 MENOS EL MONTO COBRADO DEL CRE310 SOBRE EL SALDO DEBO CALCULAR NUEVAMENTE
             //AMORTIZACION INTERES Y GASTOS (EL ORDER POR FERCHA DE PAGO DEBE SER DESCENDENTE)
             //EN EL CRE302 SE GUARDA LA ULTIMA FECHA DE PAGO EN FUNCION HA ESA FECHA SE DISTRIBUYE NUEVAMENTE EL PAGO

         ZSALDO := DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency - CDSNABONO.FieldByname('CREMTOCOB').AsCurrency;

         If StrToInt(FormatDateTime('YYYYMM', DM1.cdsQry.FieldByName('CREFVEN').AsDateTime)) >
            StrToInt(FormatDateTime('YYYYMM', DM1.cdsQry.FieldByName('CREFPAG').AsDateTime)) Then
         Begin // FUE UN PAGO ANTICIPADO

            If ZSALDO >= DM1.cdsQry.FieldByName('CREFLAT').AsCurrency Then //Flat
            Begin
               ZFLAT := DM1.cdsQry.FieldByName('CREFLAT').AsCurrency;
               ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREFLAT').AsCurrency;
            End
            Else
            Begin
               ZFLAT := ZSALDO;
               ZSALDO := 0;
            End;
            //Inicio: DPP_201212_COB
            //Verificando el importe del Desgravamen con el saldo
            If ZSALDO >= DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency Then //Desgravamen
            Begin
               ZDESGRAVAMEN := DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency;
               ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency;
            End
            Else
            Begin
               ZDESGRAVAMEN := ZSALDO;
               ZSALDO := 0;
            End;
            //Fin: DPP_201212_COB
            ZINTERES := 0; //Interes

            If ZSALDO >= DM1.cdsQry.FieldByName('CREAMORT').AsCurrency Then //Gastos
            Begin
               ZAMORT := DM1.cdsQry.FieldByName('CREAMORT').AsCurrency;
               ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREAMORT').AsCurrency;
            End
            Else
            Begin
               ZAMORT := ZSALDO;
               ZSALDO := 0;
            End;
         End //END PAGO ANTICIPADO
         Else
         Begin //PAGO NORMAL
            If ZSALDO >= DM1.cdsQry.FieldByName('CREFLAT').AsCurrency Then //Flat
            Begin
               ZFLAT := DM1.cdsQry.FieldByName('CREFLAT').AsCurrency;
               ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREFLAT').AsCurrency;
            End
            Else
            Begin
               ZFLAT := ZSALDO;
               ZSALDO := 0;
            End;
            //Inicio: DPP_201212_COB
            //Verificando el importe del Desgravamen con el Saldo
            If ZSALDO >= DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency Then //Desgravamen
            Begin
               ZDESGRAVAMEN := DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency;
               ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency;
            End
            Else
            Begin
               ZDESGRAVAMEN := ZSALDO;
               ZSALDO := 0;
            End;
            //Fin: DPP_201212_COB
            If ZSALDO >= DM1.cdsQry.FieldByName('CREINTERES').AsCurrency Then //Interes
            Begin
               ZINTERES := DM1.cdsQry.FieldByName('CREINTERES').AsCurrency;
               ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREINTERES').AsCurrency;
            End
            Else
            Begin
               ZINTERES := ZSALDO;
               ZSALDO := 0;
            End;

            If ZSALDO >= DM1.cdsQry.FieldByName('CREAMORT').AsCurrency Then //Amortizacin
            Begin
               ZAMORT := DM1.cdsQry.FieldByName('CREAMORT').AsCurrency;
               ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREAMORT').AsCurrency;
            End
            Else
            Begin
               ZAMORT := ZSALDO;
               ZSALDO := 0
            End;

         End; //END PAGO NORMAL ojo

         XSQL := 'UPDATE CRE302 SET ' +
                 '       CREESTID=''27'', ' +
                 '       CREESTADO=''PARCIAL'',' +
                 //Modificación - Ricardo Medina - 20/02/2008
                 '       CREMTOCOB=' + CurrToStr(DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency - CDSNABONO.FieldByname('CREMTOCOB').AsCurrency) + ',' +
                 //Fin de la modificación
                 '       CRESALDO =' + TRIM(CDSNABONO.FieldByname('CREMTOCOB').AsString) + ',' +
                 '       CREMTOFLAT=' + CurrToStr(ZFLAT) + ',' +
                 '       CREMTOINT=' + CurrToStr(ZINTERES) + ',' +
                 '       CREMTOEXC=' + CurrToStr(ZSALDO) + ',' +
                 //Inicio: DPP_201212_COB
                 //Actualizando el campo de Desgravamen
                 '       MONCOBDESGRAV = ' + CurrToStr(ZDESGRAVAMEN) + ',' +
                 //Fin: DPP_201212_COB
                 '       CRECAPITAL=' + CurrToStr(ZAMORT) + ' WHERE ' +
                 '       ASOID=''' + TRIM(CDSNABONO.FieldByname('ASOID').AsString) + '''' +
                 '   AND CREDID=''' + TRIM(CDSNABONO.FieldByname('CREDID').AsString) + '''' +
                 '   AND CRECUOTA=''' + TRIM(CDSNABONO.FieldByname('CRECUOTA').AsString) + '''';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
End;

//ACTUALISO EL CRE302 DE LA CUOTA PAGADA

Procedure TfExtorPrest.ActCre302CTAPAG;

Var
   XSQL, XCREESTID, XCREESTADO, XANTICIPADO, vfCalc: String;
   ZSALDO, ZINTERES, ZFLAT, ZAMORT, XCOBRADO, xSaldoP: CURRENCY;
   //Inicio: DPP_201212_COB
   //Variable que contendrá el importe de Desgravamen
   ZDESGRAVAMEN  : CURRENCY;
   //Fin: DPP_201212_COB

Begin
   ZSALDO := 0;
   ZINTERES := 0;
   ZFLAT := 0;
   ZAMORT := 0;
   //Inicio: DPP_201212_COB
   //Inicializando la variable de Desgravamen
   ZDESGRAVAMEN := 0;
   //Fin: DPP_201212_COB
   XSQL := 'SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO, CRECUOTA, CREMTO, '
      //Inicio: DPP_201212_COB
      //Adicionando el campo de Desgravamen
      //+ '       CREAMORT, CREINTERES, CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID, UPAGOID, BANCOID, '
      + '       CREAMORT, CREINTERES, CREFLAT,MONPACDESGRAV,MONCOBDESGRAV, CREFVEN, CREFPAG, USEID, UPROID, DPTOID, UPAGOID, BANCOID, '
      //Fin: DPP_201212_COB
      + '       CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT, USUARIO, FREG, HREG, '
      + '       FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL, CREMTOINT, CREMTOFLAT, CRENEWID, '
      + '       FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR, CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, '
      + '       LISTAABR, CIAID, CREESTID, CREESTADO, CRECOM, CRESEG, CREPOR, CREGADM, CRECOMP, CREMORA, '
      + '       CREMTOCOM, CREMTOSEG, CREMTOPOR, CREMTOGADM, CREMTOCOMP, CREMTOMORA, LISTAID, ASOCODAUX, '
      + '       NRONABO, CIUDID, FLGPAG, ARCHIVOFTP, CREBLOQ, CREBLOQFEC, CREBLOQOBS, CREDIDNABO, CREINFO, '
      + '       CREMTOEXC, AREAID, CREDOCPAG, FLAGVAR, CRECAPCRON, CREINTCRON, CREFLACRON,  CREMTOAN, CREAMORTAN, '
      + '       CREINTERESAN, CREFLATAN, FLAGNVINT, DESBLOFEC, USUBLOQ, USUDESBLOQ, NROREFINAN, CREFLGEXC, '
      + '       CREFECEXC, FLGINT, NROOPETMP, FOPERACTMP, FLGDESMAR, USUDESMAR, FECDESMAR, OBSDESMAR, CREMTODEV, '
      + '       CRECAPCON, FLGINCONSIS, CREAPLEXC, TIPNABO, PERPROC, FECPROC, FLGPROC, PERCOB, CREESTIDANT, '
      + '       SALDOSBS,  CREANOINI, CREMESINI, CRECUOTAINI, CREFVENINI, CRECUOTAINI2, CREFVENINI2, CRECUOTAINI3, '
      + '       CREFVENINI3, FLAREP, '
      + '       CASE WHEN  CREFVEN<>CREFVENINI AND  CREFVENINI IS NOT NULL THEN ''S'' ELSE ''N'' END DIFERIDO '
      + '  FROM CRE302 '
      + ' WHERE ASOID    = ''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + ''''
      + '   AND CREDID   = ''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + ''''
      + '   AND CRECUOTA = ''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + '''';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

     //Importe cobrado segun CRE310
   XCOBRADO := CreImpPag(TRIM(CDSCTASPAG.FieldByname('ASOID').AsString), TRIM(CDSCTASPAG.FieldByname('CREDID').AsString), TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString));

   If CDSCTASPAG.FieldByname('CREMTOEXC').AsCurrency =
      CDSCTASPAG.FieldByname('CREMTOCOB').AsCurrency Then //CUANDO EL PAGO ES SOLO DE EXCESO
   Begin

      If XCOBRADO = 0 Then // TIENE UN EXECESO MAL APLICADO POR LO TANTO ES DEVOLUCION TOTAL DE LA CUOTA
      Begin
               //ES PAGO CANCELATORIO CON EXECS0
         If StrToInt(FormatDateTime('YYYYMM', DM1.cdsQry.FieldByName('CREFVEN').AsDateTime)) >=
            StrToInt(FormatDateTime('YYYYMM', DM1.FechaSys)) Then
         Begin
            XCREESTID := '02';
            XCREESTADO := 'POR COBRAR';
         End
         Else
         Begin
            XCREESTID := '11';
            XCREESTADO := 'NO PAGADO'
         End;

         XSQL := 'UPDATE CRE302 SET ' +
            ' CREESTID=' + QuotedStr(XCREESTID) + ', ' +
            ' CREESTADO=' + QuotedStr(XCREESTADO) + ',' +
            ' CRESALDO= ' + DM1.cdsQry.FieldByName('CREMTO').AsString + ',' +
            ' CREMTOCOB=''0'' ,' +
            ' CRECAPITAL=''0'' ,' +
            ' CREMTOINT=''0'' ,' +
            //Inicio: DPP_201212_COB
            //Actualizando el campo de Desgravamen
            ' MONCOBDESGRAV=''0'' ,' +
            //Fin: DPP_201212_COB
            ' CREMTOFLAT=''0''  WHERE ' +
            ' ASOID=''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + '''' +
            ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + '''' +
            ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + '''';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End
      Else
      Begin
                //ACTUALIZO EL CRE302 EL CREAPLEXC,CREMTODEV
         XSQL := 'UPDATE CRE302 SET ' +
            ' CREAPLEXC= NVL(CREAPLEXC,0) +' + CDSCTASPAG.FieldByname('CREMTOEXC').AsString + ' ,' +
            ' CREMTODEV= NVL(CREMTODEV,0) +' + CDSCTASPAG.FieldByname('CREMTOEXC').AsString + '  WHERE ' +
            ' ASOID=''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + '''' +
            ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + '''' +
            ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + '''';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End;

             //ACTUALIZO EL CRE310 EL CREAPLEXC
      XSQL := 'UPDATE CRE310 SET' +
         ' CREAPLEXC= NVL(CREAPLEXC,0) +' + CDSCTASPAG.FieldByname('CREMTOEXC').AsString + ' WHERE ' +
         ' ASOID=''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + '''' +
         ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + '''' +
         ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + '''' +
         ' AND TO_CHAR(CREFPAG,''DD/MM/YYYY'')=''' + TRIM(CDSCTASPAG.FieldByName('CREFPAG').AsString) + '''' +
         ' AND CREESTID<>''13'' AND CREESTID<>''04'' AND CREESTID<>''99'' ' +
         ' AND TRANSINTID=''EXC'' ' +
         ' AND CREMTOCOB=' + CDSCTASPAG.FieldByname('CREMTOEXC').AsString;
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   End

   Else
      If ((DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency <= CDSCTASPAG.FieldByname('CREMTOCOB').AsCurrency) And
         (CDSCTASPAG.FieldByname('CREMTOEXC').AsCurrency > 0) And
         (CDSCTASPAG.FieldByname('CREMTOEXC').AsCurrency <> CDSCTASPAG.FieldByname('CREMTOCOB').AsCurrency)) Then
              // ES CANCELATORIO CON EXCESO, PERO EL EXCESO NO ES EL TOTAL DE LO PAGADO
              // ESTE ES EL CASO DE DEVOLUCIONES DE PAGOS CON PARTE DE EXCESO AUN NO APLICADO
      Begin
            //ES PAGO CANCELATORIO CON EXECS0
         If StrToInt(FormatDateTime('YYYYMM', DM1.cdsQry.FieldByName('CREFVEN').AsDateTime)) >=
            StrToInt(FormatDateTime('YYYYMM', DM1.FechaSys)) Then
         Begin
            XCREESTID := '02';
            XCREESTADO := 'POR COBRAR';
         End
         Else
         Begin
            XCREESTID := '11';
            XCREESTADO := 'NO PAGADO'
         End;

         XSQL := 'UPDATE CRE302 SET ' +
            ' CREESTID=' + QuotedStr(XCREESTID) + ', ' +
            ' CREESTADO=' + QuotedStr(XCREESTADO) + ',' +
            ' CRESALDO= ' + DM1.cdsQry.FieldByName('CREMTO').AsString + ',' +
            ' CREMTOCOB=''0'' ,' +
            ' CRECAPITAL=''0'' ,' +
            ' CREMTOINT=''0'' ,' +
            //Inicio: DPP_201212_COB
            //Actualizando el campo de Desgravamen
            ' MONCOBDESGRAV=''0'' ,' +
            //Fin: DPP_201212_COB
            ' CREMTOFLAT=''0''  WHERE ' +
            ' ASOID=''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + '''' +
            ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + '''' +
            ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + '''';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

             //ACTUALIZO EL CRE310 EL CREAPLEXC
         XSQL := 'UPDATE CRE310 SET' +
            ' CREAPLEXC= NVL(CREAPLEXC,0) +' + CDSCTASPAG.FieldByname('CREMTOEXC').AsString + ' WHERE ' +
            ' ASOID=''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + '''' +
            ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + '''' +
            ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + '''' +
            ' AND TO_CHAR(CREFPAG,''DD/MM/YYYY'')=''' + TRIM(CDSCTASPAG.FieldByName('CREFPAG').AsString) + '''' +
            ' AND CREESTID<>''13'' AND CREESTID<>''04'' AND CREESTID<>''99'' ' +
            ' AND TRANSINTID=''EXC'' ' +
            ' AND CREMTOCOB=' + CDSCTASPAG.FieldByname('CREMTOCOB').AsString;
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End

      Else
         If (DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency = CDSCTASPAG.FieldByname('CREMTOCOB').AsCurrency) And
            (CDSCTASPAG.FieldByname('CREMTOEXC').AsCurrency = 0) Then //CANCELATORIO  O PARCIAL UNICO
         Begin

            //SI XCOBRADO <> 0 MEJOR EL ESTADO DEL CRE302 LO DEJO COMO ESTA  PARA SU POSTERIOR REVISION,
            //LO QUE PASA ES LO COBRADO EN CRE302 NO ESTA DE ACUERDO CON EL CRE310, ESTO SE DEBE ARREGLAR POR FUERA
            If XCOBRADO = 0 Then
            Begin

               //ES PAGO CANCELATORIO POR LO TANTO
               If StrToInt(FormatDateTime('YYYYMM', DM1.cdsQry.FieldByName('CREFVEN').AsDateTime)) >=
                  StrToInt(FormatDateTime('YYYYMM', DM1.FechaSys)) Then
               Begin
                  XCREESTID := '02';
                  XCREESTADO := 'POR COBRAR';
               End
               Else
               Begin
                  XCREESTID := '11';
                  XCREESTADO := 'NO PAGADO'
               End;

               XSQL := 'UPDATE CRE302 SET ' +
                  ' CREESTID=' + QuotedStr(XCREESTID) + ', ' +
                  ' CREESTADO=' + QuotedStr(XCREESTADO) + ',' +
                  ' CRESALDO= ' + DM1.cdsQry.FieldByName('CREMTO').AsString + ',' +
                  ' CREMTOCOB=''0'' ,' +
                  ' CRECAPITAL=''0'' ,' +
                  ' CREMTOINT=''0'' ,' +
                  //Inicio: DPP_201212_COB
                  //Actualizando el campo de Desgavamen
                  ' MONCOBDESGRAV=''0'' ,' +
                  //Fin: DPP_201212_COB
                  ' CREMTOFLAT=''0''  WHERE ' +
                  ' ASOID=''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + '''' +
                  ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + '''' +
                  ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + '''';
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            End;
         End

         Else
            If DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency <> CDSCTASPAG.FieldByname('CREMTOCOB').AsCurrency Then //PARCIAL
            Begin
             //RESTO EL MONTO COBRADO DEL CRE302 MENOS EL MONTO COBRADO DEL CRE310 SOBRE EL SALDO DEBO CALCULAR NUEVAMENTE
             //AMORTIZACION INTERES Y GASTOS (EL ORDER POR FERCHA DE PAGO DEBE SER DESCENDENTE)
             //EN EL CRE302 SE GUARDA LA ULTIMA FECHA DE PAGO EN FUNCION HA ESA FECHA SE DISTRIBUYE NUEVAMENTE EL PAGO

               //UTILIZO EL XCOBRADO PORQUE SALE DE CRE310 Y SOBRE LO COBRADO CALCULO NUEVAMENTE EL CRE302
               //RCREFPAG ES LA ULTIMA FECHA DE PAGO DEL CRE310
               ZSALDO := XCOBRADO;
               XANTICIPADO := 'N';
               If (DM1.cdsQry.FieldByName('DIFERIDO').AsString='N') AND (StrToInt(FormatDateTime('YYYYMM', DM1.cdsQry.FieldByName('CREFVEN').AsDateTime)) >
                  StrToInt(FormatDateTime('YYYYMM', RCREFPAG)) ) Then
               Begin // FUE UN PAGO ANTICIPADO
                  XANTICIPADO := 'S';
                  If ZSALDO >= DM1.cdsQry.FieldByName('CREFLAT').AsCurrency Then //Flat
                  Begin
                     ZFLAT := DM1.cdsQry.FieldByName('CREFLAT').AsCurrency;
                     ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREFLAT').AsCurrency;
                  End
                  Else
                  Begin
                     ZFLAT := ZSALDO;
                     ZSALDO := 0;
                  End;
                  //Inicio: DPP_201212_COB
                  If ZDESGRAVAMEN >= DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency Then //DESGRAVAMEN
                  Begin
                     ZDESGRAVAMEN := DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency;
                     ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency;
                  End
                  Else
                  Begin
                     ZDESGRAVAMEN := ZSALDO;
                     ZSALDO := 0;
                  End;
                  //Fin: DPP_201212_COB
                  ZINTERES := 0; //Interes

                  If ZSALDO >= DM1.cdsQry.FieldByName('CREAMORT').AsCurrency Then //Gastos
                  Begin
                     ZAMORT := DM1.cdsQry.FieldByName('CREAMORT').AsCurrency;
                     ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREAMORT').AsCurrency;
                  End
                  Else
                  Begin
                     ZAMORT := ZSALDO;
                     ZSALDO := 0;
                  End;
               End //END PAGO ANTICIPADO
               Else
               Begin //PAGO NORMAL
                  If ZSALDO >= DM1.cdsQry.FieldByName('CREFLAT').AsCurrency Then //Flat
                  Begin
                     ZFLAT := DM1.cdsQry.FieldByName('CREFLAT').AsCurrency;
                     ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREFLAT').AsCurrency;
                  End
                  Else
                  Begin
                     ZFLAT := ZSALDO;
                     ZSALDO := 0;
                  End;
                  //Inicio: DPP_201212_COB
                  If ZDESGRAVAMEN >= DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency Then //DESGRAVAMEN
                  Begin
                     ZDESGRAVAMEN := DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency;
                     ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency;
                  End
                  Else
                  Begin
                     ZDESGRAVAMEN := ZSALDO;
                     ZSALDO := 0;
                  End;
                  //Fin: DPP_201212_COB
                  If ZSALDO >= DM1.cdsQry.FieldByName('CREINTERES').AsCurrency Then //Interes
                  Begin
                     ZINTERES := DM1.cdsQry.FieldByName('CREINTERES').AsCurrency;
                     ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREINTERES').AsCurrency;
                  End
                  Else
                  Begin
                     ZINTERES := ZSALDO;
                     ZSALDO := 0;
                  End;

                  If ZSALDO >= DM1.cdsQry.FieldByName('CREAMORT').AsCurrency Then //Amortizacin
                  Begin
                     ZAMORT := DM1.cdsQry.FieldByName('CREAMORT').AsCurrency;
                     ZSALDO := ZSALDO - DM1.cdsQry.FieldByName('CREAMORT').AsCurrency;
                  End
                  Else
                  Begin
                     ZAMORT := ZSALDO;
                     ZSALDO := 0
                  End;

               End; //END PAGO NORMAL

               //Verifica estado de prestamo
               If XANTICIPADO = 'N' Then
               Begin
                  If XCOBRADO >= DM1.cdsQry.FieldByName('CREMTO').AsCurrency Then
                     xSaldoP := 0
                  Else
                     xSaldoP := CDSCTASPAG.FieldByname('CREMTOCOB').AsCurrency;
               End
               Else
               Begin
                  If XCOBRADO >= DM1.cdsQry.FieldByName('CREMTO').AsCurrency - DM1.cdsQry.FieldByName('CREINTERES').AsCurrency Then
                     xSaldoP := 0
                  Else
                     xSaldoP := CDSCTASPAG.FieldByname('CREMTOCOB').AsCurrency;
               End;

               If xSaldoP <= 0 Then
               Begin
                  If XANTICIPADO = 'S' Then
                  Begin
                     XCREESTID := '23';
                     XCREESTADO := 'CANCELADO A';
                  End
                  Else
                  Begin
                     XCREESTID := '21';
                     XCREESTADO := 'CANCELADO';
                  End;
               End
               Else
               Begin
                  XCREESTID := '27';
                  XCREESTADO := 'PARCIAL';
               End;

               XSQL := 'UPDATE CRE302 SET ' +
                  ' CREESTID=' + QuotedStr(XCREESTID) + ', ' +
                  ' CREESTADO=' + QuotedStr(XCREESTADO) + ',' +
                  ' CRESALDO= ' + CurrToStr(XSALDOP) + ',' +
                  ' CREMTOCOB=' + CurrToStr(XCOBRADO) + ',' +
                  ' CREMTOFLAT=' + CurrToStr(ZFLAT) + ',' +
                  //Inicio: DPP_201212_COB
                  //Se actualiza el campo de Desgravamen
                  ' MONCOBDESGRAV=' + CurrToStr(ZDESGRAVAMEN) + ',' +
                  //Fin: DPP_201212_COB
                  ' CREMTOINT=' + CurrToStr(ZINTERES) + ',' +
                  ' CRECAPITAL=' + CurrToStr(ZAMORT) + ' WHERE ' +
                  ' ASOID=''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + '''' +
                  ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + '''' +
                  ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + '''';
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

               If (DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency - CDSCTASPAG.FieldByname('CREMTOCOB').AsCurrency <> 0) Then
               //El monto cobrado es mayor que cero, por lo tanto debe existir mas cuotas por devolver
                  If Not VerifPagos Then //Si es False no existe detalle de mas pagos por lo tanto el pago debio ser unico y parcial
                  Begin
                     If StrToInt(FormatDateTime('YYYYMM', DM1.cdsQry.FieldByName('CREFVEN').AsDateTime)) >=
                        StrToInt(FormatDateTime('YYYYMM', DM1.FechaSys)) Then
                     Begin
                        XCREESTID := '02';
                        XCREESTADO := 'POR COBRAR';
                     End
                     Else
                     Begin
                        XCREESTID := '11';
                        XCREESTADO := 'NO PAGADO'
                     End;

                     XSQL := 'UPDATE CRE302 SET ' +
                        ' CREESTID=' + QuotedStr(XCREESTID) + ', ' +
                        ' CREESTADO=' + QuotedStr(XCREESTADO) + ',' +
                        ' CRESALDO= ' + DM1.cdsQry.FieldByName('CREMTO').AsString + ',' +
                        ' CREMTOCOB=''0'' ,' +
                        ' CRECAPITAL=''0'' ,' +
                        ' CREMTOINT=''0'' ,' +
                        //Inicio: DPP_201212_COB
                        //Actualiza el campo de Desgravamen
                        ' MONCOBDESGRAV=''0'' ,' +
                        //Fin: DPP_201212_COB
                        ' CREMTOFLAT=''0''  WHERE ' +
                        ' ASOID=''' + TRIM(CDSCTASPAG.FieldByname('ASOID').AsString) + '''' +
                        ' AND CREDID=''' + TRIM(CDSCTASPAG.FieldByname('CREDID').AsString) + '''' +
                        ' AND CRECUOTA=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + '''';
                     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                  End; //End VerifPagos

            End;
End;

Procedure TfExtorPrest.dbgDevolucionesDblClick(Sender: TObject);
Var
   XTOTAL: CURRENCY;
   B: TBookmark;

Begin

   If rdgAplDev.ItemIndex = 0 Then //APLICA HA OTRA CUOTA (NO SE PUEDE MARCAR TODO O VARIOS)
   Begin

      XTOTAL := CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency -
         CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency -
         CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency;
      edtTotal1.Text := FormatCurr('###,###,##0.00', xtotaL);

   //Guardo la posicion
      B := CDSDEVOLUCIONES.GetBookmark;
      CDSDEVOLUCIONES.DisableControls;

   //Si existe alguno marcado lo desmarco
      CDSDEVOLUCIONES.First;
      While Not CDSDEVOLUCIONES.Eof Do
      Begin
         CDSDEVOLUCIONES.Edit;
         CDSDEVOLUCIONES.FieldByName('Flag').AsString := '';
         CDSDEVOLUCIONES.Next;
      End;

    //Me posiciono nuevamente en el posicion marcada
      CDSDEVOLUCIONES.GotoBookmark(B);
      CDSDEVOLUCIONES.EnableControls;
      CDSDEVOLUCIONES.FreeBookmark(B);

      CDSDEVOLUCIONES.Edit;
      If CDSDEVOLUCIONES.FieldByName('Flag').AsString = '1' Then
         CDSDEVOLUCIONES.FieldByName('Flag').AsString := ''
      Else
         CDSDEVOLUCIONES.FieldByName('Flag').AsString := '1';

   End;

   If rdgAplDev.ItemIndex = 1 Then //DEVOLUVCION DE DINERO AL ASOCIADO (SEPUEDE MARCAR TODOS)
   Begin

      CDSDEVOLUCIONES.Edit;
      If CDSDEVOLUCIONES.FieldByName('Flag').AsString = '1' Then
         CDSDEVOLUCIONES.FieldByName('Flag').AsString := ''
      Else
         CDSDEVOLUCIONES.FieldByName('Flag').AsString := '1';

   //Guardo la posicion
      B := CDSDEVOLUCIONES.GetBookmark;
      CDSDEVOLUCIONES.DisableControls;
      CDSDEVOLUCIONES.First;
      xtotal := 0;
      edtTotal1.Text := '0.00';
      While Not CDSDEVOLUCIONES.eof Do
      Begin
         If CDSDEVOLUCIONES.FieldByName('Flag').AsString = '1' Then
         Begin
            xtotaL := xtotal + (CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency -
               CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency -
               CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency);
         End;
         CDSDEVOLUCIONES.Next;
      End;
      edtTotal1.Text := FormatCurr('###,###,##0.00', xtotaL);
      CDSDEVOLUCIONES.First;
    //Me posiciono nuevamente en el posicion marcada
      CDSDEVOLUCIONES.GotoBookmark(B);
      CDSDEVOLUCIONES.EnableControls;
      CDSDEVOLUCIONES.FreeBookmark(B);

   End;

End;

//..Verifica si existe mas pagos parciales

Function TfExtorPrest.VerifPagos: boolean;
Var
   Xsql: String;
Begin
   xSQL := 'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES, '
      //Inicio: DPP_201212_COB
      //Adiciona el campo de Desgravamen
      //+ '       NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
      + '       NVL(CREFLAT,0) CREFLAT, NVL(MONCOBDESGRAV,0) MONCOBDESGRAV ,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
      //Fin: DPP_201212_COB
      + '       NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC,'
      + '       TRANSINTID,NUMDEV '
      + 'FROM CRE310 A '
      + 'WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''' '
      + '  AND crecuota=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + ''' '
      + '  AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' '
      + '  AND NOT EXISTS (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
      + '                  FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
      + '                        FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, '
      + '                                     MAX(CREMTODEV) DEV '
      + '                              FROM CRE310  '
      + '                              WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''' '
      + '                                AND crecuota=''' + TRIM(CDSCTASPAG.FieldByname('CRECUOTA').AsString) + ''' '
     





      + '                                AND creestid<>''13'' '
      + '                              GROUP BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB,NUMDEV) '
      + '                        WHERE DEV>0) B '
      + '                  WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
      + '                    AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.NUMDEV=B.NUMDEV) '
      + 'ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(XSqL);
   DM1.cdsQry6.Open;

   If DM1.cdsQry6.RecordCount > 0 Then
      Result := True
   Else
      Result := False;

End;

Procedure TfExtorPrest.BitBtn1Click(Sender: TObject);
Begin

   If rdgImprime.ItemIndex = 0 Then //Reimprime Nota de Devolucion
   Begin
      BitPrintClick(self);
   End
   Else
      If rdgImprime.ItemIndex = 1 Then //Imprime Documento de Devoluciones Aplicadas
      Begin
         ZaplicacionRep := 0;
         ppSubReport1.Visible := true;
         ppSubReport2.Visible := true;
         ImprDevApli;
         ppSubReport1.Visible := false;
         ppSubReport2.Visible := False;
      End
      Else
         If rdgImprime.ItemIndex = 2 Then //Imprime Reporte de Cuotas Revertidas
         Begin
            pplCodMod.Caption := fPagoCuotas.EdtCodMod.Text;
            pplAsoapenom.Caption := fPagoCuotas.EdtNomGen.Text;
            pplTipAso.Caption := fPagoCuotas.EdtTipAso.Text;
            pplDesAso.Caption := fPagoCuotas.EdtDesAso.Text;
            pplCodLugP.Caption := fPagoCuotas.EdtCodLug.Text;
            pplDesLugp.Caption := fPagoCuotas.EdtDesLug.Text;
            pplCodUse.Caption := fPagoCuotas.EdtCodUse.Text;
            ppLDesUse.Caption := fPagoCuotas.EdtDesUse.Text;
            ppLUsuario.Caption := dm1.wUsuario;
            ppLFecha.Caption := DateToStr(DM1.FechaSys);
            ppRDevol.Print;
            ppRDevol.Stop;
         End

End;

Procedure TfExtorPrest.ppDBText4Print(Sender: TObject);
Begin
   If CDSDEVOLUCIONES.FieldByName('DEV').AsString = 'NA' Then
      pplNotaAbono.Caption := 'NOTA DE ABONO'
   Else
      pplNotaAbono.Caption := '';
End;

Procedure TfExtorPrest.fcSBTodosClick(Sender: TObject);
Var
   xvar: String;
Begin
   If CDSCTASPAG.RecordCount > 0 Then
   Begin
      If trim(fcSBTodos.Caption) = 'Marc. Todos' Then
         xvar := '1'
      Else
         xvar := '';
      CDSCTASPAG.First;
      While Not CDSCTASPAG.Eof Do
      Begin
         CDSCTASPAG.Edit;
         CDSCTASPAG.FieldByName('flag').AsString := xvar;
         CDSCTASPAG.Next;
      End;
      If trim(fcSBTodos.Caption) = 'Marc. Todos' Then
         fcSBTodos.Caption := 'Desm. Todos'
      Else
         fcSBTodos.Caption := 'Marc. Todos';
      CDSCTASPAG.First;
   End;
End;

Procedure TfExtorPrest.fcSBProcesaMoDevClick(Sender: TObject);

Var
   xsql: String;
   xcuenta: integer;

Begin
//VERIFICA SI EXSITE DATOS QUE CUMPLAN LAS CONDICIONES PARA PROCESAR
   If VerifExisteData <= 0 Then
   Begin
      ShowMessage('NO EXISTE INFORMACION PROCESABLE');
      EXIT;
   End;

//VERIFICA SI HA MARCADO CUOTAS PAGADAS PARA DEVOLVER
   xcuenta := 0;
   If CDSCTASPAG.RecordCount > 0 Then
   Begin
      CDSCTASPAG.First;
      While Not CDSCTASPAG.Eof Do
      Begin
         If CDSCTASPAG.FieldByName('FLAG').AsString = '1' Then
         Begin
            xcuenta := xcuenta + 1;
         End;
         CDSCTASPAG.Next;
      End;
      If xcuenta <= 0 Then
      Begin
         ShowMessage('DEBE SELECCIONAR CUOTAS A REVERTIR');
         Exit;
      End;
   End;

   // SI ESTA MARCADO SOLO PARA DEVOLUCION DE CUOTAS PAGADAS
   If MessageDlg(IntToStr(xcuenta) + ' CUOTA(S) MARCADAS PARA GENERAR MOVIMIENTO DE REVERSION ESTA SEGURO DE REALIZAR EL PROCESO?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin

      //GENERA LA REVERSION DE LOS PAGOS EFECTUADOS
      If ExcPagEfec Then //Si en False No genero bien el correlativo de la Devolucion
      Begin
         pnlmsgExtorno.Visible := False;
         grbDatTransfiere.Enabled := True;
         CargaDatos;
         //SI EXISTE DEVOLUCIONES EFECTUADAS PARA EFECTIVIZARLAS AL ASOCIADO
         CDSDEVOLUCIONES.Last;
         CDSDEVOLUCIONES.First;
         If CDSDEVOLUCIONES.RecordCount > 0 Then
         Begin
            TabSheet3.TabVisible := True;
            dbgDevoluciones.ColumnByName('CREMTOCOB').FooterValue := '0.00';
            dbgDevoluciones.ColumnByName('DEVOEFECTUADA').FooterValue := '0.00';
            dbgDevoluciones.ColumnByName('DEVAPLICADA').FooterValue := '0.00';
            actFooter;
            PageControl1.TabIndex := 2;
         End
         Else
            TabSheet3.TABVisible := False;

         fcSBTodos2.Visible := False;
         rdgAplDevClick(SELF);
      End;
   End;
End;

Procedure TfExtorPrest.fsbProcesaClick(Sender: TObject);

Var
   xAsoId, XSQL: String;
   vtotal: currency;
Begin

   If VerfMarca() <> DM1.Valores(edtTotal1.Text) Then
   Begin
      ShowMessage('Debe marcar correctamente el registro, verifique');
      exit;
   End;

   If DM1.Valores(edtTotal1.Text) = 0 Then
   Begin
      ShowMessage('Debe marcar registro(s) a procesar');
      exit;
   End;

   If Length(trim(edtTotal1.Text)) = 0 Then
   Begin
      ShowMessage('Debe marcar registro(s) a procesar');
      exit;
   End;

   If rdgAplDev.ItemIndex = 0 Then //PARA APLICAR A OTRAS CUOTAS
   Begin
      Puntero;
      grbDatTransfiere.Enabled := False;
      pnlOtrosPrestamos.Visible := True;
      pnlOtrosPrestamos.Enabled := True;
     



      pnlOtrosPrestamos.Top := 1; 

      pnlOtrosPrestamos.Left := 31;
      edtCodMod.Text := fPagoCuotas.EdtCodMod.Text;
      edtNombres.Text := fPagoCuotas.EdtNomGen.Text;
      edtImporteAplicar.Text := edtTotal1.Text;

    //PRESTAMOS DE ASOCIADO
      xAsoId := Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
      XSQL := 'SELECT SubStr(a.Credid,11,5) as Numero, b.TIPCREDES, '
         + '       A.TIPCREID, A.ASOID, A.ASOCODMOD, A.ASOCODPAGO, A.ASOAPENOM, A.USEID, A.CREFOTORG,'
         + '       A.CREFECINI, A.CREMTOSOL, A.CREMTOOTOR, A.CREMTOGIR, A.CREINTERES, A.CREDFLAT,'
         + '       A.CRECUOTA, A.CRENUMCUO, A.CRELUGGIRO, A.BANCOID, A.CRENUMCTA, A.CREMTOPAG,'
         + '       A.CRESDOACT, A.CREPERGRA, A.CRECUOPAG, A.CRECUOENV, A.CREPERIODI, A.CREMTOTAL,'
         + '       A.CRECAPPGO, A.CRENEWID, A.CRESALDOT, A.USUARIO, A.FREG, A.HREG, A.OFDESID,'
         + '       A.CALIFICAID, A.APRUEBAID, A.CREESTADO, A.TMONID, A.CUOTAINI, A.UPAGOID, A.UPROID,'
         + '       A.DPTOID, A.LISTAID, A.CREDID, A.CRECOM, A.CRESEG, A.CREPOR, A.CREGADM, A.CRECOMP,'
         + '       A.CREMORA, A.FORPAGOID, A.CRETCALID, A.TMONABR, A.CRETCALABR, A.LISTAABR,'
         + '       A.FORPAGOABR, A.CIAID, A.CREFRECL, A.CREESTID, A.CREANOMES, A.NROPAGARE,'
         + '       A.NROAUTDES, A.TIPCREDES, A.GARAPENOM, A.GARASOID, A.ASOCODAUX, A.NRONABO, A.NUMREF,'
         + '       A.FECREF, A.TIPOREF, A.NROFICIO, A.CIUDID, A.ARCHIVOFTP, A.AGENBANCOID, A.DPTOGIRO,'
         + '       A.USEIDGAR, A.TIPDESEID, A.BCOGIRO, A.CREMTONABO, A.CREFFINPAG, A.CREFINIPAG,'
         + '       A.CREBLOQFEC, A.USUBLOQ, A.CREBLOQ, A.FLGCAJA, A.FECHACAJA, A.CRENUMCOMP, A.CCOSID,'
         + '       A.CUENTAH, A.CUENTAD, A.CREGENCOB, A.FLGAUTOMA, A.REFANOMES, A.NROREFINAN,'
         + '       A.CAJAUSU, A.HORACAJA, A.ASOTIPID, A.ASODNI, A.ANULACAJA, A.MEN_ANU, A.MOT_PRE,'
         + '       A.NUMREFI, A.FLGREFI, A.CREFCAN, A.FLGINCONSIS, A.PERCONTA, A.C_ABN, A.CNTANOMM,'
         + '       A.FEC_RCP, A.CRECAPLIQ, A.CREFDES, A.CREMENOBS, A.TIPOCONT, A.CNTFLAG, A.CREMTODEP,'
         + '       A.CREFANUL, A.USERANUL, A.CRESUMCUO, A.CREMOTEXT, A.NROFICIO_BCK, A.MIGRADO,'
         + '       A.USUAUTCRE, A.FECAUTCRE, A.ESTAUTCRE, A.COMAUTCRE, A.USUANUSUP, A.FECANUSUP,'
         + '       A.MOTANUSUP, A.ESTANUSUP, A.DOCID, A.CCSERIE, A.CCNODOC, A.CIASER, A.CREMONINS,'
         + '       A.IMPCON, A.DNIRUC, A.FECIMPCON, A.CODARCHIVO, A.CREMTOAPO, A.AUTDESCRE,'
         + '       A.FECAUTDES, A.USUAUTDES, A.IMPCARAUT, A.NROCARAUT, A.DIASPROC, A.DESCENV,'
         + '       A.AUTDESGES, A.USUDESGES, A.FECHORDESGES '
         + 'FROM CRE301 a,CRE110 b '
         + 'Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId))
         + '  and creestid <>''13'' and creestid<>''04'' and creestid<>''99'' '
         + 'Order By a.CREFOTORG ';
      DM1.cdsSolicitudA.Close;
      DM1.cdsSolicitudA.DataRequest(XSQL);
      DM1.cdsSolicitudA.Open;
      If DM1.cdsSolicitudA.RecordCount > 0 Then DM1.cdsSolicitudA.Last;
      TNumericField(DM1.cdsSolicitudA.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,###.#0';
      TNumericField(DM1.cdsSolicitudA.fieldbyname('CRESDOACT')).DisplayFormat := '###,###.#0';
      DBGPrestamos.DataSource := DM1.dsSolicitudA;

    //CUOTAS DEL PRESTAMO
     

      xcRep := 0;
     xsql := 'SELECT ROWNUM POS,A.* '+
             'FROM (SELECT ASOID,TIPCREID,CREDID,CREANO,CREMES,CREFVEN,CRECAPITAL,CREMTOINT,' +
             '             CREMTOFLAT,NVL(CREMTOCOB,0) AS CREMTOCOB,NVL(CREMTO,0) AS CREMTO,CRECUOTA,CREESTADO,' +
             //Inicio: DPP_201212_COB
             //Se adiciona el campo de Desgravamen
             //'             CREESTID,CREAMORT,CREINTERES,CREFLAT,FLAGVAR,CREFPAG,CREFVENINI, ' +
             '             CREESTID,CREAMORT,CREINTERES,CREFLAT,MONPACDESGRAV,MONCOBDESGRAV,FLAGVAR,CREFPAG,CREFVENINI, ' +
             //Fin: DPP_201212_COB
             '             CASE WHEN CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL THEN ''R'' END REP ' +
             '      FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) +
             '                        And CREDID=' + QuotedStr(Trim(DM1.cdsSolicitudA.FieldByName('CREDID').AsString)) +
             '                        And (creestid=''11'' or creestid=''02'' or creestid=''27'')  Order By CREDID,CRECUOTA) A ';

      dm1.cdsCuotas.Close;
      dm1.cdsCuotas.DataRequest(xsql);
      dm1.cdsCuotas.Open;

      //Adicionado segun el SAR2008JC-0078 DAD RM-20080026
      Dm1.cdsCuotas.First;
      xPeriodoMasAnt := copy(Dm1.cdsCuotas.FieldByName('CREFVEN').AsString, 7, 4) +
         copy(Dm1.cdsCuotas.FieldByName('CREFVEN').AsString, 4, 2);
      While Not dm1.cdsCuotas.Eof Do
      Begin
         If Dm1.cdsCuotas.FieldByName('REP').AsString = 'R' Then
         Begin
            xcRep := xcRep + 1;
         End;
         Dm1.cdsCuotas.Next;
      End;
      Dm1.cdsCuotas.First;
      //----------------------------------------------------

      TNumericField(dm1.cdsCuotas.fieldbyname('CRECAPITAL')).DisplayFormat := '###,###.#0';
      TNumericField(dm1.cdsCuotas.fieldbyname('CREMTOINT')).DisplayFormat := '###,###.#0';
      TNumericField(dm1.cdsCuotas.fieldbyname('CREMTOFLAT')).DisplayFormat := '###,###.#0';
      TNumericField(dm1.cdsCuotas.fieldbyname('CREMTOCOB')).DisplayFormat := '###,###.#0';
      TNumericField(dm1.cdsCuotas.fieldbyname('CREMTO')).DisplayFormat := '###,###.#0';
      DBGCuotas.DataSource := dm1.dsCuotas;

   End;

   If rdgAplDev.ItemIndex = 1 Then //PARA DEVOLVER DINERO AL ASOCIADO
   Begin

      If dm1.Valores(edtTotal1.Text) <> dm1.Valores(lblImpAprDev.Caption) Then
      Begin
         ShowMessage('El Importe a Devolver debe ser igual al importe aprobado para su Devolucin');
         Exit;
      End;

      DM1.cdsAgenciaBco.Close;
      DM1.cdsAgenciaBco.DataRequest('Select a.AGENBCOID,a.AGENBCODES,A.DPTOID,B.DPTODES FROM COB102 A, APO158 B WHERE A.DPTOID=B.DPTOID ORDER BY A.DPTOID,A.AGENBCODES');
      DM1.cdsAgenciaBco.Open;
      DM1.cdsFormPago.Close;
      DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR FROM CRE104 WHERE TIPDESEID IN (''04'',''05'',''06'') ORDER BY TIPDESEID');
      DM1.cdsFormPago.Open;

      If Length(trim(xForpagid)) = 0 Then
         grbTipoDesembolso.Enabled := True
      Else
         grbTipoDesembolso.Enabled := False;
      pnlDevolucion.Visible := True;
      pnlDevolucion.Top := 17;
      pnlDevolucion.Left := 61;
      BitPrint.Enabled := False;
      DBLkuCTipDes.Enabled := True;
      lblMonDev.Caption := edtTotal1.Text;
      DtpFecDev.Date := DM1.FechaSys;
      DBLkuCTipDes.Text := xForpagid;
      DBLkCDAgencias.Text := xAgeBan;
      mObservacion.Text := xobs;
      grpPagar.Visible := False;
      If xForpagid = '04' Then
      Begin
         grpPagar.Visible := True;
         edtOfDesId.Text := xOfDesPag;
         edtOfDesNom.Text := DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(xOfDesPag)), 'APO110', 'OFDESNOM');
      End;

    //ADICIONO AL CDS LAS CUOTAS Y EL IMPORTE QUE VOY HA DEVOLVER
      CDSDEVUELVO.EmptyDataSet;

      CDSDEVOLUCIONES.First;
      While Not CDSDEVOLUCIONES.Eof Do
      Begin
         If CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency > 0 Then
         Begin
            vtotal := vtotal + CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency;
            CDSDEVUELVO.Insert;
            CDSDEVUELVO.FieldByName('ASOID').AsString := xAsoId;
            CDSDEVUELVO.FieldByName('CREDID').AsString := CDSDEVOLUCIONES.FieldByName('CREDID').AsString;
            CDSDEVUELVO.FieldByName('CRECUOTA').AsString := TRIM(CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString);
            CDSDEVUELVO.FieldByName('CREMTOCOB').AsCurrency := CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency;
         End;
         CDSDEVOLUCIONES.Next;
      End;
      dtgDevuelvo.ColumnByName('CREMTOCOB').FooterValue := FormatCurr('###,##0.#0', vtotal);

      DtpFecDev.Enabled := False;
      BitGrabar.Enabled := True;
      mObservacion.Enabled := True;
      // DBLkuCTipDes.SetFocus;

   End;

End;

Procedure TfExtorPrest.DBGPrestamosRowChanged(Sender: TObject);
Var
   xsql: String;
Begin

     xsql := 'SELECT ROWNUM POS,A.*  '+
             'FROM (SELECT ASOID,TIPCREID,CREDID,CREANO,CREMES,CREFVEN,CRECAPITAL,CREMTOINT,' +
             '             CREMTOFLAT,NVL(CREMTOCOB,0) AS CREMTOCOB,NVL(CREMTO,0) AS CREMTO,CRECUOTA,CREESTADO,' +
             //Inicio: DPP_201212_COB
             //Adiciona el campo de Desgravamen
             //'             CREESTID,CREAMORT,CREINTERES,CREFLAT,FLAGVAR,CREFPAG,CREFVENINI, ' +
             '             CREESTID,CREAMORT,CREINTERES,CREFLAT,MONPACDESGRAV,FLAGVAR,CREFPAG,CREFVENINI, ' +
             //Fin: DPP_201212_COB
             '             CASE WHEN CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL THEN ''R'' END REP ' +
             '      FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) +
             '                        And CREDID=' + QuotedStr(Trim(DM1.cdsSolicitudA.FieldByName('CREDID').AsString)) +
             '                        And (creestid=''11'' or creestid=''02'' or creestid=''27'')  Order By CREDID,CRECUOTA) A ';

   dm1.cdsCuotas.Close;
   dm1.cdsCuotas.DataRequest(xsql);
   dm1.cdsCuotas.Open;

   //Adicionado segun el SAR2008JC-0078 DAD RM-20080026
   Dm1.cdsCuotas.First;
   xcRep := 0;
   xPeriodoMasAnt := copy(Dm1.cdsCuotas.FieldByName('CREFVEN').AsString, 7, 4) +
      copy(Dm1.cdsCuotas.FieldByName('CREFVEN').AsString, 4, 2);
   While Not dm1.cdsCuotas.Eof Do
   Begin
      If Dm1.cdsCuotas.FieldByName('REP').AsString = 'R' Then
      Begin
         xcRep := xcRep + 1;
      End;
      Dm1.cdsCuotas.Next;
   End;
   Dm1.cdsCuotas.First;
      //----------------------------------------------------

   TNumericField(dm1.cdsCuotas.fieldbyname('CRECAPITAL')).DisplayFormat := '###,###.#0';
   TNumericField(dm1.cdsCuotas.fieldbyname('CREMTOINT')).DisplayFormat := '###,###.#0';
   TNumericField(dm1.cdsCuotas.fieldbyname('CREMTOFLAT')).DisplayFormat := '###,###.#0';
   TNumericField(dm1.cdsCuotas.fieldbyname('CREMTOCOB')).DisplayFormat := '###,###.#0';
   TNumericField(dm1.cdsCuotas.fieldbyname('CREMTO')).DisplayFormat := '###,###.#0';
   DBGCuotas.DataSource := dm1.dsCuotas;
End;

Procedure TfExtorPrest.fcSBTodos2Click(Sender: TObject);

Var
   xvar: String;
   xtotal: currency;
Begin
   If CDSDEVOLUCIONES.RecordCount > 0 Then
   Begin
      If trim(fcSBTodos2.Caption) = 'Marc. Todos' Then
         xvar := '1'
      Else
         xvar := '';
      CDSDEVOLUCIONES.First;
      While Not CDSDEVOLUCIONES.Eof Do
      Begin
         CDSDEVOLUCIONES.Edit;
         CDSDEVOLUCIONES.FieldByName('flag').AsString := xvar;
         CDSDEVOLUCIONES.Next;
      End;
      If trim(fcSBTodos2.Caption) = 'Marc. Todos' Then
         fcSBTodos2.Caption := 'Desm. Todos'
      Else
         fcSBTodos2.Caption := 'Marc. Todos';
      CDSDEVOLUCIONES.First;
   End;

   xtotal := 0;
   edtTotal1.Text := '0.00';
   While Not CDSDEVOLUCIONES.eof Do
   Begin
      If CDSDEVOLUCIONES.FieldByName('Flag').AsString = '1' Then
      Begin
         xtotaL := xtotal + (CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency -
            CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency -
            CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency);
      End;
      CDSDEVOLUCIONES.Next;
   End;
   edtTotal1.Text := FormatCurr('###,###,##0.00', xtotaL);
   CDSDEVOLUCIONES.First;
End;

Procedure TfExtorPrest.FCSBRegresa1Click(Sender: TObject);
Begin
   grbDatTransfiere.Enabled := True;
   pnlOtrosPrestamos.Visible := False;
End;

Procedure TfExtorPrest.DBGCuotasDblClick(Sender: TObject);
Var
   xSaldoP, xSaldoReg: Currency;
   vAsoid, vCredid, vfXalc, vCrecuota, vfcalc, xPeriodo: String;
   xRepFut: integer;
Begin

//Modificado segun el SAR2008JC-0078 DAD RM-20080026

   xRepFut := dm1.cdsCuotas.RecordCount;
   xPeriodo := FormatDateTime('YYYYMM', Now);

   If (xcRep = xRepFut) And (xPeriodoMasAnt <= xPeriodo) Then
  //Si xcRep y xRepFut son iguales significa que todos las cuoata son reprogramadas
  //Y que tenga vencidas hasta el periodo
   Begin
      If (dm1.cdsCuotas.FieldByName('Pos').AsInteger <> 1) Or
         (
         (dm1.cdsCuotas.FieldByName('Pos').AsInteger = 1)
         And
         (copy(Dm1.cdsCuotas.FieldByName('CREFVEN').AsString, 7, 4) +
         copy(Dm1.cdsCuotas.FieldByName('CREFVEN').AsString, 4, 2) > xPeriodo)) Then

      Begin
         ShowMessage('Debe seleccionar la CUOTA MAS ANTIGUA hasta el perirodo ' + xPeriodo);
         Exit;
      End;
   End
   Else
 //De lo contrario se aplicara segun lo acordado
 //cuotas pendientes o vencidas no reprogramadas sobre las mas antigua
 //cuotas reprogramadas pedientes sobre la mas a futuro.
   Begin
      If DM1.cdsCuotas.FieldByName('Rep').AsString = 'R' Then
      Begin
         If (dm1.cdsCuotas.FieldByName('Rep').AsString = 'R') And
            (dm1.cdsCuotas.FieldByName('Pos').AsInteger <> xRepFut) Then
         Begin
            ShowMessage('Debe seleccionar la CUOTA REPROGRAMADA MAS A FUTURO');
            Exit;
         End;
      End
      Else
      Begin
         If (dm1.cdsCuotas.FieldByName('Pos').AsInteger <> 1) Then
         Begin
            ShowMessage('Debe seleccionar la CUOTA MAS ANTIGUA');
            Exit;
         End;
      End;
   End;

   pnlOtrosPrestamos.Enabled := False;

   pnlAplica.Visible := True;
   pnlaplica.Top := 56;
   pnlaplica.Left := 112;
   DtpFecReg.Date := dm1.FechaSys;
   mObsPag.Text := xobs;
   edtForPag.Text := '30';
   EdtDesForPago.Text := 'APLICACION DE DEVOLUCION';
   DtpFecPag.Date := CDSDEVOLUCIONES.FieldByName('FOPERAC').AsDateTime;
   EdtDocPag.Text := CDSDEVOLUCIONES.FieldByName('NROOPE').AsString;
   vAsoid := dm1.cdsCuotas.FieldByName('ASOID').AsString;
   vCredid := dm1.cdsCuotas.FieldByName('CREDID').AsString;
   vCrecuota := dm1.cdsCuotas.FieldByName('CRECUOTA').AsString;
   vfCalc := Trim(Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)), 7, 4) + Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)), 4, 2));
//EdtMonApl.Text    := FormatFloat('###,###.#0',CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsFloat);
   EdtMonApl.Text := edtImporteAplicar.Text;

   xSaldoP := CreSalPag(vAsoid, vCreDid, vfCalc, vCrecuota, edtForPag.Text);

   If (StrToInt(FormatDateTime('YYYYMM', DM1.cdsCuotas.FieldByName('CREFVEN').AsDateTime)) >
      StrToInt(FormatDateTime('YYYYMM', DtpFecPag.DateTime))) And
      (Length(Trim(dm1.CdsCuotas.FieldByName('REP').AsString)) = 0) Then
      chkConInteres.Visible := True
   Else
      chkConInteres.Visible := False;

//calcula saldo del registro posecionado
   xSaldoReg := CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - (CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency + CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency);

//Aqui calculo el monto a aplicar
   If (DM1.Valores(lblImpAprApl.Caption) - ZAplicacion = xSaldoP) And (xSaldoP = xSaldoReg) Then
      EdtMonCob.Text := FormatFloat('###,###.#0', xSaldoP)
   Else
      If (DM1.Valores(lblImpAprApl.Caption) - ZAplicacion < xSaldoP) And (xSaldoReg >= DM1.Valores(lblImpAprApl.Caption) - ZAplicacion) Then
         EdtMonCob.Text := FormatFloat('###,###.#0', DM1.Valores(lblImpAprApl.Caption) - ZAplicacion)
      Else
         If xSaldoReg <= xSaldoP Then
            EdtMonCob.Text := FormatFloat('###,###.#0', xSaldoReg)
         Else
            If xSaldoReg > xSaldoP Then
               EdtMonCob.Text := FormatFloat('###,###.#0', xSaldoP);

   EdtMonPag.Text := FormatFloat('###,###.#0', xSaldoP);

   If Dm1.CdsCuotas.FieldByName('REP').AsString = 'R' Then
   Begin
      chkConInteres.Checked := True;
      chkConInteresClick(self);
   End;

   If DM1.Valores(EdtMonCOB.Text) + CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency >
      CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency Then
   Begin
      ShowMessage('ERROR....');
      EdtMonCob.Text := FormatFloat('###,###.#0', CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency);
   End;

End;

Procedure TfExtorPrest.FCSBRegesa2Click(Sender: TObject);
Begin
   pnlOtrosPrestamos.Enabled := True;
   pnlAplica.Visible := False;
End;

Procedure TfExtorPrest.BitGrabarClick(Sender: TObject);

Var
   XSQL, XCREESTID, XCREESTADO, XCORRAPLI, XDOCUMENTO, xobsapli: String;
   ZSALDO, ZFLAT, ZAMORT, ZINTERES: Currency;
   //Inicio: DPP_201212_COB
   ZDESGRAVAMEN : Currency;
   //Fin: DPP_201212_COB
   SCREAMORT, SCREINTERES, SCREFLAT, SCREMTOCOB: Currency;
   //Inicio: DPP_201212_COB
   SDESGRAVAMEN : Currency;
   //Fin: DPP_201212_COB
   DCREAMORT, DCREINTERES, DCREFLAT, DCREMTOCOB, XSALDO: Currency;
   //Inicio: DPP_201212_COB
   DDESGRAVAMEN   : Currency;
   //Fin: DPP_201212_COB
   XFECPAG: TDate;
   B: TBookmark;
Begin
   ZAMORT := 0.00;
   ZINTERES := 0.00;
   ZFLAT := 0.00;
   //Inicio: DPP_201212_COB
   //Inicializando variable de Desgravamen
   ZDESGRAVAMEN := 0.00;
   //Fin: DPP_201212_COB

   If StrToCurr(EdtMonCob.Text) = 0 Then
   Begin
      ShowMessage('El Importe a Aplicar debe ser mayor que cero..');
      EdtMonCob.SetFocus;
      exit;
   End;

   If Length(trim(mObsPag.Text)) = 0 Then
   Begin
      ShowMessage('Ingrese una Observacion sobre esta Aplicacion.. ');
      mObservacion.SetFocus;
      exit;
   End;

   if length(dbgDevoluciones.ColumnByName('DEVAPLICADA').FooterValue)=0 then
   begin
      actFooter;
   end;

   If (DM1.Valores(lblImpAprApl.Caption) < dm1.Valores(dbgDevoluciones.ColumnByName('DEVAPLICADA').FooterValue) + DM1.Valores(EdtMonCob.Text)) Or
      (ZAplicacion + dm1.Valores(EdtMonCob.Text) > dm1.Valores(lblImpAprApl.Caption)) Then
   Begin
      ShowMessage('El importe que esta por APLICAR hace exceder el APROBADO');
      exit;
   End;

   // PRIMERO VERIFICO SI EXISTE PAGOS PARCIALES ACTIVOS (SIN DEVOLUCIONES)
   // TOMO PAGOS QUE NO ESTEN ANULADOS NI DEVUELTOS NI EXTORNADOS Y QUE SI NO TIENEN NINGUNO DE ESTOS ESTADOS
   // TAMPOCO TENGAN UNA DEVOLUCION, ( ESTA ULTIMA CONDICION LO AMARRO POR ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC
   // YA QUE EN LA DEVOLUCION PONGON COMO REFERENCIA NROOPE Y FOPERAC)
   DCREAMORT := 0;
   DCREINTERES := 0;
   DCREFLAT := 0;
   //Inicio: DPP_201212_COB
   //Inicializando variable de Desgravamen
   DDESGRAVAMEN := 0;
   //Fin: DPP_201212_COB
   XSQL :=
      //Inicio: DPP_201212_COB
      //Adicionando campo de Desgravamen
      //'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT, '
      'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT,NVL(MONCOBDESGRAV,0) MONCOBDESGRAV, '
      //Fin: DPP_201212_COB
      + '       NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC,NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO, '
      + '       CREFLAGDEV,CREESTID,NROOPE,FOPERAC, TRANSINTID,NUMDEV '
      + 'FROM CRE310 A '
      + 'WHERE ASOID=''' + DM1.cdsCuotas.FieldByName('ASOID').AsString + ''' '
      + '  AND credid =''' + DM1.cdsCuotas.FieldByName('CREDID').AsString + ''''
      + '  AND CRECUOTA=''' + DM1.cdsCuotas.FieldByName('CRECUOTA').AsString + ''''
      + '  AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' '
      + '  AND NOT EXISTS (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
      + '                  FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
      + '                        FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, '
      + '                                     MAX(CREMTODEV) DEV '
      + '                              FROM CRE310 '
      + '                              WHERE ASOID=''' + DM1.cdsCuotas.FieldByName('ASOID').AsString + ''' '
      + '                                AND credid =''' + DM1.cdsCuotas.FieldByName('CREDID').AsString + ''' '
      + '                                AND CRECUOTA=''' + DM1.cdsCuotas.FieldByName('CRECUOTA').AsString + ''' '
      + '                                AND CREESTID<>''13'' '
      + '                              GROUP BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB,NUMDEV) '
      + '                        WHERE DEV>0) B '
      + '                  WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
      + '                    AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.NUMDEV=B.NUMDEV) '
      + 'ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.DataRequest(XSQL);
   DM1.cdsDetalle.Open;

   If DM1.cdsDetalle.RecordCount > 0 Then
   Begin
      DM1.cdsDetalle.First;
      While Not DM1.cdsDetalle.eof Do
      Begin
         DCREAMORT := DCREAMORT + DM1.cdsDetalle.FieldByName('CREAMORT').AsCurrency;
         DCREINTERES := DCREINTERES + DM1.cdsDetalle.FieldByName('CREINTERES').AsCurrency;
         DCREFLAT := DCREFLAT + DM1.cdsDetalle.FieldByName('CREFLAT').AsCurrency;
         //Inicio: DPP_201212_COB
         //Acumulando el importe de Desgravamen
         DDESGRAVAMEN := DDESGRAVAMEN + DM1.cdsDetalle.FieldByName('MONCOBDESGRAV').AsCurrency;
         //Fin: DPP_201212_COB
         DM1.cdsDetalle.Next;
      End;

   End;

   //SEGUNDO DETERMINO QUE VOY HA PAGAR.
   //LA DIFERENCIA DE LO PACTADO EN EL CRONOGRAMA MENOS LO PAGADO EN EL CRE310 ES LO QUE VOY HA PAGAR
   SCREAMORT := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DCREAMORT;
   SCREINTERES := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency - DCREINTERES;
   SCREFLAT := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DCREFLAT;
   //Inicio: DPP_201212_COB
   //Obteniendo el importe de Desgravamen
   SDESGRAVAMEN := DM1.cdsCuotas.FieldByName('MONCOBDESGRAV').AsCurrency - DDESGRAVAMEN;
   //Fin: DPP_201212_COB

   //TERCERO CALCULO DISTRIBUCION DE AMORTIZACION INTERES GASTOS
   ZSALDO := StrToCurr(trim(EdtMonCob.Text));

   //COBRA ANTICIPADO SEGUN FECHA DE PAGO DE LA CUOTA ANTERIOR Y QUE NO HAYA PAGADO INTERESE (EN EL PARCIAL)
   If (StrToInt(FormatDateTime('YYYYMM', DM1.cdsCuotas.FieldByName('CREFVEN').AsDateTime)) >
      StrToInt(FormatDateTime('YYYYMM', DtpFecPag.DateTime))) And (DCREINTERES = 0) And Not chkConInteres.Checked Then
   Begin // FUE UN PAGO ANTICIPADO

      If ZSALDO >= SCREFLAT Then //Flat
      Begin
         ZFLAT := SCREFLAT;
         ZSALDO := ZSALDO - SCREFLAT;
      End
      Else
      Begin
         ZFLAT := ZSALDO;
         ZSALDO := 0;
      End;
      //Inicio: DPP_201212_COB
      If ZDESGRAVAMEN >= SDESGRAVAMEN Then //DESGRAVAMEN
      Begin
         ZDESGRAVAMEN := SDESGRAVAMEN;
         ZSALDO := ZSALDO - SDESGRAVAMEN;
      End
      Else
      Begin
         ZDESGRAVAMEN := ZSALDO;
         ZSALDO := 0;
      End;
      //Fin: DPP_201212_COB
      ZINTERES := 0; //Interes

      If ZSALDO >= SCREAMORT Then //Gastos
      Begin
         ZAMORT := SCREAMORT;
         ZSALDO := ZSALDO - SCREAMORT;
      End
      Else
      Begin
         ZAMORT := ZSALDO;
         ZSALDO := 0;
      End;

      If ZSALDO > 0 Then
      Begin
         ShowMessage('EL MONTO PAGADO EXCEDE LA CUOTA EN ' + CurrToStr(ZSALDO) + ', ES UN PAGO ANTICIPADO..');
         exit;
      End;

      If SCREAMORT = ZAMORT Then //ESTADO DEL PAGO
      Begin
         XCREESTID := '23';
         XCREESTADO := 'CANCELADO A';
      End
      Else
      Begin
         XCREESTID := '27';
         XCREESTADO := 'PARCIAL';
      End;

   End //END PAGO ANTICIPADO

   Else

   Begin //PAGO NORMAL
      If ZSALDO >= SCREFLAT Then //Flat
      Begin
         ZFLAT := SCREFLAT;
         ZSALDO := ZSALDO - SCREFLAT;
      End
      Else
      Begin
         ZFLAT := ZSALDO;
         ZSALDO := 0;
      End;
      //Inicio: DPP_201212_COB
      If ZDESGRAVAMEN >= SDESGRAVAMEN Then //DESGRAVAMEN
      Begin
         ZDESGRAVAMEN := SDESGRAVAMEN;
         ZSALDO := ZSALDO - SDESGRAVAMEN;
      End
      Else
      Begin
         ZDESGRAVAMEN := ZSALDO;
         ZSALDO := 0;
      End;
      //Fin: DPP_201212_COB
      If ZSALDO >= SCREINTERES Then //Interes
      Begin
         ZINTERES := SCREINTERES;
         ZSALDO := ZSALDO - SCREINTERES;
      End
      Else
      Begin
         ZINTERES := ZSALDO;
         ZSALDO := 0;
      End;

      If ZSALDO >= SCREAMORT Then //Amortizacin
      Begin
         ZAMORT := SCREAMORT;
         ZSALDO := ZSALDO - SCREAMORT;
      End
      Else
      Begin
         ZAMORT := ZSALDO;
         ZSALDO := 0
      End;

      If ZSALDO > 0 Then
      Begin
         ShowMessage('EL MONTO PAGADO EXCEDE LA CUOTA EN ' + CurrToStr(ZSALDO));
         exit;
      End;

      If SCREAMORT = ZAMORT Then //ESTADO DEL PAGO
      Begin
         XCREESTID := '21';
         XCREESTADO := 'CANCELADO';
      End
      Else
      Begin
         XCREESTID := '27';
         XCREESTADO := 'PARCIAL';
      End;

   End; //END PAGO NORMAL

   //INSERTO EL REGISTRO DE PAGO EN EL CRE310
   //ME PONGO EN EL PAGO DEL CRE310 PARA SACAR TODOS LOS DATOS DEL PAGO
   XSQL := 'SELECT CIAID, ASOID, ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, TIPCREID, '
      + '       CREDID, CRECUOTA, CREMONLOC, CREMONEXT, CREFPAG, CREAMORT, CREINTERES, '
      //Inicio: DPP_201212_COB
      //Adicionando el campo de Desgravamen
      //+ '       CREFLAT, CREMTOCOB, TMONID, TCAMBIO, USUARIO, FREG, HREG, UPROID, '
      + '       CREFLAT,MONCOBDESGRAV, CREMTOCOB, TMONID, TCAMBIO, USUARIO, FREG, HREG, UPROID, '
      //Fin: DPP_201212_COB
      + '       DPTOID, UPAGOID, BANCOID, CCBCOID, ASOAPENOM, CIUDID, ARCHIVOFTP, '
      + '       CREOBS, CREANO, FORPAGOID, NROOPE, FOPERAC, NRONABO, AREAID, CREMES, '
      + '       CREMTODEV, FORPAGOABR, TRANSINTID, COBFDEV, COBFRECL, COBFNP, '
      + '       CREESTID, CREESTADO, CREMTOCUO, FLGEXC, FECEXC, CREDOCPAG, DEVID, '
      + '       FLGSSS, AGENBCOID, FORPAGID, FORPAGABR, DETRCOBID, USERCOBID, RCOBID, '
      + '       DOCID, FLGTA, NROREFINAN, CREFLAGDEV, FL_DISTRIB, CREESTANT, '
      + '       CREESTANTDES, NROOPETMP, FOPERACTMP, ASOSITID, FLAGVAR, FLAGVAR2, '
      + '       CNTANOMM, TIPOCONT, CREMTOEXC, FLAGVAR3, FLAGVAR4, FLGINCONSIS, '
      + '       CREAPLEXC, PERCONTA, TIPNABO, CNTFLAG, OFDESID, NUMDEV, CRECUOTAINI, '
      + '       CRECUOTAINI2, CRECUOTAINI3 '
      + 'FROM CRE310 '
      + 'WHERE ASOID=''' + xAsoid + ''' '
      + '  AND CREDID=''' + CDSDEVOLUCIONES.FieldByName('CREDID').AsString + ''' '
      + '  AND CRECUOTA=''' + CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString + ''' '
      + '  AND NROOPE=''' + CDSDEVOLUCIONES.FieldByName('NROOPE').AsString + ''' '
    //INICIO: DPP_201201_COB
      + '  AND TO_CHAR(FOPERAC,''DD/MM/YYYY'')=''' + CDSDEVOLUCIONES.FieldByName('FOPERAC').AsString + ''' '
      + '  AND CREMTOCOB=' + CDSDEVOLUCIONES.FieldByname('CREMTOCOB').AsString
    //FINAL: DPP_201201_COB
      + '  AND CREESTID NOT IN (''13'',''04'',''99'') ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(XSQL);
   DM1.cdsQry5.Open;

   XCORRAPLI := GnrCorrApl;
   xobsapli := 'APLICACION DEL: ' + CDSDEVOLUCIONES.FieldByName('CREDID').AsString + '-' + DM1.StrZero(CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString, 3) + '-' + CDSDEVOLUCIONES.FieldByName('NROOPE').AsString;
   XSQL := 'INSERT INTO CRE310 (CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,CREDID,CRECUOTA,CREFPAG,TMONID,USUARIO,UPROID,DPTOID,' +
      //Inicio: DPP_201212_COB
      //Adicionando el Campo de Desgravamen
      //'UPAGOID,ASOAPENOM,CIUDID,CREANO,CREMES,AREAID,CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,CREMTOCUO,TRANSINTID,FORPAGOABR,CREDOCPAG,CREESTID, ' +
      'UPAGOID,ASOAPENOM,CIUDID,CREANO,CREMES,AREAID,CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREMTOCOB,CREMTOCUO,TRANSINTID,FORPAGOABR,CREDOCPAG,CREESTID, ' +
      //Fin: DPP_201212_COB
      'CREESTADO,CREOBS,FORPAGID,FORPAGABR,CNTANOMM,TIPOCONT,FREG,HREG,NROOPE,FOPERAC,PERCONTA) VALUES (' +
      QuotedStr('02') + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('ASOCODMOD').AsString) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('ASOCODAUX').AsString) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('USEID').AsString) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('ASOCODPAGO').AsString) + ',' +
      QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString) + ',' +
      QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString) + ',' +
      QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('CREFPAG').AsString) + ',' +
      QuotedStr('N') + ',' +
      QuotedStr(DM1.wUsuario) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('UPROID').AsString) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('DPTOID').AsString) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('UPAGOID').AsString) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('ASOAPENOM').AsString) + ',' +
      QuotedStr(DM1.cdsQry5.FieldByName('CIUDID').AsString) + ',' +
      QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString) + ',' +
      QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString) + ',' +
      QuotedStr('COB') + ',' +
      CurrToStr(ZAMORT) + ',' +
      CurrToStr(ZINTERES) + ',' +
      CurrToStr(ZFLAT) + ',' +
      //Inicio: DPP_201212_COB
      //Adicionando el campo de Desgravamen
      CurrToStr(ZDESGRAVAMEN) + ',' +
      //CurrToStr(ZAMORT + ZINTERES + ZFLAT) + ',' +
      CurrToStr(ZAMORT + ZINTERES + ZFLAT + ZDESGRAVAMEN) + ',' +
      //Fin: DPP_201212_COB
      DM1.cdsCuotas.FieldByName('CREMTO').AsString + ',' +
      QuotedStr('APL') + ',' +
      QuotedStr('APL') + ',' +
      QuotedStr(XCORRAPLI) + ',' +
      QuotedStr(XCREESTID) + ',' +
      QuotedStr(XCREESTADO) + ',' +
      QuotedStr(TRIM(xobsapli) + '/' + TRIM(xobs)) + ',' +
      QuotedStr('06') + ',' +
      QuotedStr('APL') + ',TO_CHAR(SYSDATE,''yyyymm''),' +
      QuotedStr('APL') + ',' +
      QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
      'TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),' +
      QuotedStr(XCORRAPLI) + ',' +
      'TO_CHAR(SYSDATE,''dd/mm/yyyy''),' +
      'TO_CHAR(SYSDATE,''yyyymm''))';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   //ACTUALIZO EL CRE302
   DCREAMORT := DCREAMORT + ZAMORT;
   DCREINTERES := DCREINTERES + ZINTERES;
   DCREFLAT := DCREFLAT + ZFLAT;
   //Inicio: DPP_201212_COB
   DDESGRAVAMEN := DDESGRAVAMEN + ZDESGRAVAMEN ;
   //Fin: DPP_201212_COB
   //Si la Fecha de Pago de monto ha aplicar es mayor a la ultima fecha de pargo de monto parcial
   //tomo dicha fecha, es decir tomo la fecha mayor
   If DM1.cdsQry5.FieldByName('CREFPAG').AsDateTime >= DM1.cdsCuotas.FieldByName('CREFPAG').AsDateTime Then
      XFECPAG := DM1.cdsQry5.FieldByName('CREFPAG').AsDateTime
   Else
      XFECPAG := DM1.cdsCuotas.FieldByName('CREFPAG').AsDateTime;

   If DCREAMORT = DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then // CANCELADO
   Begin
      If (XFECPAG <= DM1.cdsCuotas.FieldByName('CREFVEN').AsDateTime) And (DCREINTERES = 0) Then //CANCELACION ANTICIPADA
      Begin
         XCREESTID := '23';
         XCREESTADO := 'CANCELADO A';
         XSALDO := 0;
      End
      Else
      Begin
         XCREESTID := '21';
         XCREESTADO := 'CANCELADO';
         XSALDO := 0;
      End;
   End
   Else
   Begin
      XCREESTID := '27';
      XCREESTADO := 'PARCIAL';
      XSALDO := DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency - (DCREAMORT + DCREINTERES + DCREFLAT);
   End;

   XSQL := 'UPDATE CRE302 SET ' +
      ' CREESTID=' + QuotedStr(XCREESTID) + ',' +
      ' CREFPAG=' + QuotedStr(DateToStr(XFECPAG)) + ',' +
      ' CREESTADO=' + QuotedStr(XCREESTADO) + ',' +
      ' CREMTOCOB=' + CurrToStr(DCREAMORT + DCREINTERES + DCREFLAT) + ',' +
      ' CRESALDO =' + CurrToStr(XSALDO) + ',' +
      ' CREMTOFLAT=' + CurrToStr(DCREFLAT) + ',' +
      ' CREMTOINT=' + CurrToStr(DCREINTERES) + ',' +
      //Inicio: DPP_201212_COB
      //Actualizando en campo de Desgravamen
      ' MONCOBDESGRAV=' + CurrToStr(DDESGRAVAMEN) + ',' +
      //Fin: DPP_201212_COB
      ' CRECAPITAL=' + CurrToStr(DCREAMORT) + ' WHERE ' +
      ' ASOID=''' + TRIM(DM1.cdsCuotas.FieldByname('ASOID').AsString) + '''' +
      ' AND CREDID=''' + TRIM(DM1.cdsCuotas.FieldByname('CREDID').AsString) + '''' +
      ' AND CRECUOTA=''' + TRIM(DM1.cdsCuotas.FieldByname('CRECUOTA').AsString) + '''';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   //ACTUALIZO EL LOS SALDOS DEL CRE301
   DM1.ActSaldoPrest(xAsoid);

   //ACTUALIZO EN "CDSDEVOLUCIONES" LA DEVOLUCION APLICADA A OTRA CUOTA
   //INICIO: DPP_201201_COB
   //**OJO SI SE ACTVA LA APLICACION SE DEBE APLICAR PORCENTUALMENTE DE ACUERDO A LA AMORT INTERES FLAT
   //FINAL: DPP_201201_COB
   B := CDSDEVOLUCIONES.GetBookmark;
   CDSDEVOLUCIONES.DisableControls;
   CDSDEVOLUCIONES.First;
   While Not CDSDEVOLUCIONES.Eof Do
   Begin
      If CDSDEVOLUCIONES.FieldByName('Flag').AsString = '1' Then
      Begin
         If CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency >= CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency + ZAMORT + ZINTERES + ZFLAT Then
         Begin
            CDSDEVOLUCIONES.Edit;
            CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency := CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency + ZAMORT + ZINTERES + ZFLAT;
            Break;
         End
         Else
         Begin
            ShowMessage('---error-' + CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString);
         End;
      End;
      CDSDEVOLUCIONES.Next;
   End;
   actFooter;
   Act_Saldo_PRE_APR;

   //Me posiciono nuevamente en el posicion marcada
   CDSDEVOLUCIONES.GotoBookmark(B);
   CDSDEVOLUCIONES.EnableControls;
   CDSDEVOLUCIONES.FreeBookmark(B);

   If (verificaDevTotal = 0) And Not (chkEstornaPrestamo.Checked) Then
   Begin
      ShowMessage('EL PROCESO DE DEVOLUCION Y/O APLICACION A CONCLUIDO EN SU TOTALIDAD');
      fsbProcesa.Enabled := False;
      BitSalir.Enabled := True;
      BitExtPrestamo.Enabled := False;
      MarcDevPro_en_PRE_APR_DEV;
   End
   Else
      If (verificaDevTotal = 0) And (chkEstornaPrestamo.Checked) Then
      Begin
         ShowMessage('EL PROCESO DE DEVOLUCION Y/O APLICACION A CONCLUIDO EN SU TOTALIDAD, AHORA EXTORNE EL PRESTAMO...');
         BitExtPrestamo.Enabled := True;
         fsbProcesa.Enabled := False;
      End
      Else
         ShowMessage('DEVOLUCION APLICADA..');

   //ACTUALIZA CDS
   ZAplicacion := ZAplicacion + dm1.Valores(EdtMonCob.Text);
   EdtMonCob.Text := '0.00';

   pnlAplica.Visible := False;
   pnlOtrosPrestamos.Visible := False;
   grbDatTransfiere.Enabled := True;
   SoloDesmarcoCDSDEVOLUCIONES;
   edtTotal1.Text := '0.00';

End;

//GENERA CORRELATIVO DE APLICACION
Function TfExtorPrest.GnrCorrApl: String;
Var
   xCorrAct: Integer;
   xCorrExe, xSQL, xSQL2: String;
Begin
   xSQL2 := 'SELECT CREAREA,TIPO,CANCUO,CORREANO '
          + '  FROM CRE206 '
          + ' WHERE CREAREA  = ''COB'' '
          + '   AND TIPO     = ''E'' '
          + '   AND CORREANO = ' + QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)), 7, 4))
          + '   AND CANCUO   IS NOT NULL';
   DM1.cdsFEfec.Close;
   DM1.cdsFEfec.DataRequest(xSQL2);
   DM1.cdsFEfec.Open;

   If DM1.cdsFEfec.RecordCount = 1 Then
   Begin
      //Nuevo correlativo
      xCorrAct := StrToInt(DM1.cdsFEfec.fieldbyname('CANCUO').AsString) + 1;
      xCorrExe := Format('%.10d', [xCorrAct]);
      DM1.cdsFEfec.Close;

      //Actualizo nuevo correlativo
      xSQL := 'UPDATE CRE206 '
            + '   SET CANCUO = ''' + xCorrExe + ''' WHERE CREAREA=''COB'' AND TIPO=''E'' AND CORREANO=' + QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)), 7, 4)) + ' AND CANCUO IS NOT NULL';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      //Verifico el numero correlativo
      DM1.cdsFEfec.Close;
      DM1.cdsFEfec.DataRequest(xSQL2);
      DM1.cdsFEfec.Open;
      If Trim(xCorrExe) > Trim(DM1.cdsFEfec.fieldbyname('CANCUO').AsString) Then xCorrExe := '';
      DM1.cdsFEfec.Close;

      Result := xCorrExe;
   End;

   DM1.cdsFEfec.Close;
End;

Procedure TfExtorPrest.rdgAplDevClick(Sender: TObject);
Begin

   If rdgAplDev.ItemIndex = 0 Then
   Begin
      fsbProcesa.Caption := 'Aplicar a otras cuotas';
      fcSBTodos2.Visible := False;

      //DESMARCA TODOS SI ES QUE ESTAN MARCADOS
      CDSDEVOLUCIONES.First;
      While Not CDSDEVOLUCIONES.Eof Do
      Begin
         CDSDEVOLUCIONES.Edit;
         CDSDEVOLUCIONES.FieldByName('flag').AsString := '';
         CDSDEVOLUCIONES.Next;
      End;

      fcSBTodos2.Caption := 'Marc. Todos';
      CDSDEVOLUCIONES.First;
      edtTotal1.Text := '0.00';
   End;

   If rdgAplDev.ItemIndex = 1 Then
   Begin
      fsbProcesa.Caption := 'Devolver dinero al Asoc.';
      fcSBTodos2.Visible := True;
   End;
End;

//Verifico si la cuota fue asignada para devolver
Function TfExtorPrest.verifcuodev(xasoid, xcredid, xnroope, xfoperac, xtransintid: String;
   xcrecuota: integer; ximprev: currency): currency;

Var
   XSQL: String;
Begin

   XSQL := 'SELECT A.ANODEV, A.ASOID, A.CREDID, A.CRECUOTA, A.MONREV, A.CORDEV, A.MONDEV, A.MONAPL, '
      + '       A.CREFPAG, A.NROOPE, A.FOPERAC, A.NRONABO, A.ASONUMDEV, A.TRANSINTID, A.CREMTOCOB, '
      //Inicio: DPP_201212_COB
      //Adicionando el campo de desgravamen
      //+ '       A.CREINTERES, A.CREFLAT, A.FORPAGID '
      + '       A.CREINTERES, A.CREFLAT, A.FORPAGID, A.MONCOBDESGRAV '
      //Fin: DPP_201212_COB
      + 'FROM PRE_APR_DEV_DET A, PRE_APR_DEV B '
      + 'WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
      + '  AND A.CORDEV=B.CORDEV AND (NVL(B.FLADEVEFE,''X'')<>''S'' '
      + '  AND NVL(B.FLAAPR,''X'')=''S'') AND NVL(FLAANU,''X'')<>''S'' '
      + '  AND A.ASOID=''' + XASOID + ''' '
      + '  AND A.CREDID=''' + XCREDID + ''' '
      + '  AND A.CRECUOTA=' + IntToStr(XCRECUOTA)
      + '  AND A.NROOPE=''' + XNROOPE + ''' '
      + '  AND A.FOPERAC=''' + XFOPERAC + ''' '
      + '  AND NVL(A.TRANSINTID,''X'')=''' + XTRANSINTID + ''' '
      + '  AND A.MONREV=' + CurrToStr(XIMPREV);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
   If dm1.cdsQry.RecordCount > 0 Then
      Result := dm1.cdsQry.FieldByName('MONREV').AsCurrency
   Else
      Result := 0.00;

End;

Procedure TfExtorPrest.BitBtn3Click(Sender: TObject);
Begin

   CDSDEVUELVO.EmptyDataSet;
   DM1.cdsAgenciaBco.Close;
   DM1.cdsFormPago.Close;
   pnlDevolucion.Top := 416;
   pnlDevolucion.Left := 61;
   pnlDevolucion.Visible := False;

End;

Procedure TfExtorPrest.DBLkuCTipDesChange(Sender: TObject);

Begin
   If DM1.cdsFormPago.Locate('TIPDESEID', VarArrayof([DBLkuCTipDes.text]), []) Then
   Begin
      EdtTipDes.Text := DM1.cdsFormPago.fieldbyname('TIPDESEABR').AsString;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '04' Then
      Begin
         lblCtaAhorros.Enabled := False;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := '';
         EdtSitCta.Text := '';
      End;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '05' Then
      Begin
         If DM1.xSgr = '1' Then
         Begin
            lblAgencia.Enabled := True;
            DBLkCDAgencias.Enabled := True;
         End;
         lblCtaAhorros.Enabled := False;
         EdtCtaAhorros.Text := '';
         EdtSitCta.Text := '';
      End;

      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '06' Then
      Begin
         lblCtaAhorros.Enabled := True;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := DM1.cdsAso.FieldByName('ASONCTA').AsString;
         EdtSitCta.Text := DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)), 'COB103', 'SITCTADES');
      End

   End
   Else
   Begin
      If Length(DBLkuCTipDes.Text) <> 2 Then
      Begin
         Beep;
         EdtTipDes.Text := '';
      End;
   End

End;

Procedure TfExtorPrest.DBLkuCTipDesKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TfExtorPrest.DBLkCDAgenciasChange(Sender: TObject);
Begin
   If DM1.cdsAgenciaBco.Locate('AGENBCODES', VarArrayof([DBLkCDAgencias.text]), []) Then
   Begin
      EdtCodAgen.Text := DM1.cdsAgenciaBco.fieldbyname('AGENBCOID').AsString;
      EdtDepGir.Text := DM1.cdsAgenciaBco.fieldbyname('DPTOID').AsString + '-' + DM1.cdsAgenciaBco.fieldbyname('DPTODES').AsString;
   End
   Else
   Begin
      If Length(DBLkCDAgencias.Text) = 0 Then
      Begin
         Beep;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
      End;
   End
End;

Procedure TfExtorPrest.BitGrabar2Click(Sender: TObject);
Var
   xFrmDes, xRecDev, xSitCta, xAsoId: String;
   Boton: Integer;
Begin

   Boton := Application.MessageBox('Est Seguro Que Desea Grabar Esta Devoluci n',
      'Devoluciones', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
      xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
      xSitCta := DM1.cdsAso.FieldByName('SITCTA').AsString;
      If Length(Trim(EdtTipDes.Text)) = 0 Then
      Begin
         MessageDlg(' Debe Seleccionar Una Forma De Desembolso ', mtError, [mbOk], 0);
         DBLkuCTipDes.SetFocus;
         Exit;
      End;
      xFrmDes := Trim(DBLkuCTipDes.Text);
      If VrfGrabaDev(xFrmDes, xSitCta) = 'S' Then
      Begin

         EdtNroDev.Text := CDSDEVOLUCIONES.FieldByName('N.DEVOL').AsString;
         GrabaDev(xAsoId, xRecDev, xFrmDes);
         DM1.cdsAgenciaBco.Close;
         DBLkuCTipDes.Enabled := False;
         DBLkCDAgencias.Enabled := False;
         BitGrabar.Enabled := False;
         mObservacion.Enabled := False;
         BitPrint.Enabled := True;
      End
      Else
      Begin
         MessageDlg(' Verifique Algunos Faltan Datos, Para Grabar La Devolucin ', mtError, [mbOk], 0);
         BitPrint.Enabled := False;
         Exit;
      End;
   End;
End;

Function TfExtorPrest.VrfGrabaDev(xFrmDes, xSitCta: String): Char;
Begin

   Case StrToInt(xFrmDes) Of
      4:
         Begin
            If (Length(Trim(EdtTipDes.Text)) = 0) Or (Length(Trim(mObservacion.Text)) = 0) Then
               Result := 'N'
            Else
               Result := 'S';
         End;
      5:
         Begin
            If (Length(Trim(EdtTipDes.Text)) = 0) Or (Length(Trim(mObservacion.Text)) = 0) Or (Length(Trim(DBLkCDAgencias.Text)) = 0) Or (Length(Trim(EdtCodAgen.Text)) = 0) Or (Length(Trim(EdtDepGir.Text)) = 0) Then
               Result := 'N'
            Else
               Result := 'S';

         End;
      6:
         Begin
            If (Length(Trim(EdtTipDes.Text)) = 0) Or (Length(Trim(mObservacion.Text)) = 0) Or (Length(Trim(EdtCtaAhorros.Text)) <> 10) Or (xSitCta <> 'A') Then
               Result := 'N'
            Else
               Result := 'S';

         End
   Else
      Begin
         Result := 'N';
      End;

   End;

End;

//Graba la Devoluci n al Asociado
Procedure TfExtorPrest.GrabaDev(xAsoId, xNroDev, xFrmDes: String);
Var
   xSql, XASOCTAAHO, XASOSITCTA, XLUGGIRO, XCODGIRO, XDEPGIRO: String;

Begin

   XASOCTAAHO := '';
   XASOSITCTA := '';
   XLUGGIRO := '';
   XCODGIRO := '';
   XDEPGIRO := '';

   If xFrmDes = '06' Then
   Begin
      XASOCTAAHO := Trim(EdtCtaAhorros.Text);
      XASOSITCTA := DM1.cdsAso.FieldByName('SITCTA').AsString;
   End
   Else
      If xFrmDes = '05' Then
      Begin
         XLUGGIRO := Trim(DBLkCDAgencias.Text);
         XCODGIRO := Trim(EdtCodAgen.Text);
         XDEPGIRO := Trim(Copy(Trim(EdtDepGir.Text), 1, 2));
      End;

   xSql := 'Insert Into MDEVCAB (ASOID,ASOCODMOD,ASOCODAUX,ASOAPENOM,ASONUMDEV,ASOANODEV,ASOFECDEV,ASOMONDEV,USEID,UPROID,UPAGOID,DPTOID,ASODNI,' +
      'TIPDESEID,CREESTID,CREESTADO,FORPAGID,ASOOBSERV,ASOCTAAHO,ASOSITCTA,LUGGIRO,CODGIRO,DEPGIRO,USUARIO,FREG) VALUES (' +
      QuotedStr(xAsoId) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
      QuotedStr(TRIM(EdtNroDev.Text)) + ',' +
      QuotedStr(Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)), 7, 4)) + ',' +
      QuotedStr(DateToStr(DtpFecDev.Date)) + ',' +
      CurrToStr(DM1.Valores(lblMonDev.Caption)) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('DPTOID').AsString) + ',' +
      QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',' +
      QuotedStr(xFrmDes) + ',' +
      QuotedStr('99') + ',' +
      QuotedStr('DEVOLUCION') + ',' +
      QuotedStr('10') + ',' +
      QuotedStr(Trim(mObservacion.Lines.Text)) + ',' +
      QuotedStr(XASOCTAAHO) + ',' +
      QuotedStr(XASOSITCTA) + ',' +
      QuotedStr(XLUGGIRO) + ',' +
      QuotedStr(XCODGIRO) + ',' +
      QuotedStr(XDEPGIRO) + ',' +
      QuotedStr(DM1.wUsuario) + ',TO_CHAR(SYSDATE,''dd/mm/yyyy ''))';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

//INSERTA EL DESEMBOLSO DE LA DEVOLUCION EN EFECTIVO
   If TRIM(DBLkuCTipDes.Text) = '04' Then
   Begin
      XSQL := 'INSERT INTO DES_DEV_EFE (ASOID,ASOCODMOD,ASOCODAUX,CREDID,ASOTIPID,ASODNI,ASOAPENOM,UPROID,USEID,UPAGOID,CODDEP,CODOFI,MONTOSOL,MONTODOL,' +
         'TIPCAMB,ANULADO,ASOFECDEV,ASOANODEV,ASONUMDEV) VALUES(' +
         QuotedStr(xAsoId) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
         QuotedStr(xCredid) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString) + ',' +
         QuotedStr(DM1.cdsAso.FieldByName('DPTOID').AsString) + ',' +
         QuotedStr(edtOfDesId.Text) + ',' +
         CurrToStr(DM1.Valores(lblMonDev.Caption)) + ',' +
         CurrToStr(DM1.Valores(lblMonDev.Caption) / StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys))) + ',' +
         DM1.RecuperarTipoCambio(DM1.FechaSys) + ',' +
         QuotedStr('N') + ',' +
         QuotedStr(DateToStr(DtpFecDev.Date)) + ',' +
         QuotedStr(Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)), 7, 4)) + ',' +
         QuotedStr(TRIM(EdtNroDev.Text)) + ')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;

   CDSDEVOLUCIONES.First;
   //INICIO: DPP_201201_COB
   //**OJO SI SE ACTVA LA APLICACION SE DEBE DEVOLVER PORCENTUALMENTE DE ACUERDO A LA AMORT INTERES FLAT AUN NO ESTA IMPLEMETADO ****
   //FINAL: DPP_201201_COB

   While Not CDSDEVOLUCIONES.Eof Do

   Begin

      If CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency > 0 Then
      Begin
      //INICIO: DPP_201201_COB
      //SE ADICIONA LO CAMPOS AMORTIZACION,INTERES,FLAT, Y PAGO TOTAL CUANDO LO QUE SE DEVUELVE NO ES UN EXCESO
       //XSQL := 'INSERT INTO MDEVDET (ASOID,CREDID,CRECUOTA,ASOAPENOM,ASONUMDEV,CREFPAG,ASOANODEV,CREMTOEXC,CREAPLEXC,CREDEVEXC,CREESTID,CREESTADO,CREMES,CREANO,ASOCODMOD,ASOCODAUX,USUARIO,FREG) VALUES (' +
         //Inicio: DPP_201212_COB
         //Adicionando el campo de Desgravamen
         //XSQL := 'INSERT INTO MDEVDET (ASOID,CREDID,CRECUOTA,ASOAPENOM,ASONUMDEV,CREFPAG,ASOANODEV,CREMTOEXC,CREAPLEXC,CREDEVEXC,MONDEVCUO,CREAMORT,CREINTERES,CREFLAT,CREESTID,CREESTADO,CREMES,CREANO,ASOCODMOD,ASOCODAUX,USUARIO,FREG) VALUES (' +

         // Inicio: COB_201822_HPC
         // Se añade el campo forma de pago en la tabla de devoluciones
         // XSQL := 'INSERT INTO MDEVDET (ASOID,CREDID,CRECUOTA,ASOAPENOM,ASONUMDEV,CREFPAG,ASOANODEV,CREMTOEXC,CREAPLEXC,CREDEVEXC,MONDEVCUO,CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREESTID,CREESTADO,CREMES,CREANO,ASOCODMOD,ASOCODAUX,USUARIO,FREG) VALUES (' +
         XSQL := 'INSERT INTO MDEVDET (ASOID,CREDID,CRECUOTA,ASOAPENOM,ASONUMDEV,CREFPAG,ASOANODEV,CREMTOEXC,CREAPLEXC,CREDEVEXC,MONDEVCUO,CREAMORT,CREINTERES,CREFLAT,MONCOBDESGRAV,CREESTID,CREESTADO,CREMES,CREANO,ASOCODMOD,ASOCODAUX,FORPAGID,USUARIO,FREG) VALUES (' +
         // Fin: COB_201822_HPC

         //Fin: DPP_201212_COB
      //FINAL: DPP_201201_COB
            QuotedStr(xAsoId) + ',' +
            QuotedStr(CDSDEVOLUCIONES.FieldByName('CREDID').AsString) + ',' +
            QuotedStr(CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
            QuotedStr(TRIM(EdtNroDev.Text)) + ',' +
            QuotedStr(CDSDEVOLUCIONES.FieldByName('CREFPAG').AsString) + ',' +
            QuotedStr(Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)), 7, 4)) + ',' +
            //INICIO: DPP_201201_COB
            //NO BORRRA EN PASES POSTERIORES PARA TENER REFERENCIA PARA LAS APLICACIONES DE CUOTAS - SE QUITA LA PARTE DE APLICACIONES
            //CurrToStr(CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency) + ',' +
            //CurrToStr(CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency) + ',' +
            //CurrToStr(CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency) + ',' +
            CurrToStr(CDSDEVOLUCIONES.FieldByName('CREMTOEXC').AsCurrency)  + ',' +
            CurrToStr(CDSDEVOLUCIONES.FieldByName('CREMTOEXC').AsCurrency)  + ',' +
            CurrToStr(CDSDEVOLUCIONES.FieldByName('CREMTOEXC').AsCurrency)  + ',' +
            //Inicio: DPP_201212_COB
            //Adicionando el campo de Desgravamen
            //CurrToStr(CDSDEVOLUCIONES.FieldByName('CREAMORT').AsCurrency+CDSDEVOLUCIONES.FieldByName('CREINTERES').AsCurrency+CDSDEVOLUCIONES.FieldByName('CREFLAT').AsCurrency)+','+
            CurrToStr(CDSDEVOLUCIONES.FieldByName('CREAMORT').AsCurrency+CDSDEVOLUCIONES.FieldByName('CREINTERES').AsCurrency+CDSDEVOLUCIONES.FieldByName('CREFLAT').AsCurrency +CDSDEVOLUCIONES.FieldByName('MONCOBDESGRAV').AsCurrency)+','+
            //Fin: DPP_201212_COB
            CurrToStr(CDSDEVOLUCIONES.FieldByName('CREAMORT').AsCurrency)+','+
            CurrToStr(CDSDEVOLUCIONES.FieldByName('CREINTERES').AsCurrency)+','+
            CurrToStr(CDSDEVOLUCIONES.FieldByName('CREFLAT').AsCurrency)+','+
            //Inicio: DPP_201212_COB
            //Adicionando el campo de desgravamen
            CurrToStr(CDSDEVOLUCIONES.FieldByName('MONCOBDESGRAV').AsCurrency)+','+
            //Fin: DPP_201212_COB
            //FINAL: DPP_201201_COB
            QuotedStr('99') + ',' +
            QuotedStr('DEVOLUCION') + ',' +
            QuotedStr(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)) + ' AND CREDID=' + QuotedStr(Trim(CDSDEVOLUCIONES.FieldByName('CREDID').AsString)) + ' AND CRECUOTA=' + QuotedStr(Trim(CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString)), 'CRE302', 'CREMES')) + ',' +
            QuotedStr(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)) + ' AND CREDID=' + QuotedStr(Trim(CDSDEVOLUCIONES.FieldByName('CREDID').AsString)) + ' AND CRECUOTA=' + QuotedStr(Trim(CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString)), 'CRE302', 'CREANO')) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
            // Inicio: COB_201822_HPC
            // Se añade el campo forma de pago en la tabla de devoluciones
            QuotedStr(CDSDEVOLUCIONES.FieldByName('FORPAGID').AsString) + ',' +
            // Fin: COB_201822_HPC
            QuotedStr(DM1.wUsuario) + ',TO_CHAR(SYSDATE,''dd/mm/yyyy ''))';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End;

      CDSDEVOLUCIONES.Next;

   End;

//ACTUALIZO EN "CDSDEVOLUCIONES" LA DEVOLUCION y ACTUALIZAO EL CRE310 LA CUOTA DEVUELTA CON EL FLAG 'D'  Y EL CAMPO CREMTODEV
   CDSDEVOLUCIONES.First;
   While Not CDSDEVOLUCIONES.Eof Do
   Begin
      If CDSDEVOLUCIONES.FieldByName('Flag').AsString = '1' Then
      Begin
         CDSDEVOLUCIONES.Edit;
         CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency := CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency;

         XSQL := 'UPDATE CRE310 SET CREFLAGDEV=''D'',CREMTODEV=' + CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsString + ' WHERE ' +
            ' ASOID=''' + TRIM(xAsoId) + '''' +
            ' AND CREDID=''' + TRIM(CDSDEVOLUCIONES.FieldByName('CREDID').AsString) + '''' +
            ' AND CRECUOTA=''' + TRIM(CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString) + '''' +
            ' AND TO_CHAR(CREFPAG,''DD/MM/YYYY'')=''' + TRIM(CDSDEVOLUCIONES.FieldByName('CREFPAG').AsString) + '''' +
            ' AND CREMTOCOB=' + CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsString +
            ' AND NUMDEV=' + QuotedStr(CDSDEVOLUCIONES.FieldByName('N.DEVOL').AsString) +
            ' AND CREESTID<>''13'' AND CREESTID<>''04'' AND CREESTID<>''99'' ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
      CDSDEVOLUCIONES.Next;
   End;

   xSQL := 'UPDATE CRE302 A SET CREAPLEXC=(SELECT SUM(NVL(CREAPLEXC,0)) FROM CRE310 WHERE A.ASOID=ASOID AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA  AND NVL(CREMTOEXC,0)>0  ' +
      'AND CREESTID NOT IN (''13'',''04'') ) WHERE A.ASOID=' + QuotedStr(xAsoId) + ' AND NVL(A.CREMTOEXC,0)>0 ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   actFooter;
   Act_Saldo_PRE_APR;

   If (verificaDevTotal = 0) And Not (chkEstornaPrestamo.Checked) Then
   Begin
      ShowMessage('EL PROCESO DE DEVOLUCION Y/O APLICACION A CONCLUIDO EN SU TOTALIDAD, IMPRIMA LA NOTA DE DESEMBOLSO..');
      fsbProcesa.Enabled := False;
      BitExtPrestamo.Enabled := False;
      MarcDevPro_en_PRE_APR_DEV;
      BitSalir.Enabled := True;
   End
   Else
      If (verificaDevTotal = 0) And (chkEstornaPrestamo.Checked) Then
      Begin
         ShowMessage('EL PROCESO DE DEVOLUCION Y/O APLICACION A CONCLUIDO EN SU TOTALIDAD, IMPRIMA LA NOTA DE DESEMBOLSO.. Y LUEGO EXTORNE EL PRESTAMO');
         BitExtPrestamo.Enabled := True;
         fsbProcesa.Enabled := False;
      End
      Else
         ShowMessage('DEVOLUCION EFECTUADA, IMPRIMA LA NOTA DE DESEMBOLSO...');

   BitGrabar2.Enabled := False;
   SoloDesmarcoCDSDEVOLUCIONES;
   BitPrintClick(SELF);

End;

Procedure TfExtorPrest.BitPrintClick(Sender: TObject);
Var
   xFrmDes, xTipDes, xMeses: String;
   xCremToCob: Currency;
   xLin: Integer;

Begin

   DM1.xSgr := '1'; //OJO FUERZO A QUE SEA 1 HASTA AVERIGUAR PARA QUE SIRVE
   xFrmDes := DBLkuCTipDes.Text;
   lblPagEn.Visible := False;
   lblRotPag.Visible := False;
   If xFrmDes = '04' Then
   Begin
      xTipDes := 'EFECTIVO';
      lblPagEn.Visible := True;
      lblRotPag.Visible := True;
      ppLblDesem.Caption := xTipDes;
      lblPagEn.Caption := edtOfDesNom.Text;
   End
   Else
      If xFrmDes = '05' Then
      Begin
         xTipDes := 'GIRO/TRANSFERENCIA';
         ppLblDesem.Caption := 'GIRO : ' + Copy(Trim(EdtDepGir.Text), 4, 12) + '- AGENCIA : ' + Trim(DBLkCDAgencias.Text);
      End
      Else
         If xFrmDes = '06' Then
         Begin
            xTipDes := 'CUENTA DE AHORROS';
            ppLblDesem.Caption := xTipDes + ' N: ' + Trim(EdtCtaAhorros.Text);
         End;
   ppMeses.Lines.Text := '';
   xCremToCob := 0;
   xMeses := '';
   CDSDEVOLUCIONES.First;
   xLin := 0;

   While Not CDSDEVOLUCIONES.Eof Do
   Begin
      If CDSDEVOLUCIONES.FieldByname('DEVOEFECTUADA').AsFloat > 0 Then
      Begin
         xLin := xLin + 1;
         xCremToCob := xCremToCob + CDSDEVOLUCIONES.FieldByname('DEVOEFECTUADA').AsFloat;
         If xLin < 3 Then
            xMeses := xMeses + 'F.Pag:' + CDSDEVOLUCIONES.FieldByname('CREFPAG').AsString + ' Cuo.:' + Format('%.2d', [CDSDEVOLUCIONES.FieldByname('CRECUOTA').AsInteger]) + ':' + DM1.StrSpace(FormatFloat('##,###.#0', CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsFloat), 7) + '   '
         Else
         Begin
            xLin := 0;
            xMeses := xMeses + 'F.Pag:' + CDSDEVOLUCIONES.FieldByname('CREFPAG').AsString + ' Cuo.:' + Format('%.2d', [CDSDEVOLUCIONES.FieldByname('CRECUOTA').AsInteger]) + ':' + DM1.StrSpace(FormatFloat('##,###.#0', CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsFloat), 7) + #13;
         End;
      End;
      CDSDEVOLUCIONES.Next;
   End;

   ppMeses.Lines.Add('POR CONCEPTO  : DEVOLUCION');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('POR LAS CUOTAS DEL CREDITO N ' + xCredid + ' (En Nuevos Soles)');
   ppMeses.Lines.Add('---------------------------------------------------------------------');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add(Copy(xMeses, 1, Length(Trim(xMeses))));
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('Nota :' + xobs);
   ppLblTitulo.Caption := 'NOTA DE DESEMBOLSO : ' + xTipDes + ' N ' + Trim(EdtNroDev.Text) + '-' + Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)), 7, 4) + '-' + 'DM-COB';
   pplFirmaAso.Caption := trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString);
   If DM1.xSgr = '1' Then
   Begin
      PPLblDni.Caption := DM1.cdsAso.FieldByName('ASODNI').AsString;
      ppLblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
      ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      ppLblFecDoc.Caption := DateToStr(DM1.FechasOutPut(DtpFecDev.Date));
      ppLblDpto.Caption := DM1.CrgDescrip('DPTOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('DPTOID').AsString)), 'APO158', 'DPTODES');
      ppLblCodPag.Caption := DM1.cdsAso.FieldByName('ASOCODPAGO').AsString;
      ppLblUproc.Caption := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
      ppLblMonDev.Caption := FormatFloat('###,###.#0', DM1.Valores(lblMonDev.Caption));
      ppLblUsuario.Caption := 'Hecho Por :' + Trim(DM1.wUsuario);
   End
   Else
   Begin
      PPLblDni.Caption := DM1.cdsQry3.FieldByName('ASODNI').AsString;
      ppLblNomGen.Caption := DM1.cdsQry3.FieldByName('ASOAPENOM').AsString;
      ppLblCodMod.Caption := DM1.cdsQry3.FieldByName('ASOCODMOD').AsString;
      ppLblFecDoc.Caption := DM1.cdsQry3.FieldByName('ASOFECDEV').AsString;
      ppLblDpto.Caption := DM1.CrgDescrip('DPTOID=' + QuotedStr(Trim(DM1.cdsQry3.FieldByName('DPTOID').AsString)), 'APO158', 'DPTODES');
      ppLblCodPag.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsQry3.FieldByName('ASOID').AsString)), 'APO201', 'ASOCODPAGO');
      ppLblUproc.Caption := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsQry3.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
      ppLblMonDev.Caption := FormatFloat('###,###.#0', DM1.Valores(DM1.cdsQry3.FieldByName('ASOMONDEV').AsString));
      ppLblUsuario.Caption := 'Hecho Por :' + Trim(DM1.cdsQry3.FieldByName('USUARIO').AsString);
   End;

   //Inicio HPC_201735_COB: Mejoras en el proceso de Aprobación de Devoluciones en efectivo
   ppLinNivApr03Ger.visible := False;
   ppLblNivApr03Ger.visible := False;
   
   ppLineFirmaSectorista.visible := False;
   ppLblFirmaSectorista1.visible := False;
   ppLblFirmaSectorista2.visible := False;
   ppLineFirmaSubjefatura.visible := False;
   ppLblFirmaSubjefatura1.visible := False;
   ppLblFirmaSubjefatura2.visible := False;
   ppLineFirmaJefatura.visible := False;
   ppLblFirmaJefatura1.visible := False;
   ppLblFirmaJefatura2.visible := False;

   If xNivApr = '01' Then
   begin
      ppLineFirmaSectorista.visible := True;
      ppLblFirmaSectorista1.visible := True;
      ppLblFirmaSectorista2.visible := True;

      ppLblFirmaSectorista1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuApr)), 'USERTABLE', 'USERNOM'));
   End
   Else If xNivApr = '02' Then
   begin
      ppLineFirmaSectorista.visible := True;
      ppLblFirmaSectorista1.visible := True;
      ppLblFirmaSectorista2.visible := True;

      ppLblFirmaSectorista1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuApr)), 'USERTABLE', 'USERNOM'));

      ppLineFirmaSubjefatura.visible := True;
      ppLblFirmaSubjefatura1.visible := True;
      ppLblFirmaSubjefatura2.visible := True;

      ppLblFirmaSubjefatura2.Caption:= 'FIRMA SUB-JEFATURA O JEFATURA';
      if Length(xUsuAprSub) > 0 Then
          ppLblFirmaSubjefatura1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuAprSub)), 'USERTABLE', 'USERNOM'))
      else
          ppLblFirmaSubjefatura1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuAprJef)), 'USERTABLE', 'USERNOM'));

   End
   Else If xNivApr = '03' Then
   Begin
      ppLineFirmaSectorista.visible := True;
      ppLblFirmaSectorista1.visible := True;
      ppLblFirmaSectorista2.visible := True;

      ppLblFirmaSectorista1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuApr)), 'USERTABLE', 'USERNOM'));

      ppLineFirmaSubjefatura.visible := True;
      ppLblFirmaSubjefatura1.visible := True;
      ppLblFirmaSubjefatura2.visible := True;

      ppLblFirmaSubjefatura1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuAprSub)), 'USERTABLE', 'USERNOM'));

      ppLineFirmaJefatura.visible := True;
      ppLblFirmaJefatura1.visible := True;
      ppLblFirmaJefatura2.visible := True;

      ppLblFirmaJefatura1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuAprJef)), 'USERTABLE', 'USERNOM'));

      ppLinNivApr03Ger.visible := True;
      ppLblNivApr03Ger.visible := True;
   End
   Else
   begin
      ppLineFirmaSectorista.visible := True;
      ppLblFirmaSectorista1.visible := True;
      ppLblFirmaSectorista2.visible := True;

      ppLblFirmaSectorista1.Caption := UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUsuApr)), 'USERTABLE', 'USERNOM'));
	    ppLblFirmaSectorista2.Caption := 'V°.B°.';
   End;
   
   ppLblMotDes.Caption := xMotDev;
   //Fin HPC_201735_COB

   ppRepDevol.Print;
   ppRepDevol.Cancel

End;

// Verifica que la devolucion se haya efectuado totalmente
Function TfExtorPrest.verificaDevTotal: currency;
Var
   XDEVTOT: CURRENCY;
   B: TBookmark;
Begin
   XDEVTOT := 0.00;
   B := CDSDEVOLUCIONES.GetBookmark;
   CDSDEVOLUCIONES.DisableControls;
   CDSDEVOLUCIONES.First;
   While Not CDSDEVOLUCIONES.Eof Do
   Begin
      XDEVTOT := XDEVTOT + CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency -
         (CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency + CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency);
      CDSDEVOLUCIONES.Next;
   End;

  //Me posiciono nuevamente en el posicion marcada
   CDSDEVOLUCIONES.GotoBookmark(B);
   CDSDEVOLUCIONES.EnableControls;
   CDSDEVOLUCIONES.FreeBookmark(B);
   Result := XDEVTOT;
End;

Procedure TfExtorPrest.BitExtPrestamoClick(Sender: TObject);
Var
   xsql: String;
   xcuenta: integer;
Begin
   //VERIFICA SI AUN TIENE CUOTAS PAGADAS POR DEVOLVER
   xSQL := 'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES, '
      //Inicio: DPP_201212_COB
      //+ '       NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
      + '       NVL(CREFLAT,0) CREFLAT,NVL(MONCOBDESGRAV,0) MONCOBDESGRAV,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
      //Fin: DPP_201212_COB
      + '       NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC,'
      + '       TRANSINTID,NUMDEV '
      + 'FROM CRE310 A '
      + 'WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''''
      + '  AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' '
      + '  AND NOT EXISTS (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
      + '                  FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
      + '                        FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, '
      + '                                     MAX(CREMTODEV) DEV '
      + '                              FROM CRE310 '
     






      + '                              WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''' '
      + '                                AND creestid<>''13'' '
      + '                              GROUP BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB,NUMDEV) '
      + '                        WHERE DEV>0) B '
      + '                  WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
      + '                    AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.NUMDEV=B.NUMDEV) '
      + 'ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';

   dm1.cdsQry2.Close;
   dm1.cdsQry2.DataRequest(xsql);
   dm1.cdsQry2.Open;

   If dm1.cdsQry2.RecordCount > 0 Then
   Begin
      ShowMessage('NO SE PUEDE EXTORNAR EL PRESTAMO, EXISTE CUOTAS PAGADAS POR DEVOLVER');
      EXIT;
   End;

//VERIFICA SI EXSITE DATOS QUE CUMPLAN LAS CONDICIONES PARA PROCESAR
   If VerifExisteData <= 0 Then
   Begin
      ShowMessage('NO EXISTE INFORMACION PROCESABLE');
      EXIT;
   End;

// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
   CargaDatosDeExtorno;
// Fin   HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos

   grbDatTransfiere.Enabled := False;
//VISIBLE A PANTALLA DE COMENTARIO DE EXTORNO PARA PROCEDER AL EXTORNO TOTAL DEL PRESTAMO
   pnlmsgExtorno.Visible := True;
   edtmsgExtorno.Text := trim(xobs);
   edtmsgExtorno.SetFocus;
End;


// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
Procedure TfExtorPrest.CargaDatosDeExtorno;
var
  cSQL, cFecha : String;
begin
  if TipDes(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)='P' Then
  begin
    cSQL:='SELECT A.BANCOID, B.BANCONOM, A.CCBCOID, A.CTAPRINC FROM TGE106 A, TGE105 B '
         +'WHERE A.CIAID=''02'' ' //AND A.BANCOID IN (''03'',''04'') '
         +  'AND A.DESCUEBAN IS NOT NULL '
         +  'and nvl(CUEEXT,''N'')=''S'' '
         +  'AND A.BANCOID=B.BANCOID ';
    DM1.cdsMovCnt1.Close;
    DM1.cdsMovCnt1.DataRequest( cSQL );
    DM1.cdsMovCnt1.Open;

    cdsTipCre := TwwClientdataset.Create(Self);
    cdsTipCre.CloneCursor( DM1.cdsMovCnt1, True );
    cdsTipCre.Name:='cdsTipCre1';
    dblcCC.LookupTable:=cdsTipCre;
    dblcCC.LookupField:='CCBCOID';

    dblcCC.Selected.Clear;
    dblcCC.Selected.Add('CCBCOID'#9'20'#9'Cuenta Corriente'#9#9);
    dblcCC.Selected.Add('BANCONOM'#9'15'#9'Banco'#9#9);

    DM1.cdsMovCnt1.Close;
  end
  else
  begin
    dblcCC.Enabled   :=False;
    dbeNumOpe.Enabled:=False;
    dtpFecOpe.Enabled:=False;
  end;

  If DM1.cdsSolicitud.FieldByName('CREESTID').AsString='04' Then
  begin
    dbeUsuario.Text   :=DM1.cdsQry3.FieldByName('USUOPE').AsString;
    dtpFecha.DateTime :=DM1.cdsQry3.FieldByName('FECOPE').AsDateTime;
    dbePeriodo.Text   :=DM1.cdsQry3.FieldByName('PERCON').AsString;
    edtmsgExtorno.Text:=DM1.cdsQry3.FieldByName('MOTEXT').AsString;
    dblcCC.Text       :=DM1.cdsQry3.FieldByName('CCBCOID').AsString;
    dbeNumOpe.Text    :=DM1.cdsQry3.FieldByName('NUMOPEBAN').AsString;
    dtpFecOpe.DateTime:=DM1.cdsQry3.FieldByName('FECOPE').AsDateTime;
  end
  else
  begin
    dbeUsuario.Text   :=DM1.wUsuario;
    dtpFecha.DateTime :=DM1.FechaSys;
    cFecha            :=DateToStr( dtpFecha.Date);
    dbePeriodo.Text   :=Copy(cFecha,7,4)+Copy(cFecha,4,2);
    edtmsgExtorno.Text      :='';
    dblcCC.Text       :='';
    dbeNumOpe.Text    :='';
    dtpFecOpe.DateTime:=0;

    dbeMtoGir.DataSource:=DM1.dsSolicitud;
    dbeMtoGir.DataField :='cremtogir';

    TNumericField(DM1.cdsSolicitud.fieldbyname('cremtogir')).DisplayFormat := '###,###.#0';

    cSQL:='SELECT '+dbeMtoGir.text+' IMPDEP FROM DUAL';
    DM1.cdsQry26.Close;
    DM1.cdsQry26.DataRequest( cSQL );
    DM1.cdsQry26.Open;
    dbeDeposito.DataSource:=DM1.dsQry26;
    dbeDeposito.DataField :='IMPDEP';

    TNumericField(DM1.cdsQry26.fieldbyname('IMPDEP')).DisplayFormat := '###,###.#0';
    TNumericField(DM1.cdsQry26.fieldbyname('IMPDEP')).EditFormat := '######.#0';

  end;

end;
// Fin   HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


// Inicio   HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
Function TfExtorPrest.TipDes(xTipPre: String): String;
Begin
   DM1.cdsTCredito.Close;
   DM1.cdsTCredito.DataRequest('SELECT TIP_DES FROM CRE110 WHERE TIPCREID= ' + QuotedStr(Trim(xTipPre)));
   DM1.cdsTCredito.Open;
   If DM1.cdsTCredito.RecordCount = 1 Then
      Result := DM1.cdsTCredito.fieldbyname('TIP_DES').AsString
   Else
      Result := '';
   DM1.cdsTCredito.Close;
End;
// Fin   HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


//Marca la devolucion como Procesadas en PRE_APR_DEV
Procedure TfExtorPrest.MarcDevPro_en_PRE_APR_DEV;
Var
   XSQL: String;
Begin
   XSQL := 'UPDATE PRE_APR_DEV '
         + '   SET FLADEVEFE            =  ''S'' '
         + ' WHERE ASOID                =  ''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString + ''' AND '
         + '       CREDID               =  ''' + DM1.cdsSolicitud.FieldByName('CREDID').AsString + ''' AND '
         + '       NVL(FLAAPR,''X'')    =  ''S'' AND'
         + '       NVL(FLADEVEFE,''X'') <> ''S'' AND'
         + '       NVL(FLAANU,''X'')    <> ''S'' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   DM1.LimpiaDatos;
   DM1.CrgDatos;
End;

Procedure TfExtorPrest.SoloDesmarcoCDSDEVOLUCIONES;
Var
   B: TBookmark;
Begin

   //Marco la posicion
   B := CDSDEVOLUCIONES.GetBookmark;
   CDSDEVOLUCIONES.DisableControls;
   CDSDEVOLUCIONES.First;
   While Not CDSDEVOLUCIONES.Eof Do
   Begin
      CDSDEVOLUCIONES.Edit;
      CDSDEVOLUCIONES.FieldByName('FLAG').AsString := '';
      CDSDEVOLUCIONES.Next
   End;

   //Me posiciono nuevamente en el posicion marcada
   CDSDEVOLUCIONES.GotoBookmark(B);
   CDSDEVOLUCIONES.EnableControls;
   CDSDEVOLUCIONES.FreeBookmark(B);

End;

//Actualiza saldo de PRE_APROBACION
Procedure TfExtorPrest.Act_Saldo_PRE_APR;
Var
   XSQL: String;
   XDEVEFE, XAPLEFE, ZDEVEFE, ZAPLEFE, ZMONREV: Currency;
   XASONUMDEV: String;

Begin
   CDSDEVOLUCIONES.First;
   XDEVEFE := 0.00;
   XAPLEFE := 0.00;
   ZDEVEFE := 0.00;
   ZAPLEFE := 0.00;
   ZMONREV := 0.00;

   While Not CDSDEVOLUCIONES.EOF Do
   Begin

      ZDEVEFE := CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency;
      ZAPLEFE := CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency;
      ZMONREV := DM1.Valores(CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsString);
      XASONUMDEV := TRIM(CDSDEVOLUCIONES.FieldByName('N.DEVOL').AsString);

       //ACTUALIZO EL DETALLE DE LA PREAPROBACION
      XSQL := 'UPDATE PRE_APR_DEV_DET SET MONDEV=' + CurrToStr(ZDEVEFE) + ',' +
         ' MONAPL=' + CurrToStr(ZAPLEFE) + ', ASONUMDEV=''' + XASONUMDEV + ''' WHERE ' +
         'ASOID=''' + xAsoid + ''' AND CREDID=''' + xCredid + ''' ' +
         'AND CRECUOTA=''' + CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString + ''' ' +
         'AND ANODEV=''' + xanodev + ''' AND CORDEV=''' + xcordev + ''' AND MONREV=' + CurrToStr(ZMONREV);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      XDEVEFE := XDEVEFE + CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency;
      XAPLEFE := XAPLEFE + CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency;
      CDSDEVOLUCIONES.Next;
   End;

//ACTUALIZA LA CABECERA DE LA PRE APROBACION
   XSQL := 'UPDATE PRE_APR_DEV SET DEVEFE=' + CurrToStr(XDEVEFE) + ', APLEFE=' + CurrToStr(XAPLEFE) + ' WHERE ' +
      'ASOID=''' + xAsoid + ''' AND CREDID=''' + xCredid + ''' ' +
      'AND ANODEV=''' + xanodev + ''' AND CORDEV=''' + xcordev + '''';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
End;

Procedure TfExtorPrest.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
//Actualizo los saldos en la PRE APROBACION
   Act_Saldo_PRE_APR;
End;

//Calcula saldo de la cuota
Function TfExtorPrest.CreSalPag(xasoid, xcredid, xFecCalculo, xCrecuota,
   xFrmPag: String): currency;
Var
   xfVenc, xSql, xOfiDes, xEstado: String;
   xSaldo: Currency;
Begin
   dm1.cdsEjecuta.Close;
   //Inicio: DPP_201212_COB
   //Adicionando el campo de Desgravamen
   //dm1.cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREAMORT,CREFLAT,CREESTID,CREMTOINT FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CRECUOTA=' + xCreCuota + ' AND CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA');
   dm1.cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREAMORT,CREFLAT,CREESTID,CREMTOINT, MONPACDESGRAV,MONCOBDESGRAV FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CRECUOTA=' + xCreCuota + ' AND CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA');
   //Fin: DPP_201212_COB
   dm1.cdsEjecuta.Open;
   dm1.cdsEjecuta.First;

   xSaldo := 0;
   xfVenc := Trim(dm1.cdsEjecuta.fieldbyname('CREANO').AsString + dm1.cdsEjecuta.fieldbyname('CREMES').AsString);
   xEstado := dm1.cdsEjecuta.fieldbyname('CREESTID').AsString;

   //ES ANTICIPADO SEGUN FECHA Y QUE NO SE HAYA COBRADO INTERESES
   If (xfVenc > xFecCalCulo) And (dm1.cdsEjecuta.FieldByName('CREMTOINT').AsCurrency = 0) Then
   Begin
      If dm1.cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency > 0 Then
         xSaldo := xSaldo + (dm1.cdsEjecuta.fieldbyname('CREAMORT').AsCurrency + dm1.cdsEjecuta.fieldbyname('CREFLAT').AsCurrency) - dm1.cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency
      Else
         xSaldo := xSaldo + (dm1.cdsEjecuta.fieldbyname('CREAMORT').AsCurrency + dm1.cdsEjecuta.fieldbyname('CREFLAT').AsCurrency);
   End
   Else
   Begin
      xSaldo := xSaldo + (dm1.cdsEjecuta.fieldbyname('CREMTO').AsCurrency - dm1.cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency);
   End;

   dm1.cdsEjecuta.Close;
   Result := xSaldo;

End;

//Actualiza los datos modificados por el SECTORISTA
Procedure TfExtorPrest.BitBtn2Click(Sender: TObject);
Var
   XSQL: String;
Begin
   XSQL := 'SELECT NVL(A.IMPDEV,0) IMPDEV2, NVL(A.IMPAPL,0) IMPAPL2, '
      + '  A.ASOID, A.CREDID, A.TIPCREID, A.ASOAPENOM, A.ASOCODMOD, A.IMPREV, A.IMPDEV, A.IMPAPL, '
      + '  A.FLAEXTPRE, A.USUCRE, A.FECCRE, A.HORCRE, A.FLAAPR, A.USUAPR, A.FECAPR, A.HORAPR, '
      + '  A.MOTDES, A.MOTDEV, A.FLADEVEFE, A.USUDEV, A.FECDEV, A.HORDEV, A.ANODEV, A.CORDEV, '
      + '  A.FLAANU, A.FECANU, A.HORANU, A.USUANU, A.FORPAGID, A.AGEBAN, A.DEVEFE, A.APLEFE, '
      + '  A.FLAIMPREV, A.OFDESPAG '
      + 'FROM PRE_APR_DEV A '
      + 'WHERE ASOID=''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString + ''' '
      + '  AND ANODEV=''' + xanodev + ''' AND CORDEV=''' + xcordev + ''' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
   lblImpAprDev.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.FieldByName('IMPDEV2').AsFloat);
   lblImpAprApl.Caption := FormatFloat('###,##0.#0', DM1.cdsQry.FieldByName('IMPAPL2').AsFloat);

   If (DM1.cdsQry.FieldByName('IMPDEV2').AsFloat > 0) And (DM1.cdsQry.FieldByName('IMPAPL2').AsFloat = 0) Then
   Begin
      rdgAplDev.ItemIndex := 1;
      rdgAplDev.Enabled := False;
   End
   Else
      If (DM1.cdsQry.FieldByName('IMPAPL2').AsFloat > 0) And (DM1.cdsQry.FieldByName('IMPDEV2').AsFloat = 0) Then
      Begin
         rdgAplDev.ItemIndex := 0;
         rdgAplDev.Enabled := False;
      End
      Else
      Begin
         rdgAplDev.ItemIndex := 0;
         rdgAplDev.Enabled := True;
      End;

   DM1.cdsQry.Close;
End;

//CARGA LOS DATOS NO CONSIDERANDO EL PRIMER PASO DE REVERSION;
Procedure TfExtorPrest.CargaDatos2;
Var
   XSQL, NABOCRED, xtrans: String;
   xtotal: currency;
Begin
   If DM1.cdsQry.Active Then DM1.cdsQry.Close;
   If DM1.cdsQry2.Active Then DM1.cdsQry2.Close;
   If DM1.cdsQry3.Active Then DM1.cdsQry3.Close;

   xAsoId := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
   xNroNabo := TRIM(DM1.cdsSolicitud.fieldbyname('NRONABO').AsString);
   xtotal := 0;

   //Si tiene nota de abono
   If (DM1.cdsSolicitud.FieldByName('CREMTONABO').AsCurrency > 0) And (DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString <> '10') Then
   Begin
      //SI TIENE MONTO DE NOTA DE ABONO Y NO TO TIENEN EL NRO DE NOTA DE ABONO LO TOMO DEL CAMPO MOT_PRE (REGISTRO DE MIGRACION)
      If Length(trim(xNroNabo)) = 0 Then
      Begin
         xNroNabo := TRIM(DM1.cdsSolicitud.fieldbyname('MOT_PRE').AsString);
      End;

       //TOMO EL NUMERO DEL PRESTAMO QUE AFECTO LA NOTA DE ABONO
      XSQL := 'SELECT CREDID FROM CRE310 WHERE ASOID=''' + xAsoid + ''' AND TRIM(NRONABO) =''' + xNronabo + '''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(XSQL);
      DM1.cdsQry.Open;
      NABOCRED := DM1.cdsQry.FieldByName('CREDID').AsString;

      xSQL := 'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES, '
         //Inicio: DPP_201212_COB
         //Adicionando el campo de Desgravamen
         //+ '       NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
         + '       NVL(CREFLAT,0) CREFLAT,NVL(MONCOBDESGRAV,0) MONCOBDESGRAV,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
         //Fin: DPP_201212_COB
         + '       NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC,'
         + '       TRANSINTID,NUMDEV '
         + 'FROM CRE310 A '
         + 'WHERE ASOID=''' + xAsoid + ''' and TRIM(NRONABO)=''' + xNronabo + ''' '
         + '  AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' '
         + '  AND NOT EXISTS (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
         + '                  FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
         + '                        FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, '
         + '                                     MAX(CREMTODEV) DEV '
         + '                              FROM CRE310 '
       






         + '                              WHERE ASOID=''' + xAsoid + ''' AND credid =''' + NABOCRED + ''' '
         + '                                AND creestid<>''13'' '
         + '                              GROUP  BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB,NUMDEV) '
         + '                        WHERE DEV>0) B '
         + '                  WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
         + '                    AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.NUMDEV=B.NUMDEV) '
         + 'ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsql);
      DM1.cdsQry.Open;

      CDSNABONO.EmptyDataSet;
      CDSCTASPAG.EmptyDataSet;

      edtmsgExtorno.Text := '';
      edtPrestamo.Text := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
      edtNotaAbono.Text := DM1.cdsSolicitud.FieldByName('NRONABO').AsString;
      edtMtoNtoAbono.Text := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldByName('CREMTONABO').AsFloat);
      edtMtoAprobado.Text := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldBynAME('CREMTOOTOR').AsFloat);

      If dm1.cdsSolicitud.FieldByName('CREESTID').AsString = '04' Then edtmsg.Text := 'PRESTAMO OTORGADO Y NOTAS DE ABONO YA EXTORNADOS';

   //Adiciona notas de abono ha anular en CDS
      Try
         If (dm1.cdsQry.RecordCount > 0) And
            (dm1.cdsSolicitud.FieldByName('CREESTID').AsString <> '04') And
            (dm1.cdsSolicitud.FieldByName('CREESTID').AsString <> '13') Then

         Begin
            dm1.cdsQry.First;
            edtNotaAbono.Text := DM1.cdsQry.FieldByname('NRONABO').AsString;
            While Not dm1.cdsQry.Eof Do
            Begin
            //Modificación - Ricardo Medina - 20/02/2008
               If Length(trim(DM1.cdsQry.FieldByname('TRANSINTID').AsString)) = 0 Then
                  xtrans := 'X'
               Else
                  xtrans := DM1.cdsQry.FieldByname('TRANSINTID').AsString;
            //Fin de la modificación
               CDSNABONO.Insert;
               CDSNABONO.FieldByName('ASOID').AsString := DM1.cdsQry.FieldByname('ASOID').AsString;
               CDSNABONO.FieldByName('CREDID').AsString := DM1.cdsQry.FieldByname('CREDID').AsString;
               CDSNABONO.FieldByName('CRECUOTA').AsString := DM1.cdsQry.FieldByname('CRECUOTA').AsString;
               CDSNABONO.FieldByName('CREAMORT').AsString := DM1.cdsQry.FieldByname('CREAMORT').AsString;
               CDSNABONO.FieldByName('CREINTERES').AsString := DM1.cdsQry.FieldByname('CREINTERES').AsString;
               CDSNABONO.FieldByName('CREFLAT').AsString := DM1.cdsQry.FieldByname('CREFLAT').AsString;
               //Inicio: DPP_201212_COB
               //Seteando el campo de Desgravamen
               CDSNABONO.FieldByName('MONCOBDESGRAV').AsString := DM1.cdsQry.FieldByname('MONCOBDESGRAV').AsString;
               //Fin: DPP_201212_COB
               CDSNABONO.FieldByName('CREMTOCOB').AsString := DM1.cdsQry.FieldByname('CREMTOCOB').AsString;
               CDSNABONO.FieldByName('CREFPAG').AsString := FormatDateTime('dd/mm/yyyy', DM1.cdsQry.FieldByname('CREFPAG').AsDateTime);
               CDSNABONO.FieldByName('NRONABO').AsString := DM1.cdsQry.FieldByname('NRONABO').AsString;
               CDSNABONO.FieldByName('NROOPE').AsString := DM1.cdsQry.FieldByname('NROOPE').AsString;
               CDSNABONO.FieldByName('FOPERAC').AsString := FormatDateTime('dd/mm/yyyy', DM1.cdsQry.FieldByname('FOPERAC').AsDateTime);
            //Modificación - Ricardo Medina - 20/02/2008
               CDSNABONO.FieldByName('TRANSINTID').AsString := xtrans;
            //Fin de la modificación
               DM1.CDSQRY.Next;
            End;
            TabSheet1.TabVisible := True;
            CDSNABONO.First;
         End
         Else
            TabSheet1.TabVisible := False;

      Except TabSheet1.TabVisible := False;
      End;

   End; //END NOTA DE ABONO
//Inicio: DPP_201212_COB
     xSQL := 'select ANODEV, ASOID, CREDID, CRECUOTA, MONREV, CORDEV, MONDEV, MONAPL, '
      + '       CREFPAG, NROOPE, FOPERAC, NRONABO, ASONUMDEV, TRANSINTID, CREMTOCOB, '
      //Adicionando el campo de Amortización, Exceso y Desgravamen
      //+ '       CREINTERES, CREFLAT, FORPAGID from PRE_APR_DEV_DET '
      + '       CREAMORT,CREMTOEXC, CREINTERES, CREFLAT, FORPAGID, MONCOBDESGRAV from PRE_APR_DEV_DET '
//Fin: DPP_201212_COB
      + 'WHERE CORDEV=''' + XCORDEV + ''' AND ANODEV=''' + XANODEV + ''' '
      + 'ORDER BY CREFPAG DESC,CRECUOTA';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If dm1.cdsQry.RecordCount > 0 Then
   Begin
      dm1.cdsQry.First;
      ZAplicacion := 0;
      While Not dm1.cdsQry.Eof Do
      Begin
         CDSDEVOLUCIONES.Insert;
         CDSDEVOLUCIONES.FieldByName('CREDID').AsString := DM1.cdsQry.FieldByName('CREDID').AsString;
         CDSDEVOLUCIONES.FieldByName('CRECUOTA').AsString := DM1.cdsQry.FIeldByName('CRECUOTA').AsString;
         CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency := DM1.cdsQry.FieldByName('MONREV').AsCurrency;
         CDSDEVOLUCIONES.FieldByName('DEV').AsString := 'CU';
         CDSDEVOLUCIONES.FieldByName('CREFPAG').AsString := DM1.cdsQry.FieldByName('CREFPAG').AsString;
         CDSDEVOLUCIONES.FieldByName('NROOPE').AsString := DM1.cdsQry.FieldByName('NROOPE').AsString;
         CDSDEVOLUCIONES.FieldByName('FOPERAC').AsString := DM1.cdsQry.FieldByName('FOPERAC').AsString;
         CDSDEVOLUCIONES.FieldByName('NRONABO').AsString := DM1.cdsQry.FieldByName('NRONABO').AsString;
         CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency := DM1.cdsQry.FieldByName('MONDEV').AsCurrency;
         CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency := DM1.cdsQry.FieldByName('MONAPL').AsCurrency;
         CDSDEVOLUCIONES.FieldByName('N.DEVOL').AsString := DM1.cdsQry.FieldByName('ASONUMDEV').AsString;
      //Inicio: DPP_201212_COB
      // ADICIONA LOS CAMPOS DE EXCESO,AMORTIZACION,INTERES, DESGRAVAMEN Y FLAT A DEVOLVER
         CDSDEVOLUCIONES.FieldByName('CREAMORT').AsCurrency   := DM1.cdsQry.FieldByName('CREAMORT').AsCurrency;
         CDSDEVOLUCIONES.FieldByName('CREINTERES').AsCurrency := DM1.cdsQry.FieldByName('CREINTERES').AsCurrency;
         CDSDEVOLUCIONES.FieldByName('CREFLAT').AsCurrency    := DM1.cdsQry.FieldByName('CREFLAT').AsCurrency;
         CDSDEVOLUCIONES.FieldByName('MONCOBDESGRAV').AsCurrency    := DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsCurrency;
         CDSDEVOLUCIONES.FieldByName('CREMTOEXC').AsCurrency  := DM1.cdsQry.FieldByName('CREMTOEXC').AsCurrency;
      //Fin: DPP_201212_COB
         ZAplicacion := ZAplicacion + CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency;

         dm1.cdsQry.Next;
      End;
   End;

   CDSDEVOLUCIONES.Last;
   CDSDEVOLUCIONES.First;
   If CDSDEVOLUCIONES.RecordCount > 0 Then TabSheet3.TabVisible := True;
   actFooter;
   TabSheet2.TabVisible := False;

   //Verifica si solo falto el extorno para terminar el proceso
   If (verificaDevTotal = 0) And (chkEstornaPrestamo.Checked) Then
   Begin
      ShowMessage('EL PROCESO DE DEVOLUCION Y/O APLICACION A CONCLUIDO EN SU TOTALIDAD, SOLO FALTA  EXTORNAR EL PRESTAMO');
      BitExtPrestamo.Enabled := True;
      fsbProcesa.Enabled := False;
   End;

End;

//ACTUALIZAFOOTER
Procedure TfExtorPrest.actFooter;
Var
   B: TBookmark;
   xCREMTOCOB, xDEVOEFECTUADA, xDEVAPLICADA: currency;
Begin
   dbgDevoluciones.ColumnByName('CREMTOCOB').FooterValue := '0.00';
   dbgDevoluciones.ColumnByName('DEVOEFECTUADA').FooterValue := '0.00';
   dbgDevoluciones.ColumnByName('DEVAPLICADA').FooterValue := '0.00';
  //Guardo la posicion
   B := CDSDEVOLUCIONES.GetBookmark;
   CDSDEVOLUCIONES.DisableControls;

   CDSDEVOLUCIONES.First;
   xDEVAPLICADA := 0;
   xCREMTOCOB := 0;
   xDEVOEFECTUADA := 0;

   While Not CDSDEVOLUCIONES.Eof Do
   Begin
      xDEVAPLICADA := xDEVAPLICADA + CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').ascurrency;
      xCREMTOCOB := xCREMTOCOB + CDSDEVOLUCIONES.FieldByName('CREMTOCOB').ascurrency;
      xDEVOEFECTUADA := xDEVOEFECTUADA + CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').ascurrency;
      CDSDEVOLUCIONES.Next;
   End;

   dbgDevoluciones.ColumnByName('CREMTOCOB').FooterValue := FormatCurr('###,##0.#0', xCREMTOCOB);
   dbgDevoluciones.ColumnByName('DEVOEFECTUADA').FooterValue := FormatCurr('###,##0.#0', xDEVOEFECTUADA);
   dbgDevoluciones.ColumnByName('DEVAPLICADA').FooterValue := FormatCurr('###,##0.#0', xDEVAPLICADA);
   dbgDevoluciones.RefreshDisplay;

  //Me posiciono nuevamente en el posicion marcada
   CDSDEVOLUCIONES.GotoBookmark(B);
   CDSDEVOLUCIONES.EnableControls;
   CDSDEVOLUCIONES.FreeBookmark(B);

End;

// el puntero lo pongo en el lugar marcado en el CDDEVOLUCION, esto se hace porque aveces mueven el mouse al
// otro registro

Procedure TfExtorPrest.Puntero;

Begin
   CDSDEVOLUCIONES.First;
   While Not CDSDEVOLUCIONES.Eof Do
   Begin
      If CDSDEVOLUCIONES.FieldByName('flag').AsString = '1' Then break;
      CDSDEVOLUCIONES.Next;
   End;
   dbgDevoluciones.Refresh;
End;

//Calcula lo importe cobrado en ese prestamo:
Function TfExtorPrest.CreImpPag(xasoid, xcredid,
   xcrecuota: String): currency;
Var
   xsql: String;
   xImporte: currency;

Begin

//VERIFICA SI AUN TIENE CUOTAS PAGADAS POR DEVOLVER
   XSQL := 'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES, '
      //Inicio: DPP_201212_COB
      //Adicionando el campo de Desgravamen
      //+ '       NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
      + '       NVL(CREFLAT,0) CREFLAT,NVL(MONCOBDESGRAV,0) MONCOBDESGRAV, NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC, '
      //Fin: DPP_201212_COB
      + '       NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC,'
      + '       TRANSINTID,NUMDEV '
      + 'FROM CRE310 A '
      + 'WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + '''  AND crecuota =''' + xCrecuota + ''''
      + '  AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' '
      + '  AND NOT EXISTS (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
      + '                  FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, DEV '
      + '                        FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV, '
      + '                                     MAX(CREMTODEV) DEV '
      + '                              FROM CRE310 '
  






      + '                              WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''' '
      + '                                AND crecuota =''' + xCrecuota + ''' AND creestid<>''13'' '
      + '                              GROUP BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB,NUMDEV) '
      + '                        WHERE DEV>0) B '
      + '                  WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA '
      + '                    AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.NUMDEV=B.NUMDEV) '
      + 'ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';
   xImporte := 0;
   DM1.cdsTRela.Close;
   DM1.cdsTRela.DataRequest(XSQL);
   DM1.cdsTRela.Open;

   If DM1.cdsTRela.RecordCount > 0 Then
   Begin
      While Not dm1.cdsTRela.eof Do
      Begin
         xImporte := xImporte + dm1.cdsTRela.FieldByName('CREMTOCOB').AsCurrency;
         dm1.cdsTRela.Next;
      End;
      Result := xImporte;
   End
   Else
      Result := 0;

   RCREFPAG := DM1.cdsTRela.FieldByName('CREFPAG').AsDateTime;
End;

//Impresion de Documento de Devolucin Aplicada (No desembolsadas)
Procedure TfExtorPrest.ImprDevApli;

Var
   xTipDes, xMeses, xNroDev: String;
   xCremToCob: Currency;
   xLin: Integer;

Begin

   DM1.xSgr := '1'; //OJO FUERZO A QUE SEA 1 HASTA AVERIGUAR PARA QUE SIRVE
   xTipDes := 'DEVOLUCION APLICADA A OTRAS CUOTAS';
   ppLblDesem.Caption := xTipDes + ' - Equipo de Cobranzas';
   ppLTotal.Caption := 'TOTAL DEVOLUCIONES APLICADAS :';
   ppMeses.Lines.Text := '';
   xCremToCob := 0;
   xMeses := '';

   CDSAPLICADOS.EmptyDataSet;
   CDSDEVOLUCIONES.First;

   xLin := 0;
   While Not CDSDEVOLUCIONES.Eof Do
   Begin
      If CDSDEVOLUCIONES.FieldByname('DEVAPLICADA').AsFloat > 0 Then
      Begin
         xNroDev := CDSDEVOLUCIONES.FieldByname('N.DEVOL').AsString;
         CaptDestinoAplicado(xAsoid, CDSDEVOLUCIONES.FieldByname('CREDID').AsString, CDSDEVOLUCIONES.FieldByname('NROOPE').AsString, CDSDEVOLUCIONES.FieldByname('CRECUOTA').AsString);
         xLin := xLin + 1;
         xCremToCob := xCremToCob + CDSDEVOLUCIONES.FieldByname('DEVAPLICADA').AsFloat;
         If xLin < 3 Then
            xMeses := xMeses + 'F.Pag:' + CDSDEVOLUCIONES.FieldByname('CREFPAG').AsString + ' Cuo.:' + Format('%.2d', [CDSDEVOLUCIONES.FieldByname('CRECUOTA').AsInteger]) + ':' + DM1.StrSpace(FormatFloat('##,###.#0', CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsFloat), 7) + '   '
         Else
         Begin
            xLin := 0;
            xMeses := xMeses + 'F.Pag:' + CDSDEVOLUCIONES.FieldByname('CREFPAG').AsString + ' Cuo.:' + Format('%.2d', [CDSDEVOLUCIONES.FieldByname('CRECUOTA').AsInteger]) + ':' + DM1.StrSpace(FormatFloat('##,###.#0', CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsFloat), 7) + #13;
         End;
      End;
      CDSDEVOLUCIONES.Next;
   End;

   ppMeses.Lines.Add('CONCEPTO  : APLICACION DE DEVOLUCION');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('POR LAS CUOTAS DEL CREDITO N ' + xCredid + ' (En Nuevos Soles)');
   ppMeses.Lines.Add('---------------------------------------------------------------------');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add(Copy(xMeses, 1, Length(Trim(xMeses))));
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('Nota :' + xobs);
   ppLblTitulo.Caption := xTipDes + ' N ' + Trim(xNroDev) + '-' + Copy(DateToStr(DM1.FechasOutPut(DtpFecReg.Date)), 7, 4) + '-' + 'DM-COB';
   pplFirmaAso.Caption := trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString);

   If DM1.xSgr = '1' Then
   Begin
      PPLblDni.Caption := DM1.cdsAso.FieldByName('ASODNI').AsString;
      ppLblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
      ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      ppLblFecDoc.Caption := DateToStr(DM1.FechasOutPut(DtpFecDev.Date));
      ppLblDpto.Caption := DM1.CrgDescrip('DPTOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('DPTOID').AsString)), 'APO158', 'DPTODES');
      ppLblCodPag.Caption := DM1.cdsAso.FieldByName('ASOCODPAGO').AsString;
      ppLblUproc.Caption := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
      ppLblMonDev.Caption := FormatFloat('###,###.#0', xCremToCob);
      ppLblUsuario.Caption := 'Hecho Por :' + Trim(DM1.wUsuario);
   End
   Else
   Begin
      PPLblDni.Caption := DM1.cdsQry3.FieldByName('ASODNI').AsString;
      ppLblNomGen.Caption := DM1.cdsQry3.FieldByName('ASOAPENOM').AsString;
      ppLblCodMod.Caption := DM1.cdsQry3.FieldByName('ASOCODMOD').AsString;
      ppLblFecDoc.Caption := DM1.cdsQry3.FieldByName('ASOFECDEV').AsString;
      ppLblDpto.Caption := DM1.CrgDescrip('DPTOID=' + QuotedStr(Trim(DM1.cdsQry3.FieldByName('DPTOID').AsString)), 'APO158', 'DPTODES');
      ppLblCodPag.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsQry3.FieldByName('ASOID').AsString)), 'APO201', 'ASOCODPAGO');
      ppLblUproc.Caption := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsQry3.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
      ppLblMonDev.Caption := FormatFloat('###,###.#0', DM1.Valores(DM1.cdsQry3.FieldByName('ASOMONDEV').AsString));
      ppLblUsuario.Caption := 'Hecho Por :' + Trim(DM1.cdsQry3.FieldByName('USUARIO').AsString);
   End;
   CDSAPLICADOS.First;
   ppRepDevol.Print;
   ppRepDevol.Cancel;
End;

//Procedimiento que captura el destino de las aplicaciones

Procedure TfExtorPrest.CaptDestinoAplicado(xasoid, xcredid, xnroope,
   xcrecuota: String);

Var
   xsql: String;

Begin
   xsql :=
      'SELECT ASOID,CREDID,CRECUOTA,NROOPE,CREMTOCOB,CREMTOCOBNEW FROM ' +
      '(SELECT A.ASOID,A.CREDID,A.CRECUOTA,B.NROOPE,B.FOPERAC,B.CREMTOCOB,B.CREDOCPAG,A.CREDIDOLD,A.CRECUOTAOLD,A.CREMTOCOB CREMTOCOBNEW  FROM ' +
      '(SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,SUBSTR(CREOBS,17,15) CREDIDOLD,SUBSTR(CREOBS,33,3) CRECUOTAOLD,CREFPAG,CREDOCPAG ' +
      ' FROM CRE310 WHERE TIPOCONT=''APL'' AND ASOID=''' + xasoid + ''' ) A,CRE310 B ' +
      ' WHERE B.ASOID=A.ASOID  AND B.CREDID=A.CREDIDOLD AND LPAD(B.CRECUOTA,3,''0'')=A.CRECUOTAOLD  AND A.CREFPAG=B.CREFPAG AND B.CREESTID=''99'') D ' +
      'WHERE  CREDIDOLD=''' + xcredid + ''' AND CRECUOTAOLD=''' + DM1.StrZero(xcrecuota, 3) + ''' AND NROOPE=''' + xnroope + ''' ';

   dm1.cdsResol.Close;
   dm1.cdsResol.DataRequest(xsql);
   dm1.cdsResol.Open;

   dm1.cdsResol.First;
   If dm1.cdsResol.RecordCount > 0 Then
   Begin
      While Not dm1.cdsResol.Eof Do
      Begin
         CDSAPLICADOS.Insert;
         CDSAPLICADOS.FieldByName('ASOID').AsString := DM1.cdsResol.FieldByName('ASOID').AsString;
         CDSAPLICADOS.FieldByName('CREDID').AsString := copy(DM1.cdsResol.FieldByName('CREDID').AsString, 9, 7);
         CDSAPLICADOS.FieldByName('CRECUOTA').AsString := DM1.cdsResol.FieldByName('CRECUOTA').AsString;
         CDSAPLICADOS.FieldByName('NROOPE').AsString := DM1.cdsResol.FieldByName('NROOPE').AsString;
         CDSAPLICADOS.FieldByName('CREMTOCOB').AsCurrency := DM1.cdsResol.FieldByName('CREMTOCOB').AsCurrency;
         CDSAPLICADOS.FieldByName('CREMTOCOBNEW').AsCurrency := DM1.cdsResol.FieldByName('CREMTOCOBNEW').AsCurrency;
         dm1.cdsResol.Next;
      End;
   End;

End;

Procedure TfExtorPrest.ppdbCREMTOCOBNEWPrint(Sender: TObject);
Begin
   ZaplicacionRep := ZaplicacionRep + DM1.Valores(ppdbCREMTOCOBNEW.Text);
End;

Procedure TfExtorPrest.ppVCREMTOCOBNEWPrint(Sender: TObject);
Begin
   ppVCREMTOCOBNEW.Value := ZAplicacion;
End;

Procedure TfExtorPrest.PageControl1Change(Sender: TObject);
Begin
   actFooter;
End;

Procedure TfExtorPrest.chkConInteresClick(Sender: TObject);
Var
   vAsoid, vCredid, vCrecuota, vfCalc: String;
   xSaldoReg: Currency;
Begin

   vAsoid := dm1.cdsCuotas.FieldByName('ASOID').AsString;
   vCredid := dm1.cdsCuotas.FieldByName('CREDID').AsString;
   vCrecuota := dm1.cdsCuotas.FieldByName('CRECUOTA').AsString;

  //Si es con interes el vfCalc toma la fecha de vencimiento de lo contrario la fecha de pago
   If chkConInteres.Checked Then
      vfCalc := dm1.cdsCuotas.FieldByName('CREFVEN').AsString
   Else
      vfCalc := Trim(Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)), 7, 4) + Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)), 4, 2));

   xSaldoP := CreSalPag(vAsoid, vCreDid, vfCalc, vCrecuota, edtForPag.Text);

  //calcula saldo del registro posecionado
   xSaldoReg := CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency - (CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency + CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency);

  //Aqui calculo el monto a aplicar
   If (DM1.Valores(lblImpAprApl.Caption) - ZAplicacion = xSaldoP) And (xSaldoP = xSaldoReg) Then
      EdtMonCob.Text := FormatFloat('###,###.#0', xSaldoP)
   Else
      If (DM1.Valores(lblImpAprApl.Caption) - ZAplicacion < xSaldoP) And (xSaldoReg >= DM1.Valores(lblImpAprApl.Caption) - ZAplicacion) Then
         EdtMonCob.Text := FormatFloat('###,###.#0', DM1.Valores(lblImpAprApl.Caption) - ZAplicacion)
      Else
         If xSaldoReg <= xSaldoP Then
            EdtMonCob.Text := FormatFloat('###,###.#0', xSaldoReg)
         Else
            If xSaldoReg > xSaldoP Then
               EdtMonCob.Text := FormatFloat('###,###.#0', xSaldoP);

   EdtMonPag.Text := FormatFloat('###,###.#0', xSaldoP);

End;

Procedure TfExtorPrest.DBGCuotasDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

   If dm1.CdsCuotas.FieldByName('REP').AsString = 'R' Then
   Begin
      DBGCUOTAS.Canvas.Font.Color := clTeal;
      DBGCUOTAS.DefaultDrawDataCell(rect, Field, State);
   End;

End;

//Verifica que halla marcado
//los registro a aplicar o devolver
Function TfExtorPrest.VerfMarca: currency;
Var
   XTOTAL: CURRENCY;
   B: TBookmark;
Begin
// Guardo la posicion
   B := CDSDEVOLUCIONES.GetBookmark;
   CDSDEVOLUCIONES.DisableControls;
   CDSDEVOLUCIONES.First;

   xtotal := 0;
   While Not CDSDEVOLUCIONES.eof Do
   Begin
      If CDSDEVOLUCIONES.FieldByName('Flag').AsString = '1' Then
      Begin
         xtotaL := xtotal + (CDSDEVOLUCIONES.FieldByName('CREMTOCOB').AsCurrency -
            CDSDEVOLUCIONES.FieldByName('DEVAPLICADA').AsCurrency -
            CDSDEVOLUCIONES.FieldByName('DEVOEFECTUADA').AsCurrency);
      End;
      CDSDEVOLUCIONES.Next;
   End;

   CDSDEVOLUCIONES.First;
// Me posiciono nuevamente en el posicion marcada
   CDSDEVOLUCIONES.GotoBookmark(B);
   CDSDEVOLUCIONES.EnableControls;
   CDSDEVOLUCIONES.FreeBookmark(B);
   Result := xtotal;
End;

procedure TfExtorPrest.FormCreate(Sender: TObject);
begin
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
end;




// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
procedure TfExtorPrest.bbtnImpClick(Sender: TObject);
var
   xSQL : String;
begin
   xSQL:='SELECT A.ASOID, A.CREDID, A.ASODNI, A.ASOCODMOD, A.ASOAPENOM, A.ASOTIPID, A.TIPDESEID, '
        +  'A.CREFOTORG, A.CREMTOOTOR, A.CREMTOGIR, A.TIPCREID, B.USUOPE, B.FECOPE, B.HOROPE, '
        +  'B.NUMOPEBAN, B.FECDEP, '
        +  'A.USEID, C.USENOM, D.TIPCREDES, E.TIPDESEDES, B.MOTEXT, B.CCBCOID, H.ASOTIPDES, '
        +  ''''+DM1.wUsuario+''' USUARIO, F.BANCOID, G.BANCONOM, B.CCBCOID||'' - ''||G.BANCONOM ORIREC, '
        +  'B.TIPDEV '
        +'FROM CRE301 A, CRE_EXT_CRE B, APO101 C, CRE110 D, CRE104 E, TGE106 F, TGE105 G, APO107 H '
        +'WHERE A.ASOID=''' +DM1.cdsSolicitud.FieldByName('ASOID').AsString +''' '
        +  'AND A.CREDID='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' '
        +  'AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
        +  'AND A.USEID=C.USEID(+) AND A.UPROID=C.UPROID(+) AND A.UPAGOID=C.UPAGOID(+) '
        +  'AND A.TIPCREID=D.TIPCREID(+) '
        +  'AND A.TIPDESEID=E.TIPDESEID(+) '
        +  'AND F.CIAID(+)=''02'' AND F.CCBCOID(+)=B.CCBCOID AND F.BANCOID=G.BANCOID(+) '
        +  'AND A.ASOTIPID=H.ASOTIPID(+)';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   if DM1.cdsQry1.RecordCount <= 0 Then
   begin
      ShowMessage('Error al Imprimir');
      Exit;
   end;

   ppdb2.DataSource:=DM1.dsQry1;

   xSQL:='SELECT C.CIAID, C.TDIARID, C.CUENTAID, E.CTADES, C.CNTGLOSA, C.CNTNODOC, '
        +  'C.CCOSID, C.CNTDEBEMN, C.CNTHABEMN, C.CNTREG, C.CNTCOMPROB '
        +'FROM CNT300 A, CNT311 C, TGE202 E '
        +'WHERE A.CIAID=''02'' AND A.CNTANOMM='''+dbePeriodo.Text+''' AND A.CNTLOTE=''EXCO'' '
        +  'AND A.CNTGLOSA=''EXTORNO : '+DM1.cdsSolicitud.FieldByname('CREDID').AsString+''' '
        +  'AND A.CIAID=C.CIAID AND A.TDIARID=C.TDIARID AND A.CNTANOMM=C.CNTANOMM '
        +  'AND A.CNTCOMPROB=C.CNTCOMPROB '
        +  'and C.CIAID=E.CIAID(+) AND C.CUENTAID=E.CUENTAID(+) '
        +'UNION ALL '
        +'SELECT C.CIAID, C.TDIARID, C.CUENTAID, E.CTADES, C.CNTGLOSA, C.CNTNODOC, '
        +  'C.CCOSID, C.CNTDEBEMN, C.CNTHABEMN, C.CNTREG, C.CNTCOMPROB '
        +'FROM CNT300 A, CNT301 C, TGE202 E '
        +'WHERE A.CIAID=''02'' AND A.CNTANOMM='''+dbePeriodo.Text+''' AND A.CNTLOTE=''EXCO'' '
        +  'AND A.CNTGLOSA=''EXTORNO : '+DM1.cdsSolicitud.FieldByname('CREDID').AsString+''' '
        +  'AND A.CIAID=C.CIAID AND A.TDIARID=C.TDIARID AND A.CNTANOMM=C.CNTANOMM '
        +  'AND A.CNTCOMPROB=C.CNTCOMPROB '
        +  'and C.CIAID=E.CIAID(+) AND C.CUENTAID=E.CUENTAID(+) '
        +'order by TDIARID, CNTREG ';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;
   if DM1.cdsQry2.RecordCount <= 0 Then
   begin
      ShowMessage('Error al Imprimir');
      Exit;
   end;

   ppdb1.DataSource:=DM1.dsQry2;
   ppr1.Print;
   //ppd1.ShowModal;
   ppr1.Stop;
end;
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
procedure TfExtorPrest.BitBtn4Click(Sender: TObject);
begin
   edtmsgExtorno.Text := '';
   pnlmsgExtorno.Visible := False;
   grbDatTransfiere.Enabled := True;
   cdsTipCre.Free;
end;
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
procedure TfExtorPrest.AsientoContable;
var
   xSQL, xSQLCNT311 : String;
   xNReg : Integer;
   xTotHaber, xTotHaber2 : Double;
   cTD30, cTD28 : String;
begin
   Screen.Cursor:=crHourGlass;

   cLote   :='EXCO';
   cTD30   :='30';
   cTD28   :='28';
   xOrigen :=cTD30;
   xPeriodo:=dbePeriodo.Text;

   xSQL:='Select TIPDESEID, TIPDESEABR from CRE104 '
        +'WHERE TIPDESEID='''+DM1.cdsSolicitud.FieldByname('TIPDESEID').AsString+''' ';
   DM1.cdsTipDesem.Close;
   DM1.cdsTipDesem.DataRequest( xSQL );
   DM1.cdsTipDesem.Open;

   ///
   /// CONTABILIZACION DEL CREDITO OTORGADO
   ///

   ContabilizaCreditosOtorgadosInicializa;

   xSQL:='Select ciaid, tdiarid, cntcomprob, cntano, cntanomm, cntlote, cuentaid, clauxid, auxid, docid, cntserie, '
        +   'cntnodoc, cntglosa, cntdh, ccosid, cnttcambio, cntmtoori, cntmtoloc, cntmtoext, cntfemis, cntfvcmto, '
        +   'cntfcomp, cntestado, cntcuadre, cntfautom, cntuser, cntfreg, cnthreg, cntmm, cntdd, cnttri, cntsem, cntss, '
        +   'cntaatri, cntaasem, cntaass, tmonid, flagvar, fcons, cntfmec, tdiardes, ctades, auxdes, docdes, ccosdes, '
        +   'cntdebemn, cntdebeme, cnthabemn, cnthabeme, cntsaldmn, cntsaldme, campovar, cntts, cntpagado, cntmoddoc, '
        +   'cntreg, modulo, cta_secu from CNT311 A '
        +'WHERE CIAID=''02'' AND TDIARID='''+cTD30+''' AND CNTANOMM='''+dbePeriodo.Text+''' '
        +  'AND CNTCOMPROB='''+xNoComp+'''';
   DM1.cdsMovCnt1.Close;
   DM1.cdsMovCnt1.DataRequest( xSQL );
   DM1.cdsMovCnt1.Open;

   GeneraDataCredito;

   xNReg:=0;

   xTotHaber:=0;
   xTotHaber2:=0;

   DM1.cdsQry6.First;
   While not DM1.cdsQry6.Eof do
   begin
      DM1.cdsMovCnt1.Insert;
      DM1.cdsMovCnt1.FieldByName('CIAID').AsString      := '02';
      DM1.cdsMovCnt1.FieldByName('TDIARID').AsString    := cTD30;
      DM1.cdsMovCnt1.FieldByName('CNTANOMM').AsString   := dbePeriodo.Text;
      DM1.cdsMovCnt1.FieldByName('CNTCOMPROB').AsString := xNoComp;
      DM1.cdsMovCnt1.FieldByName('CNTANO').AsString     := Copy( xPeriodo,1,4 );
      DM1.cdsMovCnt1.FieldByName('CNTLOTE').AsString    := cLote;
      DM1.cdsMovCnt1.FieldByName('TMONID').AsString     := 'N';
      DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat  := xTCambio;
      DM1.cdsMovCnt1.FieldByName('CNTTS').AsString      := 'V';
      DM1.cdsMovCnt1.FieldByName('CNTMODDOC').AsString  := '';
// Inicio HPC_201611_COB     : Modificar la Fecha del Asiento
      DM1.cdsMovCnt1.FieldByName('CNTFCOMP').AsDateTime := dtpFecha.Date;
// Fin  HPC_201611_COB     : Modificar la Fecha del Asiento
      DM1.cdsMovCnt1.FieldByName('CNTFEMIS').AsDateTime := dtpFecOpe.Date;
      DM1.cdsMovCnt1.FieldByName('CNTFVCMTO').AsDateTime:= dtpFecOpe.Date;
      DM1.cdsMovCnt1.FieldByName('CNTESTADO').AsString  := 'I';
      DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString    := DM1.wUsuario;
      DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime  := date;     // fecha que registra usuario
      DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime  := time;     // hora que registra usuario

      DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString :=DM1.cdsSolicitud.FieldByname('ASOAPENOM').AsString;

      if TipDes(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)='P' Then
         DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString   :=dbeNumOpe.Text
      else
         DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString   :=DM1.cdsSolicitud.FieldByname('CREDID').AsString;

      if DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString<>'' then
      begin
         DM1.cdsMovCnt1.FieldByName('DOCID').AsString:='66';
         DM1.cdsMovCnt1.FieldByName('CNTSERIE').AsString:='000';
      end;

      DM1.cdsMovCnt1.FieldByName('CUENTAID').AsString   :=DM1.cdsQry6.FieldByname('CUENTA').AsString;
      DM1.cdsMovCnt1.FieldByName('CCOSID').AsString     :=DM1.cdsQry6.FieldByname('CCOSID').AsString;

      xNReg:=xNreg+1;
      DM1.cdsMovCnt1.FieldByName('CNTREG').AsInteger   := xNReg;
      DM1.cdsMovCnt1.FieldByName('MODULO').AsString    := DM1.wModulo;

      DM1.cdsMovCnt1.FieldByName('CNTMM').AsString   :=DM1.cdsQry.FieldByName('FECMES').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTDD').AsString   :=DM1.cdsQry.FieldByName('FECDIA').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTTRI').AsString  :=DM1.cdsQry.FieldByName('FECTRIM').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTSEM').AsString  :=DM1.cdsQry.FieldByName('FECSEM').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTSS').AsString   :=DM1.cdsQry.FieldByName('FECSS').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTAATRI').AsString:=DM1.cdsQry.FieldByName('FECAATRI').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTAASEM').AsString:=DM1.cdsQry.FieldByName('FECAASEM').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTAASS').AsString :=DM1.cdsQry.FieldByName('FECAASS').AsString;

      if DM1.cdsQry6.FieldByName('DEBE').AsFloat>0 then
      begin
         DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='D';
         DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTDEBEMN').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat:=DM1.FROUND( DM1.cdsQry6.FieldByname('DEBE').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
         DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat;
      end
      else
      begin
         DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='H';
         DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTHABEMN').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat:=DM1.FROUND( DM1.cdsQry6.FieldByname('HABER').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
         DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat;
      end;

      DM1.cdsMovCnt1.FieldByName('FLAGVAR').AsString  := DM1.cdsQry6.FieldByname('TIPDESEID').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString  := DM1.wUsuario;    // usuario que registra
      DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime:= date;     // fecha que registra usuario
      DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime:= time;     // hora que registra usuario
      DM1.cdsQry6.Next;
   end;
   DM1.cdsMovCnt1.ApplyUpdates( 0 );

// Inicio HPC_201611_COB     : Modificar la Fecha del Asiento
   GeneraCNT300( ' CREDITO' );
// FIN  HPC_201611_COB     : Modificar la Fecha del Asiento

   DM1.cdsQry6.IndexFieldNames:='';

   ///
   /// CONTABILIZACION DEL DESEMBOLSO
   ///

   if TipDes(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)='P' Then
   begin

   xOrigen :=cTD28;

   ContabilizaCreditosOtorgadosInicializa;

   xSQL:='Select ciaid, tdiarid, cntcomprob, cntano, cntanomm, cntlote, cuentaid, clauxid, auxid, docid, cntserie, '
        +   'cntnodoc, cntglosa, cntdh, ccosid, cnttcambio, cntmtoori, cntmtoloc, cntmtoext, cntfemis, cntfvcmto, '
        +   'cntfcomp, cntestado, cntcuadre, cntfautom, cntuser, cntfreg, cnthreg, cntmm, cntdd, cnttri, cntsem, cntss, '
        +   'cntaatri, cntaasem, cntaass, tmonid, flagvar, fcons, cntfmec, tdiardes, ctades, auxdes, docdes, ccosdes, '
        +   'cntdebemn, cntdebeme, cnthabemn, cnthabeme, cntsaldmn, cntsaldme, campovar, cntts, cntpagado, cntmoddoc, '
        +   'cntreg, modulo, cta_secu from CNT311 '
        +'WHERE CIAID=''02'' AND TDIARID='''+cTD28+''' AND CNTANOMM='''+dbePeriodo.Text+''' '
        +  'AND CNTCOMPROB='''+xNoComp+'''';
   DM1.cdsMovCnt1.Close;
   DM1.cdsMovCnt1.DataRequest( xSQL );
   DM1.cdsMovCnt1.Open;

   GeneraDataDesembolso;

   xNReg:=0;

   xTotHaber:=0;
   xTotHaber2:=0;

   DM1.cdsQry6.First;
   While not DM1.cdsQry6.Eof do
   begin
      DM1.cdsMovCnt1.Insert;
      DM1.cdsMovCnt1.FieldByName('CIAID').AsString      := '02';
      DM1.cdsMovCnt1.FieldByName('TDIARID').AsString    := cTD28;
      DM1.cdsMovCnt1.FieldByName('CNTANOMM').AsString   := dbePeriodo.Text;
      DM1.cdsMovCnt1.FieldByName('CNTCOMPROB').AsString := xNoComp;
      DM1.cdsMovCnt1.FieldByName('CNTANO').AsString     := Copy( xPeriodo,1,4 );
      DM1.cdsMovCnt1.FieldByName('CNTLOTE').AsString    := cLote;
      DM1.cdsMovCnt1.FieldByName('TMONID').AsString     := 'N';
      DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat  := xTCambio;
      DM1.cdsMovCnt1.FieldByName('CNTTS').AsString      := 'V';
      DM1.cdsMovCnt1.FieldByName('CNTMODDOC').AsString  := '';
// Inicio HPC_201611_COB     : Modificar la Fecha del Asiento
      DM1.cdsMovCnt1.FieldByName('CNTFCOMP').AsDateTime := dtpFecha.Date;
// Fin   HPC_201611_COB     : Modificar la Fecha del Asiento
      DM1.cdsMovCnt1.FieldByName('CNTFEMIS').AsDateTime := dtpFecOpe.Date;
      DM1.cdsMovCnt1.FieldByName('CNTFVCMTO').AsDateTime:= dtpFecOpe.Date;
      DM1.cdsMovCnt1.FieldByName('CNTESTADO').AsString  := 'I';
      DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString    := DM1.wUsuario;
      DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime  := date;     // fecha que registra usuario
      DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime  := time;     // hora que registra usuario

      DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString :=DM1.cdsSolicitud.FieldByname('ASOAPENOM').AsString;

      if TipDes(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)='P' Then
         DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString   :=dbeNumOpe.Text
      else
         DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString   :=DM1.cdsSolicitud.FieldByname('CREDID').AsString;

      if DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString<>'' then
      begin
         DM1.cdsMovCnt1.FieldByName('DOCID').AsString:='66';
         DM1.cdsMovCnt1.FieldByName('CNTSERIE').AsString:='000';
      end;

      DM1.cdsMovCnt1.FieldByName('CUENTAID').AsString   :=DM1.cdsQry6.FieldByname('CUENTA').AsString;
      DM1.cdsMovCnt1.FieldByName('CCOSID').AsString     :=DM1.cdsQry6.FieldByname('CCOSID').AsString;

      xNReg:=xNreg+1;
      DM1.cdsMovCnt1.FieldByName('CNTREG').AsInteger   := xNReg;
      DM1.cdsMovCnt1.FieldByName('MODULO').AsString    := DM1.wModulo;

      DM1.cdsMovCnt1.FieldByName('CNTMM').AsString   :=DM1.cdsQry.FieldByName('FECMES').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTDD').AsString   :=DM1.cdsQry.FieldByName('FECDIA').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTTRI').AsString  :=DM1.cdsQry.FieldByName('FECTRIM').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTSEM').AsString  :=DM1.cdsQry.FieldByName('FECSEM').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTSS').AsString   :=DM1.cdsQry.FieldByName('FECSS').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTAATRI').AsString:=DM1.cdsQry.FieldByName('FECAATRI').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTAASEM').AsString:=DM1.cdsQry.FieldByName('FECAASEM').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTAASS').AsString :=DM1.cdsQry.FieldByName('FECAASS').AsString;

      if DM1.cdsQry6.FieldByName('DEBE').AsFloat>0 then
      begin
         DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='D';
         DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTDEBEMN').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat:=dm1.FROUND( DM1.cdsQry6.FieldByname('DEBE').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
         DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat;
      end
      else
      begin
         DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='H';
         DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTHABEMN').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
         DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat:=dm1.FROUND( DM1.cdsQry6.FieldByname('HABER').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
         DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat;
      end;

      DM1.cdsMovCnt1.FieldByName('FLAGVAR').AsString  := DM1.cdsQry6.FieldByname('TIPDESEID').AsString;
      DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString  := DM1.wUsuario;    // usuario que registra
      DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime:= date;     // fecha que registra usuario
      DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime:= time;     // hora que registra usuario
      DM1.cdsQry6.Next;
   end;
   DM1.cdsMovCnt1.ApplyUpdates( 0 );

// Inicio HPC_201611_COB     : Modificar la Fecha del Asiento
   GeneraCNT300(' DEPOSITO');
// Fin   HPC_201611_COB     : Modificar la Fecha del Asiento

   end;

   DM1.cdsQry6.IndexFieldNames:='';

   Screen.Cursor:=crDefault;
end;
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
procedure TfExtorPrest.ContabilizaCreditosOtorgadosInicializa;
var
   xSQL,  xWhere, cTDesWhere, cOficio : String;
   xNumMaxC : Integer;
begin
   // Periodo Contable
   // Busca el # Comprobante Inicial
   xNoComp:=DM1.StrZero( IntToStr(ComprobanteInicial( xOrigen )),10);

   xWhere := 'Select TCAMVBV FROM TGE107 '
           + 'WHERE FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha, dtpFecha.date)+''''+')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xWhere );
   DM1.cdsQry.Open;

   xTCambio:=DM1.cdsQry.FieldByName('TCAMVBV').AsFloat;
   if xTCambio<=0 then xTCambio:=3.5;

   xWhere := 'FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha, dtpFecha.date)+''''+')';
   DM1.DisplayDescrip('PrvTGE','TGE114','*',xWhere,'FECANO');
end;
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
procedure TfExtorPrest.GeneraDataCredito;
var
   xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xSQL5, xSQL6 : String;
begin

  // CUENTA DEL CREDITO
  xSQL1:='Select A.CREDID, A.NROFICIO, CASE WHEN A.FLGREFI=''R'' THEN ''1710403'' ELSE B.CUENTAID END CUENTA, '
        +  ''' '' CLAUXID, '' '' AUXID, '' '' CCOSID, A.DEBE, A.HABER, '
        +  '''A ORIGEN'' TIPO, 0.00 MONTO, A.CREFOTORG, A.TIPCREID, TIPDESEID, A.USEID '
        +'FROM ( '
        +  'SELECT CREDID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, ''            '' CCOSID, FLGREFI, '
        +    'CREMTOOTOR HABER, 0.00 DEBE '
        +  'FROM CRE301 '
        +  'WHERE CREFOTORG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +   ' AND NOT CREESTID IN ( ''13'' ) '
        +   ' AND CREDID='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' '
        +' ) A, CRE110 B, APO101 C '
        +'WHERE A.TIPCREID=B.TIPCREID(+) '
        +  'AND A.USEID=C.USEID(+) AND A.UPROID=C.UPROID(+) AND A.UPAGOID=C.UPAGOID(+) '

        +'UNION ALL ';

  // INTERESES
  xSQL2:='SELECT CREDID, NROFICIO, CUENTA, '' '' CLAUXID, '' '' AUXID, '
        +   'CASE WHEN CUENTA=''46916'' OR CUENTA=''4810001'' THEN CCOSID ELSE ''  '' END CCOSID, '
        +   'DEBE, 0.00 HABER, TIPO, MONTO, CREFOTORG, TIPCREID, TIPDESEID, USEID '
        +'FROM ( '

        +  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, C.CUENTA, '
        +    'C.TIPO, C.MONTO DEBE, E.CCOSID '
        +  'FROM ( '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO, ' //XX
        +       'NVL(CREMTOOTOR,0) MONTO, 1 REG '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND CREDID='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' '
        +     ') A, '

        +     '( '
        +        'SELECT X.ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT WHEN TIPO=''INTERES'' THEN B.CTAINT WHEN TIPO=''DESGRAVAMEN'' THEN T.CTA_DESGRAV ELSE CUENTAID END CUENTA, '
        +          'B.CIAID, X.NRONABO ' // XX
        +        'FROM ( '
        +           'SELECT A.ASOID, A.TIPCREID, ''FLAT'' TIPO, SUM(NVL(A.CREFLAT,0)) MONTO, A.NRONABO, MAX(CREFPAG) CREFPAG ' 
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +            ' and A.NRONABO='+quotedstr(DM1.cdsSolicitud.FieldByname('NRONABO').AsString)+' '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +           'UNION ALL '
        +           'SELECT A.ASOID, A.TIPCREID, ''DESGRAVAMEN'' TIPO, SUM(NVL(A.MONCOBDESGRAV,0)) MONTO, A.NRONABO, MAX(CREFPAG) CREFPAG '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +            ' and A.NRONABO='+quotedstr(DM1.cdsSolicitud.FieldByname('NRONABO').AsString)+' '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +           'UNION ALL '
        +           'SELECT A.ASOID, A.TIPCREID, ''INTERES'' TIPO, SUM(NVL(A.CREINTERES,0)) MONTO, A.NRONABO, MAX(CREFPAG) CREFPAG '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +            ' and A.NRONABO='+quotedstr(DM1.cdsSolicitud.FieldByname('NRONABO').AsString)+' '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +           'HAVING SUM( nvl(A.CREINTERES,0) )>0 '
        +           'UNION ALL '
        +           'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO, MAX(CREFPAG) CREFPAG '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +            ' and A.NRONABO='+quotedstr(DM1.cdsSolicitud.FieldByname('NRONABO').AsString)+' '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +          ' ) X, CRE110 B, CRE301 C, APO107 T  '
        +        'Where X.TIPCREID=B.TIPCREID(+) '
        +         ' and X.ASOID=C.ASOID(+) AND X.NRONABO=C.NRONABO(+) AND X.CREFPAG=C.CREFOTORG(+) '
        +         ' and C.ASOTIPID=T.ASOTIPID(+) '
        +    ' ) C, CRE110 D, APO101 E '
        +  'WHERE NVL(C.MONTO,0)>0 '
        +    'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO '
        +    'and C.TIPCREID=D.TIPCREID(+) '
        +    'and ( ( NVL(D.CIAID,''02'')=''02'') AND TIPO=''TCAPITAL'' '
        +          'OR '
        +        '( TIPO<>''TCAPITAL'' ) ) '
        +    'AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '

        +'UNION ALL ';

  // AMORTIZACION DE OTRAS CIAID
  xSQL3:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, MAX(D.FILIAL) CUENTA, '
        +     '''FILIAL'' TIPO, SUM(C.MONTO) DEBE, '' '' CCOSID '
        +  'FROM ( '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NVL(CREMTOOTOR,0) MONTO, '
        +       '1 REG, NRONABO '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND CREDID='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' '
        +  ') A, '
        +     '( '
        +        'SELECT ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID, NRONABO '
        +        'FROM ( '
        +           'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +            ' and A.NRONABO='+quotedstr(DM1.cdsSolicitud.FieldByname('NRONABO').AsString)+' '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D '
        +  'WHERE NVL(C.MONTO,0)>0 '
        +    'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '
        +  'GROUP BY A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, D.CIAID '
        +  'UNION ALL ';

        // APORTES
  xSQL4:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, ''4810001'' CUENTA, '
        +     '''APORTE'' TIPO, A.MONTO HABER, C.CCOSID '
        +  'FROM( SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO, '
        +         'NVL(CREMTOAPO,0) MONTO '
        +      'FROM CRE301 '
        +      'WHERE CREFOTORG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +       ' AND NOT CREESTID IN ( ''13'' ) '
        +       ' AND CREDID='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' ) A, '
        +   'CRE110 B, APO101 C '
        +  'WHERE A.TIPCREID=B.TIPCREID(+) AND A.USEID=C.USEID(+) AND A.UPROID=C.UPROID(+) AND A.UPAGOID=C.UPAGOID(+) '
        +    'AND MONTO>0 '
        +  'UNION ALL ';

  // DESEMBOLSO
  xSQL5:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, D.CUENTAH CUENTA, '
        +   'NVL(C.TIPO,''SIN ABONO'') TIPO, '
        +   'A.MONTO-CREMTOAPO-NVL(C.MONTO,0)-CASE WHEN NVL(DEPDEV,0)>0 THEN CREMTODEP-DEPDEV ELSE CREMTODEP END DEBE, '
        +   'CASE WHEN D.CUENTAH=''46916'' THEN F.CCOSID ELSE NULL END CCOSID '
        +'FROM ( '
        +   'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, NVL(CREMTOOTOR,0) MONTO, '
        +      '1 REG, NVL(CREMTODEP,0) CREMTODEP, UPROID, UPAGOID, NVL(CREMTOAPO,0) CREMTOAPO '
        +   'FROM CRE301 '
        +   'WHERE CREFOTORG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +    ' AND NOT CREESTID IN ( ''13'' ) '
        +    ' AND CREDID='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' '
        +  ' ) A, CRE110 B, ( '
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, '
        +         'SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+ SUM(NVL(A.MONCOBDESGRAV,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +      'FROM CRE310 A '
        +      'WHERE A.CREFPAG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +       ' and A.NRONABO='+quotedstr(DM1.cdsSolicitud.FieldByname('NRONABO').AsString)+' '
        +      'GROUP BY A.ASOID, A.NRONABO '
        +     ') C, SRB000 E, CRE110 D, APO101 F '
        +'WHERE A.TIPCREID=B.TIPCREID(+) '
        +  'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +  'and A.ASOID=E.ASOID(+) and A.CREDID=E.CREDID(+) and ESTDEP(+)=''28'' '
        +  'and A.TIPCREID=D.TIPCREID(+) '
        +  'and A.USEID=F.USEID(+) AND A.UPROID=F.UPROID(+) AND A.UPAGOID=F.UPAGOID(+) '
        +'UNION ALL ';

        // SERBANCO
  xSQL6:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, ''162060103'' CUENTA, '
        +   'NVL(C.TIPO,''SIN ABONO'') TIPO, '
        +   'CASE WHEN NVL(DEPDEV,0)>0 THEN CREMTODEP-DEPDEV ELSE CREMTODEP END DEBE, '' '' CCOSID '
        +'FROM ( '
        +   'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, NVL(CREMTOOTOR,0) MONTO, '
        +      '1 REG, NVL(CREMTODEP,0) CREMTODEP '
        +   'FROM CRE301 '
        +   'WHERE CREFOTORG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +    ' AND NOT CREESTID IN ( ''13'' ) '
        +    ' AND CREDID='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' '
        +  ' ) A, CRE110 B, ( '
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+ SUM(NVL(A.MONCOBDESGRAV, 0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +         'FROM CRE310 A '
        +           'WHERE A.CREFPAG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +            ' and A.NRONABO='+quotedstr(DM1.cdsSolicitud.FieldByname('NRONABO').AsString)+' '
        +      'GROUP BY A.ASOID, A.NRONABO '

        +     ') C, SRB000 E '

        +'WHERE A.TIPCREID=B.TIPCREID(+) '
        +  'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +  'and A.ASOID=E.ASOID(+) and A.CREDID=E.CREDID(+) and ESTDEP(+)=''28'' '
        +  'and CASE WHEN NVL(DEPDEV,0)>0 THEN CREMTODEP-DEPDEV ELSE CREMTODEP END>0 '
        + ') A ';

  xSQL:=xSQL1+xSQL2+xSQL3+xSQL4+xSQL5+xSQL6;

  xSQL:='Select CREFOTORG, NROFICIO, TIPDESEID, CUENTA, CLAUXID, AUXID, CCOSID, '
       +  'SUM(DEBE) DEBE, SUM(HABER) HABER '
       +'From ( '+  xSQL + ' ) '
       +'Group by CREFOTORG, NROFICIO, TIPDESEID, CUENTA, CLAUXID, AUXID, CCOSID ';

  DM1.cdsQry6.Close;
  DM1.cdsQry6.IndexFieldNames:='CUENTA;CCOSID';
  DM1.cdsQry6.DataRequest( xSQL );
  DM1.cdsQry6.Open;

end;
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
procedure TfExtorPrest.GeneraCNT300;
var
   xSQL : String;
begin
   xSQL:='INSERT INTO CNT300 ';
   xSQL:=xSQL+ '( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, ';
   xSQL:=xSQL+ 'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, ';
   xSQL:=xSQL+ 'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, ';
   xSQL:=xSQL+ 'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, ';
   xSQL:=xSQL+ 'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, ';
   xSQL:=xSQL+ 'CNTTS, DOCMOD, MODULO ) ' ;

   xSQL:=xSQL+ 'SELECT A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, ';
   xSQL:=xSQL+ '''EXTORNO : '+DM1.cdsSolicitud.FieldByname('CREDID').AsString+''' CNTGLOSA, ';
   xSQL:=xSQL+ 'MAX( NVL(A.CNTTCAMBIO, 0 )), ';
   xSQL:=xSQL+ 'A.CNTFCOMP, ''I'', ''N'', ';
   xSQL:=xSQL+ 'MAX(CNTUSER), MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'MAX( CASE WHEN A.CNTREG = 1 THEN A.TMONID  END ) TMONID, '' '', ';
   xSQL:=xSQL+ 'A.TDIARDES, ';
   xSQL:=xSQL+ 'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), ';
   xSQL:=xSQL+ 'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) ';
   xSQL:=xSQL+ 'FROM CNT311 A ';
   xSQL:=xSQL+ 'WHERE A.CIAID=''02'' AND ';
   xSQL:=xSQL+       'A.TDIARID='''+xOrigen+''' AND ';
   xSQL:=xSQL+       'A.CNTANOMM='''+xPeriodo+''' ';
   xSQL:=xSQL+'AND A.CNTCOMPROB='''+xNoComp+''' ';
   xSQL:=xSQL+ 'GROUP BY A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, ';
   xSQL:=xSQL+ 'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI,  ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'A.TDIARDES';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except

   end;
end;
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
procedure TfExtorPrest.GeneraDataDesembolso;
var
   xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xSQL5 : String;
   xCREFOTORG, xNROFICIO, xTIPDESEID : String;
begin
  xSQL1:='SELECT CREDID, NROFICIO, CUENTA, NULL CLAUXID, NULL AUXID, '
        +   'CASE WHEN CUENTA=''46916'' THEN CCOSID ELSE NULL END CCOSID, '
        +   'DEBE, HABER, TIPO, MONTO, CREFOTORG, TIPCREID, TIPDESEID, USEID '
        +'FROM ( ';

  // DESEMBOLSO
  xSQL2:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, '
        +   ''''+cdsTipCre.FieldByName('CTAPRINC').AsString+''' CUENTA, '
        +   'NVL(C.TIPO,''SIN ABONO'') TIPO, '
        +   'A.MONTO-CREMTOAPO-NVL(C.MONTO,0)-CASE WHEN NVL(DEPDEV,0)>0 THEN CREMTODEP-DEPDEV ELSE CREMTODEP END DEBE, 0.00 HABER, '
        +   'NULL CCOSID '
        +'FROM ( '
        +   'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, NVL(CREMTOOTOR,0) MONTO, '
        +      '1 REG, NVL(CREMTODEP,0) CREMTODEP, UPROID, UPAGOID, NVL(CREMTOAPO,0) CREMTOAPO '
        +   'FROM CRE301 '
        +   'WHERE CREFOTORG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +    ' AND NOT CREESTID IN ( ''13'' ) '
        +    ' AND CREDID='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' '
        +  ' ) A, CRE110 B, ( '
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, '
        +         'SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+ SUM(NVL(A.MONCOBDESGRAV,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +      'FROM CRE310 A '
        +      'WHERE A.CREFPAG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +       ' and A.NRONABO='+quotedstr(DM1.cdsSolicitud.FieldByname('NRONABO').AsString)+' '
        +      'GROUP BY A.ASOID, A.NRONABO '
        +     ') C, SRB000 E, CRE110 D, APO101 F '
        +'WHERE A.TIPCREID=B.TIPCREID(+) '
        +  'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +  'and A.ASOID=E.ASOID(+) and A.CREDID=E.CREDID(+) and ESTDEP(+)=''28'' '
        +  'and A.TIPCREID=D.TIPCREID(+) '
        +  'and A.USEID=F.USEID(+) AND A.UPROID=F.UPROID(+) AND A.UPAGOID=F.UPAGOID(+) '

        +'UNION ALL ';

  xSQL3:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, D.CUENTAH CUENTA, '
        +   'NVL(C.TIPO,''SIN ABONO'') TIPO, 0.00 DEBE, '
        +   'A.MONTO-CREMTOAPO-NVL(C.MONTO,0)-CASE WHEN NVL(DEPDEV,0)>0 THEN CREMTODEP-DEPDEV ELSE CREMTODEP END HABER, '
        +   'CASE WHEN D.CUENTAH=''46916'' THEN F.CCOSID ELSE NULL END CCOSID '
        +'FROM ( '
        +   'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, NVL(CREMTOOTOR,0) MONTO, '
        +      '1 REG, NVL(CREMTODEP,0) CREMTODEP, UPROID, UPAGOID, NVL(CREMTOAPO,0) CREMTOAPO '
        +   'FROM CRE301 '
        +   'WHERE CREFOTORG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +    ' AND NOT CREESTID IN ( ''13'' ) '
        +    ' AND CREDID='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' '
        +  ' ) A, CRE110 B, ( '
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, '
        +         'SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+ SUM(NVL(A.MONCOBDESGRAV,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +      'FROM CRE310 A '
        +      'WHERE A.CREFPAG='+quotedstr(DM1.cdsSolicitud.FieldByname('CREFOTORG').AsString)
        +       ' and A.NRONABO='+quotedstr(DM1.cdsSolicitud.FieldByname('NRONABO').AsString)+' '
        +      'GROUP BY A.ASOID, A.NRONABO '
        +     ') C, SRB000 E, CRE110 D, APO101 F '
        +'WHERE A.TIPCREID=B.TIPCREID(+) '
        +  'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +  'and A.ASOID=E.ASOID(+) and A.CREDID=E.CREDID(+) and ESTDEP(+)=''28'' '
        +  'and A.TIPCREID=D.TIPCREID(+) '
        +  'and A.USEID=F.USEID(+) AND A.UPROID=F.UPROID(+) AND A.UPAGOID=F.UPAGOID(+) '
        + ') A ';

  xSQL:=xSQL1+xSQL2+xSQL3;

  xSQL:='Select CREFOTORG, NROFICIO, TIPDESEID, CUENTA, CLAUXID, AUXID, CCOSID, '
       +  'SUM(DEBE) DEBE, SUM(HABER) HABER '
       +'From ( '+  xSQL + ' ) '
       +'Group by CREFOTORG, NROFICIO, TIPDESEID, CUENTA, CLAUXID, AUXID, CCOSID ';

  DM1.cdsQry6.Close;
  DM1.cdsQry6.IndexFieldNames:='CUENTA;CCOSID';
  DM1.cdsQry6.DataRequest( xSQL );
  DM1.cdsQry6.Open;

  if DM1.cdsSolicitud.FieldByName('cremtogir').AsFloat<>DM1.cdsQry26.FieldByName('IMPDEP').AsFloat then
  begin
     DM1.cdsQry6.First;
     while not DM1.cdsQry6.Eof do
     begin
        if Copy(DM1.cdsQry6.fieldByName('CUENTA').AsString,1,3)='104' then
        begin
           xCREFOTORG :=DM1.cdsQry6.FieldByName('CREFOTORG').AsString;
           xNROFICIO  :=DM1.cdsQry6.FieldByName('NROFICIO').AsString ;
           xTIPDESEID :=DM1.cdsQry6.FieldByName('TIPDESEID').AsString;
           DM1.cdsQry6.Edit;
           DM1.cdsQry6.fieldByName('DEBE').Asfloat:=DM1.cdsQry26.fieldByName('IMPDEP').Asfloat;
           DM1.cdsQry6.Post;

           if DM1.cdsQry26.FieldByName('IMPDEP').AsFloat>DM1.cdsSolicitud.FieldByName('cremtogir').AsFloat then
           begin
              DM1.cdsQry6.Append;
              DM1.cdsQry6.FieldByName('CREFOTORG').AsString:=xCREFOTORG;
              DM1.cdsQry6.FieldByName('NROFICIO').AsString :=xNROFICIO;
              DM1.cdsQry6.FieldByName('TIPDESEID').AsString:=xTIPDESEID;
              DM1.cdsQry6.FieldByName('CUENTA').AsString   :='4691208';
              DM1.cdsQry6.FieldByName('DEBE').AsFloat      :=0;
              DM1.cdsQry6.FieldByName('HABER').AsFloat     :=dm1.FROUND(DM1.cdsQry26.FieldByName('IMPDEP').AsFloat-DM1.cdsSolicitud.FieldByName('cremtogir').AsFloat,15,2);
              DM1.cdsQry6.Post;
           end
           else
           begin
              DM1.cdsQry6.Append;
              DM1.cdsQry6.FieldByName('CREFOTORG').AsString:=xCREFOTORG;
              DM1.cdsQry6.FieldByName('NROFICIO').AsString :=xNROFICIO;
              DM1.cdsQry6.FieldByName('TIPDESEID').AsString:=xTIPDESEID;
              DM1.cdsQry6.FieldByName('CUENTA').AsString   :='4860001';
              DM1.cdsQry6.FieldByName('DEBE').AsFloat      :=dm1.FROUND(DM1.cdsSolicitud.FieldByName('cremtogir').AsFloat-DM1.cdsQry26.FieldByName('IMPDEP').AsFloat,15,2);
              DM1.cdsQry6.FieldByName('HABER').AsFloat     :=0;
              DM1.cdsQry6.Post;
           end;
        end;
        DM1.cdsQry6.Next;
     end;
  end;
end;
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos


// Inicio HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos
function TfExtorPrest.ComprobanteInicial( cOrigen : String ) : Integer;
var
   xCia, xSQL, xSQL2, xSQL3, xSQL4, xCNTComprob  : String;
   xNumComp, xNumMaxC : Integer;
begin
   xSQL:='SELECT NVL(MAX(CNTCOMPROB),''0'') NUMMAX FROM CNT300 '
        +'WHERE CIAID=''02'' '
        +  'AND TDIARID=''' +cOrigen+''' '
        +  'AND CNTANOMM='''+xPeriodo+''' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;

   xNumMaxC:=StrToInt(DM1.cdsQry.FieldByName('NUMMAX').AsString)+1;

   xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX FROM CNT311 '
        +'WHERE CIAID=''02'' '
        +  'AND TDIARID=''' +cOrigen+''' '
        +  'AND CNTANOMM='''+xPeriodo+''' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if StrToInt(DM1.cdsQry.FieldByName('NUMMAX').AsString)+1>xNumMaxC then
      xNumMaxC:=StrToInt(DM1.cdsQry.FieldByName('NUMMAX').AsString)+1;

   Result:=xNumMaxC;
end;
// Fin  HPC_201607_COB    : Graba datos adicionales del Extorno de Creditos

End.

