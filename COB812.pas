unit COB812;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit, Wwdbspin, ExtCtrls,
  StdCtrls, Buttons, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, DBGrids, ppVar;

type
  TFRepcuoenv = class(TForm)
    dbgprevio: TwwDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pnldespla: TPanel;
    edtdescon: TEdit;
    btnprevio: TBitBtn;
    Panel8: TPanel;
    edtcodcon: TEdit;
    rgtipaso: TRadioGroup;
    seanopro: TwwDBSpinEdit;
    semespro: TwwDBSpinEdit;
    btnimprimir: TBitBtn;
    btnaexcel: TBitBtn;
    btncerrar: TBitBtn;
    DBGrid: TDBGrid;
    ppbdereporte: TppBDEPipeline;
    pprreporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppShape2: TppShape;
    ppLabel11: TppLabel;
    ppShape3: TppShape;
    ppLabel12: TppLabel;
    ppShape4: TppShape;
    ppLabel13: TppLabel;
    ppShape5: TppShape;
    ppLabel14: TppLabel;
    ppShape6: TppShape;
    ppLabel15: TppLabel;
    ppShape7: TppShape;
    ppLabel16: TppLabel;
    ppShape8: TppShape;
    ppLabel17: TppLabel;
    ppShape9: TppShape;
    ppLabel18: TppLabel;
    ppShape10: TppShape;
    ppLabel19: TppLabel;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel20: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel21: TppLabel;
    pplimpresopor: TppLabel;
    ppLine2: TppLine;
    ppltitulo01: TppLabel;
    ppltitulo02: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel22: TppLabel;
    ppLine3: TppLine;
    procedure edtdesconChange(Sender: TObject);
    procedure edtdesconExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnprevioClick(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
  private
     procedure limpiaantesdeprocesar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepcuoenv: TFRepcuoenv;

implementation

uses COBDM1, COB997;

{$R *.dfm}

procedure TFRepcuoenv.edtdesconChange(Sender: TObject);
begin
  If Trim(edtdescon.Text) = '' Then limpiaantesdeprocesar;
  seanopro.Text := Copy(DateToStr(DM1.FechaSys),7,4);
  semespro.Text := Copy(DateToStr(DM1.FechaSys),4,2);
end;

procedure TFRepcuoenv.edtdesconExit(Sender: TObject);
Var xfecha, xSql:String;
begin
  If Trim(edtdescon.Text) = '' Then
  Begin
    MessageDlg('Ingrese criterio de busqueda', mtInformation,[mbOk],0);
    edtdescon.SetFocus;
    Exit;
  End;
  limpiaantesdeprocesar;
  xfecha := Copy(DateToStr(date), 7,4)+Copy(DateToStr(date), 4,2)+Copy(DateToStr(date), 1,2);
  {
  xSql := 'SELECT A.*, ROUND(A.FECFIN - SYSDATE,0) DIAFIN FROM COB_CON_CAB A WHERE CODESTCON IN (''02'',''21'')'
  +' AND '+QuotedStr(xfecha)+' > TO_CHAR(FECINI, ''YYYYMMDD'') AND '+QuotedStr(xfecha)+' < TO_CHAR(FECFIN, ''YYYYMMDD'')'
  +' AND DESCON LIKE '+QuotedStr('%'+Trim(edtdescon.Text)+'%');
  }

  xSql := 'SELECT A.*, ROUND(A.FECFIN - SYSDATE,0) DIAFIN FROM COB_CON_CAB A WHERE DESCON LIKE '+QuotedStr('%'+Trim(edtdescon.Text)+'%');

  DM1.cdsConvenio.Close;
  DM1.cdsConvenio.DataRequest(xSql);
  DM1.cdsConvenio.Open;
  Try
    FSelCon := TFSelCon.Create(Self);
    FSelCon.ShowModal;
  Finally
    FSelCon.Free;
  End;
  If Trim(edtcodcon.Text) = '' Then
  Begin
     MessageDlg('Ingrese el nombre del convenio', mtInformation,[mbOk],0);
     edtdescon.Text := '';
     edtdescon.SetFocus;
     Exit;
  End;
end;

procedure TFRepcuoenv.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFRepcuoenv.limpiaantesdeprocesar;
Begin
  edtcodcon.Text    := '';
  seanopro.Text := Copy(DateToStr(DM1.FechaSys),7,4);
  semespro.Text := Copy(DateToStr(DM1.FechaSys),4,2);
  If DM1.cdsQry2.Active = True Then DM1.cdsQry2.Close;
end;


procedure TFRepcuoenv.FormActivate(Sender: TObject);
begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
  DM1.xHis := '2';
  edtdescon.SetFocus;
end;

procedure TFRepcuoenv.btnprevioClick(Sender: TObject);
Var xperiodo, xSql, xasotipid:String;
begin
  Screen.Cursor:=crHourGlass;
  //Cambio realizado por JCarbonel - HPP_00040_COB
  semespro.Text := DM1.StrZero(semespro.Text,2);
  xperiodo := seanopro.Text+semespro.Text;
  
  If rgtipaso.ItemIndex = 0 Then xasotipid := 'DO' Else xasotipid := 'CE';
  xSql := 'SELECT DPTODES_LAB, USENOM, ASOTIPID, REGPENDES, ASOCODMOD, ASODNI, ASOAPENOM, ASODIR, DPTODES_DIR, CIUDDES_DIR, ZIPDES_DIR, ASOTELF1, ASOTELF2,'
  +' SUM(CUOVEN) CUOVEN, SUM(SALVEN) SALVEN, SUM(SALTOT) SALTOT, MIN(VENMASANT) VENMASANT'
  +' FROM (SELECT C.DPTODES DPTODES_LAB, J.USENOM, B.ASOTIPID, D.REGPENDES, B.ASOCODMOD, B.ASODNI, B.ASOAPENOM, B.ASODIR, E.DPTODES DPTODES_DIR, F.CIUDDES CIUDDES_DIR,'
  +' G.ZIPDES ZIPDES_DIR, B.ASOTELF1, B.ASOTELF2,'
  +' CASE WHEN TO_CHAR(I.CREFVEN,''YYYYMM'') <= TO_CHAR(SYSDATE,''YYYYMM'') THEN NVL(I.CREMTO,0)-NVL(I.CREMTOCOB,0) END SALVEN,'
  +' CASE WHEN TO_CHAR(I.CREFVEN,''YYYYMM'') <= TO_CHAR(SYSDATE,''YYYYMM'') THEN 1 END CUOVEN,'
  +' NVL(I.CREMTO,0)-NVL(I.CREMTOCOB,0) SALTOT, I.CREFVEN VENMASANT'
  +' FROM COB319 A, APO201 B, APO158 C, APO105 D, APO158 E, APO123 F, APO122 G, CRE301 H, CRE302 I, APO101 J'
  +' WHERE A.IDECON = '+QuotedStr(DM1.cdsConvenio.FieldByName('IDECON').AsString)
  +' AND A.COBANO||A.COBMES = '+QuotedStr(xperiodo)
  +' AND A.ASOTIPID = '+QuotedStr(xasotipid)
  +' AND NVL(A.MONCUOENV,0) > 0 AND NVL(A.MONCUOAPL,0) = 0'
  +' AND A.ASOID = B.ASOID AND SUBSTR(B.ASODSTLABID,1,2) = C.DPTOID(+) AND B.REGPENID = D.REGPENID(+)'
  +' AND SUBSTR(B.ZIPID,1,2) = E.DPTOID(+) AND SUBSTR(B.ZIPID,1,4) = F.CIUDID(+) AND B.ZIPID = G.ZIPID(+)'
  +' AND A.ASOID = H.ASOID AND H.CREESTID = ''02'' AND H.ASOID = I.ASOID AND H.CREDID = I.CREDID AND I.CREESTID IN (''02'', ''11'', ''14'', ''27'')'
  +' AND B.UPROID = J.UPROID(+) AND B.UPAGOID = J.UPAGOID(+) AND B.USEID = J.USEID(+))'
  +' GROUP BY DPTODES_LAB, USENOM, ASOTIPID, REGPENDES, ASOCODMOD, ASODNI, ASOAPENOM, ASODIR, DPTODES_DIR, CIUDDES_DIR, ZIPDES_DIR, ASOTELF1, ASOTELF2'
  +' ORDER BY USENOM';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  dbgprevio.Selected.Clear;
  dbgprevio.Selected.Add('DPTODES_LAB'#9'18'#9'Departamento~centro laboral'#9#9);
  dbgprevio.Selected.Add('USENOM'#9'18'#9'Descripción~UGEL'#9#9);
  dbgprevio.Selected.Add('ASOTIPID'#9'7'#9'Tipo~asociado'#9#9);
  dbgprevio.Selected.Add('REGPENDES'#9'7'#9'Regimen~pensión'#9#9);
  dbgprevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbgprevio.Selected.Add('ASODNI'#9'8'#9'DNI'#9#9);
  dbgprevio.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y nombre(s)'#9#9);
  dbgprevio.Selected.Add('ASODIR'#9'42'#9'Dirección del asociado'#9#9);
  dbgprevio.Selected.Add('DPTODES_DIR'#9'15'#9'Dirección del asociado'#9#9);
  dbgprevio.Selected.Add('CIUDDES_DIR'#9'15'#9'Dirección del asociado'#9#9);
  dbgprevio.Selected.Add('ZIPDES_DIR'#9'22'#9'Dirección del asociado'#9#9);
  dbgprevio.Selected.Add('ASOTELF1'#9'10'#9'Telefono 1~asociado'#9#9);
  dbgprevio.Selected.Add('ASOTELF2'#9'10'#9'Telefono 2~asociado'#9#9);
  dbgprevio.Selected.Add('CUOVEN'#9'10'#9'Cuotas~vencidas'#9#9);
  dbgprevio.Selected.Add('SALVEN'#9'10'#9'Saldos~vencidos'#9#9);
  dbgprevio.Selected.Add('SALTOT'#9'10'#9'Saldo~total'#9#9);
  dbgprevio.Selected.Add('VENMASANT'#9'10'#9'cronograma no pagada~más antigua'#9#9);
  dbgprevio.ApplySelected;
  Screen.Cursor:=crDefault;  
end;

procedure TFRepcuoenv.btnaexcelClick(Sender: TObject);
begin
 DM1.HojaExcel('REPORTE', DM1.dsReporte, DBGrid);
end;

procedure TFRepcuoenv.btncerrarClick(Sender: TObject);
begin
  FRepcuoenv.Close;
end;

procedure TFRepcuoenv.btnimprimirClick(Sender: TObject);
Var xasotipid:String;
begin
  pplImpresopor.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  ppltitulo01.Caption := 'CUOTAS ENVIADAS A COBRANZA NO COBRADA  PERIODO : '+semespro.Text+'/'+seanopro.Text;
  If rgtipaso.ItemIndex = 0 then xasotipid := 'DOCENTES' Else xasotipid := 'CESANTES';
  ppltitulo02.Caption := xasotipid;
  pprreporte.Print;
end;

end.
