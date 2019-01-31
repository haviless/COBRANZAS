unit COB412;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid, ComCtrls,
  Wwdbspin, Wwdotdot, Mask, wwdbedit, StdCtrls, wwdblook, ExtCtrls, Wwdbdlg;

type
  TFDescarga = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    dblcFormaRep: TwwDBLookupCombo;
    dbeApePat: TwwDBEdit;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    OpenDialog1: TOpenDialog;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    btnFILEPATHCab: TButton;
    wwDBGrid1: TwwDBGrid;
    fcShapeBtn3: TfcShapeBtn;
    bbtnCancel: TfcShapeBtn;
    wwDBComboDlg1: TwwDBComboDlg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDescarga: TFDescarga;

implementation

{$R *.DFM}

end.
