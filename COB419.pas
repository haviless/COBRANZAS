unit COB419;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbspin, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, Wwdbdlg, Mask,
  wwdbedit, wwdbdatetimepicker, wwdblook, fcButton, fcImgBtn, fcShapeBtn,
  ExtCtrls, db, DBCtrls;

type
  TFRegNAbono = class(TForm)
    pnlCabecera: TPanel;
    pnlInicio: TPanel;
    dbdtpFOpe: TwwDBDateTimePicker;
    dbdtpFRecepcion: TwwDBDateTimePicker;
    dbeNumOpe: TwwDBEdit;
    dbeMonto: TwwDBEdit;
    bbtnClear: TfcShapeBtn;
    bbtnSigue: TfcShapeBtn;
    Z2bbtnSalir: TfcShapeBtn;
    dbgDetRegGlobal: TwwDBGrid;
    bbtnNuevo: TwwIButton;
    pnlDocumentos: TPanel;
    StaticText1: TStaticText;
    Panel3: TPanel;
    lblUnidadProceso: TLabel;
    gbComprobante: TGroupBox;
    MtoLiq: TLabel;
    dbeCPagoNum: TwwDBEdit;
    dbdtpCPagoFecha: TwwDBDateTimePicker;
    edtMonedaC: TEdit;
    dblcdMonedaC: TwwDBLookupCombo;
    dbeCPagoTotal: TwwDBEdit;
    dbeDeduccion: TwwDBEdit;
    dbeCPagoConcepto: TwwDBEdit;
    dbeMtoLiq: TwwDBEdit;
    dbeNroDocDeduccion: TwwDBEdit;
    dbeAno: TwwDBEdit;
    dbeMes: TwwDBEdit;
    dblcdUPago: TwwDBLookupComboDlg;
    edtUPago: TEdit;
    dblcFRecaudacion: TwwDBLookupCombo;
    edtFRecaudacion: TEdit;
    gbCheque: TGroupBox;
    lblNCta: TLabel;
    edtFPago: TEdit;
    dblcFPago: TwwDBLookupCombo;
    dblcChqBanco: TwwDBLookupCombo;
    edtChqBanco: TEdit;
    dbeChqCuenta: TwwDBEdit;
    dbdtpChqFecha: TwwDBDateTimePicker;
    dbeChqNum: TwwDBEdit;
    dblcChqMoneda: TwwDBLookupCombo;
    edtChqMoneda: TEdit;
    dbeChqMonto: TwwDBEdit;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    dblcUProceso: TwwDBLookupCombo;
    edtUProceso: TEdit;
    pnlTop: TPanel;
    lblPeriodo: TLabel;
    sbAno: TwwDBSpinEdit;
    sbMes: TwwDBSpinEdit;
    DBText1: TDBText;
    llblAno: TLabel;
    lblMes: TLabel;
    lblFORecepDoc: TLabel;
    lblFOpera: TLabel;
    lblMonto: TLabel;
    lblNOpera: TLabel;
    Bevel1: TBevel;
    lblNOpeCargo: TLabel;
    dbeNOpeCar: TwwDBEdit;
    lblMontoCargo: TLabel;
    dbeMontoCar: TwwDBEdit;
    lblTitCargo: TLabel;
    lblFOpeCargo: TLabel;
    dbdtpFRecCar: TwwDBDateTimePicker;
    lblMon: TLabel;
    dblctmoneda: TwwDBLookupCombo;
    dbemoneda: TwwDBEdit;
    dbObs: TDBMemo;
    rgTipo: TRadioGroup;
    gbReemplazo: TGroupBox;
    Z2bbtnCierra: TfcShapeBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure bbtnClearClick(Sender: TObject);
    procedure bbtnSigueClick(Sender: TObject);
    procedure dbdtpFRecepcionExit(Sender: TObject);
    procedure sbMesExit(Sender: TObject);
    procedure Z2bbtnSalirClick(Sender: TObject);
    procedure dblctmonedaExit(Sender: TObject);
    procedure Z2bbtnCierraClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
  private
    { Private declarations }
    function ValidaCabecNAbono:Boolean;
  public
    { Public declarations }
  end;

