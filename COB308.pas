unit COB308;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, Wwdbdlg, StdCtrls, wwdblook, Mask, wwdbedit, Buttons,
  ExtCtrls, wwdbdatetimepicker, DBCtrls, ComCtrls, Grids, Wwdbigrd,
  Wwdbgrid,DB, Wwdbspin, wwriched, fcButton, fcImgBtn, fcShapeBtn;

type
  TFReclamos = class(TForm)
    pnlCabecera: TPanel;
    Panel10: TPanel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit5: TwwDBEdit;
    s: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    wwDBGrid2: TwwDBGrid;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBEdit7: TwwDBEdit;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBEdit8: TwwDBEdit;
    wwDBRichEdit1: TwwDBRichEdit;
    wwDBLookupCombo13: TwwDBLookupCombo;
    wwDBEdit9: TwwDBEdit;
    wwDBLookupCombo14: TwwDBLookupCombo;
    wwDBEdit10: TwwDBEdit;
    wwDBLookupCombo15: TwwDBLookupCombo;
    wwDBEdit11: TwwDBEdit;
    wwDBLookupCombo16: TwwDBLookupCombo;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit24: TwwDBEdit;
    wwDBEdit25: TwwDBEdit;
    GroupBox1: TGroupBox;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    wwDBEdit15: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    wwDBLookupCombo10: TwwDBLookupCombo;
    wwDBEdit17: TwwDBEdit;
    wwDBLookupCombo11: TwwDBLookupCombo;
    wwDBEdit18: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    wwDBLookupCombo12: TwwDBLookupCombo;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    wwDBEdit22: TwwDBEdit;
    wwDBEdit23: TwwDBEdit;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FReclamos: TFReclamos;
implementation

//USES ;
{$R *.DFM}

procedure TFReclamos.fcShapeBtn2Click(Sender: TObject);
begin
 self.close;
end;

end.

