{Para la ampliacion y reduccion de cuotas se toma el saldo del capital y el gasto, si la cuota esta
vencida se agrega el interes, al resultante se le calculara el interes y el gasto distribuido en el
nuevo plazo}																																												
unit COB303;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, Wwdbspin, fcButton, fcImgBtn,
  fcShapeBtn, StdCtrls, Mask, wwdbedit, ExtCtrls, ComCtrls,
  wwdbdatetimepicker, Wwdotdot;

type
  TFAmpRedCuotas = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    dbeTipo: TwwDBEdit;
    dbeApePat: TwwDBEdit;
    dbeApeMat: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    wwDBSpinEdit1: TwwDBSpinEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    fcShapeBtn3: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    wwDBComboDlg1: TwwDBComboDlg;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    ProgressBar1: TProgressBar;
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAmpRedCuotas: TFAmpRedCuotas;

implementation

{$R *.DFM}

procedure TFAmpRedCuotas.fcShapeBtn2Click(Sender: TObject);
begin
  Self.Close;
end;

end.
