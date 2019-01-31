unit CRE937;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
  jpeg,IniFiles,DateUtils;

type
  TfResNomb = class(TForm)
    grpResoluciones: TGroupBox;
    grpDatos: TGroupBox;
    dtgResoluciones: TwwDBGrid;
    BitSalir: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fResNomb: TfResNomb;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfResNomb.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

procedure TfResNomb.BitSalirClick(Sender: TObject);
begin
  Close;
end;

end.
