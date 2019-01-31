unit COB302;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Buttons, Wwdbigrd,
  Grids, Wwdbgrid, wwdbdatetimepicker, ComCtrls, wwriched, ExtCtrls,
  DBCtrls, wwdblook, Mask, wwdbedit, Wwdotdot, ppBands, ppCtrls, jpeg,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TFLiquidRep = class(TForm)
    pnlCabecera: TPanel;
    pcDatos: TPageControl;
    TabSheet1: TTabSheet;
    wwDBGrid3: TwwDBGrid;
    wwIButton3: TwwIButton;
    fcShapeBtn3: TfcShapeBtn;
    bbtnCancel: TfcShapeBtn;
    fcShapeBtn4: TfcShapeBtn;
    ppRepLiqRep: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppImage2: TppImage;
    ppLabel25: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppImage1: TppImage;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine9: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel62: TppLabel;
    ppLabel67: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    TabSheet4: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel4: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    dblcFormaRepr: TwwDBLookupCombo;
    edtFormaRepr: TEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    dbeNombres: TwwDBEdit;
    dbeSueldo: TwwDBEdit;
    dbeComision: TwwDBEdit;
    bbtnClear: TfcShapeBtn;
    bbtnSigue: TfcShapeBtn;
    wwDBComboDlg1: TwwDBComboDlg;
    pnlDocumentos: TPanel;
    StaticText1: TStaticText;
    Panel3: TPanel;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    dblcFPago: TwwDBLookupCombo;
    edtFPago: TEdit;
    dbdtpChqFecha: TwwDBDateTimePicker;
    dblcChqMoneda: TwwDBLookupCombo;
    edtChqMoneda: TEdit;
    dbeChqMonto: TwwDBEdit;
    dbeCPagoConcepto: TwwDBEdit;
    procedure fcShapeBtn4Click(Sender: TObject);
    procedure bbtnCancelClick(Sender: TObject);
    procedure wwIButton3Click(Sender: TObject);
    procedure fcShapeBtn9Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLiquidRep: TFLiquidRep;

implementation

{$R *.DFM}

procedure TFLiquidRep.fcShapeBtn4Click(Sender: TObject);
begin
  ppRepLiqRep.Print;
end;

procedure TFLiquidRep.bbtnCancelClick(Sender: TObject);
begin
  self.close;
end;

procedure TFLiquidRep.wwIButton3Click(Sender: TObject);
begin
//  pnlGastos.visible:=true;
end;

procedure TFLiquidRep.fcShapeBtn9Click(Sender: TObject);
begin
//  pnlGastos.visible:=false;
end;

procedure TFLiquidRep.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

end.
