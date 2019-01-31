unit COB522;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, ExtCtrls, wwdbdatetimepicker, StdCtrls, Mask,
  wwdbedit, wwdblook, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn, ppViewr;

type
  TFRepResDevCuotEfec = class(TForm)
    pnlFondo2: TPanel;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    pnlFondo1: TPanel;
    wwDBLookupComboDlg4: TwwDBLookupComboDlg;
    wwDBEdit2: TwwDBEdit;
    GroupBox1: TGroupBox;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    RadioGroup1: TRadioGroup;
    ppRepDevCuotasEfec: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel12: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppImage2: TppImage;
    ppLabel31: TppLabel;
    ppLine8: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel1: TppLabel;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ppRepResDevCuotEfecPreviewFormCreate(Sender: TObject);
    procedure ppRepDevCuotasEfecPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepResDevCuotEfec: TFRepResDevCuotEfec;

implementation

{$R *.DFM}

procedure TFRepResDevCuotEfec.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepResDevCuotEfec.fcShapeBtn1Click(Sender: TObject);
begin
ppRepDevCuotasEfec.Print;
end;

procedure TFRepResDevCuotEfec.ppRepResDevCuotEfecPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

procedure TFRepResDevCuotEfec.ppRepDevCuotasEfecPreviewFormCreate(Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

end.
