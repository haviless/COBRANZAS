unit COB907;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Wwdbdlg, wwdblook, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppVar, ppPrnabl, ppCtrls, ppBands, ppCache, ppStrtch, ppMemo;

type
  TfDevoluciones = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitSalir: TBitBtn;
    BitGrabar: TBitBtn;
    Label1: TLabel;
    DtpFecDev: TDateTimePicker;
    Label2: TLabel;
    mObservacion: TMemo;
    Label11: TLabel;
    DBLkuCTipDes: TwwDBLookupCombo;
    EdtTipDes: TEdit;
    DBLkCDAgencias: TwwDBLookupComboDlg;
    EdtCodAgen: TEdit;
    EdtDepGir: TEdit;
    lblAgencia: TLabel;
    EdtCtaAhorros: TEdit;
    lblCtaAhorros: TLabel;
    Label3: TLabel;
    EdtSitCta: TEdit;
    Label4: TLabel;
    EdtNroDev: TEdit;
    Panel1: TPanel;
    lblMonDev: TLabel;
    BitPrint: TBitBtn;
    grpDetDev: TGroupBox;
    dtgExcesos: TwwDBGrid;
    ppDBDevol: TppDBPipeline;
    ppRepDevol: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    xxx: TppLabel;
    ppp: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLblNomGen: TppLabel;
    ppLblCodMod: TppLabel;
    ppLblFecDoc: TppLabel;
    ppLblDpto: TppLabel;
    ppLblCodPag: TppLabel;
    ppLblUproc: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLblDesem: TppLabel;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLblMonDev: TppLabel;
    ppLblUsuario: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel21: TppLabel;
    ppMeses: TppMemo;
    ppLabel12: TppLabel;
    ppLabel20: TppLabel;
    PPLblDni: TppLabel;
    lblRotPag: TppLabel;
    lblPagEn: TppLabel;
    grpPagar: TGroupBox;
    edtOfDesId: TEdit;
    edtOfDesNom: TEdit;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure DBLkuCTipDesChange(Sender: TObject);
    procedure DBLkuCTipDesKeyPress(Sender: TObject; var Key: Char);
    procedure DBLkCDAgenciasChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitPrintClick(Sender: TObject);
  private
    { Private declarations }
    xRecDev:String;
    function GnrCDev():String;
    procedure GrabaDev(xAsoId, xNroDev, xFrmDes : String);
    function VrfGrabaDev(xFrmDes, xSitCta : String):Char;
  public
    { Public declarations }
  end;

var
  fDevoluciones: TfDevoluciones;

implementation

uses COBDM1, COB904;

{$R *.dfm}

procedure TfDevoluciones.BitSalirClick(Sender: TObject);
begin
 DM1.cdsAgenciaBco.Close;
 DM1.cdsCambios.Close;
 Close;
end;

procedure TfDevoluciones.BitGrabarClick(Sender: TObject);
Var xFrmDes, xRecDev, xSitCta,xAsoId:String;
    Boton:Integer;
begin

