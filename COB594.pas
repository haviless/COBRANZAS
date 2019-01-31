unit COB594;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB594
// Formulario           : FResCobPlanilla
// Fecha de Creación    : 14/08/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Resumen de Cobranza de Planillas
// Actualizaciones      :
// HPC_201309_COB       : Resumen de Cobranza de Planillas
// SPP_201311_COB       : Se realiza el pase a producción a partir del HPC_201309_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, ExtCtrls,
  StdCtrls, Buttons, wwdblook, db, ppEndUsr, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppCtrls, ppVar,
  ppPrnabl, ppParameter;

type
  TFResCobPlanilla = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnProcesar: TBitBtn;
    rgtipaso: TRadioGroup;
    DtpFecIni: TwwDBDateTimePicker;
    DtpFecFin: TwwDBDateTimePicker;
    dbgPrevio: TwwDBGrid;
    btnaexcel: TBitBtn;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    ppd1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    procedure btnProcesarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
    procedure inicializa;
    procedure MuestraGrid;
  public
    { Public declarations }
  end;

var
  FResCobPlanilla: TFResCobPlanilla;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFResCobPlanilla.btnProcesarClick(Sender: TObject);
var
  xSQL : String;
  xtipaso : String;
begin
  BitPrint.Enabled := False;
  btnaexcel.Enabled := False;
  Screen.Cursor := crHourglass;

  xtipaso := '';
  If rgtipaso.ItemIndex = 0 Then
     xtipaso := ' AND B.ASOTIPID = ''DO'''
  else
     if rgtipaso.ItemIndex = 1 Then
        xtipaso := ' AND B.ASOTIPID = ''CE'''
     else
        If rgtipaso.ItemIndex = 2 Then xtipaso := ' AND B.ASOTIPID = ''CO''';

  xSQL:='SELECT ENVIO, SUM(CREAMORT) CREAMORT, SUM(CREINTERES) CREINTERES, SUM(CREFLAT) CREFLAT, '
       +              'SUM(MONCOBDESGRAV) MONCOBDESGRAV, SUM(CREMTOEXC) CREMTOEXC, SUM(CREMTOCOB) CREMTOCOB '
       +  'FROM ( '
       +    'SELECT A.ASOID, A.RCOBID, A.DETRCOBID, A.CREAMORT, A.CREINTERES, A.CREFLAT, A.MONCOBDESGRAV, A.CREMTOEXC, CREMTOCOB, '
       +       'TO_CHAR(A.FREG,''YYYYMM'') RETORNO, B.UPROID,B.UPAGOID,B.RCOBANO||B.RCOBMES ENVIO '
       +      'FROM CRE310 A, COB302 B '
       +     'WHERE A.RCOBID IS NOT NULL '
       +      ' AND A.FREG>='+ QuotedStr(DateToStr(DtpFecIni.Date))
       +      ' AND A.FREG<='+ QuotedStr(DateToStr(DtpFecFin.Date))
       +      ' AND CREESTID NOT IN(''13'',''04'',''99'') '
       +      ' AND A.RCOBID=B.RCOBID(+) AND A.DETRCOBID=B.DETRCOBID(+) '
       +      xtipaso
       +  ' ) A '
       + 'GROUP BY ENVIO '
       + 'ORDER BY ENVIO';

   DM1.cdsUtilidades.Close;
   DM1.cdsUtilidades.DataRequest( xSQL );
   DM1.cdsUtilidades.Open;

   Screen.Cursor := crDefault;
   dbgPrevio.DataSource := DM1.dsUtilidades;
   If DM1.cdsUtilidades.RecordCount = 0 Then
   Begin
      inicializa;
      MessageDlg(' No Existe Información Para Este Rango ó Esa Forma De Pago ', mtError, [mbOk], 0);
      Exit;
   End;

   MuestraGrid;

   dbgPrevio.ColumnByName('CREAMORT').FooterValue     :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(CREAMORT)',''))), ffNumber, 15, 2);
   dbgPrevio.ColumnByName('CREINTERES').FooterValue   :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(CREINTERES)',''))), ffNumber, 15, 2);
   dbgPrevio.ColumnByName('CREFLAT').FooterValue      :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(CREFLAT)',''))), ffNumber, 15, 2);
   dbgPrevio.ColumnByName('MONCOBDESGRAV').FooterValue:=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(MONCOBDESGRAV)',''))), ffNumber, 15, 2);
   dbgPrevio.ColumnByName('CREMTOEXC').FooterValue    :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(CREMTOEXC)',''))), ffNumber, 15, 2);
   dbgPrevio.ColumnByName('CREMTOCOB').FooterValue    :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(CREMTOCOB)',''))), ffNumber, 15, 2);

   BitPrint.Enabled := True;
   btnaexcel.Enabled := True;
end;


