unit COB320;
// HPP_200902_COB se agregó formulario COB320
// para la anulación de Registro Global

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFRegGlobalCob_Anu = class(TForm)
    mAnula: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    sOk : String;
  end;

var
  FRegGlobalCob_Anu: TFRegGlobalCob_Anu;

implementation

uses MsgDlgs;

{$R *.dfm}

procedure TFRegGlobalCob_Anu.BitBtn1Click(Sender: TObject);
begin
  if length( trim(mAnula.Text) )<=1 then
  begin
     ShowMessage('Debe ingresar Motivo de Anulación');
     Exit;
  end;

  if Question(Caption, 'Está Seguro de Eliminar Detalle de Registro Global'+#13+#13+'¿Desea Continuar?') Then
     sOk:='S'
  else
     sOk:='N';
  Close;
end;

procedure TFRegGlobalCob_Anu.BitBtn2Click(Sender: TObject);
begin
   sOk:='N';
   Close;
end;

procedure TFRegGlobalCob_Anu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if sOk<>'S' then
      sOk:='N';
end;

end.
