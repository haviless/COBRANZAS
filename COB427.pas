unit COB427;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdblook, ComCtrls, Mask, wwdbedit, Wwdbspin,
  ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ppDB, ppDBPipe, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppComm, ppRelatv, ppReport, ppProd;

type
  TfResGnCob = class(TForm)
    GroupBox1: TGroupBox;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    GroupBox2: TGroupBox;
    chkGeneral: TCheckBox;
    DBLCTipCob: TwwDBLookupCombo;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    Label2: TLabel;
    Label1: TLabel;
    chkFiltrar: TCheckBox;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    dbsAnoFin: TwwDBSpinEdit;
    dbsMesFin: TwwDBSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    EdtForPago: TEdit;
    ppDBRefPago: TppDBPipeline;
    ppRepResCob: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLblTitulo: TppLabel;
    ppLabel12: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblTitu2: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
// inicio HPP_201108_COB
    ppDBText4: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel4: TppLabel;
    ppShape3: TppShape;
    ppLabel5: TppLabel;
    ppDBCalc2: TppDBCalc;
// final HPP_201108_COB
//
    procedure BitSalirClick(Sender: TObject);
    procedure DBLCTipCobChange(Sender: TObject);
    procedure chkGeneralClick(Sender: TObject);
    procedure chkFiltrarClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
// inicio HPP_201108_COB
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
// final HPP_201108_COB
//
  private
    { Private declarations }
    xSgr,xSbr : String ;
  public
    { Public declarations }
  end;

var
  fResGnCob: TfResGnCob;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfResGnCob.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfResGnCob.DBLCTipCobChange(Sender: TObject);
begin
  If DM1.cdsFormaPago.Locate('FORPAGOID',VarArrayof([DBLCTipCob.text]),[]) Then
      Begin
        EdtForPago.Text  := DM1.cdsFormaPago.fieldbyname('FORPAGODES').AsString ;
      End
   Else
      Begin
        if Length(DBLCTipCob.Text) <> 2 then
           Begin
              Beep;
              EdtForPago.Text  :='';
           End;
      End

end;

procedure TfResGnCob.chkGeneralClick(Sender: TObject);
begin
If chkGeneral.Checked = True Then
   Begin
     xSbr:='1';
     DBLCTipCob.Text :=''; DBLCTipCob.Enabled:=False;  EdtForPago.Text :='';
   End
Else
   Begin
     xSbr:='0';  DBLCTipCob.Enabled:=True;
   End;
end;

procedure TfResGnCob.chkFiltrarClick(Sender: TObject);
begin
If chkFiltrar.Checked = True Then
   Begin
     xSgr:='0';
     dbsAnoIni.Enabled := True;  dbsAnoFin.Enabled := True; dbsMesIni.Enabled := True; dbsMesFin.Enabled := True;
   End
Else
   Begin
     xSgr:='1';
     dbsAnoIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)); dbsAnoFin.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)); dbsMesIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2)); dbsMesFin.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));
     dbsAnoIni.Enabled := False; dbsAnoFin.Enabled := False; dbsMesIni.Enabled := False; dbsMesFin.Enabled := False;
   End;
end;

procedure TfResGnCob.BitPrintClick(Sender: TObject);
// inicio HPP_201108_COB
var xSQL,xSQL2,xPerIni,xPerFin:String;
// fin HPP_201108_COB
begin
If chkGeneral.Checked = False Then
   If  Length(Trim(EdtForPago.Text))=0 Then
      Begin
        MessageDlg(' Debe Seleccionar Una Forma De Pago ', mtError,[mbOk],0);
        Exit;
      End;
If dbsAnoIni.Enabled = True Then
   Begin
     xPerIni:=Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]));
     xPerFin:=Trim(dbsAnoFin.Text+Format('%.2d',[StrToInt(Trim(dbsMesFin.Text))]));
     If xPerIni > xPerFin Then
        Begin
           MessageDlg(' El Periodo Inicial No Puede Ser Mayor Al Periodo Final  ', mtError,[mbOk],0);
           Exit;
        End;
     End;
