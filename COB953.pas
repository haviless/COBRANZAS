unit COB953;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, fcLabel, Buttons, Grids,
  Wwdbigrd, Wwdbgrid, Db, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ComCtrls;

type
  TfDetMtoCuo = class(TForm)
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    grbCrit01: TGroupBox;
    dbeMtoMin: TwwDBEdit;
    fcLabel6: TfcLabel;
    dbeMtoMax: TwwDBEdit;
    grbCrit03: TGroupBox;
    fcLabel3: TfcLabel;
    dbeMtoMay: TwwDBEdit;
    grbCrit02: TGroupBox;
    fcLabel7: TfcLabel;
    dbeMtoMen: TwwDBEdit;
    fcLabel2: TfcLabel;
    fcLabel4: TfcLabel;
    rdbCriterio1: TRadioButton;
    rdbCriterio2: TRadioButton;
    rdbCriterio3: TRadioButton;
    BitImprime: TBitBtn;
    BitSalir: TBitBtn;
    dtgVrfTelDet: TwwDBGrid;
    BitMostrar: TBitBtn;
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
    ppDBCalc242: TppDBCalc;
    ppDBCalc246: TppDBCalc;
    ppLabel749: TppLabel;
    lblTitulo04a: TppLabel;
    ppLine1: TppLine;
    BitNoEnvia: TBitBtn;
    grbProcesos: TGroupBox;
    prbAvances: TProgressBar;
    BitSiguiente: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure rdbCriterio3Click(Sender: TObject);
    procedure rdbCriterio2Click(Sender: TObject);
    procedure rdbCriterio1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMtoMinKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMtoMaxKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMtoMenKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMtoMayKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMtoMinExit(Sender: TObject);
    procedure dbeMtoMaxExit(Sender: TObject);
    procedure dbeMtoMenExit(Sender: TObject);
    procedure dbeMtoMayExit(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitImprimeClick(Sender: TObject);
    procedure BitNoEnviaClick(Sender: TObject);
    procedure BitSiguienteClick(Sender: TObject);
    procedure dtgVrfTelDetDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
    procedure LimpiaGrid;
  public
    { Public declarations }
  end;

var
  fDetMtoCuo: TfDetMtoCuo;

implementation

uses COBDM1, COB947, COB963;

{$R *.dfm}

procedure TfDetMtoCuo.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfDetMtoCuo.rdbCriterio3Click(Sender: TObject);
begin
   LimpiaGrid; dbeMtoMin.Text:='0.00'; dbeMtoMax.Text:='0.00'; dbeMtoMay.Text:='0.00'; dbeMtoMen.Text:='0.00';
   grbCrit03.Enabled:=True;    grbCrit01.Enabled:=False;    grbCrit02.Enabled:=False; dbeMtoMay.SetFocus;
end;

procedure TfDetMtoCuo.rdbCriterio2Click(Sender: TObject);
begin
   LimpiaGrid; dbeMtoMin.Text:='0.00'; dbeMtoMax.Text:='0.00'; dbeMtoMay.Text:='0.00'; dbeMtoMen.Text:='0.00';
   grbCrit03.Enabled:=False;    grbCrit01.Enabled:=False;    grbCrit02.Enabled:=True; dbeMtoMen.SetFocus;

end;

procedure TfDetMtoCuo.rdbCriterio1Click(Sender: TObject);
begin
   LimpiaGrid; dbeMtoMin.Text:='0.00'; dbeMtoMax.Text:='0.00'; dbeMtoMay.Text:='0.00'; dbeMtoMen.Text:='0.00';
   grbCrit03.Enabled:=False;   grbCrit01.Enabled:=True;   grbCrit02.Enabled:=False; dbeMtoMin.SetFocus;

end;

procedure TfDetMtoCuo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfDetMtoCuo.dbeMtoMinKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDetMtoCuo.dbeMtoMaxKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDetMtoCuo.dbeMtoMenKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDetMtoCuo.dbeMtoMayKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDetMtoCuo.dbeMtoMinExit(Sender: TObject);
begin
dbeMtoMin.Text := FormatFloat('###,###,##0.#0',DM1.Valores(dbeMtoMin.Text));
end;

procedure TfDetMtoCuo.dbeMtoMaxExit(Sender: TObject);
begin
dbeMtoMax.Text := FormatFloat('###,###,##0.#0',DM1.Valores(dbeMtoMax.Text));
end;

procedure TfDetMtoCuo.dbeMtoMenExit(Sender: TObject);
begin
dbeMtoMen.Text := FormatFloat('###,###,##0.#0',DM1.Valores(dbeMtoMen.Text));
end;

procedure TfDetMtoCuo.dbeMtoMayExit(Sender: TObject);
begin
dbeMtoMay.Text := FormatFloat('###,###,##0.#0',DM1.Valores(dbeMtoMay.Text));
end;

procedure TfDetMtoCuo.BitMostrarClick(Sender: TObject);
var xCreSaldo,xMonEnvio,xMonRecup:Currency;
    xNumAso:Integer;
    xSQL,xSQL_:String;
begin

    If rdbCriterio1.Checked Then
       Begin
          If (DM1.Valores(dbeMtoMin.Text)=0) Or (DM1.Valores(dbeMtoMax.Text)=0) Then
             Begin
                MessageDlg('Debe Ingresar Valores Para El Monto Menor y Mayor', mtError, [mbOk], 0);
                Exit;
             End
          Else
             Begin
               xSQL_:=' AND MONENVIO BETWEEN '+FloatToStr(DM1.Valores(dbeMtoMin.Text))+' AND '+FloatToStr(DM1.Valores(dbeMtoMax.Text));
             End;
       End;

    If rdbCriterio2.Checked Then
       Begin
          If DM1.Valores(dbeMtoMen.Text)=0 Then
             Begin
                MessageDlg('Debe Ingresar Valores Para El Monto Menor', mtError, [mbOk], 0);
                Exit;
             End
          Else
             Begin
                xSQL_:=' AND MONENVIO < '+FloatToStr(DM1.Valores(dbeMtoMen.Text));
             End;
       End;



    If rdbCriterio3.Checked Then
       Begin
         If DM1.Valores(dbeMtoMay.Text)=0 Then
             Begin
                MessageDlg('Debe Ingresar Valores Para El Monto Mayor', mtError, [mbOk], 0);
                Exit;
             End
          Else
             Begin
               xSQL_:=' AND MONENVIO > '+FloatToStr(DM1.Valores(dbeMtoMay.Text));
             End;

       End;


    Screen.Cursor := crHourglass;
    xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,NVL(PORENVIO,0) PORENVIO,NVL(MONENVIO,0) MONENVIO ,NVL(MONRECUP,0) MONRECUP ,IDTIPCOB,USUARIO,HREG,MARVER FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) '+xSQL_+' ORDER BY MONENVIO '  ;
    DM1.cdsDetalle.Close;
    DM1.cdsDetalle.DataRequest(xSQL);
    DM1.cdsDetalle.Open;
    TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsDetalle.fieldbyname('MONRECUP')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='##0';

    {
    xSQL:='SELECT SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NVL(MONENVIO,0)) MONENVIO,SUM(NVL(MONRECUP,0)) MONRECUP , '+
           'NVL(COUNT(*),0) NUMASO FROM COB402 WHERE '+
           'PERCOB='+QuotedStr(Trim(fGenCobTel.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fGenCobTel.dbsMesIni.Text))])))+' '+
           'AND SITCTA IN (''A'',''V'' ) '+xSQL_ ;
    DM1.cdsUPro.Close;
    DM1.cdsUPro.DataRequest(xSQL);
    DM1.cdsUPro.Open;
    xCreSaldo:=DM1.cdsUPro.FieldByName('CRESALDO').AsCurrency;
    xMonEnvio:=DM1.cdsUPro.FieldByName('MONENVIO').AsCurrency;
    xMonRecup:=DM1.cdsUPro.FieldByName('MONRECUP').AsCurrency;
    xNumAso:=DM1.cdsUPro.FieldByName('NUMASO').AsInteger;
    }

    xCreSaldo:=0 ; xMonEnvio:=0 ; xMonRecup:=0; xNumAso:=0;
    DM1.cdsDetalle.First;
    While Not DM1.cdsDetalle.Eof Do
    Begin
        xCreSaldo:= xCreSaldo + DM1.cdsDetalle.fieldbyname('CRESALDO').AsCurrency;
        xMonEnvio:= xMonEnvio + DM1.cdsDetalle.fieldbyname('MONENVIO').AsCurrency;
        xMonRecup:= xMonRecup + DM1.cdsDetalle.fieldbyname('MONRECUP').AsCurrency;
        xNumAso:= xNumAso + 1;
        DM1.cdsDetalle.Next;
    End;
    dtgVrfTelDet.ColumnByName('ASOAPENOM').FooterValue :='Total';
    dtgVrfTelDet.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
    dtgVrfTelDet.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
    dtgVrfTelDet.ColumnByName('MONRECUP').FooterValue := FloatToStrF(xMonRecup,ffNumber, 10, 2);
    dtgVrfTelDet.ColumnByName('ASONCTA').FooterValue := FloatToStrF(xNumAso,ffNumber, 7, 0)+' Reg.';
    If DM1.cdsDetalle.RecordCount>0 Then DM1.cdsDetalle.First;
    Screen.Cursor := crDefault;


