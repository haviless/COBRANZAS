unit COB936;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ppBands, ppClass, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  Grids, DBGrids;

type
  TfRepReprog = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    BitPrintCon: TBitBtn;
    BitSalir: TBitBtn;
    DbReprog: TppDBPipeline;
    RepProg: TppReport;
    ppHeaderBand28: TppHeaderBand;
    Titulo01: TppLabel;
    ppLabel568: TppLabel;
    ppLabel569: TppLabel;
    ppLabel570: TppLabel;
    ppLabel571: TppLabel;
    ppLabel572: TppLabel;
    ppSystemVariable53: TppSystemVariable;
    ppSystemVariable54: TppSystemVariable;
    ppSystemVariable55: TppSystemVariable;
    ppLabel573: TppLabel;
    ppLabel574: TppLabel;
    ppLabel575: TppLabel;
    Titulo02: TppLabel;
    ppDetailBand30: TppDetailBand;
    ppDBText241: TppDBText;
    ppDBText242: TppDBText;
    ppDBText243: TppDBText;
    ppDBText244: TppDBText;
    ppDBText245: TppDBText;
    ppDBText246: TppDBText;
    ppDBText247: TppDBText;
    ppFooterBand23: TppFooterBand;
    ppSummaryBand28: TppSummaryBand;
    ppLabel588: TppLabel;
    ppDBCalc213: TppDBCalc;
    ppDBCalc214: TppDBCalc;
    ppLabel589: TppLabel;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppGroup38: TppGroup;
    ppGroupHeaderBand38: TppGroupHeaderBand;
    ppDBText248: TppDBText;
    ppLabel577: TppLabel;
    ppLabel578: TppLabel;
    ppLabel579: TppLabel;
    ppLabel580: TppLabel;
    ppLabel581: TppLabel;
    ppLabel582: TppLabel;
    ppLabel583: TppLabel;
    ppLabel584: TppLabel;
    ppLabel585: TppLabel;
    ppLine136: TppLine;
    ppLine142: TppLine;
    ppGroupFooterBand38: TppGroupFooterBand;
    ppDBCalc211: TppDBCalc;
    ppDBCalc212: TppDBCalc;
    ppLabel586: TppLabel;
    ppLabel587: TppLabel;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    BitBtn1: TBitBtn;
    DBGrid: TDBGrid;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitPrintConClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepReprog: TfRepReprog;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfRepReprog.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfRepReprog.FormActivate(Sender: TObject);
begin
    DtpFecIni.Date := DM1.FechaSys;
    DtpFecFin.Date := DM1.FechaSys;
end;

procedure TfRepReprog.BitPrintConClick(Sender: TObject);
var xSQL:String;
begin
    Screen.Cursor:=crHourGlass;
    xSQL:='SELECT USEID,ASOCODMOD,ASOAPENOM,CREFOTORG,CREMTOOTOR,TIPCREDES,FLGREFI,NRONABO,B.DESCRIPCION,USUARIO FROM '+
          'CRE301 A,COB805 B WHERE CREFOTORG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
          'AND A.FLGREFI=SUBSTR(B.DESCRIPCION,1,1)  AND TIPDESEID=''10'' AND CREESTID<> ''13'' ORDER BY B.DESCRIPCION,CREFOTORG ';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount>0 Then
       Begin
          Titulo02.Caption:='DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
          RepProg.Print;
          RepProg.Cancel;
       End
    Else
       MessageDlg(' No Existe Información Para Este Rango ', mtError,[mbOk],0);


    DM1.cdsQry.Close;
    Screen.Cursor:=crDefault;
end;

procedure TfRepReprog.BitBtn1Click(Sender: TObject);
Var xSQL:String;
begin
  // Exportar a Excel
  Screen.Cursor:=crHourGlass;
  xSQL:='SELECT USEID,ASOCODMOD,ASOAPENOM,CREFOTORG,CREMTOOTOR,TIPCREDES,FLGREFI,NRONABO,B.DESCRIPCION,USUARIO FROM '+
  'CRE301 A,COB805 B WHERE CREFOTORG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
  'AND A.FLGREFI=SUBSTR(B.DESCRIPCION,1,1)  AND TIPDESEID=''10'' AND CREESTID<> ''13'' ORDER BY B.DESCRIPCION,CREFOTORG ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount>0 Then
  Begin
    DBGrid.DataSource := DM1.dsQry;
    DM1.HojaExcel('REPORTE', DM1.dsQry, DBGrid);
  End
  Else
   MessageDlg(' No Existe Información Para Este Rango ', mtError,[mbOk],0);
  DM1.cdsQry.Close;
  Screen.Cursor:=crDefault;
end;

end.
