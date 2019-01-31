Unit COB831;

// HPP_200927_COB por RMEDINA
// Memorándum 678-2009-DM-COB(13/7/2009) - SAR-2009-0582(14/7/2009) - DAD-RM-2009-0110(16/7/2009)
// Reporte de Cesantes de 19990 o AFP con deuda pendiente
// HPC_201223_COB : Actualización por Fondo Protección de Desgravamen DAF_2012000418_COB_1
//                   Reporte de Cesantes del Régimen 19990 o AFP con deuda pendiente 
// DPP_201218_COB : Pase a producción se realiza a partir del HPC_201223_COB
// HPC_201732_COB : Mejoras en el reporte de cesantes 19990 y AFP con deuda

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Wwdbdlg, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
   ComCtrls, fcButton, fcImgBtn, fcShapeBtn, wwdblook, Mask, wwdbedit,
   Wwdbspin, DB, DBClient, DBGrids, Buttons, ppComm, ppRelatv, ppProd,
   ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppDB, ppDBPipe,
   //Inicio HPC_201732_COB: Nueva libreria en Mejoras en el reporte de cesantes 19990 y AFP con deuda
   ppDBBDE, wwExport, shellapi, wwriched, ppEndUsr, ppVar, ppParameter,
   jpeg;
   //Fin HPC_201732_COB

Type
   TFCesRegPen = Class(TForm)
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      dblcUProceso: TwwDBLookupCombo;
      Panel1: TPanel;
      edtUproid: TEdit;
      Panel2: TPanel;
      edtupagoid: TEdit;
      dblcdUPago: TwwDBLookupComboDlg;
      fcSFiltra: TfcShapeBtn;
      Label5: TLabel;
      dbgConsulta: TwwDBGrid;
      Panel3: TPanel;
      EdtDpto: TEdit;
      Label1: TLabel;
      dblcDptoid: TwwDBLookupCombo;
      fcShapeBtn2: TfcShapeBtn;
      ppRConsulta: TppReport;
      ppBDEPipeline1: TppBDEPipeline;
      ppD1: TppDesigner;
      btnPrint: TfcShapeBtn;
      ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel25: TppLabel;
    //Inicio HPC_201732_COB: objeto eliminado en Mejoras en el reporte de cesantes 19990 y AFP con deuda
    //ppLabel26: TppLabel;
    //Fin HPC_201732_COB
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel30: TppLabel;
    ppLabel36: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    pplbImpresoPor: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine20: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape5: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel31: TppLabel;
    btnSalir: TBitBtn;
    Label2: TLabel;
    //Inicio HPC_201732_COB: nuevos objeto en Mejoras en el reporte de cesantes 19990 y AFP con deuda
    chkIsCesantes20530: TCheckBox;
    ppImage1: TppImage;
    //Fin HPC_201732_COB
      Procedure FormActivate(Sender: TObject);
      Procedure dblcUProcesoChange(Sender: TObject);
      Procedure dblcdUPagoChange(Sender: TObject);
      Procedure dblcdUPagoExit(Sender: TObject);
      Procedure dblcDptoidChange(Sender: TObject);
      Procedure fcSFiltraClick(Sender: TObject);
      Procedure actfoot1();
      Procedure Opciones(AOptions: TwwExportOptions);
      Procedure dbgConsultaCalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure fcShapeBtn2Click(Sender: TObject);
      Procedure btnPrintClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //Inicio HPC_201732_COB: Mejoras en el reporte de cesantes 19990 y AFP con deuda
    procedure chkIsCesantes20530Click(Sender: TObject);
    //Fin HPC_201732_COB
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FCesRegPen: TFCesRegPen;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFCesRegPen.FormActivate(Sender: TObject);
Var
   xsql: String;
