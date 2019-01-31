unit COB306;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask, wwdbedit,
  ExtCtrls, wwdbdatetimepicker, Wwdotdot;

type
  TFDevolucionCuotas = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    dbeTipo: TwwDBEdit;
    dbeApePat: TwwDBEdit;
    dbeApeMat: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    Panel2: TPanel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit3: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    wwDBComboDlg1: TwwDBComboDlg;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBEdit1: TwwDBEdit;
    wwDBComboDlg2: TwwDBComboDlg;
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDevolucionCuotas: TFDevolucionCuotas;

implementation

{$R *.DFM}

procedure TFDevolucionCuotas.fcShapeBtn2Click(Sender: TObject);
begin
  self.close;
end;

end.
