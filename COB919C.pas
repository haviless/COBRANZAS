unit COB919C;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB919C
// Formulario           : FPie
// Fecha de Creación    : 30/12/2010
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Mostrar un PIE
// Actualizaciones      :
// HPP_201006_COB       : Creación de forma
// HPC_201309_COB       : Cambiar Color de fondo
// SPP_201311_COB       : Se realiza el pase a producción a partir del HPC_201309_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, Series, Buttons;

type
  TFPie = class(TForm)
    Chart1: TChart;
    Series1: TPieSeries;
    btnSalir: TBitBtn;
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPie: TFPie;

implementation

{$R *.dfm}

procedure TFPie.btnSalirClick(Sender: TObject);
begin
   Close;
end;

end.
