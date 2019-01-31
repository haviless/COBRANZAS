unit COB924;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB924
// Formulario           : FCtrlDescargo
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Control de Descargo Global
// Actualizaciones      :
// HPC_201308_COB       : 08/07/2013 - Agregar en el Reporte el Tipo de Asociado
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201310_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201311_COB       : 30/10/2013 - Pagos al FSC por Planilla el filtro debe ser sin UPRO
// SPP_201313_COB       : Se realiza el pase a producción a partir de lo indicado en el documento HPC_201311_COB.
// HPC_201403_COB       : 12/09/2014 - Error en formato de fechas.
// SPP_201403_COB       : Se realiza el pase a producción a partir del HPC_201403_COB.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Wwdbdlg, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook,
   DB,  fcButton, fcImgBtn,
  fcShapeBtn, DBGrids, Buttons, Word2000, OleServer, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ExtCtrls,
  ppDB, ppDBPipe, ppDBBDE, ppStrtch, ppSubRpt, ppVar;


type
  TFCtrlDescargo = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    fcSFiltra: TfcShapeBtn;
    gbFiltro1: TGroupBox;
    Label1: TLabel;
    dblUproceso: TwwDBLookupCombo;
    Panel1: TPanel;
    Edit2: TEdit;
    Label2: TLabel;
    dblUPago: TwwDBLookupCombo;
    Panel2: TPanel;
    Edit3: TEdit;
    rdgCondicion: TRadioGroup;
    gbFiltro2: TGroupBox;
    Label4: TLabel;
    dblRepresentante: TwwDBLookupComboDlg;
    Panel3: TPanel;
    Edit5: TEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    edtNoOperac: TEdit;
    Label5: TLabel;
    edtAno: TEdit;
    edtMes: TEdit;
    Label6: TLabel;
    dbgAportes: TwwDBGrid;
    fcShapeBtn1: TfcShapeBtn;
    dbgCreditos: TwwDBGrid;
    TabSheet4: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Shape1: TShape;
    Panel7: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Panel8: TPanel;
    dbgInconsistencia: TwwDBGrid;
    totapordesc: TLabel;
    totcuotades: TLabel;
    totcuotamanual: TLabel;
    totaldescargado: TLabel;
    totcobranzaglobal: TLabel;
    RDifPositvo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    pplPerUpronom: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLDiferencia1: TppLabel;
    ppLabel12: TppLabel;
    ppLPeriodo: TppLabel;
    ppLabel14: TppLabel;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    pplCPago: TppLabel;
    ppLFCPago: TppLabel;
    ppLMtoCompro: TppLabel;
    ppLMtoDisk: TppLabel;
    ppLMtoDife: TppLabel;
    ppLlinea1: TppLabel;
    ppLlinea2: TppLabel;
    ppLlinea3: TppLabel;
    ppLabel28: TppLabel;
    ppLRepre: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLUpronom: TppLabel;
    ppLProvincia: TppLabel;
    ppLabel36: TppLabel;
    pploficion: TppLabel;
    ppLFecha: TppLabel;
    pnlNumeroOficio: TPanel;
    EdtNumOficio: TEdit;
    Label13: TLabel;
    Label12: TLabel;
    ppLabel6: TppLabel;
    btndiferencia: TButton;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    btnRepDescargo: TfcShapeBtn;
    ppBDCuotasManual: TppBDEPipeline;
    ppRDesacrgo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    LBL1: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppBDAportesAuto: TppBDEPipeline;
    ppBDCuotasAuto: TppBDEPipeline;
    ppDetailBand3: TppDetailBand;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine13: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppSummaryBand3: TppSummaryBand;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine18: TppLine;
    ppDetailBand6: TppDetailBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppDetailBand5: TppDetailBand;
    ppLine16: TppLine;
    ppLabel42: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine17: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppLine8: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLRepresentante: TppLabel;
    ppLUProceso: TppLabel;
    ppLUPago: TppLabel;
    ppLNoOperacion: TppLabel;
    ppLFOperacion: TppLabel;
    ppLAnoMes: TppLabel;
    ppLRegistroGlobal: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel50: TppLabel;
    ppLTotal: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel51: TppLabel;
    ppLDiferencia: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppLabel52: TppLabel;
    ppLNota: TppLabel;
    ppTitleBand3: TppTitleBand;
    ppTitleBand4: TppTitleBand;
    ppTitleBand5: TppTitleBand;
    ppLabel53: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel46: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine19: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppSummaryBand5: TppSummaryBand;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    dbgCobranzaGlobal: TwwDBGrid;
    dbgGestionRepresentante: TwwDBGrid;
    ppRRepAporte: TppReport;
    ppbRepResumen: TppBDEPipeline;
    ppRRepCuotas: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine20: TppLine;
    ppLabel60: TppLabel;
    ppDBText13: TppDBText;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel66: TppLabel;
    ppLPeriodo2: TppLabel;
    ppSummaryBand6: TppSummaryBand;
    ppLine21: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel67: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand8: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBText14: TppDBText;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel80: TppLabel;
    ppLPeriodo3: TppLabel;
    ppLine22: TppLine;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLine23: TppLine;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel82: TppLabel;
    ppDBCalc12: TppDBCalc;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn3: TfcShapeBtn;
    ppRAportes: TppReport;
    ppRCreditos: TppReport;
    ppbRepDetalle: TppBDEPipeline;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand9: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText29: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLRepresentante2: TppLabel;
    ppLUProceso2: TppLabel;
    ppLUPago2: TppLabel;
    ppLNoOperacion2: TppLabel;
    ppLFOperacion2: TppLabel;
    ppLAnoMes2: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel81: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLine26: TppLine;
    ppLabel94: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine27: TppLine;
    ppHeaderBand6: TppHeaderBand;
    ppDetailBand10: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppLTITULO3: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLRepresentante3: TppLabel;
    ppLUproceso3: TppLabel;
    ppLUpago3: TppLabel;
    ppLNoOperacion3: TppLabel;
    ppLFOperacion3: TppLabel;
    ppLAnoMes3: TppLabel;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel121: TppLabel;
    ppLine30: TppLine;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppDBText25: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSummaryBand9: TppSummaryBand;
    ppLabel111: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine31: TppLine;
    fcSDetalle: TfcShapeBtn;
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
    fcShapeBtn4: TfcShapeBtn;
    SaveDialog1: TSaveDialog;
    btnSalir: TBitBtn;
// fin: HPP_201004_COB

// inicio: HPP_201011_COB
    TabSheet7: TTabSheet;
    dbgFSC: TwwDBGrid;
    Panel9: TPanel;
    totFSC: TLabel;
    Label15: TLabel;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppBDFSC: TppBDEPipeline;
    ppTitleBand6: TppTitleBand;
    ppDetailBand11: TppDetailBand;
    ppSummaryBand10: TppSummaryBand;
    ppLabel95: TppLabel;
    ppLabel112: TppLabel;
    ppLabel120: TppLabel;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBCalc17: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine34: TppLine;
    ppLabel122: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppLine35: TppLine;
    pprFSC: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    pplblFSC_Representante: TppLabel;
    pplblFSC_UProceso: TppLabel;
    pplblFSC_UPago: TppLabel;
    pplblFSC_NoOperacion: TppLabel;
    pplblFSC_FecOperacion: TppLabel;
    pplblFSC_AnoMes: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLine38: TppLine;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand11: TppSummaryBand;
    ppLabel148: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLine39: TppLine;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppdbFSC: TppBDEPipeline;
    ppLabel130: TppLabel;
    pplTipAso: TppLabel;
// Inicio: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo
    TabSheet8: TTabSheet;
    dbgDevo: TwwDBGrid;
    Label14: TLabel;
    Panel10: TPanel;
    totDev: TLabel;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppDetailBand13: TppDetailBand;
    ppSummaryBand12: TppSummaryBand;
    ppLabel134: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBCalc22: TppDBCalc;
    ppBDCuotasDevo: TppDBPipeline;
