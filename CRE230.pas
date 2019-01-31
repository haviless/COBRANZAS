unit CRE230;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, wwdbedit,wwClient,wwdatsrc,db,
  DBCtrls, Wwdotdot, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn;

type
  TFDetHistorial = class(TForm)
    dbgDetHistorial: TwwDBGrid;
    dbeCredid: TwwDBEdit;
    dbeFOtorg: TwwDBEdit;
    dbeMtoSol: TwwDBEdit;
    dbeInte: TwwDBEdit;
    dbeFlat: TwwDBEdit;
    dbeMtoCuo: TwwDBEdit;
    dbeNumCuo: TwwDBEdit;
    dbeIniPag: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbeFinpag: TwwDBEdit;
    Label10: TLabel;
    dbeNroFicio: TwwDBEdit;
    lblTitulo: TLabel;
    lblMtoAPagar: TLabel;
    pnlDetPago: TPanel;
    dbgDetPago: TwwDBGrid;
    Z2sbtnSalir: TfcShapeBtn;
    stTitulo: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetHistorialCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgDetHistorialFieldChanged(Sender: TObject; Field: TField);
    procedure dbgDetHistorialDblClick(Sender: TObject);
    procedure Z2sbtnSalirClick(Sender: TObject);
  private
    { Private declarations }
    //** pjsv - variables de clients, se usa un par por cada ventana que se levante
    TempDataSet01,TempDataSet02,TempDataSet03,TempDataSet04,TempDataSet05,
    TempDataSet06,TempDataSet07,TempDataSet08,TempDataSet09,TempDataSet10,
    TempDataSet11,TempDataSet12,TempDataSet13,TempDataSet14,TempDataSet15,
    TempDataSet16,TempDataSet17,TempDataSet18,TempDataSet19,TempDataSet20 : TwwClientdataSet;
    //** pjsv - variables de datasource, se usa un par por cada ventana que se levante
    TempDataSource01,TempDataSource02,TempDataSource03,TempDataSource04,TempDataSource05,
    TempDataSource06,TempDataSource07,TempDataSource08,TempDataSource09,TempDataSource10,
    TempDataSource11,TempDataSource12,TempDataSource13,TempDataSource14,TempDataSource15,
    TempDataSource16,TempDataSource17,TempDataSource18,TempDataSource19,TempDataSource20 : TwwDataSource;
    //** 17/12/2002 - PJSV, para el detalle de pago (cre310)
    TempDataSet21,TempDataSet22,TempDataSet23,TempDataSet24,TempDataSet25,
    TempDataSet26,TempDataSet27,TempDataSet28,TempDataSet29,TempDataSet30 : TwwClientdataSet;
    TempDataSource21,TempDataSource22,TempDataSource23,TempDataSource24,TempDataSource25,
    TempDataSource26,TempDataSource27,TempDataSource28,TempDataSource29,TempDataSource30 : TwwDataSource;
    xEstado6,xEstid6,xEstado5,xEstid5,xEstado1,xEstid1,xEstado2,xEstid2,xEstado3,xEstid3,xEstado4,xEstid4 : String;

    procedure LimpiaClientDataset(cds : TwwClientDataset);        
  public
    { Public declarations }
    //** variables que se cargan en la ventana padre
    wAsoapenom,wCredid,wAsoid : String;
  end;


var
  FDetHistorial: TFDetHistorial;
  FDetHistorial01: TFDetHistorial;
  FDetHistorial02: TFDetHistorial;
  FDetHistorial03: TFDetHistorial;
  FDetHistorial04: TFDetHistorial;
  FDetHistorial05: TFDetHistorial;
  FDetHistorial06: TFDetHistorial;
  FDetHistorial07: TFDetHistorial;
  FDetHistorial08: TFDetHistorial;
  FDetHistorial09: TFDetHistorial;
  FDetHistorial10: TFDetHistorial;

implementation
uses COBDM1, CRE229,COB001;

{$R *.DFM}

procedure TFDetHistorial.FormClose(Sender: TObject; var Action: TCloseAction);
var
 xZ,xI : Integer;
 xNumero : String;
begin
   //** pjsv - cargo para c/u de las variables el total de su ventana
  xNumero :=  copy(Caption,Length(Caption),1);
//   case FHistorial.wVentanas of
   case StrToInt(xNumero) of
    1 : FHistorial.wTotal1 := 0.00;
    2 : FHistorial.wTotal2 := 0.00;
    3 : FHistorial.wTotal3 := 0.00;
    4 : FHistorial.wTotal4 := 0.00;
    5 : FHistorial.wTotal5 := 0.00;
    6 : FHistorial.wTotal6 := 0.00;
    7 : FHistorial.wTotal7 := 0.00;
    8 : FHistorial.wTotal8 := 0.00;
    9 : FHistorial.wTotal9 := 0.00;
    10 : FHistorial.wTotal10 := 0.00;
   end;
   //** pjsv - asigno el total de todas las ventanas abiertas
   FHistorial.lblTotal.caption := FloatToStrF(FHistorial.wTotal1+FHistorial.wTotal2+
                                              FHistorial.wTotal3+FHistorial.wTotal4+
                                              FHistorial.wTotal5+FHistorial.wTotal5+
                                              FHistorial.wTotal7+FHistorial.wTotal6+
                                              FHistorial.wTotal9+FHistorial.wTotal10
                                              ,ffFixed,15,2);

  //** pjsv - resta uno a la variable total de ventanas abiertas
  FHistorial.wVentanas := FHistorial.wVentanas -1;
  For xI := 1 to 10 do
   begin
    //** pjsv - limpia del arreglo el crédito que se cierra
    If FHistorial.wCreditos[xI] = dbeCredid.text then
     begin
      FHistorial.wCreditos[xI] := '';
      Break;
     end;
   end;

  //** pjsv - controla, si no hay ventanas hijas abiertas se vuelve al estado normal de la
  //** ventana padre
  If FHistorial.wVentanas = 0 then
   begin
    FHistorial.Z2sbtnPrint.enabled := True;
    FHistorial.Z2sbtnPrint.onclick:= FHistorial.Z2sbtnPrintClick;
    FHistorial.WindowState := wsNormal;
    FHistorial.Width := FHistorial.wFWidth;
    FHistorial.left  := FHistorial.wFLeft;
    FHistorial.top   := FHistorial.wFTop;
    FHistorial.lbHistorial.Width := FHistorial.wWidth;
   end;

  For xZ := 1 to 10 do
   begin
    If xventana[xZ] = IntToStr(xI) then
     xVentana[xZ] := '';
   end;
end;

procedure TFDetHistorial.FormShow(Sender: TObject);
var
 xSql1,xSql : String;
