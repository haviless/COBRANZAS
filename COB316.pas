unit COB316;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB316
// Formulario           : FRegGlobalCob1
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Registro Global de Cobranza 1
// Actualizaciones      :
// HPC_201308_COB       : 08/07/2013 - Agregar Columnas en Filtro
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201708_COB       : Se adiciona campos al formulario del detalle del registro global de cobranzas
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Mask, wwdbedit, StdCtrls, wwdblook,
  ExtCtrls, wwdbdatetimepicker, Wwdbspin, ComCtrls, wwriched, Buttons,
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
   Wwdbigrd, Grids, Wwdbgrid, Wwdbdlg, db,Variants;
//Final HPC_201708_COB

type
  TFRegGlobalCob1 = class(TForm)
    pnlCabecera: TPanel;
    pnlInicio: TPanel;
    dblcBanco: TwwDBLookupCombo;
    dbdtpFOpe: TwwDBDateTimePicker;
    dbdtpFRecepcion: TwwDBDateTimePicker;
    dbeNumOpe: TwwDBEdit;
    dblcCuenta: TwwDBLookupCombo;
    dblcMoneda: TwwDBLookupCombo;
    dbeMonto: TwwDBEdit;
    dblcdRepresentante: TwwDBLookupComboDlg;
    bbtnClear: TfcShapeBtn;
    bbtnSigue: TfcShapeBtn;
    dbgDetRegGlobal: TwwDBGrid;
    bbtnNuevo: TwwIButton;
    pnlDocumentos: TPanel;
    StaticText1: TStaticText;
    Panel3: TPanel;
    pnlTop: TPanel;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    edtCorrelativo: TEdit;
    gbComprobante: TGroupBox;
    dbeCPagoNum: TwwDBEdit;
    dbdtpCPagoFecha: TwwDBDateTimePicker;
    dblcdMonedaC: TwwDBLookupCombo;
    dbeCPagoTotal: TwwDBEdit;
    dbeDeduccion: TwwDBEdit;
    dbeCPagoConcepto: TwwDBEdit;
    dblcdUPago: TwwDBLookupComboDlg;
    dblcFRecaudacion: TwwDBLookupCombo;
    gbCheque: TGroupBox;
    dblcFPago: TwwDBLookupCombo;
    dblcChqBanco: TwwDBLookupCombo;
    dbeChqCuenta: TwwDBEdit;
    dbdtpChqFecha: TwwDBDateTimePicker;
    dbeChqNum: TwwDBEdit;
    dblcChqMoneda: TwwDBLookupCombo;
    dbeChqMonto: TwwDBEdit;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    dbeMtoLiq: TwwDBEdit;
    MtoLiq: TLabel;
    dbeNroDocDeduccion: TwwDBEdit;
    dbeAno: TwwDBEdit;
    dbeMes: TwwDBEdit;
    sbAno: TwwDBSpinEdit;
    sbMes: TwwDBSpinEdit;
    lblUnidadProceso: TLabel;
    dblcUProceso: TwwDBLookupCombo;
    lblNCta: TLabel;
    lblPeriodo: TLabel;
    edtRepresentante: TwwDBEdit;
    dblcdAgenbco: TwwDBLookupComboDlg;
    edtUPagoAbr: TwwDBEdit;
    seMesApo: TwwDBSpinEdit;
    seAnoApo: TwwDBSpinEdit;
    lblMes: TLabel;
    lblAno: TLabel;
    lblNOpe: TLabel;
    lblFOpe: TLabel;
    lblBanco: TLabel;
    lblRepres: TLabel;
    lblAgencia: TLabel;
    lblCuenta: TLabel;
    lblFRepc: TLabel;
    dbeBanco: TwwDBEdit;
    dbeAgencia: TwwDBEdit;
    dbeMoneda: TwwDBEdit;
    dbeMonedaC: TwwDBEdit;
    dbeUProceso: TwwDBEdit;
    dbeUPago: TwwDBEdit;
    dbeFPago: TwwDBEdit;
    dbeFRecaudacion: TwwDBEdit;
    dbeChqBanco: TwwDBEdit;
    dbeChqMoneda: TwwDBEdit;
    gbRepresentante: TGroupBox;
    dbdtpFecDocRcp: TwwDBDateTimePicker;
    lblReg: TLabel;
    lblcAsotipid: TwwDBLookupCombo;
    gbActualiza: TGroupBox;
    Z2bbtnModifica: TfcShapeBtn;
    Z2bbtnAceptara: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnCierra: TfcShapeBtn;
    Z2bbtnConcluir: TfcShapeBtn;
    Z2bbtnSalir: TfcShapeBtn;
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
    dblcdUgel: TwwDBLookupComboDlg;
    dbeUseid: TwwDBEdit;
    tcbTipoPla: TComboBox;
