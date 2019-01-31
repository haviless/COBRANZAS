unit COB904;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, wwdblook, Buttons, DB, DBClient, ExtCtrls,
  wwdbdatetimepicker;


type
  TfNPago = class(TForm)
    GrpGrabar: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    DBLCBanco: TwwDBLookupCombo;
    DBLCuenta: TwwDBLookupCombo;
    EdtDesBan: TEdit;
    EdtDocPag: TEdit;
    EdtMonCob: TEdit;
    mObsPag: TMemo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    EdtCuotas: TEdit;
    EdtMonPag: TEdit;
    EdtForPago: TEdit;
    DBLCTipCob: TwwDBLookupCombo;
    EdtMonExc: TEdit;
    LblExceso: TLabel;
    DtpFecReg: TDateTimePicker;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Shape1: TShape;
    DtpFecPag: TwwDBDateTimePicker;
    BitTel: TButton;
    EdtPreBco: TEdit;
    pnlVerifica: TPanel;
    Shape2: TShape;
    Label4: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DtpFecPagVer: TwwDBDateTimePicker;
    EdtPreBcoVer: TEdit;
    EdtDocPagVer: TEdit;
    EdtMonCobVer: TEdit;
    Label17: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure DBLCTipCobChange(Sender: TObject);
    procedure DBLCBancoChange(Sender: TObject);
    procedure EdtDesBanChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtMonCobKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure EdtMonCobExit(Sender: TObject);
    procedure EdtDocPagExit(Sender: TObject);
    procedure mObsPagExit(Sender: TObject);
    procedure EdtMonPagDblClick(Sender: TObject);
    function CalcExceso(xAsoId,xCredid:String):Currency;
    procedure DBLCTipCobExit(Sender: TObject);
    procedure DtpFecPagExit(Sender: TObject);
    procedure DtpFecPagKeyPress(Sender: TObject; var Key: Char);
    procedure BitTelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLCuentaExit(Sender: TObject);
    procedure DBLCuentaChange(Sender: TObject);
    procedure EdtDocPagKeyPress(Sender: TObject; var Key: Char);
    procedure EdtMonCobVerExit(Sender: TObject);
    procedure EdtMonCobVerKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    xRecEfe ,xRecExe:String;
    function ValidaGrabaPag(xFrmPag: String):Char;
    function ValidaIngresoBancos(xAsoId,xCreDocPag,xCrefPag: String):String;
    function GnrCEfe():String;
    function GnrCExe():String;
    procedure DistCuotaPag(xCuotaApl: Currency ; xEstado:Integer ; xFrmPag : String);
    procedure DistExcesos(xAsoId:String; xCuotaApl: Currency);
    procedure EnabDocto(xFrm:String);
    procedure GrbAplExc(xAsoId,xCreDid,xCreCuota:String; xAplExc:Currency);
    procedure GrabaFPago(xAsoId, xCreDid, xCreCuota, xCnd, xFrmPag, xFecCalculo : String ; xAplicar,xExceso :Currency );
    procedure GrabaFExce(xAsoId, xCreDid, xCreCuota, xCnd, xFrmPag, xFecCalculo : String ; xAplicar:Currency );


  public
    { Public declarations }
    procedure ActualizaCrono(xAsoId,xCreDid: String);
    procedure AplicaCronogramaPago(xCuotaApl, xExceso:Currency ;xEstado:Integer ;xVen:Char ; xFrmPag:String );
    procedure InsertaDetPagos(xCuotaApl, xExceso:Currency; xEstado:Integer; xEstAnt, xDesAnt, xFrmPag, xCnd:String);



  end;

var
  fNPago: TfNPago;

implementation

uses COBDM1, COB906, COB903, COB909, COB913;

{$R *.dfm}

procedure TfNPago.BitSalirClick(Sender: TObject);
begin
 DM1.cdsFormaPago.Close;
 Screen.Cursor := crDefault;
 Close;
end;

procedure TfNPago.DBLCTipCobChange(Sender: TObject);
Var xAsoId, xCredId,xCreCuora, xfCalc : String;
    xSaldoP:Currency;
begin
   EdtDocPag.Text  :='';
   If DM1.cdsFormaPago.Locate('FORPAGOID',VarArrayof([DBLCTipCob.text]),[]) Then
      Begin
        EnabDocto(Trim(DBLCTipCob.text));
        If Trim(DBLCTipCob.text)='06' Then DtpFecPag.OnExit(DtpFecPag);

        If Trim(DBLCTipCob.text)='03' Then
           Begin
             DBLCBanco.Enabled := True; EdtDesBan.Enabled := True; DBLCuenta.Enabled := True;
             EdtMonCob.ReadOnly := False; LblExceso.Enabled := False; EdtMonExc.Enabled := False; EdtMonExc.Text := FormatFloat('###,###.#0',0); mObsPag.Height:=60; pnlVerifica.Visible:=True;
             EdtPreBco.Enabled:=True;
           End
        Else
           Begin
             EdtDesBan.Text := ''; DBLCBanco.Text := ''; DBLCuenta.Text := '';
             DBLCBanco.Enabled := False; EdtDesBan.Enabled := False; DBLCuenta.Enabled := False;
             EdtMonExc.Text := FormatFloat('###,###.#0',0);
             EdtMonCob.ReadOnly := False; LblExceso.Enabled := False; EdtMonExc.Enabled := False;
             EdtPreBco.Text := ''; EdtPreBco.Enabled:=False; EdtDocPag.Text := '';  mObsPag.Height:=124; pnlVerifica.Visible:=False;
           End;
        If Trim(DBLCTipCob.text)<>'06' Then
           Begin
             If Trim(DBLCTipCob.text)<>'03' Then
                Begin
                   EdtDesBan.Text := ''; DBLCBanco.Text := ''; DBLCuenta.Text := '';
                   DBLCBanco.Enabled := False; EdtDesBan.Enabled := False; DBLCuenta.Enabled := False;
                   EdtMonExc.Text := FormatFloat('###,###.#0',0);
                   EdtMonCob.ReadOnly := False; LblExceso.Enabled := False; EdtMonExc.Enabled := False;
                   EdtPreBco.Text := ''; EdtPreBco.Enabled:=False; EdtDocPag.Text := '';
                End;
           End
         Else
           Begin
             EdtForPago.Text  := DM1.cdsFormaPago.fieldbyname('FORPAGODES').AsString ;
             EdtMonExc.Text := FormatFloat('###,###.#0',CalcExceso(DM1.cdsCuotas.FieldByName('ASOID').AsString, DM1.cdsCuotas.FieldByName('CREDID').AsString));
             If DM1.Valores(EdtMonExc.Text) >= DM1.Valores(EdtMonPag.Text) Then
                EdtMonCob.Text:= EdtMonPag.Text
             Else
                EdtMonCob.Text:= EdtMonExc.Text;
              LblExceso.Enabled := True; EdtMonExc.Enabled := True; EdtMonCob.ReadOnly := True; BitTel.Enabled:=False;
              EdtMonPag.SetFocus;
           End;
        If DM1.xArea = 'SIS' Then DtpFecPag.Enabled := True;
        EdtForPago.Text  := DM1.cdsFormaPago.fieldbyname('FORPAGODES').AsString ;
      End
   Else
      Begin
        if Length(DBLCTipCob.Text) <> 2 then
           Begin
              Beep;
              EdtForPago.Text  :='';
           End;
      End

end;

procedure TfNPago.DBLCBancoChange(Sender: TObject);
begin
   EdtDocPag.Text  :='';
   If DM1.cdsCBcos.Locate('BANCOID',VarArrayof([DBLCBanco.text]),[]) Then
      Begin
        EdtDesBan.Text  := DM1.cdsCBcos.fieldbyname('BANCONOM').AsString ;
      End
   Else
      Begin
        if Length(DBLCBanco.Text) <> 2 then
           Begin
              Beep;
              EdtDesBan.Text  :='';
           End;
      End

end;

