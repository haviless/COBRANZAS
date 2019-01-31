// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : CRE908
// Formulario                    : fMatAso
// Fecha de Creación             : 01/02/2016
// Autor                         : Ricardo Medina
// Objetivo                      : Consulta de Creditos Otorgados
// Actualizaciones:
// Inicio HPC_201604_COB
// HPC_201818_COB: Se modifica los datos a mostrar de los telefonos del asociado
unit CRE908;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdbdatetimepicker, wwdblook, StdCtrls, Mask, wwdbedit, Buttons,
  ComCtrls, ExtCtrls;

type
  TfMatAso = class(TForm)
    gbCambios: TGroupBox;
    bFirma: TBevel;
    bFoto: TBevel;
    ImaFirma: TImage;
    ImagAso: TImage;
    Label6: TLabel;
    Label16: TLabel;
    Label24: TLabel;
    EdtApePatDni: TwwDBEdit;
    EdtApeMatDni: TwwDBEdit;
    EdtAsoNomDni: TwwDBEdit;
    Label15: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label14: TLabel;
    dbeCodPag: TwwDBEdit;
    dbeLibDni: TwwDBEdit;
    dbdtFecNac: TwwDBDateTimePicker;
    Label1: TLabel;
    DbLlSexo: TwwDBLookupCombo;
    DbLlRegPen: TwwDBLookupCombo;
    Label2: TLabel;
    // Inicio: HPC_201818_COB
    // Se retira los componentes no usados
    // dbeTel1: TwwDBEdit;
    // dbeTel2: TwwDBEdit;
    // Fin: HPC_201818_COB
    Label3: TLabel;
    Label4: TLabel;
    dbeDirec: TwwDBEdit;
    lkcDpto: TwwDBLookupCombo;
    Panel1: TPanel;
    edtDpto: TEdit;
    Label5: TLabel;
    lkcProv: TwwDBLookupCombo;
    Panel2: TPanel;
    edtProv: TEdit;
    lkcDist: TwwDBLookupCombo;
    Panel3: TPanel;
    edtDist: TEdit;
    Label7: TLabel;
    Label11: TLabel;
    dbeColLab: TwwDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeDirLab: TwwDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lkcDpto2: TwwDBLookupCombo;
    Panel6: TPanel;
    edtDpto2: TEdit;
    lkcProv2: TwwDBLookupCombo;
    Panel5: TPanel;
    edtProv2: TEdit;
    lkcDist2: TwwDBLookupCombo;
    Panel4: TPanel;
    edtDist2: TEdit;
    DbLlAfp: TwwDBLookupCombo;
    Label17: TLabel;
    Panel7: TPanel;
    edtRegPen: TEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    EdtAfp: TEdit;
    dbeSexo: TwwDBEdit;
    Panel10: TPanel;
    edtTipAso: TEdit;
    lblAsoApeNom: TLabel;
    Shape1: TShape;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    BitModifica: TBitBtn;
    BitCancelar: TBitBtn;
    Label18: TLabel;
    Panel11: TPanel;
    dbeCuenta: TwwDBEdit;
    Panel12: TPanel;
    dbeNroRes: TwwDBEdit;
    DBDTResNom: TwwDBDateTimePicker;
    dbeNroCes: TwwDBEdit;
    DBDTResCes: TwwDBDateTimePicker;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    BitCuentas: TBitBtn;
    BitResol: TBitBtn;
    Shape2: TShape;
    BitReasignacion: TBitBtn;
    BitOfiDes: TBitBtn;
    BitAuditoria: TBitBtn;
    BitSocio: TBitBtn;
    edtAsoTipId: TEdit;
    // Inicio: HPC_201818_COB
    // Se añaden nuevos componentes
    Panel13: TPanel;
    edtAsoTelf1: TEdit;
    Panel14: TPanel;
    edtAsoTelf2: TEdit;
    // Fin: HPC_201818_COB
    procedure lkcDptoChange(Sender: TObject);
    procedure lkcProvChange(Sender: TObject);
    procedure lkcDistChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sbtDatLabClick(Sender: TObject);
    procedure SpdBSalirClick(Sender: TObject);
    procedure lkcDpto2Change(Sender: TObject);
    procedure lkcProv2Change(Sender: TObject);
    procedure lkcDist2Change(Sender: TObject);
    procedure edtDptoChange(Sender: TObject);
    procedure edtProvChange(Sender: TObject);
    procedure edtDpto2Change(Sender: TObject);
    procedure edtProv2Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
    procedure DbLlSexoChange(Sender: TObject);