// Fin: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo

    procedure FormActivate(Sender: TObject);
    procedure dblUprocesoChange(Sender: TObject);
    procedure dblRepresentanteChange(Sender: TObject);
    procedure dblUPagoChange(Sender: TObject);
    procedure fcSFiltraClick(Sender: TObject);
    procedure rdgCondicionClick(Sender: TObject);
    procedure edtAnoChange(Sender: TObject);
    procedure edtMesChange(Sender: TObject);
    procedure edtAnoExit(Sender: TObject);
    procedure edtMesExit(Sender: TObject);
    procedure dbgCobranzaGlobalDblClick(Sender: TObject);
    procedure dbgAportesDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure dbgCreditosDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure dbgInconsistenciaDrawFooterCell(Sender: TObject;
      Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
      FooterText: String; var DefaultDrawing: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgAportesDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbgCreditosDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbgInconsistenciaDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure dbgCobranzaGlobalDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure edtNoOperacChange(Sender: TObject);
    procedure btnDiferenciaClick(Sender: TObject);
    procedure EdtNumOficioExit(Sender: TObject);
    procedure edtAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edtMesKeyPress(Sender: TObject; var Key: Char);
    procedure btnRepDescargoClick(Sender: TObject);
    procedure dbgCobranzaGlobalDrawFooterCell(Sender: TObject;
      Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
      FooterText: String; var DefaultDrawing: Boolean);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure fcSDetalleClick(Sender: TObject);
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
    procedure fcShapeBtn4Click(Sender: TObject);
    procedure btnSalirClick(Sender: TObject); //SAR2009-0995 - JDCRUZ
// fin: HPP_201004_COB POR JDCRUZ

// inicio: HPP_201011_COB
    procedure dbgFSCDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure FormCreate(Sender: TObject); //SAR2009-0995 - JDCRUZ
// fin: HPP_201011_COB
//
  private
    { Private declarations }

    procedure rescobglobApo();
    procedure rescobglobCuo();
    procedure blankAportes();
    procedure blankCredito();
    procedure blankResumen();
    procedure blankCobranzaGlobal();
    procedure actfootCreditos();
    procedure actfootAportes();
    procedure actfootCuotasManuales();
    procedure actfootFsc();
// Inicio: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo
    procedure actfootDev();
// Fin: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo

    function mesletra(xmes:string):string;

  public
    xfo,xfo1,xfo2,xfo3,xfo4:string;
// Inicio: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo
    vapodes,vcuodes,vmancuo,vtotdes,vdiferencia,vinconsistencias,vFSC, vDevo:Currency;
// Fin: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo
    { Public declarations }
  end;

var
  FCtrlDescargo: TFCtrlDescargo;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFCtrlDescargo.FormActivate(Sender: TObject);
var xsql:string;
begin


// inicio: HPP_201011_COB
{
  PageControl1.TabIndex := 0;
  PageControl2.TabIndex := 0;
}
  xfo:='S';
  xfo1:='S';
  xfo2:='S'; xfo3:='S'; xfo4:='S';
// fin: HPP_201011_COB


  //Combo de Unidad de Proceso
  xsql:='SELECT UPROID,UPRONOM FROM APO102';
  dm1.cdsQry.Close;
  dm1.cdsQry.DataRequest(XSQL);
  dm1.cdsQry.Open;
  dblUproceso.LookupTable  := dm1.cdsQry;
  dblUproceso.LookupField  := 'UPROID';

  //Combo de Representante
  xsql:='SELECT REPRID,REPRAPENOM FROM COB201';
  dm1.cdsQry2.Close;
  dm1.cdsQry2.DataRequest(xsql);
  dm1.cdsQry2.Open;
  dblRepresentante.LookupTable := dm1.cdsQry2;
  dblRepresentante.LookupField := 'REPRID';

//Inicializa la Condición
   rdgCondicion.ItemIndex := 0 ;
   gbFiltro1.Visible := True ;
   gbFiltro2.Visible := False;
   dblRepresentante.Text := '';
   edit5.Text:='';

   blankCobranzaGlobal;
   blankAportes;
   blankCredito;
   blankResumen;

end;

procedure TFCtrlDescargo.dblUprocesoChange(Sender: TObject);
VAR Xsql:string;
begin

if DM1.cdsQry.Locate('UPROID',TRIM(dblUproceso.Text),[]) THEN
   Edit2.Text:= DM1.cdsQry.FieldByName('UPRONOM').AsString
  ELSE
   Edit2.Text:= '';

// Combo de Unidad de Pago
XSQL:= 'SELECT UPAGOID,UPAGONOM FROM APO103 WHERE UPROID='''+TRIM(dblUproceso.Text)+'''';
DM1.cdsQry1.Close;
DM1.cdsQry1.DataRequest(XSQL);
DM1.cdsQry1.Open;
dblUPago.Text := '';
Edit3.Text := '';

dblUPago.LookupTable := DM1.cdsQry1;
dblUPago.LookupField := 'UPAGOID';
blankCobranzaGlobal;

end;

procedure TFCtrlDescargo.dblRepresentanteChange(Sender: TObject);
begin
edit5.Text := dm1.cdsQry2.FieldByname('REPRAPENOM').AsString;
blankCobranzaGlobal;
end;

procedure TFCtrlDescargo.dblUPagoChange(Sender: TObject);
begin
if Length(Trim(dblUPago.Text))= 0 then
   edit3.Text := '' else edit3.Text := dm1.cdsQry1.FieldByname('UPAGONOM').AsString;
blankCobranzaGlobal;
end;

procedure TFCtrlDescargo.fcSFiltraClick(Sender: TObject);
VAR XSQL,XSQL1,xwhere,xwhere1:STRING;
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
   xMonto:Double; //sar2009-0995
// fin: HPP_201004_COB
begin

  xwhere:='';
  xwhere1:='';

  // inicio: HPP_201004_COB POR JDCRUZ
  // Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
  PageControl2.ActivePageIndex := 0;
  // fin: HPP_201004_COB
  
 //Filtro Secundarioa
  if Length(trim(edtNoOperac.Text))<>0 then
     xwhere:=xwhere+' and A.RCOBNOPE='''+trim(edtNoOperac.Text)+'''';
  if Length(trim(edtAno.Text))<>0 then
     xwhere:=xwhere+' and A.RCOBANO='''+trim(edtAno.Text)+''' and A.RCOBMES='''+trim(edtMes.Text)+'''' ;
  if Length(Trim(dblUPago.Text)) <> 0 then
     xwhere1:=' AND A.UPAGOID ='''+dblUPago.Text +'''';

  //Filtro Principal
  if rdgCondicion.ItemIndex =  0 then
     begin
      XSQL1 := 'SELECT A.RCOBID RECIBO,A.RCOBANO ANO,A.RCOBMES MES,SUBSTR(A.CPAGOID,1,6) "C.PAGO",A.CPAGOFECHA "FC.PAGO",A.RCOBNOPE NROOPE,'+
               'A.FRCPREPRE "F.Rcp.Repre.(A)",B.RCOBFOPE "F.Dep.Bnco.(B)",B.RCOBFRECEP "F.Ing.Cob.(C)",'+
               'A.FRCPREPRE-B.RCOBFOPE "(A-B)",B.RCOBFOPE-B.RCOBFRECEP "(B-C)",A.CPAGOMTO MONTO,A.REPRID,A.REPRAPENOM REPRE_NOM,A.DETRCOBID,A.UPROID,A.UPAGOID'+
               ' FROM COB302 A,COB301 B WHERE A.UPROID ='''+dblUproceso.Text+''''+ xwhere1 + xwhere +
               'AND A.RCOBID=B.RCOBID AND A.REPRID=B.REPRID' ;

// Inicio: SPP_201310_COB       : 08/07/2013 - Agregar en el Reporte el Tipo de Asociado
      XSQL := 'SELECT RCOBID RECIBO,RCOBANO ANO,RCOBMES MES,SUBSTR(CPAGOID,1,6) "C.PAGO",SUBSTR(CPAGOFECHA,1,10) "FC.PAGO",SUBSTR(RCOBFOPE,1,10) "F.OPERA",RCOBNOPE NROOPE,CPAGOMTO MONTO,REPRID,REPRAPENOM REPRE_NOM,DETRCOBID,UPROID,UPAGOID,FORPAGOID,'+
              'NUMOFIDIRE,FECOFIDIRE,DIFOFIDIRE, ASOTIPID '+
              ' FROM COB302 A WHERE A.UPROID ='''+dblUproceso.Text+''''+  xwhere1 + xwhere ;
// Fin: SPP_201310_COB       : 08/07/2013 - Agregar en el Reporte el Tipo de Asociado

     end;

  if rdgCondicion.ItemIndex =  1 then
     begin

     XSQL1 := 'SELECT A.RCOBANO ANO,A.RCOBMES MES,SUBSTR(A.CPAGOID,1,6) "C.PAGO",to_char(A.CPAGOFECHA,''dd/mm/yyyy'') "FC.PAGO",substr(A.RCOBNOPE,1,10) NROOPE,'+
               'to_char(A.FRCPREPRE,''dd/mm/yyyy'') "F.Rcp.Rpre.(A)",to_char(B.RCOBFOPE,''dd/mm/yyyy'') "F.Dep.Bnco.(B)",to_char(B.RCOBFRECEP,''dd/mm/yyyy'') "F.Ing.Cob.(C)",'+
               'A.FRCPREPRE-B.RCOBFOPE "(A-B)",B.RCOBFOPE-B.RCOBFRECEP "(B-C)",A.RCOBID RECIBO,A.CPAGOMTO MONTO,A.REPRID,A.REPRAPENOM REPRE_NOM,A.DETRCOBID,A.UPROID,A.UPAGOID'+
               ' FROM COB302 A,COB301 B WHERE A.REPRID ='''+trim(dblRepresentante.Text)+'''' + xwhere +
               'AND A.RCOBID=B.RCOBID AND A.REPRID=B.REPRID' ; { +
               ' ORDER BY A.FRCPREPRE,B.RCOBFOPE,B.RCOBFRECEP';  }

// Inicio: SPP_201310_COB       : 08/07/2013 - Agregar en el Reporte el Tipo de Asociado
      XSQL := 'SELECT RCOBID RECIBO,RCOBANO ANO,RCOBMES MES,SUBSTR(CPAGOID,1,6) "C.PAGO",SUBSTR(CPAGOFECHA,1,10) "FC.PAGO",SUBSTR(RCOBFOPE,1,10) "F.OPERA",RCOBNOPE NROOPE,CPAGOMTO MONTO,REPRID,REPRAPENOM REPRE_NOM,DETRCOBID,UPROID,UPAGOID,FORPAGOID,'+
              'NUMOFIDIRE,FECOFIDIRE,DIFOFIDIRE, ASOTIPID '+
              ' FROM COB302 A WHERE A.REPRID ='''+trim(dblRepresentante.Text)+'''' +xwhere ;
// Fin: SPP_201310_COB       : 08/07/2013 - Agregar en el Reporte el Tipo de Asociado
     end;

  DM1.cdscEdu.Close;
  DM1.cdscEdu.DataRequest(XSQL);
  DM1.cdscEdu.Open;
  TNumericField(DM1.cdscEdu.FieldByName('MONTO')).DisplayFormat:='###,###,###.00';
  TNumericField(DM1.cdscEdu.FieldByName('MONTO')).DisplayWidth :=13;
  dbgCobranzaGlobal.DataSource := DM1.dsCEdu;

  DM1.cdsTRela.Close;
  DM1.cdsTRela.DataRequest(XSQL1);
  DM1.cdsTRela.Open;
  TNumericField(DM1.cdsTRela.FieldByName('MONTO')).DisplayFormat:='###,###,###.00';
  TNumericField(DM1.cdsTRela.FieldByName('(A-B)')).DisplayFormat:='####';
  TNumericField(DM1.cdsTRela.FieldByName('(B-C)')).DisplayFormat:='####';
  TNumericField(DM1.cdsTRela.FieldByName('(B-C)')).DisplayWidth := 4;
  TNumericField(DM1.cdsTRela.FieldByName('(A-B)')).DisplayWidth := 4;

  dbgGestionRepresentante.DataSource:= DM1.dsTRela;

// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
  xMonto:=0;
  DM1.cdsCEdu.First;
  while not DM1.cdsCEdu.Eof do
  begin
     xMonto:=xMonto+DM1.cdsCEdu.fieldByname('MONTO').asfloat;
     DM1.cdsCEdu.Next;
  end;
  DM1.cdsCEdu.First;
  dbgCobranzaGlobal.ColumnByName('MONTO').FooterValue := FormatFloat('###,###,###.00',xMonto) ;
  vapodes:= xMonto;
// fin: HPP_201004_COB POR JDCRUZ

  dbgCobranzaGlobal.SetFocus;

end;

procedure TFCtrlDescargo.rdgCondicionClick(Sender: TObject);
begin
if rdgCondicion.ItemIndex= 0 then
   begin
    gbFiltro1.Visible := True ;
    gbFiltro2.Visible := False;
    dblRepresentante.Text := '';
    edit5.Text:='';
   end;

if rdgCondicion.ItemIndex= 1 then
   begin
       gbFiltro2.Visible := True;
       gbFiltro1.Visible := False;
       dblUproceso.Text := '';
        Edit2.Text      := '';
       dblUPago.Text    := '';
   end;
end;

procedure TFCtrlDescargo.edtAnoChange(Sender: TObject);

begin

if Length(trim(edtAno.Text))<>0 then
 begin
   if ((StrToInt(edtAno.Text)<=0) or (StrToInt(edtAno.Text)<2003)) and (Length(trim(edtAno.Text))=4) then
     begin
       ShowMessage('El año de Cobranza debe ser mayor o igual al 2003');
       edtAno.SetFocus;
     end;
 End;
 blankCobranzaGlobal;
end;

procedure TFCtrlDescargo.edtMesChange(Sender: TObject);
begin

if Length(trim(edtMes.Text))<>0 then
 begin
  if ((StrToInt(edtMes.Text)<1) or (StrToInt(edtMes.Text)>12)) and (Length(trim(edtMes.Text))=2) then
     begin
       ShowMessage('El mes es inconsistente, debe ser entre 1 y 12');
       edtmes.SetFocus;
     end;
 end;
 blankCobranzaGlobal;
end;

procedure TFCtrlDescargo.edtAnoExit(Sender: TObject);
begin
if Length(trim(edtAno.Text))<>0 then
  begin
    if ((StrToInt(edtAno.Text)<=0) or (StrToInt(edtAno.Text)<2003)) and (Length(trim(edtAno.Text))=4)   then
       begin
        ShowMessage('El año de Cobranza debe ser mayor o igual al 2003');
        edtAno.SetFocus;
       end;
  end;
end;

procedure TFCtrlDescargo.edtMesExit(Sender: TObject);
begin
if  Length(trim(edtMes.text))<>0 then
   begin
      if ((StrToInt(edtMes.Text)<1) or (StrToInt(edtMes.Text)>12)) and (Length(trim(edtMes.Text))=2)    then
       begin
        ShowMessage('El mes es inconsistente, debe ser entre 1 y 12');
        edtmes.SetFocus;
      end;
   end;
fcSFiltra.SetFocus;

end;

procedure TFCtrlDescargo.dbgCobranzaGlobalDblClick(Sender: TObject);
VAR XSQL,VRCOBID,VRDETRCOBID,VRCOBFOPE,VRCOBNOPE,VFORPAGOID,VUPROID:STRING ;
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
 xMonto, VCUODE, CINCONSISTENCIAS : double;//sar2009-0995
// fin: HPP_201004_COB

begin

   Screen.Cursor:=crHourGlass;

   VRCOBID     := DM1.cdscEdu.FieldByName('RECIBO').AsString;
   VRDETRCOBID := DM1.cdscEdu.FieldByName('DETRCOBID').AsString;
   VRCOBFOPE   := DM1.cdscEdu.FieldByName('F.OPERA').AsString;
   VRCOBNOPE   := DM1.cdscEdu.FieldByName('NROOPE').AsString;
   VFORPAGOID  := DM1.cdscEdu.FieldByName('FORPAGOID').AsString;
   VUPROID     := DM1.cdscEdu.FieldByName('UPROID').AsString;

  //Aportes descargados
    XSQL:='SELECT A.ASOCODMOD COD_MOD ,SUBSTR(A.ASOAPENOM,1,30) NOMBRES,A.TRANSANO AÑO,A.TRANSMES MES,A.TRANSMTO APORTE,A.UPROID U_PRO,A.UPAGOID U_PAG,A.USEID USE,SUBSTR(A.TRANSNOPE,1,10) N_OPE,A.TRANSFOPE F_OPE,A.FORPAGOABR PAGO,A.FREG F_REG,'+
          'A.APOSEC PERIODO,A.CNTANOMM CONTABI ,B.USENOM '+
          'FROM APO301 A,APO101 B WHERE '+
          'A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPAGOID=B.UPAGOID(+) AND '+
          'A.RCOBID='''+VRCOBID+''' AND A.DETRCOBID='''+VRDETRCOBID+''' AND A.TRANSNOPE='''+VRCOBNOPE+''' AND A.TRANSFOPE='''+VRCOBFOPE+''' ORDER BY A.UPROID,A.USEID';
    DM1.cdsQry4.Close;
    DM1.cdsQry4.DataRequest(XSQL);
    DM1.cdsQry4.Open;
    TNumericField(DM1.cdsQry4.FieldByName('APORTE')).DisplayFormat:='###,###,###.00';

// inicio: HPP_201011_COB
{
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
    xMonto :=0;
    DM1.cdsQry4.First;
    while not DM1.cdsQry4.Eof do
    begin
        xMonto := xMonto + DM1.cdsQry4.FieldByName('APORTE').AsFloat;
        DM1.cdsQry4.Next;
    end;
    DM1.cdsQry4.First;
    dbgAportes.ColumnByName('APORTE').FooterValue := FormatFloat('###,###,###.00',xMonto) ;
    totapordesc.Caption := FormatFloat('###,###,###.00',xMonto);
    vapodes:=xMonto;
// fin: HPP_201004_COB
}
    actfootAportes;
// fin: HPP_201011_COB


  //Creditos descargados
    XSQL:='SELECT A.ASOCODMOD COD_MOD,SUBSTR(A.ASOAPENOM,1,30) NOMBRES,substr(A.CREDID,9,7) CREDITO,substr(A.CRECUOTA,1,4) CUOTA,A.CREMTOCOB COBRADO,A.UPROID U_PRO,A.UPAGOID U_PAG,A.USEID USE,SUBSTR(A.NROOPE,1,10) N_OPE,A.FOPERAC F_OPE,' +
          'A.FORPAGOABR PAGO,A.FREG F_REG,A.CNTANOMM CONTABI,B.USENOM '+
          'FROM CRE310 A,APO101 B WHERE '+
          'A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPAGOID=B.UPAGOID(+) AND '+
          'A.RCOBID='''+VRCOBID+''' AND A.DETRCOBID='''+VRDETRCOBID+''' AND A.NROOPE='''+VRCOBNOPE+''' AND A.FOPERAC='''+VRCOBFOPE+''' AND (A.CREESTID <>''13'' AND A.CREESTID<>''04'') ORDER BY A.UPROID,A.USEID';
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(XSQL);
    DM1.cdsQry5.Open;
    TNumericField(DM1.cdsQry5.FieldByName('COBRADO')).DisplayFormat:='###,###,###.00';

// inicio: HPP_201011_COB
{
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
    xMonto :=0;
    DM1.cdsQry5.First;
    while not DM1.cdsQry5.Eof do
    begin
        xMonto := xMonto + DM1.cdsQry5.FieldByName('COBRADO').AsFloat;
        DM1.cdsQry5.Next;
    end;
    DM1.cdsQry5.First;
    dbgCreditos.ColumnByName('COBRADO').FooterValue := FormatFloat('###,###,###.00',xMonto) ;
    TotCuotaDes.Caption := FormatFloat('###,###,###.00',xMonto);
    vcuodes := xMonto;
// fin: HPP_201004_COB
}
    actfootCreditos;
// fin: HPP_201011_COB


 //Creditos ingresados manualmente
    XSQL:='SELECT A.ASOCODMOD COD_MOD,SUBSTR(A.ASOAPENOM,1,30) NOMBRES,substr(A.CREDID,9,7) CREDITO,substr(A.CRECUOTA,1,4) CUOTA,A.CREMTOCOB COBRADO,A.UPROID U_PRO,A.UPAGOID U_PAG,A.USEID USE,SUBSTR(A.NROOPE,1,10) N_OPE,A.FOPERAC F_OPE,' +
          'A.FORPAGOABR PAGO,A.FREG F_REG,A.CNTANOMM CONTABI,B.USENOM '+
          'FROM CRE310 A ,APO101 B WHERE '+
          'A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPAGOID=B.UPAGOID(+) AND '+
          'A.CREFPAG='''+VRCOBFOPE+''' AND A.CREDOCPAG='''+VRCOBNOPE+''' AND A.FORPAGABR='''+VFORPAGOID+''' AND A.UPROID='''+VUPROID+''' AND (A.CREESTID <>''13'' AND A.CREESTID<>''04'') AND A.RCOBID IS NULL ORDER BY A.UPROID,A.USEID';
    DM1.cdsEjecuta.Close;
    DM1.cdsEjecuta.DataRequest(XSQL);
    DM1.cdsEjecuta.Open;
    TNumericField(DM1.cdsEjecuta.FieldByName('COBRADO')).DisplayFormat:='###,###,###.00';
// inicio: HPP_201011_COB
{
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
    xMonto :=0;
    DM1.cdsEjecuta.First;
    while not DM1.cdsEjecuta.Eof do
    begin
        xMonto := xMonto + DM1.cdsEjecuta.FieldByName('COBRADO').AsFloat;
        DM1.cdsEjecuta.Next;
    end;
    DM1.cdsEjecuta.First;
    dbgInconsistencia.ColumnByName('COBRADO').FooterValue := FormatFloat('###,###,###.00',xMonto) ;
    TotCuotaManual.Caption  := FormatFloat('###,###,###.00',xMonto);
    vinconsistencias := xMonto;
// fin: HPP_201004_COB
}
    actfootCuotasManuales;
// fin: HPP_201011_COB

// inicio: HPP_201011_COB
//Pagos al FSC por Planilla
    XSQL:='SELECT A.ASOCODMOD COD_MOD,SUBSTR(A.ASOAPENOM,1,30) NOMBRES,A.NUM_DEU CREDITO,'' '' CUOTA,A.IMP_COB_DEU COBRADO,A.UPROID U_PRO,A.UPAGOID U_PAG,A.USEID USE,SUBSTR(A.NROOPE,1,10) N_OPE,A.FOPERAC F_OPE,' +
          'A.FORPAGABR PAGO,A.FEC_CRE_COB_FSC F_REG,A.CNTANOMM CONTABI,B.USENOM '+
          'FROM COB_FSC_PAGOS_AL_FSC A ,APO101 B WHERE '+
          'A.UPROID=B.UPROID(+) AND A.USEID=B.USEID(+) AND A.UPAGOID=B.UPAGOID(+) AND '+
// Inicio: SPP_201313_COB       : 30/10/2013 - Pagos al FSC por Planilla el filtro debe ser sin UPRO
          'A.RCOBID='''+VRCOBID+''' AND A.DETRCOBID='''+VRDETRCOBID+''' AND A.FOPERAC='''+VRCOBFOPE+''' ' +
          ' AND A.NROOPE='''+VRCOBNOPE+''' AND A.FORPAGABR='''+VFORPAGOID+''' ' +//AND A.UPROID='''+VUPROID+'''
          ' AND (A.EST_COB_COD <>''13'' AND A.EST_COB_COD<>''04'') AND A.RCOBID IS NOT NULL ORDER BY A.UPROID,A.USEID';
// Fin: SPP_201313_COB       : 30/10/2013 - Pagos al FSC por Planilla el filtro debe ser sin UPRO
    DM1.cdsUbigeo .Close;
    DM1.cdsUbigeo.DataRequest(XSQL);
    DM1.cdsUbigeo.Open;

    TNumericField(DM1.cdsUbigeo.FieldByName('COBRADO')).DisplayFormat:='###,###,###.00';
    actfootFsc;
// fin: HPP_201011_COB


 // IF (DM1.cdsQry4.RecordCount > 0) OR (DM1.cdsQry5.RecordCount>0) THEN
  //    BEGIN
        GroupBox1.Enabled:=False;
// inicio: HPP_201004_COB POR JDCRUZ
// se desactiva el focus hacia el grid de Aportes ya que se pasa el control de
// activacion de páginas mas abajo
{
         dbgAportes.SetFocus;
}
// fin: HPP_201004_COB
    //    END;

// inicio: HPP_201011_COB
   If (DM1.cdsQry4.RecordCount > 0) OR (DM1.cdsQry5.RecordCount>0) THEN
       Begin
         PageControl1.TabIndex := 0;
         dbgAportes.SetFocus;
       End;

    dbgAportes.DataSource       := DM1.dsQry4;
    dbgCreditos.DataSource      := DM1.dsQry5;
    dbgInconsistencia.DataSource:= DM1.dsEjecuta;
    dbgFSC.DataSource           := DM1.dsUbigeo;
// fin: HPP_201011_COB

    totcobranzaglobal.Caption := FormatFloat('###,###,###.00',DM1.cdscEdu.FieldByname('MONTO').AsFloat);

   //hago esto porque no actualizava las variables del Resumen sino pasaba por cada pagina por el momento lo hago asi hasta no encontrar
   //otra solucion.
// inicio: HPP_201011_COB
    {PageControl1.TabIndex  := 0;
    PageControl1.TabIndex  := 1;
    PageControl1.TabIndex  := 2;
    PageControl1.TabIndex  := 3; }
// fin: HPP_201011_COB


// Inicio: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo
   xSQL:='select  A.ASOID, A.TRANSANO, A.TRANSMES, ''N'' TMONID, E.MONREV IMPORTE, B.ASOAPENOM, '
        +   'USUCRE USUARIO, A.FECCRE FREG, A.HORCRE HREG, E.CREFPAG, E.NROOPE, E.FOPERAC, '
        +   'A.FORPAGID, B.ASOCODMOD, A.UPROID, A.UPAGOID, A.USEID, F.USENOM, '
        +   'B.ASOTIPID, C.UPRONOM, D.UPAGONOM  '
        +' FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D, APO101 F '
        +' WHERE A.TRANSANO=' + Quotedstr(edtAno.Text)
        +  ' AND A.TRANSMES=' + Quotedstr(edtMes.Text)
        +  ' AND A.ANODEV=E.ANODEV AND A.CORDEV=E.CORDEV '
        +  ' AND a.UPROID=' + Quotedstr(dblUproceso.text)
// Inicio: SPP_201313_COB       : 30/10/2013 - Pagos al FSC por Planilla el filtro debe ser sin UPRO
//        +  ' AND a.UPAGOID=' + QuotedStr(TRIM(dblUPago.Text))
// Fin: SPP_201313_COB       : 30/10/2013 - Pagos al FSC por Planilla el filtro debe ser sin UPRO
        +  ' and a.RCOBID='''+VRCOBID+''' AND a.DETRCOBID='''+VRDETRCOBID+''' '
        +  ' AND A.ASOID = B.ASOID '
        +  ' AND C.UPROID(+)=A.UPROID '
        +  ' AND D.UPROID(+)=A.UPROID and D.UPAGOID(+)=A.UPAGOID '
        +  ' AND A.UPROID=F.UPROID(+) AND A.USEID=F.USEID(+) AND A.UPAGOID=F.UPAGOID(+)';

   DM1.cdsRepDev.Close;
   DM1.cdsRepDev.DataRequest( xSQL );
   DM1.cdsRepDev.Open;
   dbgDevo.DataSource:=DM1.dsRepDev;
   actfootDev;

  //Actualiza en el resumen el Total descargado
    vtotdes := vapodes+vcuodes+vinconsistencias+vFSC+vDevo;
// Fin: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo

    TotalDescargado.Caption   :=  FormatFloat('###,###,###.00',vtotdes);

  //Actualiza en el resumen la Diferencia
    vdiferencia := DM1.cdscEdu.FieldByname('MONTO').AsFloat-vtotdes;
    if vdiferencia<>0 then
       begin
         if vdiferencia<0 then
           btnDiferencia.Font.Color := clred
       else
          btnDiferencia.Font.Color := clBlue;
         pnlNumeroOficio.Visible:=True;
         Label12.Visible := True;
         btnDiferencia.Visible:= True;
         btnDiferencia.Caption :=  FormatFloat('###,###,###.00',vdiferencia);

       end;

    Screen.Cursor:=crDefault;
end;

procedure TFCtrlDescargo.dbgAportesDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);

var currMonto : Currency ;
begin

// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
  //hace lento el sistema
 (*
 if xfo1='S' then
  begin
   currMonto := dm1.OperClientDataSet(dm1.cdsQry4,'SUM(APORTE)','');
   vapodes:= currMonto;
   dbgAportes.ColumnByName('APORTE').FooterValue := FormatFloat('###,###,###.00',currMonto) ;
   totapordesc.Caption := FormatFloat('###,###,###.00',vapodes);
  end;
  *)
// fin: HPP_201004_COB

// inicio: HPP_201011_COB
 if xfo1='S' then
  begin
     actfootAportes;
     xfo1:='N';
  end;
// fin: HPP_201011_COB

end;

//Blanquea el Grid de Aportes
procedure TFCtrlDescargo.blankAportes;
var xsql:string;
begin
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
   XSQL:='SELECT ASOCODMOD "COD.MOD.",SUBSTR(ASOAPENOM,1,38) NOMBRES,TRANSANO AÑO,TRANSMES MES,TRANSMTO APORTE,UPROID "U.PRO",UPAGOID "U.PAG",USEID USE,SUBSTR(TRANSNOPE,1,10) "N.OPE",TRANSFOPE "F.OPE",FORPAGOABR PAGO,FREG "F.REG",APOSEC PERIODO,CNTANOMM CONTABI '+
         ' FROM APO301 WHERE 1=2 ';
         //'FROM APO301 WHERE RCOBID=''AAAAA''';
// fin: HPP_201004_COB
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(XSQL);
   DM1.cdsQry4.Open;
   dbgAportes.DataSource :=  DM1.dsQry4;

// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
   dbgAportes.ColumnByName('APORTE').FooterValue := FormatFloat('###,###,###.00',0) ;
   totapordesc.Caption := FormatFloat('###,###,###.00',0);
   vapodes:=0;
// fin: HPP_201004_COB
end;

procedure TFCtrlDescargo.fcShapeBtn1Click(Sender: TObject);
begin
  GroupBox1.Enabled := True;
  // inicio: HPP_201004_COB POR JDCRUZ
  // Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
  PageControl2.ActivePageIndex := 0;
  // fin: HPP_201004_COB
  
  dbgCobranzaGlobal.SetFocus;

  xfo1:='S';
  xfo:= 'S';
// inicio: HPP_201011_COB
  xfo2:='S';
  xfo3:='S';
  xfo4:='S';
  If DM1.cdsUbigeo.Active = True then Dm1.cdsUbigeo.EmptyDataSet;
// fin: HPP_201011_COB

  blankAportes;
  blankCredito;
  blankResumen;
  PageControl1.TabIndex := 0;
end;

//Blanquea el Grid de Creditos
procedure TFCtrlDescargo.blankCredito;
var xsql:string;
begin
    XSQL:='SELECT ASOCODMOD "COD.MOD.",SUBSTR(ASOAPENOM,1,30) NOMBRES,substr(CREDID,9,7) CREDITO,substr(CRECUOTA,1,4) CUOTA,CREMTOCOB COBRADO,UPROID "U.PRO",UPAGOID "U.PAG",USEID USE,SUBSTR(NROOPE,1,10) "N.OPE",FOPERAC "F.OPE",FORPAGOABR PAGO,FREG "F.REG",' +
          'CNTANOMM CONTABI '+
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
          'FROM CRE310 WHERE 1=2';
          //'FROM CRE310 WHERE RCOBID=''AAAA''';
// fin: HPP_201004_COB
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(XSQL);
    DM1.cdsQry5.Open;
    dbgCreditos.DataSource := DM1.dsQry5;

// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
    dbgCreditos.ColumnByName('COBRADO').FooterValue := FormatFloat('###,###,###.00',0) ;
    TotCuotaDes.Caption  := FormatFloat('###,###,###.00',0);
     vcuodes := 0;
// fin: HPP_201004_COB
end;

procedure TFCtrlDescargo.dbgCreditosDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);