Boton := Application.MessageBox ('¿Está Seguro Que Desea Grabar Esta Devolución',
                              'Devoluciones',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin
     xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
     xSitCta:= DM1.cdsAso.FieldByName('SITCTA').AsString;
     If Length(Trim(EdtTipDes.Text))=0 Then
        Begin
           MessageDlg(' Debe Seleccionar Una Forma De Desembolso ', mtError,[mbOk],0);
           DBLkuCTipDes.SetFocus;
           Exit;
        End;
     xFrmDes:=Trim(DBLkuCTipDes.Text);
     If VrfGrabaDev(xFrmDes,xSitCta)='S' Then
        Begin
           xRecDev:=GnrCDev;
           If Length(Trim(xRecDev))=0 Then
           Begin
             Screen.Cursor:=crDefault;
             MessageDlg(' <<<  A T E N C I O N  >>>   NO SE GENERO CORRELATIVO COMUNIQUESE CON SISTEMAS !!!!!  ', mtError,[mbOk],0);
             Exit;
           End;
           EdtNroDev.Text:=xRecDev;
           GrabaDev(xAsoId,xRecDev,xFrmDes);
           DM1.cdsAgenciaBco.Close;
           DBLkuCTipDes.Enabled :=False; DBLkCDAgencias.Enabled:=False; BitGrabar.Enabled:=False; mObservacion.Enabled :=False;
           BitPrint.Enabled:=True;
        End
     Else
        Begin
           MessageDlg(' Verifique Algunos Faltan Datos, Para Grabar La Devolución ', mtError,[mbOk],0);
           BitPrint.Enabled:=False;
           Exit;
        End;
   End;
end;

procedure TfDevoluciones.DBLkuCTipDesChange(Sender: TObject);
begin
   If DM1.cdsFormPago.Locate('TIPDESEID',VarArrayof([DBLkuCTipDes.text]),[]) Then
      Begin
        EdtTipDes.Text  := DM1.cdsFormPago.fieldbyname('TIPDESEABR').AsString ;
        If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString='04' Then
           Begin
             lblCtaAhorros.Enabled := False; lblAgencia.Enabled := False;
             EdtCodAgen.Text  :='';  EdtDepGir.Text   :='';  DBLkCDAgencias.Text :='';  DBLkCDAgencias.Enabled := False;
             EdtCtaAhorros.Text := '';  EdtSitCta.Text := '';
           End;
        If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString='05' Then
           Begin
             If DM1.xSgr='1' Then Begin
             lblAgencia.Enabled := True; DBLkCDAgencias.Enabled := True; End;
             lblCtaAhorros.Enabled := False; EdtCtaAhorros.Text := '';  EdtSitCta.Text := '';
           end;

        If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString='06' Then
           Begin
             lblCtaAhorros.Enabled := True; lblAgencia.Enabled := False;
             EdtCodAgen.Text  :='';  EdtDepGir.Text   :='';  DBLkCDAgencias.Text :='';  DBLkCDAgencias.Enabled := False;
             EdtCtaAhorros.Text := DM1.cdsAso.FieldByName('ASONCTA').AsString;
             EdtSitCta.Text := DM1.CrgDescrip('SITCTAID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)),'COB103','SITCTADES');
           End

      End
   Else
      Begin
        if Length(DBLkuCTipDes.Text) <> 2 then
           Begin
              Beep;
              EdtTipDes.Text  :='';
           End;
      End

end;

procedure TfDevoluciones.DBLkuCTipDesKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfDevoluciones.DBLkCDAgenciasChange(Sender: TObject);
begin
   If DM1.cdsAgenciaBco.Locate('AGENBCODES',VarArrayof([DBLkCDAgencias.text]),[]) Then
      Begin
        EdtCodAgen.Text  := DM1.cdsAgenciaBco.fieldbyname('AGENBCOID').AsString ;
        EdtDepGir.Text   := DM1.cdsAgenciaBco.fieldbyname('DPTOID').AsString+'-'+DM1.cdsAgenciaBco.fieldbyname('DPTODES').AsString ;
      End
   Else
      Begin
        if Length(DBLkCDAgencias.Text) =0 then
           Begin
              Beep;
              EdtCodAgen.Text  :=''; EdtDepGir.Text   :='';
           End;
      End

end;

procedure TfDevoluciones.FormActivate(Sender: TObject);
Var xExceso,xAplicar,xAplicado:Currency ;
    xAsoId, xSQL:String;

begin

If DM1.xSgr<>'0' Then
   Begin
    DBLkuCTipDes.Enabled :=True;
    BitPrint.Enabled:=False;
    xAsoId    :=DM1.cdsAso.FieldByName('ASOID').AsString;
    lblMonDev.Caption := FormatFloat('###,###.#0',fNPago.CalcExceso(xAsoId,''));
    DtpFecDev.Date:= DM1.FechaSys;
    xExceso:=0; xAplicar:=0; xAplicado:=0;
    DM1.cdsQry.Close;
    xSQL:='SELECT ASOID,CREMTOCOB,CREMTOEXC,CREAPLEXC,NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) AS PORAPLICA FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREMTOEXC>CREAPLEXC AND CREESTID NOT IN (''04'',''13'') ';
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount > 0 Then
       Begin
          DM1.cdsQry.First;
          While Not DM1.cdsQry.Eof Do
          Begin
            xExceso  := xExceso   + DM1.cdsQry.fieldbyname('CREMTOEXC').AsCurrency;
            xAplicar := xAplicar  + DM1.cdsQry.fieldbyname('CREAPLEXC').AsCurrency;
            xAplicado:= xAplicado + DM1.cdsQry.fieldbyname('PORAPLICA').AsCurrency;
            DM1.cdsQry.Next;
          End;
       End
    Else
       Begin
          xExceso:= 0 ; xAplicar := 0 ; xAplicado := 0;
       End;

    DM1.cdsQry.Close;
    dtgExcesos.ColumnByName('CREFPAG').FooterValue :='Totales : ';
    dtgExcesos.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(xExceso,ffNumber, 10, 2);
    dtgExcesos.ColumnByName('CREAPLEXC').FooterValue := FloatToStrF(xAplicar,ffNumber, 10, 2);
    dtgExcesos.ColumnByName('PORAPLICA').FooterValue := FloatToStrF(xAplicado,ffNumber, 10, 2);
    DtpFecDev.Enabled := False;
    BitGrabar.Enabled:=True;
    mObservacion.Enabled :=True;
    DBLkuCTipDes.SetFocus;
   End
Else



end;

procedure TfDevoluciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

function TfDevoluciones.GnrCDev: String;
Var xCorrAct:Integer;
    xCorrDev,xSQL:String;
begin
xSQL:='SELECT CREAREA,TIPO,CANCUO FROM CRE206 WHERE CREAREA=''COB'' AND TIPO=''D'' AND CORREANO='+QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)),7,4))+' AND CANCUO IS NOT NULL';
DM1.cdsFEfec.Close;
DM1.cdsFEfec.DataRequest(xSQL);
DM1.cdsFEfec.Open;
If DM1.cdsFEfec.RecordCount=1 Then
   Begin
     xCorrAct:=StrToInt(DM1.cdsFEfec.fieldbyname('CANCUO').AsString) + 1;
     xCorrDev:=Format('%.10d',[xCorrAct]);
     DM1.cdsFEfec.Edit;
     DM1.cdsFEfec.fieldbyname('CANCUO').AsString:=xCorrDev;
     DM1.cdsFEfec.ApplyUpdates(0);
     DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL);  DM1.cdsQry.Open;
     If Trim(xCorrDev)>Trim(DM1.cdsQry.fieldbyname('CANCUO').AsString) Then xCorrDev:='';
     DM1.cdsQry.Close;

     Result:=Copy(xCorrDev,5,6);
   End;
