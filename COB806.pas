// Inicio: HPP_200913_COB F1 realizado por RMEDINA - DAD-RM-2009-0065
Unit COB806;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Wwdbdlg, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
   ComCtrls, fcButton, fcImgBtn, fcShapeBtn, wwdblook, Mask, wwdbedit,
   Wwdbspin, DB, DBClient, DBGrids, Buttons, ppComm, ppRelatv, ppProd,
   ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppDB, ppDBPipe,
   ppDBBDE, wwExport, shellapi, wwriched;

  {  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Db, DBTables, StdCtrls, DBGrids, Wwdbigrd, Wwdbgrid,
  ExtCtrls,shellapi, Buttons, ComCtrls, ToolWin, Mask, wwdbedit,
  clipbrd,wwExport, ImgList, wwclearbuttongroup, wwradiogroup, wwcheckbox,
  Wwdotdot, Wwdbcomb, Wwdatsrc, Wwquery;}

Type
   TFEstTerpCre = Class(TForm)
      GBProcesa: TGroupBox;
      Label6: TLabel;
      Label3: TLabel;
      Panel3: TPanel;
      perano: TwwDBSpinEdit;
      permes: TwwDBSpinEdit;
      dblcUProceso: TwwDBLookupCombo;
      Panel1: TPanel;
      edtUproid: TEdit;
      fcSFiltra: TfcShapeBtn;
      PCConsulta: TPageControl;
      TabSheet1: TTabSheet;
      GroupBox2: TGroupBox;
      dbgResumen1: TwwDBGrid;
      btnPrint: TfcShapeBtn;
      fcShapeBtn4: TfcShapeBtn;
      TabSheet2: TTabSheet;
      GroupBox3: TGroupBox;
      dbgDetalle1: TwwDBGrid;
      fcShapeBtn1: TfcShapeBtn;
      fcShapeBtn3: TfcShapeBtn;
      GBFiltra: TGroupBox;
      Label4: TLabel;
      dblcUpagoid: TwwDBLookupComboDlg;
      Panel6: TPanel;
      edtupagoid: TEdit;
      btnFiltra: TfcShapeBtn;
      Label1: TLabel;
      dblcResultado: TwwDBLookupCombo;
      rdb3meses: TRadioButton;
      rdb6meses: TRadioButton;
      rdb12meses: TRadioButton;
      Shape1: TShape;
      Label2: TLabel;
      Panel2: TPanel;
      fano: TwwDBSpinEdit;
      fmes: TwwDBSpinEdit;
      CDSMATRIZ: TClientDataSet;
      DSMATRIZ: TDataSource;
      PNLInforma: TPanel;
      Shape3: TShape;
      Label5: TLabel;
      lblinf1: TLabel;
      lblinf2: TLabel;
      lblinf3: TLabel;
      btnInforma: TBitBtn;
      Shape10: TShape;
      Shape11: TShape;
      Shape12: TShape;
      ppReport1: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      BDEP1: TppBDEPipeline;
      ppDBText1: TppDBText;
      fcShapeBtn2: TfcShapeBtn;
      fcShapeBtn6: TfcShapeBtn;
      fcShapeBtn7: TfcShapeBtn;
      fcShapeBtn8: TfcShapeBtn;
      BtnSeguir: TBitBtn;
      BtnCancela: TBitBtn;
      pnlResumen2: TPanel;
      dbgResumen2: TwwDBGrid;
      fcShapeBtn10: TfcShapeBtn;
      fcShapeBtn11: TfcShapeBtn;
      fcShapeBtn9: TfcShapeBtn;
      Shape2: TShape;
      Button1: TButton;
      fcShapeBtn13: TfcShapeBtn;
      BtnRetornaFiltro: TfcShapeBtn;
      Label7: TLabel;
      GroupBox1: TGroupBox;
      rdTodo: TRadioButton;
      rdDO: TRadioButton;
      rdCE: TRadioButton;
      fcShapeBtn5: TfcShapeBtn;
      pnlObservacion: TPanel;
      Shape4: TShape;
      Label8: TLabel;
      grbObservacion: TGroupBox;
      Observacion: TwwDBRichEdit;
      btnActualiza: TfcShapeBtn;
      Button2: TButton;

      Procedure FormCreate(Sender: TObject);
      Procedure btnFiltraClick(Sender: TObject);
      Procedure rdb3mesesClick(Sender: TObject);
      Procedure rdb6mesesClick(Sender: TObject);
      Procedure rdb12mesesClick(Sender: TObject);
      Procedure dblcResultadoChange(Sender: TObject);
      Procedure fmesChange(Sender: TObject);
      Procedure fanoChange(Sender: TObject);
      Procedure btnInformaClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dblcUProcesoChange(Sender: TObject);
      Procedure dblcUpagoidExit(Sender: TObject);
      Procedure dblcUpagoidChange(Sender: TObject);
      Procedure dbgResumen1DrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure dbgDetalle1DrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure PCConsultaChange(Sender: TObject);
      Procedure btnPrintClick(Sender: TObject);
      Procedure fcShapeBtn2Click(Sender: TObject);
      Procedure fcShapeBtn6Click(Sender: TObject);
      Procedure fcShapeBtn7Click(Sender: TObject);
      Procedure fcShapeBtn8Click(Sender: TObject);
      Procedure dbgResumen1CalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure dbgDetalle1CalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure permesExit(Sender: TObject);
      Procedure permesChange(Sender: TObject);
      Procedure fmesExit(Sender: TObject);
      Procedure fcSFiltraClick(Sender: TObject);
      Procedure BtnSeguirClick(Sender: TObject);
      Procedure BtnCancelaClick(Sender: TObject);
      Procedure dbgDetalle1DblClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure dbgResumen2CalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure fcShapeBtn11Click(Sender: TObject);
      Procedure fcShapeBtn10Click(Sender: TObject);
      Procedure fcShapeBtn9Click(Sender: TObject);
      Procedure fcShapeBtn13Click(Sender: TObject);
      Procedure BtnRetornaFiltroClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure fcShapeBtn5Click(Sender: TObject);
      Procedure btnActualizaClick(Sender: TObject);
      Procedure Button2Click(Sender: TObject);
      Procedure rdTodoClick(Sender: TObject);
      Procedure rdDOClick(Sender: TObject);
      Procedure rdCEClick(Sender: TObject);
   Private
      Procedure onGetTextCDS(Sender: TField; Var Text: String;
         DisplayText: Boolean);

      Procedure onGetTextFalse(Sender: TField; Var Text: String;
         DisplayText: Boolean);
      Procedure onGetTextTrue(Sender: TField; Var Text: String;
         DisplayText: Boolean);

      Procedure blanquea();
    { Private declarations }
   Public
    { Public declarations }
      Function Anomeses(XANOMES, SR: String): String;
      Procedure MascdbgResumen1(XANOMES: String);
      Procedure MascdbgDetalle1(XANOMES: String);
      Procedure actFooter;
      Procedure actFooter1;
      Procedure actFooter2;
      Procedure Opciones(AOptions: TwwExportOptions);
      Procedure Resumen;
      Procedure ActualizaFiltPrincipal;
   End;

Var
   FEstTerpCre: TFEstTerpCre;

Implementation

Uses COBDM1, COB901;

{$R *.dfm}

Function TFEstTerpCre.Anomeses(XANOMES, SR: String): String;
Var
   xmes, xano: String;
Begin
   XMES := COPY(XANOMES, 5, 2);
   XANO := COPY(XANOMES, 1, 4);
   If SR = 'S' Then //Suma
   Begin
      If xmes = '12' Then
      Begin
         xmes := '01';
         xano := IntToStr(StrToInt(xano) + 1);
         xanomes := xano + xmes;
      End
      Else
      Begin
         xmes := DM1.StrZero(IntToStr(StrToInt(xmes) + 1), 2);
         xanomes := xano + xmes;
      End;
   End;

   If SR = 'R' Then //Resta
   Begin
      If xmes = '01' Then
      Begin
         xmes := '12';
         xano := IntToStr(StrToInt(xano) - 1);
         xanomes := xano + xmes;
      End
      Else
      Begin
         xmes := DM1.StrZero(IntToStr(StrToInt(xmes) - 1), 2);
         xanomes := xano + xmes;
      End;
   End;

   Result := xanomes;
End;

Procedure TFEstTerpCre.FormCreate(Sender: TObject);
Var
   XSQL, XMES, XANO, XANOMES, MANOMES: String;
   I: INTEGER;
Begin
   rdTodo.Checked := True;
   XSQL := 'Select '' '' FRECUENCIA,0 CANTIDA From dual';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(XSQL);
   DM1.cdsCEdu.Open;

