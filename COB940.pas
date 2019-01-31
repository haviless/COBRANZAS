unit COB940;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, Db,
  DBGrids, ppBands, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe;

type
  TfRepResGest = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    dtgResGes: TwwDBGrid;
    lblDescrip: TLabel;
    dtgData: TDBGrid;
    BitExporta: TBitBtn;
    BitExpDet: TBitBtn;
    dtgDato: TDBGrid;
    ppDBData01: TppDBPipeline;
    ppDBData02: TppDBPipeline;
    ppRepCon: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel189: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    Titulo: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText82: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppDBCalc106: TppDBCalc;
    ppDBCalc107: TppDBCalc;
    ppLabel180: TppLabel;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel14: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel9: TppLabel;
    ppLabel26: TppLabel;
    ppLabel29: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText1: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppLabel190: TppLabel;
    ppDBCalc112: TppDBCalc;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppDBCalc1: TppDBCalc;
    BitPrint: TBitBtn;
    ppLabel10: TppLabel;
    ChkAsociado: TCheckBox;
    ppDBText2: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    BitMostrar: TBitBtn;
    rdbOfDes: TRadioButton;
    rdbForPag: TRadioButton;
    rdbEncuestados: TRadioButton;
    rdbVencidos: TRadioButton;
    chkIncTel: TCheckBox;
    ChkExpExc: TCheckBox;
    BitCatRie: TBitBtn;
    BitCatExc: TBitBtn;
    RepCatRiesgo: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppSystemVariable92: TppSystemVariable;
    ppSystemVariable93: TppSystemVariable;
    ppSystemVariable94: TppSystemVariable;
    TitCat: TppLabel;
    ppLabel204: TppLabel;
    ppLabel854: TppLabel;
    ppLabel856: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText375: TppDBText;
    ppFooterBand8: TppFooterBand;
    ppSummaryBand11: TppSummaryBand;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLabel201: TppLabel;
    ppLabel206: TppLabel;
    ppDBCalc125: TppDBCalc;
    ppDBCalc286: TppDBCalc;
    ppGroup22: TppGroup;
    ppGroupHeaderBand22: TppGroupHeaderBand;
    ppDBText131: TppDBText;
    ppLabel195: TppLabel;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppGroupFooterBand22: TppGroupFooterBand;
    ppLabel203: TppLabel;
    ppLabel205: TppLabel;
    ppLine56: TppLine;
    ppDBCalc124: TppDBCalc;
    ppDBCalc123: TppDBCalc;
    DbRepCatRiesgo: TppDBPipeline;
    dtgDatos: TDBGrid;
    ppLine3: TppLine;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rdbOfDesClick(Sender: TObject);
    procedure rdbForPagClick(Sender: TObject);
    procedure dtgResGesDblClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
    procedure rdbEncuestadosClick(Sender: TObject);
    procedure BitExpDetClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure ChkExpExcClick(Sender: TObject);
    procedure BitCatRieClick(Sender: TObject);
    procedure BitCatExcClick(Sender: TObject);
    procedure rdbVencidosClick(Sender: TObject);
  private
    { Private declarations }
    procedure limpiagrids;
  public
    { Public declarations }
  end;

var
  fRepResGest: TfRepResGest;

implementation

uses COBDM1, COB941;

{$R *.dfm}

procedure TfRepResGest.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfRepResGest.BitMostrarClick(Sender: TObject);
var xSQL,xfFin,xTel:String;
    xCount,xTotAsoId:Integer;
    xCremtoCob:Currency;
begin
Screen.Cursor := crHourglass;
If chkIncTel.Checked Then xTel:=' AND FORPAGID NOT IN (''18'') ' Else xTel:='';
If rdbOfDes.Checked Then
   Begin
      xSQL:='SELECT OFDESID,OFDESNOM,COUNT(*) MOVIMIENTOS,SUM(CREMTOCOB) CREMTOCOB FROM (SELECT FORPAGID,NVL(B.FORPAGODES,''POR IDENTIFICAR'') FORPAGOABR,ASOID,CREFPAG,CREDOCPAG,A.USUARIO, '+
            'NVL(C.OFDESID,''00'') OFDESID,NVL(D.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '+
            'FROM CRE310 A,COB101 B,TGE006 C,APO110 D  WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
            'AND CREESTID NOT IN (''13'',''99'',''04'') AND A.FORPAGID=B.FORPAGOID(+) AND A.USUARIO=C.USERID(+) AND C.OFDESID=D.OFDESID(+) '+xTel+' '+
            'GROUP BY FORPAGID,NVL(B.FORPAGODES,''POR IDENTIFICAR''),ASOID,CREFPAG,CREDOCPAG,A.USUARIO, NVL(C.OFDESID,''00'') ,NVL(D.OFDESNOM,''POR IDENTIFICAR'') ) GROUP BY OFDESID,OFDESNOM ';
      BitExpDet.Visible:=False; ChkAsociado.Visible:=False;
      ChkExpExc.Visible:=False; BitCatRie.Visible:=False; BitCatExc.Visible:=False;
   End
