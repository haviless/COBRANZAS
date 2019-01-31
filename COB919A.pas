// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
Unit COB919A;
                  
Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons,
    ComCtrls, TeEngine, Series, TeeProcs, Chart, DbChart, DB, Spin;

Type
    TFHistCalifAsoc = Class(TForm)
        GroupBox1: TGroupBox;
        BitBuscar: TBitBtn;
        BitProcesar: TBitBtn;
        Panel2: TPanel;
        dbChartHist: TDBChart;
        dtgClfCar: TwwDBGrid;
        Series1: TLineSeries;
        Label4: TLabel;
        edTipoAsoc: TEdit;
        edDNI: TEdit;
        EdtNomGen: TEdit;
        Label2: TLabel;
        Label3: TLabel;
        Label1: TLabel;
        GroupBox2: TGroupBox;
        sedAnhoInicio: TSpinEdit;
        sedMesInicio: TSpinEdit;
        GroupBox3: TGroupBox;
        sedAnhoFin: TSpinEdit;
        sedMesFin: TSpinEdit;
        btnAExcel: TBitBtn;
    btnSalir: TBitBtn;
        Procedure BitBuscarClick(Sender: TObject);
        Procedure BitProcesarClick(Sender: TObject);
        Procedure btnAExcelClick(Sender: TObject);
        Procedure FormShow(Sender: TObject);
        Procedure dtgClfCarDrawDataCell(Sender: TObject; Const Rect: TRect;
            Field: TField; State: TGridDrawState);
        Procedure FormKeyPress(Sender: TObject; Var Key: Char);
        Procedure sedAnhoInicioChange(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtgClfCarCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    Private
        xAsoid: String;
        Procedure limpiarPantalla;
        Procedure limpiarGrafico;
        Procedure pintarChart;
    Public
    { Public declarations }
    End;

Var
    FHistCalifAsoc: TFHistCalifAsoc;

Implementation

Uses COBDM1, COB902;

{$R *.dfm}

(******************************************************************************)
Procedure TFHistCalifAsoc.pintarChart();
Var
    i: integer;
    i2: integer;
    xPerInicio: String;
    xPerFin: String;
Begin
    limpiarGrafico();
    xPerInicio := Trim(sedAnhoInicio.Text + Format('%.2d', [StrToInt(Trim(sedMesInicio.Text))]));
    xPerFin := Trim(sedAnhoFin.Text + Format('%.2d', [StrToInt(Trim(sedMesFin.Text))]));
    dbChartHist.Title.Text.Add('Días de Atrazo');
    dbChartHist.Title.Text.Add('Asociado : ' + EdtNomGen.Text);
    dbChartHist.Title.Text.Add('del Periodo ' + xPerInicio + ' al ' + xPerFin);
    //dbChartHist.AddSeries(TBarSeries.Create(self));
    dbChartHist.Series[0].DataSource := DM1.cdsQry1;
    dbChartHist.Series[0].XLabelsSource := 'PERIODO'; // EJE X
    dbChartHist.Series[0].YValueS.ValueSource := 'DIASTRANS'; // EJE Y
    dbChartHist.Series[0].valueFormat := '##,###,###';
    dbChartHist.Series[0].Name := 'dias_transcurridos'; // nombre serie
    dbChartHist.RefreshData;
End;
(******************************************************************************)
Procedure TFHistCalifAsoc.limpiarGrafico();
Var
    i: integer;
Begin
    dbChartHist.Title.Text.Clear;
    (*
    For i := 0 To dbChartHist.SeriesCount - 1 Do
        dbChartHist.Series[0].Free; // limpia las series
    *)
End;
(******************************************************************************)
Procedure TFHistCalifAsoc.limpiarPantalla();
var
    xSQL: String;
Begin
    btnAExcel.Enabled := false;
    xSQL := 'SELECT PERIODO, CFC_F, CFCDES_F,DIASTRANS FROM CFC000 WHERE 1=2';
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSQL);
    DM1.cdsQry1.Open;
    limpiarGrafico();
End;
(******************************************************************************)
Procedure TFHistCalifAsoc.BitBuscarClick(Sender: TObject);
Begin
    limpiarPantalla();
    xAsoid := ''; EdtNomGen.Text:='';edTipoAsoc.Text:='';edDNI.Text:='';
    DM1.xSgr := 'COB919A';
    fSeleccion := TfSeleccion.create(self);
    fSeleccion.Showmodal;
    fSeleccion.free;
    If DM1.xSgr = '' Then
    Begin
        xAsoid := DM1.cdsAso.fieldByName('ASOID').AsString;
        EdtNomGen.Text := DM1.cdsAso.fieldByName('ASOAPENOM').AsString;
        edDNI.Text := DM1.cdsAso.fieldByName('ASODNI').AsString;
        edTipoAsoc.Text := DM1.cdsAso.fieldByName('ASOTIPID').AsString;
    End;
End;
(******************************************************************************)
Procedure TFHistCalifAsoc.BitProcesarClick(Sender: TObject);
Var
    xSQL: String;
    xPerInicio: String;
    xPerFin: String;
