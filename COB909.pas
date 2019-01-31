unit COB909;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit,
  DBGrids, DB, DBClient ;

type
  TfIncTel = class(TForm)
    GrpIncTel: TGroupBox;
    BitSeleccion: TBitBtn;
    BitSalir: TBitBtn;
    dtgInconsistencias: TwwDBGrid;
    GrpAsoid: TGroupBox;
    EdtMaestro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtInconsis: TwwDBEdit;
    dbgplanilla: TwwDBGrid;
    grbConsulta: TGroupBox;
    BitConsulta: TBitBtn;
    rdbNombres: TRadioButton;
    rdbCtaAhor: TRadioButton;
    EdtBuscar: TEdit;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rdbCtaAhorClick(Sender: TObject);
    procedure rdbNombresClick(Sender: TObject);
    procedure BitConsultaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dtgInconsistenciasDblClick(Sender: TObject);
    procedure BitSeleccionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtgInconsistenciasCellChanged(Sender: TObject);
  private
    { Private declarations }
    procedure LimpiaCds();
  public
    { Public declarations }
  end;

var
  fIncTel: TfIncTel;

implementation

uses COBDM1, COB904;

{$R *.dfm}

procedure TfIncTel.BitSalirClick(Sender: TObject);
begin
  fNPago.EdtMonCob.ReadOnly := True;
  Close;
end;

procedure TfIncTel.FormActivate(Sender: TObject);
Var xCount:Integer;
xAposec:String;
begin

xCount:=DM1.cdsCEdu.RecordCount;

if Trim(fNPago.DBLCTipCob.text)<>'18' then
   begin
     fIncTel.Caption     :='Inconsistencia De Planillas';
     rdbCtaAhor.Enabled := False;
     dbgPlanilla.Visible := True ;
     dbgPlanilla.ColumnByName('ASOAPENOM').FooterValue :='N° Registros : ';     
     dbgPlanilla.ColumnByName('IMPORTE').FooterValue := FloatToStrF(xCount,ffNumber, 10, 0);
   end
else
   begin
     xApoSec:=Trim(DM1.cdsCuotas.FieldByname('CREANO').AsString)+Trim(DM1.cdsCuotas.FieldByname('CREMES').AsString);
     fIncTel.Caption :='Inconsistencia De TeleAhorros '+DM1.DesMes(StrToInt(Copy(xApoSec,5,2)),'N')+'-'+Copy(xApoSec,1,4);
     rdbCtaAhor.Enabled := True;
     dtgInconsistencias.Visible := True;
     dtgInconsistencias.ColumnByName('ASONCTA').FooterValue :='N° Registros : ';
     dtgInconsistencias.ColumnByName('IMPORTE').FooterValue := FloatToStrF(xCount,ffNumber, 10, 0);
     rdbNombres.Checked:=True;
     EdtBuscar.SetFocus;
   end;


end;

procedure TfIncTel.rdbCtaAhorClick(Sender: TObject);
begin
   LimpiaCds;
   EdtBuscar.Text := '';  EdtBuscar.Width:=106;   EdtBuscar.SetFocus;
end;

procedure TfIncTel.rdbNombresClick(Sender: TObject);
begin
  LimpiaCds;
  EdtBuscar.Text := '';  EdtBuscar.Width:=343;  EdtBuscar.SetFocus;
end;

procedure TfIncTel.BitConsultaClick(Sender: TObject);
Var xSql,xApoSec:String;
begin
xApoSec:=Trim(DM1.cdsCuotas.FieldByname('CREANO').AsString)+Trim(DM1.cdsCuotas.FieldByname('CREMES').AsString);
DM1.cdsCEdu.Close;

If rdbNombres.Checked = True Then
   If (Trim(fNPago.DBLCTipCob.text)<>'18') then   
      begin
        xSql :='SELECT ASOID,ASOAPENOM,IMPORTE,FOPERAC,NROOPE,RCOBID,DETRCOBID,TRANSANO,TRANSMES,CREFPAG,ASOCODMOD,UPROID,UPAGOID,USEID FROM COB340 WHERE'+
               ' ASOAPENOM LIKE '''+Trim(EdtBuscar.Text)+'%'''+
               ' AND NROOPE='''+TRIM(fNPago.EdtDocPag.Text)+''''+
               ' AND FOPERAC='''+DateToStr(fNPago.DtpFecPag.Date)+'''';
      end
   else
      xSql  := 'SELECT ASOID,ASOAPENOM,ASONCTA,IMPORTE,FOPERACTMP,NROOPETMP,APOSEC FROM COB340 WHERE APOSEC='+QuotedStr(xApoSec)+' And ASOAPENOM LIKE '+QuotedStr(Trim(EdtBuscar.Text)+'%')
Else
   xSql := 'SELECT ASOID,ASOAPENOM,ASONCTA,IMPORTE,FOPERACTMP,NROOPETMP,APOSEC FROM COB340 WHERE APOSEC='+QuotedStr(xApoSec)+' And ASONCTA LIKE '+QuotedStr(Trim(EdtBuscar.Text)+'%');

DM1.cdsCEdu.DataRequest(xSql);
DM1.cdsCEdu.Open;
end;

procedure TfIncTel.LimpiaCds;
Var xSQL:String;
begin

DM1.cdsCEdu.Close;
if Trim(fNPago.DBLCTipCob.text)='18'  then
   xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,IMPORTE,FOPERACTMP,NROOPETMP FROM COB340 WHERE APOSEC='+QuotedStr('900015')
else
   xSql :='SELECT ASOID,ASOAPENOM,IMPORTE,FOPERAC,NROOPE,RCOBID,DETRCOBID,TRANSANO,TRANSMES,CREFPAG,ASOCODMOD,UPROID,UPAGOID,USEID FROM COB340 WHERE  APOSEC='+QuotedStr('900015');
DM1.cdsCEdu.DataRequest(xSQL);
DM1.cdsCEdu.Open;



end;

procedure TfIncTel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfIncTel.dtgInconsistenciasDblClick(Sender: TObject);
begin
If dtgInconsistencias.DataSource.DataSet.RecordCount > 0 Then
   Begin
    fNPago.EdtMonCob.Text:=DM1.cdsCEdu.FieldByName('IMPORTE').AsString;
    fNPago.EdtMonCob.ReadOnly := False;
    Close;
   End;
end;

procedure TfIncTel.BitSeleccionClick(Sender: TObject);
begin
If dtgInconsistencias.DataSource.DataSet.RecordCount > 0 Then
   Begin
    fNPago.EdtMonCob.Text:=DM1.cdsCEdu.FieldByName('IMPORTE').AsString;
    fNPago.EdtMonCob.ReadOnly := False;
    Close;
   End;

end;

procedure TfIncTel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//fNPago.EdtMonCob.ReadOnly := True;
end;

procedure TfIncTel.dtgInconsistenciasCellChanged(Sender: TObject);
begin
 // EdtInconsis.Text:=DM1.cdsCEdu.FieldByName('ASOID').AsString;

end;

end.
