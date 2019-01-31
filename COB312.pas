unit COB312;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, Wwdbdlg, StdCtrls, wwdblook, Mask, wwdbedit, Buttons,
  wwdbdatetimepicker, DBCtrls, ComCtrls, Grids, Wwdbigrd,
  Wwdbgrid,DB, Wwdbspin, wwriched, fcButton, fcImgBtn, fcShapeBtn, wwclient,
  ExtCtrls,DBClient, MConnect, Wwdatsrc, Provider,
  variants, wwSpeedButton, wwDBNavigator, dbiProcs, GridControl, Mant;

type
  TFReclamosCob = class(TForm)
    pnlCabecera: TPanel;
    pnlInicio: TPanel;
    dbgReclamo: TwwDBGrid;
    bbtnInsertaDetReclamo: TwwIButton;
    dbgCreditos: TwwDBGrid;
    dbgCreditosbtn: TwwIButton;
    pnlBtnPrin: TPanel;
    Z2bbtnNuevo: TfcShapeBtn;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    pnlReclamo: TPanel;
    StaticText2: TStaticText;
    Panel5: TPanel;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    dbeMontoPagado: TwwDBEdit;
    dblcTMoneda: TwwDBLookupCombo;
    edtTMoneda: TEdit;
    dbeMontoRecl: TwwDBEdit;
    dblcReclMotId: TwwDBLookupCombo;
    edtReclMotivo: TEdit;
    dblcReclSit: TwwDBLookupCombo;
    edtReclSit: TEdit;
    edtTCredito: TEdit;
    dblcTCredito: TwwDBLookupCombo;
    dbeNCredito: TwwDBEdit;
    bbtnNProcede: TfcShapeBtn;
    dbmObservacion: TwwDBRichEdit;
    grCredito: TRadioGroup;
    dbeCuota: TwwDBEdit;
    PnlBusCre: TPanel;
    btnBusOK: TfcShapeBtn;
    btnBusCan: TfcShapeBtn;
    StaticText1: TStaticText;
    dbeBusCre: TwwDBEdit;
    dbeBusCuo: TwwDBEdit;
    dbeBusTip: TwwDBEdit;
    dbeAsoNom: TwwDBEdit;
    Label54: TLabel;
    dbeAsoId: TwwDBEdit;
    Panel1: TPanel;
    dbeReclamo: TwwDBEdit;
    dbdtpFReclamo: TwwDBDateTimePicker;
    dbeTipo: TwwDBEdit;
    dbeTipDoc: TwwDBEdit;
    dbeDocIdNum: TwwDBEdit;
    dbeTipSit: TwwDBEdit;
    dblcdUPro: TwwDBLookupComboDlg;
    dbeUPro: TwwDBEdit;
    dblcdUPag: TwwDBLookupComboDlg;
    dbeUPag: TwwDBEdit;
    dblcdUse: TwwDBLookupComboDlg;
    dbeUSE: TwwDBEdit;
    dblcdTipo: TwwDBLookupCombo;
    dblcdTipSit: TwwDBLookupCombo;
    dblcdTipDoc: TwwDBLookupCombo;
    dbeCodigoModular: TwwDBEdit;
    pnlNoProcede: TPanel;
    bbtnOK: TfcShapeBtn;
    bbtnNoOK: TfcShapeBtn;
    StaticText3: TStaticText;
    dbmResultado: TwwDBEdit;
    dbdtpFResultado: TwwDBDateTimePicker;
    dbgPagos: TwwDBGrid;
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure dblcdCodigo1Exit(Sender: TObject);
    procedure dblcReclSitExit(Sender: TObject);
    procedure dblcTMonedaExit(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtnInsertaDetReclamoClick(Sender: TObject);
    procedure spdAnoExit(Sender: TObject);
    procedure dbeMontoReclExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure pcReclamoChanging(Sender: TObject; var AllowChange: Boolean);
    procedure Z2bbtnNuevoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure z2bbtnGeneraDevolClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure dblctipoCreditoExit(Sender: TObject);
    procedure dblcTCreditoExit(Sender: TObject);
    procedure bbtnNProcedeClick(Sender: TObject);
    procedure dbgCreditosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgCreditosEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure btnBusCanClick(Sender: TObject);
    procedure btnBusOKClick(Sender: TObject);
    procedure dbgCreditosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgCreditosbtnClick(Sender: TObject);
    procedure dbgReclamoDblClick(Sender: TObject);
    procedure dbeNCreditoExit(Sender: TObject);
    procedure grCreditoExit(Sender: TObject);
    procedure dbeCuotaExit(Sender: TObject);
    procedure dbgReclamoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgReclamoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bbtnBAsociadoClick(Sender: TObject);
    procedure dbeMontoPagadoExit(Sender: TObject);
    procedure dbmresultadoExit(Sender: TObject);
    procedure dbdtpFResultadoExit(Sender: TObject);
    procedure dbmObservacionExit(Sender: TObject);
    procedure dblcReclMotIdExit(Sender: TObject);
    procedure dbgReclamoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeAsoNomExit(Sender: TObject);
    procedure dbeCodigoModularExit(Sender: TObject);
    procedure bbtnOKClick(Sender: TObject);
    procedure bbtnNoOKClick(Sender: TObject);
    procedure dbgPagosEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgPagosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgPagosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dblcReclMotIdNotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);

  private
    { Private declarations }
    {ncredito:string;
    xmes:string;
    dptoid:string;
    uproid:string;
    upagoid:string;
    useidx:string;}
    HacerDrag : Boolean;

    procedure CargaFiltro(xCampo : String);
    procedure LlenarDatosAsociado;
    procedure LlenarDatosReclamoDet;
    //procedure LlenarDatosReclamoCab;
  public
    { Public declarations }
    MtxCreAso: TMant;
    procedure NuevoReclamo(Sender: TObject);
    procedure GrabaTransaccion(Sender: TObject);
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
  end;

var
  FReclamosCob: TFReclamosCob;
  xReclamo, xSitReclamo, wModo1, ESTADO, xUse, wFuente : String;
  xCrea, wEstado, wActualizado : Boolean;
  procedure cdsPost (xxCds:TwwClientDataset);

implementation

USES MsgDlgs, COBDM1, COB701, COB001, COB308 ;
{$R *.DFM}

procedure TFReclamosCob.Z2bbtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure cdsPost (xxCds:TwwClientDataset);
var
   i : Integer;
begin
   For i := 0 to xxCds.Fields.Count-1 do begin
    If xxCds.fields[i].ClassType=TStringField Then begin
       If xxCds.Fields[i].AsString = '' Then
          xxCds.Fields[i].Clear;
     end;
    If xxCds.fields[i].ClassType = TMemoField Then begin
       If xxCds.Fields[i].AsString = '' Then
          xxCds.Fields[i].AsString := ' ';
     end;
    end;
end;

procedure TFReclamosCob.dblcdCodigo1Exit(Sender: TObject);
begin
{  xUse:=dblcdUse.text;
  sWhere:= 'ASOID = '+ quotedstr(dbeasoid.text) ;
  dbeCodigoModular.text:=dm1.DisplayDescrip('prvTGE','APO201','ASOCODMOD,ASOCODPAGO,ASOAPEPAT,ASOAPEMAT,ASONOMBRES,TIPDOCCOD,ASODOCNUM,DPTOID,UPROID,UPAGOID,USEID',sWhere,'ASOCODMOD');
  dbeCodigoPago.text:=dm1.cdsQry.FieldByName('ASOCODPAGO').asstring;
  dbeApePat.text:=dm1.cdsQry.FieldByName('ASOAPEPAT').asstring;
  dbeApeMat.text:=dm1.cdsQry.FieldByName('ASOAPEMAT').asstring;
  dbeNombres.text:=dm1.cdsQry.FieldByName('ASONOMBRES').asstring;
  dblcTipDocId.text:=dm1.cdsQry.FieldByName('TIPDOCCOD').asstring;
  dbeDocIdNum.text:=dm1.cdsQry.FieldByName('ASODOCNUM').asstring;
  useidx:=dm1.cdsQry.FieldByName('USEID').asstring;
  dptoid:=dm1.cdsQry.FieldByName('DPTOID').asstring;
  uproid:=dm1.cdsQry.FieldByName('UPROID').asstring;
  upagoid:=dm1.cdsQry.FieldByName('UPAGOID').asstring;
  If xcrea Then exit;
  If z2bbtnCancel.Focused Then exit;
  If (dbeApePat.text='') And (dbeasoid.text<>'') Then
  begin
     dblcdCodigo.SetFocus;
     Raise Exception.create('Error, Código de Asociado no existe !!!!!!!');
  end;}
{  If  dbeasoid.text='' Then
  begin
     ShowMessage('Ingrese el Código de Asociado');
     dblcdCodigo.SetFocus;
  end;}

end;

procedure TFReclamosCob.dblcReclSitExit(Sender: TObject);
var
   sWhere : String;
begin
   sWhere := 'RECLSITID = '+ QuotedStr(dblcReclSit.Text) ;
   edtReclSit.Text := DM1.DisplayDescrip('prvTGE', 'APO113', 'RECLSITDES', sWhere, 'RECLSITDES');
   If xCrea Then Exit;
   If Z2bbtnCancel.Focused Then Exit;
   If (edtReclSit.Text = '') And (dblcReclSit.Text <> '') Then
    begin
     dblcReclSit.SetFocus;
     Raise Exception.Create('Error, Código de Situación de Reclamo no Válido');
    end;
end;

procedure TFReclamosCob.dblcTMonedaExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   If (ActiveControl.Parent.Name = dblcTMoneda.Parent.Name) And
      (ActiveControl.TabOrder < dblcTMoneda.TabOrder) Then
    Exit;

   DM1.cdsTMone.SetKey;
   DM1.cdsTMone.FieldByName('TMONID').AsString := dblcTMoneda.Text;
   If not DM1.cdsTMone.GotoKey Then
    begin
     Beep;
     MessageDlg('Tipo de Moneda No Válida', mtInformation, [mbOk], 0);
     edtTMoneda.Text := '';
     dblcTMoneda.SetFocus;
     Exit;
    end;
   edtTMoneda.Text := DM1.cdsTMone.FieldByName('TMONDES').AsString;