procedure TfNPago.EdtDesBanChange(Sender: TObject);
var xSQL:String;
begin
  If DM1.xOfiDes='01' Then
     xSQL:='SELECT BANCOID,CCBCOID,CPTOID,LONGITUD FROM TGE106 WHERE BANCOID='+QuotedStr(Trim(DBLCBanco.Text))+' AND CIAID=''02'' AND TMONID=''N'' AND ACTIVO=''S'' AND CPTOID IS NOT NULL Order By CCBCOID'
  Else
     xSQL:='SELECT BANCOID,CCBCOID,CPTOID,LONGITUD FROM TGE106 WHERE BANCOID='+QuotedStr(Trim(DBLCBanco.Text))+' AND CIAID=''02'' AND TMONID=''N'' AND ACTIVO=''S'' AND CPTOID IS NOT NULL AND COBCONS=''1'' Order By CCBCOID';

  DM1.cdsCtasBco.Close;
  DM1.cdsCtasBco.DataRequest(xSQL);
  DM1.cdsCtasBco.Open;
  If DM1.cdsCtasBco.RecordCount=1 Then
     Begin
       DBLCuenta.Text  := DM1.cdsCtasBco.fieldbyname('CCBCOID').AsString ;
       EdtPreBco.Text  := DM1.cdsCtasBco.fieldbyname('CPTOID').AsString ;
     End;
end;

procedure TfNPago.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;


procedure TfNPago.EdtMonCobKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;
end;

procedure TfNPago.FormActivate(Sender: TObject);
var xAsoId,xCredId,xCreCuota,xfCalc :String;
    xSaldoP:Currency;
begin
DBLCBanco.Enabled := False; EdtDesBan.Enabled := False; DBLCuenta.Enabled := False;
DtpFecReg.Date := DM1.FechaSys;
DtpFecReg.Date := DM1.FechaSys; mObsPag.Height:=124;
If DM1.xArea='CAJ' Then
   Begin
     DtpFecPag.Date := DM1.FechaSys;
     DtpFecPag.Enabled:=False;
     GrpGrabar.Enabled := True;
     xfCalc  := Trim(Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)),7,4)+Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)),4,2));
     xAsoId:=DM1.cdsCuotas.FieldByName('ASOID').AsString;
     xCredId:=DM1.cdsCuotas.FieldByName('CREDID').AsString;
     xCreCuota:=DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
     xSaldoP:=DM1.CalSalPag(xAsoid, xCreDid, xfCalc, xCrecuota, DM1.xCnd, Trim(DBLCTipCob.Text));
     EdtMonPag.Text := FormatFloat('###,###.#0',xSaldoP);
     EdtMonPag.SetFocus;
   End
Else
   Begin
     If DM1.cdsFormaPago.RecordCount = 1 Then
        Begin
           If Trim(DBLCTipCob.Text)='03' Then
              Begin
                DBLCBanco.Enabled := True; DBLCuenta.Enabled := True ; EdtDesBan.Enabled := True;
                DtpFecPag.Enabled:=True;
                DtpFecPag.SetFocus;
              End;
        End
     Else
        Begin
           DtpFecPag.Enabled:=True;
           DBLCTipCob.SetFocus;
        End;
   End;
end;

function TfNPago.CalcExceso(xAsoId, xCredId: String): Currency;
Var xSQL:String;
begin
DM1.cdsAbonoCuotas.Close;
xSQL:='SELECT SUM(NVL(CREMTOEXC,0))-SUM(NVL(CREAPLEXC,0)) AS MONEXC FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREESTID NOT IN (''13'',''04'') Group By ASOID ';
DM1.cdsAbonoCuotas.DataRequest(xSQL);
DM1.cdsAbonoCuotas.Open;
If DM1.cdsAbonoCuotas.RecordCount > 0 Then
  Result:= DM1.cdsAbonoCuotas.fieldByName('MONEXC').AsCurrency
Else
  Result:=0;
DM1.cdsAbonoCuotas.Close;
end;


function TfNPago.ValidaGrabaPag(xFrmPag: String): Char;
begin
case StrToInt(xFrmPag) of
     1:Begin
        If (Length(Trim(EdtForPago.Text))=0)     Or
             (Length(Trim(mObsPag.Lines.Text))=0)  Or
             (Length(Trim(EdtDocPag.Text))=0)      Or
             (Length(Trim(DateToStr(DtpFecPag.Date)))=0) Or
             (DM1.Valores(EdtMonCob.Text)=0)       Then
              Begin
                 Result:='N';
                 MessageDlg(' Faltan Datos Para Poder Grabar El Pago  ', mtError,[mbOk],0);
              end
         Else
              Begin
                 Result:='S';
              End;

       End;
     2:Begin
        If (Length(Trim(EdtForPago.Text))=0)    Or
            (Length(Trim(DateToStr(DtpFecPag.Date)))=0) Or
             (DM1.Valores(EdtMonCob.Text)=0)       Then
              Begin
                 Result:='N';
                 MessageDlg(' Faltan Datos Para Poder Grabar El Pago  ', mtError,[mbOk],0);
              end
         Else
              Begin
                 Result:='S';
              End;
       End;
     3:Begin
         If (Length(Trim(EdtForPago.Text))=0)     Or
             (Length(Trim(EdtDesBan.Text))=0)      Or
             (Length(Trim(DBLCuenta.Text))=0)      Or
             (Length(Trim(EdtDocPag.Text))=0)      Or
             (Length(Trim(mObsPag.Lines.Text))=0)  Or
             (Length(Trim(DateToStr(DtpFecPag.Date)))=0) Or
             (DM1.Valores(EdtMonCob.Text)=0)       Then
              Begin
                 Result:='N';
                 MessageDlg(' Faltan Datos Para Poder Grabar El Pago  ', mtError,[mbOk],0);
              end
         Else
              Begin
                 Result:='S';
              End;
       End;

     6:Begin
        If (Length(Trim(EdtForPago.Text))=0)     Or
             (Length(Trim(mObsPag.Lines.Text))=0)  Or
             (Length(Trim(DateToStr(DtpFecPag.Date)))=0) Or
             (DM1.Valores(EdtMonCob.Text)=0)       Then
              Begin
                 Result:='N';
                 MessageDlg(' Faltan Datos Para Poder Grabar El Pago  ', mtError,[mbOk],0);
              end
         Else
              Begin
                 Result:='S';
              End;
       End

else
   Begin
        If (Length(Trim(EdtForPago.Text))=0)     Or
            (Length(Trim(mObsPag.Lines.Text))=0)  Or
            (Length(Trim(EdtDocPag.Text))=0)      Or
            (Length(Trim(DateToStr(DtpFecPag.Date)))=0) Or
            (DM1.Valores(EdtMonCob.Text)=0)       Then
             Begin
                Result:='N';
                MessageDlg(' Faltan Datos Para Poder Grabar El Pago  ', mtError,[mbOk],0);
             end
         Else
             Begin
                Result:='S';
             End;

   End;
end;


end;

procedure TfNPago.BitGrabarClick(Sender: TObject);
var xAsoId, xCreDid, xCreCuota, xCnd, xFrmPag, xFecCalculo,xRecEfe,xRecExe :String;
    xAplicar, xExceso :Currency;
begin
xAsoId:= DM1.cdsCuotas.fieldbyname('ASOID').AsString;
xCreDid:= DM1.cdsCuotas.fieldbyname('CREDID').AsString;
xCreCuota:= DM1.cdsCuotas.fieldbyname('CRECUOTA').AsString;
xFrmPag:=Trim(DBLCTipCob.Text) ;

If DtpFecPag.Date>DM1.FechaSys Then
   Begin
     MessageDlg('La Fecha De Documento No Puede Ser Mayor A La Fecha De Registro', mtError,[mbOk],0);
     Exit;
   End;


If xFrmPag='06' Then
   Begin
      If DM1.Valores(Trim(EdtMonExc.Text))=0 Then
         Begin
            MessageDlg('No Existen Excesos Por Aplicar,  Verifique !!! ', mtError,[mbOk],0);
            Exit;
         End;
   End;
If ValidaGrabaPag(Trim(DBLCTipCob.Text))='N' Then  Exit;
If DM1.xGrabaExc='N' Then
  If (DM1.Valores(EdtMonCob.Text)>DM1.Valores(EdtMonPag.Text)) And (xFrmPag<>'18') Then
     Begin
       MessageDlg(' No Se Puede Registrar Montos Mayores Al Saldo ', mtError,[mbOk],0);
       Exit;
     End;
If xFrmPag='15' Then
   Begin
      DM1.xSgr:='G';
   End;
If DM1.Valores(EdtMonPag.Text) < 0 Then
   Begin
       MessageDlg(' No Se Puede Registrar Montos Negativos ', mtError,[mbOk],0);
       Exit;
   End;
If DM1.Valores(EdtMonCob.Text)>DM1.Valores(EdtMonPag.Text) Then
   Begin
      xExceso :=DM1.Valores(EdtMonCob.Text)-DM1.Valores(EdtMonPag.Text);
   End;
