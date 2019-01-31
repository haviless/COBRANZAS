unit COB605;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB605
// Formulario           : FMigraRefinanciados
// Fecha de Creación    : 15/08/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Estadistica de Migración de Refinanciados
// Actualizaciones      :
// HPC_201309_COB       : Estadistica de Migración de Refinanciados
// SPP_201311_COB       : Se realiza el pase a producción a partir del HPC_201309_COB


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, ExtCtrls, Buttons, TeEngine,
  Series, TeeProcs, Chart, DbChart, Grids, Wwdbigrd, Wwdbgrid, Spin;

type
  TFMigraRefinanciados = class(TForm)
    GroupBox1: TGroupBox;
    lblUniverso: TLabel;
    BitProcesar: TBitBtn;
    Panel1: TPanel;
    dbgDatos: TwwDBGrid;
    btnPastel: TButton;
    btnAExcel: TBitBtn;
    btnSalir: TBitBtn;
    Splitter1: TSplitter;
    dbChartHist: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    dtpDesde: TwwDBDateTimePicker;
    Label3: TLabel;
    dtpHasta: TwwDBDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure BitProcesarClick(Sender: TObject);
    procedure btnPastelClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
    sHorario : String;
    Procedure PorcesarDatos();
    Procedure limpiarPantalla();
    Procedure pintarChart();
    Procedure limpiarGrafico();
  public
    { Public declarations }
  end;

var
  FMigraRefinanciados: TFMigraRefinanciados;

implementation

uses COBDM1, COB919C;

{$R *.dfm}

Procedure TFMigraRefinanciados.PorcesarDatos();
Var
    xSQL: String;
    xPerInicio: String;
    xPerFin: String;
    xTipAso: String;
    xCalif: String;
    xUnivCant: integer;
    xUnivSalTot: double;
Begin
        Screen.Cursor := crHourGlass;

        xSQL := 'SELECT PERIODO, '
            + '       SUM(CASE WHEN CFC = ''0'' THEN NVL(CANT,0) ELSE 0 END) NOR, '
            + '       SUM(CASE WHEN CFC = ''A'' THEN NVL(CANT,0) ELSE 0 END) CPP, '
            + '       SUM(CASE WHEN CFC = ''B'' THEN NVL(CANT,0) ELSE 0 END) DEF, '
            + '       SUM(CASE WHEN CFC = ''C'' THEN NVL(CANT,0) ELSE 0 END) DUD, '
            + '       SUM(CASE WHEN CFC = ''D'' THEN NVL(CANT,0) ELSE 0 END) PER, '
            + '       0.0 CAN, SUM(CANT) TOT,  '
            + '       SUM(CASE WHEN CFC = ''0'' THEN SALTOT ELSE 0 END) NOR_SALTOT, '
            + '       SUM(CASE WHEN CFC = ''A'' THEN SALTOT ELSE 0 END) CPP_SALTOT, '
            + '       SUM(CASE WHEN CFC = ''B'' THEN SALTOT ELSE 0 END) DEF_SALTOT, '
            + '       SUM(CASE WHEN CFC = ''C'' THEN SALTOT ELSE 0 END) DUD_SALTOT, '
            + '       SUM(CASE WHEN CFC = ''D'' THEN SALTOT ELSE 0 END) PER_SALTOT, '
            + '       0.0 CAN_SALTOT, SUM(SALTOT) TOT_SALTOT  '
            + '  FROM (SELECT CFC_2.PERIODO, CFC_2.CFC_R CFC, SUM(1) CANT, SUM(NVL(SALTOT,0)) SALTOT '
            + '           FROM CFC000 CFC_2, '
            + '                (SELECT ASOID '
            + '                   FROM CFC000 CFC_1 '
            + '                  WHERE CFC_1.PERIODO = ' + QuotedStr(xPerInicio)
            + xTipAso
            + '                    AND CFC_1.SALDOS_RT > 0 '
            + '                    AND CFC_1.CFC_R = ' + QuotedStr(xCalif)
            + '                    AND EXISTS '
            + '                   (SELECT PERIODO,ASOID,TIPDESEID,CREFOTORG '
            + '                      FROM SAL000 SAL '
            + '                     WHERE SAL.PERIODO = CFC_1.PERIODO '
            + '                       AND SAL.ASOID = CFC_1.ASOID '
            + '                       AND SAL.TIPDESEID = ''10'' '
            + '                       AND SAL.CREFOTORG >= ''01/10/2008'')) A '
            + '          WHERE CFC_2.PERIODO >= ' + QuotedStr(xPerInicio)
            + '            AND CFC_2.PERIODO <= ' + QuotedStr(xPerFin)
            + '            AND CFC_2.ASOID = A.ASOID '
            + '            AND CFC_2.SALDOS_RT > 0 '
            + '          GROUP BY CFC_2.PERIODO, CFC_2.CFC_R) '
            + ' GROUP BY PERIODO '
            + ' ORDER BY PERIODO ';

        DM1.cdsQry1.Close;
        DM1.cdsQry1.DataRequest(xSQL);
        DM1.cdsQry1.Open;

