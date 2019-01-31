unit COB932C;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB932c
// Formulario                    : FEstadisticaFSC
// Fecha de Creación             : 18/12/2013
// Autor                         : Sistemas
// Objetivo                      : Reporte Resumen de Ingresos en Lote

// Actualizaciones               :
// HPC_201312_COB    18/12/2013  : Añadir al reporte las Devoluciones
// SPP_201314_COB                : Se realiza el pase a producción a partir del documento HPC_201312_COB


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, wwdblook, ExtCtrls,
  ComCtrls, DB, DBClient, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE,
  Grids, DBGrids;

type
  TFRepResIngLote3 = class(TForm)
    btnRepDescargo: TfcShapeBtn;
    rdgUsuario: TRadioGroup;
    gbUsuario: TGroupBox;
    dblUsuario: TwwDBLookupCombo;
    progbar: TProgressBar;
    GroupBox1: TGroupBox;
    edtAno: TEdit;
    Label6: TLabel;
    edtMes: TEdit;
    ppRIngLote: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLabel37: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLano2: TppLabel;
    ppLabel49: TppLabel;
    ppLmes2: TppLabel;
    ppLine9: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText23: TppDBText;
    ppLabel51: TppLabel;
    ppDBText26: TppDBText;
    ppDBText21: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine12: TppLine;
    ppLabel52: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppLine11: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    lblRegGOtros: TppLabel;
    lblRegGPeriodo: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel53: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel38: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    cdsReporte: TClientDataSet;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    dsReporte: TDataSource;
    ppDBIngLote: TppBDEPipeline;
    pplUsuario: TppLabel;
    ppLabel4: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
// Inicio: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
    ppDBText7: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel5: TppLabel;
// Fin: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
//
    procedure btnRepDescargoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rdgUsuarioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    Function DESDEPA(Xdepaid:string):string;
    Function DESUPRO(Xuproid:string):string;
    Function DESUPAGO(Xuproid,Xupagoid:string):string;
    Procedure ADDTMP(XQRY:String);
    { Private declarations }
  public
     RegGPeriodo,RegGOtros:Currency ;
    { Public declarations }
  end;

var
  FRepResIngLote3: TFRepResIngLote3;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFRepResIngLote3.ADDTMP(XQRY: String);
begin
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(XQRY);
  DM1.cdsQry.Open;

  IF DM1.cdsQry.RecordCount>0 THEN
     BEGIN
       DM1.cdsQry.First;
       WHILE NOT DM1.cdsQry.Eof DO
         BEGIN
           cdsReporte.Insert;
           cdsReporte.FieldByName('REGANOMES').AsString := DM1.cdsQry.FieldByName('ANOMES').AsString;
           cdsReporte.FieldByName('REPRE').AsString := DM1.cdsQry.FieldByName('REPRE').AsString;
           cdsReporte.FieldByName('RCOBFOPE').AsString := DM1.cdsQry.FieldByName('RCOBFOPE').AsString;
           cdsReporte.FieldByName('UPRODES').AsString := DESUPRO(DM1.cdsQry.FieldByName('UPROID').AsString);
           cdsReporte.FieldByName('DEPARTAMENTO').AsString := DESDEPA(DM1.cdsQry2.FieldByName('DPTOID').AsString);
           cdsReporte.FieldByName('UPAGODES').AsString := DESUPAGO(DM1.cdsQry.FieldByName('UPROID').AsString,DM1.cdsQry.FieldByName('UPAGOID').AsString);
           cdsReporte.FieldByName('RCOBNOPE').AsString := DM1.cdsQry.FieldByName('RCOBNOPE').AsString;
           cdsReporte.FieldByName('UPROID').AsString := DM1.cdsQry.FieldByName('UPROID').AsString;
           cdsReporte.FieldByName('DETRCOBID').AsString := DM1.cdsQry.FieldByName('DETRCOBID').AsString;
           cdsReporte.FieldByName('UPAGOID').AsString := DM1.cdsQry.FieldByName('UPAGOID').AsString;
           cdsReporte.FieldByName('USUARIO').AsString := DM1.cdsQry.FieldByName('USUARIO').AsString;
           cdsReporte.FieldByName('RCOBANO').AsString := DM1.cdsQry.FieldByName('RCOBANO').AsString;
           cdsReporte.FieldByName('RCOBMES').AsString := DM1.cdsQry.FieldByName('RCOBMES').AsString;
           cdsReporte.FieldByName('GLOBAL').AsFloat := DM1.cdsQry.FieldByName('GLOBAL').AsFloat;
           cdsReporte.FieldByName('APO').AsFloat := DM1.cdsQry.FieldByName('APO').AsFloat;
           cdsReporte.FieldByName('CRE').AsFloat := DM1.cdsQry.FieldByName('CRE').AsFloat;
           cdsReporte.FieldByName('MAN').AsFloat := DM1.cdsQry.FieldByName('MAN').AsFloat;

           cdsReporte.FieldByName('FSC').AsFloat  := DM1.cdsQry.FieldByName('FSC').AsFloat;
