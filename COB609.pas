unit COB609;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB609
// Formulario                    : FGraficoFSC
// Fecha de Creación             : 18/12/2013
// Autor                         : Sistemas
// Objetivo                      : Grafico de Cobranzas del FSC

// Actualizaciones               :
// HPC_201312_COB    18/12/2013  : Grafico de Cobranzas del FSC
// SPP_201314_COB                : Se realiza el pase a producción a partir del documento HPC_201312_COB
// HPC_201603_COB                : Se adiciona en el grafico las cobranzas al FSC por ONP
// HPC_201608_COB                : Se adiciona en el grafico las cobranzas al FSC por CXC
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TeEngine, Series, TeeProcs, Chart,
  DbChart, Grids, Wwdbigrd, Wwdbgrid;

type
  TFGraficoFSC = class(TForm)
    dbChartHist: TDBChart;
    Panel1: TPanel;
    btnSalir: TBitBtn;
    pnlFiltro: TPanel;
    rbTipo: TRadioGroup;
    cbEti: TCheckBox;
    Series2: TBarSeries;
    procedure FormActivate(Sender: TObject);
    procedure rbTipoClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure cbEtiClick(Sender: TObject);
  private
    { Private declarations }
    Procedure pintarChart();
    Procedure limpiarGrafico();
    Procedure pintarChart2();
    Procedure pintarChart3();
  public
    { Public declarations }
    sTipGraf : String;
    sAno : String;
    sMes : String;
  end;

var
  FGraficoFSC: TFGraficoFSC;

implementation

uses COBDM1;

{$R *.dfm}

Procedure TFGraficoFSC.limpiarGrafico();
Var
    i: integer;
Begin
    dbChartHist.Title.Text.Clear;
    (*
    For i := 0 To dbChartHist.SeriesCount - 1 Do
        dbChartHist.Series[0].Free; // limpia las series
    *)
End;



Procedure TFGraficoFSC.pintarChart();
Var
    i: integer;
    i2: integer;
    sDesde: String;
    sHasta: String;
Begin
    limpiarGrafico();

    dbChartHist.Title.Text.Add('COBRANZAS DEL F.S.C. DEL AÑO '+sAno);
    dbChartHist.BottomAxis.Title.Caption:='FORMAS DE PAGO';

    dbChartHist.Series[0].DataSource := DM1.cdsAcuerdos;
    dbChartHist.Series[0].XLabelsSource := 'FRMPAG'; // EJE X
    dbChartHist.Series[0].YValueS.ValueSource := 'DEVFSC'; // EJE Y
    dbChartHist.Series[0].valueFormat := '##,###,###';
    dbChartHist.RefreshData;
End;

Procedure TFGraficoFSC.pintarChart2();
Var
    i: integer;
    i2: integer;
    sDesde: String;
    sHasta: String;
    xSQL:String;
    bLabel : boolean;
Begin
//Inicio HPC_201608
//Inicio HPC_201603_COB - Asigna valores iniciales
//  xSQL:='SELECT 0 ORDEN, ''XXX'' FRMPAG, 0.00 REG, 0.00 BEN, 0.00 BAN, 0.00 PLA, 0.00 EFE, 0.00 CEF FROM DUAL ORDER BY ORDEN' ;
//  xSQL:='SELECT 0 ORDEN, ''XXX'' FRMPAG, 0.00 REG, 0.00 BEN, 0.00 BAN, 0.00 PLA, 0.00 EFE, 0.00 CEF,0.00 ONP FROM DUAL ORDER BY ORDEN' ;
    xSQL:='SELECT 0 ORDEN, ''XXX'' FRMPAG, 0.00 REG, 0.00 BEN, 0.00 BAN, 0.00 PLA, 0.00 EFE, 0.00 CEF,0.00 ONP,0.00 CXC FROM DUAL ORDER BY ORDEN' ;
