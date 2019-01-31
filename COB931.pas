unit COB931;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, wwdblook, Mask, wwdbedit, Wwdbspin, Buttons,
  ComCtrls, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TfSaldCredOtro = class(TForm)
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    grpTipPre: TGroupBox;
    dblTipCre: TwwDBLookupCombo;
    Panel1: TPanel;
    EdtDesCre: TEdit;
    chkRef: TCheckBox;
    Label3: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    Label1: TLabel;
    BitPrintRep: TBitBtn;
    BitSalir: TBitBtn;
    GroupBox1: TGroupBox;
    chkResumen: TCheckBox;
    BitImprime: TBitBtn;
    gbOfiDes: TGroupBox;
    DBLkOfiDes: TwwDBLookupCombo;
    Panel2: TPanel;
    EdtOfiDes: TEdit;
    DbDatTip: TppDBPipeline;
    ppRepCronos: TppReport;
    ppHeaderBand22: TppHeaderBand;
    ppLblTitu01: TppLabel;
    ppLabel453: TppLabel;
    ppLabel454: TppLabel;
    ppLabel455: TppLabel;
    ppLabel456: TppLabel;
    ppLabel457: TppLabel;
    ppSystemVariable38: TppSystemVariable;
    ppSystemVariable39: TppSystemVariable;
    ppSystemVariable40: TppSystemVariable;
    ppLabel458: TppLabel;
    ppLabel459: TppLabel;
    ppLabel460: TppLabel;
    ppLabel461: TppLabel;
    ppLabel462: TppLabel;
    ppLabel463: TppLabel;
    ppLabel464: TppLabel;
    ppLabel465: TppLabel;
    ppLabel466: TppLabel;
    ppLabel467: TppLabel;
    ppLabel468: TppLabel;
    ppLabel469: TppLabel;
    ppLabel470: TppLabel;
    ppLabel471: TppLabel;
    ppLabel472: TppLabel;
    ppLine117: TppLine;
    ppLine118: TppLine;
    lblOfiDes: TppLabel;
    ppDetailBand24: TppDetailBand;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppDBText203: TppDBText;
    ppDBText204: TppDBText;
    ppDBText205: TppDBText;
    ppDBText206: TppDBText;
    ppDBText207: TppDBText;
    ppDBText208: TppDBText;
    ppFooterBand17: TppFooterBand;
    ppSummaryBand22: TppSummaryBand;
    ppLine119: TppLine;
    ppLabel473: TppLabel;
    ppLabel474: TppLabel;
    ppDBCalc178: TppDBCalc;
    ppDBCalc179: TppDBCalc;
    ppLabel475: TppLabel;
    ppLine120: TppLine;
    ppRepResumen: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblTitus: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    ppRepTipCre: TppReport;
    ppHeaderBand21: TppHeaderBand;
    ppLblTitulos: TppLabel;
    ppLabel428: TppLabel;
    ppLabel429: TppLabel;
    ppLabel430: TppLabel;
    ppLabel431: TppLabel;
    ppLabel432: TppLabel;
    ppSystemVariable35: TppSystemVariable;
    ppSystemVariable36: TppSystemVariable;
    ppSystemVariable37: TppSystemVariable;
    ppLabel433: TppLabel;
    ppLabel434: TppLabel;
    ppLabel435: TppLabel;
    ppLblSunTit: TppLabel;
    ppDetailBand23: TppDetailBand;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppDBText200: TppDBText;
    ppFooterBand16: TppFooterBand;
    ppSummaryBand21: TppSummaryBand;
    ppLabel448: TppLabel;
    ppLabel449: TppLabel;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppDBCalc175: TppDBCalc;
    ppDBCalc177: TppDBCalc;
    ppLabel452: TppLabel;
    ppGroup32: TppGroup;
    ppGroupHeaderBand32: TppGroupHeaderBand;
    ppDBText192: TppDBText;
    ppLabel425: TppLabel;
    ppLabel426: TppLabel;
    ppLabel437: TppLabel;
    ppLabel438: TppLabel;
    ppLabel439: TppLabel;
    ppLabel440: TppLabel;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppLabel443: TppLabel;
    ppLabel444: TppLabel;
    ppLabel445: TppLabel;
    ppLabel446: TppLabel;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLabel1: TppLabel;
    ppGroupFooterBand32: TppGroupFooterBand;
    ppLabel447: TppLabel;
    ppLine114: TppLine;
    ppLabel450: TppLabel;
    ppDBCalc174: TppDBCalc;
    ppDBCalc176: TppDBCalc;
    ppLabel451: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure dblTipCreChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitPrintRepClick(Sender: TObject);
    procedure BitImprimeClick(Sender: TObject);
    procedure rdgConMorClick(Sender: TObject);
    procedure dbsMesIniChange(Sender: TObject);
    procedure chkResumenClick(Sender: TObject);
    procedure DBLkOfiDesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSaldCredOtro: TfSaldCredOtro;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfSaldCredOtro.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfSaldCredOtro.dblTipCreChange(Sender: TObject);
