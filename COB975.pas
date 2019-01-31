unit COB975;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, DB, DBClient, ExtCtrls,
  Buttons;

type
  TFinfprocob = class(TForm)
    cdsprocob: TClientDataSet;
    dsprocob: TDataSource;
    pnlmes_1: TPanel;
    pnlmes_2: TPanel;
    dbgpreprocob: TwwDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pnldespla: TPanel;
    edtdescon: TEdit;
    Panel8: TPanel;
    edtcodcon: TEdit;
    Label7: TLabel;
    Panel3: TPanel;
    edtanopro: TEdit;
    Panel4: TPanel;
    edtmespro: TEdit;
    Panel5: TPanel;
    edttipaso: TEdit;
    Label8: TLabel;
    btnsalir: TBitBtn;
    pnlmes_3: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure dbgpreprocobDblClick(Sender: TObject);
  private
    procedure inserta_mes_menos1;
    procedure inserta_mes_menos2;
    procedure inserta_mes_menos3;
    procedure inserta_sin_per_cob;
    procedure carga_ugeles;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Finfprocob: TFinfprocob;

implementation

uses COBDM1, COB987, COB993;

{$R *.dfm}

procedure TFinfprocob.FormActivate(Sender: TObject);
Var xSql:String;
  AnoPro, MesPro:Integer;
  xAnopro, xMespro, xtipaso:String;
  xconprocob_1, xsinprocob_1, xconprocob_2, xsinprocob_2, xconprocob_3, xsinprocob_3, xprocobair :Double;
