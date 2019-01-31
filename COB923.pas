// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB923
// Formulario           : FRepDev
// Fecha de Creación    :
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Reporte de Devoluciones por Cobranzas
// Actualizaciones
//                      : HPP_200915_COB realizado por IREVILLA - SAR 2009-0450 - DAD IR2009-0103 - se añade columna NUMERO, para que coincida con estructura modificada para devolucion por usuario
//                      : HPP_200942_COB - Memos 633/675-2009-DM-COB - SARs 2009-556/579 - DADs-JD-2009-114/119
//                      : HPP_200921_COB - JDCRUZ - SAR2009-0579
//                      : HPP_201007_COB - JCARBONEL se desigan la ubicacion de los temporales de Repor builder
//                      : HPC_201206_COB - RMEDINA se adiciona a la sumatoria de devoluciones el campo de cuotas devuletas
// DPP_201205_COB       : Se realiza el pase a producción apartir del pase HPC_201206_COB
//  HPC_201704_COB      : Se adiciona columnas y las devoluciones al FSC, se modifica reportes
// HPC_201707_COB       : Se adiciona columnas de origen y motivo de devoluciones de pago de créditos
// HPC_201724_COB       : En Reporte Devoluciones Detallado no debe incluir las Devoluciones anuladas
// HPC_201735_COB       : Mejoras en el proceso de Aprobación de Devoluciones en efectivo

Unit COB923;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ComCtrls, ppCtrls, ppBands, ppClass,
   ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
   ppVar, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, Mask,
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC, se modifica reporte
   wwdblook, Wwdbdlg, DBGrids, db, ppDBBDE, ppParameter, ppEndUsr, jpeg;
//Final HPC_201704_COB

Type
   TfRepDev = Class(TForm)
      GroupBox1: TGroupBox;
      Label2: TLabel;
      Label1: TLabel;
      rgseleccion: TRadioGroup;
      BitPrint: TBitBtn;
      BitSalir: TBitBtn;
      btnprocesar: TBitBtn;
      dbgprevio: TwwDBGrid;
      Label3: TLabel;
      Label4: TLabel;
      dbdtpinicio: TwwDBDateTimePicker;
      dbdtpfinal: TwwDBDateTimePicker;
      gbseleccion: TGroupBox;
      dblcdseleccion: TwwDBLookupComboDlg;
      pnldescripcion: TPanel;
      medescsel: TMaskEdit;
      dtgData: TDBGrid;
      btnaexcel: TBitBtn;
      ppbdereporte: TppBDEPipeline;
      pprdevxusu: TppReport;
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC, se modifica reporte
      pprresdev: TppReport;
      pprdevxdep: TppReport;
      pprdevxunipro: TppReport;
      pprresdevxmeses: TppReport;
      ppParameterList2: TppParameterList;
      ppHeaderBand7: TppHeaderBand;
      ppShape35: TppShape;
      ppShape36: TppShape;
      ppLabel84: TppLabel;
      ppLabel86: TppLabel;
      ppLabel89: TppLabel;
      ppShape38: TppShape;
      ppLabel90: TppLabel;
      ppLabel91: TppLabel;
      ppLabel92: TppLabel;
      ppLabel93: TppLabel;
      ppLabel94: TppLabel;
      ppLabel95: TppLabel;
      ppLabel96: TppLabel;
      ppSystemVariable16: TppSystemVariable;
      ppSystemVariable17: TppSystemVariable;
      ppSystemVariable18: TppSystemVariable;
      ppLabel97: TppLabel;
      pplfecha06: TppLabel;
      ppLabel99: TppLabel;
      ppShape39: TppShape;
      ppLabel100: TppLabel;
      ppShape40: TppShape;
      ppLabel101: TppLabel;
      ppDetailBand7: TppDetailBand;
      ppDBText38: TppDBText;
      ppDBText39: TppDBText;
      ppDBText40: TppDBText;
      ppDBText41: TppDBText;
      ppDBText42: TppDBText;
      ppDBText43: TppDBText;
      ppSummaryBand6: TppSummaryBand;
      ppLine11: TppLine;
      ppDBCalc13: TppDBCalc;
      ppLine12: TppLine;
      ppDBCalc14: TppDBCalc;
      ppLabel102: TppLabel;
      pplimpresopor06: TppLabel;
      ppParameterList3: TppParameterList;
      pprdevxuniproxdep: TppReport;
      ppLabel104: TppLabel;
      ppLabel105: TppLabel;
      ppParameterList4: TppParameterList;
      pprdev: TppReport;
      ppHeaderBand8: TppHeaderBand;
      ppDetailBand8: TppDetailBand;
      ppShape52: TppShape;
      ppShape53: TppShape;
      ppShape54: TppShape;
      ppLabel132: TppLabel;
      ppShape55: TppShape;
      ppLabel134: TppLabel;
      ppShape56: TppShape;
      ppLabel135: TppLabel;
      ppShape57: TppShape;
      ppLabel136: TppLabel;
      ppShape58: TppShape;
      ppLabel137: TppLabel;
      ppShape59: TppShape;
      ppLabel138: TppLabel;
      ppLabel139: TppLabel;
      ppLabel140: TppLabel;
      ppLabel141: TppLabel;
      ppLabel142: TppLabel;
      ppLabel143: TppLabel;
      ppSystemVariable22: TppSystemVariable;
      ppSystemVariable23: TppSystemVariable;
      ppSystemVariable24: TppSystemVariable;
      ppLabel144: TppLabel;
      ppLabel145: TppLabel;
      ppLabel146: TppLabel;
      ppLabel147: TppLabel;
      ppLabel148: TppLabel;
      ppLabel149: TppLabel;
      ppShape60: TppShape;
      ppLabel150: TppLabel;
      ppLabel151: TppLabel;
      ppLabel153: TppLabel;
      ppLabel154: TppLabel;
      ppShape61: TppShape;
      ppLabel155: TppLabel;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText26: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppDBText35: TppDBText;
      ppDBText44: TppDBText;
      ppDBText45: TppDBText;
      ppSummaryBand8: TppSummaryBand;
      ppLabel152: TppLabel;
      ppLine17: TppLine;
      ppLabel156: TppLabel;
      ppLine18: TppLine;
      ppLabel157: TppLabel;
      ppLabel158: TppLabel;
      ppLabel159: TppLabel;
      ppShape62: TppShape;
      ppLabel160: TppLabel;
      ppShape63: TppShape;
      ppShape64: TppShape;
      ppLabel161: TppLabel;
      ppLabel162: TppLabel;
      pplcandevbco_1: TppLabel;
      pplcandevefe_1: TppLabel;
      pplcandevapl_1: TppLabel;
      ppLabel166: TppLabel;
      pplmondevbco_1: TppLabel;
      ppLine19: TppLine;
      pplcandev_1: TppLabel;
      pplmondev_1: TppLabel;
      pplmondevefe_1: TppLabel;
      pplmondevapl_1: TppLabel;
      ppDBCalc2: TppDBCalc;
      ppDesigner1: TppDesigner;
      ppLabel20: TppLabel;
      ppShape11: TppShape;
      ppDBText46: TppDBText;
      ppDBCalc18: TppDBCalc;
      rgTipoReporte: TRadioGroup;
      ppShape15: TppShape;
      ppLabel27: TppLabel;
      ppDBText53: TppDBText;
      ppDBCalc25: TppDBCalc;
      pprDevDetallado: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape10: TppShape;
    ppShape8: TppShape;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppltitulo01: TppLabel;
    pplfecha01: TppLabel;
    ppLabel16: TppLabel;
    ppShape9: TppShape;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppImage1: TppImage;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    pplimpresopor01: TppLabel;
    ppLine1: TppLine;
    ppLabel18: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppLabel116: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppShape44: TppShape;
    ppLabel123: TppLabel;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    pplcandevbco: TppLabel;
    pplcandevefe: TppLabel;
    pplcandevapl: TppLabel;
    ppLabel126: TppLabel;
    pplmondevbco: TppLabel;
    ppLine15: TppLine;
    pplcandev: TppLabel;
    pplmondev: TppLabel;
    pplmondevefe: TppLabel;
    pplmondevapl: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel171: TppLabel;
    ppDBText54: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel172: TppLabel;
    ppDBText55: TppDBText;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppLine23: TppLine;
    ppParameterList5: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppShape22: TppShape;
    ppShape21: TppShape;
    ppShape16: TppShape;
    ppLabel40: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape23: TppShape;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel45: TppLabel;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppShape27: TppShape;
    ppLabel51: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel59: TppLabel;
    pplfecha03: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppImage2: TppImage;
    ppLabel52: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText27: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel49: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    pplimpresopor03: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel8: TppLabel;
    ppDBText56: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel50: TppLabel;
    ppDBText57: TppDBText;
    ppLine24: TppLine;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppParameterList6: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppImage3: TppImage;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppShape37: TppShape;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel78: TppLabel;
    pplfecha04: TppLabel;
    ppShape12: TppShape;
    ppLabel24: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText50: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine8: TppLine;
    ppDBCalc9: TppDBCalc;
    ppLine7: TppLine;
    ppDBCalc10: TppDBCalc;
    ppLabel38: TppLabel;
    pplimpresopor04: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel69: TppLabel;
    ppDBText58: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel173: TppLabel;
    ppDBText59: TppDBText;
    ppLine25: TppLine;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppLine26: TppLine;
    ppHeaderBand5: TppHeaderBand;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppLabel60: TppLabel;
    ppLabel63: TppLabel;
    ppShape32: TppShape;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel83: TppLabel;
    pplfecha05: TppLabel;
    ppLabel65: TppLabel;
    ppShape33: TppShape;
    ppLabel87: TppLabel;
    ppShape34: TppShape;
    ppLabel88: TppLabel;
    ppShape13: TppShape;
    ppLabel25: TppLabel;
    ppImage4: TppImage;
    ppLabel66: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText51: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine9: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLine10: TppLine;
    ppDBCalc12: TppDBCalc;
    ppLabel85: TppLabel;
    pplimpresopor05: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText60: TppDBText;
    ppLabel64: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel174: TppLabel;
    ppDBText61: TppDBText;
    ppLine27: TppLine;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppLine28: TppLine;
    ppHeaderBand6: TppHeaderBand;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppLabel98: TppLabel;
    ppLabel103: TppLabel;
    ppShape43: TppShape;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppSystemVariable21: TppSystemVariable;
    ppLabel115: TppLabel;
    pplfecha07: TppLabel;
    ppLabel107: TppLabel;
    ppShape14: TppShape;
    ppLabel26: TppLabel;
    ppImage5: TppImage;
    ppLabel108: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText52: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLine13: TppLine;
    ppDBCalc15: TppDBCalc;
    ppLine14: TppLine;
    ppDBCalc16: TppDBCalc;
    ppLabel117: TppLabel;
    pplimpresopor07: TppLabel;
    ppDBCalc24: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel106: TppLabel;
    ppDBText62: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppParameterList7: TppParameterList;
    ppHeaderBand9: TppHeaderBand;
    ppLine3: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine4: TppLine;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel34: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel165: TppLabel;
    ppLabel35: TppLabel;
    ppLabel167: TppLabel;
    ppLblTit01: TppLabel;
    ppLblTit02: TppLabel;
    ppLabel32: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppImage6: TppImage;
    ppLabel33: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText63: TppDBText;
    ppDBText123: TppDBText;
    ppDBText122: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText73: TppDBText;
    ppDBText70: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppSummaryBand10: TppSummaryBand;
    ppDBCalc125: TppDBCalc;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine16: TppLine;
    ppLine20: TppLine;
    ppLabel39: TppLabel;
    ppLabel120: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppGroup19: TppGroup;
    ppGroupHeaderBand19: TppGroupHeaderBand;
    ppDBText121: TppDBText;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppGroupFooterBand19: TppGroupFooterBand;
    ppDBCalc49: TppDBCalc;
    ppLabel184: TppLabel;
    ppLabel195: TppLabel;
    ppLine30: TppLine;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppDBCalc50: TppDBCalc;
    ppDBText71: TppDBText;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel121: TppLabel;
    ppDBText66: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel181: TppLabel;
    ppDBText67: TppDBText;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppDBText72: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel122: TppLabel;
    ppLabel127: TppLabel;
    ppDBText68: TppDBText;
    ppDBText117: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppDBCalc29: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppLine21: TppLine;
    ppDBText69: TppDBText;
    ppLine22: TppLine;
    ppGroup20: TppGroup;
    ppGroupHeaderBand20: TppGroupHeaderBand;
    ppGroupFooterBand20: TppGroupFooterBand;
    ppLabel128: TppLabel;
