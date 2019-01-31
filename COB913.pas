unit COB913;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, wwdblook,
  Mask, wwdbedit, Wwdbspin, DB;

type
  TfRepCronog = class(TForm)
    GroupBox1: TGroupBox;
    dtgNotaAbono: TwwDBGrid;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitSalir: TBitBtn;
    lblAsociado: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    lblSaldo: TLabel;
    Label3: TLabel;
    lblCreditos: TLabel;
    DBLCTipCob: TwwDBLookupCombo;
    Panel2: TPanel;
    EdtForPago: TEdit;
    Label4: TLabel;
    BitGrabar: TBitBtn;
    DBLCTipC: TwwDBLookupCombo;
    Panel3: TPanel;
    EdtTipCob: TEdit;
    dbsNumCuotas: TwwDBSpinEdit;
    lblCuo01: TLabel;
    lblCuo02: TLabel;
    BitCalcular: TBitBtn;
    GroupBox4: TGroupBox;
    dbeCuotas: TwwDBEdit;
    chkMesInicio: TCheckBox;
    GroupBox5: TGroupBox;
    dbeSaldo: TwwDBEdit;
    BitLote: TButton;
    procedure BitSalirClick(Sender: TObject);
    procedure DBLCTipCobChange(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure DBLCTipCChange(Sender: TObject);
    procedure BitCalcularClick(Sender: TObject);
    procedure DBLCTipCExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure dbsNumCuotasChange(Sender: TObject);
    procedure BitLoteClick(Sender: TObject);
  private
    { Private declarations }

    function PerVenc(xAsoId, xCreDid ,xCreNumCuo : String ): String;
    function NumCuotas(xAsoId, xCreDid : String ): Integer;
    function AbonoCuotas(xAsoId,xCreDid:String): Currency;
    function AbonoCuotas_AR(xAsoId,xCreDid:String): Currency;
    function GrbCorrelatRef(xConsulta:String):String;
    function GrbCorrelatCredRef(xCondicion, xTipos:String):String;
    procedure GrabaPrestamoRef(xAsoId,xCreDid:String);
    function LimpiaCds(xAsoId,xCreDid:String): Currency;
  public
    { Public declarations }
    xNroAbonoRef,xCreditoIdRef:String;
  end;

var
  fRepCronog: TfRepCronog;

implementation

uses COBDM1, COB904;

{$R *.dfm}

procedure TfRepCronog.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfRepCronog.DBLCTipCobChange(Sender: TObject);
begin
   If DM1.cdsFormaPago.Locate('ID',VarArrayof([DBLCTipCob.Text]),[]) Then
      Begin
        EdtForPago.Text  := DM1.cdsFormaPago.fieldbyname('DESCRIPCION').AsString ;
        lblSaldo.Caption :=FormatFloat('###,###.#0',0);
        BitGrabar.Enabled := False;
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

procedure TfRepCronog.BitGrabarClick(Sender: TObject);
Var Boton:Integer;
    xAsoId,xCreDid,xMensaje,xYear,xConsulta,xTipo,xTipos,xCondicion,xSQL,xfVenc,xEstAnt,xEstDes,xFecCalCulo,xTipPag,xMens :String;
    Year, Month, Day : Word;
    xAplicar,xSaldo,xCuota,xAmoPag,xIntPag,xGasPag:Currency;
begin
xMensaje:=' ¿ Está Seguro Que Desea Generar y Grabar Esta '+Trim(EdtForPago.Text)+' ? ';
Boton := Application.MessageBox (pChar(xMensaje) ,'Reprogramación De Cronogramas',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin
      DM1.xSal:='RP';
      Screen.Cursor:=crHourGlass;
      DecodeDate(DM1.FechaSys, Year, Month, Day);
      xYear:=Trim(Copy(DateToStr(DM1.FechaSys),7,4));
      xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;
      xCreDid:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
      xTipos:=Trim(DM1.xOfiDes)+Trim(xYear)+Copy(xCreDid,7,2);
      xfecCalculo  := Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
      xCondicion:='CREAREA='+QuotedStr('CRE')+' And CORREANO='+QuotedStr(Trim(xYear))+' And SubStr(CREDID,1,8)='+QuotedStr(xTipos)+' And TIPOCOB='+QuotedStr('1') ;
      xCreditoIdRef:=GrbCorrelatCredRef(xCondicion,xTipos);
      If Length(Trim(xCreditoIdRef))=0 Then
         Begin
           Screen.Cursor:=crDefault;
           MessageDlg(' <<<  A T E N C I O N  >>>   NO SE GENERO CORRELATIVO COMUNIQUESE CON SISTEMAS !!!!!  ', mtError,[mbOk],0);
           Exit;
         End;
      xTipo:=Copy(Trim(EdtForPago.Text),1,1);
      xConsulta:='CREAREA='+QuotedStr('COB')+' AND CORREANO='+QuotedStr(Trim(xYear))+' AND TIPO='+QuotedStr(xTipo);
      xNroAbonoRef:=GrbCorrelatRef(xConsulta);
      xAplicar:=DM1.Valores(lblSaldo.Caption);
       //En Cre302
      DM1.cdsDcuotas.Close;
      DM1.cdsDcuotas.DataRequest('SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,' +
                     'CRECUOTA,CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN,CREFVENINI, CREFPAG, USEID, UPROID, DPTOID,   ' +
                     'UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT,      ' +
                     'USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL,       ' +
                     'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR,           ' +
                     'CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, CIAID, CREESTID, CREESTADO,FLGINT,                  ' +
                     'CREMTOGADM, ASOCODAUX, NRONABO, CIUDID, FLGPAG,CREDIDNABO, CREMTOEXC, AREAID,CREDOCPAG     ' +
                     'FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' And  CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA') ;
      DM1.cdsDcuotas.Open;
      //En Cre310
      DM1.cdsDetalle.Close;
      DM1.cdsDetalle.DataRequest('SELECT CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA, ' +
                                       'CREMONLOC,CREMONEXT,CREMTOCOB,CREFPAG,TMONID,CREAMORT,CREINTERES,FOPERAC,   ' +
                                       'CREFLAT,TCAMBIO,USUARIO,FREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,NROOPE,   ' +
                                       'ASOAPENOM,CIUDID,CREOBS,CREANO,CREMES,AREAID,FORPAGABR,TRANSINTID,CREDOCPAG,  ' +
                                       'FORPAGID,CREESTID,CREESTADO,NRONABO,CREESTANT,CREESTANTDES,CREMTOCUO,CREMTOEXC,HREG,PERCONTA,CNTANOMM,TIPOCONT,OFDESID   ' +
                                       'FROM CRE310 WHERE ASOID ='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid)))   ;

      DM1.cdsDetalle.Open;
      DM1.xGrabaExc:='N';
      If xTipo='R' Then xTipPag:='12'  Else If xTipo='A' Then xTipPag:='27'  Else If xTipo='C' Then xTipPag:='28' ;
      xCuota:=0;
      xAmoPag:=0; xIntPag:=0; xGasPag:=0;
      DM1.cdsDcuotas.First;
      While Not DM1.cdsDcuotas.Eof do
      Begin
         If xAplicar>0 Then
            Begin
                   xfVenc:= Trim(DM1.cdsDcuotas.fieldbyname('CREANO').AsString + DM1.cdsDcuotas.fieldbyname('CREMES').AsString);
                   xEstAnt:=Trim(DM1.cdsDcuotas.fieldbyname('CREESTID').AsString);
                   xEstDes:=Trim(DM1.cdsDcuotas.fieldbyname('CREESTADO').AsString);
                   xAmoPag:= DM1.cdsDcuotas.fieldbyname('CRECAPITAL').AsCurrency;
                   xIntPag:= DM1.cdsDcuotas.fieldbyname('CREMTOINT').AsCurrency;
                   xGasPag:= DM1.cdsDcuotas.fieldbyname('CREMTOFLAT').AsCurrency;

                   If (xfVenc > xFecCalCulo) And (DM1.cdsDcuotas.fieldbyname('CREFVEN').AsString=DM1.cdsDcuotas.fieldbyname('CREFVENINI').AsString) Then // ANTICIPADA
                      Begin
                        If xTipPag='27' Then
                           xCuota:= DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency-DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency
                        Else
                           xCuota:= (DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency)-DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency;

                        If xCuota > xAplicar Then
                           Begin
                             fNPago.AplicaCronogramaPago(xAplicar , 0, 2, 'N', xTipPag);
                             fNPago.InsertaDetPagos(xAplicar , 0,xAmoPag, xIntPag, xGasPag , 1, xEstAnt, xEstDes, xTipPag, '1');
                           End
                        Else
                           Begin
                             fNPago.AplicaCronogramaPago(xCuota ,0 ,0 ,'N' ,xTipPag);
                             fNPago.InsertaDetPagos(xCuota ,0,xAmoPag, xIntPag, xGasPag ,1 ,xEstAnt ,xEstDes ,xTipPag ,'1');
                           End;
                      End
                   Else  // NO ANTICIPADA
                      Begin
                        xCuota:= (DM1.cdsDcuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency);
                        If xCuota > xAplicar Then
                           Begin
                              fNPago.AplicaCronogramaPago(xAplicar ,0 ,2 ,'S' ,xTipPag);
                              fNPago.InsertaDetPagos(xAplicar,0 ,xAmoPag, xIntPag, xGasPag ,1 ,xEstAnt ,xEstDes ,xTipPag ,'1');
                           End
                        Else
                           Begin
                              fNPago.AplicaCronogramaPago(xCuota ,0 ,1 ,'S' ,xTipPag);
                              fNPago.InsertaDetPagos(xCuota ,0 ,xAmoPag, xIntPag, xGasPag ,1 ,xEstAnt ,xEstDes ,xTipPag ,'1');
                           End;

                      End;

            End;
            xAplicar:=xAplicar - xCuota ;
            DM1.cdsDcuotas.Next;
      End;
      DM1.cdsDcuotas.ApplyUpdates(0) ; DM1.cdsDetalle.ApplyUpdates(0);
      DM1.cdsDcuotas.Close;  DM1.cdsDetalle.Close;
      //En Cre301
      GrabaPrestamoRef(xAsoId,xCreDid);
      DM1.CrgDatos;

      {
      xMens:='ASOCIADO CON CREDITO REPROGRAMADO -> '+xCreDid+' EN -> '+xCreditoIdRef;
      xSQL:='INSERT INTO OBS000(ASOID,ASOAPENOM,ASOCODMOD,ASOCODAUX,USEID,UPAGOID,UPROID,DPTOID,FECOBSR,MTOOBSR,USROBSR) '+
            'VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId),'APO201','ASOAPENOMDNI'))+','+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId),'APO201','ASOCODMOD'))+','+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId),'APO201','ASOCODAUX'))+','+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId),'APO201','USEID'))+','+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId),'APO201','UPAGOID'))+','+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId),'APO201','UPROID'))+','+QuotedStr(DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId),'APO201','DPTOID'))+','+QuotedStr(DateToStr(DM1.FechaSys))+','+QuotedStr(xMens)+','+QuotedStr(DM1.wUsuario)+') ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      }
      xMensaje:='El Proceso De '+Trim(EdtForPago.Text)+' Concluyo Con Exito ...! ';
      MessageDlg(pChar(xMensaje), mtInformation, [mbOk], 0);
      Close;
   End;

