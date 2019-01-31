unit COB410;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdbdatetimepicker, Buttons, Wwdbigrd, Grids, Wwdbgrid, fcButton,
  fcImgBtn, fcShapeBtn, wwdblook, StdCtrls, Mask, wwdbedit, ExtCtrls;

type
  TFCartas = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    wwDBEdit42: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit5: TwwDBEdit;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn8: TfcShapeBtn;
    dbgDatosLaborales: TwwDBGrid;
    dbgDatosLaboralesButton: TwwIButton;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCartas: TFCartas;

implementation

{$R *.DFM}

end.
