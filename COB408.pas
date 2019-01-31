unit COB408;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, StdCtrls, ComCtrls,
  wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Buttons, Wwdbigrd, Grids,
  Wwdbgrid;

type
  TFFondoSolidario = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    dblcTipo: TwwDBLookupCombo;
    dbeTipo: TwwDBEdit;
    dblcEstado: TwwDBLookupCombo;
    wwDBEdit31: TwwDBEdit;
    dbdtpFRecepcion: TwwDBDateTimePicker;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    FFSC: TLabel;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    wwDBGrid3: TwwDBGrid;
    wwIButton3: TwwIButton;
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFondoSolidario: TFFondoSolidario;

implementation

{$R *.DFM}

procedure TFFondoSolidario.fcShapeBtn2Click(Sender: TObject);
begin
  Self.Close;
end;

end.
