Unit COB301;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB301
// Formulario           : FRegGlobalCob
// Fecha de Creación    : 08/07/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Registro Global de Cobranza
// Actualizaciones      :
// HPC_201308_COB       : 08/07/2013 - Agregar en el Reporte el Tipo de Asociado
// SPP_201310_COB       : Se realiza el pase a producción a partir del HPC_201308_COB
// HPC_201310_COB       : 26/09/2013 - Registro de Cheques anulados                                                               
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201609_COB       : 04/04/2016 se corrige el filtro para obtener el nombre de la Unidad de Pago 
// HPC_201708_COB       : Se adiciona campos al formulario del detalle del registro global de cobranzas
// HPC_201819_COB       : Se Inicializa los valores en cero al momento de grabar para el nuevo aplicativo 
Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   fcButton, fcImgBtn, fcShapeBtn, Mask, wwdbedit, StdCtrls, wwdblook,
   ExtCtrls, wwdbdatetimepicker, Wwdbspin, ComCtrls, wwriched, Buttons,
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
   Wwdbigrd, Grids, Wwdbgrid, Wwdbdlg, db,Variants;
//Final HPC_201708_COB

Type
   TFRegGlobalCob = Class(TForm)
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
      Z2bbtnEliminar: TfcShapeBtn;
// Inicio: SPP_201312_COB    : 26/09/2013 - Registro de Cheques anulados
    bbtnAnulaCHQ: TfcShapeBtn;
    Label1: TLabel;
    Shape1: TShape;
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
    dblcdUgel: TwwDBLookupComboDlg;
    dbeUseid: TwwDBEdit;
    tcbTipoPla: TComboBox;
//Final HPC_201708_COB
// Fin: SPP_201312_COB       : 26/09/2013 - Registro de Cheques anulados
      Procedure bbtnOKClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure bbtnClearClick(Sender: TObject);
      Procedure bbtnSigueClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcBancoExit(Sender: TObject);
      Procedure dblcCuentaExit(Sender: TObject);
      Procedure dblcMonedaExit(Sender: TObject);
      Procedure dblcChqMonedaExit(Sender: TObject);
      Procedure dblcFPagoExit(Sender: TObject);
      Procedure Z2bbtnSalirClick(Sender: TObject);
      Procedure dblcdRepresentanteExit(Sender: TObject);
      Procedure bbtnNuevoClick(Sender: TObject);
      Procedure bbtnAceptarClick(Sender: TObject);
      Procedure dbgDetRegGlobalDblClick(Sender: TObject);
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure dblcChqBancoExit(Sender: TObject);
      Procedure dbdtpChqFechaExit(Sender: TObject);
      Procedure bbtnCancelarClick(Sender: TObject);
      Procedure dblcdUPagoExit(Sender: TObject);
      Procedure dblcFRecaudacionExit(Sender: TObject);
      Procedure dbdtpCPagoFechaExit(Sender: TObject);
      Procedure dblcdMonedaCExit(Sender: TObject);
      Procedure dbeDeduccionExit(Sender: TObject);
      Procedure dbeCPagoTotalExit(Sender: TObject);
      Procedure Z2bbtnModificaClick(Sender: TObject);
      Procedure sbMesExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure Z2bbtnAceptaraClick(Sender: TObject);
      Procedure Z2bbtnCierraClick(Sender: TObject);
      Procedure dblcUProcesoExit(Sender: TObject);
      Procedure dblcdRepresentanteEnter(Sender: TObject);
      Procedure dblcdAgenbcoExit(Sender: TObject);
      Procedure Z2bbtnConcluirClick(Sender: TObject);
      Procedure dbgDetRegGlobalKeyDown(Sender: TObject; Var Key: Word; Shift: TShiftState);
      Procedure seMesApoExit(Sender: TObject);
      Procedure dblcMonedaNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure dblcBancoNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure dblcUProcesoNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure dblcFRecaudacionNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Function VerfGrabInicial(xreg: String): String;
      Procedure GrabaCab(xInsMod: String);
      Procedure GrabaDet1(xInsMod: String);
      Procedure Z2bbtnEliminarClick(Sender: TObject);
// Inicio: SPP_201312_COB       : 26/09/2013 - Registro de Cheques anulados
      procedure bbtnAnulaCHQClick(Sender: TObject);
      procedure dbgDetRegGlobalCalcCellColors(Sender: TObject; Field: TField;
        State: TGridDrawState; Highlight: Boolean; AFont: TFont;
        ABrush: TBrush);
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
    procedure dblcdUgelExit(Sender: TObject);
    procedure lblcAsotipidExit(Sender: TObject);
    procedure lblcAsotipidChange(Sender: TObject);
//Final HPC_201708_COB
// Fin: SPP_201312_COB          : 26/09/2013 - Registro de Cheques anulados
   Private
    { Private declarations }
      xFechaCom: TDate;
      xDocid, xEcanomm, xTDiarid, xCcBcoid, xTmonid, xBancoid, xFpagoid, xAuxid: String;
      xMaxNumComp, xNodoc, xCuentaid, xCptoid, xClauxid, xCiaid {,xGlosa}: String;
      xECTCAMB, cPgoOri, cPgoLoc, cPgoExt: Double;

      Function ValidaCabeceraRegGlo: Boolean;
      Function ValidaDetalleRegGlo: Boolean;
      Procedure ActuCaja301;
   Public
    { Public declarations }
      Procedure InsertCaja;
   End;

Var
   FRegGlobalCob: TFRegGlobalCob;
   xBanco, wModo1, xSQL, xWhere, sWhere: String;
   xCrea: Boolean;
   Y, M, D: Word;
   xReg: String;

Implementation

// Inicio: SPP_201312_COB       : 26/09/2013 - Registro de Cheques anulados
Uses COBDM1, MsgDlgs, COB001, COB320, COB327, Math;
// Fin: SPP_201312_COB          : 26/09/2013 - Registro de Cheques anulados

{$R *.DFM}

Procedure TFRegGlobalCob.bbtnOKClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFRegGlobalCob.FormActivate(Sender: TObject);
Var
   xSQL: String;
Begin
   DecodeDate(Now, Y, M, D);
   xCrea := True;
   pnlInicio.Enabled := True;

   bbtnNuevo.Enabled := False;
   dbgDetRegGlobal.Enabled := False;

   //Tipo de Asociado
   //Inicio: HPP_200918_COB por JCARBONEL
   // SELECT *
   xSQL := 'SELECT ASOTIPID, ASOTIPABR, ASOTIPDES, USUARIO, FREG, HREG, ASOTIPCRE, ASOTIPO, FLG_NUE '
         + '  FROM APO107 '
         + ' WHERE ASOTIPCRE = ''S'' ';
   //Fin: HPP_200918_COB por JCARBONEL
   DM1.cdsTipCreA.Filter := '';
   DM1.cdsTipCreA.Filtered := False;
   DM1.cdsTipCreA.IndexFieldNames := '';
   DM1.cdsTipCreA.Close;
   DM1.cdsTipCreA.DataRequest(xSQL);
   DM1.cdsTipCreA.Open;

   If DM1.wModo = 'A' Then
   Begin
      xReg := '';
      lblReg.Caption := 'Registro Global de Cobranza - ' + xReg;
      //Inicio: HPP_200918_COB por JCARBONEL
      // SELECT *
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
      xSQL := 'SELECT RCOBID, BANCOID, CCBCO, DOCID, DOCFECHA, TMONID, DOCMTO, CPAGOID, CPAGOFECHA, '
            + '       USUARIO, FREG, HREG, FPAGOID, CPAGOCPTO, CPAGOMTO, CPAGOTMON, CPAGODEDUC, FORPAGOID, '
            + '       UPAGOID,USEID,TIPPLA, RCOBNOPE, RCOBFOPE, CPAGOLIQ, NRODOCDED, UPROID, RCOBMES, RCOBANO, DETRCOBID, '
            + '       RCOBESTADO, REPRID, REPRAPENOM, UPAGOABR, RCOBANOAPO, RCOBMESAPO, TCAMBIO, NUMOFIDIRE, '
            + '       FECOFIDIRE, DIFOFIDIRE, FRCPREPRE, ASOTIPID '
            + '  FROM COB302 '
            + ' WHERE RCOBID =' + QuotedStr('xx');
      DM1.FiltraCDS(DM1.cdsDetRegCob, xSQL);
      //Fin: HPP_200918_COB
