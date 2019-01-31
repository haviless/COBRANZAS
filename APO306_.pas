unit APO306;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, StdCtrls, ComCtrls,
  wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Wwdbspin, Buttons,
  Wwdbigrd, Grids, Wwdbgrid, Wwdotdot, Wwdbdlg,wwClient, db, Wwkeycb,
  ppEndUsr, ppDB, ppDBPipe, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppVar, ppViewr, fcLabel, pptypes,wwIDlg;

type
  TFIngresoLote = class(TForm)
    pnlCabecera: TPanel;
    pnlDatosAportes: TPanel;
    pnlUse: TPanel;
    dbeNumOperacion: TwwDBEdit;
    dbdtpFecOperacion: TwwDBDateTimePicker;
    dbeMonto: TwwDBEdit;
    dblcMoneda: TwwDBLookupCombo;
    bbtnSigue: TfcShapeBtn;
    dblcCtaCte: TwwDBLookupCombo;
    dbeImpAporte: TwwDBEdit;
    dbgAportes: TwwDBGrid;
    bbtnIngresaAporte: TwwIButton;
    pnlAportes: TPanel;
    StaticText2: TStaticText;
    bbtnAtras: TfcShapeBtn;
    pnlHeader: TPanel;
    dblcFormaPago: TwwDBLookupCombo;
    dblcBanco: TwwDBLookupCombo;
    pnlBusca: TPanel;
    lbBusca: TLabel;
    edtBusca: TwwIncrementalSearch;
    pnlFooter: TPanel;
    Z2bbtnOrdenCodMod: TfcShapeBtn;
    Z2bbtnOrdenAlfab: TfcShapeBtn;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnSalir: TfcShapeBtn;
    GroupBox1: TGroupBox;
    dbeLetra: TwwDBEdit;
    Z2bbtnFiltro: TfcShapeBtn;
    Z2bbtnElimina: TfcShapeBtn;
    bbtnClosePnl: TButton;
    bbtnAutdisk: TfcShapeBtn;
    speAno: TwwDBEdit;
    speMes: TwwDBEdit;
    pnlActAporte: TPanel;
    cbMarca: TCheckBox;
    dblcdUse: TwwDBLookupComboDlg;
    bbtnInconsistencia: TfcShapeBtn;
    pnlFiltros: TPanel;
    bbtnBuscaInc: TfcShapeBtn;
    pnlBuscaInc: TPanel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    spdCCodModTod: TSpeedButton;
    Button1: TButton;
    Panel2: TPanel;
    spdSinIncons: TSpeedButton;
    spdInconsist: TSpeedButton;
    spdTotalReg: TSpeedButton;
    Button2: TButton;
    pnlEstado: TPanel;
    pbEstado: TProgressBar;
    lbEstado: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    spdAporteMayT: TSpeedButton;
    spdAporteMayM: TSpeedButton;
    spdAporteMenT: TSpeedButton;
    spdAporteMenM: TSpeedButton;
    bbtnImprime: TfcShapeBtn;
    ppRepInc: TppReport;
    ppDBInc: TppDBPipeline;
    ppDesInc: TppDesigner;
    spdCamCodMod: TSpeedButton;
    spdCamCodPag: TSpeedButton;
    spdCamUse: TSpeedButton;
    spdApoMay: TSpeedButton;
    spdApDup: TSpeedButton;
    spdApoMen: TSpeedButton;
    lblForPag: TLabel;
    lblban: TLabel;
    lblCtaCte: TLabel;
    lblNOpe: TLabel;
    lblFecOpe: TLabel;
    lblMon: TLabel;
    lblMonto: TLabel;
    lblUse: TLabel;
    lblAno: TLabel;
    lblMes: TLabel;
    bbtnIngLinea: TfcShapeBtn;
    spdCModCPagUseTod: TSpeedButton;
    spdCModCPagUseMar: TSpeedButton;
    Panel3: TPanel;
    lblTitulo: TLabel;
    spdTotalTransf: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Z2bbtnInserta: TfcShapeBtn;
    pnlActCredito: TPanel;
    Z2bbtnInsertaCre: TfcShapeBtn;
    spdCodModT: TSpeedButton;
    spdCodModM: TSpeedButton;
    spdCodPagT: TSpeedButton;
    spdCodPagM: TSpeedButton;
    lblUnidadProceso: TLabel;
    dblcUProceso: TwwDBLookupCombo;
    dblcdUPago: TwwDBLookupComboDlg;
    BitBtn1: TBitBtn;
    dblcdAgenBco: TwwDBLookupComboDlg;
    pnlImprime: TPanel;
    RadioGroup1: TRadioGroup;
    pnlAsoFalt: TPanel;
    dbgAsoFalt: TwwDBGrid;
    fcShapeBtn2: TfcShapeBtn;
    pnlBusq: TPanel;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    sbtnAceptar: TfcShapeBtn;
    dbgAsoFaltIButton: TwwIButton;
    pnlNAsoc: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    dbeAsoid: TwwDBEdit;
    dbeCodMod: TwwDBEdit;
    dbeCodAux: TwwDBEdit;
    dbeCodPago: TwwDBEdit;
    dbeUProc: TwwDBEdit;
    dbeUPago: TwwDBEdit;
    fcShapeBtn3: TfcShapeBtn;
    bbtnAcepNAso: TfcShapeBtn;
    dblcdUseAso: TwwDBLookupComboDlg;
    dbeApeyNom: TwwDBEdit;
    dbeUSE: TwwDBEdit;
    SpeedButton3: TSpeedButton;
    spdAsoDupl: TSpeedButton;
    pnlTransf: TPanel;
    Label10: TLabel;
    Animate1: TAnimate;
    spdAsoCuotas: TSpeedButton;
    spdCtastrans: TSpeedButton;
    spdCtasxTransf: TSpeedButton;
    Bevel1: TBevel;
    ppHeaderBand1: TppHeaderBand;
    pplbTitulo: TppLabel;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel49: TppLabel;
    ppLabel52: TppLabel;
    ppLabel57: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    spdAporteProv: TSpeedButton;
    lblCodMod: TLabel;
    dblcdCodigoModular: TwwDBLookupComboDlg;
    dbeCodigo: TwwDBEdit;
    Label11: TLabel;
    dbeCodigoPago: TwwDBEdit;
    Label54: TLabel;
    dbeApeNom: TwwDBEdit;
    lblMonApo: TLabel;
    dbeAporte: TwwDBEdit;
    lblMonCuo: TLabel;
    dbeCuota: TwwDBEdit;
    dbeTotal: TwwDBEdit;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancel: TfcShapeBtn;
    rgConsiderar: TRadioGroup;
    edtFormaPago: TwwDBEdit;
    edtBanco: TwwDBEdit;
    edtAgencia: TwwDBEdit;
    edtMoneda: TwwDBEdit;
    edtUProceso: TwwDBEdit;
    edtUPago: TwwDBEdit;
    edtUse: TwwDBEdit;
    pnlCoinsidencias: TPanel;
    dbgCoinsidencias: TwwDBGrid;
    fcShapeBtn1: TfcShapeBtn;
    StaticText1: TStaticText;
    fcLabel1: TfcLabel;
    dbePerCont: TwwDBEdit;
    fcLabel2: TfcLabel;
    spdAporteRegistrados: TSpeedButton;
    spdApRegistrados: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    dblcdUseA: TwwDBLookupComboDlg;
    dbeUseA: TwwDBEdit;
    bbtnUSESNoValidas: TSpeedButton;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppDBText26: TppDBText;
    ppLabel66: TppLabel;
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure bbtnIngresaAporteClick(Sender: TObject);
    procedure bbtnCancelClick(Sender: TObject);
    procedure bbtnSigueClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcdUseExit(Sender: TObject);
    procedure dblcFormaPagoExit(Sender: TObject);
    procedure dblcBancoExit(Sender: TObject);
    procedure dblcMonedaExit(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure dblcCtaCteExit(Sender: TObject);
    procedure dbeNumOperacionExit(Sender: TObject);
    procedure dbdtpFecOperacionExit(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure dblcdCodigoModularExit(Sender: TObject);
    procedure dblcdCodigoDropDown(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeMontoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcTransaccionExit(Sender: TObject);
    procedure Z2bbtnSalirClick(Sender: TObject);
    procedure dbeTotalExit(Sender: TObject);
    procedure speMes1Exit(Sender: TObject);
    procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure bbtnAtrasClick(Sender: TObject);
    procedure dbgAportesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgAportesDblClick(Sender: TObject);
    procedure Z2bbtnFiltroClick(Sender: TObject);
    procedure Z2bbtnOrdenCodModClick(Sender: TObject);
    procedure Z2bbtnOrdenAlfabClick(Sender: TObject);
    procedure dbgAportesTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure isBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeAporteExit(Sender: TObject);
    procedure dbeCuotaExit(Sender: TObject);
    procedure Z2bbtnEliminaClick(Sender: TObject);
    procedure bbtnClosePnlClick(Sender: TObject);
    procedure dbgAportesCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Z2bbtnInsertaClick(Sender: TObject);
    procedure cbMarcaClick(Sender: TObject);
    procedure bbtnAutdiskClick(Sender: TObject);
    procedure bbtnInconsistenciaClick(Sender: TObject);
    procedure spdTotalRegClick(Sender: TObject);
    procedure spdInconsistClick(Sender: TObject);
    procedure spdSinInconsClick(Sender: TObject);
    procedure bbtnBuscaIncClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure spdCCodModTodClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure spdAporteMayTClick(Sender: TObject);
    procedure spdAporteMayMClick(Sender: TObject);
    procedure spdAporteMenTClick(Sender: TObject);
    procedure spdAporteMenMClick(Sender: TObject);
    procedure bbtnImprimeClick(Sender: TObject);
    procedure spdCamCodModClick(Sender: TObject);
    procedure spdCamCodPagClick(Sender: TObject);
    procedure spdCamUseClick(Sender: TObject);
    procedure spdApoMayClick(Sender: TObject);
    procedure spdApoMenClick(Sender: TObject);
    procedure dbgAportesEnter(Sender: TObject);
    procedure dbeImpAporteExit(Sender: TObject);
    procedure bbtnIngLineaClick(Sender: TObject);
    procedure EventoModPagUse(Sender: TObject);
    procedure spdTotalTransfClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Z2bbtnInsertaCreClick(Sender: TObject);
    procedure dblcUProcesoExit(Sender: TObject);
    procedure dblcdUPagoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dblcdAgenBcoExit(Sender: TObject);
    procedure ppRepIncPreviewFormCreate(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure sbtnAceptarClick(Sender: TObject);
    procedure dbgAsoFaltDblClick(Sender: TObject);
    procedure dbgAsoFaltIButtonClick(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure dblcdUseAsoExit(Sender: TObject);
    procedure bbtnAcepNAsoClick(Sender: TObject);
    procedure GenAsociado;
    procedure spdAsoDuplClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure spdCodPagTClick(Sender: TObject);
    procedure spdAsoCuotasClick(Sender: TObject);
    procedure spdCtastransClick(Sender: TObject);
    procedure spdCtasxTransfClick(Sender: TObject);
    procedure spdApDupClick(Sender: TObject);
    procedure spdAporteProvClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure dbgCoinsidenciasDblClick(Sender: TObject);
    procedure bbtnActAportesDupClick(Sender: TObject);
    procedure spdAporteRegistradosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dblcdUseAExit(Sender: TObject);
    procedure dbeCodModExit(Sender: TObject);
    procedure bbtnUSESNoValidasClick(Sender: TObject);
    procedure dblcdCodigoModularInitDialog(Dialog: TwwLookupDlg);
  private
    { Private declarations }
    xArchivo : String;
    procedure LimpiaForm;
    procedure LimpiaVent;
    procedure ConfiguraGridAportes;
    procedure ReadOnlyFalseGridAportes;
    procedure OcultaPaneles;
    procedure FiltraAsoc;
  public
    { Public declarations }
    sWhere, wModo1, xSQL1, xSQL2, xSQL, wSQL, xSQL4, xSQL5, xSQL6, xASOID : String;
    procedure ActualizaFooter;
    procedure ActuaCampos;
    procedure ActuaCamposMarc;
  end;

var
   FIngresoLote: TFIngresoLote;
   xModoSta, sSQL, sFecha, sWhere, xAno, xMes, xBanco, xTrans, xASOAPENOM, xBorra, xWhere : string;
   xSaldoAnt, xSaldoTrimAnt : REAL;
   xEstado5, xEstid5, xEstado1, xEstid1, xEstado2, xEstid2, xEstado4, xEstid4, xEstado3, xEstid3 : String;
   xExist : Boolean;

implementation

uses COBDM1, COB001, APO302, MsgDlgs;

{$R *.DFM}

procedure TFIngresoLote.Z2bbtnCancelClick(Sender: TObject);
var
   xMarca: TBookMark;
   xRegCob:String;
begin
   Ocultapaneles;
   If (DM1.cdsAutdisk.ChangeCount > 0) or (DM1.cdsAutdisk.Modified) Then
    begin
     DM1.cdsAutdisk.DisableControls;
     xMarca  := DM1.cdsDLabo.GetBookmark;
     xRegCob := '';
     DM1.cdsAutdisk.First;
     While Not DM1.cdsAutdisk.EOF do
      begin
       If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
        begin
         DM1.cdsCobxUse.Edit;
         DM1.cdsCobxUse.FieldByName('ARCHIVO').Clear;
         DM1.cdsCobxUse.Post;
         xRegCob := 'S';
        end;
       DM1.cdsAutdisk.Next;
      end;
     DM1.cdsAutdisk.GotoBookmark(xMarca);
     If xRegCob = 'S' Then
      begin
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      end;
     DM1.cdsAutdisk.EnableControls;
    end;
   DM1.cdsCobxUse.CancelUpdates;
   DM1.cdsAutdisk.CancelUpdates;
end;

procedure TFIngresoLote.bbtnIngresaAporteClick(Sender: TObject);
begin
   Ocultapaneles;
   {If Length(dblcdUse.Text)=0 Then
   begin
     ShowMessage('Debe Seleccionar la USE');
     pnlUse.Enabled:=True;
     dblcdUse.Enabled:=True;
     dblcdUse.SetFocus;
     Exit;
   end;}
   xModoSta := '';
   If (DM1.cdsAutdisk.Modified) or (DM1.cdsAutdisk.ChangeCount > 0) Then
    begin
     If DM1.cdsAutdisk.State <> dsBrowse Then
      cdsPost(DM1.cdsAutdisk);
     DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
    end;

   ReadOnlyFalseGridAportes;
   If DM1.cdsAsociados.Active = False Then
    FiltraAsoc;

   If DM1.cdsAsociados.Eof Then
    begin
     Information(Caption, 'No Existen Asociados Para esta U. Pago');
     Exit;
    end;

  //If DM1.cdsAutdisk.RecordCount > 0 Then
  //begin
   wModo1 := 'A';
   Z2bbtnCancel.Enabled  := False;
   Z2bbtnAceptar.Enabled := False;
   LimpiaVent;
   DM1.cdsAutdisk.Append;
   DM1.cdsAutdisk.FieldByName('TRANSAPO').AsFloat := DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat;
   pnlAportes.Visible := True;
   dblcdCodigoModular.Enabled := True;
   dblcdCodigoModular.SetFocus;
    //dblcdCodigoModular.DropDown;
  {end
  Else
  begin
    ShowMessage('Todos los Asociados ya se encuentran en la Lista');
  end;}
end;

procedure TFIngresoLote.bbtnCancelClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   pnlCoinsidencias.Visible := False;
   DM1.cdsAutdisk.Cancel;
   pnlAportes.Visible    := False;
   Z2bbtnCancel.Enabled  := True;
   Z2bbtnAceptar.Enabled := True;
   If Length(Trim(DM1.cdsAutdisk.FieldByName('ASOID').AsString)) > 0 Then
    begin
     DM1.cdsAutdisk.Edit;
     DM1.cdsAutdisk.FieldByName('FREGCOB').AsString := '';
     DM1.cdsAutdisk.Post;
    end;
   DM1.cdsAsociados.Close;
   ActualizaFooter;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.bbtnSigueClick(Sender: TObject);
var
   xSQL : String;
begin
  //*12[#][.*2[#]]
   If Length(dblcdUse.Text) = 0 Then
    begin
     ShowMessage('Debe Seleccionar la USE');
     pnlUse.Enabled   := True;
     dblcdUse.Enabled := True;
     dblcdUse.SetFocus;
     Exit;
    end;

   If Length(speAno.Text) = 0 Then
    begin
     ShowMessage('Debe Registrar el Año');
     //speAno.SetFocus;
     Exit;
    end;

   If Length(speMes.Text) = 0 Then
    begin
     ShowMessage('Debe Registrar el Mes');
     //speMes.SetFocus;
     Exit;
   end;

   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat := '########0.00';
   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).EditFormat    := '########0.00';

   If (dbeImpAporte.Text = '') or (StrToFloat(dbeImpAporte.Text) <= 0) Then
    begin
     ShowMessage('Aporte Incorrecto');
     dbeImpAporte.SetFocus;
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT COUNT(*) AS X'
          +' FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.FieldByName('X').AsInteger > 0 Then
    begin
     xSQL := 'SELECT * FROM COB304 A'
            +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
            +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
            +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

     DM1.FiltraCDS(DM1.cdsAutdisk, xSQL );
     ActualizaFooter;
     ShowMessage('Los Movimientos ya se encuentran Insertados');
     dbgAportes.Enabled        := True;
     dblcdUse.Enabled          := False;
     bbtnIngresaAporte.Enabled := True;
     bbtnAutdisk.Enabled       := True;
     Screen.Cursor             := crDefault;
     Exit;
    end;

   bbtnSigue.Enabled   := False;
   bbtnAutdisk.Enabled := False;

   xSQL := 'SELECT COUNT(*) AS X'
          +' FROM APO201'
          +' WHERE UPROID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
          +' AND UPAGOID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
          +' AND USEID    ='+QuotedStr(dblcdUse.Text);

   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSQL);
   DM1.cdsReporte1.Open;

   If DM1.cdsReporte1.FieldByName('X').AsInteger = 0 Then
    begin
     Screen.Cursor := crDefault;
     Information(Caption, 'No Existen Asociados Para Transferir de esta U.S.E.');
     Exit;
    end;

   If not Question(Caption, 'Se Insertará '+IntToStr(DM1.cdsReporte1.FieldByName('X').AsInteger)+
                       ' Movimientos para Todos los Asociados de la USE seleccionada.'+#13+#13+
                       '¿Desea Continuar?') Then
    begin
     Screen.Cursor             := crDefault;
     dbgAportes.Enabled        := True;
     dblcdUse.Enabled          := True;
     bbtnIngresaAporte.Enabled := True;
     bbtnAutdisk.Enabled       := True;
     bbtnSigue.Enabled         := True;
     bbtnAtras.SetFocus;
     Exit;
    end;

   dbeImpAporte.Text := Trim(dbeImpAporte.Text);
   xSQL := 'INSERT INTO COB304 A '+
           '(A.TRANSANO, A.TRANSMES, A.ASOID, A.ASOCODMOD, A.TRANSAPO, A.USEID, A.ASOAPENOM, '+
          'A.UPROID, A.UPAGOID, A.DPTOID, A.TMONID, A.TRANSMTO, A.TRANSCUO, A.BANCOID, '+
          'A.CCBCOID, A.TRANSNOPE, A.TRANSFOPE, A.FORPAGOID, A.APOSEC, '+
          'A.RCOBID, A.DETRCOBID, A.USERCOBID, A.USUARIO, A.FREG, A.HREG) '+

          'SELECT '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANOAPO').AsString)+
          ', '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBMESAPO').AsString)+', B.ASOID, '+
          'B.ASOCODMOD, '+dbeImpAporte.Text+', TRIM(B.USEID), B.ASOAPENOM, '+
          'TRIM(B.UPROID), TRIM(B.UPAGOID), TRIM(C.DPTOID), '+QuotedStr('N')+
          ', '+dbeImpAporte.Text+', 0, '+QuotedStr(dblcBanco.Text)+
          ', '+QuotedStr(dblcCtaCte.Text)+
          ', '+QuotedStr(dbeNumOperacion.Text)+', '+QuotedStr(dbdtpFecOperacion.Text)+
          ', '+QuotedStr(dblcFormaPago.Text)+', '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANOAPO').AsString+DM1.cdsCobxUse.FieldByName('RCOBMESAPO').AsString)+
          ', '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+', '+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+
          ', '+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)+
          ', '+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, '+QuotedStr('DD/MM/YYY')+'), SYSDATE '+
          'FROM APO201 B, APO101 C '+
          'WHERE B.UPROID = C.UPROID '+
          'AND B.UPAGOID = C.UPAGOID '+
          'AND B.USEID = C.USEID '+
          'AND C.UPROID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+' '+
          'AND C.UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)+' '+
          'AND C.USEID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString);

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);

   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL );

   ConfiguraGridAportes;
   ActualizaFooter;

   DM1.cdsCobxUse.Edit;
   //DM1.cdsCobxUse.FieldByName('RCOBID').AsString     := DM1.cdsCobxUse.FieldByname('RCOBID').AsString;
   DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString   := dbeNumOperacion.Text;
   DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsDateTime := dbdtpFecOperacion.Date;
   DM1.cdsCobxUse.FieldByName('USEID').AsString      := dblcdUse.Text;
   //DM1.cdsCobxUse.FieldByName('UPAGOID').AsString    := DM1.cdsCobxUse.FieldByName('UPAGOID').AsString;
   //DM1.cdsCobxUse.FieldByName('UPROID').AsString     := DM1.cdsUses.FieldByName('UPROID').AsString;
   //DM1.cdsCobxUse.FieldByName('TMONID').AsString     := DM1.cdsCobxUse.FieldByName('TMONID').AsString;
   DM1.cdsCobxUse.FieldByName('RCOBUSETOT').AsFloat  := StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','')));
   DM1.cdsCobxUse.FieldByName('RCOBUSEAPO').AsFloat  := StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','')));
   DM1.cdsCobxUse.FieldByName('RCOBUSECUO').AsFloat  := StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','')));
   //DM1.cdsCobxUse.FieldByName('RCOBANO').AsString    := DM1.cdsCobxUse.FieldByName('RCOBANO').AsString;
   //DM1.cdsCobxUse.FieldByName('RCOBMES').AsString    := DM1.cdsCobxUse.FieldByName('RCOBMES').AsString;
   //DM1.cdsCobxUse.FieldByName('RCOBID').AsString     := DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
   //DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString  := DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
   DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat  := StrToFloat(dbeImpAporte.Text);
   DM1.cdsCobxUse.FieldByName('USUARIO').AsString    := DM1.wUsuario;
   DM1.cdsCobxUse.FieldByName('FREG').AsDateTime     := Date;
   DM1.cdsCobxUse.FieldByName('HREG').AsDateTime     := Date+time;
   cdsPost(DM1.cdsCobxUse);
   DM1.cdsCobxUse.Post;
   DM1.ControlTran;
   pnlUse.Enabled := False;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)',''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)',''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)',''), ffNumber, 15, 2);

   ShowMessage('Actualización Realizada');

   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat := '###,###,##0.00';

   Screen.Cursor := crDefault;
   dbgAportes.Enabled        := True;
   //dblcdUse.Enabled:=False;
   dblcdUse.Enabled          := True;
   bbtnIngresaAporte.Enabled := True;
   bbtnAutdisk.Enabled       := True;
end;

procedure TFIngresoLote.FormActivate(Sender: TObject);
var
   xSQL, xWhere : String;
   Present : TDate;
begin
   Screen.Cursor   := crHourGlass;
   dbePerCont.Text := Copy(DateToStr(Date), 7, 4)+Copy(DateToStr(Date), 4, 2);
   Present := Date;
   xExist  := False;
   dbeLetra.Text := '';
   Ocultapaneles;
   pnlAportes.Visible := False;
   DM1.cdsTransferencia.Close;
   xSQL := 'Select * From APO101'
          +' Where UPROID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
          +' And UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

   DM1.cdsUses.Filter   := '';
   DM1.cdsUses.Filtered := False;
   DM1.cdsUses.IndexFieldNames := '';
   DM1.cdsUses.Close;
   DM1.cdsUses.DataRequest(xSQL);
   DM1.cdsUses.Open;

   DM1.cdsQry1.Filter   := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;

{   xSQL := 'SELECT * FROM APO101 WHERE UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);
   DM1.Filtracds(DM1.cdsUses, xSQL);}

   DM1.cdsUses.IndexFieldNames := 'USEID';
   DM1.cdsUses.Setkey;
   DM1.cdsUses.FieldByName('USEID').AsString := DM1.cdsCobxUse.FieldByName('USEID').AsString;

   //** POR COBRAR
   xEstado2 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('2'), 'ESTDES');
   xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** NO PAGADO
   xEstado5 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('N'), 'ESTDES');
   xEstid5  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** CANCELADO
   xEstado1 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('Y'), 'ESTDES');
   xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** PARCIAL
   xEstado4 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('V'), 'ESTDES');
   xEstid4  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** PAGADO
   xEstado3 := DM1.DisplayDescrip('prvSQL', 'CRE113', 'ESTDES, ESTID', 'FLGTIPO ='+QuotedStr('C'), 'ESTDES');
   xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;

  {sWhere:= 'FPAGOID='+DM1.cdsCobxUse.FieldByName('FPAGOID').AsString;
  DM1.DisplayDescrip('prvSQL','TGE112','FPAGOBCO',sWhere,'FPAGOBCO');
  If DM1.cdsQry.FieldbyName('FPAGOBCO').AsString <> 'S' Then
  begin
    dblcBanco.Enabled:=False;
  end
  Else
  begin
    dblcBanco.Enabled:=True;
  end;}

   DM1.wTDatos := 'T';  // Para Mostrar Todos los Registros
   If DM1.wModo = 'A' Then
    begin
     {LimpiaForm;
     DM1.cdsCobxUse.FieldByName('USERCOBID').AsString:=DM1.StrZero(IntToStr(DM1.cdsCobxUse.RecordCount+1),7);
     DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString:=DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
     DM1.cdsCobxUse.FieldByName('RCOBID').AsString:=DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
     DM1.cdsCobxUse.FieldByName('RCOBANO').AsString:=DM1.cdsCobxUse.FieldByName('RCOBANO').AsString;
     DM1.cdsCobxUse.FieldByName('RCOBMES').AsString:=DM1.cdsCobxUse.FieldByName('RCOBMES').AsString;
     pnlUse.Enabled:=True;
     dblcdUse.Enabled:=True;
     dblcdUse.SetFocus;
     dblcFormaPagoExit(Sender);
     dblcBancoExit(Sender);
     dblcdAgenBcoExit(Sender);
     dblcMonedaExit(Sender);}
    end
   Else
    If DM1.wModo = 'M' Then
     begin
      //Para colocar el Monto
{      xWhere := 'RCOBID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('RCOBID').AsString)
               +' And DETRCOBID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('DETRCOBID').AsString);
      DM1.DisplayDescrip('prvSQL', 'COB302', 'DOCMTO', xWhere, 'DOCMTO');          }

      xWhere := 'RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
               +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString);
      DM1.DisplayDescrip('prvSQL', 'COB302', 'CPAGOMTO', xWhere, 'CPAGOMTO');

      DM1.cdsCobxUse.Edit;
      DM1.cdsCobxUse.FieldByName('RCOBUSETOT').AsFloat := DM1.cdsQry.FieldByName('CPAGOMTO').AsFloat;
      speAno.Text := DM1.cdsCobxUse.FieldByName('RCOBANOAPO').AsString;
      speMes.Text := DM1.cdsCobxUse.FieldByName('RCOBMESAPO').AsString;

      dblcFormaPagoExit(Sender);
      dblcBancoExit(Sender);
      dblcdAgenBcoExit(Sender);
      dblcMonedaExit(Sender);
      dblcUProcesoExit(Sender);
      dblcdUPagoExit(Sender);

      If DM1.cdsAutdisk.RecordCount > 0 Then
       begin
        dbgAportes.Enabled := True;
        bbtnIngresaAporte.Enabled := True;
        bbtnSigue.Enabled   := False;
        bbtnAutdisk.Enabled := True;
        pnlUse.Enabled      := True;
        ConfiguraGridAportes;
        ActualizaFooter;
        dblcdUse.Text := DM1.cdsCobxUse.FieldByName('USEID').AsString;
        sWhere := 'UPROID       ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
                 +' AND UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
                 +' AND USEID   ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString);
        edtUse.Text := DM1.DisplayDescrip('prvTGE', 'APO101', 'USEID, USENOM', sWhere,'USENOM');
       //Exit;
       end;
     ConfiguraGridAportes;

     DM1.cdsAutdisk.Filtered := False;
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter   := '';
     DM1.cdsAutdisk.Filtered := True;

     ActualizaFooter;
    //bbtnSigue.SetFocus;
   end;

   xBorra:='';

   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).EditFormat    := '########0.00';

//   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBUSETOT')).DisplayFormat := '###,###,##0.00';
//   TNumericField(DM1.cdsCobxUse.FieldByName('RCOBUSETOT ')).EditFormat   := '########0.00';

   bbtnIngresaAporte.Enabled := False;
  //ConfiguraGridAportes;
  //ActualizaFooter;
   pnlUse.Enabled := True;
   DM1.cdsQry2.Close;
   bbtnsigue.Enabled := True;
   dblcdUse.Text := DM1.cdsCobxUse.FieldByName('USEID').AsString;
   sWhere := 'UPROID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
            +' AND UPAGOID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
            +' AND USEID='+ QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString);
   edtUse.Text := DM1.DisplayDescrip('prvTGE', 'APO101', 'USEID, USENOM', sWhere, 'USENOM');

   If DM1.wModo = 'M' Then
    begin
     // Determina si el Lote corresponde a un Global ya concluido
     xWhere := 'BANCOID='+QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString)
              +' AND AGENBCOID='+QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)
              +' AND RCOBANO='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANO').AsString)
              +' AND RCOBMES='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBMES').AsString)
              +' AND RCOBFOPE=TO_DATE('+QuotedStr(formatdatetime(wFormatFecha,DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsDateTime))+')'+
               ' AND RCOBNOPE='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString);
     If (DM1.DisplayDescrip('prvTGE','COB301','RCOBFIN',xWhere,'RCOBFIN')='S') Then
      begin
       dbgAportes.Enabled  := False;
       bbtnimprime.Enabled := True;

       z2bbtnfiltro.Enabled       := False;
       z2bbtnordencodmod.Enabled  := False;
       z2bbtnordenalfab.Enabled   := False;
       bbtninconsistencia.Enabled := False;
       z2bbtncancel.Enabled       := False;
       z2bbtnaceptar.Enabled      := False;
       z2bbtnsalir.Enabled        := False;
       bbtnautdisk.Enabled        := False;
       bbtnsigue.Enabled          := False;
       bbtninglinea.Enabled       := False;
       bbtnatras.Enabled          := False;
       z2bbtnelimina.Enabled      := False;
       bbtnbuscainc.Enabled       := False;
       z2bbtninserta.Enabled      := False;
       z2bbtninsertacre.Enabled   := False;
       bbtningresaaporte.Enabled  := False;
      end;
    end;
   Screen.cursor := crDefault;
end;

procedure TFIngresoLote.dblcdUseExit(Sender: TObject);
begin
   If Length(dblcdUse.Text) > 0 Then
    begin
     sWhere := 'UPROID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
              +' AND UPAGOID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
              +' AND USEID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString);
     edtUse.Text := DM1.DisplayDescrip('prvTGE', 'APO101', 'USENOM', sWhere, 'USENOM');
     If bbtnCancel.Focused Then Exit;
     If (edtUse.Text='') and (dblcdUse.Text <> '') Then
      begin
       dblcdUse.SetFocus;
       Raise Exception.Create('Error, Código USE no válido');
      end;
     FiltraAsoc;
    end;
  //DM1.cdsCobxUse.Edit;
  //DM1.cdsCobxUse.FieldByName('USEID').AsString:=DM1.cdsUse.FieldByName('USEID').AsString;
end;

