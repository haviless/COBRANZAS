Unit COB932;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB932
// Formulario                    : FRepResRegGlob
// Fecha de Creación             : 18/12/2013
// Autor                         : Sistemas
// Objetivo                      : Reporte Resumen de la Cobranza global

// Actualizaciones               :
// HPP_200924_COB - por RMEDINA
// Memorándum 680-2009-DM-COB - SAR2009-0585 - DAD-RM-2009-0114
// Se modifica indentación de la unidad pascal porque estaba muy desordenado
// HPC_201312_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
// SPP_201314_COB                : Se realiza el pase a producción a partir del documento HPC_201312_COB
// HPC_201522_COB                : Las aplicaciones al FSC la agrupación principal sera por el registro global (RCOBID,DETRCOBID)
// HPC_201609_COB                : Se adiciona boton para exporta a Excel y se corrige tamaño de columnas en reporte

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ppPrnabl, ppClass,
   ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
//Inicio HPC_201609_COB --Variables
   ppDBPipe, ppVar, Grids, DBGrids, jpeg;
//Final HPC_201609_COB

Type
   TFRepResRegGlob = Class(TForm)
      GroupBox1: TGroupBox;
      edtAno: TEdit;
      Label6: TLabel;
      edtMes: TEdit;
      btnRepDescargo: TfcShapeBtn;
      ppdbApoAnul: TppDBPipeline;
      ppRApoAnul: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel11: TppLabel;
      ppShape1: TppShape;
      ppLabel12: TppLabel;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLine1: TppLine;
      ppLine4: TppLine;
      ppLabel13: TppLabel;
      ppLine5: TppLine;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel10: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
//Inicio HPC_201609_COB --No se usa
//    ppLabel19: TppLabel;
//Final HPC_201609_COB
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppLine6: TppLine;
      ppLabel24: TppLabel;
      ppLAno: TppLabel;
      ppLabel26: TppLabel;
      ppLmes: TppLabel;
      ppLine7: TppLine;
      ppLabel25: TppLabel;
      ppDBText13: TppDBText;
      ppDBCalc7: TppDBCalc;
// Inicio: HPP_200924_COB
// Memorándum 680-2009-DM-COB - SAR2009-0585 - DAD-RM-2009-0114
// Se añade la Unidad de Pago en el Resumen de Descargo Global
      ppLabel27: TppLabel;
      ppDBText14: TppDBText;
// Fin: HPP_200924_COB

    ppLabel28: TppLabel;
    ppDBText15: TppDBText;
    ppDBCalc8: TppDBCalc;
// Inicio: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
    ppDBText16: TppDBText;
    ppLabel29: TppLabel;
    ppDBCalc9: TppDBCalc;
//Inicio HPC_201609_COB --Se adiciona boton para exporta a Excel 
    BtnExcel: TfcShapeBtn;
    dtgData: TDBGrid;
    ppImage1: TppImage;
//Final HPC_201609_COB
// Fin: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias

      Procedure edtAnoChange(Sender: TObject);
      Procedure edtAnoExit(Sender: TObject);
      Procedure edtAnoKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtMesChange(Sender: TObject);
      Procedure edtMesExit(Sender: TObject);
      Procedure edtMesKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnRepDescargoClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
//Inicio HPC_201609_COB --Se adiciona boton para exporta a Excel
    procedure BtnExcelClick(Sender: TObject);
//Final HPC_201609_COB
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FRepResRegGlob: TFRepResRegGlob;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFRepResRegGlob.edtAnoChange(Sender: TObject);
Begin
   If Length(trim(edtAno.Text)) <> 0 Then
   Begin
      If ((StrToInt(edtAno.Text) <= 0) Or (StrToInt(edtAno.Text) < 2003)) And (Length(trim(edtAno.Text)) = 4) Then
      Begin
         ShowMessage('El año de registro debe ser mayor o igual al 2003');
         edtAno.SetFocus;
      End;
   End;
End;

