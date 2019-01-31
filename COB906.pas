// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB906
// Formulario                    : FDETPAGOS
// Fecha de Creación             :
// Autor                         : Equipo de sistemas
// Objetivo                      : Detalle de Pagos
// Actualizaciones:
// -----------------------------------------------------------------------
// Actualizaciones:
// HPC_201215_COB : Se agrega la lógica de anulación/extorno de pagos
// DPP_201211_COB : Pase se realiza de acuerdo al HPC_201215_COB
// HPC_201614_COB : Se adicona extorno para pagos adelantados
//                : Se adiciona funcionalidad de extorno de aplicaciones CCI
// HPC_201615_COB : Para el extorno de aplicaciones CCI se adiciona controles
unit COB906;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, ppStrtch, ppMemo,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, Db;

type
  TfDetPagos = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    dtgDetPag: TwwDBGrid;
    //Inicio: DPP_201206_COB
    dtgDetPagIButton_: TwwIButton;
    //Fin: DPP_201206_COB
    BitPrint: TBitBtn;
    ppDBefectivo: TppDBPipeline;
    ppRepEfe: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLblRecibo: TppLabel;
    ppMonto: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLblAsociado: TppLabel;
    ppLblMonSol: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppMeses: TppMemo;
    ppLblFecha: TppLabel;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    BitAnular: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    //Inicio: DPP_201206_COB
    procedure dtgDetPagIButton_Click(Sender: TObject);
    //Fin: DPP_201206_COB
    procedure BitPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ppRepEfeCancel(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitAnularClick(Sender: TObject);
    procedure dtgDetPagDblClick(Sender: TObject);
    procedure dtgDetPagRowChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function SumaExceso(xAsoId,xCredId,xCreCuota:String):Currency;
    // se modifica Función que evalua los pagos a anular y determina si es posible realizar dicha operación
    function DetAplicacion2(xAsoId:String;xCredIdv:String;xCreCuota:String;xNroope:String;
                               xFoperac:String;xTransintid:String;xCremtoCobra:Currency):String;
  public
    { Public declarations }
    procedure ImpReciboEfe(xAsoId,xCreDid,xCreDocPag,xForpagId:String);
    procedure AnulaPagos(xAsoId, xCreDid, xDocPag, xFrmPag, xFecPag : String);
    procedure AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado : String ; tCremtoCob: Currency );
    procedure DistCrono(xAsoId,xCredId,xCreCuota,xCreEstid,xCreEstado,xCrefPag:String;xCremtoCob,xCremToInt,xCremtoExc:Currency);

  end;

var
  fDetPagos: TfDetPagos;

implementation
//Inicio HPC_201614_COB
//Se adiciona fuentes al uses
uses COBDM1, COB904, COB914,MsgDlgs, StrUtils;
//Final HPC_201614_COB
{$R *.dfm}

procedure TfDetPagos.BitSalirClick(Sender: TObject);
begin
 Close;
end;

//Inicio: DPP_201206_COB
procedure TfDetPagos.dtgDetPagIButton_Click(Sender: TObject);
//Fin: DPP_201206_COB
Var xAsoId,xCredId,xCreCuota,xCreCuoFin,xfCalc:String;
    xSaldoP:Currency;
begin
If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
     Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
     End;

DM1.xSal:='B';

xAsoId:=DM1.cdsCuotas.FieldByName('ASOID').AsString;
xCredId:=DM1.cdsCuotas.FieldByName('CREDID').AsString;
xCreCuota:=DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
xSaldoP:=0.00;
   fNPago:=Nil;
   fNPago:= tfNPago.create(self) ;
   DM1.CrgLisFrmPag;
   If Not fNPago.DBLCTipCob.Enabled Then
      Begin
         MessageDlg('USUARIO NO TIENE NINGUNA FORMAS DE PAGO ASIGNADA !!!! ', mtError,[mbOk],0);
         Exit;
      End;    
   DM1.xCnd:='0';
   xCreCuoFin:=DM1.cdsCuotas.fieldByname('CRECUOTA').AsString;
   fNPago.EdtCuotas.Text := 'Cuota :  '+xCrecuota;
   DM1.cdsCBcos.Close;

   // DM1.cdsCBcos.DataRequest('SELECT BANCOID,BANCONOM FROM TGE105 WHERE BANCOID IN (''03'',''04'',''05'') Order By BANCOID') ;

   DM1.cdsCBcos.DataRequest('SELECT BANCOID,BANCONOM FROM TGE105 WHERE  NVL(FLAVIGCOB, ''X'') = ''S'' Order By BANCOID') ;

   DM1.cdsCBcos.Open;

   fNPago.DBLCBanco.LookupTable := DM1.cdsCBcos; fNPago.DBLCBanco.LookupField := 'BANCOID';
   fNPago.Showmodal;
   fNPago.Free;
end;

procedure TfDetPagos.BitPrintClick(Sender: TObject);
var xAsoid,xCreDid,xCreDocPag,xForpagId,xMeses:String;
    xCremToCob:Currency;
    xInt:Real;
    xLin:Integer;
begin
If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
       Exit;
      End;

If DM1.cdsDetalle.FieldByname('FORPAGID').AsString='02' Then
   Begin
     xAsoid:=DM1.cdsDetalle.FieldByname('ASOID').AsString ;
     xCreDid:=DM1.cdsDetalle.FieldByname('CREDID').AsString ;
     xCreDocPag:=DM1.cdsDetalle.FieldByname('CREDOCPAG').AsString;
     xForpagId:=DM1.cdsDetalle.FieldByname('FORPAGID').AsString;
     ImpReciboEfe(xAsoId, xCreDid, xCreDocPag, xForpagId);
   End
Else
   Begin
   End;

end;

procedure TfDetPagos.FormActivate(Sender: TObject);
var
   xCremtocob:Currency;
begin
   xCremtocob:=0;
   DM1.cdsDetalle.First;
   While Not DM1.cdsDetalle.Eof do
   Begin
   // Inicio: HPP_200917_COB por RMEDINA
   // se retira la aplicación de Aplicación de Excesos
     If DM1.cdsDetalle.fieldbyname('TRANSINTID').AsString <>'DEV' Then
      //  xCremtocob :=  xCremtocob + (DM1.cdsDetalle.fieldbyname('CREMTOCOB').AsCurrency-DM1.cdsDetalle.fieldbyname('CREAPLEXC').AsCurrency)
         xCremtocob :=  xCremtocob + (DM1.cdsDetalle.fieldbyname('CREMTOCOB').AsCurrency)
     else
     //   xCremtocob :=  xCremtocob - (DM1.cdsDetalle.fieldbyname('CREMTOCOB').AsCurrency-DM1.cdsDetalle.fieldbyname('CREAPLEXC').AsCurrency);
       xCremtocob :=  xCremtocob - (DM1.cdsDetalle.fieldbyname('CREMTOCOB').AsCurrency);
     DM1.cdsDetalle.Next;
   // Fin: HPP_200917_COB
   End;
   dtgDetPag.ColumnByName('CREFPAG').FooterValue :='Total';
   dtgDetPag.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtocob,ffNumber, 10, 2);
   BitAnular.Visible:=DM1.UsrAnuExt(DM1.wUsuario);
