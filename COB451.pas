unit COB451;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ComCtrls,
  wwdbdatetimepicker, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, ppBands, ppCache, DBGrids, ppPrnabl, ppCtrls, ppVar;

type
  Tfcuerecsalmin = class(TForm)
    dbgprevio: TwwDBGrid;
    gbfiltrar: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnprocesar: TBitBtn;
    btnimprimir: TBitBtn;
    btncerrar: TBitBtn;
    btnaexcel: TBitBtn;
    dtpinicio: TwwDBDateTimePicker;
    dtpfinal: TwwDBDateTimePicker;
    bdepreporte: TppBDEPipeline;
    pprreporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    DBGrid: TDBGrid;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel16: TppLabel;
    ppltitulo02: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    pplimpresopor: TppLabel;
    ppLabel17: TppLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnprocesarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcuerecsalmin: Tfcuerecsalmin;

implementation

uses COBDM1;

{$R *.dfm}

procedure Tfcuerecsalmin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 Then
    If (ActiveControl is TCheckBox) then
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End
    Else
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End;
end;

procedure Tfcuerecsalmin.btnprocesarClick(Sender: TObject);
Var xSql:String;
begin
  screen.Cursor := crHourGlass;
  xSql := 'SELECT C.ASOCODMOD, C.ASOAPENOMDNI, B.FECPAG, B.NUMOPE,  SUBSTR(A.CREDID,11,5) CREDID, A.CRECUOTA, NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0) SALDO'
  +' FROM CRE302 A, (SELECT SUBSTR(CAMRET,21,10) ASOID, ''OP-0''||NUMOPE CREDOCPAG, TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, NUMOPE'
  +' FROM COB348 WHERE TO_DATE(FECPAG,''YYYYMMDD'') >= '+QuotedStr(dtpinicio.Text)+' AND TO_DATE(FECPAG,''YYYYMMDD'') <= '+QuotedStr(dtpfinal.Text)
  +' AND NVL(CIERRE,''X'') = ''K'') B, APO201 C WHERE  A.ASOID = B.ASOID AND A.CREDOCPAG = B.CREDOCPAG'
  +' AND A.CREESTID = ''27'' AND NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0) < 1 AND A.ASOID = C.ASOID ORDER BY B.FECPAG, C.ASOCODMOD';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbgPrevio.Selected.Add('ASOAPENOMDNI'#9'50'#9'Apellidos y~nombres'#9#9);
  dbgPrevio.Selected.Add('FECPAG'#9'11'#9'Fecha de~pago'#9#9);
  dbgPrevio.Selected.Add('NUMOPE'#9'7'#9'Número de~operación'#9#9);
  dbgPrevio.Selected.Add('CREDID'#9'6'#9'Número de~credito'#9#9);
  dbgPrevio.Selected.Add('CRECUOTA'#9'6'#9'Cuota'#9#9);
  dbgPrevio.Selected.Add('SALDO'#9'10'#9'Saldo'#9#9);
  dbgPrevio.ApplySelected;
  screen.Cursor := crDefault;
end;

procedure Tfcuerecsalmin.FormActivate(Sender: TObject);
begin
  dtpinicio.SetFocus;
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
end;

procedure Tfcuerecsalmin.btncerrarClick(Sender: TObject);
begin
  fcuerecsalmin.Close;
end;

procedure Tfcuerecsalmin.btnimprimirClick(Sender: TObject);
begin
  ppltitulo02.Caption := 'DEL '+dtpinicio.Text+' AL '+dtpfinal.Text;
  pplimpresopor.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  pprreporte.Print;
end;

procedure Tfcuerecsalmin.btnaexcelClick(Sender: TObject);
begin
 DM1.HojaExcel('REPORTE', DM1.dsReporte, DBGrid);
end;

end.
