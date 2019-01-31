unit COB452;
// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Cobranzas
// Unidad                    : COB452
// Formulario                : FContabilizacionRef
// Fecha de Creación         :
// Autor                     :
// Objetivo                  : Contabilización de las operaciones refinanciadas.

// Actualizaciones
// HPC_201226_COB Inicializa Tipo de Contabilización para cuando ingresa en forma directa
// DPP_201219_COB : Se realiza el pase a producción a partir del HPC_201226_COB
// HPC_201736_COB : Exportar a Excel  los reportes sustento de la contabilización

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Wwdbspin, wwdbdatetimepicker, StdCtrls,
  ComCtrls, wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Buttons, DB,
  Wwdbigrd, Grids, Wwdbgrid, ppBands, ppClass, ppProd, ppReport, ppEndUsr,
  ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppVar,
// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
  ppParameter, DBGrids;
// Fin HPC_201736_COB
type
  TFContabilizacionRef = class(TForm)
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
    bbtnConsis: TBitBtn;
    fcShpDevoTrans: TfcShapeBtn;
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
    ppd1: TppDesigner;
    ppdb1: TppDBPipeline;
    fcShapeBtn5: TfcShapeBtn;
    GroupBox2: TGroupBox;
    dbseMes: TwwDBSpinEdit;
    dbseAno: TwwDBSpinEdit;
    fcShapeBtn7: TfcShapeBtn;
    Label5: TLabel;
    ppd2: TppDesigner;
    ppr2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine1: TppLine;
    ppDBText10: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppdb2: TppDBPipeline;
// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
    btnExcelOpeRef: TfcShapeBtn;
    dbgExcel: TDBGrid;
// Fin HPC_201736_COB
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure fcShapeBtn4Click(Sender: TObject);
    procedure fcShapeBtn6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtpFCompExit(Sender: TObject);
    procedure bbtnConsisClick(Sender: TObject);
    procedure fcShpDevoTransClick(Sender: TObject);
    procedure fcShapeBtn5Click(Sender: TObject);
    procedure PasaDatosFecha;
    procedure fcShapeBtn7Click(Sender: TObject);
    procedure dbseAnoExit(Sender: TObject);
    procedure dbseMesExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
    procedure btnExcelOpeRefClick(Sender: TObject);
// Fin HPC_201736_COB
  private
    { Private declarations }
    xAgrupa : String;
    xFechas : String;
    xPeriodo: String;
    xPerRep : String;
    xCNT300  : String;
    xCNT311  : String;
    xCnt300r, xCnt311r : String;
    cLink   : String;
    procedure GeneraData;
    procedure GeneraDataAsiento2;
    procedure GeneraCNT300;
    procedure GeneraCNT3002;
    procedure CuadrarAsiento;
  public
    { Public declarations }
  end;

var
  FContabilizacionRef: TFContabilizacionRef;

implementation

{$R *.DFM}

USES COBDM1,COB409;

procedure TFContabilizacionRef.fcShapeBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFContabilizacionRef.fcShapeBtn1Click(Sender: TObject);
var
   xSQL : String;
   cont : Integer;
begin
// sql PARA GENERAR CONTABILIZACION

   xSQL:='SELECT CRE301.CREFOTORG, NROFICIO, TIPDESEID, '
        +   'SUM( CREMTOOTOR ) MONTO_OTO, SUM( CREMTOGIR ) MONTO_GIR, '
        +   'SUM( CREMTONABO ) MONTO_ABO, CASE WHEN MAX(ESTDEP)=''28'' THEN SUM(DESEFE) ELSE SUM( CRE301.CREMTODEP ) END MONTO_DEP, '
        +   'SUM( CREMTOGIR ) + CASE WHEN MAX(ESTDEP)=''28'' THEN SUM(DESEFE) ELSE SUM( CRE301.CREMTODEP ) END MONTO_REAL, '
        +   'COUNT(CRE301.CREFOTORG) REGISTROS, ''          '' COMPROBANTE '
        +'FROM CRE301'+cLink+', SRB000'+cLink+' '
        +'WHERE CRE301.CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,dtpFecIni.Date))
        + ' AND CRE301.CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,dtpFecFin.Date))
        + ' AND NOT CREESTID IN ( ''13'' ) '
        + ' AND TIPDESEID IN (''10'') '
        + ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        + ' AND CRE301.ASOID=SRB000.ASOID(+) AND CRE301.CREDID=SRB000.CREDID(+) AND ESTDEP(+)=''28'' '
        +'GROUP BY CRE301.CREFOTORG, NROFICIO, TIPDESEID ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest( xSQL );
   DM1.cdsQry5.Open;

   TNumericField(DM1.cdsQry5.FieldByName('MONTO_OTO')).DisplayFormat:='###,###,##0.00';
   TNumericField(DM1.cdsQry5.FieldByName('MONTO_GIR')).DisplayFormat:='###,###,##0.00';
   TNumericField(DM1.cdsQry5.FieldByName('MONTO_ABO')).DisplayFormat:='###,###,##0.00';
   TNumericField(DM1.cdsQry5.FieldByName('MONTO_DEP')).DisplayFormat:='###,###,##0.00';
   TNumericField(DM1.cdsQry5.FieldByName('MONTO_REAL')).DisplayFormat:='###,###,##0.00';

   dbgConta.DataSource:=DM1.dsQry5;

   dbgConta.ColumnByName('MONTO_OTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsQry5, 'SUM(MONTO_OTO)',''),ffNumber, 10, 2);
   dbgConta.ColumnByName('MONTO_GIR').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsQry5, 'SUM(MONTO_GIR)',''),ffNumber, 10, 2);
   dbgConta.ColumnByName('MONTO_ABO').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsQry5, 'SUM(MONTO_ABO)',''),ffNumber, 10, 2);
   dbgConta.ColumnByName('MONTO_DEP').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsQry5, 'SUM(MONTO_DEP)',''),ffNumber, 10, 2);
   dbgConta.ColumnByName('MONTO_REAL').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsQry5, 'SUM(MONTO_REAL)',''),ffNumber, 10, 2);

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
   ShowMessage( ' ok ' );
end;

