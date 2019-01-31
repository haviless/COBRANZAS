unit COB974;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker,
  wwdblook, Wwdbdlg, ExtCtrls, DB, DBGrids, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCache, ppCtrls,
  ppPrnabl, ppVar, ppParameter;

type
  TFreprescuoblo = class(TForm)
    Bitcerrar: TBitBtn;
    dbgPrevio: TwwDBGrid;
    GBselecciona: TGroupBox;
    Label2: TLabel;
    dbdtpinicio: TwwDBDateTimePicker;
    Bitprevio: TBitBtn;
    BitAExcel: TBitBtn;
    Bitimprimir: TBitBtn;
    dblcdcoddep: TwwDBLookupComboDlg;
    Label1: TLabel;
    Pnldesdep: TPanel;
    medesdep: TEdit;
    DataSource1: TDataSource;
    DBGrid: TDBGrid;
    bdepreporte: TppBDEPipeline;
    pprrescreblotod: TppReport;
    ppParameterList1: TppParameterList;
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
    ppLabel15: TppLabel;
    ppDBText6: TppDBText;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppShape5: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppShape6: TppShape;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel25: TppLabel;
    ppLine4: TppLine;
    pplimpresoportod: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    Label3: TLabel;
    dbdtpfin: TwwDBDateTimePicker;
    procedure BitcerrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitprevioClick(Sender: TObject);
    procedure dblcdcoddepChange(Sender: TObject);
    procedure dbdtpinicioChange(Sender: TObject);
    procedure inicializa;
    procedure BitimprimirClick(Sender: TObject);
    procedure BitAExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freprescuoblo: TFreprescuoblo;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFreprescuoblo.BitcerrarClick(Sender: TObject);
begin
  Freprescuoblo.Close;
end;

procedure TFreprescuoblo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFreprescuoblo.FormActivate(Sender: TObject);
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
end;

procedure TFreprescuoblo.BitprevioClick(Sender: TObject);
Var xSql:String;
    cantidad, monto:Integer;
