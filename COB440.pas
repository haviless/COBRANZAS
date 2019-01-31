unit COB440;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn,
  wwdbdatetimepicker, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppCtrls, ppPrnabl,
  ppBands, ppCache, DB, DBClient, DBGrids, ppVar, ComCtrls, Buttons;
type
  TFRepPagBcoNac = class(TForm)
  pnlPagBcos: TPanel;
  StaticText1: TStaticText;
  cdsreporte: TClientDataSet;
  GroupBox1: TGroupBox;
  Label4: TLabel;
  dbdtpInicio: TwwDBDateTimePicker;
  Label5: TLabel;
  dbdtpFinal: TwwDBDateTimePicker;
  Label2: TLabel;
  dblcdOfiDes: TwwDBLookupComboDlg;
  Label3: TLabel;
  dblcdUsuario: TwwDBLookupComboDlg;
  edtOfiDes: TEdit;
  edtUsuario: TEdit;
  BitBtn5: TBitBtn;
  rgtipo: TRadioGroup;
  BitBtn1: TBitBtn;
  ppbdePagBcos: TppBDEPipeline;
  ppRPagBcos: TppReport;
  ppHeaderBand1: TppHeaderBand;
  ppShape1: TppShape;
  ppLabel1: TppLabel;
  ppLabel2: TppLabel;
  ppLabel3: TppLabel;
  ppLine1: TppLine;
  ppShape2: TppShape;
  ppLabel4: TppLabel;
  ppLabel5: TppLabel;
  ppLabel6: TppLabel;
  ppLabel7: TppLabel;
  ppLine2: TppLine;
  ppShape3: TppShape;
  ppLine3: TppLine;
  pplTituloP: TppLabel;
  ppShape4: TppShape;
  ppLabel10: TppLabel;
  ppLabel9: TppLabel;
  ppShape5: TppShape;
  ppLabel11: TppLabel;
  ppShape6: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    pplTituloS: TppLabel;
    pplofidesT: TppLabel;
    pplUsuarioT: TppLabel;
    pplofides: TppLabel;
    pplusuario: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel8: TppLabel;
    ppLabel18: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    procedure dblcdOfiDesExit(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure dblcdUsuarioExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure AnadeRegistro();
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FRepPagBcoNac: TFRepPagBcoNac;
implementation
uses COBDM1;
{$R *.dfm}

procedure TFRepPagBcoNac.dblcdOfiDesExit(Sender: TObject);
Var xSql:String;
begin
xSql := 'SELECT OFDESID, OFDESNOM FROM APO110 WHERE  OFDESID =  '+QuotedStr(dblcdOfiDes.Text);
DM1.cdsQry1.Close;
DM1.cdsQry1.DataRequest(xSql);
DM1.cdsQry1.Open;
If DM1.cdsQry1.RecordCount = 1 Then
Begin
   xSql := 'SELECT USERID, USERNOM, ORIGEN, AREA FROM USERTABLE WHERE AREA IN (''CRE'', ''COB'') AND ORIGEN = '+QuotedStr(dblcdOfiDes.Text);
   DM1.cdsUsuarios.Close;
   DM1.cdsUsuarios.DataRequest(xSql);
   DM1.cdsUsuarios.Open;
   edtOfiDes.Text := DM1.cdsOfDes.FieldByName('OFDESNOM').AsString;
End
Else
   MessageDlg('Código errado', mtInformation,[mbOk],0);
end;

procedure TFRepPagBcoNac.fcShapeBtn3Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepPagBcoNac.dblcdUsuarioExit(Sender: TObject);
Var xSql:String;
begin
If dblcdUsuario.Text <> '' Then
Begin
  xSql := 'SELECT * FROM USERTABLE WHERE ORIGEN = '+QuotedStr(dblcdOfiDes.Text)+' AND USERID = '+QuotedStr(dblcdUsuario.Text);
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSql);
  DM1.cdsQry4.Open;
  If DM1.cdsQry4.RecordCount = 1 Then
     edtUsuario.Text := DM1.cdsQry4.FieldByName('USERNOM').AsString
  Else
     MessageDlg('Usuario incorrecto', mtInformation,[mbOk],0);
End;

end;

procedure TFRepPagBcoNac.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY, VK_TAB, 0);
    end;
end;

procedure TFRepPagBcoNac.FormActivate(Sender: TObject);
begin
dbdtpInicio.SetFocus;
end;

procedure TFRepPagBcoNac.AnadeRegistro();
begin
  cdsreporte.Append;
  cdsreporte.FieldByName('asocodmod').AsString  := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
  cdsreporte.FieldByName('asoapenom').AsString  := Copy(DM1.cdsAsociados.FieldByName('APENOMCLI').AsString,1,50);
  cdsreporte.FieldByName('crefpag').AsString    := DM1.cdsAsociados.FieldByName('FECPAG').AsString;
  cdsreporte.FieldByName('numope').AsString     := DM1.cdsAsociados.FieldByName('NUMDOCCOB').AsString;
  cdsreporte.FieldByName('montot').AsCurrency   := DM1.cdsAsociados.FieldByName('MONPAG').AsCurrency;
  cdsreporte.FieldByName('asoid').AsString      := DM1.cdsAsociados.FieldByName('ASOID').AsString;
  cdsreporte.FieldByName('usuario').AsString    := DM1.cdsAsociados.FieldByName('USUARIO').AsString;
  cdsreporte.Post;
end;

