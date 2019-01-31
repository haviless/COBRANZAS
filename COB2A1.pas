unit COB2A1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, fcLabel;

type
  TFDSituaciones = class(TForm)
    dbgDFam: TwwDBGrid;
    btnDFam: TwwIButton;
    lbCodigo: TfcLabel;
    lbTitulo: TfcLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDSituaciones: TFDSituaciones;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFDSituaciones.FormActivate(Sender: TObject);
begin
    lbTitulo.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
    lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

end;

procedure TFDSituaciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

end.
