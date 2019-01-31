unit COB760;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls;

type
  TFToolRepEstCtaCte = class(TForm)
    pnlTool: TPanel;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    sbtnAceptar: TfcShapeBtn;
    Z2sbtnHistorial: TfcShapeBtn;
    procedure Z2sbtnHistorialClick(Sender: TObject);
    procedure sbtnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolRepEstCtaCte: TFToolRepEstCtaCte;

implementation

//uses COB770, COB001;
uses COB001, CRE229;

{$R *.DFM}

procedure TFToolRepEstCtaCte.Z2sbtnHistorialClick(Sender: TObject);
begin
//   edtAsociado.Visible := True;
//   sbtnAceptar.Visible := True;
//   pnlResumen.Visible := False;
//   pnlPrametro.Visible := False;
   FHistorial := TFHistorial.Create(Self);
   FHistorial.wBoton := '1';
   FHistorial.ShowModal;
   FHistorial.Free;
end;

procedure TFToolRepEstCtaCte.sbtnAceptarClick(Sender: TObject);
var
   xSQL : String;
begin
   If Length(Trim(edtAsociado.Text)) > 0 Then
    xSQL := 'SELECT * FROM APO201 WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
   Else
    xSQL := 'SELECT * FROM APO201';

   Screen.Cursor := crHourGlass;
   FPrincipal.Mtx.UsuarioSQL.Clear;
   FPrincipal.Mtx.FMant.wTabla := 'APO201';
   FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
   FPrincipal.Mtx.NewQuery;
   Screen.Cursor := crDefault;
end;

end.
