// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB001
// Formulario           : Fprincipal
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Menu principal del modulo de cobranzas
// Actualizaciones      :
// HPC_200312_COB       : 15/12/2003 - Creación del menu principal
// HPC_201124_COB       : Se añade el llamado a la opción Registro de inconsistencia de planilla.
// HPP_201122_COB       : Pase a producción del requerimiento HPC_201124_COB.
// HPC_201127_COB       : 04/10/2011 - Saldo del Fondo Solidario de Contingencia
// HPP_201123_COB       : Se realizara el pase para el requerimiento HPC_201127_COB
//                        (pase extraordinario) para el 10/10/2011.
// SPP_201305_COB       : Se realiza el pase a producción a partir del HPC_201303_COB
// SPP_201307_COB       : Se realiza el pase a producción a partir del HPC_201305_COB
// HPC_201306_COB       : Reportes de la Cobranza por ONP a cesantes por la Ley 19990
// SPP_201308_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201307_COB       : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla
//                        12/06/2013  Reporte Envio vs. Cobranza por Planilla
// SPP_201309_COB       : Se realiza el pase a producción a partir del HPC_201307_COB
// HPC_201308_COB       : 08/07/2013  Agregar Campos a Filtro de Cobranza Global
//                      : 12/07/2013  Mostrar Alerta temprana al Cargar el Sistemas
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201309_COB       : 14/08/2013  Se agregaron opciones Nuevas
// SPP_201311_COB       : Se realiza el pase a producción a partir del HPC_201309_COB
// HPC_201310_COB       : 17/09/2013  Opción nueva de Estadistico del FSC
// HPC_201310_COB       : 26/09/2013  Opción nueva de Control de Cheques Anulados
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201312_COB       : 18/12/2013  : Cobranzas del FSC
// SPP_201314_COB       : Se realiza el pase a producción a partir del documento HPC_201312_COB
// HPC_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
// SPP_201402_COB       : Se realiza el pase a producción a partir del HPC_201402_COB
// SPP_201404_COB       : 18/09/2014  : Accesos a Nivel 2 a Control de Cheques Anulado.
// HPC_201502_COB       : 07/01/2015  : Opciónes nuevas de generacion de listado decréditos cancelados con FSC y marca las existencias de los expedientes
// HPC_201506_COB       : Estadistica de Control de Ingresos Mensuales
// HPC_201508_COB       : Opciones de FSC
// HPC_201515_COB       : La opcion de Control de Accesos ya no será para todo nivel 3, sino sera configurable como una opción
// HPC_201523_COB       : Se adiciona dos opciones para cancelar por concepto de AJUSTE
// HPC_201604_COB       : Se adiciona opción en el Menú Estadisticos; Inventario de Créditos Otorgados.
// HPC_201605_COB       : Se modifica el filtro de acceso a la solicitud y aprobación de devoluciones.
// HPC_201701_COB       : Se añade opción "Reprogramación de cuotas (procesos cartera)".
// HPC_201706_COB       : Reversión 100% Diferidas
// HPC_201707_COB       : Opción de referencia de devoluciones
// HPC_201711_COB       : Opción  de Reporte de Reprogramación de Créditos
// HPC_201721_COB       : Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
// HPC_201725_COB       : Modificación de los accesos del nivel Inicial en el Módulo de Cobranzas.
// HPC_201731_COB       : Mejoras en el proceso de Pago Adelantado
// HPC_201814_COB       : Se añade la opción "Primera cuota sin pago"
// HPC_201803_COB       : Jerarquía del módulo del Control de Ticket
// HPC_201819_COB       : Control de Acceso al Modulo; Al ingresar a los módulos de Front;
//                        implementar un control que no permita acceder al módulo sino está inscrito en el grupo asignado al módulo
// HPC_201820_COB       : Se añade opciones "Pagos x resolver" y "Pag x res - Cronogramas Cerrados"
// HPC_201822_COB       : Cambio de Versión
// COB_201823_HPC       : Se añade botón "sbEvaFPD" (Resultados evaluaciones del FPD). Nueva opción y nueva versión
// COB_201824_HPC       : Cambio de Versión
Unit COB001;
Interface

Uses
// Inicio: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
   Windows, Messages, SysUtils, Classes, fcLabel, StdCtrls, ControlGridDisp,
   Controls, ExtCtrls, Buttons, ComCtrls, ToolWin, Forms, wwDBigrd, DB, Mant, dialogs, ppCtrls,
//INICIO HPC_201508_COB
//   DBCtrls, IniFiles, Grids, DBGrids, Wwdbgrid, Graphics;
//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
   DBCtrls, IniFiles, Grids, DBGrids, Wwdbgrid, Graphics, ADODB, wwdblook;
//Fin HPC_201803_COB
//FINAL HPC_201508_COB

// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
Type
   TFprincipal = Class(TForm)
      clbPrincipal: TCoolBar;
      tlbPrincipal: TToolBar;
      Z1sbReglas: TSpeedButton;
      Z1sbMovimientos: TSpeedButton;
      Z1sbReportes: TSpeedButton;
      Z1sbSalida: TSpeedButton;
      Z1sbMaestros: TSpeedButton;
      cgdPrincipal: TControlGridDisp;
      pnlReferencias: TPanel;
      Z1sbReferencias: TSpeedButton;
      pnlMaestros: TPanel;
      pnlProcesos: TPanel;
      pnlMovimientos: TPanel;
      Z1sbRegistroGlobal: TSpeedButton;
      Z1sbAutDisk: TSpeedButton;
      Z1sbRepresentante: TSpeedButton;
      spdContabilizacion: TSpeedButton;
      Z1sbGeneracionOficios: TSpeedButton;
      Z1sbProcesos: TSpeedButton;
      Z1sbRepresentantes: TSpeedButton;
      pnlAutdisk: TPanel;
      sbPlantilla: TSpeedButton;
      SpeedButton7: TSpeedButton;
      SpeedButton8: TSpeedButton;
      Z1sbConvenios: TSpeedButton;
      pnlReportes: TPanel;
      pnlActualiza: TPanel;
      SpeedButton10: TSpeedButton;
      SpeedButton55: TSpeedButton;
      cgdAutDisk: TControlGridDisp;
      lblVersion: TLabel;
      Z1sbIngresoLote: TSpeedButton;
      Z1sbRegNotAbo: TSpeedButton;
      Z1sbIngLote: TSpeedButton;
      Z1sbCamPassw: TSpeedButton;
      Z1sbReclamos: TSpeedButton;
      spdCobFrmPago: TSpeedButton;
      Z1sbPagRepre: TSpeedButton;
      Z1sbDevCuoEfe: TSpeedButton;
      spdIncoIngLote: TSpeedButton;
      Z1sbPagoCuotas: TSpeedButton;
// Inicio: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      //Image1: TImage;
      //fcLabel3: TfcLabel;
      //fcLabel1: TfcLabel;
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Z1sbRegCanDepo: TSpeedButton;
      StatusBar1: TStatusBar;
      Timer2: TTimer;
      SpdRefDep: TSpeedButton;
      SpeedFpago: TSpeedButton;
      SpDetBco: TSpeedButton;
// Fin: SPP_201305_COB
      spbCtaxCobCalCar: TSpeedButton;
      SpdCtrBan: TSpeedButton;
      spdRepDev: TSpeedButton;
      spdCtrlDesGlobal: TSpeedButton;
      spdBitGesCon: TSpeedButton;
      spbRepRef: TSpeedButton;
      spdDetCtaPag: TSpeedButton;
      pnlContab: TPanel;
      sbContabDevol: TSpeedButton;
      sbContabCobranza: TSpeedButton;
      sbContabRefin: TSpeedButton;
      spbSalCre: TSpeedButton;
      spdCuoBloq: TSpeedButton;
      spdCtaRecaudadora: TSpeedButton;
      pnlCtaRec: TPanel;
      sbCtaRecBcoCredito: TSpeedButton;
      sbCtaRecBcoNacion: TSpeedButton;
      spdDesTel: TSpeedButton;
      spdControl: TSpeedButton;
      spbCobApoBco: TSpeedButton;
      spdDExtDevAplCuo: TSpeedButton;
      Paneldevoluciones: TPanel;
      sbExtDevCtrolDesemb: TSpeedButton;
      sbExtDevSolicDev: TSpeedButton;
      SpeedButton23: TSpeedButton;
      sbExtDevApruebaDev: TSpeedButton;
      spdrepExt: TSpeedButton;
      spdCtaInac: TSpeedButton;
      spdReclas: TSpeedButton;
      spdEscFis: TSpeedButton;
      spdGestCob: TSpeedButton;
      spdDesPlanillas: TSpeedButton;
      SpdEntAut: TSpeedButton;
      pnlgescob: TPanel;
      spbDetGst: TSpeedButton;
      spbEstGst: TSpeedButton;
      spdLiqBen: TSpeedButton;
      spdAsigFpag: TSpeedButton;
      spfMtoFrmPag: TSpeedButton;
      spdDisFlat: TSpeedButton;
      pnlRepApliExcExt: TPanel;
      sbRepAplicac: TSpeedButton;
      sbRepExcesos: TSpeedButton;
      sbRepExtornos: TSpeedButton;
      pnlrepblo: TPanel;
      sbCredDesbloq: TSpeedButton;
      sbCuotasBloq: TSpeedButton;
      sbDetCredBloq: TSpeedButton;
      sbResCredBloq: TSpeedButton;
      pnlCobranzaPlanilla: TPanel;
      spbCobPlanilla3: TSpeedButton;
      spbCobPlanilla2: TSpeedButton;
      spbCobPlanilla: TSpeedButton;
      spbCobPlanilla1: TSpeedButton;
      spbCobPlanilla4: TSpeedButton;
      spdconvenios: TSpeedButton;
      sbDctoxPlanxConv: TSpeedButton;
      sbCtasEnvSinDcto: TSpeedButton;
      Z1sbReportes2: TSpeedButton;
      pnlReportes2: TPanel;
      SpeedButton43: TSpeedButton;
      spdAutDescuento: TSpeedButton;
      spdCobPvE: TSpeedButton;
      BitRepPorcPer: TSpeedButton;
      BitRepReclamos: TSpeedButton;
      BitEstEnvCob: TSpeedButton;
      spdResGenCob: TSpeedButton;
      spdGesCob: TSpeedButton;
      Bitgescanfonsol: TSpeedButton;
      sbRepRefina: TSpeedButton;
      sbMatrizRodamiento: TSpeedButton;
      bbtnRefiSoli: TSpeedButton;
      bbtnRefiApro: TSpeedButton;
      sbVisorProgDescPlanilla: TSpeedButton;
      bbtnRefiApeCie: TSpeedButton;
      sbCtrUsuxZonaDesPla: TSpeedButton;
      sbSectoristaZonaDesPla: TSpeedButton;
      sbAperPlantDesPla: TSpeedButton;
      sbGestoresDomiciliarios: TSpeedButton;
      sbautdesxges: TSpeedButton;
      sbresgesdom: TSpeedButton;
      sbManUgeles: TSpeedButton;
      sbRepCes19990_AFP: TSpeedButton;
      sbCalParaleloVencido: TSpeedButton;
      sbCandidatosFSC: TSpeedButton;
      pnlEnvxConv: TPanel;
      sbGenDsctoPllaxConv: TSpeedButton;
      sbRepComplxConv: TSpeedButton;
      sbMovCalAso: TSpeedButton;
      spHisCalAso: TSpeedButton;
      sbApliFSC: TSpeedButton;
      sbProgDsctoPllaxConv: TSpeedButton;
      sbSolDevExcFSC: TSpeedButton;
      btnregincpla: TSpeedButton;
      btnSaldoFSC: TSpeedButton;
    btnSolConFallecidos: TSpeedButton;
    btnSolApliFD: TSpeedButton;
    spdDesONP: TSpeedButton;
    spdDatGest: TSpeedButton;
    sbSegMotivoNoDescPla: TSpeedButton;
    spCtrlFtp: TSpeedButton;
    spdDesCuatroCuotas: TSpeedButton;
    pnlPagBanco: TPanel;
    spbDetBanco: TSpeedButton;
    spbResBanco: TSpeedButton; // SPP_201308_COB 

// Inicio: SPP_201308_COB  - Reportes de la Cobranza por ONP a cesantes por la Ley 19990
      spbCobranzaONP: TSpeedButton;
// Fin: SPP_201308_COB     - Reportes de la Cobranza por ONP a cesantes por la Ley 19990
    // Inicio: SPP_201309_COB       : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla
    spAcuerdoAdicPla: TSpeedButton;
    sbResCobPla: TSpeedButton;
    sbMigraRefinan: TSpeedButton;
    sbSaldoFPD: TSpeedButton;

// Inicio: SPP_201312_COB     : 17/09/2013  Opción nueva de Estadistico del FSC
    sbEstadisticoFSC: TSpeedButton;
// Fin: SPP_201312_COB        : 17/09/2013  Opción nueva de Estadistico del FSC

// Inicio: SPP_201312_COB     : 26/09/2013  Opción nueva de Control de Cheques Anulados
    sbChequesAnula: TSpeedButton;
// Inicio: SPP_201314_COB
    sbCobFSC: TSpeedButton;
// Fin: SPP_201314_COB
// Fin: SPP_201312_COB        : 26/09/2013  Opción nueva de Control de Cheques Anulados
// Inicio: SPP_201402_COB     : 02/06/2014  : Cambio de DCOM a Socket
    Image1: TImage;
    Label2: TLabel;
    Button1: TButton;
    Label1: TLabel;
//Inicio HPC_201502_COB
    sbExistCredCancFSC: TSpeedButton;
    pnlExistExpCredFSC: TPanel;
    spbGeneraExistCredFSC: TSpeedButton;
    spbMarcaExistCredFSC: TSpeedButton;
//Final HPC_201502_COB
// Inicio HPC_201506_COB
    sbCtrlIngMen: TSpeedButton;
// Fin HPC_201506_COB
// Fin: SPP_201402_COB        : 02/06/2014  : Cambio de DCOM a Socket
//Inicio HPC_201508_COB
    sbOperacionesFSC: TSpeedButton;
    ADOQuery1: TADOQuery;
    sbFSCxDpto: TSpeedButton;
//Inicio HPC_201523_COB
    sbAplicaAJUSTE: TSpeedButton;
    sbApruebaAJUSTE: TSpeedButton;
//Inicio HPC_201604_COB -- Boton
    sbInvCreOtorgados: TSpeedButton;
    // Inicio: HPC_201701_COB
    // Nuevo botón de la opción "Reprogramación de cuotas"
    sbProcesoRep: TSpeedButton;
    // Fin: HPC_201701_COB
//Inicio HPC_201706_COB
//Reversión 100% Diferidas
    sbRev100Diferidas: TSpeedButton;
//Inicio HPC_201707_COB
//Opción de referencia de devoluciones
    sbRefDevolucion: TSpeedButton;
    pnlRefDevolucion: TPanel;
    sbMotDevolucion: TSpeedButton;
    sbNumDevXOficio: TSpeedButton;
    sbOriDevolucion: TSpeedButton;
//Inicio HPC_201711_COB
//Opción  de Reporte de Reprogramación de Créditos
    sbRepReprogCred: TSpeedButton;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    sbRepPagAde: TSpeedButton;
// Inicio: HPC_201820_COB
// Nuevos botones de las opciones creadas
   sbpagxres: TSpeedButton;
   sbpxrcrocerr: TSpeedButton;
// Fin: HPC_201820_COB
// Inicio: HPC_201814_COB
// Se añade la opción "Primera cuota sin pago"
    sbCredSinCuotPag: TSpeedButton;
// Fin: HPC_201814_COB
//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
    pnlVentanilla: TPanel;
    lblNumVentanilla: TLabel;
    btnIniAtencion: TButton;
    btnFinAtencion: TButton;
    btnAsigna: TButton;
    pnlAsignacion: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    estNumVen: TEdit;
    dblPantalla: TwwDBLookupCombo;
    btnOK: TButton;
    btnCancel: TButton;
    SEMAFORO: TShape;
    btnLimpiar: TButton;
    pnlDesasignar: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtUsuario: TEdit;
    btnDesasignarOK: TButton;
    btnDesasignarCancel: TButton;
    edtPassword: TEdit;
    // Inicio: COB_201823_HPC
    // Se crea botón para la opción "Resultados evaluaciones del FPD"
    sbEvaFPD: TSpeedButton;
    // Fin: COB_201823_HPC
//  sbCredSinCuotPag: TSpeedButton;
//Fin HPC_201803_COB
// Fin HPC_201731_COB
//Final HPC_201711_COB
//Final HPC_201707_COB
//Final HPC_201706_COB
//Final HPC_201604_COB
//fIN HPC_201523_COB
//Final HPC_201508_COB

      Procedure FormShow(Sender: TObject);
      Procedure Z1sbReglasMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure Z1sbMovimientosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure Z1sbReportesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure dbgMovCxPMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure SacaMenu(Sender: TObject);
      Procedure Z1sbMaestrosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure FormCreate(Sender: TObject);
      Procedure Z1sbSalidaClick(Sender: TObject);
      Procedure Z1sbSalidaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure Z1sbProcesosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure Z1sbRepresentanteClick(Sender: TObject);
      Procedure Z1sbRegistroGlobalClick(Sender: TObject);
      Procedure Z1sbClientesClick(Sender: TObject);
      Procedure Z1sbRecalendarizacionClick(Sender: TObject);
      Procedure Z1sbGeneracionOficiosClick(Sender: TObject);
      Procedure Z1sbReclamosClick(Sender: TObject);
      Procedure spdContabilizacionClick(Sender: TObject);
      Procedure sbPlantillaClick(Sender: TObject);
      Procedure Z1sbRefinanciacionMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure Z1sbConveniosClick(Sender: TObject);
      Procedure SpeedButton7Click(Sender: TObject);
      Procedure SpeedButton48Click(Sender: TObject);
      Procedure Z1sbReferenciasClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure SpeedButton8MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure SpeedButton55Click(Sender: TObject);
      Procedure SpeedButton10Click(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure Accesos;
      Procedure Z1sbIngresoLoteClick(Sender: TObject);
      Procedure Z1sbRegNotAboClick(Sender: TObject);
      Procedure Z1sbTeleAhorroClick(Sender: TObject);
      Procedure Z1sbCamPasswClick(Sender: TObject);
      Procedure Z1sbClick(Sender: TObject);
      Procedure Z1sbGeneracionOficiosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure spdContabilizacionMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);

      Procedure spdCuoBloqMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure spdCtaRecaudadoraMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure Z1bbtnRepCobDepBcosApoClick(Sender: TObject);
      Procedure Z1sbReglasClick(Sender: TObject);
      Procedure Z1sbMaestrosClick(Sender: TObject);
      Procedure Z1sbMovimientosClick(Sender: TObject);
      Procedure Z1sbProcesosClick(Sender: TObject);
      Procedure Z1sbReportesClick(Sender: TObject);
      Procedure Z1sbPagRepreClick(Sender: TObject);
      Procedure spdIncoIngLoteClick(Sender: TObject);
      Procedure Z1sbPagoCuotasClick(Sender: TObject);
      Procedure Z1sbRegCanDepoClick(Sender: TObject);
      Procedure spdCobFrmPagoClick(Sender: TObject);
      Procedure Timer2Timer(Sender: TObject);
      Procedure spdResGenCobClick(Sender: TObject);
      Procedure SpdRefDepClick(Sender: TObject);
      Procedure spdDesCuatroCuotasClick(Sender: TObject);
      Procedure SpeedFpagoClick(Sender: TObject);
      Procedure SpDetBcoClick(Sender: TObject);
      Procedure spCtrlFtpClick(Sender: TObject);
      Procedure spbCtaxCobCalCarClick(Sender: TObject);
      Procedure SpdCtrBanClick(Sender: TObject);
      Procedure spdRepDevClick(Sender: TObject);
      Procedure spdCtrlDesGlobalClick(Sender: TObject);
      Procedure spdBitGesConClick(Sender: TObject);
      Procedure spbDetGstClick(Sender: TObject);
      Procedure spbEstGstClick(Sender: TObject);
      Procedure spbSalCreClick(Sender: TObject);
      Procedure sbContabCobranzaClick(Sender: TObject);
      Procedure sbContabDevolClick(Sender: TObject);
      Procedure sbContabRefinClick(Sender: TObject);
      Procedure spCtrlFtpMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure epeddClick(Sender: TObject);
      Procedure spbRepRefClick(Sender: TObject);
      Procedure spbCobPlanilla2Click(Sender: TObject);
      Procedure spdDesTelClick(Sender: TObject);
      Procedure spdControlClick(Sender: TObject);
      Procedure spbCobApoBcoClick(Sender: TObject);
      Procedure spdDExtDevAplCuoMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure spdDExtDevAplCuoClick(Sender: TObject);
      Procedure sbExtDevSolicDevClick(Sender: TObject);
      Procedure sbExtDevApruebaDevClick(Sender: TObject);
      Procedure spdrepExtClick(Sender: TObject);
      Procedure spdCtaInacClick(Sender: TObject);
      Procedure pnlCtaRecMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure PaneldevolucionesMouseMove(Sender: TObject;
         Shift: TShiftState; X, Y: Integer);
      Procedure sbCtaRecBcoNacionClick(Sender: TObject);
      Procedure spdReclasClick(Sender: TObject);
      Procedure spdEscFisClick(Sender: TObject);
      Procedure spdGestCobClick(Sender: TObject);
      Procedure spdDesPlanillasClick(Sender: TObject);
      Procedure SpdEntAutClick(Sender: TObject);
      Procedure spdGesCobClick(Sender: TObject);
      Procedure spdGesCobMouseMove(Sender: TObject; Shift: TShiftState;
         X, Y: Integer);
      Procedure spbSalCreMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure spdAsigFpagClick(Sender: TObject);
      Procedure spfMtoFrmPagClick(Sender: TObject);
      Procedure spdCtrlDesGlobalMouseMove(Sender: TObject;
         Shift: TShiftState; X, Y: Integer);
      Procedure spdLiqBenClick(Sender: TObject);
      Procedure spdCtaRecaudadoraClick(Sender: TObject);
      Procedure spdDisFlatClick(Sender: TObject);
      Procedure sbRepExtornosClick(Sender: TObject);
      Procedure sbRepExcesosClick(Sender: TObject);
      Procedure sbRepAplicacClick(Sender: TObject);
      Procedure spdReclasMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure spbCobApoBcoMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure spdrepExtMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure pnlReportesMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure pnlProcesosMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure sbCtaRecBcoCreditoClick(Sender: TObject);
      Procedure sbCuotasBloqClick(Sender: TObject);
      Procedure sbResCredBloqClick(Sender: TObject);
      Procedure sbDetCredBloqClick(Sender: TObject);
      Procedure sbCredDesbloqClick(Sender: TObject);
      Procedure spdAnuIngLoteClick(Sender: TObject);
      Procedure BitRepReclamosClick(Sender: TObject);
      Procedure BitRepPorcPerClick(Sender: TObject);
      Procedure spbCobPlanilla3Click(Sender: TObject);
      Procedure spbCobPlanillaMouseMove(Sender: TObject; Shift: TShiftState;
         X, Y: Integer);
      Procedure spdCobPvEClick(Sender: TObject);
      Procedure spdAutDescuentoClick(Sender: TObject);
      Procedure sbExtDevCtrolDesembClick(Sender: TObject);
      Procedure Z1sbAutDiskClick(Sender: TObject);
      Procedure spdconveniosClick(Sender: TObject);
      Procedure sbCtasEnvSinDctoClick(Sender: TObject);
      Procedure spdDatGestClick(Sender: TObject);
      Procedure Z1sbReportes2Click(Sender: TObject);
      Procedure Z1sbReportes2MouseMove(Sender: TObject; Shift: TShiftState;
         X, Y: Integer);
      Procedure BitEstEnvCobClick(Sender: TObject);
      Procedure BitgescanfonsolClick(Sender: TObject);
      Procedure sbRepRefinaClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure sbMatrizRodamientoClick(Sender: TObject);
      Procedure bbtnRefiSoliClick(Sender: TObject);
      Procedure bbtnRefiAproClick(Sender: TObject);
      Procedure sbVisorProgDescPlanillaClick(Sender: TObject);
      Procedure bbtnRefiApeCieClick(Sender: TObject);
      Procedure sbCtrUsuxZonaDesPlaClick(Sender: TObject);
      Procedure sbSectoristaZonaDesPlaClick(Sender: TObject);
      Procedure sbAperPlantDesPlaClick(Sender: TObject);
      Procedure sbGestoresDomiciliariosClick(Sender: TObject);
      Procedure sbSegMotivoNoDescPlaClick(Sender: TObject);
      Procedure sbautdesxgesClick(Sender: TObject);
      Procedure sbresgesdomClick(Sender: TObject);
      Procedure sbManUgelesClick(Sender: TObject);
      Procedure sbRepCes19990_AFPClick(Sender: TObject);
      procedure sbCalParaleloVencidoClick(Sender: TObject);
      procedure sbCandidatosFSCClick(Sender: TObject);
      procedure sbGenDsctoPllaxConvClick(Sender: TObject);
      procedure sbRepComplxConvClick(Sender: TObject);
      procedure sbDctoxPlanxConvMouseMove(Sender: TObject;
         Shift: TShiftState; X, Y: Integer);
      procedure sbMovCalAsoClick(Sender: TObject);
      procedure spHisCalAsoClick(Sender: TObject);
      procedure sbApliFSCClick(Sender: TObject);
      procedure sbProgDsctoPllaxConvClick(Sender: TObject);
      procedure sbSolDevExcFSCClick(Sender: TObject);
      procedure btnregincplaClick(Sender: TObject);
      procedure btnSaldoFSCClick(Sender: TObject);
      procedure btnSolConFallecidosClick(Sender: TObject);
      procedure btnSolApliFDClick(Sender: TObject);

      procedure spdDesONPClick(Sender: TObject);
      procedure spbDetBancoClick(Sender: TObject);
      procedure spbResBancoClick(Sender: TObject);
      procedure SpDetBcoMouseMove(Sender: TObject; Shift: TShiftState; X,
        Y: Integer);

