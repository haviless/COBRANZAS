unit COB323;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB924
// Formulario           : FCtrlDescargo
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Control de Descargo Global
// Actualizaciones      :
// HPC_201308_COB       : 08/07/2013 - Agregar en el Reporte el Tipo de Asociado
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201309_COB       : 14/08/2013 - Corregir Error al filtrar fecha
// SPP_201311_COB       : Se realiza el pase a producción a partir del HPC_201309_COB
// HPC_201310_COB       : 16/09/2013 - Registro Global se Triplica
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201507_COB		: Corregir error en Registro Global de Cobranzas al seleccionar la Unidad de Proceso y Unidad de Pago
// HPC_201708_COB       : Se adiciona campos al formulario del detalle del registro global de cobranzas
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Buttons, Wwdbigrd, Grids, Wwdbgrid, Spin,
  Wwkeycb, Mask, wwdbedit, wwdblook, Wwdbdlg, ExtCtrls, ComCtrls, fcButton,
  fcImgBtn, fcShapeBtn, wwcheckbox, fcLabel, ppEndUsr, ppDB, ppDBPipe,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, Mant, db, ppViewr, DBClient, wwclient,

  DBCtrls, wwdbdatetimepicker, GridControl, Menus, FileCtrl,
  ppTypes, ppDBBDE, SOLPreview, inifiles, ppStrtch, ppSubRpt, Printers, ppForms,
  StrContainer, RecError, fcpanel, fcImager,
  fcClearPanel, fcButtonGroup, ToolWin,
// Inicio: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha
  SConnect,  shellapi, wwexport, Wwdatsrc,
  MsgDlgs;
// Fin: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha


type
  TFCobranzaGlobal = class(TForm)
    Panel1: TPanel;
    fclTitulo: TfcLabel;
    eb1: TwwExpandButton;
    pnlTool: TPanel;
    bbtnImprime: TfcShapeBtn;
    pnlRepre: TPanel;
    lblRepsen: TLabel;
    dblcdRepresentante: TwwDBLookupComboDlg;
    edtRepresentante: TEdit;
    rdgTipo: TRadioGroup;
    bbtnAceptar: TfcShapeBtn;
    pnlUPago: TPanel;
    lblUPago: TLabel;
    lblUnidadProceso: TLabel;
    dblcdUPago: TwwDBLookupComboDlg;
    dblcdUProceso: TwwDBLookupComboDlg;
    dbeUProceso: TwwDBEdit;
    dbeUPago: TwwDBEdit;
    pnlPie: TPanel;
    lblSection: TLabel;
    pnlBusca: TPanel;
    lblBusca1: TLabel;
    lblBusca2: TLabel;
    isBusca: TwwIncrementalSearch;
    bbtnGrupos: TBitBtn;
    seGrupo: TSpinEdit;
    bbtnCierra: TBitBtn;
    bbtnSuma: TfcShapeBtn;
    bbtnDiseno: TfcShapeBtn;
    Z2bbtnFiltro: TfcShapeBtn;
    dbgFiltro: TwwDBGrid;
    Z2btnActReg: TwwIButton;
    pnlFiltro: TPanel;
    Label1: TLabel;
    sbBorraF: TSpeedButton;
    sbFiltra: TSpeedButton;
    sbBorraO: TSpeedButton;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    lbCampos2: TListBox;
    lbFiltro: TListBox;
    lbOrden: TListBox;
    lbCampos: TCheckListBox;
    clbRepD: TCheckListBox;
    Memo1: TMemo;
    ppBDeposito: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppUsuario: TppLabel;
    ppFecha: TppLabel;
    ppDBText4: TppDBText;
    ppLabel14: TppLabel;
    ppLabel18: TppLabel;
    ppLabel1: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText11: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel17: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel16: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText13: TppDBText;
    ppLabel12: TppLabel;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    Datos: TppDBPipeline;
    ppDesigner1: TppDesigner;
    pnlDiseno: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    bbtnRepOk: TBitBtn;
    bbtnRepCa: TBitBtn;
    dbgReporte: TwwDBGrid;
    dbeNombre: TwwDBEdit;
    bbtnPublica: TBitBtn;
    rgTipo: TRadioGroup;
    bbtnUsuario: TBitBtn;
    lbCamposReal: TListBox;
    lbFiltroReal: TListBox;
    lbOrdenReal: TListBox;
    clbRepDReal: TCheckListBox;
    clbRepDTabla: TCheckListBox;
    pnlFiltro2: TPanel;
    Label5: TLabel;
    lblDias: TLabel;
    bbtnOkF: TBitBtn;
    bbtnCancelF: TBitBtn;
    bbtnDate: TBitBtn;
    meDias: TMaskEdit;
    bbtnOR: TBitBtn;
    rgValor: TRadioGroup;
    cbCampos: TComboBox;
    rgLike: TRadioGroup;
    rgFiltro: TRadioGroup;
    CdsGrid: TwwClientDataSet;
    cdsPlan: TwwClientDataSet;
    pnlInfor: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    bbtnOKFilt: TBitBtn;
    bbtnCancFilt: TBitBtn;
    dbgFiltros: TwwDBGrid;
    dbeNameFilt: TwwDBEdit;
    bbtnSaveFil: TBitBtn;
    bbtnInicial: TBitBtn;
    lbRefer: TListBox;
    cdsBusca: TwwClientDataSet;
    dsBusca: TwwDataSource;
    dsDT: TwwDataSource;
    cdsReporte: TwwClientDataSet;
    dsReporte: TwwDataSource;
    cdsGrid2: TwwClientDataSet;
    ppdbMantD: TppDBPipeline;
    pprMant: TppReport;
    Cabecera: TppHeaderBand;
    lblTitulo: TppLabel;
    lblCia: TppLabel;
    ppsvFecha: TppSystemVariable;
    ppsvHora: TppSystemVariable;
    ppsvPagina: TppSystemVariable;
    ppLine1: TppLine;
    ppLine3: TppLine;
    Detalle: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel21: TppLabel;
    pplReg: TppLabel;
    ppdbMant: TppDBPipeline;
    ppdFiltro: TppDesigner;
    cdsRep2: TwwClientDataSet;
    dsRep2: TwwDataSource;
    cdsUsuNo: TwwClientDataSet;
    cdsUsuSi: TwwClientDataSet;
    dsUsuSi: TwwDataSource;
    dsUsuNo: TwwDataSource;
    bbtnSalir: TBitBtn;
    Panel2: TPanel;
    bbtnCerrarF: TBitBtn;
    lblRegistros: TLabel;
    edtRegistros: TEdit;
    bbtnExcel: TBitBtn;
    bbtnFilt: TBitBtn;
    lblSub1: TLabel;
    seIni: TSpinEdit;
    seLen: TSpinEdit;
    lblSub2: TLabel;
    rgFecha: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    dtpDesde: TDateTimePicker;
    dtpHasta: TDateTimePicker;
    Bevel1: TBevel;
// Inicio: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha
    bbtnAnular: TBitBtn;
    bbtnTemp: TBitBtn;
