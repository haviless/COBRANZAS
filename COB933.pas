unit COB933;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, wwdblook, Db, ComCtrls, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, DBGrids;
type
  TfDetClfcar = class(TForm)
    GroupBox1: TGroupBox;
    dbgDetClfCar: TwwDBGrid;
    BitResClfCarDet: TBitBtn;
    BitSalir: TBitBtn;
    EdtBuscar: TEdit;
    Label8: TLabel;
    lblTitulo: TLabel;
    BitExporta: TBitBtn;
    dtgData: TDBGrid;
    ppDBDatClfDet: TppDBPipeline;
    ppRepClfDet: TppReport;
    ppHeaderBand25: TppHeaderBand;
    ppLblTitCal: TppLabel;
    ppLabel524: TppLabel;
    ppLabel525: TppLabel;
    ppLabel526: TppLabel;
    ppLabel527: TppLabel;
    ppLabel528: TppLabel;
    ppSystemVariable44: TppSystemVariable;
    ppSystemVariable45: TppSystemVariable;
    ppSystemVariable46: TppSystemVariable;
    ppLabel529: TppLabel;
    ppLabel530: TppLabel;
    ppLabel531: TppLabel;
    ppDetailBand27: TppDetailBand;
    ppDBText227: TppDBText;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    ppDBText231: TppDBText;
    ppDBText232: TppDBText;
    ppFooterBand20: TppFooterBand;
    ppSummaryBand25: TppSummaryBand;
    ppLine137: TppLine;
    ppLabel521: TppLabel;
    ppDBCalc202: TppDBCalc;
    ppDBCalc203: TppDBCalc;
    ppDBCalc204: TppDBCalc;
    ppDBCalc205: TppDBCalc;
    ppLabel522: TppLabel;
    ppLine138: TppLine;
    ppDBCalc206: TppDBCalc;
    ppGroup35: TppGroup;
    ppGroupHeaderBand35: TppGroupHeaderBand;
    ppDBText225: TppDBText;
    ppGroupFooterBand35: TppGroupFooterBand;
    ppLine135: TppLine;
    ppLabel519: TppLabel;
    ppDBCalc197: TppDBCalc;
    ppDBCalc198: TppDBCalc;
    ppDBCalc199: TppDBCalc;
    ppDBCalc200: TppDBCalc;
    ppLabel520: TppLabel;
    ppLine136: TppLine;
    ppDBCalc201: TppDBCalc;
    ppGroup36: TppGroup;
    ppGroupHeaderBand36: TppGroupHeaderBand;
    ppDBText226: TppDBText;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLabel539: TppLabel;
    ppLabel533: TppLabel;
    ppLabel532: TppLabel;
    ppLabel534: TppLabel;
    ppLabel535: TppLabel;
    ppLabel536: TppLabel;
    ppLabel537: TppLabel;
    ppLabel540: TppLabel;
    ppLabel541: TppLabel;
    ppGroupFooterBand36: TppGroupFooterBand;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLabel517: TppLabel;
    ppDBCalc192: TppDBCalc;
    ppDBCalc193: TppDBCalc;
    ppDBCalc194: TppDBCalc;
    ppDBCalc195: TppDBCalc;
    ppLabel518: TppLabel;
    ppDBCalc196: TppDBCalc;
    BitResClfCarRes: TBitBtn;
    ppDBDatClfERes: TppDBPipeline;
    ppRepClfRes: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblTitCalX: TppLabel;
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
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc5: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText7: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    pplblCalf: TppLabel;
    pplblCalifX: TppLabel;
    ppLine7: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBuscarChange(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
    procedure BitResClfCarDetClick(Sender: TObject);
    procedure BitResClfCarResClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetClfcar: TfDetClfcar;

implementation

uses COBDM1, COB919;

{$R *.dfm}

procedure TfDetClfcar.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfDetClfcar.FormActivate(Sender: TObject);
var xSaldo_Ft,xCtaInd_F,xSaldo_Cb,xSaldo_Nc:Currency;
begin
xSaldo_Ft:=0;xCtaInd_F:=0;xSaldo_Cb:=0;xSaldo_Nc:=0;
DM1.cdsCredito.First;
While Not DM1.cdsCredito.Eof Do
Begin
  xSaldo_Ft:= xSaldo_Ft + DM1.cdsCredito.FieldByName('SALDOS_FT').AsCurrency;
  xCtaInd_F:= xCtaInd_F + DM1.cdsCredito.FieldByName('CTAIND_F').AsCurrency;
  xSaldo_Cb:= xSaldo_Cb + DM1.cdsCredito.FieldByName('SALDO_CB').AsCurrency;
  xSaldo_Nc:= xSaldo_Nc + DM1.cdsCredito.FieldByName('SALDO_NC').AsCurrency;
  DM1.cdsCredito.Next;
End;
dbgDetClfCar.ColumnByName('ASOAPENOM').FooterValue :='Totales';
dbgDetClfCar.ColumnByName('SALDOS_FT').FooterValue := FloatToStrF(xSaldo_Ft,ffNumber, 15, 2);
dbgDetClfCar.ColumnByName('CTAIND_F').FooterValue := FloatToStrF(xCtaInd_F,ffNumber, 15, 2);
dbgDetClfCar.ColumnByName('SALDO_CB').FooterValue := FloatToStrF(xSaldo_Cb,ffNumber, 15, 2);
dbgDetClfCar.ColumnByName('SALDO_NC').FooterValue := FloatToStrF(xSaldo_Nc,ffNumber, 15, 2);
DM1.cdsCredito.First;
end;

procedure TfDetClfcar.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
    Begin
      If Length(Trim(EdtBuscar.Text))>0 Then
         Begin
           EdtBuscar.Text:='';
           dbgDetClfCar.SetFocus;
         End
       Else
         Begin
           MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
           EdtBuscar.SetFocus;
         End;
    End;

end;

procedure TfDetClfcar.EdtBuscarChange(Sender: TObject);

begin
If Length(Trim(EdtBuscar.Text))>0 Then
  DM1.cdsCredito.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);

