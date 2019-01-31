Unit COBD001;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COBD001
// Formulario                    : FNuevoPago
// Fecha de Creación             : 02/01/2012
// Autor                         : Ricardo Medina Zavaleta.
// Objetivo                      : Ingreso Manual de Pagos

// Actualizaciones               : HPC_201203_COB - Inicio HPC_201203_COB - Nuevo Ingreso Manual de Pagos a Cuotas
// DPP_201204_COB                : Pase a realizar a partir del HPC_201103_COB
// HPC_201208_COB                : RMEDINA 22/03/2012 - se adiciona columna nueva en el GRID TIPO DE CREDITO,
//                                 se cambia la fecha para determinar si esta vencida la cuota; la fecha de cobranza por la fecha del documento(operacion)
//                                 se hacen otras modificaciones con respecto al descargo de inconsistencias;
// DPP_201206_COB                : Se realiza el pase a producción a partir del pase HPC_201208_COB
// HPC_201211_COB                : RMEDINA 16/05/2012 - se adiciona la opcion para cancelar - amortizar independientemente  cuando existen prestamos paralelos, tambien
//                               : se adiciona una ventana para ingresar pagos particionados de cuotas como de los AGENTES BCP
// DPP_201208_COB                : Se realiza el pase a producción a partir del HPC_201211_COB
// HPC_201215_COB                : Se modifca para tomar el procedimiento de politicas de amortización, tabla temporal y nuevo procedimiento con el SEGURO DE DESGRAVAMEN
// DPP_201211_COB                : Pase se realiza de acuerdo al HPC_201215_COB
// HPC_201305_COB                : 17/04/2012 - Se validara el número de deposito por fecha y monto
// SPP_201307_COB                : Se realiza el pase a producción a partir del HPC_201305_COB
// HPC_201612_COB                : Se implementa una opcion para aplicar al FSC
// COB_201822_HPC                : Se adiciona el importe para eliminar el registro
// COB_201824_HPC                : Si es Planilla y existe un pago en exceso el flag de Aplicar como exceso debe estar desactivado por default

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
   StdCtrls, ExtCtrls, wwdblook, ComCtrls, ImgList, DB, DBClient,
   wwdbdatetimepicker, Buttons, ppBands, ppMemo, ppStrtch, ppCtrls, ppVar,
   ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
   ppDBPipe, DBGrids;

Type
   TFNuevoPago = Class(TForm)
      rdgMetodoPagoaFuturo: TRadioGroup;
      dbgAbono: TwwDBGrid;
      imgFlecha: TImageList;
      DSABONO: TDataSource;
      CDSABONO: TClientDataSet;
      ChkPagCuotasFuturo: TCheckBox;
      mObsPag: TMemo;
      Label9: TLabel;
      BitGrabar: TBitBtn;
      BitSalir: TBitBtn;
      chkCuoMesVencida: TCheckBox;
      Image1: TImage;
      Image2: TImage;
      grbExcedente: TGroupBox;
      Label12: TLabel;
      Label14: TLabel;
      Chkexceso: TCheckBox;
      Panel1: TPanel;
      edtExcedente: TEdit;
      grbDatos: TGroupBox;
      DBLCTipCob: TwwDBLookupCombo;
      Label5: TLabel;
      EdtForPago: TEdit;
      Shape1: TShape;
      DBLCBanco: TwwDBLookupCombo;
      Label6: TLabel;
      EdtDesBan: TEdit;
      Label7: TLabel;
      DBLCuenta: TwwDBLookupCombo;
      Label2: TLabel;
      DtpFecPag: TwwDBDateTimePicker;
      Label4: TLabel;
      EdtPreBco: TEdit;
      EdtDocPag: TEdit;
      Label1: TLabel;
      Label3: TLabel;
      Label11: TLabel;
      Label13: TLabel;
      DtpFecReg: TDateTimePicker;
      Btnfiltra: TfcShapeBtn;
      pnlImportePagar: TPanel;
      edtmonpag: TEdit;
      ppdbCuotas: TppDBPipeline;
      RpRecCuo: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppLabel10: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel19: TppLabel;
      DBMonto01: TppLabel;
      DBMonto02: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppDetailBand2: TppDetailBand;
      ppLabel18: TppLabel;
      Documento01: TppLabel;
      pplMontosol: TppLabel;
      Asoapenom01: TppLabel;
      Usuario01: TppLabel;
      NumLet01: TppLabel;
      ppLabel16: TppLabel;
      Documento02: TppLabel;
      pplMontosol2: TppLabel;
      pplCredid2: TppLabel;
      Asoapenom02: TppLabel;
      Usuario02: TppLabel;
      NumLet02: TppLabel;
      lblCopia01: TppLabel;
      lblCopia02: TppLabel;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLabel17: TppLabel;
      mTexto01: TppMemo;
      mTexto02: TppMemo;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppDBMemo1: TppDBMemo;
      ppDBMemo2: TppDBMemo;
      pplFecPag: TppLabel;
      pplFecPag1: TppLabel;
      mCopia: TppMemo;
      mCopia1: TppMemo;
      ppFooterBand2: TppFooterBand;
      Fecha01: TppLabel;
      Fecha02: TppLabel;
      chkCuoMesanteriorVencida: TCheckBox;
      GrbXCre: TGroupBox;
      dbgCreditos: TwwDBGrid;
      chkXCre: TCheckBox;
      Shape2: TShape;
      Shape3: TShape;
      Label8: TLabel;
      Label10: TLabel;
      pnlxPucho: TPanel;
      dbgxPucho: TwwDBGrid;
      DSXPUCHOS: TDataSource;
      CDSXPUCHOS: TClientDataSet;
      DSXPUCHODESCARGO: TDataSource;
      CDSXPUCHODESCARGO: TClientDataSet;
      edtDocPag2: TEdit;
      DtpFecPag2: TwwDBDateTimePicker;
      edtmonpag2: TEdit;
      Btnadiciona: TfcShapeBtn;
      BtnFiltra2: TfcShapeBtn;
      BtnPuchos: TfcShapeBtn;
      Shape4: TShape;
      Label15: TLabel;
      Button1: TButton;
      pnlDetBoletas: TPanel;
      Shape5: TShape;
      Button2: TButton;
      dbgDetBoletas: TwwDBGrid;
      Label16: TLabel;
      Label17: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      Procedure dbgAbonoDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure ChkPagCuotasFuturoClick(Sender: TObject);
      Procedure rdgMetodoPagoaFuturoClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dbgAbonoCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure FormCreate(Sender: TObject);
      Procedure DBLCTipCobChange(Sender: TObject);
      Procedure DtpFecPagChange(Sender: TObject);
      Procedure DtpFecPagExit(Sender: TObject);
      Procedure BitGrabarClick(Sender: TObject);
      Procedure DBLCBancoChange(Sender: TObject);
      Procedure EdtDesBanChange(Sender: TObject);
      Procedure edtmonpagKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtmonpagExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure DBLCuentaChange(Sender: TObject);
      Procedure DBLCuentaExit(Sender: TObject);
      Procedure DBLCBancoExit(Sender: TObject);
      Procedure BtnfiltraClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure EdtDocPagKeyPress(Sender: TObject; Var Key: Char);
      Procedure EdtDocPagExit(Sender: TObject);
      Procedure chkCuoMesVencidaClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      procedure chkCuoMesanteriorVencidaClick(Sender: TObject);
      procedure VerificaPrestParalelos(vsAsoid:string);
      procedure chkXCreClick(Sender: TObject);
      procedure dbgCreditosRowChanged(Sender: TObject);
      Function  VerificaInteresCre310(vsAsoid,vsCredid:String;VsCrecuota:Integer):currency;
      procedure dbgAbonoDblClick(Sender: TObject);
      procedure dbgxPuchoIButtonClick(Sender: TObject);
      procedure edtDocPag2KeyPress(Sender: TObject; var Key: Char);
      procedure edtmonpag2KeyPress(Sender: TObject; var Key: Char);
      procedure edtDocPag2Exit(Sender: TObject);
      procedure BtnadicionaClick(Sender: TObject);
      procedure edtmonpag2Exit(Sender: TObject);
      procedure BtnFiltra2Click(Sender: TObject);
      procedure BtnPuchosClick(Sender: TObject);
      procedure dbgxPuchoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
      procedure Button1Click(Sender: TObject);
      procedure Button2Click(Sender: TObject);
      procedure grbExcedenteDblClick(Sender: TObject);

   Private
    { Private declarations }
      Function ValidaIngresoBancos(xAsoId, xCreDocPag, xCrefPag: String): String;
      Function GnrCEfe(): String;
      Function DistPagos():string;
      Procedure ActfootBoletas();
      Procedure ActfootDetBoletas();

//Inicio: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto
      Function  ValidaIngresoBancos_Global(xCreDocPag, xCrefPag: String; xMonto : Double) : Boolean;
//Fin: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto

   Public
      xAfuturo, xAsoid, xPer, xCredid, vsRcobid, vsDetRcobid, vsPago,vsTipCont: String;
      xPer2:string;
      xSaldo, xSaldoFinal: currency;
      vcuenta:integer;
      vnMonpag,vnValFoot:currency;
      vsPorPuchos : Boolean;
      vsReProcesa : Boolean;
      Procedure ImpReciboEfe(xAsoId, xCreDocPag, xForpagId, xNuevo: String);
    { Public declarations }
   End;

Var
   FNuevoPago: TFNuevoPago;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFNuevoPago.dbgAbonoDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

//INICIO : DPP_201211_COB
{   If ((Field.DisplayName = 'Crédito') Or
      (Field.DisplayName = 'Cuota') Or
      (Field.DisplayName = 'Fecha~Vencimiento') Or
      (Field.DisplayName = 'Pago') ) And
      (CDSABONO.FieldByName('PAGO').AsFloat > 0) And
      (CDSABONO.FieldByName('PAGO').AsFloat = CDSABONO.FieldByName('SALDO').AsFloat )Then
   Begin
      dbgAbono.Canvas.Brush.Color := $00A2A532;
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
   End;

   If ((Field.DisplayName = 'Crédito') Or
      (Field.DisplayName = 'Cuota') Or
      (Field.DisplayName = 'Fecha~Vencimiento') Or
      (Field.DisplayName = 'Pago') ) And
      (CDSABONO.FieldByName('PAGO').AsFloat > 0) And
      (CDSABONO.FieldByName('PAGO').AsFloat <> CDSABONO.FieldByName('SALDO').AsFloat )Then
   Begin
      dbgAbono.Canvas.Brush.Color := $00C1D700;
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
   End;

   If ((Field.DisplayName = 'Cuota') Or (Field.DisplayName = 'Con~Int.')) And (CDSABONO.FieldByName('PAGO').AsFloat > 0) Then
   Begin
      dbgAbono.Canvas.Font.Style := [fsBold];
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
   End;

   If (Field.DisplayName = 'Orden') Then
   Begin
      dbgAbono.Canvas.FillRect(Rect);
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
      imgFlecha.Draw(dbgAbono.Canvas, Rect.Left - 2, Rect.Top - 3, Field.Value, True);
   End;

   If CDSABONO.FieldByName('PROCESADO').AsString = 'X' Then
   Begin
      dbgAbono.Canvas.Brush.Color := $00DADADA;
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
   End; }

   If Dm1.cdsGrupos.RecordCount<=0 Then Exit;

   If ((Field.DisplayName = 'Crédito') Or
      (Field.DisplayName = 'Cuota') Or
      (Field.DisplayName = 'Fecha~Vencimiento') Or
      (Field.DisplayName = 'Pago') ) And
      (DM1.cdsGrupos.FieldByName('PAGO').AsFloat > 0) And
      (DM1.cdsGrupos.FieldByName('PAGO').AsFloat = DM1.cdsGrupos.FieldByName('SALDO').AsFloat )Then
   Begin
      dbgAbono.Canvas.Brush.Color := $00A2A532;
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
   End;

   If ((Field.DisplayName = 'Crédito') Or
      (Field.DisplayName = 'Cuota') Or
      (Field.DisplayName = 'Fecha~Vencimiento') Or
      (Field.DisplayName = 'Pago') ) And
      (DM1.cdsGrupos.FieldByName('PAGO').AsFloat > 0) And
      (DM1.cdsGrupos.FieldByName('PAGO').AsFloat <> DM1.cdsGrupos.FieldByName('SALDO').AsFloat )Then
   Begin
      dbgAbono.Canvas.Brush.Color := $00C1D700;
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
   End;

   If ((Field.DisplayName = 'Cuota') Or (Field.DisplayName = 'Con~Int.')) And (DM1.cdsGrupos.FieldByName('PAGO').AsFloat > 0) Then
   Begin
      dbgAbono.Canvas.Font.Style := [fsBold];
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
   End;

   If (Field.DisplayName = 'Orden') Then
   Begin
      dbgAbono.Canvas.FillRect(Rect);
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
      imgFlecha.Draw(dbgAbono.Canvas, Rect.Left - 2, Rect.Top - 3, Field.Value, True);
   End;

   If DM1.cdsGrupos.FieldByName('PROCESADO').AsString = 'X' Then
   Begin
      dbgAbono.Canvas.Brush.Color := $00DADADA;
      dbgAbono.DefaultDrawDataCell(Rect, Field, State);
   End;
//FINAL : DPP_201211_COB

End;

Procedure TFNuevoPago.ChkPagCuotasFuturoClick(Sender: TObject);
Begin
   //INICIO : DPP_201211_COB
   //CDSABONO.EmptyDataSet;
    Dm1.cdsGrupos.EmptyDataSet;
   //FINAL : DPP_201211_COB
   grbExcedente.Visible := False;
   If ChkPagCuotasFuturo.Checked Then
   Begin
      XAFUTURO := 'S';
      rdgMetodoPagoaFuturo.Enabled := True;
      rdgMetodoPagoaFuturo.ItemIndex := 0;
   End
   Else
   Begin
      rdgMetodoPagoaFuturo.Enabled := False;
      rdgMetodoPagoaFuturo.ItemIndex := -1;
      XAFUTURO := 'N';
   End;
End;

Procedure TFNuevoPago.rdgMetodoPagoaFuturoClick(Sender: TObject);
Begin
   //INICIO : DPP_201211_COB
   //CDSABONO.EmptyDataSet;
    Dm1.cdsGrupos.EmptyDataSet;
   //FINAL : DPP_201211_COB
    edtExcedente.Text := '0.00';
    Chkexceso.Checked := False;
   CDSXPUCHODESCARGO.EmptyDataSet;
   grbExcedente.Visible := False;
End;