end;

procedure TfDetMtoCuo.LimpiaGrid;
var xSQL:String;
begin
Screen.Cursor := crHourglass;
xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,NVL(PORENVIO,0) PORENVIO,NVL(MONENVIO,0) MONENVIO,NVL(MONRECUP,0) MONRECUP ,IDTIPCOB,USUARIO,HREG,MARVER FROM COB402 WHERE PERCOB='+QuotedStr('@!#$%^')+' AND SITCTA IN (''$'',''%'' ) '  ;
DM1.cdsDetalle.Close;
DM1.cdsDetalle.DataRequest(xSQL);
DM1.cdsDetalle.Open;
TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
TNumericField(DM1.cdsDetalle.fieldbyname('MONRECUP')).DisplayFormat:='###,###,##0.#0';
TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='##0';
dtgVrfTelDet.ColumnByName('ASOAPENOM').FooterValue :='Total';
dtgVrfTelDet.ColumnByName('CRESALDO').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgVrfTelDet.ColumnByName('MONENVIO').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgVrfTelDet.ColumnByName('MONRECUP').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgVrfTelDet.ColumnByName('ASONCTA').FooterValue := FloatToStrF(0,ffNumber, 7, 0)+' Reg.';
Screen.Cursor := crDefault;




end;

procedure TfDetMtoCuo.FormActivate(Sender: TObject);
begin
LimpiaGrid;
grbCrit03.Enabled:=False;   grbCrit01.Enabled:=True;   grbCrit02.Enabled:=False; dbeMtoMin.SetFocus;
dbeMtoMin.Text:='0.00'; dbeMtoMax.Text:='0.00'; dbeMtoMay.Text:='0.00'; dbeMtoMen.Text:='0.00';

