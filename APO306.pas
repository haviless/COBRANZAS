Unit APO306;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO306
// Formulario           : FIngresoLote
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Ingreso en Lote
// Actualizaciones      :
// HPC_201308_COB       : 16/07/2013 - Consulta de Cuotas Anuladas
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201310_COB       : 26/09/2013  Revisar inconsistencia
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket

Interface

Uses
// Inicio HPC_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, StdCtrls, ComCtrls,
   wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Wwdbspin, Buttons,
   Wwdbigrd, Grids, Wwdbgrid, Wwdotdot, Wwdbdlg, wwClient, db, Wwkeycb,
   ppEndUsr, ppDB, ppDBPipe, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache,
   ppComm, ppRelatv, ppProd, ppReport, ppVar, ppViewr, fcLabel, pptypes, wwIDlg,
   ppParameter, DBClient, variants, DBGrids;
// Fin Inicio HPC_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket

Type
   TFIngresoLote = Class(TForm)
      pnlCabecera: TPanel;
      pnlDatosAportes: TPanel;
      pnlUse: TPanel;
      dbeNumOperacion: TwwDBEdit;
      dbdtpFecOperacion: TwwDBDateTimePicker;
      dbeMonto: TwwDBEdit;
      dblcMoneda: TwwDBLookupCombo;
      bbtnSigue: TfcShapeBtn;
      dblcCtaCte: TwwDBLookupCombo;
      dbeImpAporte: TwwDBEdit;
      dbgAportes: TwwDBGrid;
      bbtnIngresaAporte: TwwIButton;
      pnlAportes: TPanel;
      StaticText2: TStaticText;
      bbtnAtras: TfcShapeBtn;
      pnlHeader: TPanel;
      dblcFormaPago: TwwDBLookupCombo;
      dblcBanco: TwwDBLookupCombo;
      pnlBusca: TPanel;
      lbBusca: TLabel;
      edtBusca: TwwIncrementalSearch;
      pnlFooter: TPanel;
      Z2bbtnOrdenCodMod: TfcShapeBtn;
      Z2bbtnOrdenAlfab: TfcShapeBtn;
      Z2bbtnAceptar: TfcShapeBtn;
      Z2bbtnCancel: TfcShapeBtn;
      Z2bbtnSalir: TfcShapeBtn;
      GroupBox1: TGroupBox;
      dbeLetra: TwwDBEdit;
      Z2bbtnFiltro: TfcShapeBtn;
      Z2bbtnElimina: TfcShapeBtn;
      bbtnClosePnl: TButton;
      bbtnAutdisk: TfcShapeBtn;
      speAno: TwwDBEdit;
      speMes: TwwDBEdit;
      pnlActAporte: TPanel;
      cbMarca: TCheckBox;
      dblcdUse: TwwDBLookupComboDlg;
      bbtnInconsistencia: TfcShapeBtn;
      bbtnBuscaInc: TfcShapeBtn;
      pnlBuscaInc: TPanel;
      Panel4: TPanel;
      SpeedButton4: TSpeedButton;
      SpeedButton5: TSpeedButton;
      spdCCodModTod: TSpeedButton;
      Button1: TButton;
      pnlEstado: TPanel;
      pbEstado: TProgressBar;
      lbEstado: TLabel;
      SpeedButton7: TSpeedButton;
      SpeedButton8: TSpeedButton;
      SpeedButton9: TSpeedButton;
      SpeedButton10: TSpeedButton;
      SpeedButton11: TSpeedButton;
      spdAporteMayT: TSpeedButton;
      spdAporteMayM: TSpeedButton;
      spdAporteMenT: TSpeedButton;
      spdAporteMenM: TSpeedButton;
      bbtnImprime: TfcShapeBtn;
      ppRepInc: TppReport;
      ppDBInc: TppDBPipeline;
      ppDesInc: TppDesigner;
      lblForPag: TLabel;
      lblban: TLabel;
      lblCtaCte: TLabel;
      lblNOpe: TLabel;
      lblFecOpe: TLabel;
      lblMon: TLabel;
      lblMonto: TLabel;
      lblUse: TLabel;
      lblAno: TLabel;
      lblMes: TLabel;
      bbtnIngLinea: TfcShapeBtn;
      spdCModCPagUseTod: TSpeedButton;
      spdCModCPagUseMar: TSpeedButton;
      Panel3: TPanel;
      lblTitulo: TLabel;
      Z2bbtnInserta: TfcShapeBtn;
      pnlActCredito: TPanel;
      Z2bbtnInsertaCre: TfcShapeBtn;
      spdCodModT: TSpeedButton;
      spdCodModM: TSpeedButton;
      spdCodPagT: TSpeedButton;
      spdCodPagM: TSpeedButton;
      lblUnidadProceso: TLabel;
      dblcUProceso: TwwDBLookupCombo;
      dblcdUPago: TwwDBLookupComboDlg;
      BitBtn1: TBitBtn;
      dblcdAgenBco: TwwDBLookupComboDlg;
      pnlImprime: TPanel;
      RadioGroup1: TRadioGroup;
      pnlAsoFalt: TPanel;
      dbgAsoFalt: TwwDBGrid;
      fcShapeBtn2: TfcShapeBtn;
      pnlBusq: TPanel;
      lblApeMat: TLabel;
      edtAsociado: TEdit;
      sbtnAceptar: TfcShapeBtn;
      dbgAsoFaltIButton: TwwIButton;
      SpeedButton3: TSpeedButton;
      pnlTransf: TPanel;
      Label10: TLabel;
      Animate1: TAnimate;
      spdAporteProv: TSpeedButton;
      lblCodMod: TLabel;
      dblcdCodigoModular: TwwDBLookupComboDlg;
      dbeCodigo: TwwDBEdit;
      Label11: TLabel;
      dbeCodigoPago: TwwDBEdit;
      Label54: TLabel;
      dbeApeNom: TwwDBEdit;
      lblMonApo: TLabel;
      dbeAporte: TwwDBEdit;
      lblMonCuo: TLabel;
      dbeCuota: TwwDBEdit;
      dbeTotal: TwwDBEdit;
      bbtnAceptar: TfcShapeBtn;
      bbtnCancel: TfcShapeBtn;
      rgConsiderar: TRadioGroup;
      edtFormaPago: TwwDBEdit;
      edtBanco: TwwDBEdit;
      edtAgencia: TwwDBEdit;
      edtMoneda: TwwDBEdit;
      edtUProceso: TwwDBEdit;
      edtUPago: TwwDBEdit;
      edtUse: TwwDBEdit;
      pnlCoinsidencias: TPanel;
      dbgCoinsidencias: TwwDBGrid;
      fcShapeBtn1: TfcShapeBtn;
      StaticText1: TStaticText;
      fcLabel1: TfcLabel;
      dbePerCont: TwwDBEdit;
      fcLabel2: TfcLabel;
      spdAporteRegistrados: TSpeedButton;
      Label1: TLabel;
      dblcdUseA: TwwDBLookupComboDlg;
      dbeUseA: TwwDBEdit;
      ppParameterList1: TppParameterList;
      fcShapeBtn4: TfcShapeBtn;
      ppHeaderBand1: TppHeaderBand;
      pplbTitulo: TppLabel;
      ppLabel1: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppLabel14: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText10: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLabel3: TppLabel;
      ppLabel2: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      pplFirma: TppLabel;
      ppLVB: TppLabel;
      ppLFAUTORIZA: TppLabel;
      pnlAsoNI: TPanel;
      Label18: TLabel;
      Label19: TLabel;
      pnlAccIngLote: TPanel;
      Label2: TLabel;
      Label17: TLabel;
      edtAccIngLote: TEdit;
      edtUsuario: TEdit;
      btnConfirma: TfcShapeBtn;
      StaticText4: TStaticText;
      dbgAsoNI: TwwDBGrid;
      fcShapeBtn5: TfcShapeBtn;
      fcShapeBtn6: TfcShapeBtn;
      pnlNAsoc: TPanel;
      Label3: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      Label4: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      dbeCodMod: TwwDBEdit;
      dbeCodAux: TwwDBEdit;
      dbeCodPago: TwwDBEdit;
      dbeUProc: TwwDBEdit;
      dbeUPago: TwwDBEdit;
      fcShapeBtn3: TfcShapeBtn;
      bbtnAcepNAso: TfcShapeBtn;
      dblcdUseAso: TwwDBLookupComboDlg;
      dbeApeyNom: TwwDBEdit;
      dbeUSE: TwwDBEdit;
      dbePriApellido: TwwDBEdit;
      dbeSegApellido: TwwDBEdit;
      dbeNombres: TwwDBEdit;
      StaticText3: TStaticText;
      dbeAporte2: TwwDBEdit;
      dbeCuota2: TwwDBEdit;
      dbeTotal2: TwwDBEdit;
      dbeAsoid: TwwDBEdit;
      ProgressBar1: TProgressBar;
      pnlFiltros: TPanel;
      Panel2: TPanel;
      spdSinIncons: TSpeedButton;
      spdInconsist: TSpeedButton;
      spdTotalReg: TSpeedButton;
      spdCamCodMod: TSpeedButton;
      spdCamCodPag: TSpeedButton;
      spdCamUse: TSpeedButton;
      spdApoMay: TSpeedButton;
      spdApDup: TSpeedButton;
      spdApoMen: TSpeedButton;
      spdTotalTransf: TSpeedButton;
      SpeedButton2: TSpeedButton;
      spdAsoDupl: TSpeedButton;
      spdAsoCuotas: TSpeedButton;
      spdCtastrans: TSpeedButton;
      spdCtasxTransf: TSpeedButton;
      Bevel1: TBevel;
      spdApRegistrados: TSpeedButton;
      SpeedButton1: TSpeedButton;
      bbtnUSESNoValidas: TSpeedButton;
      Button2: TButton;
      pnlIngObs: TPanel;
      Label39: TLabel;
      memObsAso: TMemo;
      btnBorrar: TBitBtn;
      StaticText5: TStaticText;
      btnSalirEliminaReg: TButton;
      dblTipAso: TwwDBLookupCombo;
      fcLabel3: TfcLabel;
      pnlAdvertencias: TPanel;
      Shape15: TShape;
      Label48: TLabel;
      Shape16: TShape;
      Label49: TLabel;
      wwDBGrid2: TwwDBGrid;
      BitBtn5: TBitBtn;
      Label20: TLabel;
      CDSADVERTENCIA: TClientDataSet;
      DSADVERTENCIA: TDataSource;
      DTGDATA: TDBGrid;
      chkAdvertencias: TCheckBox;
      Label21: TLabel;
      RepAdvertencias: TppReport;
      ppParameterList2: TppParameterList;
      ppHeaderBand2: TppHeaderBand;
      ppShape1: TppShape;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLine6: TppLine;
      ppLine7: TppLine;
      ppLabel26: TppLabel;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppLine11: TppLine;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppLabel29: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppLabel30: TppLabel;
      ppSystemVariable5: TppSystemVariable;
      ppDetailBand2: TppDetailBand;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBCalc6: TppDBCalc;
      ppFooterBand1: TppFooterBand;
      pplPeriodo: TppLabel;
      ppLabel31: TppLabel;
// Inicio: SPP_201310_COB    : 16/07/2013 - Consulta de Cuotas Anuladas
    bbtnAnulados: TfcShapeBtn;
// Fin: SPP_201310_COB       : 16/07/2013 - Consulta de Cuotas Anuladas
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure bbtnIngresaAporteClick(Sender: TObject);
      Procedure bbtnCancelClick(Sender: TObject);
      Procedure bbtnSigueClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dblcdUseExit(Sender: TObject);
      Procedure dblcFormaPagoExit(Sender: TObject);
      Procedure dblcBancoExit(Sender: TObject);
      Procedure dblcMonedaExit(Sender: TObject);
      Procedure bbtnAceptarClick(Sender: TObject);
      Procedure dblcCtaCteExit(Sender: TObject);
      Procedure dbeNumOperacionExit(Sender: TObject);
      Procedure dbdtpFecOperacionExit(Sender: TObject);
      Procedure Z2bbtnAceptarClick(Sender: TObject);
      Procedure dblcdCodigoModularExit(Sender: TObject);
      Procedure dblcdCodigoDropDown(Sender: TObject);
      Procedure FormCloseQuery(Sender: TObject; Var CanClose: Boolean);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dbeMontoExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcTransaccionExit(Sender: TObject);
      Procedure Z2bbtnSalirClick(Sender: TObject);
      Procedure dbeTotalExit(Sender: TObject);
      Procedure speMes1Exit(Sender: TObject);
      Procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure bbtnAtrasClick(Sender: TObject);
      Procedure dbgAportesKeyDown(Sender: TObject; Var Key: Word; Shift: TShiftState);
      Procedure dbgAportesDblClick(Sender: TObject);
      Procedure Z2bbtnFiltroClick(Sender: TObject);
      Procedure Z2bbtnOrdenCodModClick(Sender: TObject);
      Procedure Z2bbtnOrdenAlfabClick(Sender: TObject);
      Procedure dbgAportesTitleButtonClick(Sender: TObject; AFieldName: String);
      Procedure isBuscaKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeAporteExit(Sender: TObject);
      Procedure dbeCuotaExit(Sender: TObject);
      Procedure bbtnClosePnlClick(Sender: TObject);
      Procedure dbgAportesCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
      Procedure Z2bbtnInsertaClick(Sender: TObject);
      Procedure cbMarcaClick(Sender: TObject);
      Procedure bbtnAutdiskClick(Sender: TObject);
      Procedure bbtnInconsistenciaClick(Sender: TObject);
      Procedure spdTotalRegClick(Sender: TObject);
      Procedure spdInconsistClick(Sender: TObject);
      Procedure spdSinInconsClick(Sender: TObject);
      Procedure bbtnBuscaIncClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure Button2Click(Sender: TObject);
      Procedure SpeedButton4Click(Sender: TObject);
      Procedure SpeedButton5Click(Sender: TObject);
      Procedure spdCCodModTodClick(Sender: TObject);
      Procedure SpeedButton7Click(Sender: TObject);
      Procedure SpeedButton9Click(Sender: TObject);
      Procedure SpeedButton8Click(Sender: TObject);
      Procedure SpeedButton10Click(Sender: TObject);
      Procedure SpeedButton11Click(Sender: TObject);
      Procedure spdAporteMayTClick(Sender: TObject);
      Procedure spdAporteMayMClick(Sender: TObject);
      Procedure spdAporteMenTClick(Sender: TObject);
      Procedure spdAporteMenMClick(Sender: TObject);
      Procedure bbtnImprimeClick(Sender: TObject);
      Procedure spdCamCodModClick(Sender: TObject);
      Procedure spdCamCodPagClick(Sender: TObject);
      Procedure spdCamUseClick(Sender: TObject);
      Procedure spdApoMayClick(Sender: TObject);
      Procedure spdApoMenClick(Sender: TObject);
      Procedure dbgAportesEnter(Sender: TObject);
      Procedure dbeImpAporteExit(Sender: TObject);
      Procedure bbtnIngLineaClick(Sender: TObject);
      Procedure EventoModPagUse(Sender: TObject);
      Procedure spdTotalTransfClick(Sender: TObject);
      Procedure SpeedButton2Click(Sender: TObject);
      Procedure Z2bbtnInsertaCreClick(Sender: TObject);
      Procedure dblcUProcesoExit(Sender: TObject);
      Procedure dblcdUPagoExit(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure dblcdAgenBcoExit(Sender: TObject);
      Procedure ppRepIncPreviewFormCreate(Sender: TObject);
      Procedure fcShapeBtn2Click(Sender: TObject);
      Procedure sbtnAceptarClick(Sender: TObject);
      Procedure dbgAsoFaltDblClick(Sender: TObject);
      Procedure dbgAsoFaltIButtonClick(Sender: TObject);
      Procedure fcShapeBtn3Click(Sender: TObject);
      Procedure dblcdUseAsoExit(Sender: TObject);
      Procedure bbtnAcepNAsoClick(Sender: TObject);
      Procedure GenAsociado;
      Procedure GenAsociadoenTemp;
      Procedure PasadeTempaAsoc;
      Procedure spdAsoDuplClick(Sender: TObject);
      Procedure SpeedButton3Click(Sender: TObject);
      Procedure spdCodPagTClick(Sender: TObject);
      Procedure spdAsoCuotasClick(Sender: TObject);
      Procedure spdCtastransClick(Sender: TObject);
      Procedure spdCtasxTransfClick(Sender: TObject);
      Procedure spdApDupClick(Sender: TObject);
      Procedure spdAporteProvClick(Sender: TObject);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure dbgCoinsidenciasDblClick(Sender: TObject);
      Procedure bbtnActAportesDupClick(Sender: TObject);
      Procedure spdAporteRegistradosClick(Sender: TObject);
      Procedure SpeedButton1Click(Sender: TObject);
      Procedure dblcdUseAExit(Sender: TObject);
      Procedure dbeCodModExit(Sender: TObject);
      Procedure bbtnUSESNoValidasClick(Sender: TObject);
      Procedure dblcdCodigoModularInitDialog(Dialog: TwwLookupDlg);
      Procedure dbeCodModChange(Sender: TObject);
      Procedure dbeAporte2Exit(Sender: TObject);
      Procedure dbeCuota2Exit(Sender: TObject);
      Procedure dbePriApellidoExit(Sender: TObject);
      Procedure dbeSegApellidoExit(Sender: TObject);
      Procedure dbeNombresChange(Sender: TObject);
      Procedure edtAccIngLoteExit(Sender: TObject);
      Procedure fcShapeBtn6Click(Sender: TObject);
      Procedure btnConfirmaClick(Sender: TObject);
      Procedure fcShapeBtn5Click(Sender: TObject);
      Procedure fcShapeBtn4Click(Sender: TObject);
      Procedure btnBorrarClick(Sender: TObject);
      Procedure Z2bbtnEliminaClick(Sender: TObject);
      Procedure btnSalirEliminaRegClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure BitBtn5Click(Sender: TObject);
// Inicio: SPP_201310_COB       : 16/07/2013 - Consulta de Cuotas Anuladas
    procedure bbtnAnuladosClick(Sender: TObject);
// Fin: SPP_201310_COB       : 16/07/2013 - Consulta de Cuotas Anuladas
   Private
    { Private declarations }
      xArchivo: String;
      Procedure LimpiaForm;
      Procedure LimpiaVent;
      Procedure ConfiguraGridAportes;
      Procedure ReadOnlyFalseGridAportes;
      Procedure OcultaPaneles;
      Procedure FiltraAsoc;
      Procedure PanelEnableFalse;
      Procedure PanelEnableTrue;
      Function VerifTranferencia(): Boolean;
   Public
    { Public declarations }
      sWhere, wModo1, xSQL1, xSQL2, xSQL, wSQL, xSQL4, xSQL5, xSQL6, xASOID, XAPORTE, xTurno: String; // HPP_200904_COB (F1)
      DCREAMORT, DCREINTERES, DCREFLAT, xApoApl, xCuoApl: Currency;
      xNumAso, xInc, xRecInc, xNumReg: integer; // HPP_200904_COB (F1)
      Procedure ActualizaFooter;
      Procedure ActuaCampos;
      Procedure ActuaCamposMarc;
      Procedure IniPnlNAsoc;
      Procedure AccIngLote;
      Procedure actpnl1;
      Procedure deactpnl1;
      Procedure descarga(xAsoid, xperiodo, FecPago: String; xMto, xApo: Currency);
      Procedure PaguePorDistribucion(xAsoid, xCredid, xCrecuota: String);
      Function VeriNueAsoc1(): boolean;
      Function BuscaEnTemp(xAsocodmod: String; xAsoapenom: String; xRecobid: String): boolean;
      Function BorraEnTemp(xAsocodmod: String; xAsoapenom: String; xRecobid: String): boolean;
      Procedure ActCabec(wAno: String; wMes: String);
      Procedure Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
      Function CodReg(): String;
      Procedure InsRegAnu();
      Procedure ActCargo(xCobano, xCobmes, xUproid, xUpagoid, xUseid, xAsoid: String);
      Procedure Inconsistencias();
      Procedure DescargaAportes();
      Procedure DescargaCuotas();
      Procedure Mandaexcel();
      Procedure Programadescargo();
   End;

Var
   FIngresoLote: TFIngresoLote;
   xModoSta, sSQL, sFecha, sWhere, xAno, xMes, xBanco, xTrans, xASOAPENOM, xBorra, xWhere: String;
   xSaldoAnt, xSaldoTrimAnt: REAL;
   xEstado5, xEstid5, xEstado1, xEstid1, xEstado2, xEstid2, xEstado4, xEstid4, xEstado3, xEstid3: String;
   xExist: Boolean;
   xTotImporte: double;

Implementation

// Inicio HPC_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
Uses COBDM1, COB001, APO302, MsgDlgs, StrUtils, COB324, COB325, COB020;
// Fin  HPC_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket

{$R *.DFM}

Procedure TFIngresoLote.Z2bbtnCancelClick(Sender: TObject);
Var
   xMarca: TBookMark;
   xRegCob: String;
Begin
   Ocultapaneles;
   If (DM1.cdsAutdisk.ChangeCount > 0) Or (DM1.cdsAutdisk.Modified) Then
   Begin
      DM1.cdsAutdisk.DisableControls;
      xMarca := DM1.cdsDLabo.GetBookmark;
      xRegCob := '';
      DM1.cdsAutdisk.First;
      While Not DM1.cdsAutdisk.EOF Do
      Begin
         If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
         Begin
            DM1.cdsCobxUse.Edit;
            DM1.cdsCobxUse.FieldByName('ARCHIVO').Clear;
            DM1.cdsCobxUse.Post;
            xRegCob := 'S';
         End;
         DM1.cdsAutdisk.Next;
      End;
      DM1.cdsAutdisk.GotoBookmark(xMarca);
      If xRegCob = 'S' Then
      Begin
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
      DM1.cdsAutdisk.EnableControls;
   End;
   DM1.cdsCobxUse.CancelUpdates;
   DM1.cdsAutdisk.CancelUpdates;
End;

Procedure TFIngresoLote.bbtnIngresaAporteClick(Sender: TObject);
Begin
   Ocultapaneles;
   {If Length(dblcdUse.Text)=0 Then
   begin
     ShowMessage('Debe Seleccionar la USE');
     pnlUse.Enabled:=True;
     dblcdUse.Enabled:=True;
     dblcdUse.SetFocus;
     Exit;
   end;}
   xModoSta := '';
   If (DM1.cdsAutdisk.Modified) Or (DM1.cdsAutdisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutdisk.State <> dsBrowse Then
         cdsPost(DM1.cdsAutdisk);
      DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
   End;

   ReadOnlyFalseGridAportes;

   If DM1.cdsAsociados.Active = False Then
      FiltraAsoc;

   If DM1.cdsAsociados.Eof Then
   Begin
      Information(Caption, 'No Existen Asociados Para esta U. Pago');
      Exit;
   End;

  //If DM1.cdsAutdisk.RecordCount > 0 Then
  //begin
   wModo1 := 'A';
   Z2bbtnCancel.Enabled := False;
   Z2bbtnAceptar.Enabled := False;
   LimpiaVent;
   DM1.cdsAutdisk.Append;
   DM1.cdsAutdisk.FieldByName('TRANSAPO').AsFloat := DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat;
   pnlAportes.Visible := True;
   dblcdCodigoModular.Enabled := True;
   dblcdCodigoModular.SetFocus;
    //dblcdCodigoModular.DropDown;
  {end
  Else
  begin
    ShowMessage('Todos los Asociados ya se encuentran en la Lista');
  end;}
End;

Procedure TFIngresoLote.bbtnCancelClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   pnlCoinsidencias.Visible := False;
   DM1.cdsAutdisk.Cancel;
   pnlAportes.Visible := False;
   Z2bbtnCancel.Enabled := True;
   Z2bbtnAceptar.Enabled := True;
   If Length(Trim(DM1.cdsAutdisk.FieldByName('ASOID').AsString)) > 0 Then
   Begin
      DM1.cdsAutdisk.Edit;
      DM1.cdsAutdisk.FieldByName('FREGCOB').AsString := '';
      DM1.cdsAutdisk.Post;
   End;
   DM1.cdsAsociados.Close;
   ActualizaFooter;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.bbtnSigueClick(Sender: TObject);
Var
   xSQL: String;
Begin
  //*12[#][.*2[#]]
   If Length(dblcdUse.Text) = 0 Then
   Begin
      ShowMessage('Debe Seleccionar la USE');
      pnlUse.Enabled := True;
      dblcdUse.Enabled := True;
      dblcdUse.SetFocus;
      Exit;
   End;

   If Length(speAno.Text) = 0 Then
   Begin
      ShowMessage('Debe Registrar el Ao');
     //speAno.SetFocus;
      Exit;
   End;

   If Length(speMes.Text) = 0 Then
   Begin
      ShowMessage('Debe Registrar el Mes');
     //speMes.SetFocus;
      Exit;
   End;

   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat := '########0.00';
   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).EditFormat := '########0.00';

   If (dbeImpAporte.Text = '') Or (StrToFloat(dbeImpAporte.Text) <= 0) Then
   Begin
      ShowMessage('Aporte Incorrecto');
      dbeImpAporte.SetFocus;
      Exit;
   End;

   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT COUNT(*) AS X'
      + ' FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.FieldByName('X').AsInteger > 0 Then
   Begin
      xSQL := 'SELECT * FROM COB304 A'
         + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
         + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
         + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

      DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);
      ActualizaFooter;
      ShowMessage('Los Movimientos ya se encuentran Insertados');
      dbgAportes.Enabled := True;
      dblcdUse.Enabled := False;
      bbtnIngresaAporte.Enabled := True;
      bbtnAutdisk.Enabled := True;
      Screen.Cursor := crDefault;
      Exit;
   End;

   bbtnSigue.Enabled := False;
   bbtnAutdisk.Enabled := False;

   xSQL := 'SELECT COUNT(*) AS X'
      + ' FROM APO201'
      + ' WHERE UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
      + ' AND UPAGOID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
      + ' AND USEID    =' + QuotedStr(dblcdUse.Text);

   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSQL);
   DM1.cdsReporte1.Open;

   If DM1.cdsReporte1.FieldByName('X').AsInteger = 0 Then
   Begin
      Screen.Cursor := crDefault;
      Information(Caption, 'No Existen Asociados Para Transferir de esta U.S.E.');
      Exit;
   End;

   If Not Question(Caption, 'Se Insertar ' + IntToStr(DM1.cdsReporte1.FieldByName('X').AsInteger) +
      ' Movimientos para Todos los Asociados de la USE seleccionada.' + #13 + #13 +
      'Desea Continuar?') Then
   Begin
      Screen.Cursor := crDefault;
      dbgAportes.Enabled := True;
      dblcdUse.Enabled := True;
      bbtnIngresaAporte.Enabled := True;
      bbtnAutdisk.Enabled := True;
      bbtnSigue.Enabled := True;
      bbtnAtras.SetFocus;
      Exit;
   End;

   dbeImpAporte.Text := Trim(dbeImpAporte.Text);
   xSQL := 'INSERT INTO COB304 A (A.TRANSANO, A.TRANSMES, A.ASOID, A.ASOCODMOD, A.TRANSAPO, '
          +'                      A.USEID, A.ASOAPENOM, A.UPROID, A.UPAGOID, A.DPTOID, A.TMONID, '
          +'                      A.TRANSMTO, A.TRANSCUO, A.BANCOID, A.CCBCOID, A.TRANSNOPE, '
          +'                      A.TRANSFOPE, A.FORPAGOID, A.APOSEC, A.RCOBID, A.DETRCOBID, '
          +'                      A.USERCOBID, A.USUARIO, A.FREG, A.HREG) '
          +'SELECT ' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANOAPO').AsString)+', '
                     + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBMESAPO').AsString) + ', B.ASOID, '
                     + 'B.ASOCODMOD, ' + dbeImpAporte.Text + ', TRIM(B.USEID), B.ASOAPENOM, '
                     + 'TRIM(B.UPROID), TRIM(B.UPAGOID), TRIM(C.DPTOID), ' + QuotedStr('N')+', '
                     + dbeImpAporte.Text + ', 0, ' + QuotedStr(dblcBanco.Text) +', '
                     + QuotedStr(dblcCtaCte.Text) + ', '
                     + QuotedStr(dbeNumOperacion.Text) + ', '
                     + QuotedStr(dbdtpFecOperacion.Text) + ', '
                     + QuotedStr(dblcFormaPago.Text) + ', '
                     + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANOAPO').AsString
                               + DM1.cdsCobxUse.FieldByName('RCOBMESAPO').AsString) + ', '
                     + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ', '
                     + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ', '
                     + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString) + ', '
                     + QuotedStr(DM1.wUsuario) + ', TO_DATE(SYSDATE, ' + QuotedStr('DD/MM/YYY') + '), SYSDATE '
          +'FROM APO201 B, APO101 C '
          +'WHERE B.UPROID = C.UPROID '
          +'  AND B.UPAGOID = C.UPAGOID '
          +'  AND B.USEID = C.USEID '
          +'  AND C.UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString) + ' '
          +'  AND C.UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString) + ' '
          +'  AND C.USEID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);

   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   ConfiguraGridAportes;
   ActualizaFooter;

   DM1.cdsCobxUse.Edit;
   //DM1.cdsCobxUse.FieldByName('RCOBID').AsString     := DM1.cdsCobxUse.FieldByname('RCOBID').AsString;
   DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString := dbeNumOperacion.Text;
   DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsDateTime := dbdtpFecOperacion.Date;
   DM1.cdsCobxUse.FieldByName('USEID').AsString := dblcdUse.Text;
   //DM1.cdsCobxUse.FieldByName('UPAGOID').AsString    := DM1.cdsCobxUse.FieldByName('UPAGOID').AsString;
   //DM1.cdsCobxUse.FieldByName('UPROID').AsString     := DM1.cdsUses.FieldByName('UPROID').AsString;
   //DM1.cdsCobxUse.FieldByName('TMONID').AsString     := DM1.cdsCobxUse.FieldByName('TMONID').AsString;
   DM1.cdsCobxUse.FieldByName('RCOBUSETOT').AsFloat := StrToFloat(FormatFloat('########0.00',
                                                         DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', '')));
   DM1.cdsCobxUse.FieldByName('RCOBUSEAPO').AsFloat := StrToFloat(FormatFloat('########0.00',
                                                         DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', '')));
   DM1.cdsCobxUse.FieldByName('RCOBUSECUO').AsFloat := StrToFloat(FormatFloat('########0.00',
                                                         DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', '')));
   //DM1.cdsCobxUse.FieldByName('RCOBANO').AsString    := DM1.cdsCobxUse.FieldByName('RCOBANO').AsString;
   //DM1.cdsCobxUse.FieldByName('RCOBMES').AsString    := DM1.cdsCobxUse.FieldByName('RCOBMES').AsString;
   //DM1.cdsCobxUse.FieldByName('RCOBID').AsString     := DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
   //DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString  := DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
   DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat := StrToFloat(dbeImpAporte.Text);
   DM1.cdsCobxUse.FieldByName('USUARIO').AsString := DM1.wUsuario;
   DM1.cdsCobxUse.FieldByName('FREG').AsDateTime := Date;
   DM1.cdsCobxUse.FieldByName('HREG').AsDateTime := Date + time;
   cdsPost(DM1.cdsCobxUse);
   DM1.cdsCobxUse.Post;
   DM1.ControlTran;
   pnlUse.Enabled := False;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue :=
                              FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', ''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue :=
                              FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', ''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue :=
                              FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', ''), ffNumber, 15, 2);
   xTotImporte := DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', '');

   ShowMessage('Actualizacin Realizada');

   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat := '###,###,##0.00';

   Screen.Cursor := crDefault;
   dbgAportes.Enabled := True;
   //dblcdUse.Enabled:=False;
   dblcdUse.Enabled := True;
   bbtnIngresaAporte.Enabled := True;
   bbtnAutdisk.Enabled := True;
End;

Procedure TFIngresoLote.FormActivate(Sender: TObject);
Var
   xSQL, xWhere: String;
   Present: TDate;
Begin

  //CAMBIO PARA QUE SE PUEDA DESCARGAR A PARTIR DE LA 7 DE LA NOCHE
  //RMZ Ricardo Medina Z. 30/12/2008
  //SAR2008JC-0332  DAD_RM -2009 0004
 {  Xsql:= 'select to_char(SYSDATE,''HH24:MI:SS'') HORA from dual ';
   DM1.cdsAux.Close;
   DM1.cdsAux.DataRequest(XSQL);
   DM1.cdsAux.Open;

   If DM1.cdsAux.FieldByName('HORA').AsDateTime>= StrToTime('20:00:00') Then
      Z2bbtnInsertaCre.Enabled := True
   Else Z2bbtnInsertaCre.Enabled := False;
   Dm1.cdsAux.Close;
   Dm1.cdsAux.IndexFieldNames:='';  }

   Screen.Cursor := crHourGlass;
   dbePerCont.Text := Copy(DateToStr(Date), 7, 4) + Copy(DateToStr(Date), 4, 2);
   Present := Date;
   xExist := False;
   dbeLetra.Text := '';
   Ocultapaneles;
   pnlAportes.Visible := False;
   DM1.cdsTransferencia.Close;
   xSQL := 'Select * From APO101'
      + ' Where UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
      + ' And UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

   DM1.cdsUses.Filter := '';
   DM1.cdsUses.Filtered := False;
   DM1.cdsUses.IndexFieldNames := '';
   DM1.cdsUses.Close;
   DM1.cdsUses.DataRequest(xSQL);
   DM1.cdsUses.Open;

   DM1.cdsQry1.Filter := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;

   xSQL := 'SELECT * FROM APO107 WHERE ASOTIPCRE=''S'' ';
   DM1.cdsTipCreA.Filter := '';
   DM1.cdsTipCreA.Filtered := False;
   DM1.cdsTipCreA.IndexFieldNames := '';
   DM1.cdsTipCreA.Close;
   DM1.cdsTipCreA.DataRequest(xSQL);
   DM1.cdsTipCreA.Open;

{   xSQL := 'SELECT * FROM APO101 WHERE UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);
   DM1.Filtracds(DM1.cdsUses, xSQL);}

   DM1.cdsUses.IndexFieldNames := 'USEID';
   DM1.cdsUses.Setkey;
   DM1.cdsUses.FieldByName('USEID').AsString := DM1.cdsCobxUse.FieldByName('USEID').AsString;

   //** POR COBRAR
   xEstado2 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO =' + QuotedStr('2'), 'ESTDES');
   xEstid2 := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** NO PAGADO
   xEstado5 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO =' + QuotedStr('N'), 'ESTDES');
   xEstid5 := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** CANCELADO
   xEstado1 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO =' + QuotedStr('Y'), 'ESTDES');
   xEstid1 := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** PARCIAL
   xEstado4 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO =' + QuotedStr('V'), 'ESTDES');
   xEstid4 := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** PAGADO
   xEstado3 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO =' + QuotedStr('C'), 'ESTDES');
   xEstid3 := DM1.cdsQry.FieldByName('ESTID').AsString;

  {sWhere:= 'FPAGOID='+DM1.cdsCobxUse.FieldByName('FPAGOID').AsString;
  DM1.DisplayDescrip('prvSQL','TGE112','FPAGOBCO',sWhere,'FPAGOBCO');
  If DM1.cdsQry.FieldbyName('FPAGOBCO').AsString <> 'S' Then
  begin
    dblcBanco.Enabled:=False;
  end
  Else
  begin
    dblcBanco.Enabled:=True;
  end;}

   DM1.wTDatos := 'T'; // Para Mostrar Todos los Registros
   If DM1.wModo = 'A' Then
   Begin
     {LimpiaForm;
     DM1.cdsCobxUse.FieldByName('USERCOBID').AsString:=DM1.StrZero(IntToStr(DM1.cdsCobxUse.RecordCount+1),7);
     DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString:=DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
     DM1.cdsCobxUse.FieldByName('RCOBID').AsString:=DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
     DM1.cdsCobxUse.FieldByName('RCOBANO').AsString:=DM1.cdsCobxUse.FieldByName('RCOBANO').AsString;
     DM1.cdsCobxUse.FieldByName('RCOBMES').AsString:=DM1.cdsCobxUse.FieldByName('RCOBMES').AsString;
     pnlUse.Enabled:=True;
     dblcdUse.Enabled:=True;
     dblcdUse.SetFocus;
     dblcFormaPagoExit(Sender);
     dblcBancoExit(Sender);
     dblcdAgenBcoExit(Sender);
     dblcMonedaExit(Sender);}
   End
   Else
      If DM1.wModo = 'M' Then
      Begin
      //Para colocar el Monto
{      xWhere := 'RCOBID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('RCOBID').AsString)
               +' And DETRCOBID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('DETRCOBID').AsString);
      DM1.DisplayDescrip('prvSQL', 'COB302', 'DOCMTO', xWhere, 'DOCMTO');          }

         xWhere := 'RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
            + ' And DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString);
         DM1.DisplayDescrip('prvSQL', 'COB302', 'CPAGOMTO', xWhere, 'CPAGOMTO');

         DM1.cdsCobxUse.Edit;
         DM1.cdsCobxUse.FieldByName('RCOBUSETOT').AsFloat := DM1.cdsQry.FieldByName('CPAGOMTO').AsFloat;
         speAno.Text := DM1.cdsCobxUse.FieldByName('RCOBANOAPO').AsString;
         speMes.Text := DM1.cdsCobxUse.FieldByName('RCOBMESAPO').AsString;

         dblcFormaPagoExit(Sender);
         dblcBancoExit(Sender);
         dblcdAgenBcoExit(Sender);
         dblcMonedaExit(Sender);
         dblcUProcesoExit(Sender);
         dblcdUPagoExit(Sender);

         If DM1.cdsAutdisk.RecordCount > 0 Then
         Begin
            dbgAportes.Enabled := True;
            bbtnIngresaAporte.Enabled := True;
            bbtnSigue.Enabled := False;
            bbtnAutdisk.Enabled := True;
            pnlUse.Enabled := True;
            ConfiguraGridAportes;
            ActualizaFooter;
            dblcdUse.Text := DM1.cdsCobxUse.FieldByName('USEID').AsString;
            sWhere := 'UPROID       =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
               + ' AND UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
               + ' AND USEID   =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString);
            edtUse.Text := DM1.DisplayDescrip('prvTGE', 'APO101', 'USEID, USENOM', sWhere, 'USENOM');
       //Exit;
         End;
         ConfiguraGridAportes;

         DM1.cdsAutdisk.Filtered := False;
         DM1.cdsAutdisk.IndexFieldNames := '';
         DM1.cdsAutdisk.Filter := '';
         DM1.cdsAutdisk.Filtered := True;

         ActualizaFooter;
    //bbtnSigue.SetFocus;
      End;

   xBorra := '';

   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).EditFormat := '########0.00';

//   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBUSETOT')).DisplayFormat := '###,###,##0.00';
//   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBUSETOT ')).EditFormat   := '########0.00';

   bbtnIngresaAporte.Enabled := False;
  //ConfiguraGridAportes;
  //ActualizaFooter;
   pnlUse.Enabled := True;
   DM1.cdsQry2.Close;
   bbtnsigue.Enabled := True;
   dblcdUse.Text := DM1.cdsCobxUse.FieldByName('USEID').AsString;
   sWhere := 'UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
      + ' AND UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
      + ' AND USEID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString);
   edtUse.Text := DM1.DisplayDescrip('prvTGE', 'APO101', 'USEID, USENOM', sWhere, 'USENOM');

   If DM1.wModo = 'M' Then
   Begin
     // Determina si el Lote corresponde a un Global ya concluido
      xWhere := 'BANCOID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString)
         + ' AND AGENBCOID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)
         + ' AND RCOBANO=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANO').AsString)
         + ' AND RCOBMES=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBMES').AsString)
         + ' AND RCOBFOPE=TO_DATE('+QuotedStr(formatdatetime(wFormatFecha,
                                    DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsDateTime)) + ')'
         + ' AND RCOBNOPE=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString);
      If (DM1.DisplayDescrip('prvTGE', 'COB301', 'RCOBFIN', xWhere, 'RCOBFIN') = 'S') Then
      Begin
         dbgAportes.Enabled := False;
         bbtnimprime.Enabled := True;

         z2bbtnfiltro.Enabled := False;
         z2bbtnordencodmod.Enabled := False;
         z2bbtnordenalfab.Enabled := False;
         bbtninconsistencia.Enabled := False;
         z2bbtncancel.Enabled := False;
         z2bbtnaceptar.Enabled := False;
         z2bbtnsalir.Enabled := False;
         bbtnautdisk.Enabled := False;
         bbtnsigue.Enabled := False;
         bbtninglinea.Enabled := False;
         bbtnatras.Enabled := False;
         z2bbtnelimina.Enabled := False;
         bbtnbuscainc.Enabled := False;
         z2bbtninserta.Enabled := False;
         z2bbtninsertacre.Enabled := False;
         bbtningresaaporte.Enabled := False;
      End;
   End;
   Screen.cursor := crDefault;
End;

Procedure TFIngresoLote.dblcdUseExit(Sender: TObject);
Begin
   If Length(dblcdUse.Text) > 0 Then
   Begin
      sWhere := 'UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
         + ' AND UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
         + ' AND USEID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString);
      edtUse.Text := DM1.DisplayDescrip('prvTGE', 'APO101', 'USENOM', sWhere, 'USENOM');
      If bbtnCancel.Focused Then Exit;
      If (edtUse.Text = '') And (dblcdUse.Text <> '') Then
      Begin
         dblcdUse.SetFocus;
         Raise Exception.Create('Error, Cdigo USE no v lido');
      End;
      FiltraAsoc;
   End;
  //DM1.cdsCobxUse.Edit;
  //DM1.cdsCobxUse.FieldByName('USEID').AsString:=DM1.cdsUse.FieldByName('USEID').AsString;
End;

Procedure TFIngresoLote.dblcFormaPagoExit(Sender: TObject);
Begin
   sWhere := 'FORPAGOABR = ' + QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)
      + ' AND FORPAGFAPO LIKE' + QuotedStr('%S%');
   edtFormaPago.Text := DM1.DisplayDescrip('prvTGE', 'COB101', 'FORPAGODES', sWhere, 'FORPAGODES');
   dblcFormaPago.Text := DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString;

   If z2bbtnCancel.Focused Then Exit;

   If (edtFormaPago.Text = '') And (dblcFormaPago.Text <> '') Then
   Begin
      Raise Exception.Create('Error, Cdigo de Forma de Pago no v lido');
   End;
   If Length(dblcFormaPago.Text) = 0 Then
   Begin
      Raise Exception.Create('Ingrese la Forma de Pago del Aporte');
   End;
End;

Procedure TFIngresoLote.dblcBancoExit(Sender: TObject);
Begin
   // Inicio: HPP_200919_COB realizado por JCARBONEL - no relacionado con el pase HPP_200918_COB
   sWhere := 'FPAGOID =' + Quotedstr(DM1.cdsCobxUse.FieldByName('FPAGOID').AsString);
   // Fin: HPP_200919_COB
   DM1.DisplayDescrip('prvSQL', 'TGE112', 'FPAGOBCO', sWhere, 'FPAGOBCO');
   If DM1.cdsQry.FieldbyName('FPAGOBCO').AsString <> 'S' Then
      Exit;

   sWhere := 'BANCOID = ' + QuotedStr(dblcBanco.Text);
   edtBanco.Text := DM1.DisplayDescrip('prvTGE', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM');
   If z2bbtnCancel.Focused Then Exit;
   If dblcBanco.Text = '' Then
   Begin
      ShowMessage('Ingresa el Cdigo del Banco');
      dblcBanco.SetFocus;
      Exit;
   End;
   If (edtBanco.Text = '') And (dblcBanco.Text <> '') Then
   Begin
     //dblcBanco.SetFocus;
     //Raise Exception.Create('Error, C digo de Banco no vlido');
   End;
   If xBanco <> dblcBanco.Text Then
      dblcCtaCte.Text := '';
   DM1.FiltraCDS(DM1.cdsCtaCtes, 'SELECT * FROM TGE106 WHERE BANCOID =' + QuotedStr(dblcBanco.Text)
                                + ' AND CIAID =' + QuotedStr(wCiaDef));
End;

Procedure TFIngresoLote.dblcMonedaExit(Sender: TObject);
Begin
   sWhere := 'TMONID = ' + QuotedStr(dblcMoneda.Text);
   edtMoneda.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');
   If bbtnCancel.Focused Then Exit;
   If (edtMoneda.Text = '') And (dblcMoneda.Text <> '') Then
   Begin
      dblcMoneda.SetFocus;
      Raise Exception.Create('Error, Código de Tipo de Moneda no vlido');
   End;
   If dblcMoneda.Text = '' Then
   Begin
      dblcMoneda.SetFocus;
      Raise Exception.Create('Ingrese el Tipo de Moneda del Aporte');
   End;
End;

Procedure TFIngresoLote.bbtnAceptarClick(Sender: TObject);
Var
   xSQL, xWhere: String;
   Code: Integer;
   I: Double;
   xxUse, xxDpto, xASOID, xASOCODMOD, xASOAPENOM, xUSEID, xASOCODPAGO: String;
Begin

   ReadOnlyFalseGridAportes;
   If Length(Trim(dblcdCodigoModular.Text)) = 0 Then
   Begin
      Beep;
      MessageDlg('Ingrese el Código Modular', mtInformation, [mbOk], 0);
      dblcdCodigoModular.SetFocus;
      Exit;
   End;

   If Length(Trim(dbeCodigo.Text)) = 0 Then
   Begin
      Beep;
      MessageDlg('Ingrese el Cdigo del Asociado', mtInformation, [mbOk], 0);
      dblcdCodigoModular.SetFocus;
      Exit;
   End;

   If Length(Trim(dbeApeNom.Text)) = 0 Then
   Begin
      Beep;
      MessageDlg('Ingrese el Nombre del Asociado', mtInformation, [mbOk], 0);
      dblcdCodigoModular.SetFocus;
      Exit;
   End;

   xWhere := 'UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
      + ' And UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
      + ' And USEID =' + QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString);

   If Length(DM1.DisplayDescrip('prvSQL', 'APO101', 'UPROID, UPAGOID, USEID', xWhere, 'USEID')) = 0 Then
   Begin
      Beep;
      MessageDlg('La USE ' + DM1.cdsAutDisk.FieldByName('USEID').AsString + ' No es V lida', mtInformation, [mbOk], 0);
      dblcdUseA.SetFocus;
      Exit;
   End
   Else //Si la USE es Vlida, se Verifica si Tiene Inconsistencia FUSENOEX     // RICMZ

   Begin
      xWhere := 'ASOID =' + QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
         + ' And RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
         + ' And DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
         + ' And USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
         + ' And FTRANSF =' + QuotedStr('I')
         + ' And FUSENOEX =' + QuotedStr('S');

      If Length(DM1.DisplayDescrip('prvSQL', 'COB304', 'ASOID, FTRANSF, FUSENOEX', xWhere, 'ASOID')) > 0 Then
      Begin
         xSQL := 'Update COB304 Set'
            + ' FTRANSF = Null,'
            + ' FUSENOEX = Null'
            + ' Where ASOID =' + QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
            + ' And RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
            + ' And DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
            + ' And USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
            + ' And FTRANSF =' + QuotedStr('I')
            + ' And FUSENOEX =' + QuotedStr('S');
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
   End;

   dbeAporte.Text := Trim(dbeAporte.Text);
   Val(dbeAporte.Text, I, Code);
   If Code <> 0 Then
   Begin
      ShowMessage('Debe Registrar Correctamente el Monto de Aportes');
      dbeAporte.SetFocus;
      Exit;
   End
   Else
   Begin
// Inicio: SPP_201312_COB    : 26/09/2013  Revisar inconsistencia
      dbeCuota.Text := stringReplace(Trim(dbeCuota.Text),',','',[rfReplaceAll]);
// Fin: SPP_201312_COB       : 26/09/2013  Revisar inconsistencia
      Val(dbeCuota.Text, I, Code);
      If Code <> 0 Then
      Begin
         ShowMessage('Debe Registrar Correctamente el Monto de la Cuota Aportes');
         dbeCuota.SetFocus;
         Exit;
      End;
      If (StrToFloat(dbeAporte.Text) = 0) And (StrToFloat(dbeCuota.Text) = 0) Then
      Begin
         ShowMessage('Debe Registrar el Monto de Aporte o Cuota');
         dbeAporte.SetFocus;
         Exit;
      End;
   End;

   If DM1.cdsAutdisk.Modified Then
   Begin
      If wModo1 = 'A' Then
      Begin
         If Length(Trim(xModoSta)) > 0 Then
         Begin
            xASOID := DM1.cdsAutdisk.FieldByName('ASOID').AsString;
            xASOCODMOD := DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString;
            xASOAPENOM := DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString;
            xUSEID := DM1.cdsAutdisk.FieldByName('USEID').AsString;
         End
         Else
         Begin
            xASOID := DM1.cdsAsociados.FieldByName('ASOID').AsString;
            xASOCODMOD := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
            xASOAPENOM := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
            xUSEID := DM1.cdsAutdisk.FieldByName('USEID').AsString;
         End;
      End
      Else
         If wModo1 = 'M' Then
         Begin
            xASOID := DM1.cdsAutdisk.FieldByName('ASOID').AsString;
            xASOCODMOD := DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString;
            xASOAPENOM := DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString;
            xUSEID := DM1.cdsAutdisk.FieldByName('USEID').AsString;
         End;

      DM1.cdsAutdisk.Edit;
      DM1.cdsAutdisk.FieldByName('ASOID').AsString := xASOID;
      DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString := xASOCODMOD;
      DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString := xASOAPENOM;

      xSQL := 'SELECT * FROM APO101'
         + ' WHERE UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
         + ' AND UPAGOID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
         + ' AND USEID    =' + QuotedStr(xUSEID);

      DM1.Filtracds(DM1.cdsQry, xSQL);

      If DM1.cdsQry.RecordCount = 0 Then
      Begin
         xSQL := 'SELECT * FROM APO101'
            + ' WHERE UPROID =' + QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
            + ' AND UPAGOID  =' + QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)
            + ' AND USEID    =' + QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString);
         DM1.Filtracds(DM1.cdsQry, xSQL);
      End;

      DM1.cdsAutdisk.FieldByName('UPROID').AsString := DM1.cdsCobxUse.FieldbyName('UPROID').AsString;
      DM1.cdsAutdisk.FieldByName('UPAGOID').AsString := DM1.cdsCobxUse.FieldbyName('UPAGOID').AsString;
      DM1.cdsAutdisk.FieldByName('USEID').AsString := DM1.cdsQry.FieldbyName('USEID').AsString;
      DM1.cdsAutdisk.FieldByName('DPTOID').AsString := DM1.cdsQry.FieldbyName('DPTOID').AsString;
      DM1.cdsAutdisk.FieldByName('TRANSANO').AsString := speAno.Text;
      DM1.cdsAutdisk.FieldByName('TRANSMES').AsString := DM1.StrZero(speMes.Text, 2);

      If (Trim(dblcFormaPago.Text) = 'PLA') Or
         (Trim(dblcFormaPago.Text) = 'REG') Then
         DM1.cdsAutdisk.FieldByName('APOSEC').AsString := speAno.Text + DM1.StrZero(speMes.Text, 2)
      Else
         DM1.cdsAutdisk.FieldByName('APOSEC').AsString := Copy(dbdtpFecOperacion.Text, 7, 4)
                                                        + Copy(dbdtpFecOperacion.Text, 4, 2);

      DM1.cdsAutdisk.FieldByName('TMONID').AsString := dblcMoneda.Text;
      DM1.cdsAutdisk.FieldByName('BANCOID').AsString := dblcBanco.Text;
      DM1.cdsAutdisk.FieldByName('CCBCOID').AsString := dblcCtaCte.Text;
      DM1.cdsAutdisk.FieldByName('TRANSNOPE').AsString := dbeNumOperacion.Text;
      DM1.cdsAutdisk.FieldByName('TRANSFOPE').AsDateTime := dbdtpFecOperacion.Date;
      DM1.cdsAutdisk.FieldByName('FORPAGOID').AsString := dblcFormaPago.Text;
      DM1.cdsAutdisk.FieldByName('ASOCODPAGO').AsString := dbeCodigoPago.Text;

      DM1.cdsAutdisk.FieldByName('RCOBID').AsString := DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
      DM1.cdsAutdisk.FieldByName('DETRCOBID').AsString := DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
      DM1.cdsAutdisk.FieldByName('USERCOBID').AsString := DM1.cdsCobxUse.FieldByName('USERCOBID').AsString;

      dbeAporte.Text := Trim(dbeAporte.Text);
      Val(dbeAporte.Text, I, Code);
      If Code = 0 Then
         DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat := StrToFloat(dbeAporte.Text)
      Else
         DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat := 0;

      dbeCuota.Text := Trim(dbeCuota.Text);
      Val(dbeCuota.Text, I, Code);
      If Code = 0 Then
         DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat := StrToFloat(dbeCuota.Text)
      Else
         DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat := 0;

// Inicio: SPP_201312_COB       : 26/09/2013  Revisar inconsistencia
      dbeTotal.Text := stringReplace(Trim(dbeTotal.Text),',','',[rfReplaceAll]);
// Fin: SPP_201312_COB          : 26/09/2013  Revisar inconsistencia

      Val(dbeTotal.Text, I, Code);
      If Code = 0 Then
         DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat := StrToFloat(dbeTotal.Text)
      Else
         DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat := 0;

      DM1.cdsAutdisk.FieldByName('FREGCOB').AsString := '';
      DM1.cdsAutdisk.FieldByName('FTRANSFC').AsString := '';
      DM1.cdsAutdisk.FieldByName('USUARIO').AsString := DM1.wUsuario;
      DM1.cdsAutdisk.FieldByName('FREG').AsDateTime := Date;
      DM1.cdsAutdisk.FieldByName('HREG').AsDateTime := Date + Time;

      cdsPost(DM1.cdsAutdisk);
      DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

    { If xModoSta = 'A' Then   RMZ
      begin
        GenAsociado;
        xModoSta := '';
      end; }

      Z2bbtnCancel.Enabled := True;
      Z2bbtnAceptar.Enabled := True;

      ConfiguraGridAportes;
      ActualizaFooter;

      Beep;
      MessageDlg('Datos Actualizados', mtCustom, [mbOk], 0);
     //FiltraAsoc;
      ReadOnlyFalseGridAportes;
      LimpiaVent;
      DM1.cdsAutdisk.Append;
      DM1.cdsAutdisk.FieldByName('TRANSAPO').AsFloat := DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat;
      dblcdCodigoModular.Enabled := True;
      dblcdCodigoModular.SetFocus;
   End;
End;

Procedure TFIngresoLote.dblcCtaCteExit(Sender: TObject);
Begin
   If Z2bbtnCancel.Focused Then Exit;
   If dblcCtaCte.Text = '' Then
   Begin
      dblcCtaCte.SetFocus;
      Raise Exception.Create('Ingrese el Nmero de Cuenta Corriente');
   End;
   sWhere := 'CCBCOID = ' + QuotedStr(dblcCtaCte.Text);
   If DM1.DisplayDescrip('prvTGE', 'TGE106', 'BANCOID', sWhere, 'BANCOID') = '' Then
   Begin
      dblcCtaCte.SetFocus;
      Raise Exception.Create('Cuenta Corriente no v lida');
   End;
   xBanco := dblcBanco.Text;
End;

Procedure TFIngresoLote.dbeNumOperacionExit(Sender: TObject);
Begin
   If bbtnCancel.Focused Then Exit;
   If dblcCtaCte.Text = '' Then
   Begin
      dblcCtaCte.SetFocus;
      Raise Exception.Create('Ingrese el Nmero de Cuenta Corriente');
   End;
End;

Procedure TFIngresoLote.dbdtpFecOperacionExit(Sender: TObject);
Begin
   If z2bbtnCancel.Focused Then Exit;
   If dbdtpFecOperacion.Text = '' Then
   Begin
      dbdtpFecOperacion.SetFocus;
      Raise Exception.Create('Ingrese la Fecha de Operacin');
   End;
End;

Procedure TFIngresoLote.Z2bbtnAceptarClick(Sender: TObject);
Begin
   Ocultapaneles;
   If DM1.cdsAutdisk.Active Then
   Begin
      If (DM1.cdsAutdisk.ChangeCount > 0) Or (DM1.cdsAutdisk.Modified) Then
      Begin
         DM1.cdsAutdisk.DisableControls;
         DM1.cdsAutdisk.First;
         While Not DM1.cdsAutdisk.EOF Do
         Begin
            If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
            Begin
               DM1.cdsAutdisk.Edit;
               DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
               DM1.cdsAutdisk.Post;
            End;
            DM1.cdsAutdisk.Next;
         End;
         DM1.cdsAutdisk.EnableControls;
         DM1.cdsAutdisk.First;
      End;
      DM1.cdsAutdisk.Edit;
      DM1.cdsAutdisk.FieldByName('USUARIO').AsString := DM1.wUsuario;
      DM1.cdsAutdisk.FieldByName('FREG').AsDateTime := Date;
      DM1.cdsAutdisk.FieldByName('HREG').AsDateTime := Date + Time;
      cdsPost(DM1.cdsAutdisk);
      DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      ShowMessage('Actualizaci n Realizada');
   End;
End;

Procedure TFIngresoLote.dblcdCodigoModularExit(Sender: TObject);
Begin

   If Length(trim(dblcdCodigoModular.Text)) = 0 Then
   Begin
      xSQL := 'SELECT ASOID, ASOCODMOD, ASOTIPID, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID '
             +'FROM APO201 '
            + 'WHERE ASOID =''XX'' ';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      dm1.cdsQry2.Open;
      Exit;
   End;

   If bbtnCancel.Focused Then Exit;

   dblcdCodigoModular.Text := DM1.StrZero(dblcdCodigoModular.Text, xLogAsoid);

//Busca en el Maestro de Asociados
   DM1.cdsAsociados.IndexFieldNames := 'ASOCODMOD';
   DM1.cdsAsociados.Setkey;
   DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString := dblcdCodigoModular.Text;
   If DM1.cdsAsociados.GotoKey Then
   Begin
      sWhere := 'ASOCODMOD =' + QuotedStr(dblcdCodigoModular.Text)
         + ' AND UPROID =' + QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString) //RICMZ -- MOMENTANEO
         + ' AND UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString); //RICMZ -- MOMENTANEO

      DM1.DisplayDescrip('prvTGE', 'APO201', 'ASOID, ASOCODMOD,ASOTIPID, ASOCODPAGO, ASOAPENOM, USEID',
                                                sWhere, 'ASOCODMOD');
      If DM1.cdsQry.RecordCount > 1 Then
      Begin
         Beep;
         MessageDlg('Existen ' + IntToStr(DM1.cdsQry.RecordCount)
                  + ' Registros con Código Modular ' + dblcdCodigoModular.Text, mtInformation, [mbOk], 0);

         xSQL := 'SELECT ASOID, ASOCODMOD, ASOTIPID,ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID '
                +'FROM APO201 '
                + ' WHERE ASOCODMOD =' + QuotedStr(dblcdCodigoModular.Text)
                + ' And UPROID =' + QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString) //RICMZ MOMENTANEO...
                + ' And UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString); //RICMZ MOMENTANEO...

         DM1.cdsQry5.Filter := '';
         DM1.cdsQry5.Filtered := False;
         DM1.cdsQry5.IndexFieldNames := '';
         DM1.cdsQry5.Close;
         DM1.cdsQry5.DataRequest(xSQL);
         DM1.cdsQry5.Open;

         pnlCoinsidencias.Visible := True;

         dbgCoinsidencias.Selected.Clear;
         dbgCoinsidencias.Selected.Add('ASOID'#9'10'#9'C digo');
         dbgCoinsidencias.Selected.Add('ASOCODMOD'#9'11'#9'Cdigo~Modular');
         dbgCoinsidencias.Selected.Add('ASOCODAUX'#9'3'#9'C digo~Auxiliar');
         dbgCoinsidencias.Selected.Add('ASOCODPAGO'#9'10'#9'Cdigo~Pago');
         dbgCoinsidencias.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos~Nombres');
         dbgCoinsidencias.Selected.Add('UPROID'#9'5'#9'U. Proceso');
         dbgCoinsidencias.Selected.Add('UPAGOID'#9'5'#9'U. Pago');
         dbgCoinsidencias.Selected.Add('USEID'#9'5'#9'U.S.E.');
         dbgCoinsidencias.ApplySelected;
         dbgCoinsidencias.DataSource := DM1.dsQry5;

      End
      Else
      Begin
         DM1.cdsAutdisk.Edit;
         DM1.cdsAutDisk.FieldByName('ASOID').AsString := DM1.cdsQry.FieldByName('ASOID').AsString;
         DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
         DM1.cdsAutdisk.FieldByName('ASOTIPID').AsString := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
         DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
         DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
         DM1.cdsAutDisk.FieldByName('USEID').AsString := DM1.cdsQry.FieldByName('USEID').AsString;
         DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat := 0;
         DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat := 0;
         dbeCodigoPago.Text := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
         dblcdUseAExit(Sender);
         dbeAporte.SetFocus;
      End;
   End
   Else
   Begin
      pnlCoinsidencias.Visible := True;
      dbgCoinsidencias.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos y Nombres');
      dbgCoinsidencias.Selected.Add('USEID'#9'5'#9'Use');
      dbgCoinsidencias.Selected.Add('UPROID'#9'5'#9'U. ~Proceso');
      dbgCoinsidencias.Selected.Add('UPAGOID'#9'5'#9'U.~Pago');
      xSQL := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.USEID, A.UPROID, A.ASOCODPAGO, A.UPAGOID'
         + ' FROM APO201 A'
         + ' WHERE ASOCODMOD = ' + QuotedStr(dblcdCodigoModular.Text);
      DM1.cdsQry5.Filter := '';
      DM1.cdsQry5.Filtered := False;
      DM1.cdsQry5.Close;
      DM1.cdsQry5.datarequest(xSQL);
      DM1.cdsQry5.Open;
      dbgCoinsidencias.DataSource := DM1.dsQry5;

      If DM1.cdsQry5.Recordcount = 0 Then
      Begin
       //Si No lo Encuentra en el Maestro de Asociados entonces Busca en el COB304
         sWhere := 'ASOCODMOD =' + QuotedStr(dblcdCodigoModular.Text)
            + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
            + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
            + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
         If Length(Trim(DM1.DisplayDescrip('prvSQL', 'COB304', 'ASOID, ASOCODMOD, ASOCODPAGO, TRANSAPO, '
                                                         +'TRANSCUO, TRANSMTO, ASOAPENOM', sWhere, 'ASOID'))) > 0 Then
         Begin
            ErrorMsg(Caption, 'El Asociado ' + #13 + #13 +
               DM1.cdsQry.FieldByName('ASOID').AsString + '  -  ' + DM1.cdsQry.FieldByName('ASOAPENOM').AsString + #13 + #13 +
               'Ya se Encuentra Registado' + #13 + #13 +
               'Verifique');

            DM1.cdsAutdisk.Edit;
            DM1.cdsAutDisk.FieldByName('ASOID').AsString := DM1.cdsQry.FieldByName('ASOID').AsString;
            DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
            DM1.cdsAutdisk.FieldByName('ASOTIPID').AsString := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
            DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
            DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
            DM1.cdsAutDisk.FieldByName('TRANSAPO').AsString := DM1.cdsQry.FieldByName('TRANSAPO').AsString;
            DM1.cdsAutDisk.FieldByName('TRANSCUO').AsString := DM1.cdsQry.FieldByName('TRANSCUO').AsString;
            DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString := DM1.cdsQry.FieldByName('TRANSMTO').AsString;
            dbeCodigoPago.Text := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
            dbeAporte.SetFocus;
            xExist := True; //Para Flagear y que el Asociado Existe en el COB304
        //dblcdCodigoModular.SetFocus;
            Exit;
         End
         Else //Si No Exite en el Maestro de Asociados, Ni en el COB304
         Begin

            xSQL := 'SELECT ASOID, ASOCODMOD, ASOTIPID, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID '
                   +'FROM APO201 '
                   +'WHERE ASOID =''XX''';
            DM1.cdsQry2.Close;
            DM1.cdsQry2.DataRequest(xSQL);

         {pnlCoinsidencias.Visible := False;
         Information(Caption, 'Asociado no Existe Ingrese el nombre para Encontrar las Coincidencias');
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOTIPID, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID FROM APO201'
                +' WHERE ASOID =''XX''';

         DM1.cdsQry2.Close;
         DM1.cdsQry2.DataRequest(xSQL);

         dbgAsoFalt.Selected.Clear;
         dbgAsoFalt.Selected.Add('ASOID'#9'10'#9'Cdigo');
         dbgAsoFalt.Selected.Add('ASOCODMOD'#9'11'#9'C digo~Modular');
         dbgAsoFalt.Selected.Add('ASOCODAUX'#9'3'#9'Cdigo~Auxiliar');
         dbgAsoFalt.Selected.Add('ASOCODPAGO'#9'10'#9'C digo~Pago');
         dbgAsoFalt.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos~Nombres');
         dbgAsoFalt.Selected.Add('UPROID'#9'5'#9'U. Proceso');
         dbgAsoFalt.Selected.Add('UPAGOID'#9'5'#9'U. Pago');
         dbgAsoFalt.Selected.Add('USEID'#9'5'#9'U.S.E.');

         DM1.cdsQry2.Open;

         //dbgAsoFalt.DataSource:=DM1.dsQry;
         pnlNAsoc.Visible   := False;
         pnlAsoFalt.Height  := 343;
         pnlAsoFalt.Left    := 24;
         pnlAsoFalt.Width   := 745;
         pnlAsoFalt.Top     := 18;
         edtAsociado.Text   := '';
         pnlAsoFalt.Visible := True;
         edtAsociado.SetFocus;

         dbeCodigo.Text     := DM1.cdsAsociados.FieldByName('ASOID').AsString;
         dbeCodigoPago.Text := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
         dbeApeNom.Text     := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
         }
         End;
      End
      Else
      Begin
         If DM1.cdsQry5.RecordCount > 0 Then
         Begin
            pnlCoinsidencias.Visible := True;
            dbgCoinsidencias.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos y Nombres');
            dbgCoinsidencias.Selected.Add('USEID'#9'5'#9'Use');
            dbgCoinsidencias.Selected.Add('UPROID'#9'5'#9'U. ~Proceso');
            dbgCoinsidencias.Selected.Add('UPAGOID'#9'5'#9'U.~Pago');
         End
         Else
         Begin
            pnlCoinsidencias.Visible := False;
            xModoSta := 'A';
            sWhere := 'ASOCODMOD =' + QuotedStr(dblcdCodigoModular.Text);

            DM1.DisplayDescrip('prvTGE', 'APO201', 'ASOID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, USEID', sWhere, 'ASOCODMOD');
            DM1.cdsAutdisk.Edit;
            DM1.cdsAutDisk.FieldByName('ASOID').AsString := DM1.cdsQry.FieldByName('ASOID').AsString;
            DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
            DM1.cdsAutdisk.FieldByName('ASOTIPID').AsString := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
            DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
            DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
            DM1.cdsAutDisk.FieldByName('USEID').AsString := DM1.cdsQry.FieldByName('USEID').AsString;
            DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat := 0;
            DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat := 0;
            dbeCodigoPago.Text := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
            dblcdUseAExit(Sender);
            dbeAporte.SetFocus;
         End;
      End;
   End;
End;

Procedure TFIngresoLote.dblcdCodigoDropDown(Sender: TObject);
Begin
  //DM1.cdsAsociados.IndexFieldNames:='ASOID';
End;

Procedure TFIngresoLote.FormCloseQuery(Sender: TObject; Var CanClose: Boolean);
Begin
   If (DM1.wModo = 'A') Or (DM1.wModo = 'M') Then
   Begin
      If (DM1.cdsAutdisk.ChangeCount > 0) Or (DM1.cdsAutdisk.Modified) Then
      Begin
         If Question(Caption, 'Tiene Datos No Actualizados.' + #13 + #13 +
            'Desea Guardar sus Actualizaciones? ') Then
         Begin
            Z2bbtnAceptar.Click;
            CanClose := True;
         //dbgAportes.RefreshDisplay;
            Close;
         End
         Else
         Begin
            DM1.cdsAutdisk.CancelUpdates;
         //DM1.cdsAutdisk.DisableControls;
            CanClose := True;
            Close;
         End;
      End;
   End;
End;

Procedure TFIngresoLote.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsUses.IndexFieldNames := '';
   DM1.cdsAsociados.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := '';
   dbgAportes.Color := $00C8E1DF;
   DM1.cdsCobxUse.CancelUpdates;
   DM1.cdsAutdisk.Cancel;
   DM1.cdsAsociados.Close;
   DM1.cdsAutdisk.Close;
   DM1.cdsQry1.Filter := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry2.Filter := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry4.Filter := '';
   DM1.cdsQry4.Filtered := False;
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry4.Close;
   DM1.cdsQry5.Filter := '';
   DM1.cdsQry5.Filtered := False;
   DM1.cdsQry5.IndexFieldNames := '';
   DM1.cdsQry5.Close;
   DM1.cdsRec.Filter := '';
   DM1.cdsRec.Filtered := False;
   DM1.cdsRec.IndexFieldNames := '';
   DM1.cdsRec.Close;
   DM1.cdsQry6.Close;
   DM1.cdsQry6.IndexFieldNames := '';
End;

Procedure TFIngresoLote.dbeMontoExit(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT * '
          +'FROM APO117 '
          +'WHERE APOANO =' + QuotedStr(speAno.Text)
          +' AND APOMES =' + QuotedStr(DM1.StrZero(speMes.Text, 2));
   DM1.Filtracds(DM1.cdsQry, xSQL);
   If dbeMonto.Text = '' Then
   Begin
      dbeMonto.SetFocus;
      Raise Exception.Create('Ingrese el Monto del Aporte');
   End;
   If StrToFloat(dbeMonto.Text) <= 0 Then
   Begin
      dbeMonto.SetFocus;
      Raise Exception.Create('Monto del Aporte no puede ser negativo o igual a cero');
   End;
   If StrToFloat(dbeMonto.Text) <> DM1.cdsQry.FieldByName('APOVALOR').AsFloat Then
   Begin
      ShowMessage('El Monto del Aporte para el perodo ' + #13
         + 'A o ' + speAno.Text + 'Mes' + speMes.Text + 'es ' + FloatToStr(DM1.cdsQry.FieldByName('APOVALOR').AsFloat));
   End;
End;

Procedure TFIngresoLote.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFIngresoLote.dblcTransaccionExit(Sender: TObject);
Begin
  //sWhere:= 'TRANSID = '+ QuotedStr(dblcTransaccion.Text) ;
  //edtTransaccion.Text:=DM1.DisplayDescrip('prvTGE','APO118','TRANSDES',sWhere,'TRANSDES');
End;

Procedure TFIngresoLote.LimpiaForm;
Begin
{  dblcFormaPago.Clear; edtFormaPago.Clear;
   dblcBanco.Clear;   edtBanco.Clear;
   dblcCtaCte.Clear;
   dbeNumOperacion.Clear; dbdtpFecOperacion.Text:='';
   dblcMoneda.Clear; edtMoneda.Clear;
   dbeMonto.Clear;}
   dblcdUse.Clear;
   edtUse.Clear;
   speAno.Text := '';
   speMes.Text := '';
   dbeImpAporte.Clear;
End;

Procedure TFIngresoLote.LimpiaVent;
Begin
   dblcdCodigoModular.Clear;
   dbeCodigo.Clear;
   dbeApeNom.Clear;
   dbeTotal.Clear;
   dbeCodigoPago.Clear;
   dbeAporte.Clear;
   dbeCuota.Clear;
   dbeUseA.Clear;
End;

Procedure TFIngresoLote.Z2bbtnSalirClick(Sender: TObject);
Var
   xMarca: TBookMark;
   xRegCob: String;
Begin
   If DM1.cdsAutdisk.Active Then
   Begin
      DM1.cdsAutdisk.CancelUpdates;
      If (DM1.cdsAutdisk.ChangeCount > 0) Or (DM1.cdsAutdisk.Modified) Then
      Begin
         DM1.cdsAutdisk.DisableControls;
         xMarca := DM1.cdsDLabo.GetBookmark;
         xRegCob := '';
         DM1.cdsAutdisk.First;
         While Not DM1.cdsAutdisk.EOF Do
         Begin
            If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
            Begin
               DM1.cdsAutdisk.Edit;
               DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
               DM1.cdsAutdisk.Post;
               xRegCob := 'S';
            End;
            DM1.cdsAutdisk.Next;
         End;
         DM1.cdsAutdisk.GotoBookmark(xMarca);
         If xRegCob = 'S' Then
         Begin
            DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
         End;
         DM1.cdsAutdisk.EnableControls;
      End;
   End;
   Close;
End;

Procedure TFIngresoLote.dbeTotalExit(Sender: TObject);
Var
   Valor1: Double;
Begin
   If dblcdCodigoModular.Focused Then Exit; //26/01/2002

   If StrToFloat(dbeTotal.Text) <= 0 Then
   Begin
      dbeAporte.Text := dbeImpAporte.Text;
      dbeCuota.Text := '0';
      Exit;
    //26/01/2002
      Valor1 := DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', '') + StrToFloat(dbeTotal.Text);
      If valor1 > StrToFloat(dbeMonto.Text) Then
      Begin
         DM1.cdsAutdisk.Edit;
         DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat := Valor1 - StrToFloat(dbemonto.Text)
      End;
   //fin 26/01/2002
{    ShowMessage('El Monto debe ser mayor a cero');
    dbeTotal.Text:='';
    dbeTotal.SetFocus;
    Exit;}
   End;

   If StrToFloat(dbeTotal.Text) < StrToFloat(dbeImpAporte.Text) Then
   Begin
      ShowMessage('El Monto debe ser mayor o igual al Importe por Aporte');
      dbeTotal.Text := '';
      dbeTotal.SetFocus;
      Exit;
   End;

   dbeAporte.Text := dbeImpAporte.Text;

   dbeCuota.Text := FloatToStr(StrToFloat(dbeTotal.Text) - StrToFloat(dbeImpAporte.Text));
End;

Procedure TFIngresoLote.speMes1Exit(Sender: TObject);
Var
   xSQL: String;
Begin
   If (speAno.Text = '') Or (speMes.Text = '') Then
   Begin
      ShowMessage('Perido no v lido');
      speAno.SetFocus;
      Exit;
   End;
   If Length(speMes.Text) = 1 Then
   Begin
      speMes.Text := DM1.StrZero(speMes.Text, 2);
   End;
   xSQL := 'SELECT * '
          +'FROM APO117 '
          +'WHERE APOANO =' + QuotedStr(speAno.Text)
          +' AND APOMES =' + QuotedStr(DM1.StrZero(speMes.Text, 2));
   DM1.Filtracds(DM1.cdsQry, xSQL);
   dbeImpAporte.Text := FloatToStr(DM1.cdsQry.FieldByName('APOVALOR').AsFloat);
   If (Z2bbtnCancel.Focused) Or (Z2bbtnSalir.Focused) Then Exit;
   If Length(speMes.Text) = 1 Then
   Begin
      speMes.Text := DM1.StrZero(speMes.Text, 2);
   End;
End;

Procedure TFIngresoLote.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
  //Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFIngresoLote.bbtnAtrasClick(Sender: TObject);
Begin
   Ocultapaneles;
   DM1.cdsAutdisk.Close;
   dblcdUse.Text := '';
   edtUse.Text := '';
   speAno.Text := '';
   speMes.Text := '';
   dbeImpAporte.Text := '';
   dblcdUse.Enabled := True;
   dblcdUse.SetFocus;
   bbtnSigue.Enabled := True;
   DM1.cdsAutdisk.Close;
End;

Procedure TFIngresoLote.dbgAportesKeyDown(Sender: TObject; Var Key: Word; Shift: TShiftState);
Var
   xWhere, xCodAso: String;
Begin
  { If (Key = VK_DELETE) and (ssCtrl in Shift)  Then
    begin
     If DM1.cdsAutdisk.RecordCount > 0 Then
      begin
       If Question(Caption, 'Esta Seguro de Eliminar?'+#13+#13+'Desea Continuar ?') Then
       //If MessageDlg('Esta Seguro de Eliminar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        begin
       xBorrar := '1';
         xCodAso := DM1.cdsAutdisk.FieldByName('ASOID').AsString;
         DM1.cdsAutdisk.Delete;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
         //Verifica si Existen Cdigos Duplicados despu s de Eliminar, si No existen Flagear FNASODUP y FTRANSF
         xWhere := 'ASOID ='+QuotedStr(xCodAso)
                  +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                  +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                  +' And FTRANSF ='+QuotedStr('I')
                  +' And FNASODUP ='+QuotedStr('S');
         If Length(DM1.DisplayDescrip('prvSQL', 'COB304', 'ASOID', xWhere, 'ASOID')) > 0 Then
          begin
           xSQL := 'Update COB304 Set'
                  +' FTRANSF = Null,'
                  +' FNASODUP = Null'
                  +' Where ASOID ='+QuotedStr(xCodAso)
                  +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                  +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                  +' And FTRANSF ='+QuotedStr('I')
                  +' And FNASODUP ='+QuotedStr('S');
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          end;
        xBorrar := '0';
          //DM1.ControlTran;
          dbgAportes.RefreshDisplay;
          dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)',''), ffNumber, 15, 2);
          dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)',''), ffNumber, 15, 2);
          dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)',''), ffNumber, 15, 2);
          ShowMessage('Registro Eliminado');
        end
       Else
       Exit;
     end
     Else
      ShowMessage(' No Existen Registros a Eliminar ');
   end; }

   If (Key = VK_RETURN) And (ssCtrl In Shift) Then
   Begin
      If DM1.cdsAutdisk.RecordCount > 0 Then
      Begin
         DM1.wModo := 'M';
         DM1.cdsAutdisk.Edit;
         pnlAportes.Visible := True;
         dblcdCodigoModular.Enabled := False;
         dbeAporte.SetFocus;
      End
      Else
      Begin
         ShowMessage(' No Existen Registros a Editar ');
      End;
   End;

   If (Key = VK_INSERT) And (ssCtrl In Shift) Then
   Begin
      If DM1.cdsAutdisk.RecordCount > 0 Then
      Begin
         wModo1 := 'A';
         Z2bbtnCancel.Enabled := False;
         Z2bbtnAceptar.Enabled := False;
         LimpiaVent;
         DM1.cdsAutdisk.Insert;
         pnlAportes.Visible := True;
         dblcdCodigoModular.Enabled := True;
         dblcdCodigoModular.SetFocus;
      End;
   End;

  //dbgAportes.ColumnByName('TRANSCUO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FTRANSF=''I'''),ffNumber, 15, 2);
  //dbgAportes.ColumnByName('TRANSAPO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FTRANSF=''I'''),ffNumber, 15, 2);
  //dbgAportes.ColumnByName('TRANSMTO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FTRANSF=''I'''),ffNumber, 15, 2);
  //dbgAportes.ColumnByName('ASOAPENOM').FooterValue :='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSFAC=''S'''),ffNumber, 15,0)+' Registros';
End;

Procedure TFIngresoLote.dbgAportesDblClick(Sender: TObject);
Var
   xWhere: String;
Begin
   Ocultapaneles;
   wModo1 := 'M';
   If DM1.cdsAutdisk.RecordCount = 0 Then
   Begin
      MessageDlg('No Existen Registros a Editar', mtInformation, [mbOk], 0);
      Exit;
   End;

   If Length(TRIM(DM1.cdsAutdisk.FieldByName('ASOID').AsString)) = 0 Then
   Begin
      MessageDlg('No Tiene cdigo de DERRAMA solo se puede ELIMINAR', mtInformation, [mbOk], 0);
      Exit;
   End;
  //LimpiaVent;

   dbeCodigo.Text := DM1.cdsAutDisk.FieldByName('ASOID').AsString;
   dbeCodigoPago.Text := DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString;
   dbeApeNom.Text := DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString;
  //dblcdCodigoModular.Text:='';
   dblcdCodigoModular.Text := DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString;
   xExist := True;

   FiltraAsoc;
   DM1.cdsAutdisk.Edit;
   pnlAportes.Visible := True;
   dblcdCodigoModular.Enabled := False;
   //Para Colocar la USE
   xWhere := 'UPROID =' + QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)
      + ' And UPAGOID =' + QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)
      + ' And USEID =' + QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString);
   dbeUseA.Text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   dbeAporte.SetFocus;
End;

Procedure TFIngresoLote.Z2bbtnFiltroClick(Sender: TObject);
Begin
   Ocultapaneles;
   dbeLetra.Text := Trim(dbeLetra.Text);

   If DM1.cdsAutdisk.RecordCount = 0 Then
   Begin
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID   =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

   If Length(dbeLetra.Text) > 0 Then
      xSQL := xSQL + ' AND A.ASOAPENOM LIKE ' + QuotedStr(dbeLetra.Text + '%');

   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL + ' ORDER BY A.ASOAPENOM');
   ConfiguraGridAportes;
   ActualizaFooter;

   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.Z2bbtnOrdenCodModClick(Sender: TObject);
Begin
   Ocultapaneles;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := 'ASOCODMOD; ASOAPENOM';
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.Z2bbtnOrdenAlfabClick(Sender: TObject);
Begin
   Ocultapaneles;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := 'ASOAPENOM;ASOCODMOD';
   DM1.cdsAutdisk.IndexFieldNames;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.ConfiguraGridAportes;
Begin
   DM1.cdsAutdisk.FieldByName('FTRANSF').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FREGCOB').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSANO').ReadOnly := True;
   DM1.cdsAutdisk.FieldByName('TRANSMES').ReadOnly := True;
   DM1.cdsAutdisk.FieldByName('ASOID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('ASOCODMOD').ReadOnly := True;
   DM1.cdsAutdisk.FieldByName('ASOAPENOM').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSAPO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSCUO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSMTO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('BANCOID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('CCBCOID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('USUARIO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FREG').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('HREG').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FTRANSF').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FREGCOB').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('ASOCODPAGO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('USEID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('UPROID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('UPAGOID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FNASOID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FNCODMOD').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FCCODMOD').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FCCODPAGO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FCUSE').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FNMONTO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FMAPORTE').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FSCREDITO').ReadOnly := False;

   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSMTO')).EditFormat := '########0.00';
   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSAPO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSAPO')).EditFormat := '########0.00';

   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSCUO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSCUO')).EditFormat := '########0.00';
End;

Procedure TFIngresoLote.ReadOnlyFalseGridAportes;
Begin
   DM1.cdsAutdisk.FieldByName('FREGCOB').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSANO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSMES').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('ASOID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('ASOCODMOD').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('ASOAPENOM').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSAPO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSCUO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSMTO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('BANCOID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('CCBCOID').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('USUARIO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('FREG').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('HREG').ReadOnly := False;
End;

Procedure TFIngresoLote.OcultaPaneles;
Begin
   pnlEstado.Visible := False;
   pnlFiltros.Visible := False;
   pnlBuscaInc.Visible := False;
End;

Procedure TFIngresoLote.ActualizaFooter;
Begin
   //dbgAportes.Update;
   //DM1.cdsAutdisk.RecordCount;
   dbgAportes.ColumnByName('TRANSAPO').FooterValue :=
                              FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', ''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSCUO').FooterValue :=
                              FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', ''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue :=
                              FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', ''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue :=
                             'Total ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', ''), ffNumber, 15, 0) + ' Registros';
   xTotImporte := DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', '');

   //dbgAportes.Refresh;
   //dbgAportes.RefreshDisplay;
End;

Procedure TFIngresoLote.dbgAportesTitleButtonClick(Sender: TObject; AFieldName: String);
Begin
   Ocultapaneles;
   If AFieldName = 'ASOAPENOM' Then
   Begin
      Screen.Cursor := crHourGlass;
      edtBusca.Text := '';
      DM1.cdsAutdisk.IndexFieldNames := 'ASOAPENOM';
      edtBusca.SearchField := 'ASOAPENOM';
      pnlBusca.Visible := True;
      lbBusca.Caption := 'Apellidos y Nombres';
      dbgAportes.Enabled := False;
      pnlUse.Enabled := False;
      pnlFooter.Enabled := False;
      pnlHeader.Enabled := False;
      pnlDatosAportes.Enabled := False;
      edtBusca.SetFocus;
      Screen.Cursor := crDefault;
   End
   Else
   Begin
      If AFieldName = 'ASOCODMOD' Then
      Begin
         Screen.Cursor := crHourGlass;
         edtBusca.Text := '';
         DM1.cdsAutdisk.IndexFieldNames := 'ASOCODMOD';
         edtBusca.SearchField := 'ASOCODMOD';
         pnlBusca.Visible := True;
         lbBusca.Caption := 'Cdigo Modular';
         dbgAportes.Enabled := False;
         pnlUse.Enabled := False;
         pnlFooter.Enabled := False;
         pnlHeader.Enabled := False;
         pnlDatosAportes.Enabled := False;
         edtBusca.SetFocus;
         Screen.Cursor := crDefault;
      End
      Else
      Begin
         If AFieldName = 'FREGCOB' Then
         Begin
            Screen.Cursor := crHourGlass;
            DM1.cdsAutdisk.DisableControls;
            DM1.cdsAutdisk.First;
            While Not DM1.cdsAutdisk.EOF Do
            Begin
               If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
               Begin
                  DM1.cdsAutdisk.Edit;
                  DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
                  DM1.cdsAutdisk.Post;
               End;
               DM1.cdsAutdisk.Next;
            End;
            DM1.cdsAutdisk.EnableControls;
            dbgAportes.RefreshDisplay;
            DM1.cdsAutdisk.First;
            Screen.Cursor := crDefault;
         End
         Else
         Begin
            If AFieldName = 'ASOID' Then
            Begin
               Screen.Cursor := crHourGlass;
               edtBusca.Text := '';
               DM1.cdsAutdisk.IndexFieldNames := 'ASOID';
               edtBusca.SearchField := 'ASOID';
               pnlBusca.Visible := True;
               lbBusca.Caption := 'Cdigo Derrama';
               dbgAportes.Enabled := False;
               pnlUse.Enabled := False;
               pnlFooter.Enabled := False;
               pnlHeader.Enabled := False;
               pnlDatosAportes.Enabled := False;
               edtBusca.SetFocus;
               Screen.Cursor := crDefault;
            End
            Else
            Begin
               If AFieldName = 'ASOCODPAGO' Then
               Begin
                  Screen.Cursor := crHourGlass;
                  edtBusca.Text := '';
                  DM1.cdsAutdisk.IndexFieldNames := 'ASOCODPAGO';
                  edtBusca.SearchField := 'ASOCODPAGO';
                  pnlBusca.Visible := True;
                  lbBusca.Caption := 'C digo de Pago';
                  dbgAportes.Enabled := False;
                  pnlUse.Enabled := False;
                  pnlFooter.Enabled := False;
                  pnlHeader.Enabled := False;
                  pnlDatosAportes.Enabled := False;
                  edtBusca.SetFocus;
                  Screen.Cursor := crDefault;
               End;
            End;
         End;
      End;
   End;
End;

Procedure TFIngresoLote.isBuscaKeyPress(Sender: TObject; Var Key: Char);
Begin
   If (Key = #13) Or (Key = #27) Then
   Begin
      pnlBusca.Visible := False;
      dbgAportes.Enabled := True;
      pnlUse.Enabled := True;
      pnlFooter.Enabled := True;
      pnlHeader.Enabled := True;
      pnlDatosAportes.Enabled := True;
      dbgAportes.SetFocus;
   End;
End;

Procedure TFIngresoLote.dbeAporteExit(Sender: TObject);
Var
   Code: Integer;
   I: Double;
Begin
   If (Length(Trim(dbeAporte.Text)) <> 0) And (dbeAporte.Text <> '0.00') Then
   Begin
      Val(dbeAporte.Text, I, Code);
      If Code = 0 Then
      Begin
         If Length(DM1.cdsAutDisk.FieldByName('TRANSCUO').AsString) = 0 Then
            DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat := 0;
         DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat := StrToFloat(dbeCuota.Text) + StrToFloat(dbeAporte.Text);
      End;
   End;

   If Length(dbeCuota.Text) = 0 Then
      dbeCuota.Text := '0.00';

   If StrToFloat(dbeAporte.Text) = 0.00 Then
      rgConsiderar.ItemIndex := 1
   Else
      rgConsiderar.ItemIndex := 0;

End;

Procedure TFIngresoLote.dbeCuotaExit(Sender: TObject);
Var
   Code: Integer;
   I: Double;
Begin
   If Length(Trim(dbeCuota.Text)) <> 0 Then
   Begin
      Val(dbeAporte.Text, I, Code);
      If Code = 0 Then
      Begin
         DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat := StrToFloat(dbeCuota.Text) + StrToFloat(dbeAporte.Text);
      End;
   End
   Else
   Begin
      If Length(Trim(dbeCuota.Text)) = 0 Then
      Begin
         DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat := 0;
      End;
   End;
   If Length(dbeAporte.Text) = 0 Then
      dbeAporte.Text := '0.00';
End;

Procedure TFIngresoLote.bbtnClosePnlClick(Sender: TObject);
Begin
   pnlBusca.Visible := False;
   dbgAportes.Enabled := True;
   pnlUse.Enabled := True;
   pnlFooter.Enabled := True;
   pnlHeader.Enabled := True;
   pnlDatosAportes.Enabled := True;
   dbgAportes.SetFocus;
End;

Procedure TFIngresoLote.dbgAportesCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
   If DM1.cdsAutDisk.FieldByName('FREGCOB').AsString = 'S' Then
      ABrush.Color := clInfoBk;
End;

Procedure TFIngresoLote.Z2bbtnInsertaClick(Sender: TObject);
Var
   // DEBEN SER PUBLICOS xRecInc: xInc,Integer;
   //dFecha : TDateTime;
   xSQL, xSQL1: WideString;
   xAno, xMes, xDia, xAnoMes, xTrim, xSem, xSs, xAaTri, xAaSem, xAass: String;
   xForPagoId, xConInc, xManual, XAsocodaux, XcodReg, xCobano, xCobmes: String;
   xUproid, xUpagoid, xUseid, xAsoid, VCobano, VCobmes: String;
Begin

   xConInc := '0';
   pbEstado.Position := 0;
   Ocultapaneles;

   If DM1.cdsAutdisk.RecordCount = 0 Then
   Begin
      ShowMessage('No Existen Registros a Insertar');
      Exit;
   End;

   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.DisableControls;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := 'FREGCOB';
   DM1.cdsAutdisk.Filter := ' FREGCOB =''S'' ';
   DM1.cdsAutdisk.Filtered := True;
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      ShowMessage('Existen Registros Marcados para Eliminarlos, Revise estos Registros');
      DM1.cdsAutdisk.EnableControls;
      Screen.Cursor := crDefault;
      Exit;
   End;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter := '';
   DM1.cdsAutdisk.Filtered := True;

   DM1.cdsAutdisk.EnableControls;
   dbgAportes.RefreshDisplay;

   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsbrowse Then DM1.cdsCobxUse.Post;
   End;
   DM1.ControlTran;

   //---Verifica si tiene inconsistencias
   XAPORTE := 'S';
   Inconsistencias;
   //---

   If xInc = 1 Then
   Begin
      If Not Question(Caption, 'Total de Inconsistencias : ' + FloatToStr(xRecInc) + ' Registros ' + #13 + #13 +
         ' Sólo se Transferirá  los Registros SIN INCONSISTENCIAS ! ' + #13 + #13 + #13 + 'Desea Continuar?') Then
      Begin
         Screen.Cursor := crDefault;
         Exit;
      End;
   End;

   DM1.cdsAutdisk.Filtered := False;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   DM1.cdsAutdisk.Filter := '(TRANSMTO > 0) And (FTRANSF <> ''I'' Or FTRANSF Is Null Or FTRANSF = '''') And (FTRANSFAC Is Null Or FTRANSFAC <> ''S'')';
                                     //'(NVL(TRANSMTO,0)>0 AND NVL(TRIM(FTRANSF),''X'')<>''I'') AND ( NVL(FTRANSFC,''X'')<>''S'') ';

   DM1.cdsAutdisk.Filtered := True;

   If DM1.cdsAutDisk.RecordCount = 0 Then
   Begin
      Screen.Cursor := crDefault;
      Information(Caption, 'No Existe Información a Transferir');

      Xsql := 'SELECT Nvl(Count(1),0) Adv FROM COB304 A ' +
         'WHERE RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
         + ' AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
         + ' AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
         + ' AND  FTRANSF=''R'' ';
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(XSQL);
      DM1.cdsQry4.Open;
      If Dm1.cdsQry4.FieldByName('Adv').AsInteger > 0 Then
         If Question(Caption, 'Existe ADVERTENCIAS del descargo, desea generar archivo.?') Then Mandaexcel;

      DM1.cdsAutdisk.Filtered := False;
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      Exit;
   End;

   If Question(Caption, 'Usted Insertar  ' + IntToStr(DM1.cdsAutDisk.RecordCount)
                             + ' Registros hacia las Tablas de Aportes' + #13 + #13 +
      ' Est seguro de Insertarlos? ') Then
   Begin
      If DM1.cdsAutDisk.RecordCount > 0 Then
      Begin

         If CDSADVERTENCIA.RecordCount > 0 Then
         Begin
            XAPORTE := 'S';
            CDSADVERTENCIA.First;
            pnlAdvertencias.Left := 288;
            pnlAdvertencias.Top := 164;
            pnlAdvertencias.Visible := True;
         End
         Else
            DescargaAportes;
      End;
   End;

   { DM1.cdsAutdisk.Filtered        := False;
    DM1.cdsAutdisk.IndexFieldNames := '';
    DM1.cdsAutdisk.Filter          := '';
    DM1.cdsAutdisk.Filtered        := True;
    ActualizaFooter;
    ActuaCampos;}
   Screen.Cursor := crDefault;

End;

Procedure TFIngresoLote.cbMarcaClick(Sender: TObject);
Var
   xMarca2: TBookMark;
Begin
   Screen.Cursor := crHourGlass;
   If cbMarca.Checked Then
   Begin
      DM1.cdsAutdisk.DisableControls;
      xMarca2 := DM1.cdsAutdisk.GetBookmark;
      DM1.cdsAutdisk.First;
      While Not DM1.cdsAutdisk.EOF Do
      Begin
         If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString <> 'S' Then
         Begin
            DM1.cdsAutdisk.Edit;
            DM1.cdsAutdisk.FieldByName('FREGCOB').AsString := 'S';
            DM1.cdsAutdisk.Post;
         End;
         DM1.cdsAutdisk.Next;
      End;
      xBorra := 'S';
      DM1.cdsAutdisk.GotoBookmark(xMarca2);
      DM1.cdsAutdisk.EnableControls;
      dbgAportes.RefreshDisplay;
   End
   Else
   Begin
      DM1.cdsAutdisk.DisableControls;
      xMarca2 := DM1.cdsAutdisk.GetBookmark;
      DM1.cdsAutdisk.First;
      While Not DM1.cdsAutdisk.EOF Do
      Begin
         If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
         Begin
            DM1.cdsAutdisk.Edit;
            DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
            DM1.cdsAutdisk.Post;
         End;
         DM1.cdsAutdisk.Next;
      End;
      DM1.cdsAutdisk.GotoBookmark(xMarca2);
      DM1.cdsAutdisk.EnableControls;
      dbgAportes.RefreshDisplay;
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.bbtnAutdiskClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If Length(speAno.Text) = 0 Then
   Begin
      ShowMessage('Debe Registrar el Ao');
     //speAno.SetFocus;
      Exit;
   End;

   If Length(speMes.Text) = 0 Then
   Begin
      ShowMessage('Debe Registrar el Mes');
     //speMes.SetFocus;
      Exit;
   End;
  //TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat:='########0.00';
  //TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).EditFormat:='########0.00';

   If (dbeImpAporte.Text = '') Or (StrToFloat(StringReplace(dbeImpAporte.Text, ',', '', [rfReplaceAll])) < 1) Then
   Begin
      ShowMessage('Aporte Incorrecto');
      dbeImpAporte.SetFocus;
      Exit;
   End;

   xSQL := 'SELECT APOVALOR'
      + ' FROM APO117'
      + ' WHERE APOANO =' + QuotedStr(speAno.Text)
      + ' AND APOMES   =' + QuotedStr(speMes.Text);

   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSQL);
   DM1.cdsReporte1.Open;

   If DM1.cdsReporte1.FieldByName('APOVALOR').AsFloat <> DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat Then
   Begin
      Information(Caption, 'El Monto del Aporte no Coincide con el del Registrado');
   End;

   bbtnAutDisk.Enabled := False;
   bbtnIngresaAporte.Enabled := False;

   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT ARCHIVO, PERIODO, UPROID, UPAGOID, USUARIO, FREG, RECAUDA, FL_BAJADO, FL_IMPORT, '
          +'       FL_VERIFI, FL_TRANSF '
          +'FROM COB312 '
          +'WHERE PERIODO =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANOAPO').AsString
                             + DM1.cdsCobxUse.FieldByName('RCOBMESAPO').AsString)
          +' AND UPROID   =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
          +' AND UPAGOID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

        //'AND FL_VERIFI=''S''';
   FListaAutDisk := TFListaAutDisk.Create(Self);
   FListaAutDisk.dbgListaAutdisk.Selected.Clear;
   FListaAutDisk.dbgListaAutdisk.Selected.Add('ARCHIVO'#9'16'#9'Archivo');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('PERIODO'#9'6'#9'Periodo');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('UPROID'#9'6'#9'Unid. de~Proceso');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('UPAGOID'#9'4'#9'Unidad de~Pago');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('RECAUDA'#9'15'#9'Tipo~Recaud.');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('USUARIO'#9'13'#9'Usuario');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('FREG'#9'10'#9'Fecha~Registro');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      xArchivo := DM1.cdsQry2.FieldByName('ARCHIVO').AsString;
      dblcdUse.Enabled := False;
      FListaAutDisk.ShowModal;
   End
   Else
   Begin
      Information(Caption, 'No se ha Encontrado Ningn Archivo para Transferir ...!!!!');
   End;
   DM1.cdsQry2.Close;
   FListaAutDisk.Free;
   dblcdUse.Enabled := False;
   bbtnAutDisk.Enabled := True;
   bbtnIngresaAporte.Enabled := True;
End;

Procedure TFIngresoLote.bbtnInconsistenciaClick(Sender: TObject);
Begin
   If pnlFiltros.Visible = True Then
   Begin
      pnlFiltros.Visible := False;
   End
   Else
   Begin
      Ocultapaneles;
      pnlFiltros.Height := 489;
      pnlFiltros.Left := 321;
      pnlFiltros.Top := 15;
      pnlFiltros.Width := 158;
      pnlFiltros.Visible := True;
      pnlFiltros.BringToFront;
   End;
End;

Procedure TFIngresoLote.spdTotalRegClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.wTDatos := 'T'; // Para Mostrar Todos los Registros
   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);

   DM1.cdsAutDisk.Filter := '';
   DM1.cdsAutDisk.Filtered := False;
   DM1.cdsAutDisk.IndexFieldNames := '';
   DM1.cdsAutDisk.Close;
   DM1.cdsAutDisk.DataRequest(xSQL);
   DM1.cdsAutDisk.Open;
{   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter   := '';
   DM1.cdsAutdisk.Filtered := True;    }
   dbgAportes.Color := $00C8E1DF;

   ActualizaFooter;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros : ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.spdInconsistClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSF';
   DM1.cdsAutdisk.Filter := ' FTRANSF =''I'' ';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   dbgAportes.Color := clBtnFace;
   DM1.cdsAutdisk.RecordCount;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FTRANSF =''I'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FTRANSF =''I'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FTRANSF =''I'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FTRANSF =''I'''), ffNumber, 15, 0) + ' Registros';
   ShowMessage('Total de Registros con Inconsistencias : ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.spdSinInconsClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSF';
   DM1.cdsAutdisk.Filter := 'FTRANSF IS NULL OR FTRANSF=''''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'S'; // Para Mostrar Todos los Registros
   dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FTRANSF IS NULL OR FTRANSF='''''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FTRANSF IS NULL OR FTRANSF='''''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FTRANSF IS NULL OR FTRANSF='''''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FTRANSF IS NULL OR FTRANSF='''''), ffNumber, 15, 0) + ' Registros';
   //ActualizaFooter;
   dbgAportes.Color := $00C8E1DF;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros sin Inconsistencias :  ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.bbtnBuscaIncClick(Sender: TObject);
Begin
   If pnlBuscaInc.Visible = True Then
   Begin
      pnlBuscaInc.Visible := False;
   End
   Else
   Begin
      Ocultapaneles;
      If DM1.cdsAutdisk.RecordCount >= 1 Then
      Begin
         pnlBuscaInc.Height := 296;
         pnlBuscaInc.Left := 262;
         pnlBuscaInc.Top := 150;
         pnlBuscaInc.Width := 267;
         pnlBuscaInc.Visible := True;
         pnlBuscaInc.BringToFront;
      End;
   End;
End;

Procedure TFIngresoLote.Button1Click(Sender: TObject);
Begin
   pnlBuscaInc.Visible := False;
End;

Procedure TFIngresoLote.Button2Click(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
End;

Procedure TFIngresoLote.SpeedButton4Click(Sender: TObject);
Var
   xASOID: String;
   xAuxStr: String;
Begin
   If (DM1.cdsCobxUse.Modified)
      Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      DM1.cdsCobxUse.Post;
   End;

   If (DM1.cdsAutDisk.Modified)
      Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      DM1.cdsAutDisk.Post;
   End;

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FNASOID   =''S'' AND FTRANSF=''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount >= 1 Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         xASOID := DM1.StrZero(DM1.MaxSQL('APO201', 'ASOID', ''), 10);
       // Generacin del ASOCODAUX - Codigo Auxiliar
         xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

         wSQL := 'INSERT INTO APO201 (' +
            ' ASOID, ' +
            ' ASOCODMOD, ' +
            ' ASOCODAUX, ' +
            ' USEID, ' +
            ' UPROID, ' +
            ' UPAGOID, ' +
            ' DPTOID, ' +
            ' BANCOID, ' +
            ' ASONCTA, ' +
            ' USUARIO, ' +
            ' FREG,' +
            ' HREG,' +
            ' ASOAPENOM, ' +
            ' ASOCODPAGO ' +
            ') VALUES (' +
            QuotedStr(xASOID) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(xAuxStr) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('DPTOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('BANCOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('CCBCOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('USUARIO').AsString) + ',' +
            QuotedStr(DateTimeToStr(Date)) + ',' +
            QuotedStr(DateTimeToStr(Date)) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOAPENOM').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) +
            ' )';
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         wSQL := 'INSERT INTO APO202 (' +
            ' ASOID, ' +
            ' ASOCODMOD, ' +
            ' ASOCODAUX, ' +
            ' ASOCODPAGO, ' +
            ' USEID, ' +
            ' UPROID, ' +
            ' UPAGOID, ' +
            ' FVIGENTE ' +
            ' ) VALUES ( ' +
            QuotedStr(xASOID) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(xAuxStr) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ',' +
            QuotedStr('S') +
            ' )';
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         If DM1.cdsAutdisk.State <> dsEdit Then
         Begin
            DM1.cdsAutdisk.Edit;
         End;
         If DM1.cdsAutdisk.State = dsEdit Then
         Begin
            DM1.cdsAutdisk.FieldByName('ASOID').AsString := xASOID;
            DM1.cdsAutdisk.FieldByName('FNASOID').Clear;
            DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
            DM1.cdsAutdisk.FieldByName('FTRANSF').Clear;
            DM1.cdsAutdisk.FieldByName('USUARIO').AsString := DM1.wUsuario;
            DM1.cdsAutdisk.FieldByName('FREG').AsDateTime := Date;
            DM1.cdsAutdisk.FieldByName('HREG').Clear;
            DM1.cdsAutdisk.FieldByName('HREG').AsDateTime := Date + Time;
            cdsPost(DM1.cdsAutdisk);
            DM1.cdsAutdisk.Post;
            DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
         End;
         DM1.cdsQry2.Next;
      End;
   End
   Else
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
   End;
End;

Procedure TFIngresoLote.SpeedButton5Click(Sender: TObject);
Var
   xAuxStr: String;
Begin
   If (DM1.cdsCobxUse.Modified)
      Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      DM1.cdsCobxUse.Post;
   End;
   If (DM1.cdsAutDisk.Modified)
      Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      DM1.cdsAutDisk.Post;
   End;

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := ' SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FREGCOB   =''S'' AND FNASOID=''S'' AND FTRANSF=''I'' ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount >= 1 Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         xASOID := DM1.StrZero(DM1.MaxSQL('APO201', 'ASOID', ''), 10);
       // Generacin del ASOCODAUX - Codigo Auxiliar
         xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

         wSQL := 'INSERT INTO APO201 (' +
            ' ASOID, ' +
            ' ASOCODMOD, ' +
            ' ASOCODAUX, ' +
            ' USEID, ' +
            ' UPROID, ' +
            ' UPAGOID, ' +
            ' DPTOID, ' +
            ' BANCOID, ' +
            ' ASONCTA, ' +
            ' USUARIO, ' +
            ' FREG,' +
            ' HREG,' +
            ' ASOAPENOM, ' +
            ' ASOCODPAGO ' +
            ') VALUES (' +
            QuotedStr(xASOID) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(xAuxStr) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('DPTOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('BANCOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('CCBCOID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('USUARIO').AsString) + ',' +
            QuotedStr(DateTimeToStr(Date)) + ',' +
            QuotedStr(DateTimeToStr(Date)) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOAPENOM').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) +
            ' )';
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         wSQL := 'INSERT INTO APO202 (' +
            ' ASOID, ' +
            ' ASOCODMOD, ' +
            ' ASOCODAUX, ' +
            ' ASOCODPAGO, ' +
            ' USEID, ' +
            ' UPROID, ' +
            ' UPAGOID, ' +
            ' FVIGENTE ' +
            ' ) VALUES ( ' +
            QuotedStr(xASOID) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(xAuxStr) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ',' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ',' +
            QuotedStr('S') +
            ' )';
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         If DM1.cdsAutdisk.State <> dsEdit Then
         Begin
            DM1.cdsAutdisk.Edit;
         End;
         If DM1.cdsAutdisk.State = dsEdit Then
         Begin
            DM1.cdsAutdisk.FieldByName('ASOID').AsString := xASOID;
            DM1.cdsAutdisk.FieldByName('FNASOID').Clear;
            DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
            DM1.cdsAutdisk.FieldByName('FTRANSF').Clear;
            DM1.cdsAutdisk.FieldByName('USUARIO').AsString := DM1.wUsuario;
            DM1.cdsAutdisk.FieldByName('FREG').AsDateTime := Date;
            DM1.cdsAutdisk.FieldByName('HREG').Clear;
            DM1.cdsAutdisk.FieldByName('HREG').AsDateTime := Date + Time;
            cdsPost(DM1.cdsAutdisk);
            DM1.cdsAutdisk.Post;
            DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
         End;
         DM1.cdsQry2.Next;
      End;
   End
   Else
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
   End;
End;

Procedure TFIngresoLote.spdCCodModTodClick(Sender: TObject);
Var
   xAuxStr: String;
Begin
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      DM1.cdsCobxUse.Post;
   End;
   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      DM1.cdsAutDisk.Post;
   End;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FCCODMOD =''S'' AND FTRANSF =''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
      Exit;
   End;

   If Question(Caption, 'Actualizar Todos los C digos Modulares Nuevos' + #13 + #13 + ' Desea Continuar? ') Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);
         wSQL := 'UPDATE APO201 SET'
            + ' ASOCODMOD   =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ','
//            +' ASOCODAUX   ='+QuotedStr(xAuxStr)
         + 'ASOCODAUX=DECODE(ASOCODMOD,' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
            ',ASOCODAUX,' + QuotedStr(xAuxStr) + ') '

         + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry.Close;
         xSQL := 'SELECT * FROM APO202'
            + ' WHERE ASOID  =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
            + ' AND TRANSANO = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ', 7, 4)'
            + ' AND TRANSMES = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ',4,2)';
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;

      // Verifica si hay cambios para el periodo actual
      // Si existe entonces solo actualiza, sino inserta

         If DM1.cdsQry.RecordCount >= 1 Then
         Begin
            If Length(Trim(DM1.cdsQry.FieldByName('ASOCODMOD').AsString)) = 0 Then
            Begin
               wSQL := 'UPDATE APO202 SET'
                  + ' ASOCODMOD   =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ','
//                  +' ASOCODAUX   ='+QuotedStr(xAuxStr)
               + 'ASOCODAUX=DECODE(ASOCODMOD,' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
                  ',ASOCODAUX,' + QuotedStr(xAuxStr) + ') '

               + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
               DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End
            Else
            Begin
               wSQL := 'INSERT INTO APO202 (' +
                  'ASOID, ' +
                  'ASOCODMOD, ' +
                  'ASOCODAUX, ' +
                  'ASOCODPAGO, ' +
                  'USEID, ' +
                  'UPROID, ' +
                  'UPAGOID, ' +
                  'FVIGENTE ' +
                  ') VALUES ( ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
                  QuotedStr(xAuxStr) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
                  QuotedStr('S') +
                  ')';
               DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End;
         End
         Else
         Begin
            wSQL := 'INSERT INTO APO202 (' +
               'ASOID, ' +
               'ASOCODMOD, ' +
               'ASOCODAUX, ' +
               'ASOCODPAGO, ' +
               'USEID, ' +
               'UPROID, ' +
               'UPAGOID, ' +
               'FVIGENTE ' +
               ') VALUES ( ' +
               QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
               QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
               QuotedStr(xAuxStr) + ', ' +
               QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
               QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
               QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
               QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
               QuotedStr('S') +
               ' )';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
         End;
         wSQL := 'UPDATE COB304 SET'
            + ' FCCODMOD = NULL,'
            + ' FREGCOB = NULL,'
            + ' FTRANSF = NULL,'
            + ' USUARIO =' + QuotedStr(DM1.wUsuario) + ', ' +
            'FREG =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
            'HREG =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
            'WHERE ASOID=' + DM1.cdsQry2.FieldByName('ASOID').AsString + ' ' +
            'AND RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
         DM1.cdsQry2.Next;
      End;
      DM1.cdsAutdisk.Refresh;
      dbgAportes.Update;
   End;
End;

Procedure TFIngresoLote.SpeedButton7Click(Sender: TObject);
Var
   xAuxStr: String;
Begin
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      DM1.cdsCobxUse.Post;
   End;
   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      DM1.cdsAutDisk.Post;
   End;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FREGCOB =''S'' AND FCCODMOD =''S'' AND FTRANSF =''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount >= 1 Then
   Begin
      If MessageDlg('Actualizar Todos los C digos Modulares Nuevos Desea Continuar? ',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DM1.cdsQry2.First;
         While Not DM1.cdsQry2.EOF Do
         Begin
         // Generacin del ASOCODAUX - Codigo Auxiliar
            xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

            wSQL := ' UPDATE APO201 SET'
               + ' ASOCODMOD =' + QuotedStr(DM1.cdsAutDisk.FieldByName('ASOCODMOD').AsString) + ','
//                +' ASOCODAUX ='+QuotedStr(xAuxStr)
            + 'ASOCODAUX=DECODE(ASOCODMOD,' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
               ',ASOCODAUX,' + QuotedStr(xAuxStr) + ') '

            + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            DM1.cdsQry.Close;
            xSQL := 'SELECT * FROM APO202'
               + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
               + ' AND TRANSANO = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ', 7, 4)'
               + ' AND TRANSMES = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ', 4, 2)';
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;

        // Verifica si hay cambios para el periodo actual
        // Si existe entonces solo actualiza, sino inserta

            If DM1.cdsQry.RecordCount >= 1 Then
            Begin
               If Length(Trim(DM1.cdsQry.FieldByName('ASOCODMOD').AsString)) = 0 Then
               Begin
                  wSQL := 'UPDATE APO202 SET'
                     + ' ASOCODMOD =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ','
//                   +' ASOCODAUX ='+QuotedStr(xAuxStr)
                  + 'ASOCODAUX=DECODE(ASOCODMOD,' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
                     ',ASOCODAUX,' + QuotedStr(xAuxStr) + ') '

                  + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End
               Else
               Begin
                  wSQL := 'INSERT INTO APO202 (' +
                     ' ASOID, ' +
                     ' ASOCODMOD, ' +
                     ' ASOCODAUX, ' +
                     ' ASOCODPAGO, ' +
                     ' USEID, ' +
                     ' UPROID, ' +
                     ' UPAGOID, ' +
                     ' FVIGENTE ' +
                     ' ) VALUES ( ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ',' +
                     QuotedStr(xAuxStr) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ',' +
                     QuotedStr('S') +
                     ' )';
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End;
            End
            Else
            Begin
               wSQL := 'INSERT INTO APO202 (' +
                  'ASOID, ' +
                  'ASOCODMOD, ' +
                  'ASOCODAUX, ' +
                  'ASOCODPAGO, ' +
                  'USEID, ' +
                  'UPROID, ' +
                  'UPAGOID, ' +
                  'FVIGENTE ' +
                  ') VALUES (' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
                  QuotedStr(xAuxStr) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
                  QuotedStr('S') +
                  ')';
               DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End;
            wSQL := 'UPDATE COB304 SET ' +
               'FCCODMOD=NULL, ' +
               'FREGCOB=NULL, ' +
               'FTRANSF=NULL, ' +
               'USUARIO=' + QuotedStr(DM1.wUsuario) + ', ' +
               'FREG=' + QuotedStr(DateTimeToStr(Date)) + ', ' +
               'HREG=' + QuotedStr(DateTimeToStr(Date)) + ' ' +
               'WHERE ASOID=' + DM1.cdsQry2.FieldByName('ASOID').AsString + ' ' +
               'AND RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
               'AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
               'AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            DM1.cdsQry2.Next;
         End;
      End;
   End
   Else
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
   End;
End;

Procedure TFIngresoLote.SpeedButton9Click(Sender: TObject);
Var
   xAuxStr: String;
Begin
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      DM1.cdsCobxUse.Post;
   End;
   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      DM1.cdsAutDisk.Post;
   End;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FCCODPAGO =''S'' AND FTRANSF=''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      If Question(Caption, 'Actualizar Todos los C digos de Pago Nuevos ' + #13 + #13'Desea Continuar? ') Then
      Begin
         DM1.cdsQry2.First;
         While Not DM1.cdsQry2.EOF Do
         Begin
         // Generacin del ASOCODAUX - Codigo Auxiliar
            xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

            wSQL := 'UPDATE APO201 SET'
               + ' ASOCODPAGO =' + QuotedStr(DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString)
               + ' WHERE ASOID=' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            DM1.cdsQry.Close;
            xSQL := 'SELECT * FROM APO202'
               + ' WHERE ASOID  =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
               + ' AND TRANSANO = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ', 7, 4)'
               + ' AND TRANSMES =SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ', 4, 2)';
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;

        // Verifica si hay cambios para el periodo actual
        // Si existe entonces solo actualiza, sino inserta

            If DM1.cdsQry.RecordCount >= 1 Then
            Begin
               If Length(Trim(DM1.cdsQry.FieldByName('ASOCODPAGO').AsString)) = 0 Then
               Begin
                  wSQL := 'UPDATE APO202 SET'
                     + ' ASOCODPAGO  =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)
                     + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End
               Else
               Begin
                  wSQL := 'INSERT INTO APO202 (' +
                     ' ASOID, ' +
                     ' ASOCODMOD, ' +
                     ' ASOCODAUX, ' +
                     ' ASOCODPAGO, ' +
                     ' USEID, ' +
                     ' UPROID, ' +
                     ' UPAGOID, ' +
                     ' FVIGENTE ' +
                     ' ) VALUES ( ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ',' +
                     QuotedStr(xAuxStr) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ',' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ',' +
                     QuotedStr('S') +
                     ' )';
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End;
            End
            Else
            Begin
               wSQL := 'INSERT INTO APO202 (' +
                  'ASOID, ' +
                  'ASOCODMOD, ' +
                  'ASOCODAUX, ' +
                  'ASOCODPAGO, ' +
                  'USEID, ' +
                  'UPROID, ' +
                  'UPAGOID, ' +
                  'FVIGENTE ' +
                  ') VALUES ( ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
                  QuotedStr(xAuxStr) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
                  QuotedStr('S') +
                  ')';
               DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End;

            wSQL := 'UPDATE COB304 SET ' +
               'FCCODPAGO = NULL, ' +
               'FREGCOB = NULL, ' +
               'FTRANSF = NULL, ' +
               'USUARIO = ' + QuotedStr(DM1.wUsuario) + ', ' +
               'FREG =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
               'HREG =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
               'WHERE ASOID =' + DM1.cdsQry2.FieldByName('ASOID').AsString + ' ' +
               'AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
               'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
               'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            DM1.cdsQry2.Next;
         End;
      End;
   End
   Else
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
   End;
End;

Procedure TFIngresoLote.SpeedButton8Click(Sender: TObject);
Var
   xAuxStr: String;
Begin
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      DM1.cdsCobxUse.Post;
   End;

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      DM1.cdsAutDisk.Post;
   End;

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FREGCOB=''S'' AND FCCODPAGO=''S'' AND FTRANSF=''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount >= 1 Then
   Begin
      If MessageDlg('Actualizar los C digos de Pago Nuevos Desea Continuar? ',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DM1.cdsQry2.First;
         While Not DM1.cdsQry2.EOF Do
         Begin
            xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);
            wSQL := 'UPDATE APO201 SET'
               + ' ASOCODPAGO =' + QuotedStr(DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString)
               + ' ASOID      =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            DM1.cdsQry.Close;
            xSQL := 'SELECT * FROM APO202'
               + ' WHERE ASOID  =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
               + ' AND TRANSANO = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ',7,4)'
               + ' AND TRANSMES = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ',4,2)';

            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;

        // Verifica si hay cambios para el periodo actual
        // Si existe entonces solo actualiza, sino inserta

            If DM1.cdsQry.RecordCount >= 1 Then
            Begin
               If Length(Trim(DM1.cdsQry.FieldByName('ASOCODPAGO').AsString)) = 0 Then
               Begin
                  wSQL := 'UPDATE APO202 SET'
                     + ' ASOCODPAGO  =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)
                     + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End
               Else
               Begin
                  wSQL := 'INSERT INTO APO202 (' +
                     'ASOID, ' +
                     'ASOCODMOD, ' +
                     'ASOCODAUX, ' +
                     'ASOCODPAGO, ' +
                     'USEID, ' +
                     'UPROID, ' +
                     'UPAGOID, ' +
                     'FVIGENTE ' +
                     ') VALUES ( ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
                     QuotedStr(xAuxStr) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
                     QuotedStr('S') +
                     ')';
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End;
            End
            Else
            Begin
               wSQL := 'INSERT INTO APO202 (' +
                  'ASOID, ' +
                  'ASOCODMOD, ' +
                  'ASOCODAUX, ' +
                  'ASOCODPAGO, ' +
                  'USEID, ' +
                  'UPROID, ' +
                  'UPAGOID, ' +
                  'FVIGENTE ' +
                  ') VALUES ( ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ',' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ',' +
                  QuotedStr(xAuxStr) + ',' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ',' +
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ',' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ',' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ',' +
                  QuotedStr('S') +
                  ')';
               DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End;

            wSQL := 'UPDATE COB304 SET ' +
               'FCCODPAGO=NULL, ' +
               'FREGCOB=NULL, ' +
               'FTRANSF=NULL, ' +
               'USUARIO=' + QuotedStr(DM1.wUsuario) + ', ' +
               'FREG=' + QuotedStr(DateTimeToStr(Date)) + ', ' +
               'HREG=' + QuotedStr(DateTimeToStr(Date)) + ' ' +
               'WHERE ASOID=' + DM1.cdsQry2.FieldByName('ASOID').AsString + ' ' +
               'AND RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
               'AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
               'AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            DM1.cdsQry2.Next;
         End;
      End;
   End
   Else
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
   End;
End;

Procedure TFIngresoLote.SpeedButton10Click(Sender: TObject);
Var
   xAuxStr: String;
Begin
   If (DM1.cdsCobxUse.Modified)
      Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      DM1.cdsCobxUse.Post;
   End;
   If (DM1.cdsAutDisk.Modified)
      Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      DM1.cdsAutDisk.Post;
   End;

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FCUSE =''S'' AND FTRANSF=''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount >= 1 Then
   Begin
      If MessageDlg('Actualizar Todas las Uses Desea Continuar? ',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DM1.cdsQry2.First;
         While Not DM1.cdsQry2.EOF Do
         Begin
         // Generaci n del ASOCODAUX - Codigo Auxiliar
            xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

            wSQL := 'UPDATE APO201 SET'
               + ' USEID =' + QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)
               + ' ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            DM1.cdsQry.Close;
            xSQL := 'SELECT * FROM APO202'
               + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
               + ' AND TRANSANO = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ', 7, 4)'
               + ' AND TRANSMES = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ', 4, 2)';
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;

         // Verifica si hay cambios para el periodo actual
         // Si existe entonces solo actualiza, sino inserta

            If DM1.cdsQry.RecordCount >= 1 Then
            Begin
               If Length(Trim(DM1.cdsQry.FieldByName('USEID').AsString)) = 0 Then
               Begin
                  wSQL := 'UPDATE APO202 SET'
                     + ' USEID =' + QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)
                     + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End
               Else
               Begin
                  wSQL := 'INSERT INTO APO202 (' +
                     'ASOID, ' +
                     'ASOCODMOD, ' +
                     'ASOCODAUX, ' +
                     'ASOCODPAGO, ' +
                     'USEID, ' +
                     'UPROID, ' +
                     'UPAGOID, ' +
                     'FVIGENTE ' +
                     ') VALUES ( ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
                     QuotedStr(xAuxStr) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
                     QuotedStr('S') +
                     ' )';
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End;
            End
            Else
            Begin
               wSQL := 'INSERT INTO APO202 (' +
                  'ASOID, ' +
                  'ASOCODMOD, ' +
                  'ASOCODAUX, ' +
                  'ASOCODPAGO, ' +
                  'USEID, ' +
                  'UPROID, ' +
                  'UPAGOID, ' +
                  'FVIGENTE ' +
                  ') VALUES ( ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
                  QuotedStr(xAuxStr) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
                  QuotedStr('S') +
                  ' )';
               DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End;

            wSQL := 'UPDATE COB304 SET ' +
               'FCUSE = NULL, ' +
               'FREGCOB = NULL, ' +
               'FTRANSF = NULL, ' +
               'USUARIO =' + QuotedStr(DM1.wUsuario) + ', ' +
               'FREG =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
               'HREG =' + QuotedStr(DateTimeToStr(Date))
               + ' WHERE ASOID =' + DM1.cdsQry2.FieldByName('ASOID').AsString
               + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
               + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
               + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            DM1.cdsQry2.Next;
         End;
      End;
   End
   Else
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
   End;
End;

Procedure TFIngresoLote.SpeedButton11Click(Sender: TObject);
Var
   xAuxStr: String;
Begin
   If (DM1.cdsCobxUse.Modified)
      Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      DM1.cdsCobxUse.Post;
   End;
   If (DM1.cdsAutDisk.Modified)
      Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      DM1.cdsAutDisk.Post;
   End;

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FREGCOB =''S'' AND FCCODPAGO =''S'' AND FTRANSF =''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount >= 1 Then
   Begin
      If MessageDlg('Actualizar las Uses Nuevos Desea Continuar? ',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         DM1.cdsQry2.First;
         While Not DM1.cdsQry2.EOF Do
         Begin
         // Generaci n del ASOCODAUX - Codigo Auxiliar
            xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

            wSQL := 'UPDATE APO201H SET'
               + ' USEID =' + QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)
               + ' ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            DM1.cdsQry.Close;
            xSQL := 'SELECT * FROM APO202'
               + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
               + ' AND TRANSANO = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ', 7, 4)'
               + ' AND TRANSMES = SUBSTR(' + QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString) + ', 4, 2)';
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;

          // Verifica si hay cambios para el periodo actual
          // Si existe entonces solo actualiza, sino inserta

            If DM1.cdsQry.RecordCount >= 1 Then
            Begin
               If Length(Trim(DM1.cdsQry.FieldByName('USEID').AsString)) = 0 Then
               Begin
                  wSQL := 'UPDATE APO202 SET'
                     + ' USEID =' + QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)
                     + ' WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End
               Else
               Begin
                  wSQL := 'INSERT INTO APO202 (' +
                     'ASOID, ' +
                     'ASOCODMOD, ' +
                     'ASOCODAUX, ' +
                     'ASOCODPAGO, ' +
                     'USEID, ' +
                     'UPROID, ' +
                     'UPAGOID, ' +
                     'FVIGENTE ' +
                     ') VALUES ( ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
                     QuotedStr(xAuxStr) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
                     QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
                     QuotedStr('S') +
                     ' )';
                  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
               End;
            End
            Else
            Begin
               wSQL := 'INSERT INTO APO202 (' +
                  'ASOID, ' +
                  'ASOCODMOD, ' +
                  'ASOCODAUX, ' +
                  'ASOCODPAGO, ' +
                  'USEID, ' +
                  'UPROID, ' +
                  'UPAGOID, ' +
                  'FVIGENTE ' +
                  ') VALUES ( ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
                  QuotedStr(xAuxStr) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
                  QuotedStr('S') +
                  ' )';
               DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End;
            wSQL := 'UPDATE COB304 SET ' +
               'FCUSE   = NULL, ' +
               'FREGCOB = NULL, ' +
               'FTRANSF = NULL, ' +
               'USUARIO =' + QuotedStr(DM1.wUsuario) + ', ' +
               'FREG    =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
               'HREG    =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
               'WHERE ASOID   =' + DM1.cdsQry2.FieldByName('ASOID').AsString + ' ' +
               'AND RCOBID    =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
               'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
               'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            DM1.cdsQry2.Next;
         End;
      End;
   End
   Else
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
   End;
End;

Procedure TFIngresoLote.spdAporteMayTClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsBrowse Then
         DM1.cdsCobxUse.Post;
   End;

//Modificado por Error en Grabacin
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * ' +
      'FROM COB304 A ' +
      'WHERE A.RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND A.DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND A.USERCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FMAPORTE  =' + QuotedStr('S')
      + ' AND FTRANSF   =' + QuotedStr('I');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
      Screen.Cursor := crDefault;
      Exit;
   End;

   If Question(Caption, 'Actualizar  a Todos la Situacin de Inconsistencia ' + #13 + #13'Desea Continuar? ') Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         wSQL := 'UPDATE COB304 SET ' +
               // 'FMAPORTE = NULL, '+
         'FMAPORTE =''C'',' + //RCMZ ULTIMO
            'FREGCOB  = NULL, ' +
            'FTRANSF  =''X'', ' +
            'USUARIO  =' + QuotedStr(DM1.wUsuario) + ', ' +
            'FREG     =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
            'HREG     =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
            'WHERE ASOID   =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ' ' +
            'AND RCOBID    =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
         DM1.cdsQry2.Next;
      End;
      ActuaCampos;
      ShowMessage('Actualizaci n Finalizada');
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.spdAporteMayMClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsBrowse Then
         DM1.cdsCobxUse.Post;
   End;

//Modificado por Error en la Grabacin
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * ' +
      'FROM COB304 A ' +
      'WHERE A.RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND A.DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND A.USERCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FREGCOB   =' + QuotedStr('S')
      + ' AND FMAPORTE  =' + QuotedStr('S')
      + ' AND FTRANSF   =' + QuotedStr('I');
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
      Screen.Cursor := crDefault;
      Exit;
   End;

   If Question(Caption, 'Actualizar la Situación de Inconsistencia ' + #13 + #13 + 'Desea Continuar? ') Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         wSQL := 'UPDATE COB304 SET ' +
             //'FMAPORTE = NULL, '+
         'FMAPORTE =''C'', ' + //RCMZ ULTIMO
            'FREGCOB  = NULL, ' +
            'FTRANSF  =''X'', ' +
            'USUARIO  =' + QuotedStr(DM1.wUsuario) + ', ' +
            'FREG     =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
            'HREG     =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
            'WHERE ASOID   =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ' ' +
            'AND RCOBID    =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
         DM1.cdsQry2.Next;
      End;
      ActuaCamposMarc;
      ShowMessage('Actualizacin Finalizada');
    //DM1.cdsAutdisk.Refresh;
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.spdAporteMenTClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsBrowse Then
         DM1.cdsCobxUse.Post;
   End;

//Modificado por Error en Grabaci n
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * ' +
      'FROM COB304 A ' +
      'WHERE A.RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND A.DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND A.USERCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FEAPORTE  =' + QuotedStr('S')
      + ' AND FTRANSF   =' + QuotedStr('I');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
      Screen.Cursor := crDefault;
      Exit;
   End;

   If Question(Caption, 'Actualizar a Todos la Situación de Inconsistencia '#13 + #13 + 'Desea Continuar? ') Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         wSQL := 'UPDATE COB304 SET ' +
           //  'FEAPORTE = NULL, '+
         'FEAPORTE = ''C'', ' + //RCMZ ULTIMO
            'FREGCOB  = NULL, ' +
            'FTRANSF  = ''X'', ' +
            'USUARIO  =' + QuotedStr(DM1.wUsuario) + ', ' +
            'FREG     =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
            'HREG     =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
            'WHERE ASOID   =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ' ' +
            'AND RCOBID    =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
         DM1.cdsQry2.Next;
      End;
      ActuaCampos;
      ShowMessage('Actualizacin Finalizada');
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.spdAporteMenMClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsBrowse Then
         DM1.cdsCobxUse.Post;
   End;

//Modificado por Error en Grabaci n
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FREGCOB   =' + QuotedStr('S')
      + ' AND FEAPORTE  =' + QuotedStr('S')
      + ' AND FTRANSF   =' + QuotedStr('I');
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
      Screen.Cursor := crDefault;
      Exit;
   End;

   If Question(Caption, 'Actualizar la Situación de Inconsistencia ' + #13 + #13'Desea Continuar? ') Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         wSQL := 'UPDATE COB304 SET ' +
             //  'FEAPORTE = NULL, '+
         'FEAPORTE = ''C'', ' + // ULTIMO RMZ
            'FREGCOB  = NULL, ' +
            'FTRANSF  =''X'', ' +
            'USUARIO  =' + QuotedStr(DM1.wUsuario) + ', ' +
            'FREG     =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
            'HREG     =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
            'WHERE ASOID   =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ' ' +
            'AND RCOBID    =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
         DM1.cdsQry2.Next;
      End;
      ActuaCamposMarc;
      ShowMessage('Actualizacin Finalizada');
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.bbtnImprimeClick(Sender: TObject);
Var
   x10: Integer;
Begin
   Screen.Cursor := crHourGlass;
   ppDBInc.DataSource := DM1.dsAutDisk;
   If chkAdvertencias.Checked Then
   Begin
   // HPP_200901_COB JD
      xSQL := 'SELECT A.ASOCODMOD "Cod.Mod.",B.ASODNI "Dni",A.ASOAPENOM "Apellidos y Nombre",A.UPROID "U.pro", '
         + '       A.UPAGOID "U.Pago",A.USEID "Ugel",A.ASOCODPAGO "Cod.Pago",A.CARGO "Cargo",A.FCUPRO "Camb.Upro", '
         + '       A.FCUPAGO "Camb.Upago",A.FCUSE "Camb.Use",A.FCCODPAGO "Camb.Cod.Pag", '
         + '       case when a.cargo <> b.cargo then ''S'' end "Camb.Cargo" '
         + ' FROM COB304 A, APO201 B '
         + 'WHERE RCOBID    =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
         + '  AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
         + '  AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
         + '  AND FTRANSF   =''R'' AND A.ASOID=B.ASOID ';
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(XSQL);
      DM1.cdsQry4.Open;
      pplPeriodo.Caption := speAno.Text + speMes.Text;
      ppDBInc.DataSource := DM1.dsQry4;
      RepAdvertencias.DataPipeline := ppDBInc;
      ppDesInc.Report := RepAdvertencias;
      RepAdvertencias.Print;
      RepAdvertencias.Stop;
   // ppDesInc.ShowModal;
   End
   Else
   Begin
      If DM1.wTDatos = 'T' Then
      Begin
    //ppRepInc.Template.FileName :=(ExtractFilePath( application.ExeName ) + wRutaRpt +'\RepIngLote.rtm');
         ppRepInc.Template.FileName := (wRutaRpt + '\RepIngLote.rtm');
         ppRepInc.Template.LoadFromFile;
         pplbTitulo.Caption := ' Listado Detallado de Recaudación ';
      End
      Else
      Begin
         If DM1.wTDatos = 'S' Then
         Begin
            ppRepInc.Template.FileName := (wRutaRpt + '\RepIngLote.rtm');
            ppRepInc.Template.LoadFromFile;
            pplbTitulo.Caption := ' Listado Detallado de Recaudación - Sin Inconsistencias ';
         End
         Else
         Begin
            If DM1.wTDatos = 'I' Then
            Begin
               If DM1.cdsAutdisk.RecordCount > 0 Then
               Begin
                  ppRepInc.Template.FileName := (wRutaRpt + '\RepIngLoteInc.rtm');
                  ppRepInc.Template.LoadFromFile;
                  pplbTitulo.Caption := ' Listado Detallado de Recaudación - Inconsistencias ';
               End;
            End;
         End;
      End;
  //DM1.cdsAutdisk.DisableControls;
  //ppDesInc.Show;
      ppRepInc.Print;
  //DM1.cdsAutdisk.EnableControls;
      ppRepInc.Stop;
  //ppDesInc.ShowModal;
      x10 := Self.ComponentCount - 1;
      While x10 >= 0 Do
      Begin
         If Self.Components[x10].ClassName = 'TppGroup' Then
         Begin
            Self.Components[x10].Free;
         End;
         x10 := x10 - 1;
      End;

   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.spdCamCodModClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FCCODMOD;FTRANSF';
   DM1.cdsAutdisk.Filter := ' FCCODMOD=''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue :=
            FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FCCODMOD=''S'' AND FTRANSF=''I'''),
                              ffNumber, 15, 2);

      dbgAportes.ColumnByName('TRANSAPO').FooterValue :=
            FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FCCODMOD=''S'' AND FTRANSF=''I'''),
                              ffNumber, 15, 2);

      dbgAportes.ColumnByName('TRANSMTO').FooterValue :=
            FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FCCODMOD=''S'' AND FTRANSF=''I'''),
                             ffNumber, 15, 2);

      dbgAportes.ColumnByName('ASOAPENOM').FooterValue :=
           'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk,'COUNT(ASOAPENOM)','FCCODMOD=''S'' AND FTRANSF=''I'''),
                             ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Cambio de Cdigo Modular :  ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.spdCamCodPagClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FCCODPAGO;FTRANSF';
   DM1.cdsAutdisk.Filter := ' FCCODPAGO=''S'' AND FTRANSF=''R''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue :=
            FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FCCODPAGO=''S'' AND FTRANSF=''I'''),
                       ffNumber, 15, 2);

      dbgAportes.ColumnByName('TRANSAPO').FooterValue :=
            FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FCCODPAGO=''S'' AND FTRANSF=''I'''),
                       ffNumber, 15, 2);

      dbgAportes.ColumnByName('TRANSMTO').FooterValue :=
            FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FCCODPAGO=''S'' AND FTRANSF=''I'''),
                       ffNumber, 15, 2);

      dbgAportes.ColumnByName('ASOAPENOM').FooterValue :=
           'Total  ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FCCODPAGO=''S'' AND FTRANSF=''I'''),
                       ffNumber, 15, 0) + ' Registros';

      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Cambio de Código de Pago : '
              + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.spdCamUseClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FCUSE;FTRANSF';
   DM1.cdsAutdisk.Filter := ' FCUSE=''S'' AND FTRANSF=''R''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue :=
               FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FCUSE=''S'' AND FTRANSF=''I'''),
                          ffNumber, 15, 2);

      dbgAportes.ColumnByName('TRANSAPO').FooterValue :=
               FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FCUSE=''S'' AND FTRANSF=''I'''),
                          ffNumber, 15, 2);

      dbgAportes.ColumnByName('TRANSMTO').FooterValue :=
               FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FCUSE=''S'' AND FTRANSF=''I'''),
                          ffNumber, 15, 2);

      dbgAportes.ColumnByName('ASOAPENOM').FooterValue:=
               'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk,'COUNT(ASOAPENOM)','FCUSE=''S'' AND FTRANSF=''I'''),
                          ffNumber, 15, 0) + ' Registros';

      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Cambio de USE :  '
                    + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.spdApoMayClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FMAPORTE;FTRANSF';
   DM1.cdsAutdisk.Filter := ' FMAPORTE =''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue :=
               FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FMAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);

      dbgAportes.ColumnByName('TRANSAPO').FooterValue :=
               FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FMAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);

      dbgAportes.ColumnByName('TRANSMTO').FooterValue :=
               FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FMAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FMAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Aporte Mayor :  ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.spdApoMenClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FEAPORTE;FTRANSF';
   DM1.cdsAutdisk.Filter := ' FEAPORTE=''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue :=
                FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FEAPORTE=''S'' AND FTRANSF=''I'''),
                            ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue :=
                FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FEAPORTE=''S'' AND FTRANSF=''I'''),
                            ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue :=
                FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FEAPORTE=''S'' AND FTRANSF=''I'''),
                            ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FEAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Aporte Menor : ' + IntToStr(DM1.cdsAutdisk.RecordCount)
            + ' Registros ');
End;

Procedure TFIngresoLote.dbgAportesEnter(Sender: TObject);
Begin
   If pnlBusca.Visible Then
   Begin
      pnlBusca.Visible := False;
      dbgAportes.Enabled := True;
      pnlUse.Enabled := True;
      pnlFooter.Enabled := True;
      pnlHeader.Enabled := True;
      pnlDatosAportes.Enabled := True;
      dbgAportes.SetFocus;
   End;
End;

Procedure TFIngresoLote.dbeImpAporteExit(Sender: TObject);
Begin
// If (Screen.ActiveControl).TabOrder<(Sender as TWinControl).TabOrder Then Exit;
   If (ActiveControl.Parent.Name = dbeImpAporte.Parent.Name) And
      (ActiveControl.TabOrder < dbeImpAporte.TabOrder) Then
      Exit;

{  If (Length(Trim(dbeImpAporte.Text)) = 0) or
      (DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat <= 0) Then
    begin
     Beep;
     MessageDlg('Monto del Aporte No es Vlido', mtInformation, [mbOk], 0);
     dbeImpAporte.SetFocus;
     Exit;
    end;}
End;

Procedure TFIngresoLote.bbtnIngLineaClick(Sender: TObject);
Begin
   If Length(dblcdUse.Text) = 0 Then
   Begin
      Beep;
      MessageDlg('Debe Seleccionar la USE', mtInformation, [mbOk], 0);
      pnlUse.Enabled := True;
      dblcdUse.Enabled := True;
      dblcdUse.SetFocus;
      Exit;
   End;

   If Length(speAno.Text) = 0 Then
   Begin
      ShowMessage('Debe Registrar el A o');
      Exit;
   End;
   If Length(speMes.Text) = 0 Then
   Begin
      ShowMessage('Debe Registrar el Mes');
      Exit;
   End;
   If (Trim(dbeImpAporte.Text) = '') Or (StrToFloat(StringReplace(dbeImpAporte.Text, ',', '', [rfReplaceAll])) < 1) Then
   Begin
      ShowMessage('Aporte Incorrecto');
      dbeImpAporte.SetFocus;
      Exit;
   End;

   xSQL := 'SELECT APOVALOR'
      + ' FROM APO117'
      + ' WHERE APOANO =' + QuotedStr(speAno.Text)
      + ' AND APOMES =' + QuotedStr(speMes.Text);
   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSQL);
   DM1.cdsReporte1.Open;

   If DM1.cdsReporte1.FieldByName('APOVALOR').AsFloat <> DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat Then
   Begin
      Information(Caption, 'El Monto del Aporte no Coincide con el del Registrado');
   End;

   FiltraAsoc;
   Screen.Cursor := crHourGlass;
   dbgAportes.Enabled := True;
   dblcdUse.Enabled := True;
   bbtnIngresaAporte.Enabled := True;
   bbtnAutdisk.Enabled := True;
   bbtnIngresaAporte.Click;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.FiltraAsoc;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.USEID, A.UPROID, A.UPAGOID, A.ASOCODPAGO'
      + ' FROM APO201 A'
      + ' WHERE NOT EXISTS'
      + ' (SELECT B.ASOID, B.ASOCODMOD, B.ASOAPENOM, B.USEID, B.UPROID'
      + ' FROM COB304 B'
      + ' WHERE A.ASOID = B.ASOID'
      + ' AND B.RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND B.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND B.USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ' ) '
      + ' AND A.UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString) //RICMZ MOMENTANEO...
      + ' AND A.UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString); //RICMZ MOMENTANEO...
        //'AND A.USEID='+QuotedStr(dblcdUse.Text);
   DM1.cdsAsociados.Close;
   DM1.cdsAsociados.DataRequest(xSQL);

   dblcdCodigoModular.Selected.Clear;
   dblcdCodigoModular.Selected.Add('ASOCODMOD'#9'15'#9'Cdigo Modular');
   dblcdCodigoModular.Selected.Add('ASOAPENOM'#9'55'#9'Apellidos y Nombres');
   dblcdCodigoModular.Selected.Add('USEID'#9'5'#9'USE');
   dblcdCodigoModular.Selected.Add('ASOID'#9'12'#9'C digo Derrama');
   dblcdCodigoModular.Selected.Add('ASOCODPAGO'#9'15'#9'Cdigo Pago');
   DM1.cdsAsociados.Open;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.EventoModPagUse(Sender: TObject);
Var
   xAuxStr: String;
Begin

   ShowMessage('COBRANZAS NO PUEDE ACTUALIZAR MAESTRO DE ASOCIADOS, OPCION DESHABILITADA');
   EXIT;

   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsBrowse Then
         DM1.cdsCobxUse.Post;
   End;

   xSQL := 'SELECT * ' +
      'FROM COB304 A ' +
      'WHERE A.RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND A.DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND A.USERCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND (FCCODMOD=''S'' ' +
      'OR FCCODPAGO=''S'' ' +
      'OR FCUPRO=''S'' ' +
      'OR FCUPAGO=''S'' ' +
      'OR FCUSE=''S'') ';
   If (Sender As TControl).Name = 'spdCModCPagUseTod' Then
      wSQL := wSQL + 'AND FTRANSF=''I'''
   Else
      If (Sender As TControl).Name = 'spdCModCPagUseMar' Then
         wSQL := wSQL + 'AND FREGCOB=''S'' AND FTRANSF=''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
      Exit;
   End;

   If Question(Caption, 'Actualizar Todos los Códigos Modulares, Cod. Pago y Uses Nuevos ' + #13 + #13
                        + 'Desea Continuar? ') Then
   Begin
      Screen.Cursor := crHourGlass;
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);
         wSQL := 'UPDATE APO201 SET ' +
            'ASOCODMOD=' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
//WMC               'ASOCODAUX='+QuotedStr(xAuxStr)+', '+

         'ASOCODAUX=DECODE(ASOCODMOD,' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
            ',ASOCODAUX,' + QuotedStr(xAuxStr) + '), ' +

         'ASOCODPAGO=' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
            'UPROID=' + QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
            'UPAGOID=' + QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
            'USEID=' + QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ' ' +
            'WHERE ASOID=' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         wSQL := 'UPDATE APO202 SET FVIGENTE=NULL ' +
            'WHERE ASOID=' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         wSQL := 'INSERT INTO APO202 (' +
            'ASOID, ' +
            'ASOCODMOD, ' +
            'ASOCODAUX, ' +
            'ASOCODPAGO, ' +
            'USEID, ' +
            'UPROID, ' +
            'UPAGOID, FREG, HREG, ' +
            'FVIGENTE ' +
            ') VALUES (' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ', ' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ', ' +
            QuotedStr(xAuxStr) + ', ' +
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ', ' +
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString) + ', ' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString) + ', ' +
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString) + ', ' +
            'SYSDATE, SYSDATE, ' +
            QuotedStr('S') +
            ')';
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         wSQL := 'UPDATE COB304 SET ' +
            'FCCODMOD = NULL, ' +
            'FCCODPAGO = NULL, ' +
            'FCUPRO = NULL, ' +
            'FCUPAGO = NULL, ' +
            'FCUSE = NULL, ' +
            'FREGCOB = NULL, ' +
            'FTRANSF = NULL, ' +
            'USUARIO =' + QuotedStr(DM1.wUsuario) + ', ' +
            'FREG =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
            'HREG =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
            'WHERE ASOID=' + DM1.cdsQry2.FieldByName('ASOID').AsString + ' ' +
            'AND RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
         DM1.cdsQry2.Next;
      End;
      DM1.cdsAutdisk.Refresh;
     //dbgAportes.Update;
      If (Sender As TControl).Name = 'spdCModCPagUseTod' Then
         ActuaCampos
      Else
         If (Sender As TControl).Name = 'spdCModCPagUseMar' Then
            ActuaCamposMarc;
      Screen.Cursor := crDefault;
      ShowMessage('Actualizacin Finalizada');
   End;
End;

Procedure TFIngresoLote.spdTotalTransfClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSFAC';
   DM1.cdsAutdisk.Filter := 'FTRANSFAC=''S''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   dbgAportes.Color := clBtnFace;
   DM1.cdsAutdisk.RecordCount;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FTRANSFC=''S'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FTRANSFC=''S'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FTRANSFC=''S'''), ffNumber, 15, 2);
// dbgAportes.ColumnByName('ASOAPENOM').FooterValue :='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSFC=''S'''),ffNumber, 15,0)+' Registros';
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FTRANSFAC=''S'''), ffNumber, 15, 0) + ' Registros';
   ShowMessage('Total de Registros Transferidos : ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.SpeedButton2Click(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSFAC';
   DM1.cdsAutdisk.Filter := 'FTRANSFAC IS NULL OR FTRANSFAC=''''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   dbgAportes.Color := clBtnFace;
   DM1.cdsAutdisk.RecordCount;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FTRANSFAC IS NULL OR FTRANSFAC='''''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FTRANSFAC IS NULL OR FTRANSFAC='''''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FTRANSFAC IS NULL OR FTRANSFAC='''''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FTRANSFAC IS NULL OR FTRANSFAC='''''), ffNumber, 15, 0) + ' Registros';
   ShowMessage('Total de Registros por Tansferir : ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.Z2bbtnInsertaCreClick(Sender: TObject);
Var
   xSumat: integer;
   xImptracuo: Currency;
   xCobano, xCobmes: String;

Begin

   pbEstado.Position := 0;
   Ocultapaneles;
   xSumat := 0;
   xNumReg := 0; // HPP_200904_COB (F1)

   Try
      If DM1.cdsAutdisk.RecordCount = 0 Then
      Begin
         ShowMessage('No Existen Registros para la Programación');
         Exit;
      End;

      If Length(TRIM(dblTipAso.Text)) = 0 Then
      Begin
         ShowMessage('Debe ingresar Tipo de Asociados');
         Exit;
      End;
      Screen.Cursor := crHourGlass;

     //Verifica si existen registros marcados
      DM1.cdsAutdisk.DisableControls;
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.IndexFieldNames := 'FREGCOB';
      DM1.cdsAutdisk.Filter := 'FREGCOB =''S''';
      DM1.cdsAutdisk.Filtered := True;

      If DM1.cdsAutdisk.RecordCount >= 1 Then
      Begin
         DM1.cdsAutdisk.IndexFieldNames := '';
         ShowMessage('Existen Registros Marcados, Revise Estos Registros');
         DM1.cdsAutdisk.EnableControls;
         Screen.Cursor := crDefault;
         Exit;
      End;

      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;

      DM1.cdsAutdisk.EnableControls;
      dbgAportes.RefreshDisplay;

     //Si existe alguna modificacion sin grabar, lo graba
      If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
         DM1.cdsCobxUse.Post;
      DM1.ControlTran;

     //--Verifica si tiene inconsistencias
      XAPORTE := 'N';
      Inconsistencias;
     //---

    //Filtra aquellos que no estan transferidos (Sin Procesar).
      xSQL := 'SELECT * FROM COB304 A'
         + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
         + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
         + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
         + ' AND (TRANSCUO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF ='''') ' +
         ' AND ((FTRANSFC<>''S'' AND FTRANSFC<>''F''AND FTRANSFC<>''I'') OR FTRANSFC IS NULL OR FTRANSFC ='''')';
      Dm1.cdsAutdisk.Close;
      Dm1.cdsAutdisk.DataRequest(xSQL);
      Dm1.cdsAutdisk.Open;
    //---NUEVO RMZ

      If DM1.cdsAutDisk.RecordCount = 0 Then
      Begin
         Screen.Cursor := crDefault;
         Information('Cuotas', 'No Existe Información para Programación de Descargo');

         Xsql := 'SELECT Nvl(Count(1),0) Adv FROM COB304 A ' +
            'WHERE RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
            + ' AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
            + ' AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
            + ' AND  FTRANSF=''R'' ';
         DM1.cdsQry4.Close;
         DM1.cdsQry4.DataRequest(XSQL);
         DM1.cdsQry4.Open;
         If Dm1.cdsQry4.FieldByName('Adv').AsInteger > 0 Then
            If Question('Cuotas', 'Existe ADVERTENCIAS del descargo, desea generar archivo.?') Then Mandaexcel;

         DM1.cdsAutdisk.Filtered := False;
         DM1.cdsAutdisk.IndexFieldNames := '';
         DM1.cdsAutdisk.Filter := '';
         DM1.cdsAutdisk.Filtered := True;
         Exit;
      End;

      If xInc = 1 Then
      Begin
         If Not Question('Cuotas', 'Total de Inconsistencias : ' + FloatToStr(xRecInc) + ' Registros ' + #13 + #13 +
            ' Sólo se Transferirá  los Registros SIN INCONSISTENCIAS ! ' + #13 + #13 + #13 + 'Desea Continuar?') Then
         Begin
            Screen.Cursor := crDefault;
            Exit;
         End;
      End;

      If Not Question('Cuotas', 'Usted Programara el Descargo de  ' + IntToStr(DM1.cdsAutDisk.RecordCount)
                    + ' Registros hacia las Tablas de Créditos' + #13 + #13 +
         ' Esta seguro ? ') Then
      Begin
         DM1.cdsAutdisk.Filtered := False;
         DM1.cdsAutdisk.IndexFieldNames := '';
         DM1.cdsAutdisk.Filter := '';
         DM1.cdsAutdisk.Filtered := True;
         dbgAportes.RefreshDisplay;
         Screen.Cursor := crDefault;
         Exit;
      End;

      If DM1.cdsAutDisk.RecordCount > 0 Then
      Begin
         xNumReg := DM1.cdsAutDisk.RecordCount; // HPP_200904_COB (F1)
         CDSADVERTENCIA.Last;
         CDSADVERTENCIA.First;
         If CDSADVERTENCIA.RecordCount > 0 Then
         Begin
            XAPORTE := 'N';
            CDSADVERTENCIA.First;
            pnlAdvertencias.Left := 288;
            pnlAdvertencias.Top := 164;
            pnlAdvertencias.Visible := True;
         End
         Else
            Programadescargo;
      End; //End if RecordCount > 0
      Screen.Cursor := crDefault;
   Except
      xNumReg := 0; // HPP_200904_COB (F1)
      DM1.cdsAutDisk.EnableControls;
      DM1.cdsAutdisk.Filtered := False;
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      dbgAportes.RefreshDisplay;
      Ocultapaneles;
      Screen.Cursor := crDefault;
      ErrorMsg('Cuotas', 'Hubo un Error En la Programación de Descargo de Cuotas')
   End;

End;

Procedure TFIngresoLote.dblcUProcesoExit(Sender: TObject);
Begin
   xWhere := 'UPROID =' + QuotedStr(dblcUProceso.Text);
   edtUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
End;

Procedure TFIngresoLote.dblcdUPagoExit(Sender: TObject);
Begin
   //sWhere := 'UPAGOID ='+QuotedStr(dblcdUPago.Text);
   sWhere := 'UPROID =' + QuotedStr(dblcUProceso.Text) + ' AND UPAGOID =' + QuotedStr(dblcdUPago.Text);
   edtUPago.Text := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', sWhere, 'UPAGONOM');
End;

Procedure TFIngresoLote.BitBtn1Click(Sender: TObject);
Begin
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSCUO';
   DM1.cdsAutdisk.Filter := 'TRANSCUO>0';
   DM1.cdsAutdisk.Filtered := True;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'TRANSCUO>0'), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'TRANSCUO>0'), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'TRANSCUO>0'), ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'TRANSCUO > 0'), ffNumber, 15, 0) + ' Registros';
End;

Procedure TFIngresoLote.dblcdAgenBcoExit(Sender: TObject);
Begin
   // Inicio: HPP_200919_COB realizado por JCARBONEL - no relacionado con el pase HPP_200918_COB
   sWhere := 'FPAGOID=' + quotedstr(DM1.cdsCobxUse.FieldByName('FPAGOID').AsString);
   // Fin: HPP_200919_COB
   DM1.DisplayDescrip('prvSQL', 'TGE112', 'FPAGOBCO', sWhere, 'FPAGOBCO');
   If DM1.cdsQry.FieldByName('FPAGOBCO').AsString <> 'S' Then
      Exit;

   sWhere := 'BANCOID = ' + QuotedStr(dblcBanco.Text) + ' AND AGENBCOID = ' + QuotedStr(dblcdAgenBco.Text);
   edtAgencia.Text := DM1.DisplayDescrip('prvSQL', 'COB102', 'AGENBCODES', sWhere, 'AGENBCODES');

   If z2bbtnCancel.Focused Then Exit;

   {If dblcdAgenBco.Text='' Then
   begin
      ShowMessage('Ingresa el Cdigo de la Agencia');
      dblcdAgenBco.SetFocus;
      Exit;
   end;}
End;

Procedure TFIngresoLote.ppRepIncPreviewFormCreate(Sender: TObject);
Begin
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
{  ppRepInc.PreviewForm.ClientHeight := 500;
 ppRepInc.PreviewForm.ClientWidth  := 650;
 TppViewer(ppRepInc.PreviewForm.Viewer).ZoomSetting := zsPagewidth;}
End;

Procedure TFIngresoLote.fcShapeBtn2Click(Sender: TObject);
Begin
   actpnl1;
   dblcdCodigoModular.Text := '';
   dbeCodigo.Text := '';
   dbeCodigoPago.Text := '';
   dbeApeNom.Text := '';
   dblcdUseA.Text := '';
   dbeAporte.Text := dbeImpAporte.Text;
   dbeCuota.Text := '0.00';
   dbeTotal.Text := '0.00';
   dbgAsoFalt.DataSource := Nil;
   pnlAsoFalt.Visible := False;
End;

Procedure TFIngresoLote.sbtnAceptarClick(Sender: TObject);
Begin
   If Length(Trim(edtAsociado.Text)) = 0 Then
   Begin
      ErrorMsg(Caption, 'Apellidos y Nombres no V lidos');
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   sWhere := 'ASOAPENOM LIKE ' + QuotedStr(Trim(edtAsociado.Text + '%'));

   dbgAsoFalt.Selected.Clear;
   dbgAsoFalt.Selected.Add('ASOID'#9'10'#9'Codigo');
   dbgAsoFalt.Selected.Add('ASOCODMOD'#9'10'#9'Cdigo~Modular');
   dbgAsoFalt.Selected.Add('ASOCODAUX'#9'3'#9'C digo~Auxiliar');
   dbgAsoFalt.Selected.Add('ASOCODPAGO'#9'10'#9'Cdigo~Pago');
   dbgAsoFalt.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos~Nombres');
   dbgAsoFalt.Selected.Add('UPROID'#9'5'#9'U. Proceso');
   dbgAsoFalt.Selected.Add('UPAGOID'#9'5'#9'U. Pago');
   dbgAsoFalt.Selected.Add('USEID'#9'5'#9'U.S.E.');

  //DM1.DisplayDescrip('prvTGE','APO201','ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID',sWhere,'ASOCODMOD');

   xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID '
          +'FROM APO201 WHERE ' + sWhere;
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

  //If DM1.cdsQry2.RecordCount > 0 Then
  //begin
  //Screen.Cursor:=crDefault;
   dbgAsoFalt.DataSource := DM1.dsQry2;
   //end;
   dbgAsoFalt.SetFocus;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.dbgAsoFaltDblClick(Sender: TObject);
Begin
   sWhere := 'UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
      + ' AND UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

   dbeAsoid.Text := DM1.cdsQry2.FieldByName('ASOID').AsString;
   dbeCodMod.Text := DM1.cdsQry2.FieldByName('ASOCODMOD').AsString;
   dbeCodAux.Text := DM1.cdsQry2.FieldByName('ASOCODAUX').AsString;
   dbeCodPago.Text := DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString;
   dbePriApellido.Text := DM1.cdsQry2.FieldByName('ASOAPEPAT').AsString;
   dbeSegApellido.Text := DM1.cdsQry2.FieldByName('ASOAPEMAT').AsString;
   dbeApeyNom.Text := DM1.cdsQry2.FieldByName('ASOAPENOM').AsString;
   dbeUProc.Text := edtUProceso.Text;
   dbeUPago.Text := edtUPago.Text;
   dbeAporte2.Text := '0.00';
   dbeCuota2.Text := '0.00';
   dbeTotal2.Text := '0.00';
   xModoSta := 'M';
   bbtnAcepNAso.Enabled := True;
   pnlNAsoc.Visible := True;
   deactpnl1;
   dbeCodMod.SetFocus;
End;

Procedure TFIngresoLote.dbgAsoFaltIButtonClick(Sender: TObject);
Begin

   sWhere := 'UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
      + ' AND UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

   dbeCodMod.Text := '';
   dbeCodAux.Text := '0';
   dbeCodPago.Text := '';
   dbeApeyNom.Text := '';
   dbeAporte2.Text := '0.00';
   dbeCuota2.Text := '0.00';
   dbeTotal2.Text := '0.00';
   dbeUProc.Text := edtUProceso.Text;
   dbeUPago.Text := edtUPago.Text;
   xModoSta := 'A';
   bbtnAcepNAso.Enabled := True;
   deactpnl1;
   pnlNAsoc.Visible := True;
   dbeCodMod.SetFocus;
End;

Procedure TFIngresoLote.fcShapeBtn3Click(Sender: TObject);
Begin
   actpnl1;
   IniPnlNAsoc
End;

Procedure TFIngresoLote.dblcdUseAsoExit(Sender: TObject);
Begin
   sWhere := 'UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
      + ' AND UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
      + ' AND USEID   =' + QuotedStr(dblcdUseAso.Text);
   dbeUSE.Text := DM1.DisplayDescrip('prvTGE', 'APO101', 'USENOM', sWhere, 'USENOM');
End;

Procedure TFIngresoLote.bbtnAcepNAsoClick(Sender: TObject);
Var
   Code: Integer;
   I: Double;
Begin

   //..CONSISTENCIA INFORMACION INGRESADA
   If (Length(trim(dbeCodMod.Text)) = 0) Or (Length(trim(dbeCodMod.Text)) < 10) Then
   Begin
      ShowMessage('Cdigo Modular inconsistente');
      dbeCodMod.SetFocus;
      exit;
   End;

   If Length(trim(dbeCodPago.Text)) = 0 Then
   Begin
      ShowMessage('Debe ingresar el C digo de pago');
      dbeCodPago.SetFocus;
      exit;
   End;

   If Length(trim(dbePriApellido.Text)) = 0 Then
   Begin
      ShowMessage('Debe ingresar el Apellido Paterno');
      dbePriApellido.SetFocus;
      exit;
   End;

   If Length(trim(dbeSegApellido.Text)) = 0 Then
   Begin
      ShowMessage('Debe ingresar el Apellido Materno');
      dbeSegApellido.SetFocus;
      exit;
   End;

   If Length(trim(dbeNombres.Text)) = 0 Then
   Begin
      ShowMessage('Debe ingresar los Nombres');
      dbeNombres.SetFocus;
      exit;
   End;

   If Length(trim(dblcdUseAso.Text)) = 0 Then
   Begin
      ShowMessage('Debe ingresar el Cdigo de USE');
      dblcdUseAso.SetFocus;
      exit;
   End;

   If StrToFloat(dbeAporte2.Text) <> StrToFloat(dbeImpAporte.Text) Then
   Begin
      ShowMessage('El Aporte es Inconsistente');
      dbeAporte2.SetFocus;
      exit;
   End;

   If Not Question(Caption, 'Usted Insertará el ASOCIADO con TIPO NO IDENTIFICADO (NI) ** EN ARCHIVO TEMPORAL ** '
                           + trim(dbeApeyNom.Text) + '..' + #13 + #13 +
                            ' Est seguro de Insertarlo? ') Then exit;

  //..ADICIONA ASOCIADO TIPO "NI"
   GenAsociadoenTemp;

  //..ADICIONA EN ARCHIVO AUTDISK PARA TRANSFERIR

   DM1.cdsAutdisk.Edit;
   Screen.Cursor := crHourGlass;

   If Length(dblcdUseAso.Text) = 0 Then
   Begin
      ShowMessage('Debe Seleccionar la USE');
      dblcdUseAso.SetFocus;
      Screen.Cursor := crDefault;
      Exit;
   End;

   DM1.cdsAutdisk.FieldByName('TRANSAPO').AsFloat := DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat;
   DM1.cdsAutdisk.FieldByName('ASOID').AsString := '';
   DM1.cdsAutdisk.FieldByName('ASOCODPAGO').AsString := '';
   DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString := DM1.StrZero(dbeCodMod.Text, 10);
   DM1.cdsAutdisk.FieldByName('ASOTIPID').AsString := 'NI';
   DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString := trim(dbePriApellido.Text) + ' '
                                                     + trim(dbeSegApellido.Text) + ' '
                                                     + trim(dbeNombres.Text);

   xSQL := 'SELECT * FROM APO101'
      + ' WHERE UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
      + ' AND UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
      + ' AND USEID=' + QuotedStr(dblcdUseAso.Text);

   DM1.Filtracds(DM1.cdsQry, xSQL);
   DM1.cdsAutdisk.FieldByName('USEID').AsString := DM1.cdsQry.FieldbyName('USEID').AsString;
   DM1.cdsAutdisk.FieldByName('UPROID').AsString := DM1.cdsQry.FieldbyName('UPROID').AsString;
   DM1.cdsAutdisk.FieldByName('UPAGOID').AsString := DM1.cdsQry.FieldbyName('UPAGOID').AsString;
   DM1.cdsAutdisk.FieldByName('DPTOID').AsString := DM1.cdsQry.FieldbyName('DPTOID').AsString;
   DM1.cdsAutdisk.FieldByName('TRANSANO').AsString := speAno.Text;
   DM1.cdsAutdisk.FieldByName('TRANSMES').AsString := DM1.StrZero(speMes.Text, 2);

   If (Trim(dblcFormaPago.Text) = 'PLA') Or (Trim(dblcFormaPago.Text) = 'REG') Then
      DM1.cdsAutdisk.FieldByName('APOSEC').AsString := speAno.Text + DM1.StrZero(speMes.Text, 2)
   Else
      DM1.cdsAutdisk.FieldByName('APOSEC').AsString := Copy(dbdtpFecOperacion.Text, 7, 4)
                                                     + Copy(dbdtpFecOperacion.Text, 4, 2);

   DM1.cdsAutdisk.FieldByName('TMONID').AsString := dblcMoneda.Text;
   DM1.cdsAutdisk.FieldByName('BANCOID').AsString := dblcBanco.Text;
   DM1.cdsAutdisk.FieldByName('CCBCOID').AsString := dblcCtaCte.Text;
   DM1.cdsAutdisk.FieldByName('TRANSNOPE').AsString := dbeNumOperacion.Text;
   DM1.cdsAutdisk.FieldByName('TRANSFOPE').AsDateTime := dbdtpFecOperacion.Date;
   DM1.cdsAutdisk.FieldByName('FORPAGOID').AsString := dblcFormaPago.Text;

   DM1.cdsAutdisk.FieldByName('RCOBID').AsString := DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
   DM1.cdsAutdisk.FieldByName('DETRCOBID').AsString := DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
   DM1.cdsAutdisk.FieldByName('USERCOBID').AsString := DM1.cdsCobxUse.FieldByName('USERCOBID').AsString;

   dbeAporte2.Text := Trim(dbeAporte2.Text);
   Val(dbeAporte2.Text, I, Code);
   If Code = 0 Then
      DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat := StrToFloat(dbeAporte2.Text)
   Else
      DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat := 0;

   dbeCuota2.Text := Trim(dbeCuota2.Text);
   Val(dbeCuota2.Text, I, Code);
   If Code = 0 Then
      DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat := StrToFloat(dbeCuota2.Text)
   Else
      DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat := 0;

   dbeTotal2.Text := Trim(dbeTotal2.Text);
   Val(dbeTotal2.Text, I, Code);
   If Code = 0 Then
      DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat := StrToFloat(dbeTotal2.Text)
   Else
      DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat := 0;

   DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
   DM1.cdsAutdisk.FieldByName('USUARIO').AsString := DM1.wUsuario;
   DM1.cdsAutdisk.FieldByName('FREG').AsDateTime := Date;
   DM1.cdsAutdisk.FieldByName('HREG').AsDateTime := Date + Time;

   cdsPost(DM1.cdsAutdisk);
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

  //DM1.ControlTran;
   bbtnAcepNAso.Enabled := False;
   actpnl1;
   IniPnlNAsoc;
   dbgAsoFalt.DataSource := Nil;
   pnlAsoFalt.Visible := False;
   dblcdCodigoModular.SetFocus;
   Screen.Cursor := crDefault;

   DM1.cdsAutdisk.Append;
   dbeAporte.Text := dbeImpAporte.Text;
   dbeCuota.Text := '0';

End;

Procedure TFIngresoLote.GenAsociado;
Var
   xCodInt, xAuxInt: Integer;
   xCodStr, xAuxStr, xSQL: String;
Begin

   Screen.Cursor := crHourGlass;

   //NUEVO CODIGO ASOID
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest('SELECT MAX(ASOID)+1 CODIGO FROM APO201');
   DM1.cdsReporte.Open;
   dbeAsoid.Text := DM1.cdsReporte.FieldByname('CODIGO').AsString;

   xCodInt := DM1.cdsReporte.FieldByName('CODIGO').AsInteger;
   xCodStr := DM1.StrZero(IntToStr(xCodInt), xLogAsoid);
   dbeAsoid.Text := xCodStr;
   DM1.cdsReporte.Close;

   //Generacin del ASOCODAUX - Codigo Auxiliar
   xAuxStr := DM1.BuscaCodMod('APO201', dbeCodMod.Text);
   dbeCodAux.Text := xAuxStr;

   xSQL := 'INSERT INTO APO201 ('
      +' CIAID, ASOID, ASOCODAUX, ASOCODMOD, ASOCODPAGO,ASOAPEPAT,ASOAPEMAT,ASONOMBRES,'
      +' ASOAPENOM, USEID, UPROID, UPAGOID, '
      +' USUARIO, FREG, HREG, ASOTIPID, ASOSITID,TCREACION ) ' +
      'VALUES (' +
      QuotedStr(wCiaDef) + ', ' +
      QuotedStr(xCodStr) + ', ' +
      QuotedStr(xAuxStr) + ', ' +
      QuotedStr(dbeCodMod.Text) + ', ' +
      QuotedStr(dbeCodPago.Text) + ', ' +
      QuotedStr(dbePriApellido.Text) + ', ' +
      QuotedStr(dbeSegApellido.Text) + ', ' +
      QuotedStr(dbeNombres.Text) + ', ' +
      QuotedStr(dbeApeyNom.Text) + ', ' +
      QuotedStr(dblcdUseAso.Text) + ', ' +
      QuotedStr(dblcUProceso.Text) + ', ' +
      QuotedStr(dblcdUPago.Text) + ', ' +
      QuotedStr(DM1.wUsuario) + ', TO_DATE(SYSDATE,' + QuotedStr('DD/MM/YYY') + '), SYSDATE, ''NI'', ''AC'',''03'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.spdAsoDuplClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FNASODUP; FTRANSF';
   DM1.cdsAutdisk.Filter := ' FNASODUP =''S'' AND FTRANSF =''I''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FNASODUP =''S'' AND FTRANSF =''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FNASODUP =''S'' AND FTRANSF =''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FNASODUP =''S'' AND FTRANSF =''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FNASODUP =''S'' AND FTRANSF =''I'''), ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por C digo de Derrama Duplicado : '
                + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.SpeedButton3Click(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsBrowse Then
         DM1.cdsCobxUse.Post;
   End;

//Modificado por Error de Grabacin
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FNASODUP =''S'' AND FTRANSF =''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
      Screen.Cursor := crDefault;
      Exit;
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.spdCodPagTClick(Sender: TObject);
Begin

   ShowMessage('COBRANZAS NO PUEDE ACTUALIZAR MAESTRO DE ASOCIADOS, OPCION DESHABILITADA');
   EXIT;

   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsBrowse Then
         DM1.cdsCobxUse.Post;
   End;

//Modificado por Error en Grabaci n
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FCCODPAGO =' + QuotedStr('S');
   If (Sender As TControl).Name = 'spdCodPagT' Then
      wSQL := wSQL + 'AND FTRANSF=''I'''
   Else
      If (Sender As TControl).Name = 'spdCodPagM' Then
         wSQL := wSQL + 'AND FREGCOB=''S'' AND FTRANSF=''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
      Screen.Cursor := crDefault;
      Exit;
   End;

   If Question(Caption, 'Actualizar Todos los C digos de Pago Nuevos ' + #13 + #13 + 'Desea Continuar? ') Then
   Begin
      Screen.Cursor := crHourGlass;
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         wSQL := 'UPDATE APO201 SET ' +
            'ASOCODPAGO =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString) + ' ' +
            'WHERE ASOID =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

      {wSQL:='UPDATE APO202 SET FVIGENTE=NULL '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

      wSQL:='INSERT INTO APO202 ('+
            'ASOID, '+
            'ASOCODMOD, '+
            'ASOCODPAGO, '+
            'USEID, '+
            'UPROID, '+
            'UPAGOID, FREG, HREG, '+
            'FVIGENTE '+
            ') VALUES ('+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
            'SYSDATE, SYSDATE, '+
            QuotedStr('S')+
      ')';
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);}

         wSQL := 'UPDATE COB304 SET ' +
            'FCCODPAGO = NULL, ' +
            'FREGCOB   = NULL, ' +
            'FTRANSF   = NULL, ' +
            'USUARIO   =' + QuotedStr(DM1.wUsuario) + ', ' +
            'FREG      =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
            'HREG      =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
            'WHERE ASOID =' + DM1.cdsQry2.FieldByName('ASOID').AsString
            + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
            + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
            + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
         DM1.cdsQry2.Next;
      End;
      DM1.cdsAutdisk.Refresh;
      dbgAportes.Update;
      If (Sender As TControl).Name = 'spdCodPagT' Then
         ActuaCampos
      Else
         If (Sender As TControl).Name = 'spdCodPagM' Then
            ActuaCamposMarc;
      Screen.Cursor := crDefault;
      ShowMessage('Actualizacin Finalizada');
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.ActuaCampos;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   DM1.wTDatos := 'T';
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter := '';
   DM1.cdsAutdisk.Filtered := True;

   ActualizaFooter;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.ActuaCamposMarc;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   //ActualizaFooter;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.spdAsoCuotasClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   DM1.cdsAutdisk.Filter := 'TRANSCUO>0';
   DM1.cdsAutdisk.Filtered := True;
   If DM1.cdsAutdisk.RecordCount > 0 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'TRANSCUO>0'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'TRANSCUO>0'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'TRANSCUO>0'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'TRANSCUO>0'), ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se Encontr Informaci n a Mostrar ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Con Cuotas : ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.spdCtastransClick(Sender: TObject);
Var
   xWhere: String;
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)
      + ' And (TRANSCUO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''')'
      + ' AND (FTRANSFC Not In (''S'', ''F'',''I'') OR FTRANSFC IS NULL OR FTRANSFC='''')';

   DM1.cdsAutdisk.Filter := '';
   DM1.cdsAutdisk.Filtered := False;
 //  DM1.cdsAutDisk.IndexFieldNames := '';
   DM1.cdsAutDisk.Close;
   DM1.cdsAutDisk.DataRequest(xSQL);
   DM1.cdsAutDisk.Open;
//   DM1.cdsAutdisk.Filter:='(TRANSCUO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' '+
//                                        'AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')';

{  xWhere := 'RCOBID='+qUOTEDSTR(DM1.cdsAutdisk.FieldByName('RCOBID').AsString)+
            ' AND ((TRANSCUO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' '+
                                        'AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''') )';

  DM1.DisplayDescrip('prvSQL','COB304','*',xWhere,'RCOBID');}
//   DM1.cdsAutdisk.Filtered:=True;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   If DM1.cdsAutdisk.RecordCount > 0 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'TRANSCUO>0 AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'TRANSCUO>0 AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'TRANSCUO>0 AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'TRANSCUO>0 AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')'), ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No Existe Informacin a Transferir');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros con Cuotas por Transferir : ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.spdCtasxTransfClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   DM1.cdsAutdisk.Filter := '(TRANSCUO > 0) ' + //AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' '+
      'AND (FTRANSFC=''S'')';
   DM1.cdsAutdisk.Filtered := True;
   If DM1.cdsAutdisk.RecordCount > 0 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', '(TRANSCUO > 0) AND (FTRANSFC=''S'')'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', '(TRANSCUO > 0) AND (FTRANSFC=''S'')'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', '(TRANSCUO > 0) AND (FTRANSFC=''S'')'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', '(TRANSCUO > 0) AND (FTRANSFC=''S'')'), ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se Encontraron Informaci n a Mostrar ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Con Cuotas Transferidas a la Tabla de Crditos: ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.spdApDupClick(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FAPORPROV;FTRANSF';
   DM1.cdsAutdisk.Filter := ' FAPORPROV=''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FAPORPROV=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FAPORPROV=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FAPORPROV=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FAPORPROV =''S'' AND FTRANSF =''I'''), ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Aportes Provisionales : ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.spdAporteProvClick(Sender: TObject);
Begin
  //Falta hacer esta opcion
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsBrowse Then
         DM1.cdsCobxUse.Post;
   End;

//Modificado por Error en Grabacin
{  If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    If DM1.cdsAutDisk.State <> dsBrowse Then
    DM1.cdsAutDisk.Post;
  end;
  DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FAPORPROV =''S'' '
      + ' AND FTRANSF=''I'' ';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
      Screen.Cursor := crDefault;
      Exit;
   End;

   If Question(Caption, ' Actualizar  Todos los Aportes Provisionales ' + #13 + #13 + 'Desea Continuar? ') Then
   Begin
      Screen.Cursor := crHourGlass;
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         xSQL := 'SELECT ASOID, TRANSANO, TRANSMES, PVSLBENNR, FLGNIV, APOSECID, APO301ID FROM APO301'
            + ' WHERE ASOID   =' + Quotedstr(DM1.cdsQry2.FieldByName('ASOID').AsString)
            + ' AND TRANSANO  =' + Quotedstr(DM1.cdsQry2.FieldByName('TRANSANO').AsString)
            + ' AND TRANSMES  =' + Quotedstr(DM1.cdsQry2.FieldByName('TRANSMES').AsString)
            + ' AND FORPAGOID =''25'' ';

         DM1.cdsQry3.IndexFieldNames := '';
         DM1.cdsQry3.DataRequest(xSQL);
         DM1.cdsQry3.Open;
         DM1.cdsQry3.First;
         If DM1.cdsQry3.RecordCount >= 1 Then
         Begin
            wSQL := 'UPDATE COB304 SET ' +
               'FAPORPROV  = NULL' +
               ',FDAPORTE  = NULL' +
               ',FTRANSF   = NULL ' +
               ',PVSLBENNR =' + Quotedstr(DM1.cdsQry3.FieldByName('PVSLBENNR').AsString) +
               ',FLGNIV    =' + Quotedstr(DM1.cdsQry3.FieldByName('FLGNIV').AsString) +
               ',APOSECID  =' + '' + Inttostr(DM1.cdsQry3.FieldByName('APOSECID').AsInteger) + '' +
               ',APO301ID  =' + Quotedstr(DM1.cdsQry3.FieldByName('APO301ID').AsString) +
               ',USUARIO   =' + QuotedStr(DM1.wUsuario) + ', ' +
               'FREG=' + QuotedStr(DateTimeToStr(Date)) + ', ' +
               'HREG=' + QuotedStr(DateTimeToStr(Date)) + ' ' +
               'WHERE ASOID=' + DM1.cdsQry2.FieldByName('ASOID').AsString + ' ' +
               'AND RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
               'AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
               'AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

            wSQL := 'DELETE FROM APO301 ' +
               ' WHERE ASOID =' + Quotedstr(DM1.cdsQry2.FieldByName('ASOID').AsString) +
               ' AND TRANSANO =' + Quotedstr(DM1.cdsQry2.FieldByName('TRANSANO').AsString) +
               ' AND TRANSMES =' + Quotedstr(DM1.cdsQry2.FieldByName('TRANSMES').AsString) +
               ' AND FORPAGOID =''25'' ';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         End;
         DM1.cdsQry2.Next;
      End;
      DM1.cdsAutdisk.Refresh;
      dbgAportes.Update;
      ActuaCampos;
      ActuaCamposMarc;
      Screen.Cursor := crDefault;
      ShowMessage('Actualizacin Finalizada');
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.fcShapeBtn1Click(Sender: TObject);
Begin
   pnlCoinsidencias.Visible := False;
End;

Procedure TFIngresoLote.dbgCoinsidenciasDblClick(Sender: TObject);
Var
   xSQL, xWhere: String;
Begin
   pnlCoinsidencias.Visible := False;
   xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID, ASOTIPID FROM APO201'
      + ' WHERE ASOAPENOM LIKE ' + QuotedStr(DM1.cdsQry5.FieldByName('ASOAPENOM').AsString + '%')
      + ' AND ASOCODMOD =' + QuotedStr(dblcdCodigoModular.Text);
   DM1.cdsAsociados.Close;
   DM1.cdsAsociados.Datarequest(xSQL);
   DM1.cdsAsociados.Open;
   xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID, ASOTIPID FROM APO201'
      + ' WHERE ASOAPENOM LIKE ' + QuotedStr(DM1.cdsqry5.FieldByName('ASOAPENOM').AsString + '%')
      + ' AND ASOCODMOD =' + QuotedStr(dblcdCodigoModular.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.Datarequest(xSQL);
   DM1.cdsQry.Open;
   DM1.cdsAutdisk.Edit;
   DM1.cdsAutDisk.FieldByName('ASOID').AsString := DM1.cdsAsociados.FieldByName('ASOID').AsString;
   DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
   DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
   DM1.cdsAutDisk.FieldByName('ASOTIPID').AsString := DM1.cdsAsociados.FieldByName('ASOTIPID').AsString;
   DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
   DM1.cdsAutDisk.FieldByName('USEID').AsString := DM1.cdsAsociados.FieldByName('USEID').AsString;
   DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat := 0;
   DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat := 0;
   dbeCodigoPago.Text := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
   xWhere := 'UPROID =' + QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
      + ' And UPAGOID =' + QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)
      + ' And USEID =' + QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString);
   dbeUseA.Text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   dbeAporte.SetFocus;
End;

Procedure TFIngresoLote.bbtnActAportesDupClick(Sender: TObject);
Var
   xAno, xMes, xDia, xAnoMes, xTrim, xSem, xSs, xAaTri, xAaSem, xAass: String;
   xForPagoId: String;
Begin
   Beep;
   If MessageDlg('Desea Insertar los Aportes Duplicados hacia las Tablas de Aportes' + #13 + #13 +
      ' Est  Seguro de Insertarlos? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      Screen.Cursor := crHourGlass;
      If DM1.cdsAutDisk.RecordCount > 0 Then
      Begin
         pnlTransf.Visible := True;
       //Animate1.Active:=True;
         DM1.cdsAutDisk.DisableControls;

         sFecha := FormatDateTime(wFormatFecha, dbdtpFecOperacion.DateTime);
         sSQL := 'SELECT * FROM TGE114 WHERE FECHA =' + QuotedStr(sFecha);
         DM1.FiltraCDS(DM1.cdsPeriodo, sSQL);

         xAno := DM1.cdsPeriodo.FieldByName('FECANO').AsString;
         xMes := DM1.cdsPeriodo.FieldByName('FECMES').AsString;
         xDia := DM1.cdsPeriodo.FieldByName('FECDIA').AsString;
         xAnoMes := xAno + xMes;
         xTrim := DM1.cdsPeriodo.FieldByName('FECTRIM').AsString;
         xSem := DM1.cdsPeriodo.FieldByName('FECSEM').AsString;
         xSs := DM1.cdsPeriodo.FieldByName('FECSS').AsString;
         xAaTri := DM1.cdsPeriodo.FieldByName('FECAATRI').AsString;
         xAaSem := DM1.cdsPeriodo.FieldByName('FECAASEM').AsString;
         xAass := DM1.cdsPeriodo.FieldByName('FECAASS').AsString;

         xForPagoId := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID', 'FORPAGOABR =' + QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString), 'FORPAGOID');

         sSQL := 'SELECT ' + wRepFuncChar + wRepFecServi + ', ' + QuotedStr('DD/MM/YYYY') + ') "FECHA" FROM DUAL';
         DM1.cdsReporte.Close;
         DM1.cdsReporte.DataRequest(sSQL);
         DM1.cdsReporte.Open;
         xFec_Sis := DM1.cdsReporte.FieldByName('FECHA').AsString;

         sFecha := FormatDateTime(wFormatFecha, StrToDate(xFec_Sis));

       //DM1.cdsAutDisk.First;
       //While Not DM1.cdsAutDisk.EOF Do
       //begin
       //  Ingreso de Aportes APO301
         xSQL := 'INSERT INTO APO301 (' +
            'ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID, ' +
            'UPROABR, TMONID, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, ' +
            'TRANSANO, TRANSMES, TRANSMTO, TRANSINTID, USUARIO, ASOCODMOD, ASOCODAUX, ' +
            'FORPAGOID, ASOAPENOM, FORPAGOABR, DPTOID, DPTOABR, CIUDID, ' +
            'FREG, HREG, TRANSAAMM, TRANSAATRI, TRANSTRIM, TRANSSEM, TRANSAASEM, ' +
            'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, PVSLBENNR, FLGNIV, APOSECID, APO301ID,CNTANOMM) ' +

         'SELECT Z.ASOID, ''APORTE'', ' +
            'Z.USEID, B.USEABRE, Z.UPAGOID, C.UPAGOABR, Z.UPROID, D.UPROABR, ' +
            '''N'', ' + QuotedStr(DM1.cdsAutDisk.FieldByName('BANCOID').AsString) + ', ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('CCBCOID').AsString) + ', ' +
            QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString) + ', ' +
            wRepFuncDate + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString) + '), ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString) + ', ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString) + ', TRANSAPO, ' +
            QuotedStr('APO') + ', ' +
              //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', ''APO'', '+
         QuotedStr(DM1.cdsAutDisk.FieldByName('USUARIO').AsString) + ', ' +
            'Z.ASOCODMOD, A.ASOCODAUX, ' + QuotedStr(xForPagoId) + ', ' +
            'A.ASOAPENOM, E.FORPAGOABR, B.DPTOID, F.DPTOABR, B.CIUDID, ' +
            wRepFuncDate + QuotedStr(sFecha) + '), SYSDATE, ' +
               //wRepFuncDate+QuotedStr(sFecha)+'), '+wRepFuncDate+QuotedStr(sFecha)+'), '+
               //'A.ASOAPENOM, E.FORPAGOABR, A.DPTOID, F.DPTOABR, A.CIUDID, SYSDATE, SYSDATE, '+sFecha
         QuotedStr(xAnoMes) + ', ' + QuotedStr(xAaTri) + ', ' + QuotedStr(xTrim) + ', ' +
            QuotedStr(xSem) + ', ' + QuotedStr(xAaSem) + ', ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString +
            DM1.cdsAutDisk.FieldByName('TRANSMES').AsString) + ', ' + QuotedStr(wCiaDef) + ', RCOBID, DETRCOBID, USERCOBID, ' +
            QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString) + ', ' +
            QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString) + ', Z.PVSLBENNR, Z.FLGNIV, Z.APOSECID, Z.APO301ID,TO_CHAR(SYSDATE,''yyyymm'') ';

         xSQL1 := 'FROM COB304 Z, APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F ' +
              {'WHERE Z.ASOID=A.ASOID '+      //'WHERE A.ASOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
              'AND A.USEID=B.USEID '+
              'AND B.USEID='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+' '+
              'AND A.UPAGOID=C.UPAGOID '+
              'AND C.UPAGOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+' '+
              'AND A.UPROID=D.UPROID '+
              'AND D.UPROID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+' '+
              'AND E.FORPAGOABR='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
              'AND F.DPTOID(+)=Z.DPTOID '+
              'AND Z.RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
              'AND Z.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
              'AND Z.USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
              'AND TRANSMTO > 0 '+
              'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') '+
              'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';}
         'WHERE Z.ASOID = A.ASOID ' +
            'AND Z.UPROID  = B.UPROID ' +
            'AND Z.UPAGOID = B.UPAGOID ' +
            'AND Z.USEID   = B.USEID ' +
            'AND B.UPROID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString) + ' ' +
            'AND B.UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString) + ' ' +
            'AND C.UPROID  = B.UPROID ' +
            'AND C.UPAGOID = B.UPAGOID ' +
            'AND D.UPROID  = B.UPROID ' +
            'AND F.DPTOID  = B.DPTOID ' +
            'AND E.FORPAGOABR =' + QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString) + ' ' +
            'AND Z.RCOBID     =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND Z.DETRCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND Z.USERCOBID  =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ' ' +
            'AND TRANSMTO > 0 ' +
            'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') ' +
            'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';

//       DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL1);

         xSQL := 'UPDATE COB304 SET FTRANSFAC =''S'' ' +
            'WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ' ' +
            'AND TRANSMTO > 0 ' +
            'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''X'')=''X'') ' +
            'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';
//       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         pnlTransf.Visible := False;
      //Animate1.Active:=False;

         DM1.cdsAutDisk.EnableControls;
      End;

      DM1.cdsAutdisk.Filtered := False;
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      ActualizaFooter;
      ActuaCampos;
      ShowMessage('Transferencia Finalizada');
      ActualizaFooter;
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFIngresoLote.spdAporteRegistradosClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) Or (DM1.cdsCobxUse.ChangeCount > 0) Then
   Begin
      If DM1.cdsCobxUse.State <> dsBrowse Then
         DM1.cdsCobxUse.Post;
   End;

//Modificado por Error en Grabacin
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * ' +
      'FROM COB304 A ' +
      'WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   If (DM1.cdsAutDisk.Modified) Or (DM1.cdsAutDisk.ChangeCount > 0) Then
   Begin
      If DM1.cdsAutDisk.State <> dsBrowse Then
      Begin
         DM1.cdsAutDisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      End;
   End;

   wSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND FDAPORTE  =' + QuotedStr('S')
      + ' AND FTRANSF   =' + QuotedStr('I');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
      Screen.Cursor := crDefault;
      Exit;
   End;

   If Question(Caption, 'Actualizar a Todos la Situación de Inconsistencia '#13 + #13 + 'Desea Continuar? ') Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
         wSQL := 'UPDATE COB304 SET ' +
            'FDAPORTE = NULL, ' +
            'FREGCOB  = NULL, ' +
//               'FTRANSF  = ''X'', '+
         'FTRANSF  = NULL , ' +
            'USUARIO  =' + QuotedStr(DM1.wUsuario) + ', ' +
            'FREG     =' + QuotedStr(DateTimeToStr(Date)) + ', ' +
            'HREG     =' + QuotedStr(DateTimeToStr(Date)) + ' ' +
            'WHERE ASOID   =' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString) + ' ' +
            'AND RCOBID    =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
         DM1.cdsQry2.Next;
      End;
      ActuaCampos;
   End;
   Screen.Cursor := crDefault;
End;

Procedure TFIngresoLote.SpeedButton1Click(Sender: TObject);
Begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   DM1.cdsAutdisk.Filter := '(TRANSCUO > 0) ' + //AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' '+
      'AND (FTRANSFC=''F'')';
   DM1.cdsAutdisk.Filtered := True;
   If DM1.cdsAutdisk.RecordCount > 0 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', '(TRANSCUO > 0) AND (FTRANSFC =''S'')'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', '(TRANSCUO > 0) AND (FTRANSFC =''S'')'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', '(TRANSCUO > 0) AND (FTRANSFC =''S'')'), ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', '(TRANSCUO > 0) AND (FTRANSFC=''F'')'), ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se Encontr Informaci n a Mostrar ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Con Cuotas Transferidas a Tabla de Inconsistencias:  ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.dblcdUseAExit(Sender: TObject);
Var
   xWhere: String;
Begin
   xWhere := 'UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
      + ' And UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
      + ' And USEID =' + QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString);
   dbeUseA.Text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
End;

Procedure TFIngresoLote.dbeCodModExit(Sender: TObject);
Var
   xWhere, xCodAux: String;
Begin

   If (Length(dbeCodMod.Text) < 10) And (Length(trim(dbeCodMod.Text)) <> 0) Then
      dbeCodMod.Text := DM1.StrZero(dbeCodMod.Text, 10);

   If DM1.cdsQry2.FieldByName('ASOCODMOD').AsString <> dbeCodMod.Text Then
   Begin
      xWhere := 'ASOCODMOD =' + QuotedStr(dbeCodMod.Text);
      DM1.DisplayDescrip('prvSQL', 'APO201', 'ASOID, ASOCODMOD, ASOAPENOM, ASOCODAUX', xWhere, 'ASOCODAUX');
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         DM1.DisplayDescrip('prvSQL', 'APO201', 'MAX(ASOCODAUX) ASOCODAUX', xWhere, 'ASOCODAUX');
         xCodAux := IntToStr(StrToInt(DM1.cdsQry.FieldByName('ASOCODAUX').AsString) + 1);
         dbeCodAux.Text := DM1.StrZero(xCodAux, 2);
      End
      Else
      Begin
         xCodAux := DM1.cdsQry.FieldByName('ASOCODAUX').AsString;
         dbeCodAux.Text := DM1.StrZero(xCodAux, 2);
      End;
   End;
End;

Procedure TFIngresoLote.bbtnUSESNoValidasClick(Sender: TObject);
Begin
//Para Consistenciar las USES No Vlidas
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FUSENOEX; FTRANSF';
   DM1.cdsAutdisk.Filter := 'FTRANSF =' + QuotedStr('R') + ' And FUSENOEX =' + QuotedStr('S');
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I'; // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)', 'FUSENOEX =''S'' AND FTRANSF =''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)', 'FUSENOEX =''S'' AND FTRANSF =''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)', 'FUSENOEX =''S'' AND FTRANSF =''I'''), ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total ' + FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk, 'COUNT(ASOAPENOM)', 'FUSENOEX = ''S'' AND FTRANSF=''I'''), ffNumber, 15, 0) + ' Registros';
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF
      End;
   End
   Else
   Begin
      DM1.cdsAutdisk.IndexFieldNames := '';
      DM1.cdsAutdisk.Filter := '';
      DM1.cdsAutdisk.Filtered := True;
      If dbgAportes.Color <> $00C8E1DF Then
      Begin
         dbgAportes.Color := $00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      Exit;
   End;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por USES que NO Pertenecen : ' + IntToStr(DM1.cdsAutdisk.RecordCount) + ' Registros ');
End;

Procedure TFIngresoLote.dblcdCodigoModularInitDialog(Dialog: TwwLookupDlg);
Begin
   DM1.cdsAsociados.IndexFieldNames := 'ASOAPENOM';
End;

Procedure TFIngresoLote.dbeCodModChange(Sender: TObject);
Begin
// IF Length(trim(dbeCodMod.Text))>10 then
//    dbeCodMod.Text:= copy(dbeCodMod.Text,1,10);
End;

Procedure TFIngresoLote.dbeAporte2Exit(Sender: TObject);
Var
   Code: Integer;
   I: Double;
Begin

   If Length(Trim(dbeAporte2.Text)) <> 0 Then
   Begin
      Val(dbeAporte2.Text, I, Code);
      If Code = 0 Then
      Begin
         dbeTotal2.Text := Trim(FloatToStr(StrToFloat(dbeAporte2.Text) + StrToFloat(dbeCuota2.Text)));
      End;
   End
   Else
   Begin
      dbeAporte2.Text := '00.00';
      dbeTotal2.Text := Trim(FloatToStr(StrToFloat(dbeAporte2.Text) + StrToFloat(dbeCuota2.Text)));
   End;

   dbeAporte2.Text := FormatFloat('###,###.00', STRTOFLOAT(dbeAporte2.Text));
   dbeTotal2.Text := FormatFloat('###,###.00', STRTOFLOAT(dbeTotal2.Text));
End;

Procedure TFIngresoLote.dbeCuota2Exit(Sender: TObject);
Var
   Code: Integer;
   I: Double;
Begin

   If Length(Trim(dbeCuota2.Text)) <> 0 Then
   Begin
      Val(dbeAporte2.Text, I, Code);
      If Code = 0 Then
      Begin
         dbeTotal2.Text := Trim(FloatToStr(StrToFloat(dbeAporte2.Text) + StrToFloat(dbeCuota2.Text)));
      End;
   End
   Else
   Begin
      dbeCuota2.Text := '00.00';
      dbeTotal2.Text := Trim(FloatToStr(StrToFloat(dbeAporte2.Text) + StrToFloat(dbeCuota2.Text)));
   End;

   dbeCuota2.Text := FormatFloat('###,###.00', STRTOFLOAT(dbeCuota2.Text));
   dbeTotal2.Text := FormatFloat('###,###.00', STRTOFLOAT(dbeTotal2.Text));

End;

Procedure TFIngresoLote.dbePriApellidoExit(Sender: TObject);
Begin
   dbeApeyNom.Text := Trim(dbePriApellido.Text) + ' ' + Trim(dbeSegApellido.Text) + ' ' + Trim(dbeNombres.Text);
End;

Procedure TFIngresoLote.dbeSegApellidoExit(Sender: TObject);
Begin
   dbeApeyNom.Text := Trim(dbePriApellido.Text) + ' ' + Trim(dbeSegApellido.Text) + ' ' + Trim(dbeNombres.Text);
End;

Procedure TFIngresoLote.dbeNombresChange(Sender: TObject);
Begin
   dbeApeyNom.Text := Trim(dbePriApellido.Text) + ' ' + Trim(dbeSegApellido.Text) + ' ' + Trim(dbeNombres.Text);
End;

//Inicializa el panel de nuevo asociado

Procedure TFIngresoLote.IniPnlNAsoc;
Begin
   dbeAsoid.Text := '';
   dbeCodMod.Text := '';
   dbeCodAux.Text := '';
   dbeCodPago.Text := '';
   dbePriApellido.Text := '';
   dbeSegApellido.Text := '';
   dbeNombres.Text := '';
   dbeApeyNom.Text := '';
   dblcdUseAso.Text := '';
   dbeUSE.Text := '';
   dbeAporte2.Text := '0.00';
   dbeCuota2.Text := '0.00';
   dbeTotal2.Text := '0.00';
   pnlNAsoc.Visible := False;
End;

//Acceso para actualizar la data de ingreso en lote

Procedure TFIngresoLote.AccIngLote;
Begin
   pnlAccIngLote.Left := 281;
   pnlAccIngLote.Visible := True;
   edtUsuario.SetFocus;
End;

Procedure TFIngresoLote.edtAccIngLoteExit(Sender: TObject);
Begin
   btnConfirma.SetFocus;
End;

Procedure TFIngresoLote.fcShapeBtn6Click(Sender: TObject);
Begin
   PnlAsoNI.Visible := FALSE;
   actpnl1;
   Z2bbtnInserta.Enabled := TRUE;
   Z2bbtnInsertaCre.Enabled := TRUE;
   Z2bbtnInserta.SetFocus;
End;

Procedure TFIngresoLote.btnConfirmaClick(Sender: TObject);
Var
   Accodigo, Vuser: String;
Begin

   If Length(trim(edtAccIngLote.Text)) <> 0 Then
   Begin
// Inicio HPC_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Accodigo := FCtrlAcceso.Encripta(LowerCase(edtAccIngLote.Text));
// Fin HPC_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      XSQL := 'SELECT * FROM TGE006 WHERE USERID=''' + trim(edtUsuario.Text) + ''' and PASSWORD=''' + Accodigo + '''';
      DM1.cdsAcceso.Close;
      DM1.cdsAcceso.DataRequest(XSQL);
      DM1.cdsAcceso.Open;
      If DM1.cdsAcceso.RecordCount = 0 Then
      Begin
         ShowMessage('Clave errada intente nuevamente');
         edtAccIngLote.SetFocus;

      End
      Else
      Begin
         Vuser := DM1.cdsAcceso.FieldByName('USERID').AsString;
         XSQL := 'SELECT * FROM USERTABLE WHERE USERID=''' + Vuser + ''' AND USRREGL IS NOT NULL ';
         DM1.cdsAcceso.Close;
         DM1.cdsAcceso.DataRequest(XSQL);
         DM1.cdsAcceso.Open;
         If DM1.cdsAcceso.RecordCount = 0 Then
         Begin
            ShowMessage('No tiene accesos ha esta opcin');
            edtAccIngLote.Text := '';
            edtUsuario.Text := '';
            edtUsuario.SetFocus;
         End
         Else
         Begin
            If Not Question(Caption, 'Confirmar la creaci n en el Maestro, ASOCIADOS NO IDENTIFICADOS' + #13 + #13 +
               ' Est seguro ? ') Then exit;
         //Pasa del Temporal al APO201 Y MARCA LA AUTORIZACION
            PasadeTempaAsoc;
         //Imprime
            fcShapeBtn5Click(SELF);

       //ABILITA BOTONES PARA INSERTAR
            Z2bbtnInserta.Enabled := True;
            Z2bbtnInsertaCre.Enabled := True;
            actpnl1;
            pnlAsoNI.Visible := False;
            Z2bbtnInserta.SetFocus;

            DM1.cdsAutdisk.Filtered := False;
            DM1.cdsAutdisk.IndexFieldNames := '';
            DM1.cdsAutdisk.Filter := '';
            DM1.cdsAutdisk.Filtered := True;
            ActualizaFooter;
            ActuaCampos;
         End;
      End;
   End;

End;

Procedure TFIngresoLote.actpnl1;
Begin
   pnlFooter.Enabled := true;
   pnlUse.Enabled := true;
   pnlHeader.Enabled := true;
   pnlDatosAportes.Enabled := true;
End;

Procedure TFIngresoLote.deactpnl1;
Begin
   pnlFooter.Enabled := false;
   pnlUse.Enabled := false;
   pnlHeader.Enabled := false;
   pnlDatosAportes.Enabled := false;

End;

Procedure TFIngresoLote.fcShapeBtn5Click(Sender: TObject);
Begin
   ppDBInc.DataSource := dm1.dsTRela;
   ppRepInc.Template.FileName := (wRutaRpt + '\RepIngLote.rtm');
   ppRepInc.Template.LoadFromFile;
   pplbTitulo.Caption := 'Listado de creaci n de Docentes NO IDENTIFICADOS (NI), AUORIZADO POR :' + edtUsuario.Text;
   pplFirma.Caption := 'VB Del Resposable';
   pplVB.Caption := edtUsuario.Text;
   ppRepInc.Print;
   ppRepinc.Stop;
End;

Procedure TFIngresoLote.fcShapeBtn4Click(Sender: TObject);
Begin
   dblcdCodigoModular.Text := '';
   xSQL := 'SELECT ASOID, ASOCODMOD, ASOTIPID, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID FROM APO201'
      + ' WHERE ASOID =''XX''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   dm1.cdsQry2.Open;

   dbeCodMod.Text := '';
   dbeCodAux.Text := '0';
   dbeCodPago.Text := '';
   dbeApeyNom.Text := '';
   dbeAporte2.Text := dbeAporte.text;
   dbeCuota2.Text := '0.00';
   dbeTotal2.Text := '0.00';
   dbeUProc.Text := edtUProceso.Text;
   dbeUPago.Text := edtUPago.Text;
//   xModoSta        := 'A';
   bbtnAcepNAso.Enabled := True;
   deactpnl1;
   pnlNAsoc.Visible := True;
   dbeCodMod.SetFocus;
End;

//Genera Acociado en Archivo Temporal

Procedure TFIngresoLote.GenAsociadoenTemp;
Begin

   Screen.Cursor := crHourGlass;

   xSQL := 'INSERT INTO APO201_RGLO (' +
      'RCOBID,USUARIO, ' +
      'ASOCODMOD, ASOCODPAGO,ASOAPEPAT,ASOAPEMAT,ASONOMBRES,ASOAPENOM, USEID, UPROID, UPAGOID,USERCREA, FREG, HREG, ASOTIPID) ' +
      'VALUES (' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('USUARIO').AsString) + ', ' +
      QuotedStr(dbeCodMod.Text) + ', ' +
      QuotedStr(dbeCodPago.Text) + ', ' +
      QuotedStr(dbePriApellido.Text) + ', ' +
      QuotedStr(dbeSegApellido.Text) + ', ' +
      QuotedStr(dbeNombres.Text) + ', ' +
      QuotedStr(dbeApeyNom.Text) + ', ' +
      QuotedStr(dblcdUseAso.Text) + ', ' +
      QuotedStr(dblcUProceso.Text) + ', ' +
      QuotedStr(dblcdUPago.Text) + ', ' +
      QuotedStr(DM1.wUsuario) + ', TO_DATE(SYSDATE,' + QuotedStr('DD/MM/YYY') + '), SYSDATE, ''NI'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Screen.Cursor := crDefault;

End;

//Verifica si existen Nuevos asaciados

Function TFIngresoLote.VeriNueAsoc1: boolean;
Begin
   //Filtro aquellos que estas en COB304 COMO NI , SIN AUTORIZACION Y NO TIENEN ASOID
   xSql := 'SELECT ASOID,ASOCODMOD,ASOTIPID,ASOAPENOM,TRANSAPO,TRANSCUO,TRANSMTO,AUTORIZA,FAUTORIZA,TRANSANO,TRANSMES,USEID FROM COB304 WHERE RCOBID=''' + DM1.cdsAutdisk.FieldByName('RCOBID').AsString + ''' AND ASOTIPID=''NI'' AND AUTORIZA IS NULL AND ASOID IS NULL ';
   dm1.cdsTRela.Close;
   dm1.cdsTRela.DataRequest(xSql);
   dm1.cdsTRela.Open;
   If dm1.cdsTRela.RecordCount > 0 Then
   Begin
      Screen.Cursor := crDefault;
      Z2bbtnInserta.Enabled := False;
      Z2bbtnInsertaCre.Enabled := False;
      deactpnl1;
      pnlAsoNI.Visible := True;
      edtUsuario.Text := '';
      edtAccIngLote.Text := '';
      dbgAsoNI.DataSource := dm1.dsTRela;
      edtUsuario.SetFocus;
      Result := True;
   End
   Else
      Result := False;

End;

//Transfiere del Temporal al AP0201 (archivo de asociados)

Procedure TFIngresoLote.PasadeTempaAsoc;
Var
   xCodInt: Integer;
   xCodStr, xAuxStr: String;

Begin

   //Filtro los archivos del APO201_RGLO para transferirlos al APO201
   XSQL := ' SELECT * FROM APO201_RGLO WHERE RCOBID=''' + DM1.cdsCobxUse.FieldByName('RCOBID').AsString
      + ''' AND USUARIO=''' + DM1.cdsCobxUse.FieldByName('USUARIO').AsString + '''';
   DM1.cdsProf.Close;
   DM1.cdsProf.DataRequest(XSQL);
   DM1.cdsProf.Open;
   If DM1.cdsProf.RecordCount > 0 Then
   Begin
      DM1.cdsProf.First;

      While Not DM1.cdsProf.Eof Do
      Begin

             //Genera Nuevo Codigo Asoid
         DM1.cdsReporte.Close;
         DM1.cdsReporte.DataRequest('SELECT MAX(ASOID)+1 CODIGO FROM APO201');
         DM1.cdsReporte.Open;

         xCodInt := DM1.cdsReporte.FieldByName('CODIGO').AsInteger;
         xCodStr := DM1.StrZero(IntToStr(xCodInt), xLogAsoid);
         dbeAsoid.Text := xCodStr;
         DM1.cdsReporte.Close;

            //Generacin del ASOCODAUX - Codigo Auxiliar
         xAuxStr := DM1.BuscaCodMod('APO201', DM1.cdsProf.FieldByName('ASOCODMOD').AsString);
         dbeCodAux.Text := xAuxStr;

            //Inserta en el APO201
         xSQL := 'INSERT INTO APO201 (' +
            'CIAID, ASOID, ASOCODAUX, ' +
            'ASOCODMOD, ASOCODPAGO,ASOAPEPAT,ASOAPEMAT,ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOTIPID, ASOSITID,TCREACION ) ' +
            'VALUES (' +
            QuotedStr(wCiaDef) + ', ' +
            QuotedStr(xCodStr) + ', ' +
            QuotedStr(xAuxStr) + ', ' +
            QuotedStr(DM1.cdsProf.FieldByName('ASOCODMOD').AsString) + ', ' +
            QuotedStr(DM1.cdsProf.FieldByName('ASOCODPAGO').AsString) + ', ' +
            QuotedStr(DM1.cdsProf.FieldByName('ASOAPEPAT').AsString) + ', ' +
            QuotedStr(DM1.cdsProf.FieldByName('ASOAPEMAT').AsString) + ', ' +
            QuotedStr(DM1.cdsProf.FieldByName('ASONOMBRES').AsString) + ', ' +
            QuotedStr(DM1.cdsProf.FieldByName('ASOAPENOM').AsString) + ', ' +
            QuotedStr(DM1.cdsProf.FieldByName('USEID').AsString) + ', ' +
            QuotedStr(DM1.cdsProf.FieldByName('UPROID').AsString) + ', ' +
            QuotedStr(DM1.cdsProf.FieldByName('UPAGOID').AsString) + ', ' +
            QuotedStr(DM1.wUsuario) + ', TO_DATE(SYSDATE,' + QuotedStr('DD/MM/YYY') + '), SYSDATE, ''NI'', ''AC'',''03'')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

             //ACTUALIZA EN COB304 EL ASOID  Y LA AUTORIZACION
         XSQL := 'UPDATE COB304 SET ASOID=''' + xCodStr + ''',AUTORIZA=''' + edtUsuario.Text + ''',FAUTORIZA=SYSDATE WHERE ' +
            'RCOBID=''' + DM1.cdsCobxUse.FieldByName('RCOBID').AsString + ''' AND ' +
            'ASOCODMOD=''' + DM1.cdsProf.FieldByName('ASOCODMOD').AsString + ''' AND ' +
            'ASOAPENOM=''' + DM1.cdsProf.FieldByName('ASOAPENOM').AsString + ''' ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

            //PONE EL ASOID RESPECTIVO CDS PARA EL REPORTE
         If DM1.cdsTRela.Locate('ASOAPENOM;ASOCODMOD', VarArrayOf([TRIM(DM1.cdsProf.FieldByName('ASOAPENOM').AsString),
            DM1.cdsProf.FieldByName('ASOCODMOD').AsString]), []) Then
         Begin
            DM1.cdsTRela.Edit;
            DM1.cdsTRela.FieldByName('ASOID').AsString := xCodStr;
            DM1.CDSTRELA.Post;
         End;

         DM1.cdsProf.Next;
      End;

          //BORRA DEL TEMPORAL LOS REGISTRO ACTULIZADOS
      XSQL := 'DELETE FROM APO201_RGLO WHERE RCOBID=''' + DM1.cdsCobxUse.FieldByName('RCOBID').AsString
         + ''' AND USUARIO=''' + DM1.cdsCobxUse.FieldByName('USUARIO').AsString + '''';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   End

End;

//Busca del Temporal

Function TFIngresoLote.BuscaEnTemp(xAsocodmod, xAsoapenom,
   xRecobid: String): boolean;
Begin
   XSQL := 'SELECT * FROM  APO201_RGLO WHERE  RCOBID=''' + xRecobid + ''' AND ASOCODMOD=''' + xAsocodmod + ''' AND ASOAPENOM=''' + TRIM(xAsoapenom) + '''';
   DM1.cdsEjecuta.Close;
   DM1.cdsEjecuta.DataRequest(XSQL);
   DM1.cdsEjecuta.Open;

End;

//Borra del Temporal

Function TFIngresoLote.BorraEnTemp(xAsocodmod, xAsoapenom,
   xRecobid: String): boolean;
Begin
   XSQL := 'DELETE FROM APO201_RGLO WHERE RCOBID=''' + xRecobid + ''' AND ASOCODMOD=''' + xAsocodmod + ''' AND ASOAPENOM=''' + TRIM(xAsoapenom) + '''';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
End;

//DESCARGA DE IMPORTE

Procedure TFIngresoLote.descarga(xAsoid, xPeriodo, FecPago: String; xMto, xAPo: Currency);
Var
   xsql, xTcamb, XCREESTID, XCREESTADO, xForPagoId, xEstAnt, xEstAntdes, xForPagAb, xUproid, xUseid, xUPagoid, xAsocodPago, xCiudid, xDptoid: String;
   xAsositid, xxobs, xperact, xperactmes, xperactano: String;
   SCREAMORT, SCREINTERES, SCREFLAT, XCREMONEXT: Currency;
   ZSALDO, ZFLAT, ZAMORT, ZINTERES, XSALDO: Currency;
Begin

  //Calcula el periodo actual de cobranza,
  //El que se descarga siempre es el anterior por lo que le sumo un mes para sacar el actual
   xperactmes := copy(xperiodo, 5, 2);
   xperactano := copy(xperiodo, 1, 4);
   If xperactmes = '12' Then
   Begin
      xperactmes := '01';
      xperactano := intToStr(StrToInt(xperactano) + 1);
   End
   Else
      xperactmes := dm1.StrZero(IntToStr(StrToInt(xperactmes) + 1), 2);
   xperact := xperactano + xperactmes;

      //CAPTURA DEL CRE302 LAS CUOTAS QUE VOY A CANCELAR DESDE LA MAS ANTIGUA HASTA EL PERIODO DE LA COBRANZA
        {xsql:='SELECT ASOID,ASOCODMOD,ASOAPENOM,ASOCODAUX,CREAMORT,CREINTERES,CREFLAT,CRECAPITAL,CREMTOINT,CREMTOFLAT,CREMTO,CREDID,CRECUOTA,CREANO,CREMES,CREFVEN,TIPCREID,CREAMORT,CREINTERES,CREFLAT,CREANO,CREMES,FORPAGOID,FORPAGOABR,CREESTID,CREESTADO,PERCOB '+
               'FROM cre302 where  asoid='''+xAsoid+''' and  creestid in (''14'',''02'',''27'',''11'') and FORPAGOID=''01'' AND CREANO||CREMES<='''+xperiodo+''' '+
               'ORDER BY crefven ASC';}

      //TOMA CREANOINI,CREMESINI,CREFVENINI
        {xsql:='SELECT ASOID,ASOCODMOD,ASOAPENOM,ASOCODAUX,CREAMORT,CREINTERES,CREFLAT,CRECAPITAL,CREMTOINT,CREMTOFLAT,CREMTO,CREDID,CRECUOTA,CREANOINI CREANO,CREMESINI CREMES,CREFVENINI CREFVEN,TIPCREID,CREAMORT,CREINTERES,CREFLAT,'+
              'FORPAGOID,FORPAGOABR,CREESTID,CREESTADO,PERCOB '+
              'FROM cre302 where  asoid='''+xAsoid+''' and  creestid in (''14'',''02'',''27'',''11'') and FORPAGOID=''01'' AND CREANOINI||CREMESINI<='''+xperiodo+''' AND CREFVEN<>CREFVENINI '+
              'ORDER BY crefvenini ASC';}

      //OJO considerar el CRE301
      //NUEVO SELECT QUE TOMA LAS CUAOTAS NORMALES (CREFVEN) Y LAS REPROGRAMADAS (CREFVENINI)
      {//SE REEMPLAZA POR EL QUE TOMA TODAS LAS CUOTAS PENDIENTES DESDE EL CREDITO MAS ANTIGUO
       xsql:='SELECT ''R'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANOINI CREANO,A.CREMESINI CREMES,A.CREFVENINI CREFVEN,A.TIPCREID,A.CREAMORT,'+
             'A.CREINTERES,A.CREFLAT,A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
              'FROM CRE302 A,CRE301 B WHERE A.asoid='''+xAsoid+''' and  A.creestid in (''14'',''02'',''27'',''11'') and A.FORPAGOID=''01'' AND A.CREANOINI||A.CREMESINI<='''+xperiodo+''' AND A.CREFVEN<>A.CREFVENINI AND '+
              'A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
              'UNION ALL '+
              'SELECT ''A'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT, '+
              'A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
              'FROM CRE302 A,CRE301 B WHERE A.asoid='''+xAsoid+''' and  A.creestid in (''14'',''02'',''27'',''11'') and A.FORPAGOID=''01'' AND A.CREANO||A.CREMES<='''+xperiodo+''' AND (A.CREFVEN=A.CREFVENINI OR A.CREFVENINI IS NULL) AND '+
              'A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
              'ORDER BY REF,CREFVEN ASC,CREFOTORG ASC'; }

      //NUEVO SELECT  QUE TOMA TODAS LAS CUOTAS PENDIENTES DESDE EL CREDITO MAS ANTIGUO Y CUOTA MAS ANTIGUA
      {XSQL:='SELECT A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANOINI CREANO,A.CREMESINI CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,'+
              'A.CREINTERES,A.CREFLAT,A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
              'FROM CRE302 A,CRE301 B  WHERE  A.ASOID='''+xAsoid+''' AND  A.CREESTID in (''14'',''02'',''27'',''11'') and A.FORPAGOID=''01'' and '+
              'A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
              'ORDER BY B.CREFOTORG ASC,A.CREFVEN ASC';}

   //--SEGUN MEMO # 373-2008-DM-COB
   //SI TIENE MAS DE UN CREDITO,NO TOMA ENCUENTA REPROGRAMADOS AL FUTURO,TIENEN LIMITE
{   XSQL:='SELECT ''1'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,'+
         'A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
         'FROM CRE302 A,CRE301 B '+
         'WHERE A.asoid='''+xAsoid+''' and  A.creestid in (''14'',''02'',''27'',''11'') '+
         ' AND A.FORPAGOID=''01'' AND (A.CREANO||A.CREMES<='''+xperiodo+''' OR PERCOB<='''+xperiodo+''') '+
         ' AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
         'AND 1<(SELECT COUNT(1) FROM CRE301 WHERE ASOID='''+xAsoid+''' AND CREESTID=''02'') '+
        ' UNION ALL '+
  //SI ES UN SOLO CREDITO Y NO TIENE REPROGRAMADOS TIENE LIMTE
       'SELECT ''2'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,'+
       'A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
       'FROM CRE302 A,CRE301 B '+
       'WHERE A.asoid='''+xAsoid+''' and  A.creestid in (''14'',''02'',''27'',''11'') '+
       ' AND A.FORPAGOID=''01'' AND (A.CREANO||A.CREMES<='''+xperiodo+''' OR PERCOB<='''+xperiodo+''') AND (A.CREFVEN=A.CREFVENINI OR A.CREFVENINI IS NULL) '+
       ' AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
       ' AND 1=(SELECT COUNT(1) FROM CRE301 WHERE ASOID='''+xAsoid+''' AND CREESTID=''02'') '+
       ' UNION ALL '+
  //SI ES UN SOLO CREDITO Y TIENE REPROGRAMADOS, CANCELA HASTA AL FUTURO
       'SELECT ''3'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANOINI CREANO,A.CREMESINI CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,'+
       'A.CREINTERES,A.CREFLAT,A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
       'FROM CRE302 A,CRE301 B '+
       'WHERE  A.ASOID='''+xAsoid+''' AND  A.CREESTID in (''14'',''02'',''27'',''11'') and A.FORPAGOID=''01'' '+
       'AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
       'AND 1=(SELECT COUNT(1) FROM CRE301 WHERE ASOID='''+xAsoid+''' AND CREESTID=''02'') '+
       'AND 0<(SELECT COUNT(1) FROM CRE302 WHERE ASOID='''+xAsoid+''' and CREESTID in (''14'',''02'',''27'',''11'') AND CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) '+
    'ORDER BY REF,CREFOTORG ASC,CREFVEN ASC '; }

   //--SEGUN MEMO # 373-2008-DM-COB
   //SEGUN ACORDADO SOLO TOMA POR FECHA DE VENCIMIENTO YA NO POR PERCOB

   //SI TIENE MAS DE UN CREDITO,NO TOMA ENCUENTA REPROGRAMADOS AL FUTURO,TIENEN LIMITE
  { XSQL:='SELECT ''1'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,'+
         'A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
         'FROM CRE302 A,CRE301 B '+
         'WHERE A.asoid='''+xAsoid+''' and  A.creestid in (''14'',''02'',''27'',''11'') '+
         ' AND A.FORPAGOID=''01'' AND A.CREANO||A.CREMES<='''+xperiodo+''' '+
         ' AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
         'AND 1<(SELECT COUNT(1) FROM CRE301 WHERE ASOID='''+xAsoid+''' AND CREESTID=''02'') '+
        ' UNION ALL '+
  //SI ES UN SOLO CREDITO Y NO TIENE REPROGRAMADOS TIENE LIMTE
       'SELECT ''2'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,'+
       'A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
       'FROM CRE302 A,CRE301 B '+
       'WHERE A.asoid='''+xAsoid+''' and  A.creestid in (''14'',''02'',''27'',''11'') '+
       ' AND A.FORPAGOID=''01'' AND A.CREANO||A.CREMES<='''+xperiodo+''' AND (A.CREFVEN=A.CREFVENINI OR A.CREFVENINI IS NULL) '+
       ' AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
       ' AND 1=(SELECT COUNT(1) FROM CRE301 WHERE ASOID='''+xAsoid+''' AND CREESTID=''02'') '+
       ' UNION ALL '+
  //SI ES UN SOLO CREDITO Y TIENE REPROGRAMADOS, CANCELA HASTA AL FUTURO
       'SELECT ''3'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANOINI CREANO,A.CREMESINI CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,'+
       'A.CREINTERES,A.CREFLAT,A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
       'FROM CRE302 A,CRE301 B '+
       'WHERE  A.ASOID='''+xAsoid+''' AND  A.CREESTID in (''14'',''02'',''27'',''11'') and A.FORPAGOID=''01'' '+
       'AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
       'AND 1=(SELECT COUNT(1) FROM CRE301 WHERE ASOID='''+xAsoid+''' AND CREESTID=''02'') '+
       'AND 0<(SELECT COUNT(1) FROM CRE302 WHERE ASOID='''+xAsoid+''' and CREESTID in (''14'',''02'',''27'',''11'') AND CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) '+
    'ORDER BY REF,CREFOTORG ASC,CREFVEN ASC '; }

{  //SEGUN NUEVO ACUERDO SE DECARGA DE LA SIGUINTE MANERA
  //SI EL PRESTAMO TIENE REPROGRAMADOS ASI ESTAS CUOTAS ESTEN CANCELADOS, CANCELA A FUTURO
  XSQL:='SELECT ''1'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,'+
        'A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
        'FROM CRE302 A,CRE301 B '+
        'WHERE A.ASOID='''+xAsoid+''' AND A.CREESTID in (''14'',''02'',''27'',''11'') AND A.FORPAGOID=''01'' AND '+
        '0<(SELECT COUNT(1) FROM CRE302 WHERE ASOID='''+xAsoid+''' AND CREDID=A.CREDID AND CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) AND '+
        'A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '+
        'UNION ALL '+
  //SI EL PRESTAMO NO TIENE REPORGRAMADOS TIENE LIMITE Y MANDA A INCONSISTENCIA
        'SELECT ''2'' REF,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,'+
        'A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG '+
        'FROM CRE302 A,CRE301 B '+
        'WHERE A.ASOID='''+xAsoid+''' AND A.CREESTID in (''14'',''02'',''27'',''11'') AND A.FORPAGOID=''01'' AND  A.CREANO||A.CREMES<='''+xperiodo+''' AND '+
        '0=(SELECT COUNT(1) FROM CRE302 WHERE ASOID='''+xAsoid+''' AND CREDID=A.CREDID  AND CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) AND '+
        'A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') ';}

  //SEGUN NUEVO REQUERIMIENTO Y MEMO .....
  //SI EL PRESTAMO TIENE REPROGRAMADOS CANCELADOS O PENDIENTE:
  //TOMARA PRIMERO LOS VENCIDOS Y LUEGO LOS REPROGRAMADOS PENDIENTES COMENZANDO DESDE EL ULTIMO,
  // SI EXISTE EXCESO MANDARA A INCONSISTENCIA
   XSQL := 'SELECT ''2'' REF,(TO_CHAR(CREFVEN,''YYYYMMDD'')*-1) POS,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,' +
      'A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG ' +
      'FROM CRE302 A,CRE301 B ' +
      'WHERE A.ASOID=''' + xAsoid + ''' AND A.CREESTID in (''14'',''02'',''27'',''11'') AND A.FORPAGOID=''01'' AND ' +
      '0<(SELECT COUNT(1) FROM CRE302 WHERE ASOID=''' + xAsoid + ''' AND CREDID=A.CREDID AND CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) AND ' +
      'A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') AND A.CREFVEN<>A.CREFVENINI AND A.CREFVENINI IS NOT NULL ' +
      'UNION ALL ' +
      'SELECT ''1'' REF,(TO_CHAR(CREFVEN,''YYYYMMDD'')*1) POS,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,' +
      'A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG ' +
      'FROM CRE302 A,CRE301 B ' +
      'WHERE A.ASOID=''' + xAsoid + ''' AND A.CREESTID in (''14'',''02'',''27'',''11'') AND A.FORPAGOID=''01'' AND ' +
      '0<(SELECT COUNT(1) FROM CRE302 WHERE ASOID=''' + xAsoid + ''' AND CREDID=A.CREDID AND CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) AND ' +
      'A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') AND (A.CREFVEN=A.CREFVENINI OR A.CREFVENINI IS NULL) AND A.CREANO||A.CREMES<=''' + xperiodo + ''' ' +
  //SI EL PRESTAMO NO TIENE REPORGRAMADOS TIENE LIMITE Y MANDA A INCONSISTENCIA
   'UNION ALL ' +
      'SELECT ''1'' REF,(TO_CHAR(CREFVEN,''YYYYMMDD'')*1) POS,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,' +
      'A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG ' +
      'FROM CRE302 A,CRE301 B ' +
      'WHERE A.ASOID=''' + xAsoid + ''' AND A.CREESTID in (''14'',''02'',''27'',''11'') AND A.FORPAGOID=''01'' AND A.CREANO||A.CREMES<=''' + xperiodo + ''' AND ' +
      '0=(SELECT COUNT(1) FROM CRE302 WHERE ASOID=''' + xAsoid + ''' AND CREDID=A.CREDID  AND CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) AND ' +
      'A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') ' +
      'ORDER BY REF,POS ';

   DM1.cdsQry6.Close;
      //DM1.cdsQry6.IndexFieldNames :='CREFOTORG;CREFVEN';
      //DM1.cdsQry6.IndexFieldNames :='CREFVEN';
      //DM1.cdsQry6.IndexFieldNames :='REF;POS';
   DM1.cdsQry6.IndexFieldNames := 'REF;POS;CREFOTORG';
   DM1.cdsQry6.DataRequest(xsql);
   DM1.cdsQry6.Open;

  //VERIFICA SI SOLO EXISTEN REPROGRAMADOS, LOS CONSIDERA COMO PRESTAMO SIN REPROGRAMADOS
  //Y TOMA SOLO LOS VENCIDOS
        //Cambio en pago de reprogramado en cronograma sin cuotas vencidas - Ricardo Medina - 05/11/2008 - HPP_00044_COB
   XSQL := 'SELECT CASE WHEN CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL THEN ''R'' ELSE ''N'' END REF FROM CRE302 WHERE ASOID=''' + xAsoid + '''  AND CREESTID IN (''02'',''11'',''27'',''14'') AND FORPAGOID=''01'' ';
   DM1.cdsGradoA.Close;
   DM1.cdsGradoA.DataRequest(XSQL);
   DM1.cdsGradoA.Open;

   If Not DM1.cdsGradoA.Locate('REF', VarArrayOf(['N']), []) Then //Si no existe REF='N' SOLO ESIXTE REPROGRAMADOS
   Begin
      XSQL := 'SELECT ''1'' REF,(TO_CHAR(CREFVEN,''YYYYMMDD'')*1) POS,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOCODAUX,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.CRECAPITAL,A.CREMTOINT,' +
         'A.CREMTOFLAT,A.CREMTO,A.CREDID,A.CRECUOTA,A.CREANO,A.CREMES,A.CREFVEN,A.TIPCREID,A.CREAMORT,A.CREINTERES,A.CREFLAT,A.FORPAGOID,A.FORPAGOABR,A.CREESTID,A.CREESTADO,A.PERCOB,B.CREFOTORG ' +
         'FROM CRE302 A,CRE301 B ' +
         'WHERE A.ASOID=''' + xAsoid + ''' AND A.CREESTID in (''14'',''02'',''27'',''11'') AND A.FORPAGOID=''01'' AND A.CREANO||A.CREMES<=''' + xperiodo + ''' AND ' +
         'A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') ' +
         'ORDER BY REF,POS ';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.IndexFieldNames := 'REF;POS;CREFOTORG';
      DM1.cdsQry6.DataRequest(xsql);
      DM1.cdsQry6.Open;
   End;
   DM1.cdsGradoA.Close;

     //Datos actuales de Asociado para ponerlo en su pago
   XSQL := 'Select A.Asotipid,A.Uproid,A.Useid,A.Upagoid,A.Asocodpago,B.Ciudid Ciudad,B.Dptoid Dpto from Apo201 A,Apo102 B Where Asoid=''' + xAsoid + ''' AND A.Uproid=B.Uproid ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(Xsql);
   DM1.cdsQry.Open;
   xUproid := DM1.cdsQry.FieldByName('Uproid').AsString;
   xUseid := DM1.cdsQry.FieldByName('Useid').AsString;
   xUpagoid := DM1.cdsQry.FieldByName('Upagoid').AsString;
   xAsocodpago := DM1.cdsQry.FieldByName('Asocodpago').AsString;
   xCiudid := DM1.cdsQry.FieldByName('Ciudad').AsString;
   xDptoid := DM1.cdsQry.FieldByName('Dpto').AsString;
   xAsositid := DM1.cdsQry.FieldByName('Asotipid').AsString;
   DM1.cdsQry.Close;

   xTCamb := CalcTipoCambio(DM1.wTMonLoc, dbdtpFecOperacion.Date, wTipoCambio);
   If Length(Trim(xTCamb)) = 0 Then xTCamb := '0';
   xForPagoId := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID', 'FORPAGOABR =' + QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString), 'FORPAGOID');
   xForPagAb := DM1.cdsAutdisk.FieldByName('FORPAGOID').AsString;
   ZSALDO := xMto;

   If DM1.cdsQry6.RecordCount > 0 Then
   Begin
      While Not DM1.cdsQry6.Eof Do

      Begin

         If ZSALDO <= 0 Then Break; //Fin de Proceso

         xEstAnt := DM1.cdsQry6.FieldByName('CREESTID').AsString;
         xEstAntdes := DM1.cdsQry6.FieldByName('CREESTADO').AsString;

              //PRIMERO CALCULO QUE PAGUE POR DISTRIBUCION DE LA CUOTA A PARTIR DEL CRE310
         PaguePorDistribucion(DM1.cdsQry6.FieldByName('Asoid').AsString, DM1.cdsQry6.FieldByName('Credid').AsString, DM1.cdsQry6.FieldByName('Crecuota').AsString);

              //SEGUNDO DETERMINO QUE VOY HA PAGAR.
              //LA DIFERENCIA DE LO PACTADO EN EL CRONOGRAMA MENOS LO PAGADO EN EL CRE310 ES LO QUE VOY HA PAGAR
         SCREAMORT := DM1.cdsQry6.FieldByName('CREAMORT').AsCurrency - DCREAMORT;
         SCREINTERES := DM1.cdsQry6.FieldByName('CREINTERES').AsCurrency - DCREINTERES;
         SCREFLAT := DM1.cdsQry6.FieldByName('CREFLAT').AsCurrency - DCREFLAT;

              //SI ES NEGATIVO LO PONGO EN CERO PORQUE SE SUPONE QUE EN CRE310 EL IMPORTE PAGADO ESTA DUPLICADO ERRONEAMENTE Y YA ESTA CANCELADO ESA DISTRIBUCION
              //POR LO TANTO DCREAMORT o DCREINTERES o DCREFLAT segun el caso sera igual al pactado;
         If SCREAMORT < 0 Then
         Begin
            SCREAMORT := 0;
            DCREAMORT := DM1.cdsQry6.FieldByName('CREAMORT').AsCurrency;
         End;
         If SCREINTERES < 0 Then
         Begin
            SCREINTERES := 0;
            DCREINTERES := DM1.cdsQry6.FieldByName('CREINTERES').AsCurrency;
         End;
         If SCREFLAT < 0 Then
         Begin
            SCREFLAT := 0;
            DCREFLAT := DM1.cdsQry6.FieldByName('CREFLAT').AsCurrency;
         End;

              //TERCERO CALCULO DISTRIBUCION DE AMORTIZACION INTERES GASTOS
                //PAGO NORMAL
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
                  //FIN PAGO NORMAL

         If (StrToCurr(xTcamb) > 0) And ((ZAMORT + ZINTERES + ZFLAT) > 0) Then
            XCREMONEXT := ((ZAMORT + ZINTERES + ZFLAT) / StrToCurr(xTcamb))
         Else
            XCREMONEXT := 0.00;

              //VERIFICO SI NO TIENE NADA QUE CANCELAR (SI ES 0 SIGNIFICA QUE EL ESTADO DE LA CUOTA EN CRE302 ESTA MAL)
         If ZAMORT + ZINTERES + ZFLAT > 0 Then

         Begin
                  //INSERTO EL REGISTRO DE PAGO EN EL CRE310
            xxobs := 'Descuento de Planilla del mes ' + DM1.cdsAutDisk.FieldByName('TRANSMES').AsString + ' del ' + DM1.cdsAutDisk.FieldByName('TRANSANO').AsString;
            XSQL := 'INSERT INTO CRE310 (CIAID,ASOID,ASOCODMOD,ASOCODAUX,ASOSITID,USEID,ASOCODPAGO,TIPCREID,CREDID,CRECUOTA,CREFPAG,TMONID,TCAMBIO,USUARIO,UPROID,DPTOID,BANCOID,CCBCOID,' +
               'UPAGOID,ASOAPENOM,CIUDID,CREANO,CREMES,AREAID,CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,CREMONLOC,CREMONEXT,CREMTODEV,CREMTOCUO,TRANSINTID,FORPAGOID,FORPAGOABR,CREDOCPAG,' +
               'CREESTANT,CREESTANTDES,CREESTID,CREESTADO,RCOBID, DETRCOBID, USERCOBID,CREOBS,FORPAGID,FORPAGABR,CNTANOMM,TIPOCONT,FREG,HREG,NROOPE,FOPERAC,PERCONTA) VALUES (' +
               QuotedStr('02') + ',' +
               QuotedStr(DM1.cdsQry6.FieldByName('ASOID').AsString) + ',' +
               QuotedStr(DM1.cdsQry6.FieldByName('ASOCODMOD').AsString) + ',' +
               QuotedStr(DM1.cdsQry6.FieldByName('ASOCODAUX').AsString) + ',' +
               QuotedStr(xAsositid) + ',' +
               QuotedStr(xUseid) + ',' +
               QuotedStr(xAsocodpago) + ',' +
               QuotedStr(DM1.cdsQry6.FieldByName('TIPCREID').AsString) + ',' +
               QuotedStr(DM1.cdsQry6.FieldByName('CREDID').AsString) + ',' +
               QuotedStr(DM1.cdsQry6.FieldByName('CRECUOTA').AsString) + ',' +
               QuotedStr(FecPago) + ',' +
               QuotedStr('N') + ',' +
               xTcamb + ',' +
               QuotedStr(DM1.wUsuario) + ',' +
               QuotedStr(xUproid) + ',' +
               QuotedStr(xDptoid) + ',' +
               QuotedStr(dblcBanco.Text) + ', ' +
               QuotedStr(Trim(DM1.cdsCobxUse.FieldByName('CCBCO').AsString)) + ', ' +
               QuotedStr(xUPagoid) + ',' +
               QuotedStr(DM1.cdsQry6.FieldByName('ASOAPENOM').AsString) + ',' +
               QuotedStr(xCiudid) + ',' +
               QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString) + ', ' +
               QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString) + ', ' +
               QuotedStr('COB') + ',' +
               CurrToStr(ZAMORT) + ',' +
               CurrToStr(ZINTERES) + ',' +
               CurrToStr(ZFLAT) + ',' +
               CurrToStr(ZAMORT + ZINTERES + ZFLAT) + ',' +
               CurrToStr(ZAMORT + ZINTERES + ZFLAT) + ',' +
               CurrToStr(XCREMONEXT) + ',' +
               '0.00' + ',' +
               DM1.cdsQry6.FieldByName('CREMTO').AsString + ',' +
               QuotedStr('CUO') + ',' +
               QuotedStr(DM1.cdsQry6.FieldByName('FORPAGOID').AsString) + ',' +
               QuotedStr(xForPagAb) + ',' +
               QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString) + ', ' +
               QuotedStr(xEstAnt) + ',' +
               QuotedStr(xEstAntdes) + ',' +
               QuotedStr(XCREESTID) + ',' +
               QuotedStr(XCREESTADO) + ',' +
               QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ', ' +
               QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ', ' +
               QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString) + ', ' +
               QuotedStr(xxobs) + ',' +
               QuotedStr(xForPagoId) + ',' +
               QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString) + ', ' +
               'TO_CHAR(SYSDATE,''yyyymm''),''PLA'',' +
               QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
               'TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),' +
               QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString) + ', ' +
               QuotedStr(FecPago) + ',' +
               'TO_CHAR(SYSDATE,''yyyymm''))';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                 //ACTUALIZO EL CRE302
            DCREAMORT := DCREAMORT + ZAMORT;
            DCREINTERES := DCREINTERES + ZINTERES;
            DCREFLAT := DCREFLAT + ZFLAT;

            If DCREAMORT = DM1.cdsQry6.FieldByName('CREAMORT').AsCurrency Then // CANCELADO
            Begin
               XCREESTID := '21';
               XCREESTADO := 'CANCELADO';
               XSALDO := 0;
            End
            Else
            Begin
                        //Si es el Periodo Actual de Cobranza (es decir el que se a mandado y esta por venir)
                        //lo sigue dejando en proceso de cobranza.
                       { If DM1.cdsQry6.FieldByName('PERCOB').AsString=xperact Then
                          Begin
                            XCREESTID :='14';
                            XCREESTADO:='EN PROCESO DE COBRANZA';
                          End
                        Else
                         Begin}
                          { XCREESTID :='27';
                           XCREESTADO:='PARCIAL';}
                         {End; }

                         //Si el periodo actual de descargo < periodo donde se esta descargando
                         //se debe quedar en proceso de cobranza, porque esta por venir el pago del
                         //periodo ,Cambio Ricardo Medina Z. 15/01/2009

                         {No funciona
                         DM1.cdsRec.Close;
                         xSQL:='SELECT COUNT(1) FROM CRE302 WHERE ASOID='''+DM1.cdsQry6.FieldByName('ASOID').AsString+''' AND '+
                               'CREDID='''+DM1.cdsQry6.FieldByName('CREDID').AsString+''' AND CREESTID IN (''02'',''27'',''11'',''14'') ';}

               If xperact < DM1.cdsQry6.FieldByName('PERCOB').AsString Then
               Begin
                  XCREESTID := '14';
                  XCREESTADO := 'EN PROCESO DE COBRANZA';
               End
               Else
               Begin
                  XCREESTID := '27';
                  XCREESTADO := 'PARCIAL';
               End;

               XSALDO := DM1.cdsQry6.FieldByName('CREMTO').AsCurrency - (DCREAMORT + DCREINTERES + DCREFLAT);
            End;

            XSQL := 'UPDATE CRE302 SET ' +
               ' CREESTID=' + QuotedStr(XCREESTID) + ',' +
               ' TCAMBIO =' + '' + FloatToStr(StrtoFloat(xTCamb)) + '' + ', ' +
               ' CREFPAG=' + QuotedStr(FecPago) + ',' +
               ' CREESTADO=' + QuotedStr(XCREESTADO) + ',' +
               ' CREMTOCOB=' + CurrToStr(DCREAMORT + DCREINTERES + DCREFLAT) + ',' +
               ' CRESALDO =' + CurrToStr(XSALDO) + ',' +
               ' CREMTOFLAT=' + CurrToStr(DCREFLAT) + ',' +
               ' NROOPE =' + QuotedStr(dbeNumOperacion.Text) + ', ' +
               ' CREDOCPAG =' + QuotedStr(dbeNumOperacion.Text) + ', ' +
               ' FOPERAC =' + QuotedStr(DatetoStr(dbdtpFecOperacion.Date)) + ', ' +
               ' USUARIO =' + QuotedStr(DM1.wUsuario) + ', ' +
               ' FREG =To_char(SYSDATE,''dd/mm/YYYY''), ' +
               ' HREG = SYSDATE, ' +
               ' CREMTOINT=' + CurrToStr(DCREINTERES) + ',' +
               ' FLAGVAR = NULL, ' +
               ' CRECAPITAL=' + CurrToStr(DCREAMORT) + ' WHERE ' +
               ' ASOID=''' + TRIM(DM1.cdsQry6.FieldByname('ASOID').AsString) + '''' +
               ' AND CREDID=''' + TRIM(DM1.cdsQry6.FieldByname('CREDID').AsString) + '''' +
               ' AND CRECUOTA=''' + TRIM(DM1.cdsQry6.FieldByname('CRECUOTA').AsString) + '''';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                  //ACTUALIZO EN EL COB304  IMPORTE TRANSFERIO (IMPTRACUO)
            XSQL := 'Update Cob304 Set Imptracuo=NVL(Imptracuo,0)+' + CurrToStr(ZAMORT + ZINTERES + ZFLAT) +
               ' Where Asoid=''' + DM1.cdsAutDisk.FieldByName('Asoid').AsString +
               ''' and Rcobid=''' + DM1.cdsAutDisk.FieldByName('Rcobid').AsString +
               ''' and Detrcobid=''' + DM1.cdsAutDisk.FieldByName('Detrcobid').AsString + '''';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                  //ACTUALIZO EL LOS SALDOS DEL CRE301
            DM1.ActSaldoPrest(xAsoid);

         End; //EndIf si ZAMORT+ZINTERES+ZFLAT > 0

         DM1.cdsQry6.Next;
      End; //Fin del While, Fin de Archivo

          //ACTUALIZA EN COB319 (TABLA DE DETALLE DE ENVIO AL DESCUENTO) EL IMPORTE DESCARGADO  DEL ASOCIADO
      XSQL := 'Update Cob319 Set Moncuoapl=nvl(Moncuoapl,0)+' + currtostr(xMto) + ', Monapoapl=' + currtostr(xApo) +
         ' Where Uproid=''' + Trim(dblcUProceso.Text) + ''' and Cobano=''' + Copy(xperiodo, 1, 4) + ''' and Cobmes=''' + Copy(xperiodo, 5, 2) + ''' ' +
         ' and Asoid=''' + xAsoid + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          //SI DESPUES DE APLICAR A TODAS LA CUOTAS DEL ASOCIADO, AUN EXITE SALDO LA MANDO A INCONSISTENCIA
      If ZSALDO > 0 Then
      Begin
         xSQL := 'INSERT INTO COB340 (' +
            ' ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TRANSANO,TRANSMES,TMONID,IMPORTE,' +
            ' ASOAPENOM,FL_CUOTPAG,CREFPAG,NROOPE,FOPERAC,CREMTODEV,CREDOCPAG,FORPAGABR,' +
            ' FORPAGID,USUARIO,FREG,HREG,CIAID,ASOID,UPROID,UPAGOID,BANCOID,' +
            ' CCBCOID,RCOBID,DETRCOBID,USERCOBID,AREAID,TRANSINTID,FLGFPAG,TRANOBS,ARCHIVO )   ' +
            'SELECT ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString) + ', ' + QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)
            + ', ' + QuotedStr(DM1.wTMonLoc) + ', ' + CurrToStr(ZSALDO)
            + ', ' + QuotedStr(Trim(DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString)) + ', ''S'',' +
            QuotedStr(FormatDateTime(wFormatFecha, dbdtpFecOperacion.Date)) + ', ' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)
            + ', ' + QuotedStr(FormatDateTime(wFormatFecha, dbdtpFecOperacion.Date)) + ',0,  ' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString) + ', ' +
            QuotedStr(xForPagAb) + ', ' +
            QuotedStr(xForPagoId) + ', ' +
            QuotedStr(DM1.wUsuario) + ', ' +
            'TO_DATE(SYSDATE,' + QuotedStr('DD/MM/YYY') + '), SYSDATE, ' +
            QuotedStr(wCiaDef) + ', ASOID, ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString) + ',  ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString) + ', ' +
            QuotedStr(dblcBanco.Text) + ', ' +
            QuotedStr(Trim(DM1.cdsCobxUse.FieldByName('CCBCO').AsString)) + ', ' +
            QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ', ' +
            QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ', ' +
            QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString) + ', ' +
            QuotedStr(DM1.wModulo) + ', ''CUO'', ' +
            QuotedStr('PL') + ',''SALDO PARA APLICAR EN OTRA CUOTA'',' + QuotedStr(xArchivo) +
            ' FROM APO201 A ' +
            ' WHERE A.ASOID =' + QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

               //Actualiza el Cob304 como Registro Inconcluso
         xsql := 'Update Cob304 set FTRANSFC=''I'' Where Asoid=''' + DM1.cdsAutDisk.FieldByName('Asoid').AsString +
            ''' and Rcobid=''' + DM1.cdsAutDisk.FieldByName('Rcobid').AsString +
            ''' and Detrcobid=''' + DM1.cdsAutDisk.FieldByName('Detrcobid').AsString + '''';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsAutDisk.Edit;
         DM1.cdsAutDisk.FieldByName('FTRANSFC').AsString := 'I';

      End
      Else
      Begin
              // Actualiza el COB304 los Registros Transferidos
         xsql := 'Update Cob304 set FTRANSFC=''T'' Where Asoid=''' + DM1.cdsAutDisk.FieldByName('Asoid').AsString +
            ''' and Rcobid=''' + DM1.cdsAutDisk.FieldByName('Rcobid').AsString +
            ''' and Detrcobid=''' + DM1.cdsAutDisk.FieldByName('Detrcobid').AsString + '''';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsAutDisk.Edit;
         DM1.cdsAutDisk.FieldByName('FTRANSFC').AsString := 'T';
      End;
   End //Fin del If si exiten registros

   Else // De DM1.cdsQry6.RecordCount> 0  Si no exite ninguna cuota para cancelar el importe lo mando a inconsistencia

   Begin

           //ACTUALIZA EN COB319 (TABLA DE DETALLE DE ENVIO AL DESCUENTO) EL IMPORTE DESCARGADO  DEL ASOCIADO
      XSQL := 'Update Cob319 Set Moncuoapl=nvl(Moncuoapl,0)+' + currtostr(xMto) + ', Monapoapl=' + currtostr(xApo) +
         ' Where Uproid=''' + Trim(dblcUProceso.Text) + ''' and Cobano=''' + Copy(xperiodo, 1, 4) + ''' and Cobmes=''' + Copy(xperiodo, 5, 2) + ''' ' +
         ' and Asoid=''' + xAsoid + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      xSQL := 'INSERT INTO COB340 (' +
         ' ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TRANSANO,TRANSMES,TMONID,IMPORTE,' +
         ' ASOAPENOM,FL_CUOTPAG,CREFPAG,NROOPE,FOPERAC,CREMTODEV,CREDOCPAG,FORPAGABR,' +
         ' FORPAGID,USUARIO,FREG,HREG,CIAID,ASOID,UPROID,UPAGOID,BANCOID,' +
         ' CCBCOID,RCOBID,DETRCOBID,USERCOBID,AREAID,TRANSINTID,FLGFPAG,TRANOBS,ARCHIVO )   ' +
         'SELECT ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, ' +
         QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString) + ', ' + QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)
         + ', ' + QuotedStr(DM1.wTMonLoc) + ', ' + CurrToStr(ZSALDO)
         + ', ' + QuotedStr(Trim(DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString)) + ', ''S'',' +
         QuotedStr(FormatDateTime(wFormatFecha, dbdtpFecOperacion.Date)) + ', ' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)
         + ', ' + QuotedStr(FormatDateTime(wFormatFecha, dbdtpFecOperacion.Date)) + ',0,  ' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString) + ', ' +
         QuotedStr(xForPagAb) + ', ' +
         QuotedStr(xForPagoId) + ', ' +
         QuotedStr(DM1.wUsuario) + ', ' +
         'TO_DATE(SYSDATE,' + QuotedStr('DD/MM/YYY') + '), SYSDATE, ' +
         QuotedStr(wCiaDef) + ', ASOID, ' +
         QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString) + ',  ' +
         QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString) + ', ' +
         QuotedStr(dblcBanco.Text) + ', ' +
         QuotedStr(Trim(DM1.cdsCobxUse.FieldByName('CCBCO').AsString)) + ', ' +
         QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ', ' +
         QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ', ' +
         QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString) + ', ' +
         QuotedStr(DM1.wModulo) + ', ''CUO'', ' +
         QuotedStr('PL') + ',''SALDO PARA APLICAR EN OTRA CUOTA'',' + QuotedStr(xArchivo) +
         ' FROM APO201 A ' +
         ' WHERE A.ASOID =' + QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

               //Actualiza el Cob304 como Registro Inconcluso
      xsql := 'Update Cob304 set FTRANSFC=''I'' Where Asoid=''' + DM1.cdsAutDisk.FieldByName('Asoid').AsString +
         ''' and Rcobid=''' + DM1.cdsAutDisk.FieldByName('Rcobid').AsString +
         ''' and Detrcobid=''' + DM1.cdsAutDisk.FieldByName('Detrcobid').AsString + '''';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      DM1.cdsAutDisk.Edit;
      DM1.cdsAutDisk.FieldByName('FTRANSFC').AsString := 'I';
   End

End;

//Calcula el Saldo por distribucion

Procedure TFIngresoLote.PaguePorDistribucion(xAsoid, xCredid,
   xCrecuota: String);
Begin
   DCREAMORT := 0;
   DCREINTERES := 0;
   DCREFLAT := 0;
   XSQL := 'SELECT ASOID,CREDID,CRECUOTA,NVL(CREAMORT,0) CREAMORT ,NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0) CREMTOEXC,NVL(CREAPLEXC,0) CREAPLEXC,CREFPAG,NRONABO,CREFLAGDEV,CREESTID,NROOPE,FOPERAC,' +
      'TRANSINTID,NUMDEV FROM CRE310 A ' +
      ' WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + '''' +
      ' AND CRECUOTA=''' + xCrecuota + '''' +
      ' AND CREESTID<>''13'' and CREESTID<>''04'' and  CREESTID<>''99'' AND NOT EXISTS ' +
      '(SELECT * FROM ' +
      '  (SELECT * FROM (SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,NROOPE,FOPERAC,NUMDEV,MAX(CREMTODEV) DEV ' +
      '   FROM CRE310  ' +
      '   WHERE ASOID=''' + xAsoid + ''' AND credid =''' + xCredid + ''' ' +
      '   AND CRECUOTA=''' + xCrecuota + '''' +
      '   GROUP  BY ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,CREMTOCOB,NUMDEV) ' +
      '   WHERE DEV>0) B ' +
      ' WHERE A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.CRECUOTA=B.CRECUOTA AND A.NROOPE=B.NROOPE AND A.FOPERAC=B.FOPERAC AND A.NUMDEV=B.NUMDEV) ORDER BY ASOID,CREDID,CRECUOTA,CREFPAG ';
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
         DM1.cdsDetalle.Next;
      End;
   End;
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.IndexFieldNames := '';

End;

{               //SI ES PAGO ANTICIPADO
                   IF (StrToInt(FormatDateTime('YYYYMM',DM1.cdsQry.FieldByName('CREFVEN').AsDateTime)) >
                       StrToInt(xPeriodo )) and (DCREINTERES=0 ) then
                        begin // ES UN PAGO ANTICIPADO

                          If ZSALDO>=SCREFLAT  THEN    //Flat
                             Begin
                               ZFLAT    := SCREFLAT ;
                               ZSALDO   := ZSALDO-SCREFLAT;
                             End
                          Else
                             Begin
                               ZFLAT   := ZSALDO;
                               ZSALDO  := 0;
                             End;

                          ZINTERES := 0;               //Interes

                        If ZSALDO>=SCREAMORT THEN    //Gastos
                           Begin
                            ZAMORT := SCREAMORT        ;
                            ZSALDO := ZSALDO- SCREAMORT;
                           End
                        Else
                           Begin
                             ZAMORT  := ZSALDO ;
                             ZSALDO  := 0      ;
                           End;

                        If SCREAMORT=ZAMORT then //ESTADO DEL PAGO
                           Begin
                             XCREESTID := '23';
                             XCREESTADO:= 'CANCELADO A';
                           end
                        else
                           Begin
                             XCREESTID := '27';
                             XCREESTADO:= 'PARCIAL';
                           End;
                     End //END PAGO ANTICIPADO

                     eSTADO
                If DCREAMORT = DM1.cdsQry.FieldByName('CREAMORT').AsCurrency THEN  // CANCELADO
                   Begin
                     If (StrToDate(FecPago) <= DM1.cdsCuotas.FieldByName('CREFVEN').AsDateTime) AND (DCREINTERES=0) THEN  //CANCELACION ANTICIPADA
                        Begin
                          XCREESTID :='23';
                          XCREESTADO:='CANCELADO A';
                          XSALDO    := 0;
                        End
                    Else
                       Begin
                          XCREESTID :='21';
                          XCREESTADO:='CANCELADO';
                          XSALDO    :=0;
                       End;
                   End
                Else
                   Begin
                     XCREESTID :='27';
                     XCREESTADO:='PARCIAL';
                     XSALDO    := DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency - (DCREAMORT+DCREINTERES+DCREFLAT);
                  End;
}

//Procedimiento que actualiza cabecera

Procedure TFIngresoLote.ActCabec(wAno, wMes: String);

Var
   xCuoApl, xApoApl: Currency;
   xSql: String;
   xNumAso: integer;
Begin

   xCuoApl := 0;
   xApoApl := 0;
   xNumAso := 0;

   xSQL := 'Select * from cob319 A where A.Forpagoid=''01'' And A.Cobano=''' + wAno + ''' And A.Cobmes=''' + wMes + ''' And A.Uproid=''' + dblcUProceso.Text + ''' And nvl(moncuoapl,0)+nvl(moncuoapl,0)>0  ';
   Dm1.cdsResol.Close;
   Dm1.cdsResol.DataRequest(xSql);
   Dm1.cdsResol.Open;

   //Refresca el archivo de Autdisk
   xSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
   DM1.cdsAutdisk.Close;
   DM1.cdsAutdisk.Filtered := False;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter := '';
   DM1.cdsAutdisk.Filtered := True;
   DM1.cdsAutdisk.DataRequest(xSQL);
   DM1.cdsAutdisk.Open;
   DM1.cdsAutdisk.First;
   //..............................

   Dm1.cdsResol.First;
   While Not DM1.cdsResol.Eof Do
   Begin
      xApoApl := xApoApl + Dm1.cdsResol.FieldbYName('Monapoapl').AsCurrency;
      xCuoApl := xCuoApl + Dm1.cdsResol.FieldbYName('Moncuoapl').AsCurrency;
      xNumAso := xNumAso + 1;
      Dm1.cdsResol.Next;
   End;

   xSQL := 'Update Cob204 Set Moncuoapl=' + CurrTostr(xCuoApl) + ',Monapoapl=' + CurrToStr(xApoApl) + ',Numaso=' + IntToStr(xNumAso) +
      ' Where  Periodo=''' + wAno + wMes + ''' And FPagoid=''01'' And Uproid=''' + dblcUProceso.Text + ''' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'Update Cob322 Set Moncuoapl=' + CurrTostr(xCuoApl) + ',Monapoapl=' + CurrToStr(xApoApl) + ',Numaso=' + IntToStr(xNumAso) +
      ' Where  Periodo=''' + wAno + wMes + ''' And ForPagoid=''01'' And Uproid=''' + dblcUProceso.Text + ''' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Dm1.cdsResol.Close;
   Dm1.cdsResol.IndexFieldNames := '';

End;

//Genera codigo de registro para el Log del APO201

Function TFIngresoLote.CodReg: String;
Var
   xSQL, xResAbn: String;
   xCorAbn: Integer;
Begin
   DM1.cdsListaCred.Close;
   xSQL := 'SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO=' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ' AND CREAREA=''ASO'' AND TIPO=''1''';
   DM1.cdsListaCred.DataRequest(xSQL);
   DM1.cdsListaCred.Open;
   If DM1.cdsListaCred.RecordCount = 1 Then
   Begin
      xCorAbn := StrToInt(DM1.cdsListaCred.fieldbyname('ASOID').AsString) + 1;
      xResAbn := Format('%.10d', [xCorAbn]);
      DM1.cdsListaCred.Edit;
      DM1.cdsListaCred.fieldbyname('ASOID').AsString := xResAbn;
      DM1.cdsListaCred.ApplyUpdates(0);
      Result := xResAbn;
   End;
   DM1.cdsListaCred.Close;

End;

//Adiciona al Log del APO201

Procedure TFIngresoLote.Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
Var
   xSQL: String;
Begin
   If Length(Trim(xCodReg)) = 0 Then
   Begin
      MessageDlg(' No Se Grabo Log De USUARIO Informe al Equipo De Sistemas ', mtError, [mbOk], 0);
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xSQL := 'INSERT INTO APO201_LOG(ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, ' +
      'UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ' +
      'ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ' +
      'ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, ' +
      'FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, ' +
      'OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, ' +
      'ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, ' +
      'DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, USUARIO_AUD, REGISTRO_AUD, SECUENCIA, CODREG, MODULOID,VALCODMODDNI,ACTARCREN,REINGRESO) SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ' +
      'ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ' +
      'ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ' +
      'ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ' +
      'ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, ' +
      'OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ' +
      'ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, ' +
      'FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP,' + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(xSecuencia) + ',' + QuotedStr(xCodReg) + ',''ASO'',VALCODMODDNI,ACTARCREN,REINGRESO FROM APO201 WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   Screen.Cursor := crDefault;
End;

//Inserta Registro Anulado en APO_ANU_ING_LOT

Procedure TFIngresoLote.InsRegAnu;
Var
   XSQL: String;
Begin

   XSQL := 'INSERT INTO APO_ANU_ING_LOT ' +
      '(ASOID,ASOCODMOD,USEID,UPROID,UPAGOID,DPTOID,TRANSANO,TRANSMES,TRANSMTO,TRANSAPO,TRANSCUO,BANCOID,CCBCOID,TRANSNOPE,' +
      ' TRANSFOPE,FORPAGOID,USUARIO,FREG,HREG,APOSEC,FREGCOB,ASOAPENOM,ASOCODPAGO,RCOBID,DETRCOBID,USERCOBID,ARCHIVO,CARGO ,' +
      ' ASOTIPID,USUANU,FECANU,OBSANU) VALUES (' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('USEID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('UPROID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('UPAGOID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('DPTOID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('TRANSANO').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('TRANSMES').AsString) + ',' +
      CurrToStr(DM1.cdsAutdisk.FieldByName('TRANSMTO').AsCurrency) + ',' +
      CurrToStr(DM1.cdsAutdisk.FieldByName('TRANSAPO').AsCurrency) + ',' +
      CurrToStr(DM1.cdsAutdisk.FieldByName('TRANSCUO').AsCurrency) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('BANCOID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('CCBCOID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('TRANSNOPE').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('TRANSFOPE').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('FORPAGOID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('USUARIO').AsString) + ',' +
      'TO_DATE(' + QuotedStr(COPY(DM1.cdsAutdisk.FieldByName('FREG').AsString, 1, 10)) + ',''dd/mm/yyyy''),' +
      'TO_DATE(' + QuotedStr(DM1.cdsAutdisk.FieldByName('HREG').AsString) + ',''dd/mm/yyyy hh24:mi:ss''),' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('APOSEC').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('FREGCOB').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('ASOCODPAGO').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('RCOBID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('DETRCOBID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('USERCOBID').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('ARCHIVO').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('CARGO').AsString) + ',' +
      QuotedStr(DM1.cdsAutdisk.FieldByName('ASOTIPID').AsString) + ',' +
      QuotedStr(DM1.wUsuario) + ',SYSDATE,' +
      QuotedStr(UpperCase(trim(memObsAso.Text))) + ')';

   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

End;

Procedure TFIngresoLote.btnBorrarClick(Sender: TObject);
Var
   xRegDelSi, xRegDelNo: integer;
   xRegCob: String;
Begin

   If Length(Trim(memObsAso.Lines.Text)) = 0 Then
   Begin
      MessageDlg('Debe Ingresar Observación General', mtInformation, [mbOk], 0);
      memObsAso.SetFocus;
      exit;
   End;

   xRegDelNo := 0;
   xRegDelSi := 0;
   Ocultapaneles;

   If DM1.cdsAutdisk.RecordCount > 0 Then
   Begin

      If Not Question(Caption, 'Usted Eliminará los Registros Marcados. ' + #13 + #13 + 'Está Seguro de Eliminarlos?') Then
      Begin
         Exit;
      End;

      Screen.Cursor := crHourGlass;
      If xBorra = 'S' Then
      Begin
         DM1.cdsAutdisk.DisableControls;
         xRegCob := '';
         DM1.cdsAutdisk.First;
         DM1.cdsAutdisk.IndexFieldNames := '';
         DM1.cdsAutdisk.IndexFieldNames := 'FREGCOB';
         While Not DM1.cdsAutdisk.EOF Do
         Begin
            If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
            Begin

               If Not VerifTranferencia Then
               Begin
                  DM1.cdsAutdisk.Next;
                  xRegDelNo := xRegDelNo + 1;
                  Continue;
               End;

               xRegCob := 'S';
               //borra del temporal si existe (RMZ)
               If DM1.cdsAutdisk.FieldByName('ASOTIPID').AsString = 'NI' Then
               Begin
                  BorraEnTemp(DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString,
                     DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString,
                     DM1.cdsAutdisk.FieldByName('RCOBID').AsString);
               End;

               InsRegAnu; //Primero Inserta el Registro a Anular en APO_ANU_ING_LOT
               DM1.cdsAutdisk.Delete;
               xRegDelSi := xRegDelSi + 1;

               //Verifica si Existen Códigos Duplicados despus de Eliminar, si No existen Quita Flag al FNASODUP y FTRANSF
               xWhere := 'ASOID =' + QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                  + ' And RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                  + ' And DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                  + ' And FTRANSF =' + QuotedStr('I')
                  + ' And FNASODUP =' + QuotedStr('S');
               If Length(DM1.DisplayDescrip('prvSQL', 'COB304', 'ASOID', xWhere, 'ASOID')) > 0 Then
               Begin
                  xSQL := 'Update COB304 Set'
                     + ' FTRANSF = Null,'
                     + ' FNASODUP = Null'
                     + ' Where ASOID =' + QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                     + ' And RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                     + ' And DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                     + ' And FTRANSF =' + QuotedStr('I')
                     + ' And FNASODUP =' + QuotedStr('S');
                  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
               End;
            End
            Else
               DM1.cdsAutdisk.First;

         End;

         DM1.cdsAutdisk.IndexFieldNames := '';
         If xRegCob = 'S' Then
         Begin
            DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
         End;
         DM1.cdsAutdisk.EnableControls;
         dbgAportes.RefreshDisplay;
      End
      Else
      Begin
         DM1.cdsAutdisk.DisableControls;
         DM1.cdsAutdisk.Prior;
         xRegCob := '';
         DM1.cdsAutdisk.First;
         DM1.cdsAutdisk.IndexFieldNames := '';
         DM1.cdsAutdisk.IndexFieldNames := 'FREGCOB';
         While Not DM1.cdsAutdisk.EOF Do
         Begin

            If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
            Begin

               If Not VerifTranferencia Then
               Begin
                  DM1.cdsAutdisk.Next;
                  xRegDelNo := xRegDelNo + 1;
                  Continue;
               End;

               xRegCob := 'S';
               //borra del temporal si existe (RMZ)
               If DM1.cdsAutdisk.FieldByName('ASOTIPID').AsString = 'NI' Then
               Begin
                  BorraEnTemp(DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString,
                     DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString,
                     DM1.cdsAutdisk.FieldByName('RCOBID').AsString);
               End;

               InsRegAnu; //Primero Inserta el Registro a Anular en APO_ANU_ING_LOT
               DM1.cdsAutdisk.Delete;
               xRegDelSi := xRegDelSi + 1;

             //Verifica si Existen C digos Duplicados despus de Eliminar, si No existen Flagear FNASODUP y FTRANSF
               xWhere := 'ASOID =' + QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                  + ' And RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                  + ' And DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                  + ' And FTRANSF =' + QuotedStr('I')
                  + ' And FNASODUP =' + QuotedStr('S');
               If Length(DM1.DisplayDescrip('prvSQL', 'COB304', 'ASOID', xWhere, 'ASOID')) > 0 Then
               Begin
                  xSQL := 'Update COB304 Set'
                     + ' FTRANSF = Null,'
                     + ' FNASODUP = Null'
                     + ' Where ASOID =' + QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                     + ' And RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                     + ' And DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                     + ' And FTRANSF =' + QuotedStr('I')
                     + ' And FNASODUP =' + QuotedStr('S');
                  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
               End;
            End
            Else
               DM1.cdsAutdisk.Next;
         End;

         DM1.cdsAutdisk.IndexFieldNames := '';
         If xRegCob = 'S' Then
         Begin
            DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
         End;
         DM1.cdsAutdisk.EnableControls;
         dbgAportes.RefreshDisplay;
      End;

   End

   Else // Else del DM1.cdsAutdisk.RecordCount

   Begin
      Screen.Cursor := crDefault;
      ShowMessage('No existen Registros a Eliminar');
   End; // End del DM1.cdsAutdisk.RecordCount

   btnSalirEliminaRegClick(Self);
   ErrorMsg(Caption, 'Se Eliminó ' + IntToStr(xRegDelSi) + ' Registros ');
   PanelEnableTrue;
   ActualizaFooter;
   Screen.Cursor := crDefault;

End;

Procedure TFIngresoLote.Z2bbtnEliminaClick(Sender: TObject);
Begin
   pnlIngObs.Left := 118;
   pnlIngObs.Top := 409;
   pnlIngObs.Visible := True;
   PanelEnableFalse;
   memObsAso.SetFocus;
End;

Procedure TFIngresoLote.btnSalirEliminaRegClick(Sender: TObject);
Begin
   pnlIngObs.Visible := False;
   memObsAso.Lines.Text := '';
   PanelEnableTrue;
End;

Procedure TFIngresoLote.PanelEnableFalse;
Begin
   pnlFooter.Enabled := False;
   pnlActAporte.Enabled := False;
   pnlActAporte.Enabled := False;
   pnlActCredito.Enabled := False;
   pnlUse.Enabled := False;
   pnlDatosAportes.Enabled := False;
   pnlHeader.Enabled := False;
End;

Procedure TFIngresoLote.PanelEnableTrue;
Begin
   pnlFooter.Enabled := True;
   pnlActAporte.Enabled := True;
   pnlActAporte.Enabled := True;
   pnlActCredito.Enabled := True;
   pnlUse.Enabled := True;
   pnlDatosAportes.Enabled := True;
   pnlHeader.Enabled := True;
End;

//Verifica si el registro ya fue transferido y no esta Anulado

Function TFIngresoLote.VerifTranferencia: Boolean;
Var
   XSQL: String;

Begin

   Result := True;

//Verifica si el Registro que se quiere eliminar ya fue Transferido
   XSQL := 'SELECT * FROM APO301 WHERE  RCOBID=''' + DM1.cdsAutdisk.FieldByName('RCOBID').AsString + ''' AND ' +
      'DETRCOBID=''' + DM1.cdsAutdisk.FieldByName('DETRCOBID').AsString + ''' AND ' +
      'USERCOBID=''' + DM1.cdsAutdisk.FieldByName('USERCOBID').AsString + ''' AND ' +
      'TRANSANO =''' + DM1.cdsAutdisk.FieldByName('TRANSANO').AsString + ''' AND ' +
      'TRANSMES =''' + DM1.cdsAutdisk.FieldByName('TRANSMES').AsString + ''' AND ' +
      'ASOID=''' + DM1.cdsAutdisk.FieldByName('ASOID').AsString + ''' ';
   DM1.cdsEquiv.Close;
   DM1.cdsEquiv.DataRequest(XSQL);
   DM1.cdsEquiv.Open;
   If DM1.cdsEquiv.RecordCount > 0 Then
   Begin
      Result := False;
      Exit;
   End;

//Verifica si el Registro que se quiere eliminar tiene Cuota y ya fue transferido
   If DM1.cdsAutdisk.FieldByName('TRANSCUO').AsInteger > 0 Then
   Begin
      XSQL := 'SELECT * FROM CRE310 WHERE  RCOBID=''' + DM1.cdsAutdisk.FieldByName('RCOBID').AsString + ''' AND ' +
         'DETRCOBID=''' + DM1.cdsAutdisk.FieldByName('DETRCOBID').AsString + ''' AND ' +
         'USERCOBID=''' + DM1.cdsAutdisk.FieldByName('USERCOBID').AsString + ''' AND ' +
         'ASOID=''' + DM1.cdsAutdisk.FieldByName('ASOID').AsString + ''' AND ' +
         'CREESTID NOT IN (''13'',''04'',''99'') ';
      DM1.cdsEquiv.Close;
      DM1.cdsEquiv.DataRequest(XSQL);
      DM1.cdsEquiv.Open;
      If DM1.cdsEquiv.RecordCount > 0 Then
      Begin
         Result := False;
         Exit;
      End;
   End;
End;

Procedure TFIngresoLote.FormCreate(Sender: TObject);
Var
   xsql: String;
Begin
   ShortDateFormat := 'dd/mm/yyyy';
   LongDateFormat := 'dd/mm/yyyy';
   ShortTimeFormat := 'HH:mm:ss';
   LongTimeFormat := 'HH:mm:ss';
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesInc.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
End;

Procedure TFIngresoLote.ActCargo(xCobano, xCobmes, xUproid, xUpagoid, xUseid,
   xAsoid: String);
Var
   xsql: String;

Begin
   Xsql := 'Select * From Apo201 Where asoid=''' + xAsoid + ''' and (Cargo is null or Cargo=''999999'') ';
   DM1.CdsCambios.Close;
   DM1.CdsCambios.DataRequest(xsql);
   DM1.CdsCambios.Open;

   If DM1.CdsCambios.RecordCount > 0 Then
   Begin
      XSQL := 'Select CARGO From Cob319 Where Cobano=''' + xCobano + ''' and Cobmes=''' + xCobmes + ''' and Uproid=''' + xUproid + '''' +
         ' and Upagoid=''' + xUpagoid + ''' and Useid=''' + xUseid + ''' and Asoid=''' + xAsoid + ''' ';
      DM1.CdsCambios.Close;
      DM1.CdsCambios.DataRequest(xsql);
      DM1.CdsCambios.Open;
      If DM1.CdsCambios.RecordCount > 0 Then
      Begin
         XSQL := 'UPDATE APO201 SET CARGO=''' + DM1.CdsCambios.FieldbyName('Cargo').AsString + ''' Where ASOID=''' + xAsoid + ''' ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
   End;

End;

//Ve si existe inconsistencia;

Procedure TFIngresoLote.Inconsistencias;
Var
   xsql, xConInc: String;
Begin

   //VERIFICA CREACION DE NUEVOS ASOCIADOS
   // RMZ NO DEBE ACTUALIZA APO201 IF VeriNueAsoc1 THEN EXIT;
   xConInc := '0';
   xInc := 0;
   xRecInc := 0;
   pnlEstado.BringToFront;
   pnlEstado.Height := 48;
   pnlEstado.Left := 260;
   pnlEstado.Top := 244;
   pnlEstado.Visible := True;
   lbEstado.Caption := ' Verificando Datos ...';
   lbEstado.Refresh;
   pbEstado.Max := 28;
   pbEstado.Min := 0;
   pbEstado.Position := pbEstado.Position + 1;
   CDSADVERTENCIA.EmptyDataSet;

   // Primero desmarca las Incosnsitencias de Informacion de Asociado
   // para poder para volver a verificar
   xSql := 'Update COB304 set Ftransf=null,FCcodpago=null,FCuse=null,FCupro=null,FCupago=null,Fusenoex=null ' +
      'Where Rcobid  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) +
      ' AND Detrcobid =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) +
      ' AND Usercobid =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) +
      ' AND NVL(Transmto,0) > 0  AND NVL(Ftransfac,''N'')<>''S'' ' +
      ' AND (FCcodpago is not Null or FCuse is not Null or FCupro is not Null or FCupago is not Null or Fusenoex is not Null) ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   //ACTUALIZA AL APO201 EL CAMPO CARGO Y VERIFICA APORTES PROVISIONALES  (RMZ)
   xSql := 'SELECT A.ASOID,A.TRANSANO,A.TRANSMES,A.TRANSAPO,A.TRANSCUO,A.CARGO,A.ASOCODMOD,A.ASOCODPAGO,' +
      'B.ASOTIPID,B.ASOCODMOD ASOCODMODB,B.ASOCODPAGO ASOCODPAGOB,B.CARGO CARGOB, A.UPROID, A.UPAGOID, A.USEID ' +
      ' FROM COB304 A,APO201 B WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) +
      ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) +
      ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) +
      ' AND NVL(A.TRANSMTO,0) > 0  AND NVL(A.FTRANSFAC,''N'')<>''S''  ' +
      ' AND A.ASOID=B.ASOID';
   DM1.cdsCambios.Close;
   DM1.cdsCambios.IndexFieldNames := '';
   DM1.cdsCambios.DataRequest(xSql);
   DM1.cdsCambios.Open;
   If DM1.cdsCambios.RecordCount > 0 Then
   Begin
      DM1.cdsCambios.First;

      While Not DM1.cdsCambios.Eof Do
      Begin

               //ACTUALIZA DE VO A NI SI VIENE APORTE
                {RMZ NO DEBE ACTUALIZA APO201 if (DM1.cdsCambios.FieldByName('TRANSAPO').AsCurrency > 0) AND
                  (DM1.cdsCambios.FieldByName('ASOTIPID').AsString='VO') Then
                  Begin
                     lbEstado.Caption  := '';
                     lbEstado.Caption  := ' Actualizando tipo de asociado VO a NI';
                     lbEstado.Refresh;
                     xSql := 'UPDATE APO201 SET ASOTIPID=''NI'' '+
                             ' WHERE ASOID='+QuotedStr(DM1.cdsCambios.FieldByName('ASOID').asstring);
                     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                  End;}

               //ACTUALIZA EL CAMPO CARGO EN EL APO201 A PARTIR DEL ARCHIVO DE DESCARGO (COB304)
               {RMZ NO DEBE ACTUALIZA APO201 if (Length(TRIM(DM1.cdsCambios.FieldByName('CARGO').asstring)) = 6) AND
                  (DM1.cdsCambios.FieldByName('CARGO').asstring<>DM1.cdsCambios.FieldByName('CARGOB').asstring)  then
                   begin
                       lbEstado.Caption  := '';
                       lbEstado.Caption  := ' Actualizando Cargo en el Maestro de Asociado';
                       lbEstado.Refresh;
                       xSql := 'UPDATE APO201 SET CARGO='+QuotedStr(DM1.cdsCambios.FieldByName('CARGO').asstring) +
                               ' WHERE ASOID='+QuotedStr(DM1.cdsCambios.FieldByName('ASOID').asstring);
                       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                   end;
               //Endif}

               //ACTUALIZA EL CAMPO CARGO EN EL APO201 A PARTIR DEL ARCHIVO DE ENVIO(COB319)
                {RMZ NO DEBE ACTUALIZA APO201  If (DM1.cdscambios.FieldByName('CARGOB').AsString ='999999') OR
                    (Length(TRIM(DM1.cdsCambios.FieldByName('CARGOB').AsString))=0 )THEN

                     Begin
                       xUproid  := DM1.cdsCambios.FieldByName('Uproid').AsString;
                       xUpagoid := DM1.cdsCambios.FieldByName('Upagoid').AsString;
                       xUseid   := DM1.cdsCambios.FieldByName('Useid').AsString;
                       xAsoid   := DM1.cdsCambios.FieldByName('Asoid').AsString;
                       vCobano  := DM1.cdsCambios.FieldByName('Transano').AsString;
                       vCobmes  := DM1.cdsCambios.FieldByName('Transmes').AsString;

                       XSQL:='Select CARGO From Cob319 where Cobano='''+vCobano+''' and Cobmes='''+vCobmes+''' and Uproid='''+xUproid+''''+
                             ' and Upagoid='''+xUpagoid+''' and Useid='''+xUseid+''' and Asoid='''+xAsoid+''' ';
                       DM1.cdsRec.Close;
                       DM1.cdsRec.DataRequest(xsql);
                       DM1.cdsRec.Open;
                       If DM1.cdsRec.RecordCount >0 Then
                           Begin
                              XSQL:='UPDATE APO201 SET CARGO='''+DM1.cdsRec.FieldbyName('Cargo').AsString+''' Where ASOID='''+xAsoid+''' ';
                              DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                            End;
                     End;}

                //ACTUALIZA EL CODIGO MODULAR Y CODIGO DE PAGO EN EL APO201
                  {RMZ NO DEBE ACTUALIZA APO201 If (DM1.cdsCambios.FieldByName('ASOCODMOD').asstring<>DM1.cdsCambios.FieldByName('ASOCODMODB').asstring) or
                    (DM1.cdsCambios.FieldByName('ASOCODPAGO').asstring<>DM1.cdsCambios.FieldByName('ASOCODPAGOB').asstring)  then
                     Begin
                      xCodReg:=CodReg;
                      Registro_Aud(xAsoId,'0',xCodReg);

                       If (DM1.cdsCambios.FieldByName('ASOCODMOD').asstring<>DM1.cdsCambios.FieldByName('ASOCODMODB').asstring) Then
                          Begin
                            XAsocodAux:=DM1.AsignaNroAux('APO201',DM1.cdsCambios.FieldByName('ASOCODMOD').asstring);
                            xSql := 'UPDATE APO201 SET ASOCODMOD='+QuotedStr(DM1.cdsCambios.FieldByName('ASOCODMOD').asstring) +','+
                                    'ASOCODAUX='+QuotedStr(XAsocodAux)+
                                    ' WHERE ASOID='+QuotedStr(DM1.cdsCambios.FieldByName('ASOID').asstring);
                            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
                          End;

                        If (DM1.cdsCambios.FieldByName('ASOCODPAGO').asstring<>DM1.cdsCambios.FieldByName('ASOCODPAGOB').asstring) Then
                           Begin
                             xSql := 'UPDATE APO201 SET ASOCODPAGO='+QuotedStr(DM1.cdsCambios.FieldByName('ASOCODPAGO').asstring)+
                                     ' WHERE ASOID='+QuotedStr(DM1.cdsCambios.FieldByName('ASOID').asstring);
                             DM1.DCOM1.AppServer.EjecutaSQL(xSql);
                           End;

                       Registro_Aud(xAsoId,'1',xCodReg);
                     End;}

         If XAPORTE = 'S' Then
         Begin
                  //VERIFICA APORTE PROVISIONALES EN EL APO301
            If DM1.cdsCambios.FieldByName('TRANSAPO').AsInteger > 0 Then
            Begin
               lbEstado.Caption := '';
               lbEstado.Caption := ' Verificando Aporte ';
               lbEstado.Refresh;
               xSql := 'SELECT ASOID CANT FROM APO301 B WHERE' +
                  ' ASOID=' + QuotedStr(DM1.cdsCambios.FieldByName('ASOID').AsString) +
                  ' AND TRANSANO=' + QuotedStr(DM1.cdsCambios.FieldByName('TRANSANO').AsString) +
                  ' AND TRANSMES=' + QuotedStr(DM1.cdsCambios.FieldByName('TRANSMES').AsString) +
                  ' AND FORPAGOID=''25'' ';
               DM1.cdsPadre.Close;
               DM1.cdsPadre.DataRequest(xSql);
               DM1.cdsPadre.Open;

               If DM1.cdsPadre.RecordCount > 0 Then
               Begin
                  xSql := 'UPDATE COB304 SET  FTRANSF=''I'',FAPORPROV=''S'' WHERE ' +
                     ' RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) +
                     ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) +
                     ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) +
                     ' AND ASOID =' + QuotedStr(DM1.cdsCambios.FieldByName('ASOID').AsString) +
                     ' AND NVL(TRANSAPO,0) > 0 ';
                  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
               End;
            End;
         End;

         DM1.cdsCambios.Next;
      End;
   End;

   lbEstado.Caption := '';
   lbEstado.Caption := ' Marcando Inconsistencias ';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   //FNASOID : El Asociado no Tiene ID
   xSQL := 'UPDATE COB304 SET ' +
      'FTRANSF =''I'', ' +
      'FNASOID =''S'' ' +
      'WHERE RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND NVL(ASOID,''X'')=''X'' ' +
      'AND NVL(FTRANSFAC,''N'')=''N'' ' +
      'AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando Código de Derrama';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   //FNASODUP : C digo Asociado Duplicado
   xSQL := 'UPDATE COB304 SET'
      + ' FTRANSF  = NULL,'
      + ' FNASODUP = NULL'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Actualizando Estado de Códigos de Asociados Duplicados';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   xSQL := 'UPDATE COB304 SET'
      + ' FTRANSF  =''I'','
      + ' FNASODUP =''S'' '
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND ASOID     =('
      + ' SELECT B.ASOID'
      + ' FROM COB304 B'
      + ' WHERE B.RCOBID   =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND B.DETRCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND B.USERCOBID  =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND COB304.ASOID =B.ASOID'
      + ' GROUP BY B.ASOID'
      + ' HAVING COUNT(*) > 1)';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando Códigos de Asociados Duplicados';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   //FNCODMOD : No Tiene C digo Modular
   xSQL := 'UPDATE COB304 SET'
      + ' FTRANSF  =''I'', '
      + ' FNCODMOD =''S'' '
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND NVL(ASOCODMOD, ''X'')=''X'' '
      + ' AND NVL(FTRANSFAC, ''N'')=''N'' '
      + ' AND NVL(FTRANSF, ''A'')<>''I''';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando Código Modular';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   //FCCODMOD : El Codigo Modular ha Cambiado  = 3
   xSQL := 'UPDATE COB304 SET'
      + ' FTRANSF =''I'', '
      + ' FCCODMOD =''S'' '
      + ' WHERE RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND NVL(FTRANSFAC,''N'')=''N'' ' +
      'AND NVL(ASOCODMOD,''X'')<>''X'' AND (NVL(ASOCODMODA,''X'')<>''X'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando Cambio Código Modular';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   DM1.cdsRec.Close;
   DM1.cdsRec.Filter := '';
   DM1.cdsRec.Filtered := False;
   DM1.cdsRec.IndexFieldNames := '';
   //FCCODPAGO : El Codigo de Pago ha Cambiado  = 4
   XSQL := 'Select nvl(count(1),0) adv From Cob304 C'
      + ' WHERE NVL(C.ASOCODPAGO,''RR'')<>(SELECT B.ASOCODPAGO FROM COB304 A, APO201 B ' +
      'WHERE A.ASOID = C.ASOID ' +
      'AND A.ASOID = B.ASOID(+) ' +
      'AND RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ')'
      + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          // +' AND NVL(FTRANSFAC,''N'')=''N'' ' RCMZ
   + ' AND NVL(FTRANSF,''A'')<>''I'' '
      + ' AND NVL(ASOCODPAGO,''X'')<>''X''';
   DM1.cdsRec.Close;
   DM1.cdsRec.DataRequest(xSQL);
   DM1.cdsRec.Open;
   If Dm1.cdsRec.FieldByName('adv').AsInteger > 0 Then
   Begin
      CDSADVERTENCIA.Insert;
      CDSADVERTENCIA.FieldByName('ADVERTENCIA').AsString := 'Código de Pago cambio';
   End;

   xSQL := 'UPDATE COB304 C SET FTRANSF =''R'', FCCODPAGO =''S'' '
      + ' WHERE NVL(C.ASOCODPAGO,''RR'')<>(SELECT B.ASOCODPAGO FROM COB304 A, APO201 B ' +
      'WHERE A.ASOID = C.ASOID ' +
      'AND A.ASOID = B.ASOID(+) ' +
      'AND RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ')'
      + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
         // +' AND NVL(FTRANSFAC,''N'')=''N'' '       RCMZ
   + ' AND NVL(FTRANSF,''A'')<>''I'' '
      + ' AND NVL(ASOCODPAGO,''X'')<>''X''';
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      xConInc := '1';
      ErrorMsg(Caption, 'Se ha Producido un Error al Realizar la Verificación del Codigo de Pago');
   End;
   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := 'Verificando Cambio Codigo de Pago';
   lbEstado.Refresh;

   //FCUSE : La USE ha cambiado = 5
   XSQL := 'Select nvl(count(1),0) adv  From Cob304 C'
      + ' WHERE C.USEID <>(SELECT DISTINCT B.USEID FROM COB304 A, APO201 B'
      + ' WHERE A.ASOID = C.ASOID'
      + ' AND A.ASOID =B.ASOID(+)'
      + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ')'
      + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      //    +' AND NVL(FTRANSFAC,''N'')=''N'' '  RCMZ
   + 'AND NVL(FTRANSF,''A'')<>''I''';
   DM1.cdsRec.Close;
   DM1.cdsRec.DataRequest(xSQL);
   DM1.cdsRec.Open;
   If Dm1.cdsRec.FieldByName('adv').AsInteger > 0 Then
   Begin
      CDSADVERTENCIA.Insert;
      CDSADVERTENCIA.FieldByName('ADVERTENCIA').AsString := 'Código de Use cambio';
   End;

   xSQL := 'UPDATE COB304 C SET FTRANSF =''R'', FCUSE=''S'' '
      + ' WHERE C.USEID <>(SELECT DISTINCT B.USEID FROM COB304 A, APO201 B'
      + ' WHERE A.ASOID = C.ASOID'
      + ' AND A.ASOID =B.ASOID(+)'
      + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ')'
      + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
  //        +' AND NVL(FTRANSFAC,''N'')=''N'' '  RCMZ
   + 'AND NVL(FTRANSF,''A'')<>''I'' ';

   Try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      xConInc := '1';
      ErrorMsg(Caption, 'Se ha Producido un Error al realizar la Verificación del Código de Pago');
   End;

   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando la USE';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   //FCUPRO : La Unidad de proceso ha cambiado = 6
   XSQL := 'Select nvl(count(1),0) adv  From Cob304 C'
      + ' WHERE C.UPROID<>(SELECT DISTINCT B.UPROID FROM COB304 A, APO201 B ' +
      'WHERE A.ASOID = C.ASOID ' +
      'AND A.ASOID = B.ASOID(+) ' +
      'AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ') ' +
      'AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
    //      +' AND NVL(FTRANSFAC,''N'') = ''N'' '   RCMZ
   + 'AND NVL(FTRANSF,''A'')<>''I''';
   DM1.cdsRec.Close;
   DM1.cdsRec.DataRequest(xSQL);
   DM1.cdsRec.Open;
   If Dm1.cdsRec.FieldByName('adv').AsInteger > 0 Then
   Begin
      CDSADVERTENCIA.Insert;
      CDSADVERTENCIA.FieldByName('ADVERTENCIA').AsString := 'Unid. Proceso cambio';
   End;

   xSQL := 'UPDATE COB304 C SET FTRANSF=''R'', FCUPRO =''S'' '
      + ' WHERE C.UPROID<>(SELECT DISTINCT B.UPROID FROM COB304 A, APO201 B ' +
      'WHERE A.ASOID = C.ASOID ' +
      'AND A.ASOID = B.ASOID(+) ' +
      'AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ') ' +
      'AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
   //       +' AND NVL(FTRANSFAC,''N'') = ''N'' ' RCMZ
   + ' AND NVL(FTRANSF,''A'')<>''I''';
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      xConInc := '1';
      ErrorMsg(Caption, 'Se ha Producido un Error al Realizar la Verificación de la Unidad de Proceso');
   End;

   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando la Unidad de Proceso';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   //FCUPAGO : La Unidad de Pago ha cambiado = 7
   XSQL := 'Select nvl(count(1),0) adv  From Cob304 C'
      + ' WHERE C.UPAGOID<>(SELECT DISTINCT B.UPAGOID FROM COB304 A, APO201 B ' +
      'WHERE A.ASOID = C.ASOID ' +
      'AND A.ASOID = B.ASOID(+) ' +
      'AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ')'
      + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
    //      +' AND NVL(FTRANSFAC,''N'')=''N'' '     RCMZ
   + ' AND NVL(FTRANSF,''A'')<>''I''';
   DM1.cdsRec.Close;
   DM1.cdsRec.DataRequest(xSQL);
   DM1.cdsRec.Open;
   If Dm1.cdsRec.FieldByName('adv').AsInteger > 0 Then
   Begin
      CDSADVERTENCIA.Insert;
      CDSADVERTENCIA.FieldByName('ADVERTENCIA').AsString := 'Unid. de Pago cambio';
   End;

   xSQL := 'UPDATE COB304 C SET FTRANSF=''R'', FCUPAGO=''S'' '
      + ' WHERE C.UPAGOID<>(SELECT DISTINCT B.UPAGOID FROM COB304 A, APO201 B ' +
      'WHERE A.ASOID = C.ASOID ' +
      'AND A.ASOID = B.ASOID(+) ' +
      'AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
      'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
      'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ')'
      + ' AND RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
     //     +' AND NVL(FTRANSFAC,''N'')=''N'' '   RCMZ
   + ' AND NVL(FTRANSF,''A'')<>''I''';
   Try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      xConInc := '1';
      ErrorMsg(Caption, 'Se ha Producido un Error al Realizar la Verificación de la Unidad de Pago');
   End;

   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando la Unidad de Pago';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   //FNMONTO :  No hay Montos  = 6
   xSQL := 'UPDATE COB304 SET'
      + ' FTRANSF =''I'', '
      + ' FNMONTO =''S'' '
      + ' WHERE RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + ' AND (NVL(TRANSCUO,0)=0)'
      + ' AND (NVL(TRANSAPO,0)=0)'
      + ' AND (NVL(TRANSMTO,0)=0)'
      + ' AND NVL(FTRANSFAC,''N'')=''N'' ' +
      'AND NVL(FTRANSF,''A'')<>''I''';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando Montos';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   If XAPORTE = 'S' Then
   Begin
      //FMAPORTE : Aporte Mayor al Establecido
      xSQL := 'UPDATE COB304 SET ' +
         'FTRANSF =''I'', ' +
         'FMAPORTE =''S'' ' +
         'WHERE RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
         + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
         + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
         + ' AND EXISTS (SELECT APOANO, APOMES, APOVALOR FROM APO117'
         + ' WHERE (TRANSANO=APOANO(+)) AND ' +
         '(TRANSMES=APOMES(+)) AND ' +
         '(TRANSAPO>APOVALOR)) ' +
         'AND NVL(FTRANSFAC,''N'')=''N'' ' +
         'AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')' +
         'AND  NVL(FMAPORTE,''A'')<>''C'' '; // ULTIMO RCMZ

      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      pbEstado.Position := pbEstado.Position + 1;
      lbEstado.Caption := '';
      lbEstado.Refresh;
      lbEstado.Caption := 'Verificando Cantidades Mayores de Aportes';
      lbEstado.Refresh;
      pbEstado.Position := pbEstado.Position + 1;

      //FEAPORTE  : Aporte Menor al Establecido
      xSQL := 'UPDATE COB304 SET'
         + ' FTRANSF =''I'', '
         + ' FEAPORTE =''S'' '
         + ' WHERE RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
         + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
         + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
         + ' AND EXISTS (SELECT APOANO, APOMES, APOVALOR FROM APO117'
         + ' WHERE (TRANSANO=APOANO(+))'
         + ' AND (TRANSMES=APOMES(+))'
         + ' AND (TRANSAPO<APOVALOR))'
         + ' AND NVL(FTRANSFAC,''N'')=''N'' ' +
             //'AND NVL(FTRANSF,''A'')<>''I''';
      'AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')' +
         'AND  NVL(FEAPORTE,''A'')<>''C'' '; // ULTIMO RCMZ
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      pbEstado.Position := pbEstado.Position + 1;
      lbEstado.Caption := '';
      lbEstado.Refresh;
      lbEstado.Caption := 'Verificando Cantidades Menores de Aportes';
      lbEstado.Refresh;
      pbEstado.Position := pbEstado.Position + 1;

      //FDAPORTE :  Doble Aportacin
      xSQL := 'UPDATE COB304 SET '
         + ' FTRANSF   =''I'', '
         + ' FMAPORTE  =''S'' '
         + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
         + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
         + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
         + ' AND EXISTS (SELECT APOANO, APOMES, APOVALOR FROM APO117'
         + ' WHERE (TRANSANO=APOANO(+))'
         + ' AND (TRANSMES=APOMES(+))'
         + ' AND (TRANSAPO>APOVALOR))'
         + ' AND NVL(FTRANSFAC,''N'')=''N'' '
         + ' AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')'
         + ' AND  NVL(FMAPORTE,''A'')<>''C'' '; //ULTIMO RCMZ

      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      pbEstado.Position := pbEstado.Position + 1;
      lbEstado.Caption := '';
      lbEstado.Refresh;
      lbEstado.Caption := 'Verificando Aportes';
      lbEstado.Refresh;
      pbEstado.Position := pbEstado.Position + 1;
   End;

    //OJO ESTO SE REALIZA AL PRINCIPIO CON OTRO PROCESO EN PRUEBA RMZ
     {xSQL := 'UPDATE COB304 A SET'
             +' A.FTRANSF   =''I'', '
             +' A.FAPORPROV =''S'' '
             +' WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
             +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
             +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
             +' AND NVL(A.TRANSAPO,0)<>0'
             +' AND EXISTS ('
             +' SELECT COUNT(B.ASOID)'
             +' FROM APO301 B'
             +' WHERE A.ASOID  = B.ASOID'
             +' AND B.TRANSANO  = A.TRANSANO'
             +' AND B.TRANSMES  = A.TRANSMES'
             +' AND B.FORPAGOID ='+QuotedStr('25')
             +' GROUP BY B.ASOID'
             +' HAVING COUNT(B.ASOID)>=1)'
             +' AND NVL(FTRANSFAC,''N'')=''N'' ';

      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      pbEstado.Position := pbEstado.Position+1;
      lbEstado.Caption  := '';
      lbEstado.Refresh;
      lbEstado.Caption  := 'Verificando Aportes Provisionales';
      lbEstado.Refresh;
      pbEstado.Position := pbEstado.Position+1; }

   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Finalizando ...';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   //Para Ver si la USE No Existe
   //FUSENOEX => Campo para Marcar que la USE No Existe
   xSQL := 'Select ASOID, UPROID, UPAGOID, USEID, FTRANSF, FUSENOEX,'
      + ' RCOBID, DETRCOBID, USERCOBID From COB304'
      + ' Where RCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)
      + ' MINUS'
      + ' Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID, A.FTRANSF, A.FUSENOEX,'
      + ' RCOBID, DETRCOBID, USERCOBID From COB304 A, APO101 B'
      + ' Where A.RCOBID = ' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID  = ' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID  = ' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)
      + ' And (A.UPROID = B.UPROID And A.UPAGOID = B.UPAGOID And A.USEID = B.USEID)';

   DM1.cdsRec.Filter := '';
   DM1.cdsRec.Filtered := False;
   DM1.cdsRec.IndexFieldNames := '';
   DM1.cdsRec.Close;
   DM1.cdsRec.DataRequest(xSQL);
   DM1.cdsRec.Open;

   If DM1.cdsRec.RecordCount > 0 Then
   Begin
      DM1.cdsRec.First;
      While Not DM1.cdsRec.EOF Do
      Begin
         xSQL := 'UPDATE COB304'
            + ' SET FTRANSF =' + QuotedStr('I')
            + ', FUSENOEX =' + QuotedStr('S')
            + ' Where ASOID =' + QuotedStr(DM1.cdsRec.FieldByName('ASOID').AsString)
            + ' And RCOBID =' + QuotedStr(DM1.cdsRec.FieldByName('RCOBID').AsString)
            + ' And DETRCOBID =' + QuotedStr(DM1.cdsRec.FieldByName('DETRCOBID').AsString)
            + ' And USERCOBID =' + QuotedStr(DM1.cdsRec.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         DM1.cdsRec.Next;
      End;
   End;

   pbEstado.Position := pbEstado.Position + 1;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando USES No Vlidas';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

     //FMCREDITO: Cuota de Credito mayor         = 11
     //FECREDITO: Cuota de Credito menor         = 12

   DM1.cdsAutdisk.DisableControls;

   xSQL := 'SELECT * FROM COB304'
      + ' WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

   DM1.cdsAutdisk.Close;
   DM1.cdsAutdisk.DataRequest(xSQL);
   DM1.cdsAutdisk.Open;

   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSF';
   DM1.cdsAutdisk.Filter := 'FTRANSF =''I'' ';
   DM1.cdsAutdisk.Filtered := True;

   If xConInc = '1' Then
   Begin
      ErrorMsg(Caption, 'Hubo Problemas al Verificar las Inconsistencias' + #13 + #13 + 'Comunique a Sistemas');
      Exit;
   End;

   pbEstado.Max := 0;
   pnlEstado.Visible := False;

   xRecInc := DM1.cdsAutdisk.RecordCount;
   If DM1.cdsAutdisk.RecordCount >= 1 Then
   Begin
      xInc := 1;
   End;

   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filtered := False;
   DM1.cdsAutdisk.EnableControls;

End;

Procedure TFIngresoLote.BitBtn5Click(Sender: TObject);
Var
   xsql: String;
Begin
   If XAPORTE = 'S' Then
      DescargaAportes
   Else
      Programadescargo;
   pnlAdvertencias.Visible := False;
   CDSADVERTENCIA.EmptyDataSet;
   Mandaexcel;
End;

//Decarga de Aportes

Procedure TFIngresoLote.DescargaAportes;
Var
   xAno, xMes, xDia, xAnoMes, xTrim, xSem, xSs, xAaTri, xAaSem, xAass, xForPagoid: String;
   xCobano, xCobmes: String;
Begin

   pnlTransf.Visible := True;
   DM1.cdsAutDisk.DisableControls;

   sFecha := FormatDateTime(wFormatFecha, dbdtpFecOperacion.DateTime);
   sSQL := 'SELECT * FROM TGE114 WHERE FECHA =' + QuotedStr(sFecha);
   DM1.FiltraCDS(DM1.cdsPeriodo, sSQL);

   xAno := DM1.cdsPeriodo.FieldByName('FECANO').AsString;
   xMes := DM1.cdsPeriodo.FieldByName('FECMES').AsString;
   xDia := DM1.cdsPeriodo.FieldByName('FECDIA').AsString;
   xAnoMes := xAno + xMes;
   xTrim := DM1.cdsPeriodo.FieldByName('FECTRIM').AsString;
   xSem := DM1.cdsPeriodo.FieldByName('FECSEM').AsString;
   xSs := DM1.cdsPeriodo.FieldByName('FECSS').AsString;
   xAaTri := DM1.cdsPeriodo.FieldByName('FECAATRI').AsString;
   xAaSem := DM1.cdsPeriodo.FieldByName('FECAASEM').AsString;
   xAass := DM1.cdsPeriodo.FieldByName('FECAASS').AsString;

   xForPagoId := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID', 'FORPAGOABR =' + QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString), 'FORPAGOID');

   sSQL := 'SELECT ' + wRepFuncChar + wRepFecServi + ', ' + QuotedStr('DD/MM/YYYY') + ') "FECHA" FROM DUAL';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;
   xFec_Sis := DM1.cdsReporte.FieldByName('FECHA').AsString;

   sFecha := FormatDateTime(wFormatFecha, StrToDate(xFec_Sis));

       //DM1.cdsAutDisk.First;
       //While Not DM1.cdsAutDisk.EOF Do
       //begin
       //  Ingreso de Aportes APO301
       //Para Ver los Archivos que Tienen Igual Unidad de Proceso, Unidad de Pago y Use
   xSQL := 'SELECT Z.ASOID, ''APORTE'', ' +
      'Z.USEID, B.USEABRE, Z.UPAGOID, C.UPAGOABR, Z.UPROID, D.UPROABR, ' +
      '''N'', ' + QuotedStr(DM1.cdsAutDisk.FieldByName('BANCOID').AsString) + ', ' +
      QuotedStr(DM1.cdsAutDisk.FieldByName('CCBCOID').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString) + ', ' +
      wRepFuncDate + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString) + '), ' +
      QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString) + ', ' +
      QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString) + ', TRANSAPO, ' +
      QuotedStr('APO') + ', ' +
              //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', ''APO'', '+
   QuotedStr(DM1.cdsAutDisk.FieldByName('USUARIO').AsString) + ', ' +
      'Z.ASOCODMOD, A.ASOCODAUX, ' + QuotedStr(xForPagoId) + ', ' +
      'A.ASOAPENOM, E.FORPAGOABR, B.DPTOID, F.DPTOABR, B.CIUDID, ' +
      wRepFuncDate + QuotedStr(sFecha) + '), SYSDATE, ' +
               //wRepFuncDate+QuotedStr(sFecha)+'), '+wRepFuncDate+QuotedStr(sFecha)+'), '+
               //'A.ASOAPENOM, E.FORPAGOABR, A.DPTOID, F.DPTOABR, A.CIUDID, SYSDATE, SYSDATE, '+sFecha
   QuotedStr(xAnoMes) + ', ' + QuotedStr(xAaTri) + ', ' + QuotedStr(xTrim) + ', ' +
      QuotedStr(xSem) + ', ' + QuotedStr(xAaSem) + ', ' +
      QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString +
      DM1.cdsAutDisk.FieldByName('TRANSMES').AsString) + ', ' + QuotedStr(wCiaDef) + ', RCOBID, DETRCOBID, USERCOBID, ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString) + ', Z.PVSLBENNR, Z.FLGNIV, Z.APOSECID, Z.APO301ID '
      + ' FROM COB304 Z, APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F'
      + ' WHERE Z.ASOID = A.ASOID'
      + ' AND Z.UPROID  = B.UPROID'
      + ' AND Z.UPAGOID = B.UPAGOID'
      + ' AND Z.USEID   = B.USEID'
      + ' AND B.UPROID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString) //RICMZ
      + ' AND B.UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString) //RICMZ
      + ' AND C.UPROID  = B.UPROID'
      + ' AND C.UPAGOID = B.UPAGOID'
      + ' AND D.UPROID  = B.UPROID'
      + ' AND F.DPTOID  = B.DPTOID'
      + ' AND E.FORPAGOABR =' + QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)
      + ' AND Z.RCOBID     =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND Z.DETRCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND Z.USERCOBID  =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
              // +' AND TRANSMTO > 0'
   + ' AND TRANSAPO > 0'
      + ' AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'')'
      + ' AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';

   DM1.cdsQry4.Filter := '';
   DM1.cdsQry4.Filtered := False;
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;

   If (DM1.cdsQry4.RecordCount < DM1.cdsAutDisk.RecordCount) And (DM1.cdsQry4.RecordCount > 0) Then
   Begin
      Beep;
      If MessageDlg('Sólo Existen ' + IntToStr(DM1.cdsQry4.RecordCount) + ' Registros que pueden ser Transferidos' + #13
         + 'Verifique Unidad de Proceso, Unidad de Pago o Use' + #13
         + '               Desea Transferirlos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         xSQL := 'INSERT INTO APO301 (' +
            'ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID, ' +
            'UPROABR, TMONID, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, ' +
            'TRANSANO, TRANSMES, TRANSMTO, TRANSINTID, USUARIO, ASOCODMOD, ASOCODAUX, ' +
            'FORPAGOID, ASOAPENOM, FORPAGOABR, DPTOID, DPTOABR, CIUDID, ' +
            'FREG, HREG, TRANSAAMM, TRANSAATRI, TRANSTRIM, TRANSSEM, TRANSAASEM, ' +
                       //'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, PVSLBENNR, FLGNIV, APOSECID, APO301ID) '+
         'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, FLGNIV, APOSECID, APO301ID,CNTANOMM) ' +
            'SELECT Z.ASOID, ''APORTE'', ' +
            'Z.USEID, B.USEABRE, Z.UPAGOID, C.UPAGOABR, Z.UPROID, D.UPROABR, ' +
            '''N'', ' + QuotedStr(DM1.cdsAutDisk.FieldByName('BANCOID').AsString) + ', ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('CCBCOID').AsString) + ', ' +
            QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString) + ', ' +
            wRepFuncDate + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString) + '), ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString) + ', ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString) + ', TRANSAPO, ' +
            QuotedStr('APO') + ', ' +
                         //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', ''APO'', '+
         QuotedStr(DM1.cdsAutDisk.FieldByName('USUARIO').AsString) + ', ' +
            'Z.ASOCODMOD, A.ASOCODAUX, ' + QuotedStr(xForPagoId) + ', ' +
            'A.ASOAPENOM, E.FORPAGOABR, B.DPTOID, F.DPTOABR, B.CIUDID, ' +
            wRepFuncDate + QuotedStr(sFecha) + '), SYSDATE, ' +
                        //wRepFuncDate+QuotedStr(sFecha)+'), '+wRepFuncDate+QuotedStr(sFecha)+'), '+
                        //'A.ASOAPENOM, E.FORPAGOABR, A.DPTOID, F.DPTOABR, A.CIUDID, SYSDATE, SYSDATE, '+sFecha
         QuotedStr(xAnoMes) + ', ' + QuotedStr(xAaTri) + ', ' + QuotedStr(xTrim) + ', ' +
            QuotedStr(xSem) + ', ' + QuotedStr(xAaSem) + ', ' +
            QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString +
            DM1.cdsAutDisk.FieldByName('TRANSMES').AsString) + ', ' + QuotedStr(wCiaDef) + ',RCOBID, DETRCOBID, USERCOBID,' +
            QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString) + ', ' +
                      //QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)+', Z.PVSLBENNR, Z.FLGNIV, Z.APOSECID, Z.APO301ID ';
         QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString) + ',Z.FLGNIV,Z.APOSECID,Z.APO301ID,TO_CHAR(SYSDATE,''yyyymm'')';

         xSQL1 := 'FROM COB304 Z, APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F ' +
                              {'WHERE Z.ASOID=A.ASOID '+      //'WHERE A.ASOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
                               'AND A.USEID=B.USEID '+
                               'AND B.USEID='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+' '+
                               'AND A.UPAGOID=C.UPAGOID '+
                               'AND C.UPAGOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+' '+
                               'AND A.UPROID=D.UPROID '+
                               'AND D.UPROID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+' '+
                               'AND E.FORPAGOABR='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
                               'AND F.DPTOID(+)=Z.DPTOID '+
                               'AND Z.RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                               'AND Z.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                               'AND Z.USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
                               'AND TRANSMTO > 0 '+
                               'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') '+
                               'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';}
         'WHERE Z.ASOID = A.ASOID ' +
            'AND Z.UPROID  = B.UPROID ' +
            'AND Z.UPAGOID = B.UPAGOID ' +
            'AND Z.USEID   = B.USEID ' +
            'AND B.UPROID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString) + ' ' + //.. RICMZ
            'AND B.UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString) + ' ' + //.. RICMZ
            'AND C.UPROID  = B.UPROID ' +
            'AND C.UPAGOID = B.UPAGOID ' +
            'AND D.UPROID  = B.UPROID ' +
            'AND F.DPTOID  = B.DPTOID ' +
            'AND E.FORPAGOABR =' + QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString) + ' ' +
            'AND Z.RCOBID     =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND Z.DETRCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND Z.USERCOBID  =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ' ' +
                            // 'AND TRANSMTO > 0 '+
         'AND TRANSAPO > 0 ' +
            'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') ' +
            'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL + xSQL1);

         xSQL := 'UPDATE COB304 SET FTRANSFAC =''S'' ' +
            'WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ' ' +
            'AND TRANSMTO > 0 ' +
            'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''X'')=''X'') ' +
            'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                      //ACTUALIZA EN COB319 (TABLA DE DETALLE DE ENVIO AL DESCUENTO) EL APORTE DESCARGADO  DEL ASOCIADO
                      //RMZ 21/12/2007
         xCobano := Dm1.cdsCobxUse.FieldByName('RCOBANO').AsString;
         xCobmes := Dm1.cdsCobxUse.FieldByName('RCOBMES').AsString;

         XSQL := 'UPDATE COB319 A SET MONAPOAPL=(SELECT NVL(TRANSAPO,0) FROM COB304 B WHERE  ' +
            '    RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
            'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
            'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ' ' +
            'AND TRANSAPO > 0 ' +
            'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''X'')=''X'') ' +
            'AND FTRANSFAC=''S'' ' +
            'AND A.ASOID=B.ASOID ) ' +
            'WHERE A.UPROID=''' + dblcUProceso.Text + ''' AND A.UPAGOID=''' + dblcdUPago.Text + ''' AND A.COBANO=''' + xcobano + ''' AND A.COBMES=''' + xcobmes + ''' ' +
            'AND  A.ASOTIPID IN(''DO'',''NI'',''VO'') ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         pnlTransf.Visible := False;
         DM1.cdsAutDisk.EnableControls;
      End
      Else //de la Pregunta Solo Existe......
      Begin
         Screen.Cursor := crDefault;
         Exit;
      End;
   End

   Else //Biene del If (DM1.cdsQry4.RecordCount < DM1.cdsAutDisk.RecordCount) And (DM1.cdsQry4.RecordCount > 0)
   Begin
      xSQL := 'INSERT INTO APO301 (' +
         'ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID, ' +
         'UPROABR, TMONID, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, ' +
         'TRANSANO, TRANSMES, TRANSMTO, TRANSINTID, USUARIO, ASOCODMOD, ASOCODAUX, ' +
         'FORPAGOID, ASOAPENOM, FORPAGOABR, DPTOID, DPTOABR, CIUDID, ' +
         'FREG, HREG, TRANSAAMM, TRANSAATRI, TRANSTRIM, TRANSSEM, TRANSAASEM, ' +
                   //'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, PVSLBENNR, FLGNIV, APOSECID, APO301ID) '+
      'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, FLGNIV, APOSECID, APO301ID,CNTANOMM) ' +

      'SELECT Z.ASOID, ''APORTE'', ' +
         'Z.USEID, B.USEABRE, Z.UPAGOID, C.UPAGOABR, Z.UPROID, D.UPROABR, ' +
         '''N'', ' + QuotedStr(DM1.cdsAutDisk.FieldByName('BANCOID').AsString) + ', ' +
         QuotedStr(DM1.cdsAutDisk.FieldByName('CCBCOID').AsString) + ', ' +
         QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString) + ', ' +
         wRepFuncDate + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString) + '), ' +
         QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString) + ', ' +
         QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString) + ', TRANSAPO, ' +
         QuotedStr('APO') + ', ' +
                   //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', ''APO'', '+
      QuotedStr(DM1.cdsAutDisk.FieldByName('USUARIO').AsString) + ', ' +
         'Z.ASOCODMOD, A.ASOCODAUX, ' + QuotedStr(xForPagoId) + ', ' +
         'A.ASOAPENOM, E.FORPAGOABR, B.DPTOID, F.DPTOABR, B.CIUDID, ' +
         wRepFuncDate + QuotedStr(sFecha) + '), SYSDATE, ' +
                   //wRepFuncDate+QuotedStr(sFecha)+'), '+wRepFuncDate+QuotedStr(sFecha)+'), '+
                   //'A.ASOAPENOM, E.FORPAGOABR, A.DPTOID, F.DPTOABR, A.CIUDID, SYSDATE, SYSDATE, '+sFecha
      QuotedStr(xAnoMes) + ', ' + QuotedStr(xAaTri) + ', ' + QuotedStr(xTrim) + ', ' +
         QuotedStr(xSem) + ', ' + QuotedStr(xAaSem) + ', ' +
         QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString +
         DM1.cdsAutDisk.FieldByName('TRANSMES').AsString) + ', ' + QuotedStr(wCiaDef) + ', RCOBID, DETRCOBID, USERCOBID, ' +
         QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString) + ', ' +
                   //QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)+', Z.PVSLBENNR, Z.FLGNIV, Z.APOSECID, Z.APO301ID ';
      QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString) + ', Z.FLGNIV, Z.APOSECID, Z.APO301ID,TO_CHAR(SYSDATE,''yyyymm'') ';

      xSQL1 := 'FROM COB304 Z, APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F ' +
                     {'WHERE Z.ASOID=A.ASOID '+      //'WHERE A.ASOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
                      'AND A.USEID=B.USEID '+
                      'AND B.USEID='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+' '+
                      'AND A.UPAGOID=C.UPAGOID '+
                      'AND C.UPAGOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+' '+
                      'AND A.UPROID=D.UPROID '+
                      'AND D.UPROID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+' '+
                      'AND E.FORPAGOABR='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
                      'AND F.DPTOID(+)=Z.DPTOID '+
                      'AND Z.RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                      'AND Z.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                      'AND Z.USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
                      'AND TRANSMTO > 0 '+
                      'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') '+
                      'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';}
      'WHERE Z.ASOID = A.ASOID ' +
         'AND Z.UPROID  = B.UPROID ' +
         'AND Z.UPAGOID = B.UPAGOID ' +
         'AND Z.USEID   = B.USEID ' +
         'AND B.UPROID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString) + ' ' + //  RICMZ
         'AND B.UPAGOID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString) + ' ' + //  RICMZ
         'AND C.UPROID  = B.UPROID ' +
         'AND C.UPAGOID = B.UPAGOID ' +
         'AND D.UPROID  = B.UPROID ' +
         'AND F.DPTOID  = B.DPTOID ' +
         'AND E.FORPAGOABR =' + QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString) + ' ' +
         'AND Z.RCOBID     =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
         'AND Z.DETRCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
         'AND Z.USERCOBID  =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ' ' +
                    //'AND TRANSMTO > 0 '+
      'AND TRANSAPO > 0 ' +
         'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') ' +
         'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL + xSQL1);

      xSQL := 'UPDATE COB304 SET FTRANSFAC =''S'' ' +
         'WHERE RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ' ' +
         'AND DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ' ' +
         'AND USERCOBID =' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString) + ' ' +
         'AND TRANSMTO > 0 ' +
         'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''X'')=''X'') ' +
         'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      pnlTransf.Visible := False;
      DM1.cdsAutDisk.EnableControls;
   End;

   DM1.cdsAutdisk.Filtered := False;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter := '';
   DM1.cdsAutdisk.Filtered := True;
   ActualizaFooter;
   ActuaCampos;
   ShowMessage('Transferencia Finalizada');

End;

//Descarga cuotas

Procedure TFIngresoLote.DescargaCuotas;
Var
   xsql, xCobano, xCobmes: String;
   xImptracuo: currency;

Begin

   DM1.cdsAutDisk.DisableControls;
   DM1.cdsAutDisk.First;
   pbEstado.Min := 0;
   pbEstado.Max := DM1.cdsAutdisk.RecordCount;
   Screen.Cursor := crHourGlass;
   pnlEstado.Visible := True;
   xCobano := Dm1.cdsCobxUse.FieldByName('RCOBANO').AsString;
   xCobmes := Dm1.cdsCobxUse.FieldByName('RCOBMES').AsString;

   While Not DM1.cdsAutDisk.EOF Do
   Begin
            //Imptracuo = es el importe transferido de la cuota, se guarda para los casos que se corta el proceso
            //comenzar desde el saldo por transferir, tambien para saber si se a transferido el total del importe que llego
      If Length(trim(DM1.cdsAutdisk.Fieldbyname('Imptracuo').AsString)) = 0 Then
         xImptracuo := 0.00
      Else
         xImptracuo := DM1.cdsAutdisk.Fieldbyname('Imptracuo').AsCurrency;

      If DM1.cdsAutdisk.FieldByName('Transcuo').AsCurrency - xImptracuo > 0 Then
      Begin
         descarga(DM1.cdsAutdisk.FieldByName('Asoid').AsString,
            xCobano + xCobmes,
            DM1.cdsAutdisk.FieldByName('Transfope').AsString,
            DM1.cdsAutdisk.FieldByName('Transcuo').AsCurrency - xImptracuo,
            DM1.cdsAutdisk.FieldByName('Transapo').AsCurrency);
                     //Actualiza su cargo a partir de la tabla de descargo
                     { RMZ NO DEBE ACTUALIZA APO201 ActCargo(xCobano,xCobmes,
                              DM1.cdsAutdisk.FieldByName('Uproid').AsString,
                              DM1.cdsAutdisk.FieldByName('Upagoid').AsString,
                              DM1.cdsAutdisk.FieldByName('Useid').AsString,
                              DM1.cdsAutdisk.FieldByName('Asoid').AsString ); }
      End;

      DM1.cdsAutdisk.Next;
      pbEstado.StepIt;
   End; //End While cdsAutdisk

         //Actualiza el estado de NO PAGADO aquello que no han mandando su descuento y siguen en PROCESO DE COBRANZA
   Xsql := 'Begin SACA_PRO_COB_UPRO_UPAG(''' + xCobano + xCobmes + ''',''' + dblcUProceso.Text + ''',''' + dblcdUPago.Text + ''',''' + trim(dblTipAso.Text) + '''); End;';
   Try
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   Except
      ShowMessage('ERROR AL DESMARCAR PROC.COB. DE CUOTAS NO COBRADAS...');
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   DM1.cdsAutDisk.EnableControls;

         //cargar datos gestión
   DM1.CargaDatosGestion(xCobano + xCobmes, dblcUProceso.Text, dblcdUPago.Text, dblcdUse.Text, dblTipAso.Text);

         //** para los que actualiz
   DM1.cdsAutdisk.Filtered := False;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter := '';
   DM1.cdsAutdisk.Filtered := True;
   DM1.cdsAutDisk.First;
   xsql := 'Update Cob304 set FTRANSFC=''S'' Where Rcobid=''' + DM1.cdsAutDisk.FieldByName('Rcobid').AsString +
      ''' and Detrcobid=''' + DM1.cdsAutDisk.FieldByName('Detrcobid').AsString +
      ''' and ( (Ftransfc=''T'' and nvl(Transcuo,0)>0) or (nvl(Transcuo,0)=nvl(Imptracuo,0) and nvl(Transcuo,0)>0 ) )';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   ActuaCampos;
   ActualizaFooter;
   Ocultapaneles;
          //Acualizo los archivos de Cabecera COB204,COB322
   ActCabec(xCobano, xCobmes);
   ShowMessage('Transferencia de Cuotas Finalizada');

End;

//Manda a excel;

Procedure TFIngresoLote.Mandaexcel;
Var
   xsql: String;
Begin
// HPP_200901_COB JD
   xSQL := 'SELECT A.ASOCODMOD "Cod.Mod.", B.ASODNI "Dni", A.ASOAPENOM "Apellidos y Nombre", A.UPROID "U.pro", '
      + '       A.UPAGOID "U.Pago", A.USEID "Ugel", A.ASOCODPAGO "Cod.Pago", A.CARGO "Cargo", A.FCUPRO "Camb.Upro", '
      + '       A.FCUPAGO"Camb.Upago",A.FCUSE"Camb.Use",A.FCCODPAGO"Camb.Cod.Pag", '
      + '       case when a.cargo<>b.cargo then ''S'' end "Camb.Cargo" '
      + 'FROM COB304 A,APO201 B '
      + 'WHERE RCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + '  AND DETRCOBID=' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + '  AND USERCOBID=' + QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
      + '  AND  FTRANSF=''R'' AND A.ASOID=B.ASOID ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(XSQL);
   DM1.cdsQry4.Open;
   Try
      DM1.HojaExcel('Advertencias', dm1.dsQry4, DTGDATA);
   Except
      On Ex: Exception Do
         Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
   End;

End;

Procedure TFIngresoLote.Programadescargo;
Var
   xsql: String;
Begin
   Xsql := 'SELECT * FROM COB_PROG_DES_PLANILLA Where ' +
           'RCOBID=''' + DM1.cdsCobxUse.FieldByName('RCOBID').AsString +
           ''' AND DETRCOBID=''' + DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString +
           ''' AND USERCOBID=''' + DM1.cdsCobxUse.FieldByName('USERCOBID').AsString + ''' AND FLGANU IS NULL ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If Dm1.cdsQry4.RecordCount > 0 Then
   Begin
      ShowMessage('Programación del Descargo de Cuotas por Planilla ya fue registrada...');
      exit;
   End;

   // HPP_200907_COB - realizado por RMEDINA
   // Se cambio (xNumReg>0) and (xNumreg<=200) SAR 2009-271 -  DAD RM2009-043
   If (xNumReg > 0) And (xNumreg <= 1000) Then
      xTurno := 'T'
   Else
      xTurno := 'N'; // HPP_200904_COB (F1)
      
   // HPP_200904_COB (F1)
   Xsql := 'Insert Into COB_PROG_DES_PLANILLA' +
           '(RCOBID,DETRCOBID,USERCOBID,UPROID,UPAGOID,USEID,ASOTIPID,TIPO,' +
           'IMPORTE,PERIODO,RCOBNOPE,RCOBFOPE,USUARIO,FREG,HREG,NUMREG,TURNO) VALUES(' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('ASOTIPID').AsString) + ', ' +
      QuotedStr('CUOTAS') + ',' +
      floattostr(xTotImporte) + ',' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANO').AsString + DM1.cdsCobxUse.FieldByName('RCOBMES').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString) + ', ' +
      QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString) + ', ' +
      QuotedStr(DM1.wUsuario) + ',TO_DATE(SYSDATE),SYSDATE,' + IntToStr(xNumReg) + ',' + QuotedStr(xTurno) + ')';
   DM1.DCOM1.AppServer.EjecutaSQL(Xsql);

   ShowMessage('Programación de Cuotas Finalizada');
   xNumReg := 0; // HPP_200904_COB (F1)
End;

               
// Inicio: SPP_201310_COB       : 16/07/2013 - Consulta de Cuotas Anuladas
procedure TFIngresoLote.bbtnAnuladosClick(Sender: TObject);
var
  sSQL : String;
begin
  sSQL:='SELECT ASOID, ASOCODMOD, ASOAPENOM, TRANSMTO, USUANU, TO_DATE(FECANU) FECANU, OBSANU '
       +  'FROM APO_ANU_ING_LOT A '
       + 'WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
       +  ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
       +  ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)
       + 'ORDER BY A.FECANU DESC, A.ASOAPENOM';
  DM1.cdsCuotasAnu.Close;
  DM1.cdsCuotasAnu.DataRequest(sSQL);
  DM1.cdsCuotasAnu.Open;

  if DM1.cdsCuotasAnu.RecordCount<=0 then
  begin
      MessageDlg('No existen cuotas Anuladas para este Ingreso en Lote !!!', mtError, [mbOk], 0);
      Exit;
  end;

  try
    FIngLoteAnu:=TFIngLoteAnu.Create(self);
    FIngLoteAnu.ShowModal;
  finally
    FIngLoteAnu.Free;
  end;
end;
// Fin: SPP_201310_COB       : 16/07/2013 - Consulta de Cuotas Anuladas

End.

