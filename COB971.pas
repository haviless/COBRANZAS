unit COB971;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppStrtch, ppSubRpt,
  ppDBBDE, ComCtrls, Wwdbspin, Mask, wwdbedit, FileCtrl ;
type
  TfCapInfTelDia = class(TForm)
    GroupBox1: TGroupBox;
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    grbProcesos: TGroupBox;
    prbAvances: TProgressBar;
    BitCargaDatos: TBitBtn;
    BitSalir: TBitBtn;
    gbDriver: TGroupBox;
    Label2: TLabel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    dbeNomArc: TwwDBEdit;
    dtgInfTelDia: TwwDBGrid;
    pnlProceso: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    procedure BitSalirClick(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure BitCargaDatosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    function DiaMes(xFecha:String):Integer;
    function ValidaFecha(xFecha:String):Boolean;
    procedure Descargo(Texto,xFecPro : String);
    function Valores(Texto : String): String;
    function CanReg(fileName : String): Integer;
    procedure MstDias;
  public
    { Public declarations }
  end;

var
  fCapInfTelDia: TfCapInfTelDia;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfCapInfTelDia.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfCapInfTelDia.FileListBox1Click(Sender: TObject);
begin
   dbeNomArc.Text := FileListBox1.FileName;
end;

procedure TfCapInfTelDia.BitCargaDatosClick(Sender: TObject);
var xFecPro:String;
    Archivo: TextFile;
    xPeriodo, S, Origen, xSQL, xRegis: String;
    xReg,xCanReg  : Integer;
    xRegistro: TBookmark;
begin
If Length(Trim(dbeNomArc.Text))=0 Then
   Begin
      MessageDlg('Debe SELECCIONAR Un Archivo Para Poder IMPORTAR INFORMACION', mtError,[mbOk], 0 );
      Exit;
   End;
   xPeriodo   := DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2);
   xFecPro:=Copy(Trim(dbeNomArc.Text),Length(Trim(dbeNomArc.Text))-11,8);
   xFecPro:=Copy(Trim(xFecPro),1,2)+'/'+Copy(Trim(xFecPro),3,2)+'/'+Copy(Trim(xFecPro),5,8);
   If Not ValidaFecha(xFecPro) Then
      Begin
         MessageDlg('Fecha NO VALIDA, Verificar Fecha Vs Periodo!!!', mtError,[mbOk], 0 );
         Exit;
      End;

   xSQL:='SELECT ASOID FROM COB_MON_REC_PRE WHERE DIAPROINF='+QuotedStr(xFecPro);
   If DM1.CountReg(xSQL) > 0 Then
      Begin
        MessageDlg('INFORMACION PARA ESTE DIA YA FUE REGISTRADA', mtError,[mbOk], 0 );
        Exit;
      End;
   Screen.Cursor := crHourglass;
   Origen := FileListBox1.FileName;
   xCanReg:=CanReg(Origen);
   assignfile(Archivo,Origen);
   Reset(Archivo);
   Readln(Archivo, S);
   xReg := 1;
   Descargo(s,xFecPro); xRegis:='0'; fCapInfTelDia.Refresh;
   While Not EoF(Archivo) do
   Begin
     Readln(archivo, S);
     xReg := xReg + 1;
     xRegis:=FloatToStrF(xReg/xCanReg*100, ffNumber, 5,2);
     If DM1.Valores(xRegis)<=100 Then
        Begin
          Edit2.Text := FloatToStrF(xReg/xCanReg*100, ffNumber, 5,2)+'%'; Edit2.Refresh;
        End;
     If (xReg mod 100) = 0 Then fCapInfTelDia.Refresh;
     Descargo(s,xFecPro);
   End;
   fCapInfTelDia.Refresh ; grbProcesos.Visible:=True;
   prbAvances.StepIt;  fCapInfTelDia.Refresh;
  { xSQL:='UPDATE COB_MON_REC_PRE A SET A.ASOID = (SELECT B.ASOID FROM APO201 B WHERE A.ASONCTA = B.ASONCTA AND A.ASOID IS NULL) WHERE PERIODO='+QuotedStr(xPeriodo)+' AND DIAPROINF='+QuotedStr(xFecPro);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL); }
   xSQL := 'BEGIN SP_CARGA_ASOID('+QuotedStr(xPeriodo)+','+QuotedStr(xFecPro)+'); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   prbAvances.StepIt;  fCapInfTelDia.Refresh;
{   xSQL:='UPDATE COB402 A SET MONRECPRE=(SELECT MONTO FROM COB_MON_REC_PRE WHERE PERIODO='+QuotedStr(xPeriodo)+' AND A.ASOID=ASOID) '+
         'WHERE PERCOB='+QuotedStr(xPeriodo);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL); }
   xSQL := 'BEGIN SP_CARGA_PRELIMINAR('+QuotedStr(xPeriodo)+','+QuotedStr(xFecPro)+'); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);     
   prbAvances.StepIt;  fCapInfTelDia.Refresh;
   grbProcesos.Visible:=False;  MstDias;
   Screen.Cursor := crDefault;
   MessageDlg('La Importación Del Archivo De Texto Ha Concluido!!!!', mtInformation, [mbOk], 0);      
