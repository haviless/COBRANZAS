unit COB325;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB925
// Formulario           : FIngLoteAnu
// Fecha de Creación    : 16/07/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Consulta de Cuotas Anuladas de Ingreso en Lote
// Actualizaciones      :
// HPC_201308_COB       : 16/07/2013 - Consulta de Cuotas Anuladas de Ingreso en Lote
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, DB;

type
  TFIngLoteAnu = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    EdtRCOB: TEdit;
    EdtDETRCOB: TEdit;
    bbtnExcel: TBitBtn;
    BitSalir: TBitBtn;
    dbgData: TwwDBGrid;
    EdtUsuRCOB: TEdit;
    procedure bbtnExcelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIngLoteAnu: TFIngLoteAnu;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFIngLoteAnu.bbtnExcelClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If DM1.cdsCuotasAnu.RecordCount > 0 Then
   Begin
      Try
        Screen.Cursor:= crHourGlass;
        DM1.ExportaGridExcel(dbgData,'Resultados');
        Screen.Cursor:= crDefault;
    	except
    		on Ex: Exception do
		  	Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
    	end;
   End;
   Screen.Cursor := crDefault;
end;

procedure TFIngLoteAnu.FormActivate(Sender: TObject);
begin

  dbgData.Selected.Clear;
  dbgData.Selected.Add('ASOCODMOD'#9'11'#9'Codigo~Modular'#9#9);
  dbgData.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos y Nombres'#9#9);
  dbgData.Selected.Add('TRANSMTO'#9'10'#9'Monto'#9#9);
  dbgData.Selected.Add('USUANU'#9'10'#9'Usuario~Anula'#9#9);
  dbgData.Selected.Add('FECANU'#9'11'#9'Fecha~Anula'#9#9);
  dbgData.Selected.Add('OBSANU'#9'55'#9'Motivo Anulación'#9#9);
  dbgData.ApplySelected;

  TNumericField(DM1.cdsCuotasAnu.fieldbyname('TRANSMTO')).DisplayFormat :=  '###,###.#0';

  EdtRCOB.Text   :=DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
  EdtDETRCOB.Text:=DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
  EdtUsuRCOB.Text:=DM1.cdsCobxUse.FieldByName('USERCOBID').AsString;
end;

procedure TFIngLoteAnu.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFIngLoteAnu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TNumericField(DM1.cdsCuotasAnu.fieldbyname('TRANSMTO')).DisplayFormat :=  '';
  DM1.cdsCuotasAnu.Close;
end;

end.