//Final HPC_201603_COB
//Final HPC_201608
    DM1.cdsQry33.Close;
    DM1.cdsQry33.Datarequest(xSQL);
    DM1.cdsQry33.Open;
    DM1.cdsQry33.Delete;

    DM1.cdsUtilidades.First;
    begin
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=1;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='ENE';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('ENE').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=2;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='FEB';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('FEB').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=3;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='MAR';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('MAR').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=4;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='ABR';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('ABR').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=5;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='MAY';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('MAY').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=6;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='JUN';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('JUN').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=7;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='JUL';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('JUL').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=8;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='AGO';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('AGO').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=9;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='SET';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('SET').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=10;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='OCT';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('OCT').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=11;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='NOV';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('NOV').AsFloat;
          DM1.cdsQry33.Insert;
          DM1.cdsQry33.FieldByName('FRMPAG').AsInteger:=12;
          DM1.cdsQry33.FieldByName('FRMPAG').AsString :='DIC';
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat     :=DM1.cdsUtilidades.FieldByName('DIC').AsFloat;
          DM1.cdsQry33.Post;
        DM1.cdsUtilidades.Next;
    end;

    while not DM1.cdsUtilidades.Eof do
    begin
          DM1.cdsQry33.First;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('ENE').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('FEB').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('MAR').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('ABR').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('MAY').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('JUN').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('JUL').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('AGO').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('SET').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('OCT').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('NOV').AsFloat;
          DM1.cdsQry33.Next;
          DM1.cdsQry33.Edit;
          DM1.cdsQry33.FieldByName(DM1.cdsUtilidades.fieldByname('FRMPAG').AsString).AsFloat:=DM1.cdsUtilidades.FieldByName('DIC').AsFloat;
          DM1.cdsQry33.Post;
        DM1.cdsUtilidades.Next;
    end;

    limpiarGrafico();

    For i := 0 To dbChartHist.SeriesCount - 1 Do
        dbChartHist.Series[0].Free; // limpia las series

    if cbEti.Checked then
       bLabel:=True
    else
       bLabel:=False;

    dbChartHist.Title.Text.Add('COBRANZAS DEL F.S.C. DEL AÑO '+sAno);
    dbChartHist.AddSeries( TLineSeries.Create(Self) );
    dbChartHist.Series[0].DataSource := DM1.cdsQry33;
    dbChartHist.Series[0].Marks.Visible:=bLabel;
    dbChartHist.Series[0].Marks.Style:=smsValue;
    TLineSeries(dbChartHist.Series[0]).LinePen.Width := 3;
    TLineSeries(dbChartHist.Series[0]).SeriesColor:=clRed;
    dbChartHist.Series[0].Title:='BAN';
    dbChartHist.Series[0].XLabelsSource := 'FRMPAG'; // EJE X
    dbChartHist.Series[0].YValueS.ValueSource := 'BAN'; // EJE Y
    dbChartHist.Series[0].valueFormat := '##,###,###';

    dbChartHist.AddSeries( TLineSeries.Create(Self) );
    dbChartHist.Series[1].DataSource := DM1.cdsQry33;
    dbChartHist.Series[1].Marks.Visible:=bLabel;
    dbChartHist.Series[1].Marks.Style:=smsValue;
    TLineSeries(dbChartHist.Series[1]).LinePen.Width := 3;
    TLineSeries(dbChartHist.Series[1]).LinePen.Color:= clGreen;
    dbChartHist.Series[1].Title:='BEN';
    dbChartHist.Series[1].XLabelsSource := 'FRMPAG'; // EJE X
    dbChartHist.Series[1].YValueS.ValueSource := 'BEN'; // EJE Y
    dbChartHist.Series[1].valueFormat := '##,###,###';

    dbChartHist.AddSeries( TLineSeries.Create(Self) );
    dbChartHist.Series[2].DataSource := DM1.cdsQry33;
    dbChartHist.Series[2].Marks.Visible:=bLabel;
    dbChartHist.Series[2].Marks.Style:=smsValue;
    TLineSeries(dbChartHist.Series[2]).LinePen.Width := 3;
    TLineSeries(dbChartHist.Series[2]).LinePen.Color:= clYellow;
    dbChartHist.Series[2].Title:='EFE';
    dbChartHist.Series[2].XLabelsSource := 'FRMPAG'; // EJE X
    dbChartHist.Series[2].YValueS.ValueSource := 'EFE'; // EJE Y
    dbChartHist.Series[2].valueFormat := '##,###,###';

    dbChartHist.AddSeries( TLineSeries.Create(Self) );
    dbChartHist.Series[3].DataSource := DM1.cdsQry33;
    dbChartHist.Series[3].Marks.Visible:=bLabel;
    dbChartHist.Series[3].Marks.Style:=smsValue;
    TLineSeries(dbChartHist.Series[3]).LinePen.Width := 3;
    TLineSeries(dbChartHist.Series[3]).LinePen.Color:= clBlue;
    dbChartHist.Series[3].Title:='PLA';
    dbChartHist.Series[3].XLabelsSource := 'FRMPAG'; // EJE X
    dbChartHist.Series[3].YValueS.ValueSource := 'PLA'; // EJE Y
    dbChartHist.Series[3].valueFormat := '##,###,###';

    dbChartHist.AddSeries( TLineSeries.Create(Self) );
    dbChartHist.Series[4].DataSource := DM1.cdsQry33;
    dbChartHist.Series[4].Marks.Visible:=bLabel;
    dbChartHist.Series[4].Marks.Style:=smsValue;
    TLineSeries(dbChartHist.Series[4]).LinePen.Width:= 3;
    TLineSeries(dbChartHist.Series[4]).SeriesColor:=clAqua;
    dbChartHist.Series[4].Title:='REG';
    dbChartHist.Series[4].XLabelsSource := 'FRMPAG'; // EJE X
    dbChartHist.Series[4].YValueS.ValueSource := 'REG'; // EJE Y
    dbChartHist.Series[4].valueFormat := '##,###,###';