procedure TFIngresoLote.dblcFormaPagoExit(Sender: TObject);
begin
   sWhere := 'FORPAGOABR = '+ QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)+' AND FORPAGFAPO LIKE'+QuotedStr('%S%');
   edtFormaPago.Text  := DM1.DisplayDescrip('prvTGE', 'COB101', 'FORPAGODES', sWhere, 'FORPAGODES');
   dblcFormaPago.Text := DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString;

   If z2bbtnCancel.Focused Then Exit;

   If (edtFormaPago.Text='') and (dblcFormaPago.Text<>'') Then
    begin
     Raise Exception.Create('Error, Código de Forma de Pago no válido');
    end;
   If Length(dblcFormaPago.Text) = 0 Then
    begin
     Raise Exception.Create('Ingrese la Forma de Pago del Aporte');
    end;
end;

procedure TFIngresoLote.dblcBancoExit(Sender: TObject);
begin
   sWhere := 'FPAGOID ='+DM1.cdsCobxUse.FieldByName('FPAGOID').AsString;
   DM1.DisplayDescrip('prvSQL', 'TGE112', 'FPAGOBCO', sWhere, 'FPAGOBCO');
   If DM1.cdsQry.FieldbyName('FPAGOBCO').AsString <> 'S' Then
    Exit;

   sWhere := 'BANCOID = '+ QuotedStr(dblcBanco.Text) ;
   edtBanco.Text := DM1.DisplayDescrip('prvTGE', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM');
   If z2bbtnCancel.Focused Then Exit;
   If dblcBanco.Text = '' Then
    begin
     ShowMessage('Ingresa el Código del Banco');
     dblcBanco.SetFocus;
     Exit;
    end;
   If (edtBanco.Text = '') and (dblcBanco.Text <> '') Then
    begin
     //dblcBanco.SetFocus;
     //Raise Exception.Create('Error, Código de Banco no válido');
    end;
   If xBanco <> dblcBanco.Text Then
    dblcCtaCte.Text := '';
   DM1.FiltraCDS(DM1.cdsCtaCtes, 'SELECT * FROM TGE106 WHERE BANCOID ='+QuotedStr(dblcBanco.Text)+' AND CIAID ='+QuotedStr(wCiaDef));
end;

procedure TFIngresoLote.dblcMonedaExit(Sender: TObject);
begin
   sWhere := 'TMONID = '+ QuotedStr(dblcMoneda.Text) ;
   edtMoneda.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');
   If bbtnCancel.Focused Then Exit;
   If (edtMoneda.Text = '') and (dblcMoneda.Text <> '') Then
    begin
     dblcMoneda.SetFocus;
     Raise Exception.Create('Error, Código de Tipo de Moneda no válido');
    end;
   If  dblcMoneda.Text='' Then
    begin
     dblcMoneda.SetFocus;
     Raise Exception.Create('Ingrese el Tipo de Moneda del Aporte');
    end;
end;

procedure TFIngresoLote.bbtnAceptarClick(Sender: TObject);
var
   xSQL, xWhere : String;
   Code : Integer;
   I    : Double;
   xxUse, xxDpto, xASOID, xASOCODMOD, xASOAPENOM, xUSEID, xASOCODPAGO : String;
begin
   ReadOnlyFalseGridAportes;
   If Length(Trim(dblcdCodigoModular.Text)) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese el Código Modular', mtInformation, [mbOk], 0);
     dblcdCodigoModular.SetFocus;
     Exit;
    end;

   If Length(Trim(dbeCodigo.Text)) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese el Código del Asociado', mtInformation, [mbOk], 0);
     dblcdCodigoModular.SetFocus;
     Exit;
    end;

   If Length(Trim(dbeApeNom.Text)) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese el Nombre del Asociado', mtInformation, [mbOk], 0);
     dblcdCodigoModular.SetFocus;
     Exit;
    end;

   xWhere := 'UPROID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
            +' And USEID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString);

   If Length(DM1.DisplayDescrip('prvSQL', 'APO101', 'UPROID, UPAGOID, USEID', xWhere, 'USEID')) = 0 Then
    begin
     Beep;
     MessageDlg('La USE '+DM1.cdsAutDisk.FieldByName('USEID').AsString+' No es Válida', mtInformation, [mbOk], 0);
     dblcdUseA.SetFocus;
     Exit;
    end
   Else //Si la USE es Válida, se Verifica si Tiene Inconsistencia FUSENOEX
    begin
     xWhere := 'ASOID ='+QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
              +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
              +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
              +' And USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
              +' And FTRANSF ='+QuotedStr('I')
              +' And FUSENOEX ='+QuotedStr('S');

    If Length(DM1.DisplayDescrip('prvSQL', 'COB304', 'ASOID, FTRANSF, FUSENOEX', xWhere, 'ASOID')) > 0 Then
     begin
      xSQL := 'Update COB304 Set'
             +' FTRANSF = Null,'
             +' FUSENOEX = Null'
             +' Where ASOID ='+QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
             +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
             +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
             +' And USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
             +' And FTRANSF ='+QuotedStr('I')
             +' And FUSENOEX ='+QuotedStr('S');
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     end;
    end;

   dbeAporte.Text := Trim(dbeAporte.Text);
   Val(dbeAporte.Text, I, Code);
   If Code <> 0 Then
    begin
     ShowMessage('Debe Registrar Correctamente el Monto de Aportes');
     dbeAporte.SetFocus;
     Exit;
    end
   Else
    begin
     dbeCuota.Text := Trim(dbeCuota.Text);
     Val(dbeCuota.Text, I, Code);
     If Code <> 0 Then
      begin
       ShowMessage('Debe Registrar Correctamente el Monto de la Cuota Aportes');
       dbeCuota.SetFocus;
       Exit;
      end;
     If (StrToFloat(dbeAporte.Text) = 0) And  (StrToFloat(dbeCuota.Text) = 0) Then
      begin
       ShowMessage('Debe Registrar el Monto de Aporte o Cuota');
       dbeAporte.SetFocus;
       Exit;
      end;
    end;

   If DM1.cdsAutdisk.Modified Then
    begin
     If wModo1 = 'A' Then
      begin
       If Length(Trim(xModoSta)) > 0 Then
        begin
         xASOID     := DM1.cdsAutdisk.FieldByName('ASOID').AsString;
         xASOCODMOD := DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString;
         xASOAPENOM := DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString;
         xUSEID     := DM1.cdsAutdisk.FieldByName('USEID').AsString;
        end
       Else
        begin
         xASOID     := DM1.cdsAsociados.FieldByName('ASOID').AsString;
         xASOCODMOD := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
         xASOAPENOM := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
//         xUSEID     := DM1.cdsAsociados.FieldByName('USEID').AsString;
         xUSEID     := DM1.cdsAutdisk.FieldByName('USEID').AsString;
        end;
      end
     Else
      If wModo1 = 'M' Then
       begin
        xASOID     := DM1.cdsAutdisk.FieldByName('ASOID').AsString;
        xASOCODMOD := DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString;
        xASOAPENOM := DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString;
        xUSEID     := DM1.cdsAutdisk.FieldByName('USEID').AsString;
       end;

     DM1.cdsAutdisk.Edit;
     DM1.cdsAutdisk.FieldByName('ASOID').AsString      := xASOID;
     DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString  := xASOCODMOD;
     DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString  := xASOAPENOM;

     xSQL := 'SELECT * FROM APO101'
            +' WHERE UPROID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
            +' AND UPAGOID  ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
            +' AND USEID    ='+ QuotedStr(xUSEID);

     DM1.Filtracds(DM1.cdsQry,xSQL);

     If DM1.cdsQry.RecordCount = 0 Then
      begin
       xSQL := 'SELECT * FROM APO101'
              +' WHERE UPROID ='+ QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
              +' AND UPAGOID  ='+ QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)
              +' AND USEID    ='+ QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString);
       DM1.Filtracds(DM1.cdsQry, xSQL);
      end;
      
     DM1.cdsAutdisk.FieldByName('UPROID').AsString     := DM1.cdsCobxUse.FieldbyName('UPROID').AsString;
     DM1.cdsAutdisk.FieldByName('UPAGOID').AsString    := DM1.cdsCobxUse.FieldbyName('UPAGOID').AsString;
     DM1.cdsAutdisk.FieldByName('USEID').AsString      := DM1.cdsQry.FieldbyName('USEID').AsString;
     DM1.cdsAutdisk.FieldByName('DPTOID').AsString     := DM1.cdsQry.FieldbyName('DPTOID').AsString;
     DM1.cdsAutdisk.FieldByName('TRANSANO').AsString   := speAno.Text;
     DM1.cdsAutdisk.FieldByName('TRANSMES').AsString   := DM1.StrZero(speMes.Text, 2);

     If (Trim(dblcFormaPago.Text) = 'PLA') or
       (Trim(dblcFormaPago.Text) = 'REG') Then
      DM1.cdsAutdisk.FieldByName('APOSEC').AsString   := speAno.Text+DM1.StrZero(speMes.Text, 2)
     Else
      DM1.cdsAutdisk.FieldByName('APOSEC').AsString   := Copy(dbdtpFecOperacion.Text, 7, 4)+Copy(dbdtpFecOperacion.Text, 4, 2);

     DM1.cdsAutdisk.FieldByName('TMONID').AsString      := dblcMoneda.Text;
     DM1.cdsAutdisk.FieldByName('BANCOID').AsString     := dblcBanco.Text;
     DM1.cdsAutdisk.FieldByName('CCBCOID').AsString     := dblcCtaCte.Text;
     DM1.cdsAutdisk.FieldByName('TRANSNOPE').AsString   := dbeNumOperacion.Text;
     DM1.cdsAutdisk.FieldByName('TRANSFOPE').AsDateTime := dbdtpFecOperacion.Date;
     DM1.cdsAutdisk.FieldByName('FORPAGOID').AsString   := dblcFormaPago.Text;
     DM1.cdsAutdisk.FieldByName('ASOCODPAGO').AsString  := dbeCodigoPago.Text;

     DM1.cdsAutdisk.FieldByName('RCOBID').AsString     := DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
     DM1.cdsAutdisk.FieldByName('DETRCOBID').AsString  := DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
     DM1.cdsAutdisk.FieldByName('USERCOBID').AsString  := DM1.cdsCobxUse.FieldByName('USERCOBID').AsString;

     dbeAporte.Text := Trim(dbeAporte.Text);
     Val(dbeAporte.Text, I, Code);
     If Code = 0 Then
      DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat  := StrToFloat(dbeAporte.Text)
     Else
      DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat  := 0;

     dbeCuota.Text := Trim(dbeCuota.Text);
     Val(dbeCuota.Text, I, Code);
     If Code = 0 Then
      DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat  := StrToFloat(dbeCuota.Text)
     Else
      DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat  := 0;

     dbeTotal.Text := Trim(dbeTotal.Text);
     Val(dbeTotal.Text, I, Code);
     If Code = 0 Then
      DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat  := StrToFloat(dbeTotal.Text)
     Else
      DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat  := 0;

     DM1.cdsAutdisk.FieldByName('FREGCOB').AsString  := '';
     DM1.cdsAutdisk.FieldByName('FTRANSFC').AsString := '';
     DM1.cdsAutdisk.FieldByName('USUARIO').AsString  := DM1.wUsuario;
     DM1.cdsAutdisk.FieldByName('FREG').AsDateTime   := Date;
     DM1.cdsAutdisk.FieldByName('HREG').AsDateTime   := Date+Time;

     cdsPost(DM1.cdsAutdisk);
//    DM1.cdsAutdisk.Post;
     DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

     If xModoSta = 'A' Then
      begin
       GenAsociado;
       xModoSta := '';
      end;

     Z2bbtnCancel.Enabled  := True;
     Z2bbtnAceptar.Enabled := True;

     ConfiguraGridAportes;
     ActualizaFooter;
    //DM1.cdsAutdisk.First;

     Beep;
     MessageDlg('Datos Actualizados', mtCustom, [mbOk], 0);
   //pnlAportes.Visible := False;
     FiltraAsoc;
     ReadOnlyFalseGridAportes;
     LimpiaVent;
     DM1.cdsAutdisk.Append;
     DM1.cdsAutdisk.FieldByName('TRANSAPO').AsFloat := DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat;
//     pnlAportes.Visible := False;
     dblcdCodigoModular.Enabled := True;
     dblcdCodigoModular.SetFocus;
    end;
end;

procedure TFIngresoLote.dblcCtaCteExit(Sender: TObject);
begin
   If Z2bbtnCancel.Focused Then Exit;
   If dblcCtaCte.Text = '' Then
    begin
     dblcCtaCte.SetFocus;
     Raise Exception.Create('Ingrese el Número de Cuenta Corriente');
    end;
   sWhere := 'CCBCOID = '+ QuotedStr(dblcCtaCte.Text) ;
   If DM1.DisplayDescrip('prvTGE', 'TGE106', 'BANCOID', sWhere, 'BANCOID')='' Then
    begin
     dblcCtaCte.SetFocus;
     Raise Exception.Create('Cuenta Corriente no válida');
    end;
   xBanco := dblcBanco.Text;
end;

procedure TFIngresoLote.dbeNumOperacionExit(Sender: TObject);
begin
   If bbtnCancel.Focused Then Exit;
   If dblcCtaCte.Text = '' Then
    begin
     dblcCtaCte.SetFocus;
     Raise Exception.Create('Ingrese el Número de Cuenta Corriente');
    end;
end;

procedure TFIngresoLote.dbdtpFecOperacionExit(Sender: TObject);
begin
   If z2bbtnCancel.Focused Then Exit;
   If dbdtpFecOperacion.Text = '' Then
    begin
     dbdtpFecOperacion.SetFocus;
     Raise Exception.Create('Ingrese la Fecha de Operación');
    end;
end;

procedure TFIngresoLote.Z2bbtnAceptarClick(Sender: TObject);
begin
   Ocultapaneles;
   If DM1.cdsAutdisk.Active Then
    begin
     If (DM1.cdsAutdisk.ChangeCount > 0) or (DM1.cdsAutdisk.Modified) Then
      begin
       DM1.cdsAutdisk.DisableControls;
       DM1.cdsAutdisk.First;
       While Not DM1.cdsAutdisk.EOF DO
        begin
         If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
          begin
           DM1.cdsAutdisk.Edit;
           DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
           DM1.cdsAutdisk.Post;
          end;
         DM1.cdsAutdisk.Next;
        end;
       DM1.cdsAutdisk.EnableControls;
       DM1.cdsAutdisk.First;
      end;
     DM1.cdsAutdisk.Edit;
     DM1.cdsAutdisk.FieldByName('USUARIO').AsString := DM1.wUsuario;
     DM1.cdsAutdisk.FieldByName('FREG').AsDateTime  := Date;
     DM1.cdsAutdisk.FieldByName('HREG').AsDateTime  := Date+Time;
     cdsPost(DM1.cdsAutdisk);
     DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
     ShowMessage('Actualización Realizada');
   end;
end;

procedure TFIngresoLote.dblcdCodigoModularExit(Sender: TObject);
begin
   If bbtnCancel.Focused Then Exit;

   dblcdCodigoModular.Text := DM1.StrZero(dblcdCodigoModular.Text, xLogAsoid);
