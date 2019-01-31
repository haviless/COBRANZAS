// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB976
// Formulario                    : Frepdetcreblo
// Fecha de Creación             :
// Autor                         : EQUIPO DE SISTEMAS
// Objetivo                      : Detalle de créditos bloqueados

// Actualizaciones:
// HPC_201407_COB                : Muestra solo las cuotas bloqueadas a la fecha del proceso  
// SPP_201410_COB                : Se realiza el pase a producción a partir del HPC_201407_COB. 

unit COB976;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppParameter, ppBands, ppClass, ppCtrls, ppPrnabl, ppVar,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  DBGrids, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, wwdblook,
  Wwdbdlg, Buttons, wwdbdatetimepicker, db;

type
  TFrepdetcreblo = class(TForm)
    GBselecciona: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    dbdtinicio: TwwDBDateTimePicker;
    Bitprevio: TBitBtn;
    dblcdcoddep: TwwDBLookupComboDlg;
    Pnldesdep: TPanel;
    medesdep: TEdit;
    dbgPrevio: TwwDBGrid;
    DBGrid: TDBGrid;
    bdepreporte: TppBDEPipeline;
    pprdetcreblodep: TppReport;
    pprdetcreblotod: TppReport;
    ppParameterList1: TppParameterList;
    Bitimprimir: TBitBtn;
    BitAExcel: TBitBtn;
    Bitcerrar: TBitBtn;
    ppParameterList2: TppParameterList;
    pnlobs: TPanel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Label4: TLabel;
    dbdtfin: TwwDBDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    dblcdtipblo: TwwDBLookupComboDlg;
    dblcdusuario: TwwDBLookupComboDlg;
    pnldestipblo: TPanel;
    medestipblo: TEdit;
    Panel2: TPanel;
    medesusuario: TEdit;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape1: TppShape;
    ppLabel12: TppLabel;
    ppShape2: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppShape3: TppShape;
    ppLabel19: TppLabel;
    ppLabel26: TppLabel;
    ppShape14: TppShape;
    ppLabel27: TppLabel;
    ppLabel44: TppLabel;
    ppShape15: TppShape;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppShape16: TppShape;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppShape17: TppShape;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppShape18: TppShape;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppShape19: TppShape;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppShape20: TppShape;
    ppLabel55: TppLabel;
    ppShape23: TppShape;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppShape24: TppShape;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText26: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel60: TppLabel;
    ppLine1: TppLine;
    ppLabel61: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel65: TppLabel;
    ppDBText27: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel66: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppltitulotod: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppShape5: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppShape7: TppShape;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppShape8: TppShape;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape9: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppShape10: TppShape;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppShape6: TppShape;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppShape12: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppShape13: TppShape;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppShape21: TppShape;
    ppLabel62: TppLabel;
    ppShape22: TppShape;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppShape11: TppShape;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText23: TppDBText;
    ppDBText15: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel25: TppLabel;
    ppLine4: TppLine;
    pplimpresoportod: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel67: TppLabel;
    ppDBText28: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel68: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    procedure FormActivate(Sender: TObject);
    procedure BitprevioClick(Sender: TObject);
    procedure BitcerrarClick(Sender: TObject);
    procedure BitAExcelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitimprimirClick(Sender: TObject);
    procedure dblcdcoddepChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgPrevioDblClick(Sender: TObject);
    procedure dblcdtipbloChange(Sender: TObject);
    procedure dblcdusuarioChange(Sender: TObject);
  private
    procedure inicializa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frepdetcreblo: TFrepdetcreblo;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFrepdetcreblo.FormActivate(Sender: TObject);
