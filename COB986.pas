unit COB986;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ComCtrls, Mask,
  ExtCtrls, wwdblook, Wwdbdlg, db;

type
  TFGenPlaCon = class(TForm)
    GroupBox1: TGroupBox;
    btnprocesar: TBitBtn;
    btncerrar: TBitBtn;
    dbgcabcon: TwwDBGrid;
    dbgcabconIButton: TwwIButton;
    BitBtn1: TBitBtn;
    btngenerainformacion: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    medescon: TMaskEdit;
    btnanuenv: TBitBtn;
    btninconsistencia: TBitBtn;
    btnInfAct: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure dbgcabconIButtonClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnprocesarClick(Sender: TObject);
    procedure btngenerainformacionClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgcabconDblClick(Sender: TObject);
    procedure btncerrarprocesoClick(Sender: TObject);
    procedure btnanuenvClick(Sender: TObject);
    procedure btninconsistenciaClick(Sender: TObject);
    procedure btnInfActClick(Sender: TObject);
  private
    procedure actualizacabecera(xdato:String; xtipo:String);
    function verificacon():Boolean;
    { Private declarations }
  public
    xcodcon:String;
    { Public declarations }
  end;

var
  FGenPlaCon: TFGenPlaCon;

implementation

uses COBDM1, COB987, COB989, COB421B, COB988, COB995, COB992, COB991,
  COB811;

{$R *.dfm}

procedure TFGenPlaCon.FormActivate(Sender: TObject);
begin
  DM1.cdsGrupos.IndexName := '';
  DM1.cdsGrupos.Close;
  actualizacabecera('', '1');
end;

procedure TFGenPlaCon.dbgcabconIButtonClick(Sender: TObject);
begin
  Try
    FGeninfpla := TFGeninfpla.Create(Self);
    FGeninfpla.ShowModal;
  Finally
    FGeninfpla.Free;
  End;
  actualizacabecera(DM1.xcodcon,'2');
end;

procedure TFGenPlaCon.btncerrarClick(Sender: TObject);
begin
  FGenPlaCon.Close;
end;


procedure TFGenPlaCon.BitBtn1Click(Sender: TObject);
begin
  If verificacon() = False Then Exit;
  Try
    Ftrainfpro := TFtrainfpro.Create(Self);
    Ftrainfpro.ShowModal;
  Finally
    Ftrainfpro.Free;
  End;
  actualizacabecera(DM1.cdsGrupos.FieldByName('IDECON').AsString, '2');
end;

Procedure TFGenPlaCon.FormKeyPress(Sender: TObject; var Key: Char);
Begin
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
End;

procedure TFGenPlaCon.btnprocesarClick(Sender: TObject);
begin
  actualizacabecera(medescon.Text, '3');
End;

procedure TFGenPlaCon.actualizacabecera(xdato:String; xtipo:String);
Var xSql:String;
  xidecon, xperiodo, xasotipid :String;
begin

  If DM1.cdsGrupos.Active = True Then
  Begin
    xidecon   := DM1.cdsGrupos.FieldByName('IDECON').AsString;
    xperiodo  := DM1.cdsGrupos.FieldByName('PERIODO').AsString;
    xasotipid := DM1.cdsGrupos.FieldByName('ASOTIPID').AsString;
  End;
  
