unit COBD07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db;

type
  TfDetAteAnt = class(TForm)
    BitSalir: TBitBtn;
    dtgAtnAtn: TwwDBGrid;
    procedure BitSalirClick(Sender: TObject);
    procedure dtgAtnAtnDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgAtnAtnDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetAteAnt: TfDetAteAnt;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDetAteAnt.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfDetAteAnt.dtgAtnAtnDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   dtgAtnAtn.Canvas.Font.Color := clNavy;
   dtgAtnAtn.DefaultDrawDataCell(rect,Field,State);
end;

procedure TfDetAteAnt.dtgAtnAtnDblClick(Sender: TObject);
begin
    MessageDlg(DM1.cdsSitReclamo.FieldByName('OBSATE').AsString, mtInformation,[mbOk], 0 );
end;

end.