// Inicio: SPP_201308_COB   - Reportes de la Cobranza por ONP a cesantes por la Ley 19990
    procedure spbCobranzaONPClick(Sender: TObject);
// Fin: SPP_201308_COB      - Reportes de la Cobranza por ONP a cesantes por la Ley 19990
    procedure spAcuerdoAdicPlaClick(Sender: TObject);
    procedure sbResCobPlaClick(Sender: TObject);
    procedure sbMigraRefinanClick(Sender: TObject);
    procedure sbSaldoFPDClick(Sender: TObject);

// Inicio: SPP_201312_COB    : 17/09/2013  Opción nueva de Estadistico del FSC
    procedure sbEstadisticoFSCClick(Sender: TObject);
// Fin: SPP_201312_COB       : 17/09/2013  Opción nueva de Estadistico del FSC

// Inicio: SPP_201312_COB    : 26/09/2013  Opción nueva de Control de Cheques Anulados
    procedure sbChequesAnulaClick(Sender: TObject);
// Inicio: SPP_201314_COB
    procedure sbCobFSCClick(Sender: TObject);
//Inicio HPC_201502_COB
    procedure spbGeneraExistCredFSCClick(Sender: TObject);
    procedure sbExistCredCancFSCMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
//Final HPC_201502_COB
// Inicio HPC_201506_COB
    procedure sbCtrlIngMenClick(Sender: TObject);
// Fin HPC_201506_COB
//Inicio HPC_201508_COB
    procedure sbOperacionesFSCClick(Sender: TObject);
    procedure sbFSCxDptoClick(Sender: TObject);
    procedure spbMarcaExistCredFSCClick(Sender: TObject);
//Inicio HPC_201523_COB
    procedure sbAplicaAJUSTEClick(Sender: TObject);
    procedure sbApruebaAJUSTEClick(Sender: TObject);
//Inicio HPC_201604_COB --Proceso de creditos otorgados
    procedure sbInvCreOtorgadosClick(Sender: TObject);
    // Inicio: HPC_201701_COB
    // Procedimiento para la opción "Reprogramación de cuotas"
    procedure sbProcesoRepClick(Sender: TObject);
    // Fin: HPC_201701_COB
//Inicio HPC_201706_COB
//Reversión 100% Diferidas
    procedure sbRev100DiferidasClick(Sender: TObject);
//Inicio HPC_201707_COB
//Opción de referencia de devoluciones
    procedure sbRefDevolucionMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbRefDevolucionClick(Sender: TObject);
    procedure sbNumDevXOficioClick(Sender: TObject);
    procedure sbMotDevolucionClick(Sender: TObject);
    procedure sbOriDevolucionClick(Sender: TObject);
//Inicio HPC_201711_COB
//Opción de Reporte de Reprogramación de Créditos
    procedure sbRepReprogCredClick(Sender: TObject);
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    procedure sbRepPagAdeClick(Sender: TObject);
    // Inicio: HPC_201820_COB
    // Nuevos botones de las opciones creadas
    procedure sbpagxresClick(Sender: TObject);
    procedure sbpxrcrocerrClick(Sender: TObject);
    // Fin: HPC_201820_COB
// Inicio: HPC_201814_COB
// Nuevo procedimiento para llamar a la nueva forma de reporte de Cuotas no pagadas 
    procedure sbCredSinCuotPagClick(Sender: TObject);
// Fin: HPC_201814_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
    procedure btnIniAtencionClick(Sender: TObject);
    procedure btnFinAtencionClick(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure estNumVenExit(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
    procedure btnDesasignarCancelClick(Sender: TObject);
    procedure btnDesasignarOKClick(Sender: TObject);
    procedure estNumVenKeyPress(Sender: TObject; var Key: Char);
    // Inicio: COB_201823_HPC
    // Cabecera de procedimiento que llama a la opción "Resultados evaluaciones del FPD"
    procedure sbEvaFPDClick(Sender: TObject);
    // Fin: COB_201823_HPC

//Fin HPC_201803_COB
// Fin HPC_201731_COB
//Final HPC_201711_COB
//Final HPC_201707_COB
//Final HPC_201706_COB
//Final HPC_201604_COB
//Fin HPC_201523_COB
//Final HPC_201508_COB
// Inicio: SPP_201402_COB    
// Fin: SPP_201402_COB
// Fin: SPP_201314_COB
// Fin: SPP_201312_COB       : 26/09/2013  Opción nueva de Control de Cheques Anulados


   Private
    { Private declarations }
      xEstado, xEstid: String;
//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
      sNumVenta,sPantalla : String;
//Fin HPC_201803_COB
      Procedure AbreTablasAso;
      Procedure OnDeleteDescarga(Sender: TObject; MantFields: TFields);
      Procedure OnEditCobxUse(Sender: TObject; MantFields: TFields);
      Procedure OnEditIngresoLote(Sender: TObject; MantFields: TFields);
      Procedure OnDeleteCarga(Sender: TObject; MantFields: TFields);
      Procedure OnEditDescarga(Sender: TObject; MantFields: TFields);
      Function VerificaVersion: Boolean;
      Procedure Verpercadpas;
      Procedure BloquearMenuPrincipal;
//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
      Procedure bloqueamenu();
      Procedure Desbloqueamenu();
//Fin HPC_201803_COB
   Public
      Mtx, Mtx1, MtxD, MtxBloqueo, MtxDev: TMant;
      xSQL: String;
      CAxuRep: String;
      Procedure AppMessage(Var Msg: TMsg; Var Handled: Boolean);
      Procedure CreaOpciones;
      Procedure CreaAccesos;
      Procedure ListaComponentes(xForm: TForm);
      Procedure MueveMouse(xObjeto: TObject; Shift: TShiftState; X, Y: Integer);
      Procedure PegaPanelRegCobTel(Sender: TObject);
      Procedure PegaPanelRelDepPrest(Sender: TObject);
      Procedure PegaPanelRelDepApo(Sender: TObject);
      Procedure PegaPanelCtaxCob(Sender: TObject);
      Procedure ToolsCreate(Sender: TObject);
      Procedure OnInsertAsociado(Sender: TObject);
      Procedure OnEditAsociado(Sender: TObject; MantFields: TFields);
      Procedure OnDeleteAsociado(Sender: TObject; MantFields: TFields);
      Procedure OnInsertPagRec(Sender: TObject);
      Procedure OnEditPagRec(Sender: TObject; MantFields: TFields);
      Procedure OnDeletePagRec(Sender: TObject; MantFields: TFields);
      Procedure PegaPanelToolPagRec(Sender: TObject);
      Procedure OnNoDelete(Sender: TObject; MantFields: TFields);
      Procedure OnShowAsociado(Sender: TObject);
      Procedure PegaPanelToolAso(Sender: TObject);
      Procedure PegaDevCuota(Sender: TObject);
      Procedure ToolRepre(Sender: TObject);
      Procedure PegaPanelToolActApo(Sender: TObject);
      Procedure PegaPanelToolActCre(Sender: TObject);
      Procedure OnInsertRepresentante(Sender: TObject);
      Procedure PegaPanelToolDes(Sender: TObject);
      Procedure OnEditRepresentante(Sender: TObject; MantFields: TFields);
      Procedure OnInsertRegGlobalCob(Sender: TObject);
      Procedure OnInsertReclamo(Sender: TObject);
      Procedure OnInsertCredito(Sender: TObject);
      Procedure OnEditCredito(Sender: TObject; MantFields: TFields);
      Procedure OnInsertConvenio(Sender: TObject);
      Procedure OnEditConvenio(Sender: TObject; MantFields: TFields);
      Procedure OnDeleteConvenio(Sender: TObject; MantFields: TFields);
      Procedure OnEditRegGlobalCob(Sender: TObject; MantFields: TFields);
      Procedure OnDeleteRegGlobalCob(Sender: TObject; MantFields: TFields);
      Procedure OnDeleteRepre(Sender: TObject; MantFields: TFields);
      Procedure OnEditReclamo(Sender: TObject; MantFields: TFields);
      Procedure PegaPanelIngLote(Sender: TObject);
      Procedure PegaPanelCobUse(Sender: TObject);
      Procedure PegaPanelIngLotVerApo(Sender: TObject);
      Procedure PegaPanelRegGlobal(Sender: TObject);
      Procedure PegaPanelRegNAbono(Sender: TObject);
      Procedure OnInsertRegNAbono(Sender: TObject);
      Procedure OnEditRegNAbono(Sender: TObject; MantFields: TFields);
      Procedure OnDeleteRegNAbono(Sender: TObject; MantFields: TFields);
      Procedure PegaPanelToolTAhorro(Sender: TObject);
      Procedure OnDeleteTAhorro(Sender: TObject; MantFields: TFields);
      Procedure PegaPanelToolCar(Sender: TObject);
      Procedure PegaPanelToolRepEstCtaCte(Sender: TObject);
      Procedure PegaPanelToolRepResCtasPagadas(Sender: TObject);
      Procedure PegaPanelToolIncTAhorro(Sender: TObject);
      Procedure PegaPanelToolIncILote(Sender: TObject);
      Procedure SacaSubMenu();
      Procedure IniciaParametros(Sender: TObject);
   End;
Var
   Fprincipal: TFprincipal;
   cRefi: String;
   MtxD: TMant;
   D, M, Y: Word;
   xBusAso, FIni, xSQL2, xSQL, sSQL: String;
   xFechasys: TDate;
   xDiaSys, xAnoSys, xMesSys: Word;
Implementation
Uses COB407, COB202, COB301, COB203, COB305, COB303, COB304, COB406,
   COB308, COB404, COB403, COB408, COB306, COB211, COB409, COB302,
   COB411, COB204, COB501, COB502, COB531, COB412, COB532, COB533, COB560,
   COB550, COB570, COB580, COB590, COB5A0, COB5C0, COB5D0, COB5F0, COB5B0,
   COB5H0, COB5I1, COB5I2, COB5I3, COB5I4, COB402, COB405, COB520, COB510,
   COB511, COB512, COB513, COB515, COB514, COB516, COB517, COB518, COB519,
   COB5A1, COB5B1, COB5C1, COB5D1, COB5E1, COB5F1, COB521, COB522, COB523,
   COB5H1, COB5H2, COB5I5, COB5I6, COBDM1, MsgDlgs, COB701, COB201, COB702,
   COB703, COB413, COB704, COB312, COB313, COB705,
   APO718, APO306, COB706, COB419, COB707, COB710, COB709, COB424,
   COB711, COB713, COB712, COB714, COB718, COB425, COB720, COB730,
   COB750, COB719, COB721, COB717, COB780, COB760, COB800, COB708,
   COB591, COB213, COB722, COB999, COB219, COB214, COB224, COB225,
   COB427, COB810, COB101, COB435, COB820, COB812, COB830, COB215, CRE229,
   COB901, COB908, COB910, CRE907, COB916, COB917, COB918, COB986, COB436, COB919,
   COB920, COB921, COB923, COB924, COB925, COB929, COB450, COB452, COB446,
   COB931, COB932, COB9336, COB428, COB936, COB932B, COB940, CRE908, COB902,
   COB947, ASO939, COB954, COB943A, COB943B, COB956, COB957, COB431, COB960,
   COB961, COB962, COB964, COB965, COB966,
   COB967, COB969, COB970, COB956B, COB974, COB976, COB977, COB978,
   COB982, COB979, COB980, COB983,
   COB932C, COB430, COB984, COB985, CRE947, COB602, COB723, CRE450, COB318,
   COBD11,
   COBD12,
   APO306A,
   COBD13,
   COB803, COB804, COB805, COB823,
   COB806,
   COB825, COB826, COB102, COB831, COB592, COB524, COB986B,
   COB919B, COB919A,
   COBF001,
   COBF006,
   COB987A,
   COB807,
   COBF008,
   COB230, COB235, COB454, COB455,
   COB503, COB504,
   COB321, COB323, COB593, COB594, COB605, COB466,
// Inicio: SPP_201312_COB    : 17/09/2013  Opción nueva de Estadistico del FSC
   COB606,
// Fin: SPP_201312_COB       : 17/09/2013  Opción nueva de Estadistico del FSC

// Inicio: SPP_201312_COB    : 26/09/2013  Opción nueva de Control de Cheques Anulados
// Inicio: SPP_201314_COB
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
// Inicio HPC_201506_COB
//Inicio HPC_201502_COB
//COB326, SOLRef01, COB608, COB022;
//INICIO HPC_201508_COB
// COB326, SOLRef01, COB608, COB022, COBF009, COBF010, COB610
//Inicio HPC_201523_COB
   COB326, SOLRef01, COB608, COB022, COBF009, COBF010, COB610,COB469, COB470,
//Inicio HPC_201604_COB --Tablas
  // Inicio: HPC_201701_COB 
  // Se añade al proyecto el fuente de "Reprogramación de cuotas" 
  // COB330, COB331, COB986C;
//Inicio HPC_201706_COB
//Reversión 100% Diferidas
//  COB330, COB331, COB986C, COB449;
//Inicio HPC_201707_COB
//Opción de referencia de devoluciones
//COB330, COB331, COB986C, COB449,COBD018;
//Inicio HPC_201711_COB
//Opción de Reporte de Reprogramacón de Créditos
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
  COB330, COB331, COB986C, COBD018, COBD020, COBD022, COB449, COBR002,
// Inicio: HPC_201820_COB
// Se adiciona unidad
// Inicio: HPC_201814_COB
// Se añade una nueva unidad
//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
  // Inicio: COB_201823_HPC 
  // Se añade unidad COB802
  // COBR003,COB506,WSAutenticacion,COB832,COB833;;
  COBR003,COB506,WSAutenticacion,COB832,COB833, COB802;
  // Fin: COB_201823_HPC
//Fin HPC_201803_COB
// Fin: HPC_201814_COB
// Fin: HPC_201820_COB
// Fin HPC_201731_COB
//Final HPC_201711_COB
  // Fin: HPC_201701_COB 
//Final HPC_201707_COB
//Final HPC_201706_COB
//Final HPC_201604_COB
//Fin HPC_201523_COB
//FINAL HPC_201508_COB
//Final HPC_201502_COB
// Fin HPC_201506_COB
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
// Fin: SPP_201314_COB
// Fin: SPP_201312_COB       : 26/09/2013  Opción nueva de Control de Cheques Anulados

{$R *.DFM}

Procedure TFprincipal.FormShow(Sender: TObject);
Begin
   Screen.Cursor := CrDefault;

//Inicio HPC_201819_COB
//Control de Acceso al Modulo; Al ingresar a los módulos de Front; implementar un control que no permita acceder al módulo sino está inscrito en el grupo asignado al módulo

   xSQL2:='Select SF_CONTROL_ACCESO('+QuotedStr(dm1.wUsuario)+',''COB'') Mensaje From dual ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL2);
   DM1.cdsQry.Open;
   If copy(DM1.cdsQry.FieldByName('Mensaje').AsString,1,3)='Err' Then
   Begin
      ShowMessage(DM1.cdsQry.FieldByName('Mensaje').AsString);
      Application.Terminate;
	  Exit;
   End;
// Fin HPC_201819_COB

// Inicio: SPP_201310_COB       : 12/07/2013  Mostrar Alerta temprana al Cargar el Sistemas
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) > 1 Then
   Begin
       try
         FConvenioAlerta:=TFConvenioAlerta.Create(self);
         FConvenioAlerta.ShowModal;
       finally
         FConvenioAlerta.Free;
       end;
   end;
// Fin: SPP_201310_COB       : 12/07/2013  Mostrar Alerta temprana al Cargar el Sistemas
End;

Procedure TFprincipal.Z1sbReglasMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   pnlReferencias.Left := TSpeedButton(Sender).Left + 10;
   pnlReferencias.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := True;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
End;

Procedure TFprincipal.Z1sbMaestrosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   pnlMaestros.Left := TSpeedButton(Sender).Left + 10;
   pnlMaestros.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := True;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
End;

Procedure TFprincipal.Z1sbMovimientosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   pnlMovimientos.Left := TSpeedButton(Sender).Left + 10;
   pnlMovimientos.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := True;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
   pnlAutdisk.Visible := False;
End;

Procedure TFprincipal.Z1sbReportesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   pnlReportes.Left := TSpeedButton(Sender).Left + 10;
   pnlReportes.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReportes.Visible := True;
   pnlReportes2.Visible := False;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := False;
   pnlAutdisk.Visible := False;
End;

Procedure TFprincipal.dbgMovCxPMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   SacaMenu(Sender);
End;

Procedure TFprincipal.SacaMenu(Sender: TObject);
Begin
   clbPrincipal.Enabled := True;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
   pnlAutdisk.Visible := False;
   pnlActualiza.Visible := False;
   pnlContab.Visible := False;
   pnlCtaRec.Visible := False;
   Paneldevoluciones.Visible := False;
   pnlgescob.Visible := False;
   pnlRepApliExcExt.Visible := False;
   pnlrepblo.Visible := False;
   pnlCobranzaPlanilla.Visible := False;
   pnlReportes2.Visible := False;
   pnlEnvxConv.Visible := False;
//Inicio: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;
   pnlPagBanco.Visible := False;
//Fin: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;
//Inicio HPC_201502_COB
   pnlExistExpCredFSC.Visible := False;
//Final HPC_201502_COB
//Inicio HPC_201707_COB
//Opción de referencia de devoluciones
pnlRefDevolucion.Visible := False;
//Final HPC_201707_COB

End;

Procedure TFprincipal.ToolsCreate(Sender: TObject);
Begin
End;

Procedure TFprincipal.FormCreate(Sender: TObject);
//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
var
  inifile : TIniFile;
//Fin HPC_201803_COB
Begin
   BloquearMenuPrincipal;
   DM1.BlqComponentes(Self);
   If (DM1.wAdmin = 'G') Or
      (DM1.wAdmin = 'M') Then
   Begin
      DM1.wGrupoTmp := '';
      Application.OnMessage := AppMessage;
      ListaComponentes(Self);
   End;
   DecodeDate(Date, Y, M, D);
   
  //INICIO HPC_201508_COB - Este cambio es retirado por el área de Calidad
  //Debido a que se debe manejar por el control de accesos segun sea el permiso
  //que se otorgue a cada usuario, y no estar de libre acceso.
   //sbOperacionesFSC.Enabled:=true;
   //sbFSCxDpto.Enabled:=true;
  //FINAL HPC_201508_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
  DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'OFDESID');
  xSQL:='SELECT OFDESID,USERID,PANTALLA,VENTANILLA,OPERACION,FECREG FROM TICKET_ASG_VEN_MOD_USU '
       +' WHERE OFDESID='+QuotedStr(DM1.xOfiDes)+ ' AND USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND OPERACION='+QuotedStr(DM1.wModulo);
  DM1.cdsQry30.Close;
  DM1.cdsQry30.DataRequest(xSQL);
  DM1.cdsQry30.Open;
  If  DM1.cdsQry30.RecordCount>0 Then
  Begin
     sNumVenta := Trim(DM1.cdsQry30.FieldByname('VENTANILLA').AsString);
     sPantalla := Trim(DM1.cdsQry30.FieldByname('PANTALLA').AsString);
     btnFinAtencion.Enabled:=False;
     pnlVentanilla.Visible := true;
     pnlVentanilla.Width:=204;
     pnlVentanilla.Height:=135;
     lblNumVentanilla.Caption := 'De la Ventanilla '+sNumVenta+' -> '+sPantalla;
     bloqueamenu;
  End
  Else
  Begin
     pnlVentanilla.Visible := true;
     lblNumVentanilla.Caption := 'Sin Asignación de Ventanilla';
     pnlVentanilla.Width:=179;
     pnlVentanilla.Height:=62;
  End;
//Inicio COB_201823_HPC
//Se adiciona un close por un mensaje error
  DM1.cdsQry30.Close;
//Fin COB_201823_HPC
//Fin HPC_201803_COB
End;

Procedure TFprincipal.AppMessage(Var Msg: TMsg; Var Handled: Boolean);
Begin
   If Msg.message = WM_KEYDOWN Then
   Begin
      If (Msg.wParam = VK_F5) Then
      Begin
         If (Copy(DM1.wObjetoNombr, 1, 2) = 'Z1') Or
            (Copy(DM1.wObjetoNombr, 1, 2) = 'Z2') Then
         Begin
            CreaOpciones;
         End;
      End;
      If (Msg.wParam = VK_F12) Then
      Begin
         CreaAccesos;
      End;
   End;
End;

Procedure TFprincipal.Z1sbSalidaClick(Sender: TObject);
Begin
   pnlReportes.visible := false;
   Close;
End;

Procedure TFprincipal.Z1sbSalidaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
End;

Procedure TFprincipal.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin

   Sacamenu(Self);

End;

Procedure TFprincipal.Z1sbProcesosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   pnlProcesos.Left := TSpeedButton(Sender).Left + 10;
   pnlProcesos.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := True;
   pnlReportes.Visible := False;
   pnlgescob.Visible := False;
   pnlReportes2.Visible := False;
End;

Procedure TFprincipal.Z1sbRepresentanteClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   SacaMenu(Sender);
   DM1.Filtracds(DM1.cdsFRepr, 'SELECT * FROM COB105');
   DM1.cdsFRepr.IndexFieldNames := 'FORREPRID';
   DM1.Filtracds(DM1.cdsBcos, 'SELECT BANCOID, BANCONOM FROM TGE105');
   DM1.cdsBcos.IndexFieldNames := 'BANCOID';
   DM1.Filtracds(DM1.cdsSitCta, 'SELECT SITCTAID, SITCTADES FROM COB103');
   DM1.cdsSitCta.IndexFieldNames := 'SITCTAID';
   DM1.filtracds(DM1.cdsTdoc, 'SELECT * FROM TGE159');
   DM1.cdsTdoc.IndexFieldNames := 'TIPDOCCOD';
   DM1.filtracds(DM1.cdsEstCiv, 'SELECT ESTCIVID,ESTCIVDES FROM TGE125');
   DM1.cdsEstCiv.IndexFieldNames := 'ESTCIVID';
   DM1.filtracds(DM1.cdsDpto, 'SELECT * FROM APO158');
   DM1.cdsDpto.IndexFieldNames := 'DPTOID';
   DM1.filtracds(DM1.cdsProvin, 'SELECT * FROM APO123');
   DM1.cdsProvin.IndexFieldNames := 'DPTOID;CIUDID';
   DM1.filtracds(DM1.cdsDist, 'SELECT * FROM APO122');
   DM1.cdsDist.IndexFieldNames := 'DPTOID;CIUDID;ZIPID';
   DM1.FiltraCds(DM1.cdsUPro, 'SELECT UPROID, UPRONOM FROM APO102');
   DM1.cdsUPro.IndexFieldNames := 'UPROID';
   DM1.FiltraCds(DM1.cdsTransporte, 'SELECT * FROM COB207');
   DM1.cdsTransporte.IndexFieldNames := 'AGTRID';
   DM1.FiltraCds(DM1.cdsOfDes, 'SELECT * FROM APO110');
   DM1.cdsOfDes.IndexFieldNames := 'OFDESID';
   DM1.FiltraCds(DM1.cdsCCosto, 'SELECT * FROM TGE203');
   DM1.cdsCCosto.IndexFieldNames := 'CCOSID';
   DM1.cdsTMoneda.Open;
   FToolRepresentante := TFToolRepresentante.Create(Self);
   Mtx := TMant.Create(Self);
   Try
      Mtx.User := DM1.wUsuario;
      Mtx.Admin := DM1.wAdmin;
      Mtx.Module := DM1.wModulo;
      Mtx.DComC := DM1.DCOM1;
      Mtx.ControlGridDisp := cgdPrincipal;
      Mtx.OnCreateMant := ToolRepre;
      Mtx.TableName := 'COB201';
      Mtx.ClientDataSet := DM1.cdsRepresentante;
      Mtx.Titulo := 'Recaudadores';
      Mtx.OnInsert := OnInsertRepresentante;
      Mtx.OnEdit := OnEditRepresentante;
      Mtx.OnDelete := OnDeleteRepre;
      Mtx.SectionName := 'Recaudadores';
      Mtx.FileNameIni := '\SolCobranzas.ini';
      Screen.Cursor := crDefault;
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Screen.Cursor := crDefault;
      Mtx.Free;
      FToolRepresentante.Free;
      DM1.cdsFRepr.Close;
      DM1.cdsBcos.Close;
      DM1.cdsSitCta.Close;
      DM1.cdsTDoc.Close;
      DM1.cdsEstCiv.Close;
      DM1.cdsDpto.Close;
      DM1.cdsProvin.Close;
      DM1.cdsDist.Close;
      DM1.cdsUPro.Close;
      DM1.cdsTransporte.Close;
      DM1.cdsOfDes.Close;
      DM1.cdsCCosto.Close;
      dm1.cdsEjecuta.Close;
   End;