If xFrmPag='02' Then
   Begin
     xRecEfe:=GnrCEfe; EdtDocPag.Text:=xRecEfe;
     If Length(Trim(xRecEfe))=0 Then
         Begin
           Screen.Cursor:=crDefault;
           MessageDlg(' <<<  A T E N C I O N  >>>   NO SE GENERO CORRELATIVO COMUNIQUESE CON SISTEMAS !!!!!  ', mtError,[mbOk],0);
           Exit;
         End;
   End;
If xFrmPag='06' Then
   Begin
     xRecExe:=GnrCExe; EdtDocPag.Text:=xRecExe;
     If Length(Trim(xRecExe))=0 Then
         Begin
           Screen.Cursor:=crDefault;
           MessageDlg(' <<<  A T E N C I O N  >>>   NO SE GENERO CORRELATIVO COMUNIQUESE CON SISTEMAS !!!!!  ', mtError,[mbOk],0);
           Exit;
         End;


   End;

If DM1.xGrabaExc='N' Then
   Begin
      If xFrmPag='03' Then
         Begin
           If Length(Trim(ValidaIngresoBancos(xAsoId, Trim(EdtPreBco.Text+EdtDocPag.Text), DtpFecPag.Text)))>0 Then
              Begin
                MessageDlg(' Esta Operación Ya Fue Registrada Por  :  '+pChar(ValidaIngresoBancos(xAsoId, Trim(EdtPreBco.Text+EdtDocPag.Text), DtpFecPag.Text)), mtError,[mbOk],0);
                Exit;
              End;
         End;
   End;

If DM1.xGrabaExc='N' Then
   Begin
     If xFrmPag='03' Then
        Begin
          If DtpFecPag.Text<>DtpFecPagVer.Text Then
             Begin
                MessageDlg('No Se Puede Registrar Fechas De Documentos Distintas ', mtError,[mbOk],0);
                Exit;
             End;
          If EdtDocPag.Text<>EdtDocPagVer.Text Then
             Begin
                MessageDlg('No Se Puede Registrar Numeros De Documentos Distintos ', mtError,[mbOk],0);
                Exit;
             End;
          If DM1.Valores(EdtMonCob.Text)<>DM1.Valores(EdtMonCobVer.Text) Then
             Begin
                If DM1.Valores(EdtMonCobVer.Text) > DM1.Valores(EdtMonCob.Text) Then
                   Begin
                     MessageDlg('Atención   :   FALTA REGISTRAR :  S/.  '+pChar('  '+Trim(FormatFloat('###,##0.#0',DM1.Valores(EdtMonCobVer.Text)-DM1.Valores(EdtMonCob.Text))))+pChar('  SOLO SE PODRA REGISTRAR COMO EXCESO'), mtInformation,[mbOk],0);
                   End;
             End;

        End;
   End;

xFecCalculo:= Trim(Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)),7,4)+Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)),4,2));
xAplicar:= DM1.Valores(EdtMonCob.Text);
Screen.Cursor := crHourglass;
If DM1.xGrabaExc='N' Then
   GrabaFPago(xAsoId, xCreDid, xCreCuota, DM1.xCnd, xFrmPag, xFecCalculo, xAplicar, xExceso)
Else
   GrabaFExce(xAsoId, xCreDid, xCreCuota, DM1.xCnd, xFrmPag, xFecCalculo, xAplicar);

If xFrmPag='02' Then
Begin
     If DM1.xSal<>'B' Then
        Begin
          fDetPagos:=Nil;
          fDetPagos := tfDetPagos.Create(Self) ;
        End;
     fDetPagos.ImpReciboEfe(xAsoId, xCreDid, xRecEfe, xFrmPag) ;
End;
if DM1.xSal='B' Then fDetPagos.Close;
fCronoPag.LimpiaFlgvar(xAsoId, xCreDid);
ActualizaCrono(xAsoId, xCreDid);
If xFrmPag='06' Then DistExcesos(xAsoId,xAplicar);
Screen.Cursor := crDefault;

end;

procedure TfNPago.EdtMonCobExit(Sender: TObject);
begin
If Length(Trim(EdtMonCob.Text))=0 Then
   Begin
     EdtMonCob.Text:='0.00' ;
   End;
EdtMonCob.Text :=FormatFloat('###,###.00',DM1.Valores(EdtMonCob.Text));
end;

procedure TfNPago.EdtDocPagExit(Sender: TObject);
begin
If Trim(DBLCTipCob.Text) ='03' Then
   Begin
      If Length(Trim(EdtDocPag.Text)) <> DM1.cdsCtasBco.fieldbyname('LONGITUD').AsInteger Then
         Begin
            MessageDlg('Verifique, Operación Tiene Un Numero Diferente Caracteres', mtError,[mbOk],0);
            EdtDocPag.Text  :='';
            EdtDocPag.SetFocus;
         End
   End
Else
   Begin
      If Length(Trim(EdtDocPag.Text)) > 10 Then
      Begin
         MessageDlg('Verifique Número De Operación Tiene Mas De 10 Caracteres', mtError,[mbOk],0);
         EdtDocPag.SetFocus;
      End;
   End;
end;

procedure TfNPago.mObsPagExit(Sender: TObject);
begin
  If Not pnlVerifica.Visible Then
     bitgrabar.SetFocus
  Else
     DtpFecPagVer.SetFocus;

end;


function TfNPago.GnrCEfe: String;
Var xCorrAct:Integer;
    xCorrEfe,xSQL:String;
begin
xSQL:='SELECT CREAREA,TIPO,CANCUO,CORREANO FROM CRE206 WHERE CREAREA=''COB'' AND TIPO=''8'' AND CORREANO='+QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)),7,4))+' AND CANCUO IS NOT NULL';
DM1.cdsFEfec.Close;
DM1.cdsFEfec.DataRequest(xSQL);
DM1.cdsFEfec.Open;
If DM1.cdsFEfec.RecordCount=1 Then
   Begin
     xCorrAct:=StrToInt(DM1.cdsFEfec.fieldbyname('CANCUO').AsString) + 1;
     xCorrEfe:=Format('%.10d',[xCorrAct]);
     DM1.cdsFEfec.Edit;
     DM1.cdsFEfec.fieldbyname('CANCUO').AsString:=xCorrEfe;
     DM1.cdsFEfec.ApplyUpdates(0);
     DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL);  DM1.cdsQry.Open;
     If Trim(xCorrEfe)>Trim(DM1.cdsQry.fieldbyname('CANCUO').AsString) Then xCorrEfe:='';
     DM1.cdsQry.Close;

     Result:=xCorrEfe;
   End;
DM1.cdsFEfec.Close;
end;


function TfNPago.GnrCExe: String;
Var xCorrAct:Integer;
    xCorrExe,xSQL:String;
begin
xSQL:='SELECT CREAREA,TIPO,CANCUO,CORREANO FROM CRE206 WHERE CREAREA=''COB'' AND TIPO=''E'' AND CORREANO='+QuotedStr(Copy(Trim(DateToStr(DM1.FechaSys)),7,4))+' AND CANCUO IS NOT NULL';
DM1.cdsFEfec.Close;
DM1.cdsFEfec.DataRequest(xSQL);
DM1.cdsFEfec.Open;
If DM1.cdsFEfec.RecordCount=1 Then
   Begin
     xCorrAct:=StrToInt(DM1.cdsFEfec.fieldbyname('CANCUO').AsString) + 1;
     xCorrExe:=Format('%.10d',[xCorrAct]);
     DM1.cdsFEfec.Edit;
     DM1.cdsFEfec.fieldbyname('CANCUO').AsString:=xCorrExe;
     DM1.cdsFEfec.ApplyUpdates(0);
     DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL);  DM1.cdsQry.Open;
     If Trim(xCorrExe)>Trim(DM1.cdsQry.fieldbyname('CANCUO').AsString) Then xCorrExe:='';
     DM1.cdsQry.Close;

     Result:=xCorrExe;
   End;
DM1.cdsFEfec.Close;
end;

procedure TfNPago.GrabaFPago(xAsoId, xCreDid, xCreCuota, xCnd, xFrmPag, xFecCalculo: String ; xAplicar, xExceso:Currency );
var xCuota:Currency;
    xfVenc, xEstAnt, xEstDes:String;
