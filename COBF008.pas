// Inicio Uso Estándares     : 01/08/2011
// Unidad                    : COBF008
// Formulario                : fRepResDisFlatFSC
// Fecha de Creación         : 08/08/2011
// Autor                     : Ricardo Medina Zavaleta
// Objetivo                  : Se crea el reporte Saldo para el Fondo Solidario
//                             de Contingencia
// Equipo Solicitante        : Cobranzas
// N° de Pase a Calidad      : HPC_201127_COB
// N° de Pase a Producción   : HPP_201123_COB
// N° de Pase a Calidad      : HPC_201131_COB Según Memo 188-2011-DM-CONT, Actulizar Saldos del FSC para el peridod Octubre 2011
// N° de Pase a Producción   : HPP_201126_COB
// N° de Pase a Calidad      : HPC_201210_COB Segun Memo N° 244-2012-DM-COB
// N° de Pase a Producción   : DPP_201207_COB realizado apartir del pase HPC_201210_COB
// N° de Pase a Calidad      : HPC_201523_COB Mensaje y restricción para el reproceso Saldos del FSC
// HPC_201807_COB            : Cambios en los reportes estadísticos del FSC

Unit COBF008;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, ppParameter, ppCtrls,
   ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache,
   ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, DB, DBClient, Grids, Wwdbigrd,
   Wwdbgrid, Mask, wwdbedit, Wwdbspin, ppRichTx;

Type
   TfRepResDisFlatFSC = Class(TForm)
      Label1: TLabel;
      GroupBox1: TGroupBox;
      Label3: TLabel;
      btnFiltrar: TBitBtn;
      DSRESTIPASO: TDataSource;
      CDSRESTIPASO: TClientDataSet;
      DSRESTIPPAGO: TDataSource;
      CDSRESTIPPAGO: TClientDataSet;
      dbpRESTIPASO: TppDBPipeline;
      dbpRESTIPPAGO: TppDBPipeline;
      ppREPRESAPLFSC: TppReport;
      ppParameterList1: TppParameterList;
      sbAno: TwwDBSpinEdit;
      sbMes: TwwDBSpinEdit;
      chkProcesa: TCheckBox;
      GroupBox4: TGroupBox;
      Label2: TLabel;
      Label4: TLabel;
      GroupBox5: TGroupBox;
 //Inicio: DPP_201207_COB
  //GroupBox6: TGroupBox;
 //Fin: DPP_201207_COB
      GroupBox7: TGroupBox;
      Label5: TLabel;
 //Inicio: DPP_201207_COB
  //Label6: TLabel;
 //Fin: DPP_201207_COB
      DBGRESTIPASO: TwwDBGrid;
      DBGRESTIPPAGO: TwwDBGrid;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
      lblfecha: TLabel;
      lblUsuProcesa: TLabel;
      menObs: TMemo;
      btnAExcel: TBitBtn;
      DBG1: TwwDBGrid;
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
      ppLabel31: TppLabel;
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
      ppDBText12: TppDBText;
      ppLine3: TppLine;
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
      ppShape17: TppShape;
      ppLabel20: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel38: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppShape19: TppShape;
      ppShape20: TppShape;
      ppShape21: TppShape;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppLine1: TppLine;
      ppSummaryBand2: TppSummaryBand;
      ppShape28: TppShape;
      ppShape27: TppShape;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppShape18: TppShape;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppSubReport2: TppSubReport;
      ppChildReport2: TppChildReport;
      ppTitleBand2: TppTitleBand;
      ppDetailBand3: TppDetailBand;
      ppSummaryBand3: TppSummaryBand;
      ppShape26: TppShape;
      ppShape29: TppShape;
      ppShape30: TppShape;
      ppLabel21: TppLabel;
      ppLabel35: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppShape31: TppShape;
      ppShape32: TppShape;
      ppShape33: TppShape;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppLine4: TppLine;
      ppShape34: TppShape;
      ppShape35: TppShape;
      ppDBCalc6: TppDBCalc;
      ppDBCalc9: TppDBCalc;
      DSRESFLATTPAGO: TDataSource;
      CDSRESFLATTPAGO: TClientDataSet;
      dbpRESFLATTIPPAGO: TppDBPipeline;
      pplblPeriodo3: TppLabel;
      pplblPeriodo4: TppLabel;
      DBGDISFLATFSC: TwwDBGrid;
      ppShape36: TppShape;
      ppShape37: TppShape;
      ppShape38: TppShape;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppDBText17: TppDBText;
      ppDBCalc10: TppDBCalc;
      ppLabel45: TppLabel;
      pplblPeriodo2: TppLabel;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      ppLabel51: TppLabel;
      ppDBRichText1: TppDBRichText;
