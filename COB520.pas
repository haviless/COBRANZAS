unit COB520;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbspin, StdCtrls, wwdblook, ExtCtrls, Mask, wwdbedit,
  Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn, ppCtrls, ppBands, jpeg, ppVar,
  ppTypes, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppViewr,
  wwdbdatetimepicker;

type
  TFRepDevCuotaEfecDep = class(TForm)
    ppRepDevCuotEfecDep: TppReport;
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
    wwDBComboDlg2: TwwDBComboDlg;
    dbeApePat: TwwDBEdit;
    dbeApeMat: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    ppLabel2: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ppRepDevCuotEfecDepPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepDevCuotaEfecDep: TFRepDevCuotaEfecDep;

implementation

{$R *.DFM}

procedure TFRepDevCuotaEfecDep.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepDevCuotaEfecDep.fcShapeBtn1Click(Sender: TObject);
begin
ppRepDevCuotEfecDep.Print;
end;

procedure TFRepDevCuotaEfecDep.ppRepDevCuotEfecDepPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

end.