End;

Procedure TFprincipal.OnInsertRepresentante(Sender: TObject);
Begin
   DM1.wModo := 'A';
   FRepresentante := TFRepresentante.Create(Self);
   Try
      FRepresentante.ShowModal
   Finally
      FRepresentante.Free
   End;
End;

Procedure TFprincipal.OnEditRepresentante(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsRepresentante.RecordCount = 0 Then
   Begin
      ShowMessage('No Existen Registros a Editar');
      Exit;
   End;
   DM1.wModo := 'M';
   FRepresentante := TFRepresentante.Create(Self);
   Try
      FRepresentante.ShowModal
   Finally
      FRepresentante.Free
   End;
End;

Procedure TFprincipal.OnDeleteRepre(Sender: TObject; MantFields: TFields);
Var
   xSQL: String;
Begin

   If MessageDlg('¿Esta Seguro de Eliminar el Registro Actual y su Detalle? ',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      Screen.Cursor := crHourGlass;
      xSQL := 'DELETE FROM COB203 '
         + 'WHERE REPRID=' + QuotedStr(DM1.cdsRepresentante.FieldByName('REPRID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      DM1.cdsRepresentante.Delete;
      DM1.cdsRepresentante.ApplyUpdates(-1);
      Screen.Cursor := crDefault;
      ShowMessage('¡ Eliminación Completada !');
   End;
End;

Procedure TFprincipal.ToolRepre(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolRepresentante.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.Z1sbRegistroGlobalClick(Sender: TObject);
// Inicio: SPP_201310_COB       : 08/07/2013  Agregar Campos a Filtro de Cobranza Global
var
  sSQL : String;
// Fin: SPP_201310_COB       : 08/07/2013  Agregar Campos a Filtro de Cobranza Global
Begin
   Screen.Cursor := crHourGlass;
   SacaMenu(Sender);
// Inicio: SPP_201310_COB       : 08/07/2013  Agregar Campos a Filtro de Cobranza Global
   //FRegGlobalCob := TFRegGlobalCob.Create(Self);
   //FToolRegGlobal := TFToolRegGlobal.Create(Self);
   sSQL := 'SELECT * FROM APO103 ORDER BY UPAGOID';
   DM1.FiltraCDS(DM1.cdsQry3, sSQL);
   sSQL := 'SELECT * FROM APO102 ORDER BY UPROID';
   DM1.FiltraCDS(DM1.cdsQry2, sSQL);
   DM1.cdsQry2.IndexFieldNames := 'UPROID';
   sSQL := 'SELECT * FROM COB201';
   DM1.FiltraCDS(DM1.cdsRepresentante, sSQL);
   DM1.FiltraCDS(DM1.cdsBcos, 'Select * From TGE105');
   DM1.FiltraCDS(DM1.cdsTMoneda, 'Select * From TGE103');
   DM1.FiltraCDS(DM1.cdsFormaPago, 'Select * From COB101');
   DM1.FiltraCDS(DM1.cdsFPago, 'Select * From TGE112');
   DM1.FiltraCds(DM1.cdsAgenciaBco, 'SELECT BANCOID, AGENBCOID, AGENBCODES FROM COB102');
   DM1.cdsAgenciaBco.IndexFieldNames := 'BANCOID; AGENBCOID';

   //FIni := '01/' + IntToStr(M) + '/' + IntToStr(Y);
   //FToolRegGlobal.dtpDesde.Date := StrToDate(FIni);
   //FToolRegGlobal.dtpHasta.Date := Date;
   //FToolRegGlobal.Height := 100;
   //FToolRegGlobal.Visible := False;
   //SacaMenu(Sender);
   //Mtx := TMant.Create(Self);

   Try
      FCobranzaGlobal:=TFCobranzaGlobal.Create(self);
      FIni := '01/' + IntToStr(M) + '/' + IntToStr(Y);
      FCobranzaGlobal.dtpDesde.Date := StrToDate(FIni);
      FCobranzaGlobal.dtpHasta.Date := Date;
      FCobranzaGlobal.ShowModal;
      FCobranzaGlobal.Free;

   //Try
      //Mtx.User := DM1.wUsuario;
      //Mtx.Admin := DM1.wAdmin;
      //Mtx.TableName := 'COB301';
      //Mtx.TablaLlave := 'RCOBID';
      //Mtx.Tabla2 := 'COB302';
      //Mtx.Tabla2Llave := 'RCOBID';
      //Mtx.ClientDataSet := DM1.cdsRegCob;
      //Mtx.ControlGridDisp := cgdPrincipal;
      //Mtx.Filter := '';
      //Mtx.DComC := DM1.DCOM1;
      //Mtx.Module := DM1.wModulo;
      //Mtx.Titulo := 'Registro Global de Cobranzas';
      //Mtx.OnCreateMant := PegaPanelRegGlobal;
      //Mtx.OnInsert := OnInsertRegGlobalCob;
      //Mtx.OnEdit := OnEditRegGlobalCob;
      //Mtx.OnDelete := OnDeleteRegGlobalCob;
      //Mtx.OnShow := Nil;
      //Mtx.ControlGridDisp := cgdPrincipal;
      //Mtx.SectionName := 'COBRegGlobalCob';
      //Mtx.FileNameIni := '\SOLCOB.INI';
      //Mtx.Execute;
   Finally
      //Mtx.Free;
      //FRegGlobalCob.Free;
// Fin: SPP_201310_COB       : 08/07/2013  Agregar Campos a Filtro de Cobranza Global

      DM1.cdsRegCob.Filter := '';
      DM1.cdsRegCob.Filtered := False;
      DM1.cdsRegCob.IndexFieldNames := '';
      DM1.cdsRegCob.Close;
      DM1.cdsDetRegCob.Filter := '';
      DM1.cdsDetRegCob.Filtered := False;
      DM1.cdsDetRegCob.IndexFieldNames := '';
      DM1.cdsDetRegCob.Close;
      DM1.cdsQry2.Filter := '';
      DM1.cdsQry2.Filtered := False;
      DM1.cdsQry2.IndexFieldNames := '';
      DM1.cdsQry2.Close;
      DM1.cdsQry3.Filter := '';
      DM1.cdsQry3.Filtered := False;
      DM1.cdsQry3.IndexFieldNames := '';
      DM1.cdsQry3.Close;
      DM1.cdsRepresentante.Filter := '';
      DM1.cdsRepresentante.Filtered := False;
      DM1.cdsRepresentante.IndexFieldNames := '';
      DM1.cdsRepresentante.Close;
      DM1.cdsBcos.Filter := '';
      DM1.cdsBcos.Filtered := False;
      DM1.cdsBcos.IndexFieldNames := '';
      DM1.cdsBcos.Close;
      DM1.cdsTMoneda.Filter := '';
      DM1.cdsTMoneda.Filtered := False;
      DM1.cdsTMoneda.IndexFieldNames := '';
      DM1.cdsTMoneda.Close;
      DM1.cdsAgenciaBco.Filter := '';
      DM1.cdsAgenciaBco.Filtered := False;
      DM1.cdsAgenciaBco.IndexFieldNames := '';
      DM1.cdsAgenciaBco.Close;
      DM1.cdsCuentas.Filter := '';
      DM1.cdsCuentas.Filtered := False;
      DM1.cdsCuentas.IndexFieldNames := '';
      DM1.cdsCuentas.Close;
      DM1.cdsFormaPago.Filter := '';
      DM1.cdsFormaPago.Filtered := False;
      DM1.cdsFormaPago.IndexFieldNames := '';
      DM1.cdsFormaPago.Close;
      DM1.cdsFPago.Filter := '';
      DM1.cdsFPago.Filtered := False;
      DM1.cdsFPago.IndexFieldNames := '';
      DM1.cdsFPago.Close;
   End;
End;

Procedure TFprincipal.PegaPanelRegGlobal(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolRegGlobal.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.OnInsertRegGlobalCob(Sender: TObject);
Begin
   DM1.wModo := 'A';
   FRegGlobalCob.ShowModal;
End;

Procedure TFprincipal.OnEditRegGlobalCob(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsRegCob.RecordCount = 0 Then
   Begin
      ShowMessage('No Existen Registros a Editar');
      Exit;
   End;
   DM1.wModo := 'M';
   FRegGlobalCob.ShowModal;
End;

Procedure TFprincipal.OnDeleteRegGlobalCob(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'ANULADO' Then
   Begin
      Information(Caption, 'Documento ya fue Anulado. Verificar...');
      Exit;
   End;
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'INICIAL' Then
   Begin
      // Si está Aceptado
      xSQL := 'SELECT COUNT(*) NUMREG FROM COB302 '
         + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
         + ' and RCOBESTADO=''ACEPTADO''';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;
      If DM1.cdsQry6.FieldByName('NUMREG').AsInteger > 0 Then
      Begin
         Screen.Cursor := crDefault;
         Information(Caption, 'No se puede Eliminar por esta opción, porque existen detalles Aceptados (COB302). Verificar...');
         Exit;
      End;
      If Question(Caption, '¿Esta Seguro de Eliminar el Registro Actual y su Detalle? ' + #13 + #13 + 'Desea Continuar') Then
      Begin
         Screen.Cursor := crHourGlass;
         xSQL := 'DELETE FROM COB302'
            + ' WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         xBorrar := '1';
         DM1.cdsRegCob.Delete;
         DM1.AplicaDatos(DM1.cdsRegCob, 'REGCOB');
         xBorrar := '0';
         Screen.Cursor := crDefault;
         ShowMessage('¡ Eliminación Completada !');
         Exit;
      End;
   End;
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'ACEPTADO' Then
   Begin
      If Question(Caption, ' Registro se encuentra ACEPTADO ' + #13 + #13 + 'Desea Continuar') Then
      Begin
         xSQL := 'SELECT COUNT(*) NUMREG FROM COB304 '
            + ' WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
            + ' and ( NVL(FTRANSFC,''N'')=''S'' OR NVL(FTRANSFAC,''N'')=''S'' )';
         DM1.cdsQry6.Close;
         DM1.cdsQry6.DataRequest(xSQL);
         DM1.cdsQry6.Open;
         If DM1.cdsQry6.FieldByName('NUMREG').AsInteger > 0 Then
         Begin
            Screen.Cursor := crDefault;
            Information(Caption, 'No se puede Anular, porque ya se hizo descargo de Archivos (CRE310). Verificar...');
            Exit;
         End;
         If Question(Caption, '¿Esta Seguro de Anular el Registro Actual y su Detalle? ' + #13 + #13 + 'Desea Continuar') Then
         Begin
            Screen.Cursor := crHourGlass;
            xSQL := ' SELECT ARCHIVO, COUNT(*) NUMREG '
               + '   FROM COB304 '
               + '  WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
               + '  GROUP BY ARCHIVO';
            DM1.cdsQry6.Close;
            DM1.cdsQry6.DataRequest(xSQL);
            DM1.cdsQry6.Open;
            While Not DM1.cdsQry6.Eof Do
            Begin
               xSQL := 'UPDATE COB310 '
                  + '   SET FL_TRANSF = NULL '
                  + ' WHERE ARCHIVO   = ''' + DM1.cdsQry6.FieldByName('ARCHIVO').AsString + '''';
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
               xSQL := 'UPDATE COB312 '
                  + '   SET FL_TRANSF = NULL '
                  + ' WHERE ARCHIVO   = ''' + DM1.cdsQry6.FieldByName('ARCHIVO').AsString + '''';
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
               DM1.cdsQry6.Next;
            End;
            xSQL := 'DELETE FROM COB304 '
               + ' WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            xSQL := 'DELETE FROM COB303 '
               + ' WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            xSQL := 'DELETE FROM COB302 '
               + ' WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            xBorrar := '1';
            DM1.cdsRegCob.Edit;
            DM1.cdsRegCob.FieldByname('RCOBESTADO').AsString := 'ANULADO';
            DM1.cdsRegCob.FieldByname('RCOBMTO').AsFloat := 0;
            DM1.cdsRegCob.FieldByname('RCOBBRU').AsFloat := 0;
            DM1.cdsRegCob.FieldByname('RCOBDED').AsFloat := 0;
            DM1.cdsRegCob.Post;
            DM1.AplicaDatos(DM1.cdsRegCob, 'REGCOB');
            xBorrar := '0';
            Screen.Cursor := crDefault;
            ShowMessage('¡ Anulación Completada !');
         End;
      End;
   End;
End;

Procedure TFprincipal.Z1sbClientesClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FClientes := TFClientes.create(Self);
      FClientes.ShowModal;
   Finally
      FClientes.Free;
   End;
End;

Procedure TFprincipal.Z1sbRecalendarizacionClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   SacaMenu(Sender);
   FRecalendarizacion := TFRecalendarizacion.Create(Self);
   Try
      FRecalendarizacion.ShowModal
   Finally
      FRecalendarizacion.free
   End;
End;

Procedure TFprincipal.Z1sbGeneracionOficiosClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   Try
      xSQL := 'SELECT CODDES,NOMDES,FECINI,FECFIN,FECOPE,NUMOFI,ANOOFI, '
         + '       TOTREG,MONOFI,OFIESTADO '
         + '  FROM MDEVOFI '
         + ' ORDER BY CODDES,ANOOFI,NUMOFI';
      DM1.cdsOfDes.Close;
      DM1.cdsOfDes.DataRequest(xSQL);
      DM1.cdsOfDes.Open;
      TNumericField(DM1.cdsOfDes.fieldbyname('TOTREG')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsOfDes.fieldbyname('MONOFI')).DisplayFormat := '###,###.#0';
      fGenOficios := TfGenOficios.create(Self);
      fGenOficios.ShowModal;
      DM1.cdsOfDes.Close
   Finally
      fGenOficios.Free;
      DM1.cdsOfDes.Close;
   End;
End;

Procedure TFprincipal.Z1sbReclamosClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   DM1.FiltraCds(DM1.cdsUPro, 'SELECT UPROID, UPRONOM FROM APO102');
   DM1.cdsUPro.IndexFieldNames := 'UPROID';
   DM1.FiltraCds(DM1.cdsUPago, 'SELECT UPAGOID, UPAGONOM, UPROID FROM APO103');
   DM1.cdsUPago.IndexFieldNames := 'UPAGOID';
   DM1.FiltraCds(DM1.cdsUses, 'SELECT USEID, USENOM, UPROID, UPAGOID FROM APO101');
   DM1.cdsUses.IndexFieldNames := 'USEID';
   DM1.FiltraCds(DM1.cdsFormaPago, 'SELECT FORPAGOID, FORPAGODES, TIPO FROM COB101');
   DM1.cdsFormaPago.IndexFieldNames := 'FORPAGOID';
   DM1.FiltraCds(DM1.cdsTMone, 'SELECT TMONID, TMONDES FROM TGE103');
   DM1.cdsTMone.IndexFieldNames := 'TMONID';
   DM1.Filtracds(DM1.cdsReclamoMotiv, 'SELECT * FROM APO114 WHERE RECF =' + QuotedStr('COB'));
   DM1.cdsReclamoMotiv.IndexFieldNames := 'RECLMOTID';
   DM1.Filtracds(DM1.cdsTCredito, 'SELECT * FROM CRE110');
   DM1.cdsTCredito.IndexFieldNames := 'TIPCREID';
   DM1.Filtracds(DM1.cdsTMone, 'SELECT * FROM TGE103');
   DM1.cdsTMone.IndexFieldNames := 'TMONID';
   FReclamosCob := TFReclamosCob.Create(Self);
   Mtx := TMant.Create(Self);
   Try
      Mtx.User := DM1.wUsuario;
      Mtx.Admin := DM1.wAdmin;
      Mtx.Module := DM1.wModulo;
      Mtx.DComC := DM1.DCOM1;
      Mtx.ControlGridDisp := cgdPrincipal;
      Mtx.TableName := 'COB307';
      Mtx.ClientDataSet := DM1.cdsReclamo;
      Mtx.Titulo := 'Reclamos de Cobranzas';
      Mtx.OnInsert := OnInsertReclamo;
      Mtx.OnEdit := OnEditReclamo;
      Mtx.OnDelete := OnNoDelete;
      Mtx.SectionName := 'Reclamos';
      Mtx.FileNameIni := '\SolCOB.ini';
// Inicio: SPP_201402_COB   : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB      : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
      FReclamosCob.Free;
      DM1.cdsUPro.Close;
      DM1.cdsUPago.Close;
      DM1.cdsUses.Close;
      DM1.cdsTmone.Close;
      DM1.cdsReclamoMotiv.Close;
      DM1.cdsFormaPago.Close;
      DM1.cdsTCredito.Close;
      DM1.cdsTMone.Close;
   End;
End;

Procedure TFprincipal.OnInsertReclamo(Sender: TObject);
Begin
   DM1.wModo := 'A';
   FReclamosCob.ShowModal;
End;

Procedure TFprincipal.OnEditReclamo(Sender: TObject; MantFields: TFields);
Begin
   DM1.wModo := 'M';
   If DM1.cdsReclamo.RecordCount = 0 Then
   Begin
      ShowMessage('No Existen Registros a Editar');
      Exit;
   End;
   FReclamosCob.ShowModal;
End;

Procedure TFprincipal.PegaDevCuota(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolDevCuota.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.spdContabilizacionClick(Sender: TObject);
Begin
   If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
      Exit;
   End;
   If pnlContab.Visible Then
      pnlContab.Visible := False
   Else
      pnlContab.Visible := True;
   Paneldevoluciones.Visible := False;
   pnlCtaRec.Visible := False;
   pnlContab.Left := pnlProcesos.Left + pnlProcesos.Width - 20;
   pnlContab.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
End;

Procedure TFprincipal.sbPlantillaClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FPlantilla := TFPlantilla.create(Self);
      FPlantilla.ShowModal;
   Finally
      FPlantilla.Free;
   End;
End;

Procedure TFprincipal.Z1sbRefinanciacionMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   pnlAutdisk.Visible := false;
End;

Procedure TFprincipal.Z1sbConveniosClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   FConvenios := TFConvenios.create(Self);
   SacaMenu(Sender);
   Mtx := TMant.Create(Self);
   Try
      Mtx.Admin := DM1.wAdmin;
      Mtx.User := DM1.wUsuario;
      Mtx.TableName := 'COB202';
      Mtx.ClientDataSet := DM1.cdsConvenio;
      Mtx.ControlGridDisp := cgdPrincipal;
      Mtx.DComC := DM1.DCOM1;
      Mtx.Module := DM1.wModulo;
      Mtx.Titulo := 'Maestro de Convenios';
      Mtx.OnInsert := OnInsertConvenio;
      Mtx.OnEdit := OnEditConvenio;
      Mtx.OnDelete := OnDeleteConvenio;
      Mtx.SectionName := 'COBConvenio';
      Mtx.FileNameIni := '\SOLCOB.INI';
      Screen.Cursor := crDefault;
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
      FConvenios.Free;
   End;
End;

Procedure TFprincipal.OnInsertConvenio(Sender: TObject);
Begin
   DM1.wModo := 'A';
   DM1.cdsConvenio.Insert;
   DM1.cdsConvenio.FieldByName('CONVID').AsString := DM1.strZero(DM1.MaxSQL('COB202', 'CONVID', ''), 5);
   FConvenios.dblcConvid.Text := DM1.cdsConvenio.FieldByName('CONVID').AsString;
   FConvenios.ShowModal;
End;

Procedure TFprincipal.OnEditConvenio(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsConvenio.RecordCount = 0 Then
   Begin
      ErrorMsg('Error', 'No existen Registros a Editar');
      Exit;
   End;
   DM1.wModo := 'M';
   DM1.cdsConvenio.Edit;
   Fconvenios.edita;
   FConvenios.ShowModal;
End;

Procedure TFprincipal.OnDeleteConvenio(Sender: TObject; MantFields: TFields);
Begin
   If Length(Trim(DM1.cdsConvenio.FieldByName('FLAGREN').asstring)) > 0 Then
   Begin
      ErrorMsg(Caption, 'Este Convenio no Puede ser Eliminado');
      Exit;
   End;
   If Question('Confirmar', 'Esta Seguro de Eliminar El Convenio ' + #13 + #13 +
      DM1.cdsConvenio.FieldByName('CONVID').AsString + '  -  ' + #13 +
      #13 + ' Desea Continuar ') Then
   Begin
      xBorrar := '1';
      DM1.cdsConvenio.Delete;
      DM1.AplicaDatos(DM1.cdsConvenio, 'CONVENIO');
      xBorrar := '0';
   End;
End;

Procedure TFprincipal.SpeedButton7Click(Sender: TObject);
Begin
   SacaMenu(Sender);
   DM1.cdsUSES.Close;
   DM1.cdsUPro.Close;
   DM1.cdsUPago.Close;
   DM1.FiltraTabla(DM1.cdsUSES, 'APO101', 'USEID');
   DM1.FiltraTabla(DM1.cdsUPro, 'APO102', 'UPROID');
   DM1.FiltraTabla(DM1.cdsUPago, 'APO103', 'UPAGOID');
   FToolsDescarga := TFToolsDescarga.create(Self);
   Mtx := TMant.Create(Self);
   Try
      Mtx.Admin := DM1.wAdmin;
      Mtx.User := DM1.wUsuario;
      Mtx.TableName := 'COB312';
      Mtx.ClientDataSet := DM1.cdsDetalle;
      mtx.Filter := '';
      Mtx.DComC := DM1.DCOM1;
      Mtx.Module := DM1.wModulo;
      Mtx.Titulo := 'Descarga de Datos';
      Mtx.OnCreateMant := PegaPanelToolDes;
      Mtx.OnInsert := Nil;
      Mtx.OnEdit := Nil;
      Mtx.OnDelete := OnDeleteDescarga;
      Mtx.OnShow := Nil;
      Mtx.ControlGridDisp := cgdAutDisk;
      Mtx.SectionName := 'COBDescarga';
      Mtx.FileNameIni := '\SOLCOB.INI';
      Mtx.UserCheckB.Add('FLAG');
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
      FToolsDescarga.Free;
   End;
   DM1.cdsUSES.Close;
   DM1.cdsUPago.Close;
   DM1.cdsUPro.Close;
End;

Procedure TFprincipal.PegaPanelToolCar(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolsCarga.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.OnDeleteCarga(Sender: TObject; MantFields: TFields);
Begin
   If Not Question(Caption, 'Seguro de Eliminar Archivo') Then
   Begin
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   DM1.cdsqry5.Delete;
   DM1.AplicaDatos(DM1.cdsqry5, '');
   Screen.Cursor := crDefault;
   ShowMessage('Eliminado Ok');
End;

Procedure TFprincipal.SpeedButton48Click(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FRepDocentesActivos := TFRepDocentesActivos.create(Self);
      FRepDocentesActivos.ShowModal;
   Finally
      FRepDocentesActivos.Free;
   End;
End;

Procedure TFprincipal.OnShowAsociado(Sender: TObject);
Begin
End;

Procedure TFprincipal.PegaPanelToolAso(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolAso.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.Z1sbReferenciasClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Mtx := TMant.Create(Self);
   Try
      Mtx.Admin := DM1.wAdmin;
      Mtx.User := DM1.wUsuario;
      Mtx.OnCreateMant := IniciaParametros;
      Mtx.TableName := '';
      Mtx.ClientDataSet := Nil;
      mtx.Filter := '';
      Mtx.DComC := DM1.DCOM1;
      Mtx.Module := DM1.wModulo;
      Mtx.Titulo := '';
      Mtx.OnInsert := Nil;
      Mtx.OnEdit := Nil;
      Mtx.OnDelete := Nil;
      Mtx.OnShow := Nil;
      Mtx.ControlGridDisp := cgdPrincipal;
      Mtx.SectionName := '';
      Mtx.FileNameIni := '';
// Inicio: SPP_201402_COB   : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB      : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
   End;
End;

Procedure TFprincipal.OnInsertAsociado(Sender: TObject);
Begin
   DM1.wModo := 'A';
   DM1.cdsAso.Insert;
   DM1.cdsAso.FieldByName('ASOID').AsString := DM1.StrZero(DM1.MaxSQL('APO201', 'ASOID', ''), 10);
   FAsociados.dbeCodigo.Text := DM1.cdsAso.FieldByName('ASOID').AsString;
   FAsociados.ShowModal;
End;

Procedure TFprincipal.OnEditAsociado(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsAso.RecordCount = 0 Then
   Begin
      ErrorMsg('Error', 'No existen Registros a Editar');
      Exit;
   End;
   DM1.wModo := 'M';
   DM1.cdsAso.Edit;
   FAsociados.ShowModal;
End;

Procedure TFprincipal.AbreTablasAso;
Begin
   sSQL := 'SELECT DPTOID,DPTODES,DPTOABR '
      + 'FROM APO158 '
      + 'ORDER BY DPTOID';
   DM1.FiltraCDS(DM1.cdsDpto, sSQL);
   sSQL := 'SELECT ESTCIVID,ESTCIVDES,ESTCIVABR '
      + 'FROM TGE125 '
      + 'ORDER BY ESTCIVID';
   DM1.FiltraCDS(DM1.cdsEstCiv, sSQL);
   sSQL := 'SELECT GRAACID,GRAACDES,GRAACABR '
      + 'FROM TGE123 '
      + 'ORDER BY GRAACID';
   DM1.FiltraCDS(DM1.cdsGradoA, sSQL);
   sSQL := 'SELECT GRAINSID,GRAINSDES,GRAINSABR '
      + 'FROM TGE119 '
      + 'ORDER BY GRAINSID';
   DM1.FiltraCDS(DM1.cdsGradoI, sSQL);
   sSQL := 'SELECT PAISID,PAISDES,PAISABR,FNACIONAL '
      + 'FROM TGE118 '
      + 'ORDER BY PAISID';
   DM1.FiltraCDS(DM1.cdsPais, sSQL);
   sSQL := 'SELECT ASOTIPID,ASOTIPDES,ASOTIPABR,USUARIO '
      + 'FROM APO107 '
      + 'ORDER BY ASOTIPID';
   DM1.FiltraCDS(DM1.cdsTAso, sSQL);
   sSQL := 'SELECT ASOSITID,ASOSITDES,ASOSITABR,ASOFACT,USUARIO '
      + 'FROM APO106 '
      + 'ORDER BY ASOSITID';
   DM1.FiltraCDS(DM1.cdsSAso, sSQL);
   sSQL := 'SELECT CARGOID,CARGODES,USUARIO '
      + 'FROM APO111 '
      + 'ORDER BY CARGOID';
   DM1.FiltraCDS(DM1.cdsCAso, sSQL);
   sSQL := 'SELECT TIPDOCCOD,TIPDOCDES,TIPDOCABR '
      + 'FROM TGE159 '
      + 'ORDER BY TIPDOCCOD';
   DM1.FiltraCDS(DM1.cdsTDoc, sSQL);
   sSQL := 'SELECT TIPRESID,TIPRESDES,TIPRESABRE,USUARIO '
      + 'FROM APO104 '
      + 'ORDER BY TIPRESID';
   DM1.FiltraCDS(DM1.cdsTResol, sSQL);
   sSQL := 'SELECT TIPVIAID,TIPVIADES '
      + 'FROM TGE145 '
      + 'ORDER BY TIPVIAID';
   DM1.FiltraCDS(DM1.cdsTVia, sSQL);
   sSQL := 'SELECT TIPZONAID,TIPZONADES '
      + 'FROM TGE146 '
      + 'ORDER BY TIPZONAID';
   DM1.FiltraCDS(DM1.cdsTZona, sSQL);
   sSQL := 'SELECT UBIGEOID,UBIGEODES,UBIGEODPTO,UBIGEOPROV,UBIGEODIST '
      + 'FROM TGE147 '
      + 'ORDER BY UBIGEOID';
   DM1.FiltraCDS(DM1.cdsUbigeo, sSQL);
   sSQL := 'SELECT PROFID,PROFDES '
      + 'FROM TGE124 '
      + 'ORDER BY PROFID ';
   DM1.FiltraCDS(DM1.cdsProf, sSQL);
   sSQL := 'SELECT CIUDID,CIUDDES,DPTOID '
      + 'FROM APO123 '
      + 'ORDER BY CIUDID';
   DM1.FiltraCDS(DM1.cdsProvin, sSQL);
   sSQL := 'SELECT PARENID,PARENDES,PARENABR '
      + 'FROM TGE149 '
      + 'ORDER BY PARENID';
   DM1.FiltraCDS(DM1.cdsTRela, sSQL);
//-----------------------------------------------------------
   sSQL := 'SELECT REGPENID,REGPENDES,REGPENABR,USUARIO '
      + 'FROM APO105 '
      + 'ORDER BY REGPENID';
   DM1.FiltraCDS(DM1.cdsTPension, sSQL);
   sSQL := 'SELECT ESTCIVID,ESTCIVDES,ESTCIVABR '
      + 'FROM TGE125 '
      + 'ORDER BY ESTCIVID';
   DM1.FiltraCDS(DM1.cdsEstCiv, sSQL);
   sSQL := 'SELECT * '
      + 'FROM APO103 '
      + 'ORDER BY UPAGOID';
   DM1.FiltraCDS(DM1.cdsUPago, sSQL);
   sSQL := 'SELECT * '
      + 'FROM APO102 '
      + 'ORDER BY UPROID';
   DM1.FiltraCDS(DM1.cdsUPro, sSQL);
   sSQL := 'SELECT * '
      + 'FROM APO101 '
      + 'ORDER BY USEID';
   DM1.FiltraCDS(DM1.cdsUSES, sSQL);
   sSQL := 'SELECT BANCOID,BANCONOM '
      + 'FROM TGE105 '
      + 'ORDER BY BANCOID';
   DM1.FiltraCDS(DM1.cdsBcos, sSQL);
End;

Procedure TFPrincipal.OnDeleteAsociado(Sender: TObject; MantFields: TFields);
Begin
   If Not Question(Caption, '¿Esta Seguro de Eliminar el Registro Actual y su Detalle? ' + #13 + #13 + 'Desea Continuar') Then
   Begin
      Exit;
   End;
   If (DM1.cdsAso.FieldByName('ASOFLUGING').AsString = 'S') Then
   Begin
      If (DM1.cdsAso.FieldByName('ASOFMOV').AsString = 'S') Then
      Begin
         ShowMessage('No se puede Eliminar al Asociado, porque tiene Movimientos Registrados');
         Exit;
      End;
   End
   Else
   Begin
      If (DM1.cdsAso.FieldByName('ASOFLUGING').AsString = 'F') Then
      Begin
         ShowMessage('No se puede Eliminar al Asociado, porque tiene Movimientos Registrados');
         Exit;
      End;
   End;
   xBorrar := '1';
   DM1.cdsAso.Delete;
   DM1.AplicaDatos(DM1.cdsAso, 'ASOCIADOS');
   xBorrar := '0';
   Screen.Cursor := crDefault;
   ShowMessage('¡ Eliminación Completada !');
End;

Procedure TFPrincipal.OnNoDelete(Sender: TObject; MantFields: TFields);
Begin
   Information(Caption, 'No se Puede eliminar el Registro');
End;

Procedure TFPrincipal.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.DCOM1.Connected := False;
   Application.Terminate;
End;

Procedure TFPrincipal.SpeedButton8MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   pnlActualiza.Left := pnlAutDisk.Left - pnlActualiza.Width;
   pnlActualiza.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlActualiza.Visible := true
End;

Procedure TFPrincipal.PegaPanelToolActCre(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolCre.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFPrincipal.SpeedButton55Click(Sender: TObject);
Var
   SQL: String;
Begin
   SacaMenu(Sender);
   SQL := 'SELECT ASOID, CREMTO, FLAGACT FROM CRE400 WHERE FLAGACT=''N''';
   Screen.Cursor := crHourGlass;
   FToolCre := TFToolCre.Create(Self);
   Mtx := TMant.Create(Self);
   Try
      Mtx.Admin := DM1.wAdmin;
      Mtx.User := DM1.wUsuario;
      Mtx.TableName := 'VWCOBACTCREDITO';
      Mtx.ClientDataSet := DM1.cdsQry;
      Mtx.Filter := '';
      Mtx.DComC := DM1.DCOM1;
      Mtx.Module := DM1.wModulo;
      Mtx.Titulo := 'Actualización de Créditos';
      Mtx.OnInsert := Nil;
      Mtx.OnEdit := Nil;
      Mtx.OnCreateMant := PegaPanelToolActCre;
      Mtx.OnDelete := Nil;
      Mtx.OnShow := Nil;
      Mtx.ControlGridDisp := cgdPrincipal;
      Mtx.UsuarioSQL.Add(SQL);
      Mtx.FileNameIni := '\SOLAPO.INI';
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
      Screen.Cursor := crDefault;
   Finally
      Screen.Cursor := crHourGlass;
      FToolCre.Free;
      Mtx.Free;
      DM1.cdsQry.Close;
      Screen.Cursor := crDefault;
   End;
End;


Procedure TFPrincipal.PegaPanelToolActApo(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolActApo.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFPrincipal.SpeedButton10Click(Sender: TObject);
Var
   SQL: String;
Begin
   SacaMenu(Sender);
   DM1.Filtracds(DM1.cdsUPago, 'SELECT * FROM APO103');
   DM1.Filtracds(DM1.cdsUSES, 'SELECT * FROM APO101');
   SQL := 'SELECT * FROM APO400 WHERE FLAGACT<>''S''';
   Screen.Cursor := crHourGlass;
   FToolActApo := TFToolActApo.Create(Self);
   Mtx := TMant.Create(Self);
   Try
      Mtx.Admin := DM1.wAdmin;
      Mtx.User := DM1.wUsuario;
      Mtx.TableName := 'VWCOBACTAPORTE';
      Mtx.ClientDataSet := DM1.cdsQry;
      Mtx.Filter := '';
      Mtx.DComC := DM1.DCOM1;
      Mtx.Module := DM1.wModulo;
      Mtx.Titulo := 'Actualización de Aportes';
      Mtx.OnInsert := Nil;
      Mtx.OnEdit := Nil;
      Mtx.OnCreateMant := PegaPanelToolActApo;
      Mtx.OnDelete := Nil;
      Mtx.OnShow := Nil;
      Mtx.ControlGridDisp := cgdPrincipal;
      Mtx.UsuarioSQL.Add(SQL);
      Mtx.FileNameIni := '\SOLApo.INI';
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
      Screen.Cursor := crDefault;
   Finally
      FToolActApo.Free;
      Mtx.Free;
      Screen.Cursor := crHourGlass;
      DM1.cdsUPago.Close;
      DM1.cdsUSES.Close;
      DM1.cdsQry.Close;
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFPrincipal.PegaPanelToolDes(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolsDescarga.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFPrincipal.OnEditDescarga(Sender: TObject; MantFields: TFields);
Begin
   Try
      FEditaDescarga := TFEditaDescarga.Create(SELF);
      FEditaDescarga.ShowModal;
   Finally
      FEditaDescarga.Free;
   End
End;

Procedure TFPrincipal.OnDeleteDescarga(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsDetalle.FieldByname('FL_TRANSF').AsString = 'S' Then
   Begin
      Information(Caption, 'Archivo no se puede Eliminar. Ya se han Transferido Registros');
      Exit;
   End;
   If DM1.cdsDetalle.FieldByname('FL_GENER').AsString = 'S' Then
   Begin
      xSQL := 'SELECT * '
         + '  FROM COB310 '
         + ' WHERE ARCHIVO=' + quotedstr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)
         + '   AND PERIODO=' + quotedstr(DM1.cdsDetalle.FieldByname('PERIODO').AsString);
      dm1.cdsHijo.Close;
      dm1.cdsHijo.DataRequest(xSQL);
      dm1.cdsHijo.Open;
      If dm1.cdsHijo.RecordCount > 0 Then
      Begin
         Information(Caption, 'Archivo no se puede Eliminar. Este Archivo a Sido Generado por Otro Archivo');
         Exit;
      End;
   End;
   If Not Question(Caption, 'Seguro de Eliminar Archivo') Then
   Begin
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xSQL := 'DELETE from COB306 '
      + ' WHERE ARCHIVO=''' + DM1.cdsDetalle.FieldByname('ARCHIVO').AsString + ''' AND '
      + '       PERIODO=''' + DM1.cdsDetalle.FieldByname('PERIODO').AsString + '''';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   xSQL := 'DELETE from COB310 '
      + ' WHERE ARCHIVO  =''' + DM1.cdsDetalle.FieldByname('ARCHIVO').AsString + ''' '
      + '   AND TRANSANO =''' + Copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString, 1, 4) + ''' '
      + '   AND TRANSMES =''' + Copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString, 5, 2) + '''';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   DM1.cdsDetalle.Delete;
   DM1.AplicaDatos(DM1.cdsDetalle, '');
   Screen.Cursor := crDefault;
   ShowMessage('Eliminado Ok');
End;

Procedure TFPrincipal.CreaAccesos;
Begin
// Inicio: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
{   If FMantAcceso <> Nil Then Exit;
   FMantAcceso := TFMantAcceso.Create(Self);
   FMantAcceso.sSRV_D := SRV_D;
   FMantAcceso.wDCOM1 := DM1.DCOM1;
   FMantAcceso.wcdsAcceso := DM1.cdsAcceso;
   FMantAcceso.wcdsGrupos := DM1.cdsGrupos;
   FMantAcceso.wcdsMGrupo := DM1.cdsMGrupo;
   FMantAcceso.wcdsUsuarios := DM1.cdsUsuarios;
   FMantAcceso.wcdsResultSet := DM1.cdsResultSet;
   FMantAcceso.wcdsUser := DM1.cdsUser;
   FMantAcceso.wFPrincipal := FPrincipal;
   FMantAcceso.sModulo := DM1.wModulo;
   With FMantAcceso Do
   Try
      ShowModal;
   Finally
      DM1.wGrupoTmp := FMantAcceso.sGrupoTmp;
      Free;
   End;
   FMantAcceso := Nil;}
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket

End;

Procedure TFPrincipal.CreaOpciones;
Begin
// Inicio: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
{   If FMantOpcion <> Nil Then Exit;
   FMantOpcion := TFMantOpcion.Create(Self);
   FMantOpcion.wcdsAcceso := DM1.cdsAcceso;
   FMantOpcion.wcdsGrupos := DM1.cdsGrupos;
   FMantOpcion.wcdsMGrupo := DM1.cdsMGrupo;
   FMantOpcion.wcdsUsuarios := DM1.cdsUsuarios;
   FMantOpcion.wcdsResultSet := DM1.cdsResultSet;
   FMantOpcion.wDCOM1 := DM1.DCOM1;
   FMantOpcion.sGrupoTmp := DM1.wGrupoTmp;
   FMantOpcion.sObjetoDescr := DM1.wObjetoDescr;
   FMantOpcion.sObjetoForma := DM1.wObjetoForma;
   FMantOpcion.sObjetoNombr := DM1.wObjetoNombr;
   FMantOpcion.sModulo := DM1.wModulo;
   FMantOpcion.wFPrincipal := FPrincipal;
   With FMantOpcion Do
   Try
      If Length(DM1.wGrupoTmp) > 0 Then
      Begin
         ShowModal;
      End;
   Finally
      Free;
   End;
   FMantOpcion := Nil;}
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
End;

Procedure TFPrincipal.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      If Self.ActiveControl Is TDBMemo Then
         Exit;
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFPrincipal.Accesos;
Begin
   xSQL2 := 'SELECT * FROM TGE004 '
      + ' WHERE MODULOID =' + '''' + DM1.wModulo + ''''
      + '   AND  USERID  =' + '''' + DM1.wUsuario + '''';
   DM1.cdsAcceso.Close;
   DM1.cdsAcceso.DataRequest(xSQL2);
   DM1.cdsAcceso.Open;
   sSQL := 'SELECT UBIGEOID, UBIGEODES, UBIGEODPTO, UBIGEOPROV, UBIGEODIST '
      + '  FROM TGE147 '
      + ' WHERE UBIGEODIST IS NOT NULL '
      + ' ORDER BY UBIGEODIST';
   DM1.FiltraCDS(DM1.cdsUbigeo, sSQL);
   DM1.FiltraTabla(DM1.cdsProf, 'TGE124', 'PROFID');
   sSQL := 'SELECT UBIGEOID, UBIGEODES, UBIGEODPTO, UBIGEOPROV, UBIGEODIST '
      + '  FROM TGE147 '
      + ' WHERE UBIGEODIST IS NOT NULL '
      + ' ORDER BY UBIGEODIST';
   DM1.FiltraCDS(DM1.cdsLugNac, sSQL);
   DM1.FiltraTabla(DM1.cdsTRela, 'TGE149', 'PARENID');
   DM1.FiltraTabla(DM1.cdsTDoc, 'TGE159', 'TIPDOCCOD');
   DM1.FiltraTabla(DM1.cdsBcos, 'TGE105', 'BANCOID');
   DM1.FiltraTabla(DM1.cdsCuentas, 'TGE106', 'CCBCOID');
   DM1.FiltraTabla(DM1.cdsFormaPago, 'COB101', 'FORPAGOID');
   DM1.FiltraTabla(DM1.cdsSitCta, 'COB103', 'SITCTAID');
   DM1.FiltraTabla(DM1.cdsSitRepr, 'COB104', 'REPRSITID');
   DM1.FiltraTabla(DM1.cdsFRepr, 'COB105', 'FORREPRID');
   DM1.AbreCDS(DM1.cdsFPago, 'SELECT * FROM TGE112');
   DM1.FiltraTabla(DM1.cdsTMoneda, 'TGE103', 'TMONID');
End;

Procedure TFprincipal.Z1sbIngresoLoteClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   xSQL := 'SELECT * FROM APO101';
   DM1.cdsUses.Close;
   DM1.cdsUses.DataRequest(xSQL);
   DM1.cdsUses.Open;
   DM1.FiltraCds(DM1.cdsAgenciaBco, 'SELECT BANCOID, AGENBCOID, AGENBCODES '
      + 'FROM COB102');
   DM1.cdsAgenciaBco.IndexFieldNames := 'BANCOID;AGENBCOID';
   xSQL := 'SELECT REPRID, UPROID, RCOBANO, RCOBMES, REPRAPENOM, SUM(CPAGOMTO) CPAGOMTO, USUARIO '
      + 'FROM COB302 '
      + 'WHERE RCOBESTADO =' + QuotedStr('ACEPTADO') + ' '
      + 'GROUP BY REPRID, UPROID, RCOBANO, RCOBMES, REPRAPENOM, USUARIO';
   Mtx := TMant.Create(Self);
   FToolIngLote := TFToolIngLote.Create(Self);
   FIni := '01/' + IntToStr(M) + '/' + IntToStr(Y);
   FToolIngLote.dtpDesde.Date := StrToDate(FIni);
   FToolIngLote.dtpHasta.Date := Date;
   FToolIngLote.Height := 100;
   FToolIngLote.Visible := False;
   Try
      Mtx.User := DM1.wUsuario;
      Mtx.Admin := DM1.wAdmin;
      Mtx.Module := DM1.wModulo;
      Mtx.DComC := DM1.DCOM1;
      Mtx.ControlGridDisp := cgdPrincipal;
      Mtx.OnCreateMant := PegaPanelIngLote;
      Mtx.TableName := 'VWAPOINGLOTEACUM';
      Mtx.Registros := 50;
      Mtx.ClientDataSet := DM1.cdsDetRegGlob;
      Mtx.Filter := 'RCOBESTADO =''ACEPTADO''';
      Mtx.Titulo := 'Registro de Cobranza - Ingreso en Lote';
      Mtx.OnInsert := Nil;
      Mtx.OnEdit := OnEditCobxUse;
      Mtx.OnDelete := Nil;
      Mtx.OnShow := Nil;
      Mtx.SectionName := 'CobxUse';
      Mtx.FileNameIni := '\SolCob.Ini';
      Mtx.UsuarioSQL.Add(xSQL);
// Inicio: SPP_201402_COB   : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB      : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
      FToolIngLote.Free;
      DM1.cdsAgenciaBco.Close;
   End;
End;

Procedure TFprincipal.PegaPanelIngLote(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolIngLote.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.OnEditCobxUse(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsDetRegGlob.RecordCount > 0 Then
   Begin
      SacaMenu(Sender);
      DM1.wModo := '';
      FToolIngLotVerApo := TFToolIngLotVerApo.Create(Self);
      FIngresoLote := TFIngresoLote.Create(Self);
      Mtx1 := TMant.Create(Self);
      Try
         Mtx1.User := DM1.wUsuario;
         Mtx1.Admin := DM1.wAdmin;
         Mtx1.Module := DM1.wModulo;
         Mtx1.DComC := DM1.DCOM1;
         Mtx1.ControlGridDisp := cgdPrincipal;
         Mtx1.OnCreateMant := PegaPanelIngLotVerApo;
         Mtx1.TableName := 'COB303';
         Mtx1.ClientDataSet := DM1.cdsCobxUse;
         Mtx1.Filter := 'COB303.RCOBANO =' + QuotedStr(DM1.cdsDetRegGlob.FieldByName('RCOBANO').AsString)
            + ' AND COB303.RCOBMES =' + QuotedStr(DM1.cdsDetRegGlob.FieldByName('RCOBMES').AsString)
            + ' AND COB303.REPRID  =' + QuotedStr(DM1.cdsDetRegGlob.FieldByName('REPRID').AsString)
            + ' AND COB303.UPROID  =' + QuotedStr(DM1.cdsDetRegGlob.FieldByName('UPROID').AsString)
            + ' AND COB303.USUARIO =' + QuotedStr(DM1.cdsDetRegGlob.FieldByName('USUARIO').AsString);
         Mtx1.TituloFont.Size := 15;
         Mtx1.Titulo := 'Repres.: ' + DM1.cdsDetRegGlob.FieldByName('REPRID').AsString + ' - ' + DM1.cdsDetRegGlob.FieldByName('REPRAPENOM').AsString;
         Mtx1.OnInsert := Nil;
         Mtx1.OnEdit := OnEditIngresoLote;
         Mtx1.OnDelete := OnNoDelete;
         Mtx1.OnShow := Nil;
         Mtx1.SectionName := 'IngresoLote';
         Mtx1.FileNameIni := '\SolCob.Ini';
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
         Mtx1.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
         Mtx1.Execute;
      Finally
         Mtx1.Free;
         FToolIngLotVerApo.Free;
         FIngresoLote.Free;
         DM1.cdsAutDisk.IndexFieldNames := '';
      End;
   End
   Else
   Begin
      ShowMessage('No Existen Registros a Editar');
   End;
End;

Procedure TFprincipal.PegaPanelIngLotVerApo(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolIngLotVerApo.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.OnEditIngresoLote(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsCobxUse.RecordCount = 0 Then
   Begin
      ShowMessage('No Existen Registros a Editar');
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT * FROM COB304 A'
      + ' WHERE A.RCOBID  =' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
      + ' AND A.DETRCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
      + ' AND A.USERCOBID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);
   DM1.wModo := 'M';
   Screen.Cursor := crDefault;
   FingresoLote.ShowModal;
End;

Procedure TFprincipal.Z1sbRegNotAboClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   FRegNAbono := TFRegNAbono.create(Self);
   FToolNAbono := TFToolNAbono.create(Self);
   sSQL := 'SELECT * FROM APO103 ORDER BY UPAGOID';
   DM1.FiltraCDS(DM1.cdsUPago, sSQL);
   sSQL := 'SELECT * FROM APO102 ORDER BY UPROID';
   DM1.FiltraCDS(DM1.cdsUPro, sSQL);
   sSQL := 'SELECT * FROM COB201 ';
   DM1.FiltraCDS(DM1.cdsRepresentante, sSQL);
   FIni := '01/' + IntToStr(M) + '/' + IntToStr(Y);
   FToolNAbono.dtpDesde.Date := StrToDate(FIni);
   FToolNAbono.dtpHasta.Date := Date;
   FToolNAbono.Height := 50;
   FToolNAbono.Visible := False;
   Mtx := TMant.Create(Self);
   Try
      Mtx.User := DM1.wUsuario;
      Mtx.Admin := DM1.wAdmin;
      Mtx.TableName := 'COB325';
      Mtx.TablaLlave := 'NAITEM';
      Mtx.Tabla2 := 'COB326';
      Mtx.Tabla2Llave := 'NAITEM';
      Mtx.ClientDataSet := DM1.cdsRegCob;
      Mtx.ControlGridDisp := cgdPrincipal;
      mtx.Filter := '';
      Mtx.DComC := DM1.DCOM1;
      Mtx.Module := DM1.wModulo;
      Mtx.Titulo := 'Registro Nota de Abono';
      Mtx.OnCreateMant := PegaPanelRegNAbono;
      Mtx.OnInsert := OnInsertRegNAbono;
      Mtx.OnEdit := OnEditRegnAbono;
      Mtx.OnDelete := OnDeleteRegNAbono;
      Mtx.OnShow := Nil;
      Mtx.ControlGridDisp := cgdPrincipal;
      Mtx.SectionName := 'COBRegNAbono';
      Mtx.FileNameIni := '\SOLCOB.INI';
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
      FRegNAbono.Free
   End;
End;

Procedure TFprincipal.PegaPanelRegNAbono(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolNAbono.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.OnInsertRegNAbono(Sender: TObject);
Begin
   DM1.wModo := 'A';
   FRegNAbono.ShowModal;
End;

Procedure TFprincipal.OnEditRegNAbono(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsRegCob.RecordCount = 0 Then
   Begin
      ShowMessage('No Existen Registros a Editar');
      Exit;
   End;
   DM1.wModo := 'M';
   FRegNAbono.ShowModal;
End;

Procedure TFprincipal.OnDeleteRegNAbono(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
   Begin
      Information(Caption, 'Solamente se Puede Eliminar Documentos en Estado Inicial');
      Exit;
   End;
   Exit;
   If Question(Caption, '¿Esta Seguro de Eliminar el Registro Actual y su Detalle? ' + #13 + #13 + 'Desea Continuar') Then
   Begin
      Screen.Cursor := crHourGlass;
      xSQL := 'DELETE FROM COB301 '
         + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      xSQL := 'DELETE FROM COB302 '
         + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      xBorrar := '1';
      DM1.cdsRegCob.Delete;
      DM1.AplicaDatos(DM1.cdsRegCob, 'REGCOB');
      xBorrar := '0';
      Screen.Cursor := crDefault;
      ShowMessage('¡ Eliminación Completada !');
   End;
End;

Procedure TFprincipal.Z1sbTeleAhorroClick(Sender: TObject);
Var
   sSQL: String;
   wY, wM, wD: word;
Begin
   Screen.Cursor := crHourGlass;
   SacaMenu(Sender);
   DM1.cdsUSES.Close;
   DM1.cdsUPro.Close;
   DM1.cdsUPago.Close;
   DM1.cdsRegCob.Close;
   sSQL := 'SELECT ' + wRepFuncChar + wRepFecServi + ', ' + QuotedStr('DD/MM/YYYY') + ') "FECHA" FROM DUAL';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;
   DecodeDate(DM1.cdsReporte.FieldByName('FECHA').AsDateTime, wY, wM, wD);
   sSQL := 'SELECT * '
      + 'FROM COB325 '
      + 'WHERE NAANO =' + Quotedstr(FloatToStr(wY))
      + '  AND NAMES =' + Quotedstr(DM1.StrZero(FloatToStr(wM), 2));
   DM1.cdsRegCob.DataRequest(sSQL);
   DM1.cdsRegCob.Open;
   FToolTAhorro := TFToolTAhorro.create(Self);
   FToolTAhorro.xDirect := wRutaFTP + 'TeleAhorro\';
   Mtx := TMant.Create(Self);
   Try
      Mtx.Admin := DM1.wAdmin;
      Mtx.User := DM1.wUsuario;
      Mtx.TableName := 'COB327';
      Mtx.ClientDataSet := DM1.cdsDetalle;
      Mtx.DComC := DM1.DCOM1;
      Mtx.Module := DM1.wModulo;
      Mtx.Titulo := 'Descarga de Datos TeleAhorro';
      Mtx.OnCreateMant := PegaPanelToolTAhorro;
      Mtx.OnDelete := OnDeleteTAhorro;
      Mtx.ControlGridDisp := cgdAutDisk;
      Mtx.SectionName := 'COBTAhorro';
      Mtx.FileNameIni := '\SOLCOB.INI';
      Mtx.UserCheckB.Add('FLAG');
      Screen.Cursor := crHourGlass;
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
      FToolTAhorro.Free
   End;
   DM1.cdsUSES.Close;
   DM1.cdsUPago.Close;
   DM1.cdsUPro.Close;
   DM1.cdsRegCob.Filter := '';
   DM1.cdsRegCob.Filtered := False;
   DM1.cdsRegCob.IndexFieldNames := '';
   DM1.cdsRegCob.Close;
End;

Procedure TFprincipal.PegaPanelToolTAhorro(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolTAhorro.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.PegaPanelToolIncTAhorro(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolIncosistencias.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.PegaPanelToolIncILote(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolIncoIng.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;


   IniciaParametros(Sender);
End;

Procedure TFprincipal.OnDeleteTAhorro(Sender: TObject; MantFields: TFields);
Begin
   Exit;
   ShowMessage('Masss');
   If DM1.cdsDetalle.FieldByName('FL_TRANSF').AsString = 'S' Then
   Begin
      Information(Caption, 'Archivo no se puede Eliminar. Ya se han Transferido Registros');
      Exit;
   End;
   If Not Question(Caption, 'Seguro de Eliminar Archivo') Then
   Begin
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xSQL := 'DELETE COB306 '
      + ' WHERE ARCHIVO=''' + DM1.cdsDetalle.FieldByname('ARCHIVO').AsString + ''' '
      + '  AND PERIODO=''' + DM1.cdsDetalle.FieldByname('PERIODO').AsString + '''';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   xSQL := 'DELETE COB310 '
      + ' WHERE ARCHIVO =' + quotedstr(DM1.cdsDetalle.FieldByname('ARCHIVO').AsString)
      + '   AND TRANSANO=' + quotedstr(Copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString, 1, 4))
      + '   AND TRANSMES=' + quotedstr(Copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString, 5, 2));
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   DM1.cdsDetalle.Delete;
   DM1.AplicaDatos(DM1.cdsDetalle, '');
   Screen.Cursor := crDefault;
   ShowMessage('Eliminado Ok');
End;

Procedure TFprincipal.Z1sbCamPasswClick(Sender: TObject);
Var
   xSQL: String;
   xpassact, xpassnue: String;
   xdiasduracpass: Integer;
Begin
   DM1.cdsUser.Close;
   DM1.cdsUser.DataRequest('SELECT * FROM TGE006 WHERE USERID=''' + DM1.wUsuario + '''');
   DM1.cdsUser.Open;

   xpassact := DM1.cdsUser.FieldByName('PASSWORD').AsString;
   xdiasduracpass := DM1.cdsUser.FieldByName('DIASDURAC_PWD').AsInteger;

// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
   FCPassw := TFCPassw.Create(Self);
   FCPassw.dbeUsuario.Text := DM1.wUsuario;
   FCPassw.dbeNombre.Text := DM1.cdsUser.FieldByname('USERNOM').AsString;
   FCPassw.dbeUsuario.Text := DM1.wUsuario;
   FCPassw.sPassword := DM1.cdsUser.FieldByname('PASSWORD').AsString;
   FCPassw.sModulo := DM1.wModulo;
   FCPassw.wcdsUsuarios := DM1.cdsUser;
   Try
      FCPassw.ShowModal;
   Finally
      FCPassw.Free;
   End;
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket

   xSQL := 'SELECT PASSWORD FROM TGE006 WHERE USERID = ' + QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xpassnue := DM1.cdsQry.FieldByName('PASSWORD').AsString;
   If xpassact <> xpassnue Then
   Begin
      xSql := 'UPDATE TGE006 '
         + 'SET FECINI_PWD = TO_DATE(SYSDATE), '
         + '    FECFIN_PWD = TO_DATE(SYSDATE)+' + IntToStr(xdiasduracpass)
         + ' WHERE USERID = ' + QuotedStr(DM1.wUsuario);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      Application.Terminate;
   End;
End;

Procedure TFprincipal.Z1sbClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   SacaMenu(Sender);
   FToolRelDepApo := TFToolRelDepApo.create(Self);
   xSQL := 'SELECT * FROM APO301 WHERE ASOID=''NNN'' ';
   Mtx := TMant.Create(Self);
   Try
      Mtx.User := DM1.wUsuario;
      Mtx.Admin := DM1.wAdmin;
      Mtx.Module := DM1.wModulo;
      Mtx.DComC := DM1.DCOM1;
      Mtx.OnCreateMant := PegaPanelRelDepApo;
      Mtx.TableName := 'APO301';
      Mtx.ClientDataSet := DM1.cdsAportes;
      Mtx.Titulo := 'Relación De Boletas De Depósito De Aportes';
      Mtx.OnInsert := Nil;
      Mtx.OnEdit := Nil;
      Mtx.OnDelete := Nil;
      Mtx.OnShow := Nil;
      Mtx.SectionName := 'DepApo';
      Mtx.FileNameIni := '\SolCob.Ini';
      Mtx.UsuarioSQL.Add(xSQL);
      Screen.Cursor := crDefault;
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
      FToolIngLote.Free;
   End;
End;

Procedure TFprincipal.PegaPanelRegCobTel(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolRegCobTel.pnlBot;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.PegaPanelRelDepPrest(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolRelDepPrest.pnlBot;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.PegaPanelRelDepApo(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolRelDepApo.pnlBot;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.PegaPanelCtaxCob(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolCtaxCob.pnlBot;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.OnEditCredito(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsCredito.RecordCount = 0 Then
   Begin
      ShowMessage('No Existen Registros a Editar');
      Exit;
   End;
   DM1.wModo := 'M';
   FRecalendarizacion := TFRecalendarizacion.Create(Self);
   Try
      FRecalendarizacion.ShowModal
   Finally
      FRecalendarizacion.Free
   End;
End;

Procedure TFprincipal.OnInsertCredito(Sender: TObject);
Begin
   DM1.wModo := 'A';
   FRecalendarizacion := TFRecalendarizacion.Create(Self);
   Try
      FRecalendarizacion.ShowModal
   Finally
      FRecalendarizacion.Free
   End;
End;

Procedure TFprincipal.PegaPanelCobUse(Sender: TObject);
Begin
End;

Function TFprincipal.VerificaVersion: Boolean;
Begin
   Result := False;
   xSQL := 'SELECT * FROM TGE600 WHERE CODIGO=''' + DM1.wModulo + '''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If lblVersion.caption = DM1.cdsQry.FieldByName('VERSION').AsString Then
      Result := True
   Else
//Inicio HPC_201803_COB
//Se quita el terminate en este punto ya que emitia un error, pero igual salia
   Begin
      Result := False;
      ShowMessage('Para poder continuar, es necesario que actualice la Versión');
      DM1.DCOM1.Connected := False;
      Application.Terminate;
   End;
//Fin HPC_201803_COB
End;

Procedure TFprincipal.Z1sbGeneracionOficiosMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlContab.Visible := fALSE;
End;

Procedure TFprincipal.spdContabilizacionMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   Paneldevoluciones.Visible := False;
   pnlContab.Left := pnlProcesos.Left + pnlProcesos.Width - 20;
   pnlContab.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlContab.BringToFront;
   pnlContab.Visible := True
End;

Procedure TFprincipal.spdCuoBloqMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   pnlrepblo.Left := pnlReportes.Left - pnlrepblo.Width;
   pnlrepblo.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlrepblo.Visible := True;
   pnlgescob.Visible := False;
End;

Procedure TFprincipal.spdCtaRecaudadoraMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   Paneldevoluciones.Visible := False;
   pnlCtaRec.Left := pnlProcesos.Left + pnlProcesos.Width - 20;
   pnlCtaRec.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlCtaRec.BringToFront;
   pnlCtaRec.Visible := True;
End;

Procedure TFprincipal.Z1bbtnRepCobDepBcosApoClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   SacaMenu(Sender);
   FToolRelDepApo := TFToolRelDepApo.Create(Self);
   xSQL := 'Select Cast('' '' As Varchar2(2)) DPTOID,'
      + ' Cast('' '' As Varchar2(30)) DPTODES,'
      + ' Cast('' '' As Varchar2(3)) USEID,'
      + ' Cast('' '' As Varchar2(75)) USENOM,'
      + ' Cast('' '' As Varchar2(25)) CIADES,'
      + ' Cast('' '' As Varchar2(90)) ASOAPENOM,'
      + ' Cast('' '' As Varchar2(2)) BANCOID,'
      + ' Cast('' '' As Varchar2(40)) BANCONOM,'
      + ' Cast('' '' As Varchar2(40)) CCBCOID,'
      + ' Cast('' '' As Varchar2(15)) TRANSNOPE,'
      + ' Cast(''0'' As Decimal(15,2)) TRANSMTO,'
      + ' Cast('' '' As Varchar2(7)) TRANSFOPE,'
      + ' Cast('' '' As Varchar2(7)) FREG From TGE901';
   Mtx := TMant.Create(Self);
   Try
      Mtx.User := DM1.wUsuario;
      Mtx.Admin := DM1.wAdmin;
      Mtx.Module := DM1.wModulo;
      Mtx.DComC := DM1.DCOM1;
      Mtx.OnCreateMant := PegaPanelRelDepApo;
      Mtx.TableName := 'VWCOBDEPBCOSAPO';
      Mtx.ClientDataSet := DM1.cdsAportes;
      Mtx.Titulo := 'Relación de Boletas de Depósito de Aportes';
      Mtx.OnInsert := Nil;
      Mtx.OnEdit := Nil;
      Mtx.OnDelete := Nil;
      Mtx.OnShow := Nil;
      Mtx.SectionName := 'DepApo';
      Mtx.FileNameIni := '\SolCob.Ini';
      Mtx.UsuarioSQL.Add(xSQL);
      Screen.Cursor := crDefault;
// Inicio: SPP_201402_COB   : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB      : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
      FToolRelDepApo.Free;
      DM1.cdsAportes.Filter := '';
      DM1.cdsAportes.Filtered := False;
      DM1.cdsAportes.IndexFieldNames := '';
      DM1.cdsAportes.Close;
   End;
End;

Procedure TFprincipal.PegaPanelToolRepEstCtaCte(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolRepEstCtaCte.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.PegaPanelToolRepResCtasPagadas(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolResCtasPagadas.pnlCtasPag;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.ListaComponentes(xForm: TForm);
Var
   i: integer;
Begin
   For i := 0 To xForm.ComponentCount - 1 Do
   Begin
      If xForm.Components[i].ClassName = 'TPanel' Then
         TPanel(xForm.components[i]).OnMouseMove := MueveMouse;
      // para botones
      If xForm.Components[i].ClassName = 'TButton' Then
         TButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // para bitbuttons
      If xForm.Components[i].ClassName = 'TBitBtn' Then
         TBitBtn(xForm.components[i]).OnMouseMove := MueveMouse;
      // para speedbuttons
      If xForm.Components[i].ClassName = 'TSpeedButton' Then
         TSpeedButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // Boton de Grid
      If xForm.Components[i].ClassName = 'TwwIButton' Then
         TwwIButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // para la forma
      xForm.onMouseMove := MueveMouse;
   End;
End;

Procedure TFprincipal.MueveMouse(xObjeto: TObject; Shift: TShiftState; X,
   Y: Integer);
Var
   xComponente: String;
   xForma: TForm;
Begin
   xForma := Screen.ActiveForm;
   xComponente := xForma.Name;
   If xObjeto Is TForm Then
   Else
   Begin
      xComponente := xComponente + '.' + TControl(xObjeto).Name;
      DM1.wObjetoForma := xForma.Name;
      DM1.wObjetoNombr := TControl(xObjeto).Name;
      If Copy(DM1.wObjetoNombr, 2, 1) = '2' Then
         DM1.wObjetoDescr := DM1.wObjetoDesPr + ' - ' + TControl(xObjeto).Hint
      Else
      Begin
         DM1.wObjetoDescr := TControl(xObjeto).Hint;
      End;
   End;
End;

Procedure TFprincipal.Z1sbReglasClick(Sender: TObject);
Begin
   pnlReferencias.Left := TSpeedButton(Sender).Left + 10;
   pnlReferencias.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := True;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
   Paneldevoluciones.Visible := False;
   pnlCtaRec.Visible := False;
   pnlContab.Visible := False;
End;

Procedure TFprincipal.Z1sbMaestrosClick(Sender: TObject);
Begin
   pnlMaestros.Left := TSpeedButton(Sender).Left + 10;
   pnlMaestros.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := True;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
   Paneldevoluciones.Visible := False;
   pnlCtaRec.Visible := False;
   pnlContab.Visible := False;
End;

Procedure TFprincipal.Z1sbMovimientosClick(Sender: TObject);
Begin
   pnlMovimientos.Left := TSpeedButton(Sender).Left + 10;
   pnlMovimientos.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := True;
   pnlProcesos.Visible := False;
   pnlReportes.Visible := False;
   pnlAutdisk.Visible := False;
   Paneldevoluciones.Visible := False;
   pnlCtaRec.Visible := False;
   pnlContab.Visible := False;
End;

Procedure TFprincipal.Z1sbProcesosClick(Sender: TObject);
Begin
   pnlProcesos.Left := TSpeedButton(Sender).Left + 10;
   pnlProcesos.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := True;
   pnlReportes.Visible := False;
   Paneldevoluciones.Visible := False;
   pnlCtaRec.Visible := False;
   pnlContab.Visible := False;
End;

Procedure TFprincipal.Z1sbReportesClick(Sender: TObject);
Begin
   pnlReportes.Left := TSpeedButton(Sender).Left + 10;
   pnlReportes.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReportes.Visible := True; 
   pnlReportes2.Visible := False;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := False;
   pnlAutdisk.Visible := False;
   Paneldevoluciones.Visible := False;
   pnlCtaRec.Visible := False;
   pnlContab.Visible := False;
End;

Procedure TFprincipal.Z1sbPagRepreClick(Sender: TObject);
Begin
   DM1.cdsCia.Close;
   DM1.cdsCia.DataRequest('SELECT * FROM TGE101');
   DM1.cdsCia.Open;
   DM1.cdsDocPago.Close;
   DM1.cdsDocPago.DataRequest('SELECT * FROM CAJA322 WHERE CIAID=''XX''');
   DM1.cdsDocPago.Open;
   DM1.cdsEquiv.Close;
   DM1.cdsEquiv.DataRequest('SELECT * FROM TGE160');
   DM1.cdsEquiv.Open;
   DM1.cdsFEfec.Close;
   DM1.cdsFEfec.DataRequest('SELECT * FROM TGE127');
   DM1.cdsFEfec.Open;
   DM1.cdsBancoEgr.Close;
   DM1.cdsBancoEgr.DataRequest('SELECT * FROM TGE105');
   DM1.cdsBancoEgr.Open;
   DM1.cdsCCBco.Close;
   DM1.cdsCCBco.DataRequest('SELECT * FROM TGE106');
   DM1.cdsCCBco.Open;
   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.DataRequest('SELECT * FROM COB101');
   DM1.cdsFormaPago.Open;
   DM1.cdsFormaPago.IndexFieldNames := 'FORPAGOID';
   DM1.cdsClaseAux.Close;
   DM1.cdsClaseAux.DataRequest('SELECT * FROM TGE102');
   DM1.cdsClaseAux.Open;
   DM1.cdsCnpEgr.Close;
   DM1.cdsCnpEgr.DataRequest('SELECT * FROM CAJA201');
   DM1.cdsCnpEgr.Open;
   CAxuRep := DM1.DisplayDescrip('prvTGE', 'TGE102', 'CLAUXID', 'CLAUXLOG=''R''', 'CLAUXID');
   FToolPagRec := TFToolPagRec.Create(Self);
   SacaMenu(Sender);
   Mtx := TMant.Create(Self);
   Try
      Mtx.Admin := DM1.wAdmin;
      Mtx.User := DM1.wUsuario;
      Mtx.OnCreateMant := Nil;
      Mtx.TableName := 'CAJA321';
      Mtx.ClientDataSet := DM1.cdsAso;
      mtx.Filter := 'EC_PROCE=''Y'' AND CLAUXID=' + QuotedStr(CAxuRep);
      Mtx.DComC := DM1.DCOM1;
      Mtx.Module := DM1.wModulo;
      Mtx.Titulo := 'Caja';
      Mtx.OnInsert := OnInsertPagRec;
      Mtx.OnEdit := OnEditPagRec;
      Mtx.OnCreateMant := PegaPanelToolPagRec;
      Mtx.OnDelete := OnDeletePagRec;
      Mtx.OnShow := Nil;
      Mtx.ControlGridDisp := cgdPrincipal;
      Mtx.SectionName := 'COBPagRecau';
      Mtx.FileNameIni := '\SOLCOB.INI';
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      FToolPagRec.Free;
      Mtx.Free;
   End;
   DM1.cdsCia.Close;
   DM1.cdsBancoEgr.Close;
   DM1.cdsCCBco.Close;
End;

Procedure TFprincipal.OnDeletePagRec(Sender: TObject; MantFields: TFields);
Begin
   If dm1.cdsAso.RecordCount = 0 Then
   Begin
      ErrorMsg(Caption, 'No Existe Información a Borrar');
      Exit;
   End;
   If Question(Caption, '¿ Esta Seguro de Eliminar el Registro Actual y su Detalle? ') Then
   Begin
      Screen.Cursor := crHourGlass;
      xSQL := 'DELETE FROM CAJA322 '
         + 'WHERE CIAID=' + QuotedStr(DM1.cdsAso.FieldByName('CIAID').AsString)
         + '  AND TDIARID=' + QuotedStr(DM1.cdsAso.FieldByName('TDIARID').AsString)
         + '  AND ECANOMM=' + QuotedStr(DM1.cdsAso.FieldByName('ECANOMM').AsString)
         + '  AND ECNOCOMP=' + QuotedStr(DM1.cdsAso.FieldByName('ECNOCOMP').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      DM1.cdsAso.Delete;
      DM1.cdsAso.ApplyUpdates(-1);
      Screen.Cursor := crDefault;
      ShowMessage('¡ Eliminación Completada !');
   End;
End;

Procedure TFprincipal.OnEditPagRec(Sender: TObject; MantFields: TFields);
Begin
   If DM1.cdsAso.RecordCount = 0 Then
   Begin
      ShowMessage('No Existen Registros a Editar');
      exit;
   End;
   DM1.wModo := 'M';
   FPagoRecau := TFPagoRecau.Create(Self);
   Try
      FPagoRecau.ShowModal
   Finally
      FPagoRecau.free
   End;
End;

Procedure TFprincipal.OnInsertPagRec(Sender: TObject);
Begin
   DM1.wModo := 'A';
   FPagoRecau := TFPagoRecau.Create(Self);
   Try
      FPagoRecau.ShowModal
   Finally
      FPagoRecau.free
   End;
End;

Procedure TFprincipal.PegaPanelToolPagRec(Sender: TObject);
Var
   pg: TPanel;
   pl: TPanel;
Begin
   pg := FToolPagRec.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent := TMant(Sender).FMant.pnlBtns;
   pg.Align := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
   IniciaParametros(Sender);
End;

Procedure TFprincipal.spdIncoIngLoteClick(Sender: TObject);
Var
   sSQL: String;
   wY, wM, wD: word;
   xPeriodo: String;
Begin
   Screen.Cursor := crHourGlass;
   SacaMenu(Sender);
   DM1.cdsUPro.Close;
   DM1.FiltraTabla(DM1.cdsUPro, 'APO102', 'UPROID');
   sSQL := 'SELECT ' + wRepFuncChar + wRepFecServi + ', ' + QuotedStr('DD/MM/YYYY') + ') "FECHA" FROM DUAL';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;
   DecodeDate(DM1.cdsReporte.fieldbyname('FECHA').AsDateTime, wY, wM, wD);
   xPeriodo := Floattostr(wY) + DM1.StrZero(Floattostr(wM), 2);
   FToolIncoIng := TFToolIncoIng.create(Self);
   MtxD := TMant.Create(Self);
   Try
      MtxD.Admin := DM1.wAdmin;
      MtxD.User := DM1.wUsuario;
      MtxD.TableName := 'COB340';
      MtxD.ClientDataSet := DM1.cdsQry5;
      mtxD.Filter := 'APOSEC=' + Quotedstr(xPeriodo) + 'AND( FLGTA<>''S'' OR  FLGTA IS NULL )';
      MtxD.DComC := DM1.DCOM1;
      MtxD.Module := dm1.wModulo;
      MtxD.Titulo := 'Inconsistencias de Ing. en Lote';
      MtxD.OnCreateMant := PegaPanelToolIncILote;
      MtxD.OnInsert := Nil;
      MtxD.OnEdit := Nil;
      MtxD.OnDelete := Nil;
      MtxD.OnShow := Nil;
      MtxD.NoVisible.Clear;
      MtxD.NoVisible.Add('ARCHIVO');
      MtxD.ControlGridDisp := FPrincipal.cgdAutDisk;
      MtxD.SectionName := 'COBInConsistenciaIL';
      MtxD.FileNameIni := '\SOLCOB.INI';
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      MtxD.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      MtxD.Execute;
   Finally
      MtxD.Free;
      FToolIncoIng.Free;
      DM1.cdsUPro.Close;
   End;
End;

Procedure TFprincipal.Z1sbPagoCuotasClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   fPagoCuotas := TfPagoCuotas.create(self);
   fPagoCuotas.PageControl1.TabIndex := 0;
   fPagoCuotas.Showmodal;
   fPagoCuotas.free;
End;

Procedure TFprincipal.Z1sbRegCanDepoClick(Sender: TObject);
Var
   xSQL, xAnoOpe: String;
Begin
   SacaMenu(Sender);
   DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'OFDESID');
   xAnoOpe := Copy(DateToStr(DM1.FechaSys), 7, 4);
   xSQL := 'SELECT a.TIPCREID,a.TIPCREDES,a.TIP_DES,a.ACTIVO,a.POR_INT,a.POR_FLT,a.CUO_MIN,a.CUO_MAX, '
      + '       a.MON_MIN,a.MON_MAX,b.CREDID,a.CUO_ABN FROM CRE110 a,CRE206 b '
      + 'WHERE a.TIPCREID=SubStr(b.CREDID,7,2) and SubStr(b.CREDID,1,2)=' + QuotedStr(Trim(DM1.xOfiDes))
      + '  AND b.TIPO=''1'' AND b.CORREANO=' + QuotedStr(Trim(xAnoOpe)) + ' And a.Activo=''S'' '
      + 'ORDER BY A.TIPCREID';
   DM1.cdsAbonoCuotas.Close;
   DM1.cdsAbonoCuotas.DataRequest(xSQL);
   DM1.cdsAbonoCuotas.Open;
   fConsCre := TfConsCre.Create(Self);
   fConsCre.dtPFecVen.Date := DM1.FechaSys;
   fConsCre.ShowModal;
   fConsCre.Free;
   DM1.cdsAbonoCuotas.Close;
End;

Procedure TFprincipal.spdCobFrmPagoClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   fRepfPago := TfRepfPago.Create(Self);
   fRepfPago.Showmodal;
   fRepfPago.free;
End;

Procedure TFprincipal.Timer2Timer(Sender: TObject);
Begin
   Statusbar1.Panels[3].Text := DateTOStr(DM1.FechaSys) + '   ' + TimeToStr(Time);
End;

Procedure TFprincipal.spdResGenCobClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   fResGnCob := TfResGnCob.Create(Self);
   Try
      xSQL := 'SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGFAPO IS NOT NULL ORDER BY FORPAGOID';
      DM1.cdsFormaPago.Close;
      DM1.cdsFormaPago.DataRequest(xSQL);
      DM1.cdsFormaPago.Open;
      fResGnCob.DtpFecIni.Date := DM1.FechaSys;
      fResGnCob.DtpFecFin.Date := DM1.FechaSys;
      fResGnCob.dbsAnoIni.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
      fResGnCob.dbsAnoFin.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
      fResGnCob.dbsMesIni.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2));
      fResGnCob.dbsMesFin.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2));
      fResGnCob.ShowModal
   Finally
      DM1.cdsFormaPago.Close;
      fResGnCob.free
   End;
End;

Procedure TFprincipal.SpdRefDepClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   xSQL := 'SELECT * FROM TGE158 ORDER BY DPTOID';
   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest(xSQL);
   DM1.cdsPadre.Open;
   xSQL := 'SELECT * FROM COB101 WHERE FLGDCT=''S'' ';
   DM1.cdsTtransaccion.Close;
   DM1.cdsTtransaccion.DataRequest(xSQL);
   DM1.cdsTtransaccion.Open;
   fRepRefDep := TfRepRefDep.create(self);
   If StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2)) = 1 Then
   Begin
      fRepRefDep.dbseAno.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4)) - 1;
      fRepRefDep.dbseMes.Value := 12;
   End
   Else
   Begin
      fRepRefDep.dbseAno.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
      fRepRefDep.dbseMes.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2)) - 1;
   End;
   fRepRefDep.Showmodal;
   fRepRefDep.free;
   DM1.cdsPadre.Close;
   DM1.cdsTtransaccion.Close;
End;

Procedure TFprincipal.spdDesCuatroCuotasClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fCobTrimestre := TfCobTrimestre.create(Self);
      fCobTrimestre.ShowModal;
   Finally
      DM1.cdsAso.Close;
      fCobTrimestre.Free;
   End;
End;

Procedure TFprincipal.SpeedFpagoClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fResFPago := TfResFPago.create(Self);
      fResFPago.ShowModal;
   Finally
      fResFPago.Free;
   End;
End;

Procedure TFprincipal.SpDetBcoClick(Sender: TObject);
Begin
//Inicio: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;
{   SacaMenu(Sender);
   Try
      fDetBancos := TfDetBancos.create(Self);
      fDetBancos.ShowModal;
   Finally
      fDetBancos.Free;
   End;}
//Fin: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;
End;

Procedure TFprincipal.spCtrlFtpClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FCrtlCobFtp := TFCrtlCobFtp.create(Self);
      FCrtlCobFtp.ShowModal;
   Finally
      FCrtlCobFtp.Free;
   End;
End;

Procedure TFprincipal.spbCtaxCobCalCarClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fCalfCtaxCob := TfCalfCtaxCob.create(Self);
      fCalfCtaxCob.ShowModal;
   Finally
      fCalfCtaxCob.Free;
   End;
End;

Procedure TFprincipal.SpdCtrBanClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fCtrlBanc := TfCtrlBanc.Create(Self);
      fCtrlBanc.ShowModal;
   Finally
      fCtrlBanc.Free;
   End;
End;

Procedure TFprincipal.spdRepDevClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fRepDev := TfRepDev.Create(Self);
      fRepDev.ShowModal;
   Finally
      fRepDev.Free;
   End;
End;

Procedure TFprincipal.spdCtrlDesGlobalClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FCtrlDescargo := TFCtrlDescargo.create(Self);
      FCtrlDescargo.ShowModal;
   Finally
      FCtrlDescargo.Free;
   End;
End;

Procedure TFprincipal.spdBitGesConClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   Try
      fGestCob := TfGestCob.create(Self);
      xSQL := 'SELECT * FROM TGE158';
      DM1.cdsDFam.Close;
      DM1.cdsDFam.DataRequest(xSQL);
      DM1.cdsDFam.Open;
      fGestCob.ShowModal;
   Finally
      DM1.cdsConcre.Close;
      DM1.cdsDFam.Close;
      fGestCob.Free;
   End;
End;

Procedure TFprincipal.spbDetGstClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fRepDetGest := TfRepDetGest.Create(Self);
      fRepDetGest.Caption := spbDetGst.Caption;
      fRepDetGest.ShowModal;
   Finally
      fRepDetGest.Free;
   End;
End;

Procedure TFprincipal.spbEstGstClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fRepResGest := TfRepResGest.Create(Self);
      fRepResGest.ShowModal;
   Finally
      fRepResGest.Free;
   End;
End;

Procedure TFprincipal.spbSalCreClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   Try
      fSaldCredOtro := TfSaldCredOtro.Create(Self);
      xSQL := 'SELECT TIPCREID,TIPCREDES FROM CRE110 ORDER BY TIPCREID';
      DM1.cdsTipCreA.Close;
      DM1.cdsTipCreA.DataRequest(xSQL);
      DM1.cdsTipCreA.Open;
      DM1.cdsOfdes.Close;
      DM1.cdsOfdes.DataRequest('SELECT OFDESID,OFDESNOM FROM APO110 ORDER BY OFDESID');
      DM1.cdsOfdes.Open;
      fSaldCredOtro.ShowModal;
   Finally
      DM1.cdsTipCreA.Close;
      DM1.cdsOfdes.Close;
      fSaldCredOtro.Free;
   End;
End;

Procedure TFprincipal.sbContabCobranzaClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FContabilizacion := TFContabilizacion.Create(Self);
      FContabilizacion.showModal;
   Finally
      FContabilizacion.Free;
   End;
End;

Procedure TFprincipal.sbContabDevolClick(Sender: TObject);
Begin
   SacaMenu(sender);
   Try
      FContabilizacionDev := TFContabilizacionDev.create(self);
      FContabilizacionDev.showmodal;
   Finally
      FContabilizacionDev.free;
   End;
End;

Procedure TFprincipal.sbContabRefinClick(Sender: TObject);
Begin
   SacaMenu(sender);
   Try
      FContabilizacionRef := TFContabilizacionRef.create(self);
      FContabilizacionRef.showmodal;
   Finally
      FContabilizacionRef.free;
   End;
End;

Procedure TFprincipal.spCtrlFtpMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlContab.Visible := fALSE;
End;

Procedure TFprincipal.epeddClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FRepResRegGlob := TFRepResRegGlob.create(Self);
      FRepResRegGlob.ShowModal;
   Finally
      FRepResRegGlob.Free;
   End;
End;

Procedure TFprincipal.spbRepRefClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fRepReprog := TfRepReprog.create(Self);
      fRepReprog.ShowModal;
   Finally
      fRepReprog.Free;
   End;
End;

Procedure TFprincipal.spbCobPlanilla2Click(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FRepResIngLote2 := TFRepResIngLote2.create(Self);
      FRepResIngLote2.ShowModal;
   Finally
      FRepResIngLote2.Free;
   End;
End;

Procedure TFprincipal.spdDesTelClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   Try
      fGenCobTel := TfGenCobTel.Create(Self);
      xSQL := 'SELECT PERCOB,FECGEN,NUMOFI,NUMENV,MONENV,NUMCOB,MONCOB,NUMENV-NUMCOB NUMSAL, '
         + '       MONENV-MONCOB MONSAL,USUARIO,HREG '
         + 'FROM COB400 '
         + 'ORDER BY PERCOB';
      DM1.cdsSolicitud.Close;
      DM1.cdsSolicitud.DataRequest(xSQL);
      DM1.cdsSolicitud.Open;
      TNumericField(DM1.cdsSolicitud.fieldbyname('NUMENV')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsSolicitud.fieldbyname('MONENV')).DisplayFormat := '###,###,##0.#0';
      TNumericField(DM1.cdsSolicitud.fieldbyname('NUMCOB')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsSolicitud.fieldbyname('MONCOB')).DisplayFormat := '###,###,##0.#0';
      TNumericField(DM1.cdsSolicitud.fieldbyname('NUMSAL')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsSolicitud.fieldbyname('MONSAL')).DisplayFormat := '###,###,##0.#0';
      fGenCobTel.ShowModal;
   Finally
      fGenCobTel.Free;
   End;
End;

Procedure TFprincipal.spdControlClick(Sender: TObject);
Var
   xSQL, X: String;
Begin
   If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' AND GRUPOID=''GRPCOB''', 'TGE007', 'GRUPOID') <> 'GRPCOB' Then
      Exit;

// Controla sólo para nivel 3 de Lima
   If Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '03' Then Exit;
   If (Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) = '03') And (DM1.xOfiDes <> '01') Then
   Begin
      MessageDlg('Usuario No Autorizado a esta Opción !!!', mtError, [mbOk], 0);
      Exit;
   End;

   SacaMenu(sender);
   Try
      fCtrAcceso := TfCtrAcceso.create(self);
      xSQL := 'SELECT MODULOID,AREADES FROM CRE117 WHERE MODULOID IN (''COB'') ORDER BY MODULOID';
      DM1.cdsConsulta.Close;
      DM1.cdsConsulta.DataRequest(xSQL);
      DM1.cdsConsulta.Open;

      xSQL := 'SELECT TABLA,GRUPO,CAMPODES '
         + 'FROM SIS001 '
         + 'WHERE COMPONENTE IS NULL AND SUBSTR(GRUPO,4,1)=''0'' '
         + '  AND MODULOID IN (''COB'') '
         + 'GROUP BY TABLA,GRUPO,CAMPODES '
         + 'ORDER BY TABLA,GRUPO,CAMPODES';
      DM1.cdsPadre.Close;
      DM1.cdsPadre.DataRequest(xSQL);
      DM1.cdsPadre.Open;

      xSQL := 'SELECT PERFIL,USUARIO,HREG '
         + 'FROM SIS002 '
         + 'ORDER BY PERFIL';
      DM1.cdsProf.Close;
      DM1.cdsProf.DataRequest(xSQL);
      DM1.cdsProf.Open;
      fCtrAcceso.dblEqUsr.Text := DM1.RecuperaDatos('TGE001', 'GRUPOID',
         DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario))
         + ' AND GRUPOID=''GRPCOB''', 'TGE007', 'GRUPOID'), 'MODULOID');
      fCtrAcceso.dblEqUsr.Text := 'COB';
      fCtrAcceso.Showmodal;
   Finally
      fCtrAcceso.free;
   End;
End;

Procedure TFprincipal.spbCobApoBcoClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FRepApoDepBanc := TfRepApoDepBanc.create(Self);
      FRepApoDepBanc.ShowModal;
   Finally
      FRepResIngLote2.Free;
   End;
End;

Procedure TFprincipal.spdDExtDevAplCuoMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlCtaRec.Visible := False;
   pnlContab.Visible := False;
   Paneldevoluciones.Left := pnlProcesos.Left + pnlProcesos.Width - 20;
   Paneldevoluciones.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   Paneldevoluciones.BringToFront;
   Paneldevoluciones.Visible := True;
End;

Procedure TFprincipal.spdDExtDevAplCuoClick(Sender: TObject);
Begin
   pnlCtaRec.Visible := False;
   pnlContab.Visible := False;
   If Paneldevoluciones.Visible Then
      Paneldevoluciones.Visible := False
   Else
   Begin
      Paneldevoluciones.Left := pnlProcesos.Left + pnlProcesos.Width - 20;
      Paneldevoluciones.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 15;
      Paneldevoluciones.Visible := True;
   End;
End;

Procedure TFprincipal.sbExtDevSolicDevClick(Sender: TObject);
Begin
   SacaMenu(Sender);
//Inicio HPC_201605_COB --filtro de acceso a la solicitud y aprobación de devoluciones
{   If ((DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) = 2) And
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'D')) Or
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'T') Then}
    If ((DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) = 2)) Or
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'T') Then
//Final HPC_201605_COB
   Begin
      Try
         FPreAproDev := TfPreAproDev.create(Self);
         FPreAproDev.ShowModal;
      Finally
         FPreAproDev.Free;
      End;
   End
   Else
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción !!!', mtError, [mbOk], 0);
      Exit;
   End;
End;

Procedure TFprincipal.sbExtDevApruebaDevClick(Sender: TObject);
Begin
   SacaMenu(Sender);
//Inicio HPC_201605_COB -- filtro de acceso a la solicitud y aprobación de devoluciones
  {If ((DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) >= 2) And
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'A')) Or
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'T') Then}
   If ((DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) >= 2)) Or
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'T') Then
//Final HPC_201605_COB
   Begin
      Try
         fAprDev := TfAprDev.create(Self);
         FAprDev.ShowModal;
      Finally
         FAprDev.Free;
      End;
   End
   Else
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción !!!', mtError, [mbOk], 0);
      Exit;
   End;