// Resultado
   XSQL := 'Select Resultado From Cob_Mot_No_Descuento_Tmp2 Group by Resultado';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(XSQL);
   DM1.cdsDLabo.Open;
   dblcResultado.LookupTable := DM1.cdsDLabo;
   dblcResultado.LookupField := 'Resultado';

// Ubica Si existe Periodo Trabajado
   XSQL := 'Select max(anomes)Periodo,max(uproid)Uproid From COB_MOT_NO_DESCUENTO_TMP1 ';
   DM1.cdsGrupos.Close;
   DM1.cdsGrupos.DataRequest(XSQL);
   DM1.cdsGrupos.Open;
   If DM1.cdsGrupos.RecordCount > 0 Then
   Begin
      perano.Text := Copy(DM1.cdsGrupos.FieldBynaMe('Periodo').AsString, 1, 4);
      permes.Text := Copy(DM1.cdsGrupos.FieldBynaMe('Periodo').AsString, 5, 2);
      dblcUProceso.Text := DM1.cdsGrupos.Fieldbyname('Uproid').AsString;
   End
   Else
   Begin
      perano.Text := '';
      permes.Text := '';
      dblcUProceso.Text := '';
   End;
   DM1.cdsGrupos.Close;
   fano.Text := perano.Text;
   fmes.Text := DM1.StrZero(permes.Text, 2);

// Panel Informativo
   If Length(trim(perano.Text)) > 0 Then
   Begin
      Lblinf1.Caption := 'Datos procesados al ' + perano.Text + '-' + permes.Text;
      Lblinf2.Caption := 'Son los 12 últimos meses';
      Lblinf3.Caption := 'Fuente PRECOB - RESULTADOS';
   End
   Else
   Begin
      Lblinf1.Caption := '';
      Lblinf2.Caption := 'Sin datos procesados...';
      Lblinf3.Caption := '';
      GBFiltra.Enabled := False;
      PCConsulta.Enabled := False;
   End;

   btnInforma.Visible := True;

   PNLInforma.Top := 192;
   PNLInforma.Left := 344;
   PNLInforma.Visible := True;
   PCConsulta.Enabled := False;
   GBProcesa.Enabled := False;
   GBFiltra.Enabled := False;


   If Lblinf2.Caption = 'Sin datos procesados...' Then Exit;

// Matriz de Posicionamiento de los campos
   MANOMES := PERANO.Text + PERMES.Text;
   CDSMATRIZ.EmptyDataSet;
   For i := 12 Downto 1 Do
   Begin
      CDSMATRIZ.Insert;
      CDSMATRIZ.FieldByName('NC').AsString := IntToStr(I);
      CDSMATRIZ.FieldByName('ANOMES').AsString := MANOMES;
      MANOMES := Anomeses(MANOMES, 'R');
   End;
   //

   xsql := 'select UPROID,UPAGOID,UPAGONOM,CANTIDA1,ENVIO1,CANTIDA2,ENVIO2,CANTIDA3,ENVIO3,CANTIDA4,ENVIO4,' +
      'CANTIDA5,ENVIO5,CANTIDA6,ENVIO6,CANTIDA7,ENVIO7,CANTIDA8,ENVIO8,' +
      'CANTIDA9,ENVIO9,CANTIDA10,ENVIO10,CANTIDA11,ENVIO11,CANTIDA12,ENVIO12 ' +
      'From Cob_Mot_No_Descuento_tmp2 Where Uproid=''ZZZ'' ';
   DM1.cdsResol.Close;
   DM1.cdsResol.DataRequest(xsql);
   DM1.cdsResol.Open;

   xsql := 'Select UPROID,UPAGOID,UPAGONOM,ASOID,ASOCODMOD,ASOAPENOM,' +
      'CANTIDA1,ENVIO1,SALDIS1,CANTIDA2,ENVIO2,SALDIS2,CANTIDA3,ENVIO3,SALDIS3,CANTIDA4,ENVIO4,SALDIS4,' +
      'CANTIDA5,ENVIO5,SALDIS5,CANTIDA6,ENVIO6,SALDIS6,CANTIDA7,ENVIO7,SALDIS7,CANTIDA8,ENVIO8,SALDIS8,' +
      'CANTIDA9,ENVIO9,SALDIS9,CANTIDA10,ENVIO10,SALDIS10,CANTIDA11,ENVIO11,SALDIS11,CANTIDA12,ENVIO12,SALDIS12,'' ''GESTION ' +
      ' From Cob_Mot_No_Descuento_tmp2 Where Uproid=''ZZZ'' ';
   DM1.cdsConvenio.Close;
   DM1.cdsConvenio.DataRequest(xsql);
   DM1.cdsConvenio.Open;
   dbgDetalle1.DataSource := DM1.dsConvenio;

   xano := perano.Text;
   xmes := permes.Text;
   xanomes := xano + xmes;

   rdb3meses.Checked := True;
   TabSheet1.Caption := 'RESULTADO';

   MascdbgResumen1(xanomes);
   MascdbgDetalle1(xanomes);

End;

Procedure TFEstTerpCre.MascdbgResumen1(XANOMES: String);
Var
   XMES, XANO, IC, CANTIDA, ENVIO: String;
   I, X, V, R: INTEGER;
   XCAMPO1, XCAMPO2: String;