Else If rdbForPag.Checked Then
   Begin
      xSQL:='SELECT FORPAGID OFDESID,FORPAGODES OFDESNOM,COUNT(*) MOVIMIENTOS,SUM(CREMTOCOB) CREMTOCOB FROM (SELECT FORPAGID,NVL(B.FORPAGODES,''POR IDENTIFICAR'') FORPAGODES,ASOID,CREFPAG,CREDOCPAG,A.USUARIO, '+
             'NVL(C.OFDESID,''00'') OFDESID,NVL(D.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM CRE310 A,COB101 B,TGE006 C,APO110 D '+
             'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
             'AND CREESTID NOT IN (''13'',''99'',''04'') AND A.FORPAGID=B.FORPAGOID(+) AND A.USUARIO=C.USERID(+) AND C.OFDESID=D.OFDESID(+) '+xTel+' GROUP BY FORPAGID,NVL(B.FORPAGODES,''POR IDENTIFICAR'') ,ASOID,CREFPAG,CREDOCPAG,A.USUARIO, '+
             'NVL(C.OFDESID,''00'') ,NVL(D.OFDESNOM,''POR IDENTIFICAR'') ) GROUP BY FORPAGID,FORPAGODES ';
      BitExpDet.Visible:=False; ChkAsociado.Visible:=False;
      ChkExpExc.Visible:=False; BitCatRie.Visible:=False; BitCatExc.Visible:=False;
   End
Else If rdbEncuestados.Checked Then
   Begin
       xSQL:='SELECT OFDESID,OFDESNOM,MOVIMIENTOS,CREMTOCOB,TOTASOID FROM (SELECT OFDESID,OFDESNOM,SUM(REGISTROS) MOVIMIENTOS,SUM(CREMTOCOB) CREMTOCOB,NVL(TOTASOID,0) TOTASOID FROM (SELECT C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES,1 REGISTROS,G.TOTASOID, '+
             'SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM  CRE310 A,COB101 B,COB907 C,APO110 D,(SELECT OFDESID,SUM(TOTASOID) TOTASOID FROM (SELECT C.OFDESID,D.OFDESNOM,A.ASOID,1 TOTASOID, '+
             'SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM CRE310 A,COB101 B,COB907 C,APO110 D '+
             'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
             'AND A.FORPAGID=B.FORPAGOID(+) AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=C.ASOID AND C.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
             'AND C.OFDESID IS NOT NULL AND C.OFDESID=D.OFDESID(+)'+xTel+' GROUP BY C.OFDESID,D.OFDESNOM,A.ASOID ) GROUP BY OFDESID) G '+
             'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
             'AND A.FORPAGID=B.FORPAGOID(+) AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=C.ASOID AND C.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
             'AND C.OFDESID IS NOT NULL AND C.OFDESID=D.OFDESID(+) AND D.OFDESID=G.OFDESID(+) GROUP BY C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES,G.TOTASOID) GROUP BY OFDESID,OFDESNOM,TOTASOID )';

      BitExpDet.Visible:=True; ChkAsociado.Visible:=True;
      ChkExpExc.Visible:=False; BitCatRie.Visible:=False; BitCatExc.Visible:=False;
   End
Else If rdbVencidos.Checked Then
   Begin
       xSQL:='SELECT MAX(PERIODO) PERIODO FROM CFC000';
       DM1.cdsQry3.Close;  DM1.cdsQry3.DataRequest(xSQL); DM1.cdsQry3.Open;
       xfFin:=DateToStr(DtpFecFin.Date);
       DM1.cdsQry3.Close;
       xSQL:='SELECT A.OFDESID,OFDESNOM,CREMTOCOB,REGISTROS MOVIMIENTOS,B.TOTASOID TOTASOID FROM (SELECT OFDESID,OFDESNOM,SUM(CREMTOCOB) CREMTOCOB,SUM(REGISTROS) REGISTROS FROM '+
             '( SELECT OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID,CREFPAG,CREDOCPAG,USUARIO,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,1 REGISTROS FROM '+
             '(SELECT NVL(A.OFDESID,''00'') OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,A.FORPAGID,NVL(C.FORPAGODES,''POR IDENTIFICAR'') FORPAGODES,  '+
             'A.ASOID,A.CREDID,A.CRECUOTA,A.ASOAPENOM, A.CREFPAG,A.CREDOCPAG,A.CREMTOCOB,A.USUARIO '+
             'FROM CRE310 A,APO110 B,COB101 C  WHERE A.CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
             'AND A.CREESTID NOT IN (''04'',''13'',''99'') AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE '+
             'A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(xfFin)+') '+
             'AND A.OFDESID=B.OFDESID(+) AND A.FORPAGID=C.FORPAGOID(+) '+xTel+') GROUP BY OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID,CREFPAG,CREDOCPAG,USUARIO '+
             ') GROUP BY OFDESID,OFDESNOM ) A, (SELECT OFDESID,COUNT(*) TOTASOID FROM ( SELECT NVL(OFDESID,''00'') OFDESID,ASOID FROM CRE310 A WHERE '+
             'CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
             'AND CREESTID NOT IN (''04'',''13'',''99'') AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(xfFin)+') '+
             'GROUP BY OFDESID,ASOID ) GROUP BY OFDESID )  B  WHERE A.OFDESID=B.OFDESID(+) ';
             BitExpDet.Visible:=True; ChkAsociado.Visible:=True;  ChkExpExc.Visible:=True; BitCatRie.Visible:=True;

   End;
