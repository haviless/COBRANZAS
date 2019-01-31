// Inicio Uso Estándares     : 01/08/2011
// Unidad                    : COB917
// Formulario                : fResFPago
// Fecha de Creación         :
// Autor                     :
// Objetivo                  : Reporte Resumen de Cobranzas por Forma de Pagos
// Equipo Solicitante        : Cobranzas
// N° de Pase a Calidad      : HPC_201132_COB   Memorandum 476-2011-DM-COB, Se adiciona informacion para sustento de nuevo saldo del FSC
// N° de Pase a Producción   : HPP_201117_COB   Se adiciona C.UPROID,C.UPAGOID en la consulta.
// N° de Orden de Desarrollo : SAR-2009-0824    Memorándum 905-2009-DM-COB
// N° de Orden de Desarrollo : SAR-2009-0542    Memorándum 624-2009-DM-COB
// N° de pase a producción HPP_201127_COB, a partir del pase HPC_201132_COB
// HPC_201215_COB            : Fondo de Desgravamen
// DPP_201211_COB            : Pase se realiza de acuerdo al HPC_201215_COB
// HPC_201302_COB            : RMEDINA Se adiciona el numero de dias de atraso
// SPP_201303_COB            : Se realiza el pase a producción a partir del HPC_201302_COB
// HPC_201309_COB            : 14/08/2013 - Debe agrupar por 7 digitos del credito
// SPP_201311_COB            : Se realiza el pase a producción a partir del HPC_201309_COB
// HPC_201309_COB            : 14/08/2013 - Debe agrupar por 7 digitos del credito
// HPC_201310_COB            : 16/09/2013  Se agrega forma de Pago 44 = FSC por Invalidez
// SPP_201312_COB            : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201402_COB            : Mostar el número de crédito completo.
// SPP_201402_COB            : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201615_COB            : Se adiciona al filtro las aplicaciones CCI
//                           : Se modifican
//HPC_201717_COB             : Adicionó de forma de pago 40 y 41
//HPC_201728_COB             : Se adiciona forma de pago 98
//HPC_201739_COB             : Nueva opción de filtro para listar las operaciones 
//                             de pago de los creditos refinanciados
//HPC_201807_COB             : Nueva opción de filtro para listar las operaciones
//                             de Extorno aplicados al FSC
//HPC_201812_COB             : Mejora en el Reorte Estadístico de los Extornos del FSC
//HPC_201815_COB             : Adicionar en el Reporte de Cobranzas por Forma de Pago el resumen de
//                             Devoluciones al FSC
//COB_201823_HPC             : Se añaden fecha de registro y forma de pago al reporte de "Pago de Ope. Refinanciadas"

//Inicio HPC_201812_COB
//Mejora en el Reorte Estadístico de los Extornos del FSC y se quita todas las marcas
Unit COB917;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, wwdblook, ComCtrls, Buttons, ppBands, ppClass,
   ppCtrls, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
   ppDBPipe, ExtCtrls, ppVar, Grids, DBGrids, ppEndUsr, ppParameter,
   Wwdbigrd, Wwdbgrid, wwExport, shellapi, db, wwdbdatetimepicker,
   wwClient, ppModule, daDataModule, jpeg;

Type
   TfResFPago = Class(TForm)
      GroupBox1: TGroupBox;
      Label2: TLabel;
      Label1: TLabel;
      DBLCTipCob: TwwDBLookupCombo;
      EdtForPago: TEdit;
      Label5: TLabel;
      DataRep: TppDBPipeline;
      ppRepFPago: TppReport;
      ppHeaderBand2: TppHeaderBand;
      pplblTitulo01: TppLabel;
      pplblTitulo02: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppDBText31: TppDBText;
      ppDBText32: TppDBText;
      ppDBText33: TppDBText;
      ppDBText34: TppDBText;
      ppDBText35: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppLine11: TppLine;
      ppLine12: TppLine;
      ppLabel35: TppLabel;
      ppDBCalc26: TppDBCalc;
      ppDBCalc27: TppDBCalc;
      ppDBCalc28: TppDBCalc;
      ppDBCalc29: TppDBCalc;
      ppDBCalc30: TppDBCalc;
      ppDBCalc31: TppDBCalc;
      ppLabel48: TppLabel;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppDBText22: TppDBText;
      ppDBText23: TppDBText;
      ppLabel27: TppLabel;
      ppLabel49: TppLabel;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppLine9: TppLine;
      ppLabel34: TppLabel;
      ppDBCalc20: TppDBCalc;
      ppDBCalc21: TppDBCalc;
      ppDBCalc22: TppDBCalc;
      ppDBCalc23: TppDBCalc;
      ppDBCalc24: TppDBCalc;
      ppDBCalc25: TppDBCalc;
      ppLabel47: TppLabel;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppDBText24: TppDBText;
      ppDBText25: TppDBText;
      ppLabel28: TppLabel;
      ppLabel50: TppLabel;
      ppGroupFooterBand3: TppGroupFooterBand;
      ppLine7: TppLine;
      ppLabel33: TppLabel;
      ppDBCalc14: TppDBCalc;
      ppDBCalc15: TppDBCalc;
      ppDBCalc16: TppDBCalc;
      ppDBCalc17: TppDBCalc;
      ppDBCalc18: TppDBCalc;
      ppDBCalc19: TppDBCalc;
      ppLabel46: TppLabel;
      ppGroup4: TppGroup;
      ppGroupHeaderBand4: TppGroupHeaderBand;
      ppDBText26: TppDBText;
      ppLabel29: TppLabel;
      ppLabel51: TppLabel;
      ppGroupFooterBand4: TppGroupFooterBand;
      ppLine5: TppLine;
      ppLabel32: TppLabel;
      ppDBCalc8: TppDBCalc;
      ppDBCalc9: TppDBCalc;
      ppDBCalc10: TppDBCalc;
      ppDBCalc11: TppDBCalc;
      ppDBCalc12: TppDBCalc;
      ppDBCalc13: TppDBCalc;
      ppLabel45: TppLabel;
      ppGroup5: TppGroup;
      ppGroupHeaderBand5: TppGroupHeaderBand;
      ppDBText27: TppDBText;
      ppLabel30: TppLabel;
      ppLine2: TppLine;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel52: TppLabel;
      ppGroupFooterBand5: TppGroupFooterBand;
      ppLine3: TppLine;
      ppLabel31: TppLabel;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppDBCalc7: TppDBCalc;
      ppLabel44: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ChkDetalle: TCheckBox;
      chkDist: TCheckBox;
      RpDistribucion: TppReport;
      ppHeaderBand8: TppHeaderBand;
      ppLabel119: TppLabel;
      TituDis01: TppLabel;
      ppLabel132: TppLabel;
      ppLabel133: TppLabel;
      ppLabel134: TppLabel;
      ppSystemVariable22: TppSystemVariable;
      ppSystemVariable23: TppSystemVariable;
      ppSystemVariable24: TppSystemVariable;
      ppLabel135: TppLabel;
      ppLabel136: TppLabel;
      ppLabel137: TppLabel;
      TituDis02: TppLabel;
      ppLine38: TppLine;
      ppDetailBand8: TppDetailBand;
      ppDBText43: TppDBText;
      ppDBText49: TppDBText;
      ppDBText50: TppDBText;
      ppDBText51: TppDBText;
      ppDBText52: TppDBText;
      ppDBText53: TppDBText;
      ppDBText54: TppDBText;
      ppFooterBand8: TppFooterBand;
      ppSummaryBand8: TppSummaryBand;
      ppLabel140: TppLabel;
      ppLabel141: TppLabel;
      ppDBCalc35: TppDBCalc;
      ppLine39: TppLine;
      ppLine40: TppLine;
      ppDBCalc36: TppDBCalc;
      ppDBCalc37: TppDBCalc;
      ppDBCalc38: TppDBCalc;
      ppDBCalc39: TppDBCalc;
      ppLabel146: TppLabel;
      ppLabel147: TppLabel;
      ppGroup6: TppGroup;
      ppGroupHeaderBand6: TppGroupHeaderBand;
      ppDBText47: TppDBText;
      ppGroupFooterBand6: TppGroupFooterBand;
      ppDBCalc40: TppDBCalc;
      ppDBCalc41: TppDBCalc;
      ppDBCalc42: TppDBCalc;
      ppDBCalc43: TppDBCalc;
      ppLabel142: TppLabel;
      ppLabel143: TppLabel;
      ppDBCalc44: TppDBCalc;
      ppLine41: TppLine;
      ppLine42: TppLine;
      ppLabel148: TppLabel;
      ppLabel149: TppLabel;
      ppGroup7: TppGroup;
      ppGroupHeaderBand7: TppGroupHeaderBand;
      ppDBText44: TppDBText;
      ppDBText45: TppDBText;
      ppDBText48: TppDBText;
      ppLabel128: TppLabel;
      ppLabel152: TppLabel;
      ppLabel153: TppLabel;
      ppLabel138: TppLabel;
      ppLabel154: TppLabel;
      ppLabel155: TppLabel;
      ppLabel156: TppLabel;
      ppGroupFooterBand7: TppGroupFooterBand;
      ppDBCalc45: TppDBCalc;
      ppDBCalc46: TppDBCalc;
      ppDBCalc47: TppDBCalc;
      ppDBCalc48: TppDBCalc;
      ppLabel144: TppLabel;
      ppLabel145: TppLabel;
      ppDBCalc49: TppDBCalc;
      ppLine43: TppLine;
      ppLine44: TppLine;
      ppLabel150: TppLabel;
      ppLabel151: TppLabel;
      DbDistribucion: TppDBPipeline;
      ppDBText7: TppDBText;
      ppLabel59: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppLabel62: TppLabel;
      ppDBRefPago: TppDBPipeline;
      ppd1: TppDesigner;
      BitPrint: TBitBtn;
      BitSalir: TBitBtn;
      btnProcesar: TBitBtn;
      rgtipaso: TRadioGroup;
      Label3: TLabel;
      Label4: TLabel;
      dbgPrevio: TwwDBGrid;
      btnaexcel: TBitBtn;
      DtpFecIni: TwwDBDateTimePicker;
      DtpFecFin: TwwDBDateTimePicker;
      ppltipaso: TppLabel;
      ppltipoaso3: TppLabel;

    chkFSC: TCheckBox;
    ppLabel78: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel84: TppLabel;
    ppDBText15: TppDBText;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppLabel85: TppLabel;
    ppDBText16: TppDBText;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBText19: TppDBText;
    chkOpeRef: TCheckBox;
    ppImage1: TppImage;
    chkExtFSC: TCheckBox;
    ppRepfPagos: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel72: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLblUser: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppImage3: TppImage;
    ppDetailBand3: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText46: TppDBText;
    ppDBText56: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc59: TppDBCalc;
    ppLine15: TppLine;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLine16: TppLine;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLblCount2: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppltotaso2: TppLabel;
    ppDBCalc60: TppDBCalc;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppltotcre2: TppLabel;