DM1.cdsFEfec.Close;
end;

procedure TfDevoluciones.GrabaDev(xAsoId, xNroDev, xFrmDes: String);
Var xSQL,tSql:String;
begin
xSql:='SELECT * FROM MDEVCAB WHERE ASOID='+QuotedStr(Trim(xAsoId));
DM1.cdsDevolucion.Close;
DM1.cdsDevolucion.DataRequest(xSql);
DM1.cdsDevolucion.Open;
DM1.cdsDevolucion.Insert;
DM1.cdsDevolucion.FieldByName('ASOID').AsString :=xAsoId;
DM1.cdsDevolucion.FieldByName('ASOCODMOD').AsString :=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
DM1.cdsDevolucion.FieldByName('ASOCODAUX').AsString :=DM1.cdsAso.FieldByName('ASOCODAUX').AsString;
DM1.cdsDevolucion.FieldByName('ASOAPENOM').AsString :=DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
DM1.cdsDevolucion.FieldByName('ASONUMDEV').AsString :=xNroDev;
DM1.cdsDevolucion.FieldByName('ASOANODEV').AsString :=Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)),7,4);
DM1.cdsDevolucion.FieldByName('ASOFECDEV').AsDateTime :=DM1.FechasOutPut(DtpFecDev.Date);
DM1.cdsDevolucion.FieldByName('ASOMONDEV').AsCurrency :=DM1.Valores(lblMonDev.Caption);
DM1.cdsDevolucion.FieldByName('USEID').AsString :=DM1.cdsAso.FieldByName('USEID').AsString;
DM1.cdsDevolucion.FieldByName('UPROID').AsString :=DM1.cdsAso.FieldByName('UPROID').AsString;
DM1.cdsDevolucion.FieldByName('UPAGOID').AsString :=DM1.cdsAso.FieldByName('UPAGOID').AsString;
DM1.cdsDevolucion.FieldByName('DPTOID').AsString :=DM1.cdsAso.FieldByName('DPTOID').AsString;
DM1.cdsDevolucion.FieldByName('ASODNI').AsString :=DM1.cdsAso.FieldByName('ASODNI').AsString;
DM1.cdsDevolucion.FieldByName('TIPDESEID').AsString :=xFrmDes;
DM1.cdsDevolucion.FieldByName('CREESTID').AsString :='99';
DM1.cdsDevolucion.FieldByName('CREESTADO').AsString :='DEVOLUCION';
DM1.cdsDevolucion.FieldByName('FORPAGID').AsString:='10';
DM1.cdsDevolucion.FieldByName('ASOOBSERV').AsString :=Trim(mObservacion.Lines.Text);
If xFrmDes='06' Then
   Begin
     DM1.cdsDevolucion.FieldByName('ASOCTAAHO').AsString:=Trim(EdtCtaAhorros.Text); DM1.cdsDevolucion.FieldByName('ASOSITCTA').AsString:=DM1.cdsAso.FieldByName('SITCTA').AsString;
   End