begin

   DM1.cdsDcuotas.Close;
   If xCnd='0' Then
      Begin
      DM1.cdsDcuotas.DataRequest('SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,          ' +
                                 'CRECUOTA,CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID,  ' +
                                 'UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT,     ' +
                                 'USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL,      ' +
                                 'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR,          ' +
                                 'CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, CIAID, CREESTID, CREESTADO, FLGINT, ' +
                                 'CREMTOGADM, ASOCODAUX, NRONABO, CIUDID, FLGPAG,CREDIDNABO, CREMTOEXC, AREAID,CREDOCPAG,CREAPLEXC    ' +
                                 'FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And CRECUOTA='+xCreCuota+' And  CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA') ;
      End

   Else If xCnd='1' Then
      Begin
      DM1.cdsDcuotas.DataRequest('SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,          ' +
                                         'CRECUOTA,CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID,  ' +
                                         'UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT,     ' +
                                         'USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL,      ' +
                                         'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR,          ' +
                                         'CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, CIAID, CREESTID, CREESTADO, FLGINT, ' +
                                         'CREMTOGADM, ASOCODAUX, NRONABO, CIUDID, FLGPAG,CREDIDNABO, CREMTOEXC, AREAID,CREDOCPAG,CREAPLEXC    ' +
                                         'FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And CRECUOTA>='+xCreCuota+' And  CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA') ;
      End
   Else If xCnd='2' Then
      Begin
      DM1.cdsDcuotas.DataRequest('SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO, FLGINT,         ' +
                                 'CRECUOTA,CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID,  ' +
                                 'UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT,     ' +
                                 'USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL,      ' +
                                 'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR,          ' +
                                 'CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, CIAID, CREESTID, CREESTADO, FLAGVAR,        ' +
                                 'CREMTOGADM, ASOCODAUX, NRONABO, CIUDID, FLGPAG,CREDIDNABO, CREMTOEXC, AREAID,CREDOCPAG,CREAPLEXC    ' +
                                 'FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And FLAGVAR=''S'' And  CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA') ;
      End;

   DM1.cdsDcuotas.Open;


   DM1.cdsDetalle.Close;
   DM1.cdsDetalle.DataRequest('SELECT CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,         ' +
                              'CREMONLOC,CREMONEXT,CREMTOCOB,CREFPAG,TMONID,CREAMORT,CREINTERES,CREDOCPAG,    ' +
                              'CREFLAT,TCAMBIO,USUARIO,FREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,HREG,       ' +
                              'ASOAPENOM,CIUDID,CREOBS,CREANO,CREMES,AREAID,FORPAGABR,TRANSINTID, FORPAGABR , ' +
                              'FORPAGID,CREESTID,CREESTADO,FOPERAC,CREESTANT,CREESTANTDES,CREMTOCUO,NROOPE,   ' +
                              'PERCONTA,CREMTOEXC,CREAPLEXC,CNTANOMM,TIPOCONT,FOPERACTMP,NROOPETMP,NRONABO,CNTFLAG,OFDESID FROM CRE310 Where ASOID ='+QuotedStr(Trim(xAsoId)));

   DM1.cdsDetalle.Open;

       xCuota:=0;
       DM1.cdsDcuotas.First;
       While Not DM1.cdsDcuotas.Eof do
       Begin
          If xAplicar>0 Then
              Begin
                xfVenc:= Trim(DM1.cdsDcuotas.fieldbyname('CREANO').AsString + DM1.cdsDcuotas.fieldbyname('CREMES').AsString); xEstAnt:=Trim(DM1.cdsDcuotas.fieldbyname('CREESTID').AsString); xEstDes:=Trim(DM1.cdsDcuotas.fieldbyname('CREESTADO').AsString);
                If xfVenc > xFecCalCulo Then
                   Begin
                   If xCnd='0' Then
                      Begin
                           xCuota:= (DM1.cdsDcuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency);
                           If xCuota > xAplicar Then
                              Begin
                                AplicaCronogramaPago(xAplicar,xExceso,2,'S',xFrmPag); InsertaDetPagos(xAplicar,xExceso,1,xEstAnt,xEstDes,xFrmPag,xCnd);
                              End
                           Else
                              Begin
                                AplicaCronogramaPago(xCuota,xExceso,1,'S',xFrmPag); InsertaDetPagos(xCuota,xExceso,1,xEstAnt,xEstDes,xFrmPag,xCnd);
                              End;
                      End
                   Else
                      Begin
                        If DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency > 0 Then
                           Begin
                              xCuota:=(DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency)-DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency;
                              If xCuota > xAplicar Then
                                 Begin
                                  AplicaCronogramaPago(xAplicar,xExceso,2,'N',xFrmPag); InsertaDetPagos(xAplicar,xExceso,1,xEstAnt,xEstDes,xFrmPag,xCnd);
                                 End
                              Else
                                 Begin
                                  AplicaCronogramaPago(xCuota,xExceso,0,'N',xFrmPag); InsertaDetPagos(xCuota,xExceso,1,xEstAnt,xEstDes,xFrmPag,xCnd);
                                 End;
                           End
                        Else
                            Begin
                                xCuota:= (DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency);
                                If xCuota > xAplicar Then
                                   Begin
                                    AplicaCronogramaPago(xAplicar,xExceso,2,'N',xFrmPag); InsertaDetPagos(xAplicar,xExceso,0,xEstAnt,xEstDes,xFrmPag,xCnd);
                                   End
                                Else
                                   Begin
                                    AplicaCronogramaPago(xCuota,xExceso,0,'N',xFrmPag); InsertaDetPagos(xCuota,xExceso,0,xEstAnt,xEstDes,xFrmPag,xCnd);
                                  End;
                            End;
                      End;
                   End

                Else
                    Begin
                           xCuota:= (DM1.cdsDcuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency);
                           If xCuota > xAplicar Then
                              Begin
                                AplicaCronogramaPago(xAplicar,xExceso,2,'S',xFrmPag); InsertaDetPagos(xAplicar,xExceso,1,xEstAnt,xEstDes,xFrmPag,xCnd);
                              End
                           Else
                              Begin
                                AplicaCronogramaPago(xCuota,xExceso,1,'S',xFrmPag); InsertaDetPagos(xCuota,xExceso,1,xEstAnt,xEstDes,xFrmPag,xCnd);
                              End;
                    End;
                End;
                xAplicar:=xAplicar - xCuota ;
                DM1.cdsDcuotas.Next;

       End;
       DM1.cdsDcuotas.ApplyUpdates(0) ; DM1.cdsDetalle.ApplyUpdates(0);
       DM1.cdsDcuotas.Close;  DM1.cdsDetalle.Close;
       Close;

end;

procedure TfNPago.AplicaCronogramaPago(xCuotaApl, xExceso: Currency; xEstado: Integer; xVen:Char ; xFrmPag : String);
var xEstId,xFlg,xEstCuo,xConsulta:String;
    xSldApli:Currency;
begin
 Case xEstado of
      0:Begin
         xEstId :='23';  xEstCuo:='CANCELADO A' ;  xFlg:='A';
        End;
      1:Begin
         xEstId :='21';  xEstCuo:='CANCELADO' ; xFlg:='P';
        End;
 Else
      Begin
         xEstId :='27';  xEstCuo:='PARCIAL' ;
      End;
 End;
 DM1.cdsDcuotas.Edit;
 If DM1.xSal='RP' Then
    Begin
      If Copy(Trim(fRepCronog.EdtForPago.Text),1,1)='R' Then xEstId:='12'  Else If Copy(Trim(fRepCronog.EdtForPago.Text),1,1)='A' Then xEstId:='22'  Else If Copy(Trim(fRepCronog.EdtForPago.Text),1,1)='C' Then xEstId:='29';
      DM1.cdsDcuotas.fieldbyname('CREESTID').AsString  :=xEstId;
      DM1.cdsDcuotas.fieldbyname('CREESTADO').AsString :=DM1.CrgDescrip('ESTID='+QuotedStr(Trim(xEstId)),'CRE113','ESTDES');
    End
 Else
     Begin
      DM1.cdsDcuotas.fieldbyname('CREESTID').AsString  :=xEstId;
      DM1.cdsDcuotas.fieldbyname('CREESTADO').AsString :=xEstCuo;
    End;


 If (xFrmPag='18') And (xExceso>0) Then
    Begin
       DM1.cdsDcuotas.fieldbyname('CREMTOEXC').AsCurrency :=DM1.cdsDcuotas.fieldbyname('CREMTOEXC').AsCurrency + xExceso;
       DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency + xCuotaApl + xExceso;
    End
 Else
    Begin
       DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency + xCuotaApl;
    End;
 If xEstado>1 Then
    DM1.cdsDcuotas.fieldbyname('CRESALDO').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency
 Else
    DM1.cdsDcuotas.fieldbyname('CRESALDO').AsCurrency := 0;

 If DM1.xSal='RP' Then
    DM1.cdsDcuotas.fieldbyname('CREFPAG').AsDateTime := DM1.FechasOutPut(DM1.FechaSys)
 Else
    DM1.cdsDcuotas.fieldbyname('CREFPAG').AsDateTime := DM1.FechasOutPut(DtpFecPag.Date);

 DM1.cdsDcuotas.fieldbyname('FLGPAG').AsString := xFlg;
 DM1.cdsDcuotas.fieldbyname('TCAMBIO').AsCurrency  := StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys));
 DM1.cdsDcuotas.fieldbyname('CREMONLOC').AsCurrency  := DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency ;
 DM1.cdsDcuotas.fieldbyname('CREMONEXT').AsCurrency  := DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency / StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys));
 If DM1.xSal='RP' Then
    Begin
      DM1.cdsDcuotas.fieldbyname('CREDOCPAG').AsString  := fRepCronog.xNroAbonoRef;
      DM1.cdsDcuotas.fieldbyname('NROOPE').AsString     := fRepCronog.xNroAbonoRef;
    End
 Else
    Begin
      If xFrmPag ='03' Then
        Begin
           DM1.cdsDcuotas.fieldbyname('CREDOCPAG').AsString  := Trim(EdtPreBco.Text+EdtDocPag.Text) ;
           DM1.cdsDcuotas.fieldbyname('NROOPE').AsString     := Trim(EdtPreBco.Text+EdtDocPag.Text) ;
        End
      Else
        Begin
           DM1.cdsDcuotas.fieldbyname('CREDOCPAG').AsString  := Trim(EdtDocPag.Text) ;
           DM1.cdsDcuotas.fieldbyname('NROOPE').AsString     := Trim(EdtDocPag.Text) ;
        End;
    End;

 If xFlg='P' Then DM1.cdsDcuotas.fieldbyname('FLGINT').AsString     :='S';
 DM1.cdsDcuotas.fieldbyname('FOPERAC').AsDateTime := DM1.FechaSys;
 xSldApli:=DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency ;
 If xVen='S' Then
    DistCuotaPag(xSldApli,1,xFrmPag)
 Else
    DistCuotaPag(xSldApli,0,xFrmPag);
