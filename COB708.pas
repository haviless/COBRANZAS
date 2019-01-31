//** TFToolCanCuo FToolAportes
unit COB708;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Buttons, Mant, Db, Wwdatsrc, DBClient, wwclient, ppDB,
  ppDBPipe, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, fcButton,
  fcImgBtn, fcShapeBtn;

type
  TFToolAportes = class(TForm)
    pnlBot: TPanel;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    Label1: TLabel;
    edtCodMod: TEdit;
    bbtnAcepCodMod: TfcShapeBtn;
    procedure bbtnAcepCodModClick(Sender: TObject);
    procedure edtCodModExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    //grid : TwwDBGrid;
    //procedure OnEditRepAportes (Sender : TObject; MantFields: TFields);
  public
    { Public declarations }
    mTX2, MTX1 : TMant;
  	procedure OnNoDelete (Sender : TObject; MantFields: TFields);
    procedure CodQry;
  end;

var
  FToolAportes : TFToolAportes;

implementation

uses COB001, COBDM1, MsgDlgs;

{$R *.DFM}

procedure TFToolAportes.OnNoDelete(Sender: TObject; MantFields: TFields);
begin
	Errormsg(Caption, ' No se Puede Eliminar este Registro ');
end;

{procedure TFToolAportes.OnEditRepAportes (Sender : TObject; MantFields: TFields);
begin
end;}

procedure TFToolAportes.bbtnAcepCodModClick(Sender: TObject);
begin
  If Length(trim(edtAsociado.text)) > 0 then
   xSQL:='SELECT * FROM APO201 WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
  else
   If Length(trim(edtCodMod.Text)) > 0 then
    xSQL:='SELECT * FROM APO201 WHERE ASOCODMOD='+QuotedStr(Trim(edtCodMod.Text))
   else
    xSQL:='SELECT * FROM APO201';

  CodQry;
end;

procedure TFToolAportes.CodQry;
begin
  Screen.Cursor:=crHourGlass;
  if xBusAso = 'CanCuo' then
  begin
    FPrincipal.Mtx.UsuarioSQL.Clear;
    FPrincipal.Mtx.FMant.wTabla:='APO201';
    FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
    FPrincipal.Mtx.NewQuery;
  end
  else
  begin
    FPrincipal.MtxBloqueo.UsuarioSQL.Clear;
    FPrincipal.MtxBloqueo.FMant.wTabla:='APO201';
    FPrincipal.MtxBloqueo.UsuarioSQL.Add(xSQL);
    FPrincipal.MtxBloqueo.NewQuery;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TFToolAportes.edtCodModExit(Sender: TObject);
begin
  if Length(Trim(edtCodMod.Text)) > 0 then
    edtCodMod.Text := dm1.StrZero(edtCodMod.Text,xLogCodMo)
  else
    edtCodMod.Text := '';
end;

procedure TFToolAportes.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 Then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

end.

