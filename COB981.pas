unit COB981;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, wwdbedit, Wwdbspin,
  ExtCtrls, Buttons, DB;

type
  TfSelDesPorc = class(TForm)
    dtgEnvPor: TwwDBGrid;
    BitSalir: TBitBtn;
    pnlPorc: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    dbsPorc: TwwDBSpinEdit;
    lblNumCre: TLabel;
    lblTipCre: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    BitGrabar: TBitBtn;
    mObsEnv: TMemo;
    BitAnular: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure dbsPorcKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtgEnvPorDblClick(Sender: TObject);
    procedure BitAnularClick(Sender: TObject);
    procedure dtgEnvPorDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelDesPorc: TfSelDesPorc;

implementation

uses COBDM1, COB903, COB904;

{$R *.dfm}

procedure TfSelDesPorc.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TfSelDesPorc.BitGrabarClick(Sender: TObject);
var xSQL,xAsoId,xCreDid : String;
begin
    If Length(Trim(mObsEnv.Text))=0 Then
       Begin
          MessageDlg('DEBE INGRESAR UN OBSERVACION PARA PODER GRABAR ESTE ENVIO PORCENTUAL!!', mtError, [mbOk], 0);
          Exit;
      End;
    If Length(Trim(dbsPorc.Text))=0 Then
       Begin
          MessageDlg('DEBE INGRESAR UN PORCENTAJE(%)!!', mtError, [mbOk], 0);
          Exit;
       End;

    xAsoId:=DM1.cdsCuotas.FieldByName('ASOID').AsString;
    xCreDid:=DM1.cdsCuotas.FieldByName('CREDID').AsString;
    DM1.cdsDcuotas.First;
    DM1.cdsDcuotas.DataRequest(xSQL);
    DM1.cdsDcuotas.Open;
    While Not DM1.cdsDcuotas.Eof Do
    Begin
        xSQL:='INSERT INTO COB_CUO_DES_PRO(ASOID,CREDID,CREFVEN,CRECUOTA,CRESALDO,PORENVIO,CREMONENV, '+
              'CREESTID,CREESTADO,OBSENVIO,USUARIO,HREG) VALUES ('+QuotedStr(DM1.cdsDcuotas.FieldByName('ASOID').asString)+','+QuotedStr(DM1.cdsDcuotas.FieldByName('CREDID').asString)+','+QuotedStr(DM1.cdsDcuotas.FieldByName('CREFVEN').asString)+','+QuotedStr(DM1.cdsDcuotas.FieldByName('CRECUOTA').asString)+','+FloatToStr(DM1.cdsDcuotas.FieldByName('CRESALDO').asCurrency)+','+QuotedStr(dbsPorc.Text)+','+FloatToStr((DM1.cdsDcuotas.FieldByName('CRESALDO').asCurrency*DM1.Valores(dbsPorc.Text))/100)+','+QuotedStr(DM1.cdsDcuotas.FieldByName('CREESTID').asString)+','+QuotedStr(DM1.cdsDcuotas.FieldByName('CREESTADO').asString)+','+QuotedStr(mObsEnv.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE) ';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        DM1.cdsDcuotas.Next;
    End;
    mObsEnv.ReadOnly:=True; dbsPorc.Enabled:=False; BitGrabar.Enabled:=False;
    BitAnular.Enabled:=True;
    xSQL:='SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CRESALDO,PORENVIO,CREMONENV,CREESTID,CREESTADO,OBSENVIO,USUARIO,HREG FROM COB_CUO_DES_PRO WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID IN (''02'',''11'',''27'') ORDER BY CREDID,CRECUOTA' ;
    DM1.cdsDcuotas.Close;
    DM1.cdsDcuotas.DataRequest(xSQL);
    DM1.cdsDcuotas.Open;
    TNumericField(DM1.cdsDcuotas.fieldbyname('CRESALDO')).DisplayFormat:='###,##0.#0';
    TNumericField(DM1.cdsDcuotas.fieldbyname('PORENVIO')).DisplayFormat:='###,##0';
    TNumericField(DM1.cdsDcuotas.fieldbyname('CREMONENV')).DisplayFormat:='###,##0.#0';
