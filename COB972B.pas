unit COB972B;
// Inicio Uso Estándares         : 01/08/2011
// Fecha de Creación             : 11/03/2016
// Unidad                        : COB972B
// Formulario                    : FBloqueoFSC
// Autor                         : Equipo de sistemas
// Objetivo                      : Bloqueo/Desbloqueo de cuentas con saldo al FSC por cliente
// Actualizaciones:
// -----------------------------------------------------------------------
// Bloqueo/Desbloqueo de cuentas con saldo al FSC por cliente
//Inicio HPC_201606_COB
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFBloqueoFSC = class(TForm)
    grbObservacion: TGroupBox;
    mObsDat: TMemo;
    btngrabar: TBitBtn;
    btncerrar: TBitBtn;
    grbBloqueo: TGroupBox;
    membloqueo: TMemo;
    procedure btngrabarClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBloqueoFSC: TFBloqueoFSC;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFBloqueoFSC.btngrabarClick(Sender: TObject);
var Xsql,vBloqDesbloq,vNumbloq :String;
begin

  If Length(Trim(Dm1.CdsMGrupo.fieldbyname('USUBLO').Asstring))=0 Then
  vBloqDesbloq:=' Bloqueo ' Else  vBloqDesbloq:=' Desbloqueo ';

  If Length(TRim(mObsDat.Text))=0 then
  Begin
   ShowMessage('Debe Ingresar una Observación del'+vBloqDesbloq);
   Exit;
  End;

 {Si Esta Bloqueado
    Quitar las marcas de bloqueo y poner marcas de desbloqueo.
    Actualizar le LOG de BLOQUEO.
  Si Esta Desbloqueado
    Quitar las marcas de desbloqueo y poner el Bloqueado.
    Actualizar el LOG DE BLOQUEO.}

  If MessageDlg('¿ Confirmar'+vBloqDesbloq+'? ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
      If  Length(Trim(Dm1.CdsMGrupo.fieldbyname('USUBLO').Asstring))=0 Then
      Begin
        Xsql:='UPDATE COB_FSC_DEUDA_FSC_CAB '+
              'SET FECBLO=SYSDATE,USUBLO='''+DM1.wUsuario+''',OBSBLO='''+Trim(mObsDat.Text)+''',ID_EST_FSC=''19'','+
              '    FECDESBLO=NULL,USUDESBLO=NULL,OBSDESBLO=NULL '+
              'WHERE ASOID='''+Dm1.cdsAso.fieldbyname('ASOID').AsString+''' AND ID_EST_FSC IN (''02'',''27'',''14'') ';
        Try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        Except
          ShowMessage('Error al intentar bloquear - FSC');
          Exit;
        End;

        //Correlativo de bloqueo
        Xsql:='SELECT  CASE WHEN NVL(MAX(NUMBLO),0)=0 THEN TO_CHAR(SYSDATE,''YYYY'')||LPAD(NVL(MAX(NUMBLO),0)+1,11,''0'') '+
              'ELSE LPAD(NVL(MAX(NUMBLO),0)+1,15,''0'') END CORR ' +
              'FROM COB_BLO_FSC_LOG WHERE TO_CHAR(feccre,''YYYY'')=TO_CHAR(SYSDATE,''YYYY'') ';
        DM1.cdsGradoI.Close;
        DM1.cdsGradoI.DataRequest(Xsql);
        DM1.cdsGradoI.Open;
        vNumbloq:=DM1.cdsGradoI.FieldByname('CORR').AsString;


        Xsql:='INSERT INTO  COB_BLO_FSC_LOG(NUM_DEU,ASOID,USUBLO,FECBLO,TIPDAT,OBSBLO,NUMBLO,USUCRE,FECCRE) '+
              'VALUES('''+Dm1.cdsMGrupo.FieldByname('NUM_DEU').AsString+''','+
              ''''+Dm1.cdsMGrupo.FieldByname('ASOID').AsString+''','+
              ''''+Dm1.wUsuario+''',SYSDATE,''B'','''+Trim(mObsDat.Text)+''','+
              ''''+vNumbloq+''','+
              ''''+Dm1.wUsuario+''',SYSDATE)';
        Try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        Except
          ShowMessage('Error al Insertar LOG de Bloqueo/Desbloqueo - FSC');
          Exit;
        End;

        ShowMessage('Se bloqueó con éxito');
        Dm1.cdsMGrupo.Edit;
        Dm1.cdsMGrupo.FieldByname('USUBLO').AsString:= DM1.wUsuario;
        Dm1.cdsMGrupo.FieldByname('ESTDES').AsString:='BLOQUEADA';
        Dm1.cdsMGrupo.FieldByname('ID_EST_FSC').AsString:='19';
        btncerrarClick(Self);
      End
      Else
      Begin
        Xsql:='UPDATE COB_FSC_DEUDA_FSC_CAB '+
              'SET FECDESBLO=SYSDATE,USUDESBLO='''+DM1.wUsuario+''',OBSDESBLO='''+Trim(mObsDat.Text)+''',ID_EST_FSC=''02'','+
              '    FECBLO=NULL,USUBLO=NULL,OBSBLO=NULL '+
              'WHERE ASOID='''+Dm1.cdsAso.fieldbyname('ASOID').AsString+''' AND ID_EST_FSC IN (''19'') ';
        Try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        Except
          ShowMessage('Error al intentar desbloquear - FSC');
          Exit;
        End;

        //Correlativo de bloqueo
        Xsql:='SELECT  CASE WHEN NVL(MAX(NUMBLO),0)=0 THEN TO_CHAR(SYSDATE,''YYYY'')||LPAD(NVL(MAX(NUMBLO),0)+1,11,''0'') '+
              'ELSE LPAD(NVL(MAX(NUMBLO),0)+1,15,''0'') END CORR ' +
              'FROM COB_BLO_FSC_LOG WHERE TO_CHAR(feccre,''YYYY'')=TO_CHAR(SYSDATE,''YYYY'') ';
        DM1.cdsGradoI.Close;
        DM1.cdsGradoI.DataRequest(Xsql);
        DM1.cdsGradoI.Open;
        vNumbloq:=DM1.cdsGradoI.FieldByname('CORR').AsString;

        Xsql:='INSERT INTO  COB_BLO_FSC_LOG(NUM_DEU,ASOID,USUBLO,FECBLO,TIPDAT,OBSBLO,NUMBLO,USUCRE,FECCRE) '+
              'VALUES('''+Dm1.cdsMGrupo.FieldByname('NUM_DEU').AsString+''','+
              ''''+Dm1.cdsMGrupo.FieldByname('ASOID').AsString+''','+
              ''''+Dm1.wUsuario+''',SYSDATE,''D'','''+Trim(mObsDat.Text)+''','+
              ''''+vNumbloq+''','+
              ''''+Dm1.wUsuario+''',SYSDATE)';
        Try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        Except
          ShowMessage('Error al Insertar LOG de Bloqueo/Desbloqueo - FSC');
          Exit;
        End;

        ShowMessage('Se desbloqueó con éxito');
        Dm1.cdsMGrupo.Edit;
        Dm1.cdsMGrupo.FieldByname('USUBLO').AsString:='';
        Dm1.cdsMGrupo.FieldByname('USUDESBLO').AsString:= DM1.wUsuario;        
        Dm1.cdsMGrupo.FieldByname('ESTDES').AsString:='POR COBRAR';
        Dm1.cdsMGrupo.FieldByname('ID_EST_FSC').AsString:='02';
        btncerrarClick(Self);
      End;
  End;

