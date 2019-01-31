unit COB521;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbspin, StdCtrls, Mask, wwdbedit, wwdblook, Wwdbdlg, ppCtrls, ppBands,
  jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppTypes, ppReport, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, wwdbdatetimepicker, ppViewr;

type
  TFRepDevCuotaEfecTDes = class(TForm)
    Panel1: TPanel;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    zzzzz: TPanel;
    wwDBLookupComboDlg4: TwwDBLookupComboDlg;
    wwDBEdit2: TwwDBEdit;
    GroupBox1: TGroupBox;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    RadioGroup1: TRadioGroup;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBEdit3: TwwDBEdit;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    wwDBEdit39: TwwDBEdit;
    wwDBLookupComboDlg5: TwwDBLookupComboDlg;
    wwDBEdit43: TwwDBEdit;
    ppRepDevCuotEfecTDes: TppReport;
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
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppImage2: TppImage;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ppRepDevCuotEfecTDesPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepDevCuotaEfecTDes: TFRepDevCuotaEfecTDes;

implementation

{$R *.DFM}

procedure TFRepDevCuotaEfecTDes.fcShapeBtn2Click(Sender: TObject);
begin
  Self.close;
end;

procedure TFRepDevCuotaEfecTDes.fcShapeBtn1Click(Sender: TObject);
begin
ppRepDevCuotEfecTDes.Print;
end;

procedure TFRepDevCuotaEfecTDes.ppRepDevCuotEfecTDesPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

end.
