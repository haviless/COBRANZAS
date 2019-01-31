unit COB916;

// Actualizaciones:

// HPC_201223_COB : Actualización por Fondo Protección de Desgravamen DAF_2012000418_COB_1
//                  Reporte de Cesantes del Régimen 19990 o AFP con deuda pendiente 
//                  Se crea la columna DB2ADMIN.COB900.MONPACDESGRAV, la cual se actualiza con el monto del desgravamen pactado
// DPP_201218_COB : Pase a producción se realiza a partir del HPC_201223_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Mask,
  wwdbedit, Wwdbspin, Db, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppDBBDE, ppPrnabl, ppCtrls, ppBands, ppCache, wwdblook,
  Wwdbdlg, ppVar;

type
  TfCobTrimestre = class(TForm)
    GroupBox1: TGroupBox;
    dtgAsociados: TwwDBGrid;
    rdgTipAso: TRadioGroup;
    BitMostrar: TBitBtn;
    GroupBox2: TGroupBox;
    BitGenera: TBitBtn;
    Label1: TLabel;
    dtgCuentas: TwwDBGrid;
    BitTransf: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    dbseAno: TwwDBSpinEdit;
    dbseMes: TwwDBSpinEdit;
    Panel1: TPanel;
    lblCount: TLabel;
    Label2: TLabel;
    dtgCabEnv: TwwDBGrid;
    Label3: TLabel;
    BitMant: TBitBtn;
    BitMuestra: TBitBtn;
    DbRep4Cuo: TppDBPipeline;
    Rep4Cuo: TppReport;
    ppHeaderBand33: TppHeaderBand;
    TitCuo: TppLabel;
    ppLabel697: TppLabel;
    ppLabel698: TppLabel;
    ppLabel699: TppLabel;
    ppLabel700: TppLabel;
    ppLabel701: TppLabel;
    ppSystemVariable68: TppSystemVariable;
    ppSystemVariable69: TppSystemVariable;
    ppSystemVariable70: TppSystemVariable;
    ppLabel702: TppLabel;
    ppLabel703: TppLabel;
    ppLabel704: TppLabel;
    ppDetailBand35: TppDetailBand;
    ppDBText290: TppDBText;
    ppDBText292: TppDBText;
    ppDBText293: TppDBText;
    ppDBText294: TppDBText;
    ppDBText295: TppDBText;
    ppFooterBand28: TppFooterBand;
    ppSummaryBand33: TppSummaryBand;
    ppDBCalc228: TppDBCalc;
    ppDBCalc229: TppDBCalc;
    ppDBCalc232: TppDBCalc;
    ppLabel690: TppLabel;
    ppLabel695: TppLabel;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppGroup43: TppGroup;
    ppGroupHeaderBand43: TppGroupHeaderBand;
    ppDBText283: TppDBText;
    ppGroupFooterBand43: TppGroupFooterBand;
    ppDBCalc226: TppDBCalc;
    ppDBCalc227: TppDBCalc;
    ppDBCalc231: TppDBCalc;
    ppLabel691: TppLabel;
    ppLabel694: TppLabel;
    ppLine173: TppLine;
    ppGroup44: TppGroup;
    ppGroupHeaderBand44: TppGroupHeaderBand;
    ppDBText284: TppDBText;
    ppLine170: TppLine;
    ppLine172: TppLine;
    ppGroupFooterBand44: TppGroupFooterBand;
    ppDBCalc224: TppDBCalc;
    ppDBCalc225: TppDBCalc;
    ppDBCalc230: TppDBCalc;
    ppLabel692: TppLabel;
    ppLabel693: TppLabel;
    ppLine171: TppLine;
    Panel3: TPanel;
    rdbNoPagados: TRadioButton;
    rdbPagados: TRadioButton;
    rdbGeneral: TRadioButton;
    BitImprime: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure rdgTipAsoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitGeneraClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtgCabEnvDblClick(Sender: TObject);
    procedure dtgCabEnvRowChanged(Sender: TObject);
    procedure BitTransfClick(Sender: TObject);
    procedure BitMantClick(Sender: TObject);
    procedure BitMuestraClick(Sender: TObject);
    procedure BitImprimeClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimpiaCds;
    procedure MstDetalle(xAsoId:String);
    procedure GrabaCOB900(xDataSet:tDataSet; xAsoId:String; xImporte:Currency);
    procedure GrabaCRE404(xDataSet:tDataSet; xAsoId:String; xImporte:Currency);
  public
    { Public declarations }
  end;

