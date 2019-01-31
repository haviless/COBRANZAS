unit COB934;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, wwdblook, Db, ComCtrls, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, DBGrids;

type
  TfDetCtaCob = class(TForm)
    GroupBox1: TGroupBox;
    Label8: TLabel;
    lblTitulo: TLabel;
    dbgDetCtaCob: TwwDBGrid;
    BitResClfCar: TBitBtn;
    BitSalir: TBitBtn;
    EdtBuscar: TEdit;
    BitExporta: TBitBtn;
    dtgData: TDBGrid;
    BitResClfCarRes: TBitBtn;
    ppDBDatCtaDet: TppDBPipeline;
    ppRepCtaDet: TppReport;
    ppHeaderBand26: TppHeaderBand;
    ppLblTitCal: TppLabel;
    ppLabel518: TppLabel;
    ppLabel520: TppLabel;
    ppLabel522: TppLabel;
    ppLabel533: TppLabel;
    ppLabel538: TppLabel;
    ppSystemVariable47: TppSystemVariable;
    ppSystemVariable48: TppSystemVariable;
    ppSystemVariable49: TppSystemVariable;
    ppLabel539: TppLabel;
    ppLabel542: TppLabel;
    ppLabel543: TppLabel;
    pplblCalf: TppLabel;
    ppDetailBand28: TppDetailBand;
    ppDBText228: TppDBText;
    ppDBText233: TppDBText;
    ppDBText234: TppDBText;
    ppDBText235: TppDBText;
    ppDBText236: TppDBText;
    ppDBText237: TppDBText;
    ppFooterBand21: TppFooterBand;
    ppSummaryBand26: TppSummaryBand;
    ppLine139: TppLine;
    ppLabel544: TppLabel;
    ppDBCalc194: TppDBCalc;
    ppDBCalc195: TppDBCalc;
    ppDBCalc196: TppDBCalc;
    ppLabel545: TppLabel;
    ppLine140: TppLine;
    ppDBCalc201: TppDBCalc;
    ppGroup36: TppGroup;
    ppGroupHeaderBand36: TppGroupHeaderBand;
    ppDBText238: TppDBText;
    ppGroupFooterBand36: TppGroupFooterBand;
    ppLine141: TppLine;
    ppLabel546: TppLabel;
    ppDBCalc208: TppDBCalc;
    ppDBCalc209: TppDBCalc;
    ppDBCalc210: TppDBCalc;
    ppLabel547: TppLabel;
    ppLine142: TppLine;
    ppDBCalc211: TppDBCalc;
    ppGroup37: TppGroup;
    ppGroupHeaderBand37: TppGroupHeaderBand;
    ppDBText239: TppDBText;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLabel548: TppLabel;
    ppLabel549: TppLabel;
    ppLabel550: TppLabel;
    ppLabel551: TppLabel;
    ppLabel552: TppLabel;
    ppLabel553: TppLabel;
    ppLabel554: TppLabel;
    ppLabel556: TppLabel;
    ppLabel559: TppLabel;
    ppGroupFooterBand37: TppGroupFooterBand;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLabel557: TppLabel;
    ppDBCalc213: TppDBCalc;
    ppDBCalc214: TppDBCalc;
    ppDBCalc215: TppDBCalc;
    ppLabel558: TppLabel;
    ppDBCalc216: TppDBCalc;
    ppDBDatCtaRes: TppDBPipeline;
    ppDBDatCtaResppField1: TppField;
    ppDBDatCtaResppField2: TppField;
    ppDBDatCtaResppField3: TppField;
    ppDBDatCtaResppField4: TppField;
    ppDBDatCtaResppField5: TppField;
    ppDBDatCtaResppField6: TppField;
    ppDBDatCtaResppField7: TppField;
    ppDBDatCtaResppField8: TppField;
    ppRepCtaRes: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblTitCalX: TppLabel;
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
    pplblCalfX: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc4: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel555: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine5: TppLine;
    ppLabel19: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc193: TppDBCalc;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtBuscarChange(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure BitExportaClick(Sender: TObject);
    procedure BitResClfCarClick(Sender: TObject);
    procedure BitResClfCarResClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetCtaCob: TfDetCtaCob;

implementation

uses COBDM1, COB919;

{$R *.dfm}

procedure TfDetCtaCob.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfDetCtaCob.FormActivate(Sender: TObject);
var xSaldo,xSaldo_V,xSaldo_P:Currency;
begin
xSaldo:=0;xSaldo_V:=0;xSaldo_P:=0;
DM1.cdsCredito.First;
While Not DM1.cdsCredito.Eof Do
Begin
  xSaldo:= xSaldo + DM1.cdsCredito.FieldByName('SALDOS').AsCurrency;
  xSaldo_V:= xSaldo_V + DM1.cdsCredito.FieldByName('SALDOS_V').AsCurrency;
  xSaldo_P:= xSaldo_P + DM1.cdsCredito.FieldByName('SALDOS_P').AsCurrency;
  DM1.cdsCredito.Next;
End;
dbgDetCtaCob.ColumnByName('ASOAPENOM').FooterValue :='Totales';
dbgDetCtaCob.ColumnByName('SALDOS').FooterValue := FloatToStrF(xSaldo,ffNumber, 15, 2);
dbgDetCtaCob.ColumnByName('SALDOS_V').FooterValue := FloatToStrF(xSaldo_V,ffNumber, 15, 2);
dbgDetCtaCob.ColumnByName('SALDOS_P').FooterValue := FloatToStrF(xSaldo_P,ffNumber, 15, 2);
DM1.cdsCredito.First;
End;
procedure TfDetCtaCob.EdtBuscarChange(Sender: TObject);
begin
If Length(Trim(EdtBuscar.Text))>0 Then
  DM1.cdsCredito.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);