//Final HPC_201708_COB
    procedure bbtnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtnClearClick(Sender: TObject);
    procedure bbtnSigueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcBancoExit(Sender: TObject);
    procedure dblcCuentaExit(Sender: TObject);
    procedure dblcMonedaExit(Sender: TObject);
    procedure dblcChqMonedaExit(Sender: TObject);
    procedure dblcFPagoExit(Sender: TObject);
    procedure Z2bbtnSalirClick(Sender: TObject);
    procedure dblcdRepresentanteExit(Sender: TObject);
    procedure bbtnNuevoClick(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure dbgDetRegGlobalDblClick(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure dblcChqBancoExit(Sender: TObject);
    procedure dbdtpChqFechaExit(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure dblcdUPagoExit(Sender: TObject);
    procedure dblcFRecaudacionExit(Sender: TObject);
    procedure dbdtpCPagoFechaExit(Sender: TObject);
    procedure dblcdMonedaCExit(Sender: TObject);
    procedure dbeDeduccionExit(Sender: TObject);
    procedure dbeCPagoTotalExit(Sender: TObject);
    procedure Z2bbtnModificaClick(Sender: TObject);
    procedure sbMesExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Z2bbtnAceptaraClick(Sender: TObject);
    procedure Z2bbtnCierraClick(Sender: TObject);
    procedure dblcUProcesoExit(Sender: TObject);
    procedure dblcdRepresentanteEnter(Sender: TObject);
    procedure dblcdAgenbcoExit(Sender: TObject);
    procedure Z2bbtnConcluirClick(Sender: TObject);
    procedure dbgDetRegGlobalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure seMesApoExit(Sender: TObject);
    procedure dblcMonedaNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dblcBancoNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dblcUProcesoNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dblcFRecaudacionNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    Function VerfGrabInicial(xreg:string):string;
    Procedure GrabaCab(xInsMod:string);
    Procedure GrabaDet1(xInsMod:string);
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
    procedure dblcdUgelExit(Sender: TObject);
    procedure lblcAsotipidExit(Sender: TObject);
    procedure lblcAsotipidChange(Sender: TObject);
//Final HPC_201708_COB
  private
    { Private declarations }
    xFechaCom : TDate;
    xDocid,xEcanomm,xTDiarid,xCcBcoid,xTmonid,xBancoid,xFpagoid,xAuxid  : String;
    xMaxNumComp,xNodoc,xCuentaid,xCptoid,xClauxid,xCiaid{,xGlosa} : String;
    xECTCAMB,cPgoOri,cPgoLoc,cPgoExt : Double;

    function ValidaCabeceraRegGlo:Boolean;
    function ValidaDetalleRegGlo:Boolean;
    procedure ActuCaja301;
  public
    { Public declarations }
    Procedure InsertCaja;
  end;

var
  FRegGlobalCob1: TFRegGlobalCob1;
  xBanco, wModo1, xSQL, xWhere, sWhere : string;
  xCrea : Boolean;
  Y, M, D : Word;
  xReg : String;

implementation

USES COBDM1, MsgDlgs, COB001;
{$R *.DFM}

procedure TFRegGlobalCob1.bbtnOKClick(Sender: TObject);
begin
   Close;
end;

procedure TFRegGlobalCob1.FormActivate(Sender: TObject);
var
   xSQL : String;
begin
   DecodeDate(Now, Y, M, D);
   xCrea := True;
   pnlInicio.Enabled := True;
   //pnlTop.Enabled    := True;
   bbtnNuevo.Enabled := False;
   dbgDetRegGlobal.Enabled := False;

   //Tipo de Asociado
   xSQL := 'SELECT * FROM APO107 WHERE ASOTIPCRE=''S'' ';
   DM1.cdsTipCreA.Filter :='';
   DM1.cdsTipCreA.Filtered := False;
   DM1.cdsTipCreA.IndexFieldNames := '';
   DM1.cdsTipCreA.Close;
   DM1.cdsTipCreA.DataRequest(xSQL);
   DM1.cdsTipCreA.Open;

    If DM1.wModo = 'M' Then
     begin

      pnlTop.Enabled := False;
      // Inicio: SPP_201310_COB    : 08/07/2013 - Agregar Columnas en Filtro
      xReg := DM1.cdsEjecuta.FieldByName('RCOBID').AsString;
      // Fin: SPP_201310_COB       : 08/07/2013 - Agregar Columnas en Filtro
      lblReg.Caption := 'Registro Global de Cobranza - '+xReg;
      xSQL := 'SELECT * FROM COB301 WHERE RCOBID ='+QuotedStr(DM1.cdsEjecuta.FieldByName('RCOBID').AsString);
      DM1.FiltraCDS(DM1.cdsRegCob, xSQL);

      Z2bbtnModifica.Visible := False;
      DM1.cdsRegCob.Edit;
      edtCorrelativo.Text    := DM1.cdsRegCob.FieldByName('RCOBID').AsString;

      sWhere := 'BANCOID = '+ QuotedStr(dblcBanco.Text) ;
      dbeBanco.Text := DM1.DisplayDescrip('prvSQL', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM');

      sWhere := 'BANCOID ='+ QuotedStr(dblcBanco.Text)+' AND AGENBCOID = '+ QuotedStr(dblcdAgenBco.Text) ;
      dbeAgencia.Text := DM1.DisplayDescrip('prvSQL', 'COB102', 'AGENBCODES', sWhere, 'AGENBCODES');

      DM1.FiltraCDS(DM1.cdsCuentas, 'SELECT DISTINCT CCBCOID FROM TGE106 WHERE BANCOID ='+QuotedStr(dblcBanco.Text)+' and ciaid=''02'' and activo=''S'' ');

//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
    // xSQL := 'SELECT * FROM COB302 WHERE RCOBID ='+QuotedStr(DM1.cdsEjecuta.FieldByName('RCOBID').AsString);
       xSQL := 'SELECT RCOBID, BANCOID, CCBCO, DOCID, DOCFECHA, TMONID, DOCMTO, CPAGOID, CPAGOFECHA, '
             + '       USUARIO, FREG, HREG, FPAGOID, CPAGOCPTO, CPAGOMTO, CPAGOTMON, CPAGODEDUC, FORPAGOID, '
             + '       UPAGOID, USEID,TIPPLA,RCOBNOPE, RCOBFOPE, CPAGOLIQ, NRODOCDED, UPROID, RCOBMES, RCOBANO, DETRCOBID, '
             + '       RCOBESTADO, REPRID, REPRAPENOM, UPAGOABR, RCOBANOAPO, RCOBMESAPO, TCAMBIO, NUMOFIDIRE, '
             + '       FECOFIDIRE, DIFOFIDIRE, FRCPREPRE, ASOTIPID '
             + '  FROM COB302 '
             + ' WHERE RCOBID =' + QuotedStr(DM1.cdsEjecuta.FieldByName('RCOBID').AsString);
      DM1.FiltraCDS(DM1.cdsDetRegCob, xSQL);
      tcbTipoPla.Text:=DM1.cdsDetRegCob.FieldByname('TIPPLA').AsString ;
      dblcUProcesoExit(self);
      dblcdUPagoExit(Self);
      dblcdUgelExit(Self);
//Final HPC_201708_COB
      dbgDetRegGlobal.DataSource:=DM1.dsDetRegCob;

      If DM1.cdsDetRegCob.RecordCount >= 1 Then
         begin
          dbgDetRegGlobal.Enabled := True;
         end;

      dblcMonedaExit(Sender);
      dblcdRepresentanteExit(Sender);
      dblcdRepresentante.SetFocus;
     end;


   dbgDetRegGlobal.Selected.Clear;
   dbgDetRegGlobal.Selected.Add('UPROID'#9'6'#9'Unidad~Proc.');
   dbgDetRegGlobal.Selected.Add('UPAGOID'#9'6'#9'Id Unidad~Pago');
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
   dbgDetRegGlobal.Selected.Add('USEID'#9'3'#9'Id UGEL');
//Final HPC_201708_COB
   dbgDetRegGlobal.Selected.Add('UPAGOABR'#9'15'#9'Unidad~Pago');
   dbgDetRegGlobal.Selected.Add('FORPAGOID'#9'6'#9'Forma~Recaud');
   dbgDetRegGlobal.Selected.Add('CPAGOID'#9'11'#9'Comprob~de Pago');
   dbgDetRegGlobal.Selected.Add('CPAGOFECHA'#9'11'#9'Comprob~Fecha');
   dbgDetRegGlobal.Selected.Add('RCOBANOAPO'#9'5'#9'Año~Apo.');
   dbgDetRegGlobal.Selected.Add('RCOBMESAPO'#9'3'#9'Mes~Apo.');
   dbgDetRegGlobal.Selected.Add('CPAGOTMON'#9'3'#9'TM');
   dbgDetRegGlobal.Selected.Add('CPAGOMTO'#9'12'#9'Monto');
   dbgDetRegGlobal.Selected.Add('CPAGODEDUC'#9'12'#9'Deducción');
   dbgDetRegGlobal.Selected.Add('CPAGOLIQ'#9'12'#9'Monto~Líquido');
   dbgDetRegGlobal.Selected.Add('DOCMTO'#9'12'#9'Doc.~Monto');
   dbgDetRegGlobal.Selected.Add('CPAGOCPTO'#9'15'#9'Concepto');
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
   dbgDetRegGlobal.Selected.Add('ASOTIPID'#9'3'#9'Tipo~Asociado');
   dbgDetRegGlobal.Selected.Add('TIPPLA'#9'10'#9'Tipo~Planilla');
//Final HPC_201708_COB   
   dbgDetRegGlobal.Selected.Add('FPAGOID'#9'12'#9'Forma~Pago');
   dbgDetRegGlobal.Selected.Add('BANCOID'#9'9'#9'Banco');
   dbgDetRegGlobal.Selected.Add('CCBCO'#9'18'#9'Cta~Cte');
   dbgDetRegGlobal.Selected.Add('DOCID'#9'13'#9'Nº~Doc.');
   dbgDetRegGlobal.Selected.Add('DOCFECHA'#9'10'#9'Doc~Fecha');
   dbgDetRegGlobal.Selected.Add('TMONID'#9'9'#9'Tipo~Mon.');
   dbgDetRegGlobal.Selected.Add('USUARIO'#9'12'#9'Usuario');
   //dbgDetRegGlobal.Selected.Add('FREG'#9'11'#9'Fecha~Reg.');
   dbgDetRegGlobal.Selected.Add('HREG'#9'20'#9'Fecha~Registro');
   dbgDetRegGlobal.RefreshDisplay;

// Inicio: SPP_201310_COB    : 08/07/2013 - Se agrega para sumar y agregar formato numerico
   dbgDetRegGlobal.ColumnByName('CPAGODEDUC').FooterValue:= FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGODEDUC)', ''), ffNumber, 15, 2);
   dbgDetRegGlobal.ColumnByName('CPAGOMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOMTO)', ''), ffNumber, 15, 2);
   dbgDetRegGlobal.ColumnByName('DOCMTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(DOCMTO)', ''), ffNumber, 15, 2);
   dbgDetRegGlobal.ColumnByName('CPAGOLIQ').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOLIQ)', ''), ffNumber, 15, 2);
// Fin: SPP_201310_COB       : 08/07/2013 - Se agrega para sumar y agregar formato numerico

   xCrea  := False;
   xBanco := dblcBanco.Text;

  //************************************
  //Formato decimales a campos numericos
  //************************************
   TNumericField(DM1.cdsRegCob.FieldByName('RCOBMTO')).DisplayFormat       := '###,###,##0.00';
   TNumericField(DM1.cdsRegCob.FieldByName('RCOBMTO')).EditFormat          := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('DOCMTO')).DisplayFormat     := '###,###,##0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('DOCMTO')).EditFormat        := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).DisplayFormat   := '###,###,##0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).EditFormat      := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).EditFormat    := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOLIQ')).DisplayFormat   := '###,###,##0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOLIQ')).EditFormat      := '########0.00';

   if DM1.cdsEjecuta.FieldByName('RCOBESTADO').AsString = 'ACEPTADO' Then
    begin
     pnlTop.Enabled    := False;
     pnlInicio.Enabled := False;
     bbtnNuevo.Enabled := False;
     Z2bbtnCierra.Enabled   := False;
    end
   else
    if DM1.cdsEjecuta.FieldByName('RCOBESTADO').AsString = 'INICIAL' Then
     begin
      //pnlTop.Enabled    := True;
      pnlInicio.Enabled := True;
      bbtnNuevo.Enabled := True;
      Z2bbtnCierra.Enabled   := True;
     end;

   Z2bbtnAceptara.Enabled := False;
   Z2bbtnCancel.Enabled   := False;
   bbtnSigue.Enabled      := True;
end;

procedure TFRegGlobalCob1.bbtnClearClick(Sender: TObject);
begin
   dblcdRepresentante.Clear;
   edtRepresentante.Clear;
   dbdtpFRecepcion.Clear;
   dblcBanco.Clear;
   dbeBanco.Clear;
   dblcdAgenBco.Clear;
   dbeAgencia.Clear;
   dblcCuenta.Clear;
   dbeNumOpe.Clear;
   dbdtpFOpe.Clear;
   dblcMoneda.Clear;
   dbeMoneda.Clear;
   dbeMonto.Clear;
   sbAno.Clear;
   sbMes.Clear;
end;

procedure TFRegGlobalCob1.bbtnSigueClick(Sender: TObject);
var
   xPer : String;
   Y, M, D : Word;
begin

   if DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
     begin
       Exit;
     end;

    DecodeDate(dbdtpFRecepcion.Date,Y, M, D);
    xPer := sbAno.Text+sbMes.Text;

    if Not ValidaCabeceraRegGlo Then
      begin
       Exit;
      end;

   if DM1.wModo = 'M' Then  DM1.cdsRegCob.Edit;

   if (DM1.cdsRegCob.ChangeCount > 0) or (DM1.cdsRegCob.Modified) Then
     begin

       if DM1.wModo = 'A' Then
         begin
           xReg := DM1.StrZero(DM1.MaxSQL('COB301', 'RCOBID', ''), DM1.cdsRegCob.FieldByName('RCOBID').Size);
           DM1.cdsRegCob.Edit;
           DM1.cdsRegCob.FieldByName('RCOBID').AsString := xReg;
        end;

      DM1.cdsRegCob.FieldByName('USUARIO').AsString := DM1.wUsuario;
      DM1.cdsRegCob.FieldByName('FREG').AsDateTime  := Date;
      DM1.cdsRegCob.FieldByName('HREG').AsDateTime  := Date+SysUtils.Time;

      cdsPost(DM1.cdsRegCob);
      DM1.cdsRegCob.Post;
      //Try DM1.ControlTran Lo Reemplazo por el Procedimiento Grabacab;
      Try GrabaCab(DM1.wModo);
          lblReg.Caption := 'Registro Global de Cobranza - '+VerfGrabInicial(xReg);
      Except
         ShowMessage('Error con el Correlativo, Reintente nuevamente ');
         lblReg.Caption := 'Registro Global de Cobranza';
         bbtnSigue.SetFocus;
         Exit;
     End;

    End;

   pnlInicio.Enabled       := False;
   pnlTop.Enabled          := False;
   bbtnNuevo.Enabled       := True;
   dbgDetRegGlobal.Enabled := True;
   bbtnNuevoClick(Sender);
   Z2bbtnAceptara.Enabled  := True;
   Z2bbtnCancel.Enabled    := True;
   Z2bbtnCierra.Enabled    := True;
   bbtnSigue.Enabled       := False;
end;

Function TFRegGlobalCob1.ValidaCabeceraRegGlo:Boolean;
begin
   Result := False;
   If Length(DM1.cdsRegCob.FieldByName('RCOBANO').AsString) = 0 Then
    begin
     ShowMessage('Ingrese el Año del Período');
     sbAno.SetFocus;
     Exit;
    end;
   If Length(DM1.cdsRegCob.FieldByName('RCOBMES').AsString) = 0 Then
    begin
     ShowMessage('Ingrese el Mes del Período');
     sbMes.SetFocus;
     Exit;
    end;
   If Length(Trim(edtRepresentante.Text)) = 0 Then
    begin
     ShowMessage('Seleccione el Representante');
     dblcdRepresentante.SetFocus;
     Exit;
    end;
   If Length(Trim(dbdtpFRecepcion.Text)) = 0 Then
    begin
     ShowMessage('Seleccione la Fecha de Recepción');
     dbdtpFRecepcion.SetFocus;
     Exit;
    end;
   If Length(Trim(dbeBanco.Text)) = 0 Then
    begin
     ShowMessage('Seleccione el Banco');
     dblcBanco.SetFocus;
     Exit;
    end;
   If Length(Trim(dbeAgencia.Text)) = 0 Then
    begin
     ShowMessage('Agencia No Válida');
     //dblcdAgenBco.SetFocus;
     //Exit;
    end;
   If Length(Trim(dblcCuenta.Text)) = 0 Then
    begin
     ShowMessage('Seleccione la Cuenta');
     dblcCuenta.SetFocus;
     Exit;
    end;
   If Length(Trim(dbeNumOpe.Text)) = 0 Then
    begin
     ShowMessage('Registre el Número de Operación');
     dbeNumOpe.SetFocus;
     Exit;
    end;
  //Valida fecha Fecha de Operación no Mayor a Fecha de Recepción
   If Length(Trim(dbdtpFRecepcion.Text)) = 0 Then
    begin
     ShowMessage('Seleccione la Fecha de Recepción');
     dbdtpFRecepcion.SetFocus;
     Exit;
    end;
   If Length(Trim(dbdtpFOpe.Text)) = 0 Then
    begin
     ShowMessage('Seleccione la Fecha de Operación');
     dbdtpFOpe.SetFocus;
     Exit;
    end;
   If (dbdtpFOpe.Date)>(dbdtpFRecepcion.Date) Then
    begin
     ShowMessage('La Fecha de Operación no puede ser Mayor a la Fecha de Registro');
     dbdtpFOpe.SetFocus;
     Exit;
    end;
   If Length(Trim(dbeMoneda.Text)) = 0 Then
    begin
     ShowMessage('Seleccione el Tipo de Moneda');
     dblcMoneda.SetFocus;
     Exit;
    end;
   If Length(Trim(dbeMonto.Text)) = 0 Then
    begin
     ShowMessage('Ingrese el Monto');
     dbeMonto.SetFocus;
     Exit;
    end;
   If Length(Trim(sbAno.Text)) = 0 Then
    begin
     ShowMessage('Ingrese el Año');
     sbAno.SetFocus;
     Exit;
    end;
   If Length(Trim(sbMes.Text)) = 0 Then
    begin
     ShowMessage('Ingrese el Mes');
     sbMes.SetFocus;
     Exit;
    end;
   Result := True;
end;

procedure TFRegGlobalCob1.FormClose(Sender: TObject; var Action: TCloseAction);
var
   xSQL : String;
begin
// Inicio: SPP_201310_COB       : 08/07/2013 - Agregar Columnas en Filtro
   pnlDocumentos.Visible := False;
   DM1.cdsRegCob.Cancel;
   DM1.cdsDetRegCob1.Close;
   DM1.cdsDetRegCob1.Open;
  
   //xSQL := 'Select * From COB301';
   //FPrincipal.Mtx.UsuarioSQL.Clear;
   //FPrincipal.Mtx.TableName   := 'COB301';
   //FPrincipal.Mtx.TablaLlave  := 'RCOBID';

   //FPrincipal.Mtx.Tabla2      := 'COB302';
   //FPrincipal.Mtx.Tabla2Llave := 'RCOBID';

   //FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
   //FPrincipal.Mtx.NewQuery;
// Fin: SPP_201310_COB       : 08/07/2013 - Agregar Columnas en Filtro
end;

procedure TFRegGlobalCob1.dblcBancoExit(Sender: TObject);
begin
   if Z2bbtnCancel.Focused or Z2bbtnSalir.Focused Then Exit;

   sWhere:= 'BANCOID = '+ QuotedStr(dblcBanco.Text) ;
   dbeBanco.Text := DM1.DisplayDescrip('prvSQL', 'TGE105', 'BANCONOM, BANCOPRF', sWhere, 'BANCONOM');
{   if Length(Trim(dblcBanco.text))>0 then
      xBanco := dblcBanco.Text;}

   if Length(Trim(xBanco)) > 0 Then
   if xBanco <> dblcBanco.Text Then
    begin
     DM1.cdsRegCob.FieldByName('CCBCOID').AsString  := '';
     DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString := '';
    end;
//   if Length(Trim(DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString)) = 0 Then
    DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString := DM1.cdsQry.FieldByName('BANCOPRF').AsString;

   DM1.FiltraCDS(DM1.cdsAgenciaBco, 'Select * From COB102 Where BANCOID ='+QuotedStr(dblcBanco.Text));
   DM1.FiltraCDS(DM1.cdsCuentas, 'SELECT DISTINCT CCBCOID FROM TGE106 WHERE BANCOID ='+QuotedStr(dblcBanco.Text)+' and ciaid=''02'' and activo=''S'' ');
end;

procedure TFRegGlobalCob1.dblcCuentaExit(Sender: TObject);
begin
   if xCrea Then Exit;
   if Z2bbtnCancel.Focused or Z2bbtnSalir.Focused Then Exit;
   sWhere := 'CCBCOID = '+ Quotedstr(dblcCuenta.Text) ;
   DM1.DisplayDescrip('prvSQL', 'TGE106', 'BANCOID', sWhere, 'BANCOID');
   xBanco := dblcBanco.Text;
end;

procedure TFRegGlobalCob1.dblcMonedaExit(Sender: TObject);
begin
   sWhere:= 'TMONID='+ QuotedStr(dblcMoneda.Text);
   dbeMoneda.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');
   if xCrea Then Exit;
   if Z2bbtnCancel.Focused or Z2bbtnSalir.Focused Then Exit;
   if (dbeMoneda.Text = '') and (dblcMoneda.Text <> '') Then
    begin
     dblcMoneda.SetFocus;
     Raise Exception.Create('Error, Código de Tipo de Moneda No Válido');
    end;
   if dblcMoneda.Text = '' Then
    begin
     dblcMoneda.SetFocus;
     Raise Exception.Create('Ingrese el Tipo de Moneda del Aporte');
    end;
end;

procedure TFRegGlobalCob1.dblcChqMonedaExit(Sender: TObject);
begin
   sWhere := 'TMONID = '+ QuotedStr(dblcChqMoneda.Text);
   dbeChqMoneda.Text := DM1.DisplayDescrip('prvSQL', 'TGE103', 'TMONDES', sWhere, 'TMONDES');

   if xCrea Then Exit;
   if bbtnCancelar.Focused  Then Exit;
   if (dbeChqMoneda.Text = '') and (dblcChqMoneda.Text <> '') Then
    begin
     dblcChqMoneda.SetFocus;
     Raise Exception.Create('Error, Código de Tipo de Moneda no válido');
    end;
   if  dblcChqMoneda.text = '' Then
    begin
     dblcChqMoneda.SetFocus;
     Raise Exception.Create('Ingrese el Tipo de Moneda del Aporte');
    end;
end;

procedure TFRegGlobalCob1.dblcFPagoExit(Sender: TObject);
begin
   sWhere := 'FPAGOID= '+ QuotedStr(dblcFPago.Text);
   dbeFPago.Text := DM1.DisplayDescrip('prvSQL', 'TGE112', 'FPAGODES, FPAGOBCO', sWhere, 'FPAGODES');
   if DM1.cdsQry.FieldByName('FPAGOBCO').AsString <> 'S' Then
    begin
     dblcChqBanco.Enabled  := False;
     dbeChqCuenta.Enabled  := False;
     dbeChqNum.Enabled     := False;
     dbdtpChqFecha.Enabled := False;
    end
   else
    begin
     dblcChqBanco.Enabled  := True;
     dbeChqCuenta.Enabled  := True;
     dbeChqNum.Enabled     := True;
     dbdtpChqFecha.Enabled := True;
    end;
end;

procedure TFRegGlobalCob1.Z2bbtnSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFRegGlobalCob1.dblcdRepresentanteExit(Sender: TObject);
var
   xSQL, xNomRep : string;
begin
   sWhere := 'REPRID = '+ QuotedStr(dblcdRepresentante.Text);
  //edtRepresentante.text:=DM1.DisplayDescrip('prvSQL','COB201','REPRAPENOM',sWhere,'REPRAPENOM');
   xNomRep := Trim(DM1.DisplayDescrip('prvSQL', 'COB201', 'REPRAPENOM', sWhere, 'REPRAPENOM'));
   if DM1.cdsRegCob.State <> dsBrowse Then
    begin
     if Trim(DM1.cdsRegCob.FieldByName('REPRAPENOM').AsString) <> xNomRep Then
      DM1.cdsRegCob.FieldByName('REPRAPENOM').AsString := xNomRep;
    end;
   xSQL := 'SELECT UPROID FROM COB203 WHERE '+sWhere;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   xSQL := '';
   DM1.cdsReporte.First;
   While not DM1.cdsReporte.Eof do
    begin
     if Length(Trim(xSQL)) = 0 Then
      xSQL := '(UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPROID').AsString)+')'
     else
      xSQL := xSQL+' OR (UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPROID').AsString)+')';
     DM1.cdsReporte.Next;
    end;

   if Length(Trim(xSQL)) > 0 Then
    xSQL := 'WHERE '+xSQL;
   xSQL := 'SELECT * FROM APO102 '+xSQL;
   DM1.FiltraCDS(DM1.cdsUPro, xSQL);

   xSQL := 'SELECT UPAGOID, UPAGONOM '+
           'FROM APO103 '+
           'WHERE UPROID ='''+DM1.cdsDetRegCob.FieldByName('UPROID').AsString+'''';

   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
end;

procedure TFRegGlobalCob1.bbtnNuevoClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   //pnlDocumentos.Height  := 307;
   pnlDocumentos.Left    := 2;
//Inicio HPC_201708_COB
//Cambio de Posición
// pnlDocumentos.Top     := 160;
   pnlDocumentos.Top     := 176;
   dbeUseid.Text :='';
//Final HPC_201708_COB
   dbeUPago.Text         := '';
   dbeFRecaudacion.Text  := '';
   dbeFPago.Text         := '';
   dbeChqBanco.Text      := '';
   dbeChqMoneda.Text     := '';
   dbeUProceso.Text      := '';
   dbeMonedaC.Text       := '';
   dbeChqMoneda.Text     := '';
   pnlDocumentos.Visible := True;
   gbActualiza.Enabled   := False;
   pnlDocumentos.BringToFront;
   DM1.cdsDetRegCob.Insert;
   DM1.cdsDetRegCob.FieldByName('CPAGOTMON').AsString := 'N';
   dbeMonedaC.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', 'TMONID = ''N''', 'TMONDES');


   DM1.cdsDetRegCob.FieldByName('TMONID').AsString := 'N';
   dbeChqMoneda.Text := dbeMonedaC.Text;

   wModo1 := 'A';
   DM1.cdsDetRegCob.FieldByName('RCOBID').AsString     := DM1.cdsRegCob.FieldByName('RCOBID').AsString;//edtCorrelativo.Text;
   DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString    := DM1.cdsRegCob.FieldByName('RCOBANO').AsString;
   DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString    := DM1.cdsRegCob.FieldByName('RCOBMES').AsString;
   DM1.cdsDetRegCob.FieldByName('RCOBANOAPO').AsString := DM1.cdsRegCob.FieldByName('RCOBANO').AsString;
   DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString := DM1.cdsRegCob.FieldByName('RCOBMES').AsString;

   DM1.cdsDetRegCob.FieldByName('REPRID').AsString     := DM1.cdsRegCob.FieldByName('REPRID').AsString;
   DM1.cdsDetRegCob.FieldByName('REPRAPENOM').AsString := DM1.cdsRegCob.FieldByName('REPRAPENOM').AsString;

   DM1.cdsDetRegCob.FieldByName('RCOBESTADO').AsString := 'INICIAL';
   DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsFloat  := 0;
   dblcUProceso.SetFocus;
   Screen.Cursor := crDefault;
end;

procedure TFRegGlobalCob1.bbtnAceptarClick(Sender: TObject);
begin
   If Not ValidaDetalleRegGLo Then Exit;
   If wModo1 = 'A' Then
    begin
     DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString:=DM1.StrZero(IntToStr(DM1.cdsDetRegCob.RecordCount+1),7);
    end;

   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).EditFormat:='########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).EditFormat:='########0.00';

   DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsFloat := DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat-DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsFloat;
   DM1.cdsDetRegCob.FieldByName('DOCMTO').AsFloat   := DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsFloat;

   sWhere := 'UPAGOID='+QuotedStr(dblcdUPago.Text);
   DM1.cdsDetRegCob.FieldByName('RCOBNOPE').AsString := DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString;
   DM1.cdsDetRegCob.FieldByName('RCOBFOPE').AsString := DM1.cdsRegCob.FieldByName('RCOBFOPE').AsString;
   DM1.cdsDetRegCob.FieldByName('UPROID').AsString   := dblcUProceso.text; //DM1.DisplayDescrip('prvSQL', 'APO103', 'UPROID', sWhere, 'UPROID');
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
   DM1.cdsDetRegCob.FieldByName('USEID').AsString  := dblcdUgel.text;
   DM1.cdsDetRegCob.FieldByName('TIPPLA').AsString := Trim(tcbTipoPla.Text);
//Final HPC_201708_COB   
   DM1.cdsDetRegCob.FieldByName('USUARIO').AsString  := DM1.wUsuario;
   DM1.cdsDetRegCob.FieldByName('FREG').AsDateTime   := Date;
   DM1.cdsDetRegCob.FieldByName('HREG').AsDateTime   := Date+SysUtils.Time;
   cdsPost(DM1.cdsDetRegCob);
   DM1.cdsDetRegCob.Post;
   //DM1.ControlTran;   //RICMZ PRUEBA
   GrabaDet1(wModo1);
   dbgDetRegGlobal.ColumnByName('DOCMTO').FooterValue   := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob , 'SUM(DOCMTO)',''));
   dbgDetRegGlobal.ColumnByName('CPAGOLIQ').FooterValue := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob , 'SUM(CPAGOLIQ)',''));
   pnlDocumentos.Visible := False;
   gbActualiza.Enabled   := True;
end;

procedure TFRegGlobalCob1.dbgDetRegGlobalDblClick(Sender: TObject);
begin
   if DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'ACEPTADO' Then
    begin
     Information(Caption, 'El Documento solo puede ser Visualizado como Consulta');
     Exit;
    end;
   //pnlDocumentos.Height := 307;
   pnlDocumentos.Left   := 6;
//Inicio HPC_201708_COB
//Cambio de Posición
//  pnlDocumentos.Top    := 156;
   pnlDocumentos.Top     := 176;
//Final HPC_201708_COB
   gbActualiza.Enabled   := False;
   pnlDocumentos.Visible := True;
   wModo1 := 'M';
   xCREA  := True;
   xCrea  := False;

   DM1.cdsDetRegCob.Edit;
   
   xWhere := 'UPROID ='''+dblcUProceso.Text+'''';
   dbeUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');

   sWhere := 'UPAGOID ='+QuotedStr(dblcdUPago.Text);
   dbeUPago.Text := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', sWhere, 'UPAGONOM');

   sWhere := 'TMONID = '+ QuotedStr(dblcdMonedaC.Text);
   dbeMonedaC.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');

   sWhere := 'FORPAGOABR ='+QuotedStr(dblcFRecaudacion.Text);
   dbeFRecaudacion.Text := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGODES', sWhere, 'FORPAGODES');

   sWhere := 'FPAGOID ='+QuotedStr(dblcFPago.Text) ;
   dbeFPago.Text := DM1.DisplayDescrip('prvSQL', 'TGE112', 'FPAGODES', sWhere, 'FPAGODES');

   sWhere := 'BANCOID ='+QuotedStr(dblcChqBanco.Text);
   dbeChqbanco.Text := DM1.DisplayDescrip('prvSQL', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM');

   sWhere:= 'TMONID ='+QuotedStr(dblcChqMoneda.Text);
   dbeChqMoneda.Text := DM1.DisplayDescrip('prvSQL', 'TGE103', 'TMONDES', sWhere, 'TMONDES');
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
   tcbTipoPla.Text:=DM1.cdsDetRegCob.FieldByname('TIPPLA').AsString ;
//Final HPC_201708_COB   
end;

procedure TFRegGlobalCob1.Z2bbtnCancelClick(Sender: TObject);
begin
   DM1.cdsDetRegCob.CancelUpdates;
   DM1.CdsRegCob.CancelUpdates;
end;

procedure TFRegGlobalCob1.dblcChqBancoExit(Sender: TObject);
begin
   sWhere := 'BANCOID = '+QuotedStr(dblcChqBanco.Text);
   dbeChqbanco.Text := DM1.DisplayDescrip('prvSQL', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM');
end;

procedure TFRegGlobalCob1.dbdtpChqFechaExit(Sender: TObject);
begin
   if xCrea Then Exit;
end;

procedure TFRegGlobalCob1.bbtnCancelarClick(Sender: TObject);
begin
   DM1.cdsDetRegCob.Cancel;
   pnlDocumentos.Visible := False;
   gbActualiza.Enabled   := True;
end;

procedure TFRegGlobalCob1.dblcdUPagoExit(Sender: TObject);
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
var xsql:String;
//Final HPC_201708_COB
begin
   sWhere := 'UPAGOID ='+QuotedStr(dblcdUPago.Text)+' AND UPROID = '+quotedstr(dblcUProceso.text);
   DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM, UPAGOABR', sWhere, 'UPAGONOM');
   dbeUPago.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;

   if xCrea Then Exit;
   if Z2bbtnCancel.Focused or Z2bbtnSalir.Focused Then Exit;

   if DM1.cdsDetRegCob.State = dsBrowse Then
    Exit;
   if DM1.cdsDetRegCob.FieldByName('UPAGOABR').AsString <> DM1.cdsQry.FieldByName('UPAGOABR').AsString Then
    DM1.cdsDetRegCob.FieldByName('UPAGOABR').AsString := DM1.cdsQry.FieldByName('UPAGOABR').AsString;

//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
  xSQL := 'SELECT UPROID,UPAGOID,USEID, USENOM ' +
          'FROM APO101 ' +
          'WHERE UPROID =' + quotedstr(dblcUProceso.Text)+' AND  UPAGOID='+quotedstr(dblcdUPago.Text);
   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSQL);
   DM1.cdsUSES.Open;
//Final HPC_201708_COB

end;

procedure TFRegGlobalCob1.dblcFRecaudacionExit(Sender: TObject);
begin
   sWhere := 'FORPAGOABR ='+QuotedStr(dblcFRecaudacion.Text);
   dbeFRecaudacion.Text := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGODES', sWhere, 'FORPAGODES');
   if xCrea Then Exit;
   if Z2bbtnCancel.Focused or Z2bbtnSalir.Focused Then Exit;
end;

procedure TFRegGlobalCob1.dbdtpCPagoFechaExit(Sender: TObject);
begin
   if xCrea Then Exit;
end;

function TFRegGlobalCob1.ValidaDetalleRegGlo:Boolean;
begin
   Result := False;
   If Length(dbeFRecaudacion.Text) = 0 Then
    begin
//Inicial HPC_201708_COB
//Se cambió el mensaje por obseravión de calidad, no era parte del pase
//   ShowMessage('Seleccione la Unidad de Pago');
     ShowMessage('Seleccione la Forma de Recaudación');
//Final HPC_201708_COB
     dblcFRecaudacion.SetFocus;
     Exit;
    end;

   If Length(dbeCPagoNum.Text) = 0 Then
    begin
     ShowMessage('Registre el Número de Comprobante de Pago');
     dbeCPagoNum.SetFocus;
     Exit;
    end;

   If Length(dbdtpCPagoFecha.Text) = 0 Then
    begin
     ShowMessage('Seleccione la Fecha del Comprobante de Pago');
     dbdtpCPagoFecha.SetFocus;
     Exit;
    end;

   If Length(dbeMonedaC.Text) = 0 Then
    begin
     ShowMessage('Seleccione el Tipo de Moneda');
     dblcdMonedac.SetFocus;
     Exit;
    end;

   If Length(dbeCPagoTotal.Text) = 0 Then
    begin
     ShowMessage('Registre el Monto Total');
     dbeCPagoTotal.SetFocus;
     Exit;
    end;

   If Length(dbeDeduccion.Text) = 0 Then
    begin
     ShowMessage('Registre la Deducción');
     dbeDeduccion.SetFocus;
     Exit;
    end;

  /// Comprobante de Pago /\
  ///****************************************************
  /// Datos del Cheque \/

   If Length(dblcFPago.Text) = 0 Then
    begin
     ShowMessage('Seleccione el Tipo de Transacción');
     dblcFPago.SetFocus;
     Exit;
    end;

   If Length(dbeChqMoneda.Text) = 0 Then
    begin
     ShowMessage('Seleccione el Tipo de Moneda del Cheque');
     dblcChqMoneda.SetFocus;
     Exit;
    end;

   If Length(dbeChqMonto.Text) = 0 Then
    begin
     ShowMessage('Ingrese el Monto de la Transacción');
     dbeChqMonto.SetFocus;
     Exit;
    end;

    If Length(lblcAsotipid.Text) = 0 Then
    begin
     ShowMessage('Seleccione el Tipo de Asociado');
     lblcAsotipid.SetFocus;
     Exit;
    end;

//Inicio HPC_201708_COB
//Mensaje de error cuando no se ingresa el tipo de planilla
    If Length(tcbTipoPla.Text) = 0 Then
    begin
     ShowMessage('Seleccione el Tipo de Planilla');
     tcbTipoPla.SetFocus;
     Exit;
    end;
//Final HPC_201708_COB

   Result := True;
end;

procedure TFRegGlobalCob1.dblcdMonedaCExit(Sender: TObject);
begin
   sWhere := 'TMONID = '+ QuotedStr(dblcdMonedaC.Text) ;
   dbeMonedaC.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');
end;

procedure TFRegGlobalCob1.dbeDeduccionExit(Sender: TObject);
begin
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).EditFormat   := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).EditFormat := '########0.00';

   DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsFloat := DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat-DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsFloat;
   DM1.cdsDetRegCob.FieldByName('DOCMTO').AsFloat   := DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsFloat;
end;

procedure TFRegGlobalCob1.dbeCPagoTotalExit(Sender: TObject);
begin
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).EditFormat := '########0.00';
end;

procedure TFRegGlobalCob1.Z2bbtnModificaClick(Sender: TObject);
begin
   pnlInicio.Enabled := True;
   //pnlTop.Enabled    := True;
   bbtnSigue.Enabled := True;
end;

procedure TFRegGlobalCob1.sbMesExit(Sender: TObject);
begin
   DM1.cdsRegCob.FieldByName('RCOBMES').AsString := DM1.StrZero(DM1.cdsRegCob.FieldByName('RCOBMES').AsString, 2);
end;

procedure TFRegGlobalCob1.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFRegGlobalCob1.Z2bbtnAceptaraClick(Sender: TObject);
begin
  if DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
  begin
    Information(Caption, 'El Documento ya se encuentra en Estado Aceptado ');
    Exit;
  end;

  dbgDetRegGlobal.ColumnByName('DOCMTO').FooterValue   := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(DOCMTO)', ''));
  dbgDetRegGlobal.ColumnByName('CPAGOLIQ').FooterValue := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOLIQ)', ''));

  if DM1.cdsRegCob.Active Then
  begin
    Screen.Cursor := crHourGlass;
    if FormatFloat('99999999.00', DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOLIQ)', ''))
     <>FormatFloat('99999999.00', DM1.cdsRegCob.FieldByName('RCOBMTO').AsFloat) Then
    begin
      ShowMessage('Suma No Coincide con Monto de la Operación');
    end;

    if DM1.cdsRegCob.State = dsBrowse Then
    DM1.cdsRegCob.Edit;
    DM1.cdsRegCob.FieldByName('CIAID').AsString   := wCiaDef;
    DM1.cdsRegCob.FieldByName('HREG').AsDateTime  := Date+SysUtils.Time;
    DM1.cdsRegCob.FieldByName('RCOBDED').AsString := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGODEDUC)', ''));
    DM1.cdsRegCob.FieldByName('RCOBBRU').AsString := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOMTO)', ''));
    //DM1.cdsRegCob.FieldByName('RCOBBRU').AsString:= FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob , 'SUM(CPAGOMTO)','')+DM1.cdsRegCob.FieldByName('RCOBDED').AsFloat);
    cdsPost(DM1.cdsRegCob);
    DM1.cdsRegCob.Post;
    //DM1.ControlTran;

    xSQL:='UPDATE COB301 SET CIAID='''+wCiaDef+''',HREG=SYSDATE,'+
          'RCOBDED='+FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGODEDUC)', ''))+','+
          'RCOBBRU='+FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOMTO)', ''))+' '+
          'WHERE RCOBID='''+DM1.cdsRegCob.FieldByName('RCOBID').AsString+
          ''' AND RCOBMES='''+DM1.cdsRegCob.FieldByName('RCOBMES').AsString+
          ''' AND RCOBANO='''+DM1.cdsRegCob.FieldByName('RCOBANO').AsString+''' ';
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


    Screen.Cursor := crDefault;
    ShowMessage('Actualización Realizada');
  end;
end;

procedure TFRegGlobalCob1.Z2bbtnCierraClick(Sender: TObject);
var
   xMaxUserCobId : String;
begin
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
    begin
     Information(Caption, 'El Documento ya se encuentra en Estado Aceptado ');
     Exit;
    end;

   If FormatFloat('99999999.00', DM1.OperClientDataSet(DM1.cdsDetRegCob,'SUM(CPAGOLIQ)','')) <>
      FormatFloat('99999999.00', DM1.cdsRegCob.FieldByName('RCOBMTO').AsFloat) Then
    begin
     ErrorMsg(Caption, 'Suma no Coincide con Monto de la Operación'+#13+#13+
                      '       No Puede Aceptar el Documento');
     Exit;
    end;


   if Question (Caption, 'Esta Seguro de Actualizar el Estado'#13+#13+'Desea Continuar') Then
    begin
     DM1.cdsRegCob.Edit;
     DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString := 'ACEPTADO';
     cdsPost(DM1.cdsRegCob);
     DM1.cdsRegCob.Post;
     //DM1.ControlTran;

     xSQL:='Update cob301 Set RCOBESTADO=''ACEPTADO'' WHERE '+
           'RCOBID='''+DM1.cdsRegCob.FieldByName('RCOBID').AsString +
           ''' AND RCOBMES='''+DM1.cdsRegCob.FieldByName('RCOBMES').AsString+
           ''' AND RCOBANO='''+DM1.cdsRegCob.FieldByName('RCOBANO').AsString+''' ';
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     DM1.cdsDetRegCob.First;
     While not DM1.cdsDetRegCob.Eof do
      begin
        DM1.cdsDetRegCob.Edit;
        DM1.cdsDetRegCob.FieldByName('RCOBESTADO').AsString := 'ACEPTADO';
        cdsPost(DM1.cdsDetRegCob);
        DM1.cdsDetRegCob.Post;
        //DM1.ControlTran;


        xMaxUserCobId := DM1.strZero(DM1.MaxSQL('COB303','USERCOBID',''),7);         //DM1.StrZero(IntToStr(DM1.cdsCobxUse.RecordCount+1),7);

        xSQL:='Update cob302 Set RCOBESTADO=''ACEPTADO'' WHERE RCOBID='''+DM1.cdsDetRegCob.FieldByName('RCOBID').AsString +''' AND '+
              ' DETRCOBID='''+DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString+''' AND  rcobmes='''+DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString+''' and rcobano='''+DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString+''' ';
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


        xSql:='Select * from COB303 Where   RCOBID='''+DM1.cdsDetRegCob.FieldByName('RCOBID').AsString +''' AND '+
              ' DETRCOBID='''+DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString+''' AND  rcobmes='''+DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString+''' and rcobano='''+DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString+''' ';
        Dm1.cdsTDoc.Close;
        Dm1.cdsTDoc.DataRequest(XSQL);
        DM1.cdsTDoc.Open;
        If DM1.cdsTDoc.RecordCount=0 Then
           Begin
             xSQL :='INSERT INTO COB303 (RCOBID, USEID, RCOBUSETOT, RCOBUSEAPO, RCOBUSECUO, RCOBANO, RCOBMES, USUARIO, FREG, HREG, UPAGOID, '+
                    'TMONID, RCOBAPOVAL, DOCID, DOCFECHA, RCOBFOPE, RCOBNOPE, UPROID, DETRCOBID, USERCOBID, REPRID, FPAGOID, FORPAGOID, '+
                    'BANCOID, AGENBCOID, CCBCO,ASOTIPID, RCOBANOAPO, RCOBMESAPO) VALUES ('+

             QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBID').AsString)    +', '''', '+DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString+', '+
             DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString+', '          +DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString +', '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString)+', '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString)   +', '+QuotedStr(DM1.cdsDetRegCob.FieldByName('USUARIO').AsString)  +', SYSDATE, SYSDATE, '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)   +', '+QuotedStr(DM1.cdsDetRegCob.FieldByName('CPAGOTMON').AsString)+', '+
             '0, '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('DOCID').AsString)     +', '+wRepFuncDate+QuotedStr(DM1.cdsDetRegCob.FieldByName('DOCFECHA').AsString) +'), '+
             wRepFuncDate+QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBFOPE').AsString)+'), '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBNOPE').AsString)  +', '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)   +', '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString)+', '''+xMaxUserCobId+''', '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('REPRID').AsString)+', '+QuotedStr(DM1.cdsDetRegCob.FieldByName('FPAGOID').AsString)+', '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('FORPAGOID').AsString) +', '+
             QuotedStr(DM1.cdsRegCob.FieldByName('BANCOID').AsString)+', '+
             QuotedStr(DM1.cdsRegCob.FieldByName('AGENBCOID').AsString)+', '+  // ypb
             QuotedStr(DM1.cdsRegCob.FieldByName('CCBCOID').AsString)+', '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOTIPID').AsString)+', '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBANOAPO').AsString) +', '+
             QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString) +')';
             DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
           End
       Else
          Begin
             xSQL :=' Update COB303 Set '+
             'RCOBID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBID').AsString)+','+
             'USEID='+''''+','+
             'RCOBUSETOT='+DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString+','+
             'RCOBUSEAPO='+ DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString+','+
             'RCOBUSECUO='+DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString +','+
             'RCOBANO='+QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString)+','+
             'RCOBMES='+QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString)+','+
             'USUARIO='+QuotedStr(DM1.cdsDetRegCob.FieldByName('USUARIO').AsString)+','+
             'UPAGOID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)+','+
             'TMONID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('CPAGOTMON').AsString)+','+
             'DOCID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('DOCID').AsString)+','+
             'DOCFECHA='+QuotedStr(DM1.cdsDetRegCob.FieldByName('DOCFECHA').AsString) +'),'+
             'RCOBFOPE='+QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBFOPE').AsString)+'),'+
             'RCOBNOPE='+QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBNOPE').AsString)+','+
             'UPROID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)+','+
             'REPRID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('REPRID').AsString)+','+
             'FPAGOID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('FPAGOID').AsString)+',' +
             'FORPAGOID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('FORPAGOID').AsString) +','+
             'BANCOID='+QuotedStr(DM1.cdsRegCob.FieldByName('BANCOID').AsString)+','+
             'AGENBCOID='+QuotedStr(DM1.cdsRegCob.FieldByName('AGENBCOID').AsString)+','+
             'CCBCO='+QuotedStr(DM1.cdsRegCob.FieldByName('CCBCOID').AsString)+','+
             'ASOTIPID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOTIPID').AsString)+','+
             'RCOBANOAPO='+QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBANOAPO').AsString) +','+
             'RCOBMESAPO='+QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString)+
             ' WHERE RCOBID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBID').AsString)+' AND '+
             'DETRCOBID ='+QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString)+' AND '+
             'USERCOBID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('USERCOBID').AsString);
             DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          End;
        DM1.cdsDetRegCob.Next;
      end;
     ShowMessage('Documento Aceptado');
    end;
