// Inicio Uso Estándares    :	01/08/2011
// Unidad		             :	COB231.pas
// Formulario		          :	FConfirmarEstadoFallecidoDetalle
// Fecha de Creación	       :	21/06/2012
// Autor			             :	Juver De la Cruz
// Objetivo		             : opcion de aprobacion de fallecidos para el fondo de desgravamen
// Actualizaciones:
// HPC_201215_COB  21/06/2012 JDCRUZ Creación del formulario FSolApliFDDetalle.
// HPC_201711_COB  29/05/2017 Implementación del botón de Reversión
Unit COB231;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons;

Type
   TFSolApliFDDetalle = Class(TForm)
      edDNI: TDBEdit;
      edAsociado: TDBEdit;
      edFechaOcurrencia: TDBEdit;
      edSolicitadoPor: TDBEdit;
      edFechaSolicitud: TDBEdit;
      edObservacion: TDBMemo;
      lbl1: TLabel;
      lbl2: TLabel;
      lbl3: TLabel;
      lbl4: TLabel;
      lbl5: TLabel;
      lbl6: TLabel;
      lblTituloCabecera: TLabel;
      btnConfirmar: TButton;
      btnRechazar: TButton;
      Bevel1: TBevel;
      edSustento: TMemo;
      lbl8: TLabel;
      BitSalir: TBitBtn;
      lblMaxCaracteres: TLabel;
      lbl9: TLabel;
      edOcurrencia: TDBEdit;
//Inicio HPC_201711_COB
//Implementación del botón de Reversión
    btnRevierte: TButton;
//Final HPC_201711_COB
      Procedure FormCreate(Sender: TObject);
      Procedure btnConfirmarClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure btnRechazarClick(Sender: TObject);
      Procedure edSustentoKeyPress(Sender: TObject; Var Key: Char);
      Procedure edSustentoExit(Sender: TObject);
      Procedure FormShow(Sender: TObject);
//Inicio HPC_201711_COB
//Implementación del botón de Reversión
    procedure btnRevierteClick(Sender: TObject);
//Final HPC_201711_COB
   Private
      Function fn_validar_max_caract_sustento: boolean;
      Function fn_is_aplica_fdd: boolean;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FSolApliFDDetalle: TFSolApliFDDetalle;

Implementation

Uses COBDM1;

{$R *.dfm}
(******************************************************************************)

Procedure TFSolApliFDDetalle.FormCreate(Sender: TObject);
Begin
   Screen.Cursor := crHourGlass;
   edDNI.DataSource := DM1.dsQry1;
   edDNI.DataField := 'ASODNI';
   edAsociado.DataSource := DM1.dsQry1;
   edAsociado.DataField := 'ASOAPENOMDNI';
   edOcurrencia.DataSource := DM1.dsQry1;
   edOcurrencia.DataField := 'BENEFDES';
   edFechaOcurrencia.DataSource := DM1.dsQry1;
   edFechaOcurrencia.DataField := 'FECFALGES';
   edSolicitadoPor.DataSource := DM1.dsQry1;
   edSolicitadoPor.DataField := 'USUREG';
   edFechaSolicitud.DataSource := DM1.dsQry1;
   edFechaSolicitud.DataField := 'FECREG';
   edObservacion.DataSource := DM1.dsQry1;
   edObservacion.DataField := 'OBSMEM';
   edSustento.Lines.Clear;
   lblMaxCaracteres.Caption := '0 de ' + IntToStr(edSustento.MaxLength) + ' caracteres';
   If fn_is_aplica_fdd() Then
   Begin
      lblTituloCabecera.Caption := 'SI CALIFICA PARA EL FDD';
//Inicio HPC_201711_COB
//Se implementa la reversión del diferimiento
      btnRevierte.Visible:=False;
//Final HPC_201711_COB
      lblTituloCabecera.Font.Color := clBlue;
      btnConfirmar.enabled := True;
      btnRechazar.enabled := False;
   End
   Else
   Begin
      lblTituloCabecera.Caption := 'NO CALIFICA PARA EL FDD';
//Inicio HPC_201711_COB
//Se implementa la reversión del diferimiento
      If DM1.cdsQry.FieldByName('DIF').AsString='D' Then
           btnRevierte.Visible:=True
      Else btnRevierte.Visible:=False;
//Final HPC_201711_COB
      lblTituloCabecera.Font.Color := clRed;
      btnConfirmar.enabled := False;
      btnRechazar.enabled := True;
   End;
   fn_validar_max_caract_sustento();
   Screen.Cursor := crDefault;