//Final HPC_201708_COB
      DM1.cdsRegCob.Insert;
      bbtnClearClick(Sender);

      DM1.cdsRegCob.FieldByName('TMONID').AsString := 'N';
      DM1.cdsRegCob.FieldByName('RCOBANO').AsString := FloatToStr(Y);
      DM1.cdsRegCob.FieldByName('RCOBMES').AsString := DM1.StrZero(FloatToStr(M), 2);
      DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString := 'INICIAL';
      DM1.cdsRegCob.FieldByName('RCOBFRECEP').AsDateTime := Date;
      dbeMoneda.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', 'TMONID = ''N''', 'TMONDES');
      Z2bbtnModifica.Visible := True;
      pnlTop.Enabled := True;
      sbAno.SetFocus;
   End
   Else
      If DM1.wModo = 'M' Then
      Begin

         pnlTop.Enabled := False;
         xReg := DM1.cdsRegCob.FieldByName('RCOBID').AsString;
         lblReg.Caption := 'Registro Global de Cobranza - ' + xReg;
         //Inicio: HPP_200918_COB por JCARBONEL
         // SELECT *
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
         xSQL := 'SELECT RCOBID, BANCOID, CCBCO, DOCID, DOCFECHA, TMONID, DOCMTO, CPAGOID, CPAGOFECHA, '
               + '       USUARIO, FREG, HREG, FPAGOID, CPAGOCPTO, CPAGOMTO, CPAGOTMON, CPAGODEDUC, FORPAGOID, '
               + '       UPAGOID, USEID,TIPPLA,RCOBNOPE, RCOBFOPE, CPAGOLIQ, NRODOCDED, UPROID, RCOBMES, RCOBANO, DETRCOBID, '
               + '       RCOBESTADO, REPRID, REPRAPENOM, UPAGOABR, RCOBANOAPO, RCOBMESAPO, TCAMBIO, NUMOFIDIRE, '
               + '       FECOFIDIRE, DIFOFIDIRE, FRCPREPRE, ASOTIPID '
               + '  FROM COB302 '
               + ' WHERE RCOBID =' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
         DM1.FiltraCDS(DM1.cdsDetRegCob, xSQL);
         tcbTipoPla.Text:=DM1.cdsDetRegCob.FieldByname('TIPPLA').AsString ;

         dblcUProcesoExit(self);
         dblcdUPagoExit(Self);
         dblcdUgelExit(Self);
//Final HPC_201708_COB
         //Fin: HPP_200918_COB

         Z2bbtnModifica.Visible := False;
         DM1.cdsRegCob.Edit;
         edtCorrelativo.Text := DM1.cdsRegCob.FieldByName('RCOBID').AsString;

         sWhere := 'BANCOID = ' + QuotedStr(dblcBanco.Text);
         dbeBanco.Text := DM1.DisplayDescrip('prvSQL', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM');

         sWhere := 'BANCOID =' + QuotedStr(dblcBanco.Text) + ' AND AGENBCOID = ' + QuotedStr(dblcdAgenBco.Text);
         dbeAgencia.Text := DM1.DisplayDescrip('prvSQL', 'COB102', 'AGENBCODES', sWhere, 'AGENBCODES');

         DM1.FiltraCDS(DM1.cdsCuentas, 'SELECT DISTINCT CCBCOID '
            + 'FROM TGE106 '
            + 'WHERE BANCOID =' + QuotedStr(dblcBanco.Text)
            + ' and ciaid=''02'' and activo=''S'' ');
         If DM1.cdsDetRegCob.RecordCount >= 1 Then
         Begin
            dbgDetRegGlobal.Enabled := True;
         End;

         dblcMonedaExit(Sender);
         dblcdRepresentanteExit(Sender);
         dblcdRepresentante.SetFocus;
      End;

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
   dbgDetRegGlobal.Selected.Add('HREG'#9'20'#9'Fecha~Registro');
   dbgDetRegGlobal.RefreshDisplay;

// Inicio: SPP_201310_COB    : 08/07/2013 - Se agrega para sumar y agregar formato numerico
   dbgDetRegGlobal.ColumnByName('CPAGODEDUC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGODEDUC)', ''), ffNumber, 15, 2);
   dbgDetRegGlobal.ColumnByName('CPAGOMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOMTO)', ''), ffNumber, 15, 2);
   dbgDetRegGlobal.ColumnByName('DOCMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(DOCMTO)', ''), ffNumber, 15, 2);
   dbgDetRegGlobal.ColumnByName('CPAGOLIQ').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOLIQ)', ''), ffNumber, 15, 2);
// Fin: SPP_201310_COB       : 08/07/2013 - Se agrega para sumar y agregar formato numerico

   xCrea := False;
   xBanco := dblcBanco.Text;

  //************************************
  //Formato decimales a campos numericos
  //************************************
   TNumericField(DM1.cdsRegCob.FieldByName('RCOBMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsRegCob.FieldByName('RCOBMTO')).EditFormat := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('DOCMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('DOCMTO')).EditFormat := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).EditFormat := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).EditFormat := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOLIQ')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOLIQ')).EditFormat := '########0.00';

   // VHNDEMA
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'ANULADO' Then
   Begin
      pnlTop.Enabled := False;
      pnlInicio.Enabled := False;
      bbtnNuevo.Enabled := False;
      Z2bbtnCierra.Enabled := False;
   End;

   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'ACEPTADO' Then
   Begin
      pnlTop.Enabled := False;
      pnlInicio.Enabled := False;
      bbtnNuevo.Enabled := False;
      Z2bbtnCierra.Enabled := False;
   End;

   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'INICIAL' Then
   Begin
      pnlInicio.Enabled := True;
      bbtnNuevo.Enabled := True;
      Z2bbtnCierra.Enabled := True;
   End;

   // Cuando se elimina un detalle se cambia a estado inicial la cabecera pero no los detalles
   If DM1.cdsDetRegCob.FieldByName('RCOBESTADO').AsString = 'ACEPTADO' Then
   Begin
      pnlTop.Enabled := False;
      pnlInicio.Enabled := False;
   End;

   Z2bbtnAceptara.Enabled := False;
   Z2bbtnCancel.Enabled := False;
   bbtnSigue.Enabled := True;
End;

Procedure TFRegGlobalCob.bbtnClearClick(Sender: TObject);
Begin
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
End;

Procedure TFRegGlobalCob.bbtnSigueClick(Sender: TObject);
Var
   xPer: String;
   Y, M, D: Word;
Begin

   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
   Begin
      Exit;
   End;

   DecodeDate(dbdtpFRecepcion.Date, Y, M, D);
   xPer := sbAno.Text + sbMes.Text;

   If Not ValidaCabeceraRegGlo Then
   Begin
      Exit;
   End;

   If DM1.wModo = 'M' Then DM1.cdsRegCob.Edit;

   If (DM1.cdsRegCob.ChangeCount > 0) Or (DM1.cdsRegCob.Modified) Then
   Begin

      If DM1.wModo = 'A' Then
      Begin
         xReg := DM1.StrZero(DM1.MaxSQL('COB301', 'RCOBID', ''), DM1.cdsRegCob.FieldByName('RCOBID').Size);
         DM1.cdsRegCob.Edit;
         DM1.cdsRegCob.FieldByName('RCOBID').AsString := xReg;
      End;

      DM1.cdsRegCob.FieldByName('USUARIO').AsString := DM1.wUsuario;
      DM1.cdsRegCob.FieldByName('FREG').AsDateTime := Date;
      DM1.cdsRegCob.FieldByName('HREG').AsDateTime := Date + SysUtils.Time;

      Try
         GrabaCab(DM1.wModo);
         lblReg.Caption := 'Registro Global de Cobranza - ' + VerfGrabInicial(xReg);
      Except
         ShowMessage('Error con el Correlativo, Reintente nuevamente ');
         lblReg.Caption := 'Registro Global de Cobranza';
         bbtnSigue.SetFocus;
         Exit;
      End;

   End;

   pnlInicio.Enabled := False;
   pnlTop.Enabled := False;
   bbtnNuevo.Enabled := True;
   dbgDetRegGlobal.Enabled := True;
   bbtnNuevoClick(Sender);
   Z2bbtnAceptara.Enabled := True;
   Z2bbtnCancel.Enabled := True;
   Z2bbtnCierra.Enabled := True;
   bbtnSigue.Enabled := False;
End;

Function TFRegGlobalCob.ValidaCabeceraRegGlo: Boolean;
Begin
   Result := False;
   If Length(DM1.cdsRegCob.FieldByName('RCOBANO').AsString) = 0 Then
   Begin
      ShowMessage('Ingrese el Año del Período');
      sbAno.SetFocus;
      Exit;
   End;
   If Length(DM1.cdsRegCob.FieldByName('RCOBMES').AsString) = 0 Then
   Begin
      ShowMessage('Ingrese el Mes del Período');
      sbMes.SetFocus;
      Exit;
   End;
   If Length(Trim(edtRepresentante.Text)) = 0 Then
   Begin
      ShowMessage('Seleccione el Representante');
      dblcdRepresentante.SetFocus;
      Exit;
   End;
   If Length(Trim(dbdtpFRecepcion.Text)) = 0 Then
   Begin
      ShowMessage('Seleccione la Fecha de Recepción');
      dbdtpFRecepcion.SetFocus;
      Exit;
   End;
   If Length(Trim(dbeBanco.Text)) = 0 Then
   Begin
      ShowMessage('Seleccione el Banco');
      dblcBanco.SetFocus;
      Exit;
   End;
   If Length(Trim(dbeAgencia.Text)) = 0 Then
   Begin
      ShowMessage('Agencia No Válida');
   End;
   If Length(Trim(dblcCuenta.Text)) = 0 Then
   Begin
      ShowMessage('Seleccione la Cuenta');
      dblcCuenta.SetFocus;
      Exit;
   End;
   If Length(Trim(dbeNumOpe.Text)) = 0 Then
   Begin
      ShowMessage('Registre el Número de Operación');
      dbeNumOpe.SetFocus;
      Exit;
   End;
  //Valida fecha Fecha de Operación no Mayor a Fecha de Recepción
   If Length(Trim(dbdtpFRecepcion.Text)) = 0 Then
   Begin
      ShowMessage('Seleccione la Fecha de Recepción');
      dbdtpFRecepcion.SetFocus;
      Exit;
   End;
   If Length(Trim(dbdtpFOpe.Text)) = 0 Then
   Begin
      ShowMessage('Seleccione la Fecha de Operación');
      dbdtpFOpe.SetFocus;
      Exit;
   End;
   If (dbdtpFOpe.Date) > (dbdtpFRecepcion.Date) Then
   Begin
      ShowMessage('La Fecha de Operación no puede ser Mayor a la Fecha de Registro');
      dbdtpFOpe.SetFocus;
      Exit;
   End;
   If Length(Trim(dbeMoneda.Text)) = 0 Then
   Begin
      ShowMessage('Seleccione el Tipo de Moneda');
      dblcMoneda.SetFocus;
      Exit;
   End;
   If Length(Trim(dbeMonto.Text)) = 0 Then
   Begin
      ShowMessage('Ingrese el Monto');
      dbeMonto.SetFocus;
      Exit;
   End;
   If Length(Trim(sbAno.Text)) = 0 Then
   Begin
      ShowMessage('Ingrese el Año');
      sbAno.SetFocus;
      Exit;
   End;
   If Length(Trim(sbMes.Text)) = 0 Then
   Begin
      ShowMessage('Ingrese el Mes');
      sbMes.SetFocus;
      Exit;
   End;
   Result := True;
End;

Procedure TFRegGlobalCob.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   pnlDocumentos.Visible := False;
   DM1.cdsRegCob.Cancel;
   DM1.cdsRegCob.Close;

   // HPP_200908_COB
   Dm1.cdsRegCob.IndexFieldNames := '';

   DM1.cdsDetRegCob.Close;
   Dm1.cdsDetRegCob.IndexFieldNames := '';
   DM1.cdsDist.Close;
   Dm1.cdsDist.IndexFieldNames := '';
   // FIN HPP_200908_COB
End;

Procedure TFRegGlobalCob.dblcBancoExit(Sender: TObject);
Begin
   If Z2bbtnCancel.Focused Or Z2bbtnSalir.Focused Then Exit;

   sWhere := 'BANCOID = ' + QuotedStr(dblcBanco.Text);
   dbeBanco.Text := DM1.DisplayDescrip('prvSQL', 'TGE105', 'BANCONOM, BANCOPRF', sWhere, 'BANCONOM');

   If Length(Trim(xBanco)) > 0 Then
      If xBanco <> dblcBanco.Text Then
      Begin
         DM1.cdsRegCob.FieldByName('CCBCOID').AsString := '';
         DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString := '';
      End;

   DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString := DM1.cdsQry.FieldByName('BANCOPRF').AsString;

   //Inicio: HPP_200918_COB por JCARBONEL
   // SELECT *
   DM1.FiltraCDS(DM1.cdsAgenciaBco, 'SELECT BANCOID, AGENBCOID, AGENBCODES, AGENBCOABR, TIPAGENID, DPTOID, '
                                  + '       PROVID, ZIPID, UBIGEOID, USUARIO, FREG, HREG '
                                  + '  FROM COB102 Where BANCOID =' + QuotedStr(dblcBanco.Text));
   DM1.FiltraCDS(DM1.cdsCuentas, 'SELECT DISTINCT CCBCOID FROM TGE106 WHERE BANCOID =' + QuotedStr(dblcBanco.Text) + ' and ciaid=''02'' and activo=''S'' ');
   //Fin: HPP_200918_COB 
End;

Procedure TFRegGlobalCob.dblcCuentaExit(Sender: TObject);
Begin
   If xCrea Then Exit;
   If Z2bbtnCancel.Focused Or Z2bbtnSalir.Focused Then Exit;
   sWhere := 'CCBCOID = ' + Quotedstr(dblcCuenta.Text);
   DM1.DisplayDescrip('prvSQL', 'TGE106', 'BANCOID', sWhere, 'BANCOID');
   xBanco := dblcBanco.Text;
End;

Procedure TFRegGlobalCob.dblcMonedaExit(Sender: TObject);
Begin
   sWhere := 'TMONID=' + QuotedStr(dblcMoneda.Text);
   dbeMoneda.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');
   If xCrea Then Exit;
   If Z2bbtnCancel.Focused Or Z2bbtnSalir.Focused Then Exit;
   If (dbeMoneda.Text = '') And (dblcMoneda.Text <> '') Then
   Begin
      dblcMoneda.SetFocus;
      Raise Exception.Create('Error, Código de Tipo de Moneda No Válido');
   End;
   If dblcMoneda.Text = '' Then
   Begin
      dblcMoneda.SetFocus;
      Raise Exception.Create('Ingrese el Tipo de Moneda del Aporte');
   End;
End;

Procedure TFRegGlobalCob.dblcChqMonedaExit(Sender: TObject);
Begin
   sWhere := 'TMONID = ' + QuotedStr(dblcChqMoneda.Text);
   dbeChqMoneda.Text := DM1.DisplayDescrip('prvSQL', 'TGE103', 'TMONDES', sWhere, 'TMONDES');

   If xCrea Then Exit;
   If bbtnCancelar.Focused Then Exit;
   If (dbeChqMoneda.Text = '') And (dblcChqMoneda.Text <> '') Then
   Begin
      dblcChqMoneda.SetFocus;
      Raise Exception.Create('Error, Código de Tipo de Moneda no válido');
   End;
   If dblcChqMoneda.text = '' Then
   Begin
      dblcChqMoneda.SetFocus;
      Raise Exception.Create('Ingrese el Tipo de Moneda del Aporte');
   End;
End;

Procedure TFRegGlobalCob.dblcFPagoExit(Sender: TObject);
Begin
   sWhere := 'FPAGOID= ' + QuotedStr(dblcFPago.Text);
   dbeFPago.Text := DM1.DisplayDescrip('prvSQL', 'TGE112', 'FPAGODES, FPAGOBCO', sWhere, 'FPAGODES');
   If DM1.cdsQry.FieldByName('FPAGOBCO').AsString <> 'S' Then
   Begin
      dblcChqBanco.Enabled := False;
      dbeChqCuenta.Enabled := False;
      dbeChqNum.Enabled := False;
      dbdtpChqFecha.Enabled := False;
   End
   Else
   Begin
      dblcChqBanco.Enabled := True;
      dbeChqCuenta.Enabled := True;
      dbeChqNum.Enabled := True;
      dbdtpChqFecha.Enabled := True;
   End;
End;

Procedure TFRegGlobalCob.Z2bbtnSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFRegGlobalCob.dblcdRepresentanteExit(Sender: TObject);
Var
   xSQL, xNomRep: String;
Begin
   sWhere := 'REPRID = ' + QuotedStr(dblcdRepresentante.Text);
   xNomRep := Trim(DM1.DisplayDescrip('prvSQL', 'COB201', 'REPRAPENOM', sWhere, 'REPRAPENOM'));
   If DM1.cdsRegCob.State <> dsBrowse Then
   Begin
      If Trim(DM1.cdsRegCob.FieldByName('REPRAPENOM').AsString) <> xNomRep Then
         DM1.cdsRegCob.FieldByName('REPRAPENOM').AsString := xNomRep;
   End;
   xSQL := 'SELECT UPROID FROM COB203 WHERE ' + sWhere;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   xSQL := '';
   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.Eof Do
   Begin
      If Length(Trim(xSQL)) = 0 Then
         xSQL := '(UPROID =' + QuotedStr(DM1.cdsReporte.FieldByName('UPROID').AsString) + ')'
      Else
         xSQL := xSQL + ' OR (UPROID =' + QuotedStr(DM1.cdsReporte.FieldByName('UPROID').AsString) + ')';
      DM1.cdsReporte.Next;
   End;

   If Length(Trim(xSQL)) > 0 Then
      xSQL := 'WHERE ' + xSQL;

   //Inicio: HPP_200918_COB por JCARBONEL
   // SELECT *
   xSQL := 'SELECT UPROID, UPRONOM, UPROABR, UPROTELF, UPRODIR, DIRDPTOID, DIRPROVID, '
      + '          DIRZIPID, DPTOID, CIUDID, ZONAID, REPRID, UPROFDES, BANCOID, '
      + '          PROVBCOID, OFDESID, USUARIO, FREG, HREG, FLGFUSION, FLGACT, FLGESCFIS, '
      + '          CODDEP '
      + '     FROM APO102 ' + xSQL;
   DM1.FiltraCDS(DM1.cdsUPro, xSQL);
   //Fin: HPP_200918_COB
   xSQL := 'SELECT UPAGOID, UPAGONOM ' +
           '  FROM APO103 ' +
           ' WHERE UPROID =''' + DM1.cdsDetRegCob.FieldByName('UPROID').AsString + '''';

   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
End;

Procedure TFRegGlobalCob.bbtnNuevoClick(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   pnlDocumentos.Left := 2;
//Inicio HPC_201708_COB
//Cambio de Posición
// pnlDocumentos.Top := 160;
   pnlDocumentos.Top := 176;
   dbeUseid.Text :='';
//Final HPC_201708_COB
   dbeUPago.Text := '';
   dbeFRecaudacion.Text := '';
   dbeFPago.Text := '';
   dbeChqBanco.Text := '';
   dbeChqMoneda.Text := '';
   dbeUProceso.Text := '';
   dbeMonedaC.Text := '';
   dbeChqMoneda.Text := '';
   pnlDocumentos.Visible := True;
   gbActualiza.Enabled := False;
   pnlDocumentos.BringToFront;
   DM1.cdsDetRegCob.Insert;
   DM1.cdsDetRegCob.FieldByName('CPAGOTMON').AsString := 'N';
   dbeMonedaC.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', 'TMONID = ''N''', 'TMONDES');

   DM1.cdsDetRegCob.FieldByName('TMONID').AsString := 'N';
   dbeChqMoneda.Text := dbeMonedaC.Text;

   wModo1 := 'A';
   DM1.cdsDetRegCob.FieldByName('RCOBID').AsString := DM1.cdsRegCob.FieldByName('RCOBID').AsString; //edtCorrelativo.Text;
   DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString := DM1.cdsRegCob.FieldByName('RCOBANO').AsString;
   DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString := DM1.cdsRegCob.FieldByName('RCOBMES').AsString;
   DM1.cdsDetRegCob.FieldByName('RCOBANOAPO').AsString := DM1.cdsRegCob.FieldByName('RCOBANO').AsString;
   DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString := DM1.cdsRegCob.FieldByName('RCOBMES').AsString;

   DM1.cdsDetRegCob.FieldByName('REPRID').AsString := DM1.cdsRegCob.FieldByName('REPRID').AsString;
   DM1.cdsDetRegCob.FieldByName('REPRAPENOM').AsString := DM1.cdsRegCob.FieldByName('REPRAPENOM').AsString;

   DM1.cdsDetRegCob.FieldByName('RCOBESTADO').AsString := 'INICIAL';
   DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsFloat := 0;
   dblcUProceso.SetFocus;
   Screen.Cursor := crDefault;
