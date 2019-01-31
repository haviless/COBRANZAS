unit COB914;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB901
// Formulario                    : TfMenObs
// Fecha de Creación             :
// Autor                         : Equipo de sistemas
// Objetivo                      : Motivos de Anulación / Ampliación
// Actualizaciones:
// -----------------------------------------------------------------------
// HPC_201410_COB : Anulación de ampliación de créditos.
// SPP_201409_COB : Se realiza el pase a producción a partir del HPC_201410_COB.
// HPC_201711_COB  : Se adiciona Reprogramación de Créditos - Motivo de Anulación de Reprogramación y Ampliación
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls ;



type
  TfMenObs = class(TForm)
    GroupBox1: TGroupBox;
    mObsDat: TMemo;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
//Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Motivo de Anulación de Reprogramación y Ampliación
    cbxMotivos: TComboBox;
//Final HPC_201711_COB
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenObs: TfMenObs;

implementation

uses COB903, COBDM1, COB904, COB906, COB901;

{$R *.dfm}

procedure TfMenObs.BitSalirClick(Sender: TObject);
begin
// Inicio SPP_201409_COB
 If DM1.xSgr='AMP' Then DM1.xSgr:='PMA';
// Fin SPP_201409_COB
 Close;
end;

procedure TfMenObs.BitGrabarClick(Sender: TObject);
var xRegistro: TBookmark;
    xAsoId,xCreDid,xCreCuota,xSQL:String;
    xDocPag,xCrefPag,xFrmPag : String;
    xImporte : Currency;
    Boton:Integer;
    xNroNabo,xFecPre,xFecCre:String;
Begin
   If DM1.xSgr='BLQ' Then
   Begin
      xAsoId:= DM1.cdsCuotas.fieldbyname('ASOID').AsString;
      xCreDid:= DM1.cdsCuotas.fieldbyname('CREDID').AsString;
      xCreCuota:= DM1.cdsCuotas.fieldbyname('CRECUOTA').AsString;
      xRegistro:=DM1.cdsCuotas.GetBookmark;
      If Length(Trim(mObsDat.Lines.Text))=0 Then
         Begin
            MessageDlg(' Debe Ingresar El Motivo Del Bloqueo  ', mtError,[mbOk],0);
            Exit;
         End
      Else
         Begin
            If fCronoPag.vrfMarca(DM1.cdsCuotas)='S' Then
               Begin
                 xSQL:='UPDATE CRE302 SET CREESTID=''19'',CREESTADO=''BLOQUEADA'',CREBLOQ=''S'',CREBLOQFEC='+QuotedStr(DateToStr(DM1.FechaSys))+',CREBLOQOBS='+QuotedStr(Trim(mObsDat.Text))+',USUBLOQ='+QuotedStr(DM1.wUsuario)+' WHERE ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And FLAGVAR=''S'' ';
               End
            Else
               Begin
                 xSQL:='UPDATE CRE302 SET CREESTID=''19'',CREESTADO=''BLOQUEADA'',CREBLOQ=''S'',CREBLOQFEC='+QuotedStr(DateToStr(DM1.FechaSys))+',CREBLOQOBS='+QuotedStr(Trim(mObsDat.Text))+',USUBLOQ='+QuotedStr(DM1.wUsuario)+' WHERE ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And  CRECUOTA='+QuotedStr(Trim(xCreCuota));
               End;
         End;
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      fCronoPag.LimpiaFlgvar(xAsoId, xCreDid);
      fNPago.ActualizaCrono(xAsoId, xCreDid);
      DM1.cdsCuotas.GotoBookmark(xRegistro);
   End
   Else If DM1.xSgr='EXT' Then
   Begin
     If Length(Trim(mObsDat.Lines.Text))=0 Then
         Begin
            MessageDlg(' Debe Ingresar El Motivo De Anulación  ', mtError,[mbOk],0);
            Exit;
         End;

      xAsoId:=DM1.cdsDetalle.FieldByName('ASOID').AsString;
      xCredId:=DM1.cdsDetalle.FieldByName('CREDID').AsString;
      xDocPag:=DM1.cdsDetalle.FieldByName('CREDOCPAG').AsString;
      xCrefPag:=DM1.cdsDetalle.FieldByName('CREFPAG').AsString;
      xFrmPag :=DM1.cdsDetalle.FieldByName('FORPAGID').AsString;
      fDetPagos.AnulaPagos(xAsoId, xCreDid, xDocPag, xFrmPag, xCrefPag);
      fNPago.ActualizaCrono(xAsoId, xCreDid);
   End