var currMonto : Currency ;
begin
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
 (*
 if xfo1='S' then
   begin
    currMonto := dm1.OperClientDataSet(dm1.cdsQry5,'SUM(COBRADO)','');
    vcuodes := currMonto;
    dbgCreditos.ColumnByName('COBRADO').FooterValue := FormatFloat('###,###,###.00',currMonto) ;
    TotCuotaDes.Caption  := FormatFloat('###,###,###.00',vcuodes);
   end;
   *)
// fin: HPP_201004_COB

// inicio: HPP_201011_COB
 if xfo2='S' then
   begin
    actfootCreditos;
    xfo2:='N'
   end;
// fin: HPP_201011_COB

end;

//Blanqua variables de resumen
procedure TFCtrlDescargo.blankResumen;
begin
  totapordesc.Caption    := '';
  TotCuotaDes.Caption     := '';
  TotCuotaManual.Caption  := '';
  TotalDescargado.Caption := '';
  totcobranzaglobal.Caption := '';
  btnDiferencia.Caption:= '';
  Label12.Visible := false;
  btnDiferencia.Visible:= false;
  EdtNumOficio.Text:='';
  pnlNumeroOficio.Visible:=False;

end;

procedure TFCtrlDescargo.dbgInconsistenciaDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
var currMonto : Currency ;
begin
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
   //HACE LENTO EL SISTEMA
   (*
   if xfo1='S' then
    begin
     currMonto := dm1.OperClientDataSet(dm1.cdsEjecuta,'SUM(COBRADO)','');
     vinconsistencias := currMonto;
     dbgInconsistencia.ColumnByName('COBRADO').FooterValue := FormatFloat('###,###,###.00',currMonto) ;
     TotCuotaManual.Caption  := FormatFloat('###,###,###.00',vinconsistencias);
    end;
    *)