end;

procedure TFRegGlobalCob1.dblcUProcesoExit(Sender: TObject);
begin
   xWhere := 'UPROID ='''+dblcUProceso.Text+'''';
   dbeUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');

   xSQL := 'SELECT UPAGOID, UPAGONOM '+
        'FROM APO103 '+
        'WHERE UPROID ='+quotedstr(dblcUProceso.Text); //''+DM1.cdsDetRegCob1.FieldByName('UPROID').AsString+'''';

   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
end;

procedure TFRegGlobalCob1.dblcdRepresentanteEnter(Sender: TObject);
begin
   DM1.cdsRepresentante.IndexFieldNames := 'REPRAPENOM'
end;

procedure TFRegGlobalCob1.dblcdAgenbcoExit(Sender: TObject);
begin
   if Z2bbtnCancel.Focused or Z2bbtnSalir.Focused  Then Exit;

   if (ActiveControl.Parent.Name = dblcdagenbco.Parent.Name) and
      (ActiveControl.TabOrder < dblcdagenbco.TabOrder) Then
      Exit;

   DM1.cdsAgenciaBco.SetKey;
   DM1.cdsAgenciaBco.FieldByName('BANCOID').AsString   := dblcbanco.Text;
   DM1.cdsAgenciaBco.FieldByName('AGENBCOID').AsString := dblcdagenbco.Text;
   if not DM1.cdsAgenciaBco.GotoKey Then
    begin
     ShowMessage('Agencia No es Válida');
     dbeAgencia.Clear;
     //dblcdagenbco.setfocus;
     Exit;
    end;
   dbeAgencia.Text := DM1.cdsAgenciaBco.FieldByName('AGENBCODES').AsString;
