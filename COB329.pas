unit COB329;
// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB329
// Formulario                    : fAmplIndividual
// Fecha de Creación             :
// Autor                         : Equipo de sistemas
// Objetivo                      : Ampliación Individual de Créditos
// Actualizaciones:
// SPP_201411_COB                : Se realiza el pase a producción a partir del HPC_201412_COB.
// HPC_201711_COB                : Se adiciona Reprogramación de Créditos - graba datos de ampliación
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ExtCtrls, Math;

type
  TfAmplIndividual = class(TForm)
    grbDeudor: TGroupBox;
    grpAmpliar: TGroupBox;
    btnGrabar: TBitBtn;
    btnSalir: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblCodMod: TLabel;
    lblDNI: TLabel;
    lblApeNom: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblFecPre: TLabel;
    lblCredito: TLabel;
    lblMonto: TLabel;
    lblNumCuo: TLabel;
    lblValor: TLabel;
    speNumCuo: TSpinEdit;
    Label9: TLabel;
    lblFecAmp: TLabel;
    Label11: TLabel;
    lblCreAmp: TLabel;
    lblSalCap: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lblSalGas: TLabel;
    lblSalDes: TLabel;
    Label20: TLabel;
    lblCuoPen: TLabel;
    lblFecOpe: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    lblCuoAmp: TLabel;
    procedure btnSalirClick(Sender: TObject);
    procedure speNumCuoChange(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
  private
    { Private declarations }
    Function CalculaCuota(xTas_Int, xTas_Flt, xMonOto, xMonFla: Real; xNumCuo: Integer): Currency;
    Function Ora_MontoAbn(xAsoid: String; xFecCalCulo: String): Currency;
    Procedure GrabaPrestamo(xAsoId, xCreDid, xCreNew, xNroAbono: String;xNumCuo: Integer; xMonOto,xCuota, xIngLiq, xInteres, xMonGas, xMonDesg : Real; xFec_Pre: tDateTime);
    Procedure GnrCronograma(xAsoid, xCredId: String; xTas_Int, xTas_Flt, xMonOto,xFlat, xDesg: Real; xFec_Pre: tDateTime; xNumCuo: Integer);
    Function UltimoDia(xMes: Integer; xAno: Integer): String;
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - graba datos de ampliación
    Procedure datoscreditoREP();
    Procedure grabadatarepro();
  public
    { Public declarations }
     xsaldotot,xsaldocap,xsaldorep,xcrecuota : double;
     xdiasatra :Integer;
//Final HPC_201711_COB
  end;

var
  fAmplIndividual: TfAmplIndividual;

implementation
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - graba datos de ampliación
uses COBDM1, COB901, DB;
//Final HPC_201711_COB
{$R *.dfm}

procedure TfAmplIndividual.btnSalirClick(Sender: TObject);
begin
  Close;
end;

function TfAmplIndividual.CalculaCuota(xTas_Int, xTas_Flt, xMonOto, xMonFla: Real; xNumCuo: Integer): Currency;
var xMon_Cuo, sFlt_Pag, cNumer, cDenom: Real;
begin
   sFlt_Pag := 0;
   If xTas_Int <> 0 Then
   Begin
      xTas_Int := StrToFloat(FloatToStrF(xTas_Int / 100, ffFixed, 15, 4));
      xTas_Flt := StrToFloat(FloatToStrF(xTas_Flt / 100, ffFixed, 15, 4));
      cNumer := xTas_Int * Power((1 + xTas_Int), xNumCuo);
      cDenom := Power((1 + xTas_Int), xNumCuo) - 1;
      xMon_Cuo := StrToFloat(FloatToStrF(xMonOto * (cNumer / cDenom), ffFixed, 15, 2));
      sFlt_Pag := xMonFla;
   End
   Else
   Begin
      xMon_Cuo := xMonOto / xNumCuo;
      xMon_Cuo := StrToFloat(FloatToStrF(xMon_Cuo, ffFixed, 15, 2));
   End;
   Result := xMon_Cuo;

end;

procedure TfAmplIndividual.speNumCuoChange(Sender: TObject);
begin
  lblCuoAmp.Caption:=DM1.FormatoNumeros(FloatToStr(CalculaCuota(DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat, 0, DM1.Valores(lblSalCap.Caption), 0, speNumCuo.Value)+StrToFloat(FloatToStrF((DM1.Valores(lblSalGas.Caption)/speNumCuo.Value), ffFixed, 15, 2))+StrToFloat(FloatToStrF((DM1.Valores(lblSalDes.Caption)/speNumCuo.Value), ffFixed, 15, 2))));
end;

procedure TfAmplIndividual.btnGrabarClick(Sender: TObject);
var Boton:Integer;
    xAsoId, xCreDid, xfCalc, xNroAbono, xSQL:String;
    xMonOto:Currency;
begin
    Boton := Application.MessageBox('ESTA SEGURO DE AMPLIAR EL CRÉDITO', 'Sistema De Cobranzas', MB_YESNO + MB_ICONQUESTION);
    If Boton = ID_YES Then
       Begin
           Screen.Cursor := crHourGlass;
           xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;
           xCreDid:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
           xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
           xMonOto:=DM1.Valores(lblSalCap.Caption);
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - graba datos de ampliación
           datoscreditoREP();
//Final HPC_201711_COB           
           If xMonOto > 0 Then
              Begin
                   xSQL:='SELECT SUM(NVL(CREAMORT,0)-NVL(CRECAPITAL,0)) SALHOY FROM CRE302 '+
                         'WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND '+
                         'CREESTID IN (''02'',''11'',''27'',''14'',''19'') ';
                   DM1.cdsQry32.Close;
                   DM1.cdsQry32.DataRequest(xSQL);
                   DM1.cdsQry32.Open;
                   If xMonOto=DM1.cdsQry32.FieldByName('SALHOY').AsCurrency Then
                       Begin
                       xNroAbono:='';
                       If Ora_MontoAbn(xAsoid, xfCalc) > 0 Then
                          Begin
                             DM1.DCOM1.AppServer.SolStartTransaction;
                             Try
                                xSQL:='UPDATE CRE302 SET CREESTID=''02'',CREESTADO=''POR COBRAR'' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID IN (''14'',''27'',''11'') ';
                                DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                                xNroAbono:=xAsoId; ;
                                xSQL:='begin SP_COB_POLITICA_AMORTIZACION('''+Trim(xAsoId)+''','''+Trim(xCreDid)+''','''+'1'+''','''+'1'+''','+CurrToStr(Ora_MontoAbn(xAsoid, xfCalc))+','+'TO_CHAR(SYSDATE,''YYYYMM'')'+','+'TO_CHAR(ADD_MONTHS(SYSDATE,-1),''YYYYMM'')'+',Null); End;';
                                DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
                                GrabaPrestamo(xAsoId, xCreDid, lblCreAmp.Caption, xNroAbono, speNumCuo.Value,xMonOto,DM1.Valores(lblCuoAmp.Caption),0,DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat,DM1.Valores(lblSalGas.Caption),DM1.Valores(lblSalDes.Caption),DM1.FechaSys );
                                xSQL:='begin SP_CRE_CANC_AMPL('''+Trim(xAsoId)+''','''+Trim(xCreDid)+''','''+xNroAbono+''','''+DM1.wUsuario+''','+CurrToStr(Ora_MontoAbn(xAsoid, xfCalc))+'); End;';
                                DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                                GnrCronograma(xAsoid, lblCreAmp.Caption, DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat,    0,     xMonOto, DM1.Valores(lblSalGas.Caption),DM1.Valores(lblSalDes.Caption),DM1.FechaSys, speNumCuo.Value);
                                xSQL := 'UPDATE CRE301 SET CREESTID=''02'',CREESTADO=''POR COBRAR'',CRECUOTA=' + FloattoStr(DM1.Valores(lblCuoAmp.Caption)) + ', CRESDOACT=' + FloatToStr(DM1.Valores(lblCuoAmp.Caption) * speNumCuo.Value) + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(lblCreAmp.Caption);
                                DM1.DCOM1.AppServer.EjecutaSql(xSQL);
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - graba datos de ampliación
                                grabadatarepro;
//Final HPC_201711_COB                                
                                DM1.DCOM1.AppServer.SolCommit;
                             Except
                                DM1.DCOM1.AppServer.SolRollBack;
                             End;

                             fPagoCuotas.CrgPrestamos;
                             Close;
                          End;
                       End;
                       DM1.cdsQry32.Close;
              End;
       End;
       Screen.Cursor := crDefault;
end;

function TfAmplIndividual.Ora_MontoAbn(xAsoid, xFecCalCulo: String): Currency;
var xSQL: String;
begin
   xSQL := 'SELECT NVL(SP_CALSALDO(' + QuotedStr(xAsoId) + ',' + QuotedStr(xFecCalCulo) + '),0) SALDO FROM DUAL';
   DM1.cdsMovCnt1.Close;
   DM1.cdsMovCnt1.DataRequest(xSQL);
   DM1.cdsMovCnt1.Open;
   Result := DM1.cdsMovCnt1.FieldByName('SALDO').AsCurrency;
   DM1.cdsMovCnt1.Close;
end;

procedure TfAmplIndividual.GrabaPrestamo(xAsoId, xCreDid, xCreNew, xNroAbono: String; xNumCuo: Integer; xMonOto, xCuota, xIngLiq, xInteres,   xMonGas, xMonDesg: Real; xFec_Pre: tDateTime);
var xSQL:String;
begin
    xSQL:='INSERT INTO CRE301  '+
          'SELECT '+
          'TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG,CREFECINI,'+
           FloatToStr(xMonOto)+','+FloatToStr(xMonOto)+','+FloatToStr(xMonOto)+','+
          'CREINTERES,CREDFLAT, '+
           FloatToStr(xCuota)+','+IntToStr(xNumCuo)+','+
          'CRELUGGIRO,BANCOID,CRENUMCTA,CREMTOPAG, '+
           FloatToStr(xCuota*xNumCuo)+','+
          'CREPERGRA,CRECUOPAG,CRECUOENV,CREPERIODI,CREMTOTAL, '+
          'CRECAPPGO,CRENEWID, '+
          'CRESALDOT, '+
           QuotedStr(DM1.wUsuario)+',TO_DATE(SYSDATE),SYSDATE, '+
          'OFDESID,CALIFICAID,APRUEBAID, '+
           QuotedStr('APROBADO')+','+
          'TMONID,CUOTAINI,UPAGOID,UPROID,DPTOID,LISTAID, '+
           QuotedStr(xCreNew)+', '+
          'CRECOM,CRESEG,CREPOR,CREGADM,CRECOMP,CREMORA,FORPAGOID,CRETCALID, '+
          'TMONABR,CRETCALABR,LISTAABR,FORPAGOABR,CIAID,CREFRECL, '+
           QuotedStr('01')+','+
          'CREANOMES,NROPAGARE,NROAUTDES,TIPCREDES,GARAPENOM,GARASOID,ASOCODAUX, '+
          QuotedStr(xNroAbono)+','+QuotedStr(xCreDid)+',TO_DATE(SYSDATE),''AM'', '+
          'NROFICIO,CIUDID,ARCHIVOFTP,AGENBANCOID,DPTOGIRO,USEIDGAR, '+
           QuotedStr('10')+','+
          'BCOGIRO,'+FloatToStr(xMonOto)+', '+
           QuotedStr('')+','+QuotedStr('')+', '+
          'CREBLOQFEC,USUBLOQ,CREBLOQ,'''','''','''',CCOSID,CUENTAH, '+
          'CUENTAD,CREGENCOB,FLGAUTOMA, '+
          'TO_CHAR(SYSDATE,''YYYYMM''),'+QuotedStr(xCreDid)+', '+
          'CAJAUSU,HORACAJA,ASOTIPID,ASODNI,ANULACAJA,MEN_ANU,MOT_PRE, '+
           QuotedStr(xCreDid)+','+QuotedStr('A')+', '+
          'CREFCAN,FLGINCONSIS,PERCONTA,C_ABN,CNTANOMM,FEC_RCP, '+
           FloatToStr(xIngLiq)+',TO_DATE(SYSDATE), '+
          'CREMENOBS,TIPOCONT,CNTFLAG,CREMTODEP,CREFANUL,USERANUL,CRESUMCUO, '+
          'CREMOTEXT,NROFICIO_BCK,MIGRADO,USUAUTCRE,FECAUTCRE,ESTAUTCRE,COMAUTCRE, '+
          'USUANUSUP,FECANUSUP,MOTANUSUP,ESTANUSUP,DOCID,CCSERIE,CCNODOC,CIASER,CREMONINS, '+
          'IMPCON,DNIRUC,FECIMPCON,CODARCHIVO,CREMTOAPO,AUTDESCRE,FECAUTDES,USUAUTDES,IMPCARAUT, '+
          'NROCARAUT,DIASPROC,DESCENV,AUTDESGES,USUDESGES,FECHORDESGES,USUMODCUO,FECMODCUO,MOTMODCUO, '+
          'TASFONDES,NROAUTONP,FECENVBCP,ESTENVBCP,FECCOBBCP,CODAGEBCP,IMPCARONP    '+
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - graba datos de ampliación
          ',MONINTPRO,MESPERGRA,CREIDORI,FLGPAGADE,USUAUTPAGADE,FECAUTPAGADE,DIAINTCOR,MONPAGADE,MONCAPADE,'+
          'MONINTCORADE,MONFLAADE,MONDESADE,USUPROPAGADE,FECPROPAGADE,FLGPROPAGADE,USUAPRREPEXC,FECAPRREPEXC,CODSOLREP '+
//Final HPC_201711_COB
          'FROM CRE301 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
end;

procedure TfAmplIndividual.GnrCronograma(xAsoid, xCredId: String; xTas_Int, xTas_Flt, xMonOto, xFlat, xDesg: Real; xFec_Pre: tDateTime;   xNumCuo: Integer);
var
   i, j, xDiasMesAct: Integer;
   xMon_Cuo, cNumer, cDenom, sFlt_Pag, xSal_Pag: Real;
   xMon_Aux, xAmo_Pag, xInt_Pag, xGas_Pag,sSeg_Des, s, r: Real;
   sMon_Cuo, sAmo_Pag, sInt_Pag, sGas_Pag: Real;
   xFec_Ven: tDateTime;
   tMes, tAno, xMes, xAno: Integer;
   tDia, xDia, xPrdGra, xTipAso, xSQL: String;
   xCuota, xIntIni: Double;
begin

   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest('SELECT ASOID,ASOCODMOD,ASOCODPAGO,TIPCREID,TMONID,CREANO,' +
      'CREMES,CRESALDO,CRECUOTA,CREMTO,CREAMORT,CREINTERES,CREFLAT,' +
      'CREFVEN,USEID,UPROID,UPAGOID,BANCOID,CCBCOID,USUARIO,FREG,HREG,' +
      'FORPAGOID,ASOAPENOM,CREDID,CRETCALID,TIPDESEID,TMONABR,CRETCALABR,' +
      'TIPDESABR,LISTAABR,CIAID,CREESTID,CREESTADO,LISTAID,ASOCODAUX,' +
      'CIUDID,AREAID,CRECAPCRON,CRECAPITAL,CREMTOINT,CREMTOFLAT,CREMTOCOB, '+
      'CREANOINI,CREMESINI,CRECUOTAINI,CREFVENINI,MONPACDESGRAV,MONCOBDESGRAV,NUMCUOORI,FECVENORI ' +
      'FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)));
   DM1.cdsDLabo.Open;
   DM1.cdsDLabo.Edit;

   DM1.cdsCredito.Close;
   DM1.cdsCredito.DataRequest('SELECT ASOCODMOD,ASOCODAUX,ASOCODPAGO,TIPCREID,USEID,UPROID,  ' +
      'UPAGOID,BANCOID,USUARIO,FREG,FORPAGOID,ASOAPENOM,             ' +
      'CREDID,CRETCALID,TMONABR,CRETCALABR,                ' +
      'LISTAABR,CIAID,LISTAID,CIUDID FROM CRE301                     ' +
      'WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCredId)));
   DM1.cdsCredito.Open;
   If xTas_Int <> 0 Then
   Begin
      xTas_Int := StrToFloat(FloatToStrF(xTas_Int / 100, ffFixed, 15, 4));
      xTas_Flt := StrToFloat(FloatToStrF(xTas_Flt / 100, ffFixed, 15, 4));
      cNumer := xTas_Int * Power((1 + xTas_Int), xNumCuo);
      cDenom := Power((1 + xTas_Int), xNumCuo) - 1;
      xMon_Cuo := StrToFloat(FloatToStrF(xMonOto * (cNumer / cDenom), ffFixed, 15, 2));
      sFlt_Pag := StrToFloat(FloatToStrF(xMonOto * xTas_Flt / xNumCuo, ffFixed, 15, 2));
   End
   Else
   Begin
      xMon_Cuo := xMonOto / xNumCuo;
      xMon_Cuo := StrToFloat(FloatToStrF(xMon_Cuo, ffFixed, 15, 2));
   End;
   xMon_Aux := xMonOto;
   xSal_Pag := xMonOto;
   sMon_Cuo := 0;
   sAmo_Pag := 0;
   sInt_Pag := 0;
   sGas_Pag := 0;
   s := 0;
   r := 0;
   For i := 1 To xNumCuo Do
   Begin
      xInt_Pag := StrToFloat(FloatToStrF(xMonOto * xTas_Int, ffFixed, 15, 2));
      xAmo_Pag := xMon_Cuo - xInt_Pag;
      xMes := StrToInt(Copy(DateToStr(xFec_Pre), 4, 2)) + 1;
      xAno := StrToInt(Copy(DateToStr(xFec_Pre), 7, 4));
      If xMes > 12 Then
      Begin
         xMes := 1;
         xAno := xAno + 1;
      End;
      xDia := UltimoDia(xMes, xAno);
      xFec_Ven := StrToDate(xDia + '/' + Format('%.2d', [xMes]) + '/' + Trim(IntToStr(xAno)));
      sAmo_Pag := sAmo_Pag + xAmo_Pag;
      sInt_Pag := sInt_Pag + xInt_Pag;
      sMon_Cuo := sMon_Cuo + xMon_Cuo;
      If i = xNumCuo Then
      Begin
         If sAmo_Pag > xMon_Aux Then
            s := sAmo_Pag - xMon_Aux;
         If sInt_Pag > (sMon_Cuo - xMon_Aux) Then
            r := sInt_Pag - (sMon_Cuo - xMon_Aux);
      End;
      DM1.cdsDLabo.Insert;
      DM1.cdsDLabo.FieldByName('ASOID').AsString := xAsoid;
      DM1.cdsDLabo.FieldByName('ASOCODMOD').AsString := DM1.cdsCredito.FieldByName('ASOCODMOD').AsString;
      DM1.cdsDLabo.FieldByName('ASOCODAUX').AsString := DM1.cdsCredito.FieldByName('ASOCODAUX').AsString;
      DM1.cdsDLabo.FieldByName('TIPCREID').AsString := DM1.cdsCredito.FieldByName('TIPCREID').AsString;
      DM1.cdsDLabo.FieldByName('TMONID').AsString := 'N';
      DM1.cdsDLabo.FieldByName('TMONABR').AsString := 'S/.';
      DM1.cdsDLabo.FieldByName('CRECUOTA').AsInteger := i;
      DM1.cdsDLabo.FieldByName('CRECUOTAINI').AsInteger := i;
      DM1.cdsDLabo.FieldByName('CREFVEN').AsDateTime := xFec_Ven;
      DM1.cdsDLabo.FieldByName('CREFVENINI').AsDateTime := xFec_Ven;
      DM1.cdsDLabo.FieldByName('NUMCUOORI').AsInteger := i;
      DM1.cdsDLabo.FieldByName('FECVENORI').AsDateTime := xFec_Ven;
      DM1.cdsDLabo.FieldByName('CREAMORT').AsFloat := xAmo_Pag - s + r;
      DM1.cdsDLabo.FieldByName('CREINTERES').AsFloat := xInt_Pag + s - r;
      DM1.cdsDLabo.FieldByName('CREFLAT').AsFloat := (xFlat/xNumCuo) ;
      DM1.cdsDLabo.FieldByName('MONPACDESGRAV').AsFloat := (xDesg/xNumCuo) ;
      DM1.cdsDLabo.FieldByName('CREMTO').AsFloat := xMon_Cuo + (xFlat/xNumCuo) + (xDesg/xNumCuo);
      DM1.cdsDLabo.FieldByName('CRECAPCRON').AsFloat := xSal_Pag;
      DM1.cdsDLabo.FieldByName('AREAID').AsString := DM1.xArea;
      DM1.cdsDLabo.FieldByName('USUARIO').AsString := DM1.wUsuario;
      DM1.cdsDLabo.FieldByName('FREG').AsDateTime := DM1.FechaSys;
      DM1.cdsDLabo.FieldByName('HREG').AsString := DateToStr(DM1.FechaSys) + DM1.HoraSys;
      DM1.cdsDLabo.FieldByName('CRESALDO').AsFloat := xMon_Cuo + sFlt_Pag + sSeg_Des;;
      DM1.cdsDLabo.FieldByName('CREMES').AsString := Copy(DateToStr(xFec_Ven), 4, 2);
      DM1.cdsDLabo.FieldByName('CREANO').AsString := Copy(DateToStr(xFec_Ven), 7, 4);
      DM1.cdsDLabo.FieldByName('CREMESINI').AsString := Copy(DateToStr(xFec_Ven), 4, 2);
      DM1.cdsDLabo.FieldByName('CREANOINI').AsString := Copy(DateToStr(xFec_Ven), 7, 4);
      DM1.cdsDLabo.FieldByName('USEID').AsString := DM1.cdsCredito.FieldByName('USEID').AsString;
      DM1.cdsDLabo.FieldByName('UPROID').AsString := DM1.cdsCredito.FieldByName('UPROID').AsString;
      DM1.cdsDLabo.FieldByName('UPAGOID').AsString := DM1.cdsCredito.FieldByName('UPAGOID').AsString;
      DM1.cdsDLabo.FieldByName('ASOAPENOM').AsString := DM1.cdsCredito.FieldByName('ASOAPENOM').AsString;
      DM1.cdsDLabo.FieldByName('CREDID').AsString := DM1.cdsCredito.FieldByName('CREDID').AsString;
      DM1.cdsDLabo.FieldByName('FORPAGOID').AsString := DM1.cdsCredito.FieldByName('FORPAGOID').AsString;
      If DM1.cdsCredito.FieldByName('FORPAGOID').AsString = '18' Then
         DM1.cdsDLabo.FieldByName('BANCOID').AsString := '04';
      DM1.cdsDLabo.FieldByName('CREESTID').AsString := '02';
      DM1.cdsDLabo.FieldByName('CREESTADO').AsString := 'POR COBRAR';
      DM1.cdsDLabo.FieldByName('CRECAPITAL').AsFloat := 0.00;
      DM1.cdsDLabo.FieldByName('CREMTOINT').AsFloat := 0.00;
      DM1.cdsDLabo.FieldByName('CREMTOFLAT').AsFloat := 0.00;
      DM1.cdsDLabo.FieldByName('CREMTOCOB').AsFloat := 0.00;
      DM1.cdsDLabo.FieldByName('MONCOBDESGRAV').AsFloat := 0.00;
      xSal_Pag := xMonOto - xAmo_Pag;
      xMonOto := xSal_Pag;
      xFec_Pre := xFec_ven;
   End;
   DM1.cdsDLabo.ApplyUpdates(0);
   DM1.cdsDLabo.Close;
   DM1.cdsCredito.Close;
end;

function TfAmplIndividual.UltimoDia(xMes, xAno: Integer): String;
var
   xDia: String;
Const
   FinDia: Array[1..13] Of String = ('31', '28', '31', '30', '31', '30', '31', '31', '30', '31', '30', '31', '29');
Begin
   If xAno Mod 4 = 0 Then
   Begin
      If xMes = 2 Then
         xMes := 13;
   End;
   Result := FinDia[xMes];
end;

//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - graba datos de ampliación
procedure TfAmplIndividual.grabadatarepro;
var xsql,xtipo,xfecvenini,xfecvenfin,xcorrelativo:String;
    xcreinteres:Double;
begin
 //Correlativo
   xsql:='SELECT NVL(max(CODSOLREP)+1,to_char(SYSDATE,''YYYY'')||''000001'') CORRELATIVO '
         +'FROM db2admin.COB_REP_CRE_CAB '
         +'WHERE to_char(fecgen,''YYYY'')=''2017'' ';
   DM1.cdsTmone.Close;
   DM1.cdsTmone.DataRequest(XSQL);
   DM1.cdsTmone.Open;
   xcorrelativo:=  DM1.cdsTmone.FieldByname('CORRELATIVO').AsString;

 //Tipo
   If length(trim(DM1.cdsSolicitud.FieldByName('USUAPRREPEXC').AsString))>0 Then
         xtipo:='EXCEPCIONAL'
   Else  xtipo:='ESTANDAR';

 //Datos del Nuevo Cronograma
   XSQL:= 'SELECT A.ASOID,A.CREDID,A.CREMTOOTOR,A.CREFOTORG,A.CREINTERES,A.CREDFLAT,A.TASFONDES,A.CRENUMCUO,'
         +'A.CRECUOTA,A.CODSOLREP, MIN(CREFVEN)CREFVENINI,MAX(CREFVEN)CREFVENFIN '
         +'FROM CRE301 A,CRE302 B '
         +'WHERE  A.ASOID='+quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND A.CREDID='+quotedstr(Trim(lblCreAmp.Caption))
         +'       AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID '
         +'GROUP BY A.ASOID,A.CREDID,A.CREMTOOTOR,A.CREFOTORG,A.CREINTERES,A.CREDFLAT,A.TASFONDES,A.CRENUMCUO,A.CRECUOTA,A.CODSOLREP ';
   DM1.cdsTmone.Close;
   DM1.cdsTmone.DataRequest(XSQL);
   DM1.cdsTmone.Open;
   xcrecuota  :=  DM1.cdsTmone.FieldByname('CRECUOTA').asFloat;
   xfecvenini :=  DM1.cdsTmone.FieldByname('CREFVENINI').AsString;
   xfecvenfin :=  DM1.cdsTmone.FieldByname('CREFVENFIN').AsString;
   xcreinteres:=  DM1.cdsTmone.FieldByname('CREINTERES').asFloat;

   XSQL:='Insert Into DB2ADMIN.COB_REP_CRE_CAB(CODSOLREP,ASOID,ASOCODMOD,ASODNI,CREDID,TIPCREID,CRECUOTA,'
        +'FORPAGOID,CFCDES_F,DIAATR,IMPSALTOT,IMPSALREP,IMPSALCAP,TIPREC,TIPREP,TASINTREP,NUMCRENUE,CRENUMCUO,'
        +'CRENUMGRA,FECINIVEN,FECFINVEN,IMPCUOREP,DESMOTREC,USUGEN,FECGEN) VALUES('
        +quotedstr(xcorrelativo)+','
        +quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('ASOCODMOD').AsString)+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('ASODNI').AsString)+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('CREDID').AsString)+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('TIPCREID').AsString)+','
        +Dm1.CdsSolicitud.FieldByName('CRECUOTA').AsString+','
        +quotedstr(Dm1.CdsSolicitud.FieldByName('FORPAGOID').AsString)+','
        +quotedstr('-')+','
        +IntToStr(xdiasatra)+','
        +FloatToStr(xsaldotot)+','
        +FloatToStr(xsaldorep)+','
        +FloatToStr(xsaldocap)+','
        +quotedstr('AMPLIACION')+','
        +quotedstr(xtipo)+','
        +FloatToStr(xcreinteres)+','
        +quotedstr(trim(lblCreAmp.Caption))+','
        +speNumCuo.Text+','
        +'0,'
        +quotedstr(xfecvenini)+','
        +quotedstr(xfecvenfin)+','
        +FloatToStr(xcrecuota)+','
        +quotedstr('')+','
        +quotedstr(DM1.wUsuario)+',sysdate)';
     Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     Except
        ShowMessage('Error al insertar en la cabecera de los datos de la Reprogramación: COB_REP_CRE_CAB');
        DM1.DCOM1.AppServer.SolRollBack;
        exit;
     End;

    //ACTUALIZA CRONOGRAMAS CON EL CÓDIGO DE SOLICITUD
    XSQL:='Update CRE301 SET CODSOLREP='+quotedstr(xcorrelativo)+
          ' Where ASOID='+quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND '+
          '       CREDID='+quotedstr(Dm1.CdsSolicitud.FieldByName('CREDID').AsString);
     Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     Except
        ShowMessage('Error al actualizar en número de solicitud en la cabecera del cronograma original: CRE301');
        DM1.DCOM1.AppServer.SolRollBack;
        exit;
     End;

    XSQL:='Update CRE301 SET CODSOLREP='+quotedstr(xcorrelativo)+
          ' Where ASOID='+quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND '+
          '       CREDID='+quotedstr(Trim(lblCreAmp.Caption));
     Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     Except
        ShowMessage('Error al actualizar en número de solicitud en la cabecera del cronograma nuevo: CRE301');
        DM1.DCOM1.AppServer.SolRollBack;
        exit;
     End;

