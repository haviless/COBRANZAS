unit COB984;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ComCtrls, Buttons, Db,
  ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport;

type
  TfCobProyVsEjec = class(TForm)
    dbgCobPro: TwwDBGrid;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitProcesar: TBitBtn;
    BitResClfCar: TBitBtn;
    BitSalir: TBitBtn;
    rdb01: TRadioButton;
    rdb02: TRadioButton;
    RpProyectado: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppShape11: TppShape;
    ppLabel81: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    DBProyectado: TppDBPipeline;
    ppDBText1: TppDBText;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppLabel1: TppLabel;
    Titulo: TppLabel;
    TitPie: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure BitProcesarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DtpFecIniChange(Sender: TObject);
    procedure DtpFecFinChange(Sender: TObject);
    procedure rdb01Click(Sender: TObject);
    procedure rdb02Click(Sender: TObject);
    procedure BitResClfCarClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimpiaGrid;
  public
    { Public declarations }
  end;

var
  fCobProyVsEjec: TfCobProyVsEjec;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfCobProyVsEjec.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TfCobProyVsEjec.BitProcesarClick(Sender: TObject);
var xSQL:String;
    xCreMto,xCremtoCob,xSaldo,xRegTot,xRegCob,xRegPen : Currency;
begin
    Screen.Cursor:= crHourGlass;
    If rdb01.Checked Then
       Begin
          xSQL:='SELECT TO_CHAR(CREFVEN,''MM'') MES,MESDESL||''-''||TO_CHAR(CREFVEN,''YYYY'') MESANO, CREMTO,REGTOT,CREMTOCOB,REGCOB, '+
                'SALDO,REGPEN,CREMTOCOB/CREMTO*100 POREJE FROM (SELECT CREFVEN,SUM(CREMTO) CREMTO,SUM(CREMTOCOB) CREMTOCOB, SUM(SALDO) SALDO,SUM(REGISTROS) REGTOT,SUM(REGCOB) REGCOB, '+
                'SUM(REGISTROS)-SUM(REGCOB) REGPEN FROM (SELECT CREFVEN,CREMTO,CREMTOCOB,SALDO,REGISTROS, CASE WHEN CREMTOCOB>0 THEN 1 ELSE 0 END AS REGCOB '+
                'FROM (SELECT CREFVEN,NVL(CREMTO,0) CREMTO,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTO,0)-NVL(CREMTOCOB,0) SALDO,1 REGISTROS '+
                'FROM CRE302 WHERE CREFVEN BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' AND CREESTID NOT IN (''04'',''13''))) '+
                'GROUP BY CREFVEN) A,TGE181 B WHERE  TO_CHAR(CREFVEN,''MM'')=B.MESIDR(+) ORDER BY CREFVEN';
       End
    Else If rdb02.Checked Then
       Begin
          xSQL:='SELECT TO_CHAR(CREFVEN,''MM'') MES,MESDESL||''-''||TO_CHAR(CREFVEN,''YYYY'') MESANO, CREMTO,REGTOT,CREMTOCOB,REGCOB, '+
                'SALDO,REGPEN,CREMTOCOB/CREMTO*100 POREJE FROM (SELECT CREFVEN,SUM(CREMTO) CREMTO,SUM(CREMTOCOB) CREMTOCOB, SUM(SALDO) SALDO,SUM(REGISTROS) REGTOT,SUM(REGCOB) REGCOB, '+
                'SUM(REGISTROS)-SUM(REGCOB) REGPEN FROM (SELECT CREFVEN,CREMTO,CREMTOCOB,SALDO,REGISTROS, CASE WHEN CREMTOCOB>0 THEN 1 ELSE 0 END AS REGCOB '+
                'FROM (SELECT CREFVEN,NVL(CREAMORT,0) CREMTO,NVL(CRECAPITAL,0) CREMTOCOB,NVL(CREAMORT,0)-NVL(CRECAPITAL,0) SALDO,1 REGISTROS '+
                'FROM CRE302 WHERE CREFVEN BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' AND CREESTID NOT IN (''04'',''13''))) '+
                'GROUP BY CREFVEN) A,TGE181 B WHERE  TO_CHAR(CREFVEN,''MM'')=B.MESIDR(+) ORDER BY CREFVEN';

       End;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    TNumericField(DM1.cdsQry.FieldByName('REGTOT')).DisplayFormat:='###,###,###';
    TNumericField(DM1.cdsQry.FieldByName('REGCOB')).DisplayFormat:='###,###,###';
    TNumericField(DM1.cdsQry.FieldByName('REGPEN')).DisplayFormat:='###,###,###';
    TNumericField(DM1.cdsQry.FieldByName('CREMTO')).DisplayFormat:='###,###,###.#0';
    TNumericField(DM1.cdsQry.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,###.#0';
    TNumericField(DM1.cdsQry.FieldByName('SALDO')).DisplayFormat:='###,###,###.#0';
    TNumericField(DM1.cdsQry.FieldByName('POREJE')).DisplayFormat:='###.#0';

    xCreMto:=0;xCremtoCob:=0;xSaldo:=0;xRegTot:=0;xRegCob:=0;xRegPen:=0;
    DM1.cdsQry.First;
    While Not DM1.cdsQry.Eof Do
    Begin
       xSaldo := xSaldo + DM1.cdsQry.FieldByName('SALDO').AsCurrency;
       xCreMto := xCreMto + DM1.cdsQry.FieldByName('CREMTO').AsCurrency;
       xCremtoCob := xCremtoCob + DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency;

       xRegTot := xRegTot + DM1.cdsQry.FieldByName('REGTOT').AsCurrency;
       xRegCob := xRegCob + DM1.cdsQry.FieldByName('REGCOB').AsCurrency;
       xRegPen := xRegPen + DM1.cdsQry.FieldByName('REGPEN').AsCurrency;
       DM1.cdsQry.Next;
    End;
    dbgCobPro.ColumnByName('MESANO').FooterValue :='Totales';
    dbgCobPro.ColumnByName('REGTOT').FooterValue := FloatToStrF(xRegTot,ffNumber, 10, 0);
    dbgCobPro.ColumnByName('REGCOB').FooterValue := FloatToStrF(xRegCob,ffNumber, 10, 0);
    dbgCobPro.ColumnByName('REGPEN').FooterValue := FloatToStrF(xRegPen,ffNumber, 10, 0);
    dbgCobPro.ColumnByName('CREMTO').FooterValue := FloatToStrF(xCreMto,ffNumber, 15, 2);
    dbgCobPro.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtoCob,ffNumber, 15, 2);
    dbgCobPro.ColumnByName('SALDO').FooterValue := FloatToStrF(xSaldo,ffNumber, 15, 2);

    Screen.Cursor:= crDefault;

