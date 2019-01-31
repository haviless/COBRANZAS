unit COB203;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, ComCtrls, wwriched,
  wwdbdatetimepicker, Wwdbspin, ExtCtrls, DBCtrls, fcButton, fcImgBtn,
  fcShapeBtn, Mask, wwdbedit, wwdblook, Wwdbdlg;

type
  TFClientes = class(TForm)
    pnlCabecera: TPanel;
    pcDatos: TPageControl;
    tbDatosGenerales: TTabSheet;
    tbDatosLaborales: TTabSheet;
    Panel6: TPanel;
    Label7: TLabel;
    dblcZip: TwwDBLookupCombo;
    dbeZip: TwwDBEdit;
    wwDBLookupCombo11: TwwDBLookupCombo;
    wwDBEdit25: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBLookupCombo16: TwwDBLookupCombo;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBEdit11: TwwDBEdit;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    wwDBSpinEdit4: TwwDBSpinEdit;
    wwDBSpinEdit5: TwwDBSpinEdit;
    wwDBEdit26: TwwDBEdit;
    tbDatosFamiliares: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    pnlFamiliares: TPanel;
    StaticText3: TStaticText;
    Panel7: TPanel;
    fcShapeBtn5: TfcShapeBtn;
    fcShapeBtn6: TfcShapeBtn;
    dblcVendVisit: TwwDBLookupCombo;
    wwDBEdit15: TwwDBEdit;
    wwDBDateTimePicker7: TwwDBDateTimePicker;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBEdit16: TwwDBEdit;
    wwDBLookupCombo8: TwwDBLookupCombo;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    wwDBEdit48: TwwDBEdit;
    wwDBEdit49: TwwDBEdit;
    wwDBEdit50: TwwDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    TabSheet1: TTabSheet;
    wwDBGrid3: TwwDBGrid;
    wwIButton3: TwwIButton;
    pnlCreditos: TPanel;
    StaticText4: TStaticText;
    Panel9: TPanel;
    fcShapeBtn8: TfcShapeBtn;
    fcShapeBtn9: TfcShapeBtn;
    wwDBEdit35: TwwDBEdit;
    wwDBDateTimePicker9: TwwDBDateTimePicker;
    wwDBEdit36: TwwDBEdit;
    wwDBLookupCombo13: TwwDBLookupCombo;
    wwDBEdit37: TwwDBEdit;
    wwDBEdit38: TwwDBEdit;
    wwDBEdit39: TwwDBEdit;
    Panel1: TPanel;
    dbeNomPost: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    dbeVend: TwwDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    bbtnBorra: TfcShapeBtn;
    bbtnOK: TfcShapeBtn;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBLookupCombo1: TwwDBLookupCombo;
    dbeNomPri: TwwDBEdit;
    dbeLugProc: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit3: TwwDBEdit;
    dblcZonVta: TwwDBLookupCombo;
    dbeZonVta: TwwDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBEdit28: TwwDBEdit;
    Panel2: TPanel;
    wwDBEdit30: TwwDBEdit;
    wwDBRichEdit2: TwwDBRichEdit;
    GroupBox1: TGroupBox;
    wwDBEdit47: TwwDBEdit;
    wwDBEdit51: TwwDBEdit;
    Label11: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label70: TLabel;
    Label18: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label69: TLabel;
    Label62: TLabel;
    wwDBEdit22: TwwDBEdit;
    wwDBEdit23: TwwDBEdit;
    DBCheckBox1: TDBCheckBox;
    wwDBEdit24: TwwDBEdit;
    wwDBEdit67: TwwDBEdit;
    dblcTipVia: TwwDBLookupCombo;
    dbeNomVia: TwwDBEdit;
    dblcdZip: TwwDBLookupComboDlg;
    dblcdCiud: TwwDBLookupComboDlg;
    dblcTipZona: TwwDBLookupCombo;
    dbeNomZona: TwwDBEdit;
    dblcdUbigeo: TwwDBLookupComboDlg;
    dbeTrabRefDom: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit27: TwwDBEdit;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBLookupCombo14: TwwDBLookupCombo;
    wwDBEdit29: TwwDBEdit;
    Panel4: TPanel;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit31: TwwDBEdit;
    wwDBLookupCombo12: TwwDBLookupCombo;
    wwDBEdit32: TwwDBEdit;
    wwDBEdit33: TwwDBEdit;
    wwDBSpinEdit3: TwwDBSpinEdit;
    wwDBEdit34: TwwDBEdit;
    procedure bbtnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwIButton1Click(Sender: TObject);
    procedure fcShapeBtn6Click(Sender: TObject);
    procedure wwIButton3Click(Sender: TObject);
    procedure fcShapeBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

{$R *.DFM}

procedure TFClientes.bbtnOKClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFClientes.FormActivate(Sender: TObject);
begin
  pcDatos.ActivePageIndex:=0;
end;

procedure TFClientes.wwIButton1Click(Sender: TObject);
begin
pnlFamiliares.Visible:=True;
end;

procedure TFClientes.fcShapeBtn6Click(Sender: TObject);
begin
pnlFamiliares.Visible:=False;
end;

procedure TFClientes.wwIButton3Click(Sender: TObject);
begin
pnlCreditos.Visible:=True;
end;

procedure TFClientes.fcShapeBtn9Click(Sender: TObject);
begin
pnlCreditos.Visible:=False;
end;

end.
