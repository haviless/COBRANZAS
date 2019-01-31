// Inicio Uso Estándares : 01/08/2011
// Unidad                : COB833
// Formulario            : FAprSolPagRes
// Fecha de Creación     : 01/09/2018
// Autor                 : Area de Desarrollo
// Objetivo              : Reporte de pagos por resolver cronogramas cerrados
// HPC_201820_COB        : Creación
//Inicio HPC_201820_COB
//Reporte de pagos por resolver cronogramas cerrados
unit COB833;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, Grids, Wwdbigrd, Wwdbgrid, db;

type
  TFpagxrescrocerr = class(TForm)
    gbFiltrar: TGroupBox;
    btnfiltrar: TBitBtn;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbgPrevio: TwwDBGrid;
    procedure btnfiltrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure inicializa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpagxrescrocerr: TFpagxrescrocerr;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFpagxrescrocerr.btnfiltrarClick(Sender: TObject);
Var xSql:String;
begin
   If Trim(dbdtpInicio.Text) = '' Then
   Begin
      MessageDlg('Debe registar fecha incicial.', mtError, [mbOk], 0);
      dbdtpInicio.SetFocus;
      Exit;
   End;
   If Trim(dbdtpFinal.Text) = '' Then
   Begin
      MessageDlg('Debe registar fecha final.', mtError, [mbOk], 0);
      dbdtpFinal.SetFocus;
      Exit;
   End;
   If dbdtpInicio.Date > DM1.FechaSys  Then
   Begin
      MessageDlg('La fecha inicial no puede ser mayor a la de hoy. ', mtError, [mbOk], 0);
      dbdtpInicio.SetFocus;
      Exit;
   End;
   If dbdtpFinal.Date > DM1.FechaSys Then
   Begin
      MessageDlg('La fecha final no puede ser mayor a la de hoy. ', mtError, [mbOk], 0);
      dbdtpFinal.SetFocus;
      Exit;
   End;
   If dbdtpInicio.Date > dbdtpFinal.Date Then
   Begin
      MessageDlg('Fecha inicial debe ser menor a la fecha final', mtError, [mbOk], 0);
      dbdtpInicio.SetFocus;
      Exit;
   End;
   xSql := 'SELECT ASOID, DESC_UGEL, CODIGO_MODULAR, APELLIDOS_NOMBRES, TIPO_EXCESO, FECHA_REGISTRO,FECHA_APLICACION, FEC_OPERACION,TRUNC(FEC_APRUEBA)FEC_APRUEBA, NRO_OPERACION, TIPO_PAGO,'
   +'  USU_SOLICITA,FEC_SOLICITA, NVL(USU_APRUEBA,USU_DESAPRUEBA)USU_APRUEBA,USU_PRO_PAG_RES USU_APLICA, ESTADO,'
   +' SUM(MONTO_PAGADO) MONTO_PAGADO ,SUM(MONTO_EXCESO) MONTO_EXCESO FROM (SELECT A.ASOID, B.USENOM DESC_UGEL, A.ASOCODMOD CODIGO_MODULAR, A.ASOAPENOM APELLIDOS_NOMBRES,'
   +' CASE WHEN NVL(A.FALLECIDO,''X'') = ''S'' THEN ''FALLECIDO'' ELSE ''MONTO MINIMO'' END TIPO_EXCESO,'
   +' A.FREG FECHA_REGISTRO,A.FEC_PRO_PAG_RES FECHA_APLICACION, A.FEC_OPERACION,A.FEC_APRUEBA, A.NRO_OPERACION, C.FORPAGODES TIPO_PAGO,A.USU_PRO_PAG_RES, A.USU_SOLICITA,A.FEC_SOLICITA, A.USU_APRUEBA,A.USU_DESAPRUEBA, '
   +'(CASE WHEN NVL(A.FLA_APROBADO,''X'')=''N'' THEN ''DESAPROBADO'' ELSE (SELECT ESTDES FROM CRE113 WHERE ESTID=A.FLGEST) END) ESTADO,'
   +' 0 MONTO_PAGADO, A.IMPORTE MONTO_EXCESO FROM COB_DES_CRO_CERRADO_DET A, APO101 B, COB101 C'
   +' WHERE ((A.FEC_PRO_PAG_RES >= '+QuotedStr(dbdtpInicio.Text)+' AND A.FEC_PRO_PAG_RES <=  TO_DATE('+QuotedStr(dbdtpFinal.Text)+'''23:59:00'',''DD/MM/YYYY hh24:mi:ss'')) or'
   +'        (A.FEC_SOLICITA >= '+QuotedStr(dbdtpInicio.Text)+' AND A.FEC_SOLICITA <=  TO_DATE('+QuotedStr(dbdtpFinal.Text)+'''23:59:00'',''DD/MM/YYYY hh24:mi:ss'')))'
   +' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID AND A.FORPAGID = C.FORPAGOID)'
   +' GROUP BY ASOID, DESC_UGEL, CODIGO_MODULAR, APELLIDOS_NOMBRES, TIPO_EXCESO, FECHA_REGISTRO,FECHA_APLICACION, FEC_OPERACION,FEC_APRUEBA, NRO_OPERACION,'
   +' TIPO_PAGO,USU_PRO_PAG_RES, USU_SOLICITA,FEC_SOLICITA,USU_APRUEBA,USU_DESAPRUEBA, ESTADO ORDER BY FECHA_REGISTRO';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   While Not DM1.cdsReporte.Eof Do
   Begin
      xSql := 'SELECT SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsReporte.FieldByName('ASOID').AsString)
      +' AND NROOPE = '+QuotedStr(DM1.cdsReporte.FieldByName('NRO_OPERACION').AsString)
      +' AND FOPERAC = '+QuotedStr(DM1.cdsReporte.FieldByName('FEC_OPERACION').AsString)
      +' AND CREESTID NOT IN (''04'',''13'',''99'') AND NUMDEV IS NULL'
      +' AND TRANSINTID = ''CUO''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      DM1.cdsReporte.Edit;
      DM1.cdsReporte.FieldByName('MONTO_PAGADO').AsFloat :=  DM1.cdsReporte.FieldByName('MONTO_EXCESO').AsFloat+DM1.cdsQry.FieldByName('CREMTOCOB').AsFloat;
      DM1.cdsReporte.Next;
   End;
   dbgPrevio.Selected.Clear;
   dbgPrevio.Selected.Add('DESC_UGEL'#9'25'#9'Descripción~Ugel'#9#9);
   dbgPrevio.Selected.Add('CODIGO_MODULAR'#9'10'#9'Código~Modular'#9#9);
   dbgPrevio.Selected.Add('APELLIDOS_NOMBRES'#9'32'#9'Apellidos y Nombre(s)'#9#9);
   dbgPrevio.Selected.Add('TIPO_EXCESO'#9'15'#9'Tipo~Exceso'#9#9);
   dbgPrevio.Selected.Add('FECHA_REGISTRO'#9'10'#9'Fecha de~Registro'#9#9);
   dbgPrevio.Selected.Add('FECHA_SOLICITA'#9'10'#9'Fecha de~Solicitud'#9#9);
   dbgPrevio.Selected.Add('FECHA_APLICACION'#9'10'#9'Fecha de~Aplicación'#9#9);
   dbgPrevio.Selected.Add('FEC_OPERACION'#9'10'#9'Fecha de~Operación'#9#9);
   dbgPrevio.Selected.Add('FEC_APRUEBA'#9'10'#9'Fecha de~Aprueba/Desapru.'#9#9);
   dbgPrevio.Selected.Add('NRO_OPERACION'#9'10'#9'Número de~Operación'#9#9);
   dbgPrevio.Selected.Add('TIPO_PAGO'#9'22'#9'Tipo de~pago'#9#9);
   dbgPrevio.Selected.Add('USU_SOLICITA'#9'15'#9'Usuario que~solicita'#9#9);
   dbgPrevio.Selected.Add('USU_APRUEBA'#9'22'#9'Usuario que~Aprueba/Desapru.'#9#9);
   dbgPrevio.Selected.Add('USU_APLICA'#9'22'#9'Usuario que~aplica'#9#9);
   dbgPrevio.Selected.Add('ESTADO'#9'18'#9'Estado'#9#9);
   dbgPrevio.Selected.Add('MONTO_PAGADO'#9'12'#9'Monto~pagado'#9#9);
   dbgPrevio.Selected.Add('MONTO_EXCESO'#9'12'#9'Monto~Exceso'#9#9);
   dbgPrevio.ApplySelected;
   TNumericField(DM1.cdsReporte.FieldByName('MONTO_PAGADO')).DisplayFormat := '##,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('MONTO_EXCESO')).DisplayFormat := '##,##0.00';
end;

procedure TFpagxrescrocerr.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

procedure TFpagxrescrocerr.inicializa;
begin
   DM1.cdsReporte.Close;
end;

procedure TFpagxrescrocerr.FormActivate(Sender: TObject);
begin
   inicializa;
end;

procedure TFpagxrescrocerr.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFpagxrescrocerr.BitBtn1Click(Sender: TObject);
   Var xArchivo:string;
begin
 Try
   If DM1.cdsReporte.RecordCount<=0 then
   begin
      ShowMessage('No existe información para exportar');
      Exit;
   end;
   xArchivo:='Rep_Acuerdos';
   If FileExists(xArchivo+'.slk') then
      DeleteFile(xArchivo+'.slk');
   Screen.Cursor := crHourglass;
   DM1.ExportaGridExcel(dbgPrevio,xArchivo);
   Screen.Cursor := crDefault;
  Except
      ShowMessage('No existe información para exportar');
      Exit;
  End;
end;
//Fin HPC_201820_COB
end.