Procedure TFNuevoPago.FormActivate(Sender: TObject);
VAR XSQL:STRING;
Begin

   ChkPagCuotasFuturoClick(SELF);
   VerificaPrestParalelos(xAsoId);
   vsPorPuchos := False;

   If Dm1.vsCobranza = 'B' Then //Banco
   Begin
      DBLCTipCob.SetFocus;
      DBLCTipCob.DropDown;
      vsRcobid := '';
      vsDetRcobid := '';
      Chkexceso.Checked := True;
      vsPago := 'BAN';
      vsTipCont :='BOL';
   End;

   If Dm1.vsCobranza = 'P' Then //Planilla
   Begin
      DBLCTipCob.Text := Dm1.cdsQry5.fieldByname('FORPAGID').asstring;
      //Si es diferente a descargo de Planillas
      If (Dm1.cdsQry5.fieldByname('FORPAGID').asstring<>'09') or
         (Dm1.cdsQry5.fieldByname('FORPAGID').asstring<>'01') or
         (Dm1.cdsQry5.fieldByname('FORPAGID').asstring<>'22') Then
      Begin
        Xsql:='Select Forpagoid,Forpagoabr From Cob101 Where Forpagoabr='''+Dm1.cdsQry5.fieldByname('Forpagabr').asstring+''' ';
        Dm1.cdsResol.Close;
        Dm1.cdsResol.DataRequest(xsql);
        Dm1.cdsResol.Open;
        DBLCTipCob.Text := Dm1.cdsResol.fieldByname('Forpagoid').asstring;
      End;
      
      DBLCBanco.Text  := Dm1.cdsQry5.fieldByname('BANCOID').asstring;
      DBLCuenta.Text  := Dm1.cdsQry5.fieldByname('CCBCOID').asstring;
      EdtDocPag.Text  := Dm1.cdsQry5.fieldByname('NROOPE').asstring;
      DtpFecPag.Date  := Dm1.cdsQry5.fieldByname('FOPERAC').AsDateTime;
      vsPago    := Dm1.cdsQry5.fieldByname('FORPAGABR').asstring;
      vsTipCont :='PLA';
      vsRcobid := Dm1.cdsQry5.fieldByname('RCOBID').AsString;
      vsDetRcobid := Dm1.cdsQry5.fieldByname('DETRCOBID').AsString;
      edtmonpag.Text := CurrToStr(Dm1.cdsQry5.fieldByname('IMPORTE').AsCurrency);

     Begin
        chkCuoMesVencida.Checked := True;
        chkCuoMesanteriorVencida.Checked := False;
        chkCuoMesVencida.Visible := True;
        chkCuoMesanteriorVencida.Visible:=True;
        XSQL:='select months_between(LAST_DAY(to_date('''+DateToStr(DtpFecReg.Date)+''')),LAST_DAY(to_date('''+DateToStr(DtpFecPag.Date)+'''))) meses from dual ';
        DM1.cdsResol.Close;
        DM1.cdsResol.DataRequest(XSQL);
        DM1.cdsResol.Open;
       {If (Dm1.cdsResol.FieldByName('Meses').AsInteger=0) or
           (Dm1.cdsResol.FieldByName('Meses').AsInteger>1) then  xPer := COPY(DateToStr(DtpFecPag.Date),7,4)+COPY(DateToStr(DtpFecPag.Date),4,2);
        If Dm1.cdsResol.FieldByName('Meses').AsInteger=1 then    xPer := COPY(DateToStr(DtpFecReg.Date),7,4)+COPY(DateToStr(DtpFecReg.Date),4,2);}
        If Dm1.cdsResol.FieldByName('Meses').AsInteger  =0 then  xPer := COPY(DateToStr(DtpFecPag.Date),7,4)+COPY(DateToStr(DtpFecPag.Date),4,2);
        If Dm1.cdsResol.FieldByName('Meses').AsInteger >=1 then  xPer := COPY(DateToStr(DtpFecReg.Date),7,4)+COPY(DateToStr(DtpFecReg.Date),4,2);
    End;
    mObsPag.Text:='Descuento de Planilla - '+DM1.NombreMes(Dm1.cdsQry5.fieldByname('TRANSMES').asstring)+' '+Dm1.cdsQry5.fieldByname('TRANSANO').asstring;
    Btnfiltra.OnClick(self);
  End;

   If Dm1.vsCobranza = 'E' Then //Efectivo
   Begin
      DBLCTipCob.Text := '02';
      DBLCBanco.Text := '';
      DBLCuenta.Text := '';
      EdtDocPag.Text := '';
      DtpFecPag.Date := Dm1.FechaSys;
      vsPago := 'EFE';
      vsTipCont :='EFE';
      vsRcobid := '';
      vsDetRcobid := '';
      edtmonpag.Text := '0.00';
      If Dm1.vsCobranza = 'E' Then
         xPer := COPY(DateToStr(DtpFecPag.Date), 7, 4)
            + COPY(DateToStr(DtpFecPag.Date), 4, 2);
      chkCuoMesVencida.Checked := False;
      chkCuoMesVencida.Visible := True;
      Chkexceso.Checked := False;
      Chkexceso.Enabled := False;
      Chkexceso.Visible := False;
      grbExcedente.Caption := '';
   End;

End;

Procedure TFNuevoPago.dbgAbonoCalcCellColors(Sender: TObject; Field: TField;
   State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
   If Highlight Then
   Begin
      If ((Field.DisplayName = 'Crédito') Or
         (Field.DisplayName = 'Cuota') Or
         (Field.DisplayName = 'Fecha~Vencimiento')Or
         (Field.DisplayName = 'Pago')) And
      //INICIO : DPP_201211_COB
      // (DM1.CDSABONO.FieldByName('PAGO').AsFloat > 0) Then
         (DM1.cdsGrupos.FieldByName('PAGO').AsFloat > 0) Then
      //FINAL : DPP_201211_COB
        AFont.Color := clBlack;
   End;


   If  Field.DisplayName = 'Pago~Acumulado'  then
   Begin
      //INICIO : DPP_201211_COB
      //If CDSABONO.FieldByName('ACUMULADO').AsCurrency =  Dm1.Valores(edtmonpag.Text) Then
      If Dm1.cdsGrupos.FieldByName('ACUMULADO').AsCurrency =  Dm1.Valores(edtmonpag.Text) Then
      //FINAL : DPP_201211_COB
      Begin
         ABrush.Color := $00C5FEFD;
         AFont.Color  := clRed;
      End;
   End;

End;

Procedure TFNuevoPago.FormCreate(Sender: TObject);
Var
   XSQL, xSQL1, XSQL2: String;
Begin


  //INCIO : DPP_201211_COB
    Xsql:='Select * From COB_POLITICA_CUO_GTT  where 1=2 Order by ref,pos,crefotorg ';
    Dm1.cdsGrupos.Close;
    Dm1.cdsGrupos.DataRequest(Xsql);
    Dm1.cdsGrupos.Open;
    dbgAbono.selected.clear;
    dbgAbono.Selected.Add('XID'#9'2'#9'Id');
    dbgAbono.Selected.Add('CREDITO'#9'7'#9'Crédito');
    dbgAbono.Selected.Add('CUOTA'#9'2'#9'Cuota');
    dbgAbono.Selected.Add('FVENCIMIENTO'#9'10'#9'Fecha~Vencimiento');
    dbgAbono.Selected.Add('CINTERES'#9'1'#9'Con~Int.');
    dbgAbono.Selected.Add('SALDO'#9'9'#9'Saldo~Cuota');
    dbgAbono.Selected.Add('PAGO'#9'9'#9'Pago');
    dbgAbono.Selected.Add('ACUMULADO'#9'9'#9'Pago~Acumulado');
    dbgAbono.Selected.Add('FLECHA'#9'1'#9'Orden');
    dbgAbono.Selected.Add('MODO'#9'10'#9'Estado de~Pendiente');
    dbgAbono.Selected.Add('TIPCREDES'#9'17'#9'Tipo Crédito');
    dbgAbono.Applyselected;
    dbgAbono.DataSource := Dm1.dsGrupos;
  //FINAL : DPP_201211_COB

   DM1.xArea := Copy(Dm1.CrgArea(DM1.wUsuario), 1, 3);
   DtpFecReg.Date := dm1.FechaSys;

   If Dm1.vsCobranza = 'B' Then //Banco
   Begin
      XSQL1 := 'Select FORPAGOID,FORPAGODES '
         + '  From COB101 '
         + ' Where FORPAGOID in '
         + '       (Select FORPAGOID '
         + '          From COB_ASI_FOR_PAG_USU '
         + '         Where USERID=' + QuotedStr(DM1.wUsuario)
         + '           and ESTADO=''0'') '
         + '   and FORPAGACT=''S'' '
         + '   and  FORPAGOID IN (''03'') '
         + ' Order by FORPAGOID';
      XSQL2 := 'Select BANCOID,BANCONOM '
         + '  from TGE105 '
         + ' where NVL(FLAVIGCOB, ''X'') = ''S'' '
         + ' order by BANCOID';
      xAsoId := Dm1.cdsAso.FieldByName('ASOID').AsString;
      xCredId := '';
      grbDatos.Enabled := True;
      pnlImportePagar.Enabled := True;
   End;

   If Dm1.vsCobranza = 'P' Then //Planilla
   Begin
      XSQL1 := 'Select FORPAGOID,FORPAGODES '
         + '  from COB101 '
         + ' where ((FORPAGOID IN (' + quotedstr(Dm1.cdsQry5.fieldByname('FORPAGID').asstring)+')) or (FORPAGOABR IN (' + quotedstr(Dm1.cdsQry5.fieldByname('FORPAGABR').asstring)+')))'
         + '   and FORPAGACT=''S'' '
         + ' order by FORPAGOID';
      XSQL2 := 'Select BANCOID,BANCONOM '
         + '  from TGE105 '
         + ' where BANCOID=' + quotedstr(Dm1.cdsQry5.fieldByname('BANCOID').asstring)
         + '   and NVL(FLAVIGCOB, ''X'') = ''S'' '
         + ' order by BANCOID';
      xSQL := 'Select BANCOID,CCBCOID,CPTOID,LONGITUD '
         + '  from TGE106 '
         + ' where BANCOID=' + quotedstr(Dm1.cdsQry5.fieldByname('BANCOID').asstring)
         + '   and CIAID=''02'' '
         + '   and CCBCOID=' + quotedstr(Dm1.cdsQry5.fieldByname('CCBCOID').asstring)
         + ' order by CCBCOID';
      DM1.cdsCtasBco.Close;
      DM1.cdsCtasBco.DataRequest(xSQL);
      DM1.cdsCtasBco.Open;
      xAsoId := Dm1.cdsQry5.FieldByName('ASOID').AsString;
      xCredId := '';
      grbDatos.Enabled := False;
      pnlImportePagar.Enabled := False;
   End;

   If Dm1.vsCobranza = 'E' Then //Efectivo
   Begin
      XSQL1 := 'Select FORPAGOID,FORPAGODES '
         + '  from COB101 '
         + ' where FORPAGOID IN (''02'') '
         + ' order by FORPAGOID';
      XSQL2 := 'Select BANCOID,BANCONOM '
         + '  from TGE105 '
         + ' where BANCOID='''' '
         + '   and NVL(FLAVIGCOB, ''X'') = ''S'' '
         + ' order by BANCOID';
      xSQL := 'Select BANCOID,CCBCOID,CPTOID,LONGITUD '
         + '  from TGE106 '
         + ' where BANCOID='''' '
         + '   and CIAID=''02'' '
         + '   and CCBCOID='''' '
         + ' order by CCBCOID';
      DM1.cdsCtasBco.Close;
      DM1.cdsCtasBco.DataRequest(xSQL);
      DM1.cdsCtasBco.Open;
      xAsoId := Dm1.cdsAso.FieldByName('ASOID').AsString;
      xCredId := '';
      grbDatos.Enabled := False;
      pnlImportePagar.Enabled := True;
   End;

   If (Length(Trim(XSQL1)) > 0) And (Length(Trim(XSQL2)) > 0) Then
   Begin
      DM1.cdsFormaPago.Close;
      DM1.cdsFormaPago.DataRequest(XSQL1);
      DM1.cdsFormaPago.Open;

      DM1.cdsCBcos.Close;
      DM1.cdsCBcos.DataRequest(XSQL2);
      DM1.cdsCBcos.Open;

      DBLCTipCob.LookupTable := DM1.cdsFormaPago;
      DBLCTipCob.LookupField := 'FORPAGOID';
      If DM1.cdsFormaPago.RecordCount > 0 Then
         DBLCTipCob.Enabled := True
      Else
         DBLCTipCob.Enabled := False;
   End;


End;

Procedure TFNuevoPago.DBLCTipCobChange(Sender: TObject);
// INICIO : DPP_201211_COB
//Var
//   xAsoId, xCredId, xCreCuora, xfCalc: String;
//   xSaldoP: Currency;
// FINAL : DPP_201211_COB
Begin
   BtnPuchos.Visible := False;
   EdtDocPag.Text := '';
   If DM1.cdsFormaPago.Locate('FORPAGOID', VarArrayof([DBLCTipCob.text]), []) Then
   Begin
      If (Trim(DBLCTipCob.text) = '06') Or
         (Trim(DBLCTipCob.text) = '31') Then DtpFecPag.OnExit(DtpFecPag);

      If Trim(DBLCTipCob.text) = '03' Then
      Begin
         BtnPuchos.Visible := True;
         DBLCBanco.Enabled := True;
         EdtDesBan.Enabled := True;
         DBLCuenta.Enabled := True;
         EdtPreBco.Enabled := True;
         DBLCBanco.SetFocus;
         DBLCBanco.DropDown;
      End;

      EdtForPago.Text := DM1.cdsFormaPago.fieldbyname('FORPAGODES').AsString;
   End
   Else
   Begin
      If Length(TRIM(DBLCTipCob.Text)) <> 2 Then
      Begin
         Beep;
         EdtForPago.Text := '';
      End;
   End

End;

Procedure TFNuevoPago.DtpFecPagChange(Sender: TObject);
Begin
   If Trim(DBLCTipCob.text) = '03' Then xPer := FormatDateTime('YYYYMM', DtpFecPag.Date);
   //INICIO : DPP_201211_COB
   //CDSABONO.EmptyDataSet;
    Dm1.cdsGrupos.EmptyDataSet;
   //FINAL : DPP_201211_COB
   grbExcedente.Visible := False;
End;

Procedure TFNuevoPago.DtpFecPagExit(Sender: TObject);
Begin
   If Trim(DBLCTipCob.text) = '03' Then xPer := FormatDateTime('YYYYMM', DtpFecPag.Date);
End;

Procedure TFNuevoPago.BitGrabarClick(Sender: TObject);
Var
   Xsql, vpCredid, vpCrecuota, vpInteres, xRecEfe: String;
   vnNumero: integer;
Begin

 //Consistencia datos para procesar
   If vnMonpag<>dm1.Valores(edtmonpag.Text) Then
   Begin
      //INICIO : DPP_201211_COB
      //ShowMessage('NO apreto el botón de PROCESO PREVIO');
      ShowMessage('Debe presionar el botón de PROCESO PREVIO');
      //FINAL : DPP_201211_COB
      Btnfiltra.SetFocus;
      exit;
   End;

   If  ((DBLCTipCob.Text = '02') and (Dm1.vsCobranza <> 'E')) or
       ((DBLCTipCob.Text = '03') and (Dm1.vsCobranza <> 'B')) then
   Begin
       ShowMessage('Verifique el Tipo de Cobranza NO COINCIDE con la OPERACION A REALIZAR');
       exit;
   End;

   //INICIO : DPP_201211_COB
   {If ( (CDSABONO.RecordCount=0) and  (Dm1.Valores(edtExcedente.Text) = 0) )  Or
      ( (CDSABONO.RecordCount=0) and  ((Dm1.Valores(edtExcedente.Text) > 0) And (Chkexceso.Checked=False)) ) or
      ( (CDSABONO.RecordCount=0) and  ((Dm1.Valores(edtExcedente.Text) > 0) And (Chkexceso.Visible=False)) ) Then}
   If ( (Dm1.cdsGrupos.RecordCount=0) and  (Dm1.Valores(edtExcedente.Text) = 0) )  Or
      ( (Dm1.cdsGrupos.RecordCount=0) and  ((Dm1.Valores(edtExcedente.Text) > 0) And (Chkexceso.Checked=False)) ) or
      ( (Dm1.cdsGrupos.RecordCount=0) and  ((Dm1.Valores(edtExcedente.Text) > 0) And (Chkexceso.Visible=False)) ) Then
   //FINAL : DPP_201211_COB
   Begin
       ShowMessage('*** CUIDADO NO SE DESCARGARA A NINGUNA CUOTA, VERIFIQUE ***');
       exit;
   End;


   If DM1.Valores(EdtMonPag.Text) < 0 Then
   Begin
      MessageDlg(' No Se Puede Registrar Montos Negativos ', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(DBLCTipCob.Text)) = 0 Then
   Begin
      MessageDlg('Debe ingresar la Forma de Pago', mtError, [mbOk], 0);
      DBLCTipCob.SetFocus;
      exit;
   End;

   If DBLCTipCob.Text = '03' Then
   Begin
      If Length(trim(DBLCBanco.Text)) = 0 Then
      Begin
         MessageDlg('Debe ingresar el Banco', mtError, [mbOk], 0);
         DBLCBanco.SetFocus;
         exit;
      End;

      If Length(Trim(DBLCuenta.Text)) = 0 Then
      Begin
         MessageDlg('Debe ingresar la Cuenta Bancaria', mtError, [mbOk], 0);
         DBLCuenta.SetFocus;
         exit;
      End;
   End;

   If (Length(Trim(DtpFecPag.Text)) = 0)  AND (CDSXPUCHODESCARGO.RecordCount=0)Then
   Begin
      MessageDlg('Debe ingresar la Fecha de Pago', mtError, [mbOk], 0);
      DtpFecPag.SetFocus;
      EXIT;
   End;

   If (DtpFecPag.Date > DM1.FechaSys) AND (CDSXPUCHODESCARGO.RecordCount=0) Then
   Begin
      MessageDlg('La Fecha De Documento No Puede Ser Mayor A La Fecha De Registro', mtError, [mbOk], 0);
      Exit;
   End;

   If (Length(Trim(DtpFecPag.Text)) = 0) AND (CDSXPUCHODESCARGO.RecordCount=0) Then
   Begin
      MessageDlg('Debe ingresar la Fecha de Pago', mtError, [mbOk], 0);
      DtpFecPag.SetFocus;
      EXIT;
   End;

   If ((Dm1.vsCobranza = 'B') Or (Dm1.vsCobranza = 'P')) And (Length(Trim(EdtDocPag.Text)) = 0) And (CDSXPUCHODESCARGO.RecordCount=0) Then
   Begin
      MessageDlg('Debe ingresar Numero de Documento', mtError, [mbOk], 0);
      EdtDocPag.SetFocus;
      EXIT;
   End;

   If dm1.Valores(edtmonpag.Text) = 0 Then
   Begin
      MessageDlg('Debe ingresar Importe a Pagar', mtError, [mbOk], 0);
      edtmonpag.SetFocus;
      EXIT;
   End;

   If Length(trim(mObsPag.Text)) < 10 Then
   Begin
      MessageDlg('Debe ingresar alguna observación ó observación mas detallada', mtError, [mbOk], 0);
      mObsPag.SetFocus;
      EXIT;
   End;

//Inicio: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto
   {If (DBLCTipCob.Text = '03') And (CDSXPUCHODESCARGO.RecordCount=0) Then
   Begin
      If Length(Trim(ValidaIngresoBancos(xAsoId, Trim(EdtPreBco.Text + EdtDocPag.Text), DtpFecPag.Text))) > 0 Then
      Begin
         MessageDlg(' Esta Operación Ya Fue Registrada Por  :  ' + pChar(ValidaIngresoBancos(xAsoId, Trim(EdtPreBco.Text + EdtDocPag.Text), DtpFecPag.Text)), mtError, [mbOk], 0);
         Exit;
      End;
   End;
   }
   // Se valida por 1 deposito
   If (DBLCTipCob.Text = '03') And (CDSXPUCHOS.RecordCount=0) Then
   Begin
      // Se valida por numero de deposito, fecha de operación y el importe en el CRE310
      If ValidaIngresoBancos_Global(EdtDocPag.Text, DtpFecPag.Text, strtofloat(stringReplace(edtmonpag.text, ',', '', [rfReplaceAll]))) Then
         Exit;
   End;
   // se valida por varios depositos
   If (DBLCTipCob.Text = '03') And (CDSXPUCHOS.RecordCount>0) Then
   Begin
      // Se valida por numero de deposito, fecha de operación y el importe en el CRE310
        while Not CDSXPUCHOS.Eof Do
        begin
            If ValidaIngresoBancos_Global( Copy(CDSXPUCHOS.FieldByName('NROOPE').AsString,4,7),
                                                CDSXPUCHOS.FieldByName('FOPERAC').AsString,
                                                CDSXPUCHOS.FieldByName('IMPORTE').AsFloat ) Then
               Exit;
            CDSXPUCHOS.Next;
        end;
   End;