Else If xFrmDes='05' Then
        Begin
           DM1.cdsDevolucion.FieldByName('LUGGIRO').AsString:=Trim(DBLkCDAgencias.Text);
           DM1.cdsDevolucion.FieldByName('CODGIRO').AsString:=Trim(EdtCodAgen.Text);
           DM1.cdsDevolucion.FieldByName('DEPGIRO').AsString:=Copy(Trim(EdtDepGir.Text),1,2);
        End;
DM1.cdsDevolucion.FieldByName('USUARIO').AsString :=DM1.wUsuario;
DM1.cdsDevolucion.FieldByName('FREG').AsDateTime :=DM1.FechaSys;
tSql:='SELECT * FROM MDEVDET WHERE ASOID='+QuotedStr(Trim(xAsoId));
DM1.cdsDevolucionCob.Close;
DM1.cdsDevolucionCob.DataRequest(tSql);
DM1.cdsDevolucionCob.Open;
DM1.cdsCambios.First;
While Not DM1.cdsCambios.Eof Do
Begin
    DM1.cdsDevolucionCob.Insert;
    DM1.cdsDevolucionCob.FieldByName('ASOID').AsString := xAsoId;
    DM1.cdsDevolucionCob.FieldByName('CREDID').AsString := DM1.cdsCambios.FieldByName('CREDID').AsString;
    DM1.cdsDevolucionCob.FieldByName('CRECUOTA').AsString := DM1.cdsCambios.FieldByName('CRECUOTA').AsString;
    DM1.cdsDevolucionCob.FieldByName('ASOAPENOM').AsString := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
    DM1.cdsDevolucionCob.FieldByName('ASONUMDEV').AsString := xNroDev;
    DM1.cdsDevolucionCob.FieldByName('CREFPAG').AsDateTime := DM1.cdsCambios.FieldByName('CREFPAG').AsDateTime;
    DM1.cdsDevolucionCob.FieldByName('ASOANODEV').AsString := Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)),7,4);
    DM1.cdsDevolucionCob.FieldByName('CREMTOEXC').AsCurrency := DM1.cdsCambios.FieldByName('CREMTOEXC').AsCurrency;
    DM1.cdsDevolucionCob.FieldByName('CREAPLEXC').AsCurrency := DM1.cdsCambios.FieldByName('CREAPLEXC').AsCurrency;
    DM1.cdsDevolucionCob.FieldByName('CREDEVEXC').AsCurrency := DM1.cdsCambios.FieldByName('CREMTOEXC').AsCurrency-DM1.cdsCambios.FieldByName('CREAPLEXC').AsCurrency;
    DM1.cdsDevolucionCob.FieldByName('CREESTID').AsString := '99';
    DM1.cdsDevolucionCob.FieldByName('CREESTADO').AsString := 'DEVOLUCION';
    DM1.cdsDevolucionCob.FieldByName('CREMES').AsString :=DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))+' AND CREDID='+QuotedStr(Trim(DM1.cdsCambios.FieldByName('CREDID').AsString))+' AND CRECUOTA='+QuotedStr(Trim(DM1.cdsCambios.FieldByName('CRECUOTA').AsString)),'CRE302','CREMES');
    DM1.cdsDevolucionCob.FieldByName('CREANO').AsString :=DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))+' AND CREDID='+QuotedStr(Trim(DM1.cdsCambios.FieldByName('CREDID').AsString))+' AND CRECUOTA='+QuotedStr(Trim(DM1.cdsCambios.FieldByName('CRECUOTA').AsString)),'CRE302','CREANO');
    DM1.cdsDevolucionCob.FieldByName('ASOCODMOD').AsString := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
    DM1.cdsDevolucionCob.FieldByName('ASOCODAUX').AsString := DM1.cdsAso.FieldByName('ASOCODAUX').AsString;
    DM1.cdsDevolucionCob.FieldByName('USUARIO').AsString := DM1.wUsuario;
    DM1.cdsDevolucionCob.FieldByName('FREG').AsDateTime := DM1.FechaSys;
    DM1.cdsCambios.Next;