procedure TFContabilizacionRef.fcShapeBtn3Click(Sender: TObject);
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

procedure TFContabilizacionRef.fcShapeBtn4Click(Sender: TObject);
var
   xWhere, xSQL, xTipodesem : String;
   xTCambio, xTotHaber : Double;
   xNReg : Integer;
   xTotDebeMN, xTotHaberMN, xTotDebeME, xTotHaberME, xDif : Double;
begin

   if MessageDlg('Esta Seguro(a) de Contabilizar Refinanciados ?...',mtconfirmation,[mbYes,MbNo],0)=mrNo then Exit;

   DM1.cdsQry5.First;

   if DM1.cdsQry5.FieldByName('COMPROBANTE').AsString='' then
   begin
      ShowMessage('Falta Generar Comprobante');
      Exit;
   end;

   Screen.Cursor:=crHourGlass;

   xWhere := 'Select TCAMVBV FROM TGE107'+cLink+' '
           + 'WHERE FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha,dtpFComp.date)+''''+')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xWhere );
   DM1.cdsQry.Open;

   xTCambio:=DM1.cdsQry.FieldByName('TCAMVBV').AsFloat;
   if xTCambio<=0 then xTCambio:=3.5;

   xWhere := 'FECHA='+wRepFuncDate+''''+formatdatetime(wFormatFecha,dtpFComp.date)+''''+')';
   DM1.DisplayDescrip('PrvTGE','TGE114','*',xWhere,'FECANO');

   xSQL:='delete from '+xCNT300+' '
        +'where CNTLOTE=''REFI'' and CNTANOMM='''+xPeriodo+'''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except
   end;

   xSQL:='delete from '+xCNT311+' '
        +'where CNTLOTE=''REFI'' and CNTANOMM='''+xPeriodo+'''';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest( xSQL );
   try
     DM1.cdsQry2.Execute;
   except
   end;

   DM1.cdsQry5.First;
   while not DM1.cdsQry5.Eof do
   begin

      xSQL:='Select TIPDESEID, TIPDESEABR from CRE104'+cLink+' '
           +'WHERE TIPDESEID='''+DM1.cdsQry5.FieldByname('TIPDESEID').AsString+''' ';
      DM1.cdsTipDesem.Close;
      DM1.cdsTipDesem.DataRequest( xSQL );
      DM1.cdsTipDesem.Open;

      xSQL:='Select * from '+xCNT311+' '
           +'WHERE CIAID=''02'' AND TDIARID=''30'' AND CNTANOMM='''+xPeriodo+''' '
           +  'AND CNTCOMPROB='''+DM1.cdsQry5.FieldByname('COMPROBANTE').AsString+'''';
      DM1.cdsMovCnt1.Close;
      DM1.cdsMovCnt1.DataRequest( xSQL );
      DM1.cdsMovCnt1.Open;

      xAgrupa:='S';

      GeneraData;

      xNReg:=0;

      xTotHaber:=0;

      DM1.cdsQry6.First;
      While not DM1.cdsQry6.Eof do
      begin
         DM1.cdsMovCnt1.Insert;
         DM1.cdsMovCnt1.FieldByName('CIAID').AsString      := '02';
         DM1.cdsMovCnt1.FieldByName('TDIARID').AsString    := DM1.cdsQry6.FieldByname('TDIARID').AsString; //'30';
         DM1.cdsMovCnt1.FieldByName('CNTANOMM').AsString   := xPeriodo;
         DM1.cdsMovCnt1.FieldByName('CNTCOMPROB').AsString := DM1.cdsQry5.FieldByname('COMPROBANTE').AsString;
         DM1.cdsMovCnt1.FieldByName('CNTANO').AsString     := Copy( xPeriodo,1,4 );
         DM1.cdsMovCnt1.FieldByName('CNTLOTE').AsString    := 'REFI';
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

         if DM1.cdsQry5.FieldByname('NROFICIO').AsString='' then
            DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString :=DM1.cdsTipDesem.FieldByname('TIPDESEABR').AsString
         else
            DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString :=DM1.cdsQry5.FieldByname('NROFICIO').AsString+' - '+DM1.cdsTipDesem.FieldByname('TIPDESEABR').AsString;

         DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString   :=DM1.cdsQry5.FieldByname('NROFICIO').AsString;
         DM1.cdsMovCnt1.FieldByName('CUENTAID').AsString   :=DM1.cdsQry6.FieldByname('CUENTA').AsString;
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
            DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat:=DM1.FRound( DM1.cdsQry6.FieldByname('DEBE').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
            DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat;
         end
         else
         begin
            DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='H';
            DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEMN').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat:=DM1.FRound( DM1.cdsQry6.FieldByname('HABER').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
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

   // SE SUSPENDE POR PEDIDO DE CONTABILIDAD
   // Añadir Filales
   //
   //fcShapeBtn6Click(sender);
   //

   Screen.Cursor:=crDefault;
   MessageDlg('Se Contabilizo con EXITO !!!', mtConfirmation, [mbOk], 0);
   prbAvance.Position:=0;
   prbAvance.Visible:=False;
end;


procedure TFContabilizacionRef.GeneraCNT3002;
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

procedure TFContabilizacionRef.GeneraCNT300;
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
   xSQL:=xSQL+ 'MAX( CASE WHEN A.CNTREG = 1 THEN A.CNTNODOC||'' - ''||A.CNTGLOSA END ) CNTGLOSA, ';
   xSQL:=xSQL+ 'MAX( NVL(A.CNTTCAMBIO, 0 )), ';
   xSQL:=xSQL+ 'A.CNTFCOMP, ''I'', ''N'', ';
   xSQL:=xSQL+ 'MAX(CNTUSER), MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'MAX( CASE WHEN A.CNTREG = 1 THEN A.TMONID ELSE A.TMONID END ) TMONID, '' '', ';
   xSQL:=xSQL+ 'A.TDIARDES, ';
   xSQL:=xSQL+ 'SUM(A.CNTDEBEMN), SUM(A.CNTDEBEME), SUM(A.CNTHABEMN), SUM(A.CNTHABEME), ';
   xSQL:=xSQL+ 'MAX( CNTTS ), MAX( CNTMODDOC), MAX( MODULO ) ';
   xSQL:=xSQL+ 'FROM '+xCNT311+' A ';
   xSQL:=xSQL+ 'WHERE A.CIAID=''02'' AND ';
   xSQL:=xSQL+       'A.TDIARID=''30'' AND ';
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

   xSQL:='INSERT INTO '+xCNT300+' ';
   xSQL:=xSQL+ '( CIAID, TDIARID, CNTANOMM, CNTCOMPROB, CNTLOTE, ';
   xSQL:=xSQL+ 'CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, ';
   xSQL:=xSQL+ 'CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, ';
   xSQL:=xSQL+ 'CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR, ';
   xSQL:=xSQL+ 'TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, ';
   xSQL:=xSQL+ 'CNTTS, DOCMOD, MODULO ) ' ;

   xSQL:=xSQL+ 'SELECT A.CIAID, A.TDIARID, A.CNTANOMM, A.CNTCOMPROB,  A.CNTLOTE, ';
   xSQL:=xSQL+ 'MAX( A.CNTGLOSA ) CNTGLOSA, ';
   xSQL:=xSQL+ 'MAX( NVL(A.CNTTCAMBIO, 0 )), ';
   xSQL:=xSQL+ 'A.CNTFCOMP, ''I'', ''N'', ';
   xSQL:=xSQL+ 'MAX(CNTUSER), MAX( CNTFREG ), MAX( CNTHREG ), A.CNTANO, A.CNTMM, A.CNTDD, A.CNTTRI, ';
   xSQL:=xSQL+ 'A.CNTSEM, A.CNTSS, A.CNTAATRI, A.CNTAASEM, A.CNTAASS, ';
   xSQL:=xSQL+ 'MAX( CASE WHEN A.CNTREG = 1 THEN A.TMONID ELSE A.TMONID END ) TMONID, '' '', ';
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


procedure TFContabilizacionRef.GeneraData;
var
   xSQL, xSQL1, xSQL2, xSQL3, xSQL4, xSQL5, xSQL6 : String;  // HPP_200903_COB (F4)
begin

   if DM1.cdsQry5.FieldByName('NROFICIO').AsString<>'' then
   begin

  // CUENTA DEL CREDITO
  xSQL1:='Select A.CREDID, A.NROFICIO, B.CUENTAID CUENTA, '
        +  'B.CLAUXID, B.AUXID, NULL CCOSID, A.DEBE, A.HABER, '
        +  '''A ORIGEN'' TIPO, 0.00 MONTO, A.CREFOTORG, A.TIPCREID, TIPDESEID, A.USEID '
        +'FROM ( '
        +  'SELECT CREDID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, ''            '' CCOSID, FLGREFI, '
        +    'SUM( CREMTOOTOR ) DEBE, 0.00 HABER '
        +  'FROM CRE301'+cLink+' '
        +  'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +   ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +   ' AND NOT CREESTID IN ( ''13'' ) AND TIPDESEID IN ( ''10'' ) '
        +   ' AND NROFICIO=''' +DM1.cdsQry5.FieldByName('NROFICIO').AsString+''''
        +   ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +   ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +  'GROUP BY CREDID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO, FLGREFI'
        +' ) A, CRE110 B, APO101 C '
        +'WHERE ''RE''=B.TIPCREID(+) '
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
        +    'FROM CRE301'+cLink+' '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
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

        +           'SELECT A.ASOID, A.TIPCREID, ''FLAT'' TIPO, SUM(NVL(A.CREFLAT,0)) MONTO, A.NRONABO ' // VHN
        +           'FROM CRE310'+cLink+' A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +           'UNION ALL '
        +           'SELECT A.ASOID, A.TIPCREID, ''INTERES'' TIPO, SUM(NVL(A.CREINTERES,0)) MONTO, A.NRONABO '
        +           'FROM CRE310'+cLink+' A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +           'HAVING SUM( nvl(A.CREINTERES,0) )>0 '
        +           'UNION ALL '
        +           'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE310'+cLink+' A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '
        +    ' ) C, CRE110'+cLink+' D, APO101'+cLink+' E '
        +  'WHERE NVL(C.MONTO,0)>0 '
        +    'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO '
        +    'and C.TIPCREID=D.TIPCREID(+) '
        +    'and ( ( NVL(D.CIAID,''02'')=''02'') AND TIPO=''TCAPITAL'' '
        +          'OR '
        +        '( TIPO<>''TCAPITAL'' ) ) '
        +    'AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '

        +'UNION ALL ';

  // AMORTIZACION DE OTRAS CIAID
  //xSQL3:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, MAX(D.FILIAL) CUENTA, '
  xSQL3:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, MAX(D.CUENTAID) CUENTA, '
        +     '''FILIAL'' TIPO, SUM(C.MONTO) HABER, '' '' CCOSID '
        +  'FROM ( '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO ' // XX
        +    'FROM CRE301'+cLink+' '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
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
        +           'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE310'+cLink+' A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '

        +          ' ) X, CRE110'+cLink+' B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110'+cLink+' D '
        +  'WHERE NVL(C.MONTO,0)>0 '
        +    'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '
        +  'GROUP BY A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID '
        +  'UNION ALL ';

  // DESEMBOLSO
  //xSQL4:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, ''46906'' CUENTA, '
  xSQL4:='SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, B.CUENTAH CUENTA, '
        +   'NVL(C.TIPO,''SIN ABONO'') TIPO, A.MONTO-NVL(C.MONTO,0) HABER, '' '' CCOSID '
        +'FROM ( '
        +   'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +      'COUNT(CREFOTORG) REG '
        +   'FROM CRE301'+cLink+' '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
        +     ' AND NROFICIO='''+DM1.cdsQry5.FieldByName('NROFICIO').AsString+''''
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO '
        +  ' ) A, CRE110'+cLink+' B, ( '
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, '
        +         'SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +      'FROM CRE310'+cLink+' A '
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
   // CUENTA DEL CREDITO - ORIGEN 30
  xSQL1:='Select ''D'' DH, A.CREDID, A.NROFICIO, B.CUENTAID CUENTA, ''30'' TDIARID, '
        +  'NULL CLAUXID, NULL AUXID, NULL CCOSID, A.DEBE, A.HABER, '
        +  '''A ORIGEN'' TIPO, 0.00 MONTO, A.CREFOTORG, A.TIPCREID, TIPDESEID, A.USEID '
        +'FROM ( '
        +  'SELECT CREDID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, ''            '' CCOSID, FLGREFI, '
        +    'SUM( CREMTOOTOR ) DEBE, 0.00 HABER '
        +  'FROM CRE301'+cLink+' '
        +  'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +   ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +   ' AND NOT CREESTID IN ( ''13'' ) '
        +   ' AND TIPDESEID IN ( ''10'' ) '
        +   ' AND NVL(NROFICIO,'' '')='' '' '
        +   ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +   ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +  'GROUP BY CREDID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO, FLGREFI'
        +' ) A, CRE110'+cLink+' B, APO101'+cLink+' C '
        +'WHERE ''RE''=B.TIPCREID(+) '
        +  'AND A.USEID=C.USEID(+) AND A.UPROID=C.UPROID(+) AND A.UPAGOID=C.UPAGOID(+) '

        +'UNION ALL ';

        // AMORTIZACION, INTERESES Y FLAT - ORIGEN 32 -
  xSQL2:='SELECT DH, CREDID, NROFICIO, CUENTA, TDIARID, NULL CLAUXID, NULL AUXID, '' '' CCOSID, '
        +   'DEBE, HABER, TIPO, MONTO, CREFOTORG, TIPCREID, TIPDESEID, USEID '
        +'FROM ( ';