var
  FRegNAbono: TFRegNAbono;
  xBanco, wModo1, xSQL, xWhere, sWhere : string;
  xCrea:boolean;
  Y,M,D : Word;

implementation

uses COBDM1, MsgDlgs;

{$R *.DFM}

procedure TFRegNAbono.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    if Self.ActiveControl Is TDBMemo then Exit;
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFRegNAbono.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  pnlDocumentos.Visible:=False;
  DM1.cdsRegCob.Cancel;
  DM1.cdsDetRegCob.Close;
end;

procedure TFRegNAbono.FormActivate(Sender: TObject);
var
  xReg, xSQL : String;
begin
  DecodeDate(Now,Y, M,D);
  xCrea:=True;
  pnlInicio.Enabled:=true;
  pnlTop.Enabled:=True;
  bbtnNuevo.Enabled:=False;
  dbgDetRegGlobal.Enabled:=False;

  if DM1.wModo='A' Then
  begin
    xSQL := 'SELECT MAX(CAST(NAITEM AS INTEGER)) NUEVOREG FROM COB325 ';
    DM1.Filtracds(DM1.cdsQry, xSQL);
    if DM1.cdsQry.fieldbyName('NUEVOREG').asString <> '' Then
    begin
       xReg:=  DM1.StrZero( IntToStr(StrToInt(DM1.cdsQry.FieldbyName('NUEVOREG').AsString)+1),
                                              DM1.cdsRegCob.FieldByName('NAITEM').Size);
    end
    else
    begin
      xReg:= DM1.StrZero('1',DM1.cdsRegCob.FieldByName('NAITEM').Size);
    end;

    xSQL:='SELECT * FROM COB326 WHERE NAITEM='+QuotedStr(xReg);
    DM1.FiltraCDS(DM1.cdsDetRegCob,xSQL);

    DM1.cdsRegCob.Insert;
    bbtnClearClick(sender);

    DM1.cdsRegCob.FieldByName('NAITEM').AsString:=xREG;
    //edtCorrelativo.Text:=dm1.cdsRegCob.FieldByName('RCOBID').AsString;
    //DM1.cdsRegCob.FieldByName('TMONID').AsString:='N';
    DM1.cdsRegCob.FieldByName('NAANO').AsString:=FloattoStr(Y);
    DM1.cdsRegCob.FieldByName('NAMES').AsString:=dm1.StrZero(FloattoStr(M),2);
    DM1.cdsRegCob.FieldByName('NAESTADO').AsString:='INICIAL';
    DM1.cdsRegCob.FieldByName('NAFREGDOC').AsDateTime:=Date;
    //DM1.cdsRegCob.FieldByName('CAFREG').AsDateTime:=Date;        
    //edtMoneda.Text:=DM1.DisplayDescrip('prvTGE','TGE103','TMONDES','TMONID = ''N''','TMONDES');
//    Z2bbtnModifica.Visible:=True;
  End
  else
  If DM1.wModo='M' Then
  Begin
    xSql:='SELECT * FROM COB326 WHERE NAITEM='+QuotedStr(DM1.cdsRegCob.FieldByName('NAITEM').AsString);
    DM1.FiltraCDS(DM1.cdsDetRegCob,xSQL);