Else If DM1.xSgr='ANU' Then
   Begin
     If Length(Trim(mObsDat.Lines.Text))=0 Then
         Begin
            MessageDlg(' Debe Ingresar El Motivo De Anulación  ', mtError,[mbOk],0);
            Exit;
         End;

      xAsoId:=DM1.cdsDetalle.FieldByName('ASOID').AsString;
      xCredId:=DM1.cdsDetalle.FieldByName('CREDID').AsString;
      xDocPag:=DM1.cdsDetalle.FieldByName('CREDOCPAG').AsString;
      xCrefPag:=DM1.cdsDetalle.FieldByName('CREFPAG').AsString;
      xFrmPag :=DM1.cdsDetalle.FieldByName('FORPAGID').AsString;
      fDetPagos.AnulaPagos(xAsoId, xCreDid, xDocPag, xFrmPag, xCrefPag);
      fNPago.ActualizaCrono(xAsoId, xCreDid);
   End
Else If DM1.xSgr='REP' Then
   Begin
     If Length(Trim(mObsDat.Lines.Text))=0 Then
         Begin
            MessageDlg(' Debe Ingresar El Motivo De Anulación Del Prestamo Refinanciado ', mtError,[mbOk],0);
            Exit;
         End;
         xAsoId   :=DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
         xCreDid  :=DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
         xNroNabo :=DM1.cdsSolicitud.FieldByName('NRONABO').AsString;
         xFecPre  :=DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
         xFecCre  :=DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
         xRegistro:=DM1.cdsSolicitud.GetBookmark;
         Screen.Cursor:=crHourGlass;

         FPagoCuotas.AnulaPrestamo(xAsoId, xCreDid, xNroNabo, xFecPre, DM1.xSgr);
         FPagoCuotas.AnulaAct(xAsoId,xCreDid,DM1.xSgr);
         DM1.ActSaldoPrest(xAsoId);
         // Para actualizar la Soliciatud de Refinanciados
         xSQL:='update EVAL_REF_CAB set USUCREANU='''+dm1.wUsuario+''', '
              +  'FECCREANU=SYSDATE, MENCREANU='''+mObsDat.Text+''', CREANU=''S'', '
              // Inicio: HPP_200925_COB por HNORIEGA
              +  'NUESAL=0 '
              // Fin: HPP_200925_COB
              +'where ASOID='''  +DM1.cdsSolicitud.FieldByName('ASOID').AsString +''' '
              +  'AND CREDNEW='''+DM1.cdsSolicitud.FieldByName('CREDID').AsString+''' '
              +  'AND FECEVAL='''+xFecPre+'''';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest( xSQL );
         dm1.cdsQry.Execute;
         //
         FPagoCuotas.CrgPrestamos;
         Screen.Cursor:=crDefault;
         MessageDlg(' Anulación Exitosa !! ', mtInformation,[mbOk],0);
         DM1.cdsSolicitud.GotoBookmark(xRegistro);
// Inicio SPP_201409_COB
   End
Else If DM1.xSgr='AMP' Then
   Begin
        If Length(Trim(mObsDat.Text))=0 Then
           Begin
// Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Motivo de Anulación de Reprogramación y Ampliación
//            MessageDlg(' Debe Ingresar el Motivo de la Anulación !! ', mtInformation,[mbOk],0);
              MessageDlg('Debe Ingresar alguna observación de la Anulación', mtInformation,[mbOk],0);
// Final HPC_201711_COB
              mObsDat.SetFocus;
              Exit;
           End;
// Inicio HPC_201711_COB
//Se adiciona Reprogramación de Créditos - Motivo de Anulación de Reprogramación y Ampliación
        If (Length(Trim(cbxMotivos.Text))=0) or
           (Trim(cbxMotivos.Text)='Seleccione un Motivo') Then
           Begin
              MessageDlg('Debe Ingresar el Motivo de la Anulación', mtInformation,[mbOk],0);
              cbxMotivos.SetFocus;
              Exit;
           End;
// Final HPC_201711_COB
   End;
// Fin SPP_201409_COB
   Close;
end;

end.
