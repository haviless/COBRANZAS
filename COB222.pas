unit COB222;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdbdatetimepicker, Buttons, Wwdbigrd, Grids, Wwdbgrid, db,
  ComCtrls, wwriched, ExtCtrls, DBCtrls, fcButton, fcImgBtn, fcShapeBtn,
  Mask, wwdbedit, wwdblook, Wwdbspin, Wwdotdot, Wwdbdlg, ppBands, ppCtrls,
  variants, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,  ppReport;

type
  TFBoletaCob = class(TForm)
    pnlCabecera: TPanel;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    pnlAso: TPanel;
    dbecodigo: TwwDBEdit;
    lblApeNom: TLabel;
    dbeApeNom: TwwDBEdit;
    pnlBoletaD: TPanel;
    dbgBoletaDCob: TwwDBGrid;
    wwIButton1: TwwIButton;
    pnlCod: TPanel;
    dblctipbol: TwwDBLookupCombo;
    edttipbol: TEdit;
    dbenumbol: TwwDBEdit;
    pnlMov: TPanel;
    dbgMovCob: TwwDBGrid;
    pnlBoletaDCob: TPanel;
    StaticText2: TStaticText;
    Panel5: TPanel;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    dblcconcid: TwwDBLookupCombo;
    edtconcdes: TEdit;
    lblConcep: TLabel;
    dbedescri: TwwDBEdit;
    lblRefer: TLabel;
    dbeitem: TwwDBEdit;
    lblItem: TLabel;
    dblctipcid: TwwDBLookupCombo;
    edttpcdes: TEdit;
    lblTipo: TLabel;
    dbemto: TwwDBEdit;
    lblmto: TLabel;
    dbeporc: TwwDBEdit;
    lblporc: TLabel;
    dbemtn: TwwDBEdit;
    lblmtn: TLabel;
    dbdtpfecha: TwwDBDateTimePicker;
    dbenumofi: TwwDBEdit;
    Z2bbtnAceptara: TfcShapeBtn;
    lblMovCob: TLabel;
    lblBOlPago: TLabel;
    lblCod: TLabel;
    lblFecha: TLabel;
    lblNBol: TLabel;
    lblTBol: TLabel;
    lblNOficio: TLabel;
    lblDetalleBol: TLabel;
    dblcdMonedaC: TwwDBLookupCombo;
    dbeMonedaC: TwwDBEdit;
    lblTMon: TLabel;
    lblTCambio: TLabel;
    dbeTCambio: TwwDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure wwIButton1Click(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgMovCobEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgMovCobMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgBoletaDCobKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure dblcconcidExit(Sender: TObject);
    procedure dbedescriExit(Sender: TObject);
    procedure dbemtnExit(Sender: TObject);
    procedure dbemtoExit(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure dblctipbolExit(Sender: TObject);
    procedure dbgBoletaDCobDblClick(Sender: TObject);
    procedure dbgMovCobDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgBoletaDCobDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure Z2bbtnAceptaraClick(Sender: TObject);
    procedure dbdtpfechaExit(Sender: TObject);
    procedure dblcdMonedaCExit(Sender: TObject);
  private
    HacerDrag : Boolean;
    { Private declarations }
    //procedure LlenarDatosRepUProc;
    //procedure LlenarDatosRepTransporte;
    //procedure LlenarDatosRepPersonal;
    procedure LlenarDatosRecaudador;
    procedure LlenarDatosBoletaDet;
  public
    { Public declarations }
    wModoUPro : String;
  end;

var
  FBoletaCob : TFBoletaCob;
  xCrea : boolean;
  wfuente,wmodo1:string;
  sFecha, sSQL : string;

implementation

uses COBDM1, MsgDlgs;
{$R *.DFM}

procedure TFBoletaCob.FormActivate(Sender: TObject);
var
  xSQL : string;
begin
  DM1.cdsBoletaDCob.close;
  DM1.cdsCobxUse.close;

  // Llena cds Tipo de Boleta
  dblctipbol.selected.clear;
  dblctipbol.selected.add('TIPBID'#9'2'#9'Id');
  dblctipbol.selected.add('TIPBDES'#9'35'#9'Descripción');

  // Llena cds Concepto
  dblcConcid.selected.clear;
  dblcConcid.selected.add('CONCID'#9'4'#9'Id');
  dblcConcid.selected.add('CONCDES'#9'30'#9'Descripción');

  edttipbol.text:='';

  if dm1.wModo='M' then
  begin
    DM1.cdsBoletaCob.Edit;

    pnlCod.Enabled          :=False;
    pnlAso.Enabled          :=False;
    pnlMov.Enabled          :=True;
    pnlBoletaD.Enabled      :=True;

    z2bbtnaceptar.Enabled :=True;
    z2bbtncancel.Enabled  :=True;

    LlenarDatosRecaudador;

    z2bbtncancel.setfocus;
  end;

  if dm1.wModo='A' then
  begin
    DM1.cdsBoletaCob.Insert;
    pnlCod.Enabled        :=True;
    pnlAso.Enabled        :=False;
    pnlMov.Enabled        :=True;
    pnlBoletaD.Enabled    :=True;
    HacerDrag             :=True;
    z2bbtnaceptar.Enabled :=True;
    z2bbtncancel.Enabled  :=True;
    dbdtpfechaExit(Sender);

    DM1.cdsBoletaCob.fieldbyname('BOLFEMIS').AsDateTime:=date;

    xSQL := 'SELECT MAX(CAST(BOLRNUMB AS INTEGER)) NUEVOBOL FROM COB208';
    DM1.FiltraCds(DM1.cdsQry, xSQL);
    if DM1.cdsQry.FieldByName('NUEVOBOL').AsString <> '' then
      DM1.cdsBoletaCob.FieldByName('BOLRNUMB').AsString :=
      DM1.StrZero( IntToStr(StrToInt(DM1.cdsQry.FieldByName('NUEVOBOL').AsString)+1), DM1.cdsBoletaCob.FieldByName('BOLRNUMB').Size)
    else
      DM1.cdsBoletaCob.FieldByName('BOLRNUMB').AsString := DM1.StrZero('1', DM1.cdsBoletaCob.FieldByName('BOLRNUMB').Size);

    dblctipbol.setfocus;
  end;

  // Movimientos de Cobranza
  xSQL:='SELECT RCOBANO, RCOBMES, '+
        'BANCOID, AGENBCOID, RCOBFOPE, RCOBNOPE, CPAGOAPO, RCOBLIQ, '+
        'BOLRNUMB, BOLRNUMBD '+
        'FROM COB301 '+
        'WHERE REPRID='+quotedstr(Dm1.cdsRepresentante.fieldbyname('REPRID').AsString)+' '+
        'AND RCOBFIN='+quotedstr('S')+' '+
        'AND NVL(RCOBLIQ,''XX'')=''XX''';
  DM1.cdsCobxUse.Close;
  DM1.cdsCobxUse.indexfieldnames:='BOLRNUMB;BOLRNUMBD';
  DM1.cdsCobxUse.datarequest(xSQL);
  DM1.cdsCobxUse.open;

  dbgMovCob.Selected.Clear;
  dbgMovCob.Selected.Add('RCOBANO'#9'4'#9'Año');
  dbgMovCob.Selected.Add('RCOBMES'#9'4'#9'Mes');
  dbgMovCob.Selected.Add('BANCOID'#9'6'#9'Banco');
  dbgMovCob.Selected.Add('AGENBCOID'#9'8'#9'Agencia');
  dbgMovCob.Selected.Add('RCOBFOPE'#9'10'#9'Fecha~Operación');
  dbgMovCob.Selected.Add('RCOBNOPE'#9'15'#9'Número~Operación');
  dbgMovCob.Selected.Add('CPAGOAPO'#9'15'#9'Monto~Aporte');
  dbgMovCob.datasource:=DM1.dsCobxUse;

  TNumericField(DM1.cdsCobxUse.FieldByName('CPAGOAPO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsCobxUse.FieldByName('CPAGOAPO')).EditFormat:='########0.00';
  dbgMovCob.ColumnByName('CPAGOAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCobxUse,'SUM(CPAGOAPO)',''),ffNumber, 10, 2);

  // Detalle de Boleta de Pago
  xSQL:='SELECT * FROM COB209 '+
        'WHERE REPRID='+quotedstr(Dm1.cdsRepresentante.fieldbyname('REPRID').AsString)+' '+
        'AND BOLRNUMB='+quotedstr(dbenumbol.text);//+' ORDER BY REPRID, TIPBID, BOLRNUMB, CONCID';
  DM1.cdsBoletaDCob.Close;
  DM1.cdsBoletaDCob.indexfieldnames:='BOLRNUMBD;CONCID';
  DM1.cdsBoletaDCob.datarequest(xSQL);
  DM1.cdsBoletaDCob.open;

  dbgBoletaDCob.Selected.Clear;
  dbgBoletaDCob.Selected.Add('BOLRNUMBD'#9'6'#9'Item');
  dbgBoletaDCob.Selected.Add('TIPCID'#9'9'#9'Tipo~Concepto');
  dbgBoletaDCob.Selected.Add('CONCID'#9'6'#9'Concep');
  dbgBoletaDCob.Selected.Add('BOLRREF'#9'30'#9'Referencia');
  dbgBoletaDCob.Selected.Add('CTANRO'#9'12'#9'Nro. Cuenta~Corriente');
  dbgBoletaDCob.Selected.Add('CONCMTO'#9'12'#9'Monto~Cobrado');
  dbgBoletaDCob.Selected.Add('CONCPORC'#9'10'#9'Porcentaje');
  dbgBoletaDCob.Selected.Add('CONCMTN'#9'12'#9'Monto~Detalle');
  dbgBoletaDCob.Selected.Add('SIGNO'#9'5'#9'Signo');
  dbgBoletaDCob.datasource:=DM1.dsBoletaDCob;

  TNumericField(DM1.cdsBoletaDCob.FieldByName('CONCMTN')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsBoletaDCob.FieldByName('CONCMTN')).EditFormat:='########0.00';
  TNumericField(DM1.cdsBoletaDCob.FieldByName('CONCPORC')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsBoletaDCob.FieldByName('CONCPORC')).EditFormat:='########0.00';
  TNumericField(DM1.cdsBoletaDCob.FieldByName('CONCMTO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsBoletaDCob.FieldByName('CONCMTO')).EditFormat:='########0.00';

  if dblctipbol.text='L' then
    dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('+'))-
                                                                     DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('-')),
                                                                     ffNumber, 10, 2)
  else
  if dblctipbol.text='A' then
    dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)',''),ffNumber, 10, 2)
  else
    dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := '0.00';
end;

procedure TFBoletaCob.Z2bbtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFBoletaCob.wwIButton1Click(Sender: TObject);
begin
  if Dm1.cdsBoletaCob.fieldbyname('BOLLIQ').AsString = 'S' then
    Exit;
  //if DM1.wModo='A' then
  //begin
    wfuente:='';
    wmodo1:='A';

    edtconcdes.text:='';
    edttpcdes.text:='';
    pnlBoletaDCob.Height:=162;
    pnlBoletaDCob.Left  :=51;
    pnlBoletaDCob.Top   :=278;
    pnlBoletaDCob.visible  :=True;
    pnlCabecera.Enabled    :=False;
    dbeitem.enabled        :=False;
    dblcconcid.enabled     :=True;
    dbedescri.Enabled      :=True;
    dblctipcid.enabled     :=False;
    lblmto.visible         :=False;
    dbemto.visible         :=False;
    dbemto.enabled         :=True;
    lblporc.visible        :=False;
    dbeporc.visible        :=False;
    dbeporc.enabled        :=True;
    lblmtn.visible         :=False;
    dbemtn.visible         :=False;
    dbemtn.enabled         :=True;
    bbtnCancelar.Enabled   :=True;
    bbtnAceptar.Enabled    :=True;
    dblcconcid.SetFocus;
    DM1.cdsBoletaDCob.insert;

    DM1.cdsBoletaDCob.FieldByName('BOLRNUMB').AsString   := dbenumbol.text;
    DM1.cdsBoletaDCob.FieldByName('TIPBID').AsString     := dblctipbol.text;
    DM1.cdsBoletaDCob.FieldByName('BOLRNUMBD').AsString  := DM1.StrZero(IntToStr(DM1.cdsBoletaDCob.recordcount+1), DM1.cdsBoletaDCob.FieldByName('BOLRNUMBD').Size);

    DM1.cdsBoletaDCob.FieldByName('REPRID').AsString     := dbecodigo.text;
  //end;
end;

procedure TFBoletaCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsBoletaCob.Cancel;
  DM1.cdsBoletaDCob.Cancel;
  DM1.cdsBoletaDCob.Close;
  DM1.cdsCobxUse.Cancel;
  DM1.cdsCobxUse.Close;
  DM1.cdsConcepto.filter:='';
  DM1.cdsConcepto.filtered:=false;
  DM1.cdsEjecuta.indexfieldnames:='';
end;

{procedure TFBoletaCob.LlenarDatosRepUProc;
begin
end;

procedure TFBoletaCob.LlenarDatosRepTransporte;
begin
end;}

procedure TFBoletaCob.LlenarDatosRecaudador;
var
  xwhere : string;
begin
  edttipbol.text:='';
  xwhere:='TIPBID='+quotedstr(dblctipbol.text);
  if length(DM1.DisplayDescrip('prvSQL','COB210','TIPBID,TIPBDES',xwhere,'TIPBID'))>0 then
  begin
    edttipbol.text := DM1.cdsQry.FieldByName('TIPBDES').AsString;
  end;
end;

{procedure TFBoletaCob.LlenarDatosRepPersonal;
begin
end;}

procedure TFBoletaCob.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
   begin
      if Self.ActiveControl Is TDBMemo then Exit;
  	   key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFBoletaCob.dbgMovCobEndDrag(Sender, Target: TObject; X, Y: Integer);
var
	xwhere : string;
begin
   If Target=dbgBoletaDCob then
   begin
      wfuente:='MOV';

      // Si es Adelanto no es necesario movimiento
      if (dblctipbol.text='A') then
      begin
      	showmessage('Tipo de Boleta no permite agregar movimiento de cobranza !');
         Exit;
      end;

      // Valida si ya se esta considerando un reclamo para esa cuota en DB
      xWhere:= 'RCOBFOPE=TO_DATE('+quotedstr(formatdatetime(wFormatFecha,DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsDateTime))+')'
              +' AND RCOBNOPE='+quotedstr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)
              +' AND RCOBANO='+quotedstr(DM1.cdsCobxUse.FieldByName('RCOBANO').AsString)
              +' AND RCOBMES='+quotedstr(DM1.cdsCobxUse.FieldByName('RCOBMES').AsString)
              +' AND BANCOID='+quotedstr(DM1.cdsCobxUse.FieldByName('BANCOID').AsString)
              +' AND AGENBCOID='+quotedstr(DM1.cdsCobxUse.FieldByName('AGENBCOID').AsString);
      if (DM1.DisplayDescrip('prvTGE','COB301','RCOBLIQ',xWhere,'RCOBLIQ'))='S' then
      begin
         Showmessage('Error, Movimiento ya fué Liquidado !');
         Exit;
      End;

     	If DM1.cdsCobxUse.fieldbyname('RCOBLIQ').asstring='S' then
      Begin
      	showmessage('Error, Movimiento ya fué Liquidado !');
         Exit;
      End;

      // Prepara un registro nuevo para registar una devolucion
      wmodo1:='A';

      pnlBoletaDCob.Height:=162;
      pnlBoletaDCob.Left  :=51;
      pnlBoletaDCob.Top   :=278;
      pnlBoletaDCob.visible  :=True;
      pnlCabecera.Enabled    :=False;

      dbeitem.enabled        :=False;
      dblcconcid.enabled     :=False;
      dbedescri.Enabled      :=True;
      dblctipcid.enabled     :=False;

      lblmto.visible         :=False;
      dbemto.visible         :=False;
      dbemto.enabled         :=False;

      lblporc.visible        :=False;
      dbeporc.visible        :=False;
      dbeporc.enabled        :=False;

      lblmtn.visible         :=False;
      dbemtn.visible         :=False;
      dbemtn.enabled         :=False;

      bbtnCancelar.Enabled   :=True;
      bbtnAceptar.Enabled    :=True;

      dbedescri.SetFocus;

      xwhere:='TIPO='+quotedstr('C');
      if length(dm1.DisplayDescrip('prvTGE','COB212','CONCID, TIPCID, TIPCALC, CONCPORC',xWhere,'CONCID'))>0 then
      begin
         // Si existe algún concepto
         DM1.cdsBoletaDCob.First;
         if DM1.cdsBoletaDCob.Locate('CONCID', VarArrayOf([DM1.cdsqry.FieldByName('CONCID').AsString]), [loPartialKey]) then
         begin
            DM1.cdsBoletaDCob.edit;
            DM1.cdsBoletaDCob.FieldByName('TIPCID').AsString := DM1.cdsqry.FieldByName('TIPCID').AsString;
         end
         else
         begin
            DM1.cdsBoletaDCob.insert;
            DM1.cdsBoletaDCob.FieldByName('BOLRNUMB').AsString   := DM1.cdsBoletaCob.FieldByName('BOLRNUMB').AsString;
            DM1.cdsBoletaDCob.FieldByName('TIPBID').AsString     := dblctipbol.text;
            DM1.cdsBoletaDCob.FieldByName('BOLRNUMBD').AsString  := DM1.StrZero(IntToStr(DM1.cdsBoletaDCob.recordcount+1), DM1.cdsBoletaDCob.FieldByName('BOLRNUMBD').Size);
            DM1.cdsBoletaDCob.FieldByName('REPRID').AsString     := dbecodigo.text;
            DM1.cdsBoletaDCob.FieldByName('CONCID').AsString := DM1.cdsqry.FieldByName('CONCID').AsString;
            DM1.cdsBoletaDCob.FieldByName('TIPCID').AsString := DM1.cdsqry.FieldByName('TIPCID').AsString;
         end;

         if DM1.cdsqry.FieldByName('TIPCALC').AsString='P' then
         begin
            DM1.cdsBoletaDCob.FieldByName('CONCMTO').AsFloat := DM1.cdsCobxUse.FieldByName('CPAGOAPO').AsFloat+DM1.cdsBoletaDCob.FieldByName('CONCMTO').AsFloat;
            DM1.cdsBoletaDCob.FieldByName('CONCPORC').AsFloat := DM1.cdsqry.FieldByName('CONCPORC').AsFloat;
            DM1.cdsBoletaDCob.FieldByName('CONCMTN').AsFloat := DM1.cdsBoletaDCob.FieldByName('CONCMTO').AsFloat*(DM1.cdsBoletaDCob.FieldByName('CONCPORC').AsFloat/100);

            lblmto.visible         :=True;
            dbemto.visible         :=True;
            dbemto.enabled         :=False;
            lblporc.visible        :=True;
            dbeporc.visible        :=True;
            dbeporc.enabled        :=False;
            lblmtn.visible         :=True;
            dbemtn.visible         :=True;
            dbemtn.enabled         :=False;
         end
         else
         begin
            DM1.cdsBoletaDCob.FieldByName('CONCMTO').AsFloat := DM1.cdsCobxUse.FieldByName('CPAGOAPO').AsFloat+DM1.cdsBoletaDCob.FieldByName('CONCMTO').AsFloat;
            DM1.cdsBoletaDCob.FieldByName('CONCPORC').AsFloat := 0;
            DM1.cdsBoletaDCob.FieldByName('CONCMTN').AsFloat := DM1.cdsBoletaDCob.FieldByName('CONCMTO').AsFloat;

            lblmto.visible         :=False;
            dbemto.visible         :=False;
            dbemto.enabled         :=False;
            lblporc.visible        :=False;
            dbeporc.visible        :=False;
            dbeporc.enabled        :=False;
            lblmtn.visible         :=True;
            dbemtn.visible         :=True;
            dbemtn.enabled         :=False;
         end;

         xwhere:='TIPCID='+quotedstr(DM1.cdsqry.FieldByName('TIPCID').AsString);
         if length(dm1.DisplayDescrip('prvTGE','COB211','TIPCID,SIGNO',xWhere,'TIPCID'))>0 then
         begin
            DM1.cdsBoletaDCob.FieldByName('SIGNO').AsString := DM1.cdsqry.FieldByName('SIGNO').AsString;
         end;
      end;

      LlenarDatosBoletaDet;

      dbgMovCob.ColumnByName('CPAGOAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCobxUse,'SUM(CPAGOAPO)',''),ffNumber, 10, 2);
      if dblctipbol.text='L' then
         dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('+'))-
                                                                          DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('-')),
                                                                          ffNumber, 10, 2)
      else
         dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)',''),ffNumber, 10, 2);
   end;
end;

procedure TFBoletaCob.dbgMovCobMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if DM1.cdsCobxUse.RecordCount > 0 then
    dbgMovCob.BeginDrag(False)
  else
    showmessage('No Existen Registros');
end;

procedure TFBoletaCob.LlenarDatosBoletaDet;
var
  xwhere : string;
begin
  xwhere :='CONCID='+quotedstr(dblcconcid.text);
  edtconcdes.Text:=DM1.DisplayDescrip('prvSQL','COB212','CONCDES',xWhere,'CONCDES');

  xwhere :='TIPCID='+quotedstr(dblctipcid.text);
  edttpcdes.Text:=DM1.DisplayDescrip('prvSQL','COB211','TIPCDES',xWhere,'TIPCDES');
end;

procedure TFBoletaCob.dbgBoletaDCobKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_Delete) and (ssCtrl in Shift) then
  begin
    if DM1.wModo='A' then
    begin
      if MessageDlg('¿Eliminar Detalle ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        // Actualiza datos en movimiento de cobranza
        DM1.cdsCobxUse.setkey;
        DM1.cdsCobxUse.fieldbyname('BOLRNUMB').AsString:=DM1.cdsBoletaDCob.FieldByName('BOLRNUMB').AsString;
        DM1.cdsCobxUse.fieldbyname('BOLRNUMBD').AsString:=DM1.cdsBoletaDCob.FieldByName('BOLRNUMBD').AsString;
        if (DM1.cdsCobxUse.Gotokey) and
           (DM1.cdsCobxUse.fieldbyname('RCOBLIQ').AsString='S') then
        begin
          DM1.cdsCobxUse.Edit;
          DM1.cdsCobxUse.FieldByName('RCOBLIQ').Clear;
          DM1.cdsCobxUse.Post;
        end;

        DM1.cdsBoletaDCob.Delete;

        dbgMovCob.ColumnByName('CPAGOAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCobxUse,'SUM(CPAGOAPO)',''),ffNumber, 10, 2);
        if dblctipbol.text='L' then
          dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('+'))-
                                                                           DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('-')),
                                                                           ffNumber, 10, 2)
        else
          dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)',''),ffNumber, 10, 2);
      end;
    end;
  end;
end;

procedure TFBoletaCob.bbtnCancelarClick(Sender: TObject);
begin
  DM1.cdsBoletaDcob.Cancel;
  pnlBoletaDCob.Visible   :=False;
  pnlCabecera.Enabled:=True;
end;

procedure TFBoletaCob.dblcconcidExit(Sender: TObject);
var
  xwhere : string;
begin
  if bbtnCancelar.Focused then exit;

  if (activecontrol.parent.name=dblcconcid.parent.name) and
     (activecontrol.taborder<dblcconcid.taborder) then
    exit;

  DM1.cdsConcepto.setkey;
  DM1.cdsConcepto.fieldbyname('CONCID').AsString:=dblcconcid.text;
  if not DM1.cdsConcepto.gotokey then
  begin
    showmessage('Concepto no es válido');
    edtconcdes.text:='';
    dblcconcid.setfocus;
    exit;
  end;
  edtconcdes.text:=DM1.cdsConcepto.fieldbyname('CONCDES').AsString;

  lblmto.visible         :=False;
  dbemto.visible         :=False;
  dbemto.enabled         :=False;
  lblporc.visible        :=False;
  dbeporc.visible        :=False;
  dbeporc.enabled        :=False;
  lblmtn.visible         :=False;
  dbemtn.visible         :=False;
  dbemtn.enabled         :=False;

  DM1.cdsBoletaDCob.fieldbyname('TIPCID').AsString:=DM1.cdsConcepto.FieldByName('TIPCID').AsString;
  DM1.cdsBoletaDCob.fieldbyname('TIPCALC').AsString:=DM1.cdsConcepto.FieldByName('TIPCALC').AsString;

  xwhere :='TIPCID='+quotedstr(DM1.cdsConcepto.FieldByName('TIPCID').AsString);
  if length(dm1.DisplayDescrip('prvTGE','COB211','TIPCID,TIPCDES,SIGNO',xWhere,'TIPCID'))>0 then
  begin
    edttpcdes.Text:=DM1.cdsqry.FieldByName('TIPCDES').AsString;

    DM1.cdsBoletaDCob.FieldByName('SIGNO').AsString := DM1.cdsqry.FieldByName('SIGNO').AsString;
  end;

  if DM1.cdsConcepto.FieldByName('TIPCALC').AsString='P' then
  begin
    DM1.cdsBoletaDCob.FieldByName('CONCMTO').AsFloat := 0;
    DM1.cdsBoletaDCob.FieldByName('CONCPORC').AsFloat := DM1.cdsConcepto.FieldByName('CONCPORC').AsFloat;
    DM1.cdsBoletaDCob.FieldByName('CONCMTN').AsFloat := 0;

    lblmto.visible         :=True;
    dbemto.visible         :=True;
    dbemto.enabled         :=True;
    lblporc.visible        :=True;
    dbeporc.visible        :=True;
    dbeporc.enabled        :=False;
    lblmtn.visible         :=True;
    dbemtn.visible         :=True;
    dbemtn.enabled         :=False;
  end
  else
  begin
    DM1.cdsBoletaDCob.FieldByName('CONCMTO').AsFloat := 0;
    DM1.cdsBoletaDCob.FieldByName('CONCPORC').AsFloat:= 0;
    DM1.cdsBoletaDCob.FieldByName('CONCMTN').AsFloat := 0;

    lblmto.visible         :=False;
    dbemto.visible         :=False;
    dbemto.enabled         :=False;
    lblporc.visible        :=False;
    dbeporc.visible        :=False;
    dbeporc.enabled        :=False;
    lblmtn.visible         :=True;
    dbemtn.visible         :=True;
    dbemtn.enabled         :=True;
  end;
end;

procedure TFBoletaCob.dbedescriExit(Sender: TObject);
begin
  if bbtnCancelar.Focused then exit;

  if (activecontrol.parent.name=dbedescri.parent.name) and
     (activecontrol.taborder<dbedescri.taborder) then
    exit;
end;

procedure TFBoletaCob.dbemtnExit(Sender: TObject);
begin
  if bbtnCancelar.Focused then exit;

  if (activecontrol.parent.name=dbemtn.parent.name) and
     (activecontrol.taborder<dbemtn.taborder) then
    exit;

  if (length(trim(dbemtn.text))=0) or
     (strtofloat(dbemtn.text)=0) then
  begin
    showmessage('Monto Detalle no es valido');
    dbemtn.setfocus;
    exit;
  end;
end;

procedure TFBoletaCob.dbemtoExit(Sender: TObject);
begin
   if bbtnCancelar.Focused then exit;

   if (activecontrol.parent.name=dbemto.parent.name) and
      (activecontrol.taborder<dbemto.taborder) then
      exit;

   if (length(trim(dbemto.text))=0) or
      (strtofloat(dbemto.text)>0) then
   begin
      showmessage('Monto Base no es valido');
      dbemto.setfocus;
      exit;
   end;

   DM1.cdsBoletaDCob.fieldbyname('CONCMTN').AsFloat:=(strtofloat(dbemto.text)/100)*DM1.cdsBoletaDCob.fieldbyname('CONCMTO').AsFloat
end;

procedure TFBoletaCob.bbtnAceptarClick(Sender: TObject);
begin
   Screen.Cursor:=crHourGlass;

   if (wfuente='MOV') then
   begin
      DM1.cdsCobxUse.Edit;
      DM1.cdsCobxUse.FieldByName('RCOBLIQ').AsString:='S';
      DM1.cdsCobxUse.FieldByName('BOLRNUMB').AsString:=dbenumbol.text;
      DM1.cdsCobxUse.FieldByName('BOLRNUMBD').AsString:=dbeitem.text;
      DM1.cdsCobxUse.Post;
   end;

   DM1.cdsBoletaDcob.FieldByName('USUARIO').AsString:=DM1.wUsuario;
   DM1.cdsBoletaDcob.FieldByName('FREG').AsDateTime:=Date;
   DM1.cdsBoletaDcob.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;
   cdspost(DM1.cdsBoletaDcob);
   DM1.cdsBoletaDcob.post;

   dbgMovCob.ColumnByName('CPAGOAPO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsCobxUse,'SUM(CPAGOAPO)',''),ffNumber, 10, 2);

   if dblctipbol.text='L' then
      dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('+'))-
                                                                       DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('-')),
                                                                       ffNumber, 10, 2)
   else
      dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)',''),ffNumber, 10, 2);

   Screen.Cursor:=crDefault;
   pnlBoletaDCob.visible  :=False;
   pnlCabecera.Enabled :=True;
end;

procedure TFBoletaCob.dblctipbolExit(Sender: TObject);
var
  xconcid, xsigno, xtipcid, xtipcalc, xSQL, xwhere : string;
  xconcporc : double;
begin
  if z2bbtnCancel.Focused then exit;

  DM1.cdsTipBoleta.setkey;
  DM1.cdsTipBoleta.fieldbyname('TIPBID').AsString:=dblctipbol.text;
  if not DM1.cdsTipBoleta.gotokey then
  begin
    showmessage('Tipo de Boleta no es válido');
    edttipbol.text:='';
    dblctipbol.setfocus;
    exit;
  end;
  edttipbol.text:=DM1.cdsTipBoleta.fieldbyname('TIPBDES').AsString;

  // Detalle de Boleta de Pago
  xSQL:='SELECT * FROM COB209 '+
        'WHERE BOLRNUMB='+quotedstr(dbenumbol.text);
  DM1.cdsBoletaDCob.Close;
  DM1.cdsBoletaDCob.indexfieldnames:='BOLRNUMBD';
  DM1.cdsBoletaDCob.datarequest(xSQL);
  DM1.cdsBoletaDCob.open;

  dbgBoletaDCob.Selected.Clear;
  dbgBoletaDCob.Selected.Add('BOLRNUMBD'#9'6'#9'Item');
  dbgBoletaDCob.Selected.Add('TIPCID'#9'9'#9'Tipo~Concepto');
  dbgBoletaDCob.Selected.Add('CONCID'#9'6'#9'Concep');
  dbgBoletaDCob.Selected.Add('BOLRREF'#9'30'#9'Referencia');
  dbgBoletaDCob.Selected.Add('CTANRO'#9'12'#9'Nro. Cuenta~Corriente');
  dbgBoletaDCob.Selected.Add('CONCMTO'#9'12'#9'Monto~Cobrado');
  dbgBoletaDCob.Selected.Add('CONCPORC'#9'10'#9'Porcentaje');
  dbgBoletaDCob.Selected.Add('CONCMTN'#9'12'#9'Monto~Detalle');
  dbgBoletaDCob.Selected.Add('SIGNO'#9'5'#9'Signo');
  dbgBoletaDCob.datasource:=DM1.dsBoletaDCob;

  TNumericField(DM1.cdsBoletaDCob.FieldByName('CONCMTN')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsBoletaDCob.FieldByName('CONCMTN')).EditFormat:='########0.00';

  if (dblctipbol.text='L') then
  begin
    // Obtiene datos de Concepto
    xwhere:='TIPO='+quotedstr('A');
    if length(DM1.DisplayDescrip('prvSQL','COB212','CONCID,TIPCID,TIPCALC,CONCPORC',xwhere,'CONCID'))>0 then
    begin
      xconcid:=DM1.cdsqry.fieldbyname('CONCID').AsString;
      xtipcid:=DM1.cdsqry.fieldbyname('TIPCID').AsString;
      xtipcalc:=DM1.cdsqry.fieldbyname('TIPCALC').AsString;

      xconcporc:=0;
      if xtipcalc='P' then
      begin
        xconcporc:=DM1.cdsqry.fieldbyname('CONCPORC').AsFloat;
      end;

      xwhere:='TIPCID='+quotedstr('A');
      xsigno:=DM1.DisplayDescrip('prvSQL','COB211','SIGNO',xwhere,'SIGNO');
    end
    else
    begin
      xconcid:='';
      xtipcid:='';
      xtipcalc:='';
      xconcporc:=0;
      xsigno:='';
    end;

    // Si es Liquidación, se agregan los Adelantos pendientes
    xSQL:='SELECT BOLRNUMB, '+quotedstr('Adelanto Nro. ')+'||BOLRNUMB BOLRREF, BOLRTOTAL '+
          'FROM COB208 '+
          'WHERE REPRID='+quotedstr(DM1.cdsRepresentante.fieldbyname('REPRID').AsString)+' '+
          'AND TIPBID='+quotedstr('A')+' '+
          'AND BOLLIQ IS NULL';
    DM1.cdsEjecuta.Close;
    DM1.cdsEjecuta.indexfieldnames:='BOLRREF';
    DM1.cdsEjecuta.datarequest(xSQL);
    DM1.cdsEjecuta.open;

    DM1.cdsEjecuta.first;
    while not Dm1.cdsEjecuta.eof do
    begin
      DM1.cdsBoletaDCob.Insert;
      DM1.cdsBoletaDCob.fieldbyname('REPRID').AsString:=dbecodigo.text;
      DM1.cdsBoletaDCob.fieldbyname('TIPBID').AsString:=dblctipbol.text;
      DM1.cdsBoletaDCob.fieldbyname('BOLRNUMB').AsString:=dbenumbol.text;
      DM1.cdsBoletaDCob.FieldByName('BOLRNUMBD').AsString:=DM1.StrZero(IntToStr(DM1.cdsBoletaDCob.recordcount+1), DM1.cdsBoletaDCob.FieldByName('BOLRNUMBD').Size);

      DM1.cdsBoletaDCob.fieldbyname('BOLRLIQUI').AsString:=DM1.cdsEjecuta.fieldbyname('BOLRNUMB').AsString;

      DM1.cdsBoletaDCob.fieldbyname('CONCID').AsString:=xconcid;
      DM1.cdsBoletaDCob.fieldbyname('TIPCID').AsString:=xtipcid;
      DM1.cdsBoletaDCob.fieldbyname('TIPCALC').AsString:=xtipcalc;
      DM1.cdsBoletaDCob.fieldbyname('SIGNO').AsString:=xsigno;
      DM1.cdsBoletaDCob.fieldbyname('BOLRREF').AsString:=DM1.cdsEjecuta.fieldbyname('BOLRREF').AsString;

      DM1.cdsBoletaDCob.fieldbyname('CONCMTO').AsFloat:=0;
      DM1.cdsBoletaDCob.fieldbyname('CONCPORC').AsFloat:=0;
      DM1.cdsBoletaDCob.fieldbyname('CONCMTN').AsFloat:=0;
      if xtipcalc='P' then
      begin
        DM1.cdsBoletaDCob.fieldbyname('CONCMTO').AsFloat:=DM1.cdsEjecuta.fieldbyname('BOLRTOTAL').AsFloat;
        DM1.cdsBoletaDCob.fieldbyname('CONCPORC').AsFloat:=xconcporc;
        DM1.cdsBoletaDCob.fieldbyname('CONCMTN').AsFloat:=DM1.cdsEjecuta.fieldbyname('BOLRTOTAL').AsFloat*(xconcporc/100);
      end
      else
      if xtipcalc='M' then
      begin
        DM1.cdsBoletaDCob.fieldbyname('CONCMTO').AsFloat:=0;
        DM1.cdsBoletaDCob.fieldbyname('CONCPORC').AsFloat:=0;
        DM1.cdsBoletaDCob.fieldbyname('CONCMTN').AsFloat:=DM1.cdsEjecuta.fieldbyname('BOLRTOTAL').AsFloat;
      end;
      DM1.cdsBoletaDCob.post;
      DM1.cdsEjecuta.next;
    end;
    // Si es Liquidación, se agregan las Cta Cte pendientes
    xSQL:='SELECT CTACTE.CTANRO, CTACTE.CONCID, CONC.TIPCID, CONC.TIPCALC, TIPC.SIGNO, '+
          'CONC.CONCPORC, '+quotedstr('Cta. Cte. Nro. ')+'||CTACTE.REFER BOLRREF, '+
          'CASE WHEN CTACTE.MTOCUO < CTACTE.MTOSLD THEN CTACTE.MTOCUO ELSE CTACTE.MTOSLD END MTOCUO '+
          'FROM COB214 CTACTE, COB212 CONC, COB211 TIPC '+
          'WHERE '+
          'CONC.CONCID=CTACTE.CONCID '+
          'AND TIPC.TIPCID=CONC.TIPCID '+
          'AND CTACTE.REPRID='+quotedstr(DM1.cdsRepresentante.fieldbyname('REPRID').AsString)+' '+
          'AND CTACTE.CTAEST='+quotedstr('A')+' '+
          'AND CTACTE.CTACAN IS NULL '+
          'AND CTACTE.FECINI<=SYSDATE';
    DM1.cdsEjecuta.Close;
    DM1.cdsEjecuta.indexfieldnames:='CTANRO';
    DM1.cdsEjecuta.datarequest(xSQL);
    DM1.cdsEjecuta.open;

    DM1.cdsEjecuta.first;
    while not Dm1.cdsEjecuta.eof do
    begin
      DM1.cdsBoletaDCob.Insert;
      DM1.cdsBoletaDCob.fieldbyname('REPRID').AsString:=dbecodigo.text;
      DM1.cdsBoletaDCob.fieldbyname('TIPBID').AsString:=dblctipbol.text;
      DM1.cdsBoletaDCob.fieldbyname('BOLRNUMB').AsString:=dbenumbol.text;
      DM1.cdsBoletaDCob.FieldByName('BOLRNUMBD').AsString:=DM1.StrZero(IntToStr(DM1.cdsBoletaDCob.recordcount+1), DM1.cdsBoletaDCob.FieldByName('BOLRNUMBD').Size);
      DM1.cdsBoletaDCob.fieldbyname('CTANRO').AsString:=DM1.cdsEjecuta.fieldbyname('CTANRO').AsString;

      DM1.cdsBoletaDCob.fieldbyname('CONCID').AsString:=DM1.cdsEjecuta.fieldbyname('CONCID').AsString;
      DM1.cdsBoletaDCob.fieldbyname('TIPCID').AsString:=DM1.cdsEjecuta.fieldbyname('TIPCID').AsString;
      DM1.cdsBoletaDCob.fieldbyname('TIPCALC').AsString:=DM1.cdsEjecuta.fieldbyname('TIPCALC').AsString;

      DM1.cdsBoletaDCob.fieldbyname('SIGNO').AsString:=DM1.cdsEjecuta.fieldbyname('SIGNO').AsString;

      DM1.cdsBoletaDCob.fieldbyname('BOLRREF').AsString:=DM1.cdsEjecuta.fieldbyname('BOLRREF').AsString;

      DM1.cdsBoletaDCob.fieldbyname('CONCMTO').AsFloat:=0;
      DM1.cdsBoletaDCob.fieldbyname('CONCPORC').AsFloat:=0;
      DM1.cdsBoletaDCob.fieldbyname('CONCMTN').AsFloat:=0;
      if DM1.cdsEjecuta.fieldbyname('TIPCALC').AsString='P' then
      begin
        DM1.cdsBoletaDCob.fieldbyname('CONCMTO').AsFloat:=DM1.cdsEjecuta.fieldbyname('MTOCUO').AsFloat;
        DM1.cdsBoletaDCob.fieldbyname('CONCPORC').AsFloat:=DM1.cdsEjecuta.fieldbyname('CONCPORC').AsFloat;
        DM1.cdsBoletaDCob.fieldbyname('CONCMTN').AsFloat:=DM1.cdsEjecuta.fieldbyname('MTOCUO').AsFloat*(DM1.cdsEjecuta.fieldbyname('CONCPORC').AsFloat/100);
      end
      else
      if DM1.cdsEjecuta.fieldbyname('TIPCALC').AsString='M' then
      begin
        DM1.cdsBoletaDCob.fieldbyname('CONCMTO').AsFloat:=0;
        DM1.cdsBoletaDCob.fieldbyname('CONCPORC').AsFloat:=0;
        DM1.cdsBoletaDCob.fieldbyname('CONCMTN').AsFloat:=DM1.cdsEjecuta.fieldbyname('MTOCUO').AsFloat;
      end;

      DM1.cdsBoletaDCob.post;

      DM1.cdsEjecuta.next;
    end;
  end;

  if dblctipbol.text='L' then
    dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('+'))-
                                                                     DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('-')),
                                                                     ffNumber, 10, 2)
  else
    dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)',''),ffNumber, 10, 2);

  if (dblctipbol.text='A') then
  begin
    DM1.cdsconcepto.filtered:=false;
    DM1.cdsconcepto.filter:='TIPCID='+quotedstr('A');
    DM1.cdsconcepto.filtered:=true;
  end
  else
  begin
    DM1.cdsconcepto.filtered:=false;
    DM1.cdsconcepto.filter:='TIPCID<>'+quotedstr('A')+' '+
                            'AND TIPCID<>'+quotedstr('C')+' '+
                            'AND TIPCID<>'+quotedstr('I');
    DM1.cdsconcepto.filtered:=true;
  end;
end;

procedure TFBoletaCob.dbgBoletaDCobDblClick(Sender: TObject);
begin
  if DM1.cdsBoletaDCob.recordcount=0 then exit;

  wmodo1:='M';

  DM1.cdsBoletaDCob.edit;

  LlenarDatosBoletaDet;

  if DM1.wModo='A' then
  begin
    //edtconcdes.text:='';
    //edttpcdes.text:='';
    pnlBoletaDCob.Height:=162;
    pnlBoletaDCob.Left  :=51;
    pnlBoletaDCob.Top   :=278;
    pnlBoletaDCob.visible  :=True;
    pnlCabecera.Enabled    :=False;

    dbeitem.enabled        :=False;
    dblcconcid.enabled     :=False;
    dbedescri.Enabled      :=True;
    dblctipcid.enabled     :=False;

    if DM1.cdsBoletaDCob.FieldByName('TIPCALC').AsString='P' then
    begin
      lblmto.visible         :=True;
      dbemto.visible         :=True;
      dbemto.enabled         :=True;
      lblporc.visible        :=True;
      dbeporc.visible        :=True;
      dbeporc.enabled        :=False;
      lblmtn.visible         :=True;
      dbemtn.visible         :=True;
      dbemtn.enabled         :=False;
    end
    else // 'M'
    begin
      lblmto.visible         :=False;
      dbemto.visible         :=False;
      dbemto.enabled         :=False;

      lblporc.visible        :=False;
      dbeporc.visible        :=False;
      dbeporc.enabled        :=False;

      lblmtn.visible         :=True;
      dbemtn.visible         :=True;
      dbemtn.enabled         :=True;
    end;

    bbtnCancelar.Enabled   :=True;
    bbtnAceptar.Enabled    :=True;

    dbedescri.SetFocus;
  end
  else
  begin // DM1.wModo='M'
    //wmodo1:='M';
    //LlenarDatosBoletaDet;
    pnlBoletaDCob.Height:=162;
    pnlBoletaDCob.Left  :=51;
    pnlBoletaDCob.Top   :=278;
    pnlBoletaDCob.visible  :=True;
    pnlCabecera.Enabled    :=False;

    dbeitem.enabled        :=False;
    dblcconcid.enabled     :=False;
    dbedescri.Enabled      :=False;
    dblctipcid.enabled     :=False;

    if DM1.cdsBoletaDCob.FieldByName('TIPCALC').AsString='P' then
    begin
      lblmto.visible         :=True;
      dbemto.visible         :=True;
      dbemto.enabled         :=False;

      lblporc.visible        :=True;
      dbeporc.visible        :=True;
      dbeporc.enabled        :=False;

      lblmtn.visible         :=True;
      dbemtn.visible         :=True;
      dbemtn.enabled         :=False;
    end
    else // 'M'
    begin
      lblmto.visible         :=False;
      dbemto.visible         :=False;
      dbemto.enabled         :=False;

      lblporc.visible        :=False;
      dbeporc.visible        :=False;
      dbeporc.enabled        :=False;

      lblmtn.visible         :=True;
      dbemtn.visible         :=True;
      dbemtn.enabled         :=True;
    end;

    bbtnCancelar.Enabled   :=True;
    bbtnAceptar.Enabled    :=True;

    bbtnCancelar.SetFocus;
  end;

  if dblctipbol.text='L' then
    dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('+'))-
                                                                     DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('-')),
                                                                     ffNumber, 10, 2)
  else
    dbgBoletaDCob.ColumnByName('CONCMTN').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)',''),ffNumber, 10, 2);
end;

procedure TFBoletaCob.dbgMovCobDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=true;
end;

procedure TFBoletaCob.dbgBoletaDCobDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=true;
end;

procedure TFBoletaCob.Z2bbtnAceptarClick(Sender: TObject);
var
  xmovcob : boolean;
  xtotal : double;
  xwhere, xfiltro, xSQL : string;
begin
  if DM1.cdsBoletaCob.FieldByName('BOLLIQ').AsString = 'S' then
  begin
    ErrorMsg(Caption, 'Ya fue Liquidado, no es Posible Continuar');
    Exit;
  end;

  if dblctipbol.text='L' then
    xtotal := DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('+'))-
              DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','SIGNO='+quotedstr('-'))
  else
    xtotal := DM1.OperClientDataSet(DM1.cdsBoletaDCob,'SUM(CONCMTN)','');


  if (xtotal<0) then
  begin
    ShowMessage ('Monto total de la Boleta no debe ser negativo!');
    exit;
  end;

  if DM1.cdsBoletaDCob.recordcount=0 then
  begin
    ShowMessage ('Falta ingresar el detalle de la boleta!');
    exit;
  end;

  // Para Liquidación
  if dblctipbol.text = 'L' then
  begin
    xfiltro:=DM1.cdsconcepto.filter;
    DM1.cdsconcepto.filter:='';
    DM1.cdsconcepto.filtered:=false;

    // Es necesario mov. cob. en Liquidación
    xmovcob:=false;

    DM1.cdsBoletaDCob.First;
    while not DM1.cdsBoletaDCob.eof do
    begin
      DM1.cdsconcepto.setkey;
      DM1.cdsconcepto.fieldbyname('CONCID').AsString:=DM1.cdsBoletaDCob.fieldbyname('CONCID').AsString;
      if (DM1.cdsconcepto.gotokey) and (DM1.cdsconcepto.fieldbyname('TIPO').AsString='C') then
      begin
        xmovcob:=true;
        break;
      end;
      DM1.cdsBoletaDCob.next;
    end;

    if not xmovcob then
    begin
      ShowMessage('Es necesario Registrar un Movimiento de Cobranza !');
      exit;
    end;

    if xfiltro<>'' then
    begin
      DM1.cdsconcepto.filter:=xfiltro;
      DM1.cdsconcepto.filtered:=true;
    end;
  end;
  if DM1.cdsBoletaCob.State = dsBrowse then
    DM1.cdsBoletaCob.Edit;
  DM1.cdsBoletaCob.FieldByName('REPRID').AsString     := DM1.cdsRepresentante.FieldByName('REPRID').AsString;

  if dblctipbol.text='L' then
    DM1.cdsBoletaCob.FieldByName('BOLLIQ').AsString   := 'S';

  DM1.cdsBoletaCob.FieldByName('USUARIO').AsString    := dm1.wUsuario;
  DM1.cdsBoletaCob.FieldByName('FREG').AsDateTime     := date;
  DM1.cdsBoletaCob.FieldByName('HREG').AsDateTime     := date+SysUtils.Time;
  DM1.cdsBoletaCob.FieldByName('BOLRTOTAL').AsFloat   := DM1.OperClientDataSet(DM1.cdsBoletaDCob , 'SUM(CONCMTN)','');
  DM1.cdsBoletaCob.FieldByName('BOLRPAGADO').AsFloat  := 0;
  DM1.cdsBoletaCob.FieldByName('BOLRSALDO').AsFloat   := DM1.cdsBoletaCob.FieldByName('BOLRTOTAL').AsFloat;

  cdspost(DM1.cdsBoletaCob);
  DM1.cdsBoletaCob.Post;
  DM1.cdsBoletaCob.ApplyUpdates(-1);

  DM1.cdsCobxUse.ApplyUpdates(-1);

  DM1.cdsBoletaDCob.ApplyUpdates(-1);

  // Liquida Adelantos pendientes
  DM1.cdsBoletaDCob.filtered:=false;
  DM1.cdsBoletaDCob.filter:='TIPCID='+quotedstr('A');
  DM1.cdsBoletaDCob.filtered:=true;

  Dm1.cdsboletaDCob.first;
  while not Dm1.cdsboletaDCob.eof do
  begin
    xSQL:='UPDATE COB208 '+
          'SET BOLLIQ='+quotedstr('S')+' '+
          'WHERE BOLRNUMB='+quotedstr(Dm1.cdsboletaDCob.fieldbyname('BOLRLIQUI').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    Dm1.cdsBoletaDCob.next;
  end;

  DM1.cdsBoletaDCob.filtered:=false;
  DM1.cdsBoletaDCob.filter:='';
  // Amortiza Cta Cte
  DM1.cdsBoletaDCob.filtered:=false;
  DM1.cdsBoletaDCob.filter:='TIPCID='+quotedstr('C');
  DM1.cdsBoletaDCob.filtered:=true;
  Dm1.cdsboletaDCob.first;
  while not Dm1.cdsboletaDCob.eof do
  begin
    // Verificar que el monto detalle es menor/igual que el saldo de la cta cte
    xwhere:='CTANRO='+quotedstr(Dm1.cdsboletaDCob.fieldbyname('CTANRO').AsString);
    if length(DM1.DisplayDescrip('prvSQL','COB214','CTANRO,MTOSLD',xwhere,'CTANRO'))=0 then
    begin
      showmessage('El Item '+DM1.cdsBoletaDCob.fieldbyname('BOLRNUMBD').AsString+' está asociado a una Cuenta Corriente inexistente !');
      exit;
    end
    else
    begin
      if (DM1.cdsBoletaDCob.fieldbyname('CONCMTN').AsFloat>DM1.cdsqry.fieldbyname('MTOSLD').AsFloat) then
      begin
        showmessage('El Item '+DM1.cdsBoletaDCob.fieldbyname('BOLRNUMBD').AsString+' afecta una Cta Cte cuyo saldo es menor al monto detalle !');
        exit;
      end;
    end;

    xSQL:='UPDATE COB214 '+
          'SET MTOPAG=MTOPAG+'+Dm1.cdsboletaDCob.fieldbyname('CONCMTN').AsString+', '+
          'MTOSLD=MTOSLD-'+Dm1.cdsboletaDCob.fieldbyname('CONCMTN').AsString+' '+
          'WHERE CTANRO='+quotedstr(Dm1.cdsboletaDCob.fieldbyname('CTANRO').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    Dm1.cdsBoletaDCob.next;
  end;

  // Cancela las Cta Ctes con saldo 0
  xSQL:='UPDATE COB214 '+
        'SET CTAEST='+quotedstr('S')+', FECCAN=SYSDATE '+
        'WHERE REPRID='+quotedstr(Dm1.cdsRepresentante.fieldbyname('REPRID').AsString)+' '+
        'AND MTOSLD=0';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  DM1.cdsBoletaDCob.filtered:=false;
  DM1.cdsBoletaDCob.filter:='';

  z2bbtnCancel.Enabled :=True;
  z2bbtnAceptar.Enabled :=False;
  Information(Caption , 'Registro Aceptado')  
  //close;
end;

procedure TFBoletaCob.Z2bbtnAceptaraClick(Sender: TObject);
var
  xAno, xMes, xDia, xAnoMes, xTrim, xSem, xSs, xAaTri, xAaSem, xAass : String;
begin
  if DM1.cdsBoletaCob.FieldByName('BOLLIQ').AsString = 'S' then
  begin
    ErrorMsg(Caption, 'Ya fue Liquidado, no es Posible Continuar');
    Exit;
  end;

  if DM1.cdsBoletaDCob.RecordCount > 0 then
  begin
    Screen.Cursor:=crHourGlass;
    if DM1.cdsBoletaCob.State = dsBrowse then
      DM1.cdsBoletaCob.Edit;

    sFecha := FormatDateTime(wFormatFecha, dbdtpfecha.Date);
    sSQL := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(sFecha);
    DM1.FiltraCDS(DM1.cdsPeriodo, sSQL);

    xAno    := DM1.cdsPeriodo.fieldbyName('FECANO').asString;
    xMes    := DM1.cdsPeriodo.fieldbyName('FECMES').asString;
    xDia    := DM1.cdsPeriodo.fieldbyName('FECDIA').asString;
    xAnoMes := xAno+xMes;
    xTrim   := DM1.cdsPeriodo.fieldbyName('FECTRIM').asString;
    xSem    := DM1.cdsPeriodo.fieldbyName('FECSEM').asString;
    xSs     := DM1.cdsPeriodo.fieldbyName('FECSS').asString;
    xAaTri  := DM1.cdsPeriodo.fieldbyName('FECAATRI').asString;
    xAaSem  := DM1.cdsPeriodo.fieldbyName('FECAASEM').asString;
    xAass   := DM1.cdsPeriodo.fieldbyName('FECAASS').asString;

    DM1.cdsBoletaCob.FieldByName('BOLANO').AsString     := xAno;
    DM1.cdsBoletaCob.FieldByName('BOLMM').AsString      := xMes;
    DM1.cdsBoletaCob.FieldByName('BOLDD').AsString      := xDia;
    DM1.cdsBoletaCob.FieldByName('BOLANOMM').AsString   := xAnoMes;
    DM1.cdsBoletaCob.FieldByName('BOLTRIM').AsString    := xTrim;
    DM1.cdsBoletaCob.FieldByName('BOLSEM').AsString     := xSem;
    DM1.cdsBoletaCob.FieldByName('BOLSS').AsString      := xSs;
    DM1.cdsBoletaCob.FieldByName('BOLAATRIM').AsString  := xAaTri;
    DM1.cdsBoletaCob.FieldByName('BOLAASEM').AsString   := xAaSem;
    DM1.cdsBoletaCob.FieldByName('BOLAASS').AsString    := xAass;
    DM1.cdsBoletaCob.FieldByName('CLAUXID').AsString    := DM1.DisplayDescrip('prvSQL','TGE102','CLAUXID','MODULO=''COB,''','CLAUXID');
    DM1.cdsBoletaCob.FieldByName('REPRID').AsString     := DM1.cdsRepresentante.FieldByName('REPRID').AsString;
    DM1.cdsBoletaCob.FieldByName('REPRAPENOM').AsString := DM1.cdsRepresentante.FieldByName('REPRAPENOM').AsString;
    DM1.cdsBoletaCob.FieldByName('USUARIO').AsString    := dm1.wUsuario;
    DM1.cdsBoletaCob.FieldByName('FREG').AsDateTime     := date;
    DM1.cdsBoletaCob.FieldByName('HREG').AsDateTime     := date+SysUtils.Time;
    DM1.cdsBoletaCob.FieldByName('BOLRTOTAL').AsFloat   := DM1.OperClientDataSet(DM1.cdsBoletaDCob , 'SUM(CONCMTN)','');
    DM1.cdsBoletaCob.FieldByName('BOLRPAGADO').AsFloat  := 0;
    DM1.cdsBoletaCob.FieldByName('BOLRSALDO').AsFloat   := DM1.cdsBoletaCob.FieldByName('BOLRTOTAL').AsFloat;
    cdspost(DM1.cdsBoletaCob);
    DM1.cdsBoletaCob.Post;
    DM1.cdsBoletaCob.ApplyUpdates(-1);

    DM1.cdsCobxUse.ApplyUpdates(-1);

    DM1.cdsBoletaDCob.ApplyUpdates(-1);
    Screen.Cursor:=crDefault;
    Information(Caption , 'Registro Grabado')
  end;
end;

procedure TFBoletaCob.dbdtpfechaExit(Sender: TObject);
begin
  dbeTCambio.Text   := DM1.RecuperarTipoCambio(dbdtpfecha.date) ;
  DM1.cdsBoletaCob.FieldByName('BOLANO').AsString := dbeTCambio.Text;
end;

procedure TFBoletaCob.dblcdMonedaCExit(Sender: TObject);
begin
  if Z2bbtnCancel.Focused then exit;
                  
  dbeMonedaC.text:= DM1.DisplayDescrip('prvTGE','TGE103','TMONDES','TMONID='+QuotedStr(dblcdMonedaC.Text),'TMONDES');

  if dbeMonedaC.Text='' then
  begin
    dbeMonedaC.text   :='';
    //dbeTCambio.Text:='';
    dblcdMonedaC.Text  :='';
    ShowMessage('Error : Moneda no Valida');
    dblcdMonedaC.SetFocus;
    Exit;
  end;
end;

end.
