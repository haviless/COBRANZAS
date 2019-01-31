unit COB420;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls;

type
  TFVisualData = class(TForm)
    pnlPrevio: TPanel;
    dbgPrevio: TwwDBGrid;
    pnlBoton: TPanel;
    BitBtn4: TfcShapeBtn;
    BitBtn1: TfcShapeBtn;
    bbtnCancelaCabecera: TfcShapeBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbtnCancelaCabeceraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVisualData: TFVisualData;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFVisualData.BitBtn4Click(Sender: TObject);
begin
  dbgPrevio.TitleFont.Size:=8;
  dbgPrevio.Font.Size     :=8;
  dbgPrevio.RefreshDisplay;
end;

procedure TFVisualData.BitBtn1Click(Sender: TObject);
begin
   dbgPrevio.TitleFont.Size:=7;
   dbgPrevio.Font.Size     :=7;
   dbgPrevio.RefreshDisplay;
end;

procedure TFVisualData.bbtnCancelaCabeceraClick(Sender: TObject);
begin
  close;
end;

procedure TFVisualData.FormActivate(Sender: TObject);
var
  xlon : integer;
begin
  if Dm1.cdsqry.recordcount > 0 then
    xlon:=length(Dm1.cdsqry.fieldbyname('TEXTO').AsString)
  else
    xlon:=1;

  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add('TEXTO'+#9+inttostr(xlon)+#9+'Texto');
  dbgPrevio.DataSource:=DM1.dsqry;
end;

procedure TFVisualData.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

end.
