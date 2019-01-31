unit COB5E1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, StdCtrls, Mask, wwdbedit, Wwdbspin, fcButton,
  fcImgBtn, fcShapeBtn, ExtCtrls, ppViewr;

type
  TFRepEstCobranzas = class(TForm)
    pnlFondo0002: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    pnlFondo001: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBSpinEdit1: TwwDBSpinEdit;
    ppRepEstCobranzas: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppImage1: TppImage;
    ppLabel26: TppLabel;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLabel10: TppLabel;
    ppLabel28: TppLabel;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppLabel19: TppLabel;
    ppLabel27: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLabel12: TppLabel;
    ppLabel6: TppLabel;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppRepEstCobranzasPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepEstCobranzas: TFRepEstCobranzas;

implementation

{$R *.DFM}

procedure TFRepEstCobranzas.fcShapeBtn1Click(Sender: TObject);
begin
ppRepEstCobranzas.Print;
end;

procedure TFRepEstCobranzas.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepEstCobranzas.ppRepEstCobranzasPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
