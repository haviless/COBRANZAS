unit COBD016;
// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COBD017
// Formulario                    : fCronogramaPrev
// Fecha de Creación             : 28/12/2016
// Autor                         : Ricardo Medina Zavaleta.
// Objetivo                      : Pagos Adelantados
// Actualizaciones               :
// HPC_201710_COB                : Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
// HPC_201712_COB                : Para la anulación de pago adelantado, al generar un cronograma producto de un pago adelantado se pone en el flgrefi una 'D'
// HPC_201731_COB                : Mejoras en el proceso de Pago Adelantado
// HPC_201733_COB                : Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)

//Inicio HPC_201614_COB
//Opción de Pagos Adelantados

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, StdCtrls,wwdblook,ImgList,
  wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid,DB,DBClient, Buttons, jpeg,
  ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, Mask, wwdbedit, Wwdbspin, ppMemo, ppStrtch, ppVar, ppDB,
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
  ppDBPipe, DBGrids;
// Fin HPC_201731_COB

type
  TfPagosAdelantados = class(TForm)
    dbgAbono: TwwDBGrid;
    grbDatosPago: TGroupBox;
    Label2: TLabel;
    DtpFecPag: TwwDBDateTimePicker;
    Label4: TLabel;
    EdtPreBco: TEdit;
    EdtDocPag: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    pnlImportePagar: TPanel;
    edtmonpag: TEdit;
    Btnfiltra: TfcShapeBtn;
    grbSaldo: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    edtSaldoCapital: TEdit;
    fcShapeBtn1: TfcShapeBtn;
    rdbReduceCuota: TRadioButton;
    rdbReduceplazo: TRadioButton;
    imgFlecha: TImageList;
    DBLCTipCob: TwwDBLookupCombo;
    EdtForPago: TEdit;
    DBLCBanco: TwwDBLookupCombo;
    EdtDesBan: TEdit;
    DBLCuenta: TwwDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    mObsPag: TMemo;
    Label14: TLabel;
    grbFechaReg: TGroupBox;
    Panel3: TPanel;
    edtvencido: TEdit;
    Panel4: TPanel;
    edtCapital: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Panel5: TPanel;
    edtTotal: TEdit;
    Label17: TLabel;
    Shape1: TShape;
    DtpFecReg: TwwDBDateTimePicker;
    Label11: TLabel;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    grbExcedente: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Chkexceso: TCheckBox;
    Panel2: TPanel;
    edtExcedente: TEdit;
    grbInicioCronograma: TGroupBox;
    dtpFecNuevoCronograma: TwwDBDateTimePicker;
    ppRepCondicionPagoAdelantado: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
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
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    pplblNombre: TppLabel;
    pplblDNI: TppLabel;
    pplblTipo1: TppLabel;
    pplblTipo2: TppLabel;
    pplblCredito: TppLabel;
    pplblDNI2: TppLabel;
    pplblDireccion: TppLabel;
    pplblemail: TppLabel;
    pplbltelefono: TppLabel;
    pplblImporte: TppLabel;
    pplblfechapago: TppLabel;
    ppLine8: TppLine;
    pplblfecha: TppLabel;
    ppImage1: TppImage;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine10: TppLine;
    BitPrint: TBitBtn;
    edtnumcuotas: TwwDBSpinEdit;
    ppdbCuotas: TppDBPipeline;
    RpRecCuo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    DBMonto01: TppLabel;
    DBMonto02: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppLabel35: TppLabel;
    Documento01: TppLabel;
    pplMontosol: TppLabel;
    Asoapenom01: TppLabel;
    Usuario01: TppLabel;
    NumLet01: TppLabel;
    ppLabel36: TppLabel;
    Documento02: TppLabel;
    pplMontosol2: TppLabel;
    pplCredid2: TppLabel;
    Asoapenom02: TppLabel;
    Usuario02: TppLabel;
    NumLet02: TppLabel;
    lblCopia01: TppLabel;
    lblCopia02: TppLabel;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLabel37: TppLabel;
    mTexto01: TppMemo;
    mTexto02: TppMemo;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    pplFecPag: TppLabel;
    pplFecPag1: TppLabel;
    mCopia: TppMemo;
    mCopia1: TppMemo;
    ppFooterBand2: TppFooterBand;
    Fecha01: TppLabel;
    Fecha02: TppLabel;
    ppLabel40: TppLabel;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    BtnPuchos: TfcShapeBtn;
    pnlxPucho: TPanel;
    Shape4: TShape;
    Label13: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    dbgxPucho: TwwDBGrid;
    edtDocPag2: TEdit;
    DtpFecPag2: TwwDBDateTimePicker;
    edtmonpag2: TEdit;
    Btnadiciona: TfcShapeBtn;
    BtnFiltra2: TfcShapeBtn;
    Button1: TButton;
    DSXPUCHOS: TDataSource;
    CDSXPUCHOS: TClientDataSet;
    DSXPUCHODESCARGO: TDataSource;
    pnlDetBoletas: TPanel;
    Shape5: TShape;
    Label21: TLabel;
    Button2: TButton;
    dbgDetBoletas: TwwDBGrid;
    CDSXPUCHODESCARGO: TClientDataSet;
