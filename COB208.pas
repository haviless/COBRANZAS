unit COB208;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, fcLabel;

type
  TFDAportes = class(TForm)
    dbgDAportes: TwwDBGrid;
    lbCodigo: TfcLabel;
    lbTitulo: TfcLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    sSQL:string;
    { Public declarations }
  end;

var
  FDAportes: TFDAportes;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFDAportes.FormActivate(Sender: TObject);
begin
  dbgDAportes.Selected.Clear;
  dbgDAportes.Selected.Add('TRANSID'#9'12'#9'Transacción');
  dbgDAportes.Selected.Add('USEID'#9'10'#9'USE');
  //dbgDAportes.Selected.Add('FROPAGOABR'#9'10'#9'Forma de Pago');
  dbgDAportes.Selected.Add('TRANSANO'#9'5'#9'Año');
  dbgDAportes.Selected.Add('TRANSMES'#9'3'#9'Mes');
  dbgDAportes.Selected.Add('TRANSNOPE'#9'12'#9'Nº~Operación');
  dbgDAportes.Selected.Add('TRANSFOPE'#9'11'#9'Fecha~Operación');
  dbgDAportes.Selected.Add('TRANSMTO'#9'10'#9'Aporte');
  dbgDAportes.Selected.Add('INTERESMTO'#9'10'#9'Interes~Monto');
  dbgDAportes.Selected.Add('BONUSMTO'#9'10'#9'Bonus~Monto');
  dbgDAportes.Selected.Add('SALDO'#9'10'#9'Saldo');

  sSQL := 'SELECT TRANSID, ASOID, USEID, TRANSANO, TRANSMES, FORPAGOABR, TMONID, '+
          'TRANSMTO, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, INTERESPORC, INTERESMTO, '+
          'BONUSPORC, BONUSMTO, SALDOANT, SALDO, SALDOBONUS '+
          'FROM APO301 WHERE ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString+''' '+
          'ORDER BY TRANSANO,TRANSMES';
  DM1.FiltraCDS(DM1.cdsAportes,sSQL);

  FDAportes.lbTitulo.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
  FDAportes.lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

  dbgDAportes.RefreshDisplay;
end;

procedure TFDAportes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsAportes.Close;
end;

procedure TFDAportes.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

end.