end;

procedure TfNPago.DistCuotaPag(xCuotaApl: Currency ; xEstado: Integer ; xFrmPag : String);
var sUno,sDos:Currency;
begin
sUno := 0.00 ; sDos := 0.00 ;
If xEstado>0 Then
   Begin
     If xCuotaApl > DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency Then
        Begin
          DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency;
          sUno := xCuotaApl - DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency;
          If sUno > DM1.cdsDcuotas.fieldbyname('CREINTERES').AsCurrency Then
             Begin
                DM1.cdsDcuotas.fieldbyname('CREMTOINT').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREINTERES').AsCurrency ;
                sDos := sUno - DM1.cdsDcuotas.fieldbyname('CREINTERES').AsCurrency;
                If sDos > DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency Then
                   Begin
                     DM1.cdsDcuotas.fieldbyname('CRECAPITAL').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency ;
                   End
                Else
                   Begin
                     DM1.cdsDcuotas.fieldbyname('CRECAPITAL').AsCurrency := sDos;
                   End;
             End
          Else
             Begin
                DM1.cdsDcuotas.fieldbyname('CREMTOINT').AsCurrency := sUno ;
             End;
        End
     Else
       Begin
           DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency := xCuotaApl ;
       End;
   End
Else
If xFrmPag='27' Then
   Begin
      xCuotaApl := xCuotaApl + DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency;
      DM1.cdsDcuotas.fieldbyname('CREMTOINT').AsCurrency:=0.00;
      DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency:=0.00;
      If xCuotaApl > DM1.cdsDcuotas.fieldbyname('CRECAPITAL').AsCurrency Then
         Begin
           DM1.cdsDcuotas.fieldbyname('CRECAPITAL').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency ;
         End
      Else
         Begin
           DM1.cdsDcuotas.fieldbyname('CRECAPITAL').AsCurrency:= xCuotaApl ;
         End;

   End
Else
   Begin
        Begin
            DM1.cdsDcuotas.fieldbyname('CREMTOINT').AsCurrency:=0.00;
            If xCuotaApl > DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency Then
               Begin
                   DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency;
                   sUno := xCuotaApl - DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency;
                   If sUno > DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency Then
                      Begin
                         DM1.cdsDcuotas.fieldbyname('CRECAPITAL').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency ;
                      End
                   Else
                      Begin
                         DM1.cdsDcuotas.fieldbyname('CRECAPITAL').AsCurrency := sUno;
                      End;
               End
            Else
               Begin
                    DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency:= xCuotaApl ;
               End;
        End;
   End;

end;

procedure TfNPago.InsertaDetPagos(xCuotaApl, xExceso: Currency; xEstado: Integer; xEstAnt, xDesAnt, xFrmPag, xCnd: String);
var xFlgPag:Char;
    xFecCal,xAnoMes,xSql:String;
    sUno,sDos,xSaldo:Currency;
begin
DM1.cdsDetalle.Insert;
DM1.cdsDetalle.fieldbyname('CIAID').AsString := '02' ;
DM1.cdsDetalle.fieldbyname('ASOID').AsString := DM1.cdsDcuotas.fieldbyname('ASOID').AsString;
DM1.cdsDetalle.fieldbyname('ASOCODMOD').AsString := DM1.cdsDcuotas.fieldbyname('ASOCODMOD').AsString;
DM1.cdsDetalle.fieldbyname('ASOCODAUX').AsString := DM1.cdsDcuotas.fieldbyname('ASOCODAUX').AsString;
DM1.cdsDetalle.fieldbyname('USEID').AsString := DM1.cdsDcuotas.fieldbyname('USEID').AsString;
DM1.cdsDetalle.fieldbyname('TIPCREID').AsString := DM1.cdsDcuotas.fieldbyname('TIPCREID').AsString ;
DM1.cdsDetalle.fieldbyname('CREDID').AsString := DM1.cdsDcuotas.fieldbyname('CREDID').AsString ;
DM1.cdsDetalle.fieldbyname('CRECUOTA').AsFloat:=DM1.cdsDcuotas.fieldbyname('CRECUOTA').AsFloat;
DM1.cdsDetalle.fieldbyname('CREMTOCUO').AsFloat:=DM1.cdsDcuotas.fieldbyname('CREMTO').AsFloat;
DM1.cdsDetalle.fieldbyname('CREMONLOC').AsFloat := xCuotaApl + xExceso;
DM1.cdsDetalle.fieldbyname('CREMONEXT').AsFloat := (xCuotaApl + xExceso) / StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys));
DM1.cdsDetalle.fieldbyname('CREMTOCOB').AsFloat := xCuotaApl + xExceso ;
DM1.cdsDetalle.fieldbyname('CREMTOEXC').AsFloat := xExceso ;
   If DM1.xSal='RP' Then DM1.cdsDetalle.fieldbyname('CREFPAG').AsDateTime := DM1.FechasOutPut(DM1.FechaSys) Else  DM1.cdsDetalle.fieldbyname('CREFPAG').AsDateTime := DM1.FechasOutPut(DtpFecPag.Date);
DM1.cdsDetalle.fieldbyname('TMONID').AsString:= 'N';
If DM1.xGrabaExc='N' Then
Begin
   If DM1.xSal='RP' Then  xFecCal:= Trim(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)),7,4)+Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)),4,2)) Else   xFecCal:= Trim(Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)),7,4)+Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)),4,2));