Begin

   dbgResumen1.Selected.clear;
   dbgResumen1.Selected.Add('UPROID'#9'4'#9' '#9'F');
   dbgResumen1.Selected.Add('UPAGOID'#9'3'#9' '#9'F');
   dbgResumen1.Selected.Add('UPAGONOM'#9'22'#9'Unidad de Pago'#9#9);
   If rdb3meses.Checked Then V := 2;
   If rdb6meses.Checked Then V := 5;
   If rdb12meses.Checked Then V := 11;

   CDSMATRIZ.Locate('ANOMES', VarArrayOf([fano.Text + fmes.Text]), []);
   X := CDSMATRIZ.FieldByName('NC').AsInteger;
   If (X - V) <= 0 Then
      R := 1
   Else
      R := (X - V);

     //For I:=X downto X-2 do
   For I := R To X Do
   Begin
      CDSMATRIZ.Locate('NC', VarArrayOf([IntToStr(I)]), []);
      IC := IntToStr(I);
      XANOMES := CDSMATRIZ.Fieldbyname('ANOMES').ASSTRING;
      dbgResumen1.Selected.Add('CANTIDA' + IC + #9'5'#9'Cant'#9'F'#9'Per-' + xanomes);
      dbgResumen1.Selected.Add('ENVIO' + IC + #9'10'#9'Envio'#9'F'#9'Per-' + xanomes);
      TNumericField(DM1.cdsResol.fieldbyname('ENVIO' + IC)).DisplayFormat := '###,##0.#0';
      TNumericField(DM1.cdsResol.fieldbyname('CANTIDA' + IC)).DisplayFormat := '###,##0';
   End;
   dbgResumen1.DataSource := DM1.dsResol;

End;

Procedure TFEstTerpCre.btnFiltraClick(Sender: TObject);
Var
   xsql, xano, xmes, xanomes, xwhere: String;
Begin
   ActualizaFiltPrincipal;
   DM1.cdsCEdu.EmptyDataSet;
End;

Procedure TFEstTerpCre.rdb3mesesClick(Sender: TObject);
Var
   xsql, xano, xmes, xanomes: String;
Begin
   If DM1.cdsCEdu.Active Then blanquea;

   If DM1.cdsResol.Active Then
   Begin
      If rdb3meses.Checked Then
      Begin
         xano := perano.Text;
         xmes := permes.Text;
         xanomes := xano + xmes;
         MascdbgResumen1(xanomes);
         MascdbgDetalle1(xanomes);
         actFooter;
         actFooter1;
         DM1.cdsCEdu.EmptyDataSet;
      End;
   End;
End;

Procedure TFEstTerpCre.rdb6mesesClick(Sender: TObject);
Var
   xsql, xano, xmes, xanomes: String;
Begin
   If DM1.cdsCEdu.Active Then blanquea;

   If DM1.cdsResol.Active Then
   Begin
      If rdb6meses.Checked Then
      Begin
         xano := perano.Text;
         xmes := permes.Text;
         xanomes := xano + xmes;
         MascdbgResumen1(xanomes);
         MascdbgDetalle1(xanomes);
         actFooter;
         actFooter1;
         DM1.cdsCEdu.EmptyDataSet;
      End;
   End;
End;

Procedure TFEstTerpCre.rdb12mesesClick(Sender: TObject);
Var
   xsql, xano, xmes, xanomes: String;
Begin
   If DM1.cdsCEdu.Active Then blanquea;

   If DM1.cdsResol.Active Then
   Begin
      If rdb12meses.Checked Then
      Begin
         xano := perano.Text;
         xmes := permes.Text;
         xanomes := xano + xmes;
         MascdbgResumen1(xanomes);
         MascdbgDetalle1(xanomes);
         actFooter;
         actFooter1;
         DM1.cdsCEdu.EmptyDataSet;
      End;
   End;
End;

Procedure TFEstTerpCre.dblcResultadoChange(Sender: TObject);
Begin
   blanquea;
End;

Procedure TFEstTerpCre.fmesChange(Sender: TObject);
Begin
   If (Length(Trim(fmes.Text)) = 2) And (StrToInt(fmes.Text) > 0) Then
   Begin
      fmes.Text := DM1.StrZero(fmes.Text, 2);
      dblcResultadoChange(self);
      BtnRetornaFiltro.Visible := False;
      DM1.cdsCEdu.EmptyDataSet;
   End;
End;

Procedure TFEstTerpCre.fanoChange(Sender: TObject);
Begin
   If Length(trim(fano.Text)) = 4 Then
   Begin
      dblcResultadoChange(self);
      BtnRetornaFiltro.Visible := False;
      BtnRetornaFiltro.Visible := False;
      DM1.cdsCEdu.EmptyDataSet;
   End;
End;

Procedure TFEstTerpCre.btnInformaClick(Sender: TObject);
Begin
   PNLInforma.Visible := False;
   GBProcesa.Enabled := True;
   btnInforma.Visible := False;
   If Length(trim(perano.Text)) = 0 Then
   Begin
      GBFiltra.Enabled := False;
      PCConsulta.Enabled := False;
   End
   Else
   Begin
      GBFiltra.Enabled := True;
      PCConsulta.Enabled := True;
   End;
End;

Procedure TFEstTerpCre.FormActivate(Sender: TObject);
Var
   XSQL, xUpro: String;
Begin

   xUpro := dblcUProceso.Text;
  //Consulta de Unidad de Proceso
   xsql := 'Select UPROID, UPRONOM, UPROABR, OFDESID from apo102 ';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xsql);
   DM1.cdsUPro.Open;
   dblcUProceso.LookupTable := DM1.cdsUPro;
   dblcUProceso.LookupField := 'UPROID';
   dblcUProceso.Text := xUpro;

  //Consulta de Unidad de Pago
   xsql := 'Select UPROID,UPAGOID,UPAGONOM, UPAGOABR, DPTOID,CIUDID,ZONAID '
          +'from Apo103 Where Uproid=''' + dblcUProceso.Text + ''' ';
   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(Xsql);
   DM1.cdsUPago.Open;
   dblcUpagoid.LookupTable := DM1.cdsUPago;
   dblcUpagoid.LookupField := 'Upagoid';
   dblcUpagoid.Selected.Add('UPROID'#9'4'#9' '#9'F');

   dblcUpagoid.Enabled := True;
   PCConsulta.TabIndex := 0;

   perano.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4));
   permes.Value := StrToInt(Copy(DateToStr(DM1.FechaSys), 4, 2));
End;

Procedure TFEstTerpCre.dblcUProcesoChange(Sender: TObject);
Begin

   If (Length(Trim(dblcUProceso.Text)) = 3) And (DM1.cdsUPro.Active) Then
   Begin
      dblcUpagoid.Text := '';
      edtupagoid.Text := '';
      If DM1.cdsUPro.Locate('UPROID', VarArrayof([dblcUProceso.Text]), []) Then
      Begin
         edtUproid.Text := DM1.cdsUPro.FieldByName('UPRONOM').Asstring;
      End
      Else
      Begin
         If Length(Trim(dblcUProceso.Text)) <> 2 Then
         Begin
            edtUproid.Text := '';
         End;
      End;
   End;
End;

Procedure TFEstTerpCre.dblcUpagoidExit(Sender: TObject);
Begin
   If Length(trim(dblcUpagoid.Text)) > 0 Then
      edtupagoid.Text := DM1.cdsUPago.Fieldbyname('Upagonom').AsString
   Else
      edtupagoid.Text := '';
End;

Procedure TFEstTerpCre.dblcUpagoidChange(Sender: TObject);
Var
   xsql: String;
Begin

   If Length(trim(dblcUpagoid.Text)) > 0 Then
      edtupagoid.Text := DM1.cdsUPago.Fieldbyname('Upagonom').AsString
   Else
      edtupagoid.Text := '';

   xsql := 'select UPROID,UPAGOID,UPAGONOM,CANTIDA1,ENVIO1,CANTIDA2,ENVIO2,CANTIDA3,ENVIO3,CANTIDA4,ENVIO4,' +
      'CANTIDA5,ENVIO5,CANTIDA6,ENVIO6,CANTIDA7,ENVIO7,CANTIDA8,ENVIO8,' +
      'CANTIDA9,ENVIO9,CANTIDA10,ENVIO10,CANTIDA11,ENVIO11,CANTIDA12,ENVIO12 ' +
      'from Cob_Mot_No_Descuento_tmp2 Where Uproid=''ZZZ'' ';
   DM1.cdsResol.Close;
   DM1.cdsResol.DataRequest(xsql);
   DM1.cdsResol.Open;

End;

Procedure TFEstTerpCre.MascdbgDetalle1(XANOMES: String);
Var
   XMES, XANO, IC, CANTIDA, ENVIO: String;
   I, X, V, R: INTEGER;
   XCAMPO1, XCAMPO2, XAND: String;
Begin

   dbgDetalle1.Selected.clear;

   dbgDetalle1.Selected.Add('UPROID'#9'4'#9' '#9'F');
   dbgDetalle1.Selected.Add('UPAGOID'#9'3'#9' '#9'F');
   dbgDetalle1.Selected.Add('UPAGONOM'#9'22'#9'Unidad de Pago'#9#9);
   //dbgDetalle1.Selected.Add('ASOID'#9'10'#9'Cod.Aso.'#9#9);
   dbgDetalle1.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.'#9#9);
   dbgDetalle1.Selected.Add('ASOAPENOM'#9'47'#9'Apellidos y Nombres'#9#9);
   dbgDetalle1.Selected.Add('ASOTIPID'#9'4'#9'Tip'#9#9);

   If rdb3meses.Checked Then V := 2;
   If rdb6meses.Checked Then V := 5;
   If rdb12meses.Checked Then V := 11;

   CDSMATRIZ.Locate('ANOMES', VarArrayOf([fano.Text + fmes.Text]), []);
   X := CDSMATRIZ.FieldByName('NC').AsInteger;
   If (X - V) <= 0 Then
      R := 1
   Else
      R := (X - V);

      //For I:=X downto X-2 do
   DM1.cdsConvenio.Filter := '';
   DM1.cdsConvenio.Open;
   DM1.cdsConvenio.Filtered := False;
   For I := R To X Do
   Begin
      CDSMATRIZ.Locate('NC', VarArrayOf([IntToStr(I)]), []);
      IC := IntToStr(I);
      XANOMES := CDSMATRIZ.Fieldbyname('ANOMES').ASSTRING;
      dbgDetalle1.Selected.Add('CANTIDA' + IC + #9'5'#9'Cant'#9'F'#9'Per-' + xanomes);
      dbgDetalle1.Selected.Add('ENVIO' + IC + #9'10'#9'Envio'#9'F'#9'Per-' + xanomes);
      dbgDetalle1.Selected.Add('SALDIS' + IC + #9'7'#9'Liqu.'#9'F'#9'Per-' + xanomes);
      TNumericField(DM1.cdsConvenio.fieldbyname('ENVIO' + IC)).DisplayFormat := '###,##0.#0';
      TNumericField(DM1.cdsConvenio.fieldbyname('SALDIS' + IC)).DisplayFormat := '##,##0.#0';
      TNumericField(DM1.cdsConvenio.fieldbyname('CANTIDA' + IC)).DisplayFormat := '###,##0';
            //----
            //se crea un evento del CDS onGetText con el nombre onGetTextCDS
            //esto lo utilizo para pintar en blanco los valores en cero, ya que en el cds lo necesito con valor cero para calculos
            //por defoult al asignarle el evento onGetTextCDS lo pinta en blanco y en el miesmo evento en ejecucion le asigno su valores
            //(ver evento  onGetTextCDS) RICMZ
            //este evento lo puedes tomar del compónente Clientdataset; creado un campo y con  F11 se va a sus eventos y lo copias
      DM1.cdsConvenio.fieldbyname('CANTIDA' + IC).onGetText := onGetTextCDS;
            //----
      If I < X Then
         XAND := ' OR '
      Else
         XAND := '';
      DM1.cdsConvenio.Filter := DM1.cdsConvenio.Filter + 'CANTIDA' + IC + '>0' + XAND;
   End;
   dbgDetalle1.Selected.Add('G'#9'1'#9'G'#9#9);
   dbgDetalle1.Selected.Add('GESTION'#9'1'#9''#9#9);

   DbgDetalle1.DataSource := DM1.dsConvenio;
   DM1.cdsConvenio.Open;
   DM1.cdsConvenio.Filtered := False;
   DM1.cdsConvenio.Filtered := True;
   DM1.cdsConvenio.First;

End;

Procedure TFEstTerpCre.dbgResumen1DrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

 { If (Field.DisplayName = 'UPAGOID') Or (Field.DisplayName = 'UPROID') Or (Field.DisplayName = 'UPAGONOM') Then
   Begin
      dbgResumen1.Canvas.Font.Color := clBlue;
      dbgResumen1.Canvas.Font.Size  := 8;
      dbgResumen1.Canvas.Font.Style := [];
      dbgResumen1.DefaultDrawDataCell(Rect, Field, State);
   End;  }

 { If (Field.DisplayName = 'ENVIO1') OR (Field.DisplayName = 'CANTIDA1') or
     (Field.DisplayName = 'ENVIO3') OR (Field.DisplayName = 'CANTIDA3') or
     (Field.DisplayName = 'ENVIO5') OR (Field.DisplayName = 'CANTIDA5') or
     (Field.DisplayName = 'ENVIO7') OR (Field.DisplayName = 'CANTIDA7') or
     (Field.DisplayName = 'ENVIO9') OR (Field.DisplayName = 'CANTIDA9') or
     (Field.DisplayName = 'ENVIO11') OR (Field.DisplayName = 'CANTIDA11') Then
     Begin
      dbgResumen1.Canvas.Brush.Color := $0047E93A;
      dbgResumen1.DefaultDrawDataCell(Rect, Field, State);
     End;

  If (Field.DisplayName = 'ENVIO2') OR (Field.DisplayName = 'CANTIDA2')   or
     (Field.DisplayName = 'ENVIO4') OR (Field.DisplayName = 'CANTIDA4')   or
     (Field.DisplayName = 'ENVIO6') OR (Field.DisplayName = 'CANTIDA6')   or
     (Field.DisplayName = 'ENVIO8') OR (Field.DisplayName = 'CANTIDA8')   or
     (Field.DisplayName = 'ENVIO10') OR (Field.DisplayName = 'CANTIDA10') or
     (Field.DisplayName = 'ENVIO12') OR (Field.DisplayName = 'CANTIDA12') Then
     Begin
       dbgResumen1.Canvas.Brush.Color := $0022BF15;
       dbgResumen1.DefaultDrawDataCell(Rect, Field, State);
     End;  }

End;

Procedure TFEstTerpCre.dbgDetalle1DrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

{   If (Field.DisplayName = 'ENVIO1') OR (Field.DisplayName = 'CANTIDA1') or
    (Field.DisplayName = 'ENVIO3') OR (Field.DisplayName = 'CANTIDA3') or
    (Field.DisplayName = 'ENVIO5') OR (Field.DisplayName = 'CANTIDA5') or
    (Field.DisplayName = 'ENVIO7') OR (Field.DisplayName = 'CANTIDA7') or
    (Field.DisplayName = 'ENVIO9') OR (Field.DisplayName = 'CANTIDA9') or
    (Field.DisplayName = 'ENVIO11') OR (Field.DisplayName = 'CANTIDA11') Then
    Begin
     dbgDetalle1.Canvas.Brush.Color := $0047E93A;
     dbgDetalle1.DefaultDrawDataCell(Rect, Field, State);
    End;

 If (Field.DisplayName = 'ENVIO2') OR (Field.DisplayName = 'CANTIDA2')   or
    (Field.DisplayName = 'ENVIO4') OR (Field.DisplayName = 'CANTIDA4')   or
    (Field.DisplayName = 'ENVIO6') OR (Field.DisplayName = 'CANTIDA6')   or
    (Field.DisplayName = 'ENVIO8') OR (Field.DisplayName = 'CANTIDA8')   or
    (Field.DisplayName = 'ENVIO10') OR (Field.DisplayName = 'CANTIDA10') or
    (Field.DisplayName = 'ENVIO12') OR (Field.DisplayName = 'CANTIDA12') Then
    Begin
      dbgDetalle1.Canvas.Brush.Color := $0022BF15;
      dbgDetalle1.DefaultDrawDataCell(Rect, Field, State);
    End;
 }
End;

Procedure TFEstTerpCre.actFooter;
Var
   B: TBookmark;
   xEnvio: currency;
   xCantida: Integer;
   XMES, XANO, IC, CANTIDA, ENVIO: String;
   I, X, V, R: INTEGER;
   XCAMPO1, XCAMPO2: String;

Begin
   dbgResumen1.ColumnByName('UPAGONOM').FooterValue := 'Totales';
   If rdb3meses.Checked Then V := 2;
   If rdb6meses.Checked Then V := 5;
   If rdb12meses.Checked Then V := 11;

   CDSMATRIZ.Locate('ANOMES', VarArrayOf([fano.Text + fmes.Text]), []);
   X := CDSMATRIZ.FieldByName('NC').AsInteger;
   If (X - V) <= 0 Then
      R := 1
   Else
      R := (X - V);
   For I := R To X Do
   Begin
      IC := IntToStr(I);
      dbgResumen1.ColumnByName('CANTIDA' + IC).FooterValue := '0';
      dbgResumen1.ColumnByName('ENVIO' + IC).FooterValue := '0.00';
   End;

  //Guardo la posicion
   B := DM1.cdsResol.GetBookmark;
   DM1.cdsResol.DisableControls;

   For I := R To X Do
   Begin
      IC := IntToStr(I);
      DM1.cdsResol.First;
      xEnvio := 0;
      xCantida := 0;
      While Not DM1.cdsResol.Eof Do
      Begin
         xEnvio := xEnvio + DM1.cdsResol.FieldByName('ENVIO' + IC).AsCurrency;
         xCantida := xCantida + DM1.cdsResol.FieldByName('CANTIDA' + IC).AsInteger;
         DM1.cdsResol.Next
      End;
      dbgResumen1.ColumnByName('ENVIO' + IC).FooterValue := FormatCurr('###,##0.#0', xEnvio);
      dbgResumen1.ColumnByName('CANTIDA' + IC).FooterValue := FormatCurr('###,##0', xCantida);
   End;

  //Me posiciono nuevamente en el posicion marcada
   DM1.cdsResol.GotoBookmark(B);
   DM1.cdsResol.EnableControls;
   DM1.cdsResol.FreeBookmark(B);

End;

Procedure TFEstTerpCre.actFooter1;
Var
   B: TBookmark;
   xEnvio: currency;
   xCantida, xCuenta: Integer;
   XMES, XANO, IC, CANTIDA, ENVIO: String;
   I, X, V, R: INTEGER;
   XCAMPO1, XCAMPO2: String;

Begin
   dbgDetalle1.ColumnByName('ASOAPENOM').FooterValue := 'Totales';
   If rdb3meses.Checked Then V := 2;
   If rdb6meses.Checked Then V := 5;
   If rdb12meses.Checked Then V := 11;

   CDSMATRIZ.Locate('ANOMES', VarArrayOf([fano.Text + fmes.Text]), []);
   X := CDSMATRIZ.FieldByName('NC').AsInteger;
   If (X - V) <= 0 Then
      R := 1
   Else
      R := (X - V);
   For I := R To X Do
   Begin
      IC := IntToStr(I);
      dbgDetalle1.ColumnByName('ENVIO' + IC).FooterValue := '0.00';
   End;

  //Guardo la posicion
   B := DM1.cdsConvenio.GetBookmark;
   DM1.cdsConvenio.DisableControls;

   For I := R To X Do
   Begin
      IC := IntToStr(I);
      DM1.cdsConvenio.First;
      xEnvio := 0;
      XCuenta := 0;
      While Not DM1.cdsConvenio.Eof Do
      Begin
         xEnvio := xEnvio + DM1.cdsConvenio.FieldByName('ENVIO' + IC).AsCurrency;
         xCuenta := xCuenta + 1;
         DM1.cdsConvenio.Next
      End;
      dbgDetalle1.ColumnByName('ENVIO' + IC).FooterValue := FormatCurr('###,##0.#0', xEnvio);
      dbgDetalle1.ColumnByName('UPAGONOM').FooterValue := FormatCurr('###,##0.#0', XCUENTA);
   End;

  //Me posiciono nuevamente en el posicion marcada
   DM1.cdsConvenio.GotoBookmark(B);
   DM1.cdsConvenio.EnableControls;
   DM1.cdsConvenio.FreeBookmark(B);

End;

Procedure TFEstTerpCre.PCConsultaChange(Sender: TObject);
Begin
   actFooter;
   actFooter1;
End;

Procedure TFEstTerpCre.btnPrintClick(Sender: TObject);
Var
   B: TBookmark;
   xEnvio, XLEFT: currency;
   xCantida: Integer;
   XMES, XANO, IC, CANTIDA, ENVIO: String;
   I, X, V, R: INTEGER;

   XCAMPO1, XCAMPO2: String;
   CAMPO: TppDBText;
Begin

   If rdb3meses.Checked Then V := 2;
   If rdb6meses.Checked Then V := 5;
   If rdb12meses.Checked Then V := 11;

   CDSMATRIZ.Locate('ANOMES', VarArrayOf([fano.Text + fmes.Text]), []);
   X := CDSMATRIZ.FieldByName('NC').AsInteger;
   If (X - V) <= 0 Then
      R := 1
   Else
      R := (X - V);
   XLEFT := 0.1458;
   For I := R To X Do
   Begin
      IC := IntToStr(I);
      CAMPO.UserName := 'DBText1';
      CAMPO.DataField := 'ENVIO' + IC;
      ppReport1.DetailBand.AddObject(CAMPO);
         //  ppReport1.DetailBand.ObjectByName();

      CAMPO.Left := XLEFT;
      CAMPO.Top := 0.0625;
      XLEFT := XLEFT + 0.14;
   End;

{   object ppDetailBand1: TppDetailBand
     mmBottomOffset = 0
     mmHeight = 13229
     mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'}

   BDEP1.DataSource := DM1.dsResol;
   ppReport1.Print;
   ppReport1.Stop;
End;

Procedure TFEstTerpCre.fcShapeBtn2Click(Sender: TObject);
Begin
   With dbgResumen1, dbgResumen1.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Reporte.slk';
      dbgResumen1.ExportOptions.TitleName := dblcResultado.Text;
      Opciones(dbgResumen1.ExportOptions);
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgResumen1.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
End;

Procedure TFEstTerpCre.fcShapeBtn6Click(Sender: TObject);
Begin
   With dbgResumen1, dbgResumen1.ExportOptions Do
   Begin
      ExportType := wwgetHTML;
      FileName := 'Reporte.html';
      dbgResumen1.ExportOptions.TitleName := dblcResultado.Text;
      Opciones(dbgResumen1.ExportOptions);
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'OPEN', PChar(dbgResumen1.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
End;

Procedure TFEstTerpCre.Opciones(AOptions: TwwExportOptions);
Begin
   AOptions.Options := [esoDblQuoteFields, esoShowFooter];
   AOptions.Options := AOptions.Options + [esoShowTitle];
   AOptions.Options := AOptions.Options + [esoShowHeader];
   AOptions.Options := AOptions.Options + [esoShowRecordNo];
   AOptions.Options := AOptions.Options + [esoEmbedURL];
   AOptions.Options := AOptions.Options + [esoDynamicColors];
   AOptions.Options := AOptions.Options + [esoShowAlternating];
End;

Procedure TFEstTerpCre.fcShapeBtn7Click(Sender: TObject);
Begin
   DM1.cdsConvenio.fieldbyname('GESTION').onGetText := onGetTextFalse;
   With dbgDetalle1, dbgDetalle1.ExportOptions Do
   Begin
      ExportType := wwgetHTML;
      FileName := 'Reporte.html';
      Opciones(dbgDetalle1.ExportOptions);
      dbgDetalle1.ExportOptions.TitleName := dblcResultado.Text;
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'OPEN', PChar(dbgDetalle1.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;

   DM1.cdsConvenio.fieldbyname('GESTION').onGetText := onGetTextTrue;
End;

Procedure TFEstTerpCre.fcShapeBtn8Click(Sender: TObject);
Begin
   With dbgDetalle1, dbgDetalle1.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Reporte.slk';
      Opciones(dbgDetalle1.ExportOptions);
      dbgDetalle1.ExportOptions.TitleName := dblcResultado.Text;
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgDetalle1.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
End;

Procedure TFEstTerpCre.dbgResumen1CalcCellColors(Sender: TObject; Field: TField;
   State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin

   If (Field.FieldName = 'UPAGOID') Or (Field.FieldName = 'UPROID') Or (Field.FieldName = 'UPAGONOM') Then
   Begin
      AFont.Color := clWhite;
      ABrush.Color := $00136B0C;
      AFont.Size := 8;
      AFont.Style := [];
   End;

   If (Field.FieldName = 'ENVIO1') Or (Field.FieldName = 'CANTIDA1') Or
      (Field.FieldName = 'ENVIO3') Or (Field.FieldName = 'CANTIDA3') Or
      (Field.FieldName = 'ENVIO5') Or (Field.FieldName = 'CANTIDA5') Or
      (Field.FieldName = 'ENVIO7') Or (Field.FieldName = 'CANTIDA7') Or
      (Field.FieldName = 'ENVIO9') Or (Field.FieldName = 'CANTIDA9') Or
      (Field.FieldName = 'ENVIO11') Or (Field.FieldName = 'CANTIDA11') Then
   Begin
      ABrush.Color := $0047E93A;
   End;

   If (Field.FieldName = 'ENVIO2') Or (Field.FieldName = 'CANTIDA2') Or
      (Field.FieldName = 'ENVIO4') Or (Field.FieldName = 'CANTIDA4') Or
      (Field.FieldName = 'ENVIO6') Or (Field.FieldName = 'CANTIDA6') Or
      (Field.FieldName = 'ENVIO8') Or (Field.FieldName = 'CANTIDA8') Or
      (Field.FieldName = 'ENVIO10') Or (Field.FieldName = 'CANTIDA10') Or
      (Field.FieldName = 'ENVIO12') Or (Field.FieldName = 'CANTIDA12') Then
   Begin
      ABrush.Color := $0022BF15;
   End;

End;

Procedure TFEstTerpCre.dbgDetalle1CalcCellColors(Sender: TObject; Field: TField;
   State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
   If (Field.FieldName = 'G') Then
   Begin
      If DM1.cdsConvenio.FieldByName('G').asstring = '.' Then
      Begin
         ABrush.Color := clYellow;
      End;
   End;

   If (Field.FieldName = 'GESTION') Then
   Begin
      AFont.Color := $00CCFFFF;
      ABrush.Color := $00CCFFFF;
   End;

   If (Field.FieldName = 'UPAGOID') Or (Field.FieldName = 'UPROID') Or (Field.FieldName = 'UPAGONOM') Or
      (Field.FieldName = 'ASOID') Or (Field.FieldName = 'ASOCODMOD') Or (Field.FieldName = 'ASOAPENOM') Then
   Begin
      AFont.Color := clWhite;
      ABrush.Color := $00136B0C;
      AFont.Size := 8;
      AFont.Style := [];
   End;

   If (Field.FieldName = 'ASOTIPID') Then
   Begin
      ABrush.Color := $00CCFFFF;
      AFont.Color := clBlack;
      AFont.Size := 7;
      AFont.Style := [];
   End;

   If (Field.FieldName = 'ENVIO1') Or (Field.FieldName = 'CANTIDA1') Or (Field.FieldName = 'SALDIS1') Or
      (Field.FieldName = 'ENVIO3') Or (Field.FieldName = 'CANTIDA3') Or (Field.FieldName = 'SALDIS3') Or
      (Field.FieldName = 'ENVIO5') Or (Field.FieldName = 'CANTIDA5') Or (Field.FieldName = 'SALDIS5') Or
      (Field.FieldName = 'ENVIO7') Or (Field.FieldName = 'CANTIDA7') Or (Field.FieldName = 'SALDIS7') Or
      (Field.FieldName = 'ENVIO9') Or (Field.FieldName = 'CANTIDA9') Or (Field.FieldName = 'SALDIS9') Or
      (Field.FieldName = 'ENVIO11') Or (Field.FieldName = 'CANTIDA11') Or (Field.FieldName = 'SALDIS11') Then
   Begin
      ABrush.Color := $0047E93A;
   End;

   If (Field.FieldName = 'ENVIO2') Or (Field.FieldName = 'CANTIDA2') Or (Field.FieldName = 'SALDIS2') Or
      (Field.FieldName = 'ENVIO4') Or (Field.FieldName = 'CANTIDA4') Or (Field.FieldName = 'SALDIS4') Or
      (Field.FieldName = 'ENVIO6') Or (Field.FieldName = 'CANTIDA6') Or (Field.FieldName = 'SALDIS6') Or
      (Field.FieldName = 'ENVIO8') Or (Field.FieldName = 'CANTIDA8') Or (Field.FieldName = 'SALDIS8') Or
      (Field.FieldName = 'ENVIO10') Or (Field.FieldName = 'CANTIDA10') Or (Field.FieldName = 'SALDIS10') Or
      (Field.FieldName = 'ENVIO12') Or (Field.FieldName = 'CANTIDA12') Or (Field.FieldName = 'SALDIS12') Then
   Begin
      ABrush.Color := $0022BF15;
   End;
End;

Procedure TFEstTerpCre.permesExit(Sender: TObject);
Begin
   permes.Text := DM1.StrZero(permes.Text, 2);
End;

Procedure TFEstTerpCre.permesChange(Sender: TObject);
Begin
   If (Length(Trim(permes.Text)) = 2) And (StrToInt(permes.Text) > 0) Then
   Begin
      permes.Text := DM1.StrZero(permes.Text, 2);
   End;
End;

Procedure TFEstTerpCre.fmesExit(Sender: TObject);
Begin
   fmes.Text := DM1.StrZero(fmes.Text, 2);
End;

Procedure TFEstTerpCre.fcSFiltraClick(Sender: TObject);
Var
   xSQL: String;
Begin

   Lblinf1.Caption := 'Este proceso demorará';
   Lblinf2.Caption := 'aproximadamente 40 minutos';
   Lblinf3.Caption := 'desa continuar.? ';
   PNLInforma.Visible := True;
   BtnSeguir.Visible := True;
   BtnCancela.Visible := True;

End;

Procedure TFEstTerpCre.BtnSeguirClick(Sender: TObject);
Var
   xSql, MANOMES: String;
   i: INTEGER;
Begin

   Screen.Cursor := crHourGlass;
   xSQL := 'Begin SP_COB_MOT_NO_DESCUENTO(''' + perano.Text + permes.Text + ''',''' + dblcUProceso.Text + '''); End;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   FormCreate(Self);
   Screen.Cursor := crDefault;

  { if DM1.cdsResol.Recordcount=0 then
   begin
      ShowMessage('No hay datos para Mostrar en el Filtro seleccionado');
      perano.SetFocus;
      exit;
   end; }

   BtnSeguir.Visible := False;
   BtnCancela.Visible := False;
   PNLInforma.Visible := False;
   fano.Text := perano.Text;
   fmes.Text := permes.Text;
   GBFiltra.Enabled := True;
   PCConsulta.Enabled := True;
End;

Procedure TFEstTerpCre.BtnCancelaClick(Sender: TObject);
Begin
   BtnSeguir.Visible := False;
   BtnCancela.Visible := False;
   PNLInforma.Visible := False;
End;

Procedure TFEstTerpCre.dbgDetalle1DblClick(Sender: TObject);
Begin
   pnlObservacion.Left := 304;
   pnlObservacion.Top := 224;
   pnlObservacion.Height := 121;
   Observacion.Text := DM1.cdsConvenio.FieldByName('GESTION').asstring;
   pnlObservacion.Visible := True;
   Observacion.ReadOnly := True;
End;

Procedure TFEstTerpCre.Button1Click(Sender: TObject);
Begin
   pnlResumen2.Visible := False;
   PCConsulta.Enabled := True;
   GBFiltra.Enabled := True;
   GBProcesa.Enabled := True;
End;

Procedure TFEstTerpCre.dbgResumen2CalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin

   If (Field.FieldName = 'FRECUENCIA') Then
   Begin
      ABrush.Color := $0047E93A;
   End;

   If (Field.FieldName = 'CANTIDA') Then
   Begin
      ABrush.Color := $0022BF15;
   End;

End;

Procedure TFEstTerpCre.fcShapeBtn11Click(Sender: TObject);
Begin
   With dbgResumen2, dbgResumen2.ExportOptions Do
   Begin
      ExportType := wwgetHTML;
      FileName := 'Reporte.html';
      dbgResumen2.ExportOptions.TitleName := dblcResultado.Text;
      Opciones(dbgResumen2.ExportOptions);
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'OPEN', PChar(dbgResumen2.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
End;

Procedure TFEstTerpCre.fcShapeBtn10Click(Sender: TObject);
Begin
   With dbgResumen2, dbgResumen2.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Reporte.slk';
      dbgResumen2.ExportOptions.TitleName := dblcResultado.Text;
      Opciones(dbgResumen2.ExportOptions);
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgResumen2.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
End;

Procedure TFEstTerpCre.fcShapeBtn9Click(Sender: TObject);

Var
   B: TBookmark;
   xEnvio, XLEFT: currency;
   xCantida: Integer;
   XMES, XANO, IC, CANTIDA, ENVIO: String;
   I, X, V, R: INTEGER;

   XCAMPO1, XCAMPO2, XAND: String;
   CAMPO: TppDBText;
Begin

   If rdb3meses.Checked Then V := 2;
   If rdb6meses.Checked Then V := 5;
   If rdb12meses.Checked Then V := 11;

   CDSMATRIZ.Locate('ANOMES', VarArrayOf([fano.Text + fmes.Text]), []);
   X := CDSMATRIZ.FieldByName('NC').AsInteger;
   If (X - V) <= 0 Then
      R := 1
   Else
      R := (X - V);

   DM1.cdsConvenio.Filter := '';
   DM1.cdsConvenio.Open;
   DM1.cdsConvenio.Filtered := False;
   For I := R To X Do
   Begin
      CDSMATRIZ.Locate('NC', VarArrayOf([IntToStr(I)]), []);
      IC := IntToStr(I);
      If I < X Then
         XAND := ' + '
      Else
         XAND := '';
      DM1.cdsConvenio.Filter := DM1.cdsConvenio.Filter + 'CANTIDA' + IC + XAND;
   End;

   DbgDetalle1.DataSource := DM1.dsConvenio;
   DM1.cdsConvenio.Filter := DM1.cdsConvenio.Filter + '=' + DM1.cdsCEdu.FieldByName('FRECUENCIA').AsString;
   DM1.cdsConvenio.Open;
   DM1.cdsConvenio.Filtered := False;
   DM1.cdsConvenio.Filtered := True;
   DM1.cdsConvenio.First;
   BtnRetornaFiltro.Visible := True;
   actFooter1;
End;

Procedure TFEstTerpCre.fcShapeBtn13Click(Sender: TObject);

Var
   xtitulo: String;
Begin

   If DM1.cdsCEdu.RecordCount = 0 Then Resumen;
   xtitulo := dblcResultado.Text;
   dbgResumen2.Selected.clear;
   dbgResumen2.Selected.Add('FRECUENCIA'#9'10'#9'' + xTitulo + ''#9#9);
   dbgResumen2.Selected.Add('CANTIDA'#9'7'#9'Cantida'#9#9);
  {dbgResumen2.DataSource := DSRESUMEN2;}

   pnlResumen2.Left := 360;
   pnlResumen2.Top := 160;
   PCConsulta.Enabled := False;
   GBFiltra.Enabled := False;
   GBProcesa.Enabled := False;
   pnlResumen2.Visible := True;
   actFooter2;

End;

Procedure TFEstTerpCre.Resumen;
Var
   B: TBookmark;
   xEnvio: currency;
   xCantida: Integer;
   XMES, XANO, IC, CANTIDA, ENVIO: String;
   I, X, V, R: INTEGER;
   XCAMPO1, XCAMPO2, XSQL, xSelect, xGrupo, xmas, xWhere, xTipoAso: String;

Begin

   DM1.cdsCEdu.EmptyDataSet;
   DM1.cdsCEdu.IndexFieldNames := 'FRECUENCIA';

   dbgDetalle1.ColumnByName('ASOAPENOM').FooterValue := 'Totales';
   If rdb3meses.Checked Then V := 2;
   If rdb6meses.Checked Then V := 5;
   If rdb12meses.Checked Then V := 11;

   CDSMATRIZ.Locate('ANOMES', VarArrayOf([fano.Text + fmes.Text]), []);
   X := CDSMATRIZ.FieldByName('NC').AsInteger;
   If (X - V) <= 0 Then
      R := 1
   Else
      R := (X - V);
   xSelect := '';
   xGrupo := '';
   xmas := '';

   If Length(Trim(dblcUpagoid.Text)) > 0 Then
      xWhere := ' and Upagoid=''' + dblcUpagoid.Text + ''' '
   Else
      xWhere := '';

   If rdTodo.Checked Then xTipoAso := '';
   If rdDO.Checked Then xTipoAso := ' AND ASOTIPID=''DO'' ';
   If rdCE.Checked Then xTipoAso := ' AND ASOTIPID=''CE'' ';

   For I := R To X Do
   Begin
      IC := IntToStr(I);
      xCantida := xCantida + DM1.cdsConvenio.FieldByName('CANTIDA' + IC).AsInteger;
      xSelect := xSelect + xmas + 'NVL(CANTIDA' + IC + ',0)';
      xGrupo := xGrupo + xmas + 'NVL(CANTIDA' + IC + ',0)';
      xmas := ' + ';
   End;

   xSQL := 'Select * '
          +'From (SELECT ' + xSelect + 'Frecuencia,Count(1) Cantida '
          +'      From (Select UPROID,UPAGOID,UPAGONOM,ASOID,ASOCODMOD,ASOAPENOM,'
          +'                   SUM(NVL(CANTIDA1,0))CANTIDA1,SUM(NVL(CANTIDA2,0))CANTIDA2,'
          +'                   SUM(NVL(CANTIDA3,0))CANTIDA3,SUM(NVL(CANTIDA4,0))CANTIDA4,'
          +'                   SUM(NVL(CANTIDA5,0))CANTIDA5,SUM(NVL(CANTIDA6,0))CANTIDA6,'
          +'                   SUM(NVL(CANTIDA7,0))CANTIDA7,SUM(NVL(CANTIDA8,0))CANTIDA8,'
          +'                   SUM(NVL(CANTIDA9,0))CANTIDA9,SUM(NVL(CANTIDA10,0))CANTIDA10,'
          +'                   SUM(NVL(CANTIDA11,0))CANTIDA11,SUM(NVL(CANTIDA12,0))CANTIDA12 '
          +'            From COB_MOT_NO_DESCUENTO_TMP2 '
          +'            Where RESULTADO=''' + dblcResultado.Text + ''' '
          +                   xWhere + xTipoAso
          +'            Group by UPROID,UPAGOID,UPAGONOM,ASOID,ASOCODMOD,ASOAPENOM ) '
          +'      GROUP BY ' + xGrupo
          +'      ) '
          +'Where FRECUENCIA<> 0 ';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(XSQL);
   DM1.cdsCEdu.Open;
   dbgResumen2.DataSource := DM1.dsCEdu;

End;

//evento creado del cds  - onGetTextCDS

Procedure TFEstTerpCre.onGetTextCDS(Sender: TField;
   Var Text: String; DisplayText: Boolean);
Begin
  //Sender = valor del cds
  //Text   = valos que se pinto
  //Si el valor es 1 se lo asigno al Text para displayarlo Rmz
   If sender.value = 1 Then Text := sender.asstring;
   DisplayText := true;
End;

Procedure TFEstTerpCre.BtnRetornaFiltroClick(Sender: TObject);
Begin
   ActualizaFiltPrincipal;
   BtnRetornaFiltro.Visible := False;
End;

Procedure TFEstTerpCre.actFooter2;
Var
   B: TBookmark;
   xEnvio: currency;
   xCantida: Integer;
   XMES, XANO, IC, CANTIDA, ENVIO: String;
   I, X, V, R: INTEGER;
   XCAMPO1, XCAMPO2: String;

Begin

   dbgResumen2.ColumnByName('FRECUENCIA').FooterValue := 'Total';
   dbgResumen2.ColumnByName('CANTIDA').FooterValue := '0';

  //Guardo la posicion
   B := DM1.cdsCEdu.GetBookmark;
   DM1.cdsCEdu.DisableControls;
   xCantida := 0;

   DM1.cdsCEdu.First;
   While Not DM1.cdsCEdu.Eof Do
   Begin

      xCantida := xCantida + DM1.cdsCEdu.FieldByName('CANTIDA').AsInteger;
      DM1.cdsCEdu.Next;
   End;
   dbgResumen2.ColumNByName('CANTIDA').FooterValue := FormatCurr('###,##0', xCantida);

  //Me posiciono nuevamente en el posicion marcada
   DM1.cdsCEdu.GotoBookmark(B);
   DM1.cdsCEdu.EnableControls;
   DM1.cdsCEdu.FreeBookmark(B);

End;

Procedure TFEstTerpCre.ActualizaFiltPrincipal;
Var
   xsql, xano, xmes, xanomes, xwhere, xSelect, xCase, xGrupo: String;
   X, xTipoAso: String;
Begin

   If xanomes <> fano.Text + fmes.Text Then
   Begin
      xano := fano.Text;
      xmes := fmes.Text;
      xanomes := xano + xmes;
   End
   Else
   Begin
      xano := perano.Text;
      xmes := permes.Text;
      xanomes := xano + xmes;
   End;

   If rdTodo.Checked Then xTipoAso := '';
   If rdDO.Checked Then xTipoAso := ' AND ASOTIPID=''DO'' ';
   If rdCE.Checked Then xTipoAso := ' AND ASOTIPID=''CE'' ';

   If Length(Trim(dblcUpagoid.Text)) > 0 Then
      xWhere := ' and A.Upagoid=''' + dblcUpagoid.Text + ''' ';

   xsql := 'select UPROID,UPAGOID,UPAGONOM,SUM(NVL(CANTIDA1,''''))CANTIDA1,SUM(NVL(ENVIO1,''''))ENVIO1,SUM(NVL(CANTIDA2,''''))CANTIDA2,SUM(NVL(ENVIO2,''''))ENVIO2,' +
      'SUM(NVL(CANTIDA3,''''))CANTIDA3,SUM(NVL(ENVIO3,''''))ENVIO3,SUM(NVL(CANTIDA4,''''))CANTIDA4,SUM(NVL(ENVIO4,''''))ENVIO4,' +
      'SUM(NVL(CANTIDA5,''''))CANTIDA5,SUM(NVL(ENVIO5,''''))ENVIO5,SUM(NVL(CANTIDA6,''''))CANTIDA6,SUM(NVL(ENVIO6,''''))ENVIO6,' +
      'SUM(NVL(CANTIDA7,''''))CANTIDA7,SUM(NVL(ENVIO7,''''))ENVIO7,SUM(NVL(CANTIDA8,''''))CANTIDA8,SUM(NVL(ENVIO8,''''))ENVIO8,' +
      'SUM(NVL(CANTIDA9,''''))CANTIDA9,SUM(NVL(ENVIO9,''''))ENVIO9,SUM(NVL(CANTIDA10,''''))CANTIDA10,SUM(NVL(ENVIO10,''''))ENVIO10,' +
      'SUM(NVL(CANTIDA11,''''))CANTIDA11,SUM(NVL(ENVIO11,0))ENVIO11,SUM(NVL(CANTIDA12,''''))CANTIDA12,SUM(NVL(ENVIO12,''''))ENVIO12 ' +
      'From Cob_Mot_No_Descuento_tmp2 A Where RESULTADO=''' + dblcResultado.Text + ''' ' + xWhere + xTipoAso +
      ' Group by UPROID,UPAGOID,UPAGONOM ';
   DM1.cdsResol.Close;
   DM1.cdsResol.DataRequest(xsql);
   DM1.cdsResol.Open;
   dbgResumen1.DataSource := DM1.dsResol;

   XSQL := 'Select A.UPROID,A.UPAGOID,A.UPAGONOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOTIPID, ' +
      'SUM(NVL(CANTIDA1,0))CANTIDA1,SUM(NVL(ENVIO1,''''))ENVIO1,MAX(SALDIS1)SALDIS1,' +
      'SUM(NVL(CANTIDA2,0))CANTIDA2,SUM(NVL(ENVIO2,''''))ENVIO2,MAX(SALDIS2)SALDIS2,' +
      'SUM(NVL(CANTIDA3,0))CANTIDA3,SUM(NVL(ENVIO3,''''))ENVIO3,MAX(SALDIS3)SALDIS3,' +
      'SUM(NVL(CANTIDA4,0))CANTIDA4,SUM(NVL(ENVIO4,''''))ENVIO4,MAX(SALDIS4)SALDIS4,' +
      'SUM(NVL(CANTIDA5,0))CANTIDA5,SUM(NVL(ENVIO5,''''))ENVIO5,MAX(SALDIS5)SALDIS5,' +
      'SUM(NVL(CANTIDA6,0))CANTIDA6,SUM(NVL(ENVIO6,''''))ENVIO6,MAX(SALDIS6)SALDIS6,' +
      'SUM(NVL(CANTIDA7,0))CANTIDA7,SUM(NVL(ENVIO7,''''))ENVIO7,MAX(SALDIS7)SALDIS7,' +
      'SUM(NVL(CANTIDA8,0))CANTIDA8,SUM(NVL(ENVIO8,''''))ENVIO8,MAX(SALDIS8)SALDIS8,' +
      'SUM(NVL(CANTIDA9,0))CANTIDA9,SUM(NVL(ENVIO9,''''))ENVIO9,MAX(SALDIS9)SALDIS9,' +
      'SUM(NVL(CANTIDA10,0))CANTIDA10,SUM(NVL(ENVIO10,''''))ENVIO10,MAX(SALDIS10)SALDIS10,' +
      'SUM(NVL(CANTIDA11,0))CANTIDA11,SUM(NVL(ENVIO11,''''))ENVIO11,MAX(SALDIS11)SALDIS11,' +
      'SUM(NVL(CANTIDA12,0))CANTIDA12,SUM(NVL(ENVIO12,''''))ENVIO12,MAX(SALDIS12)SALDIS12,' +
      'max(SUBSTR(B.GESTION,1,200)) GESTION,CASE WHEN MAX(GESTION) IS NOT NULL THEN ''.'' ELSE NULL END G ' +
      ' From Cob_Mot_No_Descuento_tmp2 A,COB_GES_MOT_NO_DESCUENTO B ' +
      ' Where RESULTADO=''' + dblcResultado.Text + ''' ' + xWhere + xTipoAso +
      ' AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.ASOID=B.ASOID(+) AND B.ANOMES(+)=''' + xanomes + ''' ' +
      ' Group by A.UPROID,A.UPAGOID,A.UPAGONOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.ASOTIPID ';
   DM1.cdsConvenio.Close;
   DM1.cdsConvenio.DataRequest(xsql);
   DM1.cdsConvenio.Open;
   dbgDetalle1.DataSource := DM1.dsConvenio;

   MascdbgResumen1(xanomes);
   MascdbgDetalle1(xanomes);

   dbgDetalle1.GroupFieldName := 'UPAGONOM';

   actFooter;
   actFooter1;
   BtnRetornaFiltro.Visible := False;

End;

Procedure TFEstTerpCre.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.IndexFieldNames := '';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.IndexFieldNames := '';
   DM1.cdsGrupos.Close;
   DM1.cdsGrupos.IndexFieldNames := '';
   DM1.cdsResol.Close;
   DM1.cdsResol.IndexFieldNames := '';
   DM1.cdsConvenio.Close;
   DM1.cdsConvenio.IndexFieldNames := '';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.IndexFieldNames := '';
   DM1.cdsUPago.Close;
   DM1.cdsUPago.IndexFieldNames := '';
End;

Procedure TFEstTerpCre.fcShapeBtn5Click(Sender: TObject);
Begin
   pnlObservacion.Left := 304;
   pnlObservacion.Top := 224;
   pnlObservacion.Visible := True;
   Observacion.Text := DM1.cdsConvenio.FieldByName('GESTION').AsString;
End;

Procedure TFEstTerpCre.btnActualizaClick(Sender: TObject);
Var
   XSQL, xobs, xkey: String;
   i: integer;
Begin
   xobs := '';
   For I := 0 To Observacion.Lines.count - 1 Do
   Begin
      xobs := xobs + ' ' + Trim(Observacion.Lines.Strings[i]);
   End;

   xobs := Trim(xobs);
   Xsql := 'Select GESTION FROM COB_GES_MOT_NO_DESCUENTO Where ' +
      'Anomes=''' + fano.Text + fmes.Text + ''' And  ' +
      'Uproid=''' + DM1.cdsConvenio.FieldByName('Uproid').AsString + ''' And ' +
      'Upagoid=''' + DM1.cdsConvenio.FieldByName('Upagoid').AsString + ''' And ' +
      'Asoid=''' + DM1.cdsConvenio.FieldByName('Asoid').AsString + ''' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      xsql := 'Update COB_GES_MOT_NO_DESCUENTO Set Gestion=''' + xobs + ''' Where ' +
         'Anomes=''' + fano.Text + fmes.Text + ''' And  ' +
         'Uproid=''' + DM1.cdsConvenio.FieldByName('Uproid').AsString + ''' And ' +
         'Upagoid=''' + DM1.cdsConvenio.FieldByName('Upagoid').AsString + ''' And ' +
         'Asoid=''' + DM1.cdsConvenio.FieldByName('Asoid').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End
   Else
   Begin
      xsql := 'Insert Into COB_GES_MOT_NO_DESCUENTO(ANOMES,UPROID,UPAGOID,ASOID,GESTION) Values(' +
         '''' + fano.Text + fmes.Text + ''',''' + DM1.cdsConvenio.FieldByName('Uproid').AsString + ''',' +
         '''' + DM1.cdsConvenio.FieldByName('Upagoid').AsString + ''',''' + DM1.cdsConvenio.FieldByName('Asoid').AsString + ''',' +
         '''' + xobs + ''')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      DM1.cdsConvenio.Edit;
      DM1.cdsConvenio.FieldByName('G').AsString := '.' + xobs;

   End;
   DM1.cdsConvenio.Edit;
   DM1.cdsConvenio.FieldByName('GESTION').AsString := xobs;
End;

Procedure TFEstTerpCre.Button2Click(Sender: TObject);
Begin
   pnlObservacion.Visible := False;
   pnlObservacion.Height := 161;
   Observacion.ReadOnly := False;
End;

Procedure TFEstTerpCre.onGetTextTrue(Sender: TField; Var Text: String;
   DisplayText: Boolean);
Begin
   Text := sender.asstring;
   DisplayText := true;
End;

Procedure TFEstTerpCre.onGetTextFalse(Sender: TField; Var Text: String;
   DisplayText: Boolean);
Begin
   DisplayText := False;
End;

Procedure TFEstTerpCre.blanquea;
Var
   xsql: String;
Begin
   TabSheet1.Caption := dblcResultado.Text + ' (Resumen)';
   TabSheet2.Caption := dblcResultado.Text + ' (Detallle)';
   xsql := 'select UPROID,UPAGOID,UPAGONOM,CANTIDA1,ENVIO1,CANTIDA2,ENVIO2,CANTIDA3,ENVIO3,CANTIDA4,ENVIO4,' +
      'CANTIDA5,ENVIO5,CANTIDA6,ENVIO6,CANTIDA7,ENVIO7,CANTIDA8,ENVIO8,' +
      'CANTIDA9,ENVIO9,CANTIDA10,ENVIO10,CANTIDA11,ENVIO11,CANTIDA12,ENVIO12 ' +
      'from Cob_Mot_No_Descuento_tmp2 Where Uproid=''ZZZ'' ';
   DM1.cdsResol.Close;
   DM1.cdsResol.DataRequest(xsql);
   DM1.cdsResol.Open;

   xsql := 'Select UPROID,UPAGOID,UPAGONOM,ASOID,ASOCODMOD,ASOAPENOM,ASOTIPID,' +
      'CANTIDA1,ENVIO1,SALDIS1,CANTIDA2,ENVIO2,SALDIS2,CANTIDA3,ENVIO3,SALDIS3,CANTIDA4,ENVIO4,SALDIS4,' +
      'CANTIDA5,ENVIO5,SALDIS5,CANTIDA6,ENVIO6,SALDIS6,CANTIDA7,ENVIO7,SALDIS7,CANTIDA8,ENVIO8,SALDIS8,' +
      'CANTIDA9,ENVIO9,SALDIS9,CANTIDA10,ENVIO10,SALDIS10,CANTIDA11,ENVIO11,SALDIS11,CANTIDA12,ENVIO12,SALDIS12,'' ''GESTION ' +
      ' From Cob_Mot_No_Descuento_tmp2 Where Uproid=''ZZZ'' ';
   DM1.cdsConvenio.Close;
   DM1.cdsConvenio.DataRequest(xsql);
   DM1.cdsConvenio.Open;
   dbgDetalle1.DataSource := DM1.dsConvenio;

   BtnRetornaFiltro.Visible := False;
   DM1.cdsCEdu.EmptyDataSet;
End;

Procedure TFEstTerpCre.rdTodoClick(Sender: TObject);
Begin
   If DM1.cdsCEdu.Active Then blanquea;
End;

Procedure TFEstTerpCre.rdDOClick(Sender: TObject);
Begin
   If DM1.cdsCEdu.Active Then blanquea;
End;

Procedure TFEstTerpCre.rdCEClick(Sender: TObject);
Begin
   If DM1.cdsCEdu.Active Then blanquea;
End;

End.