// HPP_200903_COB (F4)        
{
        +   'SELECT ''H'' DH, A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, A.MONTO, C.CUENTA, '
        +      '''32'' TDIARID, C.TIPO, 0.00 DEBE, C.MONTO HABER, E.CCOSID '
        +   'FROM ( '
        +         'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO, ' //XX
        +           'SUM( NVL(CREMTOOTOR,0)) MONTO, COUNT(CREFOTORG) REG '
        +         'FROM CRE301'+cLink+' '
        +         'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +          ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +          ' AND NOT CREESTID IN ( ''13'' ) '
        +          ' AND TIPDESEID IN ( ''10'' ) '
        +          ' AND NVL(NROFICIO,'' '')='' '' '
        +          ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+'''  '
        +          ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +         'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, UPROID, UPAGOID, NRONABO ' // XX

        +        ') A, '
        +        '( '

        +         'SELECT ASOID, X.TIPCREID, TIPO, MONTO, '
        +            'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT  ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +            'B.CIAID, NRONABO ' // XX
        +         'FROM ( '

        +             'SELECT A.ASOID, A.TIPCREID, ''FLAT'' TIPO, SUM(NVL(A.CREFLAT,0)) MONTO, A.NRONABO ' // VHN
        +             'FROM CRE310'+cLink+' A '
        +             'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +              ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +              ' and A.NRONABO IS NOT NULL '
        +             'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +             'UNION ALL '
        +             'SELECT A.ASOID, A.TIPCREID, ''INTERES'' TIPO, SUM(NVL(A.CREINTERES,0)) MONTO, A.NRONABO '
        +             'FROM CRE310'+cLink+' A '
        +             'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +              ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +              ' and A.NRONABO IS NOT NULL '
        +             'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '
        +             'HAVING SUM( nvl(A.CREINTERES,0) )>0 '
        +             'UNION ALL '
        +             'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO '
        +             'FROM CRE310'+cLink+' A '
        +             'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +              ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +              ' and A.NRONABO IS NOT NULL '
        +             'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '

        +             ' ) X, CRE110 B '
        +          'Where X.TIPCREID=B.TIPCREID(+) '
        +       ' ) C, CRE110'+cLink+' D, APO101'+cLink+' E '
        +    'WHERE NVL(C.MONTO,0)>0 '
        +      'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO '
        +      'and C.TIPCREID=D.TIPCREID(+) '
        +      'and ( ( NVL(D.CIAID,''02'')=''02'') AND TIPO=''TCAPITAL'' '
        +          'OR '
        +        '( TIPO<>''TCAPITAL'' ) ) '
        +      'and A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '

        +    'UNION ALL ';
}
        // AMORTIZACION, INTERESES Y FLAT DE OTRAS COMPAÑIAS
  //xSQL3:=   'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, C.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, MAX(D.FILIAL) CUENTA, '
  xSQL3:=  'SELECT ''H'' DH, A.CREDID, A.CREFOTORG, A.NROFICIO, C.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, MAX(D.CUENTAID) CUENTA, '
        +      '''32'' TDIARID, ''FILIAL'' TIPO, 0.00 DEBE, SUM(A.MONTO) HABER, '' '' CCOSID '
        +   'FROM ( '
        +     'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO ' // XX
        +     'FROM CRE301'+cLink+' '
        +     'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +     'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO ' // XX
        +     ') A, '
        +     '( '

        +        'SELECT ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID, NRONABO ' // XX
        +        'FROM ( '

        +           'SELECT A.ASOID, A.TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO, A.NRONABO '
        +           'FROM CRE310'+cLink+' A '
        +           'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and A.NRONABO IS NOT NULL '
        +           'GROUP BY A.ASOID, A.TIPCREID, A.NRONABO '

        +          ' ) X, CRE110'+cLink+' B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110'+cLink+' D '
        +   'WHERE NVL(C.MONTO,0)>0 '
        +     'and A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +     'and C.TIPCREID=D.TIPCREID(+) ' // AND NVL(D.CIAID,''02'')<>''02'' ' ///  // HPP_200903_COB (F4)
        +   'GROUP BY A.CREDID, A.CREFOTORG, A.NROFICIO, C.TIPCREID, A.TIPDESEID, A.USEID '
        +   'UNION ALL ';

        // DESEMBOLSO - ORIGEN 30 - 46906
  xSQL4:=   'SELECT ''H'' DH, A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, B.CUENTAH CUENTA, A.TDIARID, '
        +     'NVL(C.TIPO,''SIN ABONO'') TIPO, DEBE, HABER, '' '' CCOSID '
        +  'FROM ( '
        +     'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, 0.00 DEBE, SUM( NVL(CREMTOOTOR,0)) HABER, '
        +      'COUNT(CREFOTORG) REG, ''30'' TDIARID '
        +   'FROM CRE301'+cLink+' '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '  //AND CREMTOGIR>0 '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO '
        +  ' ) A, CRE110'+cLink+' B, ( '
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +         'FROM CRE310'+cLink+' A '
        +      'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.NRONABO IS NOT NULL '
        +      'GROUP BY A.ASOID, A.NRONABO '
        +     ') C '
        +'WHERE ''RE''=B.TIPCREID(+) '
        +  'AND A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
        +  'UNION ALL ';

        // DESEMBOLSO - ORIGEN 32 - 46906
// HPP_200903_COB (F4)
{  xSQL5:='SELECT ''D'' DH, A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, B.CUENTAH CUENTA, A.TDIARID, '
        +   'NVL(C.TIPO,''SIN ABONO'') TIPO, DEBE, HABER, '' '' CCOSID '
        +'FROM ( '
        +   'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, SUM( NVL(CREMTOOTOR,0)) DEBE, 0.00 HABER, '
        +      'COUNT(CREFOTORG) REG, ''32'' TDIARID '
        +   'FROM CRE301'+cLink+' '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '  //AND CREMTOGIR>0 '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO '
        +  ' ) A, CRE110'+cLink+' B, ( '
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +         'FROM CRE310'+cLink+' A '
        +      'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.NRONABO IS NOT NULL '
        +      'GROUP BY A.ASOID, A.NRONABO '
        +     ') C '
        +'WHERE ''RE''=B.TIPCREID(+) '
        +  'AND A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '
}
        // DESEMBOLSO - ORIGEN 32 - 46906
  xSQL5:='SELECT ''D'' DH, A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.TIPDESEID, A.USEID, 0.00 MONTO, B.CUENTAH CUENTA, A.TDIARID, '
        +   'NVL(C.TIPO,''SIN ABONO'') TIPO, DEBE, HABER, '' '' CCOSID '
        +'FROM ( '
        +   'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO, SUM( NVL(CREMTOOTOR,0)) DEBE, 0.00 HABER, '
        +      'COUNT(CREFOTORG) REG, ''32'' TDIARID '
        +   'FROM CRE301'+cLink+' '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '  //AND CREMTOGIR>0 '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, TIPDESEID, USEID, NRONABO '
        +  ' ) A, CRE110'+cLink+' B, ( '
        +      'SELECT A.ASOID, A.NRONABO, ''TOTAL'' TIPO, SUM(nvl(A.CREFLAT,0))+SUM(nvl(A.CREINTERES,0))+SUM(NVL(A.CREAMORT,0))+SUM(NVL(A.CREMTOEXC,0)) MONTO '
        +         'FROM CRE310'+cLink+' A '
        +      'WHERE A.CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +       ' and A.NRONABO IS NOT NULL '
        +      'GROUP BY A.ASOID, A.NRONABO '
        +     ') C '
        +'WHERE ''RE''=B.TIPCREID(+) '
        +  'AND A.ASOID=C.ASOID(+) AND A.NRONABO=C.NRONABO(+) '

        + ') A ';

     xSQL:=xSQL1+xSQL2+xSQL3+xSQL4+xSQL5;

   end;

   DM1.cdsQry6.Close;

   DM1.cdsQry6.IndexFieldNames:='CREDID';

   if xAgrupa='S' then
   begin
   xSQL:='Select CREFOTORG, NROFICIO, TIPDESEID, CUENTA, DH, TDIARID, NULL AUXID, NULL CLAUXID, '' '' CCOSID, '
        +  'SUM(DEBE) DEBE, SUM(HABER) HABER '
        +'From ( '+  xSQL + ' ) '
        +'Group by CREFOTORG, NROFICIO, TIPDESEID, CUENTA, DH, TDIARID';
   DM1.cdsQry6.IndexFieldNames:='TDIARID;CUENTA;DH';
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
        +'From ( '+  xSQL + ' ) A , CRE301'+cLink+' B '
        +'WHERE A.CREDID=B.CREDID '
        + ' AND B.CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        + ' AND B.CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        + ' AND NOT CREESTID IN ( ''13'' ) '
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


procedure TFContabilizacionRef.GeneraDataAsiento2;
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
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, '
        +       'SUM( NVL(CREMTOOTOR,0)) MONTO, COUNT(CREFOTORG) REG, NRONABO '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
        +     ' AND NROFICIO=''' +DM1.cdsQry5.FieldByName('NROFICIO').AsString+''' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, NRONABO '

        +  ') A, '
        +     '( '

        +        'SELECT ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID, NRONABO '
        +        'FROM ( '
        +           'SELECT NRONABO, ASOID, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CREAMORT,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'FROM CRE310 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY NRONABO, ASOID, TIPCREID '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D, APO101 E '
        +  'WHERE NVL(C.MONTO,0)>0 '
        +    'and A.NRONABO=C.NRONABO(+) AND A.ASOID=C.ASOID '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '  //D.CIAID IS NOT NULL '
        +    'AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '

        +'UNION ALL ';

  xSQL2:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.USEID, 0.00 MONTO, ''46602'' CUENTA, '
        +     'D.CIAID, ''FILIAL'' TIPO, SUM(C.MONTO) DEBE, 0.00 HABER, '' '' CCOSID '
        +  'FROM ( '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
        +     ' AND NROFICIO='''+DM1.cdsQry5.FieldByName('NROFICIO').AsString+''' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, NRONABO '

        +  ') A, '
        +     '( '
        +        'SELECT NRONABO, ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID '
        +        'FROM ( '
        +           'SELECT NRONABO, ASOID, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CREAMORT,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'FROM CRE310 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY NRONABO, ASOID, TIPCREID '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D '
        +  'WHERE NVL(C.MONTO,0)>0 '
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
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, UPROID, UPAGOID, NRONABO '

        +  ') A, '
        +     '( '
        +        'SELECT NRONABO, ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID '
        +        'FROM ( '
        +           'SELECT NRONABO, ASOID, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CREAMORT,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'FROM CRE310 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY NRONABO, ASOID, TIPCREID '

        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D, APO101 E '
        +  'WHERE NVL(C.MONTO,0)>0 '
        +    'and A.NRONABO=C.NRONABO(+) AND A.ASOID=C.ASOID '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '  //D.CIAID IS NOT NULL '
        +    'AND A.USEID=E.USEID(+) AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) '

        +'UNION ALL ';

  xSQL2:=  'SELECT A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.USEID, 0.00 MONTO, ''46602'' CUENTA, '
        +     'C.NRONABO, D.CIAID, ''FILIAL'' TIPO, SUM(C.MONTO) DEBE, 0.00 HABER, '' '' CCOSID '
        +  'FROM ( '
        +    'SELECT CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, SUM( NVL(CREMTOOTOR,0)) MONTO, '
        +       'COUNT(CREFOTORG) REG, NRONABO '
        +    'FROM CRE301 '
        +    'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +     ' AND NOT CREESTID IN ( ''13'' ) '
        +     ' AND TIPDESEID IN ( ''10'' ) '
        +     ' AND NVL(NROFICIO,'' '')='' '' '
        +     ' AND TIPDESEID='''+DM1.cdsQry5.FieldByName('TIPDESEID').AsString+''' '
        +     ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        +    'GROUP BY CREDID, ASOID, CREFOTORG, NROFICIO, TIPCREID, USEID, NRONABO '

        +  ') A, '
        +     '( '
        +        'SELECT NRONABO, ASOID, X.TIPCREID, TIPO, MONTO, '
        +          'CASE WHEN TIPO=''FLAT'' THEN B.CTAFLAT ELSE CASE WHEN TIPO=''INTERES'' THEN B.CTAINT ELSE CUENTAID END END CUENTA, '
        +          'B.CIAID '
        +        'FROM ( '
        +           'SELECT NRONABO, ASOID, TIPCREID, ''TCAPITAL'' TIPO, SUM(NVL(CREAMORT,0))+SUM(NVL(CREMTOEXC,0)) MONTO '
        +           'FROM CRE310 '
        +           'WHERE CREFPAG>='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' AND CREFPAG<='+quotedstr(formatdatetime(wFormatFecha,DM1.cdsQry5.FieldByname('CREFOTORG').AsDateTime))
        +            ' and NRONABO IS NOT NULL '
        +           'GROUP BY NRONABO, ASOID, TIPCREID '
        +          ' ) X, CRE110 B '
        +        'Where X.TIPCREID=B.TIPCREID(+) '

        +    ' ) C, CRE110 D '
        +  'WHERE NVL(C.MONTO,0)>0 '
        +    'and A.NRONABO=C.NRONABO(+) AND A.ASOID=C.ASOID(+) '
        +    'and C.TIPCREID=D.TIPCREID(+) AND NVL(D.CIAID,''02'')<>''02'' '  //D.CIAID IS NOT NULL '
        +  'GROUP BY A.CREDID, A.CREFOTORG, A.NROFICIO, A.TIPCREID, A.USEID, C.NRONABO, D.CIAID '
        + ') A ';

     xSQL:=xSQL1+xSQL2;

   end;


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


procedure TFContabilizacionRef.fcShapeBtn6Click(Sender: TObject);
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

   xWhere := 'Select TCAMVBV FROM TGE107 '
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

      GeneraDataAsiento2;

      xSQL:='Select MAX(CNTCOMPROB) CNTCOMPROB FROM '+xCNT300+' '
           +'Where CIAID='''+DM1.cdsQry6.FieldByname('CIAID').AsString+''' AND TDIARID=''30'' '
           +  'AND CNTANOMM='''+xPeriodo+''''
           +'GROUP BY CIAID, TDIARID, CNTANOMM';
      DM1.cdsQry3.Close;
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
         DM1.cdsMovCnt1.FieldByName('CNTANO').AsString     := Copy( xPeriodo, 1, 4 );
         DM1.cdsMovCnt1.FieldByName('CNTLOTE').AsString    := 'REFI';
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

         if DM1.cdsQry5.FieldByname('NROFICIO').AsString='' then
            DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString :=DM1.cdsTipDesem.FieldByname('TIPDESEABR').AsString
         else
            DM1.cdsMovCnt1.FieldByName('CNTGLOSA').AsString :=DM1.cdsQry5.FieldByname('NROFICIO').AsString+' - '+DM1.cdsTipDesem.FieldByname('TIPDESEABR').AsString;

         DM1.cdsMovCnt1.FieldByName('CNTNODOC').AsString   :=DM1.cdsQry5.FieldByname('NROFICIO').AsString;
         DM1.cdsMovCnt1.FieldByName('CUENTAID').AsString   :=DM1.cdsQry6.FieldByname('CUENTA').AsString;
         IF COPY(DM1.cdsQry6.FieldByname('CUENTA').AsString,1,2)='16' THEN
         BEGIN
            DM1.cdsMovCnt1.FieldByName('CCOSID').AsString :=DM1.cdsQry6.FieldByname('CCOSID').AsString;
            IF ( DM1.cdsMovCnt1.FieldByName('CCOSID').AsString='' ) THEN
               DM1.cdsMovCnt1.FieldByName('CCOSID').AsString   :='991502';
         END
         ELSE
            DM1.cdsMovCnt1.FieldByName('CCOSID').AsString     :='';
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
            DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat:=DM1.FRound( DM1.cdsQry6.FieldByname('DEBE').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
            DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTDEBEME').AsFloat;
         end
         else
         begin
            DM1.cdsMovCnt1.FieldByName('CNTDH').AsString:='H';
            DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTMTOLOC').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTMTOORI').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEMN').AsFloat:=DM1.cdsQry6.FieldByname('HABER').AsFloat;
            DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat:=DM1.FRound( DM1.cdsQry6.FieldByname('HABER').AsFloat/DM1.cdsMovCnt1.FieldByName('CNTTCAMBIO').AsFloat,15,2);
            DM1.cdsMovCnt1.FieldByName('CNTMTOEXT').AsFloat:=DM1.cdsMovCnt1.FieldByName('CNTHABEME').AsFloat;
         end;
         {
         DM1.cdsMovCnt1.FieldByName('CTADES').AsString   := edtCuenta.Text;
         DM1.cdsMovCnt1.FieldByName('AUXDES').AsString   := edtAux.Text;
         DM1.cdsMovCnt1.FieldByName('DOCDES').AsString   := dbeTDoc.Text;
         DM1.cdsMovCnt1.FieldByName('CCOSDES').AsString  := dbeCCosto.Text;
         DM1.cdsMovCnt1.FieldByName('TDIARDES').AsString := edtTDiario.Text;
         }
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
  //    MessageDlg('Se Contabilizo las Filiales con EXITO !!!',mtConfirmation, [mbOk], 0);
end;

procedure TFContabilizacionRef.FormActivate(Sender: TObject);
var
   xSQL : String;
   wAno, wMes, wDia : Word;
   xMes : String;
begin

   // cLink:='@dbprodlee ';
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

   if Length( dbseMes.Text )<2 then
      dbseMes.Text := DM1.StrZero(dbseMes.Text,2);
   PasaDatosFecha;

   DM1.FiltraCDS(DM1.cdsTipDesem,'SELECT * FROM CRE104');

   dblcTipo.Text:='30';
   xSQL:= 'SELECT * FROM TGE104 WHERE TDIARID='+quotedstr( dblcTipo.Text );
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;

   dbeTipo.Text:=DM1.cdsQry.FieldByName('TDIARDES').AsString;

   xCNT300  := 'CNT300COB';
   xCNT311  := 'CNT311COB';
   xCNT300r := 'CNT300';
   xCnt311r := 'CNT311';
   PasaDatosFecha;
end;

procedure TFContabilizacionRef.dtpFCompExit(Sender: TObject);
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

procedure TFContabilizacionRef.bbtnConsisClick(Sender: TObject);
var
   xSQL : String;
begin
  {
   xSQL:='SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.NRONABO, B.NRONABO, '
        +  'MAX(CREMTOOTOR) CREMTOOTORG, MAX(CREMTONABO) CREMTONABO, '
        +  'MAX(CREMTOOTOR) - MAX(CREMTONABO) GIR, '
        +  'MAX( CREMTOGIR ) CREMTOGIR, '
        +  'SUM( CREMTOCOB ) CREMTOCOB, '
        +  'SUM( B.CREAMORT )+SUM( B.CREINTERES )+SUM( B.CREFLAT )+SUM( B.CREMTOEXC ) COB, '
        +  'SUM( B.CREAMORT ) CREAMORT, SUM( B.CREINTERES ) CREINTERES, SUM( B.CREFLAT ) CREFLAT, '
        +  'SUM( B.CREMTOEXC ) EXC '
        +'FROM CRE301 A, CRE310 B '
        +'WHERE CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,dtpFecIni.Date))
        + ' AND CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,dtpFecFin.Date))
        + ' AND NOT A.CREESTID IN ( ''13'' ) '
        + ' AND A.TIPDESEID IN ( ''10'' ) '
        + ' AND A.ASOID=B.ASOID(+) AND A.NRONABO=B.NRONABO(+) AND A.CREFOTORG=B.CREFPAG(+) '
        +'GROUP BY A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.NRONABO, B.NRONABO '
        +'Having MAX(CREMTONABO)<>SUM(CREMTOCOB) '
        +   'or SUM(B.CREAMORT)+SUM(B.CREINTERES)+SUM(B.CREFLAT)+SUM(B.CREMTOEXC) <> SUM(CREMTOCOB)';

         }


  xSql := ' SELECT A.ASOCODMOD,A.ASOAPENOM,A.CREDID,a.CREFOTORG,A.CREMTOOTOR,A.CREMTONABO,A.NRONABO,A.USUARIO,a.CREESTID,TIPDESEID,a.CREFOTORG,'
          + ' ''PERIODO : ' + xPeriodo + ''' PERIODO, '
          + ' SUM( a.CREMTOOTOR ) MONTO_OTO, SUM( a.CREMTOGIR ) MONTO_GIR, '
          + ' SUM( a.CREMTONABO ) MONTO_ABO, '
          + ' CASE WHEN MAX(ESTDEP)=''28'' THEN SUM(DESEFE) ELSE SUM( a.CREMTODEP ) END MONTO_DEP, '
          + ' SUM( a.CREMTOGIR ) + CASE WHEN MAX(ESTDEP)=''28'' THEN SUM(DESEFE) ELSE SUM( a.CREMTODEP ) END MONTO_REAL, '
          + ' COUNT(a.CREFOTORG) REGISTROS, '
          + ' SUM( nvl(B.CREAMORT,0) )+SUM( nvl(B.CREINTERES,0) )+SUM( nvl(B.CREFLAT,0) )+SUM( nvl(B.CREMTOEXC,0) ) MTOCOB, '
          + ' SUM( nvl(B.CREAMORT,0) ) CREAMORT, '
          + ' SUM( nvl(B.CREINTERES,0) ) CREINTERES, '
          + ' SUM( nvl(B.CREFLAT,0) ) CREFLAT, '
          + ' SUM( nvl(B.CREMTOEXC,0) ) CREEXC '
          + ' FROM CRE301 a, SRB000 c, CRE310 b '
          + ' WHERE a.CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,dtpFecIni.Date))
          + ' AND a.CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,dtpFecFin.Date))
          + ' AND NOT a.CREESTID IN ( ''13'' ) '
          + ' AND a.TIPDESEID IN (''10'')  AND DECODE(a.FLGINCONSIS,''S'',''S'',''N'')=''N'' '
          + ' AND a.ASOID=c.ASOID(+) AND a.CREDID=c.CREDID(+) AND c.ESTDEP(+)=''28'' '
          + ' AND A.ASOID=B.ASOID(+) AND A.NRONABO=B.NRONABO(+) AND A.CREFOTORG=B.CREFPAG(+) '
          + ' GROUP BY A.ASOCODMOD,A.ASOAPENOM,A.CREDID,a.CREFOTORG,A.CREMTOOTOR,A.CREMTONABO,A.NRONABO,A.USUARIO,a.CREESTID,TIPDESEID,a.CREFOTORG '
          + ' Having MAX(CREMTONABO)<>SUM(NVL(CREMTOCOB,0)) '
          + ' OR SUM(NVL(B.CREAMORT,0))+SUM(NVL(B.CREINTERES,0))+SUM(NVL(B.CREFLAT,0))+SUM(NVL(B.CREMTOEXC,0)) = SUM(NVL(CREMTOCOB,0)) ';

