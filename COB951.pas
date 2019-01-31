unit COB951;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppStrtch, ppSubRpt,
  ppDBBDE, ComCtrls, Wwdbspin, Mask, wwdbedit, FileCtrl ;

type
  TfImpTelTex = class(TForm)
    gbDriver: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    dbeNomArc: TwwDBEdit;
    BitSalir: TBitBtn;
    BitCargaDatos: TBitBtn;
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    pnlProceso: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    grbProcesos: TGroupBox;
    prbAvances: TProgressBar;
    procedure FileListBox1Click(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure BitCargaDatosClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Descargo(Texto : String);
    function Valores(Texto : String): String;
    function CanReg(fileName : String): Integer;

  public
    { Public declarations }
  end;

var
  fImpTelTex: TfImpTelTex;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfImpTelTex.FileListBox1Click(Sender: TObject);
begin
  dbeNomArc.Text := FileListBox1.FileName;
end;

procedure TfImpTelTex.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TfImpTelTex.BitCargaDatosClick(Sender: TObject);
var Archivo: TextFile;
    xPeriodo, S, Origen, xSQL, xRegis: String;
    xReg,xCanReg  : Integer;
    xRegistro: TBookmark;
begin
  xPeriodo   := DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2);
  xSQL := 'SELECT COUNT(*) CUENTA FROM COB351 WHERE PERIODO = '+QuotedStr(xPeriodo);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('CUENTA').AsCurrency > 0 Then
  Begin
    If MessageDlg('Ya Existe Información De Este Mes.'+#13+'Seguro De Eliminar Y Volver A Importar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      xSQL := 'SELECT COUNT(*) CUENTA FROM COB351 WHERE PERIODO = '+QuotedStr(xPeriodo)+' AND VALIDA IS NOT NULL';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('CUENTA').AsCurrency > 0 Then
      Begin
        MessageDlg('El Mes '+xPeriodo+'No Se Puede Eliminar, Porque'+#13+'Ya Existen Registros Descargados', mtInformation, [mbOk], 0);
        Exit;
      end
      Else
      Begin
        Screen.Cursor := crHourglass;
        xSQL := 'DELETE COB351 WHERE PERIODO = '+QuotedStr(xPeriodo);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        Screen.Cursor := crDefault;
      end;
    end;
  end;
  Screen.Cursor := crHourglass;
  Origen := FileListBox1.FileName;
  xCanReg:=CanReg(Origen);
  assignfile(Archivo,Origen);
  Reset(Archivo);
  Readln(Archivo, S);
  xReg := 1;
  Descargo(s); xRegis:='0'; fImpTelTex.Refresh;
  While Not EoF(Archivo) do
  Begin
    Readln(archivo, S);
    xReg := xReg + 1;
    xRegis:=FloatToStrF(xReg/xCanReg*100, ffNumber, 5,2);
    If DM1.Valores(xRegis)<=100 Then
       Begin
         Edit2.Text := FloatToStrF(xReg/xCanReg*100, ffNumber, 5,2)+'%'; Edit2.Refresh;
       End;
    If (xReg mod 100) = 0 Then fImpTelTex.Refresh;
    Descargo(s);
 End;

 fImpTelTex.Refresh ; grbProcesos.Visible:=True;
 prbAvances.StepIt;  fImpTelTex.Refresh;
 xSQL:='UPDATE COB351 A SET A.ASOID = (SELECT B.ASOID FROM APO201 B WHERE A.ASONCTA = B.ASONCTA AND A.ASOID IS NULL) WHERE PERIODO='+QuotedStr(xPeriodo);
 DM1.DCOM1.AppServer.EjecutaSql(xSQL);
 prbAvances.StepIt;  fImpTelTex.Refresh;
 xSQL:='UPDATE COB402 A SET MONRECUP=(SELECT MONTO FROM COB351 WHERE PERIODO='+QuotedStr(xPeriodo)+' AND A.ASOID=ASOID) '+
       'WHERE PERCOB='+QuotedStr(xPeriodo);
 DM1.DCOM1.AppServer.EjecutaSql(xSQL);
 prbAvances.StepIt; fImpTelTex.Refresh;
 xSQL:='UPDATE COB400 SET (NUMCOB,MONCOB) =(SELECT COUNT(*),SUM(NVL(MONTO,0)) FROM COB351 WHERE PERIODO='+QuotedStr(xPeriodo)+') WHERE PERCOB='+QuotedStr(xPeriodo);
 DM1.DCOM1.AppServer.EjecutaSql(xSQL);
 prbAvances.StepIt; fImpTelTex.Refresh;

 xSQL:='SELECT SUM(NVL(MONTO,0)) TOTAL  FROM COB351 WHERE PERIODO='+QuotedStr(xPeriodo);
 DM1.cdsQry.Close;
 DM1.cdsQry.DataRequest(xSQL);
 DM1.cdsQry.Open;
 prbAvances.StepIt;  fImpTelTex.Refresh;
 xRegistro:=DM1.cdsSolicitud.GetBookmark;
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

 DM1.cdsSolicitud.GotoBookmark(xRegistro);
 grbProcesos.Visible:=False;
 Screen.Cursor := crDefault;
 MessageDlg('La Importación Del Archivo De Texto Ha Concluido Por UN TOTAL DE S/. '+FormatFloat('###,###,##0.#0',DM1.cdsQry.FieldByName('TOTAL').AsCurrency), mtInformation, [mbOk], 0);
 Close;

end;

function TfImpTelTex.CanReg(fileName: String): Integer;
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

procedure TfImpTelTex.Descargo(Texto: String);
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
      xSQL := 'INSERT INTO COB351 (PERIODO, ASONCTA, ASOAPENOM, MONTO)'
      +' VALUES ('+QuotedStr(xPeriodo)+','
      +QuotedStr(xAsonCta)+','+QuotedStr(xAsoApeNom)+','+xMontoStr+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    End;
  End;

end;

function TfImpTelTex.Valores(Texto: String): String;
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

procedure TfImpTelTex.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

end.
