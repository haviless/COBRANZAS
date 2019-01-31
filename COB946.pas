unit COB946;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, DBGrids;

type
  TfSelGest = class(TForm)
    dtgSetGest: TwwDBGrid;
    BitSalir: TBitBtn;
    Panel3: TPanel;
    Shape3: TShape;
    txtDist: TEdit;
    Panel2: TPanel;
    Shape2: TShape;
    lblRegistros: TLabel;
    Edit1: TEdit;
    BitExporta: TBitBtn;
    dtgData: TDBGrid;
    procedure BitSalirClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelGest: TfSelGest;

implementation

uses COBDM1, COB944;

{$R *.dfm}

procedure TfSelGest.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfSelGest.BitExportaClick(Sender: TObject);
begin
	Screen.Cursor:= crHourGlass;
	try
  DM1.HojaExcel(Trim(fDistGestion.lblNomMes.Caption)+'-'+Trim(fDistGestion.dbsAnoIni.Text)+'-'+Trim(fDistGestion.txtDist.Text), DM1.dsProvCta, dtgData);
	except
		on Ex: Exception do
			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	end;
	Screen.Cursor:= crDefault;

end;

end.
