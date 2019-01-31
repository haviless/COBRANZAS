unit COB948;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, ComCtrls, ExtCtrls, Db, ppDB, ppDBPipe, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TfGenTipCob = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    dtgCobTelTip: TwwDBGrid;
    grbProcesos: TGroupBox;
    prbAvances: TProgressBar;
    BitGnrDes: TBitBtn;
    pnlTiempo: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Image1: TImage;
    BitCtasInac: TBitBtn;
    BitIncons: TBitBtn;
    ppInconsis: TppReport;
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
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    BitMontos: TBitBtn;
    pnlCrono: TPanel;
    dtgCronogramas: TwwDBGrid;
    BitGenera: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGnrDesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgCobTelTipDblClick(Sender: TObject);
    procedure BitCtasInacClick(Sender: TObject);
    procedure BitInconsClick(Sender: TObject);
    procedure BitMontosClick(Sender: TObject);
    procedure BitGeneraClick(Sender: TObject);
  private
    { Private declarations }
    function Busca302(xAsoId, xCreDid : String ): String;
    Procedure LimpiaGrids;
    Function PerCartera():String;
    Function CorreTel():String;
    Function PorCalculo(xAsoId,xCreDid,xCreCuota:String):Integer;
  public
    { Public declarations }
  end;

var
  fGenTipCob: TfGenTipCob;

implementation

uses COBDM1, COB949, COB953, COB901;

{$R *.dfm}

procedure TfGenTipCob.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfGenTipCob.BitGnrDesClick(Sender: TObject);
var xSQL,xCorreTel,xPeriodo,xPerCob,xfIni,xfFin:String;
    xCreSaldo,xMonEnvio:Currency;
    xNumAso,xAno,xMes:Integer;