Begin
   //Consulta de Unidad de Proceso
   xsql := 'Select UPROID,DPTOID,UPRONOM from APO102 ';
   Dm1.cdsUPro.Close;
   Dm1.cdsUPro.DataRequest(xsql);
   Dm1.cdsUPro.Open;
   dblcUProceso.LookupTable := Dm1.cdsUPro;
   dblcUProceso.LookupField := 'UPROID';

   //Consulta de Departamento
   xsql := 'Select DPTOID,DPTODES from apo158 ';
   Dm1.cdsDpto.Close;
   Dm1.cdsDpto.DataRequest(xsql);
   Dm1.cdsDpto.Open;
   dblcDptoid.LookupTable := Dm1.cdsDpto;
   dblcDptoid.LookupField := 'DPTOID';

   dbgConsulta.Selected.Add('DPTODES'#9'12'#9'Departamento'#9'F');
   dbgConsulta.Selected.Add('UPRONOM'#9'20'#9'Unidad de Proceso'#9#9);
   dbgConsulta.Selected.Add('UPAGONOM'#9'20'#9'Unidad de Pago'#9#9);
   dbgConsulta.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Modular'#9#9);
   dbgConsulta.Selected.Add('ASOAPENOM'#9'25'#9'Apellidos y Nombres'#9#9);
   dbgConsulta.Selected.Add('REGPENABR'#9'07'#9'Reg.Pen.'#9#9);
   dbgConsulta.Selected.Add('CREDID'#9'07'#9'Crédito'#9#9);
   dbgConsulta.Selected.Add('CREFOTORG'#9'10'#9'Fecha~Otorg.'#9'F'#9);
   dbgConsulta.Selected.Add('CRENUMCUO'#9'5'#9'Nro.~Cuotas'#9'F'#9);
   dbgConsulta.Selected.Add('CREMTOOTOR'#9'13'#9'Monto~Otorg.'#9#9);
   dbgConsulta.Selected.Add('ANTI_MOR'#9'4'#9'Antig.'#9'F'#9'Vencidas');
   dbgConsulta.Selected.Add('CUO_MOR'#9'3'#9'Cuotas'#9'F'#9'Vencidas');
   dbgConsulta.Selected.Add('TOT_MOR'#9'9'#9'Total'#9'F'#9'Vencidas');
   dbgConsulta.Selected.Add('CUO_VEN'#9'3'#9'Cuotas'#9'F'#9'Del Periodo');
   dbgConsulta.Selected.Add('TOT_VEN'#9'9'#9'Total'#9'F'#9'Del Periodo');
   dbgConsulta.Selected.Add('CUO_REP'#9'3'#9'Cuotas'#9'F'#9'Diferidas');
   dbgConsulta.Selected.Add('TOT_REP'#9'9'#9'Total'#9'F'#9'Diferidas');
   dbgConsulta.Selected.Add('CUO_PEN'#9'3'#9'Cuotas'#9'F'#9'Pendientes');
   dbgConsulta.Selected.Add('TOT_PEN'#9'9'#9'Total'#9'F'#9'Pendientes');
   dbgConsulta.Selected.Add('FECULTDES'#9'10'#9'Ult.Pago'#9'F'#9'Fecha');
   //Inicio HPC_201732_COB: Mejoras en el reporte de cesantes 19990 y AFP con deuda
   dbgConsulta.Selected.Add('TIPO_BENEFICIO'#9'10'#9'Beneficio'#9'F'#9'Tipo');
   dbgConsulta.Selected.Add('FECHA_CESE'#9'10'#9'Cese'#9'F'#9'Fecha');
   dbgConsulta.Selected.Add('MOTIVO_BENEFICIO'#9'10'#9'Beneficio'#9'F'#9'Motivo');
   dbgConsulta.Selected.Add('FECHA_BENEFICIO'#9'10'#9'Beneficio'#9'F'#9'Fecha');
   dbgConsulta.Selected.Add('MONTO_BENEFICIO'#9'10'#9'Por Beneficio'#9'F'#9'Monto Aplicado');
   dbgConsulta.Selected.Add('MONTO_CCI'#9'10'#9'Por CCI'#9'F'#9'Monto Aplicado');
   dbgConsulta.Selected.Add('AUTORIZA_DSCTO_ONP'#9'10'#9'Descuento ONP'#9'F'#9'Autorización');
   //Fin HPC_201732_COB
   dbgConsulta.ApplySelected;

   XSQL := ' SELECT '' '' DPTODES,'' '' UPRONOM,'' '' UPAGONOM,'' '' UPROID,'' '' UPAGOID,'' '' USEID,'' '' ASOID,'' '' ASOCODMOD,' +
      '        '' '' REGPENABR,'' '' ASOAPENOM,'' '' CREDID,'' '' CREFOTORG,'' '' CRENUMCUO, '' '' CREMTOOTOR,'' '' CREMTO,' +
      '        '' '' ANTI_MOR,'' '' CUO_MOR,'' '' TOT_MOR,'' '' CUO_VEN,'' '' TOT_VEN,'' '' TOT_REP,'' '' CUO_REP,'' '' CUO_PEN,'' '' TOT_PEN,' +
      //Inicio HPC_201732_COB: Mejoras en el reporte de cesantes 19990 y AFP con deuda
      '        '' '' FECULTDES, ' +
      '        '' '' TIPO_BENEFICIO, '' '' FECHA_CESE, '' '' MOTIVO_BENEFICIO, '' '' FECHA_BENEFICIO, '' '' MONTO_BENEFICIO, '' '' MONTO_CCI, '' '' AUTORIZA_DSCTO_ONP ' +
      //Fin HPC_201732_COB
      'FROM DUAL ';
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(XSQL);
   dM1.cdsQry.Open;
   dbgConsulta.DataSource := Dm1.dsQry;
   dblcDptoid.SetFocus;
End;

Procedure TFCesRegPen.dblcUProcesoChange(Sender: TObject);
Var
   xsql: String;
Begin

   DM1.cdsQry.EmptyDataSet;
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

      xsql := 'Select UPAGOID,UPAGONOM,UPROID from APO103 Where UPROID=''' + dblcUProceso.Text + ''' ';
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

Procedure TFCesRegPen.dblcdUPagoChange(Sender: TObject);
Begin
   DM1.cdsQry.EmptyDataSet;
   If Length(trim(dblcdUPago.Text)) > 0 Then
      edtupagoid.Text := Dm1.cdsUPago.Fieldbyname('UPAGONOM').AsString
   Else
      edtupagoid.Text := '';
End;

Procedure TFCesRegPen.dblcdUPagoExit(Sender: TObject);
Begin
   If Length(trim(dblcdUPago.Text)) > 0 Then
      edtupagoid.Text := Dm1.cdsUPago.Fieldbyname('UPAGONOM').AsString
   Else
      edtupagoid.Text := '';
End;

Procedure TFCesRegPen.dblcDptoidChange(Sender: TObject);
Var
   xSQL: String;
Begin
   DM1.cdsQry.EmptyDataSet;
   If Length(Trim(dblcDptoid.Text)) = 2 Then
   Begin
      dblcdUPago.Text := '';
      edtupagoid.Text := '';
      dblcUProceso.Text := '';
      edtUproid.Text := '';

      If DM1.cdsDpto.Locate('DPTOID', VarArrayof([dblcDptoid.Text]), []) Then
      Begin
         EdtDpto.Text := DM1.cdsDpto.FieldByName('DPTODES').Asstring;
      End
      Else
      Begin
         If Length(Trim(dblcDptoid.Text)) <> 2 Then
         Begin
            EdtDpto.Text := '';
         End;
      End;
      xsql := 'Select UPROID,UPRONOM,DPTOID from APO102 Where DPTOID=''' + dblcDptoid.Text + ''' ';
      Dm1.cdsUpro.Close;
      Dm1.cdsUpro.DataRequest(Xsql);
      Dm1.cdsUpro.Open;
      dblcUProceso.LookupTable := Dm1.cdsUPro;
      dblcUProceso.LookupField := 'Uproid';
      dblcUProceso.Enabled := True;
   End
   Else
   Begin
      edtUproid.Text := '';
      dblcdUPago.Enabled := False;
      dblcdUPago.Text := '';
      edtupagoid.Text := '';
      dblcDptoid.Text := '';
      EdtDpto.Text := '';

      xsql := 'Select UPROID,UPRONOM,DPTOID from APO102 ';
      Dm1.cdsUpro.Close;
      Dm1.cdsUpro.DataRequest(Xsql);
      Dm1.cdsUpro.Open;
      dblcUProceso.LookupTable := Dm1.CdsUPro;
      dblcUProceso.LookupField := 'Uproid';
      dblcUProceso.Enabled := True;
   End;
End;

//Inicio HPC_201732_COB: Mejoras en el reporte de cesantes 19990 y AFP con deuda
Procedure TFCesRegPen.fcSFiltraClick(Sender: TObject);
Var
   xSQL, xwhere, xSQLGlobal: String;
Begin
   Screen.Cursor := crHourGlass;

   If Length(Trim(dblcDptoid.Text)) > 0 Then
      xWhere := xWhere + ' AND (C.UPROID=E.UPROID AND E.DPTOID=''' + Trim(dblcDptoid.Text) + ''' AND F.DPTOID=E.DPTOID) '; // DEPARTAMENTO  (E,F)

   If Length(Trim(dblcUProceso.Text)) > 0 Then
      xWhere := xwhere + ' AND  C.UPROID=''' + Trim(dblcUProceso.Text) + ''' '; // UNIDAD DE PROCESO (C)

   If Length(Trim(dblcdUPago.Text)) > 0 Then
      xwhere := xwhere + ' AND (G.UPROID=C.UPROID AND G.UPAGOID=''' + Trim(dblcdUPago.Text) + ''') '; // UNIDAD DE PAGO (G)

   xSQL := 'SELECT F.DPTODES,E.UPRONOM,G.UPAGONOM,C.UPROID,C.UPAGOID,C.USEID,C.ASOID,C.ASOCODMOD, '
         + '       D.REGPENABR, C.ASOAPENOM, SUBSTR(B.CREDID,9,7) CREDID, TO_CHAR(A.CREFOTORG, '
         + '       ''DD/MM/YYYY'') CREFOTORG, A.CRENUMCUO, A.CREMTOOTOR, A.CRECUOTA CREMTO,'
         + '       (CASE WHEN FECAUTONP IS NOT NULL THEN ''S'' ELSE ''N'' END) AUTORIZA_DSCTO_ONP, '
         + '       MAX(CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')<TO_CHAR(SYSDATE,''YYYYMM'')) '
         + '                     AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
         + '                THEN TO_DATE(SYSDATE)-TO_DATE(CREFVEN) END) ANTI_MOR,'
         + '       SUM(CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')<TO_CHAR(SYSDATE,''YYYYMM'')) '
         + '                     AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) THEN 1 END) CUO_MOR,'
         + '       SUM(CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')<TO_CHAR(SYSDATE,''YYYYMM'')) '
         + '                     AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
         + '                THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END) TOT_MOR,'
         + '       SUM(CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')=TO_CHAR(SYSDATE,''YYYYMM'')) '
         + '                     AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) THEN 1 END) CUO_VEN,'
         + '       SUM(CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')=TO_CHAR(SYSDATE,''YYYYMM'')) '
         + '                     AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL) '
         + '                THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0) END) TOT_VEN,'
         + '       SUM(CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN<>CREFVENINI) '
         + '                THEN NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END) TOT_REP,'
         + '       SUM(CASE WHEN (CREFVENINI IS NOT NULL) AND (CREFVEN<>CREFVENINI) '
         + '                THEN 1 END) CUO_REP,'
         + '       SUM(CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) '
         + '                     AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL)  THEN 1 END) CUO_PEN,'
         + '       SUM(CASE WHEN (TO_CHAR(CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) '
         + '                     AND (CREFVEN=CREFVENINI OR CREFVENINI IS NULL)  '
// Inicio: DPP_201218_COB
//       + '                THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0))-NVL(CREMTOCOB,0) END) TOT_PEN,'
         + '                THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0)+NVL(MONCOBDESGRAV,0))-NVL(CREMTOCOB,0) END) TOT_PEN,';
// Fin: DPP_201218_COB

   xSQL := xSQL
         + '       MAX((SELECT TO_CHAR(MAX(CREFPAG),''DD/MM/YYYY'') '
         + '       FROM CRE310 '
         + '       WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CREESTID NOT IN (''13'',''99'',''04'') )) FECULTDES, '
         + '       MAX((SELECT SUM(NVL(Z.CREMTOCOB,0)) '
         + '       FROM CRE310 Z '
         + '       WHERE Z.ASOID = A.ASOID AND Z.CREDID = A.CREDID AND Z.CREESTID NOT IN (''13'', ''99'', ''04'') '
         + '       AND Z.FORPAGABR=''BEN'' AND Z.NUMDEV IS NULL )) MONTO_BENEFICIO, '
         + '       MAX((SELECT SUM(NVL(Z.CREMTOCOB,0)) '
         + '       FROM CRE310 Z '
         + '       WHERE Z.ASOID = A.ASOID AND Z.CREDID = A.CREDID AND Z.CREESTID NOT IN (''13'', ''99'', ''04'') '
         + '       AND Z.FORPAGABR=''CCI'' AND Z.NUMDEV IS NULL )) MONTO_CCI '
         + 'FROM CRE301 A,CRE302 B,APO201 C,APO105 D,APO102 E,APO158 F ,APO103 G '
         + 'WHERE A.CREESTID=''02'' '
         + '  AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND B.CREESTID IN (''11'',''27'',''14'',''02'') ';

   If  chkIsCesantes20530.Checked Then
      xSQL := xSQL +
           '  AND A.ASOID=C.ASOID AND C.ASOTIPID=''CE'' AND C.REGPENID = ''01'' '
   Else
      xSQL := xSQL +
           '  AND A.ASOID=C.ASOID AND C.ASOTIPID=''CE'' AND C.REGPENID IN (''02'',''03'') ';

    xSQL := xSQL
         + '  AND C.REGPENID=D.REGPENID(+) '
         + '  AND C.UPROID=E.UPROID(+) '
         + '  AND E.DPTOID=F.DPTOID(+) '
         + '  AND( C.UPROID=G.UPROID(+) AND C.UPAGOID=G.UPAGOID(+)) '
         + xwhere
         + ' GROUP BY F.DPTODES,E.UPRONOM,G.UPAGONOM,C.UPROID,C.UPAGOID,C.USEID,C.ASOID, '
         + '          C.ASOCODMOD,D.REGPENABR,C.ASOAPENOM,SUBSTR(B.CREDID,9,7),A.CREFOTORG, '
         + '          A.CRENUMCUO,A.CREMTOOTOR,A.CRECUOTA, (CASE WHEN FECAUTONP IS NOT NULL THEN ''S'' ELSE ''N'' END) ';


   xSQLGlobal := ' SELECT D1.*, '
               + '        (SELECT A.ASOFRESCESE '
               + '         FROM PVS306 A '
               + '         WHERE A.ASOID=D1.ASOID AND A.PVSLBENNR = (SELECT MAX(PVSLBENNR) FROM PVS306 WHERE ASOID=D1.ASOID AND PVSESTLIQ NOT IN(''04'' , ''13'' )) '
               + '         ) FECHA_CESE, '
               + '        (SELECT A.PVSLFECBE '
               + '         FROM PVS306 A '
               + '         WHERE A.ASOID=D1.ASOID AND A.PVSLBENNR = (SELECT MAX(PVSLBENNR) FROM PVS306 WHERE ASOID=D1.ASOID AND PVSESTLIQ NOT IN(''04'' , ''13'' )) '
               + '         ) FECHA_BENEFICIO, '
               + '        (SELECT B.BENEFDES '
               + '         FROM PVS306 A, TGE186 B '
               + '         WHERE A.ASOID=D1.ASOID AND A.PVSLBENNR = (SELECT MAX(PVSLBENNR) FROM PVS306 WHERE ASOID=D1.ASOID AND PVSESTLIQ NOT IN(''04'' , ''13'' )) '
               + '         AND   B.TIPBENEF = A.PVSLTIPBE '
               + '         ) TIPO_BENEFICIO, '
               + '         NVL((SELECT B.DESCAUCES '
               + '             FROM  PVS301 A, PRE_CAUSA_CESE_CAB B '
               + '             WHERE A.ASOID=D1.ASOID AND A.PVSLBENNR = (SELECT MAX(PVSLBENNR) FROM PVS306 WHERE ASOID=D1.ASOID AND PVSESTLIQ NOT IN(''04'' , ''13'' )) '
               + '             AND   B.TIPBENEF = A.PVSTIPBEN '
               + '             AND   B.CODCAUCES = (SELECT MAX(A.CODCAUCES) '
               + '                                  FROM  PVS301 A '
               + '                                  WHERE A.ASOID=D1.ASOID AND A.PVSLBENNR = (SELECT MAX(PVSLBENNR) FROM PVS306 WHERE ASOID=D1.ASOID AND PVSESTLIQ NOT IN(''04'' , ''13'' )) '
               + '                                 ) '
               + '             ),''SIN INFORMACIÓN'') MOTIVO_BENEFICIO '
               + ' FROM ( ' +  xSQL + ' ) D1 ';

   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(xSQLGlobal);
   dm1.cdsQry.Open;
   dm1.cdsQry.IndexFieldNames := 'dptodes;upronom;upagonom;asoapenom';

   If dm1.cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No existe información a mostrar para los filtros indicados.');
      Screen.Cursor := crDefault;
      Exit;
   End;

   dbgConsulta.DataSource := Dm1.dsQry;
   TNumericField(DM1.cdsQry.fieldbyname('Cremtootor')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry.fieldbyname('Tot_mor')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry.fieldbyname('Tot_ven')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry.fieldbyname('tot_rep')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry.fieldbyname('tot_pen')).DisplayFormat := '###,##0.#0';

   TNumericField(DM1.cdsQry.fieldbyname('MONTO_BENEFICIO')).DisplayFormat := '###,##0.#0';
   TNumericField(DM1.cdsQry.fieldbyname('MONTO_CCI')).DisplayFormat := '###,##0.#0';

   dbgConsulta.GroupFieldName := 'DPTODES';
   Screen.Cursor := crDefault;
   actfoot1;
End;
//Fin HPC_201732_COB

Procedure TFCesRegPen.dbgConsultaCalcCellColors(Sender: TObject;
   Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
   ABrush: TBrush);
Begin
   If Highlight Then
   Begin
      AFont.Color := clWhite;
      ABrush.Color := clBlue;
      AFont.Size := 8;
      AFont.Style := [fsBold];
   End
   Else
   Begin
      ABrush.Color := clWhite;
      AFont.Color := clBlack;
      AFont.Size := 7;
      AFont.Style := [];

      If (Field.FieldName = 'ANTI_MOR') Or
         (Field.FieldName = 'CUO_MOR') Or
         (Field.FieldName = 'TOT_MOR') Then
      Begin
         ABrush.Color := $00596FE3;
      End;

      If (Field.FieldName = 'CUO_VEN') Or
         (Field.FieldName = 'TOT_VEN') Then
      Begin
         ABrush.Color := clInfoBk;
      End;

      If (Field.FieldName = 'CUO_REP') Or
         (Field.FieldName = 'TOT_REP') Then
      Begin
         ABrush.Color := $00596FE3;
      End;

      If (Field.FieldName = 'CUO_PEN') Or
         (Field.FieldName = 'TOT_PEN') Then
      Begin
         ABrush.Color := $00A0E0BF;
      End;
   End;
End;

Procedure TFCesRegPen.actfoot1;
Var
   B: TBookmark;
   xTot_mor, xTot_ven, xTot_rep, xTot_pen: Currency;
Begin

   B := DM1.cdsQry.GetBookmark;
   DM1.cdsQry.DisableControls;
   xTot_mor := 0;
   xTot_ven := 0;
   xTot_rep := 0;
   xTot_pen := 0;
   Dm1.cdsQry.First;
   While Not Dm1.cdsQry.Eof Do
   Begin
      xTot_mor := xTot_mor + Dm1.cdsQry.FieldByname('Tot_mor').AsCurrency;
      xTot_ven := xTot_ven + Dm1.cdsQry.FieldByname('Tot_ven').AsCurrency;
      xTot_rep := xTot_rep + Dm1.cdsQry.FieldByname('Tot_rep').AsCurrency;
      xTot_pen := xTot_pen + Dm1.cdsQry.FieldByname('Tot_pen').AsCurrency;
      DM1.cdsQry.Next;
   End;
   dbgConsulta.ColumnByName('Asoapenom').FooterValue := 'Totales';
   dbgConsulta.ColumnByName('Tot_mor').FooterValue := FormatCurr('###,##0.#0', xTot_mor);
   dbgConsulta.ColumnByName('Tot_ven').FooterValue := FormatCurr('###,##0.#0', xTot_ven);
   dbgConsulta.ColumnByName('Tot_rep').FooterValue := FormatCurr('###,##0.#0', xTot_rep);
   dbgConsulta.ColumnByName('Tot_pen').FooterValue := FormatCurr('###,##0.#0', xTot_pen);

   DM1.cdsQry.GotoBookmark(B);
   DM1.cdsQry.EnableControls;
   DM1.cdsQry.FreeBookmark(B);
End;

Procedure TFCesRegPen.fcShapeBtn2Click(Sender: TObject);
Begin

   If length(DM1.cdsQry.FieldByName('DPTODES').AsString) = 0 Then
   Begin
      ShowMessage('No existe información para mostrar por esta opción.');
      Exit;
   End;

   With dbgConsulta, dbgConsulta.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Reporte.slk';
      dbgConsulta.ExportOptions.TitleName := FCesRegPen.Caption;
      Opciones(dbgConsulta.ExportOptions);
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgConsulta.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
End;

Procedure TFCesRegPen.Opciones(AOptions: TwwExportOptions);
Begin
   AOptions.Options := [esoDblQuoteFields, esoShowFooter];
   AOptions.Options := AOptions.Options + [esoShowTitle];
   AOptions.Options := AOptions.Options + [esoShowHeader];
   AOptions.Options := AOptions.Options + [esoShowRecordNo];
   AOptions.Options := AOptions.Options + [esoEmbedURL];
   AOptions.Options := AOptions.Options + [esoDynamicColors];
   AOptions.Options := AOptions.Options + [esoShowAlternating];
End;

Procedure TFCesRegPen.btnPrintClick(Sender: TObject);
Begin

   pplbImpresoPor.Caption := 'Impreso por: ' + DM1.wUsuario;
   If length(DM1.cdsQry.FieldByName('DPTODES').AsString) = 0 Then
   Begin
      ShowMessage('No existe información para mostrar por esta opción.');
      Exit;
   End;
   //Inicio HPC_201732_COB: Mejoras en el reporte de cesantes 19990 y AFP con deuda
   If  chkIsCesantes20530.Checked Then
      ppLabel25.Caption :='REPORTE DE CESANTES DE LA 20530'
   Else
      ppLabel25.Caption :='REPORTE DE CESANTES DE LA 19990 o AFP CON DEUDA PENDIENTE';
   //Fin HPC_201732_COB
   ppRConsulta.OutlineSettings.Visible := False;
   ppRConsulta.Print;
   ppRConsulta.Stop;
End;

Procedure TFCesRegPen.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   Begin
      If Key = #13 Then
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End;
   End;
End;

procedure TFCesRegPen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm1.cdsUPro.Close;
  Dm1.cdsUPro.IndexFieldNames:='';
  Dm1.cdsDpto.Close;
  Dm1.cdsDpto.IndexFieldNames:='';
  Dm1.cdsQry.Close;
  Dm1.cdsQry.IndexFieldNames:='';
  Dm1.cdsUPago.Close;
  Dm1.cdsUPago.IndexFieldNames:='';

end;

procedure TFCesRegPen.btnSalirClick(Sender: TObject);
begin
   close;
end;

procedure TFCesRegPen.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppD1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

//Inicio HPC_201732_COB: Mejoras en el reporte de cesantes 19990 y AFP con deuda
procedure TFCesRegPen.chkIsCesantes20530Click(Sender: TObject);
begin
   DM1.cdsQry.EmptyDataSet;
end;
//Fin HPC_201732_COB

End.