End;

Procedure TFRegGlobalCob.bbtnAceptarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If Not ValidaDetalleRegGLo Then Exit;
   If wModo1 = 'A' Then
   Begin
      //vhn
      xSQL := 'Select LPAD(NVL(MAX(DETRCOBID),0)+1,7,''0'') DET From COB302 '
         + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
      dm1.cdsQry.Close;
      dm1.cdsQry.DataRequest(xSQL);
      dm1.cdsQry.Open;

      DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString := DM1.cdsQry.FieldByName('DET').AsString;
      DM1.StrZero(IntToStr(DM1.cdsDetRegCob.RecordCount + 1), 7);
   End;

   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).EditFormat := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).EditFormat := '########0.00';

   DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsFloat := DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat - DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsFloat;
   DM1.cdsDetRegCob.FieldByName('DOCMTO').AsFloat := DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsFloat;

//Inicio HPC_201609_COB --se corrige el filtro para obtener el nombre de la Unidad de Pago
// sWhere := 'UPAGOID=' + QuotedStr(dblcdUPago.Text);
   sWhere := 'UPAGOID =' + QuotedStr(dblcdUPago.Text) + ' AND UPROID = ' + quotedstr(dblcUProceso.text);
//Final HPC_201609_COB
   DM1.cdsDetRegCob.FieldByName('RCOBNOPE').AsString := DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString;
   DM1.cdsDetRegCob.FieldByName('RCOBFOPE').AsString := DM1.cdsRegCob.FieldByName('RCOBFOPE').AsString;
   DM1.cdsDetRegCob.FieldByName('UPROID').AsString := dblcUProceso.text; //DM1.DisplayDescrip('prvSQL', 'APO103', 'UPROID', sWhere, 'UPROID');
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
   DM1.cdsDetRegCob.FieldByName('USEID').AsString  := dblcdUgel.text;
   DM1.cdsDetRegCob.FieldByName('TIPPLA').AsString := Trim(tcbTipoPla.Text);
//Final HPC_201708_COB
   DM1.cdsDetRegCob.FieldByName('USUARIO').AsString := DM1.wUsuario;
   DM1.cdsDetRegCob.FieldByName('FREG').AsDateTime := Date;
   DM1.cdsDetRegCob.FieldByName('HREG').AsDateTime := Date + SysUtils.Time;
   cdsPost(DM1.cdsDetRegCob);
   DM1.cdsDetRegCob.Post;
   GrabaDet1(wModo1);
   dbgDetRegGlobal.ColumnByName('DOCMTO').FooterValue := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(DOCMTO)', ''));
   dbgDetRegGlobal.ColumnByName('CPAGOLIQ').FooterValue := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOLIQ)', ''));
   pnlDocumentos.Visible := False;
   gbActualiza.Enabled := True;
End;

Procedure TFRegGlobalCob.dbgDetRegGlobalDblClick(Sender: TObject);
Begin
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'ACEPTADO' Then
   Begin
      Information(Caption, 'El Documento solo puede ser Visualizado como Consulta');
      Exit;
   End;

   // vhndema
   // SI EXISTE INFORMACION EN EL COB304 NO DEBE PERMITOR MODIFICAR DATOS
   xSQL := 'SELECT COUNT(*) NUMREG FROM COB304 '
      + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
      + ' AND DETRCOBID=' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString);
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSQL);
   DM1.cdsQry6.Open;
   If DM1.cdsQry6.FieldByName('NUMREG').AsInteger > 0 Then
   Begin
      Information(Caption, 'El Documento solo puede ser Visualizado como Consulta (Existen datos en Cob304)');
      Exit;
   End;

   pnlDocumentos.Left := 6;
//Inicio HPC_201708_COB
//Cambio de Posición
// pnlDocumentos.Top := 156;
   pnlDocumentos.Top := 176;
//Final HPC_201708_COB
   gbActualiza.Enabled := False;
   pnlDocumentos.Visible := True;
   wModo1 := 'M';
   xCREA := True;
   xCrea := False;

   DM1.cdsDetRegCob.Edit;

   xWhere := 'UPROID =''' + dblcUProceso.Text + '''';
   dbeUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');

//Inicio HPC_201609_COB --se corrige el filtro para obtener el nombre de la Unidad de Pago
// sWhere := 'UPAGOID =' + QuotedStr(dblcdUPago.Text);
   sWhere := 'UPAGOID =' + QuotedStr(dblcdUPago.Text) + ' AND UPROID = ' + quotedstr(dblcUProceso.text);
//Final HPC_201609_COB
   dbeUPago.Text := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', sWhere, 'UPAGONOM');

   sWhere := 'TMONID = ' + QuotedStr(dblcdMonedaC.Text);
   dbeMonedaC.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');

   sWhere := 'FORPAGOABR =' + QuotedStr(dblcFRecaudacion.Text);
   dbeFRecaudacion.Text := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGODES', sWhere, 'FORPAGODES');

   sWhere := 'FPAGOID =' + QuotedStr(dblcFPago.Text);
   dbeFPago.Text := DM1.DisplayDescrip('prvSQL', 'TGE112', 'FPAGODES', sWhere, 'FPAGODES');

   sWhere := 'BANCOID =' + QuotedStr(dblcChqBanco.Text);
   dbeChqbanco.Text := DM1.DisplayDescrip('prvSQL', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM');

   sWhere := 'TMONID =' + QuotedStr(dblcChqMoneda.Text);
   dbeChqMoneda.Text := DM1.DisplayDescrip('prvSQL', 'TGE103', 'TMONDES', sWhere, 'TMONDES');
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
   tcbTipoPla.Text:=DM1.cdsDetRegCob.FieldByname('TIPPLA').AsString ;
//Final HPC_201708_COB
End;

Procedure TFRegGlobalCob.Z2bbtnCancelClick(Sender: TObject);
Begin
   DM1.cdsDetRegCob.CancelUpdates;
   DM1.CdsRegCob.CancelUpdates;
End;

Procedure TFRegGlobalCob.dblcChqBancoExit(Sender: TObject);
Begin
   sWhere := 'BANCOID = ' + QuotedStr(dblcChqBanco.Text);
   dbeChqbanco.Text := DM1.DisplayDescrip('prvSQL', 'TGE105', 'BANCONOM', sWhere, 'BANCONOM');
End;

Procedure TFRegGlobalCob.dbdtpChqFechaExit(Sender: TObject);
Begin
   If xCrea Then Exit;
End;

Procedure TFRegGlobalCob.bbtnCancelarClick(Sender: TObject);
Begin
   DM1.cdsDetRegCob.Cancel;
   pnlDocumentos.Visible := False;
   gbActualiza.Enabled := True;
End;

Procedure TFRegGlobalCob.dblcdUPagoExit(Sender: TObject);
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
var xsql:String;
//Final HPC_201708_COB
Begin
   sWhere := 'UPAGOID =' + QuotedStr(dblcdUPago.Text) + ' AND UPROID = ' + quotedstr(dblcUProceso.text);
   DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM, UPAGOABR', sWhere, 'UPAGONOM');
   dbeUPago.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;

//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
  xSQL := 'SELECT UPROID,UPAGOID,USEID, USENOM ' +
          'FROM APO101 ' +
          'WHERE UPROID =' + quotedstr(dblcUProceso.Text)+' AND  UPAGOID='+quotedstr(dblcdUPago.Text);
   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSQL);
   DM1.cdsUSES.Open;
   dblcdUgel.LookupTable := DM1.cdsUSES;
//Final HPC_201708_COB

   If xCrea Then Exit;
   If Z2bbtnCancel.Focused Or Z2bbtnSalir.Focused Then Exit;

   If DM1.cdsDetRegCob.State = dsBrowse Then
      Exit;
   If DM1.cdsDetRegCob.FieldByName('UPAGOABR').AsString <> DM1.cdsQry.FieldByName('UPAGOABR').AsString Then
      DM1.cdsDetRegCob.FieldByName('UPAGOABR').AsString := DM1.cdsQry.FieldByName('UPAGOABR').AsString;
End;

Procedure TFRegGlobalCob.dblcFRecaudacionExit(Sender: TObject);
Begin
   sWhere := 'FORPAGOABR =' + QuotedStr(dblcFRecaudacion.Text);
   dbeFRecaudacion.Text := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGODES', sWhere, 'FORPAGODES');
   If xCrea Then Exit;
   If Z2bbtnCancel.Focused Or Z2bbtnSalir.Focused Then Exit;
End;

Procedure TFRegGlobalCob.dbdtpCPagoFechaExit(Sender: TObject);
Begin
   If xCrea Then Exit;
End;

Function TFRegGlobalCob.ValidaDetalleRegGlo: Boolean;
Begin
   Result := False;
   If Length(dbeFRecaudacion.Text) = 0 Then
   Begin
//Inicial HPC_201708_COB
//Se cambió el mensaje por obseravión de calidad, no era parte del pase
//   ShowMessage('Seleccione la Unidad de Pago');
     ShowMessage('Seleccione la Forma de Recaudación');
//Final HPC_201708_COB
      dblcFRecaudacion.SetFocus;
      Exit;
   End;

   If Length(dbeCPagoNum.Text) = 0 Then
   Begin
      ShowMessage('Registre el Número de Comprobante de Pago');
      dbeCPagoNum.SetFocus;
      Exit;
   End;

   If Length(dbdtpCPagoFecha.Text) = 0 Then
   Begin
      ShowMessage('Seleccione la Fecha del Comprobante de Pago');
      dbdtpCPagoFecha.SetFocus;
      Exit;
   End;

   If Length(dbeMonedaC.Text) = 0 Then
   Begin
      ShowMessage('Seleccione el Tipo de Moneda');
      dblcdMonedac.SetFocus;
      Exit;
   End;

   If Length(dbeCPagoTotal.Text) = 0 Then
   Begin
      ShowMessage('Registre el Monto Total');
      dbeCPagoTotal.SetFocus;
      Exit;
   End;

   If Length(dbeDeduccion.Text) = 0 Then
   Begin
      ShowMessage('Registre la Deducción');
      dbeDeduccion.SetFocus;
      Exit;
   End;

   If Length(dblcFPago.Text) = 0 Then
   Begin
      ShowMessage('Seleccione el Tipo de Transacción');
      dblcFPago.SetFocus;
      Exit;
   End;

   If Length(dbeChqMoneda.Text) = 0 Then
   Begin
      ShowMessage('Seleccione el Tipo de Moneda del Cheque');
      dblcChqMoneda.SetFocus;
      Exit;
   End;

   If Length(dbeChqMonto.Text) = 0 Then
   Begin
      ShowMessage('Ingrese el Monto de la Transacción');
      dbeChqMonto.SetFocus;
      Exit;
   End;

   If Length(lblcAsotipid.Text) = 0 Then
   Begin
      ShowMessage('Seleccione el Tipo de Asociado');
      lblcAsotipid.SetFocus;
      Exit;
   End;
   
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
End;

Procedure TFRegGlobalCob.dblcdMonedaCExit(Sender: TObject);
Begin
   sWhere := 'TMONID = ' + QuotedStr(dblcdMonedaC.Text);
   dbeMonedaC.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');
End;

Procedure TFRegGlobalCob.dbeDeduccionExit(Sender: TObject);
Begin
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).EditFormat := '########0.00';
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).EditFormat := '########0.00';

   DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsFloat := DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat
      - DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsFloat;
   DM1.cdsDetRegCob.FieldByName('DOCMTO').AsFloat := DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsFloat;
End;

Procedure TFRegGlobalCob.dbeCPagoTotalExit(Sender: TObject);
Begin
   TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).EditFormat := '########0.00';
End;

Procedure TFRegGlobalCob.Z2bbtnModificaClick(Sender: TObject);
Begin
   pnlInicio.Enabled := True;
   bbtnSigue.Enabled := True;
End;

Procedure TFRegGlobalCob.sbMesExit(Sender: TObject);
Begin
   DM1.cdsRegCob.FieldByName('RCOBMES').AsString := DM1.StrZero(DM1.cdsRegCob.FieldByName('RCOBMES').AsString, 2);
End;

Procedure TFRegGlobalCob.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFRegGlobalCob.Z2bbtnAceptaraClick(Sender: TObject);
Begin
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
   Begin
      Information(Caption, 'El Documento ya se encuentra en Estado Aceptado ');
      Exit;
   End;

   dbgDetRegGlobal.ColumnByName('DOCMTO').FooterValue := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(DOCMTO)', ''));
   dbgDetRegGlobal.ColumnByName('CPAGOLIQ').FooterValue := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOLIQ)', ''));

   If DM1.cdsRegCob.Active Then
   Begin
      Screen.Cursor := crHourGlass;
      If FormatFloat('99999999.00', DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOLIQ)', ''))
         <> FormatFloat('99999999.00', DM1.cdsRegCob.FieldByName('RCOBMTO').AsFloat) Then
      Begin
         ShowMessage('Suma No Coincide con Monto de la Operación');
      End;

      If DM1.cdsRegCob.State = dsBrowse Then
         DM1.cdsRegCob.Edit;
      DM1.cdsRegCob.FieldByName('CIAID').AsString := wCiaDef;
      DM1.cdsRegCob.FieldByName('HREG').AsDateTime := Date + SysUtils.Time;
      DM1.cdsRegCob.FieldByName('RCOBDED').AsString := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGODEDUC)', ''));
      DM1.cdsRegCob.FieldByName('RCOBBRU').AsString := FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOMTO)', ''));
      cdsPost(DM1.cdsRegCob);
      DM1.cdsRegCob.Post;

      xSQL := 'UPDATE COB301 '
            + '   SET CIAID=''' + wCiaDef + ''',HREG=SYSDATE,' +
              '       RCOBDED=' + FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGODEDUC)', '')) + ',' +
              '       RCOBBRU=' + FloatToStr(DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOMTO)', '')) + ' ' +
              ' WHERE RCOBID=''' + DM1.cdsRegCob.FieldByName('RCOBID').AsString +
              ''' AND RCOBMES=''' + DM1.cdsRegCob.FieldByName('RCOBMES').AsString +
              ''' AND RCOBANO=''' + DM1.cdsRegCob.FieldByName('RCOBANO').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      Screen.Cursor := crDefault;
      ShowMessage('Actualización Realizada');
   End;