//Inicio: DPP_201207_COB
      ppREPRESAPLFSCOLD: TppReport;
      ppParameterList2: TppParameterList;
      ppHeaderBand2: TppHeaderBand;
      ppLabel52: TppLabel;
      ppLabel53: TppLabel;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel58: TppLabel;
      ppLabel59: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppLabel65: TppLabel;
      ppShape39: TppShape;
      pplblSubtitulo2b: TppLabel;
      ppShape40: TppShape;
      pplblSubtitulo1b: TppLabel;
      ppLabel68: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      pplblPeriodo2b: TppLabel;
      ppLabel72: TppLabel;
      ppDetailBand4: TppDetailBand;
      ppShape41: TppShape;
      ppShape42: TppShape;
      ppShape43: TppShape;
      ppShape44: TppShape;
      ppShape45: TppShape;
      ppShape46: TppShape;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppLine5: TppLine;
      ppDBText23: TppDBText;
      ppLine6: TppLine;
      ppFooterBand2: TppFooterBand;
      ppLabel73: TppLabel;
      ppLabel74: TppLabel;
      ppLabel75: TppLabel;
      pplblusuariob: TppLabel;
      pplblfechaprocesob: TppLabel;
      pplblUsuarioProcesob: TppLabel;
      ppLabel79: TppLabel;
      ppLabel80: TppLabel;
      ppSummaryBand4: TppSummaryBand;
      ppShape47: TppShape;
      ppShape48: TppShape;
      ppShape49: TppShape;
      ppShape50: TppShape;
      ppSubReport3: TppSubReport;
      ppChildReport3: TppChildReport;
      ppTitleBand3: TppTitleBand;
      ppShape51: TppShape;
      ppShape52: TppShape;
      ppShape53: TppShape;
      ppLabel81: TppLabel;
      ppLabel82: TppLabel;
      ppLabel83: TppLabel;
      ppLabel84: TppLabel;
      ppLabel85: TppLabel;
      ppLabel86: TppLabel;
      pplblPeriodo3b: TppLabel;
      ppShape54: TppShape;
      ppLabel88: TppLabel;
      ppLabel89: TppLabel;
      ppLabel90: TppLabel;
      ppLabel91: TppLabel;
      ppLabel92: TppLabel;
      ppLabel93: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppShape55: TppShape;
      ppShape56: TppShape;
      ppShape57: TppShape;
      ppDBText24: TppDBText;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppLine7: TppLine;
      ppShape58: TppShape;
      ppDBText28: TppDBText;
      ppSummaryBand5: TppSummaryBand;
      ppShape59: TppShape;
      ppShape60: TppShape;
      ppShape61: TppShape;
      ppDBCalc11: TppDBCalc;
      ppShape62: TppShape;
      ppDBCalc12: TppDBCalc;
      ppDBCalc13: TppDBCalc;
      ppDBCalc14: TppDBCalc;
      ppDBCalc15: TppDBCalc;
      ppDBCalc16: TppDBCalc;
      ppSubReport4: TppSubReport;
      ppChildReport4: TppChildReport;
      ppTitleBand4: TppTitleBand;
      ppShape63: TppShape;
      ppShape64: TppShape;
      ppShape65: TppShape;
      ppLabel94: TppLabel;
      ppLabel95: TppLabel;
      ppLabel96: TppLabel;
      ppLabel97: TppLabel;
      ppLabel98: TppLabel;
      ppLabel99: TppLabel;
      pplblPeriodo4b: TppLabel;
      ppLabel101: TppLabel;
      ppDetailBand6: TppDetailBand;
      ppShape66: TppShape;
      ppShape67: TppShape;
      ppShape68: TppShape;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppDBText31: TppDBText;
      ppDBText32: TppDBText;
      ppLine8: TppLine;
      ppSummaryBand6: TppSummaryBand;
      ppShape69: TppShape;
      ppShape70: TppShape;
      ppDBCalc17: TppDBCalc;
      ppDBCalc18: TppDBCalc;
      ppDBRichText1b: TppDBRichText;
