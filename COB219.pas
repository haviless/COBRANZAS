unit COB219;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppEndUsr, ppBands, ppClass, ppDB, ppDBPipe, ppCtrls, ppStrtch, ppMemo,
  ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, wwDialog,
  wwidlg, Menus, wwdbdatetimepicker, Wwdbdlg, wwdblook, StdCtrls, Buttons,
  variants, Wwdbigrd, Wwkeycb, Mask, wwdbedit, Grids, Wwdbgrid, ComCtrls, Tabnotbk,
  ExtCtrls,
  Db, Wwdatsrc, DBClient, wwclient;

type
  TFPagoRecau = class(TForm)
    pnlDetalle: TPanel;
    BitBtn1: TBitBtn;
    pnlCabecera2: TPanel;
    lblTMon: TLabel;
    lblTCambio: TLabel;
    lblProvRuc: TLabel;
    lblProvDes: TLabel;
    lblNoChq: TLabel;
    lblFormPago: TLabel;
    lblImporte: TLabel;
    lblLote: TLabel;
    lblCuenta: TLabel;
    Label23: TLabel;
    lblConcepto: TLabel;
    lblGlosa: TLabel;
    Label24: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    z2bbtnCancel: TBitBtn;
    z2bbtnOK: TBitBtn;
    edtAuxRuc: TEdit;
    edtTMon: TEdit;
    dbeTCambio: TwwDBEdit;
    dblcTMon: TwwDBLookupCombo;
    dbeGiradoA: TwwDBEdit;
    dbeNoChq: TwwDBEdit;
    dblcFormPago: TwwDBLookupCombo;
    edtFormPago: TEdit;
    dbeImporte: TwwDBEdit;
    dbeLote: TwwDBEdit;
    dblcdAux: TwwDBLookupComboDlg;
    dblcClase: TwwDBLookupCombo;
    edtClase: TEdit;
    dblcdCnp: TwwDBLookupComboDlg;
    dbeGlosa: TwwDBEdit;
    dbdtpFEmis: TwwDBDateTimePicker;
    dblcdFEfec: TwwDBLookupComboDlg;
    dbeFEfec: TwwDBEdit;
    edtCuenta: TwwDBLookupComboDlg;
    edtAuxpnl: TEdit;
    edtclasepnl: TEdit;
    dblcdCtaCte: TwwDBLookupComboDlg;
    pnlCabecera1: TPanel;
    lblCia: TLabel;
    lblFComp: TLabel;
    lblTDiario: TLabel;
    lblPeriodo: TLabel;
    lblNoComp: TLabel;
    lblBanco: TLabel;
    lblCCBco: TLabel;
    edtCia: TEdit;
    dblcCia: TwwDBLookupCombo;
    dbdtpFComp: TwwDBDateTimePicker;
    dblcTDiario: TwwDBLookupCombo;
    edtTDiario: TEdit;
    edtPeriodo: TEdit;
    dbeNoComp: TwwDBEdit;
    z2bbtnOKCab: TBitBtn;
    dblcBanco: TwwDBLookupCombo;
    edtBanco: TEdit;
    dblcCCBco: TwwDBLookupCombo;
    pnlBotones: TPanel;
    lblEstado: TLabel;
    z2bbtnImprime: TBitBtn;
    z2bbtnGraba: TBitBtn;
    z2bbtnCancelado: TBitBtn;
    z2bbtnCancel2: TBitBtn;
    z2bbtnNuevo: TBitBtn;
    z2bbtnSube: TBitBtn;
    z2bbtnCont: TBitBtn;
    z2bbtnAnula: TBitBtn;
    Z2bbtnEmiChq: TBitBtn;
    Z2bbtnNotaAbono: TBitBtn;
    Z2bbtnRetencion: TBitBtn;
    Button1: TButton;
    Z2bbtChqVouch: TBitBtn;
    z2bbtnCalc: TBitBtn;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    Buscar1: TMenuItem;
    N1: TMenuItem;
    lkdCxP: TwwLookupDialog;
    pprptNotaAbono: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppdbtCiaRuc: TppDBText;
    pplblNNA: TppLabel;
    pplblTitulo: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppsvFecha: TppSystemVariable;
    pplblFecha: TppLabel;
    pplblCliente: TppLabel;
    pplblNombreCli: TppLabel;
    pplblRucCli: TppLabel;
    pplblNRucCli: TppLabel;
    ppRucCia: TppLabel;
    pplblDirecCli: TppLabel;
    pplblNDirCli: TppLabel;
    pplblCta: TppLabel;
    pplblNCtaCte: TppLabel;
    pplblCia: TppLabel;
    pplblNumero: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppdbMonto: TppDBText;
    pplblMoneda: TppLabel;
    pplblConcepto: TppLabel;
    ppmmGlosa: TppMemo;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    pplblTotal: TppLabel;
    ppMoneda1: TppLabel;
    ppdbcTotal: TppDBCalc;
    ppdbpNotaAbono: TppDBPipeline;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    ppField36: TppField;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    ppField44: TppField;
    ppField45: TppField;
    ppField46: TppField;
    ppField47: TppField;
    ppField48: TppField;
    ppField49: TppField;
    ppField50: TppField;
    ppField51: TppField;
    ppField52: TppField;
    ppField53: TppField;
    ppField54: TppField;
    ppField55: TppField;
    ppField56: TppField;
    ppField57: TppField;
    ppField58: TppField;
    ppField59: TppField;
    ppField60: TppField;
    ppField61: TppField;
    ppField62: TppField;
    ppField63: TppField;
    ppField64: TppField;
    ppField65: TppField;
    ppField66: TppField;
    ppField67: TppField;
    ppField68: TppField;
    ppdbRetencion: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField69: TppField;
    ppField70: TppField;
    pprRetencion: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppTotal: TppDBCalc;
    ppDBText13: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesigner1: TppDesigner;
    ppdbpChqVouch: TppDBPipeline;
    pprChqVouch: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppImporte: TppLabel;
    ppAno: TppLabel;
    ppMes: TppLabel;
    ppDia: TppLabel;
    ppGiradoA: TppLabel;
    ppMontoLetras: TppLabel;
    ppFecha: TppDBText;
    ppTipoCambio: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppCtaBanco: TppLabel;
    ppGiradoA2: TppLabel;
    ppGlosa: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppImporte2: TppLabel;
    ppMoneda: TppLabel;
    ppComprobante: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBText20: TppDBText;
    TabbedNotebook1: TTabbedNotebook;
    Label17: TLabel;
    dbgDocPago: TwwDBGrid;
    dbgPendientes: TwwDBGrid;
    dbeMPL: TwwDBEdit;
    dbeMPE: TwwDBEdit;
    dbeTC: TwwDBEdit;
    pnlBusca: TPanel;
    Label27: TLabel;
    isBusca: TwwIncrementalSearch;
    procedure z2bbtnSumatClick(Sender: TObject);
    procedure dblcCiaExit(Sender: TObject);
    procedure dblcBancoExit(Sender: TObject);
    procedure dblcCCBcoExit(Sender: TObject);
    procedure dbdtpFCompExit(Sender: TObject);
    procedure z2bbtnOKCabClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
		Function  ValidacionCabecera:Boolean;
    procedure dbeNoCompKeyPress(Sender: TObject; var Key: Char);
    procedure dblcTDiarioExit(Sender: TObject);
    procedure dblcClaseExit(Sender: TObject);
    procedure dblcdAuxDropDown(Sender: TObject);
    procedure dblcdAuxEnter(Sender: TObject);
    procedure dblcdAuxExit(Sender: TObject);
    procedure dblcTMonExit(Sender: TObject);
    procedure dblcFormPagoExit(Sender: TObject);
    procedure edtCuentaExit(Sender: TObject);
    procedure dbeNoChqExit(Sender: TObject);
    procedure dbeTCambioEnter(Sender: TObject);
    procedure dbeTCambioExit(Sender: TObject);
    procedure dbeImporteExit(Sender: TObject);
    procedure dbeImporteKeyPress(Sender: TObject; var Key: Char);
    procedure dbeLoteExit(Sender: TObject);
    procedure dblcdCnpExit(Sender: TObject);
    procedure dblcdFEfecExit(Sender: TObject);
    procedure dblcdFEfecEnter(Sender: TObject);
    procedure z2bbtnCancelClick(Sender: TObject);
    procedure z2bbtnOKClick(Sender: TObject);
    procedure z2bbtnGrabaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgPendientesDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgPendientesEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgPendientesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgPendientesTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure dbgDocPagoCalcTitleAttributes(Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
    procedure dbgDocPagoColExit(Sender: TObject);
    procedure dbgDocPagoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgDocPagoEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgDocPagoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    xDirAux : String; // direccion del auxiliar
    strTmp: String;
		wFechaCierre : TDatetime  ;
		wFrecu       : Integer    ;
    xTC: Double;
		procedure ActivaFiltro(xName:string);
		procedure CambiaEstado(xName:char);
		procedure AdicIniciaDatos;
		procedure IniciaDatos;
    procedure GrabaCabeceraDeComprobante;
  public
    { Public declarations }
		procedure Adiciona;
  end;

var
  FPagoRecau: TFPagoRecau;
  wmodifica, wCiaRetIGV: Boolean;
  xVoucher : String;
  //procedure RecuperarCiaUnica(ComboLookUp:TwwDBLookupCombo;Edicion:TEdit);

implementation

uses COBDM1, MsgDlgs, COB001;

{$R *.DFM}

procedure TFPagoRecau.dblcCiaExit(Sender: TObject);
begin
  edtCia.text:= DM1.DisplayDescrip('prvTGE','TGE101','CIADES, CIARETIGV','CIAID='+QuotedStr(dblcCia.Text),'CIADES');

  wCiaRetIGV := (DM1.cdsQry.FieldByName('CIARETIGV').AsString='S');

  if edtCia.Text='' then
  begin
    ShowMessage('Error : Compañía no Valida');
    dblcCia.SetFocus;
    Exit;
  end;
end;

procedure TFPagoRecau.dblcBancoExit(Sender: TObject);
begin
  if dblcCia.Focused then Exit;

  edtBanco.text:=DM1.DisplayDescrip('prvTGE','TGE105','BANCONOM','BANCOID='+QuotedStr(dblcBanco.Text),'BANCONOM') ;

  if edtBanco.Text='' then
  begin
    dblcBanco.Value:= '';
    edtBanco.Text  := '';
    ShowMessage('Error : Banco no Valido');
    dblcBanco.SetFocus;
    Exit;
  end;

  if DM1.wModo = 'M' then
    Exit;

  dblcCCBco.Text:= '' ;
  edtCuenta.Text:= '' ;
  dblcdCnp.Text := '' ;
  dbeGlosa.Text := '' ;
  dblcTMon.Text := '' ;
  edtTMon.Text  := '' ;

  if DM1.cdsBancoEgr.FieldByName('BCOTIPCTA').Value = 'C' then
  begin //Si es CAJA
    dblcTDiario.Text := DM1.DisplayDescrip('prvTGE','TGE106','CCBCOVOUCH','BANCOID='+quotedstr(dblcBanco.text),'CCBCOVOUCH');
    dblcTDiario.OnExit(dblcTDiario);
    dblcCCBco.Enabled:=False;
    dblcTMon.Enabled := True ;
    edtCuenta.Text := DM1.DisplayDescrip('prvTGE','TGE105','CUENTAID','BANCOID='+quotedstr(dblcBanco.text),'CUENTAID');
  	//DM1.cdsFormPago.Filter := 'FEFE=''1'' or FEFE=''S'' ' ;
  	//DM1.cdsFormPago.Filtered := True ;
  	dbeNoChq.Enabled  :=False;
  	dbdtpFEmis.Enabled:=False;
  end
  else
  begin  //Si es BANCO
    dblcCCBco.Enabled:=True;
    dblcTMon.Enabled := False ;
    dblcFormPago.Enabled := False ;
    DM1.cdsCCBco.Filtered:=False;
    DM1.cdsCCBco.Filter:='';   //Filtrar la lista de CtaCte por Banco
    DM1.cdsCCBco.Filter:='BANCOID='+''''+dblcBanco.Text+''''+' AND CIAID='+quotedstr(dblcCia.text);
    DM1.cdsCCBco.Filtered:=True;
    //filtrar los tipos de pago
    //DM1.cdsFormPago.Filter := 'FCBCO=''1'' or FCBCO=''S'' ' ;
    //DM1.cdsFormPago.Filtered := true ;
  	dblcCCBco.setfocus;
  end;

  if dm1.cdsFormaPago.RecordCount > 1 then
  begin
    dblcFormPago.Enabled := True;
    dblcFormPago.text := '' ;
    edtFormPago.text := '' ;
  end
  else
    dblcFormPago.Enabled := False;

  dblcFormPago.text := DM1.cdsFormaPago.FieldByName('FORPAGOID').AsString;
  dblcFormPagoExit(Sender);
  dbeNoChq.Text := '' ;
  wmodifica:=True;
end;

procedure TFPagoRecau.dblcCCBcoExit(Sender: TObject);
var
  Tmp : String ;
begin
  if dblcCia.Focused   then Exit;
  if dblcBanco.Focused then Exit;

  tmp:=DM1.DisplayDescrip('prvTGE','TGE106','CCBCOID','CCBCOID='+QuotedStr(dblcCCBco.Text),'CCBCOID') ;

	if Tmp='' then
	begin
    edtCuenta.Text:= '' ;
    dblcdCnp.Text := '' ;
    dbeGlosa.Text := '' ;
    ShowMessage('Error : Cuenta Corriente No Valida');
    dblcccbco.SetFocus;
    exit;
  end;

	dblcTmon.Text := dm1.cdsCCBco.fieldbyname('TMONID').AsString ;
	edtTMon.Text  := DM1.DisplayDescrip('prvTGE','TGE103','TMONDES','TMONID='+QuotedStr(dblcTMon.Text),'TMONDES') ;
	dbeNOChq.Text := '' ;

  edtCuenta.Text:= DM1.cdsCCBco.fieldbyname('CTAPRINC').AsString ;
  dblcdCnp.Text := dm1.DisplayDescrip('prvTGE','CAJA201','CPTOID','CPTOID='+quotedstr(DM1.cdsCCBco.fieldbyname('CPTOID').AsString),'CPTOID');
  dbeGlosa.Text := dm1.DisplayDescrip('prvTGE','CAJA201','CPTODES','CPTOID='+quotedstr(dblcCCBco.text),'CPTODES');  //  DM1.cdsCCBcoLKGLOSA.AsString ;
  xVoucher      := DM1.cdsCCBco.fieldbyname('CCBCOVOUCH').AsString;

  If dm1.wModo = 'A' then
  begin
     dblcTDiario.Text := DM1.DisplayDescrip('prvTGE','TGE106','CCBCOVOUCH','CIAID='''+dblcCia.Text+''' and BANCOID='+quotedstr(dblcBanco.text)+' AND CCBCOID='+quotedstr(dblcCCBco.text),'CCBCOVOUCH');
     dblcTDiario.OnExit(dblcTDiario);
  end;

  if dm1.cdsFormaPago.RecordCount = 1 then
     dblcformpago.Enabled := false
  else
     dblcformpago.Enabled := true;

  wmodifica:=True;
end;

procedure TFPagoRecau.dbdtpFCompExit(Sender: TObject);
var
   xWhere : String;
begin
   if dblcCia.Focused   then Exit;
   if dblcBanco.Focused then Exit;
   if dblcCCBco.Focused then Exit;

  if DM1.BuscaFechaCierre( dblcCia.Text, dblcBanco.Text, dblcCCBco.text, dbdtpFComp.Date ) then
  begin
     Showmessage('Error : Mes de Fecha Fue Cerrado. Verificar...');
     dbdtpFComp.SetFocus;
     Exit;
  end;

   if not DiaAperturado(dblcCia.text,dbdtpFComp.Date,dblcBanco.text) then
   Begin
     dbdtpFComp.setfocus;
     Exit;
   End;

	if dbdtpFComp.Date=0 then
  begin
    ShowMessage('Fecha de Comprobante Errada');
    dbdtpFComp.SetFocus;
    Exit;
  end;

   xWhere:='TMONID='+quotedstr(DM1.wTMonExt)+' '+
           'AND FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha,dbdtpFComp.Date)+''')';
   if length(DM1.DisplayDescrip('prvTGE','TGE107','TMONID, '+dm1.wTipoCambioUsar,xWhere,'TMONID'))=0 then
   begin
      dbdtpFComp.SetFocus;
      ShowMessage('Tipo de Cambio No Registrado');
      exit;
   end;

   dbeTCambio.Text:=DM1.DisplayDescrip('prvTGE','TGE107','TMONID, '+DM1.wTipoCambioUsar,xWhere,DM1.wTipoCambioUsar);

   edtPeriodo.text:=copy(datetostr(dbdtpFComp.date),7,4)
                   +copy(datetostr(dbdtpFComp.date),4,2);
   dbdtpFEmis.date:= dbdtpFComp.date;

   if trim(edtTDiario.Text) <> '' then
   begin
      xWhere:='CIAID='+quotedstr(dblcCia.Text)+' AND ECANOMM='+quotedstr(edtPeriodo.Text)
             +' AND TDIARID='+ quotedstr(dblcTDiario.Text);
      dbeNoComp.text:=DM1.UltimoNum('prvCaja','CAJA321','ECNOCOMP',xWhere);
      dbeNoComp.text:=DM1.StrZero(dbeNoComp.text,10);
      //DM1.cdsAso.FieldByName('ECNOCOMP').AsString:=dbeNoComp.text;
      //dbeNoComp.text:=DM1.StrZero(dbeNoComp.text,DM1.cdsAso.FieldByName('ECNOCOMP').Size);
   end ;
end;

procedure TFPagoRecau.z2bbtnOKCabClick(Sender: TObject);
var
  xWhere : String;
  xSQL   : string;
begin
  if DM1.BuscaFechaCierre( dblcCia.Text, dblcBanco.Text, dblcCCBco.text, dbdtpFComp.Date ) then
  begin
    Showmessage('Error : Mes de Fecha Fue Cerrado. Verificar...');
    dbdtpFComp.SetFocus;
    Exit;
  end;

  if not DiaAperturado(dblcCia.text,dbdtpFComp.Date,dblcBanco.text) then
  Begin
    dbdtpFComp.setfocus;
    Exit;
  End;

  if dbdtpFComp.Date=0 then
  begin
    ShowMessage('Fecha de Comprobante Errada');
    dbdtpFComp.SetFocus;
    Exit;
  end;

  if validacionCabecera = False then
    exit;

  dbeTCambio.Text   := DM1.RecuperarTipoCambio(dbdtpFComp.date) ;

  xWhere :=  'CIAID ='+quotedstr(dblcCia.Text)
  +' AND TDIARID ='+quotedstr(dblcTDiario.Text)
  +' AND ECANOMM ='+quotedstr(edtPeriodo.Text)
  +' AND ECNOCOMP ='+quotedstr(dbeNoComp.Text);

  if DM1.wModo = 'A' then
  begin
    if DM1.DisplayDescrip('prvTGE','CAJA321','COUNT(*) TOTREG',xWhere,'TOTREG')>'0' then
    begin
      ShowMessage('Comprobante ya esta Registrado');
      dbeNoComp.Text:='';
      dbeNoComp.SetFocus;
      exit;
    end
    else
    begin
      GrabaCabeceraDeComprobante;
  end;

    // 9729 ORACLE Y 13059 DB2NT
    if ( DM1.wCodigoError=9729 ) or
       ( DM1.wCodigoError=13059 ) then
    begin
      dbeNoComp.SetFocus;
      Exit;
    end;

    ActivaFiltro('MOVREC')  ;
    ActivaFiltro('DOCPAGO') ;
    //0805
    //liberamos el filtro del detalle
    //DM1.cdsRegCxP.Filtered := False ;

    CambiaEstado('N');
  end;

  xSQL:='SELECT * FROM CAJA322 '+
        'WHERE CIAID='+QuotedStr(dblcCia.Text)+' '+
        'AND TDIARID='+QuotedStr(DM1.cdsAso.FieldByName('TDIARID').AsString)+' '+
        'AND ECANOMM='+QuotedStr(edtPeriodo.Text)+' '+
        'AND ECNOCOMP='+QuotedStr(dbeNoComp.Text);
  DM1.cdsDocPago.Close;
  DM1.cdsDocPago.DataRequest(xSQL);
  DM1.cdsDocPago.Open;

  (Sender as tcontrol).enabled:=false;
  perform(CM_DialogKey,VK_TAB,0);
  wmodifica:=False;

  dblcClase.Text:=FPrincipal.CAxuRep;
  dblcClaseExit(Sender);
  dblcClase.Enabled:=False;

  if DM1.wModo = 'A' then
    dblcdAux.SetFocus;
end;

procedure TFPagoRecau.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 Then
  begin
    //If Self.ActiveControl Is TDBMemo Then Exit;
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

function TFPagoRecau.ValidacionCabecera: Boolean;
begin
  result:=false;
  if trim(dblccia.text)='' then
  begin

  end;
  if dbdtpFComp.Date=0 then
  begin
       ShowMessage('Ingrese Fecha de Comprobante');
       dbdtpFComp.SetFocus;
       exit;
  end;
  if trim(edtPeriodo.text)='' then
  begin
       ShowMessage('Ingrese Fecha de Comprobante');
       dbdtpFComp.SetFocus;
       exit;
  end;
  if trim(dblcTDiario.text)='' then
  begin
       ShowMessage('Ingrese Tipo de Diario');
       dblcTDiario.SetFocus;
       exit;
  end;
  if trim(edtTDiario.text)='' then
  begin
       ShowMessage('Ingrese Tipo de Diario');
       //dblcTDiario.SetFocus;
       exit;
  end;
  if trim(dbeNocomp.text)='' then
  begin
       ShowMessage('Ingrese Número de Comprobante');
       dbeNocomp.SetFocus;
       exit;
  end;

	//si llega aqui es true
	result:=true;
end;

procedure TFPagoRecau.ActivaFiltro(xName: string);
var
  xFiltro ,
  xWhere : String ;
	sDocumentos,xSQL   : String ;
begin
  xName := uppercase(xName);

  {if xName='REGCXP' then
	begin
    DM1.cdsQry.Close;
		DM1.cdsQry.DataRequest('SELECT DOCID FROM TGE110 WHERE (DOCMOD=''CAJA'' OR DOCMOD=''CXP'') AND DOCRESTA=''S''');
		DM1.cdsQry.Open;
		DM1.cdsQry.First;

		xSQL:='Select * from CAJA301 '
				 +'Where CIAID='''   +dblcCia.Text     +''' and '
				 +      'ECANOMM=''' +edtPeriodo.Text  +''' and '
				 +      'TDIARID=''' +dblcTDiario.Text +''' and '
				 +      'ECNOCOMP='''+dbeNoComp.Text   +''' ';
		DM1.cdsRegCxP.Close;
		DM1.cdsRegCxP.DataRequest( xSQL );
		DM1.cdsRegCxP.Open;
	end;

	if xName='DOCPAGO' then
	begin
		xSQL:='Select * from CAJA303 '
				+'Where CIAID='''   +dblcCia.Text    +''' and '
				+      'ECANOMM=''' +edtPeriodo.Text +''' and '
				+      'TDIARID=''' +dblcTDiario.Text+''' and '
				+      'ECNOCOMP='''+dbeNoComp.Text  +''' ';
		DM1.cdsDocPago.Close;
		DM1.cdsDocPago.DataRequest( xSQL );
		DM1.cdsDocPago.Open;
	end;}

	if xName='MOVREC' then
	begin
		{sDocumentos:='';
		if DM1.cdsQry.RecordCount>0 then
		begin
      sDocumentos:=' AND (';
			while not DM1.cdsQry.EOF do
			begin
        if DM1.cdsQry.RecordCount=1 then
				  sDocumentos:=sDocumentos+' DOCID<>'+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)
        else
				if DM1.cdsQry.RecNo=DM1.cdsQry.RecordCount then
          sDocumentos:=sDocumentos+' DOCID<>'+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)
        else
          sDocumentos:=sDocumentos+' DOCID<>'+QuotedStr(DM1.cdsQry.FieldByName('DOCID').AsString)+' AND ';
        DM1.cdsQry.Next;
      end;
			sDocumentos:=sDocumentos+' )';
    end;}

		xWhere := 'REPRID='+QuotedStr(dblcdAux.Text);
    
		DM1.cdsMovRec.Close ;
		DM1.cdsMovRec.Datarequest('SELECT * FROM COB208 WHERE '+xWhere);
		DM1.cdsMovRec.Open;
    //DM1.cdsMovRec.IndexFieldNames:='CLAUXID;PROV;CPNODOC';

		xFiltro:='(((BOLRTOTAL-BOLRPAGADO-BOLRSALDO)> -0.01 AND (BOLRTOTAL-BOLRPAGADO-BOLRSALDO) < 0.01 ) OR '+
						 '(BOLRTOTAL = BOLRSALDO))  AND (BOLRSALDO > 0)';

		DM1.cdsMovRec.Filter  := '';
		DM1.cdsMovRec.Filter  := xFiltro ;
		DM1.cdsMovRec.Filtered:= True;
  end;
end;

procedure TFPagoRecau.CambiaEstado(xName: char);
begin
  case xName of
    'I':begin  //Si está INCOMPLETO o PENDIENTE
          lblEstado.Caption    :='Activo             ';
          pnlCabecera1.Enabled := False;
          pnlCabecera2.Enabled := True;
          z2bbtnOk.Enabled       := True;
          z2bbtnCancel.Enabled   := True;

          dbgPendientes.ReadOnly :=false ;
          dbgDocPago.ReadOnly    :=False ;

          {wbSumat     := True;
          wbCont      := False;
          wbNuevo     := True;
          wbImprime   := True;
          wbSube      := True;
          wbGraba     := True;
          wbCancelado := True;
          wbCancel2   := True;
          wbAnula     := True;
          wbChq       := True ;}
        end;

     'C':begin
            pnlCabecera1.Enabled := False;    // Desactivar Panel1
            pnlCabecera2.Enabled := False;    // Desactivar Panel2
            pnlDetalle.Enabled   := True;     // Activar Panel de Detalle
            pnlBotones.Enabled   := True;     // Activar Panel de Botones

            dbgPendientes.ReadOnly :=True;
            dbgDocPago.ReadOnly    :=True;

            z2bbtnOk.Enabled       := False;
            z2bbtnCancel.Enabled   := False;

            {if DM1.cdsAso.FieldByName('ECConta').Value='S' then
            begin  //Esta contabilizado
               wbCont             := False;
               lblEstado.Caption  :='Cancelado y Contab.';
               wbAnula            := False;
            end
            else
            begin
               wbCont             := True;
               lblEstado.Caption  :='Cancelado          ';
               wbAnula            := True;
            end;
            wbSumat     := False;
            wbNuevo     := True;
            wbImprime   := True;
            wbSube      := False;
            wbGraba     := False;
            wbCancelado := False;
            wbCancel2   := False;
            wbChq       := False ;}
         end;

     'A':begin
            lblEstado.Caption     :='Anulado            ';
            pnlCabecera1.Enabled := False;    // Desactivar Panel1
            pnlCabecera2.Enabled := False;    // Desactivar Panel2
            pnlDetalle.Enabled   := True;     // Activar Panel de Detalle
            pnlBotones.Enabled   := True;     // Activar Panel de Botones

            dbgPendientes.ReadOnly :=True;
            dbgDocPago.ReadOnly    :=True;
            z2bbtnOk.Enabled        := False;
            z2bbtnCancel.Enabled    := False;

            {wbSumat     := False;
            wbCont      := False;
            wbNuevo     := True;
            wbImprime   := True;
            wbSube      := False;
            wbGraba     := False;
            wbCancelado := False;
            wbCancel2   := False;
            wbAnula     := False;
            wbChq       := False ;}
         end;

     'N':begin
            lblEstado.Caption:='Nuevo     ';
            pnlCabecera1.Enabled := false;
            pnlCabecera2.Enabled := True;
//2804
            dbgPendientes.ReadOnly := False ;
            dbgDocPago.ReadOnly    := False ;

//
            z2bbtnOk.Enabled       := True;
            z2bbtnCancel.Enabled   := True;

            {wbSumat     := True;
            wbCont      := False;
            wbImprime   := False;
            wbNuevo     := False;
            wbSube      := True;
            wbGraba     := True;
            wbCancelado := False;
            wbCancel2   := True;
            wbAnula     := False;
            wbChq       := False ;}
         end;
   end;
end;

procedure TFPagoRecau.dbeNoCompKeyPress(Sender: TObject; var Key: Char);
begin
  dbeNoComp.text:=DM1.StrZero(dbeNoComp.text,10);
  //dbeNoComp.text:=DM1.StrZero(dbeNoComp.text,DM1.cdsAso.FieldByName('ECNOCOMP').Size);
end;

procedure TFPagoRecau.dblcTDiarioExit(Sender: TObject);
var
  xWhere:string;
begin
  edtTDiario.Text := DM1.DisplayDescrip('prvTGE','TGE104','TDIARDES','TDIARID='+quotedstr(dblcTDiario.text),'TDIARDES');
  if DM1.wModo = 'M' then
    Exit;
  if trim(edtTDiario.Text) <> '' then
  begin
    xWhere:='CIAID='+quotedstr(dblcCia.Text)+' AND ECANOMM='+quotedstr(edtPeriodo.Text)
           +' AND TDIARID='+ quotedstr(dblcTDiario.Text); // + ' AND EC_PROCE='+quotedstr('B');
    dbeNoComp.text:=DM1.UltimoNum('prvCaja','CAJA321','ECNOCOMP',xWhere);
    dbeNoComp.text:=DM1.StrZero(dbeNoComp.text,10);
    //dbeNoComp.text:=DM1.StrZero(dbeNoComp.text,DM1.cdsAso.FieldByName('ECNOCOMP').Size);
  end ;
end;

procedure TFPagoRecau.dblcClaseExit(Sender: TObject);
var
  xSQLx : string ;
begin
  edtClase.text:= DM1.DisplayDescrip('prvTGE','TGE102','CLAUXDES','CLAUXID='+quotedstr(dblcClase.Text),'CLAUXDES') ;

  if DM1.wModo = 'M' then
    Exit;

  if edtClase.Text='' then
  begin
    dblcdAux.Text  := '' ;
		edtAuxRUC.Text := '' ;
    dbeGiradoA.Text:= '' ;
    ShowMessage('Error : Clase de Auxiliar');
    dblcClase.SetFocus;
    Exit;
  end;

  //xSQLx:='SELECT * FROM CNT201 WHERE CLAUXID='''+dblcClase.Text+'''';
  xSQLx:='SELECT REPRID AUXID, REPRRUC AUXRUC, REPRAPENOM AUXNOMB FROM COB201';
  DM1.cdsAux.Close;
  DM1.cdsAux.DataRequest( xSQLx ) ;
  DM1.cdsAux.Open;

  dblcdAux.Selected.Clear;
  dblcdAux.Selected.Add('AUXID'#9'13'#9'Auxiliar'#9'F');
  dblcdAux.Selected.Add('AUXRUC'#9'13'#9'R.U.C'#9'F');
  //dblcdAux.Selected.Add('AUXABR'#9'15'#9'Abreviatura'#9'F');
  dblcdAux.Selected.Add('AUXNOMB'#9'45'#9'Nombre Recaudador'#9'F');
end;

procedure TFPagoRecau.dblcdAuxDropDown(Sender: TObject);
begin
  DM1.cdsAux.IndexFieldNames:='AUXNOMB';
end;

procedure TFPagoRecau.dblcdAuxEnter(Sender: TObject);
begin
  if dblcClase.Text='' then
    dblcdAux.SetFocus;
end;

procedure TFPagoRecau.dblcdAuxExit(Sender: TObject);
var
  xSql, xAuxt: string ;
begin
	if z2bbtnCancel.Focused then exit;
	if dblcClase.Focused    then Exit ;

	{xAuxt:= DM1.DisplayDescrip('','TGE102','CLAUXID','AUXID='+QuotedStr(dblcdAux.Text),'CLAUXID') ;

	if xAuxt='' then
  begin
    dblcdAux.Text  := '' ;
		edtAuxRUC.Text := '' ;
		dbeGiradoA.Text:= '' ;
		ShowMessage('Error : Auxiliar No Valido');
		dblcdAux.SetFocus;
		Exit;
	end;}

	{if DM1.cdsAux.FieldByName('AUXGIRA').AsString='' then
    dbeGiradoA.Text := DM1.cdsAux.FieldByName('AUXNOMB').Asstring
	else
    dbeGiradoA.Text := DM1.cdsAux.FieldByName('AUXGIRA').Asstring ;}

	//edtAuxRuc.Text:= DM1.cdsAux.FieldByName('AUXRUC').Asstring;
	edtAuxRuc.Text:= DM1.DisplayDescrip('prvTGE','COB201','REPRRUC, REPRAPENOM','REPRID='+QuotedStr(dblcdAux.Text),'REPRRUC') ;
  dbeGiradoA.Text:=DM1.cdsQry.FieldByName('REPRAPENOM').AsString;

  //xDirAux       := DM1.cdsAux.FieldByName('AUXDIR').Asstring;

  xSql := 'SELECT * FROM CAJA102 WHERE PROV='+quotedstr(trim(dblcdAux.Text))+' ORDER BY CCBCOID';
  dm1.cdsProvCta.Close;
  dm1.cdsProvCta.DataRequest(xSql);
  dm1.cdsProvCta.Open
end;

procedure TFPagoRecau.dblcTMonExit(Sender: TObject);
var
  xWhere :String;
begin
  if z2bbtnCancel.Focused then exit;

  edtTMon.text:= DM1.DisplayDescrip('prvTGE','TGE103','TMONDES','TMONID='+QuotedStr(dblcTMon.Text),'TMONDES');

  if edtTMon.Text='' then
  begin
    edtTmon.text   :='';
    dbeTCambio.Text:='';
    dblcTMon.Text  :='';
    ShowMessage('Error : Moneda no Valida');
    dblcTMon.SetFocus;
    Exit;
  end;
end;

procedure TFPagoRecau.dblcFormPagoExit(Sender: TObject);
begin
  if z2bbtnCancel.Focused then exit;
  if dblcTMon.Focused then exit;

  //edtFormPago.text:= DM1.DisplayDescripLocal(DM1.cdsFormaPago,'FORPAGOID',dblcFormPago.Text,'FORPAGODES') ;
  edtFormPago.text:= DM1.DisplayDescrip('prvTGE','COB101','FORPAGODES, TIPO','FORPAGOID='+QuotedStr(dblcFormPago.Text),'FORPAGODES');

  if dblcFormPago.Text='' then
  begin
    dbeNoChq.Text :='';
    ShowMessage('Error : Forma de Pago no Valida');
    dblcFormPago.SetFocus;
    Exit;
  end;


  if DM1.cdsQry.FieldByName('TIPO').AsString='D' then
  begin
    dbeNoChq.Enabled  := True;
    edtCuenta.setfocus;
  end
  else
  begin
    dbeNoChq.Enabled  := False;
    if pnlCabecera2.enabled = True then
      dbdtpFEmis.setfocus;
  end;


  {if DM1.cdsFormaPago.FieldByName('FCANJE').AsString='S' then
  begin
    dm1.abreCuentas(dblcCia.text) ;
    edtCuenta.Enabled  := True;
    edtCuenta.setfocus;
  end
  else
  begin
    edtCuenta.Enabled  := False ;
    edtAuxpnl.Visible  := false;
    edtclasepnl.Visible:= false;
  end;

  if DM1.cdsFormPago.FieldByName('FCANJE').AsString= 'A' then
  begin
    dblcdCtaCte.LookupTable:= dm1.cdsProvCta;
    dblcdCtaCte.Enabled    := True;
    dblcdCtaCte.setfocus;
  end
  else
    dblcdCtaCte.Enabled := False;

  if (DM1.cdsFormPago.FieldByName('FCHQ').AsString='1') or
     (DM1.cdsFormPago.FieldByName('FCHQ').AsString='S') then
  begin
    dbeNoChq.Enabled  :=True  ;
    dbdtpFEmis.Enabled:= True ;
    dbeNoChq.SetFocus;
  end
  else
  begin
    dbeNoChq.Enabled  := False;
    dbdtpFEmis.Enabled:= False ;
  end;}
end;

procedure TFPagoRecau.edtCuentaExit(Sender: TObject);
var
  ssql : string;
  sWhere : String;
begin
  if z2bbtnCancel.Focused then exit;
  if dblcFormPago.Focused then exit;

	sSQL:='SELECT * FROM TGE202 '+
        'WHERE CIAID='+quotedstr(dblccia.Text)+' '+
        'AND CUENTAID='+quotedstr(edtCuenta.text);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(ssql);
  DM1.cdsQry2.open;
  if (DM1.cdsQry2.fieldbyname('CTA_AUX').AsString = 'S') then
  begin
     sSQL := 'CLAUXID='+quotedstr(DM1.cdsAso.fieldbyname('CLAUXID1').AsString);
     edtclasepnl.Text := DM1.DisplayDescrip('prvClaseAux','TGE102','CLAUXDES',sWhere,'CLAUXDES');
     ssql :='';
     ssql := 'AUXID='+quotedstr(DM1.cdsAso.fieldbyname('AUXID').AsString);
     edtAuxpnl.Text := DM1.DisplayDescrip('prvQry2','CNT201','AUXNOMB',sWhere,'AUXNOMB');
     pnlCabecera2.Enabled := false;
  end
  else begin
     edtAuxpnl.Text := '';
     edtAuxpnl.visible := false;
     edtclasepnl.Text := '';
     edtclasepnl.visible := false;
    end;
end;

procedure TFPagoRecau.dbeNoChqExit(Sender: TObject);
var
  xSql : string;
begin
  xSql:='CIAID='+quotedstr(dblcCia.text)+' '+
        'AND TDIARID='+quotedstr(dblcTDiario.text)+' '+
        'AND ECNOCOMP<>'+quotedstr( dbeNoComp.Text )+' '+
        'AND CCBCOID='+quotedstr(dblcCCBco.Text)+' '+
        'AND ECNOCHQ='+quotedstr(dbeNoChq.text);
        //' AND ECESTADO<>''A'' ';

  dm1.DisplayDescrip('prvTGE','CAJA321','ECNOCHQ,ECESTADO,ECELABO',xsql,'ECNOCHQ');
  if DM1.cdsQry.FieldByName('ECNOCHQ').AsString<>'' then
  begin
    if DM1.cdsQry.FieldByName('ECESTADO').AsString<>'C' then
    begin
      showmessage('El número de Cheque ya fue Utilizado');
      dbeNoChq.Text := '';
      dbeNoChq.SetFocus;
    end
    else
    begin
      if DM1.cdsQry.FieldByName('ECELABO').AsString='NULO' then
      begin
        showmessage('El número de Cheque ya fue Utilizado');
        dbeNoChq.Text := '';
        dbeNoChq.SetFocus;
      end
    end;
  end;
end;

procedure TFPagoRecau.dbeTCambioEnter(Sender: TObject);
begin
  strTmp := TCustomEdit(Sender).Text ;
end;

procedure TFPagoRecau.dbeTCambioExit(Sender: TObject);
begin
  if strTmp <> dbeTCambio.text then
  begin
    dbeTcambio.text := dbeTCambio.text;
  end ;
end;

procedure TFPagoRecau.dbeImporteExit(Sender: TObject);
begin
  if length(Trim(dbeImporte.Text))=0 then
    raise exception.Create('Ingrese Importe')
  else
  begin
    dbeImporte.Text := Floattostr(strtoFloat(dbeImporte.Text));
  end;
end;

procedure TFPagoRecau.dbeImporteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key In [' ', 'A'..'Z', 'a'..'z',
             '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
             '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
             ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
             '-', '_'] Then
    Key := #0;
end;

procedure TFPagoRecau.dbeLoteExit(Sender: TObject);
begin
  if z2bbtnCancel.Focused then exit;

  dbeLote.text:=DM1.StrZero(dbeLote.text,DM1.cdsAso.FieldByName('ECLOTE').Size);
end;

procedure TFPagoRecau.dblcdCnpExit(Sender: TObject);
begin
  if z2bbtnCancel.Focused then exit;
  if dbeLote.Focused      then exit;

  dbeGlosa.text := DM1.DisplayDescripLocal(DM1.cdsCnpEgr,'CPTOID',dblcdCnp.Text,'CPTODES') ;

  {if dbeGlosa.text='' then
  begin
    ShowMessage('Error : Concepto no Valido');
    dblcdCnp.SetFocus;
  end;}
end;

procedure TFPagoRecau.dblcdFEfecExit(Sender: TObject);
begin
  if trim(TCustomEdit(Sender).Text) <> strTmp then
  begin
     if trim(TCustomEdit(Sender).Text) <> '' then
     begin
        if DM1.RecuperarDatos('TGE217','FLUEFEABR','FLUEFEID=''' + TCustomEdit(Sender).Text + ''' ') then
        begin
          dbeFEfec.Text := DM1.cdsRec.fieldbyname('FLUEFEABR').AsString ;
        end
        else
        begin
          TCustomEdit(Sender).Text := '' ;
          dbeFEfec.Text := ''
        end ;
     end
     else
        dbeFEfec.Text := ''
  end ;
  TCustomEdit(Sender).Text := trim(TCustomEdit(Sender).Text) ;
end;

procedure TFPagoRecau.dblcdFEfecEnter(Sender: TObject);
begin
  strTmp := dblcdFEfec.Text ;
end;

procedure TFPagoRecau.z2bbtnCancelClick(Sender: TObject);
begin
  DM1.cdsAso.CancelUpdates;
  //if DM1.cdsRegCxP.Active  then DM1.cdsRegCxP.CancelUpdates;
  if DM1.cdsDocPago.Active then DM1.cdsDocPago.CancelUpdates;
  if DM1.cdsMovRec.Active  then DM1.cdsMovRec.CancelUpdates;
  Adiciona;
  AdicIniciadatos;
  dbeLote.Text := '000';
end;

procedure TFPagoRecau.Adiciona;
var
  xSQL : String ;
begin
  //Código Nuevo
  IniciaDatos;

  dblcCCBco.Selected.Clear;
  dblcCCBco.Selected.Add('CCBCOID'#9'25'#9'Cuenta Corriente del Banco'#9'F');
  dblcCCBco.Selected.Add('CCBCODES'#9'30'#9'Descripción'#9'F');
  dblcCCBco.Selected.Add('TMONID'#9'03'#9'Moneda'#9'F');

  edtCuenta.Enabled := False ;

  //DM1.cdsRegCxP.Filter := 'CIAID=''''' ;
  //DM1.cdsRegCxP.Filtered := True ;
  z2bbtnNuevo.Visible := True ;
  z2bbtnCancel.Visible := True ;

  // vhn 22/01/2001
  xSQL:='SELECT * FROM CAJA322 '+
        'WHERE CIAID='''' AND ECANOMM='''' '+
        'AND TDIARID='''' AND ECNOCOMP=''''';
  DM1.cdsDocPago.Close;
  DM1.cdsDocPago.DataRequest( xSQL );
  DM1.cdsDocPago.Open;

  dblcClase.Enabled  := True ;
  dblcdAux.Enabled   := True ;
  //** 10/04/2001 - pjsv se quita por recomendación de Jorge
  //DM1.cdsMovRec.Filter := 'CIAID=''''' ;
  //DM1.cdsMovRec.Filtered := True ;
  //**
  //xTC := 0 ;
  DM1.RecuperaCierre( wFechacierre , wFrecu ) ;
  if wFechaCierre = 0 then
  begin
    dbdtpFComp.date := date ;
  end
  else
  begin
    if (tDate(date) > wFechaCierre) and (tdate(date)<=wFechaCierre+wFrecu) then
      dbdtpFComp.date := date
    else
      dbdtpFComp.date := wFechaCierre+1 ;
  end;
  wmodifica := False ;
end;

procedure TFPagoRecau.AdicIniciaDatos;
begin
  //RecuperarCiaUnica(dblcCia,edtCia);
  edtPeriodo.text:=copy(datetostr(dbdtpFComp.date),7,4)
                      +copy(datetostr(dbdtpFComp.date),4,2);
  if dblccia.Text<>'' then
    perform(CM_DialogKey,VK_TAB,0);
end;

procedure TFPagoRecau.IniciaDatos;
var
	xSQL : string;
begin
	//
	pnlCabecera1.Enabled  := True;
	pnlCabecera2.Enabled  := False;
	pnlDetalle.Enabled    := False;
  pnlBotones.Enabled    := False;
  TabbedNotebook1.PageIndex:=0;

  // Estado de variables Botones
  {wbSumat     := False;
  wbCont      := False;
  wbNuevo     := False;
  wbImprime   := False;
  wbSube      := False;
  wbGraba     := False;
  wbCancelado := False;
  wbCancel2   := False;
  wbAnula     := False;
  wbChq       := False ;}

  // Estado de Botones
  z2bbtnOk.Enabled        := False;
  z2bbtnCancel.Enabled    := False;
	z2bbtnCont.Enabled      := False;
	z2bbtnNuevo.Enabled     := False;
	z2bbtnImprime.Enabled   := False;
	z2bbtnSube.Enabled      := False;
	z2bbtnGraba.Enabled     := False;
	z2bbtnCancelado.Enabled := False;
	z2bbtnCancel2.Enabled   := False;
	z2bbtnAnula.Enabled     := False;
  Z2bbtChqVouch.Visible   := False;
	//

	//BlanqueaEdits ( pnlCabecera1 ) ;
	//BlanqueaEdits ( pnlCabecera2 ) ;

	edtTMon.Enabled      := False;
	edtBanco.Enabled     := False;
	dblcCCBco.Enabled    := False;
	edtCuenta.Enabled    := False;
	dblcdCnp.Enabled := False;   // Forma de Pago
  edtFormPago.Enabled  := False;
  dbeNoChq.Enabled     := False;
  dbdtpFEmis.Enabled   := False ;
  dbdtpFEmis.Date      := 0 ;
  dbdtpFEmis.Date      := 0 ;
  wmodifica            := False;


  dbgDocPago.ColumnByName('CPSALLOC').FooterValue:='';
  dbgDocPago.ColumnByName('CPSALEXT').FooterValue:='';
  dbgDocPago.ColumnByName('CCPMOLOC').FooterValue:='';
  dbgDocPago.ColumnByName('CCPMOEXT').FooterValue:='';
  //LimpiaFiltros ;
  //DM1.cdsMovRec.Close;

  // Estableciendo el filtro para que el detalle del grid aparezca vacio

  // vhn 22/01/2001
  xSQL:='SELECT * FROM CAJA303 '+
        'WHERE CIAID='''' AND ECANOMM='''' '+
        'AND TDIARID='''' AND ECNOCOMP=''''';
  DM1.cdsDocPago.Close;
  DM1.cdsDocPago.DataRequest( xSQL );
  DM1.cdsDocPago.Open;

  // vhn 25/01/2001
  {xSQL:='SELECT * FROM CAJA301 '+
        'WHERE CIAID='''' '+
        'AND ECANOMM='''' '+
        'AND TDIARID='''' AND ECNOCOMP='''' ';
  DM1.cdsRegCxP.Close;
  DM1.cdsRegCxP.DataRequest( xSQL );
  DM1.cdsRegCxP.Open;}
  z2bbtnOkCab.Enabled := True ;
end;

procedure TFPagoRecau.z2bbtnOKClick(Sender: TObject);
var
  sDocumentos, xWhere, aux, xFiltro : string;
  xFlag : Boolean ;
  xMonto : Double;
begin
  if Length(Trim(dbeTCambio.Text)) = 0 then
    dbeTCambio.text:='0';

  if StrtoFloat(dbeTCambio.Text) = 0 then
  begin
    ErrorMsg (Caption,'El Monto del Tipo de Cambio Debe ser Mayor a Cero');
    Exit;
  end;


  if (dblcClase.Enabled) and (z2bbtnSube.Tag <> 1) then
  begin
    DM1.cdsMovRec.close;
    DM1.cdsMovRec.DataRequest('SELECT * FROM COB208 WHERE REPRID=''''');
    DM1.cdsMovRec.Open;
    //DM1.cdsMovRec.IndexFieldNames:='CLAUXID;PROV;CPNODOC';
  end;
  z2bbtnSube.Tag := 0;

  // consistencia de Datos
  //ValidaCabecera2;

  // En este punto ya se ha probado todas las consistencias y ya se puede grabar
  // Actualizamos el Client Data Set de Egr.Caja (CAJA302)

  if Length(Trim(dbeImporte.Text)) = 0 then
    dbeImporte.Text:='0';

  xMonto := strtofloat(dbeImporte.Text);

  DM1.cdsAso.Edit;
  DM1.cdsAso.FieldByName('CIAID').AsString      := dblcCia.Text;
  DM1.cdsAso.FieldByName('TDIARID').AsString    := dblcTDiario.Text;
  DM1.cdsAso.FieldByName('ECANOMM').AsString    := edtPeriodo.Text;
  DM1.cdsAso.FieldByName('ECNOCOMP').AsString   := dbeNoComp.Text;
  DM1.cdsAso.FieldByName('ECFCOMP').AsDateTime  := dbdtpFComp.Date;
  DM1.cdsAso.FieldByName('FPAGOID').AsString    := dblcFormPago.Text;
  DM1.cdsAso.FieldByName('EQUIID').AsString     := dm1.EquivFPago(dblcdCnp.Text ,dblcBanco.Text) ;
  DM1.cdsAso.FieldByName('TMONID').AsString     := dblcTMon.Text;
  DM1.cdsAso.FieldByName('ECTCAMB').AsFloat     := strtofloat(dbeTCambio.Text);
  DM1.cdsAso.FieldByName('ECMTOORI').AsFloat    := xMonto;
  DM1.cdsAso.FieldByName('CCBCOVOUCH').AsString := xVoucher;

  if trim(dblcdFEfec.Text) = '' then
			DM1.cdsAso.fieldbyname('FLUEID').Clear
  else
     DM1.cdsAso.fieldbyname('FLUEID').AsString := trim(dblcdFEfec.Text) ;

  if DM1.cdsAso.FieldByName('TMONID').AsString = dm1.wTMonLoc then
  begin
     DM1.cdsAso.FieldByName('ECMTOLOC').AsFloat := xMonto;
     DM1.cdsAso.FieldByName('ECMTOEXT').AsFloat := dm1.FRound(xMonto/strtofloat(dbeTCambio.Text),15,2);
  end
  else
  begin
     DM1.cdsAso.FieldByName('ECMTOLOC').AsFloat := dm1.FRound(xMonto*strtofloat(dbeTCambio.Text),15,2);
     DM1.cdsAso.FieldByName('ECMTOEXT').AsFloat := xMonto;
  end;

  DM1.cdsAso.FieldByName('BANCOID').AsString := dblcBanco.Text;
  DM1.cdsAso.FieldByName('CCBCOID').AsString := dblcCCBco.Text;
  DM1.cdsAso.FieldByName('ECNOCHQ').AsString := dbeNoChq.Text;

  // se condiciona porque si esta en blanco la fecha graba 1899
  if edtFormPago.text = 'CHEQUE' then
  begin
    if dbdtpFEmis.Text = '' then
      dbdtpFEmis.Date :=Date();
    DM1.cdsAso.fieldBYName('ECFEMICH').AsDateTime:=dbdtpFEmis.Date ;
  end;
  DM1.cdsAso.FieldByName('PROV').AsString     := dblcdAux.Text ;
  DM1.cdsAso.FieldByName('AUXID').AsString    := dblcdAux.Text ;
  DM1.cdsAso.FieldByName('PROVRUC').AsString  := edtAuxRuc.Text ;
  DM1.cdsAso.FieldByName('CLAUXID').AsString  := dblcClase.Text ;
  DM1.cdsAso.FieldByName('ECGIRA').AsString   := dbeGiradoA.Text ;
  DM1.cdsAso.FieldByName('CPTOID').AsString   := dblcdCnp.Text;
  DM1.cdsAso.FieldByName('CUENTAID').AsString := edtCuenta.Text;
  DM1.cdsAso.FieldByName('ECGLOSA').AsString  := dbeGlosa.Text;
	DM1.cdsAso.FieldByName('ECLOTE').AsString   := dbeLote.Text;
  DM1.cdsAso.FieldByName('ECESTADO').AsString := 'I';

  xWhere:='FECHA='+wRepFuncDate +''''+ formatdatetime(wFormatFecha,dbdtpFComp.Date)+''')';
  aux   :=DM1.DisplayDescrip('prvTGE','TGE114','*',xWhere,'FECANO');
  DM1.cdsAso.FieldByName('ECANO').AsString   := dm1.cdsqry.FieldByName('FECANO').AsString;
  DM1.cdsAso.FieldByName('ECMM').AsString    := dm1.cdsqry.FieldByName('FECMES').AsString;
  DM1.cdsAso.FieldByName('ECDD').AsString    := dm1.cdsqry.FieldByName('FECDIA').AsString;
  DM1.cdsAso.FieldByName('ECSS').AsString    := dm1.cdsqry.FieldByName('FECSS').AsString;
  DM1.cdsAso.FieldByName('ECSEM').AsString   := dm1.cdsqry.FieldByName('FECSEM').AsString;
  DM1.cdsAso.FieldByName('ECTRI').AsString   := dm1.cdsqry.FieldByName('FECTRIM').AsString;
  DM1.cdsAso.FieldByName('ECAASS').AsString  := dm1.cdsqry.FieldByName('FECAASS').AsString;
  DM1.cdsAso.FieldByName('ECAASEM').AsString := dm1.cdsqry.FieldByName('FECAASEM').AsString;
  DM1.cdsAso.FieldByName('ECAATRI').AsString := dm1.cdsqry.FieldByName('FECAATRI').AsString;
  DM1.cdsAso.FieldByName('EC_PROCE').AsString:='Y' ;
  DM1.cdsAso.FieldByName('EC_IE').AsString   :='E' ;
  //**07/08/2001 - pjsv
  If dm1.wModo = 'A' then
    DM1.cdsAso.FieldByName('PRVBANCOID').AsString := dm1.cdsProvCta.fieldbyname('BANCOID').AsString;
  DM1.cdsAso.FieldByName('PRVCCBCOID').AsString := dm1.cdsProvCta.fieldbyname('CCBCOID').AsString;

  // Actualizamos el Detalle mostrado en el grid ante posibles cambios del
  // Tipo de Cambio

  //actualizamos el detalle de CxP ante posibles
  //cambios del tipo de cambio
  if xTC <> strtocurr(dbeTCambio.Text) then
  begin
     {if DM1.cdsregcxp.RecordCount > 0 then
        ActDetCaja ;
			if DM1.cdsDocPago.RecordCount > 0 then
        ActDetCxP  ;}
  end  ;
  //Actualizamos el Footer
  z2bbtnSumatClick(sender);

  if dblcClase.Enabled then
  begin
    //xFlag := True;
    xFlag := False ;
    //Comprobar si hay mov seleccionados con otro proveedor
    if DM1.cdsDocPago.RecordCount > 0 then
    begin
      DM1.cdsDocPago.First ;
      if (trim(dblcClase.Text) <> DM1.cdsDocPago.FieldByName('CLAUXID').AsString) or
         (trim(dblcdAux.Text) <> DM1.cdsDocPago.FieldByName('PROV').AsString ) then
      begin
        DM1.cdsDocPago.CancelUpdates ;
        DM1.cdsMovRec.CancelUpdates ;
        xFlag := True ;
      end
    end
    else
      xFlag := True;


		if xFlag then
		begin
      xWhere:='REPRID='+QuotedStr(dblcdAux.Text);

      xFiltro:='(((BOLRTOTAL-BOLRPAGADO-BOLRSALDO)> -0.01 AND (BOLRTOTAL-BOLRPAGADO-BOLRSALDO) < 0.01 ) OR '+
							 '(BOLRTOTAL = BOLRSALDO ) )  AND ( BOLRSALDO > 0 ) '  ;

			dm1.cdsMovRec.Close;
			dm1.cdsMovRec.Datarequest('SELECT * FROM COB208 WHERE ' + xWhere ) ;
			dm1.cdsMovRec.Open;
      //dm1.cdsMovRec.IndexFieldNames:='CLAUXID;PROV;CPNODOC';
      dm1.cdsMovRec.Filter   := xFiltro ;
      dm1.cdsMovRec.Filtered := True ;

      TNumericField(DM1.cdsMovRec.FieldByName('BOLRTOTAL')).DisplayFormat:='########0.00';
      TNumericField(DM1.cdsMovRec.FieldByName('BOLRTOTAL')).EditFormat:='########0.00';

      TNumericField(DM1.cdsMovRec.FieldByName('BOLRPAGADO')).DisplayFormat:='########0.00';
      TNumericField(DM1.cdsMovRec.FieldByName('BOLRPAGADO')).EditFormat:='########0.00';

      TNumericField(DM1.cdsMovRec.FieldByName('BOLRSALDO')).DisplayFormat:='########0.00';
      TNumericField(DM1.cdsMovRec.FieldByName('BOLRSALDO')).EditFormat:='########0.00';


      if DM1.cdsMovRec.RecordCount=0 then
        ShowMessage('No hay Documentos Pendientes para el Recaudador') ;
    end;
  end;

  // Estado de los componentes
  pnlCabecera1.enabled  := False;
  pnlCabecera2.enabled  := False;
  pnlDetalle.enabled    := True;
  pnlBotones.Enabled    := True;
  //ActPnlBotones;

  z2bbtnOk.Enabled        := False;
  z2bbtnCancel.Enabled    := False;
end;

procedure TFPagoRecau.z2bbtnSumatClick(Sender: TObject);
var
  xRegAct : TBookMark;
  xMtoLoc, xMtoExt: double;
begin
  //with DM1. Do
  Begin
     //cdsRegCxP.DisableControls;
     //xRegAct := cdsRegCxP.GetBookmark;
     xMtoLoc := 0;
     xMtoExt := 0;
     {cdsRegCxP.First ;
     While not cdsRegCxP.Eof do
     Begin
        if cdsRegCxP.FieldByName('DEDH').Value='D' then
        begin
          xMtoLoc:=xMtoLoc + strtocurr( stringReplace(cdsRegCxP.FieldByName('DEMTOLOC').DisplayText,',','',[rfReplaceAll]) );
          xMtoExt:=xMtoExt + strToCurr( stringReplace(cdsRegCxP.FieldByName('DEMTOEXT').DisplayText,',','',[rfReplaceAll]) );
        end
        else begin
          xMtoLoc:=xMtoLoc - strToCurr( stringReplace(cdsRegCxP.FieldByName('DEMTOLOC').DisplayText,',','',[rfReplaceAll]) );
          xMtoExt:=xMtoExt - strToCurr( stringReplace(cdsRegCxP.FieldByName('DEMTOEXT').DisplayText,',','',[rfReplaceAll]) );
        end;
        cdsRegCxP.Next;
     end;
     dbgOtros.ColumnByName('DEMTOLOC').FooterValue:=floattostrf(xMtoLoc, ffFixed, 10, 2);
     dbgOtros.ColumnByName('DEMTOEXT').FooterValue:=floattostrf(xMtoExt, ffFixed, 10, 2);}

     //cdsRegCxP.GotoBookmark(xRegAct);
     //cdsRegCxP.FreeBookmark(xRegAct);
     //cdsRegCxP.EnableControls;
  end;
end;

procedure TFPagoRecau.z2bbtnGrabaClick(Sender: TObject);
var
  sSql, xSQL : string;
begin
  if (DM1.cdsAso.RecordCount=0) then //AND (DM1.cdsDocPago.RecordCount=0) then
  begin
    Raise Exception.Create('No se ha ingresado documentos');
  end;

  if DM1.cdsAso.FieldByName('ECESTADO').Value='I' then
  begin
    //ActSaldosMovCxP;
    DM1.cdsAso.edit;
    DM1.cdsAso.FieldByName('ECUSER').Value      := DM1.wUsuario; // usuario que registra
    DM1.cdsAso.FieldByName('ECFREG').Value      := Date;         // fecha que registra Usuario
    DM1.cdsAso.FieldByName('ECHREG').AsDateTime := Date+Time;         // Hora de Registro de Usuario

    ssql:='SELECT * FROM TGE202 WHERE '+
          'CIAID='+quotedstr(dblccia.Text)+ ' AND CUENTAID=' +quotedstr(edtCuenta.text);

    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(ssql);
    DM1.cdsQry2.open;
    //**
    cdspost(DM1.cdsAso);
    xSQL:='SELECT * FROM CAJA321 '+
    			'WHERE CIAID='''   +dblcCia.Text    +''' '+
          'AND ECANOMM=''' +edtPeriodo.Text +''' '+
          'AND TDIARID=''' +dblcTDiario.Text+''' '+
          'AND ECNOCOMP='''+dbeNoComp.Text  +'''';
    DM1.cdsAso.DataRequest( xSQL );
    DM1.AplicaDatos(DM1.cdsAso,'  ASOCIADOS');

    //DM1.cdsRegCxP.ApplyUpdates(0);
    if DM1.cdsDocPago.State = dsBrowse then
      DM1.cdsDocPago.Edit;
    cdspost(DM1.cdsDocPago);
    xSQL:='SELECT * FROM CAJA322 '+
    			'WHERE CIAID='''   +dblcCia.Text    +''' '+
          'AND ECANOMM=''' +edtPeriodo.Text +''' '+
          'AND TDIARID=''' +dblcTDiario.Text+''' '+
          'AND ECNOCOMP='''+dbeNoComp.Text  +''' ';

    DM1.cdsDocPago.DataRequest( xSQL );
    //DM1.AplicaDatos(DM1.cdsDocPago,'  ASOCIADOS');
    DM1.cdsDocPago.ApplyUpdates(0);    

    z2bbtnSumatClick(sender);
    ShowMessage('Grabacion OK');
    if dblcClase.Enabled then
    begin
      dblcClase.Enabled     := False ;
      dblcdAux.Enabled      := False ;
    end ;

    z2bbtnNuevo.Enabled     := True  ;
    z2bbtnCancelado.Enabled := True  ;
    z2bbtnAnula.Enabled     := True  ;
    z2bbtnImprime.Enabled   := True  ;
    wmodifica               := False ;
  end
  else
  begin
    ShowMessage('Imposible Grabar');
  end;
end;

procedure TFPagoRecau.FormActivate(Sender: TObject);
var
  xSQL : String;
begin
  dblcdCnp.Selected.Clear;
  dblcdCnp.Selected.Add('FORPAGOID'#9'3'#9'Id~Pago');
  dblcdCnp.Selected.Add('FORPAGODES'#9'20'#9'Forma de Pago~Descripcion'#9'F');

  dblcFormPago.Selected.Clear;
  dblcFormPago.Selected.Add('FORPAGOID'#9'8'#9'Id');
  dblcFormPago.Selected.Add('FORPAGODES'#9'40'#9'Concepto'#9'F');
  //dblcFormPago.Selected.Add('CUENTAID'#9'12'#9'Cuenta');

  dblcdCnp.Selected.Clear;
  dblcdCnp.Selected.Add('CPTOID'#9'8'#9'Id');
  dblcdCnp.Selected.Add('CPTODES'#9'40'#9'Concepto'#9'F');
  dblcdCnp.Selected.Add('CUENTAID'#9'12'#9'Cuenta');

  dbgPendientes.Selected.Clear;
  dbgPendientes.Selected.Add('ASOITEM'#9'10'#9'TD');
  dbgPendientes.Selected.Add('ASONCTA'#9'15'#9'Periodo');
  dbgPendientes.Selected.Add('BANCONOM'#9'20'#9'Nº Registro');
  dbgPendientes.Selected.Add('SITCTADES'#9'15'#9'Doc');
  dbgPendientes.Selected.Add('FFREG'#9'15'#9'Serie');
  dbgPendientes.Selected.Add('BOLRNUMB'#9'12'#9'Nº~Documento');
  dbgPendientes.Selected.Add('FREG'#9'10'#9'Fecha~Emisión');
  dbgPendientes.Selected.Add('BANCONOM'#9'20'#9'Fecha~Vcmto.');
  dbgPendientes.Selected.Add('SITCTADES'#9'15'#9'T. Cambio');
  dbgPendientes.Selected.Add('BOLRTOTAL'#9'15'#9'Monto~Total');
  dbgPendientes.Selected.Add('BOLRPAGADO'#9'15'#9'Monto~Pagado');
  dbgPendientes.Selected.Add('BOLRSALDO'#9'15'#9'Monto~Saldo');
  dbgPendientes.Selected.Add('USUARIO'#9'12'#9'Usuario');
  dbgPendientes.RefreshDisplay;

  if DM1.wModo = 'M' then
  begin
    dblcCia.Text    := DM1.cdsAso.FieldByName('CIAID').AsString;
    dblcBanco.Text  := DM1.cdsAso.FieldByName('BANCOID').AsString;
    dblcCCBco.Text  := DM1.cdsAso.FieldByName('CCBCOID').AsString;
    dbdtpFComp.Date := DM1.cdsAso.FieldByName('ECFCOMP').AsDateTime;
    edtPeriodo.Text := DM1.cdsAso.FieldByName('ECANOMM').AsString;
    dblcTDiario.Text:= DM1.cdsAso.FieldByName('TDIARID').AsString;
    dbeNoComp.Text  := DM1.cdsAso.FieldByName('ECNOCOMP').AsString;
    dblcCiaExit(Sender);
    dblcBancoExit(Sender);
    dblcTDiarioExit(Sender);

    dblcClase.Text    := DM1.cdsAso.FieldByName('CLAUXID').AsString;
    dblcdAux.Text     := DM1.cdsAso.FieldByName('PROV').AsString;
    edtAuxRuc.Text    := DM1.cdsAso.FieldByName('PROVRUC').AsString;
    dbeGiradoA.Text   := DM1.cdsAso.FieldByName('ECGIRA').AsString;
    dblcTMon.Text     := DM1.cdsAso.FieldByName('TMONID').AsString;
    dblcFormPago.Text := DM1.cdsAso.FieldByName('FPAGOID').AsString;
    edtCuenta.Text    := DM1.cdsAso.FieldByName('CUENTAID').AsString;
    dbeNoChq.Text     := DM1.cdsAso.FieldByName('ECNOCHQ').AsString;
    dbdtpFEmis.Text   := DM1.cdsAso.FieldByName('ECFEMICH').AsString;
    //dblcdCtaCte.Text  := DM1.cdsAso.FieldByName('BANCOID').AsString;
    dbeTCambio.Text   := DM1.cdsAso.FieldByName('ECTCAMB').AsString;
    dbeLote.Text      := DM1.cdsAso.FieldByName('ECLOTE').AsString;
    dblcdCnp.Text     := DM1.cdsAso.FieldByName('CPTOID').AsString;
    dbeGlosa.Text     := DM1.cdsAso.FieldByName('ECGLOSA').AsString;

    dblcClaseExit(Sender);
    dblcdAuxExit(Sender);
    dblcTMonExit(Sender);
    dblcFormPagoExit(Sender);
    edtCuentaExit(Sender);
    dblcdCnpExit(Sender);

    xSQL:='SELECT * FROM CAJA322 '+
          'WHERE CIAID='+QuotedStr(dblcCia.Text)+' '+
          'AND TDIARID='+QuotedStr(DM1.cdsAso.FieldByName('TDIARID').AsString)+' '+
          'AND ECANOMM='+QuotedStr(edtPeriodo.Text)+' '+
          'AND ECNOCOMP='+QuotedStr(dbeNoComp.Text);
    DM1.cdsDocPago.Close;
    DM1.cdsDocPago.DataRequest(xSQL);
    DM1.cdsDocPago.Open;

  end
  else
  if DM1.wModo = 'A' then
  begin
    dblcCia.SetFocus;
  end;
end;

procedure TFPagoRecau.FormClose(Sender: TObject; var Action: TCloseAction);
var
  xSQL : String;
begin
  //DM1.cdsAso.CancelUpdates;

  if DM1.cdsAso.FieldByName('ECESTADO').AsString='X' then
  begin
    DM1.cdsAso.Delete;
    xSQL:='SELECT * FROM CAJA321 '+
          'WHERE CIAID='+QuotedStr(dblcCia.Text)+' '+
          'AND ECNOCOMP='+QuotedStr(dbeNoComp.Text);

    DM1.cdsAso.DataRequest( xSQL );
    DM1.AplicaDatos(DM1.cdsAso,'ASOCIADOS');

    {xSQL:='Select * from CAJA302 '
    			+'Where CIAID='''   +dblcCia.Text    +''' and '
    			+      'ECANOMM=''' +edtPeriodo.Text +''' and '
    			+      'TDIARID=''' +dblcTDiario.Text+''' and '
    			+      'ECNOCOMP='''+dbeNoComp.Text  +''' ';
    DM1.cdsEgrCaja.DataRequest( xSQL );
    DM1.AplicaDatos(DM1.cdsEgrCaja,'EGRCAJA');}
  end;
end;

procedure TFPagoRecau.GrabaCabeceraDeComprobante;
var
  xSQL:string;
begin
  DM1.cdsAso.CancelUpdates;
  DM1.cdsAso.Insert;
  DM1.cdsAso.FieldByName('ECESTADO').AsString := 'X';
  DM1.cdsAso.FieldByName('CIAID').AsString    := dblcCia.Text;
  DM1.cdsAso.FieldByName('ECANOMM').AsString  := edtPeriodo.Text;
  DM1.cdsAso.FieldByName('TDIARID').AsString  := dblcTDiario.Text;
  DM1.cdsAso.FieldByName('ECNOCOMP').AsString := dbeNoComp.Text;

  xSQL:='SELECT * FROM CAJA321 '+
  			'WHERE CIAID='+QuotedStr(dblcCia.Text)+' '+
        'AND ECNOCOMP='+QuotedStr(dbeNoComp.Text);

  DM1.cdsAso.DataRequest( xSQL );
  DM1.AplicaDatos(DM1.cdsAso,'ASOCIADOS');
end;

procedure TFPagoRecau.dbgPendientesDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (dbgPendientes.Readonly = False) then
    Accept:=True;
end;

procedure TFPagoRecau.dbgPendientesEndDrag(Sender, Target: TObject; X, Y: Integer);
var
  i, xFactor : integer;
  xResta, xWhere : String;
begin
  if (not dbgPendientes.Readonly) and (Target=dbgDocPago) Then
  begin
    DM1.cdsMovRec.DisableControls;
    // Añade los Nuevos Registros
    DM1.cdsDocPago.DisableControls;
    for i:= 0 to dbgPendientes.SelectedList.Count-1 do
    begin
      dbgPendientes.datasource.dataset.GotoBookmark(dbgPendientes.SelectedList.items[i]);

      // VHN  se Añade para saber si documento suma o resta
      {xWhere:='DOCID=''' +DM1.cdsMovRec.FieldByName('DOCID').AsString+''' and '+
              'DOCMOD='''+'CXP'+''' ';
		  xResta:=DM1.DisplayDescrip( 'prvQry2', 'TGE110', 'DOCRESTA', xWhere, 'DOCRESTA' );}
      xFactor:=1;
      {if xResta='S' then
        xFactor:=-1;}

      DM1.cdsDocPago.Insert;
      DM1.cdsDocPago.FieldByName('CIAID').AsString    := dblcCia.Text;
      DM1.cdsDocPago.FieldByName('TDIARID').AsString  := dblcTDiario.Text;
      DM1.cdsDocPago.FieldByName('ECANOMM').AsString  := edtPeriodo.Text;
      DM1.cdsDocPago.FieldByName('ECNOCOMP').AsString := dbeNoComp.Text;

      DM1.cdsDocPago.FieldByName('TDIARID2').AsString := '';//DM1.cdsMovRec.FieldByName('TDIARID').AsString;
      DM1.cdsDocPago.FieldByName('CPANOMM').AsString  := DM1.cdsMovRec.FieldByName('BOLANOMM').AsString;
      DM1.cdsDocPago.FieldByName('CPNOREG').AsString  := '';//DM1.cdsMovRec.FieldByName('CPNOREG').AsString;
      DM1.cdsDocPago.FieldByName('DOCID2').AsString   := '';//DM1.cdsMovRec.FieldByName('DOCID').AsString;
      DM1.cdsDocPago.FieldByName('CPSERIE').AsString  := '000';//DM1.cdsMovRec.FieldByName('CPSERIE').AsString;
      DM1.cdsDocPago.FieldByName('DEESTADO').AsString := 'P';      
      DM1.cdsDocPago.FieldByName('CPNODOC').AsString  := DM1.cdsMovRec.FieldByName('BOLRNUMB').AsString;
      DM1.cdsDocPago.FieldByName('TMONID').AsString   := DM1.cdsMovRec.FieldByName('TMONID').AsString;
      DM1.cdsDocPago.FieldByName('DETCDOC').AsFloat   := DM1.FRound(DM1.cdsMovRec.FieldByName('BOLTCAMB').AsFloat,8,3);
      DM1.cdsDocPago.FieldByName('DETCPAG').AsFloat   := DM1.FRound(strtofloat(dbeTCambio.Text),5,3);
      DM1.cdsDocPago.FieldByName('ECGLOSA').AsString  := DM1.cdsAso.FieldByName('ECGLOSA').AsString;
      DM1.cdsDocPago.FieldByName('DEGLOSA').AsString  := DM1.cdsAso.FieldByName('ECGLOSA').AsString;      
      DM1.cdsDocPago.FieldByName('CPTOID').AsString   := DM1.cdsAso.FieldByName('CPTOID').AsString;
      DM1.cdsDocPago.FieldByName('CUENTAID').AsString := DM1.DisplayDescrip('prvTGE','CAJA201','CUENTAID','CPTOID='+quotedstr(DM1.cdsAso.FieldByName('CPTOID').AsString ),'CUENTAID');
      DM1.cdsDocPago.FieldByName('CPFEMIS').AsDateTime:= DM1.cdsMovRec.FieldByName('BOLFEMIS').AsDateTime;
      //DM1.cdsDocPago.FieldByName('CPFVCMTO').AsDateTime:=DM1.cdsMovRec.FieldByName('CPFVCMTO').AsDateTime;
      DM1.cdsDocPago.FieldByName('DOCMOD').AsString   := DM1.wUsuario;
      DM1.cdsDocPago.FieldByName('DEANO').AsString    := DM1.cdsMovRec.FieldByName('BOLANO').AsString;
      DM1.cdsDocPago.FieldByName('DEMM').AsString     := DM1.cdsMovRec.FieldByName('BOLMM').AsString;
      DM1.cdsDocPago.FieldByName('DEDD').AsString     := DM1.cdsMovRec.FieldByName('BOLDD').AsString;
      DM1.cdsDocPago.FieldByName('DETRI').AsString    := DM1.cdsMovRec.FieldByName('BOLTRIM').AsString;
      DM1.cdsDocPago.FieldByName('DESEM').AsString    := DM1.cdsMovRec.FieldByName('BOLSEM').AsString;
      DM1.cdsDocPago.FieldByName('DESS').AsString     := DM1.cdsMovRec.FieldByName('BOLSS').AsString;
      DM1.cdsDocPago.FieldByName('DEAATRI').AsString  := DM1.cdsMovRec.FieldByName('BOLAATRIM').AsString;
      DM1.cdsDocPago.FieldByName('DEAASEM').AsString  := DM1.cdsMovRec.FieldByName('BOLAASEM').AsString;
      DM1.cdsDocPago.FieldByName('DEAASS').AsString   := DM1.cdsMovRec.FieldByName('BOLAASS').AsString;

      DM1.cdsDocPago.FieldByName('PROV').AsString     := DM1.cdsMovRec.FieldByName('REPRID').AsString;
      //DM1.cdsDocPago.FieldByName('PROVDES').AsString  := DM1.cdsMovRec.FieldByName('REPRAPENOM').AsString;
      DM1.cdsDocPago.FieldByName('PROVRUC').AsString  := DM1.cdsMovRec.FieldByName('REPRRUC').AsString;
      if DM1.cdsDocPago.FieldByName('TMONID').AsString = DM1.wtMonLoc then
      begin
        DM1.cdsDocPago.FieldByName('DESALLOC').AsFloat:=DM1.FRound(DM1.cdsMovRec.FieldByName('BOLRSALDO').AsFloat * xFactor,15,2);
        DM1.cdsDocPago.FieldByName('DESALEXT').AsFloat:=DM1.FRound(DM1.cdsMovRec.FieldByName('BOLRSALDO').AsFloat
                                      /DM1.cdsDocPago.FieldByName('DETCPAG').AsFloat * xFactor,15,2);
      end
      else
      begin
        DM1.cdsDocPago.FieldByName('DESALEXT').AsFloat:=DM1.FRound(DM1.cdsMovRec.FieldByName('CPSALEXT').AsFloat * xFactor,15,2);
        DM1.cdsDocPago.FieldByName('DESALLOC').AsFloat:=DM1.FRound(DM1.cdsMovRec.FieldByName('CPSALEXT').AsFloat
                                      *DM1.cdsDocPago.FieldByName('DETCPAG').AsFloat * xFactor,15,2);
      end;

      //DM1.cdsDocPago.FieldByName('DEANTMN').AsFloat  := 0;
      //DM1.cdsDocPago.FieldByName('DEANTME').AsFloat  := 0;
      DM1.cdsDocPago.FieldByName('DEMTOORI').AsFloat := DM1.FRound(DM1.cdsMovRec.FieldByName('BOLRTOTAL').AsFloat * xFactor,15,2);
      DM1.cdsDocPago.FieldByName('DEMTOLOC').AsFloat := DM1.FRound(DM1.cdsDocPago.FieldByName('DESALLOC').AsFloat,15,2);
      DM1.cdsDocPago.FieldByName('DEMTOEXT').AsFloat := 0;//DM1.FRound(DM1.cdsDocPago.FieldByName('DESALEXT').AsFloat,15,2);
      DM1.cdsDocPago.FieldByName('DEUSER').AsString  := DM1.wUsuario;
      DM1.cdsDocPago.FieldByName('DEFREG').AsDateTime:= date;
      DM1.cdsDocPago.FieldByName('DEHREG').AsDateTime:= Date+time;
      DM1.cdsDocPago.fieldbyname('CLAUXID').AsString := DM1.cdsMovRec.FieldByName('CLAUXID').AsString;
      DM1.cdsDocPago.fieldbyname('DEDH').AsString    := 'D';
      DM1.cdsDocPago.Post;

      DM1.cdsMovRec.Edit ;
      DM1.cdsMovRec.FieldByName('BOLRSALDO').AsFloat := 0  ;
      DM1.cdsMovRec.Post ;

      dbgPendientes.datasource.dataset.Freebookmark(dbgPendientes.SelectedList.items[i]) ;
    end ; // for

    DM1.cdsMovRec.EnableControls  ;
    dbgPendientes.SelectedList.clear ;  { Clear selected record list since they are all deleted}
    dbgPendientes.RefreshDisplay  ;
    dbgDocPago.RefreshDisplay     ;
    DM1.cdsDocPago.EnableControls ;
    //z2bbtnSumatDocPagoClick(nil) ;
    wmodifica:=True;
  end; // target
end;

procedure TFPagoRecau.dbgPendientesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (dbgPendientes.Readonly = False) then
    dbgPendientes.BeginDrag(False)  ;
end;

procedure TFPagoRecau.dbgPendientesTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  pnlBusca.Visible := True;
  isBusca.SearchField := AFieldName;
  isBusca.SetFocus;
end;

procedure TFPagoRecau.dbgDocPagoCalcTitleAttributes(Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
begin
  if (AFieldName = 'DEMTOLOC') or (AFieldName = 'DEMTOEXT') then
    ABrush.Color := clWHITE;// None;
end;

procedure TFPagoRecau.dbgDocPagoColExit(Sender: TObject);
begin
  //z2bbtnSumatDocPagoClick(nil) ;
  dbgDocPago.RefreshDisplay;
end;

procedure TFPagoRecau.dbgDocPagoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  If (not dbgDocPago.Readonly) then
    Accept:=True;
end;

procedure TFPagoRecau.dbgDocPagoEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  If (not dbgDocPago.Readonly) and (Target=dbgpendientes) Then
  begin
      DM1.cdsMovRec.Filtered:=False;

      if DM1.cdsMovRec.Locate('CIAID;TDIARID;CPANOMES;CPNOREG',
                       VarArrayOf([DM1.cdsDocPago.FieldByName('CIAID').AsString,
                                   DM1.cdsDocPago.FieldByName('TDIARID2').AsString,
                                   DM1.cdsDocPago.FieldByName('CPANOMM').AsString,
                                   DM1.cdsDocPago.FieldByName('CPNOREG').AsString]),[]) then
      begin
         DM1.cdsMovRec.Edit ;
         DM1.cdsMovRec.FieldByName('CPSALEXT').Value := DM1.cdsMovRec.FieldByName('CPMTOEXT').Value - DM1.NumeroNoNulo( DM1.cdsMovRec.FieldByName('CPPAGEXT') ) ;
         DM1.cdsMovRec.FieldByName('CPSALLOC').Value := DM1.cdsMovRec.FieldByName('CPMTOLOC').Value - DM1.NumeroNoNulo( DM1.cdsMovRec.FieldByName('CPPAGLOC') ) ;
         if DM1.cdsMovRec.FieldByName('TMONID').Value=DM1.wTMonLoc then
            DM1.cdsMovRec.FieldByName('CPSALORI').AsFloat := DM1.cdsMovRec.FieldByName('CPSALLOC').AsFloat
         else
            DM1.cdsMovRec.FieldByName('CPSALORI').AsFloat := DM1.cdsMovRec.FieldByName('CPSALEXT').AsFloat ;
         DM1.cdsMovRec.Post ;

         DM1.cdsDocPago.Delete;

         dbgPendientes.RefreshDisplay;
         dbgDocPago.RefreshDisplay;
      end;
      DM1.cdsMovRec.Filtered:=True;
      wmodifica:=True;
      //z2bbtnSumatDocPagoClick(nil) ;
   end;
end;

procedure TFPagoRecau.dbgDocPagoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If (not dbgDocPago.Readonly) then
    dbgDocPago.BeginDrag(False);
end;

procedure TFPagoRecau.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

end.