End;

DM1.cdsRegCob.Close;
DM1.cdsRegCob.DataRequest('SELECT CREDID,CRECUOTA,CREFPAG,CREMTODEV,CREFLAGDEV,CREMTOEXC,CREAPLEXC FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREMTOEXC>CREAPLEXC AND CREESTID NOT IN (''13'',''04'') Order By CREDID,CRECUOTA');
DM1.cdsRegCob.Open;
DM1.cdsRegCob.First;
While Not DM1.cdsRegCob.Eof Do
Begin
    DM1.cdsRegCob.Edit;
    DM1.cdsRegCob.FieldByName('CREMTODEV').AsCurrency := (DM1.cdsRegCob.FieldByName('CREMTOEXC').AsCurrency-DM1.cdsRegCob.FieldByName('CREAPLEXC').AsCurrency);
    DM1.cdsRegCob.FieldByName('CREAPLEXC').AsCurrency := DM1.cdsRegCob.FieldByName('CREMTOEXC').AsCurrency;
    DM1.cdsRegCob.FieldByName('CREFLAGDEV').AsString :='D';
    DM1.cdsRegCob.Next;
End;

DM1.cdsAbonoCuotas.Close;
DM1.cdsAbonoCuotas.DataRequest('SELECT CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,CREDID,CRECUOTA,CREFPAG,TMONID,TCAMBIO,USUARIO,FREG, '+
                               'HREG,UPROID,DPTOID,UPAGOID,ASOAPENOM,CIUDID,CREANO,CREMES,AREAID,CREMTODEV,FORPAGOABR,TRANSINTID,CREESTID,            '+
                               'CREESTADO,FORPAGID,FORPAGABR,PERCONTA,CNTANOMM,TIPOCONT,CREDOCPAG,CREMTOCOB,CREMTOCUO FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREESTID NOT IN (''04'',''13'') ') ;