begin
  //** CArgo los estados que utilizare
  //** NO PAGADO
  xEstado5 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
  xEstid5  := DM1.cdsQry.FieldByName('ESTID').AsString;

  //** CANCELADO
  xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Y'),'ESTDES');
  xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** POR COBRAR
  xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
  xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** PARCIAL
  xEstado4 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
  xEstid4  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** PAGADO
  xEstado3 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('C'),'ESTDES');
  xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;

  //** EN PROCESO DE COBRANZA
  xEstado6 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('3'),'ESTDES');
  xEstid6  := DM1.cdsQry.FieldByName('ESTID').AsString;


   //** pjsv - setea el caption de la ventana y los qrys
   xSql := 'SELECT * FROM CRE301 WHERE ASOID='+quotedstr(wAsoid)+
           ' AND CREDID='+quotedstr(wCredid);
   dm1.cdsQry1.close;
   dm1.cdsQry1.datarequest(xSql);
   dm1.cdsQry1.open;

//   xSql := 'SELECT CRE302.*,CRE113.FLGSALDO,CRE113.FLGSUMA FROM CRE302,CRE113 WHERE ASOID='+quotedstr(wAsoid)+
//           ' AND CREDID='+quotedstr(wCredid)+' AND CREESTID=ESTID(+) ORDER BY CREANO,CREMES';
{COMENTADO POR WILLIAM MANRIQUE CAUTÍN 20031016
       xSql := 'SELECT cre302.CREFDEV,CRE302.CREDID,CRE302.CREANO,CRE302.CREMES,CRE302.CRECUOTA,'+
            ' cre302.creamort,CASE WHEN CREESTID = '+quotedstr(xEstid5)+' THEN '+
            ' (CRE302.CREAMORT+CRE302.CREINTERES+CRE302.CREFLAT)-'+
            ' (CRE302.CRECAPITAL+CRE302.CREMTOINT+CRE302.CREMTOFLAT)'+
            ' ELSE CASE WHEN CREESTID = '+quotedstr(xEstid2)+' THEN'+
            ' (CRE302.CREAMORT+CRE302.CREFLAT)-'+
            ' (CRE302.CRECAPITAL+CRE302.CREMTOFLAT) ELSE'+
            ' CASE WHEN CREESTID = '+quotedstr(xEstid4)+
            ' AND (CREANO <= '+quotedstr(FloattoStr(xAnoSys))+
            ' AND CREMES <= '+quotedstr(Dm1.StrZero(FloattoStr(xAnoSys),2))+')'+
            ' THEN (CRE302.CREAMORT+CRE302.CREINTERES+CRE302.CREFLAT)-'+
            ' (CRE302.CRECAPITAL+CRE302.CREMTOINT+CRE302.CREMTOFLAT)'+
            ' ELSE CASE WHEN CREESTID = '+quotedstr(xEstid4)+
            ' AND (CREANO >= '+quotedstr(FloattoStr(xAnoSys))+
            ' AND CREMES > '+quotedstr(Dm1.StrZero(FloattoStr(xAnoSys),2))+') THEN'+
            ' (CRE302.CREAMORT+CRE302.CREFLAT)-'+
            ' (CRE302.CRECAPITAL+CRE302.CREMTOFLAT) ELSE'+
            ' (CRE302.CREAMORT+CRE302.CREINTERES+CRE302.CREFLAT)-'+
            ' (CRE302.CRECAPITAL+CRE302.CREMTOINT+CRE302.CREMTOFLAT)'+
            ' END END END END'+
            ' CREMTO,CRE302.CREMTOCOB,'+
            ' CRE302.CRECAPITAL,CRE302.CREMTOINT,CRE302.CREMTOFLAT,'+
            ' CRE302.CRESALDO,CRE302.CREMTOEXC, TO_CHAR(CRE302.FOPERAC,''DD/MM/YYYY'') FOPERAC,SUBSTR(CRE302.CREESTADO,1,10) CREESTADO,CRE302.TMONABR,'+
            ' CRE113.FLGSALDO,CRE113.FLGSUMA ,'+
            ' A.CREVENCIDAS,B.CREPENDT,C.MES,(nvl(A.CREVENCIDAS,0.00)+nvl(B.CREPENDT,0.00)) MTOAPAGAR'+
            ' ,(nvl(A.CREVENCIDAS,0.00)+nvl(D.CREPENDT1,0.00)) MTOAPAGARS ,nvl(D.CREPENDT1,0.00) CREPENDT1'+
            ' FROM CRE302,CRE113 ,';
//            ' (SELECT NVL(SUM(A.CREMTO),0) CREVENCIDAS ,'+
      xSql1 := ' (SELECT NVL(SUM((A.CREAMORT+A.CREINTERES+A.CREFLAT) - (A.CRECAPITAL+A.CREMTOINT+A.CREMTOFLAT)),0) CREVENCIDAS ,'+
            ' NVL(MAX(A.ASOID),'+quotedstr(wAsoid)+') ASOID ,NVL(MAX(A.CREDID),'+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') CREDID'+
            ' FROM CRE302 A'+
            ' WHERE A.ASOID='+quotedstr(wAsoid)+' AND A.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND'+
            ' (A.CREESTID = '+quotedstr(xEstid5)+' OR (A.CREESTID = '+quotedstr(xEstid4)+
            ' AND A.CREANO <= '+quotedstr(FloatToStr(xAnoSys))+' AND'+
            ' A.CREMES < '+quotedstr(dm1.strzero(FloatToStr(xMesSys),2))+'))) A,'+
            ' (SELECT NVL(SUM((B.CREAMORT+B.CREFLAT) - (B.CRECAPITAL+B.CREMTOFLAT)),0)'+
            ' CREPENDT ,'+
            ' NVL(MAX(B.ASOID),'+quotedstr(wAsoid)+') ASOID ,NVL(MAX(B.CREDID),'+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') CREDID'+
            ' FROM CRE302 B'+
            ' WHERE B.ASOID='+quotedstr(wAsoid)+' AND B.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND'+
            ' ((B.CREESTID = '+quotedstr(xEstid2)+') OR (B.CREESTID = '+quotedstr(xEstid4)+
            ' AND B.CREANO >= '+quotedstr(FloatToStr(xAnoSys))+' AND'+
            ' B.CREMES > '+quotedstr(dm1.strzero(FloatToStr(xMesSys),2))+'))) B,'+
            ' (SELECT'+
            ' NVL(C.ASOID,'+quotedstr(wAsoid)+') ASOID ,NVL(C.CREDID,'+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') CREDID,'+
            ' CASE WHEN C.CREMES = ''01'''+
            ' THEN ''NO INCLUYE CUOTA DE ENERO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''02'''+
            ' THEN ''NO INCLUYE CUOTA DE FEBRERO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''03'''+
            ' THEN ''NO INCLUYE CUOTA DE MARZO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''04'''+
            ' THEN ''NO INCLUYE CUOTA DE ABRIL POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''05'''+
            ' THEN ''NO INCLUYE CUOTA DE MAYO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''06'''+
            ' THEN ''NO INCLUYE CUOTA DE JUNIO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''07'''+
            ' THEN ''NO INCLUYE CUOTA DE JULIO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''08'''+
            ' THEN ''NO INCLUYE CUOTA DE AGOSTO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''09'''+
            ' THEN ''NO INCLUYE CUOTA DE SETIEMBRE POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''10'''+
            ' THEN ''NO INCLUYE CUOTA DE OCTUBRE POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''11'''+
            ' THEN ''NO INCLUYE CUOTA DE NOVIEMBRE POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''12'''+
            ' THEN ''NO INCLUYE CUOTA DE DICIEMBRE POR ESTAR EN PROCESO DE COBRANZA'''+
            ' END END'+
            ' END END END END END END END END END END MES FROM CRE302 C,'+
            ' (SELECT   max(Y.CREANO||Y.CREMES) ANOMES'+
            ' FROM CRE302 Y WHERE Y.ASOID='+quotedstr(wAsoid)+
            ' AND Y.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND'+
            ' (Y.CREESTID = '+quotedstr(xEstid6)+')) Y'+
            ' WHERE C.ASOID='+quotedstr(wAsoid)+' AND C.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND'+
            ' (C.CREESTID = '+quotedstr(xEstid6)+') AND C.CREANO||C.CREMES = Y.ANOMES ) C,'+
            '(SELECT SUM((D.CREAMORT+D.CREFLAT) - (D.CRECAPITAL + CREMTOFLAT)) CREPENDT1 , '+
            ' NVL(MAX(D.ASOID),'+quotedstr(wAsoid)+') ASOID ,'+
            ' NVL(MAX(D.CREDID),'+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') CREDID FROM CRE302 D'+
            ' WHERE D.ASOID='+quotedstr(wAsoid)+
            ' AND D.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND '+
            ' ((D.CREESTID = '+quotedstr(xEstid2)+') OR (D.CREESTID = '+quotedstr(xEstid4)+
            ' AND D.CREANO >= '+quotedstr(FloatToStr(xAnoSys))+' AND'+
            ' D.CREMES > '+quotedstr(dm1.strzero(FloatToStr(xMesSys),2))+' ))) D'+
            ' WHERE CRE302.ASOID='+quotedstr(wAsoid)+' AND CRE302.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND'+
            ' CREESTID=ESTID(+) AND'+
            ' CRE302.ASOID = A.ASOID(+) AND CRE302.CREDID = A.CREDID(+) AND'+
            ' CRE302.ASOID = B.ASOID(+) AND CRE302.CREDID = B.CREDID(+) AND'+
            ' CRE302.ASOID = C.ASOID(+) AND CRE302.CREDID = C.CREDID(+) AND'+
            ' CRE302.ASOID = D.ASOID(+) AND CRE302.CREDID = D.CREDID(+)'+
            ' ORDER BY CRE302.credid,CRE302.CREANO,CRE302.CREMES';
}
   xSql:='SELECT CRE302.CREBLOQ,CRE302.CREDID,CRE302.CREANO,CRE302.CREMES,CRE302.CRECUOTA,'+
            ' CRE302.CREMTO,CRE302.CREFDEV, '+
            ' CRE302.CREMTOCOB,CRE302.CREAMORT,'+

            ' CRE302.CRECAPITAL, CRE302.CREMTOINT, CRE302.CREMTOFLAT, '+
            ' CRE302.CRESALDO, CRE302.CREMTOEXC, TO_CHAR(CRE302.FOPERAC,''DD/MM/YYYY'') FOPERAC, '+
            ' DECODE(NVL(CREBLOQ,''N''),''S'',''BLOQUEADO'',SUBSTR(CRE302.CREESTADO,1,10)) CREESTADO, CRE302.TMONABR, '+
            ' CRE113.FLGSALDO,CRE113.FLGSUMA ,'+
            ' A.CREVENCIDAS,B.CREPENDT,''NO INCLUYE CUOTA DE SETIEMBRE POR ESTAR EN PROCESO DE COBRANZA NO INCLUYE CUOTA DE SETIEMBRE POR ESTAR EN PROCESO DE COBRANZA'' MES, ( nvl( A.SALDOA,0.00)+nvl( B.SALDOB,0.00)) MTOAPAGAR'+
            ' ,(nvl(A.CREVENCIDAS,0.00)+(nvl(D.CREPENDT1,0.00))) MTOAPAGARS, '+
            ' (nvl(A.CREVENCIDAS,0.00)+nvl(D.CREPENDT1,0.00)+ NVL(I.CREPROCESO,0)) MTOAPAGART, '+
            ' nvl(D.CREPENDT1,0.00) CREPENDT1,NVL(I.CREPROCESO,0) CREPROCESO , '+
            ' D.CUOCREPENDT1,A.CUOCREVENCIDAS,I.CUOCREPROCESO,(D.CUOCREPENDT1+A.CUOCREVENCIDAS+I.CUOCREPROCESO) CUOMTOAPAGART'+
            ' FROM CRE302,CRE113 ,';

      xsql1 := '(SELECT NVL(SUM((A.CREAMORT+A.CREINTERES+A.CREFLAT) - (A.CRECAPITAL+A.CREMTOINT+A.CREMTOFLAT)),0) CREVENCIDAS ,'+
            ' COUNT(*) CUOCREVENCIDAS, '+
            ' NVL(MAX(A.ASOID),'+quotedstr(wAsoid)+') ASOID ,NVL(MAX(A.CREDID),'+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') CREDID, SUM(NVL(A.CRESALDO,0)) SALDOA '+
            ' FROM CRE302 A'+
            ' WHERE A.ASOID='+quotedstr(wAsoid)+' AND A.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND'+
            ' (A.CREESTID = '+quotedstr(xEstid5)+' OR (A.CREESTID = '+quotedstr(xEstid4)+

            ' AND A.CREANO||A.CREMES <= '+quotedstr(FloatToStr(xAnoSys)+dm1.strzero(FloatToStr(xMesSys),2) )+'))) A,'+

            ' (SELECT NVL(SUM((B.CREAMORT+B.CREFLAT) - (B.CRECAPITAL+B.CREMTOFLAT)),0)'+
            ' CREPENDT , SUM(NVL(B.CRESALDO,0)) SALDOB, '+
            ' NVL(MAX(B.ASOID),'+quotedstr(wAsoid)+') ASOID ,NVL(MAX(B.CREDID),'+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') CREDID'+
            ' FROM CRE302 B'+
            ' WHERE B.ASOID='+quotedstr(wAsoid)+' AND B.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND'+
            ' ((B.CREESTID = '+quotedstr(xEstid2)+') OR (B.CREESTID = '+quotedstr(xEstid4)+

            ' AND B.CREANO||B.CREMES > '+quotedstr(FloatToStr(xAnoSys) + dm1.strzero(FloatToStr(xMesSys),2))+'))) B,'+

            '(SELECT SUM(CASE WHEN CREESTID ='+ quotedstr(xEstid2) + ' THEN D.CREAMORT+D.CREFLAT ELSE ' +
            ' D.CREAMORT+D.CREFLAT-NVL(CREMTOCOB,0) END ) CREPENDT1 ,' +
            ' COUNT(*) CUOCREPENDT1, '+
            ' NVL(MAX(D.ASOID),'+quotedstr(wAsoid)+') ASOID ,'+
            ' NVL(MAX(D.CREDID),'+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') CREDID FROM CRE302 D'+
            ' WHERE D.ASOID='+quotedstr(wAsoid)+
            ' AND D.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND '+
            ' (D.CREESTID = '+quotedstr(xEstid2)+' '+

            ' OR (D.CREESTID = '+quotedstr(xEstid4)+
            ' AND D.CREANO||D.CREMES > TO_CHAR(SYSDATE,''YYYYMM'')))) D,' +

            ' ( SELECT  CREDID,SUM( CRESALDO ) CREPROCESO ,COUNT(*) CUOCREPROCESO' +
            '   FROM CRE302 ' +
            '   WHERE ASOID=' + quotedstr(wAsoid) +
            '   AND CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND CREESTID = '+QuotedStr(xEstid6) +
            '   GROUP BY CREDID  ) I ' +

            ' WHERE CRE302.ASOID='+quotedstr(wAsoid)+' AND CRE302.CREDID in ('+quotedstr(dm1.cdsQry1.fieldbyname('CREDID').AsString)+') AND'+
            ' CREESTID=ESTID(+) AND'+
            ' CRE302.ASOID = A.ASOID(+) AND CRE302.CREDID = A.CREDID(+) AND'+
            ' CRE302.ASOID = B.ASOID(+) AND CRE302.CREDID = B.CREDID(+) AND'+
            ' CRE302.ASOID = D.ASOID(+) AND CRE302.CREDID = D.CREDID(+) AND'+
            ' CRE302.CREDID= I.CREDID(+) '+
            ' ORDER BY CRE302.credid,CRE302.CREANO,CRE302.CREMES';

   dm1.cdsQry2.close;
   limpiaclientdataset(dm1.cdsQry2);
   dm1.cdsQry2.datarequest(xSql+xSql1);
   dm1.cdsQry2.open;

   //** pjsv - setea el grid
   dbgDetHistorial.Selected.Add('CREFDEV'#9'3'#9'+~-');
   dbgDetHistorial.Selected.Add('CREANO'#9'4'#9'Año');
   dbgDetHistorial.Selected.Add('CREMES'#9'4'#9'Mes');
   dbgDetHistorial.Selected.Add('CRECUOTA'#9'5'#9'Cuota');
   dbgDetHistorial.Selected.Add('CREMTO'#9'8'#9'Mto. ~Cuota');
   dbgDetHistorial.Selected.Add('CRECAPITAL'#9'8'#9'Amort.');
   dbgDetHistorial.Selected.Add('CREMTOINT'#9'8'#9'Interes');
   dbgDetHistorial.Selected.Add('CREMTOFLAT'#9'8'#9'Flat');
   dbgDetHistorial.Selected.Add('FOPERAC'#9'10'#9'Fecha ~Operación');
   dbgDetHistorial.Selected.Add('CREMTOCOB'#9'8'#9'Mto. ~Cobrado');
   dbgDetHistorial.Selected.Add('CRESALDO'#9'8'#9'Capital');
   dbgDetHistorial.Selected.Add('CREESTADO'#9'15'#9'Estado');
   dbgDetHistorial.SetControlType('CREFDEV',fctCheckBox,'S;R');
   dbgDetHistorial.invalidate;
   //** setea los clients y datasurce variables de acuerdo al numero de vetnana abierta
   case FHistorial.wVentanas of
    1 : begin
          TempDataSet01 := TwwClientdataSet.Create(nil);
          TempDataSet01.CloneCursor(dm1.cdsQry1,True);
          TempDataSet02 := TwwClientdataSet.Create(nil);
          TempDataSet02.CloneCursor(dm1.cdsQry2,True);
          TempDataSource01 := TwwDataSource.Create(nil);
          TempDataSource01.DataSet := TempDataSet01;
          TempDataSource02 := TwwDataSource.Create(nil);
          TempDataSource02.DataSet := TempDataSet02;
          dbeCredid.DataSource   := TempDataSource01;
          dbeFOtorg.DataSource   := TempDataSource01;
          dbeMtoSol.DataSource   := TempDataSource01;
          dbeInte.DataSource     := TempDataSource01;
          dbeFlat.DataSource     := TempDataSource01;
          dbeMtoCuo.DataSource   := TempDataSource01;
          dbeNumCuo.DataSource   := TempDataSource01;
          dbeIniPag.DataSource   := TempDataSource01;
          dbeFinpag.DataSource   := TempDataSource01;
          dbeNroFicio.DataSource := TempDataSource01;
          dbgDetHistorial.DataSource := TempDataSource02;
          TempDataSet02.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet02.FieldByName('CREANO').ReadOnly := True;
          TempDataSet02.FieldByName('CREMES').ReadOnly := True;
          TempDataSet02.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet02.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet02.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet02.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet02.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet02.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet02.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet02.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet02.FieldByName('CREESTADO').ReadOnly := True;
        end;
    2 : begin
          TempDataSet03 := TwwClientdataSet.Create(nil);
          TempDataSet03.CloneCursor(dm1.cdsQry1,True);
          TempDataSet04 := TwwClientdataSet.Create(nil);
          TempDataSet04.CloneCursor(dm1.cdsQry2,True);
          TempDataSource03 := TwwDataSource.Create(nil);
          TempDataSource03.DataSet := TempDataSet03;
          TempDataSource04 := TwwDataSource.Create(nil);
          TempDataSource04.DataSet := TempDataSet04;
          dbeCredid.DataSource   := TempDataSource03;
          dbeFOtorg.DataSource   := TempDataSource03;
          dbeMtoSol.DataSource   := TempDataSource03;
          dbeInte.DataSource     := TempDataSource03;
          dbeFlat.DataSource     := TempDataSource03;
          dbeMtoCuo.DataSource   := TempDataSource03;
          dbeNumCuo.DataSource   := TempDataSource03;
          dbeIniPag.DataSource   := TempDataSource03;
          dbeFinpag.DataSource   := TempDataSource03;
          dbeNroFicio.DataSource := TempDataSource03;
          dbgDetHistorial.DataSource := TempDataSource04;
          TempDataSet04.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet04.FieldByName('CREANO').ReadOnly := True;
          TempDataSet04.FieldByName('CREMES').ReadOnly := True;
          TempDataSet04.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet04.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet04.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet04.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet04.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet04.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet04.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet04.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet04.FieldByName('CREESTADO').ReadOnly := True;
        end;
    3 : begin
          TempDataSet05 := TwwClientdataSet.Create(nil);
          TempDataSet05.CloneCursor(dm1.cdsQry1,True);
          TempDataSet06 := TwwClientdataSet.Create(nil);
          TempDataSet06.CloneCursor(dm1.cdsQry2,True);
          TempDataSource05 := TwwDataSource.Create(nil);
          TempDataSource05.DataSet := TempDataSet05;
          TempDataSource06 := TwwDataSource.Create(nil);
          TempDataSource06.DataSet := TempDataSet06;
          dbeCredid.DataSource   := TempDataSource05;
          dbeFOtorg.DataSource   := TempDataSource05;
          dbeMtoSol.DataSource   := TempDataSource05;
          dbeInte.DataSource     := TempDataSource05;
          dbeFlat.DataSource     := TempDataSource05;
          dbeMtoCuo.DataSource   := TempDataSource05;
          dbeNumCuo.DataSource   := TempDataSource05;
          dbeIniPag.DataSource   := TempDataSource05;
          dbeFinpag.DataSource   := TempDataSource05;
          dbeNroFicio.DataSource := TempDataSource05;
          dbgDetHistorial.DataSource := TempDataSource06;
          TempDataSet06.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet06.FieldByName('CREANO').ReadOnly := True;
          TempDataSet06.FieldByName('CREMES').ReadOnly := True;
          TempDataSet06.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet06.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet06.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet06.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet06.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet06.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet06.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet06.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet06.FieldByName('CREESTADO').ReadOnly := True;
        end;
    4 : begin
          TempDataSet07 := TwwClientdataSet.Create(nil);
          TempDataSet07.CloneCursor(dm1.cdsQry1,True);
          TempDataSet08 := TwwClientdataSet.Create(nil);
          TempDataSet08.CloneCursor(dm1.cdsQry2,True);
          TempDataSource07 := TwwDataSource.Create(nil);
          TempDataSource07.DataSet := TempDataSet07;
          TempDataSource08 := TwwDataSource.Create(nil);
          TempDataSource08.DataSet := TempDataSet08;
          dbeCredid.DataSource   := TempDataSource07;
          dbeFOtorg.DataSource   := TempDataSource07;
          dbeMtoSol.DataSource   := TempDataSource07;
          dbeInte.DataSource     := TempDataSource07;
          dbeFlat.DataSource     := TempDataSource07;
          dbeMtoCuo.DataSource   := TempDataSource07;
          dbeNumCuo.DataSource   := TempDataSource07;
          dbeIniPag.DataSource   := TempDataSource07;
          dbeFinpag.DataSource   := TempDataSource07;
          dbeNroFicio.DataSource := TempDataSource07;
          dbgDetHistorial.DataSource := TempDataSource08;
          TempDataSet08.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet08.FieldByName('CREANO').ReadOnly := True;
          TempDataSet08.FieldByName('CREMES').ReadOnly := True;
          TempDataSet08.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet08.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet08.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet08.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet08.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet08.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet08.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet08.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet08.FieldByName('CREESTADO').ReadOnly := True;
        end;
    5 : begin
          TempDataSet09 := TwwClientdataSet.Create(nil);
          TempDataSet09.CloneCursor(dm1.cdsQry1,True);
          TempDataSet10 := TwwClientdataSet.Create(nil);
          TempDataSet10.CloneCursor(dm1.cdsQry2,True);
          TempDataSource09 := TwwDataSource.Create(nil);
          TempDataSource09.DataSet := TempDataSet09;
          TempDataSource10 := TwwDataSource.Create(nil);
          TempDataSource10.DataSet := TempDataSet10;
          dbeCredid.DataSource   := TempDataSource09;
          dbeFOtorg.DataSource   := TempDataSource09;
          dbeMtoSol.DataSource   := TempDataSource09;
          dbeInte.DataSource     := TempDataSource09;
          dbeFlat.DataSource     := TempDataSource09;
          dbeMtoCuo.DataSource   := TempDataSource09;
          dbeNumCuo.DataSource   := TempDataSource09;
          dbeIniPag.DataSource   := TempDataSource09;
          dbeFinpag.DataSource   := TempDataSource09;
          dbeNroFicio.DataSource := TempDataSource09;
          dbgDetHistorial.DataSource := TempDataSource10;
          TempDataSet10.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet10.FieldByName('CREANO').ReadOnly := True;
          TempDataSet10.FieldByName('CREMES').ReadOnly := True;
          TempDataSet10.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet10.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet10.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet10.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet10.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet10.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet10.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet10.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet10.FieldByName('CREESTADO').ReadOnly := True;
        end;
    6 : begin
          TempDataSet11 := TwwClientdataSet.Create(nil);
          TempDataSet11.CloneCursor(dm1.cdsQry1,True);
          TempDataSet12 := TwwClientdataSet.Create(nil);
          TempDataSet12.CloneCursor(dm1.cdsQry2,True);
          TempDataSource11 := TwwDataSource.Create(nil);
          TempDataSource11.DataSet := TempDataSet11;
          TempDataSource12 := TwwDataSource.Create(nil);
          TempDataSource12.DataSet := TempDataSet12;
          dbeCredid.DataSource   := TempDataSource11;
          dbeFOtorg.DataSource   := TempDataSource11;
          dbeMtoSol.DataSource   := TempDataSource11;
          dbeInte.DataSource     := TempDataSource11;
          dbeFlat.DataSource     := TempDataSource11;
          dbeMtoCuo.DataSource   := TempDataSource11;
          dbeNumCuo.DataSource   := TempDataSource11;
          dbeIniPag.DataSource   := TempDataSource11;
          dbeFinpag.DataSource   := TempDataSource11;
          dbeNroFicio.DataSource := TempDataSource11;
          dbgDetHistorial.DataSource := TempDataSource12;
          TempDataSet12.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet12.FieldByName('CREANO').ReadOnly := True;
          TempDataSet12.FieldByName('CREMES').ReadOnly := True;
          TempDataSet12.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet12.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet12.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet12.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet12.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet12.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet12.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet12.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet12.FieldByName('CREESTADO').ReadOnly := True;
        end;
    7 : begin
          TempDataSet13 := TwwClientdataSet.Create(nil);
          TempDataSet13.CloneCursor(dm1.cdsQry1,True);
          TempDataSet14 := TwwClientdataSet.Create(nil);
          TempDataSet14.CloneCursor(dm1.cdsQry2,True);
          TempDataSource13 := TwwDataSource.Create(nil);
          TempDataSource13.DataSet := TempDataSet13;
          TempDataSource14 := TwwDataSource.Create(nil);
          TempDataSource14.DataSet := TempDataSet14;
          dbeCredid.DataSource   := TempDataSource13;
          dbeFOtorg.DataSource   := TempDataSource13;
          dbeMtoSol.DataSource   := TempDataSource13;
          dbeInte.DataSource     := TempDataSource13;
          dbeFlat.DataSource     := TempDataSource13;
          dbeMtoCuo.DataSource   := TempDataSource13;
          dbeNumCuo.DataSource   := TempDataSource13;
          dbeIniPag.DataSource   := TempDataSource13;
          dbeFinpag.DataSource   := TempDataSource13;
          dbeNroFicio.DataSource := TempDataSource13;
          dbgDetHistorial.DataSource := TempDataSource14;
          TempDataSet14.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet14.FieldByName('CREANO').ReadOnly := True;
          TempDataSet14.FieldByName('CREMES').ReadOnly := True;
          TempDataSet14.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet14.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet14.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet14.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet14.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet14.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet14.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet14.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet14.FieldByName('CREESTADO').ReadOnly := True;
        end;
    8 : begin
          TempDataSet15 := TwwClientdataSet.Create(nil);
          TempDataSet15.CloneCursor(dm1.cdsQry1,True);
          TempDataSet16 := TwwClientdataSet.Create(nil);
          TempDataSet16.CloneCursor(dm1.cdsQry2,True);
          TempDataSource15 := TwwDataSource.Create(nil);
          TempDataSource15.DataSet := TempDataSet15;
          TempDataSource16 := TwwDataSource.Create(nil);
          TempDataSource16.DataSet := TempDataSet16;
          dbeCredid.DataSource   := TempDataSource15;
          dbeFOtorg.DataSource   := TempDataSource15;
          dbeMtoSol.DataSource   := TempDataSource15;
          dbeInte.DataSource     := TempDataSource15;
          dbeFlat.DataSource     := TempDataSource15;
          dbeMtoCuo.DataSource   := TempDataSource15;
          dbeNumCuo.DataSource   := TempDataSource15;
          dbeIniPag.DataSource   := TempDataSource15;
          dbeFinpag.DataSource   := TempDataSource15;
          dbeNroFicio.DataSource := TempDataSource15;
          dbgDetHistorial.DataSource := TempDataSource16;
          TempDataSet16.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet16.FieldByName('CREANO').ReadOnly := True;
          TempDataSet16.FieldByName('CREMES').ReadOnly := True;
          TempDataSet16.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet16.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet16.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet16.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet16.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet16.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet16.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet16.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet16.FieldByName('CREESTADO').ReadOnly := True;
        end;
    9 : begin
          TempDataSet17 := TwwClientdataSet.Create(nil);
          TempDataSet17.CloneCursor(dm1.cdsQry1,True);
          TempDataSet18 := TwwClientdataSet.Create(nil);
          TempDataSet18.CloneCursor(dm1.cdsQry2,True);
          TempDataSource17 := TwwDataSource.Create(nil);
          TempDataSource17.DataSet := TempDataSet17;
          TempDataSource18 := TwwDataSource.Create(nil);
          TempDataSource18.DataSet := TempDataSet18;
          dbeCredid.DataSource   := TempDataSource17;
          dbeFOtorg.DataSource   := TempDataSource17;
          dbeMtoSol.DataSource   := TempDataSource17;
          dbeInte.DataSource     := TempDataSource17;
          dbeFlat.DataSource     := TempDataSource17;
          dbeMtoCuo.DataSource   := TempDataSource17;
          dbeNumCuo.DataSource   := TempDataSource17;
          dbeIniPag.DataSource   := TempDataSource17;
          dbeFinpag.DataSource   := TempDataSource17;
          dbeNroFicio.DataSource := TempDataSource17;
          dbgDetHistorial.DataSource := TempDataSource18;
          TempDataSet18.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet18.FieldByName('CREANO').ReadOnly := True;
          TempDataSet18.FieldByName('CREMES').ReadOnly := True;
          TempDataSet18.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet18.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet18.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet18.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet18.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet18.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet18.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet18.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet18.FieldByName('CREESTADO').ReadOnly := True;
        end;
    10 : begin
          TempDataSet19 := TwwClientdataSet.Create(nil);
          TempDataSet19.CloneCursor(dm1.cdsQry1,True);
          TempDataSet20 := TwwClientdataSet.Create(nil);
          TempDataSet20.CloneCursor(dm1.cdsQry2,True);
          TempDataSource19 := TwwDataSource.Create(nil);
          TempDataSource19.DataSet := TempDataSet19;
          TempDataSource20 := TwwDataSource.Create(nil);
          TempDataSource20.DataSet := TempDataSet20;
          dbeCredid.DataSource   := TempDataSource19;
          dbeFOtorg.DataSource   := TempDataSource19;
          dbeMtoSol.DataSource   := TempDataSource19;
          dbeInte.DataSource     := TempDataSource19;
          dbeFlat.DataSource     := TempDataSource19;
          dbeMtoCuo.DataSource   := TempDataSource19;
          dbeNumCuo.DataSource   := TempDataSource19;
          dbeIniPag.DataSource   := TempDataSource19;
          dbeFinpag.DataSource   := TempDataSource19;
          dbeNroFicio.DataSource := TempDataSource19;
          dbgDetHistorial.DataSource := TempDataSource20;
          TempDataSet20.FieldByName('CREFDEV').ReadOnly := False;
          TempDataSet20.FieldByName('CREANO').ReadOnly := True;
          TempDataSet20.FieldByName('CREMES').ReadOnly := True;
          TempDataSet20.FieldByName('CRECUOTA').ReadOnly := True;
          TempDataSet20.FieldByName('CREMTO').ReadOnly := True;
          TempDataSet20.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet20.FieldByName('CREMTOINT').ReadOnly := True;
          TempDataSet20.FieldByName('CREMTOFLAT').ReadOnly := True;
          TempDataSet20.FieldByName('FOPERAC').ReadOnly := True;
          TempDataSet20.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet20.FieldByName('CRECAPITAL').ReadOnly := True;
          TempDataSet20.FieldByName('CREESTADO').ReadOnly := True;
        end;
   end;
   dbgDetHistorial.Refresh;
end;

procedure TFDetHistorial.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFDetHistorial.dbgDetHistorialCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
{
If dbgDetHistorial.DataSource.DataSet.FieldByName('CREESTADO').AsString = 'POR COBRAR' then
  begin
   AFont.Color := clLime;
   if (not Highlight) then ABrush.Color := $009BBFBA
   else  ABrush.Color := clWindow;
  end
 else
  begin
   AFont.Color := clBlue;
   if (not Highlight) then ABrush.Color := $00C8E1DF
   else  ABrush.Color := clWindow;
  end
}
  if (Field.FieldName = 'CREESTADO') then
   begin
    //** pjsv - si es 'S' me indica que entra a sumar
	 if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('FLGSALDO').AsString = 'S' then //(Field.Text = 'POR COBRAR') then
     begin
   	 AFont.Color := clRed;
       if (Highlight) then ABrush.Color := clWindow;
 	  end
    else
     begin
   	 AFont.Color := clBlue;
       if (Highlight) then ABrush.Color := clWindow;
 	  end;
	end;

end;

procedure TFDetHistorial.dbgDetHistorialFieldChanged(Sender: TObject;
  Field: TField);
var
 xMto : Double;
 xI : Integer;
 xBookMark : TBookMark;
begin
  //** pjsv - si el campo modificado es el correcto
  IF Field.DisplayName = 'CREFDEV' then
   begin
    xBookMark := (Sender as TwwDBGrid).DataSource.DataSet.GetBookmark;
    try
       (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
       (Sender as TwwDBGrid).DataSource.DataSet.First;
       xMto := 0;
       While not (Sender as TwwDBGrid).DataSource.DataSet.Eof do
        begin
         //** pjsv - si el campo FLGSALDO = 'S' y CREFDEV = 'S' (con el Check)
         If ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('FLGSALDO').AsString = 'S') and
            ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREFDEV').AsString = 'S') then
          begin
           //** pjsv - Para el tipo de moneda
           If (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('TMONID').AsString = dm1.wTMonLoc then
             //** pjsv - si la suma sera Total o Parcial
            begin
             If (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('FLGSUMA').AsString = 'T' then
              xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat
             else
              xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREAMORT').AsFloat +
                             (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREFLAT').AsFloat;
            end
           else
            begin
             If (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('FLGSUMA').AsString = 'T' then
              xMto := xMto + ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREAMORT').AsFloat * StrToFloat(FHistorial.dbeTCambio.text) )
             else
              xMto := xMto + (((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREAMORT').AsFloat +
                             (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREFLAT').AsFloat) *
                             StrToFloat(FHistorial.dbeTCambio.text) ) ;
            end
          end;
         lblMtoAPagar.CAption := FloatToStrF(xMto,ffFixed,15,2);
         //** pjsv - cargo para c/u de las variables el total de su ventana
         For xI := 1 to 10 do
          begin
           case xI of
            1 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal1 := xMto;
            2 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal2 := xMto;
            3 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal3 := xMto;
            4 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal4 := xMto;
            5 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal5 := xMto;
            6 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal6 := xMto;
            7 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal7 := xMto;
            8 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal8 := xMto;
            9 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal9 := xMto;
            10 : If FHistorial.wCreditos[xI] = dbeCredid.text then FHistorial.wTotal10 := xMto;
           end;
          end;

         //** pjsv - asigno el total de todas las ventanas abiertas
          FHistorial.lblTotal.caption := FloatToStrF(FHistorial.wTotal1+FHistorial.wTotal2+
                                                     FHistorial.wTotal3+FHistorial.wTotal4+
                                                     FHistorial.wTotal5+FHistorial.wTotal5+
                                                     FHistorial.wTotal7+FHistorial.wTotal6+
                                                     FHistorial.wTotal9+FHistorial.wTotal10
                                                     ,ffFixed,15,2);
         (Sender as TwwDBGrid).DataSource.DataSet.next;
        end;
    Finally
     (Sender as TwwDBGrid).DataSource.DataSet.GotoBookmark(xBookMark);
     (Sender as TwwDBGrid).DataSource.DataSet.FreeBookmark(xBookMark);
     (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
    end;
   end;
end;

procedure TFDetHistorial.dbgDetHistorialDblClick(Sender: TObject);
var
 xSql : String;
begin
   dbgDetHistorial.enabled := False;
   pnlDetPago.Visible := True;
   xSql := 'SELECT TIPCREID,CREDID,CRECUOTA,CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,TMONABR,'+
           'TCAMBIO,BANCOID,CCBCOID,FORPAGOID,FOPERAC,FORPAGOABR,CREMTOCUO,CREDOCPAG,FORPAGID,'+
           'FORPAGABR FROM CRE310,TGE103 WHERE ASOID ='+quotedstr(wAsoid)+
           ' AND CREDID ='+quotedstr(wCredid)+
           ' AND CRECUOTA='+quotedstr(dbgDetHistorial.Fields[3].AsString)+
           ' AND CRE310.TMONID=TGE103.TMONID';
   Dm1.cdsQry3.Close;
   Dm1.cdsQry3.DataRequest(xSql);
   Dm1.cdsQry3.Open;

   dbgDetPago.Selected.Clear;
   dbgDetPago.Selected.Add('CRECUOTA'#9'3'#9'Número~Cuota');
   dbgDetPago.Selected.Add('CREMTOCUO'#9'6'#9'Monto~Cuota');
   dbgDetPago.Selected.Add('CREAMORT'#9'6'#9'Amortiz.');
   dbgDetPago.Selected.Add('CREINTERES'#9'6'#9'Interes');
   dbgDetPago.Selected.Add('CREFLAT'#9'6'#9'Flat');
   dbgDetPago.Selected.Add('CREMTOCOB'#9'6'#9'Monto~Cobrado');
   dbgDetPago.Selected.Add('FOPERAC'#9'10'#9'Fecha~Operacón');
   dbgDetPago.Selected.Add('TMONABR'#9'3'#9'Mda.');
   dbgDetPago.Selected.Add('TCAMBIO'#9'6'#9'Tipo~Cambio');
   dbgDetPago.Selected.Add('BANCOID'#9'3'#9'Banco');
   dbgDetPago.Selected.Add('CCBCOID'#9'10'#9'Cta del ~Banco');
   dbgDetPago.Selected.Add('FORPAGOABR'#9'6'#9'Forma ~Descuento');
   dbgDetPago.Selected.Add('CREDOCPAG'#9'10'#9'Documento~de Pago');
   dbgDetPago.Selected.Add('FORPAGABR'#9'6'#9'Forma~Pago');
   dbgDetPago.invalidate;
   case FHistorial.wVentanas of
    1 : begin
          TempDataSet21 := TwwClientdataSet.Create(nil);
          TempDataSet21.CloneCursor(dm1.cdsQry3,True);
          TempDataSource21 := TwwDataSource.Create(nil);
          TempDataSource21.DataSet := TempDataSet21;
          dbgDetPago.DataSource := TempDataSource21;
          TempDataSet21.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet21.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet21.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet21.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet21.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet21.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet21.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet21.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet21.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet21.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet21.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet21.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet21.FieldByName('FORPAGABR').ReadOnly := True;
        end;
    2 : begin
          TempDataSet22 := TwwClientdataSet.Create(nil);
          TempDataSet22.CloneCursor(dm1.cdsQry3,True);
          TempDataSource22 := TwwDataSource.Create(nil);
          TempDataSource22.DataSet := TempDataSet22;
          dbgDetPago.DataSource := TempDataSource22;
          TempDataSet22.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet22.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet22.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet22.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet22.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet22.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet22.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet22.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet22.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet22.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet22.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet22.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet22.FieldByName('FORPAGABR').ReadOnly := True;
        end;
    3 : begin
          TempDataSet23 := TwwClientdataSet.Create(nil);
          TempDataSet23.CloneCursor(dm1.cdsQry3,True);
          TempDataSource23 := TwwDataSource.Create(nil);
          TempDataSource23.DataSet := TempDataSet23;
          dbgDetPago.DataSource := TempDataSource23;
          TempDataSet23.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet23.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet23.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet23.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet23.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet23.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet23.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet23.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet23.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet23.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet23.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet23.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet23.FieldByName('FORPAGABR').ReadOnly := True;
        end;
    4 : begin
          TempDataSet24 := TwwClientdataSet.Create(nil);
          TempDataSet24.CloneCursor(dm1.cdsQry3,True);
          TempDataSource24 := TwwDataSource.Create(nil);
          TempDataSource24.DataSet := TempDataSet24;
          dbgDetPago.DataSource := TempDataSource24;
          TempDataSet24.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet24.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet24.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet24.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet24.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet24.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet24.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet24.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet24.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet24.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet24.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet24.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet24.FieldByName('FORPAGABR').ReadOnly := True;
        end;
    5 : begin
          TempDataSet25 := TwwClientdataSet.Create(nil);
          TempDataSet25.CloneCursor(dm1.cdsQry3,True);
          TempDataSource25 := TwwDataSource.Create(nil);
          TempDataSource25.DataSet := TempDataSet25;
          dbgDetPago.DataSource := TempDataSource25;
          TempDataSet25.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet25.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet25.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet25.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet25.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet25.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet25.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet25.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet25.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet25.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet25.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet25.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet25.FieldByName('FORPAGABR').ReadOnly := True;
        end;
    6 : begin
          TempDataSet26 := TwwClientdataSet.Create(nil);
          TempDataSet26.CloneCursor(dm1.cdsQry3,True);
          TempDataSource26 := TwwDataSource.Create(nil);
          TempDataSource26.DataSet := TempDataSet26;
          dbgDetPago.DataSource := TempDataSource26;
          TempDataSet26.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet26.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet26.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet26.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet26.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet26.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet26.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet26.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet26.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet26.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet26.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet26.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet26.FieldByName('FORPAGABR').ReadOnly := True;
        end;
    7 : begin
          TempDataSet27 := TwwClientdataSet.Create(nil);
          TempDataSet27.CloneCursor(dm1.cdsQry3,True);
          TempDataSource27 := TwwDataSource.Create(nil);
          TempDataSource27.DataSet := TempDataSet27;
          dbgDetPago.DataSource := TempDataSource27;
          TempDataSet27.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet27.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet27.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet27.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet27.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet27.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet27.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet27.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet27.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet27.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet27.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet27.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet27.FieldByName('FORPAGABR').ReadOnly := True;
        end;
    8 : begin
          TempDataSet28 := TwwClientdataSet.Create(nil);
          TempDataSet28.CloneCursor(dm1.cdsQry3,True);
          TempDataSource28 := TwwDataSource.Create(nil);
          TempDataSource28.DataSet := TempDataSet28;
          dbgDetPago.DataSource := TempDataSource28;
          TempDataSet28.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet28.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet28.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet28.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet28.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet28.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet28.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet28.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet28.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet28.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet28.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet28.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet28.FieldByName('FORPAGABR').ReadOnly := True;
        end;
    9 : begin
          TempDataSet29 := TwwClientdataSet.Create(nil);
          TempDataSet29.CloneCursor(dm1.cdsQry3,True);
          TempDataSource29 := TwwDataSource.Create(nil);
          TempDataSource29.DataSet := TempDataSet29;
          dbgDetPago.DataSource := TempDataSource29;
          TempDataSet29.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet29.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet29.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet29.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet29.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet29.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet29.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet29.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet29.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet29.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet29.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet29.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet29.FieldByName('FORPAGABR').ReadOnly := True;
        end;
    10 : begin
          TempDataSet30 := TwwClientdataSet.Create(nil);
          TempDataSet30.CloneCursor(dm1.cdsQry3,True);
          TempDataSource30 := TwwDataSource.Create(nil);
          TempDataSource30.DataSet := TempDataSet30;
          dbgDetPago.DataSource := TempDataSource30;
          TempDataSet30.FieldByName('CRECUOTA').ReadOnly := False;
          TempDataSet30.FieldByName('CREMTOCUO').ReadOnly := True;
          TempDataSet30.FieldByName('CREAMORT').ReadOnly := True;
          TempDataSet30.FieldByName('CREINTERES').ReadOnly := True;
          TempDataSet30.FieldByName('CREFLAT').ReadOnly := True;
          TempDataSet30.FieldByName('CREMTOCOB').ReadOnly := True;
          TempDataSet30.FieldByName('TMONABR').ReadOnly := True;
          TempDataSet30.FieldByName('TCAMBIO').ReadOnly := True;
          TempDataSet30.FieldByName('BANCOID').ReadOnly := True;
          TempDataSet30.FieldByName('CCBCOID').ReadOnly := True;
          TempDataSet30.FieldByName('FORPAGOABR').ReadOnly := True;
          TempDataSet30.FieldByName('CREDOCPAG').ReadOnly := True;
          TempDataSet30.FieldByName('FORPAGABR').ReadOnly := True;
        end;
   end;     
end;

procedure TFDetHistorial.Z2sbtnSalirClick(Sender: TObject);
begin
   dbgDetHistorial.enabled := True;
   pnlDetPago.Visible := False;
end;

procedure TFDetHistorial.LimpiaClientDataset(cds: TwwClientDataset);
begin
   with cds do
   begin
     IndexFieldNames := '' ;
     Filter := '' ;
     Filtered := False ;
     if active then
       Close ;
   end ;
end;

end.