end;

procedure TFRegGlobalCob1.Z2bbtnConcluirClick(Sender: TObject);
var
  xCondicion, xSQL, xAnoApo, xMesApo : string;
  xTotMon : Double;
begin
  if Question(Caption, 'Desea Concluir el Ingreso en Lote') Then
  begin
    Screen.Cursor:=crHourGlass;
    xTotMon :=0;
    xAnoApo := ''; xMesApo := '';
    xSQL := 'SELECT DISTINCT RCOBANOAPO FROM COB302 WHERE RCOBID ='+QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
    DM1.FiltraCDS(DM1.cdsReporte, xSQL);
    DM1.cdsReporte.First;
    if DM1.cdsReporte.RecordCount = 1 Then
      xAnoApo := 'TRANSANO='+QuotedStr(DM1.cdsReporte.FieldByName('RCOBANOAPO').AsString)
    else
    begin
      while not DM1.cdsReporte.Eof do
      begin
        if Length(xAnoApo) = 0 Then
          xAnoApo := 'TRANSANO='+QuotedStr(DM1.cdsReporte.FieldByName('RCOBANOAPO').AsString)
        else
          xAnoApo := xAnoApo+' OR TRANSANO='+QuotedStr(DM1.cdsReporte.FieldByName('RCOBANOAPO').AsString);
        DM1.cdsReporte.Next;
      end;                                                          
    end;

    xSQL := 'SELECT DISTINCT RCOBMESAPO FROM COB302 WHERE RCOBID ='+QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
    DM1.FiltraCDS(DM1.cdsReporte, xSQL);
    DM1.cdsReporte.First;
    if DM1.cdsReporte.RecordCount = 1 Then
      xMesApo := 'TRANSMES ='+QuotedStr(DM1.cdsReporte.FieldByName('RCOBMESAPO').AsString)
    else
    begin
      while not DM1.cdsReporte.Eof do
      begin
        if Length(xMesApo) = 0 Then
          xMesApo := 'TRANSMES='+QuotedStr(DM1.cdsReporte.FieldByName('RCOBMESAPO').AsString)
        else
          xMesApo := xMesApo+' OR TRANSMES='+QuotedStr(DM1.cdsReporte.FieldByName('RCOBMESAPO').AsString);
        DM1.cdsReporte.Next;
      end;
    end;

    if DM1.cdsRegCob.FieldByName('AGENBCOID').IsNull Then
      xcondicion := 'AND AGENCIDG IS NULL'
    else
      xcondicion := 'AND AGENCIDG='+QuotedStr(dblcdagenbco.Text);

    xSQL := 'SELECT USEID, NVL(SUM(NVL(TRANSMTO,0)),0) APORTE '+
            'FROM APO301 '+
            'WHERE TRANSINTID='+QuotedStr('APO')+' '+
            'AND ('+xAnoApo+') '+
            'AND ('+xMesApo+') '+
            'AND TRANSNOPE='+QuotedStr(dbenumope.Text)+' '+
            'AND TRANSFOPE=TO_DATE('+QuotedStr(FormatDateTime(wFormatFecha,dbdtpFOpe.Date))+') '+
            'AND BANCOIDG='+QuotedStr(dblcBanco.Text)+' '+
            xcondicion;
    xSQL := xSQL + ' GROUP BY USEID';

    DM1.cdsEjecuta.Close;
    DM1.cdsEjecuta.IndexFieldNames := '';
    DM1.cdsEjecuta.DataRequest(xSQL);

    DM1.cdsEjecuta.Open;

    if dm1.cdsEjecuta.RecordCount = 0 then
    begin
      Screen.Cursor:=crDefault;
      Information(Caption, 'No Existe Información Transferidad, No Puede Continuar');
      Exit;
    end;

    dm1.cdsEjecuta.First;
    while not dm1.cdsEjecuta.Eof do
    begin
      xTotMon:=xTotMon+dm1.cdsEjecuta.FieldByName('APORTE').AsFloat;
      dm1.cdsEjecuta.Next;
    end;

    DM1.cdsRegCob.Edit;
    DM1.cdsRegCob.FieldByName('RCOBFIN').AsString := 'S';
    if xTotMon > 0 Then
      DM1.cdsRegCob.FieldByName('CPAGOAPO').AsFloat := xTotMon
    else
      DM1.cdsRegCob.FieldByName('CPAGOAPO').AsFloat := 0;

    cdsPost(DM1.cdsRegCob);
    DM1.cdsRegCob.post;
    DM1.ControlTran;

    // Procedimiento de Inserción a Caja321 y Caja322

    // fALTA EL pROCESO DE CAJA321
    //InsertCaja;

    Screen.Cursor:=crDefault;
    //Close;
  end;
