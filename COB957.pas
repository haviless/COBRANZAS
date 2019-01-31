unit COB957;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, ExtCtrls, Mask, wwdbedit, Buttons, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, Grids, DBGrids;

type
  TfCtasInact = class(TForm)
    grpCtas: TGroupBox;
    Pan01: TPanel;
    Label3: TLabel;
    DbLUniPro: TwwDBLookupCombo;
    Panel9: TPanel;
    dbeUproDes: TwwDBEdit;
    DBLCTipC: TwwDBLookupCombo;
    Panel3: TPanel;
    EdtTipCob: TEdit;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    chkGeneral: TCheckBox;
    DbRepCtas: TppDBPipeline;
    RepCtas: TppReport;
    ppHeaderBand33: TppHeaderBand;
    Tit01: TppLabel;
    ppLabel697: TppLabel;
    ppLabel698: TppLabel;
    ppLabel699: TppLabel;
    ppLabel700: TppLabel;
    ppLabel701: TppLabel;
    ppSystemVariable68: TppSystemVariable;
    ppSystemVariable69: TppSystemVariable;
    ppSystemVariable70: TppSystemVariable;
    ppLabel702: TppLabel;
    ppLabel703: TppLabel;
    ppLabel704: TppLabel;
    Tit02: TppLabel;
    ppDetailBand35: TppDetailBand;
    ppDBText290: TppDBText;
    ppDBText292: TppDBText;
    ppDBText293: TppDBText;
    ppDBText294: TppDBText;
    ppDBText295: TppDBText;
    ppDBText324: TppDBText;
    ppDBText330: TppDBText;
    ppFooterBand28: TppFooterBand;
    ppSummaryBand33: TppSummaryBand;
    ppDBCalc229: TppDBCalc;
    ppDBCalc232: TppDBCalc;
    ppLabel690: TppLabel;
    ppLabel695: TppLabel;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppGroup43: TppGroup;
    ppGroupHeaderBand43: TppGroupHeaderBand;
    ppDBText283: TppDBText;
    ppLabel799: TppLabel;
    ppGroupFooterBand43: TppGroupFooterBand;
    ppDBCalc227: TppDBCalc;
    ppDBCalc231: TppDBCalc;
    ppLabel691: TppLabel;
    ppLabel694: TppLabel;
    ppLine173: TppLine;
    ppGroup44: TppGroup;
    ppGroupHeaderBand44: TppGroupHeaderBand;
    ppDBText284: TppDBText;
    ppLine170: TppLine;
    ppLine172: TppLine;
    ppLabel808: TppLabel;
    ppLabel809: TppLabel;
    ppLabel810: TppLabel;
    ppLabel811: TppLabel;
    ppLabel812: TppLabel;
    ppLabel813: TppLabel;
    ppLabel815: TppLabel;
    ppGroupFooterBand44: TppGroupFooterBand;
    ppDBCalc224: TppDBCalc;
    ppDBCalc230: TppDBCalc;
    ppLabel692: TppLabel;
    ppLabel693: TppLabel;
    ppLine171: TppLine;
    dtgData: TDBGrid;
    BitExporta: TBitBtn;
    procedure DBLCTipCChange(Sender: TObject);
    procedure DbLUniProChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure chkGeneralClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCtasInact: TfCtasInact;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfCtasInact.DBLCTipCChange(Sender: TObject);
begin
   If DM1.cdsTtransaccion.Locate('FORPAGOID',VarArrayof([DBLCTipC.Text]),[]) Then
        EdtTipCob.Text  := DM1.cdsTtransaccion.fieldbyname('FORPAGODES').AsString
   Else
      Begin
        if Length(DBLCTipC.Text) <> 2 then
           Begin
              Beep;
              EdtTipCob.Text  :='';
           End;
      End

end;

procedure TfCtasInact.DbLUniProChange(Sender: TObject);
begin
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

procedure TfCtasInact.FormActivate(Sender: TObject);
begin
DBLCTipC.SetFocus;
end;

