// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Cobranzas
// Unidad                    : COB314
// Formulario                : FRepPagBcoCre
// Fecha de Creación         : 09/03/2018
// Autor                     : Equipo Sistemas
// Objetivo                  : Recaudadora Banco de Crédito

// HPC_201806_COB      : Exceso en Cronogramas Cerrados (ONP, BANCO)

unit COB314;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn,
  wwdbdatetimepicker, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppCtrls, ppPrnabl,
  ppBands, ppCache, DB, DBClient, DBGrids, ppVar, ComCtrls, Buttons,
  ppParameter;
type
  TFRepPagBcoCre = class(TForm)
    pnlPagBcos: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    StaticText1: TStaticText;
    dblcdOfiDes: TwwDBLookupComboDlg;
    dblcdUsuario: TwwDBLookupComboDlg;
    edtOfiDes: TEdit;
    edtUsuario: TEdit;
    dbdtpFinal: TwwDBDateTimePicker;
    ppbdePagBcos: TppBDEPipeline;
    ppRPagBcos: TppReport;
    rgtipo: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    ppParameterList1: TppParameterList;
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
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FRepPagBcoCre: TFRepPagBcoCre;
implementation
uses COBDM1;
{$R *.dfm}

procedure TFRepPagBcoCre.dblcdOfiDesExit(Sender: TObject);
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

procedure TFRepPagBcoCre.fcShapeBtn3Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepPagBcoCre.dblcdUsuarioExit(Sender: TObject);
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

procedure TFRepPagBcoCre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY, VK_TAB, 0);
    end;
end;

procedure TFRepPagBcoCre.FormActivate(Sender: TObject);
begin
dbdtpInicio.SetFocus;
end;

