// Inicio Uso Estándares: 01/08/2011
// Unidad               : COBR003
// Formulario           : fReportePagAde
// Fecha de Creación    : 20/11/2017
// Autor                : Jesús Castillo
// Objetivo             : Impresión de pago adelantados
// Actualizaciones      :

//Inicio HPC_201731_COB
//Creación de formulacion para la Impresión de Pagos Adelantados
unit COBR003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, ppEndUsr, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache,
  ppVar, jpeg, ppCtrls, ppPrnabl, ppParameter, Grids, DBGrids, ppModule,
  daDataModule;

type
  TfReportePagAde = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dtpFechaIni: TwwDBDateTimePicker;
    Label13: TLabel;
    dtpFechaFin: TwwDBDateTimePicker;
    BitImprimirTicket: TBitBtn;
    BitTicektExcel: TBitBtn;
    BitSalir: TBitBtn;
    ppDBPl1: TppDBPipeline;
    ppRReprogramadas: TppReport;
    ppD1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
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
    ppLine1: TppLine;
    ppLine2: TppLine;
    pplblTitulo: TppLabel;
    ppImage1: TppImage;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand1: TppFooterBand;
    dtgData: TDBGrid;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText8: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    pplblUsuario: TppLabel;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine12: TppLine;
    procedure BitImprimirTicketClick(Sender: TObject);
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
  fReportePagAde: TfReportePagAde;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfReportePagAde.BitImprimirTicketClick(Sender: TObject);
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

 ppDBPl1.DataSource := Dm1.dsQry10;

 ppd1.Report := ppRReprogramadas;
 pplblTitulo.Caption  :='Pagos Adelantados del '+dtpFechaIni.Text+' al '+dtpFechaFin.Text;
 pplblUsuario.Caption :='Usuario: '+dm1.wUsuario;

 ppRReprogramadas.Print;

 ppRReprogramadas.Cancel;
 Screen.Cursor := crDefault;
end;

procedure TfReportePagAde.BitSalirClick(Sender: TObject);
begin
close;

end;

procedure TfReportePagAde.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Dm1.cdsQry10.close;
DM1.cdsQry10.Filtered := False;
DM1.cdsQry10.IndexFieldNames:='';
end;

procedure TfReportePagAde.BitTicektExcelClick(Sender: TObject);
var xtitulo:String;
begin
  ArmaQry;
  If Dm1.cdsQry10.RecordCount=0 Then
  Begin
    ShowMessage('No existe información');
    Exit;
  End;
  dtgData.DataSource := dm1.dsQry10;

   xtitulo:='PagosAdelantados';
   DM1.HojaExcel(xtitulo,dtgData.DataSource,dtgData);

end;

procedure TfReportePagAde.ArmaQry;
begin
    XSQL:= 'select A.ASOID,A.ASODNI,A.ASOCODMOD,A.MONPAGADE,A.MONCAPADE,A.MONFLAADE,A.MONDESADE,A.MONINTCORADE, '
       +'TRUNC(A.FECPROPAGADE) AS FECAPLICAPAGADE,A.ASOAPENOM AS APELLNOMBRES,A.CREDID AS CREDITOORIGEN ,b.cremtootor AS CAPITALREF, '
       +'A.CRECUOTA AS MONCUOORI ,A.CRENUMCUO AS NUMCUOORI,B.crecuota AS MONCUONUE ,B.crenumcuo AS NUMCUONUE,B.CREDID AS CREDITONUEVO, '
       +'A.USUPROPAGADE,(SELECT MAX(FORPAGABR) FORPAGABR FROM CRE310 WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CREESTID=''23'') AS FORPAGABR, '
       +'(SELECT MAX(CREOBS) FROM CRE310 WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CREESTID=''23'') OBSERVACION, '
       +'(SELECT MIN(CREFVENINI) FROM CRE302 WHERE ASOID=A.ASOID AND CREDID=A.crenewid) INICRONOGRAMA '
       +'From cre301 a,cre301 b,apo201 C '
       +'where trunc(A.FECPROPAGADE) >= to_date('''+dtpFechaIni.Text+''', ''dd/mm/yyyy'') and trunc(A.FECPROPAGADE)<= to_date('''+dtpFechaFin.Text+''', ''dd/mm/yyyy'') '
       +'and b.asoid(+)=a.asoid '
       +'and b.credid(+)=a.crenewid '
       +'and a.asoid=C.asoid '
       +'order by FORPAGABR,A.FECPROPAGADE';

 Dm1.cdsQry10.Close;
 Dm1.cdsQry10.DataRequest(XSQL);
 Dm1.cdsQry10.Open;

end;

end.
//Fin HPC_201731_COB