//Inicio HPC_201815_COB 
//Adicionar en el Reporte de Cobranzas por Forma de Pago el resumen de Devoluciones al FSC
    ppShpResumen2: TppShape;
    lblSubTCUO2: TppLabel;
    lblSubTFSC2: TppLabel;
    lblCUOTAS2: TppLabel;
    lblFSC2: TppLabel;
    ppShpResumenTot2: TppShape;
    lblSubTTotal2: TppLabel;
    lbltotal2: TppLabel;
//Final HPC_201815_COB
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppDBText57: TppDBText;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppDBCalc61: TppDBCalc;
    ppLine19: TppLine;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLine20: TppLine;
    ppDBCalc62: TppDBCalc;
    ppLabel127: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppltotasodia2: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppltotcredia2: TppLabel;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppLabel160: TppLabel;
    ppDBText58: TppDBText;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppDBCalc63: TppDBCalc;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLine21: TppLine;
    daDataModule2: TdaDataModule;
    ppLabel69: TppLabel;
    ppDBText55: TppDBText;
    ppRepfPagos2: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLblTitulo2: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLblUser2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel77: TppLabel;
    ppImage2: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine4: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLblCount: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppltotaso: TppLabel;
    ppDBCalc32: TppDBCalc;
    ppLabel73: TppLabel;
    ppLabel76: TppLabel;
    ppltotcre: TppLabel;
    ppShpResumen: TppShape;
    lblSubTCUO: TppLabel;
    lblSubTFSC: TppLabel;
    lblCUOTAS: TppLabel;
    lblFSC: TppLabel;
    ppShpResumenTot: TppShape;
    lblSubTTotal: TppLabel;
    lbltotal: TppLabel;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppDBText6: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLabel67: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel86: TppLabel;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppDBCalc33: TppDBCalc;
    ppLine10: TppLine;
    ppLabel25: TppLabel;
    ppLabel58: TppLabel;
    ppLine13: TppLine;
    ppDBCalc34: TppDBCalc;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel68: TppLabel;
    ppltotasodia: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppltotcredia: TppLabel;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppLabel66: TppLabel;
    ppDBText8: TppDBText;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppDBText20: TppDBText;
    ppLabel10: TppLabel;
    ppGroupFooterBand13: TppGroupFooterBand;
    daDataModule1: TdaDataModule;
    ppDBText59: TppDBText;
    pplUsuario: TppLabel;
    ppDBCalc50: TppDBCalc;
    ppLabel87: TppLabel;
    ppLabel91: TppLabel;
    ppLine14: TppLine;
    ppDBCalc64: TppDBCalc;
    ppLabel100: TppLabel;
    ppLabel103: TppLabel;
    ppLine22: TppLine;
    pplUsuario2: TppLabel;
    // Inicio: COB_201823_HPC
    // Variables para controlar la fecha de registro y forma de pago
    ppDBText60: TppDBText;
    ppLabel106: TppLabel;
    ppDBText61: TppDBText;
    ppLabel107: TppLabel;
    // Fin: COB_201823_HPC

    //Fin HPC_201807_COB
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure DBLCTipCobChange(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure chkDistClick(Sender: TObject);
      Procedure ChkDetalleClick(Sender: TObject);
      Procedure btnProcesarClick(Sender: TObject);
      Procedure btnaexcelClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure DtpFecIniChange(Sender: TObject);
      Procedure DtpFecFinChange(Sender: TObject);
      Procedure rgtipasoClick(Sender: TObject);
      procedure ppGroupFooterBand1AfterGenerate(Sender: TObject);
      procedure ppSummaryBnd2AfterGenerate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure chkFSCClick(Sender: TObject);
      procedure chkOpeRefClick(Sender: TObject);
      procedure chkExtFSCClick(Sender: TObject);
    procedure ppGroupFooterBand11AfterGenerate(Sender: TObject);
    procedure ppSummaryBand2AfterGenerate(Sender: TObject);
   Private
    { Private declarations }
      Procedure CrgFPago(xArea, xOfiDes: String);
      Procedure limpia;
      Procedure inicializa;
   Public
     xtotaso    :Double;
     cdsClone   :TwwClientDataSet;
   xtotalCUO,xtotalFSC,xtotal:Double;
    { Public declarations }
   End;

Var
   fResFPago: TfResFPago;

Implementation

Uses COBDM1, COB001;

{$R *.dfm}

Procedure TfResFPago.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfResFPago.FormActivate(Sender: TObject);
Begin
   DtpFecIni.Date := DM1.FechaSys;
   DtpFecFin.Date := DM1.FechaSys;
   CrgFPago(Copy(DM1.CrgArea(DM1.wUsuario), 1, 3), Copy(DM1.CrgArea(DM1.wUsuario), 4, 2));
   DBLCTipCob.Text := '24';
   inicializa;
End;

Procedure TfResFPago.DBLCTipCobChange(Sender: TObject);
Begin
   limpia;
   If DM1.cdsFormaPago.Locate('FORPAGOID', VarArrayof([DBLCTipCob.text]), []) Then
   Begin
      EdtForPago.Text := DM1.cdsFormaPago.fieldbyname('FORPAGODES').AsString;
   End
   Else
      If Length(DBLCTipCob.Text) <> 2 Then
      Begin
         Beep;
         EdtForPago.Text := '';
      End;
End;

Procedure TfResFPago.CrgFPago(xArea, xOfiDes: String);
Var
   xSQL: String;
Begin
   If (xArea = 'CRE') And (xOfiDes > '01') Then
      xSQL := ' SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV, '
            + '       FORPAGODES,FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON, '
            + '       FLGPAGAUTDISK,FPLANILLA,ACTIVO,FORPAGACT,PERANUCUO '
            + ' FROM COB101 '
            + ' WHERE FORPAGOID IN (''03'')'
            + ' ORDER By FORPAGOID'
   Else
      If xArea = 'COB' Then
         xSQL := ' SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV, '
               + '       FORPAGODES,FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON, '
               + '       FLGPAGAUTDISK,FPLANILLA,ACTIVO,FORPAGACT,PERANUCUO '
               + ' FROM COB101 '
               + ' WHERE NVL(FLAREPFPAG,''N'') = ''S'' '
               + ' Order By FORPAGOID '
      Else
         If xArea = 'CAJ' Then
            xSQL := ' SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV, '
                  + '       FORPAGODES,FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON, '
                  + '       FLGPAGAUTDISK,FPLANILLA,ACTIVO,FORPAGACT,PERANUCUO '
                  + ' FROM COB101 '
                  + ' WHERE FORPAGOID IN (''02'') '
                  + ' Order By FORPAGOID '
         Else
            If xArea = 'PRE' Then
               xSQL := ' SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV, '
                     + '       FORPAGODES,FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON, '
                     + '       FLGPAGAUTDISK,FPLANILLA,ACTIVO,FORPAGACT,PERANUCUO '
                     + ' FROM COB101 '
                     + ' WHERE FORPAGOID IN (''05'') '
                     + ' Order By FORPAGOID '
            Else
               If xArea = 'SIS' Then
                  xSQL := ' SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV, '
                        + '       FORPAGODES,FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON, '
                        + '       FLGPAGAUTDISK,FPLANILLA,ACTIVO,FORPAGACT,PERANUCUO '
                        + ' FROM COB101 '
                        + ' Order By FORPAGOID '
               Else
                  xSQL := 'SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV, '
                        + '       FORPAGODES,FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON, '
                        + '       FLGPAGAUTDISK,FPLANILLA,ACTIVO,FORPAGACT,PERANUCUO '
                        + '  FROM COB101 '
                        + ' WHERE FORPAGOID IN (''XX'') '
                        + ' Order By FORPAGOID';
   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.DataRequest(xSQL);
   DM1.cdsFormaPago.Open;
   DBLCTipCob.LookupTable := DM1.cdsFormaPago;
   DBLCTipCob.LookupField := 'FORPAGOID';
   If DM1.cdsFormaPago.RecordCount = 1 Then
   Begin
      DBLCTipCob.Text := DM1.cdsFormaPago.fieldByname('FORPAGOID').AsString;
      DBLCTipCob.Enabled := False;
   End
   Else
      DBLCTipCob.Enabled := True;
End;

Procedure TfResFPago.BitPrintClick(Sender: TObject);
var xWhere1:String;
Begin

  //control si el cds no esta activo
  Try
    Dm1.cdsFPago.First;
  EXCEPT
    ShowMessage('No existe información para esta opción');
    Exit;
  END;

   If  DBLCTipCob.Text='99' Then
        xWhere1:=' AND CREESTID NOT IN (''13'') '
   Else xWhere1:=' AND CREESTID NOT IN (''04'',''13'',''99'') ';

   xtotaso := 0;
   If ChkDetalle.Checked Then
   Begin

      DM1.cdsFPago.IndexFieldNames := 'CREFPAG;ASOAPENOM';
      If chkDist.Checked Then
      Begin
         If DM1.cdsFPago.RecordCount > 0 Then
         Begin
            ppltipoaso3.Caption := 'TIPO DE ASOCIADO : GENERAL';
            If rgtipaso.ItemIndex = 0 Then
               ppltipoaso3.Caption := 'TIPO DE ASOCIADO : DOCENTE'
            Else
               If rgtipaso.ItemIndex = 1 Then
                  ppltipoaso3.Caption := 'TIPO DE ASOCIADO : CESANTE'
               Else
                  If rgtipaso.ItemIndex = 2 Then
                     ppltipoaso3.Caption := 'TIPO DE ASOCIADO : CONTRATADO';

            If chkExtFSC.Checked Then
                TituDis01.Caption := 'EXTORNOS EFECTUADOS DEL ' + DateToStr(DtpFecIni.Date)
                                  + ' AL ' + DateToStr(DtpFecFin.Date) + '-' + Trim(EdtForPago.Text)+' - F.S.C.'
            Else
            Begin
            If Not chkOpeRef.Checked Then
                TituDis01.Caption := 'COBRANZA EFECTUADA DEL ' + DateToStr(DtpFecIni.Date)
                        + ' AL ' + DateToStr(DtpFecFin.Date) + '-' + Trim(EdtForPago.Text)
            Else
                TituDis01.Caption := 'COBRANZA EFECTUADA DEL ' + DateToStr(DtpFecIni.Date)
                        + ' AL ' + DateToStr(DtpFecFin.Date) + '- PAGO OPE. REFINANCIADAS' ;
            End;

            TituDis02.Caption := 'DETALLES  MONTO PAGADO Vs. AMORTIZACION + INTERES + GASTOS / FLAT / DESGRAV';

            pplUsuario2.Caption := DM1.wUsuario;
            RpDistribucion.Print;
            DM1.cdsFPago.IndexFieldNames := 'ASOAPENOM';
            RpDistribucion.Cancel;

         End
         Else
            MessageDlg(' No Existe Información Para Este Rango ó Esa Forma De Pago ',mtError,[mbOk],0);
      End
      Else
      Begin
         If DM1.cdsFPago.RecordCount > 0 Then
         Begin

            If chkExtFSC.Checked Then
                ppLblTitulo2.Caption := 'EXTORNOS EFECTUADOS DEL ' + DateToStr(DtpFecIni.Date)
                                     + ' AL ' + DateToStr(DtpFecFin.Date) + ' - F.S.C.'

            Else
                ppLblTitulo.Caption := 'COBRANZA EFECTUADA DEL ' + DateToStr(DtpFecIni.Date)
                                     + ' AL ' + DateToStr(DtpFecFin.Date) + '-' + Trim(EdtForPago.Text);

            ppLblUser.Caption := 'USUARIOS EN GENERAL';
            ppLblUser2.Caption := 'USUARIOS EN GENERAL';

            If chkExtFSC.Checked Then
                ppLblCount.Caption := FormatFloat('###,###',DM1.CountReg('SELECT ASOCODMOD '
                    +'FROM COB901  '
                    +'WHERE TRUNC(FECANULA)  BETWEEN To_Date(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'') '
                    +'  AND To_Date(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'') '
                    +'  AND FORPAGID IN (''23'',''24'',''44'')'
                    +'  AND CREESTID =' + QuotedStr('04') ))
            Else
                ppLblCount.Caption := FormatFloat('###,###',DM1.CountReg('SELECT ASOCODMOD '
                    +'FROM CRE310  '
                    +'WHERE CREFPAG  BETWEEN To_Date(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'') '
                    +'  AND To_Date(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'') '
                    +'  AND FORPAGID=' + QuotedStr(Trim(DBLCTipCob.Text))
                    + xWhere1 ));
             ppLblCount2.Caption := ppLblCount.Caption;

               If chkFSC.Checked Then
               Begin
                lblCUOTAS.Visible      := True;
                lblFSC.Visible         := True;
                ppShpResumen.Visible   := True;
                lblSubTCUO.Visible     := True;
                lblSubTFSC.Visible     := True;
                lblSubTTotal.Visible   := True;
                lbltotal.Visible       := True;
                ppShpResumenTot.Visible:=True;
//Inicio HPC_201815_COB 
//Adicionar en el Reporte de Cobranzas por Forma de Pago el resumen de Devoluciones al FSC  
                lblCUOTAS2.Visible      := True;
                lblFSC2.Visible         := True;
                ppShpResumen2.Visible   := True;
                lblSubTCUO2.Visible     := True;
                lblSubTFSC2.Visible     := True;
                lblSubTTotal2.Visible   := True;
                lbltotal2.Visible       := True;
                ppShpResumenTot2.Visible:=True;
                lblCUOTAS.Caption      := FormatFloat('###,###,###.00',xtotalCUO);
                lblFSC.Caption         := FormatFloat('###,###,###.00',xtotalFSC);
                lbltotal.Caption       := FormatFloat('###,###,###.00',xtotal);
                lblCUOTAS2.Caption      := FormatFloat('###,###,###.00',xtotalCUO);
                lblFSC2.Caption         := FormatFloat('###,###,###.00',xtotalFSC);
                lbltotal2.Caption       := FormatFloat('###,###,###.00',xtotal);
//Fin HPC_201815_COB 
               End;
            if ((DBLCTipCob.text='23') or (DBLCTipCob.text='24') or (DBLCTipCob.text='44')) and (not chkExtFSC.Checked)  then
            begin
               ppLabel69.Visible:=True;
               ppDBText55.Visible:=True;
               ppDBText55.DataField:='DIAS_ATRAZO';
            end
            else
            begin
               ppLabel69.Visible:=False;
               ppDBText55.Visible:=False;
               ppDBText55.DataField:='';
            end;

            If chkExtFSC.Checked Then
            Begin
              ppRepfPagos2.Cancel;
              pplUsuario.Caption := DM1.wUsuario;
              ppRepfPagos2.Print;
            End
            Else
              ppRepfPagos.Print;
            //ppd1.ShowModal;
            DM1.cdsFPago.IndexFieldNames := 'ASOAPENOM';

            lblCUOTAS.Visible      := False;
            lblFSC.Visible         := False;
            ppShpResumen.Visible   := False;
            lblSubTCUO.Visible     := False;
            lblSubTFSC.Visible     := False;
            lblSubTTotal.Visible   := False;
            lbltotal.Visible       := False;
            ppShpResumenTot.Visible:= False;
//Inicio HPC_201815_COB 
//Adicionar en el Reporte de Cobranzas por Forma de Pago el resumen de Devoluciones al FSC
            lblCUOTAS2.Visible      := False;
            lblFSC2.Visible         := False;
            ppShpResumen2.Visible   := False;
            lblSubTCUO2.Visible     := False;
            lblSubTFSC2.Visible     := False;
            lblSubTTotal2.Visible   := False;
            lbltotal2.Visible       := False;
            ppShpResumenTot2.Visible:= False;
//Fin HPC_201815_COB 
            ppRepfPagos.Cancel;
            ppRepfPagos2.Cancel;

         End
         Else
            MessageDlg(' No Existe Información Para Este Rango ó Esa Forma De Pago', mtError, [mbOk], 0);
      End;
   End
   Else
   Begin
      If DM1.cdsCambios.RecordCount > 0 Then
      Begin
         ppltipaso.Caption := 'TIPO DE ASOCIADO : GENERAL';
         If rgtipaso.ItemIndex = 0 Then
            ppltipaso.Caption := 'TIPO DE ASOCIADO : DOCENTE'
         Else
            If rgtipaso.ItemIndex = 1 Then
               ppltipaso.Caption := 'TIPO DE ASOCIADO : CESANTE'
            Else
               If rgtipaso.ItemIndex = 2 Then ppltipaso.Caption := 'TIPO DE ASOCIADO : CONTRATADO';
         pplblTitulo01.Caption := 'RESUMEN GENERAL DE COBRANZA EFECTUADA DEL : ' + DateToStr(DtpFecIni.Date)
                                + ' AL ' + DateToStr(DtpFecFin.Date);
         pplblTitulo02.Caption := 'AMORTIZACION/INTERES/GASTOS/DESGRAVAMEN - FORMA DE PAGO : ' + Trim(DBLCTipCob.Text)
                                + '-' + Trim(EdtForPago.Text);
         ppRepFPago.Print;
         ppRepFPago.Cancel;
      End
      Else
         MessageDlg(' No Existe Información Para Este Rango ó Esa Forma De Pago ', mtError, [mbOk], 0);
   End;
End;

Procedure TfResFPago.chkDistClick(Sender: TObject);
Begin
   limpia;

   If (Not ChkDetalle.Checked) AND (chkDist.Checked) Then
   Begin
      MessageDlg(' Debe Seleccionar EL CHECK DETALLADO, Para Utilizar Esta Opción!!!', mtError, [mbOk], 0);
      chkDist.Checked := False;
      Exit;
   End;
   If (chkFSC.Checked) AND (chkDist.Checked) Then
   Begin
      MessageDlg('No Debe Seleccionar EL CHECK Pagos FSC, Para Utilizar Esta Opción!!!', mtError, [mbOk], 0);
      chkDist.Checked := False;
      Exit;
   End;

End;

Procedure TfResFPago.ChkDetalleClick(Sender: TObject);
Begin
   limpia;

   If Not ChkDetalle.Checked Then
   Begin
      chkDist.Checked    := False;
      chkFSC.Checked     := False;
      chkExtFSC.Checked  := False;
   End;

End;

Procedure TfResFPago.btnProcesarClick(Sender: TObject);
Var
   xSql, xtipaso,xtipaso2: String;
   xWhere1:String;

Begin
   BitPrint.Enabled := False;
   btnaexcel.Enabled := False;
   If  DBLCTipCob.Text='99' Then
        xWhere1:=' AND A.CREESTID NOT IN (''13'') '
   Else xWhere1:=' AND A.CREESTID NOT IN (''04'',''13'',''99'') ';

   If not chkOpeRef.Checked Then
   Begin
      If  (not chkExtFSC.Checked) and (Length(Trim(EdtForPago.Text)) = 0) Then
      Begin
          MessageDlg(' Faltan Seleccionar Una Forma De Pago  ', mtError, [mbOk], 0);
          Exit;
      End;
   End;

   If DBLCTipCob.Text = '02' Then
   Begin
      If DtpFecFin.Date >= DM1.FechaSys Then
      Begin
         ShowMessage('No se puede tener movimientos de Efectivo con fechas mayores a la del Sistema');
         Exit;
      End;
   End;
   // Procesando
   Screen.Cursor := crHourglass;
   If ChkDetalle.Checked Then
   Begin
      If chkDist.Checked Then
      Begin
         xtipaso := '';
         If rgtipaso.ItemIndex = 0 Then
            xtipaso := ' AND D.ASOTIPID = ''DO'''
         Else
            If rgtipaso.ItemIndex = 1 Then
               xtipaso := ' AND D.ASOTIPID = ''CE'''
            Else
               If rgtipaso.ItemIndex = 2 Then xtipaso := ' AND D.ASOTIPID = ''CO''';

         If chkExtFSC.Checked Then
         Begin
            xSQL := ' SELECT D.ASOTIPID,A.FORPAGID,E.FORPAGODES, TO_CHAR(A.FECANULA,''YYYYMM'') PERIODO, TRUNC(A.FECANULA) CREFPAG,C.UPROID,C.UPAGOID,C.USEID, C.ASOCODMOD, '
                +'        C.ASOAPENOM, A.CREDOCPAG, A.CREDID, A.CRECUOTA, NVL(A.CREAMORT,0) CREAMORT,(CASE WHEN A.CREESTID=''04'' Then ''EXTOR'' END) EXT,'
                +'        NVL(A.CREINTERES,0) CREINTERES, NVL(A.CREFLAT,0) CREFLAT, NVL(A.MONCOBDESGRAV,0) MONCOBDESGRAV, NVL(A.CREMTOCOB,0) CREMTOCOB, '
                +'        B.MESDESL||'' - '' ||TO_CHAR(A.CREFPAG,''YYYY'') MESANO,0 DIAS_ATRAZO  '
                +' FROM COB901 A, TGE181 B, APO201 C, CRE301 D, COB101 E '
                +' WHERE TRUNC(A.FECANULA) BETWEEN TO_DATE(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'')'
                +'                     AND TO_DATE(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'')'
                +'   AND A.FORPAGID IN (''23'',''24'',''44'')'
                +'   AND A.CREESTID = '+ QuotedStr('04')
                +'   AND TO_CHAR(A.CREFPAG,''MM'') = B.MESIDR(+) '
                +'   AND A.ASOID = C.ASOID '
                +'   AND A.ASOID = D.ASOID(+) AND A.CREDID = D.CREDID(+) AND D.CREESTID(+) NOT IN (''13'',''04'') '
                +'   AND A.FORPAGID = E.FORPAGOID '
                + xtipaso
                +' ORDER BY D.ASOTIPID,A.FORPAGID, PERIODO,TRUNC(A.FECANULA),C.UPROID,C.UPAGOID,C.USEID,A.CREDID,A.CRECUOTA,C.ASOAPENOM';

         End
         Else
         Begin
            xSQL := ' SELECT D.ASOTIPID,A.FORPAGID,E.FORPAGODES,TO_CHAR(A.CREFPAG,''YYYYMM'') PERIODO, A.CREFPAG,C.UPROID,C.UPAGOID,C.USEID, C.ASOCODMOD, '
                +'        C.ASOAPENOM, A.CREDOCPAG, A.CREDID, A.CRECUOTA, NVL(A.CREAMORT,0) CREAMORT,(CASE WHEN A.CREESTID=''04'' Then ''EXTOR'' END) EXT,'
                +'        NVL(A.CREINTERES,0) CREINTERES, NVL(A.CREFLAT,0) CREFLAT, NVL(A.MONCOBDESGRAV,0) MONCOBDESGRAV, NVL(A.CREMTOCOB,0) CREMTOCOB, '
                +'        B.MESDESL||'' - '' ||TO_CHAR(A.CREFPAG,''YYYY'') MESANO,0 DIAS_ATRAZO  '
                // Inicio: COB_201823_HPC
                // Se añaden campos forma de pago y fecha de registro
                +'        , E.FORPAGOABR DESC_ABR_FORPAGO, E.FORPAGODES DESC_FOR_PAG, A.FREG FEC_REG'
                // Fin: COB_201823_HPC
                +' FROM CRE310 A, TGE181 B, APO201 C, CRE301 D,COB101 E  '
                +' WHERE A.CREFPAG BETWEEN TO_DATE(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'')'
                +'                     AND TO_DATE(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'')';

            If not chkOpeRef.Checked Then
                xSQL := xSQL
                        +'   AND A.FORPAGID = ' + QuotedStr(DBLCTipCob.Text)
            Else
                xSQL := xSQL
                        +'   AND D.TIPDESEID=''10'' '
                        +'   AND ( SUBSTR(A.CREDID, 9,1) = ''R'' OR A.TIPCREID=''RE'') ';

            xSQL := xSQL
                    + xWhere1
                    +'   AND TO_CHAR(A.CREFPAG,''MM'') = B.MESIDR(+) '
                    +'   AND A.ASOID = C.ASOID '
                    +'   AND A.ASOID = D.ASOID AND A.CREDID = D.CREDID '
                    +'   AND A.FORPAGID = E.FORPAGOID '
                    + xtipaso
                    +' ORDER BY D.ASOTIPID,PERIODO,A.FORPAGID,A.CREFPAG,C.UPROID,C.UPAGOID,C.USEID,A.CREDID,A.CRECUOTA,C.ASOAPENOM';
         End;

         DM1.cdsFPago.Close;
         DM1.cdsFPago.DataRequest(xSQL);
         DM1.cdsFPago.Open;
         DM1.cdsFPago.IndexFieldNames := 'ASOAPENOM';
         Screen.Cursor := crDefault;
         dbgPrevio.DataSource := DM1.dsFPago;
         If DM1.cdsFPago.RecordCount = 0 Then
         Begin
            MessageDlg(' No Existe Información Para Este Rango ó Esa Forma De Pago ', mtError, [mbOk], 0);
            Exit;
         End;
         dbgPrevio.Selected.Clear;
         dbgPrevio.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9#9);
         dbgPrevio.Selected.Add('PERIODO'#9'6'#9'Periodo'#9#9);
         dbgPrevio.Selected.Add('CREFPAG'#9'10'#9'Fecha~de pago'#9#9);
         dbgPrevio.Selected.Add('Uproid'#9'3'#9'Código~Upro'#9#9);
         dbgPrevio.Selected.Add('Upagoid'#9'2'#9'Código~UPago'#9#9);
         dbgPrevio.Selected.Add('USEID'#9'2'#9'Código~Ugel'#9#9);
         dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
         dbgPrevio.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y~Nombres'#9#9);
         dbgPrevio.Selected.Add('CREDOCPAG'#9'10'#9'Documento~de pago'#9#9);
         dbgPrevio.Selected.Add('EXT'#9'5'#9'Extor.'#9#9);
         dbgPrevio.Selected.Add('CREDID'#9'15'#9'Número de~crédito'#9#9);
         dbgPrevio.Selected.Add('CRECUOTA'#9'6'#9'Cuota'#9#9);
         dbgPrevio.Selected.Add('CREAMORT'#9'10'#9'Amortización'#9#9);
         dbgPrevio.Selected.Add('CREINTERES'#9'10'#9'Interes'#9#9);
         dbgPrevio.Selected.Add('CREFLAT'#9'10'#9'Flat'#9#9);
         dbgPrevio.Selected.Add('MONCOBDESGRAV'#9'10'#9'Desgravam.'#9#9);
         dbgPrevio.Selected.Add('MESANO'#9'20'#9'Año y Mes'#9#9);
         // Inicio: COB_201823_HPC
         // Se añade en grid forma de pago y fecha de registro
         dbgPrevio.Selected.Add('DESC_FOR_PAG'#9'25'#9'Forma de pago'#9#9);
         dbgPrevio.Selected.Add('FEC_REG'#9'10'#9'Fecha de registro'#9#9);
         // Fin: COB_201823_HPC
         dbgPrevio.ApplySelected;
         TNumericField(DM1.cdsFPago.FieldByName('CREAMORT')).DisplayFormat := '#,##0.00';
         TNumericField(DM1.cdsFPago.FieldByName('CREINTERES')).DisplayFormat := '#,##0.00';
         TNumericField(DM1.cdsFPago.FieldByName('CREFLAT')).DisplayFormat := '#,##0.00';
         TNumericField(DM1.cdsFPago.FieldByName('MONCOBDESGRAV')).DisplayFormat := '#,##0.00';
         BitPrint.Enabled := True;
         btnaexcel.Enabled := True;
      End
      Else
      Begin
         xtipaso := '';
         If chkFSC.Checked Then
         Begin
            If rgtipaso.ItemIndex = 0 Then
               xtipaso := ' AND B.ASOTIPID = ''DO'''
            Else
               If rgtipaso.ItemIndex = 1 Then
                  xtipaso := ' AND B.ASOTIPID = ''CE'''
               Else
                  If rgtipaso.ItemIndex = 2 Then
                     xtipaso := ' AND B.ASOTIPID = ''CO''';

            If rgtipaso.ItemIndex = 0 Then
               xtipaso2 := ' AND B.TIP_ASO_ORIGEN = ''DO'''
            Else
               If rgtipaso.ItemIndex = 1 Then
                  xtipaso2 := ' AND B.TIP_ASO_ORIGEN = ''CE'''
               Else
                  If rgtipaso.ItemIndex = 2 Then
                     xtipaso2 := ' AND B.TIP_ASO_ORIGEN = ''CO''';
                   xSql := 'SELECT ''CUO'' TIPO,B.ASOID, B.ASOTIPID,A.FORPAGID,  B.CREDID,  A.CREFPAG, C.ASOTIPDES,A.UPROID,A.UPAGOID,A.USEID, A.ASOCODMOD,'
                   +'       A.ASOAPENOM, A.CREDOCPAG, SUM(A.CREMTOCOB) AS CREMTOCOB,MAX(CASE WHEN A.CREESTID=''04'' Then ''EXTOR'' END) EXT,0 DIAS_ATRAZO  '
                   +'FROM CRE310 A, CRE301 B, APO107 C '
                   +'WHERE A.CREFPAG BETWEEN TO_DATE(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'')'
                   +'                     AND To_Date(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'')'
                   +'  AND A.FORPAGID = '+QuotedStr(DBLCTipCob.Text)
                   + xWhere1
                   + xtipaso
                   +'  AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.ASOTIPID = C.ASOTIPID '
                   +'GROUP BY A.CREFPAG, C.ASOTIPDES,A.FORPAGID, B.ASOID, A.ASOAPENOM, B.CREDID, B.ASOTIPID, A.CREFPAG,A.UPROID,A.UPAGOID,A.USEID, A.ASOCODMOD, A.CREDOCPAG '
                   +'UNION ALL '
                   +'SELECT ''FSC'' TIPO,B.ASOID,B.TIP_ASO_ORIGEN ASOTIPID,A.FORPAGID,B.NUM_DEU CREDID,A.FEC_COB_DEU CREFPAG, C.ASOTIPDES,A.UPROID,A.UPAGOID, A.USEID,'
                   +'        A.ASOCODMOD, A.ASOAPENOM, A.NROOPE CREDOCPAG, SUM(A.IMP_COB_DEU) AS CREMTOCOB ,'' '' EXT,0 DIAS_ATRAZO '
                   +'FROM COB_FSC_PAGOS_AL_FSC A, COB_FSC_DEUDA_FSC_CAB B, APO107 C '
                   +'WHERE A.FEC_COB_DEU BETWEEN TO_DATE(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'') '
                   +'                         AND To_Date(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'') '
                   +'  AND A.FORPAGID = '+QuotedStr(DBLCTipCob.Text)
                   +'  AND A.EST_COB_COD NOT IN (''04'',''13'',''99'')  '
                   +'  AND A.ASOID = B.ASOID AND A.NUM_DEU = B.NUM_DEU  '
                   + xtipaso2
                   +'  AND B.TIP_ASO_ORIGEN = C.ASOTIPID '
                   +'GROUP BY A.FEC_COB_DEU, C.ASOTIPDES,A.FORPAGID, B.ASOID, A.ASOAPENOM, B.NUM_DEU, B.TIP_ASO_ORIGEN, '
                   +'         A.FEC_COB_DEU,A.UPROID,A.UPAGOID,A.USEID, A.ASOCODMOD, A.NROOPE '
                   +'ORDER BY TIPO,CREFPAG,ASOTIPDES,ASOID,ASOAPENOM,CREDID ';
         End //Fin Fsc
         Else
         Begin //Sin FSC
            xtipaso := '';
            If rgtipaso.ItemIndex = 0 Then
               xtipaso := ' AND B.ASOTIPID = ''DO'''
            Else
               If rgtipaso.ItemIndex = 1 Then
                  xtipaso := ' AND B.ASOTIPID = ''CE'''
               Else
                  If rgtipaso.ItemIndex = 2 Then
                     xtipaso := ' AND B.ASOTIPID = ''CO''';

            If chkExtFSC.Checked Then
            Begin
                xSQL := ' SELECT A.TIPO, A.ASOID, A.ASOTIPID, A.FORPAGID, A.FORPAGODES, A.CREDID2, A.CREDID, TRUNC(A.FECANULA) CREFPAG, A.ASOTIPDES, A.UPROID, A.UPAGOID, A.USEID, A.ASOCODMOD, A.ASOAPENOM, A.CREDOCPAG, A.CREMTOCOB, A.EXT, '
                     + '        (SELECT DIA_ATRASO '
                     + '           FROM COB_FSC_DEUDA_FSC_DET  '
                     + '          WHERE ASOID = A.ASOID '
                     + '            AND CRE_APL_FSC= A.CREDID2 '
                     + '            AND NRO_REF_FSC = A.CREDOCPAG '
                     + '            AND FLG_ANU_EXT IS NULL) DIAS_ATRAZO '
                     + '   FROM (SELECT ''CUO'' TIPO,B.ASOID,A.FORPAGID,D.FORPAGODES, B.ASOTIPID, MAX(A.CREDID) CREDID2, '
                     + '                A.CREDID,TRUNC(A.FECANULA)FECANULA, C.ASOTIPDES, A.UPROID, A.UPAGOID, '
                     + '                A.USEID, A.ASOCODMOD, A.ASOAPENOM, A.CREDOCPAG, SUM(A.CREMTOCOB) AS CREMTOCOB, MAX(CASE WHEN A.CREESTID=''04'' Then ''EXTOR'' END) EXT '
                     + '           FROM COB901 A, CRE301 B, APO107 C,COB101 D '
                     + '          WHERE TRUNC(A.FECANULA) between to_date(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'')'
                     + '                               and to_date(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'')'
                     +'             AND A.FORPAGID IN (''23'',''24'',''44'')'
                     + '            AND A.CREESTID = '+QuotedStr('04')
                     + xtipaso
                     + '            AND A.ASOID = B.ASOID(+) AND A.CREDID = B.CREDID(+) AND B.ASOTIPID = C.ASOTIPID(+) AND A.FORPAGID=D.FORPAGOID '
                     + '  GROUP BY TRUNC(A.FECANULA),C.ASOTIPDES,A.FORPAGID,D.FORPAGODES,B.ASOID, A.ASOAPENOM, A.CREDID, B.ASOTIPID,A.UPROID,A.UPAGOID,A.USEID,A.ASOCODMOD,A.CREDOCPAG'
                     + '  ORDER BY TRUNC(A.FECANULA),C.ASOTIPDES,A.FORPAGID,A.UPROID,A.UPAGOID,A.USEID, B.ASOID, A.ASOAPENOM, SUBSTR(A.CREDID,9,7)) A';
            End
            Else
            Begin

            If (DBLCTipCob.Text='24') or (DBLCTipCob.Text='23') or (DBLCTipCob.text='44') Then
            Begin
               xSQL := ' SELECT A.TIPO, A.ASOID, A.ASOTIPID,A.FORPAGID,A.FORPAGODES, A.CREDID2, A.CREDID, A.CREFPAG, A.ASOTIPDES, A.UPROID, A.UPAGOID, A.USEID, A.ASOCODMOD, A.ASOAPENOM, A.CREDOCPAG, A.CREMTOCOB, A.EXT, '
                     + '        (SELECT DIA_ATRASO '
                     + '           FROM COB_FSC_DEUDA_FSC_DET  '
                     + '          WHERE ASOID=ASOID AND CRE_APL_FSC=CREDID2 AND NRO_REF_FSC=CREDOCPAG '
                     + '            AND FLG_ANU_EXT IS NULL) DIAS_ATRAZO '
                     + '   FROM (SELECT ''CUO'' TIPO,B.ASOID, B.ASOTIPID,A.FORPAGID,D.FORPAGODES, MAX(B.CREDID) CREDID2, '
                     + '                B.CREDID, A.CREFPAG, C.ASOTIPDES, A.UPROID, A.UPAGOID, '
                     + '                A.USEID, A.ASOCODMOD, A.ASOAPENOM, A.CREDOCPAG, SUM(A.CREMTOCOB) AS CREMTOCOB, MAX(CASE WHEN A.CREESTID=''04'' Then ''EXTOR'' END) EXT '
                     + '           FROM CRE310 A, CRE301 B, APO107 C,COB101 D '
                     + '          WHERE A.CREFPAG between to_date(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'')'
                     + '                               and to_date(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'')'
                     + '            AND A.FORPAGID = '+QuotedStr(DBLCTipCob.Text)
                     + xWhere1
                     + xtipaso
                     + '            AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.ASOTIPID = C.ASOTIPID AND A.FORPAGID=D.FORPAGOID '
                     + '  GROUP BY A.CREFPAG, C.ASOTIPDES,A.FORPAGID,D.FORPAGODES, B.ASOID, A.ASOAPENOM, B.CREDID, B.ASOTIPID, A.CREFPAG,A.UPROID,A.UPAGOID,A.USEID,A.ASOCODMOD,A.CREDOCPAG'
                     + '  ORDER BY A.CREFPAG, C.ASOTIPDES,A.FORPAGID,A.UPROID,A.UPAGOID,A.USEID, B.ASOID, A.ASOAPENOM, SUBSTR(B.CREDID,9,7)) A';
            End
            Else
            Begin
               xSQL := ' SELECT ''CUO'' TIPO,B.ASOID, B.ASOTIPID,A.FORPAGID, B.CREDID, A.CREFPAG, C.ASOTIPDES, '
                     + '        A.UPROID,A.UPAGOID,A.USEID, A.ASOCODMOD, A.ASOAPENOM, A.CREDOCPAG, SUM(A.CREMTOCOB) AS CREMTOCOB,MAX(CASE WHEN A.CREESTID=''04'' Then ''EXTOR'' END) EXT '
                     + '   FROM CRE310 A, CRE301 B, APO107 C '
                     + '  WHERE A.CREFPAG BETWEEN to_date(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'')'
                     + '                      and to_date(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'')'
                     + '    AND A.FORPAGID = '+QuotedStr(DBLCTipCob.Text)
                     + xWhere1
                     + xtipaso
                     + '    AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.ASOTIPID = C.ASOTIPID '
                     + '  GROUP BY A.CREFPAG, C.ASOTIPDES,A.FORPAGID, B.ASOID, A.ASOAPENOM, B.CREDID, B.ASOTIPID, A.CREFPAG,A.UPROID,A.UPAGOID,A.USEID,A.ASOCODMOD,A.CREDOCPAG'
                     + '  ORDER BY A.CREFPAG, C.ASOTIPDES,A.UPROID,A.UPAGOID,A.USEID, B.ASOID, A.ASOAPENOM, SUBSTR(B.CREDID,9,7)';
            End;

            End; //Fin  chkExtFSC.Checked

         End; //Fin sin FSC

         DM1.cdsFPago.Close;
         DM1.cdsFPago.DataRequest(xSQL);
         DM1.cdsFPago.Open;
         DM1.cdsFPago.IndexFieldNames := 'ASOAPENOM';

         cdsClone    := TwwClientDataSet.Create(nil);
         cdsClone.CloneCursor(DM1.cdsFPago,True);
         xtotal := 0;
         xtotalCUO :=0;
         xtotalFSC :=0;

         cdsClone.First;
         While Not cdsClone.Eof Do
         Begin
            xtotal := xtotal + cdsClone.FieldByName('CREMTOCOB').AsFloat;
           If chkFSC.Checked Then
           Begin
             If cdsClone.FieldByName('TIPO').AsString='CUO' Then  xtotalCUO:=xtotalCUO+cdsClone.FieldByName('CREMTOCOB').asfloat;
             If cdsClone.FieldByName('TIPO').AsString='FSC' Then  xtotalFSC:=xtotalFSC+cdsClone.FieldByName('CREMTOCOB').asfloat;
           End;
           cdsClone.Next;
         End;
         Screen.Cursor := crDefault;
         dbgPrevio.DataSource := DM1.dsFPago;
         If DM1.cdsFPago.RecordCount = 0 Then
         Begin
            MessageDlg(' No Existe Información Para Este Rango ó Esa Forma De Pago ', mtError, [mbOk], 0);
            Exit;
         End;
         dbgPrevio.Selected.Clear;
         dbgPrevio.Selected.Add('TIPO'#9'4'#9'Tip~Mov'#9#9);
         dbgPrevio.Selected.Add('ASOTIPID'#9'2'#9'Tip~Aso'#9#9);
         dbgPrevio.Selected.Add('ASOTIPDES'#9'10'#9'Descripción~Tipo asociado'#9#9);
         dbgPrevio.Selected.Add('Uproid'#9'3'#9'Código~Upro'#9#9);
         dbgPrevio.Selected.Add('Upagoid'#9'2'#9'Código~UPago'#9#9);
         dbgPrevio.Selected.Add('USEID'#9'2'#9'Código~Ugel'#9#9);
         dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
         dbgPrevio.Selected.Add('ASOAPENOM'#9'32'#9'Apellidos y~Nombres'#9#9);
         dbgPrevio.Selected.Add('CREDID'#9'15'#9'Número~crédito'#9#9);
         dbgPrevio.Selected.Add('CREFPAG'#9'10'#9'Fecha~de pago'#9#9);
         dbgPrevio.Selected.Add('CREDOCPAG'#9'10'#9'Documento~de pago'#9#9);
         dbgPrevio.Selected.Add('EXT'#9'05'#9'Extor.'#9#9);
         dbgPrevio.Selected.Add('CREMTOCOB'#9'14'#9'Monto~cobrado'#9#9);
         dbgPrevio.Selected.Add('DIAS_ATRAZO'#9'5'#9'Días~Atraso'#9#9);
         dbgPrevio.ApplySelected;
         TNumericField(DM1.cdsFPago.FieldByName('CREMTOCOB')).DisplayFormat := '##,###,##0.00';
         dbgPrevio.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xtotal, ffNumber, 15, 2);
         BitPrint.Enabled := True;
         btnaexcel.Enabled := True;
        //No distribucion
      End;
    //Fin Detalle
   End
   Else
   Begin
      xtipaso := '';
      If rgtipaso.ItemIndex = 0 Then
         xtipaso := ' AND D.ASOTIPID = ''DO'''
      Else
         If rgtipaso.ItemIndex = 1 Then
            xtipaso := ' AND D.ASOTIPID = ''CE'''
         Else
            If rgtipaso.ItemIndex = 2 Then xtipaso := ' AND D.ASOTIPID = ''CO''';
      xSQL := 'SELECT F.ASOTIPID, A.TIPCREID,NVL(D.TIPCREDES,''POR IDENTIFICAR'') TIPCREDES,A.UPROID, '
            + '    NVL(B.UPRONOM,''POR IDENTIFICAR'') UPRONOM, A.UPAGOID,A.USEID,'
            + '    NVL(C.USENOM,''POR IDENTIFICAR'')||'' (''||A.UPROID||''-''||A.UPAGOID||''-''||A.USEID||'' )'' USENOM,'
            + '    A.CREFPAG, A.CREDOCPAG, SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,MAX(CASE WHEN A.CREESTID=''04'' Then ''EXTOR'' END) EXT,SUM(NVL(A.CREAMORT,0)) CREAMORT, '
            + '    SUM(NVL(A.CREINTERES,0)) CREINTERES,SUM(NVL(A.CREFLAT,0)) CREFLAT, SUM(NVL(A.MONCOBDESGRAV,0)) MONCOBDESGRAV, SUM(NVL(A.CREMTOEXC,0)) CREMTOEXC,'
            + '    COUNT(*) MOVIM'
            + ' FROM CRE310 A, APO102 B, APO101 C, CRE110 D, APO201 E, CRE301 F '
            + ' WHERE A.UPROID = B.UPROID(+) AND A.UPROID = C.UPROID(+) AND A.UPAGOID = C.UPAGOID(+) '
            + '   AND A.USEID = C.USEID(+) AND A.TIPCREID = D.TIPCREID(+) '
            + '   AND A.CREFPAG BETWEEN To_Date(' + QuotedStr(DateToStr(DtpFecIni.Date)) + ',''dd/mm/yyyy'') '
            + '   AND To_Date(' + QuotedStr(DateToStr(DtpFecFin.Date)) + ',''dd/mm/yyyy'') '
            + xWhere1
            + '   AND A.FORPAGID = ' + QuotedStr(Trim(DBLCTipCob.Text))
            + '   AND A.ASOID = E.ASOID '
            + xtipaso
            + '   AND A.ASOID = F.ASOID AND A.CREDID = F.CREDID '
            + ' GROUP BY F.ASOTIPID, A.TIPCREID,D.TIPCREDES,A.UPROID,B.UPRONOM,A.UPAGOID,A.USEID,C.USENOM, '
            + '          A.CREFPAG,A.CREDOCPAG'
            + ' ORDER BY F.ASOTIPID, A.UPROID,A.TIPCREID,A.CREFPAG,A.CREDOCPAG';
      DM1.cdsCambios.Close;
      DM1.cdsCambios.DataRequest(xSQL);
      DM1.cdsCambios.Open;
      Screen.Cursor := crDefault;
      dbgPrevio.DataSource := DM1.dsCambios;
      If DM1.cdsCambios.RecordCount = 0 Then
      Begin
         MessageDlg(' No Existe Información Para Este Rango ó Esa Forma De Pago ', mtError, [mbOk], 0);
         Exit;
      End;
      dbgPrevio.Selected.Clear;
      dbgPrevio.Selected.Add('ASOTIPID'#9'2'#9'Tipo~Asociado'#9#9);
      dbgPrevio.Selected.Add('TIPCREID'#9'2'#9'Cód.Tip.~Crédito'#9#9);
      dbgPrevio.Selected.Add('TIPCREDES'#9'15'#9'Des.Tip.~Crédito'#9#9);
      dbgPrevio.Selected.Add('UPROID'#9'3'#9'Unidad~proceso'#9#9);
      dbgPrevio.Selected.Add('UPRONOM'#9'17'#9'Descripción~Unidad/Proceso'#9#9);
      dbgPrevio.Selected.Add('UPAGOID'#9'2'#9'Unidad~de pago'#9#9);
      dbgPrevio.Selected.Add('USEID'#9'2'#9'Unidad de~gestión'#9#9);
      dbgPrevio.Selected.Add('USENOM'#9'17'#9'Descripción~Unidad de Gestión'#9#9);
      dbgPrevio.Selected.Add('CREFPAG'#9'10'#9'Fecha~de pago'#9#9);
      dbgPrevio.Selected.Add('CREDOCPAG'#9'10'#9'Documento~de pago'#9#9);
      dbgPrevio.Selected.Add('EXT'#9'05'#9'Extor.'#9#9);
      dbgPrevio.Selected.Add('CREMTOCOB'#9'10'#9'Monto~cobrado'#9#9);
      dbgPrevio.Selected.Add('CREAMORT'#9'10'#9'Amortización'#9#9);
      dbgPrevio.Selected.Add('CREINTERES'#9'10'#9'Interes'#9#9);
      dbgPrevio.Selected.Add('CREFLAT'#9'10'#9'Flat'#9#9);
      dbgPrevio.Selected.Add('MONCOBDESGRAV'#9'10'#9'Desgravam.'#9#9);
      dbgPrevio.Selected.Add('CREMTOEXC'#9'10'#9'Exceso'#9#9);
      dbgPrevio.Selected.Add('MOVIM'#9'2'#9'Movimiento'#9#9);
      dbgPrevio.ApplySelected;
      TNumericField(DM1.cdsCambios.FieldByName('CREMTOCOB')).DisplayFormat := '##,##0.00';
      TNumericField(DM1.cdsCambios.FieldByName('CREAMORT')).DisplayFormat := '##,##0.00';
      TNumericField(DM1.cdsCambios.FieldByName('CREINTERES')).DisplayFormat := '##,##0.00';
      TNumericField(DM1.cdsCambios.FieldByName('CREFLAT')).DisplayFormat := '##,##0.00';
      TNumericField(DM1.cdsCambios.FieldByName('MONCOBDESGRAV')).DisplayFormat := '##,##0.00';
      TNumericField(DM1.cdsCambios.FieldByName('CREMTOEXC')).DisplayFormat := '##,##0.00';
      TNumericField(DM1.cdsCambios.FieldByName('MOVIM')).DisplayFormat := '##';
      BitPrint.Enabled := True;
      btnaexcel.Enabled := True;
   End;
   dbgPrevio.SetFocus;
   Screen.Cursor := crDefault;
End;


Procedure TfResFPago.btnaexcelClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin

  //control si el cds no esta activo
  Try
    Dm1.cdsFPago.First;
  EXCEPT
    ShowMessage('No existe información para esta opción');
    Exit;
  END;

   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='RES_COB_PAGO_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   xArchivo:=xArchivo;

   if FileExists(xArchivo+'.slk') then
      DeleteFile(xArchivo+'.slk');
   DM1.ExportaGridExcel(dbgPrevio,xArchivo);
End;

Procedure TfResFPago.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
End;

Procedure TfResFPago.limpia;
Begin
   If not chkExtFSC.Checked Then  DBLCTipCob.Enabled := True;
   If DM1.cdsFPago.Active = True Then DM1.cdsFPago.Close;
   If DM1.cdsCambios.Active = True Then DM1.cdsCambios.Close;
End;

Procedure TfResFPago.DtpFecIniChange(Sender: TObject);
Begin
   limpia;
End;

Procedure TfResFPago.DtpFecFinChange(Sender: TObject);
Begin
   limpia;
End;

Procedure TfResFPago.rgtipasoClick(Sender: TObject);
Begin
   limpia;
End;


procedure TfResFPago.inicializa;
Var xSql:String;
begin
  xSql := 'SELECT '' '' ASOTIPID, '' '' CREFPAG, '' '' ASOTIPDES, '' '' USEID, '' '' ASOCODMOD, '' '' ASOAPENOM, '' '' CREDOCPAG, '' '' CREDID,'
  +' 0.00 CREMTOCOB FROM dual';
  DM1.cdsFPago.Close;
  DM1.cdsFPago.DataRequest(xSql);
  DM1.cdsFPago.Open;
  dbgPrevio.DataSource := DM1.dsFPago;
  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9#9);
  dbgPrevio.Selected.Add('ASOTIPDES'#9'10'#9'Descripción~Tipo asociado'#9#9);
  dbgPrevio.Selected.Add('USEID'#9'2'#9'Código~Ugel'#9#9);
  dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbgPrevio.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y~Nombres'#9#9);
  dbgPrevio.Selected.Add('CREDID'#9'15'#9'Número~crédito'#9#9);
  dbgPrevio.Selected.Add('CREFPAG'#9'10'#9'Fecha~de pago'#9#9);
  dbgPrevio.Selected.Add('CREDOCPAG'#9'10'#9'Documento~de pago'#9#9);
  dbgPrevio.Selected.Add('CREMTOCOB'#9'13'#9'Monto~cobrado'#9#9);
  dbgPrevio.ApplySelected;
  TNumericField(DM1.cdsFPago.FieldByName('CREMTOCOB')).DisplayFormat := '##,###,##0.00';
  dbgPrevio.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(0.00, ffNumber, 15, 2);
end;

// Proceso que calcula total de asociados y total de creditos
procedure TfResFPago.ppGroupFooterBand1AfterGenerate(Sender: TObject);
Var xtotal:Double;
    xasoid, xcredid:String;
begin
  cdsClone.IndexFieldNames := 'ASOID';
  cdsClone.Filter := 'CREFPAG = '+QuotedStr(ppDBText6.Text);
  cdsClone.Filtered := True;
  cdsClone.First;
  xasoid := cdsClone.FieldByName('ASOID').AsString;
  xtotal := 1;
  cdsClone.Next;
  While Not cdsClone.Eof Do
  Begin
    If xasoid <> cdsClone.FieldByName('ASOID').AsString Then
    Begin
        xasoid := cdsClone.FieldByName('ASOID').AsString;
        xtotal := xtotal + 1;
    End;
    cdsClone.Next;
  End;
  DM1.cdsRec.IndexFieldNames := '';
  cdsClone.Filter := '';
  cdsClone.Filtered := False;
  ppltotasodia2.Caption :=  FloatToStrF(xtotal,ffNumber,10,0);
  cdsClone.IndexFieldNames := 'ASOID;CREDID';
  cdsClone.Filter := 'CREFPAG = '+QuotedStr(ppDBText6.Text);
  cdsClone.Filtered := True;
  cdsClone.First;
  xasoid := cdsClone.FieldByName('ASOID').AsString;
  xcredid := cdsClone.FieldByName('CREDID').AsString;
  xtotal := 1;
  cdsClone.Next;
  While Not cdsClone.Eof Do
  Begin
    If xasoid+xcredid <> cdsClone.FieldByName('ASOID').AsString+cdsClone.FieldByName('CREDID').AsString Then
    Begin
        xasoid := cdsClone.FieldByName('ASOID').AsString;
        xcredid := cdsClone.FieldByName('CREDID').AsString;
        xtotal := xtotal + 1;
    End;
    cdsClone.Next;
  End;
  DM1.cdsRec.IndexFieldNames := '';
  cdsClone.Filter := '';
  cdsClone.Filtered := False;
  ppltotcredia2.Caption :=  FloatToStrF(xtotal,ffNumber,10,0);
end;

// Proceso que calcula total de asociados y total de creditos
procedure TfResFPago.ppSummaryBnd2AfterGenerate(Sender: TObject);
Var xtotal:Double;
    xasoid, xcredid:String;
begin
  cdsClone.IndexFieldNames := 'ASOID';
  cdsClone.First;
  xasoid := cdsClone.FieldByName('ASOID').AsString;
  xtotal := 1;
  cdsClone.Next;
  While Not cdsClone.Eof Do
  Begin
    If xasoid <> cdsClone.FieldByName('ASOID').AsString Then
    Begin
        xasoid := cdsClone.FieldByName('ASOID').AsString;
        xtotal := xtotal + 1;
    End;
    cdsClone.Next;
  End;
  DM1.cdsRec.IndexFieldNames := '';
  ppltotaso2.Caption :=  FloatToStrF(xtotal,ffNumber,10,0);
  cdsClone.IndexFieldNames := 'ASOID;CREDID';
  cdsClone.First;
  xasoid := cdsClone.FieldByName('ASOID').AsString;
  xcredid := cdsClone.FieldByName('CREDID').AsString;
  xtotal := 1;
  cdsClone.Next;
  While Not cdsClone.Eof Do
  Begin
    If xasoid+xcredid <> cdsClone.FieldByName('ASOID').AsString+cdsClone.FieldByName('CREDID').AsString Then
    Begin
        xasoid := cdsClone.FieldByName('ASOID').AsString;
        xcredid := cdsClone.FieldByName('CREDID').AsString;
        xtotal := xtotal + 1;
    End;
    cdsClone.Next;
  End;
  DM1.cdsRec.IndexFieldNames := '';
  ppltotcre2.Caption :=  FloatToStrF(xtotal,ffNumber,10,0);
end;

procedure TfResFPago.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsFPago.IndexFieldNames := '';
   DM1.cdsFPago.Close;
   DM1.cdsFormaPago.Close;
   DM1.cdsCambios.Close;
end;

procedure TfResFPago.FormCreate(Sender: TObject);
begin
   ppD1.IniStorageName := '.\rbuilder.ini';
end;

procedure TfResFPago.chkFSCClick(Sender: TObject);
begin
   limpia;
   If (Not ChkDetalle.Checked)  AND (chkFSC.Checked) Then
   Begin
      MessageDlg(' Debe Seleccionar EL CHECK DETALLADO, Para Utilizar Esta Opción!!!', mtError, [mbOk], 0);
      chkFSC.Checked := False;
      Exit;
   End;

   If  (chkDist.Checked) AND (chkFSC.Checked) Then
   Begin
      MessageDlg(' No Debe Seleccionar EL CHECK Amo-Int-Gas, Para Utilizar Esta Opción!!!', mtError, [mbOk], 0);
      chkFSC.Checked := False;
      Exit;
   End;

   If  (chkExtFSC.Checked) AND (chkFSC.Checked) Then
   Begin
      MessageDlg(' No Debe Seleccionar EL CHECK Ext. FSC, Para Utilizar Esta Opción!!!', mtError, [mbOk], 0);
      chkFSC.Checked := False;
      Exit;
   End;
end;

procedure TfResFPago.chkOpeRefClick(Sender: TObject);
begin
    limpia;

    If chkOpeRef.Checked Then
    Begin
        chkDetalle.Checked:= True;
        chkDist.Checked:= True;
        chkFSC.Checked:= False;
        chkExtFSC.Checked:= False;
        chkDetalle.Enabled:= False;
        chkDist.Enabled:= False;
        chkFSC.Enabled:= False;
        chkExtFSC.Enabled:= False;
        rgtipaso.ItemIndex:= 3;
        rgtipaso.Enabled:= False;
        DBLCTipCob.text:= '';
        EdtForPago.Text:= '';
        DBLCTipCob.Enabled:= False;
    End
    Else
    Begin
        chkDetalle.Checked:= False;
        chkDist.Checked:= False;
        chkFSC.Checked:= False;
        chkExtFSC.Checked:= False;
        chkDetalle.Enabled:= True;
        chkDist.Enabled:= True;
        chkFSC.Enabled:= True;
        chkExtFSC.Enabled:= True;
        rgtipaso.Enabled:= True;
        DBLCTipCob.Enabled:= True;
    End;

end;

procedure TfResFPago.chkExtFSCClick(Sender: TObject);
begin
    limpia;

    If chkExtFSC.Checked Then
     Begin
        DBLCTipCob.Enabled := False;
        rgtipaso.ItemIndex := 3;
        DBLCTipCob.Text    := '';
        EdtForPago.Text    := '';
     End
    Else
     Begin
        DBLCTipCob.Enabled := True;
         rgtipaso.ItemIndex := 0;
     End;

    If (Not ChkDetalle.Checked) AND (chkExtFSC.Checked) Then
    Begin
        MessageDlg(' Debe Seleccionar EL CHECK DETALLADO, Para Utilizar Esta Opción!!!', mtError, [mbOk], 0);
        chkExtFSC.Checked := False;
        DBLCTipCob.Enabled:= True;
        Exit;
    End;

    If  (chkFSC.Checked) AND (chkExtFSC.Checked) Then
    Begin
        MessageDlg(' No Debe Seleccionar EL CHECK Incluir Pagos al FSC, Para Utilizar Esta Opción!!!', mtError, [mbOk], 0);
        chkExtFSC.Checked := False;
        DBLCTipCob.Enabled:= True;
        Exit;
    End;

end;

procedure TfResFPago.ppGroupFooterBand11AfterGenerate(Sender: TObject);
Var xtotal:Double;
    xasoid, xcredid:String;
begin
  cdsClone.IndexFieldNames := 'ASOID';
  cdsClone.Filter := 'CREFPAG = '+QuotedStr(ppDBText6.Text);
  cdsClone.Filtered := True;
  cdsClone.First;
  xasoid := cdsClone.FieldByName('ASOID').AsString;
  xtotal := 1;
  cdsClone.Next;
  While Not cdsClone.Eof Do
  Begin
    If xasoid <> cdsClone.FieldByName('ASOID').AsString Then
    Begin
        xasoid := cdsClone.FieldByName('ASOID').AsString;
        xtotal := xtotal + 1;
    End;
    cdsClone.Next;
  End;
  DM1.cdsRec.IndexFieldNames := '';
  cdsClone.Filter := '';
  cdsClone.Filtered := False;
  ppltotasodia.Caption  :=  FloatToStrF(xtotal,ffNumber,10,0);
  cdsClone.IndexFieldNames := 'ASOID;CREDID';
  cdsClone.Filter := 'CREFPAG = '+QuotedStr(ppDBText6.Text);
  cdsClone.Filtered := True;
  cdsClone.First;
  xasoid := cdsClone.FieldByName('ASOID').AsString;
  xcredid := cdsClone.FieldByName('CREDID').AsString;
  xtotal := 1;
  cdsClone.Next;
  While Not cdsClone.Eof Do
  Begin
    If xasoid+xcredid <> cdsClone.FieldByName('ASOID').AsString+cdsClone.FieldByName('CREDID').AsString Then
    Begin
        xasoid := cdsClone.FieldByName('ASOID').AsString;
        xcredid := cdsClone.FieldByName('CREDID').AsString;
        xtotal := xtotal + 1;
    End;
    cdsClone.Next;
  End;
  DM1.cdsRec.IndexFieldNames := '';
  cdsClone.Filter := '';
  cdsClone.Filtered := False;
  ppltotcredia.Caption :=  FloatToStrF(xtotal,ffNumber,10,0);
end;

procedure TfResFPago.ppSummaryBand2AfterGenerate(Sender: TObject);
Var xtotal:Double;
    xasoid, xcredid:String;
begin
  cdsClone.IndexFieldNames := 'ASOID';
  cdsClone.First;
  xasoid := cdsClone.FieldByName('ASOID').AsString;
  xtotal := 1;
  cdsClone.Next;
  While Not cdsClone.Eof Do
  Begin
    If xasoid <> cdsClone.FieldByName('ASOID').AsString Then
    Begin
        xasoid := cdsClone.FieldByName('ASOID').AsString;
        xtotal := xtotal + 1;
    End;
    cdsClone.Next;
  End;
  DM1.cdsRec.IndexFieldNames := '';
  ppltotaso.Caption :=  FloatToStrF(xtotal,ffNumber,10,0);
  cdsClone.IndexFieldNames := 'ASOID;CREDID';
  cdsClone.First;
  xasoid := cdsClone.FieldByName('ASOID').AsString;
  xcredid := cdsClone.FieldByName('CREDID').AsString;
  xtotal := 1;
  cdsClone.Next;
  While Not cdsClone.Eof Do
  Begin
    If xasoid+xcredid <> cdsClone.FieldByName('ASOID').AsString+cdsClone.FieldByName('CREDID').AsString Then
    Begin
        xasoid := cdsClone.FieldByName('ASOID').AsString;
        xcredid := cdsClone.FieldByName('CREDID').AsString;
        xtotal := xtotal + 1;
    End;
    cdsClone.Next;
  End;
  DM1.cdsRec.IndexFieldNames := '';
  ppltotcre.Caption :=  FloatToStrF(xtotal,ffNumber,10,0);
end;

End.
//Final HPC_201812_COB