//Busca en el Maestro de Asociados
   DM1.cdsAsociados.IndexFieldNames := 'ASOCODMOD';
   DM1.cdsAsociados.Setkey;
   DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString := dblcdCodigoModular.Text;
   If DM1.cdsAsociados.GotoKey Then
    begin
     sWhere := 'ASOCODMOD ='+ QuotedStr(dblcdCodigoModular.Text)
              +' AND UPROID ='+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
              +' AND UPAGOID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);//+' '+

     DM1.DisplayDescrip('prvTGE', 'APO201', 'ASOID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, USEID', sWhere, 'ASOCODMOD');
     If DM1.cdsQry.RecordCount > 1 Then
      begin
       Beep;
       MessageDlg('Existen '+IntToStr(DM1.cdsQry.RecordCount)+' Registros con Código Modular '+dblcdCodigoModular.Text, mtInformation, [mbOk], 0);
       xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID FROM APO201'
              +' WHERE ASOCODMOD ='+QuotedStr(dblcdCodigoModular.Text)
              +' And UPROID ='+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
              +' And UPAGOID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

       DM1.cdsQry2.Filter   := '';
       DM1.cdsQry2.Filtered := False;
       DM1.cdsQry2.IndexFieldNames := '';
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest(xSQL);
       DM1.cdsQry2.Open;

       dbgAsoFalt.Selected.Clear;
       dbgAsoFalt.Selected.Add('ASOID'#9'10'#9'Código');
       dbgAsoFalt.Selected.Add('ASOCODMOD'#9'11'#9'Código~Modular');
       dbgAsoFalt.Selected.Add('ASOCODAUX'#9'3'#9'Código~Auxiliar');
       dbgAsoFalt.Selected.Add('ASOCODPAGO'#9'10'#9'Código~Pago');
       dbgAsoFalt.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos~Nombres');
       dbgAsoFalt.Selected.Add('UPROID'#9'5'#9'U. Proceso');
       dbgAsoFalt.Selected.Add('UPAGOID'#9'5'#9'U. Pago');
       dbgAsoFalt.Selected.Add('USEID'#9'5'#9'U.S.E.');
       dbgAsoFalt.ApplySelected;
       dbgAsoFalt.DataSource := DM1.dsQry2;

       pnlNAsoc.Visible   := False;
       pnlAsoFalt.Height  := 343;
       pnlAsoFalt.Left    := 24;
       pnlAsoFalt.Width   := 745;
       pnlAsoFalt.Top     := 18;
       edtAsociado.Text   := '';
       pnlAsoFalt.Visible := True;
       edtAsociado.SetFocus;
      end
     Else
      begin
       DM1.cdsAutdisk.Edit;
       DM1.cdsAutDisk.FieldByName('ASOID').AsString      := DM1.cdsQry.FieldByName('ASOID').AsString;
       DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString  := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
       DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
       DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString  := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
       DM1.cdsAutDisk.FieldByName('USEID').AsString      := DM1.cdsQry.FieldByName('USEID').AsString;
       DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat    := 0;
       DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat    := 0;
       dbeCodigoPago.Text                                := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
       dblcdUseAExit(Sender);
       dbeAporte.SetFocus;
      end;
    end
   Else
    begin
     pnlCoinsidencias.Visible := True;
     dbgCoinsidencias.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos y Nombres');
     dbgCoinsidencias.Selected.Add('USEID'#9'5'#9'Use');
     dbgCoinsidencias.Selected.Add('UPROID'#9'5'#9'U. ~Proceso');
     dbgCoinsidencias.Selected.Add('UPAGOID'#9'5'#9'U.~Pago');
     xSQL := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.USEID, A.UPROID, A.ASOCODPAGO, A.UPAGOID'
          +' FROM APO201 A'
          +' WHERE ASOCODMOD = '+QuotedStr(dblcdCodigoModular.Text);
     DM1.cdsQry5.Filter := '';
     DM1.cdsQry5.Filtered := False;
     DM1.cdsQry5.Close;
     DM1.cdsQry5.datarequest(xSQL);
     DM1.cdsQry5.Open;
     dbgCoinsidencias.DataSource := DM1.dsQry5;

     If DM1.cdsQry5.Recordcount = 0 Then
      begin
       //Si No lo Encuentra en el Maestro de Asociados entonces Busca en el COB304
       sWhere := 'ASOCODMOD ='+QuotedStr(dblcdCodigoModular.Text)
                +' AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
       If Length(Trim(DM1.DisplayDescrip('prvSQL','COB304', 'ASOID, ASOCODMOD, ASOCODPAGO, TRANSAPO, TRANSCUO, TRANSMTO, ASOAPENOM', sWhere, 'ASOID'))) > 0 Then
        begin
         ErrorMsg(Caption,'El Asociado '+#13+#13+
                            DM1.cdsQry.FieldByName('ASOID').AsString+'  -  '+DM1.cdsQry.FieldByName('ASOAPENOM').AsString+#13+#13+
                           'Ya se Encuentra Registado'+#13+#13+
                           'Verifique');

         DM1.cdsAutdisk.Edit;
         DM1.cdsAutDisk.FieldByName('ASOID').AsString      := DM1.cdsQry.FieldByName('ASOID').AsString;
         DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString  := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
         DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
         DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString  := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
         DM1.cdsAutDisk.FieldByName('TRANSAPO').AsString   := DM1.cdsQry.FieldByName('TRANSAPO').AsString;
         DM1.cdsAutDisk.FieldByName('TRANSCUO').AsString   := DM1.cdsQry.FieldByName('TRANSCUO').AsString;
         DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString   := DM1.cdsQry.FieldByName('TRANSMTO').AsString;
         dbeCodigoPago.Text                                := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
         dbeAporte.SetFocus;
         xExist := True; //Para Flagear y que el Asociado Existe en el COB304
  //       dblcdCodigoModular.SetFocus;
         Exit;
        end
       Else //Si No Exite en el Maestro de Asociados, Ni en el COB304
        begin
         pnlCoinsidencias.Visible := False;
         Information(Caption, 'Asociado no Existe Ingrese el nombre para Encontrar las Coincidencias');
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID FROM APO201'
                +' WHERE ASOID =''XX''';

         DM1.cdsQry2.Close;
         DM1.cdsQry2.DataRequest(xSQL);

         dbgAsoFalt.Selected.Clear;
         dbgAsoFalt.Selected.Add('ASOID'#9'10'#9'Código');
         dbgAsoFalt.Selected.Add('ASOCODMOD'#9'11'#9'Código~Modular');
         dbgAsoFalt.Selected.Add('ASOCODAUX'#9'3'#9'Código~Auxiliar');
         dbgAsoFalt.Selected.Add('ASOCODPAGO'#9'10'#9'Código~Pago');
         dbgAsoFalt.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos~Nombres');
         dbgAsoFalt.Selected.Add('UPROID'#9'5'#9'U. Proceso');
         dbgAsoFalt.Selected.Add('UPAGOID'#9'5'#9'U. Pago');
         dbgAsoFalt.Selected.Add('USEID'#9'5'#9'U.S.E.');

         DM1.cdsQry2.Open;

         //dbgAsoFalt.DataSource:=DM1.dsQry;
         pnlNAsoc.Visible   := False;
         pnlAsoFalt.Height  := 343;
         pnlAsoFalt.Left    := 24;
         pnlAsoFalt.Width   := 745;
         pnlAsoFalt.Top     := 18;
         edtAsociado.Text   := '';
         pnlAsoFalt.Visible := True;
         edtAsociado.SetFocus;

         dbeCodigo.Text     := DM1.cdsAsociados.FieldByName('ASOID').AsString;
         dbeCodigoPago.Text := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
         dbeApeNom.Text     := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
        end;
      end
     Else
      begin
       If DM1.cdsQry5.RecordCount > 0 Then
        begin
         pnlCoinsidencias.Visible := True;
         dbgCoinsidencias.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos y Nombres');
         dbgCoinsidencias.Selected.Add('USEID'#9'5'#9'Use');
         dbgCoinsidencias.Selected.Add('UPROID'#9'5'#9'U. ~Proceso');
         dbgCoinsidencias.Selected.Add('UPAGOID'#9'5'#9'U.~Pago');
        end
       Else
        begin
         pnlCoinsidencias.Visible := False;
         xModoSta := 'A';
         sWhere := 'ASOCODMOD ='+ QuotedStr(dblcdCodigoModular.Text);

         DM1.DisplayDescrip('prvTGE', 'APO201', 'ASOID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, USEID', sWhere, 'ASOCODMOD');
         DM1.cdsAutdisk.Edit;
         DM1.cdsAutDisk.FieldByName('ASOID').AsString      := DM1.cdsQry.FieldByName('ASOID').AsString;
         DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString  := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
         DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
         DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString  := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
         DM1.cdsAutDisk.FieldByName('USEID').AsString      := DM1.cdsQry.FieldByName('USEID').AsString;
         DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat    := 0;
         DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat    := 0;
         dbeCodigoPago.Text                                := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
         dblcdUseAExit(Sender);         
         dbeAporte.SetFocus;
        end;
      end;
    end;
end;

procedure TFIngresoLote.dblcdCodigoDropDown(Sender: TObject);
begin
  //DM1.cdsAsociados.IndexFieldNames:='ASOID';
end;

procedure TFIngresoLote.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   If  (DM1.wModo='A') or (DM1.wModo='M') Then
    begin
     If (DM1.cdsAutdisk.ChangeCount > 0) or (DM1.cdsAutdisk.Modified) Then
      begin
       If Question(Caption,'Tiene Datos No Actualizados.'+#13+#13+
                           '¿Desea Guardar sus Actualizaciones? ') Then
        begin
         Z2bbtnAceptar.Click;
         CanClose := True;
         //dbgAportes.RefreshDisplay;
         Close;
        end
       Else
        begin
         DM1.cdsAutdisk.CancelUpdates;
         //DM1.cdsAutdisk.DisableControls;
         CanClose := True;
         Close;
        end;
      end;
    end;
end;

procedure TFIngresoLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsUses.IndexFieldNames      := '';
   DM1.cdsAsociados.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames   := '';
   dbgAportes.Color := $00C8E1DF;
   DM1.cdsCobxUse.CancelUpdates;
   DM1.cdsAutdisk.Cancel;
   DM1.cdsAsociados.Close;
   DM1.cdsAutdisk.Close;
   DM1.cdsQry1.Filter   := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry2.Filter   := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry4.Filter   := '';
   DM1.cdsQry4.Filtered := False;
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry4.Close;
   DM1.cdsQry5.Filter   := '';
   DM1.cdsQry5.Filtered := False;
   DM1.cdsQry5.IndexFieldNames := '';
   DM1.cdsQry5.Close;
   DM1.cdsRec.Filter   := '';
   DM1.cdsRec.Filtered := False;
   DM1.cdsRec.IndexFieldNames := '';
   DM1.cdsRec.Close;
end;

procedure TFIngresoLote.dbeMontoExit(Sender: TObject);
var
   xSQL : String;
begin
   xSQL := 'SELECT * FROM APO117 WHERE APOANO ='+QuotedStr(speAno.Text)+ ' AND APOMES ='+QuotedStr(DM1.StrZero(speMes.Text, 2));
   DM1.Filtracds(DM1.cdsQry, xSQL);
   If  dbeMonto.Text = '' Then
    begin
     dbeMonto.SetFocus;
     Raise Exception.Create('Ingrese el Monto del Aporte');
    end;
   If StrToFloat(dbeMonto.Text) <= 0 Then
    begin
     dbeMonto.SetFocus;
     Raise Exception.Create('Monto del Aporte no puede ser negativo o igual a cero');
    end;
   If StrToFloat(dbeMonto.Text) <> DM1.cdsQry.FieldByName('APOVALOR').AsFloat THEN
    begin
     ShowMessage('El Monto del Aporte para el período '+#13
                           +'Año '+speAno.Text +'Mes'+speMes.Text+'es '+FloatToStr(DM1.cdsQry.FieldByName('APOVALOR').AsFloat));
    end;
end;

procedure TFIngresoLote.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFIngresoLote.dblcTransaccionExit(Sender: TObject);
begin
  //sWhere:= 'TRANSID = '+ QuotedStr(dblcTransaccion.Text) ;
  //edtTransaccion.Text:=DM1.DisplayDescrip('prvTGE','APO118','TRANSDES',sWhere,'TRANSDES');
end;

procedure TFIngresoLote.LimpiaForm;
begin
{  dblcFormaPago.Clear; edtFormaPago.Clear;
   dblcBanco.Clear;   edtBanco.Clear;
   dblcCtaCte.Clear;
   dbeNumOperacion.Clear; dbdtpFecOperacion.Text:='';
   dblcMoneda.Clear; edtMoneda.Clear;
   dbeMonto.Clear;}
   dblcdUse.Clear;
   edtUse.Clear;
   speAno.Text := '';
   speMes.Text := '';
   dbeImpAporte.Clear;
end;

procedure TFIngresoLote.LimpiaVent;
begin
   dblcdCodigoModular.Clear;
   dbeCodigo.Clear;
   dbeApeNom.Clear;
   dbeTotal.Clear;
   dbeCodigoPago.Clear;
   dbeAporte.Clear;
   dbeCuota.Clear;
   dbeUseA.Clear;
end;

procedure TFIngresoLote.Z2bbtnSalirClick(Sender: TObject);
var
   xMarca  : TBookMark;
   xRegCob : String;
begin
   If DM1.cdsAutdisk.Active Then
   begin
    DM1.cdsAutdisk.CancelUpdates;
    If (DM1.cdsAutdisk.ChangeCount > 0) or (DM1.cdsAutdisk.Modified) Then
     begin
      DM1.cdsAutdisk.DisableControls;
      xMarca  := DM1.cdsDLabo.GetBookmark;
      xRegCob := '';
      DM1.cdsAutdisk.First;
      While Not DM1.cdsAutdisk.EOF do
       begin
        If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
         begin
          DM1.cdsAutdisk.Edit;
          DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
          DM1.cdsAutdisk.Post;
          xRegCob := 'S';
         end;
        DM1.cdsAutdisk.Next;
       end;
      DM1.cdsAutdisk.GotoBookmark(xMarca);
      If xRegCob = 'S' Then
       begin
        DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
       end;
      DM1.cdsAutdisk.EnableControls;
    end;
  end;
  Close;
end;

procedure TFIngresoLote.dbeTotalExit(Sender: TObject);
var
   Valor1 : Double;
begin
   If dblcdCodigoModular.Focused Then Exit   ; //26/01/2002

   If StrToFloat(dbeTotal.Text)<=0 Then
    begin
     dbeAporte.Text := dbeImpAporte.Text;
     dbeCuota.Text  := '0';
     Exit;
    //26/01/2002
     Valor1 := DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','')+StrToFloat(dbeTotal.Text);
     If valor1 > StrToFloat(dbeMonto.Text)  Then
      begin
       DM1.cdsAutdisk.Edit;
       DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat := Valor1-StrToFloat(dbemonto.Text)
      end;
   //fin 26/01/2002
{    ShowMessage('El Monto debe ser mayor a cero');
    dbeTotal.Text:='';
    dbeTotal.SetFocus;
    Exit;}
    end;

   If StrToFloat(dbeTotal.Text)<StrToFloat(dbeImpAporte.Text) Then
    begin
     ShowMessage('El Monto debe ser mayor o igual al Importe por Aporte');
     dbeTotal.Text:='';
     dbeTotal.SetFocus;
     Exit;
    end;

   dbeAporte.Text := dbeImpAporte.Text;

   dbeCuota.Text  := FloatToStr(StrToFloat(dbeTotal.Text)-StrToFloat(dbeImpAporte.Text));
end;

procedure TFIngresoLote.speMes1Exit(Sender: TObject);
var
   xSQL:string;
begin
   If (speAno.Text='') or (speMes.Text='') Then
    begin
     ShowMessage('Periódo no válido');
     speAno.SetFocus;
     Exit;
    end;
   If Length(speMes.Text)=1 Then
    begin
     speMes.Text := DM1.StrZero(speMes.Text, 2);
    end;
   xSQL := 'SELECT * FROM APO117 WHERE APOANO ='+QuotedStr(speAno.Text)+' AND APOMES ='+QuotedStr(DM1.StrZero(speMes.Text, 2));
   DM1.Filtracds(DM1.cdsQry, xSQL);
   dbeImpAporte.Text := FloatToStr(DM1.cdsQry.FieldByName('APOVALOR').AsFloat);
   If (Z2bbtnCancel.Focused) or (Z2bbtnSalir.Focused) Then Exit;
   If Length(speMes.Text)=1 Then
    begin
     speMes.Text := DM1.StrZero(speMes.Text, 2);
    end;
end;

procedure TFIngresoLote.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  //Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
   If not Accept Then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFIngresoLote.bbtnAtrasClick(Sender: TObject);
begin
   Ocultapaneles;
   DM1.cdsAutdisk.Close;
   dblcdUse.Text := '';
   edtUse.Text := '';
   speAno.Text := '';
   speMes.Text := '';
   dbeImpAporte.Text := '';
   dblcdUse.Enabled  := True;
   dblcdUse.SetFocus;
   bbtnSigue.Enabled := True;
   DM1.cdsAutdisk.Close;
end;

procedure TFIngresoLote.dbgAportesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
   xWhere, xCodAso : String;
begin
   If (Key = VK_DELETE) and (ssCtrl in Shift)  Then
    begin
     If DM1.cdsAutdisk.RecordCount > 0 Then
      begin
       If Question(Caption, 'Esta Seguro de Eliminar?'+#13+#13+'Desea Continuar ?') Then
      	//If MessageDlg('¿Esta Seguro de Eliminar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
        begin
		     xBorrar := '1';
         xCodAso := DM1.cdsAutdisk.FieldByName('ASOID').AsString;
         DM1.cdsAutdisk.Delete;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
         //Verifica si Existen Códigos Duplicados después de Eliminar, si No existen Flagear FNASODUP y FTRANSF
         xWhere := 'ASOID ='+QuotedStr(xCodAso)
                  +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                  +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                  +' And FTRANSF ='+QuotedStr('I')
                  +' And FNASODUP ='+QuotedStr('S');
         If Length(DM1.DisplayDescrip('prvSQL', 'COB304', 'ASOID', xWhere, 'ASOID')) > 0 Then
          begin
           xSQL := 'Update COB304 Set'
                  +' FTRANSF = Null,'
                  +' FNASODUP = Null'
                  +' Where ASOID ='+QuotedStr(xCodAso)
                  +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                  +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                  +' And FTRANSF ='+QuotedStr('I')
                  +' And FNASODUP ='+QuotedStr('S');
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          end;
		     xBorrar := '0';
         //DM1.ControlTran;
         dbgAportes.RefreshDisplay;
         dbgAportes.ColumnByName('TRANSCUO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)',''), ffNumber, 15, 2);
         dbgAportes.ColumnByName('TRANSAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)',''), ffNumber, 15, 2);
         dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)',''), ffNumber, 15, 2);
         ShowMessage('Registro Eliminado');
        end
       Else
      	Exit;
     end
     Else
      ShowMessage(' No Existen Registros a Eliminar ');
	  end;

   If (Key = VK_RETURN) and (ssCtrl in Shift)  Then
    begin
     If DM1.cdsAutdisk.RecordCount > 0 Then
      begin
       DM1.wModo := 'M';
       DM1.cdsAutdisk.Edit;
       pnlAportes.Visible := True;
       dblcdCodigoModular.Enabled := False;
       dbeAporte.SetFocus;
      end
     Else
      begin
       ShowMessage(' No Existen Registros a Editar ');
      end;
    end;

   If (Key = VK_INSERT) and (ssCtrl in Shift)  Then
    begin
     If DM1.cdsAutdisk.RecordCount > 0 Then
      begin
       wModo1 := 'A';
       Z2bbtnCancel.Enabled  := False;
       Z2bbtnAceptar.Enabled := False;
       LimpiaVent;
       DM1.cdsAutdisk.Insert;
       pnlAportes.Visible         := True;
       dblcdCodigoModular.Enabled := True;
       dblcdCodigoModular.SetFocus;
      end;
	  end;

  //dbgAportes.ColumnByName('TRANSCUO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FTRANSF=''I'''),ffNumber, 15, 2);
  //dbgAportes.ColumnByName('TRANSAPO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FTRANSF=''I'''),ffNumber, 15, 2);
  //dbgAportes.ColumnByName('TRANSMTO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FTRANSF=''I'''),ffNumber, 15, 2);
  //dbgAportes.ColumnByName('ASOAPENOM').FooterValue :='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSFAC=''S'''),ffNumber, 15,0)+' Registros';
end;

procedure TFIngresoLote.dbgAportesDblClick(Sender: TObject);
var
   xWhere : String;
begin
   Ocultapaneles;
   wModo1 := 'M';
   If DM1.cdsAutdisk.RecordCount = 0 Then
    begin
     MessageDlg('No Existen Registros a Editar', mtInformation, [mbOk], 0);
     Exit;
    end;
  //LimpiaVent;

   dbeCodigo.Text     := DM1.cdsAutDisk.FieldByName('ASOID').AsString;
   dbeCodigoPago.Text := DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString;
   dbeApeNom.Text     := DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString;
  //dblcdCodigoModular.Text:='';
   dblcdCodigoModular.Text := DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString;
   xExist := True;

   FiltraAsoc;
   DM1.cdsAutdisk.Edit;
   pnlAportes.Visible         := True;
   dblcdCodigoModular.Enabled := False;
   //Para Colocar la USE
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)
            +' And USEID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString);
   dbeUseA.Text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   dbeAporte.SetFocus;
end;

procedure TFIngresoLote.Z2bbtnFiltroClick(Sender: TObject);
begin
   Ocultapaneles;
   dbeLetra.Text := Trim(dbeLetra.Text);

   If DM1.cdsAutdisk.RecordCount = 0 Then
    begin
     Exit;
    end;
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID   ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

   If Length(dbeLetra.Text) > 0 Then
    xSQL := xSQL+' AND A.ASOAPENOM LIKE '+QuotedStr(dbeLetra.Text+'%');

   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL+' ORDER BY A.ASOAPENOM');
   ConfiguraGridAportes;
   ActualizaFooter;

   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.Z2bbtnOrdenCodModClick(Sender: TObject);
begin
   Ocultapaneles;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := 'ASOCODMOD; ASOAPENOM';
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.Z2bbtnOrdenAlfabClick(Sender: TObject);
begin
   Ocultapaneles;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := 'ASOAPENOM;ASOCODMOD';
   DM1.cdsAutdisk.IndexFieldNames;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.ConfiguraGridAportes;
begin
   DM1.cdsAutdisk.FieldByName('FTRANSF').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('FREGCOB').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('TRANSANO').ReadOnly   := True;
   DM1.cdsAutdisk.FieldByName('TRANSMES').ReadOnly   := True;
   DM1.cdsAutdisk.FieldByName('ASOID').ReadOnly      := False;
   DM1.cdsAutdisk.FieldByName('ASOCODMOD').ReadOnly  := True;
   DM1.cdsAutdisk.FieldByName('ASOAPENOM').ReadOnly  := False;
   DM1.cdsAutdisk.FieldByName('TRANSAPO').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('TRANSCUO').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('TRANSMTO').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('BANCOID').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('CCBCOID').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('USUARIO').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('FREG').ReadOnly       := False;
   DM1.cdsAutdisk.FieldByName('HREG').ReadOnly       := False;
   DM1.cdsAutdisk.FieldByName('FTRANSF').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('FREGCOB').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('ASOCODPAGO').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('USEID').ReadOnly      := False;
   DM1.cdsAutdisk.FieldByName('UPROID').ReadOnly     := False;
   DM1.cdsAutdisk.FieldByName('UPAGOID').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('FNASOID').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('FNCODMOD').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('FCCODMOD').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('FCCODPAGO').ReadOnly  := False;
   DM1.cdsAutdisk.FieldByName('FCUSE').ReadOnly      := False;
   DM1.cdsAutdisk.FieldByName('FNMONTO').ReadOnly    := False;
   DM1.cdsAutdisk.FieldByName('FMAPORTE').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('FSCREDITO').ReadOnly  := False;

   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSMTO')).EditFormat    := '########0.00';
   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSAPO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSAPO')).EditFormat    := '########0.00';

   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSCUO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsAutdisk.FieldByName('TRANSCUO')).EditFormat    := '########0.00';
end;

procedure TFIngresoLote.ReadOnlyFalseGridAportes;
begin
   DM1.cdsAutdisk.FieldByName('FREGCOB').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('TRANSANO').ReadOnly  := False;
   DM1.cdsAutdisk.FieldByName('TRANSMES').ReadOnly  := False;
   DM1.cdsAutdisk.FieldByName('ASOID').ReadOnly     := False;
   DM1.cdsAutdisk.FieldByName('ASOCODMOD').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('ASOAPENOM').ReadOnly := False;
   DM1.cdsAutdisk.FieldByName('TRANSAPO').ReadOnly  := False;
   DM1.cdsAutdisk.FieldByName('TRANSCUO').ReadOnly  := False;
   DM1.cdsAutdisk.FieldByName('TRANSMTO').ReadOnly  := False;
   DM1.cdsAutdisk.FieldByName('BANCOID').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('CCBCOID').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('USUARIO').ReadOnly   := False;
   DM1.cdsAutdisk.FieldByName('FREG').ReadOnly      := False;
   DM1.cdsAutdisk.FieldByName('HREG').ReadOnly      := False;
end;

procedure TFIngresoLote.OcultaPaneles;
begin
   pnlEstado.Visible   := False;
   pnlFiltros.Visible  := False;
   pnlBuscaInc.Visible := False;
end;

procedure TFIngresoLote.ActualizaFooter;
begin
   //dbgAportes.Update;
   //DM1.cdsAutdisk.RecordCount;
   dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)', ''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)', ''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)', ''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)', ''), ffNumber, 15, 0)+' Registros';
   //dbgAportes.Refresh;
   //dbgAportes.RefreshDisplay;
end;

procedure TFIngresoLote.dbgAportesTitleButtonClick(Sender: TObject; AFieldName: String);
begin
   Ocultapaneles;
   If AFieldName = 'ASOAPENOM' Then
    begin
     Screen.Cursor := crHourGlass;
     edtBusca.Text := '';
     DM1.cdsAutdisk.IndexFieldNames := 'ASOAPENOM';
     edtBusca.SearchField    := 'ASOAPENOM';
     pnlBusca.Visible        := True;
     lbBusca.Caption         := 'Apellidos y Nombres';
     dbgAportes.Enabled      := False;
     pnlUse.Enabled          := False;
     pnlFooter.Enabled       := False;
     pnlHeader.Enabled       := False;
     pnlDatosAportes.Enabled := False;
     edtBusca.SetFocus;
     Screen.Cursor := crDefault;
    end
   Else
    begin
     If AFieldName = 'ASOCODMOD' Then
      begin
       Screen.Cursor := crHourGlass;
       edtBusca.Text := '';
       DM1.cdsAutdisk.IndexFieldNames := 'ASOCODMOD';
       edtBusca.SearchField    := 'ASOCODMOD';
       pnlBusca.Visible        := True;
       lbBusca.Caption         := 'Código Modular';
       dbgAportes.Enabled      := False;
       pnlUse.Enabled          := False;
       pnlFooter.Enabled       := False;
       pnlHeader.Enabled       := False;
       pnlDatosAportes.Enabled := False;
       edtBusca.SetFocus;
       Screen.Cursor := crDefault;
      end
     Else
      begin
       If AFieldName = 'FREGCOB' Then
        begin
         Screen.Cursor := crHourGlass;
         DM1.cdsAutdisk.DisableControls;
         DM1.cdsAutdisk.First;
         While Not DM1.cdsAutdisk.EOF do
          begin
           If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
            begin
             DM1.cdsAutdisk.Edit;
             DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
             DM1.cdsAutdisk.Post;
            end;
           DM1.cdsAutdisk.Next;
          end;
         DM1.cdsAutdisk.EnableControls;
         dbgAportes.RefreshDisplay;
         DM1.cdsAutdisk.First;
         Screen.Cursor := crDefault;
        end
       Else
        begin
         If AFieldName = 'ASOID' Then
          begin
           Screen.Cursor := crHourGlass;
           edtBusca.Text := '';
           DM1.cdsAutdisk.IndexFieldNames := 'ASOID';
           edtBusca.SearchField    := 'ASOID';
           pnlBusca.Visible        := True;
           lbBusca.Caption         := 'Código Derrama';
           dbgAportes.Enabled      := False;
           pnlUse.Enabled          := False;
           pnlFooter.Enabled       := False;
           pnlHeader.Enabled       := False;
           pnlDatosAportes.Enabled := False;
           edtBusca.SetFocus;
           Screen.Cursor := crDefault;
          end
         Else
          begin
           If AFieldName = 'ASOCODPAGO' Then
            begin
             Screen.Cursor := crHourGlass;
             edtBusca.Text := '';
             DM1.cdsAutdisk.IndexFieldNames := 'ASOCODPAGO';
             edtBusca.SearchField    := 'ASOCODPAGO';
             pnlBusca.Visible        := True;
             lbBusca.Caption         := 'Código de Pago';
             dbgAportes.Enabled      := False;
             pnlUse.Enabled          := False;
             pnlFooter.Enabled       := False;
             pnlHeader.Enabled       := False;
             pnlDatosAportes.Enabled := False;
             edtBusca.SetFocus;
             Screen.Cursor := crDefault;
            end;
          end;
        end;
      end;
    end;
end;

procedure TFIngresoLote.isBuscaKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) or (Key = #27) Then
    begin
     pnlBusca.Visible        := False;
     dbgAportes.Enabled      := True;
     pnlUse.Enabled          := True;
     pnlFooter.Enabled       := True;
     pnlHeader.Enabled       := True;
     pnlDatosAportes.Enabled := True;
     dbgAportes.SetFocus;
    end;
end;

procedure TFIngresoLote.dbeAporteExit(Sender: TObject);
var
   Code: Integer;
   I   : Double;
begin
   If Length(Trim(dbeAporte.Text))<>0 Then
    begin
     Val(dbeAporte.Text, I, Code);
     If Code = 0 Then
      begin
       If Length(DM1.cdsAutDisk.FieldByName('TRANSCUO').AsString) = 0 Then
        DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat := 0;
       DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat  := StrToFloat(dbeCuota.Text)+StrToFloat(dbeAporte.Text);
     end;
    end;
   If Length(dbeCuota.Text) = 0 Then
   dbeCuota.Text := '0.00';
end;

procedure TFIngresoLote.dbeCuotaExit(Sender: TObject);
var
   Code : Integer;
   I    : Double;
begin
   If Length(Trim(dbeCuota.Text)) <> 0 Then
    begin
     Val(dbeAporte.Text, I, Code);
     If Code = 0 Then
      begin
       DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat := StrToFloat(dbeCuota.Text)+StrToFloat(dbeAporte.Text);
       //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat := DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat+StrToFloat(dbeCuota.Text);
      end;
    end
   Else
    begin
     If Length(Trim(dbeCuota.Text)) = 0 Then
      begin
       DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat := 0;
      end;
    end;
   If Length(dbeAporte.Text) = 0 Then
   dbeAporte.Text := '0.00';
end;

procedure TFIngresoLote.Z2bbtnEliminaClick(Sender: TObject);
var
   xRegCob : String;
begin
   Ocultapaneles;
   If DM1.cdsAutdisk.RecordCount > 0 Then
    begin
     If Question(Caption, 'Usted Eliminará los Registros Marcados. '+#13+#13+'¿Está Seguro de Eliminarlos?' ) Then
      begin
       Screen.Cursor := crHourGlass;
       If xBorra = 'S' Then
        begin
         DM1.cdsAutdisk.DisableControls;
         xRegCob := '';
         DM1.cdsAutdisk.First;
         DM1.cdsAutdisk.IndexFieldNames := '';
         DM1.cdsAutdisk.IndexFieldNames := 'FREGCOB';
         While Not DM1.cdsAutdisk.EOF do
          begin
           If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
            begin
             xRegCob := 'S';
             DM1.cdsAutdisk.Delete;
             //Verifica si Existen Códigos Duplicados después de Eliminar, si No existen Quita Flag al FNASODUP y FTRANSF
             xWhere := 'ASOID ='+QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                      +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                      +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                      +' And FTRANSF ='+QuotedStr('I')
                      +' And FNASODUP ='+QuotedStr('S');
             If Length(DM1.DisplayDescrip('prvSQL', 'COB304', 'ASOID', xWhere, 'ASOID')) > 0 Then
              begin
               xSQL := 'Update COB304 Set'
                      +' FTRANSF = Null,'
                      +' FNASODUP = Null'
                      +' Where ASOID ='+QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                      +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                      +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                      +' And FTRANSF ='+QuotedStr('I')
                      +' And FNASODUP ='+QuotedStr('S');
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
              end;
            end;
           DM1.cdsAutdisk.First;
          end;
         DM1.cdsAutdisk.IndexFieldNames := '';
         If xRegCob = 'S' Then
          begin
           DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
          end;
         DM1.cdsAutdisk.EnableControls;
         dbgAportes.RefreshDisplay;
        end
       Else
        begin
         DM1.cdsAutdisk.DisableControls;
         DM1.cdsAutdisk.Prior;
         xRegCob := '';
         DM1.cdsAutdisk.First;
         DM1.cdsAutdisk.IndexFieldNames := '';
         DM1.cdsAutdisk.IndexFieldNames := 'FREGCOB';
         While Not DM1.cdsAutdisk.EOF do
          begin
           If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
            begin
             xRegCob := 'S';
             DM1.cdsAutdisk.Delete;
             //Verifica si Existen Códigos Duplicados después de Eliminar, si No existen Flagear FNASODUP y FTRANSF
             xWhere := 'ASOID ='+QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                      +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                      +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                      +' And FTRANSF ='+QuotedStr('I')
                      +' And FNASODUP ='+QuotedStr('S');
             If Length(DM1.DisplayDescrip('prvSQL', 'COB304', 'ASOID', xWhere, 'ASOID')) > 0 Then
              begin
               xSQL := 'Update COB304 Set'
                      +' FTRANSF = Null,'
                      +' FNASODUP = Null'
                      +' Where ASOID ='+QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                      +' And RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                      +' And DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                      +' And FTRANSF ='+QuotedStr('I')
                      +' And FNASODUP ='+QuotedStr('S');
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
              end;
            end;
           DM1.cdsAutdisk.Next;
          end;
         DM1.cdsAutdisk.IndexFieldNames := '';
         If xRegCob = 'S' Then
          begin
           DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
          end;
         DM1.cdsAutdisk.EnableControls;
         dbgAportes.RefreshDisplay;
        end;
      end;
    end
   Else
    begin
     Screen.Cursor := crDefault;
     ShowMessage('No existen Registros a Eliminar');
    end;
   ActualizaFooter;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.bbtnClosePnlClick(Sender: TObject);
begin
   pnlBusca.Visible        := False;
   dbgAportes.Enabled      := True;
   pnlUse.Enabled          := True;
   pnlFooter.Enabled       := True;
   pnlHeader.Enabled       := True;
   pnlDatosAportes.Enabled := True;
   dbgAportes.SetFocus;
end;

procedure TFIngresoLote.dbgAportesCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   If DM1.cdsAutDisk.FieldByName('FREGCOB').AsString = 'S' Then
    ABrush.Color := clInfoBk;
end;

procedure TFIngresoLote.Z2bbtnInsertaClick(Sender: TObject);
var
   xInc,xRecInc: Integer;
   //dFecha : TDateTime;
   xSQL, xSQL1 : WideString;
   xAno, xMes, xDia, xAnoMes, xTrim, xSem, xSs, xAaTri, xAaSem, xAass : String;
   xForPagoId, xConInc  : String;
begin
//Para Chequear si ya se contabilizó el Período Contable
{   xWhere := 'CNTANOMM ='+QuotedStr(dbePerCont.Text);
   DM1.Di}


   xConInc := '0';
   pbEstado.Position := 0;
   Ocultapaneles;

   If DM1.cdsAutdisk.RecordCount = 0 Then
    begin
     ShowMessage('No Existen Registros a Insertar');
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   xInc := 0;
   DM1.cdsAutdisk.DisableControls;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := 'FREGCOB';
   DM1.cdsAutdisk.Filter   := ' FREGCOB =''S'' ';
   DM1.cdsAutdisk.Filtered := True;
   If DM1.cdsAutdisk.RecordCount >= 1 Then
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     ShowMessage('Existen Registros Marcados para Eliminarlos, Revise estos Registros');
     DM1.cdsAutdisk.EnableControls;
     Screen.Cursor := crDefault;
     Exit;
    end;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter   := '';
   DM1.cdsAutdisk.Filtered := True;

   DM1.cdsAutdisk.EnableControls;
   dbgAportes.RefreshDisplay;

   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsbrowse Then
      DM1.cdsCobxUse.Post;
    end;
   DM1.ControlTran;

   pnlEstado.BringToFront;
   pnlEstado.Height  := 48;
   pnlEstado.Left    := 260;
   pnlEstado.Top     := 244;
   pnlEstado.Visible := True;
   lbEstado.Caption  := ' Verificando Datos ...';
   lbEstado.Refresh;
   pbEstado.Max      := 28;
   pbEstado.Min      := 0;
   pbEstado.Position := pbEstado.Position+1;


    //ACTAUALIZA AL APO201 EL CAMPO CARGO Y VERIFICA APORTES PROVISIONALES  (RMZ)
      xSql := 'SELECT ASOID,TRANSANO,TRANSMES,TRANSAPO,TRANSCUO,CARGO FROM COB304 WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+
                ' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+
                ' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+
                ' AND NVL(TRANSMTO,0) > 0  AND NVL(FTRANSFAC,''N'')<>''S'' ';
      DM1.cdsCambios.Close;
      DM1.cdsCambios.DataRequest(xSql);
      DM1.cdsCambios.Open;
      IF DM1.cdsCambios.RecordCount > 0 THEN
        BEGIN
          DM1.cdsCambios.First;
          while Not DM1.cdsCambios.Eof do
            begin
              //ACTUALIZA EL CAMPO CARGO EN EL APO201
               if (DM1.cdsCambios.FieldByName('CARGO').asstring <> '')  then
                   begin
                       lbEstado.Caption  := '';
                       lbEstado.Caption  := ' Actualizando Cargo en el Maestro de Asociado';
                       lbEstado.Refresh;
                     xSql := 'UPDATE APO201 SET CARGO='+QuotedStr(DM1.cdsCambios.FieldByName('CARGO').asstring) +
                            ' WHERE ASOID='+QuotedStr(DM1.cdsCambios.FieldByName('ASOID').asstring);
                     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                   end;
               //Endif

               //VERIFICA APORTE PROVISIONALES EN EL APO301
                IF DM1.cdsCambios.FieldByName('TRANSAPO').AsInteger > 0 THEN
                   BEGIN
                       lbEstado.Caption  := '';
                       lbEstado.Caption  := ' Verificando Aporte ';
                       lbEstado.Refresh;
                     xSql := 'SELECT ASOID CANT FROM APO301 B WHERE'+
                             ' ASOID='+QuotedStr(DM1.cdsCambios.FieldByName('ASOID').AsString)+
                             ' AND TRANSANO='+QuotedStr(DM1.cdsCambios.FieldByName('TRANSANO').AsString)+
                             ' AND TRANSMES='+QuotedStr(DM1.cdsCambios.FieldByName('TRANSMES').AsString)+
                             ' AND FORPAGOID=''25'' ';
                    DM1.cdsPadre.Close;
                    DM1.cdsPadre.DataRequest(xSql);
                    DM1.cdsPadre.Open;

                   IF DM1.cdsPadre.RecordCount >0 THEN
                      begin
                         xSql := 'UPDATE COB304 SET  FTRANSF=''I'',FAPORPROV=''S'' WHERE ' +
                                 ' RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+
                                 ' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+
                                 ' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+
                                 ' AND ASOID ='+ QuotedStr(DM1.cdsCambios.FieldByName('ASOID').AsString)+
                                 ' AND NVL(TRANSAPO,0) > 0 ';
                        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                      end;
                   END;

               DM1.cdsCambios.Next;
            end;
        END;

   lbEstado.Caption  := '';
   lbEstado.Caption  := ' Marcando Inconsistencias ';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;


  // FNASOID : El Asociado no Tiene ID
   xSQL := 'UPDATE COB304 SET '+
           'FTRANSF =''I'', '+
           'FNASOID =''S'' '+
           'WHERE RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
           +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
           +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
           +' AND NVL(ASOID,''X'')=''X'' '+
           'AND NVL(FTRANSFAC,''N'')=''N'' '+
           'AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando Código de Derrama';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

  //	FNASODUP : Código Asociado Duplicado
   xSQL := 'UPDATE COB304 SET'
          +' FTRANSF  = NULL,'
          +' FNASODUP = NULL'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Actualizando Estado de Códigos de Asociados Duplicados';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

   xSQL := 'UPDATE COB304 SET'
          +' FTRANSF  =''I'','
          +' FNASODUP =''S'' '
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND ASOID     =('
          +' SELECT B.ASOID'
          +' FROM COB304 B'
          +' WHERE B.RCOBID   ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND B.DETRCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND B.USERCOBID  ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND COB304.ASOID =B.ASOID'
          +' GROUP BY B.ASOID'
          +' HAVING COUNT(*) > 1)';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando Códigos de Asociados Duplicados';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

  //	FNCODMOD : No Tiene Código Modular
   xSQL := 'UPDATE COB304 SET'
          +' FTRANSF  =''I'', '
          +' FNCODMOD =''S'' '
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND NVL(ASOCODMOD, ''X'')=''X'' '
          +' AND NVL(FTRANSFAC, ''N'')=''N'' '
          +' AND NVL(FTRANSF, ''A'')<>''I''';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando Código Modular';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

  // FCCODMOD : El Código Modular ha Cambiado  = 3
   xSQL := 'UPDATE COB304 SET'
          +' FTRANSF =''I'', '
          +' FCCODMOD =''S'' '
          +' WHERE RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND NVL(FTRANSFAC,''N'')=''N'' '+
           'AND NVL(ASOCODMOD,''X'')<>''X'' AND (NVL(ASOCODMODA,''X'')<>''X'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando Cambio Código Modular';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

  // FCCODPAGO : El Código de Pago ha Cambiado  = 4
   xSQL := 'UPDATE COB304 C SET FTRANSF =''I'', FCCODPAGO =''S'' '
          +' WHERE NVL(C.ASOCODPAGO,''RR'')<>(SELECT B.ASOCODPAGO FROM COB304 A, APO201 B '+
                             'WHERE A.ASOID = C.ASOID '+
                             'AND A.ASOID = B.ASOID(+) '+
                             'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                             'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                             'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+')'
          +' AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND NVL(FTRANSFAC,''N'')=''N'' '
          +' AND NVL(FTRANSF,''A'')<>''I'' '
          +' AND NVL(ASOCODPAGO,''X'')<>''X''';
   Try
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
    xConInc := '1';
    ErrorMsg(Caption, 'Se ha Producido un Error al Realizar la Verificación del Código de Pago');
   end;
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := 'Verificando Cambio Código de Pago';
   lbEstado.Refresh;

  //	FCUSE : La USE ha cambiado = 5
   xSQL := 'UPDATE COB304 C SET FTRANSF =''I'', FCUSE=''S'' '
          +' WHERE C.USEID <>(SELECT DISTINCT B.USEID FROM COB304 A, APO201 B'
                           +' WHERE A.ASOID = C.ASOID'
                           +' AND A.ASOID =B.ASOID(+)'
                           +' AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                           +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                           +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+')'
          +' AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND NVL(FTRANSFAC,''N'')=''N'' '+
           'AND NVL(FTRANSF,''A'')<>''I''';

   Try
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
    xConInc := '1';
    ErrorMsg(Caption, 'Se ha Producido un Error al realizar la Verificación del Código de Pago');
   end;

   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando la USE';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

   //	FCUPRO : La Unidad de proceso ha cambiado = 6
   xSQL := 'UPDATE COB304 C SET FTRANSF=''I'', FCUPRO =''S'' '
          +' WHERE C.UPROID<>(SELECT DISTINCT B.UPROID FROM COB304 A, APO201 B '+
                        'WHERE A.ASOID = C.ASOID '+
                        'AND A.ASOID = B.ASOID(+) '+
                        'AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                        'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                        'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+') '+
           'AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND NVL(FTRANSFAC,''N'') = ''N'' '
          +' AND NVL(FTRANSF,''A'')<>''I''';

   Try
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
    xConInc := '1';
    ErrorMsg(Caption, 'Se ha Producido un Error al Realizar la Verificación de la Unidad de Proceso');
   end;

   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando la Unidad de Proceso';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

  //	FCUPAGO : La Unidad de Pago ha cambiado = 7
   xSQL := 'UPDATE COB304 C SET FTRANSF=''I'', FCUPAGO=''S'' '
          +' WHERE C.UPAGOID<>(SELECT DISTINCT B.UPAGOID FROM COB304 A, APO201 B '+
                        'WHERE A.ASOID = C.ASOID '+
                        'AND A.ASOID = B.ASOID(+) '+
                        'AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                        'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                        'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+')'
          +' AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND NVL(FTRANSFAC,''N'')=''N'' '
          +' AND NVL(FTRANSF,''A'')<>''I''';

   Try
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
    xConInc := '1';
    ErrorMsg(Caption, 'Se ha Producido un Error al Realizar la Verificación de la Unidad de Pago');
   end;

   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando la Unidad de Pago';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

  //	FNMONTO :  No hay Montos  = 6
   xSQL := 'UPDATE COB304 SET'
          +' FTRANSF =''I'', '
          +' FNMONTO =''S'' '
          +' WHERE RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND (NVL(TRANSCUO,0)=0)'
          +' AND (NVL(TRANSAPO,0)=0)'
          +' AND (NVL(TRANSMTO,0)=0)'
          +' AND NVL(FTRANSFAC,''N'')=''N'' '+
           'AND NVL(FTRANSF,''A'')<>''I''';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position  := pbEstado.Position+1;
   lbEstado.Caption   := '';
   lbEstado.Refresh;
   lbEstado.Caption   := 'Verificando Montos';
   lbEstado.Refresh;
   pbEstado.Position  := pbEstado.Position+1;

  //	FMAPORTE : Aporte Mayor al Establecido
   xSQL := 'UPDATE COB304 SET '+
           'FTRANSF =''I'', '+
           'FMAPORTE =''S'' '+
           'WHERE RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND EXISTS (SELECT APOANO, APOMES, APOVALOR FROM APO117'
          +' WHERE (TRANSANO=APOANO(+)) AND '+
           '(TRANSMES=APOMES(+)) AND '+
           '(TRANSAPO>APOVALOR)) '+
           'AND NVL(FTRANSFAC,''N'')=''N'' '+
           'AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  :='';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando Cantidades Mayores de Aportes';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

  //	FEAPORTE  : Aporte Menor al Establecido
   xSQL := 'UPDATE COB304 SET'
          +' FTRANSF =''I'', '
          +' FEAPORTE =''S'' '
          +' WHERE RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND EXISTS (SELECT APOANO, APOMES, APOVALOR FROM APO117'
          +' WHERE (TRANSANO=APOANO(+))'
          +' AND (TRANSMES=APOMES(+))'
          +' AND (TRANSAPO<APOVALOR))'
          +' AND NVL(FTRANSFAC,''N'')=''N'' '+
        //'AND NVL(FTRANSF,''A'')<>''I''';
           'AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando Cantidades Menores de Aportes';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

   // FDAPORTE :  Doble Aportación

   xSQL := 'UPDATE COB304 SET '
          +' FTRANSF   =''I'', '
          +' FMAPORTE  =''S'' '
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND EXISTS (SELECT APOANO, APOMES, APOVALOR FROM APO117'
          +' WHERE (TRANSANO=APOANO(+))'
          +' AND (TRANSMES=APOMES(+))'
          +' AND (TRANSAPO>APOVALOR))'
          +' AND NVL(FTRANSFAC,''N'')=''N'' '
          +' AND (NVL(FTRANSF,''A'')<>''I'' AND NVL(FTRANSF,''A'')<>''X'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando Aportes';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

 //OJO ESTO SE REALIZA AL PRINCIPIO CON OTRO PROCESO EN PRUEBA RMZ
    {xSQL := 'UPDATE COB304 A SET'
          +' A.FTRANSF   =''I'', '
          +' A.FAPORPROV =''S'' '
          +' WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND NVL(A.TRANSAPO,0)<>0'
          +' AND EXISTS ('
          +' SELECT COUNT(B.ASOID)'
          +' FROM APO301 B'
          +' WHERE A.ASOID  = B.ASOID'
          +' AND B.TRANSANO  = A.TRANSANO'
          +' AND B.TRANSMES  = A.TRANSMES'
          +' AND B.FORPAGOID ='+QuotedStr('25')
          +' GROUP BY B.ASOID'
          +' HAVING COUNT(B.ASOID)>=1)'
          +' AND NVL(FTRANSFAC,''N'')=''N'' ';


   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando Aportes Provisionales';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1; }

   lbEstado.Caption  := '';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Finalizando ...';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

   //Para Ver si la USE No Existe
   //FUSENOEX => Campo para Marcar que la USE No Existe
   xSQL := 'Select ASOID, UPROID, UPAGOID, USEID, FTRANSF, FUSENOEX,'
          +' RCOBID, DETRCOBID, USERCOBID From COB304'
          +' Where RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)
          +' MINUS'
          +' Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID, A.FTRANSF, A.FUSENOEX,'
          +' RCOBID, DETRCOBID, USERCOBID From COB304 A, APO101 B'
          +' Where A.RCOBID = '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID  = '+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID  = '+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)
          +' And (A.UPROID = B.UPROID And A.UPAGOID = B.UPAGOID And A.USEID = B.USEID)';

   DM1.cdsRec.Filter   := '';
   DM1.cdsRec.Filtered := False;
   DM1.cdsRec.IndexFieldNames := '';
   DM1.cdsRec.Close;
   DM1.cdsRec.DataRequest(xSQL);
   DM1.cdsRec.Open;

   If DM1.cdsRec.RecordCount > 0 Then
    begin
     DM1.cdsRec.First;
     While Not DM1.cdsRec.EOF do
      begin
       xSQL := 'UPDATE COB304'
              +' SET FTRANSF ='+QuotedStr('I')
              +', FUSENOEX ='+QuotedStr('S')
              +' Where ASOID ='+QuotedStr(DM1.cdsRec.FieldByName('ASOID').AsString)
              +' And RCOBID ='+QuotedStr(DM1.cdsRec.FieldByName('RCOBID').AsString)
              +' And DETRCOBID ='+QuotedStr(DM1.cdsRec.FieldByName('DETRCOBID').AsString)
              +' And USERCOBID ='+QuotedStr(DM1.cdsRec.FieldByName('USERCOBID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       DM1.cdsRec.Next;
      end;
    end;

   pbEstado.Position := pbEstado.Position+1;
   lbEstado.Caption  :='';
   lbEstado.Refresh;
   lbEstado.Caption  := 'Verificando USES No Válidas';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position+1;

  //FMCREDITO: Cuota de Credito mayor         = 11
  //FECREDITO: Cuota de Credito menor         = 12

  //**PP
   DM1.cdsAutdisk.DisableControls;

   xSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

   DM1.cdsAutdisk.Close;
   DM1.cdsAutdisk.DataRequest(xSQL);
   DM1.cdsAutdisk.Open;
  //**

   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSF';
   DM1.cdsAutdisk.Filter   := 'FTRANSF =''I'' ';
   DM1.cdsAutdisk.Filtered := True;

   If xConInc = '1' Then
    begin
     ErrorMsg(Caption, 'Hubo Problemas al Verificar las Inconsistencias'+#13+#13+
                       'Comunique a Sistemas' );
     Exit;
    end;

   pbEstado.Max := 0;
   pnlEstado.Visible := False;

   xRecInc := DM1.cdsAutdisk.RecordCount;
   If DM1.cdsAutdisk.RecordCount >= 1 Then
    begin
     xInc:=1;
    end;

   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filtered        := False;
   DM1.cdsAutdisk.EnableControls;

   If xInc = 1 Then
    begin
     If not Question(Caption, 'Total de Inconsistencias : '+FloatToStr(xRecInc)+' Registros '+#13+#13+
                  '¡ Sólo se Transferirá los Registros SIN INCONSISTENCIAS ! '+#13+#13+#13+'¿Desea Continuar?') Then
      begin
       Screen.Cursor := crDefault;
       Exit;
      end;
    end;

   DM1.cdsAutdisk.Filtered        := False;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
{   DM1.cdsAutdisk.Filter          := '(TRANSMTO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFAC<>''S'''+
                                        'AND (FTRANSFAC<>''S'' OR FTRANSFAC IS NULL OR FTRANSFAC='''')';}

   DM1.cdsAutdisk.Filter          := '(TRANSMTO > 0) And (FTRANSF <> ''I'' Or FTRANSF Is Null Or FTRANSF = '''') And (FTRANSFAC Is Null Or FTRANSFAC <> ''S'')';
//   '(TRANSMTO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''')AND FTRANSFAC<>''S'''+
//                                        'AND (FTRANSFAC<>''S'' OR FTRANSFAC IS NULL OR FTRANSFAC='''')';

   DM1.cdsAutdisk.Filtered        := True;

   If DM1.cdsAutDisk.RecordCount = 0 Then
  //If xRecInc = DM1.cdsAutDisk.RecordCount Then
    begin
     Screen.Cursor := crDefault;
     Information(Caption, 'No Existe Información a Transferir');
     DM1.cdsAutdisk.Filtered        := False;
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter          := '';
     DM1.cdsAutdisk.Filtered        := True;
     Exit;
    end;

   If Question(Caption, 'Usted Insertará '+IntToStr(DM1.cdsAutDisk.RecordCount)+' Registros hacia las Tablas de Aportes'+#13+#13+
                      ' ¿Está seguro de Insertarlos? ') Then
    begin
     If DM1.cdsAutDisk.RecordCount > 0 Then
      begin
       pnlTransf.Visible := True;
       //Animate1.Active:=True;
       DM1.cdsAutDisk.DisableControls;

       sFecha := FormatDateTime(wFormatFecha, dbdtpFecOperacion.DateTime);
       sSQL := 'SELECT * FROM TGE114 WHERE FECHA ='+QuotedStr(sFecha);
       DM1.FiltraCDS(DM1.cdsPeriodo, sSQL);

       xAno    := DM1.cdsPeriodo.FieldByName('FECANO').AsString;
       xMes    := DM1.cdsPeriodo.FieldByName('FECMES').AsString;
       xDia    := DM1.cdsPeriodo.FieldByName('FECDIA').AsString;
       xAnoMes := xAno+xMes;
       xTrim   := DM1.cdsPeriodo.FieldByName('FECTRIM').AsString;
       xSem    := DM1.cdsPeriodo.FieldByName('FECSEM').AsString;
       xSs     := DM1.cdsPeriodo.FieldByName('FECSS').AsString;
       xAaTri  := DM1.cdsPeriodo.FieldByName('FECAATRI').AsString;
       xAaSem  := DM1.cdsPeriodo.FieldByName('FECAASEM').AsString;
       xAass   := DM1.cdsPeriodo.FieldByName('FECAASS').AsString;

       xForPagoId := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID', 'FORPAGOABR ='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString), 'FORPAGOID');

       sSQL := 'SELECT '+wRepFuncChar+wRepFecServi+', '+QuotedStr('DD/MM/YYYY')+') "FECHA" FROM DUAL';
       DM1.cdsReporte.Close;
       DM1.cdsReporte.DataRequest(sSQL);
       DM1.cdsReporte.Open;
       xFec_Sis := DM1.cdsReporte.FieldByName('FECHA').AsString;

       sFecha := FormatDateTime(wFormatFecha,StrToDate(xFec_Sis));

       //DM1.cdsAutDisk.First;
       //While Not DM1.cdsAutDisk.EOF Do
       //begin
       //  Ingreso de Aportes APO301
       //Para Ver los Archivos que Tienen Igual Unidad de Proceso, Unidad de Pago y Use
       xSQL := 'SELECT Z.ASOID, ''APORTE'', '+
               'Z.USEID, B.USEABRE, Z.UPAGOID, C.UPAGOABR, Z.UPROID, D.UPROABR, '+
               '''N'', '+QuotedStr(DM1.cdsAutDisk.FieldByName('BANCOID').AsString)+', '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('CCBCOID').AsString)+', '+
               QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
               wRepFuncDate+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString)+'), '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)+', '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', TRANSAPO, '+
               QuotedStr('APO')+', '+
              //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', ''APO'', '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('USUARIO').AsString)+', '+
               'Z.ASOCODMOD, A.ASOCODAUX, '+QuotedStr(xForPagoId)+', '+
               'A.ASOAPENOM, E.FORPAGOABR, B.DPTOID, F.DPTOABR, B.CIUDID, '+
               wRepFuncDate+QuotedStr(sFecha)+'), SYSDATE, '+
               //wRepFuncDate+QuotedStr(sFecha)+'), '+wRepFuncDate+QuotedStr(sFecha)+'), '+
               //'A.ASOAPENOM, E.FORPAGOABR, A.DPTOID, F.DPTOABR, A.CIUDID, SYSDATE, SYSDATE, '+sFecha
               QuotedStr(xAnoMes)+', '+ QuotedStr(xAaTri)+', '+ QuotedStr(xTrim)+', '+
               QuotedStr(xSem)+', '+ QuotedStr(xAaSem)+', '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString+
               DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', '+QuotedStr(wCiaDef)+', RCOBID, DETRCOBID, USERCOBID, '+
               QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString)+', '+
               QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)+', Z.PVSLBENNR, Z.FLGNIV, Z.APOSECID, Z.APO301ID '
               +' FROM COB304 Z, APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F'
               +' WHERE Z.ASOID = A.ASOID'
               +' AND Z.UPROID  = B.UPROID'
               +' AND Z.UPAGOID = B.UPAGOID'
               +' AND Z.USEID   = B.USEID'
               +' AND B.UPROID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
               +' AND B.UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
               +' AND C.UPROID  = B.UPROID'
               +' AND C.UPAGOID = B.UPAGOID'
               +' AND D.UPROID  = B.UPROID'
               +' AND F.DPTOID  = B.DPTOID'
               +' AND E.FORPAGOABR ='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)
               +' AND Z.RCOBID     ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
               +' AND Z.DETRCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
               +' AND Z.USERCOBID  ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
               +' AND TRANSMTO > 0'
               +' AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'')'
               +' AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';

       DM1.cdsQry4.Filter   := '';
       DM1.cdsQry4.Filtered := False;
       DM1.cdsQry4.IndexFieldNames := '';
       DM1.cdsQry4.Close;
       DM1.cdsQry4.DataRequest(xSQL);
       DM1.cdsQry4.Open;

       If (DM1.cdsQry4.RecordCount < DM1.cdsAutDisk.RecordCount) And (DM1.cdsQry4.RecordCount > 0) Then
        begin
         Beep;
         If MessageDlg('Sólo Existen '+IntToStr(DM1.cdsQry4.RecordCount)+' Registros que pueden ser Transferidos'+#13
                  +'Verifique Unidad de Proceso, Unidad de Pago o Use'+#13
                  +'               Desea Transferirlos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
          begin
           xSQL := 'INSERT INTO APO301 ('+
                   'ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID, '+
                   'UPROABR, TMONID, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, '+
                   'TRANSANO, TRANSMES, TRANSMTO, TRANSINTID, USUARIO, ASOCODMOD, ASOCODAUX, '+
                   'FORPAGOID, ASOAPENOM, FORPAGOABR, DPTOID, DPTOABR, CIUDID, '+
                   'FREG, HREG, TRANSAAMM, TRANSAATRI, TRANSTRIM, TRANSSEM, TRANSAASEM, '+
    //               'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, PVSLBENNR, FLGNIV, APOSECID, APO301ID) '+
                   'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, FLGNIV, APOSECID, APO301ID) '+
                   'SELECT Z.ASOID, ''APORTE'', '+
                   'Z.USEID, B.USEABRE, Z.UPAGOID, C.UPAGOABR, Z.UPROID, D.UPROABR, '+
                   '''N'', '+QuotedStr(DM1.cdsAutDisk.FieldByName('BANCOID').AsString)+', '+
                   QuotedStr(DM1.cdsAutDisk.FieldByName('CCBCOID').AsString)+', '+
                   QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
                   wRepFuncDate+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString)+'), '+
                   QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)+', '+
                   QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', TRANSAPO, '+
                   QuotedStr('APO')+', '+
                  //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', ''APO'', '+
                   QuotedStr(DM1.cdsAutDisk.FieldByName('USUARIO').AsString)+', '+
                   'Z.ASOCODMOD, A.ASOCODAUX, '+QuotedStr(xForPagoId)+', '+
                   'A.ASOAPENOM, E.FORPAGOABR, B.DPTOID, F.DPTOABR, B.CIUDID, '+
                   wRepFuncDate+QuotedStr(sFecha)+'), SYSDATE, '+
                   //wRepFuncDate+QuotedStr(sFecha)+'), '+wRepFuncDate+QuotedStr(sFecha)+'), '+
                   //'A.ASOAPENOM, E.FORPAGOABR, A.DPTOID, F.DPTOABR, A.CIUDID, SYSDATE, SYSDATE, '+sFecha
                   QuotedStr(xAnoMes)+', '+ QuotedStr(xAaTri)+', '+ QuotedStr(xTrim)+', '+
                   QuotedStr(xSem)+', '+ QuotedStr(xAaSem)+', '+
                   QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString+
                   DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', '+QuotedStr(wCiaDef)+', RCOBID, DETRCOBID, USERCOBID, '+
                   QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString)+', '+
    //               QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)+', Z.PVSLBENNR, Z.FLGNIV, Z.APOSECID, Z.APO301ID ';
                   QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)+', Z.FLGNIV, Z.APOSECID, Z.APO301ID ';

           xSQL1 := 'FROM COB304 Z, APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F '+
                  {'WHERE Z.ASOID=A.ASOID '+      //'WHERE A.ASOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
                  'AND A.USEID=B.USEID '+
                  'AND B.USEID='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+' '+
                  'AND A.UPAGOID=C.UPAGOID '+
                  'AND C.UPAGOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+' '+
                  'AND A.UPROID=D.UPROID '+
                  'AND D.UPROID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+' '+
                  'AND E.FORPAGOABR='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
                  'AND F.DPTOID(+)=Z.DPTOID '+
                  'AND Z.RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                  'AND Z.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                  'AND Z.USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
                  'AND TRANSMTO > 0 '+
                  'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') '+
                  'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';}
                  'WHERE Z.ASOID = A.ASOID '+
                  'AND Z.UPROID  = B.UPROID '+
                  'AND Z.UPAGOID = B.UPAGOID '+
                  'AND Z.USEID   = B.USEID '+
                  'AND B.UPROID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+' '+
                  'AND B.UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)+' '+
                  'AND C.UPROID  = B.UPROID '+
                  'AND C.UPAGOID = B.UPAGOID '+
                  'AND D.UPROID  = B.UPROID '+
                  'AND F.DPTOID  = B.DPTOID '+
                  'AND E.FORPAGOABR ='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
                  'AND Z.RCOBID     ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                  'AND Z.DETRCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                  'AND Z.USERCOBID  ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
                  'AND TRANSMTO > 0 '+
                  'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') '+
                  'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';

           DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL1);

           xSQL := 'UPDATE COB304 SET FTRANSFAC =''S'' '+
                   'WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                   'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                   'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
                   'AND TRANSMTO > 0 '+
                   'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''X'')=''X'') '+
                   'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

           pnlTransf.Visible := False;
          //Animate1.Active:=False;

           DM1.cdsAutDisk.EnableControls;
          end
         Else
          begin
           Screen.Cursor := crDefault;
           Exit;
          end;
        end
       Else
        begin
         xSQL := 'INSERT INTO APO301 ('+
                 'ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID, '+
                 'UPROABR, TMONID, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, '+
                 'TRANSANO, TRANSMES, TRANSMTO, TRANSINTID, USUARIO, ASOCODMOD, ASOCODAUX, '+
                 'FORPAGOID, ASOAPENOM, FORPAGOABR, DPTOID, DPTOABR, CIUDID, '+
                 'FREG, HREG, TRANSAAMM, TRANSAATRI, TRANSTRIM, TRANSSEM, TRANSAASEM, '+
  //               'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, PVSLBENNR, FLGNIV, APOSECID, APO301ID) '+
                 'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, FLGNIV, APOSECID, APO301ID) '+

                 'SELECT Z.ASOID, ''APORTE'', '+
                 'Z.USEID, B.USEABRE, Z.UPAGOID, C.UPAGOABR, Z.UPROID, D.UPROABR, '+
                 '''N'', '+QuotedStr(DM1.cdsAutDisk.FieldByName('BANCOID').AsString)+', '+
                 QuotedStr(DM1.cdsAutDisk.FieldByName('CCBCOID').AsString)+', '+
                 QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
                 wRepFuncDate+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString)+'), '+
                 QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)+', '+
                 QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', TRANSAPO, '+
                 QuotedStr('APO')+', '+
                //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', ''APO'', '+
                 QuotedStr(DM1.cdsAutDisk.FieldByName('USUARIO').AsString)+', '+
                 'Z.ASOCODMOD, A.ASOCODAUX, '+QuotedStr(xForPagoId)+', '+
                 'A.ASOAPENOM, E.FORPAGOABR, B.DPTOID, F.DPTOABR, B.CIUDID, '+
                 wRepFuncDate+QuotedStr(sFecha)+'), SYSDATE, '+
                 //wRepFuncDate+QuotedStr(sFecha)+'), '+wRepFuncDate+QuotedStr(sFecha)+'), '+
                 //'A.ASOAPENOM, E.FORPAGOABR, A.DPTOID, F.DPTOABR, A.CIUDID, SYSDATE, SYSDATE, '+sFecha
                 QuotedStr(xAnoMes)+', '+ QuotedStr(xAaTri)+', '+ QuotedStr(xTrim)+', '+
                 QuotedStr(xSem)+', '+ QuotedStr(xAaSem)+', '+
                 QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString+
                 DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', '+QuotedStr(wCiaDef)+', RCOBID, DETRCOBID, USERCOBID, '+
                 QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString)+', '+
  //               QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)+', Z.PVSLBENNR, Z.FLGNIV, Z.APOSECID, Z.APO301ID ';
                 QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)+', Z.FLGNIV, Z.APOSECID, Z.APO301ID ';

         xSQL1 := 'FROM COB304 Z, APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F '+
                {'WHERE Z.ASOID=A.ASOID '+      //'WHERE A.ASOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
                'AND A.USEID=B.USEID '+
                'AND B.USEID='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+' '+
                'AND A.UPAGOID=C.UPAGOID '+
                'AND C.UPAGOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+' '+
                'AND A.UPROID=D.UPROID '+
                'AND D.UPROID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+' '+
                'AND E.FORPAGOABR='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
                'AND F.DPTOID(+)=Z.DPTOID '+
                'AND Z.RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                'AND Z.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                'AND Z.USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
                'AND TRANSMTO > 0 '+
                'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') '+
                'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';}
                'WHERE Z.ASOID = A.ASOID '+
                'AND Z.UPROID  = B.UPROID '+
                'AND Z.UPAGOID = B.UPAGOID '+
                'AND Z.USEID   = B.USEID '+
                'AND B.UPROID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+' '+
                'AND B.UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)+' '+
                'AND C.UPROID  = B.UPROID '+
                'AND C.UPAGOID = B.UPAGOID '+
                'AND D.UPROID  = B.UPROID '+
                'AND F.DPTOID  = B.DPTOID '+
                'AND E.FORPAGOABR ='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
                'AND Z.RCOBID     ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                'AND Z.DETRCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                'AND Z.USERCOBID  ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
                'AND TRANSMTO > 0 '+
                'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') '+
                'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';

         DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL1);

         xSQL := 'UPDATE COB304 SET FTRANSFAC =''S'' '+
                 'WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                 'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                 'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
                 'AND TRANSMTO > 0 '+
                 'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''X'')=''X'') '+
                 'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         pnlTransf.Visible := False;
        //Animate1.Active:=False;

         DM1.cdsAutDisk.EnableControls;
        end;

      end;


     DM1.cdsAutdisk.Filtered        := False;
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter          := '';
     DM1.cdsAutdisk.Filtered        := True;
     ActualizaFooter;
     ActuaCampos;
     ShowMessage('Transferencia Finalizada');
    end;

   ActualizaFooter;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.cbMarcaClick(Sender: TObject);
var
   xMarca2 : TBookMark;
begin
   Screen.Cursor := crHourGlass;
   If cbMarca.Checked Then
    begin
     DM1.cdsAutdisk.DisableControls;
     xMarca2 := DM1.cdsAutdisk.GetBookmark;
     DM1.cdsAutdisk.First;
     While Not DM1.cdsAutdisk.EOF DO
      begin
       If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString <> 'S' Then
        begin
         DM1.cdsAutdisk.Edit;
         DM1.cdsAutdisk.FieldByName('FREGCOB').AsString := 'S';
         DM1.cdsAutdisk.Post;
        end;
       DM1.cdsAutdisk.Next;
      end;
     xBorra := 'S';
     DM1.cdsAutdisk.GotoBookmark(xMarca2);
     DM1.cdsAutdisk.EnableControls;
     dbgAportes.RefreshDisplay;
    end
   Else
    begin
     DM1.cdsAutdisk.DisableControls;
     xMarca2 := DM1.cdsAutdisk.GetBookmark;
     DM1.cdsAutdisk.First;
     While Not DM1.cdsAutdisk.EOF do
      begin
       If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString = 'S' Then
        begin
         DM1.cdsAutdisk.Edit;
         DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
         DM1.cdsAutdisk.Post;
        end;
       DM1.cdsAutdisk.Next;
      end;
     DM1.cdsAutdisk.GotoBookmark(xMarca2);
     DM1.cdsAutdisk.EnableControls;
     dbgAportes.RefreshDisplay;
    end;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.bbtnAutdiskClick(Sender: TObject);
var
   xSQL:String;
begin
   If Length(speAno.Text) = 0 Then
    begin
     ShowMessage('Debe Registrar el Año');
     //speAno.SetFocus;
     Exit;
    end;

   If Length(speMes.Text) = 0 Then
    begin
     ShowMessage('Debe Registrar el Mes');
     //speMes.SetFocus;
     Exit;
    end;
  //TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat:='########0.00';
  //TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).EditFormat:='########0.00';

   If (dbeImpAporte.Text = '') or (StrToFloat(StringReplace(dbeImpAporte.Text,',','',[rfReplaceAll])) < 1) Then
    begin
     ShowMessage('Aporte Incorrecto');
     dbeImpAporte.SetFocus;
     Exit;
    end;

   xSQL := 'SELECT APOVALOR'
          +' FROM APO117'
          +' WHERE APOANO ='+QuotedStr(speAno.Text)
          +' AND APOMES   ='+QuotedStr(speMes.Text);

   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSQL);
   DM1.cdsReporte1.Open;

   If DM1.cdsReporte1.FieldByName('APOVALOR').AsFloat <> DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat Then
    begin
     Information(Caption, 'El Monto del Aporte no Coincide con el del Registrado');
    end;

   bbtnAutDisk.Enabled       := False;
   bbtnIngresaAporte.Enabled := False;

   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT ARCHIVO, PERIODO, UPROID, UPAGOID, USUARIO, FREG, RECAUDA, FL_BAJADO, FL_IMPORT, FL_VERIFI, FL_TRANSF'
          +' FROM COB312'
          +' WHERE PERIODO ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANOAPO').AsString+DM1.cdsCobxUse.FieldByName('RCOBMESAPO').AsString)
          +' AND UPROID    ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
          +' AND UPAGOID   ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

        //'AND FL_VERIFI=''S''';
   FListaAutDisk := TFListaAutDisk.Create(Self);
   FListaAutDisk.dbgListaAutdisk.Selected.Clear;
   FListaAutDisk.dbgListaAutdisk.Selected.Add('ARCHIVO'#9'16'#9'Archivo');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('PERIODO'#9'6'#9'Periodo');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('UPROID'#9'6'#9'Unid. de~Proceso');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('UPAGOID'#9'4'#9'Unidad de~Pago');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('RECAUDA'#9'15'#9'Tipo~Recaud.');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('USUARIO'#9'13'#9'Usuario');
   FListaAutDisk.dbgListaAutdisk.Selected.Add('FREG'#9'10'#9'Fecha~Registro');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsQry2.RecordCount > 0 Then
    begin
     xArchivo := DM1.cdsQry2.FieldByName('ARCHIVO').AsString;
     dblcdUse.Enabled := False;
     FListaAutDisk.ShowModal;
    end
   Else
    begin
     Information(Caption, 'No se ha Encontrado Ningún Archivo para Transferir ...!!!!');
    end;
   DM1.cdsQry2.Close;
   FListaAutDisk.Free;
   dblcdUse.Enabled          := False;
   bbtnAutDisk.Enabled       := True;
   bbtnIngresaAporte.Enabled := True;
end;

procedure TFIngresoLote.bbtnInconsistenciaClick(Sender: TObject);
begin
   If pnlFiltros.Visible = True Then
    begin
     pnlFiltros.Visible := False;
    end
   Else
    begin
     Ocultapaneles;
     pnlFiltros.Height  := 489;
     pnlFiltros.Left    := 321;
     pnlFiltros.Top     := 15;
     pnlFiltros.Width   := 158;
     pnlFiltros.Visible := True;
     pnlFiltros.BringToFront;
    end;
end;

procedure TFIngresoLote.spdTotalRegClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor      := crHourGlass;
   DM1.wTDatos        := 'T';  // Para Mostrar Todos los Registros
   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);

   DM1.cdsAutDisk.Filter   := '';
   DM1.cdsAutDisk.Filtered := False;
   DM1.cdsAutDisk.IndexFieldNames := '';
   DM1.cdsAutDisk.Close;
   DM1.cdsAutDisk.DataRequest(xSQL);
   DM1.cdsAutDisk.Open;
{   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter   := '';
   DM1.cdsAutdisk.Filtered := True;    }
   dbgAportes.Color := $00C8E1DF;

   ActualizaFooter;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdInconsistClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSF';
   DM1.cdsAutdisk.Filter          := ' FTRANSF =''I'' ';
   DM1.cdsAutdisk.Filtered        := True;
   DM1.wTDatos := 'I';  // Para Mostrar Todos los Registros
   dbgAportes.Color := clBtnFace;
   DM1.cdsAutdisk.RecordCount;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)', 'FTRANSF =''I'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)', 'FTRANSF =''I'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)', 'FTRANSF =''I'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)', 'FTRANSF =''I'''), ffNumber, 15, 0)+' Registros';
   ShowMessage('Total de Registros con Inconsistencias : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.spdSinInconsClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor      := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSF';
   DM1.cdsAutdisk.Filter   := 'FTRANSF IS NULL OR FTRANSF=''''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'S';  // Para Mostrar Todos los Registros
   dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FTRANSF IS NULL OR FTRANSF='''''),ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FTRANSF IS NULL OR FTRANSF='''''),ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FTRANSF IS NULL OR FTRANSF='''''),ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSF IS NULL OR FTRANSF='''''),ffNumber, 15,0)+' Registros';
   //ActualizaFooter;
   dbgAportes.Color := $00C8E1DF;
   Screen.Cursor    := crDefault;
   ShowMessage('Total de Registros sin Inconsistencias :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.bbtnBuscaIncClick(Sender: TObject);
begin
   If pnlBuscaInc.Visible = True Then
    begin
     pnlBuscaInc.Visible := False;
    end
   Else
    begin
     Ocultapaneles;
     If DM1.cdsAutdisk.RecordCount >= 1 Then
      begin
       pnlBuscaInc.Height  := 296;
       pnlBuscaInc.Left    := 262;
       pnlBuscaInc.Top     := 150;
       pnlBuscaInc.Width   := 267;
       pnlBuscaInc.Visible := True;
       pnlBuscaInc.BringToFront;
      end;
    end;
end;

procedure TFIngresoLote.Button1Click(Sender: TObject);
begin
   pnlBuscaInc.Visible := False;
end;

procedure TFIngresoLote.Button2Click(Sender: TObject);
begin
   pnlFiltros.Visible := False;
end;

procedure TFIngresoLote.SpeedButton4Click(Sender: TObject);
var
   xASOID : String ;
   xAuxStr : String ;
begin
   If (DM1.cdsCobxUse.Modified)
       Or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
      DM1.cdsCobxUse.Post;
    end;

   If (DM1.cdsAutDisk.Modified)
       or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     DM1.cdsAutDisk.Post;
    end;

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FNASOID   =''S'' AND FTRANSF=''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount >= 1 Then
    begin
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF do
      begin
       xASOID := DM1.StrZero(DM1.MaxSQL('APO201','ASOID',''),10);
       // Generación del ASOCODAUX - Codigo Auxiliar
       xAuxStr:=DM1.BuscaCodMod('APO201',DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

       wSQL   := 'INSERT INTO APO201 ('+
            ' ASOID, '+
            ' ASOCODMOD, '+
            ' ASOCODAUX, '+
            ' USEID, '+
            ' UPROID, '+
            ' UPAGOID, '+
            ' DPTOID, '+
            ' BANCOID, '+
            ' ASONCTA, '+
            ' USUARIO, '+
            ' FREG,'+
            ' HREG,'+
            ' ASOAPENOM, '+
            ' ASOCODPAGO '+
        ') VALUES ('+
            QuotedStr(xASOID)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
            QuotedStr(xAuxStr)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('DPTOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('BANCOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('CCBCOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('USUARIO').AsString)+','+
            QuotedStr(DateTimeToStr(Date))+','+
            QuotedStr(DateTimeToStr(Date))+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOAPENOM').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+
        ' )';
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

       wSQL := 'INSERT INTO APO202 ('+
              ' ASOID, '+
              ' ASOCODMOD, '+
              ' ASOCODAUX, '+
              ' ASOCODPAGO, '+
              ' USEID, '+
              ' UPROID, '+
              ' UPAGOID, '+
              ' FVIGENTE '+
        ' ) VALUES ( '+
              QuotedStr(xASOID)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
              QuotedStr(xAuxStr)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
              QuotedStr('S')+
        ' )';
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

       If DM1.cdsAutdisk.State <> dsEdit Then
        begin
         DM1.cdsAutdisk.Edit;
        end;
       If DM1.cdsAutdisk.State = dsEdit Then
        begin
         DM1.cdsAutdisk.FieldByName('ASOID').AsString := xASOID;
         DM1.cdsAutdisk.FieldByName('FNASOID').Clear;
         DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
         DM1.cdsAutdisk.FieldByName('FTRANSF').Clear;
         DM1.cdsAutdisk.FieldByName('USUARIO').AsString := DM1.wUsuario;
         DM1.cdsAutdisk.FieldByName('FREG').AsDateTime  := Date;
         DM1.cdsAutdisk.FieldByName('HREG').Clear;
         DM1.cdsAutdisk.FieldByName('HREG').AsDateTime  := Date+Time;
         cdsPost(DM1.cdsAutdisk);
         DM1.cdsAutdisk.Post;
         DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
        end;
       DM1.cdsQry2.Next;
      end;
    end
   Else
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
    end;
end;

procedure TFIngresoLote.SpeedButton5Click(Sender: TObject);
var
   xAuxStr : String ;
begin
   If (DM1.cdsCobxUse.Modified)
       or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
      DM1.cdsCobxUse.Post;
    end;
   If (DM1.cdsAutDisk.Modified)
       or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     DM1.cdsAutDisk.Post;
    end;                  

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := ' SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FREGCOB   =''S'' AND FNASOID=''S'' AND FTRANSF=''I'' ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount >= 1 Then
    begin
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF Do
      begin
       xASOID := DM1.StrZero(DM1.MaxSQL('APO201','ASOID',''),10);
       // Generación del ASOCODAUX - Codigo Auxiliar
       xAuxStr:=DM1.BuscaCodMod('APO201',DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

       wSQL   := 'INSERT INTO APO201 ('+
            ' ASOID, '+
            ' ASOCODMOD, '+
            ' ASOCODAUX, '+
            ' USEID, '+
            ' UPROID, '+
            ' UPAGOID, '+
            ' DPTOID, '+
            ' BANCOID, '+
            ' ASONCTA, '+
            ' USUARIO, '+
            ' FREG,'+
            ' HREG,'+
            ' ASOAPENOM, '+
            ' ASOCODPAGO '+
        ') VALUES ('+
            QuotedStr(xASOID)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
            QuotedStr(xAuxStr)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('DPTOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('BANCOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('CCBCOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('USUARIO').AsString)+','+
            QuotedStr(DateTimeToStr(Date))+','+
            QuotedStr(DateTimeToStr(Date))+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOAPENOM').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+
        ' )';
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        wSQL := 'INSERT INTO APO202 ('+
              ' ASOID, '+
              ' ASOCODMOD, '+
              ' ASOCODAUX, '+
              ' ASOCODPAGO, '+
              ' USEID, '+
              ' UPROID, '+
              ' UPAGOID, '+
              ' FVIGENTE '+
        ' ) VALUES ( '+
              QuotedStr(xASOID)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
              QuotedStr(xAuxStr)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
              QuotedStr('S')+
        ' )';
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        If DM1.cdsAutdisk.State <> dsEdit Then
         begin
          DM1.cdsAutdisk.Edit;
         end;
        If DM1.cdsAutdisk.State = dsEdit Then
         begin
          DM1.cdsAutdisk.FieldByName('ASOID').AsString := xASOID;
          DM1.cdsAutdisk.FieldByName('FNASOID').Clear;
          DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
          DM1.cdsAutdisk.FieldByName('FTRANSF').Clear;
          DM1.cdsAutdisk.FieldByName('USUARIO').AsString := DM1.wUsuario;
          DM1.cdsAutdisk.FieldByName('FREG').AsDateTime  := Date;
          DM1.cdsAutdisk.FieldByName('HREG').Clear;
          DM1.cdsAutdisk.FieldByName('HREG').AsDateTime  := Date+Time;
          cdsPost(DM1.cdsAutdisk);
          DM1.cdsAutdisk.Post;
          DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
         end;
       DM1.cdsQry2.Next;
      end;
     end
    Else
     begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
     end;
end;

procedure TFIngresoLote.spdCCodModTodClick(Sender: TObject);
var
   xAuxStr : String ;
begin
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     DM1.cdsCobxUse.Post;
    end;
   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FCCODMOD =''S'' AND FTRANSF =''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
     Exit;
    end;

   If Question(Caption, 'Actualizará Todos los Códigos Modulares Nuevos'+#13+#13+' ¿Desea Continuar? ') Then
    begin
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF Do
      begin
       xAuxStr:=DM1.BuscaCodMod('APO201',DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);
       wSQL := 'UPDATE APO201 SET'
              +' ASOCODMOD   ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +','
//              +' ASOCODAUX   ='+QuotedStr(xAuxStr)
               +'ASOCODAUX=DECODE(ASOCODMOD,'+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
               ',ASOCODAUX,'+ QuotedStr(xAuxStr)+') '

              +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

       DM1.cdsQry.Close;
       xSQL := 'SELECT * FROM APO202'
              +' WHERE ASOID  ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
              +' AND TRANSANO = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+', 7, 4)'
              +' AND TRANSMES = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',4,2)';
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Open;

      // Verifica si hay cambios para el periodo actual
      // Si existe entonces solo actualiza, sino inserta

       If DM1.cdsQry.RecordCount >= 1 Then
        begin
         If Length(Trim(DM1.cdsQry.FieldByName('ASOCODMOD').AsString))=0 Then
          begin
           wSQL := 'UPDATE APO202 SET'
                  +' ASOCODMOD   ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +','
//                  +' ASOCODAUX   ='+QuotedStr(xAuxStr)
               + 'ASOCODAUX=DECODE(ASOCODMOD,'+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
               ',ASOCODAUX,'+ QuotedStr(xAuxStr)+') '

                  +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
           DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end
         Else
          begin
           wSQL := 'INSERT INTO APO202 ('+
                'ASOID, '+
                'ASOCODMOD, '+
                'ASOCODAUX, '+
                'ASOCODPAGO, '+
                'USEID, '+
                'UPROID, '+
                'UPAGOID, '+
                'FVIGENTE '+
                ') VALUES ( '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                QuotedStr(xAuxStr)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                QuotedStr('S')+
                ')';
           DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end;
        end
       Else
        begin
         wSQL := 'INSERT INTO APO202 ('+
              'ASOID, '+
              'ASOCODMOD, '+
              'ASOCODAUX, '+
              'ASOCODPAGO, '+
              'USEID, '+
              'UPROID, '+
              'UPAGOID, '+
              'FVIGENTE '+
              ') VALUES ( '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
              QuotedStr(xAuxStr)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
              QuotedStr('S')+
              ' )';
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
        end;
      wSQL := 'UPDATE COB304 SET'
             +' FCCODMOD = NULL,'
             +' FREGCOB = NULL,'
             +' FTRANSF = NULL,'
             +' USUARIO ='+QuotedStr(DM1.wUsuario)+', '+
            'FREG ='+QuotedStr(DateTimeToStr(Date))+', '+
            'HREG ='+QuotedStr(DateTimeToStr(Date))+' '+
            'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
            'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
            'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
            'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
      DM1.cdsQry2.Next;
      end;
     DM1.cdsAutdisk.Refresh;
     dbgAportes.Update;
    end;
end;

procedure TFIngresoLote.SpeedButton7Click(Sender: TObject);
var
   xAuxStr : String ;
begin
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     DM1.cdsCobxUse.Post;
    end;
   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FREGCOB =''S'' AND FCCODMOD =''S'' AND FTRANSF =''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount >= 1 Then
    begin
     If MessageDlg('Actualizará Todos los Códigos Modulares Nuevos ¿Desea Continuar? ',
       mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      begin
       DM1.cdsQry2.First;
       While Not DM1.cdsQry2.EOF Do
        begin
         // Generación del ASOCODAUX - Codigo Auxiliar
         xAuxStr:=DM1.BuscaCodMod('APO201',DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

         wSQL := ' UPDATE APO201 SET'
                +' ASOCODMOD ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOCODMOD').AsString) + ','
//                +' ASOCODAUX ='+QuotedStr(xAuxStr)
               +'ASOCODAUX=DECODE(ASOCODMOD,'+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
               ',ASOCODAUX,'+ QuotedStr(xAuxStr)+') '

                +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry.Close;
         xSQL := 'SELECT * FROM APO202'
                +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
                +' AND TRANSANO = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+', 7, 4)'
                +' AND TRANSMES = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+', 4, 2)';
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;

        // Verifica si hay cambios para el periodo actual
        // Si existe entonces solo actualiza, sino inserta

        If DM1.cdsQry.RecordCount >= 1 Then
         begin
          If Length(Trim(DM1.cdsQry.FieldByName('ASOCODMOD').AsString))=0 Then
           begin
            wSQL := 'UPDATE APO202 SET'
                   +' ASOCODMOD ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) + ','
//                   +' ASOCODAUX ='+QuotedStr(xAuxStr)
                 + 'ASOCODAUX=DECODE(ASOCODMOD,'+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
                 ',ASOCODAUX,'+ QuotedStr(xAuxStr)+') '

                   +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
           end
          Else
           begin
            wSQL := 'INSERT INTO APO202 ('+
                    ' ASOID, '+
                    ' ASOCODMOD, '+
                    ' ASOCODAUX, '+
                    ' ASOCODPAGO, '+
                    ' USEID, '+
                    ' UPROID, '+
                    ' UPAGOID, '+
                    ' FVIGENTE '+
            ' ) VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
                  QuotedStr(xAuxStr)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
                  QuotedStr('S')+
            ' )';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
           end;
         end
        Else
         begin
          wSQL := 'INSERT INTO APO202 ('+
                'ASOID, '+
                'ASOCODMOD, '+
                'ASOCODAUX, '+
                'ASOCODPAGO, '+
                'USEID, '+
                'UPROID, '+
                'UPAGOID, '+
                'FVIGENTE '+
                ') VALUES ('+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                QuotedStr(xAuxStr)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                QuotedStr('S')+
          ')';
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
        end;
        wSQL := 'UPDATE COB304 SET '+
              'FCCODMOD=NULL, '+
              'FREGCOB=NULL, '+
              'FTRANSF=NULL, '+
              'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
              'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
              'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
              'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
              'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
              'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
              'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
        DM1.cdsQry2.Next;
      end;
     end;
    end
   Else
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
    end;
end;

procedure TFIngresoLote.SpeedButton9Click(Sender: TObject);
var
   xAuxStr : String ;
begin
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     DM1.cdsCobxUse.Post;
    end;
   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FCCODPAGO =''S'' AND FTRANSF=''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount > 0 Then
    begin
     If Question(Caption,'Actualizará Todos los Códigos de Pago Nuevos '+#13+#13'¿Desea Continuar? ') Then
      begin
       DM1.cdsQry2.First;
       While Not DM1.cdsQry2.EOF Do
        begin
         // Generación del ASOCODAUX - Codigo Auxiliar
         xAuxStr:=DM1.BuscaCodMod('APO201',DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

         wSQL := 'UPDATE APO201 SET'
                +' ASOCODPAGO ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString)
                +' WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry.Close;
         xSQL := 'SELECT * FROM APO202'
                +' WHERE ASOID  ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
                +' AND TRANSANO = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+', 7, 4)'
                +' AND TRANSMES =SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+', 4, 2)';
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;

        // Verifica si hay cambios para el periodo actual
        // Si existe entonces solo actualiza, sino inserta

         If DM1.cdsQry.RecordCount >= 1 Then
          begin
           If Length(Trim(DM1.cdsQry.FieldByName('ASOCODPAGO').AsString)) = 0 Then
            begin
             wSQL := 'UPDATE APO202 SET'
                    +' ASOCODPAGO  ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)
                    +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
             DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            end
           Else
            begin
             wSQL := 'INSERT INTO APO202 ('+
                  ' ASOID, '+
                  ' ASOCODMOD, '+
                  ' ASOCODAUX, '+
                  ' ASOCODPAGO, '+
                  ' USEID, '+
                  ' UPROID, '+
                  ' UPAGOID, '+
                  ' FVIGENTE '+
                  ' ) VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
                  QuotedStr(xAuxStr)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
                  QuotedStr('S')+
             ' )';
             DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            end;
          end
         Else
          begin
           wSQL := 'INSERT INTO APO202 ('+
              'ASOID, '+
              'ASOCODMOD, '+
              'ASOCODAUX, '+
              'ASOCODPAGO, '+
              'USEID, '+
              'UPROID, '+
              'UPAGOID, '+
              'FVIGENTE '+
              ') VALUES ( '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
              QuotedStr(xAuxStr)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
              QuotedStr('S')+
              ')';
           DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end;

         wSQL := 'UPDATE COB304 SET '+
              'FCCODPAGO = NULL, '+
              'FREGCOB = NULL, '+
              'FTRANSF = NULL, '+
              'USUARIO = '+QuotedStr(DM1.wUsuario)+', '+
              'FREG ='+QuotedStr(DateTimeToStr(Date))+', '+
              'HREG ='+QuotedStr(DateTimeToStr(Date))+' '+
              'WHERE ASOID ='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
              'AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
              'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
              'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry2.Next;
        end;
      end;
    end
   Else
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
    end;
end;

procedure TFIngresoLote.SpeedButton8Click(Sender: TObject);
var
   xAuxStr : String ;
begin
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     DM1.cdsCobxUse.Post;
    end;

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     DM1.cdsAutDisk.Post;
    end;

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FREGCOB=''S'' AND FCCODPAGO=''S'' AND FTRANSF=''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount >= 1 Then
    begin
     If MessageDlg('Actualizará los Códigos de Pago Nuevos ¿Desea Continuar? ',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      begin
       DM1.cdsQry2.First;
       While Not DM1.cdsQry2.EOF Do
        begin
         xAuxStr:=DM1.BuscaCodMod('APO201',DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);
         wSQL := 'UPDATE APO201 SET'
                +' ASOCODPAGO ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString)
                +' ASOID      ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry.Close;
         xSQL := 'SELECT * FROM APO202'
                +' WHERE ASOID  ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
                +' AND TRANSANO = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',7,4)'
                +' AND TRANSMES = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',4,2)';

         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;

        // Verifica si hay cambios para el periodo actual
        // Si existe entonces solo actualiza, sino inserta

         If DM1.cdsQry.RecordCount>=1 Then
          begin
           If Length(Trim(DM1.cdsQry.FieldByName('ASOCODPAGO').AsString))=0 Then
            begin
             wSQL := 'UPDATE APO202 SET'
                    +' ASOCODPAGO  ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)
                    +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
             DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            end
           Else
            begin
             wSQL := 'INSERT INTO APO202 ('+
                  'ASOID, '+
                  'ASOCODMOD, '+
                  'ASOCODAUX, '+
                  'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(xAuxStr)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
                  ')';
             DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            end;
          end
         Else
          begin
           wSQL := 'INSERT INTO APO202 ('+
                'ASOID, '+
                'ASOCODMOD, '+
                'ASOCODAUX, '+
                'ASOCODPAGO, '+
                'USEID, '+
                'UPROID, '+
                'UPAGOID, '+
                'FVIGENTE '+
                ') VALUES ( '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
                QuotedStr(xAuxStr)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
                QuotedStr('S')+
                ')';
           DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end;

         wSQL := 'UPDATE COB304 SET '+
              'FCCODPAGO=NULL, '+
              'FREGCOB=NULL, '+
              'FTRANSF=NULL, '+
              'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
              'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
              'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
              'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
              'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
              'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
              'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry2.Next;
        end;
      end;
    end
   Else
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
    end;
end;

procedure TFIngresoLote.SpeedButton10Click(Sender: TObject);
var
   xAuxStr : String ;
begin
   If (DM1.cdsCobxUse.Modified)
       or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     DM1.cdsCobxUse.Post;
    end;
   If (DM1.cdsAutDisk.Modified)
       or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
      DM1.cdsAutDisk.Post;
    end;

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FCUSE =''S'' AND FTRANSF=''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount>=1 Then
    begin
     If MessageDlg('Actualizará Todas las Uses ¿Desea Continuar? ',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      begin
       DM1.cdsQry2.First;
       While Not DM1.cdsQry2.EOF Do
        begin
         // Generación del ASOCODAUX - Codigo Auxiliar
         xAuxStr:=DM1.BuscaCodMod('APO201',DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

         wSQL := 'UPDATE APO201 SET'
                +' USEID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)
                +' ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry.Close;
         xSQL := 'SELECT * FROM APO202'
                +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
                +' AND TRANSANO = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+', 7, 4)'
                +' AND TRANSMES = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+', 4, 2)';
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;

         // Verifica si hay cambios para el periodo actual
         // Si existe entonces solo actualiza, sino inserta

         If DM1.cdsQry.RecordCount>=1 Then
          begin
           If Length(Trim(DM1.cdsQry.FieldByName('USEID').AsString))=0 Then
            begin
             wSQL := 'UPDATE APO202 SET'
                    +' USEID ='+QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)
                    +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
             DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            end
           Else
            begin
             wSQL := 'INSERT INTO APO202 ('+
                  'ASOID, '+
                  'ASOCODMOD, '+
                  'ASOCODAUX, '+
                  'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(xAuxStr)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
                  ' )';
              DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            end;
          end
         Else
          begin
           wSQL := 'INSERT INTO APO202 ('+
                  'ASOID, '+
                  'ASOCODMOD, '+
                  'ASOCODAUX, '+
                  'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(xAuxStr)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
                  ' )';
           DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end;

         wSQL := 'UPDATE COB304 SET '+
                 'FCUSE = NULL, '+
                 'FREGCOB = NULL, '+
                 'FTRANSF = NULL, '+
                 'USUARIO ='+QuotedStr(DM1.wUsuario)+', '+
                 'FREG ='+QuotedStr(DateTimeToStr(Date))+', '+
                 'HREG ='+QuotedStr(DateTimeToStr(Date))
                +' WHERE ASOID ='+DM1.cdsQry2.FieldByName('ASOID').AsString
                +' AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry2.Next;
        end;
      end;
     end
    Else
     begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
     end;
end;

procedure TFIngresoLote.SpeedButton11Click(Sender: TObject);
var
  xAuxStr : String ;
begin
   If (DM1.cdsCobxUse.Modified)
       or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
      DM1.cdsCobxUse.Post;
    end;
   If (DM1.cdsAutDisk.Modified)
       or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
      DM1.cdsAutDisk.Post;
    end;

   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FREGCOB =''S'' AND FCCODPAGO =''S'' AND FTRANSF =''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount>=1 Then
    begin
     If MessageDlg('Actualizará las Uses Nuevos ¿Desea Continuar? ',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      begin
       DM1.cdsQry2.First;
       While Not DM1.cdsQry2.EOF Do
        begin
         // Generación del ASOCODAUX - Codigo Auxiliar
         xAuxStr:=DM1.BuscaCodMod('APO201',DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);

         wSQL := 'UPDATE APO201H SET'
                +' USEID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)
                +' ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry.Close;
         xSQL := 'SELECT * FROM APO202'
                +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)
                +' AND TRANSANO = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+', 7, 4)'
                +' AND TRANSMES = SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+', 4, 2)';
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;

          // Verifica si hay cambios para el periodo actual
          // Si existe entonces solo actualiza, sino inserta

         If DM1.cdsQry.RecordCount >= 1 Then
          begin
           If Length(Trim(DM1.cdsQry.FieldByName('USEID').AsString)) = 0 Then
            begin
             wSQL := 'UPDATE APO202 SET'
                    +' USEID ='+QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)
                    +' WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
             DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            end
           Else
            begin
             wSQL := 'INSERT INTO APO202 ('+
                 'ASOID, '+
                 'ASOCODMOD, '+
                 'ASOCODAUX, '+
                 'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(xAuxStr)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
                  ' )';
              DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            end;
          end
         Else
          begin
           wSQL := 'INSERT INTO APO202 ('+
                  'ASOID, '+
                  'ASOCODMOD, '+
                  'ASOCODAUX, '+
                  'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(xAuxStr)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
            ' )';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end;
         wSQL := 'UPDATE COB304 SET '+
                'FCUSE   = NULL, '+
                'FREGCOB = NULL, '+
                'FTRANSF = NULL, '+
                'USUARIO ='+QuotedStr(DM1.wUsuario)+', '+
                'FREG    ='+QuotedStr(DateTimeToStr(Date))+', '+
                'HREG    ='+QuotedStr(DateTimeToStr(Date))+' '+
                'WHERE ASOID   ='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
                'AND RCOBID    ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

         DM1.cdsQry2.Next;
        end;
      end;
    end
   Else
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
    end;
end;

procedure TFIngresoLote.spdAporteMayTClick(Sender: TObject);
var
   xSQL : String;
begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsBrowse Then
      DM1.cdsCobxUse.Post;
    end;

//Modificado por Error en Grabación
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * '+
           'FROM COB304 A '+
           'WHERE A.RCOBID=' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
           'AND A.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
           'AND A.USERCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk,xSQL );

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      end;
    end;

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');       
      end;
    end;

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FMAPORTE  ='+QuotedStr('S')
          +' AND FTRANSF   ='+QuotedStr('I');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
     Screen.Cursor := crDefault;
     Exit;
    end;

   If Question(Caption, 'Actualizará a Todos la Situación de Inconsistencia '+#13+#13'¿Desea Continuar? ') Then
    begin
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF Do
      begin
       wSQL := 'UPDATE COB304 SET '+
               'FMAPORTE = NULL, '+
               'FREGCOB  = NULL, '+
               'FTRANSF  =''X'', '+
               'USUARIO  ='+QuotedStr(DM1.wUsuario)+', '+
               'FREG     ='+QuotedStr(DateTimeToStr(Date))+', '+
               'HREG     ='+QuotedStr(DateTimeToStr(Date))+' '+
               'WHERE ASOID   ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
               'AND RCOBID    ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
               'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
               'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
       DM1.cdsQry2.Next;
      end;
     ActuaCampos;
     ShowMessage('Actualización Finalizada');     
    end;
   Screen.Cursor := crDefault;    
end;

procedure TFIngresoLote.spdAporteMayMClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsBrowse Then
      DM1.cdsCobxUse.Post;
    end;

//Modificado por Error en la Grabación
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * '+
           'FROM COB304 A '+
           'WHERE A.RCOBID=' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
           'AND A.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
           'AND A.USERCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk,xSQL );

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      end;
    end;

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FREGCOB   ='+QuotedStr('S')
          +' AND FMAPORTE  ='+QuotedStr('S')
          +' AND FTRANSF   ='+QuotedStr('I');
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
     Screen.Cursor := crDefault;
     Exit;
    end;

   If Question(Caption, 'Actualizará la Situación de Inconsistencia '+#13+#13+'¿Desea Continuar? ') Then
    begin
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF Do
      begin
       wSQL := 'UPDATE COB304 SET '+
               'FMAPORTE = NULL, '+
               'FREGCOB  = NULL, '+
               'FTRANSF  =''X'', '+
               'USUARIO  ='+QuotedStr(DM1.wUsuario)+', '+
               'FREG     ='+QuotedStr(DateTimeToStr(Date))+', '+
               'HREG     ='+QuotedStr(DateTimeToStr(Date))+' '+
               'WHERE ASOID   ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
               'AND RCOBID    ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
               'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
               'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
       DM1.cdsQry2.Next;
      end;
     ActuaCamposMarc;
     ShowMessage('Actualización Finalizada');     
    //DM1.cdsAutdisk.Refresh;
    end;
   Screen.Cursor := crDefault;    
end;

procedure TFIngresoLote.spdAporteMenTClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsBrowse Then
      DM1.cdsCobxUse.Post;
    end;

//Modificado por Error en Grabación    
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * '+
           'FROM COB304 A '+
           'WHERE A.RCOBID=' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
           'AND A.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
           'AND A.USERCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk,xSQL );

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');       
      end;
    end;   

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FEAPORTE  ='+QuotedStr('S')
          +' AND FTRANSF   ='+QuotedStr('I');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
     Screen.Cursor := crDefault;
     Exit;
    end;

   If Question(Caption,'Actualizará a Todos la Situación de Inconsistencia '#13+#13+'¿Desea Continuar? ') Then
    begin
     DM1.cdsQry2.First;
     While not DM1.cdsQry2.EOF do
      begin
       wSQL := 'UPDATE COB304 SET '+
               'FMAPORTE = NULL, '+
               'FREGCOB  = NULL, '+
               'FTRANSF  = ''X'', '+
               'USUARIO  ='+QuotedStr(DM1.wUsuario)+', '+
               'FREG     ='+QuotedStr(DateTimeToStr(Date))+', '+
               'HREG     ='+QuotedStr(DateTimeToStr(Date))+' '+
               'WHERE ASOID   ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
               'AND RCOBID    ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
               'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
               'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
       DM1.cdsQry2.Next;
      end;
     ActuaCampos;
     ShowMessage('Actualización Finalizada');     
    end;
   Screen.Cursor := crDefault;   
end;

procedure TFIngresoLote.spdAporteMenMClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsBrowse Then
      DM1.cdsCobxUse.Post;
    end;

//Modificado por Error en Grabación
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk,xSQL );

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      end;
    end;

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FREGCOB   ='+QuotedStr('S')
          +' AND FEAPORTE  ='+QuotedStr('S')
          +' AND FTRANSF   ='+QuotedStr('I');
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
     Screen.Cursor := crDefault;
     Exit;
    end;

   If Question(Caption,'Actualizará la Situación de Inconsistencia '+#13+#13'¿Desea Continuar? ') Then
    begin
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF do
      begin
       wSQL := 'UPDATE COB304 SET '+
               'FMAPORTE = NULL, '+
               'FREGCOB  = NULL, '+
               'FTRANSF  =''X'', '+
               'USUARIO  ='+QuotedStr(DM1.wUsuario)+', '+
               'FREG     ='+QuotedStr(DateTimeToStr(Date))+', '+
               'HREG     ='+QuotedStr(DateTimeToStr(Date))+' '+
               'WHERE ASOID   ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
               'AND RCOBID    ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
               'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
               'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
       DM1.cdsQry2.Next;
      end;
     ActuaCamposMarc;
     ShowMessage('Actualización Finalizada');
    end;
   Screen.Cursor := crDefault;    
end;

procedure TFIngresoLote.bbtnImprimeClick(Sender: TObject);
var
   x10:Integer;
begin
   Screen.Cursor := crHourGlass;
   ppDBInc.DataSource := DM1.dsAutDisk;
   If DM1.wTDatos = 'T' Then
    begin
    //ppRepInc.Template.FileName :=(ExtractFilePath( application.ExeName ) + wRutaRpt +'\RepIngLote.rtm');
     ppRepInc.Template.FileName := (wRutaRpt +'\RepIngLote.rtm');
     ppRepInc.Template.LoadFromFile ;
     pplbTitulo.Caption:=' Listado Detallado de Recaudación ';
    end
   Else
    begin
     If DM1.wTDatos = 'S' Then
      begin
       ppRepInc.Template.FileName := (wRutaRpt +'\RepIngLote.rtm');
       ppRepInc.Template.LoadFromFile ;
       pplbTitulo.Caption:=' Listado Detallado de Recaudación - Sin Inconsistencias ';
      end
     Else
      begin
       If DM1.wTDatos = 'I' Then
        begin
         If DM1.cdsAutdisk.RecordCount>0 Then
          begin
           ppRepInc.Template.FileName := (wRutaRpt +'\RepIngLoteInc.rtm');
           ppRepInc.Template.LoadFromFile ;
           pplbTitulo.Caption :=' Listado Detallado de Recaudación - Inconsistencias ';
          end;
        end;
      end;
    end;
  //DM1.cdsAutdisk.DisableControls;
  //ppDesInc.Show;
   ppRepInc.Print;
  //DM1.cdsAutdisk.EnableControls;
   ppRepInc.Stop;
  //ppDesInc.ShowModal;
   x10 := Self.ComponentCount-1;
   While x10 >= 0 do
    begin
     If Self.Components[x10].ClassName = 'TppGroup' Then
      begin
       Self.Components[x10].Free;
      end;
     x10 := x10-1;
    end;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.spdCamCodModClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor      := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FCCODMOD;FTRANSF';
   DM1.cdsAutdisk.Filter          := ' FCCODMOD=''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered        := True;
   DM1.wTDatos := 'I';  // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FCCODMOD=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FCCODMOD=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FCCODMOD=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FCCODMOD=''S'' AND FTRANSF=''I'''), ffNumber, 15, 0)+' Registros';
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter          := '';
     DM1.cdsAutdisk.Filtered        := True;
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se encontraron Inconsistencias ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Cambio de Código Modular :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdCamCodPagClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FCCODPAGO;FTRANSF';
   DM1.cdsAutdisk.Filter   :=' FCCODPAGO=''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos             := 'I';  // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount>=1 Then
    begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FCCODPAGO=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FCCODPAGO=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FCCODPAGO=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FCCODPAGO=''S'' AND FTRANSF=''I'''),ffNumber, 15,0)+' Registros';
      If dbgAportes.Color<>$00C8E1DF Then
       begin
        dbgAportes.Color := $00C8E1DF
       end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter          := '';
     DM1.cdsAutdisk.Filtered        := True;
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
      ActualizaFooter;
      Screen.Cursor := crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      Exit;
     end;
    Screen.Cursor := crDefault;
    ShowMessage('Total de Registros Inconsistentes por Cambio de Código de Pago : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdCamUseClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FCUSE;FTRANSF';
   DM1.cdsAutdisk.Filter          := ' FCUSE=''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered        := True;
   DM1.wTDatos                    := 'I';  // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FCUSE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FCUSE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FCUSE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FCUSE=''S'' AND FTRANSF=''I'''),ffNumber, 15,0)+' Registros';
     If dbgAportes.Color<>$00C8E1DF Then
      begin
        dbgAportes.Color:=$00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter          := '';
     DM1.cdsAutdisk.Filtered        := True;
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se encontraron Inconsistencias ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Cambio de USE :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdApoMayClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor      := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FMAPORTE;FTRANSF';
   DM1.cdsAutdisk.Filter   := ' FMAPORTE =''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I';  // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount>=1 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FMAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FMAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FMAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FMAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 0)+' Registros';
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter   := '';
     DM1.cdsAutdisk.Filtered := True;
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se encontraron Inconsistencias ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Aporte Mayor :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdApoMenClick(Sender: TObject);
begin
   pnlFiltros.Visible             := False;
   Screen.Cursor                  := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FEAPORTE;FTRANSF';
   DM1.cdsAutdisk.Filter          := ' FEAPORTE=''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered        := True;
   DM1.wTDatos := 'I';  // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)', 'FEAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)', 'FEAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)', 'FEAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FEAPORTE=''S'' AND FTRANSF=''I'''), ffNumber, 15, 0)+' Registros';
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter   := '';
     DM1.cdsAutdisk.Filtered := True;
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se encontraron Inconsistencias ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Aporte Menor : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.dbgAportesEnter(Sender: TObject);
begin
   If pnlBusca.Visible Then
    begin
     pnlBusca.Visible        := False;
     dbgAportes.Enabled      := True;
     pnlUse.Enabled          := True;
     pnlFooter.Enabled       := True;
     pnlHeader.Enabled       := True;
     pnlDatosAportes.Enabled := True;
     dbgAportes.SetFocus;
    end;