begin
  Screen.Cursor := crHourGlass;
  carga_ugeles;
  edtcodcon.Text := FGeninfpla.edtcodcon.Text;
  edtdescon.Text := FGeninfpla.edtdescon.Text;
  edtanopro.Text := FGeninfpla.seanopro.Text;
  edtmespro.Text := FGeninfpla.semespro.Text;
  If FGeninfpla.rgtipaso.ItemIndex = 0 Then edttipaso.Text := 'DOCENTES' Else edttipaso.Text := 'CESANTES';
  AnoPro := StrToInt(FGeninfpla.seanopro.Text);
  MesPro := StrToInt(FGeninfpla.semespro.Text);
  If FGeninfpla.rgtipaso.ItemIndex = 0 Then xtipaso := 'DO' Else xtipaso := 'CE';
  // Mes Actual - 1
  If MesPro = 1 Then
  Begin
   MesPro := 12;
   AnoPro := AnoPro - 1;
  End
  Else MesPro := MesPro - 1;
  pnlmes_1.Caption := DM1.DesMes(MesPro, 'N');
  xAnopro := DM1.StrZero(IntToStr(AnoPro),4);
  xMespro := DM1.StrZero(IntToStr(MesPro),2);
  xSql := 'SELECT A.UPROID, A.UPAGOID, A.USEID, B.USENOM, SUM(A.NO_PRO_COB) NO_PRO_COB_1, SUM(A.SI_PRO_COB) SI_PRO_COB_1'
  +' FROM (SELECT A.UPROID, A.UPAGOID, A.USEID,  CASE WHEN B.ASOID IS NULL THEN 1 ELSE 0 END NO_PRO_COB, CASE WHEN B.ASOID IS NOT NULL THEN 1 ELSE 0 END SI_PRO_COB FROM COB319 A, CRE302 B'
  +' WHERE A.IDECON = '+QuotedStr(DM1.cdsConvenio.FieldByName('IDECON').AsString)+' AND A.COBANO = '+QuotedStr(xAnopro)+' AND A.COBMES = '+QuotedStr(xMespro)+' AND A.ASOTIPID = '+QuotedStr(xtipaso)
  +' AND NVL(A.MONCUOENV,0) > 0 AND A.ASOID = B.ASOID(+) AND B.PERCOB(+) = '+QuotedStr(xAnopro+xMespro)+' AND B.CREESTID(+) = ''14'''
  +' ) A, APO101 B WHERE A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID GROUP BY A.UPROID, A.UPAGOID, A.USEID, B.USENOM';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  inserta_mes_menos1;
  // Mes Actual - 2
  If MesPro = 1 Then
  Begin
   MesPro := 12;
   AnoPro := AnoPro - 1;
  End
  Else MesPro := MesPro - 1;
  pnlmes_2.Caption := DM1.DesMes(MesPro, 'N');
  xAnopro := DM1.StrZero(IntToStr(AnoPro),4);
  xMespro := DM1.StrZero(IntToStr(MesPro),2);
  xSql := 'SELECT A.UPROID, A.UPAGOID, A.USEID, B.USENOM, SUM(A.NO_PRO_COB) NO_PRO_COB_2, SUM(A.SI_PRO_COB) SI_PRO_COB_2'
  +' FROM (SELECT A.UPROID, A.UPAGOID, A.USEID,  CASE WHEN B.ASOID IS NULL THEN 1 ELSE 0 END NO_PRO_COB, CASE WHEN B.ASOID IS NOT NULL THEN 1 ELSE 0 END SI_PRO_COB FROM COB319 A, CRE302 B'
  +' WHERE A.IDECON = '+QuotedStr(DM1.cdsConvenio.FieldByName('IDECON').AsString)+' AND A.COBANO = '+QuotedStr(xAnopro)+' AND A.COBMES = '+QuotedStr(xMespro)
  +' AND A.ASOTIPID = '+QuotedStr(xtipaso)+' AND NVL(A.MONCUOENV,0) > 0 AND A.ASOID = B.ASOID(+) AND B.PERCOB(+) = '+QuotedStr(xAnopro+xMespro)+' AND B.CREESTID(+) = ''14'''
  +' ) A, APO101 B WHERE A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID GROUP BY A.UPROID, A.UPAGOID, A.USEID, B.USENOM';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  inserta_mes_menos2;
  // Meses hacia atras
  If MesPro = 1 Then
  Begin
   MesPro := 12;
   AnoPro := AnoPro - 1;
  End
  Else MesPro := MesPro - 1;
  pnlmes_3.Caption := DM1.DesMes(MesPro, 'N')+' hacia atras';
  xAnopro := DM1.StrZero(IntToStr(AnoPro),4);
  xMespro := DM1.StrZero(IntToStr(MesPro),2);
  xSql := 'SELECT A.UPROID, A.UPAGOID, A.USEID, B.USENOM, SUM(A.NO_PRO_COB) NO_PRO_COB_3, SUM(A.SI_PRO_COB) SI_PRO_COB_3'
  +' FROM (SELECT A.UPROID, A.UPAGOID, A.USEID,  CASE WHEN B.ASOID IS NULL THEN 1 ELSE 0 END NO_PRO_COB, CASE WHEN B.ASOID IS NOT NULL THEN 1 ELSE 0 END SI_PRO_COB FROM COB319 A, CRE302 B'
  +' WHERE A.IDECON = '+QuotedStr(DM1.cdsConvenio.FieldByName('IDECON').AsString)+' AND A.COBANO = '+QuotedStr(xAnopro)+' AND A.COBMES = '+QuotedStr(xMespro)
  +' AND A.ASOTIPID = '+QuotedStr(xtipaso)+' AND NVL(A.MONCUOENV,0) > 0 AND A.ASOID = B.ASOID(+) AND B.PERCOB(+) < '+QuotedStr(xAnopro+xMespro)+' AND B.CREESTID(+) = ''14'''
  +' ) A, APO101 B WHERE A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID GROUP BY A.UPROID, A.UPAGOID, A.USEID, B.USENOM';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  inserta_mes_menos3;
  // Procesos de cobranza sin Percob
  xSql := 'SELECT B.ASOID, B.UPROID, B.UPAGOID, B.USEID, COUNT(*) CANTIDAD FROM COB_CON_DET A, APO201 B, CRE302 C'
  +' WHERE A.IDECON = '+QuotedStr(DM1.cdsConvenio.FieldByName('IDECON').AsString)+' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID'
  +' AND B.ASOTIPID = '+QuotedStr(xtipaso)+' AND B.ASOID = C.ASOID AND C.CREESTID = ''14'' AND C.PERCOB IS NULL'
  +' GROUP BY B.ASOID, B.UPROID, B.UPAGOID, B.USEID';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  inserta_sin_per_cob;
  xconprocob_1 := 0; xsinprocob_1 := 0;
  xconprocob_2 := 0; xsinprocob_2 := 0;
  xconprocob_3 := 0; xsinprocob_3 := 0;
  xprocobair   := 0;
  cdsprocob.First;
  While Not cdsprocob.Eof Do
  Begin
    xconprocob_1 := xconprocob_1 +  cdsprocob.FieldByName('C_P_C_1').AsFloat;
    xconprocob_2 := xconprocob_2 +  cdsprocob.FieldByName('C_P_C_2').AsFloat;
    xconprocob_3 := xconprocob_3 +  cdsprocob.FieldByName('C_P_C_3').AsFloat;
    xsinprocob_1 := xsinprocob_1 +  cdsprocob.FieldByName('S_P_C_1').AsFloat;
    xsinprocob_2 := xsinprocob_2 +  cdsprocob.FieldByName('S_P_C_2').AsFloat;
    xsinprocob_3 := xsinprocob_3 +  cdsprocob.FieldByName('S_P_C_3').AsFloat;
    xprocobair   := xprocobair   +  cdsprocob.FieldByName('C_P_C_S_P').AsFloat;
    cdsprocob.Next;
  End;
  dbgpreprocob.ColumnByName('C_P_C_1').FooterValue  := FloatToStrF(xconprocob_1, ffNumber,7,0);
  dbgpreprocob.ColumnByName('C_P_C_2').FooterValue  := FloatToStrF(xconprocob_2, ffNumber,7,0);
  dbgpreprocob.ColumnByName('C_P_C_3').FooterValue  := FloatToStrF(xconprocob_3, ffNumber,7,0);
  dbgpreprocob.ColumnByName('S_P_C_1').FooterValue  := FloatToStrF(xsinprocob_1, ffNumber,7,0);
  dbgpreprocob.ColumnByName('S_P_C_2').FooterValue  := FloatToStrF(xsinprocob_2, ffNumber,7,0);
  dbgpreprocob.ColumnByName('S_P_C_3').FooterValue  := FloatToStrF(xsinprocob_3, ffNumber,7,0);
  dbgpreprocob.ColumnByName('C_P_C_S_P').FooterValue  := FloatToStrF(xprocobair, ffNumber,7,0);
  dbgpreprocob.ColumnByName('USENOM').FooterValue  := 'TOTALES :';
  TNumericField(cdsprocob.FieldByName('C_P_C_1')).DisplayFormat := '##,##0';
  TNumericField(cdsprocob.FieldByName('C_P_C_2')).DisplayFormat := '##,##0';
  TNumericField(cdsprocob.FieldByName('C_P_C_3')).DisplayFormat := '##,##0';
  TNumericField(cdsprocob.FieldByName('S_P_C_1')).DisplayFormat := '##,##0';
  TNumericField(cdsprocob.FieldByName('S_P_C_2')).DisplayFormat := '##,##0';
  TNumericField(cdsprocob.FieldByName('S_P_C_3')).DisplayFormat := '##,##0';
  Screen.Cursor := crDefault;
