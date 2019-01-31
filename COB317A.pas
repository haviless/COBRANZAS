unit COB317A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Wwdbigrd, Wwdbgrid;

type
  TFInconTeleahorro = class(TForm)
    BitBtn4: TBitBtn;
    dbgInconTeleahorro: TwwDBGrid;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInconTeleahorro: TFInconTeleahorro;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFInconTeleahorro.BitBtn4Click(Sender: TObject);
begin
Close;
end;

procedure TFInconTeleahorro.FormActivate(Sender: TObject);
begin
  dbgInconTeleahorro.DataSource := DM1.dsQry;
end;

end.
