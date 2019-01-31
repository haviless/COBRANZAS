
unit COB402;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Buttons, Wwdbigrd, Grids, Wwdbgrid,
  wwdbdatetimepicker, Mask, wwdbedit, StdCtrls, wwdblook, ExtCtrls,
  Wwdbspin;

type
  TFGeneracionDescuentos = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    dblcFormaRep: TwwDBLookupCombo;
    dbeFormaRep: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    Panel2: TPanel;
    fcShapeBtn5: TfcShapeBtn;
    fcShapeBtn6: TfcShapeBtn;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBEdit3: TwwDBEdit;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBSpinEdit3: TwwDBSpinEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBGrid5: TwwDBGrid;
    wwIButton5: TwwIButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGeneracionDescuentos: TFGeneracionDescuentos;

implementation

{$R *.DFM}

end.
