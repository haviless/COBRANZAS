unit COB935;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DBGrids;

type
  TfDatComple = class(TForm)
    GroupBox1: TGroupBox;
    BitExporta: TBitBtn;
    BitSalir: TBitBtn;
    dtgClfCarDet: TwwDBGrid;
    lblCalif: TLabel;
    dtgData: TDBGrid;
    procedure BitSalirClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDatComple: TfDatComple;

implementation

uses COBDM1, COB925;

{$R *.dfm}

procedure TfDatComple.BitSalirClick(Sender: TObject);
begin
 Close;
end;

procedure TfDatComple.BitExportaClick(Sender: TObject);
begin
	Screen.Cursor:= crHourGlass;
	try
  DM1.HojaExcel(Copy(Trim(DM1.cdsModelo.FieldByName('CFCDES').AsString),1,8)+'-'+DM1.DesMes(StrToInt(fGestCob.dbsMesIni.Text),'S')+'-'+Trim(fGestCob.dbsAnoIni.Text),DM1.dsUSES, dtgData);
	except
		on Ex: Exception do
			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	end;
	Screen.Cursor:= crDefault;

end;

end.
