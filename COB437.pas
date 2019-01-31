unit COB437;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn,
  wwdbdatetimepicker, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppCtrls, ppPrnabl,
  ppBands, ppCache, DB, DBClient, DBGrids, ppVar, ComCtrls;
type
  TFRepPagBcosCon = class(TForm)
    pnlPagBcos: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    StaticText1: TStaticText;
    fcsbImprime: TfcShapeBtn;
    fcShapeBtn3: TfcShapeBtn;
    dblcdOfiDes: TwwDBLookupComboDlg;
    dblcdUsuario: TwwDBLookupComboDlg;
    edtOfiDes: TEdit;
    edtUsuario: TEdit;
    dbdtpFinal: TwwDBDateTimePicker;
    ppbdePagBcos: TppBDEPipeline;
    ppRPagBcos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppShape3: TppShape;
    ppLine3: TppLine;
    ppDBText6: TppDBText;
    pplTituloP: TppLabel;
    ppShape4: TppShape;
    ppLabel10: TppLabel;
    ppLabel9: TppLabel;
    ppShape5: TppShape;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppShape6: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText9: TppDBText;
    rgtipo: TRadioGroup;
    cdsreporte: TClientDataSet;
    dsreporte: TDataSource;
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
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppLabel18: TppLabel;
    ppLine5: TppLine;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    procedure fcsbImprimeClick(Sender: TObject);
    procedure dblcdOfiDesExit(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure dblcdUsuarioExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure AnadeRegistro();
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FRepPagBcosCon: TFRepPagBcosCon;
implementation
uses COBDM1, COB314;
{$R *.dfm}
procedure TFRepPagBcosCon.fcsbImprimeClick(Sender: TObject);
Var xSql, fechaInicial, fechaFinal: String;
MontoTot:Currency;
begin
  fechaInicial := copy(dbdtpInicio.Text,7,4)+copy(dbdtpInicio.Text,4,2)+copy(dbdtpInicio.Text,1,2);
  fechaFinal   := copy(dbdtpFinal.Text, 7,4)+copy(dbdtpFinal.Text, 4,2)+copy(dbdtpFinal.Text, 1,2);
  If (rgtipo.ItemIndex = 0) Then
  Begin
    xSql := 'SELECT SUBSTR(A.REFERENCIAS,9,10) ASOID,  B.ASOCODMOD, B.ASOAPENOM,'
    +' SUBSTR(A.FECPAG,7,2)||''/''||SUBSTR(A.FECPAG,5,2)||''/''||SUBSTR(A.FECPAG,1,4) CREFPAG, A.CIERRE, '
    +' ''C-00''||A.NUMMOV NUMOPE,  A.IMPDEP,  C.AGENBCODES, ''               '' USUARIO, ''               '' OFIDES, ''                              '' OBS'
    +' FROM COB_CUE_REC_BAN_CON_DET A, APO201 B, COB102 C'
    +' WHERE A.FECPAG >= '+QuotedStr(fechaInicial)+' AND A.FECPAG <= '+QuotedStr(fechaFinal)
    +' AND SUBSTR(A.REFERENCIAS,9,10) = B.ASOID AND A.OFIPAG = C.AGENBCOID(+)'
    +' ORDER BY SUBSTR(A.FECPAG,7,2)||''/''||SUBSTR(A.FECPAG,5,2)||''/''||SUBSTR(A.FECPAG,1,4)';
  End;
  If (rgtipo.ItemIndex = 1) Or (rgtipo.ItemIndex = 3) Then
  Begin
      xSql := 'SELECT  SUBSTR(A.REFERENCIAS,9,10) ASOID,  B.ASOCODMOD, B.ASOAPENOM,'
      +' SUBSTR(A.FECPAG,7,2)||''/''||SUBSTR(A.FECPAG,5,2)||''/''||SUBSTR(A.FECPAG,1,4) CREFPAG, A.CIERRE, '
      +' ''C-00''||A.NUMMOV NUMOPE,  A.IMPDEP,  C.AGENBCODES, ''               '' USUARIO, ''               '' OFIDES, ''                              '' OBS'
      +' FROM COB_CUE_REC_BAN_CON_DET A, APO201 B, COB102 C'
      +' WHERE A.FECPAG >= '+QuotedStr(fechaInicial)+' AND A.FECPAG <= '+QuotedStr(fechaFinal)
      +' AND NVL(A.CIERRE, ''X'') <> ''K'' '
      +' AND SUBSTR(A.REFERENCIAS,9,10) = B.ASOID AND A.OFIPAG = C.AGENBCOID(+)'
      +' ORDER BY SUBSTR(A.FECPAG,7,2)||''/''||SUBSTR(A.FECPAG,5,2)||''/''||SUBSTR(A.FECPAG,1,4)';
  End;
  If (rgtipo.ItemIndex = 2) Then
  Begin
      xSql := 'SELECT  SUBSTR(A.REFERENCIAS,9,10) ASOID,  B.ASOCODMOD, B.ASOAPENOM,'
      +' SUBSTR(A.FECPAG,7,2)||''/''||SUBSTR(A.FECPAG,5,2)||''/''||SUBSTR(A.FECPAG,1,4) CREFPAG, A.CIERRE, '
      +' ''C-00''||A.NUMMOV NUMOPE,  A.IMPDEP,  C.AGENBCODES, ''               '' USUARIO, ''               '' OFIDES, ''                              '' OBS'
      +' FROM COB_CUE_REC_BAN_CON_DET A, APO201 B, COB102 C'
      +' WHERE A.FECPAG >= '+QuotedStr(fechaInicial)+' AND A.FECPAG <= '+QuotedStr(fechaFinal)
      +' AND NVL(A.CIERRE, ''X'') = ''K'' '
      +' AND SUBSTR(A.REFERENCIAS,9,10) = B.ASOID AND A.OFIPAG = C.AGENBCOID(+)'
      +' ORDER BY SUBSTR(A.FECPAG,7,2)||''/''||SUBSTR(A.FECPAG,5,2)||''/''||SUBSTR(A.FECPAG,1,4)';
  End;
  DM1.cdsAsociados.Close;
  DM1.cdsAsociados.DataRequest(xSql);
  DM1.cdsAsociados.Open;
  If DM1.cdsAsociados.RecordCount > 0 Then
  Begin
    // chequeando si es aporte
    DM1.cdsAsociados.First;
    While Not DM1.cdsAsociados.Eof Do
    Begin
      If DM1.cdsAsociados.FieldByName('CIERRE').AsString = 'A' Then
      Begin
        DM1.cdsAsociados.Edit;
        DM1.cdsAsociados.FieldByName('OBS').AsString := 'REGISTRADO COMO APORTE';
      End;
      DM1.cdsAsociados.Next;
    End;
    // Chequeando los registros Ok
    DM1.cdsAsociados.First;
    While Not DM1.cdsAsociados.Eof Do
    Begin
       xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)
              +' AND CREDOCPAG = '+QuotedStr(DM1.cdsAsociados.FieldByName('NUMOPE').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsAsociados.FieldByName('CREFPAG').AsString)
              +' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' GROUP BY USUARIO';
       DM1.cdsQry5.Close;
       DM1.cdsQry5.DataRequest(xSql);
       DM1.cdsQry5.Open;
       DM1.cdsQry5.First;
       MontoTot := 0;
       While Not DM1.cdsQry5.Eof Do
       Begin
         MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
         DM1.cdsQry5.Next;
       End;
       If DM1.cdsAsociados.FieldByName('IMPDEP').AsCurrency = MontoTot Then
       Begin
          DM1.cdsAsociados.Edit;
          DM1.cdsAsociados.FieldByName('OBS').AsString := 'REGISTRO OK';
          DM1.cdsAsociados.FieldByName('USUARIO').AsString := DM1.cdsQry5.FieldByName('USUARIO').AsString;
       End
       Else
       Begin
          If DM1.cdsQry5.FieldByName('MONTOT').AsCurrency <> 0 Then
          Begin
            DM1.cdsAsociados.Edit;
            DM1.cdsAsociados.FieldByName('OBS').AsString := 'MONTO ERRADO : '+CurrToStr(MontoTot) ;
            DM1.cdsAsociados.FieldByName('USUARIO').AsString := DM1.cdsQry5.FieldByName('USUARIO').AsString;
          End;
       End;
       DM1.cdsAsociados.Next;
    End;
    // Chequeando que solo el numero de documento este mal
    DM1.cdsAsociados.First;
    While Not DM1.cdsAsociados.Eof Do
    Begin
      If DM1.cdsAsociados.FieldByName('OBS').AsString = '' Then
      Begin
        xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+' AND CREFPAG = '
        + QuotedStr(DM1.cdsAsociados.FieldByName('CREFPAG').AsString)+' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND'
        +' CCBCOID = ''0011-0661-67-0100024327'' GROUP BY USUARIO';
        DM1.cdsQry5.Close;
        DM1.cdsQry5.DataRequest(xSql);
        DM1.cdsQry5.Open;
        DM1.cdsQry5.First;
        MontoTot := 0;
        While Not DM1.cdsQry5.Eof Do
        Begin
          MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
          DM1.cdsQry5.Next;
        End;
        If DM1.cdsAsociados.FieldByName('IMPDEP').AsCurrency = MontoTot Then
        Begin
            DM1.cdsAsociados.Edit;
            DM1.cdsAsociados.FieldByName('OBS').AsString := 'DOCUMENTO ERRADO';
            DM1.cdsAsociados.FieldByName('USUARIO').AsString := DM1.cdsQry5.FieldByName('USUARIO').AsString;
        End;
      End;
      DM1.cdsAsociados.Next;
    End;
    // Chequeando que solo la fecha este mal
    DM1.cdsAsociados.First;
    While Not DM1.cdsAsociados.Eof Do
    Begin
      If DM1.cdsAsociados.FieldByName('OBS').AsString = '' Then
      Begin
        xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)
               +' AND CREDOCPAG = '+QuotedStr(DM1.cdsAsociados.FieldByName('NUMOPE').AsString)+' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND'
               +' CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' GROUP BY USUARIO';
        DM1.cdsQry5.Close;
        DM1.cdsQry5.DataRequest(xSql);
        DM1.cdsQry5.Open;
        DM1.cdsQry5.First;
        MontoTot := 0;
        While Not DM1.cdsQry5.Eof Do
        Begin
          MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
          DM1.cdsQry5.Next;
        End;
        If DM1.cdsAsociados.FieldByName('IMPDEP').AsCurrency = MontoTot Then
        Begin
            DM1.cdsAsociados.Edit;
            DM1.cdsAsociados.FieldByName('OBS').AsString := 'FECHA ERRADA';
            DM1.cdsAsociados.FieldByName('USUARIO').AsString := DM1.cdsQry5.FieldByName('USUARIO').AsString;
        End;
      End;
      DM1.cdsAsociados.Next;
    End;
    // Chequeando que solo la cuenta este mal
    DM1.cdsAsociados.First;
    While Not DM1.cdsAsociados.Eof Do
    Begin
      If DM1.cdsAsociados.FieldByName('OBS').AsString = '' Then
      Begin
        xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)
               +' AND CREESTID NOT IN (''04'', ''13'') AND CREDOCPAG = '+QuotedStr(DM1.cdsAsociados.FieldByName('NUMOPE').AsString)
               +' AND CREFPAG = '+ QuotedStr(DM1.cdsAsociados.FieldByName('CREFPAG').AsString)+' GROUP BY USUARIO';
        DM1.cdsQry5.Close;
        DM1.cdsQry5.DataRequest(xSql);
        DM1.cdsQry5.Open;
        DM1.cdsQry5.First;
        MontoTot := 0;
        While Not DM1.cdsQry5.Eof Do
        Begin
          MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
          DM1.cdsQry5.Next;
        End;
        If DM1.cdsAsociados.FieldByName('IMPDEP').AsCurrency = MontoTot Then
        Begin
            DM1.cdsAsociados.Edit;
            DM1.cdsAsociados.FieldByName('OBS').AsString := 'CUENTA ERRADA';
            DM1.cdsAsociados.FieldByName('USUARIO').AsString := DM1.cdsQry5.FieldByName('USUARIO').AsString;
        End;
      End;
      DM1.cdsAsociados.Next;
    End;
    // Poniendo flag de NO REGISTRADO
    DM1.cdsAsociados.First;
    While Not DM1.cdsAsociados.Eof Do
    Begin
      xSql := 'SELECT B.OFDESNOM FROM USERTABLE A, APO110 B WHERE A.USERID = '+QuotedStr(DM1.cdsAsociados.FieldByName('USUARIO').AsString)
      +' AND A.ORIGEN = B.OFDESID';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsAsociados.Edit;
      If DM1.cdsQry5.RecordCount = 1 Then
         DM1.cdsAsociados.FieldByName('OFIDES').AsString := DM1.cdsQry5.FieldByName('OFDESNOM').AsString;
      If DM1.cdsAsociados.FieldByName('OBS').AsString = '' Then
      Begin
         DM1.cdsAsociados.FieldByName('OBS').AsString := 'NO REGISTRADO';
      End;
      DM1.cdsAsociados.Next;
    End;
