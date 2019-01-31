Unit COBDM1;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COBDM1
// Formulario                    : DM1
// Fecha de Creación             :
// Autor                         : SACSA
// Objetivo                      : Modulo de Datos
// Relacion de pases a producción: DAD-DF-2009-0039  Memorándum 612-2009-DM-COB - SAR2009-0534 - se agrega procedimiento para exportar grid en excel
//                               : HPP_00047_COB  - 14/11/2008 785-2008-DM-COB  DAD-HN-2008-0043  SAR 2008JC-0167
//                               : HPP_200905_COB - se retira y se coloca en package bodies que generan la información de envío de planilla
//                               : HPP_200906_COB - Cambio realizado por HNORIEGA - 15/04/2009
//                               : HPP_200920_COB - realizado por JCARBONEL
//                               : HPP_200925_COB por HNORIEGA Segun  Memorándum 672-2009-DM-COB - SAR-2009-0571 - DAD-HN-2009-0136
//                               : HPP_201106_COB - Obtiene en numero IP de la maquina
//                               : HPP_201113_COB - VERIFICA SI EL ASOCIADO ESTA FALLECIDO
//                               : HPC_201205_COB - lectura de Foto y Firma de Asociado de datos RENIEC
// DPP_201202_COB                : Se realiza el pase a partir del HPC_201205
//                               : HPC_201204_COB - Cambia rutina de Refinanciamiento y amplia a 72 cuotas
//                               : HPC_201203_COB - Tipo de Cobranza para inicializar restricciones en formulario de pago individual (COBD001)
// DPP_201204_COB                : Pase a realizar a partir del HPC_201103_COB
// HPC_201215_COB                : Se agregan las columnas de seguro de desgravamen
// DPP_201211_COB                : Pase se realiza de acuerdo al HPC_201215_COB
// HPC_201305_COB                : 10/04/2012 - Se Crearon CDS para Mantenimiento de Docentes que NO pagan por Planilla..
// SPP_201307_COB                : Se realiza el pase a producción a partir del HPC_201305_COB
// HPC_201306_COB                : Nuevos ClientDataSet Para Consultas nuevas
// SPP_201308_COB                : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201307_COB                : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla
// SPP_201309_COB                : Se realiza el pase a producción a partir del HPC_201307_COB
// HPC_201308_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas
// SPP_201310_COB                : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201309_COB                : 15/08/20130 Verifica Horario
// SPP_201311_COB                : Se realiza el pase a producción a partir del HPC_201309_COB
// HPC_201310_COB                : 15/10/2013 inconsistencia de Consulta
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201312_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
// SPP_201314_COB                : Se realiza el pase a producción a partir del documento HPC_201312_COB

// HPC_201402_COB                : Cambio de DCOM a Socket
// SPP_201402_COB                : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201503_COB                : Modificar la Refinanciación Individual incluir desgravamen y TCEA
// HPC_201521_COB                : Modifica la generación de Excel
// HPC_201614_COB                : Atributo de visible
// HPC_201718_COB                : Adecuación de Reporte de Extornos
// HPC_201719_COB                : Mejoras funcionales en el registro de la atención del asociado
// HPC_201720_COB                : Exportación a Excel de los cronogramas de Pago
// HPC_201736_COB                : Exportar a Excel  los reportes sustento de la contabilización
// COB_201822_HPC                : Se añade fecha de cancelación del credito en el reporte de cronograma de credito.
//                                 Se modifica de Nuevos Soles a Soles
Interface

Uses
// Inicio: SPP_201402_COB     Cambio de DCOM a Socket
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, DBClient, MConnect, Wwdatsrc, wwclient, Provider, comctrls,
   StdCtrls, wwdblook, ExtCtrls, Mask, wwdbedit, IniFiles, Buttons, Wwdbdlg,
   wwdbdatetimepicker, DBCtrls, wwSpeedButton, wwDBNavigator, Grids,
   Wwdbigrd, Wwdbgrid, dbiProcs, Wwdotdot, Wwdbcomb,
   variants, GridControl, RecError, Menus, Math, Excel2000, OleServer, DBGrids,
   ExcelXP,
   shellapi, wwexport, Sockets,
   jpeg, SConnect, winsock;
// Fin: SPP_201402_COB        Cambio de DCOM a Socket

Type
   TDM1 = Class(TDataModule)
// Inicio: SPP_201402_COB    Cambio de DCOM a Socket
      DCOM1: TSocketConnection;
// Fin: SPP_201402_COB       Cambio de DCOM a Socket
      cdsUsuarios: TwwClientDataSet;
      dsUsuarios: TwwDataSource;
      cdsGrupos: TwwClientDataSet;
      dsGrupos: TwwDataSource;
      cdsMGrupo: TwwClientDataSet;
      dsMGrupo: TwwDataSource;
      cdsAcceso: TwwClientDataSet;
      dsAcceso: TwwDataSource;
      cdsDLabo: TwwClientDataSet;
      dsDLabo: TwwDataSource;
      cdsDFam: TwwClientDataSet;
      dsDFam: TwwDataSource;
      cdsEjecuta: TwwClientDataSet;
      dsEjecuta: TwwDataSource;
      cdsAso: TwwClientDataSet;
      dsAso: TwwDataSource;
      cdsCtasBco: TwwClientDataSet;
      dsCtasBco: TwwDataSource;
      cdsResol: TwwClientDataSet;
      dsResol: TwwDataSource;
      cdsDSocioE: TwwClientDataSet;
      dsDSocioE: TwwDataSource;
      cdsUSES: TwwClientDataSet;
      dsUSES: TwwDataSource;
      cdsUPro: TwwClientDataSet;
      dsUPro: TwwDataSource;
      cdsUPago: TwwClientDataSet;
      dsUPago: TwwDataSource;
      cdsTResol: TwwClientDataSet;
      dsTResol: TwwDataSource;
      cdsTPension: TwwClientDataSet;
      dsTPension: TwwDataSource;
      cdsTAso: TwwClientDataSet;
      dsTAso: TwwDataSource;
      cdsSAso: TwwClientDataSet;
      dsSAso: TwwDataSource;
      cdsCEdu: TwwClientDataSet;
      dsCEdu: TwwDataSource;
      cdsCAso: TwwClientDataSet;
      dsCAso: TwwDataSource;
      cdsTUSE: TwwClientDataSet;
      dsTUSE: TwwDataSource;
      cdsOfDes: TwwClientDataSet;
      dsOfDes: TwwDataSource;
      cdsCViv: TwwClientDataSet;
      dsCViv: TwwDataSource;
      cdsQry: TwwClientDataSet;
      dsQry: TwwDataSource;
      cdsDpto: TwwClientDataSet;
      cdsTVia: TwwClientDataSet;
      cdsDist: TwwClientDataSet;
      cdsTZona: TwwClientDataSet;
      cdsTDoc: TwwClientDataSet;
      cdsUbigeo: TwwClientDataSet;
      cdsProvin: TwwClientDataSet;
      cdsEstCiv: TwwClientDataSet;
      cdsBcos: TwwClientDataSet;
      dsTDoc: TwwDataSource;
      dsEstCiv: TwwDataSource;
      dsUbigeo: TwwDataSource;
      dsProvin: TwwDataSource;
      dsDpto: TwwDataSource;
      dsBcos: TwwDataSource;
      dsTVia: TwwDataSource;
      dsDist: TwwDataSource;
      dsTZona: TwwDataSource;
      cdsPais: TwwClientDataSet;
      dsPais: TwwDataSource;
      cdsGradoI: TwwClientDataSet;
      dsGradoI: TwwDataSource;
      cdsGradoA: TwwClientDataSet;
      dsGradoA: TwwDataSource;
      cdsProf: TwwClientDataSet;
      dsProf: TwwDataSource;
      cdsTRela: TwwClientDataSet;
      cdsCtasAso: TwwClientDataSet;
      dsCtasAso: TwwDataSource;
      cdsAportes: TwwClientDataSet;
      dsAportes: TwwDataSource;
      cdsSexo: TwwClientDataSet;
      dsSexo: TwwDataSource;
      cdsLugNac: TwwClientDataSet;
      dsLugNac: TwwDataSource;
      cdsTViaTIPVIADES: TStringField;
      cdsTViaTIPVIAID: TStringField;
      cdsTMoneda: TwwClientDataSet;
      cdsRepresentante: TwwClientDataSet;
      cdsCuentas: TwwClientDataSet;
      dsCuentas: TwwDataSource;
      dsTMoneda: TwwDataSource;
      dsRepresentante: TwwDataSource;
      cdsFPago: TwwClientDataSet;
      dsFPago: TwwDataSource;
      cdsDetRegCob: TwwClientDataSet;
      dsDetRegCob: TwwDataSource;
      cdsRegCob: TwwClientDataSet;
      cdsSitRepr: TwwClientDataSet;
      cdsFRepr: TwwClientDataSet;
      dsSitRepr: TwwDataSource;
      dsFRepr: TwwDataSource;
      cdsRepresentante1: TwwClientDataSet;
      dsRepresentante1: TwwDataSource;
      cdsSitCta: TwwClientDataSet;
      dsSitCta: TwwDataSource;
      cdsFormaPago: TwwClientDataSet;
      dsFormaPago: TwwDataSource;
      cdsModelo: TwwClientDataSet;
      cdsPlantilla: TwwClientDataSet;
      cdsPlanDet: TwwClientDataSet;
      dsModelo: TwwDataSource;
      dsPlantilla: TwwDataSource;
      dsPlandet: TwwDataSource;
      cdsDetalle: TwwClientDataSet;
      dsDetalle: TwwDataSource;
      cdsCambios: TwwClientDataSet;
      dsCambios: TwwDataSource;
      tbOrigen: TwwClientDataSet;
      ds1: TwwDataSource;
      cdsEstado: TwwClientDataSet;
      dsEstado: TwwDataSource;
      cdsConvenio: TwwClientDataSet;
      dsConvenio: TwwDataSource;
      cdsCuotas: TwwClientDataSet;
      dsCuotas: TwwDataSource;
      cdsDcuotas: TwwClientDataSet;
      dsDcuotas: TwwDataSource;
      cdsCredito: TwwClientDataSet;
      dsCredito: TwwDataSource;
      CdsCBcos: TwwClientDataSet;
      dsCBcos: TwwDataSource;
      cdsReclamo: TwwClientDataSet;
      dsReclamo: TwwDataSource;
      cdsReclamoDCob: TwwClientDataSet;
      dsReclamoDCob: TwwDataSource;
      cdsTransacciones: TwwClientDataSet;
      dstransacciones: TwwDataSource;
      cdsAsociados1: TwwClientDataSet;
      dsAsociados1: TwwDataSource;
      cdsReclamoMotiv: TwwClientDataSet;
      dsReclamoMotiv: TwwDataSource;
      cdsTCredito: TwwClientDataSet;
      dsTcredito: TwwDataSource;
      cdsReclamo1: TwwClientDataSet;
      dsReclamo1: TwwDataSource;
      cdsAsoX: TwwClientDataSet;
      dsAsoX: TwwDataSource;
      cdsAsociados: TwwClientDataSet;
      dsAsociados: TwwDataSource;
      cdsDevolucionCob: TwwClientDataSet;
      cdsTransDevol: TwwClientDataSet;
      cdsAgenciaBco: TwwClientDataSet;
      dsAgenciaBco: TwwDataSource;
      cdsTmone: TwwClientDataSet;
      dsTmone: TwwDataSource;
      cdsTtransaccion: TwwClientDataSet;
      cdsReporte: TwwClientDataSet;
      dsReporte: TwwDataSource;
      cdsATransp: TwwClientDataSet;
      cdsRecauda: TwwClientDataSet;
      cdsLiquid: TwwClientDataSet;
      cdsPersRep: TwwClientDataSet;
      dsATransp: TwwDataSource;
      dsRecauda: TwwDataSource;
      dsLiquid: TwwDataSource;
      dsPersRep: TwwDataSource;
      cdsDetRegGlob: TwwClientDataSet;
      dsDetRegGlob: TwwDataSource;
// Inicio: SPP_201402_COB
// cdsQry2: TwwClientDataSet;
// Fin: SPP_201402_COB
      cdsCobxUse: TwwClientDataSet;
      dsCobxUse: TwwDataSource;
      cdsReporte1: TwwClientDataSet;
      dsReporte1: TwwDataSource;
      cdsAutdisk: TwwClientDataSet;
      cdsTransferencia: TwwClientDataSet;
      dsTransferencia: TwwDataSource;
      cdsCtaCtes: TwwClientDataSet;
      cdsPeriodo: TwwClientDataSet;
      dsPeriodo: TwwDataSource;
      cdsBancos: TwwClientDataSet;
      dsBancos: TwwDataSource;
      cdsTRecauda: TwwClientDataSet;
      dsTRecauda: TwwDataSource;
      cdsCuentaEst: TwwClientDataSet;
      dsCuentaEst: TwwDataSource;
      cdsPadre: TwwClientDataSet;
      dsPadre: TwwDataSource;
      cdsHijo: TwwClientDataSet;
      dsHijo: TwwDataSource;
      cdsNieto: TwwClientDataSet;
      dsNieto: TwwDataSource;
      cdsDevolucion: TwwClientDataSet;
      cdsCia: TwwClientDataSet;
      cdsSQL: TwwClientDataSet;
      cdsRTransporte: TwwClientDataSet;
      dsRTransporte: TwwDataSource;
      cdsTransporte: TwwClientDataSet;
      dsTransporte: TwwDataSource;
      cdsRRepresentante: TwwClientDataSet;
      dsRRepresentante: TwwDataSource;
      wwDataSource1: TwwDataSource;
      cdsCCosto: TwwClientDataSet;
      dsCCosto: TwwDataSource;
      cdsBoletaDCob: TwwClientDataSet;
      dsBoletaDCob: TwwDataSource;
      cdsBoletaCob: TwwClientDataSet;
      dsBoletaCob: TwwDataSource;
      cdsconcepto: TwwClientDataSet;
      dsconcepto: TwwDataSource;
      cdsTipBoleta: TwwClientDataSet;
      dsTipBoleta: TwwDataSource;
      cdsReprCtaCte: TwwClientDataSet;
      dsReprCtaCte: TwwDataSource;
      cdssitreclamo: TwwClientDataSet;
      dssitreclamo: TwwDataSource;
      cdsQry3: TwwClientDataSet;
      cdsQry4: TwwClientDataSet;
      dsQry3: TwwDataSource;
      dsQry4: TwwDataSource;
      cdsQry1: TwwClientDataSet;
      cdsSolicitudes: TwwClientDataSet;
      dsSolicitudes: TwwDataSource;
      cdsListaCred: TwwClientDataSet;
      dsListaCred: TwwDataSource;
      cdsSolicitudA: TwwClientDataSet;
      cdsSolicitud: TwwClientDataSet;
      cdsConcre: TwwClientDataSet;
      dsConcre: TwwDataSource;
      cdsListaCreA: TwwClientDataSet;
      dsListaCreA: TwwDataSource;
      cdsTipCreA: TwwClientDataSet;
      dsTipCreA: TwwDataSource;
      cdsRelCapCuo: TwwClientDataSet;
      dsRelCapCuo: TwwDataSource;
      cdsCompromiso: TwwClientDataSet;
      dsCompromiso: TwwDataSource;
      cdsConsulta: TwwClientDataSet;
      dsConsulta: TwwDataSource;
      cdsParam: TwwClientDataSet;
      dsParam: TwwDataSource;
      cdsCob336: TwwClientDataSet;
      dsCob336: TwwDataSource;
      cdsSobrino: TwwClientDataSet;
      dsSobrino: TwwDataSource;
      cdsQry5: TwwClientDataSet;
      dsqry5: TwwDataSource;
      cdsResultSet: TwwClientDataSet;
      cdsMovCre: TwwClientDataSet;
      dsMovCre: TwwDataSource;
      cdsAbonoCuotas: TwwClientDataSet;
      dsAbonoCuotas: TwwDataSource;
      cdsUser: TwwClientDataSet;
      cdsBancoEgr: TwwClientDataSet;
      cdsCCBco: TwwClientDataSet;
      dsCCBco: TwwDataSource;
      cdsFormPago: TwwClientDataSet;
      dsFormPago: TwwDataSource;
      cdsRec: TwwClientDataSet;
      dsRec: TwwDataSource;
      cdsClaseAux: TwwClientDataSet;
      cdsAux: TwwClientDataSet;
      cdsTMon: TwwClientDataSet;
      dsTMon: TwwDataSource;
      cdsProvCta: TwwClientDataSet;
      dsProvCta: TwwDataSource;
      cdsEquiv: TwwClientDataSet;
      dsEquiv: TwwDataSource;
      cdsCnpEgr: TwwClientDataSet;
      dsCnpEgr: TwwDataSource;
      cdsFEfec: TwwClientDataSet;
      cdsMovRec: TwwClientDataSet;
      dsMovRec: TwwDataSource;
      cdsDocPago: TwwClientDataSet;
      dsDocPago: TwwDataSource;
      cdsDetRegCob1: TwwClientDataSet;
      dsDetRegCob1: TwwDataSource;
      dsQry1: TwwDataSource;
      dsTtransaccion: TwwDataSource;
      dsDevolucionCob: TwwDataSource;
      dsTransDevol: TwwDataSource;
// Inicio: SPP_201402_COB
// dsQry2: TwwDataSource;
// Fin: SPP_201402_COB
      dsUser: TwwDataSource;
      dsSolicitud: TwwDataSource;
      dsTRela: TwwDataSource;
      dsRegCob: TwwDataSource;
      dsAutdisk: TwwDataSource;
      dsDevolucion: TwwDataSource;
      dsCtaCtes: TwwDataSource;
      dsSolicitudA: TwwDataSource;
      MainMenu1: TMainMenu;
      ExcelApp: TExcelApplication;
      ExcelBook: TExcelWorkbook;
      WS: TExcelWorksheet;
      cdsQry6: TwwClientDataSet;
      dsQry6: TwwDataSource;
      cdsMovCnt1: TwwClientDataSet;
      dsMovCnt1: TwwDataSource;
      cdsTipDesem: TwwClientDataSet;
      dsTipdesem: TwwDataSource;
      dsinconsistencia: TDataSource;
      cdsinconsistencia: TClientDataSet;
      cdsSoliRefi: TwwClientDataSet;
      dsSoliRefi: TwwDataSource;
      cdsUsesMantUgel: TwwClientDataSet;
      dsUsesMantUgel: TwwDataSource;
      cdsDptoMantUgel: TwwClientDataSet;
      dsDptoMantUgel: TwwDataSource;
      cdsQryMantUgel: TwwClientDataSet;
      dsQryMantUgel: TwwDataSource;
      cdsQry1MantUgel: TwwClientDataSet;
      dsQry1MantUgel: TwwDataSource;
      cdsQry3MantUgel: TwwClientDataSet;
      dsQry3MantUgel: TwwDataSource;
      cdsQry4MantUgel: TwwClientDataSet;
      dsQry4MantUgel: TwwDataSource;
      wwClientDataSet7: TwwClientDataSet;
      wwDataSource8: TwwDataSource;
      cdsQry5MantUgel: TwwClientDataSet;
      dsQry5MantUgel: TwwDataSource;
      cdsQry6MantUgel: TwwClientDataSet;
      dsQry6MantUgel: TwwDataSource;
      cdsUproMantUgel: TwwClientDataSet;
      dsUproMantUgel: TwwDataSource;
      cdsUPagoMantUgel: TwwClientDataSet;
      dsUPagoMantUgel: TwwDataSource;
      cdsQry2MantUgel: TwwClientDataSet;
      dsQry2MantUgel: TwwDataSource;
      cdsDistMantUgel: TwwClientDataSet;
      dsDistMantUgel: TwwDataSource;
      cdsProvinMantUgel: TwwClientDataSet;
      dsProvinMantUgel: TwwDataSource;
      TcpClient1: TTcpClient;
      cdsExtornoPCab: TwwClientDataSet;
      dsExtornoPCab: TwwDataSource;
      cdsQry10: TwwClientDataSet;
      dsQry10: TwwDataSource;
      cdsQry11: TwwClientDataSet;
      dsQry11: TwwDataSource;
      cdsQry26: TwwClientDataSet;
      dsQry26: TwwDataSource;
      cdsQry30: TwwClientDataSet;
      dsQry30: TwwDataSource;
      cdsAsoBanAct: TwwClientDataSet;
      dsAsoBanAct: TwwDataSource;
      cdsAsoBanNoAct: TwwClientDataSet;
      dsAsoBanNoAct: TwwDataSource;
// Inicio: SPP_201308_COB                : Nuevos ClientDataSet Para Consultas nuevas
      cdsUtilidades: TwwClientDataSet;
      dsUtilidades: TwwDataSource;