begin
  If dbdtpinicio.Text = '' Then
  Begin
    MessageDlg('Ingrese la fecha inicial', mtInformation, [mbOk], 0);
    dbdtpinicio.SetFocus;
    Exit;
  End;
  If dbdtpfin.Text = '' Then
  Begin
    MessageDlg('Ingrese la fecha final', mtInformation, [mbOk], 0);
    dbdtpfin.SetFocus;
    Exit;
  End;
  If dbdtpinicio.Date > dbdtpfin.Date Then
  Begin
    MessageDlg('La fecha inicial es mayor que la fecha final', mtInformation, [mbOk], 0);
    dbdtpinicio.SetFocus;
    Exit;
  End;
  Screen.Cursor := crHourGlass;
  If dblcdcoddep.Text <> '' Then
    xSql := 'SELECT D.DPTOID, D.DPTODES, C.USEID, C.USENOM, COUNT(*) CUENTA, SUM(NVL(MONTO,0)) MONTO FROM'
    +' (SELECT B.ASOID, B.CREDID, SUM(NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0)) MONTO FROM'
    +' (SELECT ASOID, CREDID, CRECUOTA, MAX(FECBLO) FROM COB_LOG_BLO WHERE NVL(TIPDAT, ''X'') = ''B'''
    +' AND TO_DATE(FECBLO) >= '+QuotedStr(dbdtpinicio.Text)+' AND TO_DATE(FECBLO) <= '+QuotedStr(dbdtpfin.Text)
    +' GROUP BY ASOID, CREDID, CRECUOTA) A, CRE302 B WHERE A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.CRECUOTA = B.CRECUOTA AND B.CREESTID = ''19'''
    +' GROUP BY B.ASOID, B.CREDID ) A, APO201 B, APO101 C, APO158 D WHERE A.ASOID = B.ASOID'
    +' AND B.USEID = C.USEID AND B.UPAGOID = C.UPAGOID AND B.UPROID = C.UPROID AND C.DPTOID = D.DPTOID'
    +' AND D.DPTOID = '+QuotedStr(dblcdcoddep.Text)
    +' GROUP BY D.DPTOID, D.DPTODES, C.USEID, C.USENOM'
  Else
    xSql := 'SELECT D.DPTOID, D.DPTODES, C.USEID, C.USENOM, COUNT(*) CUENTA, SUM(NVL(MONTO,0)) MONTO FROM'
    +' (SELECT B.ASOID, B.CREDID, SUM(NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0)) MONTO FROM'
    +' (SELECT ASOID, CREDID, CRECUOTA, MAX(FECBLO) FROM COB_LOG_BLO WHERE NVL(TIPDAT, ''X'') = ''B'''
    +' AND TO_DATE(FECBLO) >= '+QuotedStr(dbdtpinicio.Text)+' AND TO_DATE(FECBLO) <= '+QuotedStr(dbdtpfin.Text)
    +' GROUP BY ASOID, CREDID, CRECUOTA) A, CRE302 B WHERE A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.CRECUOTA = B.CRECUOTA AND B.CREESTID = ''19'''
    +' GROUP BY B.ASOID, B.CREDID ) A, APO201 B, APO101 C, APO158 D WHERE A.ASOID = B.ASOID'
    +' AND B.USEID = C.USEID AND B.UPAGOID = C.UPAGOID AND B.UPROID = C.UPROID AND C.DPTOID = D.DPTOID'
    +' GROUP BY D.DPTOID, D.DPTODES, C.USEID, C.USENOM';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  Screen.Cursor := crDefault;
  If DM1.cdsReporte.RecordCount = 0 Then
  Begin
    inicializa;
    dblcdcoddep.SetFocus;
    Exit;
  End;
  Bitimprimir.Enabled := True;
  BitAExcel.Enabled := True;
  cantidad := 0;
  monto    := 0;
  DM1.cdsReporte.First;
  While Not DM1.cdsReporte.Eof Do
  Begin
    cantidad := cantidad + DM1.cdsReporte.FieldByName('CUENTA').AsInteger;
    monto    := monto    + DM1.cdsReporte.FieldByName('MONTO').AsInteger;
    DM1.cdsReporte.Next;
  End;
  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add('DPTOID'#9'2'#9'Código del~departamento'#9#9);
  dbgPrevio.Selected.Add('DPTODES'#9'15'#9'Descripción del~departamento'#9#9);
  dbgPrevio.Selected.Add('USEID'#9'2'#9'Código~de UGEL'#9#9);
  dbgPrevio.Selected.Add('USENOM'#9'43'#9'Descripción~de UGEL'#9#9);
  dbgPrevio.Selected.Add('CUENTA'#9'10'#9'Cantidad de créd.~bloqueados'#9#9);
  dbgPrevio.Selected.Add('MONTO'#9'10'#9'Monto~bloqueado'#9#9);
  TNumericField(DM1.cdsReporte.FieldByName('CUENTA')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsReporte.FieldByName('MONTO')).DisplayFormat:='###,###,##0.#0';
  dbgprevio.ColumnByName('USENOM').FooterValue := 'Total :';
  dbgprevio.ColumnByName('CUENTA').FooterValue := FormatFloat('###,##0',Cantidad);
  dbgprevio.ColumnByName('MONTO').FooterValue := FormatFloat('###,###,##0.#0',monto);
  dbgPrevio.ApplySelected;
end;

procedure TFreprescuoblo.dblcdcoddepChange(Sender: TObject);
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

procedure TFreprescuoblo.dbdtpinicioChange(Sender: TObject);
begin
  inicializa;
end;

Procedure TFreprescuoblo.inicializa;
Begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
  Bitimprimir.Enabled := False;
  BitAExcel.Enabled   := False;
End;


procedure TFreprescuoblo.BitimprimirClick(Sender: TObject);
begin
  {If dblcdcoddep.Text <> '' Then
  Begin
    ppltitulodep.Caption := 'RESUMEN DE CREDITOS BLOQUEADOS DEL : '+dbdtpinicio.Text+' AL '+dbdtpfin.Text;
    pplimpresopordep.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
    pprrescreblodep.Print;
  End
  Else
  Begin
  }
    ppltitulotod.Caption := 'RESUMEN DE CREDITOS BLOQUEADOS DEL : '+dbdtpinicio.Text+' AL '+dbdtpfin.Text;
    pplimpresoportod.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
    pprrescreblotod.Print;
 // End;
end;

procedure TFreprescuoblo.BitAExcelClick(Sender: TObject);
begin
  DBGrid.DataSource := DM1.dsReporte;
  DM1.HojaExcel('REPORTE', DM1.dsReporte, DBGrid);
end;

end.