// Fin: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha
    procedure FormActivate(Sender: TObject);
    procedure rdgTipoClick(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure bbtnImprimeClick(Sender: TObject);
    procedure ppBDepositoPreviewFormCreate(Sender: TObject);
    procedure dblcdUPagoExit(Sender: TObject);
    procedure dblcdUProcesoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblcdRepresentanteExit(Sender: TObject);
    procedure dbgFiltroDblClick(Sender: TObject);
    procedure Z2btnActRegClick(Sender: TObject);
    procedure Z2bbtnFiltroClick(Sender: TObject);
    procedure lbCamposClickCheck(Sender: TObject);
    procedure lbCamposEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure lbCamposMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbFiltroDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure bbtnCerrarFClick(Sender: TObject);
    procedure bbtnCancelFClick(Sender: TObject);
    procedure bbtnOkFClick(Sender: TObject);
    procedure sbFiltraClick(Sender: TObject);
    procedure lbFiltroDblClick(Sender: TObject);
    procedure sbBorraFClick(Sender: TObject);
    procedure lbOrdenDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lbOrdenDblClick(Sender: TObject);
    procedure sbBorraOClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure bbtnRepCaClick(Sender: TObject);
    procedure bbtnRepOkClick(Sender: TObject);
    procedure dbgReporteRowChanged(Sender: TObject);
    procedure dbgReporteDblClick(Sender: TObject);
    procedure pprMantPreviewFormCreate(Sender: TObject);
    procedure bbtnSumaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bbtnGruposClick(Sender: TObject);
    procedure bbtnExcelClick(Sender: TObject);
    procedure bbtnFilt1Click(Sender: TObject);
    procedure bbtnCancFiltClick(Sender: TObject);
    procedure bbtnOKFiltClick(Sender: TObject);
    procedure bbtnSaveFilClick(Sender: TObject);
    procedure bbtnInicialClick(Sender: TObject);
    procedure bbtnFiltClick(Sender: TObject);
    procedure dbgFiltrosDblClick(Sender: TObject);
    procedure bbtnSalirClick(Sender: TObject);
    procedure rgFiltroClick(Sender: TObject);
    procedure rgValorClick(Sender: TObject);
    procedure bbtnORClick(Sender: TObject);
    procedure bbtnDateClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnDisenoClick(Sender: TObject);
// Inicio: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha
    procedure bbtnAnularClick(Sender: TObject);
    procedure cbCamposKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
// Fin: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha
  private
    { Private declarations }
    nContPrv     : Integer;
    nContPrv2    : Integer;
    xIniOr       : Integer;
    wLin, wCol   : integer;
    xNComp       : Integer;   // contador de Componentes Creados
    wFieldName   : String;

    xLabelLeft   : Integer;   // Left de la Etiqueta
    xCampoLeft   : Integer;   // Left de Campo
    xCampoWidth  : Integer;   // Ancho de Edit
    xInicioCampos: Integer;
    wPacketCombo : Integer;

    SQL_WHERE : String;
    wFilter2  : String;

    wComp1, wComp2, wComp3, wComp4, wComp5, wComp6, wComp7, wComp8, wComp9 : Byte;
    wComx1, wComx2, wComx3, wComx4, wComx5, wComx6, wComx7 : Byte;

    wModulo   : String;
    wFile, wSection : String;

    wSelect   : String;
    wJoin     : String;
    wJoin2    : String;
    wSelec2   : String;
    wSelRep   : String;
    wFroRep   : String;

    xxDirPub : String;
    xxDirLoc : String;
    xxServer : String;
    xxDirect : String;
    xxDirMod : String;
    xxDirPrn : String;
    xxTipRep : String;
    xxWhereT : String;
    xCurrent : string;

    xPipeline : TppBDEPipeline;
    xReport   : TppReport;

    wFilter : String;
    wTabla2Filter : String;

    wGrupoCols  : Integer;
    wRutaCds     : String;

    wdblc     : Array[1..60] of TwwDBLookupCombo;
    wdblcd    : Array[1..60] of TwwDBLookupComboDlg;
    wdbedit   : Array[1..60] of TwwDBEdit;
    wdbMemo   : Array[1..60] of TDBMemo;
    wdbdtp    : Array[1..60] of TwwDBDateTimePicker;
    wcds      : Array[1..60] of TwwClientDataset;
    wcdsLookup: Array[1..60] of TwwClientDataSet;
    wlbl      : Array[1..60] of TLabel;
    wPrnTxt   : Array[1..60] of TppDBText;
    wPrnLbl   : Array[1..60] of TppLabel;
    wPrnLbl2  : Array[1..60] of TppLabel;
    wType     : Array[1..60] of String[1];
    wKey      : Array[1..60] of String[1];
    wFieldN   : Array[1..60] of String[20];
    wTableN   : Array[1..60] of String[20];
    wFlagN    : Array[1..60] of String[1];
    wPicture  : Array[1..60] of String[20];
    wStrZero  : Array[1..60] of String[1];

    wWidthReg : Array[1..60] of Integer;
    wOperator : Array[1..60] of String[2];
    wValida   : Array[1..60] of String[20];
    wPredeces : Array[1..60] of String[40];

    wwDBLCD2  : TwwDBLookupComboDlg;
    wwDBLC2   : TwwDBLookupCombo;

    wFlVista  : Boolean;
    xContSuma    : Integer;

    Procedure MuestraPanel;
    Procedure PropLBL( wwLabel:TLabel; wwCaption:String; wwParent:TPanel );
    Procedure PropDTP( wwDBDTP:TwwDBDateTimePicker; wwTipo:Integer; wwParent:TPanel );
    Procedure PropDBLC( wwDBLC:TwwDBLookupCombo; wwTipo:Integer; wwParent:TPanel );
    Procedure PropDBLCD( wwDBLCD:TwwDBLookupComboDlg; wwTipo:Integer; wwParent:TPanel );
    Procedure PropDBE( wwDBEdit:TwwDBEdit; wwTipo:Integer; wwParent:TPanel );
    procedure DBLCDropDown(Sender: TObject );
    procedure DBLCDDropDown( Sender: TObject );
    procedure DBEExit( Sender: TObject );

    function StrZero(wNumero:String;wLargo:Integer):string;
    function LoadFilter : String;

    procedure MuestraData;
    procedure CampoToListBox( xLBox:TListBox; xNCampoT:String );
    Procedure MuestraGrid;

    procedure MuestraGrupos;

    procedure cds2GetText1( Sender: TField;  var Text: String; DisplayText: Boolean );
    procedure cds2GetText2( Sender: TField;  var Text: String; DisplayText: Boolean );
    procedure cds2GetText3( Sender: TField;  var Text: String; DisplayText: Boolean );
    procedure cds2GetText4( Sender: TField;  var Text: String; DisplayText: Boolean );
    procedure cds2GetText5( Sender: TField;  var Text: String; DisplayText: Boolean );
    procedure EliminaCampos( wDesde:Integer );
    procedure Inicializar;
    procedure MuestraReporte;
    procedure GeneraSQLReporte;
    procedure FiltraRep;
    procedure GeneraSQLTabla2Descripciones;
    procedure FiltraRep2;
    procedure ListBoxToCampo( xLBox:TListBox; xNCampoT:String );

  public
    { Public declarations }
    wTabla    : String;
    wUser   : String;
    wTitulo : String;
    wGrabaD : String;
    SQL       : String;
    wUserSQL  : String;
    wUsuarioSQL : TStrings;
    wUserCheckB : TStrings;
    wTabla2   : String;
    wTablaLLave  : String;
    wTabla2LLave : String;
    wTabla2Order : String;

    wT2Join   : String;
    wT2Join2  : String;
    wT2Selec2 : String;

    procedure OnEditRegGlobalCob1(Sender: TObject; MantFields: TFields);
    procedure GeneraListBox;
    procedure FiltraData( xTipo : String );
    procedure EliminaGrupos;
    procedure FiltraTablaRemoto( xxCds:TwwClientDataSet; xxArchivo, xxCampo, xxFilter : String  );
  end;

var
  FCobranzaGlobal: TFCobranzaGlobal;

implementation

uses COBDM1, COB316, COB001, COB301;

{$R *.dfm}

procedure TFCobranzaGlobal.FormActivate(Sender: TObject);
var
   sSQL : String;
begin
   wUserSQL:='select * from  ( '
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
        +  'select distinct b.uproid, b.upagoid,b.useid,b.asotipid,b.tippla,'
//Final HPC_201708_COB
        +  'a.rcobid, a.bancoid, a.ccbcoid, a.rcobestado, a.rcobnope, a.rcobfope, a.tmonid, a.rcobfrecep, '
        +  'a.reprid, a.usuario, a.freg,  a.hreg, a.rcobmto, a.rcobano, a.rcobmes, a.reprapenom, a.agenbcoid, '
        +  'a.rcobfin, a.cpagoapo, a.cpagocuo, a.rcobliq, a.bolrnumb, a.bolrnumbd, a.rcobbru, a.rcobded, '
        +  'a.ciaid, a.cntanomm, a.fconta, a.fcontadet, a.tipocont, a.cntflag, '
        +  '( select count(*) from COB302 c where A.RCOBID=C.RCOBID(+) AND A.REPRID=C.REPRID(+)) CONTDET '
        +' from COB301 a, COB302 b '
        +'where A.RCOBID=B.RCOBID(+) AND A.REPRID=B.REPRID(+) '
// Inicio: SPP_201312_COB       : 16/09/2013 - Registro Global se Triplica
        + ' and B.DETRCOBID=( select MIN(DETRCOBID) from COB302 c '
        +                     'where A.RCOBID = C.RCOBID(+) '
        +                      ' and A.REPRID = C.REPRID(+) ) '
// Fin: SPP_201312_COB       : 16/09/2013 - Registro Global se Triplica
        +') SOLVISTA';

   wUser   :=DM1.wUsuario;
   wSection:='COBRegGlobalCob';
   wTitulo:='Registro Global de Cobranzas';
   wModulo:='COB';

   wTabla    := 'COB301';
   wTabla    := 'VWCOB301';

   wRutaCds:='C:\SOLEXES\';

   //xxDirPub :='\\'+wDCOM.Address;
   xxDirPub :='\\10.10.11.49\';
   xxDirLoc := 'C:';
   xxServer := 'C:';
   xxDirect := '\SOL';
   xxDirMod := '\'+wModulo;
   xxDirPrn := '\'+wSection;

   cdsBusca.RemoteServer:=DM1.DCOM1;

   MuestraData;
end;

procedure TFCobranzaGlobal.rdgTipoClick(Sender: TObject);
begin
   if rdgTipo.ItemIndex = 0 then
    begin
     sSQL := 'SELECT * FROM APO102 ORDER BY UPROID';
     DM1.FiltraCDS(DM1.cdsUPro, sSQL);

     pnlUPago.Visible := True;
     dblcdUProceso.SetFocus;
    end
   else
    if rdgTipo.ItemIndex = 1 then
     pnlUPago.Visible := False;
end;

procedure TFCobranzaGlobal.bbtnAceptarClick(Sender: TObject);
begin
   If rdgTipo.ItemIndex = 0 Then
    begin
     If Length(dblcdUProceso.Text) = 0 Then
      begin
       Beep;
       MessageDlg('Ingrese la Unidad de Proceso', mtInformation, [mbOk], 0);
       dblcdUProceso.SetFocus;
       Exit;
      end;
     If Length(dblcdUPago.Text) = 0 Then
      begin
       Beep;
       MessageDlg('Ingrese la Unidad de Pago', mtInformation, [mbOk], 0);
       dblcdUPago.SetFocus;
       Exit;
      end;
    end
   Else
    begin
    If Length(dblcdRepresentante.Text) = 0 Then
     begin
      Beep;
      MessageDlg('Ingrese el Representante', mtInformation, [mbOk], 0);
      dblcdRepresentante.SetFocus;
      Exit;
     end;
    end;

   Screen.Cursor := crHourGlass;
   FRegGlobalCob1  := TFRegGlobalCob1.create(Self);
   MtxD := TMant.Create(Self);
   try
    MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB302';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := DM1.wModulo;

    if rdgTipo.ItemIndex = 0 then
     MtxD.Filter        := 'UPROID ='+QuotedStr(dblcdUProceso.Text)+' AND UPAGOID ='+QuotedStr(dblcdUPago.Text)
    else
    if rdgTipo.ItemIndex = 1 then
     MtxD.Filter       := 'REPRID='+QuotedStr(dblcdRepresentante.Text);
    if rdgTipo.ItemIndex = 0 then
     MtxD.Titulo       := 'U. Pago - '+dbeUPago.Text
    else
    if rdgTipo.ItemIndex = 1 then
     MtxD.Titulo     	:= 'Representante - '+edtRepresentante.Text;

    MtxD.OnCreateMant    := Nil;
    MtxD.OnInsert 	 := Nil;
    MtxD.OnEdit 	 := OnEditRegGlobalCob1;
    MtxD.OnDelete 	 := Nil;
    MtxD.OnShow 	 := nil;
    MtxD.ControlGridDisp := FPrincipal.cgdPrincipal;
    MtxD.SectionName	 := 'COBDetRegGlobal';
    MtxD.FileNameIni     := '\SOLCOB.INI';
    //MtxD.UserCheckB.Add('FLAG');
	// INICIO : HPC_201507_COB
    MtxD.Tipo := 'NORMAL';
    // FIN : HPC_201507_COB
    MtxD.Execute;
   Finally
    MtxD.Free;
    FRegGlobalCob1.Free;
   end;
   FormActivate(Self);
   Screen.Cursor := crDefault;
end;

procedure TFCobranzaGlobal.OnEditRegGlobalCob1(Sender: TObject; MantFields: TFields);
begin
   If DM1.cdsEjecuta.RecordCount = 0 Then
    begin
     ShowMessage('No Existen Registros a Editar');
     Exit;
    end;
   DM1.wModo := 'M';
   FRegGlobalCob1.ShowModal;
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
   MtxD.RefreshFilter;
//Final HPC_201708_COB
end;


procedure TFCobranzaGlobal.bbtnImprimeClick(Sender: TObject);
var
   xSQL, sDesde, sHasta : String;
   x10 : Integer;
begin
   sDesde := QuotedStr(FormatDateTime(wFormatFecha, dtpDesde.DateTime));
   sHasta := QuotedStr(FormatDateTime(wFormatFecha, dtpHasta.DateTime));
   if rgFecha.ItemIndex=0 then
   xSQL := 'SELECT A.RCOBID, A.REPRID, A.REPRAPENOM, A.RCOBMTO, A.CCBCOID, '
          +' B.RCOBANOAPO||RCOBMESAPO PERIOAPO,'
          +' A.RCOBANO||A.RCOBMES PERIODO, A.RCOBNOPE,'
          +' B.CPAGOMTO, B.CPAGOLIQ, B.CPAGOFECHA, B.UPAGOID, B.UPROID, '
          +' C.BANCONOM, D.UPAGONOM, E.MESDESC||''-''||A.RCOBMES MES, F.CIADES, G.UPRONOM '
          +' FROM COB301 A, COB302 B, TGE105 C, APO103 D, TGE181 E, TGE101 F, APO102 G '
          +' WHERE A.RCOBID=B.RCOBID'
          +' AND A.BANCOID=C.BANCOID'
          +' AND B.UPROID=D.UPROID'
          +' AND B.UPAGOID=D.UPAGOID'
          +' AND A.RCOBMES=E.MESIDR'
          +' AND F.CNTCONSOL=''S'''
          +' AND B.UPROID=G.UPROID(+) '
          +' AND To_Date(To_Char(A.FREG, ''DD/MM/YYYY'')) >='+sDesde+' '+
           'AND To_Date(To_Char(A.FREG, ''DD/MM/YYYY'')) <='+sHasta+' '+
           'ORDER BY REPRID, RCOBID, CPAGOFECHA'
   else
   xSQL := 'SELECT A.RCOBID, A.REPRID, A.REPRAPENOM, A.RCOBMTO, A.CCBCOID, '
          +' B.RCOBANOAPO||RCOBMESAPO PERIOAPO,'
          +' A.RCOBANO||A.RCOBMES PERIODO, A.RCOBNOPE,'
          +' B.CPAGOMTO, B.CPAGOLIQ, A.RCOBFOPE CPAGOFECHA, B.UPAGOID, B.UPROID, '
          +' C.BANCONOM, D.UPAGONOM, E.MESDESC||''-''||A.RCOBMES MES, F.CIADES, G.UPRONOM '
          +' FROM COB301 A, COB302 B, TGE105 C, APO103 D, TGE181 E, TGE101 F, APO102 G '
          +' WHERE A.RCOBID=B.RCOBID'
          +' AND A.BANCOID=C.BANCOID'
          +' AND B.UPROID=D.UPROID'
          +' AND B.UPAGOID=D.UPAGOID'
          +' AND A.RCOBMES=E.MESIDR'
          +' AND F.CNTCONSOL=''S'''
          +' AND B.UPROID=G.UPROID(+) '
          +' AND To_Date(To_Char(A.RCOBFOPE, ''DD/MM/YYYY'')) >='+sDesde+' '+
           'AND To_Date(To_Char(A.RCOBFOPE, ''DD/MM/YYYY'')) <='+sHasta+' '+
           'ORDER BY REPRID, RCOBID, CPAGOFECHA';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest( xSQL );
   DM1.cdsReporte.Open;

   Screen.Cursor := crDefault;
   if DM1.cdsReporte.RecordCount = 0 then
   begin
      //Information('Modulo de Cobranzas','No Existe Información a Mostrar');
      Exit;
   end;

   Datos.DataSource:=DM1.dsReporte;
   ppBDeposito.Template.FileName := wRutaRpt+'\BoletasDep.rtm' ;
   ppBDeposito.Template.LoadFromFile;

   ppUsuario.Text  := DM1.wUsuario;

   if rgFecha.ItemIndex=0 then
      ppFecha.Caption := 'Por Fecha de Registro : Del '+ DateToStr(dtpDesde.DateTime)+' Al '+DateToStr(dtpHasta.DateTime)
   else
      ppFecha.Caption := 'Por Fecha de Deposito : Del '+ DateToStr(dtpDesde.DateTime)+' Al '+DateToStr(dtpHasta.DateTime);

   ppdesigner1.Report:=ppBDeposito;
   ppDesigner1.ShowModal;
   Datos.DataSource:=nil;

{   ppBDeposito.Print;
   ppBDeposito.Stop;

   x10 := Self.ComponentCount-1;
   While x10 >= 0 do
    begin
     if Self.Components[ x10 ].ClassName='TppGroup' then
      begin
       Self.Components[ x10 ].Free ;
      end;
     x10 := x10-1;
    end;
}
end;

procedure TFCobranzaGlobal.ppBDepositoPreviewFormCreate(Sender: TObject);
begin
{   ppBDeposito.PreviewForm.ClientHeight := 500;
   ppBDeposito.PreviewForm.ClientWidth  := 650;
   TppViewer(ppBDeposito.PreviewForm.Viewer).ZoomSetting := zsPagewidth;}
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
  // TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFCobranzaGlobal.dblcdUPagoExit(Sender: TObject);
begin
   sWhere := 'UPAGOID='+QuotedStr(dblcdUPago.Text);
   DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM, UPAGOABR', sWhere, 'UPAGONOM');
   dbeUPago.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
end;

procedure TFCobranzaGlobal.dblcdUProcesoExit(Sender: TObject);
begin
   sWhere := 'UPROID ='''+dblcdUProceso.Text+'''';
   dbeUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', sWhere, 'UPRONOM');

   xSQL := 'SELECT UPAGOID, UPAGONOM'
          +' FROM APO103'
          +' WHERE UPROID ='+QuotedStr(dblcdUProceso.Text);

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   dbeUPago.Clear;

{   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;}
end;

procedure TFCobranzaGlobal.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
   Inicializar;
end;

procedure TFCobranzaGlobal.dblcdRepresentanteExit(Sender: TObject);
begin
   sWhere := 'REPRID = '+ QuotedStr(dblcdRepresentante.Text);
   edtRepresentante.Text := DM1.DisplayDescrip('prvSQL', 'COB201', 'REPRAPENOM', sWhere, 'REPRAPENOM');
  //xNomRep:=Trim(DM1.DisplayDescrip('prvSQL','COB201','REPRAPENOM',sWhere,'REPRAPENOM'));
end;

procedure TFCobranzaGlobal.dbgFiltroDblClick(Sender: TObject);
var
   sAno, sMes, sRCob : String;
begin
   If DM1.cdsRegCob.RecordCount = 0 Then
   Begin
      ShowMessage('No Existen Registros a Editar');
      Exit;
   End;

   sAno :=DM1.cdsRegCob.FieldByname('rcobano').AsString;
   sMes :=DM1.cdsRegCob.FieldByname('rcobmes').AsString;
   sRCob:=DM1.cdsRegCob.FieldByname('rcobid').AsString;

   DM1.wModo := 'M';
   FRegGlobalCob:=TFRegGlobalCob.Create(self);
   FRegGlobalCob.ShowModal;
   FRegGlobalCob.Free;

   FiltraData( 'REFRESH' );
   DM1.cdsRegCob.Locate('rcobano;rcobmes;rcobid',VarArrayOf([sAno,sMes,sRCob]),[])
end;

procedure TFCobranzaGlobal.Z2btnActRegClick(Sender: TObject);
var
   sAno, sMes, sRCob : String;
begin
   sAno :=DM1.cdsRegCob.FieldByname('rcobano').AsString;
   sMes :=DM1.cdsRegCob.FieldByname('rcobmes').AsString;
   sRCob:=DM1.cdsRegCob.FieldByname('rcobid').AsString;

   DM1.wModo := 'A';
   FRegGlobalCob:=TFRegGlobalCob.Create(self);
   FRegGlobalCob.ShowModal;
   FRegGlobalCob.Free;
   
   FiltraData( 'REFRESH' );
   DM1.cdsRegCob.Locate('rcobano;rcobmes;rcobid',VarArrayOf([sAno,sMes,sRCob]),[])
end;


procedure TFCobranzaGlobal.Z2bbtnFiltroClick(Sender: TObject);
begin

   pnlFiltro.Top := pnlPie.Top - pnlFiltro.Height - 1;
   pnlFiltro.Visible := not pnlFiltro.Visible;


   If pnlFiltro.Visible then begin
      //dbgFiltro.Align  := alNone;
      //dbgFiltro.Height := dbgFiltro.Height - pnlFiltro.Height-1;
      pnlFiltro.Width  := dbgFiltro.Width;
      pnlFiltro.Left   := dbgFiltro.Left;

      //bbtnCerrarF.Left := pnlFiltro.Width-bbtnCerrarF.Width-2;
      //bbtnFilt.Left    := pnlFiltro.Width-bbtnFilt.Width-40;
      //bbtnExporta.Left := pnlFiltro.Width-bbtnExporta.Width-40;
      //edtRegistros.Left:= pnlFiltro.Width-edtRegistros.Width-30;
      //lblRegistros.Left:= pnlFiltro.Width-lblRegistros.Width-30;
      pnlDiseno.Top    := pnlFiltro.Top - pnlDiseno.Height - 2;
      //pnlDiseno.Left   := pnlColumna.Left + pnlColumna.Width + (Trunc(dbgFiltro.Width/2)-Trunc(pnlDiseno.Width/2));
      GeneraListBox;
      end
   else begin
      //dbgFiltro.Height:= dbgFiltro.Height + pnlFiltro.Height-1;
      //dbgFiltro.Align := alClient;
      pnlDiseno.Top   := pnlPie.Top - pnlDiseno.Height - 2;
   end;

end;

procedure TFCobranzaGlobal.GeneraListBox;
var
   xTitCampo : String;
   xNomCampo : String;
   i, xxPos, nv  : Integer;
   xContinue : Boolean;
begin
//   clbCampos.Items.Clear;
//   clbCampos2.Items.Clear;
//   clbCamposP.Items.Clear;
//   clbCamposA.Items.Clear;
//   clbCamposReal.Items.Clear;
   lbCampos.Items.Clear;
   lbCamposReal.Items.Clear;
   clbRepD.Items.Clear;
   clbRepDReal.Items.Clear;
   clbRepDTabla.Items.Clear;

   if cdsGrid.RecordCount>0 then begin
      cdsGrid.First;
      while Not cdsGrid.Eof do begin

         if cdsGrid.FieldByName('Flag').AsString<>'S' then begin

            xNomCampo:=cdsGrid.FieldByName('Campo').AsString;

            xContinue:=True;
            {For nv:=0 to wNoVisible.Count-1 do begin
                if xNomCampo=wNoVisible[ nv ] then begin
                   xContinue:=False;
                   Break;
                end;
            end;
            }
            if xContinue then begin
               xTitCampo := cdsGrid.FieldByName('DetDBGTitle').AsString;
               //clbCampos2.Items.Add( xTitCampo );
               //clbCamposP.Items.Add( cdsGrid.FieldByName('DetDBGPicture').AsString );

               if (cdsGrid.FieldByName('DetDBGPos').AsInteger=0) or (cdsGrid.FieldByName('DetDBGPos').AsInteger=99) then
               begin;
                  {if cdsGrid.FieldByName('TipoCombo').asstring='R' then
                     clbCamposA.Items.Add( 'R' )
                  else begin
                     clbCamposA.Items.Add( 'L' );
                  end;}
                  If Length( xTitCampo )=0 then begin
                     lbCampos.Items.Add( xNomCampo );
                     //clbCampos.Items.Add( xNomCampo );
                     if (cdsGrid.FieldByName('DETDBGREFER').AsString<>'') and
                        (cdsGrid.FieldByName('DETDBGREFER').AsString<>wTabla) then begin
                        clbRepD.Items.Add( xNomCampo );
                     end;
                  end
                  else begin
                     xTitCampo[ Pos('~',xTitCampo) ] := ' ';
                     lbCampos.Items.Add( xTitCampo );
                     //clbCampos.Items.Add( xTitCampo );
                     if (cdsGrid.FieldByName('DETDBGREFER').AsString<>'') and
                        (cdsGrid.FieldByName('DETDBGREFER').AsString<>wTabla) then begin
                        clbRepD.Items.Add( xTitCampo );
                     end;
                  end;
                  lbCamposReal.Items.Add( xNomCampo );
                  //clbCamposReal.Items.Add( xNomCampo);
                  if (cdsGrid.FieldByName('DETDBGREFER').AsString<>'') and
                     (cdsGrid.FieldByName('DETDBGREFER').AsString<>wTabla) then begin
                     clbRepDReal.Items.Add( xNomCampo );
                     clbRepDTabla.Items.Add( cdsGrid.FieldByName('DETDBGREFER').AsString );
                  end;
               end
               else begin

                  if (cdsGrid.FieldByName('DetDBGPos').AsInteger-1)<=lbCampos.Items.Count then
                     xxPos := cdsGrid.FieldByName('DetDBGPos').AsInteger-1
                  else begin
                     xxPos := lbCampos.Items.Count;
                  end;

{                  if cdsGrid.FieldByName('TipoCombo').asstring='R' then
                     clbCamposA.Items.Insert( xxPos,'R' )
                  else begin
                     clbCamposA.Items.Insert(xxPos, 'L' );
                  end;}
                  If Length( xTitCampo )=0 then begin
                     lbCampos.Items.Insert( xxPos, xNomCampo );
                     //clbCampos.Items.Insert( xxPos, xNomCampo );
                     if (cdsGrid.FieldByName('DETDBGREFER').AsString<>'') and
                        (cdsGrid.FieldByName('DETDBGREFER').AsString<>wTabla) then begin
                        clbRepD.Items.Add( xNomCampo );
                     end;
                     end
                  else begin
                     xTitCampo[ Pos('~',xTitCampo) ] := ' ';
                     lbCampos.Items.Insert( xxPos, xTitCampo );
                     //clbCampos.Items.Insert( xxPos, xTitCampo );
                     if (cdsGrid.FieldByName('DETDBGREFER').AsString<>'') and
                        (cdsGrid.FieldByName('DETDBGREFER').AsString<>wTabla) then begin
                        clbRepD.Items.Add( xTitCampo );
                     end;
                  end;
                  lbCamposReal.Items.Insert( xxPos, xNomCampo );
                  //clbCamposReal.Items.Insert( xxPos, xNomCampo);
                     if (cdsGrid.FieldByName('DETDBGREFER').AsString<>'') and
                        (cdsGrid.FieldByName('DETDBGREFER').AsString<>wTabla) then begin
                     clbRepDReal.Items.Add( xNomCampo );
                     clbRepDTabla.Items.Add( cdsGrid.FieldByName('DETDBGREFER').AsString );
                  end;
               end;
            end;  // xContinue
         end;  //cdsGrid.FieldByName('Flag').AsString<>'S'
         cdsGrid.Next;
      end;
      end
   else begin
{      for i:=0 to cds2.Fields.Count-1 do begin
          xNomCampo := cds2.FieldS[ I ].FieldName;
          lbCampos.Items.Add( xNomCampo );
          clbCampos.Items.Add( xNomCampo );
          lbCamposReal.Items.Add( xNomCampo );
          clbCamposReal.Items.Add( xNomCampo );
          clbCampos2.Items.Add( xNomCampo );
          clbCamposP.Items.Add( '' );
          clbCamposA.Items.Add( 'L' );
      end;}
   end;

   For nv:=0 to lbCamposReal.Items.Count-1 do begin

       try
       if Pos('.',lbCamposReal.Items.Strings[ nv ])=0 then begin
          if not DM1.cdsRegCob.FieldByName( lbCamposReal.Items.Strings[ nv ] ).Visible then
             lbCampos.Checked[ nv ]:=False
          else
             lbCampos.Checked[ nv ]:=True;
       end
       else begin
          if not DM1.cdsRegCob.FieldByName( Copy(lbCamposReal.Items.Strings[nv], Pos('.',lbCamposReal.Items.Strings[ nv ])+1, Length(lbCamposReal.Items.Strings[nv])-2 ) ).Visible then
             lbCampos.Checked[ nv ]:=False
          else
             lbCampos.Checked[ nv ]:=True;
       end;
       except
       end;
   end;

end;


procedure TFCobranzaGlobal.lbCamposClickCheck(Sender: TObject);
begin
   if lbCampos.Checked[ lbCampos.ItemIndex ] then begin
      if Pos('.',lbCamposReal.Items.Strings[lbCampos.ItemIndex])=0 then
         DM1.cdsRegCob.FieldByName( lbCamposReal.Items.Strings[lbCampos.ItemIndex] ).Visible:=True
      else
         DM1.cdsRegCob.FieldByName( Copy(lbCamposReal.Items.Strings[lbCampos.ItemIndex], Pos('.',lbCamposReal.Items.Strings[lbCampos.ItemIndex])+1, Length(lbCamposReal.Items.Strings[lbCampos.ItemIndex])-2) ).Visible:=True;
   end
   else begin
      if Pos('.',lbCamposReal.Items.Strings[lbCampos.ItemIndex])=0 then
         DM1.cdsRegCob.FieldByName( lbCamposReal.Items.Strings[lbCampos.ItemIndex]).Visible:=False
      else
         DM1.cdsRegCob.FieldByName( Copy(lbCamposReal.Items.Strings[lbCampos.ItemIndex], Pos('.',lbCamposReal.Items.Strings[lbCampos.ItemIndex])+1, Length(lbCamposReal.Items.Strings[lbCampos.ItemIndex])-2) ).Visible:=False;
   end;
end;

procedure TFCobranzaGlobal.lbCamposEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
   if Target=lbFiltro then begin // si el destino es filtros
      dbgFiltro.Enabled  := False;
      pnlFiltro.Enabled  := False;
      pnlPie.Enabled     := False;
//      pnlBtns.Enabled    := False;
//      bbtnAcceso.Enabled := False;
//      bbtnRef.Enabled    := False;
      nContPrv :=0;
      nContPrv2:=0;
      MuestraPanel;
   end;
   if Target=lbOrden then begin  // si el destino es ordenar
      lbOrden.Items.Add(lbCampos.Items.Strings[lbCampos.ItemIndex]);
      lbOrdenReal.Items.Add(lbCamposReal.Items.Strings[lbCampos.ItemIndex]);
   end;
end;

procedure TFCobranzaGlobal.lbCamposMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   lbCampos.BeginDrag(False);
end;

procedure TFCobranzaGlobal.lbFiltroDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept:=True;
end;

Procedure TFCobranzaGlobal.MuestraPanel;
var
   wwFieldTitle : String;
//   xWidth, xHeight, wwTipo, nv : Integer;
   wwTipo, nv : Integer;
   xContinue : Boolean;
begin
   // VHNXXX  26112003

   rgValor.ItemIndex:=0;
   cbCampos.Visible :=False;

   bbtnOkF.Visible:=True;
   xIniOr:=0; // Contador de Or

   rgFiltro.ItemIndex:=2;         // asigna valor default '=' a criterio de filtros
   pnlFiltro2.Top:=pnlFiltro.Top-pnlFiltro.Height-40;
   pnlFiltro2.Left:=trunc((dbgfiltro.width-pnlFiltro2.Width)/2);

   pnlFiltro2.Visible:=True;

   wwTipo:=3;
   wLin   := 60;
   wCol   := 0;
   xNComp := 0;
   cdsGrid.First;
   while not cdsGrid.Eof do begin

    if cdsGrid.FieldByName('Flag').AsString<>'S' then begin

      wFieldName:=cdsGrid.FieldByName('Campo').AsString;

      xContinue:=True;
      {
      For nv:=0 to wNoVisible.Count-1 do begin
          if wFieldName=wNoVisible[ nv ] then begin
             xContinue:=False;
             Break;
          end;
      end;
      }
      if Pos('.',cdsGrid.FieldByName('Campo').AsString)=0 then
         wFieldName:=cdsGrid.FieldByName('Campo').AsString
      else
         wFieldName:=Copy(cdsGrid.FieldByName('Campo').AsString, Pos('.',cdsGrid.FieldByName('Campo').AsString)+1, Length(cdsGrid.FieldByName('Campo').AsString)-1);

      if xContinue then
         xNComp:=xNComp+1;

      if xNComp=(lbCampos.ItemIndex+1) then begin

         wFieldN[xNComp]  := wFieldName;
         wwFieldTitle     := cdsGrid.FieldByName('DetDBGTitle').asstring;
         wKey[xNComp]     := cdsGrid.FieldByName('DetDBGKey').AsString;
         wType[xNComp]    := cdsGrid.FieldByName('TipoCombo').AsString;
         wTableN[xNComp]  := cdsGrid.FieldByName('DetDBGRefer').AsString;
         wStrZero[xNComp] := cdsGrid.FieldByName('STRZERO').AsString;
         wWidthReg[xNComp]:= cdsGrid.FieldByName('DETDBGWIDTH').AsInteger;

// Inicio: SPP_201311_COB       : 14/08/2013 - Agregar Avento para mejorar el Filtrar
         wlbl[xNComp]   := TLabel.create(self);
         PropLBL( wlbl[xNComp], wwFieldTitle, pnlFiltro2 );
         if wType[xNComp]='D' then begin
            bbtnDate.Visible:=True;
            meDias.Visible  :=True;
            lblDias.Visible :=True;
            wdbdtp[xNComp]:=TwwDBDateTimePicker.create(self);
            PropDTP( wdbdtp[xNComp], wwTipo, pnlFiltro2 );
            wdbdtp[xNComp].Left:=wdbdtp[xNComp].Left+50;
            wdbdtp[xNComp].OnKeyDown :=cbCamposKeyDown;
            wdbdtp[xNComp].TabOrder  :=1;
            wdbdtp[xNComp].SetFocus;
         end
         else begin
            bbtnDate.Visible:=False;
            meDias.Visible  :=False;
            lblDias.Visible :=False;
            If wType[xNComp]='L' then begin
               wdblc[xNComp]:=TwwDBLookupCombo.create(self);
               PropDBLC( wdblc[xNComp], wwTipo, pnlFiltro2 );
               wdblc[xNComp].Left:=wdblc[xNComp].Left+50;
               wdblc[xNComp].OnKeyDown :=cbCamposKeyDown;
               wdblc[xNComp].TabOrder  :=1;
               wdblc[xNComp].SetFocus;
               end
            else begin
               If wType[xNComp]='C' then begin
                  wdblcd[xNComp]:=TwwDBLookupComboDlg.create(self);
                  PropDBLCD( wdblcd[xNComp], wwTipo, pnlFiltro2 );
                  wdblcd[xNComp].Left:=wdblcd[xNComp].Left+50;
                  wdblcd[xNComp].OnKeyDown :=cbCamposKeyDown;
                  wdblcd[xNComp].TabOrder  :=1;
                  wdblcd[xNComp].SetFocus;
                  end
               else begin
                  wdbedit[xNComp]:=TwwDBEdit.create(self);
                  PropDBE( wdbedit[xNComp], wwTipo, pnlFiltro2 );
                  wdbedit[xNComp].Left:=wdbedit[xNComp].Left+50;
                  wdbedit[xNComp].SetFocus;
                  wdbedit[xNComp].OnKeyDown :=cbCamposKeyDown;
                  wdbedit[xNComp].TabOrder  :=1;
// Fin: SPP_201311_COB       : 14/08/2013 - Agregar Avento para mejorar el Filtrar
               end;
            end;
         end;
         Exit;
      end;
    end;
      cdsGrid.Next;
   end;

   if cdsGrid.RecordCount=0 then begin
      xNComp := lbCampos.ItemIndex;
      wFieldName       := lbCampos.Items.Strings[ xNComp ];
      wFieldN[ xNComp ]:= wFieldName;
      wwFieldTitle     := wFieldName;
      wKey[ xNComp ]   := '';
      wType[ xNComp ]  := 'E';
      wTableN[ xNComp ]:= ' ';
      wlbl[ xNComp ]   := TLabel.create(self);
      PropLBL( wlbl[xNComp], wwFieldTitle, pnlFiltro2 );
      wdbedit[ xNComp ]:=TwwDBEdit.create(self);
      PropDBE( wdbedit[ xNComp ], wwTipo, pnlFiltro2 );
      wdbedit[xNComp].Left:=wdbedit[xNComp].Left+50;
      wdbedit[ xNComp ].SetFocus;
   end;

end;

Procedure TFCobranzaGlobal.PropLBL( wwLabel:TLabel; wwCaption:String; wwParent:TPanel );
begin
   // Propiedades del Label
   If Length(wwCaption)>0 then begin
      wwCaption[ Pos('~',wwCaption)] := ' ';
      wwLabel.Caption := wwCaption;
   end;
   wwLabel.name   := 'lblG'+wFieldName;
   wwLabel.left   := xLabelLeft + wCol;
   wwLabel.top    := xInicioCampos+ 5 + wLin;
   wwLabel.width  := 100;
   wwLabel.parent := wwParent;
end;

Procedure TFCobranzaGlobal.PropDTP( wwDBDTP:TwwDBDateTimePicker; wwTipo:Integer; wwParent:TPanel );
begin
   wwdbdtp.name          := 'dbdtp'+wFieldName;
   wwdbdtp.Text          := '';
   wwdbdtp.left          := xCampoLeft + wCol;
   wwdbdtp.top           := xInicioCampos + wLin;
   wwdbdtp.width         := xCampoWidth;
   wwdbdtp.parentbidimode:= True;
   wwdbdtp.parentcolor   := False;
   wwdbdtp.parentfont    := True;
   wwdbdtp.AutoSize      := True;
   wwdbdtp.Parent        := wwParent;
   if wwTipo<>3 then begin
      wwdbdtp.DataSource    := DM1.dsRegCob;
      wwdbdtp.DataField     := wFieldName;
   end;
   If wwTipo=2 then
      If Length( wKey[ xNComp ] )>0 then
         wwdbdtp.Enabled:=False;
end;


Procedure TFCobranzaGlobal.PropDBLC( wwDBLC:TwwDBLookupCombo; wwTipo:Integer; wwParent:TPanel );
var
   wQuery, wCampoCombo, wCampoTitle : String;
   wCampoWidth : Integer;
begin
   // Crea CDS Para El Combo
   wcds[ xNComp ]        := TwwClientDataset.create(self);
   wcds[ xNComp ].DisableControls;
   wcds[ xNComp ].name   := 'cds' + wFieldName;
   wcds[ xNComp ].RemoteServer := DM1.DCOM1;
   wcds[ xNComp ].providername := 'prvCombo';
   wQuery:='Select * from ' + wTableN[ xNComp ];
//   wcds[ xNComp ].PacketRecords:=wPacketCombo;
//   wcds[ xNComp ].FetchOnDemand:=False;
   wcds[ xNComp ].DataRequest(wQuery);
   wcds[ xNComp ].Open;
   wcds[ xNComp ].EnableControls;

   nContPrv2:=nContPrv2+1;

//   wcds[ xNComp ].FetchOnDemand:=True;
   // Fin CDS Para El Combo

   wwDBLC.name          := 'dblc'+wFieldName;
   wwDBLC.left          := xCampoLeft + wCol;
   wwDBLC.top           := xInicioCampos+wLin;
   wwDBLC.width         := xCampoWidth;
   wwDBLC.parentbidimode:= True;
   wwDBLC.parentcolor   := False;
   wwDBLC.parentctl3d   := True;
   wwDBLC.parentfont    := True;
   if wwTipo<>3 then begin
      wwDBLC.DataSource    := DM1.dsRegCob;
      wwDBLC.DataField     := wFieldName;
   end;
   wwDBLC.AutoSize       := True;
   wwDBLC.parent         := wwParent;
   wwDBLC.lookuptable    := wcds[ xNComp ];
   wwDBLC.Options        := wwDBLC.Options + [loColLines];
   wwDBLC.Options        := wwDBLC.Options + [loRowLines];
   wwDBLC.Options        := wwDBLC.Options + [loTitles];
   wwDBLC.ShowMatchText  := True;
   wwDBLC.AutoDropDown   := True;
   wwDBLC.AllowClearKey  := True;
   wwDBLC.Style          := csDropDownList;
   wwDBLC.MaxLength      := DM1.cdsRegCob.FieldByName( wFieldName ).Size;
   wwDBLC.DropDownAlignment:= TaRightJustify;
   wwDBLC.SearchDelay    :=2;

   // Añadir Evento de Validar Código y Busqueda
   if wwTipo=3 then
      wwDBLC.OnDropDown:=DBLCDropDown
   else begin
      {if nContPrv2=1 then begin
         wComx1:=xNComp;
         wwDBLC.OnDropDown:=DBLCDropDown1;
         wwDBLC.OnExit    :=DBLC1Exit;
      end;
      if nContPrv2=2 then begin
         wComx2:=xNComp;
         wwDBLC.OnDropDown:=DBLCDropDown2;
         wwDBLC.OnExit    :=DBLC2Exit;
      end;
      if nContPrv2=3 then begin
         wComx3:=xNComp;
         wwDBLC.OnDropDown:=DBLCDropDown3;
         wwDBLC.OnExit    :=DBLC3Exit;
      end;
      if nContPrv2=4 then begin
         wComx4:=xNComp;
         wwDBLC.OnDropDown:=DBLCDropDown4;
         wwDBLC.OnExit    :=DBLC4Exit;
      end;
      if nContPrv2=5 then begin
         wComx5:=xNComp;
         wwDBLC.OnDropDown:=DBLCDropDown5;
         wwDBLC.OnExit    :=DBLC5Exit;
      end;}
   end;

   // Selected de Campos
   wcdsLookup[ xNComp ]:=TwwClientDataset.create(self);
   wcdslookup[ xNComp ].name:= 'cds2' + wFieldName;
   wcdslookup[ xNComp ].remoteserver:=DM1.DCOM1;
   wcdsLookup[ xNComp ].providername:='prvRef';

   wQuery:='Select * from Plan04 '
          +'Where ARCHIVO='''+AnsiUpperCase(wTableN[ xNComp ])+''' and '
          +      '( DETALLE=''C'' or DETALLE=''S'' ) '
          +'ORDER BY Archivo,DetDBGPos';
   wcdsLookup[ xNComp ].Close;
   wcdsLookup[ xNComp ].DataRequest(wQuery);
   wcdsLookup[ xNComp ].Open;
   {
   wQuery:='ARCHIVO='''+AnsiUpperCase(wTableN[ xNComp ])+''' and '
          +'( DETALLE=''C'' or DETALLE=''S'' ) ';
   FiltraTablaRemoto( wcdsLookup[ xNComp ], 'PLAN04', 'ARCHIVO', wQuery );
   }
   wcdsLookup[ xNComp ].IndexFieldNames:='ARCHIVO;DETDBGPOS';

   wcdsLookup[ xNComp ].First;
   while Not wcdsLookup[ xNComp ].Eof do begin
      if ( wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='S' )
         or ( wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='C' ) then begin
         wCampoCombo := wcdsLookup[ xNComp ].FieldByName('Campo').AsString;
         wCampoTitle := wcdsLookup[ xNComp ].FieldByName('DetDBGTitle').asstring;
         If Pos('~',wCampoTitle) > 0 then wCampoTitle[ Pos('~',wCampoTitle)]:= ' ';
         wCampoWidth := wcds[ xNComp ].FieldByName( wCampoCombo ).Size;
         if wcdsLookup[ xNComp ].FieldByName('DetDBGWidth').AsInteger>0 then
            wCampoWidth:=wcdsLookup[ xNComp ].FieldByName('DetDBGWidth').AsInteger;

         wwDBLC.Selected.Add( wCampoCombo + #9 + IntToStr(wCampoWidth) + #9 + wCampoTitle );

         if wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='C' then begin
            wwDBLC.lookupfield := wcdsLookup[ xNComp ].FieldByName('Campo').AsString;
            wcds[ xNComp ].IndexFieldNames:=wcdsLookup[ xNComp ].FieldByName('Campo').AsString;
         end;
      end;
      wcdsLookup[ xNComp ].Next;
   end;
   // End Selected de Campos

   If wwTipo=2 then
      If Length( wKey[ xNComp ] )>0 then
         wwDBLC.Enabled:=False;
end;

Procedure TFCobranzaGlobal.PropDBLCD( wwDBLCD:TwwDBLookupComboDlg; wwTipo:Integer; wwParent:TPanel );
var
   wQuery, wCampoCombo, wCampoTitle : String;
   wCampoWidth : Integer;
begin
   // Crea CDS Para El Combo
   wcds[ xNComp ]:= TwwClientDataset.create(self);
   wcds[ xNComp ].name        :='cdsFFF' + wFieldName;
   wcds[ xNComp ].remoteserver:=DM1.DCOM1;

   nContPrv:=nContPrv+1;

   wcds[ xNComp ].providername:='dspTem'+IntToStr(nContPrv);

   wQuery:='Select * from ' + wTableN[ xNComp ];

   wcds[ xNComp ].Close;

   if wwTipo<>3 then begin
      wcds[ xNComp ].FetchOnDemand:=False;
      wcds[ xNComp ].PacketRecords:=wPacketCombo;
   end;

   wcds[ xNComp ].DataRequest(wQuery);
   wcds[ xNComp ].EnableControls;
   // Fin CDS Para El Combo

   wwDBLCD.Ctl3D         := True;
   wwDBLCD.name          := 'dblcdFFF'+wFieldName;
   wwDBLCD.left          := xCampoLeft + wCol;
   wwDBLCD.top           := xInicioCampos+wLin;
   wwDBLCD.width         := xCampoWidth;
   wwDBLCD.ControlInfoInDataset:=False;

   if wwTipo<>3 then begin
      wwDBLCD.DataSource    :=DM1.dsRegCob;
      wwDBLCD.DataField     :=wFieldName;
   end;

   wwDBLCD.parent           :=wwParent;
   wwDBLCD.lookuptable      :=wcds[ xNComp ];
   {
   wwDBLCD.ShowMatchText    :=True;
   wwDBLCD.AllowClearKey    :=True;
   }
   wwDBLCD.SeqSearchOptions :=wwDBLCD.SeqSearchOptions+[ssoEnabled];
   wwDBLCD.MaxLength        :=DM1.cdsRegCob.FieldByName( wFieldName ).Size;
   wwDBLCD.DropDownAlignment:=TaRightJustify;
   //wwDBLCD.AutoDropDown     :=True;
   wwDBLCD.SearchDelay      :=2;
   wwDBLCD2:=wwDBLCD;

   // Añadir Evento de Validar Código y Busqueda
   if wwTipo=3 then
      wwDBLCD.OnDropDown:=DBLCDDropDown
   else begin
     { if nContPrv=1 then begin
         wComp1:=xNComp;
         wwDBLCD.OnDropDown:=DBLCDDropDown1;
         wwDBLCD.OnExit    :=DBLCD1Exit;
      end;
      if nContPrv=2 then begin
         wComp2:=xNComp;
         wwDBLCD.OnDropDown:=DBLCDDropDown2;
         wwDBLCD.OnExit    :=DBLCD2Exit;
      end;
      if nContPrv=3 then begin
         wComp3:=xNComp;
         wwDBLCD.OnDropDown:=DBLCDDropDown3;
         wwDBLCD.OnExit    :=DBLCD3Exit;
      end;
      if nContPrv=4 then begin
         wComp4:=xNComp;
         wwDBLCD.OnDropDown:=DBLCDDropDown4;
         wwDBLCD.OnExit    :=DBLCD4Exit;
      end;
      if nContPrv=5 then begin
         wComp5:=xNComp;
         wwDBLCD.OnDropDown:=DBLCDDropDown5;
         wwDBLCD.OnExit    :=DBLCD5Exit;
      end;
      if nContPrv=6 then begin
         wComp6:=xNComp;
         wwDBLCD.OnDropDown:=DBLCDDropDown6;
         wwDBLCD.OnExit    :=DBLCD6Exit;
      end;
      if nContPrv=7 then begin
         wComp7:=xNComp;
         wwDBLCD.OnDropDown:=DBLCDDropDown7;
         wwDBLCD.OnExit    :=DBLCD7Exit;
      end;
      if nContPrv=8 then begin
         wComp8:=xNComp;
         wwDBLCD.OnDropDown:=DBLCDDropDown8;
         wwDBLCD.OnExit    :=DBLCD8Exit;
      end;
      if nContPrv=9 then begin
         wComp9:=xNComp;
         wwDBLCD.OnDropDown:=DBLCDDropDown9;
         wwDBLCD.OnExit    :=DBLCD9Exit;
      end;}
   end;

   // Selected de Campos
   wcdsLookup[ xNComp ]:=TwwClientDataset.create(self);
   wcdslookup[ xNComp ].name:= 'cds2FFF' + wFieldName;
   wcdslookup[ xNComp ].remoteserver:=DM1.DCOM1;
   wcdsLookup[ xNComp ].providername:='prvRef';

   wQuery:='Select * from Plan04 '
          +'Where ARCHIVO='''+AnsiUpperCase(wTableN[ xNComp ])+''' and '
          +      '( DETALLE=''C'' or DETALLE=''S'' ) '
          +'ORDER BY Archivo,DetDBGPos';
   wcdsLookup[ xNComp ].Close;
   wcdsLookup[ xNComp ].DataRequest(wQuery);
   wcdsLookup[ xNComp ].Open;
   {
   wQuery:='ARCHIVO='''+AnsiUpperCase(wTableN[ xNComp ])+''' and '
          +'( DETALLE=''C'' or DETALLE=''S'' ) ';
   FiltraTablaRemoto( wcdsLookup[ xNComp ], 'PLAN04', 'ARCHIVO', wQuery );
   }
   wcdsLookup[ xNComp ].IndexFieldNames:='ARCHIVO;DETDBGPOS';

   // VHNXX1
//   if wwTipo<>3 then begin
      wcdsLookup[ xNComp ].First;
      while Not wcdsLookup[ xNComp ].Eof do begin
         if ( wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='S' )
            or ( wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='C' ) then begin
            wCampoCombo := wcdsLookup[ xNComp ].FieldByName('Campo').AsString;
            wCampoTitle := wcdsLookup[ xNComp ].FieldByName('DetDBGTitle').AsString;
            wCampoWidth := 15;
            if wcdsLookup[ xNComp ].FieldByName('DetDBGWidth').AsInteger>0 then
               wCampoWidth:=wcdsLookup[ xNComp ].FieldByName('DetDBGWidth').AsInteger;

            If Pos('~',wCampoTitle) > 0 then wCampoTitle[ Pos('~',wCampoTitle)]:= ' ';
            wwDBLCD.Selected.Add( wCampoCombo + #9 + IntToStr(wCampoWidth) + #9 + wCampoTitle );
            If wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='C' then begin
               wwDBLCD.lookupfield := wcdsLookup[ xNComp ].FieldByName('Campo').AsString;
            end
         end;
         wcdsLookup[ xNComp ].Next;
      end;
//   end;

   If wwTipo=2 then
      If Length( wKey[ xNComp ] )>0 then
         wwDBLCD.Enabled:=False;
end;

Procedure TFCobranzaGlobal.PropDBE( wwDBEdit:TwwDBEdit; wwTipo:Integer; wwParent:TPanel );
begin
   wwdbedit.name          := 'dbexx'+wFieldName;
   wwdbedit.text          := '';
   wwdbedit.left          := xCampoLeft + wCol;
   wwdbedit.top           := xInicioCampos + wLin;
   wwdbedit.width         := xCampoWidth;
   wwdbedit.parentbidimode:= True;
   wwdbedit.parentcolor   := False;
   wwdbedit.parentctl3d   := True;
   wwdbedit.parentfont    := True;
   if wwTipo<>3 then begin
      wwdbedit.DataSource := DM1.dsRegCob;
      wwdbedit.DataField  := wFieldName;
   end;
   wwdbedit.AutoSize      := True;
   wwdbedit.parent        := wwParent;
   wwdbedit.MaxLength     := DM1.cdsRegCob.FieldByName( wFieldName ).Size;

   if wwTipo=3 then begin
      wwDBEdit.OnExit:=DBEExit;
   end;

   if wType[xNComp]='N' then
      wwdbedit.Enabled:=False;

   if wType[xNComp]<>'R' then
      wwdbedit.Picture.PictureMask := wPicture[ xNComp ];

   If wwTipo=2 then
      If Length( wKey[ xNComp ] )>0 then
         wwdbedit.Enabled:=False;
end;

procedure TFCobranzaGlobal.DBLCDropDown(Sender: TObject );
var
   wQuery, wCampoCombo, wCampoTitle : String;
   wCampoWidth : Integer;
begin
   if not wcds[ xNComp ].Active then begin
      wcds[ xNComp ].PacketRecords:=wPacketCombo;
      wcds[ xNComp ].FetchOnDemand:=False;
      wcds[ xNComp ].Open;
      wcds[ xNComp ].FetchOnDemand:=True;

      wcdsLookup[ xNComp ].First;
      while Not wcdsLookup[ xNComp ].Eof do begin
         if ( wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='S' )
            or ( wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='C' ) then begin
            wCampoCombo := wcdsLookup[ xNComp ].FieldByName('Campo').AsString;
            wCampoTitle := wcdsLookup[ xNComp ].FieldByName('DetDBGTitle').asstring;
            If Pos('~',wCampoTitle) > 0 then wCampoTitle[ Pos('~',wCampoTitle)]:= ' ';
            wCampoWidth := wcds[ xNComp ].FieldByName( wCampoCombo ).Size;
            if wcdsLookup[ xNComp ].FieldByName('DetDBGWidth').AsInteger>0 then
               wCampoWidth:=wcdsLookup[ xNComp ].FieldByName('DetDBGWidth').AsInteger;

            wwDBLC2.Selected.Add( wCampoCombo + #9 + IntToStr(wCampoWidth) + #9 + wCampoTitle );
            If wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='C' then
               wwDBLC2.lookupfield := wcdsLookup[ xNComp ].FieldByName('Campo').AsString;
         end;
         wcdsLookup[ xNComp ].Next;
      end;

   end;
end;

procedure TFCobranzaGlobal.DBLCDDropDown( Sender: TObject );
var
   wQuery, wCampoCombo, wCampoTitle : String;
   wCampoWidth : Integer;
begin

   if not wcds[ xNComp ].Active then begin
      wcds[ xNComp ].FetchOnDemand:=False;
      wcds[ xNComp ].PacketRecords:=wPacketCombo;
      wcds[ xNComp ].Open;
      wcds[ xNComp ].FetchOnDemand:=True;

      wcdsLookup[ xNComp ].IndexFieldNames:='ARCHIVO;DETALLE';

      wcdsLookup[ xNComp ].First;
      while Not wcdsLookup[ xNComp ].Eof do begin
         if ( wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='S' )
            or ( wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='C' ) then begin
            wCampoCombo := wcdsLookup[ xNComp ].FieldByName('Campo').AsString;
            wCampoTitle := wcdsLookup[ xNComp ].FieldByName('DetDBGTitle').AsString;
            wCampoWidth := wcds[ xNComp ].FieldByName( wCampoCombo ).Size;
            if wcdsLookup[ xNComp ].FieldByName('DetDBGWidth').AsInteger>0 then
               wCampoWidth:=wcdsLookup[ xNComp ].FieldByName('DetDBGWidth').AsInteger;

            If Pos('~',wCampoTitle) > 0 then wCampoTitle[ Pos('~',wCampoTitle)]:= ' ';
            wwDBLCD2.Selected.Add( wCampoCombo + #9 + IntToStr(wCampoWidth) + #9 + wCampoTitle );
            If wcdsLookup[ xNComp ].FieldByName('Detalle').AsString='C' then begin
               wwDBLCD2.lookupfield := wcdsLookup[ xNComp ].FieldByName('Campo').AsString;
            end
         end;
         wcdsLookup[ xNComp ].Next;
      end;

   end;
end;


procedure TFCobranzaGlobal.DBEExit( Sender: TObject );
begin
   if wStrZero[xNComp]='S' then begin
      if wWidthReg[xNComp]>0 then begin
         wdbedit[xNComp].Text:=StrZero( wdbedit[xNComp].Text, wWidthReg[xNComp] );
         wdbedit[xNComp].Refresh;
      end;
   end;
end;

function TFCobranzaGlobal.StrZero(wNumero:String;wLargo:Integer):string;
var
   i : integer;
   s : string;
begin
   s := '';
   for i:=1 to wLargo do
   begin
      s := s+'0';
   end;
   s := s+trim(wNumero);
   result:= copy(s,length(s)-(wLargo-1),wLargo);
end;


//cedure TFCobranzaGlobal.ds1DataChange(Sender: TObject; Field: TField);
procedure TFCobranzaGlobal.MuestraData;
var
   wQuery, wQryOrder, wQryWhere, wSQL, wCamposSel, wFilter04 : String;
   xus, xpi, xpf : Integer;
begin
//   If not xFlagDS then Exit;

   lbOrden.Items.Clear;
   lbOrdenReal.Items.Clear;
   lbFiltro.Items.Clear;
   lbFiltroReal.Items.Clear;

      // vhn 23/09/2002
      cdsPlan.Close;
      cdsPlan.RemoteServer   :=DM1.DCOM1;
      cdsPlan.DataRequest( 'Select * from PLAN20 WHERE USUARIO='''+DM1.wUsuario+''' AND TABLA='''+wTabla+'''' );
      cdsPlan.Open;

      cdsPlan.FieldByName('DESCRIPTION').DisplayLabel:='Nombre';
      cdsPlan.FieldByName('DESCRIPTION').DisplayWidth:=30;
      cdsPlan.FieldByName('ULTIMO').DisplayLabel:='Ultimo';
      cdsPlan.FieldByName('ULTIMO').Index:=0;
      cdsPlan.FieldByName('TABLA').Visible     :=False;
      cdsPlan.FieldByName('TITULO').Visible    :=False;
      cdsPlan.FieldByName('USUARIO').Visible   :=False;
      //cdsPlan.FieldByName('SQLUSER').Visible   :=False;
      cdsPlan.FieldByName('GRUPOS').Visible    :=False;
      cdsPlan.FieldByName('LISTFIELDL').Visible:=False;
      cdsPlan.FieldByName('LISTFIELDF').Visible:=False;
      cdsPlan.FieldByName('LISTORDERL').Visible:=False;
      cdsPlan.FieldByName('LISTORDERF').Visible:=False;
      cdsPlan.FieldByName('FECREG').Visible    :=False;
      cdsPlan.FieldByName('HORREG').Visible    :=False;
      dbgFiltros.SetControlType( 'ULTIMO',fctCheckBox,'U;N' );

      wQuery:= 'SELECT * FROM PLAN04 WHERE ARCHIVO='''+wTabla+''' '
             + 'ORDER BY ARCHIVO, DETDBGPOS';

      wFilter04:= 'ARCHIVO='''+wTabla+''' ';

   // vhn Remoto
   CDSGrid.Close;
   CDSGrid.RemoteServer:=DM1.DCOM1;
   CDSGrid.DataRequest(wQuery);
   CDSGrid.Open;
   CDSGrid.INDEXFIELDNAMES:='ARCHIVO;DETDBGPOS';

   {if wTabla2<>'' then
   begin
      wQuery:= 'SELECT * FROM PLAN04 WHERE ARCHIVO='+''''+wTabla2+'''';
      CDSGrid2.Close;
      CDSGrid2.DataRequest(wQuery);
      CDSGrid2.Open;
      CDSGrid2.INDEXFIELDNAMES:='ARCHIVO;DETDBGPOS';
   end;
   }
   wQryOrder := '';
   if Trim(wTabla)='' then
   begin
      cdsGrid.First;
      while Not cdsGrid.Eof do begin
         If cdsGrid.FieldByName('DetDBGPos').asInteger=1 then begin
            wQryOrder := ' ORDER BY '+cdsGrid.FieldByName('Campo').AsString;
            Break;
         end;
         cdsGrid.Next;
      end;
   end;

   wCamposSel:='';
   cdsGrid.First;
   while Not cdsGrid.Eof do begin
      If wCamposSel='' then
         wCamposSel:=wCamposSel+cdsGrid.FieldByName('Campo').AsString
      else
         wCamposSel:=wCamposSel+', '+cdsGrid.FieldByName('Campo').AsString;
      cdsGrid.Next;
   end;

   wQryWhere := '';

       // VHN VERIFICAR
      wQuery  := 'Select * from '+wTabla;
      wSelect := 'Select * from '+wTabla;
      wFroRep := 'From '+wTabla;

      If Length( wFilter )>0 then
         wQryWhere := ' WHERE ' + wFilter;

   // Lee Vista Grabada
   wSQL := LoadFilter;

   // Construye el SQL de UsuarioSQL

   {wUserSQL:='';
   For xus:=0 to wUsuarioSQL.Count-1 do
       wUserSQL:= wUserSQL + Trim(wUsuarioSQL[xus])+' ';
   }

   // Ejecuta el SQL
   FiltraData( 'NUEVO' );

end;


function TFCobranzaGlobal.LoadFilter : String;
var
  mTabla : String;
begin
  if (trim(wTabla)='') or (trim(wUser)='')  then exit;

  if cdsPlan.Active then begin
     cdsPlan.Filtered:= False;
     cdsPlan.Filter  := '';
     cdsPlan.Filter  := 'USUARIO='''+wUser+''' AND TABLA='''+wTabla+''' AND TITULO='''+wTitulo+'''';
     cdsPlan.Filtered:= True;

     if cdsPlan.Locate('TABLA;USUARIO;ULTIMO;TITULO',VarArrayOf([wTabla,wUser,'U',wTitulo]),[]) then
     begin
        mTabla := cdsPlan.FieldByName('TABLA').AsString;

        if trim(wTabla) <> trim(mTabla) then
        begin
           Application.MessageBox ('Debe seleccionar la tabla que corresponda a informe',
                                PChar(Caption),MB_OK+MB_ICONINFORMATION);
           Exit;
        end;

        dbeNameFilt.Text:=cdsPlan.FieldByName('DESCRIPTION').AsString;
        CampoToListBox( lbFiltro,     'LISTFIELDL' );
        CampoToListBox( lbFiltroReal, 'LISTFIELDF' );
        CampoToListBox( lbOrden,      'LISTORDERL' );
        CampoToListBox( lbOrdenReal,  'LISTORDERF' );

        seGrupo.Value:=cdsPlan.FieldByName('GRUPOS').AsInteger;
        wGrupoCols   :=cdsPlan.FieldByName('GRUPOS').AsInteger;

        Result:= wSelect;
        If Length( wFilter )>0 then
           Result:=Result+' WHERE '+wFilter;
     end;

     if not cdsPlan.Found then
        if cdsPlan.eof then begin
           cdsPlan.Prior;
           result :='';
        end;
  end;
end;



procedure TFCobranzaGlobal.FiltraData( xTipo : String );
var
   xWhere, wQuery, xOrder, xCampoR : String;
   x, xpi, xpf, xpf2, nIni : Integer;
   poswhere,posgroup,posorder,I:integer;
   xCampo1 : TField;
   xSOLVista : Integer;
begin
   poswhere:=0;
   posgroup:=0;
   posorder:=0;

   Screen.Cursor:=CrHourGlass;
   xWhere   := '';
   SQL_WHERE:='';

   xSOLVista:=Pos('SOLVISTA', wUserSQL);

   for x:=0 to lbFiltroReal.Items.Count - 1 do begin
      xCampoR:=lbFiltroReal.Items.Strings[x];
      if xSOLVista>0 then
      begin
        if Pos( '.', xCampoR )>0 then
           xCampoR:=Copy( xCampoR, Pos( '.', xCampoR )+1, Length( xCampoR ) );
      end;

      if length( xWhere )>0 then
         if Copy(lbFiltroReal.Items.Strings[x],1,4)=' or ' then
            xWhere := xWhere + xCampoR //lbFiltroReal.Items.Strings[x]
         else
            xWhere := xWhere + ' and ' + xCampoR //lbFiltroReal.Items.Strings[x]
      else begin
         xWhere := xCampoR; //lbFiltroReal.Items.Strings[x];
      end;
   end;

    SQL_WHERE:=xWhere;

   xOrder := '';
   for x:=0 to lbOrdenReal.Items.Count - 1 do begin

      xCampoR:=lbOrdenReal.Items.Strings[x];
      if xSOLVista>0 then
      begin
        if Pos( '.', xCampoR )>0 then
           xCampoR:=Copy( xCampoR, Pos( '.', xCampoR )+1, Length( xCampoR ) );
      end;

      if length( xOrder )>0 then
         xOrder := xOrder + ', ' + xCampoR //lbOrdenReal.Items.Strings[x]
      else begin
         xOrder := xCampoR; //lbOrdenReal.Items.Strings[x];
      end;
   end;

   If Length( xWhere ) > 0 then
      wQuery  := wSelect + ' WHERE ' + xWhere
   else
      wQuery  := wSelect;

   if wFilter<>'' then
   begin
      if pos('WHERE',wQuery)>0 then
      begin
         wQuery   :=wQuery   +' AND ('+ wFilter +') ';
         SQL_WHERE:=SQL_WHERE+' AND ('+ wFilter +') ';
      end
      else begin
         wQuery   :=wQuery + ' WHERE ('+wFilter+') ';
         SQL_WHERE:=' ('+ wFilter +') ';
      end;
   end;

   if wFilter2<>'' then
   begin
      if pos('WHERE',wQuery)>0 then
      begin
         wQuery   :=wQuery   +' AND ('+ wFilter2 +') ';
         SQL_WHERE:=SQL_WHERE+' AND ('+ wFilter2 +') ';
      end
      else begin
         wQuery   :=wQuery + ' WHERE ('+wFilter2+') ';
         SQL_WHERE:=' ('+ wFilter2 +') ';
      end;
   end;

   if Length( xOrder ) > 0 then
      wQuery  := wQuery + ' ORDER BY ' + xOrder;

   SQL := wQuery;

   nIni    :=Pos('SOLVISTA', wUserSQL)+7;

   if Length( wUserSQL )>0 then begin

      wQuery := wUserSQL;

      if Length(xWhere)>0 then
      begin

         nIni:=0;
         if Pos('SOLVISTA', wUserSQL)>0 then begin
            nIni    :=Pos('SOLVISTA', wUserSQL)+7;
            PosWhere:=nIni;
            PosGroup:=nIni;
            PosOrder:=nIni;
         end;

         For I:=nIni to length(wUserSQL) do
         begin
            if UpperCase(copy(wuserSQL,I,5))='WHERE' then
                poswhere:=I;
         end;

         For I:=poswhere to length(wUserSQL) do
         begin
            if UpperCase(copy(wuserSQL,I,8))='GROUP BY' then
                posgroup:=I;
         end;

         For I:=poswhere to length(wUserSQL) do
         begin
            if UpperCase(copy(wuserSQL,I,8))='ORDER BY' then
                posOrder:=I;
         end;

         xpf :=posOrder-2;
         xpf2:=posGroup-2;

         if ( xpf-nIni<=0 ) and ( xpf2-nIni<=0 ) then
         begin

            //if pos('WHERE',wQuery)>0 Then
            if PosWhere-nIni>0 then
            begin
               wQuery  := wQuery + ' AND ('+xWhere+')'
            end
            else begin
               if PosOrder-nIni>0 then
                  wQuery  := Copy(wQuery,1,PosOrder-1) + ' WHERE ('+xWhere+') '+Copy(wQuery,PosOrder,Length(wQuery))
               else
                  wQuery  := wQuery + ' WHERE ('+xWhere+')';
            end
         end
         else begin

            //if pos('WHERE',wQuery)>0 Then
            if PosWhere-nIni>0 then
            begin
               if (xpf2-nIni>0) and (xpf-nIni>0) then
               begin
                  if xpf2-nIni>xpf-nIni then
                     wQuery:= Copy( wQuery, 1, xpf )
                            + ' AND ('+xWhere+')'
                            + Copy( wQuery, xpf+1, Length(wQuery) )
                  else
                     wQuery:= Copy( wQuery, 1, xpf2 )
                            + ' AND ('+xWhere+')'
                            + Copy( wQuery, xpf2+1, Length(wQuery) );
               end;

               if (xpf2-nIni>0) and (xpf-nIni<=0) then
               begin
                  wQuery:= Copy( wQuery, 1, xpf2 )
                         + ' AND ('+xWhere+')'
                         + Copy( wQuery, xpf2+1, Length(wQuery) );
               end;

               if (xpf-nIni>0) and (xpf2-nIni<=0) then
               begin
                  wQuery:= Copy( wQuery, 1, xpf )
                         + ' AND ('+xWhere+')'
                         + Copy( wQuery, xpf+1, Length(wQuery) );
               end;

            end
            else begin

               if (xpf2-nIni>0) and (xpf-nIni>0) then
               begin
                  if xpf2-nIni>xpf-nIni then
                     wQuery:= Copy( wQuery, 1, xpf )
                            + ' WHERE ('+xWhere+')'
                            + Copy( wQuery, xpf+1, Length(wQuery) )
                  else
                     wQuery:= Copy( wQuery, 1, xpf2 )
                            + ' WHERE ('+xWhere+')'
                            + Copy( wQuery, xpf2+1, Length(wQuery) );
               end;

               if (xpf2-nIni>0) and (xpf-nIni<=0) then
               begin
                  wQuery:= Copy( wQuery, 1, xpf2 )
                         + ' WHERE ('+xWhere+')'
                         + Copy( wQuery, xpf2+1, Length(wQuery) );
               end;

               if (xpf-nIni>0) and (xpf2-nIni<=0) then
               begin
                  wQuery:= Copy( wQuery, 1, xpf )
                         + ' WHERE ('+xWhere+')'
                         + Copy( wQuery, xpf+1, Length(wQuery) );
               end;

            end;
         end;
      end;

      if wFilter2<>'' then
      begin

         xpf :=AnsiPos('ORDER BY',wQuery)-2;
         xpf2:=AnsiPos('GROUP BY',wQuery)-2;

         if ( xpf<=0 ) and ( xpf2<=0 ) then
         begin
            if pos('WHERE',wQuery)>0 then
            begin
               wQuery  := wQuery + ' AND ('+wFilter2+')'
            end
            else begin
               wQuery  := wQuery + ' WHERE ('+wFilter2+')'
            end

         end
         else begin

            if pos('WHERE',wQuery)>0 Then
            begin
               if (xpf2>0) and (xpf>0) then
               begin
                  if xpf2>xpf then
                     wQuery:= Copy( wQuery, 1, xpf )
                            + ' AND ('+wFilter2+')'
                            + Copy( wQuery, xpf+1, Length(wQuery) )
                  else
                     wQuery:= Copy( wQuery, 1, xpf2 )
                            + ' AND ('+wFilter2+')'
                            + Copy( wQuery, xpf2+1, Length(wQuery) );
               end;

               if (xpf2>0) and (xpf<=0) then
               begin
                  wQuery:= Copy( wQuery, 1, xpf2 )
                         + ' AND ('+wFilter2+')'
                         + Copy( wQuery, xpf2+1, Length(wQuery) );
               end;

               if (xpf>0) and (xpf2<=0) then
               begin
                  wQuery:= Copy( wQuery, 1, xpf )
                         + ' AND ('+wFilter2+')'
                         + Copy( wQuery, xpf+1, Length(wQuery) );
               end;

            end
            else begin
               if (xpf2>0) and (xpf>0) then
               begin
                  if xpf2>xpf then
                     wQuery:= Copy( wQuery, 1, xpf )
                            + ' WHERE ('+wFilter2+')'
                            + Copy( wQuery, xpf+1, Length(wQuery) )
                  else
                     wQuery:= Copy( wQuery, 1, xpf2 )
                            + ' WHERE ('+wFilter2+')'
                            + Copy( wQuery, xpf2+1, Length(wQuery) );
               end;

               if (xpf2>0) and (xpf<=0) then
               begin
                  wQuery:= Copy( wQuery, 1, xpf2 )
                         + ' WHERE ('+wFilter2+')'
                         + Copy( wQuery, xpf2+1, Length(wQuery) );
               end;

               if (xpf>0) and (xpf2<=0) then
               begin
                  wQuery:= Copy( wQuery, 1, xpf )
                         + ' WHERE ('+wFilter2+')'
                         + Copy( wQuery, xpf+1, Length(wQuery) );
               end;

            end;
         end;
      end;

      if Length( xOrder ) > 0 then begin
         if Pos('ORDER BY', UpperCase( Copy(wQuery, nIni, Length(wQuery) ) ))<=0 then begin
            wQuery  := wQuery + ' ORDER BY ' + xOrder;
         end
         else begin
            wQuery  := Copy( wQuery, 1, Pos('ORDER BY',UpperCase(wQuery))-1 ) + ' ORDER BY ' + xOrder;
         end;
      end;


   end;

   SQL     := wQuery;

   xxWhereT:= '';
   if AnsiPos('WHERE',SQL)>0 then begin
      xpi:=AnsiPos('WHERE',SQL);
      xpf:=AnsiPos('ORDER BY',SQL);
      if xpf=0 then
         xxWhereT:= Copy( SQL, xpi, Length(SQL) )
      else
         xxWhereT:= Copy( SQL, xpi, xpf-xpi );
   end;

   xContSuma:=0;

//   dbgFiltro.DataSource:=NIL;
   dbgFiltro.Selected.Clear;

   DM1.cdsRegCob.DisableControls;

   // vhn 06/06/2002
   if xTipo='NUEVO' then begin
      EliminaGrupos;
      if DM1.cdsRegCob.IndexName='XXX' then
         DM1.cdsRegCob.DeleteIndex( 'XXX' );
   end;

   MEMO1.Lines.Clear;
   MEMO1.Lines.Add( wQuery );

   dbgFiltro.SelectedList.clear;

      DM1.cdsRegCob.Close;
      DM1.cdsRegCob.IndexFieldNames:='';
      //DM1.cdsRegCob.PacketRecords:=-1wP;
      //DM1.cdsRegCob.FetchOnDemand:=False;
      DM1.cdsRegCob.DataRequest(wQuery);
      try
        DM1.cdsRegCob.Open;
      except
        Screen.Cursor:=crDefault;
        ShowMessage('Error en SQL de Usuario');
        Exit;
      end;

      //DM1.cdsRegCob.PacketRecords:=wPacketData;
      //DM1.cdsRegCob.FetchOnDemand:=True;
   DM1.cdsRegCob.EnableControls;

   // VHNXX
//   ds2.DataSet:= cds2;


   if xTipo='NUEVO' then begin
      GeneraListBox;
      lbRefer.Clear;
      MuestraGrid;
//      if dbgFiltro.DataSource=ds2 then
//         MuestraGrupos;
   end
   else begin
      MuestraGrid;

      MuestraGrupos;
   end;

   //GeneraListBox;

{
   if wUsuarioSQL.Count=0 then
      bbtnSumaClick(Self);
}
   Screen.Cursor:=crDefault;
end;

procedure TFCobranzaGlobal.CampoToListBox( xLBox:TListBox; xNCampoT:String );
var
   xVAR : String;
   xCAM : String;
begin
   xLBox.Items.Clear;

   if cdsPlan.FieldByName( xNCampoT ).AsString='*' then Exit;

   xVAR:=cdsPlan.FieldByName( xNCampoT ).AsString;

   while AnsiPos( '{}', xVAR )>0 do begin
       xCAM:=Copy( xVAR, 1, AnsiPos( '{}', xVAR )-1 );
       xVAR:=Copy( xVAR, AnsiPos( '{}', xVAR )+2, Length( xVAR ) );
       xLBox.Items.Add( xCAM );
   end;
end;


procedure TFCobranzaGlobal.EliminaGrupos;
var
   ca : Integer;
begin
   if DM1.cdsRegCob.Aggregates.Count>0 then begin
      For ca:=1 to DM1.cdsRegCob.Aggregates.Count do begin
          if Length(DM1.cdsRegCob.Aggregates[0].AggregateName)>0 then
             DM1.cdsRegCob.FieldByName(DM1.cdsRegCob.Aggregates[0].AggregateName).OnGetText:=nil;
          DM1.cdsRegCob.Aggregates[0].Active:= False;
          DM1.cdsRegCob.Aggregates.Delete(0);
      end;
   end;
   DM1.cdsRegCob.AggregatesActive:=False;
end;


Procedure TFCobranzaGlobal.MuestraGrid;
var
   wFieldName, wFieldTitle, wFieldPict, xxxCampo, xCampoExpand  : String;
   wFieldPos, wCountFixedCol, wFieldWidth, nv, xCols     : Integer;
   xLin01, xLin02, xSQLd : String;
begin
   wCountFixedCol:=0;
   DM1.cdsRegCob.DisableControls;

   if cdsGrid.Recordcount>0 then
   begin
      for nv:=0 to DM1.cdsRegCob.FieldCount-1 do
      begin
          DM1.cdsRegCob.FieldList.Fields[ nv ].Visible:=False;
      end;
   end;

   cdsGrid.First;
   while Not cdsGrid.Eof do begin

      if Pos('.',cdsGrid.FieldByName('Campo').AsString)=0 then
         wFieldName:=cdsGrid.FieldByName('Campo').AsString
      else
         wFieldName:=Copy(cdsGrid.FieldByName('Campo').AsString, Pos('.',cdsGrid.FieldByName('Campo').AsString)+1, Length(cdsGrid.FieldByName('Campo').AsString)-1);

      if cdsGrid.FieldByName('Flag').AsString<>'S' then
      begin
         DM1.cdsRegCob.FieldByName(wFieldName).Visible:=True;

         if cdsGrid.FieldByName('DetDBGRefer').asstring<>'' then
            lbRefer.Items.Add(cdsGrid.FieldByName('DetDBGRefer').AsString);

         if cdsGrid.FieldByName('DetDBGFix').asstring='S' then
            wCountFixedCol:=wCountFixedCol+1;

         wFieldTitle:=cdsGrid.FieldByName('DetDBGTitle').asstring;
         wFieldPos  :=cdsGrid.FieldByName('DetDBGPos').asInteger;
         wFieldPict :=cdsGrid.FieldByName('DetDBGPicture').asstring;
         wFieldWidth:=cdsGrid.FieldByName('DetDBGWidth').AsInteger;

         if Copy(wFieldTitle,1,2)='@@' then begin
            xCols := StrToInt( Copy(wFieldTitle,3,3) );
            xLin01:='1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';
            xLin02:='         1         2         3         4         5         6         7         8         9        10        11        12        13        14        15        16';
            DM1.cdsRegCob.FieldByName(wFieldName).DisplayLabel:=Copy( xLin01,1,xCols)+'~'+Copy(xLin02,1,xCols);
         end
         else begin
            if Trim(wFieldTitle)<>'' then
               DM1.cdsRegCob.FieldByName(wFieldName).DisplayLabel:= wFieldTitle
         end;

         if wFieldPos>0 then
            DM1.cdsRegCob.FieldByName(wFieldName).Index       := wFieldPos
         else
            DM1.cdsRegCob.FieldByName(wFieldName).Index       := 99;

         if wFieldWidth>0 then
            DM1.cdsRegCob.FieldByName(wFieldName).DisplayWidth:= wFieldWidth;

      end
      else begin
         DM1.cdsRegCob.FieldByName(wFieldName).Visible:=False;
      end;
      cdsGrid.Next;
   end;

// vhn 05/12/2000
{
   if DM1.cdsRegCob.RecordCount>0 then
   begin
      For nv:=0 to wUserCheckB.Count-1 do
          dbgFiltro.SetControlType( wUserCheckB[ nv ],fctCheckBox,'S;N' );

      // vhn xx
      xSQLd:='Select * from PLAN04 '
            +'Where ARCHIVO='''+wTabla+''' and TIPOCOMBO=''X''';
      cdsBusca.Close;
      cdsBusca.Filter:='';
      cdsBusca.DataRequest( xSQLd );
      cdsBusca.Open;
      cdsBusca.Filter  :='';
      cdsBusca.Filtered:=False;
      cdsBusca.Close;
   end;
}
   dbgFiltro.FixedCols  := wCountFixedCol;

