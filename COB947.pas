unit COB947;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdbedit, Wwdbspin, Grids, Wwdbigrd,
  Wwdbgrid, ComCtrls, ExtCtrls, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, Db,
  ppStrtch, ppSubRpt, DBGrids;

type
  TfGenCobTel = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    BitGenerar: TBitBtn;
    dtgCabTel: TwwDBGrid;
    BitMarPer: TBitBtn;
    grbProcesos: TGroupBox;
    prbAvances: TProgressBar;
    ppResumen: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLblTitulo01: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBEstPre: TppDBPipeline;
    BitVrfGen: TBitBtn;
    BitAplDes: TBitBtn;
    pnlEfect: TPanel;
    rdbRes: TRadioButton;
    rdbDet: TRadioButton;
    BitEfecCob: TBitBtn;
    DbRepUser: TppDBPipeline;
    RepUser: TppReport;
    ppHeaderBand32: TppHeaderBand;
    lblTitulo01: TppLabel;
    ppLabel681: TppLabel;
    ppLabel682: TppLabel;
    ppLabel683: TppLabel;
    ppLabel684: TppLabel;
    ppLabel685: TppLabel;
    ppSystemVariable65: TppSystemVariable;
    ppSystemVariable66: TppSystemVariable;
    ppSystemVariable67: TppSystemVariable;
    ppLabel686: TppLabel;
    ppLabel687: TppLabel;
    ppLabel688: TppLabel;
    ppLine169: TppLine;
    lblEfect01: TppLabel;
    ppDetailBand34: TppDetailBand;
    ppDBText288: TppDBText;
    ppDBText277: TppDBText;
    ppDBText278: TppDBText;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppDBText282: TppDBText;
    ppDBText285: TppDBText;
    ppDBText286: TppDBText;
    ppDBText287: TppDBText;
    ppFooterBand27: TppFooterBand;
    ppSummaryBand32: TppSummaryBand;
    ppLabel679: TppLabel;
    ppLine167: TppLine;
    ppLine168: TppLine;
    ppDBCalc222: TppDBCalc;
    ppDBCalc223: TppDBCalc;
    ppDBCalc237: TppDBCalc;
    ppDBCalc238: TppDBCalc;
    ppDBCalc239: TppDBCalc;
    ppDBCalc240: TppDBCalc;
    ppDBCalc241: TppDBCalc;
    ppGroup41: TppGroup;
    ppGroupHeaderBand41: TppGroupHeaderBand;
    ppDBText276: TppDBText;
    ppDBText279: TppDBText;
    ppLine165: TppLine;
    ppLabel660: TppLabel;
    ppLabel661: TppLabel;
    ppLabel662: TppLabel;
    ppLine195: TppLine;
    ppLabel663: TppLabel;
    ppLabel664: TppLabel;
    ppLabel665: TppLabel;
    ppLabel666: TppLabel;
    ppLabel667: TppLabel;
    ppLabel668: TppLabel;
    ppLabel669: TppLabel;
    ppLabel670: TppLabel;
    ppLabel671: TppLabel;
    ppLabel672: TppLabel;
    ppLabel673: TppLabel;
    ppLabel674: TppLabel;
    ppLabel675: TppLabel;
    ppLabel676: TppLabel;
    ppGroupFooterBand41: TppGroupFooterBand;
    ppLabel678: TppLabel;
    ppLine166: TppLine;
    ppLine164: TppLine;
    ppDBCalc203: TppDBCalc;
    ppDBCalc204: TppDBCalc;
    ppDBCalc206: TppDBCalc;
    ppDBCalc233: TppDBCalc;
    ppDBCalc234: TppDBCalc;
    ppDBCalc235: TppDBCalc;
    ppDBCalc236: TppDBCalc;
    DbRepUserDet: TppDBPipeline;
    ppDBData02: TppDBPipeline;
    RepUserDet: TppReport;
    ppHeaderBand2: TppHeaderBand;
    lblTitulo: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine5: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine6: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    lblEfect: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel36: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLine9: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine10: TppLine;
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
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel55: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    pnlNoCob: TPanel;
    BitNoCob: TBitBtn;
    rdbResumen: TRadioButton;
    rdbDetalle: TRadioButton;
    ppDBData02No: TppDBPipeline;
    DbRepUserDetNo: TppDBPipeline;
    RepUserDetNo: TppReport;
    ppHeaderBand3: TppHeaderBand;
    lblTitulo02: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine13: TppLine;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLine14: TppLine;
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
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel83: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLine17: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine18: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLabel102: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    DbRepDetx: TppDBPipeline;
    RepDetx: TppReport;
    ppHeaderBand36: TppHeaderBand;
    lblTitulo04: TppLabel;
    ppLabel677: TppLabel;
    ppLabel103: TppLabel;
    ppLabel689: TppLabel;
    ppLabel732: TppLabel;
    ppLabel733: TppLabel;
    ppSystemVariable77: TppSystemVariable;
    ppSystemVariable78: TppSystemVariable;
    ppSystemVariable79: TppSystemVariable;
    ppLabel734: TppLabel;
    ppLabel735: TppLabel;
    ppLabel736: TppLabel;
    ppDetailBand38: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText289: TppDBText;
    ppDBText305: TppDBText;
    ppDBText291: TppDBText;
    ppFooterBand31: TppFooterBand;
    ppSummaryBand36: TppSummaryBand;
    ppLabel737: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppLabel750: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine196: TppLine;
    ppLabel738: TppLabel;
    ppLine197: TppLine;
    ppLabel741: TppLabel;
    ppLabel742: TppLabel;
    ppLabel743: TppLabel;
    ppLabel744: TppLabel;
    ppLabel745: TppLabel;
    ppLabel747: TppLabel;
    ppLabel748: TppLabel;
    ppDBText310: TppDBText;
    ppDBText309: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel755: TppLabel;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppDBCalc242: TppDBCalc;
    ppDBCalc246: TppDBCalc;
    ppLabel749: TppLabel;
    BitGenMesPro: TBitBtn;
    Panel1: TPanel;
    rdbGeneral: TRadioButton;
    rdbActivos: TRadioButton;
    rdbCesantes: TRadioButton;
    BitExporta: TBitBtn;
    dtgData: TDBGrid;
    BitOriRec: TBitBtn;
    DbRepCobOri: TppDBPipeline;
    RepCobOri: TppReport;
    ppHeaderBand41: TppHeaderBand;
    ppLine211: TppLine;
    ppLine212: TppLine;
    ppLabel850: TppLabel;
    ppLabel851: TppLabel;
    ppLabel852: TppLabel;
    ppLabel853: TppLabel;
    ppLabel855: TppLabel;
    ppLabel857: TppLabel;
    ppLabel858: TppLabel;
    ppLabel859: TppLabel;
    ppLabel860: TppLabel;
    ppLabel861: TppLabel;
    ppLabel862: TppLabel;
    ppSystemVariable83: TppSystemVariable;
    ppSystemVariable84: TppSystemVariable;
    ppSystemVariable85: TppSystemVariable;
    LblTit: TppLabel;
    ppLabel863: TppLabel;
    ppLabel864: TppLabel;
    ppLabel865: TppLabel;
    ppLabel350: TppLabel;
    ppLabel353: TppLabel;
    ppDetailBand44: TppDetailBand;
    ppDBText341: TppDBText;
    ppDBText342: TppDBText;
    ppDBText343: TppDBText;
    ppDBText368: TppDBText;
    ppDBText172: TppDBText;
    ppDBText175: TppDBText;
    ppDBText344: TppDBText;
    ppFooterBand36: TppFooterBand;
    ppSummaryBand41: TppSummaryBand;
    ppDBCalc249: TppDBCalc;
    ppDBCalc250: TppDBCalc;
    ppDBCalc251: TppDBCalc;
    ppLine213: TppLine;
    ppLabel866: TppLabel;
    ppLine214: TppLine;
    ppDBCalc155: TppDBCalc;
    ppDBCalc252: TppDBCalc;
    ppDBCalc285: TppDBCalc;
    chkCampo: TCheckBox;
    lblInfAct: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure dbsMesIniChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitGenerarClick(Sender: TObject);
    procedure BitVrfGenClick(Sender: TObject);
    procedure BitAplDesClick(Sender: TObject);
    procedure BitEfecCobClick(Sender: TObject);
    procedure dtgCabTelDblClick(Sender: TObject);
    procedure BitNoCobClick(Sender: TObject);
    procedure dtgCabTelRowChanged(Sender: TObject);
    procedure BitGenMesProClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
    procedure BitOriRecClick(Sender: TObject);
  private
    { Private declarations }
    function UltMesDes(xPeriodo:String):String;
  public
    { Public declarations }
  end;