DM1.cdsDetRegCob.Close;
DM1.cdsDetRegCob.DataRequest(xSQL);
DM1.cdsDetRegCob.Open;
TNumericField(DM1.cdsDetRegCob.FieldByName('MOVIMIENTOS')).DisplayFormat:='###,###,###';
If rdbEncuestados.Checked Then
   TNumericField(DM1.cdsDetRegCob.FieldByName('TOTASOID')).DisplayFormat:='###,###,###';

If rdbVencidos.Checked Then
   TNumericField(DM1.cdsDetRegCob.FieldByName('TOTASOID')).DisplayFormat:='###,###,###';

TNumericField(DM1.cdsDetRegCob.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,###.#0';
DM1.cdsDetRegCob.First;  xCount:=0;  xCremtoCob:=0; xTotAsoId:=0;
While Not DM1.cdsDetRegCob.Eof Do
Begin
  xCount:=xCount + DM1.cdsDetRegCob.FieldByName('MOVIMIENTOS').AsInteger;
  If rdbEncuestados.Checked Then
      xTotAsoId:=xTotAsoId + DM1.cdsDetRegCob.FieldByName('TOTASOID').AsInteger;
  If rdbVencidos.Checked Then
      xTotAsoId:=xTotAsoId + DM1.cdsDetRegCob.FieldByName('TOTASOID').AsInteger;

  xCremtoCob:=xCremtoCob + DM1.cdsDetRegCob.FieldByName('CREMTOCOB').AsCurrency;
  DM1.cdsDetRegCob.Next;
End;
dtgResGes.ColumnByName('OFDESNOM').FooterValue :='Totales : ';
dtgResGes.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtoCob,ffNumber, 15, 2);
If rdbEncuestados.Checked Then
   dtgResGes.ColumnByName('TOTASOID').FooterValue := FloatToStrF(xTotAsoId,ffNumber, 10, 0);
If rdbVencidos.Checked Then
   dtgResGes.ColumnByName('TOTASOID').FooterValue := FloatToStrF(xTotAsoId,ffNumber, 10, 0);

dtgResGes.ColumnByName('MOVIMIENTOS').FooterValue := FloatToStrF(xCount,ffNumber, 10, 0);
Screen.Cursor := crDefault;

end;

procedure TfRepResGest.FormActivate(Sender: TObject);
begin
    limpiagrids;     DtpFecIni.Date := DM1.FechaSys;   DtpFecFin.Date := DM1.FechaSys;  lblDescrip.Caption:=rdbOfDes.Caption;
end;

