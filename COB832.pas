// Inicio Uso Estándares : 01/08/2011
// Unidad                : COB832
// Formulario            : FAprSolPagRes
// Fecha de Creación     : 01/09/2018
// Autor                 : Area de Desarrollo
// Objetivo              : Aprobaciones de pagos por resolver
// HPC_201820_COB        : Creación
// COB_201824_HPC        : Mejoras en la aplicación de Pagos por Resolver
//Inicio HPC_201820_COB
//Aprobaciones de pagos por resolver
unit COB832;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, wwdbdatetimepicker, Mask, Grids,
  Wwdbigrd, Wwdbgrid, db;

type
  TFAprSolPagRes = class(TForm)
    GroupBox1: TGroupBox;
    rgfiltro: TRadioGroup;
    gbxfecha: TGroupBox;
    dbdInicio: TwwDBDateTimePicker;
    dbdFinal: TwwDBDateTimePicker;
    btnfiltrarClick: TBitBtn;
    dbgPrevio: TwwDBGrid;
    GroupBox4: TGroupBox;
    btnaprobar: TBitBtn;
    btncerrar: TBitBtn;
    meobservacion: TMaskEdit;
    Label1: TLabel;
    gbxasociado: TGroupBox;
    btnbuscaasociado: TButton;
    Panel1: TPanel;
    EdtApellidosNombres: TEdit;
    EdtCodMod: TMaskEdit;
    btndesaprobar: TBitBtn;
    procedure btncerrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtCodModKeyPress(Sender: TObject; var Key: Char);
    procedure btnbuscaasociadoClick(Sender: TObject);
    procedure rgfiltroClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnaprobarClick(Sender: TObject);
    procedure btndesaprobarClick(Sender: TObject);
    procedure btnfiltrarClickClick(Sender: TObject);
    procedure dbgPrevioCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
      xasoid: String;
    procedure inicializa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAprSolPagRes: TFAprSolPagRes;

implementation

uses COB902, COBDM1;

{$R *.dfm}

procedure TFAprSolPagRes.btncerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TFAprSolPagRes.FormActivate(Sender: TObject);
begin
   rgfiltro.ItemIndex := 0;
   inicializa;
end;

procedure TFAprSolPagRes.EdtCodModKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
   Begin
      If Length(Trim(EdtCodMod.Text)) > 10 Then
      Begin
         MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
         EdtCodMod.Text := '';
         Exit;
      End;
      EdtCodMod.Text := Format('%.10d', [StrToInt64(EdtCodMod.Text)]);
   End;
end;

procedure TFAprSolPagRes.btnbuscaasociadoClick(Sender: TObject);
begin
  DM1.xSgr := 'COB832';
  Try
     fSeleccion := TfSeleccion.create(self);
     fSeleccion.gbbuscar.Width   := 430;
     fSeleccion.gbbuscar.Height  :=  40;
     fSeleccion.edtBuscar.Width  := 407;
     fSeleccion.edtBuscar.Height :=  28;
     fSeleccion.Showmodal;
   Finally
     fSeleccion.free;
   End;
   If DM1.cdsAso.Active Then
   Begin
      EdtCodMod.Text           := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      EdtApellidosNombres.Text := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
      xasoid                   := DM1.cdsAso.FieldByName('ASOID').AsString;
   End;
end;

procedure TFAprSolPagRes.rgfiltroClick(Sender: TObject);
begin
   EdtCodMod.Text           := '';
   xasoid                   := '';
   EdtApellidosNombres.Text := '';
   dbdInicio.Text           := '';
   dbdFinal.Text            := '';
   inicializa;
   If rgfiltro.ItemIndex = 0 Then
   Begin
      gbxfecha.Enabled    := False;
      gbxasociado.Enabled := True;
      EdtCodMod.SetFocus;
   End
   Else
   Begin
      gbxfecha.Enabled    := True;
      gbxasociado.Enabled := False;
      dbdInicio.SetFocus;
   End;
end;

procedure TFAprSolPagRes.inicializa;
begin
   DM1.cdsGrupos.Close;
   DM1.cdsAso.Close;
end;

procedure TFAprSolPagRes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