end;

procedure TfRepCronog.DBLCTipCChange(Sender: TObject);
begin
   If DM1.cdsTtransaccion.Locate('FORPAGOID',VarArrayof([DBLCTipC.Text]),[]) Then
        EdtTipCob.Text  := DM1.cdsTtransaccion.fieldbyname('FORPAGODES').AsString
   Else
      Begin
        if Length(DBLCTipC.Text) <> 2 then
           Begin
              Beep;
              EdtTipCob.Text  :='';
           End;
      End

end;

function TfRepCronog.PerVenc(xAsoId, xCreDid, xCreNumCuo: String): String;
var xSQL:String;
begin
xSQL:='SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREANO||CREMES AS VENCE FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoid))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND CRECUOTA='+QuotedStr(Trim(xCreNumCuo));
DM1.cdsQry1.Close;
DM1.cdsQry1.DataRequest(xSQL);
DM1.cdsQry1.Open;
If DM1.cdsQry1.RecordCount = 1 Then
   Result:=Trim(DM1.cdsQry1.FieldByName('VENCE').AsString)
Else
   Result:='999999';

DM1.cdsQry1.Close;

end;

procedure TfRepCronog.BitCalcularClick(Sender: TObject);
var xAsoid,xCreDid,xCreNumCuo,xCreCuota,xPeriodo,xMes,xAno,xfCalc:String;
    xCuotas:Integer;
    xSaldo,xMontAbn:Currency;