DM1.cdsAbonoCuotas.Open;
DM1.cdsCambios.First;
While Not DM1.cdsCambios.Eof Do
Begin
   DM1.cdsAbonoCuotas.Insert;
   DM1.cdsAbonoCuotas.FieldByName('CIAID').AsString :='02';
   DM1.cdsAbonoCuotas.FieldByName('ASOID').AsString := xAsoId;
   DM1.cdsAbonoCuotas.FieldByName('ASOCODMOD').AsString := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   DM1.cdsAbonoCuotas.FieldByName('ASOCODAUX').AsString := DM1.cdsAso.FieldByName('ASOCODAUX').AsString;
   DM1.cdsAbonoCuotas.FieldByName('USEID').AsString := DM1.cdsAso.FieldByName('USEID').AsString;
   DM1.cdsAbonoCuotas.FieldByName('ASOCODPAGO').AsString := DM1.cdsAso.FieldByName('ASOCODPAGO').AsString;
   DM1.cdsAbonoCuotas.FieldByName('TIPCREID').AsString := DM1.cdsSolicitud.FieldByName('TIPCREID').AsString;
   DM1.cdsAbonoCuotas.FieldByName('CREDID').AsString :=  DM1.cdsCambios.FieldByName('CREDID').AsString;
   DM1.cdsAbonoCuotas.FieldByName('CRECUOTA').AsString := DM1.cdsCambios.FieldByName('CRECUOTA').AsString;
   DM1.cdsAbonoCuotas.FieldByName('CREFPAG').AsDateTime  := DM1.FechasOutPut(DtpFecDev.Date);
   DM1.cdsAbonoCuotas.FieldByName('TMONID').AsString :='N';
   DM1.cdsAbonoCuotas.FieldByName('USUARIO').AsString := DM1.wUsuario;
   DM1.cdsAbonoCuotas.FieldByName('UPROID').AsString :=DM1.cdsAso.FieldByName('UPROID').AsString;
   DM1.cdsAbonoCuotas.FieldByName('DPTOID').AsString :=DM1.cdsAso.FieldByName('DPTOID').AsString;
   DM1.cdsAbonoCuotas.FieldByName('UPAGOID').AsString := DM1.cdsAso.FieldByName('UPAGOID').AsString;
   DM1.cdsAbonoCuotas.FieldByName('ASOAPENOM').AsString :=DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   DM1.cdsAbonoCuotas.FieldByName('CIUDID').AsString := DM1.cdsAso.FieldByName('CIUDID').AsString;
   DM1.cdsAbonoCuotas.FieldByName('CREANO').AsString := DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))+' AND CREDID='+QuotedStr(Trim(DM1.cdsCambios.FieldByName('CREDID').AsString))+' AND CRECUOTA='+QuotedStr(Trim(DM1.cdsCambios.FieldByName('CRECUOTA').AsString)),'CRE302','CREANO');
   DM1.cdsAbonoCuotas.FieldByName('CREMES').AsString := DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))+' AND CREDID='+QuotedStr(Trim(DM1.cdsCambios.FieldByName('CREDID').AsString))+' AND CRECUOTA='+QuotedStr(Trim(DM1.cdsCambios.FieldByName('CRECUOTA').AsString)),'CRE302','CREMES');
   DM1.cdsAbonoCuotas.FieldByName('AREAID').AsString := 'COB';
   DM1.cdsAbonoCuotas.FieldByName('CREMTODEV').AsCurrency  := DM1.cdsCambios.FieldByName('CREMTOEXC').AsCurrency-DM1.cdsCambios.FieldByName('CREAPLEXC').AsCurrency;
   DM1.cdsAbonoCuotas.FieldByName('CREMTOCOB').AsCurrency  := DM1.cdsCambios.FieldByName('CREMTOEXC').AsCurrency-DM1.cdsCambios.FieldByName('CREAPLEXC').AsCurrency;
   DM1.cdsAbonoCuotas.FieldByName('CREMTOCUO').AsCurrency  := 0;
   DM1.cdsAbonoCuotas.FieldByName('TRANSINTID').AsString :='DEV' ; DM1.cdsAbonoCuotas.FieldByName('FORPAGOABR').AsString :='DEV' ;
   DM1.cdsAbonoCuotas.FieldByName('CREDOCPAG').AsString :=xNroDev;
   DM1.cdsAbonoCuotas.FieldByName('CREESTID').AsString :='99';
   DM1.cdsAbonoCuotas.FieldByName('CREESTADO').AsString :='DEVOLUCION';
   DM1.cdsAbonoCuotas.FieldByName('FORPAGID').AsString :='10';
   DM1.cdsAbonoCuotas.FieldByName('FORPAGABR').AsString :='DEV';
   DM1.cdsAbonoCuotas.FieldByName('CNTANOMM').AsString := Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2);
   DM1.cdsAbonoCuotas.FieldByName('TIPOCONT').AsString :=DM1.CrgDescrip('IDCONT='+QuotedStr(Trim('10')),'COB804','TIPOCONT');
   DM1.cdsAbonoCuotas.FieldByName('FREG').AsDateTime := DM1.FechaSys;
   DM1.cdsAbonoCuotas.FieldByName('HREG').AsString := DateToStr(DM1.FechaSys)+DM1.HoraSys;
   DM1.cdsAbonoCuotas.Fieldbyname('PERCONTA').AsString := Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2);
   DM1.cdsCambios.Next;
End;
DM1.cdsAbonoCuotas.ApplyUpdates(0); DM1.cdsAbonoCuotas.Close;
DM1.cdsRegCob.ApplyUpdates(0); DM1.cdsRegCob.Close;
DM1.cdsDevolucionCob.ApplyUpdates(0); DM1.cdsDevolucionCob.Close;
DM1.cdsDevolucion.ApplyUpdates(0); DM1.cdsDevolucion.Close;

