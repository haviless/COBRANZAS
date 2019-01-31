unit COB466;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB466
// Formulario           : FSaldoFPD
// Fecha de Creación    : 19/08/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Saldo del Fondo de Desgravamen
// Actualizaciones      :
// HPC_201309_COB       : Saldo del Fondo de Desgravamen
// SPP_201311_COB       : Se realiza el pase a producción a partir del HPC_201309_COB
// HPC_201310_COB       : 15/10/2013 inconsistencia de Consulta
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201602_COB       : Se retira la restricción de controla la ejecución por horario.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, StdCtrls, Mask,
  wwdbedit, Wwdbspin, Buttons, ppParameter, ppRichTx, ppCtrls, ppBands,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  // INICIO HPC_201602_COB - Se retira la restricción de controla la ejecución por horario
  ppDB, ppComm, ppRelatv, ppDBPipe, jpeg;
  // FIN HPC_201602_COB

type
  TFSaldoFPD = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    btnFiltrar: TBitBtn;
    sbAno: TwwDBSpinEdit;
    sbMes: TwwDBSpinEdit;
    chkProcesa: TCheckBox;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    lblfecha: TLabel;
    lblUsuProcesa: TLabel;
    GroupBox5: TGroupBox;
    menObs: TMemo;
    BitBtn2: TBitBtn;
    btnAExcel: TBitBtn;
    BitBtn1: TBitBtn;
    DSRESTIPASO: TDataSource;
    CDSRESTIPASO: TClientDataSet;
    DSRESTIPPAGO: TDataSource;
    CDSRESTIPPAGO: TClientDataSet;
    DSRESFLATTPAGO: TDataSource;
    CDSRESFLATTPAGO: TClientDataSet;
    GroupBox7: TGroupBox;
    Label5: TLabel;
    DBGRESTIPASO: TwwDBGrid;
    DBGDISFLATFSC: TwwDBGrid;
    dbpRESTIPASO: TppDBPipeline;
    dbpRESTIPPAGO: TppDBPipeline;
    ppREPRESAPLFSC: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape7: TppShape;
    pplblSubtitulo2: TppLabel;
    ppShape14: TppShape;
    pplblSubtitulo1: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel34: TppLabel;
    ppLabel13: TppLabel;
    pplblPeriodo2: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel14: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    pplblusuario: TppLabel;
    pplblfechaproceso: TppLabel;
    pplblUsuarioProceso: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape25: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape22: TppShape;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel20: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel38: TppLabel;
    pplblPeriodo3: TppLabel;
    ppLabel46: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape17: TppShape;
    ppDBCalc7: TppDBCalc;
    ppShape18: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppParameterList1: TppParameterList;
    ppLabel21: TppLabel;
    // Inicio: HPC_201602_COB
    // Modificación del reporte "Saldo del Fondo de Protección de Desgravamen"
    ppImage3: TppImage;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel35: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    // Fin: HPC_201602_COB
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbMesExit(Sender: TObject);
    procedure sbAnoChange(Sender: TObject);
    procedure sbMesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure DBGDISFLATFSCEnter(Sender: TObject);
    procedure DBGRESTIPASOEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    XGRID: String;
    procedure LimpiaPantalla;
    procedure MuestraGrid;
    procedure MuestraGridToExcel;
  public
    { Public declarations }
  end;

var
  FSaldoFPD: TFSaldoFPD;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFSaldoFPD.btnFiltrarClick(Sender: TObject);
var
   xSQl : String;
   vdPrimdia : String;
   vMenObs : String;