//Fin: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto


   //INICIO : DPP_201211_COB
   //CDSABONO.First;
   //CDSABONO.DisableControls;
   Dm1.cdsGrupos.First;
   Dm1.cdsGrupos.DisableControls;
   //FINAL : DPP_201211_COB

   vnNumero := 0;
   If DBLCTipCob.Text = '02' Then
   Begin
      xRecEfe := GnrCEfe;
      EdtDocPag.Text := xRecEfe;
      If Length(Trim(xRecEfe)) = 0 Then
      Begin
         Screen.Cursor := crDefault;
         MessageDlg(' <<<  A T E N C I O N  >>>  NO SE GENERO CORRELATIVO COMUNIQUESE CON SISTEMAS !!!!!  ', mtError, [mbOk], 0);
         Exit;
      End;
   End;

   If CDSXPUCHODESCARGO.RecordCount > 0 Then
   Begin
      CDSXPUCHODESCARGO.Filter := ' TIPO=''CUO'' ';
      CDSXPUCHODESCARGO.Filtered := True;
      CDSXPUCHODESCARGO.First;
      If  CDSXPUCHODESCARGO.RecordCount>0 Then
      Begin
        vpCrecuota := CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsString;
        vnNumero   := 1;
        While Not CDSXPUCHODESCARGO.Eof Do
        Begin
         If  Dm1.Valores(CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsString)>0 Then
         Begin
              xSQL := 'BEGIN '
              + '   SP_COB_PAGO_CUOTA_V2(' + quotedstr(xAsoid) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('CREDID').AsString) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsString) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString) + ','
              + CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsString + ','
              + quotedstr(trim(EdtPreBco.Text) + CDSXPUCHODESCARGO.FieldByName('NROOPE').AsString) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('FOPERAC').AsString) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('FOPERAC').AsString) + ','
              + quotedstr(DBLCBanco.Text) + ','
              + quotedstr(DBLCuenta.Text) + ','
              + quotedstr(DBLCTipCob.Text) + ','
              + quotedstr(trim(mObsPag.Text)) + ','
              + quotedstr(vsTipCont) + ','
              + quotedstr(vsRcobid) + ','
              + quotedstr(vsDetRcobid) + ','
              + 'NULL,'
              + quotedstr(DM1.wUsuario) + ',NULL); '
              + 'END;';
              DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;
          CDSXPUCHODESCARGO.Next;
          If  vpCrecuota<>CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsString Then
          Begin
             vnNumero:=vnNumero+1;
             vpCrecuota := CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsString;
          End;
        End;
      End;
      CDSXPUCHODESCARGO.Filtered := False;
      BitSalirClick(Self);
   End
   Else
   Begin
     //INICIO : DPP_201211_COB
     //While Not CDSABONO.Eof Do
     While Not Dm1.cdsGrupos.Eof Do
     //FINAL : DPP_201211_COB
     Begin
       //INICIO : DPP_201211_COB
       // If (CDSABONO.FieldByName('PAGO').AsFloat > 0) And (CDSABONO.FieldByName('PROCESADO').AsString <> 'X') And (CDSABONO.RecordCount>0) Then
        If (Dm1.cdsGrupos.FieldByName('PAGO').AsFloat > 0) And (Dm1.cdsGrupos.FieldByName('PROCESADO').AsString <> 'X') And (Dm1.cdsGrupos.RecordCount>0) Then
       //FINAL : DPP_201211_COB
        Begin
         xSQL := 'BEGIN '
            + '   SP_COB_PAGO_CUOTA_V2(' + quotedstr(xAsoid) + ','
            //INICIO : DPP_201211_COB
            {+ quotedstr(CDSABONO.FieldByName('CREDID').AsString) + ','
            + quotedstr(CDSABONO.FieldByName('CUOTA').AsString) + ','
            + quotedstr(CDSABONO.FieldByName('CINTERES').AsString) + ','
            + CDSABONO.FieldByName('PAGO').AsString + ','}
            + quotedstr(Dm1.cdsGrupos.FieldByName('CREDID').AsString) + ','
            + quotedstr(Dm1.cdsGrupos.FieldByName('CUOTA').AsString) + ','
            + quotedstr(Dm1.cdsGrupos.FieldByName('CINTERES').AsString) + ','
            + Dm1.cdsGrupos.FieldByName('PAGO').AsString + ','
            //FINAL : DPP_201211_COB
            + quotedstr(trim(EdtPreBco.Text) + trim(EdtDocPag.Text)) + ','
            + quotedstr(DtpFecPag.Text) + ','
            + quotedstr(DtpFecPag.Text) + ','
            + quotedstr(DBLCBanco.Text) + ','
            + quotedstr(DBLCuenta.Text) + ','
            + quotedstr(DBLCTipCob.Text) + ','
            + quotedstr(trim(mObsPag.Text)) + ','
            + quotedstr(vsTipCont) + ','
            + quotedstr(vsRcobid) + ','
            + quotedstr(vsDetRcobid) + ','
            + 'NULL,'
            + quotedstr(DM1.wUsuario) +',NULL ); '
            + 'END;';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         //INICIO : DPP_201211_COB
         //CDSABONO.Edit;
         //CDSABONO.FieldByName('PROCESADO').AsString := 'X';
         Dm1.cdsGrupos.Edit;
         Dm1.cdsGrupos.FieldByName('PROCESADO').AsString := 'X';
         //FINAL : DPP_201211_COB
         vnNumero := vnNumero + 1
        End;
        //INICIO : DPP_201211_COB
        //CDSABONO.Next;
        Dm1.cdsGrupos.Next;
        //FINAL : DPP_201211_COB
     End;
   End;
     If (Dm1.Valores(edtExcedente.Text) > 0) And (Chkexceso.Checked) And (CDSXPUCHODESCARGO.RecordCount=0) Then
     Begin
        //INCIO : DPP_201211_COB
        //If CDSABONO.Locate('Id', VarArrayOf([vnNumero]), []) Then
        If Dm1.cdsGrupos.Locate('XId', VarArrayOf([vnNumero]), []) Then
        //FINAL : DPP_201211_COB
        Begin
           //INCIO : DPP_201211_COB
           //vpCredid := CDSABONO.FieldByName('CREDID').AsString;
           //vpCrecuota := CDSABONO.FieldByName('CUOTA').AsString;
           //vpInteres := Dm1.cdsGrupos.FieldByName('CINTERES').AsString;
            vpCredid   := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
            vpCrecuota := Dm1.cdsGrupos.FieldByName('CUOTA').AsString;
            vpInteres  := Dm1.cdsGrupos.FieldByName('CINTERES').AsString;
           //FINAL : DPP_201211_COB
        End
        Else
        Begin
        //Si no encuentra  el exceso debe ir a la ultima cuota cancelada
           XSQL := 'SELECT ASOID,CREDID,CRECUOTA '
              + '  FROM (SELECT ASOID,CREDID,CRECUOTA,CREFPAG,ROWNUM '
              + '        FROM CRE302 '
              + '       WHERE ASOID=''' + xAsoid + ''' AND CREFPAG IS NOT NULL AND CREESTID NOT IN (''19'',''13'',''04'') '
              + '       ORDER BY CREFPAG DESC,CRECUOTA DESC ) '
              + ' WHERE ROWNUM=1';
           DM1.cdsDFam.Close;
           DM1.cdsDFam.DataRequest(XSQL);
           DM1.cdsDFam.Open;
           vpCredid := Dm1.cdsDFam.FieldByname('Credid').AsString;
           vpCrecuota := Dm1.cdsDFam.FieldByname('Crecuota').AsString;
           vpInteres := '';
        End;

        //CONSISTENCIA QUE EXISTA UN REGISTRO PARA DESCARGAR EXCESO
        If Length(Trim(vpCrecuota))>0 Then
        Begin

        //Inicio HPC_201612_COB
		//Se implementa una opcion para aplicar al FSC - Aplicación Crédito
        If grbExcedente.Caption='Aplicar como exceso' Then
        Begin
        //Fin HPC_201612_COB
        
        xSQL := 'BEGIN '
           + '   SP_COB_PAGO_CUOTA_V2('
           + quotedstr(xAsoid) + ','
           + quotedstr(vpCredid) + ','
           + quotedstr(vpCrecuota) + ','
           + quotedstr(vpInteres) + ','
          // + edtExcedente.Text + ','
           + CurrToStr(DM1.Valores(edtExcedente.Text)) + ','
           + quotedstr(trim(EdtPreBco.Text) + trim(EdtDocPag.Text)) + ','
           + quotedstr(DtpFecPag.Text) + ','
           + quotedstr(DtpFecPag.Text) + ','
           + quotedstr(DBLCBanco.Text) + ','
           + quotedstr(DBLCuenta.Text) + ','
           + quotedstr(DBLCTipCob.Text) + ','
           + quotedstr(trim(mObsPag.Text)) + ','
           + quotedstr(vsTipCont) + ','
           + quotedstr(vsRcobid) + ','
           + quotedstr(vsDetRcobid) + ','
           + 'NULL,'
           + quotedstr(DM1.wUsuario) + ',NULL); '
           + 'END;';
           
        //Inicio HPC_201612_COB
		//Se implementa una opcion para aplicar al FSC - aplicación FSC
        End
        Else
        Begin
        If grbExcedente.Caption='Aplicar al FSC' Then
        Begin
        XSQL:='BEGIN '
             +' SP_DEV_AL_FSC('
             + quotedstr(xAsoid) + ','
             + CurrToStr(DM1.Valores(edtExcedente.Text)) + ','
             + quotedstr(DM1.wUsuario) + ','
             + quotedstr(DtpFecPag.Text) + ','
             + quotedstr(DBLCBanco.Text) + ','
             + quotedstr(DBLCuenta.Text) + ','
             + quotedstr(COPY(DtpFecPag.Text,7,4)+COPY(DtpFecPag.Text,4,2))+','
             + quotedstr(trim(EdtPreBco.Text) + trim(EdtDocPag.Text))+','
             + quotedstr(DtpFecPag.Text) + ','
             + quotedstr(DBLCTipCob.Text)+','
             + quotedstr(vsRcobid) + ','
             + quotedstr(vsDetRcobid) + ',NULL,'
             + quotedstr(trim(mObsPag.Text))+'); '
             + 'END;';
        End;
        End;
        //Final HPC_201612_COB

        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       End;

   End;

   If (Dm1.Valores(edtExcedente.Text) > 0) And (Chkexceso.Checked) And (CDSXPUCHODESCARGO.RecordCount>0) Then
   Begin
      CDSXPUCHODESCARGO.Filter := ' TIPO=''EXC'' ';
      CDSXPUCHODESCARGO.Filtered := True;
      CDSXPUCHODESCARGO.First;
      If  CDSXPUCHODESCARGO.RecordCount>0 Then
      Begin
        While Not CDSXPUCHODESCARGO.Eof Do
        Begin
         If  Dm1.Valores(CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsString)>0 Then
         Begin
              //Inicio HPC_201612_COB
			  //Se implementa una opcion para aplicar al FSC - aplicación crédito
              If grbExcedente.Caption='Aplicar como exceso' Then
              Begin
              //Fin HPC_201612_COB
              
              xSQL := 'BEGIN '
              + '   SP_COB_PAGO_CUOTA_V2(' + quotedstr(xAsoid) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('CREDID').AsString) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsString) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString) + ','
              + CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsString + ','
              + quotedstr(trim(EdtPreBco.Text) + CDSXPUCHODESCARGO.FieldByName('NROOPE').AsString) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('FOPERAC').AsString) + ','
              + quotedstr(CDSXPUCHODESCARGO.FieldByName('FOPERAC').AsString) + ','
              + quotedstr(DBLCBanco.Text) + ','
              + quotedstr(DBLCuenta.Text) + ','
              + quotedstr(DBLCTipCob.Text) + ','
              + quotedstr(trim(mObsPag.Text)) + ','
              + quotedstr(vsTipCont) + ','
              + quotedstr(vsRcobid) + ','
              + quotedstr(vsDetRcobid) + ','
              + 'NULL,'
              + quotedstr(DM1.wUsuario) + ',NULL); '
              + 'END;';

              //Inicio HPC_201612_COB
			  //Se implementa una opcion para aplicar al FSC - aplicación FSC
              End
              Else
              Begin
              If grbExcedente.Caption='Aplicar al FSC' Then
              Begin
              XSQL:='BEGIN '
                   +' SP_DEV_AL_FSC('
                   + quotedstr(xAsoid) + ','
                   + CurrToStr(DM1.Valores(edtExcedente.Text)) + ','
                   + quotedstr(DM1.wUsuario) + ','
                   + quotedstr(DtpFecPag.Text) + ','
                   + quotedstr(DBLCBanco.Text) + ','
                   + quotedstr(DBLCuenta.Text) + ','
                   + quotedstr(COPY(DtpFecPag.Text,7,4)+COPY(DtpFecPag.Text,4,2))+','
                   + quotedstr(trim(EdtPreBco.Text) + trim(EdtDocPag.Text))+','
                   + quotedstr(DtpFecPag.Text) + ','
                   + quotedstr(quotedstr(DBLCTipCob.Text))+','
                   + quotedstr(vsRcobid) + ','
                   + quotedstr(vsDetRcobid) + ',NULL,'
                   + quotedstr(trim(mObsPag.Text))+'); '
                   + 'END;';
              End;
              End;
              //Final HPC_201612_COB

              DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;
          CDSXPUCHODESCARGO.Next;
        End;
      End;
   End;

   //INICIO : DPP_201211_COB
   //CDSABONO.First;
   //CDSABONO.EnableControls;
   Dm1.cdsGrupos.First;
   Dm1.cdsGrupos.EnableControls;
   //INICIO : DPP_201211_COB

 //Imprime recibo de pago en efectivo
   If Dm1.vsCobranza = 'E' Then //Efectivo
   Begin
      ImpReciboEfe(xAsoId, EdtDocPag.Text, DBLCTipCob.Text, 'S');
   End;

 //Se carga nuevamente los datos
   If Dm1.vsCobranza = 'B' Then //Banco
   Begin
      DM1.CrgDatos;
   End;

   ShowMessage('Se Aplicó a ' + IntToStr(vnNumero) + ' CUOTAS');
   //Inicio HPC_201612_COB
   //Se implementa una opcion para aplicar al FSC - mensaje de aplicación
   If grbExcedente.Caption='Aplicar al FSC' Then  ShowMessage('Se Aplicó al FSC' );
   //Final HPC_201612_COB

 //si es inconsistencia de planilla tengo que anular la inconsistencia luego de descargarlo
   If Dm1.vsCobranza = 'P' Then //Planilla
   Begin
      //VERIFICAR SI LA INCONSISTENCIA SE DESCARGO TOTALMENTE
      xsql  :=  'Select A.asoid,max(A.importe)importe,A.rcobid,A.detrcobid,sum(nvl(B.cremtocob,0))cremtocob '
               +'From COB340 A,CRE310 B '
               +'Where A.asoid='''+xAsoid+''' and A.rcobid=''' + vsRcobid + ''' and A.detrcobid=''' + vsDetRcobid + ''' and '
               +'      A.asoid=B.asoid(+) and a.rcobid=b.rcobid(+) and a.detrcobid=b.detrcobid(+) and b.usercobid(+) is null and b.creestid(+) not in (''13'',''04'') '
               +'Group by A.asoid,A.rcobid,A.detrcobid ';
      Dm1.cdsResol.Close;
      Dm1.cdsResol.DataRequest(xsql);
      Dm1.cdsResol.Open;

      //Inicio HPC_201612_COB
	  //Se implementa una opcion para aplicar al FSC - verifica el total de la aplicación 
      If grbExcedente.Caption='Aplicar al FSC' Then
      Begin
       xsql:=' Select  A.asoid,max(A.importe)importe,A.rcobid,A.detrcobid,'+Dm1.cdsResol.FieldByName('cremtocob').AsString+'+SUM(NVL(IMP_COB_DEU,0)) cremtocob '
             +'From COB340 A, COB_FSC_PAGOS_AL_FSC B '
             +'Where A.asoid='''+xAsoid+''' and A.rcobid=''' + vsRcobid + ''' and A.detrcobid=''' + vsDetRcobid + ''' and '
             +'      A.asoid=B.asoid(+) and a.rcobid=b.rcobid(+) and a.detrcobid=b.detrcobid(+) and b.usercobid(+) is null and b.EST_COB_COD(+) not in (''13'',''04'') '
             +'Group by A.asoid,A.rcobid,A.detrcobid ';
       Dm1.cdsResol.Close;
       Dm1.cdsResol.DataRequest(xsql);
       Dm1.cdsResol.Open;
      End;
      //Fin HPC_201612_COB

//Inicio COB_201822_HPC    : Se adiciona el importe para eliminar el registro
      If (Dm1.cdsResol.FieldByName('importe').AsCurrency=Dm1.cdsResol.FieldByName('cremtocob').AsCurrency) or
         (Dm1.cdsResol.FieldByName('importe').AsCurrency<Dm1.cdsResol.FieldByName('cremtocob').AsCurrency) then
      Begin
         Xsql := 'Delete Cob340 Where asoid=''' + xAsoid + ''' and rcobid=''' + vsRcobid + ''' and detrcobid=''' + vsDetRcobid + ''' and importe='+CurrToStr(Dm1.cdsResol.FieldByName('importe').AsCurrency);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End
      Else
      Begin
        xsql := 'Update Cob340 Set importe='+CurrToStr(Dm1.cdsResol.FieldByName('importe').AsCurrency-Dm1.cdsResol.FieldByName('cremtocob').AsCurrency) +
                ' Where asoid='''+xAsoid+''' and rcobid='''+vsRcobid+''' and detrcobid='''+vsDetRcobid+''' and importe='+CurrToStr(Dm1.cdsResol.FieldByName('importe').AsCurrency);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        ShowMessage('EL EXCESOS NO SE HA DESCARGADO EN SU TOTALIDAD, VERIFIQUE');
      End;
   End;
//Fin COB_201822_HPC
   BitSalirClick(Self);
End;

Procedure TFNuevoPago.DBLCBancoChange(Sender: TObject);
Begin
   EdtDocPag.Text := '';
   If DM1.cdsCBcos.Locate('BANCOID', VarArrayof([DBLCBanco.text]), []) Then
   Begin
      EdtDesBan.Text := DM1.cdsCBcos.fieldbyname('BANCONOM').AsString;
      If Dm1.vsCobranza = 'B' Then
      Begin
         DBLCuenta.SetFocus;
         DBLCuenta.DropDown;
      End;
   End
   Else
   Begin
      If Length(DBLCBanco.Text) <> 2 Then
      Begin
         Beep;
         EdtDesBan.Text := '';
      End;
   End
End;

Procedure TFNuevoPago.EdtDesBanChange(Sender: TObject);
Var
   XSQL: String;
Begin

   If Dm1.vsCobranza = 'B' Then //Banco
   Begin
      If DM1.xOfiDes = '01' Then
         xSQL := 'Select BANCOID,CCBCOID,CPTOID,LONGITUD '
            + '  from TGE106 '
            + ' where BANCOID=' + QuotedStr(Trim(DBLCBanco.Text))
            + '   and CIAID=''02'' AND TMONID=''N'' AND ACTIVO=''S'' '
            + '   and CPTOID IS NOT NULL '
            + ' order By CCBCOID'
      Else
         xSQL := 'Select BANCOID,CCBCOID,CPTOID,LONGITUD '
            + '  from TGE106 '
            + ' where BANCOID=' + QuotedStr(Trim(DBLCBanco.Text))
            + '   and CIAID=''02'' AND TMONID=''N'' AND ACTIVO=''S'' '
            + '   and CPTOID IS NOT NULL AND COBCONS=''1'' '
            + ' order By CCBCOID';
      DM1.cdsCtasBco.Close;
      DM1.cdsCtasBco.DataRequest(xSQL);
      DM1.cdsCtasBco.Open;
      DBLCuenta.LookupTable := Dm1.CdsCtasBco;

      If DM1.cdsCtasBco.RecordCount = 1 Then
      Begin
         DBLCuenta.Text := DM1.cdsCtasBco.fieldbyname('CCBCOID').AsString;
      End
      Else
         If DM1.cdsCtasBco.RecordCount > 1 Then
         Begin
            EdtPreBco.Text := DM1.cdsCtasBco.fieldbyname('CPTOID').AsString;
            DBLCuenta.SetFocus;
            DBLCuenta.DropDown;
         End;
   End;

End;

Procedure TFNuevoPago.edtmonpagKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TFNuevoPago.edtmonpagExit(Sender: TObject);
Begin
   If Length(Trim(EdtMonpag.Text)) = 0 Then
   Begin
      EdtMonpag.Text := '0.00';
   End;
   EdtMonpag.Text := FormatFloat('###,###.00', DM1.Valores(EdtMonpag.Text));
   Btnfiltra.SetFocus;
End;

Procedure TFNuevoPago.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
End;

Procedure TFNuevoPago.DBLCuentaChange(Sender: TObject);
Begin
   If (Length(Trim(DBLCuenta.Text)) > 0) And (Dm1.vsCobranza = 'B') Then
   Begin
      DtpFecPag.SetFocus;
      DtpFecPag.DropDown;
   End;
End;

Procedure TFNuevoPago.DBLCuentaExit(Sender: TObject);
Begin
   If Dm1.vsCobranza = 'B' Then
   Begin
      DtpFecPag.SetFocus;
      DtpFecPag.DropDown;
   End;
End;

Procedure TFNuevoPago.DBLCBancoExit(Sender: TObject);
Begin
   If Dm1.vsCobranza = 'B' Then
   Begin
      DBLCuenta.SetFocus;
      DBLCuenta.DropDown;
   End;
End;

Procedure TFNuevoPago.BtnfiltraClick(Sender: TObject);
//INICIO : DPP_201211_COB
{
Var
   xSQL, xADE, xWhere1, xwhere2: String;

   Xano,Xmes,xwhere3:String;

   xAcumula, xSumSaldo, xSumPago, xNuevoSaldo: currency;
   xAplica, xCero: boolean;
   xId: integer;
   xwhere4:String;
Begin
    vnMonpag:=dm1.Valores(edtmonpag.Text);
    If (vcuenta=0) and (chkXCre.Checked) Then
      xwhere4:=' AND A.CREDID='''+DM1.cdsGradoI.Fieldbyname('CREDID').Asstring+''' '
    Else xwhere4:='';

    If Length(trim(DtpFecPag.Text))=0 Then
    Begin
      ShowMessage('Debe ingresar la FECHA DE PAGO');
      Exit;
    End;

    If (CDSXPUCHOS.RecordCount>0) and (vsPorPuchos) Then
    Begin
     BtnFiltra2Click(Self);
     Exit;
    End;


   If Dm1.vsCobranza = 'B' Then xPer := FormatDateTime('YYYYMM', DtpFecPag.Date);

   //PERIODO ANTERIROR
     Xano := Copy(xPer,1,4);
     Xmes := Copy(xPer,5,2);
     Xmes := DM1.StrZero(Inttostr(Strtoint(Xmes)-1),2);
     If Xmes='00'then
     Begin
        Xmes := '12';
        Xano := Inttostr(Strtoint(Xano)-1);
     End;
     xPer2:= Xano+xMes;

   EdtMonpag.Text := FormatFloat('###,###.00', DM1.Valores(EdtMonpag.Text));
   edtExcedente.Text := '0.00';
   CDSABONO.EmptyDataSet;
   grbExcedente.Visible := False;
   CDSABONO.Active := false;
   CDSABONO.Active := true;
   If rdgMetodoPagoaFuturo.ItemIndex = 0 Then
      XADE := 'S'
   Else
      If rdgMetodoPagoaFuturo.ItemIndex = 1 Then
         XADE := 'N'
      Else
         XADE := '';

   If chkCuoMesVencida.Checked = True Then
   Begin
      xWhere1 := '((A.CREANO || A.CREMES <= ''' + Xper + ''') OR (A.CREANO || A.CREMES <= ''' + Xper2 + ''')) ';
      xWhere2 := 'N';
   End
   Else
   Begin
       xWhere1 := 'A.CREANO || A.CREMES < ''' + XPER2 + ''' ';
       xWhere3 := 'S';
      xWhere2 := 'S';
   End;

   If chkCuoMesanteriorVencida.Checked Then
   Begin
    xWhere1 := '(A.CREANO || A.CREMES <= ''' + Xper2 + ''') ';
    xWhere3 := 'N';
   End
   Else If not chkCuoMesVencida.Checked Then
   Begin
    xWhere1 := 'A.CREANO || A.CREMES < ''' + XPER2 + ''' ';
    xWhere2 := 'S';
    xWhere3 := 'S';
   End;


   XSQL :=
     //---VENCIDAS (NORMALES Y DIFERIDAS)
   'SELECT ''1'' REF, (TO_CHAR(CREFVEN, ''YYYYMMDD'') * 1) POS,''S'' INTERES, '
      + '       A.ASOID, A.ASOCODMOD,1 FLECHA, A.ASOAPENOM, A.ASOCODAUX,TIPCREDES,'
      + '       A.CREAMORT, A.CREINTERES, A.CREFLAT, A.CRECAPITAL, A.CREMTOINT, A.CREMTOFLAT, '
      + '       A.CREMTO, A.CREDID, SUBSTR(A.CREDID,9,7) CREDITO, A.CRECUOTA, '
      + '       A.CREANO, A.CREMES, A.CREFVEN, A.TIPCREID, A.FORPAGOID, A.FORPAGOABR, '
      + '       A.CREESTID, A.CREESTADO, A.PERCOB, B.CREFOTORG, '
      + '       NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0) SALDO '
      + '  FROM CRE302 A, CRE301 B '
      + ' WHERE A.ASOID = ''' + XASOID + ''' '+xwhere4+' AND A.CREESTID in (''14'', ''02'', ''27'', ''11'') '
      + '   AND A.FORPAGOID = ''01'' '
      + '   AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID '
      + '   AND B.CREESTID NOT IN (''13'', ''04'', ''99'') '
     //--NO INTERESA QUE SEA DIFERIDA O NO, SINO QUE ESTE VENCIDA EN FUNCION AL PERIODO DE DESCARGO
      + '   AND ' + xWhere1
      + ' UNION ALL '
     //--(CUOTAS DIFERIDAS A FUTURO)
   + 'SELECT ''2'' REF, (TO_CHAR(CREFVEN, ''YYYYMMDD'') * 1) POS, ''S'' INTERES, '
      + '       A.ASOID, A.ASOCODMOD,1 FLECHA, A.ASOAPENOM, A.ASOCODAUX,TIPCREDES,'
      + '       A.CREAMORT, A.CREINTERES, A.CREFLAT, A.CRECAPITAL, A.CREMTOINT, A.CREMTOFLAT, '
      + '       A.CREMTO, A.CREDID,SUBSTR(A.CREDID,9,7) CREDITO, A.CRECUOTA, '
      + '       A.CREANO, A.CREMES, A.CREFVEN, A.TIPCREID, A.FORPAGOID, A.FORPAGOABR, '
      + '       A.CREESTID, A.CREESTADO, A.PERCOB, B.CREFOTORG, '
      + '       NVL(A.CREMTO,0) -NVL(A.CREMTOCOB,0) SALDO '
      + '  FROM CRE302 A, CRE301 B '
      + ' WHERE A.ASOID = ''' + XASOID + ''' '+xwhere4+' AND A.CREESTID IN (''14'', ''02'', ''27'', ''11'') '
      + '   AND A.FORPAGOID = ''01'' '
     //--CREDITO CON DIFERIDOS
   + '   AND 0 < (SELECT COUNT(1) FROM CRE302 WHERE ASOID = ''' + XASOID + ''' '
      + '   AND CREDID = A.CREDID AND CREFVEN <> CREFVENINI AND CREFVENINI IS NOT NULL) '
      + '   AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID '
      + '   AND B.CREESTID NOT IN (''13'', ''04'', ''99'') '
     //--ES UNA CUOTA DIFERIDA
   + '   AND A.CREFVEN <> A.CREFVENINI AND A.CREFVENINI IS NOT NULL '
     //--NO ESTA VENCIDA EN FUNCION AL PERIODO DE DESCARGO
   + '   AND A.CREANO || A.CREMES > ''' + XPER + ''' '
     //--(CUOTAS A FUTURO NO DIFERIDAS) ESTA  FUNCION A QUE SE SELECCIONE HACIA ADELANTE O HACIA ATRAS XADE='S' HACIA ADELANTE XADE='N' HACIA ATRAS
   + ' UNION ALL '
      + 'SELECT ''3'' REF, '
      + '       CASE WHEN ''' + XADE + '''=''S'' '
      + '            THEN (TO_CHAR(A.CREFVEN, ''YYYYMMDD'') * 1) '
      + '            ELSE (TO_CHAR(A.CREFVEN, ''YYYYMMDD'') * -1) END POS,'
      + '       CASE WHEN ''' + XADE + '''=''S'' THEN ''S'' ELSE ''N'' END INTERES,'
      + '       A.ASOID, A.ASOCODMOD,'
      + '       CASE WHEN ''' + XADE + '''=''S'' THEN 1 ELSE 2 END FLECHA,'
      + '       A.ASOAPENOM, A.ASOCODAUX,TIPCREDES, A.CREAMORT, A.CREINTERES, A.CREFLAT,'
      + '       A.CRECAPITAL, A.CREMTOINT, A.CREMTOFLAT, A.CREMTO, A.CREDID, '
      + '       SUBSTR(A.CREDID,9,7) CREDITO, A.CRECUOTA, A.CREANO, A.CREMES, A.CREFVEN, '
      + '       A.TIPCREID, A.FORPAGOID, A.FORPAGOABR, A.CREESTID, A.CREESTADO, '
      + '       A.PERCOB, B.CREFOTORG, '
      + '       CASE WHEN ''' + XADE + '''=''S'' '
      + '            THEN NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0) '
      + '            ELSE (NVL(A.CREAMORT,0)+ NVL(A.CREFLAT,0))-NVL(A.CREMTOCOB,0) END SALDO '
   + '  FROM CRE302 A, CRE301 B '
      + ' WHERE ''' + XAFUTURO + '''=''S'' '
      + '   AND A.ASOID =''' + XASOID + ''' '+xwhere4
      + '   AND A.CREESTID in (''14'', ''02'', ''27'', ''11'') '
      + '   AND A.FORPAGOID = ''01'' '
     //--CUOTA PENDIENTE A FUTURO
   + '   AND A.CREANO || A.CREMES > ''' + XPER + ''' '
     //--NO ES DIFERIDO
   + '   AND (A.CREFVEN = A.CREFVENINI OR A.CREFVENINI IS NULL) '
      + '   AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID '
      + '   AND B.CREESTID NOT IN (''13'', ''04'', ''99'') '
     //--(CUOTAS DEL MES NORMALES O DIFERIDAS)
   + ' UNION ALL '
      + 'SELECT ''4'' REF, (TO_CHAR(CREFVEN, ''YYYYMMDD'') * 1) POS, ''S'' INTERES, '
      + '       A.ASOID, A.ASOCODMOD,3 FLECHA, A.ASOAPENOM, A.ASOCODAUX,TIPCREDES,'
      + '       A.CREAMORT, A.CREINTERES, A.CREFLAT, A.CRECAPITAL, A.CREMTOINT, A.CREMTOFLAT, '
      + '       A.CREMTO, A.CREDID,SUBSTR(A.CREDID,9,7) CREDITO, A.CRECUOTA, A.CREANO, A.CREMES, '
      + '       A.CREFVEN, A.TIPCREID, A.FORPAGOID, A.FORPAGOABR, A.CREESTID, A.CREESTADO, '
      + '       A.PERCOB, B.CREFOTORG, NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0) SALDO '
      + '  FROM CRE302 A, CRE301 B '
      + ' WHERE A.ASOID = ''' + XASOID + ''' '+xwhere4
      + '   AND A.CREESTID in (''14'', ''02'', ''27'', ''11'') '
      + '   AND A.FORPAGOID = ''01'' '
      + '   AND ''' + xWhere2 + '''=''S'' '
      //--CUOTA DEL MES DEL PERIODO SEGUN PAGO POR BANCO
      + '   AND A.CREANO || A.CREMES = ''' + XPER+ ''' '
      //LA CUOTA DEL MES SE CONSIDERA LAS QUE ESTAN NORMALES O DIFERIDAS, SE RETIRA QUE SEAN "NO DIFERIDOS"
      //--NO ES DIFERIDO
      // + '   AND (A.CREFVEN = A.CREFVENINI OR A.CREFVENINI IS NULL) '
      + '   AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID '
      + '   AND B.CREESTID NOT IN (''13'', ''04'', ''99'') '
      + ' UNION ALL '
      + 'SELECT ''4'' REF, (TO_CHAR(CREFVEN, ''YYYYMMDD'') * 1) POS, ''S'' INTERES, '
      + '       A.ASOID, A.ASOCODMOD,3 FLECHA, A.ASOAPENOM, A.ASOCODAUX,TIPCREDES,'
      + '       A.CREAMORT, A.CREINTERES, A.CREFLAT, A.CRECAPITAL, A.CREMTOINT, A.CREMTOFLAT, '
      + '       A.CREMTO, A.CREDID,SUBSTR(A.CREDID,9,7) CREDITO, A.CRECUOTA, A.CREANO, A.CREMES, '
      + '       A.CREFVEN, A.TIPCREID, A.FORPAGOID, A.FORPAGOABR, A.CREESTID, A.CREESTADO, '
      + '       A.PERCOB, B.CREFOTORG, NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0) SALDO '
      + '  FROM CRE302 A, CRE301 B '
      + ' WHERE A.ASOID = ''' + XASOID + ''' '+xwhere4
      + '   AND A.CREESTID in (''14'', ''02'', ''27'', ''11'') '
      + '   AND A.FORPAGOID = ''01'' '
      + '   AND ''' + xWhere3 + '''=''S'' '
      //--CUOTA DEL MES DEL PERIODO SEGUN PAGO POR BANCO
      + '   AND A.CREANO || A.CREMES = ''' + XPER2+ ''' '
      //LA CUOTA DEL MES SE CONSIDERA LAS QUE ESTAN NORMALES O DIFERIDAS, SE RETIRA QUE SEAN "NO DIFERIDOS"
      //--NO ES DIFERIDO
      //+ '   AND (A.CREFVEN = A.CREFVENINI OR A.CREFVENINI IS NULL) '
      + '   AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID '
      + '   AND B.CREESTID NOT IN (''13'', ''04'', ''99'') '
      + ' ORDER BY REF,POS,CREFOTORG ';
   Dm1.cdsRegCob.Close;
   Dm1.cdsRegCob.DataRequest(XSQL);
   Dm1.cdsRegCob.Open;

   Dm1.cdsRegCob.Last;
   While Not Dm1.cdsRegCob.Bof Do
   Begin
      CDSABONO.Insert;
      CDSABONO.FieldByName('CREDITO').AsString := Dm1.cdsRegCob.FieldByname('CREDITO').AsString;
      CDSABONO.FieldByName('CREDID').AsString := Dm1.cdsRegCob.FieldByname('CREDID').AsString;
      CDSABONO.FieldByName('CUOTA').AsInteger := Dm1.cdsRegCob.FieldByname('CRECUOTA').AsInteger;
      CDSABONO.FieldByName('TIPCREDES').AsString := Dm1.cdsRegCob.FieldByname('TIPCREDES').AsString;
      CDSABONO.FieldByName('FVENCIMIENTO').AsDateTime := Dm1.cdsRegCob.FieldByname('CREFVEN').AsDateTime;
      CDSABONO.FieldByName('CINTERES').AsString := Dm1.cdsRegCob.FieldByname('INTERES').AsString;
      CDSABONO.FieldByName('SALDO').AsFloat := Dm1.cdsRegCob.FieldByname('SALDO').AsFloat;
      CDSABONO.FieldByName('FLECHA').asstring := Dm1.cdsRegCob.FieldByname('FLECHA').asstring;
      CDSABONO.FieldByName('AMORTIZACION').AsFloat := Dm1.cdsRegCob.FieldByname('CRECAPITAL').AsFloat;
      CDSABONO.FieldByName('INTERES').AsFloat := Dm1.cdsRegCob.FieldByname('CREMTOINT').AsFloat;
      CDSABONO.FieldByName('INTERESCRE310').AsFloat := VerificaInteresCre310(XASOID,Dm1.cdsRegCob.FieldByname('CREDID').AsString,Dm1.cdsRegCob.FieldByname('CRECUOTA').AsInteger);
      CDSABONO.FieldByName('FLAT').AsFloat := Dm1.cdsRegCob.FieldByname('CREMTOFLAT').AsFloat;
      If Dm1.cdsRegCob.FieldByname('REF').AsString = '1' Then CDSABONO.FieldByName('MODO').asstring := 'VENCIDA';
      If Dm1.cdsRegCob.FieldByname('REF').AsString = '2' Then CDSABONO.FieldByName('MODO').asstring := 'DIFERIDAS';
      If Dm1.cdsRegCob.FieldByname('REF').AsString = '3' Then CDSABONO.FieldByName('MODO').asstring := 'A FUTURO';
      If Dm1.cdsRegCob.FieldByname('REF').AsString = '4' Then CDSABONO.FieldByName('MODO').asstring := 'MES PAGO';
      Dm1.cdsRegCob.Prior;
      CDSABONO.Post;
   End;

   TNumericField(CDSABONO.fieldbyname('PAGO')).DisplayFormat := '###,###.#0';
   TNumericField(CDSABONO.fieldbyname('ACUMULADO')).DisplayFormat := '###,###.#0';
   TNumericField(CDSABONO.fieldbyname('SALDO')).DisplayFormat := '###,###.#0';

   CDSABONO.First;
   xSaldoFinal := dm1.Valores(EdtMonPag.Text);
   xacumula := 0.00;
   xAplica := True;
   xcero := False;
   xId := 1;
   xSumSaldo := 0.00;
   xSumPago := 0.00;
   xNuevoSaldo := 0.00;

   While Not CDSABONO.Eof Do
   Begin
      CDSABONO.Edit;
      CDSABONO.fieldByname('Id').AsInteger := xId;
      xid := xid + 1;
      xSumSaldo := xSumSaldo + CDSABONO.FieldByName('SALDO').AsFloat;

      If ((CDSABONO.FieldByName('SALDO').AsCurrency <= xSaldoFinal) And (xAplica)) Then
      Begin
         CDSABONO.Edit;
         CDSABONO.FieldByName('PAGO').AsFloat := CDSABONO.FieldByName('SALDO').AsFloat;
         xSumPago := xSumPago + CDSABONO.FieldByName('SALDO').AsFloat;
         xSaldoFinal := xSaldoFinal - CDSABONO.FieldByName('SALDO').AsFloat;
         xacumula := xacumula + CDSABONO.FieldByName('SALDO').AsFloat;
         CDSABONO.FieldByName('ACUMULADO').AsFloat := xacumula;
      End
      Else
      Begin
         If rdgMetodoPagoaFuturo.ItemIndex = 0 Then
         Begin
            If (xSaldoFinal > 0.00) And
               ((CDSABONO.FieldByName('MODO').Asstring <> 'A FUTURO') And (CDSABONO.FieldByName('MODO').Asstring <> 'MES PAGO')) Then
            Begin
               CDSABONO.Edit;
               CDSABONO.FieldByName('PAGO').AsFloat := xSaldoFinal;
               xSumPago := xSumPago + xSaldoFinal;
               xacumula := xacumula + xSaldoFinal;
               xSaldoFinal := xSaldoFinal - xSaldoFinal;
               CDSABONO.FieldByName('ACUMULADO').AsFloat := xacumula
            End
            Else
            Begin
               CDSABONO.Edit;
               CDSABONO.FieldByName('FLECHA').AsInteger := 0;
               CDSABONO.FieldByName('PAGO').AsFloat := 0;
               CDSABONO.FieldByName('ACUMULADO').AsFloat := 0;
               xAplica := False
            End;
         End;
         If rdgMetodoPagoaFuturo.ItemIndex = 1 Then
         Begin
            CDSABONO.Edit;
            CDSABONO.FieldByName('PAGO').AsFloat := xSaldoFinal;
            xSumPago := xSumPago + xSaldoFinal;
            xacumula := xacumula + xSaldoFinal;
            xSaldoFinal := xSaldoFinal - xSaldoFinal;
            CDSABONO.FieldByName('ACUMULADO').AsFloat := xacumula;
            xAplica := False;
         End;
      End;

      If (xCero) Then
      Begin
         CDSABONO.Edit;
         CDSABONO.FieldByName('ACUMULADO').AsFloat := 0;
         CDSABONO.FieldByName('PAGO').AsFloat := 0;
         CDSABONO.FieldByName('FLECHA').AsFloat := 0;
      End;

      If (xacumula = dm1.Valores(EdtMonPag.Text)) And ((rdgMetodoPagoaFuturo.ItemIndex = 1) Or (rdgMetodoPagoaFuturo.ItemIndex = -1)) Then
      Begin
         xcero := True;
      End;

      If (CDSABONO.FieldByName('CINTERES').AsString = 'N') And (CDSABONO.FieldByName('INTERES').AsFloat > 0) Then
      Begin
         If CDSABONO.FieldByName('PAGO').AsFloat > 0 Then
         Begin
            MessageDlg('La CUOTA N°' + IntToStr(CDSABONO.FieldByName('CUOTA').AsInteger)
               + ' debe ser sin INTERÉS, pero tiene un cobro de INTERÉS, CORRIJA antes de APLICAR', mtError, [mbOk], 0);
            CDSABONO.EmptyDataSet;
            grbExcedente.Visible := False;
            EXIT;
         End;
      End;

      //Casos que el INTERES NO SE REFLEJA EN EL CRONOGRAMA, PERO ESTA EN EL CRE310
       If (CDSABONO.FieldByName('CINTERES').AsString = 'N') then
       Begin
         If CDSABONO.FieldByName('INTERES').AsCurrency<>CDSABONO.FieldByName('INTERESCRE310').AsCurrency Then
         Begin
            MessageDlg('La CUOTA N°' + IntToStr(CDSABONO.FieldByName('CUOTA').AsInteger)
             + ' debe ser sin INTERÉS, pero tiene un cobro de INTERÉS, el cual NO SE REFLEJA EN EL CRONOGRAMA, CORRIJA antes de APLICAR', mtError, [mbOk], 0);
            CDSABONO.EmptyDataSet;
            grbExcedente.Visible := False;
            EXIT;
         End;
       End;

      CDSABONO.Next;
   End;
   dbgAbono.ColumnByName('SALDO').FooterValue := FloatToStrF(xSumSaldo, ffNumber, 10, 2);
   dbgAbono.ColumnByName('PAGO').FooterValue := FloatToStrF(xSumPago, ffNumber, 10, 2);

   If dm1.Valores(EdtMonPag.Text) - xSumPago > 0 Then
   Begin
      edtExcedente.Text := FormatFloat('###,###.00', dm1.Valores(EdtMonPag.Text) - xSumPago);
        XSQL:='SELECT ASOID,CREDID,CREESTADO FROM CRE302 WHERE ASOID='''+xAsoid+''' AND CREESTID IN (''19'',''04'',''13'') GROUP BY ASOID,CREDID,CREESTADO ';
        DM1.cdsResol.Close;
        DM1.cdsResol.DataRequest(XSQL);
        DM1.cdsResol.Open;
        If DM1.cdsResol.RecordCount>0 Then  ShowMessage('*** ALERTA ***, PRIMERO VERIFIQUE, EL ASOCIADO TIENE CREDITOS BLOQUEADOS ó ANULADOS ó EXTORNADOS');
        If (Dm1.vsCobranza = 'P') or (Dm1.vsCobranza = 'B') then Chkexceso.Checked := True else  Chkexceso.Checked := False;
      grbExcedente.Visible := True;
   End
   Else
   Begin
      grbExcedente.Visible := False;
      edtExcedente.Text    := '0.00';
   End;

   CDSABONO.First;
}

var Xsql,xano,xmes,XCREDID,xMesPagVencido:string;
    xSumPago,xSumSaldo:Currency;

begin



{
psASOID          : CODIGO DE ASOCIADO
psCREDID         : NUMERO DE CREDITO  ESTA EN BLANCO UNO LOS CREDITOS
psMESPAGVENCIDO  : '1' Cuota de los meses de pago como vencida
                   '2' Cuota del mes anterior como Vencida
                   '0' Cuotas de los meses de pago van al final
psMETOPAGO       : '0' De la mas antigua a la mas a futuro
                   '1' De las ma a futuro a la mas antigua, pagos adelantados
pvMonpago        : Importe total a Pagar
XPER             : año y mes de periodo de pago
XPER2            : año y mes del periodo anterior de pago
}


 //Control es necesario ingresar la fecha de pago
 If Length(trim(DtpFecPag.Text))=0 Then
 Begin
   ShowMessage('Debe ingresar la FECHA DE PAGO');
   Exit;
 End;

 //Cuando se va ha aplicar a la cuota con pagos parciales (dos a mas recibos)
 If (CDSXPUCHOS.RecordCount>0) and (vsPorPuchos) Then
 Begin
   BtnFiltra2Click(Self);
   Exit;
 End;


//Inicio: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto
   If (DBLCTipCob.Text = '03') And (CDSXPUCHOS.RecordCount=0) Then
   Begin

      If Length(Trim(EdtDocPag.Text))=0 Then
      begin
         MessageDlg('Verifique, Debe ingresar el Número de Documento', mtError, [mbOk], 0);
         Exit;
      end;

      // Se valida por numero de deposito, fecha de operación y el importe en el CRE310
      If ValidaIngresoBancos_Global(EdtDocPag.Text, DtpFecPag.Text, strtofloat(stringReplace(edtmonpag.text, ',', '', [rfReplaceAll]))) Then
      begin
         BitGrabar.Enabled:=False;
         Exit;
      end;
   End;
   BitGrabar.Enabled:=True;
//Fin: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto


 //Si es Banco el Periodo lo toma de la fecha de pago
 If Dm1.vsCobranza = 'B' Then xPer := FormatDateTime('YYYYMM', DtpFecPag.Date);
 vnMonpag:=dm1.Valores(edtmonpag.Text);
 //Se calcula el periodo anterior
 Xano := Copy(xPer,1,4);
 Xmes := Copy(xPer,5,2);
 Xmes := DM1.StrZero(Inttostr(Strtoint(Xmes)-1),2);
 If Xmes='00'then
 Begin
   Xmes := '12';
   Xano := Inttostr(Strtoint(Xano)-1);
 End;
 xPer2:= Xano+xMes;

 //vcuenta es un flag si es 0 el asociado esta al dia y para creditos paralelos puede amortizar a cualquiera de los creditos pendientes
 If (vcuenta=0) and (chkXCre.Checked) Then
    XCREDID:=DM1.cdsGradoI.Fieldbyname('CREDID').Asstring
 Else XCREDID:='';

 //Flag de seleccion de tomar los meses de pago como vencidas
 If chkCuoMesVencida.Checked Then
       xMesPagVencido:='1'
 Else
  If chkCuoMesanteriorVencida.Checked Then
       xMesPagVencido:='2'
  Else xMesPagVencido:='0';

 EdtMonpag.Text       := FormatFloat('###,###.00', DM1.Valores(EdtMonpag.Text));
 edtExcedente.Text    := '0.00';
 grbExcedente.Visible := False ;

 //Politica de descargo segun lo selecionado
 Xsql:='begin sp_cob_politica_amortizacion('''+XASOID+''','''+XCREDID+''','''+xMesPagVencido+''','''+IntToStr(rdgMetodoPagoaFuturo.ItemIndex)+''','+CurrToStr(dm1.Valores(edtmonpag.Text))+','''+xPer+''','''+xPer2+''',Null); End;';
 DM1.DCOM1.AppServer.EjecutaSQL(Xsql);

 Xsql:='Select * From COB_POLITICA_CUO_GTT Order by ref,pos,crefotorg ';
 Dm1.cdsGrupos.Close;
 Dm1.cdsGrupos.DataRequest(Xsql);
 Dm1.cdsGrupos.Open;
 dbgAbono.DataSource := Dm1.dsGrupos;

 DM1.cdsGrupos.DisableControls;
 DM1.cdsGrupos.First;
 xSumPago := 0;
 xSumSaldo:= 0;

 While Not DM1.cdsGrupos.Eof Do
 Begin

    //Casos que el es pagos a futuro parciales con interes
    If (DM1.cdsGrupos.FieldByName('CINTERES').AsString = 'N') And (DM1.cdsGrupos.FieldByName('INTERES').AsFloat > 0) Then
    Begin
       If DM1.cdsGrupos.FieldByName('PAGO').AsFloat > 0 Then
       Begin
          MessageDlg('La CUOTA N°' + IntToStr(Dm1.cdsGrupos.FieldByName('CUOTA').AsInteger)
                   + ' debe ser sin INTERÉS, pero tiene un cobro de INTERÉS, CORRIJA antes de APLICAR', mtError, [mbOk], 0);
            Dm1.cdsGrupos.EmptyDataSet;
          grbExcedente.Visible := False;
          DM1.cdsGrupos.EnableControls;
          EXIT;
       End;
    End;

   //Casos que el INTERES NO SE REFLEJA EN EL CRONOGRAMA, PERO ESTA EN EL CRE310
   If (DM1.cdsGrupos.FieldByName('CINTERES').AsString = 'N') then
   Begin
     If DM1.cdsGrupos.FieldByName('INTERES').AsCurrency<>DM1.cdsGrupos.FieldByName('INTERESCRE310').AsCurrency Then
     Begin
        MessageDlg('La CUOTA N°' + IntToStr(DM1.cdsGrupos.FieldByName('CUOTA').AsInteger)
                 + ' debe ser sin INTERÉS, pero tiene un cobro de INTERÉS, el cual NO SE REFLEJA EN EL CRONOGRAMA, CORRIJA antes de APLICAR', mtError, [mbOk], 0);
        Dm1.cdsGrupos.EmptyDataSet;
        grbExcedente.Visible := False;
        DM1.cdsGrupos.EnableControls;
        EXIT;
     End;
   End;

   xSumSaldo := xSumSaldo + DM1.cdsGrupos.FieldByName('SALDO').AsFloat;
   If DM1.cdsGrupos.FieldByName('PAGO').AsFloat > 0 Then
   Begin
     xSumPago := xSumPago + DM1.cdsGrupos.FieldByName('PAGO').AsFloat;
   End;

   Dm1.cdsGrupos.Next;
 End;

 DM1.cdsGrupos.EnableControls;
 DM1.cdsGrupos.First;

 dbgAbono.ColumnByName('SALDO').FooterValue := FloatToStrF(xSumSaldo, ffNumber,10,2);
 dbgAbono.ColumnByName('PAGO').FooterValue  := FloatToStrF(xSumPago, ffNumber,10,2);

 If dm1.Valores(EdtMonPag.Text) - xSumPago > 0 Then
 Begin

   //Inicio HPC_201612_COB
   //Se implementa una opcion para aplicar al FSC
   //Verifico si tiene FSC pendientes
     XSQL:='SELECT ASOID,NUM_DEU '+
           'FROM COB_FSC_DEUDA_FSC_CAB '+
           'WHERE ASOID = '''+xAsoid+'''  AND ID_EST_FSC IN (''02'', ''27'', ''14'') ';
     DM1.cdsResol.Close;
     DM1.cdsResol.DataRequest(XSQL);
     DM1.cdsResol.Open;
     grbExcedente.Caption :='Aplicar como exceso';
     If DM1.cdsResol.RecordCount>0 then
     Begin
       grbExcedente.Caption :='Aplicar al FSC'
     End;
   //Final HPC_201612_COB

   edtExcedente.Text := FormatFloat('###,###.00', dm1.Valores(EdtMonPag.Text) - xSumPago);
   XSQL:='SELECT ASOID,CREDID,CREESTADO FROM CRE302 WHERE ASOID='''+xAsoid+''' AND CREESTID IN (''19'',''04'',''13'') GROUP BY ASOID,CREDID,CREESTADO ';
   DM1.cdsResol.Close;
   DM1.cdsResol.DataRequest(XSQL);
   DM1.cdsResol.Open;
   If DM1.cdsResol.RecordCount>0 Then  ShowMessage('*** ALERTA ***, PRIMERO VERIFIQUE, EL ASOCIADO TIENE CREDITOS BLOQUEADOS ó ANULADOS ó EXTORNADOS');
   If (Dm1.vsCobranza = 'P') or (Dm1.vsCobranza = 'B') then Chkexceso.Checked := True else  Chkexceso.Checked := False;
//Inicio COB_201824_HPC
//Si es Planilla y existe un pago en exceso el flag de Aplicar como exceso debe estar desactivado por default
   If (Dm1.vsCobranza = 'P') and (grbExcedente.Caption='Aplicar como exceso') then Chkexceso.Checked := False;
//Fin  COB_201824_HPC
   grbExcedente.Visible := True;
 End
 Else
 Begin
   grbExcedente.Visible := False;
   edtExcedente.Text    := '0.00';
 End;
//FINAL : DPP_201211_COB
End;

Procedure TFNuevoPago.BitSalirClick(Sender: TObject);
Begin
   close;
   Dm1.cdsRegCob.close;
   Dm1.cdsRegCob.IndexFieldNames := '';
   Dm1.cdsConvenio.Close;
   Dm1.cdsConvenio.IndexFieldNames := '';
End;

Procedure TFNuevoPago.EdtDocPagKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Trim(DBLCTipCob.text) = '03' Then
   Begin
      If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
         Key := #0;
   End;
End;

Procedure TFNuevoPago.EdtDocPagExit(Sender: TObject);
Begin
   If Trim(DBLCTipCob.Text) = '03' Then
   Begin
       If (Length(Trim(EdtDocPag.Text)) <>0)  And
          (Length(Trim(EdtDocPag.Text)) <> DM1.cdsCtasBco.fieldbyname('LONGITUD').AsInteger) Then
      Begin
         MessageDlg('Verifique, Operación tiene un número diferente de Caracteres', mtError, [mbOk], 0);
         EdtDocPag.Text := '';
         EdtDocPag.SetFocus;
      End
   End
   Else
   Begin
      If Length(Trim(EdtDocPag.Text)) > 10 Then
      Begin
         MessageDlg('Verifique, número de Operación tiene más de 10 caracteres', mtError, [mbOk], 0);
         EdtDocPag.SetFocus;
      End;
   End;
End;


Function TFNuevoPago.ValidaIngresoBancos(xAsoId, xCreDocPag,
   xCrefPag: String): String;
Var
   xSQL: String;
Begin
   xSQL := 'Select ASOID,CREFPAG,CREDOCPAG,USUARIO,HREG '
      + '  from CRE310 '
      + ' where ASOID=' + QuotedStr(xAsoId)
      + '   and CREDOCPAG=' + QuotedStr(xCreDocPag)
      + '   and CREFPAG=' + QuotedStr(xCrefPag)
      + '   and CREESTID not in (''04'',''13'') '
      + '   and FORPAGID=''03'' ';
   DM1.cdsConvenio.Close;
   DM1.cdsConvenio.DataRequest(xSQL);
   DM1.cdsConvenio.Open;
   If DM1.cdsConvenio.RecordCount > 0 Then
      Result := DM1.cdsConvenio.FieldByName('USUARIO').AsString
         + '  Fecha y Hora  :  ' + DM1.cdsConvenio.FieldByName('HREG').AsString
   Else
      Result := '';

   DM1.cdsConvenio.Close;
End;


//Inicio: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto
Function TFNuevoPago.ValidaIngresoBancos_Global(xCreDocPag, xCrefPag: String; xMonto : Double) : Boolean;
Var
   xSQL, sDocPag, sMSG : String;
Begin
  sDocPag:= inttostr(strtoint(xCreDocPag));

  xSQL:='SELECT A.*, TO_NUMBER(CREDOCPAG), TO_NUMBER('+sDocPag+') FROM ( '
       + 'Select ASOID, MAX(ASOCODMOD) ASOCODMOD, ASOAPENOM, CREFPAG, SUBSTR(CREDOCPAG,4,12) CREDOCPAG, USUARIO, '
       +       ' max(HREG) HREG, sum(CREMTOCOB) CREMTOCOB, CREDOCPAG NUMOPE '
       +  ' from CRE310 '
       +  'where CREFPAG='+ QuotedStr( xCrefPag)
       +   ' and CREESTID not in (''04'',''13'') '
       +   ' and FORPAGID=''03'' '
       +  'group by ASOID, ASOAPENOM, CREFPAG, CREDOCPAG, USUARIO '
       +') A '
       +'WHERE CREDOCPAG like ''%'+sDocPag+''' '
       + ' and TO_NUMBER(CREDOCPAG)=TO_NUMBER('+sDocPag+') '
       + ' and CREMTOCOB='+ FloattoStr(xMonto);

   DM1.cdsConvenio.Close;
   DM1.cdsConvenio.DataRequest(xSQL);
   DM1.cdsConvenio.Open;

   If DM1.cdsConvenio.RecordCount > 0 Then
   begin
      sMSG:='BOLETA DE DEPOSITO YA FUE INGRESADA EN EL MODULO DE COBRANZAS'+#13+#13
           +'Por el Usuario : '+DM1.cdsConvenio.FieldByName('USUARIO').AsString +#13+#13
           +'Fecha y Hora de Registro : ' + DM1.cdsConvenio.FieldByName('HREG').AsString+#13+#13
           +'Numero Operación : ' + DM1.cdsConvenio.FieldByName('NUMOPE').AsString+#13+#13
           +'Al Asociado      : ' + DM1.cdsConvenio.FieldByName('ASOAPENOM').AsString+#13+#13
           +'Codigo modular   : ' + DM1.cdsConvenio.FieldByName('ASOCODMOD').AsString;
      MessageDlg(sMSG, mtError, [mbOk], 0);
      Result:=True;
      DM1.cdsConvenio.Close;
      Exit;
   end;

  xSQL:='SELECT A.*, TO_NUMBER(CREDOCPAG), TO_NUMBER('+sDocPag+') FROM ( '
       + 'Select ASOID, MAX(ASOCODMOD) ASOCODMOD, ASOAPENOM, TRANSFOPE CREFPAG, SUBSTR(TRANSNOPE,4,12) CREDOCPAG, USUARIO, '
       +       ' max(HREG) HREG, sum(TRANSMTO) CREMTOCOB, TRANSNOPE NUMOPE '
       +  ' from APO301 '
       +  'where TRANSFOPE='+ QuotedStr( xCrefPag)
       +   ' and FORPAGOID=''03'' '
       +  'group by ASOID, ASOAPENOM, TRANSFOPE, TRANSNOPE, USUARIO '
       +') A '
       +'WHERE CREDOCPAG like ''%'+sDocPag+''' '
       + ' and TO_NUMBER(CREDOCPAG)=TO_NUMBER('+sDocPag+') '
       + ' and CREMTOCOB='+ FloattoStr(xMonto);

   DM1.cdsConvenio.Close;
   DM1.cdsConvenio.DataRequest(xSQL);
   DM1.cdsConvenio.Open;

   If DM1.cdsConvenio.RecordCount > 0 Then
   begin
      sMSG:='BOLETA DE DEPOSITO YA FUE INGRESADA EN EL MODULO DE APORTES'+#13+#13
           +'Por el Usuario : '+DM1.cdsConvenio.FieldByName('USUARIO').AsString +#13+#13
           +'Fecha y Hora de Registro : ' + DM1.cdsConvenio.FieldByName('HREG').AsString+#13+#13
           +'Numero Operación : ' + DM1.cdsConvenio.FieldByName('NUMOPE').AsString+#13+#13
           +'Al Asociado      : ' + DM1.cdsConvenio.FieldByName('ASOAPENOM').AsString+#13+#13
           +'Codigo modular   : ' + DM1.cdsConvenio.FieldByName('ASOCODMOD').AsString;
      MessageDlg(sMSG, mtError, [mbOk], 0);
      Result:=True;
      DM1.cdsConvenio.Close;
      Exit;
   end;

//Inicio HPC_201612_COB
//Se implementa una opcion para aplicar al FSC - mensaje de duplicidad de aplicación de bancos al FSC
  xSQL:='SELECT A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.CREFPAG,A.CREDOCPAG,A.USUARIO,A.HREG,A.CREMTOCOB,A.NUMOPE,'
       +' TO_NUMBER(CREDOCPAG), TO_NUMBER('+sDocPag+') FROM ( '
       + 'Select ASOID, MAX(ASOCODMOD) ASOCODMOD, ASOAPENOM, FOPERAC CREFPAG, SUBSTR(NROOPE,4,12) CREDOCPAG,USU_COB_DEU USUARIO, '
       +       ' max(FEC_CRE_COB_FSC) HREG, sum(IMP_COB_DEU) CREMTOCOB, NROOPE NUMOPE '
       +  ' from COB_FSC_PAGOS_AL_FSC '
       +  'where FOPERAC='+ QuotedStr(xCrefPag)
       +   ' and FORPAGID=''03'' '
       +   ' and EST_COB_COD not in (''04'',''13'') '
       +  'group by ASOID, ASOAPENOM, FOPERAC, NROOPE, USU_COB_DEU '
       +') A '
       +'WHERE CREDOCPAG like ''%'+sDocPag+''' '
       + ' and TO_NUMBER(CREDOCPAG)=TO_NUMBER('+sDocPag+') '
       + ' and CREMTOCOB='+ FloattoStr(xMonto);

   DM1.cdsConvenio.Close;
   DM1.cdsConvenio.DataRequest(xSQL);
   DM1.cdsConvenio.Open;
   If DM1.cdsConvenio.RecordCount > 0 Then
   begin
      sMSG:='BOLETA DE DEPOSITO YA FUE INGRESADA AL FSC'+#13+#13
           +'Por el Usuario : '+DM1.cdsConvenio.FieldByName('USUARIO').AsString +#13+#13
           +'Fecha y Hora de Registro : ' + DM1.cdsConvenio.FieldByName('HREG').AsString+#13+#13
           +'Numero Operación : ' + DM1.cdsConvenio.FieldByName('NUMOPE').AsString+#13+#13
           +'Al Asociado      : ' + DM1.cdsConvenio.FieldByName('ASOAPENOM').AsString+#13+#13
           +'Codigo modular   : ' + DM1.cdsConvenio.FieldByName('ASOCODMOD').AsString;
      MessageDlg(sMSG, mtError, [mbOk], 0);
      Result:=True;
      DM1.cdsConvenio.Close;
      Exit;
   end;
