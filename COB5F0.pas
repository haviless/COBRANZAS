unit COB5F0;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, ppVar, jpeg, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, ExtCtrls, wwdbedit, wwdblook, Wwdbdlg,
  StdCtrls, Mask, Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, ppViewr;

type
  TFRepFondoSolidario = class(TForm)
    pnlCabecera: TPanel;
    FCuotasNoDesc: TLabel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    zzzzz: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    wwDBEdit39: TwwDBEdit;
    wwDBEdit43: TwwDBEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    RadioGroup1: TRadioGroup;
    wwDBLookupComboDlg4: TwwDBLookupComboDlg;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    ppRepContingencias: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel7: TppLabel;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel14: TppLabel;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppRepContingenciasPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepFondoSolidario: TFRepFondoSolidario;

implementation

{$R *.DFM}

procedure TFRepFondoSolidario.fcShapeBtn1Click(Sender: TObject);
begin
ppRepContingencias.Print;
end;

procedure TFRepFondoSolidario.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepFondoSolidario.ppRepContingenciasPreviewFormCreate(
  Sender: TObject);
begin
//, ppViewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