begin
   If (dm1.Valores(sbAno.Text) = 0) Or (dm1.Valores(sbMes.Text) = 0) Then
   Begin
      ShowMessage('Parametros incorrectos..?');
      exit;
   End;

   If chkProcesa.Checked Then
   Begin
      // Inicio: HPC_201602_COB
      // Se retira la restricción de control de ejecución por horario
      // If dm1.verificahorario Then
      // Begin
            Screen.Cursor := crHourglass;
            XSQL := 'Begin SP_COB_DISTRIBUCION_FPD(''' + sbAno.Text + sbMes.Text + ''',''' + DM1.wUsuario + '''); End;';
            dm1.DCOM1.AppServer.EjecutaSQL(xSQL);
            chkProcesa.Checked := False;
            Screen.Cursor := crDefault;
      // End
      // Else
      // Begin
      //    ShowMessage('El proceso solo puede ser ejecutado a partir de las 17:30PM.');
      //   chkProcesa.Checked := False;
      //   sbAnoChange(SELF);
      //   Screen.Cursor := crDefault;
      //   exit;
      // End;
      // Fin: HPC_201602_COB
   End;

   vMenObs:='';
   vdPrimdia := '01/' + sbMes.Text + '/' + sbAno.Text;
   xSQL:='SELECT a.periodo, a.asotipid, b.asotipdes, nvl(a.impperant,0)+nvl(a.impajucon,0) impperant, '
       +        'a.impperact, a.impaplinv, a.impaplfal, a.impsalfin, TO_CHAR(FECPRODAT,''DD/MM/YYYY'') FECPRODAT, a.USUARIO, a.OBSERVACION, '
       +        'TO_CHAR(last_day(''' + vdPrimdia + ''')+1,''DD/MM/YYYY'') ultdiaperiodo '
       +  'FROM db2admin.COB_FPD_TIP_ASO_RESUMEN A, APO107 B '
       + 'WHERE PERIODO=''' + sbAno.Text + sbMes.Text + ''' AND A.ASOTIPID=B.ASOTIPID '
       + 'ORDER BY B.ASOTIPDES ';
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(XSQL);
   dm1.cdsQry.Open;


   If dm1.cdsQry.RecordCount = 0 Then
   Begin
      If MessageDlg('No existe información procesada, desea procesar para el periodo.?', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
      Begin
         // Inicio: HPC_201602_COB
         // Se retira la restricción de control de ejecución por horario
         // If dm1.verificahorario Then
         // Begin
               Screen.Cursor := crHourglass;
               XSQL := 'Begin SP_COB_DISTRIBUCION_FPD(''' + sbAno.Text + sbMes.Text + ''',''' + DM1.wUsuario + '''); End;';
               dm1.DCOM1.AppServer.EjecutaSQL(xSQL);
               Screen.Cursor := crDefault;
         // End
         // Else
         // Begin
         //    ShowMessage('El proceso solo puede ser ejecutado a partir de las 17:30PM.');
         //    chkProcesa.Checked := False;
         //    sbAnoChange(SELF);
         //    exit;
         //    Screen.Cursor := crDefault;
         // End;
         // Fin: HPC_201602_COB
      End;
   End
   Else
   Begin
   //Si esta procesado
   //Verifico la fecha de proceso si esta desactualizado
      vMenObs := '';

      If Length(trim(dm1.cdsQry.FieldByName('fecprodat').AsString)) = 0 Then
      Begin
         ShowMessage('Aun no se ha procesado el periodo solicitado...');
         exit;
      End;

      If StrToDate(dm1.cdsQry.FieldByName('fecprodat').AsString) < StrToDate(dm1.cdsQry.FieldByName('ultdiaperiodo').AsString) Then
      Begin
         ShowMessage('Se recomienda procesar nuevamente el periodo, es posible que la información no este actualizada con los últimos pagos...');
         vMenObs := 'Se recomienda procesar nuevamente el periodo, es posible que la información no este actualizada con los últimos pagos...';
      End;

      menObs.Text := dm1.cdsQry.fieldbyname('OBSERVACION').AsString + ' ' + vMenObs;

   End;

   //Primero verifico si exixte informacion para el periodo
   xSQL:='SELECT a.periodo, a.asotipid, b.asotipdes, nvl(a.impperant,0)+nvl(a.impajucon,0) impperant, '
       +       'a.impperact, a.impaplinv, a.impaplfal, a.impsalfin, a.USUARIO, a.OBSERVACION, TO_CHAR(FECPRODAT,''DD/MM/YYYY'') FECPRODAT '
       +  'FROM db2admin.COB_FPD_TIP_ASO_RESUMEN A, APO107 B '
       + 'WHERE PERIODO=''' + sbAno.Text + sbMes.Text + ''' AND A.ASOTIPID=B.ASOTIPID '
       + 'ORDER BY B.ASOTIPDES ';
   dm1.cdsUtilidades.Close;
   dm1.cdsUtilidades.DataRequest(XSQL);
   dm1.cdsUtilidades.Open;

// Inicio: SPP_201312_COB                : 15/10/2013 inconsistencia de Consulta
   if dm1.cdsUtilidades.recordcount<=0 then Exit;
// Fin: SPP_201312_COB                : 15/10/2013 inconsistencia de Consulta

   lblfecha.Caption     := DateToStr(dm1.cdsUtilidades.fieldbyname('FECPRODAT').AsDateTime);
   lblUsuProcesa.Caption:= dm1.cdsUtilidades.fieldbyname('USUARIO').AsString;
   menObs.Text          := dm1.cdsUtilidades.fieldbyname('OBSERVACION').AsString + ' ' + vMenObs;


   xSQL:='SELECT A.FORPAG, B.FORPAGODES, A.fpdper '
        +  'FROM COB_FPD_FOR_PAG_RESUMEN A,COB101 B '
        + 'WHERE PERIODO=''' + sbAno.Text + sbMes.Text + ''' '
        +  ' AND A.forpag=B.FORPAGOABR';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(XSQL);
   DM1.cdsMGrupo.Open;
   TNumericField(dm1.cdsMGrupo.fieldbyname('fpdper')).DisplayFormat := '###,###,###.#0';

   DBGRESTIPASO.DataSource := dm1.dsUtilidades;
   DBGDISFLATFSC.DataSource:= dm1.dsMGrupo;

   MuestraGrid;
end;

procedure TFSaldoFPD.FormShow(Sender: TObject);
begin
   sbAno.Text := Copy(Datetostr(DM1.FechaSys),7,4);
   sbMes.Text := Copy(Datetostr(DM1.FechaSys),4,2);
   LimpiaPantalla;
   MuestraGrid;
end;

procedure TFSaldoFPD.sbMesExit(Sender: TObject);
begin
   sbMes.Text := DM1.StrZero(sbMes.Text, 2);
   btnFiltrar.SetFocus;
end;

procedure TFSaldoFPD.sbAnoChange(Sender: TObject);
begin
  LimpiaPantalla;
  MuestraGrid;
end;

procedure TFSaldoFPD.MuestraGrid;
begin
   DBGRESTIPASO.Selected.Clear;
   DBGRESTIPASO.Selected.Add('ASOTIPID'#9'8'#9'Tipo~Asociado'#9#9);
   DBGRESTIPASO.Selected.Add('IMPPERANT'#9'15'#9'(a) Saldo FPD'#9'F'#9'Periodo Anterior');
   DBGRESTIPASO.Selected.Add('IMPPERACT'#9'15'#9'(b) Dist.TFPD~para el FPD~(COBRANZAS)'#9'F'#9'Periodo de Consulta');
   DBGRESTIPASO.Selected.Add('IMPAPLINV'#9'15'#9'(c) Creditos Aplicados~Con FPD-Invalidez'#9'F'#9'Periodo de Consulta');
   DBGRESTIPASO.Selected.Add('IMPAPLFAL'#9'15'#9'(d) Creditos Aplicados~Con FPD-Fallecim.'#9'F'#9'Periodo de Consulta');
   DBGRESTIPASO.Selected.Add('IMPSALFIN'#9'15'#9'(a + b) - (c + d)~Nuevo Saldo~FPD'#9'F'#9'Periodo de Consulta');
   DBGRESTIPASO.ApplySelected;

   TNumericField(DM1.cdsUtilidades.FieldByName('IMPPERANT')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsUtilidades.FieldByName('IMPPERACT')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsUtilidades.FieldByName('IMPAPLINV')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsUtilidades.FieldByName('IMPAPLFAL')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsUtilidades.FieldByName('IMPSALFIN')).DisplayFormat := '###,###.#0';

   DBGRESTIPASO.ColumnByName('IMPPERANT').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(IMPPERANT)',''))), ffNumber, 15, 2);
   DBGRESTIPASO.ColumnByName('IMPPERACT').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(IMPPERACT)',''))), ffNumber, 15, 2);
   DBGRESTIPASO.ColumnByName('IMPAPLINV').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(IMPAPLINV)',''))), ffNumber, 15, 2);
   DBGRESTIPASO.ColumnByName('IMPAPLFAL').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(IMPAPLFAL)',''))), ffNumber, 15, 2);
   DBGRESTIPASO.ColumnByName('IMPSALFIN').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(IMPSALFIN)',''))), ffNumber, 15, 2);


   DBGDISFLATFSC.Selected.Clear;
   DBGDISFLATFSC.Selected.Add('FORPAG'#9'8'#9'Tipo~de~Pago'#9#9);
   DBGDISFLATFSC.Selected.Add('FPDPER'#9'12'#9'Dist.TFPD~Para el~FPD'#9#9);
   DBGDISFLATFSC.ApplySelected;

   TNumericField(DM1.cdsMGrupo.FieldByName('FPDPER')).DisplayFormat := '#,##0.00';

   DBGDISFLATFSC.ColumnByName('FPDPER').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsMGrupo, 'SUM(FPDPER)',''))), ffNumber, 15, 2);

end;



procedure TFSaldoFPD.LimpiaPantalla;
var
   xSQL : String;
begin
   //Primero verifico si exixte informacion para el periodo
   xSQL:='SELECT a.periodo, a.asotipid, b.asotipdes, nvl(a.impperant,0)+nvl(a.impajucon,0) impperant, '
       +       'a.impperact, a.impaplinv, a.impaplfal, a.impsalfin, a.USUARIO, a.OBSERVACION, TO_CHAR(FECPRODAT,''DD/MM/YYYY'') FECPRODAT '
       +  'FROM db2admin.COB_FPD_TIP_ASO_RESUMEN A, APO107 B '
       + 'WHERE PERIODO=''222222'' AND A.ASOTIPID=B.ASOTIPID '
       + 'ORDER BY B.ASOTIPDES ';
   dm1.cdsUtilidades.Close;
   dm1.cdsUtilidades.DataRequest(XSQL);
   dm1.cdsUtilidades.Open;

   lblfecha.Caption     := '';
   lblUsuProcesa.Caption:= '';
   menObs.Text          := '';


   xSQL:='SELECT A.FORPAG, B.FORPAGODES, A.fpdper '
        +  'FROM COB_FPD_FOR_PAG_RESUMEN A,COB101 B '
        + 'WHERE PERIODO=''222222'' '
        +  ' AND A.forpag=B.FORPAGOABR';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(XSQL);
   DM1.cdsMGrupo.Open;
   TNumericField(dm1.cdsMGrupo.fieldbyname('fpdper')).DisplayFormat := '###,###,###.#0';

   DBGRESTIPASO.DataSource := dm1.dsUtilidades;
   DBGDISFLATFSC.DataSource:= dm1.dsMGrupo;

   DBGRESTIPASO.ColumnByName('IMPPERANT').FooterValue := '0.00';
   DBGRESTIPASO.ColumnByName('IMPPERACT').FooterValue := '0.00';
   DBGRESTIPASO.ColumnByName('IMPAPLINV').FooterValue := '0.00';
   DBGRESTIPASO.ColumnByName('IMPAPLFAL').FooterValue := '0.00';
   DBGRESTIPASO.ColumnByName('IMPSALFIN').FooterValue := '0.00';

   DBGDISFLATFSC.ColumnByName('FPDPER').FooterValue   := '0.00';
end;

procedure TFSaldoFPD.sbMesChange(Sender: TObject);
begin
  LimpiaPantalla;
  MuestraGrid;
end;

procedure TFSaldoFPD.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFSaldoFPD.btnAExcelClick(Sender: TObject);
Var
   xArchivo: String;
Begin

   If Length(trim(xgrid)) = 0 Then
   Begin
      ShowMessage('Debe seleccionar uno de los cuadros de la pantalla.');
      exit;
   End;

   If XGRID = '1' Then
   Begin
      If DM1.cdsUtilidades.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      MuestraGridToExcel;
      xArchivo := 'FPDTIPASO' + sbAno.Text + sbMes.Text;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(DBGRESTIPASO, xArchivo);
      MuestraGrid;
   End;

   If XGRID = '2' Then
   Begin
      If DM1.cdsMGrupo.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      xArchivo := 'FPDFORPAG' + sbAno.Text + sbMes.Text;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(DBGDISFLATFSC, xArchivo);
   End;

end;


procedure TFSaldoFPD.MuestraGridToExcel;
begin
   DBGRESTIPASO.Selected.Clear;
   DBGRESTIPASO.Selected.Add('ASOTIPID'#9'8'#9'Tipo~Asociado'#9#9);
   DBGRESTIPASO.Selected.Add('IMPPERANT'#9'15'#9'(a) Saldo FPD~Periodo Anterior');
   DBGRESTIPASO.Selected.Add('IMPPERACT'#9'15'#9'(b) Dist.TFPD~para el FPD~(COBRANZAS)');
   DBGRESTIPASO.Selected.Add('IMPAPLINV'#9'15'#9'(c) Creditos Aplicados~Con FPD-Invalidez');
   DBGRESTIPASO.Selected.Add('IMPAPLFAL'#9'15'#9'(d) Creditos Aplicados~Con FPD-Fallecim.');
   DBGRESTIPASO.Selected.Add('IMPSALFIN'#9'15'#9'(a + b) - (c + d)~Nuevo Saldo~FPD');
   DBGRESTIPASO.ApplySelected;
end;



procedure TFSaldoFPD.DBGDISFLATFSCEnter(Sender: TObject);
begin
   If DBGDISFLATFSC.Focused Then XGRID := '2';
end;

procedure TFSaldoFPD.DBGRESTIPASOEnter(Sender: TObject);
begin
   If DBGRESTIPASO.Focused Then XGRID := '1';
end;

procedure TFSaldoFPD.BitBtn2Click(Sender: TObject);
Var
   xMesant, xAnoant: integer;

Begin
   If dm1.cdsQry.RecordCount <= 0 Then
   Begin
      ShowMessage('No existe información para Imprimir.');
      exit;
   End;

   xMesant := StrToInt(sbMes.Text) - 1;
   xAnoant := StrToInt(sbAno.Text);
   If xMesant = 0 Then
   Begin
      xMesant := 12;
      xAnoant := StrToInt(sbAno.Text) - 1;
   End;
   pplblPeriodo2.Caption := '(Periodo ' + sbAno.Text + '-' + sbMes.Text + ')';
   pplblPeriodo3.Caption := '(Periodo ' + sbAno.Text + '-' + sbMes.Text + ')';
   pplblSubtitulo1.Caption := 'Periodo ' + sbAno.Text + '-' + sbMes.Text;
   pplblSubtitulo2.Caption := IntToStr(xAnoant) + '-' + dm1.StrZero(IntToStr(xMesant), 2);
   pplblfechaproceso.Caption := dm1.cdsUtilidades.fieldbyname('fecprodat').AsString;
   pplblusuario.Caption := dm1.wUsuario;
   pplblUsuarioProceso.Caption := dm1.cdsUtilidades.fieldbyname('Usuario').AsString;
   ppREPRESAPLFSC.Print;
   ppREPRESAPLFSC.Stop;
end;

end.