var
  fGenCobTel: TfGenCobTel;

implementation

uses COBDM1, COB948, COB921, COB950, COB971;

{$R *.dfm}

procedure TfGenCobTel.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfGenCobTel.dbsMesIniChange(Sender: TObject);
begin
  lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');
end;

procedure TfGenCobTel.FormActivate(Sender: TObject);
begin
  dbsAnoIni.MinValue:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4));
  dbsAnoIni.MaxValue:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4));

  dbsMesIni.MinValue:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));
  dbsMesIni.MaxValue:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));

  dbsAnoIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)); dbsMesIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));
  lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');

end;

procedure TfGenCobTel.BitGenerarClick(Sender: TObject);
var xSQL,xPeriodo,xPerCob,xfIni,xfFin:String;
    xAno,xMes:Integer;
    xGenInf:Boolean;
begin
  Try
    Screen.Cursor := crHourglass;
    xPerCob:=Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])); xGenInf:=True;
    If StrToInt(dbsMesIni.Text)=1 Then  Begin  xAno := StrToInt(dbsAnoIni.Text)-1 ;  xMes := 12;  End   Else  Begin xAno := StrToInt(dbsAnoIni.Text);  xMes := StrToInt(dbsMesIni.Text)-1;   End;
    xPeriodo:=IntToStr(xAno)+Format('%.2d',[xMes]);   xfIni:='01/'+Format('%.2d',[StrToInt(Trim(Copy(xPeriodo,5,2)))])+'/'+Trim(Copy(xPeriodo,1,4));   xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(xPeriodo,5,2))),StrToInt(Trim(Copy(xPeriodo,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(xPeriodo,5,2)))])+'/'+Trim(Copy(xPeriodo,1,4));
    xSQL:='SELECT PERCOB FROM COB400 WHERE PERCOB='+QuotedStr(xPerCob);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount > 0 Then
       Begin
          xGenInf:=False;
       End;
       DM1.cdsQry.Close;

    If xGenInf Then
          xSQL:='SELECT A.TIPDESEID,B.TIPDESEABR,COUNT(*) REGISTROS FROM CRE301 A,CRE104 B WHERE CREFOTORG BETWEEN '+QuotedStr(xfIni)+' AND '+QuotedStr(xfFin)+' AND A.TIPDESEID=B.TIPDESEID(+) '+
                'AND CREESTID NOT IN (''04'',''13'') AND NOT EXISTS (SELECT ASOID,CREDID FROM CRE302 WHERE A.ASOID=ASOID AND A.CREDID=CREDID AND CREESTID NOT IN (''04'',''13'')) GROUP BY A.TIPDESEID,B.TIPDESEABR '
    Else
          xSQL:='SELECT A.TIPDESEID,B.TIPDESEABR,COUNT(*) REGISTROS FROM CRE301 A,CRE104 B WHERE ASOID=''$%^&*()#@!''  AND A.TIPDESEID=B.TIPDESEID(+) '+
                'AND CREESTID NOT IN (''04'',''13'') AND NOT EXISTS (SELECT ASOID,CREDID FROM CRE302 WHERE A.ASOID=ASOID AND A.CREDID=CREDID AND CREESTID NOT IN (''04'',''13'')) GROUP BY A.TIPDESEID,B.TIPDESEABR ';

    DM1.cdsTCredito.Close;
    DM1.cdsTCredito.DataRequest(xSQL);
    DM1.cdsTCredito.Open;
    Screen.Cursor := crDefault;
    fGenTipCob := TfGenTipCob.Create(Self);
    If DM1.cdsTCredito.RecordCount > 0 Then
       Begin
          fGenTipCob.BitGnrDes.Enabled:=False;
          fGenTipCob.BitGenera.Enabled:=True;
       End;

    fGenTipCob.dbsAnoIni.Text:=dbsAnoIni.Text;
    fGenTipCob.dbsMesIni.Text:=dbsMesIni.Text;
    fGenTipCob.lblNomMes.Caption:=lblNomMes.Caption;
    fGenTipCob.ShowModal;

  Finally
    fGenTipCob.Free;
  end;