End;
(******************************************************************************)

Procedure TFSolApliFDDetalle.FormShow(Sender: TObject);
Begin
   edSustento.SetFocus;
End;

(******************************************************************************)

Function TFSolApliFDDetalle.fn_is_aplica_fdd(): boolean;
Var
   xsSQL: String;
Begin
   xsSQL := 'BEGIN SP_COB_FDD_RES_CAL(' + QuotedStr(DM1.cdsQry1.fieldbyname('ASOID').asstring) + ',' + QuotedStr(DM1.cdsQry1.fieldbyname('IDEGESFAL').asstring) + '); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSSQL);
   xsSQL :=
      'SELECT ASOID, CALIFICA, OBSERVACION'
//Inicio HPC_201711_COB
//Se implementa la reversión del diferimiento
      +',CASE WHEN TRIM(OBSERVACION) LIKE ''%(NR)%'' THEN ''NR'' ELSE NULL END  REV'
      +',CASE WHEN TRIM(OBSERVACION) LIKE ''%(D)%''  THEN ''D''  ELSE NULL END  DIF '
//Final HPC_201711_COB
      + ' FROM COB_FDD_RES_CAL '
      + ' WHERE ASOID = ' + QuotedStr(DM1.cdsQry1.fieldbyname('ASOID').asstring);

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 1 Then
   Begin
      edSustento.Lines.Add(DM1.cdsQry.fieldbyname('OBSERVACION').asstring);
      result := (DM1.cdsQry.fieldbyname('CALIFICA').asstring = 'S');
   End
   Else
   Begin
      result := false;
   End;
End;
(******************************************************************************)

Procedure TFSolApliFDDetalle.btnConfirmarClick(
   Sender: TObject);
Var
   xsSql: String;