end;

procedure TFRegGlobalCob1.InsertCaja;
Const
  xCaja302 : String = 'CIAID, TDIARID, ECANOMM, ECNOCOMP, CLAUXID, PROV, PROVRUC, ECFCOMP, '+
                      'ECFEMICH, ECFPAGOP, FPAGOID, DOCID, ECNODOC, TMONID, ECTCAMB, ECMTOORI, '+
                      'ECMTOLOC, ECMTOEXT, BANCOID, CCBCOID, CPTOID, CUENTAID, ECGLOSA, ECLOTE, '+
                      'ECELABO, ECESTADO, ECCONTA, ECUSER, ECFREG, ECHREG, ECANO, ECMM, ECDD, '+
                      'ECSS, ECSEM, ECTRI, ECAASS, ECAASEM, ECAATRI, EC_IE, CAJARETIGV, '+
                      'AUXID, CCBCOVOUCH, ECNOCHQ, ECGIRA, ECFCOBCH, ECCHQEMI, EC_PROCE';
var
  xNumComp1, xNumComp2, xCampo, xSql : String;
  xCtaCtbl, xCpto, xTDiar, xClaAux : String;
begin
  xTDiar  :='28';
  xClaAux :='R';
  xCpto   :='HH';
  xCtaCtbl:='1234567890';

  DM1.cdsReporte.First;
  while not dm1.cdsReporte.eof do
  begin
    //** JALA EL TIPO DE DOCUMENTO PARA TOMAR EL NUMERO DE COMPROBANTE
    xSql := 'SELECT DOCID FROM TGE110 WHERE DOCMOD LIKE '+quotedstr('%'+dm1.wModulo+'%');
    dm1.cdsQry.Close;
    dm1.cdsQry.DataRequest(xSql);
    dm1.cdsQry.Open;

    xDocid := dm1.cdsQry.fieldByName('DOCID').AsString;

    xSql := 'SELECT NVL(MAX(CNTCOMPROB),0) + 1 TOTAL FROM CNT301 '+
            'WHERE CIAID='+quotedstr(DM1.cdsRegCob.Fieldbyname('CIAID').AsString)+' '+
            'AND TDIARID='+quotedstr(xTDiar)+' '+
            'AND CNTANOMM='+quotedstr(DM1.cdsRegCob.fieldbyname('RCOBANO').AsString+
                                      DM1.cdsRegCob.fieldbyname('RCOBMES').AsString);
    dm1.cdsQry.Close;
    dm1.cdsQry.DataRequest(xSql);
    dm1.cdsQry.Open;
    xNumComp1 := dm1.cdsQry.fieldByName('TOTAL').AsString;

    xSql := 'SELECT NVL(MAX(ECNOCOMP),0) + 1 TOTAL FROM CAJA321 '+
            'WHERE CIAID='+quotedstr(DM1.cdsRegCob.fieldbyname('CIAID').AsString)+' '+
            'AND TDIARID='+quotedstr(xTDiar)+' '+
            'AND ECANOMM='+quotedstr(DM1.cdsRegCob.fieldbyname('RCOBANO').AsString+
                                     DM1.cdsRegCob.fieldbyname('RCOBMES').AsString);
    dm1.cdsQry.Close;
    dm1.cdsQry.DataRequest(xSql);
    dm1.cdsQry.Open;
    xNumComp2 := dm1.cdsQry.fieldByName('TOTAL').AsString;

    if xNumComp1 < xNumComp2 then
      xMaxNumComp := Dm1.StrZero(xNumComp2,10)
    else
      xMaxNumComp := Dm1.StrZero(xNumComp1,10);

    //** ACTUALIZO CAJA321
    //** CIAID
    xCampo := quotedstr(DM1.cdsRegCob.fieldbyname('CIAID').AsString)+', ';
    xCiaid := DM1.cdsRegCob.fieldbyname('CIAID').AsString;
    //** TDIARID
    xCampo := xCampo + quotedstr(xTDiar)+', ';
    xTDiarid := xTDiar;
    //** ECANOMM
    xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBANO').AsString+
                                 DM1.cdsRegCob.fieldbyname('RCOBMES').AsString)+', ';
    xEcanomm := DM1.cdsRegCob.fieldbyname('RCOBANO').AsString+
                                 DM1.cdsRegCob.fieldbyname('RCOBMES').AsString;
    //** ECNOCOMP
    xCampo := xCampo + quotedstr(xMaxNumComp)+',';
    //**CLAUXID
    xCampo := xCampo + quotedstr(xClaAux)+', ';
    xClauxid := xClaAux;
    //** PROV
    xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('REPRID').AsString)+', ';
    xAuxid := DM1.cdsRegCob.fieldbyname('REPRID').AsString;
    //** PROVRUC
    xCampo := xCampo + quotedstr(DM1.cdsRepresentante.fieldbyname('REPRRUC').AsString)+', ';
    //** ECFCOMP
    xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBFOPE').AsString)+', ';
    xFechaCom := DM1.cdsRegCob.fieldbyname('RCOBFOPE').AsDateTime;
    //** ECFEMICH
    xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBFOPE').AsString)+', ';
    //** ECFPAGOP
    xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBFOPE').AsString)+', ';
    //** FPAGOID
    xCampo := xCampo + quotedstr(DM1.cdsDetRegCob.fieldbyname('FORPAGOID').AsString)+', ';
    xFPagoid := DM1.cdsDetRegCob.fieldbyname('FORPAGOID').AsString;
    //** DOCID
    xCampo := xCampo + quotedstr(xDocid)+', ';
    //** ECNODOC
    xCampo := xCampo +  quotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString)+', ';
    xNodoc := DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString;
    //** TMONID
    xCampo := xCampo +  quotedStr(DM1.cdsDetRegCob.FieldByName('TMONID').AsString)+', ';
    xTmonid := DM1.cdsDetRegCob.FieldByName('TMONID').AsString;
    //** ECTCAMB
    xCampo := xCampo +  DM1.cdsDetRegCob.FieldByName('TCAMBIO').AsString+', ';
    xECTCAMB := DM1.cdsDetRegCob.FieldByName('TCAMBIO').AsFloat;
    //** ECMTOORI
    //    xCampo := xCampo +  DM1.cdsRegCob.FieldByName('MONTOTOT').AsString+', ';
    //    cPgoOri := DM1.cdsRegCob.FieldByName('MONTOTOT').AsFloat;
    xCampo := xCampo +  dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString+', ';
    cPgoOri := dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat;
    //** ECMTOLOC
    //    xCampo := xCampo +  DM1.cdsRegCob.FieldByName('MONTOTOT').AsString+', ';
    //    cPgoLoc := DM1.cdsRegCob.FieldByName('MONTOTOT').AsFloat;
    xCampo := xCampo +  dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString+', ';
    cPgoLoc := dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat;
    //** ECMTOEXT
    //    xCampo := xCampo + FloattoStr(FRound(DM1.cdsRegCob.FieldByName('MONTOTOT').AsFloat/
    //                                         DM1.cdsRegCob.FieldByName('TCAMBIO').AsFloat ,15,4))+',';
    //    cPgoExt := DM1.cdsRegCob.FieldByName('MONTOTOT').AsFloat/
    //               DM1.cdsRegCob.FieldByName('TCAMBIO').AsFloat;
    xCampo := xCampo + FloattoStr(dm1.FRound(dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat/
                                         DM1.cdsDetRegCob.FieldByName('TCAMBIO').AsFloat ,15,4))+', ';
    cPgoExt := dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat/
               DM1.cdsDetRegCob.FieldByName('TCAMBIO').AsFloat;
    //** BANCOID
    xCampo := xCampo +  quotedStr(DM1.cdsRegCob.FieldByName('BANCOID').AsString)+', ';
    xBancoid := DM1.cdsRegCob.FieldByName('BANCOID').AsString;
    //** CCBCOID
    xCampo := xCampo +  quotedStr(DM1.cdsDetRegCob.FieldByName('CCBCOID').AsString)+', ';
    xCcBcoid := DM1.cdsDetRegCob.FieldByName('CCBCOID').AsString;
    //** CPTOID
    xCampo := xCampo +  quotedStr(xCpto)+', ';
    xCptoid := xCpto;
    //** CUENTAID
    xCampo := xCampo +  quotedStr(xCtaCtbl)+', ';
    xCuentaid := xCtaCtbl;
    //** ECGLOSA
    xCampo := xCampo +  quotedStr(DM1.cdsDetRegCob.FieldByName('CPAGOCPTO').AsString)+', ';
    //** ECLOTE
    xCampo := xCampo +  quotedStr('000')+', ';
    //** ECELABO
    xCampo := xCampo +  quotedStr('Registro Global')+', ';
    //** ECESTADO
    xCampo := xCampo +  quotedStr('C')+', ';
    //** ECCONTA
    xCampo := xCampo +  quotedStr('N')+', ';
    //** ECUSER
    xCampo := xCampo +  quotedStr(Dm1.wUsuario)+', ';
    //** ECFREG
    xCampo := xCampo +  wRepFecServi+', ';
    //** ECHREG
    xCampo := xCampo +  wRepTimeServi+', ';

    xSql := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(DM1.cdsRegCob.fieldbyname('FREG').AsString);
    dm1.cdsQry.close;
    dm1.cdsQry.datarequest(xSql);
    dm1.cdsQry.open;
    //** ECANO
    xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString)+', ';
    //** ECMM
    xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString)+', ';
    //** ECDD
    xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString)+', ';
    //** ECSS
    xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString)+', ';
    //** ECSEM
    xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString)+', ';
    //** ECTRI
    xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString)+', ';
    //** ECAASS
    xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString)+', ';
    //** ECAASEM
    xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString)+', ';
    //** ECAATRI
    xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString)+', ';
    //** EC_IE
    xCampo := xCampo +  quotedStr('E')+', ';
    //** CAJARETIGV
    xCampo := xCampo +  quotedStr('N')+', ';
    //** AUXID
    xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('REPRID').AsString)+', ';
    //** CCBCOVOUCH
    xCampo := xCampo + quotedstr(xTDiar)+', ';
    //** ECNOCHQ
    xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBID').AsString)+', ';
    //** ECGIRA
    xCampo := xCampo + quotedstr(Dm1.DisplayDescrip('prvSQL','TGE105','BANCONOM',
                                 'BANCOID ='+quotedstr(DM1.cdsRegCob.fieldbyname('BANCOID').AsString),'BANCONOM'))+',';
    //** ECFCOBCH
    xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('FREG').AsString)+', ';
    //** ECCHQEMI
    xCampo := xCampo + quotedstr('S')+', '; //** S = me indica que fue emitido
    //** EC_PROCE
    xCampo := xCampo +  quotedStr('W');

    xSql := 'INSERT INTO CAJA321 ('+xCaja302+') VALUES ('+xCampo+')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     //** Actualiza Caja322