end;

procedure TfGenCobTel.BitVrfGenClick(Sender: TObject);
begin
  Try
    dbsAnoIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);  dbsMesIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
    fGnrVerTel := TfGnrVerTel.Create(Self);
    fGnrVerTel.seAno.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);
    fGnrVerTel.seMes.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
    fGnrVerTel.ShowModal;
  Finally
    fGnrVerTel.Free;
  end;

end;

procedure TfGenCobTel.BitAplDesClick(Sender: TObject);
begin
  Try
    dbsAnoIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);  dbsMesIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
    fAplDesTel := TfAplDesTel.Create(Self);
    fAplDesTel.dbsAnoIni.Text:=dbsAnoIni.Text;
    fAplDesTel.dbsMesIni.Text:=dbsMesIni.Text;
    fAplDesTel.lblNomMes.Caption:=lblNomMes.Caption;
    fAplDesTel.ShowModal;
  Finally
    fAplDesTel.Free;
  end;

end;

procedure TfGenCobTel.BitEfecCobClick(Sender: TObject);
var xSQL,xWhere,xTipAso,xTitulo,xCampo:String;
begin
Screen.Cursor := crHourglass;
dbsAnoIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);  dbsMesIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
If rdbGeneral.Checked Then   Begin  xWhere:=' '; xTitulo:='('+UpperCase(rdbGeneral.Caption)+')';    End;
If rdbActivos.Checked Then   Begin  xWhere:=' AND ASOTIPID=''DO'' ';  xTitulo:='('+UpperCase(rdbActivos.Caption)+')';   End;
If rdbCesantes.Checked Then  Begin  xWhere:=' AND ASOTIPID=''CE'' ';   xTitulo:='('+UpperCase(rdbCesantes.Caption)+')'; End;
If chkCampo.Checked Then Begin  xCampo:='MONRECPRE'; lblInfAct.Caption:='PRELIMINAR : '+UltMesDes(dbsAnoIni.Text+dbsMesIni.Text);   End  Else Begin xCampo:='MONRECUP'; lblInfAct.Caption:='OFICIAL';  End;

