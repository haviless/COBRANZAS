// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB932B
// Formulario                    : FRepResIngLote2
// Fecha de Creación             : 18/12/2013
// Autor                         : Sistemas
// Objetivo                      : Reporte Resumen de Ingreso en Lote y Manual
// Actualizaciones               :
//HPC_201609_COB                 :  04/04/2016 Se adiciona botón para exportar reporte a Excel y se corrige el tamañoo de columna del reporte
unit COB932B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ppPrnabl, ppClass,
  ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppVar, DB, DBClient, Grids, DBGrids, ppDBBDE, Wwdatsrc,
//Inicio HPC_201609_COB --Variables
  wwclient, ComCtrls, Wwdbigrd, Wwdbgrid, ppStrtch, ppSubRpt, ppEndUsr,
  ppParameter, jpeg;
//Final HPC_201609_COB

type
  TFRepResIngLote2 = class(TForm)

// inicio: HPP_201011_COB
//    dsReporte: TDataSource;
//    cdsReporte: TClientDataSet;
// fin: HPP_201011_COB

    ppRApoAnul: TppReport;
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
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine12: TppLine;
    ppLabel52: TppLabel;
    ppDBText24: TppDBText;
    ppLabel53: TppLabel;
    ppDBText26: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppdbApoAnula: TppBDEPipeline;
    ppDBText25: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine9: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText21: TppDBText;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine11: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    lblRegGOtros: TppLabel;
    lblRegGPeriodo: TppLabel;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnRepDescargo: TfcShapeBtn;
    progbar: TProgressBar;
    dtpInicio: TDateTimePicker;
    dtpFinal: TDateTimePicker;

// inicio: HPP_201011_COB
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    cdsReporte: TwwClientDataSet;
    dsReporte: TwwDataSource;
// fin: HPP_201011_COB
//Inicio HPC_201609_COB --Se adiciona botón para exportar reporte a Excel
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape3: TppShape;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLabel8: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape5: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel20: TppLabel;
    ppLine6: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine13: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine15: TppLine;
    ppLabel48: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppLine16: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppLine14: TppLine;
    ppLabel26: TppLabel;
    ppDBText30: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText22: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppdbRESFORPAG: TppBDEPipeline;
    ppds1: TppDesigner;
    ppParameterList1: TppParameterList;
    CDSREPRESUMEN: TwwClientDataSet;
    DSREPRESUMEN: TwwDataSource;
    ppdbRESUMENSUBT: TppBDEPipeline;
    ppImage1: TppImage;
    dtgData: TDBGrid;
    ppGroupFooterBand4: TppGroupFooterBand;
    BtnExcel: TfcShapeBtn;
//Final HPC_201609_COB

    procedure edtAnoChange(Sender: TObject);
    procedure edtAnoExit(Sender: TObject);
    procedure edtAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edtMesKeyPress(Sender: TObject; var Key: Char);
    procedure btnRepDescargoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//Inicio HPC_201609_COB --Se adiciona botón para exportar reporte a Excel
    procedure BtnExcelClick(Sender: TObject);
//Final HPC_201609_COB
  private
    Function DESDEPA(Xdepaid:string):string;
    Function DESUPRO(Xuproid:string):string;
    Procedure ADDTMP(XQRY:String);
//Inicio HPC_201609_COB --Se adiciona botón para exportar reporte a Excel
    Procedure ADDTMP2(XQRY:String);    
//Final HPC_201609_COB
    { Private declarations }
  public
    RegGPeriodo,RegGOtros:Currency ;
    { Public declarations }
  end;

var
  FRepResIngLote2: TFRepResIngLote2;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFRepResIngLote2.edtAnoChange(Sender: TObject);
begin

If  (Length(Trim(DateToStr(dtpInicio.date)))<>0) and (Length(Trim(DateToStr(dtpFinal.date)))<>0) then
  Begin
     If  StrToInt(copy(DateToStr(dtpInicio.date),7,4))<2003 Then
       Begin
         ShowMessage('El año de registro debe ser mayor o igual al 2003');
       End;

     If StrToInt(copy(DateToStr(dtpFinal.date),7,4))<2003 Then
       Begin
         ShowMessage('El año de registro debe ser mayor o igual al 2003');
       End;
  End;

end;

procedure TFRepResIngLote2.edtAnoExit(Sender: TObject);
begin
If  (Length(Trim(DateToStr(dtpInicio.date)))<>0) and (Length(Trim(DateToStr(dtpFinal.date)))<>0) then
  Begin
     If  StrToInt(copy(DateToStr(dtpInicio.date),7,4))<2003 Then
       Begin
         ShowMessage('El año de registro debe ser mayor o igual al 2003');
       End;

     If StrToInt(copy(DateToStr(dtpFinal.date),7,4))<2003 Then
       Begin
         ShowMessage('El año de registro debe ser mayor o igual al 2003');
       End;
  End;
