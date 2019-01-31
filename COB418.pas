unit COB418;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Mask, ExtCtrls, wwdbedit,
  wwdblook, Wwdbdlg, Db, DBClient, wwclient;

type
  TFVPrevia = class(TForm)
    dbgPrevio: TwwDBGrid;
    BitBtn1: TBitBtn;
    pnlDBF: TPanel;
    BitBtn2: TBitBtn;
    dbeImp: TwwDBEdit;
    lblCampo: TLabel;
    lblTotReg: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgPrevioTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVPrevia: TFVPrevia;

implementation

{$R *.DFM}

USES COBDM1, COB413;

procedure TFVPrevia.BitBtn1Click(Sender: TObject);
begin
   Close;

end;

procedure TFVPrevia.dbgPrevioTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 	 if FVPrevia.pnlDBF.Enabled then begin
      pnlDBF.Visible:=True;
      lblCampo.Caption:=AFieldName;
   end;
end;

procedure TFVPrevia.BitBtn2Click(Sender: TObject);
begin
	try
  	DM1.tbOrigen.First;
    while not DM1.tbOrigen.Eof do
    begin
    	if DM1.tbOrigen.FieldByName(lblCampo.Caption).AsFloat > StrToFloat(dbeImp.Text) then
      	Exit;
      DM1.tbOrigen.Next;
    end;
  finally
  	pnlDBF.Visible:=False;
  end;
end;

end.