// vhn 05/12/2000
{
   if DM1.cdsRegCob.RecordCount>0 then
   begin
      For nv:=0 to wUserCheckB.Count-1 do
          dbgFiltro.SetControlType( wUserCheckB[ nv ],fctCheckBox,'S;N' );
   end;
}

// Para Activar la Vista Grabada
{   if (wFlVista) and (cdsPlan.Active) then begin
      if (wFile<>'') and (cdsPlan.RecordCount>0) then begin
         if not FileExists(wFile) then
         begin
            dbgFiltro.IniAttributes.Enabled       := False;
            dbgFiltro.IniAttributes.SaveToRegistry:= False;
            dbgFiltro.IniAttributes.FileName      := wFile;

            if wSection='' then
               dbgFiltro.IniAttributes.SectionName:= dbgFiltro.Name
            else
               dbgFiltro.IniAttributes.SectionName:= wSection+cdsPlan.FieldByName('DESCRIPTION').AsString;

            dbgFiltro.SaveToIniFile;
         end
         else begin
            dbgFiltro.IniAttributes.Enabled       := False;
            dbgFiltro.IniAttributes.SaveToRegistry:= False;
            dbgFiltro.IniAttributes.FileName      := wFile;
            if wSection='' then
               dbgFiltro.IniAttributes.SectionName:= dbgFiltro.Name
            else
               dbgFiltro.IniAttributes.SectionName:= wSection+cdsPlan.FieldByName('DESCRIPTION').AsString;
            dbgFiltro.LoadFromIniFile;
         end;
      end;
   end;
}
{
// Campos No Visible por Componente
   For nv:=0 to wNoVisible.Count-1 do begin
       if Pos('.', wNoVisible[ nv ] )=0 then
          xxxCampo:=wNoVisible[ nv ]
       else
          xxxCampo:=Copy( wNoVisible[ nv ], Pos('.', wNoVisible[ nv ] )+1, Length( wNoVisible[ nv ] )-2 );

       DM1.cdsRegCob.FieldByName( xxxCampo ).Visible:=False;
   end;
}
   DM1.cdsRegCob.EnableControls;