End;

Procedure TFprincipal.spdrepExtClick(Sender: TObject);
Begin
   pnlCtaRec.Visible := False;
   pnlContab.Visible := False;
   Paneldevoluciones.Visible := False;
   If pnlRepApliExcExt.Visible Then
      pnlRepApliExcExt.Visible := False
   Else
   Begin
      pnlRepApliExcExt.Left := pnlReportes.Left + pnlReportes.Width - 30;
      pnlRepApliExcExt.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 15;
      pnlRepApliExcExt.Visible := True;
   End;
End;

Procedure TFprincipal.spdCtaInacClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      fCtasInact := TfCtasInact.create(Self);
      xSQL := 'SELECT * From COB101 WHERE FLGDCT=''S'' AND ACTIVO=''S'' ';
      DM1.cdsTtransaccion.Close;
      DM1.cdsTtransaccion.DataRequest(xSQL);
      DM1.cdsTtransaccion.Open;
      xSQL := 'SELECT UPROID,UPRONOM FROM APO102';
      DM1.cdsUPro.Close;
      DM1.cdsUPro.DataRequest(xSQL);
      DM1.cdsUPro.Open;
      fCtasInact.ShowModal;
   Finally
      fCtasInact.Free;
   End;
End;

Procedure TFprincipal.pnlCtaRecMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlCtaRec.Visible := False;
End;