If xSbr='0' Then
   Begin
     If xSgr='0' Then
// inicio HPP_201108_COB
      {xSQL :='SELECT NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) IMPORTE FROM CRE310 A ,TGE006 B,APO110 C WHERE CREFPAG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND FORPAGID='+QuotedStr(Trim(DBLCTipCob.Text))+' AND CREESTID<>''13'' AND CREANO||CREMES BETWEEN '+QuotedStr(xPerIni)+' AND '+QuotedStr(xPerFin)+' AND A.USUARIO=B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM'}
       //INI RMZ FSC
       Begin
         xSQL :='SELECT ''PAGO DE CUOTAS'' TIPO,NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0))   IMPORTE FROM CRE310 A               ,TGE006 B,APO110 C WHERE CREFPAG     BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND FORPAGID='+QuotedStr(Trim(DBLCTipCob.Text))+' AND CREESTID    NOT IN(''13'',''04'',''99'') AND CREANO||CREMES   BETWEEN '+QuotedStr(xPerIni)+' AND '+QuotedStr(xPerFin)+' AND A.USUARIO    =B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM' +
                ' UNION ALL '+
                'SELECT ''DEVOLUCION AL FSC'' TIPO,NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(IMP_COB_DEU,0)) IMPORTE FROM COB_FSC_PAGOS_AL_FSC A ,TGE006 B,APO110 C WHERE FEC_COB_DEU BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND FORPAGID='+QuotedStr(Trim(DBLCTipCob.Text))+' AND EST_COB_COD NOT IN(''13'',''04'',''99'') AND COB_ANO||COB_MES BETWEEN '+QuotedStr(xPerIni)+' AND '+QuotedStr(xPerFin)+' AND A.USU_COB_DEU=B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM'
       End
// fin HPP_201108_COB
     Else
// inicio HPP_201108_COB
      {xSQL:='SELECT NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) IMPORTE FROM CRE310 A ,TGE006 B,APO110 C WHERE CREFPAG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND FORPAGID='+QuotedStr(Trim(DBLCTipCob.Text))+' AND CREESTID<>''13'' AND A.USUARIO=B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM';}
       Begin
         xSQL :='SELECT ''PAGO DE CUOTAS'' TIPO,NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0))   IMPORTE FROM CRE310 A               ,TGE006 B,APO110 C WHERE CREFPAG     BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND FORPAGID='+QuotedStr(Trim(DBLCTipCob.Text))+' AND CREESTID    NOT IN(''13'',''04'',''99'') AND A.USUARIO    =B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM '+
                ' UNION ALL '+
                'SELECT ''DEVOLUCION AL FSC'' TIPO,NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(IMP_COB_DEU,0)) IMPORTE FROM COB_FSC_PAGOS_AL_FSC A ,TGE006 B,APO110 C WHERE FEC_COB_DEU BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND FORPAGID='+QuotedStr(Trim(DBLCTipCob.Text))+' AND EST_COB_COD NOT IN(''13'',''04'',''99'') AND A.USU_COB_DEU=B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM ';
       End;
// fin HPP_201108_COB
   End
Else
   Begin
     If xSgr='0' Then
// inicio HPP_201108_COB
        {xSQL :='SELECT NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) IMPORTE FROM CRE310 A               ,TGE006 B,APO110 C WHERE CREFPAG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND CREESTID<>''13'' AND CREANO||CREMES BETWEEN '+QuotedStr(xPerIni)+' AND '+QuotedStr(xPerFin)+' AND A.USUARIO=B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM'}
        Begin
          xSQL :='SELECT ''PAGO DE CUOTAS'' TIPO,NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) IMPORTE FROM CRE310 A               ,TGE006 B,APO110 C WHERE CREFPAG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND CREESTID NOT IN(''13'',''04'',''99'')    AND CREANO||CREMES   BETWEEN '+QuotedStr(xPerIni)+' AND '+QuotedStr(xPerFin)+' AND A.USUARIO    =B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM '+
                 ' UNION ALL '+
                 'SELECT ''DEVOLUCION AL FSC'' TIPO,NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(IMP_COB_DEU,0)) IMPORTE FROM COB_FSC_PAGOS_AL_FSC A ,TGE006 B,APO110 C WHERE FEC_COB_DEU BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND EST_COB_COD NOT IN(''13'',''04'',''99'') AND COB_ANO||COB_MES BETWEEN '+QuotedStr(xPerIni)+' AND '+QuotedStr(xPerFin)+' AND A.USU_COB_DEU=B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM';
        End
