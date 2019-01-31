unit COB999;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Spin, Mask,
  wwdbedit, Wwdbspin, wwdblook, ExtCtrls, Db, Gauges;

type
  TfDatEnvGes = class(TForm)
    BitSalir: TBitBtn;
    dtgInfGestion: TwwDBGrid;
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    Pan01: TPanel;
    Label3: TLabel;
    DbLUniPro: TwwDBLookupCombo;
    Panel9: TPanel;
    dbeUproDes: TwwDBEdit;
    Pan02: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DbLUniPag: TwwDBLookupCombo;
    Panel2: TPanel;
    dbeUpagDes: TwwDBEdit;
    DbLUses: TwwDBLookupCombo;
    Panel3: TPanel;
    dbeUses: TwwDBEdit;
    BitGenMesPro: TBitBtn;
    GroupBox1: TGroupBox;
    rdbTipDo: TRadioButton;
    rdbTipCe: TRadioButton;
    BitPasGes: TBitBtn;
    grpProgress: TGroupBox;
    Gauge1: TGauge;
    procedure BitSalirClick(Sender: TObject);
    procedure dbsMesIniChange(Sender: TObject);
    procedure DbLUniProChange(Sender: TObject);
    procedure dbeUproDesChange(Sender: TObject);
    procedure dbeUpagDesChange(Sender: TObject);
    procedure DbLUniPagChange(Sender: TObject);
    procedure DbLUsesChange(Sender: TObject);
    procedure BitGenMesProClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rdbTipDoClick(Sender: TObject);
    procedure rdbTipCeClick(Sender: TObject);
    procedure dbsAnoIniChange(Sender: TObject);
    procedure BitPasGesClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimpiaGrid;
  public
    { Public declarations }
  end;

var
  fDatEnvGes: TfDatEnvGes;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDatEnvGes.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfDatEnvGes.dbsMesIniChange(Sender: TObject);
begin
  LimpiaGrid;
  lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');
end;

procedure TfDatEnvGes.DbLUniProChange(Sender: TObject);
begin
   LimpiaGrid;
   If DM1.cdsUPro.Locate('UPROID',VarArrayof([DbLUniPro.text]),[]) Then
      Begin
        dbeUproDes.Text := DM1.cdsUPro.FieldByName('UPRONOM').Asstring
      End
   Else
      Begin
        if Length(DbLUniPro.Text) <> 3 then
           Begin
              Beep;
              dbeUproDes.Text  :='';
           End;
      End

end;

procedure TfDatEnvGes.dbeUproDesChange(Sender: TObject);
var xSQL:String;
begin
xSQL:='SELECT UPROID,UPAGOID,UPAGONOM FROM APO103 WHERE UPROID='+QuotedStr(Trim(DbLUniPro.Text));
DM1.cdsUPago.Close;
DM1.cdsUPago.DataRequest(xSQL);
DM1.cdsUPago.Open;
DbLUniPag.Enabled := True;


end;

procedure TfDatEnvGes.dbeUpagDesChange(Sender: TObject);
var xSQL:String;
begin
xSQL:='SELECT USEID,USENOM FROM APO101 WHERE UPAGOID='+QuotedStr(Trim(DbLUniPag.Text))+' AND SUBSTR(USENOM,1,1)<>''X'' ';
DM1.cdsUSES.Close;
DM1.cdsUSES.DataRequest(xSQL);
DM1.cdsUSES.Open;
DbLUses.Enabled := True;

end;

procedure TfDatEnvGes.DbLUniPagChange(Sender: TObject);
begin
   LimpiaGrid;
   If DM1.cdsUPago.Locate('UPAGOID',VarArrayof([DbLUniPag.Text]),[]) Then
      Begin
        dbeUpagDes.Text := DM1.cdsUPago.FieldByName('UPAGONOM').Asstring;
      End
   Else
      Begin
        if Length(DbLUniPag.Text) <> 2 then
           Begin
              Beep;
              dbeUpagDes.Text  :='';
           End;
      End

end;

procedure TfDatEnvGes.DbLUsesChange(Sender: TObject);
begin
   LimpiaGrid;
   If DM1.cdsUseS.Locate('USEID',VarArrayof([DbLUses.Text]),[]) Then
      Begin
        dbeUses.Text := DM1.cdsUseS.FieldByName('USENOM').Asstring;
      End
   Else
      Begin
        if Length(DbLUses.Text) <> 2 then
           Begin
              Beep;
              dbeUses.Text  :='';
           End;
      End
end;

procedure TfDatEnvGes.BitGenMesProClick(Sender: TObject);
var xSQL,xPerGes,xTipAso,xSQL1,xSQL2,xSQL3:String;
    xCount:Integer;
    xMonEnv,xMonPag:Double;