//Inicio HPC_201603_COB - Muestra grafica
    dbChartHist.AddSeries( TLineSeries.Create(Self) );
    dbChartHist.Series[5].DataSource := DM1.cdsQry33;
    dbChartHist.Series[5].Marks.Visible:=bLabel;
    dbChartHist.Series[5].Marks.Style:=smsValue;
    TLineSeries(dbChartHist.Series[5]).LinePen.Width:= 3;
    TLineSeries(dbChartHist.Series[5]).SeriesColor:=clMaroon;
    dbChartHist.Series[5].Title:='ONP';
    dbChartHist.Series[5].XLabelsSource := 'FRMPAG'; // EJE X
    dbChartHist.Series[5].YValueS.ValueSource := 'ONP'; // EJE Y
    dbChartHist.Series[5].valueFormat := '##,###,###';
//Final HPC_201603_COB

//Inicio HPC_201608_COB - Muestra grafica
    dbChartHist.AddSeries( TLineSeries.Create(Self) );
    dbChartHist.Series[6].DataSource := DM1.cdsQry33;
    dbChartHist.Series[6].Marks.Visible:=bLabel;
    dbChartHist.Series[6].Marks.Style:=smsValue;
    TLineSeries(dbChartHist.Series[6]).LinePen.Width:= 3;
    TLineSeries(dbChartHist.Series[6]).SeriesColor:=clFuchsia;
    dbChartHist.Series[6].Title:='CXC';
    dbChartHist.Series[6].XLabelsSource := 'FRMPAG'; // EJE X
    dbChartHist.Series[6].YValueS.ValueSource := 'CXC'; // EJE Y
    dbChartHist.Series[6].valueFormat := '##,###,###';
//Final HPC_201608_COB

    dbChartHist.Title.Text.Add(' ');
    dbChartHist.BottomAxis.Title.Caption:='MESES';
    dbChartHist.RefreshData;
End;



