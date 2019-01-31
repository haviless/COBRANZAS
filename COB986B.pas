// Memorándum 972-2009-DM-COB - SAR2009-0873 - DAD-RM-2009-0137
// Reporte Complementario Convenio de Envío por RMEDINA
Unit COB986B;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, fcButton, fcImgBtn, fcShapeBtn,
   wwdblook, StdCtrls, Mask, wwdbedit, Wwdbspin, ExtCtrls, DB,
   wwExport, shellapi, wwriched, Buttons, 
// Inicio: HPC_201002_COB por RMEDINA
   ComCtrls;
// Fin: HPC_201002_COB

Type
   TFInfAdicEnvPla = Class(TForm)
      GroupBox1: TGroupBox;
      Panel3: TPanel;
      perano: TwwDBSpinEdit;
      permes: TwwDBSpinEdit;
      Label6: TLabel;
      Label1: TLabel;
      GroupBox2: TGroupBox;
      dbgInfAdicional: TwwDBGrid;
      Panel1: TPanel;
      EDTDESCON: TEdit;
      fcSFiltra: TfcShapeBtn;
      DBGDESCON: TwwDBGrid;
      chkReproceso: TCheckBox;
    Label2: TLabel;
    BitSalir: TBitBtn;
    btnAExcel: TBitBtn;
// Inicio: HPC_201002_COB por RMEDINA
// Memo 1061-2009-DM-COB - SAR-2009-0985 - DAD-RM-2010-001
    PgConsulta: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgInfAdiAportes: TwwDBGrid;
    BitBtn1: TBitBtn;
// fin HPC_201002_COB
      Procedure FormCreate(Sender: TObject);
      Procedure permesChange(Sender: TObject);
      Procedure permesExit(Sender: TObject);
      Procedure fcSFiltraClick(Sender: TObject);
      Procedure DBGDESCONDblClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure EDTDESCONExit(Sender: TObject);
      Procedure peranoChange(Sender: TObject);
      Procedure EDTDESCONChange(Sender: TObject);
      Procedure Fliadicional();
      Procedure dbgInfAdicionalTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure chkReprocesoClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure BitSalirClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
// Inicio: HPC_201002_COB por RMEDINA
// Memo 1061-2009-DM-COB - SAR-2009-0985 - DAD-RM-2010-001
      procedure adicionaportes();
      procedure BitBtn1Click(Sender: TObject);
      procedure dbgInfAdiAportesTitleButtonClick(Sender: TObject;
      AFieldName: String);
// fin HPC_201002_COB
   Private
    { Private declarations }
   Public
    { Public declarations }
      VIDCON: String;
   End;

Var
   FInfAdicEnvPla: TFInfAdicEnvPla;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFInfAdicEnvPla.FormCreate(Sender: TObject);
Var
   xsQL: String;