// inicio HPP_201105_COB
  If xtipo = '1' Then
    xSql := 'SELECT A.NOFID, A.IDECON, A.CREANO, A.CREMES, A.PERIODO, C.MESDESC||''/''||A.CREANO DESPER,'
    +' D.DESESTCON,  B.DESCON, A.ESTADO, A.MONCUOENV, A.MONCUOAPL, A.MONCUOENVFSC, '
    +' A.MONAPOENV, A.MONAPOAPL, NUMASO, HREG, A.ESTADO, A.ASOTIPID, B.CODDEP'
    +',A.CANAPOENV, A.CANCUOENV, A.CANCUOENVFSC, A.CHKDEP, A.CHKPROCOB, A.CHKGENDIS, A.CREUSER FROM COB204 A, COB_CON_CAB B, TGE181 C,'
    +' (SELECT CODESTCON, DESESTCON FROM COB_DES_EST_CON WHERE TIPO = ''2'') D'
    +' WHERE A.IDECON = B.IDECON AND A.CREMES = C.MESIDR AND A.ESTADO = D.CODESTCON ORDER BY A.PERIODO';

  If xtipo = '2' Then
    xSql := 'SELECT A.NOFID, A.IDECON, A.CREANO, A.CREMES, A.PERIODO, C.MESDESC||''/''||A.CREANO DESPER,'
    +' D.DESESTCON,  B.DESCON, A.ESTADO, A.MONCUOENV, A.MONCUOAPL, A.MONCUOENVFSC,  '
    +' A.MONAPOENV, A.MONAPOAPL, NUMASO, HREG, A.ESTADO, A.ASOTIPID,B.CODDEP'
    +',A.CANAPOENV, A.CANCUOENV, A.CANCUOENVFSC, A.CHKDEP, A.CHKPROCOB, A.CHKGENDIS, A.CREUSER FROM COB204 A, COB_CON_CAB B, TGE181 C,'
    +' (SELECT CODESTCON, DESESTCON FROM COB_DES_EST_CON WHERE TIPO = ''2'') D'
    +' WHERE A.IDECON IN (SELECT IDECON FROM COB_CON_CAB WHERE IDECON = '+QuotedStr(xdato)+')'
    +' AND A.IDECON = B.IDECON AND A.CREMES = C.MESIDR AND A.ESTADO = D.CODESTCON ORDER BY A.PERIODO';

  If xtipo = '3' Then
    xSql := 'SELECT A.NOFID, A.IDECON, A.CREANO, A.CREMES, A.PERIODO, C.MESDESC||''/''||A.CREANO DESPER,'
    +' D.DESESTCON,  B.DESCON, A.ESTADO, A.MONCUOENV, A.MONCUOAPL, A.MONCUOENVFSC,  '
    +' A.MONAPOENV, A.MONAPOAPL, NUMASO, HREG, A.ESTADO, A.ASOTIPID, B.CODDEP, '
    +' A.CANAPOENV, A.CANCUOENV, A.CANCUOENVFSC, A.CHKDEP, A.CHKPROCOB, A.CHKGENDIS, A.CREUSER FROM COB204 A, COB_CON_CAB B, TGE181 C,'
    +' (SELECT CODESTCON, DESESTCON FROM COB_DES_EST_CON WHERE TIPO = ''2'') D'
    +' WHERE A.IDECON IN (SELECT IDECON FROM COB_CON_CAB WHERE DESCON LIKE '+QuotedStr('%'+Trim(xdato)+'%')+')'
    +' AND A.IDECON = B.IDECON AND A.CREMES = C.MESIDR AND A.ESTADO = D.CODESTCON ORDER BY A.PERIODO';
