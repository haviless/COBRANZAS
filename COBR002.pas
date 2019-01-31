// Inicio Uso Estándares: 01/08/2011
// Unidad               : COBR002
// Formulario           : fReporteReprogramacion
// Fecha de Creación    : 19/05/2017
// Autor                : Ricardo Medina
// Objetivo             : Impresión de Reprogramación
// Actualizaciones      :
//HPC_201711_COB        : Creación del Formulario
//HPC_201712_COB        : Se modifica los formatos y se revisa el quiebre por motivo de reversión
//HPC_201716_COB        : Implementación de Trazabilidad de la reversión del Ampliado

//Inicio HPC_201711_COB
//Creación de formulacion para la Impresión de Reprogramación
unit COBR002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, ppEndUsr, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache,
//Inicio HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
  ppVar, jpeg, ppCtrls, ppPrnabl, ppParameter, Grids, DBGrids, ppModule,
  daDataModule;
//Final HPC_201716_COB

type
  TfReporteReprogramacion = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtpFechaIni: TwwDBDateTimePicker;
    Label13: TLabel;
    dtpFechaFin: TwwDBDateTimePicker;
    rbReprogramadas: TRadioButton;
    rbRechazadas: TRadioButton;
    rbRevertidas: TRadioButton;
    BitImprimirTicket: TBitBtn;
    BitTicektExcel: TBitBtn;
    BitSalir: TBitBtn;
    ppDBPl1: TppDBPipeline;
    ppRReprogramadas: TppReport;
    ppRRechazadas: TppReport;
    ppRRevertidas: TppReport;
    ppD1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppParameterList2: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
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
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    pplblTitulo: TppLabel;
    ppImage1: TppImage;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine15: TppLine;
    ppLabel28: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape7: TppShape;
    ppLabel31: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    pplblUsuario: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel27: TppLabel;
    ppDBText16: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape5: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel29: TppLabel;
    ppDBText24: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText15: TppDBText;
    ppLabel55: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape6: TppShape;
    ppLabel30: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel20: TppLabel;
    ppDBText2: TppDBText;
    ppLabel21: TppLabel;
    ppDBText3: TppDBText;
    ppLabel22: TppLabel;
    ppDBText8: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppHeaderBand2: TppHeaderBand;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel23: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    pplblTitulo2: TppLabel;
    ppImage2: TppImage;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine30: TppLine;
    ppLabel53: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppShape12: TppShape;
    ppLabel54: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    pplblusuario2: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel56: TppLabel;
    ppDBText42: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape13: TppShape;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel57: TppLabel;
    ppDBText43: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText49: TppDBText;
    ppLabel49: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppShape14: TppShape;
    ppLabel58: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel59: TppLabel;
    ppDBText45: TppDBText;
    ppLabel60: TppLabel;
    ppDBText46: TppDBText;
    ppLabel61: TppLabel;
    ppDBText47: TppDBText;
    ppLabel62: TppLabel;
    ppDBText48: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppParameterList3: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
//Inicio HPC_201716_COB
//Se cambió nombre de etiqueta de pplabel81 a pplblTitulo3
    pplblTitulo3: TppLabel;
//Fin HPC_201716_COB
    ppImage3: TppImage;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine45: TppLine;
    ppLabel85: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText44: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppShape19: TppShape;
    ppLabel86: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
//Inicio HPC_201716_COB
//Se cambió nombre de etiqueta de pplabel87 a pplblUsuario3
    pplblUsuario3: TppLabel;
//Fin HPC_201716_COB
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel88: TppLabel;
    ppDBText66: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppShape20: TppShape;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppLabel89: TppLabel;
//Inicio HPC_201712_COB
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppShape22: TppShape;
    ppDBText75: TppDBText;
    ppLabel96: TppLabel;
    ppDBText74: TppDBText;
    ppDBText76: TppDBText;
    ppDBText73: TppDBText;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
//Final HPC_201712_COB
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppDBText68: TppDBText;
    ppLabel90: TppLabel;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppShape21: TppShape;
    ppLabel91: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppLabel92: TppLabel;
    ppDBText69: TppDBText;
    ppLabel93: TppLabel;
    ppDBText70: TppDBText;
    ppLabel94: TppLabel;
    ppDBText71: TppDBText;
    ppLabel95: TppLabel;
    ppDBText72: TppDBText;
    ppGroupFooterBand9: TppGroupFooterBand;
    dtgData: TDBGrid;
    procedure BitImprimirTicketClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitTicektExcelClick(Sender: TObject);
  private
    { Private declarations }
    Procedure ArmaQry();
  public
    { Public declarations }
    XSQL:String;
  end;

var
  fReporteReprogramacion: TfReporteReprogramacion;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfReporteReprogramacion.BitImprimirTicketClick(Sender: TObject);