end;

procedure TfDetCtaCob.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
    Begin
      If Length(Trim(EdtBuscar.Text))>0 Then
         Begin
           EdtBuscar.Text:='';
           dbgDetCtaCob.SetFocus;
         End
       Else
         Begin
           MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
           EdtBuscar.SetFocus;
         End;
    End;

end;

procedure TfDetCtaCob.BitExportaClick(Sender: TObject);
begin
	Screen.Cursor:= crHourGlass;
	try
  DM1.HojaExcel(Copy(Trim(DM1.cdsMGrupo.FieldByName('TIPCREDES').AsString),1,8)+'-'+DM1.DesMes(StrToInt(fCalfCtaxCob.dbsMesIni.Text),'S')+'-'+Trim(fCalfCtaxCob.dbsAnoIni.Text), DM1.dsCredito, dtgData);
	except
		on Ex: Exception do
			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
	end;
	Screen.Cursor:= crDefault;

end;

procedure TfDetCtaCob.BitResClfCarClick(Sender: TObject);
var xSQL:String;
begin
   Screen.Cursor:= crHourGlass;

   xSQL:='SELECT A.UPROID,A.UPROID||'' - ''||NVL(B.UPRONOM,''NO IDENTIFICADO'') UPRONOM, '+
         'A.UPAGOID,A.USEID,A.USEID||'' - ''||NVL(C.USENOM,''NO IDENTIFICADO'') USENOM, '+
         'A.ASOCODMOD,A.ASOAPENOM,CREFOTORG,NVL(A.SALDOS,0) SALDOS,  '+
         'NVL(A.SALDOS_V,0) SALDOS_V,NVL(A.SALDOS_P,0) SALDOS_P  '+
         'FROM SAL000 A,APO102 B,APO101 C WHERE PERIODO='+QuotedStr(Trim(fCalfCtaxCob.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fCalfCtaxCob.dbsMesIni.Text))])))+' AND TIPCREID='+QuotedStr(DM1.cdsMGrupo.FieldByName('TIPCREID').AsString)+' '+
         'AND A.UPROID=B.UPROID(+) AND A.USEID=C.USEID(+) AND A.UPAGOID=C.UPAGOID(+) '+
         'AND A.UPROID=C.UPROID(+) ORDER BY UPROID,USENOM,CREFOTORG,ASOAPENOM';


   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSQL);
   DM1.cdsUPro.Open;
   Screen.Cursor:= crDefault;
   If DM1.cdsUPro.RecordCount > 0 Then
      Begin
          ppLblTitCal.Caption:='DETALLE DE CUENTAS POR COBRAR  A  : '+Trim(fCalfCtaxCob.lblNomMes.Caption)+' - '+fCalfCtaxCob.dbsAnoIni.Text ;
          pplblCalf.Caption :=DM1.cdsMGrupo.FieldByName('TIPCREID').AsString+' - '+DM1.cdsMGrupo.FieldByName('TIPCREDES').AsString;
          ppRepCtaDet.Print;
          ppRepCtaDet.Cancel;

      End
   Else
      MessageDlg('No Existe Información Para Para Estos Rangos', mtError,[mbOk], 0 );



end;

procedure TfDetCtaCob.BitResClfCarResClick(Sender: TObject);
var xSQL:String;
begin
  xSQL:='SELECT UPROID,UPROID||'' - ''||UPRONOM UPRONOM,USEID,USEID||'' - ''||USENOM USENOM,COUNT(*) MOVIM,SUM(SALDOS) SALDOS, '+
        'SUM(SALDOS_P) SALDOS_P,SUM(SALDOS_V) SALDOS_V    '+
        'FROM (SELECT A.UPROID,NVL(B.UPRONOM,''NO IDENTIFICADO'') UPRONOM, '+
        'A.UPAGOID,A.USEID,NVL(C.USENOM,''NO IDENTIFICADO'') USENOM, '+
        'A.ASOCODMOD,A.ASOAPENOM,CREFOTORG,NVL(A.SALDOS,0) SALDOS, '+
        'NVL(A.SALDOS_V,0) SALDOS_V,NVL(A.SALDOS_P,0) SALDOS_P '+
        'FROM SAL000 A,APO102 B,APO101 C WHERE PERIODO='+QuotedStr(Trim(fCalfCtaxCob.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fCalfCtaxCob.dbsMesIni.Text))])))+' AND TIPCREID='+QuotedStr(DM1.cdsMGrupo.FieldByName('TIPCREID').AsString)+' '+
        'AND A.UPROID=B.UPROID(+) AND A.USEID=C.USEID(+) AND A.UPAGOID=C.UPAGOID(+) '+
        'AND A.UPROID=C.UPROID(+) '+
        'ORDER BY UPROID,USENOM,CREFOTORG,ASOAPENOM) GROUP BY  UPROID,UPROID||'' - ''||UPRONOM,USEID,USEID||'' - ''||USENOM ';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSQL);
   DM1.cdsUPro.Open;
   Screen.Cursor:= crDefault;
   If DM1.cdsUPro.RecordCount > 0 Then
      Begin
          ppLblTitCalX.Caption:='RESUMEN DE CUENTAS POR COBRAR  A  : '+Trim(fCalfCtaxCob.lblNomMes.Caption)+' - '+fCalfCtaxCob.dbsAnoIni.Text ;
          pplblCalfX.Caption :=DM1.cdsMGrupo.FieldByName('TIPCREID').AsString+' - '+DM1.cdsMGrupo.FieldByName('TIPCREDES').AsString;
          ppRepCtaRes.Print;
          ppRepCtaRes.Cancel;

      End
   Else
      MessageDlg('No Existe Información Para Para Estos Rangos', mtError,[mbOk], 0 );

end;

end.