xSQL:='UPDATE CRE302 A SET CREAPLEXC=(SELECT SUM(NVL(CREAPLEXC,0)) FROM CRE310 WHERE A.ASOID=ASOID AND A.CREDID=CREDID AND A.CRECUOTA=CRECUOTA  '+
      'AND CREESTID NOT IN (''13'',''04'') ) WHERE A.ASOID='+QuotedStr(xAsoId)+' AND NVL(A.CREMTOEXC,0)>0 ';
DM1.DCOM1.AppServer.EjecutaSql(xSQL);





If xFrmDes='04' Then
   Begin
      xSQL:= 'INSERT INTO DES_DEV_EFE (ASOID,ASOCODMOD,ASOCODAUX,CREDID,ASOTIPID,ASODNI,ASOAPENOM,UPROID,USEID,UPAGOID,CODDEP,CODOFI,MONTOSOL,MONTODOL,'+
             'TIPCAMB,ANULADO,ASOFECDEV,ASOANODEV,ASONUMDEV) VALUES('+
              QuotedStr(xAsoId)+','+
              QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString)+','+
              QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString)+','+
              QuotedStr('000000000000000')+','+
              QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString)+','+
              QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','+
              QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString)+','+
              QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)+','+
              QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString)+','+
              QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString)+','+
              QuotedStr(DM1.cdsAso.FieldByName('DPTOID').AsString)+','+
              QuotedStr(DM1.xOfiDes)+','+
              CurrToStr(DM1.Valores(lblMonDev.Caption))+','+
              CurrToStr(DM1.Valores(lblMonDev.Caption)/StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys)))+','+
              DM1.RecuperarTipoCambio(DM1.FechaSys)+','+
              QuotedStr('N')+','+
              QuotedStr(DateToStr(DtpFecDev.Date))+','+
              QuotedStr(Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)),7,4))+','+
              QuotedStr(TRIM(EdtNroDev.Text))+')';
              DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   End;
end;

function TfDevoluciones.VrfGrabaDev(xFrmDes, xSitCta: String): Char;
begin
Case StrToInt(xFrmDes) Of
     4:Begin
          If (Length(Trim(EdtTipDes.Text))=0) Or (Length(Trim(mObservacion.Text))=0) Then Result:='N'  Else  Result:='S';
       End;
     5:Begin
          If (Length(Trim(EdtTipDes.Text))=0) Or (Length(Trim(mObservacion.Text))=0) Or (Length(Trim(DBLkCDAgencias.Text))=0) Or (Length(Trim(EdtCodAgen.Text))=0) Or (Length(Trim(EdtDepGir.Text))=0) Then
              Result:='N'
          Else
              Result:='S';

       End;
     6:Begin
          If (Length(Trim(EdtTipDes.Text))=0) Or (Length(Trim(mObservacion.Text))=0) Or (Length(Trim(EdtCtaAhorros.Text))<>10) Or (xSitCta<>'A') Then
              Result:='N'
          Else
              Result:='S';

       End
Else
  Begin
      Result:='N';
  End;

End;

end;

procedure TfDevoluciones.BitPrintClick(Sender: TObject);
Var xFrmDes,xTipDes,xMeses:String;
    xCremToCob:Currency;
    xLin:Integer;

begin
xFrmDes:=DBLkuCTipDes.Text;
lblPagEn.Visible:=False;
lblRotPag.Visible:=False;
If xFrmDes='04' Then
   Begin
     xTipDes:='EFECTIVO';
     ppLblDesem.Caption := xTipDes;
     lblPagEn.Visible:=True; lblRotPag.Visible:=True;
     lblPagEn.Caption:= edtOfDesNom.Text;
   End
Else If xFrmDes='05' Then
        Begin
           xTipDes:='GIRO/TRANSFERENCIA';
           ppLblDesem.Caption := 'GIRO : '+Copy(Trim(EdtDepGir.Text),4,12)+'- AGENCIA : '+Trim(DBLkCDAgencias.Text);
        End
Else If xFrmDes='06' Then
        Begin
           xTipDes:='CUENTA DE AHORROS';
           ppLblDesem.Caption := xTipDes+' N°: '+Trim(EdtCtaAhorros.Text);
        End;