VAR XSQL: String;
begin

 If (Length(Trim(dtpFechaIni.Text))=0) or
    (Length(Trim(dtpFechaFin.Text))=0) Then
 Begin
   ShowMessage('Debe completar los parámetros de fecha');
   Exit;
 End;

 If dtpFechaFin.Date<dtpFechaIni.Date Then
 Begin
   ShowMessage('La fecha final no puede ser menor que la fecha inicial ');
   Exit;
 End;
 Screen.Cursor := crHourGlass;
 ArmaQry;
 If Dm1.cdsQry10.RecordCount=0 Then
 Begin
   ShowMessage('No existe información');
   Screen.Cursor := crDefault;
   Exit;
 End;

 If rbReprogramadas.Checked Then
 Begin
    ppd1.Report := ppRReprogramadas;
    pplblTitulo.Caption  :='Reprogramación del '+dtpFechaIni.Text+' al '+dtpFechaFin.Text;
    pplblUsuario.Caption :='Usuario: '+dm1.wUsuario;
 End;

 If rbRechazadas.Checked Then
 Begin
   ppd1.Report := ppRRechazadas;
   pplblTitulo2.Caption  :='Reprogramaciones Desaprobadas del '+dtpFechaIni.Text+' al '+dtpFechaFin.Text;
   pplblUsuario2.Caption :='Usuario: '+dm1.wUsuario;
 End;

 If rbRevertidas.Checked Then
 Begin
  ppd1.Report := ppRRevertidas;
//Inicio HPC_201716_COB
//Se asigna el título y usuario al reporte de Reversión
  pplblTitulo3.Caption  :='Reprogramaciones Revertidas del '+dtpFechaIni.Text+' al '+dtpFechaFin.Text;
  pplblUsuario3.Caption :='Usuario: '+dm1.wUsuario;
//Final HPC_201716_COB
 End;

 ppDBPl1.DataSource := Dm1.dsQry10;

 If rbReprogramadas.Checked Then  ppRReprogramadas.Print;
 If rbRechazadas.Checked    Then  ppRRechazadas.Print;
 If rbRevertidas.Checked    Then  ppRRevertidas.Print;

 ppRReprogramadas.Cancel;
 ppRRechazadas.Cancel;
 ppRRevertidas.Cancel;
 Screen.Cursor := crDefault;
end;

procedure TfReporteReprogramacion.FormActivate(Sender: TObject);
begin
 rbReprogramadas.Checked := True; 
end;

procedure TfReporteReprogramacion.BitSalirClick(Sender: TObject);
begin
close;

end;

procedure TfReporteReprogramacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Dm1.cdsQry10.close;
DM1.cdsQry10.Filtered := False;
DM1.cdsQry10.IndexFieldNames:='';
end;

procedure TfReporteReprogramacion.BitTicektExcelClick(Sender: TObject);
var xtitulo:String;
begin

  ArmaQry;
  If Dm1.cdsQry10.RecordCount=0 Then
  Begin
    ShowMessage('No existe información');
    Exit;
  End;
  dtgData.DataSource := dm1.dsQry10;

   If rbReprogramadas.Checked Then  xtitulo:='Reprogramaciones';
   If rbRechazadas.Checked    Then  xtitulo:='Reprogramaciones Desaprobadas';
   If rbRevertidas.Checked    Then  xtitulo:='Reprogramaciones Revertidas';
   DM1.HojaExcel(xtitulo,dtgData.DataSource,dtgData);

end;

