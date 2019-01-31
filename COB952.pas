unit COB952;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, wwdbedit, Wwdbspin, fcLabel,
  wwdbdatetimepicker, Buttons;

type
  TfAplCroTel = class(TForm)
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    pnlProceso: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    grbParDes: TGroupBox;
    fcLabel4: TfcLabel;
    fcLabel5: TfcLabel;
    fcLabel6: TfcLabel;
    fcLabel1: TfcLabel;
    fcLabel2: TfcLabel;
    DtpFecPag: TwwDBDateTimePicker;
    EdtDocPag: TEdit;
    dbeMtoRec: TwwDBEdit;
    BitDesCargaDatos: TBitBtn;
    BitSalir: TBitBtn;
    procedure dbeMtoRecKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMtoRecExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
    procedure BitDesCargaDatosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAplCroTel: TfAplCroTel;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfAplCroTel.dbeMtoRecKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfAplCroTel.dbeMtoRecExit(Sender: TObject);
begin
dbeMtoRec.Text := FormatFloat('###,###,##0.#0',DM1.Valores(dbeMtoRec.Text));
end;

procedure TfAplCroTel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfAplCroTel.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfAplCroTel.BitDesCargaDatosClick(Sender: TObject);
var xSQL,xPeriodo:String;
begin
  xPeriodo   := DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2);
  If Length(Trim(EdtDocPag.Text))=0 Then
     Begin
        MessageDlg('Debe Digitar El Documento Para La Descarga', mtError,[mbOk], 0 );
        Exit;
     End;

  If Length(Trim(DtpFecPag.Text))=0 Then
     Begin
        MessageDlg('Debe Digitar La Fecha Para La Descarga', mtError,[mbOk], 0 );
        Exit;
     End;

  If DM1.Valores(dbeMtoRec.Text)=0 Then
     Begin
        MessageDlg('Debe Digitar El Monto Total Para La Descarga', mtError,[mbOk], 0 );
        Exit;
     End;
  Screen.Cursor := crHourglass;
  xSQL:='SELECT SUM(NVL(MONTO,0)) TOTAL  FROM COB351 WHERE PERIODO='+QuotedStr(xPeriodo);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('TOTAL').AsCurrency<>DM1.Valores(dbeMtoRec.Text) Then
     Begin
        Screen.Cursor := crDefault;
        MessageDlg('El Monto Total Recuperado Es Diferente Al Monto Por Descargar Para Este Periodo', mtError,[mbOk], 0 );
        Exit;
     End;
   Screen.Cursor := crHourglass;
   xSQL := 'BEGIN DESCARGO_TELEAHORRO('+QuotedStr(xPeriodo)+','+QuotedStr(DateToStr(DtpFecPag.Date))+','+QuotedStr(EdtDocPag.Text)+'); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   xSQL := 'BEGIN SP_PROCESOS_TELEAHORRO('+QuotedStr(xPeriodo)+'); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   xSQL := 'BEGIN SP_NO_DESCONTADO('+QuotedStr(xPeriodo)+','+QuotedStr('18')+'); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Edit2.Text:='100.00%'; fAplCroTel.Refresh;
   Screen.Cursor := crDefault;
   Close;
   MessageDlg('Descarga Ha Culminado con Exito', mtInformation,[mbOk], 0 );
end;

end.