end;

procedure TFRepResIngLote2.edtAnoKeyPress(Sender: TObject; var Key: Char);
begin
if  key  in [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
   begin
     Key :=#0;
   end;

end;

procedure TFRepResIngLote2.edtMesKeyPress(Sender: TObject; var Key: Char);
begin
if  key  in [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
   begin
     Key :=#0;
   end;
end;



procedure TFRepResIngLote2.btnRepDescargoClick(Sender: TObject);
VAR XSQL,XANOMES,xPeriodo,xfecha1,xfecha2:STRING;
//Inicio HPC_201609_COB  --Se adiciona botón para exportar reporte a Excel
    vreganomm,vdptoid:String;
    vglobal,vapo,vcre,vman,vtotdes,vdif,vfsc: double;
//Final HPC_201609_COB
begin
Screen.Cursor:=crHourGlass;

// inicio: HPP_201011_COB
cdsReporte.Open;
cdsReporte.EmptyDataSet;
{
REGANOMES      ftString    6
REPRE          ftString    100
RCOBFOPE       ftString    10
RCOBNOPE       ftString    20
DEPARTAMENTO   ftString    20
UPROID         ftString    3
UPRODES        ftString    30
DETRCOBID      ftString    7
RCOBANO        ftString    4
RCOBMES        ftString    2
GLOBAL         ftFloat
APO            ftFloat
CRE            ftFloat
MAN            ftFloat
TOTDES         ftFloat
DIF            ftFloat
FSC            ftFloat
}
// Fin: HPP_201011_COB

//XANOMES        :=  TRIM(edtAno.Text)+TRIM(edtMes.Text);
//xperiodo       :=  edtAno.Text+edtMes.Text;
//xfecha         :=  '01/'+TRIM(edtMes.Text)+'/'+TRIM(edtAno.Text);
//ppLano2.Caption:=  TRIM(edtAno.Text);
//ppLmes2.Caption:=  TRIM(edtMes.Text);

XANOMES    := COPY(DateToStr(dtpInicio.Date),7,4)+COPY(DateToStr(dtpInicio.Date),4,2);
xPeriodo   := COPY(DateToStr(dtpInicio.Date),7,4)+COPY(DateToStr(dtpInicio.Date),4,2);
xfecha1    := DateToStr(dtpInicio.Date);
xfecha2    := DateToStr(dtpFinal.Date);
ppLano2.Caption:= COPY(DateToStr(dtpInicio.Date),7,4);
ppLmes2.Caption:= COPY(DateToStr(dtpInicio.Date),4,2);


RegGPeriodo    :=  0;
RegGOtros      :=  0;
progbar.Position   := 0;
//grpProgres.Visible := True;
progbar.Visible := True;
progbar.StepIt;


//Cobranza global de meses anteriores que recien se han descargado en el periodo actual
XSQL:=
// inicio: HPP_201011_COB
 'SELECT ANOMES,RCOBID,REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,MAX(GLOBAL) GLOBAL,MAX(APO) APO,MAX(CRE) CRE,MAX(MAN) MAN,MAX(FSC) FSC,'
+'       MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC) TOTDES,(MAX(GLOBAL))-(MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC)) DIF FROM '
// fin: HPP_201011_COB
+'(SELECT REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,RCOBANO,RCOBMES,GLOBAL,RCOBID,ANOMES,'
+'CASE WHEN TIPO=''APO'' THEN DESCARGADO ELSE 0 END APO,'
+'CASE WHEN TIPO=''CRE'' THEN DESCARGADO ELSE 0 END CRE,'
// inicio: HPP_201011_COB
+'CASE WHEN TIPO=''MAN'' THEN DESCARGADO ELSE 0 END MAN,'
+'CASE WHEN TIPO=''FSC'' THEN DESCARGADO ELSE 0 END FSC '
// fin: HPP_201011_COB
+'FROM (SELECT * FROM '
+'(SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ B.USEID,A.*,NVL(B.TRANSMTO,0) DESCARGADO,''APO'' TIPO FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+'''  ) A,'
+'      (SELECT *  FROM APO301 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND RCOBID IS NOT NULL) B '
+'WHERE (A.RCOBID=B.RCOBID AND A.DETRCOBID=B.DETRCOBID AND A.RCOBNOPE=B.TRANSNOPE AND A.RCOBFOPE=B.TRANSFOPE) ) '
// inicio: HPP_201011_COB
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '

+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ C.USEID,A.*,C.IMP_COB_DEU DESCARGADO,''FSC'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+'''  ) A,'
+'    (SELECT * FROM COB_FSC_PAGOS_AL_FSC where FEC_CRE_COB_FSC >='''+xfecha1+''' and  FEC_CRE_COB_FSC <= last_day ('''+xfecha2+''') AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.EST_COB_COD <>''13'' AND C.EST_COB_COD<>''04'')) )  '
// fin: HPP_201011_COB
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ C.USEID,A.*,C.CREMTOCOB DESCARGADO,''CRE'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+'''  ) A,'
+'    (SELECT * FROM CRE310 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ USEID,A.RCOBID,A.DETRCOBID,C.CREFPAG RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO,A.RCOBMES,C.UPROID,C.UPAGOID,C.CREMTOCOB DESCARGADO,''MAN'' TIPO,A.CPAGOMTO,A.REPRAPENOM,A.ANOMES FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+'''  ) A,'
+'      (SELECT * FROM CRE310 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND (forpagabr=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NULL ) C '
+'WHERE C.CREFPAG=A.RCOBFOPE AND C.CREDOCPAG=A.RCOBNOPE AND (C.FORPAGABR=''PLA'' OR C.FORPAGABR=''REG'' OR C.FORPAGABR=''CEF'') AND C.UPROID=A.UPROID AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')  AND C.RCOBID IS NULL) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO,UPROID) '
+'ORDER BY RCOBNOPE,RCOBFOPE )) '
//Inicial: HPP_201114_COB
// se incluye devoluciones al FSC
+' WHERE APO>0 OR CRE>0 OR MAN>0 OR FSC>0'
//Fin: HPP_201114_COB
+'GROUP BY ANOMES,RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE,UPROID '
+'ORDER BY REPRE,RCOBNOPE';
ADDTMP(XSQL);