// fin: HPP_201004_COB

// inicio: HPP_201011_COB
   if xfo3='S' then
    begin
     actfootCuotasManuales;
     xfo3:='N';
    end;
// fin: HPP_201011_COB

end;

procedure TFCtrlDescargo.blankCobranzaGlobal;
var Xsql:string;
begin

   XSQL := 'SELECT RCOBID RECIBO,RCOBANO ANO,RCOBMES MES,SUBSTR(CPAGOID,1,6) "C.PAGO",SUBSTR(CPAGOFECHA,1,10) "FC.PAGO",SUBSTR(RCOBFOPE,1,10) "F.OPERA",RCOBNOPE NROOPE,CPAGOMTO MONTO,REPRID,REPRAPENOM REPRE_NOM,DETRCOBID,UPROID,UPAGOID,FORPAGOID,'+
           'NUMOFIDIRE,FECOFIDIRE,DIFOFIDIRE '+
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
           ' FROM COB302 WHERE 1=2';
           //' FROM COB302 WHERE RCOBID= ''AAAAA''';
// fin: HPP_201004_COB
  DM1.cdscEdu.Close;
  DM1.cdscEdu.DataRequest(XSQL);
  DM1.cdscEdu.Open;
  dbgCobranzaGlobal.DataSource := DM1.dsCEdu;
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
  dbgCobranzaGlobal.ColumnByName('MONTO').FooterValue := FormatFloat('###,###,###.00',0) ;
  vapodes:= 0;