Begin
   If trim(edSustento.Text) = '' Then
   Begin
      MessageDlg('Ingrese el sustento (Maximo 1000 caracteres)', mtInformation, [mbOK], 0);
      exit;
   End;
   If Not fn_validar_max_caract_sustento() Then exit;
   If (MessageDlg('SE VAN A CANCELAR TODOS LOS CRÉDITOS CON FONDO DE DESGRAVAMEN DEL ASOCIADO; APLICANDO EL FONDO DE DESGRAVAMEN!' + Chr(13) + 'Estos cambios no se podran revertir!' + chr(13) + chr(13) + 'Confirma que desea aplicar el Fondo de Desgravamen para el asociado : "' + edAsociado.Text + '"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) Then
   Begin
      Try
         // LOS PROCEDURE YA INVOCAN AL COMMIT, ES POR ESO QUE NO SE APLICO TRANSACCIONES
         xsSQL :=
            '   DECLARE '
            + '    XSCORRELATIVO VARCHAR2(10); '
            + ' BEGIN '
            + '    XSCORRELATIVO ::= FC_COB_FDD_GET_CORRELATIVO; '
            + '    SP_COB_FDD_APLICAR(XSCORRELATIVO, ' + QuotedStr(DM1.wUsuario) + ',' + QuotedStr(DM1.cdsQry1.fieldbyname('ASOID').asstring) + ',' + QuotedStr(DM1.cdsQry1.fieldbyname('IDEGESFAL').asstring) + ',' + QuotedStr(DM1.xOfiDes) + ',' + QuotedStr(edSustento.Text) + '); '
            + '    UPDATE ASO_FAC_GES_DET '
            + '       SET ESTAPRDES = ''APLICADO'' '
            + '          ,USUAPRDES = ' + QuotedStr(DM1.wUsuario)
            + '          ,FECAPRDES = SYSDATE '
            + '          ,SUSAPRDES = ' + QuotedStr(UpperCase(Trim(edSustento.Text)))
            + '          ,CORRELATIVO = XSCORRELATIVO '
            + '     WHERE IDEGESFAL = ' + QuotedStr(DM1.cdsQry1.fieldbyname('IDEGESFAL').AsString)
            + '       AND ASOID = ' + QuotedStr(DM1.cdsQry1.fieldbyname('ASOID').AsString) + ';'
            + '    COMMIT; '
            + ' END;';
         DM1.DCOM1.AppServer.EjecutaSQL(xSSQL);
         ModalResult := mrOk;
      Except
         MessageDlg('Ocurrio un error al intentar aplicar el FDD, Comuniquese con Sistemas', mtWarning, [mbOK], 0);
      End;
   End;
End;
(******************************************************************************)

Procedure TFSolApliFDDetalle.BitSalirClick(Sender: TObject);
Begin
   ModalResult := mrCancel;
End;
(******************************************************************************)

Procedure TFSolApliFDDetalle.btnRechazarClick(
   Sender: TObject);
Var
   xsSql: String;
Begin
   If trim(edSustento.Text) = '' Then
   Begin
      MessageDlg('Ingrese el sustento (Maximo 1000 caracteres)', mtInformation, [mbOK], 0);
      exit;
   End;
   If Not fn_validar_max_caract_sustento() Then exit;
   If (MessageDlg('Estos cambios no se podran revertir!' + chr(13) + chr(13) + 'Confirma que el asociado "' + edAsociado.Text + '", "NO APLICA PARA EL FONDO DE DESGRAVAMEN"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) Then
   Begin
      xsSql :=
         'UPDATE ASO_FAC_GES_DET '
         + ' SET ESTAPRDES = ''NO APLICA'' '
         + '    ,USUAPRDES = ' + QuotedStr(DM1.wUsuario)
         + '    ,FECAPRDES = SYSDATE '
         + '    ,SUSAPRDES = ' + QuotedStr(Trim(edSustento.Text))
         + 'WHERE IDEGESFAL = ' + QuotedStr(DM1.cdsQry1.fieldbyname('IDEGESFAL').AsString)
         + '  AND ASOID = ' + QuotedStr(DM1.cdsQry1.fieldbyname('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xsSql);
      ModalResult := mrOk;
   End;
End;
(******************************************************************************)

Procedure TFSolApliFDDetalle.edSustentoKeyPress(
   Sender: TObject; Var Key: Char);
Begin
   If (length(edSustento.Text) <= edSustento.MaxLength) Then
      lblMaxCaracteres.Caption := inttostr(length(edSustento.Text)) + ' de ' + IntToStr(edSustento.MaxLength) + ' caracteres'
   Else
      Key := #0;
End;
(******************************************************************************)

Function TFSolApliFDDetalle.fn_validar_max_caract_sustento(): boolean;
Begin
   lblMaxCaracteres.Caption := inttostr(length(edSustento.Text)) + ' de ' + IntToStr(edSustento.MaxLength) + ' caracteres';
   If (length(edSustento.Text) > edSustento.MaxLength) Then
   Begin
      MessageDlg('No debe de exceder el máximo de ' + IntToStr(edSustento.MaxLength) + ' caracteres en el sustento!', mtInformation, [mbOK], 0);
      result := false;
   End
   Else
      result := true;
End;
(******************************************************************************)

Procedure TFSolApliFDDetalle.edSustentoExit(
   Sender: TObject);
Begin
   fn_validar_max_caract_sustento();
End;
(******************************************************************************)

//Inicio HPC_201711_COB
//Implementación del botón de Reversión
procedure TFSolApliFDDetalle.btnRevierteClick(Sender: TObject);
var xmensaje,xsql:String;
    Boton :Integer;
begin
 If  Dm1.cdsQry.FieldByName('REV').AsString='NR' Then
      xMensaje := 'NO CUMPLE LAS CONDICIONES PARA REVERTI EL DIFERIMIENTO' + Chr(13) +'¡Está seguro(a) de Revertir los Diferimientos!'
 Else xMensaje := 'Está segur(o)a de Revertir los Diferidos';

 Boton := Application.MessageBox(pChar(xMensaje),'Reversión de Diferidos', MB_YESNO or MB_DEFBUTTON2);
 If Boton = ID_NO Then
 Begin
   Exit;
 End;

  xSql :='Select asoid,credid From cre301 where Asoid='+QuotedStr(DM1.cdsQry1.fieldbyname('ASOID').AsString)
        +'And Creestid=''02'' And  Tasfondes>0 ';
  Dm1.cdsQry11.Close;
  Dm1.cdsQry11.DataRequest(xSql);
  Dm1.cdsQry11.Open;
  If Dm1.cdsQry11.RecordCount>0 Then
  Begin
    While not Dm1.cdsQry11.Eof Do
    Begin
      xSQL := ' BEGIN '
            + ' SP_COB_REV_DIF_X_CRED('
            + QuotedStr(DM1.cdsQry11.fieldbyname('ASOID').AsString) + ','
            + QuotedStr(DM1.cdsQry11.fieldbyname('CREDID').AsString) + ');'
            + ' END;';
      Try
           DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       Except
          ShowMessage('Error en LA REVERSIÓN de DIFERIDOS');
          exit;
       End;
      Dm1.cdsQry11.Next;
    End;
       ShowMessage('Reversión exitosa');
       btnRevierte.Visible := False;

  End;

end;
//Final HPC_201711_COB

End.

