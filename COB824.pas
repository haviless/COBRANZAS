// HPP_200909_COB - SAR2009-315 - realizado por IREVILLA
Unit COB824;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, ExtCtrls, Buttons;

Type
   TFMangestor = Class(TForm)
      btnmodificar: TBitBtn;
      btncerrar: TBitBtn;
      pnldatos: TPanel;
      Panel1: TPanel;
      meidegesdom: TMaskEdit;
      medni: TMaskEdit;
      merazonsocial: TMaskEdit;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      btngrabar: TBitBtn;
      btneliminar: TBitBtn;
      Procedure FormActivate(Sender: TObject);
      Procedure btncerrarClick(Sender: TObject);
      Procedure btngrabarClick(Sender: TObject);
      Procedure btneliminarClick(Sender: TObject);
      Procedure btnmodificarClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
      Function versiexistegesdom(xcod: String): Boolean;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FMangestor: TFMangestor;

Implementation

Uses COB823, COBDM1, Math;

{$R *.dfm}

Procedure TFMangestor.FormActivate(Sender: TObject);
Begin
   If dm1.xSgr = 'I' Then
   Begin
      FMangestor.Caption := 'Insertando nuevo registro';
      meidegesdom.Text := DM1.cdsQry.FieldByName('CODIGO').AsString;
      btnmodificar.Enabled := False;
      btneliminar.Enabled := False;
      medni.SetFocus;
   End;

   If dm1.xSgr = 'M' Then
   Begin
      btngrabar.Enabled := False;
      FMangestor.Caption := 'Editando registro';
      meidegesdom.Text := DM1.cdsDLabo.FieldByName('IDEGESDOM').AsString;
      medni.Text := DM1.cdsDLabo.FieldByName('DNI').AsString;
      medni.Enabled := False;
      merazonsocial.Text := DM1.cdsDLabo.FieldByName('DESGESDOM').AsString;
      merazonsocial.Enabled := False;
   End;

   FMangestor.Top := FGestoresdomiciliarios.Top + 70;
   FMangestor.Left := FGestoresdomiciliarios.Left + 40;

End;

Procedure TFMangestor.btncerrarClick(Sender: TObject);
Begin
   FMangestor.Close;
End;

Procedure TFMangestor.btngrabarClick(Sender: TObject);
Var
   xSql: String;
Begin
   If Trim(merazonsocial.Text) = '' Then
   Begin
      MessageDlg('Ingrese descripción', mtError, [mbAbort], 0);
      merazonsocial.SetFocus;
      Exit;
   End;
   If DM1.xSgr = 'I' Then
   Begin
      If MessageDlg('Seguro de registrar esta gestión', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
      Begin
         xSql := 'INSERT INTO COB_GES_DOM (IDEGESDOM, DESGESDOM, DNI, USUREG, FECHORREG) '
                +'VALUES (' + QuotedStr(meidegesdom.Text) + ','
                            + QuotedStr(merazonsocial.Text) + ','
                            + QuotedStr(medni.Text) + ','
                            + QuotedStr(DM1.wUsuario) + ', SYSDATE)';
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
         MessageDlg('El registro se grabó correctamente', mtInformation, [mbOk], 0);
      End;
   End;
   If DM1.xSgr = 'M' Then
   Begin
      If MessageDlg('Seguro de modificar esta gestión', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
      Begin
         xSql := ' UPDATE COB_GES_DOM '
                +'    SET DESGESDOM = ' + QuotedStr(merazonsocial.Text) + ', '
                +'        DNI       =' + QuotedStr(medni.Text)
                +'  WHERE IDEGESDOM = ' + QuotedStr(meidegesdom.Text);
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
         MessageDlg('El registro se grabó correctamente', mtInformation, [mbOk], 0);

      End;
   End;
   FMangestor.Close;
End;

Function TFMangestor.versiexistegesdom(xcod: String): Boolean;
Var
   xSql: String;
Begin
   xSql := 'SELECT COUNT(*) CUENTA FROM COB_GES_DOM_HIS WHERE IDEGESDOM  = ' + QuotedStr(xcod);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('CUENTA').AsInteger > 0 Then
      Result := True
   Else
      Result := False;
End;

Procedure TFMangestor.btneliminarClick(Sender: TObject);
Var
   xSql: String;
Begin
   If versiexistegesdom(meidegesdom.Text) Then
   Begin
      MessageDlg('No se puede eliminar. Ya existe información con este gestor domiciliario', mtError, [mbAbort], 0);
      Exit;
   End;
   If MessageDlg('Seguro de eliminar al gestor domiciliario', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
   Begin
      xSql := 'DELETE FROM COB_GES_DOM WHERE IDEGESDOM  = ' + QuotedStr(meidegesdom.Text);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      MessageDlg('El registro fue eliminado correctamente', mtInformation, [mbOk], 0);
   End;
   FMangestor.Close;
End;

Procedure TFMangestor.btnmodificarClick(Sender: TObject);
Begin
   medni.Enabled := True;
   merazonsocial.Enabled := True;
   medni.SetFocus;
   btngrabar.Enabled := True;
End;

Procedure TFMangestor.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
End;

End.