// fin: HPP_201004_COB
end;

procedure TFCtrlDescargo.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 Then
 if   (ActiveControl is TwwDBLookupCombodlg) or
      (ActiveControl is TwwDBLookupCombo) or
      (ActiveControl is TCheckBox) then
      Begin
       Key:=#0;
       Perform(CM_DialogKey,VK_TAB,0);
      end
   else
      Begin
        Key:=#0;
        Perform(CM_DialogKey,VK_TAB,0);
      end;
end;

procedure TFCtrlDescargo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

dm1.cdsQry.Close;
DM1.cdsQry.IndexFieldNames := '';
dm1.cdsQry1.Close;
DM1.cdsQry1.IndexFieldNames := '';
dm1.cdsQry2.Close;
DM1.cdsQry2.IndexFieldNames := '';
dm1.cdscEdu.Close;
DM1.cdscEdu.IndexFieldNames := '';
dm1.cdsQry4.Close;
DM1.cdsQry4.IndexFieldNames := '';
dm1.cdsQry5.Close;
DM1.cdsQry5.IndexFieldNames := '';
dm1.cdsEjecuta.Close;
DM1.cdsEjecuta.IndexFieldNames := '';
dm1.cdsUPro.Close;
dm1.cdsUPro.IndexFieldNames := '';
// inicio: HPP_201011_COB
Dm1.cdsUbigeo.Close;
Dm1.cdsUbigeo.IndexFieldNames:='';
// fin: HPP_201011_COB
end;

procedure TFCtrlDescargo.dbgAportesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if Field.DisplayName='APORTE' then
     begin
       //dbgAportes.Canvas.Brush.Color := clBtnFace;
       dbgAportes.Canvas.Font.Color := $00FF8000;
       dbgAportes.DefaultDrawDataCell(Rect, Field, State);
     end;

end;

procedure TFCtrlDescargo.dbgCreditosDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if Field.DisplayName='COBRADO' then
     begin
       //dbgCreditos.Canvas.Brush.Color := clBtnFace;
       dbgCreditos.Canvas.Font.Color := $00FF8000;
       dbgCreditos.DefaultDrawDataCell(Rect, Field, State);
     end;
end;

procedure TFCtrlDescargo.dbgInconsistenciaDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 if Field.DisplayName='COBRADO' then
     begin
       //dbgCreditos.Canvas.Brush.Color := clBtnFace;
       dbgInconsistencia.Canvas.Font.Color := $00FF8000;
       dbgInconsistencia.DefaultDrawDataCell(Rect, Field, State);
     end;
end;

procedure TFCtrlDescargo.dbgCobranzaGlobalDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 if Field.DisplayName='MONTO' then
     begin
       dbgCobranzaGlobal.Canvas.Font.Color := $00FF8000;
       dbgCobranzaGlobal.DefaultDrawDataCell(Rect, Field, State);
     end;

 if dm1.cdsCEdu.FieldByName('NUMOFIDIRE').AsString<>'' THEN
     begin
       dbgCobranzaGlobal.Canvas.Font.Color := CLRED;
       dbgCobranzaGlobal.DefaultDrawDataCell(Rect, Field, State);
     end;
     
end;

procedure TFCtrlDescargo.edtNoOperacChange(Sender: TObject);
begin
blankCobranzaGlobal;
end;