xSQL:='SELECT SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO, '+
      'SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,(SUM(REGISTROS)-SUM(REGCOB)) REGSAL, '+
      '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, '+
      'NVL('+xCampo+',0) MONRECUP,1 REGISTROS, CASE WHEN NVL('+xCampo+',0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C '+
      'WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+)  AND  A.IDTIPCOB=C.IDTIPCOB(+) AND NVL(A.MONENVIO,0)>0 '+xWhere+' )';
DM1.cdsQry4.Close;
DM1.cdsQry4.DataRequest(xSQL);
DM1.cdsQry4.Open;
If DM1.cdsQry4.FieldByName('MONENVIO').AsFloat > 0 Then
   Begin
     lblEfect.Caption:='Efectividad De Recuperación :  ' +FloatToStrF(DM1.cdsQry4.FieldByName('P_REC').AsCurrency,ffNumber, 10, 2)+' %' ;
     lblEfect01.Caption:=lblEfect.Caption;
   End
Else
   Begin
     lblEfect.Caption:='';lblEfect01.Caption:=lblEfect.Caption;
   End;
DM1.cdsQry4.Close;

Screen.Cursor := crDefault;
If rdbDet.Checked Then
   Begin
   Screen.Cursor := crHourglass;
   xSQL:='SELECT PROVBCOID,PROVBCODES,IDTIPCOB,DESTIPCOB,SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO, '+
         'SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,(SUM(REGISTROS)-SUM(REGCOB)) REGSAL, '+
         '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, '+
         'NVL(MONRECUP,0) MONRECUP,1 REGISTROS, CASE WHEN NVL(MONRECUP,0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C '+
         'WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+)  AND  A.IDTIPCOB=C.IDTIPCOB(+) '+xWhere+') '+
         'GROUP BY PROVBCOID,PROVBCODES,IDTIPCOB,DESTIPCOB ORDER BY PROVBCOID,PROVBCODES,IDTIPCOB,DESTIPCOB ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount > 0 Then
      Begin
          lblTitulo01.Caption:='DETALLES DE EFECTIVIDAD DE COBRANZA POR TELEAHORROS  '+Trim(lblNomMes.Caption)+'-'+Trim(dbsAnoIni.Text)+' '+xTitulo  ;
          RepUser.Print;
          RepUser.Cancel;
      End;
      DM1.cdsQry4.Close;
   Screen.Cursor := crDefault;
   End;

If rdbRes.Checked Then
   Begin

   //'+QuotedStr(xCampo)+'
   Screen.Cursor := crHourglass;
{   xSQL:='SELECT PROVBCOID,PROVBCODES,SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO, '+
         'SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,(SUM(REGISTROS)-SUM(REGCOB)) REGSAL, '+
         '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, '+
         'NVL(MONRECUP,0) MONRECUP,1 REGISTROS, CASE WHEN NVL(MONRECUP,0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C '+
         'WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+)  AND  A.IDTIPCOB=C.IDTIPCOB(+)'+xWhere+' ) '+
         'GROUP BY PROVBCOID,PROVBCODES ORDER BY PROVBCOID,PROVBCODES '; }

   xSQL:='SELECT PROVBCOID,PROVBCODES,SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO, '+
         'SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,(SUM(REGISTROS)-SUM(REGCOB)) REGSAL, '+
         '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, '+
         'NVL('+xCampo+',0) MONRECUP,1 REGISTROS, CASE WHEN NVL('+xCampo+',0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C '+
         'WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+)  AND  A.IDTIPCOB=C.IDTIPCOB(+)'+xWhere+' ) '+
         'GROUP BY PROVBCOID,PROVBCODES ORDER BY PROVBCOID,PROVBCODES ';



   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount > 0 Then
      Begin
        {  xSQL:='SELECT IDTIPCOB,DESTIPCOB,SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO,SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,SUM(REGISTROS-REGCOB) REGSAL, '+
                '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, NVL(MONRECUP,0) MONRECUP,1 REGISTROS, '+
                'CASE WHEN NVL(MONRECUP,0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+) AND  A.IDTIPCOB=C.IDTIPCOB(+)'+xWhere+' ) '+
                'GROUP BY IDTIPCOB,DESTIPCOB ORDER BY IDTIPCOB,DESTIPCOB '; }

          xSQL:='SELECT IDTIPCOB,DESTIPCOB,SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO,SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,SUM(REGISTROS-REGCOB) REGSAL, '+
                '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, NVL('+xCampo+',0) MONRECUP,1 REGISTROS, '+
                'CASE WHEN NVL('+xCampo+',0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+) AND  A.IDTIPCOB=C.IDTIPCOB(+)'+xWhere+' ) '+
                'GROUP BY IDTIPCOB,DESTIPCOB ORDER BY IDTIPCOB,DESTIPCOB ';

                DM1.cdsQry3.Close;
                DM1.cdsQry3.DataRequest(xSQL);
                DM1.cdsQry3.Open;
                If DM1.cdsQry3.RecordCount > 0 Then
                   Begin
                      lblTitulo.Caption:='RESUMEN DE EFECTIVIDAD DE COBRANZA POR TELEAHORROS  '+Trim(lblNomMes.Caption)+'-'+Trim(dbsAnoIni.Text)+' '+xTitulo  ;
                      RepUserDet.Print;
                      RepUserDet.Cancel;
                   End;
                   DM1.cdsQry3.Close;
      End;
      DM1.cdsQry4.Close;

   Screen.Cursor := crDefault;
   End;

