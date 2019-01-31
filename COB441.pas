unit COB441;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, wwdbdatetimepicker, fcButton, fcImgBtn,
  fcShapeBtn, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppProd, ppClass,
  ppReport, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, Buttons, ppStrtch,
  ppSubRpt;

type
  TFrepresbannac = class(TForm)
    pnlPagBcos: TPanel;
    StaticText1: TStaticText;
    Label4: TLabel;
    Label5: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    rgOpcion: TRadioGroup;
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ppreporte04: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppShape22: TppShape;
    ppLabel47: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel51: TppLabel;
    ppShape27: TppShape;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppShape32: TppShape;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc13: TppDBCalc;
    ppShape23: TppShape;
    ppShape25: TppShape;
    BDEPSubReporte01: TppBDEPipeline;
    ppDBCalc14: TppDBCalc;
    ppShape34: TppShape;
    ppBDEReporte01: TppBDEPipeline;
    ppSummaryBand4: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppDBText31: TppDBText;
    ppShape39: TppShape;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLine2: TppLine;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLabel48: TppLabel;
    ppLine3: TppLine;
    ppLabel49: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    pplimpresopor: TppLabel;
    ppLabel50: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcsbCerrarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frepresbannac: TFrepresbannac;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFrepresbannac.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY, VK_TAB, 0);
    end;
end;

procedure TFrepresbannac.fcsbCerrarClick(Sender: TObject);
begin
  Frepresbannac.Close;
end;

procedure TFrepresbannac.BitBtn2Click(Sender: TObject);
begin
  Frepresbannac.Close;
end;