procedure TFCtrlDescargo.btnDiferenciaClick(Sender: TObject);
var xsql,vgraba:string;
begin

  vgraba:='S';

  if Length(trim(DM1.cdscEdu.FieldByName('NUMOFIDIRE').AsString))<>0 then
     begin
       if MessageDlg('Oficio ya fue generado, Num Oficio :'+DM1.cdscEdu.FieldByName('NUMOFIDIRE').AsString+'  Diferencia :'+
                       DM1.cdscEdu.FieldByName('DIFOFIDIRE').AsString+'  Fecha: '+DM1.cdscEdu.FieldByName('FECOFIDIRE').AsString+' desea imprimirlo nuevamente',mtConfirmation,[mbYes,mbNo], 0) = mrYes then
          begin
            vdiferencia       := dm1.cdsCEdu.FieldByName('DIFOFIDIRE').AsFloat;
            EdtNumOficio.Text := dm1.cdsCEdu.FieldByName('NUMOFIDIRE').AsString;
            vgraba:='N';
          end
       else exit;
     end;

    if Length(trim(EdtNumOficio.Text))=0 then
      begin
        ShowMessage('Debe ingresar el numero de oficio');
        EdtNumOficio.SetFocus;
        exit;
      end;

   if vgraba='S' then
      begin
       if MessageDlg('Va ha generar Oficio para la Dirección Regional, esta seguro..?',mtConfirmation,[mbYes,mbNo], 0) = mrNo then
          begin
            EdtNumOficio.SetFocus;
            exit;
          end;
      end;

  Screen.Cursor:=crHourGlass;
 {//Saca el nombre de la unidad de proceso, nombre de oficina y ciudad
    xsql:= 'select A.UPROID,A.UPRONOM,CIUDDES,OFDESNOM from apo102 a,apo123 b,APO110 C where a.uproid='''+DM1.cdscEdu.FieldByName('UPROID').AsString+''' ' +
           ' AND A.CIUDID=B.CIUDID(+) AND A.OFDESID=C.OFDESID(+)';
    DM1.cdsUPro.Close;
    DM1.cdsUPro.DataRequest(Xsql);
    DM1.cdsUPro.Open;} //por requerimiento de shirley de saca la informacion de la Unidad de Preceso 28/10/2005 10:30

  //Saca el nombre de la unidad de pago, nombre de oficina y ciudad
    xsql:= 'select A.UPROID,A.UPAGOID,A.UPAGONOM,B.CIUDDES from apo103 a,apo123 b '+
           'where a.uproid='''+DM1.cdscEdu.FieldByName('UPROID').AsString+''' and  a.upagoid='''+DM1.cdscEdu.FieldByName('UPAGOID').AsString +''' '+
           ' AND A.CIUDID=B.CIUDID(+)';
    DM1.cdsUPago.Close;
    DM1.cdsUPago.DataRequest(Xsql);
    DM1.cdsUPago.Open;

   pploficion.Caption   := trim(EdtNumOficio.Text)+'-'+FormatDateTime('yyyy',date)+'-DM-COB';
   ppLPeriodo.Caption   := mesletra(DM1.cdscEdu.FieldByName('mes').AsString)+'-'+DM1.cdscEdu.FieldByName('aNo').AsString ;
   pplCPago.Caption     := 'N° '+DM1.cdscEdu.FieldByName('C.PAGO').AsString;
// Inicio SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
   //ppLFCPago.Caption    :=  FormatDateTime('dd/MM/yyyy',DM1.cdscEdu.FieldByName('FC.PAGO').AsDateTime);
   ppLFCPago.Caption    := DM1.cdscEdu.FieldByName('FC.PAGO').AsString;
// Fin SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
   ppLMtoCompro.Caption := FormatFloat('###,###,###.00',DM1.cdscEdu.FieldByname('MONTO').AsFloat);
   ppLMtoDisk.Caption   := FormatFloat('###,###,###.00',vtotdes);
   ppLUpronom.Caption   := TRIM(DM1.cdsUPago.FieldByName('UPAGONOM').AsString);
   ppLRepre.Caption     := TRIM(DM1.cdscEdu.FieldByName('REPRE_NOM').AsString)+' Supervisor/Representante de Derrama Magisterial en la ciudad de '+TRIM(DM1.cdsUPago.FieldByName('CIUDDES').AsString);
   ppLProvincia.Caption := TRIM(DM1.cdsUPago.FieldByName('CIUDDES').AsString);
   pplPerUpronom.Caption:= trim(ppLPeriodo.Caption)+' que la '+TRIM(DM1.cdsUPago.FieldByName('UPAGONOM').AsString);
   ppLFecha.Caption     := 'Jesús Maria,'+FormatDateTime('dd',date)+' de '+ FormatDateTime('mmmm',date)+' del '+ FormatDateTime('yyyy',date);

   if vdiferencia>0 then
     begin
      ppLDiferencia1.Caption := 'S/.'+FormatFloat('###,###,###.00',vdiferencia)+' Nuevos Soles';
      ppLMtoDife.Caption  := FormatFloat('###,###,###.00',vdiferencia);

      ppLlinea1.Caption   := 'En  este  sentido, solicitamos  se sirva ordenar a quien corresponda, nos remita el listado';
      ppLlinea2.Caption   := 'con  la  información  faltante con la finalidad de poder registrarlo en nuestro sistema  y de';
      ppLlinea3.Caption   := 'ese modo actualizar la cuenta individual de los docentes.';
   end;

   if vdiferencia<0 then
     begin
      ppLDiferencia1.Caption := 'S/.'+FormatFloat('###,###,###.00',vdiferencia*-1)+' Nuevos Soles';
      ppLMtoDife.Caption  := FormatFloat('###,###,###.00',vdiferencia*-1);
      ppLlinea1.Caption   := 'En  este  sentido, solicitamos se sirva ordenar a quien corresponda, nos efectué el reintegro';
      ppLlinea2.Caption   := 'o listado de anulados para poder actualizar la cuenta individual de los docentes.';
      ppLlinea3.Caption   := '';
   end;
   Screen.Cursor:=crDefault;
// inicio: HPP_201011_COB
   //xfo1:='N';
   //xfo :='N';
   RDifPositvo.Print;
   //xfo1:='S';
   //xfo :='S';
// fin: HPP_201011_COB

   //Actualiza archivo COB302
    if vgraba='S' then
      begin
        dm1.cdsCEdu.Edit;
        dm1.cdsCEdu.FieldByName('NUMOFIDIRE').AsString :=trim(EdtNumOficio.Text);
        dm1.cdsCEdu.FieldByName('DIFOFIDIRE').AsString :=CurrToStr(vdiferencia);
        dm1.cdsCEdu.FieldByName('FECOFIDIRE').AsString :=DateTimeToStr(date);

        xSql := 'UPDATE COB302 SET NUMOFIDIRE='''+ trim(EdtNumOficio.Text)+''','+
                                 'DIFOFIDIRE='+ CurrToStr(vdiferencia) +','+
                                 'FECOFIDIRE='''+ DateTimeToStr(date)+''''+
                                 '  WHERE RCOBID     ='''+dm1.cdscEdu.FieldByName('RECIBO').AsString +''''+
                                    ' AND DETRCOBID ='''+dm1.cdscEdu.FieldByName('DETRCOBID').AsString  +''''+
                                    ' AND REPRID    ='''+dm1.cdscEdu.FieldByName('REPRID').AsString  +''''+
                                    ' AND RCOBFOPE  ='''+dm1.cdscEdu.FieldByName('F.OPERA').AsString  +''''+
                                    ' AND RCOBNOPE  ='''+dm1.cdscEdu.FieldByName('NROOPE').AsString  +'''';
        dm1.cdsEjecuta.DataRequest(xSql);
        dm1.cdsEjecuta.Execute;
      end;

end;

function TFCtrlDescargo.mesletra(xmes: string): string;
begin
  if xmes='01' then RESULT:='ENERO';
  if xmes='02' then RESULT:='FEBRERO';
  if xmes='03' then RESULT:='MARZO';
  if xmes='04' then RESULT:='ABRIL';
  if xmes='05' then RESULT:='MAYO';
  if xmes='06' then RESULT:='JUNIO';
  if xmes='07' then RESULT:='JULIO';
  if xmes='08' then RESULT:='AGOSTO';
  if xmes='09' then RESULT:='SETIEMBRE';
  if xmes='10' then RESULT:='OCTUBRE';
  if xmes='11' then RESULT:='NOVIEMBRE';
  if xmes='12' then RESULT:='DICIEMBRE';

end;

procedure TFCtrlDescargo.EdtNumOficioExit(Sender: TObject);
begin
btndiferencia.SetFocus;
end;

procedure TFCtrlDescargo.edtAnoKeyPress(Sender: TObject; var Key: Char);
begin
if  key  in [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
   begin
     Key :=#0;
   end;
end;

procedure TFCtrlDescargo.edtMesKeyPress(Sender: TObject; var Key: Char);
begin
if  key  in [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
   begin
     Key :=#0;
   end;
end;

procedure TFCtrlDescargo.btnRepDescargoClick(Sender: TObject);
VAR XSQL:STRING;
begin
   Screen.Cursor:=crHourGlass;
   xfo:='N';
  //Saca el nombre de la unidad de proceso, nombre de oficina y ciudad
    xsql:= 'SELECT A.UPROID,A.UPRONOM,CIUDDES,OFDESNOM '
         + '  FROM APO102 A, APO123 B, APO110 C '
         + ' WHERE A.uproid = '''+DM1.cdscEdu.FieldByName('UPROID').AsString+''' ' +
           '   AND A.CIUDID = B.CIUDID(+) AND A.OFDESID = C.OFDESID(+)';
    DM1.cdsUPro.Close;
    DM1.cdsUPro.DataRequest(Xsql);
    DM1.cdsUPro.Open;

// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
    if ((dm1.cdsCEdu.RecordCount<=0)or (DM1.cdsUPro.RecordCount<=0)) then
      begin
        showmessage('No existe información para mostrar.');
        Screen.Cursor:=crDefault;
        exit;
      end;
// fin: HPP_201004_COB

  //Datos de la cabecera
    ppLRepresentante.Caption:= dm1.cdsCEdu.FieldByName('REPRE_NOM').AsString;
    ppLUProceso.Caption:=dm1.cdsUPro.FieldByName('UPRONOM').AsString;
    ppLNoOperacion.Caption:= dm1.cdsCEdu.FieldByName('NROOPE').AsString;
// Inicio: SPP_201310_COB     : Agregar en el Reporte el Tipo de Asociado

    //ppLFOperacion.Caption:= FormatDateTime('dd/mm/yyyy',DM1.cdscEdu.FieldByName('F.OPERA').AsDateTime);
    ppLFOperacion.Caption:= DM1.cdscEdu.FieldByName('F.OPERA').AsString;

    ppLAnoMes.Caption:= mesletra(DM1.cdscEdu.FieldByName('mes').AsString)+'-'+DM1.cdscEdu.FieldByName('aNo').AsString ;
    ppLRegistroGlobal.Caption:= FormatFloat('###,###,###.00',DM1.cdscEdu.FieldByname('MONTO').AsFloat);

    DM1.cdsQry11.Close;
    DM1.cdsQry11.DataRequest('Select ASOTIPDES From APO107 Where ASOTIPID='+QuotedStr(Trim(DM1.cdscEdu.FieldByName('ASOTIPID').AsString)));
    DM1.cdsQry11.Open;
    pplTipAso.Caption:=DM1.cdscEdu.FieldByName('ASOTIPID').AsString+' - '+DM1.cdsQry11.FieldByName('ASOTIPDES').AsString;
// Fin: SPP_201310_COB       : Agregar en el Reporte el Tipo de Asociado

    IF DM1.cdsQry4.RecordCount>0 THEN
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
       ppLUPago.Caption:=dm1.cdsQry4.FieldByName('U_PAG').AsString
// fin: HPP_201004_COB
    ELSE IF DM1.cdsQry5.RecordCount>0 THEN ppLUPago.Caption:=dm1.CDSQRY5.FieldByName('U_PAG').AsString;
    ppLTotal.Caption:=FormatFloat('###,###,###.00',vtotdes);
    ppLDiferencia.Caption:=FormatFloat('###,###,###.00',vdiferencia);

       ppLNota.Caption:='';
    if (Length(TRIM(DM1.cdsCEdu.FieldByName('NUMOFIDIRE').AsString))=0) and (vdiferencia<>0) THEN
       ppLNota.Caption:= 'Nota: No existe aun oficio con requerimiento de regularización de información o dinero.'
    else if (vdiferencia<>0) then
       ppLNota.Caption:= 'Nota:Requerimiento de regularización de información o dinero con numero de oficio '+dm1.cdsCEdu.FieldByName('NUMOFIDIRE').AsString+' '+
                         'de fecha '+FormatDateTime('dd/mm/yyyy',DM1.cdscEdu.FieldByName('FECOFIDIRE').AsDateTime);

  ppBDAportesAuto.DataSource := dm1.dsQry4;
  ppBDCuotasAuto.DataSource  := dm1.dsqry5;
  ppBDCuotasManual.DataSource:= dm1.dsEjecuta;
// Inicio: SPP_201312_COB    : 11/10/2013  Devolución de Inconsistencias sin Saldo
  ppBDCuotasDevo.DataSource:= dm1.dsRepDev;
// Fin: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo

// inicio: HPP_201011_COB
  ppBDFSC.DataSource         := dm1.dsUbigeo;
// fin: HPP_201011_COB

  ppRDesacrgo.Print;
  xfo:='S';
  Screen.Cursor:=crDefault;
end;

procedure TFCtrlDescargo.dbgCobranzaGlobalDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
   var currMonto : Currency ;
begin
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
    // SE RETIRA ESTO XQ SE METE EN BUCLES QUE NO DEJA TRABAJAR..X ESO SE COLOCA EL FOOTER AL MOMENTO DE CARGAR LA DATA Y NADA MAS
  (*
  if xfo='S' then
  begin
   currMonto := dm1.OperClientDataSet(dm1.cdscEdu,'SUM(MONTO)','');
   vapodes:= currMonto;
   dbgCobranzaGlobal.ColumnByName('MONTO').FooterValue := FormatFloat('###,###,###.00',currMonto) ;
  end;
  //  totapordesc.Caption := FormatFloat('###,###,###.00',vapodes);
  *)
// fin: HPP_201004_COB
end;

//...Resumen de cobranza global de Aportes segun lo filtrado en el registro global
procedure TFCtrlDescargo.rescobglobApo;

var xsql,xwhere,VRCOBID,VRDETRCOBID,VRCOBFOPE,VRCOBNOPE,VFORPAGOID,VUPROID:string;

begin

    DM1.cdsCEdu.DisableControls;
    Screen.Cursor:=crHourGlass;
    xfo1:='N';
    xfo :='N';

    //Aportes descargados
     dm1.cdsCEdu.First;
      while not dm1.cdsCEdu.Eof  do
        begin
          VRCOBID     := DM1.cdscEdu.FieldByName('RECIBO').AsString;
          VRDETRCOBID := DM1.cdscEdu.FieldByName('DETRCOBID').AsString;
          VRCOBFOPE   := DM1.cdscEdu.FieldByName('F.OPERA').AsString;
          VRCOBNOPE   := DM1.cdscEdu.FieldByName('NROOPE').AsString;
          VFORPAGOID  := DM1.cdscEdu.FieldByName('FORPAGOID').AsString;
          VUPROID     := DM1.cdscEdu.FieldByName('UPROID').AsString;
          if Length(trim(xwhere))=0 then
             xwhere := '( A.RCOBID='''+VRCOBID+''' AND A.DETRCOBID='''+VRDETRCOBID+''' AND A.TRANSNOPE='''+VRCOBNOPE+''' AND A.TRANSFOPE='''+VRCOBFOPE+''')'
          else
             xwhere := xwhere + 'OR ( A.RCOBID='''+VRCOBID+''' AND A.DETRCOBID='''+VRDETRCOBID+''' AND A.TRANSNOPE='''+VRCOBNOPE+''' AND A.TRANSFOPE='''+VRCOBFOPE+''')';

          dm1.cdsCEdu.Next;
        end;

      XSQL:='SELECT A.UPROID,A.UPAGOID,max(A.UPAGOABR) UPAGOABR,A.TRANSNOPE,A.TRANSFOPE,TRANSANO,TRANSMES,COUNT(A.ASOCODMOD) APORTA ,SUM(A.TRANSMTO) APORTE '+
            'FROM APO301 A WHERE '+ xwhere +
            ' GROUP BY A.UPROID,A.UPAGOID,A.TRANSNOPE,A.TRANSFOPE,A.TRANSANO,A.TRANSMES '+
            ' ORDER BY A.UPROID, A.UPAGOID';

     DM1.cdsGradoI.Close;
     DM1.cdsGradoI.DataRequest(XSQL);
     DM1.cdsGradoI.Open;
     Screen.Cursor:=crDefault;
     ppbRepResumen.DataSource:= DM1.dsGradoI;
     ppLPeriodo2.Caption := edtAno.Text+'-'+edtMes.Text;
     ppRRepAporte.Print;

     xfo1:='S';
     xfo :='S';
     DM1.cdsCEdu.EnableControls;
end;

//...Resumen de cobranza global de Aportes segun lo filtrado en el registro global
procedure TFCtrlDescargo.rescobglobCuo;
var xsql,xwhere,VRCOBID,VRDETRCOBID,VRCOBFOPE,VRCOBNOPE,VFORPAGOID,VUPROID:string;

begin
    DM1.cdsCEdu.DisableControls;
    Screen.Cursor:=crHourGlass;
    xfo1:='N';
    xfo :='N';
  //Cuotas descargadas
    xwhere:='';
    dm1.cdsCEdu.First;
    while not dm1.cdsCEdu.Eof  do
       begin
          VRCOBID     := DM1.cdscEdu.FieldByName('RECIBO').AsString;
          VRDETRCOBID := DM1.cdscEdu.FieldByName('DETRCOBID').AsString;
          VRCOBFOPE   := DM1.cdscEdu.FieldByName('F.OPERA').AsString;
          VRCOBNOPE   := DM1.cdscEdu.FieldByName('NROOPE').AsString;
          VFORPAGOID  := DM1.cdscEdu.FieldByName('FORPAGOID').AsString;
          VUPROID     := DM1.cdscEdu.FieldByName('UPROID').AsString;
          If Length(xWhere)= 0 Then
             xWhere := '( A.CREFPAG='''+ VRCOBFOPE +''' AND A.CREDOCPAG='''+ VRCOBNOPE+''' AND A.FORPAGABR='''+ VFORPAGOID+''' AND A.UPROID =''' +  VUPROID + ''') '
          else
             xWhere := xWhere +'OR ( A.CREFPAG='''+ VRCOBFOPE +''' AND A.CREDOCPAG='''+ VRCOBNOPE+''' AND A.FORPAGABR='''+ VFORPAGOID+''' AND A.UPROID =''' +  VUPROID + ''') ' ;
          dm1.cdsCEdu.Next;
       end;

       xSQL := ' SELECT A.UPROID,A.UPAGOID,max(B.USEABRE) USEABR, A.USEID, A.NROOPE, A.CREFPAG FOPERAC,COUNT(A.ASOCODMOD) CUOTA,SUM(A.CREMTOCOB) COBRADO'
              +' FROM CRE310 A, APO101 B '
              +' WHERE ('+xWhere+') '+
              'AND A.UPROID =  B.UPROID(+) '+
              'AND A.UPAGOID = B.UPAGOID(+) '+
              'AND A.USEID = B.USEID(+) '+
              'AND A.CREESTID<>''13'' '+
              'AND A.CREESTID<>''04'' '+
              ' GROUP BY A.UPROID,A.UPAGOID,A.USEID,A.NROOPE,A.CREFPAG'+
              ' ORDER BY A.UPROID, A.UPAGOID, A.USEID';
       DM1.cdsGradoA.Close;
       DM1.cdsGradoA.DataRequest(XSQL);
       DM1.cdsGradoA.Open;
       Screen.Cursor:=crDefault;
       ppbRepResumen.DataSource:= DM1.dsGradoA;
       ppLPeriodo2.Caption := edtAno.Text+'-'+edtMes.Text;
       
       ppRRepCuotas.Print;
       DM1.cdsCEdu.EnableControls;
      xfo1:='S';
      xfo :='S';

// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
    dbgCreditos.ColumnByName('COBRADO').FooterValue := FormatFloat('###,###,###.00',0) ;
    TotCuotaDes.Caption := FormatFloat('###,###,###.00',0);
    vcuodes := 0;
// fin: HPP_201004_COB POR JDCRUZ
end;


procedure TFCtrlDescargo.fcShapeBtn2Click(Sender: TObject);
begin
 if DM1.cdsCEdu.RecordCount > 0 then rescobglobApo else ShowMessage('Sin datos para imprimir');
end;

procedure TFCtrlDescargo.fcShapeBtn3Click(Sender: TObject);
begin
 if DM1.cdsCEdu.RecordCount > 0 then rescobglobCuo else ShowMessage('Sin datos para imprimir');

end;

procedure TFCtrlDescargo.fcSDetalleClick(Sender: TObject);
begin
    xfo1:='N';
    xfo :='N';

if TabSheet1.Showing then
   begin
       if dm1.cdsQry4.RecordCount = 0 then
          begin
           ShowMessage('No existe información seleccionada');
           xfo1:='S';
           xfo :='S';
           exit;
          end;

     //Datos de cabecera
       ppLRepresentante2.Caption:= dm1.cdsCEdu.FieldByName('REPRE_NOM').AsString;
       ppLUProceso2.Caption:=dm1.cdsQry4.FieldByName('U_PRO').AsString;
       ppLUPago2.Caption:=dm1.cdsQry4.FieldByName('U_PAG').AsString;
       ppLNoOperacion2.Caption:= dm1.cdsCEdu.FieldByName('NROOPE').AsString;
// Inicio SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
       //ppLFOperacion2.Caption:= FormatDateTime('dd/mm/yyyy',DM1.cdscEdu.FieldByName('F.OPERA').AsDateTime);
       ppLFOperacion2.Caption:= DM1.cdscEdu.FieldByName('F.OPERA').AsString;
// Fin  SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
       ppLAnoMes2.Caption:= mesletra(DM1.cdscEdu.FieldByName('mes').AsString)+'-'+DM1.cdscEdu.FieldByName('aNo').AsString ;
       ppbRepDetalle.DataSource := dm1.dsQry4;
       ppRAportes.Print;
   end;

if TabSheet2.Showing then
   begin

       if dm1.cdsQry5.RecordCount = 0 then
          begin
           ShowMessage('No existe información seleccionada');
           xfo1:='S';
           xfo :='S';
           exit;
          end;

     //Datos de cabecera
       ppLRepresentante3.Caption:= dm1.cdsCEdu.FieldByName('REPRE_NOM').AsString;

    // inicio HPP_201011_COB
    // se muestra Unidad de Proceso y Unidad de Pago
       if rdgCondicion.ItemIndex =  0 then
       begin
          ppLUProceso3.Caption:=Edit2.Text; //dm1.cdsCEdu.FieldByName('U_PRO').AsString;
          ppLUPago3.Caption:=Edit3.Text; //dm1.cdsCEdu.FieldByName('U_PAG').AsString;
       end
       else
       begin
          ppLUProceso3.Caption:=dm1.cdsCEdu.FieldByName('UPROID').AsString;
          ppLUPago3.Caption:=dm1.cdsCEdu.FieldByName('UPAGOID').AsString;
       end;
    // fin HPP_201011_COB

       ppLNoOperacion3.Caption:= dm1.cdsCEdu.FieldByName('NROOPE').AsString;
// Inicio: SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
       //ppLFOperacion3.Caption:= FormatDateTime('dd/mm/yyyy',DM1.cdscEdu.FieldByName('F.OPERA').AsDateTime);
       ppLFOperacion3.Caption:= DM1.cdscEdu.FieldByName('F.OPERA').AsString;
// Fin: SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
       ppLAnoMes3.Caption:= mesletra(DM1.cdscEdu.FieldByName('mes').AsString)+'-'+DM1.cdscEdu.FieldByName('aNo').AsString ;
       ppbRepDetalle.DataSource := dm1.dsQry5;
       ppLTITULO3.Caption := 'REPORTE DETALLE DE CUOTAS DESCARGADAS (AUTOMATICAS)';
       ppRCreditos.Print;
   end;


if TabSheet3.Showing then
   begin
// inicio HPP_201011_COB
     if (DM1.cdsEjecuta.Active = False)  OR (DM1.cdsEjecuta.RecordCount<=0) then
           begin
             ShowMessage('No existe información seleccionada');
             xfo1:='S';
             xfo :='S';
             exit;
           end;

     //Datos de cabecera
       ppLRepresentante3.Caption:= dm1.cdsCEdu.FieldByName('REPRE_NOM').AsString;
    // inicio HPP_201011_COB
       ppLUProceso3.Caption:=dm1.cdsCEdu.FieldByName('U_PRO').AsString;
       ppLUPago3.Caption:=dm1.cdsCEdu.FieldByName('U_PAG').AsString;
    // fin HPP_201011_COB
       ppLNoOperacion3.Caption:= dm1.cdsCEdu.FieldByName('NROOPE').AsString;
// Inicio SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
       //ppLFOperacion3.Caption:= FormatDateTime('dd/mm/yyyy',DM1.cdscEdu.FieldByName('F.OPERA').AsDateTime);
       ppLFOperacion3.Caption:= DM1.cdscEdu.FieldByName('F.OPERA').AsString;
// Fin SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
       ppLAnoMes3.Caption:= mesletra(DM1.cdscEdu.FieldByName('mes').AsString)+'-'+DM1.cdscEdu.FieldByName('aNo').AsString ;
       ppbRepDetalle.DataSource := dm1.DSEjecuta;
       ppLTITULO3.Caption := 'REPORTE DETALLE DE CUOTAS MANUALES (INCONSISTENCIAS)';
       ppRCreditos.Print;
// Fin HPP_201011_COB
  end;

// inicio HPP_201011_COB
if TabSheet7.Showing then
   begin
// inicio HPP_201012_COB
       if (DM1.cdsUbigeo.Active = False)  OR (DM1.cdsUbigeo.RecordCount<=0) then
// fin HPP_201012_COB
          begin
           ShowMessage('No existe información seleccionada');
           xfo1:='S';
           xfo :='S';
           exit;
          end;

     //Datos de cabecera
       pplblFSC_Representante.Caption:= dm1.cdsCEdu.FieldByName('REPRE_NOM').AsString;

    // inicio HPP_201011_COB
    // se muestra Unidad de Proceso y Unidad de Pago
       if rdgCondicion.ItemIndex =  0 then
       begin
          pplblFSC_UProceso.Caption:=Edit2.Text; //dm1.cdsCEdu.FieldByName('U_PRO').AsString;
          pplblFSC_UPago.Caption:=Edit3.Text; //dm1.cdsCEdu.FieldByName('U_PAG').AsString;
       end
       else
       begin
          pplblFSC_UProceso.Caption:=dm1.cdsCEdu.FieldByName('UPROID').AsString;
          pplblFSC_UPago.Caption:=dm1.cdsCEdu.FieldByName('UPAGOID').AsString;
       end;
    // fin HPP_201011_COB

       pplblFSC_NoOperacion.Caption:= dm1.cdsCEdu.FieldByName('NROOPE').AsString;
// Inicio SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
       //pplblFSC_FecOperacion.Caption:= FormatDateTime('dd/mm/yyyy',DM1.cdscEdu.FieldByName('F.OPERA').AsDateTime);
       pplblFSC_FecOperacion.Caption:= DM1.cdscEdu.FieldByName('F.OPERA').AsString;
// Fin SPP_201403_COB       : 12/09/2014 - Error en formato de fechas
       pplblFSC_AnoMes.Caption:= mesletra(DM1.cdscEdu.FieldByName('mes').AsString)+'-'+DM1.cdscEdu.FieldByName('aNo').AsString ;
       ppbRepDetalle.DataSource := dm1.dsUbigeo;
       pprFSC.Print;
   end;
// fin HPP_201011_COB

    xfo1:='S';
    xfo :='S';
end;

(******************************************************************************)
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
procedure TFCtrlDescargo.fcShapeBtn4Click(Sender: TObject);
var
   xArchivo : String;
begin

// inicio: HPP_201011_COB
   try
      if TabSheet1.Showing then
      begin
         if (DM1.cdsQry4.Active = False)  OR (DM1.cdsQry4.RecordCount<=0) then
         begin
            showmessage('No existe información para exportar Aportes');
            exit;
         end;
         SaveDialog1.FileName:='APORTES';
         IF SaveDialog1.Execute THEN
            DM1.ExportaGridExcel(dbgAportes, SaveDialog1.FileName);
      end
      ELSE
         if TabSheet2.Showing then
         begin
            if (DM1.cdsQry5.Active = False)  OR (DM1.cdsQry5.RecordCount<=0) then
            begin
               showmessage('No existe información para exportar Créditos');
               exit;
            end;
            SaveDialog1.FileName:='CRÉDITOS';
            IF SaveDialog1.Execute THEN
               DM1.ExportaGridExcel(dbgCreditos, SaveDialog1.FileName);
         end
         ELSE
            if TabSheet3.Showing then
            begin
               if (DM1.cdsEjecuta.Active = False)  OR (DM1.cdsEjecuta.RecordCount<=0) then
               begin
                  showmessage('No existe información para exportar Inconsistencias Ingresadas');
                  exit;
               end;
               SaveDialog1.FileName:='INCONSISTENCIAS';
               IF SaveDialog1.Execute THEN
                  DM1.ExportaGridExcel(dbgInconsistencia, SaveDialog1.FileName);
            end
            ELSE
            // se incluye la exportación a excel de FSC
               BEGIN
                  if TabSheet7.Showing then
                  begin
                     if (DM1.cdsUbigeo.Active = False)  OR (DM1.cdsUbigeo.RecordCount<=0) then
                     begin
                        showmessage('No existe información para exportar FSC');
                        exit;
                     end;
                     SaveDialog1.FileName:='FSC';
                     IF SaveDialog1.Execute THEN
                        DM1.ExportaGridExcel(dbgFSC, SaveDialog1.FileName);
                  end
                  ELSE
                        showmessage('Seleccione Aportes, Créditos o Inconsistencias Ingresadas');
               END;
   finally
   end;
// fin: HPP_201011_COB
end;
// fin: HPP_201004_COB
(******************************************************************************)
// inicio: HPP_201004_COB POR JDCRUZ
// Memorándum 1045-2009-DM-COB - SAR-2009-0995 - DAD-JD-2009-0178
procedure TFCtrlDescargo.btnSalirClick(Sender: TObject);
begin
   close;
end;
// fin: HPP_201004_COB

// inicio: HPP_201011_COB
procedure TFCtrlDescargo.dbgFSCDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
var 
   currMonto : Currency;
begin
   if xfo4='S' then
   begin
      actfootFsc;
      xfo4:='N';
   end;
end;
// fin: HPP_201011_COB

// inicio: HPP_201011_COB
procedure TFCtrlDescargo.actfootAportes;
var 
  currMonto : currency;
begin
   currMonto := dm1.OperClientDataSet(dm1.cdsQry4,'SUM(APORTE)','');
   vapodes:= currMonto;
   dbgAportes.ColumnByName('APORTE').FooterValue := FormatFloat('###,###,###.00',currMonto) ;
   totapordesc.Caption := FormatFloat('###,###,###.00',vapodes);
end;
// fin: HPP_201011_COB

// inicio: HPP_201011_COB
procedure TFCtrlDescargo.actfootCreditos;
var 
   currMonto : currency;
begin
   currMonto := dm1.OperClientDataSet(dm1.cdsQry5,'SUM(COBRADO)','');
   vcuodes := currMonto;
   dbgCreditos.ColumnByName('COBRADO').FooterValue := FormatFloat('###,###,###.00',currMonto) ;
   TotCuotaDes.Caption  := FormatFloat('###,###,###.00',vcuodes);
end;
// fin: HPP_201011_COB

// inicio: HPP_201011_COB
procedure TFCtrlDescargo.actfootCuotasManuales;
var  
   currMonto : currency;
begin
   currMonto := dm1.OperClientDataSet(dm1.cdsEjecuta,'SUM(COBRADO)','');
   vinconsistencias := currMonto;
   dbgInconsistencia.ColumnByName('COBRADO').FooterValue := FormatFloat('###,###,###.00',currMonto) ;
   TotCuotaManual.Caption  := FormatFloat('###,###,###.00',vinconsistencias);
end;
// fin: HPP_201011_COB

// inicio: HPP_201011_COB
procedure TFCtrlDescargo.actfootFsc;
var
   currMonto : currency;
begin
   currMonto := dm1.OperClientDataSet(dm1.cdsUbigeo,'SUM(COBRADO)','');
   vFSC := currMonto;
   dbgFSC.ColumnByName('COBRADO').FooterValue := FormatFloat('###,###,###.00',currMonto) ;
   totFSC.Caption  := FormatFloat('###,###,###.00',vFSC);
end;
// fin: HPP_201011_COB

// inicio: HPP_201011_COB
procedure TFCtrlDescargo.FormCreate(Sender: TObject);
begin
   PageControl1.TabIndex := 0;
   PageControl2.TabIndex := 0;
end;
// fin: HPP_201011_COB

// Inicio: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo
procedure TFCtrlDescargo.actfootDev;
var
   currMonto : currency;
begin
   currMonto := dm1.OperClientDataSet(DM1.cdsRepDev,'SUM(IMPORTE)','');
   vDevo := currMonto;
   dbgDevo.ColumnByName('IMPORTE').FooterValue := FormatFloat('###,###,###.00',currMonto) ;
   totDev.Caption  := FormatFloat('###,###,###.00',vDevo);
end;
// Fin: SPP_201312_COB       : 11/10/2013  Devolución de Inconsistencias sin Saldo

end.