end;

procedure TfCobProyVsEjec.FormActivate(Sender: TObject);
begin
   DtpFecIni.Date:= DM1.FechaSys; DtpFecFin.Date:= DM1.FechaSys; LimpiaGrid;
end;

procedure TfCobProyVsEjec.LimpiaGrid;
var xSQL:String;
    xCreMto,xCremtoCob,xSaldo,xRegTot,xRegCob,xRegPen : Currency;
begin
    Screen.Cursor:= crHourGlass;
    xSQL:='SELECT TO_CHAR(CREFVEN,''MM'') MES,MESDESL||''-''||TO_CHAR(CREFVEN,''YYYY'') MESANO, CREMTO,REGTOT,CREMTOCOB,REGCOB, '+
          'SALDO,REGPEN,CREMTOCOB/CREMTO*100 POREJE FROM (SELECT CREFVEN,SUM(CREMTO) CREMTO,SUM(CREMTOCOB) CREMTOCOB, SUM(SALDO) SALDO,SUM(REGISTROS) REGTOT,SUM(REGCOB) REGCOB, '+
          'SUM(REGISTROS)-SUM(REGCOB) REGPEN FROM (SELECT CREFVEN,CREMTO,CREMTOCOB,SALDO,REGISTROS, CASE WHEN CREMTOCOB>0 THEN 1 ELSE 0 END AS REGCOB '+
          'FROM (SELECT CREFVEN,NVL(CREMTO,0) CREMTO,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTO,0)-NVL(CREMTOCOB,0) SALDO,1 REGISTROS '+
          'FROM CRE302 WHERE ASOID=''@#$%^^&*@#'' AND CREESTID NOT IN (''04'',''13''))) '+
          'GROUP BY CREFVEN) A,TGE181 B WHERE  TO_CHAR(CREFVEN,''MM'')=B.MESIDR(+) ORDER BY CREFVEN';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    TNumericField(DM1.cdsQry.FieldByName('REGTOT')).DisplayFormat:='###,###,###';
    TNumericField(DM1.cdsQry.FieldByName('REGCOB')).DisplayFormat:='###,###,###';
    TNumericField(DM1.cdsQry.FieldByName('REGPEN')).DisplayFormat:='###,###,###';
    TNumericField(DM1.cdsQry.FieldByName('CREMTO')).DisplayFormat:='###,###,###.#0';
    TNumericField(DM1.cdsQry.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,###.#0';
    TNumericField(DM1.cdsQry.FieldByName('SALDO')).DisplayFormat:='###,###,###.#0';
    TNumericField(DM1.cdsQry.FieldByName('POREJE')).DisplayFormat:='###.#0';
    xCreMto:=0;xCremtoCob:=0;xSaldo:=0;xRegTot:=0;xRegCob:=0;xRegPen:=0;
    DM1.cdsQry.First;
    While Not DM1.cdsQry.Eof Do
    Begin
       xSaldo := xSaldo + DM1.cdsQry.FieldByName('SALDO').AsCurrency;
       xCreMto := xCreMto + DM1.cdsQry.FieldByName('CREMTO').AsCurrency;
       xCremtoCob := xCremtoCob + DM1.cdsQry.FieldByName('CREMTOCOB').AsCurrency;

       xRegTot := xRegTot + DM1.cdsQry.FieldByName('REGTOT').AsCurrency;
       xRegCob := xRegCob + DM1.cdsQry.FieldByName('REGCOB').AsCurrency;
       xRegPen := xRegPen + DM1.cdsQry.FieldByName('REGPEN').AsCurrency;
       DM1.cdsQry.Next;
    End;
    dbgCobPro.ColumnByName('MESANO').FooterValue :='Totales';
    dbgCobPro.ColumnByName('REGTOT').FooterValue := FloatToStrF(xRegTot,ffNumber, 10, 0);
    dbgCobPro.ColumnByName('REGCOB').FooterValue := FloatToStrF(xRegCob,ffNumber, 10, 0);
    dbgCobPro.ColumnByName('REGPEN').FooterValue := FloatToStrF(xRegPen,ffNumber, 10, 0);
    dbgCobPro.ColumnByName('CREMTO').FooterValue := FloatToStrF(xCreMto,ffNumber, 15, 2);
    dbgCobPro.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtoCob,ffNumber, 15, 2);
    dbgCobPro.ColumnByName('SALDO').FooterValue := FloatToStrF(xSaldo,ffNumber, 15, 2);

    Screen.Cursor:= crDefault;

end;

procedure TfCobProyVsEjec.DtpFecIniChange(Sender: TObject);
begin
   LimpiaGrid;
end;

procedure TfCobProyVsEjec.DtpFecFinChange(Sender: TObject);
begin
  LimpiaGrid;
end;

procedure TfCobProyVsEjec.rdb01Click(Sender: TObject);
begin
   LimpiaGrid;
end;

procedure TfCobProyVsEjec.rdb02Click(Sender: TObject);
begin
  LimpiaGrid;
end;

procedure TfCobProyVsEjec.BitResClfCarClick(Sender: TObject);
var xTitulo:String;
begin
    If DM1.cdsQry.RecordCount > 0 Then
       Begin
         If rdb01.Checked Then xTitulo:='('+Trim(rdb01.Caption)+')';If rdb02.Checked Then xTitulo:='('+Trim(rdb02.Caption)+')';
         Titulo.Caption:='DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date)+' - TODAS LAS FORMAS DE PAGO - '+xTitulo;
         TitPie.Caption:='Registro de pagos al : '+DateToStr(DM1.FechaSys)+'-'+DM1.HoraSys;
         RpProyectado.Print;
         RpProyectado.Cancel;
       End;
end;

end.