end;

procedure TfDetPagos.ImpReciboEfe(xAsoId, xCreDid, xCreDocPag, xForpagId: String);
var xMeses:String;
    xCremToCob:Currency;
    xInt:Real;
    xLin:Integer;
begin
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest('SELECT ASOID,CREDID,CREDOCPAG,CREESTID,CREANO,CREMES,CREMTOCOB FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND CREDOCPAG='+QuotedStr(Trim(xCreDocPag))+' AND FORPAGID='+QuotedStr(Trim(xForpagId))+' AND CREESTID<>''13'' ORDER BY CREDID,CRECUOTA') ;
     DM1.cdsQry2.Open;
     TNumericField(DM1.cdsQry2.fieldbyname('CREMTOCOB')).DisplayFormat:='###,###.#0';
     If DM1.cdsQry2.RecordCount > 0 Then
        Begin
           xCremToCob:=0;xMeses:='';
           DM1.cdsQry2.First;
           xLin:=0;
           While Not DM1.cdsQry2.Eof Do
             Begin
                xLin:=xLin + 1;
                xCremToCob:=xCremToCob + DM1.cdsQry2.FieldByname('CREMTOCOB').AsFloat;
                If xLin<5 Then
                  xMeses:=xMeses+(DM1.DesMes(StrToInt(DM1.cdsQry2.FieldByname('CREMES').AsString),'S')+'/'+DM1.cdsQry2.FieldByname('CREANO').AsString)+'=  '+DM1.StrSpace(FormatFloat('##,###.#0',DM1.cdsQry2.FieldByname('CREMTOCOB').AsFloat),7)+'   '
                Else
                   Begin
                     xLin:=0;
                     xMeses:=xMeses+(DM1.DesMes(StrToInt(DM1.cdsQry2.FieldByname('CREMES').AsString),'S')+'/'+DM1.cdsQry2.FieldByname('CREANO').AsString)+'=  '+DM1.StrSpace(FormatFloat('##,###.#0',DM1.cdsQry2.FieldByname('CREMTOCOB').AsFloat),7)+#13;
                   End;
                DM1.cdsQry2.Next;
             End;
             ppLblRecibo.Caption:='N° '+Copy(xCreDocPag,6,10);
             ppMonto.Caption :='S/.  '+FormatFloat('###,###.#0',xCremToCob);
             ppLblAsociado.Caption :=Copy(Trim(DM1.cdsAso.FieldByname('ASOAPENOM').AsString),1,40)+'   (Cod-Mod : '+Trim(DM1.cdsAso.FieldByname('ASOCODMOD').AsString)+')'; xInt:=Int(xCremToCob);
             ppLblMonSol.Caption:= '('+Trim(DM1.xIntToLletras(StrToInt(FloatToStr(xInt)),DM1.Valores(FloatToStr(xCremToCob))))+')';
             ppMeses.Lines.Add('POR CONCEPTO  : (Pago de cuota y/o cuotas Préstamo N° '+Copy(DM1.cdsSolicitud.FieldByname('CREDID').AsString,11,5)+')');
             ppMeses.Lines.Add('');
             ppMeses.Lines.Add('POR LOS MESES (En Nuevos Soles)');
             ppMeses.Lines.Add('------------------------------');ppMeses.Lines.Add('');
             ppMeses.Lines.Add(Copy(xMeses,1,Length(Trim(xMeses))));
             ppLblFecha.Caption :='Jesùs Marìa,'+FormatDateTime('d "de" mmmm "del" yyyy',now);
             ppRepEfe.Print;
             ppRepEfe.Cancel;
        End;
        DM1.cdsQry2.Close;



end;

procedure TfDetPagos.ppRepEfeCancel(Sender: TObject);
begin
fDetPagos.Close;

end;

procedure TfDetPagos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsCambios.Close;
   DM1.cdsEjecuta.Close;
   DM1.cdsQry1.Close;
   DM1.cdsConcre.Close;
   DM1.cdsQry5.Close;
   DM1.cdsConcre.Close;
   DM1.cdsQry2.Close;
   DM1.cdsCBcos.Close;
   action:=cafree;
   fDetPagos:=Nil;
end;

// Se adiciona nuevas cpndiciones de anulación  (DetAplicacion2)
procedure TfDetPagos.BitAnularClick(Sender: TObject);
Var xAsoid,xCreDid,xCreCuota,xDocPag,xCrefPag,xSql,xFrmPag,xUser,xMensaje : String;
    xNroope,xFoperac,xTransintid,xMensage:String;
    xCremtoCobra:Currency;
    xRegistro: TBookmark;
    xImporte,xImpApl : Currency;
    Boton:Integer;
begin
   If DM1.UsrConsulta(Trim(DM1.wUsuario)) Then
   Begin
      MessageDlg('Usuario No Autorizado A Esta Opción / Solo CONSULTA !!!', mtError, [mbOk], 0);
      Exit;
   End;

   xAsoid       := DM1.cdsDetalle.FieldByName('ASOID').AsString;
   xCreDid      := DM1.cdsDetalle.FieldByName('CREDID').AsString;
   xCreCuota    := DM1.cdsDetalle.FieldByName('CRECUOTA').AsString;
   xFrmPag      := DM1.cdsDetalle.FieldByName('FORPAGID').AsString;

   xNroope      := DM1.cdsDetalle.FieldByName('Nroope').AsString;
   xFoperac     := DM1.cdsDetalle.FieldByName('Foperac').AsString;
   xTransintid  := DM1.cdsDetalle.FieldByName('Transintid').AsString;
   xCremtoCobra := DM1.cdsDetalle.FieldByName('CremtoCob').AsCurrency;
   xMensage     := DetAplicacion2(xAsoId,xCredId,xCreCuota,xNroope,xFoperac,xTransintid,xCremtoCobra);

   If xMensage<>'N' Then
   Begin
      MessageDlg(xMensage, mtError,[mbOk],0);
      Exit;
   End;


   XSQL:='SELECT ASOID,CREDID,CRECUOTA,NROOPE,FOPERAC,TRANSINTID,CREMTOCOB ' +
         'FROM CRE310  '+
         'WHERE ASOID='+QuotedStr(Trim(xAsoId))+
                ' AND CREDID='+QuotedStr(Trim(xCreDid))+
                ' AND NROOPE='+QuotedStr(Trim(xNroope))+
                ' AND FOPERAC =To_Date('+QuotedStr(Trim(xFoperac))+',''dd/mm/yyyy'') '+
                ' AND CREESTID NOT IN (''13'',''04'') Order By ASOID,CREDID,CRECUOTA ';
   DM1.cdsConcre.Close;
   DM1.cdsConcre.DataRequest(xSQL) ;
   DM1.cdsConcre.Open;
   While Not DM1.cdsConcre.Eof do
   Begin
      xMensage   := DetAplicacion2(DM1.cdsConcre.FieldByName('AsoId').AsString,
                                   DM1.cdsConcre.FieldByName('CredId').AsString,
                                   DM1.cdsConcre.FieldByName('CreCuota').AsString,
                                   DM1.cdsConcre.FieldByName('Nroope').AsString,
                                   DM1.cdsConcre.FieldByName('Foperac').AsString,
                                   DM1.cdsConcre.FieldByName('Transintid').AsString,
                                   DM1.cdsConcre.FieldByName('CremtoCob').AsCurrency);
      If xMensage<>'N' Then Break;
      DM1.cdsConcre.Next;
   End;

   If xMensage<>'N' Then
   Begin
      MessageDlg(xMensage, mtError,[mbOk],0);
      Exit;
   End;

   If xFrmPag<>'02' Then
   Begin
      If DM1.CrgDescrip('FORPAGOID='+QuotedStr(Trim(xFrmPag)),'COB101','PERANUCUO')='N' Then
      Begin
         xMensaje:='NO SE PUEDE ANULAR/EXTORNAR PAGOS POR : '+DM1.CrgDescrip('FORPAGOID='+QuotedStr(Trim(xFrmPag)),'COB101','FORPAGODES');
         MessageDlg(xMensaje, mtError,[mbOk],0);
         Exit;
      End;
   End
   Else
   Begin
