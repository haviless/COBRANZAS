unit COB5H1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, fcButton, fcImgBtn, fcShapeBtn, StdCtrls,
  Mask, wwdbedit, Wwdbspin, ExtCtrls, ppViewr;

type
  TFRepDocConFechRes = class(TForm)
    Panel1: TPanel;
    zzzzz: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn3: TfcShapeBtn;
    ppDocConFRes: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel31: TppLabel;
    ppImage3: TppImage;
    ppLabel35: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel42: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel51: TppLabel;
    ppDBCalc1: TppDBCalc;
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppDocConFResPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepDocConFechRes: TFRepDocConFechRes;

implementation

{$R *.DFM}

procedure TFRepDocConFechRes.fcShapeBtn3Click(Sender: TObject);
begin
ppDocConFRes.Print;
end;

procedure TFRepDocConFechRes.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepDocConFechRes.ppDocConFResPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