end;

procedure TfGenCobTel.dtgCabTelDblClick(Sender: TObject);
begin
  dbsAnoIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);  dbsMesIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
  Try
    dbsAnoIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);  dbsMesIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
    fCapInfTelDia := TfCapInfTelDia.Create(Self);
    fCapInfTelDia.dbsAnoIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);
    fCapInfTelDia.dbsMesIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
    fCapInfTelDia.lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');
    fCapInfTelDia.ShowModal;
  Finally
    fCapInfTelDia.Free;
  end;


end;

procedure TfGenCobTel.BitNoCobClick(Sender: TObject);
var xSQL,xWhere,xTipAso,xTitulo:String;
begin
Screen.Cursor := crHourglass;
dbsAnoIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);  dbsMesIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
If rdbGeneral.Checked Then   Begin  xWhere:=' '; xTitulo:='('+UpperCase(rdbGeneral.Caption)+')';    End;
If rdbActivos.Checked Then   Begin  xWhere:=' AND ASOTIPID=''DO'' ';  xTitulo:='('+UpperCase(rdbActivos.Caption)+')';   End;
If rdbCesantes.Checked Then  Begin  xWhere:=' AND ASOTIPID=''CE'' ';   xTitulo:='('+UpperCase(rdbCesantes.Caption)+')'; End;

xSQL:='SELECT SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO, '+
      'SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,(SUM(REGISTROS)-SUM(REGCOB)) REGSAL, '+
      '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, '+
      'NVL(MONRECUP,0) MONRECUP,1 REGISTROS, CASE WHEN NVL(MONRECUP,0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C '+
      'WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+)  AND  A.IDTIPCOB=C.IDTIPCOB(+) AND NVL(MONRECUP,0)=0 AND NVL(MONENVIO,0)>0 '+xWhere+')';
DM1.cdsQry4.Close;
DM1.cdsQry4.DataRequest(xSQL);
DM1.cdsQry4.Open;
If DM1.cdsQry4.FieldByName('MONENVIO').AsFloat > 0 Then
   Begin
     lblEfect.Caption:='Efectividad De Recuperación :  ' +FloatToStrF(DM1.cdsQry4.FieldByName('P_REC').AsCurrency,ffNumber, 10, 2)+' %' ;
     lblEfect01.Caption:=lblEfect.Caption;
   End
Else
   Begin
     lblEfect.Caption:='';lblEfect01.Caption:=lblEfect.Caption;
   End;
DM1.cdsQry4.Close;

Screen.Cursor := crDefault;
If rdbDetalle.Checked Then
   Begin
   Screen.Cursor := crHourglass;
   xSQL:='SELECT  A.PROVBCOID,B.PROVBCODES,ASONCTA,SITCTA,ASODNI,ASOAPENOM,MONENVIO FROM COB402 A,APO213 B WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+) AND NVL(MONRECUP,0)=0 '+xWhere+' ORDER BY PROVBCOID,ASOAPENOM ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount > 0 Then
      Begin
          lblTitulo04.Caption:='DETALLES DE COBRANZA NO EFECTUADA POR TELEAHORROS   '+Trim(lblNomMes.Caption)+'-'+Trim(dbsAnoIni.Text)+' '+xTitulo  ;
          RepDetx.Print;
          RepDetx.Cancel;
      End;
      DM1.cdsQry4.Close;
   Screen.Cursor := crDefault;
   End;

If rdbResumen.Checked Then
   Begin
   Screen.Cursor := crHourglass;
   xSQL:='SELECT PROVBCOID,PROVBCODES,SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO, '+
         'SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,(SUM(REGISTROS)-SUM(REGCOB)) REGSAL, '+
         '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, '+
         'NVL(MONRECUP,0) MONRECUP,1 REGISTROS, CASE WHEN NVL(MONRECUP,0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C '+
         'WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+)  AND  A.IDTIPCOB=C.IDTIPCOB(+) AND NVL(MONRECUP,0)=0 '+xWhere+' )  '+
         'GROUP BY PROVBCOID,PROVBCODES ORDER BY PROVBCOID,PROVBCODES ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount > 0 Then
      Begin
          xSQL:='SELECT IDTIPCOB,DESTIPCOB,SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO,SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,SUM(REGISTROS-REGCOB) REGSAL, '+
                '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, NVL(MONRECUP,0) MONRECUP,1 REGISTROS, '+
                'CASE WHEN NVL(MONRECUP,0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+) AND  A.IDTIPCOB=C.IDTIPCOB(+) AND NVL(MONRECUP,0)=0 '+xWhere+') '+
                'GROUP BY IDTIPCOB,DESTIPCOB ORDER BY IDTIPCOB,DESTIPCOB ';
                DM1.cdsQry3.Close;
                DM1.cdsQry3.DataRequest(xSQL);
                DM1.cdsQry3.Open;
                If DM1.cdsQry3.RecordCount > 0 Then
                   Begin
                      lblTitulo02.Caption:='RESUMEN DE COBRANZA NO EFECTUADA POR TELEAHORROS  '+Trim(lblNomMes.Caption)+'-'+Trim(dbsAnoIni.Text)+' '+xTitulo  ;
                      RepUserDetNo.Print;
                      RepUserDetNo.Cancel;
                   End;
                   DM1.cdsQry3.Close;
      End;
      DM1.cdsQry4.Close;

   Screen.Cursor := crDefault;
   End;

