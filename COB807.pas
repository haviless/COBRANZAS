// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB807
// Formulario           : fregincpla
// Fecha de Creación    : 16/08/2011
// Autor                : irevilla.
// Objetivo             : Generar registro de inconsistencia de planilla para los casos que no fueron descargados correctamente.

// Actualizaciones      : HPC_201124_COB 16/08/2011 - Creación.
//                        Pase a Producción: El pase se realizo con el número HPP_201122_COB.
//                      : HPC_201203_COB  - FORPAGOID y FORPAGOABR se toma de la tabla  COB101
// DPP_201204_COB       : Pase a realizar a partir del HPC_201103_COB
// HPC_201208_COB       : 22/03/2012 - RMEDINA - Se hacen modificaciones en la activacion de la inconsistencia
//                        será la diferencia entre el importe cobrado y el descargado
// DPP_201206_COB       : Se realiza el pase a producción a partir del pase HPC_201208_COB

Unit COB807;
Interface
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
   fcLabel, ComCtrls;
Type
   Tfregincpla = Class(TForm)
      gbregcob: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      dbgdetregcob: TwwDBGrid;
      Label3: TLabel;
      Label4: TLabel;
      edtregcob: TMaskEdit;
      edtdetregcob: TMaskEdit;
      btnbuscar: TBitBtn;
      gbdatregcob: TGroupBox;
      gbfiltrarasociado: TGroupBox;
      edtasoapenom: TMaskEdit;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Panel1: TPanel;
      edtanomes: TEdit;
      Panel2: TPanel;
      edtrcobfope: TEdit;
      Panel3: TPanel;
      edtrcobnope: TEdit;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Panel4: TPanel;
      edtcpagocpto: TEdit;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      Label17: TLabel;
      Label18: TLabel;
      Panel5: TPanel;
      edtupronom: TEdit;
      Panel6: TPanel;
      edtupagonom: TEdit;
      btnsalir: TBitBtn;
      btnbuscarasociado: TBitBtn;
      pnlconfirmar: TPanel;
      gbinfaso: TGroupBox;
      Label19: TLabel;
      Label20: TLabel;
      Label21: TLabel;
      Label23: TLabel;
      Label22: TLabel;
      Label24: TLabel;
      edtcremtocob: TStaticText;
      edtaporte: TStaticText;
      edtfonsol: TStaticText;
      edttotal: TStaticText;
      Label25: TLabel;
      Label26: TLabel;
      Label27: TLabel;
      Label28: TLabel;
      Label29: TLabel;
      Label30: TLabel;
      edtasoapenomaceptar: TStaticText;
      edtmontodescontadoaceptar: TStaticText;
      Label31: TLabel;
      Label32: TLabel;
      btnaceptar: TBitBtn;
      btnsaliraceptar: TBitBtn;
      memavisoconfirmar: TRichEdit;
// Inicio: DPP_201206_COB
      Timer1: TTimer;
// Fin: DPP_201206_COB
//
      Procedure btnbuscarClick(Sender: TObject);
      Procedure btnbuscarasociadoClick(Sender: TObject);
      Procedure btnsalirClick(Sender: TObject);
      Procedure dbgdetregcobDblClick(Sender: TObject);
      Procedure btnsaliraceptarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure btnaceptarClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
// Inicio: DPP_201206_COB
      procedure Timer1Timer(Sender: TObject);
// Fin: DPP_201206_COB
//
   Private
    { Private declarations }
   Public
     //Inicio: DPP_201206_COB
     nmontotinconsistencia,nmontot: currency;
     //Final: DPP_201206_COB
    { Public declarations }
   End;

Var
   fregincpla: Tfregincpla;

Implementation

//Inicio: DPP_201206_COB
Uses COBDM1, DB;
//Final: DPP_201206_COB

{$R *.dfm}

