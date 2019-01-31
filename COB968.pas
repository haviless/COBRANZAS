unit COB968;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons;

type
  TfForPago = class(TForm)
    dtgFrmPag: TwwDBGrid;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fForPago: TfForPago;

implementation

uses COBDM1, COB967;

{$R *.dfm}

procedure TfForPago.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfForPago.BitGrabarClick(Sender: TObject);
var xSQL:String;
begin
    xSQL:='SELECT FORPAGOID FROM COB_ASI_FOR_PAG_USU WHERE USERID='+QuotedStr(DM1.cdsCambios.FieldByName('USERID').AsString)+' AND FORPAGOID='+QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGOID').AsString)+' AND ESTADO=''0'' ';
    If DM1.CountReg(xSQL) > 0 Then
       Begin
          MessageDlg('YA EFECTUO LA ASIGNACION DE ESTA FORMA DE PAGO A ESTE USUARIO!!!!', mtError,[mbOk],0);
          Exit;
       End;

    xSQL:='INSERT INTO COB_ASI_FOR_PAG_USU(FORPAGOID,USERID,OFDESID,USUAUT,HREG,ESTADO) VALUES ('+QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGOID').AsString)+','+QuotedStr(DM1.cdsCambios.FieldByName('USERID').AsString)+','+QuotedStr(DM1.cdsCambios.FieldByName('NIVEL').AsString)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''0'' )';
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    fAsigForPag.MstFrmPago(DM1.cdsCambios.FieldByName('USERID').AsString);
    xSQL:='SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGACT=''S'' '+
          'AND NOT EXISTS (SELECT FORPAGOID FROM COB_ASI_FOR_PAG_USU WHERE USERID='+QuotedStr(DM1.cdsCambios.FieldByName('USERID').AsString)+' AND ESTADO=''0'' AND FORPAGOID=COB101.FORPAGOID ) ';
    DM1.cdsCuotas.Close;
    DM1.cdsCuotas.DataRequest(xSQL);
    DM1.cdsCuotas.Open;
    If DM1.cdsCuotas.RecordCount=0 Then Close;;

end;

end.