End;

Procedure TFRegGlobalCob.Z2bbtnCierraClick(Sender: TObject);
Var
   xMaxUserCobId: String;
Begin

   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
   Begin
      Information(Caption, 'El Documento ya se encuentra en Estado Aceptado ');
      Exit;
   End;

   If FormatFloat('99999999.00', DM1.OperClientDataSet(DM1.cdsDetRegCob, 'SUM(CPAGOLIQ)', '')) <>
      FormatFloat('99999999.00', DM1.cdsRegCob.FieldByName('RCOBMTO').AsFloat) Then
   Begin
      ErrorMsg(Caption, 'Suma no Coincide con Monto de la Operación' + #13 + #13 +
         '       No Puede Aceptar el Documento');
      Exit;
   End;

   If Question(Caption, 'Esta Seguro de Actualizar el Estado'#13 + #13 + 'Desea Continuar') Then
   Begin
      DM1.cdsRegCob.Edit;
      DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString := 'ACEPTADO';
      cdsPost(DM1.cdsRegCob);
      DM1.cdsRegCob.Post;

      xSQL := 'Update cob301 Set RCOBESTADO=''ACEPTADO'' WHERE ' +
         'RCOBID=''' + DM1.cdsRegCob.FieldByName('RCOBID').AsString +
         ''' AND RCOBMES=''' + DM1.cdsRegCob.FieldByName('RCOBMES').AsString +
         ''' AND RCOBANO=''' + DM1.cdsRegCob.FieldByName('RCOBANO').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      DM1.cdsDetRegCob.First;
      While Not DM1.cdsDetRegCob.Eof Do
      Begin
         DM1.cdsDetRegCob.Edit;
         DM1.cdsDetRegCob.FieldByName('RCOBESTADO').AsString := 'ACEPTADO';
         cdsPost(DM1.cdsDetRegCob);
         DM1.cdsDetRegCob.Post;

         xMaxUserCobId := DM1.strZero(DM1.MaxSQL('COB303', 'USERCOBID', ''), 7); //DM1.StrZero(IntToStr(DM1.cdsCobxUse.RecordCount+1),7);

         xSQL := 'Update cob302 Set RCOBESTADO=''ACEPTADO'' WHERE RCOBID=''' + DM1.cdsDetRegCob.FieldByName('RCOBID').AsString + ''' AND ' +
            ' DETRCOBID=''' + DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString + ''' AND  rcobmes=''' + DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString + ''' and rcobano=''' + DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString + ''' ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         //Inicio: HPP_200918_COB por JCARBONEL
         // SELECT *
         xSql := 'SELECT RCOBID, USEID, RCOBUSETOT, RCOBUSEAPO, RCOBUSECUO, RCOBANO, RCOBMES, '
            + '          USUARIO, FREG, HREG, UPAGOID, TMONID, RCOBAPOVAL, DOCID, DOCFECHA,'
            + '          RCOBFOPE, RCOBNOPE, UPROID, DETRCOBID, USERCOBID, REPRID, FPAGOID,'
            + '          FORPAGOID, BANCOID, CCBCO, ARCHIVO, AGENBCOID, RCOBANOAPO, RCOBMESAPO,'
            + '          ASOTIPID '
            + '     FROM COB303 '
            + '    WHERE RCOBID=''' + DM1.cdsDetRegCob.FieldByName('RCOBID').AsString + ''' '
            + '      AND DETRCOBID=''' + DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString + ''' '
            + '      AND RCOBMES=''' + DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString + ''' '
            + '      AND RCOBANO=''' + DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString + ''' ';
         //Fin: HPP_200918_COB
         Dm1.cdsTDoc.Close;
         Dm1.cdsTDoc.DataRequest(XSQL);
         DM1.cdsTDoc.Open;
         If DM1.cdsTDoc.RecordCount = 0 Then
         Begin
            xSQL := 'INSERT INTO COB303 (RCOBID, USEID, RCOBUSETOT, RCOBUSEAPO, '
               + '                    RCOBUSECUO, RCOBANO, RCOBMES, USUARIO, '
               + '                    FREG, HREG, UPAGOID, TMONID, '
               + '                    RCOBAPOVAL, DOCID, DOCFECHA, RCOBFOPE, '
               + '                    RCOBNOPE, UPROID, DETRCOBID, USERCOBID, '
               + '                    REPRID, FPAGOID, FORPAGOID, BANCOID, '
               + '                    AGENBCOID, CCBCO,ASOTIPID, RCOBANOAPO, '
               + '                    RCOBMESAPO) '
               + 'VALUES ('
//Inicio HPC_201819_COB
//Inicializa los valores en cero
//             + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBID').AsString) + ', '''', ' + DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString + ', ' +
//              DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString + ', ' + DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString + ', ' +
               + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBID').AsString) + ', '''',0.00,0.00,0.00,' +
//Fin HPC_201819_COB
               QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString) + ', ' +
               QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString) + ', ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('USUARIO').AsString) + ', SYSDATE, SYSDATE, ' +
               QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString) + ', ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('CPAGOTMON').AsString) + ', ' +
               '0, ' +
               QuotedStr(DM1.cdsDetRegCob.FieldByName('DOCID').AsString) + ', ' + wRepFuncDate + QuotedStr(DM1.cdsDetRegCob.FieldByName('DOCFECHA').AsString) + '), ' +
               //Inicio: HPP_200918_COB por RMEDINA
               //wRepFuncDate + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBFOPE').AsString) + '), ' +
               QuotedStr(dbdtpFOpe.Text)+','+
               //Fin: HPP_200918_COB
               QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBNOPE').AsString) + ', ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString) + ', ' +
               QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString) + ', ''' + xMaxUserCobId + ''', ' +
               QuotedStr(DM1.cdsDetRegCob.FieldByName('REPRID').AsString) + ', ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('FPAGOID').AsString) + ', ' +
               QuotedStr(DM1.cdsDetRegCob.FieldByName('FORPAGOID').AsString) + ', ' +
               QuotedStr(DM1.cdsRegCob.FieldByName('BANCOID').AsString) + ', ' +
               QuotedStr(DM1.cdsRegCob.FieldByName('AGENBCOID').AsString) + ', ' + // ypb
               QuotedStr(DM1.cdsRegCob.FieldByName('CCBCOID').AsString) + ', ' +
               QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOTIPID').AsString) + ', ' +
               QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBANOAPO').AsString) + ', ' +
               QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString) + ')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         End
         Else
         Begin
            xSQL := ' Update COB303 Set ' +
                    ' RCOBID     =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBID').AsString) + ',' +
                    //Modificación - Ricardo Medina - 20/02/2008
                    ' USEID      =' + ''' ''' + ',' +
                   //Fin de la modificación
                   //Inicio HPC_201819_COB
                   //Inicializa los valores en cero
                   //'RCOBUSETOT =' + DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString + ',' +
                   //'RCOBUSEAPO =' + DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString + ',' +
                   //'RCOBUSECUO =' + DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString + ',' +
                   //Final HPC_201819_COB
                    ' RCOBANO    =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString) + ',' +
                    ' RCOBMES    =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString) + ',' +
                    ' USUARIO    =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('USUARIO').AsString) + ',' +
                    ' UPAGOID    =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString) + ',' +
                    ' TMONID     =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('CPAGOTMON').AsString) + ',' +
                    //Modificación - Ricardo Medina - 20/02/2008
                    ' DOCID      =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DOCID').AsString) + ',' +
                    ' DOCFECHA   =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DOCFECHA').AsString) + ',' +
                    ' RCOBFOPE   =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBFOPE').AsString) + ',' +
                    ' RCOBNOPE   =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBNOPE').AsString) + ',' +
                    //Fin de la modificación
                    ' UPROID     =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString) + ',' +
                    ' REPRID     =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('REPRID').AsString) + ',' +
                    ' FPAGOID    =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('FPAGOID').AsString) + ',' +
                    ' FORPAGOID  =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('FORPAGOID').AsString) + ',' +
                    ' BANCOID    =' + QuotedStr(DM1.cdsRegCob.FieldByName('BANCOID').AsString) + ',' +
                    ' AGENBCOID  =' + QuotedStr(DM1.cdsRegCob.FieldByName('AGENBCOID').AsString) + ',' +
                    ' CCBCO      =' + QuotedStr(DM1.cdsRegCob.FieldByName('CCBCOID').AsString) + ',' +
                    ' ASOTIPID   =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOTIPID').AsString) + ',' +
                    ' RCOBANOAPO =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBANOAPO').AsString) + ',' +
                    ' RCOBMESAPO =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString) +
                    //Modificación - Ricardo Medina - 20/02/2008
                    ' WHERE RCOBID    = ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBID').AsString) + ' AND ' +
                    '       DETRCOBID = ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString);
                    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                    //Fin de la Modificación
         End;

      // HPP_200908_COB
      //--Grabo en la tabla  de Control por Usuario de descargo global (COB_CTR_USU_DES_PLA)  (ric_m_z)
      //--SAR 2009-0275 DADRM 2009-041
      //--
      //--Verifico si existe la plantilla

         //Inicio: HPP_200918_COB por JCARBONEL
         // SELECT *
         xSQL := 'Select SECTORISTA, USUARIO, UPROID, UPAGOID, USEID, FECRECREP, FECDEPBAN, '
            + '          FECINGCOB, FECDES, IMPORTE, NUMERO, OBSERVACION, PERIODO, RCOBNOPE, '
            + '          TIPO, RCOBID, DETRCOBID, ASOTIPID, FLGDIF, OBSDIF '
            + '     From COB_CTR_USU_DES_PLA '
            + '    Where Periodo=''' + DM1.cdsDetRegCob.FieldByname('Rcobano').AsString
            +            DM1.cdsDetRegCob.FieldByname('Rcobmes').AsString + ''' '
            + '      and Uproid=''' + DM1.cdsDetRegCob.FieldByname('Uproid').AsString + ''' '
            + '      and Upagoid=''' + DM1.cdsDetRegCob.FieldByname('Upagoid').AsString + ''' '
            + '      and Asotipid=''' + DM1.cdsDetRegCob.FieldByname('Asotipid').AsString + ''' ';
         //Fin: HPP_200918_COB
         dm1.cdsDist.Close;
         dm1.cdsDist.DataRequest(xSql);
         dm1.cdsDist.Open;
         If Dm1.cdsDist.RecordCount = 0 Then
         Begin
         // Verifico la zona de que sectorista es
            xsql := 'Select Sectorista From COB_USU_ZONA_DES_PLA ' +
               'Where Uproid=''' + DM1.cdsDetRegCob.FieldByname('Uproid').AsString + ''' and ' +
               'Upagoid=''' + DM1.cdsDetRegCob.FieldByname('Upagoid').AsString + ''' and Estado is null ';
            Dm1.cdsDist.Close;
            Dm1.cdsDist.IndexFieldNames := '';
            Dm1.cdsDist.DataRequest(xsql);
            Dm1.cdsDist.Open;
            If Dm1.cdsDist.RecordCount > 0 Then
            Begin
               xSql := 'Insert Into Cob_ctr_usu_des_pla(Periodo,Sectorista,Usuario,Uproid,Upagoid,Asotipid,Tipo,FecRecRep,FecDepBan,FecIngCob) Values(' +
                  '''' + DM1.cdsDetRegCob.FieldByname('Rcobano').AsString + DM1.cdsDetRegCob.FieldByname('Rcobmes').AsString + ''',' +
                  '''' + Dm1.cdsDist.FieldByname('Sectorista').AsString + ''',' +
                  '''' + Dm1.wUsuario + ''',' +
                  '''' + DM1.cdsDetRegCob.FieldByname('Uproid').AsString + ''',' +
                  '''' + DM1.cdsDetRegCob.FieldByname('Upagoid').AsString + ''',' +
                  '''' + DM1.cdsDetRegCob.FieldByname('Asotipid').AsString + ''',' +
                  '''Cuotas'',' +
                  '''' + DM1.cdsDetRegCob.FieldByname('FrcpRepre').AsString + ''',' +
                  '''' + DM1.cdsDetRegCob.FieldByname('Rcobfope').AsString + ''',' +
                  '''' + dbdtpFRecepcion.Text + ''')';
               DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            End;
         End
         Else
         Begin
            xSql := 'Update Cob_ctr_usu_des_pla set ' +
               'FecRecRep =''' + DM1.cdsDetRegCob.FieldByname('FrcpRepre').AsString + ''',' +
               'FecDepBan =''' + DM1.cdsDetRegCob.FieldByname('Rcobfope').AsString + ''',' +
               'FecIngCob =''' + dbdtpFRecepcion.TexT + ''',' +
               'Usuario   =''' + Dm1.wUsuario + ''' ' +
               'Where Periodo=''' + DM1.cdsDetRegCob.FieldByname('Rcobano').AsString + DM1.cdsDetRegCob.FieldByname('Rcobmes').AsString + ''' and ' +
               'Uproid=''' + DM1.cdsDetRegCob.FieldByname('Uproid').AsString + ''' and ' +
               'Upagoid=''' + DM1.cdsDetRegCob.FieldByname('Upagoid').AsString + ''' and ' +
               'Asotipid=''' + DM1.cdsDetRegCob.FieldByname('Asotipid').AsString + ''' ';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         End;
     // FIN HPP_200908_COB

         DM1.cdsDetRegCob.Next;
      End;
      ShowMessage('Documento Aceptado');
   End;
End;

Procedure TFRegGlobalCob.dblcUProcesoExit(Sender: TObject);
Begin
   xWhere := 'UPROID =''' + dblcUProceso.Text + '''';
   dbeUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');

   xSQL := 'SELECT UPAGOID, UPAGONOM ' +
      'FROM APO103 ' +
      'WHERE UPROID =' + quotedstr(dblcUProceso.Text); //''+DM1.cdsDetRegCob1.FieldByName('UPROID').AsString+'''';

   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