Procedure Tfregincpla.btnbuscarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If Trim(edtregcob.Text) = '' Then
   Begin
      MessageDlg('Ingrese el número de registro de cobranza.', mtError, [mbOK], 0);
      edtregcob.SetFocus;
      Exit;
   End;
   If Trim(edtdetregcob.Text) = '' Then
   Begin
      MessageDlg('Ingrese detalle del número de registro de cobranza.', mtError, [mbOK], 0);
      edtdetregcob.SetFocus;
      Exit;
   End;
   xSQL := ' SELECT RCOBID, DETRCOBID, CPAGOCPTO, RCOBANO, RCOBMES, RCOBNOPE, RCOBFOPE, '
      + '        USUARIO, UPROID, UPAGOID '
      + ' FROM COB302 '
      + ' WHERE RCOBID = ' + QuotedStr(edtregcob.Text)
      + '  AND DETRCOBID = ' + QuotedStr(edtdetregcob.Text);
   DM1.cdsRegCob.Close;
   DM1.cdsRegCob.DataRequest(xSQL);
   DM1.cdsRegCob.Open;
   xSQL := ' SELECT ASOID, ASOCODMOD, ASOCODPAGO,  ASOAPENOM, TRANSMTO, TRANSAPO, TRANSCUO, '
      + '        FTRANSFC '
      + ' FROM COB304 '
      + ' WHERE RCOBID = ' + QuotedStr(edtregcob.Text)
      + '   AND DETRCOBID = ' + QuotedStr(edtdetregcob.Text)
      + ' ORDER BY ASOAPENOM';
   DM1.cdsDetRegCob.Close;
   DM1.cdsDetRegCob.DataRequest(xSQL);
   DM1.cdsDetRegCob.Open;
   dbgdetregcob.Selected.Clear;
   dbgdetregcob.Selected.Add('ASOID'#9'12'#9'Identificación~asociado'#9#9);
   dbgdetregcob.Selected.Add('ASOCODMOD'#9'12'#9'Código~modular'#9#9);
   dbgdetregcob.Selected.Add('ASOCODPAGO'#9'10'#9'Código de~pago'#9#9);
   dbgdetregcob.Selected.Add('ASOAPENOM'#9'52'#9'Apellidos y nombres'#9#9);
   dbgdetregcob.Selected.Add('TRANSAPO'#9'11'#9'Monto~aporte'#9#9);
   dbgdetregcob.Selected.Add('TRANSCUO'#9'11'#9'Monto~cuota'#9#9);
   dbgdetregcob.Selected.Add('TRANSMTO'#9'11'#9'Monto~cobrado'#9#9);
   dbgdetregcob.Selected.Add('FTRANSFC'#9'1'#9'Flag~transferido'#9#9);
   dbgdetregcob.ApplySelected;
   edtanomes.Text := DM1.cdsRegCob.FieldByName('RCOBANO').AsString + '/' + DM1.cdsRegCob.FieldByName('RCOBMES').AsString;
   edtrcobfope.Text := DM1.cdsRegCob.FieldByName('RCOBFOPE').AsString;
   edtrcobnope.Text := DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString;
   edtcpagocpto.Text := DM1.cdsRegCob.FieldByName('CPAGOCPTO').AsString;
   xSQL := ' SELECT UPRONOM '
      + ' FROM APO102 '
      + ' WHERE UPROID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('UPROID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   edtupronom.Text := DM1.cdsQry.FieldByName('UPRONOM').AsString;
   xSQL := ' SELECT UPAGONOM '
      + ' FROM APO103 '
      + ' WHERE UPROID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('UPROID').AsString)
      + '  AND UPAGOID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('UPAGOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   edtupagonom.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
End;

Procedure Tfregincpla.btnbuscarasociadoClick(Sender: TObject);
Begin
   If Not DM1.cdsDetRegCob.Active Then
   Begin
      MessageDlg('Debe de haber realizado previamente la búsqueda del Registro de Cobranza antes de dar clic al botón de filtrar.', mtError, [mbOK], 0);
      edtregcob.SetFocus;
      Exit;
   End;

   If Trim(edtasoapenom.Text) = '' Then
   Begin
      MessageDlg('Ingrese datos del asociado antes de dar clic al botón de filtrar.', mtError, [mbOK], 0);
      edtasoapenom.SetFocus;
      Exit;
   End;

   DM1.cdsDetRegCob.Filter := 'ASOAPENOM LIKE ' + QuotedStr(edtasoapenom.Text + '%');
   DM1.cdsDetRegCob.Filtered := True;

   If DM1.cdsDetRegCob.RecordCount = 0 Then
   Begin
      MessageDlg('No existe información para el dato ingresado', mtError, [mbOK], 0);
      DM1.cdsDetRegCob.Filter := '';
      DM1.cdsDetRegCob.Filtered := False;
      edtasoapenom.SetFocus;
      Exit;
   End;

   DM1.cdsDetRegCob.First;
End;

Procedure Tfregincpla.btnsalirClick(Sender: TObject);
Begin
   fregincpla.Close;
End;

Procedure Tfregincpla.dbgdetregcobDblClick(Sender: TObject);
Var
   xSQL: String;
   //Inicio: DPP_201206_COB
   //nmontot: Double;
   //Final: DPP_201206_COB
Begin
   xSQL := ' SELECT NVL(SUM(NVL(IMPORTE,0)),0) IMPORTE '
      + ' FROM COB340 '
      + ' WHERE ASOID = ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString)
      + '  AND RCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
      + '  AND DETRCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('DETRCOBID').AsString)
      + '  AND NROOPE = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString)
      + '  AND FOPERAC = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBFOPE').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('IMPORTE').AsFloat > 0 Then
   Begin
      MessageDlg('Ya existe este registro en el archivo de inconsistencias.', mtInformation, [mbOk], 0);
      Exit;
   End;
   pnlconfirmar.Visible := True;
   pnlconfirmar.Left := 176;
   pnlconfirmar.Top := 144;
   edtasoapenomaceptar.Caption := DM1.cdsDetRegCob.FieldByName('ASOAPENOM').AsString;
 //Inicio: DPP_201206_COB
 //edtmontodescontadoaceptar.Caption := DM1.cdsDetRegCob.FieldByName('TRANSMTO').AsString;
   edtmontodescontadoaceptar.Caption := DM1.cdsDetRegCob.FieldByName('TRANSCUO').AsString;
 //Final: DPP_201206_COB
   xSQL := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) CREMTOCOB '
      + ' FROM CRE310 '
      + ' WHERE ASOID = ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString)
      + '   AND RCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
      + '   AND DETRCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('DETRCOBID').AsString)
      + '   AND CREDOCPAG = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString)
      + '   AND CREFPAG = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBFOPE').AsString)
      + '   AND CREESTID NOT IN (''04'',''13'',''99'') ';
   DM1.cdsFPago.Close;
   DM1.cdsFPago.DataRequest(xSQL);
   DM1.cdsFPago.Open;
   edtcremtocob.Caption := FloatToStrF(DM1.cdsFPago.FieldByName('CREMTOCOB').AsFloat, ffNumber, 10, 2);
   xSQL := ' SELECT NVL(SUM(NVL(TRANSMTO,0)+NVL(TRANSMTODEV,0)),0) APORTE '
      + ' FROM APO301 '
      + ' WHERE ASOID = ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString)
      + '  AND RCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
      + '  AND DETRCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('DETRCOBID').AsString)
      + '  AND TRANSNOPE = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString)
      + '  AND TRANSFOPE = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBFOPE').AsString);
   DM1.cdsAportes.Close;
   DM1.cdsAportes.DataRequest(xSQL);
   DM1.cdsAportes.Open;
   edtaporte.Caption := FloatToStrF(DM1.cdsAportes.FieldByName('APORTE').AsFloat, ffNumber, 10, 2);
   xSQL := ' SELECT NVL(SUM(NVL(IMP_COB_DEU,0)),0) IMP_COB_DEU '
      + ' FROM COB_FSC_PAGOS_AL_FSC '
      + ' WHERE ASOID = ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString)
      + '  AND RCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
      + '  AND DETRCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('DETRCOBID').AsString)
      + '  AND NROOPE = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBNOPE').AsString)
      + '  AND FOPERAC = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBFOPE').AsString)
      + '  AND EST_COB_COD NOT IN (''04'',''13'',''99'')';
   DM1.cdsDevolucionCob.Close;
   DM1.cdsDevolucionCob.DataRequest(xSQL);
   DM1.cdsDevolucionCob.Open;
   edtfonsol.Caption := FloatToStrF(DM1.cdsDevolucionCob.FieldByName('IMP_COB_DEU').AsFloat, ffNumber, 10, 2);
   nmontot := DM1.cdsFPago.FieldByName('CREMTOCOB').AsFloat
      + DM1.cdsAportes.FieldByName('APORTE').AsFloat
      + DM1.cdsDevolucionCob.FieldByName('IMP_COB_DEU').AsFloat;
   edttotal.Caption := FloatToStrF(nmontot, ffNumber, 10, 2);
   memavisoconfirmar.Clear;
  //Inicio: DPP_201206_COB
   {If nmontot > 0 Then
   Begin
      memavisoconfirmar.Lines.Add('Registro descargado en el sistema.');
      memavisoconfirmar.Lines.Add('ANULAR EL REGISTRO DE ESTE ASOCIADO PARA PROCEDER.');
      btnaceptar.Enabled := False;
   End
   Else}
   nmontotinconsistencia:=DM1.cdsDetRegCob.FieldByName('TRANSCUO').AsCurrency-nmontot;
   Begin
      memavisoconfirmar.Lines.Add('IMPORTE A ACTIVAR EN INCONSISTENCIA '+CurrToStr(nmontotinconsistencia));
      memavisoconfirmar.Lines.Add('Dar clic en Aceptar');
      memavisoconfirmar.Lines.Add('Para generar el Registro de inconsistencia.');
      btnaceptar.Enabled := True;
   End;
 //Final: DPP_201206_COB
