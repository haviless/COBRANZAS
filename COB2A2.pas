unit COB2A2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, fcLabel;

type
  TFDFirmaHuella = class(TForm)
    Image3: TImage;
    Panel12: TPanel;
    Panel13: TPanel;
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
  FDFirmaHuella: TFDFirmaHuella;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFDFirmaHuella.FormActivate(Sender: TObject);
begin
    FDFirmaHuella.lbTitulo.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
    FDFirmaHuella.lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
end;

procedure TFDFirmaHuella.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

end.