end;

procedure TFReclamosCob.Z2bbtnAceptarClick(Sender: TObject);
begin
   If DM1.cdsReclamoDCob.RecordCount = 0 Then
    begin
     Beep;
     MessageDlg('Falta Ingresar el Detalle del Reclamo!', mtInformation, [mbOk], 0);
     Exit;
    end;

   Screen.Cursor := crHourGlass;

   DM1.cdsReclamo.FieldByName('ASOID').AsString      := dbeAsoId.Text;
   DM1.cdsReclamo.FieldByName('USEID').AsString      := dblcdUse.Text;
   DM1.cdsReclamo.FieldByName('UPROID').AsString     := dblcdUPro.Text;
   DM1.cdsReclamo.FieldByName('UPAGOID').AsString    := dblcdUPag.Text;
   DM1.cdsReclamo.FieldByName('ASOCODMOD').AsString  := dbeCodigoModular.Text;

   DM1.cdsReclamo.FieldByName('RECLTMONID').AsString := 'N';
   DM1.cdsReclamo.FieldByName('RECLTOTAL').AsFloat   := DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)','');
   DM1.cdsReclamo.FieldByName('USUARIO').AsString    := DM1.wUsuario;
   DM1.cdsReclamo.FieldByName('FREG').AsDateTime     := Date;
   DM1.cdsReclamo.FieldByName('HREG').AsDateTime     := Date+SysUtils.Time;

   DM1.cdsReclamo.FieldByName('USUARIO').AsString    := DM1.wUsuario;
   DM1.cdsReclamo.FieldByName('FREG').AsDateTime     := Date;
   DM1.cdsReclamo.FieldByName('HREG').AsDateTime     := Date+SysUtils.Time;
   DM1.cdsReclamo.FieldByName('RECLTOTAL').AsFloat   := DM1.OperClientDataSet(DM1.cdsReclamoDCob , 'SUM(RECLMONTO)','');
   cdsPost(DM1.cdsReclamo);
   DM1.cdsReclamo.Post;
   DM1.ControlTran;

//   DM1.cdsReclamoDCob.FieldByName('RECLID').AsString := DM1.cdsReclamo.FieldByName('RECLID').AsString;
   DM1.cdsReclamoDCob.Edit;
   DM1.cdsReclamoDCob.FieldByName('ASOID').AsString     := dbeAsoId.Text;
   DM1.cdsReclamoDCob.FieldByName('CREANO').AsString    := DM1.cdsCuotas.FieldByName('CREANO').AsString;
   DM1.cdsReclamoDCob.FieldByName('CREMES').AsString    := DM1.cdsCuotas.FieldByName('CREMES').AsString;
   DM1.cdsReclamoDCob.FieldByName('USEID').AsString     := dblcdUse.Text;
   DM1.cdsReclamoDCob.FieldByName('UPROID').AsString    := dblcdUPro.Text;
   DM1.cdsReclamoDCob.FieldByName('UPAGOID').AsString   := dblcdUPag.Text;
   DM1.cdsReclamoDCob.FieldByName('ASOCODMOD').AsString := dbeCodigoModular.Text;
   DM1.cdsReclamoDCob.FieldByName('USUARIO').AsString   := DM1.wUsuario;
   DM1.cdsReclamoDCob.FieldByName('FREG').AsDateTime    := Date;
   DM1.cdsReclamoDCob.FieldByName('HREG').AsDateTime    := Date+SysUtils.Time;
   cdsPost(DM1.cdsReclamoDCob);
   DM1.cdsReclamoDCob.Post;
   DM1.AplicaDatos(DM1.cdsReclamoDCob, '');

   DM1.cdsTransacciones.Edit;
   cdsPost(DM1.cdsTransacciones);
   DM1.cdsTransacciones.Post;
   DM1.AplicaDatos(DM1.cdsTransacciones, '');

   DM1.cdsCuotas.Edit;
   cdsPost(DM1.cdsCuotas);
   DM1.cdsCuotas.Post;
   DM1.AplicaDatos(DM1.cdsCuotas, '');

//   DM1.cdsReclamo.ApplyUpdates(-1);
{   DM1.cdsReclamoDCob.ApplyUpdates(-1);
   DM1.cdsCuotas.ApplyUpdates(-1);
   DM1.cdsTransacciones.ApplyUpdates(-1);}

   z2bbtnCancel.Enabled  := True;
   z2bbtnAceptar.Enabled := False;
   z2bbtnNuevo.Enabled   := True;
   Screen.Cursor := crDefault;
   Beep;
   MessageDlg('Datos Actualizados', mtCustom, [mbOk], 0);
end;

procedure TFReclamosCob.bbtnAceptarClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;

   If Length(dblcReclMotId.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese el Motivo de Reclamo', mtInformation, [mbOk], 0);
     dblcReclMotId.SetFocus;
     Exit;
    end;

   If (wFuente = 'CUO') Then
    begin
     DM1.cdsCuotas.Edit;
     DM1.cdsCuotas.FieldByName('CREFRECL').AsString := 'S';
     DM1.cdsCuotas.Post;
    end;

   If (wFuente = 'PAG') Then
    begin
     DM1.cdsTransacciones.Edit;
     DM1.cdsTransacciones.FieldByName('COBFRECL').AsString := 'S';
     DM1.cdsTransacciones.Post;
    end;

   DM1.cdsReclamoDCob.FieldByName('USUARIO').AsString := DM1.wUsuario;
   DM1.cdsReclamoDCob.FieldByName('FREG').AsDateTime  := Date;
   DM1.cdsReclamoDCob.FieldByName('HREG').AsDateTime  := Date+SysUtils.Time;
   cdsPost(DM1.cdsReclamoDCob);
   DM1.cdsReclamoDCob.Post;

   dbgReclamo.ColumnByName('RECLMONTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)',''), ffNumber, 10, 2);
   dbgReclamo.ColumnByName('CREMONTO').FooterValue   := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(CREMONTO)',''), ffNumber, 10, 2);
   dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas, 'SUM(CREMTOEXC)',''), ffNumber, 10, 2);
   dbgPagos.ColumnByName('CREMTOCOB').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(CREMTOCOB)',''), ffNumber, 10, 2);

   Screen.Cursor := crDefault;

   pnlReclamo.Visible  := False;
   pnlCabecera.Enabled := True;
end;

procedure TFReclamosCob.FormActivate(Sender: TObject);
var
   xSQL : String;
