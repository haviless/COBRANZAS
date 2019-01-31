unit COB707;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls;

type
  TFToolNAbono = class(TForm)
    pnlTool: TPanel;
    bbtnAceptar: TfcShapeBtn;
    bbtnImprime: TfcShapeBtn;
    gbPeriodo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtpDesde: TDateTimePicker;
    dtpHasta: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolNAbono: TFToolNAbono;

implementation

{$R *.DFM}

end.
