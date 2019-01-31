// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB434
// Formulario                    : Fdescuerec
// Fecha de Creación             :
// Autor                         : EQUIPO DE SISTEMAS
// Objetivo                      : Descargo de bancos planilla

// HPC_201402_COB                : Cambio de DCOM a Socket
// SPP_201402_COB                : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201409_COB                : Se inserta filtro por fecha, al leer tabla de descarga.
// SPP_201407_COB                : Se realiza el pase a producción a partir del HPC_201409_COB.

unit COB434;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FileCtrl;

type
  TFdescuerec = class(TForm)
    gbDriver: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    btnprocesar: TBitBtn;
    btnSalir: TBitBtn;
    Edit1: TEdit;
    procedure btnprocesarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdescuerec: TFdescuerec;

implementation

uses COBDM1;

{$R *.dfm}

Procedure TFdescuerec.btnprocesarClick(Sender: TObject);
Var
  archivo: TextFile;
  S, origen, vFecPro: string;
  canCab, monCab:Currency;
  canDet, monDet:Currency;
  xSql:String;
Begin

  screen.Cursor := crHourGlass;
  origen := FileListBox1.FileName;
  assignfile(archivo,origen);
  Reset(archivo);
  Readln(archivo, S);
  Edit1.Text := S;

  //Verificando que no se haya descargado
  vFecPro := Copy(Edit1.Text,15,8);
  // Inicio SPP_201407_COB                : Se inserta filtro por fecha, al leer tabla de descarga
  xSql:='SELECT tipreg, codsuc, codmon, numcue, tipval, fecpro, cantot, montot, codint, casilla, libre, cierre '
       +  'FROM COB347 WHERE FECPRO = '+QuotedStr(vFecPro);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount = 0 Then
  Begin
    xSql:='SELECT tipreg, codsuc, codmon, numcue, tipval, fecpro, cantot, montot, codint, casilla, libre, cierre '
         +  'FROM COB347 WHERE FECPRO = '+QuotedStr(vFecPro);
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;

    xSql:='SELECT tipreg, codsuc, codmon, numcue, codide, camret, fecpag, filler1, montot, filler2, codofi, '
         +       'numope, referencia, ideter, medate, cierre, horate, numche, cobbco, libre, ofireg, monreg, '
         +       'obs, usuobs, fecobs, usureg, flamar, fecpro '
         +  'FROM COB348 WHERE FECPRO = '+QuotedStr(vFecPro);
    DM1.cdsQry3.Close;
    DM1.cdsQry3.DataRequest(xSql);
    DM1.cdsQry3.Open;
// Fin SPP_201407_COB                : Se inserta filtro por fecha, al leer tabla de descarga

    // Inicio: SPP_201402_COB
    xSQL:='INSERT INTO COB347(TIPREG,CODSUC,CODMON,NUMCUE,TIPVAL,FECPRO,CANTOT,MONTOT,CODINT,CASILLA,LIBRE) VALUES ( '
          +QuotedStr(Copy(Edit1.Text,1,2))+','
          +QuotedStr(Copy(Edit1.Text,3,3))+','
          +QuotedStr(Copy(Edit1.Text,6,1))+','
          +QuotedStr(Copy(Edit1.Text,7,7))+','
          +QuotedStr(Copy(Edit1.Text,14,1))+','
          +QuotedStr(Copy(Edit1.Text,15,8))+','
          +Copy(Edit1.Text,23,9)+','
          +Copy(Edit1.Text,32,13)+'.'+Copy(Edit1.Text,45,2)+','
          +QuotedStr(Copy(Edit1.Text,47,4))+','
          +QuotedStr(Copy(Edit1.Text,51,6))+','
          +QuotedStr(Copy(Edit1.Text,57,144))+')';
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);

 {
    DM1.cdsQry2.Insert;
    DM1.cdsQry2.FieldByName('TIPREG').AsString    := Copy(Edit1.Text,1,2);
    DM1.cdsQry2.FieldByName('CODSUC').AsString    := Copy(Edit1.Text,3,3);
    DM1.cdsQry2.FieldByName('CODMON').AsString    := Copy(Edit1.Text,6,1);
    DM1.cdsQry2.FieldByName('NUMCUE').AsString    := Copy(Edit1.Text,7,7);
    DM1.cdsQry2.FieldByName('TIPVAL').AsString    := Copy(Edit1.Text,14,1);
    DM1.cdsQry2.FieldByName('FECPRO').AsString    := Copy(Edit1.Text,15,8);
    DM1.cdsQry2.FieldByName('CANTOT').AsCurrency  := StrToCurr(Copy(Edit1.Text,23,9));
    DM1.cdsQry2.FieldByName('MONTOT').AsCurrency  := StrToCurr(Copy(Edit1.Text,32,13)+'.'+Copy(Edit1.Text,45,2));
    DM1.cdsQry2.FieldByName('CODINT').AsString    := Copy(Edit1.Text,47,4);
    DM1.cdsQry2.FieldByName('CASILLA').AsString   := Copy(Edit1.Text,51,6);
    DM1.cdsQry2.FieldByName('LIBRE').AsString     := Copy(Edit1.Text,57,144);
    DM1.cdsQry2.ApplyUpdates(0);
 }