begin
   If dtgCronogramas.DataSource.DataSet.RecordCount>0 Then
      Begin
         MessageDlg('IMPOSIBLE GENERAR COBRANZA POR TELEAHORRRO, Existen Prestamos Sin Cronograma De Pagos ', mtInformation, [mbOk], 0);
         Exit;
      End;
   LimpiaGrids;
   Screen.Cursor := crHourglass;
   xSQL:='SELECT A.IDTIPCOB,B.DESTIPCOB,SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NUMASO) NUMASO,SUM(NVL(MONENVIO,0)) MONENVIO FROM '+
         '(SELECT ASOID,IDTIPCOB,SUM(NVL(CRESALDO,0)) CRESALDO, 1 NUMASO,SUM(NVL(MONENVIO,0)) MONENVIO  FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' )  '+
         'GROUP BY ASOID,IDTIPCOB) A, COB117 B WHERE A.IDTIPCOB=B.IDTIPCOB(+) GROUP BY A.IDTIPCOB,B.DESTIPCOB ';
   DM1.cdsSobrino.Close;
   DM1.cdsSobrino.DataRequest(xSQL);
   DM1.cdsSobrino.Open;
   TNumericField(DM1.cdsSobrino.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
   TNumericField(DM1.cdsSobrino.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
   TNumericField(DM1.cdsSobrino.fieldbyname('NUMASO')).DisplayFormat:='###,##0';
   If DM1.cdsSobrino.RecordCount > 0 Then
      Begin
         xCreSaldo:=0; xMonEnvio:=0 ;xNumAso:=0;
         DM1.cdsSobrino.First;
         While Not DM1.cdsSobrino.Eof Do
         Begin
             xCreSaldo := xCreSaldo + DM1.cdsSobrino.FieldByName('CRESALDO').AsCurrency;
             xMonEnvio := xMonEnvio + DM1.cdsSobrino.FieldByName('MONENVIO').AsCurrency;
             xNumAso := xNumAso + DM1.cdsSobrino.FieldByName('NUMASO').AsInteger;
             DM1.cdsSobrino.Next;
         End;
         dtgCobTelTip.ColumnByName('DESTIPCOB').FooterValue :='Total';
         dtgCobTelTip.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
         dtgCobTelTip.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
         dtgCobTelTip.ColumnByName('NUMASO').FooterValue := FloatToStrF(xNumAso,ffNumber, 10, 0);
      End
   Else
      Begin

         dtgCobTelTip.ColumnByName('DESTIPCOB').FooterValue :='Total';
         dtgCobTelTip.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
         dtgCobTelTip.ColumnByName('NUMASO').FooterValue := FloatToStrF(0,ffNumber, 10, 0);
         grbProcesos.Caption:='Procesando Información'; pnlTiempo.Visible:=True; grbProcesos.Visible:=True;
         fGenTipCob.Refresh;
         Edit1.Text:= TimeToStr(Time); Edit1.Refresh;
         prbAvances.StepIt; pnlTiempo.Refresh;
         fGenTipCob.Refresh;
         prbAvances.StepIt; pnlTiempo.Refresh;
         grbProcesos.Caption:='Insertando Descuentos Del Mes'; grbProcesos.Refresh; Edit2.Text:= TimeToStr(Time); Edit2.Refresh;
         xSQL:='INSERT INTO COB401 SELECT '+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' PERCOB, ASOID, ASOAPENOM, CREDID, CRECUOTA, NVL(CREMTO,0) CREMTO, NVL(CREMTOCOB,0) CREMTOCOB,(NVL(CREMTO,0)-NVL(CREMTOCOB,0)) CRESALDO, CREESTID, CREESTADO, FORPAGOID, '+
               'CREFVEN, CREANO, CREMES, USUARIO, SYSDATE, ''01'' IDTIPCOB  FROM CRE302 '+
               'WHERE CREANO='+QuotedStr(Trim(dbsAnoIni.Text))+' AND CREMES='+QuotedStr(Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))+' AND FORPAGOID=''18'' AND CREESTID IN (''02'',''11'',''14'',''27'') ' ;
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         fGenTipCob.Refresh;
         prbAvances.StepIt; pnlTiempo.Refresh;
         grbProcesos.Caption:='Insertando Cuotas Vencidas'; grbProcesos.Refresh; Edit2.Text:= TimeToStr(Time); Edit2.Refresh;
         xSQL:='INSERT INTO COB401 SELECT '+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' PERCOB, A.ASOID, A.ASOAPENOM, A.CREDID, A.CRECUOTA, NVL(CREMTO,0) CREMTO,  '+
               'NVL(CREMTOCOB,0) CREMTOCOB,(NVL(CREMTO,0)-NVL(CREMTOCOB,0)) CRESALDO, A.CREESTID, A.CREESTADO,A.FORPAGOID, A.CREFVEN, CREANO, CREMES, A.USUARIO, SYSDATE , ''02'' IDTIPCOB FROM CRE302 A,  '+
               '(SELECT A.ASOID,MIN(A.CREDID) CREDID,MIN(CRECUOTA) CRECUOTA FROM CRE302 A, (SELECT ASOID,MIN(CREDID) CREDID FROM (SELECT ASOID,CREMTO,CREMTOCOB,FORPAGOID,CREFVEN,CREDID,CRECUOTA '+
               'FROM CRE302 WHERE CREANO||CREMES<'+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt( Trim(dbsMesIni.Text))])))+' AND FORPAGOID=''18'' AND CREESTID IN (''02'',''11'',''14'',''27'') ) '+
               'GROUP BY ASOID ) B WHERE  A.ASOID=B.ASOID AND CREANO||CREMES<'+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND FORPAGOID=''18'' AND CREESTID IN (''02'',''11'',''14'',''27'') AND A.CREDID=B.CREDID '+
               'GROUP BY A.ASOID) G WHERE  A.ASOID=G.ASOID AND A.CREDID=G.CREDID AND A.CRECUOTA=G.CRECUOTA AND NOT EXISTS (SELECT ASOID FROM COB401 WHERE A.ASOID=ASOID AND PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+') ';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

         fGenTipCob.Refresh;
         prbAvances.StepIt; pnlTiempo.Refresh;
         grbProcesos.Caption:='Marcando Cobranza Porcentual'; grbProcesos.Refresh; Edit2.Text:=TimeToStr(Time); Edit2.Refresh;
         xSQL:='UPDATE COB401 A SET IDTIPCOB =''03'' WHERE EXISTS (SELECT ASOID,CFC_F FROM CFC000 WHERE A.ASOID=ASOID AND PERIODO='+QuotedStr(PerCartera)+' AND CFC_F IN (''B'',''C'',''D'') ) AND A.PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])));
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         xSQL:='UPDATE CRE302 A SET CREESTID=''14'',CREESTADO=''EN PROCESO DE COBRANZA'',PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' WHERE EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM COB401 WHERE A.ASOID=ASOID AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREESTID<>''14'' AND PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         prbAvances.StepIt;  pnlTiempo.Refresh;

         xSQL:='SELECT ASOID,CREDID,CRECUOTA,CRESALDO FROM COB401 A WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND EXISTS (SELECT ASOID,CREDID,CRECUOTA FROM COB_CUO_DES_PRO WHERE A.ASOID=ASOID AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA AND CREESTID IN (''02'',''11'',''27'') ) ';
         DM1.cdsQry4.Close;
         DM1.cdsQry4.DataRequest(xSQL);
         DM1.cdsQry4.Open;
         If DM1.cdsQry4.RecordCount > 0 Then
            Begin
               DM1.cdsQry4.First;
               While Not DM1.cdsQry4.Eof Do
               Begin
                 xSQL:='UPDATE COB401 SET CRESALDO=CRESALDO*'+FloatToStr(PorCalculo(DM1.cdsQry4.FieldByName('ASOID').AsString,DM1.cdsQry4.FieldByName('CREDID').AsString,DM1.cdsQry4.FieldByName('CRECUOTA').AsString))+'/100 WHERE ASOID='+QuotedStr(DM1.cdsQry4.FieldByName('ASOID').AsString)+' AND CREDID='+QuotedStr(DM1.cdsQry4.FieldByName('CREDID').AsString)+' AND CRECUOTA='+QuotedStr(DM1.cdsQry4.FieldByName('CRECUOTA').AsString)+' AND PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))  ;
                 DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                 DM1.cdsQry4.Next;
               End;
            End;
            DM1.cdsQry4.Close;

         grbProcesos.Caption:='Preparando Archivo De Descuento'; grbProcesos.Refresh; Edit2.Text:= TimeToStr(Time); Edit2.Refresh;
         xSQL:='INSERT INTO COB402 SELECT PERCOB,A.ASOID,B.ASONCTA,B.SITCTA,SUM(NVL(CRESALDO,0)) CRESALDO,B.ASOAPENOM,B.ASODNI,NVL(COUNT(*),0) NUMCUO,  '+
               'B.ASOTIPID,IDTIPCOB,100 PORENVIO,SUM(NVL(CRESALDO,0)) MONENVIO,'+QuotedStr(DM1.wUsuario)+',SYSDATE, 0 MONRECUP,C.PROVBCOID,''N'',NULL,NULL,NULL,NULL,NULL FROM COB401 A,APO201 B,APO102 C WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND A.ASOID=B.ASOID AND B.UPROID=C.UPROID(+) AND B.ASOTIPID IN (''DO'',''CE'') AND B.ASONCTA IS NOT NULL AND B.SITCTA IN (''A'',''V'') AND NVL(CRESALDO,0)>0 '+
               'GROUP BY PERCOB,A.ASOID,B.ASONCTA,B.SITCTA,B.ASOAPENOM,B.ASODNI,B.ASOTIPID,IDTIPCOB,C.PROVBCOID ';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         If StrToInt(dbsMesIni.Text)=1 Then  Begin  xAno := StrToInt(dbsAnoIni.Text)-1 ;  xMes := 12;  End   Else  Begin xAno := StrToInt(dbsAnoIni.Text);  xMes := StrToInt(dbsMesIni.Text)-1;   End;  xPerCob:=IntToStr(xAno)+Format('%.2d',[xMes]);

         xSQL := 'BEGIN ACTUALIZA_IDTIPCOB('+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+','+QuotedStr(xPerCob)+ '); END;';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         xSQL:='UPDATE COB402 A SET IDTIPCOB=''01''  WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDTIPCOB=''03'' AND  NVL(MONENVIO,0)<100  '+
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

         xCorreTel:=CorreTel;
         grbProcesos.Caption:='Insertando Oficio Para Envio'; grbProcesos.Refresh; Edit2.Text:= TimeToStr(Time); Edit2.Refresh;
         xSQL:='INSERT INTO COB400 SELECT '+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+','+QuotedStr(DateToStr(DM1.FechaSys))+','+QuotedStr(xCorreTel)+',COUNT(*) NUMENV,SUM(NVL(MONENVIO,0)) MONENV,0,0,'+QuotedStr(DM1.wUsuario)+',SYSDATE  FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'') ';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         xSQL:='SELECT PERCOB,FECGEN,NUMOFI,NUMENV,MONENV,NUMCOB,MONCOB,NVL(NUMENV,0)-NVL(NUMCOB,0) NUMSAL,NVL(MONENV,0)-NVL(MONCOB,0) MONSAL,USUARIO,HREG FROM COB400 ORDER BY PERCOB';
         DM1.cdsSolicitud.Close;
         DM1.cdsSolicitud.DataRequest(xSQL);
         DM1.cdsSolicitud.Open;
         TNumericField(DM1.cdsSolicitud.fieldbyname('NUMENV')).DisplayFormat:='###,##0';
         TNumericField(DM1.cdsSolicitud.fieldbyname('MONENV')).DisplayFormat:='###,###,##0.#0';
         TNumericField(DM1.cdsSolicitud.fieldbyname('NUMCOB')).DisplayFormat:='###,##0';
         TNumericField(DM1.cdsSolicitud.fieldbyname('MONCOB')).DisplayFormat:='###,###,##0.#0';
         TNumericField(DM1.cdsSolicitud.fieldbyname('NUMSAL')).DisplayFormat:='###,##0';
         TNumericField(DM1.cdsSolicitud.fieldbyname('MONSAL')).DisplayFormat:='###,###,##0.#0';
         xSQL:='SELECT A.IDTIPCOB,B.DESTIPCOB,SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NUMASO) NUMASO,SUM(NVL(MONENVIO,0)) MONENVIO FROM '+
               '(SELECT ASOID,IDTIPCOB,SUM(NVL(CRESALDO,0)) CRESALDO, 1 NUMASO,SUM(NVL(MONENVIO,0)) MONENVIO  FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) '+
               'GROUP BY ASOID,IDTIPCOB) A, COB117 B WHERE A.IDTIPCOB=B.IDTIPCOB(+) GROUP BY A.IDTIPCOB,B.DESTIPCOB ';
         DM1.cdsSobrino.Close;
         DM1.cdsSobrino.DataRequest(xSQL);
         DM1.cdsSobrino.Open;
         TNumericField(DM1.cdsSobrino.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
         TNumericField(DM1.cdsSobrino.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
         TNumericField(DM1.cdsSobrino.fieldbyname('NUMASO')).DisplayFormat:='###,##0';
         xCreSaldo:=0; xMonEnvio:=0 ;xNumAso:=0;
         DM1.cdsSobrino.First;
         While Not DM1.cdsSobrino.Eof Do
         Begin
             xCreSaldo := xCreSaldo + DM1.cdsSobrino.FieldByName('CRESALDO').AsCurrency;
             xMonEnvio := xMonEnvio + DM1.cdsSobrino.FieldByName('MONENVIO').AsCurrency;
             xNumAso := xNumAso + DM1.cdsSobrino.FieldByName('NUMASO').AsInteger;
             DM1.cdsSobrino.Next;
         End;
         dtgCobTelTip.ColumnByName('DESTIPCOB').FooterValue :='Total';
         dtgCobTelTip.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
         dtgCobTelTip.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
         dtgCobTelTip.ColumnByName('NUMASO').FooterValue := FloatToStrF(xNumAso,ffNumber, 10, 0);
         fGenTipCob.Refresh;
         prbAvances.StepIt;  pnlTiempo.Refresh;
         grbProcesos.Visible:=False;
         Edit2.Text:= TimeToStr(Time); Edit2.Refresh;
         MessageDlg('Generación De Descuentos Por TELEAHORROS Ha Concluido Con Exito', mtInformation, [mbOk], 0);
      End;
      Screen.Cursor := crDefault;

end;

procedure TfGenTipCob.LimpiaGrids;
var xSQL:String;
begin
   Screen.Cursor := crHourGlass;
   xSQL:='SELECT A.IDTIPCOB,B.DESTIPCOB,SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NUMASO) NUMASO,SUM(NVL(MONENVIO,0)) MONENVIO FROM '+
         '(SELECT ASOID,IDTIPCOB,SUM(NVL(CRESALDO,0)) CRESALDO, 1 NUMASO,SUM(NVL(MONENVIO,0)) MONENVIO  FROM COB402 WHERE ASOID=''@#$%%^^^'' AND PERCOB=''@#!$%^'' '+
         'GROUP BY ASOID,IDTIPCOB) A, COB117 B WHERE A.IDTIPCOB=B.IDTIPCOB(+) GROUP BY A.IDTIPCOB,B.DESTIPCOB ';
   DM1.cdsSobrino.Close;
   DM1.cdsSobrino.DataRequest(xSQL);
   DM1.cdsSobrino.Open;
   TNumericField(DM1.cdsSobrino.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
   TNumericField(DM1.cdsSobrino.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
   TNumericField(DM1.cdsSobrino.fieldbyname('NUMASO')).DisplayFormat:='###,##0';
   dtgCobTelTip.ColumnByName('DESTIPCOB').FooterValue :='Total';
   dtgCobTelTip.ColumnByName('CRESALDO').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
   dtgCobTelTip.ColumnByName('MONENVIO').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
   dtgCobTelTip.ColumnByName('NUMASO').FooterValue := FloatToStrF(0,ffNumber, 10, 0);
   Screen.Cursor := crDefault;
end;


procedure TfGenTipCob.FormActivate(Sender: TObject);
var xNumCre:Integer;
begin
LimpiaGrids;
If DM1.cdsTCredito.RecordCount > 0 Then
   Begin
      xNumCre:=0;
      DM1.cdsTCredito.First;
      While Not DM1.cdsTCredito.Eof Do
      Begin
         xNumCre:=xNumCre + DM1.cdsTCredito.FieldByName('REGISTROS').AsInteger;
         DM1.cdsTCredito.Next;
      End;
      dtgCronogramas.ColumnByName('TIPDESEABR').FooterValue :='Total';
      dtgCronogramas.ColumnByName('REGISTROS').FooterValue := FloatToStrF(xNumCre,ffNumber, 10, 0);
   End;

end;

procedure TfGenTipCob.dtgCobTelTipDblClick(Sender: TObject);
var xSQL:String;
begin
 If dtgCobTelTip.DataSource.DataSet.RecordCount=0 Then Exit;
 Try
    fDetTipCob := TfDetTipCob.Create(Self);
    Screen.Cursor := crHourglass;
    xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND IDTIPCOB='+QuotedStr(DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString)+' AND SITCTA IN (''A'',''V'' ) ORDER BY ASOAPENOM'  ;
    DM1.cdsDetalle.Close;
    DM1.cdsDetalle.DataRequest(xSQL);
    DM1.cdsDetalle.Open;
    TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='###';
    Screen.Cursor := crDefault;
    fDetTipCob.lblTipCob.Caption:='Tipo De Cobranza :  '+DM1.cdsSobrino.FieldByName('DESTIPCOB').AsString;
    fDetTipCob.dbsAnoIni.Text:=dbsAnoIni.Text;
    fDetTipCob.dbsMesIni.Text:=dbsMesIni.Text;
    fDetTipCob.lblNomMes.Caption:=lblNomMes.Caption; DM1.xSgr:='1';
    If DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString='03' Then
       Begin
          fDetTipCob.grbPorc.Visible:=True;
       End
    Else If DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString='02' Then
       Begin
          fDetTipCob.grbPorc.Visible:=True;
          fDetTipCob.ChkIndividual.Checked:=True;
          fDetTipCob.pnlInd.Enabled:=False;
       End
    Else If DM1.cdsSobrino.FieldByName('IDTIPCOB').AsString='01' Then
       Begin
          fDetTipCob.grbPorc.Visible:=True;
          fDetTipCob.ChkIndividual.Checked:=True;
          fDetTipCob.pnlInd.Enabled:=False;
       End;



    fDetTipCob.ShowModal;
  Finally
    fDetTipCob.Free;
  end;





end;

procedure TfGenTipCob.BitCtasInacClick(Sender: TObject);
var xSQL:String;
begin
 If dtgCobTelTip.DataSource.DataSet.RecordCount=0 Then Exit;
 Try
    fDetTipCob := TfDetTipCob.Create(Self);
    Screen.Cursor := crHourglass;
    xSQL:='SELECT A.ASOID,A.ASOAPENOM,B.ASONCTA,B.SITCTA,SUM(NVL(A.CRESALDO,0)) CRESALDO,MAX(100) PORENVIO,SUM(NVL(A.CRESALDO,0)) MONENVIO,IDTIPCOB,MAX(A.USUARIO) USUARIO,MAX(A.HREG) HREG '+
          'FROM COB401 A,APO201 B WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND A.ASOID=B.ASOID(+) AND  B.SITCTA NOT IN (''A'',''V'' )  AND B.SITCTA IS NOT NULL '+
          'GROUP BY A.ASOID,A.ASOAPENOM,B.ASONCTA,B.SITCTA,IDTIPCOB ORDER BY ASOAPENOM ';
    DM1.cdsDetalle.Close;
    DM1.cdsDetalle.DataRequest(xSQL);
    DM1.cdsDetalle.Open;
    TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='###';
    Screen.Cursor := crDefault;
    fDetTipCob.lblTipCob.Caption:='CUENTAS INACTIVAS (No Seran Enviadas Al Descuento)';
    fDetTipCob.dbsAnoIni.Text:=dbsAnoIni.Text;
    fDetTipCob.dbsMesIni.Text:=dbsMesIni.Text;
    fDetTipCob.lblNomMes.Caption:=lblNomMes.Caption; DM1.xSgr:='0';
    fDetTipCob.BitCtasInac.Visible:=True;
    fDetTipCob.ShowModal;
  Finally
    fDetTipCob.Free;
  end;

end;

procedure TfGenTipCob.BitInconsClick(Sender: TObject);
var xSQL:String;
begin
   If dtgCobTelTip.DataSource.DataSet.RecordCount=0 Then Exit;
   Screen.Cursor := crHourglass;
   xSQL:='SELECT B.ASONCTA,B.SITCTA,A.ASOAPENOM,B.ASOTIPID,B.ASODNI,CRESALDO FROM COB401 A,APO201 B WHERE NOT EXISTS (SELECT ASOID FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND A.ASOID=ASOID) '+
         'AND A.PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND A.ASOID=B.ASOID(+) AND (B.ASONCTA IS NULL OR B.SITCTA IS NULL OR B.ASOTIPID NOT IN (''DO'',''CE'') ) ';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;
   If DM1.cdsQry3.RecordCount>0 Then
      Begin
        ppLblTitulo.Caption:='REGISTROS NO ENVIADOS AL DESCUENTO POR TELEAHORROS    '+DM1.DesMes(StrToInt(Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,5,2)),'N')+' - '+Copy(DM1.cdsSolicitud.FieldByName('PERCOB').AsString,1,4);
        ppInconsis.Print;
        ppInconsis.Cancel;
      End;
   DM1.cdsQry3.Close;
   Screen.Cursor := crDefault;


end;

function TfGenTipCob.PerCartera: String;
var xSQL,xPerCar:String;
begin
  xSQL:='SELECT MAX(PERIODO) PERCAR FROM CFC000';
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(xSQL);
  DM1.cdsQry3.Open;
  If DM1.cdsQry3.RecordCount>0 Then
     xPerCar:=DM1.cdsQry3.FieldByName('PERCAR').AsString
  Else
     xPerCar:='000000';

  Result:=xPerCar;
end;

function TfGenTipCob.CorreTel: String;
var xSQL,xCorrOfi:String;
    xCorrAct:Integer;
begin
  xSQL:='SELECT CREAREA,CORREANO,CRENUMCOMP,TIPO,ROWID FROM CRE206 WHERE CREAREA=''COB'' AND CORREANO='+QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)),7,4))+' AND TIPO=''T'' ';
  DM1.cdsFEfec.Close;
  DM1.cdsFEfec.DataRequest(xSQL);
  DM1.cdsFEfec.Open;
  If DM1.cdsFEfec.RecordCount>0 Then
     Begin
       xCorrAct:=StrToInt(DM1.cdsFEfec.fieldbyname('CRENUMCOMP').AsString) + 1;
       xCorrOfi:=Format('%.6d',[xCorrAct]);
       DM1.cdsFEfec.Edit;
       DM1.cdsFEfec.fieldbyname('CRENUMCOMP').AsString:=xCorrOfi;
       DM1.cdsFEfec.ApplyUpdates(0);
       Result:=xCorrOfi;
     End;
  DM1.cdsFEfec.Close;