Procedure TFRepResRegGlob.edtAnoExit(Sender: TObject);
Var
   xfecact: String;
Begin
// Inicio: HPP_200924_COB
// Memorándum 680-2009-DM-COB - SAR2009-0585 - DAD-RM-2009-0114
// Se controla que la Año de la Impresión no sea mayor que el año Fecha Actual
   xfecact := copy(DateToStr(Dm1.FechaSys), 7, 4);
   If Length(trim(edtAno.Text)) <> 0 Then
   Begin
      If ((StrToInt(edtAno.Text) <= 0) Or (StrToInt(edtAno.Text) < 2003)) Or
         (Length(trim(edtAno.Text)) <> 4) Or (trim(edtAno.Text) > xfecact) Then
      Begin
         ShowMessage('El año de registro debe ser mayor o igual al 2003 y menor del ' + xfecact);
         edtAno.SetFocus;
      End;
   End;
// Fin: HPP_200924_COB
End;

Procedure TFRepResRegGlob.edtAnoKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
   Begin
      Key := #0;
   End;
End;

Procedure TFRepResRegGlob.edtMesChange(Sender: TObject);
Begin
   If Length(trim(edtMes.Text)) <> 0 Then
   Begin
      If ((StrToInt(edtMes.Text) < 1) Or (StrToInt(edtMes.Text) > 12)) And (Length(trim(edtMes.Text)) = 2) Then
      Begin
         ShowMessage('El mes es inconsistente, debe ser entre 1 y 12');
         edtmes.SetFocus;
      End;
   End;
End;

Procedure TFRepResRegGlob.edtMesExit(Sender: TObject);
Begin
// Inicio: HPP_200924_COB
// Memorándum 680-2009-DM-COB - SAR2009-0585 - DAD-RM-2009-0114
// Se inicializa variable del Mes con ceros a la izquierda
   edtMes.Text := DM1.StrZero(Trim(edtMes.Text), 2);
// Fin: HPP_200924_COB

   If Length(trim(edtMes.text)) <> 0 Then
   Begin
      If ((StrToInt(edtMes.Text) < 1) Or (StrToInt(edtMes.Text) > 12)) And (Length(trim(edtMes.Text)) = 2) Then
      Begin
         ShowMessage('El mes es inconsistente, debe ser entre 1 y 12');
         edtmes.SetFocus;
      End;
   End;
   btnRepDescargo.SetFocus;
End;

Procedure TFRepResRegGlob.edtMesKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
   Begin
      Key := #0;
   End;
End;

Procedure TFRepResRegGlob.btnRepDescargoClick(Sender: TObject);
Var
// Inicio: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
   XSQL, xSQL1, xSQL2, xSQL3, XANOMES: String;
// Fin: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
Begin
   Screen.Cursor := crHourGlass;

// Inicio: HPP_200924_COB
// Memorándum 680-2009-DM-COB - SAR2009-0585 - DAD-RM-2009-0114
   edtMes.Text := DM1.StrZero(Trim(edtMes.Text), 2);
   XANOMES := TRIM(edtAno.Text) + TRIM(edtMes.Text);
   ppLAno.Caption := edtAno.Text;
   ppLmes.Caption := edtMes.Text;