begin
   If DM1.cdsTipCreA.Locate('TIPCREID',VarArrayof([dblTipCre.Text]),[]) Then
      Begin
        EdtDesCre.Text  := DM1.cdsTipCreA.fieldbyname('TIPCREDES').AsString;
      End
   Else
      Begin
        if Length(dblTipCre.Text) <> 2 then
           Begin
              Beep;
              EdtDesCre.Text  :='';
           End;
      End

end;

procedure TfSaldCredOtro.FormActivate(Sender: TObject);
begin
  dbsAnoIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)); dbsMesIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));
  lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');  DtpFecIni.Date:=DM1.FechaSys;  DtpFecFin.Date:=DM1.FechaSys;
end;

procedure TfSaldCredOtro.BitPrintRepClick(Sender: TObject);
var xSQL,xQry,xTitu:String;
begin
If chkRef.Checked Then
   Begin
      xQry:='AND NUMREF IS NOT NULL ';
   End
Else
   Begin
      xQry:='';
   End;
   If Length(Trim(EdtDesCre.Text))=0 Then
      Begin
         MessageDlg('Debe Seleccionar Un Tipo De Prestamo', mtError,[mbOk], 0 );
         Exit;
      End;
      Screen.Cursor:= crHourGlass;
      xSQL:='SELECT SUBSTR(CREDID,1,2) OFDESID,B.OFDESNOM,USEID,CREFOTORG,ASOID,ASOCODMOD,ASOAPENOM, '+
            'CREDID,CREESTID,CREESTADO,CRESDOACT,A.USUARIO , '+
            'SUBSTR(CREDID,7,2)||''-''||SUBSTR(CREDID,11,5)||''-''||SUBSTR(CREDID,3,4) NUMCRE  '+
            'FROM CRE301 A,APO110 B '+
            'WHERE CREFOTORG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
            'AND SUBSTR(CREDID,1,2)=B.OFDESID(+) AND CREESTID=''02'' '+
            'AND TIPCREID='+QuotedStr(dblTipCre.Text)+xQry+'  ORDER BY SUBSTR(CREDID,1,2),CREFOTORG,USEID ';
       DM1.cdsCredito.Close;
       DM1.cdsCredito.DataRequest(xSQL);
       DM1.cdsCredito.Open;
       If DM1.cdsCredito.RecordCount > 0 Then
          Begin
              If chkRef.Checked Then xTitu:=' *** SOLO REFINANCIADOS *** '  Else  xTitu:='';
              ppLblTitulos.Caption:='CREDITOS OTORGADOS DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date)+' '+xTitu;
              ppLblSunTit.Caption:='TIPO : '+Trim(dblTipCre.Text)+'-'+Trim(EdtDesCre.Text)+' - CON SALDOS PENDIENTES';
              DbDatTip.DataSource:=DM1.dsCredito;
              ppRepTipCre.Print;
              ppRepTipCre.Cancel;
          End
       Else
          Begin
             MessageDlg('No Existe Información Para Ese Rango', mtError,[mbOk], 0 );
          End;
       Screen.Cursor:= crDefault;
       DM1.cdsCredito.Close;

end;

