unit COB949;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask,
  wwdbedit, Wwdbspin, ExtCtrls, Db, ppBands, ppClass, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TfDetTipCob = class(TForm)
    GroupBox1: TGroupBox;
    dtgCobTelDet: TwwDBGrid;
    grbProcesos: TGroupBox;
    prbAvances: TProgressBar;
    BitSalir: TBitBtn;
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    lblTipCob: TLabel;
    grbPorc: TGroupBox;
    pnlPorc: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    dbsPorc: TwwDBSpinEdit;
    BitAplica: TBitBtn;
    grbBuscar: TGroupBox;
    Label8: TLabel;
    EdtBuscar: TEdit;
    rdbAsoApe: TRadioButton;
    rdbAsoCta: TRadioButton;
    BitCtasInac: TBitBtn;
    DbRepDetx: TppDBPipeline;
    RepDetx: TppReport;
    ppHeaderBand36: TppHeaderBand;
    lblTitulo01: TppLabel;
    ppLabel677: TppLabel;
    ppLabel678: TppLabel;
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
    ppDBText277: TppDBText;
    ppDBText279: TppDBText;
    ppDBText289: TppDBText;
    ppDBText305: TppDBText;
    ppDBText291: TppDBText;
    ppFooterBand31: TppFooterBand;
    ppSummaryBand36: TppSummaryBand;
    ppLabel737: TppLabel;
    ppLine164: TppLine;
    ppLine166: TppLine;
    ppDBCalc203: TppDBCalc;
    ppDBCalc233: TppDBCalc;
    ppLabel750: TppLabel;
    ppGroup41: TppGroup;
    ppGroupHeaderBand41: TppGroupHeaderBand;
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
    ppGroupFooterBand41: TppGroupFooterBand;
    ppLabel755: TppLabel;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppDBCalc242: TppDBCalc;
    ppDBCalc246: TppDBCalc;
    ppLabel749: TppLabel;
    pnlInd: TPanel;
    ChkIndividual: TCheckBox;
    Label2: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    lblMonMin: TLabel;
    lblMonMax: TLabel;
    chkRanCuo: TCheckBox;
    pnlRanCuo: TPanel;
    BitMostrar: TBitBtn;
    dbeCuoIni: TwwDBEdit;
    dbeCuoMax: TwwDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitAplicaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rdbAsoApeClick(Sender: TObject);
    procedure rdbAsoCtaClick(Sender: TObject);
    procedure EdtBuscarChange(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure BitCtasInacClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure chkRanCuoClick(Sender: TObject);
    function MonCuota(xTipCuo:String):Currency;
    procedure dbeCuoIniExit(Sender: TObject);
    procedure dbeCuoMaxExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetTipCob: TfDetTipCob;

implementation

uses COBDM1, COB948;

{$R *.dfm}

procedure TfDetTipCob.FormActivate(Sender: TObject);
var xCreSaldo,xMonEnvio:Currency;
    xNumAso:Integer;
    xSQL:String;
begin
    xCreSaldo:=0; xMonEnvio:=0; xNumAso:=0;
    If DM1.xSgr='0' Then
       xSQL:='SELECT SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NVL(MONENVIO,0)) MONENVIO,NVL(COUNT(*),0) NUMASO FROM '+
             '(SELECT A.ASOID,A.ASOAPENOM,B.ASONCTA,B.SITCTA,SUM(NVL(A.CRESALDO,0)) CRESALDO,MAX(100) PORENVIO,SUM(NVL(A.CRESALDO,0)) MONENVIO,IDTIPCOB,MAX(A.USUARIO) USUARIO,MAX(A.HREG) HREG '+
             'FROM COB401 A,APO201 B WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND A.ASOID=B.ASOID(+) AND  B.SITCTA NOT IN (''A'',''V'' )  AND B.SITCTA IS NOT NULL '+
             'GROUP BY A.ASOID,A.ASOAPENOM,B.ASONCTA,B.SITCTA,IDTIPCOB)'
    Else
       xSQL:='SELECT SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NVL(MONENVIO,0)) MONENVIO,NVL(COUNT(*),0) NUMASO FROM COB402 WHERE PERCOB='+QuotedStr(Trim(fGenTipCob.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fGenTipCob.dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) ' ;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    xCreSaldo:=DM1.cdsQry.FieldByName('CRESALDO').AsCurrency;
    xMonEnvio:=DM1.cdsQry.FieldByName('MONENVIO').AsCurrency;
    xNumAso:=DM1.cdsQry.FieldByName('NUMASO').AsInteger;
    dtgCobTelDet.ColumnByName('ASOAPENOM').FooterValue :='Total';
    dtgCobTelDet.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
    dtgCobTelDet.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
    dtgCobTelDet.ColumnByName('ASONCTA').FooterValue := FloatToStrF(xNumAso,ffNumber, 7, 0)+' Reg.';
    lblMonMin.Caption:=FloatToStrF(MonCuota('Min'),ffNumber, 10, 2);
    lblMonMax.Caption:=FloatToStrF(MonCuota('Max'),ffNumber, 10, 2);

end;

procedure TfDetTipCob.BitAplicaClick(Sender: TObject);
var xCreSaldo,xMonEnvio:Currency;
    xNumAso:Integer;
    xSQL,xOrder:String;
    xRegistro,tRegistro: TBookmark;
begin
  Screen.Cursor := crHourglass;
  xRegistro:=DM1.cdsDetalle.GetBookmark;
  If rdbAsoApe.Checked Then xOrder:=' Order By ASOAPENOM ';
  If rdbAsoCta.Checked Then xOrder:=' Order By ASONCTA ';

  If ChkIndividual.Checked Then
     Begin
        xSQL:='UPDATE COB402 SET IDTIPCOB=''03'',MONENVIO = (CRESALDO * '+QuotedStr(dbsPorc.Text)+')/100,PORENVIO='+QuotedStr(dbsPorc.Text)+',USUARIO='+QuotedStr(DM1.wUsuario)+',HREG=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsDetalle.FieldByName('ASOID').AsString)+' AND  PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])));
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     End
  Else
     Begin
        grbProcesos.Visible:=True;
        prbAvances.Position := 0; prbAvances.Max:=DM1.cdsDetalle.RecordCount; prbAvances.Position := 1;
        DM1.cdsDetalle.First;
        While Not DM1.cdsDetalle.Eof Do
        Begin
           fDetTipCob.Refresh;
           prbAvances.Position := prbAvances.Position + 1;
           xSQL:='UPDATE COB402 SET MONENVIO = (CRESALDO * '+QuotedStr(dbsPorc.Text)+')/100,PORENVIO='+QuotedStr(dbsPorc.Text)+',USUARIO='+QuotedStr(DM1.wUsuario)+',HREG=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsDetalle.FieldByName('ASOID').AsString)+' AND  PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])));
           DM1.DCOM1.AppServer.EjecutaSql(xSQL);
           DM1.cdsDetalle.Next;
        End;
        prbAvances.Position:=0; grbProcesos.Visible:=False;
     End;
  xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,IDTIPCOB FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) '+xOrder;
  DM1.cdsDetalle.Close;
  DM1.cdsDetalle.DataRequest(xSQL);
  DM1.cdsDetalle.Open;
  TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='###';
  xCreSaldo:=0; xMonEnvio:=0; xNumAso:=0;
  xSQL:='SELECT SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NVL(MONENVIO,0)) MONENVIO,NVL(COUNT(*),0) NUMASO FROM COB402 WHERE PERCOB='+QuotedStr(Trim(fGenTipCob.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fGenTipCob.dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  xCreSaldo:=DM1.cdsQry.FieldByName('CRESALDO').AsCurrency;
  xMonEnvio:=DM1.cdsQry.FieldByName('MONENVIO').AsCurrency;
  xNumAso:=DM1.cdsQry.FieldByName('NUMASO').AsInteger;
  dtgCobTelDet.ColumnByName('ASOAPENOM').FooterValue :='Total';
  dtgCobTelDet.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
  dtgCobTelDet.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
  dtgCobTelDet.ColumnByName('ASONCTA').FooterValue := FloatToStrF(xNumAso,ffNumber, 7, 0)+' Reg.';
  tRegistro:=DM1.cdsSobrino.GetBookmark;
  xSQL:='SELECT A.IDTIPCOB,B.DESTIPCOB,SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NUMASO) NUMASO,SUM(NVL(MONENVIO,0)) MONENVIO FROM '+
        '(SELECT ASOID,IDTIPCOB,SUM(NVL(CRESALDO,0)) CRESALDO, 1 NUMASO,SUM(NVL(MONENVIO,0)) MONENVIO  FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) '+
        'GROUP BY ASOID,IDTIPCOB) A, COB117 B WHERE A.IDTIPCOB=B.IDTIPCOB(+) GROUP BY A.IDTIPCOB,B.DESTIPCOB ';
  DM1.cdsSobrino.Close;
  DM1.cdsSobrino.DataRequest(xSQL);
  DM1.cdsSobrino.Open;
  TNumericField(DM1.cdsSobrino.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsSobrino.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsSobrino.fieldbyname('NUMASO')).DisplayFormat:='###,##0';
  DM1.cdsSobrino.GotoBookmark(tRegistro);
  xCreSaldo:=0; xMonEnvio:=0; xNumAso:=0;
  xSQL:='SELECT SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NVL(MONENVIO,0)) MONENVIO,NVL(COUNT(*),0) NUMASO FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND  SITCTA IN (''A'',''V'' ) ' ;
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  xCreSaldo:=DM1.cdsQry.FieldByName('CRESALDO').AsCurrency;
  xMonEnvio:=DM1.cdsQry.FieldByName('MONENVIO').AsCurrency;
  xNumAso:=DM1.cdsQry.FieldByName('NUMASO').AsInteger;
  fGenTipCob.dtgCobTelTip.ColumnByName('ASOAPENOM').FooterValue :='Total';
  fGenTipCob.dtgCobTelTip.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
  fGenTipCob.dtgCobTelTip.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
  fGenTipCob.dtgCobTelTip.ColumnByName('ASONCTA').FooterValue := FloatToStrF(xNumAso,ffNumber, 7, 0)+' Reg.';
  DM1.cdsQry.Close;
  xSQL:='UPDATE COB400 SET (NUMENV,MONENV)=(SELECT COUNT(*),SUM(NVL(MONENVIO,0)) FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+'  AND SITCTA IN (''A'',''V'') AND NVL(MONENVIO,0)>0 ) WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])));
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  xSQL:='SELECT PERCOB,FECGEN,NUMOFI,NUMENV,MONENV,NUMCOB,MONCOB,NUMENV-NUMCOB NUMSAL,MONENV-MONCOB MONSAL,USUARIO,HREG FROM COB400 ORDER BY PERCOB';
  DM1.cdsSolicitud.Close;
  DM1.cdsSolicitud.DataRequest(xSQL);
  DM1.cdsSolicitud.Open;
  TNumericField(DM1.cdsSolicitud.fieldbyname('NUMENV')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('MONENV')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('NUMCOB')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('MONCOB')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('NUMSAL')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('MONSAL')).DisplayFormat:='###,###,##0.#0';
  DM1.cdsDetalle.GotoBookmark(xRegistro);
  If Not ChkIndividual.Checked Then MessageDlg(' Proceso Termino Con EXITO!!!!', mtInformation,[mbOk],0);

  Screen.Cursor := crDefault;