// Fin: SPP_201402_COB
    While Not EoF(Archivo) do
    Begin
      Readln(archivo, S);
      Edit1.Text := S;
  // Inicio SPP_201407_COB                : Se inserta filtro por fecha, al leer tabla de descarga
      xSql:='SELECT tipreg, codsuc, codmon, numcue, codide, camret, fecpag, filler1, montot, filler2, codofi, '
           +       'numope, referencia, ideter, medate, cierre, horate, numche, cobbco, libre, ofireg, monreg, '
           +       'obs, usuobs, fecobs, usureg, flamar, fecpro '
           +  'FROM COB348 '
           + 'WHERE FECPAG = '+QuotedStr(Copy(Edit1.Text,58,8))+' AND CODOFI = '+QuotedStr(Copy(Edit1.Text,119,6))
           +  ' AND NUMOPE = '+QuotedStr(Copy(Edit1.Text,125,6))
           +  ' AND REFERENCIA = '+QuotedStr(Copy(Edit1.Text,131,22));
  // Fin  SPP_201407_COB                : Se inserta filtro por fecha, al leer tabla de descarga
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount = 0 Then
      Begin
        DM1.cdsQry3.Insert;
        DM1.cdsQry3.FieldByName('TIPREG').AsString    := Copy(Edit1.Text,1,2);
        DM1.cdsQry3.FieldByName('CODSUC').AsString    := Copy(Edit1.Text,3,3);
        DM1.cdsQry3.FieldByName('CODMON').AsString    := Copy(Edit1.Text,6,1);
        DM1.cdsQry3.FieldByName('NUMCUE').AsString    := Copy(Edit1.Text,7,7);
        DM1.cdsQry3.FieldByName('CODIDE').AsString    := Copy(Edit1.Text,14,14);
        DM1.cdsQry3.FieldByName('CAMRET').AsString    := Copy(Edit1.Text,28,30);
        DM1.cdsQry3.FieldByName('FECPAG').AsString    := Copy(Edit1.Text,58,8);
        DM1.cdsQry3.FieldByName('FILLER1').AsString   := Copy(Edit1.Text,66,8);
        DM1.cdsQry3.FieldByName('MONTOT').AsCurrency  := StrToCurr(Copy(Edit1.Text,74,13)+'.'+Copy(Edit1.Text,87,2));
        DM1.cdsQry3.FieldByName('FILLER2').AsString   := Copy(Edit1.Text,89,30);
        DM1.cdsQry3.FieldByName('CODOFI').AsString    := Copy(Edit1.Text,119,6);
        DM1.cdsQry3.FieldByName('NUMOPE').AsString    := Copy(Edit1.Text,125,6);
        DM1.cdsQry3.FieldByName('REFERENCIA').AsString  := Copy(Edit1.Text,131,22);
        DM1.cdsQry3.FieldByName('IDETER').AsString      := Copy(Edit1.Text,153,4);
        DM1.cdsQry3.FieldByName('MEDATE').AsString      := Copy(Edit1.Text,157,12);
        DM1.cdsQry3.FieldByName('FECPRO').AsString      := vFecPro;
        DM1.cdsQry3.ApplyUpdates(0);
      End;
    End;
    //Verificando lo descargado del detalle
    xSql := 'SELECT COUNT(*) CANTIDAD, SUM(NVL(MONTOT,0)) MONTO FROM COB348 WHERE FECPRO = '+QuotedStr(vFecPro);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    canDet := DM1.cdsQry.FieldByName('CANTIDAD').AsCurrency;
    monDet := DM1.cdsQry.FieldByName('MONTO').AsCurrency;
    //Verificando lo descargado en la cabecera
    xSql := 'SELECT CANTOT, MONTOT FROM COB347 WHERE FECPRO = '+QuotedStr(vFecPro);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    canCab := DM1.cdsQry.FieldByName('CANTOT').AsCurrency;
    monCab := DM1.cdsQry.FieldByName('MONTOT').AsCurrency;
    If (canDet <> canCab) Or (monCab  <> monDet) Then
       MessageDlg('Información descargada con error entre la cabecera y el detalle', mtInformation,[mbOk],0)
    Else
       MessageDlg('Información descargada Ok.', mtInformation,[mbOk],0);
  End
  Else
  Begin
    MessageDlg('El archivo seleccionado ya fue descargado anteriormente', mtInformation,[mbOk],0);
  End;
  CloseFile(archivo);
  xSql := ' SELECT SUBSTR(FECPRO,7,2)||''/''||SUBSTR(FECPRO,5,2)||''/''||SUBSTR(FECPRO,1,4) FECPRO,'
         +' CANTOT, TO_CHAR(MONTOT, ''9,999,999.99'') MONTOT, CODSUC, NUMCUE, DECODE(CODMON, ''0'', ''MN'', ''ME'') CODMON'
         +' FROM COB347 WHERE CIERRE IS NULL';
  Screen.Cursor := crDefault;
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSql);
  DM1.cdsQry4.Open;
  DM1.cdsQry4.Refresh;
End;


procedure TFdescuerec.btnSalirClick(Sender: TObject);
begin
  Fdescuerec.Close;
end;

end.