//  INFORMACION A IMPRIMIR
//  Todos los registros
    If (dblcdOfiDes.Text = '') And (dblcdUsuario.Text = '') Then
    Begin
      If rgtipo.ItemIndex = 0 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplTituloP.Caption := 'DEPOSITOS EN CUENTA RECAUDADORA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
        pplofides.Visible := False; pplofidesT.Visible := False; pplusuario.Visible := False; pplUsuarioT.Visible := False;
      End;
      // Registros Errados
      If rgtipo.ItemIndex = 1 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If (Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) <> 'REG') And  (Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) <> 'NO ') Then
             AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplTituloP.Caption := 'INCONSISTENCIA DE REGISTRO DE PAPELETA DE DEPOSITO DE BANCO EN CUENTA RECAUDADORA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
        pplofides.Visible := False; pplofidesT.Visible := False; pplusuario.Visible := False; pplUsuarioT.Visible := False;
      End;
      // Registros Ok
      If rgtipo.ItemIndex = 2 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) = 'REG' Then
             AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplTituloP.Caption := 'REGISTRO OK DE PAPELETA DE DEPOSITO DE BANCO EN CUENTA RECAUDADORA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
        pplofides.Visible := False; pplofidesT.Visible := False; pplusuario.Visible := False; pplUsuarioT.Visible := False;
      End;
      // No Registrados
      If rgtipo.ItemIndex = 3 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) = 'NO ' Then
            AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplofides.Visible := False;  pplofidesT.Visible := False; pplusuario.Visible := False; pplUsuarioT.Visible := False;
        pplTituloP.Caption := 'PAPELETA DE DEPOSITO NO REGISTRADAS EN EL SISTEMA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
      End;
      If cdsreporte.RecordCount  > 0 Then
      Begin
        ppRPagBcos.Print;
        ppRPagBcos.Stop;
      End
      Else MessageDlg('No existen registros para imprimir', mtInformation,[mbOk],0);
    End;