procedure TFrepresbannac.BitBtn1Click(Sender: TObject);
Var xSql:String;
begin
  // Por fecha de deposito
  If rgOpcion.ItemIndex  = 0 Then
  Begin
    xSql := 'SELECT FECPAG, COUNT(*) C_BCO, SUM(NVL(MONPAG,0)) M_BCO, SUM(NVL(MONREG,0)) M_CRE, SUM(DECODE(NVL(MONREG,0), 0, 0,1)) C_CRE,'
    +' SUM  (CASE WHEN NVL(CIERRE,''X'') = ''D'' OR NVL(CIERRE,''X'') = ''A'' OR NVL(CIERRE,''X'') = ''C'' OR NVL(CIERRE,''X'') = ''O'' THEN MONPAG END) M_APO,'
    +' COUNT(CASE WHEN NVL(CIERRE,''X'') = ''D'' OR NVL(CIERRE,''X'') = ''A'' OR NVL(CIERRE,''X'') = ''C'' OR NVL(CIERRE,''X'') = ''O'' THEN 1 END) C_APO'
    +' FROM COB_CUE_REC_BAN_NAC_DET WHERE FECPAG >= '+QuotedStr(dbdtpInicio.Text)+' AND FECPAG <= '+QuotedStr(dbdtpFinal.Text)+' GROUP BY FECPAG';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    ppreporte01.Print;
    ppreporte01.Stop;
  End;
  // Por fecha y ofides
  If rgOpcion.ItemIndex  = 1 Then
  Begin
    xSql := 'SELECT A.OFIREG, DECODE(B.OFDESNOM, NULL, ''MONTOS NO REGISTRADOS'', B.OFDESNOM) OFDESNOM, COUNT(*) CUEBCO, SUM(MONPAG) MONBCO,'
    +' SUM(DECODE(OFIREG, NULL, 0, 1)) CUEREG, SUM(NVL(MONREG,0)) MONREG, SUM(NVL(MONPAG,0)-NVL(MONREG,0)) MONINC, SUM(1-DECODE(OFIREG, NULL, 0, 1)) CUEINC'
    +' FROM COB_CUE_REC_BAN_NAC_DET A, APO110 B WHERE  A.FECPAG >= '+QuotedStr(dbdtpInicio.Text)+' AND A.FECPAG <= '+QuotedStr(dbdtpFinal.Text)
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
    xSql := 'SELECT B.CREFPAG, B.FREG, SUM(NVL(B.CREAMORT ,0)) CREAMORT, SUM(NVL(B.CREINTERES,0)) CREINTERES,'
    +' SUM(NVL(B.CREFLAT,0)) CREFLAT, SUM(NVL(B.CREMTOEXC,0)) CREMTOEXC, SUM(NVL(B.CREMTOCOB,0)) CREMTOCOB'
    +' FROM (SELECT A.ASOID, A.IDEPER NUMOPE, A.FECPAG FECPAG, A.MONPAG, A.NUMDOCCOB FROM COB_CUE_REC_BAN_NAC_DET A'
    +' WHERE A.FECPAG >= '+QuotedStr(dbdtpInicio.Text)+' AND A.FECPAG <= '+QuotedStr(dbdtpFinal.Text)+') A, CRE310 B WHERE A.ASOID = B.ASOID AND A.FECPAG = B.CREFPAG'
    +' AND ''N-''||SUBSTR(A.NUMDOCCOB,3,8) = B.CREDOCPAG AND B.CREESTID NOT IN (''04'', ''13'') AND B.FORPAGID = ''03'' AND B.BANCOID = ''04'' GROUP BY B.CREFPAG, B.FREG ORDER BY B.CREFPAG, B.FREG';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    xSql := 'SELECT TO_CHAR(B.FREG, ''YYYY/MM'') ANOMES, SUM(NVL(B.CREAMORT ,0)) CREAMORT, SUM(NVL(B.CREINTERES,0)) CREINTERES, SUM(NVL(B.CREFLAT,0)) CREFLAT, SUM(NVL(B.CREMTOEXC,0)) CREMTOEXC,'
    +' SUM(NVL(B.CREMTOCOB,0)) CREMTOCOB FROM (SELECT A.ASOID, A.IDEPER NUMOPE, A.FECPAG, A.MONPAG, A.NUMDOCCOB FROM COB_CUE_REC_BAN_NAC_DET A WHERE A.FECPAG >= '+QuotedStr(dbdtpInicio.Text)+' AND A.FECPAG <= '+QuotedStr(dbdtpFinal.Text)+') A,'
    +' CRE310 B WHERE A.ASOID = B.ASOID AND A.FECPAG = B.CREFPAG AND ''N-''||SUBSTR(A.NUMDOCCOB,3,8) = B.CREDOCPAG AND B.CREESTID NOT IN (''04'', ''13'') AND B.FORPAGID = ''03'' AND B.BANCOID = ''04'''
    +' GROUP BY TO_CHAR(B.FREG, ''YYYY/MM'') ORDER BY TO_CHAR(B.FREG, ''YYYY/MM'')';
    DM1.cdsReporte1.Close;
    DM1.cdsReporte1.DataRequest(xSql);
    DM1.cdsReporte1.Open;
    ppLabel39.Caption := 'DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
    xSql := 'SELECT UPPER(USERNOM) USERNOM  FROM TGE006 WHERE USERID = '+QuotedStr(DM1.wUsuario);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    pplimpresopor.Caption := 'Impreso por : '+DM1.cdsQry.FieldByName('USERNOM').AsString;
    ppreporte04.Print;
    ppreporte04.Stop;
  End;
  // Consolidado de bancos
  If rgOpcion.ItemIndex  = 3 Then
  Begin
    xSql := 'SELECT TO_CHAR(FECPAG,''YYYY/MM'') MES, COUNT(*) CANTIDAD, SUM(NVL(MONPAG,0)) MONTO FROM COB_CUE_REC_BAN_NAC_DET'
    +' GROUP BY TO_CHAR(FECPAG,''YYYY/MM'') ORDER BY MES';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    ppreporte03.Print;
    ppreporte03.Stop;
  End;
end;

end.