begin
   DM1.cdsCuotas.Close;
   DM1.cdsReclamoDCob.Close;

   // Llena cds tipo de credito
   dblcTCredito.Selected.Clear;
   dblcTCredito.Selected.Add('TIPCREID'#9'10'#9'Id');
   dblcTCredito.Selected.Add('TIPCREDES'#9'40'#9'Descripción');

   // Llena cds tipo de moneda
   dblcTMoneda.Selected.Clear;
   dblcTMoneda.Selected.Add('TMONID'#9'2'#9'Id');
   dblcTMoneda.Selected.Add('TMONDES'#9'30'#9'Descripción');

   // Llena cds tipo de reclamo
   dblcReclMotId.Selected.clear;
   dblcReclMotId.Selected.Add('RECLMOTID'#9'2'#9'Id');
   dblcReclMotId.Selected.Add('RECLMOTDES'#9'30'#9'Descripción');

   dbeAsoNom.Text           := '';
   dbeCodigoModular.Text    := '';
   dbeAsoId.Text            := '';
   dbeCodigoModular.Enabled := True;

   dblcdUPro.Clear;
   dblcdUPag.Clear;
   dblcdUse.Clear;
   dblcdTipDoc.Clear;
   dblcdTipo.Clear;
   dblcdTipSit.Clear;

   dbeDocIdNum.Clear;
   dbeTipDoc.Clear;
   dbeTipo.Clear;
   dbeTipSit.Clear;

   dbeUPro.Clear;
   dbeUPag.Clear;
   dbeUSE.Clear;

   dbeAsoNom.Enabled        := True;
   dbeCodigoModular.Enabled := True;

   If DM1.wModo = 'M' Then
    begin
     DM1.cdsReclamo.Edit;

     pnlInicio.Enabled     := False;
     HacerDrag             := False;

     Z2bbtnAceptar.Enabled := True;
     Z2bbtnCancel.Enabled  := True;
     Z2bbtnNuevo.Enabled   := False;

     xSQL := 'SELECT * FROM APO201'
            +' WHERE ASOID ='+QuotedStr(DM1.cdsReclamo.FieldByName('ASOID').AsString);

     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSQL);
     DM1.cdsQry.Open;
     If DM1.cdsQry.RecordCount = 1 Then
      LlenarDatosAsociado;

     dbgCreditos.SetFocus;
    end;

   If DM1.wModo = 'A' Then
    begin
     DM1.cdsReclamo.Insert;

     pnlInicio.Enabled     := True;
     HacerDrag             := True;

     Z2bbtnAceptar.Enabled := True;
     Z2bbtnCancel.Enabled  := True;
     Z2bbtnNuevo.Enabled   := False;

    // Cuotas
     xSQL := 'SELECT TIPCREID, CREDID, CRECUOTA, CREANO, CREMES,'
            +' FORPAGOID, TMONID, CREFRECL,'
            +' CREMTO, CREAMORT, CREINTERES, CREFLAT,'
            +' CREMTOCOB, CRECAPITAL, CREMTOINT, CREMTOFLAT,'
            +' CREMTOEXC,'
            +' CREMONLOC, CREMONEXT, BANCOID'
            +' FROM CRE302'
            +' WHERE ASOID ='+QuotedStr('XXX')
            +' AND CREFDEV IS NULL';

     DM1.cdsCuotas.Close;
     DM1.cdsCuotas.IndexFieldNames := 'TIPCREID; CREDID; CRECUOTA';
     DM1.cdsCuotas.DataRequest(xSQL);
     DM1.cdsCuotas.Open;

     TNumericField(DM1.cdsCuotas.FieldByName('CREMTOEXC')).DisplayFormat := '###,###,##0.00';
     TNumericField(DM1.cdsCuotas.FieldByName('CREMTOEXC')).EditFormat    := '########0.00';

     dbgCreditos.Selected.Clear;
     dbgCreditos.Selected.Add('TIPCREID'#9'7'#9'Tipo~Crédito');
     dbgCreditos.Selected.Add('CREDID'#9'11'#9'Crédito');
     dbgCreditos.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
     dbgCreditos.Selected.Add('CREANO'#9'4'#9'Año');
     dbgCreditos.Selected.Add('CREMES'#9'4'#9'Mes');
     dbgCreditos.Selected.Add('FORPAGOID'#9'6'#9'Forma~Pago');
     dbgCreditos.Selected.Add('TMONID'#9'6'#9'Moneda');
     dbgCreditos.Selected.Add('CREMTO'#9'10'#9'Monto~Cuota');
     dbgCreditos.Selected.Add('CREMTOEXC'#9'12'#9'Monto~Exceso');
     dbgCreditos.ApplySelected;

     dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas, 'SUM(CREMTOEXC)',''), ffNumber, 10, 2);

   // Pagos sin Sustento
     xSQL := 'SELECT TIPCREID, CREDID, CRECUOTA, FOPERAC, NROOPE,'
            +' FORPAGOID, TMONID,'
            +' CREMTOCUO, CREAMORT, CREINTERES, CREFLAT,'
            +' CREMTOCOB, COBFRECL,'
            +' CREMONLOC, CREMONEXT, BANCOID'
            +' FROM CRE310'
            +' WHERE ASOID ='+QuotedStr('XXX')
            +' AND FLGSSS ='+QuotedStr('S')
            +' AND TRANSINTID ='+QuotedStr('CUO')
            +' AND CREESTID NOT IN (''04'',''13'')'
            +' AND COBFDEV IS NULL';

     DM1.cdsTransacciones.Close;
     DM1.cdsTransacciones.IndexFieldNames := 'TIPCREID; CREDID; CRECUOTA; FOPERAC; NROOPE';
     DM1.cdsTransacciones.DataRequest(xSQL);
     DM1.cdsTransacciones.Open;

     TNumericField(DM1.cdsTransacciones.FieldByName('CREMTOCOB')).DisplayFormat := '###,###,##0.00';
     TNumericField(DM1.cdsTransacciones.FieldByName('CREMTOCOB')).EditFormat    := '########0.00';

     dbgPagos.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(CREMTOCOB)',''), ffNumber, 10, 2);

     dbgPagos.Selected.Clear;
     dbgPagos.Selected.Add('TIPCREID'#9'7'#9'Tipo~Crédito');
     dbgPagos.Selected.Add('CREDID'#9'11'#9'Crédito');
     dbgPagos.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
     dbgPagos.Selected.Add('FOPERAC'#9'10'#9'Fecha~Operación');
     dbgPagos.Selected.Add('NROOPE'#9'15'#9'Nro.~Operación');
     dbgPagos.Selected.Add('FORPAGOID'#9'15'#9'Forma~Pago');
     dbgPagos.Selected.Add('TMONID'#9'6'#9'Moneda');
     dbgPagos.Selected.Add('CREMTOCOB'#9'15'#9'Monto');
     dbgPagos.ApplySelected;

     // Reclamos
     xSQL := 'SELECT * FROM COB308'
            +' WHERE'
            +' RECLID ='+QuotedStr('XX');

     DM1.cdsReclamoDCob.Close;
     DM1.cdsReclamoDCob.IndexFieldNames := 'RECLIDD';
     DM1.cdsReclamoDCob.DataRequest(xSQL);
     DM1.cdsReclamoDCob.Open;

     dbgReclamo.Selected.Clear;
     dbgReclamo.Selected.Add('RECLIDD'#9'5'#9'Item');
     dbgReclamo.Selected.Add('TMONID'#9'6'#9'Moneda');
     dbgReclamo.Selected.Add('CREMONTO'#9'15'#9'Monto~Pago');
     dbgReclamo.Selected.Add('RECLMONTO'#9'15'#9'Monto~Reclamo');
     dbgReclamo.Selected.Add('RECLMOTID'#9'6'#9'Motivo');
     dbgReclamo.Selected.Add('RECLSITID'#9'9'#9'Situación');
     dbgReclamo.Selected.Add('RECLFINI'#9'10'#9'Fecha~Conclusión');
     dbgReclamo.Selected.Add('TIPCREID'#9'4'#9'Tipo~Crédito');
     dbgReclamo.Selected.Add('CREDID'#9'11'#9'Crédito');
     dbgReclamo.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
     dbgReclamo.ApplySelected;

     TNumericField(DM1.cdsReclamoDCob.FieldByName('CREMONTO')).DisplayFormat := '###,###,##0.00';
     TNumericField(DM1.cdsReclamoDCob.FieldByName('CREMONTO')).EditFormat    := '########0.00';

     dbgReclamo.ColumnByName('CREMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(CREMONTO)',''), ffNumber, 10, 2);

     TNumericField(DM1.cdsReclamoDCob.FieldByName('RECLMONTO')).DisplayFormat := '###,###,##0.00';
     TNumericField(DM1.cdsReclamoDCob.FieldByName('RECLMONTO')).EditFormat    := '########0.00';

     dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)',''), ffNumber, 10, 2);

     xSQL := 'SELECT MAX(CAST(RECLID AS INTEGER)) NUEVORECL FROM COB307';

     DM1.FiltraCds(DM1.cdsQry, xSQL);
     If DM1.cdsQry.FieldByName('NUEVORECL').AsString <> '' Then
      DM1.cdsReclamo.FieldByName('RECLID').AsString :=
      DM1.StrZero( IntToStr(StrToInt(DM1.cdsQry.FieldByName('NUEVORECL').AsString)+1), DM1.cdsReclamo.FieldByName('RECLID').Size)
     Else
      DM1.cdsReclamo.FieldByName('RECLID').AsString := DM1.StrZero('1', DM1.cdsReclamo.FieldByName('RECLID').Size);

      DM1.cdsReclamo.FieldByName('FRECLA').AsDateTime := Date;

      dbeAsoNom.SetFocus;
    end;
end;

procedure TFReclamosCob.NuevoReclamo(Sender: TObject);
begin
end;

procedure TFReclamosCob.bbtnInsertaDetReclamoClick(Sender: TObject);
var
   xWhere : String;
begin
   //
   wFuente := '';
   wModo1  := 'A';

   pnlReclamo.Visible      := True;
   pnlCabecera.Enabled     := False;

   grCredito.Enabled       := False;
   grCredito.ItemIndex     := 1;
   dblcTCredito.Enabled    := False;
   dbeNCredito.Enabled     := False;
   dbeCuota.Enabled        := False;
   dblcTMoneda.Enabled     := True;
   dblcReclSit.Enabled     := False;
   dbeMontoPagado.Enabled  := False;
   dblcReclMotId.Enabled   := True;
   dbeMontoRecl.Enabled    := True;
   dbmObservacion.Enabled  := True;
   dbdtpFResultado.Enabled := False;
   dbmResultado.Enabled    := False;

   bbtnCancelar.Enabled    := True;
   bbtnAceptar.Enabled     := True;
   bbtnNProcede.Enabled    := False;

   dblcTMoneda.SetFocus;

   DM1.cdsReclamoDCob.Insert;

   DM1.cdsReclamoDCob.FieldByName('RECLSITID').AsString  := '01';   // 01-En Trámite
   xWhere := 'RECLSITID ='+QuotedStr(dblcReclsit.Text);
   edtReclSit.Text := DM1.DisplayDescrip('prvTGE', 'APO113', 'RECLSITDES',xWhere, 'RECLSITDES');

   DM1.cdsReclamoDCob.FieldByName('RECLID').AsString  := DM1.cdsReclamo.FieldByName('RECLID').AsString;
   DM1.cdsReclamoDCob.FieldByName('RECLIDD').AsString := DM1.StrZero(IntToStr(DM1.cdsReclamoDCob.RecordCount+1), DM1.cdsReclamoDCob.FieldByName('RECLIDD').Size);
   DM1.cdsReclamoDCob.FieldByName('ASOID').AsString   := dbeAsoId.Text;
   DM1.cdsReclamoDCob.FieldByName('ASOID').AsString   := dbeAsoId.Text;
   DM1.cdsReclamoDCob.FieldByName('CREMONTO').AsFloat := 0;
   DM1.cdsReclamoDCob.FieldByName('FLGSSS').AsString  := 'S';

   dbgReclamo.ColumnByName('RECLMONTO').FooterValue   := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)', ''),ffNumber, 10, 2);
   dbgReclamo.ColumnByName('CREMONTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(CREMONTO)', ''),ffNumber, 10, 2);
   dbgCreditos.ColumnByName('CREMTOEXC').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas, 'SUM(CREMTOEXC)',''),ffNumber, 10, 2);
end;

procedure TFReclamosCob.spdAnoExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;
end;

procedure TFReclamosCob.dbeMontoReclExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   If (ActiveControl.Parent.Name = dbeMontoRecl.Parent.Name) And
      (ActiveControl.TabOrder < dbeMontoRecl.TabOrder) Then
    Exit;

   If (Length(Trim(dbeMontoRecl.Text)) = 0) or
      (DM1.cdsReclamoDCob.FieldByName('RECLMONTO').AsFloat <= 0) Then
    begin
     Beep;
     MessageDlg('Monto Reclamado no es Válido', mtInformation, [mbOk], 0);
     dbeMontoRecl.SetFocus;
     Exit;
    end;

   If (DM1.cdsReclamoDCob.FieldByName('CREMONTO').AsFloat < DM1.cdsReclamoDCob.FieldByName('RECLMONTO').AsFloat) Then
    begin
     Beep;
     MessageDlg('El Monto Reclamado No puede ser Mayor al Monto Aportado', mtInformation, [mbOk], 0);
     dbeMontoRecl.SetFocus;
     Exit;
    end;
end;

procedure TFReclamosCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{   DM1.cdsReclamo.Cancel;
   DM1.cdsReclamoDCob.Cancel;
   DM1.cdsReclamoDCob.Close;
   DM1.cdsCuotas.Cancel;
   DM1.cdsCuotas.Close;
   DM1.cdsTransacciones.Cancel;
   DM1.cdsTransacciones.Close;}
   DM1.cdsReclamo.CancelUpdates;
   DM1.cdsReclamoDCob.CancelUpdates;
   DM1.cdsReclamoDCob.Close;
   DM1.cdsCuotas.CancelUpdates;
   DM1.cdsCuotas.Close;
   DM1.cdsTransacciones.CancelUpdates;
   DM1.cdsTransacciones.Close;
end;

procedure TFReclamosCob.bbtnCancelarClick(Sender: TObject);
begin
   DM1.cdsReclamoDCob.CancelUpdates;
   pnlReclamo.Visible  := False;
   pnlCabecera.Enabled := True;
end;

procedure TFReclamosCob.pcReclamoChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
   If (ESTADO = 'INSERT') Then
    AllowChange := False
   Else
    AllowChange := (ESTADO = 'UPDATE');
end;

procedure TFReclamosCob.Z2bbtnNuevoClick(Sender: TObject);
begin
   z2bbtnnuevo.Enabled   := False;
   z2bbtnaceptar.Enabled := True;
   DM1.wModo := 'A';

   Formactivate(Self);
end;

procedure TFReclamosCob.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
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
         DM1.cdsReclamoDCob.CancelUpdates;
         DM1.cdsReclamo.CancelUpdates;
        end;
      end;
    end;
end;

procedure TFReclamosCob.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFReclamosCob.z2bbtnGeneraDevolClick(Sender: TObject);
begin
{  dm1.cdsDevolucion.open;
  dm1.cdsReclamoDCob.first;
  while not dm1.cdsReclamoDCob.eof do
  begin
    dm1.cdsDevolucion.insert;
    If dm1.cdsReclamoDCob.fieldbyName('RECLFDEV').AsString='S' Then
    begin
      xSQL := 'SELECT MAX(CAST(DEVID AS INTEGER)) NUEVADEV '
             +'FROM APO305 ';
	  	DM1.Filtracds(DM1.cdsQry, xSQL);
  		If DM1.cdsQry.fieldbyName('NUEVADEV').asString <> '' Then
    		DM1.cdsDevolucion.fieldbyName('DEVID').asString :=  DM1.StrZero( IntToStr(StrToInt(DM1.cdsQry.fieldbyName('NUEVADEV').asString)+1), DM1.cdsDevolucion.fieldbyName('DEVID').Size)
 			Else
    		DM1.cdsDevolucion.fieldbyName('DEVID').asString := DM1.StrZero('1', DM1.cdsDevolucion.fieldbyName('DEVID').Size);
      DM1.cdsDevolucion.fieldbyName('DEVMTO').AsString:=dbeMontoRecl.text;
      DM1.cdsDevolucion.fieldbyName('ASOID').AsString:=dbeasoid.text;
      DM1.cdsDevolucion.fieldbyName('APOANO').AsString:=dm1.cdsReclamoDCob.FieldByName('APOANO').AsString;
      DM1.cdsDevolucion.fieldbyName('APOMES').AsString:=dm1.cdsReclamoDCob.FieldByName('APOMES').AsString;
      DM1.cdsDevolucion.fieldbyName('APOMONTO').AsFloat:=StrToFloat(dbemontopagado.text);
      DM1.cdsDevolucion.fieldbyName('DEVFRECL').AsString:='S';
      DM1.cdsDevolucion.fieldbyName('RECLID').AsString:=DM1.cdsReclamo.FieldByName('RECLID').AsString;
      DM1.cdsDevolucion.fieldbyName('USUARIO').AsString:=dm1.wUsuario;
      DM1.cdsDevolucion.fieldbyName('FREG').asdatetime:= date;
      DM1.cdsDevolucion.fieldbyName('HREG').AsDateTime:=  date+SysUtils.Time;
      cdspost(dm1.cdsDevolucion);
      dm1.cdsDevolucion.post;
      GrabaTransaccion(sender);
    end;
    dm1.cdsSitReclamo.open;
    dm1.cdsSitReclamo.insert;
    dm1.cdsSitReclamo.FieldByName('RECLID').AsString:=DM1.cdsReclamo.FieldByName('RECLID').AsString;
    dm1.cdsSitReclamo.FieldByName('RECLSITID').asstring:='02';
    dm1.cdsSitReclamo.FieldByName('RECLSITDES').AsString:=dm1.DisplayDescrip('prvTGE','APO113','RECLSITDES','RECLSITID='+QuotedStr('02') ,'RECLSITDES');;
    dm1.cdsSitReclamo.FieldByName('USUARIO').AsString:=dm1.wUsuario;
    dm1.cdsSitReclamo.FieldByName('FREG').AsDateTime:=date;
    dm1.cdsSitReclamo.FieldByName('HREG').AsDateTime:=date+SysUtils.Time;
    dm1.cdsSitreclamo.post;
    dm1.cdsReclamoDCob.next;
  end;
  dm1.controltran;
  showmessage('Reclamo aceptado');}
end;

procedure TFReclamosCob.GrabaTransaccion(Sender: TObject);
begin
{  dm1.cdsTransDevol.open;
  dm1.cdsTransDevol.Insert;
	DM1.cdsTransDevol.fieldbyName('TRANSID').asString:=DM1.DisplayDescrip('prvTGE','APO118','TRANSID','TRANSINTID='+ quotedstr('DEV'),'TRANSID');
  DM1.cdsTransDevol.fieldbyName('ASOID').asString:=dbeasoid.text;
  DM1.cdsTransDevol.fieldbyName('ASOCODMOD').asString:=dbeCodigoModular.text;
  DM1.cdsTransDevol.fieldbyName('USEID').asString:=dblcdUse.text;
  DM1.cdsTransDevol.fieldbyName('USEABR').asString:=edtUse.text;
  DM1.cdsTransDevol.fieldbyName('UPROID').asString:=dm1.DisplayDescrip('prvTGE','APO101','UPROID','USEID='+ quotedstr(dblcdUse.text),'UPROID');
  sUProceso:=dm1.DisplayDescrip('prvTGE','APO102','UPROABR','UPROID='+ QuotedStr(DM1.cdsTransDevol.fieldbyName('UPROID').asString),'UPROABR');
  DM1.cdsTransDevol.fieldbyName('UPROABR').asString:=sUProceso;
  DM1.cdsTransDevol.fieldbyName('UPAGOID').asString:=dm1.DisplayDescrip('prvTGE','APO101','UPAGOID','USEID = '+ quotedstr(dblcdUse.text),'UPAGOID');
  sUPago:=dm1.DisplayDescrip('prvTGE','APO103','UPAGOABR','UPAGOID='+QuotedStr( DM1.cdsTransDevol.fieldbyName('UPAGOID').asString),'UPAGOABR');
  DM1.cdsTransDevol.fieldbyName('UPAGOABR').asString:=sUPago;
  DM1.cdsTransDevol.fieldbyName('DPTOID').asString:=dm1.DisplayDescrip('prvTGE','APO101','DEPTOID','USEID = '+ quotedstr(dblcdUse.text),'DEPTOID');
  sDepto:=dm1.DisplayDescrip('prvTGE','TGE158','DPTOABR ','DPTOID='+ QuotedStr(DM1.cdsTransDevol.fieldbyName('DPTOID').asString),'DPTOABR');
  DM1.cdsTransDevol.fieldbyName('DPTOABR').asString:=sDepto;
  DM1.cdsTransDevol.fieldbyName('TRANSANO').asString:=spdAno.text;
  DM1.cdsTransDevol.fieldbyName('TRANSMES').asString:=dm1.StrZero(spdMes.text,DM1.cdsTransDevol.fieldbyName('TRANSMES').size);
  DM1.cdsTransDevol.fieldbyName('TMONID').asString:=dblctMoneda.text;
  DM1.cdsTransDevol.fieldbyName('TRANSMTO').asString:=dbeMontoRecl.text;
  DM1.cdsTransDevol.fieldbyName('TRANSFFCIND').asString:='';
  DM1.cdsTransDevol.fieldbyName('TRANSINTID').asString:='DEV';
  DM1.cdsTransDevol.fieldbyName('USUARIO').asString:=DM1.wUsuario;
  DM1.cdsTransDevol.fieldbyName('FREG').AsDateTime:= date;
  DM1.cdsTransDevol.fieldbyName('HREG').AsDateTime:= date+SysUtils.Time;
  cdspost(DM1.cdsTransDevol);
  DM1.cdsTransDevol.post;}

end;

procedure TFReclamosCob.fcShapeBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFReclamosCob.dblctipoCreditoExit(Sender: TObject);
var
   sWhere : String;
begin
   sWhere := 'TRIM(TIPCREID) = '+ QuotedStr(dblcTCredito.Text) ;
   edtTMoneda.Text := DM1.DisplayDescrip('prvTGE', 'CRE110', 'TIPCREDES', sWhere, 'TIPCREDES');
end;

procedure TFReclamosCob.dblcTCreditoExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   If (ActiveControl.Parent.Name = dblcTCredito.Parent.Name) And
      (activecontrol.TabOrder    <    dblcTCredito.TabOrder) Then
      Exit;

   DM1.cdsTCredito.SetKey;
   DM1.cdsTCredito.FieldByName('TIPCREID').AsString := dblcTCredito.Text;
   If not DM1.cdsTCredito.GotoKey Then
    begin
     Beep;
     MessageDlg('Tipo de Crédito no es Válido', mtInformation, [mbOk], 0);
     edtTCredito.Text := '';
     dblcTCredito.SetFocus;
     Exit;
    end;
   edtTCredito.Text := DM1.cdsTCredito.FieldByName('TIPCREDES').AsString;
end;

procedure TFReclamosCob.bbtnNProcedeClick(Sender: TObject);
begin
   pnlReclamo.Enabled   := False;
   pnlNoProcede.visible := True;

   DM1.cdsReclamoDCob.Edit;
   DM1.cdsReclamoDCob.FieldByName('RECLFFIN').AsDateTime := Date;
   DM1.cdsReclamoDCob.FieldByName('RECLRC').Clear;

   dbdtpFResultado.SetFocus;
end;

procedure TFReclamosCob.dbgCreditosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFReclamosCob.dbgCreditosEndDrag(Sender, Target: TObject; X,
  Y: Integer);
var
   xWhere : String;
begin
   If Target = dbgReclamo Then
    begin
     wFuente := 'CUO';
      // Valida si ya se está considerando un reclamo para esa cuota en DB
//GAR
     xWhere := 'ASOCODMOD ='+QuotedStr(dbeCodigoModular.Text)
              +' And TIPCREID ='+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)
              +' And CREDID ='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
              +' And CRECUOTA ='+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString
              +' And CREFRECL ='+QuotedStr('S');

{      xWhere:= 'TIPCREID='+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)
              +' AND CREDID='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
              +' AND CRECUOTA='+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString
              +' AND CREFRECL='+QuotedStr('S');}
     If Length(DM1.DisplayDescrip('prvTGE', 'CRE302', 'ASOCODMOD, TIPCREID, CREFRECL, CREMTOEXC, CREFDEV', xWhere, 'TIPCREID'))>0 Then
      begin
       If (DM1.cdsQry.FieldByName('CREFRECL').AsString = 'S') Then
        begin
         ErrorMsg('Error', 'Cuota ya fué Reclamada !');
         Exit;
        end;

       If (DM1.cdsQry.FieldByName('CREMTOEXC').AsFloat = 0) Then
        begin
         ErrorMsg('Error', 'Cuota No Posee Exceso de Pago !');
         Exit;
        end;

       If (DM1.cdsQry.FieldByName('CREFDEV').AsString = 'S') Then
        begin
         ErrorMsg('Error', 'Cuota ya fué Devuelta !');
         Exit;
        end;
      end;

{     If (DM1.cdsCuotas.FieldByName('CREFRECL').AsString = 'S') Then
      begin
       Beep;
       MessageDlg('Error, Cuota ya fué Reclamada !', mtInformation, [mbOk], 0);
       Exit;
      end;

     If (DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat=0) Then
      begin
       Beep;
       MessageDlg('Error, Cuota no posee exceso de pago !', mtInformation, [mbOk], 0);
       Exit;
      end;}

     // Prepara un registro nuevo para registar un reclamo
      wModo1 := 'A';

     DM1.cdsReclamoDCob.Append;
     DM1.cdsReclamoDCob.FieldByName('RECLID').AsString     := DM1.cdsReclamo.FieldByName('RECLID').AsString;
     DM1.cdsReclamoDCob.FieldByName('RECLIDD').AsString    := DM1.StrZero(IntToStr(DM1.cdsReclamoDCob.RecordCount+1), DM1.cdsReclamoDCob.FieldByName('RECLIDD').Size);
     DM1.cdsReclamoDCob.FieldByName('ASOID').AsString      := dbeAsoId.Text;
     DM1.cdsReclamoDCob.FieldByName('TIPCREID').AsString   := DM1.cdsCuotas.FieldByName('TIPCREID').AsString;
     DM1.cdsReclamoDCob.FieldByName('CREDID').AsString     := DM1.cdsCuotas.FieldByName('CREDID').AsString;
     DM1.cdsReclamoDCob.FieldByName('CRECUOTA').AsString   := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
     DM1.cdsReclamoDCob.FieldByName('TMONID').AsString     := DM1.cdsCuotas.FieldByName('TMONID').AsString;
//     DM1.cdsReclamoDCob.FieldByName('CREMONTO').AsFloat    := DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat;
     DM1.cdsReclamoDCob.FieldByName('CREMONTO').AsFloat    := DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat;
     If DM1.cdsCuotas.FieldByName('TMONID').AsString = 'N' Then
      DM1.cdsReclamoDCob.FieldByName('RECLMONTO').AsFloat  := DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat
     Else
      DM1.cdsReclamoDCob.FieldByName('RECLMONTO').AsFloat  := DM1.cdsCuotas.FieldByName('CREMTOEXC').AsFloat;

     DM1.cdsReclamoDCob.FieldByName('RECLSITID').AsString  := '01'; // 01-En Trámite

     DM1.cdsReclamoDCob.FieldByName('RECLFINI').AsDateTime := DM1.cdsReclamo.FieldByName('FRECLA').AsDateTime;

     DM1.cdsReclamoDCob.FieldByName('BANCOID').AsString    := DM1.cdsCuotas.FieldByName('BANCOID').AsString;
     DM1.cdsReclamoDCob.FieldByName('FORPAGOID').AsString  := DM1.cdsCuotas.FieldByName('FORPAGOID').AsString;

     LlenarDatosReclamoDet;

     pnlReclamo.Visible     := True;
     pnlCabecera.Enabled    := False;
     grCredito.Enabled      := False;
     grCredito.itemindex    := 0;
     dblcTCredito.Enabled   := False;
     dbeNCredito.Enabled    := False;
     dbeCuota.Enabled       := False;
     dblcTMoneda.Enabled    := False;
     dblcReclSit.Enabled    := False;
     dbeMontoPagado.Enabled := False;
     dblcReclMotId.Enabled  := True;
     dbeMontoRecl.Enabled   := True;
     dbmObservacion.Enabled := True;

//      dbdtpfresultado.Enabled:=False;
//      dbmresultado.Enabled   :=False;

     bbtnCancelar.Enabled   := True;
     bbtnAceptar.Enabled    := True;
     bbtnNProcede.Enabled   := False;

     dbgReclamo.ColumnByName('RECLMONTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)',''), ffNumber, 10, 2);
     dbgReclamo.ColumnByName('CREMONTO').FooterValue   := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(CREMONTO)',''), ffNumber, 10, 2);
     dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas, 'SUM(CREMTOEXC)',''), ffNumber, 10, 2);

     dblcReclMotId.SetFocus;
    end;
end;

procedure TFReclamosCob.LlenarDatosReclamoDet;
var
   xWhere : String;
begin
   edtTCredito.Clear;
   DM1.cdsTCredito.SetKey;
   DM1.cdsTCredito.FieldByName('TIPCREID').AsString := dblcTCredito.Text;
   If DM1.cdsTCredito.GotoKey Then
    edtTCredito.Text := DM1.cdsTCredito.FieldByName('TIPCREDES').AsString;

   edtTMoneda.Clear;
   DM1.cdsTMone.SetKey;
   DM1.cdsTMone.FieldByName('TMONID').AsString := dblcTMoneda.Text;
   If DM1.cdsTMone.GotoKey Then
    edtTMoneda.Text := DM1.cdsTMone.FieldByName('TMONDES').AsString;

   xWhere := 'RECLSITID ='+QuotedStr(dblcReclsit.Text);
   edtReclSit.Text := DM1.DisplayDescrip('prvTGE', 'APO113', 'RECLSITDES', xWhere, 'RECLSITDES');

   edtReclMotivo.Text := '';
   DM1.cdsReclamoMotiv.SetKey;
   DM1.cdsReclamoMotiv.FieldByName('RECLMOTID').AsString := dblcReclMotId.Text;
   If DM1.cdsReclamoMotiv.GotoKey Then
    edtReclMotivo.Text := DM1.cdsReclamoMotiv.FieldByName('RECLMOTDES').AsString;
end;

{procedure TFReclamosCob.LlenarDatosReclamoCab;
begin
   // Descripción de Unidad de Proceso
   dbeupro.text:='';
   DM1.cdsUpro.setkey;
   DM1.cdsUpro.FieldByName('UPROID').AsString:=dblcdUPro.text;
   If DM1.cdsUpro.gotokey Then
   begin
      dbeupro.text:=DM1.cdsUpro.FieldByName('UPRONOM').AsString;
   end;

   // Descripción de Unidad de Pago
   dbeupag.text:='';
   DM1.cdsUPago.setkey;
   DM1.cdsUPago.FieldByName('UPAGOID').AsString:=dblcdUpag.text;
   If DM1.cdsUPago.gotokey Then
   begin
      dbeupag.text:=DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
   end;

   // Descripción de USE
   dbeUSE.text:='';
   DM1.cdsUses.setkey;
   DM1.cdsUses.FieldByName('USEID').AsString:=dblcdUse.text;
   If DM1.cdsUses.gotokey Then
   begin
      dbeUSE.text:=DM1.cdsUses.FieldByName('USENOM').AsString;
   end;
end;}

procedure TFReclamosCob.LlenarDatosAsociado;
var
   xWhere : String;
begin
   dbeAsoNom.Text           := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
   dbeCodigoModular.Text    := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
   dbeAsoId.Text            := DM1.cdsQry.FieldByName('ASOID').AsString;
   dbeCodigoModular.Enabled := False;

   dblcdUPro.Text   := DM1.cdsQry.FieldByName('UPROID').AsString;
   dblcdUPag.Text   := DM1.cdsQry.FieldByName('UPAGOID').AsString;
   dblcdUse.Text    := DM1.cdsQry.FieldByName('USEID').AsString;
   dbeDocIdNum.Text := DM1.cdsQry.FieldByName('ASODOCNUM').AsString;

   dblcdTipDoc.Text := DM1.cdsQry.FieldByName('TIPDOCCOD').AsString;
   dblcdTipo.Text   := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
   dblcdTipSit.Text := DM1.cdsQry.FieldByName('ASOSITID').AsString;

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

   dbeTipDoc.Text := '';
   xWhere := 'TIPDOCCOD ='+QuotedStr(dblcdTipDoc.Text);
   If Length(DM1.DisplayDescrip('prvSQL', 'TGE159', 'TIPDOCCOD, TIPDOCDES', xWhere, 'TIPDOCCOD'))>0 Then
    begin
     dbeTipDoc.Text := DM1.cdsQry.FieldByName('TIPDOCDES').AsString;
    end;

   dbeTipo.Text := '';
   xWhere := 'ASOTIPID ='+QuotedStr(dblcdTipo.Text);
   If Length(DM1.DisplayDescrip('prvSQL','APO107', 'ASOTIPID, ASOTIPDES', xWhere, 'ASOTIPID'))>0 Then
    begin
     dbeTipo.Text := DM1.cdsQry.FieldByName('ASOTIPDES').AsString;
    end;

   dbeTipSit.Text := '';
   xWhere := 'ASOSITID ='+QuotedStr(dblcdTipSit.Text);
   If Length(DM1.DisplayDescrip('prvSQL', 'APO106', 'ASOSITID, ASOSITDES', xWhere, 'ASOSITID'))>0 Then
    begin
     dbeTipSit.Text := DM1.cdsQry.FieldByName('ASOSITDES').AsString;
    end;

   // Cuotas
   xSQL := 'SELECT TIPCREID, CREDID, CRECUOTA, CREANO, CREMES,'
          +' FORPAGOID, TMONID, CREFRECL,'
          +' CREMTO, CREAMORT, CREINTERES, CREFLAT,'
          +' CREMTOCOB, CRECAPITAL, CREMTOINT, CREMTOFLAT,'
          +' CREMTOEXC,'
          +' CREMONLOC, CREMONEXT, BANCOID'
          +' FROM CRE302'
          +' WHERE ASOID ='+QuotedStr(dbeAsoId.Text)
          +' AND (CREFDEV = '+QuotedStr('N')+' Or CREFDEV IS NULL)';

   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.IndexFieldNames := 'TIPCREID; CREDID; CRECUOTA';
   DM1.cdsCuotas.DataRequest(xSQL);
   DM1.cdsCuotas.Open;

   TNumericField(DM1.cdsCuotas.FieldByName('CREMTOEXC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCuotas.FieldByName('CREMTOEXC')).EditFormat    := '########0.00';

   dbgCreditos.Selected.Clear;
   dbgCreditos.Selected.Add('TIPCREID'#9'7'#9'Tipo~Crédito');
   dbgCreditos.Selected.Add('CREDID'#9'11'#9'Crédito');
   dbgCreditos.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
   dbgCreditos.Selected.Add('CREANO'#9'4'#9'Año');
   dbgCreditos.Selected.Add('CREMES'#9'4'#9'Mes');
   dbgCreditos.Selected.Add('FORPAGOID'#9'6'#9'Forma~Pago');
   dbgCreditos.Selected.Add('TMONID'#9'6'#9'Moneda');
   dbgCreditos.Selected.Add('CREMTO'#9'10'#9'Monto~Cuota');
   dbgCreditos.Selected.Add('CREMTOEXC'#9'12'#9'Monto~Exceso');
   dbgCreditos.ApplySelected;

   dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas, 'SUM(CREMTOEXC)',''), ffNumber, 10, 2);

   // Pagos sin Sustento
   xSQL := 'SELECT TIPCREID, CREDID, CRECUOTA, FOPERAC, NROOPE,'
          +' FORPAGOID, TMONID,'
          +' CREMTOCUO, CREAMORT, CREINTERES, CREFLAT,'
          +' CREMTOCOB, COBFRECL,'
          +' CREMONLOC, CREMONEXT, BANCOID'
          +' FROM CRE310'
          +' WHERE ASOID ='+QuotedStr(dbeAsoId.Text)
          +' AND FLGSSS ='+QuotedStr('S')
          +' AND TRANSINTID ='+QuotedStr('CUO')
          +' CREESTID NOT IN (''04'',''13'') '
          +' AND COBFDEV IS NULL';

   DM1.cdsTransacciones.Close;
   DM1.cdsTransacciones.IndexFieldNames := 'TIPCREID; CREDID; CRECUOTA; FOPERAC; NROOPE';
   DM1.cdsTransacciones.DataRequest(xSQL);
   DM1.cdsTransacciones.Open;

   TNumericField(DM1.cdsTransacciones.FieldByName('CREMTOCOB')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsTransacciones.FieldByName('CREMTOCOB')).EditFormat    := '########0.00';

   dbgPagos.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(CREMTOCOB)',''), ffNumber, 10, 2);

   dbgPagos.Selected.Clear;
   dbgPagos.Selected.Add('TIPCREID'#9'7'#9'Tipo~Crédito');
   dbgPagos.Selected.Add('CREDID'#9'11'#9'Crédito');
   dbgPagos.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
   dbgPagos.Selected.Add('FOPERAC'#9'10'#9'Fecha~Operación');
   dbgPagos.Selected.Add('NROOPE'#9'15'#9'Nro.~Operación');
   dbgPagos.Selected.Add('FORPAGOID'#9'15'#9'Forma~Pago');
   dbgPagos.Selected.Add('TMONID'#9'6'#9'Moneda');
   dbgPagos.Selected.Add('CREMTOCOB'#9'15'#9'Monto');
   dbgPagos.ApplySelected;

   // Reclamos
   xSQL := 'SELECT * FROM COB308'
          +' WHERE'
          +' RECLID ='+QuotedStr(DM1.cdsReclamo.FieldByName('RECLID').AsString);

   DM1.cdsReclamoDCob.Close;
   DM1.cdsReclamoDCob.IndexFieldNames := 'RECLIDD';
   DM1.cdsReclamoDCob.DataRequest(xSQL);
   DM1.cdsReclamoDCob.Open;

   dbgReclamo.Selected.Clear;
   dbgReclamo.Selected.Add('RECLIDD'#9'5'#9'Item');
   dbgReclamo.Selected.Add('TMONID'#9'6'#9'Moneda');
   dbgReclamo.Selected.Add('CREMONTO'#9'15'#9'Monto~Pago');
   dbgReclamo.Selected.Add('RECLMONTO'#9'15'#9'Monto~Reclamo');
   dbgReclamo.Selected.Add('RECLMOTID'#9'6'#9'Motivo');
   dbgReclamo.Selected.Add('RECLSITID'#9'9'#9'Situación');
   dbgReclamo.Selected.Add('RECLFINI'#9'10'#9'Fecha~Conclusión');
   dbgReclamo.Selected.Add('TIPCREID'#9'4'#9'Tipo~Crédito');
   dbgReclamo.Selected.Add('CREDID'#9'11'#9'Crédito');
   dbgReclamo.Selected.Add('CRECUOTA'#9'6'#9'Cuota');
   dbgReclamo.ApplySelected;

   TNumericField(DM1.cdsReclamoDCob.FieldByName('CREMONTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsReclamoDCob.FieldByName('CREMONTO')).EditFormat    := '########0.00';

   dbgReclamo.ColumnByName('CREMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(CREMONTO)',''), ffNumber, 10, 2);

   TNumericField(DM1.cdsReclamoDCob.FieldByName('RECLMONTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsReclamoDCob.FieldByName('RECLMONTO')).EditFormat    := '########0.00';

   dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)',''), ffNumber, 10, 2);
end;

procedure TFReclamosCob.btnBusCanClick(Sender: TObject);
begin
   pnlBusCre.Visible   := False;
   pnlCabecera.Enabled := True;
end;

procedure TFReclamosCob.btnBusOKClick(Sender: TObject);
begin
   // Buscamos la cuota
   DM1.cdsCuotas.First;
   DM1.cdsCuotas.Locate('TIPCREID; CREDID; CRECUOTA', VarArrayOf([dbeBusTip.Text, dbeBusCre.Text, dbeBusCuo.Text]), [loPartialKey]);
   PnlBusCre.Visible   := False;
   PnlCabecera.Enabled := True;
end;

procedure TFReclamosCob.dbgCreditosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   If DM1.cdsCuotas.RecordCount = 0 Then
    begin
     Beep;
     MessageDlg('No Existen Cuotas o Ya se Reclamaron', mtInformation, [mbOk], 0);
     Exit;
    end
   Else
    If HacerDrag Then dbgCreditos.BeginDrag(False);
end;

procedure TFReclamosCob.dbgCreditosbtnClick(Sender: TObject);
begin
   If DM1.cdscuotas.RecordCount = 0 Then
    begin
     Beep;
     MessageDlg('No Hay Cuotas para Buscar!!!!', mtInformation, [mbOk], 0);
     Exit;
    end;
   dbeBusTip.Clear;
   dbeBusCre.Clear;
   dbeBusCuo.Clear;

   PnlBusCre.Visible   := True;
   PnlCabecera.Enabled := False;

   dbeBusTip.SetFocus;
end;

procedure TFReclamosCob.dbgReclamoDblClick(Sender: TObject);
begin
   If DM1.cdsReclamoDCob.RecordCount = 0 Then
    begin
     Beep;
     MessageDlg('No Existen Datos a Editar', mtInformation, [mbOk], 0);
     Exit;
    end;

   wModo1 := 'M';

   pnlReclamo.Visible  := True;
   pnlCabecera.Enabled := False;

   If DM1.cdsReclamoDCob.FieldByName('FLGSSS').AsString = 'S' Then
    grCredito.ItemIndex := 1
   Else
    grCredito.ItemIndex := 0;
   grCredito.Enabled       := False;

   dblcTCredito.Enabled    := False;
   dbeNCredito.Enabled     := False;
   dbeCuota.Enabled        := False;
   dblcTMoneda.Enabled     := False;
   dblcReclSit.Enabled     := False;
   dbeMontoPagado.Enabled  := False;
   dblcReclMotId.Enabled   := False;
   dbeMontoRecl.Enabled    := False;
   dbmObservacion.Enabled  := False;

//   dbdtpfresultado.Enabled:=False;
//   dbmresultado.Enabled   :=False;

   LlenarDatosReclamoDet;

   If (DM1.cdsReclamoDCob.FieldByName('RECLSITID').AsString = '03') Or   // Concluido
      (DM1.cdsReclamoDCob.FieldByName('RECLSITID').AsString = '04') Then // No Procede
    begin
     bbtnAceptar.Enabled    := False;
     bbtnCancelar.Enabled   := True;
     bbtnNProcede.Enabled   := False;

     bbtnCancelar.SetFocus;
    end
   Else
    begin
     bbtnAceptar.Enabled    := False;
     bbtnCancelar.Enabled   := True;
     bbtnNProcede.Enabled   := True;

     bbtnNProcede.SetFocus;
    end;
end;

procedure TFReclamosCob.dbeNCreditoExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then exit;

   If (ActiveControl.Parent.Name = dbeNCredito.Parent.Name) And
      (ActiveControl.TabOrder < dbeNCredito.TabOrder) Then
    Exit;

   If Length(Trim(dbencredito.Text)) = 0 Then
    begin
     ErrorMsg('Error', 'Número de Crédito no es Válido');
     dbeNCredito.SetFocus;
     Exit;
    end;
end;

procedure TFReclamosCob.grCreditoExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;
end;

procedure TFReclamosCob.dbeCuotaExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then exit;

   If (ActiveControl.Parent.Name = dbecuota.Parent.Name) And
      (ActiveControl.TabOrder < dbecuota.TabOrder) Then
    Exit;

   If Length(Trim(dbeCuota.Text)) = 0 Then
    begin
     ErrorMsg('Error', 'Número de Cuota no es Válido');
     dbeCuota.SetFocus;
     Exit;
    end;
end;

procedure TFReclamosCob.dbgReclamoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFReclamosCob.dbgReclamoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   dbgReclamo.BeginDrag(False);
end;

procedure TFReclamosCob.bbtnBAsociadoClick(Sender: TObject);
begin
   MtxCreAso := TMant.Create(Self);
   Try
    MtxCreAso.User            := DM1.wUsuario;
    MtxCreAso.Admin           := DM1.wAdmin;
    MtxCreAso.Module          := DM1.wModulo;
    MtxCreAso.DComC           := DM1.DCOM1;
    MtxCreAso.ControlGridDisp := Fprincipal.cgdPrincipal;
    MtxCreAso.OnCreateMant    := nil;
    MtxCreAso.TableName       := 'APO201';
    MtxCreAso.ClientDataSet   := DM1.cdsAsociados;
    MtxCreAso.Filter          := '';
    MtxCreAso.Titulo 	      := 'Asociados';
    MtxCreAso.OnInsert 	      := nil;
    MtxCreAso.OnEdit 	      := OnEditAso;
    MtxCreAso.OnEdit 	      := nil;
    MtxCreAso.OnDelete 	      := nil;
    MtxCreAso.OnShow 	      := nil;
    MtxCreaso.Registros       := 30;
    MtxCreAso.SectionName     := 'BuscaApo';
    MtxCreAso.FileNameIni     := '\SOLCRE.INI';
    MtxCreAso.Execute;
   Finally
    MtxCreAso.Free;
   end;
end;

procedure TFReclamosCob.OnEditAso(Sender: TObject; MantFields: TFields);
var
   xSQL : String;
Begin
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

procedure TFReclamosCob.dbeMontoPagadoExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then exit;

   If (ActiveControl.Parent.Name = dbeMontoPagado.Parent.Name) And
      (ActiveControl.TabOrder < dbeMontoPagado.TabOrder) Then
    Exit;

   If (Length(Trim(dbemontopagado.Text)) = 0) Then
    begin
     ErrorMsg('Error', 'Monto Pagado No es Válido');
     dbeMontoPagado.SetFocus;
     Exit;
   end;
end;

procedure TFReclamosCob.dbmresultadoExit(Sender: TObject);
begin
   If bbtnNoOK.Focused Then Exit;

   If (ActiveControl.Parent.Name = dbmResultado.Parent.Name) And
      (ActiveControl.TabOrder < dbmResultado.TabOrder) Then
    Exit;
end;

procedure TFReclamosCob.dbdtpFResultadoExit(Sender: TObject);
begin
   If bbtnNoOK.Focused Then Exit;

   If (dbdtpFResultado.Date = 0) Then
    begin
     Beep;
     MessageDlg('Fecha de Conclusión no es Válida', mtInformation, [mbOk], 0);
     dbdtpFResultado.SetFocus;
     Exit;
    end;

   If (dbdtpFResultado.Date < dbdtpFReclamo.Date) Then
    begin
     Beep;
     MessageDlg('Fecha de Conclusión No Debe ser Menor a la Fecha de Reclamo', mtInformation, [mbOk], 0);
     dbdtpFResultado.SetFocus;
     Exit;
    end;
end;

procedure TFReclamosCob.dbmObservacionExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   If (ActiveControl.Parent.Name = dbmObservacion.Parent.Name) And
      (ActiveControl.TabOrder < dbmObservacion.TabOrder) Then
    Exit;
end;

procedure TFReclamosCob.dblcReclMotIdExit(Sender: TObject);
begin
   If bbtnCancelar.Focused Then Exit;

   If (ActiveControl.Parent.Name = dblcReclMotId.Parent.Name) And
      (ActiveControl.TabOrder < dblcReclMotId.TabOrder) Then
    Exit;

   DM1.cdsReclamoMotiv.SetKey;
   DM1.cdsReclamoMotiv.FieldByName('RECLMOTID').AsString := dblcReclMotId.Text;
   If not DM1.cdsReclamoMotiv.GotoKey Then
    begin
     ErrorMsg('Error', 'Motivo de Reclamo No es Válido');
     edtReclMotivo.Clear;
     dblcReclMotId.SetFocus;
     Exit;
    end;
   edtReclMotivo.Text := DM1.cdsReclamoMotiv.FieldByName('RECLMOTDES').AsString;
end;

procedure TFReclamosCob.dbgReclamoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   xSuma : Double;
begin
   If DM1.wModo = 'A' Then
    begin
     If (Key = VK_Delete) And (ssCtrl in Shift) Then
      begin
       If (DM1.cdsReclamoDCob.FieldByName('RECLSITID').AsString = '01') Then
        begin
         If MessageDlg('¿Eliminar Detalle ?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes Then
          begin
           xSuma := DM1.OperClientDataSet(DM1.cdsReclamoDCob,'SUM(RECLMONTO)','');
           dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(xSuma, ffNumber, 10, 2);
           DM1.cdsReclamo.FieldByName('RECLTOTAL').AsFloat  := xSuma;

           // Actualiza datos en cuota
           DM1.cdsCuotas.SetKey;
           DM1.cdsCuotas.FieldByName('TIPCREID').AsString  := DM1.cdsReclamoDCob.FieldByName('TIPCREID').AsString;
           DM1.cdsCuotas.FieldByName('CREDID').AsString    := DM1.cdsReclamoDCob.FieldByName('CREDID').AsString;
           DM1.cdsCuotas.FieldByName('CRECUOTA').AsInteger := DM1.cdsReclamoDCob.FieldByName('CRECUOTA').AsInteger;
           If (DM1.cdsCuotas.GotoKey) And
              (DM1.cdsCuotas.FieldByName('CREFRECL').AsString = 'S') Then
            begin
             DM1.cdsCuotas.Edit;
             DM1.cdsCuotas.FieldByName('CREFRECL').Clear;
             DM1.cdsCuotas.Post;
            end;

           // Actualiza datos en pagos sin sustento
           DM1.cdsTransacciones.SetKey;
           If DM1.cdsReclamoDCob.FieldByName('TIPCREID').IsNull Then
            DM1.cdsTransacciones.FieldByName('TIPCREID').Clear
           Else
            DM1.cdsTransacciones.FieldByName('TIPCREID').AsString := DM1.cdsReclamoDCob.FieldByName('TIPCREID').AsString;

           If DM1.cdsReclamoDCob.FieldByName('CREDID').IsNull Then
            DM1.cdsTransacciones.FieldByName('CREDID').Clear
           Else
            DM1.cdsTransacciones.FieldByName('CREDID').AsString := DM1.cdsReclamoDCob.FieldByName('CREDID').AsString;

           If DM1.cdsReclamoDCob.FieldByName('CRECUOTA').IsNull Then
            DM1.cdsTransacciones.FieldByName('CRECUOTA').Clear
           Else
            DM1.cdsTransacciones.FieldByName('CRECUOTA').AsInteger := DM1.cdsReclamoDCob.FieldByName('CRECUOTA').AsInteger;

           DM1.cdsTransacciones.FieldByName('FOPERAC').AsDateTime := DM1.cdsReclamoDCob.FieldByName('TRANSFOPE').AsDateTime;
           DM1.cdsTransacciones.FieldByName('NROOPE').AsString    := DM1.cdsReclamoDCob.FieldByName('TRANSNOPE').AsString;
           If (DM1.cdsTransacciones.GotoKey) And
              (DM1.cdsTransacciones.FieldByName('COBFRECL').AsString = 'S') Then
            begin
             DM1.cdsTransacciones.Edit;
             DM1.cdsTransacciones.FieldByName('COBFRECL').Clear;
             DM1.cdsTransacciones.Post;
            end;

           DM1.cdsReclamoDCob.Delete;

           dbgReclamo.ColumnByName('RECLMONTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)', ''), ffNumber, 10, 2);
           dbgReclamo.ColumnByName('CREMONTO').FooterValue   := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(CREMONTO)', ''), ffNumber, 10, 2);
           dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas, 'SUM(CREMTOEXC)', ''), ffNumber, 10, 2);
           dbgPagos.ColumnByName('CREMTOCOB').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(CREMTOCOB)', ''),
           ffNumber, 10, 2);
          end;
         end;
      end;
   end;
end;

procedure TFReclamosCob.dbeAsoNomExit(Sender: TObject);
var
   xSQL : String;
begin
   If Z2bbtnCancel.Focused Then Exit;

   Screen.Cursor := crHourGlass;
   If (Trim(dbeAsoNom.Text) <> '') Then
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

procedure TFReclamosCob.dbeCodigoModularExit(Sender: TObject);
var
   xSQL : String;
begin
   If Z2bbtnCancel.Focused Then Exit;

   Screen.Cursor := crHourGlass;
   If (Trim(dbeCodigoModular.Text) <>'') Then
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
       Exit
      end;

     If DM1.cdsQry.RecordCount = 1 Then
      LlenarDatosAsociado
     Else
      CargaFiltro('ASOCODMOD LIKE '+QuotedStr(Trim(dbeCodigoModular.Text+'%')));

     dbeAsoNom.Enabled := False;
    end;
   Screen.Cursor := crDefault;
end;

procedure TFReclamosCob.CargaFiltro(xCampo : String);
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
    FPrincipal.Mtx.Registros       := 30;
    FPrincipal.Mtx.SectionName	   := 'AsociadosX';
    FPrincipal.Mtx.FileNameIni     := '\SOLCOB.INI';
    FPrincipal.Mtx.OnEdit          := OnEditAso;
    FPrincipal.Mtx.Execute;
   Finally
    DM1.cdsAsoX.Close;
    FPrincipal.Mtx.Free;
   end;
   DM1.cdsAsoX.Close;
end;

procedure TFReclamosCob.bbtnOKClick(Sender: TObject);
begin
   DM1.cdsReclamoDCob.FieldByName('RECLSITID').AsString := '04';
   DM1.cdsReclamoDCob.FieldByName('USUARIO').AsString   := DM1.wUsuario;
   DM1.cdsReclamoDCob.FieldByName('FREG').AsDateTime    := Date;
   DM1.cdsReclamoDCob.FieldByName('HREG').AsDateTime    := Date+SysUtils.Time;
   cdsPost(DM1.cdsReclamoDCob);
   DM1.cdsReclamoDCob.Post;

   // Actualiza datos en cuota
   DM1.cdsCuotas.SetKey;
   DM1.cdsCuotas.FieldByName('TIPCREID').AsString  := DM1.cdsReclamoDCob.FieldByName('TIPCREID').AsString;
   DM1.cdsCuotas.FieldByName('CREDID').AsString    := DM1.cdsReclamoDCob.FieldByName('CREDID').AsString;
   DM1.cdsCuotas.FieldByName('CRECUOTA').AsInteger := DM1.cdsReclamoDCob.FieldByName('CRECUOTA').AsInteger;
   If (DM1.cdsCuotas.GotoKey) And
      (DM1.cdsCuotas.FieldByName('CREFRECL').AsString = 'S') Then
    begin
     DM1.cdsCuotas.Edit;
     DM1.cdsCuotas.FieldByName('CREFRECL').Clear;
     DM1.cdsCuotas.Post;
    end;

   // Actualiza datos en pagos sin sustento
   DM1.cdsTransacciones.SetKey;
   If DM1.cdsReclamoDCob.FieldByName('TIPCREID').IsNull Then
    DM1.cdsTransacciones.FieldByName('TIPCREID').Clear
   Else
    DM1.cdsTransacciones.FieldByName('TIPCREID').AsString := DM1.cdsReclamoDCob.FieldByName('TIPCREID').AsString;

   If DM1.cdsReclamoDCob.FieldByName('CREDID').IsNull Then
    DM1.cdsTransacciones.FieldByName('CREDID').Clear
   Else
    DM1.cdsTransacciones.FieldByName('CREDID').AsString := DM1.cdsReclamoDCob.FieldByName('CREDID').AsString;

   If DM1.cdsReclamoDCob.FieldByName('CRECUOTA').IsNull Then
    DM1.cdsTransacciones.FieldByName('CRECUOTA').Clear
   Else
    DM1.cdsTransacciones.FieldByName('CRECUOTA').AsInteger := DM1.cdsReclamoDCob.FieldByName('CRECUOTA').AsInteger;

   If (DM1.cdsTransacciones.GotoKey) And
      (DM1.cdsTransacciones.FieldByName('COBFRECL').AsString = 'S') Then
    begin
     DM1.cdsTransacciones.Edit;
     DM1.cdsTransacciones.FieldByName('COBFRECL').Clear;
     DM1.cdsTransacciones.Post;
    end;

   dbgReclamo.ColumnByName('RECLMONTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)',''), ffNumber, 10, 2);
   dbgReclamo.ColumnByName('CREMONTO').FooterValue   := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(CREMONTO)',''), ffNumber, 10, 2);
   dbgCreditos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCuotas, 'SUM(CREMTOEXC)',''), ffNumber, 10, 2);
   dbgPagos.ColumnByName('CREMTOCOB').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdstransacciones, 'SUM(CREMTOCOB)',''), ffNumber, 10, 2);

   pnlNoProcede.Visible := False;
   pnlReclamo.Enabled   := True;
   pnlReclamo.Visible   := False;
   pnlCabecera.Enabled  := True;
end;

procedure TFReclamosCob.bbtnNoOKClick(Sender: TObject);
begin
   pnlNoProcede.Visible := False;
   pnlReclamo.Enabled   := True;
end;

procedure TFReclamosCob.dbgPagosEndDrag(Sender, Target: TObject; X,
  Y: Integer);
var
   xWhere, xTip, xCre, xCuo : String;
begin
   If DM1.cdsTransacciones.FieldByName('TIPCREID').IsNull Then
    xTip := 'NULL'
   Else
    xTip := QuotedStr(DM1.cdsTransacciones.FieldByName('TIPCREID').AsString);

   If DM1.cdsTransacciones.FieldByName('CREDID').IsNull Then
    xCre := ' NULL'
   Else
    xCre := QuotedStr(DM1.cdsTransacciones.FieldByName('CREDID').AsString);

   If DM1.cdsTransacciones.FieldByName('CRECUOTA').IsNull Then
    xCuo := 'NULL'
   Else
    xCuo := DM1.cdsTransacciones.FieldByName('CRECUOTA').AsString;

   If Target = dbgReclamo Then
    begin
     wFuente := 'PAG';
      // Valida si ya se esta considerando un reclamo para esa cuota en DB
     xWhere := 'TIPCREID ='+xTip
              +' AND CREDID ='+xCre
              +' AND CRECUOTA ='+xCuo
              +' AND FOPERAC = TO_DATE('+QuotedStr(FormatDateTime(wFormatFecha, DM1.cdsTransacciones.FieldByName('FOPERAC').AsDateTime))+')'
              +' AND NROOPE ='+QuotedStr(DM1.cdsTransacciones.FieldByName('NROOPE').AsString)
              +' CREESTID NOT IN (''04'',''13'') '
              +' AND COBFRECL ='+QuotedStr('S');
      If Length(DM1.DisplayDescrip('prvTGE', 'CRE310', 'TIPCREID, COBFRECL, COBFDEV', xWhere, 'TIPCREID'))>0 Then
       begin
        If (DM1.cdsQry.FieldByName('COBFRECL').AsString = 'S') Then
         begin
          ErrorMsg('Error', 'Cuota ya fué Reclamada !');
          Exit;
         end;

        If (DM1.cdsQry.FieldByName('COBFDEV').AsString = 'S') Then
         begin
          ErrorMsg('Error', 'Cuota ya fué Devuelta !');
          Exit;
         end;
      end;

      If (DM1.cdsTransacciones.FieldByName('COBFRECL').AsString = 'S') Then
       begin
        ErrorMsg('Error', 'Cuota ya fué Reclamada !');
        Exit;
       end;

      // Prepara un registro nuevo para registar un reclamo
      wModo1 := 'A';

      DM1.cdsReclamoDCob.Append;
      DM1.cdsReclamoDCob.FieldByName('RECLID').AsString      := DM1.cdsReclamo.FieldByName('RECLID').AsString;
      DM1.cdsReclamoDCob.FieldByName('RECLIDD').AsString     := DM1.StrZero(IntToStr(DM1.cdsReclamoDCob.RecordCount+1), DM1.cdsReclamoDCob.FieldByName('RECLIDD').Size);
      DM1.cdsReclamoDCob.FieldByName('ASOID').AsString       := dbeAsoId.Text;
      DM1.cdsReclamoDCob.FieldByName('TIPCREID').AsString    := DM1.cdsTransacciones.FieldByName('TIPCREID').AsString;
      DM1.cdsReclamoDCob.FieldByName('CREDID').AsString      := DM1.cdsTransacciones.FieldByName('CREDID').AsString;
      DM1.cdsReclamoDCob.FieldByName('CRECUOTA').AsString    := DM1.cdsTransacciones.FieldByName('CRECUOTA').AsString;
      DM1.cdsReclamoDCob.FieldByName('TRANSNOPE').AsString   := DM1.cdsTransacciones.FieldByName('NROOPE').AsString;
      DM1.cdsReclamoDCob.FieldByName('TRANSFOPE').AsDateTime := DM1.cdsTransacciones.FieldByName('FOPERAC').AsDateTime;
      DM1.cdsReclamoDCob.FieldByName('TMONID').AsString      := 'N';
      DM1.cdsReclamoDCob.FieldByName('CREMONTO').AsFloat     := DM1.cdsTransacciones.FieldByName('CREMTOCOB').AsFloat;
      DM1.cdsReclamoDCob.FieldByName('RECLMONTO').AsFloat    := DM1.cdsTransacciones.FieldByName('CREMTOCOB').AsFloat;
      DM1.cdsReclamoDCob.FieldByName('RECLSITID').AsString   := '01'; // 01-En Tramite
      DM1.cdsReclamoDCob.FieldByName('RECLFINI').AsDateTime  := DM1.cdsReclamo.FieldByName('FRECLA').AsDateTime;
      DM1.cdsReclamoDCob.FieldByName('FLGSSS').AsString     := 'S';

      LlenarDatosReclamoDet;

      pnlReclamo.Visible     := True;
      pnlCabecera.Enabled    := False;

      grCredito.Enabled      := False;
      grCredito.ItemIndex    := 0;
      dblcTCredito.Enabled   := False;
      dbeNCredito.Enabled    := False;
      dbeCuota.Enabled       := False;
      dblcTMoneda.Enabled    := False;
      dblcReclSit.Enabled    := False;
      dbeMontoPagado.Enabled := False;
      dblcReclMotId.Enabled  := True;
      dbeMontoRecl.Enabled   := False;
      dbmObservacion.Enabled := True;

//      dbdtpfresultado.Enabled:=False;
//      dbmresultado.Enabled   :=False;

      bbtnCancelar.Enabled   := True;
      bbtnAceptar.Enabled    := True;
      bbtnNProcede.Enabled   := False;

      dblcReclMotId.SetFocus;

      dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(RECLMONTO)', ''), ffNumber, 10, 2);
      dbgReclamo.ColumnByName('CREMONTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReclamoDCob, 'SUM(CREMONTO)', ''), ffNumber, 10, 2);
      dbgPagos.ColumnByName('CREMTOCOB').FooterValue   := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(CREMTOCOB)', ''), ffNumber, 10, 2);
   end;
end;

procedure TFReclamosCob.dbgPagosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFReclamosCob.dbgPagosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   If DM1.cdsTransacciones.RecordCount = 0 Then
    begin
     Beep;
     MessageDlg('No Existen Pagos o Ya se Reclamaron', mtInformation, [mbOk], 0);
     Exit;
    end
   Else
    If HacerDrag Then dbgPagos.BeginDrag(False);
end;

procedure TFReclamosCob.dblcReclMotIdNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If not Accept Then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

end.

