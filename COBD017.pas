unit COBD017;
// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COBD016
// Formulario                    : fCronogramaPrev
// Fecha de Creación             : 28/12/2016
// Autor                         : Ricardo Medina Zavaleta.
// Objetivo                      : Cronograma Previo para Pagos Adelantados
// Actualizaciones               :

//Inicio HPC_201614_COB
//Cronograma Previo para Pagos Adelantados
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DBGrids;

type
  TfCronogramaPrev = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    DBGPREVIO: TwwDBGrid;
    dtgData: TDBGrid;
    btnexpotar: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnexpotarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCronogramaPrev: TfCronogramaPrev;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfCronogramaPrev.BitSalirClick(Sender: TObject);
begin
CLOSE;
end;

procedure TfCronogramaPrev.FormShow(Sender: TObject);
VAR xAMORT,xINTERES,xGASTOS,xSEGDES : double;
begin

 DM1.CdsTZona.First;
 xAMORT   := 0;
 xINTERES := 0;
 xGASTOS  := 0;
 xSEGDES  := 0;
 DBGPREVIO.Selected.Add('ITECUO'#9'2'#9'N°Cuota');
 DBGPREVIO.Selected.Add('FECVEN'#9'10'#9'Fecha~Vencimiento');
 DBGPREVIO.Selected.Add('AMORT'#9'13'#9'Capital');
 DBGPREVIO.Selected.Add('INTERES'#9'13'#9'Interes');
 DBGPREVIO.Selected.Add('GASTOS'#9'13'#9'Flat');
 DBGPREVIO.Selected.Add('SEGDES'#9'13'#9'Desgravamen');
 DBGPREVIO.Selected.Add('CUOTA'#9'13'#9'Importe~Cuota');
 DBGPREVIO.Applyselected;
 DBGPREVIO.DataSource := DM1.dsTZona;

 while not Dm1.cdsTZona.Eof do
 Begin
    xAMORT   := xAMORT+Dm1.cdsTZona.FieldByname('AMORT').Asfloat;
    xINTERES := xINTERES+Dm1.cdsTZona.FieldByname('INTERES').Asfloat;
    xGASTOS  := xGASTOS+Dm1.cdsTZona.FieldByname('GASTOS').Asfloat;
    xSEGDES  := xSEGDES+Dm1.cdsTZona.FieldByname('SEGDES').Asfloat;
  Dm1.cdsTZona.Next
 End;

 DBGPREVIO.ColumnByName('AMORT').FooterValue   := FloatToStrF(xamort, ffNumber,10,2);;
 DBGPREVIO.ColumnByName('INTERES').FooterValue := FloatToStrF(xinteres, ffNumber,10,2);;
 DBGPREVIO.ColumnByName('GASTOS').FooterValue  := FloatToStrF(xgastos, ffNumber,10,2);;
 DBGPREVIO.ColumnByName('SEGDES').FooterValue  := FloatToStrF(xsegdes, ffNumber,10,2);;
 DM1.CdsTZona.First;
 DM1.CdsTZona.Last;
 DBGPREVIO.RefreshDisplay;
end;

procedure TfCronogramaPrev.btnexpotarClick(Sender: TObject);
begin

  Screen.Cursor := crHourGlass;
  DM1.HojaExcel('CRONOGRAMA PREVIO',DM1.dsTZona, dtgData);
  Screen.Cursor := crDefault;
end;

end.
//Final HPC_201614_COB
