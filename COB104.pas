// Inicio: HPP_200920_COB - SAR2009-0432 - DAD-IR-2009-0112
// AUTOR: Isaac Revilla
// FECHA DE CAMBIO: 12/6/2009
// Mantenimiento de Ugeles
Unit COB104;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Mask, wwdblook, Wwdbdlg;

Type
   TFMantUPagoAdd = Class(TForm)
      pcIngreso: TPageControl;
      tsBasico: TTabSheet;
      edNombre: TEdit;
      Label2: TLabel;
      edAbreviatura: TEdit;
      Label3: TLabel;
      edCodigo: TEdit;
      Label1: TLabel;
      Panel1: TPanel;
      btnCancelar: TBitBtn;
      btnEdit: TBitBtn;
      btnAdd: TBitBtn;
      lblDepartamento: TLabel;
      dblcdDepartamento: TwwDBLookupComboDlg;
      meDepartamento: TMaskEdit;
      Procedure btnAddClick(Sender: TObject);
      Procedure btnEditClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormCreate(Sender: TObject);
      Procedure dblcdDepartamentoChange(Sender: TObject);
   Private
      Function isGraboCorrectamente(ITipo: String): boolean;
   Public
      xProId: String;
   End;

Var
   FMantUPagoAdd: TFMantUPagoAdd;

Implementation

Uses COBDM1;

{$R *.dfm}

(******************************************************************************)

Function TFMantUPagoAdd.isGraboCorrectamente(ITipo: String): boolean;

Function isDxsValidos(): boolean;
   Begin
      result := false;
      If trim(self.edCodigo.Text) = '' Then
      Begin
         showmessage('Por favor Ingrese un Codigo valido');
         exit;
      End;
      If trim(self.edNombre.Text) = '' Then
      Begin
         showmessage('Por favor Ingrese un Nombre valido');
         exit;
      End;
      If trim(self.edAbreviatura.Text) = '' Then
      Begin
         showmessage('Por favor Ingrese una Abreviatura valida');
         exit;
      End;

      result := true;
   End;

Begin
   If isDxsValidos Then
   Begin
      Try
         If ITipo = 'ADD' Then
         Begin
            DM1.cdsUPagoMantUgel.insert; //else DM1.cdsUPago.Edit;
            DM1.cdsUPagoMantUgel.fieldByName('UPROID').value := self.xProId;
            DM1.cdsUPagoMantUgel.fieldByName('UPAGOID').value := trim(self.edCodigo.Text);
            DM1.cdsUPagoMantUgel.fieldByName('UPAGONOM').value := trim(self.edNombre.Text);
            DM1.cdsUPagoMantUgel.fieldByName('UPAGOABR').value := trim(self.edAbreviatura.Text);
            DM1.cdsUPagoMantUgel.fieldByName('UPAGOID_EDIT').value := trim(self.edCodigo.Text);
            DM1.cdsUPagoMantUgel.fieldByName('FLGACT').value := 'S';
            DM1.cdsUPagoMantUgel.fieldByName('FDESHABILITADO').value := 'N';
            DM1.cdsUPagoMantUgel.fieldByName('ISNUEVO').value := 1;
            DM1.cdsUPagoMantUgel.fieldByName('ISEDITADO').value := 0;
            DM1.cdsUPagoMantUgel.post;
            showmessage('Se Agrego Temporalmente la Unidad de Pago');
         End;
         self.ModalResult := mrOk;
         result := true;
      Except
         result := false;
         showmessage('Ocurrio algun error, no se pudo agregar la Unidad de Pago');
      End;
   End
   Else
      result := false;
End;

(******************************************************************************)

Procedure TFMantUPagoAdd.btnAddClick(Sender: TObject);
Begin
   If self.isGraboCorrectamente('ADD') Then self.ModalResult := mrOk;
End;

(******************************************************************************)

Procedure TFMantUPagoAdd.btnEditClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If self.isGraboCorrectamente('EDIT') Then
   Begin
      self.ModalResult := mrOk;
      xSQL := 'UPDATE APO103 SET '
         + '        UPAGONOM = ' + QuotedStr(Trim(edNombre.Text)) + ','
         + '        UPAGOABR = ' + QuotedStr(Trim(edAbreviatura.Text)) + ','
         + '        USUARIO = ' + QuotedStr(DM1.wUsuario) + ','
         + '        FREG = SYSDATE, HREG = SYSDATE'
         + '  WHERE UPAGOID = ' + QuotedStr(Trim(edCodigo.Text));
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
End;

(******************************************************************************)

Procedure TFMantUPagoAdd.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFMantUPagoAdd.FormCreate(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID ';
   DM1.cdsQry2MantUgel.Close;
   DM1.cdsQry2MantUgel.DataRequest(xSQL);
   DM1.cdsQry2MantUgel.Open;

   self.dblcdDepartamento.LookupField := '';
   self.dblcdDepartamento.LookupTable := DM1.cdsQry2MantUgel;
   self.dblcdDepartamento.LookupField := 'DPTOID';
   self.dblcdDepartamento.Selected.Clear;
   self.dblcdDepartamento.Selected.Add('DPTOID'#9'3'#9'ID'#9#9);
   self.dblcdDepartamento.Selected.Add('DPTODES'#9'20'#9'DESCRIPCION'#9#9);
End;

Procedure TFMantUPagoAdd.dblcdDepartamentoChange(Sender: TObject);
Begin
   If DM1.cdsQry2MantUgel.Locate('DPTOID', VarArrayof([self.dblcdDepartamento.Text]), []) Then
   Begin
      self.meDepartamento.Text := DM1.cdsQry2MantUgel.FieldByName('DPTODES').AsString;
   End
   Else
   Begin
      self.meDepartamento.text := '';
   End;
End;
// Fin: HPP_200920_COB
End.

