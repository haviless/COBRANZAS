// Inicio: HPP_200920_COB - SAR2009-0432 - DAD-IR-2009-0112
// AUTOR: Isaac Revilla
// FECHA DE CAMBIO: 12/6/2009
// Mantenimiento de Ugeles
Unit COB105;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdblook, Wwdbdlg, ExtCtrls, ComCtrls, Buttons;

Type
   TFMantUProcesoAdd = Class(TForm)
      pcIngreso: TPageControl;
      tsBasico: TTabSheet;
      edNombre: TEdit;
      Label2: TLabel;
      Label3: TLabel;
      edAbreviatura: TEdit;
      edCodigo: TEdit;
      Label1: TLabel;
      Panel1: TPanel;
      btnAdd: TBitBtn;
      btnEdit: TBitBtn;
      btnCancelar: TBitBtn;
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
   End;

Var
   FMantUProcesoAdd: TFMantUProcesoAdd;

Implementation

Uses COBDM1;

{$R *.dfm}

(******************************************************************************)

Function TFMantUProcesoAdd.isGraboCorrectamente(ITipo: String): boolean;

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
            DM1.cdsUProMantUgel.insert; //else DM1.cdsUPro.Edit;
            DM1.cdsUProMantUgel.fieldByName('UPROID').value := trim(self.edCodigo.Text);
            DM1.cdsUProMantUgel.fieldByName('UPRONOM').value := trim(self.edNombre.Text);
            DM1.cdsUProMantUgel.fieldByName('UPROABR').value := trim(self.edAbreviatura.Text);
            DM1.cdsUProMantUgel.fieldByName('UPROID_EDIT').value := trim(self.edCodigo.Text);
            DM1.cdsUProMantUgel.fieldByName('FLGACT').value := 'S';
            DM1.cdsUProMantUgel.fieldByName('ISNUEVO').value := 1;
            DM1.cdsUProMantUgel.fieldByName('ISEDITADO').value := 0;
            DM1.cdsUProMantUgel.post;
            showmessage('Se Agrego Temporalmente la Unidad de Proceso');
         End;
         result := true;
      Except
         showmessage('Ocurrio algun error, no se pudo agregar la Unidad de Proceso');
         result := false;
      End;
   End;
End;

(******************************************************************************)

Procedure TFMantUProcesoAdd.btnAddClick(Sender: TObject);
Begin
   If self.isGraboCorrectamente('ADD') Then self.ModalResult := mrOk;
End;

(******************************************************************************)

Procedure TFMantUProcesoAdd.btnEditClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If self.isGraboCorrectamente('EDIT') Then
   Begin
      self.ModalResult := mrOk;
      xSQL := 'UPDATE APO102 SET '
         + '        UPRONOM = ' + QuotedStr(Trim(edNombre.Text)) + ','
         + '        UPROABR = ' + QuotedStr(Trim(edAbreviatura.Text)) + ','
         + '        USUARIO = ' + QuotedStr(DM1.wUsuario) + ','
         + '        FREG = SYSDATE, HREG = SYSDATE'
         + '  WHERE UPROID = ' + QuotedStr(Trim(edCodigo.Text));
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   End;
End;

(******************************************************************************)

Procedure TFMantUProcesoAdd.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFMantUProcesoAdd.FormCreate(Sender: TObject);
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

Procedure TFMantUProcesoAdd.dblcdDepartamentoChange(Sender: TObject);
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