Begin
DM1.xCnd:='1';
xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;
xCreDid:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
xCreNumCuo:=DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString;
If Trim(DBLCTipCob.Text)='03' Then
    Begin
      MessageDlg(' Esta Opcion Esta En Desarrollo!! ', mtError,[mbOk],0);
      Exit;
    End;

If Length(Trim(EdtForPago.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar Un Tipo De Operación!! ', mtError,[mbOk],0);
      Exit;
   End;

If Length(Trim(EdtTipCob.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar Un Tipo De Descuento!! ', mtError,[mbOk],0);
      Exit;
   End;

If NumCuotas(xAsoId, xCreDid)=0 Then
   Begin
       MessageDlg(' Exiten Cuotas En Estado De Cobranza   ó   Bloqueadas   ó    No Tiene Cronograma De Pagos !! ', mtError,[mbOk],0);
       Exit;
   End;

If DM1.SaldoActual(xAsoId, xCreDid, '1')=0 Then
   Begin
      MessageDlg(' No Exite Ningun Saldo Por Refinanciar!! ', mtInformation,[mbOk],0);
      Exit;
   End;

xMes:=Copy(DateToStr(DM1.FechaSys),4,2); xAno:=Copy(DateToStr(DM1.FechaSys),7,4);
If xMes='01' Then  Begin  xMes:='12';  xAno:=IntToStr((StrToInt(xAno)-1)); End  Else  Begin  xMes:=Format('%.2d',[StrToInt(xMes)-1]);   End;
xPeriodo:=Trim(xAno+xMes);
If Trim(DBLCTipCob.Text)<>'02' Then
 Begin
  If Trim(DBLCTipCob.Text)='03' Then
     Begin
        If DM1.cdsAso.FieldByName('ASOTIPID').AsString='DO' Then
           Begin
              MessageDlg(' El Asociado No Es CESANTE Debe Ser Refinanciado !! ', mtError,[mbOk],0);
              Exit;
           End;
     End;

  If PerVenc(xAsoId, xCreDid, xCreNumCuo)>xPeriodo Then
     Begin
       MessageDlg(' El Cronograma No Ha Vencido ó Exite Alguna Inconsistencia !!! ', mtError,[mbOk],0);
       Exit;
     End
  Else
     Begin
        //refinanciar ó Recalendarizar
        xfCalc  := Trim(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)),7,4)+Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)),4,2));
        xCreCuota:='1';
        lblSaldo.Caption :=FormatFloat('###,###.#0',DM1.CalSalPag(xAsoid, xCreDid, xfCalc, xCrecuota, DM1.xCnd,''));
        BitGrabar.Enabled := True;
        xMontAbn:=AbonoCuotas(xAsoId, xCreDid);
        dtgNotaAbono.ColumnByName('CREFVEN').FooterValue :='Total : ';
        dtgNotaAbono.ColumnByName('ABONO').FooterValue :=FormatFloat('###,###.#0',xMontAbn);
        dbeCuotas.Text :=FormatFloat('###,###.#0',DM1.CalculaCuota(DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(xCreDid),7,2)),'CRE110','POR_INT')),DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(xCreDid),7,2)),'CRE110','POR_FLT')),DM1.Valores(lblSaldo.Caption),StrToInt(FloatToStr(dbsNumCuotas.Value))));
        If Length(Trim(dbsNumCuotas.Text))=0 Then dbsNumCuotas.Value:=1;
        dbeSaldo.Text := FormatFloat('###,###.#0',DM1.Valores(dbeCuotas.Text)*DM1.Valores(dbsNumCuotas.Text));
     End;

 End