// Fin: SPP_201308_COB                : Nuevos ClientDataSet Para Consultas nuevas
      cdsAcuerdos: TwwClientDataSet;
      dsAcuerdos: TwwDataSource;
// Inicio: SPP_201310_COB - 16/07/2013   : Se agrega reporte de cuotas anuladas
      cdsCuotasAnu: TwwClientDataSet;
      dsCuotasAnu: TwwDataSource;
      cdsCorrONP: TwwClientDataSet;
      dsCorrONP: TwwDataSource;
// Inicio: SPP_201312_COB             : 15/10/2013 Reporte de Devoluciones
      cdsRepDev: TwwClientDataSet;
      dsRepDev: TwwDataSource;
// Fin: SPP_201312_COB                : 15/10/2013 Reporte de Devoluciones
// Inicio: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales
      cdsQry31: TwwClientDataSet;
      dsQry31: TwwDataSource;
      cdsQry32: TwwClientDataSet;
      dsQry32: TwwDataSource;
      cdsQry33: TwwClientDataSet;
      dsQry33: TwwDataSource;
// Inicio: SPP_201402_COB
    cdsQry2: TwwClientDataSet;
    dsQry2: TwwDataSource;
    //Inicio HPC_201719_COB
    //Mejoras funcionales en el registro de la atención del asociado
    cdsQryCalfCartera: TwwClientDataSet;
    dsQryCalfCartera: TwwDataSource;
    cdsQryPeriodoCartera: TwwClientDataSet;
    dsQryPeriodoCartera: TwwDataSource;
    cdsQryMotAtraso: TwwClientDataSet;
    dsQryMotAtraso: TwwDataSource;
    //Fin HPC_201719_COB
// Fin: SPP_201402_COB
// Fin: SPP_201314_COB    28/11/2013  : Agregar grid por Cobranzas Forma de Pago y agregar filtros adicionales

      Procedure DataModuleCreate(Sender: TObject);
      Procedure AplicaDatos(wCDS: TwwClientDataSet; wNomArch: String);
      Procedure ControlTran;
      Procedure FiltraCDS(xxCds: TwwClientDataSet; xxSQL: String);
      Procedure DataModuleDestroy(Sender: TObject);
      Procedure FiltraTabla(xxCds: TwwClientDataSet; xxArchivo, xxCampo: String);
      Procedure OrdenaCDS(xxCds: TwwClientDataSet; xxTabla, xxOrden: String);
      Procedure AbreCDS(xxCds: TwwClientDataSet; xxSelect: String);
      Procedure cdsEjecutaReconcileError(DataSet: TCustomClientDataSet;
         E: EReconcileError; UpdateKind: TUpdateKind;
         Var Action: TReconcileAction);
   Private
    { Private declarations }
      SeprDec: String;
      FormatCel: Array Of OleVariant;

   Public
    { Public declarations }

      // Inicio: SPP_201402_COB    Cambio de DCOM a Socket
      cIP, wOfiId, widepc, ideconex, fechorcon :String;
      // Fin: SPP_201402_COB       Cambio de DCOM a Socket

      wObjetoDescr: String;
      wCodigoError: Integer;
      wObjetoForma: String;
      wObjetoNombr: String;
      wObjetoDesPr: String;
      wGrupoTmp: String;
      wAdmin, wRepFecServ: String;
      wAreaPersonal: String; // variable que toma el nombre de departamento
      wciades: String; // variable que toma el nombre de Compañia
      wComponente: TControl;
      wTipoCambioUsar,
         sClose, wSRV, wTDatos, wModulo, wUsuario, wGrupo, xSgr: String;
      wMonedaNac, wMonedaExt, wModo: String;
      wTMonExt, wTMonLoc: String;
      wTCCompra, wTCVenta: String;
      xArea, xCnd, xSal, xGrabaExc, xOfiDes, xHis, xopc1: String;
      xfindexo, xtipaso, xtiparc, xcodcon: String;
      xperanomes, sGrid: String;
      Xcodip: String;
      jpgFoto, jpgFirma: TJpegImage;

    //Inicio: DPP_201204_COB
    //Tipo de Cobranza para inicializar restricciones en formulario de pago individual (COBD001)
      vsCobranza: String;
    //Final: DPP_201204_COB

      Procedure AccesosUsuarios(xxModulo, xxUsuario, xxTipo, xxForma: String);
      Function BuscaObjeto(Const xNombre: String; xForm: TForm): TControl;
      Function DisplayDescrip(wPrv, wTabla, wCampos, wWhere, wResult: String): String;
    //function MaxSQL(const sTabla, sMxCampo: String): String;
      Function MaxSQL(Const sTabla, sMxCampo, sCondicion: String): String;
      Function StrZero(wNumero: String; wLargo: Integer): String;
      Function BuscaCodMod(Const sTabla, sMxCampo: String): String;
      Function OperClientDataSet(cdsOrigen: TwwClientDataSet; wExpresion, wCondicion: String): Double;
      Procedure AccesosUsuariosR(xxModulo, xxUsuario, xxTipo: String; xxForma: TForm);
  //procedure cdsPost( xxCds:TwwClientDataSet );
      Function FRound(xReal: double; xEnteros, xDecimal: Integer): double;
      Procedure RecUltTipoCambio(Var xFecha: String);
      Function NombreMes(wwMes: String): String;
      Function BuscaFechaCierre(wwCia, wwBanco, wwCCBanco: String; wwFecha: TDate): Boolean;
      Function UltimoNum(wPrv, wTabla, wCampo, wWhere: String): String;
      Function RecuperarTipoCambio(xFecha: TDateTime): String;
      Function DisplayDescripLocal(cds: TwwClientdataset; xCodigo, xDato, xMostrar: String): String;
      Procedure abreCuentas(xCia: String);
      Function RecuperarDatos(xTabla, xCampos, xWhere: String): Boolean;
      Procedure SQLSelect(Const xTabla, xCampos, xWhere: WideString);
      Procedure RecuperaCierre(Var xFecha: TDateTime; xFrecu: Integer);
      Function EquivFPago(xFAGOID, xBANCOID: String): String;
      Function NumeroNoNulo(xCampo: TField): double;
      Function VerificaAcceso(Pass, EncDes: String): String;
      Procedure LimpiaClientDataset(cds: TwwClientDataset);
        //Eduardo Alva Aliaga
        //Inicio
      Procedure EvaluaSaldos(xAsoId, xCreDid: String);
      Procedure LimpiaDatos();
      Function FechaSys(): tDateTime;
      Function HoraSys: String;
      Function FechasOutPut(xFInput: tDateTime): tDateTime;
      Function CrgDescrip(xCondicion, xTabla, xCampo: String): String;
      Procedure CargaCronograma(xAsoId, xCreDid: String);
      Procedure CrgDatos();
      Procedure CrgLisFrmPag();
      Function CalSalPag(xAsoid, xCreDid, xFecCalCulo, xCreCuota, xCnd, xFrmPag: String): Currency;
      Function CalSalPag_AR(xAsoid, xCreDid, xFecCalCulo, xCreCuota, xCnd, xFrmPag: String): Currency;
      Function CrgArea(xUsuario: String): String;
      Function Valores(Texto: String): Currency;
      Procedure AplicaSaldoPre(xAsoId, xCreDid: String);
      Procedure xAplicaSaldoPre(xAsoId, xCreDid: String);
      Function SaldoActual(xAsoId, xCreDid, xTip: String): Currency;
      Procedure ActSaldoPrest(xAsoId: String);
      Function xIntToLletras(Numero: LongInt; Dec: Real): String;
      Function DesMes(xMes: Integer; xAbr: Char): String;
      Function StrSpace(wNumero: String; wLargo: Integer): String;
      Function RecuperaDatos(xTabla, xCampo, xVariable, xRecupera: String): String;
      Function UltimoDia(xMes: Integer; xAno: Integer): String;
      Procedure GnrCronograma(xAsoid, xCredId: String; xTas_Int, xTas_Flt, xMonOto: Real; xFec_Pre: tDateTime; xNumCuo: Integer);
      Procedure GnrCronograma_Ref(xAsoid, xCredId: String; xTas_Int, xTas_Flt, xMonOto, xMonFlat: Real; xFec_Pre: tDateTime; xNumCuo: Integer);
      Function CalculaCuota_Ref(xTas_Int, xTas_Flt, xMonOto, xMonFla: Real; xNumCuo: Integer): Currency;
      Function RegAplFon(xAsoId: String): Boolean;
      Function RegCuoBlq(xAsoId: String): Boolean;
      Function RegProCob(xAsoId: String): Boolean;
      Function FechasCrono(xAsoId, xCreDid, xCuota: String): String;
      Function xCalSalPag(xAsoid, xCreDid, xFecCalCulo, xCreCuota, xCnd, xFrmPag: String): Currency;
      Function CalculaCuota(xTas_Int, xTas_Flt, xMonOto: Real; xNumCuo: Integer): Currency;
      Function IniFinCrono(xFec_Pre: tDateTime; xNum_Cuo: Integer; xPrdGra, xTipPre: String): String;
      Procedure HojaExcel(Tit: String; TDs: TDataSource; TDb: TDBGrid);
      Procedure FormatosCeldas(N: Integer; TDs: TDataSource);
      Function CountReg(xSQL: String): Integer;
      Function FormatoNumeros(xTexto: String): String;
      Function UsrConsulta(xUsuario: String): Boolean;
      Function AsignaNroAux(xTabla, xAsoCodMod: String): String;
      Procedure BlqComponentes(xForm: tForm);
      Function VrfCtrAccUsr(xSQL: String): Boolean;
      Function UltCalInt: String;
      Function SaldoTotalActual(xAsoId, xTip: String): Currency;
      Procedure validarpagosbanconacion(vfecpag: String);
      Function Redondear(Valor: Real; Redondeo: Integer): Real;
      Function UsrAnuExt(xUsuario: String): Boolean;
      Procedure CargaDatosGestion(xPeriodo, xUproId, xUpagoId, xUseId, xAsoTipId: String);
      Function MontoPendiente(xAsoId: String): String;
      Function CuotasPendiente(xAsoId: String): String;
      Function MaximoPlazo(xAsoId: String): String;
      Function NivelUsuario(xUser: String): String;
      Function isAsociadoFallecido(ICAMPO, IVALOR: String): boolean;
      Procedure ExportaGridExcel(xDataGrid: TwwDBGrid; xFileName: String);
      Procedure CargaImagenesDNI(wsDNI, wsOrigen: String);

      

      // Inicio: SPP_201302_COB
      Function UltCartera(xPar: Char): String;
      // Fin: SPP_201302_COB

      // Inicio: SPP_201311_COB              : Verifica Horario y Correlativo de ONP
      Function verificahorario: Boolean;
      Function GrbCorrelativoONP: String;
      // Fin: SPP_201311_COB                : Verifica Horario y Correlativo de ONP

// Inicio: SPP_201402_COB     Cambio de DCOM a Socket
    function ObtenerIpdeNetbios(Host: string): string;
    function ComputerName: string;
// Fin: SPP_201402_COB        Cambio de DCOM a Socket

   //Inicio: HPC_201503_COB
    function TIR(xMonOto,xCuota:Double;xNumCuo:Integer):Extended;
   //Fin: HPC_201503_COB
   End;

Var
   DM1: TDM1;
   SRV_E, SRV_D, SRV_V: String;
   xBorrar: String;
   xLogAsoid, xLogCodMo: Integer;
   wCiaDef, wTipoCambio: String;
   wRptCia, wRutaRpt, wUrqCia: String;
   xFec_Sis, xHor_Sis, wRutaFTP, wFormatFecha, wFormatHoras, wReplacCeros, wRepFecServi, wRepTimeServi, wRepFuncDate, wRepFuncChar: String;

Procedure cdsPost(xxCds: TwwClientDataSet);
Function MaxValue(Const sDetail: String; CD: TDataSet): String;
Function CalcTipoCambio(sMoneda: String; dtFecha: tdatetime; sCampo: String): String;
Function GetSystemTimeUTC: String;
Function DiaAperturado(xCia: String; xFecha: TDate; xCaja: String): bool;

Implementation

{$R *.DFM}

// Inicio: SPP_201402_COB     Cambio de DCOM a Socket
Uses MsgDlgs, COB001, COB901, COB903, COB904, COBD11, COB020;

function TDM1.ObtenerIpdeNetbios(Host: string): string;
var
  WSAData: TWSADATA;
  HostEnt: phostent;
begin
  Result:= '';
  if WSAStartup(MAKEWORD(1, 1), WSADATA) = 0 then
  begin
    HostEnt:= gethostbyname(PChar(Host));
    if HostEnt <> nil then
      Result:= String(inet_ntoa(PInAddr(HostEnt.h_addr_list^)^));
    WSACleanup;
  end;
end;


function TDM1.ComputerName: string;
var
  Buffer: array[ 0..100 ] of Char;
  MaxSize: Cardinal ;
begin
  MaxSize := SizeOf( Buffer );
  if not GetComputerName( @Buffer, MaxSize ) then
    raise Exception.Create( 'No puedo determinar el nombre de la máquina' );
  Result := StrPas( @Buffer );
end;
// Fin: SPP_201402_COB     Cambio de DCOM a Socket


Function CalcTipoCambio(sMoneda: String; dtFecha: tdatetime; sCampo: String): String;
Var
   sSQL: String;
Begin
   result := '';
   If dtFecha = 0 Then exit;
   If trim(sMoneda) = '' Then exit;
   sSQL := 'SELECT ' + sCampo + ' FROM TGE107 WHERE TMONID=' + quotedStr(dm1.wTMonExt);
   If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
      sSQL := sSQL + ' AND FECHA=DATE(' + quotedStr(formatdatetime(wFormatFecha, dtFecha)) + ')'
   Else
      If SRV_D = 'ORACLE' Then
         sSQL := sSQL + ' AND FECHA=(' + quotedStr(formatdatetime(wFormatFecha, dtFecha)) + ')';
   DM1.cdsSQL.close;
   DM1.cdsSQL.DataRequest(sSQL);
   DM1.cdsSQL.open;
   result := DM1.cdsSQL.fieldbyName(wTipoCambio).asString;
End;

Procedure cdsPost(xxCds: TwwClientDataSet);
Var
   i: integer;
Begin
   For i := 0 To xxCds.Fields.Count - 1 Do
   Begin
      If xxCds.Fields[i].Classtype = TStringField Then
      Begin
         If xxCds.Fields[i].AsString = '' Then xxCds.Fields[i].clear;
      End;
      If xxCds.Fields[i].Classtype = TMemoField Then
      Begin
         If xxCds.Fields[i].AsString = '' Then xxCds.Fields[i].AsString := '.';
      End;
   End;
End;

Function MaxValue(Const sDetail: String; CD: TDataSet): String;
Var
   iMx: LongInt;
   bmk: TBookMark;
   dsI, dsE: Boolean;
Begin
  // --------------------------- ADVERTENCIA !!!!!!!! --------------------------
  //  ESTO NO FUNCIONA EN EL CACHÉ
  // ---------------------------------------------------------------------------
  //  result := MaxSQL('LOG309','DRQSID',
  //                   'where CIAID='''+sCIA+''' and '+'RQSID = '''+sRqs+'''' );
  // ---------------------------------------------------------------------------
   iMx := 0;
   bmk := Nil;
   CD.DisableControls;
   dsI := (CD.State = dsInsert);
   dsE := (CD.State = dsEdit);
   If CD.RecordCount > 0 Then
   Begin
      If dsE Then bmk := CD.GetBookmark;
      If dsI Or dsE Then CD.Cancel;

      CD.First;
      While Not CD.Eof Do
      Begin
         If CD.FieldByName(sDetail).isNull Then
            iMx := 0
         Else
            If (CD.FieldByName(sDetail).AsInteger > iMx) And (CD.FieldByName(sDetail).AsInteger <> 999) Then
               iMx := CD.FieldByName(sDetail).AsInteger;
         CD.Next;
      End;
      If dsI Then
         CD.Insert
      Else
         If dsE Then
            CD.Edit;
      If dsE Then
      Begin
         CD.GotoBookmark(bmk);
         CD.FreeBookmark(bmk);
      End;
   End;
   CD.EnableControls;
   Result := IntToStr(iMx + 1);
End;

Function GetSystemTimeUTC: String;
Var
   stSystemTime: TSystemTime;
Begin
   Windows.GetSystemTime(stSystemTime);
   Result := DateTimeToStr(SystemTimeToDateTime(stSystemTime));
End;

{procedure TDM1.cdsPost( xxCds:TwwClientDataSet);
var
 i:integer;
begin
   for i:=0 to xxCds.Fields.Count-1 do
   begin
     if xxCds.Fields[i].Classtype=TStringField then
     begin
       if xxCds.Fields[i].AsString='' then xxCds.Fields[i].clear;
     end;
     if xxCds.Fields[i].Classtype=TMemoField then
     begin
       if xxCds.Fields[i].AsString='' then xxCds.Fields[i].AsString:='.';
     end;
   end;
end;}

Function TDM1.OperClientDataSet(cdsOrigen: TwwClientDataSet; wExpresion, wCondicion: String): Double;
Var
   cdsClone: TwwClientDataSet;
   bmk: TBookmark;
   Agg: TAggregate;
Begin
   result := 0;
   If trim(wExpresion) = '' Then Exit;
   bmk := cdsOrigen.GetBookmark;
   cdsClone := TwwClientDataSet.Create(Nil);
   Try
      With cdsClone Do
      Begin
         CloneCursor(cdsOrigen, True);

         Agg := Aggregates.Add;
         Agg.AggregateName := 'OPER';
         Agg.Expression := wExpresion;
         Agg.Active := True;

         If Trim(wCondicion) <> '' Then
         Begin
            Filtered := False;
            Filter := wCondicion;
            Filtered := True;
         End;
         If Aggregates.Items[Aggregates.IndexOf('OPER')].Value <> NULL Then
            result := Aggregates.Items[Aggregates.IndexOf('OPER')].Value;
         Aggregates.Clear;
      End;
      cdsOrigen.GotoBookmark(bmk);
      cdsOrigen.FreeBookmark(bmk);
   Finally
      cdsClone.Free;
   End;
End;

Procedure TDM1.DataModuleCreate(Sender: TObject);
Var
   xWhere, xSQL: String;
   inifile: TIniFile;
Begin
// Inicio: SPP_201402_COB    Cambio de DCOM a Socket
   // <>'' Cuando el servidor se ejecuta Localmente
   //  =''  Ejecucion Servidor Remoto
   DCOM1.Connected := False;

  // LEE LOS DATOS DE CONEXION
  if ParamStr(1)='' then
  begin
     inifile:=TIniFile.Create('C:\SOLExes\DM_Conf_CLI.ini');
     DCOM1.Address:=IniFile.ReadString('TCPIP','ADDRESS','');
     DCOM1.Port   :=STRTOINT( IniFile.ReadString('TCPIP','PORT','') );
     wSRV:=IniFile.ReadString('MOTOR','NAME','');
  end;

  // OBTIENE EL IP DE LA PC
  try
      cIP:= ObtenerIpdeNetbios( computerName);
  except
      ShowMessage( 'ERROR de Conexión.');
      DCOM1.Connected:=False;
      Exit;
  end;

  // Conexion con la Aplicación Servidor
  try
     DCOM1.Connected:=true;
  except
     ShowMessage( 'ERROR de Conexión.');
     Exit;
  end;

  // Accesos al Sistemas
  wModulo := 'COB';
  sClose  := '0';
  FCtrlAcceso := TFCtrlAcceso.Create(Application);
  FCtrlAcceso.ShowModal;

  if FCtrlAcceso.cAccesoSistema='S' then
  begin
     // SI Ingreso al Sistema
     wUsuario := FCtrlAcceso.dbeUsuario.Text;
     FCtrlAcceso.free;
  end
  else
  begin
     // NO Ingreso al Sistema
     sClose:='1';
     DCOM1.Connected:=False;
     FCtrlAcceso.free;
     Exit;
  end;


   If sClose <> '1' Then
   Begin
      //DM1.wAdmin := FAccesos.wAdmin;
      //DM1.wGrupo := FAccesos.wGrupo;
      //DM1.wUsuario := FAccesos.wUsuario;
      /////
      //wModulo := 'COB';

      //** hallo la ruta de acceso para las tablas DBF (para la recepcion del FTP)
      //DM1.DCOM1.AppServer.RutaViaFTP(wRutaFTP);