// Fin HPC_201731_COB
    procedure BtnfiltraClick(Sender: TObject);
    procedure dbgAbonoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgAbonoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLCTipCobExit(Sender: TObject);
    procedure DBLCBancoChange(Sender: TObject);
    procedure DBLCBancoExit(Sender: TObject);
    procedure edtmonpagExit(Sender: TObject);
    procedure edtmonpagKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCTipCobChange(Sender: TObject);
    procedure EdtDesBanChange(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure DtpFecRegChange(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure EdtDocPagExit(Sender: TObject);
    procedure EdtDocPagKeyPress(Sender: TObject; var Key: Char);
    procedure edtnumcuotas2KeyPress(Sender: TObject; var Key: Char);
    procedure dbgAbonoDblClick(Sender: TObject);
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    procedure BtnPuchosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnFiltra2Click(Sender: TObject);
    procedure BtnadicionaClick(Sender: TObject);
    procedure dbgxPuchoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure grbExcedenteDblClick(Sender: TObject);
// Fin HPC_201731_COB
  private
    { Private declarations }
    procedure inicializa1();
    procedure finalizaproceso();
    Function  ValidaIngresoBancos_Global(xCreDocPag, xCrefPag: String; xMonto : Double) : Boolean;
    Function GnrCEfe(): String;    
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    Procedure ActfootBoletas();
    Procedure ActfootDetBoletas();
    Procedure Excedentes(vsCredid:String; vnExcedente,vnComoPago :Double; vnCrecuota : Integer );
    Function DistPagos():string;
// Fin HPC_201731_COB
  public
    { Public declarations }
    xAsoId,xcredid : String;
    xCuotaPendiente,vnegativos:Integer;
//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
    xCuotaRestante,vmayor : Integer;
//Final HPC_201710_COB
    xPagoVencidos,xPagoAdelantado,xMONPAGADE,xCreinteres,xCredflat,xTasfondes  :double;
    xCuota:double;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    vsReProcesa : Boolean;
    vsPorPuchos : Boolean;
    xMONINTCORADE,xMONCAPADE,xMONFLAADE,xMONDESADE : Double;
    xDIAINTCOR : Integer;
// Fin HPC_201731_COB
    Function VerPagosPosteriores():boolean;
    Procedure ImpReciboEfe(xAsoId, xCreDocPag, xForpagId, xNuevo: String);
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    Procedure SumaVariables();
// Fin HPC_201731_COB
  end;

var
  fPagosAdelantados: TfPagosAdelantados;

implementation

uses COBDM1, COBD017;

{$R *.dfm}

procedure TfPagosAdelantados.BtnfiltraClick(Sender: TObject);
var xsql,xano,xmes:String;
    xSumSaldo,xSumaTotal,xMonPago: DOUBLE;
     xSumPago:DOUBLE;
     Pagosposteriores:Boolean;
begin


 //Control es necesario ingresar la fecha de pago
 If Length(trim(DtpFecPag.Text))=0 Then
 Begin
   ShowMessage('Debe ingresar la FECHA DE PAGO');
   Exit;
 End;

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
  //Cuando se va ha aplicar a la cuota con pagos parciales (dos a mas recibos)
   Screen.Cursor := crHourGlass;
 If (CDSXPUCHOS.RecordCount>0) and (vsPorPuchos) Then
 Begin
   BtnFiltra2Click(Self);
   Screen.Cursor := crDefault;
   Exit;
 End;

 If (CDSXPUCHOS.RecordCount=0) Then
 Begin
     If Length(Trim(EdtDocPag.Text))=0 Then
     begin
        MessageDlg('Verifique, Debe ingresar el Número de Documento', mtError, [mbOk], 0);
        Screen.Cursor := crDefault;
        Exit;
     end;
 End;
// Fin HPC_201731_COB

 EdtMonpag.Text  := FormatFloat('###,###.00', DM1.Valores(EdtMonpag.Text));
 EdtMonpag.BiDiMode := bdRightToLeft;

 xMonPago        :=  DM1.Valores(EdtMonpag.Text);

 Pagosposteriores:= VerPagosPosteriores;
 If Pagosposteriores Then
 Begin
   ShowMessage('Existe pagos posteriores a la fecha del pago adelantado, primero debe extornar dichos pagos');
   // Inicio HPC_201731_COB
   // Mejoras en el proceso de Pago Adelantado
   Screen.Cursor := crDefault;
   // Fin HPC_201731_COB
   exit;
 End;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
  If ((DBLCTipCob.Text = '03') And (CDSXPUCHOS.RecordCount=0)) Then
// Fin HPC_201731_COB
  Begin
    // Se valida por numero de deposito, fecha de operación y el importe en el CRE310
    If ValidaIngresoBancos_Global(EdtDocPag.Text, DtpFecPag.Text, strtofloat(stringReplace(edtmonpag.text, ',', '', [rfReplaceAll]))) Then
    begin
       BitGrabar.Enabled:=False;
       // Inicio HPC_201731_COB
       // Mejoras en el proceso de Pago Adelantado
       Screen.Cursor := crDefault;
       // Fin HPC_201731_COB
       Exit;
    end;
  End;


  Xsql:='Select asoid,credid,creestid,crecuota from cre302 '
       +'where asoid='''+XASOID+''' and credid='''+XCREDID+''' and creestid in (''14'',''19'') ';
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(XSQL);
  DM1.cdsDFam.Open;
  If Dm1.cdsDFam.RecordCount>0 Then
  Begin
    ShowMessage('El Crédito tiene cuotas en PROCESO DE COBRANZAS o BLOQUEADAS, verifique');
   // Inicio HPC_201731_COB
   // Mejoras en el proceso de Pago Adelantado
   Screen.Cursor := crDefault;
   // Fin HPC_201731_COB
    exit;
  End;

  Xsql:='Select asoid,credid,crecuota,crefven,crefvenini from cre302 '
       +'where  asoid='''+XASOID+''' and credid='''+XCREDID+''' and crefven<>crefvenini and crefvenini is not null';
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(XSQL);
  DM1.cdsDFam.Open;
  If Dm1.cdsDFam.RecordCount>0 Then
  Begin
    ShowMessage('El Crédito tiene cuotas en DIFERIDAS, revierta el diferido y verifique');
   // Inicio HPC_201731_COB
   // Mejoras en el proceso de Pago Adelantado
   Screen.Cursor := crDefault;
   // Fin HPC_201731_COB    
    exit;
  End;

//Inicio HPC_201712_COB
//cursor de reloj
 Screen.Cursor := crHourGlass;
//Final HPC_201712_COB

 //Politica de descargo segun lo selecionado
 Xsql:='Begin SP_COB_POLITICA_AMORTIZA_V2('''+XASOID+''','''+XCREDID+''',''2'',''3'','+CurrToStr(dm1.Valores(edtmonpag.Text))+',null,null,null,'''+DateToStr(DtpFecReg.Date)+'''); End; ';
 DM1.DCOM1.AppServer.EjecutaSQL(Xsql);

 Xsql:='Select ref, pos, interes, asoid, asocodmod, flecha, asoapenom, asocodaux, tipcredes, creamort, creinteres, creflat, amortizacion, cremtoflat,'
      +'       cremto, credid, credito, cuota, creano, cremes, fvencimiento, tipcreid, forpagoid, forpagoabr, creestid, creestado, percob, crefotorg, saldo,'
      +'       cinteres, interescre310, modo, acumulado, pago, moncobdesgrav, monpacdesgrav, xid, procesado, crecapital, cremtoint, cremtofla, cremtodesg, cremtoexc,'
      +'       tipcrepar, monintdia,diacorrido '
      +' From COB_POLITICA_CUO_GTT Where 1=1 Order by ref,pos,crefotorg ';
 Dm1.cdsGrupos.Close;
 Dm1.cdsGrupos.DataRequest(Xsql);
 Dm1.cdsGrupos.Open;
 dbgAbono.DataSource := Dm1.dsGrupos;

 DM1.cdsGrupos.DisableControls;
 DM1.cdsGrupos.First;
 xCuotaPendiente := 0;
//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
 xCuotaRestante  := 0;
//Final HPC_201710_COB
 xPagoVencidos   := 0;
 xSumPago        := 0;
 xSumaTotal      := 0;
 xPagoAdelantado := 0;
 
 While not  Dm1.cdsGrupos.Eof do
 Begin
    xSumaTotal:=xSumaTotal+Dm1.cdsGrupos.FieldByName('SALDO').AsFloat;

    //Se suma lo pagos vencidos
    If TRIM(Dm1.cdsGrupos.FieldByName('MODO').AsString)<>'ADELANTADO' Then
    Begin
      xPagoVencidos:=xPagoVencidos+Dm1.cdsGrupos.FieldByName('PAGO').AsFloat;
    End
    Else
    Begin
      xPagoAdelantado:=xPagoAdelantado+Dm1.cdsGrupos.FieldByName('SALDO').AsFloat;
//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
     xCuotaPendiente := xCuotaPendiente+1;
//Final HPC_201710_COB
    End;

    If Dm1.cdsGrupos.FieldByName('PAGO').AsFloat<Dm1.cdsGrupos.FieldByName('SALDO').AsFloat Then
    Begin
       xSumSaldo:= xSumSaldo+(Dm1.cdsGrupos.FieldByName('SALDO').AsFloat-Dm1.cdsGrupos.FieldByName('PAGO').AsFloat) ;
//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
       xCuotaRestante := xCuotaRestante+1;
//Final HPC_201710_COB
    End;

    If DM1.cdsGrupos.FieldByName('PAGO').AsFloat > 0 Then
    Begin
     xSumPago := xSumPago + DM1.cdsGrupos.FieldByName('PAGO').AsFloat;
    End;

    Dm1.cdsGrupos.Next;
 End;
//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
 edtnumcuotas.MaxValue := xCuotaRestante+1;
//Final HPC_201710_COB

 If dm1.Valores(EdtMonPag.Text) - xSumPago > 0 Then
 Begin
   edtExcedente.Text := FormatFloat('###,###.00', dm1.Valores(EdtMonPag.Text) - xSumPago);
   Chkexceso.Checked:=True;
 End Else    Chkexceso.Checked:=False;

 rdbReduceCuota.Caption := 'Reducción de cuota y mantenimiento de plazo.('+IntToStr(xCuotaPendiente)+')';
//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
 edtnumcuotas.Text      := IntToStr(xCuotaRestante);
//Final HPC_201710_COB
 DM1.cdsGrupos.EnableControls;
 DM1.cdsGrupos.First;
//Inicio HPC_201731_COB
//Mejoras en el proceso de Pago Adelantado
 edtSaldoCapital.BiDiMode := bdRightToLeft;
 edtSaldoCapital.Text  := FormatFloat('###,##0.00',xSumSaldo);
//Fin  HPC_201731_COB


 dbgAbono.ColumnByName('SALDO').FooterValue := FloatToStrF(xSumaTotal, ffNumber,10,2);
 dbgAbono.ColumnByName('PAGO').FooterValue  := FloatToStrF(xSumPago, ffNumber,10,2);
 edtvencido.Text := FormatFloat('###,###.00', xPagoVencidos);
 edtCapital.Text := FormatFloat('###,###.00', xPagoAdelantado);
 edtTotal.Text   := FormatFloat('###,###.00', xPagoVencidos+xPagoAdelantado);


//Inicio HPC_201712_COB
//cursor por estandar cuando termina el proceso
 Screen.Cursor := crDefault;
//Final HPC_201712_COB

  If (xMonPago-xPagoVencidos)/2<=xCuota Then
  Begin
    ShowMessage('El pago adelantado debe ser mayor a dos cuotas PACTADAS - '+FormatFloat('###,###.00',xCuota*2));
    exit;
  End;

end;

procedure TfPagosAdelantados.dbgAbonoCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin

  If Highlight Then
   Begin
      If ((Field.DisplayName = 'Crédito') Or
         (Field.DisplayName  = 'Cuota') Or
         (Field.DisplayName  = 'Fecha~Vencimiento')Or
         (Field.DisplayName  = 'Pago')) And
         (DM1.cdsGrupos.FieldByName('PAGO').AsFloat > 0) Then
        AFont.Color := clBlack;
   End;


   If  Field.DisplayName = 'Pago~Acumulado'  then
   Begin
      If Dm1.cdsGrupos.FieldByName('ACUMULADO').AsCurrency =  Dm1.Valores(edtmonpag.Text) Then
      Begin
         ABrush.Color := $00C5FEFD;
         AFont.Color  := clRed;
      End;
   End;
end;

procedure TfPagosAdelantados.dbgAbonoDrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
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
end;

procedure TfPagosAdelantados.FormShow(Sender: TObject);
begin

 dbgAbono.Selected.Add('XID'#9'2'#9'Id');
 dbgAbono.Selected.Add('CREDITO'#9'7'#9'Crédito');
 dbgAbono.Selected.Add('CUOTA'#9'2'#9'Cuota');
 dbgAbono.Selected.Add('CREMTO'#9'5'#9'Pactado');
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


end;

procedure TfPagosAdelantados.fcShapeBtn1Click(Sender: TObject);
var xSQL,xModoFinanciamiento,xnumcuota:String;
begin


  XSQL:='SELECT CREIDORI,CREINTERES,CREDFLAT,TASFONDES FROM  CRE301 WHERE ASOID='+quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)
       +' AND CREESTID NOT IN (''13'',''04'') AND CREDID='+quotedstr(Dm1.cdsGrupos.FieldByName('CREDID').AsString);
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(XSQL);
  DM1.cdsDFam.Open;
  xCREINTERES:= DM1.cdsDFam.Fieldbyname('CREINTERES').AsFloat;
  xCREDFLAT  := DM1.cdsDFam.Fieldbyname('CREDFLAT').AsFloat;
  xTASFONDES := DM1.cdsDFam.Fieldbyname('TASFONDES').AsFloat;

  If DM1.Valores(edtSaldoCapital.Text)<=0 Then
  Begin
    ShowMessage('No existe saldo capital para financiar');
    exit;
  End;

  If rdbReduceCuota.Checked Then
  Begin
    xModoFinanciamiento :='1';
    xnumcuota :=  IntToStr(xCuotaPendiente);
  End;
  
  If rdbReduceplazo.Checked Then
  Begin
    xModoFinanciamiento:='2';
    xnumcuota :=  edtnumcuotas.Text;
  End;

   xSQL := 'BEGIN '
         + 'SP_CRE_FINANCIAR_SALDO_PRE('
         + quotedstr(DM1.cdsAso.FieldByname('ASOTIPID').AsString) + ','
         + quotedstr(DateToStr(dtpFecNuevoCronograma.Date)) + ','
         + quotedstr(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString) + ','
         + FloatToStr(DM1.Valores(edtSaldoCapital.Text)) + ','
         + FloatToStr(xCreinteres)+ ','
         + FloatToStr(xCredflat)+ ','
         + FloatToStr(xTasfondes)+ ','         
         + xnumcuota+ ','
         + FloatToStr(xCuota)+ ','
         + quotedstr(xModoFinanciamiento)+'); END;';
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);

    XSQL := 'SELECT itecuo, fecven, amort, interes, gastos, segdes, cuota, saldo, maxcuo, pergra, diaspro, capaju, intaju, tcea '
           +'FROM CRE_CRONO_PRE_GTT WHERE 1=1 ORDER BY ITECUO ';
    DM1.cdsTZona.Close;
    DM1.cdsTZona.DataRequest(XSQL);
    DM1.cdsTZona.Open;
    vnegativos:=0;
//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
    vmayor:=0;
//Final HPC_201710_COB
    While not DM1.cdsTZona.eof do
    Begin
      If (DM1.cdsTZona.FieldByname('amort').AsFloat<0) or
         (DM1.cdsTZona.FieldByname('cuota').AsFloat<0) Then
         vnegativos:=vnegativos+1;
//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
      If (rdbReduceplazo.Checked) and  (DM1.cdsTZona.FieldByname('cuota').AsFloat>xCuota) Then
          vmayor:=vmayor+1;
//Final HPC_201710_COB
      Dm1.cdsTZona.Next;
    End;
    If vnegativos>0 Then
       ShowMessage('El nuevo cronograma tiene valores negativos, verifique y cambie el número de cuotas antes de grabar');

//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
    If vmayor>0 Then
       ShowMessage('El nuevo cronograma tiene valores de cuota mayor al pactado('+FloatToStr(xCuota)+'), verifique y cambie el número de cuotas antes de grabar');
//Final HPC_201710_COB

    fCronogramaPrev := TfCronogramaPrev.create(self);
    fCronogramaPrev.DBGPREVIO.DataSource :=  DM1.dsTZona;
    fCronogramaPrev.Showmodal;
    fCronogramaPrev.free;
end;

procedure TfPagosAdelantados.FormCreate(Sender: TObject);
VAR XSQL,XSQL1,XSQL2:String;
begin

      Xsql:=' Select ref, pos, interes, asoid, asocodmod, flecha, asoapenom, asocodaux, tipcredes, creamort, creinteres, '
           +'       creflat, amortizacion, cremtoflat, cremto, credid, credito, cuota, creano, cremes, fvencimiento, tipcreid, forpagoid,'
           +'       forpagoabr, creestid, creestado, percob, crefotorg, saldo, cinteres, interescre310, modo, acumulado, pago, moncobdesgrav,'
           +'       monpacdesgrav, xid, procesado, crecapital, cremtoint, cremtofla, cremtodesg, cremtoexc, tipcrepar, monintdia,diacorrido '
           +' From COB_POLITICA_CUO_GTT where 1=2 Order by ref,pos,crefotorg ';
      Dm1.cdsGrupos.Close;
      Dm1.cdsGrupos.DataRequest(Xsql);
      Dm1.cdsGrupos.Open;


      XSQL1 := 'Select FORPAGOID,FORPAGODES '
         + '  from COB101 '
         + ' where FORPAGOID IN (''02'',''03'',''05'') '
         + ' order by FORPAGOID';
      DM1.cdsFormaPago.Close;
      DM1.cdsFormaPago.DataRequest(XSQL1);
      DM1.cdsFormaPago.Open;

      DtpFecReg.Date         := Dm1.FechaSys;
      rdbReduceCuota.Checked := True;
      DBLCTipCob.LookupTable := DM1.cdsFormaPago;
      DBLCTipCob.LookupField := 'FORPAGOID';

      inicializa1();
      SysLocale.MiddleEast := true;
      edtvencido.BiDiMode := bdRightToLeft;
      edtCapital.BiDiMode := bdRightToLeft;
      edtTotal.BiDiMode   := bdRightToLeft;
      DM1.cdsGrupos.EnableControls;
end;

procedure TfPagosAdelantados.DBLCTipCobExit(Sender: TObject);
var XSQL2,XSQL : String;
begin

 DBLCBanco.Enabled := False;
 DBLCuenta.Enabled := False;
 If  DBLCTipCob.Text ='03' Then
 Begin
    Dm1.vsCobranza := 'B';
    XSQL2 := 'Select BANCOID,BANCONOM '
           + '  from TGE105 '
           + ' where NVL(FLAVIGCOB, ''X'') = ''S'' '
           + ' order by BANCOID';
      DM1.cdsCBcos.Close;
      DM1.cdsCBcos.DataRequest(XSQL2);
      DM1.cdsCBcos.Open;
      DBLCBanco.Enabled := True;
      DBLCBanco.LookupTable := DM1.cdsCBcos;
      DBLCBanco.SetFocus;
      DBLCBanco.DropDown;
 End;

 If  DBLCTipCob.Text ='02' Then
 Begin
     Dm1.vsCobranza := 'E';
     DBLCTipCob.Text := '02';
     DBLCBanco.Text := '';
     DBLCuenta.Text := '';
     EdtDocPag.Text := '';
     edtmonpag.Text := '0.00';
   End;

end;

procedure TfPagosAdelantados.DBLCBancoChange(Sender: TObject);
begin
   EdtDocPag.Text := '';
    DBLCuenta.Enabled := True;
    DBLCuenta.LookupTable := DM1.cdsCtasBco;

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
end;

procedure TfPagosAdelantados.DBLCBancoExit(Sender: TObject);
var xsql:String;
begin
  If Dm1.vsCobranza = 'B' Then
  Begin
      xSQL := 'Select BANCOID,CCBCOID,CPTOID,LONGITUD '
            + '  from TGE106 '
            + ' where BANCOID='''+DBLCBanco.Text+''' '
            + '   and CIAID=''02'' '
            + ' order by CCBCOID';
      DM1.cdsCtasBco.Close;
      DM1.cdsCtasBco.DataRequest(xSQL);
      DM1.cdsCtasBco.Open;

      DBLCuenta.SetFocus;
      DBLCuenta.DropDown;
  End;    
end;

procedure TfPagosAdelantados.edtmonpagExit(Sender: TObject);
begin
   If Length(Trim(EdtMonpag.Text)) = 0 Then
   Begin
      EdtMonpag.Text := '0.00';
   End;
   EdtMonpag.Text := FormatFloat('###,###.00', DM1.Valores(EdtMonpag.Text));
   Btnfiltra.SetFocus;
end;

procedure TfPagosAdelantados.edtmonpagKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
end;

procedure TfPagosAdelantados.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
end;

procedure TfPagosAdelantados.DBLCTipCobChange(Sender: TObject);
begin

If DM1.cdsFormaPago.Locate('FORPAGOID', VarArrayof([DBLCTipCob.text]), []) Then
   Begin

     DBLCBanco.Enabled := False;
     EdtDesBan.Enabled := False;
     DBLCuenta.Enabled := False;
     EdtPreBco.Enabled := False;
     EdtPreBco.Text    := '';

      If Trim(DBLCTipCob.text) = '03' Then
      Begin
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

end;

procedure TfPagosAdelantados.EdtDesBanChange(Sender: TObject);
var xsql:String;
begin
   If Dm1.vsCobranza = 'B' Then
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
end;

procedure TfPagosAdelantados.BitGrabarClick(Sender: TObject);
var xSQL,vsTipCont,vsRcobid,vsDetRcobid,xTipo,vpCredid, vpCrecuota, vpInteres,xnuevoCredito,xcreanomes,xcreffinpag,xcrefinipag,xCREIDORI,xRecEfe: String;
    xcremtosol,Xmtosaldo,xcrecuota : double;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
    xcrenumcuo,vnNumero,xcorr: integer;
    xsuma:double;
// Fin HPC_201731_COB
begin

   If vnegativos>0 Then
   Begin
     ShowMessage('El nuevo cronograma tiene valores negativos, verifique y cambie el número de cuotas');
     exit;
   End;

//Inicio HPC_201710_COB
//Modificar la funcionalidad en la aplicación de pagos adelantados en la opción de "Reducción de Cuotas y Mantenimiento de Plazo"
    If vmayor>0 Then
    Begin
       ShowMessage('El nuevo cronograma tiene valores de cuota mayor al pactado('+FloatToStr(xCuota)+'), verifique y cambie el número de cuotas');
       exit;
    End;
//Final HPC_201710_COB

   If (DM1.Valores(edtSaldoCapital.Text)>0) AND (Dm1.cdsTZona.RecordCount=0) Then
   Begin
     ShowMessage('Primero debe generar un previo del cronograma del saldo a financiar');
     exit;
   End;

   If DM1.Valores(EdtMonPag.Text) < 0 Then
   Begin
      MessageDlg('No se puede registrar montos negativos ', mtError, [mbOk], 0);
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

   If (Length(Trim(DtpFecPag.Text)) = 0)  Then
   Begin
      MessageDlg('Debe ingresar la Fecha de Pago', mtError, [mbOk], 0);
      DtpFecPag.SetFocus;
      EXIT;
   End;

   If (DtpFecPag.Date > DM1.FechaSys)  Then
   Begin
      MessageDlg('La Fecha de Documento no puede ser mayor a la Fecha de Registro', mtError, [mbOk], 0);
      Exit;
   End;

   If (Length(Trim(DtpFecPag.Text)) = 0) Then
   Begin
      MessageDlg('Debe ingresar la Fecha de Pago', mtError, [mbOk], 0);
      DtpFecPag.SetFocus;
      EXIT;
   End;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
   If ((Dm1.vsCobranza = 'B') Or (Dm1.vsCobranza = 'P')) And (Length(Trim(EdtDocPag.Text)) = 0) And (CDSXPUCHODESCARGO.RecordCount = 0) Then
// Fin HPC_201731_COB
   Begin
      MessageDlg('Debe ingresar Número de Documento', mtError, [mbOk], 0);
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

   vnNumero := 0;
   If DBLCTipCob.Text = 'XX' Then  //02
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
// Inicio HPC_201733_COB
// Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
  //If DBLCTipCob.Text='EFE' Then
  If DBLCTipCob.Text='02' Then
  vsTipCont:='EFE';
  //If DBLCTipCob.Text='BAN' Then
  If DBLCTipCob.Text='03' Then
  vsTipCont:='BOL';
  If DBLCTipCob.Text='05' Then
  vsTipCont:='BEN';
// Fin HPC_201733_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
//Cancela crédito

    //Saldo Para Financiar
     If DM1.Valores(edtSaldoCapital.Text)>0 Then
     Begin
        vpCredid      := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
        try //si tiene una letra hace una excep y el correlativo lo pone con un solo numero
         xcorr         := StrToInt(copy(vpCredid,9,2))+1;
         xnuevoCredito := copy(vpCredid,1,8)+dm1.StrZero(trim(IntToStr(xcorr)),2)+copy(vpCredid,11,5);
        Except
          xcorr         := StrToInt(copy(vpCredid,10,1))+1;
          xnuevoCredito := copy(vpCredid,1,9)+dm1.StrZero(trim(IntToStr(xcorr)),1)+copy(vpCredid,11,5);
        End;
        xcreanomes    := FormatDateTime('YYYYMM',dtpFecNuevoCronograma.Date);
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

         //Si el modo de pago es adelantado guardo el capital que debe ser igual a lo pagado
         //y sumo al monto pagado adelantado para guardar el total del pago adelantado.

         If CDSXPUCHODESCARGO.FieldByName('MODO').AsString='ADELANTADO' then
         Begin
           xTipo:='S';
         End
         Else xTipo:='N';


         If  Dm1.Valores(CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsString)>0 Then
         Begin
              xSQL := 'BEGIN '
              + '   SP_COB_PAGO_CUOTA_V3(' + quotedstr(xAsoid) + ','
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
              + quotedstr(DM1.wUsuario) + ',NULL,'
              +quotedstr(xTipo)+','
              +quotedstr(CDSXPUCHODESCARGO.FieldByName('INTERES').AsString)
              +'); '
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


      If (Dm1.Valores(edtExcedente.Text) > 0) And (Chkexceso.Checked) Then
      Begin

      CDSXPUCHODESCARGO.Filter := ' TIPO=''EXC'' ';
      CDSXPUCHODESCARGO.Filtered := True;
      CDSXPUCHODESCARGO.First;
      If  CDSXPUCHODESCARGO.RecordCount>0 Then
      Begin
        vpCrecuota := CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsString;
        vnNumero   := 1;
        While Not CDSXPUCHODESCARGO.Eof Do
        Begin

         xTipo:='S';

         If  Dm1.Valores(CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsString)>0 Then
         Begin
              xSQL := 'BEGIN '
              + '   SP_COB_PAGO_CUOTA_V3(' + quotedstr(xAsoid) + ','
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
              + quotedstr(DM1.wUsuario) + ',NULL,'
              +quotedstr(xTipo)+','
              +quotedstr(CDSXPUCHODESCARGO.FieldByName('INTERES').AsString)
              +'); '
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

      End;

      BitSalirClick(Self);
   End
 Else
  Begin
  DM1.cdsGrupos.First;
  vnNumero   := 0;
  xMONPAGADE := 0;
  xMONCAPADE := 0;
  xMONFLAADE := 0;
  xMONDESADE := 0;
  xMONINTCORADE := 0;

   While Not Dm1.cdsGrupos.Eof Do
     Begin

        If (Dm1.cdsGrupos.FieldByName('PAGO').AsFloat > 0) And (Dm1.cdsGrupos.FieldByName('PROCESADO').AsString <> 'X') And (Dm1.cdsGrupos.RecordCount>0) Then
        Begin

        //Si es pago del mes guardo el importe como paga adelantado
        //tambien el interes corrido por los dias trascurridos y el numero de dias trascurridos
         If Dm1.cdsGrupos.FieldByName('MODO').AsString='MES PAGO' then
         Begin
           xMONPAGADE    := xMONPAGADE+Dm1.cdsGrupos.FieldByName('PAGO').AsFloat;
           xMONINTCORADE := xMONINTCORADE+Dm1.cdsGrupos.FieldByName('MONINTDIA').AsFloat;
           xDIAINTCOR    := xDIAINTCOR+Dm1.cdsGrupos.FieldByName('DIACORRIDO').AsInteger;
           xMONCAPADE     := xMONCAPADE+Dm1.cdsGrupos.FieldByName('CREAMORT').AsFloat;
           //Si los dias trascurridos son mayor que 15 guardo el FLAT Y DESGRAVAMEN
           If Dm1.cdsGrupos.FieldByName('DIACORRIDO').AsInteger>15 then
           Begin
              xMONFLAADE := xMONFLAADE +Dm1.cdsGrupos.FieldByName('CREFLAT').AsFloat; ;
              xMONDESADE := xMONDESADE +Dm1.cdsGrupos.FieldByName('MONPACDESGRAV').AsFloat;;
           End;
         End;

         //Si el modo de pago es adelantado guardo el capital que debe ser igual a lo pagado
         //y sumo al monto pagado adelantado para guardar el total del pago adelantado.
         If Dm1.cdsGrupos.FieldByName('MODO').AsString='ADELANTADO' then
         Begin
           xTipo:='S';
           xMONPAGADE:=xMONPAGADE+Dm1.cdsGrupos.FieldByName('PAGO').AsFloat;
           xMONCAPADE:=xMONCAPADE+Dm1.cdsGrupos.FieldByName('PAGO').AsFloat;
         End
         Else xTipo:='N';

         xSQL := 'BEGIN '
            + '   SP_COB_PAGO_CUOTA_V3(' + quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)+ ','
            + quotedstr(Dm1.cdsGrupos.FieldByName('CREDID').AsString) + ','
            + quotedstr(Dm1.cdsGrupos.FieldByName('CUOTA').AsString) + ','
            + quotedstr(Dm1.cdsGrupos.FieldByName('CINTERES').AsString) + ','
            + Dm1.cdsGrupos.FieldByName('PAGO').AsString + ','
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
            + quotedstr(DM1.wUsuario) +',NULL,'
            + quotedstr(xTipo)+','
            + Dm1.cdsGrupos.FieldByName('INTERES').AsString+'); '
            + 'END;';

         Try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         Dm1.cdsGrupos.Edit;
         Dm1.cdsGrupos.FieldByName('PROCESADO').AsString := 'X';
         Except
          ShowMessage('Error al aplicar el pago adelantado, Revise, anule e inténtelo nuevamente');
          exit;
         End;
        End;
        vnNumero := vnNumero + 1;
        Dm1.cdsGrupos.Next;
     End;

 End;
// Fin HPC_201731_COB

     If (Dm1.Valores(edtExcedente.Text) > 0) And (Chkexceso.Checked) Then
     Begin
        If Dm1.cdsGrupos.Locate('XId', VarArrayOf([vnNumero]), []) Then
        Begin
            vpCredid   := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
            vpCrecuota := Dm1.cdsGrupos.FieldByName('CUOTA').AsString;
            vpInteres  := Dm1.cdsGrupos.FieldByName('CINTERES').AsString;
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
           vpCredid   := Dm1.cdsDFam.FieldByname('Credid').AsString;
           vpCrecuota := Dm1.cdsDFam.FieldByname('Crecuota').AsString;
           vpInteres  := '';
        End;

        //CONSISTENCIA QUE EXISTA UN REGISTRO PARA DESCARGAR EXCESO
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
        If (Length(Trim(vpCrecuota))>0)  And (CDSXPUCHODESCARGO.RecordCount = 0) Then
// Fin HPC_201731_COB
        Begin

          xSQL := 'BEGIN '
           + '   SP_COB_PAGO_CUOTA_V3('
           + quotedstr(xAsoid) + ','
           + quotedstr(vpCredid) + ','
           + quotedstr(vpCrecuota) + ','
           + quotedstr(vpInteres) + ','
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
           + quotedstr(DM1.wUsuario) + ',NULL, '
           + quotedstr('S')+',0); END;';
          Try
           DM1.DCOM1.AppServer.EjecutaSql(xSQL);
          Except
           ShowMessage('Error al aplicar el exceso, Revise, anule e inténtelo nuevamente');
           exit;
          End;

       End;
     End;

     
    //Saldo Para Financiar
     If DM1.Valores(edtSaldoCapital.Text)>0 Then
     Begin
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
  {      vpCredid      := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
        try //si tiene una letra hace una excep y el correlativo lo pone con un solo numero
         xcorr         := StrToInt(copy(vpCredid,9,2))+1;
         xnuevoCredito := copy(vpCredid,1,8)+dm1.StrZero(trim(IntToStr(xcorr)),2)+copy(vpCredid,11,5);
        Except
          xcorr         := StrToInt(copy(vpCredid,10,1))+1;
          xnuevoCredito := copy(vpCredid,1,9)+dm1.StrZero(trim(IntToStr(xcorr)),1)+copy(vpCredid,11,5);
        End;
        xcreanomes    := FormatDateTime('YYYYMM',dtpFecNuevoCronograma.Date); }

       //PONER LAS CUOTAS PENDIENTES COMO TIPO 20 RESTRUCTURADO
       XSQL:='UPDATE CRE302 SET CRECAPITAL=CREAMORT, CREESTID=''20'',CREESTADO=''REESTRUCTURADO'' '
// Fin HPC_201731_COB
            +'WHERE ASOID='+quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)
            +' AND CREDID='+quotedstr(Dm1.cdsGrupos.FieldByName('CREDID').AsString)
            +' AND NVL(CREAMORT,0)>NVL(CRECAPITAL,0)  '
            +' AND CREESTID IN (''27'',''02'',''11'',''14'') ';

       Try
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       Except
         ShowMessage('Error al marcar la cuotas como reestructurado, Revise, anule e inténtelo nuevamente ');
         exit;
       End;

       //PONER EL CREDITO EN ESTADO CANCELADO ANTICIPADO Y GRABAR LA LLAVE CREIDORI Y CRENEWID
        XSQL:='SELECT CREIDORI,CREINTERES,CREDFLAT,TASFONDES FROM  CRE301 WHERE ASOID='+quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)
             +' AND CREESTID NOT IN (''13'',''04'') AND CREDID='+quotedstr(Dm1.cdsGrupos.FieldByName('CREDID').AsString);
        DM1.cdsDFam.Close;
        DM1.cdsDFam.DataRequest(XSQL);
        DM1.cdsDFam.Open;
        If DM1.cdsDFam.RecordCount=0
        Then  xCREIDORI:=Dm1.cdsGrupos.FieldByName('CREDID').AsString
        Else
        Begin
         If Length((DM1.cdsDFam.FieldByName('CREIDORI').AsString))=0
         Then xCREIDORI:=Dm1.cdsGrupos.FieldByName('CREDID').AsString
         Else xCREIDORI:=DM1.cdsDFam.FieldByName('CREIDORI').AsString;
        End;

       XSQL:='UPDATE CRE301 SET CREESTID=''23'', CREESTADO=''CANCELADO A'', CREIDORI='''+xCREIDORI+''', '
            +'CRENEWID='''+xnuevoCredito+''',USUPROPAGADE='''+DM1.wUsuario+''',FECPROPAGADE=SYSDATE,FLGPROPAGADE=''X'','
            +'DIAINTCOR='+IntToStr(xDIAINTCOR)+',MONPAGADE='+FloatToStr(xMONPAGADE)+',MONCAPADE='+FloatToStr(xMONCAPADE)+','
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
            +'MONINTCORADE='+FloatToStr(xMONINTCORADE)+',MONFLAADE='+FloatToStr(xMONFLAADE)+',MONDESADE='+FloatToStr(xMONDESADE)+' ,CRESDOACT=0 '
// Fin HPC_201731_COB
            +'WHERE ASOID='+quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)
            +' AND CREDID='+quotedstr(Dm1.cdsGrupos.FieldByName('CREDID').AsString);
       Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       Except
         ShowMessage('Error al actualizar el estado como cancelado anticipado, Revise, anule e inténtelo nuevamente ');
         exit;
       End;


        XSQL := 'SELECT max(itecuo)crenumcuo,To_char(max(fecven),''YYYYMMDD'')creffinpag,To_char(min(fecven),''YYYYMMDD'')crefinipag,'
               +'sum(nvl(amort,0)) cremtosol,sum(nvl(cuota,0))mtosaldo,max(nvl(interes,0))interes,max(nvl(gastos,0))gastos,'
               +'max(nvl(segdes,0))segdes,max(nvl(cuota,0))cuota '
               +'FROM CRE_CRONO_PRE_GTT WHERE 1=1 ';
        DM1.cdsTZona.Close;
        DM1.cdsTZona.DataRequest(XSQL);
        DM1.cdsTZona.Open;

        xcrenumcuo  := DM1.cdsTZona.fieldbyname('crenumcuo').AsInteger;
        xcreffinpag := DM1.cdsTZona.fieldbyname('creffinpag').AsString;
        xcrefinipag := DM1.cdsTZona.fieldbyname('crefinipag').AsString;
        xcremtosol  := DM1.cdsTZona.fieldbyname('cremtosol').AsFloat;
        xcrecuota   := DM1.cdsTZona.fieldbyname('cuota').AsFloat;
        Xmtosaldo   := DM1.cdsTZona.fieldbyname('mtosaldo').AsFloat;

        XSQL := 'SELECT itecuo, fecven, amort, interes, gastos, segdes, cuota, saldo, maxcuo, pergra, diaspro, capaju, intaju, tcea '
               +'FROM CRE_CRONO_PRE_GTT WHERE 1=1 ORDER BY ITECUO ';
        DM1.cdsTZona.Close;
        DM1.cdsTZona.DataRequest(XSQL);
        DM1.cdsTZona.Open;

        //Inserto cabecera
        xSql:='INSERT INTO CRE301(tipcreid, asoid, asocodmod, asocodpago, asoapenom, useid, crefotorg, crefecini, cremtosol, cremtootor,'
              +'cremtogir, creinteres, credflat, crecuota, crenumcuo, creluggiro, bancoid, crenumcta, cremtopag, cresdoact, crepergra, crecuopag, crecuoenv, creperiodi,'
              +'cremtotal, crecappgo, crenewid, cresaldot, usuario, freg, hreg, ofdesid, calificaid, apruebaid, creestado, tmonid, cuotaini, upagoid, uproid, dptoid,'
              +'listaid, credid, crecom, creseg, crepor, cregadm, crecomp, cremora, forpagoid, cretcalid, tmonabr, cretcalabr, listaabr, forpagoabr, ciaid, crefrecl, creestid,'
              +'creanomes, nropagare, nroautdes, tipcredes, garapenom, garasoid, asocodaux, nronabo, numref, fecref, tiporef, nroficio, ciudid, archivoftp, agenbancoid, dptogiro,'
              +'useidgar, tipdeseid, bcogiro, cremtonabo, creffinpag,crefinipag, crebloqfec, usubloq, crebloq, flgcaja, fechacaja, crenumcomp, ccosid, cuentah, cuentad, cregencob,'
              +'flgautoma, refanomes, nrorefinan, cajausu, horacaja, asotipid, asodni, anulacaja, men_anu, mot_pre, numrefi, flgrefi, crefcan, flginconsis, perconta, c_abn, cntanomm,'
              +'fec_rcp, crecapliq, crefdes, cremenobs, tipocont, cntflag, cremtodep, crefanul, useranul, cresumcuo, cremotext, nroficio_bck, migrado, usuautcre, fecautcre, estautcre,'
              +'comautcre, usuanusup, fecanusup, motanusup, estanusup, docid, ccserie, ccnodoc, ciaser, cremonins, impcon, dniruc, fecimpcon, codarchivo, cremtoapo,'
              +'autdescre, fecautdes, usuautdes, impcaraut, nrocaraut, diasproc, descenv, autdesges, usudesges, fechordesges, usumodcuo, fecmodcuo, motmodcuo, tasfondes, nroautonp, fecenvbcp,'
              +'estenvbcp, feccobbcp, codagebcp, impcaronp, monintpro, mespergra,creidori) '
              +'SELECT '
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
              +'tipcreid, asoid, asocodmod, asocodpago, asoapenom, useid,crefotorg,crefecini,'+FloatToStr(DM1.Valores(edtSaldoCapital.Text))+','+FloatToStr(DM1.Valores(edtSaldoCapital.Text))+','
              +FloatToStr(DM1.Valores(edtSaldoCapital.Text))+',creinteres,credflat,'+FloatToStr(xcrecuota)+','+IntToStr(xcrenumcuo)+',creluggiro, bancoid, crenumcta,0.00,'+FloatToStr(Xmtosaldo)+', null,0.00, null, null,'
              +FloatToStr(Xmtosaldo)+',crecappgo,null,0.00,'+QuotedStr(DM1.wUsuario)+',TRUNC(SYSDATE), SYSDATE, ofdesid, calificaid, apruebaid, ''POR COBRAR'', tmonid,0.00, upagoid, uproid, dptoid,'
              +'listaid,'+quotedstr(xnuevoCredito)+', crecom, creseg, crepor, cregadm, crecomp, cremora, forpagoid, cretcalid, tmonabr, cretcalabr, listaabr, forpagoabr, ciaid, crefrecl,''02'','
              +QuotedStr(xcreanomes)+', nropagare, nroautdes, tipcredes, garapenom, garasoid, asocodaux, null, numref, fecref, tiporef, null, ciudid, archivoftp, agenbancoid, dptogiro,'
              +'useidgar, tipdeseid, bcogiro, 0.00,'+QuotedStr(xcreffinpag)+','+QuotedStr(xcrefinipag)+', crebloqfec, usubloq, crebloq, flgcaja, fechacaja, crenumcomp, ccosid, cuentah, cuentad, cregencob,'
// Fin HPC_201731_COB              
//Inicio HPC_201712_COB
//Al generar un cronograma de pago adelantado le cambia el flgrefi a 'D'
//            +'flgautoma, refanomes, nrorefinan, cajausu, horacaja, asotipid, asodni, anulacaja, men_anu, mot_pre, numrefi, flgrefi, crefcan, flginconsis, perconta, c_abn,TO_CHAR(SYSDATE,''YYYYMM''),'
              +'flgautoma, refanomes, nrorefinan, cajausu, horacaja, asotipid, asodni, anulacaja, men_anu, mot_pre, numrefi,''D'' , crefcan, flginconsis, perconta, c_abn,TO_CHAR(SYSDATE,''YYYYMM''),'
//Final HPC_201712_COB
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
              +'fec_rcp, crecapliq,'+QuotedStr(DateToStr(dtpFecNuevoCronograma.Date))+', cremenobs, tipocont, NULL, cremtodep, crefanul, useranul,'+IntToStr(xcrenumcuo)+',0.00, nroficio_bck, migrado, usuautcre, fecautcre, estautcre,'
// Fin HPC_201731_COB
              +'comautcre, usuanusup, fecanusup, motanusup, estanusup, docid, ccserie, ccnodoc, ciaser, cremonins, impcon, dniruc, fecimpcon, null, 0.00,'
              +'autdescre, fecautdes, usuautdes, impcaraut, nrocaraut, diasproc, descenv, autdesges, usudesges, fechordesges, usumodcuo, fecmodcuo, motmodcuo, tasfondes, nroautonp, null,'
              +'null, null, null, impcaronp, null, null,'+quotedstr(xCREIDORI)
              +' FROM CRE301 WHERE ASOID='+quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)+' AND CREDID='+quotedstr(Dm1.cdsGrupos.FieldByName('CREDID').AsString);
        Try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        Except
         ShowMessage('Error crear el cronograma reestructurado, Revise, anule e inténtelo nuevamente');
         exit;
        End;

        //Se Inserta detalle de pago
        DM1.cdsTZona.First;
        While not  DM1.cdsTZona.Eof do
        Begin
          xSQL:='INSERT INTO CRE302( '
               +'asoid,asocodmod,tipcreid,tmonid,creano,cremes,cresaldo,'
               +'crecuota,cremto,creamort,creinteres,creflat,monpacdesgrav,'
               +'crefven,useid,uproid,upagoid,usuario,freg,hreg,forpagoid,'
               +'asoapenom,credid,tmonabr,creestid,creestado,asocodaux,areaid,'
               +'crecapcron,creanoini,cremesini,crecuotaini,crefvenini,'
               +'fecvenori,numcuoori,crecapital,cremtoint,cremtoflat,moncobdesgrav) VALUES('
               + QuotedStr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)+','
               + QuotedStr(Dm1.cdsGrupos.FieldByName('ASOCODMOD').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('TIPCREID').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('tmonid').AsString)+','
               + QuotedStr(FormatDateTime('YYYY',DM1.cdsTZona.FieldByname('fecven').AsDateTime))+','
               + QuotedStr(FormatDateTime('MM',DM1.cdsTZona.FieldByname('fecven').AsDateTime))+','
               + DM1.cdsTZona.FieldByname('cuota').AsString+','
               + Dm1.cdsTZona.FieldByName('itecuo').AsString+','
               + Dm1.cdsTZona.FieldByName('cuota').AsString+','
               + Dm1.cdsTZona.FieldByName('amort').AsString+','
               + Dm1.cdsTZona.FieldByName('interes').AsString+','
               + Dm1.cdsTZona.FieldByName('gastos').AsString+','
               + Dm1.cdsTZona.FieldByName('segdes').AsString+','
               + QuotedStr(Dm1.cdsTZona.FieldByName('fecven').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('useid').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('uproid').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('upagoid').AsString)+','
               + QuotedStr(dm1.wUsuario)+','
               + 'TRUNC(SYSDATE),SYSDATE,'
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('forpagoid').AsString)+','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('asoapenom').AsString)+','
               + QuotedStr(xnuevoCredito)+',''S/.'','
               + '''02'',''POR COBRAR'','
               + QuotedStr(Dm1.CdsSolicitud.FieldByName('ASOCODAUX').AsString)+','
               + QuotedStr('COB')+','
               + Dm1.cdsTZona.FieldByName('saldo').AsString+','
               + QuotedStr(FormatDateTime('YYYY',DM1.cdsTZona.FieldByname('fecven').AsDateTime))+','
               + QuotedStr(FormatDateTime('MM',DM1.cdsTZona.FieldByname('fecven').AsDateTime))+','
               + Dm1.cdsTZona.FieldByName('itecuo').AsString+','
               + QuotedStr(DM1.cdsTZona.FieldByname('fecven').AsString)+','
               + QuotedStr(DM1.cdsTZona.FieldByname('fecven').AsString)+','
               + Dm1.cdsTZona.FieldByName('itecuo').AsString+',0.00,0.00,0.00,0.00)';
           Try
             DM1.DCOM1.AppServer.EjecutaSql(xSQL);
           Except
            ShowMessage('Error crear el detalle del cronograma reestructurado, Revise, anule e inténtelo nuevamente');
            exit;
           End;
           DM1.cdsTZona.Next
        End;


       //Imprime recibo de pago en efectivo
         If Dm1.vsCobranza = 'X' Then // 'E' Efectivo
         Begin
            ImpReciboEfe(xAsoId, EdtDocPag.Text, DBLCTipCob.Text, 'S');
         End;
     End
     Else
     Begin
         XSQL:='UPDATE CRE301 SET CREESTID=''23'', CREESTADO=''CANCELADO A'','
         +'USUPROPAGADE='''+DM1.wUsuario+''',FECPROPAGADE=SYSDATE,FLGPROPAGADE=''X'','
         +'DIAINTCOR='+IntToStr(xDIAINTCOR)+',MONPAGADE='+FloatToStr(xMONPAGADE)+',MONCAPADE='+FloatToStr(xMONCAPADE)+','
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
         +'MONINTCORADE='+FloatToStr(xMONINTCORADE)+',MONFLAADE='+FloatToStr(xMONFLAADE)+',MONDESADE='+FloatToStr(xMONDESADE)+' ,CRESDOACT=0 '
// Fin HPC_201731_COB
         +'WHERE ASOID='+quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)
         +' AND CREDID='+quotedstr(Dm1.cdsGrupos.FieldByName('CREDID').AsString);
       Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       Except
         ShowMessage('Error al actualizar el estado como cancelado anticipado, Revise, anule e inténtelo nuevamente ');
         exit;
       End;
     End;

     DM1.CrgDatos;
     ShowMessage('Se Aplicó con exito');

     BitPrintClick(self);
     finalizaproceso;

end;


procedure TfPagosAdelantados.inicializa1;
var xsql:String;
begin
      XASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
      XCREDID:= DM1.CdsSolicitud.FieldByName('CREDID').AsString;
      Xsql:='Begin SP_COB_POLITICA_AMORTIZA_V2('''+XASOID+''','''+XCREDID+''',''2'',''3'',1,null,null,null,'''+DateToStr(DtpFecReg.Date)+'''); End; ';
      DM1.DCOM1.AppServer.EjecutaSQL(Xsql);

      Xsql:='Select ref, pos, interes, asoid, asocodmod, flecha, asoapenom, asocodaux, tipcredes, creamort, creinteres,'
           +'       creflat, amortizacion, cremtoflat, cremto, credid, credito, cuota, creano, cremes, fvencimiento, tipcreid,'
           +'       forpagoid, forpagoabr, creestid, creestado, percob, crefotorg, saldo, cinteres, interescre310, modo, acumulado,'
           +'       pago, moncobdesgrav, monpacdesgrav, xid, procesado, crecapital, cremtoint, cremtofla, cremtodesg, cremtoexc, '
           +'       tipcrepar,  monintdia,diacorrido '
           +'From COB_POLITICA_CUO_GTT WHERE 1=1 Order by ref,pos,crefotorg ';
      Dm1.cdsGrupos.Close;
      Dm1.cdsGrupos.DataRequest(Xsql);
      Dm1.cdsGrupos.Open;
      dbgAbono.DataSource := Dm1.dsGrupos;
      xCuota := Dm1.cdsGrupos.FieldByName('CREMTO').AsFloat;
      DM1.cdsGrupos.DisableControls;
      DM1.cdsGrupos.First;
      xPagoVencidos   := 0;
      xPagoAdelantado := 0;
      vnegativos:=0;

      While not  Dm1.cdsGrupos.Eof do
      Begin
        //Se suma lo pagos vencidos
        If TRIM(Dm1.cdsGrupos.FieldByName('MODO').AsString)<>'ADELANTADO' Then
        Begin
          xPagoVencidos:=xPagoVencidos+Dm1.cdsGrupos.FieldByName('SALDO').AsFloat;
        End
        Else
        Begin
          xPagoAdelantado:=xPagoAdelantado+Dm1.cdsGrupos.FieldByName('SALDO').AsFloat;
        End;

        Dm1.cdsGrupos.Next;
      End;
      dbgAbono.ColumnByName('SALDO').FooterValue := FloatToStrF(0.00, ffNumber,10,2);
      dbgAbono.ColumnByName('PAGO').FooterValue  := FloatToStrF(0.00, ffNumber,10,2);
      edtvencido.Text := FormatFloat('###,###.00', xPagoVencidos);
      edtCapital.Text := FormatFloat('###,###.00', xPagoAdelantado);
      edtTotal.Text   := FormatFloat('###,###.00', xPagoVencidos+xPagoAdelantado);
      Dm1.cdsGrupos.EmptyDataSet;
      DM1.cdsGrupos.EnableControls;
end;

procedure TfPagosAdelantados.DtpFecRegChange(Sender: TObject);
begin

  Dm1.cdsGrupos.EmptyDataSet;     
  DtpFecPag.Date := DtpFecReg.Date;
  dtpFecNuevoCronograma.Date := DtpFecReg.Date;
  edtvencido.Text:='0.00';
  edtCapital.Text:='0.00';
  edtTotal.Text:='0.00';
  edtSaldoCapital.Text:='0.00';
end;

procedure TfPagosAdelantados.BitSalirClick(Sender: TObject);
begin
  close;
end;

//Verifica si existe pagos posteriores porsteriores al pago adelantado
function TfPagosAdelantados.VerPagosPosteriores: boolean;
var xsql:String;
begin

  XSQL:=' Select asoid,credid From cre310 '
        +' Where asoid='''+Dm1.cdsSolicitud.FieldByName('ASOID').AsString+'''  and '
        +'      credid='''+Dm1.cdsSolicitud.FieldByName('CREDID').AsString+''' and '
        +'     crefpag>='+QuotedStr(DateToStr(DtpFecPag.Date))+ ' and '
        +'     creestid not in (''13'',''04'',''99'') and numdev is null ';
  DM1.cdsTZona.Close;
  DM1.cdsTZona.DataRequest(XSQL);
  DM1.cdsTZona.Open;
  If  DM1.cdsTZona.RecordCount>0 Then
       result  := True
  Else result  := False;

 end;

procedure TfPagosAdelantados.BitPrintClick(Sender: TObject);
VAR xSql:String;
begin

 If rdbReduceCuota.Checked Then
 Begin
  pplblTipo1.Visible := False;
  pplblTipo2.Visible := True;
 End;

 If rdbReduceplazo.Checked Then
 Begin
  pplblTipo2.Visible := False;
  pplblTipo1.Visible := True;
 End;

 If DM1.Valores(edtSaldoCapital.Text)<=0 Then
 Begin
   pplblTipo2.Visible := False;
   pplblTipo1.Visible := False;
 End;

 pplblNombre.Caption    := dm1.cdsAso.Fieldbyname('ASOAPENOM').AsString;
 pplblDNI.Caption       := dm1.cdsAso.Fieldbyname('ASODNI').AsString;
 pplblDNI2.Caption      := dm1.cdsAso.Fieldbyname('ASODNI').AsString;
 pplblCredito.Caption   := xcredid;
 pplblDireccion.Caption := dm1.cdsAso.Fieldbyname('ASODIR').AsString;
 pplbltelefono.Caption  := Trim(dm1.cdsAso.Fieldbyname('ASOTELF1').AsString)+'/'+Trim(dm1.cdsAso.Fieldbyname('ASOTELF2').AsString);
 pplblemail.Caption     := dm1.cdsAso.Fieldbyname('ASOEMAIL').AsString;
 pplblfechapago.Caption := DateToStr(DtpFecReg.date);
 pplblImporte.Caption   := FormatFloat('###,###,###.00', xMONPAGADE);
 pplblfecha.Caption     := 'Lima,'+FormatDateTime('dd',date)+' de '+ FormatDateTime('mmmm',date)+' del '+ FormatDateTime('yyyy',date);

 ppRepCondicionPagoAdelantado.Print;
 ppRepCondicionPagoAdelantado.Stop;


end;

procedure TfPagosAdelantados.EdtDocPagExit(Sender: TObject);
begin
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
   Else If Trim(DBLCTipCob.Text) = '05' Then
   Begin
      If Length(Trim(EdtDocPag.Text)) > 11 Then
      Begin
         MessageDlg('Verifique, número de Operación tiene más de 11 caracteres', mtError, [mbOk], 0);
         EdtDocPag.SetFocus;
      End;
   End
   Else
   Begin
      If Length(Trim(EdtDocPag.Text)) > 10 Then
      Begin
         MessageDlg('Verifique, número de Operación tiene más de 10 caracteres', mtError, [mbOk], 0);
         EdtDocPag.SetFocus;
      End;
   End;
end;

procedure TfPagosAdelantados.EdtDocPagKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Trim(DBLCTipCob.text) = '03' Then
   Begin
      If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
         Key := #0;
   End;
end;


function TfPagosAdelantados.ValidaIngresoBancos_Global(xCreDocPag,
  xCrefPag: String; xMonto: Double): Boolean;
Var
   xSQL, sDocPag, sMSG : String;
Begin
  sDocPag:= inttostr(strtoint(xCreDocPag));

  xSQL:='SELECT A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.CREFPAG,A.CREDOCPAG,A.USUARIO,A.HREG,A.CREMTOCOB,A.NUMOPE,'
       +'TO_NUMBER(CREDOCPAG), TO_NUMBER('+sDocPag+') FROM ( '
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

  xSQL:='SELECT A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.CREFPAG,A.CREDOCPAG,A.USUARIO,A.HREG,A.CREMTOCOB,A.NUMOPE,'
       +' TO_NUMBER(CREDOCPAG), TO_NUMBER('+sDocPag+') FROM ( '
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

   Result:=False;

end;

procedure TfPagosAdelantados.finalizaproceso;
begin
 inicializa1;
 grbDatosPago.Enabled        := False;
 grbSaldo.Enabled            := False;
 grbFechaReg.Enabled         := False;
 grbExcedente.Enabled        := False;
 grbInicioCronograma.Enabled := False;
 BitPrint.Enabled            := True;
 BitGrabar.Enabled           := False;
 mObsPag.Enabled             := False;
end;

procedure TfPagosAdelantados.edtnumcuotas2KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key In ['.',' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
end;

function TfPagosAdelantados.GnrCEfe: String;
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


procedure TfPagosAdelantados.ImpReciboEfe(xAsoId, xCreDocPag, xForpagId,
  xNuevo: String);
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

procedure TfPagosAdelantados.dbgAbonoDblClick(Sender: TObject);
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
var
   vtexto:String;
   vssaldo, vstotal: currency;
// Fin HPC_201731_COB
begin

  If TRIM(Dm1.cdsGrupos.FieldByName('MODO').AsString)='MES PAGO' Then
  Begin
   If  Dm1.cdsGrupos.FieldByName('DIACORRIDO').AsInteger>15 then
       vtexto:='Esta cobrando el Gasto por haber pasado los 15 días del mes : '
              + FloatToStr(Dm1.cdsGrupos.FieldByName('CREFLAT').AsFloat)+' y Desgravamen : '
              + FloatToStr(Dm1.cdsGrupos.FieldByName('MONPACDESGRAV').AsFloat)
       Else vtexto:='';

   ShowMessage('Se esta cobrando el interés por '+Trim(Dm1.cdsGrupos.FieldByName('DIACORRIDO').AsString)+' dia(s): '+
                FloatToStr(Dm1.cdsGrupos.FieldByName('MONINTDIA').AsFloat)+','+#13+vtexto+#13+
               'más el capital: '+FloatToStr(Dm1.cdsGrupos.FieldByName('CREAMORT').AsFloat)+#13+
               'TOTAL PAGO DEL MES: '+FloatToStr(Dm1.cdsGrupos.FieldByName('PAGO').AsFloat));
  End;
// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
   If (DM1.cdsGrupos.FieldByName('PAGO').AsCurrency > 0) And
      (DM1.cdsGrupos.FieldByName('PAGO').AsCurrency <> DM1.cdsGrupos.FieldByName('SALDO').AsCurrency) Then
   Begin
      vssaldo := DM1.cdsGrupos.FieldByName('SALDO').AsCurrency - DM1.cdsGrupos.FieldByName('PAGO').AsCurrency;
      vstotal := Dm1.Valores(edtmonpag.Text) + vssaldo;
      ShowMessage('PARA CANCELAR ESTA CUOTA LE FALTA S/. ' + FormatCurr('###,###,###.00', vssaldo) + ' Y EL TOTAL SERIA S/. ' + FormatCurr('###,###,###.00', vstotal));
   End;

   If (DM1.cdsGrupos.FieldByName('PAGO').AsCurrency > 0) And (CDSXPUCHODESCARGO.RecordCount > 0) Then
   Begin
      CDSXPUCHODESCARGO.Filter := 'CREDID=''' + DM1.cdsGrupos.Fieldbyname('CREDID').AsString + ''' AND CRECUOTA=''' + DM1.cdsGrupos.Fieldbyname('CUOTA').AsString + ''' AND TIPO = ''CUO''';
      CDSXPUCHODESCARGO.Filtered := True;
      pnlDetBoletas.Left := 340;
      pnlDetBoletas.Top := 323;
      pnlDetBoletas.Visible := True;
      ActfootDetBoletas;
   End;
// Fin HPC_201731_COB
end;

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TfPagosAdelantados.BtnPuchosClick(Sender: TObject);
begin
   EdtDocPag.Text:='';
   vsReProcesa := False;
   pnlxPucho.Left := 150;
   pnlxPucho.Top := 292;
   pnlxPucho.Visible := true;
   DtpFecPag2.Date := DtpFecReg.Date;
   DtpFecPag2.Enabled:= False;
end;
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TfPagosAdelantados.Button1Click(Sender: TObject);
begin
If (CDSXPUCHOS.RecordCount > 0) Or (vsReProcesa) Then
   Begin
      BtnFiltra2Click(Self);
   End;
   pnlxPucho.Visible := False;
   edtDocPag2.Text := '';
   edtmonpag2.Text := '0.00';
end;
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TfPagosAdelantados.BtnFiltra2Click(Sender: TObject);
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
      Dm1.cdsGrupos.EmptyDataSet;
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
   Dm1.cdsGrupos.First;
   edtDocPag2.Text := '';
   edtmonpag2.Text := '0.00';
End;
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TfPagosAdelantados.BtnadicionaClick(Sender: TObject);
Begin
   If Dm1.Valores(edtmonpag2.Text) = 0 Then
   Begin
      ShowMessage('Debe ingresar el importe del documento');
      edtmonpag2.SetFocus;
      Exit
   End;

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

   BitGrabar.Enabled:=True;

   CDSXPUCHOS.Append;
   CDSXPUCHOS.FieldByName('NROOPE').AsString := edtDocPag2.Text;
   CDSXPUCHOS.FieldByName('FOPERAC').AsDateTime := DtpFecPag2.Date;
   CDSXPUCHOS.FieldByName('IMPORTE').AsCurrency := Dm1.Valores(edtmonpag2.Text);
   CDSXPUCHOS.Post;
   ActfootBoletas;
   edtDocPag2.Text := '';
   edtmonpag2.Text := '0.00';
   edtDocPag2.SetFocus;

End;
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
Procedure TfPagosAdelantados.ActfootBoletas;
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
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
Function TfPagosAdelantados.DistPagos: String;
Var
   vnAbono, vnComoPago, vnExcedente: Currency;
   vsCredid, XSQL: String;
   vnCrecuota: integer;
Begin
   CDSXPUCHODESCARGO.EmptyDataSet;
   Dm1.cdsGrupos.DisableControls;
   Dm1.cdsGrupos.First;
   CDSXPUCHOS.First;

   vnAbono := Dm1.cdsGrupos.Fieldbyname('PAGO').AsCurrency;
   vnComoPago := CDSXPUCHOS.FieldByName('IMPORTE').AsCurrency;
   vnExcedente := Dm1.Valores(edtExcedente.Text);

   xMONPAGADE    := 0;
   xMONINTCORADE := 0;
   xDIAINTCOR    := 0;
   xMONCAPADE     := 0;
   xMONFLAADE := 0;
   xMONDESADE := 0;
   xMONCAPADE:= 0;

   While Not dm1.cdsGrupos.Eof Do
   Begin
     SumaVariables;
     dm1.cdsGrupos.Next;
   End;
   dm1.cdsGrupos.First;
   While Not Dm1.cdsGrupos.Eof Do
   Begin

      If ((Dm1.cdsGrupos.FieldByName('PAGO').AsFloat > 0) And (Dm1.cdsGrupos.FieldByName('PROCESADO').AsString <> 'X') And (Dm1.cdsGrupos.RecordCount > 0)) Or (Chkexceso.Checked) Then
      Begin
         While (vnComoPago > 0) And (Not Dm1.cdsGrupos.eof) Do
         Begin
            If vnAbono >= vnComoPago Then
            Begin
               CDSXPUCHODESCARGO.Insert;
               CDSXPUCHODESCARGO.FieldByName('TIPO').AsString := 'CUO';
               CDSXPUCHODESCARGO.FieldByName('NROOPE').AsString := CDSXPUCHOS.FieldByName('NROOPE').AsString;
               CDSXPUCHODESCARGO.FieldByName('FOPERAC').AsDateTime := CDSXPUCHOS.FieldByName('FOPERAC').AsDateTime;
               CDSXPUCHODESCARGO.FieldByName('CREDID').AsString := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
               CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsInteger := Dm1.cdsGrupos.FieldByName('CUOTA').AsInteger;
               CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString := Dm1.cdsGrupos.FieldByName('CINTERES').AsString;
               vsCredid := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
               vnCrecuota := Dm1.cdsGrupos.FieldByName('CUOTA').AsInteger;

               CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsCurrency := vnComoPago;

               CDSXPUCHODESCARGO.FieldByName('INTERES').AsFloat := StrToFloat(Dm1.cdsGrupos.FieldByName('monintdia').AsString);
               CDSXPUCHODESCARGO.FieldByName('MODO').AsString := Dm1.cdsGrupos.FieldByName('MODO').AsString;

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

                  CDSXPUCHODESCARGO.FieldByName('CREDID').AsString    := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
                  CDSXPUCHODESCARGO.FieldByName('CRECUOTA').AsInteger := Dm1.cdsGrupos.FieldByName('CUOTA').AsInteger;
                  CDSXPUCHODESCARGO.FieldByName('CINTERES').AsString  := Dm1.cdsGrupos.FieldByName('CINTERES').AsString;
                  vsCredid   := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
                  vnCrecuota := Dm1.cdsGrupos.FieldByName('CUOTA').AsInteger;

                  CDSXPUCHODESCARGO.FieldByName('IMPORTE').AsCurrency := vnAbono;
                  CDSXPUCHODESCARGO.FieldByName('INTERES').AsFloat := StrToFloat(Dm1.cdsGrupos.FieldByName('monintdia').AsString);
                  CDSXPUCHODESCARGO.FieldByName('MODO').AsString := Dm1.cdsGrupos.FieldByName('MODO').AsString;
                  CDSXPUCHODESCARGO.Post;
                  vnComoPago := vnComoPago - vnAbono;
                  vnAbono := 0;
               End
               Else
               Begin


                  Dm1.cdsGrupos.Next;

                  If Not Dm1.cdsGrupos.Eof Then vnAbono := Dm1.cdsGrupos.Fieldbyname('PAGO').AsCurrency;
               End;
            End;

         End;
      End;

   End;

   Excedentes(vsCredid,vnExcedente,vnComoPago,vnCrecuota);

   Dm1.cdsGrupos.EnableControls;

End;
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
Procedure TfPagosAdelantados.Excedentes(vsCredid : String; vnExcedente,vnComoPago :Double; vnCrecuota : Integer );
var
  XSQL: String;
Begin
       If Chkexceso.Checked Then
       Begin

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

          while not CDSXPUCHOS.Eof Do
          Begin
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
                   CDSXPUCHODESCARGO.FieldByName('INTERES').AsFloat := StrToFloat(Dm1.cdsGrupos.FieldByName('monintdia').AsString);
                   CDSXPUCHODESCARGO.FieldByName('MODO').AsString := Dm1.cdsGrupos.FieldByName('MODO').AsString;
                   CDSXPUCHODESCARGO.Post;
                   vnExcedente := vnExcedente - vnComoPago;
                   vnComoPago := 0;
                   CDSXPUCHOS.Next;
                   If CDSXPUCHOS.Eof Then Break;
                   vnComoPago := CDSXPUCHOS.FieldByName('IMPORTE').AsCurrency;
                End
           End;
       End;           
End;
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TfPagosAdelantados.dbgxPuchoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Begin
   If (key = VK_Delete) And (ssCtrl In Shift) Then
   Begin
      CDSXPUCHOS.Delete;
      ActfootBoletas;
      vsReProcesa := True;
   End;
End;
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
Procedure TfPagosAdelantados.ActfootDetBoletas;
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
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TfPagosAdelantados.Button2Click(Sender: TObject);
begin
   pnlDetBoletas.Visible := False;
   CDSXPUCHODESCARGO.Filtered := False;
end;
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TfPagosAdelantados.grbExcedenteDblClick(Sender: TObject);
begin
   If (Dm1.Valores(edtExcedente.Text) > 0) And (CDSXPUCHODESCARGO.RecordCount > 0) Then
   Begin
      CDSXPUCHODESCARGO.Filter := 'CREDID=''' + Dm1.cdsGrupos.Fieldbyname('CREDID').AsString + ''' AND TIPO=''EXC'' ';
      CDSXPUCHODESCARGO.Filtered := True;
      pnlDetBoletas.Left := 176;
      pnlDetBoletas.Top := 360;
      pnlDetBoletas.Visible := True;
      ActfootDetBoletas;
   End;
end;
// Fin HPC_201731_COB

// Inicio HPC_201731_COB
// Mejoras en el proceso de Pago Adelantado
procedure TfPagosAdelantados.SumaVariables;
begin
         If Dm1.cdsGrupos.FieldByName('MODO').AsString='MES PAGO' then
         Begin
           xMONPAGADE    := xMONPAGADE+Dm1.cdsGrupos.FieldByName('PAGO').AsFloat;
           xMONINTCORADE := xMONINTCORADE+Dm1.cdsGrupos.FieldByName('MONINTDIA').AsFloat;
           xDIAINTCOR    := xDIAINTCOR+Dm1.cdsGrupos.FieldByName('DIACORRIDO').AsInteger;
           xMONCAPADE    := xMONCAPADE+Dm1.cdsGrupos.FieldByName('CREAMORT').AsFloat;
           //Si los dias trascurridos son mayor que 15 guardo el FLAT Y DESGRAVAMEN
           If Dm1.cdsGrupos.FieldByName('DIACORRIDO').AsInteger>15 then
           Begin
              xMONFLAADE := xMONFLAADE +Dm1.cdsGrupos.FieldByName('CREFLAT').AsFloat; ;
              xMONDESADE := xMONDESADE +Dm1.cdsGrupos.FieldByName('MONPACDESGRAV').AsFloat;;
           End;
         End;

         //Si el modo de pago es adelantado guardo el capital que debe ser igual a lo pagado
         //y sumo al monto pagado adelantado para guardar el total del pago adelantado.
         If Dm1.cdsGrupos.FieldByName('MODO').AsString='ADELANTADO' then
         Begin
           xMONPAGADE:=xMONPAGADE+Dm1.cdsGrupos.FieldByName('PAGO').AsFloat;
           xMONCAPADE:=xMONCAPADE+Dm1.cdsGrupos.FieldByName('PAGO').AsFloat;
         End;
end;
// Fin HPC_201731_COB
End.
//Final HPC_201614_COB
