unit CRE946;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls;

type
  TfAso4Sueldos = class(TForm)
    Panel1: TPanel;
    BitSalir: TBitBtn;
    dtgAsoMan: TwwDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    EdtBuscar: TEdit;
    BitRetirar: TBitBtn;
    BitMostrar: TBitBtn;
    procedure BitMostrarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitRetirarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Limpiagrid;
  public
    { Public declarations }
  end;

var
  fAso4Sueldos: TfAso4Sueldos;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfAso4Sueldos.BitMostrarClick(Sender: TObject);
var xSQL:String;
begin
xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,USEID,UPROID,ASONCTA,SITCTA FROM APO201 WHERE ASOAPENOM LIKE '+QuotedStr(Trim(EdtBuscar.Text)+'%')+' AND NVL(VARIASCUOT,''N'')=''N'' ORDER BY ASOAPENOM';
DM1.cdsAsociados.Close;
DM1.cdsAsociados.DataRequest(xSQL);
DM1.cdsAsociados.Open;
end;

procedure TfAso4Sueldos.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfAso4Sueldos.Limpiagrid;
var xSQL:String;
begin
xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,USEID,UPROID,ASONCTA,SITCTA FROM APO201 WHERE ASOID='+QuotedStr('!@#$%^&*#@');
DM1.cdsAsociados.Close;
DM1.cdsAsociados.DataRequest(xSQL);
DM1.cdsAsociados.Open;
end;

procedure TfAso4Sueldos.FormActivate(Sender: TObject);
begin
Limpiagrid;
end;

procedure TfAso4Sueldos.BitRetirarClick(Sender: TObject);
var xSQL:String;
begin
If dtgAsoMan.DataSource.DataSet.RecordCount=0 Then Exit;
If MessageDlg('¿Esta Seguro Que Desea Adicionar al ASOCIADO   :  '+pChar(Trim(DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString))+'    Al Descuento De 4 Cuotas?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   Begin
      xSQL:='UPDATE APO201 SET VARIASCUOT=''S'' WHERE ASOID='+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString);
//      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

end;

end.
