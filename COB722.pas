unit COB722;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls;

type
  TFToolPagRec = class(TForm)
    pnlTool: TPanel;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    sbtnAceptar: TfcShapeBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolPagRec: TFToolPagRec;

implementation

{$R *.DFM}

end.