// Para Poner Checks en Campos que estan Visibles
   For nv:=0 to lbCamposReal.Items.Count-1 do begin

       if Pos('.',lbCamposReal.Items.Strings[ nv ])=0 then
          xxxCampo:=lbCamposReal.Items.Strings[ nv ]
       else
          xxxCampo:=Copy(lbCamposReal.Items.Strings[ nv ], Pos('.',lbCamposReal.Items.Strings[ nv ])+1, Length(lbCamposReal.Items.Strings[ nv ])-2 );

       if not DM1.cdsRegCob.FieldByName( xxxCampo ).Visible then
          lbCampos.Checked[ nv ]:=False
       else
          lbCampos.Checked[ nv ]:=True;
   end;

end;


procedure TFCobranzaGlobal.MuestraGrupos;
var
   xCReal, xIndex: String;
   ca : Integer;
begin
// Campos Agregados
   TRY
   // vhnxx 12/11/2003
   if DM1.cdsRegCob.RecordCount<=0 then Exit;

   wGrupoCols:=seGrupo.Value;
   if wGrupoCols>0 then begin

      EliminaGrupos;
       //
      // añadido para probar UsuarioSQL
      DM1.cdsRegCob.Filtered:=False;
      DM1.cdsRegCob.Filter:='';
      DM1.cdsRegCob.Filtered:=True;
      // end UsuarioSQL

      For ca:=1 to wGrupoCols do begin
          //xCReal:=lbCamposReal.Items.Strings[ca-1];
          xCReal:=dbgFiltro.Columns[ca-1].FieldName;
          if ca=1 then
             xIndex:=xCReal
          else
             xIndex:=xIndex+';'+xCReal;
      end;
      if DM1.cdsRegCob.IndexName='XXX' then
         DM1.cdsRegCob.DeleteIndex( 'XXX' );
      DM1.cdsRegCob.AddIndex( 'XXX', xIndex, [ixCaseInsensitive],'','', wGrupoCols );
      DM1.cdsRegCob.IndexName:='XXX';

      For ca:=1 to wGrupoCols do begin
          //xCReal:=lbCamposReal.Items.Strings[ca-1];
          xCReal:=dbgFiltro.Columns[ca-1].FieldName;
          DM1.cdsRegCob.Aggregates.Add;
          DM1.cdsRegCob.Aggregates[ ca-1 ].AggregateName:=xCReal;
          DM1.cdsRegCob.Aggregates[ ca-1 ].GroupingLevel:=ca;
          DM1.cdsRegCob.Aggregates[ ca-1 ].IndexName    :='XXX';
          if ca=1 then DM1.cdsRegCob.FieldByName( xCReal ).OnGetText:=cds2GetText1;
          if ca=2 then DM1.cdsRegCob.FieldByName( xCReal ).OnGetText:=cds2GetText2;
          if ca=3 then DM1.cdsRegCob.FieldByName( xCReal ).OnGetText:=cds2GetText3;
          if ca=4 then DM1.cdsRegCob.FieldByName( xCReal ).OnGetText:=cds2GetText4;
          if ca=5 then DM1.cdsRegCob.FieldByName( xCReal ).OnGetText:=cds2GetText5;
          DM1.cdsRegCob.Aggregates[ ca-1 ].Active := True;
      end;
      DM1.cdsRegCob.AggregatesActive:=True;

      DM1.cdsRegCob.Filtered:=True;

      DM1.cdsRegCob.First;
   end;
   EXCEPT
   END;