//////////////////////    ActuCaja301;

    {LUEGO HABILITARLO, PARECE QUE SE VA A PASAR A UN PROCESO EN LOTE
    //** Actualiza Saldo TGE401
    ActualizaSaldosTGE401(cPgoOri,cPgoLoc,cPgoExt, '-');

    //** Actualiza Saldo CAJA310
    SaldosCaja310;
    }

    //** Actuliza la provision de los créditos por el rango (CRE313) = CNT301
    // ActuCre313;
    dm1.cdsReporte.next;
  end;
end;

procedure TFRegGlobalCob1.ActuCaja301;
Const
  xCaja301 : String = 'CIAID, TDIARID, ECANOMM, ECNOCOMP, DOCID2, DOCMOD, CPTOID, TDIARID2, '+
                      'CUENTAID, CLAUXID, PROV, CCOSID, TMONID, DEMTOORI, CPNODOC, DEFCOMP, CPFEMIS, '+
                      'CPFVCMTO, CPANOMM, DETCPAG, DEDH, DETCDOC, CPSERIE, DEMTOLOC, DEMTOEXT, '+
                      'CPNOREG, DEUSER, DEFREG, DEHREG, DEANO, DEMM, DEDD, DESS, DESEM, '+
                      'DETRI, DEAASS, DEAASEM, DEAATRI';
