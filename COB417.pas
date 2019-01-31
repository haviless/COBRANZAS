unit COB417;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Mask, wwdbedit, Buttons,
  Spin, Wwkeycb;

type
  TFElegirAso = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgSocio: TwwDBGrid;
    dbeUse: TwwDBEdit;
    dbeCMod: TwwDBEdit;
    dbeCPag: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    dbeImp: TwwDBEdit;
    lblUse: TLabel;
    lblCMod: TLabel;
    lblCPag: TLabel;
    Label4: TLabel;
    lblImp: TLabel;
    pnlOrden: TPanel;
    lblBusca: TLabel;
    Bevel2: TBevel;
    isBusca: TwwIncrementalSearch;
    btnSalir: TBitBtn;
    dbeCta: TwwDBEdit;
    lblCta: TLabel;
    pnlNombre: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    seLong: TSpinEdit;
    BitBtn2: TBitBtn;
    cbLike: TCheckBox;
    seIni: TSpinEdit;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    edtCodMod: TEdit;
    Label2: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    edtDNI: TEdit;
    dbeDNI: TwwDBEdit;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure dbgSocioDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgSocioEnter(Sender: TObject);
    procedure dbgSocioTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtCodModExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //** 04/02/2003 - PJSV,
    wViene : String; //**  1 = TeleAhorro, 2 = Aud.
  end;

var
  FElegirAso: TFElegirAso;
  xSQL : String;

implementation

{$R *.DFM}

USES COBDM1, COB416, MsgDlgs;

procedure TFElegirAso.FormActivate(Sender: TObject);
var
  xSQL : String;
