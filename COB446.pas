unit COB446;

// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Cobranzas
// Unidad                    : COB446
// Formulario                : fpricon
// Fecha de Creación         :
// Autor                     : Desarrollo Sistemas Derrama
// Objetivo                  : Mantenimiento de convenios
//
// Actualizaciones:
// HPC_201308_COB            : 10/07/2013   Alerta de Vencimiento de convenios
// SPP_201310_COB            : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, ComCtrls, DB,
  ExtCtrls, wwdblook, Wwdbdlg, DBGrids;

type
  Tfpricon = class(TForm)
    btnsalir: TBitBtn;
    gbconcab: TGroupBox;
    dbgcabecera: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    btnanucon: TBitBtn;
    btnciecon: TBitBtn;
    gbcondet: TGroupBox;
    dbgdetalle: TwwDBGrid;
    wwIButton1: TwwIButton;
    btneliminadetalle: TBitBtn;
    gbbuscon: TGroupBox;
    Panel1: TPanel;
    edtdescon: TEdit;
    btnfiltrar: TBitBtn;
    BitBtn1: TBitBtn;
    dtgData: TDBGrid;
// Inicio: SPP_201310_COB            : 10/07/2013   Alerta de Vencimiento de convenios
    bbtnAlerta: TBitBtn;
