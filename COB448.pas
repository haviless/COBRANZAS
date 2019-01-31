unit COB448;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, Buttons, Mask, ExtCtrls;

type
  Tfmandetcon = class(TForm)
    dblcunipro: TwwDBLookupComboDlg;
    dblcunipag: TwwDBLookupComboDlg;
    dblcduniges: TwwDBLookupComboDlg;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    medesunipag: TMaskEdit;
    Panel3: TPanel;
    medesuniges: TMaskEdit;
    medesunipro: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dblcuniproChange(Sender: TObject);
    procedure dblcunipagChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dblcdunigesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    function validadatos(xuproid, xupagoid, xuseid:String):Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmandetcon: Tfmandetcon;

implementation

uses COBDM1;

{$R *.dfm}

procedure Tfmandetcon.FormActivate(Sender: TObject);
Var xSql:String;
begin
  xsql := 'SELECT UPROID, UPRONOM FROM APO102';
  DM1.cdsUPro.Close;
  DM1.cdsUPro.DataRequest(xSql);
  DM1.cdsUPro.Open;
  dblcunipro.Selected.Clear;
  dblcunipro.Selected.Add('UPROID'#9'3'#9'Código'#9#9);
  dblcunipro.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);
end;

procedure Tfmandetcon.BitBtn3Click(Sender: TObject);
begin
  fmandetcon.Close;
end;

procedure Tfmandetcon.dblcuniproChange(Sender: TObject);
Var xSql:String;
begin
  If dblcunipro.Text = '' Then
  Begin
   dblcunipag.Enabled := False;
    medesunipro.Text := '';
    dblcunipag.Text  := '';
    medesunipag.Text := '';
    dblcduniges.Text := '';
    medesuniges.Text := '';
  End;
  If Length(dblcunipro.Text) = 3 then
  Begin
    If DM1.cdsUPro.Locate('UPROID', dblcunipro.Text, []) Then
    Begin
      medesunipro.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
      dblcunipag.Enabled := True;
      xSql := 'SELECT UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcunipro.Text);
      DM1.cdsUPago.Close;
      DM1.cdsUPago.DataRequest(xSql);
      DM1.cdsUPago.Open;
      dblcunipag.Selected.Clear;
      dblcunipag.Selected.Add('UPAGOID'#9'2'#9'Código'#9#9);
      dblcunipag.Selected.Add('UPAGONOM'#9'25'#9'Descripción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcunipag.Enabled := False;
      dblcunipro.Text := '';
      medesunipro.Text := '';
      dblcunipag.Text  := '';
      medesunipag.Text := '';
      dblcduniges.Text := '';
      medesuniges.Text := '';
      dblcunipro.SetFocus;
    End;
  End;
end;

procedure Tfmandetcon.dblcunipagChange(Sender: TObject);
Var xSql:String;
begin
  If dblcunipag.Text = '' Then
  Begin
   dblcduniges.Enabled := False;
    medesunipag.Text    := '';
    dblcduniges.Text   := '';
    medesuniges.Text      := '';
  End;
  If Length(dblcunipag.Text) = 2 then
  Begin
    If DM1.cdsUPago.Locate('UPAGOID', dblcunipag.Text, []) Then
    Begin
      medesunipag.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
      dblcduniges.Enabled := True;
      xSql := 'SELECT USEID, USENOM FROM APO101 WHERE UPROID = '+QuotedStr(dblcunipro.Text)
      +' AND UPAGOID = '+QuotedStr(dblcunipag.Text);
      DM1.cdsUSES.Close;
      DM1.cdsUSES.DataRequest(xSql);
      DM1.cdsUSES.Open;
      dblcduniges.Selected.Clear;
      dblcduniges.Selected.Add('USEID'#9'2'#9'Código'#9#9);
      dblcduniges.Selected.Add('USENOM'#9'25'#9'Descripción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduniges.Enabled := False;
      dblcunipag.Text := '';
      medesunipag.Text    := '';
      dblcduniges.Text   := '';
      medesuniges.Text      := '';
      dblcunipag.SetFocus;
    End;
  End;
end;

Procedure Tfmandetcon.BitBtn2Click(Sender: TObject);
Var xSql:String;
Begin
  If validadatos(dblcunipro.Text, dblcunipag.Text, dblcduniges.Text) Then
  Begin
    If MessageDlg('Seguro de añadir la nueva unidad de gestión',mtconfirmation,[mbYes,MbNo],0)= mrYes then
    Begin
      xSql := 'INSERT INTO COB_CON_DET (IDECON, UPROID, UPAGOID, USEID) VALUES('
      +QuotedStr(DM1.cdsRegCob.FieldByName('IDECON').AsString)+','+QuotedStr(dblcunipro.Text)
      +','+QuotedStr(dblcunipag.Text)+','+QuotedStr(dblcduniges.Text)+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      MessageDlg('El registro ha sido añadido', mtConfirmation,[mbOk],0);
    End;
  End;
End;

procedure Tfmandetcon.dblcdunigesChange(Sender: TObject);
begin
  If dblcduniges.Text = '' Then medesuniges.Text := '';
  If Length(dblcduniges.Text) = 2 then
  Begin
    If DM1.cdsUSES.Locate('USEID', dblcduniges.Text, []) Then
      medesuniges.Text := DM1.cdsUSES.FieldByName('USENOM').AsString
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduniges.Text   := '';
      medesuniges.Text   := '';
      dblcduniges.SetFocus;
    End;
  End;
end;


Function Tfmandetcon.validadatos(xuproid, xupagoid, xuseid: String): Boolean;
Var xSql, xfecha:String;
Begin
  xfecha := DateToStr(Date);
  If Trim(xuproid) = '' Then
  Begin
    MessageDlg('Seleccione unidad de proceso', mtInformation,[mbOk],0);
    dblcunipro.SetFocus;
    Result := False;
    Exit;
  End;
  If Trim(xupagoid) = '' Then
  Begin
    MessageDlg('Seleccione unidad de pago', mtInformation,[mbOk],0);
    dblcunipag.SetFocus;
    Result := False;
    Exit;
  End;
  If Trim(xuseid) = '' Then
  Begin
    MessageDlg('Seleccione unidad de gestión', mtInformation,[mbOk],0);
    dblcduniges.SetFocus;
    Result := False;
    Exit;
  End;
  xSql := 'SELECT * FROM  COB_CON_DET A, COB_CON_CAB B'
  +' WHERE A.UPROID = '+QuotedStr(xuproid)+' AND A.UPAGOID = '+QuotedStr(xupagoid)+' AND A.USEID = '+QuotedStr(xuseid)
  +' AND A.IDECON = B.IDECON AND B.FECINI <= '+QuotedStr(xfecha)+' AND B.FECFIN >= '+QuotedStr(xfecha)+' AND B.CODESTCON NOT IN (''13'')';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
  Begin
    MessageDlg('La unidad de gestión que desea añadir ya cuenta con convenio vigente', mtInformation,[mbOk],0);
    dblcduniges.SetFocus;
    Result := False;
    Exit;
  End;
  Result := True;
end;

procedure Tfmandetcon.FormKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
    If (ActiveControl is TCheckBox) then
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End
    Else
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End;
end;

end.
