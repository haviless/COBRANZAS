unit COB511;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, StdCtrls, Mask, wwdbedit, Wwdbspin, fcButton,
  fcImgBtn, fcShapeBtn, ExtCtrls, ppviewr;

type
  TFRepCobCargoTel = class(TForm)
    pnlFondo16: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    pnlFondo15: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    ppRepEfectividadCob: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel12: TppLabel;
    ppImage1: TppImage;
    ppLabel26: TppLabel;
    ppLabel29: TppLabel;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel36: TppLabel;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ppRepEfectividadCobPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepCobCargoTel: TFRepCobCargoTel;

implementation

{$R *.DFM}

procedure TFRepCobCargoTel.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepCobCargoTel.fcShapeBtn1Click(Sender: TObject);
begin
ppRepEfectividadCob.Print;
end;

procedure TFRepCobCargoTel.ppRepEfectividadCobPreviewFormCreate(
  Sender: TObject);
begin
//ppviewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