end;

procedure TFIngresoLote.dbeImpAporteExit(Sender: TObject);
begin
// If (Screen.ActiveControl).TabOrder<(Sender as TWinControl).TabOrder Then Exit;
   If (ActiveControl.Parent.Name = dbeImpAporte.Parent.Name) And
      (ActiveControl.TabOrder < dbeImpAporte.TabOrder) Then
    Exit;

{  If (Length(Trim(dbeImpAporte.Text)) = 0) or
      (DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat <= 0) Then
    begin
     Beep;
     MessageDlg('Monto del Aporte No es Válido', mtInformation, [mbOk], 0);
     dbeImpAporte.SetFocus;
     Exit;
    end;}
end;

procedure TFIngresoLote.bbtnIngLineaClick(Sender: TObject);
begin
   If Length(dblcdUse.Text)=0 Then
    begin
     Beep;
     MessageDlg('Debe Seleccionar la USE', mtInformation, [mbOk], 0);
     pnlUse.Enabled   := True;
     dblcdUse.Enabled := True;
     dblcdUse.SetFocus;
     Exit;
    end;

   If Length(speAno.Text) = 0 Then
    begin
     ShowMessage('Debe Registrar el Año');
     //speAno.SetFocus;
     Exit;
    end;
   If Length(speMes.Text)=0 Then
    begin
     ShowMessage('Debe Registrar el Mes');
     //speMes.SetFocus;
     Exit;
    end;
   If (Trim(dbeImpAporte.Text)='') or (StrToFloat(StringReplace(dbeImpAporte.Text,',','',[rfReplaceAll])) < 1) Then
    begin
     ShowMessage('Aporte Incorrecto');
     dbeImpAporte.SetFocus;
     Exit;
    end;

   xSQL := 'SELECT APOVALOR'
          +' FROM APO117'
          +' WHERE APOANO ='+QuotedStr(speAno.Text)
          +' AND APOMES ='+QuotedStr(speMes.Text);
   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSQL);
   DM1.cdsReporte1.Open;

   If DM1.cdsReporte1.FieldByName('APOVALOR').AsFloat <> DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat Then
    begin
     Information(Caption, 'El Monto del Aporte no Coincide con el del Registrado');
    end;

   FiltraAsoc;
   Screen.Cursor := crHourGlass;
   dbgAportes.Enabled        := True;
   //dblcdUse.Enabled:=False;
   dblcdUse.Enabled          := True;
   bbtnIngresaAporte.Enabled := True;
   bbtnAutdisk.Enabled       := True;
   bbtnIngresaAporte.Click;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.FiltraAsoc;
begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.USEID, A.UPROID, A.UPAGOID, A.ASOCODPAGO'
          +' FROM APO201 A'
          +' WHERE NOT EXISTS'
          +' (SELECT B.ASOID, B.ASOCODMOD, B.ASOAPENOM, B.USEID, B.UPROID'
          +' FROM COB304 B'
          +' WHERE A.ASOID = B.ASOID'
          +' AND B.RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND B.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND B.USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' ) '
          +' AND A.UPROID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
          +' AND A.UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);
        //'AND A.USEID='+QuotedStr(dblcdUse.Text);
   DM1.cdsAsociados.Close;
   DM1.cdsAsociados.DataRequest(xSQL);

   dblcdCodigoModular.Selected.Clear;
   dblcdCodigoModular.Selected.Add('ASOCODMOD'#9'15'#9'Código Modular');
   dblcdCodigoModular.Selected.Add('ASOAPENOM'#9'55'#9'Apellidos y Nombres');
   dblcdCodigoModular.Selected.Add('USEID'#9'5'#9'USE');
   dblcdCodigoModular.Selected.Add('ASOID'#9'12'#9'Código Derrama');
   dblcdCodigoModular.Selected.Add('ASOCODPAGO'#9'15'#9'Código Pago');
   DM1.cdsAsociados.Open;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.EventoModPagUse(Sender: TObject);
var
   xAuxStr : String ;
begin
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsBrowse Then
      DM1.cdsCobxUse.Post;
    end;

//Modificado por salir Error en la Grabación
{  If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    If DM1.cdsAutDisk.State <> dsBrowse Then
    DM1.cdsAutDisk.Post;
  end;
  DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * '+
           'FROM COB304 A '+
           'WHERE A.RCOBID=' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
           'AND A.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
           'AND A.USERCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk,xSQL );

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      end;
    end;

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND (FCCODMOD=''S'' '+
        'OR FCCODPAGO=''S'' '+
        'OR FCUPRO=''S'' '+
        'OR FCUPAGO=''S'' '+
        'OR FCUSE=''S'') ';
   If (Sender as TControl).Name = 'spdCModCPagUseTod' Then
    wSQL := wSQL+'AND FTRANSF=''I'''
   Else
    If (Sender as TControl).Name = 'spdCModCPagUseMar' Then
     wSQL := wSQL+'AND FREGCOB=''S'' AND FTRANSF=''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
     Exit;
    end;

   If Question(Caption, 'Actualizará Todos los Códigos Modulares, Cod. Pago y Uses Nuevos '+#13+#13+'¿Desea Continuar? ') Then
    begin
     Screen.Cursor := crHourGlass;
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF do
      begin
       xAuxStr:=DM1.BuscaCodMod('APO201',DM1.cdsQry2.FieldByName('ASOCODMOD').AsString);
       wSQL := 'UPDATE APO201 SET '+
               'ASOCODMOD='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
//WMC               'ASOCODAUX='+QuotedStr(xAuxStr)+', '+

               'ASOCODAUX=DECODE(ASOCODMOD,'+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString) +
               ',ASOCODAUX,'+ QuotedStr(xAuxStr)+'), '+

               'ASOCODPAGO='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
               'UPROID='+QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
               'UPAGOID='+QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
               'USEID='+QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+' '+
               'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

       wSQL := 'UPDATE APO202 SET FVIGENTE=NULL '+
               'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

       wSQL := 'INSERT INTO APO202 ('+
               'ASOID, '+
            'ASOCODMOD, '+
            'ASOCODAUX, '+
            'ASOCODPAGO, '+
            'USEID, '+
            'UPROID, '+
            'UPAGOID, FREG, HREG, '+
            'FVIGENTE '+
            ') VALUES ('+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
            QuotedStr(xAuxStr)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
            'SYSDATE, SYSDATE, '+
            QuotedStr('S')+
        ')';
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

       wSQL := 'UPDATE COB304 SET '+
            'FCCODMOD = NULL, '+
            'FCCODPAGO = NULL, '+
            'FCUPRO = NULL, '+
            'FCUPAGO = NULL, '+
            'FCUSE = NULL, '+
            'FREGCOB = NULL, '+
            'FTRANSF = NULL, '+
            'USUARIO ='+QuotedStr(DM1.wUsuario)+', '+
            'FREG ='+QuotedStr(DateTimeToStr(Date))+', '+
            'HREG ='+QuotedStr(DateTimeToStr(Date))+' '+
            'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
            'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
            'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
            'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
       DM1.cdsQry2.Next;
      end;
     DM1.cdsAutdisk.Refresh;
     //dbgAportes.Update;
     If (Sender as TControl).Name = 'spdCModCPagUseTod' Then
      ActuaCampos
     Else
      If (Sender as TControl).Name = 'spdCModCPagUseMar' Then
       ActuaCamposMarc;
     Screen.Cursor := crDefault;
     ShowMessage('Actualización Finalizada');
    end;
end;

procedure TFIngresoLote.spdTotalTransfClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor      := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSFAC';
   DM1.cdsAutdisk.Filter   := 'FTRANSFAC=''S''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I';  // Para Mostrar Todos los Registros
   dbgAportes.Color := clBtnFace;
   DM1.cdsAutdisk.RecordCount;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FTRANSFC=''S'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FTRANSFC=''S'''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FTRANSFC=''S'''), ffNumber, 15, 2);
//   dbgAportes.ColumnByName('ASOAPENOM').FooterValue :='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSFC=''S'''),ffNumber, 15,0)+' Registros';
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue :='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSFAC=''S'''),ffNumber, 15,0)+' Registros';
   ShowMessage('Total de Registros Transferidos : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.SpeedButton2Click(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FTRANSFAC';
   DM1.cdsAutdisk.Filter   := 'FTRANSFAC IS NULL OR FTRANSFAC=''''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I';  // Para Mostrar Todos los Registros
   dbgAportes.Color := clBtnFace;
   DM1.cdsAutdisk.RecordCount;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)', 'FTRANSFAC IS NULL OR FTRANSFAC='''''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)', 'FTRANSFAC IS NULL OR FTRANSFAC='''''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)', 'FTRANSFAC IS NULL OR FTRANSFAC='''''), ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSFAC IS NULL OR FTRANSFAC='''''), ffNumber, 15, 0)+' Registros';
   ShowMessage('Total de Registros por Tansferir : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.Z2bbtnInsertaCreClick(Sender: TObject);
var
   xSQL, xSQL1 : WideString;
   xSumat : Integer;
   xAno, xMes, xDia, xAnoMes, xTrim, xSem, xSs, xAaTri, xAaSem, xAass : String;
   xEstId, xEstDe, xForPagoId, xMPag, xNCou, xName, xTCre, xTCamb, xForPagId, xForPagAb, xForPagIdTel, xForPagAbTel : String;
   xCobrado, xCobrNeg, xCobCre302, xSaldoCob : Double;
   xSaldoReg, xSaldoTemp, xCapital, xInteres, xFlat, xExceso, xTotPag : Double;
   bFlagUlt : Boolean;
   xAsoSitid, xEstAnt, xEstAntdes : String;
   //Para la Verificación de la Distribución de Créditos
   sMontoCuota, sValCuota, sAmort, sInteres, sFlat, sExceso : String;
   xValCta, xMontoCuota, xMontoCob, xxAmort, xxInteres, xxFlat, xxExceso, xPagFlat, xPagInteres, xPagAmort : Double;
   wDia, wMes, wAno : Word;
begin
   pbEstado.Position := 0;
   Ocultapaneles;
   xSumat := 0;
   Try
    If DM1.cdsAutdisk.RecordCount = 0 Then
     begin
      ShowMessage('No Existen Registros a Insertar');
      Exit;
     end;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.DisableControls;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.IndexFieldNames := 'FREGCOB';
   DM1.cdsAutdisk.Filter   := 'FREGCOB =''S''';
   DM1.cdsAutdisk.Filtered := True;

   If DM1.cdsAutdisk.RecordCount >= 1 Then
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     ShowMessage('Existen Registros Marcados, Revise Estos Registros');
     DM1.cdsAutdisk.EnableControls;
     Screen.Cursor := crDefault;
     Exit;
    end;

   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter   := '';
   DM1.cdsAutdisk.Filtered := True;

   DM1.cdsAutdisk.EnableControls;
   dbgAportes.RefreshDisplay;

   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount > 0) Then
    DM1.cdsCobxUse.Post;
   DM1.ControlTran;

   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   DM1.cdsAutdisk.Filter  := '(TRANSCUO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF ='''') '+
                                        'AND ((FTRANSFC<>''S'' AND FTRANSFC<>''F'') OR FTRANSFC IS NULL OR FTRANSFC ='''')';
   DM1.cdsAutdisk.Filtered := True;

   If DM1.cdsAutDisk.RecordCount = 0 Then
    begin
     Screen.Cursor := crDefault;
     Information(Caption, 'No Existe Información a Transferir');
     DM1.cdsAutdisk.Filtered := False;
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter   := '';
     DM1.cdsAutdisk.Filtered := True;
     Exit;
    end;

  If not Question(caption,'Usted Insertará '+IntToStr(DM1.cdsAutDisk.RecordCount)+' Registros hacia las Tablas de Créditos'+#13+#13+
                      ' ¿Está seguro de Insertarlos? ') Then
   begin
    DM1.cdsAutdisk.Filtered := False;
    DM1.cdsAutdisk.IndexFieldNames := '';
    DM1.cdsAutdisk.Filter := '';
    DM1.cdsAutdisk.Filtered := True;
    dbgAportes.RefreshDisplay;
    Screen.Cursor := crDefault;
    Exit;
   end;

   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL );
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   DM1.cdsAutdisk.Filter := '(TRANSCUO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF ='''') '+
                                        'AND ((FTRANSFC<>''S'' AND FTRANSFC<>''F'') OR FTRANSFC IS NULL OR FTRANSFC ='''')';
   DM1.cdsAutdisk.Filtered := True;

   If DM1.cdsAutDisk.RecordCount > 0 Then
    begin
     DM1.cdsAutDisk.DisableControls;

     sFecha := FormatDateTime(wFormatFecha, dbdtpFecOperacion.DateTime);
     sSQL := 'SELECT * FROM TGE114 WHERE FECHA ='+QuotedStr(sFecha);
     DM1.FiltraCDS(DM1.cdsPeriodo, sSQL);

     xAno       := DM1.cdsPeriodo.FieldbyName('FECANO').AsString;
     xMes       := DM1.cdsPeriodo.FieldbyName('FECMES').AsString;
     xDia       := DM1.cdsPeriodo.FieldbyName('FECDIA').AsString;
     xAnoMes    := xAno+xMes;
     xTrim      := DM1.cdsPeriodo.FieldbyName('FECTRIM').AsString;
     xSem       := DM1.cdsPeriodo.FieldbyName('FECSEM').AsString;
     xSs        := DM1.cdsPeriodo.FieldbyName('FECSS').AsString;
     xAaTri     := DM1.cdsPeriodo.FieldbyName('FECAATRI').AsString;
     xAaSem     := DM1.cdsPeriodo.FieldbyName('FECAASEM').AsString;
     xAass      := DM1.cdsPeriodo.FieldbyName('FECAASS').AsString;
     xForPagoId := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID', 'FORPAGOABR ='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString), 'FORPAGOID');

     xForPagIdTel := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID, FORPAGOABR', 'FPLANILLA =''S'' AND FORPAGOABR ='+QuotedStr(dblcFormaPago.Text), 'FORPAGOID');
     xForPagAbTel := DM1.cdsQry.FieldByName('FORPAGOABR').AsString;

     xTCamb := CalcTipoCambio(DM1.wTMonLoc, dbdtpFecOperacion.Date, wTipoCambio);
     If Length(Trim(xTCamb)) = 0 Then
      xTCamb := '0';

     DM1.cdsAutDisk.First;
     While Not DM1.cdsAutDisk.EOF do
      begin
      //  Actualiza el Credito tablas CRE303  Cabecera Prestamo
      //                              CRE301  Cabecera Prestamo
      //                              CRE302  Cronograma de Pago
      //                              CRE310  Detalle de Pago
       If DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat > 0 Then
        begin
         xSQL := 'ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)
                +' AND CREANO ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)
                +' AND CREMES ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+' '+
                                 'AND (CREESTADO =''EN PROCESO DE COBRANZA'' OR CREESTADO =''POR COBRAR'' OR CREESTADO =''PARCIAL'' OR CREESTADO =''NO PAGADO'')';
         DM1.DisplayDescrip( 'prvTGE', 'CRE302', 'ASOID, CREAMORT, CREINTERES, CREFLAT, CRECAPITAL, CREMTOINT, CREMTOFLAT, CREMTO, CREDID, CRECUOTA, TIPCREID, '+
				              'CREAMORT, CREINTERES, CREFLAT, CREANO, CREMES, FORPAGOID, FORPAGOABR', xSQL, 'ASOID');
         If DM1.cdsQry.RecordCount > 0 Then
          begin
           If DM1.cdsQry.IndexFieldNames <> 'CREDID' Then
            DM1.cdsQry.IndexFieldNames := 'CREDID';

          // Monto x Cobrar DEL CRE302
           xCobCre302 := 0;
           DM1.cdsQry.First;
           While not DM1.cdsQry.Eof do
            begin
             xSaldoReg := DM1.Fround( (DM1.cdsQry.FieldByName('CREAMORT').AsFloat+DM1.cdsQry.FieldByName('CREINTERES').AsFloat+
                          DM1.cdsQry.FieldByName('CREFLAT').AsFloat)-
                          (DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat+DM1.cdsQry.FieldByName('CREMTOINT').AsFloat+
                          DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat), 15, 2);
             xCobCre302 := xCobCre302+xSaldoReg;
             DM1.cdsQry.Next;
            end;
           bFlagUlt := False;
           //Cuota del AutDisk
           xSaldoCob := DM1.Fround(DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat, 15, 2);
           //*

           DM1.cdsQry.First;
           xCobrado  := DM1.Fround(DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat, 15, 2);
           xForPagAb := DM1.cdsAutdisk.FieldByName('FORPAGOID').AsString;

           DM1.cdsReporte.Close;
           DM1.cdsReporte.DataRequest('SELECT FORPAGOID FROM COB101 WHERE FORPAGOABR ='+QuotedStr(xForPagAb));
           DM1.cdsReporte.Open;

           xForPagId := DM1.cdsReporte.FieldByName('FORPAGOID').AsString;//DM1.DisplayDescrip('prvTGE','COB101','FORPAGOID','FORPAGOABR='+QuotedStr(xForPagId),'FORPAGOID');
           xCobrNeg  := 0;//DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat;
           While not DM1.cdsQry.Eof do
            begin
             sWhere := 'SELECT '+wRepFuncChar+wRepFecServi+', '+QuotedStr(wFormatFecha)+') "FECHA", '+wRepFecServi+' HORA FROM DUAL';
             DM1.cdsReporte.Close;
             DM1.cdsReporte.DataRequest(sWhere);
             DM1.cdsReporte.Open;
             xFec_Sis := DM1.cdsReporte.FieldByName('FECHA').AsString;
             xHor_Sis := DM1.cdsReporte.FieldByName('HORA').AsString;

             xSQL := 'SELECT CREESTID, CREESTADO From CRE302'
                    +' WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)
                    +' AND CREANO ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)
                    +' AND CREMES ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)
                    +' AND CREDID ='+QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString);
             DM1.cdsQry5.Close;
             DM1.cdsQry5.DataRequest(xSQL);
             DM1.cdsQry5.Open;
             xEstAnt := DM1.cdsQry5.FieldByName('CREESTID').AsString;
             xEstAntdes := DM1.cdsQry5.FieldByName('CREESTADO').AsString;
             xSQL := 'SELECT ASOTIPID From CRE303'
                    +' WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)
                    +' AND CREDID ='+QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString);
             DM1.cdsQry5.Close;
             DM1.cdsQry5.DataRequest(xSQL);
             DM1.cdsQry5.Open;
             xAsoSitid := DM1.cdsQry5.FieldByName('ASOTIPID').AsString;

             If xSaldoCob > 0 Then
              begin
              //CUANDO EL MONTO DEL AUTDISK ES IGUAL AL MONTO DE LAS CUOTAS
               If xCobrado = xCobCre302 Then		// Inicio de si que el monto cubre lo que tengo que pagar
                begin
                 xCapital := 0;
                 xInteres := 0;
                 xFlat    := 0;
                 xTotPag  := 0;
                 xEstDe := xEstado1;
                 xEstId := xEstid1;

                 DM1.cdsHijo.IndexFieldNames := '';
                 DM1.cdsHijo.Filter   := '';
                 DM1.cdsHijo.Filtered := False;
                 DM1.cdsHijo.Close;
                 DM1.cdsHijo.DataRequest('SELECT FORPAGOABR FROM COB101 WHERE FORPAGOID ='+Quotedstr(DM1.cdsQry.FieldByName('FORPAGOID').AsString));
                 DM1.cdsHijo.Open;
                 xForPagAb := DM1.cdsHijo.FieldByName('FORPAGOABR').AsString;

                 //Calculo  de Interes
                 xInteres := DM1.FRound(DM1.cdsQry.FieldByName('CREINTERES').AsFloat - DM1.cdsQry.FieldByName('CREMTOINT').AsFloat, 15, 2);

                 //Calculo de Flat
                 xFlat := DM1.FRound(DM1.cdsQry.FieldByName('CREFLAT').AsFloat - DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat, 15, 2);

                 //Calculo  de Capital
                 xCapital := DM1.FRound(DM1.cdsQry.FieldByName('CREAMORT').AsFloat - DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat, 15, 2);

                 xTotPag := xCapital+xInteres+xFlat;

                 xCobrNeg:= xCobrNeg+(xTotPag);
                 xMPag   := FloatToStrF(xTotPag,ffNumber,10,2);

                 xNCou := DM1.cdsQry.FieldByName('CRECUOTA').AsString;;
                 xName := DM1.cdsQry.FieldByName('CREDID').AsString;
                 xTCre := DM1.cdsQry.FieldByName('TIPCREID').AsString;


                 // Inserto CRE310 - Recibo, Voucher, Cancelación de pago, etc. (El ingreso del monto pagado)
                 xSQL := 'INSERT INTO CRE310 ('+
                         'ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, TIPCREID, CREDID, CRECUOTA, CREMONLOC, CREMONEXT, CREMTODEV, '+
                         'FORPAGOID, FORPAGOABR, FOPERAC, AREAID, TRANSINTID, CREESTID, CREESTADO, '+
                         'CREFPAG, CREMTOCUO, CREAMORT, CREINTERES, CREFLAT, CREMTOCOB, TMONID, TCAMBIO, USUARIO, FREG, HREG, CIAID, ASOID, '+
                         'UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, ASOAPENOM, CIUDID, CREANO, CREMES, '+
                         'RCOBID, DETRCOBID, USERCOBID, NROOPE, CREDOCPAG, '+
                         'FORPAGABR, FORPAGID, CREOBS, CREESTANT, CREESTANTDES, ASOSITID, CNTANOMM) '+
                         'SELECT ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, '+
                         QuotedStr(xTCre)+', '+
                         QuotedStr(xName)+', '+
                         DM1.cdsQry.FieldByName('CRECUOTA').AsString+', '+
                         ''+FloatToStr(xTotPag)+''+','+
                         '0, 0, '+
      {                     QuotedStr(xForPagId)+', '+
                         QuotedStr(xForPagAb)+', '+}
                         QuotedStr(DM1.cdsQry.FieldByName('FORPAGOID').AsString)+', '+
                         QuotedStr(xForPagAb)+', '+
                         QuotedStr(FormatDateTime(wFormatFecha,dbdtpFecOperacion.Date))+', '+
                         QuotedStr(DM1.wModulo)+', ''CUO'', '+
                         QuotedStr(xEstId)+', '+
                         QuotedStr(xEstDe)+', '+
                         QuotedStr(FormatDateTime(wFormatFecha,dbdtpFecOperacion.Date))+', '+
                         DM1.cdsQry.FieldByName('CREMTO').AsString+', '+
                         DM1.cdsQry.FieldByName('CREAMORT').AsString+', '+
                         DM1.cdsQry.FieldByName('CREINTERES').AsString+', '+
                         DM1.cdsQry.FieldByName('CREFLAT').AsString+', '+
                         ''+FloatToStr(xTotPag)+''+','+
                         QuotedStr(DM1.wTMonLoc)+', '+
                         ''+FloatToStr(StrtoFloat(xTCamb))+''+', '+
                         QuotedStr(DM1.wUsuario)+', '+
                         'TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
                         QuotedStr(wCiaDef)+', ASOID, ';
                 xSQL1 := QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+', DPTOID, '+
                           QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+', '+
                           QuotedStr(dblcBanco.Text)+', '+
                           QuotedStr(Trim(DM1.cdsCobxUse.FieldByName('CCBCO').AsString))+', '+
                           QuotedStr(Trim(DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString))+', '+
                           'CIUDID, '+
                           QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)+', '+
                           QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)+', '+ // Abr Estuvo Asi, Dijeron que no se cambiara, despues se va a cambiar, como siempre !!!!
                           QuotedStr(xForPagoId)+','+QuotedStr('.')+','+
                           QuotedStr(xEstAnt)+','+
                           QuotedStr(xEstAntdes)+','+
                           QuotedStr(xAsositid)+','+
                           QuotedStr(dbePerCont.Text)+
                           ' FROM APO201 A '+
                           ' WHERE A.ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString);

                 DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL1);
                 // Actualizo CRE301 - Cabecera de Prestamo
                 xSQL := 'UPDATE CRE301 SET '+
                         'CREMTOPAG = NVL(CREMTOPAG,0)+'+''+FloatToStr(xTotPag)+''+', '+
                         'CRESDOACT = NVL(CRESDOACT,0)-'+''+FloatToStr(xTotPag)+''+', '+
                         'CRECUOPAG = NVL(CRECUOPAG,0)+1, '+
                         'CREESTADO = CASE WHEN CREMTOPAG-CRESDOACT = 0 THEN ''CANCELADO'' ELSE ''POR COBRAR'' END '+
                         'WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
                         'AND CREDID ='+QuotedStr(xName);
                 DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                 // Actualizo CRE302 - Cronograma de Pago
                 xSQL := 'UPDATE CRE302 SET '+
                         'CREESTID ='+QuotedStr(xEstid1)+', '+
                         'CREESTADO ='+QuotedStr(xEstado1)+', '+
                         'TCAMBIO ='+''+FloatToStr(StrtoFloat(xTCamb))+''+', '+
                         'CREMTOCOB = NVL(CREMTOCOB,0) +'+''+FloatToStr(xTotPag) +''+', '+
                         'CRECAPITAL = NVL(CRECAPITAL,0)+'+''+FloatToStr(xCapital)+''+', '+
                         'CREMTOINT = NVL(CREMTOINT,0) +'+''+FloatToStr(xInteres)+''+', '+
                         'CREMTOFLAT = NVL(CREMTOFLAT,0)+'+''+FloatToStr(xFlat)   +''+', '+
                         'CRESALDO = 0, '+
                         'FLAGVAR = NULL, '+
                         'NROOPE ='+QuotedStr(dbeNumOperacion.Text)+', '+
                         'CREDOCPAG ='+QuotedStr(dbeNumOperacion.Text)+', '+
                         'FOPERAC ='+QuotedStr(DatetoStr(dbdtpFecOperacion.Date))+', '+
                         'USUARIO ='+QuotedStr(DM1.wUsuario)+', '+
                         'CREFPAG ='+QuotedStr(DatetoStr(dbdtpFecOperacion.Date))+', '+
                         'FREG ='+QuotedStr(xFec_Sis)+', '+
                         'HREG =SYSDATE, ';
                 If xEstid1 = '27' Then
                   xSQL := xSQL + 'FLGINT ='+QuotedStr('S')
                 Else
                   xSQL := xSQL + 'FLGINT ='+QuotedStr('N');

                  xSQL := xSQL +' WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)
                                              +' AND CREANO ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)
                                              +' AND CREMES ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)
                                              +' AND CREDID ='+QuotedStr(xName);
                 DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                 // Actualizo CRE303 - Cabecera de Prestamo
                 xSQL := 'UPDATE CRE303 SET '+
                         'CREMTOPAG = NVL(CREMTOPAG,0)+'+''+FloatToStr(xTotPag)+''+', '+
                         'CRESDOACT = NVL(CRESDOACT,0)-'+''+FloatToStr(xTotPag)+''+', '+
                         'CRECUOPAG = NVL(CRECUOPAG,0)+1, '+
                         'CREESTADO = CASE WHEN CREMTOPAG-CRESDOACT = 0 THEN ''CANCELADO'' ELSE ''POR COBRAR'' END '+
                         'WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
                         'AND CREDID ='+QuotedStr(xName);
                 DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                 xSaldoCob := DM1.FRound(xSaldoCob-xCobrNeg, 15, 2);
                 xCobrNeg  := 0;
                 DM1.cdsQry.Next;
              end					// De si el monto es mayor
             Else
    //          If xCobrado < xCobrNeg Then		// Inicio de si que el monto a pagar es parcial
             //** PARCIAL CUANDO EL MONTO DEL AUTDISK ES MENOR AL MONTO DE LAS CUOTAS
              If xCobrado < xCobCre302 Then		// Inicio de si que el monto a pagar es parcial
               begin
                xCapital := 0;
                xInteres := 0;
                xFlat    := 0;
                xTotPag  := 0;

                xSaldoReg := DM1.FRound((DM1.cdsQry.FieldByName('CREAMORT').AsFloat+DM1.cdsQry.FieldByName('CREINTERES').AsFloat+
                             DM1.cdsQry.FieldByName('CREFLAT').AsFloat)-
                             (DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat+DM1.cdsQry.FieldByName('CREMTOINT').AsFloat+
                             DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat), 15, 2);
                If (xSaldoCob > xSaldoReg) Then
                 begin
                  xEstDe := xEstado1;
                  xEstId := xEstid1;
                  xCapital := DM1.FRound(DM1.cdsQry.FieldByName('CREAMORT').AsFloat - DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat, 15, 2);
                  xInteres := DM1.FRound(DM1.cdsQry.FieldByName('CREINTERES').AsFloat - DM1.cdsQry.FieldByName('CREMTOINT').AsFloat, 15, 2);
                  xFlat    := DM1.FRound(DM1.cdsQry.FieldByName('CREFLAT').AsFloat - DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat, 15, 2);
                 end
                Else
                 If (xSaldoCob <= xSaldoReg) Then
                  begin
                   xSaldoTemp := xSaldoCob;

                   If (xSaldoCob < xSaldoReg) Then
                    begin
                     xEstDe := xEstado4;
                     xEstId := xEstid4;
                    end
                   Else
                    If (xSaldoCob = xSaldoReg) Then
                     begin
                        xEstDe := xEstado1;
                        xEstId := xEstid1;
                     end;

                   xCapital := DM1.FRound(DM1.cdsQry.FieldByName('CREAMORT').AsFloat-DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat, 15, 2);
                   xInteres := DM1.FRound(DM1.cdsQry.FieldByName('CREINTERES').AsFloat-DM1.cdsQry.FieldByName('CREMTOINT').AsFloat, 15, 2);
                   xFlat    := DM1.FRound(DM1.cdsQry.FieldByName('CREFLAT').AsFloat-DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat, 15, 2);

                   //Calculo  de Interes
                   If xSaldoTemp > xInteres Then
                    xInteres := DM1.FRound(DM1.cdsQry.FieldByName('CREINTERES').AsFloat-DM1.cdsQry.FieldByName('CREMTOINT').AsFloat, 15, 2)
                   Else
                    xInteres := xSaldoTemp;
                   xSaldoTemp := xSaldoTemp-xInteres;

                   //Calculo de Flat
                   If xSaldoTemp > xFlat Then
                    xFlat := DM1.FRound(DM1.cdsQry.FieldByName('CREFLAT').AsFloat-DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat, 15, 2)
                   Else
                    xFlat := xSaldoTemp;
                   xSaldoTemp := xSaldoTemp-xFlat;

                   //Calculo  de Capital
                   If xSaldoTemp > xCapital Then
                    xCapital := DM1.FRound(DM1.cdsQry.FieldByName('CREAMORT').AsFloat-DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat, 15, 2)
                   Else
                    xCapital := xSaldoTemp;
                   xSaldoTemp := xSaldoTemp-xCapital;

                  end;

                  xTotPag  := xCapital+xInteres+xFlat;
                  xCobrNeg := xCobrNeg+(xTotPag);
                  xMPag    := FloatToStrF(xTotPag, ffNumber, 10, 2);

                  xNCou := DM1.cdsQry.FieldByName('CRECUOTA').AsString;;
                  xName := DM1.cdsQry.FieldByName('CREDID').AsString;
                  xTCre := DM1.cdsQry.FieldByName('TIPCREID').AsString;

                  // Inserto CRE3106 - Recibo, Voucher, Cancelación de pago, etc. (El ingreso del monto pagado)
                  xSQL := 'INSERT INTO CRE310 ('+
                          'ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, TIPCREID, CREDID, CRECUOTA, CREMONLOC, CREMONEXT, CREMTODEV, '+
                          'FORPAGOID, FORPAGOABR, FOPERAC, AREAID, TRANSINTID, CREESTID, CREESTADO, '+
                          'CREFPAG, CREMTOCUO, CREAMORT, CREINTERES, CREFLAT, CREMTOCOB, TMONID, TCAMBIO, USUARIO, FREG, HREG, CIAID, ASOID, '+
                          'UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, ASOAPENOM, CIUDID, CREANO, CREMES, '+
                          'RCOBID, DETRCOBID, USERCOBID, NROOPE, CREDOCPAG, '+
                          'FORPAGABR, FORPAGID, CREOBS, CREESTANT, CREESTANTDES, ASOSITID, CNTANOMM) '+
                          'SELECT ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, '+
                          QuotedStr(xTCre)+', '+
                          QuotedStr(xName)+', '+
                          DM1.cdsQry.FieldByName('CRECUOTA').AsString+', '+
                          ''+FloatToStr(xTotPag)+''+', '+
                          '0, 0, '+
                          QuotedStr(DM1.cdsQry.FieldByName('FORPAGOID').AsString)+', '+
                          QuotedStr(xForPagAb)+', '+
                          QuotedStr(FormatDateTime(wFormatFecha,dbdtpFecOperacion.Date))+', '+
                          QuotedStr(DM1.wModulo)+', ''CUO'', '+
                          QuotedStr(xEstId)+', '+
                          QuotedStr(xEstDe)+', '+
                          QuotedStr(FormatDateTime(wFormatFecha,dbdtpFecOperacion.Date))+', '+
                          DM1.cdsQry.FieldByName('CREMTO').AsString+', '+
                          DM1.cdsQry.FieldByName('CREAMORT').AsString+', '+
                          DM1.cdsQry.FieldByName('CREINTERES').AsString+', '+
                          DM1.cdsQry.FieldByName('CREFLAT').AsString+', '+
                          ''+FloatToStr(xTotPag)+''+', '+
                          QuotedStr(DM1.wTMonLoc)+', '+
                          ''+FloatToStr(StrtoFloat(xTCamb))+''+', '+
                          QuotedStr(DM1.wUsuario)+', '+
                          'TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
                          QuotedStr(wCiaDef)+', ASOID, ';

                  xSQL1 := QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+', DPTOID, '+
                           QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+', '+
                           QuotedStr(dblcBanco.Text)+', '+
                           QuotedStr(Trim(DM1.cdsCobxUse.FieldByName('CCBCO').AsString))+', '+
                           QuotedStr(Trim(DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString))+', '+
                           'CIUDID, '+
                           QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)+', '+
                           QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
                           QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)+', '+ // Abr Estuvo Asi, Dijeron que no se cambiara, despues se va a cambiar, como siempre !!!!
                           QuotedStr(xForPagoId)+','+QuotedStr('.')+','+
                           QuotedStr(xEstAnt)+','+
                           QuotedStr(xEstAntdes)+','+
                           QuotedStr(xAsositid)+','+
                           QuotedStr(dbePerCont.Text)+
                           ' FROM APO201 A '+
                           ' WHERE A.ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString);
                  DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL1);

                  // Actualizo CRE301 - Cabecera de Prestamo
                  xSQL := 'UPDATE CRE301 SET '+
{                        'CREMTOPAG=NVL(CREMTOPAG,0)+'+xMPag+', '+
                        'CRESDOACT=NVL(CRESDOACT,0)-'+xMPag+', '+}
                          'CREMTOPAG = NVL(CREMTOPAG,0)+'+''+FloatToStr(xTotPag)+''+', '+
                          'CRESDOACT = NVL(CRESDOACT,0)-'+''+FloatToStr(xTotPag)+''+', '+

                          'CRECUOPAG = NVL(CRECUOPAG,0)+1, '+
                          'CREESTADO = CASE WHEN CREMTOPAG-CRESDOACT = 0 THEN ''CANCELADO'' ELSE ''POR COBRAR'' END '+
                          'WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)
                          +' AND CREDID ='+QuotedStr(xName);
                  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                  // Actualizo CRE302 - Cronograma de Pago
                  xSQL := 'UPDATE CRE302 SET '+
                          'CREESTID =' +QuotedStr(xEstId)+', '+
                          'CREESTADO ='+QuotedStr(xEstDe)+', '+
                          'TCAMBIO ='  +''+FloatToStr(StrtoFloat(xTCamb))+''+', '+
                          'CREMTOCOB ='+xMPag+', '+
                          'CRECAPITAL = NVL(CRECAPITAL, 0)+' +''+FloatToStr(xCapital)+''+', '+
                          'CREMTOINT = NVL(CREMTOINT, 0) +' +''+FloatToStr(xInteres)+''+', '+
                          'CREMTOFLAT = NVL(CREMTOFLAT, 0)+' +''+FloatToStr(xFlat)   +''+', '+
                          'CRESALDO  ='+''+FloatToStr(xSaldoReg-xTotPag)          +''+', '+
                          'FLAGVAR = NULL, '+
                          'NROOPE ='+QuotedStr(dbeNumOperacion.Text)+', '+
                          'CREDOCPAG ='+QuotedStr(dbeNumOperacion.Text)+', '+
                          'FOPERAC ='+QuotedStr(DatetoStr(dbdtpFecOperacion.Date))+', '+
                          'USUARIO ='+QuotedStr(DM1.wUsuario)+', '+
                          'CREFPAG ='+QuotedStr(DatetoStr(dbdtpFecOperacion.Date))+', '+
                          'FREG ='+QuotedStr(xFec_Sis)+', '+
                          'HREG = SYSDATE, ';
                      If xEstid1 = '27' Then
                       xSQL := xSQL + 'FLGINT ='+QuotedStr('S')
                      Else
                       xSQL := xSQL + 'FLGINT ='+QuotedStr('N');

                      xSQL := xSQL +' WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)
                             +' AND CREANO ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)
                             +' AND CREMES ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)
                             +' AND CREDID ='+QuotedStr(xName);
                  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                  //Verifica Si Distribución de Flat, Interés y Amortización es Correcta
                  //************************************************************
{                  xSQL := 'Select * From CRE302'
                         +' Where ASOID ='+QuotedStr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                         +' And CREANO ='+QuotedStr(DM1.cdsAutdisk.FieldByName('CREANO').AsString)
                         +' And CREMES ='+QuotedStr(DM1.cdsAutdisk.FieldByName('CREMES').AsString)
                         +' And CREDID ='+QuotedStr(xName)
                         +' And CRECUOTA ='+QuotedStr(xNCou)
                         +' And TIPCREID ='+QuotedStr(xTCre);

                  DM1.cdsATransp.Filter   := '';
                  DM1.cdsATransp.Filtered := False;
                  DM1.cdsATransp.IndexFieldNames := '';
                  DM1.cdsATransp.Close;
                  DM1.cdsATransp.DataRequest(xSQL);
                  DM1.cdsATransp.Open;

                  sMontoCuota := DM1.cdsATransp.FieldByName('CREMTO').AsString;
                  sValCuota   := sMontoCuota;
                  sAmort      := DM1.cdsATransp.FieldByName('CREAMORT').AsString;
                  sInteres    := DM1.cdsATransp.FieldByName('CREINTERES').AsString;
                  sFlat       := DM1.cdsATransp.FieldByName('CREFLAT').AsString;
                  sExceso     := DM1.cdsATransp.FieldByName('CREMTOEXC').AsString;
                  xValCta     := StrToFloat(sValCuota);

                  xMontoCuota := StrToFloat(sMontoCuota);
                  xxAmort     := DM1.FRound(StrToFloat(sAmort), 15, 2);
                  xxInteres   := DM1.FRound(StrToFloat(sInteres), 15, 2);
                  xxFlat      := DM1.FRound(StrToFloat(sFlat), 15, 2);
                  xxExceso    := DM1.FRound(StrToFloat(sExceso), 15, 2);

                  xValCta     := DM1.cdsATransp.FieldByName('CREAMORT').AsFloat
                                +DM1.cdsATransp.FieldByName('CREINTERES').AsFloat
                                +DM1.cdsATransp.FieldByName('CREFLAT').AsFloat
                                +DM1.cdsATransp.FieldByName('CREMTOEXC').AsFloat;

                  xSQL := 'Select ASOID, CREDID, CRECUOTA, CREANO, CREMES, CREFPAG, NVL(CREMTOCOB, 0) CREMTOCOB, NVL(CREAMORT, 0) CREAMORT,'
                         +' NVL(CREINTERES, 0) CREINTERES, NVL(CREFLAT,0) CREFLAT, CREMTOEXC, NROOPETMP, FREG '
                         +' From CRE310 '
                         +' Where ASOID ='+Quotedstr(DM1.cdsAutdisk.FieldByName('ASOID').AsString)
                         +' And CREDID ='+Quotedstr(xName)
                         +' And CRECUOTA ='+xNCou;

                  DM1.cdsCambios.Close;
                  DM1.cdsCambios.Filter   := '';
                  DM1.cdsCambios.Filtered := False;
                  DM1.cdsCambios.IndexFieldNames := '';
                  DM1.cdsCambios.DataRequest(xSQL);
                  DM1.cdsCambios.Open;
                  DM1.cdsCambios.IndexFieldNames := 'FREG';
                  DM1.cdsCambios.First;
                  xPagFlat    := 0;
                  xPagInteres := 0;
                  xPagAmort   := 0;
                  While not DM1.cdsCambios.EOF do
                   begin
                    xMontoCob := DM1.FRound(DM1.cdsCambios.FieldByName('CREMTOCOB').AsFloat, 15, 2);
                    DM1.cdsCambios.Edit;
                    DM1.cdsCambios.FieldByName('CREMTOEXC').AsFloat  := 0;
                    DM1.cdsCambios.FieldByName('CREFLAT').AsFloat    := 0;
                    DM1.cdsCambios.FieldByName('CREINTERES').AsFloat := 0;
                    DM1.cdsCambios.FieldByName('CREAMORT').AsFloat   := 0;
                    If xMontoCob > 0 Then
                     begin
                      If xPagFlat < xxFlat Then
                       begin
                        If (xxFlat - xPagFlat) < xMontoCob Then
                         DM1.cdsCambios.FieldByName('CREFLAT').AsFloat := xxFlat - xPagFlat
                        Else
                         DM1.cdsCambios.FieldByName('CREFLAT').AsFloat := xMontoCob;
                        xMontoCob := xMontoCob - DM1.FRound(DM1.cdsCambios.FieldByName('CREFLAT').AsFloat, 15, 2);
                        xPagFlat := xPagFlat+DM1.cdsCambios.FieldByName('CREFLAT').AsFloat;
                       end;
                      end;
                      If xMontoCob>0 Then
                       begin
                        DecodeDate  (DM1.cdsCambios.FieldByName('CREFPAG').AsDateTime, wAno, wMes, wDia);
                        xAno := IntToStr(wAno);
                        xMes := DM1.StrZero(IntToStr(wMes), 2);
                        If (xAno+xMes) >= (DM1.cdsCambios.FieldByName('CREANO').AsString+DM1.cdsCambios.FieldByName('CREMES').AsString) Then
                         begin
                          If xPagInteres < xxInteres Then
                           begin
                            If (xxInteres-xPagInteres)<xMontoCob Then
                             DM1.cdsCambios.FieldByName('CREINTERES').AsFloat := xxInteres-xPagInteres
                            Else
                             DM1.cdsCambios.FieldByName('CREINTERES').AsFloat := xMontoCob;
                            xMontoCob := xMontoCob-DM1.FRound(DM1.cdsCambios.FieldByName('CREINTERES').AsFloat, 15, 2);
                            xPagInteres := xPagInteres+DM1.cdsCambios.FieldByName('CREINTERES').AsFloat;
                           end;
                         end;
                      end;
                      If xMontoCob>0 Then
                       begin
                        If xPagAmort < xxAmort Then
                         begin
                           If (xxAmort-xPagAmort) < xMontoCob Then
                            DM1.cdsCambios.FieldByName('CREAMORT').AsFloat := xxAmort-xPagAmort
                           Else
                            DM1.cdsCambios.FieldByName('CREAMORT').AsFloat := xMontoCob;
                           xMontoCob := xMontoCob - DM1.FRound(DM1.cdsCambios.FieldByName('CREAMORT').AsFloat, 15, 2);
                           xPagAmort := xPagAmort + DM1.cdsCambios.FieldByName('CREAMORT').AsFloat;
                         end;
                      end;
                      If xMontoCob > 0 Then
                      begin
                         DM1.cdsCambios.FieldByName('CREMTOEXC').AsFloat := xMontoCob;
                      end;
                      DM1.cdsCambios.Next;
                   end;
                   DM1.cdsCambios.ApplyUpdates(0);
                  //Fin de Distibución de Flat, Interés y Amortización}
                  //************************************************************

                  // Actualizo CRE303 - Cabecera de Préstamo
                  xSQL := 'UPDATE CRE303 SET '+
{                        'CREMTOPAG=NVL(CREMTOPAG,0)+'+xMPag+', '+
                        'CRESDOACT=NVL(CRESDOACT,0)-'+xMPag+', '+}
                          'CREMTOPAG = NVL(CREMTOPAG,0)+'+''+FloatToStr(xTotPag)+''+', '+
                          'CRESDOACT = NVL(CRESDOACT,0)-'+''+FloatToStr(xTotPag)+''+', '+

                          'CRECUOPAG = NVL(CRECUOPAG,0)+1, '+
                          'CREESTADO = CASE WHEN CREMTOPAG - CRESDOACT = 0 THEN ''CANCELADO'' ELSE ''POR COBRAR'' END '+
                          'WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)
                         +' AND CREDID ='+QuotedStr(xName);
                   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                   xSaldoCob := DM1.FRound(xSaldoCob - xCobrNeg, 15, 2);
                   xCobrNeg  := 0;
                   DM1.cdsQry.Next;
                  end// De si el monto es menor
                Else
                //** MAYOR CUANDO EL MONTO DEL AUTDISK ES MENOR AL MONTO DE LAS CUOTAS
                If xCobrado > xCobCre302 Then
                 begin
                    xCapital := 0;
                    xInteres := 0;
                    xFlat    := 0;
                    xTotPag  := 0;
                    xExceso  := 0;

                    xSaldoReg := DM1.FRound((DM1.cdsQry.FieldByName('CREAMORT').AsFloat+DM1.cdsQry.FieldByName('CREINTERES').AsFloat+
                                 DM1.cdsQry.FieldByName('CREFLAT').AsFloat)-
                                 (DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat+DM1.cdsQry.FieldByName('CREMTOINT').AsFloat+
                                 DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat), 15, 2);
                    If (xSaldoCob > xSaldoReg) Then
                     begin
                      xSaldoTemp := xSaldoCob;
                      xEstDe := xEstado1;
                      xEstId := xEstid1;
                      xCapital := DM1.FRound(DM1.cdsQry.FieldByName('CREAMORT').AsFloat-DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat, 15, 2);
                      xInteres := DM1.FRound(DM1.cdsQry.FieldByName('CREINTERES').AsFloat-DM1.cdsQry.FieldByName('CREMTOINT').AsFloat, 15, 2);
                      xFlat    := DM1.FRound(DM1.cdsQry.FieldByName('CREFLAT').AsFloat-DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat, 15, 2);
                      bFlagUlt := DM1.cdsQry.Eof;
                      xSaldoTemp := xSaldoTemp-(xCapital+xInteres+xFlat);
                     end
                    Else
                      If (xSaldoCob<=xSaldoReg) Then
                       begin
                          xSaldoTemp := xSaldoCob;

                          If (xSaldoCob < xSaldoReg) Then
                          begin
                             xEstDe := xEstado4;
                             xEstId := xEstid4;
                          end
                          Else
                             If (xSaldoCob = xSaldoReg) Then
                             begin
                                xEstDe := xEstado1;
                                xEstId := xEstid1;
                             end  ;

                          xCapital := DM1.FRound(DM1.cdsQry.FieldByName('CREAMORT').AsFloat-DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat, 15, 2);
                          xInteres := DM1.FRound(DM1.cdsQry.FieldByName('CREINTERES').AsFloat-DM1.cdsQry.FieldByName('CREMTOINT').AsFloat, 15, 2);
                          xFlat    := DM1.FRound(DM1.cdsQry.FieldByName('CREFLAT').AsFloat-DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat, 15, 2);
                          bFlagUlt := DM1.cdsQry.Eof;

                          //Calculo  de Interes
                          If xSaldoTemp > xInteres Then
                           xInteres := DM1.FRound(DM1.cdsQry.FieldByName('CREINTERES').AsFloat-DM1.cdsQry.FieldByName('CREMTOINT').AsFloat, 15, 2)
                          Else
                           xInteres := xSaldoTemp;
                          xSaldoTemp := xSaldoTemp-xInteres;

                          //Calculo de Flat
                          If xSaldoTemp > xFlat Then
                           xFlat := DM1.FRound(DM1.cdsQry.FieldByName('CREFLAT').AsFloat-DM1.cdsQry.FieldByName('CREMTOFLAT').AsFloat, 15, 2)
                          Else
                             xFlat := xSaldoTemp;
                          xSaldoTemp := xSaldoTemp-xFlat;

                          //Calculo  de Capital
                          If xSaldoTemp>xCapital Then
                             xCapital := DM1.FRound(DM1.cdsQry.FieldByName('CREAMORT').AsFloat-DM1.cdsQry.FieldByName('CRECAPITAL').AsFloat, 15, 2)
                          Else
                             xCapital := xSaldoTemp;
                             xSaldoTemp := xSaldoTemp-xCapital;
                       end;

                    If DM1.cdsQry.RecNo = DM1.cdsQry.RecordCount Then
                     xExceso := xSaldoTemp
                    Else
                     xExceso := 0;

                    xTotPag := xCapital+xInteres+xFlat;

                    xCobrNeg := xCobrNeg+(xTotPag+xExceso);
                    xMPag    := FloatToStrF(xTotPag, ffNumber, 10, 2);

                    xNCou := DM1.cdsQry.FieldByName('CRECUOTA').AsString;;
                    xName := DM1.cdsQry.FieldByName('CREDID').AsString;
                    xTCre := DM1.cdsQry.FieldByName('TIPCREID').AsString;

                  // Inserto CRE310 - Recibo, Voucher, Cancelación de pago, etc. (El ingreso del monto pagado)
                    xSQL := 'INSERT INTO CRE310 ('+
                            'ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, TIPCREID, CREDID, CRECUOTA, CREMONLOC, CREMONEXT, CREMTODEV, '+
                            'FORPAGOID, FORPAGOABR, FOPERAC, AREAID, TRANSINTID, CREESTID, CREESTADO, '+
                            'CREFPAG, CREMTOCUO, CREAMORT, CREINTERES, CREFLAT, CREMTOCOB, TMONID, TCAMBIO, USUARIO, FREG, HREG, CIAID, ASOID, '+
                            'UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, ASOAPENOM, CIUDID, CREANO, CREMES, '+
                            'RCOBID, DETRCOBID, USERCOBID, NROOPE, CREDOCPAG, '+
                            'FORPAGABR, FORPAGID, CREOBS, CREESTANT, CREESTANTDES, ASOSITID, CNTANOMM) '+
                            'SELECT ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, '+
                            QuotedStr(xTCre)+', '+
                            QuotedStr(xName)+', '+
                            DM1.cdsQry.FieldByName('CRECUOTA').AsString+', '+
                            ''+FloatToStr(xTotPag+xExceso)+''+', '+
                            '0, 0, '+
                            QuotedStr(DM1.cdsQry.FieldByName('FORPAGOID').AsString)+', '+
                            QuotedStr(xForPagAb)+', '+
                            QuotedStr(FormatDateTime(wFormatFecha,dbdtpFecOperacion.Date))+', '+
                            QuotedStr(DM1.wModulo)+', ''CUO'', '+
                            QuotedStr(xEstId)+', '+
                            QuotedStr(xEstDe)+', '+
                            QuotedStr(FormatDateTime(wFormatFecha,dbdtpFecOperacion.Date))+', '+
                            DM1.cdsQry.FieldByName('CREMTO').AsString+', '+
                            DM1.cdsQry.FieldByName('CREAMORT').AsString+', '+
                            DM1.cdsQry.FieldByName('CREINTERES').AsString+', '+
                            DM1.cdsQry.FieldByName('CREFLAT').AsString+', '+
                            ''+FloatToStr(xTotPag+xExceso)+''+', '+
                            QuotedStr(DM1.wTMonLoc)+', '+
                            ''+FloatToStr(StrtoFloat(xTCamb))+''+', '+
                            QuotedStr(DM1.wUsuario)+', '+
                            'TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
                            QuotedStr(wCiaDef)+', ASOID, ';

                    xSQL1 := QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+', DPTOID, '+
                             QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+', '+
                             QuotedStr(dblcBanco.Text)+', '+
                             QuotedStr(Trim(DM1.cdsCobxUse.FieldByName('CCBCO').AsString))+', '+
                             QuotedStr(Trim(DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString))+', '+
                             'CIUDID, '+
                             QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)+', '+
                             QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', '+
                             QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+', '+
                             QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+', '+
                             QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)+', '+
                             QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
                             QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
                             QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)+', '+ // Abr Estuvo Asi, Dijeron que no se cambiara, despues se va a cambiar, como siempre !!!!
                             QuotedStr(xForPagoId)+','+QuotedStr('.')+','+
                             QuotedStr(xEstAnt)+','+
                             QuotedStr(xEstAntdes)+','+
                             QuotedStr(xAsositid)+','+
                             QuotedStr(dbePerCont.Text)+
                             ' FROM APO201 A '+
                             ' WHERE A.ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString);
                    DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL1);

                    // Actualizo CRE301 - Cabecera de Prestamo
                    xSQL := 'UPDATE CRE301 SET '+
                            'CREMTOPAG = NVL(CREMTOPAG,0)+'+''+FloatToStr(xTotPag)+''+', '+
                            'CRESDOACT = NVL(CRESDOACT,0)-'+''+FloatToStr(xTotPag)+''+', '+
                            'CRECUOPAG = NVL(CRECUOPAG,0)+1, '+
                            'CREESTADO = CASE WHEN CREMTOPAG-CRESDOACT = 0 THEN ''CANCELADO'' ELSE ''POR COBRAR'' END '+
                            'WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)
                           +' AND CREDID ='+QuotedStr(xName);
                    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                    // Actualizo CRE302 - Cronograma de Pago
                    xSQL := 'UPDATE CRE302 SET '+
                            'CREESTID =' +QuotedStr(xEstId)+', '+
                            'CREESTADO ='+QuotedStr(xEstDe)+', '+
                            'TCAMBIO ='  +''+FloatToStr(StrToFloat(xTCamb))+''+', '+
                            'CREMTOCOB  = NVL(CREMTOCOB,0) +'+''+FloatToStr(xTotPag) +''+', '+
                            'CRECAPITAL = NVL(CRECAPITAL,0)+'+''+FloatToStr(xCapital)+''+', '+
                            'CREMTOINT  = NVL(CREMTOINT,0) +'+''+FloatToStr(xInteres)+''+', '+
                            'CREMTOFLAT = NVL(CREMTOFLAT,0)+'+''+FloatToStr(xFlat)   +''+', '+
                            'CREMTOEXC  = NVL(CREMTOEXC,0) +'+''+FloatToStr(xExceso) +''+', '+
                            'FLAGVAR = NULL, '+
                            'NROOPE ='+QuotedStr(dbeNumOperacion.Text)+', '+
                            'CREDOCPAG ='+QuotedStr(dbeNumOperacion.Text)+', '+
                            'FOPERAC ='+QuotedStr(DatetoStr(dbdtpFecOperacion.Date))+', '+
                            'USUARIO ='+QuotedStr(DM1.wUsuario)+', '+
                            'CREFPAG ='+QuotedStr(DatetoStr(dbdtpFecOperacion.Date))+', '+
                            'FREG ='+QuotedStr(xFec_Sis)+', '+
                            'HREG = SYSDATE, ';
                         If xEstid1 = '27' Then
                          xSQL := xSQL + 'FLGINT ='+QuotedStr('S')
                         Else
                         xSQL := xSQL + 'FLGINT ='+QuotedStr('N');
                         xSQL := xSQL +' WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)
                        +' AND CREANO ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)
                        +' AND CREMES ='+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)
                        +' AND CREDID ='+QuotedStr(xName);
                    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

                    // Actualizo CRE303 - Cabecera de Prestamo
                    xSQL := 'UPDATE CRE303 SET '+
                            'CREMTOPAG = NVL(CREMTOPAG,0)+'+''+FloatToStr(xTotPag)+''+', '+
                            'CRESDOACT = NVL(CRESDOACT,0)-'+''+FloatToStr(xTotPag)+''+', '+
                            'CRECUOPAG = NVL(CRECUOPAG,0)+1, '+
                            'CREESTADO = CASE WHEN CREMTOPAG-CRESDOACT = 0 THEN ''CANCELADO'' ELSE ''POR COBRAR'' END '+
                            'WHERE ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
                            'AND CREDID ='+QuotedStr(xName);
                    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                    xSaldoCob := DM1.FRound(xSaldoCob-xCobrNeg, 15, 2);
                    xCobrNeg  := 0;
                    DM1.cdsQry.Next;

                 end;	 			// De si el monto es cero y tiene pagos pendientes por cobrar
            end//If saldo
            Else
               DM1.cdsQry.Next;
          end;			// Del While de todas sus cuotas pendientes de ese periodo
          //  Actualiza el COB304 los Registros Transferidos
          DM1.cdsAutDisk.Edit;
          DM1.cdsAutDisk.FieldByName('FTRANSFC').AsString := 'T';