end;

procedure TfDetTipCob.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfDetTipCob.rdbAsoApeClick(Sender: TObject);
var xCreSaldo,xMonEnvio:Currency;
    xNumAso:Integer;
    xSQL:String;
begin
  EdtBuscar.Width:=300;  grbBuscar.Width:=460; EdtBuscar.Text:=''; chkRanCuo.Checked:=False;
  Screen.Cursor := crHourglass;
  If DM1.xSgr='0' Then
     xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA NOT IN (''A'',''V'' ) ORDER BY ASOAPENOM'
  Else
     xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) ORDER BY ASOAPENOM'  ;
  DM1.cdsDetalle.Close;
  DM1.cdsDetalle.DataRequest(xSQL);
  DM1.cdsDetalle.Open;
  TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='###';
  xSQL:='SELECT SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NVL(MONENVIO,0)) MONENVIO,NVL(COUNT(*),0) NUMASO FROM COB402 WHERE PERCOB='+QuotedStr(Trim(fGenTipCob.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fGenTipCob.dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  xCreSaldo:=DM1.cdsQry.FieldByName('CRESALDO').AsCurrency;
  xMonEnvio:=DM1.cdsQry.FieldByName('MONENVIO').AsCurrency;
  xNumAso:=DM1.cdsQry.FieldByName('NUMASO').AsInteger;
  dtgCobTelDet.ColumnByName('ASOAPENOM').FooterValue :='Total';
  dtgCobTelDet.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
  dtgCobTelDet.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
  dtgCobTelDet.ColumnByName('ASONCTA').FooterValue := FloatToStrF(xNumAso,ffNumber, 7, 0)+' Reg.';
  
  Screen.Cursor := crDefault;
end;

procedure TfDetTipCob.rdbAsoCtaClick(Sender: TObject);
var xCreSaldo,xMonEnvio:Currency;
    xNumAso:Integer;
    xSQL:String;
begin
   EdtBuscar.Width:=96;  grbBuscar.Width:=256; EdtBuscar.Text:=''; chkRanCuo.Checked:=False;
   Screen.Cursor := crHourglass;
   If DM1.xSgr='0' Then
      xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA NOT IN (''A'',''V'' ) ORDER BY ASONCTA'
   Else
      xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) ORDER BY ASONCTA'  ;
   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.DataRequest(xSQL);
   DM1.cdsDetalle.Open;
   TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
   TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
   TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='###';
   xSQL:='SELECT SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NVL(MONENVIO,0)) MONENVIO,NVL(COUNT(*),0) NUMASO FROM COB402 WHERE PERCOB='+QuotedStr(Trim(fGenTipCob.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fGenTipCob.dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xCreSaldo:=DM1.cdsQry.FieldByName('CRESALDO').AsCurrency;
   xMonEnvio:=DM1.cdsQry.FieldByName('MONENVIO').AsCurrency;
   xNumAso:=DM1.cdsQry.FieldByName('NUMASO').AsInteger;
   dtgCobTelDet.ColumnByName('ASOAPENOM').FooterValue :='Total';
   dtgCobTelDet.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
   dtgCobTelDet.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
   dtgCobTelDet.ColumnByName('ASONCTA').FooterValue := FloatToStrF(xNumAso,ffNumber, 7, 0)+' Reg.';

   Screen.Cursor := crDefault;

end;

procedure TfDetTipCob.EdtBuscarChange(Sender: TObject);
begin
If Length(Trim(EdtBuscar.Text))>0 Then
   Begin
      If rdbAsoApe.Checked Then
         DM1.cdsDetalle.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey])
      Else
         DM1.cdsDetalle.Locate('ASONCTA', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
   End;
end;

procedure TfDetTipCob.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
    Begin
      If Length(Trim(EdtBuscar.Text))>0 Then
         Begin
           EdtBuscar.Text:='';
           dtgCobTelDet.SetFocus;
         End
       Else
         Begin
           MessageDlg('Debe Digitar El Criterio,  Para Iniciar La Busqueda', mtError,[mbOk], 0 );
           EdtBuscar.SetFocus;
         End;
    End;

end;

procedure TfDetTipCob.BitCtasInacClick(Sender: TObject);
var xSQL:String;
begin
    Screen.Cursor := crHourglass;
    xSQL:='SELECT C.PROVBCOID,D.PROVBCODES,A.ASOID,A.ASOAPENOM,B.ASODNI,B.ASONCTA,B.SITCTA,SUM(NVL(A.CRESALDO,0)) CRESALDO,MAX(100) PORENVIO, '+
          'SUM(NVL(A.CRESALDO,0)) MONENVIO FROM COB401 A,APO201 B,APO102 C,APO213 D WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND A.ASOID=B.ASOID(+) AND  B.SITCTA NOT IN (''A'',''V'' )  AND B.SITCTA IS NOT NULL AND B.UPROID=C.UPROID(+) '+
          'AND  C.PROVBCOID=D.PROVBCOID(+) GROUP BY C.PROVBCOID,D.PROVBCODES,A.ASOID,A.ASOAPENOM,B.ASODNI,B.ASONCTA,B.SITCTA,IDTIPCOB ORDER BY C.PROVBCOID,ASOAPENOM ';
    DM1.cdsQry3.Close;
    DM1.cdsQry3.DataRequest(xSQL);
    DM1.cdsQry3.Open;
    If DM1.cdsQry3.RecordCount > 0 Then
       Begin
         lblTitulo01.Caption:='ASOCIADOS CON CUENTAS DE AHORRO INACTIVAS  '+Trim(lblNomMes.Caption)+' - '+Trim(dbsAnoIni.Text);
         RepDetx.Print;
         RepDetx.Cancel;
       End;
       DM1.cdsQry3.Close;
    Screen.Cursor := crDefault;
end;

procedure TfDetTipCob.BitMostrarClick(Sender: TObject);
var xCreSaldo,xMonEnvio:Currency;
    xNumAso:Integer;
    xSQL:String;
begin
  Screen.Cursor := crHourGlass;
  xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,IDTIPCOB,USUARIO,HREG FROM COB402 '+
        'WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND '+
        'IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND MONENVIO BETWEEN '+FloatToStr(DM1.Valores(dbeCuoIni.Text))+' AND '+FloatToStr(DM1.Valores(dbeCuoMax.Text))+' ORDER BY MONENVIO'  ;
  DM1.cdsDetalle.Close;
  DM1.cdsDetalle.DataRequest(xSQL);
  DM1.cdsDetalle.Open;
  TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
  TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='###';

  xSQL:='SELECT SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NVL(MONENVIO,0)) MONENVIO,NVL(COUNT(*),0) NUMASO FROM COB402 WHERE PERCOB='+QuotedStr(Trim(fGenTipCob.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fGenTipCob.dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) AND MONENVIO BETWEEN '+FloatToStr(DM1.Valores(dbeCuoIni.Text))+' AND '+FloatToStr(DM1.Valores(dbeCuoMax.Text));
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  xCreSaldo:=DM1.cdsQry.FieldByName('CRESALDO').AsCurrency;
  xMonEnvio:=DM1.cdsQry.FieldByName('MONENVIO').AsCurrency;
  xNumAso:=DM1.cdsQry.FieldByName('NUMASO').AsInteger;
  dtgCobTelDet.ColumnByName('ASOAPENOM').FooterValue :='Total';
  dtgCobTelDet.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
  dtgCobTelDet.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
  dtgCobTelDet.ColumnByName('ASONCTA').FooterValue := FloatToStrF(xNumAso,ffNumber, 7, 0)+' Reg.';











  Screen.Cursor := crDefault;
end;

procedure TfDetTipCob.chkRanCuoClick(Sender: TObject);
begin
If chkRanCuo.Checked Then
   Begin
    pnlRanCuo.Enabled:=True;
   End
Else
   Begin
    dbeCuoIni.Text:='0.00';dbeCuoMax.Text:='0.00';
    pnlRanCuo.Enabled:=False;
   End;
end;

function TfDetTipCob.MonCuota(xTipCuo: String): Currency;
var xSQL:String;
begin
    Result:=0;
    xSQL:='SELECT '+xTipCuo+'(MONENVIO) CUOTA FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' )'  ;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If Length(Trim(DM1.cdsQry.FieldByName('CUOTA').AsString)) > 0 Then
       Begin
          Result:=DM1.cdsQry.FieldByName('CUOTA').AsCurrency;
       End;
       DM1.cdsQry.Close;
{
    If xTipCuo='Max' Then
       xSQL:='SELECT MAX(MONENVIO) CUOTA COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' )'
    Else If xTipCuo='Min' Then
       xSQL:='SELECT MIN(MONENVIO) CUOTA COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' )'  ;

 }

end;

procedure TfDetTipCob.dbeCuoIniExit(Sender: TObject);
begin
 dbeCuoIni.Text:=DM1.FormatoNumeros(dbeCuoIni.Text);
end;

procedure TfDetTipCob.dbeCuoMaxExit(Sender: TObject);
begin
dbeCuoMax.Text:=DM1.FormatoNumeros(dbeCuoMax.Text);
end;

end.