{        TNumericField(DM1.cdsQry1.fieldbyname('NOR')).DisplayFormat := '###,###,###';
        TNumericField(DM1.cdsQry1.fieldbyname('CPP')).DisplayFormat := '###,###,###';
        TNumericField(DM1.cdsQry1.fieldbyname('DEF')).DisplayFormat := '###,###,###';
        TNumericField(DM1.cdsQry1.fieldbyname('DUD')).DisplayFormat := '###,###,###';
        TNumericField(DM1.cdsQry1.fieldbyname('PER')).DisplayFormat := '###,###,###';
        TNumericField(DM1.cdsQry1.fieldbyname('CAN')).DisplayFormat := '###,###,###';
        TNumericField(DM1.cdsQry1.fieldbyname('TOT')).DisplayFormat := '###,###,###';

        TNumericField(DM1.cdsQry1.fieldbyname('NOR_SALTOT')).DisplayFormat := '###,###,###.#0';
        TNumericField(DM1.cdsQry1.fieldbyname('CPP_SALTOT')).DisplayFormat := '###,###,###.#0';
        TNumericField(DM1.cdsQry1.fieldbyname('DEF_SALTOT')).DisplayFormat := '###,###,###.#0';
        TNumericField(DM1.cdsQry1.fieldbyname('DUD_SALTOT')).DisplayFormat := '###,###,###.#0';
        TNumericField(DM1.cdsQry1.fieldbyname('PER_SALTOT')).DisplayFormat := '###,###,###.#0';
        TNumericField(DM1.cdsQry1.fieldbyname('CAN_SALTOT')).DisplayFormat := '###,###,###.#0';
        TNumericField(DM1.cdsQry1.fieldbyname('TOT_SALTOT')).DisplayFormat := '###,###,###.#0';

        pintarChart();
        Screen.Cursor := crDefault;
        If DM1.cdsQry1.RecordCount <= 0 Then
            showmessage('No existe información para los parametros ingresados.!')
        Else
        Begin
            btnAExcel.Enabled := true;
            btnPastel.Enabled := true;
            DM1.cdsQry1.First;
            xUnivCant := DM1.cdsQry1.fieldbyname('NOR').value;
            xUnivSalTot := DM1.cdsQry1.fieldbyname('NOR_SALTOT').value;
            While Not DM1.cdsQry1.Eof Do
            Begin
                DM1.cdsQry1.Edit;
                DM1.cdsQry1.FieldByName('CAN').Value := xUnivCant - DM1.cdsQry1.FieldByName('TOT').Value;
                DM1.cdsQry1.FieldByName('TOT').Value := xUnivCant;
                DM1.cdsQry1.FieldByName('CAN_SALTOT').Value := xUnivSalTot - DM1.cdsQry1.FieldByName('TOT_SALTOT').Value;
                DM1.cdsQry1.FieldByName('TOT_SALTOT').Value := xUnivSalTot;
                DM1.cdsQry1.Post;
                DM1.cdsQry1.Next;
            End;
        End;

    End
    Else
    Begin
        showmessage('El Periodo de Inicio no debe ser mayor al Periodo de Fin.');
    End;
        }
End;


procedure TFMigraRefinanciados.FormShow(Sender: TObject);
begin
   // dtgClfCar.DataSource := DM1.dsQry1;
  dtpDesde.Date := DM1.FechaSys;
  dtpHasta.Date := DM1.FechaSys;

  limpiarPantalla();

end;


procedure TFMigraRefinanciados.BitProcesarClick(Sender: TObject);
var
   sDesde, sHasta : String;
   sSQL : String;
   nAso : Integer;
   xUnivCant: integer;
   xUnivSalTot: double;