end;

procedure TfGenCobTel.dtgCabTelRowChanged(Sender: TObject);
begin
dbsAnoIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);  dbsMesIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
end;

procedure TfGenCobTel.BitGenMesProClick(Sender: TObject);
var xSQL,xPeriodo,xPerCob,xfIni,xfFin,xMsgCambio:String;
    Boton,xAno,xMes:Integer;
begin
  Screen.Cursor := crHourglass;
  dbsAnoIni.MinValue:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)); dbsAnoIni.MaxValue:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4));
  dbsMesIni.MinValue:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2)); dbsMesIni.MaxValue:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));
  dbsAnoIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)); dbsMesIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));
  lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');
  dbsAnoIni.Refresh; dbsMesIni.Refresh;  lblNomMes.Refresh;
  xPerCob:=Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]));
  If StrToInt(dbsMesIni.Text)=1 Then  Begin  xAno := StrToInt(dbsAnoIni.Text)-1 ;  xMes := 12;  End   Else  Begin xAno := StrToInt(dbsAnoIni.Text);  xMes := StrToInt(dbsMesIni.Text)-1;   End;
  xPeriodo:=IntToStr(xAno)+Format('%.2d',[xMes]);   xfIni:='01/'+Format('%.2d',[StrToInt(Trim(Copy(xPeriodo,5,2)))])+'/'+Trim(Copy(xPeriodo,1,4));   xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(xPeriodo,5,2))),StrToInt(Trim(Copy(xPeriodo,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(xPeriodo,5,2)))])+'/'+Trim(Copy(xPeriodo,1,4));
  xSQL:='SELECT ASOID,CREDID FROM CRE301 A WHERE CREFOTORG BETWEEN '+QuotedStr(xfIni)+' AND '+QuotedStr(xfFin)+' AND CREESTID NOT IN (''04'',''13'') AND NOT EXISTS (SELECT ASOID,CREDID FROM CRE302 WHERE A.ASOID=ASOID AND A.CREDID=CREDID AND CREESTID NOT IN (''04'',''13''))  ';
  DM1.cdsTCredito.Close;
  DM1.cdsTCredito.DataRequest(xSQL);
  DM1.cdsTCredito.Open;
  fGenTipCob := TfGenTipCob.Create(Self);
  If DM1.cdsTCredito.RecordCount > 0 Then
     Begin
         Screen.Cursor := crDefault;
         MessageDlg('Existen '+IntToStr(DM1.cdsTCredito.RecordCount)+' Prestamos Sin Cronogramas De Pago Del Periodo : '+xfIni+' - '+xfFin, mtError, [mbOk], 0);
         Exit;
     End;
Screen.Cursor := crDefault;
xMsgCambio:='Seguro De Marcar la Cuotas En Proceso De Cobranza Para El Periodo : '+Trim(lblNomMes.Caption)+' - '+dbsAnoIni.Text+' ';
Boton := Application.MessageBox (pChar(xMsgCambio),'Tipo De Descuento',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin
     Screen.Cursor := crHourglass;
     xSQL:='UPDATE CRE302 SET CREESTID=''14'',CREESTADO=''EN PROCESO DE COBRANZA'',PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' WHERE CREANO='+QuotedStr(Trim(dbsAnoIni.Text))+' AND CREMES='+QuotedStr(Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))+' AND FORPAGOID=''18'' AND CREESTID IN (''02'',''11'',''27'') '+
           'AND (NVL(CREMTO,0)-NVL(CREMTOCOB,0))>0 ';
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     Screen.Cursor := crDefault;
     MessageDlg('El Proceso De MARCAR CUOTAS PARA EL DESCUENTO Ha Concluido Con Exito', mtInformation, [mbOk], 0);
   End;
end;

procedure TfGenCobTel.BitExportaClick(Sender: TObject);
var
  xSQL,xWhere,xTipAso,xTitulo:String;
begin
Screen.Cursor := crHourglass;
dbsAnoIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);  dbsMesIni.Text:=Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2);
If rdbGeneral.Checked Then   Begin  xWhere:=' '; xTitulo:='('+UpperCase(rdbGeneral.Caption)+')';    End;
If rdbActivos.Checked Then   Begin  xWhere:=' AND ASOTIPID=''DO'' ';  xTitulo:='('+UpperCase(rdbActivos.Caption)+')';   End;
If rdbCesantes.Checked Then  Begin  xWhere:=' AND ASOTIPID=''CE'' ';   xTitulo:='('+UpperCase(rdbCesantes.Caption)+')'; End;

