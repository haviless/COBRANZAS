unit COB930;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, Buttons, ExtCtrls, wwdblook,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TfDetCtaxCob = class(TForm)
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    BitImprime: TBitBtn;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    dblTipCre: TwwDBLookupCombo;
    Panel1: TPanel;
    EdtDesCre: TEdit;
    DbDatTip: TppDBPipeline;
    ppRepTipos: TppReport;
    ppHeaderBand21: TppHeaderBand;
    ppTitulo01: TppLabel;
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
    ppTitulo02: TppLabel;
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
    ppGroupFooterBand32: TppGroupFooterBand;
    ppLabel447: TppLabel;
    ppLine114: TppLine;
    ppLabel450: TppLabel;
    ppDBCalc174: TppDBCalc;
    ppDBCalc176: TppDBCalc;
    ppLabel451: TppLabel;
    BitSalir: TBitBtn;
    procedure dbsMesIniChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblTipCreChange(Sender: TObject);
    procedure BitImprimeClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetCtaxCob: TfDetCtaxCob;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfDetCtaxCob.dbsMesIniChange(Sender: TObject);
begin
lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');
end;

procedure TfDetCtaxCob.FormActivate(Sender: TObject);
begin
  dbsAnoIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)); dbsMesIni.Value:=StrToInt(Copy(DateToStr(DM1.FechaSys),4,2));
  lblNomMes.Caption:=DM1.DesMes(StrToInt(dbsMesIni.Text),'N');
end;

procedure TfDetCtaxCob.dblTipCreChange(Sender: TObject);
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

procedure TfDetCtaxCob.BitImprimeClick(Sender: TObject);
var xSQL,xPeriodo:String;
begin
     If Length(Trim(EdtDesCre.Text))=0 Then
        Begin
           MessageDlg('Debe Seleccionar Un Tipo De Credito', mtError,[mbOk], 0 );
           Exit;
        End;
     Screen.Cursor:= crHourGlass;
     xPeriodo:=Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]));
     xSQL:='SELECT SUBSTR(A.CREDID,1,2) OFDESID,C.OFDESNOM,A.USEID,A.CREFOTORG,A.ASOID,A.ASOCODMOD,A.ASOAPENOM, '+
           'A.CREDID,A.USUARIO,B.CREESTID,B.CREESTADO,B.CRESDOACT, '+
           'SUBSTR(A.CREDID,7,2)||''-''||SUBSTR(A.CREDID,11,5)||''-''||SUBSTR(A.CREDID,3,4) NUMCRE '+
           'FROM SAL000 A ,CRE301 B,APO110 C  '+
           'WHERE PERIODO='+QuotedStr(xPeriodo)+' AND A.ASOID=B.ASOID AND A.CREDID=B.CREDID AND A.TIPCREID='+QuotedStr(Trim(dblTipCre.Text))+' AND '+
           'SUBSTR(A.CREDID,1,2)=C.OFDESID(+) AND TO_CHAR(B.CREFOTORG,''YYYYMM'') '+
           'BETWEEN ''199601'' AND '+QuotedStr(xPeriodo)+' AND B.CREESTID=''02''   '+
           'ORDER BY SUBSTR(A.CREDID,1,2),A.CREFOTORG,A.USEID ';
      DM1.cdsCobxUse.Close;
      DM1.cdsCobxUse.DataRequest(xSQL);
      DM1.cdsCobxUse.Open;
      If DM1.cdsCobxUse.RecordCount > 0 Then
         Begin
            ppTitulo01.Caption:='DETALLES DE CUENTAS POR COBRAR A '+Trim(lblNomMes.Caption)+'-'+Trim(dbsAnoIni.Text)+' SALDOS PENDIENTES';
            ppTitulo02.Caption:='TIPO DE CREDITO : '+Trim(dblTipCre.Text)+'-'+Trim(EdtDesCre.Text);
            ppRepTipos.Print;
            ppRepTipos.Cancel;
         End
      Else
         Begin
            MessageDlg('No Existe Información Para Este Tipo De Credito y Periodo', mtError,[mbOk], 0 );
         End;
         DM1.cdsCobxUse.Close;
         Screen.Cursor:= crDefault;
end;

procedure TfDetCtaxCob.BitSalirClick(Sender: TObject);
begin
   Close; 
end;

end.
