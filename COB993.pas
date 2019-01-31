unit COB993;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, ppVar,
  ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppDBBDE, DBGrids;

type
  Tfinfdetprocob = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    pnldespla: TPanel;
    edtusenom: TEdit;
    Panel8: TPanel;
    edtuseid: TEdit;
    Panel3: TPanel;
    edtanopro: TEdit;
    Panel4: TPanel;
    edtmespro: TEdit;
    Panel5: TPanel;
    edttipaso: TEdit;
    rgtipinf: TRadioGroup;
    btnimprimir: TBitBtn;
    BitBtn1: TBitBtn;
    dbgdetalle: TwwDBGrid;
    Label9: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    edtcodcon: TEdit;
    Panel2: TPanel;
    edtdescon: TEdit;
    dbepconprocob: TppBDEPipeline;
    pprconprocobsinpercob: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppLabel9: TppLabel;
    ppShape2: TppShape;
    ppLabel10: TppLabel;
    ppShape3: TppShape;
    ppLabel11: TppLabel;
    ppShape4: TppShape;
    ppLabel12: TppLabel;
    ppShape5: TppShape;
    ppLabel13: TppLabel;
    ppShape6: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    pplconvenio_1: TppLabel;
    pplugel_1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    pplimpresopor_1: TppLabel;
    ppLabel16: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppbderepprocob: TppBDEPipeline;
    repprocob: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppShape7: TppShape;
    ppLabel25: TppLabel;
    ppShape8: TppShape;
    ppLabel26: TppLabel;
    ppShape9: TppShape;
    ppLabel27: TppLabel;
    ppShape10: TppShape;
    ppLabel28: TppLabel;
    ppShape11: TppShape;
    ppLabel29: TppLabel;
    ppShape12: TppShape;
    ppLabel30: TppLabel;
    ppltitrep02: TppLabel;
    ppltitrep02_con: TppLabel;
    ppltitrep02_ugel: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine3: TppLine;
    pplimpresopor_2: TppLabel;
    ppLabel35: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    ppbdesinprocob: TppBDEPipeline;
    pprsinprocob: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppShape13: TppShape;
    ppLabel41: TppLabel;
    ppShape14: TppShape;
    ppLabel42: TppLabel;
    ppShape15: TppShape;
    ppLabel43: TppLabel;
    ppltitrep03: TppLabel;
    ppltitrep03_con: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine5: TppLine;
    pplimpresopor_3: TppLabel;
    ppLabel51: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine6: TppLine;
    ppltitrep03_ugel: TppLabel;
    btnexporta: TBitBtn;
    DBGrid: TDBGrid;
    btnlimprocob: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure rgtipinfClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btnexportaClick(Sender: TObject);
    procedure btnlimprocobClick(Sender: TObject);
  private
    { Private declarations }
  public
    mesrep1, mesrep2, mesrep3 :String;
    { Public declarations }
  end;

var
  finfdetprocob: Tfinfdetprocob;

implementation

uses COB975, COBDM1, COB987;

{$R *.dfm}

procedure Tfinfdetprocob.FormActivate(Sender: TObject);
Var xdesmes:String;
    MesPro:Integer;