procedure TfRepResGest.limpiagrids;
var xSQL:String;
begin
xSQL:='SELECT OFDESID,OFDESNOM,COUNT(*) MOVIMIENTOS,SUM(CREMTOCOB) CREMTOCOB FROM (SELECT FORPAGID,NVL(B.FORPAGODES,''POR IDENTIFICAR'') FORPAGOABR,ASOID,CREFPAG,CREDOCPAG,A.USUARIO, '+
      'NVL(C.OFDESID,''00'') OFDESID,NVL(D.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '+
      'FROM CRE310 A,COB101 B,TGE006 C,APO110 D  WHERE ASOID=''!@##$%^&^&&*'' AND CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
      'AND CREESTID NOT IN (''13'',''99'') AND A.FORPAGID=B.FORPAGOID(+) AND A.USUARIO=C.USERID(+) AND C.OFDESID=D.OFDESID(+) '+
      'GROUP BY FORPAGID,NVL(B.FORPAGODES,''POR IDENTIFICAR''),ASOID ,CREFPAG,CREDOCPAG,A.USUARIO, NVL(C.OFDESID,''00'') ,NVL(D.OFDESNOM,''POR IDENTIFICAR'') ) GROUP BY OFDESID,OFDESNOM ';
      DM1.cdsDetRegCob.Close;
      DM1.cdsDetRegCob.DataRequest(xSQL);
      DM1.cdsDetRegCob.Open;
      TNumericField(DM1.cdsDetRegCob.FieldByName('MOVIMIENTOS')).DisplayFormat:='###,###,###';
      TNumericField(DM1.cdsDetRegCob.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,###.#0';
      dtgResGes.ColumnByName('OFDESNOM').FooterValue :='Totales : ';
      dtgResGes.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(0,ffNumber, 15, 2);
      dtgResGes.ColumnByName('MOVIMIENTOS').FooterValue := FloatToStrF(0,ffNumber, 10, 0);     
end;

procedure TfRepResGest.rdbOfDesClick(Sender: TObject);
begin
    ChkExpExc.Visible:=False; BitCatRie.Visible:=False; BitCatExc.Visible:=False;
    limpiagrids; BitExpDet.Visible:=False; BitPrint.Visible:=False; ChkAsociado.Visible:=False;
    lblDescrip.Caption:=rdbOfDes.Caption;
end;

procedure TfRepResGest.rdbForPagClick(Sender: TObject);
begin
   ChkExpExc.Visible:=False; BitCatRie.Visible:=False; BitCatExc.Visible:=False;
   limpiagrids; BitExpDet.Visible:=False; BitPrint.Visible:=False;   ChkAsociado.Visible:=False;
   lblDescrip.Caption:=rdbForPag.Caption;
end;

procedure TfRepResGest.dtgResGesDblClick(Sender: TObject);
var xSQL,xfFin:String;
    xCount:Integer;
    xCremtoCob:Currency;
begin
  Try
    fRepRes01Gest := TfRepRes01Gest.create(Self);
    Screen.Cursor := crHourGlass;
    If rdbOfDes.Checked Then
       Begin
          xSQL:='SELECT USEID OFDESID,USENOM OFDESNOM,SUM(CREMTOCOB) CREMTOCOB,COUNT(*) MOVIMIENTOS FROM (SELECT NVL(A.USEID,''00'') USEID,NVL(E.USENOM,''POR IDENTIFICAR'') USENOM,ASOID,CREFPAG,CREDOCPAG,A.USUARIO,C.OFDESID, '+
                'SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM CRE310 A,COB101 B,TGE006 C,APO110 D,APO101 E WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                'AND  A.UPROID=E.UPROID(+) AND  A.UPAGOID=E.UPAGOID(+)  AND A.USEID=E.USEID(+) AND CREESTID NOT IN (''13'',''99'') AND A.FORPAGID=B.FORPAGOID(+) AND A.USUARIO=C.USERID(+) AND C.OFDESID=D.OFDESID(+) '+
                'AND C.OFDESID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('OFDESID').AsString)+' GROUP BY A.USEID,E.USENOM,ASOID,CREFPAG,CREDOCPAG,A.USUARIO,C.OFDESID) GROUP BY USEID,USENOM ';
          fRepRes01Gest.lblDescrip.Caption:=DM1.cdsDetRegCob.FieldByName('OFDESID').AsString+'-'+DM1.cdsDetRegCob.FieldByName('OFDESNOM').AsString;
          fRepRes01Gest.lblDescripc.Caption:='Del : '+DateToStr(DtpFecIni.Date)+' Al '+DateToStr(DtpFecFin.Date) ;
       End
    Else If rdbForPag.Checked Then
       Begin
          xSQL:='SELECT OFDESID,OFDESNOM,COUNT(*) MOVIMIENTOS,SUM(CREMTOCOB) CREMTOCOB FROM (SELECT ASOID,FORPAGID,NVL(B.FORPAGODES,''POR IDENTIFICAR'') FORPAGODES,CREFPAG,CREDOCPAG,A.USUARIO, '+
                'NVL(C.OFDESID,''00'') OFDESID,NVL(D.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '+
                'FROM CRE310 A,COB101 B,TGE006 C,APO110 D,APO101 E '+
                'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                'AND A.UPROID=E.UPROID(+) AND  A.UPAGOID=E.UPAGOID(+)  AND A.USEID=E.USEID(+) '+
                'AND CREESTID NOT IN (''13'',''99'') AND A.FORPAGID=B.FORPAGOID(+) AND A.USUARIO=C.USERID(+) AND C.OFDESID=D.OFDESID(+) AND A.FORPAGID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('OFDESID').AsString)+' '+
                'GROUP BY ASOID,FORPAGID,NVL(B.FORPAGODES,''POR IDENTIFICAR'') ,CREFPAG,CREDOCPAG,A.USUARIO, '+
                'NVL(C.OFDESID,''00'') ,NVL(D.OFDESNOM,''POR IDENTIFICAR'') ) GROUP BY OFDESID,OFDESNOM ';
          fRepRes01Gest.lblDescrip.Caption:=DM1.cdsDetRegCob.FieldByName('OFDESID').AsString+'-'+DM1.cdsDetRegCob.FieldByName('OFDESNOM').AsString;
          fRepRes01Gest.lblDescripc.Caption:='Del : '+DateToStr(DtpFecIni.Date)+' Al '+DateToStr(DtpFecFin.Date) ;
       End
    Else If rdbEncuestados.Checked Then
       Begin
          xSQL:='SELECT FORPAGID OFDESID,FORPAGODES OFDESNOM,SUM(REGISTROS) MOVIMIENTOS,SUM(CREMTOCOB) CREMTOCOB FROM '+
                '(SELECT C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES,1 REGISTROS,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '+
                'FROM CRE310 A,COB101 B,COB907 C,APO110 D WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                'AND A.FORPAGID=B.FORPAGOID(+) AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=C.ASOID AND C.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                'AND C.OFDESID IS NOT NULL AND C.OFDESID=D.OFDESID(+) AND C.OFDESID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('OFDESID').AsString)+' GROUP BY C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES) GROUP BY FORPAGID,FORPAGODES ';
          fRepRes01Gest.lblDescrip.Caption:=DM1.cdsDetRegCob.FieldByName('OFDESID').AsString+'-'+DM1.cdsDetRegCob.FieldByName('OFDESNOM').AsString;
          fRepRes01Gest.lblDescripc.Caption:='Del : '+DateToStr(DtpFecIni.Date)+' Al '+DateToStr(DtpFecFin.Date) ;
       End
    Else
       Begin
           xSQL:='SELECT MAX(PERIODO) PERIODO FROM CFC000';
           DM1.cdsQry3.Close;  DM1.cdsQry3.DataRequest(xSQL); DM1.cdsQry3.Open;
           //xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2))),StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2)))])+'/'+Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4));
           xfFin:=DateToStr(DtpFecFin.Date);
           DM1.cdsQry3.Close;
           xSQL:='SELECT FORPAGID OFDESID, FORPAGODES OFDESNOM,SUM(CREMTOCOB) CREMTOCOB,SUM(REGISTROS) MOVIMIENTOS FROM '+
                 '(  '+
                 'SELECT OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID,CREFPAG,CREDOCPAG,USUARIO,SUM(NVL(CREMTOCOB,0))  '+
                 'CREMTOCOB,1 REGISTROS FROM (SELECT A.OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,A.FORPAGID,  '+
                 'NVL(C.FORPAGODES,''POR IDENTIFICAR'') FORPAGODES, A.ASOID,A.CREDID,A.CRECUOTA,A.ASOAPENOM, '+
                 'A.CREFPAG,A.CREDOCPAG,A.CREMTOCOB,A.USUARIO '+
                 'FROM CRE310 A,APO110 B,COB101 C  WHERE A.CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                 'AND A.CREESTID NOT IN (''04'',''13'',''99'') AND A.OFDESID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('OFDESID').AsString)+' '+
                 'AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(xfFin)+') '+
                 'AND A.OFDESID=B.OFDESID(+) AND A.FORPAGID=C.FORPAGOID(+)  '+
                 ')   '+
                 'GROUP BY OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID,CREFPAG,CREDOCPAG,USUARIO  '+
                 ') GROUP BY FORPAGID,FORPAGODES';
          fRepRes01Gest.lblDescrip.Caption:=DM1.cdsDetRegCob.FieldByName('OFDESID').AsString+'-'+DM1.cdsDetRegCob.FieldByName('OFDESNOM').AsString;
          fRepRes01Gest.lblDescripc.Caption:='Del : '+DateToStr(DtpFecIni.Date)+' Al '+DateToStr(DtpFecFin.Date) ;

       End;

    DM1.cdsDetRegCob1.Close;
    DM1.cdsDetRegCob1.DataRequest(xSQL);
    DM1.cdsDetRegCob1.Open;
    TNumericField(DM1.cdsDetRegCob1.FieldByName('MOVIMIENTOS')).DisplayFormat:='###,###,###';
    TNumericField(DM1.cdsDetRegCob1.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,###.#0';
    Screen.Cursor := crDefault;
    fRepRes01Gest.ShowModal;
  Finally
    fRepRes01Gest.Free;
  end;

end;

procedure TfRepResGest.BitExportaClick(Sender: TObject);
begin
  If dtgResGes.DataSource.DataSet.RecordCount=0 Then Exit;
	Screen.Cursor:= crHourGlass;
	try
  DM1.HojaExcel(Trim(lblDescrip.Caption)+'-Resumen',DM1.dsDetRegCob, dtgData);
	except
		on Ex: Exception do
			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	end;
	Screen.Cursor:= crDefault;

end;

procedure TfRepResGest.rdbEncuestadosClick(Sender: TObject);
begin
   ChkExpExc.Visible:=False; BitCatRie.Visible:=False; BitCatExc.Visible:=False;
   limpiagrids; BitPrint.Visible:=True;
   lblDescrip.Caption:=rdbEncuestados.Caption;
end;

procedure TfRepResGest.BitExpDetClick(Sender: TObject);
var xSQL,xfFin,xTel:String;
begin
If dtgResGes.DataSource.DataSet.RecordCount=0 Then Exit;
   Screen.Cursor:= crHourGlass;
If chkIncTel.Checked Then xTel:=' AND FORPAGID NOT IN (''18'') ' Else xTel:='';
If chkAsociado.Checked Then
   Begin
     If rdbEncuestados.Checked Then
        Begin
           xSQL:='SELECT C.OFDESID,D.OFDESNOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,FORPAGID,B.FORPAGODES,A.CREFPAG,A.CREDOCPAG,COUNT(*) CUOCOB, '+
                 'SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM CRE310 A,COB101 B,COB907 C,APO110 D WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                 'AND A.FORPAGID=B.FORPAGOID(+) AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=C.ASOID AND C.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                 'AND C.OFDESID IS NOT NULL AND C.OFDESID=D.OFDESID(+) '+xTel+' GROUP BY C.OFDESID,D.OFDESNOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,FORPAGID,A.CREFPAG,A.CREDOCPAG,B.FORPAGODES ORDER BY C.OFDESID,D.OFDESNOM,FORPAGID,CREFPAG,CREDOCPAG ';
        End;

     If rdbVencidos.Checked Then
        Begin
          xSQL:='SELECT MAX(PERIODO) PERIODO FROM CFC000';
          DM1.cdsQry3.Close;  DM1.cdsQry3.DataRequest(xSQL); DM1.cdsQry3.Open;
          //xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2))),StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2)))])+'/'+Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4));
          xfFin:=DateToStr(DtpFecFin.Date);
          DM1.cdsQry3.Close;
           xSQL:='SELECT NVL(A.OFDESID,''0'') OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, NVL(A.FORPAGID,''00'') FORPAGID,NVL(C.FORPAGODES,''POR IDENTIFICAR'') FORPAGODES,  A.ASOID,A.ASOCODMOD,A.ASOAPENOM, '+
                 'A.CREFPAG,A.CREDOCPAG,SUM(NVL(A.CREMTOCOB,0)) CREMTOCOB,COUNT(*) CUOCOB FROM CRE310 A,APO110 B,COB101 C  WHERE A.CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                 'AND A.CREESTID NOT IN (''04'',''13'',''99'') AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(xfFin)+') '+
                 'AND A.OFDESID=B.OFDESID(+) AND A.FORPAGID=C.FORPAGOID(+) '+xTel+'GROUP BY A.OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR''), A.FORPAGID,NVL(C.FORPAGODES,''POR IDENTIFICAR''),  A.ASOID,A.ASOCODMOD,A.ASOAPENOM, A.CREFPAG,A.CREDOCPAG '+
                 ' ORDER BY A.OFDESID,OFDESNOM,FORPAGID,CREFPAG,CREDOCPAG ';

        End;
   End
Else
   Begin
     If rdbEncuestados.Checked Then
        Begin
          xSQL:='SELECT OFDESID,OFDESNOM,FORPAGID,FORPAGODES,SUM(REGISTROS) REGISTROS,SUM(CREMTOCOB) CREMTOCOB '+
                'FROM (SELECT C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES,1 REGISTROS,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '+
                'FROM CRE310 A,COB101 B,COB907 C,APO110 D WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                'AND A.FORPAGID=B.FORPAGOID(+) AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=C.ASOID '+
                'AND C.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                'AND C.OFDESID IS NOT NULL AND C.OFDESID=D.OFDESID(+) '+xTel+' GROUP BY C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES) GROUP BY OFDESID,OFDESNOM,FORPAGID,FORPAGODES ';
        End;

     If rdbVencidos.Checked Then
        Begin
          xSQL:='SELECT MAX(PERIODO) PERIODO FROM CFC000';
          DM1.cdsQry3.Close;  DM1.cdsQry3.DataRequest(xSQL); DM1.cdsQry3.Open;
        //  xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2))),StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2)))])+'/'+Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4));
          xfFin:=DateToStr(DtpFecFin.Date);
          DM1.cdsQry3.Close;
          xSQL:='SELECT OFDESID,OFDESNOM,FORPAGID,FORPAGODES,SUM(REGISTROS) REGISTROS,SUM(CREMTOCOB) CREMTOCOB  FROM '+
                '(SELECT OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID, CREFPAG,CREDOCPAG,USUARIO,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,1 REGISTROS '+
                'FROM (SELECT NVL(A.OFDESID,''00'') OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM, A.FORPAGID,NVL(C.FORPAGODES,''POR IDENTIFICAR'') FORPAGODES,  A.ASOID, '+
                'A.CREDID,A.CRECUOTA,A.ASOAPENOM, A.CREFPAG,A.CREDOCPAG,A.CREMTOCOB,A.USUARIO FROM CRE310 A,APO110 B,COB101 C  WHERE A.CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                'AND A.CREESTID NOT IN (''04'',''13'',''99'') AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(xfFin)+') '+
                'AND A.OFDESID=B.OFDESID(+) AND A.FORPAGID=C.FORPAGOID(+) '+xTel+')  '+
                'GROUP BY OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID,CREFPAG,CREDOCPAG,USUARIO) '+
                'GROUP BY OFDESID,OFDESNOM,FORPAGID,FORPAGODES ';

        End;

   End;
