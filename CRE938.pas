unit CRE938;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
  jpeg,IniFiles,DateUtils;

type
  TfCtasAhorro = class(TForm)
    grpDatos: TGroupBox;
    dtgCuentas: TwwDBGrid;
    grpResoluciones: TGroupBox;
    BitSalir: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
    function ValidaCuenta(xCuenta:String):String;
    function AsignaNroItem(xAsoId:String):String;
  public
    { Public declarations }
  end;

var
  fCtasAhorro: TfCtasAhorro;

implementation

uses COBDM1;

{$R *.dfm}

function TfCtasAhorro.ValidaCuenta(xCuenta: String): String;
var  y, x, z, Resto, Suma : Integer;
begin
  If xCuenta='0000000000' Then Result:='N';
  y:= 0; Suma:=0;
  for x:= 7 downto 1 do
  Begin
    y := y +1;  Suma := Suma + StrToInt (Copy(xCuenta,x+3,1) ) * y;
  End;
  y := 1;
  for z := 3 downto 1 do
  Begin
    y := y + 1; Suma := Suma + StrtoInt (Copy(xCuenta,z,1)) * y;
  End;
  Resto := Suma mod 11;
  If Resto <> 0 Then Result:='N' Else Result:='S';

end;

procedure TfCtasAhorro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

function TfCtasAhorro.AsignaNroItem(xAsoId: String): String;
var xSQL:String;
    xNumero:Integer;
begin
   xSQL:='SELECT ASOID,ASOITEM FROM APO207 WHERE ASOID='+QuotedStr(xAsoId)+' AND ASOID IS NOT NULL ORDER BY ASOITEM';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      Begin
         DM1.cdsQry.First; xNumero := 0;
         While Not DM1.cdsQry.Eof Do
         Begin
            xNumero := xNumero + 1;
            If xNumero<>DM1.cdsQry.FieldByName('ASOITEM').AsInteger Then
               Begin
                  Result:=Format('%.3d',[xNumero]);
                  Exit;
               End;
            DM1.cdsQry.Next;
         End;
         If DM1.cdsQry.Eof Then
            Begin
               Result:=Format('%.3d',[xNumero+1]);
               Exit;
            End;
      End
   Else
      Result := '001';

   DM1.cdsQry.Close;

end;

procedure TfCtasAhorro.BitSalirClick(Sender: TObject);
begin
  Close;
end;

end.