procedure TfReporteReprogramacion.ArmaQry;
begin
 If rbReprogramadas.Checked Then
 Begin
    XSQL:='Select TO_CHAR(A.FECGEN,''YYYY''||''-''||''MONTH'' ) PERIODO, A.CODSOLREP,A.ASOID,A.ASOCODMOD,A.ASODNI,A.CREDID,A.TIPCREID,A.CRECUOTA,A.FORPAGOID,A.CFCDES_F,A.DIAATR,A.IMPSALTOT,A.IMPSALREP,A.IMPSALCAP,A.TIPREC,'
    +     '       A.TIPREP,A.TASINTREP,A.NUMCRENUE,A.CRENUMCUO,A.CRENUMGRA,A.FECINIVEN,A.FECFINVEN,A.IMPCUOREP,A.DESMOTREC,A.USUGEN,A.FECGEN,A.FLAANU,A.USUANU,A.FECANU, '
    +     '       B.ASOAPENOM '
    +     'From  COB_REP_CRE_CAB A,APO201 B  '
    +     'Where trunc(FECGEN)>='''+dtpFechaIni.Text+''' and trunc(FECGEN)<='''+dtpFechaFin.Text+''' AND DESMOTREC IS NULL AND FLAANU IS NULL AND A.ASOID=B.ASOID '
    +     'Order by A.TIPREC,A.FECGEN,A.ASOCODMOD,A.TIPREP ';
 End;

 If rbRechazadas.Checked Then
 Begin
    XSQL:='Select TO_CHAR(A.FECGEN,''YYYY''||''-''||''MONTH'' ) PERIODO,A.CODSOLREP,A.ASOID,A.ASOCODMOD,A.ASODNI,A.CREDID,A.TIPCREID,A.CRECUOTA,A.FORPAGOID,A.CFCDES_F,A.DIAATR,A.IMPSALTOT,A.IMPSALREP,A.IMPSALCAP,A.TIPREC,'
    +     '       A.TIPREP,A.TASINTREP,A.NUMCRENUE,A.CRENUMCUO,A.CRENUMGRA,A.FECINIVEN,A.FECFINVEN,A.IMPCUOREP,A.DESMOTREC,A.USUGEN,A.FECGEN,A.FLAANU,A.USUANU,A.FECANU, '
    +     '       B.ASOAPENOM '
    +     'From  COB_REP_CRE_CAB A,APO201 B  '
    +     'Where trunc(FECGEN)>='''+dtpFechaIni.Text+''' and trunc(FECGEN)<='''+dtpFechaFin.Text+''' AND DESMOTREC IS NOT NULL AND FLAANU IS NULL AND A.ASOID=B.ASOID '
    +     'Order by A.TIPREC,A.FECGEN,A.ASOCODMOD,A.TIPREP ';
 End;

 If rbRevertidas.Checked Then
 Begin
//Inicio HPC_201712_COB
//Quiebre por motivo de reverción
//  XSQL:='Select TO_CHAR(A.FECANU,''YYYY''||''-''||''MONTH'' ) PERIODO,A.CODSOLREP,A.ASOID,A.ASOCODMOD,A.ASODNI,A.CREDID,A.TIPCREID,A.CRECUOTA,A.FORPAGOID,A.CFCDES_F,A.DIAATR,A.IMPSALTOT,A.IMPSALREP,A.IMPSALCAP,A.TIPREC,'
//  +     '       A.TIPREP,A.TASINTREP,A.NUMCRENUE,A.CRENUMCUO,A.CRENUMGRA,A.FECINIVEN,A.FECFINVEN,A.IMPCUOREP,A.DESMOTREC,A.USUGEN,A.FECGEN,A.FLAANU,A.USUANU,A.FECANU, '
//  +     '       B.MOTREV,B.USUREV,B.FECREV,B.OBSADI,C.ASOAPENOM '
//  +     'From  COB_REP_CRE_CAB A, COB_REV_CRE_REC_CAB B, APO201 C  '
//  +     'Where trunc(FECANU)>='''+dtpFechaIni.Text+''' and trunc(FECANU)<='''+dtpFechaFin.Text+''' AND  FLAANU IS NOT NULL AND A.CODSOLREP=B.CODSOLREP AND A.ASOID=C.ASOID '
//  +     'Order by A.TIPREC,A.FECANU,A.ASOCODMOD,A.TIPREP ';

//Inicial HPC_201716_COB
//Implementación de Trazabilidad de la reversión del Ampliado
//  XSQL:='Select  TO_CHAR(A.FECREV, ''YYYY'' || ''-'' || ''MONTH'') PERIODO,A.CODSOLREP,A.ASOID, A.ASOCODMOD,A.ASODNI, A.CREDID,B.TIPCREID,B.CRECUOTA,B.FORPAGOID,B.CFCDES_F,B.DIAATR, A.IMPSALTOT,A.IMPREP IMPSALREP,B.IMPSALCAP,A.TIPREC, A.TIPREP, A.TASINTREP,'
//     + 'A.NUMCRENUE, A.CRENUMCUO, A.CRENUMGRA, A.FECINIVEN,A.FECFINVEN,B.IMPCUOREP, MOTREV DESMOTREC,B.USUGEN,A.FECREP FECGEN,''S'' FLAANU, A.USUREV USUANU, A.FECREV FECANU, A.MOTREV,A.USUREV,A.FECREV,A.OBSADI, C.ASOAPENOM '
//     + 'From COB_REP_CRE_CAB B, COB_REV_CRE_REC_CAB A, APO201 C '
//     + 'Where trunc(FECREV)>='''+dtpFechaIni.Text+''' and trunc(FECREV)<='''+dtpFechaFin.Text+''' AND A.CODSOLREP=B.CODSOLREP(+) AND A.ASOID=C.ASOID '
//     + 'Order by A.TIPREC, A.FECREV, A.ASOCODMOD, A.TIPREP ';
//Final HPC_201712_COB

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
        +'Where trunc(FECREV)>='''+dtpFechaIni.Text+''' and trunc(FECREV)<='''+dtpFechaFin.Text+''' AND A.CODSOLREP=B.CODSOLREP(+) AND A.ASOID=C.ASOID '
        +' and a.asoid=d.asoid and a.credid=d.credid '
        +' Order by A.TIPREC, A.FECREV, A.ASOCODMOD, A.TIPREP ';
 End;
//Final HPC_201716_COB 
 Dm1.cdsQry10.Close;
 Dm1.cdsQry10.DataRequest(XSQL);
 Dm1.cdsQry10.Open;

end;

end.
