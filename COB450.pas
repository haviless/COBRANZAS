//Inicio de Estándares 01/08/2011
//Unidad             : COB450
//Formulario         : FContabilizacionDev
//Fecha de Creación  :
//Autor              : SACSA
//Objetivo           : Contabilizacion de Devoluciones

//Actualizaciones    :
//HPP_201007_COB     : Se us rbuilder.ini para direcionar los temporales de reportes
//HPP_201115_COB     : Contabilización de devoluciones de excesos al FSC
//HPP_201116_COB     : Se corrige una estructura de un If Else.
//HPC_201129_COB     : 04/11/2011 Se corrige: en la contabiliazcion de devoluciones no debe tomar las devoluciones de excesos al FSC
//HPP_201130_COB     : Este pase se realiza de acuerdo al pase HPC_201129_COB
//HPC_201201_COB     : 05/01/2012 Se adiciona la contabiliazción de pago de cuotas con la dinamica contable proporcionada por contabilidad (Amortizacion,Interes,Flat)
//DPP_201201_COB     : Se realiza el pase a producción a partir del pase HPC_201201_COB
//HPC_201211_COB     : 17/05/2012  - RMZ Se saca la actualizaciÓn de la Fecha de Documento se estaba actualizando erroneamente por fecha de registro
//DPP_201208_COB     : Se realiza el pase a producción a partir del HPC_201211_COB
//HPC_201219_COB     : 04/09/2012 Fondo de Protección de Desgravamen FPD
//DPP_201214_COB     : Pase a producción de cobranzas a partir del pase HPC_201219_A
//HPC_201304_COB     : En Devoluciones DEVO al contabilizar genera comprobantes con RF
//SPP_201304_COB     : Se realiza el pase a producción a partir del HPC_201304_COB
//HPC_201311_COB     : 06/11/2013 - Contabilización para los casos de Devoluciones con cronogramas con saldo cero
//SPP_201313_COB     : Se realiza el pase a producción a partir de lo indicado en el documento HPC_201311_COB.
//HPC_201607_COB     : Cambiar Cuenta contable de Excesos
//HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
//HPC_201724_COB     : Modificar Filtro de Contabilidad
//HPC_201730_COB     : ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
//COB_201822_HPC     : Se añade contabilización de devoluciones

unit COB450;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Wwdbspin, wwdbdatetimepicker, StdCtrls,
  ComCtrls, wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Buttons, DB,
  Wwdbigrd, Grids, Wwdbgrid, ppBands, ppClass, ppProd, ppReport, ppEndUsr,
  ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppVar,
// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
  ppParameter, DBGrids;
// Final HPC_201730_COB

type
  TFContabilizacionDev = class(TForm)
    pnlCabecera: TPanel;
    fcShapeBtn1: TfcShapeBtn;
    prbAvance: TProgressBar;
    Panel1: TPanel;
    dblcTipo: TwwDBLookupCombo;
    dbeTipo: TwwDBEdit;
    GroupBox1: TGroupBox;
    dtpFComp: TwwDBDateTimePicker;
    dbgConta: TwwDBGrid;
    wwIButton2: TwwIButton;
    dtpFecIni: TwwDBDateTimePicker;
    dtpFecFin: TwwDBDateTimePicker;
    fcShapeBtn3: TfcShapeBtn;
    fcShapeBtn4: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn6: TfcShapeBtn;
    dbeComprob: TwwDBEdit;
    fcShpDevoTrans: TfcShapeBtn;
    ppd1: TppDesigner;
    ppr1: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppDBText99: TppDBText;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppLine81: TppLine;
    ppDBCalc89: TppDBCalc;
    ppDBCalc90: TppDBCalc;
    ppLabel72: TppLabel;
    ppDBText112: TppDBText;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppGroupFooterBand14: TppGroupFooterBand;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppLine82: TppLine;
    ppDBCalc91: TppDBCalc;
    ppDBCalc92: TppDBCalc;
    ppLabel73: TppLabel;
    ppParameterList3: TppParameterList;
    ppdb1: TppDBPipeline;
    fcShapeBtn5: TfcShapeBtn;
    GroupBox2: TGroupBox;
    dbseMes: TwwDBSpinEdit;
    dbseAno: TwwDBSpinEdit;
    fcShapeBtn7: TfcShapeBtn;
    Label5: TLabel;
    fcShapeBtn12: TfcShapeBtn;
    fcShapeBtn13: TfcShapeBtn;
    fcShapeBtn14: TfcShapeBtn;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine3: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBText17: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine4: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel13: TppLabel;
    ppParameterList2: TppParameterList;
    ppr2: TppReport;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgDevExcFSC: TwwDBGrid;
    Label2: TLabel;
    fcShapeBtn10: TfcShapeBtn;
    fcShapeBtn8: TfcShapeBtn;
    RprtDevExcFSC: TppReport;
    dbpplExceFSC: TppDBPipeline;
    ppParameterList1: TppParameterList;
    fcShapeBtn9: TfcShapeBtn;
    ppHeaderBand13: TppHeaderBand;
    ppShape33: TppShape;
    ppLabel166: TppLabel;
    ppSystemVariable27: TppSystemVariable;
    ppSystemVariable28: TppSystemVariable;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppltitulo: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel183: TppLabel;
    ppLabel170: TppLabel;
    ppltitulo2: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppShape37: TppShape;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText178: TppDBText;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine115: TppLine;
    ppLine120: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand11: TppSummaryBand;
    ppShape34: TppShape;
    ppLabel171: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppGroup26: TppGroup;
    ppGroupHeaderBand26: TppGroupHeaderBand;
    ppLabel172: TppLabel;
    ppDBText182: TppDBText;
    ppShape35: TppShape;
    pplSubtituloSustFSC: TppLabel;
    ppDBText5: TppDBText;
    ppGroupFooterBand26: TppGroupFooterBand;
    ppShape36: TppShape;
    ppLabel173: TppLabel;
    ppDBText183: TppDBText;
    ppDBCalc1: TppDBCalc;
    fcShapeBtn11: TfcShapeBtn;
    ppD2: TppDesigner;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
    btnExcelDev: TfcShapeBtn;
    dbgExcel: TwwDBGrid;
    btnExcelDevCuo: TfcShapeBtn;
// Final HPC_201730_COB
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure dbgContaDblClick(Sender: TObject);
    procedure fcShpDevoTransClick(Sender: TObject);
    procedure fcShapeBtn4Click(Sender: TObject);
    procedure fcShapeBtn6Click(Sender: TObject);
    procedure dtpFCompExit(Sender: TObject);
    procedure dtpFecFinChange(Sender: TObject);
    procedure dtpFecFinExit(Sender: TObject);
    procedure fcShapeBtn5Click(Sender: TObject);
    procedure PasaDatosFecha;
    procedure fcShapeBtn7Click(Sender: TObject);
    procedure dbseMesExit(Sender: TObject);
    procedure dbseAnoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fcShapeBtn10Click(Sender: TObject);
    procedure fcShapeBtn9Click(Sender: TObject);
    procedure fcShapeBtn8Click(Sender: TObject);
    procedure fcShapeBtn11Click(Sender: TObject);
    procedure fcShapeBtn12Click(Sender: TObject);
    procedure fcShapeBtn13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
    procedure btnExcelDevClick(Sender: TObject);
    procedure btnExcelDevCuoClick(Sender: TObject);
// Final HPC_201730_COB
  private
    { Private declarations }
    xCNT300 : String;
    xCNT311 : String;
    xAgrupa : String;
    xFechas : String;
    xPeriodo: String;
    xPerRep : String;
    cLink   : String;
    procedure GeneraData;
    procedure GeneraDataAsiento2;
    procedure GeneraCNT300;
//Inicio HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
    procedure GeneraCNT300_P;
//Fin  HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
    procedure GeneraCNT3002;
    procedure CuadrarAsiento;
    procedure ReporteContabilizaExcFSC( cTabla,xPeriodo : String );
    procedure TransferirContDevExcFSC(cLote,cOrigen,xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r: String);
  public

    { Public declarations }
  end;

var
  FContabilizacionDev: TFContabilizacionDev;
  xCNT300,xCNT311,xCnt300r,xCnt311r : String;
implementation

{$R *.DFM}

USES COBDM1, COB409;

procedure TFContabilizacionDev.fcShapeBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFContabilizacionDev.fcShapeBtn1Click(Sender: TObject);
var
   xSQL : String;
   cont : integer;
begin
// sql PARA GENERAR CONTABILIZACION

//Inicio HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
   xSQL:='SELECT A.ASOFECDEV CREFOTORG, ''DEVOLUCIONES'' NROFICIO, ''VARIOS'' TIPDESEID, '
        +  'SUM(A.ASOMONDEV) MONTO_OTO, SUM(A.ASOMONDEV) MONTO_GIR, COUNT( * ), ''          '' COMPROBANTE, '
        +  '''          '' COMPROBANTE2 '
        +'FROM MDEVCAB'+cLink+' A '
        +'WHERE ASOFECDEV>='+quotedstr(formatdatetime(wFormatFecha,dtpFecIni.Date))
        + ' AND ASOFECDEV<='+quotedstr(formatdatetime(wFormatFecha,dtpFecFin.Date))
     // + ' AND ( A.TIPDESEID IN (''04'') OR (A.TIPDESEID IN (''05'',''06'') AND A.DOCOFI IS NOT NULL) ) '
        + ' AND FLGFSC IS NULL '
        + ' AND CREESTID NOT IN (''13'') '
        +'GROUP BY A.ASOFECDEV '
        +'ORDER BY A.ASOFECDEV ';
//Fin  HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones

   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest( xSQL );
   DM1.cdsQry5.Open;

   TNumericField(DM1.cdsQry5.FieldByName('MONTO_OTO')).DisplayFormat:='###,###,##0.00';
   TNumericField(DM1.cdsQry5.FieldByName('MONTO_GIR')).DisplayFormat:='###,###,##0.00';

   dbgConta.DataSource:=DM1.dsQry5;

   dbgConta.ColumnByName('MONTO_OTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsQry5, 'SUM(MONTO_OTO)',''),ffCurrency, 10, 2);
   dbgConta.ColumnByName('MONTO_GIR').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsQry5, 'SUM(MONTO_GIR)',''),ffCurrency, 10, 2);

   DM1.cdsQry5.First;
   cont:=1;
   while not DM1.cdsQry5.Eof do
   begin
      DM1.cdsQry5.Edit;
      DM1.cdsQry5.FieldByName('COMPROBANTE').AsString:= DM1.StrZero(inttostr(cont),10);
      //xNoComp:=DM1.cdsQry5.FieldByName('COMPROBANTE').AsString;
      DM1.cdsQry5.Next;
      cont:=cont+1;
   end;
   DM1.cdsQry5.First;

//Inicio HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
   // Comprobante de Provisión
   while not DM1.cdsQry5.Eof do
   begin
      DM1.cdsQry5.Edit;
      DM1.cdsQry5.FieldByName('COMPROBANTE2').AsString:= DM1.StrZero(inttostr(cont),10);
      DM1.cdsQry5.Next;
      cont:=cont+1;
   end;
   DM1.cdsQry5.First;
//Fin  HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
   ShowMessage( ' ok ' );

end;

procedure TFContabilizacionDev.fcShapeBtn3Click(Sender: TObject);
var
   xSQL, xNoComp : String;
begin
   // Buscar el Ultimo Comprobante del Diario seleccionado

   xSQL:='Select MAX(CNTCOMPROB) CNTCOMPROB FROM '+xCNT300+' '
        +'Where CIAID=''02'' AND TDIARID=''30'' '
        +  'AND CNTANOMM='''+xPeriodo+''''
        +'GROUP BY CIAID, TDIARID, CNTANOMM';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;

   xNoComp:=DM1.cdsQry.FieldByName('CNTCOMPROB').AsString;

   if dbeComprob.Text<>'' then
   begin
      xNoComp:=DM1.StrZero( IntToStr(StrToInt(dbeComprob.Text)-1),10);
   end;

   if xNoComp='' then
      xNoComp:='0';

   DM1.cdsQry5.First;
   while not DM1.cdsQry5.Eof do
   begin
      DM1.cdsQry5.Edit;
      DM1.cdsQry5.FieldByName('COMPROBANTE').AsString:= DM1.StrZero( IntToStr(StrToInt(xNoComp)+1),10);
      xNoComp:=DM1.cdsQry5.FieldByName('COMPROBANTE').AsString;
      DM1.cdsQry5.Next;
   end;
   DM1.cdsQry5.First;
   ShowMessage( ' ok ' );
end;

procedure TFContabilizacionDev.dbgContaDblClick(Sender: TObject);
begin

   xAgrupa:='N';

   GeneraData;

//   dbgAsiento.DataSource:=DM1.dsQry6;

//   pnlAsiento.visible:=True;

end;

procedure TFContabilizacionDev.fcShpDevoTransClick(Sender: TObject);
begin
   FContabilizacion := TFContabilizacion.Create(self);
   FContabilizacion.dbseAno.Value:=dbseAno.Value;
   FContabilizacion.dbseMes.Value:=dbseMes.Value;
   FContabilizacion.DatosFecha;
   // Inicio: SPP_201304_COB   : En Devoluciones DEVO al contabilizar genera comprobantes con RF
   wTipoCont2:= 'DEVO';
   wTipoCont := 'DEVO';
   // Fin: SPP_201304_COB      : En Devoluciones DEVO al contabilizar genera comprobantes con RF
   FCONTABILIZACION.TransferirContabilidad( 'DEVO', '32',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);

//Inicio HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
   wTipoCont2:= 'DECC';
   wTipoCont := 'DECC';
   FCONTABILIZACION.TransferirContabilidad( 'DECC', '32',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);
//Fin  HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
   FCONTABILIZACION.Free;
end;

procedure TFContabilizacionDev.fcShapeBtn4Click(Sender: TObject);
var
//Inicio: DPP_201214_COB
   xWhere, xSQL, xSQL1, xSQL2, xTipodesem : String;
//Fin: DPP_201214_COB
   xTCambio, xTotHaber : Double;
   xNReg : Integer;
begin

   if MessageDlg('Esta Seguro(a) de Contabilizar ',mtconfirmation,[mbYes,MbNo],0)=mrNo then Exit;

   DM1.cdsQry6.IndexFieldNames:='';

   DM1.cdsQry5.First;

   if DM1.cdsQry5.FieldByName('COMPROBANTE').AsString='' then
   begin
      ShowMessage('Falta Generar Comprobante');
      Exit;
   end;

   Screen.Cursor:=crHourGlass;

   xWhere := 'Select TCAMVBV FROM TGE107 '
           + 'WHERE FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha,dtpFComp.date)+''''+')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xWhere );
   DM1.cdsQry.Open;

   xTCambio:=DM1.cdsQry.FieldByName('TCAMVBV').AsFloat;
   if xTCambio<=0 then xTCambio:=3.5;

   xWhere := 'FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha,dtpFComp.date)+''''+')';
   DM1.DisplayDescrip('PrvTGE','TGE114','*',xWhere,'FECANO');

   xSQL:='delete from '+xCNT300+' '
        +'where CNTLOTE=''DEVO'' and CNTANOMM='''+xPeriodo+'''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except
   end;

   xSQL:='delete from '+xCNT311+' '
        +'where CNTLOTE=''DEVO'' and CNTANOMM='''+xPeriodo+'''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except
   end;

   DM1.cdsQry5.First;
   while not DM1.cdsQry5.Eof do
   begin
      xSQL:='Select * from '+xCNT311+' '
           +'WHERE CIAID=''02'' AND TDIARID=''32'' AND CNTANOMM='''+xPeriodo+''' '
           +  'AND CNTCOMPROB='''+DM1.cdsQry5.FieldByname('COMPROBANTE').AsString+'''';
      DM1.cdsMovCnt1.Close;
      DM1.cdsMovCnt1.DataRequest( xSQL );
      DM1.cdsMovCnt1.Open;

      xAgrupa:='S';

//Inicio HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
//Inicio: DPP_201214_COB
// Fondo de Protección de Desgravamen FPD
      xSQL :='SELECT A.* FROM ( '
            +'SELECT * FROM ( '
// INICIO HPC_201607_COB     : Cambiar Cuenta contable de Excesos
            +'SELECT  nvl(C.CUEEXC,''4692202'') CUENTAID,'
            +        'NULL CCOSID, NVL(A.DOCOFI, ''EFECTIVO'' ) CNTNODOC, A.ASOFECDEV,'
            +        'A.ASOAPENOM, A.TIPDESEID,'
            +        'SUM(NVL(B.CREDEVEXC,0)) DEBE, 0.00 HABER,  B.CREDID, A.ASOID, A.ASONUMDEV '
            + 'FROM MDEVCAB A, MDEVDET B, CRE110 C, APO101 E '
            + 'WHERE A.ASOFECDEV >='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            + ' AND A.ASOFECDEV <= '+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            + ' AND A.FLGFSC IS NULL '
            + ' AND A.CREESTID NOT IN (''13'') '
            + ' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+''' '
            + ' AND SUBSTR(B.CREDID,7,2)=C.TIPCREID(+) '
            + ' AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '
            + ' AND NVL(B.CREDEVEXC,0)>0 '
            + ' GROUP BY C.CUEEXC, A.DOCOFI, A.ASOFECDEV, A.ASOAPENOM, A.TIPDESEID, B.CREDID, A.ASOID, A.ASONUMDEV '
            + ' ORDER BY A.ASONUMDEV ) '
