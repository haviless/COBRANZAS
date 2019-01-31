// HPP_200909_COB - SAR2009-315 - realizado por IREVILLA
Unit COB821;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Mask, ExtCtrls, StdCtrls, wwdblook, Wwdbdlg, Buttons;

Type
   TFGesDom = Class(TForm)
      btnGrabar: TBitBtn;
      btnSalir: TBitBtn;
      Panel3: TPanel;
      Label1: TLabel;
      Label3: TLabel;
      dblcdGesDom: TwwDBLookupComboDlg;
      Panel1: TPanel;
      medesgesdom: TMaskEdit;
      Label2: TLabel;
      dblcdTipGes: TwwDBLookupComboDlg;
      Panel2: TPanel;
      megesrefseg: TMaskEdit;
      meComGes: TMemo;
      btnAntecedentes: TBitBtn;
      Label4: TLabel;
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcdGesDomExit(Sender: TObject);
      Procedure dblcdTipGesExit(Sender: TObject);
      Procedure btnGrabarClick(Sender: TObject);
      Procedure btnSalirClick(Sender: TObject);
      Procedure btnAntecedentesClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FGesDom: TFGesDom;

Implementation

Uses COBDM1, COB822;

{$R *.dfm}

Procedure TFGesDom.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
   xSql := 'SELECT IDEGESDOM, DESGESDOM FROM COB_GES_DOM';
   DM1.cdsFRepr.Close;
   DM1.cdsFRepr.DataRequest(xSql);
   DM1.cdsFRepr.Open;
   dblcdGesDom.Selected.Clear;
   dblcdGesDom.Selected.Add('IDEGESDOM'#9'3'#9'Código'#9#9);
   dblcdGesDom.Selected.Add('DESGESDOM'#9'25'#9'Descripción'#9#9);

   xSql := 'SELECT IDGTNDET,DESCRIPCION FROM GES_REF_SEG_DET '
         + ' WHERE IDGTN= ''03'' ORDER BY IDGTNDET';
   DM1.cdsTipCreA.Close;
   DM1.cdsTipCreA.DataRequest(xSql);
   DM1.cdsTipCreA.Open;
   dblcdTipGes.Selected.Clear;
   dblcdTipGes.Selected.Add('IDGTNDET'#9'3'#9'Código'#9#9);
   dblcdTipGes.Selected.Add('DESCRIPCION'#9'30'#9'Descripción'#9#9);

End;

Procedure TFGesDom.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;

End;

Procedure TFGesDom.dblcdGesDomExit(Sender: TObject);
Begin
   If DM1.cdsFRepr.Locate('IDEGESDOM', dblcdGesDom.Text, []) Then
      medesgesdom.Text := DM1.cdsFRepr.FieldByName('DESGESDOM').AsString
   Else
   Begin
      dblcdGesDom.Text := '';
      MessageDlg('Código errado', mtInformation, [mbOk], 0);
      dblcdGesDom.SetFocus;
      Exit;
   End;
End;

Procedure TFGesDom.dblcdTipGesExit(Sender: TObject);
Begin
   If DM1.cdsTipCreA.Locate('IDGTNDET', dblcdTipGes.Text, []) Then
      megesrefseg.Text := DM1.cdsTipCreA.FieldByName('DESCRIPCION').AsString
   Else
   Begin
      dblcdTipGes.Text := '';
      MessageDlg('Código errado', mtInformation, [mbOk], 0);
      dblcdTipGes.SetFocus;
      Exit;
   End;
End;

Procedure TFGesDom.btnGrabarClick(Sender: TObject);
Var
   xSql: String;
Begin
   If Trim(dblcdGesDom.Text) = '' Then
   Begin
      MessageDlg('Ingrese el código del gestor', mtInformation, [mbOk], 0);
      dblcdGesDom.SetFocus;
      Exit;
   End;
   If Trim(dblcdTipGes.Text) = '' Then
   Begin
      MessageDlg('Ingrese el código de tipo de gestión', mtInformation, [mbOk], 0);
      dblcdTipGes.SetFocus;
      Exit;
   End;
   If MessageDlg('Seguro de registrar esta gestión', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
   Begin
      xSql := 'INSERT INTO COB_GES_DOM_HIS (ASOID, TIPGES, IDGTNDET, IDEGESDOM, FECHORREG,USUREG, COMGES)'
            + ' VALUES(' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ', ''03'', '
                      + QuotedStr(dblcdTipGes.Text)+ ','
                      + QuotedStr(dblcdGesDom.Text) + ','
                      +' SYSDATE,' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(Trim(meComGes.Text)) + ')';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      MessageDlg('El registro se grabo correctamente', mtInformation, [mbOk], 0);
   End;
   FGesDom.Close;
End;

Procedure TFGesDom.btnSalirClick(Sender: TObject);
Begin
   FGesDom.Close;
End;

Procedure TFGesDom.btnAntecedentesClick(Sender: TObject);
Begin
   Try
      Fhisgesdom := TFhisgesdom.create(Self);
      Fhisgesdom.ShowModal;
   Finally
      Fhisgesdom.Free;
   End;
End;

End.

