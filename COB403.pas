unit COB403;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, StdCtrls, ComCtrls,
  wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Wwdbspin;

type
  TFAplicMoratComp = class(TForm)
    pnlCabecera: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    z: TwwDBSpinEdit;
    wwDBSpinEdit3: TwwDBSpinEdit;
    wwDBSpinEdit4: TwwDBSpinEdit;
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAplicMoratComp: TFAplicMoratComp;

implementation

{$R *.DFM}

procedure TFAplicMoratComp.fcShapeBtn2Click(Sender: TObject);
begin
  Self.Close;
end;

end.
