// HPP_200909_COB - SAR2009-315 realizado por IREVILLA
Unit COB823;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons;

Type
   TFGestoresdomiciliarios = Class(TForm)
      btnCerrar: TBitBtn;
      dbggestoresdomiciliarios: TwwDBGrid;
      dbggestoresdomiciliariosIButton: TwwIButton;
      Procedure btnCerrarClick(Sender: TObject);
      Procedure dbggestoresdomiciliariosIButtonClick(Sender: TObject);
      Procedure dbggestoresdomiciliariosDblClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
      Procedure actugesdom;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FGestoresdomiciliarios: TFGestoresdomiciliarios;

Implementation

Uses COBDM1, COB824;

{$R *.dfm}

Procedure TFGestoresdomiciliarios.actugesdom;
Var
   xSql: String;
Begin
   xSql := 'SELECT IDEGESDOM, DESGESDOM, DNI, USUREG, FECHORREG '
         + '  FROM COB_GES_DOM ORDER BY IDEGESDOM';
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSql);
   DM1.cdsDLabo.Open;
   dbggestoresdomiciliarios.Selected.Clear;
   dbggestoresdomiciliarios.Selected.Add('IDEGESDOM'#9'3'#9'Código'#9#9);
   dbggestoresdomiciliarios.Selected.Add('DESGESDOM'#9'35'#9'Descripción~del Gestor'#9#9);
   dbggestoresdomiciliarios.Selected.Add('DNI'#9'8'#9'D.N.I.~del Gestor'#9#9);
   dbggestoresdomiciliarios.Selected.Add('USUREG'#9'15'#9'Usuario que~registro'#9#9);
   dbggestoresdomiciliarios.Selected.Add('FECHORREG'#9'20'#9'Fecha y hora~registro'#9#9);
   dbggestoresdomiciliarios.ApplySelected;
End;

Procedure TFGestoresdomiciliarios.btnCerrarClick(Sender: TObject);
Begin
   FGestoresdomiciliarios.Close;
End;

Procedure TFGestoresdomiciliarios.dbggestoresdomiciliariosIButtonClick(Sender: TObject);
Var
   xSql: String;
Begin
   DM1.xSgr := 'I';
   xSql := 'SELECT LPAD(NVL(MAX(IDEGESDOM),0)+1,3,''0'') CODIGO FROM COB_GES_DOM';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   Try
      FMangestor := TFMangestor.Create(Self);
      FMangestor.ShowModal;
   Finally
      FMangestor.Free;
   End;
   actugesdom;
End;

Procedure TFGestoresdomiciliarios.dbggestoresdomiciliariosDblClick(
   Sender: TObject);
Begin
   DM1.xSgr := 'M';
   Try
      FMangestor := TFMangestor.Create(Self);
      FMangestor.ShowModal;
   Finally
      FMangestor.Free;
   End;
   actugesdom;
End;

Procedure TFGestoresdomiciliarios.FormActivate(Sender: TObject);
Begin
   actugesdom;
End;

Procedure TFGestoresdomiciliarios.FormKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
End;

End.