End;

Procedure TFRegGlobalCob.dblcdRepresentanteEnter(Sender: TObject);
Begin
   DM1.cdsRepresentante.IndexFieldNames := 'REPRAPENOM'
End;

Procedure TFRegGlobalCob.dblcdAgenbcoExit(Sender: TObject);
Begin
   If Z2bbtnCancel.Focused Or Z2bbtnSalir.Focused Then Exit;

   If (ActiveControl.Parent.Name = dblcdagenbco.Parent.Name) And
      (ActiveControl.TabOrder < dblcdagenbco.TabOrder) Then
      Exit;

   DM1.cdsAgenciaBco.SetKey;
   DM1.cdsAgenciaBco.FieldByName('BANCOID').AsString := dblcbanco.Text;
   DM1.cdsAgenciaBco.FieldByName('AGENBCOID').AsString := dblcdagenbco.Text;
   If Not DM1.cdsAgenciaBco.GotoKey Then
   Begin
      ShowMessage('Agencia No es Válida');
      dbeAgencia.Clear;
      Exit;
   End;
   dbeAgencia.Text := DM1.cdsAgenciaBco.FieldByName('AGENBCODES').AsString;
End;

Procedure TFRegGlobalCob.Z2bbtnConcluirClick(Sender: TObject);
Var
   xCondicion, xSQL, xAnoApo, xMesApo: String;
   xTotMon: Double;
Begin
   If Question(Caption, 'Desea Concluir el Ingreso en Lote') Then
   Begin
      Screen.Cursor := crHourGlass;
      xTotMon := 0;
      xAnoApo := '';
      xMesApo := '';
      xSQL := 'SELECT DISTINCT RCOBANOAPO FROM COB302 WHERE RCOBID =' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
      DM1.FiltraCDS(DM1.cdsReporte, xSQL);
      DM1.cdsReporte.First;
      If DM1.cdsReporte.RecordCount = 1 Then
         xAnoApo := 'TRANSANO=' + QuotedStr(DM1.cdsReporte.FieldByName('RCOBANOAPO').AsString)
      Else
      Begin
         While Not DM1.cdsReporte.Eof Do
         Begin
            If Length(xAnoApo) = 0 Then
               xAnoApo := 'TRANSANO=' + QuotedStr(DM1.cdsReporte.FieldByName('RCOBANOAPO').AsString)
            Else
               xAnoApo := xAnoApo + ' OR TRANSANO=' + QuotedStr(DM1.cdsReporte.FieldByName('RCOBANOAPO').AsString);
            DM1.cdsReporte.Next;
         End;
      End;

      xSQL := 'SELECT DISTINCT RCOBMESAPO FROM COB302 WHERE RCOBID =' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString);
      DM1.FiltraCDS(DM1.cdsReporte, xSQL);
      DM1.cdsReporte.First;
      If DM1.cdsReporte.RecordCount = 1 Then
         xMesApo := 'TRANSMES =' + QuotedStr(DM1.cdsReporte.FieldByName('RCOBMESAPO').AsString)
      Else
      Begin
         While Not DM1.cdsReporte.Eof Do
         Begin
            If Length(xMesApo) = 0 Then
               xMesApo := 'TRANSMES=' + QuotedStr(DM1.cdsReporte.FieldByName('RCOBMESAPO').AsString)
            Else
               xMesApo := xMesApo + ' OR TRANSMES=' + QuotedStr(DM1.cdsReporte.FieldByName('RCOBMESAPO').AsString);
            DM1.cdsReporte.Next;
         End;
      End;

      If DM1.cdsRegCob.FieldByName('AGENBCOID').IsNull Then
         xcondicion := 'AND AGENCIDG IS NULL'
      Else
         xcondicion := 'AND AGENCIDG=' + QuotedStr(dblcdagenbco.Text);

      xSQL := 'SELECT USEID, NVL(SUM(NVL(TRANSMTO,0)),0) APORTE ' +
         'FROM APO301 ' +
         'WHERE TRANSINTID=' + QuotedStr('APO') + ' ' +
         'AND (' + xAnoApo + ') ' +
         'AND (' + xMesApo + ') ' +
         'AND TRANSNOPE=' + QuotedStr(dbenumope.Text) + ' ' +
         'AND TRANSFOPE=TO_DATE(' + QuotedStr(FormatDateTime(wFormatFecha, dbdtpFOpe.Date)) + ') ' +
         'AND BANCOIDG=' + QuotedStr(dblcBanco.Text) + ' ' +
         xcondicion;
      xSQL := xSQL + ' GROUP BY USEID';

      DM1.cdsEjecuta.Close;
      DM1.cdsEjecuta.IndexFieldNames := '';
      DM1.cdsEjecuta.DataRequest(xSQL);

      DM1.cdsEjecuta.Open;

      If dm1.cdsEjecuta.RecordCount = 0 Then
      Begin
         Screen.Cursor := crDefault;
         Information(Caption, 'No Existe Información Transferidad, No Puede Continuar');
         Exit;
      End;

      dm1.cdsEjecuta.First;
      While Not dm1.cdsEjecuta.Eof Do
      Begin
         xTotMon := xTotMon + dm1.cdsEjecuta.FieldByName('APORTE').AsFloat;
         dm1.cdsEjecuta.Next;
      End;

      DM1.cdsRegCob.Edit;
      DM1.cdsRegCob.FieldByName('RCOBFIN').AsString := 'S';
      If xTotMon > 0 Then
         DM1.cdsRegCob.FieldByName('CPAGOAPO').AsFloat := xTotMon
      Else
         DM1.cdsRegCob.FieldByName('CPAGOAPO').AsFloat := 0;

      cdsPost(DM1.cdsRegCob);
      DM1.cdsRegCob.post;
      DM1.ControlTran;

      Screen.Cursor := crDefault;

   End;
End;

Procedure TFRegGlobalCob.InsertCaja;
Const
   xCaja302: String = 'CIAID, TDIARID, ECANOMM, ECNOCOMP, CLAUXID, PROV, PROVRUC, ECFCOMP, ' +
   'ECFEMICH, ECFPAGOP, FPAGOID, DOCID, ECNODOC, TMONID, ECTCAMB, ECMTOORI, ' +
      'ECMTOLOC, ECMTOEXT, BANCOID, CCBCOID, CPTOID, CUENTAID, ECGLOSA, ECLOTE, ' +
      'ECELABO, ECESTADO, ECCONTA, ECUSER, ECFREG, ECHREG, ECANO, ECMM, ECDD, ' +
      'ECSS, ECSEM, ECTRI, ECAASS, ECAASEM, ECAATRI, EC_IE, CAJARETIGV, ' +
      'AUXID, CCBCOVOUCH, ECNOCHQ, ECGIRA, ECFCOBCH, ECCHQEMI, EC_PROCE';
Var
   xNumComp1, xNumComp2, xCampo, xSql: String;
   xCtaCtbl, xCpto, xTDiar, xClaAux: String;