//FECHA DE CAMBIO: 22/07/2009
//DESCRIPCION: Se adiciona una columna al reportes
//<CODIGO SIN MODIFICAR>
{//---
'SELECT RCOBID,REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,MAX(GLOBAL) GLOBAL,MAX(DEDUCCION) DEDUCCION,MAX(APO) APO,MAX(CRE) CRE,MAX(MAN) MAN,'
+'       MAX(APO)+MAX(CRE)+MAX(MAN) TOTDES,(MAX(GLOBAL))-(MAX(APO)+MAX(CRE)+MAX(MAN)) DIF FROM '
+'(SELECT REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,RCOBANO,RCOBMES,GLOBAL,DEDUCCION,RCOBID,'
+'CASE WHEN TIPO=''APO'' THEN DESCARGADO ELSE 0 END APO,'
+'CASE WHEN TIPO=''CRE'' THEN DESCARGADO ELSE 0 END CRE,'
+'CASE WHEN TIPO=''MAN'' THEN DESCARGADO ELSE 0 END MAN '
+'FROM (SELECT * FROM '
+'(SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID, DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(CPAGODEDUC) DEDUCCION,MAX(REPRAPENOM) REPRE FROM '
+'(SELECT B.USEID,A.*,NVL(B.TRANSMTO,0) DESCARGADO,''APO'' TIPO FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC,REPRAPENOM,RCOBANO,RCOBMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'      APO301 B '
+'WHERE (B.RCOBID(+) =A.RCOBID AND B.DETRCOBID(+)=A.DETRCOBID AND B.TRANSNOPE(+)=A.RCOBNOPE AND B.TRANSFOPE(+)=A.RCOBFOPE) ) '
+'GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID ,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(CPAGODEDUC) DEDUCCION,MAX(REPRAPENOM) REPRE FROM '
+'(SELECT C.USEID,A.*,C.CREMTOCOB DESCARGADO,''CRE'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC,REPRAPENOM,RCOBANO,RCOBMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'     CRE310 C '
+'WHERE (C.RCOBID=A.RCOBID AND C.DETRCOBID=A.DETRCOBID AND C.NROOPE=A.RCOBNOPE AND C.FOPERAC=A.RCOBFOPE AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) )  '
+'GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(CPAGODEDUC) DEDUCCION,MAX(REPRAPENOM) REPRE FROM '
+'(SELECT USEID,A.RCOBID,A.DETRCOBID,C.CREFPAG RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO,A.RCOBMES,C.UPROID,C.UPAGOID,C.CREMTOCOB DESCARGADO,''MAN'' TIPO,A.CPAGOMTO,A.CPAGODEDUC,A.REPRAPENOM FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC,REPRAPENOM,RCOBANO,RCOBMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'      CRE310 C '
+'WHERE C.CREFPAG=A.RCOBFOPE AND C.CREDOCPAG=A.RCOBNOPE AND (C.FORPAGABR=''REG'' OR C.FORPAGABR=''PLA'' OR C.FORPAGABR=''CEF'')  AND C.UPROID=A.UPROID AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')  AND C.RCOBID IS NULL) '
+'GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,DETRCOBID) '
+'ORDER BY RCOBNOPE,RCOBFOPE )) '
+'GROUP BY RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE,UPROID '
+'ORDER BY REPRE,RCOBNOPE';
//---}

// Inicio: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
//Inicio HPC_201522_COB
//XSQL1 := 'SELECT RCOBID,REPRE,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES, '
  XSQL1 := 'SELECT RCOBID,REPRE,RCOBFOPE,RCOBNOPE,MAX(UPROID)UPROID,MAX(UPAGOID)UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES, '