var
  fCobTrimestre: TfCobTrimestre;

implementation

uses COBDM1, COB937;

{$R *.dfm}

procedure TfCobTrimestre.FormActivate(Sender: TObject);
begin
  LimpiaCds;
  dbseAno.Value :=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4));
  dbseMes.Value:= StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));
  rdgTipAso.ItemIndex := 0;
end;

procedure TfCobTrimestre.BitMostrarClick(Sender: TObject);
Var xSQL,tSQL:String;
    xMovAso:Integer;
begin
    DM1.cdsAso.Close;
    If rdgTipAso.ItemIndex = 0 Then
        Begin
         xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,USEID,UPROID,ASONCTA,SITCTA FROM APO201 WHERE ASOTIPID=''DO'' AND VARIASCUOT=''S'' ORDER BY ASOAPENOM';
         tSQL:='SELECT NVL(COUNT(*),0) AS MOVASO FROM APO201 WHERE ASOTIPID=''DO'' AND VARIASCUOT=''S'' ';
        End
    Else If rdgTipAso.ItemIndex = 1 Then
        Begin
         xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,USEID,UPROID,ASONCTA,SITCTA FROM APO201 WHERE ASOTIPID=''CE'' AND VARIASCUOT=''S'' ORDER BY ASOAPENOM';
         tSQL:='SELECT NVL(COUNT(*),0) AS MOVASO FROM APO201 WHERE ASOTIPID=''CE'' AND VARIASCUOT=''S'' ';
        End;
    Screen.Cursor := crHourglass;
    DM1.cdsAso.DataRequest(xSQL);
    DM1.cdsAso.Open;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(tSQL);
    DM1.cdsQry.Open;
    xMovAso:= DM1.cdsQry.fieldByName('MOVASO').AsInteger;
    DM1.cdsQry.Close;
    dtgAsociados.ColumnByName('ASOAPENOM').FooterValue :='Total';
    dtgAsociados.ColumnByName('ASONCTA').FooterValue := FloatToStrF(xMovAso,ffNumber, 10, 0);
    Screen.Cursor := crDefault;
end;

procedure TfCobTrimestre.LimpiaCds;
var xSQL:String;
begin
  xSQL:='SELECT ASOCODMOD,ASOAPENOM,USEID,UPROID,ASONCTA,SITCTA FROM APO201 WHERE ASOCODMOD=''@#$%^&*()'' ';
  DM1.cdsAso.Close;
  DM1.cdsAso.DataRequest(xSQL);
  DM1.cdsAso.Open;

  DM1.cdsCEdu.Close;
  DM1.cdsCEdu.DataRequest('SELECT ASOID,ASOCODMOD,ASOAPENOM,ASONCTA,SITCTA,SUM(NVL(CRESALDO2,0)) CRESALDO2,COUNT(*) CUOTAS FROM COB900 WHERE FORPAGOID=''XX'' AND PERIODO=''300025'' GROUP BY  ASOID,ASOCODMOD,ASOAPENOM,ASONCTA,SITCTA ORDER BY ASOAPENOM');
  DM1.cdsCEdu.Open;

  DM1.cdsCAso.Close;
  DM1.cdsCAso.DataRequest('SELECT * FROM COB900 WHERE FORPAGOID=''XX'' AND PERIODO=''300025'' ');
  DM1.cdsCAso.Open;

end;

procedure TfCobTrimestre.rdgTipAsoClick(Sender: TObject);
begin
 LimpiaCds;
end;

