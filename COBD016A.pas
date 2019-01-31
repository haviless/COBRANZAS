unit COBD016A;
// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COBD017
// Formulario                    : fPagosAdelantadosSimu
// Fecha de Creación             : 13/11/2017
// Autor                         : Jesús Castillo Pampas.
// Objetivo                      : Simulación de Pagos Adelantados
// HPC_201731_COB                : Mejoras en el proceso de Pago Adelantado

//Inicio  HPC_201731_COB
//Mejoras en el proceso de Pago Adelantado
//HPC_201801_COB     : Permitir generar simulación de pagos adelantados con fecha de registro futura.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, StdCtrls,wwdblook,ImgList,
  wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid,DB,DBClient, Buttons, jpeg,
  ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, Mask, wwdbedit, Wwdbspin, ppMemo, ppStrtch, ppVar, ppDB,
  ppDBPipe, ppEndUsr, ppParameter, ppSubRpt, DBGrids;

type
  TfPagosAdelantadosSimu = class(TForm)
    dbgAbono: TwwDBGrid;
    grbDatosPago: TGroupBox;
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
    SpeedButton1: TSpeedButton;
    ppREstCta: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel44: TppLabel;
    ppLblCodMod: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    pplblTipCre: TppLabel;
    pplblNomGen: TppLabel;
    pplblNumPre: TppLabel;
    ppLabel48: TppLabel;
    pplblFecPre: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    pplblUse: TppLabel;
    pplblMonto: TppLabel;
    ppLabel51: TppLabel;
    pplblNumCuo: TppLabel;
    ppLabel52: TppLabel;
    pplblTipCli: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppShpImg: TppShape;
    ppImage2: TppImage;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLblInt: TppLabel;
    ppLblFlat: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLblCuenta: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLblOriOto: TppLabel;
    pplblRotulo: TppLabel;
    pplblRot02: TppLabel;
    ppLblTipDes: TppLabel;
    ppLblEstado: TppLabel;
    ppLblCuotas: TppLabel;
    ppLabel76: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    pplblTipCliOtorg: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLblRegimen: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLblDirDom: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel74: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLblDiasAtraso: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLblFirmoAutorizacion: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLblProvision: TppLabel;
    ppLabel102: TppLabel;
    ppLabel136: TppLabel;
    ppLblDesgravamen: TppLabel;
    lblGasRef: TppLabel;
    lblMonGasRef: TppLabel;
    ppLabel75: TppLabel;
    ppLabel166: TppLabel;
    ppImage3: TppImage;
    ppDetailBand3: TppDetailBand;
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
    ppFooterBand3: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel77: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel78: TppLabel;
    lblSalTot: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLblCuoVen: TppLabel;
    pplblCuoPen: TppLabel;
    ppLabel95: TppLabel;
    pplblMonPag: TppLabel;
    ppLine17: TppLine;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLblUser: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLblApro: TppLabel;
    lblVen: TppLabel;
    lblPen: TppLabel;
    lblTot: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLblCuoDif: TppLabel;
    lblDif: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppRepCCI: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape6: TppShape;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel176: TppLabel;
    ppLabel180: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel181: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine25: TppLine;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppLabel182: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    lblGas02: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppParameterList2: TppParameterList;
    ppDBEstCta: TppDBPipeline;
    ppDesigner2: TppDesigner;
    ppDBCCI: TppDBPipeline;
    ppLabel124: TppLabel;
    ppLabel100: TppLabel;
    imgFlecha: TImageList;
    procedure BtnfiltraClick(Sender: TObject);
    procedure dbgAbonoCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgAbonoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtmonpagExit(Sender: TObject);
    procedure edtmonpagKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitGrabarClick(Sender: TObject);
    procedure DtpFecRegChange(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure edtnumcuotas2KeyPress(Sender: TObject; var Key: Char);
    procedure dbgAbonoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure imprCronograma(Sender: TObject);
  private
    { Private declarations }
    procedure inicializa1();
    procedure finalizaproceso();
    Function  ValidaIngresoBancos_Global(xCreDocPag, xCrefPag: String; xMonto : Double) : Boolean;
    Function GnrCEfe(): String;    
  public
    { Public declarations }
    xAsoId,xcredid : String;
    xCuotaPendiente,vnegativos:Integer;
    xCuotaRestante,vmayor : Integer;
    xPagoVencidos,xPagoAdelantado,xMONPAGADE,xCreinteres,xCredflat,xTasfondes  :double;
    xCuota:double;
    vpCredid_G,xnuevoCredito_G :String;
    Function VerPagosPosteriores():boolean;
    Procedure ImpReciboEfe(xAsoId, xCreDocPag, xForpagId, xNuevo: String);
  end;

var
  fPagosAdelantadosSimu: TfPagosAdelantadosSimu;

implementation

uses COBDM1, COBD017, COB524A;

{$R *.dfm}

procedure TfPagosAdelantadosSimu.BtnfiltraClick(Sender: TObject);
var xsql,xano,xmes:String;
    xSumSaldo,xSumaTotal,xMonPago: DOUBLE;
     xSumPago:DOUBLE;
     Pagosposteriores:Boolean;
begin


 EdtMonpag.Text  := FormatFloat('###,##0.00', DM1.Valores(EdtMonpag.Text));
 EdtMonpag.BiDiMode := bdRightToLeft;

 xMonPago        :=  DM1.Valores(EdtMonpag.Text);

 Pagosposteriores:= VerPagosPosteriores;
 If Pagosposteriores Then
 Begin
   Xsql := 'BEGIN '
          + ' SP_COB_ANU_PAG_POS_FEC_REG_SIM('
          + quotedstr(XASOID) + ','
          + quotedstr(XCREDID)+ ','
          + quotedstr(DtpFecReg.Text) + '); END;';
    Try
      DM1.DCOM1.AppServer.EjecutaSql(Xsql);
    Except
      ShowMessage('Error en LA REVERSIÓN de DIFERIDOS');
      exit;
    End;
 End;
  
  Xsql:='Select asoid,credid,crecuota,crefven,crefvenini from db2admin.COB_SIM_CRO_DET_GTT '
       +'where  asoid='''+XASOID+''' and credid='''+XCREDID+''' and crefven<>crefvenini and crefvenini is not null';
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(XSQL);
  DM1.cdsDFam.Open;
  If Dm1.cdsDFam.RecordCount>0 Then
  Begin
        Xsql := 'BEGIN '
          + ' SP_COB_REV_DIF_X_CRED_SIM('
          + quotedstr(XASOID) + ','
          + quotedstr(XCREDID) + '); END;';
        Try
          DM1.DCOM1.AppServer.EjecutaSql(Xsql);
        Except
          ShowMessage('Error en LA REVERSIÓN de DIFERIDOS');
          exit;
        End;

  End;

 Screen.Cursor := crHourGlass;
 Xsql:='Begin SP_COB_POLITICA_AMORTIZA_SIM('''+XASOID+''','''+XCREDID+''',''2'',''3'','+CurrToStr(dm1.Valores(edtmonpag.Text))+',null,null,null,'''+DateToStr(DtpFecReg.Date)+'''); End; ';
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
 xCuotaRestante  := 0;
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
     xCuotaPendiente := xCuotaPendiente+1;
    End;

    If Dm1.cdsGrupos.FieldByName('PAGO').AsFloat<Dm1.cdsGrupos.FieldByName('SALDO').AsFloat Then
    Begin
       xSumSaldo:= xSumSaldo+(Dm1.cdsGrupos.FieldByName('SALDO').AsFloat-Dm1.cdsGrupos.FieldByName('PAGO').AsFloat) ;
       xCuotaRestante := xCuotaRestante+1;
    End;

    If DM1.cdsGrupos.FieldByName('PAGO').AsFloat > 0 Then
    Begin
     xSumPago := xSumPago + DM1.cdsGrupos.FieldByName('PAGO').AsFloat;
    End;

    Dm1.cdsGrupos.Next;
 End;
 edtnumcuotas.MaxValue := xCuotaRestante+1;

 If dm1.Valores(EdtMonPag.Text) - xSumPago > 0 Then
 Begin
   edtExcedente.Text := FormatFloat('###,##0.00', dm1.Valores(EdtMonPag.Text) - xSumPago);
 End;

 rdbReduceCuota.Caption := 'Reducción de cuota y mantenimiento de plazo.('+IntToStr(xCuotaPendiente)+')';
 edtnumcuotas.Text      := IntToStr(xCuotaRestante);
 DM1.cdsGrupos.EnableControls;
 DM1.cdsGrupos.First;
 edtSaldoCapital.BiDiMode := bdRightToLeft;
 edtSaldoCapital.Text  := FormatFloat('###,##0.00',xSumSaldo);

 dbgAbono.ColumnByName('SALDO').FooterValue := FloatToStrF(xSumaTotal, ffNumber,10,2);
 dbgAbono.ColumnByName('PAGO').FooterValue  := FloatToStrF(xSumPago, ffNumber,10,2);
 edtvencido.Text := FormatFloat('###,##0.00', xPagoVencidos);
 edtCapital.Text := FormatFloat('###,##0.00', xPagoAdelantado);
 edtTotal.Text   := FormatFloat('###,##0.00', xPagoVencidos+xPagoAdelantado);


 Screen.Cursor := crDefault;

  If (xMonPago-xPagoVencidos)/2<=xCuota Then
  Begin
    ShowMessage('El pago adelantado debe ser mayor a dos cuotas PACTADAS - '+FormatFloat('###,###.00',xCuota*2));
    exit;
  End;

end;

procedure TfPagosAdelantadosSimu.dbgAbonoCalcCellColors(Sender: TObject; Field: TField;
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

procedure TfPagosAdelantadosSimu.dbgAbonoDrawDataCell(Sender: TObject; const Rect: TRect;
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

procedure TfPagosAdelantadosSimu.FormShow(Sender: TObject);
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

procedure TfPagosAdelantadosSimu.fcShapeBtn1Click(Sender: TObject);
var xSQL,xModoFinanciamiento,xnumcuota:String;
begin

  XSQL:='SELECT CREIDORI,CREINTERES,CREDFLAT,TASFONDES FROM  db2admin.COB_SIM_CRO_CAB_GTT WHERE ASOID='+quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)
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
    vmayor:=0;
    While not DM1.cdsTZona.eof do
    Begin
      If (DM1.cdsTZona.FieldByname('amort').AsFloat<0) or
         (DM1.cdsTZona.FieldByname('cuota').AsFloat<0) Then
         vnegativos:=vnegativos+1;
      If (rdbReduceplazo.Checked) and  (DM1.cdsTZona.FieldByname('cuota').AsFloat>xCuota) Then
          vmayor:=vmayor+1;
      Dm1.cdsTZona.Next;
    End;
    If vnegativos>0 Then
       ShowMessage('El nuevo cronograma tiene valores negativos, verifique y cambie el número de cuotas antes de grabar');

    If vmayor>0 Then
       ShowMessage('El nuevo cronograma tiene valores de cuota mayor al pactado('+FloatToStr(xCuota)+'), verifique y cambie el número de cuotas antes de grabar');

    fCronogramaPrev := TfCronogramaPrev.create(self);
    fCronogramaPrev.DBGPREVIO.DataSource :=  DM1.dsTZona;
    fCronogramaPrev.Showmodal;
    fCronogramaPrev.free;
end;

procedure TfPagosAdelantadosSimu.FormCreate(Sender: TObject);
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

      inicializa1();
      SysLocale.MiddleEast := true;
      edtvencido.BiDiMode := bdRightToLeft;
      edtCapital.BiDiMode := bdRightToLeft;
      edtTotal.BiDiMode   := bdRightToLeft;
      DM1.cdsGrupos.EnableControls;
end;

procedure TfPagosAdelantadosSimu.edtmonpagExit(Sender: TObject);
begin
   If Length(Trim(EdtMonpag.Text)) = 0 Then
   Begin
      EdtMonpag.Text := '0.00';
   End;
   EdtMonpag.Text := FormatFloat('###,##0.00', DM1.Valores(EdtMonpag.Text));
   Btnfiltra.SetFocus;
end;

procedure TfPagosAdelantadosSimu.edtmonpagKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
end;

procedure TfPagosAdelantadosSimu.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
end;

procedure TfPagosAdelantadosSimu.BitGrabarClick(Sender: TObject);
var xSQL,vsTipCont,vsRcobid,vsDetRcobid,xTipo,vpCredid, vpCrecuota, vpInteres,xnuevoCredito,xcreanomes,xcreffinpag,xcrefinipag,xCREIDORI,xRecEfe: String;
    xcremtosol,Xmtosaldo,xcrecuota : double;
    xMONCAPADE,xMONINTCORADE,xMONFLAADE,xMONDESADE : double;
    xcrenumcuo,vnNumero,xcorr,xDIAINTCOR: integer;
begin

   If vnegativos>0 Then
   Begin
     ShowMessage('El nuevo cronograma tiene valores negativos, verifique y cambie el número de cuotas');
     exit;
   End;

    If vmayor>0 Then
    Begin
       ShowMessage('El nuevo cronograma tiene valores de cuota mayor al pactado('+FloatToStr(xCuota)+'), verifique y cambie el número de cuotas');
       exit;
    End;

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

   If DM1.Valores(EdtMonPag.Text) < 0 Then
   Begin
      MessageDlg(' No Se Puede Registrar Montos Negativos ', mtError, [mbOk], 0);
      Exit;
   End;

   //Inicio HPC_201801_COB: Permitir generar simulacion de pago adelantado con fecha de registro futura
   //                       Se comento la validacion que no permitia generar la simulación a una fecha futura
   //If (DtpFecReg.Date > DM1.FechaSys)  Then
   //Begin
   //   MessageDlg('La Fecha de Documento no puede ser mayor a la Fecha de Registro', mtError, [mbOk], 0);
   //   Exit;
   //End;
   //Fin HPC_201801_COB

   If (Length(Trim(DtpFecReg.Text)) = 0) Then
   Begin
      MessageDlg('Debe ingresar la Fecha de Pago', mtError, [mbOk], 0);
      DtpFecReg.SetFocus;
      EXIT;
   End;

   If dm1.Valores(edtmonpag.Text) = 0 Then
   Begin
      MessageDlg('Debe ingresar Importe a Pagar', mtError, [mbOk], 0);
      edtmonpag.SetFocus;
      EXIT;
   End;

  vnNumero := 0;

  vnNumero   := 0;
  xMONPAGADE := 0;
  xMONCAPADE := 0;
  xMONFLAADE := 0;
  xMONDESADE := 0;
  xMONINTCORADE := 0;
//Cancela crédito
   DM1.cdsGrupos.First;
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
            + '   SP_COB_PAGO_CUOTA_V3_SIM(' + quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)+ ','
            + quotedstr(Dm1.cdsGrupos.FieldByName('CREDID').AsString) + ','
            + quotedstr(Dm1.cdsGrupos.FieldByName('CUOTA').AsString) + ','
            + quotedstr(Dm1.cdsGrupos.FieldByName('CINTERES').AsString) + ','
            + Dm1.cdsGrupos.FieldByName('PAGO').AsString + ','
            + quotedstr('PRUEBA') + ','
            + quotedstr(DtpFecReg.Text) + ','
            + quotedstr(DtpFecReg.Text) + ','

            + quotedstr('') + ','
            + quotedstr('') + ','
            + quotedstr('02') + ','

            + quotedstr('') + ','
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


     If Dm1.Valores(edtExcedente.Text) > 0 Then
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
              + '        FROM db2admin.COB_SIM_CRO_DET_GTT '
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
        If Length(Trim(vpCrecuota))>0 Then
        Begin
          xSQL := 'BEGIN '
           + '   SP_COB_PAGO_CUOTA_V3_SIM('
           + quotedstr(xAsoid) + ','
           + quotedstr(vpCredid) + ','
           + quotedstr(vpCrecuota) + ','
           + quotedstr(vpInteres) + ','
           + CurrToStr(DM1.Valores(edtExcedente.Text)) + ','
           + quotedstr('PRUEBA') + ','
           + quotedstr(DtpFecReg.Text) + ','
           + quotedstr(DtpFecReg.Text) + ','
           + quotedstr('') + ','
           + quotedstr('') + ','
           + quotedstr('02') + ','
           + quotedstr('') + ','
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

     vpCredid      := Dm1.cdsGrupos.FieldByName('CREDID').AsString;
     vpCredid_G := vpCredid;
    //Saldo Para Financiar
     If DM1.Valores(edtSaldoCapital.Text)>0 Then
     Begin

        try //si tiene una letra hace una excep y el correlativo lo pone con un solo numero
         xcorr         := StrToInt(copy(vpCredid,9,2))+1;
         xnuevoCredito := copy(vpCredid,1,8)+dm1.StrZero(trim(IntToStr(xcorr)),2)+copy(vpCredid,11,5);
        Except
          xcorr         := StrToInt(copy(vpCredid,10,1))+1;
          xnuevoCredito := copy(vpCredid,1,9)+dm1.StrZero(trim(IntToStr(xcorr)),1)+copy(vpCredid,11,5);
        End;
        xnuevoCredito_G := xnuevoCredito;
        xcreanomes    := FormatDateTime('YYYYMM',dtpFecNuevoCronograma.Date);

       //PONER LAS CUOTAS PENDIENTES COMO TIPO 20 RESTRUCTURADO
       XSQL:='UPDATE db2admin.COB_SIM_CRO_DET_GTT SET CREESTID=''20'',CREESTADO=''REESTRUCTURADO'' '
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
        XSQL:='SELECT CREIDORI,CREINTERES,CREDFLAT,TASFONDES FROM  db2admin.COB_SIM_CRO_CAB_GTT WHERE ASOID='+quotedstr(Dm1.cdsGrupos.FieldByName('ASOID').AsString)
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
       XSQL:='UPDATE db2admin.COB_SIM_CRO_CAB_GTT SET CREESTID=''23'', CREESTADO=''CANCELADO A'', CREIDORI='''+xCREIDORI+''', '
            +'CRENEWID='''+xnuevoCredito+''',USUPROPAGADE='''+DM1.wUsuario+''',FECPROPAGADE=SYSDATE,FLGPROPAGADE=''X'','
            +'DIAINTCOR='+IntToStr(xDIAINTCOR)+',MONPAGADE='+FloatToStr(xMONPAGADE)+',MONCAPADE='+FloatToStr(xMONCAPADE)+','
            +'MONINTCORADE='+FloatToStr(xMONINTCORADE)+',MONFLAADE='+FloatToStr(xMONFLAADE)+',MONDESADE='+FloatToStr(xMONDESADE)+' '
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
        xSql:='INSERT INTO db2admin.COB_SIM_CRO_CAB_GTT(tipcreid, asoid, asocodmod, asocodpago, asoapenom, useid, crefotorg, crefecini, cremtosol, cremtootor,'
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
              +'tipcreid, asoid, asocodmod, asocodpago, asoapenom, useid,crefotorg,crefecini,'+FloatToStr(DM1.Valores(edtSaldoCapital.Text))+','+FloatToStr(DM1.Valores(edtSaldoCapital.Text))+','
              +FloatToStr(DM1.Valores(edtSaldoCapital.Text))+',creinteres,credflat,'+FloatToStr(xcrecuota)+','+IntToStr(xcrenumcuo)+',creluggiro, bancoid, crenumcta,0.00,'+FloatToStr(Xmtosaldo)+', null,0.00, null, null,'
              +FloatToStr(Xmtosaldo)+',crecappgo,null,0.00,'+QuotedStr(DM1.wUsuario)+',TRUNC(SYSDATE), SYSDATE, ofdesid, calificaid, apruebaid, ''POR COBRAR'', tmonid,0.00, upagoid, uproid, dptoid,'
              +'listaid,'+quotedstr(xnuevoCredito)+', crecom, creseg, crepor, cregadm, crecomp, cremora, forpagoid, cretcalid, tmonabr, cretcalabr, listaabr, forpagoabr, ciaid, crefrecl,''02'','
              +QuotedStr(xcreanomes)+', nropagare, nroautdes, tipcredes, garapenom, garasoid, asocodaux, null, numref, fecref, tiporef, null, ciudid, archivoftp, agenbancoid, dptogiro,'
              +'useidgar, tipdeseid, bcogiro, 0.00,'+QuotedStr(xcreffinpag)+','+QuotedStr(xcrefinipag)+', crebloqfec, usubloq, crebloq, flgcaja, fechacaja, crenumcomp, ccosid, cuentah, cuentad, cregencob,'
              +'flgautoma, refanomes, nrorefinan, cajausu, horacaja, asotipid, asodni, anulacaja, men_anu, mot_pre, numrefi,''D'' , crefcan, flginconsis, perconta, c_abn,TO_CHAR(SYSDATE,''YYYYMM''),'
              +'fec_rcp, crecapliq,'+QuotedStr(DateToStr(dtpFecNuevoCronograma.Date))+', cremenobs, tipocont, NULL, cremtodep, crefanul, useranul,'+IntToStr(xcrenumcuo)+',0.00, nroficio_bck, migrado, usuautcre, fecautcre, estautcre,'
              +'comautcre, usuanusup, fecanusup, motanusup, estanusup, docid, ccserie, ccnodoc, ciaser, cremonins, impcon, dniruc, fecimpcon, null, 0.00,'
              +'autdescre, fecautdes,  usuautdes, impcaraut, nrocaraut, diasproc, descenv, autdesges, usudesges, fechordesges, usumodcuo, fecmodcuo, motmodcuo, tasfondes, nroautonp, null,'
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
          xSQL:='INSERT INTO db2admin.COB_SIM_CRO_DET_GTT( '
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
            ImpReciboEfe(xAsoId, 'PRUEBA', '02', 'S');
         End;
     End
     Else
     Begin
         XSQL:='UPDATE db2admin.COB_SIM_CRO_CAB_GTT SET CREESTID=''23'', CREESTADO=''CANCELADO A'','
         +'USUPROPAGADE='''+DM1.wUsuario+''',FECPROPAGADE=SYSDATE,FLGPROPAGADE=''X'','
         +'DIAINTCOR='+IntToStr(xDIAINTCOR)+',MONPAGADE='+FloatToStr(xMONPAGADE)+',MONCAPADE='+FloatToStr(xMONCAPADE)+','
         +'MONINTCORADE='+FloatToStr(xMONINTCORADE)+',MONFLAADE='+FloatToStr(xMONFLAADE)+',MONDESADE='+FloatToStr(xMONDESADE)+' '
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

      XSQL := 'BEGIN '
          + ' SP_COB_APL_PAG_REV_SIM('
          + quotedstr(XASOID) + ','
          + quotedstr(vpCredid_G)+ ','
          + quotedstr(xnuevoCredito_G) + '); END;';
      Try
        DM1.DCOM1.AppServer.EjecutaSql(Xsql);
      Except
        ShowMessage('Error en LA REVERSIÓN de DIFERIDOS');
        exit;
      End;

     ShowMessage('Se Aplicó con exito');

     finalizaproceso;
end;


procedure TfPagosAdelantadosSimu.inicializa1;
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
      edtvencido.Text := FormatFloat('###,##0.00', xPagoVencidos);
      edtCapital.Text := FormatFloat('###,##0.00', xPagoAdelantado);
      edtTotal.Text   := FormatFloat('###,##0.00', xPagoVencidos+xPagoAdelantado);
      Dm1.cdsGrupos.EmptyDataSet;
      DM1.cdsGrupos.EnableControls;
end;

procedure TfPagosAdelantadosSimu.DtpFecRegChange(Sender: TObject);
begin

  Dm1.cdsGrupos.EmptyDataSet;
  dtpFecNuevoCronograma.Date := DtpFecReg.Date;
  edtvencido.Text:='0.00';
  edtCapital.Text:='0.00';
  edtTotal.Text:='0.00';
  edtSaldoCapital.Text:='0.00';
end;

procedure TfPagosAdelantadosSimu.BitSalirClick(Sender: TObject);
begin
  close;
end;

//Verifica si existe pagos posteriores porsteriores al pago adelantado
function TfPagosAdelantadosSimu.VerPagosPosteriores: boolean;
var xsql:String;
begin
  XSQL:=' Select asoid,credid From db2admin.COB_SIM_CRO_MOV_GTT '
        +' Where asoid='''+Dm1.cdsSolicitud.FieldByName('ASOID').AsString+'''  and '
        +'      credid='''+Dm1.cdsSolicitud.FieldByName('CREDID').AsString+''' and '
        +'     crefpag>='+QuotedStr(DateToStr(DtpFecReg.Date))+ ' and '
        +'     creestid not in (''13'',''04'',''99'') and numdev is null ';
  DM1.cdsTZona.Close;
  DM1.cdsTZona.DataRequest(XSQL);
  DM1.cdsTZona.Open;
  If  DM1.cdsTZona.RecordCount>0 Then
       result  := True
  Else result  := False;

 end;

function TfPagosAdelantadosSimu.ValidaIngresoBancos_Global(xCreDocPag,
  xCrefPag: String; xMonto: Double): Boolean;
Var
   xSQL, sDocPag, sMSG : String;
Begin
  sDocPag:= inttostr(strtoint(xCreDocPag));
  xSQL:='SELECT A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.CREFPAG,A.CREDOCPAG,A.USUARIO,A.HREG,A.CREMTOCOB,A.NUMOPE,'
       +'TO_NUMBER(CREDOCPAG), TO_NUMBER('+sDocPag+') FROM ( '
       + 'Select ASOID, MAX(ASOCODMOD) ASOCODMOD, ASOAPENOM, CREFPAG, SUBSTR(CREDOCPAG,4,12) CREDOCPAG, USUARIO, '
       +       ' max(HREG) HREG, sum(CREMTOCOB) CREMTOCOB, CREDOCPAG NUMOPE '
       +  ' from db2admin.COB_SIM_CRO_MOV_GTT '
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

procedure TfPagosAdelantadosSimu.finalizaproceso;
begin
 inicializa1;
 grbDatosPago.Enabled        := False;
 grbSaldo.Enabled            := False;
 grbFechaReg.Enabled         := False;
 grbExcedente.Enabled        := False;
 grbInicioCronograma.Enabled := False;
 BitGrabar.Enabled           := False;
end;

procedure TfPagosAdelantadosSimu.edtnumcuotas2KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key In ['.',' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
end;

function TfPagosAdelantadosSimu.GnrCEfe: String;
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


procedure TfPagosAdelantadosSimu.ImpReciboEfe(xAsoId, xCreDocPag, xForpagId,
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
      + '  from db2admin.COB_SIM_CRO_MOV_GTT '
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

procedure TfPagosAdelantadosSimu.dbgAbonoDblClick(Sender: TObject);
var vtexto:String;
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

end;

procedure TfPagosAdelantadosSimu.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  xSql1,xSql2,xSql3 : String;
begin
    xSql1:= 'DELETE FROM db2admin.COB_SIM_CRO_CAB_GTT WHERE ASOID ='+XASOID;
    xSql2:= 'DELETE FROM db2admin.COB_SIM_CRO_DET_GTT WHERE ASOID ='+XASOID;
    xSql3:= 'DELETE FROM db2admin.COB_SIM_CRO_MOV_GTT WHERE ASOID ='+XASOID;
    try
         DM1.DCOM1.AppServer.EjecutaSql(xsql1);
         DM1.DCOM1.AppServer.EjecutaSql(xsql2);
         DM1.DCOM1.AppServer.EjecutaSql(xsql3);
         DM1.DCOM1.AppServer.SolCommit;

     Except
         DM1.DCOM1.AppServer.SolRollBack;
         ShowMessage('Error al eliminar las tablas temporales');
         exit;
     End;
end;

procedure TfPagosAdelantadosSimu.SpeedButton1Click(Sender: TObject);
var b:TBookmark;
    XSQL:sTRING;
begin
     XSQL:='WITH CREDITOS AS '+
           '(SELECT ASOID,CREDID,SUM(NVL(SALDO,0)) CRESDOACT '+
           ' FROM('+
           'Select ASOID,CREDID,NVL(sum(NVL(CREMTO,0)-NVL(CREMTOCOB,0)),0)  SALDO '+ //VENCIDO
           'FROM DB2ADMIN.COB_SIM_CRO_DET_GTT '+
           'WHERE ASOID= '''+XASOID+''' AND CREDID IN('''+xnuevoCredito_G+''','''+vpCredid_G+''') AND TO_CHAR(CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'') '+
           'GROUP BY ASOID,CREDID '+
           'UNION ALL '+
           'Select ASOID,CREDID,sum( (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0)) SALDO  '+ //PENDIENTE NO DIFERIDO
           'FROM DB2ADMIN.COB_SIM_CRO_DET_GTT '+
           'WHERE ASOID= '''+XASOID+''' AND CREDID IN('''+xnuevoCredito_G+''','''+vpCredid_G+''') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
           '      AND (CREFVEN=CREFVENINI or CREFVENINI IS NULL)'+
           'GROUP BY ASOID,CREDID '+
           ' UNION ALL '+
           'Select ASOID,CREDID,sum( NVL(CREMTO,0)- NVL(CREMTOCOB,0)) SALDO '+//PENDIENTE DIFERIDO
           'FROM DB2ADMIN.COB_SIM_CRO_DET_GTT '+
           'WHERE ASOID= '''+XASOID+''' AND CREDID IN('''+xnuevoCredito_G+''','''+vpCredid_G+''') AND TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'') '+
           '      AND (CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL) '+
           'GROUP BY ASOID,CREDID '+
           ')GROUP BY ASOID,CREDID )'+

           'SELECT A.ASOID,A.ASOCODMOD,A.CREDID,A.TIPCREDES,A.CREFOTORG,A.CREMTOOTOR,A.ASOTIPID,B.CRESDOACT '+
           'FROM   DB2ADMIN.COB_SIM_CRO_CAB_GTT A,CREDITOS B '+
           'WHERE  A.ASOID = '''+XASOID+''' AND A.CREDID IN('''+xnuevoCredito_G+''','''+vpCredid_G+''') AND '+
           '       B.ASOID=A.ASOID AND B.CREDID=A.CREDID ';
     DM1.cdsConsulta.Close;
     DM1.cdsConsulta.DataRequest(XSQL);
     DM1.cdsConsulta.Open;

     If DM1.cdsConsulta.RecordCount>0 Then
     Begin
       FFSCCreditos := TFFSCCreditos.Create(self);
       While not DM1.cdsConsulta.Eof Do
       Begin
         imprCronograma(self);
         DM1.cdsConsulta.Next;
       End;
     End;

  FFSCCreditos.Free;
end;
procedure TfPagosAdelantadosSimu.imprCronograma;
Var
   xSql, xAsoId, xCredId, xfVenc, xfCalc: String;
   xSalAnt, xSalVen, xSalDif, xCuoProCob: Currency;
   xCuoPen, xCuoVen, xCuoDif: Integer;
   xRegistro: TBookmark;
   xProvision: Currency;
   xGasRef:Currency;
   xsDescripcionTipo,xCondicion : string;
   xInterno,xFoto : string;
Begin


   DM1.xHis :='N';
   xInterno :='N';
   xFoto    :='N';

   xAsoId  := DM1.CdsConsulta.FieldByName('ASOID').AsString;
   xCredId := DM1.CdsConsulta.FieldByName('CREDID').AsString;

   If Length(Trim(xCredId))=0 Then
   Begin
    ShowMessage('El registro no tienen número de crédito para mostrar');
    exit;
   End;

   XSQL:='SELECT asoid, asocodmod, asocodpago, tipcreid, tmonid, creano, cremes, cresaldo, crecuota, cremto, creamort, '+
         'creinteres, creflat, crefven, crefpag, useid, uproid, dptoid, upagoid, bancoid, ccbcoid, nroope, foperac, tcambio,'+
	      'cremtocob, cremonloc, cremonext, usuario, freg, hreg, forpagoid, crefdev, crefrecl, asoapenom, agenbcoid, crecapital,'+
		   'cremtoint, cremtoflat, crenewid, fnabono, credid, cretcalid, tipdeseid, tmonabr, cretcalabr, tipdesabr, tipcreabr,'+
		   'forpagoabr, listaabr, ciaid, creestid, creestado, crecom, creseg, crepor, cregadm, crecomp, cremora, cremtocom,'+
		   'cremtoseg, cremtopor, cremtogadm, cremtocomp, cremtomora, listaid, asocodaux, nronabo, ciudid, flgpag, archivoftp,'+
		   'crebloq, crebloqfec, crebloqobs, credidnabo, creinfo, cremtoexc, areaid, credocpag, flagvar, crecapcron, creintcron,'+
		   'creflacron, cremtoan, creamortan, creinteresan, creflatan, flagnvint, desblofec, usubloq, usudesbloq, nrorefinan,'+
		   'creflgexc, crefecexc, flgint, nroopetmp, foperactmp, flgdesmar, usudesmar, fecdesmar, obsdesmar, cremtodev, crecapcon,'+
		   'flginconsis, creaplexc, tipnabo, perproc, fecproc, flgproc, percob, creestidant, saldosbs, creanoini, cremesini, '+
		   'crecuotaini, crefvenini, crecuotaini2, crefvenini2, crecuotaini3, crefvenini3, flarep, monpacdesgrav, moncobdesgrav,'+
		   'fecvenori, numcuoori '+
         ' FROM DB2ADMIN.COB_SIM_CRO_DET_GTT WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid));
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(XSQL);
   DM1.cdsCuotas.Open;

   XSQL:='SELECT asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid, upagoid, asoresnom, asofresnom,'+ 
         'resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto, asodpto, zonaid, zonanomb, ubigeoid, dptoid,'+ 
         'paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil, asoruc, estcivid, asosexo, asoemail, bancoid, asoncta,'+ 
         'sitcta, asodni, graacid, grainsid, profid, asofmov, asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid,'+
         'asorescese, asofrescese, fgarante, zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea,'+ 
         'usr_ben, fec_ben, ctaser, cargo, variascuot, crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni,'+ 
         'asonomdni, asoapenomdni, asodeslab, asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid,'+ 
         'zonalabid, fecact, indicador, ccosid, password, codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant,'+ 
         'actarcren, reingreso, autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, gencodbar, envautdes, corenvautdes,'+
         'codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio,'+ 
         'codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg,'+ 
         'mdfusrmod, mdffecmod, emicarta, desmanviv, codmotdestcuo, fecactpad, ceneduid, fallecido, tipo_fall_id, en_actualiz, codtiptel1, codreftel1, codtiptel2,'+ 
         'codreftel2, codpension, fecregautdesapo, codleypen, numautonp, codblocharen, numblocharen, coddepintren, desdepintren, asoapecasdni, invalidez,'+ 
         'tipo_inva_id, fecautonp, asoaptser, fecactsit, codreglab, usuautonp, oriopeonp '+
         'FROM APO201 WHERE   ASOID=' + QuotedStr(Trim(xAsoId));
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(XSQL);
   DM1.cdsAso.Open;

   XSQL:='SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,'+
         'a.tipcreid, a.asoid, a.asocodmod, a.asocodpago, a.asoapenom, a.useid, a.crefotorg, a.crefecini, a.cremtosol, a.cremtootor, a.cremtogir, '+
         'a.creinteres, a.credflat, a.crecuota, a.crenumcuo,a.creluggiro,a.bancoid, a.crenumcta, a.cremtopag, a.cresdoact, a.crepergra, a.crecuopag,'+
         'a.crecuoenv, a.creperiodi, a.cremtotal, a.crecappgo, a.crenewid, a.cresaldot, a.usuario, a.freg, a.hreg, a.ofdesid, a.calificaid, a.apruebaid,'+
         'a.creestado, a.tmonid, a.cuotaini, a.upagoid, a.uproid, a.dptoid, a.listaid, a.credid, a.crecom, a.creseg, a.crepor, a.cregadm, a.crecomp, a.cremora,'+
         'a.forpagoid, a.cretcalid, a.tmonabr, a.cretcalabr, a.listaabr, a.forpagoabr, a.ciaid, a.crefrecl, a.creestid, a.creanomes, a.nropagare, a.nroautdes, '+
         'a.tipcredes, a.garapenom, a.garasoid, a.asocodaux, a.nronabo, a.numref, a.fecref, a.tiporef, a.nroficio, a.ciudid, a.archivoftp, a.agenbancoid, a.dptogiro, '+
         'a.useidgar, a.tipdeseid, a.bcogiro, a.cremtonabo, a.creffinpag, a.crefinipag, a.crebloqfec, a.usubloq, a.crebloq, a.flgcaja, a.fechacaja, a.crenumcomp,'+
         'a.ccosid, a.cuentah, a.cuentad, a.cregencob, a.flgautoma, a.refanomes, a.nrorefinan, a.cajausu, a.horacaja, a.asotipid, a.asodni, a.anulacaja, a.men_anu,'+
         'a.mot_pre, a.numrefi, a.flgrefi, a.crefcan, a.flginconsis, a.perconta, a.c_abn, a.cntanomm, a.fec_rcp, a.crecapliq, a.crefdes, a.cremenobs, a.tipocont,'+
         'a.cntflag, a.cremtodep, a.crefanul, a.useranul, a.cresumcuo, a.cremotext, a.nroficio_bck, a.migrado, a.usuautcre, a.fecautcre, a.estautcre, a.comautcre,'+
         'a.usuanusup, a.fecanusup, a.motanusup, a.estanusup, a.docid, a.ccserie, a.ccnodoc, a.ciaser, a.cremonins, a.impcon, a.dniruc, a.fecimpcon, a.codarchivo,'+
         'a.cremtoapo, a.autdescre, a.fecautdes, a.usuautdes, a.impcaraut, a.nrocaraut, a.diasproc, a.descenv, a.autdesges, a.usudesges, a.fechordesges, a.usumodcuo,'+
         'a.fecmodcuo, a.motmodcuo, a.tasfondes, a.nroautonp, a.fecenvbcp, a.estenvbcp, a.feccobbcp, a.codagebcp, a.impcaronp, a.monintpro, a.mespergra '+
         'FROM DB2ADMIN.COB_SIM_CRO_CAB_GTT a,CRE110 b '+
         'Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId)) + ' AND a.Credid='+QuotedStr(Trim(xCreDid))+' Order By a.CREFOTORG ';
   DM1.cdsAcuerdos.Close;
   DM1.cdsAcuerdos.DataRequest(XSQL);
   DM1.cdsAcuerdos.Open;


   xRegistro := DM1.cdsCuotas.GetBookmark;
   DM1.xSgr := 'REP';

      xsql:='Select Asoid,Credid,Crecuota,Nroope,Foperac,Creamort,Creinteres,Creflat,Moncobdesgrav,Cremtocob ' +
            ' From DB2ADMIN.COB_SIM_CRO_MOV_GTT where Asoid='''+xAsoid+''' And Credid='''+xCredid+''' And Forpagid=''99'' And Creestid not in (''13'',''04'',''99'') '+
            'Order by crecuota,Foperac';
      DM1.cdsCuentas.Close;
      DM1.cdsCuentas.DataRequest(xsql);
      DM1.cdsCuentas.Open;
      ppDBCCI.DataSource := DM1.dsCuentas;
   Begin
      lblSalTot.Caption := FormatFloat('###,###.00', DM1.SaldoActual(xAsoId, xCreDid, '1'));
      ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      If Length(Trim(DM1.cdsAcuerdos.FieldByName('FLGREFI').AsString)) > 0 Then      //MO
      BEGIN
        if ((Trim(DM1.cdsAcuerdos.FieldByName('TIPDESEID').AsString) = '10') AND (Copy(DM1.cdsAcuerdos.FieldByName('CREDID').AsString, 9, 1) = 'A')) then// MO
           xsDescripcionTipo := 'AMPLIACIÓN DE PLAZO'
        else
           xsDescripcionTipo := DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsAcuerdos.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');   // MO
        pplblTipCre.Caption := Trim(DM1.cdsAcuerdos.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsAcuerdos.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    ['+xsDescripcionTipo+']'// MO
      END
      Else
         pplblTipCre.Caption := Trim(DM1.cdsAcuerdos.FieldByName('TIPCREID').AsString) + '-' + DM1.RecuperaDatos('CRE110', 'TIPCREID', DM1.cdsAcuerdos.FieldByName('TIPCREID').AsString, 'TIPCREDES') + '    [NORMAL]';//MO
      ppLblEstado.Caption := DM1.cdsAcuerdos.FieldByName('CREESTADO').AsString; //MO
      pplblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
      ppLblCuenta.Caption := DM1.cdsAso.FieldByName('ASONCTA').AsString + ' - [' + DM1.cdsAso.FieldByName('SITCTA').AsString + ']';
      pplblNumPre.Caption := DM1.cdsAcuerdos.FieldByName('CREDID').AsString;    //MO
      pplblFecPre.Caption := DM1.cdsAcuerdos.FieldByName('CREFOTORG').AsString;    //MO
      ppLblOriOto.Caption := Copy(DM1.cdsAcuerdos.FieldByName('CREDID').AsString, 1, 2) + ' -  ' + DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(Copy(DM1.cdsAcuerdos.FieldByName('CREDID').AsString, 1, 2))), 'APO110', 'OFDESNOM');//MO
      xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
      pplblUse.Caption  := DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');
      pplblMonto.Caption := FormatFloat('###,###.#0', DM1.cdsAcuerdos.FieldByName('CREMTOOTOR').AsFloat); //MO
      pplblNumCuo.Caption := FormatFloat('###,###', DM1.cdsAcuerdos.FieldByName('CRENUMCUO').AsFloat);    //MO
      ppLblInt.Caption := FormatFloat('##0.#0', DM1.cdsAcuerdos.FieldByName('CREINTERES').AsFloat); //MO
      ppLblFlat.Caption := FormatFloat('##0.#0', DM1.cdsAcuerdos.FieldByName('CREDFLAT').AsFloat);    //MO
      ppLblDesgravamen.Caption := FormatFloat('##0.000', DM1.cdsAcuerdos.FieldByName('TASFONDES').AsFloat);    //MO
      // Muestra la situación (Tipo de Asociado) con el cual se generó el crédito
      pplblTipCliOtorg.Caption := DM1.cdsAcuerdos.FieldByName('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsAcuerdos.FieldByName('ASOTIPID').AsString, 'ASOTIPDES');//MO
      pplblTipCli.Caption := DM1.cdsAso.fieldbyname('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsAso.fieldbyname('ASOTIPID').AsString, 'ASOTIPDES');
      if ((Trim(DM1.cdsAcuerdos.FieldByName('TIPDESEID').AsString) = '10') AND (Copy(DM1.cdsAcuerdos.FieldByName('CREDID').AsString, 9, 1) = 'A')) then   //MO
         ppLblTipDes.Caption := Trim(DM1.cdsAcuerdos.FieldByName('TIPDESEID').AsString) + '- AMPLIACIÓN DE PLAZO'     //MO
      else
         ppLblTipDes.Caption := Trim(DM1.cdsAcuerdos.FieldByName('TIPDESEID').AsString) + '-' + DM1.RecuperaDatos('CRE104', 'TIPDESEID', DM1.cdsAcuerdos.FieldByName('TIPDESEID').AsString, 'TIPDESEABR');//MO
   End;
   DM1.cdsCuotas.First;
   xSalAnt := 0;
   xSalVen := 0;
   xSalDif := 0;
   xCuoProCob := 0;
   xCuoVen := 0;
   xCuoPen := 0;
   xCuoDif := 0;
   xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
   xGasRef := 0;
   While Not DM1.cdsCuotas.Eof Do
   Begin
      If DM1.xHis <> 'S' Then
      Begin
        If (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString <> DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) And ((DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27')) Then
        Begin
           xCuoDif := xCuoDif + 1;
           xSalDif := xSalDif + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
        End;
      end;

      If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '14') Then
         xCuoProCob := xCuoProCob + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);

      If DM1.xHis <> 'S' Then
      Begin
         If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString = '27') Then
         Begin
            xfVenc := Trim(DM1.cdsCuotas.fieldbyname('CREANO').AsString + DM1.cdsCuotas.fieldbyname('CREMES').AsString);
            If (xfVenc > xfCalc) And (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) Then
            Begin
               xSalAnt := xSalAnt + (DM1.cdsCuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency + DM1.cdsCuotas.fieldbyname('MONPACDESGRAV').AsCurrency) - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency;
               xCuoPen := xCuoPen + 1;
            End
            Else
               If DM1.cdsCuotas.fieldbyname('CREFVEN').AsString = DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString Then
               Begin
                  xSalVen := xSalVen + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
                  xCuoVen := xCuoVen + 1;
               End;
         End;
      end;

      xGasRef := xGasRef + DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency ;
      DM1.cdsCuotas.Next;
   End;
   lblDif.Caption := '(' + FormatFloat('###,##0', xCuoDif) + ')';
   lblVen.Caption := '(' + FormatFloat('###,##0', xCuoVen) + ')';
   lblPen.Caption := '(' + FormatFloat('###,##0', xCuoPen) + ')';
   lblTot.Caption := '(' + FormatFloat('###,##0', xCuoVen + xCuoPen + xCuoDif) + ')';

   If Copy(xCredId,9,1)='R' Then
      Begin
        lblMonGasRef.Caption:=FormatFloat('##,###,##0.#0', xGasRef);
        lblGas02.Caption:='REF(S/.)';
        lblGasRef.Visible:=True;
        lblMonGasRef.Visible:=True;
      End;


   ppLblCuoDif.Caption := FormatFloat('###,###.00', xSalDif);
   ppLblCuoVen.Caption := FormatFloat('###,###.00', xSalVen);
   pplblCuoPen.Caption := FormatFloat('###,###.00', xSalAnt);
   pplblMonPag.Caption := FormatFloat('###,###.00', xSalVen + xSalAnt + xSalDif);
   DM1.cdsAbonoCuotas.Close;
   xSQL := 'SELECT COUNT(ASOID) AS CUOPEN '
      + 'FROM DB2ADMIN.COB_SIM_CRO_DET_GTT '
      + 'WHERE ASOID=' + QuotedStr(Trim(xAsoId))
      + '  AND CREDID=' + QuotedStr(Trim(xCreDid))
      + '  AND CREESTID IN (''02'',''11'',''27'') ';
   DM1.cdsAbonoCuotas.DataRequest(xSQL);
   DM1.cdsAbonoCuotas.Open;
   ppLblCuotas.Caption := '( ' + lblTot.Caption + '-Cuotas Por Pagar )';
   DM1.cdsAbonoCuotas.Close;
   DM1.cdsAsoX.Close;

   If DM1.xHis = 'N' Then
      xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CREMTO, '
         + '       CASE WHEN CREFVEN<>CREFVENINI THEN ''(D)'' ELSE NULL END AS REPRO ,  '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREAMORT,0) ELSE NVL(CRECAPITAL,0) END AS AMORT, '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREINTERES,0) ELSE NVL(CREMTOINT,0) END AS INTER, '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREFLAT,0) ELSE NVL(CREMTOFLAT,0) END AS GASTO, '
         + '       CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(MONPACDESGRAV,0) ELSE NVL(MONCOBDESGRAV,0) END AS DESGRAVAMEN, '
         + '       NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) CREMTOEXC,CREESTADO '
         + '  FROM DB2ADMIN.COB_SIM_CRO_DET_GTT '
         + ' WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid))
         + ' ORDER BY CREDID,CRECUOTA'
   Else

      xSQL := 'SELECT A.ASOID, A.CREDID, SUBSTR(FEC_VEN,1,4) CREANO, '
         + '       SUBSTR(FEC_VEN,5,2) CREMES,TO_DATE(FEC_VEN,''YYYY-MM-DD'') CREFVEN, '
         + '       AMO_PAG AMORT, INT_PAG INTER,GAS_PAG GASTO, NVL(DESGRAV_PAG,0) DESGRAVAMEN, NVL(MON_PAG,0) AS CREMTOCOB, '
         + '       NVL(MON_CUO,0) AS CREMTO, '' '' REPRO, TO_NUMBER(ITE_CUO) CRECUOTA, '
         + '       CASE WHEN A.CREESTADO IS NOT NULL THEN A.CREESTADO ELSE B.CREESTADO END CREESTADO, '
         + '       CASE WHEN A.CREESTID IS NOT NULL THEN A.CREESTID ELSE B.CREESTID END CREESTADO, '
         + '       AMO_ACT CREAMORT,GAS_ACT CREFLAT,'' '' FLAGVAR,NVL(EXC_PAG,0) CREMTOEXC '
         + ' FROM PAGO A, PREST B '
         + ' Where A.ASOID =' + QuotedStr(Trim(xAsoId)) + ' And A.CREDID=' + QuotedStr(Trim(xCreDid))
         + '   and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) '
         + ' Order By CREDID, CRECUOTA ';

   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   ppLblTitulo.Caption := 'CRONOGRAMA DE PAGOS N°: ' + pplblNumPre.Caption + '    al: ' + DateToStr(DM1.FechaSys);
   If xFoto = 'S' Then
   Begin
      ppShpImg.Visible := True;
      ppImage1.Visible := True;
      DM1.CargaImagenesDNI(trim(DM1.cdsAso.FieldByName('ASODNI').AsString), 'FotoCronog');
   End
   Else
   Begin
      ppShpImg.Visible := False;
      ppImage1.Visible := False;
   End;
   ppLblUser.Caption := 'Impreso por   : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
   ppLblApro.Caption := 'Otorgado por  : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.cdsAcuerdos.FieldByName('USUARIO').AsString)), 'TGE006', 'USERNOM');//MO

   If xInterno = 'S' Then
   Begin
      ppLabel81.Visible := true;
      ppLabel82.Visible := true;
      ppLblRegimen.Visible := true;
      ppLblRegimen.Caption := DM1.CrgDescrip('REGPENID=' + DM1.cdsAso.FieldByName('REGPENID').AsString, 'APO105', 'REGPENDES');
      ppLabel83.Visible := true;
      ppLabel84.Visible := true;
      ppLblDirDom.Visible := true;
      ppLblDirDom.Caption := Copy(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASODIR'), 1, 47);
      ppLabel85.Visible := true;
      ppLabel86.Visible := true;
      ppLblTelefono.Visible := true;
      ppLblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTELF1');
      ppLabel87.Visible := true;
      ppLabel88.Visible := true;
      ppLblDiasAtraso.Visible := true;
      xSQL := 'SELECT MAX(TRUNC(SYSDATE) - CREFVEN) DIASATRASO'
         + ' FROM DB2ADMIN.COB_SIM_CRO_DET_GTT '
         + ' Where ASOID = ' + QuotedStr(Trim(xAsoId)) + ' And CREDID = ' + QuotedStr(Trim(xCreDid))
         + '    AND CREESTID IN (''02'', ''11'', ''14'', ''27'')'
         + '    AND (NVL(CREMTO,0) - NVL(CREMTOCOB,0)) > 0'
         + ' Order By CREDID,CRECUOTA ';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;

      If (DM1.cdsQry6.RecordCount > 0) And (DM1.cdsQry6.FieldByName('DIASATRASO').AsInteger > 0) Then
      Begin
         ppLblDiasAtraso.Caption := DM1.cdsQry6.FieldByName('DIASATRASO').AsString;
      End
      Else
      Begin
         ppLblDiasAtraso.Caption := '0';
      End;
      DM1.cdsQry6.Close;

      If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO' Then
      Begin
         ppLabel89.Visible := true;
         ppLabel90.Visible := true;
         ppLblFirmoAutorizacion.Visible := true;
         If DM1.cdsAso.FieldByName('AUTDESAPO').AsString = 'S' Then
            ppLblFirmoAutorizacion.Caption := 'Si'
         Else
            ppLblFirmoAutorizacion.Caption := 'No';
      End
      Else
      Begin
         ppLabel89.Visible := false;
         ppLabel90.Visible := false;
         ppLblFirmoAutorizacion.Visible := false;
      End;

      ppLabel91.Visible := true;
      ppLabel92.Visible := true;
      ppLblProvision.Visible := true;
      xProvision := 0;
      ppLblProvision.Caption := FormatFloat('###,##0.00', xProvision);
   End
   Else
   Begin
      ppLabel81.Visible := false;
      ppLabel82.Visible := false;
      ppLblRegimen.Visible := false;
      ppLabel83.Visible := false;
      ppLabel84.Visible := false;
      ppLblDirDom.Visible := false;
      ppLabel85.Visible := false;
      ppLabel86.Visible := false;
      ppLblTelefono.Visible := false;
      ppLabel87.Visible := false;
      ppLabel88.Visible := false;
      ppLblDiasAtraso.Visible := false;
      ppLabel89.Visible := false;
      ppLabel90.Visible := false;
      ppLblFirmoAutorizacion.Visible := false;
      ppLabel91.Visible := false;
      ppLabel92.Visible := false;
      ppLblProvision.Visible := false;
   End;

   ppREstCta.Print;
   ppREstCta.Cancel;
   DM1.cdsAsoX.Close;
   DM1.cdsFormaPago.Close;
   DM1.cdsCuotas.GotoBookmark(xRegistro);

End;

end.
//Fin HPC_201731_COB