//Final HPC_201612_COB   
   
   Result:=False;

End;
//Fin: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto


Procedure TFNuevoPago.chkCuoMesVencidaClick(Sender: TObject);
Begin
   //INICIO : DPP_201211_COB
   //CDSABONO.EmptyDataSet;
    Dm1.cdsGrupos.EmptyDataSet;
   //FINAL : DPP_201211_COB
   CDSXPUCHODESCARGO.EmptyDataSet;
   grbExcedente.Visible := False;
    edtExcedente.Text := '0.00';
    Chkexceso.Checked := False;
    If chkCuoMesanteriorVencida.Checked then chkCuoMesanteriorVencida.Checked:=False;
End;

Function TFNuevoPago.GnrCEfe: String;
Var
   xCorrAct: Integer;
   xCorrEfe, xSQL: String;
Begin
   xSQL := 'Select CREAREA,TIPO,CANCUO,CORREANO '
      + '  from CRE206 '
      + ' where CREAREA=''COB'' AND TIPO=''8'' '
      + '   and CORREANO=' + QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)), 7, 4))
      + '   and CANCUO is not null';
   DM1.cdsDfam.Close;
   DM1.cdsDfam.DataRequest(xSQL);
   DM1.cdsDfam.Open;
   If DM1.cdsDfam.RecordCount = 1 Then
   Begin
      xCorrAct := StrToInt(DM1.cdsDfam.fieldbyname('CANCUO').AsString) + 1;
      xCorrEfe := Format('%.10d', [xCorrAct]);
      DM1.cdsDfam.Edit;
      DM1.cdsDfam.fieldbyname('CANCUO').AsString := xCorrEfe;
      DM1.cdsDfam.ApplyUpdates(0);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If Trim(xCorrEfe) > Trim(DM1.cdsQry.fieldbyname('CANCUO').AsString) Then xCorrEfe := '';
      DM1.cdsQry.Close;

      Result := xCorrEfe;
   End;
   DM1.cdsDfam.Close;
