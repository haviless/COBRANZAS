unit COB317;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcLabel, Wwdbspin, wwdbdatetimepicker, StdCtrls, Mask, wwdbedit,
  Buttons, FileCtrl, DB, DBTables, wwstorep, ExtCtrls, Grids, Calendar;

type
  TFDescTelahorro = class(TForm)
    gbDriver: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    fcLabel2: TfcLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    dbseAno: TwwDBSpinEdit;
    fcLabel1: TfcLabel;
    fcLabel4: TfcLabel;
    fcLabel5: TfcLabel;
    dbdtpFecPag: TwwDBDateTimePicker;
    dbeDocPag: TwwDBEdit;
    dbseMes: TwwDBSpinEdit;
    fcLabel3: TfcLabel;
    fcLabel6: TfcLabel;
    meMontoTotal: TMaskEdit;
    btnImporta: TBitBtn;
    btnDescarga: TBitBtn;
    btnValida: TBitBtn;
    btnSalir: TBitBtn;
    BitBtn1: TBitBtn;
    dbeNomArc: TwwDBEdit;
    Edit2: TEdit;
    Timer1: TTimer;
    procedure FileListBox1Click(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);
   // procedure meMontoTotalChange(Sender: TObject);
    procedure btnValidaClick(Sender: TObject);
    procedure btnDescargaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure meMontoTotalExit(Sender: TObject);
    procedure spDescTeleAfterInsert(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure Descargo(Texto : String);
    function Valores(Texto : String): String;
    function CanReg(fileName : String): Integer;
  public
    { Public declarations }
  end;

var
  FDescTelahorro: TFDescTelahorro;

implementation

uses COBDM1, COB317A;

{$R *.dfm}

procedure TFDescTelahorro.FileListBox1Click(Sender: TObject);
begin
dbeNomArc.Text := FileListBox1.FileName;
end;

procedure TFDescTelahorro.btnImportaClick(Sender: TObject);
var archivo: TextFile;
    xPeriodo, S, origen, xSql: string;
    xreg  : integer;
begin
  xPeriodo   := DM1.StrZero(dbseAno.Text,4)+DM1.StrZero(dbseMes.Text,2);
  xSql := 'SELECT COUNT(*) CUENTA FROM COB351 WHERE PERIODO = '+QuotedStr(xPeriodo);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('CUENTA').AsCurrency > 0 Then
  Begin
    If MessageDlg('Ya existe información de este mes.'+#13+'Seguro de eliminar y volver a importar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      xSql := 'SELECT COUNT(*) CUENTA FROM COB351 WHERE PERIODO = '+QuotedStr(xPeriodo)+' AND VALIDA IS NOT NULL';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('CUENTA').AsCurrency > 0 Then
      Begin
        MessageDlg('El mes '+xPeriodo+'No se puede eliminar, porque'+#13+'ya existen registros descargados', mtInformation, [mbOk], 0);
        Exit;
      end
      Else
      Begin
        xSql := 'DELETE COB351 WHERE PERIODO = '+QuotedStr(xPeriodo);
        DM1.DCOM1.AppServer.EjecutaSql(xSql);
      end;
    end;
  end;
  Edit2.Visible := True;
  origen := FileListBox1.FileName;
  assignfile(archivo,origen);
  Reset(archivo);
  Readln(archivo, S);
  xreg := 1;
  descargo(s);
  while Not EoF(Archivo) do
  begin
    Readln(archivo, S);
    xReg := xReg + 1;
    Edit2.Text := FloatToStrF(xreg/canReg(origen)*100, ffNumber, 5,2)+'%';
    if (xreg mod 100) = 0 Then FDescTelahorro.Refresh;
    descargo(s);
 end;
  Edit2.Visible := False;
  MessageDlg('La importación del diskette ha sido concluido', mtInformation, [mbOk], 0);
end;

procedure TFDescTelahorro.descargo(texto: string);
Var xSql, xAsonCta:String;
I, Code :Integer;
xPeriodo, xAsoApeNom, xMontoStr, xTextoC :String;
xMonto : Currency;
begin
  xPeriodo   := DM1.StrZero(dbseAno.Text,4)+DM1.StrZero(dbseMes.Text,2);
  xAsonCta   := Copy(texto,51,10);
  xAsoApeNom := Copy(texto,3,42);
  xTextoC    := Copy(texto,74,10);
  xMontoStr := Valores(xTextoC);
  If xMontoStr <> '-1' Then
  Begin
    If Copy(xAsonCta,1,1) = '4' Then
    Begin
      xSql := 'INSERT INTO COB351 (PERIODO, ASONCTA, ASOAPENOM, MONTO)'
      +' VALUES ('+QuotedStr(xPeriodo)+','
      +QuotedStr(xAsonCta)+','+QuotedStr(xAsoApeNom)+','+xMontoStr+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
    End;
  End;
End;

function TFDescTelahorro.Valores(Texto: String): String;
var xMont,xValor, xTrim:String;
    C, Code:Integer;
    I: Double;
begin
   xTrim := Trim(Texto);
   For C := 1 To Length(xTrim) Do
   Begin
       xMont:= Copy(xTrim,C,1);
       If xMont <> ',' Then
         xValor := xValor+xMont;
   End;
   Val(xValor, I, Code);
   if Code <> 0 then
      Result := '-1'
   Else
      Result := xValor;
end;

procedure TFDescTelahorro.meMontoTotalExit(Sender: TObject);
Var code:Integer;
   I:Double;
begin
   Val(meMontoTotal.Text, I, Code);
   if Code <> 0 then
   Begin
     MessageDlg('Monto ingresado no es un número valido', mtInformation, [mbOk], 0);
     meMontoTotal.Text := '';
      meMontoTotal.SetFocus;
   end;
end;

procedure TFDescTelahorro.btnValidaClick(Sender: TObject);
Var  xSql, xPeriodo :String;
begin
  If dbseAno.Value = 0 Then
  Begin
    dbseAno.SetFocus;
    MessageDlg('Ingrese el año del proceso', mtInformation, [mbOk], 0);
    Exit;
  End;
  If dbseMes.Value = 0 Then
  Begin
    dbseAno.SetFocus;
    MessageDlg('Ingrese el mes del proceso', mtInformation, [mbOk], 0);
    Exit;
  End;
  xPeriodo   := DM1.StrZero(dbseAno.Text,4)+DM1.StrZero(dbseMes.Text,2);
  xSql := 'UPDATE COB351 A SET A.ASOID = (SELECT B.ASOID FROM APO201 B WHERE A.ASONCTA = B.ASONCTA AND A.ASOID IS NULL)';
  DM1.DCOM1.AppServer.EjecutaSql(xSql);
  xSql := 'SELECT SUM(NVL(MONTO,0)) TOTAL FROM COB351 WHERE PERIODO = '+QuotedStr(xPeriodo);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('TOTAL').AsCurrency <> StrToCurr(meMontoTotal.Text) Then
  Begin
    MessageDlg('Existe un error en el monto total registrado'+#13
   +'con el monto total importado del diskette'+#13
   +'comunique a Sistemas.'+#13
   +'El proceso ha fallado', mtInformation, [mbOk], 0);
   Exit;
  End;
  xSql := 'SELECT COUNT(*) CUENTA FROM COB351 WHERE PERIODO = '+QuotedStr(xPeriodo)+' AND ASOID IS NULL';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('CUENTA').AsCurrency > 0 Then
  Begin
    MessageDlg('Existen registros importados con cuentas'+#13
    +'que no existen en la tabla de asociados.'+#13
    +'Corrija y vuelva a ejecutar validar', mtInformation, [mbOk], 0);
    Exit;
  End;
end;

procedure TFDescTelahorro.btnDescargaClick(Sender: TObject);
Var xSql, xPeriodo : String;
begin
  If dbeDocPag.Text = '' Then
  Begin
    MessageDlg('Tiene que ingresar el número de documento', mtInformation, [mbOk], 0);
    dbeDocPag.SetFocus;
    Exit;
  End;
  If dbdtpFecPag.Text = '' Then
  Begin
    MessageDlg('Tiene que ingresar la fecha del documento', mtInformation, [mbOk], 0);
    dbdtpFecPag.SetFocus;
    Exit;
  End;
  If meMontoTotal.Text = '' Then
  Begin
    meMontoTotal.SetFocus;
    MessageDlg('Tiene que ingresar el monto total', mtInformation, [mbOk], 0);
    Exit;
  End;
  If dbseAno.Value = 0 Then
  Begin
    dbseAno.SetFocus;
    MessageDlg('Ingrese el año del proceso', mtInformation, [mbOk], 0);
    Exit;
  End;
  If dbseMes.Value = 0 Then
  Begin
    dbseAno.SetFocus;
    MessageDlg('Ingrese el mes del proceso', mtInformation, [mbOk], 0);
    Exit;
  End;
  xPeriodo   := DM1.StrZero(dbseAno.Text,4)+DM1.StrZero(dbseMes.Text,2);
  // Se procede al descargo
  Timer1.Enabled := True;
  Edit2.Visible  := True;
  xSql := 'BEGIN DESCARGO_TELEAHORRO('+QuotedStr(xPeriodo)+','+QuotedStr(DateToStr(dbdtpFecPag.Date))+','+QuotedStr(dbeDocPag.Text)+'); END;';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
end;

procedure TFDescTelahorro.BitBtn1Click(Sender: TObject);
Var xSql, xPeriodo:String;
begin
  If dbseAno.Value = 0 Then
  Begin
    dbseAno.SetFocus;
    MessageDlg('Ingrese el año del proceso', mtInformation, [mbOk], 0);
    Exit;
  End;
  If dbseMes.Value = 0 Then
  Begin
    dbseMes.SetFocus;
    MessageDlg('Ingrese el mes del proceso', mtInformation, [mbOk], 0);
    Exit;
  End;
  xPeriodo   := DM1.StrZero(dbseAno.Text,4)+DM1.StrZero(dbseMes.Text,2);
  xSql := 'SELECT ASOID, ASONCTA, ASOAPENOM, MONTO FROM COB351 WHERE PERIODO = '+QuotedStr(xPeriodo)+' AND ASOID IS NULL';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  Try
    FInconTeleahorro := TFInconTeleahorro.create(Self);
    FInconTeleahorro.ShowModal;
  Finally
    FInconTeleahorro.Free;
  end;
end;

procedure TFDescTelahorro.btnSalirClick(Sender: TObject);
begin
Close;
end;

function TFDescTelahorro.canReg(fileName: string): Integer;
var SR: TSearchRec;
  archivo: TextFile;
  tamano, fila, resultado : integer;
  S: string;
begin
  if (FindFirst(FileName, faanyFile, SR) = 0) then tamano := SR.Size else tamano := 0;
  FindClose(sr);
  assignfile(archivo,fileName);
  Reset(archivo);
  Readln(archivo, S);
  fila := length(s);
  resultado := (tamano Div fila);
  result := resultado;
end;

procedure TFDescTelahorro.spDescTeleAfterInsert(DataSet: TDataSet);
begin
ShowMessage('Insertando');
end;

procedure TFDescTelahorro.Timer1Timer(Sender: TObject);
Var xSql : String;
begin
  xSql := 'SELECT VALOR FROM TGE903 WHERE LLAVE = ''TEL'' ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  Edit2.Text := DM1.cdsQry.FieldByName('VALOR').AsString;
  FDescTelahorro.Refresh;
end;

end.