var
  xCampo,aux,xWhere : String;
  xCpnoreg : Integer;
begin
  xCpnoreg := 0;
  //While not DM1.cdsReporte.eof do
  //begin
  xCpnoreg := xCpnoreg + 1;
  //** CIAID
  xCampo := quotedstr(xCiaid)+',';
  //**TDIARID
  xCampo := xCampo + quotedstr(xTdiarid)+', ';
  //**ECANOMM
  xCampo := xCampo + quotedstr(xEcanomm)+', ';
  //** ECNOCOMP
  xCampo := xCampo + quotedstr(xMaxNumComp)+', ';
  //** DOCID2
  xCampo := xCampo + quotedstr(xDocid)+', ';
  //** DOCMOD
  xCampo := xCampo + quotedstr(dm1.wModulo)+', ';
  //** CPTOID
  xCampo := xCampo + quotedstr(xCptoid)+', ';
  //** TDIARID2
  xCampo := xCampo + quotedstr(xTdiarid)+', ';
  //** CUENTAID
  xCampo := xCampo + quotedstr(xCuentaid)+', ';

  xWhere:='CIAID='+quotedstr(xCiaid)+' AND CUENTAID='+quotedstr(xCuentaid);
  DM1.DisplayDescrip('prvSQL','TGE202','CUENTAID, CTA_CCOS, CTA_AUX',xWhere,'CuentaId');

  if DM1.cdsQry.fieldbyName('CTA_AUX').asString = 'S' then
  begin
    //** CLAUXID
    xCampo := xCampo + quotedstr(xClauxid)+', ';
    //** PROV
    xCampo := xCampo + quotedstr(xAuxid)+', ';
  end
  else
  begin
    //** CLAUXID
    xCampo := xCampo + quotedstr('--')+', ';
    //** PROV
    xCampo := xCampo + quotedstr('--')+', ';
  end;

  if DM1.cdsQry.fieldbyName('CTA_CCOS').asString = 'S' then
  begin
    //** CCOSID
    DM1.cdsUSES .SetKey;
    DM1.cdsUSES.FieldByName('USEID').AsString := DM1.cdsReporte.FieldByName('USEID').AsString;
    If DM1.cdsUSES.gotokey then
      xCampo := xCampo + quotedstr(DM1.cdsUSES.FieldByName('CCOSID').AsString)+', '
    else
      //** CCOSID
      xCampo := xCampo + quotedstr('--')+', ';
  end
  else
    xCampo := xCampo + quotedstr('--')+', ';

  //**TMONID
  xCampo := xCampo + quotedstr(xTmonid)+', ';
  //**DEMTOORI
  xCampo := xCampo + dm1.cdsReporte.FieldByName('CREMTOOTOR').AsString +', ';
  //** CPNODOC
  xCampo := xCampo + quotedstr(xNodoc)+', ';
  //** DEFCOMP
  xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+', ';
  //** CPFEMIS
  xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+', ';
  //** CPFVCMTO
  xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+', ';
  //** CPANOMM
  xCampo := xCampo + quotedstr(xEcanomm)+', ';
  //** DETCPAG
  xCampo := xCampo + FloatToStr(xECTCAMB)+', ';
  //** DEDH
  xCampo := xCampo + quotedstr('D')+', ';
  //** DETCDOC
  xCampo := xCampo + FloatToStr(xECTCAMB)+', ';
  //**CPSERIE
  xCampo := xCampo + quotedstr('000')+', ';
  xWhere:='TMONID='+quotedstr(xTmonid);
  aux:=DM1.DisplayDescrip('prvSQL','TGE103','TMONDES',xWhere,'TMONDES');

  if (length(aux)>0) and (dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat > 0 ) then //(DM1.cdsRegCxP.FieldByName('DEMTOORI').AsFloat>0) then
  begin
    if xTmonid = DM1.wTMonLoc then
    begin
      //** DEMTOLOC
      xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat)+', ';
      //**DEMTOEXT
      xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat/xECTCAMB)+', ';
    end
    else
    begin
      //** DEMTOLOC
      xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat*xECTCAMB)+', ';
      //**DEMTOEXT
      xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat)+', ';
    end;
  end
  else
  begin
    //**DEMTOEXT
    xCampo := xCampo + '0.00, ';
    //**DEMTOEXT
    xCampo := xCampo + '0.00, ';
  end;

  //** CPNOREG
  xCampo := xCampo + quotedstr(Dm1.StrZero(IntToStr(xCpnoreg),10))+', ';
  //**DEUSER
  xCampo := xCampo + quotedstr(dm1.wUsuario)+', ';
  //*DEFREG
  xCampo := xCampo + wRepFecServi +', ';
  //**DEHREG
  xCampo := xCampo + wRepTimeServi +', ';

  xSql := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(DM1.cdsRegCob.fieldbyname('FREG').AsString);
  dm1.cdsQry.close;
  dm1.cdsQry.datarequest(xSql);
  dm1.cdsQry.open;
  //**DEANO
  xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString)+', ';
  //**DEMM
  xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString)+', ';
  //**DEDD
  xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString)+', ';
  //**DESS
  xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString)+', ';
  //**DESEM
  xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString)+', ';
  //**DETRI
  xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString)+', ';
  //**DEAASS
  xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString)+', ';
  //**DEAASEM
  xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString)+', ';
  //**DEAATRI
  xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString);
  xSql := 'INSERT INTO CAJA322 ('+xCaja301+') VALUES ('+xCampo+')';

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
end;