// Inicio: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
           cdsReporte.FieldByName('DEVO').AsFloat := DM1.cdsQry.FieldByName('DEVO').AsFloat;
// Fin: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias

           cdsReporte.FieldByName('TOTDES').AsFloat := DM1.cdsQry.FieldByName('TOTDES').AsFloat;
           cdsReporte.FieldByName('DIF').AsFloat := DM1.cdsQry.FieldByName('DIF').AsFloat;

           if DM1.cdsQry.FieldByName('ANOMES').AsString = trim(edtAno.Text)+trim(edtMes.Text) then
              RegGPeriodo:=RegGPeriodo+DM1.cdsQry.FieldByName('GLOBAL').AsFloat
           else
              RegGOtros:=RegGOtros+DM1.cdsQry.FieldByName('GLOBAL').AsFloat;

           DM1.cdsQry.Next;
          END;
// Inicio HPP_201111_COB
          cdsReporte.Post;
// Final HPP_201111_COB
          progbar.StepIt;
     END;
end;


procedure TFRepResIngLote3.btnRepDescargoClick(Sender: TObject);
// Inicio: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
VAR
  XSQL,XANOMES,xPeriodo, xfecha, xwhere, xWhere1 : STRING;
  xSQL1, xSQL2, xSQL3  : String;
// Fin: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
begin