Begin
   xTDiar := '28';
   xClaAux := 'R';
   xCpto := 'HH';
   xCtaCtbl := '1234567890';

   DM1.cdsReporte.First;
   While Not dm1.cdsReporte.eof Do
   Begin
    //** JALA EL TIPO DE DOCUMENTO PARA TOMAR EL NUMERO DE COMPROBANTE
      xSql := 'SELECT DOCID FROM TGE110 WHERE DOCMOD LIKE ' + quotedstr('%' + dm1.wModulo + '%');
      dm1.cdsQry.Close;
      dm1.cdsQry.DataRequest(xSql);
      dm1.cdsQry.Open;

      xDocid := dm1.cdsQry.fieldByName('DOCID').AsString;

      xSql := 'SELECT NVL(MAX(CNTCOMPROB),0) + 1 TOTAL FROM CNT301 ' +
         'WHERE CIAID=' + quotedstr(DM1.cdsRegCob.Fieldbyname('CIAID').AsString) + ' ' +
         'AND TDIARID=' + quotedstr(xTDiar) + ' ' +
         'AND CNTANOMM=' + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBANO').AsString +
         DM1.cdsRegCob.fieldbyname('RCOBMES').AsString);
      dm1.cdsQry.Close;
      dm1.cdsQry.DataRequest(xSql);
      dm1.cdsQry.Open;
      xNumComp1 := dm1.cdsQry.fieldByName('TOTAL').AsString;

      xSql := 'SELECT NVL(MAX(ECNOCOMP),0) + 1 TOTAL FROM CAJA321 ' +
         'WHERE CIAID=' + quotedstr(DM1.cdsRegCob.fieldbyname('CIAID').AsString) + ' ' +
         'AND TDIARID=' + quotedstr(xTDiar) + ' ' +
         'AND ECANOMM=' + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBANO').AsString +
         DM1.cdsRegCob.fieldbyname('RCOBMES').AsString);
      dm1.cdsQry.Close;
      dm1.cdsQry.DataRequest(xSql);
      dm1.cdsQry.Open;
      xNumComp2 := dm1.cdsQry.fieldByName('TOTAL').AsString;

      If xNumComp1 < xNumComp2 Then
         xMaxNumComp := Dm1.StrZero(xNumComp2, 10)
      Else
         xMaxNumComp := Dm1.StrZero(xNumComp1, 10);

    //** ACTUALIZO CAJA321
    //** CIAID
      xCampo := quotedstr(DM1.cdsRegCob.fieldbyname('CIAID').AsString) + ', ';
      xCiaid := DM1.cdsRegCob.fieldbyname('CIAID').AsString;
    //** TDIARID
      xCampo := xCampo + quotedstr(xTDiar) + ', ';
      xTDiarid := xTDiar;
    //** ECANOMM
      xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBANO').AsString +
         DM1.cdsRegCob.fieldbyname('RCOBMES').AsString) + ', ';
      xEcanomm := DM1.cdsRegCob.fieldbyname('RCOBANO').AsString +
         DM1.cdsRegCob.fieldbyname('RCOBMES').AsString;
    //** ECNOCOMP
      xCampo := xCampo + quotedstr(xMaxNumComp) + ',';
    //**CLAUXID
      xCampo := xCampo + quotedstr(xClaAux) + ', ';
      xClauxid := xClaAux;
    //** PROV
      xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('REPRID').AsString) + ', ';
      xAuxid := DM1.cdsRegCob.fieldbyname('REPRID').AsString;
    //** PROVRUC
      xCampo := xCampo + quotedstr(DM1.cdsRepresentante.fieldbyname('REPRRUC').AsString) + ', ';
    //** ECFCOMP
      xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBFOPE').AsString) + ', ';
      xFechaCom := DM1.cdsRegCob.fieldbyname('RCOBFOPE').AsDateTime;
    //** ECFEMICH
      xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBFOPE').AsString) + ', ';
    //** ECFPAGOP
      xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBFOPE').AsString) + ', ';
    //** FPAGOID
      xCampo := xCampo + quotedstr(DM1.cdsDetRegCob.fieldbyname('FORPAGOID').AsString) + ', ';
      xFPagoid := DM1.cdsDetRegCob.fieldbyname('FORPAGOID').AsString;
    //** DOCID
      xCampo := xCampo + quotedstr(xDocid) + ', ';
    //** ECNODOC
      xCampo := xCampo + quotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString) + ', ';
      xNodoc := DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString;
    //** TMONID
      xCampo := xCampo + quotedStr(DM1.cdsDetRegCob.FieldByName('TMONID').AsString) + ', ';
      xTmonid := DM1.cdsDetRegCob.FieldByName('TMONID').AsString;
    //** ECTCAMB
      xCampo := xCampo + DM1.cdsDetRegCob.FieldByName('TCAMBIO').AsString + ', ';
      xECTCAMB := DM1.cdsDetRegCob.FieldByName('TCAMBIO').AsFloat;
      xCampo := xCampo + dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString + ', ';
      cPgoOri := dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat;
      xCampo := xCampo + dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString + ', ';
      cPgoLoc := dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat;
      xCampo := xCampo + FloattoStr(dm1.FRound(dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat /
         DM1.cdsDetRegCob.FieldByName('TCAMBIO').AsFloat, 15, 4)) + ', ';
      cPgoExt := dm1.cdsDetRegCob.FieldByName('CPAGOMTO').AsFloat /
         DM1.cdsDetRegCob.FieldByName('TCAMBIO').AsFloat;
    //** BANCOID
      xCampo := xCampo + quotedStr(DM1.cdsRegCob.FieldByName('BANCOID').AsString) + ', ';
      xBancoid := DM1.cdsRegCob.FieldByName('BANCOID').AsString;
    //** CCBCOID
      xCampo := xCampo + quotedStr(DM1.cdsDetRegCob.FieldByName('CCBCOID').AsString) + ', ';
      xCcBcoid := DM1.cdsDetRegCob.FieldByName('CCBCOID').AsString;
    //** CPTOID
      xCampo := xCampo + quotedStr(xCpto) + ', ';
      xCptoid := xCpto;
    //** CUENTAID
      xCampo := xCampo + quotedStr(xCtaCtbl) + ', ';
      xCuentaid := xCtaCtbl;
    //** ECGLOSA
      xCampo := xCampo + quotedStr(DM1.cdsDetRegCob.FieldByName('CPAGOCPTO').AsString) + ', ';
    //** ECLOTE
      xCampo := xCampo + quotedStr('000') + ', ';
    //** ECELABO
      xCampo := xCampo + quotedStr('Registro Global') + ', ';
    //** ECESTADO
      xCampo := xCampo + quotedStr('C') + ', ';
    //** ECCONTA
      xCampo := xCampo + quotedStr('N') + ', ';
    //** ECUSER
      xCampo := xCampo + quotedStr(Dm1.wUsuario) + ', ';
    //** ECFREG
      xCampo := xCampo + wRepFecServi + ', ';
    //** ECHREG
      xCampo := xCampo + wRepTimeServi + ', ';

      //Inicio: HPP_200918_COB realizado por JCARBONEL
      // SELECT *
      xSql := 'SELECT FECHA, FECANO, FECMES, FECDIA, FECDIASS, FECTRIM, FECSEM, FECSS, '
            + '       FECAATRI, FECAASEM, FECAASS, FECMMSS, FECLAB '
            + '  FROM TGE114 '
            + ' WHERE FECHA=' + quotedstr(DM1.cdsRegCob.fieldbyname('FREG').AsString);
      dm1.cdsQry.close;
      dm1.cdsQry.datarequest(xSql);
      dm1.cdsQry.open;
      //Fin: HPP_200918_COB

    //** ECANO
      xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString) + ', ';
    //** ECMM
      xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString) + ', ';
    //** ECDD
      xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString) + ', ';
    //** ECSS
      xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString) + ', ';
    //** ECSEM
      xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString) + ', ';
    //** ECTRI
      xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString) + ', ';
    //** ECAASS
      xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString) + ', ';
    //** ECAASEM
      xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString) + ', ';
    //** ECAATRI
      xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString) + ', ';
    //** EC_IE
      xCampo := xCampo + quotedStr('E') + ', ';
    //** CAJARETIGV
      xCampo := xCampo + quotedStr('N') + ', ';
    //** AUXID
      xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('REPRID').AsString) + ', ';
    //** CCBCOVOUCH
      xCampo := xCampo + quotedstr(xTDiar) + ', ';
    //** ECNOCHQ
      xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('RCOBID').AsString) + ', ';
    //** ECGIRA
      xCampo := xCampo + quotedstr(Dm1.DisplayDescrip('prvSQL', 'TGE105', 'BANCONOM',
         'BANCOID =' + quotedstr(DM1.cdsRegCob.fieldbyname('BANCOID').AsString), 'BANCONOM')) + ',';
    //** ECFCOBCH
      xCampo := xCampo + quotedstr(DM1.cdsRegCob.fieldbyname('FREG').AsString) + ', ';
    //** ECCHQEMI
      xCampo := xCampo + quotedstr('S') + ', '; //** S = me indica que fue emitido
    //** EC_PROCE
      xCampo := xCampo + quotedStr('W');

      xSql := 'INSERT INTO CAJA321 (' + xCaja302 + ') VALUES (' + xCampo + ')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      dm1.cdsReporte.next;
   End;
End;

Procedure TFRegGlobalCob.ActuCaja301;
Const
   xCaja301: String = 'CIAID, TDIARID, ECANOMM, ECNOCOMP, DOCID2, DOCMOD, CPTOID, TDIARID2, ' +
   'CUENTAID, CLAUXID, PROV, CCOSID, TMONID, DEMTOORI, CPNODOC, DEFCOMP, CPFEMIS, ' +
      'CPFVCMTO, CPANOMM, DETCPAG, DEDH, DETCDOC, CPSERIE, DEMTOLOC, DEMTOEXT, ' +
      'CPNOREG, DEUSER, DEFREG, DEHREG, DEANO, DEMM, DEDD, DESS, DESEM, ' +
      'DETRI, DEAASS, DEAASEM, DEAATRI';
Var
   xCampo, aux, xWhere: String;
   xCpnoreg: Integer;
Begin
   xCpnoreg := 0;

   xCpnoreg := xCpnoreg + 1;
  //** CIAID
   xCampo := quotedstr(xCiaid) + ',';
  //**TDIARID
   xCampo := xCampo + quotedstr(xTdiarid) + ', ';
  //**ECANOMM
   xCampo := xCampo + quotedstr(xEcanomm) + ', ';
  //** ECNOCOMP
   xCampo := xCampo + quotedstr(xMaxNumComp) + ', ';
  //** DOCID2
   xCampo := xCampo + quotedstr(xDocid) + ', ';
  //** DOCMOD
   xCampo := xCampo + quotedstr(dm1.wModulo) + ', ';
  //** CPTOID
   xCampo := xCampo + quotedstr(xCptoid) + ', ';
  //** TDIARID2
   xCampo := xCampo + quotedstr(xTdiarid) + ', ';
  //** CUENTAID
   xCampo := xCampo + quotedstr(xCuentaid) + ', ';

   xWhere := 'CIAID=' + quotedstr(xCiaid) + ' AND CUENTAID=' + quotedstr(xCuentaid);
   DM1.DisplayDescrip('prvSQL', 'TGE202', 'CUENTAID, CTA_CCOS, CTA_AUX', xWhere, 'CuentaId');

   If DM1.cdsQry.fieldbyName('CTA_AUX').asString = 'S' Then
   Begin
    //** CLAUXID
      xCampo := xCampo + quotedstr(xClauxid) + ', ';
    //** PROV
      xCampo := xCampo + quotedstr(xAuxid) + ', ';
   End
   Else
   Begin
    //** CLAUXID
      xCampo := xCampo + quotedstr('--') + ', ';
    //** PROV
      xCampo := xCampo + quotedstr('--') + ', ';
   End;

   If DM1.cdsQry.fieldbyName('CTA_CCOS').asString = 'S' Then
   Begin
    //** CCOSID
      DM1.cdsUSES.SetKey;
      DM1.cdsUSES.FieldByName('USEID').AsString := DM1.cdsReporte.FieldByName('USEID').AsString;
      If DM1.cdsUSES.gotokey Then
         xCampo := xCampo + quotedstr(DM1.cdsUSES.FieldByName('CCOSID').AsString) + ', '
      Else
      //** CCOSID
         xCampo := xCampo + quotedstr('--') + ', ';
   End
   Else
      xCampo := xCampo + quotedstr('--') + ', ';

  //**TMONID
   xCampo := xCampo + quotedstr(xTmonid) + ', ';
  //**DEMTOORI
   xCampo := xCampo + dm1.cdsReporte.FieldByName('CREMTOOTOR').AsString + ', ';
  //** CPNODOC
   xCampo := xCampo + quotedstr(xNodoc) + ', ';
  //** DEFCOMP
   xCampo := xCampo + quotedstr(DateToStr(xFechaCom)) + ', ';
  //** CPFEMIS
   xCampo := xCampo + quotedstr(DateToStr(xFechaCom)) + ', ';
  //** CPFVCMTO
   xCampo := xCampo + quotedstr(DateToStr(xFechaCom)) + ', ';
  //** CPANOMM
   xCampo := xCampo + quotedstr(xEcanomm) + ', ';
  //** DETCPAG
   xCampo := xCampo + FloatToStr(xECTCAMB) + ', ';
  //** DEDH
   xCampo := xCampo + quotedstr('D') + ', ';
  //** DETCDOC
   xCampo := xCampo + FloatToStr(xECTCAMB) + ', ';
  //**CPSERIE
   xCampo := xCampo + quotedstr('000') + ', ';
   xWhere := 'TMONID=' + quotedstr(xTmonid);
   aux := DM1.DisplayDescrip('prvSQL', 'TGE103', 'TMONDES', xWhere, 'TMONDES');

   If (length(aux) > 0) And (dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat > 0) Then //(DM1.cdsRegCxP.FieldByName('DEMTOORI').AsFloat>0) then
   Begin
      If xTmonid = DM1.wTMonLoc Then
      Begin
      //** DEMTOLOC
         xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat) + ', ';
      //**DEMTOEXT
         xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat / xECTCAMB) + ', ';
      End
      Else
      Begin
      //** DEMTOLOC
         xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat * xECTCAMB) + ', ';
      //**DEMTOEXT
         xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat) + ', ';
      End;
   End
   Else
   Begin
    //**DEMTOEXT
      xCampo := xCampo + '0.00, ';
    //**DEMTOEXT
      xCampo := xCampo + '0.00, ';
   End;

  //** CPNOREG
   xCampo := xCampo + quotedstr(Dm1.StrZero(IntToStr(xCpnoreg), 10)) + ', ';
  //**DEUSER
   xCampo := xCampo + quotedstr(dm1.wUsuario) + ', ';
  //*DEFREG
   xCampo := xCampo + wRepFecServi + ', ';
  //**DEHREG
   xCampo := xCampo + wRepTimeServi + ', ';

   //Inicio: HPP_200918_COB realizado por JCARBONEL
   // SELECT *
   xSql := 'SELECT FECHA, FECANO, FECMES, FECDIA, FECDIASS, FECTRIM, FECSEM, FECSS, '
      + '          FECAATRI, FECAASEM, FECAASS, FECMMSS, FECLAB '
      + '     FROM TGE114 WHERE FECHA=' + quotedstr(DM1.cdsRegCob.fieldbyname('FREG').AsString);
   dm1.cdsQry.close;
   dm1.cdsQry.datarequest(xSql);
   dm1.cdsQry.open;
   //Fin: HPP_200918_COB

  //**DEANO
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString) + ', ';
  //**DEMM
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString) + ', ';
  //**DEDD
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString) + ', ';
  //**DESS
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString) + ', ';
  //**DESEM
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString) + ', ';
  //**DETRI
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString) + ', ';
  //**DEAASS
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString) + ', ';
  //**DEAASEM
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString) + ', ';
  //**DEAATRI
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString);
   xSql := 'INSERT INTO CAJA322 (' + xCaja301 + ') VALUES (' + xCampo + ')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
