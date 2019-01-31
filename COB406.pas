unit COB406;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Mask, wwdbedit, StdCtrls, wwdblook,
  ExtCtrls, ComCtrls, wwriched, wwdbdatetimepicker, Buttons, Wwdbigrd,
  Grids, Wwdbgrid, ppBands, ppStrtch, ppMemo, ppVar, jpeg, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TFGeneracionOficios = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    dblcFormaRep: TwwDBLookupCombo;
    dbeFormaRep: TwwDBEdit;
    bbtnAceptaCabecera: TfcShapeBtn;
    bbtnCancelaCabecera: TfcShapeBtn;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit5: TwwDBEdit;
    Panel2: TPanel;
    dbeCodigoReclamo: TwwDBEdit;
    Panel3: TPanel;
    wwDBGrid5: TwwDBGrid;
    wwIButton5: TwwIButton;
    fcShapeBtn5: TfcShapeBtn;
    fcShapeBtn6: TfcShapeBtn;
    ppRepOficioGiro: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine15: TppLine;
    ppImage3: TppImage;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppMemo4: TppMemo;
    ppLabel51: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine18: TppLine;
    ppLabel50: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel43: TppLabel;
    procedure fcShapeBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGeneracionOficios: TFGeneracionOficios;

implementation

{$R *.DFM}

procedure TFGeneracionOficios.fcShapeBtn6Click(Sender: TObject);
begin
  Self.Close;
end;

end.