end;

procedure TFCobranzaGlobal.cds2GetText1( Sender: TField;
  var Text: String; DisplayText: Boolean );
begin
   if gbFirst in DM1.cdsRegCob.GetGroupState (1) then
      Text := Sender.AsString
   else
      Text := '';
end;

procedure TFCobranzaGlobal.cds2GetText2( Sender: TField;
  var Text: String; DisplayText: Boolean );
begin
   if gbFirst in DM1.cdsRegCob.GetGroupState (2) then
      Text := Sender.AsString
   else
      Text := '';
end;

procedure TFCobranzaGlobal.cds2GetText3( Sender: TField;
  var Text: String; DisplayText: Boolean );
begin
   if gbFirst in DM1.cdsRegCob.GetGroupState (3) then
      Text := Sender.AsString
   else
      Text := '';
end;

procedure TFCobranzaGlobal.cds2GetText4( Sender: TField;
  var Text: String; DisplayText: Boolean );
begin
   if gbFirst in DM1.cdsRegCob.GetGroupState (4) then
      Text := Sender.AsString
   else
      Text := '';
end;

procedure TFCobranzaGlobal.cds2GetText5( Sender: TField;
  var Text: String; DisplayText: Boolean );
begin
   if gbFirst in DM1.cdsRegCob.GetGroupState (5) then
      Text := Sender.AsString
   else
      Text := '';
end;




procedure TFCobranzaGlobal.bbtnCerrarFClick(Sender: TObject);
begin
   Z2bbtnFiltroClick( Self );
end;



procedure TFCobranzaGlobal.bbtnCancelFClick(Sender: TObject);
begin
   if xIniOr>0 then begin
      lbFiltroReal.Items.Strings[ lbFiltro.Items.Count-1 ]:=lbFiltroReal.Items.Strings[ lbFiltro.Items.Count-1 ]+' )';
      lbFiltro.Items.Strings[ lbFiltro.Items.Count-1 ]:=lbFiltro.Items.Strings[lbFiltro.Items.Count-1]+' )';
   end;

   pnlFiltro2.Visible:=False;
   EliminaCampos( xNComp );

   dbgFiltro.Enabled  := True;
   pnlFiltro.Enabled  := True;
   pnlPie.Enabled     := True;
   //pnlBtns.Enabled    := True;
//   bbtnAcceso.Enabled := True;
//   bbtnRef.Enabled    := True;
end;

procedure TFCobranzaGlobal.EliminaCampos( wDesde:Integer );
var
  E : integer;
begin

   bbtnDate.Visible:=False;
   meDias.Visible  :=False;
   lblDias.Visible :=False;

   For E:=wDesde to xNComp do begin
       wlbl[ E ].Free;
       If wType[ E ]='D' then
          wdbdtp[ E ].Free
       else
          If wType[ E ]='L' then begin
             wdblc[ E ].Free;
             wcds[ E ].Close;
             wcds[ E ].Free;
             wcdsLookup[ E ].Close;
             wcdsLookup[ E ].Free;
             end
          else
             If wType[ E ]='C' then begin
                wdblcd[ E ].Free;
                wcds[ E ].Close;
                wcds[ E ].Free;
                wcdsLookup[ E ].Close;
                wcdsLookup[ E ].Free;
                end
             Else
                If wType[ E ]='M' then
                   wdbMemo[ E ].Free
                else
                   wdbedit[ E ].Free;
   end;
end;


procedure TFCobranzaGlobal.Inicializar;
begin
   //xMaxCampos   := 36;    // Maxima Cantidad de Campos a Editar;
   //xColCampos   := 12;    // Maxima Cantidad de Campos por columna;
   xInicioCampos:= 5;     // Inicio de Campos ( Altura )
   //xAlturaCampos:= 24;    // Distancia entre campos ( Altura )
   xLabelLeft   := 20;    // Left de la Etiqueta
   xCampoLeft   := 120;   // Left de Campo
   xCampoWidth  := 100;   // Ancho de Combos
   //xColAncho    := xCampoLeft + xCampoWidth + xLabelLeft + 5;  // Ancho del Form por Columna

{   sColor[ 0] := 'clAqua';
   sColor[ 1] := 'clBlack';
   sColor[ 2] := 'clBlue';
   sColor[ 3] := 'clDkGray';
   sColor[ 4] := 'clFuchsia';
   sColor[ 5] := 'clGray';
   sColor[ 6] := 'clGreen';
   sColor[ 7] := 'clLime';
   sColor[ 8] := 'clLtGray';
   sColor[ 9] := 'clMaroon';
   sColor[10] := 'clNavy';
   sColor[11] := 'clOlive';
   sColor[12] := 'clPurple';
   sColor[13] := 'clRed';
   sColor[14] := 'clSilver';
   sColor[15] := 'clTeal';
   sColor[16] := 'clWhite';
   sColor[17] := 'clYellow';
   sColor[18] := 'clInfoBk';

   aColor[ 0] := clAqua;
   aColor[ 1] := clBlack;
   aColor[ 2] := clBlue;
   aColor[ 3] := clDkGray;
   aColor[ 4] := clFuchsia;
   aColor[ 5] := clGray;
   aColor[ 6] := clGreen;
   aColor[ 7] := clLime;
   aColor[ 8] := clLtGray;
   aColor[ 9] := clMaroon;
   aColor[10] := clNavy;
   aColor[11] := clOlive;
   aColor[12] := clPurple;
   aColor[13] := clRed;
   aColor[14] := clSilver;
   aColor[15] := clTeal;
   aColor[16] := clWhite;
   aColor[17] := clYellow;
   aColor[18] := clInfoBk;}
end;


procedure TFCobranzaGlobal.bbtnOkFClick(Sender: TObject);
Var
   wVarFiltro : String;
   wVarFiltroD: String;
   wVariable1 : String;
   wVariable2 : String;
   wRelacion1 : String;
   wTablaxx   : String;
   wRealTmp   : String;
   xnLength, xnIni   : Integer;
begin

   if rgFiltro.ItemIndex=6 then begin
      if (wType[xNComp]='D') or (wType[xNComp]='R') then begin
         ShowMessage('Error : Operador SUBSTR solo se usa con Datos String');
         Exit;
      end
   end;
   // VHNXXX  26112003
   if rgFiltro.ItemIndex=7 then begin
      if (wType[xNComp]='D') or (wType[xNComp]='R') then begin
         ShowMessage('Error : Operador Contiene solo se usa con Datos String');
         Exit;
      end
   end;

   wTablaxx:=wTabla+'.';

// Inicio: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha
   if wUserSQL<>'' then
      wTablaxx:='';
