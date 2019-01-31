// Inicio: HPP_200920_COB - SAR2009-0432 - DAD-IR-2009-0112
// AUTOR: Isaac Revilla
// FECHA DE CAMBIO: 12/6/2009
// Mantenimiento de Ugeles
Unit COB103;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, wwdblook,
   Wwdbdlg, Mask, ComCtrls;

Type
   TSentidoNav = (SAdelante, SAtras);
   TFMantUgel = Class(TForm)
      pBody: TPanel;
      pNavegacion: TPanel;
      gbNavegacion: TGroupBox;
      pCancelar: TPanel;
      btnCancelar: TBitBtn;
      btnGrabar: TBitBtn;
      gbSeleccionar: TGroupBox;
      meUPro: TMaskEdit;
      dblcdUPro: TwwDBLookupComboDlg;
      btnAddUPRO: TBitBtn;
      gbUPAGO: TGroupBox;
      btnAddUPAGO: TBitBtn;
      dblcdUPago: TwwDBLookupComboDlg;
      meUPago: TMaskEdit;
      GroupBox1: TGroupBox;
      pcUgelAdd: TPageControl;
      TabSheet1: TTabSheet;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      edCodigo: TEdit;
      edAbreviatura: TEdit;
      edNombre: TEdit;
      chbxActivo: TCheckBox;
      tsDireccion: TTabSheet;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Label9: TLabel;
      edTelefono: TEdit;
      edDireccion: TEdit;
      dblcdDirDistrito: TwwDBLookupComboDlg;
      meDirProvincia: TMaskEdit;
      meDirDistrito: TMaskEdit;
      tsContable: TTabSheet;
      Label10: TLabel;
      dblcdCCosto: TwwDBLookupComboDlg;
      meCCosto: TMaskEdit;
      dblcdDirProv: TwwDBLookupComboDlg;
      gbDepartamento: TGroupBox;
      Label13: TLabel;
      dblcdDpto: TwwDBLookupComboDlg;
      edtDpto: TMaskEdit;
      TabSheet2: TTabSheet;
      Label11: TLabel;
      dblcdDepartamento: TwwDBLookupComboDlg;
      meDepartamento: TMaskEdit;
      Label12: TLabel;
      dblcdProvincia: TwwDBLookupComboDlg;
      meProvincia: TMaskEdit;
      Label8: TLabel;
      dblcdOfides: TwwDBLookupComboDlg;
      meOfides: TMaskEdit;
      Label4: TLabel;
      dblcdDirDepartamento: TwwDBLookupComboDlg;
      meDirDepartamento: TMaskEdit;
      Procedure FormCreate(Sender: TObject);
      Procedure btnGrabarClick(Sender: TObject);
      Procedure btnCancelarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dblcdUProChange(Sender: TObject);
      Procedure btnAddUPROClick(Sender: TObject);
      Procedure btnEditUPROClick(Sender: TObject);
      Procedure dblcdUPagoChange(Sender: TObject);
      Procedure btnEditUPAGOClick(Sender: TObject);
      Procedure btnAddUPAGOClick(Sender: TObject);
      Procedure dblcdDirProvincia1Exit(Sender: TObject);
      Procedure dblcdDepartamentoChange(Sender: TObject);
      Procedure dblcdDirDepartamentoChange(Sender: TObject);
      Procedure dblcdDirProvChange(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcdDptoChange(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcdDirDistritoChange(Sender: TObject);
      Procedure dblcdProvinciaChange(Sender: TObject);
      Procedure dblcdOfidesChange(Sender: TObject);
      Procedure dblcdCCostoChange(Sender: TObject);
   Private
      opcTipoIngresoUGEL: String;
      xProIdUGEL: String;
      xPagoIdUGEL: String;
      xProIdUPAGO: String;
      Function GetUGELIdUGEL(): String;
      Procedure cargarFrmIngresoUPro(ITipo: String);
      Function GetUProIdUPro: String;
      Procedure SetUProIdUPro(IValor: String);
      Procedure cargarFrmIngresoUPAGO(ITipo: String);
      Procedure cargarUPAGO;
      Function GetUPagoIdUPAGO: String;
      Function graboUPAGO: boolean;
      Procedure inicializar_Dptos;
      Procedure inicializar_1UPAGO;
      Procedure inicializarUPAGO(IUProId: String);
      Function isDxsValidosUPAGO: boolean;
      Procedure limpiarUPAGO;
      Procedure SetUPagoIdUPAGO(IValor: String);
      Procedure inicializar_1UPro();
      Procedure limpiarUPro();
      Function isDxsValidosUPro(): boolean;
      Function graboUPro(): boolean;
      Property UProIdUPro: String Read GetUProIdUPro Write SetUProIdUPro;
      Property UPagoIdUPago: String Read GetUPagoIdUPago Write SetUPagoIdUPago;
      Property UGELIdUGEL: String Read GetUGELIdUGEL;
      Procedure cargarCCostoUGEL;
      Procedure cargarDepartamentos;
      Procedure cargarDirDistritosUGEL;
      Procedure cargarOfidesUGEL;
      Procedure cargarProvinciasUGEL;
      Procedure filtrarProvinciasUGEL(IDptoId: String);
      Procedure filtrarOfidesUGEL(IDptoId: String; IProvId: String = ''; IDistId: String = '');
      Function getStrActivoUGEL: String;
      Function graboUGEL: boolean;
      Procedure inicializar_1UGEL(IOpcTipoIngreso: String);
      Procedure inicializarUGEL(IUProId, IUPagoId: String);
      Function isDxsValidosUGEL: boolean;
   Public
      UProId: String;
      UPagoId: String;
      opcTipoIngreso: String;
   End;

Var
   FMantUgel: TFMantUgel;

Implementation

Uses COBDM1, COB105, COB104;

{$R *.dfm}

Procedure TFMantUgel.FormCreate(Sender: TObject);
Begin
   self.opcTipoIngreso := 'ADD';
End;

Procedure TFMantUgel.FormActivate(Sender: TObject);
Begin
   cargarDepartamentos;
   self.cargarCCostoUGEL();
   If (self.opcTipoIngreso = 'EDIT') Then
   Begin
      dblcdDpto.Text := DM1.cdsUsesMantUgel.FieldByName('DPTOID').AsString;
      dblcdUPro.Text := self.UProId;
      dblcdUPago.Text := self.UPagoId;

      With DM1.cdsUsesMantUgel Do
      Begin
         edCodigo.Text := fieldByname('USEID').AsString;
         edAbreviatura.Text := fieldByname('USEABRE').AsString;
         edNombre.Text := fieldByname('USENOM').AsString;
         If (fieldByname('FDESHABILITADO').IsNull) Or (fieldByname('FDESHABILITADO').AsString = 'N') Then
            chbxActivo.Checked := true
         Else
            chbxActivo.Checked := false;

         edTelefono.Text := fieldByname('USETELF').AsString;
         edDireccion.Text := fieldByname('USEDIR').AsString;

         dblcdDepartamento.Text := fieldByname('DPTOID').AsString;

         dblcdProvincia.Text := fieldByname('CIUDID').AsString;

         dblcdOfides.Text := fieldByname('OFDESID').AsString;

         dblcdDirDepartamento.Text := fieldByname('DIRDPTOID').AsString;

         dblcdDirProv.Text := fieldByname('dirprovid').asString;

         dblcdDirDistrito.Text := fieldByname('DIRZIPID').AsString;

         dblcdCCosto.Text := fieldByname('CCOSID').AsString;

      End;
      dblcdDpto.Enabled := false;
      dblcdUPro.Enabled := false;
      btnAddUPRO.Enabled := false;
      dblcdUPago.Enabled := false;
      btnAddUPAGO.Enabled := false;
   End
   Else
   Begin
      dblcdDpto.Enabled := true;
      dblcdUPro.Enabled := true;
      btnAddUPRO.Enabled := true;
      dblcdUPago.Enabled := true;
      btnAddUPAGO.Enabled := true;
   End;
   dblcdDirDepartamento.Enabled := false;
   dblcdDepartamento.Enabled := false;

   self.edCodigo.Enabled := Not (self.opcTipoIngreso = 'EDIT');
   pcUgelAdd.ActivePageIndex:=0;
End;

Procedure TFMantUgel.inicializar_Dptos();
Var
   xSQL: String;
Begin
   xSQL := 'select A.UPROID,A.UPAGOID,A.UPAGONOM,A.UPAGOABR,'
      + '       FLGACT, '
      + '       CASE WHEN A.FDESHABILITADO IS NULL THEN ''N'' ELSE A.FDESHABILITADO END FDESHABILITADO, '
      + '       0 ISNUEVO, 0 ISEDITADO ,A.UPAGOID UPAGOID_EDIT '
      + '  from APO103 A'
      + ' order by A.UPAGOID ';
   DM1.cdsDptoMantUgel.Close;
   DM1.cdsDptoMantUgel.DataRequest(xSQL);
   DM1.cdsDptoMantUgel.Open;

   self.dblcdDpto.LookupField := '';
   self.dblcdDpto.LookupTable := DM1.cdsDptoMantUgel;
   self.dblcdDpto.LookupField := 'UPAGOID';
   self.dblcdDpto.Selected.Clear;
   self.dblcdDpto.Selected.Add('UPAGOID'#9'5'#9'UPago'#9#9);
   self.dblcdDpto.Selected.Add('UPAGONOM'#9'35'#9'Nombre'#9#9);
End;

Procedure TFMantUgel.btnGrabarClick(Sender: TObject);
Var
   xSql: String;

   Procedure mostrarError();
   Begin
      DM1.DCOM1.AppServer.SolRollBack;
      Screen.Cursor := crDefault;
      showmessage('Ocurrio algun error.. No se pudo grabar');
   End;
Begin
  // los datos se van validando a cada paso que se avanza
   If self.isDxsValidosUPRO() And self.isDxsValidosUPAGO() Then
   Begin
      Screen.Cursor := crHourGlass;
      self.inicializarUGEL(self.UProIdUPRO, self.UPagoIdUPAGO);
      If isDxsValidosUGEL() Then
      Begin
       //Valida que la Ugel no tenga asociados
         If Not chbxActivo.Checked Then
         Begin
            xSql := 'SELECT ASOID FROM APO201 WHERE UPROID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsUsesMantUgel.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(Trim(edCodigo.Text)) + ' AND ROWNUM < 2';
            DM1.cdsAso.Close;
            DM1.cdsAso.DataRequest(xSql);
            DM1.cdsAso.Open;
            If DM1.cdsAso.RecordCount > 0 Then
            Begin
               Screen.Cursor := crDefault;
               ShowMessage('Existen asociados que pertenecen a la UGEL, no puede ser deshabilitada');
               exit;
            End;
         End;

       //Valida que el código de la Ugel no sea duplicado
         If self.opcTipoIngreso = 'ADD' Then
         Begin
            xSql := 'SELECT USEID FROM APO101 WHERE UPROID = ' + QuotedStr(dblcdUPro.Text) + ' AND UPAGOID = ' + QuotedStr(dblcdUPago.Text) + ' AND USEID = ' + QuotedStr(Trim(edCodigo.Text)) + ' AND ROWNUM < 2';
            DM1.cdsAso.Close;
            DM1.cdsAso.DataRequest(xSql);
            DM1.cdsAso.Open;
            If DM1.cdsAso.RecordCount > 0 Then
            Begin
               Screen.Cursor := crDefault;
               ShowMessage('El código de la Ugel ya existe. Debe cambiar de código');
               exit;
            End;
         End;

         DM1.DCOM1.AppServer.SolStartTransaction;
         Try
            If self.graboUPRO()
               And self.graboUPAGO()
               And self.graboUGEL Then
            Begin
               DM1.DCOM1.AppServer.SolCommit;
               showmessage('Se grabo correctamente');
               close();
            End
            Else
               mostrarError();
         Except
            mostrarError();
         End;
      End;
      Screen.Cursor := crDefault;
   End;
End;

(******************************************************************************)

Procedure TFMantUgel.btnCancelarClick(Sender: TObject);
Begin
   close;
End;

Procedure TFMantUgel.inicializar_1UPro();
Var
   xSQL: String;
Begin
   xSQL := 'select A.UPROID,A.UPRONOM,A.UPROABR, '
      + '       CASE WHEN A.FLGACT IS NULL THEN ''S'' ELSE A.FLGACT END FLGACT, '
      + '       0 ISNUEVO , 0 ISEDITADO ,A.UPROID UPROID_EDIT '
      + 'from APO102 A'
      + ' where A.DPTOID = ' + QuotedStr(dblcdDpto.Text)
      + ' order by A.UPROID ';
   DM1.cdsUproMantUgel.Close;
   DM1.cdsUproMantUgel.DataRequest(xSQL);
   DM1.cdsUproMantUgel.Open;

   self.dblcdUPro.LookupField := '';
   self.dblcdUPro.LookupTable := DM1.cdsUproMantUgel;
   self.dblcdUPro.LookupField := 'UPROID';
   self.dblcdUPro.Selected.Clear;
   self.dblcdUPro.Selected.Add('UPROID'#9'5'#9'UPro'#9#9);
   self.dblcdUPro.Selected.Add('UPRONOM'#9'35'#9'Nombre'#9#9);
End;

Procedure TFMantUgel.limpiarUPro;
Begin
   If Not self.dblcdUPro.Focused Then self.dblcdUPro.text := '';
   self.meUPro.Text := '';
End;

Function TFMantUgel.GetUProIdUPro(): String;
Begin
   Result := trim(self.dblcdUPro.text);
End;

Procedure TFMantUgel.SetUProIdUPro(IValor: String);
Begin
   self.dblcdUPro.text := IValor;
   self.dblcdUProChange(self.dblcdUPro);
End;

Function TFMantUgel.isDxsValidosUPro: boolean;
Begin
   result := false;
   If (Trim(self.dblcdDpto.Text) = '') Then
   Begin
      showmessage('Por Favor Seleccione un Departamento Válido');
      exit;
   End;
   If (self.UProIdUPro = '') Then
   Begin
      showmessage('Por Favor Seleccione una Unidad de Proceso Válida');
      exit;
   End;
   result := true;
End;

(******************************************************************************)

Function TFMantUgel.graboUPro(): boolean;
Var
   xSQL: String;
Begin
   If (DM1.cdsUProMantUgel.FieldByName('ISNUEVO').Value = 1) Then // si es nuevo
   Begin
      Try
         xSQL := 'INSERT INTO APO102(UPROID,UPRONOM,UPROABR, '
            + '           FLGACT,USUARIO,FREG,HREG,DPTOID,DIRDPTOID) '
            + ' VALUES(' + QuotedStr(DM1.cdsUProMantUgel.FieldByName('UPROID').Value) + ','
            + QuotedStr(DM1.cdsUProMantUgel.FieldByName('UPRONOM').Value) + ','
            + QuotedStr(DM1.cdsUProMantUgel.FieldByName('UPROABR').Value) + ','
            + QuotedStr(DM1.cdsUProMantUgel.FieldByName('FLGACT').Value) + ','
            + QuotedStr(DM1.wUsuario) + ','
            + 'sysdate,'
            + 'sysdate,'
            + QuotedStr(dblcdDpto.Text) + ','
            + QuotedStr(dblcdDpto.Text)
            + ' )';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         result := true;
      Except
         result := false;
      End;
   End
   Else
      If ((DM1.cdsUProMantUgel.FieldByName('ISEDITADO').Value = 1)) Then // si no es nuevo.. comprobar si ha sido modificado
      Begin
         Try
            xSQL := 'UPDATE APO102 SET '
               + '        UPROID = ' + QuotedStr(DM1.cdsUProMantUgel.FieldByName('UPROID').Value) + ','
               + '        UPRONOM = ' + QuotedStr(DM1.cdsUProMantUgel.FieldByName('UPRONOM').Value) + ','
               + '        UPROABR = ' + QuotedStr(DM1.cdsUProMantUgel.FieldByName('UPROABR').Value) + ','
               + '        FLGACT = ' + QuotedStr(DM1.cdsUProMantUgel.FieldByName('FLGACT').Value) + ','
               + '        USUARIO = ' + QuotedStr(DM1.wUsuario) + ','
               + '        FREG = sysdate ,'
               + '        HREG = sysdate '
               + '  WHERE UPROID = ' + QuotedStr(DM1.cdsUProMantUgel.FieldByName('UPROID_EDIT').Value);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            result := true;
         Except
            result := false;
         End;
      End
      Else // si no es nuevo y no ha sido modificado
         result := true;
End;

Procedure TFMantUgel.cargarFrmIngresoUPro(ITipo: String);
Begin
   Try
      FMantUProcesoAdd := TFMantUProcesoAdd.create(self);
      FMantUProcesoAdd.lblDepartamento.Visible := false;
      FMantUProcesoAdd.dblcdDepartamento.Visible := false;
      FMantUProcesoAdd.meDepartamento.Visible := false;
      FMantUProcesoAdd.edCodigo.Enabled := (ITipo = 'ADD');
      FMantUProcesoAdd.btnAdd.Visible := (ITipo = 'ADD');
      FMantUProcesoAdd.btnEdit.Visible := Not FMantUProcesoAdd.btnAdd.Visible;
      If (ITipo = 'EDIT') Then
      Begin
         FMantUProcesoAdd.edCodigo.Text := DM1.cdsUProMantUgel.FieldByName('UPROID').Value;
         FMantUProcesoAdd.edNombre.Text := DM1.cdsUProMantUgel.FieldByName('UPRONOM').Value;
         FMantUProcesoAdd.edAbreviatura.Text := DM1.cdsUProMantUgel.FieldByName('UPROABR').Value;
      End;
      If FMantUProcesoAdd.ShowModal = mrOk Then
      Begin
         self.dblcdUPro.text := DM1.cdsUProMantUgel.FieldByName('UPROID').Value;
         self.meUPro.Text := DM1.cdsUProMantUgel.FieldByName('UPRONOM').AsString
      End;
   Finally
      FMantUProcesoAdd.Free;
   End;
End;

Procedure TFMantUgel.btnAddUPROClick(Sender: TObject);
Begin
   self.cargarFrmIngresoUPRO('ADD');
End;

Procedure TFMantUgel.btnEditUPROClick(Sender: TObject);
Begin
   self.cargarFrmIngresoUPRO('EDIT');
End;

Procedure TFMantUgel.dblcdUProChange(Sender: TObject);
Var
   isUProIdValido: boolean;
Begin
   Screen.Cursor := crHourGlass;
   If DM1.cdsUProMantUgel.Locate('UPROID', VarArrayof([self.UProIdUPro]), []) Then
   Begin
      self.meUPro.Text := DM1.cdsUProMantUgel.FieldByName('UPRONOM').AsString;
   End
   Else
      self.limpiarUPRO();
   inicializar_1UPAGO();
   isUProIdValido := true; // si esta activo significa ok
   If isUProIdValido Then
      self.inicializarUPAGO(self.UProIdUPRO)
   Else
      self.inicializarUPAGO('');
   self.gbUPAGO.Enabled := isUProIdValido;
   self.cargarUPAGO();
   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TFMantUgel.inicializar_1UPAGO();
Var
   xSQL: String;
Begin
   xSQL := 'select A.UPROID,A.UPAGOID,A.UPAGONOM,A.UPAGOABR,'
      + '       FLGACT, '
      + '       CASE WHEN A.FDESHABILITADO IS NULL THEN ''N'' ELSE A.FDESHABILITADO END FDESHABILITADO, '
      + '       0 ISNUEVO, 0 ISEDITADO ,A.UPAGOID UPAGOID_EDIT '
      + '  from APO103 A'
      + ' order by A.UPAGOID ';
   DM1.cdsUPagoMantUgel.Close;
   DM1.cdsUPagoMantUgel.DataRequest(xSQL);
   DM1.cdsUPagoMantUgel.Open;

   self.dblcdUPago.LookupField := '';
   self.dblcdUPago.LookupTable := DM1.cdsUPagoMantUgel;
   self.dblcdUPago.LookupField := 'UPAGOID';
   self.dblcdUPago.Selected.Clear;
   self.dblcdUPago.Selected.Add('UPAGOID'#9'5'#9'UPago'#9#9);
   self.dblcdUPago.Selected.Add('UPAGONOM'#9'35'#9'Nombre'#9#9);
End;

Procedure TFMantUgel.inicializarUPAGO(IUProId: String);
Begin
   self.xProIdUPAGO := IUProId;
End;

Procedure TFMantUgel.cargarUPAGO();
Begin
   self.limpiarUPAGO();

   DM1.cdsUPagoMantUgel.Filtered := false;
   DM1.cdsUPagoMantUgel.Filter := 'UPROID = ' + quotedstr(TRIM(self.xProIdUPAGO));
   DM1.cdsUPagoMantUgel.Filtered := true;
End;

Function TFMantUgel.GetUPagoIdUPAGO(): String;
Begin
   Result := trim(self.dblcdUPago.text);
End;

Procedure TFMantUgel.SetUPagoIdUPAGO(IValor: String);
Begin
   self.dblcdUPago.text := IValor;
   self.dblcdUPagoChange(self.dblcdUPago);
End;

Procedure TFMantUgel.limpiarUPAGO;
Begin
   If Not self.dblcdUPago.Focused Then self.dblcdUPago.text := '';
   self.meUPago.Text := '';
End;

Function TFMantUgel.isDxsValidosUPAGO: boolean;
Begin
   result := false;
   If (self.UPagoIdUPAGO = '') Then
   Begin
      showmessage('Por Favor Seleccione una Unidad de Pago Valida');
      exit;
   End;
   result := true;
End;

Function TFMantUgel.graboUPAGO(): boolean;
Var
   xSQL: String;
Begin
   If DM1.cdsUPagoMantUgel.FieldByName('ISNUEVO').Value = 1 Then
   Begin
      Try
         xSQL := 'INSERT INTO APO103(UPROID,UPAGOID,UPAGONOM,UPAGOABR, '
            + '           FLGACT,FDESHABILITADO,USUARIO,FREG,HREG,DPTOID,DIRDPTOID  ) '
            + ' VALUES(' + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPROID').Value) + ','
            + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPAGOID').Value) + ','
            + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPAGONOM').Value) + ','
            + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPAGOABR').Value) + ','
            + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('FLGACT').Value) + ','
            + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('FDESHABILITADO').Value) + ','
            + QuotedStr(DM1.wUsuario) + ','
            + 'sysdate,'
            + 'sysdate,'
            + QuotedStr(dblcdDpto.Text) + ','
            + QuotedStr(dblcdDpto.Text)
            + ' )';

         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         result := true;
      Except
         result := false;
      End;
   End
   Else
      If ((DM1.cdsUPagoMantUgel.FieldByName('ISEDITADO').Value = 1)) Then // si no es nuevo.. comprobar si ha sido modificado
      Begin
         Try
            xSQL := 'UPDATE APO103 SET '
               + '        UPROID = ' + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPROID').Value) + ','
               + '        UPAGOID = ' + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPAGOID').Value) + ','
               + '        UPAGONOM = ' + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPAGONOM').Value) + ','
               + '        UPAGOABR = ' + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPAGOABR').Value) + ','
               + '        FLGACT = ' + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('FLGACT').Value) + ','
               + '        FDESHABILITADO = ' + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('FDESHABILITADO').Value) + ','
               + '        USUARIO = ' + QuotedStr(DM1.wUsuario) + ','
               + '        FREG = sysdate ,'
               + '        HREG = sysdate '
               + '  WHERE UPROID = ' + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPROID').Value)
               + '    AND UPAGOID = ' + QuotedStr(DM1.cdsUPagoMantUgel.FieldByName('UPAGOID_EDIT').Value);
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            result := true;
         Except
            result := false;
         End;
      End
      Else // si no es nuevo y no ha sido modificado
         result := true;
End;

Procedure TFMantUgel.cargarFrmIngresoUPAGO(ITipo: String);
Begin
   Try
      FMantUPagoAdd := TFMantUPagoAdd.create(self);
      FMantUPagoAdd.xProId := self.xProIdUPAGO;
      FMantUPagoAdd.lblDepartamento.Visible := false;
      FMantUPagoAdd.dblcdDepartamento.Visible := false;
      FMantUPagoAdd.meDepartamento.Visible := false;
      FMantUPagoAdd.edCodigo.Enabled := (ITipo = 'ADD');
      FMantUPagoAdd.btnAdd.Visible := (ITipo = 'ADD');
      FMantUPagoAdd.btnEdit.Visible := Not FMantUPagoAdd.btnAdd.Visible;
      If (ITipo = 'EDIT') Then
      Begin
         FMantUPagoAdd.edCodigo.Text := DM1.cdsUPagoMantUgel.FieldByName('UPAGOID').Value;
         FMantUPagoAdd.edNombre.Text := DM1.cdsUPagoMantUgel.FieldByName('UPAGONOM').Value;
         FMantUPagoAdd.edAbreviatura.Text := DM1.cdsUPagoMantUgel.FieldByName('UPAGOABR').Value;
      End;
      If FMantUPagoAdd.ShowModal = mrOk Then
      Begin
         self.dblcdUPago.text := DM1.cdsUPagoMantUgel.FieldByName('UPAGOID').Value;
         self.meUPago.Text := DM1.cdsUPagoMantUgel.FieldByName('UPAGONOM').AsString
      End;
   Finally
      FMantUPagoAdd.Free;
   End;
End;

Procedure TFMantUgel.btnAddUPAGOClick(Sender: TObject);
Begin
   self.cargarFrmIngresoUPAGO('ADD');
End;

Procedure TFMantUgel.btnEditUPAGOClick(Sender: TObject);
Begin
   self.cargarFrmIngresoUPAGO('EDIT');
End;

Procedure TFMantUgel.dblcdUPagoChange(Sender: TObject);
Begin
   If DM1.cdsUPagoMantUgel.Locate('UPAGOID', VarArrayof([self.GetUPagoIdUPAGO]), []) Then
   Begin
      self.meUPago.Text := DM1.cdsUPagoMantUgel.FieldByName('UPAGONOM').AsString;
   End
   Else
      self.limpiarUPAGO();
End;

Procedure TFMantUgel.inicializar_1UGEL(IOpcTipoIngreso: String);
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourGlass;
   self.opcTipoIngreso := IOpcTipoIngreso;

   self.pcUgelAdd.TabIndex := 0;

   self.dblcdDepartamento.text := '';
   self.meDepartamento.Text := '';

   self.cargarCCostoUGEL();

   self.dblcdDirDepartamento.text := '';
   self.meDirDepartamento.Text := '';

   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TFMantUgel.inicializarUGEL(IUProId: String; IUPagoId: String);
Begin
   self.xProIdUGEL := IUProId;
   self.xPagoIdUGEL := IUPagoId;
End;

Function TFMantUgel.GetUGELIdUGEL(): String;
Begin
   Result := trim(self.edCodigo.text);
End;

Function TFMantUgel.isDxsValidosUGEL: boolean;
Begin
   result := false;
   If Not self.pcUgelAdd.Visible Then
   Begin
      showmessage('Por Favor Ingrese una UGEL');
      exit;
   End;
   If (self.edcodigo.Text = '') Then
   Begin
      showmessage('Por Favor Ingrese un codigo valido para la UGEL');
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

   If trim(self.dblcdDepartamento.Text) = '' Then
   Begin
      showmessage('Por favor Seleccione el Departamento');
      exit;
   End;

   If trim(self.dblcdProvincia.Text) = '' Then
   Begin
      showmessage('Por favor Seleccione la Provincia');
      exit;
   End;

   If trim(self.dblcdDirDistrito.Text) = '' Then
   Begin
      showmessage('Por favor Seleccione el Distrito');
      exit;
   End;

   If trim(self.dblcdOfides.Text) = '' Then
   Begin
      showmessage('Por favor Seleccione la Ofides');
      exit;
   End;

   If trim(self.dblcdCCosto.Text) = '' Then
   Begin
      showmessage('Por favor Seleccione el Centro de Costo');
      exit;
   End;
   result := true;

End;

Function TFMantUgel.getStrActivoUGEL(): String;
Begin
   If self.chbxActivo.Checked Then
      result := 'S'
   Else
      result := 'N';
End;

Function TFMantUgel.graboUGEL: boolean;
Var
   xSQL: String;

   Function notFLGACT(): String;
   Begin
      If self.chbxActivo.Checked Then
         result := 'N'
      Else
         result := 'S';
   End;
Begin
   If self.opcTipoIngreso = 'ADD' Then
   Begin
      Try
         xSQL := 'INSERT INTO APO101 (UPROID,UPAGOID,USEID,'
            + '    USENOM,USEABRE,'
            + '    USETELF,USEDIR,'
            + '    DIRDPTOID,DIRPROVID,DIRZIPID,'
            + '    DPTOID,CIUDID,'
            + '    OFDESID,'
            + '    CCOSID,'
            + '    FLGACT,FDESHABILITADO,USUARIO,FREG,HREG'
            + '    ) '
            + ' VALUES(' + QuotedStr(self.xProIdUGEL) + ',' + QuotedStr(self.xPagoIdUGEL) + ',' + QuotedStr(trim(self.edCodigo.text)) + ','
            + QuotedStr(trim(self.edNombre.text)) + ',' + QuotedStr(trim(self.edAbreviatura.text)) + ','
            + QuotedStr(trim(self.edTelefono.text)) + ',' + QuotedStr(trim(self.edDireccion.text)) + ','
            + QuotedStr(trim(self.dblcdDirDepartamento.Text)) + ',' + QuotedStr(trim(dblcdDirProv.Text)) + ',' + QuotedStr(trim(self.dblcdDirDistrito.text)) + ','
            + QuotedStr(trim(self.dblcdDepartamento.Text)) + ',' + QuotedStr(trim(self.dblcdProvincia.text)) + ','
            + QuotedStr(trim(self.dblcdOfides.Text)) + ','
            + QuotedStr(trim(self.dblcdCCosto.Text)) + ','
            + QuotedStr(getStrActivoUGEL()) + ',' + QuotedStr(notFLGACT()) + ',' + QuotedStr(DM1.wUsuario) + ',sysdate,sysdate'
            + ')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         result := true;
      Except
         result := false;
      End;
   End
   Else
      If self.opcTipoIngreso = 'EDIT' Then
      Begin
         Try
            xSQL := 'UPDATE APO101 SET '
               + '     UPROID= ' + QuotedStr(self.xProIdUGEL) + ','
               + '     UPAGOID= ' + QuotedStr(self.xPagoIdUGEL) + ','
               + '     USEID= ' + QuotedStr(trim(self.edCodigo.text)) + ','
               + '     USENOM= ' + QuotedStr(trim(self.edNombre.text)) + ','
               + '     USEABRE= ' + QuotedStr(trim(self.edAbreviatura.text)) + ','
               + '     USETELF= ' + QuotedStr(trim(self.edTelefono.text)) + ','
               + '     USEDIR= ' + QuotedStr(trim(self.edDireccion.text)) + ','
               + '     DIRDPTOID= ' + QuotedStr(trim(self.dblcdDirDepartamento.Text)) + ','
               + '     DIRPROVID= ' + QuotedStr(trim(dblcdDirProv.Text)) + ','
               + '     DIRZIPID= ' + QuotedStr(trim(self.dblcdDirDistrito.text)) + ','
               + '     DPTOID= ' + QuotedStr(trim(self.dblcdDepartamento.Text)) + ','
               + '     CIUDID= ' + QuotedStr(trim(self.dblcdProvincia.text)) + ','
               + '     OFDESID= ' + QuotedStr(trim(self.dblcdOfides.Text)) + ','
               + '     CCOSID= ' + QuotedStr(trim(self.dblcdCCosto.Text)) + ','
               + '     FLGACT= ' + QuotedStr(getStrActivoUGEL()) + ','
               + '     FDESHABILITADO= ' + QuotedStr(notFLGACT()) + ','
               + '     USUARIO= ' + QuotedStr(DM1.wUsuario) + ','
               + '     FREG= sysdate, '
               + '     HREG=sysdate '
               + '  WHERE UPROID= ' + QuotedStr(DM1.cdsUsesMantUgel.fieldByName('UPROID').AsString)
               + '    AND UPAGOID= ' + QuotedStr(DM1.cdsUsesMantUgel.fieldByName('UPAGOID').AsString)
               + '    AND USEID= ' + QuotedStr(DM1.cdsUsesMantUgel.fieldByName('USEID').AsString);

            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            result := true;
         Except
            result := false;
         End;
      End
      Else
         showmessage('Selecciona si es ADD/EDIT');

End;

Procedure TFMantUgel.dblcdDirProvincia1Exit(Sender: TObject);
Begin
{
   If DM1.cdsProvin.Locate('CIUDID', VarArrayof([dblcdDirProv.Text]), []) Then
      meDirProvincia.Text := DM1.cdsProvin.FieldByName('CIUDDES').AsString
   Else
   Begin
      dblcdDirProv.Text := '';
      meDirProvincia.text := '';
   End;
   dblcdDirDistrito.Text := '';
   meDirDistrito.Text := '';
}
End;

Procedure TFMantUgel.cargarDirDistritosUGEL;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT ZIPID, ZIPDES FROM APO122 ORDER BY ZIPID';
   DM1.cdsDistMantUgel.Close;
   DM1.cdsDistMantUgel.DataRequest(xSQL);
   DM1.cdsDistMantUgel.Open;
   dblcdDirDistrito.LookupTable := DM1.cdsDistMantUgel;
   dblcdDirDistrito.LookupField := 'ZIPID';

   self.dblcdDirDistrito.Selected.Add('ZIPID'#9'8'#9'ID'#9#9);
   self.dblcdDirDistrito.Selected.Add('ZIPDES'#9'20'#9'DESCRIPCION'#9#9);
End;

Procedure TFMantUgel.cargarOfidesUGEL;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT OFDESID, OFDESNOM,DPTOID FROM APO110 WHERE DPTOID = ' + QuotedStr(dblcdDepartamento.Text) + ' ORDER BY OFDESID';
   DM1.cdsOfDes.Close;
   DM1.cdsOfDes.DataRequest(xSQL);
   DM1.cdsOfDes.Open;

   self.dblcdOfides.LookupField := '';
   self.dblcdOfides.LookupTable := DM1.cdsOfDes;
   self.dblcdOfides.LookupField := 'OFDESID';
   self.dblcdOfides.Selected.Clear;
   self.dblcdOfides.Selected.Add('OFDESID'#9'6'#9'ID'#9#9);
   self.dblcdOfides.Selected.Add('OFDESNOM'#9'30'#9'DESCRIPCION'#9#9);
End;

Procedure TFMantUgel.cargarCCostoUGEL();
Var
   xSQL: String;
Begin
   xSQL := 'SELECT CCOSID, CCOSDES FROM TGE203 ORDER BY CCOSID';
   DM1.cdsCCosto.Close;
   DM1.cdsCCosto.DataRequest(xSQL);
   DM1.cdsCCosto.Open;

   dblcdCCosto.LookupField := '';
   dblcdCCosto.LookupTable := DM1.cdsCCosto;
   dblcdCCosto.LookupField := 'CCOSID';
   dblcdCCosto.Selected.Clear;
   dblcdCCosto.Selected.Add('CCOSID'#9'10'#9'ID'#9#9);
   dblcdCCosto.Selected.Add('CCOSDES'#9'45'#9'DESCRIPCION'#9#9);
End;

Procedure TFMantUgel.filtrarOfidesUGEL(IDptoId, IProvId,
   IDistId: String);
Var
   cad: String;
Begin
   cad := 'DPTOID=' + quotedstr(dblcdDepartamento.Text);
   DM1.cdsOfDes.Filtered := false;
   DM1.cdsOfDes.Filter := cad;
   DM1.cdsOfDes.Filtered := true;
End;

Procedure TFMantUgel.cargarDepartamentos;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID ';
   // se utliza DM1.cdsPadre .. porqeu el DM1.cdsDptoMantUgel ya se esta utilizando
   DM1.cdsPadre.Close;
   DM1.cdsPadre.DataRequest(xSQL);
   DM1.cdsPadre.Open;

   dblcdDpto.Selected.Clear;
   dblcdDpto.Selected.Add('DPTOID'#9'4'#9'ID'#9#9);
   dblcdDpto.Selected.Add('DPTODES'#9'35'#9'DESCRIPCION'#9#9);

   dblcdDirDepartamento.Selected.Clear;
   dblcdDirDepartamento.Selected.Add('DPTOID'#9'4'#9'ID'#9#9);
   dblcdDirDepartamento.Selected.Add('DPTODES'#9'35'#9'DESCRIPCION'#9#9);

   dblcdDepartamento.Selected.Clear;
   dblcdDepartamento.Selected.Add('DPTOID'#9'4'#9'ID'#9#9);
   dblcdDepartamento.Selected.Add('DPTODES'#9'35'#9'DESCRIPCION'#9#9);
End;

Procedure TFMantUgel.cargarProvinciasUGEL;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT DPTOID, CIUDID, CIUDDES FROM APO123 order by CIUDID';
   // se utliza DM1.cdsHijo .. porqeu el DM1.cdsProv ya se esta utilizando
   DM1.cdsHijo.Close;
   DM1.cdsHijo.DataRequest(xSQL);
   DM1.cdsHijo.Open;

   dblcdProvincia.Selected.Clear;
   dblcdProvincia.Selected.Add('CIUDID'#9'6'#9'ID'#9#9);
   dblcdProvincia.Selected.Add('CIUDDES'#9'20'#9'DESCRIPCION'#9#9);
End;

Procedure TFMantUgel.filtrarProvinciasUGEL(IDptoId: String);
Begin
   DM1.cdsHijo.Filtered := false;
   DM1.cdsHijo.Filter := 'DPTOID=' + quotedstr(dblcdDepartamento.Text);
   DM1.cdsHijo.Filtered := true;
End;

Procedure TFMantUgel.dblcdDepartamentoChange(Sender: TObject);
Var
   xSql: String;
Begin
   If DM1.cdsPadre.Locate('DPTOID', VarArrayof([self.dblcdDepartamento.text]), []) Then
   Begin
      meDepartamento.Text := DM1.cdsPadre.FieldByName('DPTODES').AsString;

      cargarOfidesUGEL;

      xSql := 'SELECT CIUDID, CIUDDES FROM APO123 WHERE DPTOID = ' + QuotedStr(dblcdDepartamento.Text);
      DM1.cdsHijo.Close;
      DM1.cdsHijo.DataRequest(xSql);
      DM1.cdsHijo.Open;
      dblcdProvincia.Selected.Clear;
      dblcdProvincia.Selected.Add('CIUDID'#9'3'#9'Código'#9#9);
      dblcdProvincia.Selected.Add('CIUDDES'#9'30'#9'Descripción'#9#9);
   End
   Else
   Begin
      dblcdDepartamento.text := '';
      meDepartamento.text := '';
   End;
   dblcdProvincia.Text := '';
   meProvincia.Text := '';
   dblcdOfides.Text := '';
   meOfides.Text := '';
End;

Procedure TFMantUgel.dblcdDirDepartamentoChange(Sender: TObject);
Var
   xSql: String;
Begin
   If DM1.cdsPadre.Locate('DPTOID', VarArrayof([self.dblcdDirDepartamento.text]), []) Then
   Begin
      meDirDepartamento.Text := DM1.cdsPadre.FieldByName('DPTODES').AsString;

      xSql := 'SELECT CIUDID, CIUDDES FROM APO123 WHERE DPTOID = ' + QuotedStr(dblcdDirDepartamento.Text);
      DM1.cdsProvinMantUgel.Close;
      DM1.cdsProvinMantUgel.DataRequest(xSql);
      DM1.cdsProvinMantUgel.Open;
      dblcdDirProv.LookupTable:=DM1.cdsProvinMantUgel;
      dblcdDirProv.LookupField:='CIUDID';

      dblcdDirProv.Selected.Clear;
      dblcdDirProv.Selected.Add('CIUDID'#9'3'#9'Código'#9#9);
      dblcdDirProv.Selected.Add('CIUDDES'#9'30'#9'Descripción'#9#9);
   End
   Else
   Begin
      dblcdDirDepartamento.text := '';
      meDirDepartamento.text := '';
   End;
   dblcdDirProv.Text := '';
   meDirProvincia.Text := '';
   dblcdDirDistrito.Text := '';
   meDirDistrito.Text := '';
End;

Procedure TFMantUgel.dblcdDirProvChange(Sender: TObject);
Var
   xSql: String;
Begin
   If (Not DM1.cdsProvinMantUgel.IsEmpty) And DM1.cdsProvinMantUgel.Locate('CIUDID', VarArrayof([dblcdDirProv.Text]), []) Then
   Begin
      meDirProvincia.Text := DM1.cdsProvinMantUgel.FieldByName('CIUDDES').AsString;

      xSql := 'SELECT ZIPID, ZIPDES FROM APO122 WHERE CIUDID = ' + QuotedStr(dblcdDirProv.Text);
      DM1.cdsDistMantUgel.Close;
      DM1.cdsDistMantUgel.DataRequest(xSQL);
      DM1.cdsDistMantUgel.Open;

      dblcdDirDistrito.LookupTable := DM1.cdsDistMantUgel;
      dblcdDirDistrito.LookupField := 'ZIPID';
      dblcdDirDistrito.Selected.Clear;
      dblcdDirDistrito.Selected.Add('ZIPID'#9'3'#9'Código'#9#9);
      dblcdDirDistrito.Selected.Add('ZIPDES'#9'30'#9'Descripción'#9#9);
   End
   Else
   Begin
      dblcdDirProv.text := '';
      meDirProvincia.text := '';
      DM1.cdsDistMantUgel.Close;
   End;
   dblcdDirDistrito.Text := '';
   meDirDistrito.Text := '';
End;

Procedure TFMantUgel.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFMantUgel.dblcdDptoChange(Sender: TObject);
Begin
   If DM1.cdsPadre.Locate('DPTOID', VarArrayof([self.dblcdDpto.text]), []) Then
   Begin
      self.edtDpto.Text := DM1.cdsPadre.FieldByName('DPTODES').AsString;
      dblcdDirDepartamento.Text := dblcdDpto.Text;
      dblcdDepartamento.Text := dblcdDpto.Text;
   End
   Else
   Begin
      self.edtDpto.text := '';
   End;

   inicializar_1UPro();
End;

Procedure TFMantUgel.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsUsesMantUgel.Close;
   DM1.cdsUProMantUgel.Close;
   DM1.cdsUPagoMantUgel.Close;
End;

Procedure TFMantUgel.dblcdDirDistritoChange(Sender: TObject);
Begin
   If (Not DM1.cdsDistMantUgel.IsEmpty) And DM1.cdsDistMantUgel.Locate('ZIPID', VarArrayof([self.dblcdDirDistrito.text]), []) Then
   Begin
      self.meDirDistrito.Text := DM1.cdsDistMantUgel.FieldByName('ZIPDES').AsString;
   End
   Else
   Begin
      self.dblcdDirDistrito.text := '';
      self.meDirDistrito.text := '';
   End;
End;

Procedure TFMantUgel.dblcdProvinciaChange(Sender: TObject);
Var
   xSql: String;
Begin
   If (Not DM1.cdsHijo.IsEmpty) And DM1.cdsHijo.Locate('CIUDID', VarArrayof([dblcdProvincia.Text]), []) Then
   Begin
      meProvincia.Text := DM1.cdsHijo.FieldByName('CIUDDES').AsString;
   End
   Else
   Begin
      dblcdProvincia.Text := '';
      meProvincia.Text := '';
   End;
End;

Procedure TFMantUgel.dblcdOfidesChange(Sender: TObject);
Begin
   If (Not DM1.cdsOfDes.IsEmpty) And DM1.cdsOfDes.Locate('OFDESID', VarArrayof([self.dblcdOfides.text]), []) Then
   Begin
      self.meOfides.Text := DM1.cdsOfDes.FieldByName('OFDESNOM').AsString;
   End
   Else
   Begin
      self.dblcdOfides.text := '';
      self.meOfides.text := '';
   End;
End;

Procedure TFMantUgel.dblcdCCostoChange(Sender: TObject);
Begin
   If DM1.cdsCCosto.Locate('CCOSID', VarArrayof([self.dblcdCCosto.text]), []) Then
   Begin
      self.meCCosto.Text := DM1.cdsCCosto.FieldByName('CCOSDES').AsString;
   End
   Else
   Begin
      self.dblcdCCosto.text := '';
      self.meCCosto.text := '';
   End;
End;
//Fin: HPP_200920_COB

End.