procedure TFResCobPlanilla.MuestraGrid;
begin
   dbgPrevio.Selected.Clear;
   dbgPrevio.Selected.Add('ENVIO'#9'10'#9'Periodo~Envio'#9#9);
   dbgPrevio.Selected.Add('CREAMORT'#9'15'#9'Amortización'#9#9);
   dbgPrevio.Selected.Add('CREINTERES'#9'15'#9'Interes'#9#9);
   dbgPrevio.Selected.Add('CREFLAT'#9'15'#9'Gasto'#9#9);
   dbgPrevio.Selected.Add('MONCOBDESGRAV'#9'15'#9'Fondo~Desgravamen'#9#9);
   dbgPrevio.Selected.Add('CREMTOEXC'#9'15'#9'Exceso'#9#9);
   dbgPrevio.Selected.Add('CREMTOCOB'#9'18'#9'Total~Cobrado'#9#9);
   dbgPrevio.ApplySelected;

   TNumericField(DM1.cdsUtilidades.FieldByName('CREAMORT')).DisplayFormat := '#,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('CREINTERES')).DisplayFormat := '#,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('CREFLAT')).DisplayFormat := '#,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('MONCOBDESGRAV')).DisplayFormat := '#,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('CREMTOEXC')).DisplayFormat := '#,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('CREMTOCOB')).DisplayFormat := '#,##0.00';
end;



procedure TFResCobPlanilla.FormActivate(Sender: TObject);
begin
   DtpFecIni.Date := DM1.FechaSys;
   DtpFecFin.Date := DM1.FechaSys;
   inicializa;
end;

procedure TFResCobPlanilla.inicializa;
Var xSql:String;
begin
  xSQL:='SELECT ENVIO, SUM(CREAMORT) CREAMORT, SUM(CREINTERES) CREINTERES, SUM(CREFLAT) CREFLAT, '
       +              'SUM(MONCOBDESGRAV) MONCOBDESGRAV, SUM(CREMTOEXC) CREMTOEXC, SUM(CREMTOCOB) CREMTOCOB '
       +  'FROM ( '
       +    'SELECT A.ASOID, A.RCOBID, A.DETRCOBID, A.CREAMORT, A.CREINTERES, A.CREFLAT, A.MONCOBDESGRAV, A.CREMTOEXC, CREMTOCOB, '
       +       'TO_CHAR(A.FREG,''YYYYMM'') RETORNO, B.UPROID,B.UPAGOID,B.RCOBANO||B.RCOBMES ENVIO '
       +      'FROM CRE310 A, COB302 B '
       +     'WHERE A.RCOBID IS NOT NULL '
       +      ' AND A.FREG>=''1/1/1'' AND A.FREG<=''1/1/1'' '
       +      ' AND CREESTID NOT IN(''13'',''04'',''99'') '
       +      ' AND A.RCOBID=B.RCOBID(+) AND A.DETRCOBID=B.DETRCOBID(+) '
       +  ' ) A '
       + 'GROUP BY ENVIO '
       + 'ORDER BY ENVIO';

   DM1.cdsUtilidades.Close;
   DM1.cdsUtilidades.DataRequest( xSQL );
   DM1.cdsUtilidades.Open;

   dbgPrevio.DataSource := DM1.dsUtilidades;

   MuestraGrid;

   dbgPrevio.ColumnByName('CREAMORT').FooterValue := FloatToStrF(0.00, ffNumber, 15, 2);
   dbgPrevio.ColumnByName('CREINTERES').FooterValue := FloatToStrF(0.00, ffNumber, 15, 2);
   dbgPrevio.ColumnByName('CREFLAT').FooterValue := FloatToStrF(0.00, ffNumber, 15, 2);
   dbgPrevio.ColumnByName('MONCOBDESGRAV').FooterValue := FloatToStrF(0.00, ffNumber, 15, 2);
   dbgPrevio.ColumnByName('CREMTOEXC').FooterValue := FloatToStrF(0.00, ffNumber, 15, 2);
   dbgPrevio.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(0.00, ffNumber, 15, 2);
end;


procedure TFResCobPlanilla.btnaexcelClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin

  Try
    Dm1.cdsUtilidades.First;
  EXCEPT
    ShowMessage('No existe información para esta opción');
    Exit;
  END;

   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='RES_COB_PLA_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   xArchivo:=xArchivo;

   if FileExists(xArchivo+'.slk') then
      DeleteFile(xArchivo+'.slk');

   DM1.ExportaGridExcel(dbgPrevio,xArchivo);

end;

procedure TFResCobPlanilla.BitPrintClick(Sender: TObject);
begin
  Try
    Dm1.cdsUtilidades.First;
  EXCEPT
    ShowMessage('No existe información para esta opción');
    Exit;
  END;

  ppdb1.DataSource:=DM1.dsUtilidades;
  ppr1.DataPipeline:=ppdb1;
  ppd1.Report := ppr1;
  ppr1.Print;
  //ppd1.ShowModal;
end;

procedure TFResCobPlanilla.BitSalirClick(Sender: TObject);
begin
   DM1.cdsUtilidades.Close;
   Close;
end;

end.