// Fin: SPP_201310_COB            : 10/07/2013   Alerta de Vencimiento de convenios
    procedure wwDBGrid1IButtonClick(Sender: TObject);
    procedure dbgcabeceraDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwIButton1Click(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure dbgcabeceraCellChanged(Sender: TObject);
    procedure btneliminadetalleClick(Sender: TObject);
    procedure btncieconClick(Sender: TObject);
    procedure btnanuconClick(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure guardalogdet(xidecon, xuproid, xupagoid, xuseid:String);
    procedure guardalogcab(xidecon: String);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgdetalleDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
// Inicio: SPP_201310_COB            : 10/07/2013   Alerta de Vencimiento de convenios
    procedure bbtnAlertaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
// Fin: SPP_201310_COB            : 10/07/2013   Alerta de Vencimiento de convenios
  private
    { Private declarations }
  public
    procedure actualizacabecera;
    procedure actualizadetalle;
    function verificasianade():boolean;
    { Public declarations }
  end;

var
  fpricon: Tfpricon;

implementation

// Inicio: SPP_201310_COB        : 10/07/2013   Alerta de Vencimiento de convenios
uses COB447, COBDM1, COB448, COB994, COB593;
// Fin: SPP_201310_COB           : 10/07/2013   Alerta de Vencimiento de convenios

{$R *.dfm}

procedure Tfpricon.wwDBGrid1IButtonClick(Sender: TObject);
begin
  DM1.xSgr := 'I';
  Try
    fmancon := Tfmancon.create(Self);
    fmancon.ShowModal;
  Finally
    fmancon.Free;
  End;
  actualizacabecera;
end;

Procedure Tfpricon.dbgcabeceraDblClick(Sender: TObject);
Begin
  If verificasianade() = True Then
  Begin
    DM1.xSgr := 'M';
    Try
      fmancon := Tfmancon.create(Self);
      fmancon.ShowModal;
    Finally
      fmancon.Free;
    End;
    actualizacabecera;
  End;
End;


Procedure Tfpricon.actualizacabecera;
Var xSql:String;
Begin
  If Trim(edtdescon.Text) <> '' Then
    xSql := 'SELECT IDECON, DESCON, FECINI, FECFIN, APLICUO, APLIAPO, APLIDOC, APLICES, TIPDESAPO, TIPDESCUO, PERINIDESCUO, DIACOR, A.CODESTCON, B.DESESTCON,'
    +' CASE WHEN TIPDESAPO = ''T'' THEN ''TODOS LOS DOCENTES'' WHEN TIPDESAPO = ''A'' THEN ''SOLO CON AUTORIZACION'' END FORDESAPO,'
    +' CASE WHEN TIPDESCUO = ''T'' THEN ''TODOS LAS CUOTAS''   WHEN TIPDESCUO = ''A'' THEN ''SOLO CON AUTORIZACION'' END FORDESCUO'
    +' FROM COB_CON_CAB A, (SELECT CODESTCON, DESESTCON FROM COB_DES_EST_CON WHERE TIPO = ''1'') B'
    +' WHERE A.CODESTCON IN (''02'',''21'') AND A.DESCON LIKE '+QuotedStr('%'+Trim(edtdescon.Text)+'%')+' AND A.CODESTCON = B.CODESTCON(+)'
  Else
    xSql := 'SELECT IDECON, DESCON, FECINI, FECFIN, APLICUO, APLIAPO, APLIDOC, APLICES, TIPDESAPO, TIPDESCUO, PERINIDESCUO, DIACOR, A.CODESTCON, B.DESESTCON,'
    +' CASE WHEN TIPDESAPO = ''T'' THEN ''TODOS LOS DOCENTES'' WHEN TIPDESAPO = ''A'' THEN ''SOLO CON AUTORIZACION'' END FORDESAPO,'
    +' CASE WHEN TIPDESCUO = ''T'' THEN ''TODOS LAS CUOTAS''   WHEN TIPDESCUO = ''A'' THEN ''SOLO CON AUTORIZACION'' END FORDESCUO'
    +' FROM COB_CON_CAB A, (SELECT CODESTCON, DESESTCON FROM COB_DES_EST_CON WHERE TIPO = ''1'') B'
    +' WHERE A.CODESTCON IN (''02'',''21'') AND A.CODESTCON = B.CODESTCON(+)';
  DM1.cdsRegCob.IndexFieldNames := '';
  DM1.cdsRegCob.Close;
  DM1.cdsRegCob.DataRequest(xSql);
  DM1.cdsRegCob.Open;
  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('IDECON'#9'8'#9'Número del~convenio'#9#9);
  dbgCabecera.Selected.Add('DESCON'#9'18'#9'Descripción del convenio'#9#9);
  dbgCabecera.Selected.Add('FECINI'#9'10'#9'Fecha de inicio~del convenio'#9#9);
  dbgCabecera.Selected.Add('FECFIN'#9'10'#9'Fecha de finalización~del convenio'#9#9);
  dbgCabecera.Selected.Add('APLICUO'#9'1'#9'Aplica~cuotas'#9#9);
  dbgCabecera.Selected.Add('APLIAPO'#9'1'#9'Aplica~aportes'#9#9);
  dbgCabecera.Selected.Add('APLIDOC'#9'1'#9'Aplica~docentes'#9#9);
  dbgCabecera.Selected.Add('APLICES'#9'1'#9'Aplica~cesantes'#9#9);
  dbgCabecera.Selected.Add('DESESTCON'#9'12'#9'Estado del~convenio'#9#9);
  dbgCabecera.Selected.Add('FORDESAPO'#9'25'#9'Forma/descuento~de aportes'#9#9);
  dbgCabecera.Selected.Add('FORDESCUO'#9'25'#9'Forma/descuento~de cuotas'#9#9);
 // dbgCabecera.Selected.Add('PERINIDESCUO'#9'6'#9'Per.Ini.~desc.cuotas'#9#9);
  dbgCabecera.ApplySelected;
End;

procedure Tfpricon.FormActivate(Sender: TObject);
begin
  actualizacabecera;
end;

procedure Tfpricon.wwIButton1Click(Sender: TObject);
begin
  If verificasianade()= True Then
  Begin
    DM1.xCnd := 'I';
    Try
      fmandetcon := Tfmandetcon.create(Self);
      fmandetcon.ShowModal;
    Finally
      fmandetcon.Free;
    End;
    actualizadetalle;
  End;
End;

procedure Tfpricon.btnsalirClick(Sender: TObject);
begin
  fpricon.Close;
end;

procedure Tfpricon.actualizadetalle;
Var xSql:String;
begin

  dbgdetalle.Selected.Clear;
  dbgdetalle.Selected.Add('OFDESNOM'#9'15'#9'Descripción de~oficina'#9#9);
  dbgdetalle.Selected.Add('UPROID'#9'3'#9'Unidad/~proceso'#9#9);
  dbgdetalle.Selected.Add('UPRONOM'#9'18'#9'Descripción de la~unidad de proceso'#9#9);
  dbgdetalle.Selected.Add('USEID'#9'3'#9'Unidad/~gestión'#9#9);
  dbgdetalle.Selected.Add('USENOM'#9'21'#9'Descripción de la~unidad de gestión'#9#9);
  dbgdetalle.Selected.Add('CODCARGODO'#9'3'#9'Pri. 3 dig.~reg.(DO)'#9#9);
  dbgdetalle.Selected.Add('DIGMASREPDO'#9'3'#9'Últ. 3 dig.~reg.(DO)'#9#9);
  dbgdetalle.Selected.Add('CODCARGOCE'#9'3'#9'Pri. 3 dig.~reg.(CE)'#9#9);
  dbgdetalle.Selected.Add('DIGMASREPCE'#9'3'#9'Últ. 3 dig.~reg.(CE)'#9#9);
  dbgdetalle.Selected.Add('FLACAR'#9'2'#9'Autoriza~cargo'#9#9);
  dbgdetalle.ApplySelected;
  // Actualizando detalle
  xSql := 'SELECT A.IDECON, D.OFDESID, D.OFDESNOM, A.UPROID, B.UPRONOM, C.USEID, C.USENOM, C.UPAGOID, C.CODCARGODO, C.DIGMASREPDO, C.CODCARGOCE, C.DIGMASREPCE, C.DPTOID,'
  +' CASE WHEN C.FLACAR = ''S'' THEN ''SI'' ELSE ''NO'' END FLACAR'
  +' FROM COB_CON_DET A, APO102 B, APO101 C, APO110 D'
  +' WHERE IDECON = '+QuotedStr(DM1.cdsRegCob.FieldByName('IDECON').AsString)+' AND A.UPROID = B.UPROID AND A.UPROID = C.UPROID'
  +' AND A.UPAGOID = C.UPAGOID AND A.USEID = C.USEID AND C.OFDESID = D.OFDESID';
  DM1.cdsDetRegCob.Close;
  DM1.cdsDetRegCob.DataRequest(xSql);
  DM1.cdsDetRegCob.Open;
  DM1.cdsDetRegCob.First;
end;

procedure Tfpricon.dbgcabeceraCellChanged(Sender: TObject);
begin
  actualizadetalle;
end;

Function Tfpricon.verificasianade: boolean;
Begin
  // Verificando si se puede añadir o modificar en este convenio
  // Verificando si no esta cerrado.
  If DM1.cdsRegCob.FieldByName('CODESTCON').AsString = '21' Then
  Begin
    MessageDlg('Este convenio ya se encuentra cerrado', mtConfirmation,[mbOk],0);
    Result := False;
    Exit;
  End;
  If DM1.cdsRegCob.FieldByName('CODESTCON').AsString = '13' Then
  Begin
    MessageDlg('Este convenio fue anulado', mtConfirmation,[mbOk],0);
    Result := False;
    Exit;
  End;
  {
  If (DM1.cdsRegCob.FieldByName('FECFIN').AsDateTime < Date) Then
  Begin
    MessageDlg('Este convenio ya se encuentra vencido ', mtConfirmation,[mbOk],0);
    Result := False;
    Exit;
  End;
  }

  Result := True;
End;

Procedure Tfpricon.btneliminadetalleClick(Sender: TObject);
Var xSql:String;
Begin
  If verificasianade() = True Then
  Begin
    If DM1.cdsDetRegCob.RecordCount = 0 Then
    Begin
      MessageDlg('No existe registro para eliminar', mtConfirmation,[mbOk],0);
      Exit;
    End;
    If MessageDlg('¿ Seguro eliminar registro ?',mtconfirmation,[mbYes,MbNo],0)=mrYes Then
    Begin
     guardalogdet(DM1.cdsDetRegCob.FieldByName('IDECON').AsString, DM1.cdsDetRegCob.FieldByName('UPROID').AsString,
     DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString, DM1.cdsDetRegCob.FieldByName('USEID').AsString);
      xSql := 'DELETE FROM COB_CON_DET WHERE'
      +' IDECON = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('IDECON').AsString)
      +' AND UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)
      +' AND UPAGOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)
      +' AND USEID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('USEID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      actualizadetalle;
      MessageDlg('Registro eliminado', mtConfirmation,[mbOk],0);
    End;
  End;
End;

Procedure Tfpricon.btncieconClick(Sender: TObject);
Var xSql:String;
Begin
  If DM1.cdsRegCob.FieldByName('CODESTCON').AsString = '21' Then
  Begin
   MessageDlg('Este convenio ya se encuentra cerrado', mtConfirmation,[mbOk],0);
   Exit;
  End;
  If DM1.cdsRegCob.FieldByName('CODESTCON').AsString = '13' Then
  Begin
   MessageDlg('Este convenio esta anulado no puede ser cerrado', mtConfirmation,[mbOk],0);
   Exit;
  End;
  If MessageDlg('¿ Seguro de marcar como cerrado este convenio ?',mtconfirmation,[mbYes,MbNo],0)=mrYes Then
  Begin
    guardalogcab(DM1.cdsRegCob.FieldByName('IDECON').AsString);
    xSql := 'UPDATE COB_CON_CAB SET CODESTCON = ''21'' WHERE IDECON = '+QuotedStr(DM1.cdsRegCob.FieldByName('IDECON').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    actualizacabecera;
    MessageDlg('Este convenio ha sido cerrado', mtConfirmation,[mbOk],0);
  End;
End;

procedure Tfpricon.btnanuconClick(Sender: TObject);
Var bmk : TBookMark;
    xSql:String;
begin
  bmk := DM1.cdsRegCob.GetBookmark;
  If DM1.cdsRegCob.FieldByName('CODESTCON').AsString = '13' Then
  Begin
   MessageDlg('Este convenio ya se encuentra anulado', mtConfirmation,[mbOk],0);
   Exit;
  End;
  If DM1.cdsRegCob.FieldByName('CODESTCON').AsString = '21' Then
  Begin
   MessageDlg('Este convenio esta cerrado no puede ser anulado', mtConfirmation,[mbOk],0);
   Exit;
  End;
  If MessageDlg('¿ Seguro de marcar como anulado este convenio ?',mtconfirmation,[mbYes,MbNo],0)=mrYes Then
  Begin
    guardalogcab(DM1.cdsRegCob.FieldByName('IDECON').AsString);
    xSql := 'UPDATE COB_CON_CAB SET CODESTCON = ''13'' WHERE IDECON = '+QuotedStr(DM1.cdsRegCob.FieldByName('IDECON').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    actualizacabecera;
    MessageDlg('Este convenio ha sido anulado', mtConfirmation,[mbOk],0);
  End;
  DM1.cdsRegCob.GotoBookmark(bmk);
End;

Procedure Tfpricon.btnfiltrarClick(Sender: TObject);
Begin
  actualizacabecera;
End;


Procedure Tfpricon.guardalogdet(xidecon, xuproid, xupagoid, xuseid: String);
Var xSql:String;
Begin
  xSql := 'INSERT INTO COB_CON_DET_LOG(IDECON, UPROID, UPAGOID, USEID, USUREG, FEREG)'
  +' SELECT IDECON, UPROID, UPAGOID, USEID,'+QuotedStr(DM1.wUsuario)+', SYSDATE'
  +' FROM COB_CON_DET WHERE IDECON = '+QuotedStr(xidecon)+' AND UPROID = '+QuotedStr(xuproid)+' AND UPAGOID = '+QuotedStr(xupagoid)+' AND USEID = '+QuotedStr(xuseid);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
End;

procedure Tfpricon.guardalogcab(xidecon: String);
Var xSql:String;
begin
  xSql := 'INSERT INTO COB_CON_CAB_LOG(IDECON, DESCON, FECINI, FECFIN, APLIAPO, APLICUO, APLIDOC, APLICES,'
  +' USURESCON, FECREGCON, CODESTCON, COMCON, USUARIO, FECREG, DIACOR, TIPDESAPO, CODDEP, USUACT, FECACT)'
  +' SELECT IDECON, DESCON, FECINI, FECFIN, APLIAPO, APLICUO, APLIDOC, APLICES,'
  +' USURESCON, FECREGCON, CODESTCON, COMCON, USUARIO, FECREG, DIACOR,'
  +' TIPDESAPO, CODDEP, '+QuotedStr(DM1.wUsuario)+', SYSDATE FROM COB_CON_CAB WHERE IDECON = '+QuotedStr(xidecon);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
end;

procedure Tfpricon.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 Then
    If (ActiveControl is TCheckBox) then
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End
    Else
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End;
end;

procedure Tfpricon.dbgdetalleDblClick(Sender: TObject);
begin
  Try
    FmodUGEL := TFmodUGEL.Create(Self);
    FmodUGEL.ShowModal;
  Finally
    FmodUGEL.Free;
  End;
end;

procedure Tfpricon.BitBtn1Click(Sender: TObject);
begin
  DM1.HojaExcel('Detalles', DM1.dsRegCob, dtgData);
end;

// Inicio: SPP_201310_COB            : 10/07/2013   Alerta de Vencimiento de convenios
procedure Tfpricon.bbtnAlertaClick(Sender: TObject);
begin
   try
     FConvenioAlerta:=TFConvenioAlerta.Create(self);
     FConvenioAlerta.ShowModal;
   finally
     FConvenioAlerta.Free;
   end;
end;
// Fin: SPP_201310_COB            : 10/07/2013   Alerta de Vencimiento de convenios

// Inicio: SPP_201310_COB            : 10/07/2013   Alerta de Vencimiento de convenios
procedure Tfpricon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsDetRegCob.Close;
  DM1.cdsRegCob.Close;
end;
// Fin: SPP_201310_COB            : 10/07/2013   Alerta de Vencimiento de convenios

end.