End;

Procedure TFRegGlobalCob.dbgDetRegGlobalKeyDown(Sender: TObject; Var Key: Word; Shift: TShiftState);
Begin
   // vhndema
   If (Key = VK_DELETE) And (ssCtrl In Shift) Then
   Begin
      If DM1.cdsDetRegCob.RecordCount = 0 Then
      Begin
         ShowMessage(' No Existen Registros a Eliminar ');
         Exit;
      End;

      If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
      Begin
         Information(Caption, 'Sólo pueden ser Eliminados los Documentos que se Encuentren en Estado Inicial');
         Exit;
      End;

      If DM1.cdsDetRegCob.FieldByName('RCOBESTADO').AsString <> 'INICIAL' Then
      Begin
         Information(Caption, 'Sólo pueden ser Eliminados los Documentos que se Encuentren en Estado Inicial');
         Exit;
      End;

      If Question(Caption, 'Está Seguro de Eliminar?' + #13 + #13 + 'Desea Continuar?') Then
      Begin
         xBorrar := '1';
         DM1.cdsDetRegCob.Delete;
         DM1.ControlTran;
         xBorrar := '0';

         ShowMessage('Registro Eliminado');
      End;
   End;
End;

Procedure TFRegGlobalCob.seMesApoExit(Sender: TObject);
Begin
   DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString := DM1.StrZero(DM1.cdsDetRegCob.FieldByName('RCOBMESAPO').AsString, 2);
End;

Procedure TFRegGlobalCob.dblcMonedaNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFRegGlobalCob.dblcBancoNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFRegGlobalCob.dblcUProcesoNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFRegGlobalCob.dblcFRecaudacionNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

//Verifica si se grabo bien EL RCOBID

Function TFRegGlobalCob.VerfGrabInicial(xreg: String): String;
Var
   XSQL: String;
Begin
   xSql := 'SELECT RCOBID FROM COB301 WHERE RCOBID=''' + xreg + ''' ';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSQL);
   DM1.cdsDLabo.Open;
   If DM1.cdsDLabo.RecordCount > 0 Then
      Result := DM1.cdsDLabo.FieldByName('RCOBID').AsString
   Else
      Result := '0000000';
   dm1.cdsDLabo.Close;
   dm1.cdsDLabo.IndexFieldNames := '';
End;

Procedure TFRegGlobalCob.GrabaCab(xInsMod: String);

Begin

   If xInsMod = 'A' Then
   Begin
      xSQL := 'Insert Into COB301(RCOBID,RCOBANO,RCOBMES,REPRID,REPRAPENOM,RCOBESTADO,RCOBFRECEP,BANCOID,AGENBCOID,CCBCOID,' +
         'RCOBFOPE,RCOBNOPE,TMONID,RCOBMTO,USUARIO,FREG,HREG) VALUES (' +
         QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString) + ',' +
         QuotedStr(sbAno.Text) + ',' +
         QuotedStr(SBMES.Text) + ',' +
         QuotedStr(dblcdRepresentante.Text) + ',' +
         QuotedStr(Trim(edtRepresentante.Text)) + ',' +
         QuotedStr('INICIAL') + ',' +
         QuotedStr(dbdtpFRecepcion.Text) + ',' +
         QuotedStr(dblcBanco.Text) + ',' +
         QuotedStr(dblcdAgenbco.Text) + ',' +
         QuotedStr(dblcCuenta.Text) + ',' +
         QuotedStr(dbdtpFOpe.Text) + ',' +
         QuotedStr(dbeNumOpe.Text) + ',' +
         QuotedStr(dblcMoneda.Text) + ',' +
         DM1.cdsRegCob.FieldByName('RCOBMTO').AsString + ',' +
         QuotedStr(DM1.wUsuario) + ',TO_DATE(SYSDATE),SYSDATE)';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
   If xInsMod = 'M' Then
   Begin
      xSQL := 'UPDATE COB301 SET ' +
         'RCOBANO =' + QuotedStr(SBANO.Text) + ',' +
         'RCOBMES =' + QuotedStr(SBMES.Text) + ',' +
         'REPRID  =' + QuotedStr(dblcdRepresentante.Text) + ',' +
         'REPRAPENOM =' + QuotedStr(Trim(edtRepresentante.Text)) + ',' +
         'RCOBFRECEP =' + QuotedStr(dbdtpFRecepcion.Text) + ',' +
         'BANCOID =' + QuotedStr(dblcBanco.Text) + ',' +
         'AGENBCOID =' + QuotedStr(dblcdAgenbco.Text) + ',' +
         'CCBCOID =' + QuotedStr(dblcCuenta.Text) + ',' +
         'RCOBFOPE =' + QuotedStr(dbdtpFOpe.Text) + ',' +
         'RCOBNOPE =' + QuotedStr(dbeNumOpe.Text) + ',' +
         'TMONID =' + QuotedStr(dblcMoneda.Text) + ',' +
         'RCOBMTO =' + DM1.cdsRegCob.FieldByName('RCOBMTO').AsString + ',' +
         'USUARIO =' + QuotedStr(DM1.wUsuario) + ',' +
         'FREG = TO_DATE(SYSDATE),' +
         'HREG = SYSDATE ' +
         'WHERE RCOBID=''' + DM1.cdsRegCob.FieldByName('RCOBID').AsString + ''' AND ' +
         'RCOBANO=''' + DM1.cdsRegCob.FieldByName('RCOBANO').AsString + ''' AND ' +
         'RCOBMES=''' + DM1.cdsRegCob.FieldByName('RCOBMES').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      //Incicio:  HPC_200907_COB - SAR: 2009-0092 - DAD: 2009-0057
      //AUTOR  :  Ricardo Medina
      //FECHA DE CAMBIO: 15/06/2009
      //DESCRIPCION: No se estaba considerando modificaciones en el detalle, se adiciona estos UPDATE
      XSQL := 'UPDATE COB302 '
            + '   SET BANCOID    = ' + QuotedStr(dblcBanco.Text) + ',' +
              '       RCOBNOPE   = ' + QuotedStr(dbeNumOpe.Text) + ',' +
              '       RCOBFOPE   = ' + QuotedStr(dbdtpFOpe.Text) + ',' +
              '       REPRID     = ' + QuotedStr(dblcdRepresentante.Text) + ',' +
              '       REPRAPENOM = ' + QuotedStr(Trim(edtRepresentante.Text)) +
              ' WHERE RCOBID     = ''' + DM1.cdsRegCob.FieldByName('RCOBID').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      XSQL := 'UPDATE COB303 '
            + '   SET BANCOID    = ' + QuotedStr(dblcBanco.Text) + ',' +
              '       RCOBNOPE   = ' + QuotedStr(dbeNumOpe.Text) + ',' +
              '       RCOBFOPE   = ' + QuotedStr(dbdtpFOpe.Text) + ',' +
              '       REPRID     = ' + QuotedStr(dblcdRepresentante.Text) +
              ' WHERE RCOBID     = ''' + DM1.cdsRegCob.FieldByName('RCOBID').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      //Final:  HPC_200907_COB

   End;

End;

Procedure TFRegGlobalCob.GrabaDet1(xInsMod: String);
Begin

   If xInsMod = 'A' Then
   Begin
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
      xSQL := 'INSERT INTO COB302(RCOBESTADO,REPRID,REPRAPENOM,UPAGOABR,RCOBID,DETRCOBID,UPROID,UPAGOID,USEID,TIPPLA,FRCPREPRE,CPAGOID,CPAGOFECHA,RCOBANO,RCOBMES,CPAGOTMON,' +
//Final HPC_201708_COB
         'RCOBANOAPO,RCOBMESAPO,CPAGOMTO,CPAGODEDUC,NRODOCDED,CPAGOLIQ,CPAGOCPTO,FORPAGOID,FPAGOID,' +
         'BANCOID,DOCID,DOCFECHA,CCBCO,TMONID,DOCMTO,ASOTIPID,RCOBNOPE,RCOBFOPE,USUARIO,FREG,HREG) VALUES (' +
         QuotedStr('INICIAL') + ',' +
         QuotedStr(dblcdRepresentante.Text) + ',' +
         QuotedStr(Trim(edtRepresentante.Text)) + ',' +
         QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOABR').AsString) + ',' +
         QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBID').AsString) + ',' +
         QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString) + ',' +
         QuotedStr(dblcuproceso.Text) + ',' +
         QuotedStr(dblcdUPago.Text) + ',' +
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
         QuotedStr(dblcdUgel.Text) + ',' +
         QuotedStr(Trim(tcbTipoPla.Text)) + ',' +
//Final HPC_201708_COB
         QuotedStr(dbdtpFecDocRcp.Text) + ',' +
         QuotedStr(dbeCPagoNum.Text) + ',' +
         QuotedStr(dbdtpCPagoFecha.Text) + ',' +
         QuotedStr(dbeAno.Text) + ',' +
         QuotedStr(dbeMes.Text) + ',' +
         QuotedStr(dblcdMonedaC.Text) + ',' +
         QuotedStr(seAnoApo.Text) + ',' +
         QuotedStr(seMesApo.Text) + ',' +
         DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString + ',' +
         DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsString + ',' +

      QuotedStr(dbeNroDocDeduccion.Text) + ',' +
         DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsString + ',' +

      QuotedStr(dbeCPagoConcepto.Text) + ',' +
         QuotedStr(dblcFRecaudacion.Text) + ',' +
         QuotedStr(dblcFPago.Text) + ',' +
         QuotedStr(dblcChqBanco.Text) + ',' +
         QuotedStr(dbeChqNum.Text) + ',' +
         QuotedStr(dbdtpChqFecha.Text) + ',' +
         QuotedStr(dbeChqCuenta.Text) + ',' +
         QuotedStr(dblcChqMoneda.Text) + ',' +

      DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString + ',' +
         QuotedStr(lblcAsotipid.Text) + ',' +
         QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBNOPE').AsString) + ',' +
         QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBFOPE').AsString) + ',' +
         QuotedStr(DM1.wUsuario) + ',TO_DATE(SYSDATE),SYSDATE)';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
   If xInsMod = 'M' Then
   Begin
      xSQL := 'UPDATE COB302 SET ' +
              '       REPRID   =' + QuotedStr(dblcdRepresentante.Text) + ',' +
              '       REPRAPENOM =' + QuotedStr(Trim(edtRepresentante.Text)) + ',' +
              '       UPAGOABR  =' + QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOABR').AsString) + ',' +
              '       UPROID    =' + QuotedStr(dblcuproceso.Text) + ',' +
              '       UPAGOID   =' + QuotedStr(dblcdUPago.Text) + ',' +
//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
              '       USEID     =' + QuotedStr(dblcdUgel.Text) + ',' +
              '       TIPPLA    =' + QuotedStr(Trim(tcbTipoPla.Text)) + ',' +
