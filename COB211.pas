unit COB211;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbspin, StdCtrls, ExtCtrls, DBCtrls, wwdbdatetimepicker, fcButton,
  fcImgBtn, fcShapeBtn, Buttons, Wwdbigrd, Grids, Wwdbgrid, ComCtrls, Mask,
  wwdbedit, wwdblook, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppStrtch, ppRegion, ppVar, jpeg, ppPrnabl, ppBands, ppCache;

type
  TFCtaCte = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    dblcUrb: TwwDBLookupCombo;
    dbeUrb: TwwDBEdit;
    dbeNomPost: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBLookupCombo19: TwwDBLookupCombo;
    wwDBEdit39: TwwDBEdit;
    wwDBLookupCombo20: TwwDBLookupCombo;
    wwDBEdit44: TwwDBEdit;
    Panel10: TPanel;
    pcDatos: TPageControl;
    tbDatosLaborales: TTabSheet;
    dbgDatosLaborales: TwwDBGrid;
    dbgDatosLaboralesButton: TwwIButton;
    tbDatosFamiliares: TTabSheet;
    tbEstadoCtaAportes: TTabSheet;
    dbeCodigoAsociado: TwwDBEdit;
    wwDBLookupCombo17: TwwDBLookupCombo;
    wwDBEdit40: TwwDBEdit;
    wwDBEdit41: TwwDBEdit;
    wwDBLookupCombo18: TwwDBLookupCombo;
    wwDBEdit42: TwwDBEdit;
    wwDBEdit43: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit33: TwwDBEdit;
    wwDBLookupCombo15: TwwDBLookupCombo;
    wwDBEdit31: TwwDBEdit;
    wwDBEdit45: TwwDBEdit;
    pnlOperaciones: TPanel;
    StaticText1: TStaticText;
    Panel4: TPanel;
    fcShapeBtn3: TfcShapeBtn;
    fcShapeBtn10: TfcShapeBtn;
    wwDBEdit3: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit9: TwwDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    pnlCuotasxPagar: TPanel;
    StaticText3: TStaticText;
    Panel7: TPanel;
    fcShapeBtn5: TfcShapeBtn;
    fcShapeBtn6: TfcShapeBtn;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit11: TwwDBEdit;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBEdit10: TwwDBEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    pnlCuotasPagadas: TPanel;
    StaticText2: TStaticText;
    Panel5: TPanel;
    fcShapeBtn4: TfcShapeBtn;
    fcShapeBtn7: TfcShapeBtn;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBEdit15: TwwDBEdit;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    wwDBDateTimePicker6: TwwDBDateTimePicker;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    wwDBGrid2: TwwDBGrid;
    wwIButton2: TwwIButton;
    fcShapeBtn8: TfcShapeBtn;
    ppRepEstadoCta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel3: TppLabel;
    pplblFInic: TppLabel;
    ppLabel5: TppLabel;
    pplblFFin: TppLabel;
    ppLabel8: TppLabel;
    pplblEstado: TppLabel;
    pplblTipo: TppLabel;
    ppLabel9: TppLabel;
    ppImage2: TppImage;
    ppLabel7: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel2: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppRegion1: TppRegion;
    ppLabel35: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine9: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppRegion2: TppRegion;
    ppLabel44: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine17: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine8: TppLine;
    ppLine6: TppLine;
    procedure FormActivate(Sender: TObject);
    procedure dbgDatosLaboralesButtonClick(Sender: TObject);
    procedure fcShapeBtn10Click(Sender: TObject);
    procedure wwIButton1Click(Sender: TObject);
    procedure fcShapeBtn6Click(Sender: TObject);
    procedure wwIButton2Click(Sender: TObject);
    procedure fcShapeBtn7Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCtaCte: TFCtaCte;

implementation

{$R *.DFM}

procedure TFCtaCte.FormActivate(Sender: TObject);
begin
 pcDatos.ActivePageIndex:=0;
end;

procedure TFCtaCte.dbgDatosLaboralesButtonClick(Sender: TObject);
begin
  pnlOperaciones.Visible:=true;
end;

procedure TFCtaCte.fcShapeBtn10Click(Sender: TObject);
begin
  pnlOperaciones.Visible:=false;

end;

procedure TFCtaCte.wwIButton1Click(Sender: TObject);
begin
  pnlCuotasxPagar.Visible:=true;
end;

procedure TFCtaCte.fcShapeBtn6Click(Sender: TObject);
begin
  pnlCuotasxPagar.Visible:=false;

end;

procedure TFCtaCte.wwIButton2Click(Sender: TObject);
begin
  pnlCuotasPagadas.Visible:=true;
end;

procedure TFCtaCte.fcShapeBtn7Click(Sender: TObject);
begin
  pnlCuotasPagadas.Visible:=false;
end;

procedure TFCtaCte.fcShapeBtn2Click(Sender: TObject);
begin
  self.close;
end;

procedure TFCtaCte.fcShapeBtn8Click(Sender: TObject);
begin
  ppRepEstadoCta.Print;
end;

end.