// final HPP_201108_COB
     Else
// inicio HPP_201108_COB
        {xSQL :='SELECT NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) IMPORTE FROM CRE310 A ,TGE006 B,APO110 C WHERE CREFPAG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND CREESTID<>''13'' AND A.USUARIO=B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM';}
        Begin
          xSQL :='SELECT ''PAGO DE CUOTAS'' TIPO,NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(CREMTOCOB,0)) IMPORTE FROM CRE310 A               ,TGE006 B,APO110 C WHERE CREFPAG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND CREESTID NOT IN(''13'',''04'',''99'')    AND A.USUARIO    =B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM'+
                 ' UNION ALL '+
                 'SELECT ''DEVOLUCION AL FSC'' TIPO,NVL(B.OFDESID,''00'') OFDESID,NVL(C.OFDESNOM,''POR IDENTIFICAR'') OFDESNOM,SUM(NVL(IMP_COB_DEU,0)) IMPORTE FROM COB_FSC_PAGOS_AL_FSC A ,TGE006 B,APO110 C WHERE FEC_COB_DEU BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND EST_COB_COD NOT IN(''13'',''04'',''99'') AND A.USU_COB_DEU=B.USERID(+) AND B.OFDESID=C.OFDESID(+) GROUP BY B.OFDESID,C.OFDESNOM';
        End;
// final HPP_201108_COB
   End;

Screen.Cursor:=crHourGlass;
DM1.cdsQry.Close;
DM1.cdsQry.DataRequest(xSQL);
DM1.cdsQry.Open;
If DM1.cdsQry.RecordCount > 0 Then
   Begin
      ppLblTitulo.Caption:='RESUMEN DE COBRANZA EFECTUADA DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
      If xSbr='0' Then
         If xSgr='0' Then
            ppLblTitu2.Caption := 'FORMA DE PAGO  : '+EdtForPago.Text+'  -  PERIODO DE VENCIMIENTO DE '+DM1.DesMes(StrToInt(dbsMesIni.Text),'S')+'/'+dbsAnoIni.Text+' A '+DM1.DesMes(StrToInt(dbsMesFin.Text),'S')+'/'+dbsAnoFin.Text
         Else
            ppLblTitu2.Caption := 'FORMA DE PAGO  : '+EdtForPago.Text
      Else
         If xSgr='0' Then
            ppLblTitu2.Caption := 'TODAS LAS FORMAS DE PAGO  -  PERIODO DE VENCIMIENTO DE '+DM1.DesMes(StrToInt(dbsMesIni.Text),'S')+'/'+dbsAnoIni.Text+' A '+DM1.DesMes(StrToInt(dbsMesFin.Text),'S')+'/'+dbsAnoFin.Text
         Else
            ppLblTitu2.Caption := 'TODAS LAS FORMAS DE PAGO';

      Screen.Cursor:=crDefault;
      ppRepResCob.Print;
      ppRepResCob.Cancel;
   End
Else
   Begin
      Screen.Cursor:=crDefault;
      MessageDlg(' No Existe Información Para Estos Parametros  ', mtError,[mbOk],0);
      Exit;
   End;
DM1.cdsQry.Close;
end;

procedure TfResGnCob.FormActivate(Sender: TObject);
begin
xSbr:='0';  DBLCTipCob.Enabled:=True;
chkFiltrar.Checked := True;
end;

// inicio HPP_201108_COB
procedure TfResGnCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm1.cdsQry.Close;
  Dm1.cdsQry.IndexFieldNames:='';
  Dm1.cdsQry1.Close;
  Dm1.cdsQry1.IndexFieldNames:='';
end;
// fin HPP_201108_COB

end.
