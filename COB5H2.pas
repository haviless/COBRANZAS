unit COB5H2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, fcButton, fcImgBtn, fcShapeBtn, StdCtrls,
  Mask, wwdbedit, Wwdbspin, ExtCtrls, ppViewr;

type
  TFRepDocSinFechRes = class(TForm)
    Panel1: TPanel;
    zzzzz: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    fcShapeBtn2: TfcShapeBtn;
    ppDocSinFRes: TppReport;
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
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel51: TppLabel;
    ppDBCalc1: TppDBCalc;
    fcShapeBtn3: TfcShapeBtn;
    ppLabel2: TppLabel;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure ppDocSinFResPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepDocSinFechRes: TFRepDocSinFechRes;

implementation

{$R *.DFM}

procedure TFRepDocSinFechRes.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepDocSinFechRes.fcShapeBtn3Click(Sender: TObject);
begin
ppDocSinFRes.Print;
end;

procedure TFRepDocSinFechRes.ppDocSinFResPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