// FIN  HPC_201607_COB     : Cambiar Cuenta contable de Excesos
            + ' UNION ALL '
            + ' SELECT * FROM ( '
            + ' SELECT C.CUENTAID,'
            + '        NULL CCOSID, NVL(A.DOCOFI,''EFECTIVO'') CNTNODOC, A.ASOFECDEV,'
            + '        A.ASOAPENOM, A.TIPDESEID,'
            + '        SUM(NVL(B.CREAMORT,0)) DEBE, 0.00 HABER,  B.CREDID, A.ASOID, A.ASONUMDEV '
            + ' FROM MDEVCAB A, MDEVDET B, CRE110 C, APO101 E '
            + ' WHERE A.ASOFECDEV >='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            + ' AND A.ASOFECDEV <='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            + ' AND A.FLGFSC IS NULL '
            + ' AND A.CREESTID NOT IN (''13'') '
            + ' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+''' '
            + ' AND SUBSTR(B.CREDID,7,2)=C.TIPCREID(+) '
            + ' AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '
            + ' AND NVL(B.CREAMORT,0)>0 '
            + ' GROUP BY C.CUENTAID, A.DOCOFI, A.ASOFECDEV, A.ASOAPENOM, A.TIPDESEID, B.CREDID, A.ASOID, A.ASONUMDEV '
            + ' ORDER BY A.ASONUMDEV ) '
            + 'UNION ALL '
            + 'SELECT * FROM ( '
            + ' SELECT C.CTAINT CUENTAID,'
            + '      NULL CCOSID, NVL(A.DOCOFI, ''EFECTIVO'' ) CNTNODOC, A.ASOFECDEV,'
            + '       A.ASOAPENOM, A.TIPDESEID,'
            + '       SUM(NVL(B.CREINTERES,0)) DEBE, 0.00 HABER,  B.CREDID, A.ASOID, A.ASONUMDEV '
            + ' FROM MDEVCAB A, MDEVDET B, CRE110 C, APO101 E '
            + 'WHERE A.ASOFECDEV >='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            + ' AND A.ASOFECDEV  <='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            + ' AND A.FLGFSC IS NULL '
            + ' AND A.CREESTID NOT IN (''13'') '
            + ' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+'''  '
            + ' AND SUBSTR(B.CREDID,7,2)=C.TIPCREID(+) '
            + ' AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '
            + ' AND NVL(B.CREINTERES,0)>0 '
            + 'GROUP BY C.CTAINT, A.DOCOFI, A.ASOFECDEV, A.ASOAPENOM, A.TIPDESEID, B.CREDID, A.ASOID, A.ASONUMDEV '
            + 'ORDER BY A.ASONUMDEV ) '

            + 'UNION ALL '
            + 'SELECT * FROM ('
            + 'SELECT C.CTAFLAT CUENTAID,'
            + '      NULL CCOSID, NVL(A.DOCOFI, ''EFECTIVO'' ) CNTNODOC, A.ASOFECDEV,'
            + '      A.ASOAPENOM, A.TIPDESEID,'
            + '      SUM(NVL(B.CREFLAT,0)) DEBE, 0.00 HABER,  B.CREDID, A.ASOID, A.ASONUMDEV '
            + 'FROM MDEVCAB A, MDEVDET B, CRE110 C, APO101 E '
            +' WHERE A.ASOFECDEV >='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            +'  AND A.ASOFECDEV  <='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            +'  AND A.FLGFSC IS NULL '
            + ' AND A.CREESTID NOT IN (''13'') '
            +'  AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV  and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+''' '
            +'  AND SUBSTR(B.CREDID,7,2)=C.TIPCREID(+) '
            +'  AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '
            +'  AND NVL(B.CREFLAT,0)>0 '
            +'  GROUP BY C.CTAFLAT, A.DOCOFI, A.ASOFECDEV, A.ASOAPENOM, A.TIPDESEID, B.CREDID, A.ASOID, A.ASONUMDEV '
            +'  ORDER BY A.ASONUMDEV ) ';
      xSQL1:=
              'UNION ALL '
            + 'SELECT * FROM ('
            + 'SELECT T.CTA_DESGRAV CUENTAID,'
            + '      NULL CCOSID, NVL(A.DOCOFI, ''EFECTIVO'' ) CNTNODOC, A.ASOFECDEV,'
            + '      A.ASOAPENOM, A.TIPDESEID,'
            + '      SUM(NVL(B.MONCOBDESGRAV,0)) DEBE, 0.00 HABER,  B.CREDID, A.ASOID, A.ASONUMDEV '
            + 'FROM MDEVCAB A, MDEVDET B, CRE110 C, APO101 E, CRE301 S, APO107 T '
            +' WHERE A.ASOFECDEV >='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            +'  AND A.ASOFECDEV  <='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            +'  AND A.FLGFSC IS NULL '
            + ' AND A.CREESTID NOT IN (''13'') '
            +'  AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV  and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+''' '
            +'  AND SUBSTR(B.CREDID,7,2)=C.TIPCREID(+) '
            +'  AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '
            +'  AND NVL(B.MONCOBDESGRAV,0)>0 '
            +'  And B.ASOID=S.ASOID(+) AND B.CREDID=S.CREDID(+) '
            +'  And S.ASOTIPID=T.ASOTIPID(+) '
            +'  GROUP BY T.CTA_DESGRAV, A.DOCOFI, A.ASOFECDEV, A.ASOAPENOM, A.TIPDESEID, B.CREDID, A.ASOID, A.ASONUMDEV '
            +'  ORDER BY A.ASONUMDEV ) '

            +'UNION ALL '
            +'SELECT * FROM ( '
            +'SELECT ''46907'' CUENTAID, '' '' CCOSID, NVL(A.DOCOFI,''EFECTIVO'' )CNTNODOC,'
            +'      A.ASOFECDEV, '' '' ASOAPENOM, '' '' TIPDESEID,'
            +'      0.00 DEBE, SUM(NVL(B.CREDEVEXC,0)+NVL(B.MONDEVCUO,0)) HABER,  '' '' CREDID, '' '' ASOID, '' '' ASONUMDEV '
            +'FROM MDEVCAB A, MDEVDET B '
            +'WHERE A.ASOFECDEV >='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            +' AND A.ASOFECDEV  <='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            +' AND A.FLGFSC IS NULL '
            +' AND A.CREESTID NOT IN (''13'') '
            +' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+''' '
            +'GROUP BY A.DOCOFI, A.ASOFECDEV )) A ' ;

      xSQL:=xSQL+xSQL1;

//Fin: DPP_201214_COB
// Fondo de Protección de Desgravamen FPD
//Fin  HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones


      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest( xSQL );
      DM1.cdsQry6.Open;


