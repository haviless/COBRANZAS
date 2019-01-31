// HPP_200909_COB - SAR2009-315 - realizado por IREVILLA
Unit COB822;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls;

Type
   TFhisgesdom = Class(TForm)
      dbgHistorial: TwwDBGrid;
      btnSalir: TBitBtn;
      pnldeshis: TPanel;
      Memo1: TMemo;
      StaticText1: TStaticText;
      BitBtn1: TBitBtn;
      Procedure btnSalirClick(Sender: TObject);
      Procedure dbgHistorialDblClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   Fhisgesdom: TFhisgesdom;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFhisgesdom.btnSalirClick(Sender: TObject);
Begin
   Fhisgesdom.Close;
End;

Procedure TFhisgesdom.dbgHistorialDblClick(Sender: TObject);
Begin
   Memo1.Text := DM1.cdsQry.FieldByName('COMGES').AsString;
   pnldeshis.Visible := True;
End;

Procedure TFhisgesdom.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
   pnldeshis.Visible := False;
   xSql := 'SELECT ROWNUM NUMERO, ''DOMICILIARIA'' TIPGES, C.DESCRIPCION, B.DESGESDOM,'
         + '       A.USUREG, A.COMGES, A.FECHORREG '
         + '  FROM COB_GES_DOM_HIS A, COB_GES_DOM  B, GES_REF_SEG_DET C '
         + ' WHERE A.ASOID     = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
         + '   AND A.IDEGESDOM = B.IDEGESDOM '
         + '   AND A.IDGTNDET  = C.IDGTNDET';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   dbgHistorial.Selected.Clear;
   dbgHistorial.Selected.Add('NUMERO'#9'3'#9'Número~Gestión'#9#9);
   dbgHistorial.Selected.Add('TIPGES'#9'12'#9'Tipo~Gestión'#9#9);
   dbgHistorial.Selected.Add('DESCRIPCION'#9'30'#9'Resultado~Gestión'#9#9);
   dbgHistorial.Selected.Add('DESGESDOM'#9'20'#9'Gestionado~por'#9#9);
   dbgHistorial.Selected.Add('USUREG'#9'20'#9'Usuario~que registra'#9#9);
   dbgHistorial.Selected.Add('FECHORREG'#9'21'#9'Fecha y hora~registro'#9#9);
   dbgHistorial.ApplySelected;
End;

Procedure TFhisgesdom.BitBtn1Click(Sender: TObject);
Begin
   pnldeshis.Visible := False;
End;

Procedure TFhisgesdom.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;

End;

End.