xSQL:='SELECT SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO, '+
      'SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,(SUM(REGISTROS)-SUM(REGCOB)) REGSAL, '+
      '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, '+
      'NVL(MONRECUP,0) MONRECUP,1 REGISTROS, CASE WHEN NVL(MONRECUP,0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C '+
      'WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+)  AND  A.IDTIPCOB=C.IDTIPCOB(+) AND NVL(MONRECUP,0)=0 AND NVL(MONENVIO,0)>0 '+xWhere+')';
DM1.cdsQry4.Close;
DM1.cdsQry4.DataRequest(xSQL);
DM1.cdsQry4.Open;
If DM1.cdsQry4.FieldByName('MONENVIO').AsFloat > 0 Then
   Begin
     lblEfect.Caption:='Efectividad De Recuperación :  ' +FloatToStrF(DM1.cdsQry4.FieldByName('P_REC').AsCurrency,ffNumber, 10, 2)+' %' ;
     lblEfect01.Caption:=lblEfect.Caption;
   End
Else
   Begin
     lblEfect.Caption:='';lblEfect01.Caption:=lblEfect.Caption;
   End;
DM1.cdsQry4.Close;

Screen.Cursor := crDefault;
If rdbDetalle.Checked Then
   Begin
   Screen.Cursor := crHourglass;   
   xSQL:='SELECT A.PROVBCOID,B.PROVBCODES,DPTODES "DEPARTAMENTO(LABORAL)",USENOM "USES/UGEL", '+
         'ASOCODMOD "CODIGO MODULAR",ASOTIPID,ASOAPENOM "APELLIDOS Y NOMBRES",ASODNI "D.N.I.",ASONCTA,SITCTA, ASODIR "DIRECCION DOMICILIARIA",DPTODIR "DEPARTAMENTO(DOMICILIO)",CIUDDES "PROVINCIA(DOMICILIO)",ZIPDES "DISTRITO(DOMICILIO)", '+
         'ASOTELF "TELEFONOS",CUODES,CUOVEN,ANTDEU,ULTPAG,ULTAPO FROM (SELECT PROVBCOID,B.ASODNI,B.ASONCTA,B.SITCTA,A.ASOTIPID,C.DPTODES,A.ASOID,B.ASOCODMOD,A.ASOAPENOM,B.USEID,F.USENOM,B.UPAGOID,B.UPROID, B.DPTOID,ASODIR,ASODPTO, '+
         'MONENVIO CUODES,CUOVEN,ANTDEU,ULTPAG,ULTAPO, C.DPTODES DPTODIR,B.CIUDID,NVL(D.CIUDDES,''NO IDENTIFICADO'') CIUDDES,B.ZIPID,NVL(E.ZIPDES,''NO IDENTIFICADO'') ZIPDES,NVL(B.ASOTELF1,B.ASOTELF1) ASOTELF '+
         'FROM COB402 A,APO201 B,APO158 C,TGE121 D,APO122 E,APO101 F WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND NVL(MONRECUP,0)=0 AND A.SITCTA IN (''A'',''V'' ) AND A.ASOID=B.ASOID(+) AND B.DPTOID=C.DPTOID(+) AND B.CIUDID=D.DPTOID(+)||D.CIUDID(+) AND B.ZIPID=E.ZIPID(+) AND B.USEID=F.USEID(+)  AND B.UPAGOID=F.UPAGOID(+) AND B.UPROID=F.UPROID(+)) A,APO213 B '+
         'WHERE A.PROVBCOID=B.PROVBCOID(+) ORDER BY PROVBCOID,DPTODES,USENOM,ASOAPENOM  ';     
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount > 0 Then
   Begin
     	Screen.Cursor:= crHourGlass;
     	try
         dtgData.DataSource:=DM1.dsQry4;
         DM1.HojaExcel('DETALLES_COBRANZA_NO_EFECTUADA',DM1.dsQry4, dtgData);
     	except
       on Ex: Exception do
   			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
     	end;
     	Screen.Cursor:= crDefault;
   End;
   DM1.cdsQry4.Close;
   Screen.Cursor := crDefault;
   End;