//

   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest( xSQL );
   DM1.cdsReporte.Open;

   If Dm1.cdsReporte.RecordCount > 0 then
   begin
      DM1.cdsReporte.First;
      ppdb2.DataSource := DM1.dsReporte;
      ppr2.Print;
//      ppd2.ShowModal;
      ppr2.Stop;;

      Dm1.cdsReporte.IndexFieldNames:='';
      ppdb2.DataSource := nil;
      DM1.cdsQry6.IndexFieldNames:='';
   end
   else
     ShowMessage('No Existen Inconsistencias, Contabilice');
end;

procedure TFContabilizacionRef.CuadrarAsiento;
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

procedure TFContabilizacionRef.fcShpDevoTransClick(Sender: TObject);
begin
   FContabilizacion := TFContabilizacion.Create(self);
   FContabilizacion.dbseAno.Value:=dbseAno.Value;
   FContabilizacion.dbseMes.Value:=dbseMes.Value;
   FContabilizacion.DatosFecha;
// Inicio: DPP_201219_COB
// Inicializa Tipo de Contabilización para cuando ingresa en forma directa
   wTipoCont := 'REFI';
// Fin: DPP_201219_COB
   FCONTABILIZACION.TransferirContabilidad( 'REFI', '32',xPeriodo,xCnt300,xCnt311,xCnt300r,xCnt311r);
   FContabilizacion.Free;