Procedure TFRepPagBcoNac.BitBtn5Click(Sender: TObject);
Var xSql, fechaInicial, fechaFinal: String;
Begin
  fechaInicial := dbdtpInicio.Text;
  fechaFinal   := dbdtpFinal.Text;
  // Todos
  If (rgtipo.ItemIndex = 0) Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, A.APENOMCLI, ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, A.FECPAG, A.IDEPER,'
    +' A.MONPAG, E.DESTIP, C.OFDESID, C.OFDESNOM OFIREG, A.USUREG, D.DESOFI OFIBAN'
    +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, APO110 C, COB_OFI_BAN_NAC D, COB_TIP_DES_CUE_REC E'
    +' WHERE A.FECPAG >= '+QuotedStr(fechaInicial)+' AND A.FECPAG <= '+QuotedStr(fechaFinal);
    If dblcdOfiDes.Text <> '' Then xSql := xSql + ' AND C.OFDESID = '+QuotedStr(dblcdOfiDes.Text);
    If dblcdUsuario.Text <> '' Then xSql := xSql + ' AND A.USUREG = '+QuotedStr(dblcdUsuario.Text);
    xSql := xSql + ' AND A.ASOID = B.ASOID(+) AND A.OFIREG = C.OFDESID(+) AND A.CODOFI = D.CODOFI(+) AND A.CIERRE = E.CODTIP(+)';
  End;
  // Mal descargados
  If (rgtipo.ItemIndex = 1) Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, A.APENOMCLI, ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, A.FECPAG, A.IDEPER,'
    +' A.MONPAG, E.DESTIP, C.OFDESID, C.OFDESNOM OFIREG, A.USUREG, D.DESOFI OFIBAN'
    +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, APO110 C, COB_OFI_BAN_NAC D, COB_TIP_DES_CUE_REC E'
    +' WHERE A.FECPAG >= '+QuotedStr(fechaInicial)+' AND A.FECPAG <= '+QuotedStr(fechaFinal)+' AND NVL(A.CIERRE,''X'') NOT IN (''K'', ''D'',''A'',''C'',''O'', ''R'')';
    If dblcdOfiDes.Text <> '' Then xSql := xSql + ' AND C.OFDESID = '+QuotedStr(dblcdOfiDes.Text);
    If dblcdUsuario.Text <> '' Then xSql := xSql + ' AND A.USUREG = '+QuotedStr(dblcdUsuario.Text);
    xSql := xSql + ' AND A.ASOID = B.ASOID(+) AND A.OFIREG = C.OFDESID(+) AND A.CODOFI = D.CODOFI(+) AND A.CIERRE = E.CODTIP(+)';
  End;
  // Descargados Ok
  If (rgtipo.ItemIndex = 2) Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, A.APENOMCLI, ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, A.FECPAG, A.IDEPER,'
    +' A.MONPAG, E.DESTIP, C.OFDESID, C.OFDESNOM OFIREG, A.USUREG, D.DESOFI OFIBAN'
    +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, APO110 C, COB_OFI_BAN_NAC D, COB_TIP_DES_CUE_REC E'
    +' WHERE A.FECPAG >= '+QuotedStr(fechaInicial)+' AND A.FECPAG <= '+QuotedStr(fechaFinal)+' AND NVL(A.CIERRE,''X'') = ''K''';
    If dblcdOfiDes.Text <> '' Then xSql := xSql + ' AND C.OFDESID = '+QuotedStr(dblcdOfiDes.Text);
    If dblcdUsuario.Text <> '' Then xSql := xSql + ' AND A.USUREG = '+QuotedStr(dblcdUsuario.Text);
    xSql := xSql + ' AND A.ASOID = B.ASOID(+) AND A.OFIREG = C.OFDESID(+) AND A.CODOFI = D.CODOFI(+) AND A.CIERRE = E.CODTIP(+)';
  End;
  // No Registrados
  If (rgtipo.ItemIndex = 3) Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, A.APENOMCLI, ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, A.FECPAG, A.IDEPER,'
    +' A.MONPAG, E.DESTIP, C.OFDESID, C.OFDESNOM OFIREG, A.USUREG, D.DESOFI OFIBAN'
    +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, APO110 C, COB_OFI_BAN_NAC D, COB_TIP_DES_CUE_REC E'
    +' WHERE A.FECPAG >= '+QuotedStr(fechaInicial)+' AND A.FECPAG <= '+QuotedStr(fechaFinal)+' AND NVL(A.CIERRE,''X'') = ''R''';
    If dblcdOfiDes.Text <> '' Then xSql := xSql + ' AND C.OFDESID = '+QuotedStr(dblcdOfiDes.Text);
    If dblcdUsuario.Text <> '' Then xSql := xSql + ' AND A.USUREG = '+QuotedStr(dblcdUsuario.Text);
    xSql := xSql + ' AND A.ASOID = B.ASOID(+) AND A.OFIREG = C.OFDESID(+) AND A.CODOFI = D.CODOFI(+) AND A.CIERRE = E.CODTIP(+)';
  End;
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  If DM1.cdsReporte.RecordCount > 0 Then
  Begin
    If (rgtipo.ItemIndex = 0) Then
    Begin
      pplTituloP.Caption := 'REGISTRO OK DE PAPELETA DE DEPOSITO DE BANCO EN CUENTA RECAUDADORA DEL BANCO DE LA NACION';
      pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
      pplofides.Visible := False; pplofidesT.Visible := False; pplusuario.Visible := False; pplUsuarioT.Visible := False;
    End;
    ppRPagBcos.Print;
    ppRPagBcos.Stop;
  End
  Else
    MessageDlg('No existen registros para imprimir', mtInformation,[mbOk],0);

End;

Procedure TFRepPagBcoNac.BitBtn1Click(Sender: TObject);
Begin
  FRepPagBcoNac.Close;
End;

End.