Procedure TFprincipal.PaneldevolucionesMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   Paneldevoluciones.Visible := False;
End;

Procedure TFprincipal.sbCtaRecBcoNacionClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FCtaRecBcoNac := TFCtaRecBcoNac.create(Self);
      FCtaRecBcoNac.ShowModal;
   Finally
      FCtaRecBcoNac.Free;
   End;
End;

Procedure TFprincipal.spdReclasClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fRepReclas := TfRepReclas.create(Self);
      fRepReclas.ShowModal;
   Finally
      fRepReclas.Free;
   End;
End;

Procedure TFprincipal.spdEscFisClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fEscFis := TfEscFis.create(Self);
      fEscFis.ShowModal;
   Finally
      fEscFis.Free;
   End;
End;

Procedure TFprincipal.spdGestCobClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fRefGestion := TfRefGestion.create(Self);
      fRefGestion.ShowModal;
   Finally
      fRefGestion.Free;
   End;
End;

Procedure TFprincipal.spdDesPlanillasClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fGenDesPla := TfGenDesPla.create(Self);
      fGenDesPla.ShowModal;
   Finally
      fGenDesPla.Free;
   End;
End;

Procedure TFprincipal.SpdEntAutClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   Try
      fEntAutFis := TfEntAutFis.create(Self);
      xSQL := 'SELECT UPROID,UPRONOM FROM APO102 ORDER BY UPROID';
      DM1.cdsCtasBco.Close;
      DM1.cdsCtasBco.DataRequest(xSQL);
      DM1.cdsCtasBco.Open;
      fEntAutFis.ShowModal;
   Finally
      DM1.cdsCtasBco.Close;
      fEntAutFis.Free;
   End;