end;

procedure TFContabilizacionRef.fcShapeBtn5Click(Sender: TObject);
begin
   FContabilizacion := TFContabilizacion.Create(self);
   FContabilizacion.dbseAno.Value:=dbseAno.Value;
   FContabilizacion.dbseMes.Value:=dbseMes.Value;
   FContabilizacion.DatosFecha;
   FCONTABILIZACION.ReporteContabilizaCredito( xCNT311r, 'REFI' ,xPeriodo );
   FContabilizacion.Free;
end;

procedure TFContabilizacionref.PasaDatosFecha;
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

// HPP_200903_COB (F4)
   IF dbseMes.Text+dbseAno.Text='022009' then
      dtpFecIni.date := strtodate('01/10/2008')
   else
      dtpFecIni.date := strtodate(xDiaIni);
   dtpFecFin.date := strtodate(xDiaFin);
   dtpFComp.date := strtodate(xDiaFin);
   xPeriodo := dbseAno.Text+dbseMes.Text;

end;



procedure TFContabilizacionRef.fcShapeBtn7Click(Sender: TObject);
begin
  fcontabilizacion := Tfcontabilizacion.Create(self);
  FContabilizacion.dbseAno.Value:=dbseAno.Value;
  FContabilizacion.dbseMes.Value:=dbseMes.Value;
  FContabilizacion.DatosFecha;
  FCONTABILIZACION.ReporteContabilizaCredito( xCNT311, 'REFI' ,xPeriodo );
  fcontabilizacion.Free;