//  Registros con solo oficina
    If (dblcdOfiDes.Text <> '') And (dblcdUsuario.Text = '') Then
    Begin
      If rgtipo.ItemIndex = 0 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If edtOfiDes.Text = DM1.cdsAsociados.FieldByName('OFIDES').AsString Then
             AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplTituloP.Caption := 'DEPOSITOS EN CUENTA RECAUDADORA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
        pplofides.Visible := True; pplofidesT.Visible := True; pplusuario.Visible := False; pplUsuarioT.Visible := False;
      End;
      // Registros Errados
      If rgtipo.ItemIndex = 1 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If (Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) <> 'REG')
          And(Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) <> 'NO ')
          And (edtOfiDes.Text = DM1.cdsAsociados.FieldByName('OFIDES').AsString) Then
             AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplTituloP.Caption := 'INCONSISTENCIA DE REGISTRO DE PAPELETA DE DEPOSITO DE BANCO EN CUENTA RECAUDADORA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
        pplofides.Visible := True; pplofidesT.Visible := True; pplusuario.Visible := False; pplUsuarioT.Visible := False;
      End;
      // Registros Ok
      If rgtipo.ItemIndex = 2 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If (Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) = 'REG')
          And (edtOfiDes.Text = DM1.cdsAsociados.FieldByName('OFIDES').AsString) Then
            AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplTituloP.Caption := 'REGISTRO OK DE PAPELETA DE DEPOSITO DE BANCO EN CUENTA RECAUDADORA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
        pplofides.Visible := True; pplofidesT.Visible := True; pplusuario.Visible := False; pplUsuarioT.Visible := False;
      End;
      // No Registrados
      If rgtipo.ItemIndex = 3 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If (Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) = 'NO ') Then
            AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplofides.Visible   := False;
        pplofidesT.Visible  := False;
        pplusuario.Visible  := False;
        pplUsuarioT.Visible := False;
        pplTituloP.Caption := 'PAPELETA DE DEPOSITO NO REGISTRADAS EN EL SISTEMA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
      End;
      pplofides.Caption := edtOfiDes.Text;
      If cdsreporte.RecordCount > 0 Then
      Begin
        ppRPagBcos.Print;
        ppRPagBcos.Stop;
      End
      Else MessageDlg('No existen registros para imprimir', mtInformation,[mbOk],0);
    End;