end;

procedure TfGenTipCob.BitMontosClick(Sender: TObject);
begin
  If dtgCobTelTip.DataSource.DataSet.RecordCount=0 Then Exit;
  Try
    fDetMtoCuo := TfDetMtoCuo.Create(Self);
    fDetMtoCuo.dbsAnoIni.Text:=dbsAnoIni.Text;
    fDetMtoCuo.dbsMesIni.Text:=dbsMesIni.Text;
    fDetMtoCuo.lblNomMes.Caption:=lblNomMes.Caption;
    fDetMtoCuo.ShowModal;
  Finally
    fDetMtoCuo.Free;
  end;

end;

function TfGenTipCob.Busca302(xAsoId, xCreDid: String): String;
begin
DM1.cdsCEdu.Close;
DM1.cdsCEdu.DataRequest('SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))) ;
DM1.cdsCEdu.Open;
If DM1.cdsCEdu.RecordCount > 0 Then
   Result:='S'
Else
   Result:='N';

DM1.cdsCEdu.Close;

end;

procedure TfGenTipCob.BitGeneraClick(Sender: TObject);
var xSQL,xPeriodo,xfIni,xfFin:String;
    xAsoId,xCreDid : String;
    xInteres,xFlat,xMonto,xCuoIni:Real;
    xNumCuo, Boton ,xCount, xAno, xMes:Integer;
    xFecPre,xFecDes : tDateTime;
begin
   Screen.Cursor := crHourglass;
   If StrToInt(dbsMesIni.Text)=1 Then  Begin  xAno := StrToInt(dbsAnoIni.Text)-1 ;  xMes := 12;  End   Else  Begin xAno := StrToInt(dbsAnoIni.Text);  xMes := StrToInt(dbsMesIni.Text)-1;   End;
   xPeriodo:=IntToStr(xAno)+Format('%.2d',[xMes]);   xfIni:='01/'+Format('%.2d',[StrToInt(Trim(Copy(xPeriodo,5,2)))])+'/'+Trim(Copy(xPeriodo,1,4));   xfFin:=DM1.UltimoDia(StrToInt(Trim(Copy(xPeriodo,5,2))),StrToInt(Trim(Copy(xPeriodo,1,4))))+'/'+Format('%.2d',[StrToInt(Trim(Copy(xPeriodo,5,2)))])+'/'+Trim(Copy(xPeriodo,1,4));
   xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,CREDID,CREINTERES,CREDFLAT,CREMTOOTOR,CREMTONABO,CREMTOGIR, '+
         'CUOTAINI,CRENUMCUO,CREFOTORG,NVL(CREFDES,CREFOTORG) CREFDES, '+
         'CREINTERES,TIPDESEID,SUBSTR(CREDID,7,2)||''-''||SUBSTR(CREDID,11,7)||''-''||''-''||SUBSTR(CREDID,3,4) NUMERO '+
         'FROM CRE301 '+
         'WHERE CREFOTORG BETWEEN  '+QuotedStr(xfIni)+' AND '+QuotedStr(xfFin)+' AND '+
         'NOT EXISTS (SELECT ASOID,CREDID FROM CRE302 WHERE ASOID=CRE301.ASOID AND CREDID=CRE301.CREDID) '+
         'AND CRE301.CREESTID<>''13'' AND CRE301.TIPDESEID NOT IN (''05'',''06'',''09'') ';
   DM1.cdsRegCob.Close;
   DM1.cdsRegCob.DataRequest(xSQL);
   DM1.cdsRegCob.Open;
   If DM1.cdsRegCob.RecordCount>0 Then
      Begin
          grbProcesos.Caption:='Generando Cronogramas';  grbProcesos.Visible:=True;
          prbAvances.Position := 0; prbAvances.Max:=DM1.cdsRegCob.RecordCount; prbAvances.Position := 1;
          DM1.cdsRegCob.First;
          While Not DM1.cdsRegCob.Eof Do
          Begin
              fGenTipCob.Refresh;
              prbAvances.Position := prbAvances.Position + 1;
              xAsoId:=DM1.cdsRegCob.FieldByName('ASOID').AsString;  xCreDid:=DM1.cdsRegCob.FieldByName('CREDID').AsString; xInteres:=DM1.cdsRegCob.FieldByName('CREINTERES').AsFloat; xFlat:=DM1.cdsRegCob.FieldByName('CREDFLAT').AsFloat; xMonto:=DM1.cdsRegCob.FieldByName('CREMTOOTOR').AsFloat; xCuoIni:=DM1.cdsRegCob.FieldByName('CUOTAINI').AsFloat; xNumCuo:=DM1.cdsRegCob.FieldByName('CRENUMCUO').AsInteger; xFecPre :=DM1.cdsRegCob.FieldByName('CREFOTORG').AsDateTime; xFecDes :=DM1.cdsRegCob.FieldByName('CREFDES').AsDateTime;
              If Busca302(xAsoId, xCreDid)='N' Then
                 Begin
                     DM1.GnrCronograma(xAsoid ,xCreDid ,xInteres ,xFlat ,xMonto-xCuoIni ,xFecDes ,xNumCuo);
                     xSQL:='UPDATE CRE301 SET CREESTID=''02'',CREESTADO=''POR COBRAR'',CRECUOTA='+FloattoStr(DM1.CalculaCuota(xInteres,xFlat,xMonto-xCuoIni,xNumCuo))+', CRESDOACT='+FloatToStr(DM1.CalculaCuota(xInteres,xFlat,xMonto-xCuoIni,xNumCuo)*xNumCuo)+' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid) ;
                     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                 End;
              DM1.cdsRegCob.Next;
          End;
          prbAvances.Position:=0; grbProcesos.Visible:=False;
          MessageDlg('Cronogramas De Pago Para Desembolsos En EFECTIVO y SERVICIOS Se Generaron Con Exito...!', mtInformation, [mbOk], 0);
      End;
      DM1.cdsRegCob.Close;
      Screen.Cursor := crDefault;
      Close;
end;

function TfGenTipCob.PorCalculo(xAsoId,xCreDid,xCreCuota: String): Integer;
var xSQL:String;
begin
    Result:=100;
    xSQL:='SELECT NVL(PORENVIO,0) PORENVIO FROM COB_CUO_DES_PRO WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CRECUOTA='+QuotedStr(xCreCuota)+' AND CREESTID IN (''02'',''11'',''27'') ';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If Length(Trim(DM1.cdsQry.FieldByName('PORENVIO').AsString))>0 Then
       Begin
          Result:=DM1.cdsQry.FieldByName('PORENVIO').AsInteger;
       End;
       DM1.cdsQry.Close;

end;

end.