// Fin: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha

   pnlFiltro2.Visible:=False;

   xnLength:=0;
   if rgFiltro.ItemIndex=6 then begin
      if wType[xNComp]='L' then
         wVarFiltro := wDBLC[xNComp].Text
      else begin
         if wType[XNComp]='C' then
            wVarFiltro := wDBLCD[xNComp].Text
         else begin
            wVarFiltro :=  wDBEdit[xNComp].Text;
         end;
      end;

      if seLen.Value>0 then
         xnLength:=seLen.Value
      else
         xnLength:=Length(wVarFiltro);

      if seIni.Value>0 then
         xnIni:=seIni.Value
      else
         xnIni:=1;

      wVariable1:='SubStr('+lbCampos.Items.Strings[lbCampos.ItemIndex]
                 +', '+InttoStr(xnIni)+ ','+InttoStr(xnLength)+')' ;
      wRelacion1:='=';
   end
   else begin
      if rgFiltro.ItemIndex=7 then begin
         wVariable1:=lbCampos.Items.Strings[lbCampos.ItemIndex];
         wRelacion1:=' LIKE ';
      end
      else
      begin
         wVariable1:=lbCampos.Items.Strings[lbCampos.ItemIndex];
         wRelacion1:=rgFiltro.Items.Strings[rgFiltro.ItemIndex];
      end;
   end;

   // Modificar para AS400
   If wType[xNComp]='D' then begin
      if rgValor.ItemIndex=1 then begin
         lbFiltro.Items.Add( wVariable1 +wRelacion1 + cbCampos.Text );
         if SRV_D = 'ORACLE' then
            wVariable2:='TO_DATE('+wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex]+')'
         else
            wVariable2:=wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex];

         lbFiltroReal.Items.Add(wVariable2 + wRelacion1 + lbCamposReal.Items.Strings[cbCampos.ItemIndex]);
      end
      else begin
         if wdbdtp[xNComp].Date=0 then
            wVarFiltro :=''
         else
            wVarFiltro :=DateToStr( wdbdtp[xNComp].Date );
         wVarFiltroD:=wRepFuncDate+''''+FORMATDATETIME(wFormatFecha,wdbdtp[xNComp].Date)+''''+')';
         lbFiltro.Items.Add( wVariable1+wRelacion1+''''+wVarFiltro+'''');
         if SRV_D = 'ORACLE' then
            wVariable2:='TO_DATE('+wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex]+')'
         else
            wVariable2:=wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex];
         if wdbdtp[xNComp].Date=0 then
         begin
            if wRelacion1='='  then lbFiltroReal.Items.Add(wVariable2 + 'IS NULL' );
            if wRelacion1='<>' then lbFiltroReal.Items.Add(wVariable2 + 'IS NOT NULL' );
         end
         else
            lbFiltroReal.Items.Add(wVariable2 + wRelacion1 + wVarFiltroD);
      end;
      bbtnDate.Visible:=False;
      meDias.Visible  :=False;
      lblDias.Visible :=False;
      end
   else begin
      If wType[xNComp]='R' then begin
         wVarFiltro := wDBEdit[xNComp].Text;
         lbFiltro.Items.Add( wVariable1+wRelacion1+wVarFiltro);
         wVariable2:=wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex];
         lbFiltroReal.Items.Add(wVariable2 + wRelacion1 + wVarFiltro);
         end
      else begin
         if rgValor.ItemIndex=1 then begin
            lbFiltro.Items.Add( wVariable1 +wRelacion1 + cbCampos.Text );
            wVariable2:=wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex];
            lbFiltroReal.Items.Add(wVariable2 + wRelacion1 + lbCamposReal.Items.Strings[cbCampos.ItemIndex]);
         end
         else begin
            if wType[xNComp]='L' then
               wVarFiltro := wDBLC[xNComp].Text
            else begin
               if wType[XNComp]='C' then
                  wVarFiltro := wDBLCD[xNComp].Text
               else begin
                  wVarFiltro :=  wDBEdit[xNComp].Text;
               end;
            end;
            if rgFiltro.ItemIndex=7 then
            begin
               if rgLike.ItemIndex=0 then
                  wVarFiltro := wVarFiltro+'%';
               if rgLike.ItemIndex=1 then
                  wVarFiltro := '%'+wVarFiltro;
               if rgLike.ItemIndex=2 then
                  wVarFiltro := '%'+wVarFiltro+'%';
            end;

            // Inserta Campo
            lbFiltro.Items.Add( wVariable1+wRelacion1+''''+wVarFiltro+'''');

            if rgFiltro.ItemIndex=6 then begin
               wVariable2:='SubStr('+wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex]
                          +', '+InttoStr(xnIni)+', '+InttoStr(xnLength)+')' ;
            end
            else begin
               wVariable2:=wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex];
            end;
            if wVarFiltro<>'' then
               lbFiltroReal.Items.Add(wVariable2+wRelacion1+''''+wVarFiltro+'''')
            else begin
               if wRelacion1<>'<>' then
                  lbFiltroReal.Items.Add(' ( '+wVariable2+wRelacion1+''''+wVarFiltro+''' or '+wVariable2+' is null ) ' )
               else
                  lbFiltroReal.Items.Add(' ( '+wVariable2+wRelacion1+''''+wVarFiltro+''' or '+wVariable2+' is not null ) ' );
            end;
         end;
      end;
   end;

   if (wType[xNComp]='L') OR (wType[XNComp]='C') then
   begin
      wcdsLookup[ xNComp ].First;
      while not wcdsLookup[ xNComp ].Eof do
      begin
         if wcdsLookup[ xNComp ].FieldByName('DETDBGKEY').AsString<>'' then
         begin
            wVariable2:=wcdsLookup[ xNComp ].FieldByName('CAMPO').AsString;
            wVariable1:=wcdsLookup[ xNComp ].FieldByName('DESCRIPCION').AsString;

            wRealTmp:=lbCamposReal.Items.Strings[lbCampos.ItemIndex];
            if Pos( '.', wRealTmp )>0 then
               wRealTmp:=Copy( wRealTmp, Pos( '.', wRealTmp )+1, Length( wRealTmp ) );
            if wRealTmp<>wVariable2 then
            begin
               wRelacion1:='=';
               wVarFiltro:=wcds[ xNComp ].FieldByName( wcdsLookup[ xNComp ].FieldByName('CAMPO').AsString ).AsString;

               if (wType[xNComp]='L') or (wType[XNComp]='C') or (wType[XNComp]='E') then
               begin
                  lbFiltro.Items.Add( wVariable1+wRelacion1+QuotedStr(wVarFiltro) );
                  lbFiltroReal.Items.Add( wVariable2+wRelacion1+QuotedStr(wVarFiltro) );
               end
               else
               begin
                  lbFiltro.Items.Add( wVariable1+wRelacion1+wVarFiltro );
                  lbFiltroReal.Items.Add( wVariable2+wRelacion1+wVarFiltro );
               end;
            end;
         end;
         wcdsLookup[ xNComp ].Next;
      end;
   end;

   EliminaCampos( xNComp );
   pnlFiltro.Enabled  := True;
   dbgFiltro.Enabled  := True;
   pnlPie.Enabled     := True;
//   bbtnAcceso.Enabled := True;
//   bbtnRef.Enabled    := True;
end;

procedure TFCobranzaGlobal.sbFiltraClick(Sender: TObject);
begin
   wFlVista:=True;

   // VHN REMOTO REVISAR
{   if wPacketData=0 then
      wPacketData:=30;
}
   FiltraData( 'REFRESH' );
end;

procedure TFCobranzaGlobal.lbFiltroDblClick(Sender: TObject);
begin
   lbFiltroReal.Items.Delete(lbFiltro.ItemIndex);
   lbFiltro.Items.Delete(lbFiltro.ItemIndex);
end;

procedure TFCobranzaGlobal.sbBorraFClick(Sender: TObject);
begin
   lbFiltro.Items.Clear;
   lbFiltroReal.Items.Clear;
end;

procedure TFCobranzaGlobal.lbOrdenDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept:=True;
end;

procedure TFCobranzaGlobal.lbOrdenDblClick(Sender: TObject);
begin
   lbOrdenReal.Items.Delete( lbOrden.ItemIndex );
   lbOrden.Items.Delete( lbOrden.ItemIndex );
end;

procedure TFCobranzaGlobal.sbBorraOClick(Sender: TObject);
begin
   lbOrden.Items.Clear;
   lbOrdenReal.Items.Clear;
end;

procedure TFCobranzaGlobal.SpeedButton1Click(Sender: TObject);
begin
   wFlVista:=True;

   FiltraData( 'REFRESH' );

end;

procedure TFCobranzaGlobal.rgTipoClick(Sender: TObject);
begin
   if rgTipo.ItemIndex=0 then begin
      xxTipRep :='L';
      bbtnPublica.Visible:=True;
      bbtnUsuario.Visible:=False;
      dbeNombre.Enabled  :=True;
      xxServer := xxDirLoc;
      end
   else begin
      xxTipRep :='P';
      bbtnPublica.Visible:=False;
      bbtnUsuario.Visible:=True;
      dbeNombre.Enabled  :=False;
      xxServer := xxDirPub;
   end;

   MuestraReporte;
end;

procedure TFCobranzaGlobal.MuestraReporte;
var
   xSQL : String;
begin
   if xxTipRep='L' then
   xSQL:='Select * from SOLREP01 Where USUARIO='''+wUser   +''' and '
        +                             'MODULO=''' +wModulo +''' and '
        +                             'FORMA='''  +wSection+''' and '
        +                             'TIPO='''   +xxTipRep+''''
   else begin
          if (SRV_D = 'DB2NT') or (SRV_D = 'DB2400') then
          begin
         //   xSQL:='Select A.* USUARIO, A.NOMBRE From SOLREP01 A '
            xSQL:='Select A.* From SOLREP01 A '
                 +'INNER JOIN SOLREP02 B on (B.MODULO=A.MODULO and B.FORMA=A.FORMA and '
                 +                    'B.NOMBRE=A.NOMBRE and B.USUARIOS='''+wUser+''') '
                 +'Where A.MODULO='''+wModulo +''' and '
                 +      'A.FORMA=''' +wSection+''' and '
                 +      'A.TIPO=''P'' '
          end;
          if SRV_D = 'ORACLE' then
          begin
         //   xSQL:='Select A.* USUARIO, A.NOMBRE From SOLREP01 A '
            xSQL:='Select A.* From SOLREP01 A, SOLREP02 B '
                 +'WHERE B.MODULO=A.MODULO and B.FORMA=A.FORMA and '
                 +                    ' B.NOMBRE=A.NOMBRE and B.USUARIOS='''+wUser+''' AND '
                 +'  A.MODULO='''+wModulo +''' and '
                 +      'A.FORMA=''' +wSection+''' and '
                 +      'A.TIPO=''P'' '
          end;
   end;
   cdsReporte.Close;
   cdsReporte.RemoteServer:=DM1.DCOM1;
   cdsReporte.DataRequest(xSQL);
   cdsReporte.Open;

   dbeNombre.Text:=cdsReporte.FieldByname('NOMBRE').AsString;
end;


procedure TFCobranzaGlobal.bbtnRepCaClick(Sender: TObject);
begin
   pnlDiseno.Visible:=False;
   bbtnFilt.Enabled   :=True;
   bbtnExcel.Enabled:=True;
end;

procedure TFCobranzaGlobal.bbtnRepOkClick(Sender: TObject);
var
  xSQL    : String;
  xFileRtm: String;
  x10, x     : Integer;
begin
   if Length(dbeNombre.Text)=0 then
      Raise Exception.Create('Falta Ingresar Nombre');

   if not DirectoryExists( xxServer+xxDirect ) then
      if not CreateDir( xxServer+xxDirect ) then
         raise Exception.Create('Error al Crear Directorio '+xxServer+xxDirect );

   if not DirectoryExists( xxServer+xxDirect+xxDirMod ) then
      if not CreateDir( xxServer+xxDirect+xxDirMod ) then
         raise Exception.Create( 'Error al Crear Directorio '+xxServer+xxDirect+xxDirMod );

   if not DirectoryExists( xxServer+xxDirect+xxDirMod+xxDirPrn ) then
      if not CreateDir( xxServer+xxDirect+xxDirMod+xxDirPrn ) then
         raise Exception.Create( 'Error al Crear Directorio '+xxServer+xxDirect+xxDirMod+xxDirPrn );


   if dbeNombre.Text=cdsReporte.FieldByName('NOMBRE').AsString then
   begin
      xSQL:='Select * from SOLREP01 '
           +'Where NOMBRE=''' +dbeNombre.Text+''' and '
           +      'MODULO=''' +wModulo       +''' and '
           +      'FORMA='''  +wSection      +''' and '
           +      'USUARIO='''+wUser         +''' and '
           +      'TIPO='''   +xxTipRep      +'''' ;
      cdsBusca.Close;
      cdsBusca.Filter  :='';
      cdsBusca.Filtered:=False;
      cdsBusca.ProviderName:='prvBusca';
      cdsBusca.DataRequest(xSQL);
      cdsBusca.Open;
      if cdsBusca.RecordCount=0 then
         Raise Exception.Create('Usuario No Tiene Acceso a Diseñar Reporte');
   end
   else begin

      xSQL:='Select * from SOLREP01 '
           +'Where NOMBRE=''' +dbeNombre.Text+''' and '
           +      'MODULO=''' +wModulo +''' and '
           +      'FORMA='''  +wSection+''' and '
           +      'USUARIO='''+wUser   +''' and '
           +      'TIPO='''   +xxTipRep+'''' ;
      cdsBusca.Close;
      cdsBusca.Filter  :='';
      cdsBusca.Filtered:=False;
      cdsBusca.ProviderName:='prvBusca';
      cdsBusca.DataRequest(xSQL);
      cdsBusca.Open;
      if cdsBusca.RecordCount=0 then
      begin
         xSQL:='Insert Into SOLREP01 ( NOMBRE, USUARIO, MODULO, FORMA, TIPO, CAMPODES ) '
              +'Values( '''+dbeNombre.Text+''', '''+wUser   +''', '
              +        ''''+wModulo       +''', '''+wSection+''', '
              +        ''''+xxTipRep      +''', '''+wGrabaD +''' )';
         cdsBusca.Close;
         cdsBusca.Filter:='';
         cdsBusca.Filtered:=False;
         cdsBusca.DataRequest(xSQL);
         cdsBusca.Execute;
      end;
   end;

   cdsReporte.Refresh;

   //GeneraSQLReporte;

   if wUserSQL='' then begin

      GeneraSQLReporte;

      xFileRtm:=xxServer+xxDirect+xxDirMod+xxDirPrn+'\'+dbeNombre.Text+'.rtm';

      FiltraRep;

      xPipeLine:=TppBDEPipeline.Create( Self );
      xPipeLine.DataSource:=dsBusca;
      xPipeline.UserName  :='Maestro';
      xPipeline.Name      :='ppdbMant1';
   end
   else begin

      xFileRtm:=xxServer+xxDirect+xxDirMod+xxDirPrn+'\'+dbeNombre.Text+'.rtm';

      GeneraSQLTabla2Descripciones;

      FiltraRep2;

      xPipeLine:=TppBDEPipeline.Create( Self );
      //xPipeLine.DataSource:=ds2;
      xPipeLine.DataSource:=dsBusca;
      xPipeline.UserName  :='Maestro';
      xPipeline.Name      :='ppdbMant1';
   end;

   for x:=0 to xPipeline.FieldCount-1 do begin
       if cdsGrid.Locate( 'CAMPO', xPipeline.fields[x].FieldAlias,[] ) then begin
          if cdsGrid.FieldByName('Descripcion').AsString<>'' then
             xPipeline.fields[x].FieldAlias:=cdsGrid.FieldByName('Descripcion').AsString;
       end;
   end;

   if wTabla2<>'' then
   begin
     xSQL:='Select * from PLAN04 where ARCHIVO='''+wTabla2+'''';
     cdsGrid2.Close;
     cdsGrid2.DataRequest( xSQL );
     cdsGrid2.Open;

     for x:=0 to ppdbMantD.FieldCount-1 do begin
         if cdsGrid2.Locate( 'CAMPO', ppdbMantD.fields[x].FieldAlias,[] ) then begin
            if cdsGrid2.FieldByName('Descripcion').AsString<>'' then
               ppdbMantD.fields[x].FieldAlias:=cdsGrid2.FieldByName('Descripcion').AsString;
         end;
     end;
   end;

   xReport:=TppReport.Create( Self);
   xReport.Name:='pprMant1';
   xReport.Template.FileName:=xFileRtm;

   ppdFiltro.Report:=xReport;

   if not FileExists( xFileRtm ) then xReport.Template.SaveToFile;
   xReport.Template.LoadFromFile;
   xReport.PreviewFormSettings.WindowState:=wsMaximized;
   xReport.PreviewFormSettings.ZoomSetting:=zsPageWidth;
   xReport.PreviewFormSettings.ZoomPercentage:=100;
   xReport.DataPipeline:=xPipeline;

   ppdFiltro.ShowModal;

   xReport.Stop;

   x10:=xReport.GroupCount-1;
   while x10>=0 do begin
       xReport.Groups[ x10 ].Free;
       x10:=x10-1;
   end;

   xPipeLine.free;
   xReport.Free;

   cdsBusca.Close;
   cdsBusca.Filter:='';
   cdsBusca.Filtered:=False;
   cdsBusca.FetchOnDemand  :=False;
   cdsBusca.PacketRecords  :=-1;
   cdsBusca.FetchOnDemand  :=True;
   cdsBusca.IndexFieldNames:='';

   cdsRep2.Close;
   cdsRep2.FetchOnDemand  :=False;
   cdsRep2.PacketRecords  :=-1;
   cdsRep2.MasterSource   :=nil;
   cdsRep2.MasterFields   :='';
   cdsRep2.IndexFieldNames:='';
   cdsRep2.FetchOnDemand:=True;

   dbeNombre.Text:=cdsReporte.FieldByname('NOMBRE').AsString;
end;

procedure TFCobranzaGlobal.GeneraSQLReporte;
var
   xcr  : Integer;
   wQry : String;
   xCampoDes : String;
   xCampoCod : String;
   xVAR : String;
   xCAM : String;
begin
   if cdsReporte.FieldByName( 'CAMPODES' ).AsString<>'' then
   begin

      xVAR:=cdsReporte.FieldByName( 'CAMPODES' ).AsString;

      while AnsiPos( ';', xVAR )>0 do
      begin
         xCAM:=Copy( xVAR, 1, AnsiPos( ';', xVAR )-1 );
         xVAR:=Copy( xVAR, AnsiPos( ';', xVAR )+1, Length( xVAR ) );

         For xcr:=0 to clbRepD.Items.Count-1 do
         begin
             if clbRepDReal.Items[ xcr ]=xCAM then
             begin
                clbRepD.Checked[ xcr ]:=True;
                Break;
             end;
         end;
      end;
   end;

   wJoin  :='';
   wJoin2 :='';
   wSelec2:='';
   wGrabaD:='';
   For xcr:=0 to clbRepD.Items.Count-1 do begin

       if clbRepD.Checked[ xcr ] then begin
          cdsBusca.Close;

          wQry:='Select CAMPO, DETDBGTITLE, DESCRIPCION from PLAN04 '
               +'Where archivo='''+clbRepDTabla.Items[ xcr ]+''' and '
               +'DETALLE='+''''+'S'+'''';
          cdsBusca.DataRequest( wQry );
          cdsBusca.Open;
          {
          wQry:='archivo='''+clbRepDTabla.Items[ xcr ]+''' and DETALLE=''S''';
          FiltraTablaRemoto( cdsBusca, 'PLAN04', 'ARCHIVO', wQry );
          }
          if cdsBusca.RecordCount>0 then begin

             while not cdsBusca.Eof do begin

                xCampoDes:=cdsBusca.FieldByName('Campo').AsString;

                wSelec2:=wSelec2+', '+clbRepDTabla.Items[ xcr ]+'.'+xCampoDes;
                wGrabaD:=wGrabaD+clbRepDReal.Items[ xcr ]+';';

                xCampoDes:=StringReplace(cdsBusca.FieldByName('DESCRIPCION').asstring,' ','_',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'.','_',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'~','_',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'á','I',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'é','E',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'í','I',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'ó','O',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'ú','U',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'Ñ','N',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'ñ','N',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,'(','',[rfreplaceall]);
                xCampoDes:=StringReplace(xCampoDes,')','',[rfreplaceall]);
                xCampoDes:=UpperCase( xCampoDes );

                //wSelec2:=wSelec2+' AS '+xCampoDes+'_NOM';
                wSelec2:=wSelec2+' AS '+xCampoDes;

                cdsBusca.Next;
             end;

             cdsUsuNo.Close;
             cdsUsuNo.ProviderName:='dspTem2';
             wQry:='Select CAMPO, DETDBGTITLE, DESCRIPCION from Plan04 '
                  +'Where archivo='''+clbRepDTabla.Items[ xcr ]+''' and '
                  +'DETALLE='+''''+'C'+'''';
             cdsUsuNo.DataRequest( wQry );
             cdsUsuNo.Open;

             xCampoCod:= cdsUsuNo.FieldByName('Campo').AsString;

             //  vhn
             if (SRV_D = 'DB2NT') or (SRV_D = 'DB2400') then
             begin
                wJoin:=wJoin+'Left Join '+clbRepDTabla.Items[ xcr ]+' on '
                      +wTabla+'.'+clbRepDReal.Items[ xcr ]+'='
                      +clbRepDTabla.Items[xcr]+'.'+xCampoCod+' ';
                wJoin2:='';
             end
             else begin
                {
                if SRV_D = 'ORACLE' then begin
                   wJoin:=wJoin+', '+clbRepDTabla.Items[ xcr ]+' ';
                   if wJoin2='' then
                      wJoin2:=wTabla+'.'+clbRepDReal.Items[ xcr ]+'='
                             +clbRepDTabla.Items[xcr]+'.'+xCampoCod+'(+) '
                   else
                      wJoin2:=wJoin2+' and '+wTabla+'.'+clbRepDReal.Items[ xcr ]+'='
                             +clbRepDTabla.Items[xcr]+'.'+xCampoCod+'(+) '
                }
                if SRV_D = 'ORACLE' then begin

                   cdsUsuNo.Close;
                   cdsUsuNo.ProviderName:='dspTem2';
                   wQry:='Select CAMPO, DETDBGTITLE, DESCRIPCION from Plan04 '
                        +'Where ARCHIVO='''+clbRepDTabla.Items[ xcr ]+''' and '
                        +      'DETDBGKEY>=''1'' AND DETDBGKEY<=''9''';
                   cdsUsuNo.DataRequest( wQry );
                   cdsUsuNo.Open;

                   wJoin:=wJoin+', '+clbRepDTabla.Items[ xcr ]+' ';

                   while not cdsUsuNo.Eof do begin

                      if wJoin2='' then
                         wJoin2:=wTabla+'.'+cdsUsuNo.FieldbYName('CAMPO').AsString+'='
                                +clbRepDTabla.Items[xcr]+'.'+cdsUsuNo.FieldbYName('CAMPO').AsString+'(+) '
                      else
                         wJoin2:=wJoin2+' and '+wTabla+'.'+cdsUsuNo.FieldbYName('CAMPO').AsString+'='
                                +clbRepDTabla.Items[xcr]+'.'+cdsUsuNo.FieldbYName('CAMPO').AsString+'(+) ';

                      cdsUsuNo.Next;
                   end;
                end;
             end;
             //
          end;
       end;
   end;

   if wTabla2<>'' then begin

   end;
end;

procedure TFCobranzaGlobal.FiltraRep;
var
   xWhere, xWhere2, wQuery, xOrder, xQuery2, xCampo, xQry99, xCampo2 : String;
   x : Integer;