//  Registros Oficina y Usuario
    If (dblcdOfiDes.Text <> '') And (dblcdUsuario.Text <> '') Then
    Begin
      If rgtipo.ItemIndex = 0 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If (edtOfiDes.Text = DM1.cdsAsociados.FieldByName('OFIDES').AsString)
          And (dblcdUsuario.Text = DM1.cdsAsociados.FieldByName('USUARIO').AsString) Then
             AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplTituloP.Caption  := 'DEPOSITOS EN CUENTA RECAUDADORA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
        pplofides.Visible   := True;
        pplofidesT.Visible  := True;
        pplusuario.Visible  := True;
        pplUsuarioT.Visible := True;
      End;
      // Registros Errados
      If rgtipo.ItemIndex = 1 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If (Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) <> 'REG')
          And  (Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) <> 'NO ')
          And (edtOfiDes.Text = DM1.cdsAsociados.FieldByName('OFIDES').AsString)
          And (dblcdUsuario.Text = DM1.cdsAsociados.FieldByName('USUARIO').AsString) Then
             AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplofides.Visible   := True;
        pplofidesT.Visible  := True;
        pplusuario.Visible  := True;
        pplUsuarioT.Visible := True;
        pplTituloP.Caption  := 'INCONSISTENCIA DE REGISTRO DE PAPELETA DE DEPOSITO DE BANCO EN CUENTA RECAUDADORA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
      End;
      // Registros Ok
      If rgtipo.ItemIndex = 2 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If (Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) = 'REG')
          And (edtOfiDes.Text = DM1.cdsAsociados.FieldByName('OFIDES').AsString)
          And (dblcdUsuario.Text = DM1.cdsAsociados.FieldByName('USUARIO').AsString) Then
            AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplofides.Visible   := True;
        pplofidesT.Visible  := True;
        pplusuario.Visible  := True;
        pplUsuarioT.Visible := True;
        pplTituloP.Caption  := 'REGISTRO OK DE PAPELETA DE DEPOSITO DE BANCO EN CUENTA RECAUDADORA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
      End;
      // No Registrados
      If rgtipo.ItemIndex = 3 Then
      Begin
        cdsreporte.EmptyDataSet;
        DM1.cdsAsociados.First;
        While Not DM1.cdsAsociados.Eof Do
        Begin
          If (Copy(DM1.cdsAsociados.FieldByName('OBS').AsString,1,3) = 'NO ') Then
            AnadeRegistro();
          DM1.cdsAsociados.Next;
        End;
        pplofides.Visible   := False;
        pplofidesT.Visible  := False;
        pplusuario.Visible  := False;
        pplUsuarioT.Visible := False;
        pplTituloP.Caption  := 'PAPELETA DE DEPOSITO NO REGISTRADAS EN EL SISTEMA';
        pplTituloS.Caption  := ' DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
      End;
      pplofides.Caption  := edtOfiDes.Text;
      pplusuario.Caption := edtUsuario.Text;
      If cdsreporte.RecordCount > 0 Then
      Begin
        ppRPagBcos.Print;
        ppRPagBcos.Stop;
      End
      Else MessageDlg('No existen registros para imprimir', mtInformation,[mbOk],0);
    End;
  End
  Else
    MessageDlg('No existen registros para imprimir', mtInformation,[mbOk],0);