//    Z2bbtnModifica.Visible:=False;
    dblctmonedaExit(dblctmoneda);

    if DM1.cdsRegCob.FieldByName('NATIPO').AsString ='0' then
       rgTipo.ItemIndex:=0    //Provisional
    else
       if DM1.cdsRegCob.FieldByName('NATIPO').AsString='1' then
       begin
          rgTipo.ItemIndex:=1;//Banco
          gbReemplazo.Enabled := True;
       end;    



    DM1.cdsRegCob.Edit;
    //edtCorrelativo.Text:=DM1.cdsRegCob.fieldbyname('RCOBID').AsString;
    If DM1.cdsDetRegCob.RecordCount >= 1 Then
    Begin
      dbgDetRegGlobal.Enabled:=True;
    End;
  End;

  //dbgDetRegGlobal.ColumnByName('DOCMTO').FooterValue  := FloatToStr(DM1.OperClientDataSet(dm1.cdsDetRegCob , 'SUM(DOCMTO)',''));
  //dbgDetRegGlobal.ColumnByName('CPAGOLIQ').FooterValue:= FloatToStr(DM1.OperClientDataSet(dm1.cdsDetRegCob , 'SUM(CPAGOLIQ)',''));

  xCrea:=False;
  sbAno.SetFocus;

  //************************************
  //Formato decimales a campos numericos
  //************************************
  {TNumericField(DM1.cdsRegCob.FieldByName('RCOBMTO')).DisplayFormat       :='###,###,##0.00';
  TNumericField(DM1.cdsRegCob.FieldByName('RCOBMTO')).EditFormat          :='########0.00';
  TNumericField(DM1.cdsDetRegCob.FieldByName('DOCMTO')).DisplayFormat     :='###,###,##0.00';
  TNumericField(DM1.cdsDetRegCob.FieldByName('DOCMTO')).EditFormat        :='########0.00';
  TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).DisplayFormat   :='###,###,##0.00';
  TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOMTO')).EditFormat      :='########0.00';
  TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).DisplayFormat :='###,###,##0.00';
  TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGODEDUC')).EditFormat    :='########0.00';
  TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOLIQ')).DisplayFormat   :='###,###,##0.00';
  TNumericField(DM1.cdsDetRegCob.FieldByName('CPAGOLIQ')).EditFormat      :='########0.00';
  }

  if DM1.cdsRegCob.FieldByName('NAESTADO').AsString = 'ACEPTADO' then
  begin
    pnlTop.Enabled:=False;
    pnlInicio.Enabled:=False;
    bbtnNuevo.Enabled:=False;
  end
  else
  if DM1.cdsRegCob.FieldByName('NAESTADO').AsString = 'ACEPTADO' then
  begin
    pnlTop.Enabled:=True;
    pnlInicio.Enabled:=True;
    bbtnNuevo.Enabled:=True;    
  end
end;

procedure TFRegNAbono.bbtnClearClick(Sender: TObject);
begin
  //edtRepresentante.Text:='';
  dbdtpFRecepcion.Text:='';
  //edtBanco.Text:='';
  //dblcCuenta.Text:='';
  dbeNumOpe.Text:='';
  dbdtpFOpe.Text:='';
  //dblcMoneda.Text:='';
  //edtMoneda.Text:='';
  dbeMonto.Text:='';
  sbAno.Text:='';
  sbMes.Text:='';
end;

procedure TFRegNAbono.bbtnSigueClick(Sender: TObject);
var
  xReg, xPer : String;
  Y,M,D : Word;