ppMeses.Lines.Text:='';
xCremToCob:=0;xMeses:='';
DM1.cdsCambios.First;
xLin:=0;
While Not DM1.cdsCambios.Eof Do
  Begin
     xLin:=xLin + 1;
     xCremToCob:=xCremToCob + DM1.cdsCambios.FieldByname('PORAPLICA').AsFloat;
     If xLin<5 Then
       xMeses:=xMeses+(DM1.DesMes(StrToInt(DM1.cdsCambios.FieldByname('CREMES').AsString),'S')+'/'+DM1.cdsCambios.FieldByname('CREANO').AsString)+'=  '+DM1.StrSpace(FormatFloat('##,###.#0',DM1.cdsCambios.FieldByname('PORAPLICA').AsFloat),7)+'   '
     Else
        Begin
          xLin:=0;
          xMeses:=xMeses+(DM1.DesMes(StrToInt(DM1.cdsCambios.FieldByname('CREMES').AsString),'S')+'/'+DM1.cdsCambios.FieldByname('CREANO').AsString)+'=  '+DM1.StrSpace(FormatFloat('##,###.#0',DM1.cdsCambios.FieldByname('PORAPLICA').AsFloat),7)+#13;
        End;
     DM1.cdsCambios.Next;
  End;

ppMeses.Lines.Add('POR CONCEPTO  : DEVOLUCION DE EXCESOS ');
ppMeses.Lines.Add('');
ppMeses.Lines.Add('POR LOS MESES (En Nuevos Soles)');
ppMeses.Lines.Add('------------------------------');ppMeses.Lines.Add('');
ppMeses.Lines.Add(Copy(xMeses,1,Length(Trim(xMeses))));
ppLblTitulo.Caption:='NOTA DE DESEMBOLSO : ' +xTipDes+' N° '+Trim(EdtNroDev.Text)+'-'+Copy(DateToStr(DM1.FechasOutPut(DtpFecDev.Date)),7,4)+'-'+'DM-COB'  ;
If DM1.xSgr='1' Then
   Begin
     PPLblDni.Caption := DM1.cdsAso.FieldByName('ASODNI').AsString;
     ppLblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
     ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
     ppLblFecDoc.Caption := DateToStr(DM1.FechasOutPut(DtpFecDev.Date));
     ppLblDpto.Caption  :=  DM1.CrgDescrip('DPTOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('DPTOID').AsString)),'APO158','DPTODES');
     ppLblCodPag.Caption := DM1.cdsAso.FieldByName('ASOCODPAGO').AsString;
     ppLblUproc.Caption  := DM1.CrgDescrip('UPROID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)),'APO102','UPRONOM');
     ppLblMonDev.Caption := FormatFloat('###,###.#0',DM1.Valores(lblMonDev.Caption)  );
     ppLblUsuario.Caption := 'Hecho Por :'+Trim(DM1.wUsuario);
   End
Else
   Begin
     PPLblDni.Caption := DM1.cdsQry3.FieldByName('ASODNI').AsString;
     ppLblNomGen.Caption := DM1.cdsQry3.FieldByName('ASOAPENOM').AsString;
     ppLblCodMod.Caption := DM1.cdsQry3.FieldByName('ASOCODMOD').AsString;
     ppLblFecDoc.Caption := DM1.cdsQry3.FieldByName('ASOFECDEV').AsString;
     ppLblDpto.Caption  :=  DM1.CrgDescrip('DPTOID='+QuotedStr(Trim(DM1.cdsQry3.FieldByName('DPTOID').AsString)),'APO158','DPTODES');
     ppLblCodPag.Caption := DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsQry3.FieldByName('ASOID').AsString)),'APO201','ASOCODPAGO');
     ppLblUproc.Caption  := DM1.CrgDescrip('UPROID='+QuotedStr(Trim(DM1.cdsQry3.FieldByName('UPROID').AsString)),'APO102','UPRONOM');
     ppLblMonDev.Caption := FormatFloat('###,###.#0',DM1.Valores(DM1.cdsQry3.FieldByName('ASOMONDEV').AsString) );
     ppLblUsuario.Caption := 'Hecho Por :'+Trim(DM1.cdsQry3.FieldByName('USUARIO').AsString);
   End;

ppRepDevol.Print;
ppRepDevol.Cancel

end;

end.