end;

procedure TfDetClfcar.BitExportaClick(Sender: TObject);
Var titulo :String;
begin
	Screen.Cursor:= crHourGlass;
	try
 Titulo := Copy(Trim(DM1.cdsModelo.FieldByName('RESUMEDES').AsString),1,8)+'-'+DM1.DesMes(StrToInt(fCalfCtaxCob.dbsMesIni.Text),'S')+'-'+Trim(fCalfCtaxCob.dbsAnoIni.Text);
  DM1.HojaExcel(Titulo,DM1.dsCredito, dtgData);
	except
		on Ex: Exception do
			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	end;
	Screen.Cursor:= crDefault;

end;

procedure TfDetClfcar.BitResClfCarDetClick(Sender: TObject);
var xSQL:String;
begin
   Screen.Cursor:= crHourGlass;
   xSQL:='SELECT A.UPROID,A.UPROID||'' - ''||NVL(B.UPRONOM,''NO IDENTIFICADO'') UPRONOM, '+
         'A.UPAGOID,A.USEID,A.USEID||'' - ''||NVL(C.USENOM,''NO IDENTIFICADO'') USENOM, '+
         'A.ASOCODMOD,A.ASOAPENOM,NVL(A.SALDOS_FT,0) SALDOS_FT, '+
         'NVL(A.CTAIND_F,0) CTAIND_F,NVL(A.SALDO_CB,0) SALDO_CB,NVL(A.SALDO_NC,0) SALDO_NC '+
         'FROM CFC000 A,APO102 B,APO101 C WHERE PERIODO='+QuotedStr(Trim(fCalfCtaxCob.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fCalfCtaxCob.dbsMesIni.Text))])))+' AND CFC_F='+QuotedStr(DM1.cdsModelo.FieldByName('RESUMEID').AsString)+' '+
         'AND A.UPROID=B.UPROID(+) AND A.USEID=C.USEID(+) AND A.UPAGOID=C.UPAGOID(+) '+
         'AND A.UPROID=C.UPROID(+) ORDER BY UPROID,USENOM,ASOAPENOM';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSQL);
   DM1.cdsUPro.Open;
   Screen.Cursor:= crDefault;
   If DM1.cdsUPro.RecordCount > 0 Then
      Begin
          ppLblTitCal.Caption:='DETALLE DE CALIFICACION DE DEUDORES Y EXIGENCIA DE PROVISIONES  A  : '+Trim(fCalfCtaxCob.lblNomMes.Caption)+' - '+fCalfCtaxCob.dbsAnoIni.Text ;
          pplblCalf.Caption :=DM1.cdsModelo.FieldByName('RESUMEDES').AsString;
          ppRepClfDet.Print;
          ppRepClfDet.Cancel;

      End
   Else
      MessageDlg('No Existe Información Para Para Estos Rangos', mtError,[mbOk], 0 );



end;

procedure TfDetClfcar.BitResClfCarResClick(Sender: TObject);
var xSQL:String;
begin
   Screen.Cursor:= crHourGlass;
   xSQL:='SELECT UPROID,UPROID||'' - ''||UPRONOM UPRONOM,USEID,USEID||'' - ''||USENOM USENOM,COUNT(*) MOVIM,SUM(SALDOS_FT) SALDOS_FT,SUM(CTAIND_F) CTAIND_F,SUM(SALDO_NC) SALDO_NC,SUM(SALDO_CB) SALDO_CB '+
         'FROM (SELECT A.UPROID,NVL(B.UPRONOM,''NO IDENTIFICADO'') UPRONOM, '+
         'A.UPAGOID,A.USEID,NVL(C.USENOM,''NO IDENTIFICADO'') USENOM, '+
         'A.ASOCODMOD,A.ASOAPENOM,NVL(A.SALDOS_FT,0) SALDOS_FT, '+
         'NVL(A.CTAIND_F,0) CTAIND_F,NVL(A.SALDO_CB,0) SALDO_CB,NVL(A.SALDO_NC,0) SALDO_NC '+
         'FROM CFC000 A,APO102 B,APO101 C WHERE PERIODO='+QuotedStr(Trim(fCalfCtaxCob.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fCalfCtaxCob.dbsMesIni.Text))])))+' AND CFC_F='+QuotedStr(DM1.cdsModelo.FieldByName('RESUMEID').AsString)+' '+
         'AND A.UPROID=B.UPROID(+) AND A.USEID=C.USEID(+) AND A.UPAGOID=C.UPAGOID(+) '+
         'AND A.UPROID=C.UPROID(+) ORDER BY UPROID,USENOM,ASOAPENOM) GROUP BY UPROID,UPRONOM,USEID,USENOM';

   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSQL);
   DM1.cdsUPro.Open;
   Screen.Cursor:= crDefault;
   If DM1.cdsUPro.RecordCount > 0 Then
      Begin
          ppLblTitCalX.Caption:='RESUMEN DE CALIFICACION DE DEUDORES Y EXIGENCIA DE PROVISIONES  A  : '+Trim(fCalfCtaxCob.lblNomMes.Caption)+' - '+fCalfCtaxCob.dbsAnoIni.Text ;
          pplblCalifX.Caption :=DM1.cdsModelo.FieldByName('RESUMEDES').AsString;
          ppRepClfRes.Print;
          ppRepClfRes.Cancel;

      End
   Else
      MessageDlg('No Existe Información Para Para Estos Rangos', mtError,[mbOk], 0 );



end;

end.