begin
  if DM1.cdsRegCob.FieldByName('NAESTADO').AsString <> 'INICIAL' then
  begin
    Exit;
  end;

  DecodeDate(dbdtpFRecepcion.Date,Y, M, D);
  xPer:=sbAno.Text+sbMes.Text;
  if StrtoFloat(xPer) > StrtoFloat((FloattoStr(Y)+DM1.StrZero( IntToStr(M),2))) then
  begin
    ErrorMsg(Caption, 'La Fecha de Recepción No Puede Ser Menor al Periodo');
    Exit;
  end;

  if Not ValidaCabecNAbono Then
  begin
    exit;
  end;

  if Not(DM1.cdsRegCob.State = dsEdit) then
  begin
    DM1.cdsRegCob.Edit;
  end;

  if DM1.wModo='A' Then
  begin
    xSQL := 'SELECT MAX(CAST(NAITEM AS INTEGER)) NUEVOREG FROM COB325 ';
    DM1.Filtracds(DM1.cdsQry, xSQL);
    if DM1.cdsQry.fieldbyName('NUEVOREG').asString <> '' Then
    begin
       xReg:=  DM1.StrZero( IntToStr(StrToInt(DM1.cdsQry.FieldbyName('NUEVOREG').AsString)+1),
                                              DM1.cdsRegCob.FieldByName('NAITEM').Size);
    end
    else
    begin
      xReg:= DM1.StrZero('1',DM1.cdsRegCob.FieldByName('NAITEM').Size);
    end;
  end;

  if Length(Trim(DM1.cdsRegCob.FieldByName('NAOBS').AsString)) = 0 Then
  	DM1.cdsRegCob.FieldByName('NAOBS').AsString   :='.';
  DM1.cdsRegCob.FieldByName('USUARIO').AsString   :=DM1.wUsuario;
  DM1.cdsRegCob.FieldByName('FREG').AsDateTime    :=Date;
  DM1.cdsRegCob.FieldByName('HREG').AsDateTime    :=Date+SysUtils.Time;
  if rgTipo.ItemIndex=0 then //Provisional
     DM1.cdsRegCob.FieldByName('NATIPO').AsString    :='0'
  else
     if rgTipo.ItemIndex=1 then //Banco
        DM1.cdsRegCob.FieldByName('NATIPO').AsString    :='1';


  cdsPost(DM1.cdsRegCob);
  DM1.cdsRegCob.Post;
  DM1.ControlTran;
  pnlInicio.Enabled:=False;
  pnlTop.Enabled:=False;
  bbtnNuevo.enabled:=True;
  dbgDetRegGlobal.enabled :=True;
  //bbtnNuevoClick(Sender);
end;

function TFRegNAbono.ValidaCabecNAbono: Boolean;
begin
  result:=False;
  If Length(DM1.cdsRegCob.FieldByName('NAANO').AsString)=0 Then
  Begin
     ShowMessage('Ingrese el Año del Periodo');
     sbAno.SetFocus;
     exit;
  End;
  If Length(DM1.cdsRegCob.FieldByName('NAMES').AsString)=0 Then
  Begin
     ShowMessage('Ingrese el Mes del Periodo');
     sbMes.SetFocus;
     exit;
  End;
  If Length(Trim(dbdtpFRecepcion.Text))=0 then
  begin
     ShowMessage('Seleccione la Fecha de Recepción');
     dbdtpFRecepcion.SetFocus;
     exit;
  end;
  //Valida fecha Fecha de operación no mayor a fecha de recepcion
  If Length(Trim(dbdtpFOpe.Text))=0 then
  begin
     ShowMessage('Seleccione la Fecha de Operación');
     dbdtpFOpe.SetFocus;
     exit;
  end;

  If (dbdtpFOpe.Date) < (dbdtpFRecepcion.Date) Then
  begin
     ShowMessage('La Fecha de Operación no puede ser Mayor a la Fecha de Registro');
     dbdtpFOpe.SetFocus;
     exit;
  end;

  If Length(Trim(dbeNumOpe.Text))=0 then
  begin
     ShowMessage('Registre el Número de Operación');
     dbeNumOpe.SetFocus;
     exit;
  end;

  If Length(Trim(dbemoneda.Text))=0 then
  begin
     ShowMessage('Registre el Tipo de Cambio');
     dblctmoneda.SetFocus;
     exit;
  end;

  If Length(Trim(dbeMonto.Text))=0 then
  begin
     ShowMessage('Ingrese el Monto');
     dbeMonto.SetFocus;
     exit;
  end;
  If Length(Trim(sbAno.Text))=0 then
  begin
     ShowMessage('Ingrese el Año');
     sbAno.SetFocus;
     exit;
  end;
  If Length(Trim(sbMes.Text))=0 then
  begin
     ShowMessage('Ingrese el Mes');
     sbMes.SetFocus;
     exit;
  end;
  if rgTipo.ItemIndex=-1 then
  begin
     ShowMessage('Ingrese Tipo de Nota de Abono');
     rgTipo.SetFocus;
     exit;
  end;
  result:=true;