Procedure TFAprSolPagRes.btnaprobarClick(Sender: TObject);
Var xSql:String;
begin
 Try
   If DM1.cdsGrupos.FieldByName('ESTADO').AsString ='DESAPROBADO' Then
   Begin
      MessageDlg('Registro DESAPROBADO.', mtError, [mbOk], 0);
      dbgPrevio.SetFocus;
      Exit;
   End;

   If DM1.cdsGrupos.FieldByName('ESTADO').AsString <>'SOLICITUD' Then
   Begin
      MessageDlg('Estado debe encontrase en "SOLICITUD" para que pueda ser desaprobado.', mtError, [mbOk], 0);
      dbgPrevio.SetFocus;      
      Exit;
   End;
   If Trim(meobservacion.Text) = '' Then
   Begin
      MessageDlg('Debe registrar una observacion, antes de proceder a la aprobación.', mtError, [mbOk], 0);
      meobservacion.SetFocus;
      Exit;
   End;
   If MessageDlg('¿Desea Aprobar el pago por resolver?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
      xSql := 'UPDATE COB_DES_CRO_CERRADO_DET SET FLGEST = ''32'',FEC_PRO_PAG_RES=SYSDATE,USU_PRO_PAG_RES='''+DM1.WUSUARIO+''' '
      +', OBSERVACION = '+QuotedStr(meobservacion.Text)+', USU_APRUEBA = '+QuotedStr(DM1.wUsuario)+', FEC_APRUEBA = SYSDATE'
      +', USU_DESAPRUEBA = NULL, FEC_DESAPRUEBA = NULL, FLA_APROBADO = ''S'''
      +' WHERE ASOID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOID').AsString)
      +' AND NRO_OPERACION = '+QuotedStr(DM1.cdsGrupos.FieldByName('NRO_OPERACION').AsString)
      +' AND FEC_OPERACION = '+QuotedStr(DM1.cdsGrupos.FieldByName('FEC_OPERACION').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      DM1.cdsGrupos.Edit;
      DM1.cdsGrupos.FieldByName('ESTADO').AsString := 'APROBADO';
      ShowMessage('La Solicitud ha sido registrado con exito.');
   End;
   meobservacion.Text := '';
  Except
      ShowMessage('No existe información para procesar');
      Exit;
  End;
end;

procedure TFAprSolPagRes.btndesaprobarClick(Sender: TObject);
Var xSql:String;
begin
 Try
   If DM1.cdsGrupos.FieldByName('ESTADO').AsString ='DESAPROBADO' Then
   Begin
      MessageDlg('Registro DESAPROBADO.', mtError, [mbOk], 0);
     dbgPrevio.SetFocus;
      Exit;
   End;

   If DM1.cdsGrupos.FieldByName('ESTADO').AsString <>'SOLICITUD' Then
   Begin
      meobservacion.Text := '';
      MessageDlg('Estado debe encontrase en "SOLICITUD" para que pueda ser desaprobado.', mtError, [mbOk], 0);
      dbgPrevio.SetFocus;
      Exit;
   End;
   If Trim(meobservacion.Text) = '' Then
   Begin
      MessageDlg('Debe registrar una observacion, antes de proceder a la aprobación.', mtError, [mbOk], 0);
      meobservacion.SetFocus;
      Exit;
   End;
   If MessageDlg('¿Seguro que desea desaprobar los pagos por resolver?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
      xSql := 'UPDATE COB_DES_CRO_CERRADO_DET SET FLA_APROBADO = ''N'''
      +', OBSERVACION = '+QuotedStr(meobservacion.Text)+', USU_DESAPRUEBA = '+QuotedStr(DM1.wUsuario)+', FEC_DESAPRUEBA = SYSDATE'
      +', USU_APRUEBA = NULL, FEC_APRUEBA = SYSDATE'
      +' WHERE ASOID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOID').AsString)
      +' AND NRO_OPERACION = '+QuotedStr(DM1.cdsGrupos.FieldByName('NRO_OPERACION').AsString)
      +' AND FEC_OPERACION = '+QuotedStr(DM1.cdsGrupos.FieldByName('FEC_OPERACION').AsString);
      DM1.cdsGrupos.Edit;
      DM1.cdsGrupos.FieldByName('ESTADO').AsString := 'DESAPROBADO';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