end;
//Final HPC_201711_COB

//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - graba datos de ampliación
procedure TfAmplIndividual.datoscreditoREP;
var XSQL:String;
begin
 //Días de atraso
   XSQL := 'SELECT MAX(TRUNC(SYSDATE) - CREFVEN) DIASATRASO'
         + ' FROM CRE302 '
         + ' Where ASOID = ' + QuotedStr(DM1.cdsSolicitud.FieldByName('ASOID').AsString) + ' And CREDID = ' + QuotedStr(DM1.cdsSolicitud.FieldByName('CREDID').AsString)
         + '    AND CREESTID IN (''02'', ''11'', ''14'', ''27'')'
         + '    AND (NVL(CREMTO,0) - NVL(CREMTOCOB,0)) > 0'
         + ' Order By CREDID,CRECUOTA ';
   DM1.cdsTmone.Close;
   DM1.cdsTmone.DataRequest(xSQL);
   DM1.cdsTmone.Open;
   xdiasatra := Dm1.cdsTmone.Fieldbyname('DIASATRASO').AsInteger;

 //Saldos de la deuda
  XSQL:='SELECT ASOID,CREDID,SUM(NVL(TOT_VEN,0)) TOT_VEN, SUM(NVL(TOT_PER,0)) TOT_PER,'
       +' SUM(NVL(TOT_DIF,0) )TOT_DIF,SUM(NVL(TOT_ADE,0)) TOT_ADE,SUM(NVL(TOT_PEN,0)) TOT_PEN,'
       +' SUM(NVL(TOT_VEN,0)+NVL(TOT_PER,0)+NVL(TOT_DIF,0)+NVL(TOT_ADE,0)) SALDO_REP,'
       +' SUM(NVL(TOT_VEN,0)+NVL(TOT_PER,0)+NVL(TOT_DIF,0)+NVL(TOT_PEN,0)) SALDO_TOT,'
       +' SUM(NVL(SALDOPORPAGAR,0)) SALDOPORPAGAR,SUM(NVL(SALDOCAPITAL,0)) SALDO_CAPITAL '
       +' FROM  '
       +' (SELECT ASOID,CREDID,CREESTID,CRECUOTA,'
       +'  CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')<TO_CHAR(SYSDATE,''YYYYMM''))'
       +'  AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL)'
       +'  AND CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END TOT_VEN,'
       +'  CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')=TO_CHAR(SYSDATE,''YYYYMM''))'
       +'  AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL)'
       +'  AND CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END TOT_PER,'
       +'  CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN<>CREFVENINI)'
       +'  AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       +'  THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END TOT_DIF,'
       +'  CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) '
       +'  AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
       +'  AND CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN (NVL(CREAMORT,0)-NVL(CRECAPITAL,0)) END TOT_ADE ,'
       +'  CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM''))'
       +'  AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL)'
       +'  AND CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONPACDESGRAV,0))-NVL(CREMTOCOB,0) END TOT_PEN,'
       +'  CASE WHEN CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN NVL(CREMTO, 0) - NVL(CREMTOCOB, 0) END SALDOPORPAGAR, '
       +'  CASE WHEN CREESTID IN (''02'',''27'',''11'',''14'',''19'')'
       +'  THEN NVL(CREAMORT, 0) - NVL(CRECAPITAL, 0) END SALDOCAPITAL '
      +'  FROM CRE302 '
       +' WHERE  ASOID='+quotedstr(DM1.cdsSolicitud.FieldByName('ASOID').AsString)+' AND CREDID='+quotedstr(DM1.cdsSolicitud.FieldByName('CREDID').AsString)+' AND CREESTID IN (''02'',''27'',''11'',''14'',''19'') '
       +' ) '
       +'GROUP BY ASOID,CREDID ';
   DM1.cdsTmone.Close;
   DM1.cdsTmone.DataRequest(xSQL);
   DM1.cdsTmone.Open;
   xsaldotot :=  Dm1.cdsTmone.Fieldbyname('SALDO_TOT').AsFloat;
   xsaldocap :=  Dm1.cdsTmone.Fieldbyname('SALDO_CAPITAL').AsFloat;
   xsaldorep :=  Dm1.cdsTmone.Fieldbyname('SALDO_REP').AsFloat;
end;
//Final HPC_201711_COB

end.



