UNIT COB439;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FileCtrl;

type
  TFdescuerecbconac = class(TForm)
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
    function  recuperaasoid(xasoid:String; xasodni:String; xapenomcli:String):String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdescuerecbconac: TFdescuerecbconac;

implementation

uses COBDM1;

{$R *.dfm}

Procedure TFdescuerecbconac.btnprocesarClick(Sender: TObject);
Var
  archivo: TextFile;
  S, origen, FecPag: string;
  canCab, monCab:Currency;
  canDet, monDet:Currency;
  xCierre, xSql, xCod, comprueba, fecha, xasoid : String;
  xdni, xfecpag:String;
Begin
  canDet  := 0;
  monDet  := 0;
  xCierre := '';
  xSql := 'SELECT * FROM COB_CUE_REC_BAN_NAC_DET';
  DM1.cdsCuotas.Close;
  DM1.cdsCuotas.DataRequest(xSql);
  DM1.cdsCuotas.Open;
  origen := FileListBox1.FileName;
  assignfile(archivo,origen);
  Reset(archivo);
  Readln(archivo,S);
  Edit1.Text := S;
  comprueba := Copy(Trim(Edit1.Text),193,1);
  If comprueba <> 'N' Then
  Begin
    MessageDlg('Archivo que intenta descargar no es compatible', mtInformation,[mbOk],0);
    Exit;
  End;
  // fecha := Copy(Trim(Edit1.Text),5,10);
  fecha := Copy(Edit1.Text,133,10);
  xSql := 'SELECT * FROM COB_CUE_REC_BAN_NAC_CAB WHERE FECPRO = '+QuotedStr(fecha);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
  Begin
    MessageDlg('Ya se descargo archivo con esta fecha', mtInformation,[mbOk],0);
    Exit;
  End;
  FecPag := Copy(Edit1.Text,133,10);
  xSql := 'SELECT LPAD(MAX(CODREG)+1,4, ''0'') NUECOR FROM COB_CUE_REC_BAN_NAC_CAB';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('NUECOR').AsString = '' Then xCod := '0001' Else xCod := DM1.cdsQry.FieldByName('NUECOR').AsString;
  xSql := 'INSERT INTO COB_CUE_REC_BAN_NAC_CAB VALUES ('+QuotedStr(xCod)+', '+QuotedStr(FecPag)+','+CurrToStr(candet)+','+CurrToStr(monDet)+', NULL)';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);

  // Verificando si ya existe este registro
  xdni    := Copy(Edit1.Text,79,8);
  xfecpag := Copy(Edit1.Text,133,10);
  xSql := 'SELECT * FROM COB_CUE_REC_BAN_NAC_DET WHERE SUBSTR(NUMDOCCOB,3,8) = '+QuotedStr(xdni)+' AND FECPAG = '+QuotedStr(xfecpag);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
  Begin
     xSql := 'UPDATE COB_CUE_REC_BAN_NAC_DET SET CIERRE = ''D'' WHERE SUBSTR(NUMDOCCOB,2,8) = '+QuotedStr(xdni)+' AND FECPAG = '+QuotedStr(xfecpag);
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
     xCierre := 'D';
  End;
  DM1.cdsCuotas.Insert;
  DM1.cdsCuotas.FieldByName('CODREG').AsString      := xCod;
  DM1.cdsCuotas.FieldByName('CODBAN').AsString      := Copy(Edit1.Text,1,4);
  DM1.cdsCuotas.FieldByName('FECACTDAT').AsString   := Copy(Edit1.Text,5,10);
  DM1.cdsCuotas.FieldByName('CODREGBEN').AsString   := Copy(Edit1.Text,15,10);
  DM1.cdsCuotas.FieldByName('CODBEN').AsString      := Copy(Edit1.Text,25,10);
  DM1.cdsCuotas.FieldByName('CODCLIPAG').AsString   := Copy(Edit1.Text,35,10);
  DM1.cdsCuotas.FieldByName('APENOMCLI').AsString   := Copy(Edit1.Text,45,32);
  DM1.cdsCuotas.FieldByName('NUMDOCCOB').AsString      := Copy(Edit1.Text,77,10);
  DM1.cdsCuotas.FieldByName('CODMON').AsString      := Copy(Edit1.Text,87,3);
  DM1.cdsCuotas.FieldByName('MONDELPAG').AsCurrency := StrToCurr(Copy(Edit1.Text,90,13)+'.'+Copy(Edit1.Text,103,2));
  If Copy(Edit1.Text,105,10)<> '00/00/0000' Then DM1.cdsCuotas.FieldByName('FECVENPAG').AsString   := Copy(Edit1.Text,105,10);
  DM1.cdsCuotas.FieldByName('TASINT').AsCurrency    := StrToCurr(Copy(Edit1.Text,115,4)+'.'+Copy(Edit1.Text,119,4));
  DM1.cdsCuotas.FieldByName('NUMCUECLI').AsString   := Copy(Edit1.Text,123,10);
  If Copy(Edit1.Text,133,10)<> '00/00/0000' Then DM1.cdsCuotas.FieldByName('FECPAG').AsString      := Copy(Edit1.Text,133,10);
  DM1.cdsCuotas.FieldByName('HORPAG').AsString      := Copy(Edit1.Text,143,5);
  DM1.cdsCuotas.FieldByName('MONPAG').AsCurrency    := StrToCurr(Copy(Edit1.Text,163,13)+'.'+Copy(Edit1.Text,176,2));
  DM1.cdsCuotas.FieldByName('TIPPAG').AsString      := Copy(Edit1.Text,178,2);
  DM1.cdsCuotas.FieldByName('FECVAL').AsString      := Copy(Edit1.Text,180,10);
  DM1.cdsCuotas.FieldByName('CODOFI').AsString      := Copy(Edit1.Text,190,3);
  DM1.cdsCuotas.FieldByName('IDEPER').AsString      := 'N-'+Copy(Edit1.Text,195,8);
  DM1.cdsCuotas.FieldByName('SITPAG').AsString      := Copy(Edit1.Text,203,1);
  DM1.cdsCuotas.FieldByName('TIPCOB').AsString      := Copy(Edit1.Text,204,2);
  DM1.cdsCuotas.FieldByName('MONEFE').AsCurrency    := StrToCurr(Copy(Edit1.Text,206,13)+'.'+Copy(Edit1.Text,219,2));
  DM1.cdsCuotas.FieldByName('MONCHE').AsCurrency    := StrToCurr(Copy(Edit1.Text,221,13)+'.'+Copy(Edit1.Text,234,2));
  DM1.cdsCuotas.FieldByName('MONREV').AsCurrency    := StrToCurr(Copy(Edit1.Text,236,13)+'.'+Copy(Edit1.Text,248,2));
  xasoid := recuperaasoid(Copy(Edit1.Text,15,10),Copy(Edit1.Text,79,8),Copy(Edit1.Text,45,32));
  If xasoid <> '0000000000' Then DM1.cdsCuotas.FieldByName('ASOID').AsString := xasoid;
  DM1.cdsCuotas.FieldByName('CIERRE').AsString      := xCierre;
  DM1.cdsCuotas.ApplyUpdates(0);
  xCierre := '';
  canDet := canDet + 1;
  monDet := monDet + DM1.cdsCuotas.FieldByName('MONPAG').AsCurrency;
  While Not EoF(Archivo) do
  Begin
    Readln(archivo, S);
    Edit1.Text := S;
    // Verificando si ya existe este registro
    xdni    := Copy(Edit1.Text,79,8);
    xfecpag := Copy(Edit1.Text,133,10);
    xSql := 'SELECT * FROM COB_CUE_REC_BAN_NAC_DET WHERE SUBSTR(NUMDOCCOB,3,8) = '+QuotedStr(xdni)+' AND FECPAG = '+QuotedStr(xfecpag);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount > 0 Then
    Begin
       xSql := 'UPDATE COB_CUE_REC_BAN_NAC_DET SET CIERRE = ''D'' WHERE SUBSTR(NUMDOCCOB,3,8) = '+QuotedStr(xdni)+' AND FECPAG = '+QuotedStr(xfecpag);
       DM1.DCOM1.AppServer.EjecutaSQL(xSql);
       xCierre := 'D';
    End;
    DM1.cdsCuotas.Insert;
    DM1.cdsCuotas.FieldByName('CODREG').AsString      := xCod;
    DM1.cdsCuotas.FieldByName('CODBAN').AsString      := Copy(Edit1.Text,1,4);
    DM1.cdsCuotas.FieldByName('FECACTDAT').AsString   := Copy(Edit1.Text,5,10);
    DM1.cdsCuotas.FieldByName('CODREGBEN').AsString   := Copy(Edit1.Text,15,10);
    DM1.cdsCuotas.FieldByName('CODBEN').AsString      := Copy(Edit1.Text,25,10);
    DM1.cdsCuotas.FieldByName('CODCLIPAG').AsString   := Copy(Edit1.Text,35,10);
    DM1.cdsCuotas.FieldByName('APENOMCLI').AsString   := Copy(Edit1.Text,45,32);
    DM1.cdsCuotas.FieldByName('NUMDOCCOB').AsString   := Copy(Edit1.Text,77,10);
    DM1.cdsCuotas.FieldByName('CODMON').AsString      := Copy(Edit1.Text,87,3);
    DM1.cdsCuotas.FieldByName('MONDELPAG').AsCurrency := StrToCurr(Copy(Edit1.Text,90,13)+'.'+Copy(Edit1.Text,103,2));
    If Copy(Edit1.Text,105,10)<> '00/00/0000' Then DM1.cdsCuotas.FieldByName('FECVENPAG').AsString := Copy(Edit1.Text,105,10);
    DM1.cdsCuotas.FieldByName('TASINT').AsCurrency    := StrToCurr(Copy(Edit1.Text,115,4)+'.'+Copy(Edit1.Text,119,4));
    DM1.cdsCuotas.FieldByName('NUMCUECLI').AsString   := Copy(Edit1.Text,123,10);
    If Copy(Edit1.Text,133,10)<> '00/00/0000' Then DM1.cdsCuotas.FieldByName('FECPAG').AsString    := Copy(Edit1.Text,133,10);
    DM1.cdsCuotas.FieldByName('HORPAG').AsString      := Copy(Edit1.Text,143,5);
    DM1.cdsCuotas.FieldByName('MONPAG').AsCurrency    := StrToCurr(Copy(Edit1.Text,163,13)+'.'+Copy(Edit1.Text,176,2));
    DM1.cdsCuotas.FieldByName('TIPPAG').AsString      := Copy(Edit1.Text,178,2);
    DM1.cdsCuotas.FieldByName('FECVAL').AsString      := Copy(Edit1.Text,180,10);
    DM1.cdsCuotas.FieldByName('CODOFI').AsString      := Copy(Edit1.Text,190,3);
    DM1.cdsCuotas.FieldByName('IDEPER').AsString      := 'N-'+Copy(Edit1.Text,195,8);
    DM1.cdsCuotas.FieldByName('SITPAG').AsString      := Copy(Edit1.Text,203,1);
    DM1.cdsCuotas.FieldByName('TIPCOB').AsString      := Copy(Edit1.Text,204,2);
    DM1.cdsCuotas.FieldByName('MONEFE').AsCurrency    := StrToCurr(Copy(Edit1.Text,206,13)+'.'+Copy(Edit1.Text,219,2));
    DM1.cdsCuotas.FieldByName('MONCHE').AsCurrency    := StrToCurr(Copy(Edit1.Text,221,13)+'.'+Copy(Edit1.Text,234,2));
    DM1.cdsCuotas.FieldByName('MONREV').AsCurrency    := StrToCurr(Copy(Edit1.Text,236,13)+'.'+Copy(Edit1.Text,248,2));
    xasoid := recuperaasoid(Copy(Edit1.Text,15,10),Copy(Edit1.Text,79,8),Copy(Edit1.Text,45,32));
    If xasoid <> '0000000000' Then DM1.cdsCuotas.FieldByName('ASOID').AsString := xasoid;
    DM1.cdsCuotas.FieldByName('CIERRE').AsString      := xCierre;
    xCierre := '';
    DM1.cdsCuotas.ApplyUpdates(0);
    canDet := canDet + 1;
    monDet := monDet + DM1.cdsCuotas.FieldByName('MONPAG').AsCurrency;
  End;
  xSql := 'UPDATE COB_CUE_REC_BAN_NAC_CAB SET CANTOT ='+CurrToStr(canDet)+', MONTOT = '+CurrToStr(monDet)+' WHERE CODREG = '+QuotedStr(xCod);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);

  DM1.xCnd := 'S';
  DM1.cdsCuotas.First;
  While Not DM1.cdsCuotas.Eof Do
  Begin
    If Trim(DM1.cdsCuotas.FieldByName('ASOID').AsString) = '' Then DM1.xCnd := 'N';
    DM1.cdsCuotas.Next;
  End;
  If DM1.xCnd = 'S' Then
     MessageDlg('Información descargada Ok.', mtInformation,[mbOk],0)
  Else
     MessageDlg('El archivo fue descargado con inconsistencias'+#13+'Corrija en migración con inconsistencias', mtInformation,[mbOk],0);
  CloseFile(archivo);
  Fdescuerecbconac.Close;
End;

procedure TFdescuerecbconac.btnSalirClick(Sender: TObject);
begin
  Fdescuerecbconac.Close;
end;

function TFdescuerecbconac.recuperaasoid(xasoid, xasodni, xapenomcli: String): String;
Var xSql:String;
begin
  // Chequeando el asoid
  xSql := 'SELECT ASOID FROM APO201 WHERE ASOID = '+QuotedStr(xAsoid)+' AND TRIM(ASODNI) = '+QuotedStr(xasodni)+' AND ASOAPENOMDNI LIKE '+QuotedStr(Trim(xapenomcli)+'%');
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount = 1 Then
    Result := DM1.cdsQry.FieldByName('ASOID').AsString
  Else
    Result := '0000000000';

  {Else
  Begin
    xSql := 'SELECT ASOID FROM APO201 WHERE ASOID = '+QuotedStr(xasoid)+' AND ASODNI = '+QuotedStr(xasodni)+' AND SUBSTR(ASOAPENOMDNI,1,5) = '+QuotedStr(Copy(xapenomcli,1,5));
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount = 1 Then
      Result := DM1.cdsQry.FieldByName('ASOID').AsString
    Else
  End;
  }


End;

end.