Else // amp/red
  If PerVenc(xAsoId, xCreDid, xCreNumCuo)<=xPeriodo Then
     Begin
       MessageDlg(' El Cronograma Ha Vencido El Prestamo Debe Ser REFINANCIADO !!! ', mtError,[mbOk],0);
       Exit;
     End
  Else
     Begin
        //ampl/Red
        xfCalc  := Trim(Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)),7,4)+Copy(DateToStr(DM1.FechasOutPut(DM1.FechaSys)),4,2));
        xCreCuota:='1';
        lblSaldo.Caption :=FormatFloat('###,###.#0',DM1.CalSalPag_AR(xAsoid, xCreDid, xfCalc, xCreCuota, DM1.xCnd,''));
        BitGrabar.Enabled := True;
        xMontAbn:=AbonoCuotas_AR(xAsoId, xCreDid);
        dtgNotaAbono.ColumnByName('CREFVEN').FooterValue :='Total : ';
        dtgNotaAbono.ColumnByName('ABONO').FooterValue :=FormatFloat('###,###.#0',xMontAbn);
        dbeCuotas.Text :=FormatFloat('###,###.#0',DM1.CalculaCuota(DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(xCreDid),7,2)),'CRE110','POR_INT')),DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(xCreDid),7,2)),'CRE110','POR_FLT')),DM1.Valores(lblSaldo.Caption),StrToInt(FloatToStr(dbsNumCuotas.Value))));
        If Length(Trim(dbsNumCuotas.Text))=0 Then dbsNumCuotas.Value:=1;
        dbeSaldo.Text := FormatFloat('###,###.#0',DM1.Valores(dbeCuotas.Text)*DM1.Valores(dbsNumCuotas.Text));
     End;

end;

function TfRepCronog.NumCuotas(xAsoId, xCreDid: String): Integer;
Var xCuotas:Integer;
begin
DM1.cdsQry1.Close;
DM1.cdsQry1.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREESTID FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoid))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND CREESTID IN (''02'',''11'',''27'',''14'',''19'')');
DM1.cdsQry1.Open;
If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xCuotas:=0;
      DM1.cdsQry1.First;
      While Not DM1.cdsQry1.Eof Do
      Begin
         If (DM1.cdsQry1.FieldByName('CREESTID').AsString='14') Or (DM1.cdsQry1.FieldByName('CREESTID').AsString='19') Then
             Begin
                xCuotas:=0;
                Result:=xCuotas;
                DM1.cdsQry1.Last;
             end
         Else
            xCuotas:=xCuotas + 1;

         DM1.cdsQry1.Next;
      End;

      Result:=xCuotas;
   End
Else
   Result:=0;

DM1.cdsQry1.Close;


end;

function TfRepCronog.AbonoCuotas(xAsoId, xCreDid: String): Currency;
var xfecCalculo,xSQL:String;
    xSalAbn:Currency;
begin
xfecCalculo:= Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
DM1.cdsAportes.Close;
xSQL:='SELECT SUBSTR(A.CREDID,11,7) AS NUMPRE,SUBSTR(A.CREDID,3,4) AS ANOPRE, '+
      'SUBSTR(A.CREDID,7,2) AS TIPPRE,SUBSTR(A.CREDID,1,2) AS ORIOTO, '+
      'A.CRECUOTA,CREFVEN,  '+
      'CASE WHEN CREANO||CREMES>'+QuotedStr(Trim(xfecCalculo))+' THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0))-NVL(CREMTOCOB,0) '+
      'ELSE NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END AS ABONO, '+
      'A.CREESTADO FROM CRE302 A '+
      'WHERE A.ASOID='+QuotedStr(Trim(xAsoId))+' AND A.CREDID='+QuotedStr(Trim(xCreDid))+' AND A.CREESTID IN (''02'',''11'',''27'') '+
      'ORDER BY A.CREDID,A.CRECUOTA ';

DM1.cdsAportes.DataRequest(xSQL);
DM1.cdsAportes.Open;
TNumericField(DM1.cdsAportes.fieldbyname('ABONO')).DisplayFormat:='###,###.#0';
If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      xSalAbn:=0;
      DM1.cdsAportes.First;
      WHILE NOT DM1.cdsAportes.Eof DO
      Begin
        xSalAbn := xSalAbn + DM1.cdsAportes.FieldByName('ABONO').AsCurrency;
        DM1.cdsAportes.Next;
      End;
      Result:=xSalAbn;
   End
Else
   Begin
     Result:=0;
   End;

end;

function TfRepCronog.GrbCorrelatRef(xConsulta: String): String;
Var xCorAbn:Integer;
    xResAbn:String;
begin
DM1.cdsTDoc.Close;
DM1.cdsTDoc.DataRequest('SELECT CREAREA,CORREANO,NRONABO,TIPO FROM CRE206 WHERE '+xConsulta);
DM1.cdsTDoc.Open;
If DM1.cdsTDoc.RecordCount=1 Then
   Begin
     xCorAbn:=StrToInt(DM1.cdsTDoc.fieldbyname('NRONABO').AsString) + 1;
     xResAbn:=Format('%.10d',[xCorAbn]);
     DM1.cdsTDoc.Edit;
     DM1.cdsTDoc.fieldbyname('NRONABO').AsString:=xResAbn;
     DM1.cdsTDoc.ApplyUpdates(0);
     Result:=xResAbn;
   End;
DM1.cdsTDoc.Close;

end;

function TfRepCronog.GrbCorrelatCredRef(xCondicion,xTipos: String): String;
var xCorrelativo:Integer;
    xCreDid,xSQL:String;
begin
xSQL:='SELECT CREAREA,CORREANO,CREDID,TIPO FROM CRE206 WHERE '+xCondicion;
DM1.cdsTDoc.Close; DM1.cdsTDoc.DataRequest(xSQL); DM1.cdsTDoc.Open;
If DM1.cdsTDoc.RecordCount=1 Then
   Begin
     xCorrelativo:=StrToInt(Copy(DM1.cdsTDoc.fieldbyname('CREDID').AsString,9,7)) + 1;
     xCreDid:=xTipos+Format('%.7d',[xCorrelativo]);
     DM1.cdsTDoc.Edit;  DM1.cdsTDoc.fieldbyname('CREDID').AsString:=xCreDid; DM1.cdsTDoc.ApplyUpdates(0);
     DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL);  DM1.cdsQry.Open;
     If Trim(xCreDid)>Trim(DM1.cdsQry.fieldbyname('CREDID').AsString) Then xCredid:='';
     DM1.cdsQry.Close;
     Result:=xCredid;
   End;