procedure TFGraficoFSC.FormActivate(Sender: TObject);
begin
   if (sTipGraf='1') then
   begin
      pnlFiltro.Visible:=False;
      pintarChart();
   end
   else
      pintarChart2();
end;

procedure TFGraficoFSC.rbTipoClick(Sender: TObject);
begin
   if rbTipo.ItemIndex=0 then pintarChart3();
   if rbTipo.ItemIndex=1 then pintarChart3();
   if rbTipo.ItemIndex=2 then pintarChart3();
   if rbTipo.ItemIndex=3 then pintarChart3();
   if rbTipo.ItemIndex=4 then pintarChart3();
//Inicio HPC_201608_COB - Pinta caracteres
//Inicio HPC_201603_COB - Pinta caracteres
// if rbTipo.ItemIndex=5 then pintarChart2();
   if rbTipo.ItemIndex=5 then pintarChart3();
// if rbTipo.ItemIndex=6 then pintarChart2();
   if rbTipo.ItemIndex=6 then pintarChart3();
   if rbTipo.ItemIndex=7 then pintarChart2();
//Final HPC_201603_COB
//Final HPC_201608_COB - Pinta caracteres
end;

Procedure TFGraficoFSC.pintarChart3();
Var
    i: integer;
    i2: integer;
    sDesde: String;
    sHasta: String;
    xSQL:String;
    sCampo : String;
Begin

    limpiarGrafico();

    dbChartHist.Title.Text.Add('COBRANZAS DEL F.S.C. DEL AÑO '+sAno);

    For i := 0 To dbChartHist.SeriesCount - 1 Do
        dbChartHist.Series[0].Free; // limpia las series

    dbChartHist.AddSeries( TLineSeries.Create(Self) );
    dbChartHist.Series[0].DataSource := DM1.cdsQry33;
    if cbEti.Checked then
       dbChartHist.Series[0].Marks.Visible:=True
    else
       dbChartHist.Series[0].Marks.Visible:=false;
    dbChartHist.Series[0].Marks.Style:=smsValue;
    TLineSeries(dbChartHist.Series[0]).LinePen.Width := 3;

    if rbTipo.ItemIndex=0 then begin sCampo:='BAN'; TLineSeries(dbChartHist.Series[0]).SeriesColor:=clRed; end;
    if rbTipo.ItemIndex=1 then begin sCampo:='BEN'; TLineSeries(dbChartHist.Series[0]).SeriesColor:=clGreen; end;
    if rbTipo.ItemIndex=2 then begin sCampo:='EFE'; TLineSeries(dbChartHist.Series[0]).SeriesColor:=clYellow; end;
    if rbTipo.ItemIndex=3 then begin sCampo:='PLA'; TLineSeries(dbChartHist.Series[0]).SeriesColor:=clBlue; end;
    if rbTipo.ItemIndex=4 then begin sCampo:='REG'; TLineSeries(dbChartHist.Series[0]).SeriesColor:=clAqua; end;
//Inicio HPC_201603_COB - Color de campo
    if rbTipo.ItemIndex=5 then begin sCampo:='ONP'; TLineSeries(dbChartHist.Series[0]).SeriesColor:=clMaroon; end;
//Final HPC_201603_COB
//Inicio HPC_201608_COB - Color de campo
    if rbTipo.ItemIndex=6 then begin sCampo:='CXC'; TLineSeries(dbChartHist.Series[0]).SeriesColor:=clFuchsia; end;
//Final HPC_201608_COB
    dbChartHist.Series[0].Title:=sCampo;
    dbChartHist.Series[0].XLabelsSource := 'FRMPAG'; // EJE X
    dbChartHist.Series[0].YValueS.ValueSource := sCampo; // EJE Y
    dbChartHist.Series[0].valueFormat := '##,###,###';
    dbChartHist.Title.Text.Add(' ');
    dbChartHist.RefreshData;

End;



procedure TFGraficoFSC.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFGraficoFSC.cbEtiClick(Sender: TObject);
begin
  rbTipoClick(Self);
end;

end.