Begin
    If xAsoid = '' Then
    Begin
        showmessage('Debe seleccionar un Asociado.');
        exit;
    End;

    If (trim(sedAnhoInicio.Text) = '') Or (trim(sedAnhoFin.Text) = '') Or
        (trim(sedMesInicio.Text) = '') Or (trim(sedMesFin.Text) = '') Then
    Begin
        showmessage('Seleccione un Periodo Válido.');
        exit;
    End;

    xPerInicio := Trim(sedAnhoInicio.Text + Format('%.2d', [StrToInt(Trim(sedMesInicio.Text))]));
    xPerFin := Trim(sedAnhoFin.Text + Format('%.2d', [StrToInt(Trim(sedMesFin.Text))]));
    If xPerFin > xPerInicio Then
    Begin
        Screen.Cursor := crHourGlass;
        xSQL := 'SELECT PERIODO, DIASTRANS, '
            + '         CASE WHEN DIASTRANS <= 8 THEN ''0'' '
            + '              WHEN DIASTRANS >= 9 AND DIASTRANS <= 31 THEN ''A'' '
            + '              WHEN DIASTRANS >= 32 AND DIASTRANS <= 62 THEN ''B'' '
            + '              WHEN DIASTRANS >= 63 AND DIASTRANS <= 123 THEN ''C'' '
            + '              WHEN DIASTRANS > 123 THEN ''D'' '
            + '         END CFC_F, '
            + '         CASE WHEN DIASTRANS <= 8 THEN ''NORMAL'' '
            + '              WHEN DIASTRANS >= 9 AND DIASTRANS <= 31 THEN ''PROB POT'' '
            + '              WHEN DIASTRANS >= 32 AND DIASTRANS <= 62 THEN ''DEFICIENTE'' '
            + '              WHEN DIASTRANS >= 63 AND DIASTRANS <= 123 THEN ''DUDOSO'' '
            + '              WHEN DIASTRANS > 123 THEN ''PERDIDA'' '
            + '         END CFCDES_F '
            + '    FROM CFC000 '
            + '   WHERE ASOID =' + QuotedStr(xAsoid)
            + '     AND PERIODO >=' + QuotedStr(xPerInicio)
            + '     AND PERIODO <=' + QuotedStr(xPerFin)
            + '   ORDER BY PERIODO ';
        DM1.cdsQry1.Close;
        DM1.cdsQry1.DataRequest(xSQL);
        DM1.cdsQry1.Open;
        pintarChart();
        Screen.Cursor := crDefault;
        If DM1.cdsQry1.RecordCount <= 0 Then
            showmessage('No hay Calificacion para este Asociado en el rango de periodo seleccionado.!')
        Else
            btnAExcel.Enabled := true;
    End
    Else
    Begin
        showmessage('El Periodo de Inicio no debe ser mayor al Periodo de Fin.');
    End;
End;

(******************************************************************************)
Procedure TFHistCalifAsoc.btnAExcelClick(Sender: TObject);
Var
    xArchivo: String;
Begin
    xArchivo := 'HIST_CALF_ASOC_DNI' + edDNI.Text;

    If FileExists(xArchivo + '.slk') Then
        DeleteFile(xArchivo + '.slk');
    DM1.ExportaGridExcel(dtgClfCar, xArchivo);
End;

(******************************************************************************)
Procedure TFHistCalifAsoc.FormShow(Sender: TObject);
Begin
    dtgClfCar.DataSource := DM1.dsQry1;
    sedAnhoInicio.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
    sedMesInicio.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2));
    sedAnhoFin.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
    sedMesFin.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2));
    limpiarPantalla();
    xAsoid := '';
End;

(******************************************************************************)
Procedure TFHistCalifAsoc.dtgClfCarDrawDataCell(Sender: TObject;
    Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

// NORMAL
   If DM1.cdsQry1.fieldByName('CFC_F').value = '0' Then
   Begin
      dtgClfCar.Canvas.Font.Color := clGreen;
      dtgClfCar.DefaultDrawDataCell(rect, Field, State);
   End;

// PROBLEMAS POTENCIALES
   If DM1.cdsQry1.fieldByName('CFC_F').value = 'A' Then
   Begin
      dtgClfCar.Canvas.Font.Color := clNavy;
      dtgClfCar.DefaultDrawDataCell(rect, Field, State);
   End;

// DEFICIENTE
   If DM1.cdsQry1.fieldByName('CFC_F').value = 'B' Then
   Begin
      dtgClfCar.Canvas.Font.Color := clBlue;
      dtgClfCar.DefaultDrawDataCell(rect, Field, State);
   End;

// DUDOSO
   If DM1.cdsQry1.fieldByName('CFC_F').value = 'C' Then
   Begin
      dtgClfCar.Canvas.Font.Color := clMaroon;
      dtgClfCar.DefaultDrawDataCell(rect, Field, State);
   End;

// PERDIDA
   If DM1.cdsQry1.fieldByName('CFC_F').value = 'D' Then
   Begin
      dtgClfCar.Canvas.Font.Color := clRed;
      dtgClfCar.DefaultDrawDataCell(rect, Field, State);
   End;
End;

(******************************************************************************)
Procedure TFHistCalifAsoc.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
    If Key = #13 Then
    Begin
        Key := #0;
        Perform(CM_DialogKey, VK_TAB, 0);
    End;
End;

(******************************************************************************)
Procedure TFHistCalifAsoc.sedAnhoInicioChange(Sender: TObject);
Begin
    If sedAnhoInicio.Focused Or sedAnhoFin.Focused Or sedMesInicio.Focused Or sedMesFin.Focused Then
        limpiarPantalla();
End;
(******************************************************************************)

procedure TFHistCalifAsoc.btnSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFHistCalifAsoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsQry1.Close;
   Action := caFree;
end;

procedure TFHistCalifAsoc.dtgClfCarCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if Highlight then
   begin
      ABrush.Color := clSilver;
   end;
end;
// Fin: HPP_201006_COB 

End.