//Final HPC_201522_COB
  + '       MAX(GLOBAL) GLOBAL,MAX(DEDUCCION) DEDUCCION,MAX(APO) APO,MAX(CRE) CRE,MAX(MAN) MAN,MAX(FSC)FSC, '
  + '       MAX(DEVO) DEVO, '
  + '       MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC) - MAX(DEVO) TOTDES, '
  + '       (MAX(GLOBAL))-(MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC))-MAX(DEVO) DIF '
  + 'FROM (SELECT REPRE,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,DETRCOBID,RCOBANO,RCOBMES,GLOBAL,DEDUCCION,RCOBID, '
  + '             CASE WHEN TIPO=''APO'' THEN DESCARGADO ELSE 0 END APO,'
  + '             CASE WHEN TIPO=''CRE'' THEN DESCARGADO ELSE 0 END CRE,'
  + '             CASE WHEN TIPO=''MAN'' THEN DESCARGADO ELSE 0 END MAN, '
  + '             CASE WHEN TIPO=''FSC'' THEN DESCARGADO ELSE 0 END FSC, '
  + '             CASE WHEN TIPO = ''DEV'' THEN DESCARGADO ELSE 0 END DEVO '
  + '      FROM (SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,UPAGOID,DETRCOBID,RCOBANO,RCOBMES,DESCARGADO, '
  + '                   GLOBAL,DEDUCCION,REPRE '
  + '            FROM (SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID, MAX(UPAGOID) UPAGOID, DETRCOBID, '
  + '                         MAX(RCOBANO) RCOBANO, MAX(RCOBMES) RCOBMES, SUM(DESCARGADO) DESCARGADO, '
  + '                         MAX(CPAGOMTO) GLOBAL, MAX(CPAGODEDUC) DEDUCCION, MAX(REPRAPENOM) REPRE '
  + '                  FROM (SELECT B.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID, '
  + '                              A.CPAGOMTO,A.CPAGODEDUC,A.REPRAPENOM,A.RCOBANO,A.RCOBMES,NVL(B.TRANSMTO,0) DESCARGADO,'
  + '                              ''APO'' TIPO '
  + '                        FROM (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC, '
  + '                                      REPRAPENOM,RCOBANO,RCOBMES '
  + '                              FROM COB302 '
  + '                              WHERE TO_CHAR(FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                              ) A, APO301 B '
  + '                  WHERE (B.RCOBID(+) =A.RCOBID AND B.DETRCOBID(+)=A.DETRCOBID '
  + '                    AND B.TRANSNOPE(+)=A.RCOBNOPE AND B.TRANSFOPE(+)=A.RCOBFOPE) ) '
  + '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
  + '                  UNION ALL '
  + '                  SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID, MAX(UPAGOID) UPAGOID, DETRCOBID, '
  + '                         MAX(RCOBANO) RCOBANO, MAX(RCOBMES) RCOBMES, SUM(DESCARGADO) DESCARGADO, '
  + '                         MAX(CPAGOMTO) GLOBAL, MAX(CPAGODEDUC) DEDUCCION, MAX(REPRAPENOM) REPRE '
  + '                  FROM (SELECT C.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID, '
  + '                               A.CPAGOMTO,A.CPAGODEDUC,A.REPRAPENOM,A.RCOBANO,A.RCOBMES,C.CREMTOCOB DESCARGADO, '
  + '                               ''CRE'' TIPO '
  + '                        FROM (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC, '
  + '                                     REPRAPENOM,RCOBANO,RCOBMES '
  + '                              FROM COB302 '
  + '                              WHERE TO_CHAR(FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                              ) A, CRE310 C '
  + '                  WHERE (C.RCOBID=A.RCOBID AND C.DETRCOBID=A.DETRCOBID AND C.NROOPE=A.RCOBNOPE '
  + '                    AND C.FOPERAC=A.RCOBFOPE AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) ) '
  + '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO ';
 XSQL2 :=
    '                  UNION ALL '
//Inicio HPC_201522_COB
//+ '                  SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,'
  + '                  SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID)UPROID,MAX(UPAGOID)UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,'
//Final HPC_201522_COB
  + '                        MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,'
  + '                        MAX(CPAGODEDUC) DEDUCCION,MAX(REPRAPENOM) REPRE  '
  + '                  FROM (SELECT USEID,A.RCOBID,A.DETRCOBID,C.FOPERAC RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO,'
  + '                               A.RCOBMES,C.UPROID,C.UPAGOID,C.IMP_COB_DEU DESCARGADO,''FSC'' TIPO,A.CPAGOMTO,'
  + '                               A.CPAGODEDUC,A.REPRAPENOM '
  + '                        FROM (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC, '
  + '                                     REPRAPENOM,RCOBANO,RCOBMES '
  + '                              FROM COB302 '
  + '                              WHERE TO_CHAR(FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                              ) A, COB_FSC_PAGOS_AL_FSC C '
  + '                  WHERE C.RCOBID=A.RCOBID AND C.DETRCOBID=A.DETRCOBID AND  C.NROOPE=A.RCOBNOPE AND C.FOPERAC=A.RCOBFOPE '
  + '                    AND (C.FORPAGABR=''REG'' OR C.FORPAGABR=''PLA'' OR C.FORPAGABR=''CEF'') '