//Final HPC_201708_COB
              '       FRCPREPRE =' + QuotedStr(dbdtpFecDocRcp.Text) + ',' +
              '       CPAGOID   =' + QuotedStr(dbeCPagoNum.Text) + ',' +
              '       CPAGOFECHA=' + QuotedStr(dbdtpCPagoFecha.Text) + ',' +
              '       RCOBANO   =' + QuotedStr(dbeAno.Text) + ',' +
              '       RCOBMES   =' + QuotedStr(dbeMes.Text) + ',' +
              '       CPAGOTMON =' + QuotedStr(dblcdMonedaC.Text) + ',' +
              '       RCOBANOAPO=' + QuotedStr(seAnoApo.Text) + ',' +
              '       RCOBMESAPO=' + QuotedStr(seMesApo.Text) + ',' +
              '       CPAGOMTO  =' + DM1.cdsDetRegCob.FieldByName('CPAGOMTO').AsString + ',' +
              '       CPAGODEDUC=' + DM1.cdsDetRegCob.FieldByName('CPAGODEDUC').AsString + ',' +
              '       NRODOCDED =' + QuotedStr(dbeNroDocDeduccion.Text) + ',' +
              '       CPAGOLIQ  =' + DM1.cdsDetRegCob.FieldByName('CPAGOLIQ').AsString + ',' +
              '       CPAGOCPTO =' + QuotedStr(dbeCPagoConcepto.Text) + ',' +
              '       FORPAGOID =' + QuotedStr(dblcFRecaudacion.Text) + ',' +
              '       FPAGOID   =' + QuotedStr(dblcFPago.Text) + ',' +
              '       BANCOID   =' + QuotedStr(dblcChqBanco.Text) + ',' +
              '       DOCID     =' + QuotedStr(dbeChqNum.Text) + ',' +
              '       DOCFECHA  =' + QuotedStr(dbdtpChqFecha.Text) + ',' +
              '       CCBCO     =' + QuotedStr(dbeChqCuenta.Text) + ',' +
              '       TMONID    =' + QuotedStr(dblcChqMoneda.Text) + ',' +
              '       DOCMTO    =' + DM1.cdsDetRegCob.FieldByName('DOCMTO').AsString + ',' +
              '       ASOTIPID  =' + QuotedStr(lblcAsotipid.Text) + ',' +
              '       USUARIO   =' + QuotedStr(DM1.wUsuario) + ',' +
              '       FREG      = TO_DATE(SYSDATE),' +
              '       HREG      = SYSDATE ' +
              ' WHERE RCOBID    =''' + DM1.cdsDetRegCob.FieldByName('RCOBID').AsString + ''' AND ' +
              '       DETRCOBID =''' + DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString + ''' AND ' +
              '       RCOBANO   =''' + DM1.cdsDetRegCob.FieldByName('RCOBANO').AsString + ''' AND ' +
              '       RCOBMES   =''' + DM1.cdsDetRegCob.FieldByName('RCOBMES').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
End;

Procedure TFRegGlobalCob.Z2bbtnEliminarClick(Sender: TObject);
Var
// HPP_200903_COB se agregó formulario COB320
// para la anulación de Registro Global
   nRegCre, nRegApo : Integer;
   sObseva, sOk: String;
// Inicio: HPP_200930_COB por RMEDINA
// Memorándum 789-2009-DM-COB - SAR2009-0700 - DAD-RM-2009-0128
   xArchivo:String;
// Fin: HPP_200930_COB
Begin

   //Inicio: HPP_201114_COB
      Information(Caption, 'Esta opción se ha deshabilitado temporalmente, para consultas comuníquese con Sistemas.');
      Exit;
   //Fin: HPP_201114_COB

// Controla sólo para Nivel 3
   If (DM1.wUsuario = 'JBOCANEGRA') Or (DM1.wUsuario = 'SABAD') Or
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario))
      + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) = 3) Then

   Else
   Begin
      ShowMessage('Opción permitida sólo para el nivel 3 ó Superior ...');
      Exit;
   End;

   If DM1.cdsDetRegCob.RecordCount = 0 Then
   Begin
      ShowMessage(' No Existen Registros a Eliminar ');
      Exit;
   End;

// Si se encuentra Anulado no hace nada
   If DM1.cdsRegCob.FieldByName('RCOBESTADO').AsString = 'ANULADO' Then
   Begin
      Information(Caption, 'Sólo pueden ser Eliminados los Documentos que se Encuentren en Estado Inicial o Aceptados');
      Exit;
   End;

// Si está Aceptado
   If DM1.cdsDetRegCob.FieldByName('RCOBESTADO').AsString = 'ACEPTADO' Then
   Begin

// Inicio: HPP_200930_COB por RMEDINA
// Memorándum 789-2009-DM-COB - SAR2009-0700 - DAD-RM-2009-0128
{
   // Verifica que no se haya transferido cobranza al Cob310
      xSQL := 'SELECT COUNT(*) NUMREG FROM COB304 '
         + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
         + ' and DETRCOBID=' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString)
         + ' and ( NVL(FTRANSFC,''N'')=''S'' OR NVL(FTRANSFAC,''N'')=''S'' )';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;
}
   //DESCRIPCION:  Se Verifica que el nombre del archivo en el Autdisk exita para poder sacar el flag de transferido
      XSQL:= 'SELECT ARCHIVO, COUNT(*) NUMREG FROM COB303 '
           + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
           + ' and DETRCOBID=' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString)
           + ' group by ARCHIVO';
      Dm1.cdsQry6.Close;
      Dm1.cdsQry6.DataRequest(xSql);
      Dm1.cdsQry6.Open;
      nRegCre := DM1.cdsQry6.FieldByName('NUMREG').AsInteger;
      xArchivo:= '';
      If Length(trim(Dm1.cdsQry6.FieldByName('Archivo').AsString))>0 Then
      Begin
         xArchivo:=Trim(Dm1.cdsQry6.FieldByName('Archivo').AsString);
         Xsql:='Select Archivo From COB312 Where Archivo='''+xArchivo+''' ';
         Dm1.cdsQry6.Close;
         Dm1.cdsQry6.DataRequest(xSql);
         Dm1.cdsQry6.Open;
         If Dm1.cdsQry6.RecordCount=0 then
         Begin
            ShowMessage('Verifique, el nombre de ARCHIVO del Autdisk es diferente al del Registro Global');
            exit;
         End;
      End;
// Fin: HPP_200930_COB

      // HPP_200903_COB se agregó formulario COB320
      // para la anulación de Registro Global
      xSQL := 'SELECT COUNT(*) NUMREG FROM APO301 '
            + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
            + ' and DETRCOBID=' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString);
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;
      nRegApo := DM1.cdsQry6.FieldByName('NUMREG').AsInteger;
      sObseva := '.';
      sOk := ' ';
      If nRegApo > 0 Then
      Begin
         Try
            FRegGlobalCob_Anu := TFRegGlobalCob_Anu.Create(self);
            FRegGlobalCob_Anu.ShowModal;
         Finally
            sOk := FRegGlobalCob_Anu.sOk;
            sObseva := FRegGlobalCob_Anu.mAnula.Text;
            FRegGlobalCob_Anu.Free;
         End;
         If sOk = 'N' Then Exit;
      End
      Else
         If nRegCre > 0 Then
         Begin
            Screen.Cursor := crDefault;
            If Not Question(Caption, 'Registro ya fue Descargado( CRE310 ).' + #13 + '¿Está Seguro de Anular Descargo?') Then Exit;
            sOk := 'C';
         End;

      If sOk = 'C' Then
         If Not Question(Caption, 'Registro esta Aceptado. Está Seguro de Eliminar Detalle de Registro Global' + #13 + #13 + '¿Desea Continuar?') Then Exit;

      Screen.Cursor := crHourGlass;


// Inicio: HPP_200930_COB por RMEDINA
// Memorándum 789-2009-DM-COB   -   SAR2009-0700   -  DAD-RM-2009-0128
// Se Verifica que el nombre del archivo en el Autdisk exita para poder sacar el flag de transferido
     //CODIGO ANTERIROR:
     {xSQL := 'SELECT ARCHIVO, COUNT(*) NUMREG FROM COB304 '
         + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
         + ' and DETRCOBID=' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString)
         + ' group by ARCHIVO';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSQL);
      DM1.cdsQry6.Open;
      // se retorna los flags para volver a transferir el autdisk
      If DM1.cdsQry6.RecordCount > 0 Then
      Begin
         xSQL := 'Update COB310 SET FL_TRANSF=NULL '
            + 'WHERE ARCHIVO='''+DM1.cdsQry6.FieldByName('ARCHIVO').AsString+'''';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         xSQL := 'Update COB312 SET FL_TRANSF=NULL '
            + 'WHERE ARCHIVO=''' + DM1.cdsQry6.FieldByName('ARCHIVO').AsString + '''';
         Try
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('Problemas al revertir Saldos')
         End;
      End;}

      If Length(Trim(xArchivo)) > 0 Then
      Begin
         xSQL := 'Update COB310 SET FL_TRANSF=NULL WHERE ARCHIVO='''+xArchivo+'''';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         xSQL := 'Update COB312 SET FL_TRANSF=NULL WHERE ARCHIVO='''+xArchivo+'''';
         Try
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
            ShowMessage('Problemas al revertir Saldos')
         End;
      End;
// Fin: HPP_200930_COB

      xSQL := 'BEGIN db2admin.SP_ANULA_COBRANZA_GLOBAL( '
         + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString) + ', '
         + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString) + ', '
         + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBFOPE').AsString) + ', '
         + QuotedStr(DM1.cdsDetRegCob.FieldByName('RCOBNOPE').AsString) + ', '
         + QuotedStr(DM1.wUsuario) + ', sysdate, ' + QuotedStr(sObseva) + ' '
         + ' ); '
         + 'END;';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      // Se elimina detalle
      xSQL := 'DELETE FROM COB302 '
         + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
         + ' and DETRCOBID=' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      xSQL := 'DELETE FROM COB303 '
         + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
         + ' and DETRCOBID=' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      xSQL := 'DELETE FROM COB304 '
         + 'WHERE RCOBID=' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
         + ' and DETRCOBID=' + QuotedStr(DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      // Se cambia el estado del registro a Inicial
      If DM1.cdsRegCob.FieldByname('RCOBESTADO').AsString <> 'INICIAL' Then
      Begin
         xBorrar := '1';
         DM1.cdsRegCob.Edit;
         DM1.cdsRegCob.FieldByname('RCOBESTADO').AsString := 'INICIAL';
         DM1.cdsRegCob.Post;
         DM1.AplicaDatos(DM1.cdsRegCob, 'REGCOB');
         xBorrar := '0';
      End;
      Screen.Cursor := crDefault;
      DM1.cdsDetRegCob.Refresh;
      bbtnNuevo.Enabled := True;
      ShowMessage('¡ Anulación Completada !');
   End;
End;

// Inicio: SPP_201312_COB       : 26/09/2013 - Registro de Cheques anulados
procedure TFRegGlobalCob.bbtnAnulaCHQClick(Sender: TObject);
var
  xSQL : String;
begin
  if DM1.cdsDetRegCob.FieldByName('RCOBID').AsString='' then Exit;
  xSQL:='Select numreg from cob_che_anu '
       +'where rcobid='''   +DM1.cdsDetRegCob.FieldByName('RCOBID').AsString   +''' '
       + ' and detrcobid='''+DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString+'''';
  DM1.cdsAsoBanAct.Close;
  DM1.cdsAsoBanAct.DataRequest( xSQL );
  DM1.cdsAsoBanAct.Open;

  if DM1.cdsAsoBanAct.RecordCount>0 then
  begin
      Information(Caption, 'El cheque ya fue Anulado. Verificar...');
      Exit;
  end;

  Try
     FRegCheAnu := TFRegCheAnu.Create(Self);
     FRegCheAnu.ShowModal;
  Finally
     FRegCheAnu.Free;
     dbgDetRegGlobal.RedrawGrid;
  End;
end;
// Fin: SPP_201312_COB       : 26/09/2013 - Registro de Cheques anulados

// Inicio: SPP_201312_COB       : 26/09/2013 - Registro de Cheques anulados
procedure TFRegGlobalCob.dbgDetRegGlobalCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
var
  xSQL : String;
begin
  xSQL:='Select numreg from cob_che_anu '
       +'where rcobid='''   +DM1.cdsDetRegCob.FieldByName('RCOBID').AsString   +''' '
       + ' and detrcobid='''+DM1.cdsDetRegCob.FieldByName('DETRCOBID').AsString+'''';
  DM1.cdsAsoBanAct.Close;
  DM1.cdsAsoBanAct.DataRequest( xSQL );
  DM1.cdsAsoBanAct.Open;
  if DM1.cdsAsoBanAct.RecordCount>0 then
  begin
     if Field.FieldName='CPAGOMTO' then
        ABrush.Color := clRed;
  end;
end;
// Fin: SPP_201312_COB       : 26/09/2013 - Registro de Cheques anulados

//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
procedure TFRegGlobalCob.dblcdUgelExit(Sender: TObject);
begin
If Dm1.cdsUSES.Locate('UPROID;UPAGOID;USEID',VarArrayof([dblcUProceso.Text,dblcdUPago.Text,dblcdUgel.Text]),[]) Then
     dbeUseid.Text := Dm1.cdsUSES.FieldByName('USENOM').AsString
Else dbeUseid.Text := '';
end;
//Final HPC_201708_COB

//Inicio HPC_201708_COB
//Se adiciona campos al formulario del detalle del registro global de cobranzas
procedure TFRegGlobalCob.lblcAsotipidExit(Sender: TObject);
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
procedure TFRegGlobalCob.lblcAsotipidChange(Sender: TObject);
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

End.

