unit COB550;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache,
  ppTypes, ppComm, ppRelatv, ppProd, ppReport, fcButton, fcImgBtn, fcShapeBtn,
  Wwdotdot, Wwdbspin, StdCtrls, ExtCtrls, Mask, wwdbedit, Wwdbdlg, ppViewr;

type
  TFRepPorCobrar = class(TForm)
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
    ppRepPorCobrar: TppReport;
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
    ppLabel40: TppLabel;
    ppDBText1: TppDBText;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel46: TppLabel;
    ppLabel1: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel51: TppLabel;
    ppDBCalc1: TppDBCalc;
    wwDBLookupCombo19: TwwDBLookupCombo;
    wwDBEdit3: TwwDBEdit;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ppRepPorCobrarPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepPorCobrar: TFRepPorCobrar;

implementation

{$R *.DFM}

procedure TFRepPorCobrar.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepPorCobrar.fcShapeBtn1Click(Sender: TObject);
begin
ppRepPorCobrar.Print;
end;

procedure TFRepPorCobrar.ppRepPorCobrarPreviewFormCreate(Sender: TObject);
begin
//, ppViewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