procedure TFRegGlobalCob1.dbgDetRegGlobalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   If (Key = VK_DELETE) and (ssCtrl in Shift)  Then
    begin
     If DM1.cdsDetRegCob.RecordCount = 0 Then
      begin
       ShowMessage(' No Existen Registros a Eliminar ');
       Exit;
      end;

     if DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
      begin
       Information(Caption, 'Sólo pueden ser Eliminados los Documentos que se Encuentren en Estado Inicial');
       Exit;
      end;

     if Question(Caption, 'Está Seguro de Eliminar?'+#13+#13+'Desea Continuar?') Then
      begin
       xBorrar := '1';
       DM1.cdsDetRegCob.Delete;
       //DM1.AplicaDatos(DM1.cdsDetRegCob, 'AUTDISK');
       DM1.ControlTran;
       xBorrar := '0';

       ShowMessage('Registro Eliminado');
      end;
    end;
end;

procedure TFRegGlobalCob1.seMesApoExit(Sender: TObject);
begin
   DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString := DM1.StrZero(DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString, 2);
end;

procedure TFRegGlobalCob1.dblcMonedaNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If not Accept Then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFRegGlobalCob1.dblcBancoNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If not Accept Then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFRegGlobalCob1.dblcUProcesoNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If not Accept Then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFRegGlobalCob1.dblcFRecaudacionNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If not Accept Then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;


//Verifica si se grabo bien EL RCOBID
function TFRegGlobalCob1.VerfGrabInicial(xreg: string): string;
VAR XSQL:String;
begin
  xSql:='SELECT RCOBID FROM COB301 WHERE RCOBID='''+xreg+''' ';
  DM1.cdsDLabo.Close;
  DM1.cdsDLabo.DataRequest(xSQL);
  DM1.cdsDLabo.Open;
  If DM1.cdsDLabo.RecordCount > 0 then Result:=DM1.cdsDLabo.FieldByName('RCOBID').AsString else Result:='0000000';
  dm1.cdsDLabo.Close;
  dm1.cdsDLabo.IndexFieldNames:='';
end;


procedure TFRegGlobalCob1.GrabaCab(xInsMod: string);
var xdbemto:currency;
begin

 If xInsMod='A' Then
   Begin
     xSQL:='Insert Into COB301(RCOBID,RCOBANO,RCOBMES,REPRID,REPRAPENOM,RCOBESTADO,RCOBFRECEP,BANCOID,AGENBCOID,CCBCOID,'+
           'RCOBFOPE,RCOBNOPE,TMONID,RCOBMTO,USUARIO,FREG,HREG) VALUES ('+
            QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)+','+
            QuotedStr(sbAno.Text)+','+
            QuotedStr(SBMES.Text)+','+
            QuotedStr(dblcdRepresentante.Text)+','+
            QuotedStr(Trim(edtRepresentante.Text))+','+
            QuotedStr('INICIAL')+','+
            QuotedStr(dbdtpFRecepcion.Text)+','+
            QuotedStr(dblcBanco.Text)+','+
            QuotedStr(dblcdAgenbco.Text)+','+
            QuotedStr(dblcCuenta.Text)+','+
            QuotedStr(dbdtpFOpe.Text)+','+
            QuotedStr(dbeNumOpe.Text)+','+
            QuotedStr(dblcMoneda.Text)+','+
            DM1.cdsRegCob.FieldByName('RCOBMTO').AsString+','+
            QuotedStr(DM1.wUsuario)+',TO_DATE(SYSDATE),SYSDATE)';
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
 If xInsMod='M' Then
   Begin
     xSQL:='UPDATE COB301 SET '+
           'RCOBANO ='+QuotedStr(SBANO.Text)+','+
           'RCOBMES ='+QuotedStr(SBMES.Text)+','+
           'REPRID  ='+QuotedStr(dblcdRepresentante.Text)+','+
           'REPRAPENOM ='+QuotedStr(Trim(edtRepresentante.Text))+','+
           'RCOBFRECEP ='+QuotedStr(dbdtpFRecepcion.Text)+','+
           'BANCOID ='+QuotedStr(dblcBanco.Text)+','+
           'AGENBCOID ='+QuotedStr(dblcdAgenbco.Text)+','+
           'CCBCOID ='+QuotedStr(dblcCuenta.Text)+','+
           'RCOBFOPE ='+QuotedStr(dbdtpFOpe.Text)+','+
           'RCOBNOPE ='+QuotedStr(dbeNumOpe.Text)+','+
           'TMONID ='+QuotedStr(dblcMoneda.Text)+','+
           'RCOBMTO ='+DM1.cdsRegCob.FieldByName('RCOBMTO').AsString+','+
           'USUARIO ='+QuotedStr(DM1.wUsuario)+','+
           'FREG = TO_DATE(SYSDATE),'+
           'HREG = SYSDATE '+
           'WHERE RCOBID='''+DM1.cdsRegCob.FieldByName('RCOBID').AsString+''' AND '+
                 'RCOBANO='''+DM1.cdsRegCob.FieldByName('RCOBANO').AsString+''' AND '+
                 'RCOBMES='''+DM1.cdsRegCob.FieldByName('RCOBMES').AsString+''' ';
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;

end;

procedure TFRegGlobalCob1.GrabaDet1(xInsMod: string);
begin

 If xInsMod='A' Then
   Begin
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
     xSQL:='Insert Into COB302(RCOBESTADO,REPRID,REPRAPENOM,UPAGOABR,RCOBID,DETRCOBID,UPROID,UPAGOID,USEID,TIPPLA,FRCPREPRE,CPAGOID,CPAGOFECHA,RCOBANO,RCOBMES,CPAGOTMON,'+
//Final HPC_201708_COB
            'RCOBANOAPO,RCOBMESAPO,CPAGOMTO,CPAGODEDUC,NRODOCDED,CPAGOLIQ,CPAGOCPTO,FORPAGOID,FPAGOID,'+
            'BANCOID,DOCID,DOCFECHA,CCBCO,TMONID,DOCMTO,ASOTIPID,RCOBNOPE,RCOBFOPE,USUARIO,FREG,HREG) VALUES ('+
            QuotedStr('INICIAL')+','+
            QuotedStr(dblcdRepresentante.Text)+','+
            QuotedStr(Trim(edtRepresentante.Text))+','+
            QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOABR').AsString)+','+
            QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBID').AsString)+','+
            QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString)+','+
            QuotedStr(dblcuproceso.Text)+','+
            QuotedStr(dblcdUPago.Text)+','+
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
            QuotedStr(dblcdUgel.Text) + ',' +
            QuotedStr(Trim(tcbTipoPla.Text)) + ',' +
//Final HPC_201708_COB
            QuotedStr(dbdtpFecDocRcp.Text)+','+
            QuotedStr(dbeCPagoNum.Text)+','+
            QuotedStr(dbdtpCPagoFecha.Text)+','+
            QuotedStr(dbeAno.Text)+','+
            QuotedStr(dbeMes.Text)+','+
            QuotedStr(dblcdMonedaC.Text)+','+
            QuotedStr(seAnoApo.Text)+','+
            QuotedStr(seMesApo.Text)+','+
            DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString+','+
            DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsString+','+
            //FormatCurr('#########.#0',StrToCurr(dbeCPagoTotal.Text))+','+   //CPAGOMTO
            //FormatCurr('#########.#0',StrToCurr(dbeDeduccion.Text))+','+    //CPAGODEDUC
            QuotedStr(dbeNroDocDeduccion.Text)+','+
            DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsString+','+
           //FormatCurr('#########.#0',StrToCurr(dbeMtoLiq.Text))+','+        //CPAGOLIQ
            QuotedStr(dbeCPagoConcepto.Text)+','+
            QuotedStr(dblcFRecaudacion.Text)+','+
            QuotedStr(dblcFPago.Text)+','+
            QuotedStr(dblcChqBanco.Text)+','+
            QuotedStr(dbeChqNum.Text)+','+
            QuotedStr(dbdtpChqFecha.Text)+','+
            QuotedStr(dbeChqCuenta.Text)+','+
            QuotedStr(dblcChqMoneda.Text)+','+
           //FormatCurr('#########.#0',StrToCurr(dbeChqMonto.Text))+','+  //DOCMTO
            DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString+','+
            QuotedStr(lblcAsotipid.Text)+','+
            QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBNOPE').AsString )+','+
            QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBFOPE').AsString)+','+
            QuotedStr(DM1.wUsuario)+',TO_DATE(SYSDATE),SYSDATE)';
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
 If xInsMod='M' Then
   Begin
     xSQL:='UPDATE COB302 SET '+
           'REPRID   ='+QuotedStr(dblcdRepresentante.Text)+','+
           'REPRAPENOM ='+QuotedStr(Trim(edtRepresentante.Text))+','+
           'UPAGOABR  ='+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOABR').AsString)+','+
           'UPROID    ='+QuotedStr(dblcuproceso.Text)+','+
           'UPAGOID   ='+QuotedStr(dblcdUPago.Text)+','+
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
           'USEID     =' + QuotedStr(dblcdUgel.Text) + ',' +
           'TIPPLA    =' + QuotedStr(Trim(tcbTipoPla.Text)) + ',' +
//Final HPC_201708_COB
           'FRCPREPRE ='+QuotedStr(dbdtpFecDocRcp.Text)+','+
           'CPAGOID   ='+QuotedStr(dbeCPagoNum.Text)+','+
           'CPAGOFECHA='+QuotedStr(dbdtpCPagoFecha.Text)+','+
           'RCOBANO   ='+QuotedStr(dbeAno.Text)+','+
           'RCOBMES   ='+QuotedStr(dbeMes.Text)+','+
           'CPAGOTMON ='+QuotedStr(dblcdMonedaC.Text)+','+
           'RCOBANOAPO='+QuotedStr(seAnoApo.Text)+','+
           'RCOBMESAPO='+QuotedStr(seMesApo.Text)+','+
          // 'CPAGOMTO  ='+FormatCurr('#########.#0',StrToCurr(dbeCPagoTotal.Text))+','+
          // 'CPAGODEDUC='+FormatCurr('#########.#0',StrToCurr(dbeDeduccion.Text))+','+
           'CPAGOMTO  ='+DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString+','+
           'CPAGODEDUC='+DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsString+','+
           'NRODOCDED ='+QuotedStr(dbeNroDocDeduccion.Text)+','+
          // 'CPAGOLIQ  ='+FormatCurr('#########.#0',StrToCurr(dbeMtoLiq.Text))+','+
           'CPAGOLIQ  ='+DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsString+','+
           'CPAGOCPTO ='+QuotedStr(dbeCPagoConcepto.Text)+','+
           'FORPAGOID ='+QuotedStr(dblcFRecaudacion.Text)+','+
           'FPAGOID   ='+QuotedStr(dblcFPago.Text)+','+
           'BANCOID   ='+QuotedStr(dblcChqBanco.Text)+','+
           'DOCID     ='+QuotedStr(dbeChqNum.Text)+','+
           'DOCFECHA  ='+QuotedStr(dbdtpChqFecha.Text)+','+
           'CCBCO     ='+QuotedStr(dbeChqCuenta.Text)+','+
           'TMONID    ='+QuotedStr(dblcChqMoneda.Text)+','+
          // 'DOCMTO    ='+FormatCurr('#########.#0',StrToCurr(dbeChqMonto.Text))+','+
           'DOCMTO    ='+DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString+','+
           'ASOTIPID  ='+QuotedStr(lblcAsotipid.Text)+','+
           'USUARIO   ='+QuotedStr(DM1.wUsuario)+','+
           'FREG      = TO_DATE(SYSDATE),'+
           'HREG      = SYSDATE '+
           'WHERE RCOBID='''+DM1.cdsDetRegCob.FieldByName('RCOBID').AsString+''' AND '+
                 'DETRCOBID='''+DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString+''' AND '+
                 'RCOBANO='''+DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString+''' AND '+
                 'RCOBMES='''+DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString+''' ';
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
end;

//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
procedure TFRegGlobalCob1.dblcdUgelExit(Sender: TObject);
begin
If Dm1.cdsUSES.Locate('UPROID;UPAGOID;USEID',VarArrayof([dblcUProceso.Text,dblcdUPago.Text,dblcdUgel.Text]),[]) Then
     dbeUseid.Text := Dm1.cdsUSES.FieldByName('USENOM').AsString
Else dbeUseid.Text := '';
end;
//Final HPC_201708_COB

//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
procedure TFRegGlobalCob1.lblcAsotipidExit(Sender: TObject);
begin
 tcbTipoPla.Clear;
 If  lblcAsotipid.Text='DO' Then
 Begin
   tcbTipoPla.AddItem('Créditos',NIL);
   tcbTipoPla.AddItem('Aportes',NIL);
 End;

 If  lblcAsotipid.Text='CE' Then
 Begin
   tcbTipoPla.AddItem('Créditos',NIL);
 End;
end;
//Final HPC_201708_COB

//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
procedure TFRegGlobalCob1.lblcAsotipidChange(Sender: TObject);
begin
 tcbTipoPla.Clear;
 If  lblcAsotipid.Text='DO' Then
 Begin
   tcbTipoPla.AddItem('Créditos',NIL);
   tcbTipoPla.AddItem('Aportes',NIL);
 End;

 If  lblcAsotipid.Text='CE' Then
 Begin
   tcbTipoPla.AddItem('Créditos',NIL);
 End;
end;
//Final HPC_201708_COB

end.