//Inicio COB_201824_HPC
//Activa Inconsistencia de Planilla
      //Activa Inconsistencia de Planilla
      If (DM1.cdsGrupos.FieldByName('FORPAGOABR').AsString='PLA') or
         (DM1.cdsGrupos.FieldByName('FORPAGOABR').AsString='REG') or
         (DM1.cdsGrupos.FieldByName('FORPAGOABR').AsString='CEF') Then
       Begin
        xsql:='INSERT INTO COB340(ARCHIVO, ASOID, TRANSANO, TRANSMES, TMONID, IMPORTE, ASOAPENOM,'
              +'      USUARIO, FREG, HREG,  CIAID, CREFPAG, NROOPE, FOPERAC, CREDOCPAG,'
              +'      FORPAGID, FORPAGABR, ASOCODMOD, ASOCODAUX, UPROID, UPAGOID, USEID,'
              +'      BANCOID, CCBCOID, DETRCOBID, USERCOBID, RCOBID, TRANSINTID, AREAID,'
              +'      FLGFPAG, TRANOBS) '
              +'SELECT ''RECUPERA PAGOS POR RESOLVER'',A.ASOID,B.RCOBANO,B.RCOBMES,''N'',A.IMPORTE,A.ASOAPENOM,'
              +'B.USUARIO,TRUNC(SYSDATE),SYSDATE,''02'',A.FEC_OPERACION,A.NRO_OPERACION,A.FEC_OPERACION,A.NRO_OPERACION,'
              +'A.FORPAGID,C.FORPAGOABR,A.ASOCODMOD,D.ASOCODAUX,A.UPROID,A.UPAGOID,A.USEID,A.BANCOID,A.CCBCOID,A.DETRCOBID,'
              +'A.USERCOBID,A.RCOBID,''CUO'',''COB'',''PL'',''INSERCION EN INCONSISTENCIA PARA SU APLICACION'' '
              +'FROM COB_DES_CRO_CERRADO_DET A,COB302 B,COB101 C,APO201 D '
              +'WHERE A.ASOID='+QuotedStr(DM1.cdsGrupos.FieldByName('ASOID').AsString)
              +' AND A.RCOBID='+QuotedStr(DM1.cdsGrupos.FieldByName('RCOBID').AsString)
              +' AND A.DETRCOBID='+QuotedStr(DM1.cdsGrupos.FieldByName('DETRCOBID').AsString)
              +' AND A.RCOBID=B.RCOBID AND A.DETRCOBID=B.DETRCOBID '
              +' AND A.FORPAGID=C.FORPAGOID AND A.ASOID=D.ASOID ';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql)      
       End;
//Fin COB_201824_HPC
      ShowMessage('La Solicitud ha sido registrado con exito.');
   End;
   meobservacion.Text := '';
  Except
    ShowMessage('No existe información para procesar');
    Exit;
  End;

end;

procedure TFAprSolPagRes.btnfiltrarClickClick(Sender: TObject);
Var xSql:String;
begin
   If rgfiltro.ItemIndex = 0 Then
   Begin
      If Trim(EdtCodMod.Text) = '' Then
      Begin
          MessageDlg(' No Existe Información Para Este filtro', mtError, [mbOk], 0);
          EdtCodMod.SetFocus;
          Exit;
      End;
   End;
   If rgfiltro.ItemIndex = 1 Then
   Begin
      If Trim(dbdInicio.Text) = '' Then
      Begin
         MessageDlg('Debe registar fecha incicial.', mtError, [mbOk], 0);
         dbdInicio.SetFocus;
         Exit;
      End;
      If Trim(dbdFinal.Text) = '' Then
      Begin
         MessageDlg('Debe registar fecha final.', mtError, [mbOk], 0);
         dbdFinal.SetFocus;
         Exit;
      End;
      If dbdInicio.Date > DM1.FechaSys  Then
      Begin
         MessageDlg('La fecha inicial no puede ser mayor a la de hoy. ', mtError, [mbOk], 0);
         dbdInicio.SetFocus;
         Exit;
      End;
      If dbdFinal.Date > DM1.FechaSys Then
      Begin
         MessageDlg('La fecha final no puede ser mayor a la de hoy. ', mtError, [mbOk], 0);
         dbdFinal.SetFocus;
         Exit;
      End;
      If dbdInicio.Date > dbdFinal.Date Then
      Begin
         MessageDlg('Fecha inicial debe ser menor a la fecha final', mtError, [mbOk], 0);
         dbdFinal.SetFocus;
         Exit;
      End;
   End;
   meobservacion.Text := '';
   If rgfiltro.ItemIndex = 0 Then
      xSql := 'SELECT C.FORPAGOABR,CASE WHEN A.FLA_APROBADO IS NULL  THEN ''SOLICITUD'' WHEN A.FLA_APROBADO = ''S'' THEN ''APROBADO'' WHEN A.FLA_APROBADO = ''N'' THEN ''DESAPROBADO'' END ESTADO,'
