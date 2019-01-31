unit COB512;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, Wwdbspin, StdCtrls, ExtCtrls, Mask, wwdbedit,
  wwdblook, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn, ppViewr;

type
  TFRepEfCobPrePla = class(TForm)
    pnlCabecera: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    zzzzz: TPanel;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBEdit39: TwwDBEdit;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    ppRepEfCobPrePla: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
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
    ppImage1: TppImage;
    ppLabel26: TppLabel;
    ppLabel11: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel1: TppLabel;
    ppLabel8: TppLabel;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape4: TppShape;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel36: TppLabel;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppRepEfCobPrePlaPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepEfCobPrePla: TFRepEfCobPrePla;

implementation

{$R *.DFM}

procedure TFRepEfCobPrePla.fcShapeBtn1Click(Sender: TObject);
begin
ppRepEfCobPrePla.Print;
end;

procedure TFRepEfCobPrePla.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepEfCobPrePla.ppRepEfCobPrePlaPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