DM1.cdsOfDes.Close;
DM1.cdsOfDes.DataRequest(xSQL);
DM1.cdsOfDes.Open;
If DM1.cdsOfDes.RecordCount > 0 Then
   Begin
    	Screen.Cursor:= crHourGlass;
      try
        DM1.HojaExcel(Trim(lblDescrip.Caption)+'-General',DM1.dsOfDes, dtgDato);
    	except
	  	on Ex: Exception do
		  	Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
    	end;
    	Screen.Cursor:= crDefault;
   End;
   DM1.cdsOfDes.Close;
 Screen.Cursor:= crDefault;

end;

procedure TfRepResGest.BitPrintClick(Sender: TObject);
var xSQL,xfFin,xTel:String;
begin
  Screen.Cursor:= crHourGlass;
  If chkIncTel.Checked Then xTel:=' AND FORPAGID NOT IN (''18'') ' Else xTel:='';
  If rdbEncuestados.Checked Then
     Begin
         xSQL:='SELECT OFDESID,OFDESNOM,SUM(REGISTROS) MOVIMIENTOS,SUM(CREMTOCOB) CREMTOCOB,TOTASOID FROM (SELECT C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES,1 REGISTROS,G.TOTASOID, '+
               'SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM  CRE310 A,COB101 B,COB907 C,APO110 D,(SELECT OFDESID,SUM(TOTASOID) TOTASOID FROM (SELECT C.OFDESID,D.OFDESNOM,A.ASOID,1 TOTASOID, '+
               'SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM CRE310 A,COB101 B,COB907 C,APO110 D '+
               'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
               'AND A.FORPAGID=B.FORPAGOID(+) AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=C.ASOID AND C.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
               'AND C.OFDESID IS NOT NULL AND C.OFDESID=D.OFDESID(+) GROUP BY C.OFDESID,D.OFDESNOM,A.ASOID ) GROUP BY OFDESID) G '+
               'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
               'AND A.FORPAGID=B.FORPAGOID(+) AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=C.ASOID AND C.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
               'AND C.OFDESID IS NOT NULL AND C.OFDESID=D.OFDESID(+) AND D.OFDESID=G.OFDESID(+) '+xTel+' GROUP BY C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES,G.TOTASOID) GROUP BY OFDESID,OFDESNOM,TOTASOID ';
     End;
  If rdbVencidos.Checked Then
     Begin
       xSQL:='SELECT MAX(PERIODO) PERIODO FROM CFC000';
       DM1.cdsQry3.Close;  DM1.cdsQry3.DataRequest(xSQL); DM1.cdsQry3.Open;
       //xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2))),StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2)))])+'/'+Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4));
       xfFin:=DateToStr(DtpFecFin.Date);
       DM1.cdsQry3.Close;

       xSQL:='SELECT A.OFDESID,OFDESNOM,CREMTOCOB,REGISTROS MOVIMIENTOS,B.TOTASOID TOTASOID FROM (SELECT OFDESID,OFDESNOM,SUM(CREMTOCOB) CREMTOCOB,SUM(REGISTROS) REGISTROS FROM '+
             '( SELECT OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID,CREFPAG,CREDOCPAG,USUARIO,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,1 REGISTROS FROM '+
             '(SELECT NVL(A.OFDESID,''00'') OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,A.FORPAGID,NVL(C.FORPAGODES,''POR IDENTIFICAR'') FORPAGODES,  '+
             'A.ASOID,A.CREDID,A.CRECUOTA,A.ASOAPENOM, A.CREFPAG,A.CREDOCPAG,A.CREMTOCOB,A.USUARIO '+
             'FROM CRE310 A,APO110 B,COB101 C  WHERE A.CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
             'AND A.CREESTID NOT IN (''04'',''13'',''99'') AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE '+
             'A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(xfFin)+') '+
             'AND A.OFDESID=B.OFDESID(+) AND A.FORPAGID=C.FORPAGOID(+) '+xTel+' ) GROUP BY OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID,CREFPAG,CREDOCPAG,USUARIO '+
             ') GROUP BY OFDESID,OFDESNOM ) A, (SELECT OFDESID,COUNT(*) TOTASOID FROM ( SELECT NVL(OFDESID,''00'') OFDESID,ASOID FROM CRE310 A WHERE '+
             'CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
             'AND CREESTID NOT IN (''04'',''13'',''99'') AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(xfFin)+') '+
             'GROUP BY OFDESID,ASOID ) GROUP BY OFDESID )  B  WHERE A.OFDESID=B.OFDESID(+) ';
     End;


  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSQL);
  DM1.cdsQry1.Open;
  If DM1.cdsQry1.RecordCount > 0 Then
     Begin
        If rdbEncuestados.Checked Then
           Begin
               xSQL:='SELECT FORPAGID,FORPAGODES,SUM(REGISTROS) MOVIMIENTOS,SUM(CREMTOCOB) CREMTOCOB FROM (SELECT C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES,1 REGISTROS,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '+
                     'FROM CRE310 A,COB101 B,COB907 C,APO110 D WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                     'AND A.FORPAGID=B.FORPAGOID(+) AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=C.ASOID AND C.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                     'AND C.OFDESID IS NOT NULL AND C.OFDESID=D.OFDESID(+) '+xTel+' GROUP BY C.OFDESID,D.OFDESNOM,A.ASOID,FORPAGID,B.FORPAGODES) GROUP BY FORPAGID,FORPAGODES ';
                     Titulo.Caption:='ESTADISTICA DE RECUPERACION DE ENCUESTADOS A NIVEL NACIONAL DEL : '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date) ;
           End;
        If rdbVencidos.Checked Then
           Begin
             xSQL:='SELECT MAX(PERIODO) PERIODO FROM CFC000';
             DM1.cdsQry3.Close;  DM1.cdsQry3.DataRequest(xSQL); DM1.cdsQry3.Open;
             //xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2))),StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,5,2)))])+'/'+Trim(Copy(DM1.cdsQry3.FieldByName('PERIODO').AsString,1,4));
             xfFin:=DateToStr(DtpFecFin.Date);
             DM1.cdsQry3.Close;

             xSQL:=' SELECT FORPAGID,FORPAGODES,SUM(CREMTOCOB) CREMTOCOB,SUM(REGISTROS) MOVIMIENTOS FROM '+
                   '( SELECT OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID,CREFPAG,CREDOCPAG,USUARIO,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,1 REGISTROS FROM '+
                   '(SELECT NVL(A.OFDESID,''00'') OFDESID,NVL(B.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,A.FORPAGID,NVL(C.FORPAGODES,''POR IDENTIFICAR'') FORPAGODES,  '+
                   'A.ASOID,A.CREDID,A.CRECUOTA,A.ASOAPENOM, A.CREFPAG,A.CREDOCPAG,A.CREMTOCOB,A.USUARIO '+
                   'FROM CRE310 A,APO110 B,COB101 C  WHERE A.CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
                   'AND A.CREESTID NOT IN (''04'',''13'',''99'') AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE '+
                   'A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(xfFin)+') '+
                   'AND A.OFDESID=B.OFDESID(+) AND A.FORPAGID=C.FORPAGOID(+) '+xTel+') GROUP BY OFDESID,OFDESNOM,FORPAGID,FORPAGODES,ASOID,CREFPAG,CREDOCPAG,USUARIO '+
                   ') GROUP BY FORPAGID,FORPAGODES ';
                   Titulo.Caption:='ESTADISTICA DE RECUPERACION DE CUOTAS VENCIDAS A NIVEL NACIONAL DEL : '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date) ;
           End;

         DM1.cdsQry2.Close;
         DM1.cdsQry2.DataRequest(xSQL);
         DM1.cdsQry2.Open;
         If DM1.cdsQry2.RecordCount > 0 Then
            Begin
                 ppRepCon.Print;
                 ppRepCon.Cancel;

            End;
            DM1.cdsQry2.Close;
     End;
     DM1.cdsQry1.Close;
     Screen.Cursor:= crDefault;