end;

procedure TfDetMtoCuo.BitImprimeClick(Sender: TObject);
var xSQL,xSQL_:String;
begin
    If dtgVrfTelDet.DataSource.DataSet.RecordCount=0 Then Exit;
    If rdbCriterio1.Checked Then
       Begin
          If (DM1.Valores(dbeMtoMin.Text)=0) Or (DM1.Valores(dbeMtoMax.Text)=0) Then
             Begin
                MessageDlg('Debe Ingresar Valores Para El Monto Menor y Mayor', mtError, [mbOk], 0);
                Exit;
             End
          Else
             Begin
               xSQL_:=' AND MONENVIO BETWEEN '+FloatToStr(DM1.Valores(dbeMtoMin.Text))+' AND '+FloatToStr(DM1.Valores(dbeMtoMax.Text));
               lblTitulo04a.Caption:='Monto De Cuota Entre '+dbeMtoMin.Text+' y '+dbeMtoMax.Text;
             End;
       End;

    If rdbCriterio2.Checked Then
       Begin
          If DM1.Valores(dbeMtoMen.Text)=0 Then
             Begin
                MessageDlg('Debe Ingresar Valores Para El Monto Menor', mtError, [mbOk], 0);
                Exit;
             End
          Else
             Begin
                xSQL_:=' AND MONENVIO < '+FloatToStr(DM1.Valores(dbeMtoMen.Text));
                lblTitulo04a.Caption:='Monto De Cuota Menor Que '+dbeMtoMen.Text;
             End;
       End;



    If rdbCriterio3.Checked Then
       Begin
         If DM1.Valores(dbeMtoMay.Text)=0 Then
             Begin
                MessageDlg('Debe Ingresar Valores Para El Monto Mayor', mtError, [mbOk], 0);
                Exit;
             End
          Else
             Begin
               xSQL_:=' AND MONENVIO > '+FloatToStr(DM1.Valores(dbeMtoMay.Text));
               lblTitulo04a.Caption:='Monto De Cuota Mayor Que '+dbeMtoMay.Text;
             End;

       End;

   Screen.Cursor := crHourglass;
   xSQL:='SELECT A.PROVBCOID,B.PROVBCODES,ASONCTA,SITCTA,ASODNI,ASOAPENOM,MONENVIO FROM COB402 A,APO213 B WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) AND A.PROVBCOID=B.PROVBCOID(+) '+xSQL_+' ORDER BY A.PROVBCOID,MONENVIO';

   DM1.cdsProvin.Close;
   DM1.cdsProvin.DataRequest(xSQL);
   DM1.cdsProvin.Open;
   If DM1.cdsProvin.RecordCount > 0 Then
      Begin
          lblTitulo04.Caption:='DETALLES DE COBRANZA POR MONTO DE LA CUOTA '+Trim(lblNomMes.Caption)+'-'+Trim(dbsAnoIni.Text)  ;
          RepDetx.Print;
          RepDetx.Cancel;
      End;
      DM1.cdsProvin.Close;
   Screen.Cursor := crDefault;


