// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Cobranzas
// Unidad                    : COB429
// Formulario                : FRepRes
// Fecha de Creación         : 09/03/2018
// Autor                     : Equipo Sistemas
// Objetivo                  : Estadística de pagos cuenta recaudadora

// HPC_201806_COB      : Exceso en Cronogramas Cerrados (ONP, BANCO)

unit COB429;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, wwdbdatetimepicker, fcButton, fcImgBtn,
  fcShapeBtn, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppProd, ppClass,
  ppReport, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, Buttons, ppStrtch,
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  ppSubRpt,
  ppParameter;
// Fin HPC_201806_COB 

type
  TFRepRes = class(TForm)
    pnlPagBcos: TPanel;
    StaticText1: TStaticText;
    Label4: TLabel;
    Label5: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    rgOpcion: TRadioGroup;
    ppBDEPReporte: TppBDEPipeline;
    ppreporte01: TppReport;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ppreporte04: TppReport;
    BDEPSubReporte01: TppBDEPipeline;
    ppBDEReporte01: TppBDEPipeline;
    ppParameterList1: TppParameterList;
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
    ppShape21: TppShape;
    ppLabel40: TppLabel;
    ppShape24: TppShape;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppShape26: TppShape;
    ppLabel50: TppLabel;
    ppLabel60: TppLabel;
    ppShape33: TppShape;
    ppLabel61: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText30: TppDBText;
    ppDBText32: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine1: TppLine;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppParameterList2: TppParameterList;
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
    ppShape35: TppShape;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppShape36: TppShape;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppShape19: TppShape;
    ppDBCalc5: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppShape20: TppShape;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppParameterList3: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppShape32: TppShape;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppShape22: TppShape;
    ppLabel47: TppLabel;
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
    ppLabel49: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppDetailBand4: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppShape34: TppShape;
    ppDBCalc14: TppDBCalc;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
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
    ppDetailBand6: TppDetailBand;
    ppDBText31: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLabel48: TppLabel;
    ppLine3: TppLine;
    pplimpresopor: TppLabel;
    ppShape25: TppShape;
    ppDBText18: TppDBText;
    ppShape23: TppShape;
    ppDBCalc13: TppDBCalc;
    ppDBText35: TppDBText;
    ppShape37: TppShape;
    ppDBCalc26: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
// Fin HPC_201806_COB 
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
  FRepRes: TFRepRes;

implementation

uses COBDM1;

{$R *.dfm}





procedure TFRepRes.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY, VK_TAB, 0);
    end;
end;

procedure TFRepRes.fcsbCerrarClick(Sender: TObject);
begin
  FRepRes.Close;
end;

procedure TFRepRes.BitBtn2Click(Sender: TObject);
begin
  FRepRes.Close;
end;

procedure TFRepRes.BitBtn1Click(Sender: TObject);
Var xSql:String;
begin
  // Por fecha de proceso
  If rgOpcion.ItemIndex  = 0 Then
  Begin
    Screen.Cursor := crHourGlass;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    xSql := 'SELECT TO_DATE(A.FECPAG, ''YYYYMMDD'') FECPAG, COUNT(*) C_BCO, SUM(NVL(A.MONTOT,0)) M_BCO, SUM(NVL(A.MONREG,0)) M_CRE,SUM(NVL(B.IMPORTE, 0)) M_CRO,  SUM(DECODE(NVL(A.MONREG,0), 0, 0,1)) C_CRE, '
    +' SUM(DECODE(NVL(B.IMPORTE, 0), 0, 0, 1)) C_CRO, SUM(DECODE(NVL(A.CIERRE, ''X''), ''A'', MONTOT, 0)) M_APO, SUM(DECODE(NVL(A.CIERRE, ''X''), ''A'', 1, 0)) C_APO'
    +' FROM COB348 A,COB_DES_CRO_CERRADO_DET B WHERE A.NUMOPE = SUBSTR(B.NRO_OPERACION(+),5) AND A.FECPAG = TO_CHAR(B.FEC_OPERACION(+), ''YYYYMMDD'') AND '
    +' TO_DATE(A.FECPRO, ''YYYYMMDD'') >= '+QuotedStr(dbdtpInicio.Text)+' AND TO_DATE(A.FECPRO, ''YYYYMMDD'') <= '+QuotedStr(dbdtpFinal.Text)+' GROUP BY TO_DATE(A.FECPAG, ''YYYYMMDD'') ORDER BY FECPAG';