end;

function TfCapInfTelDia.DiaMes(xFecha: String): Integer;
begin
   Case StrToInt(Copy(xFecha,4,2)) of
      2:  if IsLeapYear(StrToInt(Copy(xFecha,7,4))) then Result:=29 else Result:=28;
      1,3,5,7,8,10,12: Result:=31;
      4,6,9,11:        Result:=30;
   Else
      Result:=0;
   End;
end;

function TfCapInfTelDia.ValidaFecha(xFecha: String): Boolean;
begin
 Result:=True;
 If (StrToInt(Copy(xFecha,1,2))<1) Or (StrToInt(Copy(xFecha,1,2))>DiaMes(xFecha)) Then Result:=False;
 If (StrToInt(Copy(xFecha,4,2))<> dbsMesIni.Value ) Then Result:=False;
 If (StrToInt(Copy(xFecha,7,4))<> dbsAnoIni.Value) Then Result:=False;
end;

function TfCapInfTelDia.CanReg(fileName: String): Integer;
var SR: TSearchRec;
  Archivo: TextFile;
  Tamano, Fila, Resultado : Integer;
  S: String;
begin
  If (FindFirst(FileName, faanyFile, SR) = 0) then tamano := SR.Size else tamano := 0;
  FindClose(SR);
  assignfile(Archivo,FileName);
  Reset(Archivo);
  Readln(Archivo, S);
  fila := length(s);
  Resultado := (Tamano Div Fila);
  Result := Resultado;
end;

procedure TfCapInfTelDia.Descargo(Texto,xFecPro: String);
var xSQL, xAsonCta:String;
I, Code :Integer;
xPeriodo, xAsoApeNom, xMontoStr, xTextoC :String;
xMonto : Currency;
begin
  xPeriodo   := DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2);
  xAsonCta   := Copy(texto,51,10);
  xAsoApeNom := Copy(texto,3,42);
  xTextoC    := Copy(texto,74,10);
  xMontoStr := Valores(xTextoC);
  If xMontoStr <> '-1' Then
  Begin
    If Copy(xAsonCta,1,1) = '4' Then
    Begin
      xSQL := 'INSERT INTO COB_MON_REC_PRE (PERIODO, ASONCTA, ASOAPENOM, MONTO, DIAPROINF, USUARIO, HREG)'
      +' VALUES ('+QuotedStr(xPeriodo)+','
      +QuotedStr(xAsonCta)+','+QuotedStr(xAsoApeNom)+','+xMontoStr+','+QuotedStr(xFecPro)+','+QuotedStr(DM1.wUsuario)+',SYSDATE)';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    End;
  End;

end;

function TfCapInfTelDia.Valores(Texto: String): String;
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

procedure TfCapInfTelDia.MstDias;
var xSQL:String;
    xMonto:Currency; xNumAso:Integer;
begin
    xMonto:=0; xNumAso:=0;
    xSQL:='SELECT DIAPROINF,SUM(MONTO) MONTO,COUNT(*) NUMASO FROM COB_MON_REC_PRE WHERE PERIODO='+QuotedStr(DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2))+' GROUP BY DIAPROINF ORDER BY DIAPROINF ';
    DM1.cdsRegCob.Close;
    DM1.cdsRegCob.DataRequest(xSQL);
    DM1.cdsRegCob.Open;
    TNumericField(DM1.cdsRegCob.fieldbyname('MONTO')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsRegCob.fieldbyname('NUMASO')).DisplayFormat:='###,##0';
    xSQL:='SELECT SUM(NVL(MONTO,0)) TOTAL,COUNT(*) NUMASO  FROM COB_MON_REC_PRE WHERE PERIODO='+QuotedStr(DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2));
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If Length(Trim(DM1.cdsQry.FieldByName('TOTAL').AsString)) > 0 Then
       Begin
          xMonto:=DM1.cdsQry.FieldByName('TOTAL').AsCurrency;
          xNumAso:=DM1.cdsQry.FieldByName('NUMASO').AsInteger;
       End;
    dtgInfTelDia.ColumnByName('DIAPROINF').FooterValue :='Total';
    dtgInfTelDia.ColumnByName('MONTO').FooterValue := FloatToStrF(xMonto,ffNumber, 10, 2);
    dtgInfTelDia.ColumnByName('NUMASO').FooterValue := FloatToStrF(xNumAso,ffNumber, 10, 0);

end;

procedure TfCapInfTelDia.FormActivate(Sender: TObject);
begin
  MstDias;
end;

end.