// Fin: SPP_201402_COB    Cambio de DCOM a Socket

      wTipoCambioUsar := 'TCAMVOV';
      wAreaPersonal := 'Departamento de Cobranzas';
      xwhere := 'CNTCONSOL=' + quotedstr('S');
      wciades := DM1.DisplayDescrip('prvSQL', 'TGE101', 'CIADES', xWhere, 'CIADES');
      wCiaDef := '02';
      xBorrar := '0';
      wTCCompra := 'TCAMVBC';
      wTipoCambio := 'TCAMVBC';
      cdsUsuarios.Open;
      cdsGrupos.Open;
      cdsMGRupo.Open;
      cdsAcceso.Open;
      xLogAsoid := 10;
      xLogCodMo := 10;
      DM1.cdsSexo.Close;
      xSQL := 'SELECT ''M'' SEXO, ''MASCULINO'' DESCRIP FROM TGE101 '
         + 'UNION '
         + 'SELECT ''F'' SEXO, ''FEMENINO'' DESCRIP FROM TGE101';
      DM1.cdsSexo.DataRequest(xSQL);
      DM1.cdsSexo.Open;
      wTMonExt := displaydescrip('prvTGE', 'TGE103', 'TMONID', 'TMON_LOC=' + quotedStr('E'), 'TMONID');
      wTMonLoc := displaydescrip('prvTGE', 'TGE103', 'TMONID', 'TMON_LOC=' + quotedStr('L'), 'TMONID');
      DM1.DisplayDescrip('prvTGE', 'SOLCONFIG', '*', '', 'SRV_DB');
      SRV_E := dm1.cdsqry.fieldbyname('SRV_EQUIP').AsString;
      SRV_D := dm1.cdsqry.fieldbyname('SRV_DB').AsString;
      SRV_V := dm1.cdsqry.fieldbyname('SRV_VERS').AsString;
      wRptCia := dm1.cdsqry.fieldbyname('RPTCIA').AsString;
        //wRutaRpt := wRutaFTP+'SOLFormatos\'+wModulo+'\'+wRptCia;
      wRutaRpt := ExtractFilePath(Application.ExeName) + 'SOLFORMATOS\' + DM1.wModulo + '\' + wRptCia;
      If SRV_D = 'DB2400' Then
      Begin
         wFormatFecha := 'YYYY-MM-DD';
         wReplacCeros := 'COALESCE';
         wRepFecServi := 'CURRENT DATE';
         wRepFecServ := 'CURRENT DATE';
         wRepFuncDate := 'DATE(';
      End
      Else
         If SRV_D = 'ORACLE' Then
         Begin
            wFormatFecha := 'DD/MM/YYYY';
            wFormatHoras := 'HH24:MI:SS';
            wReplacCeros := 'NVL';
            wRepFecServi := 'SYSDATE';
            wRepFecServ := 'SYSDATE';
            wRepTimeServi := 'SYSDATE'; //                     'TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
            wRepFuncDate := 'TO_DATE(';
            wRepFuncChar := 'TO_CHAR(';
         End
         Else
            If SRV_D = 'DB2NT' Then
            Begin
               wFormatFecha := 'DD/MM/YYYY';
               wReplacCeros := 'COALESCE';
               wRepFecServi := 'CURRENT DATE';
               wRepFuncDate := 'DATE(';
            End;
        /////

      FPrincipal := TFPrincipal.Create(self);
      Try
         FPrincipal.ShowModal;
      Finally
         FPrincipal.free;
      End;
   End
   Else
   Begin
      If DM1 <> Nil Then
         dm1.DCOM1.Connected := False;
      Application.Terminate;
   End;
End;

Procedure TDM1.AccesosUsuarios(xxModulo, xxUsuario, xxTipo, xxForma: String);
Begin
   If Trim(cdsUsuarios.FieldByName('GRUPOID').AsString) = '' Then
   Begin
      cdsUsuarios.SetKey;
      cdsUsuarios.FieldByName('USERID').AsString := xxUsuario;
      If Not cdsUsuarios.GotoKey Then Exit;
   End;

   DM1.cdsGrupos.Filter := '';
   If xxTipo = '1' Then
   Begin
      cdsGrupos.Filter := 'GRUPOID=' + '''' + cdsUsuarios.FieldByName('GRUPOID').AsString + '''' + ' AND '
         + 'MODULOID=' + '''' + xxModulo + '''' + ' AND '
         + 'TIPO=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;
      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.FieldByName('OBJETO').AsString, Screen.ActiveForm);
         wComponente.Enabled := False;
         cdsGrupos.Next;
      End;
   End;

   If xxTipo = '2' Then
   Begin
      cdsGrupos.Filter := 'GRUPOID=' + '''' + cdsUsuarios.FieldByName('GRUPOID').AsString + '''' + ' AND '
         + 'MODULOID=' + '''' + xxModulo + '''' + ' AND '
         + 'FORMA=' + '''' + xxForma + '''' + ' AND '
         + 'TIPO=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;
      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.FieldByName('OBJETO').AsString, Screen.ActiveForm);
         If (wComponente.Name = 'Z2bbtnModifica') Or
            (wComponente.Name = 'Z2bbtnConsulta') Then
            wComponente.Enabled := False
         Else
         Begin
            wComponente.Visible := False;
         End;
         cdsGrupos.Next;
      End;
   End;
End;

Function TDM1.BuscaObjeto(Const xNombre: String; xForm: TForm): TControl;
Var
   ic: Integer;
Begin
   ic := xForm.ComponentCount - 1;
   While (xForm.Components[ic].Name <> xNombre) And (ic > -1) Do
   Begin
      Dec(ic);
   End;
   If xForm.Components[ic].Name = xNombre Then
      Result := TControl(xForm.Components[ic])
   Else
      Result := Nil;
End;

Function TDM1.DisplayDescrip(wPrv, wTabla, wCampos, wWhere, wResult: String): String;
Var
   xSQL: String;
Begin
   xSQL := '';
   xSQL := 'SELECT ' + wCampos + ' FROM ' + wTabla;
   If length(wWhere) > 0 Then xSQL := xSQL + ' WHERE ' + wWhere;
   cdsQry.Close;
   cdsQry.IndexFieldNames := '';
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   result := cdsQry.FieldByName(wResult).Asstring;
End;

Procedure TDM1.ControlTran;
Begin
   If (cdsAso.ChangeCount > 0) Or (cdsAso.Modified) Then
      AplicaDatos(cdsAso, 'ASOCIADOS');
   If (cdsDLabo.ChangeCount > 0) Or (cdsDLabo.Modified) Then
      AplicaDatos(cdsDLabo, 'DLABO');
   If (cdsDFam.ChangeCount > 0) Or (cdsDFam.Modified) Then
      AplicaDatos(cdsDFam, 'DFAM');
   If (cdsCtasBco.ChangeCount > 0) Or (cdsCtasBco.Modified) Then
      AplicaDatos(cdsCtasBco, 'CTASBCO');
   If (cdsResol.ChangeCount > 0) Or (cdsResol.Modified) Then
      AplicaDatos(cdsResol, 'RESOL');
   If (cdsDSocioE.ChangeCount > 0) Or (cdsDSocioE.Modified) Then
      AplicaDatos(cdsDSocioE, 'DSOCIOE');

   If (cdsRegCob.ChangeCount > 0) Or (cdsRegCob.Modified) Then
      AplicaDatos(cdsRegCob, 'REGCOB');

   If (cdsAutdisk.ChangeCount > 0) Or (cdsAutdisk.Modified) Then
      AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   If (cdsCobxUse.ChangeCount > 0) Or (cdsCobxUse.Modified) Then
      AplicaDatos(DM1.cdsCobxUse, 'COBXUSE');

   If (cdsDetRegCob.ChangeCount > 0) Or (cdsDetRegCob.Modified) Then
      AplicaDatos(cdsDetRegCob, 'DETREGCOB');

   If (cdsDetRegCob1.ChangeCount > 0) Or (cdsDetRegCob1.Modified) Then
      AplicaDatos(cdsDetRegCob1, 'DETREGCOB');

   If (cdsRepresentante.ChangeCount > 0) Or (cdsRepresentante.Modified) Then
      AplicaDatos(cdsRepresentante, 'REPRESENTANTE');
End;

Procedure TDM1.AplicaDatos(wCDS: TwwClientDataSet; wNomArch: String);
Var
   Delta, Results, OwnerData: OleVariant;
   ErrorCount: Integer;
Begin
   ErrorCount := 1;
   If (wCDS.Modified) Or (wCDS.changeCount > 0) Then
   Begin
      If VarIsEmpty(wCDS.Delta) Then Exit;
    //   ErrorCount := 0;
      wCDS.CheckBrowseMode;
      Results := DCOM1.AppServer.AS_ApplyUpdates(wCDS.ProviderName, wCDS.Delta, -1,
         ErrorCount, OwnerData);
      cdsResultSet.Data := Results;
      wCDS.Reconcile(Results);
   End;
   If ErrorCount <> 0 Then
   Begin
      Showmessage('Error en Actualización de Data')
   End

End;

Procedure TDM1.Filtracds(xxCds: TwwClientDataSet; xxSQL: String);
Begin
   If Length(xxSQL) > 0 Then
   Begin
      xxCds.Close;
      xxCds.DataRequest(xxSQL);
   End;
   xxCds.Open;
End;

Function TDM1.MaxSQL(Const sTabla, sMxCampo, sCondicion: String): String;
Var
   xnum: integer;
   sSQL, sWhere: String;
   D, M, Y: Word;
Begin
   DecodeDate(Date, Y, M, D);
   sWhere := 'WHERE ' + sMxCampo + ' not like (''%A%'') and ' + sMxCampo + ' not like (''%B%'') and ' + sMxCampo + ' not like (''%C%'') ' +
      'and ' + sMxCampo + ' not like (''%D%'') and ' + sMxCampo + ' not like (''%E%'') and ' + sMxCampo + ' not like (''%F%'') ' +
      'and ' + sMxCampo + ' not like (''%G%'') and ' + sMxCampo + ' not like (''%H%'') and ' + sMxCampo + ' not like (''%I%'') ' +
      'and ' + sMxCampo + ' not like (''%J%'') and ' + sMxCampo + ' not like (''%K%'') and ' + sMxCampo + ' not like (''%L%'') ' +
      'and ' + sMxCampo + ' not like (''%M%'') and ' + sMxCampo + ' not like (''%N%'') and ' + sMxCampo + ' not like (''%O%'') ' +
      'and ' + sMxCampo + ' not like (''%P%'') and ' + sMxCampo + ' not like (''%Q%'') and ' + sMxCampo + ' not like (''%R%'') ' +
      'and ' + sMxCampo + ' not like (''%S%'') and ' + sMxCampo + ' not like (''%T%'') and ' + sMxCampo + ' not like (''%U%'') ' +
      'and ' + sMxCampo + ' not like (''%V%'') and ' + sMxCampo + ' not like (''%W%'') and ' + sMxCampo + ' not like (''%X%'') ' +
      'and ' + sMxCampo + ' not like (''%Y%'') and ' + sMxCampo + ' not like (''%Z%'') ';
   If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
      sWhere := sWhere + 'and ' + SMXCAMPO + ' <> '''' '
   Else
      If SRV_D = 'ORACLE' Then
         sWhere := sWhere + 'and NVL(' + SMXCAMPO + ',''VACIO'') <> ''VACIO'' ';
   If Length(Trim(sCondicion)) > 0 Then
      sWhere := sWhere + 'and ' + sCondicion;

   If (SRV_D = 'DB2NT') Or (SRV_D = 'DB2400') Then
      sSQL := 'SELECT MAX(CAST(COALESCE(' + SMXCAMPO + ',''0'') AS DECIMAL(10))) AS X FROM ' + sTabla + ' ' + sWhere
   Else
      If SRV_D = 'ORACLE' Then
         sSQL := 'SELECT MAX(TO_NUMBER(' + SMXCAMPO + ')) AS X FROM ' + sTabla + ' ' + sWhere;

   cdsQry.Close;
   cdsQry.DataRequest(sSQL);
   cdsQry.Open;
   If cdsQry.FieldByName('X').IsNull Then
      result := '1'
   Else
   Begin
      xnum := StrToInt(Trim(cdsQry.FieldByName('X').AsString));
      result := IntToStr(xnum + 1);
   End;

End;

Procedure TDM1.DataModuleDestroy(Sender: TObject);
Begin
   cdsUsuarios.Close;
   cdsGrupos.Close;
   cdsMGRupo.Close;
   cdsAcceso.Close;
   DM1.DCOM1.Connected := False;
End;

Function TDM1.StrZero(wNumero: String; wLargo: Integer): String;
Var
   i: integer;
   s, xTemp: String;
Begin
   s := '';
   For i := 1 To wLargo Do
      s := s + '0';
   s := s + trim(wNumero);
   xTemp := copy(s, length(s) - (wLargo - 1), wLargo);
   result := xTemp;
End;

Procedure TDM1.FiltraTabla(xxCds: TwwClientDataSet; xxArchivo, xxCampo: String);
Var
   xFiltro, xSQL2: String;
Begin
   DM1.cdsAcceso.Open;
   DM1.cdsAcceso.Filtered := False;
   DM1.cdsAcceso.Filter := '';
   DM1.cdsAcceso.Filter := 'NTABLA=' + '''' + xxArchivo + '''';
   DM1.cdsAcceso.Filtered := True;
   xFiltro := '';
   DM1.cdsAcceso.First;
   While Not DM1.cdsAcceso.Eof Do
   Begin
      If Length(xFiltro) = 0 Then
         xFiltro := xxCampo + '=' + '''' + DM1.cdsAcceso.FieldByName('CODIGO').AsString + ''''
      Else
         xFiltro := xFiltro + ' OR ' + xxCampo + '=' + '''' + DM1.cdsAcceso.FieldByName('CODIGO').AsString + '''';
      DM1.cdsAcceso.Next;
   End;

   xSQL2 := 'SELECT * FROM ' + xxArchivo;

   If Length(xFiltro) > 0 Then
      xSQL2 := xSQL2 + ' WHERE ' + xFiltro;

   If Length(xxCampo) > 0 Then
      xSQL2 := xSQL2 + ' ORDER BY ' + xxCampo;

   xxCds.Close;
   xxCds.DataRequest(xSQL2);
   xxCds.Open;
End;

Function TDM1.BuscaCodMod(Const sTabla, sMxCampo: String): String;
Var
   sSQL: String;
   xInt: Integer;
   iContador: Integer;
Begin

   sSQL :=
      ' SELECT TO_NUMBER(ASOCODAUX) CORRELATIVO ' +
      ' FROM  APO201 ' +
      ' WHERE ASOCODMOD=' + QuotedStr(SMXCAMPO) +
      ' AND LENGTH(TRIM(ASOCODAUX)) = 2 ' +
      ' AND ASCII(SUBSTR(ASOCODAUX,1,1)) >= 48 ' +
      ' AND ASCII(SUBSTR(ASOCODAUX,1,1)) <= 57 ' +
      ' AND ASCII(SUBSTR(ASOCODAUX,2,1)) >= 48 ' +
      ' AND ASCII(SUBSTR(ASOCODAUX,2,1)) <= 57 ' +
      ' AND TO_NUMBER(ASOCODAUX) > 0 ' +
      ' GROUP BY TO_NUMBER(ASOCODAUX) ' +
      ' ORDER BY 1 ';

   cdsQry.Close;
   cdsQry.DataRequest(sSQL);
   cdsQry.Open;

   If cdsQry.RecordCount = 0 Then
      result := '01'
   Else
   Begin
      iContador := 1;
      While Not dm1.cdsQry.eof Do
      Begin
         If iContador <> dm1.cdsQry.FieldByName('CORRELATIVO').AsInteger Then
            break;
         Inc(iContador);
         dm1.cdsQry.Next;
      End;
      result := StrZero(inttostr(iContador), 2);
   End;

End;

Procedure TDM1.OrdenaCDS(xxCds: TwwClientDataSet; xxTabla, xxOrden: String);
Var
   xxSQL: String;
Begin
   xxSQL := 'SELECT * FROM ' + xxTabla + ' ORDER BY ' + xxOrden;
   xxCds.Close;
   xxCds.DataRequest(xxSQL);
   xxCds.Open;
End;

Procedure TDM1.AbreCDS(xxCds: TwwClientDataSet; xxSelect: String);
Begin
   xxCds.Close;
   xxCds.DataRequest(xxSelect);
   xxCds.Open;
End;

Procedure TDM1.AccesosUsuariosR(xxModulo, xxUsuario, xxTipo: String; xxForma: TForm);
Begin
   If Trim(cdsUsuarios.FieldByname('GRUPOID').AsString) = '' Then
   Begin
      cdsUsuarios.SetKey;
      cdsUsuarios.FieldByname('USERID').AsString := xxUsuario;
      If Not cdsUsuarios.GotoKey Then
         Exit;
   End;

   cdsGrupos.Filter := '';
   If xxTipo = '1' Then
   Begin
      cdsGrupos.Filter := 'GRUPOID=' + '''' + cdsUsuarios.FieldByname('GRUPOID').AsString + '''' + ' AND '
         + 'MODULOID=' + '''' + xxModulo + '''' + ' AND '
         + 'TIPO=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;
      If (DM1.wAdmin = 'S') Or (DM1.wAdmin = 'P') Then
         Exit;
      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.FieldByName('OBJETO').AsString, xxForma);
         wComponente.Enabled := False;
         cdsGrupos.Next;
      End;
   End;

   If xxTipo = '2' Then
   Begin
      cdsGrupos.Filter := 'GRUPOID=' + '''' + cdsUsuarios.FieldByname('GRUPOID').AsString + '''' + ' AND '
         + 'MODULOID=' + '''' + xxModulo + '''' + ' AND '
         + 'FORMA=' + '''' + xxForma.Name + '''' + ' AND '
         + 'TIPO=' + '''' + xxTipo + '''';
      cdsGrupos.Filtered := True;

      If (DM1.wAdmin = 'S') Or (DM1.wAdmin = 'P') Then Exit;

      cdsGrupos.First;
      While Not cdsGrupos.Eof Do
      Begin
         wComponente := BuscaObjeto(cdsGrupos.FieldByName('OBJETO').AsString, xxForma);
         If (wComponente.Name = 'Z2bbtnModifica') Or
            (wComponente.Name = 'Z2bbtnConsulta') Then
            wComponente.Enabled := False
         Else
         Begin
            wComponente.Visible := False;
         End;
         cdsGrupos.Next;
      End;
   End;
End;

Function TDM1.FRound(xReal: double; xEnteros, xDecimal: Integer): double;
Var
   xParteDec, xflgneg: String;
   xDec: Integer;
   xMultiplo10, xUltdec, xNReal, xPDec: Double;
Begin
   Result := 0;
   xflgneg := '0';
   xMultiplo10 := 0;

   If xReal < 0 Then
   Begin
      xflgneg := '1';
      xReal := xReal * -1;
   End;
   xReal := strtofloat(floattostr(xReal));

   If xReal = 0 Then exit;
 // primer redondeo a un decimal + de lo indicado en los parámetros
   xDec := xDecimal + 1;
   If xDec = 0 Then xMultiplo10 := 1;
   If xDec = 1 Then xMultiplo10 := 10;
   If xDec = 2 Then xMultiplo10 := 100;
   If xDec = 3 Then xMultiplo10 := 1000;
   If xDec = 4 Then xMultiplo10 := 10000;
   If xDec = 5 Then xMultiplo10 := 100000;
   If xDec = 6 Then xMultiplo10 := 1000000;
   If xDec = 7 Then xMultiplo10 := 10000000;

   xNreal := strtofloat(floattostr(xReal * xMultiplo10));
   xPdec := int(strtofloat(floattostr(xReal))) * xMultiplo10;
   xPdec := xNReal - xPDec;

   xPDec := int(xPDec);
   xParteDec := floattostr(xPDec);
   If length(xParteDec) < xDec Then
      xParteDec := strZero(xParteDec, xDec);

   If length(xParteDec) >= xDec Then
      xultdec := strtofloat(copy(xParteDec, xDec, 1))
   Else
   Begin
      xUltDec := 0;
   End;
   xNReal := strtofloat(floattostr(xReal * xMultiplo10 / 10));
   xNReal := int(xNReal);
   If xultdec >= 5 Then xNReal := xNReal + 1;

   If xflgneg = '1' Then
   Begin
      Result := (xNReal / (xMultiplo10 / 10)) * -1;
   End
   Else
   Begin
      Result := xNReal / (xMultiplo10 / 10);
   End;
End;

Procedure TDM1.RecUltTipoCambio(Var xFecha: String);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT * FROM TGE107 ' +
      'WHERE FECHA=(SELECT MAX(FECHA) ' +
      'FROM TGE107 ' +
      'WHERE FECHA<=' + wRepFuncDate + quotedstr(copy(xFecha, 1, 10)) + ')) ' +
      'AND TMONID=''' + wTmonExt + '''';
   DM1.cdsQry.close;
   DM1.cdsQry.dataRequest(xSQL);
   DM1.cdsQry.Open;
End;

Function TDM1.NombreMes(wwMes: String): String;
Begin
   If StrToInt(wwMes) = 1 Then Result := 'Enero';
   If StrToInt(wwMes) = 2 Then Result := 'Febrero';
   If StrToInt(wwMes) = 3 Then Result := 'Marzo';
   If StrToInt(wwMes) = 4 Then Result := 'Abril';
   If StrToInt(wwMes) = 5 Then Result := 'Mayo';
   If StrToInt(wwMes) = 6 Then Result := 'Junio';
   If StrToInt(wwMes) = 7 Then Result := 'Julio';
   If StrToInt(wwMes) = 8 Then Result := 'Agosto';
   If StrToInt(wwMes) = 9 Then Result := 'Setiembre';
   If StrToInt(wwMes) = 10 Then Result := 'Octubre';
   If StrToInt(wwMes) = 11 Then Result := 'Noviembre';
   If StrToInt(wwMes) = 12 Then Result := 'Diciembre';
End;

Function TDM1.BuscaFechaCierre(wwCia, wwBanco, wwCCBanco: String; wwFecha: TDate): Boolean;
Var
   xSQL, wwAnoMM: String;
   xAnoD, xDiaD, xMesD: word;
Begin

   DecodeDate(wwFecha, xAnoD, xMesD, xDiaD);

   wwAnoMM := DM1.StrZero(IntToStr(xAnoD), 4) + DM1.StrZero(IntToStr(xMesD), 2);

   xSQL := 'Select ANOMM from CAJA402  where CIAID=' + quotedstr(wwCia)
      + ' and BANCOID=' + quotedstr(wwBanco);
   If length(wwCCBanco) > 0 Then
      xSQL := xSQL + ' and CCBCOID=' + quotedstr(wwCCBanco);
   DM1.cdsRec.Filter := '';
   DM1.cdsRec.IndexFieldNames := '';
   DM1.cdsRec.Close;
   DM1.cdsRec.DataRequest(xSQL);
   DM1.cdsRec.Open;
   If DM1.cdsRec.RecordCount > 0 Then
   Begin
      DM1.cdsRec.IndexFieldNames := 'ANOMM';
      DM1.cdsRec.Last;
      If Strtoint(DM1.cdsRec.FieldByName('ANOMM').AsString) >= strtoint(wwAnoMM) Then
         result := true
      Else
         result := false;
   End
   Else
      result := false;
   DM1.cdsRec.Filter := '';
   DM1.cdsRec.IndexFieldNames := '';
   DM1.cdsRec.Close;
End;

Function DiaAperturado(xCia: String; xFecha: TDate; xCaja: String): bool;
Var
   sfecha, ssql: String;
Begin
   sFecha := formatdatetime(wFormatFecha, xFecha);
   ssql := 'BANCOID=' + quotedstr(xCaja);
  // Si es Caja
   If dm1.DisplayDescrip('prvQry2', 'TGE105', 'BCOTIPCTA', ssql, 'BCOTIPCTA') = 'C' Then
   Begin
    // se filtra ´por la caja y la fecha
      ssql := 'SELECT * FROM CAJA310 '
         + 'WHERE CIAID=' + QuotedStr(xCia) + ' AND BANCOID=' + quotedstr(xCaja) + ' AND STFECHA=' + quotedstr(sfecha)
         + ' ORDER BY STFECHA';
      dm1.cdsQry2.Close;
      dm1.cdsQry2.DataRequest(ssql);
      dm1.cdsQry2.Open;
    // si el campo es nulo o en blanco
      If (dm1.cdsQry2.fieldbyname('STSALDOINIC').AsString = '') Or
         (dm1.cdsQry2.fieldbyname('STSALDOINIC').AsString = null) Then
      Begin
       // es porque no ha sido aperturado
         errormsg('Error', 'El Día no se encuentra aperturado');
         result := False;
      End
      Else
         result := true; // caso contrario, el día esta aperturado
   End
   Else
      result := true; // caso contrario, porque no es caja
End;

Function TDM1.UltimoNum(wPrv, wTabla, wCampo, wWhere: String): String;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT MAX(' + wCampo + ') ULTNUM FROM ' + wTabla;
   If length(wWhere) > 0 Then xSQL := xSQL + ' WHERE ' + wWhere;
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   If (cdsQry.FieldbyName('ULTNUM').value = null) Or (cdsQry.FieldbyName('ULTNUM').AsString = '') Then
      result := '1'
   Else
      result := inttostr(cdsQry.FieldbyName('ULTNUM').asInteger + 1);
End;

Function TDM1.RecuperarTipoCambio(xFecha: TDateTime): String;
Var
   xFechaFormato: String;
Begin
   xFechaFormato := Formatdatetime(wFormatFecha, xFecha);
   RecUltTipoCambio(xFechaFormato);

   If cdsQry.RecordCount <> 0 Then
   Begin
      If Not dm1.cdsQry.FieldByName(wTipoCambioUsar).isnull Then
         Result := dm1.cdsQry.FieldByName(wTipoCambioUsar).AsString
      Else
         Result := '0.00';
   End
   Else
   Begin
      Result := '0.00';
   End;
End;

Function TDM1.DisplayDescripLocal(cds: TwwClientdataset; xCodigo, xDato, xMostrar: String): String;
Begin
   If cds.Locate(xcodigo, VarArrayOf([xDato]), []) Then
      Result := cds.fieldbyname(xMostrar).AsString
   Else
      Result := '';
End;

Procedure TDM1.abreCuentas(xCia: String);
Var
   xSQL: String;
Begin
   If Not cdsCuentas.Active Then
   Begin
      xSQL := 'SELECT CUENTAID, CTADES,CTAABR FROM TGE202 ' +
         'WHERE CTA_DET=''S'' AND CIAID=' + quotedstr(xCia);
      cdsCuentas.close;
      cdsCuentas.DataRequest(xSQL);
      cdsCuentas.Open;
   End;
End;

Function TDM1.RecuperarDatos(xTabla, xCampos, xWhere: String): Boolean;
Begin
   DM1.SQLSelect(xTabla, xCampos, xWhere);
   DM1.cdsRec.active := False;
   DM1.cdsRec.active := True;

   If DM1.cdsRec.RecordCount = 0 Then
      Result := False
   Else
      Result := True;
End;

Procedure TDM1.SQLSelect(Const xTabla, xCampos, xWhere: WideString);
Var
   xSQL: String;
Begin
   If xWhere = '' Then
      xSQL := 'SELECT ' + xCampos + ' FROM ' + xTabla
   Else
      xSQL := 'SELECT ' + xCampos + ' FROM ' + xTabla + ' WHERE ' + xWhere;
   DM1.cdsRec.close;
   DM1.cdsRec.dataRequest(xSQL);
End;

Procedure TDM1.RecuperaCierre(Var xFecha: TDateTime; xFrecu: Integer);
Begin
   If RecuperarDatos('CAJA309', 'FECCIERRE, FRECUCIERRE', 'FACTIVO = ''S''') Then
   Begin
      xFecha := dm1.cdsRec.fieldbyname('FECCIERRE').asdatetime;
      xFrecu := dm1.cdsRec.fieldbyname('FRECUCIERRE').AsInteger;
   End
   Else
   Begin
      xFecha := 0;
      xFrecu := 0;
   End;
