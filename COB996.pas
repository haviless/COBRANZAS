unit COB996;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FileCtrl;

type
  Tfactinfdisquete = class(TForm)
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
  factinfdisquete: Tfactinfdisquete;

implementation

uses COBDM1, COB991;

{$R *.dfm}

Procedure Tfactinfdisquete.btnprocesarClick(Sender: TObject);
Var
  archivo: TextFile;
  S, origen: string;
  xcodmod, xasoapenom, xcargo:String;
  xSql, xasodni, xasoncta:String;
Begin
  If Trim(FileListBox1.FileName) = '' Then
  Begin
    MessageDlg('No existe archivo para importar', mtInformation,[mbOk],0);
    Exit;
  End;
  screen.Cursor := crHourGlass;
  origen := FileListBox1.FileName;
  assignfile(archivo,origen);
  Reset(archivo);
  Readln(archivo, S);
  Edit1.Text := S;
  If DM1.xtiparc = '0' Then
  Begin
    xcodmod    := Copy(Edit1.Text,1,10);
    xcargo     := Copy(Edit1.Text,11,6);
    xasoapenom := Copy(Edit1.Text,17,42);
    While Not EoF(Archivo) do
    Begin
      xSql := 'SELECT ASOID, ASOCODMOD, USEID, CARGO, ASODNI, ASONCTA, ASOAPENOM FROM COB319 WHERE ASOCODMOD = '+QuotedStr(xcodmod)
      +' AND COBANO = '+QuotedStr(Copy(DM1.cdsGrupos.FieldByName('PERIODO').AsString,1,4))+' AND COBMES = '+QuotedStr(Copy(DM1.cdsGrupos.FieldByName('PERIODO').AsString,5,2))
      +' AND SUBSTR(ASOAPENOM,1,5) = '+QuotedStr(Copy(xasoapenom,1,5));
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount = 1 Then
      Begin
        If DM1.cdsQry.FieldByName('CARGO').AsString <> xcargo Then
        Begin
          DM1.cdsinconsistencia.Append;
          DM1.cdsinconsistencia.FieldByName('USEID').AsString       := DM1.cdsQry.FieldByName('USEID').AsString;
          DM1.cdsinconsistencia.FieldByName('ASOID').AsString       := DM1.cdsQry.FieldByName('ASOID').AsString;
          DM1.cdsinconsistencia.FieldByName('ASOCODMOD').AsString   := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
          DM1.cdsinconsistencia.FieldByName('CARGO').AsString       := DM1.cdsQry.FieldByName('CARGO').AsString;
          DM1.cdsinconsistencia.FieldByName('ASODNI').AsString      := DM1.cdsQry.FieldByName('ASODNI').AsString;
          DM1.cdsinconsistencia.FieldByName('ASONCTA').AsString     := DM1.cdsQry.FieldByName('ASONCTA').AsString;
          DM1.cdsinconsistencia.FieldByName('ASOAPENOM').AsString   := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
          DM1.cdsinconsistencia.FieldByName('ASOCODMOD_I').AsString := xcodmod;
          DM1.cdsinconsistencia.FieldByName('CARGO_I').AsString     := xcargo;
          DM1.cdsinconsistencia.FieldByName('ASOAPENOM_I').AsString := xasoapenom;
          DM1.cdsinconsistencia.Post;
        End;
      End;
      Readln(archivo, S);
      Edit1.Text := S;
      xcodmod    := Copy(Edit1.Text,1,10);
      xcargo     := Copy(Edit1.Text,11,6);
      xasoapenom := Copy(Edit1.Text,17,42);
    End;
  End
  Else
  Begin
    xcodmod    := Copy(Edit1.Text,1,10);
    xasodni    := Copy(Edit1.Text,11,8);
    xasoncta   := Copy(Edit1.Text,19,10);
    xasoapenom := Copy(Edit1.Text,29,32);
    While Not EoF(Archivo) do
    Begin
      xSql := 'SELECT ASOID, ASOCODMOD, USEID, CARGO, ASODNI, ASONCTA, ASOAPENOM FROM COB319 WHERE ASODNI = '+QuotedStr(xasodni)
      +' AND COBANO = '+QuotedStr(Copy(DM1.cdsGrupos.FieldByName('PERIODO').AsString,1,4))
      +' AND COBMES = '+QuotedStr(Copy(DM1.cdsGrupos.FieldByName('PERIODO').AsString,5,2))
      +' AND SUBSTR(ASOAPENOM,1,5) = '+QuotedStr(Copy(xasoapenom,1,5));
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount = 1 Then
      Begin
        If DM1.cdsQry.FieldByName('ASOCODMOD').AsString <> xcodmod Then
        Begin
          DM1.cdsinconsistencia.Append;
          DM1.cdsinconsistencia.FieldByName('USEID').AsString       := DM1.cdsQry.FieldByName('USEID').AsString;
          DM1.cdsinconsistencia.FieldByName('ASOID').AsString       := DM1.cdsQry.FieldByName('ASOID').AsString;
          DM1.cdsinconsistencia.FieldByName('ASOCODMOD').AsString   := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
          DM1.cdsinconsistencia.FieldByName('CARGO').AsString       := DM1.cdsQry.FieldByName('CARGO').AsString;
          DM1.cdsinconsistencia.FieldByName('ASODNI').AsString      := DM1.cdsQry.FieldByName('ASODNI').AsString;
          DM1.cdsinconsistencia.FieldByName('ASONCTA').AsString     := DM1.cdsQry.FieldByName('ASONCTA').AsString;
          DM1.cdsinconsistencia.FieldByName('ASOAPENOM').AsString   := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
          DM1.cdsinconsistencia.FieldByName('ASOCODMOD_I').AsString := xcodmod;
          DM1.cdsinconsistencia.FieldByName('ASOAPENOM_I').AsString := xasoapenom;
          DM1.cdsinconsistencia.FieldByName('ASODNI_I').AsString    := xasodni;
          DM1.cdsinconsistencia.FieldByName('ASONCTA_I').AsString   := xasoncta;
        End;
      End;
      Readln(archivo, S);
      Edit1.Text := S;
      xcodmod    := Copy(Edit1.Text,1,  10);
      xasodni    := Copy(Edit1.Text,11,  8);
      xasoncta   := Copy(Edit1.Text,19, 10);
      xasoapenom := Copy(Edit1.Text,29, 32);
    End;
  End;
  MessageDlg('Información importada. Verifique', mtInformation,[mbOk],0);
  Screen.Cursor := crDefault;
End;




procedure Tfactinfdisquete.btnSalirClick(Sender: TObject);
begin
  factinfdisquete.Close;
end;

end.