end;

procedure TfRepResGest.ChkExpExcClick(Sender: TObject);
begin
  If ChkExpExc.Checked Then
     Begin BitCatExc.Visible:=True; BitCatRie.Visible:=False;  End  Else
     Begin BitCatExc.Visible:=False; BitCatRie.Visible:=True; End;
end;

procedure TfRepResGest.BitCatRieClick(Sender: TObject);
var xSQL,xPeriodo,xTel:String;
begin
    xPeriodo:=Copy(DateToStr(DtpFecFin.Date),7,4)+Copy(DateToStr(DtpFecFin.Date),4,2);
    If chkIncTel.Checked Then xTel:=' AND FORPAGID NOT IN (''18'') ' Else xTel:='';
    Screen.Cursor:=crHourGlass;
    xSQL:='SELECT CFC_F,CFCDES_F,FORPAGODES,CREMTOCOB,NUMMOV FROM ( SELECT A.ASOID,B.CFC_F,B.CFCDES_F,SUM(CREMTOCOB) CREMTOCOB,FORPAGID,C.FORPAGODES,SUM(NUMMOV) '+
          'NUMMOV FROM (SELECT ASOID,CREMTOCOB,FORPAGID,1 NUMMOV FROM CRE310 A WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' AND A.CREESTID NOT IN (''04'',''13'',''99'') '+
          'AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(DateToStr(DtpFecFin.Date))+') ) A, '+
          'CFC000 B, COB101 C WHERE A.ASOID=B.ASOID(+) AND B.PERIODO='+QuotedStr(xPeriodo)+' AND A.FORPAGID=C.FORPAGOID(+) AND B.CFC_F IN (''A'',''B'',''C'',''D'') '+xTel+' GROUP BY CFC_F,CFCDES_F,FORPAGODES) ORDER BY CFC_F,FORPAGODES';
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSQL);
    DM1.cdsQry5.Open;
    Screen.Cursor:=crDefault;
    If DM1.cdsQry5.RecordCount > 0 Then
       Begin
          TitCat.Caption:='RECUPERACION DE CUOTAS VENCIDAS POR CATEGORIA DE RIESGO DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
          RepCatRiesgo.Print;
          RepCatRiesgo.Cancel;
       End;
       DM1.cdsQry5.Close;