//Fin: DPP_201207_COB
      Procedure btnFiltrarClick(Sender: TObject);
      Procedure DBGRESTIPASODrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure DBGRESTIPASOCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure DBGRESTIPPAGOCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure DBGRESTIPPAGODrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure DBGRESTIPASOAfterDrawCell(Sender: TwwCustomDBGrid;
         DrawCellInfo: TwwCustomDrawGridCellInfo);
      Procedure DBGRESTIPASOCellChanged(Sender: TObject);
      Procedure DBGRESTIPPAGOAfterDrawCell(Sender: TwwCustomDBGrid;
         DrawCellInfo: TwwCustomDrawGridCellInfo);
      Procedure DBGRESTIPPAGOCellChanged(Sender: TObject);
      Procedure btnAExcelClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure DBGDISFLATFSCCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure DBGDISFLATFSCDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure sbAnoChange(Sender: TObject);
      Procedure sbMesChange(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure DBGDISFLATFSCAfterDrawCell(Sender: TwwCustomDBGrid;
         DrawCellInfo: TwwCustomDrawGridCellInfo);
      Procedure DBGDISFLATFSCCellChanged(Sender: TObject);
      Procedure sbMesExit(Sender: TObject);
   Private
    { Private declarations }
      Procedure actfootresporaso();
   Public
      XFECHA, XGRID: String;
    { Public declarations }
   End;

Var
   fRepResDisFlatFSC: TfRepResDisFlatFSC;

Implementation

Uses COBDM1;

{$R *.dfm}

//Actualiza footer por asociado

Procedure TfRepResDisFlatFSC.actfootresporaso;
Var
   Vflatperant, Vflatperact, Vaplfscper, Vdevfscper, Vsalflafsc: Currency;
   B: TBookmark;
Begin
 //Guardo la posicion
   B := DM1.cdsQry.GetBookmark;
   DM1.cdsQry.DisableControls;
   DM1.cdsQry.First;
   Vflatperant := 0;
   Vflatperact := 0;
   Vaplfscper := 0;
   Vdevfscper := 0;
   Vsalflafsc := 0;
   While Not DM1.cdsQry.Eof Do
   Begin
      Vflatperant := Vflatperant + DM1.cdsQry.FIELDBYNAME('flatperant').ASCURRENCY;
      Vflatperact := Vflatperact + DM1.cdsQry.FIELDBYNAME('flatperact').ASCURRENCY;
      Vaplfscper := Vaplfscper + DM1.cdsQry.FIELDBYNAME('aplfscper').ASCURRENCY;
      Vdevfscper := Vdevfscper + DM1.cdsQry.FIELDBYNAME('devfscper').ASCURRENCY;
      Vsalflafsc := Vsalflafsc + DM1.cdsQry.FIELDBYNAME('salflafsc').ASCURRENCY;
      Dm1.cdsQry.Next;
   End;

   DBGRESTIPASO.ColumnByName('flatperant').FooterValue := FormatCurr('##,###,##0.#0', Vflatperant);
   DBGRESTIPASO.ColumnByName('flatperact').FooterValue := FormatCurr('##,###,##0.#0', Vflatperact);
   DBGRESTIPASO.ColumnByName('aplfscper').FooterValue := FormatCurr('##,###,##0.#0', Vaplfscper);
   DBGRESTIPASO.ColumnByName('devfscper').FooterValue := FormatCurr('##,###,##0.#0', Vdevfscper);
   DBGRESTIPASO.ColumnByName('salflafsc').FooterValue := FormatCurr('##,###,##0.#0', Vsalflafsc);

  //Me posiciono nuevamente en el posicion marcada
   DM1.cdsQry.GotoBookmark(B);
   DM1.cdsQry.EnableControls;
   DM1.cdsQry.FreeBookmark(B);
End;

Procedure TfRepResDisFlatFSC.btnFiltrarClick(Sender: TObject);
Var
   XSQL, vdPrimdia, vMenObs: String;
   vEXCESOS, vPAGOS, vFlatper, vFlatporc: currency;
    //Inicio: DPP_201207_COB
   vOrden: Integer;
    //Fin: DPP_201207_COB
Begin

   menObs.Text := '';
   CDSRESTIPPAGO.EmptyDataSet;
   CDSRESFLATTPAGO.EmptyDataSet;
   DM1.cdsQry.EmptyDataSet;
   sbMes.Text := DM1.StrZero(sbMes.Text, 2);

   If (dm1.Valores(sbAno.Text) = 0) Or (dm1.Valores(sbMes.Text) = 0) Then
   Begin
      ShowMessage('Parametros incorrectos..?');
      exit;
   End;

   If chkProcesa.Checked Then
   Begin
   //Inicio: DPP_201207_COB
      If ((dm1.Valores(sbAno.Text + sbMes.Text) >= 201111) And (dm1.Valores(sbAno.Text + sbMes.Text) <= 201203)) Then
      Begin
         ShowMessage('2011-11 al 2012-03 no se puede reprocesar, por cambios en el procedimiento de cálculo de Saldo del FSC, según Memo N°243-2012- DM-COB');
         exit;
      End;
   //Fin: DPP_201207_COB

   //Inicio: HPC_201523_COB
      If ((dm1.Valores(sbAno.Text + sbMes.Text) >= 201304) And (dm1.Valores(sbAno.Text + sbMes.Text) <= 201510)) Then
      Begin
         ShowMessage('Del 2013-04 al 2015-10 no se puede reprocesar, por cambios en el procedimiento de cálculo de Aplicaciones con el FSC, según Memo N°770-2014-DM-COB');
         exit;
      End;
   //Fin: HPC_201523_COB

      If dm1.Valores(sbAno.Text + sbMes.Text) < 201111 Then
      Begin
         ShowMessage('Del periodo 2011-01 al 2011-10 es información historica, por ello no puede reprocesar.');
         exit;
      End;

      If StrToTime(FormatDateTime('HH:mm', StrToTime(DM1.HoraSys))) <= StrToTime('17:30') Then
      Begin
         Screen.Cursor := crHourglass;
         XSQL := 'Begin SP_COB_DISTRIBUCION_FLAT_FSC(''' + sbAno.Text + sbMes.Text + ''',''' + DM1.wUsuario + '''); End;';
         dm1.DCOM1.AppServer.EjecutaSQL(xSQL);
         chkProcesa.Checked := False;
         Screen.Cursor := crDefault;
      End
      Else
      Begin
         ShowMessage('El proceso solo puede ser ejecutado a partir de las 17:30PM.');
         chkProcesa.Checked := False;
         sbAnoChange(SELF);
         Screen.Cursor := crDefault;
         exit;
      End;
   End;

   vdPrimdia := '01/' + sbMes.Text + '/' + sbAno.Text;
 //Primero verifico si exixte informacion para el periodo
   XSQL := 'SELECT a.periodo,a.flatporc,a.asotipid tipasoid,b.asotipdes,(a.flatperant+nvl(a.monajucon,0))flatperant,a.flatperact,a.aplfscper,a.devfscper,a.salflafsc,' +
      ' TO_CHAR(fecprodat,''DD/MM/YYYY'')fecprodat,TO_CHAR(last_day(''' + vdPrimdia + ''')+1,''DD/MM/YYYY'') ultdiaperiodo,a.USUARIO,a.OBSERVACION,a.OBSIMPRESION ' +
      ' FROM COB_FSC_FLAT_APL_DEV_RESUMEN A, APO107 B ' +
      ' WHERE PERIODO=''' + sbAno.Text + sbMes.Text + ''' AND A.ASOTIPID=B.ASOTIPID ORDER BY B.ASOTIPDES ';
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(XSQL);
   dm1.cdsQry.Open;

   TNumericField(dm1.cdsQry.fieldbyname('FLATPERANT')).DisplayFormat := '##,###,###.#0';
   TNumericField(dm1.cdsQry.fieldbyname('FLATPERACT')).DisplayFormat := '##,###,###.#0';
   TNumericField(dm1.cdsQry.fieldbyname('APLFSCPER')).DisplayFormat := '##,###,###.#0';
   TNumericField(dm1.cdsQry.fieldbyname('DEVFSCPER')).DisplayFormat := '##,###,###.#0';
   TNumericField(dm1.cdsQry.fieldbyname('SALFLAFSC')).DisplayFormat := '##,###,###.#0';

   If dm1.cdsQry.RecordCount = 0 Then
 //Si no esta procesado se realiza el proceso
   Begin
      If MessageDlg('No existe información procesada, desea procesar para el periodo.?', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
      Begin

     //Inicio: DPP_201207_COB
         If ((dm1.Valores(sbAno.Text + sbMes.Text) >= 201111) And (dm1.Valores(sbAno.Text + sbMes.Text) <= 201203)) Then
         Begin
            ShowMessage('2011-11 al 2012-03 no se puede reprocesar, por cambios en el procedimiento de cálculo de Saldo del FSC, según Memo N°243-2012- DM-COB');
            exit;
         End;
     //Fin: DPP_201207_COB

     //Inicio: HPC_201523_COB
      If ((dm1.Valores(sbAno.Text + sbMes.Text) >= 201304) And (dm1.Valores(sbAno.Text + sbMes.Text) <= 201510)) Then
      Begin
         ShowMessage('Del 2013-04 al 2015-10 no se puede reprocesar, por cambios en el procedimiento de cálculo de Aplicaciones con el FSC, según Memo N°770-2014-DM-COB');
         exit;
      End;
     //Fin: HPC_201523_COB

         If dm1.Valores(sbAno.Text + sbMes.Text) < 201111 Then
         Begin
            ShowMessage('Del periodo 2011-01 al 2011-10 es información historica, por ello no puede reprocesar.');
            exit;
         End;

         If StrToTime(FormatDateTime('HH:mm', StrToTime(DM1.HoraSys))) >= StrToTime('17:30') Then
         Begin
            Screen.Cursor := crHourglass;
            XSQL := 'Begin SP_COB_DISTRIBUCION_FLAT_FSC(''' + sbAno.Text + sbMes.Text + ''',''' + DM1.wUsuario + '''); End;';
            dm1.DCOM1.AppServer.EjecutaSQL(xSQL);
            Screen.Cursor := crDefault;
         End
         Else
         Begin
            ShowMessage('El proceso solo puede ser ejecutado a partir de las 17:30PM.');
            chkProcesa.Checked := False;
            sbAnoChange(SELF);
            exit;
            Screen.Cursor := crDefault;
         End;

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

      DBGRESTIPASO.DataSource := dm1.dsQry;
      DBG1.DataSource := dm1.dsQry;
      actfootresporaso;
   End;

   If Dm1.cdsQry.RecordCount = 0 Then
   Begin
      DM1.cdsQry.EmptyDataSet;
      CDSRESTIPPAGO.EmptyDataSet;
      lblfecha.Caption := '';
      lblUsuProcesa.Caption := '';
      actfootresporaso;
   End;

 //Resumenes
   If dm1.cdsQry.RecordCount > 0 Then
   Begin

      lblfecha.Caption := DateToStr(dm1.cdsQry.fieldbyname('FECPRODAT').AsDateTime);
      lblUsuProcesa.Caption := dm1.cdsQry.fieldbyname('USUARIO').AsString;
      menObs.Text := dm1.cdsQry.fieldbyname('OBSERVACION').AsString + ' ' + vMenObs;

   //Inicio HPC_201807_COB: se añade las devoluciones al FSC por extorno
   //Filtro los excesos por devoluciones al FSC por tipo de pago
      XSQL := 'SELECT A.FORPAGABR,NVL(B.FORPAGODES,''EXTORNOS FSC'') FORPAGODES,SUM(NVL(DEVFSCPER,0))PAGOS,SUM(NVL(EXCESOS,0)) EXCESOS,SUM(NVL(EXCESOSDEV,0)) EXCESOSDEV ' +
         'FROM ' +
         '( ' +
         'SELECT FORPAGABR,DEVFSCPER,0 EXCESOS,0 EXCESOSDEV FROM COB_FSC_DEV_AL_FSC_RESUMEN WHERE PERIODO=''' + sbAno.Text + sbMes.Text + ''' AND TIPODATO=''DEVFSC'' ' +
         'UNION ALL ' +
         'SELECT FORPAGABR,0 DEVFSCPER, SUM(CASE WHEN NUM_DEV_EXC IS NULL THEN NVL(IMP_EXC_DEU,0)END) EXCESOS,0 EXCESOSDEV ' +
         'FROM cob_fsc_pagos_al_fsc ' +
         'WHERE to_char(FEC_CRE_COB_FSC,''YYYYMM'')=''' + sbAno.Text + sbMes.Text + ''' AND  ' +
         'EST_COB_COD NOT  IN (''13'',''04'',''99'') AND  ' +
         'NUM_DEV_EXC IS NULL GROUP BY FORPAGABR  ' +
         'UNION ALL ' +
         'SELECT FORPAGABR,0 DEVFSCPER,0 EXCESOS,SUM(CASE WHEN NUM_DEV_EXC IS NOT NULL THEN NVL(IMP_EXC_DEU,0)END) EXCESOSDEV ' +
         'FROM cob_fsc_pagos_al_fsc ' +
         'WHERE to_char(FEC_CRE_COB_FSC,''YYYYMM'')=''' + sbAno.Text + sbMes.Text + ''' AND  ' +
         'EST_COB_COD NOT  IN (''13'',''04'',''99'') AND  ' +
         'NUM_DEV_EXC IS NOT NULL GROUP BY FORPAGABR  ' +
    //Inicio: DPP_201207_COB
    //    ') A,COB101 B '+
      ') A,(SELECT FORPAGODES,FORPAGOABR FROM COB101 WHERE FORPAGOID <>''33'') B ' +
    //Fin: DPP_201207_COB
      'WHERE A.FORPAGABR=B.FORPAGOABR(+)' +
         'GROUP BY A.FORPAGABR,B.FORPAGODES ';
   //Fin HPC_201807_COB
      DM1.cdsMGrupo.Close;
      DM1.cdsMGrupo.DataRequest(XSQL);
      DM1.cdsMGrupo.Open;
      TNumericField(CDSRESTIPPAGO.fieldbyname('EXCPORDEV')).DisplayFormat := '###,###,###.#0';
      TNumericField(CDSRESTIPPAGO.fieldbyname('DEVALFSC')).DisplayFormat := '###,###,###.#0';

   //ACTUALIZA EL CDS RESUMEN DE  DEVOLUCIONES /EXCESOS AL FSC POR TIPO DE PAGO
      DM1.cdsMGrupo.First;
      CDSRESTIPPAGO.EmptyDataSet;

      vEXCESOS := 0;
      vPAGOS := 0;
     //Inicio: DPP_201207_COB
      vOrden := 1;
     //Fin: DPP_201207_COB
      While Not Dm1.cdsMGrupo.Eof Do
      Begin
         CDSRESTIPPAGO.Append;
     //Inicio: DPP_201207_COB
//Inicio HPC_201807_COB: se añade las devoluciones al FSC por extorno
         If(Dm1.cdsMGrupo.FieldByName('FORPAGABR').AsString <> 'DEV') AND
           (Dm1.cdsMGrupo.FieldByName('FORPAGABR').AsString <> 'EXT') Then
//Fin HPC_201807_COB
         Begin
            CDSRESTIPPAGO.FieldByName('ORDEN').AsInteger := vOrden;
            CDSRESTIPPAGO.FieldByName('GRUPO').Asstring := 'A';
         End
         Else
         Begin
            CDSRESTIPPAGO.FieldByName('ORDEN').AsInteger := Dm1.cdsMGrupo.RecordCount + 1;
            CDSRESTIPPAGO.FieldByName('GRUPO').Asstring := 'B';
         End;
     //Fin: DPP_201207_COB
         CDSRESTIPPAGO.FieldByName('TIPPAGO').AsString := DM1.cdsMGrupo.FieldByname('FORPAGABR').AsString;
         CDSRESTIPPAGO.FieldByName('FORPAGODES').AsString := DM1.cdsMGrupo.FieldByname('FORPAGODES').AsString;
         CDSRESTIPPAGO.FieldByName('EXCPORDEV').AsCurrency := DM1.cdsMGrupo.FieldByname('EXCESOS').AsCurrency;
         CDSRESTIPPAGO.FieldByName('EXCDEVUELTO').AsCurrency := DM1.cdsMGrupo.FieldByname('EXCESOSDEV').AsCurrency;
         CDSRESTIPPAGO.FieldByName('DEVALFSC').AsCurrency := DM1.cdsMGrupo.FieldByname('PAGOS').AsCurrency;
         vEXCESOS := vEXCESOS + CDSRESTIPPAGO.FieldByName('EXCPORDEV').AsCurrency;
         vPAGOS := vPAGOS + CDSRESTIPPAGO.FieldByName('DEVALFSC').AsCurrency;
     //Inicio: DPP_201207_COB
         vOrden := vOrden + 1;
     //Fin: DPP_201207_COB
         Dm1.cdsMGrupo.Next;
      End;
      DBGRESTIPPAGO.ColumnByName('EXCPORDEV').FooterValue := FormatFloat('###,###.#0', vEXCESOS);
      DBGRESTIPPAGO.ColumnByName('DEVALFSC').FooterValue := FormatFloat('###,###.#0', vPAGOS);
    //Inicio: DPP_201207_COB
      CDSRESTIPPAGO.IndexFieldNames := 'orden';
    //Fin: DPP_201207_COB

    //Filto Flat cobrados en el periodo popr tipo de pago
      Xsql := 'SELECT A.FORPAGABR,B.FORPAGODES,A.FLATPER,A.FLATPORC FROM COB_FSC_DEV_AL_FSC_RESUMEN A,COB101 B ' +
         'WHERE PERIODO=''' + sbAno.Text + sbMes.Text + ''' AND TIPODATO=''COBFLAT''  AND A.FORPAGABR=B.FORPAGOABR ';
      DM1.cdsMGrupo.Close;
      DM1.cdsMGrupo.DataRequest(XSQL);
      DM1.cdsMGrupo.Open;
      TNumericField(CDSRESFLATTPAGO.fieldbyname('FLATPORC')).DisplayFormat := '###,###,###.#0';
    //Actualiza el CDS con la data filtrada
      vFlatper := 0;
      vFlatporc := 0;
      While Not Dm1.cdsMGrupo.Eof Do
      Begin
         CDSRESFLATTPAGO.Append;
         CDSRESFLATTPAGO.FieldByName('TIPPAGO').AsString := DM1.cdsMGrupo.FieldByname('FORPAGABR').AsString;
         CDSRESFLATTPAGO.FieldByName('FORPAGODES').AsString := DM1.cdsMGrupo.FieldByname('FORPAGODES').AsString;
         CDSRESFLATTPAGO.FieldByName('FLATPER').AsCurrency := DM1.cdsMGrupo.FieldByname('FLATPER').AsCurrency;
         CDSRESFLATTPAGO.FieldByName('FLATPORC').AsCurrency := DM1.cdsMGrupo.FieldByname('FLATPORC').AsCurrency;
         vFlatper := vflatper + DM1.cdsMGrupo.FieldByname('FLATPER').AsCurrency;
         vFlatporc := vFlatporc + DM1.cdsMGrupo.FieldByname('FLATPORC').AsCurrency;
         Dm1.cdsMGrupo.Next;
      End;
      DBGDISFLATFSC.ColumnByName('FLATPORC').FooterValue := FormatFloat('###,###.#0', vFlatporc);

   End;

End;

Procedure TfRepResDisFlatFSC.DBGRESTIPASODrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

   If Field.DisplayName = 'Tipo~Asociado' Then
   Begin
      DBGRESTIPASO.Canvas.Brush.Color := clYellow;
      DBGRESTIPASO.DefaultDrawDataCell(Rect, Field, State);
   End;

   If Field.DisplayName = '(a) Saldo FSC~del~Per. anteriro' Then
   Begin
      DBGRESTIPASO.Canvas.Brush.Color := $0080FF80;
      DBGRESTIPASO.DefaultDrawDataCell(Rect, Field, State);
   End;

   If Field.DisplayName = '(a + b + c) - d~Nuevo Saldo~FSC' Then
   Begin
      DBGRESTIPASO.Canvas.Brush.Color := $0080FF80;
      DBGRESTIPASO.DefaultDrawDataCell(Rect, Field, State);
   End;

End;

Procedure TfRepResDisFlatFSC.BitBtn2Click(Sender: TObject);
Var
   xMesant, xAnoant: integer;

Begin
   If dm1.cdsQry.RecordCount <= 0 Then
   Begin
      ShowMessage('No existe información para Imprimir.');
      exit;
   End;

// Inicio: DPP_201207_COB
{
  If Length(trim(menObs.Text))>0 then
  begin
//Inicio: HPP_201126_COB
   // lblObservacion.Visible  := True;
   // lblObservacion.Caption := menObs.Text;
   // lblNota.Visible := True;
//Fin: HPP_201126_COB
  end
  Else
  begin
//Inicio: HPP_201126_COB
   // lblObservacion.Visible  := False;
   // lblNota.Visible := False;
//Fin: HPP_201126_COB
  end;
}
// Fin: DPP_201207_COB

   xMesant := StrToInt(sbMes.Text) - 1;
   xAnoant := StrToInt(sbAno.Text);
   If xMesant = 0 Then
   Begin
      xMesant := 12;
      xAnoant := StrToInt(sbAno.Text) - 1;
   End;
   pplblPeriodo2.Caption := '(Periodo ' + sbAno.Text + '-' + sbMes.Text + ')';
   pplblPeriodo3.Caption := '(Periodo ' + sbAno.Text + '-' + sbMes.Text + ')';
   pplblPeriodo4.Caption := '(Periodo ' + sbAno.Text + '-' + sbMes.Text + ')';
   pplblSubtitulo1.Caption := 'Periodo ' + sbAno.Text + '-' + sbMes.Text;
   pplblSubtitulo2.Caption := IntToStr(xAnoant) + '-' + dm1.StrZero(IntToStr(xMesant), 2);
   pplblfechaproceso.Caption := dm1.cdsQry.fieldbyname('fecprodat').AsString;
   pplblusuario.Caption := dm1.wUsuario;
   pplblUsuarioProceso.Caption := dm1.cdsQry.fieldbyname('Usuario').AsString;

   //Inicio: DPP_201207_COB
   pplblPeriodo2b.Caption := '(Periodo ' + sbAno.Text + '-' + sbMes.Text + ')';
   pplblPeriodo3b.Caption := '(Periodo ' + sbAno.Text + '-' + sbMes.Text + ')';
   pplblPeriodo4b.Caption := '(Periodo ' + sbAno.Text + '-' + sbMes.Text + ')';
   pplblSubtitulo1b.Caption := 'Periodo ' + sbAno.Text + '-' + sbMes.Text;
   pplblSubtitulo2b.Caption := IntToStr(xAnoant) + '-' + dm1.StrZero(IntToStr(xMesant), 2);
   pplblfechaprocesob.Caption := dm1.cdsQry.fieldbyname('fecprodat').AsString;
   pplblusuariob.Caption := dm1.wUsuario;
   pplblUsuarioProcesob.Caption := dm1.cdsQry.fieldbyname('Usuario').AsString;

   If ((dm1.Valores(sbAno.Text + sbMes.Text) >= 201111) And
      (dm1.Valores(sbAno.Text + sbMes.Text) <= 201202)) Then
   Begin
      ppREPRESAPLFSCOLD.Print;
      ppREPRESAPLFSCOLD.Stop;
   End
   Else
   Begin
      ppREPRESAPLFSC.Print;
      ppREPRESAPLFSC.Stop;
   End;
   //Fin: DPP_201207_COB

End;

Procedure TfRepResDisFlatFSC.DBGRESTIPASOCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
   If Highlight Then
   Begin
      If (Field.DisplayName = '(a) Saldo FSC~del~Per. anteriro') Or
         (Field.DisplayName = 'Tipo~Asociado') Or
         (Field.DisplayName = '(a + b + c) - d~Nuevo Saldo~FSC') Then
         AFont.Color := clBlack;
   End;
End;

Procedure TfRepResDisFlatFSC.DBGRESTIPPAGOCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
   If Highlight Then
   Begin
      If (Field.DisplayName = 'Tipo~de~Pago') Then
         AFont.Color := clBlack;
   End;
End;

Procedure TfRepResDisFlatFSC.DBGRESTIPPAGODrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   //Inicio HPC_201807_COB: Cambios en los reportes estadísticos del FSC
   If Field.DisplayName = 'Tipo~de~Pago' Then
   Begin
      If CDSRESTIPPAGO.FieldByName('TIPPAGO').AsString <> 'EXT' Then
         DBGRESTIPPAGO.Canvas.Brush.Color := clYellow
      Else
         DBGRESTIPPAGO.Canvas.Brush.Color := clRed;
      DBGRESTIPPAGO.DefaultDrawDataCell(Rect, Field, State);
   End;
   //Fin HPC_201807_COB

    //Inicio: DPP_201207_COB
   If CDSRESTIPPAGO.FieldByName('DEVALFSC').AsCurrency < 0 Then
   Begin
      DBGRESTIPPAGO.Canvas.Font.Color := clRed;
      DBGRESTIPPAGO.DefaultDrawDataCell(Rect, Field, State);
   End;
    //Fin: DPP_201207_COB

End;

Procedure TfRepResDisFlatFSC.DBGRESTIPASOAfterDrawCell(
   Sender: TwwCustomDBGrid; DrawCellInfo: TwwCustomDrawGridCellInfo);
Begin
   If DBGRESTIPASO.Focused Then XGRID := '1';
End;

Procedure TfRepResDisFlatFSC.DBGRESTIPASOCellChanged(Sender: TObject);
Begin
   If DBGRESTIPASO.Focused Then XGRID := '1';
End;

Procedure TfRepResDisFlatFSC.DBGRESTIPPAGOAfterDrawCell(
   Sender: TwwCustomDBGrid; DrawCellInfo: TwwCustomDrawGridCellInfo);
Begin
   If DBGRESTIPPAGO.Focused Then XGRID := '2';
End;

Procedure TfRepResDisFlatFSC.DBGRESTIPPAGOCellChanged(Sender: TObject);
Begin
   If DBGRESTIPPAGO.Focused Then XGRID := '2';
End;

Procedure TfRepResDisFlatFSC.btnAExcelClick(Sender: TObject);
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
      If DM1.cdsQry.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      xArchivo := 'RESAPLFSC1' + sbAno.Text + sbMes.Text;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(DBG1, xArchivo);
   End;

   If XGRID = '2' Then
   Begin
      If CDSRESTIPPAGO.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      xArchivo := 'RESAPLFSC2' + sbAno.Text + sbMes.Text;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(DBGRESTIPPAGO, xArchivo);
   End;

   If XGRID = '3' Then
   Begin
      If CDSRESFLATTPAGO.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      xArchivo := 'RESAPLFSC3' + sbAno.Text + sbMes.Text;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(DBGDISFLATFSC, xArchivo);
   End;

End;

Procedure TfRepResDisFlatFSC.BitBtn1Click(Sender: TObject);
Begin
   close;
End;

Procedure TfRepResDisFlatFSC.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   dm1.cdsQry.Close;
   dm1.cdsQry.IndexFieldNames := '';
   dm1.cdsMGrupo.Close;
   dm1.cdsMGrupo.IndexFieldNames := '';
End;

Procedure TfRepResDisFlatFSC.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TfRepResDisFlatFSC.DBGDISFLATFSCCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
   If Highlight Then
   Begin
      If (Field.DisplayName = 'Tipo~de~Pago') Then
         AFont.Color := clBlack;
   End;
End;

Procedure TfRepResDisFlatFSC.DBGDISFLATFSCDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If Field.DisplayName = 'Tipo~de~Pago' Then
   Begin
      DBGDISFLATFSC.Canvas.Brush.Color := clYellow;
      DBGDISFLATFSC.DefaultDrawDataCell(Rect, Field, State);
   End;
End;

Procedure TfRepResDisFlatFSC.sbAnoChange(Sender: TObject);
Begin
   CDSRESTIPPAGO.EmptyDataSet;
   CDSRESFLATTPAGO.EmptyDataSet;
   DM1.cdsQry.EmptyDataSet;
   DBGRESTIPPAGO.ColumnByName('EXCPORDEV').FooterValue := FormatFloat('###,###.#0', 0);
   DBGRESTIPPAGO.ColumnByName('DEVALFSC').FooterValue := FormatFloat('###,###.#0', 0);
   DBGDISFLATFSC.ColumnByName('FLATPORC').FooterValue := FormatFloat('###,###.#0', 0);
   DBGRESTIPASO.ColumnByName('flatperant').FooterValue := FormatCurr('##,###,##0.#0', 0);
   DBGRESTIPASO.ColumnByName('flatperact').FooterValue := FormatCurr('##,###,##0.#0', 0);
   DBGRESTIPASO.ColumnByName('aplfscper').FooterValue := FormatCurr('##,###,##0.#0', 0);
   DBGRESTIPASO.ColumnByName('devfscper').FooterValue := FormatCurr('##,###,##0.#0', 0);
   DBGRESTIPASO.ColumnByName('salflafsc').FooterValue := FormatCurr('##,###,##0.#0', 0);

End;

Procedure TfRepResDisFlatFSC.sbMesChange(Sender: TObject);
Begin
   CDSRESTIPPAGO.EmptyDataSet;
   CDSRESFLATTPAGO.EmptyDataSet;
   DM1.cdsQry.EmptyDataSet;
   DBGRESTIPPAGO.ColumnByName('EXCPORDEV').FooterValue := FormatFloat('###,###.#0', 0);
   DBGRESTIPPAGO.ColumnByName('DEVALFSC').FooterValue := FormatFloat('###,###.#0', 0);
   DBGDISFLATFSC.ColumnByName('FLATPORC').FooterValue := FormatFloat('###,###.#0', 0);
   DBGRESTIPASO.ColumnByName('flatperant').FooterValue := FormatCurr('##,###,##0.#0', 0);
   DBGRESTIPASO.ColumnByName('flatperact').FooterValue := FormatCurr('##,###,##0.#0', 0);
   DBGRESTIPASO.ColumnByName('aplfscper').FooterValue := FormatCurr('##,###,##0.#0', 0);
   DBGRESTIPASO.ColumnByName('devfscper').FooterValue := FormatCurr('##,###,##0.#0', 0);
   DBGRESTIPASO.ColumnByName('salflafsc').FooterValue := FormatCurr('##,###,##0.#0', 0);

End;

Procedure TfRepResDisFlatFSC.FormCreate(Sender: TObject);

Begin

   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest('Select * from dual');
   dm1.cdsQry.Open;
   sbAno.Text := '2011';
   sbMes.Text := '01';

End;

Procedure TfRepResDisFlatFSC.DBGDISFLATFSCAfterDrawCell(
   Sender: TwwCustomDBGrid; DrawCellInfo: TwwCustomDrawGridCellInfo);
Begin
   If DBGDISFLATFSC.Focused Then XGRID := '3';
End;

Procedure TfRepResDisFlatFSC.DBGDISFLATFSCCellChanged(Sender: TObject);
Begin
   If DBGDISFLATFSC.Focused Then XGRID := '3';
End;

Procedure TfRepResDisFlatFSC.sbMesExit(Sender: TObject);
Begin
   sbMes.Text := DM1.StrZero(sbMes.Text, 2);
   btnFiltrar.SetFocus;
End;

End.