DM1.cdsTDoc.Close;

end;

procedure TfRepCronog.GrabaPrestamoRef(xAsoid,xCredid:String);
Var xSQl,xPeriodo,xDia,xTipo,xTipPag:String;
    Year, Month, Day : Word;
    xAno,xMes : Integer;
    xFec_Cro:tDateTime;
begin
DM1.cdsAsoX.Close;
DM1.cdsAsoX.DataRequest('SELECT * FROM APO201 WHERE ASOID ='+QuotedStr(Trim(xAsoId)));
DM1.cdsAsoX.Open;
DM1.cdsDetalle.Close;
DM1.cdsDetalle.DataRequest('SELECT * FROM CRE301 WHERE ASOID ='+QuotedStr(Trim(xAsoId)));
DM1.cdsDetalle.Open;
DM1.cdsDetalle.Insert;
DM1.cdsDetalle.fieldbyname('TIPCREID').AsString := Copy(Trim(xCreDid),7,2) ;
DM1.cdsDetalle.fieldbyname('NUMREFI').AsString := Trim(xCreDid) ;
DM1.cdsDetalle.fieldbyname('FLGREFI').AsString := Copy(Trim(EdtForPago.Text),1,1);
DM1.cdsDetalle.fieldbyname('ASOID').AsString := xAsoid;
DM1.cdsDetalle.fieldbyname('ASOCODMOD').AsString := DM1.cdsAsoX.fieldbyname('ASOCODMOD').AsString;
DM1.cdsDetalle.fieldbyname('ASOCODAUX').AsString := DM1.cdsAsoX.fieldbyname('ASOCODAUX').AsString;
DM1.cdsDetalle.fieldbyname('ASOCODPAGO').AsString := DM1.cdsAsoX.fieldbyname('ASOCODPAGO').AsString;
DM1.cdsDetalle.fieldbyname('ASOAPENOM').AsString := DM1.cdsAsoX.fieldbyname('ASOAPENOM').AsString;
DM1.cdsDetalle.fieldbyname('USEID').AsString := DM1.cdsAsoX.fieldbyname('USEID').AsString;
DM1.cdsDetalle.fieldbyname('NRONABO').AsString := xNroAbonoRef;
DM1.cdsDetalle.fieldbyname('NUMREF').AsString := xNroAbonoRef;
DM1.cdsDetalle.fieldbyname('CREFOTORG').AsDateTime:=DM1.FechaSys;
DM1.cdsDetalle.fieldbyname('FECREF').AsDateTime:=DM1.FechaSys;
DM1.cdsDetalle.fieldbyname('CREMTOSOL').AsFloat :=  DM1.Valores(lblSaldo.Caption) ;
DM1.cdsDetalle.fieldbyname('CREMTOOTOR').AsFloat := DM1.Valores(lblSaldo.Caption) ;
DM1.cdsDetalle.fieldbyname('CREMTOGIR').AsFloat :=  DM1.Valores(lblSaldo.Caption);
DM1.cdsDetalle.fieldbyname('CREMTONABO').AsFloat :=  DM1.Valores(lblSaldo.Caption);
DM1.cdsDetalle.fieldbyname('CREINTERES').AsFloat := DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString),7,2)),'CRE110','POR_INT'));
DM1.cdsDetalle.fieldbyname('CREDFLAT').AsFloat := DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString),7,2)),'CRE110','POR_FLT'));
DM1.cdsDetalle.fieldbyname('CRECUOTA').AsFloat := DM1.Valores(dbeCuotas.Text);
DM1.cdsDetalle.fieldbyname('CRENUMCUO').AsInteger := StrToInt(FloatToStr(dbsNumCuotas.Value));
DM1.cdsDetalle.fieldbyname('CREESTID').AsString := '02';
DM1.cdsDetalle.fieldbyname('CREESTADO').AsString := 'POR COBRAR';
DM1.cdsDetalle.fieldbyname('CREFDES').AsDateTime:=DM1.FechaSys;
DM1.cdsDetalle.fieldbyname('CREMTOPAG').AsFloat  := 0;
DM1.cdsDetalle.fieldbyname('CRESDOACT').AsFloat  := DM1.Valores(dbeCuotas.Text)*StrToInt(FloatToStr(dbsNumCuotas.Value)) ;
DM1.cdsDetalle.fieldbyname('CREMTOTAL').AsFloat  := DM1.Valores(lblSaldo.Caption);
DM1.cdsDetalle.fieldbyname('CRESALDOT').AsFloat  := 0;
DM1.cdsDetalle.fieldbyname('BANCOID').AsString := DM1.cdsAsoX.Fieldbyname('BANCOID').AsString;
DM1.cdsDetalle.fieldbyname('CRENUMCTA').AsString := DM1.cdsAsoX.Fieldbyname('ASONCTA').AsString;
DM1.cdsDetalle.fieldbyname('FORPAGOID').AsString := Trim(DBLCTipC.Text);
DM1.cdsDetalle.fieldbyname('TIPCREDES').AsString := DM1.cdsSolicitud.fieldbyname('TIPCREDES').AsString;
DecodeDate(DM1.FechaSys, Year, Month, Day);
DM1.cdsDetalle.fieldbyname('CREANOMES').AsString := Trim(IntToStr(Year))+Format('%.2d',[Month]);
DM1.cdsDetalle.fieldbyname('REFANOMES').AsString := Trim(IntToStr(Year))+Format('%.2d',[Month]);
DM1.cdsDetalle.fieldbyname('TIPDESEID').AsString := '10';
DM1.cdsDetalle.fieldbyname('USUARIO').AsString := DM1.wUsuario;
DM1.cdsDetalle.fieldbyname('ASOTIPID').AsString := DM1.cdsAsoX.fieldbyname('ASOTIPID').AsString;
DM1.cdsDetalle.fieldbyname('ASODNI').AsString :=   DM1.cdsAsoX.fieldbyname('ASODNI').AsString;
DM1.cdsDetalle.fieldbyname('OFDESID').AsString := DM1.xOfiDes;
DM1.cdsDetalle.fieldbyname('CALIFICAID').AsString := DM1.wUsuario;
DM1.cdsDetalle.fieldbyname('APRUEBAID').AsString := DM1.wUsuario;
DM1.cdsDetalle.fieldbyname('TMONID').AsString := 'N';
DM1.cdsDetalle.fieldbyname('UPAGOID').AsString := DM1.cdsAsoX.fieldbyname('UPAGOID').AsString;
DM1.cdsDetalle.fieldbyname('UPROID').AsString := DM1.cdsAsoX.fieldbyname('UPROID').AsString;
DM1.cdsDetalle.fieldbyname('DPTOID').AsString := DM1.cdsAsoX.fieldbyname('DPTOID').AsString;
DM1.cdsDetalle.fieldbyname('FREG').AsDateTime  := DM1.FechaSys;
DM1.cdsDetalle.fieldbyname('HREG').AsString  := DateToStr(DM1.FechaSys)+DM1.HoraSys;
DM1.cdsDetalle.fieldbyname('TMONABR').AsString  := 'S/.';
DM1.cdsDetalle.fieldbyname('CREDID').AsString := xCreditoIdRef;
DM1.cdsDetalle.fieldbyname('CREFINIPAG').AsString := Copy(DM1.IniFinCrono(DM1.FechaSys,StrToInt(FloatToStr(dbsNumCuotas.Value)),'N',xCreDid),1,8);
DM1.cdsDetalle.fieldbyname('CREFFINPAG').AsString := Copy(DM1.IniFinCrono(DM1.FechaSys,StrToInt(FloatToStr(dbsNumCuotas.Value)),'N',xCreDid),9,8);
DM1.cdsDetalle.fieldbyname('NROAUTDES').AsString := xCreditoIdRef;
DM1.cdsDetalle.ApplyUpdates(0);
DM1.cdsDetalle.Close;
DM1.cdsAsoX.Close;

