unit COB705;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdbdatetimepicker, wwdblook, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn,
  StdCtrls, Mask, wwdbedit, ExtCtrls;

type
  TFToolDevCuota = class(TForm)
    pnlTool: TPanel;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    bbtnAceptar: TfcShapeBtn;
    procedure bbtnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      xSQL: String;
  end;

var
  FToolDevCuota: TFToolDevCuota;

implementation

uses COB001, COBDM1;

{$R *.DFM}

procedure TFToolDevCuota.bbtnAceptarClick(Sender: TObject);
begin
  If Length(Trim(edtAsociado.Text))>0 Then
  Begin
    xSQL:='SELECT * FROM APO201 '+
          'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));
    Screen.Cursor:=crHourGlass;

    FPrincipal.MtxDev.UsuarioSQL.Clear;
    FPrincipal.MtxDev.FMant.wTabla:='APO201';
    FPrincipal.MtxDev.UsuarioSQL.Add(xSQL);
    FPrincipal.MtxDev.NewQuery;
    Screen.Cursor:=crDefault;

    If DM1.cdsAsociados.RecordCount=0 Then
    Begin
      xSQL:='SELECT * FROM APO201 ';
      Screen.Cursor:=crHourGlass;
      FPrincipal.MtxDev.UsuarioSQL.Clear;
      FPrincipal.MtxDev.FMant.wTabla:='APO201';
      FPrincipal.MtxDev.UsuarioSQL.Add(xSQL);
      FPrincipal.MtxDev.NewQuery;
      edtAsociado.Text:='';
      edtAsociado.SetFocus;
      Screen.Cursor:=crDefault;
      ShowMessage('No Existen Registros que cumplan la condición ');
    End;
  End;

end;

end.
