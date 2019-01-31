unit COB438;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, wwdbdatetimepicker, fcButton, fcImgBtn,
  fcShapeBtn, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppProd, ppClass,
  ppReport, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache;

type
  TFRepResCon = class(TForm)
    pnlPagBcos: TPanel;
    StaticText1: TStaticText;
    Label4: TLabel;
    Label5: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    rgOpcion: TRadioGroup;
    fcsbImprime: TfcShapeBtn;
    fcsbCerrar: TfcShapeBtn;
    ppBDEPReporte: TppBDEPipeline;
    ppreporte01: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel3: TppLabel;
    ppShape5: TppShape;
    ppShape8: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    pplTitulo01: TppLabel;
    pplTitulo02: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine1: TppLine;
    ppreporte03: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppShape6: TppShape;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppShape7: TppShape;
    ppShape9: TppShape;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel21: TppLabel;
    ppShape10: TppShape;
    ppreporte02: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppShape11: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLabel30: TppLabel;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppShape19: TppShape;
    ppDBCalc5: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppLabel40: TppLabel;
    ppShape24: TppShape;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    procedure fcsbImprimeClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcsbCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepResCon: TFRepResCon;

implementation

uses COBDM1;

{$R *.dfm}





procedure TFRepResCon.fcsbImprimeClick(Sender: TObject);
Var xSql:String;
begin
  If rgOpcion.ItemIndex  = 0 Then
  Begin
    xSql := 'SELECT TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, COUNT(*) C_BCO, SUM(NVL(IMPDEP,0)) M_BCO, SUM(NVL(MONREG,0)) M_CRE,  SUM(DECODE(NVL(MONREG,0), 0, 0,1)) C_CRE, '
    +' SUM(DECODE(NVL(CIERRE, ''X''), ''A'', IMPDEP, 0)) M_APO, SUM(DECODE(NVL(CIERRE, ''X''), ''A'', 1, 0)) C_APO'
    +' FROM COB_CUE_REC_BAN_CON_DET WHERE TO_DATE(FECPAG, ''YYYYMMDD'') >= '+QuotedStr(dbdtpInicio.Text)+' AND TO_DATE(FECPAG, ''YYYYMMDD'') <= '+QuotedStr(dbdtpFinal.Text)+' GROUP BY TO_DATE(FECPAG, ''YYYYMMDD'')';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    ppreporte01.Print;
    ppreporte01.Stop;
  End;
  If rgOpcion.ItemIndex  = 1 Then
  Begin
    xSql := ' SELECT A.OFIREG, DECODE(B.OFDESNOM, NULL, ''MONTOS NO REGISTRADOS'', B.OFDESNOM) OFDESNOM, COUNT(*) CUEBCO, SUM(IMPDEP) MONBCO,'
    +' SUM(DECODE(OFIREG, NULL, 0, 1)) CUEREG, SUM(NVL(MONREG,0)) MONREG, SUM(NVL(IMPDEP,0)-NVL(MONREG,0)) MONINC, SUM(1-DECODE(OFIREG, NULL, 0, 1)) CUEINC'
    +' FROM COB_CUE_REC_BAN_CON_DET A, APO110 B WHERE '
    +' TO_DATE(A.FECPAG, ''YYYYMMDD'') >= '+QuotedStr(dbdtpInicio.Text)+' AND TO_DATE(A.FECPAG, ''YYYYMMDD'') <= '+QuotedStr(dbdtpFinal.Text)
    +' AND A.OFIREG = B.OFDESID(+) GROUP BY A.OFIREG, B.OFDESNOM ORDER BY A.OFIREG DESC';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    ppLabel23.Caption := 'POR OFIDES DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
    ppreporte02.Print;
    ppreporte02.Stop;
  End;

  If rgOpcion.ItemIndex  = 2 Then
  Begin
    xSql := 'SELECT SUBSTR(FECPAG,1,4)||''-''||SUBSTR(FECPAG,5,2) MES, COUNT(*) CANTIDAD, SUM(NVL(IMPDEP,0)) MONTO'
    +' FROM COB_CUE_REC_BAN_CON_DET GROUP BY SUBSTR(FECPAG,1,4)||''-''||SUBSTR(FECPAG,5,2)'
    +' ORDER BY MES';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    ppreporte03.Print;
    ppreporte03.Stop;
  End;
End;

procedure TFRepResCon.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY, VK_TAB, 0);
    end;
end;

procedure TFRepResCon.fcsbCerrarClick(Sender: TObject);
begin
  FRepResCon.Close;
end;

end.
