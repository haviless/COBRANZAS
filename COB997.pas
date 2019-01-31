unit COB997;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid;

type
  TFSelCon = class(TForm)
    dbgselcon: TwwDBGrid;
    btncerrar: TBitBtn;
    procedure dbgselconDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelCon: TFSelCon;

implementation

uses COBDM1, COB987, COB812;

{$R *.dfm}

procedure TFSelCon.dbgselconDblClick(Sender: TObject);
begin
  If DM1.xHis = '1' Then
  Begin
    FGeninfpla.edtcodcon.Text   := DM1.cdsConvenio.FieldByName('IDECON').AsString;
    FGeninfpla.edtdescon.Text   := DM1.cdsConvenio.FieldByName('DESCON').AsString;
    FGeninfpla.seanopro.SetFocus;
  End
  Else
  Begin
    FRepcuoenv.edtcodcon.Text   := DM1.cdsConvenio.FieldByName('IDECON').AsString;
    FRepcuoenv.edtdescon.Text   := DM1.cdsConvenio.FieldByName('DESCON').AsString;
    FRepcuoenv.seanopro.SetFocus;
  End;
  FSelCon.Close;
end;

procedure TFSelCon.FormActivate(Sender: TObject);
begin
  If DM1.xHis = '1' Then
  Begin
    FSelCon.Top  := FGeninfpla.Top+70;
    FSelCon.Left := FGeninfpla.Left;
  End
  Else
  Begin
    FSelCon.Top  := FRepcuoenv.Top+70;
    FSelCon.Left := FRepcuoenv.Left;
  End;
  dbgselcon.Selected.Clear;
  dbgselcon.Selected.Add('IDECON'#9'8'#9'Número del~convenio'#9#9);
  dbgselcon.Selected.Add('DESCON'#9'32'#9'Descripción del convenio'#9#9);
  dbgselcon.Selected.Add('FECINI'#9'10'#9'Fecha de inicio~del convenio'#9#9);
  dbgselcon.Selected.Add('FECFIN'#9'10'#9'Fecha de finalización~del convenio'#9#9);
  dbgselcon.ApplySelected;
end;

procedure TFSelCon.btncerrarClick(Sender: TObject);
begin
  FSelCon.Close;
end;

end.
