unit COB560;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, fcButton, fcImgBtn, fcShapeBtn, Wwdotdot,
  Wwdbspin, StdCtrls, ExtCtrls, Mask, wwdbedit, wwdblook, Wwdbdlg, ppViewr;

type
  TFRepSaldos = class(TForm)
    Panel1: TPanel;
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
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBComboDlg2: TwwDBComboDlg;
    dbeApePat: TwwDBEdit;
    dbeApeMat: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    ppRepSaldos: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppImage3: TppImage;
    ppLabel35: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel39: TppLabel;
    ppDBText8: TppDBText;
    ppLabel40: TppLabel;
    ppDBText1: TppDBText;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel1: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel51: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppRepSaldosPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepSaldos: TFRepSaldos;

implementation

{$R *.DFM}

procedure TFRepSaldos.fcShapeBtn1Click(Sender: TObject);
begin
ppRepSaldos.Print;
end;

procedure TFRepSaldos.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close
end;

procedure TFRepSaldos.ppRepSaldosPreviewFormCreate(Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