begin

   Screen.Cursor:=CrHourGlass;

   xWhere := '';
   for x:=0 to lbFiltroReal.Items.Count - 1 do begin
      if length( xWhere )>0 then
         if Copy(lbFiltroReal.Items.Strings[x],1,4)=' or ' then
            xWhere := xWhere + lbFiltroReal.Items.Strings[x]
         else
            xWhere := xWhere + ' and ' + lbFiltroReal.Items.Strings[x]
      else begin
         xWhere := lbFiltroReal.Items.Strings[x];
      end;

      // VHNDEMA   PARA FILTRAR TABLA2 CON CAMPOS IGUALES
      if wTabla2<>'' then
      begin
         xCampo :=StringReplace( lbFiltroReal.Items.Strings[x],wTabla+'.','',[rfreplaceall] );
         xCampo2:=Copy(xCampo,1,Pos('=',xCampo)-1);
         cdsUsuNo.Close;
         cdsUsuNo.ProviderName:='dspTem2';
         xQry99:='Select CAMPO from PLAN04 '
              +'where ARCHIVO='''+wTabla+''' AND CAMPO='''+xCampo2+'''';
         cdsUsuNo.DataRequest( xQry99 );
         cdsUsuNo.Open;

         if cdsUsuNo.RecordCount>0 then
         begin
            if length( xWhere2 )>0 then

               if Copy(xCampo,1,4)=' or ' then
                  xWhere2 := xWhere2 + xCampo
               else
                  xWhere2 := xWhere2 + ' and ' + xCampo
            else begin
               xWhere2 := xCampo;
            end;
         end;
      end;
      // END VHNDEMA
   end;

   xOrder := '';
   for x:=0 to lbOrdenReal.Items.Count - 1 do begin
      if length( xOrder )>0 then
         xOrder := xOrder + ', ' + lbOrdenReal.Items.Strings[x]
      else begin
         xOrder := lbOrdenReal.Items.Strings[x];
      end;
   end;

   wSelRep:='Select ';

   for x:=0 to dbgFiltro.FieldCount-1 do begin
       if dbgFiltro.Columns[x].FieldName<>'' then
          if (UpperCase(Copy(dbgFiltro.Columns[x].FieldName,1,2))<>'LK') then
             wSelRep:=wSelRep+wTabla+'.'+dbgFiltro.Columns[x].FieldName+', ';
   end;

   wSelRep:=Copy(wSelRep,1,Length(wSelRep)-2);

   if wJoin='' then begin
      If Length( xWhere ) > 0 then
         wQuery:=wSelRep+wSelec2+' '+wFroRep+' '
                +'WHERE '+xWhere
      else
         wQuery:=wSelRep+wSelec2+' '+wFroRep+' ';
   end
   else begin
      if SRV_D = 'ORACLE' then begin
         if Length( xWhere ) > 0 then
            wQuery:=wSelRep+wSelec2+' '+wFroRep+' '+wJoin+' '
                   +'WHERE '+xWhere+ ' and ( '+wJoin2+' ) '
         else
            wQuery:=wSelRep+wSelec2+' '+wFroRep+' '+wJoin+' '
                   +'WHERE ( '+wJoin2+' ) ';
      end
      else begin
         if Length( xWhere ) > 0 then
            wQuery:=wSelRep+wSelec2+' '+wFroRep+' '+wJoin+' '
                   +'WHERE '+xWhere+' '
         else
            wQuery:=wSelRep+wSelec2+' '+wFroRep+' '+wJoin+' ';
      end;
   end;

   if wFilter<>'' then
   begin
      if pos('WHERE',wQuery)>0 Then
           wQuery  := wQuery + ' AND ('+wFilter+')'
      else
         wQuery  := wQuery + ' WHERE ('+wFilter+')'
   end;

   if wFilter2<>'' then
   begin
      if pos('WHERE',wQuery)>0 Then
         wQuery  := wQuery + ' AND ('+wFilter2+')'
      else
         wQuery  := wQuery + ' WHERE ('+wFilter2+')'
   end;

   if Length( xOrder ) > 0 then
      wQuery  := wQuery + ' ORDER BY ' + xOrder;

   if Length( wUserSQL )>0 then begin
      wQuery := wUserSQL;
      if Length(xWhere)>0 then
         wQuery := wUserSQL+' AND '+xWhere;
   end;

   cdsBusca.DisableControls;
   cdsBusca.Close;
   cdsBusca.Filter:='';
   cdsBusca.Filtered:=False;
   cdsBusca.IndexFieldNames:=wTablaLlave;
   cdsBusca.DataRequest( wQuery );
   cdsBusca.FetchOnDemand:=False;
   cdsBusca.PacketRecords:=100;
   cdsBusca.FetchOnDemand:=True;
   cdsBusca.Open;
   cdsBusca.EnableControls;

   ppdbMantD.Visible:=False;

   if wTabla2<>'' then begin
      ppdbMantD.Visible:=True;
      //xQuery2:='Select * from '+wTabla2+' Order by '+StringReplace(wTabla2Llave,';',',',[rfreplaceall]);
      // vhnxx 15/12/2003
      xQuery2:='Select * from '+wTabla2;

      // vhndema
      if (wTabla2Filter<>'') or (xWhere2<>'') then
      begin
         if (wTabla2Filter<>'') and (xWhere2<>'') then
            xQuery2:=xQuery2+' Where '+wTabla2Filter+' and '+xWhere2
         else
            if (wTabla2Filter<>'') then
               xQuery2:=xQuery2+' Where '+wTabla2Filter
            else
               xQuery2:=xQuery2+' Where '+xWhere2;
      end;

      xQuery2:=xQuery2+' Order by '+StringReplace(wTabla2Llave,';',',',[rfreplaceall]);

      cdsRep2.Close;
      cdsRep2.FetchOnDemand:=False;
      cdsRep2.PacketRecords:=100;
      cdsRep2.DataRequest( xQuery2 );
      cdsRep2.MasterSource   :=dsBusca;
      cdsRep2.IndexFieldNames:=wTabla2Llave;
      cdsRep2.MasterFields   :=wTablaLlave;
      try
          cdsRep2.Open;
      except
          xQuery2:='Select * from '+wTabla2;

          if wTabla2Filter<>'' then
             xQuery2:=xQuery2+' Where '+wTabla2Filter;

          xQuery2:=xQuery2+' Order by '+StringReplace(wTabla2Llave,';',',',[rfreplaceall]);

          cdsRep2.Close;
          cdsRep2.FetchOnDemand:=False;
          cdsRep2.PacketRecords:=100;
          cdsRep2.DataRequest( xQuery2 );
          cdsRep2.MasterSource   :=dsBusca;
          cdsRep2.IndexFieldNames:=wTabla2Llave;
          cdsRep2.MasterFields   :=wTablaLlave;
      end;
      // end vhndema

      cdsRep2.FetchOnDemand:=True;
   end;

   cdsBusca.First;

   Screen.Cursor:=crDefault;
end;


procedure TFCobranzaGlobal.GeneraSQLTabla2Descripciones;
var
   xcr   : Integer;
   wQry  : String;
   xCampoDes : String;
   xCampoCod : String;
   h     : Integer;
   xVAR, xSQL  : String;
   xCAM  : String;
begin


  wT2Join  :='';
  wT2Join2 :='';
  wT2Selec2:='';

  if wTabla2<>'' then
  begin
     xSQL:='Select * from PLAN04 '
          +'where ARCHIVO='''+wTabla2+''' and DETALLE2=''S''';
     cdsGrid2.Close;
     cdsGrid2.DataRequest( xSQL );
     cdsGrid2.Open;

     while not cdsGrid2.Eof do
     begin

        wQry:='Archivo='''+cdsGrid2.FieldByName('DETDBGREFER').AsString+''' and DETALLE=''S''';
        FiltraTablaRemoto( cdsBusca, 'PLAN04', 'ARCHIVO', wQry );

        if cdsBusca.RecordCount>0 then
        begin

           while not cdsBusca.Eof do
           begin

              xCampoDes:=cdsBusca.FieldByName('Campo').AsString;

              wT2Selec2:=wT2Selec2+', '+cdsGrid2.FieldByName('DETDBGREFER').AsString+'.'+xCampoDes;

              xCampoDes:=StringReplace(cdsBusca.FieldByName('DESCRIPCION').asstring,' ','_',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'.','_',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'~','_',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'á','I',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'é','E',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'í','I',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'ó','O',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'ú','U',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'Ñ','N',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'ñ','N',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,'(','',[rfreplaceall]);
              xCampoDes:=StringReplace(xCampoDes,')','',[rfreplaceall]);
              xCampoDes:=UpperCase( xCampoDes );

              wT2Selec2:=wT2Selec2+' AS '+xCampoDes;

              cdsBusca.Next;
           end;

           cdsUsuNo.Close;
           cdsUsuNo.ProviderName:='dspTem2';
           wQry:='Select CAMPO, DETDBGTITLE, DESCRIPCION from Plan04 '
                  +'Where archivo='''+cdsGrid2.FieldByName('DETDBGREFER').AsString+''' and '
                  +'DETALLE='+''''+'C'+'''';
           cdsUsuNo.DataRequest( wQry );
           cdsUsuNo.Open;

           xCampoCod:= cdsUsuNo.FieldByName('Campo').AsString;

           //  vhnxx 15/12/2003
           if (SRV_D = 'DB2NT') or (SRV_D = 'DB2400') then
           begin
              wT2Join:=wT2Join+'Left Join '+cdsGrid2.FieldByName('DETDBGREFER').AsString+' on '
                    +wTabla2+'.'+cdsUsuNo.FieldbYName('CAMPO').AsString+'='
                    +cdsGrid2.FieldByName('DETDBGREFER').AsString+'.'+xCampoCod+' ';
              wT2Join2:='';
           end
           else
           begin
              if SRV_D = 'ORACLE' then begin

                 cdsUsuNo.Close;
                 cdsUsuNo.ProviderName:='dspTem2';
                 wQry:='Select CAMPO, DETDBGTITLE, DESCRIPCION from Plan04 '
                      +'Where ARCHIVO='''+cdsGrid2.FieldByName('DETDBGREFER').AsString+''' and '
                      +      'DETDBGKEY>=''1'' AND DETDBGKEY<=''9''';
                 cdsUsuNo.DataRequest( wQry );
                 cdsUsuNo.Open;

                 wT2Join:=wT2Join+', '+cdsGrid2.FieldByName('DETDBGREFER').AsString+' ';

                 while not cdsUsuNo.Eof do begin

                    if wT2Join2='' then
                       wT2Join2:=wTabla2+'.'+cdsUsuNo.FieldbYName('CAMPO').AsString+'='
                                +cdsGrid2.FieldByName('DETDBGREFER').AsString+'.'+cdsUsuNo.FieldbYName('CAMPO').AsString+'(+) '
                    else
                       wT2Join2:=wT2Join2+' and '+wTabla2+'.'+cdsUsuNo.FieldbYName('CAMPO').AsString+'='
                                +cdsGrid2.FieldByName('DETDBGREFER').AsString+'.'+cdsUsuNo.FieldbYName('CAMPO').AsString+'(+) ';

                    cdsUsuNo.Next;
                 end;
              end;
           end;
        end;
        cdsGrid2.Next;
     end;
  end;
end;


procedure TFCobranzaGlobal.FiltraRep2;
var
   xWhere, wQuery, xOrder, xQuery2 : String;
   x : Integer;
begin

   Screen.Cursor:=CrHourGlass;

   cdsBusca.DisableControls;
   cdsBusca.Close;
   cdsBusca.Filter:='';
   cdsBusca.Filtered:=False;
   if wTablaLlave<>'' then
      cdsBusca.IndexFieldNames:=wTablaLlave;
      
   cdsBusca.DataRequest( SQL );
   cdsBusca.FetchOnDemand:=False;
   cdsBusca.PacketRecords:=1000;
   cdsBusca.FetchOnDemand:=True;
   cdsBusca.Open;
   cdsBusca.EnableControls;

   ppdbMantD.Visible:=False;

   if wTabla2<>'' then begin
      ppdbMantD.Visible:=True;

      if wT2Selec2='' then
         xQuery2:='Select * from '+wTabla2
      else
         xQuery2:='Select '+wTabla2+'.* '+wT2Selec2+' from '+wTabla2 + wT2Join ;
      {
      if wTabla2Filter<>'' then
      begin
         xQuery2:=xQuery2+' Where '+wTabla2Filter;
      end;
      }
      if SRV_D = 'ORACLE' then
      begin
         if Pos('Where', xQuery2 )=0 then
         begin
            if wT2Join2<>'' then
               xQuery2:=xQuery2+' Where ( '+wT2Join2+' ) ';
         end
         else
         begin
            if Length( xWhere ) > 0 then
               xQuery2:=xQuery2+' and ( '+wJoin2+' ) '
         end;
      end;

      xQuery2:=xQuery2+' Order by '+StringReplace(wTabla2Llave,';',',',[rfreplaceall]);

      cdsRep2.Close;
      if wTabla2Filter<>'' then
      begin
         cdsRep2.Filtered:=False;
         cdsRep2.Filter  :='';
         cdsRep2.Filter  :=wTabla2Filter;
         cdsRep2.Filtered:=True;
      end;
      cdsRep2.FetchOnDemand:=False;
      cdsRep2.PacketRecords:=100;
      cdsRep2.DataRequest( xQuery2 );
      cdsRep2.MasterSource   :=dsBusca;
      cdsRep2.IndexFieldNames:=wTabla2Llave;
      cdsRep2.MasterFields   :=wTablaLlave;
      cdsRep2.Open;
      cdsRep2.FetchOnDemand:=True;

      if wTabla2Order<>'' then
      begin
         if cdsRep2.IndexName='XXX11' then
            cdsRep2.DeleteIndex( 'XXX11' );
         cdsRep2.AddIndex( 'XXX11', wTabla2Order , [ixCaseInsensitive],'','', 0 );
         cdsRep2.IndexName:='XXX11';
      end;
   end;

   Screen.Cursor:=crDefault;
end;


procedure TFCobranzaGlobal.FiltraTablaRemoto( xxCds:TwwClientDataSet; xxArchivo, xxCampo, xxFilter : String  );
var
   xFiltro : String;
   xSQL2 : string;
begin
   xxCds.Close;
   xxCds.Filtered:=False;
   xxCds.Filter  :='';
   xxCds.IndexFieldNames:='';

   if not FileExists( wRutaCds+xxArchivo ) then
   begin
      try
         if not DirectoryExists( wRutaCds ) then
            CreateDir( wRutaCds );
      except
      end;

      xSQL2 := 'SELECT * FROM '+ xxArchivo;
      xxCds.DataRequest( xSQL2 );
      xxCds.Open;

      try
         xxCds.SaveToFile( wRutaCds+xxArchivo );
         xxCds.Close;
         xxCds.LoadFromFile( wRutaCds+xxArchivo );
      except
      end;
   end
   else
   begin
      xxCds.LoadFromFile( wRutaCds+xxArchivo );
   end;

   xFiltro:=xxFilter;
   if Length(xFiltro)>0 then
   begin
      xxCds.Filter  :=xFiltro;
      xxCds.Filtered:=True;
   end;
end;


procedure TFCobranzaGlobal.dbgReporteRowChanged(Sender: TObject);
begin
   dbeNombre.Text:=cdsReporte.FieldByname('NOMBRE').AsString;
end;

procedure TFCobranzaGlobal.dbgReporteDblClick(Sender: TObject);
var
   xFileRtm : String;
   x10, x20, x20TC : Integer;
   xSubRep  : TppComponent;
begin

   xFileRtm := xxServer+xxDirect+xxDirMod+xxDirPrn+'\'+dbeNombre.Text+'.rtm';

   If not FileExists( xFileRtm ) then
      Raise Exception.Create( ' Falta Diseñar Reporte ');

   if wUserSQL='' then begin

      GeneraSQLReporte;
      FiltraRep;

      dbgReporte.Enabled:=False;
      DM1.cdsRegCob.DisableControls;

      xPipeLine:=TppBDEPipeline.Create( Self );
      xPipeLine.DataSource:=dsBusca;
      xPipeline.UserName  :='Maestro';
      xPipeline.Name      :='ppdbMant1';


   end
   else begin
      dbgReporte.Enabled:=False;
      DM1.cdsRegCob.DisableControls;
      xPipeLine := TppBDEPipeline.Create( Self );

      GeneraSQLTabla2Descripciones;
      FiltraRep2;

      xPipeLine.DataSource:=dsBusca;
      xPipeline.UserName  :='Maestro';
      xPipeline.Name      :='ppdbMant1';

   end;

   xReport := TppReport.Create( Self);
   xReport.Name:= 'ppReport2';
   xReport.Template.FileName := xFileRtm;
   xReport.Template.LoadFromFile;
   xReport.DataPipeline:= xPipeline;
   xReport.OnPreviewFormCreate:=pprMantPreviewFormCreate;

   //SOLPrevio1.ppReport:=xReport;
   Try
     //SOLPrevio1.Execute;
     xReport.Print;

   Finally
     DM1.cdsRegCob.First;
     DM1.cdsRegCob.EnableControls;
     dbgReporte.Enabled:=True;
     xReport.Stop;

     x10:=Self.ComponentCount-1;
     while x10>=0 do begin
        if Self.Components[ x10 ].ClassName='TppGroup' then begin
           Self.Components[ x10 ].Free ;
        end;
        x10:=x10-1;
     end;

     cdsBusca.IndexFieldNames:='';

     cdsRep2.Close;
     cdsRep2.FetchOnDemand  :=False;
     cdsRep2.PacketRecords  :=-1;
     cdsRep2.MasterSource   :=nil;
     cdsRep2.MasterFields   :='';
     cdsRep2.IndexFieldNames:='';
     cdsRep2.FetchOnDemand:=True;

     xPipeLine.Free;
     xReport.Free;
   end;
end;