//Inicio COB_201824_HPC
//Activa Inconsistencia de Planilla
      +' A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.FEC_OPERACION,  A.NRO_OPERACION, B.OFDESNOM DESC_AGENCIA, A.IMPORTE,RCOBID,DETRCOBID'
      +' FROM COB_DES_CRO_CERRADO_DET A, APO110 B, COB101 C'
      +' WHERE A.FLGEST  = ''10'' AND A.ASOID = '+QuotedStr(xasoid)
      +' AND A.OFIDES = B.OFDESID  '
      +' AND A.FORPAGID=C.FORPAGOID ';
   If rgfiltro.ItemIndex = 1 Then
      xSql := 'SELECT C.FORPAGOABR,CASE WHEN A.FLA_APROBADO IS NULL  THEN ''SOLICITUD'' WHEN A.FLA_APROBADO = ''S'' THEN ''APROBADO'' WHEN A.FLA_APROBADO = ''N'' THEN ''DESAPROBADO'' END ESTADO,'
      +' A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.FEC_OPERACION,  A.NRO_OPERACION, B.OFDESNOM DESC_AGENCIA, A.IMPORTE,RCOBID,DETRCOBID'
//Fin COB_201824_HPC
      +' FROM COB_DES_CRO_CERRADO_DET A, APO110 B, COB101 C'
      +' WHERE A.FLGEST  = ''10'' AND TO_DATE(A.FEC_SOLICITA) >= '+QuotedStr(dbdInicio.Text)+' AND TO_DATE(A.FEC_SOLICITA) <= '+QuotedStr(dbdFinal.Text)
      +' AND A.OFIDES = B.OFDESID'
      +' AND A.FORPAGID=C.FORPAGOID ';
   DM1.cdsGrupos.Close;
   DM1.cdsGrupos.DataRequest(xSql);
   DM1.cdsGrupos.Open;
   If DM1.cdsGrupos.RecordCount = 0 Then
   Begin
      MessageDlg(' No Existe Información Para Este filtro', mtError, [mbOk], 0);
      Exit;
   End;
   dbgPrevio.Selected.Clear;
   dbgPrevio.Selected.Add('FORPAGOABR'#9'3'#9'PAGO'#9#9);
   dbgPrevio.Selected.Add('ESTADO'#9'11'#9'Estado'#9#9);
   dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
   dbgPrevio.Selected.Add('ASOAPENOM'#9'26'#9'Apellidos~y nombre(s)'#9#9);
   dbgPrevio.Selected.Add('FEC_OPERACION'#9'10'#9'Fecha de~pago'#9#9);
   dbgPrevio.Selected.Add('NRO_OPERACION'#9'10'#9'Número de~operación'#9#9);
   dbgPrevio.Selected.Add('DESC_AGENCIA'#9'14'#9'Agencia de deposito'#9#9);
   dbgPrevio.Selected.Add('IMPORTE'#9'12'#9'Monto~Registrado'#9#9);
   dbgPrevio.ApplySelected;
   TNumericField(DM1.cdsGrupos.FieldByName('IMPORTE')).DisplayFormat := '##,##0.00';
End;

procedure TFAprSolPagRes.dbgPrevioCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   If DM1.cdsGrupos.FieldByName('ESTADO').AsString = 'DESAPROBADO' Then
   Begin
      ABrush.Color := clRed;
      AFont.Color := clWhite;
   End;

end;
//Fin HPC_201820_COB
end.
