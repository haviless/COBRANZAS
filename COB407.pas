unit COB407;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, StdCtrls, ComCtrls,
  wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, Wwdotdot, ppBands, ppCtrls, ppVar, jpeg, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TFEvaluacionCtas = class(TForm)
    pnlCabecera: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    Panel2: TPanel;
    Panel1: TPanel;
    dblcTipo: TwwDBLookupCombo;
    dbeTipo: TwwDBEdit;
    dblcEstado: TwwDBLookupCombo;
    wwDBEdit31: TwwDBEdit;
    RadioGroup1: TRadioGroup;
    dbdtpFRecepcion: TwwDBDateTimePicker;
    wwDBGrid3: TwwDBGrid;
    wwIButton3: TwwIButton;
    wwDBComboDlg1: TwwDBComboDlg;
    wwDBEdit1: TwwDBEdit;
    ppOtorgadosTipo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel42: TppLabel;
    ppImage2: TppImage;
    ppLabel7: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEvaluacionCtas: TFEvaluacionCtas;

implementation

{$R *.DFM}

procedure TFEvaluacionCtas.fcShapeBtn2Click(Sender: TObject);
begin
  Self.Close;
end;

end.
