unit COB702;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Mask, wwdbedit, StdCtrls,
  wwdblook, Wwdbdlg, DBTables,Mant,DB, wwdbdatetimepicker;

type
  TFToolActApo = class(TForm)
    pnlTool: TPanel;
    dblcduniPag: TwwDBLookupComboDlg;
    dblcdUse: TwwDBLookupComboDlg;
    dbeUniPag: TwwDBEdit;
    dbeUse: TwwDBEdit;
    bbtnSigue: TfcShapeBtn;
    Panel1: TPanel;
    Label2: TLabel;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    Label3: TLabel;
    dbeNumOpe: TwwDBEdit;
    dbeFecOpe: TwwDBDateTimePicker;
    Label1: TLabel;
    procedure dblcduniPagExit(Sender: TObject);
    procedure dblcdUseExit(Sender: TObject);
    procedure bbtnSigueClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    XSQL,xWhere1,xWhere2:STRING;
    salir:Boolean;
    { Public declarations }
  end;

var
  FToolActApo: TFToolActApo;

implementation

uses COBDM1, COB001;

{$R *.DFM}

procedure TFToolActApo.dblcduniPagExit(Sender: TObject);
begin
 if trim(dblcduniPag.Text)='' then
   dbeUniPag.Text :=''
 else
   dbeUniPag.Text :=Dm1.cdsUPago.fieldByName('UPAGONOM').AsString;
end;

procedure TFToolActApo.dblcdUseExit(Sender: TObject);
begin
 if trim(dblcdUse.Text)='' then
   dbeUse.Text :=''
 else
   dbeUse.Text :=Dm1.cdsUses.fieldByName('USENOM').AsString;
end;

procedure TFToolActApo.bbtnSigueClick(Sender: TObject);
var i:integer;
begin
  xWhere1:='';xWhere2:='';
  // Condiciones del Panel de Seleccion
  if trim(dblcdUniPag.Text)<>'' then // Unidad de Pago
     xWhere1:='AND UPAGOID='''+dblcdUniPag.Text+''' ';
  if trim(dblcdUse.Text)<>'' then    // Use
     xWhere1:=xWhere1+'AND USEID='''+dblcdUse.Text+''' ';

  XSQL:= 'SELECT * FROM APO400 WHERE FLAGACT=''N'' '+xWhere1;

  // Condiciones del filtro
  if FPrincipal.Mtx.FMant.lbFiltroReal.Items.Count>0 then
      for i:=0 to FPrincipal.Mtx.FMant.lbFiltroReal.Items.Count-1 do
          xWhere2:=xWhere2+' AND '+FPrincipal.Mtx.FMant.lbFiltroReal.items[i];

  XSQL:=XSQL+xWhere2;

  Screen.Cursor:=crHourGlass;
    FPrincipal.Mtx.UsuarioSQL.Clear;
    FPrincipal.Mtx.UsuarioSQL.Add(XSQL);
    FPrincipal.Mtx.NewQuery;
   Screen.Cursor:=crDefault;

   // Llamando al Panel de Actualización
   Panel1.Left:=(Fprincipal.ClientWidth div 2)-(Panel1.ClientWidth div 2);
   Panel1.Top:=(Fprincipal.ClientHeight  div 2)-(Panel1.ClientHeight div 2);
   dbeFecOpe.ClearDateTime;
   dbeNumOpe.Clear;
   Panel1.Parent:=FPrincipal.Mtx.FMant;
   dbeNumOpe.setfocus;
end;

procedure TFToolActApo.Panel1Exit(Sender: TObject);
begin
 if Not FToolActApo.salir then
   dbeNumOpe.setfocus;
end;

procedure TFToolActApo.fcShapeBtn1Click(Sender: TObject);
VAR
    HayVacio:Boolean;
begin
  // Verificando que ingresen Fec. y Num. de Operacion
  HayVacio:=False;
  if (trim(dbeFecOpe.Text)='') or  (trim(dbeNumOpe.Text)='') then
      HayVacio:=True;

  if HayVacio then begin
    ShowMessage('! La Fecha y el Número de Operación son Obligatorios !');
    exit;
  end;

  XSQL:='INSERT INTO APO301 '+
  'SELECT ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID, UPROABR, '+
  'TMONID, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, TRANSFFCIND, TRANSANO, '+
  'TRANSMES, TRANSMTO, TRANSMTODEV, SALDOANT, INTERESMTO, SALDO, '+
  'SALDOBONUS, BONUSMTO, INTERESPORC, BONUSPORC, TRANSINTID, '+
  'USUARIO, APOFRECL, ASOCODMOD, FORPAGOID, ASOAPENOM, TRANSPRV, '+
  'APOFNP, FECCTAIND, APOFDEV, DEVANO, DEVMES, FORPAGOABR, DPTOID, '+
  'DPTOABR, CIUDID, FREG, HREG, TRANSAAMM, TRANSAATRI, TRANSTRIM, '+
  'TRANSSEM, TRANSAASEM, APOFCNT '+
  'FROM APO400 '+
  'WHERE FLAGACT=''N''';

   XSQL:=XSQL+xWhere1+xWhere2;

 Screen.Cursor:=crHourGlass;
  DM1.DCOM1.AppServer.ejecutaSQL(XSQL);
  XSQL:='UPDATE APO400 '+
        'SET TRANSFOPE = '''+dbeFecOpe.Text+''',TRANSNOPE ='+dbeNumOpe.Text+', FLAGACT=''S'' '+
        'WHERE FLAGACT=''N'' '+xWhere1+xWhere2;
  DM1.DCOM1.AppServer.ejecutaSQL(XSQL);
  XSQL:='SELECT * FROM APO400 WHERE FLAGACT=''N''';
  FPrincipal.Mtx.UsuarioSQL.Clear;
  FPrincipal.Mtx.UsuarioSQL.Add(XSQL);
  FPrincipal.Mtx.NewQuery;
 Screen.Cursor:=crDefault;
 FToolActApo.Salir:=true;
 Panel1.Parent:=FToolActApo;
 dbeUniPag.Clear;
 dblcdUniPag.Clear;
 dbeUse.Clear;
 dblcdUse.Clear;
end;

procedure TFToolActApo.FormCreate(Sender: TObject);
begin
  Salir:=False;
end;

procedure TFToolActApo.fcShapeBtn2Click(Sender: TObject);
begin
 dbeFecOpe.ClearDateTime;
 dbeNumOpe.Clear;
 dbeUniPag.Clear;
 dblcdUniPag.Clear;
 dbeUse.Clear;
 dblcdUse.Clear;
 FToolActApo.salir:=true;
 Panel1.Parent:=FToolActApo;
 Screen.Cursor:=crHourGlass;
  XSQL:='SELECT * FROM APO400 WHERE FLAGACT=''N''';
  FPrincipal.Mtx.UsuarioSQL.Clear;
  FPrincipal.Mtx.UsuarioSQL.Add(XSQL);
  FPrincipal.Mtx.NewQuery;
 Screen.Cursor:=crDefault;
end;

end.