End;

Procedure Tfregincpla.btnsaliraceptarClick(Sender: TObject);
Begin
   pnlconfirmar.Visible := False;
End;

Procedure Tfregincpla.FormActivate(Sender: TObject);
Begin
   pnlconfirmar.Visible := False;
End;

Procedure Tfregincpla.btnaceptarClick(Sender: TObject);
Var
   xSQL: String;
Begin

   //Inicio: DPP_201206_COB
   If (nmontotinconsistencia<=0) or
      ((nmontotinconsistencia+nmontot)-DM1.cdsDetRegCob.FieldByName('TRANSCUO').AsCurrency<>0) Then
   Begin
      ShowMessage('EL IMPORTE A ACTIVAR ES INCONSISTENTE, VERIFIQUE');
      Exit;
   End;
   //Final: DPP_201206_COB

   If MessageDlg('¿Seguro de proceder con la generación de la inconsistencia de planilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xSQL := 'INSERT INTO COB340(ARCHIVO, ASOID, TRANSANO, TRANSMES, TMONID, IMPORTE, ASOAPENOM, '
         + '                   USUARIO, FREG, HREG,  CIAID, CREFPAG, NROOPE, FOPERAC, CREDOCPAG, '
         + '                   FORPAGID, FORPAGABR, ASOCODMOD, ASOCODAUX, UPROID, UPAGOID, USEID, '
         + '                   BANCOID, CCBCOID, DETRCOBID, USERCOBID, RCOBID, TRANSINTID, AREAID, '
         + '                   FLGFPAG, TRANOBS) '
       //INICIO: DPP_201206_COB
       //+ ' (SELECT B.ARCHIVO, A.ASOID, A.TRANSANO, A.TRANSMES, A.TMONID, A.TRANSMTO, A.ASOAPENOM,'
         + ' (SELECT B.ARCHIVO, A.ASOID, A.TRANSANO, A.TRANSMES, A.TMONID,'+CurrToStr(nmontotinconsistencia)+', A.ASOAPENOM,'
         + '         A.USUARIO, A.FREG, A.HREG, ''02'', RCOBFOPE, RCOBNOPE, RCOBFOPE, RCOBNOPE, '
         + '         D.FORPAGOID, D.FORPAGOABR, A.ASOCODMOD, C.ASOCODAUX, A.UPROID, A.UPAGOID, A.USEID, '
         + '         A.BANCOID, A.CCBCOID, A.DETRCOBID, A.USERCOBID, A.RCOBID, ''CUO'', ''COB'', '
         + '         ''PL'', ''INSERCION EN INCONSISTENCIA PARA SU APLICACION'' '
         + '  FROM COB304 A, COB303 B, APO201 C '
         + ',COB101 D '
         + '  WHERE A.RCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('RCOBID').AsString)
         + '    AND A.DETRCOBID = ' + QuotedStr(DM1.cdsRegCob.FieldByName('DETRCOBID').AsString)
         + '    AND A.ASOID = ' + QuotedStr(DM1.cdsDetRegCob.FieldByName('ASOID').AsString)
         + '    AND A.RCOBID = B.RCOBID AND A.DETRCOBID = B.DETRCOBID AND A.ASOID = C.ASOID '
         + '    AND A.FORPAGOID=D.FORPAGOABR AND D.FPLANILLA=''S'') ';
       //FINAL: DPP_201206_COB
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      MessageDlg('Inserción de inconsistencia Ok.', mtInformation, [mbOk], 0);
      pnlconfirmar.Visible := False;
   End;
End;

Procedure Tfregincpla.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      If (ActiveControl Is TCheckBox) Then
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End
      Else
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End;
End;

Procedure Tfregincpla.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsRegCob.Close;
   DM1.cdsDetRegCob.Filter := '';
   DM1.cdsDetRegCob.Filtered := False;
   DM1.cdsDetRegCob.Close;
   DM1.cdsQry.Close;
   DM1.cdsFPago.Close;
   DM1.cdsAportes.Close;
   DM1.cdsDevolucionCob.Close;
   Action := caFree;
End;

//Inicio: DPP_201206_COB
procedure Tfregincpla.Timer1Timer(Sender: TObject);
begin
 If memavisoconfirmar.Font.Color=$009BBFBA Then
    memavisoconfirmar.Font.Color:=clRed
 else
    memavisoconfirmar.Font.Color:=$009BBFBA
end;
//Final: DPP_201206_COB

End.

