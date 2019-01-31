// Inicio Uso Estándares    :	01/08/2011
// Unidad		             :	COB236.pas
// Formulario		          :	FSolConFallecidosAddEdit
// Fecha de Creación	       :	21/06/2012
// Autor			             :	Juver De la Cruz
// Objetivo		             : Adición/Edición de Solicitud de confirmación de Fallecidos para aplicaciones de Cobranzas
// Actualizaciones:
// HPC_201215_COB  21/06/2012 JDCRUZ Creación del formulario FSolConFallecidos.

Unit COB236;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, Wwdbigrd,
   Wwdbgrid, DB, DBClient;

Type
   TFSolConFallecidosAddEdit = Class(TForm)
      pnl1: TPanel;
      btnGrabarAdd: TBitBtn;
      btnSalir: TBitBtn;
      gbSolicitud: TGroupBox;
      lbl1: TLabel;
      lbl2: TLabel;
      lbl3: TLabel;
      edNroMemo: TEdit;
      dtpFechaMemo: TDateTimePicker;
      edObservacion: TMemo;
      gbFallecidos: TGroupBox;
      pnl2: TPanel;
      pnl3: TPanel;
      pnl4: TPanel;
      dbgAsoSeleccionados: TwwDBGrid;
      lbl4: TLabel;
      lbl6: TLabel;
      edDNI: TEdit;
      edAsoapenomdni: TEdit;
      dtpFechaFallecimiento: TDateTimePicker;
      btnBuscarAsociado: TButton;
      btnAgregar: TButton;
      edAsoid: TEdit;
      cdsAsoSeleccionados: TClientDataSet;
      dsAsoSeleccionados: TDataSource;
      cdsAsoSeleccionadosASOID: TStringField;
      cdsAsoSeleccionadosASODNI: TStringField;
      cdsAsoSeleccionadosASOAPENOMDNI: TStringField;
      cdsAsoSeleccionadosFECFALGES: TDateField;
      btnRetirar: TButton;
      lblMaxCaracteres: TLabel;
      cdsAsoSeleccionadosASOTIPID: TStringField;
      edAsotipid: TEdit;
      lbl5: TLabel;
      Procedure btnSalirClick(Sender: TObject);
      Procedure btnGrabarAddClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure btnBuscarAsociadoClick(Sender: TObject);
      Procedure btnAgregarClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure btnRetirarClick(Sender: TObject);
      Procedure edObservacionExit(Sender: TObject);
      Procedure edObservacionKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
      Function fn_validar_max_caract(wgMemo: TMemo): boolean;
   Public
      xsTipoFrm: String;
   End;

Var
   FSolConFallecidosAddEdit: TFSolConFallecidosAddEdit;

Implementation
Uses COBDM1, COB902;
{$R *.dfm}

