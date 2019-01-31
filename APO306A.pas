Unit APO306A;
// HPP_200904_COB
// FORMULARIO CREADO PARA REALIZAR DESCARGO DE PLANILLAS EN DIFERIDO
// 09/02/2009  SAR2009JC-0072  DAD-RM-2009-00023

// HPP_200907_COB - por RMEDINA
// modificado para mostrar por filtros, columna adicional de hora de registro

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdbspin, Mask, Wwdbdlg,
   StdCtrls, ExtCtrls, wwdblook, fcButton, fcImgBtn, fcShapeBtn, DB,
   wwdbdatetimepicker; // HPP_200907_COB - por RMEDINA

Type
   TFSecProgDescPlanilla = Class(TForm)
      gbfiltra: TGroupBox;
      gbProgramacion: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      dblUproceso: TwwDBLookupCombo;
      Panel1: TPanel;
      Edit2: TEdit;
      dblUPago: TwwDBLookupCombo;
      Panel2: TPanel;
      Edit3: TEdit;
      dblcdusureg: TwwDBLookupComboDlg;
      pnlusureg: TPanel;
      meusureg: TMaskEdit;
      Panel3: TPanel;
      perano: TwwDBSpinEdit;
      permes: TwwDBSpinEdit;
      dbgProgramacion: TwwDBGrid;
      fcSFiltra: TfcShapeBtn;
      Shape1: TShape;
      Label5: TLabel;
      Shape2: TShape;
      Label6: TLabel;
      Shape4: TShape;
      Label8: TLabel;
      Shape6: TShape;
      Label10: TLabel;
      fcSAnula: TfcShapeBtn;
      pnlanulacion: TPanel;
      edtanulacion: TEdit;
      Shape7: TShape;
      Label11: TLabel;
      Button1: TButton;
      fcShapeBtn1: TfcShapeBtn;
      Panel4: TPanel;
      EDTRCOBNOPE: TEdit;
      EDTRCOBFOPE: TEdit;
      EDTUPROID: TEdit;
      EDTUPAGOID: TEdit;
      EDTUSEID: TEdit;
      Label7: TLabel;                    //HPP_200907_COB
      dbtFRegistro: TwwDBDateTimePicker; //HPP_200907_COB
      rdbTodos: TRadioButton;            //HPP_200907_COB
      rdbProcesados: TRadioButton;       //HPP_200907_COB
      rdbEnProceso: TRadioButton;        //HPP_200907_COB
      rdbNoProcesados: TRadioButton;     //HPP_200907_COB
      rdbAnulados: TRadioButton;         //HPP_200907_COB
      Procedure FormActivate(Sender: TObject);
      Procedure dblUprocesoChange(Sender: TObject);
      Procedure dblUPagoChange(Sender: TObject);
      Procedure dblcdusuregChange(Sender: TObject);
      Procedure fcSFiltraClick(Sender: TObject);
      Procedure permesExit(Sender: TObject);
      Procedure dbgProgramacionDrawDataCell(Sender: TObject;
         Const Rect: TRect; Field: TField; State: TGridDrawState);
      Procedure fcSAnulaClick(Sender: TObject);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FSecProgDescPlanilla: TFSecProgDescPlanilla;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFSecProgDescPlanilla.FormActivate(Sender: TObject);

Var
   xsql: String;
