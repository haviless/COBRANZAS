unit COB313;

//Se Reemplazó DM1.cdsDevolucionCob por DM1.cdsRecauda

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask, wwdbedit,
  ExtCtrls, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid, Wwdbdlg,
  Wwdbspin, Buttons,DB, ComCtrls, wwriched, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,mant;

type
  TFDevolCuota = class(TForm)
    pnlCabecera: TPanel;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    dbgCreditos: TwwDBGrid;
    pnlCuotas: TPanel;
    StaticText2: TStaticText;
    dbgDevolver: TwwDBGrid;
    Z2bbtnNuevo: TfcShapeBtn;
    dbgDetReclamo: TwwDBGrid;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
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
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel31: TppLabel;
    ppDBText17: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppLabel29: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    pnlcta: TPanel;
    wwDBEdit3: TwwDBEdit;
    dbeNroCta: TwwDBEdit;
    dbeBco: TwwDBEdit;
    dbeSitCta: TwwDBEdit;
    dblcBcoId: TwwDBLookupCombo;
    Panel2: TPanel;
    dbeDevolucion: TwwDBEdit;
    pnlInicio: TPanel;
    Label54: TLabel;
    dbeAsoNom: TwwDBEdit;
    dbeCodigoModular: TwwDBEdit;
    dbeAsoId: TwwDBEdit;
    dblcdUPro: TwwDBLookupComboDlg;
    dbeUPro: TwwDBEdit;
    dblcdUPag: TwwDBLookupComboDlg;
    dbeUPag: TwwDBEdit;
    dblcdUse: TwwDBLookupComboDlg;
    dbeUSE: TwwDBEdit;
    dblcSitCta: TwwDBLookupCombo;
    Panel5: TPanel;
    Label2: TLabel;
    lblFecConcl: TLabel;
    dblcTMoneda: TwwDBLookupCombo;
    dblcFormaPago: TwwDBLookupCombo;
    dbeMontoDevoluc: TwwDBEdit;
    dblcdAgencia: TwwDBLookupComboDlg;
    dbmResultado: TwwDBEdit;
    dblcTCredito: TwwDBLookupCombo;
    dbeNCredito: TwwDBEdit;
    dblcBanco: TwwDBLookupCombo;
    dbeCuota: TwwDBEdit;
    dbeCuenta: TwwDBEdit;
    dbdtpFResultado: TwwDBDateTimePicker;
    bbtnCancelar: TfcShapeBtn;
    bbtnAceptar: TfcShapeBtn;
    dbeTCredito: TwwDBEdit;
    lblBanco: TLabel;
    lblAgencia: TLabel;
    dbeMoneda: TwwDBEdit;
    dbeFormaPago: TwwDBEdit;
    dbeBanco: TwwDBEdit;
    dbeAgencia: TwwDBEdit;
    lblNCuenta: TLabel;
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcTMonedaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcFormaPagoExit(Sender: TObject);
    procedure dblcdAgenciaExit(Sender: TObject);
    procedure dblcBancoExit(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnNuevoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDevolverDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgCreditosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgCreditosEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgDevolverDblClick(Sender: TObject);
    procedure dbgCreditosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgDevolverMouseDown(Sender: TObject; Button: TMouseButton;
          Shift: TShiftState; X, Y: Integer);
    procedure dbgDetReclamoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgDetReclamoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgDetReclamoEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dblcdCodigoDropDown(Sender: TObject);
    procedure wwDBLookupComboDlg1Exit(Sender: TObject);
    procedure dblcTCreditoExit(Sender: TObject);
    procedure dbeMontoDevolucExit(Sender: TObject);
    procedure dbeAsoNomExit(Sender: TObject);
    procedure dbeCodigoModularExit(Sender: TObject);
    procedure dbdtpFResultadoExit(Sender: TObject);
    procedure dbmResultadoExit(Sender: TObject);
    procedure dbeCuentaExit(Sender: TObject);
    procedure dbgDevolverKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    //** VARIABLES PARA ACTUALIZAR CAJA
    xDocid,xEcanomm,xTDiarid,xCcBcoid,xTmonid,xBancoid,xFpagoid,xAuxid  : String;
    xVouch,xAuxRuc,xMaxNumComp,xNodoc,xCuentaid,xCptoid,xClauxid,xCiaid : String;
    xFechaCom : TDate;
    xECTCAMB,cPgoOri,cPgoLoc,cPgoExt : Double;
    //**

    //xDevol:string;
    //i:integer;
    xDevMto : String;
    HacerDrag : Boolean;
    xCreano, xCremes,xEstado0,xEstado1,xEstado2,xEstid0,xEstid1,xEstid2 : String;
    xTCambio : Double;
    procedure CargaFiltro(xCampo : String);
    procedure LlenarDatosAsociado;
    procedure LlenarDatosDevolucionDet;
    Procedure Actualiza;
    procedure ActuCaja301;
  public
    sSQL, xCodAux : String;

//    procedure GrabaTransaccion(Sender: TObject);
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
  end;

var
  FDevolCuota : TFDevolCuota;
  xCrea, wActualizado : Boolean;
  xWhere, xUse, xAsoApeNom, wFuente, wModo, wModo1 : String;
  xSaldoAnt : Real;

implementation

USES MsgDlgs, COBDM1, COB001;
{$R *.DFM}

procedure TFDevolCuota.Z2bbtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TFDevolCuota.FormActivate(Sender: TObject);
var
 xFecha,xSQL : String;
begin
   //** PARA ACTUALIZAR CAJA STANDAR
   dm1.cdsCia.Close;
   dm1.cdsCia.DataRequest('SELECT * FROM TGE101 WHERE CIARETIGV=''N''');
   dm1.cdsCia.Open;
   xCiaid := dm1.cdsCia.FieldByName('CIAID').AsString;
   //**

   xFecha := DateToSTr(xFechasys);
   DM1.RecUltTipoCambio(xFecha);
   xTCambio := DM1.cdsQry.FieldByName(DM1.wTCCompra).AsFloat;

   //** CANCELADO
   xEstado0 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Y'),'ESTDES');
   xEstid0  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** CANCELADO A
   xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Z'),'ESTDES');
   xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
   //** PARCIAL
   xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
   xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;


   DM1.cdsCuotas.Close;
   DM1.cdsTransDevol.Close;
   DM1.cdsReclamoDCob.Close;

   // Llena cds tipo de credito
   dblctcredito.Selected.Clear;
   dblctcredito.Selected.Add('TIPCREID'#9'10'#9'Id');
   dblctcredito.Selected.Add('TIPCREDES'#9'40'#9'Descripción');

   // Llena cds tipo de moneda
   dblctmoneda.Selected.Clear;
   dblctmoneda.Selected.Add('TMONID'#9'2'#9'Id');
   dblctmoneda.Selected.Add('TMONDES'#9'30'#9'Descripción');

   dbeAsoNom.Clear;
   dbeCodigoModular.Clear;
   dbeAsoId.Clear;

   dblcdUPro.Clear;
   dblcdUPag.Clear;
   dblcdUse.Clear;

   dbeUPro.Clear;
   dbeUPag.Clear;
   dbeUSE.Clear;

   dbeBco.Clear;
   dbeNroCta.Clear;
   dbeSitCta.Clear;

   dblcBcoId.Clear;
   dblcSitCta.Clear;

   dbeAsoNom.Enabled        := True;
   dbeCodigoModular.Enabled := True;

   If DM1.wModo = 'M' Then
    begin
     DM1.cdsDevolucion.Edit;

     pnlInicio.Enabled     := False;
     pnlCta.Enabled        := False;
     HacerDrag             := False;

     z2bbtnaceptar.Enabled := True;
     z2bbtncancel.Enabled  := True;
     z2bbtnnuevo.Enabled   := False;

     xSQL := 'SELECT * FROM APO201'
            +' WHERE ASOID ='+QuotedStr(DM1.cdsDevolucion.FieldByName('ASOID').AsString);

     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSQL);
     DM1.cdsQry.Open;
     If DM1.cdsQry.RecordCount = 1 Then
      LlenarDatosAsociado;

      dbgCreditos.SetFocus;
   end;

   If DM1.wModo = 'A' Then
    begin
     DM1.cdsDevolucion.Insert;

     pnlInicio.Enabled     := True;
     pnlCta.Enabled        := False;
     HacerDrag             := True;

     Z2bbtnAceptar.Enabled := True;
     Z2bbtnCancel.Enabled  := True;
     Z2bbtnNuevo.Enabled   := False;

     // Cuotas no reclamadas
     xSQL := 'SELECT TIPCREID, CREDID, CRECUOTA, CREANO, CREMES,'
           +' FORPAGOID, TMONABR,TMONID, CREMTO, CREMTOEXC, CREFDEV,'
           +' CREMONLOC, CREMONEXT, BANCOID,CREESTADO'
           +' FROM CRE302'
           +' WHERE ASOID ='+QuotedStr('XXX')
           + ' AND (CREESTID = '+quotedstr(xEstid0)+' OR CREESTID ='+quotedstr(xEstid1)
           +' OR CREESTID ='+quotedstr(xEstid2)+')'
           +' AND CREFDEV IS NULL'
           +' AND CREFRECL IS NULL';

     DM1.cdsCuotas.Close;
     DM1.cdsCuotas.IndexFieldNames := 'TIPCREID; CREDID; CRECUOTA';
     DM1.cdsCuotas.DataRequest(xSQL);
     DM1.cdsCuotas.Open;

     dbgCreditos.Selected.Clear;
     //dbgCreditos.Selected.Add('TIPCREID'#9'7'#9'Tipo~Crédito');
     dbgCreditos.Selected.Add('CREDID'#9'15'#9'Crédito');
     dbgCreditos.Selected.Add('CRECUOTA'#9'3'#9'Cuo');
     dbgCreditos.Selected.Add('CREANO'#9'4'#9'Año');
     dbgCreditos.Selected.Add('CREMES'#9'4'#9'Mes');
     dbgCreditos.Selected.Add('FORPAGOID'#9'2'#9'FP');
     dbgCreditos.Selected.Add('TMONID'#9'3'#9'Mon');
     dbgCreditos.Selected.Add('CREMTO'#9'7'#9'Monto~Cuota');
     dbgCreditos.Selected.Add('CREMTOEXC'#9'7'#9'Monto~Exceso');
     dbgCreditos.Selected.Add('CREESTADO'#9'15'#9'Estado');
     dbgCreditos.ApplySelected;

     TNumericField(DM1.cdsCuotas.FieldByName('CREMTOEXC')).DisplayFormat := '###,###,##0.00';
     TNumericField(DM1.cdsCuotas.FieldByName('CREMTOEXC')).EditFormat    := '########0.00';
     dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas,'SUM(CREMTOEXC)',''),ffNumber, 10, 2);

     // Reclamos por Cuotas en Trámite
     xSQL := 'SELECT * FROM COB308'
            +' WHERE ASOID ='+QuotedStr('XXX')
            +' AND RECLSITID ='+QuotedStr('01');

     DM1.cdsReclamoDCob.Close;
     DM1.cdsReclamoDCob.IndexFieldNames := 'RECLID';
     DM1.cdsReclamoDCob.DataRequest(xSQL);
     DM1.cdsReclamoDCob.Open;

     dbgDetReclamo.Selected.Clear;
     dbgDetReclamo.Selected.Add('RECLID'#9'7'#9'Id Dev.');
     dbgDetReclamo.Selected.Add('RECLIDD'#9'5'#9'Item');
     dbgDetReclamo.Selected.Add('TIPCREID'#9'6'#9'Tipo~Crédito');
     dbgDetReclamo.Selected.Add('CREDID'#9'12'#9'Crédito');
     dbgDetReclamo.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
     dbgDetReclamo.Selected.Add('CREANO'#9'4'#9'Año');
     dbgDetReclamo.Selected.Add('CREMES'#9'4'#9'Mes');
     dbgDetReclamo.Selected.Add('FORPAGOID'#9'5'#9'Forma~Pago');
     dbgDetReclamo.Selected.Add('CREMONTO'#9'10'#9'Monto~Pago');
     dbgDetReclamo.Selected.Add('RECLMONTO'#9'10'#9'Monto~Reclamo');
     dbgDetReclamo.ApplySelected;

     TNumericField(DM1.cdsReclamoDCob.FieldByName('RECLMONTO')).DisplayFormat := '###,###,##0.00';
     TNumericField(DM1.cdsReclamoDCob.FieldByName('RECLMONTO')).EditFormat    := '########0.00';
     TNumericField(DM1.cdsReclamoDCob.FieldByName('CREMONTO')).DisplayFormat  := '###,###,##0.00';
     TNumericField(DM1.cdsReclamoDCob.FieldByName('CREMONTO')).EditFormat     := '########0.00';

     dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)',''), ffNumber, 10, 2);

     // Devoluciones efectuadas
     xSQL := 'SELECT COB309.*,'' '' FLGDEVMTO FROM COB309'
            +' WHERE DEVID ='+QuotedStr('XXX');

     DM1.cdsRecauda.Filter   := '';
     DM1.cdsRecauda.Filtered := False;
     DM1.cdsRecauda.IndexFieldNames := '';
     DM1.cdsRecauda.Close;
     DM1.cdsRecauda.DataRequest(xSQL);
     DM1.cdsRecauda.Open;
     DM1.cdsRecauda.IndexFieldNames := 'DEVIDIT';

     dbgDevolver.Selected.Clear;
     dbgDevolver.Selected.Add('DEVIDIT'#9'7'#9'Item');
    // dbgDevolver.Selected.Add('TIPCREID'#9'7'#9'Tipo~Crédito');
     dbgDevolver.Selected.Add('CREDID'#9'15'#9'Crédito');
     dbgDevolver.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
     dbgDevolver.Selected.Add('CREANO'#9'4'#9'Año');
     dbgDevolver.Selected.Add('CREMES'#9'4'#9'Mes');
     dbgDevolver.Selected.Add('TMONID'#9'6'#9'Tipo~Moneda');
     //dbgDevolver.Selected.Add('CREMONTO'#9'10'#9'Monto~Pago');
     dbgDevolver.Selected.Add('DEVMTO'#9'10'#9'Monto~Devol.');
     dbgDevolver.Selected.Add('FORPAGOID'#9'5'#9'Forma~Pago');
     dbgDevolver.ApplySelected;

     TNumericField(DM1.cdsRecauda.FieldByName('DEVMTO')).DisplayFormat := '###,###,##0.00';
     TNumericField(DM1.cdsRecauda.FieldByName('DEVMTO')).EditFormat    := '########0.00';
     dbgDevolver.ColumnByName('DEVMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsRecauda, 'SUM(DEVMTO)', ''), ffNumber, 10, 2);

     xSQL := 'SELECT MAX(CAST(DEVID AS INTEGER)) NUEVODEV FROM COB316';
     DM1.FiltraCds(DM1.cdsQry, xSQL);
     If DM1.cdsQry.FieldByName('NUEVODEV').AsString <> '' Then
      DM1.cdsDevolucion.FieldByName('DEVID').AsString :=
      DM1.StrZero( IntToStr(StrToInt(DM1.cdsQry.FieldByName('NUEVODEV').AsString)+1), DM1.cdsDevolucion.FieldByName('DEVID').Size)
     Else
       DM1.cdsDevolucion.FieldByName('DEVID').AsString :=
       DM1.StrZero('1', DM1.cdsDevolucion.FieldByName('DEVID').Size);

      dbeAsoNom.SetFocus;
   end;
end;

procedure TFDevolCuota.dblcTMonedaExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   DM1.cdsTMone.SetKey;
   DM1.cdsTMone.FieldByName('TMONID').AsString := dblctmoneda.Text;
   If not DM1.cdsTMone.GotoKey Then
    begin
     Beep;
     MessageDlg('Tipo de Moneda no Válida', mtInformation, [mbOk], 0);
     dbeMoneda.Text := '';
     dblcTMoneda.SetFocus;
     Exit;
    end;
   dbeMoneda.Text := DM1.cdsTMone.FieldByName('TMONDES').AsString;
end;

procedure TFDevolCuota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{   DM1.cdsDevolucion.Cancel;
   DM1.cdsReclamoDCob.Cancel;
   DM1.cdsReclamoDCob.Close;
   DM1.cdsCuotas.Cancel;
   DM1.cdsCuotas.Close;
   DM1.cdsRecauda.Cancel;
   DM1.cdsRecauda.Close;
   pnlCuotas.Visible := False;}
   DM1.cdsDevolucion.CancelUpdates;
   DM1.cdsReclamoDCob.CancelUpdates;
   DM1.cdsReclamoDCob.Close;
   DM1.cdsCuotas.CancelUpdates;
   DM1.cdsCuotas.Close;
{   DM1.cdsDevolucionCob.Cancel;
   DM1.cdsDevolucionCob.Close;}
   DM1.cdsRecauda.CancelUpdates;
   DM1.cdsRecauda.Close;
   pnlCuotas.Visible := False;
end;


procedure TFDevolCuota.dblcFormaPagoExit(Sender: TObject);
var
 xSql : String;
begin
   If bbtnCancelar.Focused Then Exit;

   DM1.cdsFormaPago.SetKey;
   DM1.cdsFormaPago.FieldByName('FORPAGOID').AsString := dblcFormaPago.Text;
   If not DM1.cdsFormaPago.GotoKey Then
    begin
     Beep;
     MessageDlg('Forma de Pago No Válida', mtInformation, [mbOk], 0);
     dbeFormaPago.Text := '';
     dblcFormaPago.SetFocus;
     Exit;
    end
   Else
    begin
     If (DM1.cdsFormaPago.FieldByName('TIPO').AsString = 'E') Then // Efectivo
      begin
       lblBanco.Visible     := False;
       dblcBanco.Visible    := False;
       //** luego ver como hacerlo variable, el 15 me indica caja
       xSql := 'SELECT * FROM TGE105 WHERE BANCOID ='+quotedstr('15');
       dm1.cdsBcos.Close;
       dm1.cdsBcos.DataRequest(xSql);
       dm1.cdsBcos.Open;
       dblcBanco.Text := '15';       
       dblcBanco.OnExit(dblcBanco);
       dbeBanco.Visible     := False;
       lblAgencia.Visible   := False;
       dblcdAgencia.Visible := False;
       dbeAgencia.Visible   := False;
       lblNCuenta.Visible   := False;
       dbeCuenta.Visible    := False;
      end
     Else If (DM1.cdsFormaPago.FieldByName('TIPO').AsString = 'D') Then // Déposito
      begin
       xSql := 'SELECT * FROM TGE105';
       dm1.cdsBcos.Close;
       dm1.cdsBcos.DataRequest(xSql);
       dm1.cdsBcos.Open;
       lblBanco.Visible     := True;
       dblcBanco.Visible    := True;
       dbeBanco.Visible     := True;
       lblAgencia.Visible   := False;
       dblcdAgencia.Visible := False;
       dbeAgencia.Visible   := False;
       lblNCuenta.Visible   := True;
       dbeCuenta.Visible    := True;
      end
     Else  // Giro
      begin
       lblBanco.Visible     := True;
       dblcBanco.Visible    := True;
       dbeBanco.Visible     := True;
       lblAgencia.Visible   := True;
       dblcdAgencia.Visible := True;
       dbeAgencia.Visible   := True;
       lblNCuenta.Visible   := False;
       dbeCuenta .Visible   := False;
      end;
   end;
   dbeFormaPago.Text := DM1.cdsFormaPago.FieldByName('FORPAGODES').AsString;
end;

procedure TFDevolCuota.dblcdAgenciaExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   DM1.cdsAgenciaBco.SetKey;
   DM1.cdsAgenciaBco.FieldByName('BANCOID').AsString   := dblcBanco.Text;
   DM1.cdsAgenciaBco.FieldByName('AGENBCOID').AsString := dblcdAgencia.Text;
   If not DM1.cdsAgenciaBco.GotoKey Then
    begin
     Beep;
     MessageDlg('Agencia no es Válida', mtInformation, [mbOk], 0);
     dbeAgencia.Text := '';
     dblcdAgencia.SetFocus;
     Exit;
    end;
   dbeAgencia.Text := DM1.cdsAgenciaBco.FieldByName('AGENBCODES').AsString;
end;

procedure TFDevolCuota.dblcBancoExit(Sender: TObject);
var
 xSql : String;
begin
   If bbtnCancelar.Focused Then Exit;

   dbeBanco.Text := DM1.cdsBcos.FieldByName('BANCONOM').AsString;
   DM1.cdsAgenciaBco.Filtered := False;
   DM1.cdsAgenciaBco.Filter   := 'BANCOID ='+QuotedStr(dblcBanco.Text);
   DM1.cdsAgenciaBco.Filtered := True;

   xBancoid := dblcBanco.text;
   xClauxid := 'AS'; //dm1.cdsBcos.fieldByName('CLAUXID').AsString;
   //xAuxid   := dm1.cdsBcos.fieldByName('AUXID').AsString;
   //xWhere:= 'CLAUXID = '+quotedstr(xClauxid)+' AND AUXID ='+quotedstr(xAuxid);
   //xAuxRuc  := DM1.DisplayDescrip('prvSQL','CNT201','AUXRUC',xWhere,'AUXRUC');
   DM1.FiltraCDS(DM1.cdsCBcos, 'SELECT * FROM TGE106 WHERE BANCOID='+
                 quotedstr(dblcBanco.text)+' AND CIAID='+quotedstr(dm1.cdsCia.FieldByName('CIAID').AsString));
   xCcBcoid := DM1.cdsCBcos.FieldByName('CCBCOID').AsString;
   xTmonid := DM1.cdsCBcos.FieldByName('TMONID').AsString;
   xVouch  := DM1.cdsCBcos.FieldByName('CCBCOVOUCH').AsString;
   xSql := 'select cptoid,cuentaid from caja201 where CPTOEQUI ='+quotedstr('DEVCRECUO');
   dm1.cdsqry.close;
   dm1.cdsqry.datarequest(xSql);
   dm1.cdsqry.open;
   xCptoid := dm1.cdsqry.FieldByName('CPTOID').AsString; //DM1.cdsCBcos.FieldByName('CPTOID').AsString;
   xCuentaid := dm1.cdsqry.FieldByName('CUENTAID').AsString; //DM1.cdsCBcos.FieldByName('CTAPRINC').AsString;
end;

procedure TFDevolCuota.bbtnAceptarClick(Sender: TObject);
begin
   If dblcBanco.Visible Then
    begin
     If Length(dblcBanco.Text) = 0 Then
      begin
       Beep;
       MessageDlg('Ingrese el Banco', mtInformation, [mbOk], 0);
       dblcBanco.SetFocus;
       Exit;
      end;
    end;

   If dblcdAgencia.Visible Then
    begin
     If Length(dblcdAgencia.Text) = 0 Then
      begin
       Beep;
       MessageDlg('Ingrese la Agencia', mtInformation, [mbOk], 0);
       dblcdAgencia.SetFocus;
       Exit;
      end;
    end;

   If dbeCuenta.Visible Then
    begin
     If Length(dbeCuenta.Text) = 0 Then
      begin
       Beep;
       MessageDlg('Ingrese el Nro. de la Cuenta', mtInformation, [mbOk], 0);
       dbeCuenta.SetFocus;
       Exit;
      end;
    end;

   If (wFuente = 'CUO') Then
    begin
     DM1.cdsCuotas.Edit;
     DM1.cdsCuotas.FieldByName('CREFDEV').AsString := 'S';
     DM1.cdsCuotas.Post;
    end;

   If (wFuente = 'REC') Then
    begin
     DM1.cdsReclamoDCob.Edit;
     DM1.cdsReclamoDCob.FieldByName('COBFDEV').AsString := 'S';
     DM1.cdsReclamoDCob.Post;
    end;

   DM1.cdsRecauda.Edit;
   DM1.cdsRecauda.FieldByName('FREG').AsDateTime  := Date;
   DM1.cdsRecauda.FieldByName('HREG').AsDateTime  := Time;
   DM1.cdsRecauda.FieldByName('USUARIO').AsString := DM1.wUsuario;
   DM1.cdsRecauda.FieldByName('DEVMTO').AsString := dbeMontoDevoluc.Text;
//   cdsPost(DM1.cdsRecauda);
   DM1.cdsRecauda.Post;

   dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas, 'SUM(CREMTOEXC)', ''), ffNumber, 10, 2);
   dbgCreditos.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)', ''), ffNumber, 10, 2);
   dbgCreditos.ColumnByName('DEVMTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsRecauda, 'SUM(DEVMTO)', ''), ffNumber, 10, 2);


   TNumericField(DM1.cdsRecauda.FieldByName('DEVMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsRecauda.FieldByName('DEVMTO')).EditFormat    := '########0.00';
   dbgDevolver.ColumnByName('DEVMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsRecauda,'SUM(DEVMTO)',''),ffNumber, 10, 2);

   pnlCuotas.Visible   := False;
   pnlCabecera.Enabled := True;
end;

procedure TFDevolCuota.bbtnCancelarClick(Sender: TObject);
begin
   DM1.cdsReclamoDCob.CancelUpdates;
   DM1.cdsCuotas.CancelUpdates;
   DM1.cdsRecauda.CancelUpdates;
   pnlCuotas.Visible   := False;
   pnlCabecera.Enabled := True;
end;

procedure TFDevolCuota.Z2bbtnAceptarClick(Sender: TObject);
var
   xSQL, xWhere, xNroOpe, xTipCam : String;
   xMtoCob,xMtoExc, xMtosld, xIntPac, xAmoPac, xFlaPac, xIntPag, xAmoPag, xFlaPag, xMtoPag, xMtoPac : Double;
begin
   If DM1.cdsRecauda.RecordCount = 0 Then
    begin
     Beep;
     MessageDlg('Falta Ingresar el Detalle de la Devolución!', mtInformation, [mbOk], 0);
     Exit;
    end;

   Screen.Cursor := crHourGlass;

   DM1.cdsDevolucion.FieldByName('ASOID').AsString      := dbeAsoId.Text;
   DM1.cdsDevolucion.FieldByName('USEID').AsString      := dblcdUse.Text;
   DM1.cdsDevolucion.FieldByName('UPROID').AsString     := dblcdUPro.Text;
   DM1.cdsDevolucion.FieldByName('UPAGOID').AsString    := dblcdUPag.Text;
   DM1.cdsDevolucion.FieldByName('ASOCODMOD').AsString  := dbeCodigoModular.Text;

   DM1.cdsDevolucion.FieldByName('USUARIO').AsString    := DM1.wUsuario;
   DM1.cdsDevolucion.FieldByName('FREG').AsDateTime     := Date;
   DM1.cdsDevolucion.FieldByName('HREG').AsDateTime     := Date+SysUtils.Time;

   DM1.cdsDevolucion.FieldByName('RECLTMONID').AsString := 'N';
   DM1.cdsDevolucion.FieldByName('RECLTOTAL').AsFloat   := DM1.OperClientDataSet(DM1.cdsRecauda, 'SUM(DEVMTO)', '');
   DM1.AplicaDatos(DM1.cdsDevolucion, '');
   DM1.cdsRecauda.Edit;
   DM1.AplicaDatos(DM1.cdsRecauda, '');

   DM1.cdsCuotas.Edit;
   DM1.AplicaDatos(DM1.cdsCuotas, '');

//   DM1.cdsTransacciones.Edit;
//   DM1.AplicaDatos(DM1.cdsTransacciones, '');

   // IDENTIFICACION DE OPERACION : FECHA Y NUMERO(ABONO) ?

   // tipo de cambio : Compra
   xWhere := 'TMONID ='+QuotedStr('D')+
           ' AND FECHA = '+QuotedStr(FormatDateTime(wFormatFecha,Date));
   If Length(DM1.DisplayDescrip('prvTGE', 'TGE107',  'TCAMVPC', xWhere, 'TCAMVPC'))>0 Then
      xTipCam := DM1.cdsQry.FieldByName('TCAMVPC').AsString
   Else xTipCam := '0';

   DM1.cdsRecauda.First;
   While not DM1.cdsRecauda.EOF do
    begin
      // Actualiza estado de devolución

      // Verifica si es una devolución x movimiento de pago
     xWhere := 'TIPCREID ='+QuotedStr(DM1.cdsRecauda.FieldByName('TIPCREID').AsString)
              +' AND CREDID='+QuotedStr(DM1.cdsRecauda.FieldByName('CREDID').AsString)
              +' AND CRECUOTA='+DM1.cdsRecauda.FieldByName('CRECUOTA').AsString
              +' AND NROOPE='+QuotedStr(DM1.cdsRecauda.FieldByName('TRANSNOPE').AsString)
              +' AND FOPERAC='+QuotedStr(FormatDateTime(wFormatFecha,DM1.cdsRecauda.FieldByName('TRANSFOPE').AsDateTime));

     If Length(DM1.DisplayDescrip('prvTGE', 'CRE310', 'TIPCREID', xWhere, 'TIPCREID'))>0 Then
      begin
       xSQL := ' UPDATE CRE310'
              +' SET COBFDEV ='+QuotedStr('S')
              +' WHERE'
              +' ASOID ='+QuotedStr(dbeAsoId.Text)
              +' AND TIPCREID ='+QuotedStr(DM1.cdsRecauda.FieldByName('TIPCREID').AsString)
              +' AND CREDID ='+QuotedStr(DM1.cdsRecauda.FieldByName('CREDID').AsString)
              +' AND CRECUOTA ='+DM1.cdsRecauda.FieldByName('CRECUOTA').AsString
              +' AND NROOPE ='+QuotedStr(DM1.cdsRecauda.FieldByName('TRANSNOPE').AsString)
              +' AND FOPERAC = DATE('+QuotedStr(FormatDateTime(wFormatFecha,DM1.cdsRecauda.FieldByName('TRANSFOPE').AsDateTime))+')';
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      end;

      // Actualiza ultimo de operacion + 1 , segun el tipo de tx
      xWhere := 'TRANSINTID ='+QuotedStr('DEC')+
                ' AND FOPERAC = '+QuotedStr(FormatDateTime(wFormatFecha,Date));
      If Length(DM1.DisplayDescrip('prvTGE', 'COB317', 'NROOPE', xWhere, 'NROOPE'))>0 Then
       begin
        xNroOpe := DM1.StrZero(IntToStr(StrToInt(DM1.cdsQry.FieldByName('NROOPE').AsString)+1),15);

        xSQL := ' UPDATE COB317'
               +' SET NROOPE ='+QuotedStr(xNroOpe)
               +' WHERE'
               +' TRANSINTID ='+QuotedStr('DEC')
               +' AND FOPERAC='+QuotedStr(FormatDateTime(wFormatFecha,Date));
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       end
      Else
       begin
        xNroOpe := DM1.StrZero('1',15);

        xSQL := ' INSERT into COB317(TRANSINTID, FOPERAC, NROOPE)'+
                ' VALUES ('+QuotedStr('DEC')+','+QuotedStr(FormatDateTime(wFormatFecha,xFechasys))+','+QuotedStr(xNroOpe)+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      end;

      // Tx de Devolución
      xSQL := 'INSERT INTO CRE310(CIAID, ASOID, ASOCODMOD, UPROID, UPAGOID, USEID, '+
                               'TIPCREID, CREDID, CRECUOTA, CREMONLOC, CREMONEXT, '+
                               'CREFPAG, '+
                               'CREMTOCOB, '+
                               'FOPERAC, NROOPE, TRANSINTID,'+
                               'TMONID, USUARIO, FREG, HREG, '+
                               'FORPAGOID, BANCOID, AGENBCOID,'+
                               'ASOAPENOM, TCAMBIO) '+
            'VALUES('+QuotedStr('02')+','+QuotedStr(dbeAsoId.Text)+','+
                      QuotedStr(dbeCodigoModular.Text)+','+QuotedStr(dblcdUPro.text)+','+
                      QuotedStr(dblcdUPag.Text)+','+QuotedStr(dblcdUse.Text)+','+
                      QuotedStr(DM1.cdsRecauda.FieldByName('TIPCREID').AsString)+','+
                      QuotedStr(DM1.cdsRecauda.FieldByName('CREDID').AsString)+','+
                      DM1.cdsRecauda.FieldByName('CRECUOTA').AsString+','+
                      DM1.cdsRecauda.FieldByName('DEVMTO').AsString+','+
                      ' 0,'+
                      'SYSDATE,'+
                      DM1.cdsRecauda.FieldByName('DEVMTO').AsString+','+
                      QuotedStr(formatdatetime(wFormatFecha,Date))+','+QuotedStr(xNroOpe)+','+
                      QuotedStr('DEC')+','+
                      QuotedStr(DM1.cdsRecauda.FieldByName('TMONID').AsString)+','+QuotedStr(DM1.wUsuario)+
                      ', SYSDATE, SYSDATE, '+
                      QuotedStr(DM1.cdsRecauda.FieldByName('FORPAGOID').AsString)+','+
                      QuotedStr(DM1.cdsRecauda.FieldByName('BANCOID').AsString)+','+
                      QuotedStr(DM1.cdsRecauda.FieldByName('AGENBCOID').AsString)+','+
                      QuotedStr(dbeAsoNom.Text)+','+xTipCam+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

      // Afecta una cuota en Plan de Pagos
      xWhere := 'ASOID ='+QuotedStr(DM1.cdsRecauda.FieldByName('ASOID').AsString)
               +' AND CREDID ='+QuotedStr(DM1.cdsRecauda.FieldByName('CREDID').AsString)
               +' AND TIPCREID ='+QuotedStr(DM1.cdsRecauda.FieldByName('TIPCREID').AsString)
               +' AND CRECUOTA ='+DM1.cdsRecauda.FieldByName('CRECUOTA').AsString;

      If Length(DM1.DisplayDescrip('prvTGE', 'CRE302', 'TIPCREID, CREMTO, CREAMORT, CREINTERES, CREFLAT', xWhere, 'TIPCREID'))>0 Then
       begin
         // Actualiza Plan de Pagos si es una devolución x cuota
      	xSQL := ' SELECT'+
                ' SUM('+
                ' CASE WHEN TX.TRANSFCA='+QuotedStr('A')+' THEN'+
                ' CREMTOCOB'+
                ' ELSE'+
                ' CREMTOCOB*-1'+
                ' END'+
                ' ) CREMTOCOB'+
                ' FROM CRE310 MOV, APO118 TX'+
                ' WHERE'+
                ' MOV.TRANSINTID=TX.TRANSINTID'+
                ' AND MOV.ASOID='+QuotedStr(dbeAsoId.Text)+
                ' AND TX.TRANSFCA='+QuotedStr('A')+
                ' AND MOV.TIPCREID='+QuotedStr(DM1.cdsRecauda.FieldByName('TIPCREID').AsString)+
                ' AND MOV.CREDID='+QuotedStr(DM1.cdsRecauda.FieldByName('CREDID').AsString)+
                ' AND MOV.CRECUOTA='+DM1.cdsRecauda.FieldByName('CRECUOTA').AsString;

        DM1.cdsEjecuta.Close;
        DM1.cdsEjecuta.IndexFieldNames := '';
        DM1.cdsEjecuta.DataRequest(xSQL);
        DM1.cdsEjecuta.Open;

        xIntPac := DM1.cdsQry.FieldByName('CREINTERES').AsFloat;
        xFlaPac := DM1.cdsQry.FieldByName('CREFLAT').AsFloat;
        xAmoPac := DM1.cdsQry.FieldByName('CREAMORT').AsFloat;
        xMtoPac := DM1.cdsQry.FieldByName('CREMTO').AsFloat;

        //xmtoexc:=0;
        //xmtosld:=0;
        //xintpag:=0;

        xFlaPag := 0;
        xAmoPag := 0;
        xMtoPag := DM1.cdsEjecuta.FieldByName('CREMTOCOB').AsFloat;
        xMtoCob := DM1.cdsEjecuta.FieldByName('CREMTOCOB').AsFloat;

        If (xMtoPag>xMtoPac) Then
         begin
          xMtoExc := xMtoPag - xMtoPac;
          xMtosld := 0;
         end
        Else
         begin
          xMtoExc := 0;
          xMtosld := xMtoPac - xMtoPag;
         end;

        If (xMtoPag <= xIntPac) Then
         begin
          xIntPag := xMtoPag;
         end
        Else
         begin
          xIntPag := xIntPac;
          xMtoPag := xMtoPag - xIntPac;
          If (xMtoPag <= xFlaPac) Then
           begin
            xFlaPag := xMtoPag;
           end
          Else
           begin
            xFlaPag := xFlaPac;
            xMtoPag := xMtoPag - xFlaPac;
            If (xMtoPag <= xAmoPac) Then
             begin
              xAmoPag := xMtoPag;
             end
            Else
             begin
              xAmoPag := xAmoPac;
              xMtoPag := dm1.FRound(xMtoPag,15,2) - dm1.FRound(xAmoPac,15,2);
             end;
           end;
         end;
         
        //** si el monto a devolver es el monto completo o parcial de la cuota
        If DM1.cdsRecauda.FieldByName('FLGDEVMTO').AsString = 'Y' then
         begin
          If xMtoPag < 0 then
           xMtoPag := xMtoPag * -1;
          If xIntPag < 0 then
           xIntPag := xIntPag * -1;

          xSQL := 'UPDATE CRE302 '+
                ' SET CREMTOCOB = CREMTOCOB-'+FloatToStr(xMtoCob)+', '+
                ' CRECAPITAL = CRECAPITAL - '+FloatToStr(xAmoPag)+', '+
                ' CREMTOINT = CREMTOINT -'+FloatToStr(xIntPag)+', '+
                ' CREMTOFLAT = CREMTOFLAT - '+FloatToStr(xFlaPag)+', '+
                ' CRESALDO = CRESALDO - '+FloatToStr(xMtosld)+', '+
                ' CREMTOEXC ='+FloatToStr(xMtoExc)+', '+
                ' CREFPAG = SYSDATE '+
                ' WHERE ASOID ='+QuotedStr(dbeAsoId.Text)+' '+
                ' AND CREDID ='+QuotedStr(DM1.cdsRecauda.FieldByName('CREDID').AsString)+' '+
                ' AND TIPCREID ='+QuotedStr(DM1.cdsRecauda.FieldByName('TIPCREID').AsString)+' '+
                ' AND CRECUOTA ='+DM1.cdsRecauda.FieldByName('CRECUOTA').AsString;
         end
        else
         begin
          xSQL := 'UPDATE CRE302 '+
                'SET CREMTOEXC = CREMTOEXC -'+FloatToStr(xMtoExc)+', '+
                ' CREFPAG = SYSDATE '+
                ' WHERE ASOID ='+QuotedStr(dbeAsoId.Text)+' '+
                ' AND CREDID ='+QuotedStr(DM1.cdsRecauda.FieldByName('CREDID').AsString)+' '+
                ' AND TIPCREID ='+QuotedStr(DM1.cdsRecauda.FieldByName('TIPCREID').AsString)+' '+
                ' AND CRECUOTA ='+DM1.cdsRecauda.FieldByName('CRECUOTA').AsString;
         end;
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      end;
      //** ACTUALIZA CAJA STANDAR
      xCreano := copy(DateToStr(xFechasys),7,4);
      xCremes := Dm1.StrZero(copy(DateToStr(xFechasys),4,2),2);
      Actualiza;
      //**
      DM1.cdsRecauda.Next;
   end;

   Screen.Cursor := crDefault;

   Beep;
   MessageDlg('Devolución de Pagos Ingresado', mtCustom, [mbOk], 0);

   z2bbtnCancel.Enabled  := True;
   z2bbtnAceptar.Enabled := False;
   z2bbtnNuevo.Enabled   := True;
end;

procedure TFDevolCuota.Z2bbtnNuevoClick(Sender: TObject);
begin
   z2bbtnnuevo.Enabled   := False;
   z2bbtnaceptar.Enabled := True;
   DM1.wModo := 'A';

   FormActivate(Self);
end;

procedure TFDevolCuota.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   If (DM1.wModo = 'A') or (DM1.wModo = 'M') Then
    begin
     If wActualizado Then
      begin
       If Application.MessageBox(' Tiene Datos No Actualizados '+#13+
            '¿Desea Salir y Cancelar sus Actualizaciones?',
            'Grabaciones Pendientes',
             MB_YESNO + MB_DEFBUTTON1) <> IDYES Then
          CanClose := False
       Else
        begin
         DM1.cdsRecauda.CancelUpdates;
        end;
      end;
    end;
end;

procedure TFDevolCuota.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

{procedure TFDevolCuota.GrabaTransaccion(Sender: TObject);
var
   xSQL, sUProceso, sUPago, sDepto : string;
begin
   DM1.cdsCuotas.Filter:='';
   DM1.cdsCuotas.Filtered:=False;

   DM1.cdsCuotas.Insert;
	DM1.cdsTransDevol.FieldByName('TRANSID').AsString			:= DM1.DisplayDescrip('prvTGE',
                                                                                  'APO118',
                                                                                  'TRANSID',
                                                                                  'TRANSINTID='+QuotedStr('DEV'),'TRANSID');
   DM1.cdsCuotas.FieldByName('ASOID').AsString				:= dblcdCodigo.Text;
   DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString			:= dbeCodigoModular.Text;
   DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString			:= dbeCodigoAux.Text;
   DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString		   := dbeasonom.text;
   DM1.cdsCuotas.FieldByName('ASOCODPAGO').AsString		:= dbeCodigoPago.text;

   DM1.cdsCuotas.FieldByName('TIPCREID').AsString		:= dbeCodigoPago.text;
   DM1.cdsCuotas.FieldByName('CREDID').AsString		   := dbeCodigoPago.text;

   DM1.cdsCuotas.FieldByName('USEID').AsString				:= dblcdUse.Text;
   DM1.cdsCuotas.FieldByName('USEABR').AsString			   := edtUse.Text;
   DM1.cdsCuotas.FieldByName('UPROID').AsString			   := DM1.DisplayDescrip('prvTGE',
                                                                                  'APO101',
                                                                                  'UPROID',
                                                                                  'USEID='+QuotedStr(dblcdUse.Text),'UPROID');
   sUProceso:=DM1.DisplayDescrip('prvTGE','APO102','UPROABR','UPROID='+
                                  QuotedStr(DM1.cdsTransDevol.fieldbyName('UPROID').asString),'UPROABR');
   DM1.cdsTransDevol.FieldByName('UPROABR').AsString			:= sUProceso;
   DM1.cdsTransDevol.FieldByName('UPAGOID').AsString			:= DM1.DisplayDescrip('prvTGE','APO101','UPAGOID','USEID = '+
                                                                                QuotedStr(dblcdUse.Text),'UPAGOID');
   sUPago:=DM1.DisplayDescrip('prvTGE','APO103','UPAGOABR','UPAGOID='+
                               QuotedStr( DM1.cdsTransDevol.FieldByName('UPAGOID').AsString),'UPAGOABR');
   DM1.cdsTransDevol.FieldByName('UPAGOABR').AsString		:= sUPago;
   DM1.cdsTransDevol.FieldByName('DPTOID').AsString:=DM1.DisplayDescrip('prvTGE','APO101','DPTOID','USEID = '+
                                                                         QuotedStr(dblcdUse.Text),'DPTOID');
   sDepto:=DM1.DisplayDescrip('prvTGE','APO158','DPTOABR ','DPTOID='+
                               QuotedStr(DM1.cdsTransDevol.FieldByName('DPTOID').AsString),'DPTOABR');
   DM1.cdsTransDevol.FieldByName('DPTOABR').AsString			:= sDepto;


   xSql:='SELECT '+dm1.wRepFuncChar+dm1.wRepFecServi+', '+QuotedStr('DD/MM/YYYY')+') "FECHA" FROM DUAL';
   DM1.cdsReporte1.Close;
   dm1.cdsReporte1.DataRequest(xWhere);
   dm1.cdsReporte1.Open;
   xFec_Sis:=dm1.cdsReporte1.FieldByName('FECHA').AsString;

   xSql:='SELECT * FROM TGE114 WHERE FECHA=TO_DATE(SYSDATE,'''+wFormatFecha+''')';
   dm1.cdsReporte1.Close;
   dm1.cdsReporte1.DataRequest(xSql);
   dm1.cdsReporte1.Open;

   //DM1.Filtracds(DM1.cdsQry,xSQL);

   DM1.cdsTransDevol.FieldByName('TRANSANO').AsString		:= DM1.cdsReporte1.FieldByName('FECANO').AsString;
   DM1.cdsTransDevol.FieldByName('TRANSMES').AsString		:= DM1.cdsReporte1.FieldByName('FECMES').AsString;
   DM1.cdsTransDevol.FieldByName('TRANSTRIM').AsString		:= DM1.cdsReporte1.FieldByName('FECTRIM').AsString;
   DM1.cdsTransDevol.FieldByName('TRANSSEM').AsString		:= DM1.cdsReporte1.FieldByName('FECSEM').AsString;
   DM1.cdsTransDevol.FieldByName('TRANSAAMM').AsString		:= DM1.cdsReporte1.FieldByName('FECANO').AsString+DM1.cdsReporte1.FieldByName('FECMES').AsString;
   DM1.cdsTransDevol.FieldByName('TRANSAATRI').AsString	:= DM1.cdsReporte1.FieldByName('FECAATRI').AsString;
   DM1.cdsTransDevol.FieldByName('TRANSAASEM').AsString	:= DM1.cdsReporte1.FieldByName('FECAASEM').AsString;

   DM1.cdsTransDevol.FieldByName('DEVANO').AsString			:= DM1.cdsdevolucioncob.FieldByName('APOANO').AsString;
   DM1.cdsTransDevol.FieldByName('DEVMES').AsString			:= DM1.cdsdevolucioncob.FieldByName('APOMES').AsString;

   DM1.cdsTransDevol.FieldByName('FORPAGOID').AsString		:= dblcFormaPago.Text;
   DM1.cdsTransDevol.FieldByName('FORPAGOABR').AsString	:= edtFormaPago.Text;
   DM1.cdsTransDevol.FieldByName('TMONID').AsString			:= dblctmoneda.Text;
   DM1.cdsTransDevol.FieldByName('TRANSMTO').Asfloat			:= StrToFloat(dbeMtoAporte.Text);
   DM1.cdsTransDevol.FieldByName('BANCOID').AsString			:= dblcBanco.Text;
   DM1.cdsTransDevol.FieldByName('CCBCOID').AsString			:= dbeCuenta.Text;
   DM1.cdsTransDevol.FieldByName('TRANSFOPE').AsDateTime :=Date;
   DM1.cdsTransDevol.FieldByName('TRANSFFCIND').AsString	:= '';
   DM1.cdsTransDevol.FieldByName('TRANSINTID').AsString	:= 'DEV';

 	DM1.cdsTransDevol.FieldByName('SALDOANT').AsFloat			:= xSaldoAnt;
   DM1.cdsTransDevol.FieldByName('SALDO').AsFloat				:= xSaldoAnt;   //; - strtofloat(dbeMontoDevoluc.text);
   xSaldoAnt:=DM1.cdsTransDevol.FieldByName('SALDO').AsFloat;

   DM1.cdsTransDevol.FieldByName('USUARIO').AsString			:= DM1.wUsuario;
   DM1.cdsTransDevol.FieldByName('FREG').AsDateTime			:= Date;
   DM1.cdsTransDevol.FieldByName('HREG').AsDateTime			:= Date+SysUtils.Time;
   cdspost(DM1.cdsTransDevol);
   DM1.cdsTransDevol.post;

   DM1.cdsCuotas.Filter:='TRANSINTID='+quotedstr('CUO');
   DM1.cdsCuotas.Filtered:=True;
end;}

procedure TFDevolCuota.dbgDevolverDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFDevolCuota.dbgCreditosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   If DM1.cdsCuotas.RecordCount>0 Then
    dbgCreditos.BeginDrag(False)
   Else
    begin
     Beep;
     MessageDlg('No Existen Registros', mtInformation, [mbOk], 0);
     Exit;
    end;
end;

procedure TFDevolCuota.dbgCreditosEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
   If Target = dbgDevolver Then
    begin
     wFuente := 'CUO';
      // Valida si ya se esta considerando un reclamo para esa cuota en DB
     xWhere := 'ASOID ='+QuotedStr(dbeasoid.Text)+' '+
               'AND CREDID ='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' '+
               'AND TIPCREID ='+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+' '+
               'AND CRECUOTA ='+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;

     If Length(DM1.DisplayDescrip('prvTGE', 'CRE302', 'TIPCREID, CREFDEV, CREFRECL', xWhere, 'TIPCREID'))>0 Then
      begin
       If DM1.cdsQry.FieldByName('CREFDEV').AsString = 'S' Then
        begin
         ErrorMsg('Error', 'Cuota ya fué Devuelta !');
         Exit;
        end;

       If DM1.cdsQry.FieldByName('CREFRECL').AsString = 'S' Then
        begin
         ErrorMsg('Error', 'Cuota ya fué Reclamada !');
         Exit;
        end;
      end;

     If DM1.cdsCuotas.FieldByName('CREFDEV').AsString = 'S' Then
      begin
       ErrorMsg('Error', 'Cuota ya fué Devuelta !');
       Exit;
      end;

      // Prepara un registro nuevo para registar una devolucion
     wModo1 := 'A';

     DM1.cdsRecauda.Append;

     DM1.cdsRecauda.FieldByName('DEVID').AsString    := DM1.cdsDevolucion.FieldByName('DEVID').AsString;
     DM1.cdsRecauda.FieldByName('DEVIDIT').AsString  := DM1.StrZero(IntToStr(DM1.cdsRecauda.RecordCount+1), DM1.cdsRecauda.FieldByName('DEVIDIT').Size);
     DM1.cdsRecauda.FieldByName('ASOID').AsString    := dbeAsoId.Text;
     DM1.cdsRecauda.FieldByName('TIPCREID').AsString := DM1.cdsCuotas.FieldByName('TIPCREID').AsString;
     DM1.cdsRecauda.FieldByName('CREDID').AsString   := DM1.cdsCuotas.FieldByName('CREDID').AsString;
     DM1.cdsRecauda.FieldByName('CRECUOTA').AsString := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
     DM1.cdsRecauda.FieldByName('TMONID').AsString   := DM1.cdsCuotas.FieldByName('TMONID').AsString;
     DM1.cdsRecauda.FieldByName('CREANO').AsString   := DM1.cdsCuotas.FieldByName('CREANO').AsString;
     DM1.cdsRecauda.FieldByName('CREMES').AsString   := DM1.cdsCuotas.FieldByName('CREMES').AsString;

     If DM1.cdsCuotas.FieldByName('TMONID').AsString = 'N' Then
      If DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat > 0 then
       begin
        DM1.cdsRecauda.FieldByName('DEVMTO').AsFloat   := DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat;
        DM1.cdsRecauda.FieldByName('FLGDEVMTO').AsString   := 'X';
       end
      else
       If DM1.cdsCuotas.FieldByName('CREMTO').AsFloat > 0 then
        begin
         DM1.cdsRecauda.FieldByName('DEVMTO').AsFloat   := DM1.cdsCuotas.FieldByName('CREMTO').AsFloat;
         DM1.cdsRecauda.FieldByName('FLGDEVMTO').AsString   := 'Y';
        end
     Else
      If  DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat > 0 then
       begin
        DM1.cdsRecauda.FieldByName('DEVMTO').AsFloat   := DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat / xTCambio;
        DM1.cdsRecauda.FieldByName('FLGDEVMTO').AsString   := 'X';
       end
      else
       If DM1.cdsCuotas.FieldByName('CREMTO').AsFloat > 0 then
        begin
         DM1.cdsRecauda.FieldByName('DEVMTO').AsFloat   := DM1.cdsCuotas.FieldByName('CREMTO').AsFloat / xTCambio;
         DM1.cdsRecauda.FieldByName('FLGDEVMTO').AsString   := 'Y';
        end;

     DM1.cdsRecauda.FieldByName('FREG').AsDateTime := Date;

     LlenarDatosDevolucionDet;

     pnlCuotas.Visible       := True;
     pnlCuotas.Enabled       := True;
//     pnlCabecera.Enabled     := False;

     dblcTCredito.Enabled    := False;
     dbeNCredito.Enabled     := False;
     dbeCuota.Enabled        := False;
     dblcTMoneda.Enabled     := False;
//     dbeMontoDevoluc.Enabled := False;
     dblcFormaPago.Enabled   := True;
     lblBanco.Visible        := False;
     dblcBanco.Visible       := False;
     dbeBanco.Visible        := False;
     lblAgencia.Visible      := False;
     dblcdAgencia.Visible    := False;
     dbeAgencia.Visible      := False;
     lblNCuenta.Visible      := False;
     dbeCuenta.Visible       := False;
     dbdtpFResultado.Enabled := False;
     dbmResultado.Enabled    := True;

     bbtnCancelar.Enabled    := True;
     bbtnAceptar.Enabled     := True;

     dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas, 'SUM(CREMTOEXC)', ''), ffNumber, 10, 2);
     dbgDevolver.ColumnByName('DEVMTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsRecauda,'SUM(DEVMTO)', ''), ffNumber, 10, 2);

     dblcFormaPago.SetFocus;
    end;
end;

procedure TFDevolCuota.dbgDevolverDblClick(Sender: TObject);
begin
   LlenarDatosDevolucionDet;

   pnlCuotas.Visible       := True;
   pnlCuotas.Enabled       := True;
//   pnlCabecera.Enabled     := False;

   dblcTCredito.Enabled    := False;
   dbeNCredito.Enabled     := False;
   dbeCuota.Enabled        := False;
   dblcTMoneda.Enabled     := False;
//   dbeMontoDevoluc.Enabled := False;
   dblcFormaPago.Enabled   := False;

   If DM1.cdsRecauda.FieldByName('BANCOID').IsNull Then
    begin
     dblcBanco.Visible     := False;
     dbeBanco.Visible      := False;
     lblBanco.Visible      := False;
    end
   Else
    begin
     dblcBanco.Visible     := True;
     dbeBanco.Visible      := True;
     lblBanco.Visible      := True;
    end;

   If DM1.cdsRecauda.FieldByName('AGENBCOID').IsNull Then
    begin
     dblcdAgencia.Visible := False;
     dbeAgencia.Visible   := False;
     lblAgencia.Visible   := False;
    end
   Else
    begin
     dblcdAgencia.Visible := True;
     dbeAgencia.Visible   := True;
     lblAgencia.Visible   := True;
    end;

   If DM1.cdsRecauda.FieldByName('ASONCTA').IsNull Then
    begin
     dbecuenta.Visible    := False;
     lblNCuenta.Visible   := False;
    end
   Else
    begin
     dbecuenta.Visible    := True;
     lblNCuenta.Visible   := True;
    end;

   dbdtpFResultado.Enabled := False;
   dbmResultado.Enabled    := False;

   bbtnCancelar.Enabled    := True;
   bbtnAceptar.Enabled     := True;

   bbtnCancelar.SetFocus;
end;

procedure TFDevolCuota.dbgCreditosDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFDevolCuota.dbgDevolverMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   If DM1.cdsRecauda.RecordCount > 0 Then
    dbgDevolver.BeginDrag(False)
   Else
    begin
     Beep;
     MessageDlg('No Existen Registros', mtInformation, [mbOk], 0);
     Exit;
    end;
end;

procedure TFDevolCuota.dbgDetReclamoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFDevolCuota.dbgDetReclamoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   If DM1.cdsReclamoDCob.RecordCount > 0 Then
    dbgDetReclamo.BeginDrag(False)
   Else
    begin
     Beep;
     MessageDlg('No Existen Registros', mtInformation, [mbOk], 0);
     Exit;
    end;
end;

procedure TFDevolCuota.dbgDetReclamoEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
   If Target = dbgDevolver Then
    begin
     wFuente := 'REC';

      // Válida si ya se esta considerando un reclamo para esa cuota en DB
      xWhere:= 'RECLID ='+QuotedStr(DM1.cdsReclamoDCob.FieldByName('RECLID').AsString)
              +' AND RECLIDD ='+QuotedStr(DM1.cdsReclamoDCob.FieldByName('RECLIDD').AsString);
      If Length(DM1.DisplayDescrip('prvTGE', 'COB308', 'RECLID, RECLFDEV', xWhere, 'RECLID')) > 0 Then
       begin
        If (DM1.cdsQry.FieldByName('RECLFDEV').AsString = 'S') Then
         begin
          ErrorMsg('Error', 'Reclamo ya fué Devuelto !');
          Exit;
         end;
       end;

      If (DM1.cdsReclamoDCob.FieldByName('RECLFDEV').AsString = 'S') Then
       begin
        ErrorMsg('Error', 'Reclamo ya fué Devuelto !');
        Exit;
       end;

      // Prepara un registro nuevo para registar una devolución
      wModo1 := 'A';

      DM1.cdsRecauda.Append;

      DM1.cdsRecauda.FieldByName('DEVID').AsString       := DM1.cdsDevolucion.FieldByName('DEVID').AsString;
      DM1.cdsRecauda.FieldByName('DEVIDIT').AsString     := DM1.StrZero(IntToStr(DM1.cdsRecauda.RecordCount+1), DM1.cdsRecauda.FieldByName('DEVIDIT').Size);
      DM1.cdsRecauda.FieldByName('ASOID').AsString       := dbeAsoId.Text;
      DM1.cdsRecauda.FieldByName('TIPCREID').AsString    := DM1.cdsReclamoDCob.FieldByName('TIPCREID').AsString;
      DM1.cdsRecauda.FieldByName('CREDID').AsString      := DM1.cdsReclamoDCob.FieldByName('CREDID').AsString;
      DM1.cdsRecauda.FieldByName('CRECUOTA').AsString    := DM1.cdsReclamoDCob.FieldByName('CRECUOTA').AsString;
      DM1.cdsRecauda.FieldByName('TRANSNOPE').AsString   := DM1.cdsReclamoDCob.FieldByName('TRANSNOPE').AsString;
      DM1.cdsRecauda.FieldByName('TRANSFOPE').AsDateTime := DM1.cdsReclamoDCob.FieldByName('TRANSFOPE').AsDateTime;
      DM1.cdsRecauda.FieldByName('TMONID').AsString      := DM1.cdsReclamoDCob.FieldByName('TMONID').AsString;
      DM1.cdsRecauda.FieldByName('CREANO').AsString      := DM1.cdsCuotas.FieldByName('CREANO').AsString;
      DM1.cdsRecauda.FieldByName('CREMES').AsString      := DM1.cdsCuotas.FieldByName('CREMES').AsString;

     If DM1.cdsCuotas.FieldByName('TMONID').AsString = 'N' Then
      If DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat > 0 then
       begin
        DM1.cdsRecauda.FieldByName('DEVMTO').AsFloat   := DM1.cdsReclamoDCob.FieldByName('RECLMONTO').AsFloat;
        DM1.cdsRecauda.FieldByName('FLGDEVMTO').AsString   := 'X';
       end
      else
       If DM1.cdsCuotas.FieldByName('CREMTO').AsFloat > 0 then
        begin
         DM1.cdsRecauda.FieldByName('DEVMTO').AsFloat     := DM1.cdsReclamoDCob.FieldByName('CREMONTO').AsFloat;
         DM1.cdsRecauda.FieldByName('FLGDEVMTO').AsString := 'Y';
        end
     Else
      If  DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat > 0 then
       begin
        DM1.cdsRecauda.FieldByName('DEVMTO').AsFloat     := DM1.cdsReclamoDCob.FieldByName('RECLMONTO').AsFloat / xTCambio;
        DM1.cdsRecauda.FieldByName('FLGDEVMTO').AsString := 'X';
       end
      else
       If DM1.cdsCuotas.FieldByName('CREMTO').AsFloat > 0 then
        begin
         DM1.cdsRecauda.FieldByName('DEVMTO').AsFloat     := DM1.cdsReclamoDCob.FieldByName('CREMONTO').AsFloat / xTCambio;
         DM1.cdsRecauda.FieldByName('FLGDEVMTO').AsString := 'Y';
        end;

      DM1.cdsRecauda.FieldByName('CREMONTO').AsFloat := DM1.cdsReclamoDCob.FieldByName('CREMONTO').AsFloat;
      DM1.cdsRecauda.FieldByName('FREG').AsDateTime  := Date;

      LlenarDatosDevolucionDet;

      pnlCuotas.Visible       := True;
//      pnlCabecera.Enabled     := False;

      dblcTCredito.Enabled    := False;
      dbeNCredito.Enabled     := False;
      dbeCuota.Enabled        := False;
      dblcTMoneda.Enabled     := False;
//      dbeMontoDevoluc.Enabled := False;
      dblcFormaPago.Enabled   := True;
      lblBanco.Visible        := False;
      dblcBanco.Visible       := False;
      dbeBanco.Visible        := False;
      lblAgencia.Visible      := False;
      dblcdAgencia.Visible    := False;
      dbeAgencia.Visible      := False;
      lblNCuenta.Visible      := False;
      dbeCuenta.Visible       := False;
      dbdtpFResultado.Enabled := False;
      dbmResultado.Enabled    := True;

      bbtnCancelar.Enabled    := True;
      bbtnAceptar.Enabled     := True;

      dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob,'SUM(RECLMONTO)',''), ffNumber, 10, 2);
      dbgDevolver.ColumnByName('DEVMTO').FooterValue      := FloatToStrF(DM1.OperClientDataSet(DM1.cdsRecauda,'SUM(DEVMTO)',''), ffNumber, 10, 2);

      dblcFormaPago.SetFocus;
   end;
end;

procedure TFDevolCuota.dblcdCodigoDropDown(Sender: TObject);
begin
   xSQL := 'SELECT * FROM APO201'
          +' UPROID =''XX'' '
          +' AND UPAGOID =''XX'' '
          +' AND USEID ='+QuotedStr(dblcdUSE.Text);
   DM1.FiltraCDS(DM1.cdsAsociados1, xSQL);
end;

procedure TFDevolCuota.wwDBLookupComboDlg1Exit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   DM1.cdsAgenciaBco.SetKey;
   DM1.cdsAgenciaBco.FieldByName('BANCOID').AsString   := dblcBanco.Text;
   DM1.cdsAgenciaBco.FieldByName('AGENBCOID').AsString := dblcdAgencia.Text;
   If not DM1.cdsAgenciaBco.GotoKey Then
    begin
     Beep;
     MessageDlg('Agencia no es Válida', mtInformation, [mbOk], 0);
     dbeAgencia.Text := '';
     dblcdAgencia.SetFocus;
     Exit;
    end;
   dbeAgencia.Text := DM1.cdsAgenciaBco.FieldByName('FORPAGODES').AsString;
end;

procedure TFDevolCuota.LlenarDatosAsociado;
var
   xWhere : String;
begin
   dbeAsoNom.Text        := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
   dbeCodigoModular.Text := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
   dbeAsoId.Text         := DM1.cdsQry.FieldByName('ASOID').AsString;

   dblcdupro.Text  := DM1.cdsQry.FieldByName('UPROID').AsString;
   dblcdupag.Text  := DM1.cdsQry.FieldByName('UPAGOID').AsString;
   dblcduse.Text   := DM1.cdsQry.FieldByName('USEID').AsString;

   dblcbcoid.Text  := DM1.cdsQry.FieldByName('BANCOID').AsString;
   dbenrocta.Text  := DM1.cdsQry.FieldByName('ASONCTA').AsString;
   dblcsitcta.Text := DM1.cdsQry.FieldByName('SITCTA').AsString;

   dbeUPro.Text := '';
   xWhere := 'UPROID ='+QuotedStr(dblcdUPro.Text);
   If Length(DM1.DisplayDescrip('prvSQL', 'APO102', 'UPROID, UPRONOM', xWhere, 'UPROID'))>0 Then
    begin
     dbeUPro.Text := DM1.cdsQry.FieldByName('UPRONOM').AsString;
    end;

   dbeUPag.Text := '';
   xWhere := 'UPROID ='+QuotedStr(dblcdUPro.Text)
            +' AND UPAGOID ='+QuotedStr(dblcdUPag.Text);
   If Length(DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGOID, UPAGONOM', xWhere, 'UPAGOID'))>0 Then
    begin
     dbeUPag.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
    end;

   dbeUse.Text := '';
   xWhere := 'UPROID ='+QuotedStr(dblcdUPro.Text)
          +' AND UPAGOID ='+QuotedStr(dblcdUPag.Text)
          +' AND USEID ='+QuotedStr(dblcdUse.Text);
   If Length(DM1.DisplayDescrip('prvSQL', 'APO101', 'USEID, USENOM', xWhere, 'USEID'))>0 Then
    begin
     dbeUse.Text := DM1.cdsQry.FieldByName('USENOM').AsString;
    end;

   dbeBco.Text := '';
   xWhere := 'BANCOID='+QuotedStr(dblcbcoid.text);
   If Length(DM1.DisplayDescrip('prvSQL', 'TGE105', 'BANCOID, BANCONOM', xWhere, 'BANCOID'))>0 Then
    begin
     dbeBco.Text := DM1.cdsQry.FieldByName('BANCONOM').AsString;
    end;

   dbeSitCta.Text := '';
   xWhere := 'SITCTAID ='+QuotedStr(dblcSitCta.Text);
   If Length(DM1.DisplayDescrip('prvSQL', 'COB103', 'SITCTAID, SITCTADES', xWhere, 'SITCTAID'))>0 Then
    begin
     dbeSitCta.Text := DM1.cdsQry.FieldByName('SITCTADES').AsString;
    end;

   // Cuotas no reclamadas
   xSQL := 'SELECT TIPCREID, CREDID, CRECUOTA, CREANO, CREMES,'
         +' FORPAGOID, TMONABR,TMONID, CREMTO, CREMTOEXC, CREFDEV,'
         +' CREMONLOC, CREMONEXT, BANCOID,CREESTADO'
         +' FROM CRE302'
         +' WHERE ASOID ='+QuotedStr(dbeAsoId.Text)
         +' AND (CREESTID = '+quotedstr(xEstid0)+' OR CREESTID ='+quotedstr(xEstid1)
         +' OR CREESTID ='+quotedstr(xEstid2)+')'
         +' AND CREFDEV IS NULL'
         +' AND CREFRECL IS NULL';

   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.IndexFieldNames := 'TIPCREID; CREDID; CRECUOTA';
   DM1.cdsCuotas.DataRequest(xSQL);
   DM1.cdsCuotas.Open;

   dbgCreditos.Selected.Clear;
     dbgCreditos.Selected.Add('CREDID'#9'15'#9'Crédito');
     dbgCreditos.Selected.Add('CRECUOTA'#9'3'#9'Cuo');
     dbgCreditos.Selected.Add('CREANO'#9'4'#9'Año');
     dbgCreditos.Selected.Add('CREMES'#9'4'#9'Mes');
     dbgCreditos.Selected.Add('FORPAGOID'#9'2'#9'FP');
     dbgCreditos.Selected.Add('TMONID'#9'3'#9'Mon');
     dbgCreditos.Selected.Add('CREMTO'#9'7'#9'Monto~Cuota');
     dbgCreditos.Selected.Add('CREMTOEXC'#9'7'#9'Monto~Exceso');
     dbgCreditos.Selected.Add('CREESTADO'#9'15'#9'Estado');
   dbgCreditos.ApplySelected;

   TNumericField(DM1.cdsCuotas.FieldByName('CREMTOEXC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCuotas.FieldByName('CREMTOEXC')).EditFormat    := '########0.00';
   dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas,'SUM(CREMTOEXC)',''),ffNumber, 10, 2);

   // Reclamos por Cuotas en Trámite
   xSQL := 'SELECT * FROM COB308'
          +' WHERE ASOID ='+QuotedStr(dbeAsoId.Text)
          +' AND RECLSITID ='+QuotedStr('01');

   DM1.cdsReclamoDCob.Close;
   DM1.cdsReclamoDCob.IndexFieldNames := 'RECLID';
   DM1.cdsReclamoDCob.DataRequest(xSQL);
   DM1.cdsReclamoDCob.Open;

   dbgDetReclamo.Selected.Clear;
   dbgDetReclamo.Selected.Add('RECLID'#9'7'#9'Id Dev.');
   dbgDetReclamo.Selected.Add('RECLIDD'#9'5'#9'Item');
   dbgDetReclamo.Selected.Add('TIPCREID'#9'6'#9'Tipo~Crédito');
   dbgDetReclamo.Selected.Add('CREDID'#9'12'#9'Crédito');
   dbgDetReclamo.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
   dbgDetReclamo.Selected.Add('CREANO'#9'4'#9'Año');
   dbgDetReclamo.Selected.Add('CREMES'#9'4'#9'Mes');
   dbgDetReclamo.Selected.Add('FORPAGOID'#9'5'#9'Forma~Pago');
   dbgDetReclamo.Selected.Add('CREMONTO'#9'10'#9'Monto~Pago');
   dbgDetReclamo.Selected.Add('RECLMONTO'#9'10'#9'Monto~Reclamo');
   dbgDetReclamo.ApplySelected;

   TNumericField(DM1.cdsReclamoDCob.FieldByName('RECLMONTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsReclamoDCob.FieldByName('RECLMONTO')).EditFormat    := '########0.00';
   TNumericField(DM1.cdsReclamoDCob.FieldByName('CREMONTO')).DisplayFormat  := '###,###,##0.00';
   TNumericField(DM1.cdsReclamoDCob.FieldByName('CREMONTO')).EditFormat     := '########0.00';

   dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob,'SUM(RECLMONTO)',''),ffNumber, 10, 2);

   // Devoluciones efectuadas
   xSQL := 'SELECT COB309.*,'' '' FLGDEVMTO FROM COB309'
          +' WHERE DEVID ='+QuotedStr(dbeDevolucion.Text);

   DM1.cdsRecauda.Filter   := '';
   DM1.cdsRecauda.Filtered := False;
   DM1.cdsRecauda.IndexFieldNames := '';
   DM1.cdsRecauda.Close;
   DM1.cdsRecauda.DataRequest(xSQL);
   DM1.cdsRecauda.Open;
   DM1.cdsRecauda.IndexFieldNames := 'DEVIDIT';

   dbgDevolver.Selected.Clear;
   dbgDevolver.Selected.Add('DEVIDIT'#9'7'#9'Item');
   //dbgDevolver.Selected.Add('TIPCREID'#9'7'#9'Tipo~Crédito');
   dbgDevolver.Selected.Add('CREDID'#9'12'#9'Crédito');
   dbgDevolver.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
   dbgDevolver.Selected.Add('CREANO'#9'4'#9'Año');
   dbgDevolver.Selected.Add('CREMES'#9'4'#9'Mes');
   dbgDevolver.Selected.Add('TMONID'#9'6'#9'Tipo~Moneda');
   //dbgDevolver.Selected.Add('CREMONTO'#9'10'#9'Monto~Pago');
   dbgDevolver.Selected.Add('DEVMTO'#9'10'#9'Monto~Devol.');
   dbgDevolver.Selected.Add('FORPAGOID'#9'5'#9'Forma~Pago');
   dbgDevolver.ApplySelected;
end;

procedure TFDevolCuota.dblcTCreditoExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   DM1.cdsTCredito.SetKey;
   DM1.cdsTCredito.FieldByName('TIPCREID').AsString := dblcTCredito.Text;
   If not DM1.cdsTCredito.GotoKey Then
    begin
     Beep;
     MessageDlg('El Tipo de Crédito no es Válido', mtInformation, [mbOk], 0);
     dbeTCredito.Text := '';
     dblctcredito.SetFocus;
     Exit;
    end;
   dbeTCredito.Text := DM1.cdsTCredito.FieldByName('TIPCREDES').AsString;
end;

procedure TFDevolCuota.LlenarDatosDevolucionDet;
begin
   dbeTCredito.Text := '';
   DM1.cdsTCredito.SetKey;
   DM1.cdsTCredito.FieldByName('TIPCREID').AsString := dblcTCredito.Text;
   If DM1.cdsTCredito.GotoKey Then
    dbeTCredito.Text := DM1.cdsTCredito.FieldByName('TIPCREDES').AsString;

   dbeMoneda.Text := '';
   DM1.cdsTMone.SetKey;
   DM1.cdsTMone.FieldByName('TMONID').AsString := dblcTMoneda.Text;
   If DM1.cdsTMone.GotoKey Then
    dbeMoneda.Text := DM1.cdsTMone.FieldByName('TMONDES').AsString;

   dbeFormaPago.Text := '';
   DM1.cdsFormaPago.SetKey;
   DM1.cdsFormaPago.FieldByName('FORPAGOID').AsString := dblcFormaPago.Text;
   If DM1.cdsFormaPago.GotoKey Then
    dbeFormaPago.Text := DM1.cdsFormaPago.FieldByName('FORPAGODES').AsString;

   dbeBanco.Text := '';
   DM1.cdsBcos.SetKey;
   DM1.cdsBcos.FieldByName('BANCOID').AsString := dblcBanco.Text;
   If DM1.cdsBcos.GotoKey Then
    dbeBanco.Text := DM1.cdsBcos.FieldByName('BANCONOM').AsString;

   dbeAgencia.Text := '';
   DM1.cdsAgenciaBco.SetKey;
   DM1.cdsAgenciaBco.FieldByName('BANCOID').AsString   := dblcBanco.Text;
   DM1.cdsAgenciaBco.FieldByName('AGENBCOID').AsString := dblcdAgencia.Text;
   If DM1.cdsAgenciaBco.GotoKey Then
    dbeAgencia.Text := DM1.cdsAgenciaBco.FieldByName('AGENBCODES').AsString;
end;

procedure TFDevolCuota.dbeMontoDevolucExit(Sender: TObject);
begin
   If Length(Trim(dbeMontoDevoluc.Text)) = 0 Then
    begin
     ErrorMsg('Error', 'El Monto a Devolver Excede el Pago Efectuado por el Asociado');
     dbeMontoDevoluc.SetFocus;
     Exit;
    end;
end;

procedure TFDevolCuota.dbeAsoNomExit(Sender: TObject);
var
   xSQL : String;
begin
   If Z2bbtnCancel.Focused Then Exit;

   Screen.Cursor := crHourGlass;
   If (Trim(dbeAsoNom.Text)<>'') Then
    begin
     xSQL := 'SELECT * FROM APO201'
            +' WHERE ASOAPENOM LIKE '+QuotedStr(Trim(dbeAsoNom.Text+'%'));

     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSQL);
     DM1.cdsQry.Open;

     If DM1.cdsQry.RecordCount = 0 Then
      begin
       Beep;
       MessageDlg('No Existe un Asociado con el Nombre '+dbeAsoNom.Text, mtInformation, [mbOk], 0);
       dbeAsoNom.SetFocus;
       Screen.Cursor := crDefault;
       Exit;
      end;

     If DM1.cdsQry.RecordCount = 1 Then
      LlenarDatosAsociado
     Else
      CargaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeAsoNom.Text+'%')));

     dbeCodigoModular.Enabled := False;
    end;
   Screen.Cursor := crDefault;
end;

procedure TFDevolCuota.dbeCodigoModularExit(Sender: TObject);
var
   xSQL : String;
begin
   If Z2bbtnCancel.Focused Then Exit;

   Screen.Cursor := crHourGlass;
   If (Trim(dbeCodigoModular.Text) <> '') Then
    begin
     xSQL := 'SELECT * FROM APO201'
            +' WHERE ASOCODMOD LIKE '+QuotedStr(Trim(dbeCodigoModular.Text+'%'));

     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSQL);
     DM1.cdsQry.Open;

     If DM1.cdsQry.RecordCount = 0 Then
      begin
       Beep;
       MessageDlg('No Existe Ningún Asociado con el Código '+dbeCodigoModular.Text, mtInformation, [mbOk], 0);
       dbeCodigoModular.SetFocus;
       Screen.Cursor := crDefault;
       Exit;
      end;

     If DM1.cdsQry.RecordCount = 1 Then
      LlenarDatosAsociado
     Else
      CargaFiltro('ASOCODMOD LIKE '+QuotedStr(Trim(dbeCodigoModular.Text+'%')));

     dbeAsoNom.Enabled := False;
    end;
   Screen.Cursor := crDefault;
end;

procedure TFDevolCuota.CargaFiltro(xCampo : String);
begin
   DM1.cdsAsoX.Close;
   FPrincipal.Mtx  := TMant.Create(Self);
   Try
    FPrincipal.Mtx.Admin           := DM1.wAdmin;
    FPrincipal.Mtx.User            := DM1.wUsuario;
    FPrincipal.Mtx.TableName       := 'APO201';
    FPrincipal.Mtx.ClientDataSet   := DM1.cdsAsoX;
    FPrincipal.Mtx.Filter          := xCampo;
    FPrincipal.Mtx.DComC           := DM1.DCOM1;
    FPrincipal.Mtx.Module          := DM1.wModulo;
    FPrincipal.Mtx.Titulo 	   := 'Asociados';
    FPrincipal.Mtx.ControlGridDisp := FPrincipal.cgdPrincipal;
    FPrincipal.Mtx.SectionName	   := 'AsociadosX';
    FPrincipal.Mtx.Registros       := 30;
    FPrincipal.Mtx.FileNameIni     := '\SOLCOB.INI';
    FPrincipal.Mtx.OnEdit          := OnEditAso;
    FPrincipal.Mtx.Execute;
   Finally
    DM1.cdsAsoX.Close;
    FPrincipal.Mtx.Free;
   end;
   DM1.cdsAsoX.Close;
end;

procedure TFDevolCuota.OnEditAso(Sender: TObject; MantFields: TFields);
var
   xSQL : String;
begin
   If DM1.cdsAsoX.RecordCount = 0 Then
    begin
     Beep;
     MessageDlg('No Existen Registros a Seleccionar', mtInformation, [mbOk], 0);
     Exit;
    end;

   xSQL := 'SELECT * FROM APO201'
          +' WHERE ASOID ='+QuotedStr(DM1.cdsAsoX.FieldByName('ASOID').AsString);

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 1 Then
    LlenarDatosAsociado;

   TMant(Sender).FMant.Close;
end;

procedure TFDevolCuota.dbdtpFResultadoExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;
end;

procedure TFDevolCuota.dbmResultadoExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;
end;

procedure TFDevolCuota.dbeCuentaExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   If Length(Trim(dbeCuenta.Text))<0 Then
    begin
     Beep;
     MessageDlg('Número de Cuenta no es Válido', mtInformation, [mbOk], 0);
     dbeCuenta.SetFocus;
     Exit;
    end;
end;

procedure TFDevolCuota.dbgDevolverKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   xSuma : Double;
begin
   If wModo = 'A' Then
    begin
     If (Key = VK_Delete) And (ssCtrl in Shift) Then
      begin
       If MessageDlg('¿Eliminar Detalle ?',
        mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
        begin
         DM1.cdsRecauda.Delete;

         xSuma := DM1.OperClientDataSet(DM1.cdsRecauda, 'SUM(DEVMTO)', '');
         dbgDevolver.ColumnByName('DEVMTO').FooterValue  := FloatToStrF(xSuma, ffNumber, 10, 2);
         DM1.cdsReclamo.FieldByName('RECLTOTAL').AsFloat := xSuma;

         // Actualiza datos en cuota
         DM1.cdsCuotas.Setkey;
         DM1.cdsCuotas.FieldByName('TIPCREID').AsString  := DM1.cdsRecauda.FieldByName('TIPCREID').AsString;
         DM1.cdsCuotas.FieldByName('CREDID').AsString    := DM1.cdsRecauda.FieldByName('CREDID').AsString;
         DM1.cdsCuotas.FieldByName('CRECUOTA').AsInteger := DM1.cdsRecauda.FieldByName('CRECUOTA').AsInteger;
         If (DM1.cdsCuotas.Gotokey) And
           (DM1.cdsCuotas.FieldByName('CREFDEV').AsString='S') Then
          begin
           DM1.cdsCuotas.Edit;
           DM1.cdsCuotas.FieldByName('CREFDEV').Clear;
           DM1.cdsCuotas.Post;
          end;

         // Actualiza datos en pagos sin sustento
         DM1.cdsTransacciones.Setkey;
         DM1.cdsTransacciones.FieldByName('TIPCREID').AsString  := DM1.cdsRecauda.FieldByName('TIPCREID').AsString;
         DM1.cdsTransacciones.FieldByName('CREDID').AsString    := DM1.cdsRecauda.FieldByName('CREDID').AsString;
         DM1.cdsTransacciones.FieldByName('CRECUOTA').AsInteger := DM1.cdsRecauda.FieldByName('CRECUOTA').AsInteger;
         DM1.cdsTransacciones.FieldByName('NROOPE').AsString    := DM1.cdsRecauda.FieldByName('TRANSNOPE').AsString;
         DM1.cdsTransacciones.FieldByName('FOPERAC').AsDateTime := DM1.cdsRecauda.FieldByName('TRANSFOPE').AsDateTime;
         If (DM1.cdsTransacciones.GotoKey) And
            (DM1.cdsTransacciones.FieldByName('COBFDEV').AsString = 'S') Then
          begin
           DM1.cdsTransacciones.Edit;
           DM1.cdsTransacciones.FieldByName('COBFDEV').Clear;
           DM1.cdsTransacciones.Post;
          end;

         dbgCreditos.ColumnByName('CREMTOEXC').FooterValue   := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas,'SUM(CREMTOEXC)',''),ffNumber, 10, 2);
         dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob,'SUM(RECLMONTO)',''),ffNumber, 10, 2);
         dbgDevolver.ColumnByName('DEVMTO').FooterValue      := FloatToStrF(DM1.OperClientDataSet(DM1.cdsRecauda,'SUM(DEVMTO)',''),ffNumber, 10, 2);
        end;
      end;
    end;
end;

procedure TFDevolCuota.Actualiza;
Const
 xCaja302 : String = 'CIAID,TDIARID,ECANOMM,ECNOCOMP,CLAUXID,PROV,PROVRUC,ECFCOMP,'+
                     'ECFEMICH,ECFPAGOP,FPAGOID,DOCID,ECNODOC,TMONID,ECTCAMB,ECMTOORI,'+
                     'ECMTOLOC,ECMTOEXT,BANCOID,CCBCOID,CPTOID,CUENTAID,ECGLOSA,ECLOTE,'+
                     'ECELABO,ECESTADO,ECCONTA,ECUSER,ECFREG,ECHREG,ECANO,ECMM,ECDD,'+
                     'ECSS,ECSEM,ECTRI,ECAASS,ECAASEM,ECAATRI,EC_IE,CAJARETIGV,'+
                     'AUXID,CCBCOVOUCH,EC_PROCE';
var
 xFecha,xNumComp1,xNumComp2,xCampo,xSql : String;
begin
   //** JALA EL TIPO DE DOCUMENTO
   xSql := 'SELECT DOCID FROM TGE110 WHERE DOCRECCAJ=''S'' AND FCING = ''N''';
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(xSql);
   dm1.cdsQry.Open;
   xDocid := dm1.cdsQry.fieldByName('DOCID').AsString;

   xSql := 'select MAX(CNTCOMPROB) +1 TOTAL from cnt301'+
           ' where CIAID='+quotedstr(xCiaid)+
           ' and TDIARID='+quotedstr(xVouch)+
           ' AND CNTANOMM='+quotedstr(xCreano+xCreMes);
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(xSql);
   dm1.cdsQry.Open;
   If dm1.cdsQry.fieldByName('TOTAL').AsString = '' then xNumComp1 := '1';
   xNumComp1 := Dm1.StrZero(dm1.cdsQry.fieldByName('TOTAL').AsString,10);

   xSql := 'select MAX(ECNOCOMP) +1 TOTAL from CAJA321'+
           ' where CIAID='+quotedstr(xCiaid)+
           ' and TDIARID='+quotedstr(xVouch)+
           ' AND ECANOMM='+quotedstr(xCreano+xCreMes);
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(xSql);
   dm1.cdsQry.Open;
   If dm1.cdsQry.fieldByName('TOTAL').AsString = '' then xNumComp2 := '1';
   xNumComp2 := Dm1.StrZero(dm1.cdsQry.fieldByName('TOTAL').AsString,10);

   If xNumComp1 < xNumComp2 then
    xMaxNumComp := xNumComp2
   else
    xMaxNumComp := xNumComp1;
   //** ACTUALIZO CAJA302
   //** CIAID
   xCampo := quotedstr(xCiaid)+',';
   //** TDIARID
   xCampo := xCampo + quotedstr(xVouch)+',';
   xTDiarid := xVouch;
   //** ECANOMM
   xCampo := xCampo + quotedstr(xCreano+xCreMes)+',';
   xEcanomm := xCreano+xCreMes;
   //** ECNOCOMP
   xCampo := xCampo + quotedstr(xMaxNumComp)+',';
   //**CLAUXID
   xCampo := xCampo + quotedstr(xClauxid)+',';
   //** PROV
   xCampo := xCampo + quotedstr(DM1.cdsRecauda.FieldByName('ASOID').AsString)+',';
   //** PROVRUC
   xCampo := xCampo + quotedstr(DM1.cdsRecauda.FieldByName('ASODNI').AsString)+',';
   //** ECFCOMP
   xCampo := xCampo + wRepFecServi+',';
   xFechaCom := xFechaSys;
   //** ECFEMICH
   xCampo := xCampo + wRepFecServi+',';
   //** ECFPAGOP
   xCampo := xCampo + wRepFecServi+',';
   //** FPAGOID
   xCampo := xCampo + quotedstr(xFPagoid)+',';
   //** DOCID
   xCampo := xCampo + quotedstr(xDocid)+',';
   //** ECNODOC
   xCampo := xCampo +  quotedStr(dbeDevolucion.text)+', ';
   xNodoc := dbeDevolucion.text;
   //** TMONID
   xCampo := xCampo +  quotedStr(xTmonid)+', ';
   //** ECTCAMB
   xFecha := DateToStr(xFechasys);
   Dm1.RecUltTipoCambio(xFecha);
   xECTCAMB := dm1.cdsQry.FieldByName(dm1.wTCCompra).AsFloat;
   xCampo := xCampo + FLoatToStr(xECTCAMB) +', ';

   //** ECMTOORI
   xCampo := xCampo +  dbeMontoDevoluc.Text+', ';
   cPgoOri := StrToFloat(dbeMontoDevoluc.Text);
   //** ECMTOLOC
   xCampo := xCampo + dbeMontoDevoluc.Text +',';
   cPgoLoc := StrToFloat(dbeMontoDevoluc.Text);
   //** ECMTOEXT
   If xECTCAMB > 0 then
    begin
     xCampo := xCampo +  FloattoStr(DM1.FRound(StrToFloat(dbeMontoDevoluc.Text)/xECTCAMB ,15,4))+',';
     cPgoExt := DM1.FRound(StrToFloat(dbeMontoDevoluc.Text)/xECTCAMB ,15,4);
    end
   else
    begin
     xCampo := xCampo + 'null,';
     cPgoExt := 0;
    end;
   //** BANCOID
   xCampo := xCampo +  quotedStr(xBancoid)+', ';
   //** CCBCOID
   xCampo := xCampo +  quotedStr(xCcBcoid)+', ';
   //** CPTOID
   xCampo := xCampo +  quotedStr(xCptoid)+', ';
   //** CUENTAID
   xCampo := xCampo +  quotedStr(xCuentaid)+', ';
   //** ECGLOSA
   xCampo := xCampo +  quotedStr('Egreso de Caja')+', ';
   //** ECLOTE
   xCampo := xCampo +  quotedStr('000')+', ';
   //** ECELABO
   xCampo := xCampo +  quotedStr('EFECTCRE')+', ';
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

   xSql := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(DateToStr(xFechasys));
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
   xCampo := xCampo + quotedstr(DM1.cdsRecauda.FieldByName('ASOID').AsString)+',';
   //** CCBCOVOUCH
   xCampo := xCampo + quotedstr(xVouch)+',';
   //** EC_PROCE
   xCampo := xCampo + quotedstr('Y');
   xSql := 'INSERT INTO CAJA321 ('+xCaja302+') VALUES ('+xCampo+')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   //** Actualiza Caja322
   ActuCaja301;
   //** Actualiza Saldo TGE401
   //ActualizaSaldosTGE401(cPgoOri,cPgoLoc,cPgoExt, '-');
   //** Actualiza Saldo CAJA310
   //SaldosCaja310;
   //** Actuliza la provision de los créditos por el rango (CRE314) = CNT301
  // ActuCre314;
end;

procedure TFDevolCuota.ActuCaja301;
Const
 xCaja301 : String = 'CIAID,TDIARID,ECANOMM,ECNOCOMP,DOCID2,DOCMOD,CPTOID,TDIARID2,'+
                     'CUENTAID,CLAUXID,PROV,PROVRUC,TMONID,DEMTOORI,CPNODOC,DEFCOMP,CPFEMIS,'+
                     'CPFVCMTO,CPANOMM,DETCPAG,DEDH,DETCDOC,CPSERIE,DEMTOLOC,DEMTOEXT,'+
                     'DEUSER,DEFREG,DEHREG,DEANO,DEMM,DEDD,DESS,DESEM,DETRI,DEAASS,'+
                     'DEAASEM,DEAATRI,DEESTADO,DEGLOSA,ECGLOSA';
var
 xCampo,aux,xWhere : String;
begin
//   While not DM1.cdsReporte.eof do
//    begin
      xCampo := quotedstr(xCiaid)+',';
      xCampo := xCampo + quotedstr(xTdiarid)+',';
      xCampo := xCampo + quotedstr(xEcanomm)+',';
      xCampo := xCampo + quotedstr(xMaxNumComp)+',';
      xCampo := xCampo + quotedstr(xDocid)+',';
      xCampo := xCampo + quotedstr(dm1.wModulo)+',';
      xCampo := xCampo + quotedstr(xCptoid)+',';
      xCampo := xCampo + quotedstr(xTdiarid)+',';
      xCampo := xCampo + quotedstr(xCuentaid)+',';

      xWhere:='CIAID='+quotedstr(xCiaid)+' AND CUENTAID='+quotedstr(xCuentaid);
      DM1.DisplayDescrip('prvSQL','TGE202','CUENTAID, CTA_CCOS, CTA_AUX',xWhere,'CuentaId');

      if DM1.cdsQry.fieldbyName('CTA_AUX').asString = 'S' then
       begin
       xCampo := xCampo + quotedstr(xClauxid)+',';
       xCampo := xCampo + quotedstr(DM1.cdsRecauda.FieldByName('ASOID').AsString)+',';;
       xCampo := xCampo + quotedstr(DM1.cdsRecauda.FieldByName('ASODNI').AsString)+',';
       end
      else
       begin
        xCampo := xCampo + quotedstr('')+',';
        xCampo := xCampo + quotedstr('')+',';
        xCampo := xCampo + quotedstr(xAuxRuc)+',';
       end;
      xCampo := xCampo + quotedstr(xTmonid)+',';
      xCampo := xCampo + dbeMontoDevoluc.text +',';
      xCampo := xCampo + quotedstr(xNodoc)+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(xEcanomm)+',';
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      xCampo := xCampo + quotedstr('D')+',';
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      xCampo := xCampo + quotedstr('000')+',';
       xWhere:='TMONID='+quotedstr(xTmonid);
       aux:=DM1.DisplayDescrip('prvSQL','TGE103','TMONDES',xWhere,'TMONDES');
       if (length(aux)>0) and (StrToFloat(dbeMontoDevoluc.text) > 0 ) then
        begin
         if xTmonid = DM1.wTMonLoc then
          begin
           xCampo := xCampo + dbeMontoDevoluc.text+',';
           If xECTCAMB > 0 then
            xCampo := xCampo + FloatToStr(StrToFloat(dbeMontoDevoluc.text)/xECTCAMB)+','
           else
            xCampo := xCampo + '0,';
          end
         else
          begin
           If xECTCAMB > 0 then
            xCampo := xCampo + FloatToStr(StrToFloat(dbeMontoDevoluc.text)*xECTCAMB)+','
           else
            xCampo := xCampo + '0,';
           xCampo := xCampo + dbeMontoDevoluc.text+',';
          end;
       end
      else
       begin
        xCampo := xCampo + '0.00,';
        xCampo := xCampo + '0.00,';
       end;

      //** ECUSER
      xCampo := xCampo +  quotedStr(Dm1.wUsuario)+', ';
      //** ECFREG
      xCampo := xCampo +  wRepFecServi+', ';
      //** ECHREG
      xCampo := xCampo +  wRepTimeServi+', ';

      xSql := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(DateToStr(xFechasys));
      dm1.cdsQry.close;
      dm1.cdsQry.datarequest(xSql);
      dm1.cdsQry.open;
      //** DEANO
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString)+', ';
      //** DEMM
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString)+', ';
      //** DEDD
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString)+', ';
      //** DESS
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString)+', ';
      //** DESEM
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString)+', ';
      //** DETRI
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString)+', ';
      //** DEAASS
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString)+', ';
      //** DEAASEM
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString)+', ';
      //** DEAATRI
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString)+', ';
       //** DEESTADO
      xCampo := xCampo +  quotedStr('P')+',';
      //** DEGLOSA
      xCampo := xCampo +  quotedStr('Egreso de Caja')+', ';
      //** ECGLOSA
      xCampo := xCampo +  quotedStr('Egreso de Caja');
      xSql := 'INSERT INTO CAJA322 ('+xCaja301+') VALUES ('+xCampo+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
//     DM1.cdsReporte.next;
//    end;
end;

end.