End;

Procedure TFNuevoPago.ImpReciboEfe(xAsoId, xCreDocPag, xForpagId, xNuevo: String);
Var
   xSQLr: String;
   xMeses: Array[1..5] Of String;
   xCremToCob: Currency;
   xInt: Real;
   xLin, xLinPag, xLinTotPag, xPag, icc: Integer;
   xFechaImp, xImpCopia: String;
Begin
   mTexto01.Text := '';
   mTexto02.Text := '';
   mCopia.Visible := False;
   mCopia1.Visible := False;
   pplFecPag.Visible := False;
   pplFecPag1.Visible := False;
   xImpCopia := 'N';
   If xNuevo = 'S' Then
      xFechaImp := DateToStr(DM1.FechaSys)
   Else
      xFechaImp := DM1.cdsDLabo.FieldByname('CREFPAG').AsString;

   xSQLr := 'Select ASOID,CREDID,CRECUOTA,CREDOCPAG,CREESTID,CREANO,CREMES,CREMTOCOB,USUARIO,HREG '
      + '  from CRE310 '
      + ' where ASOID=' + QuotedStr(Trim(xAsoId))
      + '   and CREDOCPAG=' + QuotedStr(Trim(xCreDocPag))
      + '   and FORPAGID=' + QuotedStr(Trim(xForpagId))
      + '   and CREESTID NOT IN (''04'',''13'') '
      + '   and CREFPAG=' + QuotedStr(xFechaImp)
      + ' order by CREDID,CRECUOTA';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQLr);
   DM1.cdsQry2.Open;
   TNumericField(DM1.cdsQry2.fieldbyname('CREMTOCOB')).DisplayFormat := '###,###.#0';

   If xNuevo = 'N' Then
   Begin
      If DateToStr(DM1.FechaSys) <> DM1.cdsDLabo.FieldByname('CREFPAG').AsString Then
      Begin
         pplFecPag.Visible := True;
         pplFecPag1.Visible := True;
         pplFecPag.Caption := 'Fecha de Pago :' + datetostr(DM1.cdsQry2.FieldByname('HREG').AsDateTime);
         pplFecPag1.Caption := 'Fecha de Pago :' + datetostr(DM1.cdsQry2.FieldByname('HREG').AsDateTime);
         mCopia.Visible := True;
         mCopia1.Visible := True;
      End;
   End;

   If DM1.cdsQry2.RecordCount > 0 Then
   Begin

      xLinTotPag := 45; // 45 pagos por Pagina

      xSQLr := 'Select 1 item, RPAD('' '',1200,'' '') cuotas from dual order by item';
      DM1.cdsQry6.close;
      DM1.cdsQry6.DataRequest(xSQLr);
      DM1.cdsQry6.Open;

      For icc := 1 To 5 Do
         xMeses[icc] := '';
      xPag := 1;
      xLin := 0;
      xLinPag := 0;
      xCremToCob := 0;

      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.Eof Do
      Begin
         xLin := xLin + 1;
         xLinPag := xLinPag + 1;
         xCremToCob := xCremToCob + DM1.cdsQry2.FieldByname('CREMTOCOB').AsFloat;

         If xLin < 2 Then
            xMeses[xPag] := xMeses[xPag] + copy(DM1.cdsQry2.FieldByname('CREDID').AsString, 9, 7) + '/' + DM1.StrZero(TRIM(DM1.cdsQry2.FieldByname('CRECUOTA').AsString), 3) + ' ' + DM1.DesMes(StrToInt(DM1.cdsQry2.FieldByname('CREMES').AsString), 'S') + '.' + DM1.cdsQry2.FieldByname('CREANO').AsString + ' ' + DM1.StrSpace(FormatFloat('##,###.#0', DM1.cdsQry2.FieldByname('CREMTOCOB').AsFloat), 7) + ' |'
         Else
         Begin
            xLin := 0;
            xMeses[xPag] := xMeses[xPag] + copy(DM1.cdsQry2.FieldByname('CREDID').AsString, 9, 7) + '/' + DM1.StrZero(TRIM(DM1.cdsQry2.FieldByname('CRECUOTA').AsString), 3) + ' ' + DM1.DesMes(StrToInt(DM1.cdsQry2.FieldByname('CREMES').AsString), 'S') + '.' + DM1.cdsQry2.FieldByname('CREANO').AsString + ' ' + DM1.StrSpace(FormatFloat('##,###.#0', DM1.cdsQry2.FieldByname('CREMTOCOB').AsFloat), 7) + #13;
         End;

         If xLinPag >= xLinTotPag Then
         Begin
            inc(xPag);
            xLinPag := 0;
         End;
         DM1.cdsQry2.Next;
      End;

      DM1.cdsQry6.Edit;
      DM1.cdsQry6.FieldByname('CUOTAS').AsString := xMeses[1];
      DM1.cdsQry6.Post;

      For icc := 2 To 5 Do
      Begin
         If Length(xMeses[icc]) > 5 Then
         Begin
            DM1.cdsQry6.Append;
            DM1.cdsQry6.FieldByname('ITEM').AsInteger := icc;
            DM1.cdsQry6.FieldByname('CUOTAS').AsString := xMeses[icc];
            DM1.cdsQry6.Post;
         End;
      End;

      Documento01.Caption := 'Comprobante De Ingreso N° : ' + Copy(xCreDocPag, 6, 10);
      Documento02.Caption := Documento01.Caption;
      DBMonto01.Caption := 'S/.  ' + FormatFloat('###,###.#0', xCremToCob);
      DBMonto02.Caption := DBMonto01.Caption;
      Asoapenom01.Caption := Copy(Trim(DM1.cdsAso.FieldByname('ASOAPENOMDNI').AsString), 1, 40);
      Asoapenom02.Caption := Asoapenom01.Caption;
      xInt := Int(xCremToCob);
      NumLet01.Caption := '(' + Trim(DM1.xIntToLletras(StrToInt(FloatToStr(xInt)), DM1.Valores(FloatToStr(xCremToCob)))) + ')';
      NumLet02.Caption := NumLet01.Caption;
      mTexto01.Lines.Add('CRED./CUO  - MESES - IMPORTE |CRED./CUO  - MESES - IMPORTE');
      mTexto01.Lines.Add('----------------------------------------------------------');

      mTexto02.Lines.Add('CRED./CUO  - MESES - IMPORTE |CRED./CUO  - MESES - IMPORTE');
      mTexto02.Lines.Add('----------------------------------------------------------');

      Fecha01.Caption := 'Fecha de Impresión: ' + FormatDateTime('d "de" mmmm "del" yyyy', now) + ' - ' + TimeToStr(Time);

      Fecha02.Caption := Fecha01.Caption;
      Usuario01.Caption := Trim(DM1.CrgDescrip('USERID=' + QuotedStr(DM1.cdsQry2.FieldByname('USUARIO').AsString), 'TGE006', 'USERNOM'));
      Usuario02.Caption := Usuario01.Caption;

      ppdbCuotas.DataSource := DM1.dsQry6;

      RpRecCuo.Print;
      RpRecCuo.Cancel;
      ppdbCuotas.DataSource := Nil;
   End;
   DM1.cdsQry2.Close;
