unit COB447;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB447
// Formulario           : FCtrlDescargo
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Registro de Convenios
// Actualizaciones      :
// HPC_201310_COB       : 16/09/2013 - Modificar el LOG de Convenios - Modificar el LOG de Convenios, al insert añadir el IDECON en el Where
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, wwdbdatetimepicker, Buttons;

type
  Tfmancon = class(TForm)
    gbinnuecon: TGroupBox;
    Label1: TLabel;
    Panel1: TPanel;
    edtidecon: TMaskEdit;
    Label2: TLabel;
    medescon: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbdtpinicio: TwwDBDateTimePicker;
    dbdfinal: TwwDBDateTimePicker;
    gbtipaso: TGroupBox;
    chkaplices: TCheckBox;
    chkaplidoc: TCheckBox;
    gbtipdes: TGroupBox;
    chkapliapo: TCheckBox;
    chkaplicuo: TCheckBox;
    rgtipdesapo: TRadioGroup;
    btnmodifica: TBitBtn;
    btnguarda: TBitBtn;
    btncerrar: TBitBtn;
    rgtipdescuo: TRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure btnguardaClick(Sender: TObject);
    procedure chkapliapoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btncerrarClick(Sender: TObject);
    procedure inabilitacab;
    procedure habilitacab;
    procedure btnmodificaClick(Sender: TObject);
    procedure guardalogcab(xidecon:String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmancon: Tfmancon;

implementation

uses COBDM1, Math;

{$R *.dfm}

Procedure Tfmancon.FormActivate(Sender: TObject);
Begin
  If DM1.xSgr = 'I' Then
  Begin
    fmancon.Caption    := 'Ingreso de nuevo convenio';
    gbinnuecon.Caption := 'Registrando nuevo convenio';
    rgtipdesapo.ItemIndex := 0;
  End;
  If DM1.xSgr = 'M' Then
  Begin
    fmancon.Caption    := 'Consulta de convenios';
    gbinnuecon.Caption := 'Detalle del convenio';
    edtidecon.Text     := DM1.cdsRegCob.FieldByName('IDECON').AsString;
    medescon.Text      := DM1.cdsRegCob.FieldByName('DESCON').AsString;
    dbdtpinicio.Date   := StrToDate(DM1.cdsRegCob.FieldByName('FECINI').AsString);
    dbdfinal.Date      := StrToDate(DM1.cdsRegCob.FieldByName('FECFIN').AsString);
    If DM1.cdsRegCob.FieldByName('APLIDOC').AsString =   'S' Then chkaplidoc.Checked := True Else chkaplidoc.Checked := False;
    If DM1.cdsRegCob.FieldByName('APLICES').AsString =   'S' Then chkaplices.Checked := True Else chkaplices.Checked := False;
    If DM1.cdsRegCob.FieldByName('APLICUO').AsString =   'S' Then chkaplicuo.Checked := True Else chkaplicuo.Checked := False;
    If DM1.cdsRegCob.FieldByName('APLIAPO').AsString =   'S' Then chkapliapo.Checked := True Else chkapliapo.Checked := False;
    If DM1.cdsRegCob.FieldByName('TIPDESAPO').AsString = 'A' Then rgtipdesapo.ItemIndex := 0;
    If DM1.cdsRegCob.FieldByName('TIPDESAPO').AsString = 'T' Then rgtipdesapo.ItemIndex := 1;
    If DM1.cdsRegCob.FieldByName('TIPDESCUO').AsString = 'A' Then rgtipdescuo.ItemIndex := 0;
    If DM1.cdsRegCob.FieldByName('TIPDESCUO').AsString = 'T' Then rgtipdescuo.ItemIndex := 1;
    inabilitacab;
  End;
End;

procedure Tfmancon.btnguardaClick(Sender: TObject);
Var xSql, xcod, xano :String;
    xapldoc, xaplces, xaplapo, xaplcuo, xtipdesapo, xtipdescuo:String;
Begin
  If chkaplidoc.Checked = True Then  xapldoc := 'S' Else xapldoc := 'N';
  If chkaplices.Checked = True Then  xaplces := 'S' Else xaplces := 'N';
  If chkapliapo.Checked = True Then  xaplapo := 'S' Else xaplapo := 'N';
  If chkaplicuo.Checked = True Then  xaplcuo := 'S' Else xaplcuo := 'N';
  If rgtipdesapo.ItemIndex = 0 Then xtipdesapo := 'A' Else xtipdesapo := 'T';
  If rgtipdescuo.ItemIndex = 0 Then xtipdescuo := 'A' Else xtipdescuo := 'T';

  If xaplapo = 'N' Then xtipdesapo := '';
  If DM1.xSgr = 'I' Then
  Begin
    If Trim(medescon.Text) = '' Then
    Begin
      MessageDlg('Ingrese la descripción del convenio', mtInformation,[mbOk],0);
      medescon.SetFocus;
      Exit;
    End;
    If Trim(dbdtpinicio.Text) = '' Then
    Begin
      MessageDlg('Ingrese fecha de inicio del convenio', mtInformation,[mbOk],0);
      dbdtpinicio.SetFocus;
      Exit;
    End;
    If Trim(dbdfinal.Text) = '' Then
    Begin
      MessageDlg('Ingrese fecha de finalización del convenio', mtInformation,[mbOk],0);
      dbdfinal.SetFocus;
      Exit;
    End;
    If (chkaplidoc.Checked = False) And (chkaplices.Checked = False) Then
    Begin
      MessageDlg('Seleccione al menos un tipo de asociado', mtInformation,[mbOk],0);
      chkaplidoc.SetFocus;
     Exit;
    End;
    If (chkapliapo.Checked = False) And (chkaplicuo.Checked = False) Then
    Begin
      MessageDlg('Seleccione al menos un tipo de descuento', mtInformation,[mbOk],0);
      chkaplicuo.SetFocus;
      Exit;
    End;
    If chkapliapo.Checked = True Then
    Begin
      If rgtipdesapo.ItemIndex = -1 Then
      Begin
        MessageDlg('Seleccione al menos un tipo de descuento', mtInformation,[mbOk],0);
        chkaplicuo.SetFocus;
        Exit;
      End;
    End;
    If MessageDlg('Seguro de Crear un nuevo registro de Convenio',mtconfirmation,[mbYes,MbNo],0)= mrYes then
    Begin
      xano := Copy(DateToStr(Date),7,4);
      xSql := 'SELECT LPAD(SUBSTR(MAX(IDECON),5,4)+1,4,''0'') IDECON FROM COB_CON_CAB WHERE SUBSTR (IDECON,1,4) = '+QuotedStr(xano);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('IDECON').AsString = '' Then
        xcod := xano+'0001'
      Else
        xcod := xano+DM1.cdsQry.FieldByName('IDECON').AsString;
      //Se incluye el flag de autoriza descuento de créditos - IREVILLA - 24/04/2008
      xSql := 'INSERT INTO COB_CON_CAB (IDECON, DESCON, FECINI, FECFIN, APLIAPO, APLICUO, APLIDOC, APLICES, USUARIO, FECREG, TIPDESAPO, TIPDESCUO, CODESTCON)'
      +' VALUES ('+QuotedStr(xcod)+','+QuotedStr(medescon.Text)+','+QuotedStr(dbdtpinicio.Text)+','+QuotedStr(dbdfinal.Text)
      +','+QuotedStr(xaplapo)+','+QuotedStr(xaplcuo)+','+QuotedStr(xapldoc)+','+QuotedStr(xaplces)
      +','+QuotedStr(DM1.wUsuario)+', SYSDATE,'+QuotedStr(xtipdesapo)+','+QuotedStr(xtipdescuo)+', ''02'' )';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      guardalogcab(xcod);
      MessageDlg('El registro ha sido guardado', mtConfirmation,[mbOk],0);
    End;
  End;
  If DM1.xSgr = 'M' Then
  Begin
    If MessageDlg('Seguro de modificar un nuevo registro de Convenio',mtconfirmation,[mbYes,MbNo],0)= mrYes then
    Begin
      guardalogcab(DM1.cdsRegCob.FieldByName('IDECON').AsString);
      //Se incluye el flag de autoriza descuento de créditos - IREVILLA - 24/04/2008
      xSql := 'UPDATE COB_CON_CAB SET DESCON = '+QuotedStr(medescon.Text)
      +', FECINI  = '+QuotedStr(dbdtpinicio.Text)
      +', FECFIN  = '+QuotedStr(dbdfinal.Text)
      +', APLIAPO = '+QuotedStr(xaplapo)
      +', APLICUO = '+QuotedStr(xaplcuo)
      +', APLIDOC = '+QuotedStr(xapldoc)
      +', APLICES = '+QuotedStr(xaplces)
      +', TIPDESAPO = '+QuotedStr(xtipdesapo)
      +', TIPDESCUO = '+QuotedStr(xtipdescuo)
      +' WHERE IDECON = '+QuotedStr(DM1.cdsRegCob.FieldByName('IDECON').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    End;
  End;
  fmancon.Close;
End;

procedure Tfmancon.chkapliapoClick(Sender: TObject);
begin
  If chkapliapo.Checked = True Then
    rgtipdesapo.Enabled := True
  Else
    rgtipdesapo.Enabled := False;
end;

Procedure Tfmancon.FormKeyPress(Sender: TObject; var Key: Char);
Begin
  If Key = #13 Then
  Begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  End;
End;


procedure Tfmancon.btncerrarClick(Sender: TObject);
begin
  fmancon.Close;
end;

procedure Tfmancon.inabilitacab;
begin
  medescon.Enabled    := False;
  dbdtpinicio.Enabled := False;
  dbdfinal.Enabled    := False;
  gbtipaso.Enabled    := False;
  gbtipdes.Enabled    := False;
  rgtipdesapo.Enabled := False;
  rgtipdescuo.Enabled := False;
  btnguarda.Enabled   := False;
end;

procedure Tfmancon.habilitacab;
begin
  medescon.Enabled    := True;
  dbdtpinicio.Enabled := True;
  dbdfinal.Enabled    := True;
  gbtipaso.Enabled    := True;
  gbtipdes.Enabled    := True;
  rgtipdesapo.Enabled := True;
  rgtipdescuo.Enabled := True;
  btnguarda.Enabled   := True;
  btnmodifica.Enabled := False;
End;

procedure Tfmancon.btnmodificaClick(Sender: TObject);
begin
  habilitacab;
end;

procedure Tfmancon.guardalogcab(xidecon: String);
Var xSql:String;
begin
// Inicio: SPP_201312_COB       : 16/09/2013 - Modificar el LOG de Convenios, al insert añadir el IDECON en el Where
  xSql := 'INSERT INTO COB_CON_CAB_LOG (IDECON, DESCON, FECINI, FECFIN, APLIAPO, APLICUO, APLIDOC, APLICES, USURESCON, FECREGCON, CODESTCON, COMCON, USUARIO, FECREG, DIACOR, TIPDESAPO, CODDEP, USUACT, FECACT)'
  +' SELECT IDECON, DESCON, FECINI, FECFIN, APLIAPO, APLICUO, APLIDOC, APLICES, USURESCON, FECREGCON, CODESTCON, COMCON, USUARIO, FECREG, DIACOR, TIPDESAPO, CODDEP,'+QuotedStr(DM1.wUsuario)+', SYSDATE FROM COB_CON_CAB '
  +' where IDECON = '''+xidecon+'''';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
// Fin: SPP_201312_COB       : 16/09/2013 - Modificar el LOG de Convenios, al insert añadir el IDECON en el Where
end;

end.
