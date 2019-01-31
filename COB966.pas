unit COB966;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGrids, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons,
  wwdbdatetimepicker, db, Mask, ExtCtrls, wwdblook, Wwdbdlg, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppBands,
  ppCache, ppCtrls, ppVar, ppPrnabl, ppStrtch, ppSubRpt;
  
type
  TFrepcrepen = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dbdtpInicial: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    btnPrevio: TBitBtn;
    dbgcuonocob: TwwDBGrid;
    btnImprime: TBitBtn;
    btnaexcel: TBitBtn;
    btncerrar: TBitBtn;
    DBGrid: TDBGrid;
    Label3: TLabel;
    dblcdptoid: TwwDBLookupComboDlg;
    pnldesdep: TPanel;
    medesdep: TMaskEdit;
    bdepreporte: TppBDEPipeline;
    ppreporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppImage1: TppImage;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppltitdpt01: TppLabel;
    ppltitfec: TppLabel;
    ppLabel118: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel98: TppLabel;
    ppLabel97: TppLabel;
    ppLabel85: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppltitdep: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppShape7: TppShape;
    ppLabel8: TppLabel;
    ppShape8: TppShape;
    ppLabel9: TppLabel;
    ppShape9: TppShape;
    ppLabel10: TppLabel;
    ppShape10: TppShape;
    ppLabel11: TppLabel;
    ppShape11: TppShape;
    ppLabel12: TppLabel;
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
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLine1: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppShape12: TppShape;
    ppLabel1: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine4: TppLine;
    ppLabel23: TppLabel;
    pplimpresopor: TppLabel;
    pplc19990: TppLabel;
    pplc20530: TppLabel;
    pplcafp: TppLabel;
    pplcotros: TppLabel;
    pplctotal: TppLabel;
    pplm19990: TppLabel;
    pplm20530: TppLabel;
    pplmafp: TppLabel;
    pplmotros: TppLabel;
    pplmtotal: TppLabel;
    Label4: TLabel;
    dblctipben: TwwDBLookupComboDlg;
    Panel1: TPanel;
    metipbenef: TMaskEdit;
    Label5: TLabel;
    Panel2: TPanel;
    medesuse: TMaskEdit;
    dblcduseid: TwwDBLookupComboDlg;
    procedure btnPrevioClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dblcdptoidChange(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
    procedure dblctipbenChange(Sender: TObject);
    procedure limpia;
    procedure dblcduseidChange(Sender: TObject);
  private
   c19990, c20530, cafp, cotros :Double;
   m19990, m20530, mafp, motros :Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frepcrepen: TFrepcrepen;

implementation

uses COBDM1;


 

{$R *.dfm}

Procedure TFrepcrepen.btnPrevioClick(Sender: TObject);
Var xSql:String;
  moncob, monfal, monnocob:Double;
Begin
  If dbdtpInicial.Text = '' Then
  Begin
    MessageDlg('Ingrese la fecha inicial', mtInformation, [mbOk], 0);
    dbdtpInicial.SetFocus;
    Exit;
  End;
  If dbdtpFinal.Text = '' Then
  Begin
    MessageDlg('Ingrese la fecha final', mtInformation, [mbOk], 0);
    dbdtpFinal.SetFocus;
    Exit;
  End;
  If dbdtpInicial.Date > dbdtpFinal.Date Then
  Begin
    MessageDlg('Ingrese una fecha inicial menor o igual a la fecha final', mtInformation, [mbOk], 0);
    dbdtpInicial.SetFocus;
    Exit;
  End;
  Screen.Cursor := crHourGlass;
  xSql := 'SELECT C.BENEFABR, A.PVSLFECBE, SUBSTR(A.PVSLBENNR,5,7) PVSLBENNR, A.ASOCODMOD, F.USENOM,  A.ASODNI,'
  +' A.ASOAPENOMDNI, H.REGPENABR, B.CREDID, B.PVSLMONTO, I.PVSLMONTO NOCOB,'
  +' SUM(NVL(E.CREMTO,0)-NVL(E.CREMTOCOB,0)) FALTA'
  +' FROM PVS306 A, PVS307 B, TGE186 C, CRE301 D, CRE302 E, APO101 F, APO201 G, APO105 H, PVS307 I'
  +' WHERE A.PVSLFECBE >= '+QuotedStr(dbdtpInicial.Text)+' AND A.PVSLFECBE <= '+QuotedStr(dbdtpFinal.Text)
  +' AND A.PVSESTLIQ IN (''02'',''05'') AND A.PVSLBENNR = B.PVSLBENNR AND A.ASOID = G.ASOID AND B.CREDID IS NOT NULL AND A.PVSLTIPBE = C.TIPBENEF AND A.ASOID = D.ASOID'
  +' AND B.CREDID = D.CREDID AND D.CREESTID = ''02'' AND A.ASOID = E.ASOID AND G.REGPENID = H.REGPENID(+) AND B.CREDID = E.CREDID AND E.CREESTID IN (''02'', ''11'', ''27'')'
  +' AND A.UPROID = F.UPROID AND A.UPAGOID = F.UPAGOID AND A.USEID = F.USEID AND A.PVSLBENNR = I.PVSLBENNR AND SUBSTR(I.PVSLCONCE,1,5) = ''SALDO'' AND NVL(I.PVSLMONTO,0) > 0';
  If dblcdptoid.Text <> '' Then xSql := xSql +' AND F.DPTOID = '+QuotedStr(dblcdptoid.Text);
  If dblcduseid.Text <> '' Then xSql := xSql +' AND F.USEID = '+QuotedStr(dblcduseid.Text);
  If dblctipben.Text <> '' Then xSql := xSql +' AND A.PVSLTIPBE = '+QuotedStr(dblctipben.Text);
  xSql := xSql  + ' GROUP BY C.BENEFABR, A.PVSLFECBE, SUBSTR(A.PVSLBENNR,5,7), A.ASOCODMOD, F.USENOM,  A.ASODNI, A.ASOAPENOMDNI, H.REGPENABR, B.CREDID, B.PVSLMONTO, I.PVSLMONTO ORDER BY C.BENEFABR';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  DM1.cdsReporte.First;
  moncob   := 0; monfal   := 0; monnocob := 0; c19990   := 0; c20530   := 0; cafp     := 0;
  cotros   := 0; m19990   := 0; m20530   := 0; mafp     := 0; motros   := 0;
  While Not DM1.cdsReporte.Eof Do
  Begin
    moncob   := moncob   + DM1.cdsReporte.FieldByName('PVSLMONTO').AsFloat;
    monfal   := monfal   + DM1.cdsReporte.FieldByName('FALTA').AsFloat;
    monnocob := monnocob + DM1.cdsReporte.FieldByName('NOCOB').AsFloat;
    If Trim(DM1.cdsReporte.FieldByName('REGPENABR').AsString) = '20530' Then
    Begin
      m20530 := m20530 + DM1.cdsReporte.FieldByName('FALTA').AsFloat;
      c20530 := c20530 + 1;
    End;
    If Trim(DM1.cdsReporte.FieldByName('REGPENABR').AsString) = '19990' Then
    Begin
      m19990 := m19990 + DM1.cdsReporte.FieldByName('FALTA').AsFloat;
      c19990 := c19990 + 1;
    End;
    If Trim(DM1.cdsReporte.FieldByName('REGPENABR').AsString) = 'AFP' Then
    Begin
      mafp := mafp + DM1.cdsReporte.FieldByName('FALTA').AsFloat;
      cafp := cafp + 1;
    End;
    If (Trim(DM1.cdsReporte.FieldByName('REGPENABR').AsString) <> 'AFP') And
       (Trim(DM1.cdsReporte.FieldByName('REGPENABR').AsString) <> '20530') And
       (Trim(DM1.cdsReporte.FieldByName('REGPENABR').AsString) <> '19990') Then
    Begin
      motros := motros + DM1.cdsReporte.FieldByName('FALTA').AsFloat;
      cotros := cotros + 1;
    End;
    DM1.cdsReporte.Next;
  End;
  DM1.cdsReporte.First;
  dbgcuonocob.Selected.Clear;
  dbgcuonocob.Selected.Add('BENEFABR'#9'13'#9'Tipo de~beneficio'#9#9);
  dbgcuonocob.Selected.Add('PVSLFECBE'#9'10'#9'Fecha de~Beneficio'#9#9);
  dbgcuonocob.Selected.Add('PVSLBENNR'#9'11'#9'Número de~Beneficio'#9#9);
  dbgcuonocob.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
  dbgcuonocob.Selected.Add('USENOM'#9'30'#9'Descripción de UGEL'#9#9);
  dbgcuonocob.Selected.Add('ASODNI'#9'10'#9'DNI del~Asociado'#9#9);
  dbgcuonocob.Selected.Add('ASOAPENOMDNI'#9'45'#9'Apellidos y Nombre(s)~del asociado'#9#9);
  dbgcuonocob.Selected.Add('REGPENABR'#9'15'#9'Regimen de~pensión'#9#9);
  dbgcuonocob.Selected.Add('CREDID'#9'15'#9'Número del~Crédito'#9#9);
  dbgcuonocob.Selected.Add('PVSLMONTO'#9'10'#9'Monto~aplicado'#9#9);
  dbgcuonocob.Selected.Add('NOCOB'#9'10'#9'Monto~no aplicado'#9#9);
  dbgcuonocob.Selected.Add('FALTA'#9'10'#9'Saldo~actual'#9#9);
  dbgcuonocob.ApplySelected;
  TNumericField(DM1.cdsReporte.FieldByName('PVSLMONTO')).DisplayFormat := '###,###,##0.00';
  TNumericField(DM1.cdsReporte.FieldByName('NOCOB')).DisplayFormat := '###,###,##0.00';
  TNumericField(DM1.cdsReporte.FieldByName('FALTA')).DisplayFormat := '###,###,##0.00';
  dbgcuonocob.ColumnByName('PVSLMONTO').FooterValue := FormatFloat('###,###.#0', moncob) ;
  dbgcuonocob.ColumnByName('NOCOB').FooterValue := FormatFloat('###,###.#0', monfal);
  dbgcuonocob.ColumnByName('FALTA').FooterValue := FormatFloat('###,###.#0', monfal);
  dbgcuonocob.ColumnByName('CREDID').FooterValue := 'Total : S/.';
  If DM1.cdsReporte.RecordCount > 0 Then
  Begin
    btnImprime.Enabled := True;
    btnaexcel.Enabled := True;
  End
  Else
  Begin
    btnImprime.Enabled := False;
    btnaexcel.Enabled := False;
  End;
  Screen.Cursor := crDefault;
End;

procedure TFrepcrepen.btncerrarClick(Sender: TObject);
begin
  Frepcrepen.Close;
end;

procedure TFrepcrepen.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFrepcrepen.FormActivate(Sender: TObject);
Var xSql:String;
begin
  dblcduseid.Enabled := False;
  btnImprime.Enabled  := False;
  btnaexcel.Enabled  := False;
  If DM1.cdsReporte.Active = True Then
  Begin
   DM1.cdsReporte.Close;
   dbgcuonocob.Refresh;
  End;
  xSql := 'SELECT DPTOID, DPTODES FROM APO158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcdptoid.Selected.Clear;
  dblcdptoid.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
  dblcdptoid.Selected.Add('DPTODES'#9'25'#9'Descripción'#9#9);

  xSql := 'SELECT TIPBENEF, BENEFDES FROM TGE186 WHERE TIPBENEF IN (''01'',''02'',''03'')';
  DM1.cdsTipDesem.Close;
  DM1.cdsTipDesem.DataRequest(xSql);
  DM1.cdsTipDesem.Open;
  dblctipben.Selected.Clear;
  dblctipben.Selected.Add('TIPBENEF'#9'2'#9'Código'#9#9);
  dblctipben.Selected.Add('BENEFDES'#9'25'#9'Tipo de beneficio'#9#9);

  dbdtpInicial.SetFocus;

end;

procedure TFrepcrepen.dblcdptoidChange(Sender: TObject);
Var xSql:String;
begin
  If dblcdptoid.Text = '' Then
  Begin
    medesdep.Text := '';
    dblcduseid.Text := '';
    medesuse.Text := '';
    dblcduseid.Enabled := False;
  End;
  If Length(dblcdptoid.Text) = 2 then
  Begin
    If DM1.cdsDpto.Locate('DPTOID', dblcdptoid.Text, []) Then
    Begin
      medesdep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
      dblcduseid.Enabled := True;

      xSql := 'SELECT USEID, USENOM FROM APO101 WHERE DPTOID = '+QuotedStr(dblcdptoid.Text);
      DM1.cdsUSES.Close;
      DM1.cdsUSES.DataRequest(xSql);
      DM1.cdsUSES.Open;
      dblcduseid.Selected.Clear;
      dblcduseid.Selected.Add('USEID'#9'2'#9'Código'#9#9);
      dblcduseid.Selected.Add('USENOM'#9'25'#9'Descripción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduseid.Enabled := False;
      dblcdptoid.Text := '';
      medesdep.Text := '';
      btnPrevio.SetFocus;
    End;
  End;
  limpia;
end;

procedure TFrepcrepen.btnImprimeClick(Sender: TObject);
begin
  ppltitfec.Caption := 'DEL '+dbdtpInicial.Text+' AL '+dbdtpFinal.Text;
  If Trim(medesdep.Text) = '' Then ppltitdep.Visible := False
  Else
  Begin
    ppltitdep.Visible := True;
    ppltitdep.Caption := 'DEPARTAMENTO : '+trim(medesdep.Text);
  End;
  pplc19990.Caption := FloatToStrF(c19990, ffNumber,10,0);
  pplc20530.Caption := FloatToStrF(c20530, ffNumber,10,0);
  pplcafp.Caption   := FloatToStrF(cafp, ffNumber,10,0);
  pplcotros.Caption := FloatToStrF(cotros, ffNumber,10,0);
  pplctotal.Caption := FloatToStrF(c19990+c20530+cafp+cotros, ffNumber,10,0);
  pplm19990.Caption := FloatToStrF(m19990, ffNumber,10,2);
  pplm20530.Caption := FloatToStrF(m20530, ffNumber,10,2);
  pplmafp.Caption   := FloatToStrF(mafp, ffNumber,10,2);
  pplmotros.Caption := FloatToStrF(motros, ffNumber,10,2);
  pplmtotal.Caption := FloatToStrF(m19990+m20530+mafp+motros, ffNumber,10,2);
 // pplimpresopor.Caption := 'Impreso por : '+DM1.DevuelveValor('TGE006', 'USERNOM', 'USERID', DM1.wUsuario);
  ppreporte.Print;
  ppreporte.Stop;
end;


procedure TFrepcrepen.btnaexcelClick(Sender: TObject);
begin
  DBGrid.DataSource := DM1.dsReporte;
  DM1.HojaExcel('REPORTE', DM1.dsReporte, DBGrid);
end;


procedure TFrepcrepen.dblctipbenChange(Sender: TObject);
begin
  If dblctipben.Text = '' Then metipbenef.Text := '';
  If Length(dblctipben.Text) = 2 then
  Begin
    If DM1.cdsTipDesem.Locate('TIPBENEF', dblctipben.Text, []) Then
    Begin
      metipbenef.Text := DM1.cdsTipDesem.FieldByName('BENEFDES').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblctipben.Text := '';
      metipbenef.Text := '';
      dblctipben.SetFocus;
    End;
  End;
  limpia;
end;

procedure TFrepcrepen.limpia;
begin
  DM1.cdsReporte.Close;
end;

procedure TFrepcrepen.dblcduseidChange(Sender: TObject);
begin
  If dblcduseid.Text = '' Then medesuse.Text := '';
  If Length(dblcduseid.Text) = 2 then
  Begin
    If DM1.cdsUSES.Locate('USEID', dblcduseid.Text, []) Then
    Begin
      medesuse.Text := DM1.cdsUSES.FieldByName('USENOM').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduseid.Text := '';
      medesuse.Text := '';
      dblcduseid.SetFocus;
    End;
  End;
  limpia;
end;

end.