// Inicio: SPP_201313_COB     : 06/11/2013 - Contabilización para los casos de Devoluciones con cronogramas con saldo cero
      DM1.cdsQry6.first;
      while not DM1.cdsQry6.Eof do
      begin
         if (DM1.cdsQry6.FieldByName('CUENTAID').AsString='') and (DM1.cdsQry6.FieldByName('DEBE').AsFloat>0) then
         begin
             xSQL:='SELECT distinct nvl(max(b.cuentaid),''1710103'') cuentaid FROM CRE310 a, cre110 b '
                  +'WHERE ASOID='''+DM1.cdsQry6.FieldByName('ASOID').AsString+''' '
                  +'AND a.FREG=(select MAX(FREG) from cre310 where asoid='''+DM1.cdsQry6.FieldByName('ASOID').AsString+''' ) and a.tipcreid=b.tipcreid(+)';
             DM1.cdsQry4.Close;
             DM1.cdsQry4.DataRequest(xSQL);
             DM1.cdsQry4.Open;

             DM1.cdsQry6.Edit;
             DM1.cdsQry6.FieldByName('CUENTAID').AsString:=DM1.cdsQry4.FieldByName('CUENTAID').AsString;
             DM1.cdsQry6.Post;
         end;
         DM1.cdsQry6.Next;
      end;
// Fin: SPP_201313_COB     : 06/11/2013 - Contabilización para los casos de Devoluciones con cronogramas con saldo cero

      xNReg:=0;
      xTotHaber:=0;

      DM1.cdsQry6.First;

      While not DM1.cdsQry6.Eof do
      begin

         DM1.cdsMovCnt1.Insert;
         DM1.cdsMovCnt1.FieldByName('CIAID').AsString      := '02';
         DM1.cdsMovCnt1.FieldByName('TDIARID').AsString    := '32';
         DM1.cdsMovCnt1.FieldByName('CNTANOMM').AsString   := xPeriodo;
         DM1.cdsMovCnt1.FieldByName('CNTCOMPROB').AsString := DM1.cdsQry5.FieldByname('COMPROBANTE').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTANO').AsString     := Copy( xPeriodo,1,4 );
         DM1.cdsMovCnt1.FieldByName('CNTLOTE').AsString    := 'DEVO';
         DM1.cdsMovCnt1.FieldByName('TMONID').AsString     := 'N';
         DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat  := xTCambio;
         DM1.cdsMovCnt1.FieldByName('CNTTS').AsString      := 'V';
         DM1.cdsMovCnt1.FieldByName('CNTMODDOC').AsString  := '';
         DM1.cdsMovCnt1.FieldByName('CNTFCOMP').AsDateTime := dtpFComp.Date;
         DM1.cdsMovCnt1.FieldByName('CNTFEMIS').AsDateTime := DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime;
         DM1.cdsMovCnt1.FieldByName('CNTFVCMTO').AsDateTime:= DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime;
         DM1.cdsMovCnt1.FieldByName('CNTESTADO').AsString  := 'I';
         DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString    := DM1.wUsuario;
         DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime  := date;     // fecha que registra usuario
         DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime  := time;     // hora que registra usuario

         IF DM1.cdsQry6.FieldByname('CUENTAID').AsString='46907' then
         begin
            IF DM1.cdsQry6.FieldByname('CNTNODOC').AsString='' THEN
               DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString   :='DEV.PREST. EFECTIVO'
            ELSE
               DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString   :='DEV.PREST. OF.'+DM1.cdsQry6.FieldByname('CNTNODOC').AsString;
         end
         else
            DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString   :=DM1.cdsQry6.FieldByname('ASOAPENOM').AsString;

         DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString   :=DM1.cdsQry6.FieldByname('CNTNODOC').AsString;
         DM1.cdsMovCnt1.FieldByName('CUENTAID').AsString   :=DM1.cdsQry6.FieldByname('CUENTAID').AsString;
         DM1.cdsMovCnt1.FieldByName('CCOSID').AsString     :=DM1.cdsQry6.FieldByname('CCOSID').AsString;

         IF ( COPY(DM1.cdsMovCnt1.FieldByname('CUENTAID').AsString,1,2)='16' ) AND
            ( DM1.cdsMovCnt1.FieldByName('CCOSID').AsString='' ) THEN
            DM1.cdsMovCnt1.FieldByName('CCOSID').AsString   :='991502';

         xNReg:=xNreg+1;
         DM1.cdsMovCnt1.FieldByName('CNTREG').AsInteger    := xNReg;
         DM1.cdsMovCnt1.FieldByName('MODULO').AsString     := DM1.wModulo;

         DM1.cdsMovCnt1.FieldByName('CNTMM').AsString   :=DM1.cdsQry.FieldByName('FECMES').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTDD').AsString   :=DM1.cdsQry.FieldByName('FECDIA').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTTRI').AsString  :=DM1.cdsQry.FieldByName('FECTRIM').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTSEM').AsString  :=DM1.cdsQry.FieldByName('FECSEM').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTSS').AsString   :=DM1.cdsQry.FieldByName('FECSS').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTAATRI').AsString:=DM1.cdsQry.FieldByName('FECAATRI').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTAASEM').AsString:=DM1.cdsQry.FieldByName('FECAASEM').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTAASS').AsString :=DM1.cdsQry.FieldByName('FECAASS').AsString;

         if DM1.cdsQry6.FieldByName('DEBE').AsFloat>0 then
         begin
            DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='D';
            DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTDEBEMN').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat:=DM1.FROUND( DM1.cdsQry6.FieldByname('DEBE').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
            DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat;
         end
         else
         begin
            DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='H';
            DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEMN').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat:=dm1.FROUND( DM1.cdsQry6.FieldByname('HABER').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
            DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat;
         end;

         //DM1.cdsMovCnt1.FieldByName('CTADES').AsString   := edtCuenta.Text;
         //DM1.cdsMovCnt1.FieldByName('AUXDES').AsString   := edtAux.Text;
         //DM1.cdsMovCnt1.FieldByName('DOCDES').AsString   := dbeTDoc.Text;
         //DM1.cdsMovCnt1.FieldByName('CCOSDES').AsString  := dbeCCosto.Text;
         //DM1.cdsMovCnt1.FieldByName('TDIARDES').AsString := edtTDiario.Text;

         DM1.cdsMovCnt1.FieldByName('FLAGVAR').AsString  := DM1.cdsQry6.FieldByname('TIPDESEID').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString  := DM1.wUsuario;    // usuario que registra
         DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime:= date;     // fecha que registra usuario
         DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime:= time;     // hora que registra usuario
         cdsPost( DM1.cdsMovCnt1 );

         DM1.cdsMovCnt1.ApplyUpdates( -1 );

         DM1.cdsQry6.Next;
      end;
      
      CuadrarAsiento;

      DM1.cdsMovCnt1.ApplyUpdates( -1 );

      GeneraCNT300;

      DM1.cdsQry5.Next;
   end;

   DM1.cdsQry6.IndexFieldNames:='';

//Inicio HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
//----------------------------------------

   xSQL:='delete from '+xCNT300+' '
        +'where CNTLOTE=''DECC'' and CNTANOMM='''+xPeriodo+'''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except
   end;

   xSQL:='delete from '+xCNT311+' '
        +'where CNTLOTE=''DECC'' and CNTANOMM='''+xPeriodo+'''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except
   end;


   DM1.cdsQry5.First;
   while not DM1.cdsQry5.Eof do
   begin
      xAgrupa:='S';

      xSQL :='SELECT A.* FROM ( '
            +'SELECT  ''4691205'' CUENTAID,'
            +        'NULL CCOSID, NVL(A.DOCOFI, ''EFECTIVO'' ) CNTNODOC, A.ASOFECDEV,'
            +        ''' '' ASOAPENOM, A.TIPDESEID,'
            +        'SUM(NVL(B.CREDEVEXC,0)) DEBE, 0.00 HABER,  B.CREDID, '' '' ASOID, '' ''ASONUMDEV '
            + 'FROM MDEVCAB A, MDEVDET B, CRE110 C, APO101 E '
            + 'WHERE A.ASOFECDEV >='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            + ' AND A.ASOFECDEV <= '+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            // Inicio: COB_201822_HPC
            // Devolución de pagos x resolver
            + ' AND A.FLGFSC IS NULL'
            + ' AND A.CREESTID NOT IN (''13'')'
            // + ' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+''' '
            + ' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV AND B.FORPAGID IN (''01'',''09'',''22'') and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+''' '
            // Fin: COB_201822_HPC
            + ' AND SUBSTR(B.CREDID,7,2)=C.TIPCREID(+) '
            + ' AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '
            + ' AND NVL(B.CREDEVEXC,0)>0 '
            + ' AND C.CUEEXC IS NULL '
            + ' GROUP BY A.DOCOFI, A.ASOFECDEV, A.TIPDESEID, B.CREDID '

            +'UNION ALL '

            +'SELECT  nvl(C.CUEEXC,''4692202'') CUENTAID,'
            +        'NULL CCOSID, NVL(A.DOCOFI, ''EFECTIVO'' ) CNTNODOC, A.ASOFECDEV,'
            +        'A.ASOAPENOM, A.TIPDESEID,'
            +        '0.00 DEBE, SUM(NVL(B.CREDEVEXC,0)) HABER,  B.CREDID, A.ASOID, A.ASONUMDEV '
            + 'FROM MDEVCAB A, MDEVDET B, CRE110 C, APO101 E '
            + 'WHERE A.ASOFECDEV >='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            + ' AND A.ASOFECDEV <= '+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
            + ' AND A.FLGFSC IS NULL '
            + ' AND A.CREESTID NOT IN (''13'') '
            // Inicio: COB_201822_HPC
            //

            // + ' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+''' '
            + ' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV AND B.FORPAGID IN (''01'',''09'',''22'') and to_char(B.freg,''YYYYMM'')='''+dbseAno.Text+dbseMes.Text+''' '
            // Fin: COB_201822_HPC
            + ' AND SUBSTR(B.CREDID,7,2)=C.TIPCREID(+) '
            + ' AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '
            + ' AND NVL(B.CREDEVEXC,0)>0 '
            + ' AND C.CUEEXC IS NULL '
            + ' GROUP BY C.CUEEXC, A.DOCOFI, A.ASOFECDEV, A.ASOAPENOM, A.TIPDESEID, B.CREDID, A.ASOID, A.ASONUMDEV '

            + ' ) A '
            + ' ORDER BY ASONUMDEV';

      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest( xSQL );
      DM1.cdsQry6.Open;

      DM1.cdsQry6.first;
      while not DM1.cdsQry6.Eof do
      begin
         if (DM1.cdsQry6.FieldByName('CUENTAID').AsString='') and (DM1.cdsQry6.FieldByName('DEBE').AsFloat>0) then
         begin
             xSQL:='SELECT distinct nvl(max(b.cuentaid),''1710103'') cuentaid FROM CRE310 a, cre110 b '
                  +'WHERE ASOID='''+DM1.cdsQry6.FieldByName('ASOID').AsString+''' '
                  +'AND a.FREG=(select MAX(FREG) from cre310 where asoid='''+DM1.cdsQry6.FieldByName('ASOID').AsString+''' ) and a.tipcreid=b.tipcreid(+)';
             DM1.cdsQry4.Close;
             DM1.cdsQry4.DataRequest(xSQL);
             DM1.cdsQry4.Open;

             DM1.cdsQry6.Edit;
             DM1.cdsQry6.FieldByName('CUENTAID').AsString:=DM1.cdsQry4.FieldByName('CUENTAID').AsString;
             DM1.cdsQry6.Post;
         end;
         DM1.cdsQry6.Next;
      end;

      xNReg:=0;
      xTotHaber:=0;

      DM1.cdsQry6.First;

      While not DM1.cdsQry6.Eof do
      begin

         DM1.cdsMovCnt1.Insert;
         DM1.cdsMovCnt1.FieldByName('CIAID').AsString      := '02';
         DM1.cdsMovCnt1.FieldByName('TDIARID').AsString    := '32';
         DM1.cdsMovCnt1.FieldByName('CNTANOMM').AsString   := xPeriodo;
         DM1.cdsMovCnt1.FieldByName('CNTCOMPROB').AsString := DM1.cdsQry5.FieldByname('COMPROBANTE2').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTANO').AsString     := Copy( xPeriodo,1,4 );
         DM1.cdsMovCnt1.FieldByName('CNTLOTE').AsString    := 'DECC';
         DM1.cdsMovCnt1.FieldByName('TMONID').AsString     := 'N';
         DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat  := xTCambio;
         DM1.cdsMovCnt1.FieldByName('CNTTS').AsString      := 'V';
         DM1.cdsMovCnt1.FieldByName('CNTMODDOC').AsString  := '';
         DM1.cdsMovCnt1.FieldByName('CNTFCOMP').AsDateTime := dtpFComp.Date;
         DM1.cdsMovCnt1.FieldByName('CNTFEMIS').AsDateTime := DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime;
         DM1.cdsMovCnt1.FieldByName('CNTFVCMTO').AsDateTime:= DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime;
         DM1.cdsMovCnt1.FieldByName('CNTESTADO').AsString  := 'I';
         DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString    := DM1.wUsuario;
         DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime  := date;     // fecha que registra usuario
         DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime  := time;     // hora que registra usuario

         IF DM1.cdsQry6.FieldByname('CUENTAID').AsString='4691205' then
         begin
            DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString   := 'DEV. CREDITOS CERRADOS'
         end
         else
            DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString   := DM1.cdsQry6.FieldByname('ASOAPENOM').AsString;

         DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString   :=DM1.cdsQry6.FieldByname('CNTNODOC').AsString;
         DM1.cdsMovCnt1.FieldByName('CUENTAID').AsString   :=DM1.cdsQry6.FieldByname('CUENTAID').AsString;
         //DM1.cdsMovCnt1.FieldByName('CCOSID').AsString     :=DM1.cdsQry6.FieldByname('CCOSID').AsString;

         IF ( COPY(DM1.cdsMovCnt1.FieldByname('CUENTAID').AsString,1,2)='16' ) AND
            ( DM1.cdsMovCnt1.FieldByName('CCOSID').AsString='' ) THEN
            DM1.cdsMovCnt1.FieldByName('CCOSID').AsString   :='991502';

         xNReg:=xNreg+1;
         DM1.cdsMovCnt1.FieldByName('CNTREG').AsInteger    := xNReg;
         DM1.cdsMovCnt1.FieldByName('MODULO').AsString     := DM1.wModulo;

         DM1.cdsMovCnt1.FieldByName('CNTMM').AsString   :=DM1.cdsQry.FieldByName('FECMES').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTDD').AsString   :=DM1.cdsQry.FieldByName('FECDIA').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTTRI').AsString  :=DM1.cdsQry.FieldByName('FECTRIM').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTSEM').AsString  :=DM1.cdsQry.FieldByName('FECSEM').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTSS').AsString   :=DM1.cdsQry.FieldByName('FECSS').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTAATRI').AsString:=DM1.cdsQry.FieldByName('FECAATRI').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTAASEM').AsString:=DM1.cdsQry.FieldByName('FECAASEM').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTAASS').AsString :=DM1.cdsQry.FieldByName('FECAASS').AsString;

         if DM1.cdsQry6.FieldByName('DEBE').AsFloat>0 then
         begin
            DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='D';
            DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTDEBEMN').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat:=DM1.FROUND( DM1.cdsQry6.FieldByname('DEBE').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
            DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat;
         end
         else
         begin
            DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='H';
            DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEMN').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat:=dm1.FROUND( DM1.cdsQry6.FieldByname('HABER').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
            DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat;
         end;

         DM1.cdsMovCnt1.FieldByName('FLAGVAR').AsString  := DM1.cdsQry6.FieldByname('TIPDESEID').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString  := DM1.wUsuario;    // usuario que registra
         DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime:= date;     // fecha que registra usuario
         DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime:= time;     // hora que registra usuario
         cdsPost( DM1.cdsMovCnt1 );

         DM1.cdsMovCnt1.ApplyUpdates( -1 );

         DM1.cdsQry6.Next;
      end;

      CuadrarAsiento;

      DM1.cdsMovCnt1.ApplyUpdates( -1 );

      GeneraCNT300_P;

      DM1.cdsQry5.Next;
   end;

//-----------------------------------------
//Fin   HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
   // Añadir Filales
   //
   //fcShapeBtn6Click(Sender);
   //

   Screen.Cursor:=crDefault;
   MessageDlg('Se Contabilizo con EXITO !!!', mtConfirmation, [mbOk], 0);
   prbAvance.Position:=0;
   prbAvance.Visible:=False;

end;


procedure TFContabilizacionDev.CuadrarAsiento;
var
   xTotDebeMN, xTotHaberMN, xTotDebeME, xTotHaberME, xDif : Double;
begin
      // CUADRA ASIENTO
      xTotDebeMN:=0;  xTotHaberMN:=0;
      xTotDebeME:=0;  xTotHaberME:=0;
      DM1.cdsMovCnt1.First ;
      while not DM1.cdsMovCnt1.eof do begin
         if DM1.cdsMovCnt1.FieldByName('CNTDH').AsString='D' then begin
            xTotDebeMN := xTotDebeMN  + DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat;
            xTotDebeME := xTotDebeME  + DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat;
         end
         else begin
            xTotHaberMN:= xTotHaberMN + DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat;
            xTotHaberME:= xTotHaberME + DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat;
         end;
         DM1.cdsMovCnt1.Next;
      end;

      xDif:=0;

      if DM1.cdsMovCnt1.FieldByName('TMONID').AsString='D' then
      begin
         if dm1.FROUND(xTotHaberMN,15,2)<>dm1.FROUND(xTotDebeMN,15,2) then begin
            if dm1.FROUND(xTotHaberMN,15,2)>dm1.FROUND(xTotDebeMN,15,2) then begin
               xDIf:=dm1.FROUND(dm1.FROUND(xTotHaberMN,15,2)-dm1.FROUND(xTotDebeMN,15,2),15,2);
               xDIf:=xTotHaberMN-xTotDebeMN;
               DM1.cdsMovCnt1.First ;
               while not DM1.cdsMovCnt1.eof do begin
                  if DM1.cdsMovCnt1.FieldByName('CNTDH').AsString='D' then begin
                     DM1.cdsMovCnt1.Edit;
                     DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat+xDif;
                     DM1.cdsMovCnt1.FieldByName('CNTDEBEMN').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat;
                     DM1.cdsMovCnt1.Post;
                     Break;
                  end;
                  DM1.cdsMovCnt1.Next;
               end;
            end
            else begin

               xDIf:=dm1.FROUND(dm1.FROUND(xTotDebeMN,15,2)-dm1.FROUND(xTotHaberMN,15,2),15,2);
               xDIf:=xTotDebeMN-xTotHaberMN;
               DM1.cdsMovCnt1.First ;
               while not DM1.cdsMovCnt1.eof do begin
                  if DM1.cdsMovCnt1.FieldByName('CNTDH').AsString='H' then begin
                     DM1.cdsMovCnt1.Edit;
                     DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat+xDif;
                     DM1.cdsMovCnt1.FieldByName('CNTHABEMN').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat;
                     DM1.cdsMovCnt1.Post;
                     Break;
                  end;
                  DM1.cdsMovCnt1.Next;
               end;
            end

         end;
      end
      else begin
         if dm1.FROUND(xTotHaberME,15,2)<>dm1.FROUND(xTotDebeME,15,2) then begin
            if dm1.FROUND(xTotHaberME,15,2)>dm1.FROUND(xTotDebeME,15,2) then begin
               xDIf:=dm1.FROUND(dm1.FROUND(xTotHaberME,15,2)-dm1.FROUND(xTotDebeME,15,2),15,2);
               xDIf:=xTotHaberME-xTotDebeME;
               DM1.cdsMovCnt1.First ;
               while not DM1.cdsMovCnt1.eof do begin
                  if DM1.cdsMovCnt1.FieldByName('CNTDH').AsString='D' then begin
                     DM1.cdsMovCnt1.Edit;
                     DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat+xDif;
                     DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat;
                     DM1.cdsMovCnt1.Post;
                     Break;
                  end;
                  DM1.cdsMovCnt1.Next;
               end;
            end
            else begin
               xDIf:=Dm1.FROUND(dm1.FROUND(xTotDebeME,15,2)-dm1.FROUND(xTotHaberME,15,2),15,2);
               xDIf:=xTotDebeME-xTotHaberME;
               DM1.cdsMovCnt1.First ;
               while not DM1.cdsMovCnt1.eof do begin
                  if DM1.cdsMovCnt1.FieldByName('CNTDH').AsString='H' then begin
                     DM1.cdsMovCnt1.Edit;
                     DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat+xDif;
                     DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat;
                     DM1.cdsMovCnt1.Post;
                     Break;
                   end;
                  DM1.cdsMovCnt1.Next;
               end;
            end
         end;
      end;
end;

procedure TFContabilizacionDev.GeneraCNT3002;
var
   xSQL : String;
begin
   xSQL:='INSERT INTO '+xCNT300+' ';
   xSQL:=xSQL+ '( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, ';
   xSQL:=xSQL+ 'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, ';
   xSQL:=xSQL+ 'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, ';
   xSQL:=xSQL+ 'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, ';
   xSQL:=xSQL+ 'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, ';
   xSQL:=xSQL+ 'CNTTS, DOCMOD, MODULO ) ' ;

   xSQL:=xSQL+ 'SELECT A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, ';
   xSQL:=xSQL+ 'MAX( CASE WHEN A.CNTREG = 1 THEN A.CNTNODOC||'' - ''||A.CNTGLOSA ELSE A.CNTNODOC||'' - ''||A.CNTGLOSA END ) CNTGLOSA, ';
   xSQL:=xSQL+ 'MAX( NVL(A.CNTTCAMBIO, 0 )), ';
   xSQL:=xSQL+ 'A.CNTFCOMP, ''I'', ''N'', ';
   xSQL:=xSQL+ 'MAX(CNTUSER), MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'MAX( CASE WHEN A.CNTREG = 1 THEN A.TMONID ELSE A.TMONID END ) TMONID, '' '', ';
   xSQL:=xSQL+ 'A.TDIARDES, ';
   xSQL:=xSQL+ 'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), ';
   xSQL:=xSQL+ 'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) ';
   xSQL:=xSQL+ 'FROM '+xCNT311+' A ';
   xSQL:=xSQL+ 'WHERE A.CIAID<>''02'' AND ';
   xSQL:=xSQL+       'A.TDIARID=''32'' AND ';
   xSQL:=xSQL+       'A.CNTANOMM='''+xPeriodo+''' ';
   xSQL:=xSQL+'AND A.CNTCOMPROB='''+DM1.cdsQry5.FieldByName('COMPROBANTE').AsString+''' ';
   xSQL:=xSQL+ 'GROUP BY A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, ';
   xSQL:=xSQL+ 'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI,  ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'A.TDIARDES';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except

   end;
end;

procedure TFContabilizacionDev.GeneraCNT300;
var
   xSQL : String;
begin
   xSQL:='INSERT INTO '+xCNT300+' ';
   xSQL:=xSQL+ '( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, ';
   xSQL:=xSQL+ 'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, ';
   xSQL:=xSQL+ 'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, ';
   xSQL:=xSQL+ 'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, ';
   xSQL:=xSQL+ 'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, ';
   xSQL:=xSQL+ 'CNTTS, DOCMOD, MODULO ) ' ;

   xSQL:=xSQL+ 'SELECT A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, ';
   xSQL:=xSQL+ '''DEVOLUCIONES DE PRESTAMOS'' CNTGLOSA, ';
   xSQL:=xSQL+ 'MAX( NVL(A.CNTTCAMBIO, 0 )), ';
   xSQL:=xSQL+ 'A.CNTFCOMP, ''I'', ''N'', ';
   xSQL:=xSQL+ 'MAX(CNTUSER), MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'MAX( CASE WHEN A.CNTREG = 1 THEN A.TMONID  END ) TMONID, '' '', ';
   xSQL:=xSQL+ 'A.TDIARDES, ';
   xSQL:=xSQL+ 'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), ';
   xSQL:=xSQL+ 'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) ';
   xSQL:=xSQL+ 'FROM '+xCNT311+' A ';
   xSQL:=xSQL+ 'WHERE A.CIAID=''02'' AND ';
   xSQL:=xSQL+       'A.TDIARID=''32'' AND ';
   xSQL:=xSQL+       'A.CNTANOMM='''+xPeriodo+''' ';
   xSQL:=xSQL+'AND A.CNTCOMPROB='''+DM1.cdsQry5.FieldByName('COMPROBANTE').AsString+''' ';
   xSQL:=xSQL+ 'GROUP BY A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, ';
   xSQL:=xSQL+ 'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI,  ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'A.TDIARDES';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except

   end;
end;

//Inicio HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
procedure TFContabilizacionDev.GeneraCNT300_P;
var
   xSQL : String;
begin
   xSQL:='INSERT INTO '+xCNT300+' ';
   xSQL:=xSQL+ '( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, ';
   xSQL:=xSQL+ 'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, ';
   xSQL:=xSQL+ 'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, ';
   xSQL:=xSQL+ 'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, ';
   xSQL:=xSQL+ 'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, ';
   xSQL:=xSQL+ 'CNTTS, DOCMOD, MODULO ) ' ;

   xSQL:=xSQL+ 'SELECT A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, ';
   xSQL:=xSQL+ '''DEVOLUCIONES DE PRESTAMOS'' CNTGLOSA, ';
   xSQL:=xSQL+ 'MAX( NVL(A.CNTTCAMBIO, 0 )), ';
   xSQL:=xSQL+ 'A.CNTFCOMP, ''I'', ''N'', ';
   xSQL:=xSQL+ 'MAX(CNTUSER), MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'MAX( CASE WHEN A.CNTREG = 1 THEN A.TMONID  END ) TMONID, '' '', ';
   xSQL:=xSQL+ 'A.TDIARDES, ';
   xSQL:=xSQL+ 'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), ';
   xSQL:=xSQL+ 'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) ';
   xSQL:=xSQL+ 'FROM '+xCNT311+' A ';
   xSQL:=xSQL+ 'WHERE A.CIAID=''02'' AND ';
   xSQL:=xSQL+       'A.TDIARID=''32'' AND ';
   xSQL:=xSQL+       'A.CNTANOMM='''+xPeriodo+''' ';
   xSQL:=xSQL+'AND A.CNTCOMPROB='''+DM1.cdsQry5.FieldByName('COMPROBANTE2').AsString+''' ';
   xSQL:=xSQL+ 'GROUP BY A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE, ';
   xSQL:=xSQL+ 'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI,  ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'A.TDIARDES';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except

   end;
end;
//Fin  HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones

procedure TFContabilizacionDev.GeneraData;
var
   xSQL, xSQL1, xSQL2, xSQL3, xSQL4 : String;
begin

   if DM1.cdsQry5.FieldByName('NROFICIO').AsString<>'' then
   begin

  // CUENTA DEL CREDITO
  xSQL1:='Select A.CREDID, A.NROFICIO, CASE WHEN A.FLGREFI=''R'' THEN ''1650111'' ELSE B.CUENTAID END CUENTA, '
        +  'B.CLAUXID, B.AUXID, NVL(C.CCOSID,''991502'') CCOSID, A.DEBE, A.HABER, '
        +  '''A ORIGEN'' TIPO, 0.00 MONTO, A.CREFOTORG, A.TIPCREID, TIPDESEID, A.USEID '
        +'FROM ( '
        +  'SELECT CREDID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, ''            '' CCOSID, FLGREFI, '
        +    'SUM( CREMTOOTOR ) DEBE, 0.00 HABER '
        +  'FROM CRE301 '
        +  'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +   ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +   ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +   ' AND TIPDESEID NOT IN (''03'',''10'' ) '
        +   ' AND NROFICIO=''' +DM1.cdsQry5.FieldByName('NROFICIO').AsString+''''
        +   ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +   ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +  'GROUP BY CREDID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO, FLGREFI'
        +' ) A, CRE110 B, APO101 C '
        +'WHERE A.TIPCREID=B.TIPCREID(+) '
        +  'AND A.USEID=C.USEID(+) AND A.UPROID=C.UPROID(+) AND A.UPAGOID=C.UPAGOID(+)'

        +'UNION ALL ';

  // INTERESES
  xSQL2:='SELECT CREDID, NROFICIO, CUENTA, '' '' CLAUXID, '' '' AUXID, '
        +   'CASE WHEN TIPO=''TCAPITAL'' THEN CCOSID ELSE ''  '' END CCOSID, '
        +   '0.00 DEBE, HABER, TIPO, MONTO, CREFOTORG, TIPCREID, TIPDESEID, USEID '
        +'FROM ( '

        +  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, C.CUENTA, '
        +    'C.TIPO, C.MONTO HABER, E.CCOSID '
        +  'FROM ( '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO, ' //XX
        +       'SUM( NVL(CREMTOOTOR,0)) MONTO, COUNT(CREFOTORG) REG '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
//        +     ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NROFICIO=''' +DM1.cdsQry5.FieldByName('NROFICIO').AsString+''' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO ' // XX

        +  ') A, '
        +     '( '

        +        'SELECT ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID, NRONABO ' // XX
        +        'FROM ( '

        //  No necesita generar los pagos a travez del CRE302
{        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''FLAT'' TIPO, SUM(NVL(B.CREFLAT,0)) MONTO, A.NRONABO ' // VHN
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
        +           'UNION ALL '
        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''INTERES'' TIPO, SUM(NVL(B.CREINTERES,0)) MONTO, A.NRONABO '
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
        +           'HAVING SUM( nvl(B.CREINTERES,0) )>0 '
        +           'UNION ALL '
        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(B.CREAMORT,0))+SUM(NVL(B.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
}
        +           'SELECT A.ASOID, A.TIPCREID, ''FLAT'' TIPO, SUM(NVL(A.CREFLAT,0)) MONTO, A.NRONABO ' // VHN
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +           'UNION ALL '
        +           'SELECT A.ASOID, A.TIPCREID, ''INTERES'' TIPO, SUM(NVL(A.CREINTERES,0)) MONTO, A.NRONABO '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +           'HAVING SUM( nvl(A.CREINTERES,0) )>0 '
        +           'UNION ALL '
        +           'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '
        +    ' ) C, CRE110 D, APO101 E '
        +  'WHERE NVL(C.MONTO,0)>0 '
//        +    'and A.CREDID=C.CREDIDNABO(+) and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO '
        +    'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO '
        +    'and C.TIPCREID=D.TIPCREID(+) '
        //+    'AND NVL(D.CIAID,'' '')='' '' '
        +    'and ( ( NVL(D.CIAID,''02'')=''02'') AND TIPO=''TCAPITAL'' '
        +          'OR '
        +        '( TIPO<>''TCAPITAL'' ) ) '
        // cambiado a pedido de Jorge
        +    'AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '

        +'UNION ALL ';

  // AMORTIZACION DE OTRAS CIAID
  xSQL3:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, MAX(D.FILIAL) CUENTA, '
        +     '''FILIAL'' TIPO, SUM(C.MONTO) HABER, '' '' CCOSID '
        +  'FROM ( '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO ' // XX
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NROFICIO='''+DM1.cdsQry5.FieldByName('NROFICIO').AsString+''''
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO ' // XX
        +  ') A, '
        +     '( '
        +        'SELECT ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID, NRONABO ' // XX
        +        'FROM ( '

       { SE CAMBIO A PEDIDO DE JORGE SOLO SE GENERA LA AMORTIZACION LOS INT Y FLAT QUEDAN EN LA CIA=02
        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''FLAT'' TIPO, SUM(NVL(B.CREFLAT,0)) MONTO, A.NRONABO ' // VHN
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
        +           'UNION ALL '
        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''INTERES'' TIPO, SUM( NVL(B.CREINTERES,0) ) MONTO, A.NRONABO '
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
        +           'HAVING SUM( B.CREINTERES )>0 '
        +           'UNION ALL '}

        // CAMBIADO EL 07/07/2004 VHN
{        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(B.CREAMORT,0))+SUM(NVL(B.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
}
        +           'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D '
        +  'WHERE NVL(C.MONTO,0)>0 '
//VHN 07/07/2004        +    'and A.CREDID=C.CREDIDNABO(+) and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +    'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '
//VHN 07/07/2004        +  'GROUP BY A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, C.CREDIDNABO '
        +  'GROUP BY A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID '
        +  'UNION ALL ';

  // DESEMBOLSO
//WMC 666  xSQL4:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, B.CUENTAH CUENTA, '
  xSQL4:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, ''46906'' CUENTA, '
        +   'NVL(C.TIPO,''SIN ABONO'') TIPO, A.MONTO-NVL(C.MONTO,0) HABER, '' '' CCOSID '
        +'FROM ( '
        +   'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +      'COUNT(CREFOTORG) REG '
        +   'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NROFICIO='''+DM1.cdsQry5.FieldByName('NROFICIO').AsString+''''
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO '
        +  ' ) A, CRE110 B, ( '

// VHN 07/07/2004
{        +      'SELECT A.CREDIDNABO, A.ASOID, A.NRONABO, ''TOTAL'' TIPO, SUM(nvl(B.CREFLAT,0))+SUM(nvl(B.CREINTERES,0))+SUM(NVL(B.CREAMORT,0))+SUM(NVL(B.CREMTOEXC,0)) MONTO '
        +         'FROM CRE302 A, CRE310 B '
        +      'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +       ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +      'GROUP BY A.CREDIDNABO, A.ASOID, A.NRONABO '
}
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, '
        +         'SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +      'FROM CRE310 A '
        +      'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.NRONABO IS NOT NULL '
        +      'GROUP BY A.ASOID, A.NRONABO '


        +     ') C '
        +'WHERE A.TIPCREID=B.TIPCREID(+) '
        +  'AND A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '

        + ') A ';

     xSQL:=xSQL1+xSQL2+xSQL3+xSQL4;

   end
   else
   begin
   // CUENTA DEL CREDITO
  xSQL1:='Select A.CREDID, A.NROFICIO, CASE WHEN FLGREFI=''R'' THEN ''1650111'' ELSE B.CUENTAID END CUENTA, '
        +  'B.CLAUXID, B.AUXID, NVL(C.CCOSID,''991502'') CCOSID, A.DEBE, A.HABER, '
        +  '''A ORIGEN'' TIPO, 0.00 MONTO, A.CREFOTORG, A.TIPCREID, TIPDESEID, A.USEID '
        +'FROM ( '
        +  'SELECT CREDID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, ''            '' CCOSID, FLGREFI, '
        +    'SUM( CREMTOOTOR ) DEBE, 0.00 HABER '
        +  'FROM CRE301 '
        +  'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +   ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +   ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +   ' AND TIPDESEID NOT IN (''03'',''10'') '
        +   ' AND NVL(NROFICIO,'' '')='' '' '
        +   ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +   ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +  'GROUP BY CREDID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO, FLGREFI'
        +' ) A, CRE110 B, APO101 C '
        +'WHERE A.TIPCREID=B.TIPCREID(+) '
        +  'AND A.USEID=C.USEID(+) AND A.UPROID=C.UPROID(+) AND A.UPAGOID=C.UPAGOID(+)'

        +'UNION ALL ';

        // AMORTIZACION, INTERESES Y FLAT
  xSQL2:='SELECT CREDID, NROFICIO, CUENTA, '' '' CLAUXID, '' '' AUXID, '
        +   'CASE WHEN TIPO=''TCAPITAL'' THEN CCOSID ELSE ''  '' END CCOSID, '
        +   '0.00 DEBE, HABER, TIPO, MONTO, CREFOTORG, TIPCREID, TIPDESEID, USEID '
        +'FROM ( '

        +  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, C.CUENTA, '
        +    'C.TIPO, C.MONTO HABER, E.CCOSID '
        +  'FROM ( '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO, ' //XX
        +       'SUM( NVL(CREMTOOTOR,0)) MONTO, COUNT(CREFOTORG) REG '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+'''  '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO ' // XX

        +  ') A, '
        +     '( '

        +        'SELECT ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID, NRONABO ' // XX
        +        'FROM ( '

// VHN 07/07/2004
{        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''FLAT'' TIPO, SUM(NVL(B.CREFLAT,0)) MONTO, A.NRONABO ' // VHN
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
        +           'UNION ALL '
        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''INTERES'' TIPO, SUM(NVL(B.CREINTERES,0)) MONTO, A.NRONABO '
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
        +           'HAVING SUM( nvl(B.CREINTERES,0) )>0 '
        +           'UNION ALL '
        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(B.CREAMORT,0))+SUM(NVL(B.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
}
        +           'SELECT A.ASOID, A.TIPCREID, ''FLAT'' TIPO, SUM(NVL(A.CREFLAT,0)) MONTO, A.NRONABO ' // VHN
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +           'UNION ALL '
        +           'SELECT A.ASOID, A.TIPCREID, ''INTERES'' TIPO, SUM(NVL(A.CREINTERES,0)) MONTO, A.NRONABO '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +           'HAVING SUM( nvl(A.CREINTERES,0) )>0 '
        +           'UNION ALL '
        +           'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '
        +    ' ) C, CRE110 D, APO101 E '
        +  'WHERE NVL(C.MONTO,0)>0 '
        +    'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO '
        +    'and C.TIPCREID=D.TIPCREID(+) '
        //+    'AND NVL(D.CIAID,'' '')='' '' '
        +    'and ( ( NVL(D.CIAID,''02'')=''02'') AND TIPO=''TCAPITAL'' '
        +          'OR '
        +        '( TIPO<>''TCAPITAL'' ) ) '
        // cambiado a pedido de Jorge

        +    'AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '

        +'UNION ALL ';

        // AMORTIZACION, INTERESES Y FLAT DE OTRAS COMPAÑIAS
  xSQL3:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, MAX(D.FILIAL) CUENTA, '
        +     '''FILIAL'' TIPO, SUM(C.MONTO) HABER, '' '' CCOSID '
        +  'FROM ( '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO ' // XX
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO ' // XX
        +  ') A, '
        +     '( '

        +        'SELECT ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID, NRONABO ' // XX
        +        'FROM ( '

       { SE CAMBIO A PEDIDO DE JORGE SOLO SE GENERA LA AMORTIZACION LOS INT Y FLAT QUEDAN EN LA CIA=02
        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''FLAT'' TIPO, SUM(NVL(B.CREFLAT,0)) MONTO, A.NRONABO ' // VHN
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
        +           'UNION ALL '
        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''INTERES'' TIPO, SUM(NVL(B.CREINTERES,0)) MONTO, A.NRONABO '
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
        +           'HAVING SUM( B.CREINTERES )>0 '
        +           'UNION ALL ' }

// VHN 07/07/2004
{        +           'SELECT A.CREDIDNABO, A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(B.CREAMORT,0))+SUM(NVL(B.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE302 A, CRE310 B '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +            ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +           'GROUP BY A.CREDIDNABO, A.ASOID, A.TIPCREID, A.NRONABO '
}

        +           'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE310 A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D '
        +  'WHERE NVL(C.MONTO,0)>0 '
        +    'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '
        +  'GROUP BY A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID '
        +  'UNION ALL ';

        // DESEMBOLSO
//WMC 666  xSQL4:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, B.CUENTAH CUENTA, '
  xSQL4:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, ''46906'' CUENTA, '
        +   'NVL(C.TIPO,''SIN ABONO'') TIPO, A.MONTO-NVL(C.MONTO,0) HABER, '' '' CCOSID '
        +'FROM ( '
        +   'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +      'COUNT(CREFOTORG) REG '
        +   'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' AND CREMTOGIR>0 '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO '
        +  ' ) A, CRE110 B, ( '

// VHN 07/07/2004
{        +      'SELECT A.CREDIDNABO, A.ASOID, A.NRONABO, ''TOTAL'' TIPO, SUM(nvl(B.CREFLAT,0))+SUM(nvl(B.CREINTERES,0))+SUM(NVL(B.CREAMORT,0))+SUM(NVL(B.CREMTOEXC,0)) MONTO '
        +         'FROM CRE302 A, CRE310 B '
        +      'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) AND A.NRONABO=B.NRONABO(+) AND A.CRECUOTA=B.CRECUOTA(+) '
        +       ' and A.NRONABO IS NOT NULL '
        +            ' and A.CREDIDNABO IS NOT NULL '
        +      'GROUP BY A.CREDIDNABO, A.ASOID, A.NRONABO '
}
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +         'FROM CRE310 A '
        +      'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.NRONABO IS NOT NULL '
        +      'GROUP BY A.ASOID, A.NRONABO '

        +     ') C '
        +'WHERE A.TIPCREID=B.TIPCREID(+) '
        +  'AND A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '

        + ') A ';

     xSQL:=xSQL1+xSQL2+xSQL3+xSQL4;

   end;

   DM1.cdsQry6.Close;

   DM1.cdsQry6.IndexFieldNames:='CREDID';

   if xAgrupa='S' then
   begin
   xSQL:='Select CREFOTORG, NROFICIO, TIPDESEID, CUENTA, CLAUXID, AUXID, CCOSID, '
        +  'SUM(DEBE) DEBE, SUM(HABER) HABER '
        +'From ( '+  xSQL + ' ) '
        +'Group by CREFOTORG, NROFICIO, TIPDESEID, CUENTA, CLAUXID, AUXID, CCOSID ';
   DM1.cdsQry6.IndexFieldNames:='CUENTA;CCOSID';
   end
   else
   begin
   if xAgrupa='N' then
   begin
   xSQL:='Select CREDID, CREFOTORG, NROFICIO, TIPDESEID, '
        +  'SUM(DEBE) DEBE, SUM(HABER) HABER '
        +'From ( '+  xSQL + ' ) '
        +'Group by CREDID, CREFOTORG, NROFICIO, TIPDESEID';
   DM1.cdsQry6.IndexFieldNames:='CREDID';
   end;
   if xAgrupa='DIF' then
   begin
   xSQL:='Select A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPDESEID, '
        +  'SUM(DEBE) DEBE, SUM(CASE WHEN CUENTA=''46906'' THEN HABER ELSE 0 END )  C46906, '
        +  'SUM(CASE WHEN CUENTA<>''46906'' THEN HABER ELSE 0 END  ) HABER, '
        +  'MAX( CREMTOOTOR ) OTOR, MAX( CREMTOGIR ) GIR, MAX( CREMTOOTOR )-MAX( CREMTOGIR ) DIF '
        +'From ( '+  xSQL + ' ) A , CRE301 B '
        +'WHERE A.CREDID=B.CREDID '
        + ' AND B.CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        + ' AND B.CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        + ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        + ' AND DECODE(B.FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +'Group by A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPDESEID '
        +'HAVING SUM(DEBE)<>MAX( CREMTOOTOR ) OR '
        +  'SUM(CASE WHEN CUENTA=''46906'' THEN HABER ELSE 0 END )<>MAX( CREMTOGIR ) OR '
        +  'SUM(CASE WHEN CUENTA<>''46906'' THEN HABER ELSE 0 END )<>MAX( CREMTOOTOR )-MAX( CREMTOGIR )';
   DM1.cdsQry6.IndexFieldNames:='CREDID';
   end;
   end;

   DM1.cdsQry6.DataRequest( xSQL );
   DM1.cdsQry6.Open;

end;


procedure TFContabilizacionDev.GeneraDataAsiento2;
var
   xSQL, xSQL1, xSQL2, xSQL3, xSQL4 : String;
begin

   if DM1.cdsQry5.FieldByName('NROFICIO').AsString<>'' then
   begin
  xSQL1:='SELECT CREDID, CUENTA, DEBE, HABER, NVL(CCOSID,''991502'') CCOSID, CREFOTORG, NROFICIO, '
        +  'TIPCREID, USEID,  '' '' CLAUXID, '' '' AUXID, CIAID, TIPO, MONTO '
        +'FROM ( '

        +  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.USEID, A.MONTO, C.CUENTA, '
        +    'D.CIAID, C.TIPO, 0.00 DEBE, C.MONTO HABER, E.CCOSID '
        +  'FROM ( '
//999        +    'SELECT CREDID, ASOCODMOD, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, '
        +       'SUM( NVL(CREMTOOTOR,0)) MONTO, COUNT(CREFOTORG) REG, NRONABO '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NROFICIO=''' +DM1.cdsQry5.FieldByName('NROFICIO').AsString+''' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
//999        +    'GROUP BY CREDID, ASOCODMOD, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, NRONABO '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, NRONABO '

        +  ') A, '
        +     '( '

//999        +        'SELECT CREDIDNABO, ASOCODMOD, X.TIPCREID, TIPO, MONTO, '
        +        'SELECT ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID, NRONABO '
        +        'FROM ( '
        {
        +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''FLAT'' TIPO, SUM(CREMTOFLAT) MONTO '
        +           'FROM CRE302 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'UNION ALL '
        +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''INTERES'' TIPO, '
        +              'SUM( CREMTOINT ) MONTO '
        +           'FROM CRE302 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'HAVING SUM( CREMTOINT )>0 '
        +           'UNION ALL '}
//999        +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CRECAPITAL,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'SELECT NRONABO, ASOID, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CREAMORT,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'FROM CRE310 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
//999        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'GROUP BY NRONABO, ASOID, TIPCREID '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D, APO101 E '
        +  'WHERE NVL(C.MONTO,0)>0 '
//999        +    'and A.CREDID=C.CREDIDNABO(+) AND A.ASOCODMOD=C.ASOCODMOD '
        +    'and A.NRONABO=C.NRONABO(+) AND A.ASOID=C.ASOID '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '  //D.CIAID IS NOT NULL '
        +    'AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '

        +'UNION ALL ';

  xSQL2:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.USEID, 0.00 MONTO, ''46602'' CUENTA, '
        +     'D.CIAID, ''FILIAL'' TIPO, SUM(C.MONTO) DEBE, 0.00 HABER, '' '' CCOSID '
        +  'FROM ( '
//999        +    'SELECT CREDID, ASOCODMOD, CREFOTORG, NROFICIO, TIPCREID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NROFICIO='''+DM1.cdsQry5.FieldByName('NROFICIO').AsString+''' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
//999        +    'GROUP BY CREDID, ASOCODMOD, CREFOTORG, NROFICIO, TIPCREID, USEID, NRONABO '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, NRONABO '

        +  ') A, '
        +     '( '

//999        +        'SELECT CREDIDNABO, ASOCODMOD, X.TIPCREID, TIPO, MONTO, '
        +        'SELECT NRONABO, ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID '
        +        'FROM ( '

       { +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''FLAT'' TIPO, SUM(CREMTOFLAT) MONTO '
        +           'FROM CRE302 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'UNION ALL '
        +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''INTERES'' TIPO, '
        +              'SUM( CREMTOINT ) MONTO '
        +           'FROM CRE302 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'HAVING SUM( CREMTOINT )>0 '
        +           'UNION ALL '}
//999        +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CRECAPITAL,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'SELECT NRONABO, ASOID, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CREAMORT,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'FROM CRE310 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
//999        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'GROUP BY NRONABO, ASOID, TIPCREID '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D '
        +  'WHERE NVL(C.MONTO,0)>0 '
//999        +    'and A.CREDID=C.CREDIDNABO(+) AND A.ASOCODMOD=C.ASOCODMOD(+) '
        +    'and A.NRONABO=C.NRONABO(+) AND A.ASOID=C.ASOID(+) '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '  //D.CIAID IS NOT NULL '
        +  'GROUP BY A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.USEID, C.NRONABO, D.CIAID '
        + ') A ';

     xSQL:=xSQL1+xSQL2;
   end
   else
   begin

  xSQL1:='SELECT CREDID, CUENTA, DEBE, HABER, NVL(CCOSID,''991502'') CCOSID, CREFOTORG, NROFICIO, TIPCREID, '
        +  'USEID,  '' '' CLAUXID, '' '' AUXID, NRONABO, CIAID, TIPO, MONTO '
        +'FROM ( '

        +  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.USEID, A.MONTO, C.CUENTA, '
        +    'C.NRONABO, D.CIAID, C.TIPO, 0.00 DEBE, C.MONTO HABER, E.CCOSID '
        +  'FROM ( '
//999        +    'SELECT CREDID, ASOCODMOD, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
//999        +    'GROUP BY CREDID, ASOCODMOD, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, NRONABO '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, NRONABO '

        +  ') A, '
        +     '( '

//999        +        'SELECT CREDIDNABO, ASOCODMOD, X.TIPCREID, TIPO, MONTO, '
        +        'SELECT NRONABO, ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID '
        +        'FROM ( '

      {  +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''FLAT'' TIPO, SUM(CREMTOFLAT) MONTO '
        +           'FROM CRE302 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'UNION ALL '
        +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''INTERES'' TIPO, '
        +              'SUM( CREMTOINT ) MONTO '
        +           'FROM CRE302 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'HAVING SUM( CREMTOINT )>0 '
        +           'UNION ALL '}
//999        +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CRECAPITAL,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'SELECT NRONABO, ASOID, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CREAMORT,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'FROM CRE310 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
//999        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'GROUP BY NRONABO, ASOID, TIPCREID '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D, APO101 E '
        +  'WHERE NVL(C.MONTO,0)>0 '
//999        +    'and A.CREDID=C.CREDIDNABO(+) AND A.ASOCODMOD=C.ASOCODMOD '
        +    'and A.NRONABO=C.NRONABO(+) AND A.ASOID=C.ASOID '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '  //D.CIAID IS NOT NULL '
        +    'AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '

        +'UNION ALL ';

  xSQL2:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.USEID, 0.00 MONTO, ''46602'' CUENTA, '
        +     'C.NRONABO, D.CIAID, ''FILIAL'' TIPO, SUM(C.MONTO) DEBE, 0.00 HABER, '' '' CCOSID '
        +  'FROM ( '
//999        +    'SELECT CREDID, ASOCODMOD, CREFOTORG, NROFICIO, TIPCREID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
//        +   ' AND NOT CREESTID IN ( ''13'', ''N'', ''04'' ) '
        +     ' AND TIPDESEID NOT IN (''03'',''10'') '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
//999        +    'GROUP BY CREDID, ASOCODMOD, CREFOTORG, NROFICIO, TIPCREID, USEID, NRONABO '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, NRONABO '

        +  ') A, '
        +     '( '

//999        +        'SELECT CREDIDNABO, ASOCODMOD, X.TIPCREID, TIPO, MONTO, '
        +        'SELECT NRONABO, ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID '
        +        'FROM ( '

        {+           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''FLAT'' TIPO, SUM(CREMTOFLAT) MONTO '
        +           'FROM CRE302 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'UNION ALL '
        +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''INTERES'' TIPO, '
        +              'SUM( CREMTOINT ) MONTO '
        +           'FROM CRE302 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'HAVING SUM( CREMTOINT )>0 '
        +           'UNION ALL '}
//999        +           'SELECT CREDIDNABO, ASOCODMOD, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CRECAPITAL,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'SELECT NRONABO, ASOID, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CREAMORT,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'FROM CRE310 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
//999        +           'GROUP BY CREDIDNABO, ASOCODMOD, TIPCREID '
        +           'GROUP BY NRONABO, ASOID, TIPCREID '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D '
        +  'WHERE NVL(C.MONTO,0)>0 '
//999        +    'and A.CREDID=C.CREDIDNABO(+) AND A.ASOCODMOD=C.ASOCODMOD(+) '
        +    'and A.NRONABO=C.NRONABO(+) AND A.ASOID=C.ASOID(+) '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '  //D.CIAID IS NOT NULL '
        +  'GROUP BY A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.USEID, C.NRONABO, D.CIAID '
        + ') A ';

     xSQL:=xSQL1+xSQL2;

   end;


   DM1.cdsQry6.Close;
   if xAgrupa='S' then
   begin
    xSQL:='Select CIAID, CREFOTORG, NROFICIO, CUENTA, CLAUXID, AUXID, CCOSID, '
         +  'SUM(DEBE) DEBE, SUM(HABER) HABER '
         +'From ( '+  xSQL + ' ) '
         +'Group by CIAID, CREFOTORG, NROFICIO, CUENTA, CLAUXID, AUXID, CCOSID ';
    DM1.cdsQry6.IndexFieldNames:='CUENTA;CCOSID';
   end
   else begin
    DM1.cdsQry6.IndexFieldNames:='CREDID;TIPO';
   end;

   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest( xSQL );
   DM1.cdsQry6.Open;
end;


procedure TFContabilizacionDev.fcShapeBtn6Click(Sender: TObject);
var
   xWhere, xSQL, xNoComp : String;
   xTCambio : Double;
   xNReg : Integer;
   xTotDebeMN, xTotHaberMN, xTotDebeME, xTotHaberME, xDif : Double;
begin
//   if MessageDlg('Seguro(a) de Contabilizar Filiales',mtconfirmation,[mbYes,MbNo],0)=mrNo then Exit;

   DM1.cdsQry5.First;

   if DM1.cdsQry5.FieldByName('COMPROBANTE').AsString='' then
   begin
      ShowMessage('Falta Generar Comprobante');
      Exit;
   end;

   xWhere := 'Select TCAMVBV FROM TGE107'+cLink+' '
           + 'WHERE FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha,dtpFComp.date)+''''+')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xWhere );
   DM1.cdsQry.Open;

   xTCambio:=DM1.cdsQry.FieldByName('TCAMVBV').AsFloat;
   if xTCambio<=0 then xTCambio:=3.5;

   xWhere := 'FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha,dtpFComp.date)+''''+')';
   DM1.DisplayDescrip('PrvTGE','TGE114','*',xWhere,'FECANO');

   DM1.cdsQry5.First;
   while not DM1.cdsQry5.Eof do
   begin
      xSQL:='Select TIPDESEID, TIPDESEABR from CRE104 '
           +'WHERE TIPDESEID='''+DM1.cdsQry5.FieldByname('TIPDESEID').AsString+''' ';
      DM1.cdsTipDesem.Close;
      DM1.cdsTipDesem.DataRequest( xSQL );
      DM1.cdsTipDesem.Open;

      xAgrupa:='S';
/////
      ////////////////////////////////
      xSQL:='SELECT * FROM ( '
           +'SELECT * FROM ( '
           +  'SELECT C.CIAID, C.CUENTAID, E.CCOSID, NVL(A.DOCOFI, ''EFECTIVO'' ) CNTNODOC, A.ASOFECDEV, '
           +    'A.ASOAPENOM, A.TIPDESEID, '
           +    'SUM(B.CREDEVEXC) DEBE, 0.00 HABER,  B.CREDID, A.ASOID, A.ASONUMDEV '
           +'FROM MDEVCAB'+cLink+' A, MDEVDET'+cLink+' B, CRE110'+cLink+' C, APO101'+cLink+' E '
           +'WHERE A.ASOFECDEV>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
           + ' AND A.ASOFECDEV<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
           + ' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV '
           + ' AND ( A.TIPDESEID IN (''04'') OR (A.TIPDESEID IN (''05'',''06'') AND A.DOCOFI IS NOT NULL) ) '
           + ' AND SUBSTR(B.CREDID,7,2)=C.TIPCREID(+) AND FILIAL IS NOT NULL '
           + ' AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '
           +'GROUP BY C.CIAID, C.CUENTAID, E.CCOSID, A.DOCOFI, A.ASOFECDEV, A.ASOAPENOM, A.TIPDESEID, B.CREDID, A.ASOID, A.ASONUMDEV '
           +'ORDER BY A.ASONUMDEV ) '

           +'UNION ALL '

           +'SELECT * FROM ( '
           +'SELECT C.CIAID, CUENTAH CUENTAID, '' '' CCOSID, NVL(A.DOCOFI, ''EFECTIVO'' ), '
           +  'A.ASOFECDEV, '' '' ASOAPENOM, '' '' TIPDESEID, '
           +  '0.00 DEBE, SUM(B.CREDEVEXC) HABER,  '' '' CREDID, '' '' ASOID, '' '' ASONUMDEV '
           +'FROM MDEVCAB'+cLink+' A, MDEVDET'+cLink+' B, CRE110'+cLink+' C '
           +'WHERE A.ASOFECDEV>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
           + ' AND A.ASOFECDEV<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
           + ' AND ( A.TIPDESEID IN (''04'') OR (A.TIPDESEID IN (''05'',''06'') AND A.DOCOFI IS NOT NULL) ) '
           + ' AND A.ASOANODEV=B.ASOANODEV AND A.ASONUMDEV=B.ASONUMDEV '
           + ' AND SUBSTR(B.CREDID,7,2)=C.TIPCREID(+) AND FILIAL IS NOT NULL '
           +'GROUP BY C.CIAID, C.CUENTAH, A.DOCOFI, A.ASOFECDEV '
           +' ) '
           +') A ';

      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest( xSQL );
      DM1.cdsQry6.Open;
      ////////////////////////////////
///
     // GeneraDataAsiento2;

      xSQL:='Select MAX(CNTCOMPROB) CNTCOMPROB FROM '+xCNT300+' '
           +'Where CIAID='''+DM1.cdsQry6.FieldByname('CIAID').AsString+''' AND TDIARID=''32'' '
           +  'AND CNTANOMM='''+xPeriodo+''''
           +'GROUP BY CIAID, TDIARID, CNTANOMM';
      DM1.cdsQry3.Close;
      DM1.cdsQry3.indexfieldnames:='';
      DM1.cdsQry3.DataRequest( xSQL );
      DM1.cdsQry3.Open;

      xNoComp:=DM1.cdsQry3.FieldByName('CNTCOMPROB').AsString;

      if xNoComp='' then xNoComp:='0';

      xNoComp:= DM1.StrZero( IntToStr(StrToInt(xNoComp)+1),10);

      xSQL:='Select * from '+xCNT311+' '
           +'WHERE CIAID='''+DM1.cdsQry6.FieldByname('CIAID').AsString+''' '
           +  'AND TDIARID=''32'' AND CNTANOMM='''+xPeriodo+''' '
           +  'AND CNTCOMPROB='''+DM1.cdsQry5.FieldByname('COMPROBANTE').AsString+'''';
      DM1.cdsMovCnt1.Close;
      DM1.cdsMovCnt1.DataRequest( xSQL );
      DM1.cdsMovCnt1.Open;

      xNReg:=0;

      DM1.cdsQry6.First;
      While not DM1.cdsQry6.Eof do
      begin
         DM1.cdsMovCnt1.Insert;
         DM1.cdsMovCnt1.FieldByName('CIAID').AsString      := DM1.cdsQry6.FieldByname('CIAID').AsString;
         DM1.cdsMovCnt1.FieldByName('TDIARID').AsString    := '32';
         DM1.cdsMovCnt1.FieldByName('CNTANOMM').AsString   := xPeriodo;
         DM1.cdsMovCnt1.FieldByName('CNTCOMPROB').AsString := DM1.cdsQry5.FieldByname('COMPROBANTE').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTANO').AsString     := Copy( xPeriodo,1,4 );
         DM1.cdsMovCnt1.FieldByName('CNTLOTE').AsString    := 'DEVO';
         DM1.cdsMovCnt1.FieldByName('TMONID').AsString     := 'N';
         DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat  := xTCambio;
         DM1.cdsMovCnt1.FieldByName('CNTTS').AsString      := 'V';
         DM1.cdsMovCnt1.FieldByName('CNTMODDOC').AsString  := '';
         DM1.cdsMovCnt1.FieldByName('CNTFCOMP').AsDateTime := dtpFComp.Date;
         DM1.cdsMovCnt1.FieldByName('CNTFEMIS').AsDateTime := DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime;
         DM1.cdsMovCnt1.FieldByName('CNTFVCMTO').AsDateTime:= DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime;
         DM1.cdsMovCnt1.FieldByName('CNTESTADO').AsString  := 'I';
         DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString    := DM1.wUsuario;
         DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime  := date;     // fecha que registra usuario
         DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime  := time;     // hora que registra usuario

         IF DM1.cdsQry6.FieldByname('CUENTAID').AsString='46907' then
         begin
            IF DM1.cdsQry6.FieldByname('CNTNODOC').AsString='' THEN
               DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString   :='DEV.PREST. EFECTIVO'
            ELSE
               DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString   :='DEV.PREST. OF.'+DM1.cdsQry6.FieldByname('CNTNODOC').AsString;
         end
         else
            DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString   :=DM1.cdsQry6.FieldByname('ASOAPENOM').AsString;

         DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString   :=DM1.cdsQry6.FieldByname('CNTNODOC').AsString;
         DM1.cdsMovCnt1.FieldByName('CUENTAID').AsString   :=DM1.cdsQry6.FieldByname('CUENTAID').AsString;
         DM1.cdsMovCnt1.FieldByName('CCOSID').AsString     :=DM1.cdsQry6.FieldByname('CCOSID').AsString;

         IF ( COPY(DM1.cdsMovCnt1.FieldByname('CUENTAID').AsString,1,2)='16' ) AND
            ( DM1.cdsMovCnt1.FieldByName('CCOSID').AsString='' ) THEN
            DM1.cdsMovCnt1.FieldByName('CCOSID').AsString   :='991502';

         xNReg:=xNreg+1;
         DM1.cdsMovCnt1.FieldByName('CNTREG').AsInteger    := xNReg;
         DM1.cdsMovCnt1.FieldByName('MODULO').AsString     := DM1.wModulo;

         DM1.cdsMovCnt1.FieldByName('CNTMM').AsString   :=DM1.cdsQry.FieldByName('FECMES').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTDD').AsString   :=DM1.cdsQry.FieldByName('FECDIA').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTTRI').AsString  :=DM1.cdsQry.FieldByName('FECTRIM').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTSEM').AsString  :=DM1.cdsQry.FieldByName('FECSEM').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTSS').AsString   :=DM1.cdsQry.FieldByName('FECSS').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTAATRI').AsString:=DM1.cdsQry.FieldByName('FECAATRI').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTAASEM').AsString:=DM1.cdsQry.FieldByName('FECAASEM').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTAASS').AsString :=DM1.cdsQry.FieldByName('FECAASS').AsString;

         if DM1.cdsQry6.FieldByName('DEBE').AsFloat>0 then
         begin
            DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='D';
            DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTDEBEMN').AsFloat:=DM1.cdsQry6.FieldByname('DEBE').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat:=DM1.FROUND( DM1.cdsQry6.FieldByname('DEBE').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
            DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat;
         end
         else
         begin
            DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='H';
            DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEMN').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat:=dm1.FROUND( DM1.cdsQry6.FieldByname('HABER').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
            DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat;
         end;

         //DM1.cdsMovCnt1.FieldByName('CTADES').AsString   := edtCuenta.Text;
         //DM1.cdsMovCnt1.FieldByName('AUXDES').AsString   := edtAux.Text;
         //DM1.cdsMovCnt1.FieldByName('DOCDES').AsString   := dbeTDoc.Text;
         //DM1.cdsMovCnt1.FieldByName('CCOSDES').AsString  := dbeCCosto.Text;
         //DM1.cdsMovCnt1.FieldByName('TDIARDES').AsString := edtTDiario.Text;

         DM1.cdsMovCnt1.FieldByName('FLAGVAR').AsString  := DM1.cdsQry6.FieldByname('TIPDESEID').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTUSER').AsString  := DM1.wUsuario;    // usuario que registra
         DM1.cdsMovCnt1.FieldByName('CNTFREG').AsDateTime:= date;     // fecha que registra usuario
         DM1.cdsMovCnt1.FieldByName('CNTHREG').AsDateTime:= time;     // hora que registra usuario
         cdsPost( DM1.cdsMovCnt1 );

         DM1.cdsMovCnt1.ApplyUpdates( -1 );

         DM1.cdsQry6.Next;
      end;

      CuadrarAsiento;

      DM1.cdsMovCnt1.ApplyUpdates( -1 );

      GeneraCNT3002;

      DM1.cdsQry5.Next;
   end;
//      MessageDlg('Se Contabilizo las Filiales con EXITO !!!',mtConfirmation, [mbOk], 0);
end;

procedure TFContabilizacionDev.dtpFCompExit(Sender: TObject);
var
   xSQL, xMest : String;
begin
   xSQL:= 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(DateToStr(dtpFComp.Date));
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;

   if DM1.cdsQry.FieldByname('FECMES').AsString='01' then xMest:='ENERO';
   if DM1.cdsQry.FieldByname('FECMES').AsString='02' then xMest:='FEBRERO';
   if DM1.cdsQry.FieldByname('FECMES').AsString='03' then xMest:='MARZO';
   if DM1.cdsQry.FieldByname('FECMES').AsString='04' then xMest:='ABRIL';
   if DM1.cdsQry.FieldByname('FECMES').AsString='05' then xMest:='MAYO';
   if DM1.cdsQry.FieldByname('FECMES').AsString='06' then xMest:='JUNIO';
   if DM1.cdsQry.FieldByname('FECMES').AsString='07' then xMest:='JULIO';
   if DM1.cdsQry.FieldByname('FECMES').AsString='08' then xMest:='AGOSTO';
   if DM1.cdsQry.FieldByname('FECMES').AsString='09' then xMest:='SETIEMBRE';
   if DM1.cdsQry.FieldByname('FECMES').AsString='10' then xMest:='OCTUBRE';
   if DM1.cdsQry.FieldByname('FECMES').AsString='11' then xMest:='NOVIEMBRE';
   if DM1.cdsQry.FieldByname('FECMES').AsString='12' then xMest:='DICIEMBRE';

   xPeriodo:=DM1.cdsQry.FieldByname('FECANO').AsString+DM1.cdsQry.FieldByname('FECMES').AsString;
   xPerRep :=xMest+' DEL '+DM1.cdsQry.FieldByname('FECANO').AsString;
   xFechas :='Del '+DateToStr(dtpFecIni.Date)+' Al '+DateToStr(dtpFecFin.Date);
end;

procedure TFContabilizacionDev.dtpFecFinChange(Sender: TObject);
begin
  //dtpFComp.date:=dptFecFin.date;
end;

procedure TFContabilizacionDev.dtpFecFinExit(Sender: TObject);
begin
  //dptFecFin.date >=2
end;

procedure TFContabilizacionDev.fcShapeBtn5Click(Sender: TObject);
begin
  FContabilizacion := TFContabilizacion.Create(self);
  FContabilizacion.dbseAno.Value:=dbseAno.Value;
  FContabilizacion.dbseMes.Value:=dbseMes.Value;
  FContabilizacion.DatosFecha;
  FCONTABILIZACION.ReporteContabilizaCredito( xCNT311r, 'DEVO' ,xPeriodo );
  //Inicio HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
  FCONTABILIZACION.ReporteContabilizaCredito( xCNT311r, 'DECC' ,xPeriodo );
  //Fin  HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
  FContabilizacion.Free;
end;

procedure TFContabilizacionDev.PasaDatosFecha;
var
   xDiaFin,xDiaIni : String;
begin
   xDiaIni := '01/'+dbseMes.Text+'/'+dbseAno.Text;
   xMes := DM1.strZero(inttostr(strtoint(dbseMes.Text)+1),2);
   if strtoint(xMes)>12 then
      xDiaFin := '31/12/'+dbseAno.Text
   else
   begin
      xDiaFin := datetostr(strtodate('01/'+xMes+'/'+dbseAno.Text)-1);
   end;
   dtpFecIni.date := strtodate(xDiaIni);
   dtpFecFin.date := strtodate(xDiaFin);
   dtpFComp.date := strtodate(xDiaFin);
   xPeriodo := dbseAno.Text+dbseMes.Text;

end;

procedure TFContabilizacionDev.fcShapeBtn7Click(Sender: TObject);
begin
  FContabilizacion := TFContabilizacion.Create(self);
  FContabilizacion.dbseAno.Value:=dbseAno.Value;
  FContabilizacion.dbseMes.Value:=dbseMes.Value;
  FContabilizacion.DatosFecha;
  FCONTABILIZACION.ReporteContabilizaCredito( xCNT311, 'DEVO' ,xPeriodo );
//Inicio HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
  FCONTABILIZACION.ReporteContabilizaCredito( xCNT311, 'DECC' ,xPeriodo );
//Fin   HPC_201611_COB     : Agregar Asientos de Provisión de Devoluciones
  FContabilizacion.Free;

end;

procedure TFContabilizacionDev.dbseMesExit(Sender: TObject);
begin
   if Length( dbseMes.Text )<2 then
      dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   PasaDatosFecha;
end;

procedure TFContabilizacionDev.dbseAnoExit(Sender: TObject);
begin
   PasaDatosFecha;
end;

procedure TFContabilizacionDev.FormActivate(Sender: TObject);
var
   xSQL : String;
   wAno, wMes, wDia : Word;
   xMes : String;
begin
//   cLink:='@dbprodlee ';
   cLink:='';
   decodedate(Date,wAno,wMes,wDia);
   dbseAno.Text := inttostr(wAno);
   wMes:=wMes-1;
   if wMes<=0 then
   begin
      dbseMes.Text := '12';
      dbseAno.Text := inttostr(wAno-1)
   end
   else
   begin
      if wMes<10 then
         dbseMes.Text := '0'+inttostr(wMes)
      else
         dbseMes.Text := inttostr(wMes)
   end;

   DM1.FiltraCDS(DM1.cdsTipDesem,'SELECT * FROM CRE104');

   dblcTipo.Text:='30';
   xSQL:= 'SELECT * FROM TGE104 WHERE TDIARID='+quotedstr( dblcTipo.Text );
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;

   dbeTipo.Text:=DM1.cdsQry.FieldByName('TDIARDES').AsString;

   xCNT300  := 'CNT300COB';
   xCNT311  := 'CNT311COB';
   xCnt300r := 'CNT300';
   xCnt311r := 'CNT311';
   PasaDatosFecha;

 //Inicializa el CDS
   xSQL:='SELECT A.ASOFECDEV, ''DEV. EXC. FSC'' DESCRIP,A.ASOAPENOM, B.TIPDESEABR TIPDESEID, '
        +  'SUM(A.ASOMONDEV) MONTODEV, ''          '' COMPROBANTE, ''       '' OFDESNOM,'' ''ASOTIPID,'' ''CAJERO,'' ''DOCOFI '
        +'FROM MDEVCAB A,CRE104 B '
        +'WHERE 1=2 '
        +'GROUP BY A.ASOFECDEV,A.ASOAPENOM,B.TIPDESEABR '
        +'ORDER BY A.ASOFECDEV ';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest( xSQL );
   DM1.cdsMGrupo.Open;
   dbgDevExcFSC.DataSource := Dm1.dsMGrupo;
   PageControl1.TabIndex := 0;

end;

procedure TFContabilizacionDev.FormCreate(Sender: TObject);
begin
  
   ppD1.IniStorageName := '.\rbuilder.ini';
end;


//Filtra los desembolsos de las devoluciones de Excesos del FSC
procedure TFContabilizacionDev.fcShapeBtn10Click(Sender: TObject);
var xsql:string;
begin
   xSQL:='SELECT ASOFECDEV,ASONUMDEV,DESCRIP,ASOAPENOM,TIPDESEID,MONTODEV,OFDESID,OFDESNOM,ASOTIPID,CAJERO,DOCOFI,'
         +'  (SELECT CTA_FSC FROM APO107 H WHERE H.ASOTIPID=M.ASOTIPID) CTATIPASO,'
         +'(SELECT CTACOBR FROM TGE106 WHERE BANCOID=''15'' AND CIAID=''02'')CTACOBR,'
         +'CASE WHEN OFDESID IS NOT NULL THEN ''DE''||OFDESID ELSE ''EFBN'' END LOTE '
         +'FROM '
         +'( '
         +' SELECT ASOFECDEV,ASONUMDEV,DESCRIP,ASOAPENOM,TIPDESEID,MONTODEV,OFDESID,OFDESNOM, '
         +' CASE WHEN N.ASOTIPID IS NULL THEN (SELECT ASOTIPID FROM APO201 M WHERE M.ASOID=N.ASOID)ELSE ASOTIPID END ASOTIPID,CAJERO,DOCOFI  '
         +' FROM '
         +'( '
         +'SELECT A.ASOFECDEV,A.ASONUMDEV,''DEV. EXC. FSC'' DESCRIP,A.ASOID,A.ASOAPENOM, B.TIPDESEABR TIPDESEID, A.ASOMONDEV MONTODEV,A.OFDESID,'
         +'C.OFDESNOM,'
         +'(SELECT MAX(E.TIP_ASO_ORIGEN) TIP_ASO_ORIGEN  FROM COB_FSC_PAGOS_AL_FSC D,COB_FSC_DEUDA_FSC_CAB E '
         +'WHERE D.ASOID=A.ASOID AND D.NUM_DEV_EXC=A.ASONUMDEV AND D.TIP_MOV_DEU=''DEV'' AND D.NUM_DEU=E.NUM_DEU '
         +'GROUP BY D.NUM_DEU) ASOTIPID, '
         +'NVL((SELECT MAX(USUARIO) USUARIO FROM COB_DEV_EXC_FSC '
         +'WHERE ASOID=A.ASOID AND ASOANODEV=A.ASOANODEV AND ASONUMDEV=A.ASONUMDEV),'''') CAJERO,A.DOCOFI '
         +'FROM MDEVCAB A,CRE104 B,APO110 C '
         +'WHERE ASOFECDEV>='+quotedstr(formatdatetime(wFormatFecha,dtpFecIni.Date))
         +' AND  ASOFECDEV<='+quotedstr(formatdatetime(wFormatFecha,dtpFecFin.Date))
         +' AND  FLGFSC IS NOT  NULL AND A.TIPDESEID=B.TIPDESEID(+)  AND A.OFDESID=C.OFDESID(+) '
         +')N '
         +')M ';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest( xSQL );
   DM1.cdsMGrupo.Open;
   dbgDevExcFSC.DataSource := Dm1.dsMGrupo;

   TNumericField(DM1.cdsMGrupo.FieldByName('MONTODEV')).DisplayFormat:='###,###,##0.00';
   dbgDevExcFSC.ColumnByName('MONTODEV').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsMGrupo, 'SUM(MONTODEV)',''),ffCurrency, 10, 2);

 end;