End;

Function TDM1.EquivFPago(xFAGOID, xBANCOID: String): String;
Begin
   cdsEquiv.Open;
   If cdsEquiv.Locate('FPAGOID;BANCOID', VarArrayOf([xFAGOID, xBANCOID]), []) Then
      Result := cdsEQuiv.fieldbyname('EQUIID').AsString
   Else
      Result := '';
End;

Function TDM1.NumeroNoNulo(xCampo: TField): double;
Begin
   If Not xCampo.IsNull Then
      Result := xCampo.asFloat
   Else
      Result := 0;
End;

Function TDM1.VerificaAcceso(Pass, EncDes: String): String;
Begin
// Inicio: SPP_201402_COB   Cambio de DCOM a Socket
{   If EncDes = '0' Then
      result := FAccesos.DesEncripta(Pass)
   Else
      result := FAccesos.Encripta(Pass);}
// Fin: SPP_201402_COB     Cambio de DCOM a Socket
End;

Procedure TDM1.cdsEjecutaReconcileError(DataSet: TCustomClientDataSet;
   E: EReconcileError; UpdateKind: TUpdateKind;
   Var Action: TReconcileAction);
Begin
   Action := HandleReconcileError(DataSet, UpdateKind, E);
End;

Procedure TDM1.LimpiaClientDataset(cds: TwwClientDataset);
Begin
   With cds Do
   Begin
      IndexFieldNames := '';
      Filter := '';
      Filtered := False;
      If active Then
         Close;
   End;
End;

//Eduardo Alva Aliaga
//Inicio

Function TDM1.CrgDescrip(xCondicion, xTabla, xCampo: String): String;
Begin
   cdsQry.Close;
   cdsQry.DataRequest('Select * From ' + xTabla + ' Where ' + xCondicion);
   cdsQry.Open;
   If cdsQry.RecordCount = 1 Then
      Result := cdsQry.fieldbyname(xCampo).AsString
   Else
      Result := '';

   cdsQry.Close;

End;

Procedure TDM1.CrgDatos;
Var
   xAsoId, xCondicion: String;
Begin
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   fPagoCuotas.EdtCodMod.Text := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   fPagoCuotas.EdtNomGen.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   fPagoCuotas.EdtDNI.Text := DM1.cdsAso.FieldByName('ASODNI').AsString;
   fPagoCuotas.EdtTipAso.Text := DM1.cdsAso.FieldByName('ASOTIPID').AsString;
   fPagoCuotas.EdtDesAso.Text := DM1.CrgDescrip('ASOTIPID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOTIPID').AsString)), 'APO107', 'ASOTIPDES');
   fPagoCuotas.EdtCtaAho.Text := DM1.cdsAso.FieldByName('ASONCTA').AsString;
   fPagoCuotas.EdtSitCta.Text := DM1.cdsAso.FieldByName('SITCTA').AsString;
   fPagoCuotas.EdtSitDes.Text := DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)), 'COB103', 'SITCTADES');
   fPagoCuotas.EdtNumRes.Text := DM1.cdsAso.FieldByName('ASORESNOM').AsString;
   fPagoCuotas.EdtFecRes.Text := DM1.cdsAso.FieldByName('ASOFRESNOM').AsString;
   fPagoCuotas.EdtCodUse.Text := DM1.cdsAso.FieldByName('USEID').AsString;
   xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
   fPagoCuotas.EdtDesUse.Text := DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');
   fPagoCuotas.EdtCodLug.Text := DM1.cdsAso.FieldByName('UPROID').AsString;


   fPagoCuotas.EdtDesLug.Text := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
   If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE' Then
   Begin
      fPagoCuotas.edtLiquidado.Text := DM1.CrgDescrip('TIPBENEF=' + QuotedStr(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)), 'PVS301', 'PVSTIPBEN'))), 'TGE186', 'BENEFABR');
      fPagoCuotas.edtLiquidado.Font.Color := clRed;
   End
   Else
   Begin
      fPagoCuotas.edtLiquidado.Text := 'ACTIVO';
      fPagoCuotas.edtLiquidado.Font.Color := clNavy;
   End;

   fPagoCuotas.CrgPrestamos;

   If DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), 'APO201', 'ASOTIPID') = 'DO' Then
   Begin
      If DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), 'APO201', 'AUTDESAPO') = 'S' Then
      Else
      Begin
         MessageDlg('ASOCIADO NO TIENE AUTORIZACION DE DESCUENTO FIRMADA!!! ', mtWarning, [mbYes], 0);
      End;
   End;

End;

Procedure TDM1.LimpiaDatos;
Begin
   If DM1.xSgr <> '0' Then fPagoCuotas.EdtCodMod.Text := '';
   fPagoCuotas.EdtNomGen.Text := '';
   fPagoCuotas.EdtDNI.Text := '';
   fPagoCuotas.EdtTipAso.Text := '';
   fPagoCuotas.EdtDesAso.Text := '';
   fPagoCuotas.EdtCtaAho.Text := '';
   fPagoCuotas.EdtSitCta.Text := '';
   fPagoCuotas.EdtSitDes.Text := '';
   fPagoCuotas.EdtNumRes.Text := '';
   fPagoCuotas.EdtFecRes.Text := '';
   fPagoCuotas.EdtCodUse.Text := '';
   fPagoCuotas.EdtDesUse.Text := '';
   fPagoCuotas.EdtCodLug.Text := '';
   fPagoCuotas.EdtDesLug.Text := '';

End;
// Inicio HPC_201503_COB
Procedure TDM1.CargaCronograma(xAsoId, xCreDid: String);
Var
   xCondicion, xSQL: String;
Begin
   If xHis = 'S' Then
// Inicio: SPP_201309_COB                : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla
      xSQL := 'SELECT ASOID, CREDID,SUBSTR(FEC_VEN,1,4) CREANO,SUBSTR(FEC_VEN,5,2) CREMES, '
         + '       TO_DATE(FEC_VEN,''YYYY-MM-DD'') CREFVEN, AMO_PAG CRECAPITAL, '
         + '       INT_PAG CREMTOINT,GAS_PAG CREMTOFLAT, NVL(MON_PAG,0) AS CREMTOCOB, '
         + '       NVL(MON_CUO,0) AS CREMTO,TO_NUMBER(ITE_CUO) CRECUOTA,CREESTADO,CREESTID, '
         + '       AMO_ACT CREAMORT,GAS_ACT CREFLAT,'' '' FLAGVAR, '
// Inicio HPC_201720_COB
// Exportación a Excel de los cronogramas de Pago
         + '        '' '' DIF,'
// Fin HPC_201720_COB
         + '       0.00 CREMTOEXC, 0.00 CREAPLEXC, null REPRO, ''      '' PERCOB, '
         + '       NVL(DESGRAV_PAC,0) MONPACDESGRAV, '
         + '       NVL(DESGRAV_PAG,0) MONCOBDESGRAV '
         + 'FROM PAGO '
         + 'Where ASOID =' + QuotedStr(Trim(xAsoId))
         + '  And CREDID=' + QuotedStr(Trim(xCreDid)) + ' '
         + 'Order By CREDID,CRECUOTA '
// Fin: SPP_201309_COB                : 06/06/2013  Acuerdos de Cobranza Adicional por Planilla
   Else
      xSQL := 'SELECT ASOID,CREDID,CREANO,CREMES,CREFVEN,CREFVENINI,CRECAPITAL,CREMTOINT,'
         + '       CREMTOFLAT,NVL(CREMTOCOB,0) AS CREMTOCOB,NVL(CREMTO,0) AS CREMTO,CRECUOTA, '
         + '       CREESTADO,CREESTID,CREAMORT,CREFLAT,FLAGVAR, NVL(CREMTOEXC,0) CREMTOEXC, '
// Inicio HPC_201720_COB
// Exportación a Excel de los cronogramas de Pago
         + '       '' '' DIF,'
// Fin HPC_201720_COB
         + '       NVL(CREAPLEXC,0) CREAPLEXC, '
         + '       CASE WHEN CREFVEN<>CREFVENINI THEN ''(*)'' ELSE NULL END AS REPRO, '
         + '       PERCOB,'
         + '       NVL(MONPACDESGRAV,0) MONPACDESGRAV, NVL(MONCOBDESGRAV,0) MONCOBDESGRAV '
         + 'FROM CRE302 '
         + 'Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' '
         + 'Order By CREDID,CRECUOTA ';
   cdsCuotas.Close;
   cdsCuotas.DataRequest(xSQL);
   cdsCuotas.Open;
   TNumericField(cdsCuotas.fieldbyname('CRECAPITAL')).DisplayFormat := '###,###.#0';
   TNumericField(cdsCuotas.fieldbyname('CREMTOINT')).DisplayFormat := '###,###.#0';
   TNumericField(cdsCuotas.fieldbyname('CREMTOFLAT')).DisplayFormat := '###,###.#0';
   TNumericField(cdsCuotas.fieldbyname('CREMTOCOB')).DisplayFormat := '###,###.#0';
   TNumericField(cdsCuotas.fieldbyname('CREMTO')).DisplayFormat := '###,###.#0';
   TNumericField(cdsCuotas.fieldbyname('MONCOBDESGRAV')).DisplayFormat := '###,###.#0';
   //Fin: DPP_201211_COB

   If xHis = 'S' Then
   Begin
      fCronoPag.EdtCodMod.Text := DM1.cdsSolicitudA.FieldByName('COD_MOD').AsString;
      fCronoPag.EdtFecPre.Text := DM1.cdsSolicitudA.FieldByName('CREFOTORG').asString;
      fCronoPag.EdtFecDes.Text := DM1.cdsSolicitudA.FieldByName('CREFOTORG').asString;
      fCronoPag.EdtMonto.Text := FormatFloat('###,###.#0', DM1.cdsSolicitudA.FieldByName('CREMTOOTOR').AsFloat);
      fCronoPag.EdtDesUse.Text := fPagoCuotas.EdtCodUse.Text + ' - ' + fPagoCuotas.EdtDesUse.Text;
      fCronoPag.EdtCreDid.Text := DM1.cdsSolicitudA.FieldByName('CREDID').AsString;
      fCronoPag.EdtMoneda.Text := 'S/.';
      fCronoPag.EdtNumCuo.Text := DM1.cdsSolicitudA.FieldByName('CRENUMCUO').AsString;
      fCronoPag.EdtNomGen.Text := fPagoCuotas.EdtNomGen.Text;
      xCondicion := 'TIPCREID=' + QuotedStr(Trim(Copy(DM1.cdsSolicitudA.FieldByName('CREDID').AsString, 7, 2)));
      fCronoPag.EdtDesTip.Text := Copy(DM1.cdsSolicitudA.FieldByName('CREDID').AsString, 7, 2) + ' - ' + DM1.CrgDescrip(xCondicion, 'CRE110', 'TIPCREDES');
      // Inicio: COB_201822_HPC
      // Se retira ; no usada
      // ;
      // Fin: COB_201822_HPC
      fCronoPag.lblEstado.Caption := DM1.cdsSolicitudA.fieldbyname('CREESTADO').AsString;
      // Inicio: COB_201822_HPC
      // Se añade fecha de cancelación del credito en el cronograma de pago del credito
      If Length(trim(DM1.cdsSolicitud.FieldByName('CREFCAN').AsString))>0 Then
      Begin
         fCronoPag.EdtFecCan.Visible := True;
         fCronoPag.EdtFecCan.Text := DM1.cdsSolicitud.fieldbyname('CREFCAN').AsString;
      End
      Else fCronoPag.EdtFecCan.Visible := False;
      // Fin: COB_201822_HPC
   End
   Else
   Begin
      fCronoPag.EdtCodMod.Text := DM1.cdsSolicitud.FieldByName('ASOCODMOD').AsString;
      fCronoPag.EdtFecPre.Text := DM1.cdsSolicitud.FieldByName('CREFOTORG').asString;
      fCronoPag.EdtFecDes.Text := DM1.cdsSolicitud.FieldByName('CREFDES').asString;
      fCronoPag.EdtMonto.Text := FormatFloat('###,###.#0', DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
      // Inicio: COB_201822_HPC
      // Se añade fecha de cancelación del credito en el cronograma de pago del credito
      If Length(trim(DM1.cdsSolicitud.FieldByName('CREFCAN').AsString))>0 Then
      Begin
         fCronoPag.EdtFecCan.Visible := True;
         fCronoPag.EdtFecCan.Text := DM1.cdsSolicitud.fieldbyname('CREFCAN').AsString;
      End
      Else fCronoPag.EdtFecCan.Visible := False;
      // Fin: COB_201822_HPC
      // vhn
      If DM1.xSgr = 'R' Then
      Begin
         fCronoPag.EdtDesUse.Text := fRefiSeleAso.EdtCodUse.Text + ' - ' + fRefiSeleAso.EdtDesUse.Text;
         fCronoPag.EdtNomGen.Text := fRefiSeleAso.EdtNomGen.Text;
      End
      Else
      Begin
         fCronoPag.EdtDesUse.Text := fPagoCuotas.EdtCodUse.Text + ' - ' + fPagoCuotas.EdtDesUse.Text;
         fCronoPag.EdtNomGen.Text := fPagoCuotas.EdtNomGen.Text;
      End;
      // end vhn

      fCronoPag.EdtCreDid.Text := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
      If DM1.cdsSolicitud.FieldByName('TMONID').AsString = 'N' Then
         fCronoPag.EdtMoneda.Text := 'S/.'
      Else
         fCronoPag.EdtMoneda.Text := 'US$';
      fCronoPag.EdtNumCuo.Text := DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString;

      xCondicion := 'TIPCREID=' + QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString));
      fCronoPag.EdtDesTip.Text := DM1.cdsSolicitud.FieldByName('TIPCREID').AsString + ' - ' + DM1.CrgDescrip(xCondicion, 'CRE110', 'TIPCREDES');
      ;
      fCronoPag.lblEstado.Caption := DM1.cdsSolicitud.fieldbyname('CREESTADO').AsString;
   End;
