unit COB433;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons;

type
  Tfincdescuerec = class(TForm)
    dbgvalidacion: TwwDBGrid;
    BitBtn1: TBitBtn;
    btncerrar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fincdescuerec: Tfincdescuerec;

implementation

uses COBDM1;

{$R *.dfm}

procedure Tfincdescuerec.FormActivate(Sender: TObject);
Var xSql :String;
begin
  dbgvalidacion.Selected.Clear;
  dbgvalidacion.Selected.Add('ASOID'#9'10'#9'Código de~identificación'#9#9);
  dbgvalidacion.Selected.Add('ASOAPENOMDNI'#9'40'#9'Apellidos y~nombre(s)'#9#9);
  dbgvalidacion.Selected.Add('CAMRETBCO'#9'30'#9'Campo de~retorno(asoid)'#9#9);
  dbgvalidacion.Selected.Add('CODIDEBCO'#9'14'#9'Código de~identificación del banco'#9#9);
  dbgvalidacion.Selected.Add('DES'#9'30'#9'Error~registrado'#9#9);
  dbgvalidacion.ApplySelected;
  While Not DM1.cdsQry5.Eof Do
  Begin
    xSql := 'SELECT ASOID, ASOAPENOMDNI FROM APO201 WHERE ASODNI = '+QuotedStr(Copy(DM1.cdsQry5.FieldByName('CODIDEBCO').AsString,7,8));
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    DM1.cdsQry5.Edit;
    DM1.cdsQry5.FieldByName('ASOAPENOMDNI').AsString := DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString;
    DM1.cdsQry5.FieldByName('ASOID').AsString := DM1.cdsQry.FieldByName('ASOID').AsString;
    DM1.cdsQry5.FieldByName('DES').AsString := 'ASOID Y CAMPO DE RETORNO DIFERENTES';
    DM1.cdsQry5.Next;
  End;
End;

procedure Tfincdescuerec.BitBtn1Click(Sender: TObject);
Var xSql, xasoid, xfecpro:String;
begin
  xasoid := DM1.StrZero(DM1.cdsQry.FieldByname('ASOID').AsString, 30);
  If MessageDlg('¿ Actualizar registro con los datos de derrama ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    xSql := 'UPDATE COB348 SET CAMRET = '+QuotedStr(xasoid)
    +' WHERE CAMRET IS NULL AND NUMOPE = '+QuotedStr(DM1.cdsQry5.FieldByName('NUMOPE').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    MessageDlg(' ! Registro actualizado ! ', mtInformation,[mbOk],0);
    xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
    xSql := 'SELECT B.ASOID, B.ASOAPENOMDNI, A.CAMRET CAMRETBCO, A.CODIDE CODIDEBCO, A.NUMOPE, ''                              '' DES'
    +' FROM COB348 A, APO201 B WHERE FECPAG = '+QuotedStr(xfecpro)
    +' AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND B.ASOID IS NULL';
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSql);
    DM1.cdsQry5.Open;
    While Not DM1.cdsQry5.Eof Do
    Begin
      xSql := 'SELECT ASOID, ASOAPENOMDNI FROM APO201 WHERE ASODNI = '+QuotedStr(Copy(DM1.cdsQry5.FieldByName('CODIDEBCO').AsString,7,8));
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      DM1.cdsQry5.Edit;
      DM1.cdsQry5.FieldByName('ASOAPENOMDNI').AsString := DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString;
      DM1.cdsQry5.FieldByName('ASOID').AsString := DM1.cdsQry.FieldByName('ASOID').AsString;
      DM1.cdsQry5.FieldByName('DES').AsString := 'ASOID Y CAMPO DE RETORNO DIFERENTES';
      DM1.cdsQry5.Next;
    End;
  End;
end;

procedure Tfincdescuerec.btncerrarClick(Sender: TObject);
begin
  Close;
end;


end.
