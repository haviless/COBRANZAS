unit COB723;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, db,
  DBGrids, wwdbdatetimepicker, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppBands, ppCache, ppCtrls, ppVar, ppPrnabl,
  ppParameter, 
  // Inicio: HPP_200936_COB
  ppModule, daDataModule;
  // Fin: HPP_200936_COB

type
  TFgesfonsol = class(TForm)
    rgtipo: TRadioGroup;
    btnprocesar: TBitBtn;
    btnimprimir: TBitBtn;
    btnaexcel: TBitBtn;
    btncerrar: TBitBtn;
    dbgPrevio: TwwDBGrid;
    dtgData: TDBGrid;
    gbfechas: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbdtpinicio: TwwDBDateTimePicker;
    dbdtpfinal: TwwDBDateTimePicker;
    ppreporte00: TppReport;
    ppbdereporte: TppBDEPipeline;
    ppreporte01: TppReport;
    ppreporte02: TppReport;
    ppreporte03: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    // HPP_200936_COB    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    pplfechas00: TppLabel;
    // HPP_200936_COB    ppShape1: TppShape;
    ppLabel10: TppLabel;
    // HPP_200936_COB    ppShape2: TppShape;
    ppLabel11: TppLabel;
    // HPP_200936_COB    ppShape3: TppShape;
    ppLabel12: TppLabel;
    // HPP_200936_COB    ppShape4: TppShape;
    ppLabel13: TppLabel;
    {// Inicio: HPP_200936_COB
    ppShape5: TppShape;
    ppLabel14: TppLabel;
    ppShape6: TppShape;
    ppLabel15: TppLabel;
    ppShape7: TppShape;
    }// Fin: HPP_200936_COB
    ppLabel16: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    pplimpresopor00: TppLabel;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    pplfechas01: TppLabel;
    ppShape8: TppShape;
    ppLabel27: TppLabel;
    { // Inicio: HPP_200936_COB
    ppShape9: TppShape;
    ppLabel28: TppLabel;
    ppShape10: TppShape;
    ppLabel29: TppLabel;
    ppShape11: TppShape;
    ppLabel30: TppLabel;
    ppShape12: TppShape;
    ppLabel31: TppLabel;
    ppShape13: TppShape;
    ppLabel32: TppLabel;
    ppShape14: TppShape;
    ppLabel33: TppLabel;
    } // Fin: HPP_200936_COB
    ppDetailBand2: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    // HPP_200936_COB   ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    pplimpresopor01: TppLabel;
    ppParameterList2: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppLabel26: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    pplfechas02: TppLabel;
    { // Inicio: HPP_200936_COB
    ppShape15: TppShape;
    ppLabel43: TppLabel;
    ppShape16: TppShape;
    ppLabel44: TppLabel;
    ppShape17: TppShape;
    ppLabel45: TppLabel;
    ppShape18: TppShape;
    ppLabel46: TppLabel;
    ppShape19: TppShape;
    ppLabel47: TppLabel;
    ppShape20: TppShape;
    ppLabel48: TppLabel;
    ppShape21: TppShape;
    ppLabel49: TppLabel;
    } // Fin: HPP_200936_COB
    ppDetailBand3: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    { // Inicio: HPP_200936_COB
    ppDBText21: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine3: TppLine;
    pplimpresopor02: TppLabel;
    } // Fin: HPP_200936_COB
    ppParameterList3: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppLabel42: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    pplfechas03: TppLabel;
    { // Inicio: HPP_200936_COB
    ppShape22: TppShape;
    ppLabel59: TppLabel;
    ppShape23: TppShape;
    ppLabel60: TppLabel;
    ppShape24: TppShape;
    ppLabel61: TppLabel;
    ppShape25: TppShape;
    ppLabel62: TppLabel;
    ppShape26: TppShape;
    ppLabel63: TppLabel;
    ppShape27: TppShape;
    ppLabel64: TppLabel;
    ppShape28: TppShape;
    } // Fin: HPP_200936_COB
    ppLabel65: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    // HPP_200936_COB ppFooterBand4: TppFooterBand;
    ppLine4: TppLine;
    pplimpresopor03: TppLabel;
    // Inicio: HPP_200936_COB
    daDataModule1: TdaDataModule;
    ppLabel58: TppLabel;
    ppDBText29: TppDBText;
    ppLabel66: TppLabel;
    ppDBText30: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel67: TppLabel;
    ppShape29: TppShape;
    ppLabel15: TppLabel;
    ppShape30: TppShape;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppShape31: TppShape;
    ppLabel68: TppLabel;
    ppShape32: TppShape;
    ppLabel69: TppLabel;
    ppDBText31: TppDBText;
    ppShape9: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppLabel28: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppShape36: TppShape;
    ppLabel73: TppLabel;
    ppShape37: TppShape;
    ppLabel74: TppLabel;
    ppDBText32: TppDBText;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppShape10: TppShape;
    ppLabel30: TppLabel;
    ppShape11: TppShape;
    ppLabel31: TppLabel;
    ppShape12: TppShape;
    ppLabel32: TppLabel;
    ppShape13: TppShape;
    ppLabel33: TppLabel;
    ppShape14: TppShape;
    ppLabel75: TppLabel;
    ppShape38: TppShape;
    ppLabel76: TppLabel;
    ppShape39: TppShape;
    ppLabel77: TppLabel;
    ppShape40: TppShape;
    ppLabel78: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppShape15: TppShape;
    ppLabel43: TppLabel;
    ppDBText21: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine3: TppLine;
    pplimpresopor02: TppLabel;
    ppLine7: TppLine;
    ppLabel45: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppShape17: TppShape;
    ppLabel46: TppLabel;
    ppShape18: TppShape;
    ppLabel47: TppLabel;
    ppShape19: TppShape;
    ppLabel48: TppLabel;
    ppShape20: TppShape;
    ppLabel49: TppLabel;
    ppShape21: TppShape;
    ppLabel79: TppLabel;
    ppShape41: TppShape;
    ppLabel80: TppLabel;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppLabel82: TppLabel;
    ppShape44: TppShape;
    ppLabel83: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppShape45: TppShape;
    ppLabel84: TppLabel;
    ppDBText37: TppDBText;
    ppLine8: TppLine;
    ppLabel44: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppSummaryBand4: TppSummaryBand;
    ppltipaso: TppLabel;
    // Fin: HPP_200936_COB
    procedure btnprocesarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure rgtipoClick(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnimprimirClick(Sender: TObject);
    // Inicio: HPP_200936_COB
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    // Fin: HPP_200936_COB
  private
    { Private declarations }
    // Inicio: HPP_200936_COB
    procedure inicializa;
    // Fin: HPP_200936_COB
  public
    { Public declarations }
  end;

var
  Fgesfonsol: TFgesfonsol;

implementation

uses COBDM1;

{$R *.dfm}

// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
// Fecha: 08/09/2009 10:47
// Se modifica el Where: Se añade
// A.FORPAGID IN (''23'',''24'') AND A.CREESTID NOT IN (''04'',''13'',''99'')'
// Se añade campos Tipo de asociado al momento del otorgamiento
// Se modifican los reportes añadiendo campos TIPO DE ASOCIADO, MONTO APLICADO AL FONDO SOLIDARIO,
// FECHA DE CANCELACION DEL FONDO SOLIDARIO.
// Fin: HPP_200936_COB

procedure TFgesfonsol.btnprocesarClick(Sender: TObject);
Var xSql:String;
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
   xCancuo, xtotfonsol:Double;
// Fin: HPP_200936_COB
begin
  If Trim(dbdtpinicio.Text) = '' Then
  Begin
    MessageDlg('Ingrese la fecha inicial', mtInformation,[mbOk],0);
    dbdtpinicio.SetFocus;
    Exit;
  End;
  If Trim(dbdtpfinal.Text) = '' Then
  Begin
    MessageDlg('Ingrese la fecha final', mtInformation,[mbOk],0);
    dbdtpinicio.SetFocus;
    Exit;
  End;
  If rgtipo.ItemIndex = -1 Then
  Begin
    MessageDlg('Seleccione tipo de reporte', mtInformation,[mbOk],0);
    rgtipo.SetFocus;
    Exit;
  End;

  Screen.Cursor:=crHourGlass;
  Case rgtipo.ItemIndex of
  0:
  Begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
    {
    xSql := 'SELECT C.ASOCODMOD, C.ASOAPENOMDNI, CREFOTORG,  SUBSTR(CREDID,11,5) CREDID, CREFPAG, CANCUO, MONTOFON, MAX(B.APOSEC) APORTE FROM'
    +' (SELECT B.CREFOTORG,  A.CREFPAG, A.ASOID, A.CREDID, COUNT(*) CANCUO, SUM(A.CREMTOCOB) MONTOFON FROM CRE310 A, CRE301 B'
    +' WHERE A.FORPAGID = ''23'' AND A.CREESTID NOT IN (''04'',''13'') AND NVL(CREFLAGDEV,''X'') <> ''D'''
    +' AND A.CREFPAG >= '+QuotedStr(dbdtpinicio.Text)+' AND A.CREFPAG <= '+QuotedStr(dbdtpfinal.Text)
    +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID'
    +' GROUP BY B.CREFOTORG,  A.CREFPAG, A.ASOID, A.CREDID) A, APO301 B, APO201 C WHERE A.ASOID = B.ASOID'
    +' AND B.APOSEC >= TO_CHAR(A.CREFPAG,''YYYYMM'') AND A.ASOID = C.ASOID GROUP BY C.ASOCODMOD, C.ASOAPENOMDNI, CREFOTORG,  CREDID, CREFPAG, CANCUO, MONTOFON';
    }

    xSql := 'SELECT C.ASOCODMOD, A.ASOTIPID, C.ASOAPENOMDNI, SUBSTR(CREDID,11,5) CREDID, CREFOTORG, FECCANFONSOL, CANCUOFONSOL,'
    +' MONTOFON, MAX(B.APOSEC) APORTE FROM'
    +' (SELECT A.ASOID, B.CREFOTORG,  A.CREFPAG FECCANFONSOL,  B.ASOTIPID, A.CREDID, COUNT(*) CANCUOFONSOL, SUM(A.CREMTOCOB) MONTOFON'
    +' FROM CRE310 A, CRE301 B WHERE A.FORPAGID IN (''23'',''24'') AND A.CREESTID NOT IN (''04'',''13'',''99'')'
    +' AND NVL(CREFLAGDEV,''X'') <> ''D'' AND A.CREFPAG >= '+QuotedStr(dbdtpinicio.Text)+' AND A.CREFPAG <= '+QuotedStr(dbdtpfinal.Text)
    +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID'
    +' GROUP BY B.CREFOTORG,  A.CREFPAG, A.ASOID, B.ASOTIPID, A.CREDID) A, APO301 B, APO201 C'
    +' WHERE A.ASOID = B.ASOID AND B.APOSEC >= TO_CHAR(FECCANFONSOL,''YYYYMM'') AND A.ASOID = C.ASOID'
    +' GROUP BY C.ASOCODMOD, A.ASOTIPID, C.ASOAPENOMDNI, SUBSTR(CREDID,11,5), CREFOTORG, FECCANFONSOL, CANCUOFONSOL, MONTOFON';
// Fin: HPP_200936_COB
  End;
  1:
  Begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
    {
    xSql := 'SELECT A.ASOCODMOD, A.ASOAPENOM, SUBSTR(C.CREDID,11,5) CREDID, C.CREFOTORG, COUNT(*) CUOTAS, SUM(NVL(CREMTOCOB,0)) CREMTOCOB,'
    +' MAX(A.CREFPAG) CREFPAG FROM CRE310 A, (SELECT ASOID, CREDID, CREFPAG FROM CRE310 A'
    +' WHERE FORPAGID = ''23'' AND CREESTID NOT IN (''04'',''13'') AND NVL(CREFLAGDEV,''X'') <> ''D'''
    +' AND A.CREFPAG >= '+QuotedStr(dbdtpinicio.Text)+' AND A.CREFPAG <= '+QuotedStr(dbdtpfinal.Text)
    +' GROUP BY ASOID, CREDID, CREFPAG) B, CRE301 C'
    +' WHERE A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.FORPAGID = ''01'' AND A.CREFPAG >= ADD_MONTHS(B.CREFPAG,-1)'
    +' AND A.ASOID =C.ASOID AND A.CREDID = C.CREDID GROUP BY A.ASOCODMOD, A.ASOAPENOM, C.CREDID, C.CREFOTORG';
    }
    xSql := 'SELECT A.ASOCODMOD, C.ASOTIPID, A.ASOAPENOM,  SUBSTR(C.CREDID,11,5) CREDID, C.CREFOTORG,  FECCANFONSOL, MONFONSOL, CUOCANFONSOL,'
    +' MAX(A.CREFPAG) ULFECPAG FROM CRE310 A, (SELECT ASOID, CREDID, CREFPAG FECCANFONSOL, SUM(NVL(CREMTOCOB,0)) MONFONSOL, COUNT(*) CUOCANFONSOL'
    +' FROM CRE310 A WHERE FORPAGID IN (''23'',''24'') AND CREESTID NOT IN (''04'',''13'',''99'') AND NVL(CREFLAGDEV,''X'') <> ''D'''
    +' AND A.CREFPAG >= '+QuotedStr(dbdtpinicio.Text)+' AND A.CREFPAG <= '+QuotedStr(dbdtpfinal.Text)
    +' GROUP BY ASOID, CREDID, CREFPAG) B, CRE301 C WHERE A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.FORPAGID = ''01'''
    +' AND A.CREFPAG >= ADD_MONTHS(B.FECCANFONSOL,-1) AND A.ASOID = C.ASOID AND A.CREDID = C.CREDID'
    +' GROUP BY A.ASOCODMOD, C.ASOTIPID, A.ASOAPENOM,  SUBSTR(C.CREDID,11,5), C.CREFOTORG,  FECCANFONSOL, MONFONSOL, CUOCANFONSOL';
// Fin: HPP_200936_COB
  End;
  2:
  Begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
    {
    xSql := 'SELECT A.ASOCODMOD, A.ASOAPENOM, SUBSTR(A.CREDID,11,5) CREDID, A.CANTIDAD CUOTAS, A.MONFONSOL, SUBSTR(B.CREDID,11,5) NUECREDID FROM'
    +' (SELECT ASOID, ASOCODMOD, ASOAPENOM, CREDID, COUNT(*) CANTIDAD, SUM(NVL(CREMTOCOB,0)) MONFONSOL'
    +' FROM CRE310 WHERE FORPAGID = ''23'' AND CREESTID NOT IN (''04'',''13'') AND NVL(CREFLAGDEV,''X'') <> ''D'''
    +' AND CREFPAG >= '+QuotedStr(dbdtpinicio.Text)+' AND CREFPAG <= '+QuotedStr(dbdtpfinal.Text)
    +' GROUP BY ASOID, ASOCODMOD, ASOAPENOM, CREDID ) A, CRE301 B WHERE A.ASOID = B.ASOID AND B.CREESTID = ''02'' AND B.CREFOTORG > ''31/12/1996'''
    +' GROUP BY A.ASOCODMOD, A.ASOAPENOM, A.CREDID, A.CANTIDAD, A.MONFONSOL, B.CREDID ORDER BY A.ASOCODMOD, A.ASOAPENOM, A.CREDID';
    }
    xSql := 'SELECT A.ASOCODMOD, B.ASOTIPID, A.ASOAPENOM, SUBSTR(B.CREDID,11,5) NUMCRE, B.CREFOTORG, A.FECCANFONSOL, A.CUOCANFONSOL, A.MONFONSOL,'
    +' SUBSTR(B.CREDID,11,5) CREVIG FROM(SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, B.CREDID,  A.CREFPAG FECCANFONSOL, COUNT(*) CUOCANFONSOL,'
    +' SUM(NVL(CREMTOCOB,0)) MONFONSOL FROM CRE310 A, CRE301 B WHERE A.FORPAGID IN (''23'',''24'') AND A.CREESTID NOT IN (''04'',''13'',''99'')'
    +' AND NVL(CREFLAGDEV,''X'') <> ''D'' AND CREFPAG >= '+QuotedStr(dbdtpinicio.Text)+' AND CREFPAG <= '+QuotedStr(dbdtpfinal.Text)
    +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID GROUP BY A.ASOID, A.ASOCODMOD, A.ASOAPENOM, B.CREDID,  A.CREFPAG'
    +' ) A, CRE301 B WHERE A.ASOID = B.ASOID AND B.CREESTID = ''02'' AND B.CREFOTORG > ''31/12/1996''';
// Fin: HPP_200936_COB
  End;
  3:
  Begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
    {
    xSql := 'SELECT A.ASOCODMOD, A.ASOAPENOM, SUBSTR(A.CREDID,11,5) CREDID, A.CREFOTORG, A.CREFPAG, A.CANTIDAD,'
    +' A.MONFONSOL, SUBSTR(B.CREDID,11,5) NUECRE, MAX(B.CREFPAG) FECPAGBCO FROM ('
    +' SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.CREDID, B.CREFOTORG, A.CREFPAG, COUNT(*) CANTIDAD,'
    +' SUM(NVL(A.CREMTOCOB,0)) MONFONSOL FROM CRE310 A, CRE301 B WHERE A.FORPAGID = ''23'' AND A.CREESTID NOT IN (''04'',''13'')'
    +' AND A.CREFPAG >= '+QuotedStr(dbdtpinicio.Text)+' AND A.CREFPAG <= '+QuotedStr(dbdtpfinal.Text)
    +' AND NVL(A.CREFLAGDEV,''X'') <> ''D'' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID'
    +' GROUP BY A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.CREDID, B.CREFOTORG, A.CREFPAG ) A, CRE310 B'
    +' WHERE A.ASOID = B.ASOID AND A.CREFPAG <= B.CREFPAG AND B.FORPAGID = ''03'' AND B.CREESTID NOT IN (''04'',''13'') AND NVL(B.CREFLAGDEV,''X'') <> ''D'''
    +' GROUP BY A.ASOCODMOD, A.ASOAPENOM, SUBSTR(A.CREDID,11,5), A.CREFOTORG, A.CREFPAG, A.CANTIDAD, A.MONFONSOL, SUBSTR(B.CREDID,11,5)';
    }
    {
    xSql := 'SELECT A.ASOCODMOD, A.ASOTIPID, A.ASOAPENOM, SUBSTR(A.CREDID,11,5) NUMCRE, A.CREFOTORG, A.FECCANFONSOL, A.CUOCANFONSOL,'
    +' A.MONFONSOL, SUBSTR(B.CREDID,11,5) CREVIG, MAX(B.CREFPAG) FECPAGBCO FROM (SELECT B.ASOID, B.ASOCODMOD, B.ASOTIPID,  B.ASOAPENOM,'
    +' B.CREDID, B.CREFOTORG, A.CREFPAG FECCANFONSOL, COUNT(*) CUOCANFONSOL, SUM(NVL(A.CREMTOCOB,0)) MONFONSOL FROM CRE310 A, CRE301 B'
    +' WHERE A.FORPAGID IN (''23'',''24'') AND A.CREESTID NOT IN (''04'',''13'',''99'')'
    +' AND A.CREFPAG >= '+QuotedStr(dbdtpinicio.Text)+' AND A.CREFPAG <= '+QuotedStr(dbdtpfinal.Text)+' AND NVL(A.CREFLAGDEV,''X'') <> ''D'''
    +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID GROUP BY B.ASOID, B.ASOCODMOD, B.ASOTIPID,  B.ASOAPENOM, B.CREDID,'
    +' B.CREFOTORG, A.CREFPAG) A, CRE310 B WHERE A.ASOID = B.ASOID AND A.FECCANFONSOL <= B.CREFPAG AND B.FORPAGID = ''03'''
    +' AND B.CREESTID NOT IN (''04'',''13'',''99'') AND NVL(B.CREFLAGDEV,''X'') <> ''D'''
    +' GROUP BY A.ASOCODMOD, A.ASOTIPID, A.ASOAPENOM, SUBSTR(A.CREDID,11,5), A.CREFOTORG, A.FECCANFONSOL, A.CUOCANFONSOL,'
    +' A.MONFONSOL, SUBSTR(B.CREDID,11,5)';
    }
    xSql := 'SELECT A.ASOCODMOD, A.ASOTIPID, A.ASOAPENOM, A.NUMCRE, A.CREFOTORG, A.FECCANFONSOL, A.CUOCANFONSOL, A.MONFONSOL, A.FECPAGBCO, MAX(B.CREDID) CREVIG'
    +' FROM (SELECT A.ASOID, A.ASOCODMOD, A.ASOTIPID, A.ASOAPENOM, SUBSTR(A.CREDID,11,5) NUMCRE, A.CREFOTORG, A.FECCANFONSOL, A.CUOCANFONSOL, A.MONFONSOL, MAX(B.CREFPAG)'
    +' FECPAGBCO FROM (SELECT B.ASOID, B.ASOCODMOD, B.ASOTIPID,  B.ASOAPENOM, B.CREDID, B.CREFOTORG, A.CREFPAG FECCANFONSOL, COUNT(*) CUOCANFONSOL,'
    +' SUM(NVL(A.CREMTOCOB,0)) MONFONSOL FROM CRE310 A, CRE301 B WHERE A.FORPAGID IN (''23'',''24'') AND A.CREESTID NOT IN (''04'',''13'',''99'')'
    +' AND A.CREFPAG >= '+QuotedStr(dbdtpinicio.Text)+' AND A.CREFPAG <= '+QuotedStr(dbdtpfinal.Text)
    +' AND NVL(A.CREFLAGDEV,''X'') <> ''D'' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID'
    +' GROUP BY B.ASOID, B.ASOCODMOD, B.ASOTIPID,  B.ASOAPENOM, B.CREDID, B.CREFOTORG, A.CREFPAG'
    +' ) A, CRE310 B WHERE A.ASOID = B.ASOID AND A.FECCANFONSOL <= B.CREFPAG AND B.FORPAGID = ''03'' AND B.CREESTID NOT IN (''04'',''13'',''99'')'
    +' AND NVL(B.CREFLAGDEV,''X'') <> ''D'' GROUP BY A.ASOID, A.ASOCODMOD, A.ASOTIPID, A.ASOAPENOM, SUBSTR(A.CREDID,11,5), A.CREFOTORG, A.FECCANFONSOL, A.CUOCANFONSOL, A.MONFONSOL'
    +' ) A, CRE301 B WHERE A.ASOID = B.ASOID(+) AND B.CREESTID(+) = ''02'''
    +' GROUP BY A.ASOCODMOD, A.ASOTIPID, A.ASOAPENOM, A.NUMCRE, A.CREFOTORG, A.FECCANFONSOL, A.CUOCANFONSOL, A.MONFONSOL, A.FECPAGBCO';
// Fin: HPP_200936_COB
  End;
  End;

  DM1.cdsReporte.close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  Screen.Cursor:=crDefault;

  Case rgtipo.ItemIndex of
  0:
  Begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
    DM1.cdsReporte.First;
    xtotfonsol := 0;
    xCancuo := 0;
    While Not DM1.cdsReporte.Eof Do
    Begin
      xtotfonsol := xtotfonsol + DM1.cdsReporte.FieldByName('MONTOFON').AsFloat;
      xCancuo    := xCancuo    + DM1.cdsReporte.FieldByName('CANCUOFONSOL').AsFloat;
      DM1.cdsReporte.Next;
    End;
    DM1.cdsReporte.First;
    dbgPrevio.Selected.Clear;
    dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
    dbgPrevio.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9#9);
    dbgPrevio.Selected.Add('ASOAPENOMDNI'#9'42'#9'Apellidos y nombre(s)'#9#9);
    dbgPrevio.Selected.Add('CREDID'#9'6'#9'Número~crédito'#9#9);
    dbgPrevio.Selected.Add('CREFOTORG'#9'10'#9'Fecha~otorgamiento'#9#9);
    dbgPrevio.Selected.Add('FECCANFONSOL'#9'10'#9'Fecha de aplicación~del fondo solidario'#9#9);
    dbgPrevio.Selected.Add('CANCUOFONSOL'#9'10'#9'Cantidad de cuotas~aplicadas por el fondo'#9#9);
    dbgPrevio.Selected.Add('MONTOFON'#9'10'#9'Monto aplicado~por el fondo solidario'#9#9);
    dbgPrevio.Selected.Add('APORTE'#9'10'#9'Año y mes~último aporte'#9#9);
    dbgPrevio.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('MONTOFON')).DisplayFormat := '###,###,##0.00';
    dbgprevio.ColumnByName('FECCANFONSOL').FooterValue := 'Totales :';
    dbgprevio.ColumnByName('CANCUOFONSOL').FooterValue := FloatToStrF(xCancuo,ffNumber,8,0);
    dbgprevio.ColumnByName('MONTOFON').FooterValue :=  FloatToStrF(xtotfonsol,ffNumber,10,2);
// Fin: HPP_200936_COB
  End;
  1:
  Begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
    DM1.cdsReporte.First;
    xtotfonsol := 0;
    xCancuo := 0;
    While Not DM1.cdsReporte.Eof Do
    Begin
      xtotfonsol := xtotfonsol + DM1.cdsReporte.FieldByName('MONFONSOL').AsFloat;
      xCancuo    := xCancuo    + DM1.cdsReporte.FieldByName('CUOCANFONSOL').AsFloat;
      DM1.cdsReporte.Next;
    End;
    dbgPrevio.Selected.Clear;
    dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
    dbgPrevio.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9#9);
    dbgPrevio.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y nombre(s)'#9#9);
    dbgPrevio.Selected.Add('CREDID'#9'6'#9'Número~crédito'#9#9);
    dbgPrevio.Selected.Add('CREFOTORG'#9'10'#9'Fecha~otorgamiento'#9#9);
    dbgPrevio.Selected.Add('FECCANFONSOL'#9'12'#9'Fecha de aplicación~del fondo solidario'#9#9);
    dbgPrevio.Selected.Add('CUOCANFONSOL'#9'10'#9'Cantidad de cuotas~aplicadas por el fondo'#9#9);
    dbgPrevio.Selected.Add('MONFONSOL'#9'10'#9'Monto aplicado~por el fondo solidario'#9#9);
    dbgPrevio.Selected.Add('ULFECPAG'#9'10'#9'Último pago~por planilla'#9#9);
    dbgPrevio.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('MONFONSOL')).DisplayFormat    := '###,###,##0.00';
    TNumericField(DM1.cdsReporte.FieldByName('CUOCANFONSOL')).DisplayFormat := '###,##0';
    dbgprevio.ColumnByName('FECCANFONSOL').FooterValue := 'Totales :';
    dbgprevio.ColumnByName('CUOCANFONSOL').FooterValue := FloatToStrF(xCancuo, ffNumber,10,0);
    dbgprevio.ColumnByName('MONFONSOL').FooterValue    := FloatToStrF(xtotfonsol,ffNumber,10,2);
// Fin: HPP_200936_COB
  End;
  2:
  Begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
    DM1.cdsReporte.First;
    xtotfonsol := 0;
    xCancuo := 0;
    While Not DM1.cdsReporte.Eof Do
    Begin
      xtotfonsol := xtotfonsol + DM1.cdsReporte.FieldByName('MONFONSOL').AsFloat;
      xCancuo    := xCancuo    + DM1.cdsReporte.FieldByName('CUOCANFONSOL').AsFloat;
      DM1.cdsReporte.Next;
    End;
    dbgPrevio.Selected.Clear;
    dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
    dbgPrevio.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9#9);
    dbgPrevio.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y nombre(s)'#9#9);
    dbgPrevio.Selected.Add('NUMCRE'#9'6'#9'Número~crédito'#9#9);
    dbgPrevio.Selected.Add('CREFOTORG'#9'6'#9'Fecha~otorgamiento'#9#9);
    dbgPrevio.Selected.Add('FECCANFONSOL'#9'6'#9'Fecha de aplicacición~del fondo solidario'#9#9);
    dbgPrevio.Selected.Add('CUOCANFONSOL'#9'6'#9'Cantidad de cuotas~aplicacadas por el fondo'#9#9);
    dbgPrevio.Selected.Add('MONFONSOL'#9'10'#9'Monto aplicado~por el fondo solidario'#9#9);
    dbgPrevio.Selected.Add('CREVIG'#9'6'#9'Crédito~vigente'#9#9);
    dbgPrevio.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('MONFONSOL')).DisplayFormat := '###,###,##0.00';
    TNumericField(DM1.cdsReporte.FieldByName('CUOCANFONSOL')).DisplayFormat := '#,##0';
    dbgprevio.ColumnByName('FECCANFONSOL').FooterValue := 'Totales :';
    dbgprevio.ColumnByName('CUOCANFONSOL').FooterValue := FormatFloat('##,###.##',xCancuo);
    dbgprevio.ColumnByName('MONFONSOL').FooterValue := FormatFloat('##,###.##',xtotfonsol);
// Fin: HPP_200936_COB
  End;

  3:
  Begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
    DM1.cdsReporte.First;
    xtotfonsol := 0;
    xCancuo := 0;
    While Not DM1.cdsReporte.Eof Do
    Begin
      xtotfonsol := xtotfonsol + DM1.cdsReporte.FieldByName('MONFONSOL').AsFloat;
      xCancuo    := xCancuo    + DM1.cdsReporte.FieldByName('CUOCANFONSOL').AsFloat;
      DM1.cdsReporte.Next;
    End;
    dbgPrevio.Selected.Clear;
    dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
    dbgPrevio.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9#9);
    dbgPrevio.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y nombre(s)'#9#9);
    dbgPrevio.Selected.Add('NUMCRE'#9'6'#9'Número~crédito'#9#9);
    dbgPrevio.Selected.Add('CREFOTORG'#9'10'#9'Fecha del~crédito'#9#9);
    dbgPrevio.Selected.Add('FECCANFONSOL'#9'10'#9'Fecha de aplicacición~del fondo solidario'#9#9);
    dbgPrevio.Selected.Add('CUOCANFONSOL'#9'6'#9'Cantidad de cuotas~aplicacadas por el fondo'#9#9);
    dbgPrevio.Selected.Add('MONFONSOL'#9'10'#9'Monto aplicado~por el fondo solidario'#9#9);
    dbgPrevio.Selected.Add('CREVIG'#9'6'#9'Crédito~Vigente'#9#9);
    dbgPrevio.Selected.Add('FECPAGBCO'#9'6'#9'Fecha pago~en banco'#9#9);
    dbgPrevio.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('MONFONSOL')).DisplayFormat := '###,###,##0.00';
    dbgprevio.ColumnByName('FECCANFONSOL').FooterValue := 'Totales :';
    dbgprevio.ColumnByName('CUOCANFONSOL').FooterValue := FormatFloat('##,###.##',xCancuo);
    dbgprevio.ColumnByName('MONFONSOL').FooterValue := FormatFloat('##,###.##',xtotfonsol);
// Fin: HPP_200936_COB
  End;

  End;

end;

procedure TFgesfonsol.FormActivate(Sender: TObject);
begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
  dbdtpinicio.SetFocus;
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
  inicializa;
// Fin: HPP_200936_COB
end;

procedure TFgesfonsol.btncerrarClick(Sender: TObject);
begin
  Fgesfonsol.Close;
end;

procedure TFgesfonsol.rgtipoClick(Sender: TObject);
begin
 If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
 inicializa;
// Fin: HPP_200936_COB
end;

procedure TFgesfonsol.btnaexcelClick(Sender: TObject);
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
Var xArchivo:String;
// Fin: HPP_200936_COB
begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
  IF dbgPrevio.DataSource.DataSet.RecordCount = 0 Then Exit;
  xArchivo := 'INF_FON_SOL';
  DM1.ExportaGridExcel(dbgPrevio,xArchivo);
// Fin: HPP_200936_COB
end;

procedure TFgesfonsol.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 Then
    If (ActiveControl is TCheckBox) then
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End
    Else
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End;
end;

procedure TFgesfonsol.btnimprimirClick(Sender: TObject);
begin
  // Inicio: HPP_200936_COB
  // Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
  If dbgPrevio.DataSource.DataSet.RecordCount = 0 Then Exit;
  Case rgtipo.ItemIndex of
    0:
    Begin
      pplfechas00.Caption := ' DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
      pplimpresopor00.Caption := 'Impreso por : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
      ppreporte00.Print;
    End;
    1:
    Begin
      pplfechas01.Caption := ' DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
      pplimpresopor01.Caption := 'Impreso por : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
      ppreporte01.Print;
    End;
    2:
    Begin
      pplfechas02.Caption := ' DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
      pplimpresopor02.Caption := 'Impreso por : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
      ppreporte02.Print;
    End;
    3:
    Begin
      pplfechas03.Caption := ' DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
      pplimpresopor03.Caption := 'Impreso por : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
      ppreporte03.Print;
    End;
  // Fin: HPP_200936_COB
  End;
End;

// Inicio: HPP_200936_COB
procedure TFgesfonsol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsReporte.Open;
  DM1.cdsReporte.Filter:='';
  DM1.cdsReporte.IndexFieldNames:='';
  DM1.cdsReporte.Filtered := False;

  Action := caFree;
// Fin: HPP_200936_COB
end;

procedure TFgesfonsol.inicializa;
var xSql:String;
begin
// Inicio: HPP_200936_COB
// Memorándum 794-2009-DM-COB   -   SAR-2009-0705   -   DAD-IR-2009-0150
  // Fecha: 08/09/2009 10:47
  // Inicializando grid
  xSql := 'SELECT C.ASOCODMOD, A.ASOTIPID, C.ASOAPENOMDNI, SUBSTR(CREDID,11,5) CREDID, CREFOTORG, FECCANFONSOL, CANCUOFONSOL,'
  +' MONTOFON, MAX(B.APOSEC) APORTE FROM (SELECT A.ASOID, B.CREFOTORG,  A.CREFPAG FECCANFONSOL,  B.ASOTIPID, A.CREDID, COUNT(*) CANCUOFONSOL,'
  +' SUM(A.CREMTOCOB) MONTOFON FROM CRE310 A, CRE301 B WHERE A.FORPAGID IN (''23'',''24'') AND A.CREESTID NOT IN (''04'',''13'',''99'')'
  +' AND NVL(CREFLAGDEV,''X'') <> ''D'' AND A.CREFPAG >= ''01/01/1999'' AND A.CREFPAG <= ''01/01/1999'''
  +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID GROUP BY B.CREFOTORG,  A.CREFPAG, A.ASOID, B.ASOTIPID, A.CREDID) A, APO301 B, APO201 C'
  +' WHERE A.ASOID = B.ASOID AND B.APOSEC >= TO_CHAR(FECCANFONSOL,''YYYYMM'') AND A.ASOID = C.ASOID'
  +' GROUP BY C.ASOCODMOD, A.ASOTIPID, C.ASOAPENOMDNI, SUBSTR(CREDID,11,5), CREFOTORG, FECCANFONSOL, CANCUOFONSOL, MONTOFON';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbgPrevio.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9#9);
  dbgPrevio.Selected.Add('ASOAPENOMDNI'#9'42'#9'Apellidos y nombre(s)'#9#9);
  dbgPrevio.Selected.Add('CREDID'#9'6'#9'Número~crédito'#9#9);
  dbgPrevio.Selected.Add('CREFOTORG'#9'10'#9'Fecha~otorgamiento'#9#9);
  dbgPrevio.Selected.Add('FECCANFONSOL'#9'10'#9'Fecha de aplicación~del fondo solidario'#9#9);
  dbgPrevio.Selected.Add('CANCUOFONSOL'#9'10'#9'Cantidad de cuotas~aplicadas por el fondo'#9#9);
  dbgPrevio.Selected.Add('MONTOFON'#9'10'#9'Monto aplicado~por el fondo solidario'#9#9);
  dbgPrevio.Selected.Add('APORTE'#9'10'#9'Año y mes~último aporte'#9#9);
  dbgPrevio.ApplySelected;
  dbgPrevio.ApplySelected;
  TNumericField(DM1.cdsReporte.FieldByName('MONTOFON')).DisplayFormat := '###,###,##0.00';
  dbgprevio.ColumnByName('FECCANFONSOL').FooterValue := 'Totales :';
  dbgprevio.ColumnByName('CANCUOFONSOL').FooterValue := FloatToStrF(0,ffNumber,8,0);
  dbgprevio.ColumnByName('MONTOFON').FooterValue :=  FloatToStrF(0.00,ffNumber,10,2);
// Fin: HPP_200936_COB

end;

end.