End;

Procedure TFNuevoPago.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   Dm1.cdsCtasBco.Close;
   Dm1.cdsCtasBco.IndexFieldNames := '';
   Dm1.cdsFormaPago.Close;
   Dm1.cdsFormaPago.IndexFieldNames := '';
   Dm1.cdsCBcos.Close;
   Dm1.cdsCBcos.IndexFieldNames := '';
   Dm1.cdsDFam.Close;
   Dm1.cdsDFam.IndexFieldNames := '';
   Dm1.cdsRegCob.Close;
   Dm1.cdsRegCob.IndexFieldNames := '';
   Dm1.cdsConvenio.Close;
   Dm1.cdsConvenio.IndexFieldNames := '';
   Dm1.cdsQry.Close;
   Dm1.cdsQry.IndexFieldNames := '';
   Dm1.cdsQry2.Close;
   Dm1.cdsQry2.IndexFieldNames := '';
   Dm1.cdsQry6.Close;
   Dm1.cdsQry6.IndexFieldNames := '';
   DM1.cdsResol.Close;
   DM1.cdsResol.IndexFieldNames :='';
   //INICIO : DPP_201211_COB
   DM1.cdsGrupos.Close;
   DM1.cdsGrupos.IndexFieldNames := '';
   //FINAL : DPP_201211_COB