(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.btnSalirClick(Sender: TObject);
Begin
   ModalResult := mrCancel;
End;

(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.FormShow(Sender: TObject);
Var
   xsSQL: String;
Begin
   dtpFechaFallecimiento.Date := DM1.FechaSys;
   btnGrabarAdd.Visible := False;
   btnAgregar.Enabled := False;
   If xsTipoFrm = 'ADD' Then
   Begin
      edNroMemo.Text := '';
      edObservacion.Lines.Clear;
      dtpFechaMemo.Date := DM1.FechaSys;
      btnGrabarAdd.Visible := true;
      cdsAsoSeleccionados.CreateDataSet;
      dbgAsoSeleccionados.Selected.Clear;
      dbgAsoSeleccionados.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9#9);
      dbgAsoSeleccionados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Asociado'#9#9);
      dbgAsoSeleccionados.Selected.Add('ASOTIPID'#9'5'#9'Tipo~Asociado'#9#9);
      dbgAsoSeleccionados.Selected.Add('FECFALGES'#9'12'#9'Fecha~Ocurrencia'#9#9);
      dbgAsoSeleccionados.ApplySelected;
   End;
   edNroMemo.SetFocus();

   (*
   If xsTipoFrm = 'EDIT' Then
   Begin
      edNroMemo.Text := DM1.cdsQry1.fieldbyname('NUMMEM').AsString;
      edObservacion.Lines.Clear;
      edObservacion.Text := DM1.cdsQry1.fieldbyname('OBSMEM').AsString;
      dtpFechaMemo.Date := DM1.cdsQry1.fieldbyname('FECMEM').AsString;
   End;
   *)
End;
(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.btnGrabarAddClick(Sender: TObject);
Var
   xsSQL: String;
Begin
   If trim(edNroMemo.Text) = '' Then
   Begin
      edNroMemo.SetFocus;
      MessageDlg('Ingrese el numero de memo', mtInformation, [mbOK], 0);
      exit;
   End;

   If (FormatDateTime('yyyymmdd', dtpFechaMemo.Date) > FormatDateTime('yyyymmdd', DM1.FechaSys)) Then
   Begin
      dtpFechaMemo.SetFocus;
      MessageDlg('La fecha del Memo no puede ser mayor que hoy', mtInformation, [mbOK], 0);
      exit;
   End;

   If Not fn_validar_max_caract(edObservacion) Then exit;

   If cdsAsoSeleccionados.RecordCount <= 0 Then
   Begin
      MessageDlg('Seleccione por lo menos un asociado', mtInformation, [mbOK], 0);
      exit;
   End;

   // grabar cabecera
   xsSQL :=
      '  DECLARE '
      + '   XSIDEGESFAL VARCHAR2(6); '
      + 'BEGIN '
      + '   SELECT LPAD(NVL(MAX(IDEGESFAL), 0) + 1, 6, 0) '
      + '     INTO XSIDEGESFAL '
      + '     FROM ASO_FAC_GES_CAB; '
      + 'INSERT INTO ASO_FAC_GES_CAB '
      + '      (IDEGESFAL, AREGES, NUMMEM, FECMEM, OBSMEM, USUREG, FECREG, PVSTIPBEN, TIPCANFON) '
      + '   VALUES '
      + '      (XSIDEGESFAL, ''COB'', ' + QuotedStr(edNroMemo.Text) + ', '
      + QuotedStr(DateToStr(dtpFechaMemo.Date)) + ', ' + QuotedStr(UpperCase(edObservacion.Text)) + ', '
      + QuotedStr(DM1.wUsuario) + ', SYSDATE, ''02'', ''FDD''); '
      + '   COMMIT; '
      + 'END;';
   DM1.DCOM1.AppServer.EjecutaSql(xsSql);

   xsSQL := 'SELECT MAX(IDEGESFAL) IDEGESFAL FROM ASO_FAC_GES_CAB WHERE USUREG  =' + QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;

   // grabar detalle - for
   cdsAsoSeleccionados.first;
   While Not cdsAsoSeleccionados.eof Do
   Begin
      xsSQL :=
         ' INSERT INTO ASO_FAC_GES_DET '
         + '   (IDEGESFAL, ASOID, ASODNI, ASOAPENOMDNI, FECFALGES, ESTAPRFAL, ESTADO, ASOTIPID) '
         + ' VALUES '
         + '   (' + QuotedStr(DM1.cdsQry.fieldbyname('IDEGESFAL').AsString) + ', '
                  + QuotedStr(cdsAsoSeleccionados.fieldbyname('ASOID').asstring) + ', '
                  + QuotedStr(cdsAsoSeleccionados.fieldbyname('ASODNI').asstring) + ', '
                  + QuotedStr(cdsAsoSeleccionados.fieldbyname('ASOAPENOMDNI').asstring) + ', '
                  + QuotedStr(cdsAsoSeleccionados.fieldbyname('FECFALGES').asstring) + ', '
                  + ' ''POR CONFIRMAR'', ''02'', '
                  + QuotedStr(cdsAsoSeleccionados.fieldbyname('ASOTIPID').asstring) + ')';
      DM1.DCOM1.AppServer.EjecutaSql(xsSql);
      cdsAsoSeleccionados.Next;
   End;
   cdsAsoSeleccionados.first;
   MessageDlg('La solicitud fue grabada!', mtInformation, [mbOK], 0);
   ModalResult := mrOk;
End;

(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.btnBuscarAsociadoClick(
   Sender: TObject);
var
   xSQL : String;
Begin
   DM1.xSgr := 'COB919A'; // PARA ESTOS CASOS FUNCIONA JUSTO COMO SE NECESITA
   fSeleccion := TfSeleccion.create(self);
   Try
      fSeleccion.Showmodal;
      btnAgregar.Enabled := False;
   // Busca que el Asociado no esté como Fallecido
      if DM1.cdsAso.fieldbyname('FALLECIDO').AsString='S' then
      begin
         ShowMessage('El Asociado ya está definido como Fallecido');
         exit;
      end;

   // Busca que el Asociado no esté en otra lista POR CONFIRMAR
      xSQL := 'select NUMMEM, FECMEM '
             +'  from ASO_FAC_GES_CAB '
             +' where IDEGESFAL in (select IDEGESFAL '
             +'                       from ASO_FAC_GES_DET '
             +'                      where ASOID='+quotedstr(DM1.cdsAso.fieldbyname('ASOID').AsString)
             +'         and ESTAPRFAL=''POR CONFIRMAR'') ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      if DM1.cdsQry.Recordcount>0 then
      begin
         ShowMessage('El Asociado está registrado en la Lista del Memorándum '+DM1.cdsQry.FieldByName('NUMMEM').AsString+chr(13)
                    +'Registrada el día '+datetostr(DM1.cdsQry.FieldByName('FECMEM').AsDateTime));
         exit;
      end;

      btnAgregar.Enabled := True;
      edAsoid.Text := DM1.cdsAso.fieldbyname('ASOID').AsString;
      edDNI.Text := DM1.cdsAso.fieldbyname('ASODNI').AsString;
      edAsoapenomdni.Text := DM1.cdsAso.fieldbyname('ASOAPENOMDNI').AsString;
      edAsotipid.Text := DM1.cdsAso.fieldbyname('ASOTIPID').AsString;
   Finally
      fSeleccion.free;
   End;
End;
(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.btnAgregarClick(Sender: TObject);

Procedure fn_limpiar_detalle();
   Begin
      edAsoid.Text := '';
      edDNI.Text := '';
      edAsoapenomdni.Text := '';
      edAsotipid.Text := '';
   End;
Begin
   If trim(edDNI.Text) = '' Then
   Begin
      MessageDlg('Seleccione un Asociado', mtInformation, [mbOK], 0);
      exit;
   End;

   If (FormatDateTime('yyyymmdd', dtpFechaFallecimiento.Date) > FormatDateTime('yyyymmdd', DM1.FechaSys)) Then
   Begin
      MessageDlg('La fecha de fallecimiento no puede ser mayor que hoy', mtInformation, [mbOK], 0);
      exit;
   End;

   If cdsAsoSeleccionados.Locate('ASOID', VarArrayOf([edAsoid.Text]), []) Then
   Begin
      MessageDlg('El Asocido "' + edAsoapenomdni.Text + '" ya esta en la lista', mtInformation, [mbOK], 0);
      fn_limpiar_detalle();
      exit;
   End;

   cdsAsoSeleccionados.Append;
   cdsAsoSeleccionados.FieldByName('ASOID').Value := edAsoid.Text;
   cdsAsoSeleccionados.FieldByName('ASODNI').Value := edDNI.Text;
   cdsAsoSeleccionados.FieldByName('ASOAPENOMDNI').Value := edAsoapenomdni.Text;
   cdsAsoSeleccionados.FieldByName('FECFALGES').Value := dtpFechaFallecimiento.Date;
   cdsAsoSeleccionados.FieldByName('ASOTIPID').Value := edAsotipid.text;
   cdsAsoSeleccionados.Post;
   fn_limpiar_detalle();
End;

(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.btnRetirarClick(Sender: TObject);
Begin
   If cdsAsoSeleccionados.RecordCount > 0 Then
      cdsAsoSeleccionados.Delete;
End;
(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   cdsAsoSeleccionados.Close;
   Action := caFree;
End;

(******************************************************************************)

Function TFSolConFallecidosAddEdit.fn_validar_max_caract(wgMemo: TMemo): boolean;
Begin
   lblMaxCaracteres.Caption := inttostr(length(wgMemo.Text)) + ' de ' + IntToStr(wgMemo.MaxLength) + ' caracteres';
   If (length(wgMemo.Text) > wgMemo.MaxLength) Then
   Begin
      MessageDlg('No debe de exceder el máximo de ' + IntToStr(wgMemo.MaxLength) + ' caracteres para la observación!', mtInformation, [mbOK], 0);
      result := false;
   End
   Else
      result := true;
End;
(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.edObservacionExit(Sender: TObject);
Begin
   fn_validar_max_caract(edObservacion);
End;

(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.edObservacionKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   fn_validar_max_caract(edObservacion);
End;

(******************************************************************************)

Procedure TFSolConFallecidosAddEdit.FormKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End
End;
(******************************************************************************)
End.