//    procedure DbLlTipAsoChange(Sender: TObject);
    procedure DbLlRegPenChange(Sender: TObject);
    procedure DbLlAfpChange(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure BitModificaClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitResolClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitReasignacionClick(Sender: TObject);
    procedure DbLlRegPenExit(Sender: TObject);
    procedure BitOfiDesClick(Sender: TObject);
    procedure BitSocioClick(Sender: TObject);
    procedure BitCuentasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Registro_Aud(xAsoId,xSecuencia,xCodReg:String);
    Function CodReg():String;
  end;

var
  fMatAso: TfMatAso;

implementation

uses CRE937, CRE938, CRE936,CRE943, COBDM1;

{$R *.dfm}

procedure TfMatAso.lkcDptoChange(Sender: TObject);
begin
   If DM1.cdsPadre.Locate('DPTOID',VarArrayof([lkcDpto.text]),[]) Then
      Begin
        EdtDpto.Text := DM1.cdsPadre.FieldByName('DPTODES').Asstring ;
        If lkcDpto.Enabled Then lkcProv.Enabled := True;
      End
   Else
      Begin
        if Length(lkcDpto.Text) <> 2 then
           Begin
              Beep; lkcProv.Enabled := False;
              EdtDpto.Text  :='';
           End;
      End


end;

procedure TfMatAso.lkcProvChange(Sender: TObject);
var xSQL:String;
begin
   If DM1.cdsHijo.Locate('PROVID',lkcProv.Text,[]) then
      Begin
         edtProv.Text := DM1.cdsHijo.FieldByName('PROVDES').asstring ;
         If lkcProv.Enabled Then lkcDist.Enabled := True;
      End
   Else
      Begin
         edtProv.Text := ''; lkcDist.Enabled := False;
      End;

end;

procedure TfMatAso.lkcDistChange(Sender: TObject);
begin
    If DM1.cdsSAso.Locate('ZIPID',lkcDist.Text,[]) then
        edtDist.Text := DM1.cdsSAso.FieldByName('ZIPDES').asstring
    Else
        edtDist.Text := '';

end;

procedure TfMatAso.FormActivate(Sender: TObject);
Var xSql:String;
Begin
If DM1.wUsuario <> 'ECASANA' Then
Begin
  DbLlRegPen.Enabled := False;
  DbLlAfp.Enabled := False;
  // Inicio: HPC_201818_COB
  // Se carga información de los telefonos a los componentes creados 
  xSql := 'SELECT'
  +' CASE WHEN (TRIM(ASOTELF1) IS NOT NULL) AND (TRIM(CODREFTEL1) IS NOT NULL) AND (TRIM(CODREFTEL1) <> ''P'') THEN ''NO PROPIO'''
  +'                   WHEN (TRIM(ASOTELF1) IS NULL) THEN ''SIN TELEFONO'''
  +'                   WHEN ((TRIM(ASOTELF1) IS NOT NULL) AND (TRIM(CODREFTEL1) IS NOT NULL) AND (TRIM(CODREFTEL1) = ''P'')) OR'
  +'                        ((TRIM(ASOTELF1) IS NOT NULL) AND (TRIM(CODREFTEL1) IS NULL)) OR'
  +'                        ((TRIM(ASOTELF1) IS NOT NULL) AND NOT (REGEXP_LIKE(TRIM(ASOTELF1), ''^[0-9]+$''))) THEN ASOTELF1 END ASOTELF1,'
  +' CASE WHEN (TRIM(ASOTELF2) IS NOT NULL) AND (TRIM(CODREFTEL2) IS NOT NULL) AND (TRIM(CODREFTEL2) <> ''P'') THEN ''NO PROPIO'''
  +'      WHEN (TRIM(ASOTELF2) IS NULL) THEN ''SIN TELEFONO'''
  +'      WHEN ((TRIM(ASOTELF2) IS NOT NULL) AND (TRIM(CODREFTEL2) IS NOT NULL) AND (TRIM(CODREFTEL2) = ''P'')) OR'
  +'           ((TRIM(ASOTELF2) IS NOT NULL) AND (TRIM(CODREFTEL2) IS NULL)) OR'
  +'           ((TRIM(ASOTELF2) IS NOT NULL) AND NOT (REGEXP_LIKE(TRIM(ASOTELF2), ''^[0-9]+$''))) THEN ASOTELF2 END ASOTELF2'
  +' FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  edtAsoTelf1.Text := DM1.cdsQry.FieldByName('ASOTELF1').AsString;
  edtAsoTelf2.Text := DM1.cdsQry.FieldByName('ASOTELF2').AsString;
  // Fin: HPC_201818_COB
End;


xSql := 'SELECT REGPENID, REGPENDES FROM APO105 WHERE REGPENID IN (''01'',''02'',''03'')';
If DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'CE' Then xSql := 'SELECT REGPENID, REGPENDES FROM APO105 WHERE REGPENID IN (''01'',''02'')';
DM1.cdsResol.Close;
DM1.cdsResol.DataRequest(xSql);
DM1.cdsResol.Open;

If DM1.wUsuario = 'CEZCURRA' Then  BitOfiDes.Enabled := True;

edtRegPen.Text:=DM1.RecuperaDatos('APO105','REGPENID',Trim(DM1.cdsAso.FieldByName('REGPENID').asstring),'REGPENDES');
edtTipAso.Text:=DM1.RecuperaDatos('APO107','ASOTIPID',DM1.cdsAso.fieldbyname('ASOTIPID').AsString,'ASOTIPDES');
edtAsoTipId.Text := DM1.cdsAso.fieldbyname('ASOTIPID').AsString;



end;

procedure TfMatAso.sbtDatLabClick(Sender: TObject);
begin
lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
end;

procedure TfMatAso.SpdBSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfMatAso.lkcDpto2Change(Sender: TObject);
begin
   If DM1.cdsRec.Locate('DPTOID',lkcDpto2.Text,[]) then
      Begin
        EdtDpto2.Text := DM1.cdsRec.FieldByName('DPTODES').asstring ;
        If lkcDpto2.Enabled Then lkcProv2.Enabled := True;
      End
   Else
      Begin
        if Length(lkcDpto2.Text) <> 2 then
           Begin
              Beep;
              EdtDpto2.Text  :=''; lkcProv2.Enabled:=False;
           End;
      End


end;

procedure TfMatAso.lkcProv2Change(Sender: TObject);
begin
  If DM1.cdsTRela.Locate('PROVID',lkcProv2.Text,[]) then
     Begin
        EdtProv2.Text := DM1.cdsTRela.FieldByName('PROVDES').asstring ;
        If lkcProv2.Enabled Then lkcDist2.Enabled := True;
     End
  Else
     Begin
        EdtProv2.Text := ''; lkcDist2.Enabled := False;
     End;

end;

procedure TfMatAso.lkcDist2Change(Sender: TObject);
begin
   If DM1.cdsQry6.Locate('ZIPID',lkcDist2.Text,[]) then
       EdtDist2.Text := DM1.cdsQry6.FieldByName('ZIPDES').asstring
    Else
       EdtDist2.Text := '';

end;

procedure TfMatAso.edtDptoChange(Sender: TObject);
begin
       DM1.cdsHijo.Close;
       DM1.cdsHijo.DataRequest('SELECT DPTOID||CIUDID AS PROVID,'+
                                           'CIUDDES AS PROVDES'+
                                           ' FROM TGE121'+
                                           ' WHERE DPTOID='''+TRIM(lkcDpto.Text)+''' ');
       DM1.cdsHijo.Open;



end;

procedure TfMatAso.edtProvChange(Sender: TObject);
begin
  DM1.cdsSAso.Close;
  DM1.cdsSAso.DataRequest('SELECT * FROM APO122 WHERE CIUDID='''+TRIM(lkcProv.Text)+''' ');
  DM1.cdsSAso.Open;
end;

procedure TfMatAso.edtDpto2Change(Sender: TObject);
begin
 DM1.cdsTRela.Close;
 DM1.cdsTRela.DataRequest('SELECT DPTOID||CIUDID AS PROVID,'+
                                           'CIUDDES AS PROVDES'+
                                        ' FROM TGE121'+
                                        ' WHERE DPTOID='''+TRIM(lkcDpto2.Text)+''' ');
 DM1.cdsTRela.Open;

end;

procedure TfMatAso.edtProv2Change(Sender: TObject);
begin
  DM1.cdsQry6.Close;
  DM1.cdsQry6.DataRequest('SELECT * FROM APO122 WHERE CIUDID='''+TRIM(lkcProv2.Text)+''' ');
  DM1.cdsQry6.Open;
end;

procedure TfMatAso.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfMatAso.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfMatAso.DbLlSexoChange(Sender: TObject);
begin
   If DM1.cdsSexo.Locate('ID',DbLlSexo.Text,[]) then
      Begin
        dbeSexo.Text := DM1.cdsSexo.FieldByName('DESCRIP').asstring
      End
   Else
      Begin
        if Length(DbLlSexo.Text) <> 2 then
           Begin
              Beep;
              dbeSexo.Text  :='';
           End;
      End

end;

{procedure TfMatAso.DbLlTipAsoChange(Sender: TObject);
begin
   If DM1.cdsTAso.Locate('ASOTIPID',DbLlTipAso.Text,[]) then
      Begin
        edtTipAso.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').asstring
      End
   Else
      Begin
        if Length(DbLlTipAso.Text) <> 2 then
           Begin
              Beep;
              edtTipAso.Text  :='';
           End;
      End

end;
}

procedure TfMatAso.DbLlRegPenChange(Sender: TObject);
begin
   If DM1.cdsResol.Locate('REGPENID',DbLlRegPen.Text,[]) then
      Begin
        edtRegPen.Text := DM1.cdsResol.FieldByName('REGPENDES').asstring;
        If DbLlRegPen.Text='03' Then DbLlAfp.Enabled := True Else DbLlAfp.Enabled := False; 
      End
   Else
      Begin
        if Length(DbLlRegPen.Text) <> 2 then
           Begin
              Beep;
              edtRegPen.Text  :='';
           End;
      End



end;

procedure TfMatAso.DbLlAfpChange(Sender: TObject);
begin
   If DM1.cdsTCredito.Locate('IDAFP',DbLlAfp.Text,[]) then
      Begin
        EdtAfp.Text := DM1.cdsTCredito.FieldByName('PROVDES').asstring
      End
   Else
      Begin
        if Length(DbLlAfp.Text) <> 2 then
           Begin
              Beep;
              EdtAfp.Text  :='';
           End;
      End


end;

procedure TfMatAso.BitGrabarClick(Sender: TObject);
var xAsoid,xCodReg:String;
    Boton:Integer;
begin
xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;


If (Trim(edtAsoTipId.Text)='CE') And (Trim(DbLlRegPen.Text)='02') Then
   Begin
      MessageDlg(' No Puede Crear Cesantes con Regimen De Pensión 19990 ', mtError, [mbOk], 0);
      Exit;
   End;
Boton := Application.MessageBox ('¿Esta Seguro De Actualizar Datos Del Asociado?','Creditos',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin
      xCodReg:=CodReg;
      Registro_Aud(xAsoId,'0',xCodReg);
      DM1.cdsAso.ApplyUpdates(0);
      DM1.cdsAsoX.Close;
      DM1.cdsAsoX.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));
      DM1.cdsAsoX.Open;
      DM1.cdsAsoX.Edit;
      DM1.cdsAsoX.fieldbyname('ASOAPENOMDNI').AsString:=Trim(EdtApePatDni.Text)+' '+Trim(EdtApeMatDni.Text)+' '+Trim(EdtAsoNomDni.Text);
      DM1.cdsAsoX.fieldbyname('ASODPTLABID').AsString:=Trim(lkcDpto2.Text);
      DM1.cdsAsoX.fieldbyname('ASOPRVLABID').AsString:=Trim(lkcProv2.Text);
      DM1.cdsAsoX.fieldbyname('ASODSTLABID').AsString:=Trim(lkcDist2.Text);
      DM1.cdsAsoX.fieldbyname('ASODPTO').AsString := Trim(lkcDpto.Text);
      DM1.cdsAsoX.fieldbyname('CIUDID').AsString := Trim(lkcProv.Text);
      DM1.cdsAsoX.fieldbyname('ZIPID').AsString  := Trim(lkcDist.Text);
      DM1.cdsAsoX.ApplyUpdates(0);  DM1.cdsAso.ApplyUpdates(0);
      Registro_Aud(xAsoId,'1',xCodReg);
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));
      DM1.cdsAso.Open;
      lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
      lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
      lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
      edtProv2.Text := DM1.CrgDescrip('DPTOID||CIUDID='+QuotedStr(Trim(lkcProv2.Text)),'TGE121','CIUDDES');
      edtDist2.Text := DM1.CrgDescrip('ZIPID='+QuotedStr(Trim(lkcDist2.Text)),'APO122','ZIPDES');
      If DM1.xCnd<>'M' Then DM1.CrgDatos;
      If DM1.xSgr='N' Then  Close;
      BitModifica.Enabled := True;
      BitGrabar.Enabled:=False;
      BitCancelar.Enabled:=False;
      gbCambios.Enabled:=False;
      MessageDlg(' <<< Se Grabo Con Exito >>> ', mtInformation,[mbOk],0);
   End;

end;

procedure TfMatAso.BitModificaClick(Sender: TObject);
begin
If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
      End;  
   gbCambios.Enabled:=True;
   BitModifica.Enabled := False;
   BitGrabar.Enabled:=True;
   BitCancelar.Enabled:=True;
   If EdtApePatDni.Enabled Then
      EdtApePatDni.SetFocus
   Else
      dbdtFecNac.SetFocus;
end;

procedure TfMatAso.BitCancelarClick(Sender: TObject);
var xAsoId:String;
begin
   xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
   DM1.cdsAso.Close;  DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));  DM1.cdsAso.Open;
   If DM1.xCnd<>'M' Then DM1.CrgDatos;
   lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
   lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
   lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
   edtProv2.Text := DM1.CrgDescrip('DPTOID||CIUDID='+QuotedStr(Trim(lkcProv2.Text)),'TGE121','CIUDDES');
   edtDist2.Text := DM1.CrgDescrip('ZIPID='+QuotedStr(Trim(lkcDist2.Text)),'APO122','ZIPDES');
   gbCambios.Enabled:=False;
   BitModifica.Enabled := True;
   BitGrabar.Enabled:=False;
   BitCancelar.Enabled:=False;
end;

procedure TfMatAso.Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
var xSQL:String;
begin

      If Length(Trim(xCodReg))=0 Then
         Begin
            MessageDlg(' No Se Grabo Log De USUARIO Informe al Equipo De Sistemas ', mtError, [mbOk], 0);
            Exit;
         End;

      xSQL:='INSERT INTO APO201_LOG(ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, '+
            'UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, '+
            'ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, '+
            'ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, '+
            'FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, '+
            'OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, '+
            'ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, '+
            'DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, USUARIO_AUD, REGISTRO_AUD, SECUENCIA, CODREG, MODULOID)'+
            ' SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, '+
            'ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, '+
            'ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, '+
            'ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, '+
            'ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, '+
            'OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, '+
            'ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, '+
            'FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP,'+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(xSecuencia)+','+QuotedStr(xCodReg)+',''CRE'' FROM APO201 WHERE ASOID='+QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

end;

procedure TfMatAso.BitResolClick(Sender: TObject);
var xSQL:String;
begin
  Try
    fResNomb:= TfResNomb.create(self);
    xSQL:='SELECT ASOID,ASOCODMOD,ASONRES,ASOFRES,RESID,B.TIPRESDES TIPRESDES,RESFVIG,A.USUARIO,A.FREG,A.HREG FROM APO205 A,APO104 B '+
          'WHERE ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' AND A.RESID=B.TIPRESID  ORDER BY HREG DESC';
    DM1.cdsGradoA.Close;
    DM1.cdsGradoA.DataRequest(xSQL);
    DM1.cdsGradoA.Open;
    If DM1.cdsGradoA.RecordCount > 1 Then DM1.cdsGradoA.First;
    fResNomb.Showmodal;
  Finally
    DM1.cdsGradoA.Close;
    fResNomb.Free;
  End;
end;

procedure TfMatAso.FormCreate(Sender: TObject);
begin
//DM1.BlqComponentes(Self);
end;

procedure TfMatAso.BitReasignacionClick(Sender: TObject);
var xSQL:String;
begin
  Try
    fNueAsociado := TfNueAsociado.create(self);
    xSQL:='SELECT UPROID,UPRONOM FROM APO102';
    DM1.cdsUPro.Close;
    DM1.cdsUPro.DataRequest(xSQL);
    DM1.cdsUPro.Open;
    fNueAsociado.Caption := 'Mantenimiento De Asociados / Reasignación';
    fNueAsociado.Showmodal;
  Finally
    DM1.cdsUPro.Close;
    fNueAsociado.Close;
    fNueAsociado.free;
  End;

end;

procedure TfMatAso.DbLlRegPenExit(Sender: TObject);
begin
 If Trim(DbLlRegPen.Text)='03' Then
    DbLlAfp.Enabled := True
 Else
    Begin
       DbLlAfp.Text:='';
       DbLlAfp.Enabled := False;
    End;

end;

procedure TfMatAso.BitOfiDesClick(Sender: TObject);
var xSQL,xAsoId:String;
begin
  If DM1.wUsuario = 'CEZCURRA' Then
  Begin
    xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
    xSQL:='UPDATE APO201 SET FECACT='+QuotedStr(DateToStr(DM1.FechaSys))+' WHERE ASOID='+QuotedStr(xAsoId);
//    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    MessageDlg(' Fecha Grabada Para Transferencia a Provincia ', mtInformation, [mbOk], 0);
  end;
end;

procedure TfMatAso.BitSocioClick(Sender: TObject);
var xSQL:String;
begin
  Try
    fDatosSocEco := TfDatosSocEco.create(self);
    xSQL:='SELECT ESTCIVID,ESTCIVDES FROM TGE125 ORDER BY ESTCIVID';
    DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;
    

    xSQL:='SELECT GRAINSID,GRAINSABR FROM TGE119 ORDER BY GRAINSID';
    DM1.cdsUseS.Close;  DM1.cdsUseS.DataRequest(xSQL);  DM1.cdsUseS.Open;
    // Irc
    DM1.cdsGradoI.Close; DM1.cdsGradoI.DataRequest(xSQL); DM1.cdsGradoI.Open;

    xSQL:='SELECT TIPVIVID,TIPVIVABR FROM APO109 ORDER BY TIPVIVID';
    DM1.cdsUPago.Close; DM1.cdsUPago.DataRequest(xSQL); DM1.cdsUPago.Open;
    // Irc
    DM1.cdsCViv.Close; DM1.cdsCViv.DataRequest(xSql); DM1.cdsCViv.Open;

    xSQL:='SELECT PARENID,PARENABR FROM TGE149 ORDER BY PARENID';
    DM1.cdsTCredito.Close; DM1.cdsTCredito.DataRequest(xSQL); DM1.cdsTCredito.Open;

    fDatosSocEco.Showmodal;
  Finally

    DM1.cdsUPro.Close; DM1.cdsUseS.Close; DM1.cdsUPago.Close; DM1.cdsTCredito.Close;
    fDatosSocEco.free;
  End;

end;

function TfMatAso.CodReg: String;
var xSQL,xResAbn:String;
    xCorAbn:Integer;
begin
DM1.cdsListaCred.Close;
xSQL:='SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO='+QuotedStr(Copy(DateToStr(DM1.FechaSys),7,4))+' AND CREAREA=''ASO'' ';
DM1.cdsListaCred.DataRequest(xSQL);
DM1.cdsListaCred.Open;
If DM1.cdsListaCred.RecordCount=1 Then
   Begin
     xCorAbn:=StrToInt(DM1.cdsListaCred.fieldbyname('ASOID').AsString) + 1;
     xResAbn:=Format('%.10d',[xCorAbn]);
     DM1.cdsListaCred.Edit;
     DM1.cdsListaCred.fieldbyname('ASOID').AsString:=xResAbn;
     DM1.cdsListaCred.ApplyUpdates(0);
     Result:=xResAbn;
   End;
DM1.cdsListaCred.Close;



end;

procedure TfMatAso.BitCuentasClick(Sender: TObject);
var xSQL:String;
begin
  Try
    fCtasAhorro:= TfCtasAhorro.create(self);
    xSQL:='SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, SITCTA,B.SITCTADES, A.USUARIO, A.FREG, A.HREG, ASOITEM, A.BANCOID, C.BANCONOM '+
          'FROM APO207 A,COB103 B,TGE105 C WHERE A.SITCTA=B.SITCTAID  AND A.BANCOID=C.BANCOID AND ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' ORDER BY ASOITEM DESC';;
    DM1.cdsGradoA.Close;
    DM1.cdsGradoA.DataRequest(xSQL);
    DM1.cdsGradoA.Open;
    If DM1.cdsGradoA.RecordCount > 1 Then DM1.cdsGradoA.First;
    fCtasAhorro.Showmodal;
  Finally
    DM1.cdsGradoA.Close;  
    fCtasAhorro.Free;
  End;

end;

end.