end;

procedure TfDetMtoCuo.BitNoEnviaClick(Sender: TObject);
var xSQL:String;
begin
If dtgVrfTelDet.DataSource.DataSet.RecordCount=0 Then Exit;
DM1.cdsDetalle.First;
grbProcesos.Visible:=True;
prbAvances.Position := 0; prbAvances.Max:=DM1.cdsDetalle.RecordCount; prbAvances.Position := 1;
While Not DM1.cdsDetalle.Eof Do
Begin
    prbAvances.Position := prbAvances.Position + 1;
    xSQL:='UPDATE COB402 SET MONENVIO = 0,PORENVIO = 0,USUARIO='+QuotedStr(DM1.wUsuario)+',HREG=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsDetalle.FieldByName('ASOID').AsString)+' AND  PERCOB='+QuotedStr(DM1.cdsSolicitud.FieldByName('PERCOB').AsString)  ;
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    DM1.cdsDetalle.Next;
End;
prbAvances.Position:=0; grbProcesos.Visible:=False; BitMostrar.OnClick(BitMostrar);
end;

procedure TfDetMtoCuo.BitSiguienteClick(Sender: TObject);
var xSQL,xAsoId:String;
begin
  If dtgVrfTelDet.DataSource.DataSet.RecordCount=0 Then Exit;
  Try
    fDesTelSgt := TfDesTelSgt.Create(Self);
    fDesTelSgt.dbsAnoIni.Text:=dbsAnoIni.Text;
    fDesTelSgt.dbsMesIni.Text:=dbsMesIni.Text;
    fDesTelSgt.lblNomMes.Caption:=lblNomMes.Caption;
    xAsoId:=DM1.cdsDetalle.fieldbyname('ASOID').AsString;
    xSQL:='SELECT ASOID,CREDID,SUBSTR(CREDID,7,2)||''-''||SUBSTR(CREDID,11,5)||''-''||SUBSTR(CREDID,3,4)  NUMERO, '+
          'CRECUOTA,CREFVEN,NVL(CREMTO,0)-NVL(CREMTOCOB,0) CUOPAG,CREESTADO,NVL(FLAGVAR,''N'') FLAGVAR FROM CRE302 A WHERE ASOID='+QuotedStr(xAsoId)+' AND FORPAGOID=''18'' '+
          'AND CREESTID IN (''02'',''11'',''27'') AND CREANO||CREMES<='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND NOT EXISTS '+
          '(SELECT ASOID,CREDID,CRECUOTA FROM COB401 WHERE A.ASOID=ASOID AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+'  ) ORDER BY CREFVEN ';
    DM1.cdsRegCob.Close;
    DM1.cdsRegCob.DataRequest(xSQL);
    DM1.cdsRegCob.Open;
    TNumericField(DM1.cdsRegCob.fieldbyname('CUOPAG')).DisplayFormat:='###,###,##0.#0';
    If DM1.cdsRegCob.RecordCount>0 Then
       Begin
         DM1.cdsRegCob.First;
       End
    Else
       Begin
          fDesTelSgt.BitDescueto.Enabled:=False;
          DM1.cdsDetalle.Edit;
          DM1.cdsDetalle.FieldByName('MARVER').AsString:='S';
          DM1.cdsDetalle.ApplyUpdates(0);
       End;
    fDesTelSgt.lblActual.Caption:= FormatFloat('###,##0.#0',DM1.cdsDetalle.fieldbyname('CRESALDO').AsCurrency);
    fDesTelSgt.lblDescuento.Caption:= FormatFloat('###,##0.#0',DM1.cdsDetalle.fieldbyname('CRESALDO').AsCurrency);
    fDesTelSgt.ShowModal;
  Finally
    fDesTelSgt.Free;
  end;

end;

procedure TfDetMtoCuo.dtgVrfTelDetDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  If DM1.cdsDetalle.FieldByName('MARVER').AsString='S' Then
     begin
        dtgVrfTelDet.Canvas.Font.Color := clRed;
        dtgVrfTelDet.DefaultDrawDataCell(rect,Field,State);
      end;
end;

end.