begin
  Screen.Cursor:=crHourGlass;

  //**edtCodMod.Text:=DM1.cdsEjecuta.FieldByname('ASOCODMOD').AsString;

  xSQL:='SELECT ASOID, USEID, ASOCODMOD, ASOCODPAGO, ASONCTA, ASOAPENOM, ASODNI, FREG '+
        'FROM APO201 '+
        'WHERE ASOID=''XX'' '+
        //'WHERE ASOAPENOM LIKE '+ QuotedStr( Trim( Copy(DM1.cdsEjecuta.FieldByname('ASOAPENOM').AsString, 1, seLong.Value ) )+'%' )+
        'ORDER BY ASOAPENOM';

  dbgSocio.Selected.Clear;
  dbgSocio.Selected.Add( 'USEID'+#9+'4'+#9+'Código~USE');
  dbgSocio.Selected.Add( 'ASOCODMOD'+#9+'11'+#9+'Código~Modular');
  dbgSocio.Selected.Add( 'ASOCODPAGO'+#9+'10'+#9+'Código~Pago');
  dbgSocio.Selected.Add( 'ASONCTA'+#9+'12'+#9+'Nº~Cuenta');
  dbgSocio.Selected.Add( 'ASOAPENOM'+#9+'38'+#9+'Apellidos y Nombres');
  dbgSocio.Selected.Add( 'ASODNI'+#9+'10'+#9+'DNI');
  dbgSocio.Selected.Add( 'FREG'+#9+'10'+#9+'Fecha de~Registro');
  dbgSocio.Selected.Add( 'ASOID'+#9+'12'+#9+'Código~Asociado');

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( xSQL );
  Try
    DM1.cdsQry.Open;
  Except
    ShowMessage('Error');
  End;
{  dbgSocio.Selected.Clear;
  dbgSocio.Selected.Add( 'USEID'+#9+'4'+#9+'Código~USE');
  dbgSocio.Selected.Add( 'ASOCODMOD'+#9+'12'+#9+'Código~Modular');
  dbgSocio.Selected.Add( 'ASOCODPAGO'+#9+'12'+#9+'Código~Pago');
  dbgSocio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Apellidos y Nombres');
  dbgSocio.Selected.Add( 'ASODNI'+#9+'10'+#9+'DNI');
  dbgSocio.Selected.Add( 'FREG'+#9+'10'+#9+'Fecha de~Registro');
  dbgSocio.Selected.Add( 'ASOID'+#9+'12'+#9+'Código~Asociado');
}
  //** 04/02/2003 - PJSV
  If wViene = '1' then
   begin
    Label2.caption := 'Busqueda por Cuenta';
    edtCodMod.text := dbeCta.text;
   end
  else
   begin
    Label2.caption := 'Busqueda por Cod. Mod.';
    edtCodMod.text := dbeCMod.text;
   end;
    //**

   edtDNI.Text    := dbeDNI.Text;


  Screen.Cursor:=crDefault;
end;

procedure TFElegirAso.dbgSocioDblClick(Sender: TObject);
begin
  if DM1.cdsQry.Recordcount>0 then
  begin
    if Question(Caption,'Usted a Seleccionado al Asociado'+#13+#13+
                        'Cod. Mod.  '+DM1.cdsQry.FieldByname('ASOCODMOD').AsString+'  -  '+DM1.cdsQry.FieldByname('ASOAPENOM').AsString+#13+#13+
                        'Esta Seguro ...?? ') then
    begin
      Screen.Cursor:=crHourGlass;
      DM1.cdsQry5.Edit;
      DM1.cdsQry5.FieldByName('ASOID').AsString:=DM1.cdsQry.FieldByname('ASOID').AsString;

      //DM1.cdsEjecuta.FieldByName('USEIDA').AsString     :=DM1.cdsQry.FieldByname('USEID').AsString;
      //DM1.cdsEjecuta.FieldByName('ASOCODMODA').AsString :=DM1.cdsQry.FieldByname('ASOCODMOD').AsString;
      //DM1.cdsEjecuta.FieldByName('ASOCODPAGOA').AsString:=DM1.cdsQry.FieldByname('ASOCODPAGO').AsString;
      DM1.cdsQry5.FieldByName('ASOAPENOMA').AsString :=DM1.cdsQry.FieldByname('ASOAPENOM').AsString;

      Application.ProcessMessages;
      // DM1.AplicaDatos(DM1.cdsQry5, '' ) SE REMPLAZA POR LAS SIGUIENTES LINEAS;
       //--
         IF DM1.cdsQry5.ApplyUpdates(-1) > 0 THEN
            Begin
             xsQl:='UPDATE COB310 SET ASOID='''+DM1.cdsQry.FieldByname('ASOID').AsString+
                   ''' ,ASOAPENOMA='''+ DM1.cdsQry.FieldByname('ASOAPENOM').AsString+''''+
                   ' WHERE ASOCODMOD='''+ DM1.cdsQry5.FieldByName('ASOCODMOD').AsString+
                   ''' AND ASOAPENOM='''+DM1.cdsQry5.FieldByname('ASOAPENOM').AsString+
                   ''' AND ARCHIVO='''+ DM1.cdsQry5.FieldByname('ARCHIVO').AsString+''' ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
           End;
       //--
      Screen.Cursor:=crDefault;
      Close;
    end;
  end;
end;

procedure TFElegirAso.BitBtn2Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  DM1.cdsQry.IndexFieldNames:='';
	isBusca.SearchField:='';
  pnlOrden.Visible:=False;
  if cbLike.Checked then
     xSQL:='SELECT ASONCTA,ASOID, USEID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASODNI, FREG FROM APO201 '
          +'WHERE ASOAPENOM LIKE '+QuotedStr( '%'+Trim( Copy(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString, seIni.Value, seLong.Value ))+'%' )
          +' ORDER BY ASOAPENOM'
  else
     xSQL:='SELECT ASONCTA,ASOID, USEID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASODNI, FREG FROM APO201 '
          +'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(Copy(DM1.cdsQry5.FieldByname('ASOAPENOM').AsString, seIni.Value, seLong.Value ) )+'%' )
          +' ORDER BY ASOAPENOM';

  dbgSocio.Selected.Clear;
  dbgSocio.Selected.Add( 'USEID'+#9+'4'+#9+'Código~USE');
  dbgSocio.Selected.Add( 'ASOCODMOD'+#9+'12'+#9+'Código~Modular');
  dbgSocio.Selected.Add( 'ASOCODPAGO'+#9+'12'+#9+'Código~Pago');
  dbgSocio.Selected.Add( 'ASONCTA'+#9+'12'+#9+'Nº~Cuenta');
  dbgSocio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Apellidos y Nombres');
  dbgSocio.Selected.Add( 'ASODNI'+#9+'10'+#9+'DNI');
  dbgSocio.Selected.Add( 'FREG'+#9+'10'+#9+'Fecha de~Registro');
  dbgSocio.Selected.Add( 'ASOID'+#9+'12'+#9+'Código~Asociado');

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( xSQL );
  try
    DM1.cdsQry.Open;
  except
    ShowMessage('Error');
  end;

  dbgSocio.Selected.Clear;
  dbgSocio.Selected.Add( 'USEID'+#9+'4'+#9+'Código~USE');
  dbgSocio.Selected.Add( 'ASOCODMOD'+#9+'12'+#9+'Código~Modular');
  dbgSocio.Selected.Add( 'ASOCODPAGO'+#9+'12'+#9+'Código~Pago');
  dbgSocio.Selected.Add( 'ASONCTA'+#9+'12'+#9+'Nº~Cuenta');
  dbgSocio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Apellidos y Nombres');
  dbgSocio.Selected.Add( 'ASODNI'+#9+'10'+#9+'DNI');
  dbgSocio.Selected.Add( 'FREG'+#9+'10'+#9+'Fecha de~Registro');
  dbgSocio.Selected.Add( 'ASOID'+#9+'12'+#9+'Código~Asociado');
  Screen.Cursor:=CrDefault;
end;

procedure TFElegirAso.dbgSocioEnter(Sender: TObject);
begin
  DM1.cdsQry.IndexFieldNames:='';
	isBusca.SearchField:='';
	pnlOrden.Visible:=False;
end;

procedure TFElegirAso.dbgSocioTitleButtonClick(Sender: TObject; AFieldName: String);
begin
	lblBusca.Caption:='XX';
	if AfieldName='ASONCTA' then
	begin
		DM1.cdsQry.IndexFieldNames:='ASONCTA';
		lblBusca.Caption:='Busca por Nº Cuenta:';
		isBusca.SearchField:='ASONCTA';
	end;
	if AfieldName='ASOAPENOM' then
	begin
		DM1.cdsQry.IndexFieldNames:='ASOAPENOM';
		lblBusca.Caption:='Busca por Apellidos y Nombres:';
		isBusca.SearchField:='ASOAPENOM';
	end;
	if AfieldName='ASODNI' then
	begin
		DM1.cdsQry.IndexFieldNames:='ASODNI';
		lblBusca.Caption:='Busca por D.N.I.:';
		isBusca.SearchField:='ASODNI';
	end;
	if lblBusca.Caption<>'XX' then
	begin
		pnlOrden.Visible := True;
		isBusca.Text:='';
		isBusca.SetFocus;
	end;
end;

procedure TFElegirAso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsQry.IndexFieldNames:='';
	isBusca.SearchField:='';
	pnlOrden.Visible:=False;
end;

procedure TFElegirAso.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  DM1.cdsQry.IndexFieldNames:='';
  isBusca.SearchField:='';
  pnlOrden.Visible:=False;
  If wViene = '1' then
   xSQL:='SELECT ASONCTA,ASOID, USEID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASODNI, FREG FROM APO201 '+
        'WHERE ASONCTA='+QuotedStr(Trim(edtCodMod.Text))+' '+
        'ORDER BY ASOAPENOM'
  else
   xSQL:='SELECT ASONCTA,ASOID, USEID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASODNI, FREG FROM APO201 '+
         'WHERE ASOCODMOD='+QuotedStr(Trim(edtCodMod.Text))+' '+
         'ORDER BY ASOAPENOM';


  dbgSocio.Selected.Clear;
  dbgSocio.Selected.Add( 'USEID'+#9+'4'+#9+'Código~USE');
  dbgSocio.Selected.Add( 'ASOCODMOD'+#9+'12'+#9+'Código~Modular');
  dbgSocio.Selected.Add( 'ASOCODPAGO'+#9+'12'+#9+'Código~Pago');
  dbgSocio.Selected.Add( 'ASONCTA'+#9+'12'+#9+'Nº~Cuenta');
  dbgSocio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Apellidos y Nombres');
  dbgSocio.Selected.Add( 'ASODNI'+#9+'10'+#9+'DNI');
  dbgSocio.Selected.Add( 'FREG'+#9+'10'+#9+'Fecha de~Registro');
  dbgSocio.Selected.Add( 'ASOID'+#9+'12'+#9+'Código~Asociado');

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( xSQL );
  try
    DM1.cdsQry.Open;
  except
    ShowMessage('Error');
  end;

  dbgSocio.Selected.Clear;
  dbgSocio.Selected.Add( 'USEID'+#9+'4'+#9+'Código~USE');
  dbgSocio.Selected.Add( 'ASOCODMOD'+#9+'12'+#9+'Código~Modular');
  dbgSocio.Selected.Add( 'ASOCODPAGO'+#9+'12'+#9+'Código~Pago');
  dbgSocio.Selected.Add( 'ASONCTA'+#9+'12'+#9+'Nº~Cuenta');
  dbgSocio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Apellidos y Nombres');
  dbgSocio.Selected.Add( 'ASODNI'+#9+'10'+#9+'DNI');
  dbgSocio.Selected.Add( 'FREG'+#9+'10'+#9+'Fecha de~Registro');
  dbgSocio.Selected.Add( 'ASOID'+#9+'12'+#9+'Código~Asociado');
  Screen.Cursor:=CrDefault;
end;

procedure TFElegirAso.edtCodModExit(Sender: TObject);
begin
  edtCodMod.Text:=dm1.StrZero(edtCodMod.Text,10)
end;


procedure TFElegirAso.BitBtn3Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  DM1.cdsQry.IndexFieldNames:='';
  isBusca.SearchField:='';
  pnlOrden.Visible:=False;

   xSQL:='SELECT ASONCTA,ASOID, USEID, ASOCODMOD, ASOCODPAGO, ASOAPENOM, ASODNI, FREG FROM APO201 '+
         'WHERE ASODNI='+QuotedStr(Trim(edtDNI.Text))+' '+
         'ORDER BY ASOAPENOM';


  dbgSocio.Selected.Clear;
  dbgSocio.Selected.Add( 'USEID'+#9+'4'+#9+'Código~USE');
  dbgSocio.Selected.Add( 'ASOCODMOD'+#9+'12'+#9+'Código~Modular');
  dbgSocio.Selected.Add( 'ASOCODPAGO'+#9+'12'+#9+'Código~Pago');
  dbgSocio.Selected.Add( 'ASONCTA'+#9+'12'+#9+'Nº~Cuenta');
  dbgSocio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Apellidos y Nombres');
  dbgSocio.Selected.Add( 'ASODNI'+#9+'10'+#9+'DNI');
  dbgSocio.Selected.Add( 'FREG'+#9+'10'+#9+'Fecha de~Registro');
  dbgSocio.Selected.Add( 'ASOID'+#9+'12'+#9+'Código~Asociado');

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( xSQL );
  try
    DM1.cdsQry.Open;
  except
    ShowMessage('Error');
  end;

  dbgSocio.Selected.Clear;
  dbgSocio.Selected.Add( 'USEID'+#9+'4'+#9+'Código~USE');
  dbgSocio.Selected.Add( 'ASOCODMOD'+#9+'12'+#9+'Código~Modular');
  dbgSocio.Selected.Add( 'ASOCODPAGO'+#9+'12'+#9+'Código~Pago');
  dbgSocio.Selected.Add( 'ASONCTA'+#9+'12'+#9+'Nº~Cuenta');
  dbgSocio.Selected.Add( 'ASOAPENOM'+#9+'40'+#9+'Apellidos y Nombres');
  dbgSocio.Selected.Add( 'ASODNI'+#9+'10'+#9+'DNI');
  dbgSocio.Selected.Add( 'FREG'+#9+'10'+#9+'Fecha de~Registro');
  dbgSocio.Selected.Add( 'ASOID'+#9+'12'+#9+'Código~Asociado');
  Screen.Cursor:=CrDefault;

end;

end.