End;
// Fin HPC_201503_COB

Function TDM1.FechaSys: tDateTime;
Var
   FormatoFecha: PChar;
Begin
   FormatoFecha := 'dd/MM/yyyy';
   SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, FormatoFecha);
   cdsAux.Close;
   cdsAux.DataRequest('SELECT TO_CHAR(SYSDATE,''dd/mm/yyyy'') AS FECHA FROM DUAL');
    cdsAux.Open;
   If cdsAux.RecordCount > 0 Then
      Result := FechasOutPut(cdsAux.fieldbyname('FECHA').AsDateTime)
   Else
      Result := FechasOutPut(Date);
   cdsAux.Close;
End;

Function TDM1.FechasOutPut(xFInput: tDateTime): tDateTime;
Begin
   Result := StrToDate(Copy(DateToStr(xFInput), 1, 10));
End;

Function TDM1.CalSalPag(xAsoid, xCreDid, xFecCalCulo, xCrecuota, xCnd, xFrmPag: String): Currency;
Var
   xfVenc, xSql, xOfiDes, xEstado: String;
   xSaldo: Currency;
Begin
   cdsEjecuta.Close;
   If xCnd = '0' Then
      cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREFVEN,CREFVENINI,CREAMORT,CREFLAT,CREESTID FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CRECUOTA=' + xCreCuota + ' AND CREESTID IN (''02'',''11'',''27'',''31'') Order By CREDID,CRECUOTA')
   Else
      If xCnd = '1' Then
         cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREFVEN,CREFVENINI,CREAMORT,CREFLAT,CREESTID FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CRECUOTA>=' + xCreCuota + ' AND CREESTID IN (''02'',''11'',''27'',''31'') Order By CREDID,CRECUOTA')
      Else
         cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREFVEN,CREFVENINI,CREAMORT,CREFLAT,FLAGVAR,CREESTID FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND FLAGVAR=''S'' AND CREESTID IN (''02'',''11'',''27'',''31'') Order By CREDID,CRECUOTA');

   cdsEjecuta.Open;
   cdsEjecuta.First;
   xSaldo := 0;
   While Not cdsEjecuta.Eof Do
   Begin
      xfVenc := Trim(cdsEjecuta.fieldbyname('CREANO').AsString + cdsEjecuta.fieldbyname('CREMES').AsString);
      xEstado := cdsEjecuta.fieldbyname('CREESTID').AsString;
      If (xfVenc > xFecCalCulo) And (cdsEjecuta.fieldbyname('CREFVEN').AsString = cdsEjecuta.fieldbyname('CREFVENINI').AsString) Then
      Begin
         If xCnd = '0' Then
            xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREMTO').AsCurrency - cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency)

         Else
            If cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency > 0 Then
               xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREAMORT').AsCurrency + cdsEjecuta.fieldbyname('CREFLAT').AsCurrency) - cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency
            Else
               xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREAMORT').AsCurrency + cdsEjecuta.fieldbyname('CREFLAT').AsCurrency);

      End
      Else
      Begin
         xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREMTO').AsCurrency - cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency);
      End;
      cdsEjecuta.Next;
   End;
   cdsEjecuta.Close;
   Result := xSaldo;

End;

Function TDM1.CrgArea(xUsuario: String): String;
Begin
   cdsUser.Close;
   cdsUser.DataRequest('SELECT USERID,USERNOM,AREA,ORIGEN,NIVEL FROM USERTABLE WHERE USERID=' + QuotedStr(Trim(xUsuario)));
   cdsUser.Open;
   If cdsUser.RecordCount = 1 Then
      Result := cdsUser.fieldByname('AREA').AsString + cdsUser.fieldByname('ORIGEN').AsString + cdsUser.fieldByname('NIVEL').AsString
   Else
      Result := '';
   cdsUser.Close
End;

Function TDM1.Valores(Texto: String): Currency;
Var
   xMont, xValor: String;
   I: Integer;
Begin
   For I := 1 To Length(Trim(Texto)) Do
   Begin
      xMont := Copy(Texto, I, 1);
      If xMont <> ',' Then
         xValor := Trim(xValor) + Trim(xMont);
   End;
   Result := StrToFloat(xValor);
End;

Procedure TDM1.AplicaSaldoPre(xAsoId, xCreDid: String);
Var
   xSaldoAct: Currency;
