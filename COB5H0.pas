unit COB5H0;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, fcButton, fcImgBtn, fcShapeBtn, StdCtrls,
  Mask, wwdbedit, Wwdbspin, ExtCtrls, ppViewr;

type
  TFRepDocentesActivos = class(TForm)
    Panel1: TPanel;
    zzzzz: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    ppDocentesActivos: TppReport;
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
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppDocentesActivosPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepDocentesActivos: TFRepDocentesActivos;

implementation

{$R *.DFM}

procedure TFRepDocentesActivos.fcShapeBtn1Click(Sender: TObject);
begin
ppDocentesActivos.Print;
end;

procedure TFRepDocentesActivos.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepDocentesActivos.ppDocentesActivosPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