end;

procedure TfRepResGest.BitCatExcClick(Sender: TObject);
var xSQL,xPeriodo,xTel:String;
begin
    xPeriodo:=Copy(DateToStr(DtpFecFin.Date),7,4)+Copy(DateToStr(DtpFecFin.Date),4,2);
    If chkIncTel.Checked Then xTel:=' AND FORPAGID NOT IN (''18'') ' Else xTel:='';
    xSQL:='SELECT CFC_F,CFCDES_F,FORPAGODES,CREMTOCOB,NUMMOV FROM ( SELECT A.ASOID,B.CFC_F,B.CFCDES_F,SUM(CREMTOCOB) CREMTOCOB,FORPAGID,C.FORPAGODES,SUM(NUMMOV) '+
          'NUMMOV FROM (SELECT ASOID,CREMTOCOB,FORPAGID,1 NUMMOV FROM CRE310 A WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' AND A.CREESTID NOT IN (''04'',''13'',''99'') '+
          'AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE A.ASOID=ASOID(+) AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREFVEN<'+QuotedStr(DateToStr(DtpFecFin.Date))+') ) A, '+
          'CFC000 B, COB101 C WHERE A.ASOID=B.ASOID(+) AND B.PERIODO='+QuotedStr(xPeriodo)+' AND A.FORPAGID=C.FORPAGOID(+) AND B.CFC_F IN (''A'',''B'',''C'',''D'') '+xTel+'  GROUP BY CFC_F,CFCDES_F,FORPAGODES) ORDER BY CFC_F,FORPAGODES';
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSQL);
    DM1.cdsQry5.Open;
    If DM1.cdsQry5.RecordCount > 0 Then
       Begin
          Screen.Cursor:= crHourGlass;
          try
            DM1.HojaExcel('Por_Cat_Riesgo',DM1.dsQry5, dtgDatos);
          except
          on Ex: Exception do
            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
          end;
          Screen.Cursor:= crDefault;
       End;
       DM1.cdsQry5.Close;

end;

procedure TfRepResGest.rdbVencidosClick(Sender: TObject);
begin
   ChkExpExc.Visible:=False; BitCatRie.Visible:=False; BitCatExc.Visible:=False;
   limpiagrids; BitPrint.Visible:=True; ChkExpExc.Visible:=True; BitCatRie.Visible:=True;
   lblDescrip.Caption:=rdbVencidos.Caption;

end;

end.
