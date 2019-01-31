unit COB404;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, StdCtrls, ComCtrls,
  wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Wwdbspin;

type
  TFAplicNuevoInteres = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    ProgressBar1: TProgressBar;
    wwDBSpinEdit3: TwwDBSpinEdit;
    wwDBSpinEdit4: TwwDBSpinEdit;
    dbdtpFRecepcion: TwwDBDateTimePicker;
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAplicNuevoInteres: TFAplicNuevoInteres;

implementation

{$R *.DFM}

procedure TFAplicNuevoInteres.fcShapeBtn2Click(Sender: TObject);
begin
  Self.Close;
end;

end.