end;

procedure TfSelDesPorc.dbsPorcKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In ['.',' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfSelDesPorc.FormClose(Sender: TObject; var Action: TCloseAction);
var xAsoId,xCreDid : String;
    xRegistro: TBookmark;
begin
    xAsoId:=DM1.cdsCuotas.FieldByName('ASOID').AsString;
    xCreDid:=DM1.cdsCuotas.FieldByName('CREDID').AsString;
    xRegistro:=DM1.cdsCuotas.GetBookmark;
    fCronoPag.LimpiaFlgvar(xAsoId, xCreDid);
    fNpago.ActualizaCrono(xAsoId, xCreDid);
    DM1.cdsCuotas.GotoBookmark(xRegistro);

end;

procedure TfSelDesPorc.dtgEnvPorDblClick(Sender: TObject);
var xAsoId,xCreDid,xCreCuota,xSQL : String;
begin
    xAsoId:=DM1.cdsDCuotas.FieldByName('ASOID').AsString;
    xCreDid:=DM1.cdsDCuotas.FieldByName('CREDID').AsString;
    xCreCuota:=DM1.cdsDCuotas.FieldByName('CRECUOTA').AsString;
    xSQL:='SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CRESALDO,PORENVIO,CREMONENV,CREESTID,CREESTADO,OBSENVIO,USUARIO,HREG FROM COB_CUO_DES_PRO WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID IN (''02'',''11'',''27'') ORDER BY CREDID,CRECUOTA' ;
    If DM1.CountReg(xSQL) > 0 Then
       MessageDlg('Hecho Por : '+Chr(13)+Trim(DM1.cdsDcuotas.FieldByName('USUARIO').asString)+Chr(13)+'Fecha y Hora : '+Chr(13)+Trim(DM1.cdsDcuotas.FieldByName('HREG').asString) , mtInformation, [mbOk], 0);

end;

procedure TfSelDesPorc.BitAnularClick(Sender: TObject);
var xSQL,xAsoId,xCreDid,xCreCuota : String;
    xRegistro: TBookmark;
begin
  If DM1.cdsDCuotas.FieldByName('CREESTID').AsString='13' Then Exit;
  xAsoId:=DM1.cdsDCuotas.FieldByName('ASOID').AsString;
  xCreDid:=DM1.cdsDCuotas.FieldByName('CREDID').AsString;
  xCreCuota:=DM1.cdsDCuotas.FieldByName('CRECUOTA').AsString;
  xRegistro:=DM1.cdsDCuotas.GetBookmark;
  xSQL:='UPDATE COB_CUO_DES_PRO SET CREESTID=''13'',CREESTADO=''ANULADO'',FECANU=SYSDATE,USUANU='+QuotedStr(DM1.wUsuario)+' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CRECUOTA='+QuotedStr(xCreCuota);
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  xSQL:='SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CRESALDO,PORENVIO,CREMONENV,CREESTID,CREESTADO,OBSENVIO,USUARIO,HREG FROM COB_CUO_DES_PRO WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID IN (''02'',''11'',''27'') ORDER BY CREDID,CRECUOTA' ;
  DM1.cdsDcuotas.Close;
  DM1.cdsDcuotas.DataRequest(xSQL);
  DM1.cdsDcuotas.Open;
  TNumericField(DM1.cdsDcuotas.fieldbyname('CRESALDO')).DisplayFormat:='###,##0.#0';
  TNumericField(DM1.cdsDcuotas.fieldbyname('PORENVIO')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsDcuotas.fieldbyname('CREMONENV')).DisplayFormat:='###,##0.#0';
  If DM1.cdsDCuotas.RecordCount>0 Then DM1.cdsDCuotas.First  Else Close;
end;

procedure TfSelDesPorc.dtgEnvPorDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
If DM1.cdsDCuotas.FieldByName('CREESTID').AsString='13' Then
   Begin
     dtgEnvPor.Canvas.Font.Color := clRed;
     dtgEnvPor.DefaultDrawDataCell(rect,Field,State);
   End;

end;

end.
