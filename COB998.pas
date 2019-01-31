unit COB998;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Buttons;

type
  Tfinccar = class(TForm)
    dbginccar: TwwDBGrid;
    btncerrar: TBitBtn;
    memensaje: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  finccar: Tfinccar;

implementation

uses COB987;

{$R *.dfm}

procedure Tfinccar.FormActivate(Sender: TObject);
begin
  dbginccar.Selected.Clear;
  dbginccar.Selected.Add('UPROID'#9'3'#9'Unidad~proceso'#9#9);
  dbginccar.Selected.Add('UPAGOID'#9'3'#9'Unidad~pago'#9#9);
  dbginccar.Selected.Add('USEID'#9'3'#9'Unidad~gestión'#9#9);
  dbginccar.Selected.Add('USENOM'#9'25'#9'Descripción de~UGEL'#9#9);
  If FGeninfpla.rgtipaso.ItemIndex = 0 Then
  Begin
    dbginccar.Selected.Add('CODCARGODO'#9'3'#9'Pri. 3 digitos~registrado'#9#9);
    dbginccar.Selected.Add('PRI3DIG'#9'3'#9'Pri. 3 digitos que~más se repite'#9#9);
    dbginccar.Selected.Add('DIGMASREPDO'#9'9'#9'Últ. 3 digitos~registrado'#9#9);
    dbginccar.Selected.Add('ULT3DIG'#9'9'#9'Últ. 3 digitos que~más se repite'#9#9);
  End;
  If FGeninfpla.rgtipaso.ItemIndex = 1 Then
  Begin
    dbginccar.Selected.Add('CODCARGOCE'#9'3'#9'Pri. 3 digitos~registrado'#9#9);
    dbginccar.Selected.Add('PRI3DIG'#9'3'#9'Pri. 3 digitos que~más se repite'#9#9);
    dbginccar.Selected.Add('DIGMASREPCE'#9'9'#9'Últ. 3 digitos~registrado'#9#9);
    dbginccar.Selected.Add('ULT3DIG'#9'9'#9'Últ. 3 digitos que~más se repite'#9#9);
  End;
  dbginccar.ApplySelected;
end;

procedure Tfinccar.Timer1Timer(Sender: TObject);
begin
  If memensaje.Visible = True Then
     memensaje.Visible := False
  else memensaje.Visible := True;   
end;

procedure Tfinccar.btncerrarClick(Sender: TObject);
begin
  finccar.Close;
end;

end.