begin
If Length(Trim(dbeUproDes.Text))=0 Then
   Begin
       MessageDlg('DEBE SELECCIONAR UN LUGAR DE PROCESO!!!', mtError,[mbOk],0);
       Exit;
   End;

xPerGes:=Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]));
If rdbTipDo.Checked Then xTipAso:='DO'; If rdbTipCe.Checked Then xTipAso:='CE';
If (Not rdbTipDo.Checked) And (Not rdbTipCe.Checked) Then
   Begin
     xSQL1:=' ';
   End
Else
   Begin
     xSQL1:=' AND ASOTIPID='+QuotedStr(xTipAso)+' ';
   End;

If Length(Trim(dbeUpagDes.Text))=0 Then
   Begin
     xSQL2:=' ';
   End
Else
   Begin
     xSQL2:=' AND A.UPAGOID='+QuotedStr(DbLUniPag.Text);
   End;

If Length(Trim(dbeUses.Text))=0 Then
   Begin
     xSQL3:=' ';
   End
Else
   Begin
     xSQL3:=' AND A.USEID='+QuotedStr(DbLUses.Text);
   End;

Screen.Cursor := crHourGlass;

xSQL:='SELECT COBANO||COBMES PERIODO,OFDESID,ASOID,ASOAPENOM,A.UPROID,A.UPAGOID, '+
      'A.USEID,ASODNI,ASOTIPID,MONCUOENV,NVL(MONCUOAPL,0) MONCUOAPL '+
      'FROM COB319 A,APO101 B WHERE COBANO||COBMES='+QuotedStr(xPerGes)+' AND NVL(MONCUOENV,0)>0 AND NVL(MONCUOAPL,0)=0 '+
      'AND A.UPROID='+QuotedStr(DbLUniPro.Text)+xSQL2+xSQL3+xSQL1+' AND A.UPROID=B.UPROID(+) AND  A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+) ';

DM1.cdsAportes.Close;
DM1.cdsAportes.DataRequest(xSQL);
DM1.cdsAportes.Open;
TNumericField(DM1.cdsAportes.FieldByName('MONCUOENV')).DisplayFormat := '###,##0.#0';
TNumericField(DM1.cdsAportes.FieldByName('MONCUOAPL')).DisplayFormat := '###,##0.#0';
xCount:=0;xMonEnv:=0;xMonPag:=0;
DM1.cdsAportes.First;
While Not DM1.cdsAportes.Eof Do
Begin
     xCount:=xCount + 1;
     xMonEnv:=xMonEnv + DM1.cdsAportes.FieldByName('MONCUOENV').AsCurrency;
     xMonPag:=xMonPag + DM1.cdsAportes.FieldByName('MONCUOAPL').AsCurrency;
     DM1.cdsAportes.Next;
End;
dtgInfGestion.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(xCount,ffNumber, 15,0)+' Registros';
dtgInfGestion.ColumnByName('MONCUOENV').FooterValue  := FloatToStrF(xMonEnv,ffNumber, 15, 2);
dtgInfGestion.ColumnByName('MONCUOAPL').FooterValue  := FloatToStrF(xMonPag,ffNumber, 15, 2);
Screen.Cursor := crDefault;
end;

procedure TfDatEnvGes.FormActivate(Sender: TObject);
begin
  dbsAnoIni.Text:=Copy(DateToStr(DM1.FechaSys),7,4);
  dbsMesIni.Text:=Copy(DateToStr(DM1.FechaSys),4,2);
  LimpiaGrid;
end;

procedure TfDatEnvGes.LimpiaGrid;
var xSQL:String;
    xCount:Integer;
    xMonEnv,xMonPag:Double;

begin
xSQL:='SELECT COBANO||COBMES PERIODO,''  '' OFDESID,ASOID,ASOAPENOM,UPROID,UPAGOID, '+
      'USEID,ASODNI,ASOTIPID,MONCUOENV,NVL(MONCUOAPL,0) MONCUOAPL '+
      'FROM COB319 WHERE ASOID=''#!%&&&&&#'' ';

DM1.cdsAportes.Close;
DM1.cdsAportes.DataRequest(xSQL);
DM1.cdsAportes.Open;
TNumericField(DM1.cdsAportes.FieldByName('MONCUOENV')).DisplayFormat := '###,##0.#0';
TNumericField(DM1.cdsAportes.FieldByName('MONCUOAPL')).DisplayFormat := '###,##0.#0';