//Cobranza global del periodo actual
XSQL :=
// inicio: HPP_201011_COB
'SELECT ANOMES,RCOBID,REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,MAX(GLOBAL) GLOBAL,MAX(APO) APO,MAX(CRE) CRE,MAX(MAN) MAN,MAX(FSC) FSC,'
+'       MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC) TOTDES,(MAX(GLOBAL))-(MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC)) DIF FROM '
// fin: HPP_201011_COB
+'(SELECT REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,RCOBANO,RCOBMES,GLOBAL,RCOBID,ANOMES,'
+'CASE WHEN TIPO=''APO'' THEN DESCARGADO ELSE 0 END APO,'
+'CASE WHEN TIPO=''CRE'' THEN DESCARGADO ELSE 0 END CRE,'
// inicio: HPP_201011_COB
+'CASE WHEN TIPO=''MAN'' THEN DESCARGADO ELSE 0 END MAN,'
+'CASE WHEN TIPO=''FSC'' THEN DESCARGADO ELSE 0 END FSC '
// fin: HPP_201011_COB
+'FROM (SELECT * FROM '
+'(SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ B.USEID,A.*,NVL(B.TRANSMTO,0) DESCARGADO,''APO'' TIPO FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'      (SELECT *  FROM APO301 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND RCOBID IS NOT NULL) B '
+'WHERE (A.RCOBID=B.RCOBID(+)  AND A.DETRCOBID=B.DETRCOBID(+) AND A.RCOBNOPE=B.TRANSNOPE(+) AND A.RCOBFOPE=B.TRANSFOPE(+)) ) '
// inicio: HPP_201011_COB
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '

+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ C.USEID,A.*,C.IMP_COB_DEU DESCARGADO,''FSC'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'    (SELECT * FROM COB_FSC_PAGOS_AL_FSC where FEC_CRE_COB_FSC >='''+xfecha1+''' and  FEC_CRE_COB_FSC <= last_day ('''+xfecha2+''') AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.EST_COB_COD <>''13'' AND C.EST_COB_COD<>''04'')) )  '
// fin: HPP_201011_COB

+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ C.USEID,A.*,C.CREMTOCOB DESCARGADO,''CRE'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES  FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'    (SELECT * FROM CRE310 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND (forpagabr=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ USEID,A.RCOBID,A.DETRCOBID,C.CREFPAG RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO,A.RCOBMES,C.UPROID,C.UPAGOID,C.CREMTOCOB DESCARGADO,''MAN'' TIPO,A.CPAGOMTO,A.REPRAPENOM,A.ANOMES FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'      (SELECT * FROM CRE310 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND (forpagabr=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NULL ) C '
+'WHERE C.CREFPAG=A.RCOBFOPE AND C.CREDOCPAG=A.RCOBNOPE AND (C.FORPAGABR=''PLA'' OR C.FORPAGABR=''REG'' OR C.FORPAGABR=''CEF'') AND C.UPROID=A.UPROID AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')  AND C.RCOBID IS NULL) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO,UPROID) '
+'ORDER BY RCOBNOPE,RCOBFOPE )) '
+'GROUP BY ANOMES,RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE,UPROID '
+'ORDER BY REPRE,RCOBNOPE';
ADDTMP(XSQL);