xAnoMes:=DM1.cdsDcuotas.fieldbyname('CREANO').AsString+DM1.cdsDcuotas.fieldbyname('CREMES').AsString;
sUno := 0.00 ; sDos := 0.00 ;
  If (StrToInt(xFecCal)>=StrToInt(xAnoMes)) Or (xCnd='0') Then
   Begin
     If xCuotaApl > DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency Then
        Begin
          DM1.cdsDetalle.fieldbyname('CREFLAT').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency;
          sUno := xCuotaApl - DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency;
          If sUno > DM1.cdsDcuotas.fieldbyname('CREINTERES').AsCurrency Then
             Begin
                DM1.cdsDetalle.fieldbyname('CREINTERES').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREINTERES').AsCurrency ;
                sDos := sUno - DM1.cdsDcuotas.fieldbyname('CREINTERES').AsCurrency;
                If sDos > DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency Then
                   Begin
                     DM1.cdsDetalle.fieldbyname('CREAMORT').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency ;
                   End
                Else
                   Begin
                     DM1.cdsDetalle.fieldbyname('CREAMORT').AsCurrency := sDos;
                   End;
             End
          Else
             Begin
                DM1.cdsDetalle.fieldbyname('CREINTERES').AsCurrency := sUno ;
             End;
        End
     Else
       Begin
           DM1.cdsDetalle.fieldbyname('CREFLAT').AsCurrency := xCuotaApl ;
       End;
   End
  Else
   Begin
   If xFrmPag='27' Then
      Begin
            xCuotaApl := xCuotaApl + DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency;
            DM1.cdsDetalle.fieldbyname('CREINTERES').AsCurrency:=0.00;
            DM1.cdsDetalle.fieldbyname('CREFLAT').AsCurrency:=0.00;
            If xCuotaApl > DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency Then
               Begin
                 DM1.cdsDetalle.fieldbyname('CREAMORT').AsCurrency := xCuotaApl ; // DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency;
               End
            Else
               Begin
                 DM1.cdsDetalle.fieldbyname('CREAMORT').AsCurrency:= xCuotaApl ;
               End;
      End
   Else
        Begin
            DM1.cdsDetalle.fieldbyname('CREINTERES').AsCurrency:=0.00;
            If xCuotaApl > DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency Then
               Begin
                   DM1.cdsDetalle.fieldbyname('CREFLAT').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency;
                   sUno := xCuotaApl - DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency;
                   If sUno > DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency Then
                      Begin
                          DM1.cdsDetalle.fieldbyname('CREAMORT').AsCurrency := DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency ;
                      End
                   Else
                      Begin
                          DM1.cdsDetalle.fieldbyname('CREAMORT').AsCurrency := sUno;
                      End;
               End
            Else
               Begin
                    DM1.cdsDetalle.fieldbyname('CREFLAT').AsCurrency:= xCuotaApl ;
               End;
        End;

   End;
  End
Else
  Begin
   DM1.cdsDetalle.fieldbyname('CREAMORT').AsCurrency := 0;
   DM1.cdsDetalle.fieldbyname('CREFLAT').AsCurrency :=  0;
   DM1.cdsDetalle.fieldbyname('CREINTERES').AsCurrency :=0 ;
  End;


If xFrmPag='18' Then
Begin
   xSaldo:= DM1.cdsCEdu.FieldByName('IMPORTE').AsCurrency - DM1.Valores(EdtMonCob.Text);
   DM1.cdsCEdu.Edit;
   DM1.cdsCEdu.FieldByName('IMPORTE').AsCurrency :=xSaldo;
   DM1.cdsDetalle.fieldbyname('FOPERACTMP').AsString :=DM1.cdsCEdu.FieldByName('FOPERACTMP').AsString;
   DM1.cdsDetalle.fieldbyname('NROOPETMP').AsString  :=DM1.cdsCEdu.FieldByName('NROOPETMP').AsString;
   If xSaldo<=0 Then
      Begin
         xSQL:='UPDATE COB332 SET FL_EXISTE=''S'',FL_CTACTE=''S'',FL_NODEST=NULL,FL_NOORIG=NULL,FL_COBSS=NULL  WHERE APOSEC ='+QuotedStr(Trim(DM1.cdsCEdu.FieldByName('APOSEC').AsString))+' And ASONCTA='+QuotedStr(Trim(DM1.cdsCEdu.FieldByName('ASONCTA').AsString));
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         DM1.cdsCEdu.Delete;
      End;
   DM1.cdsCEdu.ApplyUpdates(0);
   DM1.cdsCEdu.Close;
   EdtMonCob.ReadOnly := True;
End;


DM1.cdsDetalle.fieldbyname('TCAMBIO').AsFloat := StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys));
DM1.cdsDetalle.fieldbyname('USUARIO').AsString := DM1.wUsuario;
DM1.cdsDetalle.fieldbyname('FREG').AsDateTime := DM1.FechaSys;
DM1.cdsDetalle.fieldbyname('UPROID').AsString := DM1.cdsDcuotas.fieldbyname('UPROID').AsString ;
DM1.cdsDetalle.fieldbyname('DPTOID').AsString := DM1.cdsDcuotas.fieldbyname('DPTOID').AsString ;
DM1.cdsDetalle.fieldbyname('UPAGOID').AsString := DM1.cdsDcuotas.fieldbyname('UPAGOID').AsString ;
If DM1.xSal<>'RP' Then
   Begin
     DM1.cdsDetalle.fieldbyname('BANCOID').AsString := Trim(DBLCBanco.Text) ;
     DM1.cdsDetalle.fieldbyname('CCBCOID').AsString := Trim(DBLCuenta.Text) ;
     DM1.cdsDetalle.fieldbyname('CREOBS').AsString := Trim(mObsPag.Lines.Text);
   End;
DM1.cdsDetalle.fieldbyname('ASOAPENOM').AsString := DM1.cdsDcuotas.fieldbyname('ASOAPENOM').AsString ;
DM1.cdsDetalle.fieldbyname('CIUDID').AsString := DM1.cdsAso.fieldbyname('CIUDID').AsString ;
DM1.cdsDetalle.fieldbyname('CREANO').AsString := DM1.cdsDcuotas.fieldbyname('CREANO').AsString ;
DM1.cdsDetalle.fieldbyname('CREMES').AsString := DM1.cdsDcuotas.fieldbyname('CREMES').AsString ;
DM1.cdsDetalle.fieldbyname('AREAID').AsString := DM1.xArea;
If DM1.xSal<>'RP' Then
   DM1.cdsDetalle.fieldbyname('FORPAGABR').AsString := DM1.CrgDescrip('FORPAGOID='+QuotedStr(Trim(DBLCTipCob.Text)),'COB101','FORPAGOABR')
Else
   DM1.cdsDetalle.fieldbyname('FORPAGABR').AsString := DM1.CrgDescrip('FORPAGOID='+QuotedStr(xFrmPag),'COB101','FORPAGOABR');

DM1.cdsDetalle.fieldbyname('TRANSINTID').AsString := 'CUO';
If DM1.xSal<>'RP' Then
   DM1.cdsDetalle.fieldbyname('FORPAGID').AsString := Trim(DBLCTipCob.Text)
Else
   DM1.cdsDetalle.fieldbyname('FORPAGID').AsString := xFrmPag;

DM1.cdsDetalle.fieldbyname('CREESTID').AsString := DM1.cdsDcuotas.fieldbyname('CREESTID').AsString ;
DM1.cdsDetalle.fieldbyname('CREESTADO').AsString := DM1.cdsDcuotas.fieldbyname('CREESTADO').AsString ;
DM1.cdsDetalle.fieldbyname('FOPERAC').AsDateTime := DM1.FechaSys;
DM1.cdsDetalle.fieldbyname('HREG').AsString := DateToStr(DM1.FechaSys)+DM1.HoraSys;
DM1.cdsDetalle.fieldbyname('CREESTANT').AsString := xEstAnt;
DM1.cdsDetalle.fieldbyname('CREESTANTDES').AsString := xDesAnt;
If DM1.xSal<>'RP' Then
   Begin
     If xFrmPag ='03' Then
        Begin
          DM1.cdsDetalle.fieldbyname('CREDOCPAG').AsString :=Trim(EdtPreBco.Text+EdtDocPag.Text) ;
          DM1.cdsDetalle.fieldbyname('NROOPE').AsString :=Trim(EdtPreBco.Text+EdtDocPag.Text) ;
        End
     Else
        Begin
          DM1.cdsDetalle.fieldbyname('CREDOCPAG').AsString :=Trim(EdtDocPag.Text) ;
          DM1.cdsDetalle.fieldbyname('NROOPE').AsString :=Trim(EdtDocPag.Text) ;
        End;
   End
Else
   Begin
     DM1.cdsDetalle.fieldbyname('CREDOCPAG').AsString :=fRepCronog.xNroAbonoRef;
     DM1.cdsDetalle.fieldbyname('NROOPE').AsString :=fRepCronog.xNroAbonoRef;
     DM1.cdsDetalle.fieldbyname('NRONABO').AsString :=fRepCronog.xNroAbonoRef;
   End;


DM1.cdsDetalle.fieldbyname('OFDESID').AsString := DM1.xOfiDes;
DM1.cdsDetalle.fieldbyname('PERCONTA').AsString := Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2);
DM1.cdsDetalle.fieldbyname('CNTANOMM').AsString := Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2);
If DM1.xSal<>'RP' Then
  DM1.cdsDetalle.fieldbyname('TIPOCONT').AsString := DM1.CrgDescrip('IDCONT='+QuotedStr(Trim(DBLCTipCob.Text)),'COB804','TIPOCONT')