procedure TFRepPagBcoCre.BitBtn5Click(Sender: TObject);
Var xSql, fechaInicial, fechaFinal: String;
begin
  fechaInicial := Copy(dbdtpInicio.Text,7,4)+Copy(dbdtpInicio.Text,4,2)+Copy(dbdtpInicio.Text,1,2);
  fechaFinal   := Copy(dbdtpFinal.Text,7,4)+Copy(dbdtpFinal.Text,4,2)+Copy(dbdtpFinal.Text,1,2);
  // Todos
  If (rgtipo.ItemIndex = 0) Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, B.ASOAPENOMDNI, ''OP-''||NUMOPE DOCPAG, TO_DATE(A.FECPAG,''YYYYMMDD'') FECPAG ,'
    +' A.NUMOPE, A.MONTOT, E.DESTIP, C.OFDESID, C.OFDESNOM OFIREG, A.USUREG, D.AGENBCODES OFIBAN'
    +' FROM COB348 A, APO201 B, APO110 C, COB102 D, COB_TIP_DES_CUE_REC E'
    +' WHERE A.FECPRO >= '+QuotedStr(fechaInicial)+' AND A.FECPRO <= '+QuotedStr(fechaFinal);
    If dblcdOfiDes.Text <> '' Then xSql := xSql + ' AND C.OFDESID = '+QuotedStr(dblcdOfiDes.Text);
    If dblcdUsuario.Text <> '' Then xSql := xSql + ' AND A.USUREG = '+QuotedStr(dblcdUsuario.Text);
    xSql := xSql + ' AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND A.OFIREG = C.OFDESID(+) AND A.CODOFI = D.AGENBCOID(+) AND A.CIERRE = E.CODTIP(+)'
    +' ORDER BY A.MONTOT';
  End;
  // Mal descargados
  If (rgtipo.ItemIndex = 1) Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, B.ASOAPENOMDNI, ''OP-''||NUMOPE DOCPAG, TO_DATE(A.FECPAG,''YYYYMMDD'') FECPAG, A.NUMOPE, A.MONTOT,'
    +' E.DESTIP, C.OFDESID, C.OFDESNOM OFIREG, A.USUREG, D.AGENBCODES OFIBAN'
    +' FROM COB348 A, APO201 B, APO110 C, COB102 D, COB_TIP_DES_CUE_REC E'
    +' WHERE A.FECPRO >= '+QuotedStr(fechaInicial)+' AND A.FECPRO <= '+QuotedStr(fechaFinal)+' AND NVL(A.CIERRE,''X'') NOT IN (''K'', ''D'',''A'',''C'',''O'', ''R'')';
    If dblcdOfiDes.Text <> '' Then xSql := xSql + ' AND C.OFDESID = '+QuotedStr(dblcdOfiDes.Text);
    If dblcdUsuario.Text <> '' Then xSql := xSql + ' AND A.USUREG = '+QuotedStr(dblcdUsuario.Text);
    xSql := xSql + ' AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND A.OFIREG = C.OFDESID(+) AND A.CODOFI = D.AGENBCOID(+) AND A.CIERRE = E.CODTIP(+)'
    +' ORDER BY A.MONTOT';
  End;
  // Descargados Ok
  If (rgtipo.ItemIndex = 2) Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, B.ASOAPENOMDNI, ''OP-''||NUMOPE DOCPAG, TO_DATE(A.FECPAG,''YYYYMMDD'') FECPAG, A.NUMOPE, A.MONTOT, E.DESTIP, C.OFDESID, C.OFDESNOM OFIREG, A.USUREG, D.AGENBCODES OFIBAN'
    +' FROM COB348 A, APO201 B, APO110 C, COB102 D, COB_TIP_DES_CUE_REC E'
    +' WHERE A.FECPRO >= '+QuotedStr(fechaInicial)+' AND A.FECPRO <= '+QuotedStr(fechaFinal)+' AND NVL(A.CIERRE,''X'') = ''K''';
    If dblcdOfiDes.Text <> '' Then xSql := xSql + ' AND C.OFDESID = '+QuotedStr(dblcdOfiDes.Text);
    If dblcdUsuario.Text <> '' Then xSql := xSql + ' AND A.USUREG = '+QuotedStr(dblcdUsuario.Text);
    xSql := xSql + ' AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND A.OFIREG = C.OFDESID(+) AND A.CODOFI = D.AGENBCOID(+) AND A.CIERRE = E.CODTIP(+)'
    +' ORDER BY A.MONTOT';
  End;
  // No Registrados
  If (rgtipo.ItemIndex = 3) Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, B.ASOAPENOMDNI, ''OP-''||NUMOPE DOCPAG, TO_DATE(A.FECPAG,''YYYYMMDD'') FECPAG, A.NUMOPE, A.MONTOT,'
    +' E.DESTIP, C.OFDESID, C.OFDESNOM OFIREG, A.USUREG, D.AGENBCODES OFIBAN'
    +' FROM COB348 A, APO201 B, APO110 C, COB102 D, COB_TIP_DES_CUE_REC E'
    +' WHERE A.FECPRO >= '+QuotedStr(fechaInicial)+' AND A.FECPRO <= '+QuotedStr(fechaFinal)+' AND NVL(A.CIERRE,''X'') = ''R''';
    If dblcdOfiDes.Text <> '' Then xSql := xSql + ' AND C.OFDESID = '+QuotedStr(dblcdOfiDes.Text);
    If dblcdUsuario.Text <> '' Then xSql := xSql + ' AND A.USUREG = '+QuotedStr(dblcdUsuario.Text);
    xSql := xSql + 'AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND A.OFIREG = C.OFDESID(+) AND A.CODOFI = D.AGENBCOID(+) AND A.CIERRE = E.CODTIP(+)'
    +' ORDER BY A.MONTOT';
  End;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  // Cronogramas Cerrados
  If (rgtipo.ItemIndex = 4) Then
  Begin
    xSql :='SELECT A.ASOCODMOD,A.ASOAPENOM ASOAPENOMDNI,A.NRO_OPERACION DOCPAG,TO_CHAR(A.FEC_OPERACION, ''YYYYMMDD'') FECPAG, '
          +'SUBSTR(A.NRO_OPERACION,4) NUMOPE, A.IMPORTE MONTOT,''Cronogramas Cerrados'' DESTIP, B.USUREG,C.AGENBCODES OFIBAN, '
          +'D.OFDESID, D.OFDESNOM OFIREG '
          +'FROM COB_DES_CRO_CERRADO_DET A,COB348 B,COB102 C,APO110 D '
          +'WHERE '
          +'B.NUMOPE = SUBSTR(A.NRO_OPERACION,5) '
          +'AND B.FECPAG = TO_CHAR(A.FEC_OPERACION, ''YYYYMMDD'') '
          +'AND A.FORPAGID = ''03'' '
          +'AND B.FECPAG >= '+QuotedStr(fechaInicial)+' AND B.FECPAG <= '+QuotedStr(fechaFinal);
    If dblcdOfiDes.Text <> '' Then xSql := xSql + ' AND D.OFDESID = '+QuotedStr(dblcdOfiDes.Text);
    If dblcdUsuario.Text <> '' Then xSql := xSql + ' AND B.USUREG = '+QuotedStr(dblcdUsuario.Text);
    xSql := xSql + 'AND B.CODOFI = C.AGENBCOID (+) AND B.OFIREG = D.OFDESID(+) AND B.CODOFI = C.AGENBCOID(+) '
                 +' ORDER BY A.IMPORTE';
  End;
