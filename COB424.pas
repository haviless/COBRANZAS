unit COB424;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, StdCtrls, ComCtrls, wwriched, DB,
  wwdblook, Wwdbspin, Buttons, Wwdbdlg, Wwdbigrd, Grids, Wwdbgrid, Mask,
  wwdbedit, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, DBCtrls,
  wwclient,DBClient, MConnect, Wwdatsrc, Provider,Mant,
  wwdbdatetimepicker, wwSpeedButton, wwDBNavigator,
  Wwdotdot, Wwdbcomb, GridControl,ppViewr, ppStrtch, ppMemo, ppSubRpt,
  ppTypes, ppRegion, ppDBBDE;

type
  TFCanCuotas = class(TForm)
    pnlcabe: TPanel;
    lblApeNom: TLabel;
    lblCModular: TLabel;
    lblCPago: TLabel;
    lblDIden: TLabel;
    lblSit: TLabel;
    dbeAsoNom: TwwDBEdit;
    dbeCodigoModular: TwwDBEdit;
    dbeCodigoPago: TwwDBEdit;
    dbeTipDoc: TwwDBEdit;
    dbeDocIdNum: TwwDBEdit;
    dbeSit: TwwDBEdit;
    dbgCreditos: TwwDBGrid;
    dbgCronogVen: TwwDBGrid;
    dbgAportesbtn: TwwIButton;
    lblFPago: TLabel;
    dblcFormaPago: TwwDBLookupCombo;
    edtFormaPago: TEdit;
    PnlReclamo: TPanel;
    lblMon: TLabel;
    lblObserv: TLabel;
    lblFOpe: TLabel;
    lblBco: TLabel;
    lblNCta: TLabel;
    lblNDoc: TLabel;
    dblctmoneda: TwwDBLookupCombo;
    StaticText2: TStaticText;
    dbemoneda: TwwDBEdit;
    dblcChqBanco: TwwDBLookupCombo;
    edtChqBanco: TEdit;
    dbeChqNum: TwwDBEdit;
    dbeChqCuenta: TwwDBLookupCombo;
    dbeFOperacion: TwwDBDateTimePicker;
    Z2bbtnSumatoria: TfcShapeBtn;
    mmObse: TMemo;
    Z2bbtnBorrar: TfcShapeBtn;
    lblMtoAPagar: TLabel;
    bbtnSigue: TfcShapeBtn;
    pprRecibo: TppReport;
    bbtnImpri: TfcShapeBtn;
    rgProceso: TRadioGroup;
    rgForma: TRadioGroup;
    bbtnReporte: TfcShapeBtn;
    pnlPagado: TPanel;
    bbtnImpriPag: TfcShapeBtn;
    dbgCronogPag: TwwDBGrid;
    StaticText1: TStaticText;
    bbtnPanel: TfcShapeBtn;
    ppHeaderBand1: TppHeaderBand;
    pplblCia: TppLabel;
    pplblDire: TppLabel;
    pplblarea: TppLabel;
    pplblruc: TppLabel;
    ppLabel1: TppLabel;
    pplblNrorecibo: TppLabel;
    pplblmonto1: TppLabel;
    pplblmonto2: TppLabel;
    ppLabel2: TppLabel;
    pplblnombre: TppLabel;
    ppLabel3: TppLabel;
    pplblletras: TppLabel;
    ppLine1: TppLine;
    pplblconcepto: TppLabel;
    pplblfecha: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    lblDuplicado: TppLabel;
    ppDetailBand1: TppDetailBand;
    lblMemo: TppMemo;
    edtMonto: TEdit;
    lblForma: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edtRecibido: TEdit;
    Label3: TLabel;
    edtVuelto: TEdit;
    Image1: TImage;
    bbtnHistorial: TfcShapeBtn;
    dbpData3: TppBDEPipeline;
    dbpData2: TppBDEPipeline;
    dbpData1: TppBDEPipeline;
    rptHistorial: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppRegion3: TppRegion;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppRegion1: TppRegion;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppRegion2: TppRegion;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppSubReport2: TppSubReport;
    crptSub2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppRegion4: TppRegion;
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
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel31: TppLabel;
    ppDBText26: TppDBText;
    ppLine5: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLine6: TppLine;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    dblcBanco: TwwDBLookupCombo;
    rgDevo: TRadioGroup;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dbeAsoNomExit(Sender: TObject);
    procedure dbeCodigoModularExit(Sender: TObject);
    procedure dbgCreditosDblClick(Sender: TObject);
    procedure dblcFormaPagoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Z2bbtnSumatoriaClick(Sender: TObject);
    procedure Z2bbtnBorrarClick(Sender: TObject);
    procedure dblcChqBancoExit(Sender: TObject);
    procedure dblctmonedaExit(Sender: TObject);
    procedure dbgCronogVenCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgCronogVenFieldChanged(Sender: TObject; Field: TField);
    procedure dbeChqNumExit(Sender: TObject);
    procedure bbtnSigueClick(Sender: TObject);
    procedure dbeFOperacionExit(Sender: TObject);
    procedure bbtnImpriClick(Sender: TObject);
    procedure pprReciboPreviewFormCreate(Sender: TObject);
    procedure rgFormaClick(Sender: TObject);
    procedure bbtnReporteClick(Sender: TObject);
    procedure bbtnPanelClick(Sender: TObject);
    procedure bbtnImpriPagClick(Sender: TObject);
    procedure rgProcesoClick(Sender: TObject);
    procedure edtMontoExit(Sender: TObject);
    procedure edtMontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtRecibidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtRecibidoExit(Sender: TObject);
    procedure bbtnHistorialClick(Sender: TObject);
    procedure dblcBancoExit(Sender: TObject);
    procedure rgDevoClick(Sender: TObject);
  private
    { Private declarations }
    //** VARIABLES PARA ACTUALIZAR CAJA
    xMntDs : Double;
    xItem,xDocid,xEcanomm,xTDiarid,xCcBcoid,xTmonid,xBancoid,xFpagoid,xAuxid  : String;
    xVouch,xAuxRuc,xMaxNumComp,xNodoc,xCuentaid,xCptoid,xClauxid,xCiaid : String;
    xFechaCom : TDate;
    xECTCAMB,cPgoOri,cPgoLoc,cPgoExt : Double;
    //**
    
    xMto : Double;
    xControl : Array[1..60] of String;
    xMeses : Array[1..60,1..2] of String;
    xaddMeses : Array[1..60] of String;
    xPosicion : Integer;
    xEstid1,xEstid2,xEstid3,xEstid4,xEstid5,xEstid6,xEstid7,xEstid8 : String;
    xEstado1,xEstado2,xEstado3,xEstado4,xEstado5,xEstado6,xEstado7,xEstado8 : String;
    xMoneda,xAsoid : String;
    xVuelto,xTCambio : Double;

    xCorreWhere, xCorreWherex, xCorreWherey : String; //** Where solo para el correlativ del Crédito
    xCorre : String;                                  //** para el correlativ del numero de crédito
    xPaso  : Boolean;                                 //** True = el correlativ es valido
    xCorreCadena, xTipocorre, xCorreASOID, xCorreCampo, xArea, xTabla, xEstid, xEstado, xCreano, xCremes : String;
    xRegistros,xCeros : Integer;
    xAnos,xMesS,xDiaS : Word;
    procedure cargabusqueda;  //** BUSCA AL ASOCIADO
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
    procedure CredPend;
    procedure Deshabilita;
    procedure Limpia;
    procedure Correlativo;                //** llama a CorreCred y BuscaCorre
    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
    Procedure BuscaCorre;                 //** para constatar que nop exista el numero del crédito
    procedure CalculoAuto;
    procedure CalculoDevo;
    procedure CalculoManual;
    Function Ceros(pCantidad : String) : String;
    procedure addMeses;
    procedure Vuelto;
    procedure ActivaData(pCredito : STring);
    Procedure Actualiza;
    procedure ActuCaja301;
    procedure cargaSQLDevo;
    procedure cargaSQLNormal;
    procedure seteagrid;
  public
    { Public declarations }
  end;

var
  FCanCuotas: TFCanCuotas;
 function NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;

implementation

uses COBDM1, MsgDlgs,COb001, COB435;

{$R *.DFM}


procedure TFCanCuotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFCanCuotas.FormActivate(Sender: TObject);
var
 xWhere,xFecha : String;
begin
  //** DEVOLUCION
  xEstado8 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('F'),'ESTDES');
  xEstid8  := DM1.cdsQry.FieldByName('ESTID').AsString;

  //** EN PROCESO DE COBRANZA
  xEstado7 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('3'),'ESTDES');
  xEstid7  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** NO PAGADO
  xEstado5 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
  xEstid5  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** CANCELADO
  xEstado1 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Y'),'ESTDES');
  xEstid1  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** CANCELADO A
  xEstado6 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('Z'),'ESTDES');
  xEstid6  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** POR COBRAR
  xEstado2 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('2'),'ESTDES');
  xEstid2  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** PARCIAL
  xEstado4 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
  xEstid4  := DM1.cdsQry.FieldByName('ESTID').AsString;
  //** PAGADO
  xEstado3 := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('C'),'ESTDES');
  xEstid3  := DM1.cdsQry.FieldByName('ESTID').AsString;

  DM1.cdsTMoneda.Open;
  DM1.cdsBcos.Open;

  xFecha := DateToSTr(dbeFOperacion.Date);
  DM1.RecUltTipoCambio(xFecha);
  xTCambio := DM1.cdsQry.FieldByName(DM1.wTCCompra).AsFloat;
  dm1.cdsReporte.close;
  dm1.cdsReporte.DataRequest('SELECT * FROM TGE901 WHERE DUME = ''PERCY''');
  dm1.cdsReporte.open;

  //** PARA ACTUALIZAR CAJA STANDAR
  dm1.cdsCia.Close;
  dm1.cdsCia.DataRequest('SELECT * FROM TGE101 WHERE CIARETIGV=''N''');
  dm1.cdsCia.Open;
  xCiaid := dm1.cdsCia.FieldByName('CIAID').AsString;
  DM1.FiltraTabla(DM1.cdsBcos,'TGE105','BANCOID' );
  DM1.cdsBcos.Filter := 'BCOTIPCTA = ''C''';
  DM1.cdsBcos.Filtered := True;
  dblcBanco.text := Dm1.cdsBcos.FieldByName('BANCOID').AsString;
  dblcBanco.OnExit(dblcBanco);
  xWhere := 'FLGOFICIO = '+quotedstr('N');
  xFPagoid := DM1.DisplayDescrip('prvSQL','CRE104','FPAGOID',xWhere,'FPAGOID');

end;

procedure TFCanCuotas.dbeAsoNomExit(Sender: TObject);
var
 xSQL : String;
begin
  Deshabilita;
  Limpia;
  rgForma.ItemIndex := 1;
  pnlPagado.SendToBack;
  //** SI HAY UN NOMBRE SE BUSCA
  If Length(trim(dbeAsoNom.text)) > 0 then
   begin
    xSQL := 'Select * From APO201'
           +' Where ASOAPENOM LIKE '+QuotedStr(Trim(dbeAsoNom.Text+'%'));
    DM1.cdsPadre.Close;
    DM1.cdsPadre.DataRequest(xSQL);
    DM1.cdsPadre.Open;

    //** CARGA LOS DATOS DEL ASOCIADO
    If DM1.cdsPadre.RecordCount = 1 Then
     CargaBusqueda
    Else
      LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeAsoNom.Text+'%')));
   end;
   dbgCreditos.enabled := true;
   dbgCreditos.SetFocus;
end;

procedure TFCanCuotas.cargabusqueda;
var
 xSql : String;
begin
  dbeAsoNom.text := DM1.cdsPadre.FieldByName('ASOAPENOM').AsString;
  dbeCodigoModular.text := DM1.cdsPadre.FieldByName('ASOCODMOD').AsString;
  xAsoid := DM1.cdsPadre.FieldByName('ASOID').AsString;
  dbeCodigoPago.text := DM1.cdsPadre.FieldByName('ASOCODPAGO').AsString;
  Dm1.Displaydescrip('prvSQL','TGE159','TIPDOCABR','TIPDOCCOD='+quotedstr(DM1.cdsPadre.FieldByName('TIPDOCCOD').AsString),'TIPDOCABR');
  dbeTipDoc.Text := Dm1.cdsQry.FieldByName('TIPDOCABR').AsString;
  dbeDocIdNum.text := Dm1.cdsPadre.FieldByName('ASODNI').AsString;
  dbeSit.text := Dm1.cdsPadre.FieldByName('ASOTIPID').AsString;
  CredPend;
end;

procedure TFCanCuotas.LevantaFiltro(xCampo: String);
var
   Mtx : TMant;
begin
   DM1.cdsAsoX.Close;
   Mtx  := TMant.Create(Self);
   Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.TableName       := 'APO201';
    Mtx.ClientDataSet   := DM1.cdsAsoX;
    Mtx.Filter          := xCampo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.Module          := DM1.wModulo;
    Mtx.Titulo 	        := 'Asociados';
    Mtx.SectionName     := 'AsociaX';
    Mtx.Registros       := 30;
    Mtx.FileNameIni     := '\SOLAPO.INI';
    Mtx.OnEdit          := OnEditAso;
    Mtx. Execute;
   Finally
    DM1.cdsAsoX.Close;
    Mtx.Free;
   end;
   DM1.cdsAsoX.Filter   := '';
   DM1.cdsAsoX.Filtered := False;
   DM1.cdsAsoX.IndexFieldNames := '';
   DM1.cdsAsoX.Close;
end;

//** AL HACER DOBLE CLICK EN ALGUNA FILA DEL MANT
procedure TFCanCuotas.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSQL : String;
begin
   xSQL := 'Select * From APO201'
          +' Where ASOID ='+QuotedStr(DM1.cdsAsoX.FieldByName('ASOID').AsString);
   DM1.FiltraCDS(DM1.cdsPadre,xSQL);
   cargabusqueda;
   TMant(Sender).FMant.Close;
end;

procedure TFCanCuotas.CredPend;
var
 xTipdeseid,xSql : String;
begin
  xSql := 'SELECT TIPDESEID FROM CRE104 WHERE FLGOFICIO ='+quotedstr('N');
  dm1.cdsQry.close;
  dm1.cdsQry.datarequest(xSql);
  dm1.cdsQry.open;
  xTipdeseid := dm1.cdsQry.FieldByName('TIPDESEID').AsString;

  if dm1.cdsNieto.Active = True then
     DM1.cdsNieto.CancelUpdates;
  if dm1.cdsNieto.Active = True then
     DM1.cdsHijo.CancelUpdates;
  //** 18/02/2003 - PJSV
   xSQL:='SELECT * FROM CRE301 '+
        ' WHERE ASOID='+ QuotedStr(DM1.cdsPadre.FieldByName('ASOID').AsString)+
         ' AND CREESTID IN('+quotedstr(xEstid2)+')'+
         '  AND ((TIPDESEID ='+quotedstr(xTipdeseid)+
//         ' and FLGCAJA = ''S'') or (TIPDESEID <>'+quotedstr(xTipdeseid)+'))';
         ' ) or (TIPDESEID <>'+quotedstr(xTipdeseid)+'))';