Else
  DM1.cdsDetalle.fieldbyname('TIPOCONT').AsString := DM1.CrgDescrip('IDCONT='+QuotedStr(xFrmPag),'COB804','TIPOCONT');

If DM1.xGrabaExc='S' Then  Begin DM1.cdsDetalle.fieldbyname('CREMTOEXC').AsCurrency  := xCuotaApl; DM1.cdsDetalle.fieldbyname('TRANSINTID').AsString := 'EXC';    End;
end;

procedure TfNPago.ActualizaCrono(xAsoId, xCreDid: String);
Var xCrecapital,xCremtoint,xCremtoflat,xCremtocob,xCremto:Currency ;
    xRegistro: TBookmark;
begin
     DM1.CargaCronograma(xAsoId, xCreDid);
     xCrecapital:=0;xCremtoint:=0;xCremtoflat:=0;xCremtocob:=0;xCremto:=0;
     DM1.cdsCuotas.First;
     While Not DM1.cdsCuotas.Eof do
     Begin
        xCrecapital:=  xCrecapital + DM1.cdsCuotas.fieldbyname('CRECAPITAL').AsCurrency;
        xCremtoint :=  xCremtoint  + DM1.cdsCuotas.fieldbyname('CREMTOINT').AsCurrency;
        xCremtoflat:=  xCremtoflat + DM1.cdsCuotas.fieldbyname('CREMTOFLAT').AsCurrency;
        xCremtocob :=  xCremtocob  + DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency;
        xCremto    :=  xCremto     + DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency;
        DM1.cdsCuotas.Next;
     End;
fCronoPag.dtgPagos.ColumnByName('CREFVEN').FooterValue :='Total';
fCronoPag.dtgPagos.ColumnByName('CRECAPITAL').FooterValue := FloatToStrF(xCrecapital,ffNumber, 10, 2);
fCronoPag.dtgPagos.ColumnByName('CREMTOINT').FooterValue := FloatToStrF(xCremtoint,ffNumber, 10, 2);
fCronoPag.dtgPagos.ColumnByName('CREMTOFLAT').FooterValue := FloatToStrF(xCremtoflat,ffNumber, 10, 2);
fCronoPag.dtgPagos.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtocob,ffNumber, 10, 2);
fCronoPag.dtgPagos.ColumnByName('CREMTO').FooterValue := FloatToStrF(xCremto,ffNumber, 10, 2);
xRegistro:=DM1.cdsSolicitud.GetBookmark;
DM1.AplicaSaldoPre(xAsoId, xCreDid);
DM1.cdsSolicitud.GotoBookmark(xRegistro);
end;

procedure TfNPago.DistExcesos(xAsoId:String; xCuotaApl: Currency);
Var xSql,xCreDid,xCreCuota:String;
    xValor,xAplExc:Currency;
begin
xSql:='SELECT CREDID,CRECUOTA,CREFPAG,CREMTOCOB,CREMTOEXC,CREAPLEXC FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND  CREMTOEXC>0 AND CREAPLEXC<CREMTOEXC AND CREESTID NOT IN (''04'',''13'') ORDER BY CREDID,CRECUOTA';
DM1.cdsQry.Close;
DM1.cdsQry.DataRequest(xSql);
DM1.cdsQry.Open;
If DM1.cdsQry.RecordCount > 0 Then
   Begin
      DM1.cdsQry.First;
      While Not DM1.cdsQry.Eof Do
      Begin
         If xCuotaApl>0 Then
           xValor:=DM1.cdsQry.FieldByName('CREMTOEXC').AsCurrency-DM1.cdsQry.FieldByName('CREAPLEXC').AsCurrency;
           If xValor <= xCuotaApl  Then
               Begin
                 DM1.cdsQry.Edit;
                 DM1.cdsQry.FieldByName('CREAPLEXC').AsCurrency:=DM1.cdsQry.FieldByName('CREAPLEXC').AsCurrency+xValor;
                 xCuotaApl:=xCuotaApl-xValor;
               End
           Else
               Begin
                 DM1.cdsQry.Edit;
                 DM1.cdsQry.FieldByName('CREAPLEXC').AsCurrency:=DM1.cdsQry.FieldByName('CREAPLEXC').AsCurrency+xCuotaApl;
                 xCuotaApl:=0;
               End;
         DM1.cdsQry.Next;
      End;
   End;
DM1.cdsQry.ApplyUpdates(0);
DM1.cdsQry.Close;
xSql:='SELECT ASOID,CREDID,CRECUOTA,SUM(CREAPLEXC) AS CREAPLEXC FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND  CREMTOEXC>0 AND CREESTID NOT IN (''04'',''13'') GROUP BY ASOID,CREDID,CRECUOTA';
DM1.cdsQry.DataRequest(xSql);
DM1.cdsQry.Open;
If DM1.cdsQry.RecordCount > 0 Then
   DM1.cdsQry.First;
   While Not DM1.cdsQry.Eof Do
   Begin
      xCreDid  := DM1.cdsQry.FieldByName('CREDID').AsString;
      xCreCuota:= DM1.cdsQry.FieldByName('CRECUOTA').AsString;
      xAplExc  := DM1.cdsQry.FieldByName('CREAPLEXC').AsCurrency;
      GrbAplExc(xAsoId,xCreDid,xCreCuota,xAplExc);
      DM1.cdsQry.Next
   End;
DM1.cdsQry.Close;
end;

procedure TfNPago.EnabDocto(xFrm: String);
begin
Case StrToInt(xFrm) Of
     2:Begin
         DtpFecPag.Date := DM1.FechaSys;
         DtpFecPag.Enabled := False;
         EdtDocPag.Enabled := False;
       End;
     6:Begin
         DtpFecPag.Date := DM1.FechaSys;
         DtpFecPag.Enabled := False;
         EdtDocPag.Enabled := False;
       End;
    18:Begin
         EdtMonCob.ReadOnly:=True;
         BitTel.Enabled := False;
       End
Else
  Begin
    EdtDocPag.Enabled := True;
    DtpFecPag.Enabled := True;
    DtpFecPag.Date := 0;
  End;

End;

end;

procedure TfNPago.EdtMonPagDblClick(Sender: TObject);
begin
EdtMonCob.Text :=EdtMonPag.Text;
end;

procedure TfNPago.GrabaFExce(xAsoId, xCreDid, xCreCuota, xCnd, xFrmPag,xFecCalculo: String; xAplicar: Currency);
var xEstAnt, xEstDes, xSQL :String;
begin
 DM1.cdsDcuotas.Close;
 DM1.cdsDcuotas.DataRequest('SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,          ' +
                                    'CRECUOTA,CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID,  ' +
                                    'UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT,     ' +
                                    'USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL,      ' +
                                    'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR,          ' +
                                    'CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, CIAID, CREESTID, CREESTADO,                 ' +
                                    'CREMTOGADM, ASOCODAUX, NRONABO, CIUDID, FLGPAG,CREDIDNABO, CREMTOEXC, AREAID,CREDOCPAG    ' +
                                    'FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And CRECUOTA='+xCreCuota+' And  CREESTID IN (''21'',''23'',''13'',''12'',''04'',''24'',''26'') ') ;
 DM1.cdsDcuotas.Open;
 If DM1.cdsDcuotas.RecordCount>1 Then
    Begin
       MessageDlg('Operación Inconsistente Comuniquese Con Sistemas...!', mtError,[mbOk],0);
       DM1.cdsDcuotas.Close;
       Exit;
    End;
 DM1.cdsDetalle.Close;
 DM1.cdsDetalle.DataRequest('SELECT CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,         ' +
                                    'CREMONLOC,CREMONEXT,CREMTOCOB,CREFPAG,TMONID,CREAMORT,CREINTERES,CREDOCPAG,    ' +
                                    'CREFLAT,TCAMBIO,USUARIO,FREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,HREG,        ' +
                                    'ASOAPENOM,CIUDID,CREOBS,CREANO,CREMES,AREAID,FORPAGABR,TRANSINTID, FORPAGABR , ' +
                                    'FORPAGID,CREESTID,CREESTADO,FOPERAC,CREESTANT,CREESTANTDES,CREMTOCUO,NROOPE,   ' +
                                    'PERCONTA,CREMTOEXC,CREAPLEXC,CNTANOMM,TIPOCONT,FOPERACTMP,NROOPETMP,CNTFLAG,OFDESID FROM CRE310 Where ASOID ='+QuotedStr(Trim(xAsoId)));

 DM1.cdsDetalle.Open;

 If xAplicar>0 Then
    Begin
      xEstAnt:=Trim(DM1.cdsDcuotas.fieldbyname('CREESTID').AsString);
      xEstDes:=Trim(DM1.cdsDcuotas.fieldbyname('CREESTADO').AsString);
      DM1.cdsDcuotas.Edit;
      DM1.cdsDcuotas.fieldbyname('CREMTOEXC').AsCurrency  := DM1.cdsDcuotas.fieldbyname('CREMTOEXC').AsCurrency + xAplicar;
      InsertaDetPagos(xAplicar,0,1,xEstAnt,xEstDes,xFrmPag,xCnd);
      DM1.cdsDcuotas.ApplyUpdates(0) ; DM1.cdsDetalle.ApplyUpdates(0);
    End;
    DM1.cdsDcuotas.Close;  DM1.cdsDetalle.Close;
    xSQL:='UPDATE CRE302 SET CREMTOEXC=(SELECT SUM(NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0)) FROM CRE310 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CRECUOTA='+QuotedStr(xCreCuota)+' GROUP BY ASOID,CREDID,CRECUOTA) WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CRECUOTA='+QuotedStr(xCreCuota);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    Close;