// Fin HPC_201806_COB

  If dblcdUsuario.Text = '' Then
  Begin
   pplusuario.Visible  := False;
   pplUsuarioT.Visible := False;
  End
  Else
  Begin
    pplusuario.Visible  := True;
    pplUsuarioT.Visible := True;
  End;

  If dblcdOfiDes.Text = '' Then
  Begin
    pplofides.Visible := False;
    pplofidesT.Visible := False;
  End
  Else
  Begin
    pplofides.Visible := True;
    pplofidesT.Visible := True;
  End;

  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  If DM1.cdsReporte.RecordCount > 0 Then
  Begin
    If (rgtipo.ItemIndex = 0) Then pplTituloP.Caption := 'DEPOSITOS EN CUENTA RECAUDADORA DEL BANCO DE CREDITO (CUOTAS DE CREDITOS)';
    If (rgtipo.ItemIndex = 1) Then pplTituloP.Caption := 'DEPOSITOS REGISTRADOS "ERRADOS" EN CUENTA RECAUDADORA DEL BANCO DE CREDITO (CUOTAS DE CREDITOS)';
    If (rgtipo.ItemIndex = 2) Then pplTituloP.Caption := 'DEPOSITOS "REGISTRADOS OK" EN CUENTA RECAUDADORA DEL BANCO DE CREDITO (CUOTAS DE CREDITOS)';
    If (rgtipo.ItemIndex = 3) Then pplTituloP.Caption := 'DEPOSITOS "NO REGISTRADOS" EN CUENTA RECAUDADORA DEL BANCO DE CREDITO (CUOTAS DE CREDITOS)';
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    If (rgtipo.ItemIndex = 4) Then pplTituloP.Caption := 'DEPOSITOS "CRONOGRAMAS CERRADOS" EN CUENTA RECAUDADORA DEL BANCO DE CREDITO (CUOTAS DE CREDITOS)';
// Fin HPC_201806_COB
    pplTituloS.Caption  := 'SEGUN FECHA DE PROCESO DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
    ppRPagBcos.Print;
    ppRPagBcos.Stop;
  End
  Else
    MessageDlg('No existen registros para imprimir', mtInformation,[mbOk],0);
end;

procedure TFRepPagBcoCre.BitBtn1Click(Sender: TObject);
begin
  FRepPagBcoCre.Close;
end;

end.




