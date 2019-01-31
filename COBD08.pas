unit COBD08;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COBD08
// Formulario                    : FAnulaChequeEdit
// Fecha de Creación             :
// Autor                         : Sistemas
// Objetivo                      : Gestiones de Cobranzas realizadas

// Actualizaciones               :
// HPC_201310_COB    07/10/2013  : Gestiones de Cobranzas realizadas
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db;

type
  TfGesCob = class(TForm)
    dtgGesCob: TwwDBGrid;
    BitSalir: TBitBtn;
// Inicio: SPP_201312_COB    07/10/2013  : Gestiones de Cobranzas realizadas
    btnaexcel: TBitBtn;
// Fin: SPP_201312_COB    07/10/2013  : Gestiones de Cobranzas realizadas
    procedure BitSalirClick(Sender: TObject);
    procedure dtgGesCobDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgGesCobDblClick(Sender: TObject);
// Inicio: SPP_201312_COB    07/10/2013  : Gestiones de Cobranzas realizadas
    procedure btnaexcelClick(Sender: TObject);
// Fin: SPP_201312_COB    07/10/2013  : Gestiones de Cobranzas realizadas
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGesCob: TfGesCob;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfGesCob.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfGesCob.dtgGesCobDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   dtgGesCob.Canvas.Font.Color := clNavy;
   dtgGesCob.DefaultDrawDataCell(rect,Field,State);
end;

procedure TfGesCob.dtgGesCobDblClick(Sender: TObject);
begin
MessageDlg(DM1.cdsSitReclamo.FieldByName('DETOBS').AsString, mtInformation,[mbOk], 0 );
end;


// Inicio: SPP_201312_COB    07/10/2013  : Gestiones de Cobranzas realizadas
procedure TfGesCob.btnaexcelClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   Try
     Screen.Cursor:= crHourGlass;
     DM1.ExportaGridExcel(dtgGesCob,'Gestiones de Cobranza');
     Screen.Cursor:= crDefault;
   except
   	on Ex: Exception do
	 	Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
   end;
   Screen.Cursor := crDefault;
end;
// Fin: SPP_201312_COB    07/10/2013  : Gestiones de Cobranzas realizadas

end.
