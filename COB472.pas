// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB472
// Formulario           : FRegDetAso
// Fecha de Creación    : 02/01/2017
// Autor                : Isaac Revilla Chávez
// Objetivo             : Ingreso de Ugeles a reprogramar
// Actualizaciones      :
// HPC_201701           : Creación
// HPC_201727_COB       : Se añade despegables para seleccionar el motivo del diferimiento

unit COB472;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, wwdblook, Wwdbdlg, Mask, ComCtrls, FileCtrl,
  Grids, Wwdbigrd, Wwdbgrid, Buttons, DB, DBClient;

type
  TFRegDetAso = class(TForm)
    gbporgrupo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dblcdTipAso: TwwDBLookupComboDlg;
    dblcdUniPro: TwwDBLookupComboDlg;
    dblcdUniPag: TwwDBLookupComboDlg;
    dblcdUniGes: TwwDBLookupComboDlg;
    btnAnadir: TBitBtn;
    edtDesUniPro: TEdit;
    edtDesUniPag: TEdit;
    edtDesUniGes: TEdit;
    edtDesTipAso: TEdit;
    BitBtn3: TBitBtn;
    gbmotdif: TGroupBox;
    memotdif: TMaskEdit;
    gbAnoMesDif: TGroupBox;
    meAnoDif: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    meMesDif: TMaskEdit;
    btneliminar: TBitBtn;
    // Inicio: HPC_201727_COB
    // Se añaden etiquetas y cajas de texto para la selección de los motivos de diferimiento
    Label7: TLabel;
    edtdestipmotdifabr: TEdit;
    Label8: TLabel;
    edtdesabrsubmot: TEdit;
    Label9: TLabel;
    edtdesabrmot: TEdit;
    dblcdcodtipmot: TwwDBLookupComboDlg;
    dblcdcodsubtipmot: TwwDBLookupComboDlg;
    dblcdcodmot: TwwDBLookupComboDlg;
    // Fin: HPC_201727_COB
    procedure FormCreate(Sender: TObject);
    procedure dblcdTipAsoExit(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure meAnoMesDifKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnAnadirClick(Sender: TObject);
    procedure dblcdUniProExit(Sender: TObject);
    procedure dblcdUniPagExit(Sender: TObject);
    procedure dblcdUniGesExit(Sender: TObject);
    procedure edtDesUniProChange(Sender: TObject);
    procedure edtDesUniPagChange(Sender: TObject);
    procedure meAnoDifExit(Sender: TObject);
    procedure meMesDifExit(Sender: TObject);
    procedure meAnoDifKeyPress(Sender: TObject; var Key: Char);
    procedure meMesDifKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
    // Inicio: HPC_201727_COB
    // Nuevos procedimientos para el control de los despegables para seleccionar el motivo de diferimiento
    procedure dblcdcodtipmotExit(Sender: TObject);
    procedure edtdestipmotdifabrChange(Sender: TObject);
    procedure edtdesabrsubmotChange(Sender: TObject);
    procedure dblcdcodsubtipmotExit(Sender: TObject);
    procedure dblcdcodmotExit(Sender: TObject);
    // Fin: HPC_201727_COB
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRegDetAso: TFRegDetAso;

implementation

uses COBDM1, COB449;

{$R *.dfm}

procedure TFRegDetAso.FormCreate(Sender: TObject);
Var xSql:String;
begin
  // Inicio: HPC_201727_COB
  // Se añade al Qry tipo de asociado = "contratado"
  // xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'',''CE'')';
  xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'',''CE'',''CO'')';
  // Fin: HPC_201727_COB
  DM1.cdsTAso.Close;
  DM1.cdsTAso.DataRequest(xSql);
  DM1.cdsTAso.Open;
  dblcdTipAso.Selected.Clear;
  dblcdTipAso.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9'F');
  dblcdTipAso.Selected.Add('ASOTIPDES'#9'12'#9'Descripción~asociado'#9'F');

  xSql := 'SELECT B.DPTODES, A.UPROID, A.UPRONOM FROM APO102 A, APO158 B WHERE A.DPTOID = B.DPTOID ORDER BY A.DPTOID, A.UPROID';
  DM1.cdsUPro.Close;
  DM1.cdsUPro.DataRequest(xSql);
  DM1.cdsUPro.Open;
  dblcdUniPro.Selected.Clear;
  dblcdUniPro.Selected.Add('UPROID'#9'3'#9'Codigo~unidad de proceso'#9'F');
  dblcdUniPro.Selected.Add('UPRONOM'#9'25'#9'Descripción~Unidad de proceso'#9'F');
  dblcdUniPro.Selected.Add('DPTODES'#9'12'#9'Departamento~Unidad de proceso'#9'F');

  // Inicio: HPC_201727_COB
  // Se añade Qry para seleccionar tipo de motivo
  xSql := 'SELECT SUBSTR(CODMOTDIF,1,2) CODMOTDIF, DESMOTABRDIF  FROM COB_MOT_DIF_MAE WHERE LENGTH(TRIM(CODMOTDIF)) = 2 ORDER BY SUBSTR(CODMOTDIF,1,2)';
  DM1.cdsDLabo.Close;
  DM1.cdsDLabo.DataRequest(xSql);
  DM1.cdsDLabo.Open;
  dblcdcodtipmot.Selected.Clear;
  dblcdcodtipmot.Selected.Add('CODMOTDIF'#9'2'#9'Codigo~tipo de motivo'#9'F');
  dblcdcodtipmot.Selected.Add('DESMOTABRDIF'#9'25'#9'Descripción~tipo de motivo'#9'F');
  // Fin: HPC_201727_COB

end;

procedure TFRegDetAso.dblcdTipAsoExit(Sender: TObject);
Var xSql, xCondicion:String;
begin
   If trim(dblcdTipAso.Text) = '' Then
   Begin
      dblcdTipAso.Text := '';
      Exit;
   End;
   edtDesTipAso.Text := DM1.RecuperaDatos('APO107', 'ASOTIPID', dblcdTipAso.Text,'ASOTIPDES');
   If Trim(edtDesTipAso.Text) = '' Then
   Begin
     MessageDlg('Código de asociado no valido.', mtError, [mbOk], 0);
     dblcdTipAso.Text := '';
     edtDesTipAso.Text := '';
     dblcdTipAso.SetFocus;
     Exit;
   End;
end;


procedure TFRegDetAso.btnCancelaClick(Sender: TObject);
begin
   Close;
end;


procedure TFRegDetAso.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
end;

procedure TFRegDetAso.meAnoMesDifKeyPress(Sender: TObject; var Key: Char);
begin
   If not (key in ['0'..'9']) Then
   Begin
      key:=#0;
      MessageDlg('Ingresar solo números.', mtError, [mbOk], 0);
   End;
End;



procedure TFRegDetAso.BitBtn3Click(Sender: TObject);
begin
   Close;
end;

procedure TFRegDetAso.btnAnadirClick(Sender: TObject);
Var xcorrelativo, xSql, xanodif, xmesdif: String;
begin
   If Trim(dblcdTipAso.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar el tipo de asociado.', mtError, [mbOk], 0);
      dblcdTipAso.SetFocus;
      Exit;
   End;
   If Trim(dblcdUniPro.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar la unidad de proceso.', mtError, [mbOk], 0);
      dblcdUniPro.SetFocus;
      Exit;
   End;
   If Trim(dblcdUniPag.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar la unidad de pago.', mtError, [mbOk], 0);
      dblcdUniPag.SetFocus;
      Exit;
   End;
   If Trim(dblcdUniGes.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar la unidad de gestión.', mtError, [mbOk], 0);
      dblcdUniGes.SetFocus;
      Exit;
   End;

   // Inicio: HPC_201727_COB
   // Se valida que existe información en los campos antes de grabar
   // If Trim(memotdif.Text) = '' Then
   // Begin
   //    MessageDlg('Debe ingresar un motivo del diferimento.', mtError, [mbOk], 0);
   //    memotdif.SetFocus;
   //    Exit;
   // End;
   If Trim(dblcdcodtipmot.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar tipo de motivo del diferimento.', mtError, [mbOk], 0);
      dblcdcodtipmot.SetFocus;
      Exit;
   End;
   If Trim(dblcdcodsubtipmot.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar Sub tipo de motivo del diferimento.', mtError, [mbOk], 0);
      dblcdcodsubtipmot.SetFocus;
      Exit;
   End;
   If Trim(dblcdcodmot.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar Detalle del motivo del diferimento.', mtError, [mbOk], 0);
      dblcdcodmot.SetFocus;
      Exit;
   End;
   // Fin: HPC_201727_COB




   If Trim(meAnoDif.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar año del diferimento.', mtError, [mbOk], 0);
      meAnoDif.SetFocus;
      Exit;
   End;

   If Trim(meMesDif.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar mes del diferimento.', mtError, [mbOk], 0);
      meMesDif.SetFocus;
      Exit;
   End;
   xSql := 'SELECT COUNT(1) CUENTA FROM COB_REP_CUO_DET WHERE IDEREP = '+DM1.cdsGrupos.FieldByName('IDEREP').AsString
   +' AND ASOTIPID = '+QuotedStr(dblcdTipAso.Text)+' AND UPROID = '+QuotedStr(dblcdUniPro.Text)
   +' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text)+' AND USEID = '+QuotedStr(dblcdUniGes.Text)
   +' AND ANOMESREP = '+QuotedStr(meAnoDif.Text+meMesDif.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('CUENTA').AsInteger = 0 Then
   Begin
      If MessageDlg('¿Esta Seguro que desea añadir esta Ugel para la reprogramación?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
      Begin
         xSql := 'SELECT COUNT(1) CANTIDAD FROM APO201 WHERE ASOTIPID = '+QuotedStr(dblcdTipAso.Text)+' AND UPROID = '+QuotedStr(dblcdUniPro.Text)
         +' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text)+' AND USEID = '+QuotedStr(dblcdUniGes.Text);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         // Inicio: HPC_201727_COB
         // Se añade la actualización del campo CODMOTDIF (código de motivo de diferimiento)
         // xSql := 'INSERT INTO COB_REP_CUO_DET (IDEREP, ASOTIPID, UPROID, UPAGOID, USEID, ANOMESREP, MOTREP, USUREG, FECREG, TIPGEN, CANREGASO) VALUES ('
         xSql := 'INSERT INTO COB_REP_CUO_DET (IDEREP, ASOTIPID, UPROID, UPAGOID, USEID, ANOMESREP, MOTREP, USUREG, FECREG, TIPGEN, CANREGASO, CODMOTDIF) VALUES ('
         +QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)+','+QuotedStr(dblcdTipAso.Text)+','+QuotedStr(dblcdUniPro.Text)+','
         +QuotedStr(dblcdUniPag.Text)+','+QuotedStr(dblcdUniGes.Text)+','+QuotedStr(meAnoDif.Text+meMesDif.Text)+','+QuotedStr(memotdif.Text)+','
         // +QuotedStr(DM1.wUsuario)+', SYSDATE, ''GRU'','+DM1.cdsQry.FieldByName('CANTIDAD').AsString+')';
         +QuotedStr(DM1.wUsuario)+', SYSDATE, ''GRU'','+DM1.cdsQry.FieldByName('CANTIDAD').AsString+','+QuotedStr(dblcdcodmot.Text)+')';
         // Fin: HPC_201727_COB
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         FRepCuotas.MueDetGrupo;
         Close;
      End;
   End
   Else
      MessageDlg('Ya existe información para esta secuencia de Ugel.', mtError, [mbOk], 0);
end;
procedure TFRegDetAso.dblcdUniProExit(Sender: TObject);
Var xSql:String;
begin
   If trim(dblcdUniPro.Text) = '' Then
   Begin
      dblcdUniPro.Text := '';
      Exit;
   End;
   edtDesUniPro.Text := DM1.RecuperaDatos('APO102', 'UPROID', dblcdUniPro.Text,'UPRONOM');
   If Trim(edtDesUniPro.Text) = '' Then
   Begin
     MessageDlg('Código de asociado no valido.', mtError, [mbOk], 0);
     dblcdUniPro.Text  := '';
     edtDesUniPro.Text := '';
     dblcdUniPag.Text  := '';
     edtDesUniPag.Text := '';
     dblcdUniGes.Text  := '';
     edtDesUniGes.Text := '';
     dblcdUniPro.SetFocus;
     Exit;
   End;
end;

procedure TFRegDetAso.dblcdUniPagExit(Sender: TObject);
Var xSql, xfiltro:String;
begin
   If trim(dblcdUniPag.Text) = '' Then
   Begin
      dblcdUniPag.Text := '';
      Exit;
   End;
   xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text)+' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   edtDesUniPag.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
   If Trim(edtDesUniPag.Text) = '' Then
   Begin
     MessageDlg('Códido de unidad de pago no valido.', mtError, [mbOk], 0);
     dblcdUniPag.Text  := '';
     edtDesUniPag.Text := '';
     dblcdUniGes.Text  := '';
     edtDesUniGes.Text := '';
     dblcdUniPag.SetFocus;
     Exit;
   End;
end;


procedure TFRegDetAso.dblcdUniGesExit(Sender: TObject);
Var xSql: String;
begin
   If trim(dblcdUniGes.Text) = '' Then
   Begin
      dblcdUniGes.Text := '';
      Exit;
   End;
   xSql := 'SELECT USENOM FROM APO101 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text)+' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text)+' AND USEID = '+QuotedStr(dblcdUniGes.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   edtDesUniGes.Text := DM1.cdsQry.FieldByName('USENOM').AsString;
   If Trim(edtDesUniGes.Text) = '' Then
   Begin
     MessageDlg('Códido de ugel no valida.', mtError, [mbOk], 0);
     dblcdUniGes.Text  := '';
     edtDesUniGes.Text := '';
     dblcdUniGes.SetFocus;
     Exit;
   End;
end;



procedure TFRegDetAso.edtDesUniProChange(Sender: TObject);
var xSql:String;
begin
   xSql := 'SELECT UPAGOID, UPROID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text);
   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSql);
   DM1.cdsUPago.Open;
   dblcdUniPag.Selected.Clear;
   dblcdUniPag.Selected.Add('UPAGOID'#9'3'#9'Codigo~unidad de pago'#9'F');
   dblcdUniPag.Selected.Add('UPAGONOM'#9'25'#9'Descripción~Unidad de pago'#9'F');
   dblcdUniPag.Text  := '';
   edtDesUniPag.Text := '';
   dblcdUniGes.Text  := '';
   edtDesUniGes.Text := '';
end;


procedure TFRegDetAso.edtDesUniPagChange(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT USEID, USENOM, UPROID, UPAGOID FROM APO101 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text)+' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text);
   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSql);
   DM1.cdsUSES.Open;
   dblcdUniGes.Selected.Clear;
   dblcdUniGes.Selected.Add('USEID'#9'3'#9'Codigo~unidad de gestión'#9'F');
   dblcdUniGes.Selected.Add('USENOM'#9'25'#9'Descripción~unidad de gestión'#9'F');
   dblcdUniGes.Text  := '';
   edtDesUniGes.Text := '';
end;



procedure TFRegDetAso.meAnoDifExit(Sender: TObject);
begin
   If Trim(meAnoDif.Text) = '' Then
   Begin
      Exit;
   End;
   If Length(Trim(meAnoDif.Text)) <> 4 Then
   Begin
     MessageDlg('El año debe contener 4 digitos.', mtError, [mbOk], 0);
     meAnoDif.SetFocus;
     Exit;
   End;
   If meAnoDif.Text > Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,1,4) Then
   Begin
     MessageDlg('El año a reprogramar no puede ser mayor al año de proceso.', mtError, [mbOk], 0);
     meAnoDif.SetFocus;
     Exit;
   End;
end;

procedure TFRegDetAso.meMesDifExit(Sender: TObject);
begin
   If Trim(meMesDif.Text) = '' Then
   Begin
      Exit;
   End;
   If (StrToInt(meMesDif.Text) < 1) or (StrToInt(meMesDif.Text) > 12) Then
   Begin
      MessageDlg('Número de mes no permitido.', mtError, [mbOk], 0);
      meMesDif.SetFocus;
      Exit;
   End;
   If     (StrToInt(meAnoDif.Text) = StrToInt(Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,1,4)))
      And (StrToInt(meMesDif.Text) > StrToInt(Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,5,2))) Then
   Begin
      MessageDlg('Mes a reprogramar no puede ser mayor a la actual.', mtError, [mbOk], 0);
      meMesDif.SetFocus;
      Exit;
   End;
end;


procedure TFRegDetAso.meAnoDifKeyPress(Sender: TObject; var Key: Char);
begin
   If Not (Key In ['0'..'9','.',#8]) Then
   Begin
      key:=#0;
      MessageDlg('Debe ingresar solo números.', mtError, [mbOk], 0);
   End;
end;

procedure TFRegDetAso.meMesDifKeyPress(Sender: TObject; var Key: Char);
begin
   If Not (Key In ['0'..'9','.',#8]) Then
   Begin
      key:=#0;
      MessageDlg('Debe ingresar solo números.', mtError, [mbOk], 0);
   End;
end;

procedure TFRegDetAso.FormActivate(Sender: TObject);
Var xSql:String;
begin
   If DM1.xSgr = 'A' Then
   Begin
      btnAnadir.Visible    := True;
      btneliminar.Visible  := False;
      dblcdTipAso.Enabled  := True;
      dblcdUniPro.Enabled  := True;
      dblcdUniPag.Enabled  := True;
      dblcdUniGes.Enabled  := True;
      // Inicio: HPC_201727_COB
      // La caja de texto queda como no editable
      // memotdif.Enabled     := True;
      // Fin: HPC_201727_COB
      meAnoDif.Enabled     := True;
      meMesDif.Enabled     := True;
   End;

   If DM1.xSgr = 'E' Then
   Begin
      btnAnadir.Visible    := False;
      btneliminar.Visible  := True;
      dblcdTipAso.Enabled  := False;
      dblcdUniPro.Enabled  := False;
      dblcdUniPag.Enabled  := False;
      dblcdUniGes.Enabled  := False;

      // Inicio: HPC_201727_COB
      // La caja de texto queda como no editable, se actualiza información en las cajas de motivos de diferimiento
      // memotdif.Enabled    := False;
      dblcdcodtipmot.Enabled    := False;
      dblcdcodsubtipmot.Enabled := False;
      dblcdcodmot.Enabled       := False;
      dblcdcodtipmot.Text     := Copy(DM1.cdsMGrupo.FieldByName('CODMOTDIF').AsString,1,2);
      edtdestipmotdifabr.Text := DM1.RecuperaDatos('COB_MOT_DIF_MAE', 'CODMOTDIF', Copy(DM1.cdsMGrupo.FieldByName('CODMOTDIF').AsString,1,2),'DESMOTABRDIF');
      dblcdcodsubtipmot.Text  := Copy(DM1.cdsMGrupo.FieldByName('CODMOTDIF').AsString,1,4);
      edtdesabrsubmot.Text    := DM1.RecuperaDatos('COB_MOT_DIF_MAE', 'CODMOTDIF', Copy(DM1.cdsMGrupo.FieldByName('CODMOTDIF').AsString,1,4),'DESMOTABRDIF');
      dblcdcodmot.Text        := DM1.cdsMGrupo.FieldByName('CODMOTDIF').AsString;
      edtdesabrmot.Text       := DM1.RecuperaDatos('COB_MOT_DIF_MAE', 'CODMOTDIF', DM1.cdsMGrupo.FieldByName('CODMOTDIF').AsString,'DESMOTABRDIF');
      // Fin: HPC_201727_COB

      meAnoDif.Enabled     := False;
      meMesDif.Enabled     := False;
      dblcdTipAso.Text     := DM1.cdsMGrupo.FieldByName('ASOTIPID').AsString;
      edtDesTipAso.Text    := DM1.cdsMGrupo.FieldByName('ASOTIPDES').AsString;
      dblcdUniPro.Text     := DM1.cdsMGrupo.FieldByName('UPROID').AsString;
      xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text);
      DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSql); DM1.cdsQry.Open;
      edtDesUniPro.Text := DM1.cdsQry.FieldByName('UPRONOM').AsString;
      dblcdUniPag.Text := DM1.cdsMGrupo.FieldByName('UPAGOID').AsString;
      xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text)+' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text);
      DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSql); DM1.cdsQry.Open;
      edtDesUniPag.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
      dblcdUniGes.Text := DM1.cdsMGrupo.FieldByName('USEID').AsString;
      edtDesUniGes.Text := DM1.cdsMGrupo.FieldByName('USENOM').AsString;
      memotdif.Text := DM1.cdsMGrupo.FieldByName('MOTREP').AsString;
      meAnoDif.Text := Copy(DM1.cdsMGrupo.FieldByName('ANOMESREP').AsString,1,4);
      meMesDif.Text := Copy(DM1.cdsMGrupo.FieldByName('ANOMESREP').AsString,5,2);
   End;

end;

procedure TFRegDetAso.btneliminarClick(Sender: TObject);
Var xSql:String;
begin
   If MessageDlg('¿Seguro de cancelar este registro?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   Begin
      xSql := 'DELETE FROM COB_REP_CUO_DET WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
      +' AND UPROID = '+QuotedStr(dblcdUniPro.Text)+' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text)+' AND USEID = '+QuotedStr(dblcdUniGes.Text)+' AND ASOTIPID = '+QuotedStr(dblcdTipAso.Text);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      MessageDlg('Registro ha sido eliminado.', mtInformation, [mbOk], 0);
      FRepCuotas.MueDetGrupo;
   End;
   Close;
end;

// Inicio: HPC_201727_COB
// Nuevos procedimientos para el control de los nuevos despegables
procedure TFRegDetAso.dblcdcodtipmotExit(Sender: TObject);
begin
   If trim(dblcdcodtipmot.Text) = '' Then
   Begin
      dblcdcodtipmot.Text := '';
      Exit;
   End;
   edtdestipmotdifabr.Text := DM1.RecuperaDatos('COB_MOT_DIF_MAE', 'CODMOTDIF', dblcdcodtipmot.Text,'DESMOTABRDIF');
   If Trim(edtdestipmotdifabr.Text) = '' Then
   Begin
     MessageDlg('Código tipo motivo de diferimiento no valido.', mtError, [mbOk], 0);
     dblcdcodtipmot.Text  := '';
     edtdestipmotdifabr.Text := '';
     dblcdcodtipmot.SetFocus;
     Exit;
   End;
end;

procedure TFRegDetAso.edtdestipmotdifabrChange(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT SUBSTR(CODMOTDIF,1,4) CODSUBMOTDIF, DESMOTABRDIF  FROM COB_MOT_DIF_MAE'
   +' WHERE SUBSTR(CODMOTDIF,1,2) = '+QuotedStr(dblcdcodtipmot.Text)+' AND LENGTH(TRIM(CODMOTDIF)) = 4  ORDER BY SUBSTR(CODMOTDIF,1,4)';
   DM1.cdsDFam.Close;
   DM1.cdsDFam.DataRequest(xSql);
   DM1.cdsDFam.Open;
   dblcdcodsubtipmot.Selected.Clear;
   dblcdcodsubtipmot.Selected.Add('CODSUBMOTDIF'#9'4'#9'Codigo~sub tipo motivo'#9'F');
   dblcdcodsubtipmot.Selected.Add('DESMOTABRDIF'#9'25'#9'Descripción~sub tipo motivo'#9'F');
   dblcdcodsubtipmot.Text  := '';
   edtdesabrsubmot.Text := '';
   dblcdcodmot.Text  := '';
   edtdesabrmot.Text := '';
end;

procedure TFRegDetAso.edtdesabrsubmotChange(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT CODMOTDIF, DESMOTABRDIF FROM COB_MOT_DIF_MAE'
   +' WHERE SUBSTR(CODMOTDIF,1,4) = '+QuotedStr(dblcdcodsubtipmot.Text)+' AND LENGTH(TRIM(CODMOTDIF)) = 6  ORDER BY CODMOTDIF';
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSql);
   DM1.cdsDSocioE.Open;
   dblcdcodmot.Selected.Clear;
   dblcdcodmot.Selected.Add('CODMOTDIF'#9'4'#9'Codigo~motivo diferimiento'#9'F');
   dblcdcodmot.Selected.Add('DESMOTABRDIF'#9'25'#9'Descripción~motivo diferimiento'#9'F');
   dblcdcodmot.Text  := '';
   edtdesabrmot.Text := '';
end;

procedure TFRegDetAso.dblcdcodsubtipmotExit(Sender: TObject);
begin
   If trim(dblcdcodsubtipmot.Text) = '' Then
   Begin
      dblcdcodsubtipmot.Text := '';
      Exit;
   End;
   edtdesabrsubmot.Text := DM1.RecuperaDatos('COB_MOT_DIF_MAE', 'CODMOTDIF', dblcdcodsubtipmot.Text,'DESMOTABRDIF');
   If Trim(edtdesabrsubmot.Text) = '' Then
   Begin
     MessageDlg('Código sub tipo motivo de diferimiento no valido.', mtError, [mbOk], 0);
     dblcdcodsubtipmot.Text  := '';
     edtdesabrsubmot.Text := '';
     dblcdcodsubtipmot.SetFocus;
     Exit;
   End;
end;

procedure TFRegDetAso.dblcdcodmotExit(Sender: TObject);
begin
   If trim(dblcdcodmot.Text) = '' Then
   Begin
      dblcdcodmot.Text := '';
      Exit;
   End;
   edtdesabrmot.Text := DM1.RecuperaDatos('COB_MOT_DIF_MAE', 'CODMOTDIF', dblcdcodmot.Text,'DESMOTABRDIF');   
   If Trim(edtdesabrmot.Text) = '' Then
   Begin
     MessageDlg('Código tipo motivo de diferimiento no valido.', mtError, [mbOk], 0);
     dblcdcodmot.Text  := '';
     edtdesabrmot.Text := '';
     dblcdcodmot.SetFocus;
     Exit;
   End;
   memotdif.Text := Copy(Trim(edtdestipmotdifabr.Text)+'/'+Trim(edtdesabrsubmot.Text)+'/'+Trim(edtdesabrmot.Text),1,80);
end;
// Fin: HPC_201727_COB

end.
