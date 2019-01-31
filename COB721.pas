unit COB721;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Wwkeycb;

type
  TFToolSaldoxCliente = class(TForm)
    pnlToolSaldoxCliente: TPanel;
    isAsoApeNom: TwwIncrementalSearch;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolSaldoxCliente: TFToolSaldoxCliente;

implementation

{$R *.DFM}

end.