end;

procedure TfNPago.DBLCTipCobExit(Sender: TObject);
begin
If Length(Trim(EdtForPago.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar Una Forma De Pago ', mtError,[mbOk],0);
      DBLCTipCob.SetFocus;
   End;

If DtpFecPag.Enabled = True Then
     DtpFecPag.SetFocus;


end;

procedure TfNPago.DtpFecPagExit(Sender: TObject);
var xAsoId,xCredId,xCreCuota,xfCalc:String;
    xSaldoP:Currency;
begin
If DtpFecPag.Text = '' Then
   Begin
     GrpGrabar.Enabled := False;
     MessageDlg('La Fecha De Documento Es Un Dato Obligatorio', mtError,[mbOk],0);
     DtpFecPag.SetFocus;
   End
Else
   Begin
     GrpGrabar.Enabled := True;
     xfCalc  := Trim(Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)),7,4)+Copy(DateToStr(DM1.FechasOutPut(DtpFecPag.Date)),4,2));
     xAsoId:=DM1.cdsCuotas.FieldByName('ASOID').AsString;
     xCredId:=DM1.cdsCuotas.FieldByName('CREDID').AsString;
     xCreCuota:=DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
     xSaldoP:=DM1.CalSalPag(xAsoid, xCreDid, xfCalc, xCrecuota, DM1.xCnd, Trim(DBLCTipCob.Text));
     EdtMonPag.Text := FormatFloat('###,###.#0',xSaldoP);
     If xSaldoP=0 Then DM1.xGrabaExc:='S' Else DM1.xGrabaExc:='N' ;
     If Trim(DBLCTipCob.text)='06' Then
        Begin
           xAsoId    :=DM1.cdsCuotas.FieldByName('ASOID').AsString;
           xCredId   :=DM1.cdsCuotas.FieldByName('CREDID').AsString;
           EdtForPago.Text  := DM1.cdsFormaPago.fieldbyname('FORPAGODES').AsString ;
           EdtMonExc.Text := FormatFloat('###,###.#0',CalcExceso(xAsoId, xCredId));
           If DM1.Valores(EdtMonExc.Text) >= DM1.Valores(EdtMonPag.Text) Then
              EdtMonCob.Text:= EdtMonPag.Text
            Else
              EdtMonCob.Text:= EdtMonExc.Text;

              LblExceso.Enabled := True; EdtMonExc.Enabled := True; EdtMonCob.ReadOnly := True; BitTel.Enabled:=False;
              EdtMonPag.SetFocus;
        End
     Else
        Begin
              EdtMonExc.Text := FormatFloat('###,###.#0',0);
              EdtMonCob.ReadOnly := False; LblExceso.Enabled := False; EdtMonExc.Enabled := False;
              BitTel.Enabled:=False;
              If Trim(DBLCTipCob.text)='18' Then
                 Begin
                   EdtMonCob.ReadOnly := True;
                   BitTel.Enabled:=True;
                 End;
        End;
     If xSaldoP=0 Then Exit;
     EdtMonPag.SetFocus;
   End;
end;

procedure TfNPago.DtpFecPagKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
   DtpFecPag.OnExit(DtpFecPag);
end;

procedure TfNPago.BitTelClick(Sender: TObject);
Var xApoSec,sSql:String;
begin
xApoSec:=Trim(DM1.cdsCuotas.FieldByname('CREANO').AsString)+Trim(DM1.cdsCuotas.FieldByname('CREMES').AsString);
sSql:='SELECT ASOID,ASOAPENOM,ASONCTA,IMPORTE,FOPERACTMP,NROOPETMP FROM COB340 WHERE APOSEC='+QuotedStr(xApoSec)+' ORDER BY ASOAPENOM';
DM1.cdsCEdu.Close;
DM1.cdsCEdu.DataRequest(sSql);
DM1.cdsCEdu.Open;
TNumericField(DM1.cdsCEdu.fieldbyname('IMPORTE')).DisplayFormat:='###,###.#0';
fIncTel:=Nil;
fIncTel := tfIncTel.Create(Self);
fIncTel.Caption :='Inconsistencia De TeleAhorros '+DM1.DesMes(StrToInt(Copy(xApoSec,5,2)),'N')+'-'+Copy(xApoSec,1,4);
fIncTel.EdtMaestro.Text:= DM1.cdsAso.FieldByName('ASOID').AsString;
fIncTel.Showmodal;
fIncTel.Free;

end;

procedure TfNPago.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM1.cdsFormaPago.Close;
end;

procedure TfNPago.GrbAplExc(xAsoId, xCreDid, xCreCuota: String ; xAplExc:Currency);
Var xSql:String;
begin
 xSql:='SELECT ASOID,CREDID,CRECUOTA,CREAPLEXC FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And CRECUOTA='+xCreCuota ;
 DM1.cdsClaseAux.DataRequest(xSql);
 DM1.cdsClaseAux.Open;
 DM1.cdsClaseAux.Edit;
 DM1.cdsClaseAux. FieldByName('CREAPLEXC').AsCurrency:=xAplExc;
 DM1.cdsClaseAux.ApplyUpdates(0);
 DM1.cdsClaseAux.Close;
end;

procedure TfNPago.DBLCuentaExit(Sender: TObject);
begin
If Trim(DM1.CrgDescrip('CIAID=''02'' AND BANCOID='+QuotedStr(Trim(DBLCBanco.Text))+' AND CCBCOID='+QuotedStr(Trim(DBLCuenta.Text)),'TGE106','CCBCOID')) <> Trim(DBLCuenta.Text) Then
   Begin
      MessageDlg('Cuenta De Banco No Es Valida', mtError,[mbOk],0);
      DBLCuenta.SetFocus;
   End;

end;

procedure TfNPago.DBLCuentaChange(Sender: TObject);
begin
  EdtPreBco.Text  := DM1.cdsCtasBco.fieldbyname('CPTOID').AsString ;
  EdtPreBcoVer.Text := EdtPreBco.Text ;

end;

procedure TfNPago.EdtDocPagKeyPress(Sender: TObject; var Key: Char);
begin
If Trim(DBLCTipCob.text)='03' Then
   Begin
     If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
        Key :=#0;
   End;
end;



function TfNPago.ValidaIngresoBancos(xAsoId, xCreDocPag, xCrefPag: String): String;
var xSQL:String;
begin
  xSQL:='SELECT ASOID,CREFPAG,CREDOCPAG,USUARIO,HREG FROM CRE310 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDOCPAG='+QuotedStr(xCreDocPag)+' AND CREFPAG='+QuotedStr(xCrefPag)+' AND CREESTID NOT IN (''04'',''13'') AND FORPAGID=''03'' ';
  DM1.cdsConvenio.Close;
  DM1.cdsConvenio.DataRequest(xSQL);
  DM1.cdsConvenio.Open;
  If DM1.cdsConvenio.RecordCount > 0 Then
     Result:=DM1.cdsConvenio.FieldByName('USUARIO').AsString+'  Fecha y Hora  :  '+DM1.cdsConvenio.FieldByName('HREG').AsString
  Else
     Result:='';

  DM1.cdsConvenio.Close;
end;

procedure TfNPago.EdtMonCobVerExit(Sender: TObject);
begin
If Length(Trim(EdtMonCobVer.Text))=0 Then
   Begin
     EdtMonCobVer.Text:='0.00' ;
   End;
EdtMonCobVer.Text :=FormatFloat('###,###.00',DM1.Valores(EdtMonCobVer.Text));
bitgrabar.SetFocus;

end;

procedure TfNPago.EdtMonCobVerKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

end.