End;

Procedure TFprincipal.spdGesCobClick(Sender: TObject);
Begin
   If pnlgescob.Visible = True Then
      pnlgescob.Visible := False
   Else
      pnlgescob.Visible := True;
End;

Procedure TFprincipal.spdGesCobMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlgescob.Left := pnlReportes2.Left - pnlgescob.Width;
   pnlgescob.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlgescob.Visible := True;
End;

Procedure TFprincipal.spbSalCreMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlgescob.Visible := False;
End;

Procedure TFprincipal.spdAsigFpagClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   Try
      fAsigForPag := TfAsigForPag.create(Self);
      xSQL := 'SELECT USERID,USERNOM,NIVEL '
         + 'FROM (SELECT B.ORIGEN,B.NIVEL,A.USERID,A.USERNOM '
         + '      FROM TGE007 A,USERTABLE B,TGE006 C '
         + '      WHERE GRUPOID=''GRPCOB'' AND A.USERID=B.USERID AND B.ORIGEN=''01'' '
         + '        AND NIVEL<>''00'' AND A.USERID=C.USERID AND C.FECEXP IS NULL) '
         + 'ORDER BY USERNOM ';
      DM1.cdsCambios.Close;
      DM1.cdsCambios.DataRequest(xSQL);
      DM1.cdsCambios.Open;
      fAsigForPag.ShowModal;
   Finally
      DM1.cdsCambios.Close;
      fAsigForPag.Free;
   End;
End;

Procedure TFprincipal.spfMtoFrmPagClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fActDesFrmPag := TfActDesFrmPag.create(Self);
      xSQL := 'SELECT FORPAGOID,FORPAGODES,FORPAGACT,PERANUCUO '
         + 'FROM COB101 '
         + 'WHERE FORPAGOID NOT IN (SELECT FORPAGOID '
         + '                        FROM COB_FOR_PAG_INA '
         + '                        WHERE ESTADO=''0'') '
         + 'ORDER BY FORPAGOID ';
      DM1.cdsCuotas.Close;
      DM1.cdsCuotas.DataRequest(xSQL);
      DM1.cdsCuotas.Open;
      fActDesFrmPag.ShowModal;
   Finally
      DM1.cdsCambios.Close;
      fActDesFrmPag.Free;
   End;
End;

Procedure TFprincipal.spdCtrlDesGlobalMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlCtaRec.Visible := False;
End;

Procedure TFprincipal.spdLiqBenClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      Frepcrepen := TFrepcrepen.create(Self);
      Frepcrepen.ShowModal;
   Finally
      Frepcrepen.Free;
   End;
End;

Procedure TFprincipal.spdCtaRecaudadoraClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FCtaRecBcoCre := TFCtaRecBcoCre.create(Self);
      FCtaRecBcoCre.ShowModal;
   Finally
      FCtaRecBcoCre.Free;
   End;
End;

Procedure TFprincipal.spdDisFlatClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   Try
      fDistGasto := TfDistGasto.create(Self);
      DM1.cdsModelo.Close;

      //  Se agregó Order a la consulta
      xSQL := 'SELECT DISTINCT TO_DATE(FECPRO) FECPRO FROM COB_DIS_FLAT ORDER BY FECPRO DESC';
      DM1.cdsModelo.DataRequest(xSQL);
      DM1.cdsModelo.Open;
      If DM1.cdsModelo.RecordCount > 0 Then DM1.cdsModelo.First;
      fDistGasto.ShowModal;
   Finally
      fDistGasto.Free;
   End;
End;

Procedure TFprincipal.sbRepExtornosClick(Sender: TObject);
Begin
//Inicio HPC_201814_COB
//Se adiciona el Try
   SacaMenu(Sender);
   fRepExtornos := Nil;
   Try
      fRepExtornos := TfRepExtornos.Create(Self);
      fRepExtornos.Showmodal;
   Finally
      fRepExtornos.Free;
   End;
   // fRepExtornos := Nil;
   // fRepExtornos := TfRepExtornos.Create(Self);
   // fRepExtornos.Showmodal;
   // fRepExtornos.Free;
//Final HPC_201814_COB
End;

Procedure TFprincipal.sbRepExcesosClick(Sender: TObject);
Begin
//Inicio HPC_201814_COB
//Se adiciona el Try
   SacaMenu(Sender);
   DM1.xopc1 := '1';
   FRepExcesos := Nil;
   Try
      FRepExcesos := TFRepExcesos.Create(Self);
      FRepExcesos.Showmodal;
   Finally
      FRepExcesos.Free;
   End;
   // DM1.xopc1 := '1';
   // FRepExcesos := Nil;
   // FRepExcesos := TFRepExcesos.Create(Self);
   // FRepExcesos.Caption := 'Reporte de Exceso';
   // FRepExcesos.Showmodal;
   // FRepExcesos.Free;
//Final HPC_201814_COB
End;

Procedure TFprincipal.sbRepAplicacClick(Sender: TObject);
//Inicio HPC_201814_COB
//Se adiciona el Try
Begin
   DM1.xopc1 := '2';
   FRepExcesos := Nil;
   SacaMenu(Sender);
   FRepExcesos := Nil;
   Try
      FRepExcesos := TFRepExcesos.Create(Self);
      FRepExcesos.Showmodal;
   Finally
      FRepExcesos.Free;
   End;
   // FRepExcesos := TFRepExcesos.Create(Self);
   // FRepExcesos.Caption := 'Reporte de Aplicaiones y Devoluciones';
   // FRepExcesos.Showmodal;
   // FRepExcesos.Free;
//Final HPC_201814_COB
End;

Procedure TFprincipal.spdReclasMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlRepApliExcExt.Visible := False;
End;

Procedure TFprincipal.spbCobApoBcoMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlRepApliExcExt.Visible := False;
End;

Procedure TFprincipal.spdrepExtMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlRepApliExcExt.Left := pnlReportes.Left - pnlRepApliExcExt.Width;
   pnlRepApliExcExt.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlRepApliExcExt.Visible := True;
End;

Procedure TFprincipal.pnlReportesMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlrepblo.Visible := False;
   pnlgescob.Visible := False;
   pnlRepApliExcExt.Visible := False;
   pnlCobranzaPlanilla.Visible := False;
 //Inicio HPC_201502_COB
   pnlExistExpCredFSC.Visible := False;
 //Final HPC_201502_COB
   SacaSubMenu;
End;

Procedure TFprincipal.pnlProcesosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Begin
   Paneldevoluciones.Visible := False;
   pnlCtaRec.Visible   := False;
   pnlContab.Visible   := False;
   pnlEnvxConv.Visible := False;
End;

Procedure TFprincipal.sbCtaRecBcoCreditoClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FCtaRecBcoCre := TFCtaRecBcoCre.create(Self);
      FCtaRecBcoCre.ShowModal;
   Finally
      FCtaRecBcoCre.Free;
   End;
End;

Procedure TFprincipal.sbCuotasBloqClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FRepBloqueados := TFRepBloqueados.Create(Self);
      FRepBloqueados.ShowModal;
   Finally
      FRepBloqueados.Free;
   End;
End;

Procedure TFprincipal.sbResCredBloqClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      Freprescuoblo := TFreprescuoblo.Create(Self);
      Freprescuoblo.ShowModal;
   Finally
      Freprescuoblo.Free;
   End;
End;

Procedure TFprincipal.sbDetCredBloqClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      Frepdetcreblo := TFrepdetcreblo.Create(Self);
      Frepdetcreblo.ShowModal;
   Finally
      Frepdetcreblo.Free;
   End;
End;

Procedure TFprincipal.sbCredDesbloqClick(Sender: TObject);
Begin
   // Creditos desbloqueados
   SacaMenu(Sender);
   Try
      Frepcredesdet := TFrepcredesdet.Create(Self);
      Frepcredesdet.ShowModal;
   Finally
      Frepcredesdet.Free;
   End;
End;

Procedure TFprincipal.spdAnuIngLoteClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FRepAnuIngLote := TFRepAnuIngLote.create(Self);
      FRepAnuIngLote.ShowModal;
   Finally
      FRepAnuIngLote.Free;
   End;
End;

Procedure TFprincipal.BitRepReclamosClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fRepAtenReclamos := TfRepAtenReclamos.create(Self);
      fRepAtenReclamos.ShowModal;
   Finally
      fRepAtenReclamos.Free;
   End;
End;

Procedure TFprincipal.BitRepPorcPerClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fCobPorcPer := TfCobPorcPer.create(Self);
      fCobPorcPer.ShowModal;
   Finally
      fCobPorcPer.Free;
   End;
End;

Procedure TFprincipal.spbCobPlanilla3Click(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      FRepResIngLote3 := TFRepResIngLote3.create(Self);
      FRepResIngLote3.ShowModal;
   Finally
      FRepResIngLote3.Free;
   End;
End;

Procedure TFprincipal.spbCobPlanillaMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlCobranzaPlanilla.Left := pnlReportes.Left - pnlCobranzaPlanilla.Width;
   pnlCobranzaPlanilla.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlCobranzaPlanilla.Visible := True;
End;

Procedure TFprincipal.SacaSubMenu;
Begin
   pnlAutdisk.Visible := False;
   pnlActualiza.Visible := False;
   pnlContab.Visible := False;
   pnlCtaRec.Visible := False;
   Paneldevoluciones.Visible := False;
   pnlgescob.Visible := False;
   pnlRepApliExcExt.Visible := False;
   pnlrepblo.Visible := False;
   pnlCobranzaPlanilla.Visible := False;
//Inicio: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;
   pnlPagBanco.Visible := False;
//Fin: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;
End;

Procedure TFprincipal.spdCobPvEClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   Try
      fCobProyVsEjec := TfCobProyVsEjec.Create(Self);
      fCobProyVsEjec.ShowModal;
   Finally
      fCobProyVsEjec.Free;
   End;
End;

Procedure TFprincipal.spdAutDescuentoClick(Sender: TObject);
Begin
   SacaMenu(sender);
   Try
      fRepAutDescuento := TfRepAutDescuento.create(self);
      DM1.cdsOfdes.Close;
      DM1.cdsOfdes.DataRequest('SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID');
      DM1.cdsOfdes.Open;
      fRepAutDescuento.DBLkOfiDes.LookupTable := DM1.cdsOfdes;
      If Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) <> '03' Then
      Begin
         fRepAutDescuento.DBLkOfiDes.Text := DM1.xOfiDes;
         fRepAutDescuento.DBLkOfiDes.Enabled := False;
         fRepAutDescuento.DBLUsuarios.Text := DM1.wUsuario;
         fRepAutDescuento.DBLUsuarios.Enabled := False;
         fRepAutDescuento.EdtUser.Text := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
         fRepAutDescuento.rdbResumen.Enabled := False;
         fRepAutDescuento.rdbDetalle.Enabled := False;
         fRepAutDescuento.rdgGrupo.Enabled := False;
      End;
      fRepAutDescuento.Showmodal;
   Finally
      fRepAutDescuento.free;
   End;
