unit COB908;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, wwdblook, Buttons, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,  DB, DBClient,
  ppBands, ppCache, ppCtrls, ppPrnabl, ppVar, ExtCtrls, Grids, DBGrids;

type
  TfRepFPago = class(TForm)
    grbRepfPago: TGroupBox;
    DBLCTipCob: TwwDBLookupCombo;
    Label5: TLabel;
    DtpFecIni: TDateTimePicker;
    Label2: TLabel;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    chkEfeBan: TCheckBox;
    pnlDescrip: TPanel;
    EdtForPago: TEdit;
    BitExporta: TBitBtn;
    dtgData: TDBGrid;
    ppRepfPago: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText11: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine6: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText7: TppDBText;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText9: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBRefPago: TppDBPipeline;
// inicio HPP_201108_COB
    ppLabel77: TppLabel;
    ppLabel23: TppLabel;
    ppDBText1: TppDBText;
// fin HPP_201108_COB
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLCTipCobChange(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure chkEfeBanClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
  private
    { Private declarations }
    procedure CrgFPago;
  public
    { Public declarations }
  end;

var
  fRepFPago: TfRepFPago;

implementation

uses COBDM1, COB904;

{$R *.dfm}

procedure TfRepFPago.BitSalirClick(Sender: TObject);
begin
  If Copy(DM1.CrgArea(DM1.wUsuario),1,3)='SIS' Then DM1.cdsCtasBco.Close;
  Close;
end;

procedure TfRepFPago.CrgFPago;
var xSQL:String;
begin
   xSQL:='SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGOID NOT IN (SELECT FORPAGOID FROM COB_FOR_PAG_INA) ORDER BY FORPAGOID';
   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.DataRequest(xSql);
   DM1.cdsFormaPago.Open;
   DBLCTipCob.LookupTable := DM1.cdsFormaPago;
   DBLCTipCob.LookupField := 'FORPAGOID';
   If DM1.cdsFormaPago.RecordCount = 1 Then
      Begin
        DBLCTipCob.Text:=DM1.cdsFormaPago.fieldByname('FORPAGOID').AsString;
        DBLCTipCob.Enabled := False;
      End
   Else DBLCTipCob.Enabled := True;

end;

procedure TfRepFPago.FormActivate(Sender: TObject);
begin
    DtpFecIni.Date := DM1.FechaSys;
    CrgFPago;
end;

procedure TfRepFPago.DBLCTipCobChange(Sender: TObject);
begin
   If DM1.cdsFormaPago.Locate('FORPAGOID',VarArrayof([DBLCTipCob.text]),[]) Then
      Begin
        EdtForPago.Text  := DM1.cdsFormaPago.fieldbyname('FORPAGODES').AsString ;
      End
   Else
        if Length(DBLCTipCob.Text) <> 2 then
           Begin
              Beep;
              EdtForPago.Text  :='';
           End;


end;

procedure TfRepFPago.BitPrintClick(Sender: TObject);
var xSQL:String;
begin
  Screen.Cursor:= crHourGlass;
  If chkEfeBan.Checked Then
     Begin
         ppLblTitulo.Caption:='PAGOS DIARIOS REGISTRADOS '+UpperCase(chkEfeBan.Caption)+'  DIA : '+DateToStr(DtpFecIni.Date) ;

// inicio HPP_201108_COB
        { xSQL:='SELECT DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG, '+
               'SUM(NVL(CREMTOCOB,0)) CREMTOCOB,COUNT(*) CUOTAS FROM (SELECT D.DPTODES,C.UPRONOM,E.USENOM,A.USEID,A.UPAGOID,A.UPROID,B.ASOTIPID,A.ASOAPENOM, '+
               'FORPAGABR,F.CFCDES_F,CREMTOCOB,CREFPAG FROM CRE310 A,APO201 B,APO102 C,APO158 D,APO101 E,CFC000 F '+
               'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND A.ASOID=B.ASOID(+) AND A.UPROID=C.UPROID(+) AND C.DPTOID=D.DPTOID(+) AND A.USEID=E.USEID(+) AND A.UPAGOID=E.UPAGOID(+) AND A.UPROID=E.UPROID(+) '+
               'AND A.ASOID=F.ASOID(+) AND F.PERIODO(+)='+QuotedStr(DM1.UltCalInt)+' AND FORPAGID IN (''02'',''03'')) GROUP BY DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG ORDER BY DPTODES,UPRONOM,USENOM,CREFPAG ';
        }

      xSql :='SELECT TIPO,DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG, SUM(NVL(CREMTOCOB,0)) CREMTOCOB,'+
             'CASE WHEN TIPO=''CRE'' THEN COUNT(*) ELSE 0 END CUOTAS '+
             'FROM ( '+
             '(SELECT ''CUO''TIPO ,D.DPTODES,C.UPRONOM,E.USENOM,A.USEID,A.UPAGOID,A.UPROID,B.ASOTIPID,A.ASOAPENOM, FORPAGABR,'+
             '        F.CFCDES_F,CREMTOCOB,CREFPAG '+
             'FROM CRE310 A,APO201 B,APO102 C,APO158 D,APO101 E,CFC000 F '+
             'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecIni.Date))+ ' AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=B.ASOID(+) AND '+
             '      A.UPROID=C.UPROID(+) AND C.DPTOID=D.DPTOID(+) AND A.USEID=E.USEID(+) AND '+
             '      A.UPAGOID=E.UPAGOID(+) AND A.UPROID=E.UPROID(+) AND A.ASOID=F.ASOID(+) AND '+
             '      F.PERIODO(+)='+QuotedStr(DM1.UltCalInt)+' AND FORPAGID IN (''02'',''03'')) '+
             ' UNION ALL '+
             '(SELECT ''FSC''TIPO,D.DPTODES,C.UPRONOM,E.USENOM,A.USEID,A.UPAGOID,A.UPROID,B.ASOTIPID,A.ASOAPENOM, FORPAGABR,'+
             '        F.CFCDES_F,IMP_COB_DEU CREMTOCOB,FEC_COB_DEU CREFPAG '+
             'FROM COB_FSC_PAGOS_AL_FSC A,APO201 B,APO102 C,APO158 D,APO101 E,CFC000 F '+
             'WHERE FEC_COB_DEU BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND EST_COB_COD NOT IN (''13'',''04'',''99'') AND A.ASOID=B.ASOID(+) AND '+
             '      A.UPROID=C.UPROID(+) AND C.DPTOID=D.DPTOID(+) AND A.USEID=E.USEID(+) AND '+
             '      A.UPAGOID=E.UPAGOID(+) AND A.UPROID=E.UPROID(+) AND A.ASOID=F.ASOID(+) AND '+
             '      F.PERIODO(+)='+QuotedStr(DM1.UltCalInt)+' AND FORPAGID IN (''02'',''03'')) '+
             ') '+
             'GROUP BY TIPO,DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG '+
             'ORDER BY TIPO,DPTODES,UPRONOM,USENOM,CREFPAG ';
// fin HPP_201108_COB

         DM1.cdsQry1.Close;
         DM1.cdsQry1.DataRequest(xSQL);
         DM1.cdsQry1.Open;
         If DM1.cdsQry1.RecordCount > 0 Then
            Begin
                ppRepfPago.Print;
                ppRepfPago.Cancel;
            End;
            DM1.cdsQry1.Close;
     End
  Else
     Begin
         If Length(Trim(EdtForPago.Text))=0 Then
            Begin
                MessageDlg('DEBE SELECCIONAR UNA FORMA DE PAGO DISPONIBLE', mtError,[mbOk], 0 );
                Exit;
            End;
         ppLblTitulo.Caption:='PAGOS DIARIOS REGISTRADOS '+UpperCase(EdtForPago.Text)+'  DIA : '+DateToStr(DtpFecIni.Date) ;
         xSQL:='SELECT DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG, '+
               'SUM(NVL(CREMTOCOB,0)) CREMTOCOB,COUNT(*) CUOTAS FROM (SELECT D.DPTODES,C.UPRONOM,E.USENOM,A.USEID,A.UPAGOID,A.UPROID,B.ASOTIPID,A.ASOAPENOM, '+
               'FORPAGABR,F.CFCDES_F,CREMTOCOB,CREFPAG FROM CRE310 A,APO201 B,APO102 C,APO158 D,APO101 E,CFC000 F '+
               'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND A.ASOID=B.ASOID(+) AND A.UPROID=C.UPROID(+) AND C.DPTOID=D.DPTOID(+) AND A.USEID=E.USEID(+) AND A.UPAGOID=E.UPAGOID(+) AND A.UPROID=E.UPROID(+) '+
               'AND A.ASOID=F.ASOID(+) AND F.PERIODO(+)='+QuotedStr(DM1.UltCalInt)+' AND FORPAGID='+QuotedStr(DBLCTipCob.Text)+') GROUP BY DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG ORDER BY DPTODES,UPRONOM,USENOM,CREFPAG ';
         DM1.cdsQry1.Close;
         DM1.cdsQry1.DataRequest(xSQL);
         DM1.cdsQry1.Open;
         If DM1.cdsQry1.RecordCount > 0 Then
            Begin
                ppRepfPago.Print;
                ppRepfPago.Cancel;
            End;
            DM1.cdsQry1.Close;

     End;
     Screen.Cursor:= crDefault;


end;

procedure TfRepFPago.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;






procedure TfRepFPago.chkEfeBanClick(Sender: TObject);
begin
If chkEfeBan.Checked Then  Begin DBLCTipCob.Enabled:=False; EdtForPago.Text:=''; DBLCTipCob.Text:='';  End
Else Begin DBLCTipCob.Enabled:=True; End;
end;

procedure TfRepFPago.BitExportaClick(Sender: TObject);
var xSQL:String;
begin
  If chkEfeBan.Checked Then
     Begin

// inicio HPP_201108_COB
       {xSQL:='SELECT DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG, '+
              'SUM(NVL(CREMTOCOB,0)) CREMTOCOB,COUNT(*) CUOTAS FROM (SELECT D.DPTODES,C.UPRONOM,E.USENOM,A.USEID,A.UPAGOID,A.UPROID,B.ASOTIPID,A.ASOAPENOM, '+
              'FORPAGABR,F.CFCDES_F,CREMTOCOB,CREFPAG FROM CRE310 A,APO201 B,APO102 C,APO158 D,APO101 E,CFC000 F '+
              'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND A.ASOID=B.ASOID(+) AND A.UPROID=C.UPROID(+) AND C.DPTOID=D.DPTOID(+) AND A.USEID=E.USEID(+) AND A.UPAGOID=E.UPAGOID(+) AND A.UPROID=E.UPROID(+) '+
              'AND A.ASOID=F.ASOID(+) AND F.PERIODO(+)='+QuotedStr(DM1.UltCalInt)+' AND FORPAGID IN (''02'',''03'')) GROUP BY DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG ORDER BY DPTODES,UPRONOM,USENOM,CREFPAG ';}

      xSql :='SELECT DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG, SUM(NVL(CREMTOCOB,0)) CREMTOCOB,'+
             'CASE WHEN TIPO=''CRE'' THEN COUNT(*) ELSE 0 END CUOTAS '+
             'FROM ( '+
             '(SELECT ''CRE''TIPO ,D.DPTODES,C.UPRONOM,E.USENOM,A.USEID,A.UPAGOID,A.UPROID,B.ASOTIPID,A.ASOAPENOM, FORPAGABR,'+
             '        F.CFCDES_F,CREMTOCOB,CREFPAG '+
             'FROM CRE310 A,APO201 B,APO102 C,APO158 D,APO101 E,CFC000 F '+
             'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecIni.Date))+ ' AND CREESTID NOT IN (''13'',''04'',''99'') AND A.ASOID=B.ASOID(+) AND '+
             '      A.UPROID=C.UPROID(+) AND C.DPTOID=D.DPTOID(+) AND A.USEID=E.USEID(+) AND '+
             '      A.UPAGOID=E.UPAGOID(+) AND A.UPROID=E.UPROID(+) AND A.ASOID=F.ASOID(+) AND '+
             '      F.PERIODO(+)='+QuotedStr(DM1.UltCalInt)+' AND FORPAGID IN (''02'',''03'')) '+
             ' UNION ALL '+
             '(SELECT ''FSC''TIPO,D.DPTODES,C.UPRONOM,E.USENOM,A.USEID,A.UPAGOID,A.UPROID,B.ASOTIPID,A.ASOAPENOM, FORPAGABR,'+
             '        F.CFCDES_F,IMP_COB_DEU CREMTOCOB,FEC_COB_DEU CREFPAG '+
             'FROM COB_FSC_PAGOS_AL_FSC A,APO201 B,APO102 C,APO158 D,APO101 E,CFC000 F '+
             'WHERE FEC_COB_DEU BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND EST_COB_COD NOT IN (''13'',''04'',''99'') AND A.ASOID=B.ASOID(+) AND '+
             '      A.UPROID=C.UPROID(+) AND C.DPTOID=D.DPTOID(+) AND A.USEID=E.USEID(+) AND '+
             '      A.UPAGOID=E.UPAGOID(+) AND A.UPROID=E.UPROID(+) AND A.ASOID=F.ASOID(+) AND '+
             '      F.PERIODO(+)='+QuotedStr(DM1.UltCalInt)+' AND FORPAGID IN (''02'',''03'')) '+
             ') '+
             'GROUP BY TIPO,DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG '+
             'ORDER BY TIPO,DPTODES,UPRONOM,USENOM,CREFPAG ';
// fin HPP_201108_COB

         DM1.cdsQry1.Close; Screen.Cursor:= crHourGlass;
         DM1.cdsQry1.DataRequest(xSQL);
         DM1.cdsQry1.Open;
         If DM1.cdsQry1.RecordCount > 0 Then
            Begin
              Try
                 dtgData.DataSource:=DM1.dsQry1;
                 DM1.HojaExcel('DETALLES_COBRANZA',DM1.dsQry1, dtgData);
              Except
               on Ex: Exception do
                Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
              End;
            End;
            DM1.cdsQry1.Close; Screen.Cursor:= crDefault;
     End
  Else
     Begin

         If Length(Trim(EdtForPago.Text))=0 Then
            Begin
                MessageDlg('DEBE SELECCIONAR UNA FORMA DE PAGO DISPONIBLE', mtError,[mbOk], 0 );
                Exit;
            End;

         xSQL:='SELECT DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG, '+
               'SUM(NVL(CREMTOCOB,0)) CREMTOCOB,COUNT(*) CUOTAS FROM (SELECT D.DPTODES,C.UPRONOM,E.USENOM,A.USEID,A.UPAGOID,A.UPROID,B.ASOTIPID,A.ASOAPENOM, '+
               'FORPAGABR,F.CFCDES_F,CREMTOCOB,CREFPAG FROM CRE310 A,APO201 B,APO102 C,APO158 D,APO101 E,CFC000 F '+
               'WHERE CREFPAG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND A.ASOID=B.ASOID(+) AND A.UPROID=C.UPROID(+) AND C.DPTOID=D.DPTOID(+) AND A.USEID=E.USEID(+) AND A.UPAGOID=E.UPAGOID(+) AND A.UPROID=E.UPROID(+) '+
               'AND A.ASOID=F.ASOID(+) AND F.PERIODO(+)='+QuotedStr(DM1.UltCalInt)+' AND FORPAGID='+QuotedStr(DBLCTipCob.Text)+') GROUP BY DPTODES,UPRONOM,USENOM,ASOTIPID,ASOAPENOM,FORPAGABR,CFCDES_F,CREFPAG ORDER BY DPTODES,UPRONOM,USENOM,CREFPAG ';
         DM1.cdsQry1.Close; Screen.Cursor:= crHourGlass;
         DM1.cdsQry1.DataRequest(xSQL);
         DM1.cdsQry1.Open;
         If DM1.cdsQry1.RecordCount > 0 Then
            Begin
              Try
                 dtgData.DataSource:=DM1.dsQry1;
                 DM1.HojaExcel('DETALLES_COBRANZA',DM1.dsQry1, dtgData);
              Except
               on Ex: Exception do
                Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
              End;
            End;
            DM1.cdsQry1.Close; Screen.Cursor:= crDefault;

     End;


end;

end.


