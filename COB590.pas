unit COB590;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, Wwdbspin, StdCtrls, wwdblook, ExtCtrls, Mask,
  wwdbedit, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn, ppViewr;

type
  TFRepInconsistencias = class(TForm)
    pnlCabecera: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    zzzzz: TPanel;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    wwDBEdit39: TwwDBEdit;
    wwDBEdit43: TwwDBEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    RadioGroup1: TRadioGroup;
    wwDBLookupComboDlg4: TwwDBLookupComboDlg;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBLookupCombo19: TwwDBLookupCombo;
    wwDBEdit3: TwwDBEdit;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    ppRepInconsistencias: TppReport;
    ppTitleBand1: TppTitleBand;
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
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel31: TppLabel;
    ppDBText8: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel36: TppLabel;
    ppDBText13: TppDBText;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppRepInconsistenciasPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepInconsistencias: TFRepInconsistencias;

implementation

{$R *.DFM}

procedure TFRepInconsistencias.fcShapeBtn1Click(Sender: TObject);
begin
ppRepInconsistencias.Print;
end;

procedure TFRepInconsistencias.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepInconsistencias.ppRepInconsistenciasPreviewFormCreate(
  Sender: TObject);
begin
//, ppViewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
