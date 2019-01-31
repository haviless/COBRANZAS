unit COB523;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, Mask, wwdbedit, wwdblook, Wwdbdlg, ExtCtrls,
  StdCtrls, wwdbdatetimepicker, fcButton, fcImgBtn, fcShapeBtn, ppViewr;

type
  TFRepDevApoCuo = class(TForm)
    Panel1: TPanel;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    zzzzz: TPanel;
    GroupBox1: TGroupBox;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    RadioGroup1: TRadioGroup;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBEdit3: TwwDBEdit;
    ppRepDevApoCuo: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
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
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel2: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel27: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppRepDevApoCuoPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepDevApoCuo: TFRepDevApoCuo;

implementation

{$R *.DFM}

procedure TFRepDevApoCuo.fcShapeBtn1Click(Sender: TObject);
begin
ppRepDevApoCuo.Print;
end;

procedure TFRepDevApoCuo.fcShapeBtn2Click(Sender: TObject);
begin
Self.close;
end;

procedure TFRepDevApoCuo.ppRepDevApoCuoPreviewFormCreate(Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