end;

procedure TFRegNAbono.dbdtpFRecepcionExit(Sender: TObject);
begin
  DM1.cdsRegCob.FieldByName('CAFDOC').AsDateTime:=DM1.cdsRegCob.FieldByName('NAFDOC').AsDateTime;
end;

procedure TFRegNAbono.sbMesExit(Sender: TObject);
begin
  if Length(Trim(sbMes.Text)) = 1 then
    DM1.cdsRegCob.FieldByName('NAMES').AsString:=dm1.StrZero(sbMes.Text,2);
end;

procedure TFRegNAbono.Z2bbtnSalirClick(Sender: TObject);
begin
	Close;
end;

procedure TFRegNAbono.dblctmonedaExit(Sender: TObject);
begin
  sWhere:= 'TMONID='+ QuotedStr(dblcTMoneda.text) ;
  dbeMoneda.text:=dm1.DisplayDescrip('prvTGE','TGE103','TMONDES',sWhere,'TMONDES');
end;

procedure TFRegNAbono.Z2bbtnCierraClick(Sender: TObject);
var
   xSQL : string;
begin
   exit;
   if rgTipo.ItemIndex=1 then
   begin
      if Length(Trim(dbeNumOpe.Text))=0 then
          raise exception.Create('Ingrese el Nro. Operación');

      if not Question(Caption, '¿ Esta Seguro de Reemplazar la Nota de Abono Provisional ? '+#13+#13+'Desea Continuar') then Exit;

      Screen.Cursor:=crHourGlass;

      xSQL := ' SELECT * FROM COB325 '+
              ' WHERE NAANO='+Quotedstr(DM1.cdsRegCob.fieldbyname('NAANO').AsString)+
              ' AND NAMES='+Quotedstr(DM1.cdsRegCob.fieldbyname('NAMES').AsString)+
              ' AND NATIPO=''0'' ';
      DM1.cdsQry1.indexFieldnames :='';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xSQL);
      DM1.cdsQry1.Open;
      if DM1.cdsQry1.RecordCount=0 then
      begin
         Screen.Cursor:=crDefault;
         raise exception.Create('No existen Notas de Abono Provisionales para este Periodo');
      end;

      DM1.cdsQry1.First;
      while not DM1.cdsQry1.Eof do
      begin
         xSQL :=' UPDATE CRE310 '+
                 ' CREFPAG ='+Quotedstr(dm1.cdsQry3.FieldByName('NAFDOC').AsString)+
                 ' NROOPE = '+Quotedstr(dm1.cdsQry3.FieldByName('NANRO').AsString)+
                 ' FOPERAC = '+Quotedstr(dm1.cdsQry3.FieldByName('NAFDOC').AsString)+
                 ' NRONABO = '+Quotedstr(dm1.cdsQry3.FieldByName('NANRO').AsString)+
                 ' WHERE CREANO='+Quotedstr(DM1.cdsQry1.fieldbyname('NAANO').AsString)+
                 ' AND CREMES='+Quotedstr(DM1.cdsQry1.fieldbyname('NAMES').AsString)+
                 ' AND FORPAGOID=''18'' '+
                 ' AND NROOPETMP='+Quotedstr(DM1.cdsQry1.fieldbyname('NANRO').AsString);
         Try
//            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Except
         End;

         DM1.cdsQry1.Next;
      end;



      Screen.Cursor:=crDefault;
      Showmessage('Proceso Concluido')
   end;

end;

procedure TFRegNAbono.rgTipoClick(Sender: TObject);
begin
  if rgTipo.ItemIndex=0 then
     gbReemplazo.Visible := False
  else
  if rgTipo.ItemIndex=1 then
     gbReemplazo.Visible := True ;


end;

end.