xCount:=0;xMonEnv:=0;xMonPag:=0;
DM1.cdsAportes.First;
While Not DM1.cdsAportes.Eof Do
Begin
     xCount:=xCount + 1;
     xMonEnv:=xMonEnv + DM1.cdsAportes.FieldByName('MONCUOENV').AsCurrency;
     xMonPag:=xMonPag + DM1.cdsAportes.FieldByName('MONCUOAPL').AsCurrency;
     DM1.cdsAportes.Next;
End;
dtgInfGestion.ColumnByName('ASOAPENOM').FooterValue := 'Total  '+FloatToStrF(xCount,ffNumber, 15,0)+' Registros';
dtgInfGestion.ColumnByName('MONCUOENV').FooterValue  := FloatToStrF(xMonEnv,ffNumber, 15, 2);
dtgInfGestion.ColumnByName('MONCUOAPL').FooterValue  := FloatToStrF(xMonPag,ffNumber, 15, 2);
end;

procedure TfDatEnvGes.rdbTipDoClick(Sender: TObject);
begin
  LimpiaGrid;
end;

procedure TfDatEnvGes.rdbTipCeClick(Sender: TObject);
begin
 LimpiaGrid;
end;

procedure TfDatEnvGes.dbsAnoIniChange(Sender: TObject);
begin
 LimpiaGrid;
end;

procedure TfDatEnvGes.BitPasGesClick(Sender: TObject);
var xSQL,xPerGes,xTipAso,xSQL1,xSQL2,xSQL3:String;
    xCount,xReg:Integer;
    xMonEnv,xMonPag:Double;
begin
    If DM1.cdsAportes.RecordCount=0 Then
       Begin
          MessageDlg('NO EXISTE INFORMACION PARA ENVIO A GESTION !!!', mtError,[mbOk],0);
          Exit;
       End;
    xPerGes:=Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]));
    If rdbTipDo.Checked Then xTipAso:='DO'; If rdbTipCe.Checked Then xTipAso:='CE';
    If (Not rdbTipDo.Checked) And (Not rdbTipCe.Checked) Then
       Begin
         xSQL1:=' ';
       End
    Else
       Begin
         xSQL1:=' AND ASOTIPID='+QuotedStr(xTipAso)+' ';
       End;
    If Length(Trim(dbeUpagDes.Text))=0 Then
       Begin
         xSQL2:=' ';
       End
    Else
       Begin
         xSQL2:=' AND UPAGOID='+QuotedStr(DbLUniPag.Text);
       End;
    If Length(Trim(dbeUses.Text))=0 Then
       Begin
         xSQL3:=' ';
       End
    Else
       Begin
         xSQL3:=' AND USEID='+QuotedStr(DbLUses.Text);
       End;
    xSQL:='SELECT ASOID FROM GES_ENV_PLA WHERE PERIODO='+QuotedStr(xPerGes)+' AND NVL(MONCUOENV,0)>0 AND NVL(MONCUOAPL,0)=0 '+
          'AND UPROID='+QuotedStr(DbLUniPro.Text)+xSQL2+xSQL3+xSQL1;
    If DM1.CountReg(xSQL) > 0 Then
       Begin
          MessageDlg('INFORMACION YA SE ENCUENTRA EN GESTION DE COBRANZAS!!!', mtError,[mbOk],0);
          Exit;
       End;
    xReg:=0;
    grpProgress.Visible:=True;
    Gauge1.MaxValue:=DM1.cdsAportes.RecordCount;
    DM1.cdsAportes.First;
    While Not DM1.cdsAportes.Eof Do
    Begin
        xReg:=xReg + 1;   fDatEnvGes.Refresh;
        Gauge1.Progress:=xReg;
        xSQL:='INSERT INTO GES_ENV_PLA(PERIODO,OFDESID,ASOID,ASOAPENOM,UPROID,UPAGOID,USEID,ASODNI,ASOTIPID,MONCUOENV,MONCUOAPL,TIPOCARGA,USUPRO,FECPRO) '+
              ' VALUES('+QuotedStr(DM1.cdsAportes.FieldByName('PERIODO').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('OFDESID').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('UPROID').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('ASODNI').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('ASOTIPID').AsString)+','+FloatToStr(DM1.cdsAportes.FieldByName('MONCUOENV').AsCurrency)+','+FloatToStr(DM1.cdsAportes.FieldByName('MONCUOAPL').AsCurrency)+', '+
              ' ''M'','+QuotedStr(DM1.wUsuario)+',SYSDATE  ) ';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        DM1.cdsAportes.Next;
    End;
    Gauge1.Progress:=0;  grpProgress.Visible:=False ;BitGenMesPro.OnClick(BitGenMesPro);

end;

end.