procedure TfCobTrimestre.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TfCobTrimestre.BitGeneraClick(Sender: TObject);
var xTipAso,xAsoId,xSQL:String; xImporte, xSaldo:Currency; xCount:Integer;
begin
If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
      End;

If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
    Begin
      MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
      Exit;
    End;
If rdgTipAso.ItemIndex=0 Then xTipAso:='AC' Else xTipAso:='CE';
DM1.cdsCia.Close;
DM1.cdsCia.DataRequest('SELECT * FROM COB900 WHERE FORPAGOID=''18'' AND PERIODO='+QuotedStr(dbseAno.Text+Format('%.2d',[StrToInt(dbseMes.Text)]))+' AND ASOSITID='+QuotedStr(xTipAso) );
DM1.cdsCia.Open;
If DM1.cdsCia.RecordCount=0 Then
   Begin
   If MessageDlg('¿Esta Seguro Que Desea Generar La Cobranza De CUATRO CUOTAS?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   Begin
      xCount:=0;
      DM1.cdsAso.First;
      While Not DM1.cdsAso.Eof Do
      Begin
         xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;
         Inc(xCount); lblCount.Caption:= IntToStr(xCount);
         DM1.cdsCambios.Close;
         xSQL:='SELECT * FROM (SELECT * FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREESTID IN (''02'',''11'',''14'',''27'') AND FORPAGOID=''18''  ORDER BY CREFVEN ) WHERE ROWNUM < 6 ';
         DM1.cdsCambios.DataRequest(xSQL);
         DM1.cdsCambios.Open;
         If DM1.cdsCambios.RecordCount > 0 Then
            Begin
               DM1.cdsCambios.First;
               While Not DM1.cdsCambios.Eof Do
               Begin
                  xImporte:=DM1.cdsCambios.fieldByName('CREMTO').AsCurrency - DM1.cdsCambios.fieldByName('CREMTOCOB').AsCurrency;
                  GrabaCOB900(DM1.cdsCambios,xAsoId,xImporte);
                  DM1.cdsCambios.Next;
               End;
               DM1.cdsCambios.Close;
            End;
      DM1.cdsAso.Next; Refresh;
      End;
      DM1.cdsCEdu.Close;
      DM1.cdsCEdu.DataRequest('SELECT ASOID,ASOCODMOD,ASOAPENOM,ASONCTA,SITCTA,SUM(NVL(CRESALDO2,0)) CRESALDO2,COUNT(*) CUOTAS FROM COB900 WHERE FORPAGOID=''18'' AND PERIODO='+QuotedStr(dbseAno.Text+Format('%.2d',[StrToInt(dbseMes.Text)]))+' AND ASOSITID='+QuotedStr(xTipAso)+' GROUP BY ASOID,ASOCODMOD,ASOAPENOM,ASONCTA,SITCTA ORDER BY ASOAPENOM' );
      DM1.cdsCEdu.Open;
      xSaldo:=0;
      DM1.cdsCEdu.First;
      While Not DM1.cdsCEdu.Eof Do
      Begin
         xSaldo:=xSaldo + DM1.cdsCEdu.fieldbyname('CRESALDO2').AsCurrency;
         DM1.cdsCEdu.Next;
      End;
      dtgCabEnv.ColumnByName('ASOAPENOM').FooterValue :='Total';
      dtgCabEnv.ColumnByName('CRESALDO2').FooterValue := FloatToStrF(xSaldo,ffNumber, 10, 2);
      TNumericField(DM1.cdsCEdu.fieldbyname('CRESALDO2')).DisplayFormat:='###,###.#0';
   End;
   End

Else
   Begin
       MessageDlg('Ya Se GENERO Información Para Este Periodo !!!', mtError, [mbOk], 0);
       Exit;
   End;


end;

procedure TfCobTrimestre.GrabaCOB900(xDataSet: tDataSet; xAsoId: String; xImporte: Currency);
var xTipAso, xSQL:String;
begin
Screen.Cursor := crHourglass;
DM1.cdsCuotas.Close;
DM1.cdsCuotas.DataRequest('SELECT * FROM COB900 WHERE ASOID='+QuotedStr(xAsoId));
DM1.cdsCuotas.Open;
DM1.cdsCuotas.Insert;
DM1.cdsCuotas.FieldByName('ASOID').AsString := xAsoId ;
DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString := xDataSet.FieldByName('ASOCODMOD').AsString ;
DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString := xDataSet.FieldByName('ASOCODAUX').AsString ;
DM1.cdsCuotas.FieldByName('ASOCODPAGO').AsString := xDataSet.FieldByName('ASOCODPAGO').AsString ;
DM1.cdsCuotas.FieldByName('TIPCREID').AsString := xDataSet.FieldByName('TIPCREID').AsString ;
DM1.cdsCuotas.FieldByName('TMONID').AsString := xDataSet.FieldByName('TMONID').AsString ;
DM1.cdsCuotas.FieldByName('CREANO').AsString := xDataSet.FieldByName('CREANO').AsString ;
DM1.cdsCuotas.FieldByName('CREMES').AsString := xDataSet.FieldByName('CREMES').AsString ;
DM1.cdsCuotas.FieldByName('CRESALDO').AsCurrency := xDataSet.FieldByName('CRESALDO').AsCurrency;
DM1.cdsCuotas.FieldByName('CRECUOTA').AsCurrency := xDataSet.FieldByName('CRECUOTA').AsCurrency;
DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency := xDataSet.FieldByName('CREMTO').AsCurrency;
DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency := xDataSet.FieldByName('CREMTOCOB').AsCurrency;
DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency := xDataSet.FieldByName('CREAMORT').AsCurrency;
DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency := xDataSet.FieldByName('CREINTERES').AsCurrency;
DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency := xDataSet.FieldByName('CREFLAT').AsCurrency;
// Inicio: DPP_201218_COB
DM1.cdsCuotas.FieldByName('MONPACDESGRAV').AsCurrency := xDataSet.FieldByName('MONPACDESGRAV').AsCurrency;
// Fin: DPP_201218_COB
DM1.cdsCuotas.FieldByName('CREFVEN').AsDateTime := xDataSet.FieldByName('CREFVEN').AsDateTime;
DM1.cdsCuotas.FieldByName('USEID').AsString := xDataSet.FieldByName('USEID').AsString ;
DM1.cdsCuotas.FieldByName('UPROID').AsString := xDataSet.FieldByName('UPROID').AsString ;
DM1.cdsCuotas.FieldByName('DPTOID').AsString := xDataSet.FieldByName('DPTOID').AsString ;
DM1.cdsCuotas.FieldByName('UPAGOID').AsString := xDataSet.FieldByName('UPAGOID').AsString ;
DM1.cdsCuotas.FieldByName('BANCOID').AsString := xDataSet.FieldByName('BANCOID').AsString ;
DM1.cdsCuotas.FieldByName('USUARIO').AsString := xDataSet.FieldByName('USUARIO').AsString ;
DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString := xDataSet.FieldByName('ASOAPENOM').AsString ;
DM1.cdsCuotas.FieldByName('FORPAGOID').AsString := xDataSet.FieldByName('FORPAGOID').AsString ;
DM1.cdsCuotas.FieldByName('CREDID').AsString := xDataSet.FieldByName('CREDID').AsString ;
DM1.cdsCuotas.FieldByName('TMONABR').AsString := xDataSet.FieldByName('TMONABR').AsString ;
DM1.cdsCuotas.FieldByName('TIPCREABR').AsString := xDataSet.FieldByName('TIPCREABR').AsString ;
DM1.cdsCuotas.FieldByName('CIAID').AsString := xDataSet.FieldByName('CIAID').AsString ;
DM1.cdsCuotas.FieldByName('CREESTID').AsString := xDataSet.FieldByName('CREESTID').AsString ;
DM1.cdsCuotas.FieldByName('CREESTADO').AsString := xDataSet.FieldByName('CREESTADO').AsString ;
DM1.cdsCuotas.FieldByName('PERIODO').AsString := Trim(dbseAno.Text)+Format('%.2d',[StrToInt(dbseMes.Text)]);
If rdgTipAso.ItemIndex=0 Then xTipAso:='AC' Else xTipAso:='CE';
DM1.cdsCuotas.FieldByName('ASOTIPID').AsString := xTipAso;
DM1.cdsCuotas.FieldByName('CRESALDO2').AsCurrency := xImporte;
DM1.cdsCuotas.FieldByName('ASOSITID').AsString := xTipAso;
DM1.cdsCuotas.FieldByName('ASONCTA').AsString := DM1.cdsAso.FieldByName('ASONCTA').AsString ;
DM1.cdsCuotas.FieldByName('SITCTA').AsString := DM1.cdsAso.FieldByName('SITCTA').AsString ;
DM1.cdsCuotas.ApplyUpdates(0);
DM1.cdsCuotas.Close;
xSQL:='UPDATE CRE302 SET CREESTID=''14'',CREESTADO=''EN PROCESO DE COBRANZA'',PERPROC='+QuotedStr(Trim(dbseAno.Text)+Format('%.2d',[StrToInt(dbseMes.Text)]))+',FECPROC='+QuotedStr(DateToStr(DM1.FechaSys))+',FLGPROC=''S'' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xDataSet.FieldByName('CREDID').AsString)+' AND CRECUOTA='+QuotedStr(xDataSet.FieldByName('CRECUOTA').AsString);
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
Screen.Cursor := crDefault;
end;

procedure TfCobTrimestre.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
DM1.cdsCAso.Close;
DM1.cdsCEdu.Close;
end;

procedure TfCobTrimestre.MstDetalle(xAsoId: String);
var xSaldo:Currency;
begin
DM1.cdsCAso.Close;
DM1.cdsCAso.DataRequest('SELECT * FROM COB900 WHERE FORPAGOID=''18'' AND PERIODO='+QuotedStr(dbseAno.Text+Format('%.2d',[StrToInt(dbseMes.Text)]))+' AND ASOID='+QuotedStr(xAsoId)+' ORDER BY ASOID,CREFVEN,CRECUOTA ');
DM1.cdsCAso.Open;
xSaldo:=0;
DM1.cdsCAso.First;
While Not DM1.cdsCAso.Eof Do
Begin
   xSaldo:=xSaldo + DM1.cdsCAso.fieldbyname('CRESALDO2').AsCurrency;
   DM1.cdsCAso.Next;
End;
dtgCuentas.ColumnByName('ASOAPENOM').FooterValue :='Total';
dtgCuentas.ColumnByName('CRESALDO2').FooterValue := FloatToStrF(xSaldo,ffNumber, 10, 2);
TNumericField(DM1.cdsCAso.fieldbyname('CRESALDO2')).DisplayFormat:='###,###.#0';
end;

procedure TfCobTrimestre.dtgCabEnvDblClick(Sender: TObject);
var xAsoId:String;
begin
xAsoId:=DM1.cdsCEdu.FieldByName('ASOID').AsString;
MstDetalle(xAsoId);
end;

procedure TfCobTrimestre.dtgCabEnvRowChanged(Sender: TObject);
var xAsoId:String;
begin
xAsoId:=DM1.cdsCEdu.FieldByName('ASOID').AsString;
MstDetalle(xAsoId);

end;

procedure TfCobTrimestre.BitTransfClick(Sender: TObject);
var xAsoId,xSQL,xTipAso:String;
    xImporte:Currency;
begin
If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
     Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
     End;
Screen.Cursor := crHourglass;
If rdgTipAso.ItemIndex=0 Then xTipAso:='AC' Else xTipAso:='CE';
xSQL:='DELETE FROM CRE404 A WHERE A.PERIODO='+QuotedStr(dbseAno.Text+Format('%.2d',[StrToInt(dbseMes.Text)]))+' AND A.FORPAGOID=''18'' AND  EXISTS (SELECT FORPAGOID,PERIODO,ASOID FROM COB900 WHERE A.PERIODO=PERIODO AND A.FORPAGOID=FORPAGOID AND ASOSITID='+QuotedStr(xTipAso)+' AND A.ASOID=ASOID)';
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
xSQL:='SELECT * FROM COB900 WHERE FORPAGOID=''18'' AND PERIODO='+QuotedStr(dbseAno.Text+Format('%.2d',[StrToInt(dbseMes.Text)]))+' AND ASOSITID='+QuotedStr(xTipAso);
DM1.cdsAsociados.Close;
DM1.cdsAsociados.DataRequest(xSQL);
DM1.cdsAsociados.Open;
If DM1.cdsAsociados.RecordCount > 0 Then
   Begin
     DM1.cdsAsociados.First;
     While Not DM1.cdsAsociados.Eof Do
     Begin
         Refresh;
         xAsoId:=DM1.cdsAsociados.FieldByName('ASOID').AsString;
         xImporte:= DM1.cdsAsociados.fieldByName('CRESALDO2').AsCurrency;
         GrabaCRE404(DM1.cdsAsociados,xAsoId,xImporte);
         DM1.cdsAsociados.Next;
     End;
   End;
DM1.cdsAsociados.Close;
 
Screen.Cursor := crDefault;

end;

procedure TfCobTrimestre.GrabaCRE404(xDataSet: tDataSet; xAsoId: String; xImporte: Currency);
var xTipAso, xSQL:String;
begin
Screen.Cursor := crHourglass;
DM1.cdsCuotas.Close;
DM1.cdsCuotas.DataRequest('SELECT * FROM CRE404 WHERE ASOID='+QuotedStr(xAsoId));
DM1.cdsCuotas.Open;
DM1.cdsCuotas.Insert;
DM1.cdsCuotas.FieldByName('ASOID').AsString := xAsoId ;
DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString := xDataSet.FieldByName('ASOCODMOD').AsString ;
DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString := xDataSet.FieldByName('ASOCODAUX').AsString ;
DM1.cdsCuotas.FieldByName('ASOCODPAGO').AsString := xDataSet.FieldByName('ASOCODPAGO').AsString ;
DM1.cdsCuotas.FieldByName('TIPCREID').AsString := xDataSet.FieldByName('TIPCREID').AsString ;
DM1.cdsCuotas.FieldByName('TMONID').AsString := xDataSet.FieldByName('TMONID').AsString ;
DM1.cdsCuotas.FieldByName('CREANO').AsString := Trim(dbseAno.Text);  //xDataSet.FieldByName('CREANO').AsString ;
DM1.cdsCuotas.FieldByName('CREMES').AsString := Trim(Format('%.2d',[StrToInt(dbseMes.Text)]));  //xDataSet.FieldByName('CREMES').AsString ;
DM1.cdsCuotas.FieldByName('CRESALDO').AsCurrency := xDataSet.FieldByName('CRESALDO').AsCurrency;
DM1.cdsCuotas.FieldByName('CRECUOTA').AsCurrency := xDataSet.FieldByName('CRECUOTA').AsCurrency;
DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency := xDataSet.FieldByName('CREMTO').AsCurrency;
DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency := xDataSet.FieldByName('CREMTOCOB').AsCurrency;
DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency := xDataSet.FieldByName('CREAMORT').AsCurrency;
DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency := xDataSet.FieldByName('CREINTERES').AsCurrency;
DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency := xDataSet.FieldByName('CREFLAT').AsCurrency;
DM1.cdsCuotas.FieldByName('CREFVEN').AsDateTime := xDataSet.FieldByName('CREFVEN').AsDateTime;
DM1.cdsCuotas.FieldByName('USEID').AsString := xDataSet.FieldByName('USEID').AsString ;
DM1.cdsCuotas.FieldByName('UPROID').AsString := xDataSet.FieldByName('UPROID').AsString ;
DM1.cdsCuotas.FieldByName('DPTOID').AsString := xDataSet.FieldByName('DPTOID').AsString ;
DM1.cdsCuotas.FieldByName('UPAGOID').AsString := xDataSet.FieldByName('UPAGOID').AsString ;
DM1.cdsCuotas.FieldByName('BANCOID').AsString := xDataSet.FieldByName('BANCOID').AsString ;
DM1.cdsCuotas.FieldByName('USUARIO').AsString := xDataSet.FieldByName('USUARIO').AsString ;
DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString := xDataSet.FieldByName('ASOAPENOM').AsString ;
DM1.cdsCuotas.FieldByName('FORPAGOID').AsString := xDataSet.FieldByName('FORPAGOID').AsString ;
DM1.cdsCuotas.FieldByName('CREDID').AsString := xDataSet.FieldByName('CREDID').AsString ;
DM1.cdsCuotas.FieldByName('TMONABR').AsString := xDataSet.FieldByName('TMONABR').AsString ;
DM1.cdsCuotas.FieldByName('TIPCREABR').AsString := xDataSet.FieldByName('TIPCREABR').AsString ;
DM1.cdsCuotas.FieldByName('CIAID').AsString := xDataSet.FieldByName('CIAID').AsString ;
DM1.cdsCuotas.FieldByName('CREESTID').AsString := xDataSet.FieldByName('CREESTID').AsString ;
DM1.cdsCuotas.FieldByName('CREESTADO').AsString := xDataSet.FieldByName('CREESTADO').AsString ;
DM1.cdsCuotas.FieldByName('PERIODO').AsString := Trim(dbseAno.Text)+Format('%.2d',[StrToInt(dbseMes.Text)]);
If rdgTipAso.ItemIndex=0 Then xTipAso:='AC' Else xTipAso:='CE';
DM1.cdsCuotas.FieldByName('ASOTIPID').AsString := xTipAso;
DM1.cdsCuotas.FieldByName('CRESALDO2').AsCurrency := xImporte;
DM1.cdsCuotas.FieldByName('ASOSITID').AsString := xTipAso;
DM1.cdsCuotas.FieldByName('NOFID').AsString := xDataSet.FieldByName('NOFID').AsString ;
DM1.cdsCuotas.ApplyUpdates(0);
DM1.cdsCuotas.Close;
Screen.Cursor := crDefault;
end;

procedure TfCobTrimestre.BitMantClick(Sender: TObject);
var xSQL:String;
Begin
  Try
    fImprimeTrimestre := TfImprimeTrimestre.create(Self);
    Screen.Cursor := crHourglass;
    xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,USEID,UPROID,ASONCTA,SITCTA FROM APO201 WHERE VARIASCUOT=''S'' ORDER BY ASOAPENOM';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    Screen.Cursor := crDefault;
    fImprimeTrimestre.ShowModal;
  Finally
    fImprimeTrimestre.Free;
  end;
end;

procedure TfCobTrimestre.BitMuestraClick(Sender: TObject);
var xTipAso,xAsoId,xSQL:String; xImporte, xSaldo:Currency; xCount:Integer;
begin
If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
      End;

If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
    Begin
      MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
      Exit;
    End;
If rdgTipAso.ItemIndex=0 Then xTipAso:='AC' Else xTipAso:='CE';
DM1.cdsCia.Close;
DM1.cdsCia.DataRequest('SELECT * FROM COB900 WHERE FORPAGOID=''18'' AND PERIODO='+QuotedStr(dbseAno.Text+Format('%.2d',[StrToInt(dbseMes.Text)]))+' AND ASOSITID='+QuotedStr(xTipAso) );
DM1.cdsCia.Open;
If DM1.cdsCia.RecordCount>0 Then
   Begin
      If rdgTipAso.ItemIndex=0 Then xTipAso:='AC' Else xTipAso:='CE';
      Screen.Cursor := crHourglass;
      DM1.cdsCEdu.Close;
      DM1.cdsCEdu.DataRequest('SELECT ASOID,ASOCODMOD,ASOAPENOM,ASONCTA,SITCTA,SUM(NVL(CRESALDO2,0)) CRESALDO2,COUNT(*) CUOTAS FROM COB900 WHERE FORPAGOID=''18'' AND PERIODO='+QuotedStr(dbseAno.Text+Format('%.2d',[StrToInt(dbseMes.Text)]))+' AND ASOSITID='+QuotedStr(xTipAso)+' GROUP BY  ASOID,ASOCODMOD,ASOAPENOM,ASONCTA,SITCTA ORDER BY ASOAPENOM' );
      DM1.cdsCEdu.Open;
      xSaldo:=0;
      DM1.cdsCEdu.First;
      While Not DM1.cdsCEdu.Eof Do
      Begin
         xSaldo:=xSaldo + DM1.cdsCEdu.fieldbyname('CRESALDO2').AsCurrency;
         DM1.cdsCEdu.Next;
      End;
      dtgCabEnv.ColumnByName('ASOAPENOM').FooterValue :='Total';
      dtgCabEnv.ColumnByName('CRESALDO2').FooterValue := FloatToStrF(xSaldo,ffNumber, 10, 2);
      TNumericField(DM1.cdsCEdu.fieldbyname('CRESALDO2')).DisplayFormat:='###,###.#0';
      Screen.Cursor := crDefault;
   End
Else
   Begin
      MessageDlg('No EXISTE Información Procesada Para Este Periodo !!!', mtError, [mbOk], 0);
      Exit;
   End;

end;

procedure TfCobTrimestre.BitImprimeClick(Sender: TObject);
var xSQL,xSQLo,Tit:String;
begin
  If rdbGeneral.Checked Then  Begin xSQLo:=''; Tit:=rdbGeneral.Caption;  End;
  If rdbPagados.Checked Then  Begin  xSQLo:=' AND NVL(B.MONTO,0)>0 '; Tit:=rdbPagados.Caption;  End;
  If rdbNoPagados.Checked Then Begin xSQLo:=' AND NVL(B.MONTO,0)=0 '; Tit:=rdbNoPagados.Caption;  End;
  Screen.Cursor := crHourglass;
  xSQL:='SELECT  NVL(E.UPRONOM,''NO IDENTIFICADO'') UPRONOM,NVL(D.USENOM,''NO IDENTIFICADO'') USENOM,C.USEID,C.UPAGOID,C.UPROID,A.ASOID,C.ASOCODMOD,C.ASOAPENOM,A.PERIODO,CRESALDO2,NVL(B.MONTO,0) MONTO,C.ASONCTA '+
        'FROM (SELECT  ASOID,PERIODO,SUM(CRESALDO2) CRESALDO2 FROM COB900 WHERE PERIODO='+QuotedStr(dbseAno.Text+Format('%.2d',[StrToInt(dbseMes.Text)]))+' GROUP BY ASOID,PERIODO) A,COB351 B,APO201 C,APO101 D,APO102 E '+
        'WHERE A.ASOID=B.ASOID(+) AND A.PERIODO=B.PERIODO(+) AND A.ASOID=C.ASOID(+) AND C.USEID=D.USEID(+) AND C.UPAGOID=D.UPAGOID(+) AND C.UPROID=D.UPROID(+) AND C.UPROID=E.UPROID(+) AND A.PERIODO='+QuotedStr(dbseAno.Text+Format('%.2d',[StrToInt(dbseMes.Text)]))+xSQLo ;
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSQL);
  DM1.cdsReporte.Open;
  Screen.Cursor := crDefault;
  If DM1.cdsReporte.RecordCount > 0 Then
     Begin
        TitCuo.Caption:='COBRANZA DE ASOCIADOS CON DESCUENTO DE CUATRO SUELDOS  A : '+DM1.DesMes(StrToInt(dbseMes.Text),'N')+' - '+dbseAno.Text+' - ('+Tit+')' ;
        Rep4Cuo.Print;
        Rep4Cuo.Cancel;
     End;
     DM1.cdsReporte.Close;
end;

end.