//         ' AND CREESTID IN('+quotedstr(xEstid5)+','+quotedstr(xEstid2)+','+
//         quotedstr(xEstid4)+','+quotedstr(xEstid8)+')';

  DM1.Filtracds(DM1.cdsReporte,xSQL);
  //**
  dbgCreditos.Datasource:=DM1.dsReporte;
  dbgCreditos.Selected.Clear;
  dbgCreditos.Selected.Add('CREDID'#9'15'#9'N°~Crédito');
  dbgCreditos.Selected.Add('TIPCREID'#9'3'#9'Id~Tipo');
  dbgCreditos.Selected.Add('TIPCREDES'#9'20'#9'Tipo~Credito');
  dbgCreditos.Selected.Add('CREFOTORG'#9'10'#9'Fecha~Otorga.');
  dbgCreditos.Selected.Add('CRENUMCUO'#9'5'#9'N°~Cuotas');
  dbgCreditos.Selected.Add('TMONABR'#9'4'#9'Mon.');
  dbgCreditos.Selected.Add('CREMTOSOL'#9'8'#9'Monto~Solicit.');
  dbgCreditos.Selected.Add('CREMTOGIR'#9'8'#9'Monto~Girado');
  dbgCreditos.Selected.Add('CREMTOTAL'#9'8'#9'Monto~Total');
  dbgCreditos.Selected.Add('CREMTOPAG'#9'8'#9'Monto~Pagado');
  dbgCreditos.Selected.Add('CRESDOACT'#9'8'#9'Monto~Saldo');
  dbgCreditos.RefreshDisplay;
  TNumericField(DM1.cdsReporte.FieldByName('CREMTOTAL')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsReporte.FieldByName('CREMTOPAG')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsReporte.FieldByName('CRESDOACT')).DisplayFormat:='###,###,##0.00';
end;

procedure TFCanCuotas.dbeCodigoModularExit(Sender: TObject);
var
 xSql : String;
begin
  Deshabilita;
  
  If Length(trim(dbeCodigoModular.Text)) > 0 then
   xSQL:='SELECT * FROM APO201 WHERE ASOCODMOD='+QuotedStr(Trim(dbeCodigoModular.Text))
  else
   exit;
  DM1.cdsPadre.Close;
  DM1.cdsPadre.DataRequest(xSQL);
  DM1.cdsPadre.Open;
  CARGABUSQUEDA;
  dbgCreditos.enabled := true;
  dbgCreditos.SetFocus;
end;

procedure TFCanCuotas.dbgCreditosDblClick(Sender: TObject);
var
 xsql : String;
 xI : Integer;
begin
  Try
   Screen.cursor := crHourglass;
   For xI := 1 to 60 do
    begin
     xcontrol[xI] := '';
    end;
   bbtnImpri.enabled := False;
   cargaSQLNormal;
   seteagrid;
   dblcFormaPago.Onexit(dblcFormaPago);
   rgForma.OnClick(rgForma);
   DM1.cdsHijo.First;
  finally
   DM1.cdsHijo.EnableControls;
   Screen.cursor := crDefault;
  end;
end;

procedure TFCanCuotas.dblcFormaPagoExit(Sender: TObject);
var
 sWhere : String;
begin
  If Length(dblcFormaPago.text) = 0 then exit;
  dblctmoneda.Text := 'N';
  dblctmoneda.OnExit(dblctmoneda);
  sWhere:= 'FORPAGOID = '+ quotedstr(dblcFormaPago.text) ;
  edtFormaPago.text:=dm1.DisplayDescrip('prvTGE','COB101','FORPAGODES, TIPO',sWhere,'FORPAGODES');
  PnlReclamo.enabled := True;
  dbeFOperacion.Date := xFechasys;
  if dm1.cdsQry.FieldbyName('TIPO').AsString <> 'D' then
   begin
    dblcChqBanco.Enabled:=False;
    dbeChqCuenta.Enabled:=False;
    edtChqBanco.Text:='';
    dbeChqNum.Enabled := False;
    dbeChqNum.OnExit(dbeChqNum);
    //dbeFOperacion.setfocus;
    mmObse.SetFocus;
   end
  else
   begin
    dblcChqBanco.text := '04';
    dblcChqBanco.Enabled:=True;
    dbeChqCuenta.Enabled:=True;
    dbeChqNum.Enabled := True;
    dblcChqBanco.Onexit(dblcChqBanco);
    dblcChqBanco.SetFocus;
   end;
end;

procedure TFCanCuotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crDefault;
end;

procedure TFCanCuotas.Deshabilita;
begin
  bbtnImpri.enabled := False;
  dbgCreditos.enabled := False;
  dblcFormaPago.enabled := False;
  bbtnSigue.enabled := False;
  edtMonto.enabled := False;
  Z2bbtnSumatoria.enabled := False;
  Z2bbtnBorrar.enabled := false;
  PnlReclamo.enabled := False;
  dbgCronogVen.enabled := False;
end;

procedure TFCanCuotas.Limpia;
begin
  lblMtoAPagar.caption := '0.00';
  dbeFOperacion.text := '';
  mmObse.clear;
  dblcChqBanco.Text := '';
  edtChqBanco.Text := '';
  dbeChqCuenta.Text := '';
  dbeChqNum.Text := '';
  dbgCronogVen.datasource := nil;
end;

procedure TFCanCuotas.Z2bbtnSumatoriaClick(Sender: TObject);
var
 xI : Integer;
begin
  try
    Screen.Cursor := crHourglass;
    DM1.cdsHijo.DisableControls;
    For xI := 1 to 60 do
     begin
      xMeses[xI,1] := '';
      xMeses[xI,2] := '';
     end;
    DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
    DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := False;
    case rgForma.Itemindex of
     0 : CalculoAuto;
     1 : CalculoManual;
     2 : CalculoDevo;
    end;
    DM1.cdsHijo.FieldByName('SALDO').Readonly := True;
    DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := True;
    DM1.cdsHijo.IndexFieldNames:='CRECUOTA;CREANO;CREMES';
    DM1.cdsHijo.First;
    DM1.cdsHijo.EnableControls;
    bbtnSigue.enabled := StrToFloat(edtMonto.Text) > 0;
  finally
   Z2bbtnSumatoria.Enabled := False;
   Screen.Cursor := crDefault;
   DM1.cdsHijo.EnableControls;
  end;
end;

procedure TFCanCuotas.Z2bbtnBorrarClick(Sender: TObject);
var
 xI : Integer;
begin
 try
    Screen.Cursor := crHourglass;
    Z2bbtnSumatoria.Enabled := True;    
    DM1.cdsHijo.DisableControls;
    xMto := 0;
    For xI := 1 to 60 do
     begin
      xMeses[xI,1] := '';
      xMeses[xI,2] := '';
     end;
    dm1.cdsHijo.First;
    while not dm1.cdsHijo.Eof do
     begin
      DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
      DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := False;
      DM1.cdsHijo.Edit;
      DM1.cdsHijo.FieldByname('FLAGVAR').AsString:='';
      DM1.cdsHijo.fieldbyname('SALDO').AsFloat := DM1.cdsHijo.fieldbyname('CREMTO').AsFloat;
      DM1.cdsHijo.fieldbyname('CREMTOEXC').AsFloat := 0.00;
      DM1.cdsHijo.FieldByname('SUMAR').AsString:='';
      dm1.cdsHijo.Next;
     end;
    DM1.cdsHijo.FieldByName('SALDO').Readonly := True;
    DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := True;
    DM1.cdsHijo.IndexFieldNames:='CRECUOTA;CREANO;CREMES';
    bbtnSigue.enabled := False;
    For xI := 1 to 60 do
     begin
      xcontrol[xI] := '';
     end;
 Finally
  dm1.cdsHijo.First; 
  DM1.cdsHijo.EnableControls;
  Screen.Cursor := crDefault;
 end;
end;

procedure TFCanCuotas.dblcChqBancoExit(Sender: TObject);
var
 sWhere : String;
begin
 sWhere:= 'BANCOID = '+ quotedstr(dblcChqBanco.text);
 edtChqBanco.text:=dm1.DisplayDescrip('prvSQL','TGE105','BANCONOM, BANCOPRF',sWhere,'BANCONOM');
 if Length(Trim(edtChqBanco.text)) > 0 then
  DM1.FiltraCDS(DM1.cdsCuentas, 'SELECT DISTINCT CCBCOID FROM TGE106 WHERE BANCOID='+quotedStr(dblcChqBanco.text));
end;

procedure TFCanCuotas.dblctmonedaExit(Sender: TObject);
var
 sWhere : String;
begin
  sWhere:= 'TMONID = '+ quotedstr(dblcTMoneda.text) ;
  dbeMoneda.text:=dm1.DisplayDescrip('prvTGE','TGE103','TMONABR,TMONDES',sWhere,'TMONABR');
  xmoneda := dm1.cdsqry.fieldbyname('TMONDES').AsString;
end;

procedure TFCanCuotas.dbgCronogVenCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (Field.FieldName = 'CREESTADO') then
   begin
    if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('FLAGVAR').AsString = 'S' then
     begin
      AFont.Color := clGreen;
      if (Highlight) then ABrush.Color := clWindow;
     end
    else
     begin
      if ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SUMAR').AsString = 'S') then
       begin
        AFont.Color := clTeal;
        if (Highlight) then ABrush.Color := clWindow;
       end
      else
       begin
        AFont.Color := clRed;
        if (Highlight) then ABrush.Color := clWindow;
       end;
     end;
  end;

  if (Field.FieldName = 'SALDO') then
   begin
    if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat = 0 then
     begin
      AFont.Color := clGreen;
      if (Highlight) then ABrush.Color := clWindow;
     end
    else
     begin
      if ( (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat > 0) and
          ( (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat <
            (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat  ) then
       begin
        AFont.Color := clTeal;
        if (Highlight) then ABrush.Color := clWindow;
       end
      else
       begin
        AFont.Color := clRed;
        if (Highlight) then ABrush.Color := clWindow;
       end;
     end;
  end;
  if (Field.FieldName = 'CREMTOEXC') then
   begin
    if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTOEXC').AsFloat = 0 then
     begin
      AFont.Color := clGreen;
      if (Highlight) then ABrush.Color := clWindow;
     end
    else
     begin
      if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTOEXC').AsFloat > 0 then
       begin
        AFont.Color := clRed;
        if (Highlight) then ABrush.Color := clWindow;
       end
      else
       begin
        AFont.Color := clgreen;
        if (Highlight) then ABrush.Color := clWindow;
       end;
     end;
  end;

end;

procedure TFCanCuotas.dbgCronogVenFieldChanged(Sender: TObject;
  Field: TField);
var
 xZ,xI : Integer;
 xBookMark : TBookMark;
 xEsta,xTrue : boolean;
 xSal : Double;
begin
  //** pjsv - si el campo modificado es el correcto
  xTrue := False;
  xEsta := False;
  IF Field.DisplayName = 'SUMAR' then
   begin
    If ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREESTID').AsString <> xEstid7) and
       ((rgProceso.ItemIndex = 0) or (rgProceso.ItemIndex = 1)) then
     xTrue := True
    else
     If ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREESTID').AsString = xEstid7) and
        (rgProceso.ItemIndex = 0) then
      xTrue := True;

    If xTrue then
     begin
      xBookMark := (Sender as TwwDBGrid).DataSource.DataSet.GetBookmark;
      xMto := 0;
      try
         (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
         (Sender as TwwDBGrid).DataSource.DataSet.First;
         While not (Sender as TwwDBGrid).DataSource.DataSet.Eof do
          begin
           //** pjsv - si el campo FLGSALDO = 'S' y CREFDEV = 'S' (con el Check)
           If (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SUMAR').AsString = 'S' then
            begin
             //** pjsv - Para el tipo de moneda
             If (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('TMONID').AsString = dm1.wTMonLoc then
               //** pjsv - si la suma sera Total o Parcial
              begin
               // si es por cobrar
               If (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('TIPO').AsString = '1' then
                begin
                 // si es el ultimo
                 xz := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsInteger;
                 //** para saber si es por devolucion
                 If rgForma.ItemIndex <> 2 then
                  begin
                   If xZ = xPosicion then
                    begin
                     //** para saber si ya esta en el arreglo
                     For xI := 1 to 60 do
                      begin
                       If xControl[xI] = IntToStr(xPosicion) then
                        begin
                         xEsta := True;
                         break;
                        end;
                      end;
                     If not(xEsta) then
                      begin
                       //** se agraga al arreglo y no se suma el interes
                       For xI := 1 to 60 do
                        begin
                         If xControl[xI] = '' then
                          begin
                           xControl[xI] := IntToStr(xPosicion);
                           xEsta := False;
                           break;
                          end;
                        end;
                      end;
                     xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat;
                    end
                   else  //** si es <> del ultimo
                    begin
                     //** esto es para saber si se marco el ultimo
                     For xI := 1 to 60 do
                      begin
                       If xControl[xI] = IntToStr(xPosicion) then
                        begin
                         xTrue := True;
                         Break;
                        end
                       else
                        xTrue := False;
                      end;
                    // si se marco la ultima, se resta uno para saber si es el anterior
                     If xTrue then
                      begin
                       xTrue := false;
                       For xI := 0 to 59 do
                        begin
                         If (xPosicion-xI) > StrToInt((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString) then
                          begin
                           //** para saber si el siguiente esta marcado
                           If xControl[xI+1] = IntToStr(xPosicion-xI) then
                             xTrue := True
                           else
                            xTrue := False;
                          end;
                        end;

                       //** para saber si ya esta en el arreglo
                       For xI := 1 to 60 do
                        begin
                         If xControl[xI] = (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString then
                          begin
                           xEsta := True;
                           break;
                          end;
                        end;
                       If not(xEsta) then
                        begin
                         For xI := 1 to 60 do
                          begin
                           If xControl[xI] = '' then
                            begin
                             xControl[xI] := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString; //IntToStr(xPosicion);
                             xEsta := False;
                             break;
                            end;
                          end;
                        end;

                         If xTrue then
                          xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat
                         else
                          begin
                           // vhn
                          if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTOCOB').AsFloat>0 then
                          begin
                             xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat;
                             DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
                             (Sender as TwwDBGrid).DataSource.DataSet.Edit;
                             // VHN
                             (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat;
                          end
                          else
                          begin
                            xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat +
                                           (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREINTERES').AsFloat;
                            DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
                            (Sender as TwwDBGrid).DataSource.DataSet.Edit;
                            // VHN
                            (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat +
                                                                                                     (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREINTERES').AsFloat -
                                                                                                     (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTOINT').AsFloat;
                            end;
                           // VHN
                           (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('FLAGINT').AsString:='S';

                           DM1.cdsHijo.FieldByName('SALDO').Readonly := True;
                          end;
                      end
                     else
                      begin
                        //** para saber si ya esta en el arreglo
                        // vhn
                        xEsta := False;
                        For xI := 1 to 60 do
                         begin
                          If xControl[xI] = (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString then
                           begin
                            xEsta := True;
                            break;
                           end;
                         end;
                        If not(xEsta) then
                         begin
                          For xI := 1 to 60 do
                           begin
                            If xControl[xI] = '' then
                             begin
                              xControl[xI] := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString;
                              xEsta := False;
                              break;
                             end;
                           end;
                         end;

                         // vhn
                          {xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat +
                                         (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREINTERES').AsFloat -
                                         (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTOINT').AsFloat;}
                          if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTOCOB').AsFloat>0 then
                          begin
                             xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat;
                             DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
                            (Sender as TwwDBGrid).DataSource.DataSet.Edit;
                            // VHN
                            {(Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat +
                                                                                                     (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREINTERES').AsFloat;}
                            (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat;
                          end
                          else
                          begin
                             xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat +
                                            (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREINTERES').AsFloat -
                                            (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTOINT').AsFloat;
                             DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
                            (Sender as TwwDBGrid).DataSource.DataSet.Edit;
                            // VHN
                            {(Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat +
                                                                                                     (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREINTERES').AsFloat;}
                            (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat +
                                                                                                     (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREINTERES').AsFloat -
                                                                                                     (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTOINT').AsFloat;
                          end;
                          xSal:=(Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat;
                          DM1.cdsHijo.FieldByName('SALDO').Readonly := True;

                          // vhn
                          (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('FLAGINT').AsString:='S';

                      end;
                    end;
                  end
                 else //** si es por devolucion
                  begin
                    xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat;
                    //If rgDevo.ItemIndex = 0 then
                    // xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREFLAT').AsFloat;

                    DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
                    (Sender as TwwDBGrid).DataSource.DataSet.Edit;
                    If rgDevo.ItemIndex = 0 then
                     (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat :=
                       (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat
                       // +(Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREFLAT').AsFloat
                    else
                     (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat :=
                       (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat ;

                     DM1.cdsHijo.FieldByName('SALDO').Readonly := True;
                  end;
                end
               else
                xMto := xMto + (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat;

                //** para saber si ya esta en el arreglo
                xEsta:=False;
                For xI := 1 to 60 do
                 begin
                  If xControl[xI] = (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString then
                   begin
                    xEsta := True;
                    break;
                   end;
                 end;
                If not(xEsta) then
                 begin
                  For xI := 1 to 60 do
                   begin
                    If xControl[xI] = '' then
                     begin
                      xControl[xI] := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString; //IntToStr(xPosicion);
                      xEsta := False;
                      break;
                     end;
                   end;
                 end;
              end
             else
              begin
                xMto := xMto + ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREAMORT').AsFloat * xTCambio );
                       //** para saber si ya esta en el arreglo
                       xEsta:=False;
                       For xI := 1 to 60 do
                        begin
                         If xControl[xI] = (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString then
                          begin
                           xEsta := True;
                           break;
                          end;
                        end;
                       If not(xEsta) then
                        begin
                         For xI := 1 to 60 do
                          begin
                           If xControl[xI] = '' then
                            begin
                             xControl[xI] := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString; //IntToStr(xPosicion);
                             xEsta := False;
                             break;
                            end;
                          end;
                        end;
              end
            end
           else // cuando se le quita la marca
            begin
             For xI := 1 to 60 do
              begin
               If xControl[xI] = (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('PORCOBRAR').AsString then
                 xControl[xI] := '';
              end;
              DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
              (Sender as TwwDBGrid).DataSource.DataSet.Edit;
              // vhn
              if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTOCOB').AsFloat>0 then
                (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat
              else
                (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SALDO').AsFloat := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('CREMTO').AsFloat;
              DM1.cdsHijo.FieldByName('SALDO').Readonly := True;
              // vhn
              (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('FLAGINT').AsString:='N';
            end;

            lblMtoAPagar.Caption := FloatToStrF(xMto,ffFixed,15,2);
            edtMonto.Text := FloatToStrF(xMto,ffFixed,15,2);
            (Sender as TwwDBGrid).DataSource.DataSet.next;
          end;
      Finally
       (Sender as TwwDBGrid).DataSource.DataSet.GotoBookmark(xBookMark);
       (Sender as TwwDBGrid).DataSource.DataSet.FreeBookmark(xBookMark);
       (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
      end;
     end
    else
     begin
      If (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SUMAR').AsString = 'S' then
        begin
         (Sender as TwwDBGrid).DataSource.DataSet.Edit;
         (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('SUMAR').AsString := '';
        end;
     end;
   end;
end;

procedure TFCanCuotas.dbeChqNumExit(Sender: TObject);
begin
  edtMonto.enabled := true;
  Z2bbtnSumatoria.enabled := true;
  Z2bbtnBorrar.enabled := true;
  dbgCronogVen.enabled := True;
end;

procedure TFCanCuotas.bbtnSigueClick(Sender: TObject);
var
 xTipo,sWhere,xEstadoZ,xEstidZ,xSql,sSQL, xFlgInt : String;
 xCapital,xmtoint,xmtoflat,xMtoSal : Double;
 xcount : Integer;
begin
 try
  if MessageDlg('Esta Seguro(a) de Cancelar',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   begin
    screen.cursor := crHourglass;
    sWhere:= 'FORPAGOID = '+ quotedstr(dblcFormaPago.text) ;
    xTipo := dm1.DisplayDescrip('prvTGE','COB101','TIPO',sWhere,'TIPO');

    if dm1.cdsQry.FieldbyName('TIPO').AsString <> 'D' then
     begin
      dblcChqBanco.Enabled:=False;
      dbeChqCuenta.Enabled:=False;
      edtChqBanco.Text:='';
      dbeChqNum.Enabled := False;

      xTipocorre := '8';
      xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''003''','MODULOID');
      xCorreWhere := ' CREAREA = '+quotedstr(xArea)+' AND '+
                    ' TIPO ='+quotedstr(xTipocorre)+' AND ';
     xCorreWherex:= ' X.CREAREA = '+quotedstr(xArea)+' AND '+
                   ' X.TIPO ='+quotedstr(xTipocorre)+' AND ';
     xCorreWherey:= ' Y.CREAREA = '+quotedstr(xArea)+' AND '+
                    ' Y.TIPO ='+quotedstr(xTipocorre);
     xTabla     := 'CRE211';
     xCeros     := 10;
     xCorreCampo:= 'CANCUO';
     Correlativo;
     xCorreASOID := xCorre;
     dbeChqNum.Text := xCorreASOID;
    end;

    dm1.cdsHijo.First;
    addMeses;
    while not dm1.cdsHijo.eof do
     begin
       If (dm1.cdsHijo.fieldByName('SALDO').AsFloat = 0) or
          (dm1.cdsHijo.fieldByName('CREMTO').AsFloat > dm1.cdsHijo.fieldByName('SALDO').AsFloat) or
          // VHN
          ( ( dm1.cdsHijo.fieldByName('FLAGINT').AsString='S' ) AND
            ( dm1.cdsHijo.fieldByName('CREMTO').AsFloat + dm1.cdsHijo.fieldByName('CREINTERES').AsFloat -
              dm1.cdsHijo.fieldByName('CREMTOINT').AsFloat > dm1.cdsHijo.fieldByName('SALDO').AsFloat ) ) then

        begin
           xSQL := 'INSERT INTO CRE310 (ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,'+
                   // vhn
                   //'CREDID,CRECUOTA,CREFPAG,CREINTERES,CREFLAT,CREAMORT,'+
                   'CREDID, CRECUOTA, CREFPAG, CREFLAT, CREINTERES, CREAMORT, '+
                   'CREMTOCOB, TMONID, TCAMBIO, USUARIO, FREG, HREG, CIAID, UPROID, DPTOID, UPAGOID,'+
                   'BANCOID, CCBCOID, ASOAPENOM, CIUDID, AREAID, TRANSINTID, FORPAGID, FORPAGABR,'+
                   'CREANO, CREMES, CREESTID, CREESTADO, CREMTOCUO, CREDOCPAG, CREOBS, FORPAGOID,'+
                   'FORPAGOABR, NROOPE, FOPERAC, CREESTANT, CREESTANTDES)'+
                   ' VALUES ('+
                   //** ASOID
                   quotedstr(xAsoid)+','+
                   //** ASOCODMOD
                   quotedstr(DM1.cdsPadre.FieldByName('ASOCODMOD').AsString)+','+
                   //** ASOCODAUX
                   quotedstr(DM1.cdsPadre.FieldByName('ASOCODAUX').AsString)+','+
                   //** USEID
                   quotedstr(DM1.cdsPadre.FieldByName('USEID').AsString)+','+
                   //** ASOCODPAGO
                   quotedstr(DM1.cdsPadre.FieldByName('ASOCODPAGO').AsString)+','+
                   //** TIPCREID
                   quotedstr(DM1.cdsHijo.FieldByName('TIPCREID').AsString)+','+
                   //** CREDID
                   quotedstr(DM1.cdsHijo.FieldByName('CREDID').AsString)+','+
                   //** CRECUOTA
                   quotedstr(DM1.cdsHijo.FieldByName('CRECUOTA').AsString)+','+
                   //** CREFPAG
                   quotedstr(dbeFOperacion.text)+',';
           //** todo esto es para el interes,flat, y capital
           If dm1.FRound(dm1.cdsHijo.fieldByName('SALDO').AsFloat,15,2) = 0 then
            begin
             //** si es no pagado o en proceso de cobranza, se verifica que no tenga valor
             //** el crecapital esto me indica que tomare todo
             if (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid5) or
                (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid7) then
              begin
               If (DM1.cdsHijo.FieldByName('CRECAPITAL').Asfloat = 0) AND
                  (DM1.cdsHijo.FieldByName('CREMTOINT').Asfloat = 0) AND
                  (DM1.cdsHijo.FieldByName('CREMTOFLAT').Asfloat = 0) then
                begin
                  {xSql := xsql+DM1.cdsHijo.FieldByName('CREINTERES').AsString+','+
                               DM1.cdsHijo.FieldByName('CREFLAT').AsString+','+
                               DM1.cdsHijo.FieldByName('CREAMORT').AsString+',';}
                  xSql := xsql+DM1.cdsHijo.FieldByName('CREFLAT').AsString+','+
                               DM1.cdsHijo.FieldByName('CREINTERES').AsString+','+
                               DM1.cdsHijo.FieldByName('CREAMORT').AsString+',';
                  xCapital := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat;
                  xmtoInt  := DM1.cdsHijo.FieldByName('CREINTERES').AsFloat;
                  xmtoFlat := DM1.cdsHijo.FieldByName('CREFLAT').AsFloat;
                end
               else
                begin
                {
                  xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat,ffFixed,15,2 )+','+
                               FloatToStrF(DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+','+
                               FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';}
                  xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+','+
                               FloatToStrF(DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat,ffFixed,15,2 )+','+
                               FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';
                  xCapital := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat - DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat;
                  xmtoInt  := DM1.cdsHijo.FieldByName('CREINTERES').AsFloat- DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat;
                  xmtoFlat := DM1.cdsHijo.FieldByName('CREFLAT').AsFloat- DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat;
                end;
              end
             else
              //** si es parcial vencida
              if (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid4) and
                 ((DM1.cdsHijo.fieldbyname('CREANO').AsFloat < xAnos) or
                  ((DM1.cdsHijo.fieldbyname('CREANO').AsFloat = xAnos) and
                   (DM1.cdsHijo.fieldbyname('CREMES').AsFloat <= xMess) ))then
               begin
                  xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+','+
                               FloatToStrF(DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat,ffFixed,15,2)+','+
                               FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';
                  xCapital := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat - DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat;
                  xmtoInt  := DM1.cdsHijo.FieldByName('CREINTERES').AsFloat- DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat;
                  xmtoFlat := DM1.cdsHijo.FieldByName('CREFLAT').AsFloat- DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat;
               end
              else
               begin
                If rgForma.ItemIndex <> 2 then
                 begin
                  // vhn
                  if DM1.cdsHijo.FieldByName('FLAGINT').AsString='S' then
                  begin
                  xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+','+
                               FloatToStrF(DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat,ffFixed,15,2)+','+
                               FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';
                  xmtoInt  := DM1.cdsHijo.FieldByName('CREINTERES').AsFloat- DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat;
                  end
                  else
                  begin
                  xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+','+
                               '0.00'+','+
                               FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';
                   xmtoInt  := 0.00;
                  end;
                   xCapital := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat;
                   //xmtoInt  := 0.00;
                   xmtoFlat := DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat;
                 end
                else
                 begin
                  If rgDevo.ItemIndex = 0 then
                   begin
                    xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                 DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+','+
                                 '0.00'+','+
                                 FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                                 DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';

                     xCapital := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                                 DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat;
                     xmtoInt  := 0.00;
                     xmtoFlat := DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                 DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat;
                   end
                  else
                   begin
                    xSql := xsql+'0.00,0.00,'+
                                 FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                                 DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';
                     xCapital := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat -
                                 DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat;
                     xmtoInt  := 0.00;
                     xmtoFlat := 0.00;
                   end;
                 end;
               end;
            end
           else //** CUANDO EL SALDO ES MAYOR QUE CERO
            begin
             // VHN 16/05/2003
             {xMtoSal := DM1.cdsHijo.FieldByName('CREMTO').AsFloat -
                        DM1.cdsHijo.FieldByName('SALDO').AsFloat;
             {
             if DM1.cdsHijo.FieldByName('CREMTOCOB').AsFloat>0 then
             begin
                xMtoSal := DM1.cdsHijo.FieldByName('SALDO').AsFloat;
             end
             else
             begin  }
                if DM1.cdsHijo.FieldByName('FLAGINT').AsString='S' then
                   xMtoSal := DM1.cdsHijo.FieldByName('CREMTO').AsFloat +
                              DM1.cdsHijo.FieldByName('CREINTERES').AsFloat -
                              DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat -
                              DM1.cdsHijo.FieldByName('SALDO').AsFloat
                else
                   xMtoSal := DM1.cdsHijo.FieldByName('CREMTO').AsFloat -
                              DM1.cdsHijo.FieldByName('SALDO').AsFloat;
             //end;
             //** si es no pagado o en proceso de cobranza, se verifica que no tenga valor
             //** el crecapital esto me indica que tomare todo
             if (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid5) or
                (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid7) then
              begin
               If (DM1.cdsHijo.FieldByName('CRECAPITAL').Asfloat = 0) AND
                  (DM1.cdsHijo.FieldByName('CREMTOINT').Asfloat = 0) AND
                  (DM1.cdsHijo.FieldByName('CREMTOFLAT').Asfloat = 0) then
                begin
                  //** esto es para el flat
                  If xMtoSal > 0 then
                   begin
                    If xMtoSal > DM1.cdsHijo.FieldByName('CREFLAT').AsFloat then
                     begin
                      xSql := xsql+DM1.cdsHijo.FieldByName('CREFLAT').AsString+',';
                      xMtoFlat := DM1.cdsHijo.FieldByName('CREFLAT').AsFloat;
                      xMtoSal := xMtoSal - DM1.cdsHijo.FieldByName('CREFLAT').AsFloat;
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xmtoFlat := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end
                  else
                   begin
                    xSql := xsql+'0.00,';
                    xMtoFlat := 0.00;
                   end;
                  //** esto es para el interes
                  If xMtoSal > 0 then
                   begin
                    If xMtoSal > DM1.cdsHijo.FieldByName('CREINTERES').AsFloat then
                     begin
                      xSql := xsql+DM1.cdsHijo.FieldByName('CREINTERES').AsString+',';
                      xmtoInt  := DM1.cdsHijo.FieldByName('CREINTERES').AsFloat;
                      xMtoSal := xMtoSal - DM1.cdsHijo.FieldByName('CREINTERES').AsFloat;
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xmtoInt  := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end
                  else
                   begin
                    xSql := xsql+'0.00,';
                    xmtoInt  := 0.00;
                   end;
                  //** esto es para el capital
                  If xMtoSal > 0 then
                   begin
                    If xMtoSal > DM1.cdsHijo.FieldByName('CREAMORT').AsFloat then
                     begin
                      xSql := xsql+DM1.cdsHijo.FieldByName('CREAMORT').AsString+',';
                      xCapital := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat;
                      xMtoSal := xMtoSal - DM1.cdsHijo.FieldByName('CREAMORT').AsFloat;
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xCapital := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end
                  else
                   begin
                     xSql := xsql+'0.00,';
                     xCapital := 0.00;
                   end;
                end
               else
                begin
                  If xMtoSal > 0 then
                   begin
                    If xMtoSal > 0 then
                    begin
                     If xMtoSal > (DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                  DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat) then
                     begin
                      xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+',';
                      xmtoFlat := DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat;
                      xMtoSal := xMtoSal - (DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                            DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat);
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xmtoFlat := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end;
                    If xMtoSal > (DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                  DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat) then
                     begin
                      xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                              DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat,ffFixed,15,2)+',';
                      xMtoInt := DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                  DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat;
                      xMtoSal := xMtoSal - (DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                         DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat);
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xMtoInt := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end;
                  If xMtoSal > 0 then
                   begin
                    If xMtoSal > (DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                  DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat) then
                     begin
                      xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';
                      xCapital := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat;
                      xMtoSal := xMtoSal - (DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                            DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat);
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xCapital := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end;
                end;
              end
             else
              //** si es parcial vencida
              if (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid4) and
                 ((DM1.cdsHijo.fieldbyname('CREANO').AsFloat < xAnos) or
                  ((DM1.cdsHijo.fieldbyname('CREANO').AsFloat = xAnos) and
                   (DM1.cdsHijo.fieldbyname('CREMES').AsFloat <= xMess) ))then
               begin
                  If xMtoSal > 0 then
                   begin
                    If xMtoSal > (DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                  DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat) then
                     begin
                      xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                                        DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+',';
                      xMtoFlat := DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                                        DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat;
                      xMtoSal := xMtoSal - (DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                            DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat);
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xMtoFlat := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end;
                  If xMtoSal > 0 then
                   begin
                    If xMtoSal > (DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                  DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat) then
                     begin
                      xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                                         DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat,ffFixed,15,2)+',';
                      xMtoInt := DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                                         DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat;
                      xMtoSal := xMtoSal - (DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                            DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat);
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xMtoInt := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end;
                  If xMtoSal > 0 then
                   begin
                    If xMtoSal > (DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                  DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat) then
                     begin
                      xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';
                      xMtoFlat := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                               DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat;
                      xMtoSal := xMtoSal - (DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                         DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat);

                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xCapital := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end
                   else // VHN 01/07/2003
                   begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xCapital := xMtoSal;
                      xMtoSal := 0.00;
                   end;
               end
              else //** PARCIALES POR COBRAR O POR COBRAR
               begin
                  {  PORQUE NO CONSIDERA EL INTERES
                  If xMtoSal > 0 then
                   begin
                    xSql := xsql+'0.00'+',';
                    xmtoInt := 0.00;
                   end;
                  }
                  If xMtoSal > 0 then
                   begin
                    //** cuando el xMtoSal es mayor que el flat
                    If xMtoSal > (DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                  DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat) then
                     begin
                      xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat,ffFixed,15,2)+',';
                      xMtoFlat := DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                               DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat;
                      xMtoSal := xMtoSal - (DM1.cdsHijo.FieldByName('CREFLAT').AsFloat-
                                            DM1.cdsHijo.FieldByName('CREMTOFLAT').AsFloat);
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xMtoFlat := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end;

                  // VHN
                  If ( xMtoSal > 0 ) and
                     ( ( DM1.cdsHijo.FieldByName('FLAGINT').AsString='S' ) or
                       ( DM1.cdsHijo.FieldByName('FLGINT').AsString ='S' ) ) then
                   begin
                    If xMtoSal > (DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                  DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat) then
                     begin
                      xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                               DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat,ffFixed,15,2)+',';
                      xMtoInt := DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                                         DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat;
                      xMtoSal := xMtoSal - (DM1.cdsHijo.FieldByName('CREINTERES').AsFloat-
                                            DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat);
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xMtoInt := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end
                   else
                   begin
                      xSql := xsql+FloattoStrF( 0, ffFixed,15,2)+',';
                      xMtoInt := 0;
                      //xMtoSal := 0.00;
                   end;

                   // END VHN
                  If xMtoSal > 0 then
                   begin
                    If xMtoSal > (DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                  DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat) then
                     begin
                      xSql := xsql+FloatToStrF(DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                             DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat,ffFixed,15,2)+',';
                      xCapital := DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                             DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat;
                      xMtoSal := xMtoSal - (DM1.cdsHijo.FieldByName('CREAMORT').AsFloat-
                                            DM1.cdsHijo.FieldByName('CRECAPITAL').AsFloat);
                     end
                    else
                     begin
                      xSql := xsql+FloattoStrF(xMtoSal,ffFixed,15,2)+',';
                      xCapital := xMtoSal;
                      xMtoSal := 0.00;
                     end;
                   end
                  else
                   begin
                    xSql := xsql+FloatToStrF(0.00,ffFixed,15,2)+',';
                    xCapital := 0.00;
                   end;
               end;
            end;
           //** cremtocob
           // vhn
           if DM1.cdsHijo.FieldByName('FLAGINT').AsString='S' then
           begin
              if DM1.cdsHijo.FieldByName('CREMTOCOB').AsFloat=0 then
              begin
                 xMtoSal:=DM1.cdsHijo.FieldByName('CREMTO').AsFloat +
                          DM1.cdsHijo.FieldByName('CREINTERES').AsFloat - DM1.cdsHijo.FieldByName('CREMTOINT').AsFloat -
                          Dm1.FRound(DM1.cdsHijo.FieldByName('SALDO').AsFloat,15,2);
              end
              else
              begin
                 xMtoSal := DM1.cdsHijo.FieldByName('CREMTO').AsFloat -  Dm1.FRound(DM1.cdsHijo.FieldByName('SALDO').AsFloat,15,2);
              end;
           end
           else
           begin
              xMtoSal := DM1.cdsHijo.FieldByName('CREMTO').AsFloat -  Dm1.FRound(DM1.cdsHijo.FieldByName('SALDO').AsFloat,15,2);
           end;
           // VHN
           //xMtoSal := DM1.cdsHijo.FieldByName('CREMTO').AsFloat - Dm1.FRound(DM1.cdsHijo.FieldByName('SALDO').AsFloat,15,2);
           {
           If xMtoSal = 0 then
            xSql := xSql + DM1.cdsHijo.FieldByName('CREMTO').AsString+','
           else
            xSql := xSql + FloatToStrF(xMtoSal,ffFixed,15,2)+',';
           }
            xSql := xSql + FloatToStrF(xMtoSal,ffFixed,15,2)+',';

           //** tmonid
           xSql := xSql + quotedstr(dblctmoneda.text)+','+FloatToStrF(xTCambio,ffFixed,15,2)+','+
                   quotedstr(dm1.wusuario)+','+wRepFecServi+','+wRepTimeServi+','+
                   quotedstr(dm1.cdshijo.FieldByName('CIAID').AsString)+','+
                   quotedstr(DM1.cdsPadre.FieldByName('UPROID').AsString)+','+
                   quotedstr(DM1.cdsPadre.FieldByName('DPTOID').AsString)+','+
                   quotedstr(DM1.cdsPadre.FieldByName('UPAGOID').AsString)+','+
                   quotedstr(dblcChqBanco.text)+','+
                   quotedstr(dbeChqCuenta.text)+','+
                   quotedstr(DM1.cdsPadre.FieldByName('ASOAPENOM').AsString)+','+
                   quotedstr(DM1.cdsPadre.FieldByName('CIUDID').AsString)+','+
                   quotedstr('COB')+','+quotedstr('CUO')+','+quotedstr(dblcFormaPago.text)+','+
                   quotedstr(copy(edtFormaPago.text,1,15))+','+
                   quotedstr(dm1.cdsHijo.FieldByName('CREANO').AsString)+','+
                   quotedstr(dm1.cdsHijo.FieldByName('CREMES').AsString)+',';

            //** se setea los estados dependiendo del saldo y el estado que tuvo
            If Dm1.FRound(DM1.cdsHijo.FieldByName('SALDO').AsFloat,15,2) = 0 then
             begin
              //** SI ESTA POR COBRAR
              If DM1.cdsHijo.FieldByName('CREESTID').AsString = xEstid2 then
               begin
                If rgForma.ItemIndex <> 2 then
                 begin
                  xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Z'),'ESTDES');
                  xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
                 end
                else
                 begin
                  xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('F'),'ESTDES');
                  xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
                 end
               end
              else
               begin
                //** SI ES PARCIAL PENDIENTE
                if (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid4) and
                  ((DM1.cdsHijo.fieldbyname('CREANO').AsFloat = xAnos) and
                   (DM1.cdsHijo.fieldbyname('CREMES').AsFloat > xMess))then
                 begin
                   xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Z'),'ESTDES');
                   xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
                 end
                else //** si es vencida
                 begin
                  xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Y'),'ESTDES');
                  xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
                 end;
               end;
             end
            else
             begin
              xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('V'),'ESTDES');
              xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
             end;
          xSql := xSql + quotedstr(xEstidZ)+','+quotedstr(xEstadoZ)+',';

           If xMtoSal = 0 then
            xSql := xSql + DM1.cdsHijo.FieldByName('CREMTO').AsString+','
           else
            xSql := xSql + FloatToStrF(xMtoSal,ffFixed,15,2)+',';
           xSql := xSql + quotedstr(dbeChqNum.text)+
                   ','+quotedstr(mmObse.text)+','+
                   quotedstr(dm1.cdsHijo.FieldByName('FORPAGOID').AsString)+','+
                   quotedstr(dm1.cdsHijo.FieldByName('FORPAGOABR').AsString)+','+
                   quotedstr(dbeChqNum.text)+','+wRepFecServi+','+
                   // VHN AÑADIDO A PEDIDO DE JOSE. EL ESTADO ANTERIOR
                   quotedstr(dm1.cdsHijo.FieldByName('CREESTID').AsString)+', '+
                   quotedstr(dm1.cdsHijo.FieldByName('CREESTADO').AsString)+' )';
          //
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xFlgInt:='N';
          IF ( DM1.cdsHijo.FieldByName('FLAGINT').AsString='S' ) or
             ( DM1.cdsHijo.FieldByName('FLGINT').AsString ='S' ) then
             xFlgInt:='S';

          //  Prcedure : ActualizaCobranza ( Actualiza CRE302, cre301, cre303
          //
          //  wFlgInt : 'S' SI LA CUOTA SE LE COBRA INTERES
          //  wArea   : 'COB' Si el cobro es en Cobranza
          //  xMtoCob : Monto Cobrado
          //  xMtoExc : Excedente
          //  xSaldo  : Saldo
          //

          FActualizaSaldos.ActualizaCobranza( dm1.cdsHijo.FieldByName('ASOID').AsString,
                                               dm1.cdsHijo.FieldByName('CREDID').AsString,
                                               dm1.cdsHijo.FieldByName('CREANO').AsString,
                                               dm1.cdsHijo.FieldByName('CREMES').AsString,
                                               dm1.cdsHijo.FieldByName('CRECUOTA').AsString,
                                               dbeChqNum.Text, dm1.cdsHijo.FieldByName('CREESTID').AsString,
                                               xFlgInt, 'COB',
                                               xMtoSal, xMntDs,
                                               DM1.cdsHijo.FieldByName('SALDO').AsFloat );

          {
          //** actualizo el cre302

          xSql := 'UPDATE CRE302 SET  CREMTOCOB= nvl(CREMTOCOB,0)+';
          xSql := xSql + FloatToStrF(xMtoSal,ffFixed,15,2);

          //** se setea los estados dependiendo del saldo y el estado que tuvo
          If dm1.FRound(DM1.cdsHijo.FieldByName('SALDO').AsFloat,15,2) = 0 then
           begin
            //** SI ESTA POR COBRAR
            If DM1.cdsHijo.FieldByName('CREESTID').AsString = xEstid2 then
             begin
                If rgForma.ItemIndex <> 2 then
                 begin
                  xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Z'),'ESTDES');
                  xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
                 end
                else
                 begin
                  xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('F'),'ESTDES');
                  xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
                 end
             end
            else
             begin
              //** SI ES PARCIAL PENDIENTE
              if (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid4) and
                ((DM1.cdsHijo.fieldbyname('CREANO').AsFloat = xAnos) and
                 (DM1.cdsHijo.fieldbyname('CREMES').AsFloat > xMess))then
               begin
                 xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Z'),'ESTDES');
                 xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
               end
              else //** si es vencida
               begin
                xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('Y'),'ESTDES');
                xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
               end;
             end;
           end
          else
           begin
            xEstadoZ := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+QuotedStr('V'),'ESTDES');
            xEstidZ  := DM1.cdsQry.FieldByName('ESTID').AsString;
           end;

           xSql := xSql +' ,AREAID='+QuotedStr('COB');
           If (xEstidZ = '21') or (xEstidZ = '23') or (xEstidZ = '28') then
              xSql := xSql + ' ,CRESALDO = 0.00'
           else
            begin
             If xMtoSal = 0 then
              xSql := xSql + ' ,CRESALDO = CRESALDO - '+DM1.cdsHijo.FieldByName('CREMTO').AsString
             else
             xSql := xSql + ' ,CRESALDO = CRESALDO -'+FloatToStrF(xMtoSal,ffFixed,15,2);
            end;
           xSql := xSql + ' ,CREESTID='+QuotedStr(xEstidZ)+
                          ' ,CREESTADO='+QuotedStr(xEstadoZ);
           xSql := xSql +
                         ' ,CRECAPITAL = CRECAPITAL +'+FloatToStrF(xCapital,ffFixed,15,2)+
                         ' ,CREMTOINT  = CREMTOINT +'+FloatToStrF(xmtoint,ffFixed,15,2)+
                         ' ,CREMTOFLAT = CREMTOFLAT +'+FloatToStrF(xmtoFlat,ffFixed,15,2)+
                         ' ,CREDOCPAG ='+quotedstr(dbeChqNum.text)+
                         ' ,NROOPE ='+quotedstr(dbeChqNum.text)+
                         ' ,FOPERAC = TO_DATE('+wRepFecServi+','+QuotedStr('DD/MM/YYY')+')'+
                         ' ,CREFPAG = TO_DATE('+wRepFecServi+','+QuotedStr('DD/MM/YYY')+')';
           If xMntDs > 0 then
            xSql := xSql +' ,CREMTOEXC='+FloatToStrf(xMntDs,ffFixed,15,2)
           else
            xSql := xSql +' ,CREMTOEXC= 0.00';

           if DM1.cdsHijo.FieldByName('FLAGINT').AsString='S' then
              xSql := xSql +' , FLGINT=''S''';

           xSql := xSql +' Where ASOID = '+QuotedStr(DM1.cdsHijo.FieldByName('ASOID').AsString)+
                         ' AND CREDID='+QuotedStr(DM1.cdsHijo.FieldByName('CREDID').AsString)+
                         ' AND CREANO='+QuotedStr(DM1.cdshijo.FieldByName('CREANO').AsString)+
                         ' AND CREMES='+QuotedStr(DM1.cdsHijo.FieldByName('CREMES').AsString)+
                         ' AND CRECUOTA='+QuotedStr(DM1.cdsHijo.FieldByName('CRECUOTA').AsString);
           DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
           }
           If xMntDs > 0 then xMntDs := 0.00;
        end;

      DM1.cdsHijo.Next;
     end;

    {
    xCount := 0;
    xSql := 'SELECT count(asoid) TOTAL FROM CRE302 WHERE ASOID='+quotedstr(dm1.cdsHijo.FieldByName('ASOID').AsString)+
            ' AND CREDID = '+quotedstr(dm1.cdsHijo.FieldByName('CREDID').AsString)+
            ' AND CREESTID = '+quotedstr(xEstid1);
    dm1.cdsqry1.close;
    dm1.cdsqry1.datarequest(xSql);
    dm1.cdsqry1.open;
    xCount := xCount + dm1.cdsQry1.FieldByName('TOTAL').AsInteger;

    xSql := 'SELECT count(asoid) TOTAL FROM CRE302 WHERE ASOID='+quotedstr(dm1.cdsHijo.FieldByName('ASOID').AsString)+
            ' AND CREDID = '+quotedstr(dm1.cdsHijo.FieldByName('CREDID').AsString)+
            ' AND CREESTID = '+quotedstr(xEstid6);
    dm1.cdsqry1.close;
    dm1.cdsqry1.datarequest(xSql);
    dm1.cdsqry1.open;
    xCount := xCount + dm1.cdsQry1.FieldByName('TOTAL').AsInteger;

    xSql := 'SELECT crenumcuo FROM CRE303 WHERE ASOID='+quotedstr(dm1.cdsHijo.FieldByName('ASOID').AsString)+
            ' AND CREDID = '+quotedstr(dm1.cdsHijo.FieldByName('CREDID').AsString);
    dm1.cdsqry1.close;
    dm1.cdsqry1.datarequest(xSql);
    dm1.cdsqry1.open;

    If xCount = dm1.cdsQry1.FieldByName('CRENUMCUO').AsInteger then
     begin
       If rgForma.ItemIndex <> 2 then
        xSQL := 'UPDATE CRE301 SET CREESTID='+QuotedStr(xEstid1)+
                ' ,CREESTADO='+QuotedStr(xEstado1)
       else
        xSQL := 'UPDATE CRE301 SET CREESTID='+QuotedStr(xEstid8)+
                ' ,CREESTADO='+QuotedStr(xEstado8);

       xSql := xSql +' ,CRESDOACT = 0.00 '+
              ' ,CREMTOPAG = CREMTOPAG + CREMTOTAL '+
              ' ,CRECUOPAG=CRENUMCUO ';
       xSql := xSql +  ' Where ASOID ='+QuotedStr(DM1.cdsHijo.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsHijo.FieldByName('CREDID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


       If rgForma.ItemIndex <> 2 then
        xSQL := 'UPDATE CRE303 SET CREESTID='+QuotedStr(xEstid1)+
                ' ,CREESTADO='+QuotedStr(xEstado1)
       else
        xSQL := 'UPDATE CRE303 SET CREESTID='+QuotedStr(xEstid8)+
                ' ,CREESTADO='+QuotedStr(xEstado8);

       xSql := xSql +' ,CRESDOACT = 0.00 '+
              ' ,CREMTOPAG = CREMTOPAG + CREMTOTAL '+
              ' ,CRECUOPAG= CRENUMCUO ';
       xSql := xSql +  ' Where ASOID ='+QuotedStr(DM1.cdsHijo.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsHijo.FieldByName('CREDID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     end
    else
     begin
      sSQL:= ' SELECT SUM(CREMTOCOB) TOT FROM CRE302 '+
             ' Where ASOID ='+QuotedStr(DM1.cdsHijo.FieldByName('ASOID').AsString)+
             ' AND CREDID='+QuotedStr(DM1.cdsHijo.FieldByName('CREDID').AsString)+
             ' AND CREESTID in ('+QuotedStr(xEstid1)+','+quotedstr(xEstid6)+','+quotedstr(xEstid4)+')';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(sSQL);
      DM1.cdsQry1.Open;

      xSQL := 'UPDATE CRE301 SET '+
               ' CRESDOACT =  CREMTOTAL - '+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ' ,CREMTOPAG = '+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ' ,CRECUOPAG='+IntToStr(xCount)+' ';
       xSql := xSql +  ' Where ASOID ='+QuotedStr(DM1.cdsHijo.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsHijo.FieldByName('CREDID').AsString);
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       xSQL := 'UPDATE CRE303 SET '+
               ' CRESDOACT =  CREMTOTAL - '+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ' ,CREMTOPAG = '+FloatToStr(DM1.cdsQry1.FieldByName('TOT').AsFloat)+
               ' ,CRECUOPAG='+IntToStr(xCount)+' ';
       xSql := xSql +  ' Where ASOID ='+QuotedStr(DM1.cdsHijo.FieldByName('ASOID').AsString)+
              ' AND CREDID='+QuotedStr(DM1.cdsHijo.FieldByName('CREDID').AsString);

       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     end;
     }
   Deshabilita;
   //bbtnImpri.enabled := True;
   bbtnImpri.onclick(bbtnImpri);
   //** ACTUALIZA CAJA STANDAR
   xCreano := copy(DateToStr(xFechasys),7,4);
   xCremes := Dm1.StrZero(copy(DateToStr(xFechasys),4,2),2);
   Actualiza;
   //**
   dbgCreditos.OnDblClick(dbgCreditos);
   edtMonto.text := '0.00';
   edtRecibido.text := '0.00';
   edtVuelto.text := '0.00';
   lblMtoAPagar.caption := '0.00';
  end
 else
  bbtnSigue.Enabled := False;
 finally
  rgForma.ItemIndex := 1;
  screen.cursor := crDefault;
 end;
end;


procedure TFCanCuotas.Correlativo;
begin
  //** cuando es primera vez, se pasa el nombre del campo del cual se sacara el correlativo
  xCorre := xCorreCampo;
  Repeat
    //** si esto se repitiera más de una vez, xCorre será igual al correlativo que se
    //** encontro más 1
    CorreCred(xcorre);
    //** verifica en la tabla auxiliar que el correlativo no este tomado por otro usuario
    BuscaCorre;
    //** esta busqueda se repitirá hasta que se encuentra un correlativo que no haya
    //** sido tomado
  until xPaso = True;
end;

procedure TFCanCuotas.CorreCred(pCorre: String);
var
  xCadena,xSql : String;
begin
  //** dependiendo del pCorre, lleno xCadena para el Sql
  if pCorre = 'CREDID' then
    xCadena := 'substr(CREDID,9,7)'
  else
    xCadena := pCorre;

    xSql := 'SELECT '+xCadena+' +1 NUMCRED FROM CRE206 '+
            'WHERE '+ xCorreWhere +
            xCorreCampo+' IN (SELECT X.'+xCorreCampo+' FROM CRE206 X, CRE206 Y '+
            'WHERE '+ xCorreWherex + xCorreWherey +')';
    Dm1.cdsQry.Close;
    Dm1.cdsQry.DataRequest(xSql);
    Dm1.cdsQry.Open;
    //** asigno el nuevo correlativo
   If Dm1.cdsQry.FieldByName('NUMCRED').AsInteger = 0 then
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger+1),xCeros)
   else
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger),xCeros);

end;


procedure TFCanCuotas.BuscaCorre;
var
  xSQL : String;
begin
  //** por defecto
  xPaso := True;
  //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
  //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
  //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
  //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
  xSQL := 'SELECT COUNT(NUMERO) TOTAL FROM '+xTabla+' WHERE NUMERO='+quotedstr(xCorre);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSQL);
  Dm1.cdsQry.Open;
  //** False = para que siga repitiendo la busqueda
  if Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 then
    xPaso := False
  else
  begin    //** sino graba en la tabla auxiliar (cre201)
    xSQL := 'INSERT INTO '+xTabla+' (NUMERO) VALUES (';
    if xCorreCampo = 'CREDID' then
      xSQL := xSQL + QuotedStr(xCorreCadena+xCorre)+')'
    else
      xSql := xSql + quotedstr(xCorre)+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    if StrtoInt(xCorre) = 1 then
    begin
      if xCorreCampo = 'CREDID' then
        xSQL := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,TIPO) VALUES ('+quotedstr(xCorreCadena+xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(xTipocorre)+')'
      else
        xSQL := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,TIPO) VALUES ('+quotedstr(xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(xTipocorre)+')';
    end
    else
    begin
      if xCorreCampo = 'CREDID' then
        xSQL := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorreCadena+xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+
                ' AND SUBSTR(CREDID,1,2)='+quotedstr(copy(xCorreCadena,1,2))+
                ' AND SUBSTR(CREDID,3,4)='+quotedstr(copy(xCorreCadena,3,4))+
                ' AND SUBSTR(CREDID,7,2)='+quotedstr(copy(xCorreCadena,7,2))+
                ' AND TIPO ='+quotedstr(xTipocorre)
      else
        xSQL := 'UPDATE CRE206 SET '+xCorreCampo+' ='+QuotedStr(xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+
                ' AND TIPO ='+quotedstr(xTipocorre);
    end;
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  end;
end;


procedure TFCanCuotas.dbeFOperacionExit(Sender: TObject);
begin
  DecodeDate(dbeFOperacion.Date,xAnos,xMesS,xDiaS);
end;

procedure TFCanCuotas.bbtnImpriClick(Sender: TObject);
var
 xSql : String;
begin
   xSql := 'SELECT CIADES,CIADIRE,CIARUC,AREADES FROM TGE101,CRE117'+
           ' WHERE CNTCONSOL = ''S'' AND MODULOID = ''COB''';
   dm1.cdsQry.close;
   dm1.cdsQry.datarequest(xSql);
   dm1.cdsQry.open;
   pprRecibo.Template.FileName := (wRutaRpt +'\CanCuotas.rtm');
   pprRecibo.Template.LoadFromFile ;
   lblDuplicado.visible := False;
   pplblcia.caption  := dm1.cdsQry.FieldByName('CIADES').AsString;
   pplblDire.caption := dm1.cdsQry.FieldByName('CIADIRE').AsString;
   pplblarea.caption := dm1.cdsQry.FieldByName('AREADES').AsString;
   pplblruc.caption  := dm1.cdsQry.FieldByName('CIARUC').AsString;
   pplblNrorecibo.caption := 'N°  '+dbeChqNum.Text;
   pplblmonto1.caption := dbeMoneda.text + Ceros(edtMonto.text);
   pplblmonto2.caption := dbeMoneda.text + Ceros(edtMonto.text);
   pplblnombre.caption := dbeAsoNom.text+'    ( Cod-Mod  '+dbeCodigoModular.text+'  )';
   pplblletras.caption := NumLetra(StrToCurr(edtMonto.text),1,1)+' Y 10/100'+' '+xmoneda;
   pplblconcepto.Caption := pplblconcepto.Caption + '  '+dm1.cdsHijo.FieldByName('CREDID').AsString;
   lblMemo.Lines.Add(mmObse.text);
   pprRecibo.Print;
   pprRecibo.Stop;
end;


//** 04/03/2003 - PJSV (Q3)
(**************************************)
(* Conversión Número -> Letra         *)
(*                                    *)
(* Parámetros:                        *)
(*                                    *)
(*   mNum:    Número a convertir      *)
(*   iIdioma: Idioma de conversión    *)
(*            1 -> Castellano         *)
(*            2 -> Catalán            *)
(*   iModo:   Modo de conversión      *)
(*            1 -> Masculino          *)
(*            2 -> Femenino           *)
(*                                    *)
(* Restricciones:                     *)
(*                                    *)
(* - Redondeo a dos decimales         *)
(* - Rango: 0,00 a 999.999.999.999,99 *)
(*                                    *)
(**************************************)

function NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
const
  iTopFil: Smallint = 6;
  iTopCol: Smallint = 10;
  aCastellano: array[0..5, 0..9] of PChar =
  ( ('UNA ','DOS ','TRES ','CUATRO ','CINCO ',
    'SEIS ','SIETE ','OCHO ','NUEVE ','UN '),
    ('ONCE ','DOCE ','TRECE ','CATORCE ','QUINCE ',
    'DIECISEIS ','DIECISIETE ','DIECIOCHO ','DIECINUEVE ',''),
    ('DIEZ ','VEINTE ','TREINTA ','CUARENTA ','CINCUENTA ',
    'SESENTA ','SETENTA ','OCHENTA ','NOVENTA ','VEINTI'),
    ('CIEN ','DOSCIENTAS ','TRESCIENTAS ','CUATROCIENTAS ','QUINIENTAS ',
    'SEISCIENTAS ','SETECIENTAS ','OCHOCIENTAS ','NOVECIENTAS ','CIENTO '),
    ('CIEN ','DOSCIENTOS ','TRESCIENTOS ','CUATROCIENTOS ','QUINIENTOS ',
    'SEISCIENTOS ','SETECIENTOS ','OCHOCIENTOS ','NOVECIENTOS ','CIENTO '),
    ('MIL ','MILLON ','MILLONES ','CERO ','Y ',
    'UNO ','DOS ','CON ','','') );
  aCatalan: array[0..5, 0..9] of PChar =
  ( ( 'UNA ','DUES ','TRES ','QUATRE ','CINC ',
    'SIS ','SET ','VUIT ','NOU ','UN '),
    ( 'ONZE ','DOTZE ','TRETZE ','CATORZE ','QUINZE ',
    'SETZE ','DISSET ','DIVUIT ','DINOU ',''),
    ( 'DEU ','VINT ','TRENTA ','QUARANTA ','CINQUANTA ',
    'SEIXANTA ','SETANTA ','VUITANTA ','NORANTA ','VINT-I-'),
    ( 'CENT ','DOS-CENTES ','TRES-CENTES ','QUATRE-CENTES ','CINC-CENTES ',
    'SIS-CENTES ','SET-CENTES ','VUIT-CENTES ','NOU-CENTES ','CENT '),
    ( 'CENT ','DOS-CENTS ','TRES-CENTS ','QUATRE-CENTS ','CINC-CENTS ',
    'SIS-CENTS ','SET-CENTS ','VUIT-CENTS ','NOU-CENTS ','CENT '),
    ( 'MIL ','MILIO ','MILIONS ','ZERO ','-',
    'UN ','DOS ','AMB ','','') );
var
  aTexto: array[0..5, 0..9] of PChar;
  cTexto, cNumero: String;
  iCentimos, iPos: Smallint;
  bHayCentimos, bHaySigni: Boolean;

  (*************************************)
  (* Cargar Textos según Idioma / Modo *)
  (*************************************)

procedure NumLetra_CarTxt;
var
 i, j: Smallint;
begin
  (* Asignación según Idioma *)

    for i := 0 to iTopFil - 1 do
      for j := 0 to iTopCol - 1 do
        case iIdioma of
          1: aTexto[i, j] := aCastellano[i, j];
          2: aTexto[i, j] := aCatalan[i, j];
        else
          aTexto[i, j] := aCastellano[i, j];
        end;

    (* Asignación si Modo Masculino *)

    if (iModo = 1) then
    begin
      for j := 0 to 1 do
        aTexto[0, j] := aTexto[5, j + 5];

      for j := 0 to 9 do
        aTexto[3, j] := aTexto[4, j];
    end; 
  end; 
 
  (****************************)
  (* Traducir Dígito -Unidad- *)
  (****************************)
 
  procedure NumLetra_Unidad;
  begin 
    if not( (cNumero[iPos] = '0') or (cNumero[iPos - 1] = '1')
     or ((Copy(cNumero, iPos - 2, 3) = '001') and ((iPos = 3) or (iPos = 9))) ) then 
      if (cNumero[iPos] = '1') and (iPos <= 6) then
        cTexto := cTexto + aTexto[0, 9]
      else 
        cTexto := cTexto + aTexto[0, StrToInt(cNumero[iPos]) - 1];
 
    if ((iPos = 3) or (iPos = 9)) and (Copy(cNumero, iPos - 2, 3) <> '000') then
      cTexto := cTexto + aTexto[5, 0];
 
    if (iPos = 6) then 
      if (Copy(cNumero, 1, 6) = '000001') then
        cTexto := cTexto + aTexto[5, 1]
      else 
        cTexto := cTexto + aTexto[5, 2];
  end; 
 
  (****************************)
  (* Traducir Dígito -Decena- *)
  (****************************)
 
  procedure NumLetra_Decena;
  begin 
    if (cNumero[iPos] = '0') then
      Exit
    else if (cNumero[iPos + 1] = '0') then
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
    else if (cNumero[iPos] = '1') then 
      cTexto := cTexto + aTexto[1, StrToInt(cNumero[iPos + 1]) - 1]
    else if (cNumero[iPos] = '2') then 
      cTexto := cTexto + aTexto[2, 9]
    else 
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
        + aTexto[5, 4];
  end; 
 
  (*****************************)
  (* Traducir Dígito -Centena- *)
  (*****************************)
 
  procedure NumLetra_Centena;
  var
    iPos2: Smallint;
  begin
    if (cNumero[iPos] = '0') then
      Exit;
 
    iPos2 := 4 - Ord(iPos > 6);
 
    if (cNumero[iPos] = '1') and (Copy(cNumero, iPos + 1, 2) <> '00') then 
      cTexto := cTexto + aTexto[iPos2, 9]
    else 
      cTexto := cTexto + aTexto[iPos2, StrToInt(cNumero[iPos]) - 1];
  end;
 
  (**************************************)
  (* Eliminar Blancos previos a guiones *)
  (**************************************)
 
procedure NumLetra_BorBla;
var
    i: Smallint;
  begin
    i := Pos(' -', cTexto);

    while (i > 0) do
    begin
      Delete(cTexto, i, 1);
      i := Pos(' -', cTexto);
    end;
  end;

begin
  (* Control de Argumentos *)

  if (mNum < 0.00) or (mNum > 999999999999.99) or (iIdioma < 1) or (iIdioma > 2)
    or (iModo < 1) or (iModo > 2) then 
  begin
    Result := 'ERROR EN ARGUMENTOS';
    Abort;
  end;
 
  (* Cargar Textos según Idioma / Modo *)
 
  NumLetra_CarTxt;
 
  (* Bucle Exterior -Tratamiento Céntimos-     *)
  (* NOTA: Se redondea a dos dígitos decimales *)
 
  cNumero := Trim(Format('%12.0f', [Int(mNum)]));
  cNumero := StringOfChar('0', 12 - Length(cNumero)) + cNumero;
  iCentimos := Trunc((Frac(mNum) * 100) + 0.5);

  repeat 
    (* Detectar existencia de Céntimos *)

    if (iCentimos <> 0) then 
      bHayCentimos := True
    else 
      bHayCentimos := False;
 
    (* Bucle Interior -Traducción- *)
 
    bHaySigni := False;

    for iPos := 1 to 12 do 
    begin 
      (* Control existencia Dígito significativo *)
 
      if not(bHaySigni) and (cNumero[iPos] = '0') then 
        Continue
      else 
        bHaySigni := True;

      (* Detectar Tipo de Dígito *)
 
      case ((iPos - 1) mod 3) of
        0: NumLetra_Centena;
        1: NumLetra_Decena;
        2: NumLetra_Unidad;
      end; 
    end; 

    (* Detectar caso 0 *)
 
    if (cTexto = '') then 
      cTexto := aTexto[5, 3];
 
    (* Traducir Céntimos -si procede- *)
 
    if (iCentimos <> 0) then 
    begin
      cTexto := cTexto + aTexto[5, 7];
      cNumero := Trim(Format('%.12d', [iCentimos]));
      iCentimos := 0;
    end; 
  until not (bHayCentimos);

  (* Eliminar Blancos innecesarios -sólo Catalán- *)

  if (iIdioma = 2) then
    NumLetra_BorBla;

  (* Retornar Resultado *)

  Result := Trim(cTexto);
end;


procedure TFCanCuotas.pprReciboPreviewFormCreate(Sender: TObject);
begin
  pprRecibo.PreviewForm.WindowState:=WsMaximized;
  TppViewer(pprRecibo.PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

procedure TFCanCuotas.rgFormaClick(Sender: TObject);
var
 xI : Integer;
begin
  rgProceso.Enabled := (rgForma.ItemIndex = 0) or (rgForma.ItemIndex = 1);
  lblForma.refresh;
  Z2bbtnBorrar.OnClick(Z2bbtnBorrar);
  dm1.cdsHijo.First;
  edtMonto.text := '0.00';
  edtVuelto.text := '0.00';
  lblMtoAPagar.Caption := '0.00';
  case rgForma.ItemIndex of
   0 : begin
        lblForma.Caption := 'CANCELACION AUTOMATICA';
        If xItem = '0' then
         begin
          dbgCronogVen.DataSource := nil;
          cargaSQLNormal;
          seteagrid;
          DM1.cdsHijo.First;
         end;
        xItem := '1';
       end;
   1 : begin
        lblForma.Caption := 'CANCELACION MANUAL';
        If xItem = '0' then
         begin
          dbgCronogVen.DataSource := nil;
          cargaSQLNormal;
          seteagrid;
          DM1.cdsHijo.First;
         end;
        xItem := '1';
       end;
   2 : begin
         DM1.cdsHijo.DisableControls;
         DM1.cdsHijo.First;
         xItem := '0';
         xI := 0;
         while not DM1.cdsHijo.eof do
          begin
           If DM1.cdsHijo.FieldByName('CREESTID').AsString = '02' then
            xI := xI + 1;
           DM1.cdsHijo.Next;
          end;
         DM1.cdsHijo.enableControls;
         If xI = DM1.cdsHijo.RecordCount then
          begin
             rgDevo.Enabled := (rgForma.ItemIndex = 2);
             lblForma.Caption := 'CANCELACION POR DEVOLUCION';
             dbgCronogVen.DataSource := nil;
             cargaSQLDevo;
             seteagrid;
             DM1.cdsHijo.DisableControls;
             DM1.cdsHijo.First;
             xItem := '0';
             xI := 0;
             while not DM1.cdsHijo.eof do
              begin
               DM1.cdsHijo.Edit;
               DM1.cdsHijo.FieldByName('SUMAR').AsString := 'S';
               DM1.cdsHijo.Next;
              end;
             DM1.cdsHijo.enableControls;
          end
         else
          begin
           Showmessage('El crédito no es apto para la devolución');
           rgForma.ItemIndex := 1;   
          end;
       end;
  end;
end;

procedure TFCanCuotas.CalculoAuto;
var
  xMonto : Double;
  xBook : TBookmark;
  xcompara : boolean;
  xI : Integer;
begin
  Z2bbtnBorrar.Onclick(Z2bbtnBorrar);
  xMonto:= StrtoFloat(edtMonto.Text);
  xMntDs:= xMonto;
  if xMonto > 0 then
   begin
    dm1.cdsHijo.First;
    while not dm1.cdsHijo.Eof do
     begin
      if DM1.cdsHijo.fieldbyname('CREESTID').AsString <> xEstid1 then
       begin
        DM1.cdsHijo.Edit;
        DM1.cdsHijo.FieldByname('FLAGVAR').AsString:='';
        DM1.cdsHijo.Post;
       end;
       dm1.cdsHijo.Next;
     end;
    //** no pagadas y en proceso de coranza y parciales vencidas
    dm1.cdsHijo.First;
    while not dm1.cdsHijo.Eof do
     begin
      DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
      DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := False;

      If rgProceso.Itemindex = 0 then
       xcompara := (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid7) or
                   (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid5) or
                  ((DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid4) and
                   (DM1.cdsHijo.fieldbyname('CREANO').AsFloat <= xAnos) and
                   (DM1.cdsHijo.fieldbyname('CREMES').Asfloat < xMess))
      else
       xcompara := (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid5) or
                  ((DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid4) and
                   (DM1.cdsHijo.fieldbyname('CREANO').AsFloat <= xAnos) and
                   (DM1.cdsHijo.fieldbyname('CREMES').Asfloat < xMess));
      if xcompara then
       begin
        if xMntDs > 0 then
         begin
          DM1.cdsHijo.Edit;
          DM1.cdsHijo.FieldByname('FLAGVAR').AsString:='S';
          If dblcFormaPago.text = '02' then
           begin
            If xMntDs >= DM1.cdsHijo.fieldbyname('SALDO').AsFloat then
             DM1.cdsHijo.fieldbyname('SALDO').AsFloat := 0.00
            else
             DM1.cdsHijo.fieldbyname('SALDO').AsFloat := DM1.cdsHijo.fieldbyname('Saldo').AsFloat - xMntDs;
           end
          else
           begin
            If xMntDs >= DM1.cdsHijo.fieldbyname('SALDO').AsFloat then
             DM1.cdsHijo.fieldbyname('SALDO').AsFloat := 0.00
            else
             DM1.cdsHijo.fieldbyname('CREMTOEXC').AsFloat := xMntDs;
           end;
          DM1.cdsHijo.Post;
          xMntDs := dm1.FRound(xMntDs,15,2) - dm1.FRound(DM1.cdsHijo.fieldbyname('CREMTO').AsFloat,15,2);
          dm1.FRound(xMntDs,15,2);
          For xI := 1 to 60 do
           begin
            If xMeses[xI,1] = '' then
             begin
              xMeses[xI,1] := dm1.cdsHijo.fieldByName('CREANO').AsString;
              xMeses[xI,2] := dm1.cdsHijo.fieldByName('CREMES').AsString;
              break;
             end;
           end;
         end;
        xBook := DM1.cdsHijo.GetBookmark;
       end;
      DM1.cdsHijo.FieldByName('SALDO').Readonly := True;
      DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := True;
      dm1.cdsHijo.Next;
     end;

//// esto ES PARA LOS PENDIENTES
  DM1.cdsHijo.IndexName := '';
  DM1.cdsHijo.IndexDefs.Clear;
  with DM1.cdsHijo.IndexDefs.AddIndexDef do
  begin
    Name   := 'HijoIdx';
    Fields := 'CRECUOTA;CREANO;CREMES';
    Options:= [ixDescending, ixCaseInsensitive];
  end;
  DM1.cdsHijo.IndexName := 'HijoIdx';

    dm1.cdsHijo.First;
    while not dm1.cdsHijo.Eof do
     begin
        if ((DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid4) and
             (DM1.cdsHijo.fieldbyname('CREANO').AsFloat >= xAnos) and
             (DM1.cdsHijo.fieldbyname('CREMES').AsFloat > xMess)) or
           (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid2) then
       begin
        if xMntDs > 0 then
         begin
          DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
          DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := False;
          DM1.cdsHijo.Edit;
          DM1.cdsHijo.FieldByname('FLAGVAR').AsString:='S';
          If dblcFormaPago.text = '02' then
           begin
            If xMntDs >= DM1.cdsHijo.fieldbyname('SALDO').AsFloat then
             DM1.cdsHijo.fieldbyname('SALDO').AsFloat := 0.00
            else
             DM1.cdsHijo.fieldbyname('SALDO').AsFloat := DM1.cdsHijo.fieldbyname('Saldo').AsFloat - xMntDs;
           end
          else
           begin
            If xMntDs >= DM1.cdsHijo.fieldbyname('SALDO').AsFloat then
             DM1.cdsHijo.fieldbyname('SALDO').AsFloat := 0.00
            else
             DM1.cdsHijo.fieldbyname('CREMTOEXC').AsFloat := xMntDs;
           end;
          DM1.cdsHijo.FieldByName('SALDO').Readonly := True;
          DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := True;
          DM1.cdsHijo.Post;
          xMntDs := dm1.FRound(xMntDs,15,2) - dm1.FRound(DM1.cdsHijo.fieldbyname('CREMTO').AsFloat,15,2);
          dm1.FRound(xMntDs,15,2);
            For xI := 1 to 60 do
             begin
              If xMeses[xI,1] = '' then
               begin
                xMeses[xI,1] := dm1.cdsHijo.fieldByName('CREANO').AsString;
                xMeses[xI,2] := dm1.cdsHijo.fieldByName('CREMES').AsString;
                break;
               end;
             end;
         end;
        xBook := DM1.cdsHijo.GetBookmark;
       end;
      dm1.cdsHijo.Next;
     end;
   end;

  If xMntDs > 0 then
   begin
    DM1.cdsHijo.GotoBookmark(xBook);
    DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := False;
    DM1.cdsHijo.Edit;
    DM1.cdsHijo.FieldByName('CREMTOEXC').AsFloat := xMntDs;
    DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := True;
    DM1.cdsHijo.FreeBookmark(xBook);
   end;
end;

procedure TFCanCuotas.CalculoManual;
var
  xMonto : Double;
  xBook : TBookmark;
  xcompara : boolean;
  xTotal,xI, xI2 : Integer;
begin
  xtotal := 0;
  xMntDs := Dm1.FRound(StrToFloat(edtMonto.text),15,2);
  dm1.cdsHijo.First;
  while not dm1.cdsHijo.Eof do
   begin
    if DM1.cdsHijo.fieldbyname('CREESTID').AsString <> xEstid1 then
     begin
      DM1.cdsHijo.Edit;
      DM1.cdsHijo.FieldByname('FLAGVAR').AsString:='';
      DM1.cdsHijo.Post;
     end;
     dm1.cdsHijo.Next;
   end;

   For xI2 := 1 to 60 do
   begin

      If xControl[xI2] <> '' then
      begin

        dm1.cdsHijo.First;
        while not dm1.cdsHijo.Eof do
         begin
//          If DM1.cdsHijo.FieldByName('SUMAR').AsString = 'S' then
          If (DM1.cdsHijo.FieldByName('SUMAR').AsString = 'S') and ( xControl[xI2]=DM1.cdsHijo.FieldByName('PORCOBRAR').AsString )then
           begin
            xTotal := xTotal + 1;
            DM1.cdsHijo.Edit;
            DM1.cdsHijo.FieldByname('FLAGVAR').AsString:='S';
            If dm1.FRound(xMntDs,15,2) >= dm1.FRound(DM1.cdsHijo.fieldbyname('SALDO').AsFloat,15,2) then
             begin
              xMntDs := dm1.FRound(xMntDs,15,2) - dm1.FRound(DM1.cdsHijo.fieldbyname('SALDO').AsFloat,15,2);
              dm1.FRound(xMntDs,15,2);
              DM1.cdsHijo.fieldbyname('SALDO').AsFloat := 0.00;
             end
            else
             begin
               if xEstid2=DM1.cdsHijo.fieldbyname('CREESTID').AsString then
               begin
                  DM1.cdsHijo.fieldbyname('SALDO').AsFloat:=DM1.cdsHijo.FieldByName('CREMTO').AsFloat+
                                                            DM1.cdsHijo.FieldByName('CREINTERES').AsFloat;
                  xMntDs := dm1.FRound(DM1.cdsHijo.fieldbyname('SALDO').AsFloat,15,2) - dm1.FRound(xMntDs,15,2);
                  dm1.FRound(xMntDs,15,2);
                  DM1.cdsHijo.fieldbyname('SALDO').AsFloat := xMntDs;
                  DM1.cdsHijo.FieldByName('FLAGINT').AsString:='S';
               end
               else
               begin
                  xMntDs := dm1.FRound(DM1.cdsHijo.fieldbyname('SALDO').AsFloat,15,2) - dm1.FRound(xMntDs,15,2);
                  dm1.FRound(xMntDs,15,2);
                  DM1.cdsHijo.fieldbyname('SALDO').AsFloat := xMntDs;
               end;
               xMntDs := 0;
             end;
            DM1.cdsHijo.Post;
            For xI := 1 to 60 do
             begin
              If xMeses[xI,1] = '' then
               begin
                xMeses[xI,1] := dm1.cdsHijo.fieldByName('CREANO').AsString;
                xMeses[xI,2] := dm1.cdsHijo.fieldByName('CREMES').AsString;
                break;
               end;
             end;
             Break;
           end;
          dm1.cdsHijo.Next;
         end;

      end;
   end;

  If xTotal <= 0 then
   Showmessage('No existen registros marcados para la cancelación manual');
end;

procedure TFCanCuotas.bbtnReporteClick(Sender: TObject);
var
 xSql : String;
begin
 If dm1.cdsReporte.RecordCount > 0 then
  begin
    pnlPagado.BringToFront;
    xSQL:='SELECT A.CREDOCPAG, A.CIAID, A.TMONID, A.CREANO, A.CREMES, A.CREMTOCOB, '
         +   'A.CRECUOTA, B.CREESTADO, A.NROOPE, B.CREMTO '
         +'FROM CRE310 A, CRE302 B '
         +'WHERE A.ASOID=' +QuotedStr(DM1.cdsPadre.FieldByName('ASOID').AsString)   +' '
         +  'AND A.CREDID='+QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString)+' '
         +  'AND A.CREESTID IN ( '+quotedstr(xEstid1)+', '+quotedstr(xEstid6)+', '   //** CANCELADO  //** CANCELADO A
         +                         quotedstr(xEstid3)+', '+quotedstr(xEstid4)+', '
         +                         quotedstr(xEstid8)+' ) '                          //** DEVOLUCION
         +  'AND A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.CREANO=B.CREANO(+) AND A.CREMES=B.CREMES(+)';
  {
SELECT A.CREDOCPAG, A.CIAID, A.TMONID, A.CREANO, A.CREMES, A.CREMTOCOB, A.CRECUOTA,
  B.CREESTADO, A.NROOPE, B.CREMTO
FROM CRE310 A, CRE302 B
WHERE A.ASOID='0000279389'  AND A.CREDID='142002170000095'
  AND (A.CREESTID='21' OR A.CREESTID='23'  OR A.CREESTID='18'  or A.CREESTID = '27' OR A.CREESTID='28')
  AND A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.CREANO=B.CREANO(+) AND A.CREMES=B.CREMES(+)
  }

    dbgCronogPag.Selected.Clear;
    dbgCronogPag.Selected.Add('CREANO'#9'4'#9'Año');
    dbgCronogPag.Selected.Add('CREMES'#9'2'#9'Mes');
    dbgCronogPag.Selected.Add('CRECUOTA'#9'4'#9'Cuota');
    dbgCronogPag.Selected.Add('NROOPE'#9'11'#9'Nro.~Operación');
    dbgCronogPag.Selected.Add('CREMTO'#9'10'#9'Monto~Total');
    dbgCronogPag.Selected.Add('CREMTOCOB'#9'09'#9'Monto~Cobrado');
    dbgCronogPag.Selected.Add('CREESTADO'#9'15'#9'Estado');

    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSQL);
    DM1.cdsQry5.Open;
    DM1.cdsQry5.IndexFieldNames:='CRECUOTA;CREANO;CREMES;NROOPE';
    dbgCronogPag.DataSource := DM1.dsQry5;
    dbgCronogPag.RefreshDisplay;

    DM1.cdsQry5.FieldByName('CREANO').Readonly := True;
    DM1.cdsQry5.FieldByName('CREMES').Readonly := True;
    DM1.cdsQry5.FieldByName('CRECUOTA').Readonly := True;
    DM1.cdsQry5.FieldByName('CREMTOCOB').Readonly := True;
    DM1.cdsQry5.FieldByName('CREESTADO').Readonly := True;

    TNumericField(DM1.cdsQry5.FieldByName('CREMTOCOB')).DisplayFormat:='###,###,##0.00';
    pnlPagado.Visible:=True;
  end
 else
  showmessage('No hay asociado seleccionado');
end;

procedure TFCanCuotas.bbtnPanelClick(Sender: TObject);
begin
    pnlPagado.visible := False;
    pnlPagado.SendToBack;
end;

procedure TFCanCuotas.bbtnImpriPagClick(Sender: TObject);
var
  xmone,xmoneda, sWhere : String;
begin
  xSQL:='SELECT ASOID, ASOCODMOD, CREDOCPAG, ASOAPENOM, CREDID, CREOBS, CREFPAG, TMONID, '+
        'SUM(CREMTOCOB) CREMTOCOB, CIADES, CIADIRE, AREADES, CIARUC,CREOBS '+
        'FROM CRE310 A, CRE117 B, TGE101 C '+
        'WHERE ASOID='+QuotedStr(DM1.cdsPadre.fieldByName('ASOID').AsString)+' '+
        'AND CREDOCPAG='+QuotedStr(DM1.cdsQry5.FieldByName('CREDOCPAG').AsString)+' '+
        'AND CNTCONSOL=''S'' '+
        'AND MODULOID=''COB'' '+
        'GROUP BY A.ASOID, A.ASOCODMOD, A.CREDOCPAG, A.ASOAPENOM, A.CREDID, CREOBS, CREFPAG, TMONID, CIADES, CIADIRE, AREADES, CIARUC';

  dm1.cdsAso.close;
  dm1.cdsAso.datarequest(xSQL);
  dm1.cdsAso.open;

  If dm1.cdsAso.RecordCount > 0 then
   begin
    sWhere:= 'TMONID='+ quotedstr(dm1.cdsAso.FieldByName('TMONID').AsString);
    dm1.DisplayDescrip('prvTGE','TGE103','TMONABR,TMONDES',sWhere,'TMONABR');
    xmoneda := dm1.cdsQry.fieldbyname('TMONABR').AsString;
    xmone := dm1.cdsQry.fieldbyname('TMONDES').AsString;

    pprRecibo.Template.FileName := (wRutaRpt +'\CanCuotas.rtm');
    pprRecibo.Template.LoadFromFile ;
    lblDuplicado.visible := True;
    pplblcia.caption  := dm1.cdsAso.FieldByName('CIADES').AsString;
    pplblDire.caption := dm1.cdsAso.FieldByName('CIADIRE').AsString;
    pplblarea.caption := dm1.cdsAso.FieldByName('AREADES').AsString;
    pplblruc.caption  := dm1.cdsAso.FieldByName('CIARUC').AsString;

    pplblNrorecibo.caption := 'N°  '+dm1.cdsAso.FieldByName('CREDOCPAG').AsString;
    pplblmonto1.caption := xmoneda + dm1.cdsAso.FieldByName('CREMTOCOB').AsString;
    pplblmonto2.caption := xmoneda + dm1.cdsAso.FieldByName('CREMTOCOB').AsString;
    pplblnombre.caption := dm1.cdsAso.FieldByName('ASOAPENOM').AsString+'    ( Cod-Mod  '+dm1.cdsAso.FieldByName('ASOCODMOD').AsString+' )';
    pplblletras.caption := NumLetra(StrToCurr(dm1.cdsAso.FieldByName('CREMTOCOB').AsString),1,1)+' Y 10/100'+' '+xmoneda;
    pplblconcepto.Caption:= pplblconcepto.Caption + '  '+dm1.cdsAso.FieldByName('CREDID').AsString+')';
    lblDuplicado.Visible:=True;
    lblMemo.Lines.Add(dm1.cdsAso.FieldByName('CREOBS').AsString);
    //ppSystemVariable1.Visible:=False;
    pprRecibo.Print;
    pprRecibo.Stop;
  end
 else
  showmessage('No hay recibo para reimprimir');
end;

procedure TFCanCuotas.rgProcesoClick(Sender: TObject);
begin
  Z2bbtnBorrar.OnClick(Z2bbtnBorrar);
  dm1.cdsHijo.First;
  edtMonto.text := '0.00';
  edtVuelto.text := '0.00';
  lblMtoAPagar.Caption := '0.00';
end;

function TFCanCuotas.Ceros(pCantidad: String): String;
var
 xPosi,xI : Integer;
 xSubs : String;
begin
   xPosi := pos('.',pCantidad);
   If xPosi > 0 then
    begin
     xSubs := copy(pCantidad,xPosi+1,2);
     If (copy(xSubs,1,1) = '0') and (copy(xSubs,2,1) = '0') then
      xsubs := '.00'
     else
      If (copy(xSubs,1,1) = '0') and (copy(xSubs,2,1) <> '0') then
       xsubs := '.0'+copy(xSubs,2,1)
      else
       If (copy(xSubs,1,1) <> '0') and (copy(xSubs,2,1) = '0') then
        xsubs := '.'+copy(xSubs,1,1)+'0'
       else
        If (copy(xSubs,1,1) <> '0') and (copy(xSubs,2,1) <> '0') then
         xsubs := pCantidad;
      result := pCantidad;
    end
   else
    Result := pCantidad+'.00';
end;

procedure TFCanCuotas.addMeses;
var
 xI : Integer;
 xCadena,xMesNom : String;
begin
 For xI := 1 to 60 do
  xaddMeses[xI] := '';

 For xI := 1 to 60 do
  begin
   If xMeses[xI,1] <> '' then
    begin
     case StrToInt(xMeses[xI,2]) of
      1 : xMesNom := 'ENE';
      2 : xMesNom := 'FEB';
      3 : xMesNom := 'MAR';
      4 : xMesNom := 'ABR';
      5 : xMesNom := 'MAY';
      6 : xMesNom := 'JUN';
      7 : xMesNom := 'JUL';
      8 : xMesNom := 'AGO';
      9 : xMesNom := 'SET';
      10: xMesNom := 'OCT';
      11: xMesNom := 'NOV';
      12: xMesNom := 'DIC';
     end;
     xaddMeses[xI] := xMeses[xI,1]+ '-'+xMesNom;
    end;
  end;

 mmObse.text := Trim(mmObse.text) + '. Cancelación por los meses de : ';
 xCadena := '';
 For xI := 1 to 60 do
  begin
   If xaddMeses[xI] <> '' then
    If xCadena = '' then
     xCadena := xCadena + xaddMeses[xI]
    else
     xCadena := xCadena +','+ xaddMeses[xI];
  end;
  mmObse.text:= mmObse.text +xCadena;
end;

procedure TFCanCuotas.edtMontoExit(Sender: TObject);
begin
  edtMonto.text := Ceros(edtMonto.text);
  Z2bbtnSumatoria.SetFocus;
  If Length(edtRecibido.Text) > 0 then
   If StrToFloat(edtMonto.text) <= StrToFloat(edtRecibido.Text) then
    Vuelto;
end;

procedure TFCanCuotas.edtMontoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key In [' ', 'A'..'Z', 'a'..'z',
             '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
             '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
             ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
             '-', '_'] Then
    Key := #0;
end;

procedure TFCanCuotas.edtRecibidoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key In [' ', 'A'..'Z', 'a'..'z',
             '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
             '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
             ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
             '-', '_'] Then
    Key := #0;
end;

procedure TFCanCuotas.Vuelto;
begin
  xVuelto := StrToFloat(edtRecibido.text) - StrToFloat(edtMonto.Text);
  edtVuelto.text := FloatToStrF(xVuelto,ffFixed,15,2);
  edtVuelto.text := Ceros(edtVuelto.text);
end;

procedure TFCanCuotas.edtRecibidoExit(Sender: TObject);
begin
  edtRecibido.text := Ceros(edtRecibido.text);
  If Length(edtMonto.Text) > 0 then
   If StrToFloat(edtMonto.text) <= StrToFloat(edtRecibido.Text) then
    Vuelto;
end;

procedure TFCanCuotas.bbtnHistorialClick(Sender: TObject);
var
 xSql : String;
begin
  try
   If dm1.cdsReporte.RecordCount > 0 then
    begin
     Screen.Cursor := crHourglass;
     xSql := 'SELECT * FROM CRE301 WHERE ASOID='+quotedstr(xAsoid)+
             ' AND CREDID in ('+quotedstr(DM1.cdsReporte.FieldByName('CREDID').Asstring)+')';
     dm1.cdsQry3.close;
     dm1.cdsQry3.datarequest(xSql);
     dm1.cdsQry3.open;
     dm1.cdsQry3.IndexFieldNames := 'CREDID';

     ActivaData(quotedstr(Dm1.cdsQry3.FieldByName('CREDID').AsString));
     rptHistorial.Template.FileName := wRutaRpt+'\HistorialUno.RTM';
     rptHistorial.template.LoadFromFile ;
     rptHistorial.Print;
    end
   else
    showmessage('No hay asociado seleccionado');
  Finally
   dm1.cdsQry3.IndexFieldNames := '';
   Screen.Cursor := crDefault;
  end;
end;

procedure TFCanCuotas.ActivaData(pCredito: STring);
var
 xSql : String;
begin
       xSql := 'SELECT CRE302.CREDID,CRE302.CREANO,CRE302.CREMES,CRE302.CRECUOTA,CRE302.CREMTO,CRE302.CREMTOCOB,'+
            ' nvl(CRE302.CRECAPITAL,0.00) CRECAPITAL,nvl(CRE302.CREMTOINT,0.00) CREMTOINT,nvl(CRE302.CREMTOFLAT,0.00) CREMTOFLAT,'+
            ' CRE302.CRESALDO,CRE302.CREMTOEXC,to_char(CRE302.FOPERAC,''DD/MM/YYYY'') FOPERAC,CRE302.CREESTADO,CRE302.TMONABR,'+
            ' CRE113.FLGSALDO,CRE113.FLGSUMA ,'+
            ' A.CREVENCIDAS,B.CREPENDT,C.MES,(nvl(A.CREVENCIDAS,0.00)+nvl(B.CREPENDT,0.00)) MTOAPAGAR'+
            ' ,(nvl(A.CREVENCIDAS,0.00)+nvl(D.CREPENDT1,0.00)) MTOAPAGARS ,nvl(D.CREPENDT1,0.00) CREPENDT1'+
            ' FROM CRE302,CRE113 ,'+
            ' (SELECT NVL(SUM(A.CREMTO),0) CREVENCIDAS ,'+
            ' NVL(MAX(A.ASOID),'+quotedstr(xAsoid)+') ASOID ,NVL(MAX(A.CREDID),'+pCredito+') CREDID'+
            ' FROM CRE302 A'+
            ' WHERE A.ASOID='+quotedstr(xAsoid)+' AND A.CREDID in ('+pCredito+') AND'+
            ' (A.CREESTID = '+quotedstr(xEstid5)+' OR (A.CREESTID = '+quotedstr(xEstid4)+
            ' AND A.CREANO <= '+quotedstr(FloatToStr(xAnoSys))+' AND'+
            ' A.CREMES < '+quotedstr(FloatToStr(xMesSys))+'))) A,'+
            ' (SELECT SUM(B.CREMTO) CREPENDT ,'+
            ' NVL(MAX(B.ASOID),'+quotedstr(xAsoid)+') ASOID ,NVL(MAX(B.CREDID),'+pCredito+') CREDID'+
            ' FROM CRE302 B'+
            ' WHERE B.ASOID='+quotedstr(xAsoid)+' AND B.CREDID in ('+pCredito+') AND'+
            ' (B.CREESTID = '+quotedstr(xEstid2)+')) B,'+
            ' (SELECT'+
            ' NVL(C.ASOID,'+quotedstr(xAsoid)+') ASOID ,NVL(C.CREDID,'+pCredito+') CREDID,'+
            ' CASE WHEN C.CREMES = ''01'''+
            ' THEN ''NO INCLUYE CUOTA DE ENERO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''02'''+
            ' THEN ''NO INCLUYE CUOTA DE FEBRERO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''03'''+
            ' THEN ''NO INCLUYE CUOTA DE MARZO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''04'''+
            ' THEN ''NO INCLUYE CUOTA DE ABRIL POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''05'''+
            ' THEN ''NO INCLUYE CUOTA DE MAYO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''06'''+
            ' THEN ''NO INCLUYE CUOTA DE JUNIO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''07'''+
            ' THEN ''NO INCLUYE CUOTA DE JULIO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''08'''+
            ' THEN ''NO INCLUYE CUOTA DE AGOSTO POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''09'''+
            ' THEN ''NO INCLUYE CUOTA DE SETIEMBRE POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''10'''+
            ' THEN ''NO INCLUYE CUOTA DE OCTUBRE POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''11'''+
            ' THEN ''NO INCLUYE CUOTA DE NOVIEMBRE POR ESTAR EN PROCESO DE COBRANZA'' ELSE'+
            ' CASE WHEN C.CREMES = ''12'''+
            ' THEN ''NO INCLUYE CUOTA DE DICIEMBRE POR ESTAR EN PROCESO DE COBRANZA'''+
            ' END END'+
            ' END END END END END END END END END END MES FROM CRE302 C,'+
            ' (SELECT   max(Y.CREANO||Y.CREMES) ANOMES'+
            ' FROM CRE302 Y WHERE Y.ASOID='+quotedstr(xAsoid)+
            ' AND Y.CREDID in ('+pCredito+') AND'+
            ' (Y.CREESTID = '+quotedstr(xEstid7)+')) Y'+
            ' WHERE C.ASOID='+quotedstr(xAsoid)+' AND C.CREDID in ('+pCredito+') AND'+
            ' (C.CREESTID = '+quotedstr(xEstid7)+') AND C.CREANO||C.CREMES = Y.ANOMES ) C,'+
            '(SELECT SUM(D.CREAMORT+D.CREFLAT) CREPENDT1 , NVL(MAX(D.ASOID),'+quotedstr(xAsoid)+') ASOID ,'+
            ' NVL(MAX(D.CREDID),'+pCredito+') CREDID FROM CRE302 D'+
            ' WHERE D.ASOID='+quotedstr(xAsoid)+
            ' AND D.CREDID in ('+pCredito+') AND (D.CREESTID = '+quotedstr(xEstid2)+')) D'+
            ' WHERE CRE302.ASOID='+quotedstr(xAsoid)+' AND CRE302.CREDID in ('+pCredito+') AND'+
            ' CREESTID=ESTID(+) AND'+
            ' CRE302.ASOID = A.ASOID(+) AND CRE302.CREDID = A.CREDID(+) AND'+
            ' CRE302.ASOID = B.ASOID(+) AND CRE302.CREDID = B.CREDID(+) AND'+
            ' CRE302.ASOID = C.ASOID(+) AND CRE302.CREDID = C.CREDID(+) AND'+
            ' CRE302.ASOID = D.ASOID(+) AND CRE302.CREDID = D.CREDID(+)'+
            ' ORDER BY CRE302.credid,CRE302.CREANO,CRE302.CREMES';

       dm1.cdsQry4.IndexFieldNames := '';
       dm1.cdsQry4.close;
       dm1.cdsQry4.datarequest(xSql);
       dm1.cdsQry4.open;
       dm1.cdsQry4.IndexFieldNames := 'CREDID;CRECUOTA';

       //** esto es para usar el drill del subreporte
       dbpData1.DataSource := Dm1.dsReporte;
       dbpData2.DataSource := Dm1.dsQry3;
       dbpData3.DataSource := Dm1.dsQry4;

       Dm1.cdsQry3.MasterSource := Dm1.dsReporte;
       Dm1.cdsQry4.MasterFields := 'CREDID';

       Dm1.cdsQry4.MasterSource := Dm1.dsConsulta;
       Dm1.cdsQry4.MasterFields := 'CREDID';
end;


procedure TFCanCuotas.Actualiza;
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
          xCampo := xCampo + quotedstr(DM1.cdsPadre.FieldByName('ASOID').AsString)+',';
          //** PROVRUC
          xCampo := xCampo + quotedstr(DM1.cdsPadre.FieldByName('ASODNI').AsString)+',';
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
          xCampo := xCampo +  quotedStr(xCorre)+', ';
          xNodoc := xCorre;
          //** TMONID
          xCampo := xCampo +  quotedStr(xTmonid)+', ';
          //** ECTCAMB
          xFecha := DateToStr(xFechasys);
          Dm1.RecUltTipoCambio(xFecha);
          xECTCAMB := dm1.cdsQry.FieldByName(dm1.wTCCompra).AsFloat;
          xCampo := xCampo + FLoatToStr(xECTCAMB) +', ';

          //** ECMTOORI
          xCampo := xCampo +  edtMonto.Text+', ';
          cPgoOri := StrToFloat(edtMonto.Text);
          //** ECMTOLOC
          xCampo := xCampo + edtMonto.Text +',';
          cPgoLoc := StrToFloat(edtMonto.Text);
          //** ECMTOEXT
          If xECTCAMB > 0 then
           begin
            xCampo := xCampo +  FloattoStr(DM1.FRound(StrToFloat(edtMonto.Text)/xECTCAMB ,15,4))+',';
            cPgoExt := DM1.FRound(StrToFloat(edtMonto.Text)/xECTCAMB ,15,4);
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
          xCampo := xCampo +  quotedStr('I')+', ';
          //** CAJARETIGV
          xCampo := xCampo +  quotedStr('N')+', ';
          //** AUXID
          xCampo := xCampo + quotedstr(DM1.cdsPadre.FieldByName('ASOID').AsString)+',';
          //** CCBCOVOUCH
          xCampo := xCampo + quotedstr(xVouch)+',';
          //** EC_PROCE
          xCampo := xCampo + quotedstr('Y');
          xSql := 'INSERT INTO CAJA321 ('+xCaja302+') VALUES ('+xCampo+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          //** Actualiza Caja322
          ActuCaja301;    // DEBE DECIR CAJA322
          //** Actualiza Saldo TGE401
          //ActualizaSaldosTGE401(cPgoOri,cPgoLoc,cPgoExt, '-');
          //** Actualiza Saldo CAJA310
          //SaldosCaja310;
          //** Actuliza la provision de los créditos por el rango (CRE314) = CNT301
         // ActuCre314;
end;

procedure TFCanCuotas.ActuCaja301;
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
       xCampo := xCampo + quotedstr(DM1.cdsPadre.FieldByName('ASOID').AsString)+',';;
       xCampo := xCampo + quotedstr(DM1.cdsPadre.FieldByName('ASODNI').AsString)+',';
       end
      else
       begin
        xCampo := xCampo + quotedstr('')+',';
        xCampo := xCampo + quotedstr('')+',';
        xCampo := xCampo + quotedstr(xAuxRuc)+',';
       end;
      xCampo := xCampo + quotedstr(xTmonid)+',';
      xCampo := xCampo + edtMonto.text +',';
      xCampo := xCampo + quotedstr(xNodoc)+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(xEcanomm)+',';
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      xCampo := xCampo + quotedstr('H')+',';
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      xCampo := xCampo + quotedstr('000')+',';
       xWhere:='TMONID='+quotedstr(xTmonid);
       aux:=DM1.DisplayDescrip('prvSQL','TGE103','TMONDES',xWhere,'TMONDES');
       if (length(aux)>0) and (StrToFloat(edtMonto.text) > 0 ) then
        begin
         if xTmonid = DM1.wTMonLoc then
          begin
           xCampo := xCampo + edtMonto.text+',';
           If xECTCAMB > 0 then
            xCampo := xCampo + FloatToStr(StrToFloat(edtMonto.text)/xECTCAMB)+','
           else
            xCampo := xCampo + '0,';
          end
         else
          begin
           If xECTCAMB > 0 then
            xCampo := xCampo + FloatToStr(StrToFloat(edtMonto.text)*xECTCAMB)+','
           else
            xCampo := xCampo + '0,';
           xCampo := xCampo + edtMonto.text+',';
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

procedure TFCanCuotas.dblcBancoExit(Sender: TObject);
var
 xWhere : String;
begin
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

   If rgForma.ItemIndex <> 2 then
    xSql := 'select cptoid,cuentaid from caja201 where CPTOEQUI ='+quotedstr('COBCUOEFE')
   else
    xSql := 'select cptoid,cuentaid from caja201 where CPTOEQUI ='+quotedstr('DEVCREEFE');
   dm1.cdsqry.close;
   dm1.cdsqry.datarequest(xSql);
   dm1.cdsqry.open;
   xCptoid := dm1.cdsqry.FieldByName('CPTOID').AsString; //DM1.cdsCBcos.FieldByName('CPTOID').AsString;
   xCuentaid := dm1.cdsqry.FieldByName('CUENTAID').AsString; //DM1.cdsCBcos.FieldByName('CTAPRINC').AsString;
end;

procedure TFCanCuotas.CalculoDevo;
var
  xMonto : Double;
  xBook : TBookmark;
  xcompara : boolean;
  xI : Integer;
begin
  Z2bbtnBorrar.Onclick(Z2bbtnBorrar);
  xMonto:= StrtoFloat(edtMonto.Text);
  xMntDs:= xMonto;
  if xMonto > 0 then
   begin
    dm1.cdsHijo.First;
    while not dm1.cdsHijo.Eof do
     begin
      if DM1.cdsHijo.fieldbyname('CREESTID').AsString <> xEstid1 then
       begin
        DM1.cdsHijo.Edit;
        DM1.cdsHijo.FieldByname('FLAGVAR').AsString:='';
        DM1.cdsHijo.Post;
       end;
       dm1.cdsHijo.Next;
     end;
//// esto ES PARA LOS PENDIENTES
  DM1.cdsHijo.IndexName := '';
  DM1.cdsHijo.IndexDefs.Clear;
  with DM1.cdsHijo.IndexDefs.AddIndexDef do
  begin
    Name   := 'HijoIdx';
    Fields := 'CRECUOTA;CREANO;CREMES';
    Options:= [ixDescending, ixCaseInsensitive];
  end;
  DM1.cdsHijo.IndexName := 'HijoIdx';

    dm1.cdsHijo.First;
    while not dm1.cdsHijo.Eof do
     begin
        if ((DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid4) and
             (DM1.cdsHijo.fieldbyname('CREANO').AsFloat >= xAnos) and
             (DM1.cdsHijo.fieldbyname('CREMES').AsFloat > xMess)) or
           (DM1.cdsHijo.fieldbyname('CREESTID').AsString = xEstid2) then
       begin
        if xMntDs > 0 then
         begin
          DM1.cdsHijo.FieldByName('SALDO').Readonly := False;
          DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := False;
          DM1.cdsHijo.Edit;
          DM1.cdsHijo.FieldByname('FLAGVAR').AsString:='S';
          If dblcFormaPago.text = '02' then
           begin
            If xMntDs >= DM1.cdsHijo.fieldbyname('SALDO').AsFloat then
             DM1.cdsHijo.fieldbyname('SALDO').AsFloat := 0.00
            else
             DM1.cdsHijo.fieldbyname('SALDO').AsFloat := DM1.cdsHijo.fieldbyname('Saldo').AsFloat - xMntDs;
           end
          else
           begin
            If xMntDs >= DM1.cdsHijo.fieldbyname('SALDO').AsFloat then
             DM1.cdsHijo.fieldbyname('SALDO').AsFloat := 0.00
            else
             DM1.cdsHijo.fieldbyname('CREMTOEXC').AsFloat := xMntDs;
           end;
          DM1.cdsHijo.FieldByName('SALDO').Readonly := True;
          DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := True;
          DM1.cdsHijo.Post;
          xMntDs := Dm1.Fround(xMntDs,15,2) - Dm1.Fround(DM1.cdsHijo.fieldbyname('CREMTO').AsFloat,15,2);
          dm1.FRound(xMntDs,15,2);
          {If rgForma.ItemIndex <> 2 then
           xMntDs := xMntDs - DM1.cdsHijo.fieldbyname('CREMTO').AsFloat
          else
           begin
            If rgDevo.ItemIndex = 0 then
            else
           end;
          }
            For xI := 1 to 60 do
             begin
              If xMeses[xI,1] = '' then
               begin
                xMeses[xI,1] := dm1.cdsHijo.fieldByName('CREANO').AsString;
                xMeses[xI,2] := dm1.cdsHijo.fieldByName('CREMES').AsString;
                break;
               end;
             end;
         end;
        xBook := DM1.cdsHijo.GetBookmark;
       end;
      dm1.cdsHijo.Next;
     end;
   end;

  If xMntDs > 0 then
   begin
    DM1.cdsHijo.GotoBookmark(xBook);
    DM1.cdsHijo.Edit;
    DM1.cdsHijo.FieldByName('CREMTOEXC').AsFloat := xMntDs;
    DM1.cdsHijo.FreeBookmark(xBook);
   end;
end;

procedure TFCanCuotas.cargaSQLDevo;
var
 xSql : String;
begin
  xSQL:='SELECT FORPAGOID,FORPAGOABR,CREINTERES,CIAID,TMONID,CASE WHEN CREESTID = '+quotedstr(xEstid7)+ ' THEN ''T'' ELSE'+
        ' CASE WHEN CREESTID='+quotedstr(xEstid5)+' THEN ''T'' ELSE '+
        ' CASE WHEN CREESTID='+quotedstr(xEstid2)+' THEN ''P'' ELSE '+
        ' CASE WHEN CREESTID='+quotedstr(xEstid4)+
        ' THEN CASE WHEN (CREANO <= '+quotedstr(IntToStr(xAnoSys))+
        ' AND CREMES <='+quotedStr(Dm1.StrZero(IntToStr(xMesSys),2))+') THEN ''T'' ELSE ''P'' END'+
        ' END END END END FLGSUMA,'' '' SUMAR,'+
        ' CREMTOEXC,FLAGVAR,TIPCREABR,'+
        ' CASE WHEN CREESTID='+quotedstr(xEstid2);
  If rgDevo.ItemIndex = 0 then
   xSql := xSql +' then  ((CREAMORT+CREFLAT) - (nvl(CRECAPITAL,0)+nvl(CREMTOFLAT,0))) end CREMTO'
  else
   xSql := xSql +' then  (CREAMORT - nvl(CRECAPITAL,0)) end CREMTO';

  xSql := xSql +',ASOID,CREDID,CRECUOTA,CREAMORT,CREFLAT,CREINTERES,nvl(CRECAPITAL,0) CRECAPITAL,'+
            'nvl(CREMTOINT,0) CREMTOINT,nvl(CREMTOFLAT,0) CREMTOFLAT,CREANO,CREMES,CREESTID,CREESTADO,TIPCREID, '+
            ' CASE WHEN CREESTID='+quotedstr(xEstid2);
  If rgDevo.ItemIndex = 0 then
   xSql := xSql +' then  ((CREAMORT+CREFLAT) - (nvl(CRECAPITAL,0)+nvl(CREMTOFLAT,0))) end SALDO'
  else
   xSql := xSql +' then  (CREAMORT - nvl(CRECAPITAL,0)) end SALDO';

  xSql := xSql +' ,CASE WHEN CREESTID='+quotedstr(xEstid2)+
            ' then ''1'''+
            ' end TIPO, ''  '' PORCOBRAR'+
            ' FROM CRE302 '+
            ' WHERE ASOID='+QuotedStr(DM1.cdsPadre.FieldByName('ASOID').AsString)+' '+
            ' AND CREDID='+QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString)+' '+
            ' AND (CREESTID='+quotedstr(xEstid5)+' OR CREESTID='+quotedstr(xEstid4)+
            ' OR CREESTID='+quotedstr(xEstid7)+' OR CREESTID = '+quotedstr(xEstid2)+')';
  DM1.cdsHijo.Close;
  DM1.cdsHijo.DataRequest(xSql);
  DM1.cdsHijo.Open;
end;

procedure TFCanCuotas.cargaSQLNormal;
var
 xSql : String;
begin
   xSQL:='SELECT FORPAGOID, FORPAGOABR, CREINTERES, CIAID, TMONID, '+
           'CASE WHEN CREESTID = '+quotedstr(xEstid7)+ ' THEN ''T'' ELSE'+
            ' CASE WHEN CREESTID='+quotedstr(xEstid5)+' THEN ''T'' ELSE '+
            ' CASE WHEN CREESTID='+quotedstr(xEstid2)+' THEN ''P'' ELSE '+
            ' CASE WHEN CREESTID='+quotedstr(xEstid4)+
            ' THEN CASE WHEN (CREANO <= '+quotedstr(IntToStr(xAnoSys))+
            ' AND CREMES <='+quotedStr(Dm1.StrZero(IntToStr(xMesSys),2))+') THEN ''T'' ELSE ''P'' END'+
            ' END END END END FLGSUMA,'' '' SUMAR,'+
            ' CREMTOEXC,FLAGVAR,TIPCREABR,'+
            ' CASE WHEN (CREESTID = '+quotedstr(xEstid7)+') or (CREESTID='+quotedstr(xEstid5)+')'+
            ' then ((CREAMORT+CREFLAT+CREINTERES) - (nvl(CRECAPITAL,0)+nvl(CREMTOINT,0)+nvl(CREMTOFLAT,0)))'+
            ' else'+
            ' CASE WHEN (CREESTID='+quotedstr(xEstid4)+
            ') and ( CREANO||CREMES<='  +quotedstr( IntToStr(xAnoSys)+Dm1.StrZero(IntToStr(xMesSys),2) ) +
            ')'+
            ' then ((CREAMORT+CREFLAT+CREINTERES) - (nvl(CRECAPITAL,0)+nvl(CREMTOINT,0)+nvl(CREMTOFLAT,0)))'+
            ' else'+
            ' CASE WHEN (CREESTID='+quotedstr(xEstid4)+
            // VHN
            ') and ( CREANO||CREMES>'+quotedstr( IntToStr(xAnoSys)+Dm1.StrZero(IntToStr(xMesSys),2) ) +' )'+
            ' THEN  NVL(CRESALDO,0) - CREINTERES '+
            //' THEN  NVL(CRESALDO,0) - CASE WHEN NVL(FLGINT,''N'')=''S'' THEN 0 ELSE CREINTERES END'+
            ' else'+
            ' CASE WHEN CREESTID='+quotedstr(xEstid2)+
            ' then  ((CREAMORT+CREFLAT) - (nvl(CRECAPITAL,0)+nvl(CREMTOFLAT,0)))'+
            ' else  CRESALDO '+
            ' end end end end CREMTO'+
            //
            ',ASOID,CREDID,CRECUOTA,CREAMORT,CREFLAT,CREINTERES,nvl(CRECAPITAL,0.00) CRECAPITAL,'+
            'nvl(CREMTOINT,0.00) CREMTOINT,nvl(CREMTOFLAT,0.00) CREMTOFLAT,CREANO,CREMES,CREESTID,CREESTADO,TIPCREID, '+
            ' CASE WHEN (CREESTID = '+quotedstr(xEstid7)+') or (CREESTID='+quotedstr(xEstid5)+')'+
            ' then ((CREAMORT+CREFLAT+CREINTERES) - (nvl(CRECAPITAL,0)+nvl(CREMTOINT,0)+nvl(CREMTOFLAT,0)))'+
            ' else'+
            ' CASE WHEN (CREESTID='+quotedstr(xEstid4)+
            ') and (CREANO <= '+quotedstr(IntToStr(xAnoSys))+
            ' AND CREMES <='+quotedStr(Dm1.StrZero(IntToStr(xMesSys),2))+')'+
            ' then ((CREAMORT+CREFLAT+CREINTERES) - (nvl(CRECAPITAL,0)+nvl(CREMTOINT,0)+nvl(CREMTOFLAT,0)))'+
            ' else'+
            ' CASE WHEN (CREESTID='+quotedstr(xEstid4)+
            ') and (CREANO >= '+quotedstr(IntToStr(xAnoSys))+
            ' AND CREMES >='+quotedStr(Dm1.StrZero(IntToStr(xMesSys),2))+')'+
            ' then ((CREAMORT+CREFLAT) - (nvl(CRECAPITAL,0)+nvl(CREMTOFLAT,0)))'+
            ' else'+
            ' CASE WHEN CREESTID='+quotedstr(xEstid2)+
            ' then  ((CREAMORT+CREFLAT) - (nvl(CRECAPITAL,0)+nvl(CREMTOFLAT,0)))'+
            ' end end end end SALDO,'+
            ' CASE WHEN (CREESTID = '+quotedstr(xEstid7)+') or (CREESTID='+quotedstr(xEstid5)+')'+
            ' then ''0'''+
            ' else'+
            ' CASE WHEN (CREESTID='+quotedstr(xEstid4)+
            ') and (CREANO <= '+quotedstr(IntToStr(xAnoSys))+
            ' AND CREMES <='+quotedStr(Dm1.StrZero(IntToStr(xMesSys),2))+')'+
            ' then ''0'''+
            ' else'+
            ' CASE WHEN (CREESTID='+quotedstr(xEstid4)+
            ') and (CREANO >= '+quotedstr(IntToStr(xAnoSys))+
            ' AND CREMES >='+quotedStr(Dm1.StrZero(IntToStr(xMesSys),2))+')'+
            ' then ''1'''+
            ' else'+
            ' CASE WHEN CREESTID='+quotedstr(xEstid2)+
            ' then ''1'''+
            ' end end end end TIPO, ''  '' PORCOBRAR'+
            // vhn
            ' , ''N'' FLAGINT, CREMTOCOB, FLGINT'+
            ' FROM CRE302 '+
            ' WHERE ASOID='+QuotedStr(DM1.cdsPadre.FieldByName('ASOID').AsString)+' '+
            ' AND CREDID='+QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString)+' '+
            ' AND (CREESTID='+quotedstr(xEstid5)+' OR CREESTID='+quotedstr(xEstid4)+
            ' OR CREESTID='+quotedstr(xEstid7)+' OR CREESTID = '+quotedstr(xEstid2)+')';
  DM1.cdsHijo.Close;
  DM1.cdsHijo.DataRequest(xSql);
  DM1.cdsHijo.Open;
end;

procedure TFCanCuotas.rgDevoClick(Sender: TObject);
begin
 lblForma.Caption := 'CANCELACION POR DEVOLUCION';
 dbgCronogVen.DataSource := nil;
 cargaSQLDevo;
 seteagrid;
 DM1.cdsHijo.First;
 xItem := '0';
 while not DM1.cdsHijo.eof do
  begin
   DM1.cdsHijo.Edit;
   DM1.cdsHijo.FieldByName('SUMAR').AsString := 'S';
   DM1.cdsHijo.Next;
  end;
end;

procedure TFCanCuotas.seteagrid;
begin
  dbgCronogVen.Selected.Clear;
  dbgCronogVen.Selected.Add('SUMAR'#9'1'#9'+');
  dbgCronogVen.Selected.Add('CREANO'#9'4'#9'Año');
  dbgCronogVen.Selected.Add('CREMES'#9'2'#9'Mes');
  dbgCronogVen.Selected.Add('CRECUOTA'#9'4'#9'Cuota');
  dbgCronogVen.Selected.Add('CREMTO'#9'9'#9'Monto~Cuota');
  dbgCronogVen.Selected.Add('SALDO'#9'8'#9'Saldo');
  dbgCronogVen.Selected.Add('CREMTOEXC'#9'8'#9'Monto~Exceso');
  dbgCronogVen.Selected.Add('CREESTADO'#9'20'#9'Estado');
  xRegistros := DM1.cdsHijo.Recordcount;
  DM1.cdsHijo.IndexFieldNames:='CRECUOTA;CREANO;CREMES';
  xPosicion := 0;
  {
  DM1.cdsHijo.filter := 'TIPO='+quotedstr('1');
  DM1.cdsHijo.filtered := True;
  }
  DM1.cdsHijo.First;
  while not DM1.cdsHijo.Eof do
   begin
    xPosicion := xPosicion + 1;
    DM1.cdsHijo.Edit;
    DM1.cdsHijo.FieldByName('PORCOBRAR').AsString := FloatToStr(xPosicion);
    DM1.cdsHijo.fieldbyname('CREMTOEXC').AsFloat := 0.00;
    DM1.cdsHijo.Post;
    DM1.cdsHijo.Next;
   end;
  DM1.cdsHijo.filter := '';
  DM1.cdsHijo.filtered := False;
  DM1.cdsHijo.DisableControls;
  dbgCronogVen.DataSource := DM1.dsHijo;
  dbgCronogVen.RefreshDisplay;
  dbgCronogVen.SetControlType('SUMAR',fctCheckBox, 'S;N');

  DM1.cdsHijo.FieldByName('SUMAR').Readonly := False;
  DM1.cdsHijo.FieldByName('CREANO').Readonly := True;
  DM1.cdsHijo.FieldByName('CREMES').Readonly := True;
  DM1.cdsHijo.FieldByName('CRECUOTA').Readonly := True;
  DM1.cdsHijo.FieldByName('CREMTO').Readonly := True;
  DM1.cdsHijo.FieldByName('SALDO').Readonly := True;
  DM1.cdsHijo.FieldByName('CREMTOEXC').Readonly := True;
  DM1.cdsHijo.FieldByName('CREESTADO').Readonly := True;

  TNumericField(DM1.cdsHijo.FieldByName('CREMTO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsHijo.FieldByName('SALDO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsHijo.FieldByName('CREMTOEXC')).DisplayFormat:='###,###,##0.00';
  DM1.cdsHijo.EnableControls;
  dbgCronogVen.ColumnByName('TIPCREABR').FooterValue:='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsHijo , 'COUNT(CRECUOTA)',''),ffNumber, 15,0)+' Cuotas';
  dblcFormaPago.TEXT := DM1.cdsFormaPago.FieldByName('FORPAGOID').AsString; //'02';
end;

end.