If rdbResumen.Checked Then
   Begin
   Screen.Cursor := crHourglass;
   xSQL:='SELECT PROVBCOID,PROVBCODES,SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO, '+
         'SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,(SUM(REGISTROS)-SUM(REGCOB)) REGSAL, '+
         '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, '+
         'NVL(MONRECUP,0) MONRECUP,1 REGISTROS, CASE WHEN NVL(MONRECUP,0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C '+
         'WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+)  AND  A.IDTIPCOB=C.IDTIPCOB(+) AND NVL(MONRECUP,0)=0 '+xWhere+' )  '+
         'GROUP BY PROVBCOID,PROVBCODES ORDER BY PROVBCOID,PROVBCODES ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount > 0 Then
      Begin
          xSQL:='SELECT IDTIPCOB,DESTIPCOB,SUM(CRESALDO) CRESALDO,SUM(MONENVIO) MONENVIO,SUM(MONRECUP) MONRECUP,SUM(REGISTROS) REGISTROS,SUM(REGCOB) REGCOB,(SUM(MONENVIO)-SUM(MONRECUP)) SALDO,SUM(REGISTROS-REGCOB) REGSAL, '+
                '(SUM(NVL(MONRECUP,0))/SUM(NVL(MONENVIO,0))*100) P_REC FROM (SELECT A.PROVBCOID,B.PROVBCODES,A.IDTIPCOB,C.DESTIPCOB,NVL(CRESALDO,0) CRESALDO,NVL(MONENVIO,0) MONENVIO, NVL(MONRECUP,0) MONRECUP,1 REGISTROS, '+
                'CASE WHEN NVL(MONRECUP,0)>0  THEN 1 ELSE  0  END AS REGCOB FROM COB402 A,APO213 B,COB117 C WHERE PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+) AND  A.IDTIPCOB=C.IDTIPCOB(+) AND NVL(MONRECUP,0)=0 '+xWhere+') '+
                'GROUP BY IDTIPCOB,DESTIPCOB ORDER BY IDTIPCOB,DESTIPCOB ';
                DM1.cdsQry3.Close;
                DM1.cdsQry3.DataRequest(xSQL);
                DM1.cdsQry3.Open;
                If DM1.cdsQry3.RecordCount > 0 Then
                Begin
                     Screen.Cursor:= crHourGlass;
                   try
                      dtgData.DataSource:=DM1.dsQry4;
                      DM1.HojaExcel('RESUMEN_COBRANZA_NO_EFECTUADA',DM1.dsQry4, dtgData);
                   except
                    on Ex: Exception do
                     Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
                   end;
                   Screen.Cursor:= crDefault;
                End;
                DM1.cdsQry3.Close;
      End;
      DM1.cdsQry4.Close;

   Screen.Cursor := crDefault;
   End;

end;

procedure TfGenCobTel.BitOriRecClick(Sender: TObject);
var xSQL,xPerCob,xfIni,xfFin:String;
begin
    Screen.Cursor := crHourglass;
    xPerCob:=Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]));
    xfIni:='01/'+Format('%.2d',[StrToInt(Trim(Copy(xPerCob,5,2)))])+'/'+Trim(Copy(xPerCob,1,4));   xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(xPerCob,5,2))),StrToInt(Trim(Copy(xPerCob,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(xPerCob,5,2)))])+'/'+Trim(Copy(xPerCob,1,4));
    xSQL:='SELECT OFDESNOM,SUM(NUMCUO) NUMCUO,SUM(CREMTOCOB) CREMTOCOB,SUM(CREAMORT) CREAMORT, SUM(CREINTERES) CREINTERES,SUM(CREFLAT) CREFLAT,SUM(CREMTOEXC) CREMTOEXC FROM( '+
          'SELECT B.OFDESID,C.OFDESNOM,A.USEID,A.UPAGOID,A.UPROID,NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREAMORT,0) CREAMORT,NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT,NVL(CREMTOEXC,0) CREMTOEXC,1 NUMCUO '+
          'FROM CRE310 A,APO101 B,APO110 C WHERE CREFPAG BETWEEN '+QuotedStr(xfIni)+' AND '+QuotedStr(xfFin)+' AND FORPAGID=''18'' AND CREESTID NOT IN (''04'',''13'') AND A.USEID(+)=B.USEID  AND A.UPAGOID(+)=B.UPAGOID AND A.UPROID(+)=B.UPROID AND B.OFDESID=C.OFDESID) GROUP BY OFDESNOM ';
    DM1.cdsQry6.Close;
    DM1.cdsQry6.DataRequest(xSQL);
    DM1.cdsQry6.Open;
    If DM1.cdsQry6.RecordCount > 0 Then
       Begin
          LblTit.Caption:='RESUMEN DE COBRANZA POR ORIGEN DEL ASOCIADO DE : '+DM1.DesMes(StrToInt(Trim(dbsMesIni.Text)),'N')+'-'+dbsAnoIni.Text+' - TELEAHORROS';
          RepCobOri.Print;
          RepCobOri.Cancel;
       End;
       DM1.cdsQry6.Close;

    Screen.Cursor := crDefault;
end;

function TfGenCobTel.UltMesDes(xPeriodo: String): String;
var xSQL:String;
begin
  Result:='NINGUN DESCARGO';
  xSQL:='SELECT MAX(DIAPROINF) DIAPROINF FROM COB_MON_REC_PRE WHERE PERIODO='+QuotedStr(xPeriodo);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  If Length(Trim(DM1.cdsQry.FieldByName('DIAPROINF').AsString)) > 0 Then
     Begin
        Result:=DM1.cdsQry.FieldByName('DIAPROINF').AsString;
     End;

end;

end.
