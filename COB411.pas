unit COB411;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Wwdbcomb, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid,
  ComCtrls, ExtCtrls, Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, Wwdotdot,
  Mask, wwdbedit, wwdblook;

type
  TFPlantilla = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    dblcFormaRep: TwwDBLookupCombo;
    dbeApePat: TwwDBEdit;
    wwDBComboDlg1: TwwDBComboDlg;
    pcDatos: TPageControl;
    TabSheet3: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    wwIButton1: TwwIButton;
    pnlActualizacion: TPanel;
    StaticText2: TStaticText;
    Panel4: TPanel;
    fcShapeBtn5: TfcShapeBtn;
    fcShapeBtn6: TfcShapeBtn;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBSpinEdit3: TwwDBSpinEdit;
    wwDBSpinEdit4: TwwDBSpinEdit;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    wwDBComboBox3: TwwDBComboBox;
    wwDBComboBox4: TwwDBComboBox;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    DBCheckBox4: TDBCheckBox;
    wwDBComboBox5: TwwDBComboBox;
    fcShapeBtn3: TfcShapeBtn;
    bbtnCancel: TfcShapeBtn;
    procedure bbtnCancelClick(Sender: TObject);
    procedure wwIButton1Click(Sender: TObject);
    procedure fcShapeBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPlantilla: TFPlantilla;

implementation

{$R *.DFM}

procedure TFPlantilla.bbtnCancelClick(Sender: TObject);
begin
Self.Close;
end;

procedure TFPlantilla.wwIButton1Click(Sender: TObject);
begin
pnlActualizacion.Visible:=True;
end;

procedure TFPlantilla.fcShapeBtn6Click(Sender: TObject);
begin
pnlActualizacion.Visible:=False;
end;

end.
