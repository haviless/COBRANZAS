Unit COB803;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, wwdbedit, Wwdbdlg, Mask, Wwdbspin, ExtCtrls, StdCtrls, wwdblook,
   Grids, DBGrids, Buttons, Wwdbigrd, Wwdbgrid, ComCtrls, wwriched,
   fcButton, fcImgBtn, fcShapeBtn, DB, ppCtrls, ppBands, ppClass, ppPrnabl,
   ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
   ppVar, ppParameter, ppEndUsr, ppStrtch, ppRichTx,
   Series, Chart, DBChart, Jpeg, TeEngine, TeeProcs;

Type
   TFCtrUsuZonDesPla = Class(TForm)
      GroupBox1: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label4: TLabel;
      Label6: TLabel;
      DBlsectorista: TwwDBLookupCombo;
      Panel3: TPanel;
      perano: TwwDBSpinEdit;
      permes: TwwDBSpinEdit;
      dblAuxiliar: TwwDBLookupCombo;
      Label3: TLabel;
      Label5: TLabel;
      dblcUProceso: TwwDBLookupCombo;
      dblcdUPago: TwwDBLookupComboDlg;
      Panel1: TPanel;
      Panel2: TPanel;
      edtUproid: TEdit;
      edtupagoid: TEdit;
      pnlObservacion: TPanel;
      grbObservacion: TGroupBox;
      Shape1: TShape;
      Observacion: TwwDBRichEdit;
      btnActualiza: TfcShapeBtn;
      Label7: TLabel;
      Button1: TButton;
      fcSFiltra: TfcShapeBtn;
      dblcTipAso: TwwDBLookupCombo;
      Panel4: TPanel;
      edtTipAso: TEdit;
      ppBP1: TppBDEPipeline;
      ppRepCtr: TppReport;
      ppParameterList1: TppParameterList;
      ppD1: TppDesigner;
      dtgData: TDBGrid;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      TabSheet2: TTabSheet;
      GroupBox2: TGroupBox;
      Shape2: TShape;
      Label8: TLabel;
      Label10: TLabel;
      Shape4: TShape;
      Shape6: TShape;
      Label11: TLabel;
      dbgControlUsu: TwwDBGrid;
      GroupBox3: TGroupBox;
      Shape7: TShape;
      Label13: TLabel;
      dbgEstadistica: TwwDBGrid;
      btnModifica: TfcShapeBtn;
      Image1: TImage;
      chkExcel: TCheckBox;
      btnPrint: TfcShapeBtn;
      Image2: TImage;
      chkExcel2: TCheckBox;
      fcShapeBtn1: TfcShapeBtn;
      ppRepest: TppReport;
      ppParameterList2: TppParameterList;
      fcShapeBtn2: TfcShapeBtn;
      chksinregglob: TCheckBox;
      chksindescargo: TCheckBox;
      ppHeaderBand2: TppHeaderBand;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppLabel43: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      ppLabel44: TppLabel;
      pplbPeriodo2: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppShape6: TppShape;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBText23: TppDBText;
      ppDBText24: TppDBText;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppLine29: TppLine;
      ppLine30: TppLine;
      ppLine31: TppLine;
      ppLine32: TppLine;
      ppLine33: TppLine;
      ppLine34: TppLine;
      ppLine35: TppLine;
      ppLine36: TppLine;
      ppLine37: TppLine;
      ppLine38: TppLine;
      ppLine39: TppLine;
      ppLine40: TppLine;
      ppLine41: TppLine;
      ppDBText30: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppDBText29: TppDBText;
      ppLabel37: TppLabel;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppShape11: TppShape;
      ppLine43: TppLine;
      ppLine44: TppLine;
      ppLine45: TppLine;
      ppLine47: TppLine;
      ppLine48: TppLine;
      ppLine49: TppLine;
      ppLine50: TppLine;
      ppLine51: TppLine;
      ppLine52: TppLine;
      ppLine53: TppLine;
      ppLine54: TppLine;
      ppLine55: TppLine;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppLabel36: TppLabel;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppShape3: TppShape;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppShape7: TppShape;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLine17: TppLine;
      ppLine18: TppLine;
      ppLine19: TppLine;
      ppLine20: TppLine;
      ppShape8: TppShape;
      ppLine22: TppLine;
      ppLine23: TppLine;
      ppLine24: TppLine;
      ppShape9: TppShape;
      ppLine21: TppLine;
      ppLine25: TppLine;
      ppShape10: TppShape;
      ppLine26: TppLine;
      ppLine27: TppLine;
      ppLine28: TppLine;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLine42: TppLine;
      ppltit1: TppLabel;
      ppltit2: TppLabel;
      ppltit3: TppLabel;
      ppltit4: TppLabel;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppShape12: TppShape;
      ppLine46: TppLine;
      ppLine56: TppLine;
      ppLine57: TppLine;
      ppLine58: TppLine;
      ppLine59: TppLine;
      ppLine60: TppLine;
      ppLine61: TppLine;
      ppLine62: TppLine;
      ppLine63: TppLine;
      ppLine64: TppLine;
      ppLine65: TppLine;
      ppLine66: TppLine;
      ppDBCalc9: TppDBCalc;
      ppDBCalc10: TppDBCalc;
      ppDBCalc11: TppDBCalc;
      ppDBCalc12: TppDBCalc;
      ppDBCalc13: TppDBCalc;
      ppDBCalc14: TppDBCalc;
      ppDBCalc15: TppDBCalc;
      ppDBCalc16: TppDBCalc;
      ppLabel45: TppLabel;
      ppHeaderBand1: TppHeaderBand;
      ppLabel12: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLabel18: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppLabel13: TppLabel;
      lblperanopermes: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppShape4: TppShape;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppLine6: TppLine;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppLine11: TppLine;
      ppLine13: TppLine;
      ppLine16: TppLine;
      ppDBText12: TppDBText;
      ppLine14: TppLine;
      ppDBText13: TppDBText;
      ppDBText2: TppDBText;
      ppLine1: TppLine;
      ppFooterBand1: TppFooterBand;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppDBText1: TppDBText;
      ppLabel1: TppLabel;
      ppGroupFooterBand3: TppGroupFooterBand;
      ppShape1: TppShape;
      ppDBCalc17: TppDBCalc;
      ppDBCalc18: TppDBCalc;
      ppLabel2: TppLabel;
      ppLine69: TppLine;
      ppLine70: TppLine;
      ppLine71: TppLine;
      ppGroup4: TppGroup;
      ppGroupHeaderBand4: TppGroupHeaderBand;
      ppShape2: TppShape;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLine2: TppLine;
      ppShape5: TppShape;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLine7: TppLine;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLine12: TppLine;
      ppLine15: TppLine;
      ppLabel19: TppLabel;
      ppLine67: TppLine;
      ppLabel20: TppLabel;
      ppLine68: TppLine;
      ppLabel46: TppLabel;
      ppGroupFooterBand4: TppGroupFooterBand;
      ppShape13: TppShape;
      ppDBCalc19: TppDBCalc;
      ppDBCalc20: TppDBCalc;
      ppLabel47: TppLabel;
      ppLine72: TppLine;
      ppLine73: TppLine;
      ppLine74: TppLine;
      pnlGraficos: TPanel;
      Button2: TButton;
      GroupBox4: TGroupBox;
      Image4: TImage;
      GroupBox5: TGroupBox;
      Image3: TImage;
      fcShapeBtn3: TfcShapeBtn;
      pnlGrafico2: TPanel;
      GroupBox6: TGroupBox;
      Image5: TImage;
      Button3: TButton;
      fcShapeBtn4: TfcShapeBtn;
      chkvalor1: TCheckBox;
      BitBtn1: TBitBtn;
      BitBtn2: TBitBtn;
    btnCerrar: TBitBtn;
      Procedure FormActivate(Sender: TObject);
      Procedure DBlsectoristaChange(Sender: TObject);
      Procedure dblcUProcesoChange(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcdUPagoExit(Sender: TObject);
      Procedure dblcdUPagoChange(Sender: TObject);
      Procedure dblAuxiliarChange(Sender: TObject);
      Procedure fcSFiltraClick(Sender: TObject);
      Procedure btnModificaClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure btnActualizaClick(Sender: TObject);
      Procedure dbgControlUsuDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure dbgControlUsuDblClick(Sender: TObject);
      Procedure dblcTipAsoChange(Sender: TObject);
      Procedure btnPrintClick(Sender: TObject);
      Procedure dbgEstadisticaDrawDataCell(Sender: TObject;
         Const Rect: TRect; Field: TField; State: TGridDrawState);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure fcShapeBtn2Click(Sender: TObject);
      Procedure dbgEstadisticaDblClick(Sender: TObject);
      Procedure actFooter;
      Procedure actFooter2;
      Procedure PageControl1Change(Sender: TObject);
      Procedure dbgControlUsuRowChanged(Sender: TObject);
      Procedure dbgEstadisticaRowChanged(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure permesExit(Sender: TObject);
      Procedure Button2Click(Sender: TObject);
      Procedure fcShapeBtn3Click(Sender: TObject);
      Procedure Button3Click(Sender: TObject);
      Procedure fcShapeBtn4Click(Sender: TObject);
      Procedure chkvalor1Click(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure BitBtn2Click(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
      VIMP1, VIMP2, VIMP3, VIMP4: Double;
      VNUM1, VNUM2, VNUM3, VNUM4: Double;
      xper1, xper2, xper3, xper4: String;
      Procedure Grafico01();
      Procedure Grafico02();
   End;

Var
   FCtrUsuZonDesPla: TFCtrUsuZonDesPla;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFCtrUsuZonDesPla.FormActivate(Sender: TObject);
Var
   xsql: String;
Begin
   //Consulta de Sectoristas de Cobranza
   xsql := 'Select * from usertable Where  area=''COB'' AND nivel=''03'' ';
   Dm1.cdsMGrupo.Close;
   Dm1.cdsMGrupo.DataRequest(xsql);
   Dm1.cdsMGrupo.Open;
   DBlsectorista.LookupTable := Dm1.cdsMGrupo;
   DBlsectorista.LookupField := 'Userid';

   xsql := 'Select USERID Usuario from usertable Where  area=''COB'' ';
   Dm1.cdsGrupos.Close;
   Dm1.cdsGrupos.DataRequest(xsql);
   Dm1.cdsGrupos.Open;
   dblAuxiliar.LookupTable := dm1.cdsGrupos;
   dblAuxiliar.LookupField := 'Usuario';

   //Consulta de Unidad de Proceso
   xsql := 'Select * from apo102 ';
   Dm1.cdsUPro.Close;
   Dm1.cdsUPro.DataRequest(xsql);
   Dm1.cdsUPro.Open;
   dblcUProceso.LookupTable := Dm1.cdsUPro;
   dblcUProceso.LookupField := 'UPROID';

   //Tipo de asociado
   xSql := 'Select * From Apo107 where Asotipcre=''S'' ';
   Dm1.cdsTAso.Close;
   Dm1.cdsTAso.DataRequest(xsql);
   Dm1.cdsTAso.Open;
   dblcTipAso.LookupTable := Dm1.cdsTAso;
   dblcTipAso.LookupField := 'Asotipid';

   xsql := 'Select ''   ''FLG,b.upagonom,observacion,case When observacion is not null Then ''....'' else null end Obs,a.* ' +
           'From Cob_ctr_usu_des_pla a,apo103 B ' +
           'Where periodo=''999999'' And a.uproid=b.uproid(+) and a.upagoid=b.upagoid(+) ' +
           ' Order by a.Periodo,a.Sectorista,a.Usuario,a.Uproid,a.Upagoid,a.asotipid ';
   Dm1.cdsCuentas.Close;
   Dm1.cdsCuentas.DataRequest(xsql);
   Dm1.cdsCuentas.Open;
   dbgControlUsu.Selected.Add('UPAGOID'#9'2'#9' '#9'F');
   dbgControlUsu.Selected.Add('UPAGONOM'#9'22'#9'Unidad de Pago'#9#9);
   dbgControlUsu.Selected.Add('ASOTIPID'#9'5'#9'Asoc'#9'F');
   dbgControlUsu.Selected.Add('FLG'#9'3'#9'Est'#9#9);
   dbgControlUsu.Selected.Add('TIPO'#9'6'#9'Tipo'#9#9);
   dbgControlUsu.Selected.Add('SECTORISTA'#9'12'#9'Sectorista'#9'F');
   dbgControlUsu.Selected.Add('USUARIO'#9'13'#9'Auxiliar'#9'F');
   dbgControlUsu.Selected.Add('FECRECREP'#9'13'#9'F.Rec.Rep.'#9'F'#9'Registro Global');
   dbgControlUsu.Selected.Add('FECDEPBAN'#9'12'#9'F.Dep.Ban'#9'F'#9'Registro Global');
   dbgControlUsu.Selected.Add('FECINGCOB'#9'12'#9'F.Ing.Cob.'#9'F'#9'Registro Global');
   dbgControlUsu.Selected.Add('OBS'#9'5'#9'Obs'#9'F');
   dbgControlUsu.Selected.Add('FECDES'#9'10'#9'F.Desc.'#9'F'#9'Descargo');
   dbgControlUsu.Selected.Add('NUMERO'#9'9'#9'N.Reg.'#9'F'#9'Descargo');
   dbgControlUsu.Selected.Add('IMPORTE'#9'13'#9'Importe'#9'F'#9'Descargo');

   dbgControlUsu.DataSource := Dm1.dsCuentas;
   PageControl1.TabIndex := 0;
   perano.SetFocus;
End;

Procedure TFCtrUsuZonDesPla.DBlsectoristaChange(Sender: TObject);
Var
   xsql: String;
Begin
End;

Procedure TFCtrUsuZonDesPla.dblcUProcesoChange(Sender: TObject);
Var
   xsql: String;
Begin

   If Length(Trim(dblcUProceso.Text)) = 3 Then
   Begin
      dblcdUPago.Text := '';
      edtupagoid.Text := '';
      If DM1.cdsUPro.Locate('UPROID', VarArrayof([dblcUProceso.Text]), []) Then
      Begin
         edtUproid.Text := DM1.cdsUPro.FieldByName('UPRONOM').Asstring;
      End
      Else
      Begin
         If Length(Trim(dblcUProceso.Text)) <> 2 Then
         Begin
            edtUproid.Text := '';
         End;
      End;

      xsql := 'Select * from Apo103 Where Uproid=''' + dblcUProceso.Text + ''' ';
      Dm1.cdsUPago.Close;
      Dm1.cdsUPago.DataRequest(Xsql);
      Dm1.cdsUPago.Open;
      dblcdUPago.LookupTable := Dm1.cdsUPago;
      dblcdUPago.LookupField := 'Upagoid';
      dblcdUPago.Enabled := True;
   End
   Else
   Begin
      dblcdUPago.Text := '';
      edtupagoid.Text := '';
      edtUproid.Text := '';
      dblcdUPago.Enabled := False;
   End;

End;

Procedure TFCtrUsuZonDesPla.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   Begin
      If Key = #13 Then
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End;
   End;
End;

Procedure TFCtrUsuZonDesPla.dblcdUPagoExit(Sender: TObject);
Begin
   If Length(trim(dblcdUPago.Text)) > 0 Then
      edtupagoid.Text := Dm1.cdsUPago.Fieldbyname('Upagonom').AsString
   Else
      edtupagoid.Text := '';
End;

Procedure TFCtrUsuZonDesPla.dblcdUPagoChange(Sender: TObject);
Begin
   If Length(trim(dblcdUPago.Text)) > 0 Then
      edtupagoid.Text := Dm1.cdsUPago.Fieldbyname('Upagonom').AsString
   Else
      edtupagoid.Text := '';
End;

Procedure TFCtrUsuZonDesPla.dblAuxiliarChange(Sender: TObject);
Var
   xsql: String;
Begin
   edtUproid.Text := '';

End;

Procedure TFCtrUsuZonDesPla.fcSFiltraClick(Sender: TObject);
Var
   xsql, xsql2, xsql3, xsql4, xwhere: String;

Begin
   screen.Cursor := crhourglass;
   PERMES.Text := DM1.StrZero(PERMES.Text, 2);
   xWhere := '';
   If Length(Trim(DBlsectorista.Text)) > 0 Then
      xwhere := xwhere + ' And a.Sectorista=''' + DBlsectorista.Text + ''' ';
   If Length(Trim(dblAuxiliar.Text)) > 0 Then
      xwhere := xwhere + ' And a.Usuario=''' + dblAuxiliar.Text + ''' ';
   If Length(Trim(dblcUProceso.Text)) > 0 Then
      xwhere := xwhere + ' And a.Uproid=''' + dblcUProceso.Text + ''' ';
   If Length(Trim(dblcdUPago.Text)) > 0 Then
      xwhere := xwhere + ' And a.Upagoid=''' + dblcdUPago.Text + ''' ';
   If Length(Trim(dblcTipAso.Text)) > 0 Then
      xwhere := xwhere + ' And a.Asotipid=''' + dblcTipAso.Text + ''' ';
   If chksinregglob.Checked Then
      xwhere := xWhere + ' And a.Usuario is null ';
   If chksindescargo.Checked Then
      xwhere := xwhere + ' And a.FecDEs is null ';

   xsql := 'Select ''   ''FLG,b.upagonom,observacion,case When observacion is not null Then ''....'' else null end Obs,a.usuario auxiliar,a.* ' +
      'From Cob_ctr_usu_des_pla a,apo103 B ' +
      'Where a.PERIODO=''' + Perano.Text + permes.Text + ''' ' + xWhere + ' And a.uproid=b.uproid(+) and a.upagoid=b.upagoid(+) ' +
      ' Order by a.Periodo,a.Sectorista,a.Usuario,a.Uproid,a.Upagoid,a.asotipid ';

   xsql2 := 'Select a.periodo,a.Sectorista,a.asotipid,a.usuario auxiliar,a.uproid,a.upagoid,b.upagonom,a.fecrecrep,a.fecdepban,a.fecingcob,a.fecdes,a.numero,a.importe,a.observacion ' +
      'From Cob_ctr_usu_des_pla a,apo103 B ' +
      'Where a.PERIODO=''' + Perano.Text + permes.Text + ''' ' + xWhere + ' And a.uproid=b.uproid(+) and a.upagoid=b.upagoid(+) ' +
      ' Order by a.Periodo,a.Sectorista,a.Usuario,a.Uproid,a.Upagoid,a.asotipid ';

   xsql4 := 'Select Estado,Count(1) Total ' +
      'From  ' +
      '(Select ' +
      'Case When FECDES IS NOT NULL Then ''Descargado'' ' +
      '     When FECINGCOB is null And  FECDEPBAN is null And FECINGCOB is null Then ''No Trabajado'' ' +
      '     When FECINGCOB is not null And FECINGCOB<To_date(sysdate) And  FECDES is null Then ''Descrago Pendiente'' End ESTADO ' +
      'From Cob_ctr_usu_des_pla a,apo103 B ' +
      'Where a.PERIODO=''' + Perano.Text + permes.Text + ''' ' + xWhere + ' And a.uproid=b.uproid(+) and a.upagoid=b.upagoid(+) ' +
      ' Order by a.Periodo,a.Sectorista,a.Usuario,a.Uproid,a.Upagoid,a.asotipid ) ' +
      ' Group by Estado ';

    //Periodos de Consulta en el Estadistico
   xper4 := perano.Text + permes.Text;

   If permes.Text = '01' Then
      xper3 := IntToStr(strtoint(perano.Text) - 1) + '12'
   Else
      xper3 := perano.Text + dm1.StrZero(Trim(IntToStr(strtoint(permes.Text) - 1)), 2);

   If copy(xper3, 5, 2) = '01' Then
      xper2 := IntToStr(strtoint(copy(xper3, 1, 4)) - 1) + '12'
   Else
      xper2 := copy(xper3, 1, 4) + dm1.StrZero(Trim(IntToStr(strtoint(copy(xper3, 5, 2)) - 1)), 2);

   If copy(xper2, 5, 2) = '01' Then
      xper1 := IntToStr(strtoint(copy(xper2, 1, 4)) - 1) + '12'
   Else
      xper1 := copy(xper2, 1, 4) + dm1.StrZero(Trim(IntToStr(strtoint(copy(xper2, 5, 2)) - 1)), 2);

    {   'SELECT A.SECTORISTA,A.USU4,A.UPROID,A.UPAGOID,MAX(B.UPAGONOM)UPAGONAM,A.ASOTIPID,'+
              'SUM(NUM1)NUM1,SUM(IMP1)IMP1,MAX(USU1)USU1,'+
              'SUM(NUM2)NUM2,SUM(IMP2)IMP2,MAX(USU2)USU2,'+
              'SUM(NUM3)NUM3,SUM(IMP3)IMP3,MAX(USU3)USU3,'+
              'SUM(NUM4)NUM4,SUM(IMP4)IMP4,MAX(USU4)USU4,MAX(FLG4)FLG4,''  ''FLG '+
       'FROM '+
       '( '+
         'SELECT UPROID,UPAGOID,ASOTIPID,'+
         'CASE WHEN PERIODO='''+xper1+''' THEN NVL(NUMERO,0)   END NUM1,'+
         'CASE WHEN PERIODO='''+xper1+''' THEN NVL(IMPORTE ,0) END IMP1,'+
         'CASE WHEN PERIODO='''+xper1+''' THEN USUARIO         END USU1,'+
         'CASE WHEN PERIODO='''+xper2+''' THEN NVL(NUMERO,0)   END NUM2,'+
         'CASE WHEN PERIODO='''+xper2+''' THEN NVL(IMPORTE ,0) END IMP2,'+
         'CASE WHEN PERIODO='''+xper2+''' THEN USUARIO         END USU2,'+
         'CASE WHEN PERIODO='''+xper3+''' THEN NVL(NUMERO,0)   END NUM3,'+
         'CASE WHEN PERIODO='''+xper3+''' THEN NVL(IMPORTE,0)  END IMP3,'+
         'CASE WHEN PERIODO='''+xper3+''' THEN USUARIO         END USU3,'+
         'CASE WHEN PERIODO='''+xper4+''' THEN NVL(NUMERO,0)   END NUM4,'+
         'CASE WHEN PERIODO='''+xper4+''' THEN NVL(IMPORTE,0)  END IMP4,'+
         'CASE WHEN PERIODO='''+xper4+''' THEN USUARIO         END USU4,'+
         'CASE WHEN PERIODO='''+xper4+''' THEN FLGDIF          END FLG4,'+
         'CASE WHEN PERIODO='''+xper4+''' THEN OBSDIF          END OBS4,'+
         'PERIODO,TIPO,SECTORISTA,IMPORTE,NUMERO FROM COB_CTR_USU_DES_PLA a '+
         'WHERE '+ xWhere +' and (PERIODO='''+xper4+''' or PERIODO='''+xper3+''' or PERIODO='''+xper2+''' or  PERIODO='''+xper1+''' ) '+
         'ORDER BY SECTORISTA,USUARIO,UPROID,UPAGOID,ASOTIPID,TIPO )a,apo103 b '+
      'WHERE a.uproid=b.uproid(+) and a.upagoid=b.upagoid  GROUP BY A.SECTORISTA,A.USU4,A.UPROID,A.UPAGOID,A.ASOTIPID ';}

   xsql3 :=
      'SELECT A.SECTORISTA,A.UPROID,A.UPAGOID,MAX(B.UPAGONOM)UPAGONAM,A.ASOTIPID,' +
      'SUM(NUM1)NUM1,SUM(IMP1)IMP1,MAX(USU1)USU1,' +
      'SUM(NUM2)NUM2,SUM(IMP2)IMP2,MAX(USU2)USU2,' +
      'SUM(NUM3)NUM3,SUM(IMP3)IMP3,MAX(USU3)USU3,' +
      'SUM(NUM4)NUM4,SUM(IMP4)IMP4,MAX(USU4)USU4,MAX(FLG4)FLG4,MAX(OBS4)OBS4,''  ''FLG ' +
      'FROM ' +
      '( ' +
      'SELECT UPROID,UPAGOID,ASOTIPID,' +
      'CASE WHEN PERIODO=''' + xper1 + ''' THEN NVL(NUMERO,0)   END NUM1,' +
      'CASE WHEN PERIODO=''' + xper1 + ''' THEN NVL(IMPORTE ,0) END IMP1,' +
      'CASE WHEN PERIODO=''' + xper1 + ''' THEN USUARIO         END USU1,' +
      'CASE WHEN PERIODO=''' + xper2 + ''' THEN NVL(NUMERO,0)   END NUM2,' +
      'CASE WHEN PERIODO=''' + xper2 + ''' THEN NVL(IMPORTE ,0) END IMP2,' +
      'CASE WHEN PERIODO=''' + xper2 + ''' THEN USUARIO         END USU2,' +
      'CASE WHEN PERIODO=''' + xper3 + ''' THEN NVL(NUMERO,0)   END NUM3,' +
      'CASE WHEN PERIODO=''' + xper3 + ''' THEN NVL(IMPORTE,0)  END IMP3,' +
      'CASE WHEN PERIODO=''' + xper3 + ''' THEN USUARIO         END USU3,' +
      'CASE WHEN PERIODO=''' + xper4 + ''' THEN NVL(NUMERO,0)   END NUM4,' +
      'CASE WHEN PERIODO=''' + xper4 + ''' THEN NVL(IMPORTE,0)  END IMP4,' +
      'CASE WHEN PERIODO=''' + xper4 + ''' THEN USUARIO         END USU4,' +
      'CASE WHEN PERIODO=''' + xper4 + ''' THEN FLGDIF          END FLG4,' +
      'CASE WHEN PERIODO=''' + xper4 + ''' THEN OBSDIF          END OBS4,' +
      'PERIODO,TIPO,SECTORISTA,IMPORTE,NUMERO,''' + xper4 + ''' PERIODOULT FROM COB_CTR_USU_DES_PLA a ' +
      'WHERE (PERIODO=''' + xper4 + ''' or PERIODO=''' + xper3 + ''' or PERIODO=''' + xper2 + ''' or  PERIODO=''' + xper1 + ''' ) ' + xWhere +
      ' ORDER BY SECTORISTA,USUARIO,UPROID,UPAGOID,ASOTIPID,TIPO )a,apo103 b ' +
      'WHERE a.uproid=b.uproid(+) and a.upagoid=b.upagoid  GROUP BY A.SECTORISTA,A.PERIODOULT,A.UPROID,A.UPAGOID,A.ASOTIPID ';

   dbgEstadistica.selected.Clear;
   dbgEstadistica.Selected.Add('UPAGOID'#9'4'#9#9'F'#9'Lugar');
   dbgEstadistica.Selected.Add('UPAGONAM'#9'25'#9'U.Pago'#9'F'#9'Lugar');
   dbgEstadistica.Selected.Add('ASOTIPID'#9'4'#9'Tip'#9'F');
   dbgEstadistica.Selected.Add('USU1'#9'13'#9'Usuario'#9'F'#9'Periodo-' + xper1);
   dbgEstadistica.Selected.Add('IMP1'#9'13'#9'Importe'#9'F'#9'Periodo-' + xper1);
   dbgEstadistica.Selected.Add('NUM1'#9'6'#9'Num.'#9'F'#9'Periodo-' + xper1);
   dbgEstadistica.Selected.Add('USU2'#9'11'#9'Usuario'#9'F'#9'Periodo-' + xper2);
   dbgEstadistica.Selected.Add('IMP2'#9'13'#9'Importe'#9'F'#9'Periodo-' + xper2);
   dbgEstadistica.Selected.Add('NUM2'#9'6'#9'Num.'#9'F'#9'Periodo-' + xper2);
   dbgEstadistica.Selected.Add('USU3'#9'11'#9'Usuario'#9'F'#9'Periodo-' + xper3);
   dbgEstadistica.Selected.Add('IMP3'#9'13'#9'Importe'#9'F'#9'Periodo-' + xper3);
   dbgEstadistica.Selected.Add('NUM3'#9'6'#9'Num.'#9'F'#9'Periodo-' + xper3);
   dbgEstadistica.Selected.Add('USU4'#9'11'#9'Usuario'#9'F'#9'Periodo-' + xper4);
   dbgEstadistica.Selected.Add('IMP4'#9'13'#9'Importe'#9'F'#9'Periodo-' + xper4);
   dbgEstadistica.Selected.Add('NUM4'#9'6'#9'Num.'#9'F'#9'Periodo-' + xper4);
   dbgEstadistica.Selected.Add('FLG'#9'3'#9'!!'#9'F');

   ppltit1.Caption := 'Periodo - ' + xper1;
   ppltit2.Caption := 'Periodo - ' + xper2;
   ppltit3.Caption := 'Periodo - ' + xper3;
   ppltit4.Caption := 'Periodo - ' + xper4;
   dbgEstadistica.DataSource := Dm1.dsConvenio;

   Dm1.cdsCuentas.Close;
   Dm1.cdsCuentas.DataRequest(xsql);
   Dm1.cdsCuentas.IndexFieldNames := 'SECTORISTA;UPROID;UPAGOID;ASOTIPID';
   Dm1.cdsCuentas.Open;
   TNumericField(Dm1.cdsCuentas.fieldbyname('Importe')).DisplayFormat := '###,##0.#0';
   TNumericField(Dm1.cdsCuentas.fieldbyname('Numero')).DisplayFormat := '###,##0';

   Dm1.cdsTRela.Close;
   Dm1.cdsTRela.DataRequest(xsql2);
   Dm1.cdsTRela.IndexFieldNames := 'PERIODO;SECTORISTA;UPROID;UPAGOID;ASOTIPID';
   Dm1.cdsTRela.Open;

   Dm1.cdsConvenio.Close;
   Dm1.cdsConvenio.DataRequest(xsql3);
   Dm1.cdsConvenio.IndexFieldNames := 'SECTORISTA;UPROID;UPAGOID;ASOTIPID';
   dm1.cdsConvenio.Open;
   TNumericField(Dm1.cdsConvenio.fieldbyname('IMP1')).DisplayFormat := '###,##0.#0';
   TNumericField(Dm1.cdsConvenio.fieldbyname('IMP2')).DisplayFormat := '###,##0.#0';
   TNumericField(Dm1.cdsConvenio.fieldbyname('IMP3')).DisplayFormat := '###,##0.#0';
   TNumericField(Dm1.cdsConvenio.fieldbyname('IMP4')).DisplayFormat := '###,##0.#0';
   TNumericField(Dm1.cdsConvenio.fieldbyname('NUM1')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsConvenio.fieldbyname('NUM2')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsConvenio.fieldbyname('NUM3')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsConvenio.fieldbyname('NUM4')).DisplayFormat := '###,##0';

   Dm1.cdsDLabo.Close;
   Dm1.cdsDLabo.DataRequest(xsql4);
   Dm1.cdsDLabo.Open;

   dbgControlUsu.DataSource := Dm1.dsCuentas;
   actFooter;
   actFooter2;
   Grafico01();
   Grafico02();
   screen.Cursor := crdefault;

End;

Procedure TFCtrUsuZonDesPla.btnModificaClick(Sender: TObject);
Begin

  If Dm1.cdsCuentas.Active then
     Begin
      If Dm1.cdsCuentas.RecordCount>0 then
       Begin
         If UpperCase(trim(DM1.wUsuario)) <> UpperCase(trim(DM1.cdsCuentas.FieldByName('SECTORISTA').AsString)) Then
          Begin
            ShowMessage('Solo puede tener control a las observaciones de las Zonas a su cargo...');
            Exit;
          End;
         pnlObservacion.Left := 304;
         pnlObservacion.Top := 224;
         pnlObservacion.Visible := True;
         Observacion.Text := dm1.cdsCuentas.FieldByName('Observacion').AsString;
       End;
     End;
End;

Procedure TFCtrUsuZonDesPla.Button1Click(Sender: TObject);
Begin
   pnlObservacion.Visible := False;
   pnlObservacion.Height := 161;
   Observacion.ReadOnly := False;
   grbObservacion.Enabled := True;

End;

Procedure TFCtrUsuZonDesPla.btnActualizaClick(Sender: TObject);
Var
   xsql, xobs: String;
   i: integer;
   b: TBookmark;
Begin

   xobs := '';
   For I := 0 To Observacion.Lines.count - 1 Do
   Begin
      xobs := xobs + ' ' + Trim(Observacion.Lines.Strings[i]);
   End;
   xobs := Trim(xobs);

   If PageControl1.TabIndex = 0 Then
   Begin
      xsql := 'Update cob_ctr_usu_des_pla set Observacion=' + QuotedStr(xobs) + ' Where ' +
         ' SECTORISTA=''' + Dm1.cdsCuentas.FieldByName('SECTORISTA').AsString + ''' And ' +
//             ' USUARIO='''+Dm1.cdsCuentas.FieldByName('USUARIO').AsString+''' And '+
      ' UPROID=''' + Dm1.cdsCuentas.FieldByName('UPROID').AsString + ''' And ' +
         ' UPAGOID=''' + Dm1.cdsCuentas.FieldByName('UPAGOID').AsString + ''' And ' +
         ' PERIODO=''' + Dm1.cdsCuentas.FieldByName('PERIODO').AsString + ''' And ' +
         ' TIPO=''' + Dm1.cdsCuentas.FieldByName('TIPO').AsString + ''' And ' +
         ' ASOTIPID=''' + Dm1.cdsCuentas.FieldByName('ASOTIPID').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      b := DM1.cdsCuentas.GetBookmark;
      DM1.cdsCuentas.DisableControls;
      DM1.cdsCuentas.First;
      fcSFiltraClick(Self);
      DM1.cdsCuentas.GotoBookmark(b);
      DM1.cdsCuentas.EnableControls;
      DM1.cdsCuentas.FreeBookmark(b);
   End;

   If PageControl1.TabIndex = 1 Then
   Begin
      xsql := 'Update cob_ctr_usu_des_pla set OBSDIF=' + QuotedStr(xobs) + ',FLGDIF=''1'' Where ' +
         ' SECTORISTA=''' + Dm1.cdsConvenio.FieldByName('SECTORISTA').AsString + ''' And ' +
//             ' USUARIO='''+Dm1.cdsConvenio.FieldByName('USU4').AsString+''' And '+
      ' UPROID=''' + Dm1.cdsConvenio.FieldByName('UPROID').AsString + ''' And ' +
         ' UPAGOID=''' + Dm1.cdsConvenio.FieldByName('UPAGOID').AsString + ''' And ' +
         ' PERIODO=''' + perano.Text + permes.Text + ''' And ' +
             //  ' TIPO='''+Dm1.cdsConvenio.FieldByName('TIPO').AsString+''' And '+
      ' ASOTIPID=''' + Dm1.cdsConvenio.FieldByName('ASOTIPID').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      b := DM1.cdsConvenio.GetBookmark;
      DM1.cdsConvenio.DisableControls;
      DM1.cdsConvenio.First;
      fcSFiltraClick(Self);
      DM1.cdsConvenio.GotoBookmark(b);
      DM1.cdsConvenio.EnableControls;
      DM1.cdsConvenio.FreeBookmark(b);
   End;

End;

Procedure TFCtrUsuZonDesPla.dbgControlUsuDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin

   If Trim(DM1.cdsCuentas.FieldByName('OBS').AsString) = '....' Then
   Begin
      If Field.DisplayName = 'OBS' Then
      Begin
         dbgControlUsu.Canvas.Font.Size := 12;
         dbgControlUsu.Canvas.Font.Style := [fsBold];
         dbgControlUsu.Canvas.Brush.Color := clYellow;
         dbgControlUsu.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

   If Length(TRIM(DM1.cdsCuentas.FieldByName('FECDES').AsString)) > 0 Then
   Begin
      If Field.DisplayName = 'FLG' Then
      Begin
         dbgControlUsu.Canvas.Brush.Color := clBlue;
         dbgControlUsu.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

   If (Length(TRIM(DM1.cdsCuentas.FieldByName('FECINGCOB').AsString)) = 0) And
      (Length(TRIM(DM1.cdsCuentas.FieldByName('FECDEPBAN').AsString)) = 0) And
      (Length(TRIM(DM1.cdsCuentas.FieldByName('FECINGCOB').AsString)) = 0) Then
   Begin
      If Field.DisplayName = 'FLG' Then
      Begin
         dbgControlUsu.Canvas.Brush.Color := clGreen;
         dbgControlUsu.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

   If (Length(TRIM(DM1.cdsCuentas.FieldByName('FECINGCOB').AsString)) = 10) And
      ((DM1.cdsCuentas.FieldByName('FECINGCOB').AsDateTime < date) And
      (Length(TRIM(DM1.cdsCuentas.FieldByName('FECDES').AsString)) = 0)) Then
   Begin
      If Field.DisplayName = 'FLG' Then
      Begin
         dbgControlUsu.Canvas.Brush.Color := clRed;
         dbgControlUsu.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

End;

Procedure TFCtrUsuZonDesPla.dbgControlUsuDblClick(Sender: TObject);
Begin

   If dm1.cdsCuentas.FieldByName('Obs').AsString = '....' Then
   Begin
      pnlObservacion.Left := 304;
      pnlObservacion.Top := 224;
      pnlObservacion.Height := 121;
      Observacion.Text := Dm1.cdsCuentas.FieldByName('Observacion').asstring;
      pnlObservacion.Visible := True;
      Observacion.ReadOnly := True;

   End;
End;

Procedure TFCtrUsuZonDesPla.dblcTipAsoChange(Sender: TObject);
Begin
   If Length(Trim(dblcTipAso.Text)) = 2 Then
      edtTipAso.Text := Dm1.cdsTAso.fieldbyname('Asotipdes').AsString
   Else
      edtTipAso.Text := '';
End;

Procedure TFCtrUsuZonDesPla.btnPrintClick(Sender: TObject);
Begin



 If Dm1.cdsCuentas.Active then
    Begin
     If Dm1.cdsCuentas.RecordCount>0 then
      Begin

      If chkExcel.Checked Then
         Begin
          dtgData.DataSource := Dm1.dsTRela;
          Try
           DM1.HojaExcel('Resumen', Dm1.dsTRela, dtgData);
          Except
            On Ex: Exception Do
             Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
          End;
         End
      Else
        Begin
          lblperanopermes.Caption := perano.Text + '-' + permes.Text;
          ppbp1.DataSource := dm1.dsCuentas;
          ppRepCtr.Print;
          ppRepCtr.Stop;
        End;
      End;
   End;   

End;

Procedure TFCtrUsuZonDesPla.dbgEstadisticaDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);

Var
   XDIF, XPOR: currency;
Begin

   If (Field.DisplayName = 'USU4') Or (Field.DisplayName = 'IMP4') Or (Field.DisplayName = 'NUM4') Then
   Begin
      dbgEstadistica.Canvas.Brush.Color := clBtnFace; //clAqua;
      dbgEstadistica.Canvas.Font.Color := clBlack;
      dbgEstadistica.DefaultDrawDataCell(Rect, Field, State);
   End;

   If Dm1.cdsConvenio.FieldByName('IMP4').AsCurrency > 0 Then
   Begin
      XDIF := Dm1.cdsConvenio.FieldByName('IMP4').AsCurrency - Dm1.cdsConvenio.FieldByName('IMP3').AsCurrency;
      XPOR := (XDIF * 100) / Dm1.cdsConvenio.FieldByName('IMP4').AsCurrency;
   End;

   If ((XPOR <= -20) Or (XPOR >= 20)) And (Length(Trim(Dm1.cdsConvenio.FieldByName('FLG4').AsString)) = 0) Then
   Begin
      If (Field.DisplayName = 'FLG') Then
      Begin
         dbgEstadistica.Canvas.Brush.Color := clRed;
         dbgEstadistica.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;

   If ((XPOR <= -20) Or (XPOR >= 20)) And (Length(Trim(Dm1.cdsConvenio.FieldByName('FLG4').AsString)) = 1) Then
   Begin
      If (Field.DisplayName = 'FLG') Then
      Begin
         dbgEstadistica.Canvas.Brush.Color := clYellow;
         dbgEstadistica.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;


End;

Procedure TFCtrUsuZonDesPla.fcShapeBtn1Click(Sender: TObject);
Begin

 If Dm1.cdsConvenio.Active then
      Begin
        If Dm1.cdsConvenio.RecordCount>0 then
         Begin

            If chkExcel2.Checked Then
                Begin
                   dtgData.DataSource := dm1.dsConvenio;
                 Try
                   DM1.HojaExcel('Descrago Tres Ultimos Meses', dm1.dsConvenio, dtgData);
                 Except
                 On Ex: Exception Do
                    Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
                 End;
                End
            Else
               Begin
                  ppbp1.DataSource := dm1.dsConvenio;
                  ppRepest.Print;
                  ppRepest.Stop;
            End;
         End;
      End;
End;

Procedure TFCtrUsuZonDesPla.fcShapeBtn2Click(Sender: TObject);
Begin

    If Dm1.cdsConvenio.Active then
      Begin
        If Dm1.cdsConvenio.RecordCount>0 then
         Begin
            If UpperCase(trim(DM1.wUsuario)) <> UpperCase(trim(DM1.cdsConvenio.FieldByName('SECTORISTA').AsString)) Then
              Begin
               ShowMessage('Solo puede tener control el Sectorista responsable...');
               Exit;
              End;
              pnlObservacion.Left := 304;
              pnlObservacion.Top := 224;
              pnlObservacion.Visible := True;
              Observacion.Text := dm1.cdsConvenio.FieldByName('OBS4').AsString;
         End;
       End;

End;

Procedure TFCtrUsuZonDesPla.dbgEstadisticaDblClick(Sender: TObject);
Begin

  If dm1.cdsConvenio.Active Then
    Begin
      If dm1.cdsConvenio.RecordCount > 0 then
        Begin
          If dm1.cdsConvenio.FieldByName('FLG4').AsString = '1' Then
            Begin
              pnlObservacion.Left := 304;
              pnlObservacion.Top := 224;
              pnlObservacion.Height := 121;
              Observacion.Text := Dm1.cdsConvenio.FieldByName('OBS4').asstring;
              pnlObservacion.Visible := True;
              Observacion.ReadOnly := True;
            End;
        End;
    End;
End;

Procedure TFCtrUsuZonDesPla.actFooter;
Var
   B: TBookmark;
   xImporte: currency;
   xNumero: Integer;

Begin
   dbgControlUsu.ColumnByName('Numero').FooterValue := '0';
   dbgControlUsu.ColumnByName('Importe').FooterValue := '0.00';

   //Guardo la posicion
   B := Dm1.cdsCuentas.GetBookmark;
   Dm1.cdsCuentas.DisableControls;

   Dm1.cdsCuentas.First;
   xImporte := 0;
   xNumero := 0;

   While Not Dm1.cdsCuentas.Eof Do
   Begin
      xImporte := xImporte + Dm1.cdsCuentas.FieldByName('Importe').ascurrency;
      xNumero := xNumero + Dm1.cdsCuentas.FieldByName('Numero').AsInteger;
      Dm1.cdsCuentas.Next;
   End;

   dbgControlUsu.ColumnByName('Numero').FooterValue := FormatCurr('###,##0', xNumero);
   dbgControlUsu.ColumnByName('Importe').FooterValue := FormatCurr('###,##0.#0', xImporte);

   //Me posiciono nuevamente en el posicion marcada
   Dm1.cdsCuentas.GotoBookmark(B);
   Dm1.cdsCuentas.EnableControls;
   Dm1.cdsCuentas.FreeBookmark(B);

End;

Procedure TFCtrUsuZonDesPla.actFooter2;
Var
   B: TBookmark;
   XIMP1, XIMP2, XIMP3, XIMP4: currency;
   XNUM1, XNUM2, XNUM3, XNUM4: Integer;

Begin

   dbgEstadistica.ColumnByName('NUM1').FooterValue := '0';
   dbgEstadistica.ColumnByName('NUM2').FooterValue := '0';
   dbgEstadistica.ColumnByName('NUM3').FooterValue := '0';
   dbgEstadistica.ColumnByName('NUM4').FooterValue := '0';

   dbgEstadistica.ColumnByName('IMP1').FooterValue := '0.00';
   dbgEstadistica.ColumnByName('IMP2').FooterValue := '0.00';
   dbgEstadistica.ColumnByName('IMP3').FooterValue := '0.00';
   dbgEstadistica.ColumnByName('IMP4').FooterValue := '0.00';

   //Guardo la posicion
   B := Dm1.cdsConvenio.GetBookmark;
   Dm1.cdsConvenio.DisableControls;

   Dm1.cdsConvenio.First;
   xIMP1 := 0;
   xIMP2 := 0;
   xIMP3 := 0;
   xIMP4 := 0;
   xNUM1 := 0;
   xNUM2 := 0;
   xNUM3 := 0;
   xNUM4 := 0;

   vIMP1 := 0;
   vIMP2 := 0;
   vIMP3 := 0;
   vIMP4 := 0;
   vNUM1 := 0;
   vNUM2 := 0;
   vNUM3 := 0;
   vNUM4 := 0;

   While Not Dm1.cdsConvenio.Eof Do
   Begin
      XIMP1 := XIMP1 + Dm1.cdsConvenio.FieldByName('IMP1').ascurrency;
      XIMP2 := XIMP2 + Dm1.cdsConvenio.FieldByName('IMP2').ascurrency;
      XIMP3 := XIMP3 + Dm1.cdsConvenio.FieldByName('IMP3').ascurrency;
      XIMP4 := XIMP4 + Dm1.cdsConvenio.FieldByName('IMP4').ascurrency;

      VIMP1 := VIMP1 + Dm1.cdsConvenio.FieldByName('IMP1').ascurrency;
      VIMP2 := VIMP2 + Dm1.cdsConvenio.FieldByName('IMP2').ascurrency;
      VIMP3 := VIMP3 + Dm1.cdsConvenio.FieldByName('IMP3').ascurrency;
      VIMP4 := VIMP4 + Dm1.cdsConvenio.FieldByName('IMP4').ascurrency;

      XNUM1 := XNUM1 + Dm1.cdsConvenio.FieldByName('NUM1').AsInteger;
      XNUM2 := XNUM2 + Dm1.cdsConvenio.FieldByName('NUM2').AsInteger;
      XNUM3 := XNUM3 + Dm1.cdsConvenio.FieldByName('NUM3').AsInteger;
      XNUM4 := XNUM4 + Dm1.cdsConvenio.FieldByName('NUM4').AsInteger;

      VNUM1 := VNUM1 + Dm1.cdsConvenio.FieldByName('NUM1').AsInteger;
      VNUM2 := VNUM2 + Dm1.cdsConvenio.FieldByName('NUM2').AsInteger;
      VNUM3 := VNUM3 + Dm1.cdsConvenio.FieldByName('NUM3').AsInteger;
      VNUM4 := VNUM4 + Dm1.cdsConvenio.FieldByName('NUM4').AsInteger;

      Dm1.cdsConvenio.Next;
   End;

   dbgEstadistica.ColumnByName('NUM1').FooterValue := FormatCurr('###,##0', XNUM1);
   dbgEstadistica.ColumnByName('NUM2').FooterValue := FormatCurr('###,##0', XNUM2);
   dbgEstadistica.ColumnByName('NUM3').FooterValue := FormatCurr('###,##0', XNUM3);
   dbgEstadistica.ColumnByName('NUM4').FooterValue := FormatCurr('###,##0', XNUM4);

   dbgEstadistica.ColumnByName('IMP1').FooterValue := FormatCurr('###,##0.#0', XIMP1);
   dbgEstadistica.ColumnByName('IMP2').FooterValue := FormatCurr('###,##0.#0', XIMP2);
   dbgEstadistica.ColumnByName('IMP3').FooterValue := FormatCurr('###,##0.#0', XIMP3);
   dbgEstadistica.ColumnByName('IMP4').FooterValue := FormatCurr('###,##0.#0', XIMP4);

   //Me posiciono nuevamente en el posicion marcada
   Dm1.cdsConvenio.GotoBookmark(B);
   Dm1.cdsConvenio.EnableControls;
   Dm1.cdsConvenio.FreeBookmark(B);

End;

Procedure TFCtrUsuZonDesPla.PageControl1Change(Sender: TObject);
Begin
   If Dm1.cdsConvenio.Active Then
     If  Dm1.cdsConvenio.RecordCount> 0 Then  actFooter2;
End;

Procedure TFCtrUsuZonDesPla.dbgControlUsuRowChanged(Sender: TObject);
Begin

   If (PageControl1.TabIndex = 0) And (dm1.cdsConvenio.Active = True) Then
   Begin
      If dm1.cdsConvenio.RecordCount > 0 Then
      Begin
         Dm1.cdsConvenio.SetKey;
         Dm1.cdsConvenio.FieldByName('SECTORISTA').AsString := Dm1.cdsCuentas.FieldByName('SECTORISTA').AsString;
         Dm1.cdsConvenio.FieldByName('UPROID').AsString := Dm1.cdsCuentas.FieldByName('UPROID').AsString;
         Dm1.cdsConvenio.FieldByName('UPAGOID').AsString := Dm1.cdsCuentas.FieldByName('UPAGOID').AsString;
         Dm1.cdsConvenio.FieldByName('ASOTIPID').AsString := Dm1.cdsCuentas.FieldByName('ASOTIPID').AsString;
         Dm1.cdsConvenio.GotoKey;
      End;
   End;
End;

Procedure TFCtrUsuZonDesPla.dbgEstadisticaRowChanged(Sender: TObject);
Begin

   If (PageControl1.TabIndex = 1) And (dm1.cdsCuentas.Active = True) Then
   Begin
      If dm1.cdsCuentas.RecordCount > 0 Then
      Begin
         Dm1.cdsCuentas.SetKey;
         Dm1.cdsCuentas.FieldByName('SECTORISTA').AsString := Dm1.cdsConvenio.FieldByName('SECTORISTA').AsString;
         Dm1.cdsCuentas.FieldByName('UPROID').AsString := Dm1.cdsConvenio.FieldByName('UPROID').AsString;
         Dm1.cdsCuentas.FieldByName('UPAGOID').AsString := Dm1.cdsConvenio.FieldByName('UPAGOID').AsString;
         Dm1.cdsCuentas.FieldByName('ASOTIPID').AsString := Dm1.cdsConvenio.FieldByName('ASOTIPID').AsString;
         Dm1.cdsCuentas.GotoKey;
      End;
   End;
End;

Procedure TFCtrUsuZonDesPla.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   dm1.cdsMGrupo.Close;
   dm1.cdsMGrupo.IndexFieldNames := '';
   dm1.cdsGrupos.Close;
   dm1.cdsGrupos.IndexFieldNames := '';
   dm1.cdsUPro.Close;
   dm1.cdsUPro.IndexFieldNames := '';
   dm1.cdsTAso.Close;
   dm1.cdsTAso.IndexFieldNames := '';
   dm1.cdsCuentas.Close;
   dm1.cdsCuentas.IndexFieldNames := '';
   dm1.cdsUPago.Close;
   dm1.cdsUPago.IndexFieldNames := '';
   dm1.cdsTRela.Close;
   dm1.cdsTRela.IndexFieldNames := '';
   dm1.cdsConvenio.Close;
   dm1.cdsConvenio.IndexFieldNames := '';
End;

Procedure TFCtrUsuZonDesPla.permesExit(Sender: TObject);
Begin
   PERMES.Text := DM1.StrZero(PERMES.Text, 2);
End;

Procedure TFCtrUsuZonDesPla.Button2Click(Sender: TObject);
Begin
   pnlGraficos.Visible := False;
   If FileExists('C:\grafico01.JPG') Then DeleteFile('C:\grafico01.JPG') ;
   If FileExists('C:\grafico02.JPG') Then DeleteFile('C:\grafico02.JPG') ;

End;

Procedure TFCtrUsuZonDesPla.fcShapeBtn3Click(Sender: TObject);
Var
   XSQL: String;
Begin

 If Dm1.cdsConvenio.Active then
     Begin
       If Dm1.cdsConvenio.RecordCount>0 then
         Begin
          pnlGraficos.Left := 14;
          pnlGraficos.Top := 145;
          pnlGraficos.Visible := True;
          Grafico01();
         End;
      End;
End;

Procedure TFCtrUsuZonDesPla.Grafico01;
Var
   Chart1: TChart;
   Chart2: TChart;
   Series1: TBarSeries;
   Series2: TBarSeries;
   Image: TImage;
   Jpeg: TJpegImage;
   MemStr: TMemoryStream;
   i, x: integer;
   XDIF, XPOR: currency;

Begin

 //Numero de Registros
   Chart1 := TChart.Create(Nil);
   Chart1.Width := 400;
   Chart1.Height := 250;
   Chart1.AxisVisible := True;
   Chart1.Legend.Visible := True;
   Chart1.Legend.Alignment := laBottom;
   Chart1.Gradient.EndColor := clWhite;
   Chart1.Gradient.StartColor := 16777088;
   Chart1.Gradient.Visible := True;
   Chart1.Legend.Font.Size := 8;

   If VNUM4 > 0 Then
   Begin
      XDIF := VNUM4 - VNUM3;
      XPOR := (XDIF * 100) / VNUM4;
   End;

   Series1 := TBarSeries.Create(Chart1);
   Series1.ParentChart := Chart1;
   Series1.Add(VNUM1, '', $0080FF80);
   Series1.Add(VNUM2, '', $0080FF80);
   Series1.Add(VNUM3, '', $0080FF80);
   If ((XPOR <= -20) Or (XPOR >= 20)) Then
      Series1.Add(VNUM4, '', clred)
   Else
      Series1.Add(VNUM4, '', clBtnFace);
   Series1.BarWidthPercent := 60;

   CHART1.Series[0].XLabel[0] := '|' + xper1 + '|';
   CHART1.Series[0].XLabel[1] := '|' + xper2 + '|';
   CHART1.Series[0].XLabel[2] := '|' + xper3 + '|';
   CHART1.Series[0].XLabel[3] := '|' + xper4 + '|';

   Image := TImage.Create(Nil);
   Image.Width := 457;
   Image.Height := CharT1.Height;

   Chart1.LeftAxis.Title.Caption := 'Numero de Asociados';
   Chart1.Draw(Image3.Canvas, Image.BoundsRect);
   Jpeg := TJpegImage.Create;
   Jpeg.Assign(Image3.Picture.Bitmap);
   Jpeg.SaveToFile('C:\grafico01.jpg');

   //Importe descargado
   Chart2 := TChart.Create(Nil);
   Chart2.Width := 450;
   Chart2.Height := 250;
   Chart2.AxisVisible := True;
   Chart2.Legend.Visible := True;
   Chart2.Legend.Alignment := laBottom;
   Chart2.Gradient.EndColor := clWhite;
   Chart2.Gradient.StartColor := 16777088;
   Chart2.Gradient.Visible := True;
   Chart2.Legend.Font.Size := 8;

   Series2 := TBarSeries.Create(Chart2);
   Series2.ParentChart := Chart2;
   Series2.Addy(VIMP1, '', clAqua);
   Series2.Addy(VIMP2, '', clAqua);
   Series2.Addy(VIMP3, '', clAqua);
   If ((XPOR <= -20) Or (XPOR >= 20)) Then
      Series2.Addy(VIMP4, '', clred)
   Else
      Series2.Addy(VIMP4, '', clBtnFace);
   Series2.BarWidthPercent := 60;

   CHART2.Series[0].XLabel[0] := '|' + xper1 + '|';
   CHART2.Series[0].XLabel[1] := '|' + xper2 + '|';
   CHART2.Series[0].XLabel[2] := '|' + xper3 + '|';
   CHART2.Series[0].XLabel[3] := '|' + xper4 + '|';

   Image := TImage.Create(Nil);
   Image.Width := Chart2.Width;
   Image.Width := 464;
   Image.Height := CharT2.Height;

   Chart2.LeftAxis.Title.Caption := 'Importe Cobrado';
   Chart2.Draw(Image4.Canvas, Image.BoundsRect);

   Jpeg := TJpegImage.Create;
   Jpeg.Assign(Image4.Picture.Bitmap);
   Jpeg.SaveToFile('C:\grafico02.jpg');
   image3.Refresh;
   image4.Refresh;

End;

Procedure TFCtrUsuZonDesPla.Grafico02;
Var
   Chart3: TChart;
   Series_a2: TPieSeries;
   Image: TImage;
   Jpeg: TJpegImage;
   MemStr: TMemoryStream;
   i, x: integer;
   XDIF, XPOR: currency;
   vnum: double;
   vcolor: TColor;
   title: String;
Begin

   Chart3 := TChart.Create(Nil);
   Chart3.Width := 400;
   Chart3.Height := 250;
   Chart3.AxisVisible := True;
   Chart3.Legend.Visible := True;
   If chkvalor1.Checked Then
      Chart3.Legend.TextStyle := ltsRightValue
   Else
   Chart3.Legend.TextStyle := ltsRightPercent;
   Chart3.Legend.Alignment := laBottom;
   Chart3.Gradient.EndColor := clWhite;
   Chart3.Gradient.StartColor := 16777088;
   Chart3.Gradient.Visible := True;
   title := 'DESCARGO DE PLANILLA PERIODO ' + perano.Text + '-' + permes.Text;
   Chart3.Title.Text.Text := title;
   Chart3.Title.Visible := True;

   Series_a2 := TPieSeries.Create(Chart3);
   Series_a2.ParentChart := Chart3;

   Dm1.cdsDLabo.First;
   i := 0;

   While Not Dm1.cdsDLabo.Eof Do
   Begin
      vnum := Dm1.cdsDLabo.FieldByName('Total').AsCurrency;
      If Dm1.cdsDLabo.FieldByName('ESTADO').AsString = 'Descargado' Then vcolor := clBlue;
      If Dm1.cdsDLabo.FieldByName('ESTADO').AsString = 'No Trabajado' Then vcolor := clGreen;
      If Dm1.cdsDLabo.FieldByName('ESTADO').AsString = 'Descrago Pendiente' Then vcolor := clred;
      Series_a2.Add(VNUM, '', vcolor);
      CHART3.Series[0].XLabel[i] := Dm1.cdsDLabo.FieldByName('ESTADO').AsString;
      i := i + 1;
      Dm1.cdsDLabo.Next
   End;

   Image := TImage.Create(Nil);
   Image.Width := 464;
   Image.Height := 250;

   Chart3.LeftAxis.Title.Caption := 'Importe Cobrado';
   Chart3.Draw(Image5.Canvas, Image.BoundsRect);
   Jpeg := TJpegImage.Create;
   Jpeg.Assign(Image5.Picture.Bitmap);

   If chkvalor1.Checked  Then Jpeg.SaveToFile('C:\grafico03A.jpg')
   ELSE  Jpeg.SaveToFile('C:\grafico03B.jpg');

   image5.Refresh;
End;

Procedure TFCtrUsuZonDesPla.Button3Click(Sender: TObject);
Begin
   pnlGrafico2.Visible := False;
   If FileExists('C:\grafico03A.JPG') Then DeleteFile('C:\grafico03A.JPG') ;
   If FileExists('C:\grafico03B.JPG') Then DeleteFile('C:\grafico03B.JPG') ;
End;

Procedure TFCtrUsuZonDesPla.fcShapeBtn4Click(Sender: TObject);
Begin
  If Dm1.cdsCuentas.Active then
   Begin
    If Dm1.cdsCuentas.RecordCount>0 then
      Begin
      pnlGrafico2.Top := 144;
      pnlGrafico2.Left := 495;
      pnlGrafico2.Visible := True;
      Grafico02();
     End;
   End;

End;

Procedure TFCtrUsuZonDesPla.chkvalor1Click(Sender: TObject);
Begin
   Grafico02();
End;

Procedure TFCtrUsuZonDesPla.BitBtn1Click(Sender: TObject);
Var
   xsql: String;
Begin

   XSQL := 'SELECT '' '' FROM dual ';
   Dm1.cdsDFam.Close;
   Dm1.cdsDFam.DataRequest(XSQL);
   Dm1.cdsDFam.Open;
   dtgData.DataSource := DM1.dsDFam;
   DM1.HojaExcel('Graficos', dm1.dsDFam, dtgData);

   If chkvalor1.Checked  Then  DM1.WS.Shapes.AddPicture('C:\grafico03A.JPG', 1, 1, 1, 1, 300, 300)
   Else   DM1.WS.Shapes.AddPicture('C:\grafico03B.JPG', 1, 1, 1, 1, 300, 300);
   Dm1.cdsDFam.Close;
End;

Procedure TFCtrUsuZonDesPla.BitBtn2Click(Sender: TObject);
Var
   xsql: String;
Begin
   XSQL := 'SELECT '' '' FROM dual ';
   Dm1.cdsDFam.Close;
   Dm1.cdsDFam.DataRequest(XSQL);
   Dm1.cdsDFam.Open;
   dtgData.DataSource := DM1.dsDFam;
   DM1.HojaExcel('Graficos', dm1.dsDFam, dtgData);
   DM1.WS.Shapes.AddPicture('C:\grafico01.jpg', 1, 1, 1, 1, 300, 300);
   DM1.WS.Shapes.AddPicture('C:\grafico02.jpg', 1, 1, 1, 300, 300, 300);
   Dm1.cdsDFam.Close;
End;

procedure TFCtrUsuZonDesPla.btnCerrarClick(Sender: TObject);
begin
   close;
end;

procedure TFCtrUsuZonDesPla.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppD1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

End.