End;

Procedure TFprincipal.sbExtDevCtrolDesembClick(Sender: TObject);
Begin
   SacaMenu(Sender);
//Inicio HPC_201605_COB -- filtro de acceso a la solicitud y aprobación de devoluciones
{  If ((DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) = 2) And
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'D')) Or
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'T') Then}
   If ((DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) = 2)) Or
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'T') Then
//Final HPC_201605_COB
   Begin
      Try
         fCtrolDesCaj := TfCtrolDesCaj.create(Self);
         fCtrolDesCaj.ShowModal;
      Finally
         fCtrolDesCaj.Free;
      End;
   End
   Else
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción !!!', mtError, [mbOk], 0);
      Exit;
   End;
End;

Procedure TFprincipal.Z1sbAutDiskClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   SacaMenu(Sender);
   DM1.cdsUSES.Close;
   DM1.cdsUPro.Close;
   DM1.cdsUPago.Close;
   DM1.FiltraTabla(DM1.cdsUSES, 'APO101', 'USEID');
   DM1.FiltraTabla(DM1.cdsUPro, 'APO102', 'UPROID');
   DM1.FiltraTabla(DM1.cdsUPago, 'APO103', 'UPAGOID');
   DM1.FiltraTabla(DM1.cdsTRecauda, 'COB109', 'RECAUDA');
   FToolsDescarga := TFToolsDescarga.create(Self);
   FToolsDescarga.xDirect := wRutaFTP + 'AutDisk\';
   Mtx := TMant.Create(Self);
   Try
      Mtx.Admin := DM1.wAdmin;
      Mtx.User := DM1.wUsuario;
      Mtx.TableName := 'COB312';
      Mtx.ClientDataSet := DM1.cdsDetalle;
      Mtx.DComC := DM1.DCOM1;
      Mtx.Module := DM1.wModulo;
      Mtx.Titulo := 'Descarga de Datos';
      Mtx.OnCreateMant := PegaPanelToolDes;
      Mtx.OnDelete := OnDeleteDescarga;
      Mtx.OnEdit := OnEditDescarga;
      Mtx.ControlGridDisp := cgdAutDisk;
      Mtx.SectionName := 'COBDescarga';
      Mtx.FileNameIni := '\SOLCOB.INI';
      Mtx.UserCheckB.Add('FLAG');
      Screen.Cursor := crHourGlass;
// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Tipo := 'NORMAL';
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket
      Mtx.Execute;
   Finally
      Mtx.Free;
      FToolsDescarga.Free;
   End;
   DM1.cdsUSES.Close;
   DM1.cdsUPago.Close;
   DM1.cdsUPro.Close;
   DM1.cdsDetalle.Filter := '';
   DM1.cdsDetalle.Filtered := False;
   DM1.cdsDetalle.IndexFieldNames := '';
End;

Procedure TFprincipal.spdconveniosClick(Sender: TObject);
Begin
   // Convenios
   SacaMenu(Sender);
   Try
      fpricon := Tfpricon.Create(Self);
      fpricon.ShowModal;
   Finally
      fpricon.Free;
   End;
End;

Procedure TFprincipal.sbCtasEnvSinDctoClick(Sender: TObject);
Begin
   // Reporte de cuotas enviadas a descuento
   SacaMenu(Sender);
   Try
      FRepcuoenv := TFRepcuoenv.Create(Self);
      FRepcuoenv.ShowModal;
   Finally
      FRepcuoenv.Free;
   End;
End;

Procedure TFprincipal.spdDatGestClick(Sender: TObject);
Var
   xSQL: String;
Begin
   SacaMenu(Sender);
   Try
      fDatEnvGes := TfDatEnvGes.Create(Self);
      xSQL := 'SELECT UPROID,UPRONOM FROM APO102';
      DM1.cdsUPro.Close;
      DM1.cdsUPro.DataRequest(xSQL);
      DM1.cdsUPro.Open;
      fDatEnvGes.ShowModal;
   Finally
      fDatEnvGes.Free;
   End;
End;

Procedure TFprincipal.Z1sbReportes2Click(Sender: TObject);
Begin
   pnlReportes2.Left := TSpeedButton(Sender).Left + 10;
   pnlReportes2.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReportes2.Visible := True;
   pnlReportes.Visible := False;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := False;
   pnlAutdisk.Visible := False;
   Paneldevoluciones.Visible := False;
   pnlCtaRec.Visible := False;
   pnlContab.Visible := False;
End;

Procedure TFprincipal.Z1sbReportes2MouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
Begin
   pnlReportes2.Left := TSpeedButton(Sender).Left + 10;
   pnlReportes2.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height;
   pnlReportes2.Visible := True;
   pnlReportes.Visible := False;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible := False;
   pnlAutdisk.Visible := False;
End;

Procedure TFprincipal.BitEstEnvCobClick(Sender: TObject);
Begin
   // Envio Vs. Cobrado
   SacaMenu(Sender);
   Try
      FEstEnvCob := TFEstEnvCob.Create(Self);
      FEstEnvCob.ShowModal;
   Finally
      FEstEnvCob.Free;
   End;
End;

(******************************************************************************)

Procedure TFprincipal.Verpercadpas;
Var
   xSql: String;
   xfecfin: TDate;
   xdiasexppass, xdiasduracpass: Integer;
   xdiasfaltantes: Integer;
   xpassact, xpassnue: String;
Begin
   xSql := 'SELECT TO_DATE(nvl(FECINI_PWD,sysdate)) FECINI_PWD, '
      + '       TO_DATE(nvl(FECFIN_PWD,sysdate+30)) FECFIN_PWD, '
      + '       nvl(DIASEXP_PWD,7) DIASEXP_PWD, '
      + '       nvl(DIASDURAC_PWD,30) DIASDURAC_PWD, PASSWORD '
      + 'FROM TGE006 WHERE USERID = ' + QuotedStr(DM1.wUsuario);

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xfecfin := DM1.cdsQry.FieldByName('FECFIN_PWD').AsDateTime;
   xdiasexppass := DM1.cdsQry.FieldByName('DIASEXP_PWD').AsInteger;
   xdiasduracpass := DM1.cdsQry.FieldByName('DIASDURAC_PWD').AsInteger;
   xpassact := DM1.cdsQry.FieldByName('PASSWORD').AsString;
   xSql := 'SELECT TO_DATE(' + QuotedStr(DateToStr(xfecfin)) + ') - TO_DATE(SYSDATE) DIASFALTANTE FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xdiasfaltantes := DM1.cdsQry.FieldByName('DIASFALTANTE').AsInteger; // dias que faltan
   If xdiasfaltantes <= xdiasexppass Then
   Begin
      If xdiasfaltantes <= 0 Then
         MessageDlg('SU CONTRASEÑA HA CADUCADO, DEBE CAMBIARLA AHORA', mtCustom, [mbOk], 0)
      Else
         If xdiasfaltantes = 1 Then
            MessageDlg('*** FALTA 1 DíA PARA EL VENCIMIENTO DE SU PASSWORD. ***'#13'                            SE SUGIERE CAMBIARLA AHORA', mtCustom, [mbOk], 0)
         Else
            MessageDlg('*** FALTAN ' + IntToStr(xdiasfaltantes) + ' DÍAS PARA EL VENCIMIENTO DE SU PASSWORD. ***'#13'                            SE SUGIERE CAMBIARLA AHORA', mtCustom, [mbOk], 0);
      DM1.cdsUser.Close;
      DM1.cdsUser.DataRequest('SELECT * FROM TGE006 WHERE USERID=''' + DM1.wUsuario + '''');
      DM1.cdsUser.Open;

// Inicio: SPP_201402_COB    : 02/06/2014  : Cambio de DCOM a Socket
      FCPassw := TFCPassw.Create(Self);
      FCPassw.dbeUsuario.Text := DM1.wUsuario;
      FCPassw.dbeNombre.Text := DM1.cdsUser.FieldByname('USERNOM').AsString;
      FCPassw.dbeUsuario.Text := DM1.wUsuario;
      FCPassw.sPassword := DM1.cdsUser.FieldByname('PASSWORD').AsString;
      FCPassw.sModulo := DM1.wModulo;
      FCPassw.wcdsUsuarios := DM1.cdsUser;
      Try
         FCPassw.ShowModal;
      Finally
         FCPassw.Free;
      End;
// Fin: SPP_201402_COB       : 02/06/2014  : Cambio de DCOM a Socket

      xSql := 'SELECT PASSWORD FROM TGE006 WHERE USERID = ' + QuotedStr(DM1.wUsuario);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xpassnue := DM1.cdsQry.FieldByName('PASSWORD').AsString;
      If xpassact <> xpassnue Then
      Begin
         xSql := 'UPDATE TGE006 '
            + 'SET FECINI_PWD = TO_DATE(SYSDATE), '
            + '    FECFIN_PWD = TO_DATE(SYSDATE)+' + IntToStr(xdiasduracpass)
            + ' WHERE USERID = ' + QuotedStr(DM1.wUsuario);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         Application.Terminate;
      End;
      If xdiasfaltantes <= 0 Then Application.Terminate;
   End
   Else
      If xdiasfaltantes <= 0 Then Application.Terminate;
End;
(******************************************************************************)

Procedure TFprincipal.BloquearMenuPrincipal();
Var
   xComponente: String;
   i: Integer;
Begin
   For i := 0 To self.ComponentCount - 1 Do
   Begin
      If (self.Components[i].ClassName = 'TSpeedButton') Then
      Begin
         TEdit(self.Components[i]).Enabled := false;
      End;
   End;

   Z1sbReglas.Enabled           := True;
   Z1sbMaestros.Enabled         := True;
   Z1sbMovimientos.Enabled      := True;
   Z1sbProcesos.Enabled         := True;
   Z1sbReportes.Enabled         := True;
   Z1sbReportes2.Enabled        := True;
   Z1sbSalida.Enabled           := True;
 //Inicio HPC_201515_COB
 //spdControl.Enabled           := True;
 //Final HPC_201515_COB
// Inicio HPC_201725_COB
// Se comenta las 3 lineas debido a que será administrado desde el control de Accesos / Maestro
 //  sbRepCes19990_AFP.Enabled    := True;
   Z1sbCamPassw.Enabled         := True;
 //  sbCalParaleloVencido.Enabled := True;
 //  sbCandidatosFSC.Enabled      := True;
// Fin HPC_201725_COB
End;
(******************************************************************************)

Procedure TFprincipal.BitgescanfonsolClick(Sender: TObject);
Begin
 // generación según convenio
   SacaMenu(Sender);
   Try
      Fgesfonsol := TFgesfonsol.Create(Self);
      Fgesfonsol.ShowModal;
   Finally
      Fgesfonsol.Free;
   End;
End;

Procedure TFprincipal.sbRepRefinaClick(Sender: TObject);
Begin
   SacaMenu(Sender);

   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;

   Try
      fRepRefina := TFRepRefina.create(Self);
      fRepRefina.ShowModal;
   Finally
      fRepRefina.Free;
   End;
End;

Procedure TFprincipal.FormActivate(Sender: TObject);
Var
   xFecha, xFtp: String;
   xRuta : String;
   IniFile: TIniFile;
Begin
   IniFile := TIniFile.Create('C:\SOLExes\SOLConf.ini');
   xFtp := IniFile.ReadString('FOTOS', 'FTP', '');
   If Length(Trim(xFtp)) = 0 Then
   Begin
      MessageDlg(' Debe Actualizar El Archivo De Inicio Del Sistema ', mtError, [mbOk], 0);
      DM1.DCOM1.Connected := False;
      Application.Terminate;
   End;
   sSQL := 'SELECT ' + wRepFuncChar + wRepFecServi + ', ' + QuotedStr('DD/MM/YYYY') + ') "FECHA" FROM DUAL';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(sSQL);
   DM1.cdsReporte.Open;
   xFecha := DM1.cdsReporte.FieldByName('FECHA').AsString;
   xFechasys := StrToDate(xFecha);
   xFechasys := Date;
   DecodeDate(xFechaSys, xAnoSys, xMesSys, xDiaSys);
//Inicio HPC_201803_COB
//En este punto se quita la función de verifica versión y se pone en el onxhow
  If not (VerificaVersion) Then Exit;
   Verpercadpas;

   xRuta:=UpperCase(ExtractFilePath(Application.ExeName));
   If Trim(xRuta)<>'C:\SOLEXES\' Then
   Begin
      MessageDlg(' EL SISTEMA Debe Ejecutase Desde :  >>> C:\SOLExes\ <<<  VERIFIQUE LA RUTA !!!! ', mtError, [mbOk], 0);
      Application.Terminate;
      Exit;
   End;
//Fin HPC_201803_COB

   //Inicio HPC_201819_COB
   //Control de Acceso al Modulo; Al ingresar a los módulos de Front; implementar un control que no permita acceder al módulo sino está inscrito en el grupo asignado al módulo

   // Inicio: SPP_201402_COB  : 02/06/2014  : Cambio de DCOM a Socket
   //If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' AND GRUPOID=''GRPCOB''', 'TGE007', 'GRUPOID') <> 'GRPCOB' Then
   //Begin
   //   MessageDlg(' USUARIO NO PERTENECE AL GRUPO COBRANZAS !!!! ', mtError, [mbOk], 0);
   //   Application.Terminate;
   //End;
   // Fin: SPP_201402_COB  : 02/06/2014  : Cambio de DCOM a Socket
   //Final HPC_201819_COB

   lblVersion.Left := 8;
   lblVersion.Top := 504;

   DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'OFDESID');
   Statusbar1.Panels[1].Text := 'Usuario : ' + DM1.wUsuario + ' -   '
      + Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
   Statusbar1.Panels[2].Text := 'Origen de Operaciones   :   ' + DM1.xOfiDes + ' -  '
      + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(DM1.xOfiDes)), 'APO110', 'OFDESNOM');
End;

Procedure TFprincipal.sbMatrizRodamientoClick(Sender: TObject);
Begin

   SacaMenu(Sender);
   Try
      FMatrizdeRodamiento := TFMatrizdeRodamiento.Create(Self);
      FMatrizdeRodamiento.ShowModal;
   Finally
      FMatrizdeRodamiento.Free;
   End;
End;

Procedure TFprincipal.bbtnRefiSoliClick(Sender: TObject);
Begin

   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) > 1 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 1 ...');
      Exit;
   End;
   cRefi := 'S';
   FRefiBusca := tFRefiBusca.create(self);
   FRefiBusca.Showmodal;
   FRefiBusca.free;
End;

Procedure TFprincipal.bbtnRefiAproClick(Sender: TObject);
Begin

   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 1 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 2 ó SUPERIOR ...');
      Exit;
   End;
   cRefi := 'A';
   FRefiBusca := tFRefiBusca.create(self);
   FRefiBusca.Showmodal;
   FRefiBusca.free;
End;

Procedure TFprincipal.sbVisorProgDescPlanillaClick(Sender: TObject);
Begin

   SacaMenu(Sender);
   Try
      FSecProgDescPlanilla := TFSecProgDescPlanilla.Create(Self);
      FSecProgDescPlanilla.ShowModal;
   Finally
      FSecProgDescPlanilla.Free;
   End;
End;

//Se añade nueva opción para controlar el cierre y apertura de
//Operaciones Refinanciadas de Nivel 2 o superior
Procedure TFprincipal.bbtnRefiApeCieClick(Sender: TObject);
Begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 1 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 2 ó Superior ...');
      Exit;
   End;
   FRefiApeCie := tFRefiApeCie.create(self);
   FRefiApeCie.Showmodal;
   FRefiApeCie.free;
End;

Procedure TFprincipal.sbCtrUsuxZonaDesPlaClick(Sender: TObject);
Begin

   SacaMenu(Sender);
   Try
      FCtrUsuZonDesPla := TFCtrUsuZonDesPla.Create(Self);
      FCtrUsuZonDesPla.ShowModal;
   Finally
      FCtrUsuZonDesPla.Free;
   End;
   
End;

Procedure TFprincipal.sbSectoristaZonaDesPlaClick(Sender: TObject);
Begin

   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   FSectZona := TFSectZona.create(self);
   FSectZona.Showmodal;
   FSectZona.free;

End;

Procedure TFprincipal.sbAperPlantDesPlaClick(Sender: TObject);
Begin

   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   FApPerDescrgPla := TFApPerDescrgPla.create(self);
   FApPerDescrgPla.Showmodal;
   FApPerDescrgPla.free;
   
End;

Procedure TFprincipal.sbGestoresDomiciliariosClick(Sender: TObject);
Begin

   // Mantenimiento de gestores domiciliarios
   SacaMenu(Sender);
   Try
      FGestoresdomiciliarios := TFGestoresdomiciliarios.Create(Self);
      FGestoresdomiciliarios.ShowModal;
   Finally
      FGestoresdomiciliarios.Free;
   End;

End;

Procedure TFprincipal.sbSegMotivoNoDescPlaClick(Sender: TObject);
Begin

   SacaMenu(Sender);
   Try
      FEstTerpCre := TFEstTerpCre.Create(Self);
      FEstTerpCre.ShowModal;
   Finally
      FEstTerpCre.Free;
   End;

End;

Procedure TFprincipal.sbautdesxgesClick(Sender: TObject);
Begin

// Mantenimiento de autorización de descuento de crédito por Gestión - formulario:COB825
   SacaMenu(Sender);
   Try
      FAutDesxGes := TFAutDesxGes.Create(Self);
      FAutDesxGes.ShowModal;
   Finally
      FAutDesxGes.Free;
   End;

End;

Procedure TFprincipal.sbresgesdomClick(Sender: TObject);
Begin

  // Resultados de gestión domiciliaria
   SacaMenu(Sender);
   Try
      FResgesdom := TFResgesdom.Create(Self);
      FResgesdom.ShowModal;
   Finally
      FResgesdom.Free;
   End;

End;

procedure TFprincipal.sbManUgelesClick(Sender: TObject);
begin

// Mantenimiento de Ugeles
   SacaMenu(Sender);
   Try
      FMantenimientoUGEL := TFMantenimientoUGEL.Create(Self);
      FMantenimientoUGEL.ShowModal;
   Finally
      FMantenimientoUGEL.Free;
   End;

end;

procedure TFprincipal.sbRepCes19990_AFPClick(Sender: TObject);
begin

// Reporte de Cesantes de 19990 o AFP con deuda pendiente
   SacaMenu(Sender);
   Try
      FCesRegPen := TFCesRegPen.Create(Self);
      FCesRegPen.ShowModal;
   Finally
      FCesRegPen.Free;
   End;

end;

procedure TFprincipal.sbCalParaleloVencidoClick(Sender: TObject);
begin

// Reporte de Calendario Paralelo / Vencido
   SacaMenu(Sender);
   Try
      FCalParaleloVencido := TFCalParaleloVencido.Create(Self);
      FCalParaleloVencido.ShowModal;
   Finally
      FCalParaleloVencido.Free;
   End;

end;

procedure TFprincipal.sbCandidatosFSCClick(Sender: TObject);
begin

  try
    SacaMenu(Sender);
    FCandidatosFSC := TFCandidatosFSC.Create(self);
    FCandidatosFSC.ShowModal;
  finally
    FCandidatosFSC.Free;
  end;

end;

procedure TFprincipal.sbGenDsctoPllaxConvClick(Sender: TObject);
begin
// generación según convenio
   SacaMenu(Sender);
   Try
      FGenPlaCon := TFGenPlaCon.Create(Self);
      FGenPlaCon.ShowModal;
   Finally
      FGenPlaCon.Free;
   End;
end;

procedure TFprincipal.sbRepComplxConvClick(Sender: TObject);
begin

// Reporte Complementario Convenio de Envío
   SacaMenu(Sender);
   Try
      FInfAdicEnvPla := TFInfAdicEnvPla.Create(Self);
      FInfAdicEnvPla.ShowModal;
   Finally
      FInfAdicEnvPla.Free;
   End;

end;

procedure TFprincipal.sbDctoxPlanxConvMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

   pnlContab.Visible := False;
   pnlEnvxConv.Left := pnlProcesos.Left + pnlProcesos.Width - 20;
   pnlEnvxConv.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlEnvxConv.BringToFront;
   pnlEnvxConv.Visible := True;

end;

procedure TFprincipal.sbMovCalAsoClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      FMovCalifAsoc := TFMovCalifAsoc.Create(Self);
      FMovCalifAsoc.ShowModal;
   Finally
      FMovCalifAsoc.Free;
   End;
end;

procedure TFprincipal.spHisCalAsoClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      FHistCalifAsoc := TFHistCalifAsoc.Create(Self);
      FHistCalifAsoc.ShowModal;
   Finally
      FHistCalifAsoc.Free;
   End;
end;


// Inicio: SPP_201312_COB       : Cambiar el Color de los Paneles
procedure TFprincipal.IniciaParametros(Sender: TObject);
var
   Shape1: TShape;
   Shape2: TShape;
begin
   Shape1:=TShape.Create(self);
   Shape1.Parent:= TMant(Sender).FMant.Panel1;
   Shape1.SendToBack;
   Shape1.Align:=alClient;
   Shape1.Brush.Color:=$009BBFBA;

   Shape2:=TShape.Create(self);
   Shape2.Parent:= TMant(Sender).FMant.pnlbtns;
   Shape2.SendToBack;
   Shape2.Align:=alClient;
   Shape2.Brush.Color:=$009BBFBA;
   TMant(Sender).FMant.ppdFiltro.IniStorageName := '.\rbuilder.ini';
end;
// Fin: SPP_201312_COB       : Cambiar el Color de los Paneles

procedure TFprincipal.sbApliFSCClick(Sender: TObject);
begin

   SacaMenu(Sender);
   fCanstigaFSC := TfCanstigaFSC.create(self);
   fCanstigaFSC.Showmodal;
   fCanstigaFSC.free;

end;

procedure TFprincipal.sbProgDsctoPllaxConvClick(Sender: TObject);
var frm: TFProgProcInfpla;
begin

   SacaMenu(Sender);
   try
      frm := TFProgProcInfpla.Create(self);
      frm.ShowModal;
   finally
      frm.Free;
   end;

end;


procedure TFprincipal.sbSolDevExcFSCClick(Sender: TObject);
begin
   SacaMenu(Sender);
//Inicio HPC_201605_COB --filtro de acceso a la solicitud y aprobación de devoluciones
{  If ((DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) = 2) And
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'D')) Or
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'T') Then}
   If ((DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) = 2)) Or
      (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'IDDGT') = 'T') Then
//Final HPC_201605_COB
   Begin
      Try
      fSolicDevExcFsc := TfSolicDevExcFsc.Create(self);
      fSolicDevExcFsc.ShowModal;
      Finally
      fSolicDevExcFsc.Free;
      End;
   End
   Else
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción !!!', mtError, [mbOk], 0);
      Exit;
   End;
 end;


procedure TFprincipal.btnregincplaClick(Sender: TObject);
begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID = ' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   try
      fregincpla := Tfregincpla.Create(self);
      fregincpla.ShowModal;
   finally
      fregincpla.Free;
   end;
end;


// Opcion Saldo del Fondo Solidario de Contingencia
procedure TFprincipal.btnSaldoFSCClick(Sender: TObject);
begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID = ' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA in (''COB'')', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
     ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
     Exit;
   End;
   try
     fRepResDisFlatFSC := TfRepResDisFlatFSC.Create(self);
     fRepResDisFlatFSC.ShowModal;
   finally
     fRepResDisFlatFSC.Free;
   end;
end;


procedure TFprincipal.btnSolConFallecidosClick(Sender: TObject);
var xxFrm : TFSolConFallecidos;
begin

   SacaMenu(Sender);
   try
     xxFrm := TFSolConFallecidos.Create(self);
     xxFrm.ShowModal;
   finally
     xxFrm.Free;
   end;
end;


procedure TFprincipal.btnSolApliFDClick(Sender: TObject);
var xxFrm : TFSolApliFD;
begin

   SacaMenu(Sender);
   try
     xxFrm := TFSolApliFD.Create(self);
     xxFrm.ShowModal;
   finally
     xxFrm.Free;
   end;
end;

// Inicio: SPP_201305_COB - Descuento ONP
procedure TFprincipal.spdDesONPClick(Sender: TObject);
begin
   SacaMenu(Sender);
   try
     FDesONP := TFDesONP.Create(self);
     FDesONP.ShowModal;
   finally
     FDesONP.Free;
   end;
end;
// Fin: SPP_201305_COB