Begin
   xSaldoAct := DM1.SaldoActual(xAsoId, xCreDid, '0');
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest('SELECT ASOID,CREDID,CREESTID,CREESTADO,CRESDOACT FROM CRE301 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' And CREESTID IN (''02'',''21'') ');
   DM1.cdsQry3.Open;
   If xSaldoAct > 0 Then
   Begin
      cdsQry3.Edit;
      cdsQry3.fieldbyname('CRESDOACT').AsFloat := xSaldoAct;
      cdsQry3.fieldbyname('CREESTID').AsString := '02';
      cdsQry3.fieldbyname('CREESTADO').AsString := 'POR COBRAR';
      cdsQry3.ApplyUpdates(0);
   End
   Else
   Begin
      cdsQry3.Edit;
      cdsQry3.fieldbyname('CREESTID').AsString := '21';
      cdsQry3.fieldbyname('CREESTADO').AsString := 'CANCELADO';
      cdsQry3.fieldbyname('CRESDOACT').AsFloat := xSaldoAct;
      cdsQry3.ApplyUpdates(0);
   End;
   DM1.cdsQry3.Close;
   If DM1.xCnd <> 'S' Then DM1.CrgDatos;
End;

Function TDM1.SaldoActual(xAsoId, xCreDid, xTip: String): Currency;
Var
   xSaldo: Currency;
Begin
   xSaldo := 0;
   cdsMovCre.Close;
   If xTip = '0' Then
      cdsMovCre.DataRequest('SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' And CREESTID IN (''02'',''11'',''27'',''14'', ''19'',''31'')')
   Else
      cdsMovCre.DataRequest('SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' And CREESTID IN (''02'',''11'',''27'', ''19'',''31'') ');

   cdsMovCre.Open;
   If cdsMovCre.RecordCount > 0 Then
   Begin
      cdsMovCre.First;
      While Not cdsMovCre.Eof Do
      Begin
         xSaldo := xSaldo + (cdsMovCre.fieldbyname('CREMTO').AsFloat - cdsMovCre.fieldbyname('CREMTOCOB').AsFloat);
         cdsMovCre.Next;
      End;
   End;
   Result := xSaldo;
   cdsMovCre.Close;
End;

Procedure TDM1.ActSaldoPrest(xAsoId: String);
Var
   xCreDid: String;
   xSaldoActual: Currency;
Begin
   cdsQry5.Close;
   cdsQry5.DataRequest('SELECT ASOID,CREDID,CRESDOACT,CREESTID,CREESTADO FROM CRE301 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREESTID IN (''02'',''21'')');
   cdsQry5.Open;
   cdsQry5.First;
   xSaldoActual := 0;
   While Not cdsQry5.Eof Do
   Begin
      xCreDid := cdsQry5.fieldbyname('CREDID').AsString;
      xSaldoActual := SaldoActual(xAsoId, xCreDid, '0');
      If xSaldoActual > 0 Then
      Begin
         cdsQry5.Edit;
         cdsQry5.fieldbyname('CRESDOACT').AsFloat := xSaldoActual;
         cdsQry5.fieldbyname('CREESTID').AsString := '02';
         cdsQry5.fieldbyname('CREESTADO').AsString := 'POR COBRAR';
      End
      Else
      Begin
         cdsQry5.Edit;
         cdsQry5.fieldbyname('CREESTID').AsString := '21';
         cdsQry5.fieldbyname('CREESTADO').AsString := 'CANCELADO';
         cdsQry5.fieldbyname('CRESDOACT').AsFloat := xSaldoActual;
      End;
      xSaldoActual := 0;
      cdsQry5.Next;
   End;
   cdsQry5.ApplyUpdates(0);
   cdsQry5.Close;
End;

Function TDM1.xIntToLletras(Numero: Integer; Dec: Real): String;

Function xxIntToLletras(Valor: LongInt): String;
   Const
      aUnidad: Array[1..15] Of String =
      ('UN', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS',
         'SIETE', 'OCHO', 'NUEVE', 'DIEZ', 'ONCE', 'DOCE',
         'TRECE', 'CATORCE', 'QUINCE');
      aCentena: Array[1..9] Of String =
      ('CIENTO', 'DOSCIENTOS', 'TRESCIENTOS',
         'CUATROCIENTOS', 'QUINIENTOS', 'SEISCIENTOS',
         'SETECIENTOS', 'OCHOCIENTOS', 'NOVECIENTOS');
      aDecena: Array[1..9] Of String =
      ('DIECI', 'VEINTI', 'TREINTA', 'CUARENTA', 'CINCUENTA',
         'SESENTA', 'SETENTA', 'OCHENTA', 'NOVENTA');
   Var
      Centena, Decena, Unidad, Doble: LongInt;
      Linea: String;
   Begin
      If valor = 100 Then
         Linea := ' CIEN '
      Else
      Begin
         Linea := '';
         Centena := Valor Div 100;
         Doble := Valor - (Centena * 100);
         Decena := (Valor Div 10) - (Centena * 10);
         Unidad := Valor - (Decena * 10) - (Centena * 100);

         If Centena > 0 Then Linea := Linea + Acentena[centena] + ' ';

         If Doble > 0 Then
         Begin
            If Doble = 20 Then
               Linea := Linea + ' VEINTE '
            Else
            Begin
               If doble < 16 Then
                  Linea := Linea + aUnidad[Doble]
               Else
               Begin
                  Linea := Linea + ' ' + Adecena[Decena];
                  If (Decena > 2) And (Unidad <> 0) Then Linea := Linea + ' Y ';
                  If Unidad > 0 Then Linea := Linea + aUnidad[Unidad];
               End;
            End;
         End;
      End;
      Result := Linea;
   End;

//----Inicio---///
Var
   Millones, Miles, Unidades: LongInt;
   Linea: String;
   xnum, xdec: Real;

Begin
  {Inicializamos el string que contendrá las letras según el valor
  numérico}

   xnum := Int(Numero);
   xdec := (dec - xnum) * 100;

   If numero = 0 Then
      Linea := 'CERO'
   Else
      If numero < 0 Then
         Linea := 'MENOS '
      Else
         If numero = 1 Then
         Begin
            Linea := 'UN';
            xIntToLletras := Linea;
            exit
         End
         Else
            If numero > 1 Then Linea := '';

  {Determinamos el Nº de millones, miles y unidades de numero en
  positivo}
   Numero := Abs(Numero);
   Millones := numero Div 1000000;
   Miles := (numero - (Millones * 1000000)) Div 1000;
   Unidades := numero - ((Millones * 1000000) + (Miles * 1000));

  {Vamos poniendo en el string las cadenas de los números(llamando
  a subfuncion)}
   If Millones = 1 Then
      Linea := Linea + ' UN MILLON '
   Else
      If Millones > 1 Then
         Linea := Linea + xxIntToLletras(Millones)
            + ' MILLONES ';

   If Miles = 1 Then
      Linea := Linea + ' MIL '
   Else
      If Miles > 1 Then
         Linea := Linea + xxIntToLletras(Miles) +
            ' MIL ';

   If Unidades > 0 Then Linea := Linea + xxIntToLletras(Unidades);
//Inicio COB_201822_HPC
//Se Cambia de Nuevos Soles a Soles
 //xIntToLletras := Linea + ' y ' + Format('%.2d', [round(xdec)]) + '/100 Nuevos Soles';
   xIntToLletras := Linea + ' y ' + Format('%.2d', [round(xdec)]) + '/100 Soles';
//Final COB_201822_HPC
End;

Function TDM1.DesMes(xMes: Integer; xAbr: Char): String;
Const
   NomMes: Array[1..12] Of String = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Setiembre', 'Octubre', 'Noviembre', 'Diciembre');
Begin
   If xAbr = 'S' Then
      Result := Copy(NomMes[xMes], 1, 3)
   Else
      Result := NomMes[xMes];
End;

Function TDM1.StrSpace(wNumero: String; wLargo: Integer): String;
Var
   i: integer;
   s, xTemp: String;
Begin
   s := '';
   For i := 1 To wLargo Do
      s := s + ' ';
   s := s + trim(wNumero);
   xTemp := copy(s, length(s) - (wLargo - 1), wLargo);
   result := xTemp;
End;

Procedure TDM1.CrgLisFrmPag;
Var
   xSQL: String;
Begin
   DM1.xArea := Copy(CrgArea(DM1.wUsuario), 1, 3);
   If DM1.xArea <> 'SIS' Then
      xSQL := 'SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGOID IN (SELECT FORPAGOID ' +
         'FROM COB_ASI_FOR_PAG_USU WHERE USERID=' + QuotedStr(DM1.wUsuario) + 'AND ESTADO=''0'') ' +
         ' AND FORPAGACT=''S''  ORDER BY FORPAGOID';
   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.DataRequest(xSql);
   DM1.cdsFormaPago.Open;
   fNPago.DBLCTipCob.LookupTable := DM1.cdsFormaPago;
   fNPago.DBLCTipCob.LookupField := 'FORPAGOID';
   If DM1.cdsFormaPago.RecordCount > 0 Then
      fNPago.DBLCTipCob.Enabled := True
   Else
      fNPago.DBLCTipCob.Enabled := False;

End;

//Fin

Function TDM1.RecuperaDatos(xTabla, xCampo, xVariable, xRecupera: String): String;
Begin
   cdsQry2.Close;
   cdsQry2.DataRequest('Select * From ' + xTabla + ' WHERE ' + xCampo + '=' + QuotedStr(Trim(xVariable)));
   cdsQry2.Open;
   If cdsQry2.RecordCount = 1 Then
      Result := cdsQry2.fieldbyname(xRecupera).AsString
   Else
      Result := '';
   cdsQry2.Close;

End;

Function TDM1.UltimoDia(xMes, xAno: Integer): String;
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

Procedure TDM1.GnrCronograma(xAsoid, xCredId: String; xTas_Int, xTas_Flt, xMonOto: Real; xFec_Pre: tDateTime; xNumCuo: Integer);
Var
   i, j: Integer;
   xMon_Cuo, cNumer, cDenom, sFlt_Pag, xSal_Pag: Real;
   xMon_Aux, xAmo_Pag, xInt_Pag, xGas_Pag, s, r: Real;
   sMon_Cuo, sAmo_Pag, sInt_Pag, sGas_Pag: Real;
   xFec_Ven: tDateTime;
   tMes, tAno, xMes, xAno: Integer;
   tDia, xDia, xPrdGra: String;

Begin
   xPrdGra := Trim(DM1.RecuperaDatos('CRE110', 'TIPCREID', Copy(Trim(xCreDid), 7, 2), 'PER_GRA'));
   If xPrdGra > '0' Then
   Begin
      For j := 1 To StrToInt(xPrdGra) Do
      Begin
         tDia := Copy(DateToStr(xFec_Pre), 1, 2);
         tMes := StrToInt(Copy(DateToStr(xFec_Pre), 4, 2)) + 1;
         tAno := StrToInt(Copy(DateToStr(xFec_Pre), 7, 4));
         If tMes > 12 Then
         Begin
            tMes := 1;
            tAno := tAno + 1;
         End;
         xFec_Pre := StrToDate(tDia + '/' + Format('%.2d', [tMes]) + '/' + Trim(IntToStr(tAno)));
      End;

   End;

   cdsCambios.Close;
   cdsCambios.DataRequest('SELECT ASOID,ASOCODMOD,ASOCODPAGO,TIPCREID,TMONID,CREANO,' +
      'CREMES,CRESALDO,CRECUOTA,CREMTO,CREAMORT,CREINTERES,CREFLAT,' +
      'CREFVEN,CREANOINI,CREMESINI,CRECUOTAINI,CREFVENINI,USEID,UPROID,UPAGOID,BANCOID,CCBCOID,USUARIO,FREG,' +
      'FORPAGOID,ASOAPENOM,CREDID,CRETCALID,TIPDESEID,TMONABR,CRETCALABR,' +
      'TIPDESABR,LISTAABR,CIAID,CREESTID,CREESTADO,LISTAID,ASOCODAUX,' +
      'CIUDID,AREAID,CRECAPCRON,CRECAPITAL,CREMTOINT,CREMTOFLAT,CREMTOCOB ' +
      'FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)));

   cdsCambios.Open;
   cdsCambios.Edit;

//cdsCreditoCab

   cdsCredito.Close;
   cdsCredito.DataRequest('SELECT ASOCODMOD,ASOCODAUX,ASOCODPAGO,TIPCREID,USEID,UPROID,  ' +
      'UPAGOID,BANCOID,USUARIO,FREG,FORPAGOID,ASOAPENOM,             ' +
      'CREDID,CRETCALID,TMONABR,CRETCALABR,                ' +
      'LISTAABR,CIAID,LISTAID,CIUDID FROM CRE301                     ' +
      'WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCredId)));
   cdsCredito.Open;
   If xTas_Int <> 0 Then
   Begin
      xTas_Int := StrToFloat(FloatToStrF(xTas_Int / 100, ffFixed, 15, 4));
      xTas_Flt := StrToFloat(FloatToStrF(xTas_Flt / 100, ffFixed, 15, 4));
      cNumer := xTas_Int * Power((1 + xTas_Int), xNumCuo);
      cDenom := Power((1 + xTas_Int), xNumCuo) - 1;
      xMon_Cuo := StrToFloat(FloatToStrF(xMonOto * (cNumer / cDenom), ffFixed, 15, 2));
      sFlt_Pag := StrToFloat(FloatToStrF(xMonOto * xTas_Flt / xNumCuo, ffFixed, 15, 2));
   End
   Else
   Begin
      xMon_Cuo := xMonOto / xNumCuo;
      xMon_Cuo := StrToFloat(FloatToStrF(xMon_Cuo, ffFixed, 15, 2));
   End;
   xMon_Aux := xMonOto;
   xSal_Pag := xMonOto;
   sMon_Cuo := 0;
   sAmo_Pag := 0;
   sInt_Pag := 0;
   sGas_Pag := 0;
   s := 0;
   r := 0;
   For i := 1 To xNumCuo Do
   Begin
      xInt_Pag := StrToFloat(FloatToStrF(xMonOto * xTas_Int, ffFixed, 15, 2));
      xAmo_Pag := xMon_Cuo - xInt_Pag;
      xMes := StrToInt(Copy(DateToStr(xFec_Pre), 4, 2)) + 1;
      xAno := StrToInt(Copy(DateToStr(xFec_Pre), 7, 4));
      If xMes > 12 Then
      Begin
         xMes := 1;
         xAno := xAno + 1;
      End;
      xDia := UltimoDia(xMes, xAno);
      xFec_Ven := StrToDate(xDia + '/' + Format('%.2d', [xMes]) + '/' + Trim(IntToStr(xAno)));
      sAmo_Pag := sAmo_Pag + xAmo_Pag;
      sInt_Pag := sInt_Pag + xInt_Pag;
      sMon_Cuo := sMon_Cuo + xMon_Cuo;
      If i = xNumCuo Then
      Begin
         If sAmo_Pag > xMon_Aux Then
            s := sAmo_Pag - xMon_Aux;
         If sInt_Pag > (sMon_Cuo - xMon_Aux) Then
            r := sInt_Pag - (sMon_Cuo - xMon_Aux);
      End;
      cdsCambios.Insert;
      cdsCambios.FieldByName('ASOID').AsString := xAsoid;
      cdsCambios.FieldByName('ASOCODMOD').AsString := cdsCredito.FieldByName('ASOCODMOD').AsString;
      cdsCambios.FieldByName('ASOCODAUX').AsString := cdsCredito.FieldByName('ASOCODAUX').AsString;
      cdsCambios.FieldByName('TIPCREID').AsString := cdsCredito.FieldByName('TIPCREID').AsString;
      cdsCambios.FieldByName('TMONID').AsString := 'N';
      cdsCambios.FieldByName('TMONABR').AsString := 'S/.';
      cdsCambios.FieldByName('CRECUOTA').AsInteger := i;
      cdsCambios.FieldByName('CRECUOTAINI').AsInteger := i;
      cdsCambios.FieldByName('CREFVEN').AsDateTime := xFec_Ven;
      cdsCambios.FieldByName('CREFVENINI').AsDateTime := xFec_Ven;
      cdsCambios.FieldByName('CREAMORT').AsFloat := xAmo_Pag - s + r;
      cdsCambios.FieldByName('CREINTERES').AsFloat := xInt_Pag + s - r;
      cdsCambios.FieldByName('CREFLAT').AsFloat := sFlt_Pag;
      cdsCambios.FieldByName('CREMTO').AsFloat := xMon_Cuo + sFlt_Pag;
      cdsCambios.FieldByName('CRECAPCRON').AsFloat := xSal_Pag;
      cdsCambios.FieldByName('AREAID').AsString := DM1.xArea;
      cdsCambios.FieldByName('CRESALDO').AsFloat := xMon_Cuo + sFlt_Pag;
      cdsCambios.FieldByName('CREMES').AsString := Copy(DateToStr(xFec_Ven), 4, 2);
      cdsCambios.FieldByName('CREANO').AsString := Copy(DateToStr(xFec_Ven), 7, 4);
      cdsCambios.FieldByName('CREMESINI').AsString := Copy(DateToStr(xFec_Ven), 4, 2);
      cdsCambios.FieldByName('CREANOINI').AsString := Copy(DateToStr(xFec_Ven), 7, 4);
      cdsCambios.FieldByName('USEID').AsString := cdsCredito.FieldByName('USEID').AsString;
      cdsCambios.FieldByName('UPROID').AsString := cdsCredito.FieldByName('UPROID').AsString;
      cdsCambios.FieldByName('UPAGOID').AsString := cdsCredito.FieldByName('UPAGOID').AsString;
      cdsCambios.FieldByName('ASOAPENOM').AsString := cdsCredito.FieldByName('ASOAPENOM').AsString;
      cdsCambios.FieldByName('CREDID').AsString := cdsCredito.FieldByName('CREDID').AsString;
      cdsCambios.FieldByName('FORPAGOID').AsString := cdsCredito.FieldByName('FORPAGOID').AsString;
      If cdsCredito.FieldByName('FORPAGOID').AsString = '18' Then
         cdsCambios.FieldByName('BANCOID').AsString := '04';
      cdsCambios.FieldByName('CREESTID').AsString := '02';
      cdsCambios.FieldByName('CREESTADO').AsString := 'POR COBRAR';
      cdsCambios.FieldByName('CRECAPITAL').AsFloat := 0.00;
      cdsCambios.FieldByName('CREMTOINT').AsFloat := 0.00;
      cdsCambios.FieldByName('CREMTOFLAT').AsFloat := 0.00;
      cdsCambios.FieldByName('CREMTOCOB').AsFloat := 0.00;
      xSal_Pag := xMonOto - xAmo_Pag;
      xMonOto := xSal_Pag;
      xFec_Pre := xFec_ven;
   End;
   cdsCambios.ApplyUpdates(0);
   cdsCambios.Close;
   cdsCredito.Close;

End;

Function TDM1.CalculaCuota(xTas_Int, xTas_Flt, xMonOto: Real; xNumCuo: Integer): Currency;
Var
   xMon_Cuo, sFlt_Pag, cNumer, cDenom: Real;
Begin
   sFlt_Pag := 0;
   If xTas_Int <> 0 Then
   Begin
      xTas_Int := StrToFloat(FloatToStrF(xTas_Int / 100, ffFixed, 15, 4));
      xTas_Flt := StrToFloat(FloatToStrF(xTas_Flt / 100, ffFixed, 15, 4));
      cNumer := xTas_Int * Power((1 + xTas_Int), xNumCuo);
      cDenom := Power((1 + xTas_Int), xNumCuo) - 1;
      xMon_Cuo := StrToFloat(FloatToStrF(xMonOto * (cNumer / cDenom), ffFixed, 15, 2));
      sFlt_Pag := StrToFloat(FloatToStrF(xMonOto * xTas_Flt / xNumCuo, ffFixed, 15, 2));
   End
   Else
   Begin
      xMon_Cuo := xMonOto / xNumCuo;
      xMon_Cuo := StrToFloat(FloatToStrF(xMon_Cuo, ffFixed, 15, 2));
   End;
   Result := xMon_Cuo + sFlt_Pag;

End;

Function TDM1.IniFinCrono(xFec_Pre: tDateTime; xNum_Cuo: Integer; xPrdGra, xTipPre: String): String;
Var
   i, j: Integer;
   xPeriodo, xDia, tDia: String;
   xFecIni, xFecFin, xFec_Ven: tDateTime;
   tMes, tAno, xMes, xAno: Integer;

Begin
   If xPrdGra = 'S' Then
   Begin
      xPeriodo := Trim(DM1.RecuperaDatos('CRE110', 'TIPCREID', Trim(xTipPre), 'PER_GRA'));
      If xPeriodo > '0' Then
      Begin
         For j := 1 To StrToInt(xPeriodo) Do
         Begin
            tDia := Copy(DateToStr(xFec_Pre), 1, 2);
            tMes := StrToInt(Copy(DateToStr(xFec_Pre), 4, 2)) + 1;
            tAno := StrToInt(Copy(DateToStr(xFec_Pre), 7, 4));
            If tMes > 12 Then
            Begin
               tMes := 1;
               tAno := tAno + 1;
            End;
            xFec_Pre := StrToDate(tDia + '/' + Format('%.2d', [tMes]) + '/' + Trim(IntToStr(tAno)));
         End;
      End;
   End;

   For i := 1 To xNum_Cuo Do
   Begin
      xMes := StrToInt(Copy(DateToStr(xFec_Pre), 4, 2)) + 1;
      xAno := StrToInt(Copy(DateToStr(xFec_Pre), 7, 4));
      If xMes > 12 Then
      Begin
         xMes := 1;
         xAno := xAno + 1;
      End;
      xDia := DM1.UltimoDia(xMes, xAno);
      xFec_Ven := StrToDate(xDia + '/' + Format('%.2d', [xMes]) + '/' + Trim(IntToStr(xAno)));
      If i = 1 Then xFecIni := xFec_Ven;
      If i = xNum_Cuo Then xFecFin := xFec_Ven;

      xFec_Pre := xFec_Ven;
   End;
   Result := Copy(DateToStr(xFecIni), 7, 4) + Copy(DateToStr(xFecIni), 4, 2) + Copy(DateToStr(xFecIni), 1, 2) + Copy(DateToStr(xFecFin), 7, 4) + Copy(DateToStr(xFecFin), 4, 2) + Copy(DateToStr(xFecFin), 1, 2);

End;

Function TDM1.CalSalPag_AR(xAsoid, xCreDid, xFecCalCulo, xCreCuota, xCnd, xFrmPag: String): Currency;
Var
   xfVenc, xSql, xOfiDes, xEstado: String;
   xSaldo: Currency;
Begin
   cdsEjecuta.Close;
   If xCnd = '0' Then
      cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREFVEN,CREFVENINI,CREMTO,,CREAMORT,CRECAPITAL,CREFLAT,CREESTID FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CRECUOTA=' + xCreCuota + ' AND CREESTID IN (''02'',''11'',''27'',''31'') Order By CREDID,CRECUOTA')
   Else
      If xCnd = '1' Then
         cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREFVEN,CREFVENINI,CREMTO,CREAMORT,CRECAPITAL,CREFLAT,CREESTID FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CRECUOTA>=' + xCreCuota + ' AND CREESTID IN (''02'',''11'',''27'',''31'') Order By CREDID,CRECUOTA')
      Else
         cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREFVEN,CREFVENINI,CREMTO,CREAMORT,CRECAPITAL,CREFLAT,FLAGVAR,CREESTID FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND FLAGVAR=''S'' AND CREESTID IN (''02'',''11'',''27'',''31'') Order By CREDID,CRECUOTA');

   cdsEjecuta.Open;
   cdsEjecuta.First;
   xSaldo := 0;
   While Not cdsEjecuta.Eof Do
   Begin
      xfVenc := Trim(cdsEjecuta.fieldbyname('CREANO').AsString + cdsEjecuta.fieldbyname('CREMES').AsString);
      xEstado := cdsEjecuta.fieldbyname('CREESTID').AsString;
      If (xfVenc > xFecCalCulo) And (cdsEjecuta.fieldbyname('CREFVEN').AsString = cdsEjecuta.fieldbyname('CREFVENINI').AsString) Then
      Begin
         If xCnd = '0' Then
            xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREMTO').AsCurrency - cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency)

         Else
            If cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency > 0 Then
            Begin
               xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREAMORT').AsCurrency - cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency);
               If xSaldo < 0 Then xSaldo := 0;
            End
            Else
               xSaldo := xSaldo + cdsEjecuta.fieldbyname('CREAMORT').AsCurrency;

      End
      Else
      Begin
         xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREMTO').AsCurrency - cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency);
      End;
      cdsEjecuta.Next;
   End;
   cdsEjecuta.Close;
   Result := xSaldo;

End;

Procedure TDM1.HojaExcel(Tit: String; TDs: TDataSource; TDb: TDBGrid);
Var
   Lcid, C, CH, CH1, I, W, X, Y, TotHoja: Integer;
   Bk: TBookmarkStr;
   Tabla: Variant;
   L, A: OleVariant;
   HH: Extended;
//Inicio HPC_201521_COB
   F: TFieldDef;
//Final HPC_201521_COB
Begin
   If Not TDs.DataSet.Active Then Exit;
   If TDs.DataSet.RecordCount = 0 Then Exit;

   Lcid := GetUserDefaultLCID;
   C := TDb.Columns.Count;
   CH := 1;
 //Inicio HPC_201521_COB
   //If TDs.DataSet.RecordCount > 15100 Then
   If TDs.DataSet.RecordCount > 20100 Then
   Begin
      //HH := TDs.DataSet.RecordCount / 15100;
      HH := TDs.DataSet.RecordCount / 20100;
 //Final HPC_201521_COB
      CH := Trunc(HH);
      If Frac(HH) > 0 Then CH := CH + 1;
   End;

   ExcelApp.Visible[Lcid] := True;
   ExcelApp.Caption := 'Consultas en EXCEL';
   ExcelBook.ConnectTo(ExcelApp.Workbooks.Add(1, Lcid));
   If CH > 1 Then
   Begin
      ExcelBook.Worksheets.Add(NULL, NULL, (CH - 1), NULL, Lcid);
      For I := 1 To CH Do
      Begin
         WS.ConnectTo(ExcelBook.Worksheets[I] As _Worksheet);
         WS.Name := Tit + '_' + IntToStr(I);
      End;
   End;

   WS.ConnectTo(ExcelBook.Worksheets[1] As _Worksheet);
   WS.Activate(Lcid);
   If CH = 1 Then WS.Name := Tit;
   ExcelApp.ScreenUpdating[Lcid] := False;
   For X := 1 To CH Do
   Begin
      WS.ConnectTo(ExcelBook.Worksheets[X] As _Worksheet);
      WS.Activate(Lcid);
      For I := 0 To (C - 1) Do
      Begin
         L := WS.Cells.Item[1, I + 1];
         WS.Range[L, L].Value2 := TDb.Columns[I].Title.Caption;
      End;
   End;

   WS.ConnectTo(ExcelBook.Worksheets[1] As _Worksheet);
   WS.Activate(Lcid);

   CH1 := 1;
   W := 2;
   I := 1;
   Y := 1;
   TotHoja := 0;
   TDs.DataSet.DisableControls;
   Bk := TDs.DataSet.Bookmark;

   Tabla := VarArrayCreate([1, 5000, 0, C], varVariant);
   TDs.DataSet.First;
   While Not TDs.DataSet.Eof Do
   Begin
      For X := 0 To (C - 1) Do
       //Inicio HPC_201521_COB
      Begin
         F:= TDs.DataSet.FieldDefs.Items[X];
         If ((F.DataType =  ftDate) or
            (F.DataType =  ftDateTime) or
            (F.DataType =  ftTimeStamp)) AND
            (Length(TRIM(TDs.DataSet.Fields[X].AsString))<>0) Then
            Begin
              Tabla[Y, X] := ''''+TDs.DataSet.Fields[X].AsString;
             // Tabla[Y, X] := copy(Tabla[Y, X],4,2)+'/'+copy(Tabla[Y, X],1,2)+'/'+copy(Tabla[Y, X],7,4);
            end
// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
//Inicio HPC_201718_COB
//Adecuación del formato
         Else If F.DataType =  ftFMTBcd Then
            Tabla[Y, X] := TDs.DataSet.Fields[X].AsString
         Else
            Tabla[Y, X] := ''''+TDs.DataSet.Fields[X].AsString;
//Final HPC_201718_COB
// Fin HPC_201736_COB
      end;
       //Final HPC_201521_COB
      If Y = 5000 Then
      Begin
         L := 'A' + IntToStr(W);
         WS.Range[L, WS.Cells.Item[I + 1, C]].Value2 := Tabla;
         Try
            Tabla := Unassigned;
         Finally
            Tabla := VarArrayCreate([1, 5000, 0, C], varVariant);
         End;

         Y := 0;
         W := I + 2;
      End;
      Inc(Y, 1);
      Inc(I, 1);
      Inc(TotHoja, 1);
   //Inicio HPC_201521_COB
   // If TotHoja = 15100 Then
      If TotHoja = 20100 Then
   //Final HPC_201521_COB
      Begin
         L := 'A' + IntToStr(W);
         WS.Range[L, WS.Cells.Item[I, C]].Value2 := Tabla;

         Try
            Tabla := Unassigned;
         Finally
            Tabla := VarArrayCreate([1, 5000, 0, C], varVariant);
         End;

         CH1 := CH1 + 1;
         WS.ConnectTo(ExcelBook.Worksheets[CH1] As _Worksheet);
         WS.Activate(Lcid);

         Y := 1;
         W := 2;
         I := 1;
         TotHoja := 0;
      End;
      Application.ProcessMessages;
      TDs.DataSet.Next;
   End;
   CH1 := I;
   Try
      WS.Range['A' + IntToStr(W), WS.Cells.Item[CH1, C]].Value2 := Tabla;
   Finally
      Tabla := Unassigned;
   End;

   For X := 1 To CH Do
   Begin
      WS.ConnectTo(ExcelBook.Worksheets[X] As _Worksheet);
      WS.Activate(Lcid);

      SetLength(FormatCel, C + 1);
      FormatosCeldas(C, TDs);
      For I := 1 To C Do
      Begin
         L := WS.Cells.Item[1, I];
         WS.Range[L, L].EntireColumn.NumberFormat := FormatCel[I];
      End;

      For I := 0 To (C - 1) Do
      Begin
         L := WS.Cells.Item[1, I + 1];
         Y := TDs.DataSet.Fields[I].DisplayWidth;
         If Length(TDb.Columns[I].Title.Caption) > Y Then
            Y := Length(TDb.Columns[I].Title.Caption);
     //Inicio HPC_201521  
         If Y>=255 Then Y:=243;
     //Final HPC_201521 
         WS.Range[L, L].EntireColumn.ColumnWidth := Y + 2;
         If TDb.Columns[I].Alignment = taLeftJustify Then A := 2;
         If TDb.Columns[I].Alignment = taCenter Then A := 3;
         If TDb.Columns[I].Alignment = taRightJustify Then A := 4;
         WS.Range[L, L].EntireColumn.HorizontalAlignment := A;
      End;

      L := WS.Cells.Item[1, C];
      WS.Range['A1', L].HorizontalAlignment := 3;
      WS.Range['A1', L].Interior.Color := clMaroon;
      WS.Range['A1', L].Font.Color := clWhite;
      WS.Range['A1', L].Font.Bold := True;

      If CH = 1 Then
         W := TDs.DataSet.RecordCount + 1
      Else
         If (CH > 1) And (X < CH) Then
            W := 15101
         Else
            If (CH > 1) And (X = CH) Then W := CH1;

      WS.PageSetup.PrintGridlines := True;
      WS.PageSetup.PrintTitleRows := '1:1';

      WS.DefaultInterface.Set_DisplayAutomaticPageBreaks(Lcid, True);
   End;

   WS.ConnectTo(ExcelBook.Worksheets[1] As _Worksheet);
   WS.Activate(Lcid);

   ExcelApp.ScreenUpdating[Lcid] := True;

   TDs.DataSet.EnableControls;
   TDs.DataSet.Bookmark := Bk;
End;

Procedure TDM1.FormatosCeldas(N: Integer; TDs: TDataSource);
Var
   I: Integer;
   F: TFieldDef;
Begin
   For I := 1 To N Do
   Begin
      F := TDs.DataSet.FieldDefs.Items[I - 1];
      Case F.DataType Of
         ftString: FormatCel[I] := DM1.StrZero('0', Length(TDs.DataSet.Fields[I - 1].AsString));
         ftDate: FormatCel[I] := 'dd/mm/yyyy';
         ftDateTime: FormatCel[I] := 'dd/mm/yyyy';
         ftTimeStamp: FormatCel[I] := 'dd/mm/yyyy';
         ftUnknown: FormatCel[I] := DM1.StrZero('0', Length(TDs.DataSet.Fields[I - 1].AsString));
      Else
         FormatCel[I] := Null;
      End;
   End;

End;

Function TDM1.CountReg(xSQL: String): Integer;
Var
   xCount: Integer;
Begin
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   xCount := cdsQry.RecordCount;
   cdsQry.Close;
   Result := xCount;
End;

Function TDM1.FormatoNumeros(xTexto: String): String;
Begin
   Try
      Result := FormatFloat('###,###.#0', DM1.Valores(xTexto));
   Except
   End;

End;

Function TDM1.HoraSys: String;
Begin
   cdsEjecuta.Close;
   cdsEjecuta.DataRequest('SELECT TO_CHAR(SYSDATE,''HH24:MI:SS'') AS HORA FROM DUAL');
   cdsEjecuta.Open;
   If cdsEjecuta.RecordCount > 0 Then
      Result := cdsEjecuta.fieldbyname('HORA').AsString
   Else
      Result := '';

   cdsEjecuta.Close;

End;

Function TDM1.UsrConsulta(xUsuario: String): Boolean;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT USERID,NIVEL FROM USERTABLE WHERE USERID=' + QuotedStr(xUsuario) + ' AND NIVEL=''99'' ';
   DM1.cdsRepresentante.Close;
   DM1.cdsRepresentante.DataRequest(xSQL);
   DM1.cdsRepresentante.Open;
   If DM1.cdsRepresentante.RecordCount > 0 Then
   Begin
      Result := True;
   End
   Else
   Begin
      Result := False;
   End;
   DM1.cdsRepresentante.Close
End;

Procedure TDM1.xAplicaSaldoPre(xAsoId, xCreDid: String);
Var
   xSaldoAct: Currency;
Begin
   xSaldoAct := DM1.SaldoActual(xAsoId, xCreDid, '0');
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest('SELECT ASOID,CREDID,CREESTID,CREESTADO,CRESDOACT FROM CRE301 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREDID=' + QuotedStr(Trim(xCreDid)) + ' And CREESTID IN (''02'',''21'') ');
   DM1.cdsQry3.Open;
   If xSaldoAct > 0 Then
   Begin
      cdsQry3.Edit;
      cdsQry3.fieldbyname('CRESDOACT').AsFloat := xSaldoAct;
      cdsQry3.fieldbyname('CREESTID').AsString := '02';
      cdsQry3.fieldbyname('CREESTADO').AsString := 'POR COBRAR';
      cdsQry3.ApplyUpdates(0);
   End
   Else
   Begin
      cdsQry3.Edit;
      cdsQry3.fieldbyname('CREESTID').AsString := '21';
      cdsQry3.fieldbyname('CREESTADO').AsString := 'CANCELADO';
      cdsQry3.fieldbyname('CRESDOACT').AsFloat := xSaldoAct;
      cdsQry3.ApplyUpdates(0);
   End;
   DM1.cdsQry3.Close;

End;

//Asigna numero Aux al Código Modular

Function TDM1.AsignaNroAux(xTabla, xAsoCodMod: String): String;
Var
   xSQL: String;
   xNumero: Integer;

Begin
   xSQL := 'SELECT ASOCODMOD,ASOCODAUX FROM ' + xTabla + ' WHERE ASOCODMOD=' + QuotedStr(xAsoCodMod) + ' AND ASOCODAUX IS NOT NULL ORDER BY ASOCODAUX';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(xSQL);
   DM1.cdsCEdu.Open;
   If DM1.cdsCEdu.RecordCount > 0 Then
   Begin
      DM1.cdsCEdu.First;
      xNumero := 0;
      While Not DM1.cdsCEdu.Eof Do
      Begin
         xNumero := xNumero + 1;
         If xNumero <> DM1.cdsCEdu.FieldByName('ASOCODAUX').AsInteger Then
         Begin
            Result := Format('%.2d', [xNumero]);
            Exit;
         End;
         DM1.cdsCEdu.Next;
      End;
      If DM1.cdsCEdu.Eof Then
      Begin
         Result := Format('%.2d', [xNumero + 1]);
         Exit;
      End;
   End
   Else
      Result := '01';

   DM1.cdsCEdu.Close;

End;

Procedure TDM1.BlqComponentes(xForm: tForm);
Var
   xSQL, xComponente, x, y: String;
   i: Integer;
Begin
   xSQL := 'SELECT USERID,TABLA,CAMPO,COMPONENTE '
      + 'FROM SIS000 '
      + 'WHERE USERID=' + QuotedStr(DM1.wUsuario)
      + ' AND COMPONENTE IS NOT NULL ';
   cdsEjecuta.Close;
   cdsEjecuta.DataRequest(xSQL);
   cdsEjecuta.Open;
   If DM1.cdsEjecuta.RecordCount > 0 Then
   Begin
      DM1.cdsEjecuta.First;
      While Not DM1.cdsEjecuta.Eof Do
      Begin
         xComponente := Trim(DM1.cdsEjecuta.FieldByName('COMPONENTE').AsString);
         For i := 0 To xForm.ComponentCount - 1 Do
         Begin
            If UpperCase(xComponente) = UpperCase(xForm.Components[i].Name) Then
            Begin
               TwwDBEdit(xForm.Components[i]).Enabled := True;
     //Inicio HPC_201614_COB
     //Atributo de visible
               TwwDBEdit(xForm.Components[i]).Visible := True;
     //Final HPC_201614_COB
            End;
         End;
         DM1.cdsEjecuta.Next;
      End;
   End;
   cdsEjecuta.Close;
End;

Function TDM1.VrfCtrAccUsr(xSQL: String): Boolean;
Begin
   Result := False;
   If DM1.CountReg(xSQL) > 0 Then Result := True;
End;

Function TDM1.UltCalInt: String;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT MAX(PERIODO) PERIODO FROM CFC000';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   Result := 'XXXXXX';
   If Length(Trim(DM1.cdsQry6.FieldByName('PERIODO').AsString)) > 0 Then
   Begin
      Result := DM1.cdsQry6.FieldByName('PERIODO').AsString;
   End;

End;

Procedure TDM1.EvaluaSaldos(xAsoId, xCreDid: String);
Var
   xSQL: String;
Begin
   xSQL := 'BEGIN SP_SALDOTOTAL(' + QuotedStr(xAsoId) + ',' + QuotedStr(xCreDid) + '); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
End;

//Saldo Total Actual

Function TDM1.SaldoTotalActual(xAsoId, xTip: String): Currency;
Var
   xSaldo: Currency;
Begin
   xSaldo := 0;
   cdsMovCre.Close;
   If xTip = '0' Then
      cdsMovCre.DataRequest('SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREESTID IN (''02'',''11'',''27'',''14'',''31'') order by Credid,Crecuota ')
   Else
      cdsMovCre.DataRequest('SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 Where ASOID =' + QuotedStr(Trim(xAsoId)) + ' And CREESTID IN (''02'',''11'',''27'',''31'') order by Credid,Crecuota ');

   cdsMovCre.Open;
   If cdsMovCre.RecordCount > 0 Then
   Begin
      cdsMovCre.First;
      While Not cdsMovCre.Eof Do
      Begin
         xSaldo := xSaldo + (cdsMovCre.fieldbyname('CREMTO').AsFloat - cdsMovCre.fieldbyname('CREMTOCOB').AsFloat);
         cdsMovCre.Next;
      End;
   End;
   Result := xSaldo;
   cdsMovCre.Close;
End;

Procedure TDM1.validarpagosbanconacion(vfecpag: String);
Var
   vUsuario, vDocPag, vAsoId, xSql: String;
   MontoTot: Currency;
Begin
  // Limpiando Campos para validar información
   xSql := 'UPDATE COB_CUE_REC_BAN_NAC_DET SET CIERRE=NULL, OFIREG=NULL, MONREG=NULL WHERE FECPAG = ' + QuotedStr(vfecpag) + ' AND NVL(CIERRE, ''X'') NOT IN (''D'',''A'', ''C'', ''O'')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   xSql := 'SELECT * FROM COB_CUE_REC_BAN_NAC_DET WHERE FECPAG = ' + QuotedStr(vfecpag) + ' AND NVL(CIERRE, ''X'') NOT IN (''D'', ''A'', ''C'', ''O'')';
   DM1.cdsRegCob.Close;
   DM1.cdsRegCob.DataRequest(xSql);
   DM1.cdsRegCob.Open;
   While Not DM1.cdsRegCob.Eof Do
   Begin
      vasoid := DM1.cdsRegCob.FieldByName('ASOID').AsString;
      vDocPag := 'N-' + Copy(DM1.cdsRegCob.FieldByName('NUMDOCCOB').AsString, 3, 8);
      vfecpag := DM1.cdsRegCob.FieldByName('FECPAG').AsString;
    // Chequeando los registros Ok
      If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
      Begin
         xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONPAG FROM CRE310 WHERE '
            + ' ASOID = ' + QuotedStr(vasoid) + ' AND CREDOCPAG = ' + QuotedStr(vDocPag) + ' AND CREFPAG = ' + QuotedStr(vfecpag)
            + ' AND BANCOID = ''04'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'''
            + ' GROUP BY USUARIO';
         DM1.cdsQry5.Close;
         DM1.cdsQry5.DataRequest(xSql);
         DM1.cdsQry5.Open;
         DM1.cdsQry5.First;
         vUsuario := DM1.cdsQry5.FieldByName('USUARIO').AsString;
         MontoTot := 0;
         While Not DM1.cdsQry5.Eof Do
         Begin
            MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONPAG').AsCurrency;
            DM1.cdsQry5.Next;
         End;
         If DM1.cdsRegCob.FieldByName('MONPAG').AsCurrency = MontoTot Then
         Begin
            DM1.cdsRegCob.Edit;
            DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
            DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'K';
            DM1.cdsRegCob.ApplyUpdates(0);
         End
         Else
         Begin
            If MontoTot > 0 Then
            Begin
               DM1.cdsRegCob.Edit;
               DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
               DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'M';
               DM1.cdsRegCob.ApplyUpdates(0);
            End;
         End;
      End;
    // Chequeando con error en el numero de documento
      If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
      Begin
         xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONPAG FROM CRE310 WHERE '
            + ' ASOID = ' + QuotedStr(vasoid) + ' AND CREFPAG = ' + QuotedStr(vfecpag)
            + ' AND BANCOID = ''04'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'' '
            + ' GROUP BY USUARIO';
         DM1.cdsQry5.Close;
         DM1.cdsQry5.DataRequest(xSql);
         DM1.cdsQry5.Open;
         DM1.cdsQry5.First;
         MontoTot := 0;
         While Not DM1.cdsQry5.Eof Do
         Begin
            MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONPAG').AsCurrency;
            DM1.cdsQry5.Next;
         End;
         If DM1.cdsRegCob.FieldByName('MONPAG').AsCurrency = MontoTot Then
         Begin
            DM1.cdsRegCob.Edit;
            DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
            DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'N';
            DM1.cdsRegCob.ApplyUpdates(0);
         End;
      End;
    // Chequeando con error en la fecha
      If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
      Begin
         xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONPAG FROM CRE310 WHERE '
            + ' ASOID = ' + QuotedStr(vasoid) + ' AND CREDOCPAG = ' + QuotedStr(vDocPag)
            + ' AND BANCOID = ''04'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'' '
            + ' GROUP BY USUARIO';
         DM1.cdsQry5.Close;
         DM1.cdsQry5.DataRequest(xSql);
         DM1.cdsQry5.Open;
         DM1.cdsQry5.First;
         MontoTot := 0;
         While Not DM1.cdsQry5.Eof Do
         Begin
            MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONPAG').AsCurrency;
            DM1.cdsQry5.Next;
         End;
         If DM1.cdsRegCob.FieldByName('MONPAG').AsCurrency = MontoTot Then
         Begin
            DM1.cdsRegCob.Edit;
            DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
            DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'F';
            DM1.cdsRegCob.ApplyUpdates(0);
         End;
      End;
    // Chequeando con error en la cuenta
      If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
      Begin
         xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONPAG FROM CRE310 WHERE '
            + ' ASOID = ' + QuotedStr(vasoid) + ' AND CREDOCPAG = ' + QuotedStr(vDocPag) + ' AND CREFPAG = ' + QuotedStr(vfecpag)
            + ' AND CREESTID NOT IN (''04'', ''13'') GROUP BY USUARIO';
         DM1.cdsQry5.Close;
         DM1.cdsQry5.DataRequest(xSql);
         DM1.cdsQry5.Open;
         DM1.cdsQry5.First;
         MontoTot := 0;
         While Not DM1.cdsQry5.Eof Do
         Begin
            MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONPAG').AsCurrency;
            DM1.cdsQry5.Next;
         End;
         If DM1.cdsRegCob.FieldByName('MONPAG').AsCurrency = MontoTot Then
         Begin
            DM1.cdsRegCob.Edit;
            DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
            DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'C';
            DM1.cdsRegCob.ApplyUpdates(0);
         End;
      End;
    // Poniendo Flag de no registrado
      If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
      Begin
         DM1.cdsRegCob.Edit;
         DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'R';
         DM1.cdsRegCob.ApplyUpdates(0);
      End;

      DM1.cdsRegCob.Next;
   End;
   DM1.cdsRegCob.First;
   While Not DM1.cdsRegCob.Eof Do
   Begin
      vasoid := DM1.cdsRegCob.FieldByName('ASOID').AsString;
      vDocPag := 'N-' + Copy(DM1.cdsRegCob.FieldByName('NUMDOCCOB').AsString, 3, 8);
      vfecpag := DM1.cdsRegCob.FieldByName('FECPAG').AsString;
      If DM1.cdsRegCob.FieldByName('CIERRE').AsString = 'K' Then
      Begin
      // Actualizar el registro
         xSql := 'SELECT A.USUARIO, A.MONREG, B.ORIGEN FROM (SELECT MAX(USUARIO) USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONREG'
            + ' FROM CRE310 WHERE ASOID = ' + QuotedStr(vasoid) + ' AND CREDOCPAG = ' + QuotedStr(vDocPag) + ' AND CREFPAG = ' + QuotedStr(vfecpag)
            + ' AND BANCOID = ''04'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'') A, USERTABLE B'
            + ' WHERE A.USUARIO = B.USERID';
         DM1.cdsQry5.Close;
         DM1.cdsQry5.DataRequest(xSql);
         DM1.cdsQry5.Open;
         If DM1.cdsRegCob.FieldByName('MONPAG').AsCurrency = DM1.cdsQry5.FieldByName('MONREG').AsCurrency Then
         Begin
            xSql := 'UPDATE COB_CUE_REC_BAN_NAC_DET SET'
               + ' MONREG = ' + DM1.cdsQry5.FieldByName('MONREG').AsString
               + ',OFIREG = ' + QuotedStr(DM1.cdsQry5.FieldByName('ORIGEN').AsString)
               + ',USUREG = ' + QuotedStr(DM1.cdsQry5.FieldByName('USUARIO').AsString)
               + ' WHERE ASOID = ' + DM1.cdsRegCob.FieldByName('ASOID').AsString
               + ' AND IDEPER = ' + QuotedStr(DM1.cdsRegCob.FieldByName('IDEPER').AsString)
               + ' AND FECPAG = ' + QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         End
         Else
         Begin
            xSql := 'UPDATE COB_CUE_REC_BAN_NAC_DET SET MONREG = NULL , OFIREG = NULL ,USUREG = NULL'
               + ' WHERE ASOID = ' + DM1.cdsRegCob.FieldByName('ASOID').AsString + ' AND IDEPER = ' + QuotedStr(DM1.cdsRegCob.FieldByName('IDEPER').AsString)
               + ' AND FECPAG = ' + QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         End;
      End;
      DM1.cdsRegCob.Next;
   End;
   xSql := 'SELECT * FROM COB_CUE_REC_BAN_NAC_DET WHERE FECPAG = ' + QuotedStr(vfecpag) + ' AND NVL(CIERRE,''X'') NOT IN (''K'', ''D'',''A'',''C'',''O'')';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSql);
   DM1.cdsQry5.Open;
   If DM1.cdsQry5.RecordCount = 0 Then
   Begin
      xSql := 'UPDATE COB_CUE_REC_BAN_NAC_CAB SET CIERRE = ''OK'' WHERE FECPRO = ' + QuotedStr(vfecpag);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   End
   Else
   Begin
      xSql := 'UPDATE COB_CUE_REC_BAN_NAC_CAB SET CIERRE = NULL WHERE FECPRO = ' + QuotedStr(vfecpag);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   End;
End;

Function TDM1.Redondear(Valor: Real; Redondeo: Integer): Real;
Var
   xSQL: String;
Begin
   Result := 0;
   xSQL := 'SELECT ROUND(' + FloatToStr(Valor) + ',' + IntToStr(Redondeo) + ') VALOR FROM DUAL ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If Length(Trim(DM1.cdsQry.FieldByName('VALOR').AsString)) > 0 Then Result := DM1.cdsQry.FieldByName('VALOR').AsCurrency;
   DM1.cdsQry.Close;
End;

Function TDM1.UsrAnuExt(xUsuario: String): Boolean;
Begin
   Result := False;
   If DM1.CrgDescrip('USERID=' + QuotedStr(xUsuario), 'TGE006', 'FLGAUT') = 'COBa' Then
   Begin
      Result := True;
   End
End;

Procedure TDM1.CargaDatosGestion(xPeriodo, xUproId, xUpagoId, xUseId, xAsoTipId: String);
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT ASOID,PERIODO FROM GES_ENV_PLA WHERE PERIODO=' + QuotedStr(xPeriodo) + ' AND  ' +
      'UPROID=' + QuotedStr(xUproId) + ' AND UPAGOID=' + QuotedStr(xUpagoId) + ' AND ' +
      'USEID=' + QuotedStr(xUseId) + ' AND ASOTIPID=' + QuotedStr(xAsoTipId);
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      xSQL := 'INSERT INTO GES_ENV_PLA SELECT COBANO||COBMES PERIODO,OFDESID,ASOID,ASOAPENOM,A.UPROID,A.UPAGOID, ' +
         'A.USEID,ASODNI,ASOTIPID,MONCUOENV,NVL(MONCUOAPL,0) MONCUOAPL,''A'' TIPOCARGA, ' + QuotedStr(DM1.wUsuario) + ',SYSDATE FECPRO, NULL, ' +
         'NULL,NULL,NULL,NULL,NULL,NULL FROM COB319 A,APO101 B WHERE COBANO||COBMES=' + QuotedStr(xPeriodo) + ' AND NVL(MONCUOENV,0)>0 AND NVL(MONCUOAPL,0)=0 ' +
         'AND A.UPROID=' + QuotedStr(xUproId) + ' AND A.UPAGOID=' + QuotedStr(xUpagoId) + ' AND A.USEID=' + QuotedStr(xUseId) + ' AND ASOTIPID=' + QuotedStr(xAsoTipId) +
         'AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+) ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
   Screen.Cursor := crDefault;
End;

Function TDM1.CuotasPendiente(xAsoId: String): String;
Begin
   Result := '0.00';
   xSQL := 'SELECT SUM(CRECUOTA) CUOTA FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID IN (''01'',''02'') ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   Result := DM1.FormatoNumeros(DM1.cdsQry.FieldByName('CUOTA').AsString);
   DM1.cdsQry.Close;

End;

Function TDM1.MaximoPlazo(xAsoId: String): String;
Begin
   Result := '0';
   xSQL := 'SELECT MAX(CRENUMCUO) PLAZO FROM CRE301 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID IN (''01'',''02'') ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   Result := DM1.cdsQry.FieldByName('PLAZO').AsString;
   DM1.cdsQry.Close;

End;

Function TDM1.MontoPendiente(xAsoId: String): String;
Var
   xSQL: String;
Begin
   Result := '0.00';
   xSQL := 'SELECT SUM(CREMTOOTOR) MONTO '
      + 'FROM CRE301 '
      + 'WHERE ASOID=' + QuotedStr(xAsoId)
      + ' AND CREESTID IN (''01'',''02'') ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   Result := DM1.FormatoNumeros(DM1.cdsQry.FieldByName('MONTO').AsString);
   DM1.cdsQry.Close;
End;

Function TDM1.NivelUsuario(xUser: String): String;
Var
   xSQL: String;
Begin
   cdsUser.Close;
   cdsUser.DataRequest('SELECT NIVEL FROM USERTABLE WHERE USERID=' + QuotedStr(Trim(xUser)));
   cdsUser.Open;
   If cdsUser.RecordCount = 1 Then
      Result := cdsUser.fieldByname('NIVEL').AsString
   Else
      Result := '';
   cdsUser.Close
End;

Procedure TDM1.GnrCronograma_Ref(xAsoid, xCredId: String; xTas_Int,
   xTas_Flt, xMonOto, xMonFlat: Real; xFec_Pre: tDateTime;
   xNumCuo: Integer);
Var
   i, j: Integer;
   xMon_Cuo, cNumer, cDenom, sFlt_Pag, xSal_Pag: Real;
   xMon_Aux, xAmo_Pag, xInt_Pag, xGas_Pag, s, r: Real;
   sMon_Cuo, sAmo_Pag, sInt_Pag, sGas_Pag: Real;
   xFec_Ven: tDateTime;
   tMes, tAno, xMes, xAno: Integer;
   tDia, xDia, xPrdGra: String;
   xTEA, xP1, xP2: double; // Parámetros para el cálculo de la Cuota a Pagar
Begin
   xPrdGra := Trim(DM1.RecuperaDatos('CRE110', 'TIPCREID', Copy(Trim(xCreDid), 7, 2), 'PER_GRA'));
   If xPrdGra > '0' Then
   Begin
      For j := 1 To StrToInt(xPrdGra) Do
      Begin
         tMes := StrToInt(Copy(DateToStr(xFec_Pre), 4, 2)) + 1;
         tAno := StrToInt(Copy(DateToStr(xFec_Pre), 7, 4));
         tDia := DM1.UltimoDia(tMes, tAno);
         If tMes > 12 Then
         Begin
            tMes := 1;
            tAno := tAno + 1;
         End;
         xFec_Pre := StrToDate(tDia + '/' + Format('%.2d', [tMes]) + '/' + Trim(IntToStr(tAno)));
      End;
   End;

   cdsCambios.Close;
   cdsCambios.DataRequest('SELECT ASOID,ASOCODMOD,ASOCODPAGO,TIPCREID,TMONID,CREANO,'
      + '       CREMES,CRESALDO,CRECUOTA,CREMTO,CREAMORT,CREINTERES,CREFLAT,'
      + '       CREFVEN,CREANOINI,CREMESINI,CRECUOTAINI,CREFVENINI,USEID,UPROID, '
      + '       UPAGOID,BANCOID,CCBCOID,USUARIO,FREG, FORPAGOID,ASOAPENOM, '
      + '       CREDID,CRETCALID,TIPDESEID,TMONABR,CRETCALABR,'
      + '       TIPDESABR,LISTAABR,CIAID,CREESTID,CREESTADO,LISTAID,ASOCODAUX,'
      + '       CIUDID,AREAID,CRECAPCRON,CRECAPITAL,CREMTOINT,CREMTOFLAT,CREMTOCOB '
      + 'FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(Trim(xAsoId)));
   cdsCambios.Open;
   cdsCambios.Edit;

   cdsCredito.Close;
   cdsCredito.DataRequest('SELECT ASOCODMOD,ASOCODAUX,ASOCODPAGO,TIPCREID,USEID,UPROID,  '
      + '       UPAGOID,BANCOID,USUARIO,FREG,FORPAGOID,ASOAPENOM, '
      + '       CREDID,CRETCALID,TMONABR,CRETCALABR, LISTAABR, CIAID, '
      + '       LISTAID,CIUDID '
      + 'FROM CRE301 '
      + 'WHERE ASOID=' + QuotedStr(Trim(xAsoId))
      + ' AND CREDID=' + QuotedStr(Trim(xCredId)));
   cdsCredito.Open;
   If xTas_Int <> 0 Then
   Begin
      xTas_Int := StrToFloat(FloatToStrF(xTas_Int / 100, ffFixed, 15, 4));
      xTas_Flt := StrToFloat(FloatToStrF(xTas_Flt / 100, ffFixed, 15, 4));
      cNumer := xTas_Int * Power((1 + xTas_Int), xNumCuo);
      cDenom := Power((1 + xTas_Int), xNumCuo) - 1;

      xTEA := Power((1 + xTas_Int), 12) - 1;
      xP1 := Power(1 + xTas_Int, xNumCuo);
      xP2 := Power(1 + xTEA, 0 / 360);

      xMon_Cuo := (xMonOto * xTas_Int * xP1 * xP2) / (xP1 - 1);

      sFlt_Pag := xMonFlat;
   End
   Else
   Begin
      xMon_Cuo := xMonOto / xNumCuo;
      xMon_Cuo := StrToFloat(FloatToStrF(xMon_Cuo, ffFixed, 15, 2));
   End;

   xMon_Aux := xMonOto;
   xSal_Pag := xMonOto;
   sMon_Cuo := 0;
   sAmo_Pag := 0;
   sInt_Pag := 0;
   sGas_Pag := 0;
   s := 0;
   r := 0;
   For i := 1 To xNumCuo Do
   Begin
      xInt_Pag := xMonOto * xTas_Int;
      xAmo_Pag := FRound(xMon_Cuo - xInt_Pag, 15, 2);
      xInt_Pag := xMon_Cuo - xAmo_Pag;
      xMes := StrToInt(Copy(DateToStr(xFec_Pre), 4, 2)) + 1;
      xAno := StrToInt(Copy(DateToStr(xFec_Pre), 7, 4));
      If xMes > 12 Then
      Begin
         xMes := 1;
         xAno := xAno + 1;
      End;
      xDia := UltimoDia(xMes, xAno);
      xFec_Ven := StrToDate(xDia + '/' + Format('%.2d', [xMes]) + '/' + Trim(IntToStr(xAno)));

      If i < xNumCuo Then
      Begin
         sAmo_Pag := sAmo_Pag + xAmo_Pag;
         sInt_Pag := sInt_Pag + xInt_Pag;
         sMon_Cuo := sMon_Cuo + xMon_Cuo;
      End
      Else
      Begin
         xAmo_Pag := xMon_Aux - sAmo_Pag;
         If xAmo_Pag > xMon_Cuo Then
            xInt_Pag := xInt_Pag - (xAmo_Pag - xMon_Cuo)
         Else
            xInt_Pag := xMon_Cuo - xAmo_Pag;
      End;

      cdsCambios.Insert;
      cdsCambios.FieldByName('ASOID').AsString := xAsoid;
      cdsCambios.FieldByName('ASOCODMOD').AsString := cdsCredito.FieldByName('ASOCODMOD').AsString;
      cdsCambios.FieldByName('ASOCODAUX').AsString := cdsCredito.FieldByName('ASOCODAUX').AsString;
      cdsCambios.FieldByName('TIPCREID').AsString := cdsCredito.FieldByName('TIPCREID').AsString;
      cdsCambios.FieldByName('TMONID').AsString := 'N';
      cdsCambios.FieldByName('TMONABR').AsString := 'S/.';
      cdsCambios.FieldByName('CRECUOTA').AsInteger := i;
      cdsCambios.FieldByName('CRECUOTAINI').AsInteger := i;
      cdsCambios.FieldByName('CREFVEN').AsDateTime := xFec_Ven;
      cdsCambios.FieldByName('CREFVENINI').AsDateTime := xFec_Ven;
      cdsCambios.FieldByName('CREAMORT').AsFloat := xAmo_Pag; //:= xAmo_Pag-s+r;
      cdsCambios.FieldByName('CREINTERES').AsFloat := xInt_Pag; // := xInt_Pag+s-r;
      cdsCambios.FieldByName('CREFLAT').AsFloat := sFlt_Pag;
      cdsCambios.FieldByName('CREMTO').AsFloat := xAmo_Pag + xInt_Pag + sFlt_Pag; //xMon_Cuo + sFlt_Pag;
      cdsCambios.FieldByName('CRECAPCRON').AsFloat := xSal_Pag;
      cdsCambios.FieldByName('AREAID').AsString := DM1.xArea;
      cdsCambios.FieldByName('CRESALDO').AsFloat := xAmo_Pag + xInt_Pag + sFlt_Pag; //xMon_Cuo + sFlt_Pag;
      cdsCambios.FieldByName('CREMES').AsString := Copy(DateToStr(xFec_Ven), 4, 2);
      cdsCambios.FieldByName('CREANO').AsString := Copy(DateToStr(xFec_Ven), 7, 4);
      cdsCambios.FieldByName('CREMESINI').AsString := Copy(DateToStr(xFec_Ven), 4, 2);
      cdsCambios.FieldByName('CREANOINI').AsString := Copy(DateToStr(xFec_Ven), 7, 4);
      cdsCambios.FieldByName('USEID').AsString := cdsCredito.FieldByName('USEID').AsString;
      cdsCambios.FieldByName('UPROID').AsString := cdsCredito.FieldByName('UPROID').AsString;
      cdsCambios.FieldByName('UPAGOID').AsString := cdsCredito.FieldByName('UPAGOID').AsString;
      cdsCambios.FieldByName('ASOAPENOM').AsString := cdsCredito.FieldByName('ASOAPENOM').AsString;
      cdsCambios.FieldByName('CREDID').AsString := cdsCredito.FieldByName('CREDID').AsString;
      cdsCambios.FieldByName('FORPAGOID').AsString := cdsCredito.FieldByName('FORPAGOID').AsString;
      If cdsCredito.FieldByName('FORPAGOID').AsString = '18' Then
         cdsCambios.FieldByName('BANCOID').AsString := '04';
      cdsCambios.FieldByName('CREESTID').AsString := '02';
      cdsCambios.FieldByName('CREESTADO').AsString := 'POR COBRAR';
      cdsCambios.FieldByName('CRECAPITAL').AsFloat := 0.00;
      cdsCambios.FieldByName('CREMTOINT').AsFloat := 0.00;
      cdsCambios.FieldByName('CREMTOFLAT').AsFloat := 0.00;
      cdsCambios.FieldByName('CREMTOCOB').AsFloat := 0.00;
      xSal_Pag := xMonOto - xAmo_Pag;
      xMonOto := xSal_Pag;
      xFec_Pre := xFec_ven;
   End;
   cdsCambios.ApplyUpdates(0);
   cdsCambios.Close;
   cdsCredito.Close;
End;

Function TDM1.CalculaCuota_Ref(xTas_Int, xTas_Flt, xMonOto, xMonFla: Real;
   xNumCuo: Integer): Currency;
Var
   xMon_Cuo, sFlt_Pag, cNumer, cDenom: Real;
Begin
   sFlt_Pag := 0;
   If xTas_Int <> 0 Then
   Begin
      xTas_Int := StrToFloat(FloatToStrF(xTas_Int / 100, ffFixed, 15, 4));
      xTas_Flt := StrToFloat(FloatToStrF(xTas_Flt / 100, ffFixed, 15, 4));
      cNumer := xTas_Int * Power((1 + xTas_Int), xNumCuo);
      cDenom := Power((1 + xTas_Int), xNumCuo) - 1;
      xMon_Cuo := StrToFloat(FloatToStrF(xMonOto * (cNumer / cDenom), ffFixed, 15, 2));
      sFlt_Pag := xMonFla;
   End
   Else
   Begin
      xMon_Cuo := xMonOto / xNumCuo;
      xMon_Cuo := StrToFloat(FloatToStrF(xMon_Cuo, ffFixed, 15, 2));
   End;
   Result := xMon_Cuo + sFlt_Pag;
End;

Function TDM1.RegAplFon(xAsoId: String): Boolean;
Var
   xSQL: String;
Begin
   Result := False;
   xSQL := 'SELECT ASOID FROM CRE310 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND FORPAGID=''23'' AND CREESTID NOT IN (''13'',''04'',''99'') ';
   If DM1.CountReg(xSQL) > 0 Then Result := True;
End;

Function TDM1.RegCuoBlq(xAsoId: String): Boolean;
Var
   xSQL: String;
Begin
   Result := False;
   xSQL := 'SELECT ASOID FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID=''19'' ';
   If DM1.CountReg(xSQL) > 0 Then Result := True;
End;

Function TDM1.FechasCrono(xAsoId, xCreDid, xCuota: String): String;
Var
   xSQL: String;
Begin
   If xCuota = 'INI' Then
   Begin
      xSQL := 'SELECT MIN(CREFVEN) FECCRONO FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid);
   End;
   If xCuota = 'FIN' Then
   Begin
      xSQL := 'SELECT MAX(CREFVEN) FECCRONO FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid);
   End;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   Result := '';
   If Length(Trim(DM1.cdsQry.FieldByName('FECCRONO').AsString)) > 0 Then
   Begin
      Result := DM1.cdsQry.FieldByName('FECCRONO').AsString;
   End;
   DM1.cdsQry.Close;
End;

Function TDM1.RegProCob(xAsoId: String): Boolean;
Var
   xSQL: String;
Begin
   Result := False;
   xSQL := 'SELECT ASOID FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID=''14'' ';
   If DM1.CountReg(xSQL) > 0 Then Result := True;
End;

Function TDM1.xCalSalPag(xAsoid, xCreDid, xFecCalCulo, xCreCuota, xCnd,
   xFrmPag: String): Currency;
Var
   xfVenc, xSql, xOfiDes, xEstado: String;
   xSaldo: Currency;
Begin
   cdsEjecuta.Close;
   If xCnd = '0' Then
      cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREFVEN,CREFVENINI,'
         + '       CREAMORT,CREFLAT,CREESTID '
         + 'FROM CRE302 '
         + 'Where ASOID =' + QuotedStr(Trim(xAsoId))
         + '  And CREDID=' + QuotedStr(Trim(xCreDid))
         + '  AND CRECUOTA=' + xCreCuota
         + '  AND CREESTID IN (''02'',''11'',''27'',''31'',''14'') '
         + 'Order By CREDID,CRECUOTA')
   Else
      If xCnd = '1' Then
         cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREFVEN, '
            + '       CREFVENINI,CREAMORT,CREFLAT,CREESTID '
            + 'FROM CRE302 '
            + 'Where ASOID =' + QuotedStr(Trim(xAsoId))
            + ' And CREDID=' + QuotedStr(Trim(xCreDid))
            + ' AND CRECUOTA>=' + xCreCuota
            + ' AND CREESTID IN (''02'',''11'',''27'',''31'',''14'') '
            + 'Order By CREDID,CRECUOTA')
      Else
         cdsEjecuta.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREFVEN,'
            + '       CREFVENINI,CREAMORT,CREFLAT,FLAGVAR,CREESTID '
            + 'FROM CRE302 '
            + 'Where ASOID =' + QuotedStr(Trim(xAsoId))
            + '  And CREDID=' + QuotedStr(Trim(xCreDid))
            + '  AND FLAGVAR=''S'' '
            + '  AND CREESTID IN (''02'',''11'',''27'',''31'',''14'') '
            + 'Order By CREDID,CRECUOTA');
   cdsEjecuta.Open;
   cdsEjecuta.First;
   xSaldo := 0;
   While Not cdsEjecuta.Eof Do
   Begin
      xfVenc := Trim(cdsEjecuta.fieldbyname('CREANO').AsString
         + cdsEjecuta.fieldbyname('CREMES').AsString);
      xEstado := cdsEjecuta.fieldbyname('CREESTID').AsString;
      If (xfVenc > xFecCalCulo) And
         (cdsEjecuta.fieldbyname('CREFVEN').AsString = cdsEjecuta.fieldbyname('CREFVENINI').AsString) Then
      Begin
         If xCnd = '0' Then
            xSaldo := xSaldo
               + (cdsEjecuta.fieldbyname('CREMTO').AsCurrency
               - cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency)
         Else
            If cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency > 0 Then
               xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREAMORT').AsCurrency
                  + cdsEjecuta.fieldbyname('CREFLAT').AsCurrency)
                  - cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency
            Else
               xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREAMORT').AsCurrency
                  + cdsEjecuta.fieldbyname('CREFLAT').AsCurrency);
      End
      Else
      Begin
         xSaldo := xSaldo + (cdsEjecuta.fieldbyname('CREMTO').AsCurrency
            - cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency);
      End;
      cdsEjecuta.Next;
   End;
   cdsEjecuta.Close;
   Result := xSaldo;
End;

Procedure TDM1.ExportaGridExcel(xDataGrid: TwwDBGrid; xFileName: String);
Begin
   Screen.Cursor := crHourGlass;
   With xDataGrid, xDataGrid.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := xFileName + '.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(xDataGrid.exportoptions.Filename),
                Nil, Nil, sw_shownormal);
   End;
   Screen.Cursor := crDefault;
End;

//Si es Fallecido

Function TDM1.isAsociadoFallecido(ICAMPO, IVALOR: String): boolean;
Var
   xSQL: String;
   xCount: integer;
Begin
   xSQL := 'SELECT ASOID FROM APO201 WHERE ' + ICAMPO + ' = ' + QuotedStr(IVALOR) + ' AND FALLECIDO = ''S''';
   cdsQry.Close;
   cdsQry.DataRequest(xSQL);
   cdsQry.Open;
   xCount := cdsQry.RecordCount;
   cdsQry.Close;
   Result := xCount > 0;
End;

Procedure TDM1.CargaImagenesDNI(wsDNI, wsOrigen: String);
Var
   xSQL: String;
   streamFoto, streamFirma: TMemoryStream;
Begin
   xSQL := 'SELECT DNI, NUMLIB, APEPAT, APEMAT, NOMBRE, OTRDOC, LUGNAC, NOMPAD, NOMMAD, FECNAC, ESTATURA, '
      + '       SEXO, ESTCIV, GRAINS, LUGDOM, RESTRICCIONES, FECINS, STAVOT, FECEMIDOC, DIRECCION, '
      + '       FOTO, FIRMA, USUACT, FECACT, OFIACT, EQUUSU, UNICO, '
      + '       case when FLAG_EXPIRA IS NULL THEN '''' '
      + '            when FLAG_EXPIRA=''V'' THEN ''VIGENTE'' '
      + '            when FLAG_EXPIRA=''C'' THEN ''CADUCADO'' '
      + '       else ''INDEFINIDO'' end FLAG_EXPIRA '
      + '  FROM INF_RENIEC_CAP '
      + ' WHERE DNI=' + quotedstr(trim(wsDNI))
      + '   AND ROWNUM < 2 '
      + ' ORDER BY FECACT DESC ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

   DM1.jpgFoto := Nil;
   streamFoto := Nil;
   DM1.jpgFirma := Nil;
   streamFirma := Nil;
   Try
    //Crear una corriente y cargarle el contenido de un campo Blob
      streamFoto := TMemoryStream.Create;
      TBlobField(DM1.cdsQry.FieldByName('FOTO')).SaveToStream(streamFoto);

      streamFirma := TMemoryStream.Create;
      TBlobField(DM1.cdsQry.FieldByName('FIRMA')).SaveToStream(streamFirma);

      If streamFoto.Size > 0 Then
      Begin
      //Crear una imagen JPEG y cargarla desde la corriente
         DM1.jpgFoto := TJpegImage.Create;
         streamFoto.Position := 0;
         DM1.jpgFoto.LoadFromStream(streamFoto);
      // la foto se asigna en la forma q invocó a esta rutina
      End;

      DM1.jpgFirma := TJpegImage.Create;
      If streamFirma.Size > 0 Then
      Begin
      //Crear una imagen JPEG y cargarla desde la corriente
         DM1.jpgFirma := TJpegImage.Create;
         streamFirma.Position := 0;
         DM1.jpgFirma.LoadFromStream(streamFirma);
      // la firma se asigna en la forma q invocó a esta rutina
      End;

   // Registro Individual de cuotas
      If wsOrigen = 'RegIndiv' Then
      Begin
         fPagoCuotas.ImagAso.Visible := False;
         If streamFoto.Size > 0 Then
         Begin
            fPagoCuotas.ImagAso.Picture.Assign(DM1.jpgFoto);
            fPagoCuotas.ImagAso.Visible := true;
         End;

         fPagoCuotas.ImaFirma.Visible := False;
         If streamFirma.Size > 0 Then
         Begin
            fPagoCuotas.ImaFirma.Picture.Assign(DM1.jpgFirma);
            fPagoCuotas.ImaFirma.Visible := true;
         End;
      End;

   // Refinanciado
      If wsOrigen = 'Refinan' Then
      Begin
         fRefiSeleAso.ImagAso.Visible := False;
         If streamFoto.Size > 0 Then
         Begin
            fRefiSeleAso.ImagAso.Picture.Assign(DM1.jpgFoto);
            fRefiSeleAso.ImagAso.Visible := true;
         End;

         fRefiSeleAso.ImaFirma.Visible := False;
         If streamFirma.Size > 0 Then
         Begin
            fRefiSeleAso.ImaFirma.Picture.Assign(DM1.jpgFirma);
            fRefiSeleAso.ImaFirma.Visible := true;
         End;
      End;

   // Cronograma
      If wsOrigen = 'FotoCronog' Then
      Begin
         fCronoPag.ppImage1.Visible := False;
         If streamFoto.Size > 0 Then
         Begin
            fCronoPag.ppImage1.Picture.Assign(DM1.jpgFoto);
            fCronoPag.ppImage1.Visible := true;
         End;
      End;

   Except
   End;
End;

// Inicio: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO
Function TDM1.UltCartera(xPar: Char): String;
Var
   xSQL: String;
Begin
   If xPar = 'A' Then xSQL := 'SELECT MAX(PERIODO) PERIODO FROM CFC000';
   If xPar = 'B' Then xSQL := 'SELECT MAX(PERIODO) PERIODO FROM CRE_MOR_UPRO';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   Result := DM1.cdsQry1.FieldByName('PERIODO').AsString;
   DM1.cdsQry1.Close;

End;
// Fin: SPP_201302_COB : Se Agrega REPORTE CREDITICIO CONSOLIDADO EXTERNO


// Inicio: SPP_201311_COB                : 15/08/20130 Verifica Horario
Function TDM1.verificahorario: Boolean;
Var xSql, xhora, xhorini, xhorfin, xdia:String;
Begin
  Result := True;

  xSql := 'SELECT TO_CHAR(SYSDATE, ''HH24MI'') HORA, TO_CHAR(SYSDATE, ''DAY'') DIA  FROM DUAL';
  DM1.cdsQry.Close;
// Inicio: SPP_201312_COB             : 15/10/2013 inconsistencia de Consulta
  DM1.cdsQry.IndexFieldNames:='';
// Fin: SPP_201312_COB                : 15/10/2013 inconsistencia de Consulta
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;

  xhora := DM1.cdsQry.FieldByName('HORA').AsString;
  xdia  := Trim(DM1.cdsQry.FieldByName('DIA').AsString);

  xSql := 'SELECT * FROM CAS_HOR_RES WHERE DIA = '+QuotedStr(xdia);
  DM1.cdsQry2.Close;
// Inicio: SPP_201312_COB             : 15/10/2013 inconsistencia de Consulta
  DM1.cdsQry2.IndexFieldNames:='';
// Fin: SPP_201312_COB                : 15/10/2013 inconsistencia de Consulta
  DM1.cdsQry2.DataRequest(xSql);
  DM1.cdsQry2.Open;
  xhorini := DM1.cdsQry2.FieldByName('HORINIRES').AsString;
  xhorfin := DM1.cdsQry2.FieldByName('HORFINRES').AsString;

  If (xhorini = '') And (xhorfin = '') Then
  Begin
    Result := True;
    Exit;
  End;

  If (xhora >= xhorini) And (xhora <= xhorfin) Then
  Begin
    Result := False;
    Exit;
  End;
end;
// Fin: SPP_201311_COB                : 15/08/20130 Verifica Horario

// Inicio: SPP_201311_COB              : 21/08/20130 Graba Correlativo de ONP
function TDM1.GrbCorrelativoONP: String;
var
  xSQL:String;
begin
  xSQL:='SELECT NVL(MAX(SUBSTR(NUMAUTONP,1,6)),0)+1 NROAUTONP FROM APO201 WHERE NUMAUTONP IS NOT NULL';
  DM1.cdsCorrONP.Close;
  DM1.cdsCorrONP.DataRequest(xSQL);
  DM1.cdsCorrONP.Open;
  Result:= Format('%.6d', [DM1.cdsCorrONP.FieldByName('NROAUTONP').AsInteger]);
end;
// Fin: SPP_201311_COB                : 21/08/20130 Graba Correlativo de ONP


// Inicio HPC_201503_COB
function TDM1.TIR(xMonOto, xCuota: Double; xNumCuo: Integer): Extended;
var Array_dinamico: array of Double;
    Contador: Integer;
begin
    SetLength(Array_dinamico, xNumCuo + 1);
    For Contador := 0 to xNumCuo do
    begin
       If Contador=0 Then
          Array_dinamico[Contador]:=xMonOto*-1
       Else
          Array_dinamico[Contador]:=xCuota;
    end;
    Result:= InternalRateofReturn(0.1, Array_dinamico);
    Array_dinamico:=NIL;
end;
// Fin HPC_201503_COB
End.

