// Inicio: HPP_201006_COB por JDCRUZ
// Memorándum 884-2009-DM-COB - SAR-2009-0805 - DAD-JD-2010-0002
Unit COB919B;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons,
    ComCtrls, TeEngine, Series, TeeProcs, Chart, DbChart, DB, Spin, DBGrids;

Type
    TFMovCalifAsoc = Class(TForm)
        GroupBox1: TGroupBox;
        Panel2: TPanel;
        dbChartHist: TDBChart;
        GroupBox2: TGroupBox;
        sedAnhoInicio: TSpinEdit;
        sedMesInicio: TSpinEdit;
        GroupBox3: TGroupBox;
        sedAnhoFin: TSpinEdit;
        sedMesFin: TSpinEdit;
        rgTipoAsociado: TRadioGroup;
        rgCalificacion: TRadioGroup;
        Series1: TBarSeries;
        Series2: TBarSeries;
        Series3: TBarSeries;
        Series4: TBarSeries;
        Series5: TBarSeries;
        Series6: TBarSeries;
        Splitter1: TSplitter;
        Panel1: TPanel;
        BitProcesar: TBitBtn;
        Label1: TLabel;
        dtgClfCarCant: TwwDBGrid;
        btnPastel: TButton;
        btnAExcel: TBitBtn;
    btnSalir: TBitBtn;
        Procedure btnAExcelClick(Sender: TObject);
        Procedure FormShow(Sender: TObject);
        Procedure FormKeyPress(Sender: TObject; Var Key: Char);
        Procedure sedAnhoInicioChange(Sender: TObject);
        Procedure rgTipoAsociadoClick(Sender: TObject);
        Procedure dtgClfCarCantCalcCellColors(Sender: TObject; Field: TField;
            State: TGridDrawState; Highlight: Boolean; AFont: TFont;
            ABrush: TBrush);
        Procedure btnPastelClick(Sender: TObject);
        Procedure BitProcesarClick(Sender: TObject);
        Procedure dtgClfCarCantDblClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure sedMesInicioExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Private
        Procedure limpiarPantalla;
        Procedure limpiarGrafico;
        Procedure pintarChart;
        Procedure PorcesarDatos;
    Public
    { Public declarations }
    End;
Var
    FMovCalifAsoc: TFMovCalifAsoc;

Implementation

Uses COBDM1, COB902, COB919C;

{$R *.dfm}

(******************************************************************************
THilo = Class(TThread)
        Ejecutar: Procedure Of Object;
        Procedure Execute; Override;
End;

procedure THilo.Execute;
begin
  Ejecutar;
  Terminate;
end;
******************************************************************************)

(******************************************************************************)
Procedure TFMovCalifAsoc.pintarChart();
Var
    i: integer;
    i2: integer;
    xPerInicio: String;
    xPerFin: String;
Begin
    limpiarGrafico();
    xPerInicio := Trim(sedAnhoInicio.Text + Format('%.2d', [StrToInt(Trim(sedMesInicio.Text))]));
    xPerFin := Trim(sedAnhoFin.Text + Format('%.2d', [StrToInt(Trim(sedMesFin.Text))]));
    dbChartHist.Title.Text.Add('Movimientos de Calificaciones de Asociados en el Tiempo');
    dbChartHist.Title.Text.Add('del Periodo ' + xPerInicio + ' al ' + xPerFin);

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

    dbChartHist.Series[4].DataSource := DM1.cdsQry1;
    dbChartHist.Series[4].XLabelsSource := 'PERIODO'; // EJE X
    dbChartHist.Series[4].YValueS.ValueSource := 'CAN'; // EJE Y
    dbChartHist.Series[4].valueFormat := '##,###,###';

    dbChartHist.RefreshData;
End;
(******************************************************************************)
Procedure TFMovCalifAsoc.limpiarGrafico();
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
Procedure TFMovCalifAsoc.limpiarPantalla();
Var
    xSQL: String;
