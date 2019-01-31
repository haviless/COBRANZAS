unit COB977;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppDBPipe, ppDBBDE, ppBands, ppClass, ppParameter, ppCtrls,
  ppPrnabl, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, DBGrids,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, wwdblook, Wwdbdlg,
  Buttons, wwdbdatetimepicker;

type
  TFrepcredesdet = class(TForm)
    GBselecciona: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    dbdtinicial: TwwDBDateTimePicker;
    Bitprevio: TBitBtn;
    dblcdcoddep: TwwDBLookupComboDlg;
    Pnldesdep: TPanel;
    medesdep: TEdit;
    dbgPrevio: TwwDBGrid;
    Bitimprimir: TBitBtn;
    BitAExcel: TBitBtn;
    Bitcerrar: TBitBtn;
    DBGrid: TDBGrid;
    pprdetcredesdep: TppReport;
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
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppShape3: TppShape;
    ppLabel26: TppLabel;
    ppLabel44: TppLabel;
    ppShape14: TppShape;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppShape15: TppShape;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppShape18: TppShape;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppShape19: TppShape;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppShape20: TppShape;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel61: TppLabel;
    ppDBText22: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel59: TppLabel;
    ppLine1: TppLine;
    ppLabel60: TppLabel;
    ppLine2: TppLine;
    ppParameterList2: TppParameterList;
    pprdetcreblotod: TppReport;
    bdepreporte: TppBDEPipeline;
    Label4: TLabel;
    dbdtfinal: TwwDBDateTimePicker;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppShape5: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppShape6: TppShape;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppShape7: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppShape8: TppShape;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppShape9: TppShape;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape10: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppShape11: TppShape;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBText6: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel39: TppLabel;
    ppLine3: TppLine;
    ppLabel40: TppLabel;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel41: TppLabel;
    ppDBCalc3: TppDBCalc;
    pnlobs: TPanel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    procedure BitcerrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcdcoddepChange(Sender: TObject);
    procedure BitprevioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbdtinicialChange(Sender: TObject);
    procedure dbdtfinalChange(Sender: TObject);
    procedure BitimprimirClick(Sender: TObject);
    procedure BitAExcelClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgPrevioDblClick(Sender: TObject);
  private
    procedure inicializa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frepcredesdet: TFrepcredesdet;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFrepcredesdet.BitcerrarClick(Sender: TObject);
begin
  Frepcredesdet.Close;
end;

procedure TFrepcredesdet.FormActivate(Sender: TObject);
Var xSql:String;
begin
  inicializa;
  xSql := 'SELECT DPTOID, DPTODES FROM APO158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  DBLCDcoddep.Selected.Clear;
  DBLCDcoddep.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
  DBLCDcoddep.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);
  dblcdcoddep.SetFocus;
  pnlobs.Visible := False;
end;

procedure TFrepcredesdet.dblcdcoddepChange(Sender: TObject);
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

procedure TFrepcredesdet.inicializa;
begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
  Bitimprimir.Enabled := False;
  BitAExcel.Enabled   := False;
end;

