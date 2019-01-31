// Inicio Uso Estándares    :	01/08/2011
// Unidad		             :	COB230.pas
// Formulario		          :	FSolConFallecidos
// Fecha de Creación	       :	21/06/2012
// Autor			             :	Juver De la Cruz
// Objetivo		             : Solicitud de confirmación de Fallecidos para aplicaciones de Cobranzas
// Actualizaciones:
// HPC_201215_COB  21/06/2012 JDCRUZ Creación del formulario FSolConFallecidos.

Unit COB235;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid,
   wwdbedit, Wwdotdot, Wwdbcomb, wwdblook;

Type
   TFSolConFallecidos = Class(TForm)
      pInferior: TPanel;
      btnAExcel: TBitBtn;
      btnCerrar: TBitBtn;
      btnPrint: TBitBtn;
      lblRegistros: TLabel;
      btnModSolicitud: TButton;
      dbgPrincipal: TwwDBGrid;
      dbgPrincipalButton: TwwIButton;
      gbx1: TGroupBox;
      lbl1: TLabel;
      rgbusca: TRadioGroup;
      edBuscar: TMaskEdit;
      btnBuscar: TBitBtn;
      cboEstado: TwwDBLookupCombo;
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure btnBuscarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dbgPrincipalDblClick(Sender: TObject);
      Procedure edBuscarKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnValidarAplicacionClick(Sender: TObject);
      Procedure btnModSolicitudClick(Sender: TObject);
      Procedure dbgPrincipalButtonClick(Sender: TObject);
      Procedure cboEstadoChange(Sender: TObject);
   Private
      xsSqlBusqueda: String;
      Procedure fn_colocar_numero_registros_grid; // para que se pueda buscar al retornar de la pantalla detalle
   Public
    { Public declarations }
   End;

Var
   FSolConFallecidos: TFSolConFallecidos;

Implementation
Uses COBDM1, COB236;
{$R *.dfm}

(******************************************************************************)

Procedure TFSolConFallecidos.FormActivate(Sender: TObject);
Var
   xsSQL: String;