end;

procedure TFBloqueoFSC.btncerrarClick(Sender: TObject);
begin
 CLOSE;
end;

procedure TFBloqueoFSC.FormActivate(Sender: TObject);
VAR Xsql:String;
begin

FBloqueoFSC.ClientHeight := 174;
FBloqueoFSC.ClientWidth  := 370;
grbObservacion.left := 8;
grbObservacion.Top := 7;
btngrabar.Top      := 130;
btngrabar.Left     := 187;
btncerrar.Top      := 130;
btncerrar.Left     := 278;
grbBloqueo.Visible := False;


If Length(Trim(Dm1.CdsMGrupo.fieldbyname('USUBLO').Asstring))>0 Then
Begin
  Xsql:='SELECT FECBLO,USUBLO,OBSBLO '+
        'FROM COB_BLO_FSC_LOG WHERE ASOID='''+Dm1.cdsMGrupo.FieldByname('ASOID').AsString+''' AND '+
        'NUMBLO=(SELECT MAX(NUMBLO) FROM COB_BLO_FSC_LOG WHERE ASOID='''+Dm1.cdsMGrupo.FieldByname('ASOID').AsString+''' AND TIPDAT=''B'')';
  Dm1.cdsGradoI.Close;
  Dm1.cdsGradoI.DataRequest(Xsql);
  Dm1.cdsGradoI.Open;
  grbBloqueo.Caption := 'Última Observación de Bloqueo '+Dm1.cdsGradoI.FieldByname('FECBLO').Asstring;
  grbObservacion.Caption := 'Observación de Desbloque (max 256 caracteres):';
  FBloqueoFSC.ClientHeight := 268;
  FBloqueoFSC.ClientWidth  := 370;
  grbObservacion.left := 8;
  grbObservacion.Top := 108;
  btngrabar.Top      := 234;
  btngrabar.Left     := 187;
  btncerrar.Top      := 234;
  btncerrar.Left     := 278;
  membloqueo.Text :=  Dm1.cdsGradoI.FieldByname('OBSBLO').Asstring;
  grbBloqueo.Visible := True;
End
Else
If Length(Trim(Dm1.CdsMGrupo.fieldbyname('USUDESBLO').Asstring))>0 Then
Begin
  Xsql:='SELECT FECBLO,USUBLO,OBSBLO '+
        'FROM COB_BLO_FSC_LOG WHERE ASOID='''+Dm1.cdsMGrupo.FieldByname('ASOID').AsString+''' AND '+
        'NUMBLO=(SELECT MAX(NUMBLO) FROM COB_BLO_FSC_LOG WHERE ASOID='''+Dm1.cdsMGrupo.FieldByname('ASOID').AsString+''' AND TIPDAT=''D'')';
  Dm1.cdsGradoI.Close;
  Dm1.cdsGradoI.DataRequest(Xsql);
  Dm1.cdsGradoI.Open;
  grbBloqueo.Caption := 'Última Observación de Desbloqueo '+Dm1.cdsGradoI.FieldByname('FECBLO').Asstring;
  grbObservacion.Caption := 'Observación de bloque (max 256 caracteres):';
  FBloqueoFSC.ClientHeight := 268;
  FBloqueoFSC.ClientWidth  := 370;
  grbObservacion.left := 8;
  grbObservacion.Top := 108;
  btngrabar.Top      := 234;
  btngrabar.Left     := 187;
  btncerrar.Top      := 234;
  btncerrar.Left     := 278;
  membloqueo.Text :=  Dm1.cdsGradoI.FieldByname('OBSBLO').Asstring;
  grbBloqueo.Visible := True;
End;

end;

end.
//Final HPC_201606_COB
