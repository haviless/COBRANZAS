// Unidad               : COB457
// Formulario           : FImpDesOnp
// Fecha de Creación    : 04/03/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Realiza la importación del archivo texto entregada por la ONP.
// Actualizaciones      :
// HPC_201303_COB       : 13/03/2013 - Creación de la opción.
// SPP_201305_COB       : Se realiza el pase a producción a partir del HPC_201303_COB.
// HPC_201402_COB       : Grabar Excesos en forma automatica
// SPP_201402_COB       : Se realiza el pase a producción a partir del HPC_201402_COB

unit COB457;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppStrtch, ppSubRpt,
  ppDBBDE, ComCtrls, Wwdbspin, Mask, wwdbedit, FileCtrl ;

type
  TFImpDesOnp = class(TForm)
    gbDriver: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    dbeNomArc: TwwDBEdit;
    BitSalir: TBitBtn;
    BitCargaDatos: TBitBtn;
    Label2: TLabel;
    procedure FileListBox1Click(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure BitCargaDatosClick(Sender: TObject);
  private
    procedure Descargo(Texto : String);
  public
  end;

var
  FImpDesOnp: TFImpDesOnp;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFImpDesOnp.FileListBox1Click(Sender: TObject);
begin
  dbeNomArc.Text := FileListBox1.FileName;
end;

procedure TFImpDesOnp.BitSalirClick(Sender: TObject);
begin
    Close;
end;

Procedure TFImpDesOnp.BitCargaDatosClick(Sender: TObject);
Var Archivo: TextFile;
    S, Origen, xSql : String;
    canreg, montot:Double;
Begin
   If DM1.cdsRegCob.FieldByName('FLADES').AsString = 'S' Then
   Begin
      MessageDlg('El Mes '+DM1.cdsRegCob.FieldByName('PERCOB').AsString+' No Se Puede Eliminar, Porque'+#13+'Ya Existen Registros Descargados', mtInformation, [mbOk], 0);
      Exit;
   End;
   If DM1.cdsRegCob.FieldByName('RETARC').AsString = 'S' Then
   Begin
      If MessageDlg('Ya Existe Información De Este Mes.'+#13+'Seguro De Eliminar Y Volver A Importar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         Screen.Cursor := crHourglass;
         xSql := 'DELETE FROM COB_ONP_RET_DET WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
         xSql := 'DELETE FROM COB_ONP_RET_CAB WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
         Screen.Cursor := crDefault;
      End Else Exit;
   End;
   Screen.Cursor := crHourglass;
   Origen := FileListBox1.FileName;
   assignfile(Archivo,Origen);
   Reset(Archivo);
   Readln(Archivo, S);
   Descargo(s);
   While Not EoF(Archivo) do
   Begin
      Readln(archivo, S);
      Descargo(s);
   End;
   canreg := 0;
   montot := 0;
   xSql := 'SELECT * FROM COB_ONP_RET_DET WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

// Inicio: SPP_201402_COB     Grabar Excesos en forma automatica
   While Not DM1.cdsQry.Eof Do
   Begin
      canreg := canreg + 1;
      montot := montot + DM1.cdsQry.FieldByName('MONDES').AsFloat;
      DM1.cdsQry.Next;
   End;
// Fin: SPP_201402_COB       Grabar Excesos en forma automatica

   // Actualizando cabecera
   xSql := 'INSERT INTO COB_ONP_RET_CAB (PERCOB, NUMOFI, USUIMP, FECHORIMP, REGTOTIMP, MONTOTIMP) VALUES ('
   +QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+','+QuotedStr(DM1.wUsuario )+', SYSDATE,'+FloatToStr(canreg)+','+FloatToStr(montot)+')';
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   xSql := 'UPDATE COB_ONP_PRO_CAB SET RETARC = ''S'' WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   DM1.cdsRegCob.Edit;
   DM1.cdsRegCob.FieldByName('RETARC').AsString := 'S';
   DM1.cdsRegCob.ApplyUpdates(0);
   MessageDlg('La Importación Del Archivo De Texto Ha Concluido', mtInformation, [mbOk], 0);
   Close;
End;

procedure TFImpDesOnp.Descargo(Texto: String);
var xSql :String;
xmondes: Currency;
begin
  xmondes := StrToFloat(Copy(texto,72,7)) /100;
  xSql := 'INSERT INTO COB_ONP_RET_DET (PERCOB, NUMOFI, CODPEN, CODLEYPEN, ASOAPENOMDNI, CODPRE, MONDES) VALUES ('
  +QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+','
  +QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+','
  +QuotedStr(Copy(texto,1,7))+','
  +QuotedStr(Copy(texto,8,2))+','
  +QuotedStr(Copy(texto,12,60))+','
  +QuotedStr(Copy(texto,10,2))+','
  +FloatToStr(xmondes)+')';
  DM1.DCOM1.AppServer.EjecutaSql(xSql);
end;

end.
