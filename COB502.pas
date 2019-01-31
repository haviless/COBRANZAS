unit COB502;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbspin, StdCtrls, wwdblook, ExtCtrls, Mask, wwdbedit,
  Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn, ppCtrls, ppBands, jpeg, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TFRepDevolucion = class(TForm)
    ppRepDevolucion: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppImage1: TppImage;
    ppLabel26: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel31: TppLabel;
    ppDBText8: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel36: TppLabel;
    ppDBCalc1: TppDBCalc;
    pnlCabecera: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    zzzzz: TPanel;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    wwDBEdit39: TwwDBEdit;
    wwDBEdit43: TwwDBEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    RadioGroup1: TRadioGroup;
    wwDBLookupComboDlg4: TwwDBLookupComboDlg;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBComboDlg2: TwwDBComboDlg;
    dbeApePat: TwwDBEdit;
    dbeApeMat: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepDevolucion: TFRepDevolucion;

implementation

{$R *.DFM}

procedure TFRepDevolucion.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepDevolucion.fcShapeBtn1Click(Sender: TObject);
begin
ppRepDevolucion.Print;
end;

end.