End;

procedure TFRepPagBcosCon.dblcdOfiDesExit(Sender: TObject);
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

procedure TFRepPagBcosCon.fcShapeBtn3Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepPagBcosCon.dblcdUsuarioExit(Sender: TObject);
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

procedure TFRepPagBcosCon.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY, VK_TAB, 0);
    end;
end;

procedure TFRepPagBcosCon.FormActivate(Sender: TObject);
begin
FRepPagBcosCon.Left := 230;
FRepPagBcosCon.Top  := 100;
dbdtpInicio.SetFocus;
end;

procedure TFRepPagBcosCon.AnadeRegistro();
begin
  cdsreporte.Append;
  cdsreporte.FieldByName('asocodmod').AsString  := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
  cdsreporte.FieldByName('asoapenom').AsString  := Copy(DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString,1,50);
  cdsreporte.FieldByName('crefpag').AsString    := DM1.cdsAsociados.FieldByName('CREFPAG').AsString;
  cdsreporte.FieldByName('numope').AsString     := DM1.cdsAsociados.FieldByName('NUMOPE').AsString;
  cdsreporte.FieldByName('montot').AsCurrency   := DM1.cdsAsociados.FieldByName('IMPDEP').AsCurrency;
  cdsreporte.FieldByName('asoid').AsString      := DM1.cdsAsociados.FieldByName('ASOID').AsString;
  cdsreporte.FieldByName('obs').AsString        := DM1.cdsAsociados.FieldByName('OBS').AsString;
  cdsreporte.FieldByName('agenbcodes').AsString := DM1.cdsAsociados.FieldByName('AGENBCODES').AsString;
  cdsreporte.FieldByName('usuario').AsString    := DM1.cdsAsociados.FieldByName('USUARIO').AsString;
  cdsreporte.FieldByName('ofides').AsString     := DM1.cdsAsociados.FieldByName('OFIDES').AsString;
  cdsreporte.Post;
end;

end.


