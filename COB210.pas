unit COB210;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, fcLabel, ExtCtrls, fcButton,
  fcImgBtn, fcShapeBtn, StdCtrls, wwdblook,
  wwdbdatetimepicker, ComCtrls, Tabnotbk, Mask, wwdbedit, Wwdbdlg,
  DBCtrls, Wwdbcomb,Wwdotdot,Db, dbiProcs, dbclient, wwclient;



type
  TFDCtasBcos = class(TForm)
    dbgAsoCtas: TwwDBGrid;
    lbCodigo: TfcLabel;
    lbTitulo: TfcLabel;
    dbgAsoCtasIButton: TwwIButton;
    pnlCtaBco: TPanel;
    StaticText1: TStaticText;
    pnlCuentaEst: TPanel;
    StaticText2: TStaticText;
    Label1: TLabel;
    Label2: TLabel;
    dblcdSit: TwwDBLookupCombo;
    edtSituacion: TEdit;
    edtBanco: TEdit;
    dblcdBco: TwwDBLookupCombo;
    Label3: TLabel;
    sbtnAceptar: TfcShapeBtn;
    sbtnCancelar: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    dbgCuentaEst: TwwDBGrid;
    bntCuentaEst: TfcShapeBtn;
    lblCuenta: TfcLabel;
    sbtnModi: TfcShapeBtn;
    lblBanco: TfcLabel;
    dbeCuenta: TwwDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgAsoCtasIButtonClick(Sender: TObject);
    procedure sbtnCancelarClick(Sender: TObject);
    procedure sbtnAceptarClick(Sender: TObject);
    procedure dblcdBcoExit(Sender: TObject);
    procedure dblcdSitExit(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure bntCuentaEstClick(Sender: TObject);
    procedure dbgAsoCtasDblClick(Sender: TObject);
    procedure sbtnModiClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    sSQL:String;
  end;

var
  FDCtasBcos: TFDCtasBcos;

implementation

uses COBDM1, MsgDlgs, COB201;

{$R *.DFM}

procedure TFDCtasBcos.FormActivate(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  DM1.cdsBcos.Open;
  DM1.cdsSitCta.Open;
  pnlCtaBco.Visible:=False;
  pnlCuentaEst.Visible:=False;
  FDCtasBcos.lbTitulo.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
  FDCtasBcos.lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

  dbgAsoCtas.Selected.Clear;
  dbgAsoCtas.Selected.Add('ASOITEM'#9'10'#9'ITEM');
  dbgAsoCtas.Selected.Add('ASONCTA'#9'15'#9'CUENTA');
  dbgAsoCtas.Selected.Add('BANCONOM'#9'20'#9'BANCO');
  dbgAsoCtas.Selected.Add('SITCTADES'#9'15'#9'SITUACION');
  dbgAsoCtas.Selected.Add('FREG'#9'15'#9'FECHA REG.');

  sSQL := 'SELECT C.ASOID, C.ASOITEM, C.ASOCODMOD, C.ASOCODAUX, C.ASOAPENOM,'+
          'C.ASONCTA, C.BANCOID, B.BANCONOM, C.SITCTA,S.SITCTADES, C.USUARIO, C.FREG, C.HREG '+
          'FROM APO207 C, TGE105 B, COB103 S '+
          'WHERE C.BANCOID(+)=B.BANCOID AND '+
          'C.SITCTA=S.SITCTAID AND '+
          'ASOID='+''''+DM1.cdsAso.FieldByName('ASOID').AsString+''' ORDER BY ASOITEM';

  DM1.FiltraCDS(DM1.cdsCtasBco,sSQL);

  dbgAsoCtas.RefreshDisplay;
  Screen.Cursor:=crDefault;
end;

procedure TFDCtasBcos.FormClose(Sender: TObject; var Action: TCloseAction);
var
	xWhere : String;
begin
	Screen.Cursor:=crHourGlass;
  xWhere:='BANCOID='''+dblcdBco.Text+'''';
  FAsociados.edtBanco.Text:=DM1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xWhere,'BANCONOM');

  xWhere:='SITCTAID='''+dblcdSit.Text+'''';
  FAsociados.edtSitCtaBco.Text:=DM1.DisplayDescrip('prvSQL','COB103','SITCTADES',xWhere,'SITCTADES');

	DM1.cdsBcos.Close;
  DM1.cdsSitCta.Close;
  DM1.cdsCtasBco.Close;
	Screen.Cursor:=crDefault
end;

procedure TFDCtasBcos.dbgAsoCtasIButtonClick(Sender: TObject);
begin
  dbeCuenta.Text      := '';
  dblcdSit.Text       := '';
  edtSituacion.Text   := '';
  dblcdBco.Text       := '';
  edtBanco.Text       := '';
  dbeCuenta.Enabled   := True;
  dblcdBco.Enabled    := True;
  dblcdSit.Enabled    := True;
  sbtnAceptar.Visible := True;
  sbtnModi.Visible    := False;
  pnlCtaBco.Visible   := True;
  dbeCuenta.SetFocus;
end;

procedure TFDCtasBcos.sbtnCancelarClick(Sender: TObject);
begin
	dbeCuenta.Text:='';
	pnlCtaBco.Visible:=False;
end;

procedure TFDCtasBcos.sbtnAceptarClick(Sender: TObject);
var
  xSQL : String;
  y,x,z, Resto, Suma : Integer;

begin
 If Length(dbeCuenta.text) <> 10 Then
 Begin
    ShowMessage('Faltan Digitos');
    dbeCuenta.SetFocus;
    Exit;
 End;

  If dbeCuenta.text = '0000000000' Then
  Begin
    ShowMessage('Cuenta No Valida');
    dbeCuenta.SetFocus;
    Exit;
  End;

  y:= 0;
  suma:=0;
  for x:= 7 downto 1 do
  Begin
    y := y +1;
    suma := suma +  StrToInt (Copy(dbeCuenta.text,x+3,1) ) * y;
  End;
  y := 1;
  For z := 3 downto 1 do
  Begin
    y := y + 1;
   	suma := suma + StrtoInt (Copy(dbeCuenta.text,z,1)) * y;
  End;
  resto := suma mod 11;
  if resto <> 0 Then
  Begin
    ShowMessage('Cuenta No Valida');
    dbeCuenta.SetFocus;
    Exit;
  end;
  If Length(Trim(dbeCuenta.Text)) = 0 Then
  begin
     Beep;
     MessageDlg('Ingrese el Número de la Cuenta', mtInformation, [mbOk], 0);
     dbeCuenta.SetFocus;
     Exit;
  end;
  If Length(Trim(dblcdSit.Text)) = 0 Then
  begin
     ErrorMsg(Caption, 'La Situación no es Correcta');
     Exit;
  end;
  If Length(Trim(dblcdBco.Text)) = 0 Then
  begin
     ErrorMsg(Caption, 'El Banco no es Correcto');
     Exit;
  end;

  xSQL:='INSERT INTO APO207 (ASOITEM, ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, BANCOID, ASONCTA, SITCTA, USUARIO, FREG, HREG) '+
        'VALUES('''+
        DM1.StrZero( MaxValue( 'ASOITEM', DM1.cdsCtasBco ),3)+''','''+
        DM1.cdsAso.FieldByName('ASOID').AsString+''','''+
        DM1.cdsAso.FieldByName('ASOCODMOD').AsString+''','''+
        DM1.cdsAso.FieldByName('ASOCODAUX').AsString+''','''+
        DM1.cdsAso.FieldByName('ASOAPENOM').AsString+''','''+
        dblcdBco.Text+''','''+
        dbeCuenta.Text+''','''+
        dblcdSit.Text+''','''+
        DM1.wUsuario+''','''+
        DateTimeToStr(Date)+''',SYSDATE'+')';
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);

  xSQL := ' UPDATE APO201 SET '+
          ' ASONCTA='''+dbeCuenta.Text+''''+
          ' ,SITCTA='''+dblcdSit.Text+''''+
          ' ,BANCOID='''+dblcdBco.Text+''''+
          ' WHERE ASOID ='''+DM1.cdsAso.FieldByName('ASOID').AsString+'''';
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);

  xSQL := 'SELECT C.ASOID, C.ASOITEM, C.ASOCODMOD, C.ASOCODAUX, C.ASOAPENOM, '+
          'C.ASONCTA, C.BANCOID, B.BANCONOM, C.SITCTA, S.SITCTADES, C.USUARIO, C.FREG, C.HREG '+
          'FROM APO207 C, TGE105 B, COB103 S '+
          'WHERE C.BANCOID(+)=B.BANCOID AND '+
          'C.SITCTA=S.SITCTAID AND '+
          'ASOID='+''''+DM1.cdsAso.FieldByName('ASOID').AsString+''' ORDER BY ASOITEM';

  DM1.FiltraCDS(DM1.cdsCtasBco,xSQL);
  ShowMessage('Cuenta Grabada correctamente.');
  pnlCtaBco.Visible:=False;

end;

procedure TFDCtasBcos.dblcdBcoExit(Sender: TObject);
begin
  edtBanco.Text:=DM1.DisplayDescrip('prvSQL','TGE105','BANCONOM','BANCOID='''+dblcdBco.Text+'''','BANCONOM');
end;

procedure TFDCtasBcos.dblcdSitExit(Sender: TObject);
begin
  edtSituacion.Text:=DM1.DisplayDescrip('prvSQL','COB103','SITCTADES','SITCTAID='''+dblcdSit.Text+'''','SITCTADES');
end;

procedure TFDCtasBcos.fcShapeBtn1Click(Sender: TObject);
begin
  if DM1.cdsCtasBco.RecordCount>0 then
  begin
    sSQL := 'SELECT C.ASOID, C.BANCOID, B.BANCONOM, S.SITCTADES, C.USUARIO, C.FREG, C.HREG '+
            'FROM APO208 C, TGE105 B, COB103 S '+
            'WHERE C.BANCOID(+)=B.BANCOID AND '+
            'C.SITCTA=S.SITCTAID AND '+
            'C.ASOID='+''''+DM1.cdsAso.FieldByName('ASOID').AsString+''' AND '+
            'C.BANCOID='+''''+DM1.cdsCtasBco.FieldByName('BANCOID').AsString+''' '+
            'ORDER BY C.HREG DESC';
     DM1.FiltraCDS(DM1.cdsCuentaEst,sSQL);
     dbgCuentaEst.Selected.Clear;
     dbgCuentaEst.Selected.Add('SITCTADES'#9'20'#9'SITUACION');
     dbgCuentaEst.Selected.Add('USUARIO'#9'15'#9'USUARIO');
     dbgCuentaEst.Selected.Add('HREG'#9'20'#9'HORA');
     dbgCuentaEst.RefreshDisplay;
     lblBanco.Caption :='Banco: '+dm1.cdsCtasBco.FieldByName('BANCONOM').AsString;
     lblCuenta.Caption:='Nro.Cuenta: '+dm1.cdsCtasBco.FieldByName('ASONCTA').AsString;
     pnlCuentaEst.Visible:=True;
     bntCuentaEst.SetFocus;
  end;
end;

procedure TFDCtasBcos.bntCuentaEstClick(Sender: TObject);
begin
  pnlCuentaEst.Visible:=False;
end;

procedure TFDCtasBcos.dbgAsoCtasDblClick(Sender: TObject);
begin
{  edtCta.Text   :=DM1.cdsCtasBco.FieldByName('ASONCTA').AsString;
  dblcdBco.Text :=DM1.cdsCtasBco.FieldByName('BANCOID').AsString;
  dblcdBco.OnExit(Sender);
  dblcdSit.Text :=DM1.cdsCtasBco.FieldByName('SITCTA').AsString;
  dblcdSit.OnExit(Sender);
  edtCta.Enabled      :=False;
  dblcdBco.Enabled    :=False;
  sbtnAceptar.Visible :=False;
  sbtnModi.Visible    :=True;
  pnlCtaBco.Visible   :=True;
  dblcdSit.Enabled    :=True;
  dblcdSit.SetFocus;
  }
end;

procedure TFDCtasBcos.sbtnModiClick(Sender: TObject);
begin
{var Book:TBookMark;

   Book:=DM1.cdsCtasBco.GetBookmark;
  // Verificando si cambio de estado la cuenta
  if DM1.cdsCtasBco.FieldByName('SITCTA').AsString = dblcdSit.Text then begin
   ShowMessage('El ESTADO de la Cuenta no ha CAMBIADO');
   exit;
  end;
  sSQL:='INSERT INTO APO208 ('+
        'ASOID,BANCOID,ASONCTA,SITCTA,USUARIO,FREG,HREG)'+
        ' VALUES('''+DM1.cdsCtasBco.FieldByName('ASOID').AsString+''','''+
        DM1.cdsCtasBco.FieldByName('BANCOID').AsString+''','''+
        DM1.cdsCtasBco.FieldByName('ASONCTA').AsString+''','''+
        DM1.cdsCtasBco.FieldByName('SITCTA').AsString+''','''+
        DM1.wUsuario+''','''+
        DateTimetoStr(Date)+''',SYSDATE)';
  DM1.DCOM1.AppServer.EjecutaSql(sSQL);

  sSQL:='UPDATE APO207 SET '+
        'SITCTA='''+dblcdSit.Text+''''+
        ',USUARIO='''+DM1.wUsuario+''''+
        ',FREG='''+DatetimeToStr(Date)+''''+
        ',HREG=SYSDATE WHERE '+
        'ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString+''' '+
        'AND BANCOID='''+DM1.cdsCtasBco.FieldByName('BANCOID').AsString+''' '+
        'AND ASONCTA='''+DM1.cdsCtasBco.FieldByName('ASONCTA').AsString+'''';
  DM1.DCOM1.AppServer.EjecutaSql(sSQL);

  DM1.cdsAso.Edit;
  DM1.cdsAso.FieldByName('ASONCTA').AsString      :=Trim(edtCta.Text);
  DM1.cdsAso.FieldByName('SITCTA').AsString       :=dblcdSit.Text;
  DM1.cdsAso.FieldByName('BANCOID').AsString      :=dblcdBco.Text;
  cdsPost(DM1.cdsAso);
  DM1.cdsAso.Post;
  DM1.ControlTran;
  sSQL := 'SELECT C.ASOID, C.ASOITEM, C.ASOCODMOD, C.ASOCODAUX, C.ASOAPENOM,'+
          'C.ASONCTA, C.BANCOID, B.BANCONOM, C.SITCTA,S.SITCTADES, C.USUARIO, C.FREG, C.HREG '+
          'FROM APO207 C,TGE105 B,COB103 S '+
          'WHERE C.BANCOID(+)=B.BANCOID AND '+
          'C.SITCTA=S.SITCTAID AND '+
          'ASOID='+''''+DM1.cdsAso.FieldByName('ASOID').AsString+''' ORDER BY ASOITEM';
  DM1.FiltraCDS(DM1.cdsCtasBco,sSQL);
  DM1.cdsCtasBco.GotoBookmark(Book);
  ShowMessage('Situacion Actualizada correctamente.');
  pnlCtaBco.Visible:=False;
}
end;


procedure TFDCtasBcos.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

end.
