Unit COB805;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, ExtCtrls, wwdblook,
   fcButton, fcImgBtn, fcShapeBtn, Buttons;

Type
   TFApPerDescrgPla = Class(TForm)
      Label1: TLabel;
      Label2: TLabel;
      Button1: TButton;
      Panel3: TPanel;
      perano: TwwDBSpinEdit;
      permes: TwwDBSpinEdit;
      DBlsectorista: TwwDBLookupCombo;
      GroupBox1: TGroupBox;
      chkcesantes: TCheckBox;
      chkdocentes: TCheckBox;
      fcSAnula: TfcShapeBtn;
    btnCerrar: TBitBtn;
      Procedure FormActivate(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure SqlInserta(xasotipid: String);
      Function SqlVerifica1(xasotipid: String): boolean;
      Procedure fcSAnulaClick(Sender: TObject);
      Procedure permesExit(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FApPerDescrgPla: TFApPerDescrgPla;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFApPerDescrgPla.FormActivate(Sender: TObject);
Var
   XSQL: String;
Begin
   XSQL := 'Select * From Usertable Where AREA=''COB'' and NIVEL=''03'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

   DBlsectorista.Text := DM1.wUsuario;

   chkcesantes.Checked := True;
   chkdocentes.Checked := True;
End;

Procedure TFApPerDescrgPla.Button1Click(Sender: TObject);
Var
   xSQL: String;
   xcuenta: Integer;
Begin
   PERMES.Text := DM1.StrZero(PERMES.Text, 2);
   DM1.cdsQry2.Close;
   xSQL := 'SELECT SECTORISTA, USUARIO, UPROID, UPAGOID, USEID, ESTADO, FREG, HREG, USUCREA '
      + 'FROM COB_USU_ZONA_DES_PLA '
      + 'WHERE SECTORISTA=' + quotedstr(TRIM(DBlsectorista.Text))
      + '  AND ESTADO IS NULL ';
   DM1.cdsQry2.DataRequest(XSQL);
   DM1.cdsQry2.Open;

   If Length(Trim(perano.Text)) = 0 Then
   Begin
      ShowMessage('Debe seleccionar año del periodo...');
      Exit;
   End;

   If Length(Trim(perano.Text)) = 0 Then
   Begin
      ShowMessage('Debe seleccionar mes del periodo...');
      Exit;
   End;

   If DM1.cdsQry2.RecordCount = 0 Then
   Begin
      ShowMessage('No existe Usuarios para generar apertura del periodo de descargo..');
      Exit;
   End;

  //Inserta a la tabla de control por usuario del descargo de planilla
   Screen.Cursor := crHourGlass;
   xcuenta := 0;
   Dm1.cdsQry2.First;
   While Not Dm1.cdsQry2.Eof Do
   Begin
      If chkcesantes.Checked Then
      Begin
         If SqlVerifica1('CE') Then
         Begin
            SqlInserta('CE');
            xcuenta := xcuenta + 1;
         End;
      End;

      If chkdocentes.Checked Then
      Begin
         If SqlVerifica1('DO') Then
         Begin
            SqlInserta('DO');
            xcuenta := xcuenta + 1;
         End;
      End;
      Dm1.cdsQry2.Next;
   End;

   Screen.Cursor := crDefault;
   If xcuenta = 0 Then
      ShowMessage('Toda las zonas del sectorista ya esta aperturadas para el periodo ' + perano.Text + '-' + permes.Text)
   Else
      ShowMessage('Se aperturó exitosamente ' + trim(IntToStr(xcuenta)) + ' zona(s) ');

   xcuenta := 0;
End;

//Inserta registro

Procedure TFApPerDescrgPla.SqlInserta(xasotipid: String);
Var
   xsql, xtipo: String;
Begin
   xtipo := 'Cuotas';
   xsql := 'Insert Into COB_CTR_USU_DES_PLA(SECTORISTA,TIPO,UPROID,UPAGOID,USEID,PERIODO,ASOTIPID) '
          +'values ' +
      '(''' + Dm1.cdsQry2.FieldByname('Sectorista').AsString + ''',' +
      '''' + xtipo + ''',' +
      '''' + Dm1.cdsQry2.FieldByname('Uproid').AsString + ''',' +
      '''' + Dm1.cdsQry2.FieldByname('Upagoid').AsString + ''',' +
      '''' + Dm1.cdsQry2.FieldByname('Useid').AsString + ''',' +
      '''' + perano.Text + permes.Text + ''',' +
      '''' + xasotipid + ''')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

End;

//Verifica si existe el registro

Function TFApPerDescrgPla.SqlVerifica1(xasotipid: String): boolean;
Var
   xsql: String;
Begin
   xsql := 'Select * from Cob_ctr_usu_des_pla where  ' +
      'Periodo=''' + perano.Text + permes.Text + ''' And ' +
      'Sectorista=''' + Dm1.cdsQry2.FieldByname('Sectorista').AsString + ''' And ' +
      'Uproid=''' + Dm1.cdsQry2.FieldByname('Uproid').AsString + ''' And ' +
      'Upagoid=''' + Dm1.cdsQry2.FieldByname('Upagoid').AsString + ''' And ' +
      'Asotipid=''' + xasotipid + ''' ';
   Dm1.cdsQry3.Close;
   Dm1.cdsQry3.DataRequest(xsql);
   Dm1.cdsQry3.Open;
   If Dm1.cdsQry3.RecordCount = 0 Then
      Result := True
   Else
      Result := False;
End;

Procedure TFApPerDescrgPla.fcSAnulaClick(Sender: TObject);
Var
   xsql: String;
Begin
   PERMES.Text := DM1.StrZero(PERMES.Text, 2);
  //Verifica si se esta ejecutando alguna actualización de descargo de planilla
   Xsql := 'Select * From Cob_Prog_Des_Planilla Where ' +
      'Periodo=''' + perano.Text + permes.Text + ''' And  Freg=to_date(sysdate) and FlgPro is null ';
   Dm1.cdsResol.Close;
   Dm1.cdsResol.DataRequest(Xsql);
   Dm1.cdsResol.Open;
   If Dm1.cdsResol.RecordCount > 0 Then
   Begin
      ShowMessage('No se puede refrescar información de este periodo, existe procesos de descargo programados pendientes');
      exit;
   End;

   Screen.Cursor := crHourglass;
   Xsql := 'Begin Cob_Refresca_ctr_usu_des_pla(''' + perano.Text + permes.Text + '''); End;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   ShowMessage('Proceso concluido');
   Screen.Cursor := crDefault;

End;

Procedure TFApPerDescrgPla.permesExit(Sender: TObject);
Begin
   PERMES.Text := DM1.StrZero(PERMES.Text, 2);
End;

procedure TFApPerDescrgPla.btnCerrarClick(Sender: TObject);
begin
   close;
end;

End.