begin
  // Información detallada de los procesos de cobranzas
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
  edtanopro.Text := Finfprocob.edtanopro.Text;
  edtmespro.Text := Finfprocob.edtmespro.Text;
  edtcodcon.Text := Finfprocob.edtcodcon.Text;
  edtdescon.Text := Finfprocob.edtdescon.Text;
  edtuseid.Text  := Finfprocob.cdsprocob.FieldByName('USEID').AsString;
  edtusenom.Text := Finfprocob.cdsprocob.FieldByName('USENOM').AsString;
  edttipaso.Text := Finfprocob.edttipaso.Text;
  rgtipinf.ItemIndex := -1;
  MesPro := StrToInt(edtmespro.Text);
  btnlimprocob.Enabled := False;
  
  rgtipinf.Items.Add('proceso de cobranza sin periodo');

  If MesPro = 1 Then MesPro := 12
  Else MesPro := MesPro - 1;
  xdesmes := DM1.DesMes(Mespro, 'N');
  mesrep1 := xdesmes;
  rgtipinf.Items.Add(xdesmes+' con proceso de cobranza');
  rgtipinf.Items.Add(xdesmes+' sin proceso de cobranza');

  If MesPro = 1 Then MesPro := 12
  Else MesPro := MesPro - 1;
  xdesmes := DM1.DesMes(Mespro, 'N');
  mesrep2 := xdesmes;
  rgtipinf.Items.Add(xdesmes+' con proceso de cobranza');
  rgtipinf.Items.Add(xdesmes+' sin proceso de cobranza');

  If MesPro = 1 Then MesPro := 12
  Else MesPro := MesPro - 1;
  xdesmes := DM1.DesMes(Mespro, 'N');
  mesrep3 := xdesmes;

  rgtipinf.Items.Add(xdesmes+' hacia atras con proceso de cobranza');
  rgtipinf.Items.Add(xdesmes+' hacia atras sin proceso de cobranza');

  dbgdetalle.Selected.Clear;
  dbgdetalle.Selected.Add('ASOCODMOD'#9'12'#9'Código~Modular'#9#9);
  dbgdetalle.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);
  dbgdetalle.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos y~Nombre(s)'#9#9);
  dbgdetalle.Selected.Add('CREDID'#9'17'#9'Número de~credito'#9#9);
  dbgdetalle.Selected.Add('CRECUOTA'#9'5'#9'Cuota'#9#9);
  dbgdetalle.Selected.Add('CREMTO'#9'9'#9'Monto de~la cuota'#9#9);
  dbgdetalle.ApplySelected;
End;

procedure Tfinfdetprocob.BitBtn1Click(Sender: TObject);
begin
  finfdetprocob.Close;
end;

procedure Tfinfdetprocob.rgtipinfClick(Sender: TObject);
Var xSql, xtipaso:String;
   Anopro, Mespro:Integer;
   xAnoPro, xMesPro:String;
begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
  Anopro := StrToInt(edtanopro.Text);
  Mespro := StrToInt(edtmespro.Text);
  If FGeninfpla.rgtipaso.ItemIndex = 0 Then xtipaso := 'DO' Else xtipaso := 'CE';
  btnlimprocob.Enabled := False;

  //Proceso de cobranza sin percob
  If rgtipinf.ItemIndex = 0 Then
  Begin
    xSql := 'SELECT B.ASOID, B.ASOCODMOD, B.ASODNI, B.ASOAPENOM, C.CREDID,'
    +' TO_CHAR(C.CREFVEN,''YYYYMM'') FECVEN, C.CRECUOTA, C.CREMTO, NVL(C.CREMTOCOB,0) CREMTOCOB'
    +' FROM COB_CON_DET A, APO201 B, CRE302 C'
    +' WHERE A.IDECON = '+QuotedStr(DM1.cdsConvenio.FieldByName('IDECON').AsString)
    +' AND A.USEID = '+QuotedStr(edtuseid.Text)
    +' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID'
    +' AND B.ASOTIPID = '+QuotedStr(xtipaso)+' AND B.ASOID = C.ASOID AND C.CREESTID = ''14'' AND C.PERCOB IS NULL';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    If DM1.cdsReporte.RecordCount > 0 Then btnlimprocob.Enabled := True;
  End;

  //Con proceso de cobranza un mes atras
  If rgtipinf.ItemIndex = 1 Then
  Begin
    If Mespro = 1 Then Begin xMesPro := '12'; xAnoPro := IntToStr(Anopro-1); End
    Else Begin xMesPro := DM1.StrZero(IntToStr(Mespro-1),2); xAnoPro := edtanopro.Text; End;
    xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.ASODNI, B.CREDID, B.CRECUOTA, B.CREMTO,'
    +' NVL(B.CREMTOCOB,0) CREMTOCOB, TO_CHAR(B.CREFVEN,''YYYYMM'') FECVEN'
    +' FROM COB319 A, CRE302 B'
    +' WHERE A.IDECON = '+QuotedStr(edtcodcon.Text)+' AND A.USEID = '+QuotedStr(edtuseid.Text)
    +' AND A.COBANO = '+QuotedStr(xAnoPro)+' AND A.COBMES = '+QuotedStr(xMesPro)
    +' AND A.ASOTIPID = '+QuotedStr(xtipaso)+' AND NVL(A.MONCUOENV,0) > 0 AND A.ASOID = B.ASOID'
    +' AND B.PERCOB = '+QuotedStr(xAnoPro+xMesPro)+' AND B.CREESTID = ''14''';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    If DM1.cdsReporte.RecordCount > 0 Then btnlimprocob.Enabled := True;
  End;

  //Sin proceso de cobranza un mes atras
  If rgtipinf.ItemIndex = 2 Then
  Begin
    btnlimprocob.Enabled := False;
    If Mespro = 1 Then Begin xMesPro := '12'; xAnoPro := IntToStr(Anopro-1); End
    Else Begin xMesPro := DM1.StrZero(IntToStr(Mespro-1),2); xAnoPro := edtanopro.Text; End;
    xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.ASODNI'
    +' FROM COB319 A, CRE302 B'
    +' WHERE A.IDECON = '+QuotedStr(edtcodcon.Text)+' AND A.USEID = '+QuotedStr(edtuseid.Text)
    +' AND A.COBANO = '+QuotedStr(xAnoPro)+' AND A.COBMES = '+QuotedStr(xMesPro)
    +' AND A.ASOTIPID = '+QuotedStr(xtipaso)+' AND NVL(A.MONCUOENV,0) > 0 AND A.ASOID = B.ASOID(+)'
    +' AND B.PERCOB(+) = '+QuotedStr(xAnoPro+xMesPro)+' AND B.CREESTID(+) = ''14'' AND B.ASOID IS NULL';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
  End;

  //Con proceso de cobranza dos meses atras
  If rgtipinf.ItemIndex = 3 Then
  Begin
    If Mespro = 2 Then Begin xMesPro :=  '12'; xAnoPro := IntToStr(Anopro-1); End
    Else If Mespro = 1 Then Begin xMesPro :=  '11'; xAnoPro := IntToStr(Anopro-1); End
    Else Begin xMesPro := DM1.StrZero(IntToStr(Mespro-2),2); xAnoPro := edtanopro.Text; End;
    xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.ASODNI, B.CREDID, B.CRECUOTA, B.CREMTO,'
    +' NVL(B.CREMTOCOB,0) CREMTOCOB, TO_CHAR(B.CREFVEN,''YYYYMM'') FECVEN'
    +' FROM COB319 A, CRE302 B'
    +' WHERE A.IDECON = '+QuotedStr(edtcodcon.Text)+' AND A.USEID = '+QuotedStr(edtuseid.Text)
    +' AND A.COBANO = '+QuotedStr(xAnoPro)+' AND A.COBMES = '+QuotedStr(xMesPro)
    +' AND A.ASOTIPID = '+QuotedStr(xtipaso)+' AND NVL(A.MONCUOENV,0) > 0 AND A.ASOID = B.ASOID'
    +' AND B.PERCOB = '+QuotedStr(xAnoPro+xMesPro)+' AND B.CREESTID = ''14''';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    If DM1.cdsReporte.RecordCount > 0 Then btnlimprocob.Enabled := True;
  End;

  //Sin proceso de cobranza dos meses atras
  If rgtipinf.ItemIndex = 4 Then
  Begin
    btnlimprocob.Enabled := False;
    If Mespro = 2 Then Begin xMesPro :=  '12'; xAnoPro := IntToStr(Anopro-1) End
    Else If Mespro = 1 Then Begin xMesPro := '11'; xAnoPro := IntToStr(Anopro-1);
    End Else Begin xMesPro := DM1.StrZero(IntToStr(Mespro-2),2); xAnoPro := edtanopro.Text; End;
    xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASODNI, A.ASOAPENOM FROM COB319 A, CRE302 B'
    +' WHERE A.IDECON = '+QuotedStr(edtcodcon.Text)+' AND A.USEID = '+QuotedStr(edtuseid.Text)
    +' AND A.COBANO = '+QuotedStr(xAnoPro)+' AND A.COBMES = '+QuotedStr(xMesPro)
    +' AND A.ASOTIPID = '+QuotedStr(xtipaso)+' AND NVL(A.MONCUOENV,0) > 0 AND A.ASOID = B.ASOID(+)'
    +' AND B.PERCOB(+) = '+QuotedStr(xAnoPro+xMesPro)+' AND B.CREESTID(+) = ''14'' AND B.ASOID IS NULL';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
  End;

  //Con proceso de cobranza tres meses atras
  If rgtipinf.ItemIndex = 5 Then
  Begin
    If Mespro = 3 Then Begin xMesPro :=  '12'; xAnoPro := IntToStr(Anopro-1); End
    Else If Mespro = 2 Then Begin xMesPro :=  '11'; xAnoPro := IntToStr(Anopro-1); End
    Else If Mespro = 1 Then Begin xMesPro :=  '10'; xAnoPro := IntToStr(Anopro-1); End
    Else Begin xMesPro := DM1.StrZero(IntToStr(Mespro-3),2); xAnoPro := edtanopro.Text; End;
    xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.ASODNI, B.CREDID, B.CRECUOTA, B.CREMTO,'
    +' NVL(B.CREMTOCOB,0) CREMTOCOB, TO_CHAR(B.CREFVEN,''YYYYMM'') FECVEN'
    +' FROM COB319 A, CRE302 B'
    +' WHERE A.IDECON = '+QuotedStr(edtcodcon.Text)+' AND A.USEID = '+QuotedStr(edtuseid.Text)
    +' AND A.COBANO = '+QuotedStr(xAnoPro)+' AND A.COBMES = '+QuotedStr(xMesPro)
    +' AND A.ASOTIPID = '+QuotedStr(xtipaso)+' AND NVL(A.MONCUOENV,0) > 0 AND A.ASOID = B.ASOID'
    +' AND B.PERCOB < '+QuotedStr(xAnoPro+xMesPro)+' AND B.CREESTID = ''14''';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    If DM1.cdsReporte.RecordCount > 0 Then btnlimprocob.Enabled := True;
  End;

  //Sin proceso de cobranza tres meses atras
  If rgtipinf.ItemIndex = 6 Then
  Begin
    btnlimprocob.Enabled := False;
    If Mespro = 3 Then Begin xMesPro := '12'; xAnoPro := IntToStr(Anopro-1); End
    Else If Mespro = 2 Then Begin xMesPro := '11'; xAnoPro := IntToStr(Anopro-1); End
    Else If Mespro = 1 Then Begin xMesPro := '10'; xAnoPro := IntToStr(Anopro-1); End
    Else Begin xMesPro := DM1.StrZero(IntToStr(Mespro-3),2); xAnoPro := edtanopro.Text; End;
    xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASODNI, A.ASOAPENOM FROM COB319 A, CRE302 B'
    +' WHERE A.IDECON = '+QuotedStr(edtcodcon.Text)+' AND A.USEID = '+QuotedStr(edtuseid.Text)
    +' AND A.COBANO = '+QuotedStr(xAnoPro)+' AND A.COBMES = '+QuotedStr(xMesPro)
    +' AND A.ASOTIPID = '+QuotedStr(xtipaso)+' AND NVL(A.MONCUOENV,0) > 0 AND A.ASOID = B.ASOID(+)'
    +' AND B.PERCOB(+) < '+QuotedStr(xAnoPro+xMesPro)+' AND B.CREESTID(+) = ''14'' AND B.ASOID IS NULL';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
  End;

End;

Procedure Tfinfdetprocob.btnimprimirClick(Sender: TObject);
Begin
  If DM1.cdsReporte.RecordCount = 0 Then
  Begin
    MessageDlg('No existe información para imprimir', mtInformation,[mbOk],0);
    Exit;
  End;
  If rgtipinf.ItemIndex = 0 Then
  Begin
    pplconvenio_1.Caption := edtcodcon.Text+' - '+edtdescon.Text;
    pplugel_1.Caption     := edtuseid.Text+' - '+edtusenom.Text;
    pplimpresopor_1.Caption := 'Impreso por   : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
    pprconprocobsinpercob.Print;
  End;
  If (rgtipinf.ItemIndex = 1) Or (rgtipinf.ItemIndex = 3) Or (rgtipinf.ItemIndex = 5) Then
  Begin
    If rgtipinf.ItemIndex = 1      Then ppltitrep02.Caption := 'CUOTAS EN PROCESO DE COBRANZA DEL MES DE '+UpperCase(mesrep1)
    Else If rgtipinf.ItemIndex = 3 Then ppltitrep02.Caption := 'CUOTAS EN PROCESO DE COBRANZA DEL MES DE '+UpperCase(mesrep2)
    Else If rgtipinf.ItemIndex = 5 Then ppltitrep02.Caption := 'CUOTAS EN PROCESO DE COBRANZA DEL MES DE '+UpperCase(mesrep2)+' HACIA ATRAS';
    ppltitrep02_con.Caption := edtcodcon.Text+' - '+edtdescon.Text;
    ppltitrep02_ugel.Caption := edtuseid.Text+' - '+edtusenom.Text;
    pplimpresopor_2.Caption := 'Impreso por   : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
    repprocob.Print;
  End;
  If (rgtipinf.ItemIndex = 2) Or (rgtipinf.ItemIndex = 4) Or (rgtipinf.ItemIndex = 6) Then
  Begin
    If rgtipinf.ItemIndex = 2      Then ppltitrep03.Caption := 'CUOTAS SIN PROCESO DE COBRANZA DEL MES DE '+UpperCase(mesrep1)
    Else If rgtipinf.ItemIndex = 4 Then ppltitrep03.Caption := 'CUOTAS SIN PROCESO DE COBRANZA DEL MES DE '+UpperCase(mesrep2)
    Else If rgtipinf.ItemIndex = 6 Then ppltitrep03.Caption := 'CUOTAS SIN PROCESO DE COBRANZA DEL MES DE '+UpperCase(mesrep3)+' HACIA ATRAS';
    ppltitrep03_con.Caption := edtcodcon.Text+' - '+edtdescon.Text;
    ppltitrep03_ugel.Caption := edtuseid.Text+' - '+edtusenom.Text;
    pplimpresopor_3.Caption := 'Impreso por   : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
    pprsinprocob.Print;
  End;
End;

procedure Tfinfdetprocob.btnexportaClick(Sender: TObject);
begin
  // Exportando
  DBGrid.DataSource := DM1.dsReporte;
  DM1.HojaExcel('REPORTE', DM1.dsReporte, DBGrid);


end;



Procedure Tfinfdetprocob.btnlimprocobClick(Sender: TObject);
Var xcreestid, xcreestado, xfecven, xSql, xanomes :String;
    xasoid, xcredid, xcrecuota:String;
    xcremtocob:Double;
Begin
  // Limpiar procesos de cobranzas
  If MessageDlg('¿ Seguro de limpiar los procesos de cobranzas ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
  Begin
    Screen.Cursor:=crHourGlass;
    xSql := 'SELECT TO_CHAR(SYSDATE, ''YYYYMM'') PERSIS FROM DUAL';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    xanomes := DM1.cdsQry.FieldByName('PERSIS').AsString;
    DM1.cdsReporte.First;
    While Not DM1.cdsReporte.Eof Do
    Begin
      xasoid     := DM1.cdsReporte.FieldByName('ASOID').AsString;
      xcredid    := DM1.cdsReporte.FieldByName('CREDID').AsString;
      xcrecuota  := DM1.cdsReporte.FieldByName('CRECUOTA').AsString;
      xfecven    := DM1.cdsReporte.FieldByName('FECVEN').AsString;
      xcremtocob :=  DM1.cdsReporte.FieldByName('CREMTOCOB').AsFloat;
      IF xanomes < xfecven Then
      Begin
        xcreestid := '02';
        xcreestado := 'POR COBRAR';
      End
      Else
      Begin
        xcreestid  := '11';
        xcreestado := 'NO PAGADO';
      End;
      IF xcremtocob > 0 THEN
      Begin
        xcreestid  := '27';
        xcreestado := 'PARCIAL';
      End;
      xSql := 'UPDATE CRE302'
      +' SET CREESTID = '+QuotedStr(xcreestid)
      +' , CREESTADO = '+QuotedStr(xcreestado)
      +' , PERCOB = NULL WHERE ASOID = '+QuotedStr(xasoid)
      +' AND CREDID = '+QuotedStr(xcredid)
      +' AND CRECUOTA = '+xcrecuota;
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      DM1.cdsReporte.Next;
    End;
    MessageDlg('El proceso de cobranza ha sido limpiado', mtInformation,[mbOk],0);
  End;
  DM1.cdsReporte.First;
  Screen.Cursor:=crDefault;
 
End;

end.