If chkMesInicio.Checked = True Then
  Begin
    If StrToInt(Copy(DateToStr(DM1.FechaSys),4,2))=1 Then
     Begin
        xAno := StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)) - 1 ;  xMes := 12;
     End
    Else
     Begin
        xAno := StrToInt(Copy(DateToStr(DM1.FechaSys),7,4));  xMes := StrToInt(Copy(DateToStr(DM1.FechaSys),4,2))-1;
     End;
     xDia:=DM1.UltimoDia(xMes,xAno);
     xFec_Cro := StrToDate(xDia+'/'+Format('%.2d',[xMes])+'/'+ Trim(IntToStr(xAno)));
     DM1.GnrCronograma(xAsoid ,xCreditoIdRef ,DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString),7,2)),'CRE110','POR_INT')),DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString),7,2)),'CRE110','POR_FLT')),DM1.Valores(lblSaldo.Caption),xFec_Cro,StrToInt(FloatToStr(dbsNumCuotas.Value)));
  End
Else
  DM1.GnrCronograma(xAsoid ,xCreditoIdRef ,DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString),7,2)),'CRE110','POR_INT')),DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString),7,2)),'CRE110','POR_FLT')),DM1.Valores(lblSaldo.Caption),DM1.FechaSys,StrToInt(FloatToStr(dbsNumCuotas.Value)));

xTipo:=Copy(Trim(EdtForPago.Text),1,1);
If xTipo='R' Then xTipPag:='12'  Else If xTipo='A' Then xTipPag:='22'  Else If xTipo='C' Then xTipPag:='29' ;
xSQL:='UPDATE CRE301 SET CREESTID='+QuotedStr(xTipPag)+',CREESTADO='+QuotedStr(DM1.CrgDescrip('ESTID='+QuotedStr(Trim(xTipPag)),'CRE113','ESTDES'))+',NROREFINAN='+QuotedStr(xCreditoIdRef)+',CRENEWID='+QuotedStr(xCreditoIdRef)+' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCredid);
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
chkMesInicio.Checked:=False;
end;

procedure TfRepCronog.DBLCTipCExit(Sender: TObject);
var xAsoid,xCreDid : String;
begin
xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;
xCreDid:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
dbsNumCuotas.Value := NumCuotas(xAsoId, xCreDid);
end;

procedure TfRepCronog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  chkMesInicio.Checked:=False;
end;

function TfRepCronog.LimpiaCds(xAsoId, xCreDid: String):Currency;
var xfecCalculo,xSQL:String;
    xSalAbn:Currency;
begin
xfecCalculo:= Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
DM1.cdsAportes.Close;
xSQL:='SELECT SUBSTR(A.CREDID,11,7) AS NUMPRE,SUBSTR(A.CREDID,3,4) AS ANOPRE, '+
      'SUBSTR(A.CREDID,7,2) AS TIPPRE,SUBSTR(A.CREDID,1,2) AS ORIOTO, '+
      'A.CRECUOTA,CREFVEN,  '+
      'CASE WHEN CREANO||CREMES>'+QuotedStr(Trim(xfecCalculo))+' THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0))-NVL(CREMTOCOB,0) '+
      'ELSE NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END AS ABONO, '+
      'A.CREESTADO FROM CRE302 A '+
      'WHERE A.ASOID='+QuotedStr(Trim(xAsoId))+' AND A.CREDID='+QuotedStr(Trim(xCreDid))+' AND A.CREESTID IN (''02'',''11'',''27'') '+
      'ORDER BY A.CREDID,A.CRECUOTA ';