end;

procedure TFinfprocob.inserta_sin_per_cob;
begin
  DM1.cdsQry1.First;
  While Not DM1.cdsQry1.Eof Do
  Begin
    If cdsprocob.Locate('USEID',DM1.cdsQry1.FieldByName('USEID').AsString, []) then
    Begin
      cdsprocob.Edit;
      cdsprocob.FieldByName('C_P_C_S_P').AsFloat := cdsprocob.FieldByName('C_P_C_S_P').AsFloat + DM1.cdsQry1.FieldByName('CANTIDAD').AsFloat;
      cdsprocob.Post;
    End;
    DM1.cdsQry1.Next;
  End;
end;

procedure TFinfprocob.inserta_mes_menos1;
begin
  DM1.cdsQry1.First;
  While Not DM1.cdsQry1.Eof Do
  Begin
    If cdsprocob.Locate('USEID',DM1.cdsQry1.FieldByName('USEID').AsString, []) then
    Begin
      cdsprocob.Edit;
      cdsprocob.FieldByName('C_P_C_1').AsFloat := DM1.cdsQry1.FieldByName('SI_PRO_COB_1').AsFloat;
      cdsprocob.FieldByName('S_P_C_1').AsFloat := DM1.cdsQry1.FieldByName('NO_PRO_COB_1').AsFloat;
      cdsprocob.Post;
    End;
    DM1.cdsQry1.Next;
  End;
