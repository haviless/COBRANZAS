unit COB942;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DBGrids;

type
  TfDetAsoc = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    dtgResGes: TwwDBGrid;
    dtgData: TDBGrid;
    BitExporta: TBitBtn;
    lblDescripc: TLabel;
    lblDescrip: TLabel;
    lblDescripx: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetAsoc: TfDetAsoc;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDetAsoc.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfDetAsoc.BitExportaClick(Sender: TObject);
begin
	Screen.Cursor:= crHourGlass;
	try
  DM1.HojaExcel(lblDescripx.Caption,DM1.dsDetRegGlob, dtgData);
	except
		on Ex: Exception do
			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	end;
	Screen.Cursor:= crDefault;

end;

procedure TfDetAsoc.FormActivate(Sender: TObject);
var xCount:Integer;
    xCremtoCob:Currency;

begin
    DM1.cdsDetRegGlob.First;  xCount:=0;  xCremtoCob:=0;
    While Not DM1.cdsDetRegGlob.Eof Do
    Begin
        xCount:=xCount + DM1.cdsDetRegGlob.FieldByName('MOVIMIENTOS').AsInteger;
        xCremtoCob:=xCremtoCob + DM1.cdsDetRegGlob.FieldByName('CREMTOCOB').AsCurrency;
        DM1.cdsDetRegGlob.Next;
    End;
    dtgResGes.ColumnByName('USUARIO').FooterValue :='Totales : ';
    dtgResGes.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtoCob,ffNumber, 15, 2);
    dtgResGes.ColumnByName('MOVIMIENTOS').FooterValue := FloatToStrF(xCount,ffNumber, 10, 0);

end;

end.