DM1.cdsAportes.DataRequest(xSQL);
DM1.cdsAportes.Open;
TNumericField(DM1.cdsAportes.fieldbyname('ABONO')).DisplayFormat:='###,###.#0';
If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      xSalAbn:=0;
      DM1.cdsAportes.First;
      WHILE NOT DM1.cdsAportes.Eof DO
      Begin
        xSalAbn := xSalAbn + DM1.cdsAportes.FieldByName('ABONO').AsCurrency;
        DM1.cdsAportes.Next;
      End;
      Result:=xSalAbn;
   End
Else
   Begin
     Result:=0;
   End;



end;

procedure TfRepCronog.FormActivate(Sender: TObject);
begin
LimpiaCds('!@#$%^&*@#','!@#$%^&*@#%#&*!');
end;

procedure TfRepCronog.dbsNumCuotasChange(Sender: TObject);
begin
BitCalcular.OnClick(BitCalcular);
end;

procedure TfRepCronog.BitLoteClick(Sender: TObject);
Var Boton,xCount:Integer;
    xAsoId,xCreDid,xMensaje,xConsulta,xTipo,xTipos,xCondicion,xfVenc,xEstAnt,xEstDes,xFecCalCulo,xTipPag :String;
    Year, Month, Day : Word;
    xAplicar,xSaldo,xCuota:Currency;
begin

xMensaje:=' ¿ Está Seguro Que Desea Generar y Grabar Esta '+Trim(EdtForPago.Text)+' ? ';
Boton := Application.MessageBox (pChar(xMensaje) ,'Reprogramación De Cronogramas',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin
     { DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest('SELECT * FROM PRESTAMO');
      DM1.cdsReporte.Open;
      xCount:=DM1.cdsReporte.RecordCount;
      DM1.cdsReporte.First;
      WHILE NOT DM1.cdsReporte.Eof DO
      BEGIN
      xCount:=xCount-1;
      fRepCronog.Caption:= IntToStr(xCount); fRepCronog.Refresh;
      DM1.xSal:='RP';
      Screen.Cursor:=crHourGlass;
      DecodeDate(DM1.FechaSys, Year, Month, Day);
      xAsoId:=DM1.cdsReporte.FieldByName('ASOID').AsString;
      xCreDid:=DM1.cdsReporte.FieldByName('CREDID').AsString;
      lblAsociado.Caption := DM1.cdsReporte.FieldByName('ASOAPENOM').AsString;
      lblCreditos.Caption := Copy(xCreDid,11,5)+'-'+Copy(xCreDid,3,4)+'-'+DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(xCreDid,7,2)),'CRE110','TIPCREDES');
      lblSaldo.Caption:=FormatFloat('###,###.#0',DM1.cdsReporte.FieldByName('SALREF').AsCurrency);
      dbsNumCuotas.Value :=DM1.cdsReporte.FieldByName('CUOTAS').AsInteger;
      dbeCuotas.Text :=FormatFloat('###,###.#0',DM1.CalculaCuota(DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(xCreDid),7,2)),'CRE110','POR_INT')),DM1.Valores(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(xCreDid),7,2)),'CRE110','POR_FLT')),DM1.Valores(lblSaldo.Caption),StrToInt(FloatToStr(dbsNumCuotas.Value))));
      dbeSaldo.Text := FormatFloat('###,###.#0',DM1.Valores(dbeCuotas.Text)*DM1.Valores(dbsNumCuotas.Text));
      xTipos:=Trim(DM1.xOfiDes)+Trim(IntToStr(Year))+Copy(xCreDid,7,2);
      xfecCalculo  := Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
      xCondicion:='CREAREA='+QuotedStr('CRE')+' And CORREANO='+QuotedStr(Trim(IntToStr(Year)))+' And SubStr(CREDID,1,8)='+QuotedStr(xTipos)+' And TIPOCOB='+QuotedStr('1') ;
      xCreditoIdRef:=GrbCorrelatCredRef(xCondicion,xTipos);
      xTipo:='R';
      xConsulta:='CREAREA='+QuotedStr('COB')+' AND CORREANO='+QuotedStr(Trim(IntToStr(Year)))+' AND TIPOCOB='+QuotedStr(xTipo);
      xNroAbonoRef:=GrbCorrelatRef(xConsulta);
      xAplicar:=DM1.Valores(lblSaldo.Caption);
       //En Cre302
      DM1.cdsDcuotas.Close;
      DM1.cdsDcuotas.DataRequest('SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,' +
                     'CRECUOTA,CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID,   ' +
                     'UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT,      ' +
                     'USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL,       ' +
                     'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR,           ' +
                     'CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, CIAID, CREESTID, CREESTADO,FLGINT,                  ' +
                     'CREMTOGADM, ASOCODAUX, NRONABO, CIUDID, FLGPAG,CREDIDNABO, CREMTOEXC, AREAID,CREDOCPAG     ' +
                     'FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' And  CREESTID IN (''02'',''11'',''27'',''14'') Order By CREDID,CRECUOTA') ;
      DM1.cdsDcuotas.Open;
      //En Cre310
      DM1.cdsDetalle.Close;
      DM1.cdsDetalle.DataRequest('SELECT CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA, ' +
                                       'CREMONLOC,CREMONEXT,CREMTOCOB,CREFPAG,TMONID,CREAMORT,CREINTERES,FOPERAC,   ' +
                                       'CREFLAT,TCAMBIO,USUARIO,FREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,NROOPE,   ' +
                                       'ASOAPENOM,CIUDID,CREOBS,CREANO,CREMES,AREAID,FORPAGABR,TRANSINTID,CREDOCPAG,  ' +
                                       'FORPAGID,CREESTID,CREESTADO,NRONABO,CREESTANT,CREESTANTDES,CREMTOCUO,CREMTOEXC,HREG,PERCONTA,CNTANOMM,TIPOCONT   ' +
                                       'FROM CRE310 Where ASOID ='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid)))   ;

      DM1.cdsDetalle.Open;

      If xTipo='R' Then xTipPag:='12'  Else If xTipo='A' Then xTipPag:='22'  Else If xTipo='C' Then xTipPag:='29' ;
      xCuota:=0;
      DM1.cdsDcuotas.First;
      While Not DM1.cdsDcuotas.Eof do
      Begin
         If xAplicar>0 Then
            Begin
                   xfVenc:= Trim(DM1.cdsDcuotas.fieldbyname('CREANO').AsString + DM1.cdsDcuotas.fieldbyname('CREMES').AsString);
                   xEstAnt:=Trim(DM1.cdsDcuotas.fieldbyname('CREESTID').AsString);
                   xEstDes:=Trim(DM1.cdsDcuotas.fieldbyname('CREESTADO').AsString);
                   If xfVenc > xFecCalCulo Then // ANTICIPADA
                      Begin
                        xCuota:= (DM1.cdsDcuotas.fieldbyname('CREAMORT').AsCurrency + DM1.cdsDcuotas.fieldbyname('CREFLAT').AsCurrency)-DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency;
                        If xCuota > xAplicar Then
                           Begin
                             fNPago.AplicaCronogramaPago(xAplicar , 0, 2, 'N', xTipPag);
                             fNPago.InsertaDetPagos(xAplicar , 0, 1, xEstAnt, xEstDes, xTipPag, '1');
                           End
                        Else
                           Begin
                             fNPago.AplicaCronogramaPago(xCuota ,0 ,0 ,'N' ,xTipPag);
                             fNPago.InsertaDetPagos(xCuota ,0 ,1 ,xEstAnt ,xEstDes ,xTipPag ,'1');
                           End;
                      End
                   Else  // NO ANTICIPADA
                      Begin
                        xCuota:= (DM1.cdsDcuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsDcuotas.fieldbyname('CREMTOCOB').AsCurrency);
                        If xCuota > xAplicar Then
                           Begin
                              fNPago.AplicaCronogramaPago(xAplicar ,0 ,2 ,'S' ,xTipPag);
                              fNPago.InsertaDetPagos(xAplicar,0 ,1 ,xEstAnt ,xEstDes ,xTipPag ,'1');
                           End
                        Else
                           Begin
                              fNPago.AplicaCronogramaPago(xCuota ,0 ,1 ,'S' ,xTipPag);
                              fNPago.InsertaDetPagos(xCuota ,0 ,1 ,xEstAnt ,xEstDes ,xTipPag ,'1');
                           End;

                      End;

            End;
            xAplicar:=xAplicar - xCuota ;
            DM1.cdsDcuotas.Next;
      End;
      DM1.cdsDcuotas.ApplyUpdates(0) ; DM1.cdsDetalle.ApplyUpdates(0);
      DM1.cdsDcuotas.Close;  DM1.cdsDetalle.Close;
      //En Cre301 y Cre303
      chkMesInicio.Checked:=True;
      GrabaPrestamoRef(xAsoId,xCreDid);

      DM1.cdsReporte.Next;
      END;
      DM1.cdsReporte.Close;

      Screen.Cursor:=crDefault;
      xMensaje:='El Proceso De '+Trim(EdtForPago.Text)+' Concluyo Con Exito ...! ';
      MessageDlg(pChar(xMensaje), mtInformation, [mbOk], 0);
      Close;
        }
   End;