end;

procedure TFinfprocob.inserta_mes_menos2;
begin
  DM1.cdsQry1.First;
  While Not DM1.cdsQry1.Eof Do
  Begin
    If cdsprocob.Locate('USEID',DM1.cdsQry1.FieldByName('USEID').AsString, []) then
    Begin
      cdsprocob.Edit;
      cdsprocob.FieldByName('C_P_C_2').AsFloat := DM1.cdsQry1.FieldByName('SI_PRO_COB_2').AsFloat;
      cdsprocob.FieldByName('S_P_C_2').AsFloat := DM1.cdsQry1.FieldByName('NO_PRO_COB_2').AsFloat;
      cdsprocob.Post;
    End;
    DM1.cdsQry1.Next;
  End;
end;

procedure TFinfprocob.inserta_mes_menos3;
begin
  // Insertando meses hacia atras
  DM1.cdsQry1.First;
  While Not DM1.cdsQry1.Eof Do
  Begin
    If cdsprocob.Locate('USEID',DM1.cdsQry1.FieldByName('USEID').AsString, []) then
    Begin
      cdsprocob.Edit;
      cdsprocob.FieldByName('C_P_C_3').AsFloat := DM1.cdsQry1.FieldByName('SI_PRO_COB_3').AsFloat;
      cdsprocob.FieldByName('S_P_C_3').AsFloat := DM1.cdsQry1.FieldByName('NO_PRO_COB_3').AsFloat;
      cdsprocob.Post;
    End;
    DM1.cdsQry1.Next;
  End;
End;

procedure TFinfprocob.btnsalirClick(Sender: TObject);
begin
  Finfprocob.Close;
end;

procedure TFinfprocob.dbgpreprocobDblClick(Sender: TObject);
begin
  Try
    finfdetprocob := Tfinfdetprocob.create(Self);
    finfdetprocob.ShowModal;
  Finally
    finfdetprocob.Free;
  End;
end;



procedure TFinfprocob.carga_ugeles;
Var xSql:String;
begin
  xSql := 'SELECT B.USEID, C.USENOM FROM COB_CON_CAB A, COB_CON_DET B, APO101 C'
  +' WHERE A.IDECON = '+QuotedStr(DM1.cdsConvenio.FieldByName('IDECON').AsString)
  +' AND A.IDECON = B.IDECON AND B.UPROID = C.UPROID AND B.UPAGOID = C.UPAGOID AND B.USEID = C.USEID';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  cdsprocob.EmptyDataSet;
  While Not DM1.cdsQry.Eof Do
  Begin
    cdsprocob.Insert;
    cdsprocob.FieldByName('USEID').AsString    := DM1.cdsQry.FieldByName('USEID').AsString;
    cdsprocob.FieldByName('USENOM').AsString   := DM1.cdsQry.FieldByName('USENOM').AsString;
    cdsprocob.FieldByName('C_P_C_S_P').AsFloat := 0;
    cdsprocob.FieldByName('C_P_C_1').AsFloat   := 0;
    cdsprocob.FieldByName('S_P_C_1').AsFloat   := 0;
    cdsprocob.FieldByName('C_P_C_2').AsFloat   := 0;
    cdsprocob.FieldByName('S_P_C_2').AsFloat   := 0;
    cdsprocob.FieldByName('C_P_C_3').AsFloat   := 0;
    cdsprocob.FieldByName('S_P_C_3').AsFloat   := 0;
    cdsprocob.Post;
    DM1.cdsQry.Next;
  End;
end;

end.