procedure TfSaldCredOtro.BitImprimeClick(Sender: TObject);
var xSQL,xPeriodo:String;
begin
xPeriodo:=Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]));
If chkResumen.Checked Then
   Begin
      Screen.Cursor:= crHourGlass;
      xSQL:='SELECT SUBSTR(CREDID,1,2) OFIDES,B.OFDESNOM,COUNT(*) REGISTROS,SUM(NVL(CRESDOACT,0)) SALDOS FROM CRE301 A,APO110 B '+
            'WHERE SUBSTR(A.CREFFINPAG,1,6)<='+QuotedStr(xPeriodo)+' AND SUBSTR(CREDID,1,2)=B.OFDESID(+) '+
            'AND CREESTID=''02'' '+
            'GROUP BY  SUBSTR(CREDID,1,2),B.OFDESNOM '+
            'ORDER BY SUBSTR(CREDID,1,2) ';
       DM1.cdsCredito.Close;
       DM1.cdsCredito.DataRequest(xSQL);
       DM1.cdsCredito.Open;
       If DM1.cdsCredito.RecordCount > 0 Then
          Begin
            ppLblTitus.Caption:='RESUMEN DE CREDITOS CON CALENDARIO TERMINADO A : '+Trim(lblNomMes.Caption)+'-'+dbsAnoIni.Text;
            DbDatTip.DataSource:=DM1.dsCredito;
            ppRepResumen.Print;
            ppRepResumen.Cancel;
          End
       Else
          Begin
             MessageDlg('No Existe Información Para Ese Rango', mtError,[mbOk], 0 );
          End;

          Screen.Cursor:= crDefault;
          DM1.cdsCredito.Close;

   End
Else
   Begin
           If Length(Trim(EdtOfiDes.Text))=0 Then
              Begin
                  MessageDlg('Debe Seleccionar Un Origen De Otorgamiento', mtError,[mbOk], 0 );
                  Exit;
              End;
           Screen.Cursor:= crHourGlass;
           xSQL:='SELECT SUBSTR(CREDID,1,2) OFDESID,B.OFDESNOM,USEID,CREFOTORG,ASOID,ASOCODMOD,ASOAPENOM, '+
                 'CREDID,SUBSTR(CREFFINPAG,5,2)||''/''||SUBSTR(CREFFINPAG,1,4) MESANO ,CREESTID,CREESTADO,CRESDOACT, '+
                 'SUBSTR(CREDID,7,2)||''-''||SUBSTR(CREDID,11,5)||''-''||SUBSTR(CREDID,3,4) NUMCRE '+
                 'FROM CRE301 A,APO110 B '+
                 'WHERE SUBSTR(CREDID,1,2)='+QuotedStr(DBLkOfiDes.Text)+' AND '+
                 'SUBSTR(A.CREFFINPAG,1,6)<='+QuotedStr(xPeriodo)+' AND SUBSTR(CREDID,1,2)=B.OFDESID(+) AND CREESTID=''02'' '+
                 'ORDER BY SUBSTR(CREDID,1,2),CREFOTORG,USEID ';

           DM1.cdsCredito.Close;
           DM1.cdsCredito.DataRequest(xSQL);
           DM1.cdsCredito.Open;
           If DM1.cdsCredito.RecordCount > 0 Then
              Begin
                  lblOfiDes.Caption:=EdtOfiDes.Text;
                  ppLblTitu01.Caption:='CREDITOS CON CALENDARIO TERMINADO A : '+Trim(lblNomMes.Caption)+'-'+dbsAnoIni.Text;
                  DbDatTip.DataSource:=DM1.dsCredito;
                  ppRepCronos.Print;
                  ppRepCronos.Cancel;
              End
           Else
              Begin
                 MessageDlg('No Existe Información Para Ese Rango', mtError,[mbOk], 0 );
              End;
            Screen.Cursor:= crDefault;
            DM1.cdsCredito.Close;
   End;


end;

procedure TfSaldCredOtro.rdgConMorClick(Sender: TObject);
begin
chkResumen.Visible:=False
end;

procedure TfSaldCredOtro.dbsMesIniChange(Sender: TObject);
begin
lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');
end;

procedure TfSaldCredOtro.chkResumenClick(Sender: TObject);
begin
DBLkOfiDes.Text:='';
If chkResumen.Checked Then
    gbOfiDes.Enabled := False
Else
    gbOfiDes.Enabled := True;
end;

procedure TfSaldCredOtro.DBLkOfiDesChange(Sender: TObject);
begin
   If DM1.cdsOfdes.Locate('OFDESID',VarArrayof([DBLkOfiDes.Text]),[]) Then
      Begin
        EdtOfiDes.Text  := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString ;
      End
   Else
      Begin
        if Length(DBLkOfiDes.Text) <> 2 then
           Begin
              Beep;
              EdtOfiDes.Text  :='';
           End;
      End;

end;

end.