Begin

   xsql := 'SELECT TO_CHAR(SYSDATE,''YYYY'') SANO,TO_CHAR(SYSDATE,''MM'') SMES FROM DUAL ';
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(xsql);
   dm1.cdsQry.Open;
   perano.Text := dm1.cdsQry.fieldbyname('sano').AsString;
   permes.Text := dm1.cdsQry.fieldbyname('smes').AsString;

  //Combo de Unidad de Proceso
   xsql := 'SELECT UPROID,UPRONOM FROM APO102';
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(XSQL);
   dm1.cdsQry.Open;
   dblUproceso.LookupTable := dm1.cdsQry;
   dblUproceso.LookupField := 'UPROID';

   xSql := 'SELECT USERID, UPPER(USERNOM) USERNOM FROM USERTABLE WHERE AREA = ''COB''';
   DM1.cdsUser.Close;
   DM1.cdsUser.DataRequest(xSql);
   DM1.cdsUser.Open;
   dblcdusureg.LookupTable := DM1.cdsUser;
   dblcdusureg.LookupField := 'USERID';
   dblcdusureg.Selected.Clear;
   dblcdusureg.Selected.Add('USERID'#9'15'#9'Código'#9#9);
   dblcdusureg.Selected.Add('USERNOM'#9'30'#9'Descripción'#9#9);

   dbgProgramacion.Selected.Add('FLG'#9'3'#9'Est');

   dbgProgramacion.Selected.Add('Periodo'#9'6'#9'Perio.');
   dbgProgramacion.Selected.Add('Turno'#9'6'#9'Turno');
   dbgProgramacion.Selected.Add('Numreg'#9'4'#9'Reg.');
   dbgProgramacion.Selected.Add('Uproid'#9'3'#9'U.Pro');
   dbgProgramacion.Selected.Add('Upagoid'#9'3'#9'U.Pag');
   dbgProgramacion.Selected.Add('Useid'#9'2'#9'Uge');
   dbgProgramacion.Selected.Add('Rcobnope'#9'9'#9'N.Ope.');
   dbgProgramacion.Selected.Add('Rcobfope'#9'10'#9'F.Ope.');
   dbgProgramacion.Selected.Add('Asotipid'#9'02'#9'A.tip');
   dbgProgramacion.Selected.Add('Tipo'#9'8'#9'Descargo');
   dbgProgramacion.Selected.Add('Usuario'#9'8'#9'Usuario');

   //HPP_200907_COB por RMEDINA - //SAR 2009-271 -  DAD RM2009-043
   dbgProgramacion.Selected.Add('hreg'#9'20'#9'F.Reg.');

   dbgProgramacion.Selected.Add('Inipro'#9'20'#9'F.Ini.Pro.');
   dbgProgramacion.Selected.Add('Finpro'#9'20'#9'F.Fin.Pro.');
   dbgProgramacion.DataSource := dm1.dsQry2;

End;

Procedure TFSecProgDescPlanilla.dblUprocesoChange(Sender: TObject);
Var
   xsql: String;
Begin

  //Edit2.Text := dm1.cdsQry.fieldbyname('UPRONOM').AsString;
   If DM1.cdsQry.Locate('UPROID', VarArrayof([dblUproceso.Text]), []) Then
   Begin
      Edit2.Text := DM1.cdsQry.FieldByName('UPRONOM').Asstring;
   End
   Else
   Begin
      If Length(dblUproceso.Text) <> 2 Then
      Begin
         Edit2.Text := '';
      End;
   End;

  //Combo de Unidad de Pago
   xsql := 'SELECT UPAGOID,UPAGONOM '
          +'FROM APO103 '
          +'WHERE UPROID=''' + DM1.cdsQry.FieldByName('UPROID').Asstring + ''' ';
   dm1.cdsQry1.Close;
   dm1.cdsQry1.DataRequest(XSQL);
   dm1.cdsQry1.Open;
   dblUPago.LookupTable := dm1.cdsQry1;
   dblUPago.LookupField := 'UPAGOID';
   Edit3.Text := '';

End;

Procedure TFSecProgDescPlanilla.dblUPagoChange(Sender: TObject);
Begin
   EDIT3.Text := dm1.cdsQry1.fieldbyname('UPAGONOM').AsString;
End;

Procedure TFSecProgDescPlanilla.dblcdusuregChange(Sender: TObject);
Begin
   If Trim(dblcdusureg.Text) = '' Then
   Begin
      dblcdusureg.Text := '';
      meusureg.Text := '';
   End;

   If DM1.cdsUser.Locate('USERID', dblcdusureg.Text, []) Then
      meusureg.Text := DM1.cdsUser.FieldByName('USERNOM').AsString

End;

Procedure TFSecProgDescPlanilla.fcSFiltraClick(Sender: TObject);
Var
   xwhere, xsql: String;

Begin

   permes.Text := DM1.StrZero(permes.Text, 2);

   If Length(trim(dblUproceso.Text)) > 0 Then
      xWhere := xWhere + ' AND UPROID=''' + dblUproceso.Text + ''' ';

   If Length(trim(dblUPago.Text)) > 0 Then
      xWhere := xWhere + ' AND UPAGOID=''' + dblUPago.Text + ''' ';

   If Length(trim(dblcdusureg.Text)) > 0 Then xWhere :=
      xWhere + ' AND USUARIO=''' + dblcdusureg.Text + ''' ';

   // Inicio: HPP_200907_COB - por RMEDINA - SAR 2009-271 -  DAD RM2009-043
   If Length(trim(dbtFRegistro.Text)) > 0 Then
      xWhere := XWhere + ' AND FREG=''' + dbtFRegistro.Text + ''' ';

   If rdbProcesados.Checked Then
      xWhere := XWhere + ' AND FLGPRO IS NOT NULL ';

   If rdbNoProcesados.Checked Then
      xWhere := XWhere + ' AND FLGPRO IS NULL  AND INIPRO IS NULL ';

   If rdbEnProceso.Checked Then
      xWhere := XWhere + ' AND INIPRO IS NOT NULL AND FINPRO IS NULL';

   If rdbAnulados.Checked Then
      xWhere := XWhere + ' AND FLGANU IS NOT NULL ';
   // Fin: HPP_200907_COB

   xSQL := 'SELECT '' ''FLG,CASE WHEN Turno=''N'' Then ''Noche'' ELSE ''Tarde'' END Turno, '
          +'       Numreg, PERIODO, UPROID, UPAGOID, USEID, RCOBNOPE, RCOBFOPE, ASOTIPID, TIPO, '
          +'       USUARIO, HREG, INIPRO, FINPRO, FLGPRO, to_date(sysdate) FECACT, RCOBID, DETRCOBID, '
          +'       USERCOBID, FLGANU, FECANU, USUANU, OBSANU '
          +'FROM COB_PROG_DES_PLANILLA '
          +'WHERE PERIODO=''' + perano.Text + permes.Text + ''' ' + xwhere
          +' ORDER BY  NUMREG';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(XSQL);
   DM1.cdsQry2.Open;
   dbgProgramacion.DataSource := DM1.dsQry2;
End;

Procedure TFSecProgDescPlanilla.permesExit(Sender: TObject);
Begin
   permes.Text := DM1.StrZero(permes.Text, 2);
End;

Procedure TFSecProgDescPlanilla.dbgProgramacionDrawDataCell(
   Sender: TObject; Const Rect: TRect; Field: TField;
   State: TGridDrawState);

Var
   XFACT, XFECINI: INTEGER;
Begin

   If Trim(DM1.cdsQry2.FieldByName('TURNO').AsString) = 'Noche' Then
   Begin
      If Field.DisplayName = 'Turno' Then
      Begin
         dbgProgramacion.Canvas.Font.Style := [fsBold];
         dbgProgramacion.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

   If Length(TRIM(DM1.cdsQry2.FieldByName('INIPRO').AsString)) = 0 Then
   Begin
      If Field.DisplayName = 'Est' Then
      Begin
         dbgProgramacion.Canvas.Brush.Color := clGreen;
         dbgProgramacion.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

   If Length(TRIM(DM1.cdsQry2.FieldByName('FINPRO').AsString)) > 0 Then
   Begin
      If Field.DisplayName = 'Est' Then
      Begin
         dbgProgramacion.Canvas.Brush.Color := clBlue;
         dbgProgramacion.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

   If (Length(TRIM(DM1.cdsQry2.FieldByName('INIPRO').AsString)) > 0) And
      (Length(TRIM(DM1.cdsQry2.FieldByName('FINPRO').AsString)) = 0) Then
   Begin
      If Field.DisplayName = 'Est' Then
      Begin
         dbgProgramacion.Canvas.Brush.Color := clYellow;
         dbgProgramacion.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

   XFACT := StrToInt(FormatDateTime('YYYYMMDD', DM1.cdsQry2.FieldByName('FECACT').AsDateTime));
   XFECINI := StrToInt(FormatDateTime('YYYYMMDD', DM1.cdsQry2.FieldByName('INIPRO').AsDateTime));

   { If (Length(TRIM(DM1.cdsQry2.FieldByName('INIPRO').AsString))>0) AND
       (Length(TRIM(DM1.cdsQry2.FieldByName('FINPRO').AsString))=0) AND
       (XFACT-XFECINI>=1) THEN

      Begin
        If Field.DisplayName='Est' THEN
           Begin
            dbgProgramacion.Canvas.Brush.Color := clRed;
            dbgProgramacion.DefaultDrawDataCell(Rect, Field, State);
           End;
      End;}

   If (Length(TRIM(DM1.cdsQry2.FieldByName('FLGANU').AsString)) > 0) Then
   Begin
      If Field.DisplayName = 'Est' Then
      Begin
         dbgProgramacion.Canvas.Brush.Color := clRed;
         dbgProgramacion.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

End;

Procedure TFSecProgDescPlanilla.fcSAnulaClick(Sender: TObject);
Begin

   If Dm1.cdsQry2.RecordCount = 0 Then
   Begin
      MessageDlg('No Existe Información para Anular, Anulación no Procede', mtInformation, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(Dm1.cdsQry2.FieldByname('FlgANU').AsString)) > 0 Then
   Begin
      MessageDlg('La Programación del descargo de cuotas fue Anulada, Anulación no Procede',
                         mtInformation, [mbOk], 0);
      Exit;
   End;

   If Length(Trim(Dm1.cdsQry2.FieldByname('Flgpro').AsString)) > 0 Then
   Begin
      MessageDlg('El Descargo ya fue procesado, Anulación no Procede',
                         mtInformation, [mbOk], 0);
      Exit;
   End;

   If (Length(Trim(Dm1.cdsQry2.FieldByname('INIPRO').AsString)) > 0) And
      (Length(Trim(Dm1.cdsQry2.FieldByname('Flgpro').AsString)) = 0) Then
   Begin
      MessageDlg('El Descargo esta en proceso, Anulación no Procede',
                         mtInformation, [mbOk], 0);
      Exit;
   End;

   pnlanulacion.Top := 264;
   pnlanulacion.Left := 265;
   pnlanulacion.Visible := True;
   gbfiltra.Enabled := False;
   gbProgramacion.Enabled := False;
   EDTUPROID.Text := Dm1.cdsQry2.FieldByname('uproid').AsString;
   EDTUPAGOID.Text := Dm1.cdsQry2.FieldByname('upagoid').AsString;
   EDTUSEID.Text := Dm1.cdsQry2.FieldByname('useid').AsString;
   EDTRCOBNOPE.Text := Dm1.cdsQry2.FieldByname('rcobnope').AsString;
   EDTRCOBFOPE.Text := Dm1.cdsQry2.FieldByname('rcobfope').AsString;
   edtanulacion.SetFocus;
End;

Procedure TFSecProgDescPlanilla.fcShapeBtn1Click(Sender: TObject);

Var
   xsql: String;

Begin
   If Length(Trim(edtanulacion.Text)) = 0 Then
   Begin
      MessageDlg('Debe ingresar observación de la Anulación ', mtInformation, [mbOk], 0);
      edtanulacion.SetFocus;
      Exit;
   End;

   Xsql := 'UPDATE COB_PROG_DES_PLANILLA '
          +'SET flganu=''X'', fecanu=sysdate, obsanu=''' + trim(edtanulacion.Text) + ''','
          +'    usuanu=''' + dm1.wUsuario + ''' '
          +'Where rcobid=''' + Dm1.cdsQry2.FieldByName('rcobid').AsString + ''' '
          +'  and detrcobid=''' + Dm1.cdsQry2.FieldByName('detrcobid').AsString + ''' '
          +'  and usercobid=''' + Dm1.cdsQry2.FieldByName('usercobid').AsString + ''' '
          +'  and rcobnope=''' + Dm1.cdsQry2.FieldByName('rcobnope').AsString + ''' '
          +'  and rcobfope=''' + Dm1.cdsQry2.FieldByName('rcobfope').AsString + ''' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   fcSFiltraClick(SELF);
   MessageDlg('Anulación procesada,', mtInformation, [mbOk], 0);

End;

Procedure TFSecProgDescPlanilla.Button1Click(Sender: TObject);
Begin

   pnlanulacion.Visible := False;
   gbfiltra.Enabled := True;
   gbProgramacion.Enabled := True;

End;

Procedure TFSecProgDescPlanilla.FormKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

End.