Begin
    btnAExcel.Enabled := false;
    btnPastel.Enabled := false;
    xSQL := 'SELECT '' '' PERIODO, 0 NOR, 0 CPP, 0 DEF, 0 DUD, 0 PER, 0 TOT, '
        + '       0 NOR_SALTOT, 0 CPP_SALTOT, 0 DEF_SALTOT, 0 DUD_SALTOT, 0 PER_SALTOT, 0 CAN_SALTOT, 0 TOT_SALTOT '
        + '  FROM DUAL WHERE 1=2';
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSQL);
    DM1.cdsQry1.Open;
    dtgClfCarCant.Selected.Clear;
    dtgClfCarCant.Selected.Add('PERIODO'#9'10'#9'Periodo');
    dtgClfCarCant.Selected.Add('NOR'#9'10'#9'NOR');
    dtgClfCarCant.Selected.Add('NOR_SALTOT'#9'15'#9'NOR SALDO');
    dtgClfCarCant.Selected.Add('CPP'#9'10'#9'CPP');
    dtgClfCarCant.Selected.Add('CPP_SALTOT'#9'15'#9'CPP SALDO');
    dtgClfCarCant.Selected.Add('DEF'#9'10'#9'DEF');
    dtgClfCarCant.Selected.Add('DEF_SALTOT'#9'15'#9'DEF SALDO');
    dtgClfCarCant.Selected.Add('DUD'#9'10'#9'DUD');
    dtgClfCarCant.Selected.Add('DUD_SALTOT'#9'15'#9'DUD SALDO');
    dtgClfCarCant.Selected.Add('PER'#9'10'#9'PER');
    dtgClfCarCant.Selected.Add('PER_SALTOT'#9'15'#9'PER SALDO');
    dtgClfCarCant.Selected.Add('CAN'#9'10'#9'CANCELARON');
    dtgClfCarCant.Selected.Add('CAN_SALTOT'#9'15'#9'CANCELARON SALDO');
//    dtgClfCarCant.Selected.Add('TOT'#9'10'#9'TOTAL');
//    dtgClfCarCant.Selected.Add('TOT_SALTOT'#9'15'#9'TOTAL SALDO');
    dtgClfCarCant.ApplySelected;
    limpiarGrafico();
End;

(******************************************************************************)
Procedure TFMovCalifAsoc.btnAExcelClick(Sender: TObject);
Var
    xArchivo: String;
Begin
    xArchivo := 'MOV_CALF_ASOC';
    If FileExists(xArchivo + '.slk') Then
        DeleteFile(xArchivo + '.slk');
    DM1.ExportaGridExcel(dtgClfCarCant, xArchivo);
End;

(******************************************************************************)
Procedure TFMovCalifAsoc.FormShow(Sender: TObject);
Begin
    dtgClfCarCant.DataSource := DM1.dsQry1;
    sedAnhoInicio.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
    sedMesInicio.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2));
    sedAnhoFin.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
    sedMesFin.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2));
    limpiarPantalla();
End;

(******************************************************************************)
Procedure TFMovCalifAsoc.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
    If Key = #13 Then
    Begin
        Key := #0;
        Perform(CM_DialogKey, VK_TAB, 0);
    End;
End;

(******************************************************************************)
Procedure TFMovCalifAsoc.sedAnhoInicioChange(Sender: TObject);
Begin
    If sedAnhoInicio.Focused Or sedAnhoFin.Focused Or sedMesInicio.Focused Or sedMesFin.Focused Then
        limpiarPantalla();
End;

(******************************************************************************)
Procedure TFMovCalifAsoc.rgTipoAsociadoClick(Sender: TObject);
Begin
    If rgTipoAsociado.Focused Or rgCalificacion.Focused Then
        limpiarPantalla();
End;

(******************************************************************************)
Procedure TFMovCalifAsoc.dtgClfCarCantCalcCellColors(Sender: TObject;
    Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
    ABrush: TBrush);
Begin
    If Not Highlight Then
    Begin
        If (Field.FieldName = 'NOR') Or (Field.FieldName = 'NOR_SALTOT') Then
            If Field.Value > 0 Then
            Begin
                AFont.Style := [fsBold];
                AFont.Color := clRed;
            End;
        If (Field.FieldName = 'CPP') Or (Field.FieldName = 'CPP_SALTOT') Then
            If Field.Value > 0 Then
            Begin
                AFont.Style := [fsBold];
                AFont.Color := clGreen;
            End;

        If (Field.FieldName = 'DEF') Or (Field.FieldName = 'DEF_SALTOT') Then
            If Field.Value > 0 Then
            Begin
                AFont.Style := [fsBold];
                AFont.Color := clPurple;
            End;

        If (Field.FieldName = 'DUD') Or (Field.FieldName = 'DUD_SALTOT') Then
            If Field.Value > 0 Then
            Begin
                AFont.Style := [fsBold];
                AFont.Color := clBlue;
            End;

        If (Field.FieldName = 'PER') Or (Field.FieldName = 'PER_SALTOT') Then
            If Field.Value > 0 Then
            Begin
                AFont.Style := [fsBold];
                AFont.Color := clMaroon;
            End;
        If (Field.FieldName = 'CAN') Or (Field.FieldName = 'CAN_SALTOT') Then
            If Field.Value > 0 Then
            Begin
                AFont.Style := [fsBold];
                AFont.Color := clBlack;
            End;
    End;
End;
(******************************************************************************)
Procedure TFMovCalifAsoc.btnPastelClick(Sender: TObject);
Begin
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
End;

(******************************************************************************)
Procedure TFMovCalifAsoc.BitProcesarClick(Sender: TObject);
(*
var Hilo: THilo;
begin
  Hilo:=THilo.Create(true);
  Hilo.Ejecutar := PorcesarDatos;
  Hilo.Priority := tpNormal;
  Hilo.Resume;
  *)
Begin
    PorcesarDatos();
End;
(******************************************************************************)
Procedure TFMovCalifAsoc.PorcesarDatos();
Var
    xSQL: String;
    xPerInicio: String;
    xPerFin: String;
    xTipAso: String;
    xCalif: String;
    xUnivCant: integer;
    xUnivSalTot: double;
Begin
    If (trim(sedAnhoInicio.Text) = '') Or (trim(sedAnhoFin.Text) = '') Or
        (trim(sedMesInicio.Text) = '') Or (trim(sedMesFin.Text) = '') Then
    Begin
        showmessage('Debe seleccionar un Periodo Válido.');
        exit;
    End;

    xPerInicio := Trim(sedAnhoInicio.Text + Format('%.2d', [StrToInt(Trim(sedMesInicio.Text))]));
    xPerFin := Trim(sedAnhoFin.Text + Format('%.2d', [StrToInt(Trim(sedMesFin.Text))]));
    If xPerFin >= xPerInicio Then
    Begin
        Screen.Cursor := crHourGlass;
        Case rgTipoAsociado.ItemIndex Of
            0: xTipAso := ' AND CFC_1.ASOTIPID = ''DO'' ';
            1: xTipAso := ' AND CFC_1.ASOTIPID = ''CE'' ';
            2: xTipAso := ' AND CFC_1.ASOTIPID = ''CO'' ';
            3: xTipAso := '';
        End;
        Case rgCalificacion.ItemIndex Of
            0: xCalif := '0';
            1: xCalif := 'A';
            2: xCalif := 'B';
            3: xCalif := 'C';
            4: xCalif := 'D';
        End;

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

        TNumericField(DM1.cdsQry1.fieldbyname('NOR')).DisplayFormat := '###,###,###';
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
End;
(******************************************************************************)
Procedure TFMovCalifAsoc.dtgClfCarCantDblClick(Sender: TObject);
Begin
   If dtgClfCarCant.DataSource.DataSet.RecordCount>0 Then  btnPastelClick(Nil);
End;
(******************************************************************************)
procedure TFMovCalifAsoc.btnSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFMovCalifAsoc.sedMesInicioExit(Sender: TObject);
begin
   if (sedAnhoInicio.Text='2008') and (sedMesInicio.Value<10) then
   begin
      ShowMessage('No se permiten periodos anteriores a Octubre 2008.');
      sedMesInicio.Text := '10';
      sedMesInicio.SetFocus;
      exit;
   end;
end;

procedure TFMovCalifAsoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsQry1.Close;
end;

// Fin: HPP_201006_COB
End.