procedure TfCtasInact.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TfCtasInact.BitPrintClick(Sender: TObject);
var xSQL,xWhere:String;
begin
   If Length(Trim(DBLCTipC.Text))=0 Then
      Begin
        MessageDlg(' Debe Seleccionar Una FORMA DE COBRANZA ', mtError,[mbOk],0);
        Exit;
      End;

   If Not chkGeneral.Checked Then
      Begin
         If Length(Trim(DbLUniPro.Text))=0 Then
            Begin
              MessageDlg(' Debe Seleccionar Una UNIDAD DE PROCESO ', mtError,[mbOk],0);
              Exit;
            End;
            xWhere:=' AND UPROID='+QuotedStr(Trim(DbLUniPro.Text));
            Tit02.Caption:='UNIDAD DE PROCESO : '+Trim(dbeUproDes.Text);
      End
   Else
      Begin
          xWhere:=' ';
          Tit02.Caption:='Todas las UNIDADES DE PROCESO';
      End;

      xSQL:='SELECT A.ASOID,UPRONOM,USENOM,ASOCODMOD,USEID,UPAGOID,UPROID,ASOAPENOM,ASODNI,ASONCTA,SITCTA,CRESDOACT,B.APOSEC FROM (SELECT ASOID,NVL(B.UPRONOM,''POR IDENTIFICAR'') UPRONOM,NVL(C.USENOM,''POR IDENTIFICAR'') USENOM, '+
            'A.ASOCODMOD,A.USEID,A.UPAGOID,A.UPROID,A.ASOAPENOM,ASODNI,ASONCTA,SITCTA,CRESDOACT FROM (SELECT B.ASOID,B.ASOCODMOD,B.USEID,B.UPAGOID,B.UPROID,B.ASOAPENOM,B.ASODNI, B.ASONCTA,B.SITCTA,A.CRESDOACT  '+
            'FROM (SELECT ASOID,SUM(CRESDOACT) CRESDOACT,COUNT(*) NUMCRE FROM CRE301 WHERE FORPAGOID='+QuotedStr(Trim(DBLCTipC.Text))+' AND CREESTID=''02'' AND  NVL(CRESDOACT,0)>0 '+
            'GROUP BY ASOID) A,APO201 B WHERE A.ASOID=B.ASOID AND B.SITCTA NOT IN (''A'',''V'')) A,APO102 B,APO101 C WHERE  A.UPROID=B.UPROID(+) AND A.USEID=C.USEID(+) AND A.UPAGOID=C.UPAGOID(+) AND  A.UPROID=C.UPROID(+) '+
            'GROUP BY ASOID,NVL(B.UPRONOM,''POR IDENTIFICAR'') ,NVL(C.USENOM,''POR IDENTIFICAR'') ,A.ASOCODMOD,A.USEID,A.UPAGOID,A.UPROID,A.ASOAPENOM,ASODNI,ASONCTA,SITCTA,CRESDOACT) A,(SELECT ASOID,MAX(APOSEC) APOSEC FROM APO301 A '+
            'WHERE EXISTS (SELECT ASOID FROM (SELECT ASOID FROM APO201 WHERE SITCTA NOT IN (''A'',''V'')) WHERE A.ASOID=ASOID ) GROUP BY ASOID) B WHERE A.ASOID=B.ASOID '+xWhere+' ORDER BY UPRONOM,USENOM ';
      Screen.Cursor:=crHourGlass;
      DM1.cdsDFam.Close;
      DM1.cdsDFam.DataRequest(xSQL);
      DM1.cdsDFam.Open;
      If DM1.cdsDFam.RecordCount>0 Then
         Begin
             Tit01.Caption:='CUENTAS DE AHORRO INACTIVAS AL : '+DateToStr(DM1.FechaSys)+' - ('+Trim(EdtTipCob.Text)+')';
             RepCtas.Print;
             RepCtas.Cancel;
         End;
         DM1.cdsDFam.Close;
         Screen.Cursor:=crDefault;
end;

procedure TfCtasInact.chkGeneralClick(Sender: TObject);
begin
If chkGeneral.Checked Then
   Begin
      DbLUniPro.Text:='';
      DbLUniPro.Enabled:=False;
   End
