unit COB912;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid;

type
  TfDetOficio = class(TForm)
    GroupBox1: TGroupBox;
    dtgDetDev: TwwDBGrid;
    BitSalir: TBitBtn;
    dtgDetPagIButton: TwwIButton;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetOficio: TfDetOficio;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDetOficio.BitSalirClick(Sender: TObject);
begin
 Close;
end;

procedure TfDetOficio.FormActivate(Sender: TObject);
Var xTotDev:Currency;
begin
xTotDev:=0;
DM1.cdsDetalle.First;
While Not DM1.cdsDetalle.Eof Do
Begin
   xTotDev:= xTotDev + DM1.cdsDetalle.FieldByName('ASOMONDEV').AsCurrency;
   DM1.cdsDetalle.Next;
End;
dtgDetDev.ColumnByName('ASONUMDEV').FooterValue :='Total';
dtgDetDev.ColumnByName('ASOMONDEV').FooterValue := FloatToStrF(xTotDev,ffNumber, 10, 2);


end;

end.