//Cobranza de aportes en EFE   y por Banco (totalmente manual)
XSQL:=
// inicio: HPP_201011_COB
'SELECT /*+ RULE */ TO_CHAR(FREG,''YYYYMM'') ANOMES,'' '' REPRE,TRANSFOPE RCOBFOPE,TRANSNOPE RCOBNOPE,UPROID,DETRCOBID,'' '' RCOBANO,'' '' RCOBMES, 0 GLOBAL, SUM(TRANSMTO) APO, 0 CRE, 0 MAN, 0 FSC, SUM(TRANSMTO) TOTDES,SUM(TRANSMTO) DIF '
+' FROM APO301  where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') and FORPAGOID IN (''02'',''03'') '
+' GROUP BY TO_CHAR(FREG,''YYYYMM''),UPROID,DETRCOBID,TRANSFOPE,TRANSNOPE ';
ADDTMP(XSQL);


//dm1.cdsReporte.First;
cdsReporte.First;
// fin: HPP_201011_COB
//ppdbApoAnula.DataSource := dm1.dsReporte;

//Inicio HPC_201609_COB --Se corrige el tamañoo de columna del reporte
XSQL:=
' SELECT  COBRANZAS,SUM(NVL(PLA,0)) PLA,SUM(NVL(BAN,0))BAN,SUM(NVL(EFE,0))EFE, SUM(NVL(PLA,0)+NVL(BAN,0)+NVL(EFE,0)) TOT  '
+' FROM ( '
+'SELECT ''CRÉDITOS'' COBRANZAS,'
+'    SUM(CASE WHEN FORPAGABR IN (''REG'',''PLA'',''CEF'') THEN CREMTOCOB END) PLA,'
+'    SUM(CASE WHEN FORPAGABR=''BAN'' THEN CREMTOCOB END) BAN,'
+'    SUM(CASE WHEN FORPAGABR=''EFE'' THEN CREMTOCOB END) EFE '
+'FROM CRE310 '
+' WHERE FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND  (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND CREESTID NOT IN (''13'',''04'') '
+'GROUP BY FORPAGABR '
+' UNION ALL '
+'SELECT ''FONDO SOLIDARIO'', '
+'    SUM(CASE WHEN FORPAGABR IN (''REG'',''PLA'',''CEF'') THEN IMP_COB_DEU END) PLA,'
+'    SUM(CASE WHEN FORPAGABR=''BAN'' THEN IMP_COB_DEU END) BAN,'
+'    SUM(CASE WHEN FORPAGABR=''EFE'' THEN IMP_COB_DEU END) EFE '
+'FROM COB_FSC_PAGOS_AL_FSC '
+'WHERE FEC_CRE_COB_FSC >='''+xfecha1+''' and  FEC_CRE_COB_FSC <= last_day ('''+xfecha2+''') AND RCOBID IS NOT NULL AND EST_COB_COD NOT IN (''13'',''04'') AND  (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') '
+'GROUP BY FORPAGABR '
+' UNION ALL '
+'SELECT ''APORTES'', '
+'    SUM(CASE WHEN FORPAGOABR IN (''REG'',''PLA'',''CEF'') THEN TRANSMTO END) PLA, '
+'    SUM(CASE WHEN FORPAGOABR=''BAN'' THEN TRANSMTO END) BAN, '
+'    SUM(CASE WHEN FORPAGOABR=''EFE'' THEN TRANSMTO END) EFE '
+'FROM APO301 WHERE FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND ( RCOBID IS NOT NULL or FORPAGOID IN (''02'',''03'')) '
+'GROUP BY FORPAGOABR '
+') GROUP BY COBRANZAS ';
DM1.cdsQry6.Close;
DM1.cdsQry6.DataRequest(XSQL);
DM1.cdsQry6.Open;

//Resumen de cobranza global (solo subtotales por periodo y departamento
cdsReporte.First;
While not cdsReporte.Eof do
Begin
    vreganomm:=cdsReporte.FieldByName('REGANOMES').AsString;
    vdptoid  :=cdsReporte.FieldByName('DEPARTAMENTO').AsString;
    vglobal:= 0;
    vapo   := 0;
    vcre   := 0;
    vman   := 0;
    vtotdes:= 0;
    vdif   := 0;
    vfsc   := 0;
    While ( (cdsReporte.FieldByName('REGANOMES').AsString   =vreganomm) and
           (cdsReporte.FieldByName('DEPARTAMENTO').AsString =vdptoid )) and (not cdsReporte.eof) DO
     Begin
        vglobal:= vglobal  + cdsReporte.FieldByName('global').AsFloat;
        vapo   := vapo     + cdsReporte.FieldByName('apo').AsFloat;
        vcre   := vcre     + cdsReporte.FieldByName('cre').AsFloat;
        vman   := vman     + cdsReporte.FieldByName('man').AsFloat;
        vtotdes:= vtotdes  + cdsReporte.FieldByName('totdes').AsFloat;
        vdif   := vdif     + cdsReporte.FieldByName('dif').AsFloat;
        vfsc   := vfsc     + cdsReporte.FieldByName('fsc').AsFloat;
        cdsReporte.Next;
     end;

     CDSREPRESUMEN.Insert;
     CDSREPRESUMEN.FieldByName('REGANOMES').AsString := vreganomm;
     CDSREPRESUMEN.FieldByName('DEPARTAMENTO').AsString := vdptoid;
     CDSREPRESUMEN.FieldByName('GLOBAL').AsFloat := vglobal;
     CDSREPRESUMEN.FieldByName('APO').AsFloat := vapo;
     CDSREPRESUMEN.FieldByName('CRE').AsFloat := vcre;
     CDSREPRESUMEN.FieldByName('MAN').AsFloat := vman;
     CDSREPRESUMEN.FieldByName('TOTDES').AsFloat := vtotdes;
     CDSREPRESUMEN.FieldByName('DIF').AsFloat := vdif;
     CDSREPRESUMEN.FieldByName('FSC').AsFloat := vfsc;
     CDSREPRESUMEN.Post;
End;

If CDSREPRESUMEN.RecordCount=0 Then
Begin
 ShowMessage('No existe información para mostrar, verifique el rango de fecha');
 progbar.Visible := False;
 Screen.Cursor:=crDefault;
 exit;
End;
//Final HPC_201609_COB



lblRegGPeriodo.Caption := FormatCurr('##,###,###.#0',RegGPeriodo);
lblRegGOtros.Caption := FormatCurr('##,###,###.#0',RegGOtros);
progbar.Visible := False;
ppRApoAnul.Print;
ppRApoAnul.Stop;
//Inicio HPC_201609_COB --No se usa 
//ppds1.ShowModal;
//Final HPC_201609_COB
DM1.cdsQry.Close;
DM1.cdsQry.IndexFieldNames:='';
Screen.Cursor:=crDefault;

end;



procedure TFRepResIngLote2.FormKeyPress(Sender: TObject; var Key: Char);
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



//----------------------------------------------------------
//ADICIONA DATA A LA TABLA TEMPORAL
procedure TFRepResIngLote2.ADDTMP(XQRY: String);
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
           cdsReporte.FieldByName('RCOBNOPE').AsString := DM1.cdsQry.FieldByName('RCOBNOPE').AsString;
           cdsReporte.FieldByName('UPROID').AsString := DM1.cdsQry.FieldByName('UPROID').AsString;
           cdsReporte.FieldByName('DETRCOBID').AsString := DM1.cdsQry.FieldByName('DETRCOBID').AsString;
           cdsReporte.FieldByName('RCOBANO').AsString := DM1.cdsQry.FieldByName('RCOBANO').AsString;
           cdsReporte.FieldByName('RCOBMES').AsString := DM1.cdsQry.FieldByName('RCOBMES').AsString;
           cdsReporte.FieldByName('GLOBAL').AsFloat := DM1.cdsQry.FieldByName('GLOBAL').AsFloat;
           cdsReporte.FieldByName('APO').AsFloat := DM1.cdsQry.FieldByName('APO').AsFloat;
           cdsReporte.FieldByName('CRE').AsFloat := DM1.cdsQry.FieldByName('CRE').AsFloat;
           cdsReporte.FieldByName('MAN').AsFloat := DM1.cdsQry.FieldByName('MAN').AsFloat;
// inicio: HPP_201011_COB
           cdsReporte.FieldByName('FSC').AsFloat := DM1.cdsQry.FieldByName('FSC').AsFloat;
// fin: HPP_201011_COB
           cdsReporte.FieldByName('TOTDES').AsFloat := DM1.cdsQry.FieldByName('TOTDES').AsFloat;
           cdsReporte.FieldByName('DIF').AsFloat := DM1.cdsQry.FieldByName('DIF').AsFloat;
           if DM1.cdsQry.FieldByName('ANOMES').AsString = COPY(DateToStr(dtpInicio.Date),7,4)+COPY(DateToStr(dtpInicio.Date),4,2) then
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


//descripcion del departamento
function TFRepResIngLote2.DESDEPA(Xdepaid: string): string;
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


//descripcion de la unida de proceso
function TFRepResIngLote2.DESUPRO(Xuproid: string): string;
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



procedure TFRepResIngLote2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// inicio: HPP_201011_COB
  cdsReporte.Close;
  cdsReporte.IndexFieldNames:='';
// fin: HPP_201011_COB

  DM1.cdsQry.Close;
  DM1.cdsQry.IndexFieldNames:='';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.IndexFieldNames:='';
end;

//Inicio HPC_201609_COB --Se adiciona botón para exportar reporte a Excel
procedure TFRepResIngLote2.ADDTMP2(XQRY: String);
begin
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(XQRY);
  DM1.cdsQry.Open;

  IF DM1.cdsQry.RecordCount>0 THEN
     BEGIN
       DM1.cdsQry.First;
       WHILE NOT DM1.cdsQry.Eof DO
         BEGIN
           CDSREPRESUMEN.Insert;
           CDSREPRESUMEN.FieldByName('REGANOMES').AsString := DM1.cdsQry.FieldByName('ANOMES').AsString;
           CDSREPRESUMEN.FieldByName('DEPARTAMENTO').AsString := DESDEPA(DM1.cdsQry.FieldByName('DPTOID').AsString);
           CDSREPRESUMEN.FieldByName('GLOBAL').AsFloat := DM1.cdsQry.FieldByName('GLOBAL').AsFloat;
           CDSREPRESUMEN.FieldByName('APO').AsFloat := DM1.cdsQry.FieldByName('APO').AsFloat;
           CDSREPRESUMEN.FieldByName('CRE').AsFloat := DM1.cdsQry.FieldByName('CRE').AsFloat;
           CDSREPRESUMEN.FieldByName('MAN').AsFloat := DM1.cdsQry.FieldByName('MAN').AsFloat;
           CDSREPRESUMEN.FieldByName('FSC').AsFloat := DM1.cdsQry.FieldByName('FSC').AsFloat;
           CDSREPRESUMEN.FieldByName('TOTDES').AsFloat := DM1.cdsQry.FieldByName('TOTDES').AsFloat;
           CDSREPRESUMEN.FieldByName('DIF').AsFloat := DM1.cdsQry.FieldByName('DIF').AsFloat;
           if DM1.cdsQry.FieldByName('ANOMES').AsString = COPY(DateToStr(dtpInicio.Date),7,4)+COPY(DateToStr(dtpInicio.Date),4,2) then
              RegGPeriodo:=RegGPeriodo+DM1.cdsQry.FieldByName('GLOBAL').AsFloat
           else
              RegGOtros:=RegGOtros+DM1.cdsQry.FieldByName('GLOBAL').AsFloat;
           DM1.cdsQry.Next;
          END;
          CDSREPRESUMEN.Post;
          progbar.StepIt;
     END;

end;
//Final HPC_201609_COB

//Inicio HPC_201609_COB --Se adiciona botón para exportar reporte a Excel
procedure TFRepResIngLote2.BtnExcelClick(Sender: TObject);
var XSQL,XANOMES,xfecha1,xfecha2:String;
begin

Screen.Cursor:=crHourGlass;
cdsReporte.Open;
cdsReporte.EmptyDataSet;

XANOMES    := COPY(DateToStr(dtpInicio.Date),7,4)+COPY(DateToStr(dtpInicio.Date),4,2);
xfecha1    := DateToStr(dtpInicio.Date);
xfecha2    := DateToStr(dtpFinal.Date);

progbar.Position   := 0;
progbar.Visible := True;
progbar.StepIt;

XSQL:=
 'SELECT ANOMES,RCOBID,REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,MAX(GLOBAL) GLOBAL,MAX(APO) APO,MAX(CRE) CRE,MAX(MAN) MAN,MAX(FSC) FSC,'
+'       MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC) TOTDES,(MAX(GLOBAL))-(MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC)) DIF FROM '
+'(SELECT REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,RCOBANO,RCOBMES,GLOBAL,RCOBID,ANOMES,'
+'CASE WHEN TIPO=''APO'' THEN DESCARGADO ELSE 0 END APO,'
+'CASE WHEN TIPO=''CRE'' THEN DESCARGADO ELSE 0 END CRE,'
+'CASE WHEN TIPO=''MAN'' THEN DESCARGADO ELSE 0 END MAN,'
+'CASE WHEN TIPO=''FSC'' THEN DESCARGADO ELSE 0 END FSC '
+'FROM (SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,DETRCOBID,RCOBANO,RCOBMES,DESCARGADO,GLOBAL,REPRE,ANOMES FROM '
+'(SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ B.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID,A.CPAGOMTO,A.REPRAPENOM,A.RCOBANO,A.RCOBMES,A.ANOMES,NVL(B.TRANSMTO,0) DESCARGADO,''APO'' TIPO FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+'''  ) A,'
+'      (SELECT TRANSMTO,TRANSFOPE,TRANSNOPE,DETRCOBID,RCOBID,USEID  FROM APO301 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND RCOBID IS NOT NULL) B '
+'WHERE (A.RCOBID=B.RCOBID AND A.DETRCOBID=B.DETRCOBID AND A.RCOBNOPE=B.TRANSNOPE AND A.RCOBFOPE=B.TRANSFOPE) ) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ C.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID,A.CPAGOMTO,A.REPRAPENOM,A.RCOBANO,A.RCOBMES, A.ANOMES,C.IMP_COB_DEU DESCARGADO,''FSC'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+'''  ) A,'
+'    (SELECT IMP_COB_DEU,EST_COB_COD,FOPERAC,NROOPE,DETRCOBID,RCOBID,USEID  FROM COB_FSC_PAGOS_AL_FSC where FEC_CRE_COB_FSC >='''+xfecha1+''' and  FEC_CRE_COB_FSC <= last_day ('''+xfecha2+''') AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.EST_COB_COD <>''13'' AND C.EST_COB_COD<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ C.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID,A.CPAGOMTO,A.REPRAPENOM,A.RCOBANO,A.RCOBMES,A.ANOMES,C.CREMTOCOB DESCARGADO,''CRE'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+'''  ) A,'
+'    (SELECT CREMTOCOB,RCOBID,DETRCOBID,NROOPE,FOPERAC,UPROID,CREESTID,FORPAGABR,CREDOCPAG,CREFPAG,UPAGOID,USEID  FROM CRE310 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ USEID,A.RCOBID,A.DETRCOBID,C.CREFPAG RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO,A.RCOBMES,C.UPROID,C.UPAGOID,C.CREMTOCOB DESCARGADO,''MAN'' TIPO,A.CPAGOMTO,A.REPRAPENOM,A.ANOMES FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')<'''+XANOMES+'''  ) A,'
+'      (SELECT CREMTOCOB,RCOBID,DETRCOBID,NROOPE,FOPERAC,UPROID,CREESTID,FORPAGABR,CREDOCPAG,CREFPAG,UPAGOID,USEID  FROM CRE310 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND (forpagabr=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NULL ) C '
+'WHERE C.CREFPAG=A.RCOBFOPE AND C.CREDOCPAG=A.RCOBNOPE AND (C.FORPAGABR=''PLA'' OR C.FORPAGABR=''REG'' OR C.FORPAGABR=''CEF'') AND C.UPROID=A.UPROID AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')  AND C.RCOBID IS NULL) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO,UPROID) '
+'ORDER BY RCOBNOPE,RCOBFOPE )) '
+' WHERE APO>0 OR CRE>0 OR MAN>0 OR FSC>0'
+'GROUP BY ANOMES,RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE,UPROID '
+'ORDER BY REPRE,RCOBNOPE';
ADDTMP(XSQL);