Else
   Begin
      DbLUniPro.Enabled:=True;
   End;
end;

procedure TfCtasInact.BitExportaClick(Sender: TObject);
var xSQL,xWhere:String;
begin
   If Length(Trim(DBLCTipC.Text))=0 Then
      Begin
        MessageDlg(' Debe Seleccionar Una FORMA DE COBRANZA ', mtError,[mbOk],0);
        Exit;
      End;

   If Not chkGeneral.Checked Then
      Begin
         If Length(Trim(DbLUniPro.Text))=0 Then
            Begin
              MessageDlg(' Debe Seleccionar Una UNIDAD DE PROCESO ', mtError,[mbOk],0);
              Exit;
            End;
            xWhere:=' AND UPROID='+QuotedStr(Trim(DbLUniPro.Text));
            Tit02.Caption:='UNIDAD DE PROCESO : '+Trim(dbeUproDes.Text);
      End
   Else
      Begin
          xWhere:=' ';
          Tit02.Caption:='Todas las UNIDADES DE PROCESO';
      End;

      xSQL:='SELECT A.ASOID,UPRONOM,USENOM,ASOCODMOD,USEID,UPAGOID,UPROID,ASOAPENOM,ASODNI,ASONCTA,SITCTA,CRESDOACT,B.APOSEC FROM (SELECT ASOID,NVL(B.UPRONOM,''POR IDENTIFICAR'') UPRONOM,NVL(C.USENOM,''POR IDENTIFICAR'') USENOM, '+
            'A.ASOCODMOD,A.USEID,A.UPAGOID,A.UPROID,A.ASOAPENOM,ASODNI,ASONCTA,SITCTA,CRESDOACT FROM (SELECT B.ASOID,B.ASOCODMOD,B.USEID,B.UPAGOID,B.UPROID,B.ASOAPENOM,B.ASODNI, B.ASONCTA,B.SITCTA,A.CRESDOACT  '+
            'FROM (SELECT ASOID,SUM(CRESDOACT) CRESDOACT,COUNT(*) NUMCRE FROM CRE301 WHERE FORPAGOID='+QuotedStr(Trim(DBLCTipC.Text))+' AND CREESTID=''02'' AND  NVL(CRESDOACT,0)>0 '+
            'GROUP BY ASOID) A,APO201 B WHERE A.ASOID=B.ASOID AND B.SITCTA NOT IN (''A'',''V'')) A,APO102 B,APO101 C WHERE  A.UPROID=B.UPROID(+) AND A.USEID=C.USEID(+) AND A.UPAGOID=C.UPAGOID(+) AND  A.UPROID=C.UPROID(+) '+
            'GROUP BY ASOID,NVL(B.UPRONOM,''POR IDENTIFICAR'') ,NVL(C.USENOM,''POR IDENTIFICAR'') ,A.ASOCODMOD,A.USEID,A.UPAGOID,A.UPROID,A.ASOAPENOM,ASODNI,ASONCTA,SITCTA,CRESDOACT) A,(SELECT ASOID,MAX(APOSEC) APOSEC FROM APO301 A '+
            'WHERE EXISTS (SELECT ASOID FROM (SELECT ASOID FROM APO201 WHERE SITCTA NOT IN (''A'',''V'')) WHERE A.ASOID=ASOID ) GROUP BY ASOID) B WHERE A.ASOID=B.ASOID '+xWhere+' ORDER BY UPRONOM,USENOM ';
      Screen.Cursor:=crHourGlass;
      DM1.cdsDFam.Close;
      DM1.cdsDFam.DataRequest(xSQL);
      DM1.cdsDFam.Open;
      If DM1.cdsDFam.RecordCount>0 Then
         Begin
         	Screen.Cursor:= crHourGlass;
        	try
            DM1.HojaExcel('CUENTAS_INACTIVAS',DM1.dsDFam, dtgData);
        	except
          on Ex: Exception do
      			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
        	end;
        	Screen.Cursor:= crDefault;
         End;
      DM1.cdsDFam.Close;
end;

end.