// fin HPP_201105_COB
  DM1.cdsGrupos.Close;
  DM1.cdsGrupos.DataRequest(xSql);
  DM1.cdsGrupos.Open;
  dbgcabcon.Selected.Clear;
  dbgcabcon.Selected.Add('DESPER'#9'9'#9'Periodo de~cobranza'#9#9);
  dbgcabcon.Selected.Add('DESCON'#9'25'#9'Descripción del convenio'#9#9);
  dbgcabcon.Selected.Add('ASOTIPID'#9'7'#9'Tipo de~asociado'#9#9);
  dbgcabcon.Selected.Add('DESESTCON'#9'8'#9'Estado~descuento'#9#9);
  dbgcabcon.Selected.Add('CANCUOENV'#9'6'#9'Nº Cuo.~generadas'#9#9);
  dbgcabcon.Selected.Add('MONCUOENV'#9'11'#9'Monto/cuota~generada'#9#9);
  dbgcabcon.Selected.Add('MONCUOAPL'#9'11'#9'Cuota~cobrada'#9#9);
// inicio HPP_201105_COB
  dbgcabcon.Selected.Add('CANCUOENVFSC'#9'6'#9'Nº FSC'#9#9);
  dbgcabcon.Selected.Add('MONCUOENVFSC'#9'11'#9'Monto FSC'#9#9);
// fin HPP_201105_COB
  dbgcabcon.Selected.Add('CANAPOENV'#9'6'#9'Nº Apo.~generado'#9#9);
  dbgcabcon.Selected.Add('MONAPOENV'#9'11'#9'Monto/aporte~generado'#9#9);
  dbgcabcon.Selected.Add('MONAPOAPL'#9'11'#9'Aporte~cobrado'#9#9);
  dbgcabcon.Selected.Add('NUMASO'#9'6'#9'Registros~generados'#9#9);
  dbgcabcon.Selected.Add('CHKDEP'#9'1'#9'Depurado'#9#9);
  dbgcabcon.Selected.Add('CHKPROCOB'#9'1'#9'Marcado~pro.cob.'#9#9);
  dbgcabcon.Selected.Add('CHKGENDIS'#9'1'#9'Disquete~generado'#9#9);
  dbgcabcon.Selected.Add('CREUSER'#9'15'#9'Usuario que~genero'#9#9);
  dbgcabcon.Selected.Add('HREG'#9'19'#9'Fecha y hora~de registro'#9#9);
  dbgcabcon.ApplySelected;
  TNumericField(DM1.cdsGrupos.FieldByName('NUMASO')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsGrupos.FieldByName('CANAPOENV')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsGrupos.FieldByName('CANCUOENV')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsGrupos.FieldByName('MONCUOENV')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsGrupos.FieldByName('MONCUOAPL')).DisplayFormat := '##,###,##0.00';

// inicio HPP_201105_COB
  TNumericField(DM1.cdsGrupos.FieldByName('CANCUOENVFSC')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsGrupos.FieldByName('MONCUOENVFSC')).DisplayFormat := '##,###,##0.00';
// fin HPP_201105_COB

  TNumericField(DM1.cdsGrupos.FieldByName('MONAPOENV')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsGrupos.FieldByName('MONAPOAPL')).DisplayFormat := '##,###,##0.00';
  DM1.cdsGrupos.Locate('IDECON;PERIODO;ASOTIPID', VarArrayOf([xidecon, xperiodo, xasotipid]), []);
end;

procedure TFGenPlaCon.btngenerainformacionClick(Sender: TObject);
begin
  If verificacon() = False Then Exit;
  If DM1.cdsGrupos.FieldByName('CHKPROCOB').AsString <> 'S' Then
  Begin
    MessageDlg('Marcar en proceso de cobranza antes de generar disquete', mtInformation,[mbOk],0);
    Exit;
  End;
  Try
    fgeninfenv := Tfgeninfenv.create(Self);
    fgeninfenv.ShowModal;
  Finally
    fgeninfenv.Free;
  End;
  actualizacabecera(DM1.cdsGrupos.FieldByName('IDECON').AsString, '2');
end;


Procedure TFGenPlaCon.BitBtn2Click(Sender: TObject);
Var xSql:String;
Begin
  If verificacon() = False Then Exit;
  // Marcar en proceso de cobranza todos los registros
  // relacionados al convenio
  If MessageDlg('¿ Seguro de marcar en proceso de cobranza ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
  Begin
    Screen.Cursor := crHourGlass;
// inicio HPP_201105_COB
// SE COLOCA EL COMMINT AL FINAL LA SENTENCIA SQL, PORQUE SE RETIRARON TODOS LOS COMMITS DE LOS PROCEDURES
{
    xSql := 'BEGIN PCK_GEN_PLA_CON.SP_LIM_PRO_COB('+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); END;';
}
    xSql := 'BEGIN PCK_GEN_PLA_CON.SP_LIM_PRO_COB('+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); COMMIT; END;';
// fin HPP_201105_COB
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);


// inicio HPP_201105_COB
// SE COLOCA EL COMMINT AL FINAL LA SENTENCIA SQL, PORQUE SE RETIRARON TODOS LOS COMMITS DE LOS PROCEDURES
{
   xSql := 'BEGIN PCK_GEN_PLA_CON.SP_MAR_PRO_COB_CON('+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); END;';
}
   xSql := 'BEGIN PCK_GEN_PLA_CON.SP_MAR_PRO_COB_CON('+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); COMMIT; END;';
// fin HPP_201105_COB
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);


    xSql := 'UPDATE COB204 SET CHKPROCOB = ''S'' WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+' AND PERIODO = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
    +' AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    actualizacabecera(DM1.cdsGrupos.FieldByName('IDECON').AsString, '2');
    Screen.Cursor := crDefault;
    MessageDlg('Se ha marcado el proceso de cobranza', mtInformation,[mbOk],0);
  End;
End;

procedure TFGenPlaCon.dbgcabconDblClick(Sender: TObject);
begin
  If verificacon() = False Then Exit;
  Try
    Fdetenvcon := TFdetenvcon.create(Self);
    Fdetenvcon.ShowModal;
  Finally
    Fdetenvcon.Free;
  End;
end;

procedure TFGenPlaCon.btncerrarprocesoClick(Sender: TObject);
begin
  // Cerrar proceso
end;

procedure TFGenPlaCon.btnanuenvClick(Sender: TObject);
Var xSql:String;
begin
  If verificacon() = False Then Exit;
  // Quitar el proceso de cobranza y anular el envio
  // relacionados al convenio
  If MessageDlg('¿ Seguro de quitar el proceso de cobranza al convenio generado ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
  Begin
    Screen.Cursor := crHourGlass;
// inicio HPP_201105_COB
// anular proceso de cobranza programado 
    xSql := 'BEGIN '
           +'    PCK_GEN_PLA_CON.SP_LIM_PRO_COB('+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+','+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); '
           +'    UPDATE COB204 '
           +'       SET ESTADO = ''3'' '
           +'     WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
           +'       AND PERIODO = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
           +'       AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+';'
           +'    UPDATE COB_PRO_GEN_PLA_CON '
           +'       SET ESTADO = ''ANULAPROCOB'','
           +'           USUANUPROCOB = ' + QuotedStr(DM1.wUsuario)+','
           +'           FECANUPROCOB = SYSDATE,'
           +'           OBSANUPROCOB = ''ANULADO POR FORMULARIO'' '
           +'     WHERE IDECON= '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
           +'       AND ANOPRO||MESPRO = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
           +'       AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)
           +'       AND (ESTADO = ''PROCE'' OR ESTADO = ''PROGRPROCOB'');'
           +'    COMMIT; '
           +'END;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    (*
    xSql := 'UPDATE COB204 SET ESTADO = ''3'' WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+' AND PERIODO = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
    +' AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    *)
// fin HPP_201105_COB
    actualizacabecera('', '1');
    Screen.Cursor := crDefault;
    MessageDlg('Se ha quitado el proceso de cobranza', mtInformation,[mbOk],0);
  End;
end;

function TFGenPlaCon.verificacon: Boolean;
begin
  // Estado del convenio no esta anulado
  If DM1.cdsGrupos.FieldByName('ESTADO').AsString = '3' Then
  Begin
    MessageDlg('Convenio ya esta anulado', mtInformation,[mbOk],0);
    Result := False;
    Exit;
  End;
  // limpiar el proceso de cobranza
  If DM1.cdsGrupos.RecordCount = 0 Then
  Begin
    MessageDlg('No existe información para mostrar', mtInformation,[mbOk],0);
    Result := False;
    Exit;
  End;
  Result := True;
  Exit;
end;


procedure TFGenPlaCon.btninconsistenciaClick(Sender: TObject);
begin
  If verificacon() = False Then Exit;
  Try
    fincenvplacon := Tfincenvplacon.Create(Self);
    fincenvplacon.ShowModal;
  Finally
    fincenvplacon.Free;
  End;
end;


procedure TFGenPlaCon.btnInfActClick(Sender: TObject);
Var
   xFlg, xSql:String;
begin
  // HPP_200901_COB IR
  // SAR2009JC-0089
  // Se controla que existe información procesada antes de levantar la forma
  // Información de envio a cobranza
   xFlg := 'S';
   If verificacon() = False Then Exit;
   If DM1.cdsGrupos.FieldByName('CHKPROCOB').AsString <> 'S' Then
   Begin
      MessageDlg('Marcar en proceso de cobranza antes de generar disquete', mtInformation,[mbOk],0);
      Exit;
   End;
   xSQL := 'SELECT COUNT(*) CANTIDAD FROM COB_INF_ENV_VAR '
          +'WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
          +' AND COBANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
          +' AND COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString)
          +' AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('CANTIDAD').AsInteger = 0 Then
   Begin
      xFlg := 'N';
      If MessageDlg('No existe información para visualizar'#13'¿ Seguro de generar información ?',
                        mtconfirmation,[mbYes,MbNo],0)= mrYes Then
      Begin
         Screen.Cursor:=crHourGlass;
         xSQL := 'BEGIN PCK_GEN_PLA_CON.SP_ACT_INF_ENV('+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+','
                 +QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)+','
// inicio HPP_201105_COB
// SE COLOCA EL COMMINT AL FINAL LA SENTENCIA SQL, PORQUE SE RETIRARON TODOS LOS COMMITS DE LOS PROCEDURES
{
                 +QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); END;';
}
                 +QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'); COMMIT; END;';
// fin HPP_201105_COB
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Screen.Cursor:= crDefault;
         xFlg := 'S';
      End;
   End;

   If xFlg = 'S' Then
   Try
      Finfenv := TFinfenv.Create(Self);
      Finfenv.ShowModal;
   Finally
      Finfenv.Free;
   End;
End;

end.