end;

function TfRepCronog.AbonoCuotas_AR(xAsoId, xCreDid: String): Currency;
var xfecCalculo,xSQL:String;
    xSalAbn:Currency;
begin
xfecCalculo:= Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
DM1.cdsAportes.Close;
xSQL:='SELECT SUBSTR(A.CREDID,11,7) AS NUMPRE,SUBSTR(A.CREDID,3,4) AS ANOPRE, '+
      'SUBSTR(A.CREDID,7,2) AS TIPPRE,SUBSTR(A.CREDID,1,2) AS ORIOTO, '+
      'A.CRECUOTA,CREFVEN,  '+
      'CASE WHEN CREANO||CREMES>'+QuotedStr(Trim(xfecCalculo))+' THEN NVL(CREAMORT,0)-NVL(CREMTOCOB,0) '+
      'ELSE NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END AS ABONO, '+
      'A.CREESTADO FROM CRE302 A '+
      'WHERE A.ASOID='+QuotedStr(Trim(xAsoId))+' AND A.CREDID='+QuotedStr(Trim(xCreDid))+' AND A.CREESTID IN (''02'',''11'',''27'') '+
      'ORDER BY A.CREDID,A.CRECUOTA ';

DM1.cdsAportes.DataRequest(xSQL);
DM1.cdsAportes.Open;
TNumericField(DM1.cdsAportes.fieldbyname('ABONO')).DisplayFormat:='###,###.#0';
If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      xSalAbn:=0;
      DM1.cdsAportes.First;
      WHILE NOT DM1.cdsAportes.Eof DO
      Begin
        If DM1.cdsAportes.FieldByName('ABONO').AsCurrency<0 Then DM1.cdsAportes.FieldByName('ABONO').AsCurrency:=0 ;
        xSalAbn := xSalAbn + DM1.cdsAportes.FieldByName('ABONO').AsCurrency;
        DM1.cdsAportes.Next;
      End;
      Result:=xSalAbn;
   End
Else
   Begin
     Result:=0;
   End;



end;

end.