//Final HPC_201704_COB
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnprocesarClick(Sender: TObject);
      Procedure rgseleccionClick(Sender: TObject);
      Procedure btnaexcelClick(Sender: TObject);
      Procedure dblcdseleccionExit(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormCreate(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fRepDev: TfRepDev;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TfRepDev.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfRepDev.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
End;

Procedure TfRepDev.btnprocesarClick(Sender: TObject);
Var
   xSql, xseleccion: String;
   xcantidad, xcanefe, xcanbco, xcanapl: Integer;
   xseleccion2: String;
   xmonto, xmonefe, xmonbco, xmonapl, xmondev: Double;
   xmonto_dev, xmonefe_dev, xmonbco_dev, xmonapl_dev,
      xmonto_apl, xmonefe_apl, xmonbco_apl, xmonapl_apl,
      xmontodev, xmontoapl: double;

// Inicio HPC_201724_COB       : En Reporte Devoluciones Detallado no debe incluir las Devoluciones anuladas
   xSQL1, xSQL2 : String;
// Fin  HPC_201724_COB       : En Reporte Devoluciones Detallado no debe incluir las Devoluciones anuladas
Begin
   If Trim(dbdtpinicio.Text) = '' Then
   Begin
      MessageDlg('Ingrese la fecha inicial', mtInformation, [mbOk], 0);
      dbdtpinicio.SetFocus;
      Exit;
   End;
   If Trim(dbdtpfinal.Text) = '' Then
   Begin
      MessageDlg('Ingrese la fecha final', mtInformation, [mbOk], 0);
      dbdtpfinal.SetFocus;
      Exit;
   End;
   If rgseleccion.ItemIndex = -1 Then
   Begin
      MessageDlg('Seleccione la opción a imprimir', mtInformation, [mbOk], 0);
      rgseleccion.SetFocus;
      Exit;
   End;

   Screen.Cursor := crHourGlass;
   If rgseleccion.ItemIndex = 0 Then
   Begin
      If Trim(dblcdseleccion.Text) <> '' Then
         xseleccion := ' AND A.USUCRE = ' + QuotedStr(dblcdseleccion.Text)
      Else
         xseleccion := '';
      xseleccion2 := '';
      If rgTipoReporte.ItemIndex = 0 Then
         xseleccion2 := ' WHERE NVL(MONDEV,0)>0';
      If rgTipoReporte.ItemIndex = 1 Then
         xseleccion2 := ' WHERE NVL(MONAPL,0)>0';
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
//Inicio HPC_201707_COB
//Se adiciona columnas de origen y motivo de devoluciones de pago de créditos
      xSql := 'SELECT ROWNUM NUMERO, TIPO, USEID, ASOID, USENOM, CREDID, FECCRE, ASOCODMOD, ASOAPENOM, '
         + '       ASONUMDEV, TIPDESEABR, USUCRE, USUAPR, MONDEV, MONAPL,'
         + '       MOTDEV,MOTDEVOLUCION,ORIDEVOLUCION,REGPENDES,'
         + '      (SELECT FORPAGABR'
         + '         FROM CRE310  '
         + '        WHERE ASOID=A.ASOID and FREG=(SELECT max(freg) from CRE310 WHERE ASOID=A.ASOID and creestid not in (''13'',''04'',''99'')) '
         + '          AND CREESTID not in (''13'',''04'',''99'') AND ROWNUM=1 '
         + '     GROUP BY FORPAGABR,NROOPE,FOPERAC)FORPAGABR,'
         + '      (SELECT FOPERAC '
         + '         FROM CRE310  '
         + '        WHERE ASOID=A.ASOID and freg=(SELECT max(freg) from CRE310 WHERE ASOID=A.ASOID and creestid not in (''13'',''04'',''99'')) '
         + '          AND CREESTID not in (''13'',''04'',''99'') AND ROWNUM=1 '
         + '     GROUP BY NROOPE,FOPERAC) FOPERAC,'
         + '      (SELECT SUM(NVL(CREMTOCOB,0)) '
         + '         FROM CRE310  '
         + '        WHERE ASOID=A.ASOID AND freg=(SELECT MAX(freg) FROM CRE310 WHERE ASOID=A.ASOID and CREESTID not in (''13'',''04'',''99'')) '
         + '          AND CREESTID not in (''13'',''04'',''99'')  AND ROWNUM=1 '
         + '     GROUP BY NROOPE,FOPERAC)CREMTOCOB '
         + '  FROM (SELECT TIPO, USEID, ASOID, USENOM, CREDID, FECCRE, ASOCODMOD, ASOAPENOM, ASONUMDEV,     '
         + '                TIPDESEABR, USUCRE, USUAPR, SUM(NVL(IMPDEV, 0)) MONDEV,            '
         + '             SUM(NVL(IMPAPL, 0)) MONAPL,MOTDEV,MOTDEVOLUCION,ORIDEVOLUCION,REGPENDES      '
         + '           FROM (SELECT ''CREDITOS'' tipo,                   '
         + '                  D.USEID, A.ASOID,E.USENOM, A.FECCRE, A.CREDID, A.ASOCODMOD,      '
//Final HPC_201707_COB
//Final HPC_201704_COB
         + '                         A.ASOAPENOM,                                              '
         + '                         (SELECT ASONUMDEV                                         '
         + '                             FROM PRE_APR_DEV_DET                                  '
         + '                            WHERE ASOID = A.ASOID                                  '
         + '                              AND CORDEV = A.CORDEV                                '
         + '                            GROUP BY ASONUMDEV) ASONUMDEV,                         '
         + '                         CASE                                                      '
         + '                            WHEN C.TIPDESEABR IS NULL THEN                         '
         + '                             ''APLIC.''                                            '
         + '                            ELSE                                                   '
         + '                             C.TIPDESEABR                                          '
//Inicio HPC_201707_COB
//Se adiciona columnas de origen y motivo de devoluciones de pago de créditos
         + '                          END TIPDESEABR, A.USUCRE, A.USUAPR, A.IMPDEV, A.IMPAPL,A.MOTDEV,  '
         + '                          F.DESCRIPCION MOTDEVOLUCION,G.DESCRIPCION ORIDEVOLUCION,H.REGPENDES '
         + '                    FROM PRE_APR_DEV A, CRE104 C, APO201 D, APO101 E,COB_REF_DEVOLUCIONES F,COB_REF_DEVOLUCIONES G,APO105 H '
//Final HPC_201707_COB
         + '                   WHERE A.FECCRE >=  ' + QuotedStr(dbdtpinicio.Text)
         + '                     AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + xseleccion
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
         + '                     AND NVL(FLAAPR, ''X'') = ''S''                                '
         + '                     AND NVL(FLAANU, ''X'') <> ''S''                               '
         + '                     AND (NVL(DEVEFE,0) > 0  OR  NVL(APLEFE,0) > 0)                '
         + '                     AND A.FORPAGID = C.TIPDESEID(+)                               '
         + '                     AND A.FORPAGID IS NOT NULL                                    '
         + '                     AND A.ASOID = D.ASOID                                         '
         + '                     AND E.UPROID(+) = D.UPROID                                    '
         + '                     AND E.UPAGOID(+) = D.UPAGOID                                  '
         + '                     AND E.USEID(+) = D.USEID                                      '
//Inicio HPC_201707_COB
//Se adiciona columnas de origen y motivo de devoluciones de pago de créditos
         + '                     AND F.CODTIPREF(+)= ''MOT'' AND F.CODREF(+)= A.CODMOTDEV         '
         + '                     AND G.CODTIPREF(+)= ''ORI'' AND G.CODREF(+)= A.CODORIDEV         '
         + '                     AND H.REGPENID(+)=D.REGPENID                                  '
         + '                 UNION ALL                                                         '
         + '                 SELECT ''FSC'' tipo,                                              '
         + '                        D.USEID,A.ASOID,E.USENOM,A.FECCRE,                         '
//Final HPC_201707_COB
         + '                        (SELECT NUM_DEU                                            '
         + '                           FROM COB_SOLICITUD_DEV_EXC_FSC_DET                      '
         + '                          WHERE ASOID = A.ASOID                                    '
         + '                            AND ANODEV=A.ANODEV AND CORDEV = A.CORDEV              '
         + '                            GROUP BY NUM_DEU) CREDID,A.ASOCODMOD,                  '
         + '                         A.ASOAPENOM,                                              '
         + '                        (SELECT ASONUMDEV                                          '
         + '                           FROM COB_SOLICITUD_DEV_EXC_FSC_DET                      '
         + '                          WHERE ASOID = A.ASOID  AND ANODEV=A.ANODEV               '
         + '                            AND CORDEV = A.CORDEV                                  '
         + '                       GROUP BY ASONUMDEV) ASONUMDEV,                              '
         + '                     CASE                                                          '
         + '                       WHEN C.TIPDESEABR IS NULL THEN                              '
         + '                         ''APLIC.''                                                '
         + '                       ELSE C.TIPDESEABR                                           '
//Inicio HPC_201707_COB
//Se adiciona columnas de origen y motivo de devoluciones de pago de créditos
         + '                      END TIPDESEABR,A.USUCRE,A.USUAPR,A.IMPDEV,A.IMPAPL,A.MOTDEV,  '
         + '                          '' '' MOTDEVOLUCION, '' '' ORIDEVOLUCION,H.REGPENDES     '
         + '     FROM COB_SOLICITUD_DEV_EXC_FSC_CAB A, CRE104 C, APO201 D, APO101 E,APO105 H   '
//Final HPC_201707_COB
         + '                   WHERE A.FECCRE >=  ' + QuotedStr(dbdtpinicio.Text)
         + '                     AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + xseleccion
         + '                     AND NVL(FLAAPR, ''X'') = ''S''                                '
         + '                     AND NVL(FLAANU, ''X'') <> ''S''                               '
         + '                     AND (NVL(DEVEFE,0) > 0  OR  NVL(APLEFE,0) > 0)                '
         + '                     AND A.FORPAGID = C.TIPDESEID(+)                               '
         + '                     AND A.FORPAGID IS NOT NULL                                    '
         + '                     AND A.ASOID = D.ASOID                                         '
         + '                     AND E.UPROID(+) = D.UPROID                                    '
         + '                     AND E.UPAGOID(+) = D.UPAGOID                                  '
//Inicio HPC_201707_COB
//Se adiciona columnas de origen y motivo de devoluciones de pago de créditos
         + '                     AND E.USEID(+) = D.USEID                                      '
         + '                     AND H.REGPENID(+)=D.REGPENID)A                                '
//Final HPC_201704_COB
         + '          GROUP BY TIPO,USEID, ASOID, USENOM, CREDID, FECCRE, ASONUMDEV, ASOCODMOD,            '
         + '                   ASOAPENOM, TIPDESEABR, USUCRE, USUAPR,MOTDEV,MOTDEVOLUCION,ORIDEVOLUCION,REGPENDES'
         + '          ORDER BY TIPO,USEID, FECCRE, ASONUMDEV) A                                       '
//Final HPC_201707_COB
         + xseleccion2
   End;
   If rgseleccion.ItemIndex = 1 Then
   Begin
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      xSql := 'SELECT TIPO,0 NUMERO, USUCRE, '
         + '       SUM(CAN_EFE) CAN_EFE, SUM(MON_EFE_DEV) MON_EFE_DEV, SUM(MON_EFE_APL) MON_EFE_APL, '
         + '       SUM(CAN_BCO) CAN_BCO, SUM(MON_BCO_DEV) MON_BCO_DEV, SUM(MON_BCO_APL) MON_BCO_APL, '
         + '       SUM(CAN_APL) CAN_APL, SUM(MON_APL_DEV) MON_APL_DEV, SUM(MON_APL_APL) MON_APL_APL, '
         + '       SUM(CAN_EFE + CAN_BCO + CAN_APL) CAN_TOT, '
         + '       SUM(MON_EFE_DEV + MON_BCO_DEV + MON_APL_DEV) MON_TOT_DEV, '
         + '       SUM(MON_EFE_APL + MON_BCO_APL + MON_APL_APL) MON_TOT_APL '
         + '  FROM (SELECT ''CREDITOS'' TIPO, A.USUCRE,FORPAGID, '
//Final HPC_201704_COB
         + '                CASE WHEN FORPAGID = ''04'' THEN 1 ELSE 0 END CAN_EFE, '
         + '                CASE WHEN FORPAGID = ''04'' THEN NVL(A.IMPDEV,0) ELSE 0 END MON_EFE_DEV, '
         + '                CASE WHEN FORPAGID = ''04'' THEN NVL(A.IMPAPL,0) ELSE 0 END MON_EFE_APL, '
         + '                CASE WHEN FORPAGID IN (''05'',''06'') THEN 1 ELSE 0 END CAN_BCO, '
         + '                CASE WHEN FORPAGID IN (''05'',''06'') THEN NVL(A.IMPDEV,0) ELSE 0 END MON_BCO_DEV, '
         + '                CASE WHEN FORPAGID IN (''05'',''06'') THEN NVL(A.IMPAPL,0) ELSE 0 END MON_BCO_APL, '
         + '                CASE WHEN FORPAGID = ''99'' THEN 1 ELSE 0 END CAN_APL, '
         + '                CASE WHEN FORPAGID = ''99'' THEN NVL(A.IMPDEV,0) ELSE 0 END MON_APL_DEV, '
         + '                CASE WHEN FORPAGID = ''99'' THEN NVL(A.IMPAPL,0) ELSE 0 END MON_APL_APL '
         + '           FROM PRE_APR_DEV A '
         + '          WHERE A.FECCRE >=  ' + QuotedStr(dbdtpinicio.Text)
         + '            AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + '            AND NVL(FLAAPR, ''X'') = ''S'' '
         + '            AND NVL(FLAANU, ''X'') <> ''S'' '
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
         + '            AND A.FORPAGID IS NOT NULL '
         + ' UNION ALL                             '
         + '      SELECT ''FSC'' TIPO,A.USUCRE,FORPAGID, '
         + '                CASE WHEN FORPAGID = ''04'' THEN 1 ELSE 0 END CAN_EFE, '
         + '                CASE WHEN FORPAGID = ''04'' THEN NVL(A.IMPDEV,0) ELSE 0 END MON_EFE_DEV, '
         + '                CASE WHEN FORPAGID = ''04'' THEN NVL(A.IMPAPL,0) ELSE 0 END MON_EFE_APL, '
         + '                CASE WHEN FORPAGID IN (''05'',''06'') THEN 1 ELSE 0 END CAN_BCO, '
         + '                CASE WHEN FORPAGID IN (''05'',''06'') THEN NVL(A.IMPDEV,0) ELSE 0 END MON_BCO_DEV, '
         + '                CASE WHEN FORPAGID IN (''05'',''06'') THEN NVL(A.IMPAPL,0) ELSE 0 END MON_BCO_APL, '
         + '                CASE WHEN FORPAGID = ''99'' THEN 1 ELSE 0 END CAN_APL, '
         + '                CASE WHEN FORPAGID = ''99'' THEN NVL(A.IMPDEV,0) ELSE 0 END MON_APL_DEV, '
         + '                CASE WHEN FORPAGID = ''99'' THEN NVL(A.IMPAPL,0) ELSE 0 END MON_APL_APL '
         + '           FROM COB_SOLICITUD_DEV_EXC_FSC_CAB A '
         + '          WHERE A.FECCRE >=  ' + QuotedStr(dbdtpinicio.Text)
         + '            AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + '            AND NVL(FLAAPR, ''X'') = ''S'' '
         + '            AND NVL(FLAANU, ''X'') <> ''S'' '
         + '            AND A.FORPAGID IS NOT NULL  ) '
         + ' GROUP BY TIPO,USUCRE '
         + ' ORDER BY TIPO,USUCRE ';
//Final HPC_2017_O4_COB
   End;

   If rgseleccion.ItemIndex = 2 Then
   Begin
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      xSql := 'SELECT TIPO,0 NUMERO, DPTODES, SUM(NVL(CANTIDAD, 0)) CANTIDAD,'
         + '           SUM(NVL(IMPDEV, 0)) MONDEV, SUM(NVL(IMPAPL, 0)) MONAPL                 '
         + '      FROM (SELECT ''CREDITOS'' TIPO,                       '
         + '             E.DPTODES, 1 CANTIDAD, A.IMPDEV, A.IMPAPL                            '
         + '              FROM PRE_APR_DEV A, APO201 C, APO101 D, APO158 E                    '
         + '             WHERE A.FECCRE >= ' + QuotedStr(dbdtpinicio.Text)
         + '               AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + '               AND NVL(FLAAPR, ''X'') = ''S''                                     '
         + '               AND NVL(FLAANU, ''X'') <> ''S''                                    '
         + '               AND A.FORPAGID IS NOT NULL                                         '
         + '               AND A.ASOID = C.ASOID(+)                                           '
         + '               AND C.UPROID = D.UPROID(+)                                         '
         + '               AND C.UPAGOID = D.UPAGOID(+)                                       '
         + '               AND C.USEID = D.USEID(+)                                           '
         + '               AND D.DPTOID = E.DPTOID(+)                                         '
         + ' UNION ALL                                                                        '
         + '            SELECT ''FSC'' TIPO,                            '
         + '                    E.DPTODES, 1 CANTIDAD, A.IMPDEV, A.IMPAPL                     '
         + '              FROM COB_SOLICITUD_DEV_EXC_FSC_CAB A, APO201 C, APO101 D, APO158 E  '
         + '             WHERE A.FECCRE >= ' + QuotedStr(dbdtpinicio.Text)
         + '               AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + '               AND NVL(FLAAPR, ''X'') = ''S''                                     '
         + '               AND NVL(FLAANU, ''X'') <> ''S''                                    '
         + '               AND A.FORPAGID IS NOT NULL                                         '
         + '               AND A.ASOID = C.ASOID(+)                                           '
         + '               AND C.UPROID = D.UPROID(+)                                         '
         + '               AND C.UPAGOID = D.UPAGOID(+)                                       '
         + '               AND C.USEID = D.USEID(+)                                           '
         + '               AND D.DPTOID = E.DPTOID(+)  )                                      '
         + '     GROUP BY TIPO,DPTODES                                                        '
         + '     ORDER BY TIPO,DPTODES ';
//Final HPC_201704_COB
   End;
   If rgseleccion.ItemIndex = 3 Then
   Begin
      If Trim(dblcdseleccion.Text) <> '' Then
         xseleccion := ' AND D.DPTOID = ' + QuotedStr(dblcdseleccion.Text)
      Else
         xseleccion := '';
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      xSQL := 'SELECT TIPO, 0 NUMERO, UPROID, UPAGOID, USEID, USENOM, '
//Final HPC_201704_COB
         + ' SUM(NVL(CANTIDAD, 0)) CANTIDAD, '
         + ' SUM(NVL(IMPDEV, 0)) MONDEV, '
         + '       SUM(NVL(IMPAPL, 0)) MONAPL '
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC         
         + '  FROM ('
         + '  SELECT  ''CREDITOS'' TIPO,D.UPROID, D.UPAGOID, D.USEID, D.USENOM, 1 CANTIDAD, A.IMPDEV, A.IMPAPL '
         + '           FROM PRE_APR_DEV A,  APO201 C, APO101 D '
         + '          WHERE A.FECCRE >= ' + QuotedStr(dbdtpinicio.Text)
         + '            AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + '            AND NVL(FLAAPR, ''X'') = ''S'' '
         + '            AND NVL(FLAANU, ''X'') <> ''S'' '
         + '            AND A.FORPAGID IS NOT NULL '
         + '            AND A.ASOID = C.ASOID(+) '
         + '            AND C.UPROID = D.UPROID(+) '
         + '            AND C.UPAGOID = D.UPAGOID(+) '
         + '            AND C.USEID = D.USEID(+)'
         + xseleccion
         + ' UNION ALL '
         + '  SELECT ''FSC'' TIPO ,D.UPROID, D.UPAGOID, D.USEID, D.USENOM, 1 CANTIDAD, A.IMPDEV, A.IMPAPL '
         + '           FROM COB_SOLICITUD_DEV_EXC_FSC_CAB A,  APO201 C, APO101 D '
         + '          WHERE A.FECCRE >= ' + QuotedStr(dbdtpinicio.Text)
         + '            AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + '            AND NVL(FLAAPR, ''X'') = ''S'' '
         + '            AND NVL(FLAANU, ''X'') <> ''S'' '
         + '            AND A.FORPAGID IS NOT NULL '
         + '            AND A.ASOID = C.ASOID(+) '
         + '            AND C.UPROID = D.UPROID(+) '
         + '            AND C.UPAGOID = D.UPAGOID(+) '
         + '            AND C.USEID = D.USEID(+)'
         + xseleccion
         + ') '
         + ' GROUP BY TIPO, UPROID, UPAGOID, USEID, USENOM '
         + ' ORDER BY TIPO, UPROID, UPAGOID, USEID, USENOM '
//Final HPC_201704_COB
   End;

   If rgseleccion.ItemIndex = 4 Then
   Begin
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      xSql := '  SELECT TIPO,0 NUMERO, IDE, MES, SUM(CANTIDAD) CANTIDAD, '
         + '       SUM(NVL(IMPDEV, 0)) MONDEV, SUM(NVL(IMPAPL, 0)) MONAPL           '
         + '  FROM ( '
         + ' SELECT ''CREDITOS'' TIPO,TO_CHAR(FECCRE, ''MM'') IDE, TO_CHAR(FECCRE, ''MONTH'') MES, '
         + '                1 CANTIDAD, IMPDEV, IMPAPL                              '
         + '           FROM PRE_APR_DEV A                                           '
         + '          WHERE A.FECCRE >= ' + QuotedStr(dbdtpinicio.Text)
         + '            AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + '            AND NVL(FLAAPR, ''X'') = ''S''                                  '
         + '            AND NVL(FLAANU, ''X'') <> ''S''                                 '
         + '            AND A.FORPAGID IS NOT NULL                                   '
         + ' UNION ALL '
         + ' SELECT ''FSC'' TIPO , TO_CHAR(FECCRE, ''MM'') IDE, TO_CHAR(FECCRE, ''MONTH'') MES, '
         + '                1 CANTIDAD, IMPDEV, IMPAPL                              '
         + '           FROM COB_SOLICITUD_DEV_EXC_FSC_CAB A                         '
         + '          WHERE A.FECCRE >= ' + QuotedStr(dbdtpinicio.Text)
         + '            AND A.FECCRE <= ' + QuotedStr(dbdtpfinal.Text)
         + '            AND NVL(FLAAPR, ''X'') = ''S''                               '
         + '            AND NVL(FLAANU, ''X'') <> ''S''                              '
         + '            AND A.FORPAGID IS NOT NULL                                   '
         + ')   '
         + ' GROUP BY TIPO,IDE, MES                                                  '
         + ' ORDER BY TIPO,IDE  ';
   End;

   If rgseleccion.ItemIndex = 5 Then
   Begin
// xSQL := 'SELECT MDEVCAB.USEID,MDEVCAB.ASOCODMOD,USEID,DEVDET.ASOID,MDEVCAB.ASOAPENOM,DEVDET.ASONUMDEV, '
//       + '       DEVDET.ASOANODEV, '
//       + '       SUBSTR(CREDID,11,5)||''-''||SUBSTR(CREDID,7,2)||''-''||SUBSTR(CREDID,3,4) NUMERO, '
//       + '       MONDEV,MDEVCAB.ASOFECDEV, NVL(MDEVCAB.ASOMONDEV,0) ASOMONDEV, '
//       + '       MDEVCAB.TIPDESEID,CRE104.TIPDESEABR||'' - ''||MDEVCAB.DOCOFI TIPDESEABR  '
//       + 'FROM (SELECT ASOID,ASONUMDEV,ASOANODEV,CREDID,SUM(NVL(CREDEVEXC,0)+NVL(MONDEVCUO,0)) MONDEV '
//       + '      FROM MDEVDET '
//       + '      WHERE FREG BETWEEN To_Date(' + QuotedStr(DateToStr(dbdtpinicio.Date)) + ',''dd/mm/yyyy'') '
//       + '                     AND To_Date(' + QuotedStr(DateToStr(dbdtpfinal.Date)) + ',''dd/mm/yyyy'') '
//       + '      GROUP BY ASOID,ASONUMDEV,ASOANODEV,CREDID '
//       + '      ORDER BY ASOANODEV,ASONUMDEV) DEVDET, MDEVCAB, CRE104 '
//       + 'WHERE DEVDET.ASONUMDEV=MDEVCAB.ASONUMDEV '
//       + '  AND DEVDET.ASOANODEV=MDEVCAB.ASOANODEV '
//       + '  AND MDEVCAB.ASOFECDEV BETWEEN To_Date(' + QuotedStr(DateToStr(dbdtpINICIO.Date)) + ',''dd/mm/yyyy'') '
//       + '                            AND To_Date(' + QuotedStr(DateToStr(dbdtpfinal.Date)) + ',''dd/mm/yyyy'') '
//       + '  AND MDEVCAB.TIPDESEID=CRE104.TIPDESEID(+) '
//       + 'ORDER BY ASOFECDEV,TIPDESEID';

// Inicio HPC_201724_COB       : En Reporte Devoluciones Detallado no debe incluir las Devoluciones anuladas
 XSQL1 :='WITH APROBACION AS '
        +'(SELECT TIPO,ASOID,SUM(NVL(IMPDEV,0)) IMPDEV,SUM(NVL(IMPAPL,0)) IMPAPL,USUCRE,USUAPR,MOTDEV, '
//Inicio HPC_201707_COB
//Se adiciona columnas de origen y motivo de devoluciones de pago de créditos
        +' ANODEV,CORDEV,MAX(FLADEVEFE)FLADEVEFE,MAX(FLAANU)FLAANU,MAX(MOTDES)MOTDES,NUMDEU,ASONUMDEV, '
        +' ORIDEVOLUCION, MOTDEVOLUCION '
        //Inicio HPC_201735_COB: nuevas campos a retornar
        +',FECAPR'
        +',USUAPRSUB'
        +',FECAPRSUB'
        +',USUAPRJEF'
        +',FECAPRJEF'
        +',NIVAPR '
        //Fin HPC_201735_COB
        +' FROM '
        +' (SELECT ''FSC'' TIPO, A.ASOID,A.IMPDEV,A.IMPAPL,A.USUCRE,A.USUAPR,A.MOTDEV,A.ANODEV,A.CORDEV,'
        +'         A.FLADEVEFE,A.FLAANU,A.MOTDES,B.NUM_DEU NUMDEU,LPAD(B.ASONUMDEV,6,''0'') ASONUMDEV, '
        +' '' '' ORIDEVOLUCION,'' '' MOTDEVOLUCION '
        //Inicio HPC_201735_COB: nuevas campos a retornar
        +',A.FECAPR'
        +',A.USUAPRSUB'
        +',A.FECAPRSUB'
        +',A.USUAPRJEF'
        +',A.FECAPRJEF'
        +',A.NIVAPR '
        //Fin HPC_201735_COB
        +' FROM '
        +' (SELECT ASOID,IMPDEV,IMPAPL,USUCRE,USUAPR,MOTDEV,ANODEV,CORDEV,FLADEVEFE,FLAANU,MOTDES '
        //Inicio HPC_201735_COB: nuevas campos a retornar
        +',TRUNC(FECAPR,''DD'') FECAPR'
        +',USUAPRSUB'
        +',TRUNC(FECAPRSUB,''DD'') FECAPRSUB'
        +',USUAPRJEF'
        +',TRUNC(FECAPRJEF,''DD'') FECAPRJEF'
        +',NIVAPR'
        //Fin HPC_201735_COB
        +'  FROM COB_SOLICITUD_DEV_EXC_FSC_CAB) A, '
        +'  (SELECT ASOID,NUM_DEU,ANODEV,CORDEV,ASONUMDEV '
        +'   FROM COB_SOLICITUD_DEV_EXC_FSC_DET ) B '
        +'   WHERE A.ASOID=B.ASOID '
        +'   AND  A.ANODEV >='+COPY(DateToStr(dbdtpINICIO.Date),7,4)+' AND A.ANODEV<='+COPY(DateToStr(dbdtpFINAL.Date),7,4)
        +'   AND A.ANODEV=B.ANODEV AND A.CORDEV=B.CORDEV AND  A.MOTDES IS NULL AND A.FLAANU IS NULL '
        +' UNION ALL ';
 XSQL2 :=' '
        +' SELECT ''CREDITOS'' TIPO,A.ASOID,A.IMPDEV,A.IMPAPL,A.USUCRE,A.USUAPR,A.MOTDEV,A.ANODEV,A.CORDEV, '
        +'        A.FLADEVEFE,A.FLAANU,A.MOTDES,B.CREDID NUMDEU ,LPAD(B.ASONUMDEV,6,''0'') ASONUMDEV, '
        +' D.DESCRIPCION ORIDEVOLUCION,C.DESCRIPCION MOTDEVOLUCION '
        //Inicio HPC_201735_COB: nuevas campos a retornar
        +',A.FECAPR'
        +',A.USUAPRSUB'
        +',A.FECAPRSUB'
        +',A.USUAPRJEF'
        +',A.FECAPRJEF'
        +',A.NIVAPR '
        //Fin HPC_201735_COB
        +' FROM '
        +' (SELECT ASOID,IMPDEV,IMPAPL,USUCRE,USUAPR,MOTDEV,ANODEV,CORDEV,FLADEVEFE,FLAANU,MOTDES,CODORIDEV,CODMOTDEV '
        //Inicio HPC_201735_COB: nuevas campos a retornar
        +',TRUNC(FECAPR,''DD'') FECAPR'
        +',USUAPRSUB'
        +',TRUNC(FECAPRSUB,''DD'') FECAPRSUB'
        +',USUAPRJEF'
        +',TRUNC(FECAPRJEF,''DD'') FECAPRJEF'
        +',NIVAPR'
        //Fin HPC_201735_COB
        +'  FROM PRE_APR_DEV) A, '
        +' (SELECT ASOID,CREDID,ANODEV,CORDEV,ASONUMDEV '
        +'  FROM PRE_APR_DEV_DET) B,COB_REF_DEVOLUCIONES C, COB_REF_DEVOLUCIONES D '
        +'  WHERE A.ASOID=B.ASOID '
        +'  AND  A.ANODEV >='+COPY(DateToStr(dbdtpINICIO.Date),7,4)+' AND A.ANODEV<='+COPY(DateToStr(dbdtpFINAL.Date),7,4)
        +'  AND A.ANODEV=B.ANODEV AND A.CORDEV=B.CORDEV AND  A.MOTDES IS NULL AND A.FLAANU IS NULL '
        +'  AND C.CODTIPREF=''MOT'' AND C.CODREF=A.CODMOTDEV '
        +'  AND D.CODTIPREF=''ORI'' AND D.CODREF=A.CODORIDEV) '
        //Inicio HPC_201735_COB: nuevas campos a retornar
        +'GROUP BY TIPO,ASOID,USUCRE,USUAPR,MOTDEV,ANODEV,CORDEV,NUMDEU,NUMDEU,ASONUMDEV,ORIDEVOLUCION,MOTDEVOLUCION'
        +',FECAPR'
        +',USUAPRSUB'
        +',FECAPRSUB'
        +',USUAPRJEF'
        +',FECAPRJEF'
        +',NIVAPR) '
        //Fin HPC_201735_COB
        +'  SELECT APROBACION.TIPO, APROBACION.MOTDEV, APROBACION.USUCRE, APROBACION.USUAPR, MDEVCAB.ASOCODMOD,'
        +'          MDEVCAB.USEID,APO101.USENOM,DEVDET.ASOID,MDEVCAB.ASOAPENOM, DEVDET.ASONUMDEV,DEVDET.ASOANODEV,'
        +'          SUBSTR(CREDID, 11, 5) || ''-'' || SUBSTR(CREDID, 7, 2) || ''-'' ||SUBSTR(CREDID, 3, 4) NUMERO,'
        +'         MONDEV,MDEVCAB.ASOFECDEV,NVL(MDEVCAB.ASOMONDEV, 0) ASOMONDEV,MDEVCAB.TIPDESEID,'
        +'       CRE104.TIPDESEABR || '' - '' || MDEVCAB.DOCOFI TIPDESEABR,APROBACION.MOTDEV,TGE158.DPTODES,APO201.ASOTIPID,'
        +'       APROBACION.ORIDEVOLUCION,APROBACION.MOTDEVOLUCION,APO105.REGPENDES, '
        //Inicio HPC_201735_COB: nuevas campos a retornar
        +'       APROBACION.FECAPR,'
        +'       APROBACION.USUAPRSUB,'
        +'       APROBACION.FECAPRSUB,'
        +'       APROBACION.USUAPRJEF,'
        +'       APROBACION.FECAPRJEF,'
        +'       APROBACION.NIVAPR,'
        //Fin HPC_201735_COB
        + '      (SELECT FORPAGABR'
        + '         FROM CRE310  '
        + '        WHERE ASOID=MDEVCAB.ASOID and FREG=(SELECT max(freg) from CRE310 WHERE ASOID=MDEVCAB.ASOID and creestid not in (''13'',''04'',''99'')) '
        + '          AND CREESTID not in (''13'',''04'',''99'') AND ROWNUM=1 '
        + '     GROUP BY FORPAGABR,NROOPE,FOPERAC)FORPAGABR,'
        + '      (SELECT FOPERAC '
        + '         FROM CRE310  '
        + '        WHERE ASOID=MDEVCAB.ASOID and freg=(SELECT max(freg) from CRE310 WHERE ASOID=MDEVCAB.ASOID and creestid not in (''13'',''04'',''99'')) '
        + '          AND CREESTID not in (''13'',''04'',''99'') AND ROWNUM=1 '
        + '     GROUP BY NROOPE,FOPERAC) FOPERAC,'
        + '      (SELECT SUM(NVL(CREMTOCOB,0)) '
        + '         FROM CRE310  '
        + '        WHERE ASOID=MDEVCAB.ASOID AND freg=(SELECT MAX(freg) FROM CRE310 WHERE ASOID=MDEVCAB.ASOID and CREESTID not in (''13'',''04'',''99'')) '
        + '          AND CREESTID not in (''13'',''04'',''99'')  AND ROWNUM=1 '
        + '     GROUP BY NROOPE,FOPERAC)CREMTOCOB '
        +' FROM (SELECT ASOID,ASONUMDEV,ASOANODEV,CREDID,SUM(NVL(CREDEVEXC, 0) + NVL(MONDEVCUO, 0)) MONDEV  '
        +'       FROM MDEVDET  '
        +'      WHERE FREG BETWEEN To_Date(' + QuotedStr(DateToStr(dbdtpinicio.Date)) + ',''dd/mm/yyyy'') '
        +'                      AND To_Date(' + QuotedStr(DateToStr(dbdtpfinal.Date)) + ',''dd/mm/yyyy'') '
        +'        AND CREESTID NOT IN (''13'') '
        +'      GROUP BY ASOID, ASONUMDEV, ASOANODEV, CREDID  '
        +'      ORDER BY ASOANODEV, ASONUMDEV) DEVDET, MDEVCAB,CRE104 ,APO101,APROBACION,APO201,TGE158,APO105  '
        +' WHERE DEVDET.ASONUMDEV = MDEVCAB.ASONUMDEV '
        +'  AND DEVDET.ASOANODEV = MDEVCAB.ASOANODEV '
        +'  AND MDEVCAB.ASOFECDEV BETWEEN To_Date(' + QuotedStr(DateToStr(dbdtpINICIO.Date)) + ',''dd/mm/yyyy'') '
        +'                             AND To_Date(' + QuotedStr(DateToStr(dbdtpfinal.Date)) + ',''dd/mm/yyyy'') '
        +'  AND MDEVCAB.TIPDESEID = CRE104.TIPDESEID(+) '
        +'  AND DEVDET.ASOID=APROBACION.ASOID(+) AND DEVDET.ASONUMDEV=APROBACION.ASONUMDEV(+) '
        +'  AND MDEVCAB.UPROID=APO101.UPROID(+)  AND MDEVCAB.UPAGOID=APO101.UPAGOID(+) AND MDEVCAB.USEID=APO101.USEID(+) '
        +'  AND APO201.ASOID=MDEVCAB.ASOID  '
        +'  AND TGE158.DPTOID=APO201.DPTOID  '
        +'  AND APO105.REGPENID(+)=APO201.REGPENID '
//Final HPC_201707_COB
        +' ORDER BY CRE104.TIPDESEABR || '' - '' || MDEVCAB.DOCOFI,TIPO,DPTODES,USENOM,ASOFECDEV  ';
      xSQL:=xSQL1+xSQL2;
// Fin   HPC_201724_COB       : En Reporte Devoluciones Detallado no debe incluir las Devoluciones anuladas
   End;
//Final HPC_201704_COB

   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;

   If rgseleccion.ItemIndex = 0 Then
      Dm1.cdsReporte.indexfieldnames := 'NUMERO'
   Else
      Dm1.cdsReporte.indexfieldnames := '';

   DM1.cdsReporte.First;
     // *************************************************** \\
   If rgseleccion.ItemIndex = 0 Then
   Begin
      xmonapl := 0;
      xmondev := 0;

      DM1.cdsReporte.First;
      While Not DM1.cdsReporte.Eof Do
      Begin
         //xmonrev := xmonrev + DM1.cdsReporte.FieldByName('MONREV').AsFloat;
         xmonapl := xmonapl + DM1.cdsReporte.FieldByName('MONAPL').AsFloat;
         xmondev := xmondev + DM1.cdsReporte.FieldByName('MONDEV').AsFloat;
         DM1.cdsReporte.Next;
      End;

      dbgprevio.Selected.Clear;
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      dbgprevio.Selected.Add('TIPO'#9'9'#9'Origen'#9#9);
//Final HPC_201704_COB
      dbgprevio.Selected.Add('NUMERO'#9'10'#9'Número'#9#9);
      dbgprevio.Selected.Add('USEID'#9'4'#9'UGEL'#9#9);
      dbgprevio.Selected.Add('USENOM'#9'20'#9'Nombre de UGEL'#9#9);
      dbgprevio.Selected.Add('CREDID'#9'20'#9'Nro.Crédito'#9#9);
      dbgprevio.Selected.Add('FECCRE'#9'10'#9'Fecha~creación'#9#9);
      dbgprevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
      dbgprevio.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y~nombre(s)'#9#9);
//Inicio HPC_201707_COB
//Se adiciona columnas de origen y motivo de devoluciones de pago de créditos
//    dbgprevio.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y~nombre(s)'#9#9);
//Final HPC_201707_COB
      dbgprevio.Selected.Add('ASONUMDEV'#9'6'#9'Número~devolución'#9#9);
      dbgprevio.Selected.Add('TIPDESEABR'#9'11'#9'Tipo~desembolso'#9#9);
      dbgprevio.Selected.Add('USUCRE'#9'15'#9'Usuario que~crea'#9#9);
      dbgprevio.Selected.Add('USUAPR'#9'15'#9'Usuario que~aprueba'#9#9);
      dbgprevio.Selected.Add('MONDEV'#9'10'#9'Monto~Devuelto'#9#9);
      dbgprevio.Selected.Add('MONAPL'#9'10'#9'Monto~Aplicado'#9#9);
//Inicio HPC_201707_COB
//Se adiciona columnas de origen y motivo de devoluciones de pago de créditos
      dbgprevio.Selected.Add('MOTDEV'#9'255'#9'Observación Devolución'#9#9);
      dbgprevio.Selected.Add('ORIDEVOLUCION'#9'50'#9'Originó~Devolución'#9#9);
      dbgprevio.Selected.Add('MOTDEVOLUCION'#9'50'#9'Motivo~Devolución'#9#9);
      dbgprevio.Selected.Add('FORPAGABR'#9'04'#9'Forma Pago~Últ.Pago'#9#9);
      dbgprevio.Selected.Add('FOPERAC'#9'10'#9'Fecha~Último Pago'#9#9);
      dbgprevio.Selected.Add('CREMTOCOB'#9'10'#9'Monto~Último Pago'#9#9);
      dbgprevio.Selected.Add('REGPENDES'#9'20'#9'Régimen~Pensión'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('CREMTOCOB')).DisplayFormat := '##,###,###.#0';
      TNumericField(DM1.cdsReporte.FieldByName('CREMTOCOB')).DisplayFormat := '##,###,###.#0';
//Final HPC_201707_COB      
      TNumericField(DM1.cdsReporte.FieldByName('MONDEV')).DisplayFormat := '###,###,##0.00';
      dbgprevio.ColumnByName('MONDEV').FooterValue := FloatToStrF(xmonDev, ffNumber, 15, 2);
      TNumericField(DM1.cdsReporte.FieldByName('MONAPL')).DisplayFormat := '###,###,##0.00';
      dbgprevio.ColumnByName('MONAPL').FooterValue := FloatToStrF(xmonAPL, ffNumber, 15, 2);

   End;

   If rgseleccion.ItemIndex = 1 Then
   Begin
      xcanefe := 0;
      xcanbco := 0;
      xcanapl := 0;
      xcantidad := 0;

      xmonefe_dev := 0;
      xmonbco_dev := 0;
      xmonapl_dev := 0;
      xmonto_dev := 0;

      xmonefe_apl := 0;
      xmonbco_apl := 0;
      xmonapl_apl := 0;
      xmonto_apl := 0;

      DM1.cdsReporte.First;
      While Not DM1.cdsReporte.Eof Do
      Begin
         xmonefe_dev := xmonefe_dev + DM1.cdsReporte.FieldByName('MON_EFE_DEV').AsFloat;
         xmonbco_dev := xmonbco_dev + DM1.cdsReporte.FieldByName('MON_BCO_DEV').AsFloat;
         xmonapl_dev := xmonapl_dev + DM1.cdsReporte.FieldByName('MON_APL_DEV').AsFloat;
         xmonto_dev := xmonto_dev + DM1.cdsReporte.FieldByName('MON_TOT_DEV').AsFloat;

         xmonefe_apl := xmonefe_apl + DM1.cdsReporte.FieldByName('MON_EFE_APL').AsFloat;
         xmonbco_apl := xmonbco_apl + DM1.cdsReporte.FieldByName('MON_BCO_APL').AsFloat;
         xmonapl_apl := xmonapl_apl + DM1.cdsReporte.FieldByName('MON_APL_APL').AsFloat;
         xmonto_apl := xmonto_apl + DM1.cdsReporte.FieldByName('MON_TOT_APL').AsFloat;

         xcanefe := xcanefe + DM1.cdsReporte.FieldByName('CAN_EFE').AsInteger;
         xcanbco := xcanbco + DM1.cdsReporte.FieldByName('CAN_BCO').AsInteger;
         xcanapl := xcanapl + DM1.cdsReporte.FieldByName('CAN_APL').AsInteger;
         xcantidad := xcantidad + DM1.cdsReporte.FieldByName('CAN_TOT').AsInteger;

         DM1.cdsReporte.Next;
      End;
      DM1.cdsReporte.First;
      dbgprevio.Selected.Clear;
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      dbgprevio.Selected.Add('TIPO'#9'9'#9'Origen'#9#9);
//Final HPC_201704_COB
      dbgprevio.Selected.Add('USUCRE'#9'15'#9'Usuario que~crea'#9#9);
      dbgprevio.Selected.Add('CAN_EFE'#9'15'#9'Cantidad~efectivo'#9#9);
      dbgprevio.Selected.Add('MON_EFE_DEV'#9'15'#9'Monto~Efectivo DEV'#9#9);
      dbgprevio.Selected.Add('MON_EFE_APL'#9'15'#9'Monto~Efectivo APL'#9#9);
      dbgprevio.Selected.Add('CAN_BCO'#9'15'#9'Cantidad~Banco'#9#9);
      dbgprevio.Selected.Add('MON_BCO_DEV'#9'15'#9'Monto~Banco DEV'#9#9);
      dbgprevio.Selected.Add('MON_BCO_APL'#9'15'#9'Monto~Banco APL'#9#9);
        //dbgprevio.Selected.Add('CAN_APL'#9'15'#9'Cantidad~Aplicación'#9#9);
        //dbgprevio.Selected.Add('MON_APL_DEV'#9'15'#9'Monto~Aplicación DEV'#9#9);
        //dbgprevio.Selected.Add('MON_APL_APL'#9'15'#9'Monto~Aplicación APL'#9#9);
      dbgprevio.Selected.Add('CAN_TOT'#9'15'#9'Cantidad~Total'#9#9);
      dbgprevio.Selected.Add('MON_TOT_DEV'#9'15'#9'Monto~Total DEV'#9#9);
      dbgprevio.Selected.Add('MON_TOT_APL'#9'15'#9'Monto~Total APL'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('CAN_EFE')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsReporte.FieldByName('CAN_BCO')).DisplayFormat := '###,##0';
        //TNumericField(DM1.cdsReporte.FieldByName('CAN_APL')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsReporte.FieldByName('CAN_TOT')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsReporte.FieldByName('MON_EFE_DEV')).DisplayFormat := '##,###,###.#0';
      TNumericField(DM1.cdsReporte.FieldByName('MON_EFE_APL')).DisplayFormat := '##,###,###.#0';
      TNumericField(DM1.cdsReporte.FieldByName('MON_BCO_DEV')).DisplayFormat := '##,###,###.#0';
      TNumericField(DM1.cdsReporte.FieldByName('MON_BCO_APL')).DisplayFormat := '##,###,###.#0';
        //TNumericField(DM1.cdsReporte.FieldByName('MON_APL_DEV')).DisplayFormat := '##,###,###.#0';
        //TNumericField(DM1.cdsReporte.FieldByName('MON_APL_APL')).DisplayFormat := '##,###,###.#0';
      TNumericField(DM1.cdsReporte.FieldByName('MON_TOT_DEV')).DisplayFormat := '##,###,###.#0';
      TNumericField(DM1.cdsReporte.FieldByName('MON_TOT_APL')).DisplayFormat := '##,###,###.#0';
      dbgprevio.ColumnByName('CAN_EFE').FooterValue := FloatToStrF(xcanefe, ffNumber, 7, 0);
      dbgprevio.ColumnByName('CAN_BCO').FooterValue := FloatToStrF(xcanbco, ffNumber, 7, 0);
        //dbgprevio.ColumnByName('CAN_APL').FooterValue := FloatToStrF(xcanapl, ffNumber, 7, 0);
      dbgprevio.ColumnByName('CAN_TOT').FooterValue := FloatToStrF(xcantidad, ffNumber, 7, 0);
      dbgprevio.ColumnByName('MON_EFE_DEV').FooterValue := FloatToStrF(xmonefe_dev, ffNumber, 13, 2);
      dbgprevio.ColumnByName('MON_EFE_APL').FooterValue := FloatToStrF(xmonefe_apl, ffNumber, 13, 2);
      dbgprevio.ColumnByName('MON_BCO_DEV').FooterValue := FloatToStrF(xmonbco_dev, ffNumber, 13, 2);
      dbgprevio.ColumnByName('MON_BCO_APL').FooterValue := FloatToStrF(xmonbco_apl, ffNumber, 13, 2);
        //dbgprevio.ColumnByName('MON_APL_DEV').FooterValue := FloatToStrF(xmonapl_dev, ffNumber, 13, 2);
        //dbgprevio.ColumnByName('MON_APL_APL').FooterValue := FloatToStrF(xmonapl_apl, ffNumber, 13, 2);
      dbgprevio.ColumnByName('MON_TOT_DEV').FooterValue := FloatToStrF(xmonto_dev, ffNumber, 13, 2);
      dbgprevio.ColumnByName('MON_TOT_APL').FooterValue := FloatToStrF(xmonto_apl, ffNumber, 13, 2);
   End;

   If rgseleccion.ItemIndex = 2 Then
   Begin
      xmontodev := 0;
      xmontoapl := 0;
      xcantidad := 0;
      DM1.cdsReporte.First;
      While Not DM1.cdsReporte.Eof Do
      Begin
         xcantidad := xcantidad + DM1.cdsReporte.FieldByName('CANTIDAD').AsInteger;
         xmontodev := xmontodev + DM1.cdsReporte.FieldByName('MONDEV').AsFloat;
         xmontoapl := xmontoapl + DM1.cdsReporte.FieldByName('MONAPL').AsFloat;
         DM1.cdsReporte.Next;
      End;
      DM1.cdsReporte.First;
      dbgprevio.Selected.Clear;
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      dbgprevio.Selected.Add('TIPO'#9'9'#9'Origen'#9#9);
//Final HPC_201704_COB      
      dbgprevio.Selected.Add('DPTODES'#9'15'#9'Descripción~departamento'#9#9);
      dbgprevio.Selected.Add('CANTIDAD'#9'7'#9'Cantidad'#9#9);
      dbgprevio.Selected.Add('MONDEV'#9'13'#9'Monto DEV'#9#9);
      dbgprevio.Selected.Add('MONAPL'#9'13'#9'Monto APL'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('CANTIDAD')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsReporte.FieldByName('MONDEV')).DisplayFormat := '##,###,###.#0';
      TNumericField(DM1.cdsReporte.FieldByName('MONAPL')).DisplayFormat := '##,###,###.#0';
      dbgprevio.ColumnByName('CANTIDAD').FooterValue := FloatToStrF(xcantidad, ffNumber, 7, 0);
      dbgprevio.ColumnByName('MONDEV').FooterValue := FloatToStrF(xmontodev, ffNumber, 12, 2);
      dbgprevio.ColumnByName('MONAPL').FooterValue := FloatToStrF(xmontoapl, ffNumber, 12, 2);
   End;

   If rgseleccion.ItemIndex = 3 Then
   Begin
      xmontodev := 0;
      xmontoapl := 0;
      xcantidad := 0;
      DM1.cdsReporte.First;
      While Not DM1.cdsReporte.Eof Do
      Begin
         xcantidad := xcantidad + DM1.cdsReporte.FieldByName('CANTIDAD').AsInteger;
         xmontodev := xmontodev + DM1.cdsReporte.FieldByName('MONDEV').AsFloat;
         xmontoapl := xmontoapl + DM1.cdsReporte.FieldByName('MONAPL').AsFloat;
         DM1.cdsReporte.Next;
      End;
      DM1.cdsReporte.First;
      dbgprevio.Selected.Clear;
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      dbgprevio.Selected.Add('TIPO'#9'9'#9'Origen'#9#9);
//Final HPC_201704_COB
      dbgprevio.Selected.Add('UPROID'#9'3'#9'Unidad~proceso'#9#9);
      dbgprevio.Selected.Add('UPAGOID'#9'3'#9'Unidad~pago'#9#9);
      dbgprevio.Selected.Add('USEID'#9'3'#9'Unidad~gestión'#9#9);
      dbgprevio.Selected.Add('USENOM'#9'25'#9'Descripción~de UGEL'#9#9);
      dbgprevio.Selected.Add('CANTIDAD'#9'7'#9'Cantidad'#9#9);
      dbgprevio.Selected.Add('MONDEV'#9'13'#9'Monto DEV'#9#9);
      dbgprevio.Selected.Add('MONAPL'#9'13'#9'Monto APL'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('CANTIDAD')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsReporte.FieldByName('MONDEV')).DisplayFormat := '##,###,###.#0';
      TNumericField(DM1.cdsReporte.FieldByName('MONAPL')).DisplayFormat := '##,###,###.#0';
      dbgprevio.ColumnByName('CANTIDAD').FooterValue := FloatToStrF(xcantidad, ffNumber, 7, 0);
      dbgprevio.ColumnByName('MONDEV').FooterValue := FloatToStrF(xmontodev, ffNumber, 12, 2);
      dbgprevio.ColumnByName('MONAPL').FooterValue := FloatToStrF(xmontoapl, ffNumber, 12, 2);
   End;

   If rgseleccion.ItemIndex = 4 Then
   Begin
      xmontodev := 0;
      xmontoapl := 0;
      xcantidad := 0;
      DM1.cdsReporte.First;
      While Not DM1.cdsReporte.Eof Do
      Begin
         xcantidad := xcantidad + DM1.cdsReporte.FieldByName('CANTIDAD').AsInteger;
         xmontodev := xmontodev + DM1.cdsReporte.FieldByName('MONDEV').AsFloat;
         xmontoapl := xmontoapl + DM1.cdsReporte.FieldByName('MONAPL').AsFloat;
         DM1.cdsReporte.Next;
      End;
      DM1.cdsReporte.First;
      dbgprevio.Selected.Clear;
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      dbgprevio.Selected.Add('TIPO'#9'9'#9'Origen'#9#9);
//Final HPC_201704_COB
      dbgprevio.Selected.Add('MES'#9'11'#9'Descripción~mes'#9#9);
      dbgprevio.Selected.Add('CANTIDAD'#9'7'#9'Cantidad'#9#9);
      dbgprevio.Selected.Add('MONDEV'#9'13'#9'Monto DEV'#9#9);
      dbgprevio.Selected.Add('MONAPL'#9'13'#9'Monto APL'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('CANTIDAD')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsReporte.FieldByName('MONDEV')).DisplayFormat := '##,###,###.#0';
      TNumericField(DM1.cdsReporte.FieldByName('MONAPL')).DisplayFormat := '##,###,###.#0';
      dbgprevio.ColumnByName('CANTIDAD').FooterValue := FloatToStrF(xcantidad, ffNumber, 7, 0);
      dbgprevio.ColumnByName('MONDEV').FooterValue := FloatToStrF(xmontodev, ffNumber, 12, 2);
      dbgprevio.ColumnByName('MONAPL').FooterValue := FloatToStrF(xmontoapl, ffNumber, 12, 2);
   End;

   If rgseleccion.ItemIndex = 5 Then
   Begin
      xmontodev := 0;
      xcantidad := 0;
      DM1.cdsReporte.First;
      While Not DM1.cdsReporte.Eof Do
      Begin
         xmontodev := xmontodev + DM1.cdsReporte.FieldByName('MONDEV').AsFloat;
         xcantidad := xcantidad + 1;
         DM1.cdsReporte.Next;
      End;
      DM1.cdsReporte.First;
     dbgprevio.Selected.Clear;
//Inicio HPC_201704_COB
//Se adiciona columnas y las devoluciones al FSC
      dbgprevio.Selected.Add('TIPO'#9'9'#9'Origen'#9#9);
      dbgprevio.Selected.Add('ASOFECDEV'#9'11'#9'Fecha Devol'#9#9);
      dbgprevio.Selected.Add('TIPDESEABR'#9'10'#9'Tipo'#9#9);
      dbgprevio.Selected.Add('DPTODES'#9'15'#9'Departamento'#9#9);      
      dbgprevio.Selected.Add('USEID'#9'5'#9'UGEL'#9#9);
      dbgprevio.Selected.Add('ASOCODMOD'#9'15'#9'Cod. Mod.'#9#9);
      dbgprevio.Selected.Add('ASOTIPID'#9'3'#9'Tip'#9#9);
      dbgprevio.Selected.Add('ASOAPENOM'#9'25'#9'Nombres'#9#9);
      dbgprevio.Selected.Add('ASONUMDEV'#9'8'#9'Num. Dev.'#9#9);
      dbgprevio.Selected.Add('NUMERO'#9'15'#9'Numero'#9#9);
      dbgprevio.Selected.Add('MONDEV'#9'15'#9'Monto Dev.'#9#9);
      dbgprevio.Selected.Add('USUCRE'#9'15'#9'Usuario Crea'#9#9);
      //Inicio HPC_201735_COB: objeto removido
      //dbgprevio.Selected.Add('USUAPR'#9'15'#9'Usuario Aprueba'#9#9);
      //Fin HPC_201735_COB
      dbgprevio.Selected.Add('USENOM'#9'20'#9'USE Descripción'#9#9);
//Inicio HPC_201707_COB
//Se adiciona columnas de origen y motivo de devoluciones de pago de créditos 
      dbgprevio.Selected.Add('MOTDEV'#9'255'#9'Observación Devolución'#9#9);
      dbgprevio.Selected.Add('ORIDEVOLUCION'#9'50'#9'Originó~Devolución'#9#9);
      dbgprevio.Selected.Add('MOTDEVOLUCION'#9'50'#9'Motivo~Devolución'#9#9);
      dbgprevio.Selected.Add('FORPAGABR'#9'04'#9'Forma Pago~Últ.Pago'#9#9);
      dbgprevio.Selected.Add('FOPERAC'#9'10'#9'Fecha~Último Pago'#9#9);
      dbgprevio.Selected.Add('CREMTOCOB'#9'10'#9'Monto~Último Pago'#9#9);
      dbgprevio.Selected.Add('REGPENDES'#9'20'#9'Régimen~Pensión'#9#9);
//Final HPC_201704_COB
      //Inicio HPC_201735_COB: nuevas campos a mostrar
      dbgprevio.Selected.Add('USUAPR'#9'15'#9'Sectorista~Aprueba'#9#9);
      dbgprevio.Selected.Add('FECAPR'#9'15'#9'Fecha Sec.~Aprueba'#9#9);
      dbgprevio.Selected.Add('USUAPRSUB'#9'15'#9'SubJefe~Aprueba'#9#9);
      dbgprevio.Selected.Add('FECAPRSUB'#9'15'#9'Fecha SubJefe~Aprueba'#9#9);
      dbgprevio.Selected.Add('USUAPRJEF'#9'15'#9'Jefe~Aprueba'#9#9);
      dbgprevio.Selected.Add('FECAPRJEF'#9'15'#9'Fecha Jefe~Aprueba'#9#9);
      dbgprevio.Selected.Add('NIVAPR'#9'15'#9'Nivel~Aprobación'#9#9);
      //Fin HPC_201735_COB
      dbgprevio.ApplySelected;
      TDateTimeField(DM1.cdsReporte.FieldByName('FOPERAC')).DisplayFormat:='DD/MM/YYYY';
      TNumericField(DM1.cdsReporte.FieldByName('CREMTOCOB')).DisplayFormat := '##,###,###.#0';
//Final HPC_201707_COB
      TNumericField(DM1.cdsReporte.FieldByName('MONDEV')).DisplayFormat := '##,###,###.#0';
      dbgprevio.ColumnByName('MONDEV').FooterValue := FloatToStrF(xmontodev, ffNumber, 12, 2);
   End;

   Screen.Cursor := crDefault;
End;

Procedure TfRepDev.rgseleccionClick(Sender: TObject);
Var
   xSQL: String;
Begin
   dblcdseleccion.Text := '';
   medescsel.Text := '';
   gbseleccion.Caption := '';
   If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;

   rgTipoReporte.Enabled := (rgseleccion.ItemIndex = 0);

   If rgseleccion.ItemIndex = 0 Then
   Begin
      gbseleccion.Enabled := True;
      dblcdseleccion.Width := 100;
      pnldescripcion.Left := 111;
      xSql := 'SELECT A.USERID CODIGO, A.USERNOM DESCRIPCION  FROM TGE006 A, TGE007 B'
         + ' WHERE A.USERID = B.USERID AND A.FECEXP IS NULL AND A.OFDESID = ''01'' AND B.GRUPOID = ''GRPCOB''';
      DM1.cdsGrupos.Close;
      DM1.cdsGrupos.DataRequest(xSql);
      DM1.cdsGrupos.Open;
      dblcdseleccion.Width := 100;
      dblcdseleccion.LookupTable := DM1.cdsGrupos;
      dblcdseleccion.LookupField := 'CODIGO';
      gbseleccion.Caption := ' Seleccione usuario ';
      dblcdseleccion.Selected.Clear;
      dblcdseleccion.Selected.Add('CODIGO'#9'15'#9'Código'#9#9);
      dblcdseleccion.Selected.Add('DESCRIPCION'#9'30'#9'Descripción'#9#9);
   End;
   If rgseleccion.ItemIndex = 3 Then
   Begin
      gbseleccion.Enabled := True;
      dblcdseleccion.Width := 50;
      pnldescripcion.Left := 62;
      xSql := 'SELECT DPTOID CODIGO, DPTODES DESCRIPCION FROM APO158';
      DM1.cdsGrupos.Close;
      DM1.cdsGrupos.DataRequest(xSql);
      DM1.cdsGrupos.Open;
      dblcdseleccion.LookupTable := DM1.cdsGrupos;
      dblcdseleccion.LookupField := 'CODIGO';
      gbseleccion.Caption := ' Seleccione departamento';
      dblcdseleccion.Width := 50;
      dblcdseleccion.Selected.Clear;
      dblcdseleccion.Selected.Add('CODIGO'#9'2'#9'Código'#9#9);
      dblcdseleccion.Selected.Add('DESCRIPCION'#9'30'#9'Descripción'#9#9);
   End;
// cambio por salto de línea
   If (rgseleccion.ItemIndex = 1) Or (rgseleccion.ItemIndex = 2) Or (rgseleccion.ItemIndex = 4) Then
      gbseleccion.Enabled := False;
End;

Procedure TfRepDev.btnaexcelClick(Sender: TObject);
Begin
   If DM1.cdsReporte.Active = True Then
   Begin
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No existe información para exportar a Excel', mtInformation, [mbOk], 0);
         Exit;
      End;
   End
   Else
   Begin
      MessageDlg('No existe información para exportar a Excel', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.HojaExcel('DEVOLUCIONES', DM1.dsReporte, dtgData);
End;

Procedure TfRepDev.dblcdseleccionExit(Sender: TObject);
Begin
   If Trim(dblcdseleccion.Text) = '' Then medescsel.Text := '';
// cambio por salto de línea
   If DM1.cdsGrupos.Locate('CODIGO', dblcdseleccion.Text, []) Then
      medescsel.Text := DM1.cdsGrupos.FieldByName('DESCRIPCION').AsString;
End;

Procedure TfRepDev.BitPrintClick(Sender: TObject);
Var
   xcandevbco, xcandevfec, xcandevapl, xcandev: Integer;
   xmondevbco, xmondevfec, xmondevapl, xmondev: Double;

Begin
   If DM1.cdsReporte.Active = True Then
   Begin
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No existe información para imprimir', mtInformation, [mbOk], 0);
         Exit;
      End;
   End
   Else
   Begin
      MessageDlg('No existe información para imprimir', mtInformation, [mbOk], 0);
      Exit;
   End;

   If rgseleccion.ItemIndex = 0 Then
   Begin
      xcandevbco := 0;
      xcandevfec := 0;
      xcandevapl := 0;
      xcandev := 0;
      xmondevbco := 0;
      xmondevfec := 0;
      xmondevapl := 0;
      xmondev := 0;
      DM1.cdsReporte.First;
      While Not DM1.cdsReporte.Eof Do
      Begin
         If DM1.cdsReporte.FieldByName('TIPDESEABR').AsString = 'BN.(ABONOS)' Then
         Begin
            xcandevbco := xcandevbco + 1;
            xmondevbco := xmondevbco + DM1.cdsReporte.FieldByName('MONDEV').AsFloat;
         End;
         If DM1.cdsReporte.FieldByName('TIPDESEABR').AsString = 'EFECTIVO' Then
         Begin
            xcandevfec := xcandevfec + 1;
            xmondevfec := xmondevfec + DM1.cdsReporte.FieldByName('MONDEV').AsFloat;
         End;
         If DM1.cdsReporte.FieldByName('TIPDESEABR').AsString = 'APLIC.' Then
         Begin
            xcandevapl := xcandevapl + 1;
            xmondevapl := xmondevapl + DM1.cdsReporte.FieldByName('MONDEV').AsFloat;
         End;
         xcandev := xcandev + 1;
         xmondev := xmondev + DM1.cdsReporte.FieldByName('MONDEV').AsFloat;
         DM1.cdsReporte.Next;
      End;

      If Trim(dblcdseleccion.Text) = '' Then
      Begin
         pplfecha01.Caption := 'DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
            // Se muestra el USUARIO en mayúsculas
// cambio por salto de línea
         pplimpresopor01.Caption := 'Impreso por : '
            + UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
         pplcandevbco.Caption := FloatToStrF(xcandevbco, ffNumber, 6, 0);
         pplcandevefe.Caption := FloatToStrF(xcandevfec, ffNumber, 6, 0);
         pplcandevapl.Caption := FloatToStrF(xcandevapl, ffNumber, 6, 0);
         pplcandev.Caption := FloatToStrF(xcandev, ffNumber, 6, 0);
         pplmondevbco.Caption := FloatToStrF(xmondevbco, ffNumber, 10, 2);
         pplmondevefe.Caption := FloatToStrF(xmondevfec, ffNumber, 10, 2);
         pplmondevapl.Caption := FloatToStrF(xmondevapl, ffNumber, 10, 2);
         pplmondev.Caption := FloatToStrF(xmondev, ffNumber, 10, 2);
         pprdevxusu.Print;
            // ppDesigner1.report := pprdevxusu;
            // ppDesigner1.Showmodal;

      End
      Else
      Begin
            // Se muestra el USUARIO en mayúsculas
         ppLabel153.Caption := medescsel.Text;
         ppLabel148.Caption := 'DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
// cambio por salto de línea
         ppLabel152.Caption := 'Impreso por : '
            + UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
         pplcandevbco_1.Caption := FloatToStrF(xcandevbco, ffNumber, 6, 0);
         pplcandevefe_1.Caption := FloatToStrF(xcandevfec, ffNumber, 6, 0);
         pplcandevapl_1.Caption := FloatToStrF(xcandevapl, ffNumber, 6, 0);
         pplcandev_1.Caption := FloatToStrF(xcandev, ffNumber, 6, 0);
         pplmondevbco_1.Caption := FloatToStrF(xmondevbco, ffNumber, 10, 2);
         pplmondevefe_1.Caption := FloatToStrF(xmondevfec, ffNumber, 10, 2);
         pplmondevapl_1.Caption := FloatToStrF(xmondevapl, ffNumber, 10, 2);
         pplmondev_1.Caption := FloatToStrF(xmondev, ffNumber, 10, 2);
         pprdev.Print;
            //  ppDesigner1.report := pprdev;
            //  ppDesigner1.Showmodal;
      End;
   End
   Else
      If rgseleccion.ItemIndex = 1 Then
      Begin
         pplfecha03.Caption := ' DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
            // mayúsculas
// cambio por salto de línea
         pplimpresopor03.Caption := 'Impreso por : '
            + UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
         pprresdev.Print;
//Inicio HPC_201704_COB
//Para formatear reporte
         //ppDesigner1.report := pprresdev;
         //ppDesigner1.Showmodal;
//Final HPC_201704_COB
      End
      Else
         If rgseleccion.ItemIndex = 2 Then
         Begin
            pplfecha04.Caption := ' DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
                // mayúsculas
// cambio por salto de línea
            pplimpresopor04.Caption := 'Impreso por : '
               + UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
            pprdevxdep.Print;
//Inicio HPC_201704_COB
//Para formatear reporte
            //ppDesigner1.report := pprdevxdep;
            //ppDesigner1.Showmodal;
//Final HPC_201704_COB
         End
         Else
            If rgseleccion.ItemIndex = 3 Then
            Begin
               If Trim(dblcdseleccion.Text) = '' Then
               Begin
                  pplfecha05.Caption := ' DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
                        // mayúsculas
// cambio por salto de línea
                  pplimpresopor05.Caption := 'Impreso por : '
                     + UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
                  pprdevxunipro.Print;
//Inicio HPC_201704_COB
//Para formatear reporte
                  //ppDesigner1.report := pprdevxunipro;
                  //ppDesigner1.Showmodal;
//Final HPC_201704_COB
               End
               Else
               Begin
                  pplfecha06.Caption := ' DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
                        // mayúsculas
// cambio por salto de línea
                  pplimpresopor06.Caption := 'Impreso por : '
                     + UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
                  ppLabel105.Caption := medescsel.Text;
                  pprdevxuniproxdep.Print;
//Inicio HPC_201704_COB
//Para formatear reporte
                  //ppDesigner1.report := pprdevxuniproxdep;
                  //ppDesigner1.Showmodal;
//Final HPC_201704_COB
               End;
            End
            Else
               If rgseleccion.ItemIndex = 4 Then
               Begin
                  pplfecha07.Caption := ' DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
                        // mayúsculas
// cambio por salto de línea
                  pplimpresopor07.Caption := 'Impreso por : '
                     + UpperCase(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM'));
                  pprresdevxmeses.Print;
//Inicio HPC_201704_COB
//Para formatear reporte
                  //ppDesigner1.report := pprresdevxmeses;
                  //ppDesigner1.Showmodal;
//Final HPC_201704_COB
               End;

   If rgseleccion.ItemIndex = 5 Then
   Begin
      If DM1.cdsReporte.RecordCount > 0 Then
      Begin
         ppLblTit01.Caption := 'REPORTE DETALLADO DE DEVOLUCIONES DE CUOTAS PAGADAS ';
         ppLblTit02.Caption := 'EFECTUADAS DEL ' + DateToStr(dbdtpINICIO.Date) + ' AL ' + DateToStr(dbdtpfinal.Date);
         pprDevDetallado.Print;
         pprDevDetallado.Cancel;
//Inicio HPC_201704_COB
//Para formatear reporte
      // ppDesigner1.report := pprDevDetallado;
      // ppDesigner1.Showmodal;
//Final HPC_201704_COB
      End
      Else
         MessageDlg(' No Existe Información Para Este Rango ', mtError, [mbOk], 0);
   End;
End;

Procedure TfRepDev.FormActivate(Sender: TObject);
Begin
   If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
   gbseleccion.Enabled := False;
End;

Procedure TfRepDev.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsReporte.indexfieldnames := '';
   DM1.cdsReporte.Close;
End;

Procedure TfRepDev.FormCreate(Sender: TObject);
Begin
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
End;

End.

