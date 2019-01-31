unit COB607;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB607
// Formulario                    : FEstadisticaFSC
// Fecha de Creación             : 28/11/2013
// Autor                         : Sistemas
// Objetivo                      : Grafico de Barras del FSC

// Actualizaciones               :
// HPC_201312_COB    28/11/2013  : Grafico de Barras del FSC
// SPP_201314_COB                : Se realiza el pase a producción a partir del documento HPC_201312_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, TeeProcs, Chart, DbChart, StdCtrls, Buttons,
  ExtCtrls;

type
  TFGrafFSC = class(TForm)
    Panel1: TPanel;
    btnSalir: TBitBtn;
    dbChartHist: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    Procedure pintarChart();
    Procedure limpiarGrafico();
  public
    { Public declarations }
    sTitulo : String;
  end;

var
  FGrafFSC: TFGrafFSC;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFGrafFSC.FormActivate(Sender: TObject);
begin
   pintarChart();
end;

Procedure TFGrafFSC.limpiarGrafico();
Var
    i: integer;
Begin
    dbChartHist.Title.Text.Clear;
    (*
    For i := 0 To dbChartHist.SeriesCount - 1 Do
        dbChartHist.Series[0].Free; // limpia las series
    *)
End;



Procedure TFGrafFSC.pintarChart();
Var
    i: integer;
    i2: integer;
    sDesde: String;
    sHasta: String;
Begin
    limpiarGrafico();

    dbChartHist.Title.Text.Add('Saldos FSC Aplicados vs Cobrandos');
    dbChartHist.Title.Text.Add(sTitulo);

    dbChartHist.Series[0].DataSource := DM1.cdsAcuerdos;
    dbChartHist.Series[0].XLabelsSource := 'COBANO'; // EJE X
    dbChartHist.Series[0].YValueS.ValueSource := 'ENV_IMP'; // EJE Y
    dbChartHist.Series[0].valueFormat := '##,###,###';

    dbChartHist.Series[1].DataSource := DM1.cdsAcuerdos;
    dbChartHist.Series[1].XLabelsSource := 'COBANO'; // EJE X
    dbChartHist.Series[1].YValueS.ValueSource := 'COB_IMP'; // EJE Y
    dbChartHist.Series[1].valueFormat := '##,###,###';

{    dbChartHist.Series[2].DataSource := DM1.cdsQry1;
    dbChartHist.Series[2].XLabelsSource := 'PERIODO'; // EJE X
    dbChartHist.Series[2].YValueS.ValueSource := 'DEF'; // EJE Y
    dbChartHist.Series[2].valueFormat := '##,###,###';

    dbChartHist.Series[3].DataSource := DM1.cdsQry1;
    dbChartHist.Series[3].XLabelsSource := 'PERIODO'; // EJE X
    dbChartHist.Series[3].YValueS.ValueSource := 'DUD'; // EJE Y
    dbChartHist.Series[3].valueFormat := '##,###,###';

    dbChartHist.Series[4].DataSource := DM1.cdsQry1;
    dbChartHist.Series[4].XLabelsSource := 'PERIODO'; // EJE X
    dbChartHist.Series[4].YValueS.ValueSource := 'PER'; // EJE Y
    dbChartHist.Series[4].valueFormat := '##,###,###';

    dbChartHist.Series[5].DataSource := DM1.cdsQry1;
    dbChartHist.Series[5].XLabelsSource := 'PERIODO'; // EJE X
    dbChartHist.Series[5].YValueS.ValueSource := 'CAN'; // EJE Y
    dbChartHist.Series[5].valueFormat := '##,###,###';
}
    dbChartHist.RefreshData;
End;


end.