// Inicio: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias

  Screen.Cursor:=crHourGlass;
  If rdgUsuario.ItemIndex= 0 Then xWhere  := '' else xWhere  :=' AND USUARIO ='''+dblUsuario.Text+''' ';
  If rdgUsuario.ItemIndex= 0 Then xWhere1 := '' else xWhere1 :=' AND A.USUCRE='''+dblUsuario.Text+''' ';
// Fin: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias

  cdsReporte.EmptyDataSet;


XANOMES            := TRIM(edtAno.Text)+TRIM(edtMes.Text);
xperiodo           := edtAno.Text+edtMes.Text;
xfecha             := '01/'+TRIM(edtMes.Text)+'/'+TRIM(edtAno.Text);
ppLano2.Caption    := TRIM(edtAno.Text);
ppLmes2.Caption    := TRIM(edtMes.Text);
RegGPeriodo        := 0;
RegGOtros          := 0;
progbar.Position   := 0;
progbar.Visible    := True;
progbar.StepIt;


// Cobranza global de meses anteriores que recien se han descargado en el periodo actual
// Inicio: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
XSQL1:=
 'SELECT ANOMES,RCOBID,REPRE,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,MAX(GLOBAL) GLOBAL,MAX(APO) APO,MAX(CRE) CRE,MAX(MAN) MAN,MAX(FSC) FSC,'
+ 'MAX(DEVO) DEVO, '
+ 'MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC)-MAX(DEVO) TOTDES, '
+ '(MAX(GLOBAL))-(MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC))-MAX(DEVO) DIF, MAX(USUARIO) USUARIO FROM '
+'(SELECT REPRE,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,DETRCOBID,RCOBANO,RCOBMES,GLOBAL,RCOBID,ANOMES,USUARIO,'
+'CASE WHEN TIPO=''APO'' THEN DESCARGADO ELSE 0 END APO,'
+'CASE WHEN TIPO=''CRE'' THEN DESCARGADO ELSE 0 END CRE,'
+'CASE WHEN TIPO=''MAN'' THEN DESCARGADO ELSE 0 END MAN,'
+'CASE WHEN TIPO=''FSC'' THEN DESCARGADO ELSE 0 END FSC, '
+'CASE WHEN TIPO = ''DEVO'' THEN DESCARGADO ELSE 0 END DEVO '
+'FROM (SELECT * FROM '
+'(SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,MAX(UPAGOID) UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES,MAX(USUARIO)USUARIO FROM '
+'(SELECT /*+ RULE */ B.USEID,A.*,NVL(B.TRANSMTO,0) DESCARGADO,''APO'' TIPO FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES,USUARIO FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+''''+xWhere+') A,'
+'      (SELECT *  FROM APO301 where FREG >='''+xfecha+''' and  FREG <= last_day ('''+xfecha+''') AND RCOBID IS NOT NULL) B '
+'WHERE (A.RCOBID=B.RCOBID AND A.DETRCOBID=B.DETRCOBID AND A.RCOBNOPE=B.TRANSNOPE AND A.RCOBFOPE=B.TRANSFOPE) ) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL ';

XSQL2:=
 'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,MAX(UPAGOID)UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES,MAX(USUARIO)USUARIO FROM '
+'(SELECT /*+ RULE */ C.USEID,A.*,C.IMP_COB_DEU DESCARGADO,''FSC'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES,USUARIO FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+''''+xWhere+'  ) A,'
+'    (SELECT * FROM COB_FSC_PAGOS_AL_FSC where FEC_CRE_COB_FSC >='''+xfecha+''' and  FEC_CRE_COB_FSC <= last_day ('''+xfecha+''') AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.EST_COB_COD <>''13'' AND C.EST_COB_COD<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,MAX(UPAGOID)UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES,MAX(USUARIO)USUARIO FROM '
+'(SELECT /*+ RULE */ C.USEID,A.*,C.CREMTOCOB DESCARGADO,''CRE'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES,USUARIO FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+''''+xWhere+') A,'
+'    (SELECT * FROM CRE310 where FREG >='''+xfecha+''' and  FREG <= last_day ('''+xfecha+''') AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES,MAX(USUARIO)USUARIO FROM '
+'(SELECT /*+ RULE */ USEID,A.RCOBID,A.DETRCOBID,C.CREFPAG RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO,A.RCOBMES,C.UPROID,C.UPAGOID,C.CREMTOCOB DESCARGADO,''MAN'' TIPO,A.CPAGOMTO,A.REPRAPENOM,A.ANOMES,A.USUARIO FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES,USUARIO FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+''''+xWhere+') A,'
+'      (SELECT * FROM CRE310 where FREG >='''+xfecha+''' and  FREG <= last_day ('''+xfecha+''') AND (forpagabr=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NULL ) C '
+'WHERE C.CREFPAG=A.RCOBFOPE AND C.CREDOCPAG=A.RCOBNOPE AND (C.FORPAGABR=''PLA'' OR C.FORPAGABR=''REG'' OR C.FORPAGABR=''CEF'') AND C.UPROID=A.UPROID AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')  AND C.RCOBID IS NULL) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO,UPROID,UPAGOID '

// Incluir las Devoluciones
+'UNION ALL '
+'SELECT RCOBID, RCOBNOPE, RCOBFOPE, TIPO, UPROID, UPAGOID, DETRCOBID, '
+'  MAX(RCOBANO) RCOBANO, MAX(RCOBMES) RCOBMES, SUM(DESCARGADO) DESCARGADO, '
+'  MAX(CPAGOMTO) GLOBAL, MAX(REPRAPENOM) REPRE, TO_CHAR(FECCRE, ''YYYYMM'') ANOMES, MAX(USUCRE) USUARIO '
+'FROM ( '
+'  SELECT A.USEID, A.RCOBID, A.DETRCOBID, F.RCOBFOPE RCOBFOPE, E.NROOPE RCOBNOPE, F.RCOBANO, '
+'    F.RCOBMES, A.UPROID, A.UPAGOID, A.FECCRE, '
+'    A.IMPDEV DESCARGADO, ''DEVO'' TIPO, 0 CPAGOMTO, 0 CPAGODEDUC, F.REPRAPENOM, A.USUCRE '
+'  FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D, COB302 F '
+' WHERE A.ANODEV = E.ANODEV AND A.CORDEV = E.CORDEV  AND A.ASOID = B.ASOID '
+'   AND C.UPROID(+) = A.UPROID AND D.UPROID(+) = A.UPROID  and D.UPAGOID(+) = A.UPAGOID '
+'   AND TO_CHAR(F.FREG, ''YYYYMM'') = '''+XANOMES+'111'+''' '+xWhere1
+'   AND A.RCOBID=F.RCOBID(+) AND A.DETRCOBID=F.DETRCOBID(+) '
+'     ) '
+' GROUP BY RCOBID, RCOBNOPE, RCOBFOPE, TIPO, UPROID, UPAGOID, DETRCOBID, FECCRE '
+') '
+'ORDER BY RCOBNOPE,RCOBFOPE )) '
// incluye devolución al FSC
+' WHERE APO>0 OR CRE>0 OR MAN>0 OR FSC>0 OR DEVO > 0'
+'GROUP BY ANOMES,RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE,UPROID,UPAGOID '
+'ORDER BY REPRE,RCOBNOPE';

xSQL := xSQL1 + xSQL2;
// Fin: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias


ADDTMP(XSQL);



//Cobranza global del periodo actual
// Inicio: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias
XSQL1 :=
 'SELECT ANOMES,RCOBID,REPRE,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES, '
+'MAX(GLOBAL) GLOBAL, MAX(APO) APO, MAX(CRE) CRE, MAX(MAN) MAN, MAX(FSC) FSC, '
+ 'MAX(DEVO) DEVO, '
+ 'MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC)-MAX(DEVO) TOTDES, '
+ '(MAX(GLOBAL))-(MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC))-MAX(DEVO) DIF, MAX(USUARIO) USUARIO FROM '
+'(SELECT REPRE,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,DETRCOBID,RCOBANO,RCOBMES,GLOBAL,RCOBID,ANOMES,USUARIO,'
+'CASE WHEN TIPO=''APO'' THEN DESCARGADO ELSE 0 END APO,'
+'CASE WHEN TIPO=''CRE'' THEN DESCARGADO ELSE 0 END CRE,'
+'CASE WHEN TIPO=''MAN'' THEN DESCARGADO ELSE 0 END MAN,'
+'CASE WHEN TIPO=''FSC'' THEN DESCARGADO ELSE 0 END FSC, '
+'CASE WHEN TIPO = ''DEVO'' THEN DESCARGADO ELSE 0 END DEVO '
+'FROM (SELECT * FROM '
+'(SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,MAX(UPAGOID) UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES,MAX(USUARIO)USUARIO FROM '
+'(SELECT /*+ RULE */ B.USEID,A.*,NVL(B.TRANSMTO,0) DESCARGADO,''APO'' TIPO FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES,USUARIO FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+''''+xWhere+') A,'
+'      (SELECT *  FROM APO301 where FREG >='''+xfecha+''' and  FREG <= last_day ('''+xfecha+''') AND RCOBID IS NOT NULL) B '
+'WHERE (A.RCOBID=B.RCOBID(+)  AND A.DETRCOBID=B.DETRCOBID(+) AND A.RCOBNOPE=B.TRANSNOPE(+) AND A.RCOBFOPE=B.TRANSFOPE(+)) ) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,MAX(UPAGOID)UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES,MAX(USUARIO)USUARIO FROM '
+'(SELECT /*+ RULE */ C.USEID,A.*,C.IMP_COB_DEU DESCARGADO,''FSC'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES,USUARIO FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+''''+xWhere+'  ) A,'
+'    (SELECT * FROM COB_FSC_PAGOS_AL_FSC where FEC_CRE_COB_FSC >='''+xfecha+''' and  FEC_CRE_COB_FSC <= last_day ('''+xfecha+''') AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.EST_COB_COD <>''13'' AND C.EST_COB_COD<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL ';

xSQL2:=
 'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,MAX(UPAGOID) UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES,MAX(USUARIO)USUARIO FROM '
+'(SELECT /*+ RULE */ C.USEID,A.*,C.CREMTOCOB DESCARGADO,''CRE'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES,USUARIO  FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+''''+xWhere+') A,'
+'    (SELECT * FROM CRE310 where FREG >='''+xfecha+''' and  FREG <= last_day ('''+xfecha+''') AND (forpagabr=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,UPAGOID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES,MAX(USUARIO)USUARIO FROM '
+'(SELECT /*+ RULE */ USEID,A.RCOBID,A.DETRCOBID,C.CREFPAG RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO,A.RCOBMES,C.UPROID,C.UPAGOID,C.CREMTOCOB DESCARGADO,''MAN'' TIPO,A.CPAGOMTO,A.REPRAPENOM,A.ANOMES,A.USUARIO FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES,USUARIO FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+''''+xWhere+') A,'
+'      (SELECT * FROM CRE310 where FREG >='''+xfecha+''' and  FREG <= last_day ('''+xfecha+''') AND (forpagabr=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NULL ) C '
+'WHERE C.CREFPAG=A.RCOBFOPE AND C.CREDOCPAG=A.RCOBNOPE AND (C.FORPAGABR=''PLA'' OR C.FORPAGABR=''REG'' OR C.FORPAGABR=''CEF'') AND C.UPROID=A.UPROID AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')  AND C.RCOBID IS NULL) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO,UPROID,UPAGOID '

// Añadir al reporte las Devoluciones
+'UNION ALL '
+'SELECT RCOBID, RCOBNOPE, RCOBFOPE, TIPO, UPROID, UPAGOID, DETRCOBID, '
+'  MAX(RCOBANO) RCOBANO, MAX(RCOBMES) RCOBMES, SUM(DESCARGADO) DESCARGADO, '
+'  MAX(CPAGOMTO) GLOBAL, MAX(REPRAPENOM) REPRE, TO_CHAR(FECCRE, ''YYYYMM'') ANOMES, MAX(USUCRE) USUARIO '
+'FROM ( '
+'  SELECT A.USEID, A.RCOBID, A.DETRCOBID, F.RCOBFOPE RCOBFOPE, E.NROOPE RCOBNOPE, F.RCOBANO, '
+'    F.RCOBMES, A.UPROID, A.UPAGOID, A.FECCRE, '
+'    A.IMPDEV DESCARGADO, ''DEVO'' TIPO, 0 CPAGOMTO, 0 CPAGODEDUC, F.REPRAPENOM, A.USUCRE '
+'  FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D, COB302 F '
+' WHERE A.ANODEV = E.ANODEV AND A.CORDEV = E.CORDEV  AND A.ASOID = B.ASOID '
+'   AND C.UPROID(+) = A.UPROID AND D.UPROID(+) = A.UPROID  and D.UPAGOID(+) = A.UPAGOID '
+'   AND TO_CHAR(F.FREG, ''YYYYMM'') = '''+XANOMES+''' '+xWhere1
+'   AND A.RCOBID=F.RCOBID(+) AND A.DETRCOBID=F.DETRCOBID(+) '
+'     ) '
+' GROUP BY RCOBID, RCOBNOPE, RCOBFOPE, TIPO, UPROID, UPAGOID, DETRCOBID, FECCRE '
+') '
+'ORDER BY RCOBNOPE,RCOBFOPE )) '
+'GROUP BY ANOMES,RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE,UPROID,UPAGOID '
+'ORDER BY REPRE,RCOBNOPE';

xSQL := xSQL1 + xSQL2;
// Fin: SPP_201314_COB    18/12/2013  : Añadir al reporte las Devoluciones por Inconsistencias

ADDTMP(XSQL);

{//Cobranza de aportes en EFE   y por Banco (totalmente manual)
XSQL:=
'SELECT /*+ RULE */ TO_CHAR(FREG,''YYYYMM'') ANOMES,'' '' REPRE,TRANSFOPE RCOBFOPE,TRANSNOPE RCOBNOPE,UPROID,DETRCOBID,'' '' RCOBANO,'' '' RCOBMES, 0 GLOBAL, SUM(TRANSMTO) APO, 0 CRE, 0 MAN, SUM(TRANSMTO) TOTDES,SUM(TRANSMTO) DIF '
+' FROM APO301  where FREG >='''+xfecha+''' and  FREG <= last_day ('''+xfecha+''') and FORPAGOID IN (''02'',''03'') '
+' GROUP BY TO_CHAR(FREG,''YYYYMM''),UPROID,DETRCOBID,TRANSFOPE,TRANSNOPE ';
ADDTMP(XSQL);}

If cdsReporte.RecordCount <=0 Then
   Begin
     ShowMessage('No Existe Información para Procesar');
     cdsReporte.EmptyDataSet;
     DM1.cdsQry.Close;
     DM1.cdsQry.IndexFieldNames:='';
     progbar.Visible := False;
     Screen.Cursor:=crDefault;
     Exit;
   End;

cdsReporte.First;
ppDBIngLote.DataSource := dsReporte;
lblRegGPeriodo.Caption := FormatCurr('##,###,###.#0',RegGPeriodo);
lblRegGOtros.Caption := FormatCurr('##,###,###.#0',RegGOtros);
progbar.Visible := False;
ppRIngLote.DataPipeline := ppDBIngLote;
if Length(trim(dblUsuario.Text))>0 Then pplUsuario.Caption := 'USUARIO :'+dblUsuario.Text else pplUsuario.Caption :='USUARIO : Todos';
ppRIngLote.Print;
ppRIngLote.Stop;
DM1.cdsQry.Close;
DM1.cdsQry.IndexFieldNames:='';
Screen.Cursor:=crDefault;


end;

Function TFRepResIngLote3.DESDEPA(Xdepaid: string): string;
var xsql:string;
begin
   xsql:='SELECT DPTODES FROM APO158 WHERE DPTOID='''+Xdepaid +'''';
   dm1.cdsQry2.Close;
   dm1.cdsQry2.DataRequest(xsql);
   dm1.cdsQry2.Open;
   if dm1.cdsQry2.RecordCount <> 0 then
        Result := TRIM(dm1.cdsQry2.FieldByName('DPTODES').AsString)
   Else
        Result := 'No identificado';
end;


Function TFRepResIngLote3.DESUPAGO(Xuproid,Xupagoid: string): string;
var xsql:string;
begin
   xsql:='SELECT UPAGONOM FROM APO103 WHERE UPROID='''+Xuproid+'''  and UPAGOID='''+Xupagoid+''' ';
   dm1.cdsQry2.Close;
   dm1.cdsQry2.DataRequest(xsql);
   dm1.cdsQry2.Open;
   if dm1.cdsQry2.RecordCount <> 0 then
        Result := TRIM(dm1.cdsQry2.FieldByName('UPAGONOM').AsString)
   Else
        Result := 'No identificado';
end;

Function TFRepResIngLote3.DESUPRO(Xuproid: string): string;
var xsql:strinG;
begin
   xsql:= 'SELECT UPRONOM,DPTOID FROM APO102 WHERE UPROID='''+Xuproid+'''';
   dm1.cdsQry2.Close;
   dm1.cdsQry2.DataRequest(xsql);
   dm1.cdsQry2.Open;
   if dm1.cdsQry2.RecordCount <> 0 then
        Result := TRIM(dm1.cdsQry2.FieldByName('UPRONOM').AsString)
   Else
        Result := 'No identificado';

end;

procedure TFRepResIngLote3.FormActivate(Sender: TObject);
var xsql:string;
begin
  xsql:= 'SELECT USERID,USERNOM FROM USERTABLE WHERE AREA=''COB'' ';
  DM1.cdsCEdu.Close;
  DM1.cdsCEdu.DataRequest(XSQL);
  DM1.cdsCEdu.Open;
  dblUsuario.LookupField := 'USERID';
  dblUsuario.LookupTable := dm1.cdsCEdu;
  rdgUsuario.ItemIndex := 0;
end;

procedure TFRepResIngLote3.rdgUsuarioClick(Sender: TObject);
begin
 if rdgUsuario.ItemIndex = 0 then
   Begin
    gbUsuario.Enabled := False;
    dblUsuario.Text   := '';
   End
 else
   Begin
    gbUsuario.Enabled := True;
    dblUsuario.Text   := '';
   End;
end;

procedure TFRepResIngLote3.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 Then
 if   (ActiveControl is TCheckBox) then
      Begin
       Key:=#0;
       Perform(CM_DialogKey,VK_TAB,0);
      end
   else
      Begin
        Key:=#0;
        Perform(CM_DialogKey,VK_TAB,0);
      end;
end;

end.