//Inicio HPC_201614_COB
//Para el extorno de pagos en efectivo
   //If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='CAJ') And (Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03') Then
   If ((Copy(DM1.CrgArea(DM1.wUsuario),1,3)='CAJ') And (Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03')) or
      ((Copy(DM1.CrgArea(DM1.wUsuario),1,3)='COB') And (Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03')) Then
//Final HPC_201614_COB
      Else
      Begin
         MessageDlg(' SU NIVEL DE USUARIO NO LE PERMITE ANULAR PAGOS EN EFECTIVO !!! ', mtError,[mbOk],0);
         Exit;
      End;
   End;

   If Length(Trim(DM1.cdsDetalle.FieldByName('CREAPLEXC').AsString))=0 Then
      xImpApl:=0
   Else
      xImpApl:=DM1.cdsDetalle.FieldByName('CREAPLEXC').AsFloat;
   If xImpApl>0  Then
   Begin
      MessageDlg(' NO PUEDE ELIMINAR OPERACION EXISTE UNA DEVOLUCION O APLICACION !! ', mtError,[mbOk],0);
      Exit;
   End;
   xUser:=DM1.cdsDetalle.FieldByName('USUARIO').AsString;
   xCrefPag:=DM1.cdsDetalle.FieldByName('CREFPAG').AsString;

// Condiciona el cierre de caja sólo cuando la cobranza ha sido en efectivo
   If xFrmPag='02' Then
   Begin
      xSQL:='SELECT USUARIO,FECTRANS FROM CAJA902 WHERE USUARIO='+QuotedStr(xUser)+' AND FECTRANS='+QuotedStr(xCrefPag);
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSQL);
      DM1.cdsQry5.Open;
      If DM1.cdsQry5.RecordCount > 0 Then
      Begin
         DM1.cdsQry5.Close;
         MessageDlg('Liquidación De Cierre De Caja , Ya Fue Emitido..!', mtError, [mbOk], 0);
         Exit;
      End;
   End;
   DM1.cdsQry5.Close;

//Inicio HPC_201614_COB
//Se adiciona para el caso de extorno de beneficios y no estan marcados con el flag de contabilizados
// If DM1.cdsDetalle.FieldByName('CNTFLAG').AsString='S' Then
   If ( DM1.cdsDetalle.FieldByName('CNTFLAG').AsString='S') OR
      ( (DM1.cdsDetalle.FieldByName('TIPOCONT').AsString='BEN') AND
        (DM1.cdsDetalle.FieldByName('CNTANOMM').AsString<FormatDateTime('YYYYMM',DM1.FechaSys) ) ) Then
//Final HPC_201614_COB
      DM1.xSgr:='EXT'
   Else
      DM1.xSgr:='ANU';

//Inicio HPC_201614_COB
//Se adiciona para el caso de extorno de beneficios y no estan marcados con el flag de contabilizados
// If DM1.cdsDetalle.FieldByName('CNTFLAG').AsString='S' Then
   If ( DM1.cdsDetalle.FieldByName('CNTFLAG').AsString='S') OR
      ( (DM1.cdsDetalle.FieldByName('TIPOCONT').AsString='BEN') AND
        (DM1.cdsDetalle.FieldByName('CNTANOMM').AsString<FormatDateTime('YYYYMM',DM1.FechaSys) ) ) Then
//Final HPC_201614_COB
        Boton := Application.MessageBox ('¿Está Seguro De EXTORNAR Las Cuotas De Este Documento?','Extornar Cuotas',MB_YESNO+MB_ICONQUESTION)
   Else
       Boton := Application.MessageBox ('¿Está Seguro De ANULAR Las Cuotas De Este Documento?','Anular Cuotas',MB_YESNO+MB_ICONQUESTION);

   If Boton = ID_YES Then
   Begin
      xRegistro:=DM1.cdsCuotas.GetBookmark;
      Begin
         fMenObs:=Nil;
         fMenObs := tfMenObs.Create(Self) ;
         fMenObs.Caption := 'Anulación De Cuotas ';
         fMenObs.Showmodal;
         fMenObs.Free;
      End;
      Close;
      DM1.cdsCuotas.GotoBookmark(xRegistro);
   End;
end;


procedure TfDetPagos.AnulaPagos(xAsoId, xCreDid, xDocPag, xFrmPag, xFecPag: String);
var tAsoid, tCreDid, tCreCuota, tEstado, xSQL, rSQL,rSQL1,xCreEstid,xCreEstado: String;
    tCremtoCob: Currency ;
//Inicio HPC_201614_COB
//Se adiciona variables
    xCODAPLI,xConInc,xPERIODO:String;
    xMONEXT:Double;
//Final HPC_201614_COB
begin
//Inicio HPC_201614_COB
//Se adiciona periodo
//xSQL:='SELECT ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG '+
xSQL:='SELECT TO_CHAR(TRUNC(SYSDATE),''YYYYMM'') PERIODO, ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG '+
//Final HPC_201614_COB
      ',NVL(CREAMORT,0) CREAMORT,NVL(CREINTERES,0) CREINTERES,NVL(CREFLAT,0) CREFLAT,NVL(CREMTOCOB,0) CREMTOCOB, NVL(MONCOBDESGRAV,0) MONCOBDESGRAV, '+
      'TMONID,NVL(TCAMBIO,0)TCAMBIO,USUARIO,FREG,HREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,ARCHIVOFTP,CREOBS,CREANO,NROOPE, '+
      'NRONABO,AREAID,CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,CREESTID,CREESTADO,CREMTOCUO '+
      ',CREDOCPAG,AGENBCOID,FORPAGID,FORPAGABR,NROREFINAN,CREFLAGDEV,CREESTANT,CREESTANTDES,NROOPETMP,FOPERACTMP,ASOSITID,CNTANOMM,TIPOCONT,NVL(CREMTOEXC,0) CREMTOEXC,NVL(CREAPLEXC,0) CREAPLEXC,PERCONTA,TIPNABO,CNTFLAG FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND CREDOCPAG='+QuotedStr(Trim(xDocPag))+' AND FORPAGID='+QuotedStr(Trim(xFrmPag))+' AND CREFPAG =To_Date('+QuotedStr(Trim(xFecPag))+',''dd/mm/yyyy'') AND CREESTID NOT IN (''13'',''04'') Order By ASOID,CREDID,CRECUOTA ';

DM1.cdsConcre.Close;
DM1.cdsConcre.DataRequest(xSQL) ;
DM1.cdsConcre.Open;
If DM1.cdsConcre.RecordCount > 0 Then
   Begin
     If DM1.xSgr='EXT' Then
        Begin xCreEstid:='04';  xCreEstado:='EXTORNADO';  End
     Else
        Begin xCreEstid:='13';  xCreEstado:='ANULADO';   End;
     rSQL:='UPDATE CRE310 SET CREESTID='+QuotedStr(xCreEstid)+', CREESTADO='+QuotedStr(xCreEstado)+' WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND CREDOCPAG='+QuotedStr(Trim(xDocPag))+' AND FORPAGID='+QuotedStr(Trim(xFrmPag))+' AND CREFPAG =To_Date('+QuotedStr(Trim(xFecPag))+',''dd/mm/yyyy'') ';
     DM1.DCOM1.AppServer.EjecutaSql(rSQL);
     DM1.cdsConcre.First;
     While Not DM1.cdsConcre.Eof Do
     Begin
        tAsoid:=DM1.cdsConcre.FieldByName('ASOID').AsString;
        tCreDid:=DM1.cdsConcre.FieldByName('CREDID').AsString;
        tCreCuota:=DM1.cdsConcre.FieldByName('CRECUOTA').AsString;
        tCremtoCob:=DM1.cdsConcre.FieldByName('CREMTOCOB').AsFloat;
        tEstado:=Trim(DM1.cdsConcre.FieldByName('CREESTANT').AsString)+Trim(DM1.cdsConcre.FieldByName('CREESTANTDES').AsString);
//Inicio HPC_201614_COB
//Se adiciona variables
        xMONEXT:=xMONEXT+DM1.cdsConcre.FieldByName('CREMTOCOB').AsFloat;
        xPERIODO:=DM1.cdsConcre.FieldByName('PERIODO').AsString;
//Final HPC_201614_COB
        AnulCuota(tAsoid,tCreDid,tCreCuota,tEstado,tCremtoCob);
        DM1.cdsConcre.Next;
     End;
     DM1.cdsConcre.First;
     While Not DM1.cdsConcre.Eof Do
     Begin
// se reordena por salir del margen
         rSQL:='INSERT INTO COB901(ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG, '
              +'                   CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,UPROID, '
              +'                   DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,ARCHIVOFTP,CREOBS,CREANO,NROOPE,NRONABO, '
              +'                   AREAID,CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,CREESTID,CREESTADO,CREMTOCUO, '
              +'                   CREDOCPAG,AGENBCOID,FORPAGID,FORPAGABR,NROREFINAN,CREFLAGDEV,CREESTANT, '
              +'                   CREESTANTDES,NROOPETMP,FOPERACTMP,ASOSITID,CNTANOMM,TIPOCONT,CREMTOEXC, '
              +'                   CREAPLEXC,PERCONTA,TIPNABO,CNTFLAG,CREMENANU,USRANULA,FECANULA,MONCOBDESGRAV) '
              +'VALUES ('+QuotedStr(DM1.cdsConcre.FieldByName('ASOID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('ASOCODMOD').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('ASOCODAUX').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('USEID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('TIPCREID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CREDID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CRECUOTA').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CREFPAG').AsString)+','
                         +DM1.cdsConcre.FieldByName('CREAMORT').AsString+','
                         +DM1.cdsConcre.FieldByName('CREINTERES').AsString+','
                         +DM1.cdsConcre.FieldByName('CREFLAT').AsString+','
                         +DM1.cdsConcre.FieldByName('CREMTOCOB').AsString+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('TMONID').AsString)+','
                         +DM1.cdsConcre.FieldByName('TCAMBIO').AsString+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('USUARIO').AsString)+','
                         +QuotedStr(DateToStr(DM1.cdsConcre.FieldByName('FREG').AsDateTime))+','
                         +QuotedStr(DateToStr(DM1.cdsConcre.FieldByName('HREG').AsDateTime))+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('UPROID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('DPTOID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('UPAGOID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('BANCOID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CCBCOID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('ASOAPENOM').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('ARCHIVOFTP').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CREOBS').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CREANO').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('NROOPE').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('NRONABO').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('AREAID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CREMES').AsString)+','
                         +CurrToStr(DM1.cdsConcre.FieldByName('CREMTODEV').AsCurrency) +','
                         +QuotedStr(DM1.cdsConcre.FieldByName('FORPAGOABR').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('TRANSINTID').AsString)+','
                         +QuotedStr(xCreEstid)+','
                         +QuotedStr(xCreEstado)+','
                         +DM1.cdsConcre.FieldByName('CREMTOCUO').AsString+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CREDOCPAG').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('AGENBCOID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('FORPAGID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('FORPAGABR').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('NROREFINAN').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CREFLAGDEV').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CREESTANT').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CREESTANTDES').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('NROOPETMP').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('FOPERACTMP').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('ASOSITID').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CNTANOMM').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('TIPOCONT').AsString)+','
                         +DM1.cdsConcre.FieldByName('CREMTOEXC').AsString+','
                         +DM1.cdsConcre.FieldByName('CREAPLEXC').AsString+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('PERCONTA').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('TIPNABO').AsString)+','
                         +QuotedStr(DM1.cdsConcre.FieldByName('CNTFLAG').AsString)+','
                         +QuotedStr(Trim(fMenObs.mObsDat.Lines.Text))+','
                         +QuotedStr(DM1.wUsuario)+',SYSDATE'+ ','
                         +DM1.cdsConcre.FieldByName('MONCOBDESGRAV').AsString + ')';
         DM1.DCOM1.AppServer.EjecutaSql(rSQL);
         DM1.cdsConcre.Next;
     End;

   End;

//Inicio HPC_201614_COB
//Si la forma de pago es CCI actualiz las tablas de CCI
//Inicio HPC_201615_COB
//Se adiciona inicialización de variable
xConInc:='';
//Final HPC_201615_COB
If xFrmPag='99' Then//CCI
Begin

//ACTUALIZA EN EL RESUMEN DE LA APLICACION CCI
 xSQL:='Select CODAPLICA FROM COB_APLI_CCI_CAB WHERE NUMOPERA='''+xDocPag+''' AND FECOPERA=To_Date('''+xFecPag+''')';
 DM1.cdsATransp.Close;
 DM1.cdsATransp.DataRequest(xSQL);
 DM1.cdsATransp.Open;
 xCODAPLI := DM1.cdsATransp.FieldByname('CODAPLICA').AsString;
//Inicio HPC_201615_COB
//Se adiciona condicion en el filtro
 xSQL:='UPDATE COB_APLI_CCI_DET SET MONAPL=NVL(MONAPL,0)-'+FloatToStr(xMONEXT)+',MONEXT=NVL(MONEXT,0)+'+FloatToStr(xMONEXT)+',FECEXT=TRUNC(SYSDATE),USUEXT='''+DM1.wUsuario+''' '+
       'WHERE CODAPLICA='''+xCODAPLI+''' AND ASOID='''+xAsoId+''' AND NVL(MONEXT,0)=0 ';
//Final HPC_201615_COB
 Try
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
 Except
     xConInc := '1';
     ErrorMsg(Caption, 'Se ha producido un error al realizar la actualización del resumen CCI (1)');
 End;

//Inicio HPC_201615_COB
//Se adiciona control en el extorno de la aplicacion CCI
If  Length(Trim(xConInc))=0 Then
Begin
  //xSQL:='UPDATE COB_APLI_CCI_CAB SET MONTOTAPL=NVL(MONTOTAPL,0)-'+FloatToStr(xMONEXT)+','+
  //      'MONEXT=NVL(MONEXT,0)+'+FloatToStr(xMONEXT)+' WHERE  CODAPLICA='''+xCODAPLI+''' ';
  XSQL:='UPDATE DB2ADMIN.COB_APLI_CCI_CAB '
       +'SET MONTOTAPL=(SELECT SUM(NVL(MONAPL,0)) FROM COB_APLI_CCI_DET WHERE CODAPLICA='''+xCODAPLI+''' ),'
       +'       MONEXT=(SELECT SUM(NVL(MONEXT,0)) FROM COB_APLI_CCI_DET WHERE CODAPLICA='''+xCODAPLI+''' ) '
       +'WHERE CODAPLICA='''+xCODAPLI+''' ';
  Try
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  Except
     xConInc := '1';
     ErrorMsg(Caption, 'Se ha producido un error al realizar la actualización del resumen CCI (2)');
 End;

  If  Length(Trim(xConInc))=0 Then
  Begin
     //ACTUALIZA EN LA RESERVA TECNICA DEL PERIODO DE LA APLICACIÓN
     xSQL:='UPDATE RES_TEC_1 SET MONCUO=NVL(MONCUO,0)-'+FloatToStr(xMONEXT)+',ACUMULADO=NVL(ACUMULADO,0)+'+FloatToStr(xMONEXT)+
           ' WHERE ASOID='''+xAsoId+''' AND PERIODO='''+xPERIODO+''' ';
     Try
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     Except
         xConInc := '1';
         ErrorMsg(Caption, 'Se ha producido un error al realizar la actualización la Reserva Técnica CCI (3)');
     End;
  End;
End;
//Final HPC_201615_COB

 If xConInc='1' Then
 Begin
    ShowMessage('Se ha producido error en la actualización del extorno del CCI');
    exit;
 End;
End;
//Final HPC_201614_COB

DM1.AplicaSaldoPre(tAsoId, tCreDid );
DM1.cdsConcre.Close;
//Fin: DPP_201211_COB
end;

procedure TfDetPagos.AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado: String; tCremtoCob: Currency);
var xCreEstid,xCreEstado,xSQL:String;
    xCrefPag,xCrefVen:String;
    xCremtoCob,xCremtoExc:Currency;
    xCreAmort,xCreInteres,xCreFlat,xCremtoInt:Currency;
    vCremtoexc:Currency;
//Inicio: DPP_201211_COB
    xMonpacDesgrav, xCreMto: Currency;
//Fin: DPP_201211_COB
begin
//Inicio: DPP_201211_COB
xSQL:='SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CREMTOCOB,CREMONLOC,CREMONEXT,CRECAPITAL,CREMTOINT,CREMTOFLAT, '+
      'FORPAGOABR,CREESTID,CREESTADO,FLGINT,FLGPAG,CREDOCPAG,CRESALDO,NVL(TCAMBIO,0) TCAMBIO,CREMTO,  '+
      'CREAMORT,CREINTERES,CREFLAT,MONPACDESGRAV,MONCOBDESGRAV FROM CRE302 WHERE ASOID='+QuotedStr(Trim(tAsoId))+' AND CREDID='+QuotedStr(Trim(tCreDid))+' AND CRECUOTA='+QuotedStr(Trim(tCreCuota)) ;
DM1.cdsQry1.Close;
DM1.cdsQry1.DataRequest(xSQL);
DM1.cdsQry1.Open;
If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      DM1.cdsQry1.Edit;
      DM1.cdsQry1.FieldByName('CREMTOCOB').AsFloat:= 0;
      If DM1.cdsQry1.FieldByName('CREMTOCOB').AsFloat > 0 Then
         Begin
           DM1.cdsQry1.FieldByName('CREMONLOC').AsFloat:= 0;
         End
      Else
         Begin
           DM1.cdsQry1.FieldByName('CREMONLOC').AsFloat:= 0;
           DM1.cdsQry1.FieldByName('CREMONEXT').AsFloat:= 0;
           DM1.cdsQry1.FieldByName('TCAMBIO').AsFloat:=   0;
         End;
      xCreMto:=DM1.cdsQry1.FieldByName('CREMTO').AsFloat;
      xCrefVen:=DM1.cdsQry1.FieldByName('CREFVEN').AsString;
      xCreAmort:=DM1.cdsQry1.FieldByName('CREAMORT').AsFloat;
      xCreInteres:=DM1.cdsQry1.FieldByName('CREINTERES').AsFloat;
      xCreFlat:=DM1.cdsQry1.FieldByName('CREFLAT').AsFloat;
      xMonpacDesgrav:=DM1.cdsQry1.FieldByName('MONPACDESGRAV').AsFloat;
      xCremtoInt:=DM1.cdsQry1.FieldByName('CREMTOINT').AsFloat;
      DM1.cdsQry1.FieldByName('CRESALDO').AsFloat:=   xCreMto;
      DM1.cdsQry1.FieldByName('CRECAPITAL').AsFloat:=   0;
      DM1.cdsQry1.FieldByName('CREMTOINT').AsFloat:=   0;
      DM1.cdsQry1.FieldByName('CREMTOFLAT').AsFloat:=   0;
      DM1.cdsQry1.FieldByName('MONCOBDESGRAV').AsFloat:=   0;
      DM1.cdsQry1.FieldByName('CREESTID').AsString :=Copy(tEstado,1,2);
      DM1.cdsQry1.FieldByName('CREESTADO').AsString :=Copy(tEstado,3,25);
      DM1.cdsQry1.FieldByName('FLGINT').AsString :='';
      DM1.cdsQry1.FieldByName('FLGPAG').AsString :='';
      DM1.cdsQry1.ApplyUpdates(0);
   End;
DM1.cdsQry1.Close;


//Recupera el Saldo Actual Regraba Pagos
xSQL:='SELECT MAX(CREFPAG) CREFPAG,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '+
      'FROM CRE310 WHERE ASOID='+QuotedStr(Trim(tAsoId))+' AND CREDID='+QuotedStr(Trim(tCreDid))+
      ' AND CRECUOTA='+QuotedStr(Trim(tCreCuota))+' AND CREESTID NOT IN (''13'',''04'',''99'') AND NUMDEV is null   ' ;

DM1.cdsQry1.Close;
DM1.cdsQry1.DataRequest(xSQL);
DM1.cdsQry1.Open;
If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xCremtoCob:=DM1.cdsQry1.FieldByName('CREMTOCOB').AsCurrency;
      xCrefPag:=DM1.cdsQry1.FieldByName('CREFPAG').AsString;
      If xCremtoCob>0 Then
         Begin
         If (Copy(xCrefVen,7,4)+Copy(xCrefVen,4,2)>Copy(xCrefPag,7,4)+Copy(xCrefPag,4,2)) And (xCremToInt=0) Then
            Begin
               If xCremtoCob>(xCreAmort+xCreFlat+xMonpacDesgrav) Then
                  xCremtoExc:=xCremtoCob-(xCreAmort+xCreFlat+xMonpacDesgrav)
               Else
                  xCremtoExc:=0;

               If xCremtoCob>=(xCreAmort+xCreFlat+xMonpacDesgrav) Then
                  Begin
                     xCreEstid:='23';  xCreEstado:='CANCELADO A';
                  End
               Else
                  Begin
                     xCreEstid:='27';  xCreEstado:='PARCIAL';
                  End;

                  DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid,xCreEstado, xCrefPag, xCremtoCob, xCremtoInt,xCremtoExc);
            End
         Else
            Begin
               If xCremtoCob>(xCreAmort+xCreInteres+xCreFlat+xMonpacDesgrav) Then
                  xCremtoExc:=xCremtoCob-(xCreAmort+xCreInteres+xCreFlat+xMonpacDesgrav)
               Else
                  xCremtoExc:=0;

               If xCremtoCob>=(xCreAmort+xCreInteres+xCreFlat+xMonpacDesgrav) Then
                  Begin
                     xCreEstid:='21';  xCreEstado:='CANCELADO';
                  End
               Else
                  Begin
                     xCreEstid:='27';  xCreEstado:='PARCIAL';
                  End;
               xCremtoExc:=vCremtoexc;
               DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid,xCreEstado, xCrefPag, xCremtoCob, xCremtoInt,xCremtoExc);
            End
         End
      Else
         Begin
            xCreEstid:='02';  xCreEstado:='POR COBRAR';
            DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid,xCreEstado, xCrefPag, xCremtoCob, xCremtoInt,xCremtoExc);
         End;
   End;
DM1.cdsQry1.Close;

//Fin: DPP_201211_COB
end;

procedure TfDetPagos.dtgDetPagDblClick(Sender: TObject);
begin
// ShowMessage('Usuario :  '+DM1.cdsDetalle.FieldByName('USUARIO').AsString+#13+#13+'Fecha De Registro :  '+DM1.cdsDetalle.FieldByName('HREG').AsString+#13+#13+'Observ. :  '+DM1.cdsDetalle.FieldByName('CREOBS').AsString  );
// Cambio por RMZ el 17/11/2008 SEGUN SAR 2008JC-0148   SAR2008JS-0002  DAD-RM-2008-0055  HPP_00047_CRE
  If FormatDateTime('DD/MM/YYYY',Dm1.cdsDetalle.FieldByName('HREG').AsDateTime)<>
         FormatDateTime('DD/MM/YYYY',Dm1.cdsDetalle.FieldByName('FREG').AsDateTime) Then
     ShowMessage('Usuario :  '+DM1.cdsDetalle.FieldByName('USUARIO').AsString+#13+#13+'Fecha De Registro :  '+DM1.cdsDetalle.FieldByName('FREG').AsString+#13+#13+'Observ. :  '+DM1.cdsDetalle.FieldByName('CREOBS').AsString  )
  Else
     ShowMessage('Usuario :  '+DM1.cdsDetalle.FieldByName('USUARIO').AsString+#13+#13+'Fecha De Registro :  '+DM1.cdsDetalle.FieldByName('HREG').AsString+#13+#13+'Observ. :  '+DM1.cdsDetalle.FieldByName('CREOBS').AsString  );
end;

procedure TfDetPagos.DistCrono(xAsoId, xCredId, xCreCuota, xCreEstid,xCreEstado, xCrefPag: String; xCremtoCob, xCremToInt,xCremtoExc: Currency);
var
   xSQL:String;
   sUno,sDos:Currency;
   xEstado:Integer;
begin
//Inicio: DPP_201211_COB
// Desagregación del monto pagado en los componentes de la cuota
   xSQL:='SELECT ASOID,CREDID,CRECUOTA,CRESALDO,CREFPAG,CREFVEN,CREMTO,CREAMORT,CREINTERES,MONPACDESGRAV, '
        +'       CREFLAT,CREMTOCOB, CRECAPITAL,CREMTOINT,CREMTOFLAT,MONCOBDESGRAV,CREMTOEXC,CREESTID,CREESTADO '
        +'FROM CRE302 '
        +'WHERE ASOID='+QuotedStr(xAsoId)
        +' AND CREDID='+QuotedStr(xCredId)
        +' AND CRECUOTA='+xCreCuota;
   DM1.cdsEjecuta.Close;
   DM1.cdsEjecuta.DataRequest(xSQL);
   DM1.cdsEjecuta.Open;
   If DM1.cdsEjecuta.RecordCount > 0 Then
   Begin
      If (Copy(DM1.cdsEjecuta.fieldbyname('CREFVEN').AsString,7,4)
         +Copy(DM1.cdsEjecuta.fieldbyname('CREFVEN').AsString,4,2) >
              Copy(xCrefPag,7,4)+Copy(xCrefPag,4,2)) And (xCremToInt=0) Then
         xEstado:=0
      Else
         xEstado:=1 ;

      DM1.cdsEjecuta.Edit;
      sUno := 0.00 ; sDos := 0.00 ;
      If xEstado>0 Then
      Begin
         If xCremtoCob > DM1.cdsEjecuta.fieldbyname('CREFLAT').AsCurrency Then
         Begin
           DM1.cdsEjecuta.fieldbyname('CREMTOFLAT').AsCurrency := DM1.cdsEjecuta.fieldbyname('CREFLAT').AsCurrency;
           sUno := xCremtoCob - DM1.cdsEjecuta.fieldbyname('CREFLAT').AsCurrency;
           If sUno > DM1.cdsEjecuta.fieldbyname('MONPACDESGRAV').AsCurrency Then
           Begin
              DM1.cdsEjecuta.fieldbyname('MONCOBDESGRAV').AsCurrency := DM1.cdsEjecuta.fieldbyname('MONPACDESGRAV').AsCurrency;
              sUno := sUno - DM1.cdsEjecuta.fieldbyname('MONPACDESGRAV').AsCurrency;
              If sUno > DM1.cdsEjecuta.fieldbyname('CREINTERES').AsCurrency Then
              Begin
                 DM1.cdsEjecuta.fieldbyname('CREMTOINT').AsCurrency := DM1.cdsEjecuta.fieldbyname('CREINTERES').AsCurrency ;
                 sDos := sUno - DM1.cdsEjecuta.fieldbyname('CREINTERES').AsCurrency;
                 If sDos > DM1.cdsEjecuta.fieldbyname('CREAMORT').AsCurrency Then
                 Begin
                    DM1.cdsEjecuta.fieldbyname('CRECAPITAL').AsCurrency := DM1.cdsEjecuta.fieldbyname('CREAMORT').AsCurrency ;
                 End
                 Else
                 Begin
                    DM1.cdsEjecuta.fieldbyname('CRECAPITAL').AsCurrency := sDos;
                 End;
              End
              Else
              Begin
                 DM1.cdsEjecuta.fieldbyname('CREMTOINT').AsCurrency := sUno;
              End;
           End
           Else
           Begin
              DM1.cdsEjecuta.fieldbyname('MONCOBDESGRAV').AsCurrency := sUno;
           End;
         End
         Else
         Begin
           DM1.cdsEjecuta.fieldbyname('CREMTOFLAT').AsCurrency := xCremtoCob;
         End;
      End
      Else
      Begin
         Begin
            DM1.cdsEjecuta.fieldbyname('CREMTOINT').AsCurrency:=0.00;
            If xCremtoCob > DM1.cdsEjecuta.fieldbyname('CREFLAT').AsCurrency Then
            Begin
               DM1.cdsEjecuta.fieldbyname('CREMTOFLAT').AsCurrency := DM1.cdsEjecuta.fieldbyname('CREFLAT').AsCurrency;
               sUno := xCremtoCob - DM1.cdsEjecuta.fieldbyname('CREFLAT').AsCurrency;
               If sUno > DM1.cdsEjecuta.fieldbyname('MONPACDESGRAV').AsCurrency Then
               Begin
                 DM1.cdsEjecuta.fieldbyname('MONCOBDESGRAV').AsCurrency := DM1.cdsEjecuta.fieldbyname('MONPACDESGRAV').AsCurrency;
                 sUno := sUno - DM1.cdsEjecuta.fieldbyname('MONPACDESGRAV').AsCurrency;
                 If sUno > DM1.cdsEjecuta.fieldbyname('CREAMORT').AsCurrency Then
                 Begin
                    DM1.cdsEjecuta.fieldbyname('CRECAPITAL').AsCurrency := DM1.cdsEjecuta.fieldbyname('CREAMORT').AsCurrency ;
                 End
                 Else
                 Begin
                    DM1.cdsEjecuta.fieldbyname('CRECAPITAL').AsCurrency := sUno;
                 End;
               End
               Else
               Begin
                 DM1.cdsEjecuta.fieldbyname('MONCOBDESGRAV').AsCurrency:= sUno ;
               End;
            End
            Else
            Begin
               DM1.cdsEjecuta.fieldbyname('CREMTOFLAT').AsCurrency:= xCremtoCob ;
            End;
         End;
      End;

      DM1.cdsEjecuta.fieldbyname('CREESTID').AsString:=xCreEstid;
      DM1.cdsEjecuta.fieldbyname('CREESTADO').AsString:=xCreEstado;
      DM1.cdsEjecuta.fieldbyname('CREFPAG').AsString:=xCrefPag;
      DM1.cdsEjecuta.fieldbyname('CREMTOCOB').AsCurrency:=xCremtoCob;

      DM1.cdsEjecuta.fieldbyname('CREMTOEXC').AsCurrency:=SumaExceso(xAsoId, xCredId, xCreCuota);

      DM1.cdsEjecuta.ApplyUpdates(0);
   End;
   DM1.cdsEjecuta.Close;
//Fin: DPP_201211_COB
end;

function TfDetPagos.SumaExceso(xAsoId, xCredId, xCreCuota: String): Currency;
var xSQL:String;
begin
// Inicio: HPP_200937_COB por RMEDINA
// Memorándum 747.2009-DM-COB - SAR-2009-0675 - DAD-RM-2009-0124
//  Verifica si existe algun exceso devuelto, aplicado o pendiente que no este anulado para poner el mto de exceso en el cronograma para que no salga negativo
  // xSQL:='SELECT NVL(SUM(NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0)),0) CREMTOEXC FROM CRE310 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCredId)+' AND '+
  //       'CRECUOTA='+QuotedStr(xCreCuota)+' AND CREESTID NOT IN (''13'',''04'')  ';
     xSQl:='Select Sum(NVL(CREMTOEXC,0)) CREMTOEXC '+
           'FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCredId))+
           '     AND CRECUOTA='+QuotedStr(Trim(xCreCuota))+' AND CREESTID NOT IN (''13'',''04'',''99'') '+
           '     AND NVL(CREMTOEXC,0)>0 ';
     DM1.cdsCambios.Close;
     DM1.cdsCambios.DataRequest(xSQL);
     DM1.cdsCambios.Open;
     If DM1.cdsCambios.RecordCount>0 Then
        If DM1.cdsCambios.Fieldbyname('CREMTOEXC').AsCurrency < 0 Then
           Result:=0
        Else
           Result:=DM1.cdsCambios.Fieldbyname('CREMTOEXC').AsCurrency
     Else
        Result:=0;

    DM1.cdsCambios.Close;
// Fin: HPP_200937_COB
end;


// Inicio: HPP_200937_COB por RMEDINA
// Memorándum 747.2009-DM-COB - SAR-2009-0675 - DAD-RM-2009-0124
//  Se annula y se cambia esta función por DetAplicacion2 con las nuevas condiciones de Anulación
{Function TfDetPagos.DetAplicacion(xAsoId, xCredId, xCreCuota: String): String;
var xSQL:String;
begin
    xSQL:='SELECT NVL(SUM(NVL(CREAPLEXC,0)),0) CREAPLEXC FROM CRE310 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCredId)+' AND '+
          'CRECUOTA='+QuotedStr(xCreCuota)+' AND CREESTID NOT IN (''13'',''04'') ';
    DM1.cdsCambios.Close;
    DM1.cdsCambios.DataRequest(xSQL);
    DM1.cdsCambios.Open;
    If DM1.cdsCambios.RecordCount>0 Then
       If DM1.cdsCambios.Fieldbyname('CREAPLEXC').AsCurrency > 0 Then
          Result:='S'
       Else
          Result:='N'
    Else
       Result:='N';
    DM1.cdsCambios.Close;
end;}
// Fin: HPP_200937_COB

procedure TfDetPagos.dtgDetPagRowChanged(Sender: TObject);
begin
//Inicio HPC_201614_COB
//Se adiciona para el caso de extorno de beneficios y no estan marcados con el flag de contabilizados
//If DM1.cdsDetalle.FieldByName('CNTFLAG').AsString='S' Then BitAnular.Caption := 'Extornar'  Else BitAnular.Caption := 'Anular';
If ( DM1.cdsDetalle.FieldByName('CNTFLAG').AsString='S') OR
   ( (DM1.cdsDetalle.FieldByName('TIPOCONT').AsString='BEN') AND
     (DM1.cdsDetalle.FieldByName('CNTANOMM').AsString<FormatDateTime('YYYYMM',DM1.FechaSys) ) )
Then BitAnular.Caption := 'Extornar'  Else BitAnular.Caption := 'Anular';
//Final HPC_201614_COB

end;

procedure TfDetPagos.FormCreate(Sender: TObject);
begin
   DM1.BlqComponentes(Self);
end;

// Inicio: HPP_200937_COB por RMEDINA
// Memorándum 747.2009-DM-COB - SAR-2009-0675 - DAD-RM-2009-0124
Function TfDetPagos.DetAplicacion2(xAsoId, xCredIdv, xCreCuota, xNroope,
  xFoperac,xTransintid: String; xCremtoCobra: Currency): String;
var Xsql,xresult,xanomes:string;
    xlenght:integer;
begin
    xResult:='N';
    if length(trim(xTransintid))=0 then
       xTransintid := 'X';
    xSql:='Select ASOID,CREDID,CRECUOTA,CREESTID,NROOPE,FOPERAC,TRANSINTID,CREMTOCOB, '
         +'       NUMDEV,CREAPLEXC,FORPAGID,TO_CHAR(FREG,''YYYYMM'')ANOMES '
         +'From CRE310 '
         +'Where Asoid='''+xAsoid+''' And Credid='''+xCredIdv+''' '
         +'  And Crecuota='''+xCrecuota+''' '
         +'  And Creestid Not in (''13'',''04'') '
         +'  And Nroope='''+xNroope+''' And Foperac='''+xFoperac+''' '
         +'  And nvl(Transintid,''X'')='''+xTransintid+''' '
         +'  And Cremtocob='+CurrToStr(xCremtoCobra) ;
    DM1.cdsCambios.Close;
    DM1.cdsCambios.DataRequest(xSQL);
    DM1.cdsCambios.Open;
    xlenght := Length(Trim(Dm1.cdsCambios.FieldByName('Numdev').AsString));
    xanomes := Copy(DateToStr(Dm1.FechaSys),7,4)+Copy(DateToStr(Dm1.FechaSys),4,2);

    //No se puede anular Notas de Abono
    If Dm1.cdsCambios.FieldByName('Forpagid').AsString = '15' then
       xResult:='No puede anular ó extornar una Nota de Abono';

    If ((Dm1.cdsCambios.FieldByName('FORPAGID').AsString = '23') or
       (Dm1.cdsCambios.FieldByName('FORPAGID').AsString = '24')) AND
       (Dm1.cdsCambios.FieldByName('ANOMES').AsString<xanomes)  Then
        xResult:='No puede anular ó extornar un Aplicación de Fondo Solidario de un mes anterior';

    //No puede anular una Aplicación de Fondo Solidario
    If (Dm1.cdsCambios.FieldByName('TRANSINTID').AsString  ='AUT') AND
      ((Dm1.cdsCambios.FieldByName('FORPAGID').AsString = '23') OR
       (Dm1.cdsCambios.FieldByName('FORPAGID').AsString = '24'))  Then
        xResult:='No puede anular ó extornar una Aplicación del Fondo Solidario';

    //No se puede anular una devolución
    If Dm1.cdsCambios.FieldByName('Transintid').AsString  ='DEV' then
       xResult:='No se puede anular ó extornar una Devolución';

    //No se puede Anular una aplicación
    If  Dm1.cdsCambios.FieldByName('Transintid').AsString  ='APL' then
        xResult:='No se puede anular ó extornar una aplicación, tiene un documento de extorno (DEV) en otro cuota ';

    //No se puede anular un pago devuelto o aplicado
    If ((Dm1.cdsCambios.FieldByName('Transintid').AsString  ='CUO') or
        (Length(Trim(Dm1.cdsCambios.FieldByName('Transintid').AsString))=0))  And
       (xlenght>0) Then
       xResult:='No se puede anular ó extornar un pago Devuelto o Aplicado';

    //No se puede anular un exceso devuelto o aplicado
    If (Dm1.cdsCambios.FieldByName('Transintid').AsString  ='EXC') And
       (xlenght>0) Then
        xResult:='No se puede anular ó extornar un exceso Devuelto o Aplicado';

    //No se puede anular un pago quedando solo un exceso sin aplicar o devolver
    If Dm1.cdsCambios.FieldByName('Transintid').AsString  ='CUO' Then
       Begin


         Xsql:='Select Asoid,Credid,Crecuota,Creestid,Nroope,Foperac,Transintid,Cremtocob,Numdev,CreaplExc From Cre310 A '+
               'Where Asoid='''+xAsoid+''' And Credid='''+xCredIdv+''' And Crecuota='''+xCrecuota+''' And Creestid Not in (''13'',''04'') And '+
               'Not exists(Select Asoid From Cre310 Where Asoid=a.Asoid and Credid=a.Credid and Crecuota=a.Crecuota And Creestid Not In (''13'',''04'') And '+
               'a.Nroope='''+xNroope+''' And a.Foperac='''+xFoperac+''') And Numdev is null ';

         Dm1.cdsCambios.Close;
         Dm1.cdsCambios.DataRequest(Xsql);
         Dm1.cdsCambios.Open;

         If (Dm1.cdsCambios.RecordCount=1) and
            (Dm1.cdsCambios.FieldByName('Transintid').AsString='EXC') and
            (Dm1.cdsCambios.FieldByName('CreaplExc').AsCurrency=0) Then
             xResult:='No se puede anular o extornar un pago quedando solo un exceso sin Aplicar ó Devolver';

         If DM1.cdsCambios.RecordCount>1 Then
            Begin
              While not DM1.cdsCambios.Eof do
                Begin
                   If (Dm1.cdsCambios.FieldByName('Transintid').AsString='EXC') AND
                      (Dm1.cdsCambios.FieldByName('CreaplExc').AsCurrency=0) Then
                      xResult:='No se puede anular o extornar un pago, cuando existe un  exceso sin resolver';
                  Dm1.cdsCambios.Next;
                End;
            End;

       End;

    Result:=xresult;
end;

end.

