unit COB5I3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, fcButton, fcImgBtn, fcShapeBtn, StdCtrls,
  Mask, wwdbedit, Wwdbspin, ExtCtrls, ppViewr;

type
  TFRepCtaConResolucion = class(TForm)
    Panel1: TPanel;
    zzzzz: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    ppResCtaIndivConResol: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
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
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppResCtaIndivConResolPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepCtaConResolucion: TFRepCtaConResolucion;

implementation

{$R *.DFM}

procedure TFRepCtaConResolucion.fcShapeBtn1Click(Sender: TObject);
begin
ppResCtaIndivConResol.Print;
end;

procedure TFRepCtaConResolucion.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepCtaConResolucion.ppResCtaIndivConResolPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
