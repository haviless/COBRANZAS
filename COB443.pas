unit COB443;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, wwdblook, Wwdbdlg, Mask, ExtCtrls, Buttons;

type
  TFpagosobservados = class(TForm)
    medes: TMemo;
    Panel1: TPanel;
    medestippag: TMaskEdit;
    BtnCerrar: TBitBtn;
    btnactualiza: TBitBtn;
    dblcdcodobs: TwwDBLookupComboDlg;
    procedure FormActivate(Sender: TObject);
    procedure BtnCerrarClick(Sender: TObject);
    procedure btnactualizaClick(Sender: TObject);
    procedure dblcdcodobsChange(Sender: TObject);
  private
   procedure inicializa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpagosobservados: TFpagosobservados;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFpagosobservados.FormActivate(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT CODTIP, SUBSTR(DESTIP,1,35) DESTIP FROM COB_TIP_DES_CUE_REC A WHERE NVL(FLGDES, ''X'') = ''1''';
  DM1.cdsTRela.Close;
  DM1.cdsTRela.DataRequest(xSql);
  DM1.cdsTRela.Open;
  dblcdcodobs.Selected.Clear;
  dblcdcodobs.Selected.Add('CODTIP'#9'3'#9'Código'#9#9);
  dblcdcodobs.Selected.Add('DESTIP'#9'35'#9'Descripción'#9#9);
  dblcdcodobs.Text := '';
  medes.Text       := '';
  dblcdcodobs.SetFocus;
end;

procedure TFpagosobservados.BtnCerrarClick(Sender: TObject);
begin
 Fpagosobservados.Close;
end;

procedure TFpagosobservados.inicializa;
begin
  dblcdcodobs.Text := '';
  medestippag.Text := '';
  medes.Text := '';
end;

procedure TFpagosobservados.btnactualizaClick(Sender: TObject);
Var xSql, xfecpag, xnumope, xasoid:String;
begin
  If Trim(medes.Text) = '' Then
  Begin
    MessageDlg('Ingrese una observación adicional', mtInformation,[mbOk],0);
    Exit;
  End;
  If Trim(dblcdcodobs.Text) = '' Then
  Begin
    MessageDlg('Seleccione el tipo de observación', mtInformation,[mbOk],0);
    Exit;
  End;
  If MessageDlg('Seguro de marcar este registro',mtconfirmation,[mbYes,MbNo],0)=mrYes then
  Begin
    If DM1.xCnd = 'N' Then
    Begin
      xSql := 'UPDATE COB_CUE_REC_BAN_NAC_DET SET CIERRE = '+QuotedStr(dblcdcodobs.Text)+', OBS = '+QuotedStr(medes.Text)+', USUOBS = '+QuotedStr(DM1.wUsuario)
      +', FECOBS = SYSDATE WHERE ASOID = '+QuotedStr(DM1.cdsDFam.FieldByName('ASOID').AsString)
      +' AND IDEPER = '+QuotedStr(DM1.cdsDFam.FieldByName('IDEPER').AsString)+' AND FECPAG = '+QuotedStr(DM1.cdsDFam.FieldByName('FECPAG').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      MessageDlg('Pago marcado como '+Trim(medestippag.Text), mtInformation,[mbOk],0);
      Fpagosobservados.Close;
    End;
    If DM1.xCnd = 'C' Then
    Begin
      DM1.cdsDFam.First;
      While Not DM1.cdsDFam.Eof Do
      Begin
        If DM1.cdsDFam.FieldByName('FLAMAR').AsString = 'S' Then
        Begin
          xasoid  := DM1.cdsDFam.FieldByName('ASOID').AsString;
          xnumope := DM1.cdsDFam.FieldByName('NUMOPE').AsString;
          xfecpag := Copy(DM1.cdsDFam.FieldByName('FECPAG').AsString,7,4)+Copy(DM1.cdsDFam.FieldByName('FECPAG').AsString,4,2)+Copy(DM1.cdsDFam.FieldByName('FECPAG').AsString,1,2);
          xSql := 'UPDATE COB348 SET CIERRE = '+QuotedStr(dblcdcodobs.Text)+', OBS = '+QuotedStr(medes.Text)+', USUOBS = '+QuotedStr(DM1.wUsuario)
          +', FECOBS = SYSDATE WHERE SUBSTR(CAMRET,21,10) = '+QuotedStr(xasoid)
          +' AND NUMOPE = '+QuotedStr(xnumope)+' AND FECPAG = '+QuotedStr(xfecpag);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        End;
        DM1.cdsDFam.Next;
      End;
      DM1.cdsDFam.First;
      While Not DM1.cdsDFam.Eof Do
      Begin
        DM1.cdsDFam.Edit;
        DM1.cdsDFam.FieldByName('FLAMAR').AsString := '';
        DM1.cdsDFam.Post;
        DM1.cdsDFam.Next;
      End;
      MessageDlg('Pago marcado como '+Trim(medestippag.Text), mtInformation,[mbOk],0);
      Fpagosobservados.Close;
    End;
  End;
end;

procedure TFpagosobservados.dblcdcodobsChange(Sender: TObject);
begin
  If DM1.cdsTRela.Active = True Then
  Begin
    If dblcdcodobs.Text = '' Then
    Begin
      inicializa;
      Exit;
    End;
    If Length(trim(dblcdcodobs.Text)) = 1 Then
    Begin
      If DM1.cdsTRela.Locate('CODTIP', dblcdcodobs.Text, []) Then
      Begin
        medestippag.Text := DM1.cdsTRela.FieldByName('DESTIP').AsString;
      End
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        dblcdcodobs.Text := '';
        medestippag.Text := '';
        medes.Text := '';
        dblcdcodobs.SetFocus;
      End;
    End;
  End;
end;

end.
