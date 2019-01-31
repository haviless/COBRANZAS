unit COB963;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, fcLabel, Buttons, Grids,
  Wwdbigrd, Wwdbgrid, Db, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ComCtrls,
  ExtCtrls;
type
  TfDesTelSgt = class(TForm)
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    GroupBox1: TGroupBox;
    dtgSgtCuota: TwwDBGrid;
    BitSalir: TBitBtn;
    BitDescueto: TBitBtn;
    Panel1: TPanel;
    lblDescuento: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    lblActual: TLabel;
    Label3: TLabel;
    lblSeleccion: TLabel;
    Shape1: TShape;
    procedure BitSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtgSgtCuotaDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitDescuetoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xSaldos: Currency;
  end;

var
  fDesTelSgt: TfDesTelSgt;

implementation

uses COBDM1, COB903, COB953;

{$R *.dfm}

procedure TfDesTelSgt.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfDesTelSgt.FormCreate(Sender: TObject);
begin
dtgSgtCuota.SetControlType('FLAGVAR',fctCheckBox, 'S;N');
end;

procedure TfDesTelSgt.dtgSgtCuotaDblClick(Sender: TObject);
var xAsoId,xCredId,xCrecuota,xSQL:String;
    xRegistro: TBookmark;
begin
   xAsoId    :=DM1.cdsRegCob.FieldByName('ASOID').AsString;
   xCredId   :=DM1.cdsRegCob.FieldByName('CREDID').AsString;
   xCreCuota :=DM1.cdsRegCob.FieldByName('CRECUOTA').AsString;
   xRegistro:=DM1.cdsRegCob.GetBookmark;
   If DM1.cdsRegCob.FieldByName('FLAGVAR').AsString='S' Then
      Begin
        xSaldos := xSaldos - DM1.cdsRegCob.FieldByName('CUOPAG').AsCurrency;
        If xSaldos < 0 Then xSaldos:=0;
        xSQL:='UPDATE CRE302 SET FLAGVAR=''N'' WHERE ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And  CRECUOTA='+QuotedStr(Trim(xCreCuota));
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End
   Else
      Begin
        xSaldos := xSaldos + DM1.cdsRegCob.FieldByName('CUOPAG').AsCurrency;
        xSQL:='UPDATE CRE302 SET FLAGVAR=''S'' WHERE ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And  CRECUOTA='+QuotedStr(Trim(xCreCuota));
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
   lblSeleccion.Caption:=FormatFloat('###,##0.#0',xSaldos);
   lblDescuento.Caption:=FormatFloat('###,##0.#0',xSaldos+DM1.Valores(lblActual.Caption));
   DM1.cdsRegCob.Close;
   DM1.cdsRegCob.Open;
   TNumericField(DM1.cdsRegCob.fieldbyname('CUOPAG')).DisplayFormat:='###,###,##0.#0';
   DM1.cdsRegCob.GotoBookmark(xRegistro);
end;

procedure TfDesTelSgt.FormClose(Sender: TObject; var Action: TCloseAction);
var xAsoId,xCreDid:String;
begin
xAsoId    :=DM1.cdsRegCob.FieldByName('ASOID').AsString;
xCredId   :=DM1.cdsRegCob.FieldByName('CREDID').AsString;
fCronoPag.LimpiaFlgvar(xAsoId,xCreDid);
end;

procedure TfDesTelSgt.BitDescuetoClick(Sender: TObject);
var xSQL,xAsoId,xCreDid,xCreCuota:String;
begin
  Screen.Cursor := crHourglass;
  DM1.cdsRegCob.First;
  While Not DM1.cdsRegCob.Eof Do
  Begin
     xAsoId    :=DM1.cdsRegCob.FieldByName('ASOID').AsString;
     xCredId   :=DM1.cdsRegCob.FieldByName('CREDID').AsString;
     xCreCuota :=DM1.cdsRegCob.FieldByName('CRECUOTA').AsString;
     If DM1.cdsRegCob.FieldByName('FLAGVAR').AsString='S' Then
     Begin
         xSQL:='INSERT INTO COB401 SELECT '+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' PERCOB, ASOID, ASOAPENOM, CREDID, CRECUOTA, CREMTO, CREMTOCOB, CRESALDO, CREESTID, CREESTADO, FORPAGOID, CREFVEN, CREANO, CREMES, USUARIO, HREG,'+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId)+' AND PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]))),'COB402','IDTIPCOB'))+' IDTIPCOB  FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCredId)+' AND CRECUOTA='+QuotedStr(xCreCuota);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     End;
     DM1.cdsRegCob.Next;
  End;
  xSQL:='UPDATE COB402 SET CRESALDO='+FloatToStr(DM1.Valores(lblDescuento.Caption))+',PORENVIO=100,MONENVIO='+FloatToStr(DM1.Valores(lblDescuento.Caption))+' WHERE ASOID='+QuotedStr(xAsoId)+' AND PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])));
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  xSQL:='UPDATE COB400 SET (MONENV,NUMENV) =(SELECT SUM(MONENVIO),COUNT(*) FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND NVL(MONENVIO,0)>0) WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])));
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  fCronoPag.LimpiaFlgvar(xAsoId,xCreDid);
  fDetMtoCuo.BitMostrar.OnClick(fDetMtoCuo.BitMostrar);
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
  Screen.Cursor := crDefault;
  Close;
end;

end.