Begin
   xsSQL :=
      '  SELECT EST_FALL_FDD_ID, EST_FALL_FDD_DES, ORDEN_FALL_FDD '
      + '  FROM COB_FALL_FDD_ESTADO '
      + ' WHERE EST_FALL_FDD_DES IS NOT NULL '
      + '   AND FLAG_FALL_FDD = ''FALL'' '
      + ' ORDER BY ORDEN_FALL_FDD ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   cboEstado.LookupTable := DM1.cdsQry2;
   cboEstado.LookupField := 'EST_FALL_FDD_ID';
   cboEstado.LookupValue := 'EST_FALL_FDD_ID';
   DM1.cdsQry2.First;
   //cboEstado.Value := DM1.cdsQry2.fieldbyname('EST_FALL_FDD_ID').AsString;
   cboEstado.Text := DM1.cdsQry2.fieldbyname('EST_FALL_FDD_DES').AsString;
   cboEstado.Selected.Clear;
   cboEstado.Selected.Add('EST_FALL_FDD_DES'#9'10'#9'Estado de Solicitud'#9'F');
   btnBuscarClick(btnBuscar);
End;

(******************************************************************************)

Procedure TFSolConFallecidos.btnBuscarClick(Sender: TObject);
Var
   xsWhere: String;
Begin
   If DM1.cdsQry2.Locate('EST_FALL_FDD_DES', VarArrayOf([cboEstado.Text]), []) Then
   Begin
      Screen.Cursor := crHourGlass;
      Case rgbusca.ItemIndex Of
         0:
            Begin
               xsWhere := ' WHERE DET.ASOAPENOMDNI LIKE ' + QuotedStr(trim(edBuscar.Text) + '%');
            End;
         1:
            Begin
               xsWhere := ' WHERE APO.ASOCODMOD = ' + QuotedStr(trim(edBuscar.Text));
            End;
         2:
            Begin
               xsWhere := ' WHERE DET.ASODNI = ' + QuotedStr(trim(edBuscar.Text));
            End;
      End;

      xsSqlBusqueda :=
         'SELECT DET.IDEGESFAL, DET.ASOID, DET.ASODNI, DET.ASOAPENOMDNI, DET.FECFALGES, '
         + '     DET.ESTAPRDES, DET.USUAPRDES, DET.FECAPRDES, SUBSTR(DET.SUSAPRDES,1,100) SUSAPRDES, '
         + '     DET.ESTAPRFAL, DET.USUAPRFAL, DET.FECAPRFAL, SUBSTR(DET.SUSAPRFAL,1,100) SUSAPRFAL, '
         + '     DET.ESTADO, CAB.IDEGESFAL, CAB.AREGES, CAB.NUMMEM, '
         + '     CAB.FECMEM, SUBSTR(CAB.OBSMEM,1,100) OBSMEM, CAB.USUREG, '
         + '     TRUNC(CAB.FECREG) FECREG, CAB.PVSTIPBEN, CAB.TIPCANFON, APO.ASOCODMOD, '
         + '     TBEN.BENEFDES '
         + 'FROM ASO_FAC_GES_DET DET, ASO_FAC_GES_CAB CAB, APO201 APO, '
         + '     TGE186 TBEN, COB_FALL_FDD_ESTADO EST '
         + xsWhere
         + '  AND DET.ESTADO = ''02''' //02 activo / 13 anulado
         + '  AND DET.ESTAPRFAL = EST.EST_FALL_FDD_ID '
         + '  AND EST.FLAG_FALL_FDD = ''FALL'''
         + '  AND EST.EST_FALL_FDD_ID = ' + QuotedStr(DM1.cdsQry2.FieldByName('EST_FALL_FDD_ID').AsString) // estado de aprobacion de fallecimiento
         + '  AND DET.ASOID = APO.ASOID '
         + '  AND DET.IDEGESFAL = CAB.IDEGESFAL '
         + '  AND CAB.TIPCANFON = ''FDD'' ' // DIFERENCIA A LOS FDD Y FSC
         + '  AND CAB.PVSTIPBEN IN (''02'')' // fallecidos
         + '  AND CAB.PVSTIPBEN = TBEN.TIPBENEF '
         + '  AND NVL(DET.ESTAPRDES,''POR APLICAR'') = ''POR APLICAR'''
         //+ '  AND CAB.AREGES = ''COB'' '
      + '  AND DET.USUAPRDES IS NULL ' // AUN NO SE HA APLICADO EL FDD
         + 'ORDER BY DET.ASOAPENOMDNI '; // el campo TIPCANFON es indistinto en este caso

      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xsSqlBusqueda);
      DM1.cdsQry1.Open;
      dbgPrincipal.DataSource := DM1.dsQry1;

      dbgPrincipal.Selected.Clear;
      dbgPrincipal.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9#9);
      dbgPrincipal.Selected.Add('ASOAPENOMDNI'#9'30'#9'Asociado'#9#9);
      dbgPrincipal.Selected.Add('FECFALGES'#9'12'#9'Fecha~Fallecimiento'#9#9);
      dbgPrincipal.Selected.Add('NUMMEM'#9'15'#9'N° Memo'#9#9);
      dbgPrincipal.Selected.Add('FECMEN'#9'12'#9'Fecha~Memo'#9#9);
      dbgPrincipal.Selected.Add('OBSMEM'#9'40'#9'Observacion~Memo'#9#9);
      dbgPrincipal.Selected.Add('IDEGESFAL'#9'10'#9'Solicitud'#9#9);
      dbgPrincipal.Selected.Add('USUREG'#9'12'#9'Solicitado por'#9#9);
      dbgPrincipal.Selected.Add('FECREG'#9'12'#9'Fecha~Solicitud'#9#9);
      dbgPrincipal.Selected.Add('USUAPRFAL'#9'12'#9'Usuario Confirma~Fallecimiento'#9#9);
      dbgPrincipal.Selected.Add('FECAPRFAL'#9'22'#9'Fecha~Confirmación'#9#9);
      dbgPrincipal.Selected.Add('SUSAPRFAL'#9'40'#9'Sustento~Confirmación'#9#9);
      dbgPrincipal.ApplySelected;

      fn_colocar_numero_registros_grid();
      Screen.Cursor := crDefault;
   End;
End;
(******************************************************************************)

Procedure TFSolConFallecidos.fn_colocar_numero_registros_grid();
Begin
   lblRegistros.Caption := IntToStr(DM1.cdsQry1.RecordCount) + ' Registros';
End;

(******************************************************************************)

Procedure TFSolConFallecidos.dbgPrincipalDblClick(Sender: TObject);
Begin
   If DM1.cdsQry2.Locate('EST_FALL_FDD_DES', VarArrayOf([cboEstado.Text]), []) Then
   Begin
      If DM1.cdsQry2.FieldByName('EST_FALL_FDD_ID').AsString = 'POR CONFIRMAR' Then btnModSolicitudClick(btnModSolicitud);
      If DM1.cdsQry2.FieldByName('EST_FALL_FDD_ID').AsString = 'DESESTIMADO' Then Exit;
   End;
End;

(******************************************************************************)

Procedure TFSolConFallecidos.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   Action := caFree;
End;

(******************************************************************************)

Procedure TFSolConFallecidos.edBuscarKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then btnBuscarClick(btnBuscar);
End;

(******************************************************************************)

Procedure TFSolConFallecidos.btnValidarAplicacionClick(Sender: TObject);
Begin
End;

(******************************************************************************)
//procedure TFSolConFallecidos.cboEstadoDropDown(Sender: TObject);

//Procedure TFSolConFallecidos.cboEstadoExit(Sender : TObject);

Procedure TFSolConFallecidos.cboEstadoChange(Sender: TObject);
Begin
   If cboEstado.Focused Then
   Begin
      edBuscar.Text := '';
      btnModSolicitud.Enabled := false;
      dbgPrincipalButton.Enabled := false;
      If DM1.cdsQry2.Locate('EST_FALL_FDD_DES', VarArrayOf([cboEstado.Text]), []) Then
      Begin
         If (DM1.cdsQry2.FieldByName('EST_FALL_FDD_ID').AsString = 'POR CONFIRMAR') Then
         Begin
            btnModSolicitud.Enabled := true;
            dbgPrincipalButton.Enabled := true;
         End;
      End;
      btnBuscarClick(btnBuscar);
   End;
End;
(******************************************************************************)

Procedure TFSolConFallecidos.dbgPrincipalButtonClick(Sender: TObject);
Var
   xxFrm: TFSolConFallecidosAddEdit;
Begin
   If DM1.cdsQry2.Locate('EST_FALL_FDD_DES', VarArrayOf([cboEstado.Text]), []) Then
   Begin
      If (DM1.cdsQry2.FieldByName('EST_FALL_FDD_ID').AsString = 'POR CONFIRMAR') Then
      Begin
         xxFrm := TFSolConFallecidosAddEdit.Create(self);
         Try
            xxFrm.xsTipoFrm := 'ADD';
            If xxFrm.ShowModal = mrOk Then
            Begin
               DM1.cdsQry1.Close;
               DM1.cdsQry1.DataRequest(xsSqlBusqueda);
               DM1.cdsQry1.Open;
               fn_colocar_numero_registros_grid();
            End;
         Finally
            xxFrm.Free;
         End;
      End;
   End;
End;

(******************************************************************************)

Procedure TFSolConFallecidos.btnModSolicitudClick(Sender: TObject);
Begin
   fn_colocar_numero_registros_grid();
End;
(******************************************************************************)
End.