Procedure TFrepcredesdet.BitprevioClick(Sender: TObject);
Var xSql:String;
Begin
  If dbdtinicial.Text = '' Then
  Begin
    MessageDlg('Ingrese fecha inicial', mtInformation, [mbOk], 0);
    dbdtinicial.SetFocus;
    Exit;
  End;
  If dbdtfinal.Text = '' Then
  Begin
    MessageDlg('Ingrese fecha final', mtInformation, [mbOk], 0);
    dbdtinicial.SetFocus;
    Exit;
  End;

  If dbdtinicial.Date > dbdtfinal.Date Then
  Begin
    MessageDlg('Fecha inicial es menor que fecha final', mtInformation, [mbOk], 0);
    dbdtinicial.SetFocus;
    Exit;
  End;
  screen.Cursor := crHourGlass;
  If dblcdcoddep.Text = '' Then
    xSql := 'SELECT G.DPTODES, B.ASOCODMOD, B.ASOAPENOMDNI, C.CREDID, C.CRECUOTA, TO_DATE(A.FECBLO) FECBLO, E.DESTIP, A.DESMEN, D.ESTDES, A.USUBLO'
    +' FROM COB_LOG_BLO A, APO201 B, CRE302 C, CRE113 D, (SELECT * FROM COB_TIP_BLO_CUO WHERE TIPDAT = ''D'') E, APO101 F, APO158 G'
    +' WHERE A.TIPDAT = ''D'' AND TO_DATE(A.FECBLO) >= '+QuotedStr(dbdtinicial.Text)+' AND TO_DATE(A.FECBLO) <= '+QuotedStr(dbdtfinal.Text)
    +' AND A.ASOID = B.ASOID AND A.ASOID = C.ASOID AND A.CREDID = C.CREDID AND A.CRECUOTA = C.CRECUOTA'
    +' AND C.CREESTID <> ''19'' AND C.CREESTID = D.ESTID'
    +' AND B.USEID = F.USEID AND B.UPAGOID = F.UPAGOID AND B.UPROID = F.UPROID AND F.DPTOID = G.DPTOID'
    +' AND A.CODTIP = E.CODTIP'
    +' ORDER BY FECBLO, ASOCODMOD, CREDID, CRECUOTA'
  Else
    xSql := 'SELECT G.DPTODES, B.ASOCODMOD, B.ASOAPENOMDNI, C.CREDID, C.CRECUOTA, TO_DATE(A.FECBLO) FECBLO, E.DESTIP, A.DESMEN, D.ESTDES, A.USUBLO'
    +' FROM COB_LOG_BLO A, APO201 B, CRE302 C, CRE113 D, (SELECT * FROM COB_TIP_BLO_CUO WHERE TIPDAT = ''D'') E, APO101 F, APO158 G'
    +' WHERE A.TIPDAT = ''D'' AND TO_DATE(A.FECBLO) >= '+QuotedStr(dbdtinicial.Text)+' AND TO_DATE(A.FECBLO) <= '+QuotedStr(dbdtfinal.Text)
    +' AND A.ASOID = B.ASOID AND A.ASOID = C.ASOID AND A.CREDID = C.CREDID AND A.CRECUOTA = C.CRECUOTA'
    +' AND C.CREESTID <> ''19'' AND C.CREESTID = D.ESTID'
    +' AND B.USEID = F.USEID AND B.UPAGOID = F.UPAGOID AND B.UPROID = F.UPROID AND F.DPTOID = G.DPTOID AND G.DPTOID = '+QuotedStr(dblcdcoddep.Text)
    +' AND A.CODTIP = E.CODTIP'
    +' ORDER BY FECBLO, ASOCODMOD, CREDID, CRECUOTA';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  screen.Cursor := crDefault;
  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add('DPTODES'#9'15'#9'Descripción~del departamento'#9#9);
  dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
  dbgPrevio.Selected.Add('ASOAPENOMDNI'#9'42'#9'Apellidos y nombre(s)'#9#9);
  dbgPrevio.Selected.Add('CREDID'#9'17'#9'Nº~crédito'#9#9);
  dbgPrevio.Selected.Add('CRECUOTA'#9'6'#9'Cuota'#9#9);
  dbgPrevio.Selected.Add('FECBLO'#9'10'#9'Fecha de~desbloqueo'#9#9);
  dbgPrevio.Selected.Add('DESTIP'#9'25'#9'Descripción~del tipo'#9#9);
  dbgPrevio.Selected.Add('DESMEN'#9'35'#9'Descripción~del motivo'#9#9);
  dbgPrevio.Selected.Add('ESTDES'#9'18'#9'Estado~cuota'#9#9);
  dbgPrevio.Selected.Add('USUBLO'#9'15'#9'Usuario~que desbloquea'#9#9);
  dbgPrevio.ApplySelected;

  If DM1.cdsReporte.RecordCount = 0 Then
  Begin
    MessageDlg('No existe información para imprimir', mtInformation, [mbOk], 0);  
    inicializa;
    dblcdcoddep.SetFocus;
    Exit;
  End;

  Bitimprimir.Enabled := True;
  BitAExcel.Enabled := True;

end;

procedure TFrepcredesdet.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFrepcredesdet.dbdtinicialChange(Sender: TObject);
begin
    inicializa;
end;

procedure TFrepcredesdet.dbdtfinalChange(Sender: TObject);
begin
  inicializa;
end;

procedure TFrepcredesdet.BitimprimirClick(Sender: TObject);
begin
  If dblcdcoddep.Text = '' Then
  Begin
    ppLabel13.Caption := 'DETALLE DE CUOTAS DESBLOQUEADAS DEL '+dbdtinicial.Text+' AL '+dbdtfinal.Text;
    ppLabel40.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
    pprdetcreblotod.Print;
  End
  Else
  Begin
    ppLabel5.Caption := 'DETALLE DE CUOTAS DESBLOQUEADAS DEL '+dbdtinicial.Text+' AL '+dbdtfinal.Text;
    ppLabel60.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
    pprdetcredesdep.Print;
  End;
end;

procedure TFrepcredesdet.BitAExcelClick(Sender: TObject);
begin
  DBGrid.DataSource := DM1.dsReporte;
  DM1.HojaExcel('REPORTE', DM1.dsReporte, DBGrid);
end;

procedure TFrepcredesdet.BitBtn2Click(Sender: TObject);
begin
  pnlobs.Visible := False;
end;

procedure TFrepcredesdet.dbgPrevioDblClick(Sender: TObject);
begin
  pnlobs.Top  := 80;
  pnlobs.Left := 150;
  Memo1.Text := DM1.cdsReporte.FieldByName('DESMEN').AsString;
  pnlobs.Visible := True;
end;

end.