//Inicio HPC_201522_COB
//+ '                    AND C.UPROID=A.UPROID AND (C.EST_COB_COD <>''13'' AND C.EST_COB_COD<>''04'') '
  + '                    AND (C.EST_COB_COD <>''13'' AND C.EST_COB_COD<>''04'') '
  + '                    AND C.RCOBID IS NOT  NULL) '
//+ '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,UPAGOID,DETRCOBID ';
  + '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,TIPO,DETRCOBID ';
//Final HPC_201522_COB
 XSQL3 :=
   '                  UNION ALL '
//Inicio HPC_201522_COB
//+ '                  SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO, '
  + '                  SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID)UPROID,MAX(UPAGOID)UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO, '
//Final HPC_201522_COB
  + '                         MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL, '
  + '                         MAX(CPAGODEDUC) DEDUCCION,MAX(REPRAPENOM) REPRE '
  + '                  FROM (SELECT USEID,A.RCOBID,A.DETRCOBID,C.CREFPAG RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO, '
  + '                               A.RCOBMES,C.UPROID,C.UPAGOID,C.CREMTOCOB DESCARGADO,''MAN'' TIPO,A.CPAGOMTO, '
  + '                               A.CPAGODEDUC,A.REPRAPENOM '
  + '                        FROM (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC, '
  + '                                     REPRAPENOM,RCOBANO,RCOBMES '
  + '                              FROM COB302 '
  + '                              WHERE TO_CHAR(FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                              ) A, CRE310 C '
  + '                  WHERE C.CREFPAG=A.RCOBFOPE AND C.CREDOCPAG=A.RCOBNOPE '
  + '                    AND (C.FORPAGABR=''REG'' OR C.FORPAGABR=''PLA'' OR C.FORPAGABR=''CEF'') '
  + '                    AND C.UPROID=A.UPROID AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'') '
  + '                    AND C.RCOBID IS NULL) '
//Inicio HPC_201522_COB
//+ '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,UPAGOID,DETRCOBID '
  + '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,TIPO,DETRCOBID '
//Final HPC_201522_COB
  + '                        UNION ALL '

//Inicio HPC_201522_COB
//+ '                          SELECT RCOBID, RCOBNOPE, RCOBFOPE, TIPO, UPROID, UPAGOID, DETRCOBID, MAX(RCOBANO) RCOBANO, MAX(RCOBMES) RCOBMES, '
  + '                          SELECT RCOBID, RCOBNOPE, RCOBFOPE, TIPO,MAX(UPROID)UPROID,MAX(UPAGOID)UPAGOID, DETRCOBID, MAX(RCOBANO) RCOBANO, MAX(RCOBMES) RCOBMES, '
//Final HPC_201522_COB
  + '                             SUM(DESCARGADO) DESCARGADO, MAX(CPAGOMTO) GLOBAL, MAX(CPAGODEDUC) DEDUCCION, MAX(REPRAPENOM) REPRE '
  + '                            FROM ( '
  + '                                   SELECT A.ASOID, '
  + '                                          A.USEID, A.RCOBID, A.DETRCOBID, F.RCOBFOPE RCOBFOPE, E.NROOPE RCOBNOPE, F.RCOBANO, F.RCOBMES, A.UPROID, A.UPAGOID, '
  + '                                          A.IMPDEV DESCARGADO, ''DEV'' TIPO, 0 CPAGOMTO, 0 CPAGODEDUC, F.REPRAPENOM '
  + '                                     FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D, COB302 F '
  + '                                    WHERE A.ANODEV = E.ANODEV AND A.CORDEV = E.CORDEV  AND A.ASOID = B.ASOID '
  + '                                      AND C.UPROID(+) = A.UPROID AND D.UPROID(+) = A.UPROID  and D.UPAGOID(+) = A.UPAGOID '
  + '                                      AND TO_CHAR(F.FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                                      AND A.RCOBID=F.RCOBID(+) AND A.DETRCOBID=F.DETRCOBID(+) '
  + '                                 ) '