// Fin HPC_201806_COB 
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    Screen.Cursor := crDefault;
    ppreporte01.Print;
    ppreporte01.Stop;
  End;
  // Por fecha y ofides
  If rgOpcion.ItemIndex  = 1 Then
  Begin
    Screen.Cursor := crHourGlass;
    xSql := ' SELECT A.OFIREG, DECODE(B.OFDESNOM, NULL, ''MONTOS NO REGISTRADOS'', B.OFDESNOM) OFDESNOM, COUNT(*) CUEBCO, SUM(MONTOT) MONBCO,'
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    +' SUM(DECODE(OFIREG, NULL, 0, 1)) CUEREG, SUM(DECODE(NVL(C.IMPORTE, 0), 0, 0, 1)) CUECRO,SUM(NVL(MONREG,0)) MONREG, SUM(NVL(C.IMPORTE, 0)) MONCRO,SUM(NVL(MONTOT,0)-NVL(MONREG,0)) MONINC, SUM(1-DECODE(OFIREG, NULL, 0, 1)) CUEINC'
    +' FROM COB348 A, APO110 B, COB_DES_CRO_CERRADO_DET C WHERE '
    +' A.NUMOPE = SUBSTR(C.NRO_OPERACION(+),5) AND A.FECPAG = TO_CHAR(C.FEC_OPERACION(+), ''YYYYMMDD'') AND '
// Fin HPC_201806_COB 
    +' TO_DATE(A.FECPRO, ''YYYYMMDD'') >= '+QuotedStr(dbdtpInicio.Text)+' AND TO_DATE(A.FECPRO, ''YYYYMMDD'') <= '+QuotedStr(dbdtpFinal.Text)
    +' AND A.OFIREG = B.OFDESID(+) GROUP BY A.OFIREG, B.OFDESNOM ORDER BY OFDESNOM';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    Screen.Cursor := crDefault;
    ppLabel23.Caption := 'POR OFIDES SEGUN FECHA DE PROCESO DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
    ppreporte02.Print;
    ppreporte02.Stop;
  End;
  If rgOpcion.ItemIndex  = 2 Then
  Begin
    Screen.Cursor := crHourGlass;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    xSql := 'SELECT ''CUOTAS'' TIPO, B.CREFPAG, B.FREG, SUM(NVL(B.CREAMORT ,0)) CREAMORT, SUM(NVL(B.CREINTERES,0)) CREINTERES, SUM(NVL(B.CREFLAT,0)) CREFLAT,'
    +' SUM(NVL(B.CREMTOEXC,0)) CREMTOEXC, SUM(NVL(B.CREMTOCOB,0)) CREMTOCOB FROM (SELECT SUBSTR(CAMRET,21,10) ASOID, ''OP-0''||NUMOPE NUMOPE,'
    +' TO_DATE(FECPAG,''YYYYMMDD'') FECPAG, MONTOT FROM COB348 WHERE TO_DATE(FECPRO, ''YYYYMMDD'') >= '+QuotedStr(dbdtpInicio.Text)+' AND TO_DATE(FECPRO, ''YYYYMMDD'') <= '+QuotedStr(dbdtpFinal.Text)+') A,'
    +' CRE310 B WHERE A.ASOID = B.ASOID AND A.FECPAG = B.CREFPAG AND A.NUMOPE = B.CREDOCPAG AND B.CREESTID NOT IN (''04'', ''13'') AND B.FORPAGID = ''03'' AND B.BANCOID = ''03'''
    +' GROUP BY B.CREFPAG, B.FREG '
    //ORDER BY B.CREFPAG, B.FREG';
    +' UNION ALL '
    +' SELECT '
    +' ''CRONOGRAMAS CERRADOS'' TIPO, '
    +'  FEC_OPERACION CREFPAG, '
    +'  FREG, '
    +'  0 CREAMORT, '
    +'  0 CREINTERES, '
    +'  0 CREFLAT, '
    +'  0 CREMTOEXC, '
    +'  IMPORTE CREMTOCOB '
    +' FROM  COB_DES_CRO_CERRADO_DET '
    +' WHERE '
    +' FEC_OPERACION>= '+QuotedStr(dbdtpInicio.Text)+' AND FEC_OPERACION <='+QuotedStr(dbdtpFinal.Text)
    +' ORDER BY TIPO DESC, CREFPAG, FREG';