End;

procedure TFNuevoPago.chkCuoMesanteriorVencidaClick(Sender: TObject);
begin
   //INICIO : DPP_201211_COB
   //CDSABONO.EmptyDataSet;
    Dm1.cdsGrupos.EmptyDataSet;
   //FINAL : DPP_201211_COB
    CDSXPUCHODESCARGO.EmptyDataSet;
    grbExcedente.Visible := False;
    edtExcedente.Text := '0.00';
    Chkexceso.Checked := False;
    If chkCuoMesVencida.Checked then chkCuoMesVencida.Checked:=False;
end;

Procedure TFNuevoPago.VerificaPrestParalelos(vsAsoid: String);
Var
   XSQL, vPer, vPer2, vAno, vMes: String;
Begin
   dbgCreditos.Selected.clear;
   dbgCreditos.Selected.Add('CREDITO'#9'7'#9'Crédito '#9'F');
   dbgCreditos.Selected.Add('CREFOTORG'#9'10'#9'F.Otorga'#9'F');
   dbgCreditos.Selected.Add('TIPCREDES'#9'27'#9'Tipo Crédito'#9#9);

   DtpFecReg.Date := Dm1.FechaSys;
   vPer := FormatDateTime('YYYYMM', DtpFecReg.Date);
   //Periodo anterior
   vAno := Copy(vPer, 1, 4);
   vMes := Copy(vPer, 5, 2);
   vMes := DM1.StrZero(Inttostr(Strtoint(vMes) - 1), 2);
   If vMes = '00' Then
   Begin
      vMes := '12';
      vAno := Inttostr(Strtoint(vAno) - 1);
   End;
   vPer2 := vAno + vMes;

   XSQL := 'SELECT REF,CREDID,CREDITO,MIN(CREFVEN)CREFVEN,CREFOTORG,SUM(NVL(SALDO,0)) SALDO '
          +'FROM  '
          +      '(SELECT ''1'' REF,A.CREDID,SUBSTR(A.CREDID,9,7) CREDITO,A.CREFVEN,B.CREFOTORG,(NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0)) SALDO '
          +      ' FROM CRE302 A, CRE301 B '
          +      ' WHERE A.ASOID = ''' + vsAsoid + ''' AND A.CREESTID in (''14'',''02'',''27'',''11'')  AND A.FORPAGOID = ''01'' '
          +      'AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID    AND B.CREESTID NOT IN (''13'',''04'',''99'') '
          +      'AND A.CREANO || A.CREMES < ''' + vPer2 + ''' '
          +      'UNION ALL '
          +      'SELECT ''2'' REF,A.CREDID,SUBSTR(A.CREDID,9,7) CREDITO,A.CREFVEN,B.CREFOTORG,(NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0))SALDO '
          +      'FROM CRE302 A, CRE301 B '
          +      'WHERE A.ASOID = ''' + vsAsoid + ''' AND A.CREESTID IN (''14'',''02'',''27'',''11'') AND A.FORPAGOID = ''01'' '
          +      ' AND 0 < (SELECT COUNT(1) FROM CRE302 WHERE ASOID = ''' + vsAsoid + '''  AND CREDID = A.CREDID '
          +      ' AND CREFVEN <> CREFVENINI AND CREFVENINI IS NOT NULL)    AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID '
          +      ' AND B.CREESTID NOT IN (''13'',''04'',''99'')    AND A.CREFVEN <> A.CREFVENINI AND A.CREFVENINI IS NOT NULL '
          +      ' AND A.CREANO || A.CREMES > ''' + vPer + ''' '
          +      'UNION ALL '
          +      'SELECT CASE WHEN A.CREESTID<>''14'' THEN ''1'' ELSE ''4'' END REF,A.CREDID,SUBSTR(A.CREDID,9,7) CREDITO,A.CREFVEN,B.CREFOTORG,(NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0)) SALDO '
          +      'FROM CRE302 A, CRE301 B '
          +      'WHERE A.ASOID = ''' + vsAsoid + ''' AND A.CREESTID in (''14'',''02'',''27'',''11'') AND A.FORPAGOID = ''01'' '
          +      ' AND A.CREANO || A.CREMES = ''' + vPer + ''' AND (A.CREFVEN = A.CREFVENINI OR A.CREFVENINI IS NULL) '
          +      ' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID    AND B.CREESTID NOT IN (''13'',''04'',''99'') '
          +      'UNION ALL '
          +      'SELECT CASE WHEN A.CREESTID<>''14'' THEN ''1'' ELSE ''4'' END REF, A.CREDID,SUBSTR(A.CREDID,9,7) CREDITO,A.CREFVEN,B.CREFOTORG,(NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0)) SALDO  '
          +      'FROM CRE302 A, CRE301 B '
          +      'WHERE A.ASOID = ''' + vsAsoid + ''' AND A.CREESTID in (''14'',''02'',''27'',''11'') AND A.FORPAGOID =''01'' '
          +      'AND A.CREANO || A.CREMES = ''' + vPer2 + '''  AND (A.CREFVEN = A.CREFVENINI OR A.CREFVENINI IS NULL)  '
          +      'AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID NOT IN (''13'',''04'',''99'') '
          +      'ORDER BY REF,CREFOTORG) '
          +      'GROUP BY REF,CREDID,CREDITO,CREFOTORG  ORDER BY REF';
   Dm1.cdsGradoI.Close;
   Dm1.cdsGradoI.DataRequest(XSQL);
   Dm1.cdsGradoI.Open;

   vcuenta := 0;
   While Not Dm1.cdsGradoI.Eof Do
   Begin
      If (Dm1.cdsGradoI.FieldByName('REF').AsString = '1') Or
         (Dm1.cdsGradoI.FieldByName('REF').AsString = '2') Then
      Begin
         vcuenta := vcuenta + 1;
      End;
      Dm1.cdsGradoI.Next;
   End;

   XSQL := 'SELECT '' ''CREDITO,'' ''CREFOTORG,'' ''TIPCREDES FROM DUAL ';
   Dm1.cdsGradoI.Close;
   Dm1.cdsGradoI.DataRequest(XSQL);
   Dm1.cdsGradoI.Open;
   dbgCreditos.Selected.clear;
   dbgCreditos.Selected.Add('CREDITO'#9'7'#9'Crédito '#9'F');
   dbgCreditos.Selected.Add('CREFOTORG'#9'10'#9'F.Otorga'#9'F');
   dbgCreditos.Selected.Add('TIPCREDES'#9'27'#9'Tipo Crédito'#9#9);
   dbgCreditos.DataSource := Dm1.dsGradoI;

   If vcuenta = 0 Then
   Begin
      XSQL := 'SELECT SUBSTR(A.CREDID,9,7) CREDITO,CREDID,CREFOTORG,TIPCREDES ' +
         'FROM CRE301 A WHERE ASOID=''' + vsAsoid + '''  AND CREESTID=''02'' ORDER BY CREFOTORG ASC ';
      Dm1.cdsGradoI.Close;
      Dm1.cdsGradoI.DataRequest(XSQL);
      Dm1.cdsGradoI.Open;
      dbgCreditos.DataSource := Dm1.dsGradoI;
      chkXcre.Enabled := True;
      chkXCre.Checked := True;
      GrbXCre.Enabled := True;
      rdgMetodoPagoaFuturo.ItemIndex := 1;
   End
   Else
   Begin
      chkXcre.Enabled := False;
      chkXCre.Checked := False;
      GrbXCre.Enabled := False;
      rdgMetodoPagoaFuturo.ItemIndex := 0;
   End;

End;

Procedure TFNuevoPago.chkXCreClick(Sender: TObject);
Begin
   //INICIO : DPP_201211_COB
   //CDSABONO.EmptyDataSet;
    Dm1.cdsGrupos.EmptyDataSet;
   //FINAL : DPP_201211_COB
   CDSXPUCHODESCARGO.EmptyDataSet;
   grbExcedente.Visible := False;
   edtExcedente.Text := '0.00';
   dbgAbono.ColumnByName('SALDO').FooterValue := '0.00';
   dbgAbono.ColumnByName('PAGO').FooterValue := '0.00';
   Chkexceso.Checked := False;
   If chkXCre.Checked Then
      GrbXCre.Enabled := True
   Else
      GrbXCre.Enabled := False;
End;


Procedure TFNuevoPago.dbgCreditosRowChanged(Sender: TObject);
Begin
   //INICIO : DPP_201211_COB
   //CDSABONO.EmptyDataSet;
    Dm1.cdsGrupos.EmptyDataSet;
   //FINAL : DPP_201211_COB
   grbExcedente.Visible := False;
   edtExcedente.Text := '0.00';
   dbgAbono.ColumnByName('SALDO').FooterValue := '0.00';
   dbgAbono.ColumnByName('PAGO').FooterValue := '0.00';
   Chkexceso.Checked := False;
End;


Function TFNuevoPago.VerificaInteresCre310(vsAsoid, vsCredid: String;
   VsCrecuota: Integer): currency;
Var
   Xsql: String;
Begin
   Xsql := 'Select nvl(Sum(nvl(Creinteres,0)),0) Creinteres From Cre310 ' +
      'Where Asoid=''' + vsAsoid + ''' And Credid=''' + vsCredid + ''' And  Crecuota=' + IntToStr(vsCrecuota) +
      'And Creestid not in (''13'',''04'',''99'') And Numdev is null ';
   Dm1.cdsGradoA.Close;
   Dm1.cdsGradoA.DataRequest(Xsql);
   Dm1.cdsGradoA.Open;
   If Dm1.cdsGradoA.RecordCount > 0 Then
      Result := Dm1.cdsGradoA.FieldByName('Creinteres').AsCurrency
   Else
      Result := 0.00;
End;

Procedure TFNuevoPago.dbgAbonoDblClick(Sender: TObject);
Var
   vssaldo, vstotal: currency;
Begin

   //INCIO : DPP_201211_COB
   {If (DM1.CDSABONO.FieldByName('PAGO').AsCurrency > 0) And
      (DM1.CDSABONO.FieldByName('PAGO').AsCurrency <> DM1.CDSABONO.FieldByName('SALDO').AsCurrency) Then
   Begin
      vssaldo := DM1.CDSABONO.FieldByName('SALDO').AsCurrency - DM1.CDSABONO.FieldByName('PAGO').AsCurrency;
      vstotal := Dm1.Valores(edtmonpag.Text) + vssaldo;
      ShowMessage('PARA CANCELAR ESTA CUOTA LE FALTA S/. ' + FormatCurr('###,###,###.00', vssaldo) + ' Y EL TOTAL SERIA S/. ' + FormatCurr('###,###,###.00', vstotal));
   End;

   If (DM1.CDSABONO.FieldByName('PAGO').AsCurrency > 0) And (CDSXPUCHODESCARGO.RecordCount > 0) Then
   Begin
      CDSXPUCHODESCARGO.Filter := 'CREDID=''' + DM1.CDSABONO.Fieldbyname('CREDID').AsString + ''' AND CRECUOTA=''' + DM1.CDSABONO.Fieldbyname('CUOTA').AsString + ''' AND TIPO=''CUO'' ';
      CDSXPUCHODESCARGO.Filtered := True;
      pnlDetBoletas.Left := 340;
      pnlDetBoletas.Top := 323;
      pnlDetBoletas.Visible := True;
      ActfootDetBoletas;
   End;}


   If (DM1.cdsGrupos.FieldByName('PAGO').AsCurrency > 0) And
      (DM1.cdsGrupos.FieldByName('PAGO').AsCurrency <> DM1.cdsGrupos.FieldByName('SALDO').AsCurrency) Then
   Begin
      vssaldo := DM1.cdsGrupos.FieldByName('SALDO').AsCurrency - DM1.cdsGrupos.FieldByName('PAGO').AsCurrency;
      vstotal := Dm1.Valores(edtmonpag.Text) + vssaldo;
      ShowMessage('PARA CANCELAR ESTA CUOTA LE FALTA S/. ' + FormatCurr('###,###,###.00', vssaldo) + ' Y EL TOTAL SERIA S/. ' + FormatCurr('###,###,###.00', vstotal));
   End;

   If (DM1.cdsGrupos.FieldByName('PAGO').AsCurrency > 0) And (CDSXPUCHODESCARGO.RecordCount > 0) Then
   Begin
      CDSXPUCHODESCARGO.Filter := 'CREDID=''' + DM1.cdsGrupos.Fieldbyname('CREDID').AsString + ''' AND CRECUOTA=''' + DM1.cdsGrupos.Fieldbyname('CUOTA').AsString + ''' AND TIPO=''CUO'' ';
      CDSXPUCHODESCARGO.Filtered := True;
      pnlDetBoletas.Left := 340;
      pnlDetBoletas.Top := 323;
      pnlDetBoletas.Visible := True;
      ActfootDetBoletas;
   End;
  //FINAL : DPP_201211_COB

End;

Procedure TFNuevoPago.dbgxPuchoIButtonClick(Sender: TObject);
Begin
   CDSXPUCHOS.Insert;
End;

Procedure TFNuevoPago.edtDocPag2KeyPress(Sender: TObject; Var Key: Char);
Begin
   If Trim(DBLCTipCob.text) = '03' Then
   Begin
      If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
         Key := #0;
   End;
End;

Procedure TFNuevoPago.edtmonpag2KeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TFNuevoPago.edtDocPag2Exit(Sender: TObject);
Begin
   If (Length(Trim(EdtDocPag2.Text)) <> 0) And
      (Length(Trim(EdtDocPag2.Text)) <> DM1.cdsCtasBco.fieldbyname('LONGITUD').AsInteger) Then
   Begin
      MessageDlg('Verifique, Operación tiene un número diferente de Caracteres', mtError, [mbOk], 0);
      EdtDocPag2.Text := '';
      EdtDocPag2.SetFocus;
      exit;
   End;
   DtpFecPag2.SetFocus;
   DtpFecPag2.DropDown;
End;

Procedure TFNuevoPago.BtnadicionaClick(Sender: TObject);
Begin
   If Dm1.Valores(edtmonpag2.Text) = 0 Then
   Begin
      ShowMessage('Debe ingresar el importe del documento');
      edtmonpag2.SetFocus;
      Exit
   End;

//Inicio: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto
   If Length(Trim(edtDocPag2.Text))=0 Then
   begin
      MessageDlg('Verifique, Debe ingresar el Número de Operación', mtError, [mbOk], 0);
      Exit;
   end;

   CDSXPUCHOS.First;
   while not CDSXPUCHOS.Eof do
   begin
       if CDSXPUCHOS.FieldByName('NROOPE').AsString=edtDocPag2.Text then
       begin
          MessageDlg('Verifique, Número '+edtDocPag2.Text+' ya fue ingresado en el Detalle', mtError, [mbOk], 0);
          exit;
       end;
       CDSXPUCHOS.Next;
   end;

   If (DBLCTipCob.Text = '03') Then
   Begin
      // Se valida por numero de deposito, fecha de operación y el importe en el CRE310
      If ValidaIngresoBancos_Global(edtDocPag2.Text, DtpFecPag2.Text, strtofloat(stringReplace(edtmonpag2.text, ',', '', [rfReplaceAll]))) Then
      begin
         BitGrabar.Enabled:=False;
         Exit;
      end;
   End;
   BitGrabar.Enabled:=True;
//Fin: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto

   CDSXPUCHOS.Insert;
   CDSXPUCHOS.FieldByName('NROOPE').AsString := edtDocPag2.Text;
   CDSXPUCHOS.FieldByName('FOPERAC').AsDateTime := DtpFecPag2.Date;
   CDSXPUCHOS.FieldByName('IMPORTE').AsCurrency := Dm1.Valores(edtmonpag2.Text);
   CDSXPUCHOS.Post;
   ActfootBoletas;
   edtDocPag2.Text := '';
   edtmonpag2.Text := '0.00';
   edtDocPag2.SetFocus;
End;

Procedure TFNuevoPago.edtmonpag2Exit(Sender: TObject);
Begin
   Btnadiciona.SetFocus;
End;

Procedure TFNuevoPago.BtnFiltra2Click(Sender: TObject);
Var
   vntotal: currency;
   xperiodo: String;
Begin
   vsPorPuchos := False;
   If (CDSXPUCHOS.RecordCount = 0) And (Not vsReProcesa) Then
   Begin
      vsReProcesa := False;
      exit;
   End;
   If (CDSXPUCHOS.RecordCount = 0) And (vsReProcesa) Then
   Begin
      //INICIO : DPP_201211_COB
      //CDSABONO.EmptyDataSet;
      Dm1.cdsGrupos.EmptyDataSet;
      //FINAL : DPP_201211_COB
      CDSXPUCHODESCARGO.EmptyDataSet;
      exit;
   End;

   CDSXPUCHOS.First;
   vntotal := 0.00;
   xperiodo := FormatDateTime('YYYYMM', CDSXPUCHOS.FieldByname('Foperac').AsDateTime);
   While Not CDSXPUCHOS.Eof Do
   Begin
      vntotal := vntotal + CDSXPUCHOS.FieldByname('Importe').AsCurrency;
      DtpFecPag.Date := CDSXPUCHOS.FieldByname('Foperac').AsDateTime;
      If FormatDateTime('YYYYMM', CDSXPUCHOS.FieldByname('Foperac').AsDateTime) <> xperiodo Then
      Begin
         ShowMessage('TODA LA INFORMACION DEBE SER DEL MISMO PERIODO');
         EXIT;
      End;
      CDSXPUCHOS.Next;
   End;
   edtmonpag.Text := CurrToStr(vntotal);
   BtnfiltraClick(Self);
   DistPagos;
   Btnfiltra.SetFocus;
   vsPorPuchos := True;
   pnlxPucho.Visible := False;
   //INICIO : DPP_201211_COB
   //CDSABONO.First;
   Dm1.cdsGrupos.First;
   //FINAL : DPP_201211_COB
   edtDocPag2.Text := '';
   edtmonpag2.Text := '0.00';
End;

Procedure TFNuevoPago.BtnPuchosClick(Sender: TObject);
Begin
//Inicio: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto
   EdtDocPag.Text:='';
//Fin: SPP_201307_COB : 17/04/2012 - Se validara el número de deposito por fecha y monto

   vsReProcesa := False;
   pnlxPucho.Left := 150;
   pnlxPucho.Top := 292;
   pnlxPucho.Visible := true;
End;

Procedure TFNuevoPago.dbgxPuchoKeyDown(Sender: TObject; Var Key: Word;
   Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      CDSXPUCHOS.Delete;
      ActfootBoletas;
      vsReProcesa := True;
   End;
End;

Function TFNuevoPago.DistPagos: String;
Var
   vnAbono, vnComoPago, vnExcedente: Currency;
   vsCredid, XSQL: String;
   vnCrecuota: integer;
Begin
   CDSXPUCHODESCARGO.EmptyDataSet;
   //INICIO : DPP_201211_COB
   //CDSABONO.DisableControls;
   //CDSABONO.First;
   Dm1.cdsGrupos.DisableControls;
   Dm1.cdsGrupos.First;
   //FINAL : DPP_201211_COB
   CDSXPUCHOS.First;

   //INICIO : DPP_201211_COB
   //vnAbono := CDSABONO.Fieldbyname('PAGO').AsCurrency;
   vnAbono := Dm1.cdsGrupos.Fieldbyname('PAGO').AsCurrency;
   //FINAL  : DPP_201211_COB
   vnComoPago := CDSXPUCHOS.FieldByName('IMPORTE').AsCurrency;
   vnExcedente := Dm1.Valores(edtExcedente.Text);

   //INICIO : DPP_201211_COB
   //While Not CDSABONO.Eof Do
   While Not Dm1.cdsGrupos.Eof Do
   //FINAL : DPP_201211_COB
   Begin
      //INICIO : DPP_201211_COB
      //If ((CDSABONO.FieldByName('PAGO').AsFloat > 0) And (CDSABONO.FieldByName('PROCESADO').AsString <> 'X') And (CDSABONO.RecordCount > 0)) Or (Chkexceso.Checked) Then
      If ((Dm1.cdsGrupos.FieldByName('PAGO').AsFloat > 0) And (Dm1.cdsGrupos.FieldByName('PROCESADO').AsString <> 'X') And (Dm1.cdsGrupos.RecordCount > 0)) Or (Chkexceso.Checked) Then
      //FINAL : DPP_201211_COB      
      Begin
         //INICIO : DPP_201211_COB
         //While (vnComoPago > 0) Or (Not CDSABONO.eof) Do
         While (vnComoPago > 0) Or (Not Dm1.cdsGrupos.eof) Do
        //FINAL : DPP_201211_COB
         Begin

            If vnAbono >= vnComoPago Then
            Begin
               CDSXPUCHODESCARGO.Insert;
               CDSXPUCHODESCARGO.FieldByName('TIPO').AsString := 'CUO';
               CDSXPUCHODESCARGO.FieldByName('NROOPE').AsString := CDSXPUCHOS.FieldByName('NROOPE').AsString;
               CDSXPUCHODESCARGO.FieldByName('FOPERAC').AsDateTime := CDSXPUCHOS.FieldByName('FOPERAC').AsDateTime;
               //INICIO : DPP_201211_COB
               //CDSXPUCHODESCARGO.FieldByName('CREDID').AsString := CDSABONO.FieldByName('CREDID').AsString;
               //CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsInteger := CDSABONO.FieldByName('CUOTA').AsInteger;
               //CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString := CDSABONO.FieldByName('CINTERES').AsString;
               //vsCredid := CDSABONO.FieldByName('CREDID').AsString;
               //vnCrecuota := CDSABONO.FieldByName('CUOTA').AsInteger;

               CDSXPUCHODESCARGO.FieldByName('CREDID').AsString := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
               CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsInteger := Dm1.cdsGrupos.FieldByName('CUOTA').AsInteger;
               CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString := Dm1.cdsGrupos.FieldByName('CINTERES').AsString;
               vsCredid := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
               vnCrecuota := Dm1.cdsGrupos.FieldByName('CUOTA').AsInteger;
               //FINAL : DPP_201211_COB

               CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsCurrency := vnComoPago;
               CDSXPUCHODESCARGO.Post;
               vnAbono := vnAbono - vnComoPago;
               vnComoPago := 0;
               CDSXPUCHOS.Next;
               vnComoPago := CDSXPUCHOS.FieldByName('IMPORTE').AsCurrency;
            End
            Else
            Begin
               If vnAbono > 0 Then
               Begin
                  CDSXPUCHODESCARGO.Insert;
                  CDSXPUCHODESCARGO.FieldByName('TIPO').AsString := 'CUO';
                  CDSXPUCHODESCARGO.FieldByName('NROOPE').AsString := CDSXPUCHOS.FieldByName('NROOPE').AsString;
                  CDSXPUCHODESCARGO.FieldByName('FOPERAC').AsDateTime := CDSXPUCHOS.FieldByName('FOPERAC').AsDateTime;

                  //INICIO : DPP_201211_COB
                  //CDSXPUCHODESCARGO.FieldByName('CREDID').AsString := CDSABONO.FieldByName('CREDID').AsString;
                  //CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsInteger := CDSABONO.FieldByName('CUOTA').AsInteger;
                  //CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString := CDSABONO.FieldByName('CINTERES').AsString;
                  //vsCredid := CDSABONO.FieldByName('CREDID').AsString;
                  //vnCrecuota := CDSABONO.FieldByName('CUOTA').AsInteger;

                  CDSXPUCHODESCARGO.FieldByName('CREDID').AsString    := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
                  CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsInteger := Dm1.cdsGrupos.FieldByName('CUOTA').AsInteger;
                  CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString  := Dm1.cdsGrupos.FieldByName('CINTERES').AsString;
                  vsCredid   := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
                  vnCrecuota := Dm1.cdsGrupos.FieldByName('CUOTA').AsInteger;
                  //FINAL : DPP_201211_COB

                  CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsCurrency := vnAbono;
                  CDSXPUCHODESCARGO.Post;
                  vnComoPago := vnComoPago - vnAbono;
                  vnAbono := 0;
               End
               Else
               Begin
                  //INICIO : DPP_201211_COB
                  //If CDSABONO.Eof Then
                  If Dm1.cdsGrupos.Eof Then
                  //FINAL : DPP_201211_COB
                  Begin
                     If Chkexceso.Checked Then
                     Begin
              //Si es excesos y no tiene cuotas aplicadas lo aplica a la ultima cuota cancelada
                        If Length(trim(vsCredid)) = 0 Then
                        Begin
                           XSQL := 'SELECT ASOID,CREDID,CRECUOTA '
                              + '  FROM (SELECT ASOID,CREDID,CRECUOTA,CREFPAG,ROWNUM '
                              + '        FROM CRE302 '
                              + '       WHERE ASOID=''' + xAsoid + ''' AND CREFPAG IS NOT NULL AND CREESTID NOT IN (''19'',''13'',''04'') '
                              + '       ORDER BY CREFPAG DESC,CRECUOTA DESC ) '
                              + ' WHERE ROWNUM=1';
                           DM1.cdsDFam.Close;
                           DM1.cdsDFam.DataRequest(XSQL);
                           DM1.cdsDFam.Open;
                           vsCredid := Dm1.cdsDFam.FieldByname('Credid').AsString;
                           vnCrecuota := Dm1.cdsDFam.FieldByname('Crecuota').AsInteger;
                        End;

                        If vnExcedente >= vnComoPago Then
                        Begin
                           CDSXPUCHODESCARGO.Insert;
                           CDSXPUCHODESCARGO.FieldByName('TIPO').AsString := 'EXC';
                           CDSXPUCHODESCARGO.FieldByName('NROOPE').AsString := CDSXPUCHOS.FieldByName('NROOPE').AsString;
                           CDSXPUCHODESCARGO.FieldByName('FOPERAC').AsDateTime := CDSXPUCHOS.FieldByName('FOPERAC').AsDateTime;
                           CDSXPUCHODESCARGO.FieldByName('CREDID').AsString := vsCredid;
                           CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsInteger := vnCrecuota;
                           CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsCurrency := vnComoPago;
                           CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString := '';
                           CDSXPUCHODESCARGO.Post;
                           vnExcedente := vnExcedente - vnComoPago;
                           vnComoPago := 0;
                           CDSXPUCHOS.Next;
                           If CDSXPUCHOS.Eof Then Break;
                           vnComoPago := CDSXPUCHOS.FieldByName('IMPORTE').AsCurrency;
                        End
                        Else
                           If vnExcedente > 0 Then
                           Begin
                              CDSXPUCHODESCARGO.Insert;
                              CDSXPUCHODESCARGO.FieldByName('TIPO').AsString := 'EXC';
                              CDSXPUCHODESCARGO.FieldByName('NROOPE').AsString := CDSXPUCHOS.FieldByName('NROOPE').AsString;
                              CDSXPUCHODESCARGO.FieldByName('FOPERAC').AsDateTime := CDSXPUCHOS.FieldByName('FOPERAC').AsDateTime;
                              CDSXPUCHODESCARGO.FieldByName('CREDID').AsString := vsCredid;
                              CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsInteger := vnCrecuota;
                              CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsCurrency := vnAbono;
                              CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString := '';
                              CDSXPUCHODESCARGO.Post;
                              vnComoPago := vnComoPago - vnExcedente;
                              vnExcedente := 0;
                           End
                           Else
                              Break;
                     End
                     Else
                        Break;
                  End;
                  //INICIO : DPP_201211_COB
                  //CDSABONO.Next;
                  //vnAbono := CDSABONO.Fieldbyname('PAGO').AsCurrency;
                  Dm1.cdsGrupos.Next;
                  vnAbono := Dm1.cdsGrupos.Fieldbyname('PAGO').AsCurrency;
                  //FINAL : DPP_201211_COB
               End;
            End;

         End;
      End;

   End;
   //INICIO : DPP_201211_COB
   //CDSABONO.EnableControls;
   Dm1.cdsGrupos.EnableControls;
   //FINAL : DPP_201211_COB
End;

Procedure TFNuevoPago.Button1Click(Sender: TObject);
Begin
   If (CDSXPUCHOS.RecordCount > 0) Or (vsReProcesa) Then
   Begin
      BtnFiltra2Click(Self);
   End;
   pnlxPucho.Visible := False;
   edtDocPag2.Text := '';
   edtmonpag2.Text := '0.00';
End;

Procedure TFNuevoPago.Button2Click(Sender: TObject);
Begin
   pnlDetBoletas.Visible := False;
   CDSXPUCHODESCARGO.Filtered := False;
End;

Procedure TFNuevoPago.grbExcedenteDblClick(Sender: TObject);
Begin
   If (Dm1.Valores(edtExcedente.Text) > 0) And (CDSXPUCHODESCARGO.RecordCount > 0) Then
   Begin
      //INICIO : DPP_201211_COB
      //CDSXPUCHODESCARGO.Filter := 'CREDID=''' + CDSABONO.Fieldbyname('CREDID').AsString + ''' AND TIPO=''EXC'' ';
      CDSXPUCHODESCARGO.Filter := 'CREDID=''' + Dm1.cdsGrupos.Fieldbyname('CREDID').AsString + ''' AND TIPO=''EXC'' ';
      //FINAL : DPP_201211_COB
      CDSXPUCHODESCARGO.Filtered := True;
      pnlDetBoletas.Left := 176;
      pnlDetBoletas.Top := 360;
      pnlDetBoletas.Visible := True;
      ActfootDetBoletas;
   End;
End;

Procedure TFNuevoPago.ActfootDetBoletas;
Var
   vnTotal: currency;
Begin
   CDSXPUCHODESCARGO.DisableControls;
   CDSXPUCHODESCARGO.First;
   vnTotal := 0;
   While Not CDSXPUCHODESCARGO.Eof Do
   Begin
      vnTotal := vnTotal + CDSXPUCHODESCARGO.FieldByname('Importe').AsCurrency;
      CDSXPUCHODESCARGO.Next;
   End;
   dbgDetBoletas.ColumnByName('Importe').FooterValue := FormatCurr('###,###.#0', vnTotal);
   CDSXPUCHODESCARGO.EnableControls;
End;

Procedure TFNuevoPago.ActfootBoletas;
Var
   vnTotal: currency;
Begin
   CDSXPUCHOS.DisableControls;
   CDSXPUCHOS.First;
   vnTotal := 0;
   While Not CDSXPUCHOS.Eof Do
   Begin
      vnTotal := vnTotal + CDSXPUCHOS.FieldByname('Importe').AsCurrency;
      CDSXPUCHOS.Next;
   End;
   dbgxPucho.ColumnByName('Importe').FooterValue := FormatCurr('###,###.#0', vnTotal);
   CDSXPUCHOS.EnableControls;
End;



End.