//          cdsPost(DM1.cdsAutDisk);
//          DM1.cdsAutDisk.Post;
          DM1.AplicaDatos(DM1.cdsAutDisk,'AUTDISK');//DM1.ControlTran;
      	end			// De que hay mas de un registro (Suponiendo de que ese registro es el que voy a matar)
        Else
         begin
         // iNGRESAR EL SIN SUSTENTO
         // Para identificar esta forma de cob. sin sustento lo hacemos con el FLGFPAG=''PL''
            xSQL := 'INSERT INTO COB340 ('+
                    '  ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, TRANSANO,  TRANSMES,  TMONID,  IMPORTE,   '+
                    '  ASOAPENOM,FL_COBSS,  CREFPAG,  NROOPE,  FOPERAC, CREMTODEV,  CREDOCPAG,  FORPAGABR, '+
                    '  FORPAGID, USUARIO,   FREG,  HREG, CIAID, ASOID,  UPROID,  UPAGOID,  BANCOID,     '+
                    '  CCBCOID,  RCOBID, DETRCOBID,  USERCOBID, AREAID, TRANSINTID, FLGFPAG, TRANOBS, ARCHIVO )   '+
                    'SELECT ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, '+
                    QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)+', '+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)
                    +', '+QuotedStr(DM1.wTMonLoc)+', '+DM1.cdsAutDisk.FieldByName('TRANSCUO').AsString
                    +', '+QuotedStr(Trim(DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString))+', ''S'','+
                    QuotedStr(FormatDateTime(wFormatFecha, dbdtpFecOperacion.Date))+', '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)
                    +', '+QuotedStr(FormatDateTime(wFormatFecha,dbdtpFecOperacion.Date))+',0,  '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+

                    QuotedStr(xForPagAbTel)+', '+
                    QuotedStr(xForPagIdTel)+', '+ // Abr Estuvo Asi, Dijeron que no se cambiara, despues se va a cambiar, como siempre !!!!
                    QuotedStr(DM1.wUsuario)+', '+
                    'TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
                    QuotedStr(wCiaDef)+', ASOID, '+
                    QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+',  '+
                    QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+', '+
                    QuotedStr(dblcBanco.Text)+', '+
                    QuotedStr(Trim(DM1.cdsCobxUse.FieldByName('CCBCO').AsString))+', '+
                    QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+', '+
                    QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+', '+
                    QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)+', '+
                    QuotedStr(DM1.wModulo)+', ''CUO'', '+
                    QuotedStr('PL')+',''.'','+QuotedStr(xArchivo)+
                    ' FROM APO201 A '+
                    ' WHERE A.ASOID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString);
              try
                DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                xSumat := xSumat+1;
            except
            end;
          DM1.cdsAutDisk.Edit;
          DM1.cdsAutDisk.FieldByName('FTRANSFC').AsString := 'F'; // P = pendiente
          cdsPost(DM1.cdsAutDisk);
          DM1.cdsAutDisk.Post;
          DM1.AplicaDatos(DM1.cdsAutDisk,'AUTDISK');//DM1.ControlTran;
          //CIM FIN CIM
         end;
       end;			// De que el monto a pagar es mayor a cero
      DM1.cdsAutDisk.Next;
     end;		 // Del While
    DM1.cdsAutDisk.EnableControls;
   end;

   //** para los que actualizo
   DM1.cdsAutDisk.First;
   While not DM1.cdsAutDisk.Eof do
    begin
     If DM1.cdsAutDisk.FieldByName('FTRANSFC').AsString = 'T' Then
      begin
       DM1.cdsAutDisk.Edit;
       DM1.cdsAutDisk.FieldByName('FTRANSFC').AsString := 'S';
       cdsPost(DM1.cdsAutDisk);
       DM1.cdsAutDisk.Post;
      end
     Else
      DM1.cdsAutDisk.Next;
    end;
   DM1.AplicaDatos(DM1.cdsAutDisk,'AUTDISK');// ControlTran ;

   DM1.cdsAutdisk.Filtered := False;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter   := '';
   DM1.cdsAutdisk.Filtered := True;
   ActuaCampos;
   ActualizaFooter;
   If xSumat > 0 Then
    Information(Caption, 'Existen '+IntToStr(xSumat)+' Asociados que no Tienen Cuotas Pendientes por Cobrar,'+
                         'La Información ha sido Transferida a la Tabla de "Cobranzas sin Sustento"')
   Else
    ShowMessage('Transferencia de Cuotas Finalizada');

  //ActualizaFooter;
   Screen.Cursor := crDefault;