Var xSql:String;
begin
  inicializa;
  dblcdcoddep.SetFocus;
  xSql := 'SELECT DPTOID, DPTODES FROM APO158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  DBLCDcoddep.Selected.Clear;
  DBLCDcoddep.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
  DBLCDcoddep.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);

  xSql := 'SELECT CODTIP, DESTIP FROM COB_TIP_BLO_CUO WHERE NVL(TIPDAT,''X'') = ''B''';
  DM1.cdsTRela.Close;
  DM1.cdsTRela.DataRequest(xSql);
  DM1.cdsTRela.Open;
  dblcdtipblo.Selected.Clear;
  dblcdtipblo.Selected.Add('CODTIP'#9'3'#9'Código'#9#9);
  dblcdtipblo.Selected.Add('DESTIP'#9'30'#9'Descripción'#9#9);

  xSql := 'SELECT USERID, UPPER(USERNOM) USERNOM FROM USERTABLE WHERE NVL(AREA, ''XXX'') = ''COB''';
  DM1.cdsUsuarios.Close;
  DM1.cdsUsuarios.DataRequest(xSql);
  DM1.cdsUsuarios.Open;
  dblcdusuario.Selected.Clear;
  dblcdusuario.Selected.Add('USERID'#9'15'#9'Código'#9#9);
  dblcdusuario.Selected.Add('USERNOM'#9'30'#9'Descripción'#9#9);
  pnlobs.Visible := False;
  dbdtinicio.SetFocus;
end;


// Inicio SPP_201410_COB
procedure TFrepdetcreblo.BitprevioClick(Sender: TObject);
Var xSql:String;
    cuoblo, cuoven, cuonoven, monporcob: Double;
begin
  If dbdtinicio.Text = '' Then
  Begin
    MessageDlg('Ingrese la fecha inicial', mtInformation, [mbOk], 0);
    dbdtinicio.SetFocus;
    Exit;
  End;
  If dbdtfin.Text = '' Then
  Begin
    MessageDlg('Ingrese la fecha final', mtInformation, [mbOk], 0);
    dbdtfin.SetFocus;
    Exit;
  End;
  If dbdtinicio.Date > dbdtfin.Date Then
    Begin
    MessageDlg('La fecha inicial es mayor que la fecha final', mtInformation, [mbOk], 0);
    dbdtinicio.SetFocus;
    Exit;
  End;
  screen.Cursor := crHourGlass;
  {
  xSql := 'SELECT DPTOID, DPTODES, USEID, USENOM, ASOCODMOD, ASOAPENOMDNI, CREDID, CREFOTORG, DESMEN, USUBLO,'
  +' DESTIP, FECBLO, SUM(NVL(CUOBLO,0)) CUOBLO, SUM(NVL(CUOVEN,0)) CUOVEN, SUM(NVL(CUONOVEN,0)) CUONOVEN, SUM(NVL(MONPORCOB,0)) MONPORCOB'
  +' FROM (SELECT E.DPTOID, E.DPTODES, D.USEID, D.USENOM, C.ASOCODMOD, C.ASOAPENOMDNI, B.CREDID, G.CREFOTORG,'
  +' TO_DATE(A.FECBLO) FECBLO, A.CODTIP, F.DESTIP, A.DESMEN, A.USUBLO, B.CREFVEN, 1 CUOBLO,'
  +' CASE WHEN TO_CHAR(B.CREFVEN, ''YYYYMM'') <= TO_CHAR(SYSDATE, ''YYYYMM'') THEN 1 END CUOVEN,'
  +' CASE WHEN TO_CHAR(B.CREFVEN, ''YYYYMM'') > TO_CHAR(SYSDATE, ''YYYYMM'') THEN 1 END CUONOVEN,'
  +' NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0) MONPORCOB'
  +' FROM COB_LOG_BLO A, CRE302 B, APO201 C, APO101 D, APO158 E, (SELECT CODTIP, DESTIP FROM COB_TIP_BLO_CUO WHERE TIPDAT = ''B'') F, CRE301 G'
  +' WHERE A.TIPDAT = ''B'' AND TO_DATE(FECBLO) >= '+QuotedStr(dbdtinicio.Text)+' AND TO_DATE(FECBLO) <= '+QuotedStr(dbdtfin.Text)
  +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.CRECUOTA = B.CRECUOTA AND B.CREESTID = ''19'''
  +' AND A.ASOID = C.ASOID AND C.USEID = D.USEID AND C.UPAGOID = D.UPAGOID AND C.UPROID = D.UPROID AND D.DPTOID = E.DPTOID AND A.CODTIP = F.CODTIP'
  +' AND A.ASOID = G.ASOID AND A.CREDID = G.CREDID';
  If dblcdtipblo.Text  <> '' Then xSql := xSql + ' AND A.CODTIP = '+QuotedStr(dblcdtipblo.Text);
  If dblcdusuario.Text <> '' Then xSql := xSql + ' AND A.USUBLO = '+QuotedStr(dblcdusuario.Text);
  If dblcdcoddep.Text  <> '' Then xSql := xSql + ' AND E.DPTOID = '+QuotedStr(dblcdcoddep.Text);
  xSql := xSql +') GROUP BY DPTOID, DPTODES, USEID, USENOM, ASOCODMOD, ASOAPENOMDNI, CREDID, CREFOTORG, DESMEN, USUBLO, DESTIP, FECBLO'
  +' ORDER BY DPTOID, DESTIP, USUBLO, FECBLO, ASOCODMOD, ASOAPENOMDNI, CREDID';
  }

  xSql := 'SELECT DPTOID, DPTODES, USEID, USENOM, ASOCODMOD, ASOAPENOMDNI, CREDID, CREFOTORG, DESMEN, USUBLO,'
  +' DESTIP, FECBLO, SUM(NVL(CUOBLO,0)) CUOBLO, SUM(NVL(CUOVEN,0)) CUOVEN, SUM(NVL(CUONOVEN,0)) CUONOVEN, SUM(NVL(MONPORCOB,0)) MONPORCOB, CREESTID, CREESTADO '
  +' FROM (SELECT E.DPTOID, E.DPTODES, D.USEID, D.USENOM, C.ASOCODMOD, C.ASOAPENOMDNI, B.CREDID, G.CREFOTORG,'
  +' TO_DATE(A.FECBLO) FECBLO, A.CODTIP, F.DESTIP, A.DESMEN, A.USUBLO, B.CREFVEN, 1 CUOBLO,'
  +' CASE WHEN TO_CHAR(B.CREFVEN, ''YYYYMM'') <= TO_CHAR(SYSDATE, ''YYYYMM'') THEN 1 END CUOVEN,'
  +' CASE WHEN TO_CHAR(B.CREFVEN, ''YYYYMM'') > TO_CHAR(SYSDATE, ''YYYYMM'') THEN 1 END CUONOVEN,'
  +' NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0) MONPORCOB, B.CREESTID, B.CREESTADO '
  +' FROM COB_LOG_BLO A, CRE302 B, APO201 C, APO101 D, APO158 E, (SELECT CODTIP, DESTIP FROM COB_TIP_BLO_CUO WHERE TIPDAT = ''B'') F, CRE301 G'
  +' WHERE A.TIPDAT = ''B'' AND TO_DATE(FECBLO) >= '+QuotedStr(dbdtinicio.Text)+' AND TO_DATE(FECBLO) <= '+QuotedStr(dbdtfin.Text)
  +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.CRECUOTA = B.CRECUOTA AND B.CREESTID = ''19'''
  +' AND A.ASOID = C.ASOID AND C.USEID = D.USEID AND C.UPAGOID = D.UPAGOID AND C.UPROID = D.UPROID AND D.DPTOID = E.DPTOID AND A.CODTIP = F.CODTIP'
  +' AND A.ASOID = G.ASOID AND A.CREDID = G.CREDID'
  +' AND EXISTS (SELECT ASOID,CREDID,CRECUOTA,FECBLO'
  +' FROM (SELECT ASOID,CREDID,CRECUOTA,MAX(TO_DATE(FECBLO)) FECBLO FROM COB_LOG_BLO WHERE TO_DATE(FECBLO) >= '+QuotedStr(dbdtinicio.Text)+' AND TO_DATE(FECBLO) <= '+QuotedStr(dbdtfin.Text)+' '
  +' AND TIPDAT=''B'' GROUP BY ASOID,CREDID,CRECUOTA) WHERE A.ASOID = ASOID AND A.CREDID = CREDID AND A.CRECUOTA = CRECUOTA AND TO_DATE(A.FECBLO)=FECBLO) ';

  If dblcdtipblo.Text  <> '' Then xSql := xSql + ' AND A.CODTIP = '+QuotedStr(dblcdtipblo.Text);
  If dblcdusuario.Text <> '' Then xSql := xSql + ' AND A.USUBLO = '+QuotedStr(dblcdusuario.Text);
  If dblcdcoddep.Text  <> '' Then xSql := xSql + ' AND E.DPTOID = '+QuotedStr(dblcdcoddep.Text);
  xSql := xSql +') GROUP BY DPTOID, DPTODES, USEID, USENOM, ASOCODMOD, ASOAPENOMDNI, CREDID, CREFOTORG, DESMEN, USUBLO, DESTIP, FECBLO,  CREESTID, CREESTADO '
  +' ORDER BY DPTOID, DESTIP, USUBLO, FECBLO, ASOCODMOD, ASOAPENOMDNI, CREDID';

  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  screen.Cursor := crDefault;  
  If DM1.cdsReporte.RecordCount = 0 Then
  Begin
    MessageDlg('No existe información para imprimir', mtInformation, [mbOk], 0);
    inicializa;
    dblcdcoddep.SetFocus;
    Exit;
  End;
  Bitimprimir.Enabled := True;
  BitAExcel.Enabled := True;
  cuoblo   := 0;
  cuoven   := 0;
  cuonoven := 0;
  monporcob:= 0;
  DM1.cdsReporte.First;
  While Not DM1.cdsReporte.Eof Do
  Begin
    cuoblo    := cuoblo    + DM1.cdsReporte.FieldByName('CUOBLO').AsFloat;
    cuoven    := cuoven    + DM1.cdsReporte.FieldByName('CUOVEN').AsFloat;
    cuonoven  := cuonoven  + DM1.cdsReporte.FieldByName('CUONOVEN').AsFloat;
    monporcob := monporcob + DM1.cdsReporte.FieldByName('MONPORCOB').AsFloat;
    DM1.cdsReporte.Next;
  End;
  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add('DPTOID'#9'2'#9'Cód.~Dep.'#9#9);
  dbgPrevio.Selected.Add('DPTODES'#9'15'#9'Descripción~del Dep.'#9#9);
  dbgPrevio.Selected.Add('USEID'#9'2'#9'Cód.~UGEL'#9#9);
  dbgPrevio.Selected.Add('USENOM'#9'43'#9'Descripción~de UGEL'#9#9);
  dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Cód.~Modular'#9#9);
  dbgPrevio.Selected.Add('ASOAPENOMDNI'#9'42'#9'Apellidos y~Nombre(s)'#9#9);
  dbgPrevio.Selected.Add('CREDID'#9'16'#9'Nº~Crédito'#9#9);
  dbgPrevio.Selected.Add('CREFOTORG'#9'16'#9'Fecha del~Crédito'#9#9);
  dbgPrevio.Selected.Add('DESMEN'#9'25'#9'Descripción~del bloqueo'#9#9);
  dbgPrevio.Selected.Add('USUBLO'#9'15'#9'Usuario que~bloquea'#9#9);
  dbgPrevio.Selected.Add('DESTIP'#9'25'#9'Descripción del tipo'#9#9);
  dbgPrevio.Selected.Add('FECBLO'#9'10'#9'Fecha de~bloqueo'#9#9);
  dbgPrevio.Selected.Add('CUOBLO'#9'8'#9'NºCuo.~bloquedas'#9#9);
  dbgPrevio.Selected.Add('CUOVEN'#9'8'#9'NºCuo.~vencidas'#9#9);
  dbgPrevio.Selected.Add('CUONOVEN'#9'8'#9'NºCuo.no~vencidas'#9#9);
  dbgPrevio.Selected.Add('MONPORCOB'#9'10'#9'Monto por~cobrar'#9#9);
  TNumericField(DM1.cdsReporte.FieldByName('CUOBLO')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsReporte.FieldByName('CUOVEN')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsReporte.FieldByName('CUONOVEN')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsReporte.FieldByName('MONPORCOB')).DisplayFormat:='###,###,##0.#0';
  dbgprevio.ColumnByName('CREDID').FooterValue := 'Total :';
  dbgprevio.ColumnByName('CUOBLO').FooterValue := FormatFloat('###,##0',cuoblo);
  dbgprevio.ColumnByName('CUOVEN').FooterValue := FormatFloat('###,##0',cuoven);
  dbgprevio.ColumnByName('CUONOVEN').FooterValue := FormatFloat('###,##0',cuonoven);
  dbgprevio.ColumnByName('MONPORCOB').FooterValue := FormatFloat('###,###,##0.#0',monporcob);
  dbgPrevio.ApplySelected;
end;

// Fin SPP_201410_COB

procedure TFrepdetcreblo.BitcerrarClick(Sender: TObject);
begin
  Frepdetcreblo.Close;
end;

procedure TFrepdetcreblo.BitAExcelClick(Sender: TObject);
begin
  DBGrid.DataSource := DM1.dsReporte;
  DM1.HojaExcel('REPORTE', DM1.dsReporte, DBGrid);
end;

procedure TFrepdetcreblo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFrepdetcreblo.BitimprimirClick(Sender: TObject);
begin
  ppltitulotod.Caption := 'DETALLE DE CUOTAS BLOQUEADAS DEL '+dbdtinicio.Text+' AL '+dbdtfin.Text;
  pplimpresoportod.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  pprdetcreblotod.Print;
end;

procedure TFrepdetcreblo.dblcdcoddepChange(Sender: TObject);
begin
  If dblcdcoddep.Text = '' Then medesdep.Text := '';
  inicializa;
  If Length(trim(dblcdcoddep.Text)) = 2 Then
  Begin
    If DM1.cdsDpto.Locate('DPTOID', dblcdcoddep.Text, []) Then
    Begin
      medesdep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdcoddep.Text := '';
      medesdep.Text := '';
      dblcdcoddep.SetFocus;
    End;
  End;
end;

procedure TFrepdetcreblo.inicializa;
begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
  Bitimprimir.Enabled := False;
  BitAExcel.Enabled   := False;
end;

procedure TFrepdetcreblo.BitBtn2Click(Sender: TObject);
begin
  pnlobs.Visible := False;
end;

procedure TFrepdetcreblo.dbgPrevioDblClick(Sender: TObject);
begin
  pnlobs.Top  := 80;
  pnlobs.Left := 150;
  Memo1.Text := DM1.cdsReporte.FieldByName('DESMEN').AsString;
  pnlobs.Visible := True;
end;

procedure TFrepdetcreblo.dblcdtipbloChange(Sender: TObject);
begin
  If dblcdtipblo.Text = '' Then medestipblo.Text := '';
  inicializa;
  If Length(trim(dblcdtipblo.Text)) = 2 Then
  Begin
    If DM1.cdsTRela.Locate('CODTIP', dblcdtipblo.Text, []) Then
    Begin
      medestipblo.Text := DM1.cdsTRela.FieldByName('DESTIP').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdtipblo.Text := '';
      medestipblo.Text := '';
      dblcdtipblo.SetFocus;
    End;
  End;
end;

procedure TFrepdetcreblo.dblcdusuarioChange(Sender: TObject);
begin
 If dblcdusuario.Text = '' Then medesusuario.Text := '';
 inicializa;
 If DM1.cdsUsuarios.Locate('USERID', dblcdusuario.Text, []) Then
 Begin
   medesusuario.Text := DM1.cdsUsuarios.FieldByName('USERNOM').AsString;
 End
 Else
 Begin
   MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
   dblcdusuario.Text := '';
   medesusuario.Text := '';
   dblcdusuario.SetFocus;
 End;
End;

end.