// Fin HPC_201806_COB
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    xSql := 'SELECT ANOMES,SUM(CREAMORT) CREAMORT,SUM(CREINTERES) CREINTERES,SUM(CREFLAT) CREFLAT,SUM(CREMTOEXC) CREMTOEXC,SUM(CREMTOCOB) CREMTOCOB '
           +' FROM( '
           +' SELECT '
           +' TO_CHAR(B.FREG, ''YYYY/MM'') ANOMES, '
           +' B.CREAMORT, '
           +' B.CREINTERES, '
           +' B.CREFLAT, '
           +' B.CREMTOEXC, '
           +' A.NUMOPE, '
           +' B.CREMTOCOB '
           +' FROM (SELECT SUBSTR(CAMRET, 21, 10) ASOID, '
           +'         ''OP-0'' || NUMOPE NUMOPE, '
           +'         TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, '
           +'         MONTOT '
           +'       FROM COB348 '
           +'       WHERE TO_DATE(FECPRO, ''YYYYMMDD'') >= '+QuotedStr(dbdtpInicio.Text)
           +'       AND TO_DATE(FECPRO, ''YYYYMMDD'') <= '+QuotedStr(dbdtpFinal.Text)+') A, CRE310 B '
           +' WHERE '
           +' A.ASOID = B.ASOID '
           +' AND A.FECPAG = B.CREFPAG '
           +' AND A.NUMOPE = B.CREDOCPAG '
           +' AND B.CREESTID NOT IN (''04'', ''13'') '
           +' AND B.FORPAGID = ''03'' '
           +' AND B.BANCOID = ''03'' '
           +'UNION ALL '
           +' SELECT '
           +' TO_CHAR(FREG, ''YYYY/MM'') ANOMES, '
           +' 0 CREAMORT, '
           +'  0 CREINTERES, '
           +' 0 CREFLAT, '
           +' 0 CREMTOEXC, '
           +' NRO_OPERACION, '
           +' IMPORTE CREMTOCOB '
           +' FROM '
           +' COB_DES_CRO_CERRADO_DET '
           +' ) GROUP BY ANOMES ';
    {
    xSql := 'SELECT TO_CHAR(B.FREG, ''YYYY/MM'') ANOMES, SUM(NVL(B.CREAMORT ,0)) CREAMORT, SUM(NVL(B.CREINTERES,0)) CREINTERES, SUM(NVL(B.CREFLAT,0)) CREFLAT, SUM(NVL(B.CREMTOEXC,0)) CREMTOEXC,'
    +' SUM(NVL(B.CREMTOCOB,0)) + SUM(NVL(C.IMPORTE, 0)) CREMTOCOB FROM (SELECT SUBSTR(CAMRET,21,10) ASOID, ''OP-0''||NUMOPE NUMOPE, TO_DATE(FECPAG,''YYYYMMDD'') FECPAG, MONTOT FROM COB348'
    +' WHERE TO_DATE(FECPRO, ''YYYYMMDD'') >= '+QuotedStr(dbdtpInicio.Text)+' AND TO_DATE(FECPRO, ''YYYYMMDD'') <= '+QuotedStr(dbdtpFinal.Text)+') A, CRE310 B, COB_DES_CRO_CERRADO_DET C WHERE '
    +' A.NUMOPE = C.NRO_OPERACION(+) AND A.FECPAG = C.FEC_OPERACION(+) AND A.ASOID = B.ASOID AND A.FECPAG = B.CREFPAG'
    +' AND A.NUMOPE = B.CREDOCPAG AND B.CREESTID NOT IN (''04'', ''13'') AND B.FORPAGID = ''03'' AND B.BANCOID = ''03'' GROUP BY TO_CHAR(B.FREG, ''YYYY/MM'') ORDER BY TO_CHAR(B.FREG, ''YYYY/MM'')';
    }
// Fin HPC_201806_COB 
    DM1.cdsReporte1.Close;
    DM1.cdsReporte1.DataRequest(xSql);
    DM1.cdsReporte1.Open;
    ppLabel39.Caption := 'POR FECHA DE PROCESO DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
    xSql := 'SELECT UPPER(USERNOM) USERNOM  FROM TGE006 WHERE USERID = '+QuotedStr(DM1.wUsuario);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    pplimpresopor.Caption := 'Impreso por : '+DM1.cdsQry.FieldByName('USERNOM').AsString;
    screen.Cursor := crDefault;
    ppreporte04.Print;
    ppreporte04.Stop;
  End;
  // Consolidado de bancos
  If rgOpcion.ItemIndex  = 3 Then
  Begin
    screen.Cursor := crHourGlass;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    xSql := 'SELECT SUBSTR(FECPRO,1,4)||''-''||SUBSTR(FECPRO,5,2) MES, COUNT(*) CANTIDAD, SUM(NVL(MONTOT,0)) + SUM(NVL(B.IMPORTE, 0)) MONTO'
    +' FROM COB348 A, COB_DES_CRO_CERRADO_DET B '
    +' WHERE '
    +' A.NUMOPE = SUBSTR(B.NRO_OPERACION(+), 5) '
    +' AND A.FECPAG = TO_CHAR(B.FEC_OPERACION(+), ''YYYYMMDD'') '
    +' GROUP BY SUBSTR(FECPRO,1,4)||''-''||SUBSTR(FECPRO,5,2)'
// Fin HPC_201806_COB 
    +' ORDER BY MES';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    Screen.Cursor := crDefault;
    ppreporte03.Print;
    ppreporte03.Stop;
  End;
end;

end.