Except
   DM1.cdsAutDisk.EnableControls;
   DM1.cdsAutdisk.Filtered := False;
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter   := '';
   DM1.cdsAutdisk.Filtered := True;
   dbgAportes.RefreshDisplay;
   Screen.Cursor := crDefault;
   ErrorMsg(Caption, 'Hubo un Error al Transferir las Cuotas de Créditos')
end;

end;

procedure TFIngresoLote.dblcUProcesoExit(Sender: TObject);
begin
   xWhere := 'UPROID ='+QuotedStr(dblcUProceso.Text);
   edtUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
end;

procedure TFIngresoLote.dblcdUPagoExit(Sender: TObject);
begin
   sWhere := 'UPAGOID ='+QuotedStr(dblcdUPago.Text);
   edtUPago.Text := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', sWhere, 'UPAGONOM');
end;

procedure TFIngresoLote.BitBtn1Click(Sender: TObject);
begin
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSCUO';
   DM1.cdsAutdisk.Filter   := 'TRANSCUO>0';
   DM1.cdsAutdisk.Filtered := True;
   dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','TRANSCUO>0'),ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','TRANSCUO>0'),ffNumber, 15, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','TRANSCUO>0'),ffNumber, 15, 2);
   dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)', 'TRANSCUO > 0'), ffNumber, 15, 0)+' Registros';
end;

procedure TFIngresoLote.dblcdAgenBcoExit(Sender: TObject);
begin
   sWhere := 'FPAGOID='+DM1.cdsCobxUse.FieldByName('FPAGOID').AsString;
   DM1.DisplayDescrip('prvSQL','TGE112','FPAGOBCO',sWhere,'FPAGOBCO');
   If DM1.cdsQry.FieldByName('FPAGOBCO').AsString <> 'S' Then
      Exit;

   sWhere := 'BANCOID = '+ QuotedStr(dblcBanco.Text)+' AND AGENBCOID = '+ QuotedStr(dblcdAgenBco.Text) ;
   edtAgencia.Text := DM1.DisplayDescrip('prvSQL', 'COB102', 'AGENBCODES', sWhere, 'AGENBCODES');

   If z2bbtnCancel.Focused Then Exit;

   {If dblcdAgenBco.Text='' Then
   begin
      ShowMessage('Ingresa el Código de la Agencia');
      dblcdAgenBco.SetFocus;
      Exit;
   end;}
end;

procedure TFIngresoLote.ppRepIncPreviewFormCreate(Sender: TObject);
begin
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
{  ppRepInc.PreviewForm.ClientHeight := 500;
	ppRepInc.PreviewForm.ClientWidth  := 650;
	TppViewer(ppRepInc.PreviewForm.Viewer).ZoomSetting := zsPagewidth;}
end;

procedure TFIngresoLote.fcShapeBtn2Click(Sender: TObject);
begin
   dbgAsoFalt.DataSource := Nil;
   pnlAsoFalt.Visible    := False;
   //bbtnAceptar.Click;
end;