//Inicio: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;
procedure TFprincipal.spbDetBancoClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      fDetBancos := TfDetBancos.create(Self);
      fDetBancos.ShowModal;
   Finally
      fDetBancos.Free;
   End;
end;
//Fin: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;


//Inicio: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;
procedure TFprincipal.spbResBancoClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      fResBancos := TfResBancos.create(Self);
      fResBancos.ShowModal;
   Finally
      fResBancos.Free;
   End;
end;
//Fin: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;

//Inicio: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;
procedure TFprincipal.SpDetBcoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlPagBanco.Left := pnlReportes.Left - pnlPagBanco.Width + 10;
   pnlPagBanco.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlPagBanco.Visible := True;

end;
//Fin: SPP_201307_COB : 15/04/2012 - Agregar Nuevo Reporte de Cuotas Pagas en Banco;

// Inicio: SPP_201308_COB    - Reportes de la Cobranza por ONP a cesantes por la Ley 19990
procedure TFprincipal.spbCobranzaONPClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      fReportesONP := TfReportesONP.Create(Self);
      fReportesONP.ShowModal;
   Finally
      fReportesONP.Free;
   End;
end;
// Fin: SPP_201308_COB      - Reportes de la Cobranza por ONP a cesantes por la Ley 19990

// Inicio: SPP_201309_COB    : Acuerdos de Cobranza Adicional por Planilla
procedure TFprincipal.spAcuerdoAdicPlaClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      FAcuerdosAdic := TFAcuerdosAdic.Create(Self);
      FAcuerdosAdic.ShowModal;
   Finally
      FAcuerdosAdic.Free;
   End;
end;
// Fin: SPP_201309_COB    : Acuerdos de Cobranza Adicional por Planilla


// Inicio: SPP_201311_COB       : 14/08/2013  Se agregaron opciones Nuevas
procedure TFprincipal.sbResCobPlaClick(Sender: TObject);
begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   Try
      FResCobPlanilla := TFResCobPlanilla.Create(Self);
      FResCobPlanilla.ShowModal;
   Finally
      FResCobPlanilla.Free;
   End;
end;
// Fin: SPP_201311_COB       : 14/08/2013  Se agregaron opciones Nuevas


// Inicio: SPP_201311_COB       : 14/08/2013  Se agregaron opciones Nuevas
procedure TFprincipal.sbMigraRefinanClick(Sender: TObject);
begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   Try
      FMigraRefinanciados := TFMigraRefinanciados.Create(Self);
      FMigraRefinanciados.ShowModal;
   Finally
      FMigraRefinanciados.Free;
   End;
end;
// Fin: SPP_201311_COB       : 14/08/2013  Se agregaron opciones Nuevas

// Inicio: SPP_201311_COB       : 14/08/2013  Se agregaron opciones Nuevas
procedure TFprincipal.sbSaldoFPDClick(Sender: TObject);
begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   Try
      FSaldoFPD := TFSaldoFPD.Create(Self);
      FSaldoFPD.ShowModal;
   Finally
      FSaldoFPD.Free;
   End;
end;
// Fin: SPP_201311_COB       : 14/08/2013  Se agregaron opciones Nuevas


// Inicio: SPP_201312_COB    : 17/09/2013  Opción nueva de Estadistico del FSC
procedure TFprincipal.sbEstadisticoFSCClick(Sender: TObject);
begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   Try
      FEstadisticaFSC := TFEstadisticaFSC.Create(Self);
      FEstadisticaFSC.ShowModal;
   Finally
      FEstadisticaFSC.Free;
   End;
end;
// Fin: SPP_201312_COB      : 17/09/2013  Opción nueva de Estadistico del FSC

// Inicio: SPP_201312_COB   : 26/09/2013  Opción nueva de Control de Cheques Anulados
procedure TFprincipal.sbChequesAnulaClick(Sender: TObject);
begin
   SacaMenu(Sender);
// Inicio: SPP_201404_COB       : 18/09/2014  : Accesos a Nivel 2 a Control de Cheques Anulado
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 1 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 2 ó Superior ...');
      Exit;
   End;
// Fin: SPP_201404_COB          : 18/09/2014  : Accesos a Nivel 2 a Control de Cheques Anulado
   Try
      FChequesAnu := TFChequesAnu.Create(Self);
      FChequesAnu.ShowModal;
   Finally
      FChequesAnu.Free;
   End;

end;
// Fin: SPP_201312_COB     : 26/09/2013  Opción nueva de Control de Cheques Anulados

// Inicio: SPP_201314_COB    18/12/2013  : Cobranzas del FSC
procedure TFprincipal.sbCobFSCClick(Sender: TObject);
begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   Try
      FCobranzaFSC := TFCobranzaFSC.Create(Self);
      FCobranzaFSC.ShowModal;
   Finally
      FCobranzaFSC.Free;
   End;
end;
// Fin: SPP_201314_COB    18/12/2013  : Cobranzas del FSC


//Inicio HPC_201502_COB
procedure TFprincipal.spbGeneraExistCredFSCClick(Sender: TObject);
begin
SacaMenu(Sender);
   Try
      FExistCredFSC := TFExistCredFSC.Create(Self);
      FExistCredFSC.ShowModal;
   Finally
      FExistCredFSC.Free;
   End;
end;
//Final HPC_201502_COB

//Inicio HPC_201502_COB
procedure TFprincipal.spbMarcaExistCredFSCClick(Sender: TObject);
begin
SacaMenu(Sender);
   Try
      FMarcaCredFSC := TFMarcaCredFSC.Create(Self);
      FMarcaCredFSC.ShowModal;
   Finally
      FMarcaCredFSC.Free;
   End;
end;
//Final HPC_201502_COB

//Inicio HPC_201502_COB
procedure TFprincipal.sbExistCredCancFSCMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlgescob.Visible := False;
   pnlExistExpCredFSC.Left := pnlReportes2.Left + pnlReportes2.Width - 20;
   pnlExistExpCredFSC.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlExistExpCredFSC.BringToFront;
   pnlExistExpCredFSC.Visible := True;
end;
//Final HPC_201502_COB
// Inicio HPC_201506_COB
procedure TFprincipal.sbCtrlIngMenClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      fContIngresos := TfContIngresos.Create(Self);
      fContIngresos.ShowModal;
   Finally
      fContIngresos.Free;
   End;
end;
// Fin: HPC_201506_COB


// Inicio HPC_201508_COB       : Opciones de FSC
procedure TFprincipal.sbOperacionesFSCClick(Sender: TObject);
begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   Try
      FOperacionesFSC := TFOperacionesFSC.Create(Self);
      FOperacionesFSC.ShowModal;
   Finally
      FOperacionesFSC.Free;
   End;
end;
// Fin HPC_201508_COB       : Opciones de FSC

// Inicio HPC_201508_COB       : Opciones de FSC
procedure TFprincipal.sbFSCxDptoClick(Sender: TObject);
begin
   SacaMenu(Sender);
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) <= 2 Then
   Begin
      ShowMessage('OPCION PERMITIDA SOLO PARA EL NIVEL 3 ó Superior ...');
      Exit;
   End;
   Try
      FFSCxDpto := TFFSCxDpto.Create(Self);
      FFSCxDpto.ShowModal;
   Finally
      FFSCxDpto.Free;
   End;
end;
// Fin HPC_201508_COB       : Opciones de FSC


//Inicio HPC_201523_COB
procedure TFprincipal.sbAplicaAJUSTEClick(Sender: TObject);
begin
 Try
  SacaMenu(Sender);
  FDescargoAJUSTE := TFDescargoAJUSTE.Create(Self);
  FDescargoAJUSTE.ShowModal;
 Finally
  FDescargoAJUSTE.Free;
 End;
end;
//Fin HPC_201523_COB

//Inicio HPC_201523_COB
procedure TFprincipal.sbApruebaAJUSTEClick(Sender: TObject);
begin
 Try
   SacaMenu(Sender);
    FApruebaAjuste := TFApruebaAjuste.Create(Self);
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
    If (Length(trim(FApruebaAjuste.xcargo))=0) Then
    Begin
     ShowMessage('El Usuario no cuenta con Instancia para Aprobación');
     exit;
    End;
// Fin HPC_201721_COB
    FApruebaAjuste.ShowModal;
 Finally
  FApruebaAjuste.Free;
 End;
end;
//Fin HPC_201523_COB
//Inicio HPC_201604_COB -- Proceso principal
procedure TFprincipal.sbInvCreOtorgadosClick(Sender: TObject);
begin
   SacaMenu(Sender);
Try
   FInvCreOtorg :=  TFInvCreOtorg.Create(Self);
   FInvCreOtorg.ShowModal;
 Finally
  FInvCreOtorg.Free;
 End;
end;
//Final HPC_201604_COB

// Inicio: HPC_201701_COB
// Llamado a la unidad de "Reprogramación de cuotas"
procedure TFprincipal.sbProcesoRepClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      FRepCuotas := TFRepCuotas.Create(Self);
      FRepCuotas.ShowModal
   Finally
      FRepCuotas.free
   End;
end;
// Fin: HPC_201701_COB

//Inicio HPC_201706_COB
//Reversión 100% diferidas
procedure TFprincipal.sbRev100DiferidasClick(Sender: TObject);
begin
   SacaMenu(Sender);
 Try
  fProcReversion100Diferidos := TfProcReversion100Diferidos.Create(Self);
  fProcReversion100Diferidos.ShowModal;
 Finally
  fProcReversion100Diferidos.Free;
 End;
end;
//Final HPC_201706_COB


//Inicio HPC_201707_COB
//Opción de referencia de devoluciones
procedure TFprincipal.sbRefDevolucionMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlRefDevolucion.Left := pnlReferencias.Left + pnlReferencias.Width - 20;
   pnlRefDevolucion.Top := TSpeedButton(Sender).Top + TSpeedButton(Sender).Height + 10;
   pnlRefDevolucion.BringToFront;
   pnlRefDevolucion.Visible := True;
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Opción de referencia de devoluciones
procedure TFprincipal.sbRefDevolucionClick(Sender: TObject);
begin
   If pnlRefDevolucion.Visible = True Then
      pnlRefDevolucion.Visible := False
   Else
      pnlRefDevolucion.Visible := True;
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Opción de referencia de devoluciones
procedure TFprincipal.sbNumDevXOficioClick(Sender: TObject);
begin
   SacaMenu(Sender);
  Try
  fRegporOficio := TfRegporOficio.Create(Self);
  fRegporOficio.ShowModal;
 Finally
  fRegporOficio.Free;
 End;
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Opción de referencia de devoluciones
procedure TFprincipal.sbMotDevolucionClick(Sender: TObject);
begin
   SacaMenu(Sender);
  Try
  Dm1.xopc1:='1';
  fMotDevolucion := TfMotDevolucion.Create(Self);
  fMotDevolucion.ShowModal;
 Finally
  fMotDevolucion.Free;
 End;
end;
//Final HPC_201707_COB

//Inicio HPC_201707_COB
//Opción de referencia de devoluciones
procedure TFprincipal.sbOriDevolucionClick(Sender: TObject);
begin
   SacaMenu(Sender);
  Try
  Dm1.xopc1:='2';
  fMotDevolucion := TfMotDevolucion.Create(Self);
  fMotDevolucion.ShowModal;
 Finally
  fMotDevolucion.Free;
 End;
end;
//Final HPC_201707_COB

//Inicio HPC_201711_COB
//Opción  de Reporte de Reprogramación de Créditos
procedure TFprincipal.sbRepReprogCredClick(Sender: TObject);
begin
   SacaMenu(Sender);
  Try
  fReporteReprogramacion := TfReporteReprogramacion.Create(Self);
  fReporteReprogramacion.ShowModal;
 Finally
  fReporteReprogramacion.Free;
 End;
end;
//Final HPC_201711_COB
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TFprincipal.sbRepPagAdeClick(Sender: TObject);
begin
   SacaMenu(Sender);
  Try
  fReportePagAde := TfReportePagAde.Create(Self);
  fReportePagAde.ShowModal;
 Finally
  fReportePagAde.Free;
 End;
end;
// Fin HPC_201731_COB
// Inicio: HPC_201820_COB
// Llamados a nuevas formas creadas
procedure TFprincipal.sbpagxresClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      FAprSolPagRes := TFAprSolPagRes.Create(Self);
      FAprSolPagRes.ShowModal;
   Finally
      FAprSolPagRes.Free;
 End;
end;

procedure TFprincipal.sbpxrcrocerrClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      Fpagxrescrocerr := TFpagxrescrocerr.Create(Self);
      Fpagxrescrocerr.ShowModal;
   Finally
      Fpagxrescrocerr.Free;
   End;
end;
// Fin: HPC_201820_COB
//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.btnIniAtencionClick(Sender: TObject);
var
  xSQL: String;
begin
    xSQL:='SELECT FLGATE FROM TICKET_MOD_CTRL_VEN_MOV '+
          ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
          ' AND PANTALLA='+QuotedStr(sPantalla)+
          ' AND NUMVEN='+QuotedStr(sNumVenta)+
          ' AND TIPOPE='+QuotedStr(DM1.wModulo)+
          ' AND USUVEN='+QuotedStr(dm1.wUsuario)+
          ' AND TRUNC(FECATE) = TRUNC(SYSDATE)';
    DM1.cdsqry.close;
    DM1.cdsqry.DataRequest(xSQL);
    DM1.cdsqry.open;
    If (DM1.cdsQry.FieldByname('FLGATE').AsString)='V' Then
    Begin
       xsql:='UPDATE TICKET_MOD_CTRL_VEN_MOV SET FLGATE=''M'' '+
             ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
             ' AND PANTALLA='+QuotedStr(sPantalla)+
             ' AND NUMVEN='+QuotedStr(sNumVenta)+
             ' AND TIPOPE='+QuotedStr(DM1.wModulo)+
             ' AND USUVEN='+QuotedStr(dm1.wUsuario)+
             ' AND TRUNC(FECATE) = TRUNC(SYSDATE)';
       DM1.DCOM1.AppServer.EjecutaSQL(xSql);
       SEMAFORO.Brush.Color := clRed;
       Desbloqueamenu;
       btnIniAtencion.Enabled:=False;
       btnFinAtencion.Enabled:=True;
    End;
end;
//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.btnFinAtencionClick(Sender: TObject);
var
  xSQL: String;
begin
   Try
      xSQL:='UPDATE TICKET_MOD_CTRL_VEN_MOV SET FLGATE=''V'''+
          ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
          ' AND PANTALLA='+QuotedStr(sPantalla)+
          ' AND NUMVEN='+QuotedStr(sNumVenta)+
          ' AND TIPOPE='+QuotedStr(DM1.wModulo)+
          ' AND USUVEN='+QuotedStr(dm1.wUsuario)+
          ' AND TRUNC(FECATE) = TRUNC(SYSDATE)';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      SEMAFORO.Brush.Color := clLime;
      bloqueamenu;
      btnIniAtencion.Enabled:=True;
      btnFinAtencion.Enabled:=False;
   Except
      Desbloqueamenu;
      ShowMessage( 'Error al Terminar la atención');
   End;

end;
//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.btnAsignaClick(Sender: TObject);
var
  xSQL: String;
begin
  xSQL:='SELECT OPERACION FROM ASO_TICKETS_PANTALLA WHERE OFICINA='+QuotedStr(DM1.xOfiDes);
  DM1.cdsQry33.close;
  DM1.cdsQry33.DataRequest(xSQL);
  DM1.cdsQry33.open;
  

  dblPantalla.LookupTable:=DM1.cdsQry33;
  pnlAsignacion.Visible:=true;
  pnlVentanilla.Enabled:=false;

  If Length(trim(sNumVenta))>0 Then
  begin
    btnOK.Enabled       := False;
    estNumVen.Enabled   := False;
    dblPantalla.Enabled := False;
    btnLimpiar.Enabled  := True;
  end
  else
  begin
    btnOK.Enabled       := True;
    estNumVen.Enabled   := True;
    dblPantalla.Enabled := True;
    btnLimpiar.Enabled  := False;
  end;

  estNumVen.Text:= sNumVenta;
  dblPantalla.Text:= sPantalla;

end;
//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.btnOKClick(Sender: TObject);
var
  xSQL: String;
begin
  If Length(trim(estNumVen.Text))=0 Then
  begin
    ShowMessage('El módulo no tiene ventanilla asignada');
    exit;
  end;

  If Length(trim(dblPantalla.Text))=0 Then
  begin
    ShowMessage('Debe ingresar la Pantalla de Visualización');
    exit;
  end;

  xSQL:='SELECT OFDESID,USERID,PANTALLA,VENTANILLA,OPERACION,FECREG FROM TICKET_ASG_VEN_MOD_USU '
       +' WHERE OFDESID='+QuotedStr(DM1.xOfiDes)+ ' AND USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND OPERACION='+QuotedStr(DM1.wModulo)+' '
       +' AND PANTALLA='+QuotedStr(dblPantalla.Text)+'  AND VENTANILLA='+QuotedStr(Trim(estNumVen.Text)) ;
  DM1.cdsQry30.Close;
  DM1.cdsQry30.DataRequest(xSQL);
  DM1.cdsQry30.Open;
  If  DM1.cdsQry30.RecordCount>0 Then
  Begin
     ShowMessage('Modulo ya esta asignado a la ventanilla');
     exit;
  End;

  xSQL:='Select COUNT(1) ASIGNADOS FROM TICKET_MOD_CTRL_VEN_MOV '+
        ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
        ' AND PANTALLA='+QuotedStr(dblPantalla.Text)+
        ' AND   NUMVEN='+QuotedStr(estNumVen.Text)+
        ' AND   USUVEN='+QuotedStr(dm1.wUsuario)+
        ' AND TRUNC(FECATE) = TRUNC(SYSDATE)' +
        ' AND FLGATE IS NOT NULL ';
  DM1.cdsQry30.Close;
  DM1.cdsQry30.DataRequest(xSQL);
  DM1.cdsQry30.Open;

  If  DM1.cdsQry30.Fieldbyname('ASIGNADOS').AsInteger>0 Then
  BEGIN
      XSQL:= 'INSERT INTO TICKET_MOD_CTRL_VEN_MOV (OFIDES,PANTALLA, NUMVEN, TIPOPE, USUVEN, FECATE, FLGATE) VALUES ('+
             QuotedStr(DM1.xOfiDes)+','+QuotedStr(dblPantalla.Text)+','+QuotedStr(estNumVen.Text)+','+
             QuotedStr(DM1.wModulo)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr('V')+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);             
  END;
  DM1.cdsQry30.Close;


  xSQL:='Insert Into TICKET_ASG_VEN_MOD_USU(OFDESID,USERID,PANTALLA,VENTANILLA,OPERACION,FECREG) '
       +' Values('+QuotedStr(DM1.xOfiDes)+','+QuotedStr(Trim(DM1.wUsuario))+','+QuotedStr(dblPantalla.Text)+','
       + QuotedStr(Trim(estNumVen.Text))+','+QuotedStr(DM1.wModulo)+',sysdate)';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   sNumVenta := Trim(estNumVen.Text);
   sPantalla := Trim(dblPantalla.Text);


  {xSQL:='UPDATE TGE006 SET VENTANILLA='+QuotedStr(Trim(estNumVen.Text))+', PANTALLA='+QuotedStr(dblPantalla.Text)+
        ' WHERE USERID='+QuotedStr(Trim(DM1.wUsuario));
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  sNumVenta := Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'VENTANILLA'));
  sPantalla := Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'PANTALLA')); }

  If (length(sNumVenta)>0) And (length(sPantalla)>0) Then
  Begin
      lblNumVentanilla.Caption := 'De la Ventanilla '+sNumVenta+' -> '+sPantalla;
      pnlVentanilla.Width:=204;
      pnlVentanilla.Height:=135;
      pnlVentanilla.Enabled:=true;
      pnlAsignacion.Visible:=false;
      dblPantalla.LookupTable := nil;
      btnFinAtencion.Enabled:=False;
      bloqueamenu;
  End;

  dblPantalla.LookupTable:=nil;
end;
//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.btnCancelClick(Sender: TObject);
begin
  pnlVentanilla.Enabled:=true;
  pnlAsignacion.Visible:=false;
  dblPantalla.LookupTable:=nil;
end;
//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.estNumVenExit(Sender: TObject);
var
  cadena:String;
begin
  If Length(trim(estNumVen.Text))>0 Then
  begin
   cadena:=estNumVen.Text;
   estNumVen.Text:= Format('%.*d',[2,StrtoInt(cadena)]);
  end;
end;
//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.btnLimpiarClick(Sender: TObject);
begin
  If Length(trim(estNumVen.Text))=0 Then
  begin
    ShowMessage('El módulo no tiene ventanilla asignada');
    exit;
  end;
  pnlDesasignar.Top:=536;
  pnlDesasignar.Left:=212;
  pnlDesasignar.Visible:=true;
  pnlAsignacion.Visible:=false;
  dblPantalla.LookupTable := nil;
  edtUsuario.Text:='';
  edtPassword.Text:='';
end;
//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.btnDesasignarCancelClick(Sender: TObject);
begin
  pnlAsignacion.Visible:=true;
  pnlDesasignar.Visible:=false;
end;
//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.btnDesasignarOKClick(Sender: TObject);
var
  xSQL:String;
  v_SOAP_CLIENT : WSAutenticacionSoap;
  AutenticarIntranetResult:Boolean;
  param1,param2,param3,param4,param5,param6 :WideString;
begin

      param1:= WideString(edtUsuario.Text);
      param2:= WideString(UpperCase(edtPassword.text));
      param3:= WideString('');
      param6:= WideString('');
      
      v_SOAP_CLIENT:=GetWSAutenticacionSoap(true,DM1.CrgDescrip('CODURL=' + QuotedStr('AUTORIZACION'), 'URL_WS_MAE', 'URL'),nil);
      v_SOAP_CLIENT.AutenticarIntranet(param1,param2,param3,param6,AutenticarIntranetResult,param4,param5);

      If (AutenticarIntranetResult) Then
      begin

       DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'OFDESID');      
       xSQL:='DELETE TICKET_MOD_CTRL_VEN_MOV '+
             ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
             ' AND PANTALLA='+QuotedStr(sPantalla)+
             ' AND NUMVEN='+QuotedStr(sNumVenta)+
             ' AND TIPOPE='+QuotedStr(DM1.wModulo)+
             ' AND USUVEN='+QuotedStr(dm1.wUsuario);
             DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        xSQL:='DELETE TICKET_ASG_VEN_MOD_USU  '
             +' WHERE OFDESID='+QuotedStr(DM1.xOfiDes)+ ' AND USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND OPERACION='+QuotedStr(DM1.wModulo)+' '
       +' AND PANTALLA='+QuotedStr(dblPantalla.Text)+'  AND VENTANILLA='+QuotedStr(Trim(estNumVen.Text)) ;
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        sNumVenta:='';
        sPantalla:='';
        Desbloqueamenu;
        lblNumVentanilla.Caption := 'Sin Asignación de Ventanilla';
        pnlVentanilla.Width:=179;
        pnlVentanilla.Height:=62;
        pnlVentanilla.Enabled:=true;
        pnlAsignacion.Visible:=false;
        pnlDesasignar.Visible:=false;
        dblPantalla.LookupTable := nil;
      End
      Else
      Begin
        MessageDlg('USUARIO Y/O CONTRASEÑA INCORRECTA', mtError, [mbYes], 0);
        Exit;
      End;

  dblPantalla.LookupTable:=nil;
end;

//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.bloqueamenu;
begin
  Z1sbMaestros.Enabled    := False;
  Z1sbMovimientos.Enabled := False;
  Z1sbProcesos.Enabled    := False;
  Z1sbReportes.Enabled    := False;
  Z1sbReportes2.Enabled   := False;
  Z1sbReglas.Enabled      := False;
  Z1sbSalida.Enabled      := True;
end;
//Fin HPC_201803_COB


//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.Desbloqueamenu;
begin
  Z1sbMaestros.Enabled := True;
  Z1sbMovimientos.Enabled := True;
  Z1sbProcesos.Enabled    := True;
  Z1sbReportes.Enabled    := True;
  Z1sbReportes2.Enabled   := True;
  Z1sbReglas.Enabled      := True;
  If SEMAFORO.Brush.Color = clRed Then Z1sbSalida.Enabled      := False;
end;
//Fin HPC_201803_COB

//Inicio HPC_201803_COB
//Jerarquía del módulo del Control de Ticket
procedure TFprincipal.estNumVenKeyPress(Sender: TObject; var Key: Char);
begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
end;
//Fin HPC_201803_COB

// Inicio: HPC_201814_COB
// Nuevo Procedimiento que llama a la forma que procesa Cuotas no pagadas
procedure TFprincipal.sbCredSinCuotPagClick(Sender: TObject);
Begin
   SacaMenu(Sender);
Try
   Fcredsinpagpricuo :=  TFcredsinpagpricuo.Create(Self);
   Fcredsinpagpricuo.ShowModal;
 Finally
  Fcredsinpagpricuo.Free;
 End;
end;
// Fin: HPC_201814_COB


// Inicio: COB_201823_HPC
// Llamado a la unidad "Resultados evaluaciones del FPD"
procedure TFprincipal.sbEvaFPDClick(Sender: TObject);
begin
   SacaMenu(Sender);
Try
   FResEvaFPD :=  TFResEvaFPD.Create(Self);
   FResEvaFPD.ShowModal;
 Finally
  FResEvaFPD.Free;
 End;
end;
// Fin: COB_201823_HPC

End.


