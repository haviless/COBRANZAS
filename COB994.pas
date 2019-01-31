unit COB994;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TFmodUGEL = class(TForm)
    gbmodifica: TGroupBox;
    btnguardar: TBitBtn;
    btncerrar: TBitBtn;
    Label1: TLabel;
    pnldesunipro: TPanel;
    medesunipro: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    pnldesunipag: TPanel;
    medesunipag: TMaskEdit;
    pnldesuniges: TPanel;
    medesuniges: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    pnldesdep: TPanel;
    medesdep: TMaskEdit;
    btnmodificar: TBitBtn;
    gbdocentes: TGroupBox;
    gb3pridigDO: TGroupBox;
    dbg3primerosDO: TwwDBGrid;
    pnlcodcarDO: TPanel;
    me3pridigDO: TMaskEdit;
    gb3ultdigDO: TGroupBox;
    dbg3ultimosDO: TwwDBGrid;
    pnldigmasrepDO: TPanel;
    me3ultdigDO: TMaskEdit;
    gb3pridigCE: TGroupBox;
    pnlcodcarCE: TPanel;
    me3pridigCE: TMaskEdit;
    gb3ultdigCE: TGroupBox;
    dbg3ultimosCE: TwwDBGrid;
    pnldigmasrepCE: TPanel;
    me3ultdigCE: TMaskEdit;
    dbg3primerosCE: TwwDBGrid;
    gbcesantes: TGroupBox;
    rgcarobl: TRadioGroup;
    procedure btncerrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnmodificarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnguardarClick(Sender: TObject);
    procedure me3pridigDOExit(Sender: TObject);
    procedure me3ultdigCEExit(Sender: TObject);
    procedure me3ultdigDOExit(Sender: TObject);
    procedure me3pridigCEExit(Sender: TObject);
    procedure rgcaroblExit(Sender: TObject);
  private
    x3pridigDO, x3ultdigDO, x3pridigCE, x3ultdigCE :String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmodUGEL: TFmodUGEL;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFmodUGEL.btncerrarClick(Sender: TObject);
begin
  FmodUGEL.Close;
end;