//Cobranza global del periodo actual
XSQL :=
'SELECT ANOMES,RCOBID,REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,MAX(GLOBAL) GLOBAL,MAX(APO) APO,MAX(CRE) CRE,MAX(MAN) MAN,MAX(FSC) FSC,'
+'       MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC) TOTDES,(MAX(GLOBAL))-(MAX(APO)+MAX(CRE)+MAX(MAN)+MAX(FSC)) DIF FROM '
+'(SELECT REPRE,RCOBFOPE,RCOBNOPE,UPROID,DETRCOBID,RCOBANO,RCOBMES,GLOBAL,RCOBID,ANOMES,'
+'CASE WHEN TIPO=''APO'' THEN DESCARGADO ELSE 0 END APO,'
+'CASE WHEN TIPO=''CRE'' THEN DESCARGADO ELSE 0 END CRE,'
+'CASE WHEN TIPO=''MAN'' THEN DESCARGADO ELSE 0 END MAN,'
+'CASE WHEN TIPO=''FSC'' THEN DESCARGADO ELSE 0 END FSC '
+'FROM (SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,DETRCOBID,RCOBANO,RCOBMES,DESCARGADO,GLOBAL,REPRE,ANOMES FROM '
+'(SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ B.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID,A.CPAGOMTO,A.REPRAPENOM,A.RCOBANO,A.RCOBMES,A.ANOMES,NVL(B.TRANSMTO,0) DESCARGADO,''APO'' TIPO FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'      (SELECT TRANSMTO,TRANSFOPE,TRANSNOPE,DETRCOBID,RCOBID,USEID   FROM APO301 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND RCOBID IS NOT NULL) B '
+'WHERE (A.RCOBID=B.RCOBID(+)  AND A.DETRCOBID=B.DETRCOBID(+) AND A.RCOBNOPE=B.TRANSNOPE(+) AND A.RCOBFOPE=B.TRANSFOPE(+)) ) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '

+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ C.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID,A.CPAGOMTO,A.REPRAPENOM,A.RCOBANO,A.RCOBMES, A.ANOMES,C.IMP_COB_DEU DESCARGADO,''FSC'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'    (SELECT IMP_COB_DEU,EST_COB_COD,FOPERAC,NROOPE,DETRCOBID,RCOBID,USEID FROM COB_FSC_PAGOS_AL_FSC where FEC_CRE_COB_FSC >='''+xfecha1+''' and  FEC_CRE_COB_FSC <= last_day ('''+xfecha2+''') AND (FORPAGABR=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.EST_COB_COD <>''13'' AND C.EST_COB_COD<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,MAX(UPROID) UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ C.USEID,A.RCOBID,A.DETRCOBID,A.RCOBFOPE,A.RCOBNOPE,A.UPROID,A.UPAGOID,A.CPAGOMTO,A.REPRAPENOM,A.RCOBANO,A.RCOBMES,A.ANOMES,C.CREMTOCOB DESCARGADO,''CRE'' TIPO FROM '
+'    (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES  FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'    (SELECT CREMTOCOB,RCOBID,DETRCOBID,NROOPE,FOPERAC,UPROID,CREESTID,FORPAGABR,CREDOCPAG,CREFPAG,UPAGOID,USEID FROM CRE310 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND (forpagabr=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NOT NULL )C '
+'WHERE (A.RCOBID=C.RCOBID AND A.DETRCOBID=C.DETRCOBID AND A.RCOBNOPE=C.NROOPE AND A.RCOBFOPE=C.FOPERAC AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')) )  '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO '
+'UNION ALL '
+'SELECT RCOBID,RCOBNOPE,RCOBFOPE,TIPO,UPROID,DETRCOBID,MAX(RCOBANO) RCOBANO,MAX(RCOBMES) RCOBMES,SUM(DESCARGADO) DESCARGADO,MAX(CPAGOMTO) GLOBAL,MAX(REPRAPENOM) REPRE,ANOMES FROM '
+'(SELECT /*+ RULE */ USEID,A.RCOBID,A.DETRCOBID,C.CREFPAG RCOBFOPE,C.NROOPE RCOBNOPE,A.RCOBANO,A.RCOBMES,C.UPROID,C.UPAGOID,C.CREMTOCOB DESCARGADO,''MAN'' TIPO,A.CPAGOMTO,A.REPRAPENOM,A.ANOMES FROM '
+'      (SELECT RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,UPROID,UPAGOID,CPAGOMTO,REPRAPENOM,RCOBANO,RCOBMES,TO_CHAR(FREG,''YYYYMM'') ANOMES FROM COB302 WHERE TO_CHAR(FREG,''YYYYMM'')='''+XANOMES+'''  ) A,'
+'      (SELECT CREMTOCOB,RCOBID,DETRCOBID,NROOPE,FOPERAC,UPROID,CREESTID,FORPAGABR,CREDOCPAG,CREFPAG,UPAGOID,USEID FROM CRE310 where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') AND (forpagabr=''PLA'' OR FORPAGABR=''REG'' OR FORPAGABR=''CEF'') AND RCOBID IS NULL ) C '
+'WHERE C.CREFPAG=A.RCOBFOPE AND C.CREDOCPAG=A.RCOBNOPE AND (C.FORPAGABR=''PLA'' OR C.FORPAGABR=''REG'' OR C.FORPAGABR=''CEF'') AND C.UPROID=A.UPROID AND (C.CREESTID <>''13'' AND C.CREESTID<>''04'')  AND C.RCOBID IS NULL) '
+'GROUP BY ANOMES,RCOBID,RCOBNOPE,RCOBFOPE,DETRCOBID,TIPO,UPROID) '
+'ORDER BY RCOBNOPE,RCOBFOPE )) '
+'GROUP BY ANOMES,RCOBID,DETRCOBID,RCOBFOPE,RCOBNOPE,REPRE,UPROID '
+'ORDER BY REPRE,RCOBNOPE';
ADDTMP(XSQL);

XSQL:=
'SELECT /*+ RULE */ TO_CHAR(FREG,''YYYYMM'') ANOMES,'' '' REPRE,TRANSFOPE RCOBFOPE,TRANSNOPE RCOBNOPE,UPROID,DETRCOBID,'' '' RCOBANO,'' '' RCOBMES, 0 GLOBAL, SUM(TRANSMTO) APO, 0 CRE, 0 MAN, 0 FSC, SUM(TRANSMTO) TOTDES,SUM(TRANSMTO) DIF '
+' FROM APO301  where FREG >='''+xfecha1+''' and  FREG <= last_day ('''+xfecha2+''') and FORPAGOID IN (''02'',''03'') '
+' GROUP BY TO_CHAR(FREG,''YYYYMM''),UPROID,DETRCOBID,TRANSFOPE,TRANSNOPE ';
ADDTMP(XSQL);

If cdsReporte.RecordCount=0 Then
Begin
 ShowMessage('No existe información para exportar a Excel');
 Screen.Cursor:=crDefault;
 progbar.Visible := False;
 Exit;
End;

DM1.HojaExcel('Descargo en Lote y Manual', dsReporte, DTGDATA);

DM1.cdsQry.Close;
DM1.cdsQry.IndexFieldNames:='';
Screen.Cursor:=crDefault;
progbar.Visible := False;

end;
//Final HPC_201609_COB

end.