//Reporte sustento de Contabilización de Devolucion de Excesos del FSC
procedure TFContabilizacionDev.fcShapeBtn9Click(Sender: TObject);
begin

  If Dm1.cdsMGrupo.RecordCount=0 Then
    Begin
      ShowMessage('No Existe información para procesar..');
      Exit;
    End;


  ppltitulo.Caption   := 'Devoluciones de Excesos del FSC';
  ppltitulo2.Caption  := 'Fecha del '+dtpFecIni.Text+' al '+dtpFecFin.Text;
  RprtDevExcFSC.Print;
  RprtDevExcFSC.Stop;
  //ppd1.ShowModal
 end;


//Contabilización previa
procedure TFContabilizacionDev.fcShapeBtn8Click(Sender: TObject);
var   xWhere, xSQL, glosa1,xCntComprob : String;
      vDOCID,vDOCDES,vCNTNODOC :string;
      xTCambio, xTotHaber : Double;
      xNReg,xNumComp,vdesemb,voficio : Integer;
begin



  If Dm1.cdsMGrupo.RecordCount=0 Then
     Begin
       ShowMessage('No Existe información para procesar..');
       Exit;
     End;


   Dm1.cdsMGrupo.First;
   vdesemb:=0;
   voficio:=0;
   While not Dm1.cdsMGrupo.Eof Do
      Begin
        If  Dm1.cdsMGrupo.FieldByName('Lote').AsString='EFBN' Then
        begin
            If Length(trim(Dm1.cdsMGrupo.FieldByName('DOCOFI').AsString))=0 Then voficio:=voficio+1;
        end
        Else
            If Length(trim(Dm1.cdsMGrupo.FieldByName('CAJERO').AsString))=0 Then vdesemb:=vdesemb+1;

        Dm1.cdsMGrupo.Next;
      End;

   If  voficio>0 Then
      Begin
         ShowMessage('Existe Devoluciones en cuenta sin Oficio,Verifique...');
         Exit;
      End;

   If  vdesemb>0 Then
      Begin
         ShowMessage('Existe Devoluciones en Efectivo si desembolsar,Verifique...');
         Exit;
      End;


   xCNT300 := 'CNT300COB';
   xCNT311 := 'CNT311COB';
   if MessageDlg('Esta Seguro(a) de Contabilizar ',mtconfirmation,[mbYes,MbNo],0)=mrNo then Exit;
   Screen.Cursor:=crHourGlass;

   //TIPO DE CAMBIO
   xWhere := 'Select TCAMVBV FROM TGE107 '
           + 'WHERE FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha,dtpFComp.date)+''''+')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xWhere );
   DM1.cdsQry.Open;
   xTCambio:=DM1.cdsQry.FieldByName('TCAMVBV').AsFloat;
   if xTCambio<=0 then xTCambio:=2.8;


// Inicio HPC_201724_COB     : Modificar Filtro de Contabilidad
   //ELIMINA MOVIMIENTO TEMPORAL
   xSQL:='delete from '+xCNT300+' '
        +'where ((CNTLOTE LIKE ''DE%'' AND CNTLOTE<>''DEVO'' AND CNTLOTE<>''DECC'') OR (CNTLOTE=''EFBN''))  and CNTANOMM='''+xPeriodo+'''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except
   end;

   //ELIMINA MOVIMIENTO TEMPORAL
   xSQL:='delete from '+xCNT311+' '
        +'where ((CNTLOTE LIKE ''DE%'' AND CNTLOTE<>''DEVO'' AND CNTLOTE<>''DECC'') OR (CNTLOTE=''EFBN''))  and CNTANOMM='''+xPeriodo+'''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except
   end;
// Fin   HPC_201724_COB     : Modificar Filtro de Contabilidad


   xNumComp   := 60014;
   wTipoCont  := 'DX';
   wTipoCont2 := 'DXC';
   DM1.cdsMGrupo.First;

   while not DM1.cdsMGrupo.Eof do
     begin

       xCntComprob := DM1.strzero(inttostr(xNumComp),10);
       xNReg       := 1;

       If DM1.cdsMGrupo.FieldByName('Lote').asstring ='EFBN' then
          Begin
            vDOCID   :='48';
            vDOCDES  :='Oficio';
            vCNTNODOC:=trim(DM1.cdsMGrupo.FieldByName('Docofi').asstring);
            glosa1   :='Dev.Exc.FSC x Oficio ('+trim(DM1.cdsMGrupo.FieldByName('Docofi').asstring)+')';
          End
       Else
          Begin
            vDOCID    :='38';
            vDOCDES   :='Egr.Caja';
            vCNTNODOC :=trim(DM1.cdsMGrupo.FieldByName('Asonumdev').asstring);
            glosa1    :='Dev.Exc.FSC x Caja ('+trim(DM1.cdsMGrupo.FieldByName('Cajero').asstring)+')';
          End;

      // INSERTA MOVIMIENTOS
        xSQL  :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB,CNTREG,CNTANO,CNTANOMM,DOCID,DOCDES,'
              +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA,'
              +  ' CNTDEBEMN,CNTHABEMN,CNTFCOMP,CNTFEMIS, CNTFVCMTO ) VALUES('
              +  '''02'','''+wTipoCont+''','''+xCntComprob+''','+IntToStr(xNReg)+','''+dbseAno.text+''','''+dbseAno.text+dbseMes.text+''','''+vDOCID+''','''+vDOCDES+''','
              +  ''''+Dm1.cdsMGrupo.FieldByName('CtatipAso').asstring+''',null,'''+Dm1.cdsMGrupo.FieldByName('Lote').asstring+''',''COBR'','''+vCNTNODOC+''','''+COPY(Dm1.cdsMGrupo.FieldByName('ASOAPENOM').asstring,1,40)+''','
              +  Dm1.cdsMGrupo.FieldByName('MONTODEV').asstring+',0.00,'''+Dm1.cdsMGrupo.FieldByName('ASOFECDEV').asstring+''','''+Dm1.cdsMGrupo.FieldByName('ASOFECDEV').asstring+''','''+Dm1.cdsMGrupo.FieldByName('ASOFECDEV').asstring+''')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        xNReg := xNReg+1;

        xSQL  :='Insert into CNT311COB (CIAID, TDIARID, CNTCOMPROB,CNTREG,CNTANO,CNTANOMM,DOCID,DOCDES,'
              +  'CUENTAID, CCOSID, CNTLOTE, CNTSERIE, CNTNODOC, CNTGLOSA,'
              +  ' CNTDEBEMN,CNTHABEMN,CNTFCOMP,CNTFEMIS, CNTFVCMTO ) VALUES('
              +  '''02'','''+wTipoCont+''','''+xCntComprob+''','+IntToStr(xNReg)+','''+dbseAno.text+''','''+dbseAno.text+dbseMes.text+''','''+vDOCID+''','''+vDOCDES+''','
              +  ''''+Dm1.cdsMGrupo.FieldByName('CtaCobr').asstring+''',null,'''+Dm1.cdsMGrupo.FieldByName('Lote').asstring+''',''COBR'','''+vCNTNODOC+''','''+COPY(glosa1,1,40)+''','
              +  '0.00,'+Dm1.cdsMGrupo.FieldByName('MONTODEV').asstring+','''+Dm1.cdsMGrupo.FieldByName('ASOFECDEV').asstring+''','''+Dm1.cdsMGrupo.FieldByName('ASOFECDEV').asstring+''','''+Dm1.cdsMGrupo.FieldByName('ASOFECDEV').asstring+''')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      DM1.cdsMGrupo.Next;
      xNumComp:=xNumComp+1;
   end;

   //ACTUALIZO DATOS GENERALES
    xSql := 'update CNT311COB '
          +'set CNTTCAMBIO='+FloatToStr(xTCambio)
          +',CNTDH = case when CNTDEBEMN>0 then ''D'' else ''H'' end'
          +',CNTMTOORI=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOLOC=case when CNTDEBEMN>0 then CNTDEBEMN else CNTHABEMN end'
          +',CNTMTOEXT=case when CNTDEBEMN>0 then round(CNTDEBEMN/'+FloatToStr(xTCambio)+',2) else round(CNTHABEMN/'+FloatToStr(xTCambio)+',2) end'
       //Inicio: DPP_201208_COB
       // +',CNTFCOMP=TO_DATE(SYSDATE),CNTESTADO='+quotedstr('I')
          +',CNTESTADO='+quotedstr('I')
       //Fin: DPP_201208_COB
          +',CNTCUADRE='+quotedstr('N')+', CNTUSER='+quotedstr(dm1.wUsuario)
          +',CNTFREG=TO_DATE(SYSDATE), CNTHREG=SYSDATE'
          +',CNTMM='+quotedstr(xfecmes)     +', CNTDD='+quotedstr(xfecdia)
          +',CNTTRI='+quotedstr(xfectrim)   +', CNTSEM='+quotedstr(xfecsem)
          +',CNTSS='+quotedstr(xfecss)      +', CNTAATRI='+quotedstr(xfecaatri)
          +',CNTAASEM='+quotedstr(xfecaasem)+', CNTAASS='+quotedstr(xfecaass)
          +',TMONID='+quotedstr('N')
          +',TDIARDES='+quotedstr('TRANSF. DE COBRANZAS')
          +',CNTDEBEME=round(CNTDEBEMN/'+FloatToStr(xTCambio)+',2) '
          +',CNTHABEME=round(CNTHABEMN/'+FloatToStr(xTCambio)+',2) '
          +',CNTTS='+quotedstr('BV')+', CNTMODDOC='+quotedstr('COB')
          +',MODULO='+quotedstr('COB')
          +' where TDIARID='+quotedstr(wTipoCont)
          +'   and CNTANOMM ='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


   //ACTUALIZAO TIPO DE DIARIO
   try
   xSQL := 'update CNT311COB '
          +'set TDIARID=''32'',CNTNODOC=SUBSTR(CNTNODOC,1,10) '
          +'where TDIARID='+quotedstr(wTipoCont)
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
      ShowMessage('Error : al Contabilizar');
      Exit;
   end;

   //INSERTO CABECERA
   xSQL := 'insert into CNT300COB ( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, '
                                  +'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, '
                                  +'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, '
                                  +'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, '
                                  +'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, '
                                  +'CNTTS, DOCMOD, MODULO ) '
          +'select A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, '
          +'MAX(CASE WHEN CNTREG=2 THEN A.CNTGLOSA||''-''||TO_CHAR(A.CNTFEMIS,''YYYYMMDD'') ELSE '' '' END )  CNTGLOSA,'+FloatToStr(xTCambio)+','+'A.CNTFCOMP, ''I'', ''N'', '
          +' '''+dm1.wUsuario+''' CNTUSER, MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, '
          +'A.CNTMM, A.CNTDD, A.CNTTRI, '
          +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, '
          +' ''N'' TMONID, null FLAGVAR, A.TDIARDES, '
          +'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), '
                 +'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) '
          +'from CNT311COB A '
          +'where TDIARID='+quotedstr('32')
          +'  and ((CNTLOTE LIKE ''DE%'' AND CNTLOTE<>''DEVO'') OR (CNTLOTE=''EFBN'')) '
          +'  and CNTANOMM='+quotedstr(dbseAno.text+dbseMes.text)
          +'group by A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB, A.CNTLOTE,'
          +'A.CNTFCOMP, A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, '
          +'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS,  A.TDIARDES ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   Screen.Cursor:=crDefault;
   MessageDlg('Se Contabilizo con EXITO !!!', mtConfirmation, [mbOk], 0);
   prbAvance.Position:=0;
   prbAvance.Visible:=False;

 end;


//Reporte de la Contabilizacion
procedure TFContabilizacionDev.ReporteContabilizaExcFSC(cTabla,xPeriodo: String);
VAR XSQL:STRING;
begin

// Inicio HPC_201724_COB     : Modificar Filtro de Contabilidad
     xSQL:='SELECT CIAID,max(CNTGLOSA)CNTGLOSA,TDIARID,CNTANOMM,CNTFEMIS,CNTCOMPROB,CNTREG,CNTDH,CUENTAID,DOCID, CNTSERIE, '
        +  'CNTNODOC, sum( CNTDEBEMN ) CNTDEBEMN, sum( CNTHABEMN ) CNTHABEMN,MAX(AUXID) AUXID,MAX(CCOSID)CCOSID, CNTLOTE LOTE '
        +'FROM '+cTabla+' '
        +'WHERE CIAID>=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +' AND TDIARID IN (''32'',''30'',''35'',''33'') '
        +' AND ((CNTLOTE LIKE ''DE%'' AND CNTLOTE<>''DEVO'' AND CNTLOTE<>''DECC'') OR (CNTLOTE=''EFBN'') )  and CNTANOMM='''+xPeriodo+''' '
        +' AND CNTFEMIS >='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS <='+quotedstr(dtpFecFin.Text)
        +'GROUP BY CIAID, TDIARID, CNTANOMM, CNTFEMIS,CNTCOMPROB,CNTREG,CNTDH, CUENTAID, DOCID, CNTSERIE, CNTNODOC,CNTLOTE '
        +'ORDER BY CIAID, TDIARID, CNTCOMPROB';
// Fin   HPC_201724_COB     : Modificar Filtro de Contabilidad
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   DM1.cdsQry.IndexFieldNames :='CIAID;CNTCOMPROB;CNTREG';

   If DM1.cdsQry.RecordCount=0 Then
     Begin
      //en caso no exista registros, cierra y limpia índice
        DM1.cdsQry.Close;
        DM1.cdsQry.IndexFieldNames :='';
       ShowMessage('No existe información para procesar');
       exit;
     End;


   ppdb1.DataSource := Dm1.dsQry;
   ppr2.Print;
   ppr2.Stop;
   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames :='';
   //ppd2.ShowModal;
 end;


//Reporte de Contabilización previa
procedure TFContabilizacionDev.fcShapeBtn11Click(Sender: TObject);
begin
   ReporteContabilizaExcFSC('CNT311COB',dbseAno.Text+dbseMes.Text);
 end;

//Transferencia a la Contabilidad
procedure TFContabilizacionDev.fcShapeBtn12Click(Sender: TObject);
begin
  TransferirContDevExcFSC( 'DX', '32', xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r );
 end;

//Transferencia a la Contabilidad
procedure TFContabilizacionDev.TransferirContDevExcFSC(cLote, cOrigen,xPeriodo, xCnt300, xCnt311, xCnt300r, xCnt311r: String);
var
   xSQL, xNumMax, xNumMin : String;
   xCambioNum,xLote,xLoteB : String;
   NumComp, NumCompAnt : String;
   xforpagid:string;
begin

// Inicio HPC_201724_COB     : Modificar Filtro de Contabilidad
     xSQL:='SELECT CIAID,max(CNTGLOSA)CNTGLOSA,TDIARID,CNTANOMM,CNTFEMIS,CNTCOMPROB,CNTREG,CNTDH,CUENTAID,DOCID, CNTSERIE, '
        +  'CNTNODOC, sum( CNTDEBEMN ) CNTDEBEMN, sum( CNTHABEMN ) CNTHABEMN,MAX(AUXID) AUXID,MAX(CCOSID)CCOSID, CNTLOTE LOTE '
        +'FROM CNT311COB '
        +'WHERE CIAID>=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +' AND TDIARID IN (''32'',''30'',''35'',''33'') '
        +' AND ((CNTLOTE LIKE ''DE%'' AND CNTLOTE<>''DEVO'' AND CNTLOTE<>''DECC'') OR (CNTLOTE=''EFBN''))  and CNTANOMM='''+xPeriodo+''' '
        +' AND CNTFEMIS >='+quotedstr( dtpFecIni.Text )+' and CNTFEMIS <='+quotedstr(dtpFecFin.Text)
        +'GROUP BY CIAID, TDIARID, CNTANOMM, CNTFEMIS,CNTCOMPROB,CNTREG,CNTDH, CUENTAID, DOCID, CNTSERIE, CNTNODOC,CNTLOTE '
        +'ORDER BY CIAID, TDIARID, CNTCOMPROB';
// Fin   HPC_201724_COB     : Modificar Filtro de Contabilidad
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount=0 Then
     Begin
       ShowMessage('No existe información para procesar');
       exit;
     End;


   If DM1.cdsQry.RecordCount=0 Then
     Begin
       ShowMessage('No existe información para procesar');
       exit;
     End;


   If MessageDlg('¿Está Seguro de Transferir a la Contabilidad ( '+cLote+ ' ) ?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

// Inicio HPC_201724_COB     : Modificar Filtro de Contabilidad
   //Definición de condiciones segun Lote
   if cLote='DX'  Then Begin xLote := '((CNTLOTE LIKE ''DE%'' AND CNTLOTE<>''DEVO'' AND CNTLOTE<>''DECC'') OR CNTLOTE =''EFBN'')'; xLoteB :=  '((CNTLOTE LIKE ''DE%'' AND CNTLOTE<>''DEVO'' AND CNTLOTE<>''DECC'') OR B.CNTLOTE =''EFBN'')'; xforpagid:='A.FORPAGID=''10'' ';  End;
// Fin   HPC_201724_COB     : Modificar Filtro de Contabilidad


   Screen.Cursor:=crHourGlass;
   xSQL:='Select * from CNT300 A '
        +'where CIAID>=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' '
        +  'and '+xLote
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and '+xLoteB+'  AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and '+xLoteB+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Open;
   except
   end;


   if DM1.cdsQry2.Recordcount>0 then
   begin
      If MessageDlg('Asientos Generados fueron Transferidos a Contabilidad. ¿Desea Eliminar Asientos Transferidos?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
      Begin
         Screen.Cursor:=crDefault;
         Exit;
      end;

      xSQL:='Select * from CNT300 A '
           +'where CIAID>=''02'' AND TDIARID='''+cOrigen+''' and CNTANOMM='''+xPeriodo+''' '
           +  'and '+xLote+' and CNTESTADO=''P'' '
           +  'and exists( select B.cntcomprob from CNT311 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
           +                'and '+xLoteB+' AND A.CNTCOMPROB=B.CNTCOMPROB '
           +              'union all '
           +              'select B.cntcomprob from CNT301 B '
           +              'where B.CNTANOMM='''+xPeriodo+''' '
           +                'and '+xLoteB+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( XSQL );
      try
         DM1.cdsQry2.Open;
      except
      end;

      if DM1.cdsQry2.Recordcount>0 then
      begin
         Screen.Cursor:=crDefault;
         MessageDlg('Asientos ya fueron Aceptados por Contabilidad. NO se pueden Eliminar !!!', mtError, [mbOk], 0);
         Exit
      end;
   end;

   xSQL:='Select * from '+xCnt300r+' A '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''',''30'') and CNTANOMM='''+xPeriodo+''' '
        +  'and '+xLote+' '
        +  'and exists( select B.cntcomprob from CNT311 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and '+xLoteB+' AND A.CNTCOMPROB=B.CNTCOMPROB '
        +              'union all '
        +              'select B.cntcomprob from CNT301 B '
        +              'where B.CNTANOMM='''+xPeriodo+''' '
        +                'and '+xLoteB+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   try
      DM1.cdsQry.Open;
   except
      Exit;
   end;


   If DM1.cdsQry.RecordCount>0 Then
    begin
       If MessageDlg('Existen Registros Transferidos de Cobranzas. ¿Desea continuar con Transferencia?',mtconfirmation,[mbYes,MbNo],0)=mrNo then
       Begin
          Screen.Cursor:=crDefault;
          Exit;
       end;
       xSQL:='Delete from '+xCnt300r+' A '
            +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and '+ xLote
            +  'and exists( select B.cntcomprob from CNT311 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and '+xLoteB+' AND A.CNTCOMPROB=B.CNTCOMPROB '
            +              'union all '
            +              'select B.cntcomprob from CNT301 B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and '+xLoteB+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
          DM1.cdsQry2.Execute;
       except
       end;

       xSQL:='Delete from '+xCnt311r+' '
            +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and '+ xLote ;
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest( xSQL );
       try
         DM1.cdsQry2.Execute;
       except
       end;

      xSQL:='Delete from CNT301 '
           +'where CIAID>=''02'' AND TDIARID in (''30'','''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
           +  'and '+ xLote ;
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest( xSQL );
      try
         DM1.cdsQry2.Execute;
      except
      end;

   end;

   // Para poder obtener el xNumMin y xNumMax
   //PARA RENUMERAR ORIGEN 32
    xSQL:='SELECT NVL(MAX( CNTCOMPROB ),''0'') NUMMAX, NVL(MIN( CNTCOMPROB ),''0'') NUMMIN '
         +'FROM '+xCNT311+' '
         +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
         +  'and TDIARID in ('''+cOrigen+''') '
         +  'and '+xLote
         +  ' ORDER BY TDIARID, CNTCOMPROB';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
    xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;


    xSQL:='select NVL(MAX( CNTCOMPROB ),''0'') MAXIMO FROM '+xCnt300r+' '
         +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
         +'order by CIAID, TDIARID, CNTCOMPROB';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest( xSQL );
    try
       DM1.cdsQry2.oPEN;
    except
    end;

    NUMCOMP    :=DM1.cdsQry2.FieldByName('MAXIMO').ASSTRING;
    NUMCOMP    := DM1.strzero(inttostr(strtoint(numcomp)+1),10);
    NUMCOMPANT :=xNumMin;
    xCambioNum := 'F';


    WHILE NUMCOMPANT<=xNumMax do
    BEGIN
      xSQL:='update '+xCnt300+' '
            +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
            +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +'and '+xLote
            +' and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
        +'set CNTCOMPROB = '''+'RF'+Copy(NUMCOMP,3,8)+''' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +'and '+xLote
        +' and CNTCOMPROB='''+NUMCOMPANT+''' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
      NUMCOMP:=DM1.strzero(inttostr(strtoint(NUMCOMP)+1),10);
      NUMCOMPANT:=DM1.strzero(inttostr(strtoint(NUMCOMPANT)+1),10);
      xCambioNum := 'S';
    END;

    if xCambioNum='S' then
    begin

      xSQL:='update '+xCnt300+' A '
            +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
            +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
            +  'and '+xLote
            +  ' and exists( select B.cntcomprob from CNT311COB B '
            +              'where B.CNTANOMM='''+xPeriodo+''' '
            +                'and '+xLote+' AND A.CNTCOMPROB=B.CNTCOMPROB )';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;

      xSQL:='update '+xCnt311+' '
           +'set CNTCOMPROB = ''00''||SUBSTR(CNTCOMPROB,3,8)'+' '
           +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
           +  'and '+xLote;
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      try
         DM1.cdsQry.Execute;
      except
      end;
    end;


   // Valida si no hay repetidos antes de insertarlos en la tabla xCnt300r
   // origen 35
   xSQL:='SELECT MAX( CNTCOMPROB ) NUMMAX, MIN( CNTCOMPROB ) NUMMIN FROM '+xCNT311+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
        +  'and '+xLote
        +' ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xNumMax:=DM1.cdsQry.FieldByName('NUMMAX').AsString;
   xNumMin:=DM1.cdsQry.FieldByName('NUMMIN').AsString;

   xSQL:='SELECT * FROM '+xCnt300r+' '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+xPeriodo+''' '
        +  'AND TDIARID in ('''+cOrigen+''') '
        +  'AND CNTCOMPROB BETWEEN '''+xNumMin+''' AND '''+xNumMax+''' '
        +'ORDER BY TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if DM1.cdsQry.RecordCount>0 Then
   begin
      MessageDlg('Error : En Contabilidad existen comprobantes con el mismo Numero, Debe volver a Transferir Contabilidad !!!', mtError, [mbOk], 0);
      Exit;
   end;


   // transferir
   xSQL:='insert into '+xCnt300r+' '
        +'select * from '+xCNT300+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +'and '+xLote
        +' order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
   end;

   xSQL:='insert into '+xCnt311r+' '
        +'select * from '+xCNT311+' '
        +'where CIAID>=''02'' AND TDIARID in ('''+cOrigen+''') and CNTANOMM='''+xPeriodo+''' '
        +  'and '+xLote
        +' order by CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
      DM1.cdsQry2.Execute;
   except
   end;


   try
      //--ACTUALIZA FLAG CONTB. DESEMBOLSO EN EFECTIVO
      xSQL:='UPDATE COB_FSC_PAGOS_AL_FSC A SET A.CNTFLAG=''S'', CNTANOMM='''+xPeriodo+''' '
           +'Where '+xforpagid+' AND A.FEC_CRE_COB_FSC>='''+dtpFecIni.Text+''' AND A.FEC_CRE_COB_FSC<='''+dtpFecFin.Text+''' '+
            ' and EST_COB_COD NOT IN (''13'',''04'') and nvl(A.IMP_COB_DEU,0)>0 ';
      DM1.cdsQry2.DataRequest( xSQL );
      DM1.cdsQry2.Execute;
   except
   end;

   Screen.Cursor:=crDefault;
   MessageDlg('La Transferencia Exitosa !!!', mtConfirmation, [mbOk], 0);
 end;

//Reporte de la transferencia contable
procedure TFContabilizacionDev.fcShapeBtn13Click(Sender: TObject);
 begin
   ReporteContabilizaExcFSC('CNT311',dbseAno.Text+dbseMes.Text);
 end;

// regulariza Cierre de cds
procedure TFContabilizacionDev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsQry5.IndexFieldNames :='';
   DM1.cdsQry5.Close;
   DM1.cdsQry.IndexFieldNames :='';
   DM1.cdsQry.Close;
   DM1.cdsMovCnt1.IndexFieldNames :='';
   DM1.cdsMovCnt1.Close;
   DM1.cdsQry6.IndexFieldNames :='';
   DM1.cdsQry6.Close;
   DM1.cdsTipDesem.IndexFieldNames :='';
   DM1.cdsTipDesem.Close;
   DM1.cdsQry3.IndexFieldNames :='';
   DM1.cdsQry3.Close;
   DM1.cdsMovCnt1.IndexFieldNames :='';
   DM1.cdsMovCnt1.Close;
   DM1.cdsMGrupo.IndexFieldNames :='';
   DM1.cdsMGrupo.Close;
   DM1.cdsQry2.IndexFieldNames :='';
   DM1.cdsQry2.Close;
end;
// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacionDev.btnExcelDevClick(Sender: TObject);
var xsql:string;
begin
     xSql := 'SELECT ASOFECDEV,UPROID,UPAGOID,USEID UGEL, ASOCODMOD,ASONUMDEV,DESCRIP,ASOAPENOM,TIPDESEID,MONTODEV,OFDESID,OFDESNOM,ASOTIPID,BANCOID,CUENTA,NUM_DEU,CAJERO,DOCOFI,'
          +'  (SELECT CTA_FSC FROM APO107 H WHERE H.ASOTIPID=M.ASOTIPID) CTATIPASO,'
          +'(SELECT CTACOBR FROM TGE106 WHERE BANCOID=''15'' AND CIAID=''02'')CTACOBR,'
          +'CASE WHEN OFDESID IS NOT NULL THEN ''DE''||OFDESID ELSE ''EFBN'' END LOTE '
          +'FROM '
          +'( '
          +' SELECT ASOFECDEV,UPROID,UPAGOID,USEID,ASOCODMOD,ASONUMDEV,DESCRIP,ASOAPENOM,TIPDESEID,MONTODEV,OFDESID,OFDESNOM, '
          +' CASE WHEN N.ASOTIPID IS NULL THEN (SELECT ASOTIPID FROM APO201 M WHERE M.ASOID=N.ASOID)ELSE ASOTIPID END ASOTIPID,BANCOID,NUM_DEU,CUENTA,CAJERO,DOCOFI  '
          +' FROM '
          +'( '
          +'SELECT A.ASOFECDEV,A.UPROID,A.UPAGOID,A.USEID,A.ASOCODMOD,A.ASONUMDEV,''DEV. EXC. FSC'' DESCRIP,A.ASOID,A.ASOAPENOM, B.TIPDESEABR TIPDESEID, A.ASOMONDEV MONTODEV,A.OFDESID,'
          +'C.OFDESNOM, '
          +'(SELECT MAX(D.BANCOID) TIP_ASO_ORIGEN  FROM COB_FSC_PAGOS_AL_FSC D,COB_FSC_DEUDA_FSC_CAB E '
          +'WHERE D.ASOID=A.ASOID AND D.NUM_DEV_EXC=A.ASONUMDEV AND D.NUM_DEU=E.NUM_DEU '
          +'GROUP BY D.NUM_DEU) BANCOID, '
          +'(SELECT MAX(D.CCBCOID) TIP_ASO_ORIGEN  FROM COB_FSC_PAGOS_AL_FSC D,COB_FSC_DEUDA_FSC_CAB E '
          +'WHERE D.ASOID=A.ASOID AND D.NUM_DEV_EXC=A.ASONUMDEV AND D.NUM_DEU=E.NUM_DEU '
          +'GROUP BY D.NUM_DEU) CUENTA, '
          +'(SELECT MAX(E.TIP_ASO_ORIGEN) TIP_ASO_ORIGEN  FROM COB_FSC_PAGOS_AL_FSC D,COB_FSC_DEUDA_FSC_CAB E '
          +'WHERE D.ASOID=A.ASOID AND D.NUM_DEV_EXC=A.ASONUMDEV AND D.TIP_MOV_DEU=''DEV'' AND D.NUM_DEU=E.NUM_DEU '
          +'GROUP BY D.NUM_DEU) ASOTIPID, '
          +'(SELECT MAX(D.NUM_DEU) NUM_DEU  FROM COB_FSC_PAGOS_AL_FSC D,COB_FSC_DEUDA_FSC_CAB E '
          +'WHERE D.ASOID=A.ASOID AND D.NUM_DEV_EXC=A.ASONUMDEV AND D.TIP_MOV_DEU=''DEV'' AND D.NUM_DEU=E.NUM_DEU '
          +'GROUP BY D.NUM_DEU) NUM_DEU, '
          +'NVL((SELECT MAX(USUARIO) USUARIO FROM COB_DEV_EXC_FSC '
          +'WHERE ASOID=A.ASOID AND ASOANODEV=A.ASOANODEV AND ASONUMDEV=A.ASONUMDEV),'''') CAJERO,A.DOCOFI '
          +'FROM MDEVCAB A,CRE104 B,APO110 C '
          +'WHERE ASOFECDEV>='+quotedstr(formatdatetime(wFormatFecha,dtpFecIni.Date))
          +' AND  ASOFECDEV<='+quotedstr(formatdatetime(wFormatFecha,dtpFecFin.Date))
          +' AND  FLGFSC IS NOT  NULL AND A.TIPDESEID=B.TIPDESEID(+)  AND A.OFDESID=C.OFDESID(+) '
          +')N '
          +')M ';
        Screen.Cursor := crHourglass;
        dm1.cdsQry.Close;
        dm1.cdsQry.DataRequest(xSql);
        dm1.cdsQry.Open;
        If dm1.cdsQry.RecordCount=0 Then
        Begin
         ShowMessage('No existe información para contabilizar');
         Screen.Cursor:=crDefault;
         exit;
        End;
        dbgExcel.DataSource := DM1.dsQry;
        xArchivo:='ReporteSustentoDevolucionesExcesoFSC';
        DM1.ExportaGridExcel(dbgExcel,xArchivo);
        Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB

// Inicio HPC_201730_COB
// ADICIONAR CAMPOS A LA ESTRUCTURA DE LOS REPORTES SUSTENTO DE LA CONTABILIZACIÓN
procedure TFContabilizacionDev.btnExcelDevCuoClick(Sender: TObject);
var xsql:string;
begin
     xsql :='WITH APROBACION AS '
        +'(SELECT TIPO,ASOID,SUM(NVL(IMPDEV,0)) IMPDEV,SUM(NVL(IMPAPL,0)) IMPAPL,USUCRE,USUAPR,MOTDEV, '
        +' ANODEV,CORDEV,MAX(FLADEVEFE)FLADEVEFE,MAX(FLAANU)FLAANU,MAX(MOTDES)MOTDES,NUMDEU,ASONUMDEV, '
        +' ORIDEVOLUCION, MOTDEVOLUCION '
        +' FROM '
        +' (SELECT ''CRÉDITOS'' TIPO,A.ASOID,A.IMPDEV,A.IMPAPL,A.USUCRE,A.USUAPR,A.MOTDEV,A.ANODEV,A.CORDEV, '
        +'        A.FLADEVEFE,A.FLAANU,A.MOTDES,B.CREDID NUMDEU ,LPAD(B.ASONUMDEV,6,''0'') ASONUMDEV, '
        +' D.DESCRIPCION ORIDEVOLUCION,C.DESCRIPCION MOTDEVOLUCION '
        +' FROM '
        +' (SELECT ASOID,IMPDEV,IMPAPL,USUCRE,USUAPR,MOTDEV,ANODEV,CORDEV,FLADEVEFE,FLAANU,MOTDES,CODORIDEV,CODMOTDEV '
        +'  FROM PRE_APR_DEV) A, '
        +' (SELECT ASOID,CREDID,ANODEV,CORDEV,ASONUMDEV '
        +'  FROM PRE_APR_DEV_DET) B,COB_REF_DEVOLUCIONES C, COB_REF_DEVOLUCIONES D '
        +'  WHERE A.ASOID=B.ASOID '
        +'  AND  A.ANODEV >='+COPY(DateToStr(dtpFecIni.Date),7,4)+' AND A.ANODEV<='+COPY(DateToStr(dtpFecFin.Date),7,4)
        +'  AND A.ANODEV=B.ANODEV AND A.CORDEV=B.CORDEV AND  A.MOTDES IS NULL AND A.FLAANU IS NULL '
        +'  AND C.CODTIPREF=''MOT'' AND C.CODREF=A.CODMOTDEV '
        +'  AND D.CODTIPREF=''ORI'' AND D.CODREF=A.CODORIDEV) '
        +'GROUP BY TIPO,ASOID,USUCRE,USUAPR,MOTDEV,ANODEV,CORDEV,NUMDEU,NUMDEU,ASONUMDEV,ORIDEVOLUCION,MOTDEVOLUCION) '
        +'  SELECT APROBACION.TIPO, APROBACION.MOTDEV OBSDEV, APROBACION.USUCRE, APROBACION.USUAPR, MDEVCAB.ASOCODMOD,'
        +'         MDEVCAB.USEID,APO101.USENOM,DEVDET.ASOID,MDEVCAB.ASOAPENOM, DEVDET.ASONUMDEV,DEVDET.ASOANODEV,'
        +'         MDEVCAB.ASOFECDEV,NVL(MDEVCAB.ASOMONDEV, 0) ASOMONDEV,'
        +'         DEVDET.CREAMORT,DEVDET.CREINTERES,DEVDET.CREFLAT,DEVDET.MONCOBDESGRAV,DEVDET.CREDEVEXC,DEVDET.CRECUOTA,'
        +'         DEVDET.CREANO,DEVDET.CREMES,MDEVCAB.TIPDESEID,'
        +'       CRE104.TIPDESEABR || '' - '' || MDEVCAB.DOCOFI TIPDESEABR,TGE158.DPTODES,APO201.ASOTIPID,'
        +'       APROBACION.ORIDEVOLUCION,APROBACION.MOTDEVOLUCION,APO105.REGPENDES, '
        + '      (SELECT FORPAGABR'
        + '         FROM CRE310  '
        + '        WHERE ASOID=MDEVCAB.ASOID and FREG=(SELECT max(freg) from CRE310 WHERE ASOID=MDEVCAB.ASOID and creestid not in (''13'',''04'',''99'')) '
        + '          AND CREESTID not in (''13'',''04'',''99'') AND ROWNUM=1 '
        + '     GROUP BY FORPAGABR,NROOPE,FOPERAC) ULT_FORPAGABR,'
        + '      (SELECT FORPAGABR '
        + '      FROM CRE310 '
        + '      WHERE ASOID=MDEVCAB.ASOID '
        + '      AND NUMDEV=MDEVCAB.ASONUMDEV '
        + '      AND FORPAGOID in (''01'',''09'',''22'') AND FORPAGABR <>''DEV'' AND ROWNUM=1 )FORPAGABR, '
        + '      MDEVCAB.UPROID, '
        + '      MDEVCAB.UPAGOID, '
        + '      (SELECT SUBSTR(CREDID,6,2) '
        + '      FROM MDEVDET '
        + '      WHERE ASOID=MDEVCAB.ASOID '
        + '      AND ASONUMDEV=MDEVCAB.ASONUMDEV '
        + '      AND ASOANODEV=MDEVCAB.ASOANODEV '
        + '      AND CREESTID not in (''13'',''04'') AND ROWNUM=1 '
        + '      )TIPCREID, '
        + '      (SELECT CREDID '
        + '      FROM MDEVDET '
        + '      WHERE ASOID=MDEVCAB.ASOID '
        + '      AND ASONUMDEV=MDEVCAB.ASONUMDEV '
        + '      AND ASOANODEV=MDEVCAB.ASOANODEV '
        + '      AND CREESTID not in (''13'',''04'') AND ROWNUM=1 '
        + '      )CREDID, '
        + '      (SELECT NROOPE '
        + '      FROM CRE310 '
        + '      WHERE ASOID=MDEVCAB.ASOID '
        + '      AND NUMDEV=MDEVCAB.ASONUMDEV '
        + '      AND CREESTID not in (''13'',''04'',''99'') AND ROWNUM=1 '
        + '      )NROOPE, '
        + '      (SELECT FOPERAC '
        + '      FROM CRE310 '
        + '      WHERE ASOID=MDEVCAB.ASOID '
        + '      AND NUMDEV=MDEVCAB.ASONUMDEV '
        + '      AND CREESTID not in (''13'',''04'',''99'') AND ROWNUM=1 '
        + '      )FOPERAC, '
        + '      (SELECT FOPERAC '
        + '         FROM CRE310  '
        + '        WHERE ASOID=MDEVCAB.ASOID and freg=(SELECT max(freg) from CRE310 WHERE ASOID=MDEVCAB.ASOID and creestid not in (''13'',''04'',''99'')) '
        + '          AND CREESTID not in (''13'',''04'',''99'') AND ROWNUM=1 '
        + '     GROUP BY NROOPE,FOPERAC) ULT_FOPERAC,'
        + '      (SELECT SUM(NVL(CREMTOCOB,0)) '
        + '         FROM CRE310  '
        + '        WHERE ASOID=MDEVCAB.ASOID AND freg=(SELECT MAX(freg) FROM CRE310 WHERE ASOID=MDEVCAB.ASOID and CREESTID not in (''13'',''04'',''99'')) '
        + '          AND CREESTID not in (''13'',''04'',''99'')  AND ROWNUM=1 '
        + '     GROUP BY NROOPE,FOPERAC)CREMTOCOB '
        +' FROM (SELECT ASOID,ASONUMDEV,ASOANODEV,CREDID,SUM(NVL(CREDEVEXC, 0) + NVL(MONDEVCUO, 0)) MONDEV,  '
        +'       SUM(NVL(CREDEVEXC, 0) + NVL(MONDEVCUO, 0)) MONDEV,'
        +'       SUM(NVL(CREAMORT,0))CREAMORT,'
        +'       SUM(NVL(CREINTERES,0))CREINTERES,'
        +'       SUM(NVL(CREFLAT,0))CREFLAT,'
        +'       SUM(NVL(MONCOBDESGRAV,0))MONCOBDESGRAV,'
        +'       SUM(NVL(CREDEVEXC,0))CREDEVEXC,MAX(CRECUOTA)CRECUOTA,MAX(CREANO)CREANO,MAX(CREMES)CREMES '
        +'       FROM MDEVDET  '
        +'      WHERE FREG BETWEEN To_Date(' + QuotedStr(DateToStr(dtpFecIni.Date)) + ',''dd/mm/yyyy'') '
        +'                      AND To_Date(' + QuotedStr(DateToStr(dtpFecFin.Date)) + ',''dd/mm/yyyy'') '
        +'      GROUP BY ASOID, ASONUMDEV, ASOANODEV, CREDID  '
        +'      ORDER BY ASOANODEV, ASONUMDEV) DEVDET, MDEVCAB,CRE104 ,APO101,APROBACION,APO201,TGE158,APO105  '
        +' WHERE DEVDET.ASONUMDEV = MDEVCAB.ASONUMDEV '
        +'  AND DEVDET.ASOANODEV = MDEVCAB.ASOANODEV '
        +'  AND MDEVCAB.ASOFECDEV BETWEEN To_Date(' + QuotedStr(DateToStr(dtpFecIni.Date)) + ',''dd/mm/yyyy'') '
        +'                             AND To_Date(' + QuotedStr(DateToStr(dtpFecFin.Date)) + ',''dd/mm/yyyy'') '
        +'  AND MDEVCAB.TIPDESEID = CRE104.TIPDESEID(+) '
        +'  AND DEVDET.ASOID=APROBACION.ASOID AND DEVDET.ASONUMDEV=APROBACION.ASONUMDEV '
        +'  AND MDEVCAB.UPROID=APO101.UPROID(+)  AND MDEVCAB.UPAGOID=APO101.UPAGOID(+) AND MDEVCAB.USEID=APO101.USEID(+) '
        +'  AND APO201.ASOID=MDEVCAB.ASOID  '
        +'  AND TGE158.DPTOID=APO201.DPTOID  '
        +'  AND APO105.REGPENID(+)=APO201.REGPENID '
        +' ORDER BY CRE104.TIPDESEABR || '' - '' || MDEVCAB.DOCOFI,TIPO,DPTODES,USENOM,ASOFECDEV  ';

        Screen.Cursor := crHourglass;
        dm1.cdsQry.Close;
        dm1.cdsQry.DataRequest(xSql);
        dm1.cdsQry.Open;

        If dm1.cdsQry.RecordCount=0 Then
        Begin
         ShowMessage('No existe información para contabilizar');
         Screen.Cursor:=crDefault;
         exit;
        End;

        dbgExcel.DataSource := DM1.dsQry;
        xArchivo:='ReporteSustentoDevolucionesCuotasExcesoFSC';
        DM1.ExportaGridExcel(dbgExcel,xArchivo);
        //DM1.HojaExcel(xArchivo, DM1.dsQry, dtgData);
        Screen.Cursor := crDefault;
end;
// Final HPC_201730_COB
end.