Begin
   dbgInfAdicional.Selected.clear;
   dbgInfAdicional.Selected.Add('PERIODO'#9'06'#9'Periodo'#9#9);
   dbgInfAdicional.Selected.Add('IDCON'#9'08'#9'Convenio'#9#9);
   dbgInfAdicional.Selected.Add('ESTADO'#9'09'#9'Acción'#9#9);
   dbgInfAdicional.Selected.Add('TIPO'#9'04'#9'Tipo'#9#9);
   dbgInfAdicional.Selected.Add('ASOID'#9'10'#9'Código'#9#9);
   dbgInfAdicional.Selected.Add('CARGO'#9'06'#9'Cargo'#9#9);
   dbgInfAdicional.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.'#9#9);
   dbgInfAdicional.Selected.Add('ASOAPENOM'#9'50'#9'Apellidos y Nombres'#9#9);
   dbgInfAdicional.Selected.Add('ASOTIPID'#9'02'#9'Tip.Aso.'#9#9);
   dbgInfAdicional.Selected.Add('UPROID'#9'03'#9'U.proid'#9#9);
   dbgInfAdicional.Selected.Add('UPAGOID'#9'03'#9'U.Pagoid'#9#9);
   dbgInfAdicional.Selected.Add('USEID'#9'03'#9'Ugel'#9#9);
   dbgInfAdicional.Selected.Add('CREFOTORG'#9'10'#9'F.Otorgamiento'#9#9);
   dbgInfAdicional.Selected.Add('CREDID'#9'15'#9'Crédito'#9#9);
   dbgInfAdicional.Selected.Add('CREMTOOTOR'#9'10'#9'Otorgado'#9'F'#9'Monto');
   dbgInfAdicional.Selected.Add('CREMTONABO'#9'07'#9'Abo.Cuo'#9'F'#9'Monto');
   dbgInfAdicional.Selected.Add('CREMTOAPO'#9'07'#9'Abo.Apo'#9'F'#9'Monto');
   dbgInfAdicional.Selected.Add('CRECUOTA'#9'05'#9'Cuota'#9'F'#9'Monto');
   dbgInfAdicional.Selected.Add('CRENUMCUO'#9'04'#9'Cuotas'#9#9);
   dbgInfAdicional.Selected.Add('CREESTADO'#9'15'#9'Estado'#9#9);

// Inicio: HPC_201002_COB por RMEDINA
// Memo 1061-2009-DM-COB - SAR-2009-0985 - DAD-RM-2010-001
   dbgInfAdiAportes.Selected.Clear;
   dbgInfAdiAportes.Selected.Add('PERIODO'#9'06'#9'Periodo'#9#9);
   dbgInfAdiAportes.Selected.Add('IDCON'#9'08'#9'Convenio'#9#9);
   dbgInfAdiAportes.Selected.Add('ESTADO'#9'09'#9'Acción'#9#9);
   dbgInfAdiAportes.Selected.Add('ASOID'#9'10'#9'Código'#9#9);
   dbgInfAdiAportes.Selected.Add('CARGO'#9'06'#9'Cargo'#9#9);
   dbgInfAdiAportes.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.'#9#9);
   dbgInfAdiAportes.Selected.Add('ASOAPENOM'#9'50'#9'Apellidos y Nombres'#9#9);
   dbgInfAdiAportes.Selected.Add('ASOTIPID'#9'02'#9'Tip.Aso.'#9#9);
   dbgInfAdiAportes.Selected.Add('UPROID'#9'03'#9'U.proid'#9#9);
   dbgInfAdiAportes.Selected.Add('UPAGOID'#9'03'#9'U.Pagoid'#9#9);
   dbgInfAdiAportes.Selected.Add('USEID'#9'03'#9'Ugel'#9#9);
   PgConsulta.TabIndex := 0;
// fin HPC_201002_COB

   DBGDESCON.Selected.Clear;
   DBGDESCON.Selected.Add('IDECON'#9'08'#9'Código'#9#9);
   DBGDESCON.Selected.Add('DESCON'#9'30'#9'Descripicón'#9#9);

    //Si existe en la tabla lo  muestra
   XSQL := 'SELECT PERIODO,IDCON,ESTADO,TIPO,ASOID,CARGO,ASOCODMOD,ASOAPENOM,ASOTIPID, UPROID,UPAGOID,'
          +'       USEID,CREFOTORG,CREDID,CREMTOOTOR,CREMTONABO,CREMTOAPO,CRECUOTA,CRENUMCUO,CREESTADO,'
          +'       SALDOACT, FREG,HREG,USUARIO '
          +'FROM COB_ENV_PLA_ADICIONALES '
          +'WHERE PERIODO=''999999'' ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(XSQL);
   DM1.cdsQry1.Open;
   dbgInfAdicional.DataSource := DM1.dsQry1;

   XSQL := 'SELECT IDECON,DESCON '
          +'FROM COB_CON_CAB '
          +'WHERE CODESTCON=''99'' ';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
   DBGDESCON.DataSource := dm1.dsQry;

// Inicio: HPC_201002_COB por RMEDINA
// Memo 1061-2009-DM-COB - SAR-2009-0985 - DAD-RM-2010-001
    XSQL := ' SELECT ''    ''PERIODO,''        ''IDCON,''         ''ESTADO,''     ''CARGO,''         ''ASOCODMOD,''                                    ''ASOAPENOM, '+
            '''  ''ASOTIPID,''  ''UPROID,''        ''UPAGOID,''  ''USEID FROM  DUAL ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(XSQL);
   DM1.cdsQry2.Open;
   dbgInfAdiAportes.DataSource := DM1.dsQry2;
// fin HPC_201002_COB

End;

Procedure TFInfAdicEnvPla.permesChange(Sender: TObject);
Begin
   DM1.cdsQry1.EmptyDataSet;
   chkReproceso.Checked := False;
   chkReproceso.Visible := False;
   If (Length(Trim(permes.Text)) = 2) And (StrToInt(permes.Text) > 0) Then
   Begin
      permes.Text := DM1.StrZero(permes.Text, 2);
   End;
End;

Procedure TFInfAdicEnvPla.permesExit(Sender: TObject);
Begin
   permes.Text := DM1.StrZero(permes.Text, 2);
   EDTDESCON.SetFocus;
End;

Procedure TFInfAdicEnvPla.fcSFiltraClick(Sender: TObject);
Var
   XSQL: String;
Begin
   permes.Text := DM1.StrZero(permes.Text, 2);
   XSQL := 'SELECT IDECON,DESCON '
          +'FROM COB_CON_CAB '
          +'WHERE DESCON LIKE ''%' + EDTDESCON.Text + '%'' '
          +'  AND CODESTCON<>''13'' '
          +'  AND (FECINI<=TO_DATE(SYSDATE) '
          +'  AND FECFIN>=TO_DATE(SYSDATE)) '
          +'ORDER BY DESCON';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
   DBGDESCON.DataSource := DM1.dsQry;
End;

Procedure TFInfAdicEnvPla.DBGDESCONDblClick(Sender: TObject);
Var
   XSQL, XPERIODO, XIDCON: String;
Begin
   permes.Text := DM1.StrZero(permes.Text, 2);
   If chkReproceso.Visible And
      chkReproceso.Checked And
      (Dm1.cdsQry.FieldByName('IDECON').AsString = VIDCON) Then
   Begin
      If MessageDlg('Esta Seguro que desea Reprocesar..', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
      Begin
         XPERIODO := perano.Text + permes.Text;
         XIDCON := DM1.cdsQry.FieldByname('IDECON').AsString;
         Screen.Cursor := crHourGlass;
           //ELIMINA PROCESO ANTERIOR
         xSQL := 'DELETE COB_ENV_PLA_ADICIONALES '
                +'WHERE PERIODO = ''' + XPERIODO + ''' AND IDCON = ''' + XIDCON + ''' ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
           //PROCESA NUEVAMENTE
         Xsql := 'BEGIN DB2ADMIN.SP_COB_ENV_PLA_ADICIONALES(''' + XPERIODO + ''',''' + XIDCON + ''',''' + DM1.wUsuario + '''); End;';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         Fliadicional;
         Screen.Cursor := crDefault;
      End
      Else
      Begin
         chkReproceso.Visible := False;
         chkReproceso.Checked := False;
      End;
   End
   Else
   Begin
      Screen.Cursor := crHourGlass;
      Fliadicional;
      Screen.Cursor := crDefault;

      If DM1.cdsQry1.RecordCount = 0 Then
      Begin
           //Si no existe lo proceso
         If MessageDlg('Esta Seguro que desea Procesar..', mtconfirmation, [mbYes, MbNo], 0) = mrYes Then
         Begin
            XPERIODO := perano.Text + permes.Text;
            XIDCON := DM1.cdsQry.FieldByname('IDECON').AsString;
            Screen.Cursor := crHourGlass;
            Xsql := 'BEGIN DB2ADMIN.SP_COB_ENV_PLA_ADICIONALES(''' + XPERIODO + ''',''' + XIDCON + ''',''' + DM1.wUsuario + '''); End;';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            Fliadicional;

            Screen.Cursor := crDefault;
            If DM1.cdsQry1.RecordCount = 0 Then
            Begin
               ShowMessage('No existe información del proceseo...');
               chkReproceso.Visible := False;
               exit;
            End;
         End;
      End;
   End;

// Inicio: HPC_201002_COB por RMEDINA
// Memo 1061-2009-DM-COB - SAR-2009-0985 - DAD-RM-2010-001
   //APORTES A ADICIONAR
     adicionaportes();
     PgConsulta.TabIndex := 0;
// fin HPC_201002_COB

End;

Procedure TFInfAdicEnvPla.FormKeyPress(Sender: TObject; Var Key: Char);
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

Procedure TFInfAdicEnvPla.EDTDESCONExit(Sender: TObject);
Begin
   fcSFiltra.SetFocus;
End;

Procedure TFInfAdicEnvPla.peranoChange(Sender: TObject);
Begin
   DM1.cdsQry1.EmptyDataSet;
   chkReproceso.Checked := False;
   chkReproceso.Visible := False;

End;

Procedure TFInfAdicEnvPla.EDTDESCONChange(Sender: TObject);
Begin
   DM1.cdsQry1.EmptyDataSet;
   DM1.cdsQry.EmptyDataSet;
End;

Procedure TFInfAdicEnvPla.Fliadicional;
Var
   xsql: String;
Begin
    //Si existe en la tabla lo  muestra
   XSQL := 'SELECT PERIODO,IDCON,ESTADO,TIPO,ASOID,CARGO,ASOCODMOD,ASOAPENOM,ASOTIPID, '
          +'       UPROID,UPAGOID,USEID,CREFOTORG,CREDID,CREMTOOTOR,CREMTONABO,CREMTOAPO, '
          +'       CRECUOTA,CRENUMCUO,CREESTADO,SALDOACT, FREG,HREG,USUARIO  '
          +'FROM COB_ENV_PLA_ADICIONALES '
          +'WHERE PERIODO='+QuotedStr(perano.Text + permes.Text)
          +'  AND IDCON  ='+QuotedStr(DM1.cdsQry.FieldByname('IDECON').AsString)
          +' order by ASOAPENOM ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(XSQL);
   DM1.cdsQry1.Open;
   TNumericField(DM1.cdsQry1.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry1.fieldbyname('CREMTONABO')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry1.fieldbyname('CREMTOAPO')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry1.fieldbyname('CRECUOTA')).DisplayFormat := '###,##0.#0';

   dbgInfAdicional.DataSource := DM1.dsQry1;
   If Dm1.cdsQry1.RecordCount > 0 Then
   Begin
      chkReproceso.Checked := False;
      chkReproceso.Visible := True;
   End
   Else
   Begin
      chkReproceso.Checked := False;
      chkReproceso.Visible := False;
   End;
End;

Procedure TFInfAdicEnvPla.dbgInfAdicionalTitleButtonClick(Sender: TObject;
   AFieldName: String);
Begin
   If AFieldName = 'ASOAPENOM' Then
   Begin
      DM1.cdsQry1.IndexFieldNames := 'ASOAPENOM';
      dbgInfAdicional.SetFocus;
   End;
   If AFieldName = 'ESTADO' Then
   Begin
      DM1.cdsQry1.IndexFieldNames := 'ESTADO';
      dbgInfAdicional.SetFocus;
   End;
End;

Procedure TFInfAdicEnvPla.chkReprocesoClick(Sender: TObject);
Begin
   If chkReproceso.Checked Then
   Begin
      Dm1.cdsQry1.EmptyDataSet;
      VIDCON := DM1.cdsQry.FIELDBYNAME('IDECON').AsString;
   End;
End;

Procedure TFInfAdicEnvPla.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   Dm1.cdsQry.Close;
   Dm1.cdsQry.IndexFieldNames := '';
   Dm1.cdsQry1.Close;
   Dm1.cdsQry1.IndexFieldNames := '';
End;

procedure TFInfAdicEnvPla.BitSalirClick(Sender: TObject);
begin
   close;
end;

procedure TFInfAdicEnvPla.btnAExcelClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='COMPL_ENV_CONV_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   xArchivo:=xArchivo;

   if FileExists(xArchivo+'.slk') then
      DeleteFile(xArchivo+'.slk');
   DM1.ExportaGridExcel(dbgInfAdicional,xArchivo);
end;
// Fin: HPP_200945_COB

procedure TFInfAdicEnvPla.adicionaportes();
Var 
   XSQL,XPERIODO,XIDCON,XANO,XMES:STRING;
begin
// Inicio: HPC_201002_COB por RMEDINA
// Memo 1061-2009-DM-COB - SAR-2009-0985 - DAD-RM-2010-001

 XPERIODO := perano.Text + permes.Text;
   XIDCON := DM1.cdsQry.FieldByname('IDECON').AsString;


  XANO := perano.Text;
  XMES := permes.Text;
  XMES := DM1.StrZero(IntToStr(StrToInt(permes.Text)-1),2);

  If XMES  = '00' Then
   Begin
     XMES := '12';
     XANO := IntToStr(StrToInt(XANO)-1);
   End;

   XPERIODO:=XANO+XMES;

   XSQL :='SELECT  '''+perano.Text+permes.Text+'''PERIODO,A.IDECON IDCON,''ADICIONAR'' ESTADO,B.ASOID,B.CARGO, '+        //TO_CHAR(B.FECAUTDESAPO,''YYYYMM'')PERIODO
          'B.ASOCODMOD,B.ASOAPENOM,B.ASOTIPID,B.UPROID,B.UPAGOID,B.USEID '+
          ' FROM  COB_CON_DET A,APO201 B '+
          ' WHERE  A.IDECON= '''+XIDCON+'''  AND  A.UPROID=B.UPROID AND  A.UPAGOID=B.UPAGOID AND  A.USEID=B.USEID AND '+
          ' TO_CHAR(B.FECAUTDESAPO, ''YYYYMM'')='''+XPERIODO+''' ' ;
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(XSQL);
   DM1.cdsQry2.Open;
// fin HPC_201002_COB
end;


procedure TFInfAdicEnvPla.BitBtn1Click(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
// Inicio: HPC_201002_COB por RMEDINA
// Memo 1061-2009-DM-COB - SAR-2009-0985 - DAD-RM-2010-001
   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='COMPL_ENV_APO_CONV_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   xArchivo:=xArchivo;

   if FileExists(xArchivo+'.slk') then
      DeleteFile(xArchivo+'.slk');
   DM1.ExportaGridExcel(dbgInfAdiAportes,xArchivo);
// fin HPC_201002_COB
end;


procedure TFInfAdicEnvPla.dbgInfAdiAportesTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
// Inicio: HPC_201002_COB por RMEDINA
// Memo 1061-2009-DM-COB - SAR-2009-0985 - DAD-RM-2010-001
    If AFieldName = 'ASOAPENOM' Then
   Begin
      DM1.cdsQry2.IndexFieldNames := 'ASOAPENOM';
      dbgInfAdiAportes.SetFocus;
   End;
   If AFieldName = 'ESTADO' Then
   Begin
      DM1.cdsQry2.IndexFieldNames := 'ESTADO';
      dbgInfAdiAportes.SetFocus;
   End;
// fin HPC_201002_COB
end;

End.

