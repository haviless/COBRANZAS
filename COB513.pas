unit COB513;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, StdCtrls, Mask, wwdbedit, Wwdbspin, fcButton,
  fcImgBtn, fcShapeBtn, ExtCtrls, ppviewr;

type
  TFRepCobBcoNacion = class(TForm)
    pnlCabecera: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    zzzzz: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit2: TwwDBSpinEdit;
    ppRepCobBcoNacion: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppImage1: TppImage;
    ppLabel26: TppLabel;
    ppLine4: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLabel10: TppLabel;
    ppLabel28: TppLabel;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppLabel21: TppLabel;
    ppLabel20: TppLabel;
    ppLabel19: TppLabel;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLine6: TppLine;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ppRepCobBcoNacionPreviewFormCreate(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepCobBcoNacion: TFRepCobBcoNacion;

implementation

{$R *.DFM}

procedure TFRepCobBcoNacion.fcShapeBtn1Click(Sender: TObject);
begin
ppRepCobBcoNacion.Print;
end;

procedure TFRepCobBcoNacion.ppRepCobBcoNacionPreviewFormCreate(
  Sender: TObject);
begin
//ppviewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

procedure TFRepCobBcoNacion.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

end.
