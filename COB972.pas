// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB972
// Formulario           : Fmanblo
// Fecha de Creación    : 14/08/2013
// Autor                : Isaac revilla
// Objetivo             : Bloqueo y desbloqueo de couotas de los cronogramas de pago
// Actualizaciones      :
// HPC_201602_COB: Control de accesos por usuario al bloqueo y desbloqueo de las cuotas.
unit COB972;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, wwdblook, Wwdbdlg, Buttons, db;

type
  TFmanblo = class(TForm)
    gbbloqueo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    mecredid: TMaskEdit;
    Panel2: TPanel;
    mecuota: TMaskEdit;
    Label4: TLabel;
    Panel4: TPanel;
    measoapenomdni: TMaskEdit;
    Label5: TLabel;
    Panel5: TPanel;
    memoncuo: TMaskEdit;
    gbinfblo: TGroupBox;
    dblcdtipblo: TwwDBLookupComboDlg;
    Panel6: TPanel;
    medesblo: TMaskEdit;
    mObsDat: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    Panel7: TPanel;
    mefechorbloq: TMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    Panel8: TPanel;
    meusuario: TMaskEdit;
    btngrabar: TBitBtn;
    btncerrar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure dblcdtipbloChange(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btngrabarClick(Sender: TObject);
    procedure limpiabloqueo;
  private
    cancuo, montot : Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmanblo: TFmanblo;

implementation

uses COBDM1, COB904;

{$R *.dfm}

procedure TFmanblo.FormActivate(Sender: TObject);
Var xSql :String;
  cancuo, montot :Double;
  // Inicio: HPC_201602_COB
  // Se define las variables a usar
  xbloquea, xdesbloquea: String;
begin
  // Se verifica si tiene acceo para bloquear coutas
  xSql := 'SELECT NVL(MAX(''S''),''N'') ACCESO FROM COB_ACC_USU_MAE WHERE MODULO = ''COB'' AND CLAVE = ''BLO_CUO'' AND USERID = '+QuotedStr(DM1.wUsuario);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xbloquea := DM1.cdsQry.FieldByName('ACCESO').AsString;
  // Se verifica si tiene acceo para desbloquear coutas
  xSql := 'SELECT NVL(MAX(''S''),''N'') ACCESO FROM COB_ACC_USU_MAE WHERE MODULO = ''COB'' AND CLAVE = ''DES_CUO'' AND USERID = '+QuotedStr(DM1.wUsuario);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xdesbloquea := DM1.cdsQry.FieldByName('ACCESO').AsString;
  // Fin: HPC_201602_COB

  cancuo := 0;
  montot := 0;
  DM1.cdsCuotas.First;
  While Not DM1.cdsCuotas.Eof Do
  Begin
    If DM1.cdsCuotas.FieldByName('FLAGVAR').AsString = 'S' Then
    Begin
      cancuo := cancuo + 1;
      montot := montot + DM1.cdsCuotas.FieldByName('CREMTO').AsFloat-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat;
    End;
    DM1.cdsCuotas.Next;
  End;

  If DM1.xSgr = 'BLO' Then
  Begin
    Fmanblo.Caption := 'BLOQUEO DE CUOTAS';
    gbbloqueo.Caption := ' DATOS DE LA CUOTA BLOQUEADA ';
    gbinfblo.Caption  := ' INFORMACION DE LA CUOTA BLOQUEDA ';
    xSql := 'SELECT ASOAPENOMDNI FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    measoapenomdni.Text := DM1.cdsQry.FieldByname('ASOAPENOMDNI').AsString;
    xSql := 'SELECT TIPCREDES FROM CRE110 WHERE TIPCREID = '+QuotedStr(Copy(DM1.cdsCuotas.Fieldbyname('CREDID').AsString,7,2));
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    mecredid.Text   := DM1.cdsCuotas.fieldbyname('CREDID').AsString+' - '+DM1.cdsQry.FieldByName('TIPCREDES').AsString;
    mecuota.Text    := FloatToStrF(cancuo, ffNumber,10,2);
    memoncuo.Text   := FloatToStrF(montot, ffNumber,10,2);
    meusuario.Text    := DM1.wUsuario+' - '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
    xSql := 'SELECT SYSDATE FECHA FROM DUAL';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    mefechorbloq.Text := DM1.cdsQry.FieldByName('FECHA').AsString;
    xSql := 'SELECT CODTIP, DESTIP FROM COB_TIP_BLO_CUO WHERE TIPDAT = ''B''';
    DM1.cdsTRela.Close;
    DM1.cdsTRela.DataRequest(xSql);
    DM1.cdsTRela.Open;
    dblcdtipblo.Selected.Clear;
    dblcdtipblo.Selected.Add('CODTIP'#9'3'#9'Código'#9#9);
    dblcdtipblo.Selected.Add('DESTIP'#9'30'#9'Descripción'#9#9);
     // Inicio: HPC_201602_COB
     // Se controla la actualización del bloqueo de cuotas
     If xbloquea = 'N' Then
     Begin
        dblcdtipblo.Enabled := False;
        mObsDat.Enabled := False;
        btngrabar.Enabled := False;
        MessageDlg('Usuario no autorizado para el bloqueo de cuotas', mtInformation, [mbOk], 0);
     End;
     // Fin: HPC_201602_COB
  End;

  If DM1.xSgr = 'DES' Then
  Begin
    Fmanblo.Caption := 'DESBLOQUEO DE CUOTAS';
    gbbloqueo.Caption := ' DATOS DE LA CUOTA A DESBLOQUEAR ';
    gbinfblo.Caption  := ' INFORMACION DE LA CUOTA A DESBLOQUEAR ';
    xSql := 'SELECT ASOAPENOMDNI FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    measoapenomdni.Text := DM1.cdsQry.FieldByname('ASOAPENOMDNI').AsString;
    xSql := 'SELECT TIPCREDES FROM CRE110 WHERE TIPCREID = '+QuotedStr(Copy(DM1.cdsCuotas.Fieldbyname('CREDID').AsString,7,2));
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    mecredid.Text   := DM1.cdsCuotas.fieldbyname('CREDID').AsString+' - '+DM1.cdsQry.FieldByName('TIPCREDES').AsString;
    mecuota.Text    := FloatToStrF(cancuo, ffNumber,10,2);
    memoncuo.Text   := FloatToStrF(montot, ffNumber,10,2);
    meusuario.Text    := DM1.wUsuario+' - '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
    xSql := 'SELECT SYSDATE FECHA FROM DUAL';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    mefechorbloq.Text := DM1.cdsQry.FieldByName('FECHA').AsString;
    xSql := 'SELECT CODTIP, DESTIP FROM COB_TIP_BLO_CUO WHERE TIPDAT = ''D''';
    DM1.cdsTRela.Close;
    DM1.cdsTRela.DataRequest(xSql);
    DM1.cdsTRela.Open;
    dblcdtipblo.Selected.Clear;
    dblcdtipblo.Selected.Add('CODTIP'#9'3'#9'Código'#9#9);
    dblcdtipblo.Selected.Add('DESTIP'#9'30'#9'Descripción'#9#9);

     // Inicio: HPC_201602_COB
     // Controla el desbloqueo de cuotas
     If xdesbloquea = 'N' Then
     Begin
        dblcdtipblo.Enabled := False;
        mObsDat.Enabled := False;
        btngrabar.Enabled := False;
        MessageDlg('Usuario no autorizado para el desbloqueo de cuotas', mtInformation, [mbOk], 0);
     End;
     // Fin: HPC_201602_COB
  End;

  If DM1.xSgr = 'HIS' Then
  Begin
    Label2.Caption := 'Cuota :';
    gbbloqueo.Enabled := False;
    gbinfblo.Enabled := False;
    btngrabar.Visible := False;
    xSql := 'SELECT ASOAPENOMDNI FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    measoapenomdni.Text := DM1.cdsQry.FieldByname('ASOAPENOMDNI').AsString;
    xSql := 'SELECT TIPCREDES FROM CRE110 WHERE TIPCREID = '+QuotedStr(Copy(DM1.cdsDFam.Fieldbyname('CREDID').AsString,7,2));
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    cancuo := DM1.cdsDFam.FieldByName('CRECUOTA').AsFloat;
    montot := DM1.cdsDFam.FieldByName('CREMTO').AsFloat;
    mecredid.Text   := DM1.cdsDFam.fieldbyname('CREDID').AsString+' - '+DM1.cdsQry.FieldByName('TIPCREDES').AsString;
    mecuota.Text    := FloatToStrF(cancuo, ffNumber,10,2);
    memoncuo.Text   := FloatToStrF(montot, ffNumber,10,2);
    mefechorbloq.Text := DM1.cdsDFam.FieldByName('FECBLO').AsString;
    meusuario.Text    := DM1.cdsDFam.FieldByName('USUBLO').AsString+' - '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.cdsDFam.FieldByName('USUBLO').AsString)),'TGE006','USERNOM');
    dblcdtipblo.Text  := DM1.cdsDFam.FieldByName('CODTIP').AsString;
    medesblo.Text     := DM1.cdsDFam.FieldByName('DESTIP').AsString;
    mObsDat.Text      := DM1.cdsDFam.FieldByName('DESMEN').AsString;
    If DM1.cdsDFam.FieldByName('TIPDAT').AsString = 'B' Then
    Begin
      gbbloqueo.Caption := ' DATOS DE LA CUOTA BLOQUEADA ';
      gbinfblo.Caption  := ' INFORMACION DE LA CUOTA BLOQUEDA ';
    End
    Else
    Begin
      gbbloqueo.Caption := ' DATOS DE LA CUOTA DESBLOQUEADA ';
      gbinfblo.Caption  := ' INFORMACION DE LA CUOTA DESBLOQUEDA ';
    End;
  End;
end;

procedure TFmanblo.dblcdtipbloChange(Sender: TObject);
begin
  If DM1.xSgr <> 'HIS' Then
  Begin
    If dblcdtipblo.Text = '' Then medesblo.Text := '';
    If Length(dblcdtipblo.Text) = 2 then
    Begin
      If DM1.cdsTRela.Locate('CODTIP', dblcdtipblo.Text, []) Then
      Begin
        medesblo.Text := DM1.cdsTRela.FieldByName('DESTIP').AsString;
      End
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        dblcdtipblo.Text := '';
        medesblo.Text := '';
        dblcdtipblo.SetFocus;
      End;
    End;
  End;
end;

procedure TFmanblo.btncerrarClick(Sender: TObject);
begin
  Fmanblo.Close;
end;

procedure TFmanblo.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

Procedure TFmanblo.btngrabarClick(Sender: TObject);
Var xSql, xfCalc, xfVen:String;
  xRegistro: TBookmark;
Begin
  If DM1.xSgr = 'BLO' Then
  Begin
    If dblcdtipblo.Text = '' Then
    Begin
      MessageDlg('Seleccione el tipo de bloqueo', mtInformation, [mbOk], 0);
      dblcdtipblo.SetFocus;
      Exit;
    End;
    If Trim(mObsDat.Text) = '' Then
    Begin
      MessageDlg('Ingrese un comentario adicional', mtInformation, [mbOk], 0);
      mObsDat.SetFocus;
      Exit;
    End;
    If MessageDlg('¿ Confirmar bloqueo ? ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      xRegistro:=DM1.cdsCuotas.GetBookmark;
      DM1.xCnd := 'N';
      DM1.cdsCuotas.First;
      While Not DM1.cdsCuotas.Eof Do
      Begin
        If DM1.cdsCuotas.FieldByName('FLAGVAR').AsString = 'S' Then DM1.xCnd := 'S';
        DM1.cdsCuotas.Next;
      End;
      If DM1.xCnd = 'S' Then
      Begin
        DM1.cdsCuotas.First;
        While Not DM1.cdsCuotas.Eof Do
        Begin
          If DM1.cdsCuotas.FieldByName('FLAGVAR').AsString = 'S' Then
          Begin
            xSql := 'INSERT INTO COB_LOG_BLO(ASOID, CREDID, CRECUOTA, CODTIP, USUBLO, FECBLO, TIPDAT, DESMEN, CREFVEN, CREMTO)'
            +' VALUES ('+QuotedStr(DM1.cdsCuotas.FieldByname('ASOID').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString
            +','+QuotedStr(dblcdtipblo.Text)
            +','+QuotedStr(DM1.wUsuario)
            +', SYSDATE'
            +','+QuotedStr('B')
            +','+QuotedStr(Copy(Trim(mObsDat.Text),1,256))
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREFVEN').AsString)
            +','+FloatToStr(DM1.cdsCuotas.FieldByName('CREMTO').AsFloat-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat)+')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            xSql :='UPDATE CRE302 SET CREESTID=''19'',CREESTADO=''BLOQUEADA'',CREBLOQ=''S'',CREBLOQFEC='+QuotedStr(DateToStr(DM1.FechaSys))
            +',CREBLOQOBS='+QuotedStr(Copy(Trim(mObsDat.Text),1,256))
            +',USUBLOQ='+QuotedStr(DM1.wUsuario)+' WHERE ASOID ='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' And CREDID='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' And  CRECUOTA= '+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
          End;
          DM1.cdsCuotas.Next;
        End;
        limpiabloqueo;
      End
      Else
      Begin
        DM1.cdsCuotas.GotoBookmark(xRegistro);
        xSql := 'INSERT INTO COB_LOG_BLO(ASOID, CREDID, CRECUOTA, CODTIP, USUBLO, FECBLO, TIPDAT, DESMEN, CREFVEN, CREMTO)'
        +' VALUES ('+QuotedStr(DM1.cdsCuotas.FieldByname('ASOID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString
        +','+QuotedStr(dblcdtipblo.Text)
        +','+QuotedStr(DM1.wUsuario)
        +', SYSDATE'
        +','+QuotedStr('B')
        +','+QuotedStr(Copy(Trim(mObsDat.Text),1,256))
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREFVEN').AsString)
        +','+FloatToStr(DM1.cdsCuotas.FieldByName('CREMTO').AsFloat-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat)+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xSql :='UPDATE CRE302 SET CREESTID=''19'',CREESTADO=''BLOQUEADA'',CREBLOQ=''S'',CREBLOQFEC='+QuotedStr(DateToStr(DM1.FechaSys))+',CREBLOQOBS='+QuotedStr(Copy(Trim(mObsDat.Text),1,256))+',USUBLOQ='+QuotedStr(DM1.wUsuario)+' WHERE ASOID ='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' And CREDID='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' And  CRECUOTA= '+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      fNPago.ActualizaCrono(DM1.cdsCuotas.FieldByName('ASOID').AsString, DM1.cdsCuotas.FieldByName('CREDID').AsString);
      DM1.cdsCuotas.GotoBookmark(xRegistro);
      MessageDlg('Se ha registrado el bloqueo', mtInformation, [mbOk], 0);
      Fmanblo.Close;
    End;
  End;
  If DM1.xSgr = 'DES' Then
  Begin
    If dblcdtipblo.Text = '' Then
    Begin
      MessageDlg('Seleccione el tipo de desbloqueo', mtInformation, [mbOk], 0);
      dblcdtipblo.SetFocus;
      Exit;
    End;
    If Trim(mObsDat.Text) = '' Then
    Begin
      MessageDlg('Ingrese un comentario adicional', mtInformation, [mbOk], 0);
      mObsDat.SetFocus;
      Exit;
    End;
    If MessageDlg('¿ Confirmar desbloqueo ? ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      xRegistro:=DM1.cdsCuotas.GetBookmark;
      DM1.xCnd := 'N';
      DM1.cdsCuotas.First;
      While Not DM1.cdsCuotas.Eof Do
      Begin
        If DM1.cdsCuotas.FieldByName('FLAGVAR').AsString = 'S' Then DM1.xCnd := 'S';
        DM1.cdsCuotas.Next;
      End;
      If DM1.xCnd = 'S' Then
      Begin
        DM1.cdsCuotas.First;
        While Not DM1.cdsCuotas.Eof Do
        Begin
          If DM1.cdsCuotas.FieldByName('FLAGVAR').AsString = 'S' Then
          Begin
            xSql := 'INSERT INTO COB_LOG_BLO(ASOID, CREDID, CRECUOTA, CODTIP, USUBLO, FECBLO, TIPDAT, DESMEN, CREFVEN, CREMTO)'
            +' VALUES ('+QuotedStr(DM1.cdsCuotas.FieldByname('ASOID').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString
            +','+QuotedStr(dblcdtipblo.Text)
            +','+QuotedStr(DM1.wUsuario)
            +', SYSDATE'
            +','+QuotedStr('D')
            +','+QuotedStr(Copy(Trim(mObsDat.Text),1,256))
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREFVEN').AsString)
            +','+FloatToStr(DM1.cdsCuotas.FieldByName('CREMTO').AsFloat-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat)+')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            xfCalc    :=Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
            xfVen     :=DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
            If xfVen > xfCalc Then
               xSql := 'UPDATE CRE302 SET CREESTID=''02'',CREESTADO=''POR COBRAR'',CREBLOQ=NULL,USUDESBLOQ='+QuotedStr(DM1.wUsuario)+', DESBLOFEC = '+QuotedStr(DateToStr(DM1.FechaSys))+' WHERE ASOID ='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' And CREDID='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' And  CRECUOTA='+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString
            Else
               xSql:='UPDATE CRE302 SET CREESTID=''11'',CREESTADO=''NO PAGADO'',CREBLOQ=NULL,USUDESBLOQ='+QuotedStr(DM1.wUsuario)+', DESBLOFEC = '+QuotedStr(DateToStr(DM1.FechaSys))+' WHERE ASOID ='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' And CREDID='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' And  CRECUOTA='+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
            If DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat > 0 Then
               xSql:='UPDATE CRE302 SET CREESTID=''27'',CREESTADO=''PARCIAL'',CREBLOQ=NULL,USUDESBLOQ='+QuotedStr(DM1.wUsuario)+', DESBLOFEC = '+QuotedStr(DateToStr(DM1.FechaSys))+' WHERE ASOID ='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' And CREDID='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' And  CRECUOTA='+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
          End;
          DM1.cdsCuotas.Next;
        End;
        limpiabloqueo;
      End
      Else
      Begin
        DM1.cdsCuotas.GotoBookmark(xRegistro);
        xSql := 'INSERT INTO COB_LOG_BLO(ASOID, CREDID, CRECUOTA, CODTIP, USUBLO, FECBLO, TIPDAT, DESMEN, CREFVEN, CREMTO)'
        +' VALUES ('+QuotedStr(DM1.cdsCuotas.FieldByname('ASOID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString
        +','+QuotedStr(dblcdtipblo.Text)
        +','+QuotedStr(DM1.wUsuario)
        +', SYSDATE'
        +','+QuotedStr('D')
        +','+QuotedStr(Copy(Trim(mObsDat.Text),1,256))
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREFVEN').AsString)
        +','+FloatToStr(DM1.cdsCuotas.FieldByName('CREMTO').AsFloat-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat)+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xfCalc    :=Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
        xfVen     :=DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
        If xfVen > xfCalc Then
          xSql := 'UPDATE CRE302 SET CREESTID=''02'',CREESTADO=''POR COBRAR'',CREBLOQ=NULL,USUDESBLOQ='+QuotedStr(DM1.wUsuario)+' WHERE ASOID ='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' And CREDID='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' And  CRECUOTA='+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString
        Else
          xSql:='UPDATE CRE302 SET CREESTID=''11'',CREESTADO=''NO PAGADO'',CREBLOQ=NULL,USUDESBLOQ='+QuotedStr(DM1.wUsuario)+' WHERE ASOID ='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' And CREDID='+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' And  CRECUOTA='+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      fNPago.ActualizaCrono(DM1.cdsCuotas.FieldByName('ASOID').AsString, DM1.cdsCuotas.FieldByName('CREDID').AsString);
      DM1.cdsCuotas.GotoBookmark(xRegistro);
      MessageDlg('Se ha registrado el desbloqueo', mtInformation, [mbOk], 0);
      Fmanblo.Close;
    End;
  End;
end;

procedure TFmanblo.limpiabloqueo;
Var xSql:String;
begin
  xSql := 'UPDATE CRE302 SET FLAGVAR = NULL WHERE ASOID = '+QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsSolicitud.FieldByName('CREDID').AsString)+' AND NVL(FLAGVAR, ''X'') =  ''S''';
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
end;

end.