procedure TFIngresoLote.sbtnAceptarClick(Sender: TObject);
begin
   If Length(Trim(edtAsociado.Text)) = 0 Then
    begin
     ErrorMsg(Caption, 'Apellidos y Nombres no Válidos');
     Exit;
    end;
   Screen.Cursor := crHourGlass;
   sWhere := 'ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));

   dbgAsoFalt.Selected.Clear;
   dbgAsoFalt.Selected.Add('ASOID'#9'10'#9'Codigo');
   dbgAsoFalt.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular');
   dbgAsoFalt.Selected.Add('ASOCODAUX'#9'3'#9'Código~Auxiliar');
   dbgAsoFalt.Selected.Add('ASOCODPAGO'#9'10'#9'Código~Pago');
   dbgAsoFalt.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos~Nombres');
   dbgAsoFalt.Selected.Add('UPROID'#9'5'#9'U. Proceso');
   dbgAsoFalt.Selected.Add('UPAGOID'#9'5'#9'U. Pago');
   dbgAsoFalt.Selected.Add('USEID'#9'5'#9'U.S.E.');

  //DM1.DisplayDescrip('prvTGE','APO201','ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID',sWhere,'ASOCODMOD');

   xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID FROM APO201 WHERE '+sWhere;
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

  //If DM1.cdsQry2.RecordCount > 0 Then
  //begin
  //Screen.Cursor:=crDefault;
   dbgAsoFalt.DataSource := DM1.dsQry2;
   //end;
   dbgAsoFalt.SetFocus;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.dbgAsoFaltDblClick(Sender: TObject);
begin
   sWhere := 'UPROID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
            +' AND UPAGOID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

   dbeAsoid.Text   := DM1.cdsQry2.FieldByName('ASOID').AsString;
   dbeCodMod.Text  := DM1.cdsQry2.FieldByName('ASOCODMOD').AsString;
   dbeCodAux.Text  := DM1.cdsQry2.FieldByName('ASOCODAUX').AsString;
   dbeCodPago.Text := DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString;
   dbeApeyNom.Text := DM1.cdsQry2.FieldByName('ASOAPENOM').AsString;
   dbeUProc.Text   := edtUProceso.Text;
   dbeUPago.Text   := edtUPago.Text;
   xModoSta        := 'M';
   bbtnAcepNAso.Enabled := True;
   pnlNAsoc.Visible     := True;
   dbeCodMod.SetFocus;
end;

procedure TFIngresoLote.dbgAsoFaltIButtonClick(Sender: TObject);
begin
   sWhere := 'UPROID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
            +' AND UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

   dbeAsoid.Text   := DM1.StrZero(DM1.MaxSQL('APO201','ASOID',''),10);;
   dbeCodMod.Text  := '';
   dbeCodAux.Text  := '0';//DM1.StrZero(DM1.BuscaCodMod('APO201',dbeCodMod.Text),2);
   dbeCodPago.Text := '';
   dbeApeyNom.Text := '';
   dbeUProc.Text   := edtUProceso.Text;
   dbeUPago.Text   := edtUPago.Text;
   xModoSta        := 'A';
   bbtnAcepNAso.Enabled := True;
   pnlNAsoc.Visible     := True;
   dbeCodMod.SetFocus;
end;

procedure TFIngresoLote.fcShapeBtn3Click(Sender: TObject);
begin
  //fcShapeBtn2.Click;
   pnlNAsoc.Visible   := False;
   pnlAsoFalt.Visible := False;
end;

procedure TFIngresoLote.dblcdUseAsoExit(Sender: TObject);
begin
   sWhere := 'UPROID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
            +' AND UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
            +' AND USEID   ='+ QuotedStr(dblcdUseAso.Text);
   dbeUSE.Text := DM1.DisplayDescrip('prvTGE', 'APO101', 'USENOM', sWhere, 'USENOM');
end;

procedure TFIngresoLote.bbtnAcepNAsoClick(Sender: TObject);
var
   Code : Integer;
   I    : Double;
begin
  //DM1.cdsAutdisk.Insert;
   Screen.Cursor := crHourGlass;  

   If Length(dblcdUseAso.Text) = 0 Then
    begin
     ShowMessage('Debe Seleccionar la USE');
     //pnlUse.Enabled:=True;
     //dblcdUse.Enabled:=True;
     dblcdUseAso.SetFocus;
     Screen.Cursor := crDefault;
     Exit;
    end;

   DM1.cdsAutdisk.FieldByName('TRANSAPO').AsFloat   := DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat;
   DM1.cdsAutdisk.FieldByName('ASOID').AsString     := dbeAsoid.Text;
   DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString := DM1.StrZero(dbeCodMod.Text, 10);
   DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString := dbeApeyNom.Text;

   xSQL := 'SELECT * FROM APO101'
          +' WHERE UPROID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
          +' AND UPAGOID ='+ QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
          +' AND USEID='+ QuotedStr(dblcdUseAso.Text);

   DM1.Filtracds(DM1.cdsQry,xSQL);
   DM1.cdsAutdisk.FieldByName('USEID').AsString      := DM1.cdsQry.FieldbyName('USEID').AsString;
   DM1.cdsAutdisk.FieldByName('UPROID').AsString     := DM1.cdsQry.FieldbyName('UPROID').AsString;
   DM1.cdsAutdisk.FieldByName('UPAGOID').AsString    := DM1.cdsQry.FieldbyName('UPAGOID').AsString;
   DM1.cdsAutdisk.FieldByName('DPTOID').AsString     := DM1.cdsQry.FieldbyName('DPTOID').AsString;
   DM1.cdsAutdisk.FieldByName('TRANSANO').AsString   := speAno.Text;
   DM1.cdsAutdisk.FieldByName('TRANSMES').AsString   := DM1.StrZero(speMes.Text,2);

   If (Trim(dblcFormaPago.Text) = 'PLA') or
      (Trim(dblcFormaPago.Text) = 'REG') Then
    DM1.cdsAutdisk.FieldByName('APOSEC').AsString   := speAno.Text+DM1.StrZero(speMes.Text,2)
   Else
    DM1.cdsAutdisk.FieldByName('APOSEC').AsString   := Copy(dbdtpFecOperacion.Text,7,4)+Copy(dbdtpFecOperacion.Text,4,2);

   DM1.cdsAutdisk.FieldByName('TMONID').AsString     := dblcMoneda.Text;
   DM1.cdsAutdisk.FieldByName('BANCOID').AsString    := dblcBanco.Text;
   DM1.cdsAutdisk.FieldByName('CCBCOID').AsString    := dblcCtaCte.Text;
   DM1.cdsAutdisk.FieldByName('TRANSNOPE').AsString  := dbeNumOperacion.Text;
   DM1.cdsAutdisk.FieldByName('TRANSFOPE').AsDateTime:= dbdtpFecOperacion.Date;
   DM1.cdsAutdisk.FieldByName('FORPAGOID').AsString  := dblcFormaPago.Text;

   DM1.cdsAutdisk.FieldByName('RCOBID').AsString     := DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
   DM1.cdsAutdisk.FieldByName('DETRCOBID').AsString  := DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
   DM1.cdsAutdisk.FieldByName('USERCOBID').AsString  := DM1.cdsCobxUse.FieldByName('USERCOBID').AsString;

   dbeAporte.Text := Trim(dbeAporte.Text);
   Val(dbeAporte.Text, I, Code);
   If Code = 0 Then
    DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat  := StrToFloat(dbeAporte.Text)
   Else
    DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat  := 0;

   dbeCuota.Text := Trim(dbeCuota.Text);
   Val(dbeCuota.Text, I, Code);
   If Code = 0 Then
    DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat  := StrToFloat(dbeCuota.Text)
   Else
    DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat  := 0;

   dbeTotal.Text := Trim(dbeTotal.Text);
   Val(dbeTotal.Text,I,Code);
   If Code = 0 Then
    DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat  := StrToFloat(dbeTotal.Text)
   Else
    DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat  := 0;

   DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
   DM1.cdsAutdisk.FieldByName('USUARIO').AsString   := DM1.wUsuario;
   DM1.cdsAutdisk.FieldByName('FREG').AsDateTime    := Date;
   DM1.cdsAutdisk.FieldByName('HREG').AsDateTime    := Date+Time;

  //cdsPost(DM1.cdsAutdisk);
  //DM1.cdsAutdisk.Post;
  //DM1.ControlTran;
   bbtnAcepNAso.Enabled  := False;
   pnlNAsoc.Visible      := False;
   dbgAsoFalt.DataSource := Nil;
   pnlAsoFalt.Visible    := False;
   dbeAporte.SetFocus;
   Screen.Cursor := crDefault;

  //fcShapeBtn3.Click;
end;

procedure TFIngresoLote.GenAsociado;
var
	 xCodInt, xAuxInt : Integer;
   xCodStr, xAuxStr, xSQL	: String;
begin
   Screen.Cursor := crHourGlass;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest('SELECT MAX(ASOID)+1 CODIGO FROM APO201');
   DM1.cdsReporte.Open;

   xCodInt := DM1.cdsReporte.FieldByName('CODIGO').AsInteger;
   xCodStr := DM1.StrZero(IntToStr(xCodInt), xLogAsoid);
   dbeAsoid.Text := xCodStr;
{
   xSQL := 'SELECT MAX(TO_NUMBER(NVL(ASOCODAUX,0))) ASOCODAUX FROM APO201 WHERE ASOCODMOD ='+QuotedStr(dbeCodMod.Text);
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
       william manrique cautin
   xAuxInt := DM1.cdsReporte.FieldByName('ASOCODAUX').AsInteger + 1;
}
   // Generación del ASOCODAUX - Codigo Auxiliar
   xAuxStr:=DM1.BuscaCodMod('APO201',dbeCodMod.Text);
   dbeCodAux.Text := xAuxStr;

   xSQL := 'INSERT INTO APO201 ('+
           'CIAID, ASOID, ASOCODAUX, '+
           'ASOCODMOD, ASOCODPAGO, ASOAPENOM, USEID, UPROID, UPAGOID, USUARIO, FREG, HREG, ASOTIPID, ASOSITID ) '+
           'VALUES ('+
        QuotedStr(wCiaDef)+', '+
        QuotedStr(xCodStr)+', '+
        QuotedStr(xAuxStr)+', '+
        QuotedStr(dbeCodMod.Text)+', '+
        QuotedStr(dbeCodPago.Text)+', '+
        QuotedStr(dbeApeyNom.Text)+', '+
        QuotedStr(dblcdUseAso.Text)+', '+
        QuotedStr(dblcUProceso.Text)+', '+
        QuotedStr(dblcdUPago.Text)+', '+
        QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, ''NI'', ''AC'')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.spdAsoDuplClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FNASODUP; FTRANSF';
   DM1.cdsAutdisk.Filter   := ' FNASODUP =''S'' AND FTRANSF =''I''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I';  // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FNASODUP =''S'' AND FTRANSF =''I'''),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FNASODUP =''S'' AND FTRANSF =''I'''),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FNASODUP =''S'' AND FTRANSF =''I'''),ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FNASODUP =''S'' AND FTRANSF =''I'''), ffNumber, 15, 0)+' Registros';
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter   := '';
     DM1.cdsAutdisk.Filtered := True;
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se encontraron Inconsistencias ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Código de Derrama Duplicado : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.SpeedButton3Click(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsBrowse Then
      DM1.cdsCobxUse.Post;
    end;

//Modificado por Error de Grabación    
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE A.RCOBID =' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk,xSQL );

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');       
      end;
    end;

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FNASODUP =''S'' AND FTRANSF =''I''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
     Screen.Cursor := crDefault;
     Exit;
    end;
   Screen.Cursor := crDefault;    
end;

procedure TFIngresoLote.spdCodPagTClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsBrowse Then
      DM1.cdsCobxUse.Post;
    end;

//Modificado por Error en Grabación
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE A.RCOBID =' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL );

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      end;
    end;

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FCCODPAGO ='+QuotedStr('S');
   If (Sender as TControl).Name = 'spdCodPagT' Then
    wSQL := wSQL+'AND FTRANSF=''I'''
   Else
    If (Sender as TControl).Name = 'spdCodPagM' Then
     wSQL := wSQL+'AND FREGCOB=''S'' AND FTRANSF=''I''';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
     Screen.Cursor := crDefault;
     Exit;
    end;

   If Question(Caption, 'Actualizará Todos los Códigos de Pago Nuevos '+#13+#13+'¿Desea Continuar? ') Then
    begin
     Screen.Cursor := crHourGlass;
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF Do
      begin
       wSQL := 'UPDATE APO201 SET '+
               'ASOCODPAGO ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+' '+
               'WHERE ASOID ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

      {wSQL:='UPDATE APO202 SET FVIGENTE=NULL '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

      wSQL:='INSERT INTO APO202 ('+
            'ASOID, '+
            'ASOCODMOD, '+
            'ASOCODPAGO, '+
            'USEID, '+
            'UPROID, '+
            'UPAGOID, FREG, HREG, '+
            'FVIGENTE '+
            ') VALUES ('+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
            'SYSDATE, SYSDATE, '+
            QuotedStr('S')+
      ')';
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);}

       wSQL := 'UPDATE COB304 SET '+
               'FCCODPAGO = NULL, '+
               'FREGCOB   = NULL, '+
               'FTRANSF   = NULL, '+
               'USUARIO   ='+QuotedStr(DM1.wUsuario)+', '+
               'FREG      ='+QuotedStr(DateTimeToStr(Date))+', '+
               'HREG      ='+QuotedStr(DateTimeToStr(Date))+' '+
               'WHERE ASOID ='+DM1.cdsQry2.FieldByName('ASOID').AsString
              +' AND RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
              +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
              +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
       DM1.cdsQry2.Next;
      end;
     DM1.cdsAutdisk.Refresh;
     dbgAportes.Update;
     If (Sender as TControl).Name = 'spdCodPagT' Then
      ActuaCampos
     Else
      If (Sender as TControl).Name = 'spdCodPagM' Then
       ActuaCamposMarc;
     Screen.Cursor := crDefault;
     ShowMessage('Actualización Finalizada');
    end;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.ActuaCampos;
begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE A.RCOBID  =' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   DM1.wTDatos := 'T';
   DM1.cdsAutdisk.IndexFieldNames := '';
   DM1.cdsAutdisk.Filter   := '';
   DM1.cdsAutdisk.Filtered := True;

   ActualizaFooter;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.ActuaCamposMarc;
begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL);

   //ActualizaFooter;
   Screen.Cursor := crDefault;
end;

procedure TFIngresoLote.spdAsoCuotasClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor      := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   DM1.cdsAutdisk.Filter          := 'TRANSCUO>0';
   DM1.cdsAutdisk.Filtered        := True;
   If DM1.cdsAutdisk.RecordCount > 0 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','TRANSCUO>0'),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','TRANSCUO>0'),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','TRANSCUO>0'),ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','TRANSCUO>0'),ffNumber, 15,0)+' Registros';
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color:=$00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter   := '';
     DM1.cdsAutdisk.Filtered := True;
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se Encontró Información a Mostrar ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Con Cuotas : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdCtastransClick(Sender: TObject);
var                                                                         
   xWhere : String;
begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)
          +' And (TRANSCUO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''')'
          +' AND (FTRANSFC Not In (''S'', ''F'') OR FTRANSFC IS NULL OR FTRANSFC='''')';

   DM1.cdsAutdisk.Filter   := '';
   DM1.cdsAutdisk.Filtered := False;
 //  DM1.cdsAutDisk.IndexFieldNames := '';
   DM1.cdsAutDisk.Close;
   DM1.cdsAutDisk.DataRequest(xSQL);
   DM1.cdsAutDisk.Open;
//   DM1.cdsAutdisk.Filter:='(TRANSCUO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' '+
//                                        'AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')';

{  xWhere := 'RCOBID='+qUOTEDSTR(DM1.cdsAutdisk.FieldByName('RCOBID').AsString)+
            ' AND ((TRANSCUO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' '+
                                        'AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''') )';

  DM1.DisplayDescrip('prvSQL','COB304','*',xWhere,'RCOBID');}
//   DM1.cdsAutdisk.Filtered:=True;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   If DM1.cdsAutdisk.RecordCount > 0 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','TRANSCUO>0 AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')'),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','TRANSCUO>0 AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')'),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','TRANSCUO>0 AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')'),ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','TRANSCUO>0 AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' AND (FTRANSFC<>''S'' OR FTRANSFC IS NULL OR FTRANSFC='''')'),ffNumber, 15,0)+' Registros';
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter   := '';
     DM1.cdsAutdisk.Filtered := True;
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No Existe Información a Transferir');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros con Cuotas por Transferir : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdCtasxTransfClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor      := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   DM1.cdsAutdisk.Filter := '(TRANSCUO > 0) '+//AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' '+
                                        'AND (FTRANSFC=''S'')';
   DM1.cdsAutdisk.Filtered := True;
   If DM1.cdsAutdisk.RecordCount > 0 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','(TRANSCUO > 0) AND (FTRANSFC=''S'')'),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','(TRANSCUO > 0) AND (FTRANSFC=''S'')'),ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','(TRANSCUO > 0) AND (FTRANSFC=''S'')'),ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','(TRANSCUO > 0) AND (FTRANSFC=''S'')'), ffNumber, 15, 0)+' Registros';
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter   := '';
     DM1.cdsAutdisk.Filtered := True;
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se Encontraron Información a Mostrar ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Con Cuotas Transferidas a la Tabla de Créditos: '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdApDupClick(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FAPORPROV;FTRANSF';
   DM1.cdsAutdisk.Filter   := ' FAPORPROV=''S'' AND FTRANSF=''I''';
   DM1.cdsAutdisk.Filtered := True;
   DM1.wTDatos := 'I';  // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount>=1 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FAPORPROV=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FAPORPROV=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FAPORPROV=''S'' AND FTRANSF=''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FAPORPROV =''S'' AND FTRANSF =''I'''), ffNumber, 15,0)+' Registros';
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter   := '';
     DM1.cdsAutdisk.Filtered := True;
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se encontraron Inconsistencias ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por Aportes Provisionales : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdAporteProvClick(Sender: TObject);
begin
  //Falta hacer esta opcion
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsBrowse Then
      DM1.cdsCobxUse.Post;
    end;

//Modificado por Error en Grabación  
{  If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    If DM1.cdsAutDisk.State <> dsBrowse Then
    DM1.cdsAutDisk.Post;
  end;
  DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * FROM COB304 A'
          +' WHERE A.RCOBID  =' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL );

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');       
      end;
    end;

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FAPORPROV =''S'' '
          +' AND FTRANSF=''I'' ';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
     Screen.Cursor := crDefault;
     Exit;
    end;

   If Question(Caption, ' Actualizará Todos los Aportes Provisionales '+#13+#13+'¿Desea Continuar? ') Then
    begin
     Screen.Cursor := crHourGlass;
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF Do
      begin
       xSQL := 'SELECT ASOID, TRANSANO, TRANSMES, PVSLBENNR, FLGNIV, APOSECID, APO301ID FROM APO301'
              +' WHERE ASOID   ='+Quotedstr(DM1.cdsQry2.FieldByName('ASOID').AsString )
              +' AND TRANSANO  ='+Quotedstr(DM1.cdsQry2.FieldByName('TRANSANO').AsString )
              +' AND TRANSMES  ='+Quotedstr(DM1.cdsQry2.FieldByName('TRANSMES').AsString )
              +' AND FORPAGOID =''25'' ';

       DM1.cdsQry3.IndexFieldNames := '';
       DM1.cdsQry3.DataRequest(xSQL);
       DM1.cdsQry3.Open;
       DM1.cdsQry3.First;
       If DM1.cdsQry3.RecordCount >= 1 Then
        begin
         wSQL := 'UPDATE COB304 SET '+
                'FAPORPROV  = NULL'+
                ',FDAPORTE  = NULL'+
                ',FTRANSF   = NULL '+
                ',PVSLBENNR ='+Quotedstr(DM1.cdsQry3.FieldByName('PVSLBENNR').AsString)+
                ',FLGNIV    ='+Quotedstr(DM1.cdsQry3.FieldByName('FLGNIV').AsString)+
                ',APOSECID  ='+''+Inttostr(DM1.cdsQry3.FieldByName('APOSECID').AsInteger)+''+
                ',APO301ID  ='+Quotedstr(DM1.cdsQry3.FieldByName('APO301ID').AsString)+
                ',USUARIO   ='+QuotedStr(DM1.wUsuario)+', '+
                'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
                'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
                'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
                'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

          wSQL := 'DELETE FROM APO301 '+
                  ' WHERE ASOID ='+Quotedstr(DM1.cdsQry2.FieldByName('ASOID').AsString )+
                  ' AND TRANSANO ='+Quotedstr(DM1.cdsQry2.FieldByName('TRANSANO').AsString )+
                  ' AND TRANSMES ='+Quotedstr(DM1.cdsQry2.FieldByName('TRANSMES').AsString )+
                  ' AND FORPAGOID =''25'' ';
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);


        end;
       DM1.cdsQry2.Next;
      end;
     DM1.cdsAutdisk.Refresh;
     dbgAportes.Update;
     ActuaCampos;
     ActuaCamposMarc;
     Screen.Cursor := crDefault;
     ShowMessage('Actualización Finalizada');
    end;
   Screen.Cursor := crDefault;    
end;

procedure TFIngresoLote.fcShapeBtn1Click(Sender: TObject);
begin
   pnlCoinsidencias.Visible := False;
end;

procedure TFIngresoLote.dbgCoinsidenciasDblClick(Sender: TObject);
var
   xSQL, xWhere : String;
begin
   pnlCoinsidencias.Visible := False;
   xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID FROM APO201'
              +' WHERE ASOAPENOM LIKE '+QuotedStr(DM1.cdsQry5.FieldByName('ASOAPENOM').AsString+'%')
              + ' AND ASOCODMOD ='+QuotedStr(dblcdCodigoModular.Text);
   DM1.cdsAsociados.Close;
   DM1.cdsAsociados.Datarequest(xSQL);
   DM1.cdsAsociados.Open;
   xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, UPROID, UPAGOID, USEID FROM APO201'
              +' WHERE ASOAPENOM LIKE '+QuotedStr(DM1.cdsqry5.FieldByName('ASOAPENOM').AsString+'%')
              + ' AND ASOCODMOD ='+QuotedStr(dblcdCodigoModular.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.Datarequest(xSQL);
   DM1.cdsQry.Open;
   DM1.cdsAutdisk.Edit;
   DM1.cdsAutDisk.FieldByName('ASOID').AsString      := DM1.cdsAsociados.FieldByName('ASOID').AsString;
   DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString  := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
   DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
   DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString  := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
   DM1.cdsAutDisk.FieldByName('USEID').AsString      := DM1.cdsAsociados.FieldByName('USEID').AsString;
   DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat    := 0;
   DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat    := 0;
   dbeCodigoPago.Text                                := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)
            +' And USEID ='+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString);
   dbeUseA.Text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   dbeAporte.SetFocus;
end;

procedure TFIngresoLote.bbtnActAportesDupClick(Sender: TObject);
var
   xAno, xMes, xDia, xAnoMes, xTrim, xSem, xSs, xAaTri, xAaSem, xAass : String;
   xForPagoId : String;
begin
   Beep;
   If MessageDlg('Desea Insertar los Aportes Duplicados hacia las Tablas de Aportes'+#13+#13+
                 ' ¿Está Seguro de Insertarlos? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    begin
     Screen.Cursor := crHourGlass;
     If DM1.cdsAutDisk.RecordCount > 0 Then
      begin
       pnlTransf.Visible := True;
       //Animate1.Active:=True;
       DM1.cdsAutDisk.DisableControls;

       sFecha := FormatDateTime(wFormatFecha, dbdtpFecOperacion.DateTime);
       sSQL := 'SELECT * FROM TGE114 WHERE FECHA ='+QuotedStr(sFecha);
       DM1.FiltraCDS(DM1.cdsPeriodo, sSQL);

       xAno    := DM1.cdsPeriodo.FieldByName('FECANO').AsString;
       xMes    := DM1.cdsPeriodo.FieldByName('FECMES').AsString;
       xDia    := DM1.cdsPeriodo.FieldByName('FECDIA').AsString;
       xAnoMes := xAno+xMes;
       xTrim   := DM1.cdsPeriodo.FieldByName('FECTRIM').AsString;
       xSem    := DM1.cdsPeriodo.FieldByName('FECSEM').AsString;
       xSs     := DM1.cdsPeriodo.FieldByName('FECSS').AsString;
       xAaTri  := DM1.cdsPeriodo.FieldByName('FECAATRI').AsString;
       xAaSem  := DM1.cdsPeriodo.FieldByName('FECAASEM').AsString;
       xAass   := DM1.cdsPeriodo.FieldByName('FECAASS').AsString;

       xForPagoId := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID', 'FORPAGOABR ='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString), 'FORPAGOID');

       sSQL := 'SELECT '+wRepFuncChar+wRepFecServi+', '+QuotedStr('DD/MM/YYYY')+') "FECHA" FROM DUAL';
       DM1.cdsReporte.Close;
       DM1.cdsReporte.DataRequest(sSQL);
       DM1.cdsReporte.Open;
       xFec_Sis := DM1.cdsReporte.FieldByName('FECHA').AsString;

       sFecha := FormatDateTime(wFormatFecha,StrToDate(xFec_Sis));

       //DM1.cdsAutDisk.First;
       //While Not DM1.cdsAutDisk.EOF Do
       //begin
       //  Ingreso de Aportes APO301
       xSQL := 'INSERT INTO APO301 ('+
               'ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID, '+
               'UPROABR, TMONID, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, '+
               'TRANSANO, TRANSMES, TRANSMTO, TRANSINTID, USUARIO, ASOCODMOD, ASOCODAUX, '+
               'FORPAGOID, ASOAPENOM, FORPAGOABR, DPTOID, DPTOABR, CIUDID, '+
               'FREG, HREG, TRANSAAMM, TRANSAATRI, TRANSTRIM, TRANSSEM, TRANSAASEM, '+
               'APOSEC, CIAID, RCOBID, DETRCOBID, USERCOBID, BANCOIDG, AGENCIDG, PVSLBENNR, FLGNIV, APOSECID, APO301ID) '+

               'SELECT Z.ASOID, ''APORTE'', '+
               'Z.USEID, B.USEABRE, Z.UPAGOID, C.UPAGOABR, Z.UPROID, D.UPROABR, '+
               '''N'', '+QuotedStr(DM1.cdsAutDisk.FieldByName('BANCOID').AsString)+', '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('CCBCOID').AsString)+', '+
               QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
               wRepFuncDate+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString)+'), '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)+', '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', TRANSAPO, '+
               QuotedStr('APO')+', '+
              //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', ''APO'', '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('USUARIO').AsString)+', '+
               'Z.ASOCODMOD, A.ASOCODAUX, '+QuotedStr(xForPagoId)+', '+
               'A.ASOAPENOM, E.FORPAGOABR, B.DPTOID, F.DPTOABR, B.CIUDID, '+
               wRepFuncDate+QuotedStr(sFecha)+'), SYSDATE, '+
               //wRepFuncDate+QuotedStr(sFecha)+'), '+wRepFuncDate+QuotedStr(sFecha)+'), '+
               //'A.ASOAPENOM, E.FORPAGOABR, A.DPTOID, F.DPTOABR, A.CIUDID, SYSDATE, SYSDATE, '+sFecha
               QuotedStr(xAnoMes)+', '+ QuotedStr(xAaTri)+', '+ QuotedStr(xTrim)+', '+
               QuotedStr(xSem)+', '+ QuotedStr(xAaSem)+', '+
               QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString+
               DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', '+QuotedStr(wCiaDef)+', RCOBID, DETRCOBID, USERCOBID, '+
               QuotedStr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString)+', '+
               QuotedStr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString)+', Z.PVSLBENNR, Z.FLGNIV, Z.APOSECID, Z.APO301ID ';

       xSQL1 := 'FROM COB304 Z, APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F '+
              {'WHERE Z.ASOID=A.ASOID '+      //'WHERE A.ASOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
              'AND A.USEID=B.USEID '+
              'AND B.USEID='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+' '+
              'AND A.UPAGOID=C.UPAGOID '+
              'AND C.UPAGOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+' '+
              'AND A.UPROID=D.UPROID '+
              'AND D.UPROID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+' '+
              'AND E.FORPAGOABR='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
              'AND F.DPTOID(+)=Z.DPTOID '+
              'AND Z.RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
              'AND Z.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
              'AND Z.USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
              'AND TRANSMTO > 0 '+
              'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') '+
              'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';}
              'WHERE Z.ASOID = A.ASOID '+
              'AND Z.UPROID  = B.UPROID '+
              'AND Z.UPAGOID = B.UPAGOID '+
              'AND Z.USEID   = B.USEID '+
              'AND B.UPROID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+' '+
              'AND B.UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)+' '+
              'AND C.UPROID  = B.UPROID '+
              'AND C.UPAGOID = B.UPAGOID '+
              'AND D.UPROID  = B.UPROID '+
              'AND F.DPTOID  = B.DPTOID '+
              'AND E.FORPAGOABR ='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
              'AND Z.RCOBID     ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
              'AND Z.DETRCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
              'AND Z.USERCOBID  ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
              'AND TRANSMTO > 0 '+
              'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''N'')=''N'') '+
              'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';

//       DM1.DCOM1.AppServer.EjecutaSQL(xSQL+xSQL1);

       xSQL := 'UPDATE COB304 SET FTRANSFAC =''S'' '+
               'WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
               'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
               'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
               'AND TRANSMTO > 0 '+
               'AND (FTRANSF<>''I'' OR NVL(FTRANSF,''X'')=''X'') '+
               'AND (FTRANSFAC<>''S'' OR NVL(FTRANSFAC,''N'')=''N'')';
//       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

       pnlTransf.Visible := False;
      //Animate1.Active:=False;

       DM1.cdsAutDisk.EnableControls;
      end;

     DM1.cdsAutdisk.Filtered        := False;
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter          := '';
     DM1.cdsAutdisk.Filtered        := True;
     ActualizaFooter;
     ActuaCampos;
     ShowMessage('Transferencia Finalizada');
     ActualizaFooter;     
     Screen.Cursor := crDefault;
    end;
end;

procedure TFIngresoLote.spdAporteRegistradosClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
    begin
     If DM1.cdsCobxUse.State <> dsBrowse Then
      DM1.cdsCobxUse.Post;
    end;

//Modificado por Error en Grabación
{   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      DM1.cdsAutDisk.Post;
    end;
   DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');}

   xSQL := 'SELECT * '+
           'FROM COB304 A '+
           'WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
           'AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
           'AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk, xSQL );

   If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
    begin
     If DM1.cdsAutDisk.State <> dsBrowse Then
      begin
       DM1.cdsAutDisk.Post;
       DM1.AplicaDatos(DM1.cdsAutdisk, 'AUTDISK');
      end;
    end;

   wSQL := 'SELECT * FROM COB304'
          +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
          +' AND FDAPORTE  ='+QuotedStr('S')
          +' AND FTRANSF   ='+QuotedStr('I');

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(wSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.RecordCount = 0 Then
    begin
     ShowMessage('Actualmente No Existen Registros Inconsistentes');
     Screen.Cursor := crDefault;
     Exit;
    end;

   If Question(Caption, 'Actualizará a Todos la Situación de Inconsistencia '#13+#13+'¿Desea Continuar? ') Then
    begin
     DM1.cdsQry2.First;
     While not DM1.cdsQry2.EOF do
      begin
       wSQL := 'UPDATE COB304 SET '+
               'FDAPORTE = NULL, '+
               'FREGCOB  = NULL, '+
//               'FTRANSF  = ''X'', '+
               'FTRANSF  = NULL , '+
               'USUARIO  ='+QuotedStr(DM1.wUsuario)+', '+
               'FREG     ='+QuotedStr(DateTimeToStr(Date))+', '+
               'HREG     ='+QuotedStr(DateTimeToStr(Date))+' '+
               'WHERE ASOID   ='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
               'AND RCOBID    ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
               'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
               'AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
       DM1.cdsQry2.Next;
      end;
     ActuaCampos;
    end;
   Screen.Cursor := crDefault;    
end;

procedure TFIngresoLote.SpeedButton1Click(Sender: TObject);
begin
   pnlFiltros.Visible := False;
   Screen.Cursor      := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'TRANSMTO';
   DM1.cdsAutdisk.Filter := '(TRANSCUO > 0) '+//AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFC<>''S'' '+
                                        'AND (FTRANSFC=''F'')';
   DM1.cdsAutdisk.Filtered := True;
   If DM1.cdsAutdisk.RecordCount > 0 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)', '(TRANSCUO > 0) AND (FTRANSFC =''S'')'), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)', '(TRANSCUO > 0) AND (FTRANSFC =''S'')'), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)', '(TRANSCUO > 0) AND (FTRANSFC =''S'')'), ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)', '(TRANSCUO > 0) AND (FTRANSFC=''F'')'),ffNumber, 15,0)+' Registros';
     If dbgAportes.Color<>$00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter          := '';
     DM1.cdsAutdisk.Filtered        := True;
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se Encontró Información a Mostrar ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Con Cuotas Transferidas a Tabla de Inconsistencias:  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.dblcdUseAExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)
            +' And USEID ='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString);
   dbeUseA.Text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
end;

procedure TFIngresoLote.dbeCodModExit(Sender: TObject);
var
   xWhere, xCodAux : String;
begin
   If Length(dbeCodMod.Text) < 10 Then
    dbeCodMod.Text := DM1.StrZero(dbeCodMod.Text, 10);

   If DM1.cdsQry2.FieldByName('ASOCODMOD').AsString <> dbeCodMod.Text Then
    begin
     xWhere := 'ASOCODMOD ='+QuotedStr(dbeCodMod.Text);
     DM1.DisplayDescrip('prvSQL', 'APO201', 'ASOID, ASOCODMOD, ASOAPENOM, ASOCODAUX', xWhere, 'ASOCODAUX');
     If DM1.cdsQry.RecordCount > 0 Then
      begin
       DM1.DisplayDescrip('prvSQL', 'APO201', 'MAX(ASOCODAUX) ASOCODAUX', xWhere, 'ASOCODAUX');
       xCodAux := IntToStr(StrToInt(DM1.cdsQry.FieldByName('ASOCODAUX').AsString) + 1);
       dbeCodAux.Text := DM1.StrZero(xCodAux, 2);
      end
     Else
      begin
       xCodAux := DM1.cdsQry.FieldByName('ASOCODAUX').AsString;
       dbeCodAux.Text := DM1.StrZero(xCodAux, 2);
      end;
    end;
end;

procedure TFIngresoLote.bbtnUSESNoValidasClick(Sender: TObject);
begin
//Para Consistenciar las USES No Válidas
   pnlFiltros.Visible := False;
   Screen.Cursor      := crHourGlass;
   DM1.cdsAutdisk.IndexFieldNames := 'FUSENOEX; FTRANSF';
   DM1.cdsAutdisk.Filter          := 'FTRANSF ='+QuotedStr('I')+' And FUSENOEX ='+QuotedStr('S');
   DM1.cdsAutdisk.Filtered        := True;
   DM1.wTDatos := 'I';  // Para Mostrar Todos los Registros
   If DM1.cdsAutdisk.RecordCount >= 1 Then
    begin
     dbgAportes.ColumnByName('TRANSCUO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)', 'FUSENOEX =''S'' AND FTRANSF =''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSAPO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)', 'FUSENOEX =''S'' AND FTRANSF =''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)', 'FUSENOEX =''S'' AND FTRANSF =''I'''), ffNumber, 15, 2);
     dbgAportes.ColumnByName('ASOAPENOM').FooterValue := 'Total '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)', 'FUSENOEX = ''S'' AND FTRANSF=''I'''), ffNumber, 15,0)+' Registros';
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF
      end;
    end
   Else
    begin
     DM1.cdsAutdisk.IndexFieldNames := '';
     DM1.cdsAutdisk.Filter          := '';
     DM1.cdsAutdisk.Filtered        := True;
     If dbgAportes.Color <> $00C8E1DF Then
      begin
       dbgAportes.Color := $00C8E1DF;
      end;
     ActualizaFooter;
     Screen.Cursor := crDefault;
     ShowMessage('No se encontraron Inconsistencias ');
     Exit;
    end;
   Screen.Cursor := crDefault;
   ShowMessage('Total de Registros Inconsistentes por USES que NO Pertenecen : '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.dblcdCodigoModularInitDialog(Dialog: TwwLookupDlg);
begin
   DM1.cdsAsociados.IndexFieldNames := 'ASOAPENOM';
end;

end.