procedure TFmodUGEL.FormActivate(Sender: TObject);
Var xSql:String;
begin
  If DM1.cdsDetRegCob.FieldByName('FLACAR').AsString = 'SI' Then
  rgcarobl.ItemIndex := 0
  Else rgcarobl.ItemIndex := 1;
  

  xSql := 'SELECT * FROM APO158 WHERE DPTOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('DPTOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  medesdep.Text := DM1.cdsQry.FieldByName('DPTOID').AsString+' : '+DM1.cdsQry.FieldByName('DPTODES').AsString;

  xSql := 'SELECT UPROID, UPRONOM FROM APO102 WHERE UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  medesunipro.Text := DM1.cdsQry.FieldByName('UPROID').AsString+' : '+DM1.cdsQry.FieldByName('UPRONOM').AsString;

  xSql := 'SELECT UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)
  +' AND UPAGOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  medesunipag.Text := DM1.cdsQry.FieldByName('UPAGOID').AsString+' : '+DM1.cdsQry.FieldByName('UPAGONOM').AsString;
  medesuniges.Text := DM1.cdsDetRegCob.FieldByName('USEID').AsString+' : '+DM1.cdsDetRegCob.FieldByName('USENOM').AsString;

  me3pridigDO.Text := DM1.cdsDetRegCob.FieldByName('CODCARGODO').AsString;
  me3ultdigDO.Text := DM1.cdsDetRegCob.FieldByName('DIGMASREPDO').AsString;
  me3pridigCE.Text := DM1.cdsDetRegCob.FieldByName('CODCARGOCE').AsString;
  me3ultdigCE.Text := DM1.cdsDetRegCob.FieldByName('DIGMASREPCE').AsString;

  pnlcodcarDO.Enabled := False;
  pnlcodcarCE.Enabled := False;
  rgcarobl.Enabled    := False;

  // Docentes
  xSql := 'SELECT CARGO_1, CANTIDAD FROM (SELECT SUBSTR(CARGO,1,3) CARGO_1, COUNT(*) CANTIDAD FROM APO201'
  +' WHERE UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('USEID').AsString)
  +' AND ASOTIPID = ''DO'''
  +' GROUP BY SUBSTR(CARGO,1,3)) ORDER BY CANTIDAD DESC';
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(xSql);
  DM1.cdsQry3.Open;
  DM1.cdsQry3.First;
  x3pridigDO := DM1.cdsQry3.FieldByName('CARGO_1').AsString;
  dbg3primerosDO.Selected.Clear;
  dbg3primerosDO.Selected.Add('CARGO_1'#9'12'#9'Prefijo~Inicial'#9#9);
  dbg3primerosDO.Selected.Add('CANTIDAD'#9'12'#9'Veces que~repite'#9#9);
  dbg3primerosDO.ApplySelected;

  xSql := 'SELECT CARGO_1, CANTIDAD FROM (SELECT SUBSTR(CARGO,4,3) CARGO_1, COUNT(*) CANTIDAD FROM APO201'
  +' WHERE UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('USEID').AsString)
  +' AND ASOTIPID = ''DO'''
  +' GROUP BY SUBSTR(CARGO,4,3)) ORDER BY CANTIDAD DESC';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSql);
  DM1.cdsQry4.Open;
  DM1.cdsQry4.First;
  x3ultdigDO := DM1.cdsQry4.FieldByName('CARGO_1').AsString;
  dbg3ultimosDO.Selected.Clear;
  dbg3ultimosDO.Selected.Add('CARGO_1'#9'12'#9'Prefijo~Inicial'#9#9);
  dbg3ultimosDO.Selected.Add('CANTIDAD'#9'12'#9'Veces que~repite'#9#9);
  dbg3ultimosDO.ApplySelected;

  // CESANTES
  xSql := 'SELECT CARGO_1, CANTIDAD FROM (SELECT SUBSTR(CARGO,1,3) CARGO_1, COUNT(*) CANTIDAD FROM APO201'
  +' WHERE UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('USEID').AsString)
  +' AND ASOTIPID = ''CE'''
  +' GROUP BY SUBSTR(CARGO,1,3)) ORDER BY CANTIDAD DESC';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  DM1.cdsQry5.First;
  x3pridigCE := DM1.cdsQry5.FieldByName('CARGO_1').AsString;
  dbg3primerosCE.Selected.Clear;
  dbg3primerosCE.Selected.Add('CARGO_1'#9'12'#9'Prefijo~Inicial'#9#9);
  dbg3primerosCE.Selected.Add('CANTIDAD'#9'12'#9'Veces que~repite'#9#9);
  dbg3primerosCE.ApplySelected;

  xSql := 'SELECT CARGO_1, CANTIDAD FROM (SELECT SUBSTR(CARGO,4,3) CARGO_1, COUNT(*) CANTIDAD FROM APO201'
  +' WHERE UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('USEID').AsString)
  +' AND ASOTIPID = ''CE'''
  +' GROUP BY SUBSTR(CARGO,4,3)) ORDER BY CANTIDAD DESC';
  DM1.cdsQry6.Close;
  DM1.cdsQry6.DataRequest(xSql);
  DM1.cdsQry6.Open;
  DM1.cdsQry6.First;
  x3ultdigCE := DM1.cdsQry6.FieldByName('CARGO_1').AsString;
  dbg3ultimosCE.Selected.Clear;
  dbg3ultimosCE.Selected.Add('CARGO_1'#9'12'#9'Prefijo~Inicial'#9#9);
  dbg3ultimosCE.Selected.Add('CANTIDAD'#9'12'#9'Veces que~repite'#9#9);
  dbg3ultimosCE.ApplySelected;

end;

procedure TFmodUGEL.btnmodificarClick(Sender: TObject);
begin
  pnlcodcarDO.Enabled    := True;
  pnldigmasrepDO.Enabled := True;
  pnlcodcarCE.Enabled    := True;
  pnldigmasrepCE.Enabled := True;
  rgcarobl.Enabled       := True;
  btnguardar.Enabled     := True;
  me3pridigDO.SetFocus;
end;

procedure TFmodUGEL.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFmodUGEL.btnguardarClick(Sender: TObject);
Var xSql:String;
xcodreg, xflacar :String;
begin

   If rgcarobl.ItemIndex = -1 Then
   Begin
    MessageDlg('Seleccione [SI] o [NO] para el caso de cargo obligatorio', mtInformation,[mbOk],0);
    rgcarobl.SetFocus;
    Exit;
   End;

   If Length(Trim(me3pridigDO.Text)) < 3 Then
   Begin
    MessageDlg('Faltan ingresar los 3 primeros digitos DOCENTES', mtInformation,[mbOk],0);
    me3pridigDO.SetFocus;
    Exit;
   End;

   If Length(Trim(me3pridigDO.Text)) < 3 Then
   Begin
    MessageDlg('Falta ingresar los 3 ultimos digitos DOCENTES', mtInformation,[mbOk],0);
    me3pridigDO.SetFocus;
    Exit;
   End;

   If Length(Trim(me3pridigCE.Text)) < 3 Then
   Begin
    MessageDlg('Faltan ingresar los 3 primeros digitos CESANTES', mtInformation,[mbOk],0);
    me3pridigCE.SetFocus;
    Exit;
   End;

   If Length(Trim(me3pridigCE.Text)) < 3 Then
   Begin
    MessageDlg('Falta ingresar los 3 ultimos digitos CESANTES', mtInformation,[mbOk],0);
    me3pridigCE.SetFocus;
    Exit;
   End;

   If rgcarobl.ItemIndex = 0 Then xflacar := 'S' Else xflacar := 'N';

   If me3pridigDO.Text <> x3pridigDO Then MessageDlg('Cuidado los 3 primeros digitos que vas a ingresar como constante'+#13+'no es el que más se repite (DOCENTES)', mtInformation,[mbOk],0);
   If me3ultdigDO.Text <> x3ultdigDO Then MessageDlg('Cuidado los 3 últimos digitos que vas a ingresar como constante'+#13+'no es el que más se repite (DOCENTES)', mtInformation,[mbOk],0);
   If me3pridigCE.Text <> x3pridigCE Then MessageDlg('Cuidado los 3 primeros digitos que vas a ingresar como constante'+#13+'no es el que más se repite (CESANTES)', mtInformation,[mbOk],0);
   If me3ultdigCE.Text <> x3ultdigCE Then MessageDlg('Cuidado los 3 últimos digitos que vas a ingresar como constante'+#13+'no es el que más se repite (CESANTES)', mtInformation,[mbOk],0);

   If MessageDlg('¿ Seguro de actualizar este registro ?', mtconfirmation,[mbYes,mbNo],0)= mrYes then
   Begin
     // Tomando el ultimo Id
     xSql := 'SELECT LPAD(MAX(SUBSTR(IDEMOD,1,6))+1, 6,''0'') IDEMOD FROM APO101_LOG A';
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSql);
     DM1.cdsQry.Open;
     xcodreg := DM1.cdsQry.FieldByName('IDEMOD').AsString;
     // Guardando backup en apo101_log
     xSql := 'INSERT INTO APO101_LOG (USEID, USENOM, USEABRE, USETELF, USEDIR, DIRDPTOID, DIRPROVID, DIRZIPID, DPTOID,'
     +' CIUDID, ZONAID, UPROID, UPAGOID, TIPUSEID, CCOSID, USUARIO, FREG, HREG, CODANT, FLGFUSION,'
     +' CUENTAID, FLGACT, FDESHABILITADO, OFDESID, DIGABC, ABCID, ZONORIOPE, AMBITO, CODCARGODO, DIGMASREPDO, CODCARGOCE, DIGMASREPCE, FLACAR,'
     +' USUMOD, FECHORMOD, IDEMOD)'
     +' SELECT USEID, USENOM, USEABRE, USETELF, USEDIR, DIRDPTOID, DIRPROVID, DIRZIPID, DPTOID,'
     +' CIUDID, ZONAID, UPROID, UPAGOID, TIPUSEID, CCOSID, USUARIO, FREG, HREG, CODANT, FLGFUSION,'
     +' CUENTAID, FLGACT, FDESHABILITADO, OFDESID, DIGABC, ABCID, ZONORIOPE, AMBITO, CODCARGODO, DIGMASREPDO, CODCARGOCE, DIGMASREPCE, FLACAR, '+QuotedStr(DM1.wUsuario)+', SYSDATE, '+QuotedStr(xcodreg+'-01')
     +' FROM APO101 WHERE UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('USEID').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
     xSql := 'UPDATE APO101 SET'
     +' CODCARGODO = '+QuotedStr(me3pridigDO.Text)
     +',DIGMASREPDO = '+QuotedStr(me3ultdigDO.Text)
     +',CODCARGOCE = '+QuotedStr(me3pridigCE.Text)
     +',DIGMASREPCE = '+QuotedStr(me3ultdigCE.Text)
     +',FLACAR = '+QuotedStr(xflacar)
     +' WHERE UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('USEID').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
     xSql := 'INSERT INTO APO101_LOG (USEID, USENOM, USEABRE, USETELF, USEDIR, DIRDPTOID, DIRPROVID, DIRZIPID, DPTOID,'
     +' CIUDID, ZONAID, UPROID, UPAGOID, TIPUSEID, CCOSID, USUARIO, FREG, HREG, CODANT, FLGFUSION,'
     +' CUENTAID, FLGACT, FDESHABILITADO, OFDESID, DIGABC, ABCID, ZONORIOPE, AMBITO, CODCARGODO, DIGMASREPDO, CODCARGOCE, DIGMASREPCE, FLACAR,'
     +' USUMOD, FECHORMOD, IDEMOD)'
     +' SELECT USEID, USENOM, USEABRE, USETELF, USEDIR, DIRDPTOID, DIRPROVID, DIRZIPID, DPTOID,'
     +' CIUDID, ZONAID, UPROID, UPAGOID, TIPUSEID, CCOSID, USUARIO, FREG, HREG, CODANT, FLGFUSION,'
     +' CUENTAID, FLGACT, FDESHABILITADO, OFDESID, DIGABC, ABCID, ZONORIOPE, AMBITO, CODCARGODO, DIGMASREPDO, CODCARGOCE, DIGMASREPCE, FLACAR, '+QuotedStr(DM1.wUsuario)+', SYSDATE, '+QuotedStr(xcodreg+'-02')
     +' FROM APO101 WHERE UPROID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('USEID').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
     DM1.cdsDetRegCob.Edit;
     DM1.cdsDetRegCob.FieldByName('CODCARGODO').AsString  := me3pridigDO.Text;
     DM1.cdsDetRegCob.FieldByName('DIGMASREPDO').AsString := me3ultdigDO.Text;
     DM1.cdsDetRegCob.FieldByName('CODCARGOCE').AsString  := me3pridigCE.Text;
     DM1.cdsDetRegCob.FieldByName('DIGMASREPCE').AsString := me3ultdigCE.Text;
     If rgcarobl.ItemIndex = 0 Then DM1.cdsDetRegCob.FieldByName('FLACAR').AsString := 'SI'
     Else DM1.cdsDetRegCob.FieldByName('FLACAR').AsString := 'NO';

     MessageDlg('Actualización de UGEL ha concluido', mtInformation,[mbOk],0);
     pnlcodcarDO.Enabled    := False;
     pnlcodcarCE.Enabled    := False;
     pnldigmasrepCE.Enabled := False;
     pnldigmasrepCE.Enabled := False;
     FmodUGEL.Close;
   End;
end;



procedure TFmodUGEL.me3pridigDOExit(Sender: TObject);
begin
  me3ultdigDO.SetFocus;
end;

procedure TFmodUGEL.me3ultdigCEExit(Sender: TObject);
begin
  rgcarobl.SetFocus;
end;

procedure TFmodUGEL.me3ultdigDOExit(Sender: TObject);
begin
me3pridigCE.SetFocus;
end;

procedure TFmodUGEL.me3pridigCEExit(Sender: TObject);
begin
  me3ultdigCE.SetFocus;
end;

procedure TFmodUGEL.rgcaroblExit(Sender: TObject);
begin
  btnguardar.SetFocus;
end;

end.