end;

procedure TFContabilizacionRef.dbseAnoExit(Sender: TObject);
begin
    PasaDatosFecha;
end;

procedure TFContabilizacionRef.dbseMesExit(Sender: TObject);
begin
   if Length( dbseMes.Text )<2 then
      dbseMes.Text := DM1.StrZero(dbseMes.Text,2);

   PasaDatosFecha;
end;

procedure TFContabilizacionRef.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppD1.IniStorageName := '.\rbuilder.ini';
   ppD2.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

// Inicio HPC_201736_COB
// Exportar a Excel  los reportes sustento de la contabilización
procedure TFContabilizacionRef.btnExcelOpeRefClick(Sender: TObject);
var xsql:string;
begin
     xsql:='SELECT '
        +   'CRE301.FREG FEC_REGISTRO,CRE301.ASOCODMOD,CRE301.ASOAPENOM,CRE301.CREDID, CRE301.USUARIO,'
        +   'CRE301.CREFOTORG, NROFICIO, TIPDESEID, '
        +   'SUM( CREMTOOTOR ) MONTO_OTO, SUM( CREMTOGIR ) MONTO_GIR, '
        +   'SUM( CREMTONABO ) MONTO_ABO, CASE WHEN MAX(ESTDEP)=''28'' THEN SUM(DESEFE) ELSE SUM( CRE301.CREMTODEP ) END MONTO_DEP, '
        +   'SUM( CREMTOGIR ) + CASE WHEN MAX(ESTDEP)=''28'' THEN SUM(DESEFE) ELSE SUM( CRE301.CREMTODEP ) END MONTO_REAL, '
        +   'COUNT(CRE301.CREFOTORG) REGISTROS '
        +'FROM CRE301'+cLink+', SRB000'+cLink+' '
        +'WHERE CRE301.CREFOTORG>='+quotedstr(formatdatetime(wFormatFecha,dtpFecIni.Date))
        + ' AND CRE301.CREFOTORG<='+quotedstr(formatdatetime(wFormatFecha,dtpFecFin.Date))
        + ' AND NOT CREESTID IN ( ''13'' ) '
        + ' AND TIPDESEID IN (''10'') '
        + ' AND DECODE(FLGINCONSIS,''S'',''S'',''N'')=''N'' '
        + ' AND CRE301.ASOID=SRB000.ASOID(+) AND CRE301.CREDID=SRB000.CREDID(+) AND ESTDEP(+)=''28'' '
        +'GROUP BY '
        +'CRE301.FREG,CRE301.ASOCODMOD,CRE301.ASOAPENOM,CRE301.CREDID,CRE301.CREFDES,CRE301.USUARIO, '
        +'CRE301.CREFOTORG, NROFICIO, TIPDESEID';

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

        DM1.HojaExcel('ReporteSustentoOpeRef',DM1.dsQry, dbgExcel);
        Screen.Cursor := crDefault;
end;
// Fin HPC_201736_COB
end.
