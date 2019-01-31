unit COB517;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, StdCtrls, Mask, wwdbedit, Wwdbspin, fcButton,
  fcImgBtn, fcShapeBtn, ExtCtrls, ppviewr;

type
  TFRepCobEfectivo = class(TForm)
    pnlFondo0002: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    pnlFondo001: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit2: TwwDBSpinEdit;
    ppRepCobEfectivo: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppImage2: TppImage;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel29: TppLabel;
    ppDBText2: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine6: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine13: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine16: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppRepCobEfectivoPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepCobEfectivo: TFRepCobEfectivo;

implementation

{$R *.DFM}

procedure TFRepCobEfectivo.fcShapeBtn1Click(Sender: TObject);
begin
ppRepCobEfectivo.Print;
end;

procedure TFRepCobEfectivo.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepCobEfectivo.ppRepCobEfectivoPreviewFormCreate(
  Sender: TObject);
begin
//ppviewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