//Inicio HPC_201522_COB
//+ '                           GROUP BY RCOBID, RCOBNOPE, RCOBFOPE, TIPO, UPROID, UPAGOID, DETRCOBID '
  + '                           GROUP BY RCOBID, RCOBNOPE, RCOBFOPE, TIPO, DETRCOBID '
//Final HPC_201522_COB

  + '                ) '
  + '            ORDER BY RCOBNOPE,RCOBFOPE '
  + '      ) '
  + '     ) '
//Inicio HPC_201522_COB
//+ 'GROUP BY RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE,UPROID,UPAGOID '
  + 'GROUP BY RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE '
//Fianl HPC_201522_COB
  + 'ORDER BY REPRE,RCOBNOPE';

   xSQL := XSQL1 + XSQL2 + xSQL3;
// Fin: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias

   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames := 'REPRE';
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

// Inicio: HPP_200924_COB
// Memorándum 680-2009-DM-COB - SAR2009-0585 - DAD-RM-2009-0114
// FECHA DE CAMBIO: 22/07/2009
// DESCRIPCION: condiciona que no exista registros
// <CODIGO SIN MODIFICAR>
   If Dm1.cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No existe información para reporte..');
      Screen.Cursor := crDefault;
      Exit;
   End;
// Fin: HPP_200924_COB

   ppdbApoAnul.DataSource := dm1.dsQry;
   ppRApoAnul.OutlineSettings.Visible := False;
   ppRApoAnul.Print;
   ppRApoAnul.Stop;
   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames := '';
   Screen.Cursor := crDefault;
End;

Procedure TFRepResRegGlob.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
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
End;

Procedure TFRepResRegGlob.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames := '';
End;
//Inicio HPC_201609_COB --Se adiciona boton para exporta a Excel
procedure TFRepResRegGlob.BtnExcelClick(Sender: TObject);
Var
   XSQL, xSQL1, xSQL2, xSQL3, XANOMES: String;