procedure TFCobranzaGlobal.pprMantPreviewFormCreate(Sender: TObject);
begin
   xReport.PreviewForm.ClientHeight := 800;
   xReport.PreviewForm.ClientWidth  := 720;
   TppViewer(xReport.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;

procedure TFCobranzaGlobal.bbtnSumaClick(Sender: TObject);
var
   xtotal : Single;
   xLenS, xLenT  : Integer;
   xSQLSum: String;
   xSumat : String;
   xSQLTmp: String;
begin

   Screen.Cursor:= crHourGlass;

   xSumat:='';
   cdsGrid.First;
   while Not cdsGrid.Eof do begin
      if cdsGrid.FieldByName('SUMATORIA').AsString='S' then
         xSumat:=xSumat+'SUM( '+wReplacCeros+'( '+cdsGrid.FieldByName('Campo').AsString+',0) ) as '+cdsGrid.FieldByName('Campo').AsString+', ';
      cdsGrid.Next;
   end;

   if wUserSQL<>'' then begin
      xLenT:=Pos( 'SOLVISTA', SQL );
      xLenS:=Pos( 'ORDER BY', Copy(UpperCase( SQL ),xLenT, Length(SQL) ) );

      xSQLTmp:=SQL;

      if xLenS>0 then begin
         xSQLTmp:=Copy(xSQLTmp, 1, xLenS+xLenT-2 )
      end;

      xSQLSum:='Select ' + xSumat + 'Count(*) as NUMREG from ( '+ xSQLTmp +') A ';
   end
   else begin
      xSQLSum:='Select ' + xSumat + 'Count(*) as NUMREG from '+wTabla +' '+ xxWhereT;
   end;

   cdsBusca.Close;
   cdsBusca.Filter:='';
   cdsBusca.Filtered:=False;
   cdsBusca.DataRequest( xSQLSum );

   try
     cdsBusca.Open;
   except
      ShowMessage('Error : Al Ejecutar Sumatorias. Avise a Sistemas...');
      Screen.Cursor:=CrDefault;
      Exit;
   end;

   cdsGrid.First;
   while Not cdsGrid.Eof do begin
      wFieldName:=cdsGrid.FieldByName('Campo').AsString;
      if ( cdsGrid.FieldByName('SUMATORIA').AsString='S') then begin
         dbgFiltro.ColumnByName( cdsGrid.FieldByName('Campo').AsString ).FooterValue:=
         floattostrf( cdsBusca.FieldByName(cdsGrid.FieldByName('Campo').AsString).AsFloat, ffNumber, 10, 2);
      end;
      cdsGrid.Next;
   end;

   edtRegistros.Text:=formatfloat('###,###,###',cdsBusca.FieldByName('NUMREG').AsInteger);

   Screen.Cursor:=CrDefault;
end;

procedure TFCobranzaGlobal.FormResize(Sender: TObject);
begin
//   pnlReporte.Visible:=False;
   if pnlFiltro.Visible then
   begin
     //dbgFiltro.Height := pnlFiltro.Height - 1;
     //dbgFiltro.Width  := pnlFiltro.Width-1;
   end
   else begin
     //dbgFiltro.Height := pnlColumna.Height-1;
     //dbgFiltro.Width  := pnlFiltro.Width-1;
   end;
   pnlInfor.Top := pnlFiltro.Top - pnlInfor.Height;
   bbtnSalir.Left := (pnlPie.Width - bbtnSalir.Width)-5;
   Refresh;
   Repaint;
end;

procedure TFCobranzaGlobal.bbtnGruposClick(Sender: TObject);
Var
   xGrupos : Integer;
begin
   xGrupos := seGrupo.Value;
   if (xGrupos>0) and (xGrupos<=5) then begin
      wGrupoCols := xGrupos;
      MuestraGrupos;
   end
   else begin
      if xGrupos=0 then
      begin
         EliminaGrupos;
         dbgFiltro.RefreshDisplay;
      end
      else begin
         ShowMessage('Rango de Grupos: Desde 1 hasta 5');
      end;
   end;
end;

procedure TFCobranzaGlobal.bbtnExcelClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If DM1.cdsRegCob.RecordCount > 0 Then
   Begin
      Try
        Screen.Cursor:= crHourGlass;
        DM1.ExportaGridExcel(dbgFiltro,'Resultados');
        Screen.Cursor:= crDefault;
    	except
    		on Ex: Exception do
		  	Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
    	end;
   End;
   Screen.Cursor := crDefault;
end;

procedure TFCobranzaGlobal.bbtnFilt1Click(Sender: TObject);
begin
   pnlInfor.Visible := not pnlInfor.Visible ;
   pnlInfor.Top := pnlFiltro.Top - pnlInfor.Height;

   pnlInfor.Left  :=(Trunc(dbgFiltro.Width/2)-Trunc(pnlInfor.Width/2));

   if pnlInfor.Visible then
   begin
      cdsPlan.Filtered:= False;
      cdsPlan.Filter  := '';
      cdsPlan.Filter  := 'USUARIO='''+wUser+''' AND TABLA='''+wTabla+''' AND TITULO='''+wTitulo+'''';
      cdsPlan.Filtered:= True;
      dbeNameFilt.Text := 'Nuevo Informe';

      if cdsPlan.Locate('TABLA;USUARIO;ULTIMO;TITULO',VarArrayOf([wTabla,wUser,'U',wTitulo]),[]) then
         if not cdsPlan.Found then
           if cdsPlan.eof then
              cdsPlan.Prior;

      dbgFiltro.Enabled:= False;
      pnlFiltro.Enabled:= False;
      pnlPie.Enabled   := False;
   end;

end;

procedure TFCobranzaGlobal.bbtnCancFiltClick(Sender: TObject);
begin
  dbgFiltro.Enabled := True;
  pnlFiltro.Enabled := True;
  pnlPie.Enabled    := True;

  pnlInfor.Visible := False;
end;

procedure TFCobranzaGlobal.bbtnOKFiltClick(Sender: TObject);
var
  mTabla: String;
  bmk   : TBookmark;
begin
   mTabla := cdsPlan.FieldByName('TABLA').AsString;

   if trim(wTabla)<>trim(mTabla) then
   begin
      Application.MessageBox ('Debe seleccionar la tabla que corresponda a informe',
                               PChar(Caption),MB_OK+MB_ICONINFORMATION);
      Exit;
   end;

   dbeNameFilt.Text:= cdsPlan.FieldByName('DESCRIPTION').AsString;

   CampoToListBox( lbFiltro,     'LISTFIELDL' );
   CampoToListBox( lbFiltroReal, 'LISTFIELDF');
   CampoToListBox( lbOrden,      'LISTORDERL');
   CampoToListBox( lbOrdenReal,  'LISTORDERF');

   wFlVista:=True;
   FiltraData( 'REFRESH' );

   dbgFiltro.Enabled  := True;
   pnlFiltro.Enabled  := True;
   pnlPie.Enabled     := True;

   bmk:=cdsPlan.GetBookmark;

   cdsPlan.DisableControls;
   cdsPlan.First;
   while not cdsPlan.Eof do begin
      cdsPlan.Edit;
      cdsPlan.FieldByName('ULTIMO').Clear;
      cdsPlan.FieldByName('ULTIMO').AsString:='N';
      //cdsPlan.Post;
      cdsPlan.Next;
   end;
   cdsPlan.GotoBookmark(bmk);
   cdsPlan.FreeBookmark(bmk);

   cdsPlan.Edit;
   cdsPlan.FieldByName('ULTIMO').AsString:= 'U';
   cdsPlan.FieldByName('FECREG').Value   := Date;
   cdsPlan.FieldByName('HORREG').Value   := Time;
   cdsPlan.Post;
   cdsPlan.ApplyUpdates(-1);

   cdsPlan.EnableControls;

   pnlInfor.Visible := False;
end;

procedure TFCobranzaGlobal.bbtnSaveFilClick(Sender: TObject);
var
   bmk     : TBookMark;
   xxFlNew : Boolean;
begin
   bmk:=cdsPlan.GetBookmark;

   xxFlNew:=True;
   if cdsPlan.Locate('TABLA;USUARIO;DESCRIPTION;TITULO',VarArrayOf([wTabla,wUser,dbeNameFilt.Text,wTitulo]),[]) then
   begin
      if MessageDlg(' Vista Existe ¿ Desea Regrabar ? ' ,mtConfirmation, [mbYes, mbNo], 0)=mrNo then begin
         cdsPlan.GotoBookmark(bmk);
         cdsPlan.FreeBookmark(bmk);
         Exit;
      end;
      xxFlNew:=False;
   end;

   cdsPlan.DisableControls;

   cdsPlan.First;
   while not cdsPlan.Eof do begin
      cdsPlan.Edit;
      cdsPlan.FieldByName('ULTIMO').Clear;
      cdsPlan.FieldByName('ULTIMO').AsString:='N';
      //cdsPlan.Post;
      cdsPlan.Next;
   end;

   cdsPlan.ApplyUpdates(-1);

   cdsPlan.GotoBookmark(bmk);
   cdsPlan.FreeBookmark(bmk);

   if xxFlNew then begin
      cdsPlan.Insert;
      cdsPlan.FieldByName('TITULO').AsString := wTitulo;
      cdsPlan.FieldByName('TABLA').AsString  := wTabla;
      cdsPlan.FieldByName('USUARIO').AsString:= wUser;
   end;

   cdsPlan.Edit;
   cdsPlan.FieldByName('ULTIMO').AsString := 'U';
   cdsPlan.FieldByName('DESCRIPTION').AsString := dbeNameFilt.Text;

   ListBoxToCampo( lbFiltro,     'LISTFIELDL' );
   ListBoxToCampo( lbFiltroReal, 'LISTFIELDF');
   ListBoxToCampo( lbOrden,      'LISTORDERL');
   ListBoxToCampo( lbOrdenReal,  'LISTORDERF');
   //cdsPlan.FieldByName('SQLUSER').Value      := SQL+'{}';
   cdsPlan.FieldByName('GRUPOS').AsInteger   := seGrupo.Value;

   cdsPlan.FieldByName('FECREG').Value    := Date;
   cdsPlan.FieldByName('HORREG').Value    := Time;

   cdsPlan.Post;
   cdsPlan.ApplyUpdates(-1);

   if (wFile<>'') then begin
      dbgFiltro.IniAttributes.Enabled        := True;
      dbgFiltro.IniAttributes.SaveToRegistry := False;
      dbgFiltro.IniAttributes.FileName       := wFile;
      if wSection='' then
         dbgFiltro.IniAttributes.SectionName := dbgFiltro.Name
      else
         dbgFiltro.IniAttributes.SectionName := wSection+dbeNameFilt.Text;

      dbgFiltro.SaveToIniFile;
   end;

   cdsPlan.EnableControls;

   ShowMessage(' Vista Grabada ');
end;

procedure TFCobranzaGlobal.bbtnInicialClick(Sender: TObject);
var
  mTabla : String;
begin
   mTabla := cdsPlan.FieldByName('TABLA').AsString;

   if trim(wTabla) <> trim(mTabla) then
   begin
      Application.MessageBox ('Debe seleccionar la tabla que corresponda a informe',
                               PChar(Caption),MB_OK+MB_ICONINFORMATION);
      Exit;
   end;

   dbeNameFilt.Text := cdsPlan.FieldByName('DESCRIPTION').AsString;

   lbFiltro.Items.Clear;
   lbFiltroReal.Items.Clear;
   lbOrden.Items.Clear;
   lbOrdenReal.Items.Clear;
   seGrupo.Value:=0;
   EliminaGrupos;
   dbgFiltro.RefreshDisplay;
   wFlVista:=False;

   FiltraData( 'REFRESH' );

   dbgFiltro.Enabled := True;
   pnlFiltro.Enabled := True;
   pnlPie.Enabled    := True;

   pnlInfor.Visible := False;
end;

procedure TFCobranzaGlobal.ListBoxToCampo( xLBox:TListBox; xNCampoT:String );
var
   h    : Integer;
   xVAR : String;
begin
   xVAR :='';
   for h:=0 to xLBox.Items.Count-1 do begin
       xVAR := xVAR + xLBox.Items.Strings[h]+'{}' ;
   end;

   cdsPlan.FieldByName( xNCampoT ).Value:=xVAR;

   if cdsPlan.FieldByName( xNCampoT ).AsString='' then
      cdsPlan.FieldByName( xNCampoT ).AsString:='*';
end;


procedure TFCobranzaGlobal.bbtnFiltClick(Sender: TObject);
begin
   pnlInfor.Visible := not pnlInfor.Visible ;
   pnlInfor.Top := pnlFiltro.Top - pnlInfor.Height;

   pnlInfor.Left  :=(Trunc(dbgFiltro.Width/2)-Trunc(pnlInfor.Width/2));

   if pnlInfor.Visible then
   begin
      cdsPlan.Filtered:= False;
      cdsPlan.Filter  := '';
      cdsPlan.Filter  := 'USUARIO='''+wUser+''' AND TABLA='''+wTabla+''' AND TITULO='''+wTitulo+'''';
      cdsPlan.Filtered:= True;
      dbeNameFilt.Text := 'Nuevo Informe';

      if cdsPlan.Locate('TABLA;USUARIO;ULTIMO;TITULO',VarArrayOf([wTabla,wUser,'U',wTitulo]),[]) then
         if not cdsPlan.Found then
           if cdsPlan.eof then
              cdsPlan.Prior;

      dbgFiltro.Enabled:= False;
      pnlFiltro.Enabled:= False;
      pnlPie.Enabled   := False;
   end;
end;

procedure TFCobranzaGlobal.dbgFiltrosDblClick(Sender: TObject);
var
 bmk : TBookMark;
begin
  bmk:=cdsPlan.GetBookmark;

  cdsPlan.DisableControls;

  cdsPlan.First;
  while not cdsPlan.Eof do begin
     cdsPlan.Edit;
     cdsPlan.FieldByName('ULTIMO').Clear;
     cdsPlan.FieldByName('ULTIMO').AsString := 'N';
     cdsPlan.Post;
     cdsPlan.Next;
  end;

  cdsPlan.GotoBookmark(bmk);
  cdsPlan.FreeBookmark(bmk);

  cdsPlan.Edit;
  cdsPlan.FieldByName('ULTIMO').AsString := 'U';
  cdsPlan.Post;
  cdsPlan.ApplyUpdates(-1);
  cdsPlan.EnableControls;
end;

procedure TFCobranzaGlobal.bbtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFCobranzaGlobal.rgFiltroClick(Sender: TObject);
begin
   lblSub1.Visible:=False;
   lblSub2.Visible:=False;
   seIni.Visible  :=False;
   seLen.Visible  :=False;
   rgLike.Visible :=False;
   if rgFiltro.ItemIndex=6 then begin
      lblSub1.Visible:=True;
      lblSub2.Visible:=True;
      seIni.Visible  :=True;
      seLen.Visible  :=True;
   end;
   if rgFiltro.ItemIndex=7 then begin
      rgLike.Visible :=True;
   end
end;

procedure TFCobranzaGlobal.rgValorClick(Sender: TObject);
begin
   if rgValor.ItemIndex=1 then begin

      cbCampos.Items.Clear;
      cbCampos.Text :='';
      cbCampos.Items:=lbCampos.Items;

      cbCampos.BringToFront;
      cbCampos.left          := xCampoLeft + wCol+50;
      cbCampos.top           := xInicioCampos + wLin;
      cbCampos.Visible       := True;
   end
   else begin
      cbCampos.Visible       := False;
   end;
end;

procedure TFCobranzaGlobal.bbtnORClick(Sender: TObject);
Var
   wVarFiltro : String;
   wVarFiltroD: String;
   wVariable1 : String;
   wVariable2 : String;
   wRelacion1 : String;
   wTablaxx   : String;
   xnLength   : Integer;
   xOrS       : String;
   xNCamposG  : String;
begin

   bbtnOkF.Visible:=False;

   xIniOr:=xIniOr+1;
   if xIniOr=1 then xOrS:='( ';
   if xIniOr>1 then xOrS:=' or ';

// vhnxxx 26112003
   xNCamposG:='N';
   if (wType[xNComp]='L') OR (wType[XNComp]='C') then
   begin
      wcdsLookup[ xNComp ].First;
      while not wcdsLookup[ xNComp ].Eof do
      begin
         if wcdsLookup[ xNComp ].FieldByName('DETDBGKEY').AsString<>'' then
         begin
            wVariable2:=wcdsLookup[ xNComp ].FieldByName('CAMPO').AsString;
            if lbCamposReal.Items.Strings[lbCampos.ItemIndex]<>wVariable2 then
            begin
               xOrS:=xOrS+' ( ';
               xNCamposG:='S';
               Break;
            end;
         end;
         wcdsLookup[ xNComp ].Next;
      end;
   end;
//
   if rgFiltro.ItemIndex=6 then begin
      if (wType[xNComp]='D') or (wType[xNComp]='R') then begin
         ShowMessage('Error : Operador SUBSTR solo se usa con Datos String');
         Exit;
      end
   end;

   if rgFiltro.ItemIndex=7 then begin
      if (wType[xNComp]='D') or (wType[xNComp]='R') then begin
         ShowMessage('Error : Operador Contiene solo se usa con Datos String');
         Exit;
      end
   end;

   wTablaxx:=wTabla+'.';

// Inicio: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha
   if wUserSQL<>'' then
      wTablaxx:='';
// Fin: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha

   xnLength:=0;
   if rgFiltro.ItemIndex=6 then begin
      if wType[xNComp]='L' then
         wVarFiltro := wDBLC[xNComp].Text
      else begin
         if wType[XNComp]='C' then
            wVarFiltro := wDBLCD[xNComp].Text
         else begin
            wVarFiltro :=  wDBEdit[xNComp].Text;
         end;
      end;
      xnLength:=Length(wVarFiltro);
      wVariable1:=xOrS+'SubStr('+lbCampos.Items.Strings[lbCampos.ItemIndex]
                 +',1,'+InttoStr(xnLength)+')' ;
      wRelacion1:='=';
   end
   else begin
      if rgFiltro.ItemIndex=7 then
      begin
         wVariable1:=xOrS+lbCampos.Items.Strings[lbCampos.ItemIndex];
         wRelacion1:=' LIKE ';
      end
      else
      begin
         wVariable1:=xOrS+lbCampos.Items.Strings[lbCampos.ItemIndex];
         wRelacion1:=rgFiltro.Items.Strings[rgFiltro.ItemIndex];
      end;
   end;
   // Modificar para AS400
   If wType[xNComp]='D' then begin
      wVarFiltro :=DateToStr( wdbdtp[xNComp].Date );
      wVarFiltroD:=wRepFuncDate+''''+FORMATDATETIME(wFormatFecha,wdbdtp[xNComp].Date)+''''+')';
      lbFiltro.Items.Add( wVariable1+wRelacion1+''''+wVarFiltro+'''');
      wVariable2:=xOrS+wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex];
      lbFiltroReal.Items.Add(wVariable2 + wRelacion1 + wVarFiltroD);
      bbtnDate.Visible:=False;
      meDias.Visible  :=False;
      lblDias.Visible :=False;
      end
   else begin
      If wType[xNComp]='R' then begin
         wVarFiltro := wDBEdit[xNComp].Text;
         lbFiltro.Items.Add( wVariable1+wRelacion1+wVarFiltro);
         wVariable2:=xOrS+wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex];
         lbFiltroReal.Items.Add(wVariable2 + wRelacion1 + wVarFiltro);
         end
      else begin
         if wType[xNComp]='L' then
            wVarFiltro := wDBLC[xNComp].Text
         else begin
            if wType[XNComp]='C' then
               wVarFiltro := wDBLCD[xNComp].Text
            else begin
               wVarFiltro :=  wDBEdit[xNComp].Text;
            end;
         end;

         if rgFiltro.ItemIndex=7 then
         begin
            if rgLike.ItemIndex=0 then
               wVarFiltro:=wVarFiltro+'%';
            if rgLike.ItemIndex=1 then
               wVarFiltro:='%'+wVarFiltro;
            if rgLike.ItemIndex=2 then
               wVarFiltro:='%'+wVarFiltro+'%';
         end;

         lbFiltro.Items.Add( wVariable1+wRelacion1+''''+wVarFiltro+'''');

         if rgFiltro.ItemIndex=6 then begin
            wVariable2:=xOrS+'SubStr('+wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex]
                       +',1,'+InttoStr(xnLength)+')' ;
         end
         else begin
            wVariable2:=xOrS+wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex];
         end;
         lbFiltroReal.Items.Add(wVariable2+wRelacion1+''''+wVarFiltro+'''');
      end;
   end;

   if (wType[xNComp]='L') OR (wType[XNComp]='C') then
   begin
      wcdsLookup[ xNComp ].First;
      while not wcdsLookup[ xNComp ].Eof do
      begin
         if wcdsLookup[ xNComp ].FieldByName('DETDBGKEY').AsString<>'' then
         begin
            wVariable2:=wcdsLookup[ xNComp ].FieldByName('CAMPO').AsString;
            wVariable1:=wcdsLookup[ xNComp ].FieldByName('DESCRIPCION').AsString;

            if lbCamposReal.Items.Strings[lbCampos.ItemIndex]<>wVariable2 then
            begin

               wRelacion1:='=';
               wVarFiltro:=wcds[ xNComp ].FieldByName( wcdsLookup[ xNComp ].FieldByName('CAMPO').AsString ).AsString;

               if (wType[xNComp]='L') or (wType[XNComp]='C') or (wType[XNComp]='E') then
               begin
                  lbFiltro.Items.Add( wVariable1+wRelacion1+QuotedStr(wVarFiltro) );
                  lbFiltroReal.Items.Add( wVariable2+wRelacion1+QuotedStr(wVarFiltro) );
               end
               else
               begin
                  lbFiltro.Items.Add( wVariable1+wRelacion1+wVarFiltro );
                  lbFiltroReal.Items.Add( wVariable2+wRelacion1+wVarFiltro );
               end;
            end;
         end;
         wcdsLookup[ xNComp ].Next;
      end;

      if xNCamposG='S' then
      begin
         lbFiltro.Items[ lbFiltro.Count-1 ]:=lbFiltro.Items[ lbFiltro.Count-1 ]+' ) ';
         lbFiltroReal.Items[ lbFiltroReal.Count-1 ]:=lbFiltroReal.Items[ lbFiltroReal.Count-1 ]+' ) ';
      end;
   end;
end;

procedure TFCobranzaGlobal.bbtnDateClick(Sender: TObject);
Var
   wVarFiltro : String;
   wVarFiltroD: String;
   wVariable1 : String;
   wVariable2 : String;
   wRelacion1 : String;
   cDias      : String;
   wTablaxx   : String;
begin

   wTablaxx:=wTabla+'.';

// Inicio: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha
   if wUserSQL<>'' then
      wTablaxx:='';
// Fin: SPP_201311_COB       : 14/08/2013 - Corregir Error al filtrar fecha

   pnlFiltro2.Visible:=False;
   wVariable1 := lbCampos.Items.Strings[lbCampos.ItemIndex];
   wRelacion1 := rgFiltro.Items.Strings[rgFiltro.ItemIndex];
   cDias:=Trim(TrimRight(TrimLeft(meDias.Text)));
   If wType[xNComp]='D' then begin
      wVarFiltro := DateToStr( wdbdtp[xNComp].Date );
      if Length( Trim( cDias ) )=0 then begin
         wVarFiltroD:= wRepFuncDate+' '+wRepFecServi+' )' ;
         lbFiltro.Items.Add( wVariable1+wRelacion1+'DATE');
         end
      else begin
         if StrtoInt( cDias )>=0 then begin
            wVarFiltroD:= wRepFuncDate+' '+wRepFecServi+' + '+ cDias +')' ;
            lbFiltro.Items.Add( wVariable1+wRelacion1+'DATE + ('+ cDias+')');
         end
         else begin
            wVarFiltroD:= wRepFuncDate+' '+wRepFecServi+' '+ cDias +')' ;
            lbFiltro.Items.Add( wVariable1+wRelacion1+'DATE '+ cDias+' ');
         end
      end;
      wVariable2:=wTablaxx+lbCamposReal.Items.Strings[lbCampos.ItemIndex];
      lbFiltroReal.Items.Add(wVariable2 + wRelacion1 + wVarFiltroD);
   end;
   EliminaCampos( xNComp );
   pnlFiltro.Enabled  := True;
   dbgFiltro.Enabled  := True;
   pnlPie.Enabled     := True;
end;

procedure TFCobranzaGlobal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DM1.cdsRegCob.IndexName:='';
     DM1.cdsRegCob.IndexName:='';
     DM1.cdsRegCob.Filter   :='';
     DM1.cdsRegCob.Filtered :=False;
     DM1.cdsRegCob.PacketRecords:=-1;
     DM1.cdsRegCob.FetchOnDemand:=True;
// Inicio: SPP_201312_COB       : 16/09/2013 - Registro Global se Triplica
     DM1.cdsRegCob.Aggregates.Clear;
// Fin: SPP_201312_COB          : 16/09/2013 - Registro Global se Triplica
     cdsPlan.Close;
     Action:=caFree;
end;

procedure TFCobranzaGlobal.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFCobranzaGlobal.bbtnDisenoClick(Sender: TObject);
var
   xFileRtm : String;
   xSQL     : String;
begin
   pnlDiseno.Left  :=(Trunc(dbgFiltro.Width/2)-Trunc(pnlDiseno.Width/2));
   If pnlFiltro.Visible then
      pnlDiseno.Top:=pnlFiltro.Top - pnlDiseno.Height - 2
   else begin
      pnlDiseno.Top:=pnlPie.Top - pnlDiseno.Height - 2;
   end;

   bbtnFilt.Enabled   :=False;
   bbtnExcel.Enabled:=False;

   rgTipo.ItemIndex:=0;
   rgTipoClick(Sender);
   MuestraReporte;

   dbgReporte.DataSource:=NIL;
   dbgReporte.Selected.Clear;
   dbgReporte.Selected.Add('NOMBRE'#9'20'#9'Nombre del Reporte'#9'F');
   dbgReporte.Selected.Add('USUARIO'#9'10'#9'Usuario'#9'F');
   dbgReporte.DataSource:=dsReporte;

   pnlDiseno.Visible := not pnlDiseno.Visible;
end;


// Inicio: SPP_201311_COB       : 14/08/2013 - Anular Registro
procedure TFCobranzaGlobal.bbtnAnularClick(Sender: TObject);
begin
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'ANULADO' Then
   Begin
       MessageDlg('Documento ya fue Anulado. Verificar...', mtInformation, [mbOk], 0);
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
         MessageDlg('No se puede Eliminar por esta opción, porque existen detalles Aceptados (COB302). Verificar...', mtInformation, [mbOk], 0);
         Exit;
      End;
      If Question(Caption, '¿Esta Seguro de Eliminar el Registro Actual ( '+DM1.cdsRegCob.FieldByName('RCOBID').AsString +' ) y su Detalle? ' + #13 + #13 + 'Desea Continuar') Then
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
      If Question(Caption, ' Registro ( '+DM1.cdsRegCob.FieldByName('RCOBID').AsString +' ) se encuentra ACEPTADO ' + #13 + #13 + 'Desea Continuar') Then
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
         If Question(Caption, '¿Esta Seguro de Anular el Registro Actual ( '+DM1.cdsRegCob.FieldByName('RCOBID').AsString +' ) y su Detalle? ' + #13 + #13 + 'Desea Continuar') Then
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
end;
// Fin: SPP_201311_COB       : 14/08/2013 - Anular Registro


// Inicio: SPP_201311_COB       : 14/08/2013 - Anular Registro
procedure TFCobranzaGlobal.cbCamposKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then
   begin
      bbtnTemp.SetFocus;
   end;
   if (Key=VK_TAB) then
      bbtnTemp.SetFocus;
end;
// Fin: SPP_201311_COB       : 14/08/2013 - Anular Registro

end.
