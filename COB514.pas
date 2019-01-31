unit COB514;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, jpeg, ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, StdCtrls, DBCtrls, ExtCtrls, ComCtrls,
  wwriched, wwdbdatetimepicker, Wwdbspin, wwdblook, Mask, wwdbedit,
  fcButton, fcImgBtn, fcShapeBtn, Wwdotdot, Wwdbdlg, ppViewr;

type
  TFRepCuoPagDepBco = class(TForm)
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
    ppRepCuoPagDepBco: TppReport;
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
    ppLabel14: TppLabel;
    ppImage1: TppImage;
    ppLabel26: TppLabel;
    ppLabel11: TppLabel;
    ppLabel28: TppLabel;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLabel1: TppLabel;
    ppLabel7: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppLine8: TppLine;
    ppLabel15: TppLabel;
    ppLabel29: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine11: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppRepCuoPagDepBcoPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepCuoPagDepBco: TFRepCuoPagDepBco;

implementation

{$R *.DFM}

procedure TFRepCuoPagDepBco.fcShapeBtn1Click(Sender: TObject);
begin
ppRepCuoPagDepBco.Print;
end;

procedure TFRepCuoPagDepBco.fcShapeBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepCuoPagDepBco.ppRepCuoPagDepBcoPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
  TppReport(Sender).PreviewForm.WindowState:=Wsmaximized;
  TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