begin
  sDesde := FormatDateTime(wFormatFecha, dtpDesde.DateTime);
  sHasta := FormatDateTime(wFormatFecha, dtpHasta.DateTime);
  If dm1.verificahorario = False Then
  Begin
     if Copy(sDesde,7,4)+Copy(sDesde,4,2) <> Copy(sHasta,7,4)+Copy(sHasta,4,2) then
     begin
        MessageDlg('En este horario y hasta la 5 de la tarde solo permite procesar información de un mismo Mes', mtError, [mbOk], 0);
        Exit;
     end;
  End;

  Screen.Cursor := crHourGlass;

  sSQL:='SELECT ASOID FROM CRE301 '
       +'WHERE CREFOTORG BETWEEN '''+sDesde+''' AND '''+sHasta+''' AND TIPDESEID=''10'' AND CREESTID NOT IN (''04'',''13'',''99'')';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;

  nAso:=DM1.cdsQry.Recordcount;
  lblUniverso.Caption:='* Universos de refinanciados = '+inttostr(DM1.cdsQry.RecordCount);

  sSQL:='SELECT PERIODO, '+inttostr(nAso)+' OTORGADOS, COUNT(*) ASOCIADOS, '
       +  'SUM(T_NOR) NOR, SUM(T_CPP) CPP, SUM(T_DEF) DEF, SUM(T_DUD) DUD, SUM(T_PER) PER, '+inttostr(nAso)+'-COUNT(*) CAN, '
       +  inttostr(nAso)+' TOT, '
       +  'TO_CHAR(ADD_MONTHS(SYSDATE,-1),''YYYYMM'') perfin, TO_CHAR(ADD_MONTHS(SYSDATE,-6),''YYYYMM'') perini '
       +'FROM '
       +  '( '
       +  'SELECT ASOID, PERIODO, CFC_F, CFCDES_F, CASE WHEN CFC_F=''0'' THEN 1 ELSE 0 END T_NOR, '
       +    'CASE WHEN CFC_F=''A'' THEN 1 ELSE 0 END T_CPP, '
       +    'CASE WHEN CFC_F=''B'' THEN 1 ELSE 0 END T_DEF, '
       +    'CASE WHEN CFC_F=''C'' THEN 1 ELSE 0 END T_DUD, '
       +    'CASE WHEN CFC_F=''D'' THEN 1 ELSE 0 END T_PER  '
       +  'FROM CFC000 A '
       +'WHERE PERIODO BETWEEN TO_CHAR(ADD_MONTHS(SYSDATE,-6),''YYYYMM'') '
       + ' AND TO_CHAR(ADD_MONTHS(SYSDATE,-1),''YYYYMM'') '
       + ' AND EXISTS ( SELECT ASOID '
       +                ' FROM ( SELECT ASOID FROM CRE301 '
       +                         'WHERE CREFOTORG BETWEEN '''+sDesde+''' AND '''+sHasta+''' '
       +                           'AND TIPDESEID=''10'' AND CREESTID NOT IN (''04'',''13'',''99'') '
       +                     ' ) '
       +                'WHERE A.ASOID=ASOID '
       +             ') '
       + ' ) '
       + 'GROUP BY PERIODO '
       + 'ORDER BY PERIODO';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest( sSQL );
  DM1.cdsQry1.Open;
  dbgDatos.DataSource:=DM1.dsQry1;

  pintarChart();
  Screen.Cursor := crDefault;
  If DM1.cdsQry1.RecordCount <= 0 Then
      showmessage('No existe información para los parametros ingresados.!')
  Else
  Begin
      btnAExcel.Enabled := true;
      btnPastel.Enabled := true;
      DM1.cdsQry1.First;
      xUnivCant := DM1.cdsQry1.fieldbyname('NOR').value;
//      xUnivSalTot := DM1.cdsQry1.fieldbyname('NOR_SALTOT').value;
      While Not DM1.cdsQry1.Eof Do
      Begin
//          DM1.cdsQry1.Edit;
//          DM1.cdsQry1.FieldByName('CAN').Value := xUnivCant - DM1.cdsQry1.FieldByName('TOT').Value;
//          DM1.cdsQry1.FieldByName('TOT').Value := xUnivCant;
//          DM1.cdsQry1.FieldByName('CAN_SALTOT').Value := xUnivSalTot - DM1.cdsQry1.FieldByName('TOT_SALTOT').Value;
//          DM1.cdsQry1.FieldByName('TOT_SALTOT').Value := xUnivSalTot;
//          DM1.cdsQry1.Post;
          DM1.cdsQry1.Next;
      End;
  End;

end;


Procedure TFMigraRefinanciados.limpiarPantalla();
Var
    xSQL: String;
Begin
    btnAExcel.Enabled := false;
    btnPastel.Enabled := false;
    xSQL := 'SELECT '' '' PERIODO, 0 OTORGADOS, 0 ASOCIADOS, 0 NOR, 0 CPP, 0 DEF, 0 DUD, 0 PER, 0 CAN, 0 TOT '
        + '  FROM DUAL WHERE 1=2';
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSQL);
    DM1.cdsQry1.Open;
    dbgDatos.DataSource:=DM1.dsQry1;

    dbgDatos.Selected.Clear;
    dbgDatos.Selected.Add('PERIODO'#9'10'#9'Periodo');
    dbgDatos.Selected.Add('NOR'#9'12'#9'NOR');
    dbgDatos.Selected.Add('CPP'#9'12'#9'CPP');
    dbgDatos.Selected.Add('DEF'#9'12'#9'DEF');
    dbgDatos.Selected.Add('DUD'#9'12'#9'DUD');
    dbgDatos.Selected.Add('PER'#9'12'#9'PER');
    dbgDatos.Selected.Add('CAN'#9'13'#9'CANCELARON');
    dbgDatos.Selected.Add('TOT'#9'13'#9'TOTAL');
    dbgDatos.ApplySelected;
    //limpiarGrafico();
End;



Procedure TFMigraRefinanciados.pintarChart();
Var
    i: integer;
    i2: integer;
    sDesde: String;
    sHasta: String;
Begin
    limpiarGrafico();

    sDesde := FormatDateTime(wFormatFecha, dtpDesde.DateTime);
    sHasta := FormatDateTime(wFormatFecha, dtpHasta.DateTime);

    dbChartHist.Title.Text.Add('Migración de Refinanciados (Evaluación de Cartera de '
                                +dm1.cdsqry1.FieldByname('PERINI').AsString+' a '
                                +dm1.cdsqry1.FieldByname('PERFIN').AsString+')');
    dbChartHist.Title.Text.Add('Periodo de refinanciación de ' + sDesde + ' al ' + sHasta);

    dbChartHist.Series[0].DataSource := DM1.cdsQry1;
    dbChartHist.Series[0].XLabelsSource := 'PERIODO'; // EJE X
    dbChartHist.Series[0].YValueS.ValueSource := 'NOR'; // EJE Y
    dbChartHist.Series[0].valueFormat := '##,###,###';

    dbChartHist.Series[1].DataSource := DM1.cdsQry1;
    dbChartHist.Series[1].XLabelsSource := 'PERIODO'; // EJE X
    dbChartHist.Series[1].YValueS.ValueSource := 'CPP'; // EJE Y
    dbChartHist.Series[1].valueFormat := '##,###,###';

    dbChartHist.Series[2].DataSource := DM1.cdsQry1;
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

    dbChartHist.RefreshData;
End;

Procedure TFMigraRefinanciados.limpiarGrafico();
Var
    i: integer;
Begin
    dbChartHist.Title.Text.Clear;
    (*
    For i := 0 To dbChartHist.SeriesCount - 1 Do
        dbChartHist.Series[0].Free; // limpia las series
    *)
End;


procedure TFMigraRefinanciados.btnPastelClick(Sender: TObject);
begin
    FPie := TFPie.create(self);
    Try
        FPie.Chart1.Title.Text.Clear;
        FPie.Chart1.Title.Text := dbChartHist.Title.Text;
        FPie.Chart1.Title.Text.Add('- ' + DM1.cdsQry1.FieldByName('PERIODO').AsString + ' -');
        FPie.Chart1.Series[0].Clear;
        FPie.Chart1.Series[0].Add(DM1.cdsQry1.FieldByName('NOR').AsInteger, 'NOR', clRed);
        FPie.Chart1.Series[0].Add(DM1.cdsQry1.FieldByName('CPP').AsInteger, 'CPP', clGreen);
        FPie.Chart1.Series[0].Add(DM1.cdsQry1.FieldByName('DEF').AsInteger, 'DEF', clPurple);
        FPie.Chart1.Series[0].Add(DM1.cdsQry1.FieldByName('DUD').AsInteger, 'DUD', clBlue);
        FPie.Chart1.Series[0].Add(DM1.cdsQry1.FieldByName('PER').AsInteger, 'PER', clMaroon);
        FPie.Chart1.Series[0].Add(DM1.cdsQry1.FieldByName('CAN').AsInteger, 'CAN', clBlack);
        FPie.ShowModal();
    Except
        FPie.free;
    End;

end;

procedure TFMigraRefinanciados.btnAExcelClick(Sender: TObject);
Var
    xArchivo: String;
Begin
    xArchivo := 'MIGRA_REFINAN';
    If FileExists(xArchivo + '.slk') Then
        DeleteFile(xArchivo + '.slk');
    DM1.ExportaGridExcel(dbgDatos, xArchivo);

end;

procedure TFMigraRefinanciados.btnSalirClick(Sender: TObject);
begin
  Close;
end;

End.