Begin

   Screen.Cursor  := crHourGlass;
   edtMes.Text    := DM1.StrZero(Trim(edtMes.Text), 2);
   XANOMES        := TRIM(edtAno.Text) + TRIM(edtMes.Text);
   ppLAno.Caption := edtAno.Text;
   ppLmes.Caption := edtMes.Text;

  XSQL1 := 'SELECT RCOBID,REPRE,RCOBFOPE,RCOBNOPE,MAX(UPROID)UPROID,MAX(UPAGOID)UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES, '
  + '       MAX(GLOBAL) GLOBAL,MAX(DEDUCCION) DEDUCCION,MAX(APO) APO,MAX(CRE) CRE,MAX(MAN) MAN,MAX(FSC)FSC, '
  + '       MAX(DEVO) DEVO, '
  + '       MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC) - MAX(DEVO) TOTDES, '
  + '       (MAX(GLOBAL))-(MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC))-MAX(DEVO) DIF '
  + 'FROM (SELECT REPRE,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,DETRCOBID,RCOBANO,RCOBMES,GLOBAL,DEDUCCION,RCOBID, '
  + '             CASE WHEN TIPO=''APO'' THEN DESCARGADO ELSE 0 END APO,'
  + '             CASE WHEN TIPO=''CRE'' THEN DESCARGADO ELSE 0 END CRE,'
  + '             CASE WHEN TIPO=''MAN'' THEN DESCARGADO ELSE 0 END MAN, '
  + '             CASE WHEN TIPO=''FSC'' THEN DESCARGADO ELSE 0 END FSC, '
  + '             CASE WHEN TIPO = ''DEV'' THEN DESCARGADO ELSE 0 END DEVO '
  + '      FROM (SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,UPAGOID,DETRCOBID,RCOBANO,RCOBMES,DESCARGADO, '
  + '                   GLOBAL,DEDUCCION,REPRE '
  + '            FROM (SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID, MAX(UPAGOID) UPAGOID, DETRCOBID, '
  + '                         MAX(RCOBANO) RCOBANO, MAX(RCOBMES) RCOBMES, SUM(DESCARGADO) DESCARGADO, '
  + '                         MAX(CPAGOMTO) GLOBAL, MAX(CPAGODEDUC) DEDUCCION, MAX(REPRAPENOM) REPRE '
  + '                  FROM (SELECT B.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID, '
  + '                              A.CPAGOMTO,A.CPAGODEDUC,A.REPRAPENOM,A.RCOBANO,A.RCOBMES,NVL(B.TRANSMTO,0) DESCARGADO,'
  + '                              ''APO'' TIPO '
  + '                        FROM (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC, '
  + '                                      REPRAPENOM,RCOBANO,RCOBMES '
  + '                              FROM COB302 '
  + '                              WHERE TO_CHAR(FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                              ) A, APO301 B '
  + '                  WHERE (B.RCOBID(+) =A.RCOBID AND B.DETRCOBID(+)=A.DETRCOBID '
  + '                    AND B.TRANSNOPE(+)=A.RCOBNOPE AND B.TRANSFOPE(+)=A.RCOBFOPE) ) '
  + '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
  + '                  UNION ALL '
  + '                  SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID, MAX(UPAGOID) UPAGOID, DETRCOBID, '
  + '                         MAX(RCOBANO) RCOBANO, MAX(RCOBMES) RCOBMES, SUM(DESCARGADO) DESCARGADO, '
  + '                         MAX(CPAGOMTO) GLOBAL, MAX(CPAGODEDUC) DEDUCCION, MAX(REPRAPENOM) REPRE '
  + '                  FROM (SELECT C.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID, '
  + '                               A.CPAGOMTO,A.CPAGODEDUC,A.REPRAPENOM,A.RCOBANO,A.RCOBMES,C.CREMTOCOB DESCARGADO, '
  + '                               ''CRE'' TIPO '
  + '                        FROM (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC, '
  + '                                     REPRAPENOM,RCOBANO,RCOBMES '
  + '                              FROM COB302 '
  + '                              WHERE TO_CHAR(FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                              ) A, CRE310 C '
  + '                  WHERE (C.RCOBID=A.RCOBID AND C.DETRCOBID=A.DETRCOBID AND C.NROOPE=A.RCOBNOPE '
  + '                    AND C.FOPERAC=A.RCOBFOPE AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) ) '
  + '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO ';
 XSQL2 :=
    '                  UNION ALL '
  + '                  SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID)UPROID,MAX(UPAGOID)UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,'
  + '                        MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,'
  + '                        MAX(CPAGODEDUC) DEDUCCION,MAX(REPRAPENOM) REPRE  '
  + '                  FROM (SELECT USEID,A.RCOBID,A.DETRCOBID,C.FOPERAC RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO,'
  + '                               A.RCOBMES,C.UPROID,C.UPAGOID,C.IMP_COB_DEU DESCARGADO,''FSC'' TIPO,A.CPAGOMTO,'
  + '                               A.CPAGODEDUC,A.REPRAPENOM '
  + '                        FROM (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC, '
  + '                                     REPRAPENOM,RCOBANO,RCOBMES '
  + '                              FROM COB302 '
  + '                              WHERE TO_CHAR(FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                              ) A, COB_FSC_PAGOS_AL_FSC C '
  + '                  WHERE C.RCOBID=A.RCOBID AND C.DETRCOBID=A.DETRCOBID AND  C.NROOPE=A.RCOBNOPE AND C.FOPERAC=A.RCOBFOPE '
  + '                    AND (C.FORPAGABR=''REG'' OR C.FORPAGABR=''PLA'' OR C.FORPAGABR=''CEF'') '
  + '                    AND (C.EST_COB_COD <>''13'' AND C.EST_COB_COD<>''04'') '
  + '                    AND C.RCOBID IS NOT  NULL) '
  + '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,TIPO,DETRCOBID ';
 XSQL3 :=
   '                  UNION ALL '
  + '                  SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID)UPROID,MAX(UPAGOID)UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO, '
  + '                         MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL, '
  + '                         MAX(CPAGODEDUC) DEDUCCION,MAX(REPRAPENOM) REPRE '
  + '                  FROM (SELECT USEID,A.RCOBID,A.DETRCOBID,C.CREFPAG RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO, '
  + '                               A.RCOBMES,C.UPROID,C.UPAGOID,C.CREMTOCOB DESCARGADO,''MAN'' TIPO,A.CPAGOMTO, '
  + '                               A.CPAGODEDUC,A.REPRAPENOM '
  + '                        FROM (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,CPAGODEDUC, '
  + '                                     REPRAPENOM,RCOBANO,RCOBMES '
  + '                              FROM COB302 '
  + '                              WHERE TO_CHAR(FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                              ) A, CRE310 C '
  + '                  WHERE C.CREFPAG=A.RCOBFOPE AND C.CREDOCPAG=A.RCOBNOPE '
  + '                    AND (C.FORPAGABR=''REG'' OR C.FORPAGABR=''PLA'' OR C.FORPAGABR=''CEF'') '
  + '                    AND C.UPROID=A.UPROID AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'') '
  + '                    AND C.RCOBID IS NULL) '
  + '                  GROUP BY RCOBID,RCOBNOPE,RCOBFOPE,TIPO,DETRCOBID '
  + '                        UNION ALL '
  + '                          SELECT RCOBID, RCOBNOPE, RCOBFOPE, TIPO,MAX(UPROID)UPROID,MAX(UPAGOID)UPAGOID, DETRCOBID, MAX(RCOBANO) RCOBANO, MAX(RCOBMES) RCOBMES, '
  + '                             SUM(DESCARGADO) DESCARGADO, MAX(CPAGOMTO) GLOBAL, MAX(CPAGODEDUC) DEDUCCION, MAX(REPRAPENOM) REPRE '
  + '                            FROM ( '
  + '                                   SELECT A.ASOID, '
  + '                                          A.USEID, A.RCOBID, A.DETRCOBID, F.RCOBFOPE RCOBFOPE, E.NROOPE RCOBNOPE, F.RCOBANO, F.RCOBMES, A.UPROID, A.UPAGOID, '
  + '                                          A.IMPDEV DESCARGADO, ''DEV'' TIPO, 0 CPAGOMTO, 0 CPAGODEDUC, F.REPRAPENOM '
  + '                                     FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D, COB302 F '
  + '                                    WHERE A.ANODEV = E.ANODEV AND A.CORDEV = E.CORDEV  AND A.ASOID = B.ASOID '
  + '                                      AND C.UPROID(+) = A.UPROID AND D.UPROID(+) = A.UPROID  and D.UPAGOID(+) = A.UPAGOID '
  + '                                      AND TO_CHAR(F.FREG,''YYYYMM'')=''' + XANOMES + '''  '
  + '                                      AND A.RCOBID=F.RCOBID(+) AND A.DETRCOBID=F.DETRCOBID(+) '
  + '                                 ) '
  + '                           GROUP BY RCOBID, RCOBNOPE, RCOBFOPE, TIPO, DETRCOBID '
  + '                ) '
  + '            ORDER BY RCOBNOPE,RCOBFOPE '
  + '      ) '
  + '     ) '
  + 'GROUP BY RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE '
  + 'ORDER BY REPRE,RCOBNOPE';

   xSQL := XSQL1 + XSQL2 + xSQL3;
   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames := 'REPRE';
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

   If Dm1.cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No existe información para exportar a Excel');
      Screen.Cursor := crDefault;
      Exit;
   End;

   DM1.HojaExcel('Resumen de Descargo Global',DM1.dsQry, DTGDATA);
   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames := '';
   Screen.Cursor := crDefault;

end;
//Final HPC_201609_COB

End.

