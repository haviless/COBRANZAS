unit COB608;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB608
// Formulario                    : FEstadisticaFSC
// Fecha de Creación             : 18/12/2013
// Autor                         : Sistemas
// Objetivo                      : Cobranzas del FSC

// Actualizaciones               :
// HPC_201312_COB    18/12/2013  : Cobranzas del FSC
// SPP_201314_COB                : Se realiza el pase a producción a partir del documento HPC_201312_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid,
  db;

type
  TFCobranzaFSC = class(TForm)
    Panel1: TPanel;
    BitProcesar: TBitBtn;
    lblTitulo: TLabel;
    dblcPeriodo: TwwDBLookupCombo;
    Label2: TLabel;
    Panel2: TPanel;
    dbgAno: TwwDBGrid;
    dbgForPag: TwwDBGrid;
    dbgMes: TwwDBGrid;
    dbgMesApl: TwwDBGrid;
    dbgMesFP: TwwDBGrid;
    Panel3: TPanel;
    btnSalir: TBitBtn;
    btnAExcel: TBitBtn;
    bbtnGrafico: TBitBtn;
    bbtnGrafMes: TBitBtn;
    lblMes: TLabel;
    lblMesDes: TLabel;
    Image1: TImage;
    Image3: TImage;
    Image2: TImage;
    Image4: TImage;
    Bevel1: TBevel;
    procedure FormActivate(Sender: TObject);
    procedure BitProcesarClick(Sender: TObject);
    procedure dbgForPagTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure bbtnGraficoClick(Sender: TObject);
    procedure bbtnGrafMesClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure dbgAnoEnter(Sender: TObject);
    procedure dbgForPagEnter(Sender: TObject);
    procedure dbgMesEnter(Sender: TObject);
    procedure dbgMesAplEnter(Sender: TObject);
    procedure dbgMesFPEnter(Sender: TObject);
    procedure dblcPeriodoChange(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
    xgrid : String;
    procedure LimpiarGrids;
  public
    { Public declarations }
  end;

var
  FCobranzaFSC: TFCobranzaFSC;

implementation

uses COBDM1, COB609;

{$R *.dfm}

procedure TFCobranzaFSC.FormActivate(Sender: TObject);
var
   xSQL : String;
begin
  xSQL:='SELECT TO_CHAR(FEC_CRE_COB_FSC,''YYYY'') PERIODO '
       +  'FROM cob_fsc_pagos_al_fsc A '
       + 'GROUP BY TO_CHAR(FEC_CRE_COB_FSC,''YYYY'') '
       + 'ORDER BY TO_CHAR(FEC_CRE_COB_FSC,''YYYY'') DESC';
   dm1.cdsQry2.Close;
   dm1.cdsQry2.DataRequest(xSQL);
   dm1.cdsQry2.Open;

   dblcPeriodo.LookupTable:=dm1.cdsQry2;
   dblcPeriodo.LookupField:='PERIODO';

   dblcPeriodo.Text:=dm1.cdsQry2.FieldByname('PERIODO').AsString;
   lblTitulo.Caption:='Cobranzas del F.S.C. al '+DateTimeToStr( DM1.FechaSys );

   BitProcesarClick(Self);
end;


procedure TFCobranzaFSC.LimpiarGrids;
var
   xSQL : String;
begin
  xSQL:='SELECT '' '' FORPAGODES, FORPAGABR FRMPAG,SUM(NVL(IMP_COB_DEU,0)) DEVFSC '
       +  'FROM '
       +    '(SELECT A.ASOID,IMP_APL_FSC,FORPAGABR,FEC_APL_FSC,IMP_COB_DEU,FEC_CRE_COB_FSC '
       +       'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
       +      'WHERE to_char(FEC_CRE_COB_FSC,''YYYY'') = ''1900'' '
       +        'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
       +        'AND NUM_DEV_EXC IS NULL '
       +        'AND A.NUM_DEU=B.NUM_DEU(+) '
       +    ') '
       + 'GROUP BY FORPAGABR '
       + 'ORDER BY FORPAGABR';
  DM1.cdsAcuerdos.Close;
  DM1.cdsAcuerdos.DataRequest( xSQL );
  DM1.cdsAcuerdos.Open;

  xSQL:='SELECT '' '' FORPAGODES, FORPAGABR FRMPAG, '
       +   'SUM(ENE) ENE,SUM(FEB) FEB,SUM(MAR) MAR, '
       +   'SUM(ABR) ABR,SUM(MAY) MAY,SUM(JUN) JUN, '
       +   'SUM(JUL) JUL,SUM(AGO) AGO,SUM("SET") "SET", '
       +   'SUM(OCT) OCT,SUM(NOV) NOV,SUM(DIC) DIC '
       +  'FROM ( '
       +     'SELECT A.ASOID,IMP_APL_FSC,FORPAGABR,FEC_APL_FSC,IMP_COB_DEU,FEC_CRE_COB_FSC, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''01'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END ENE, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''02'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END FEB, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''03'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END MAR, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''04'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END ABR, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''05'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END MAY, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''06'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END JUN, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''07'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END JUL, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''08'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END AGO, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''09'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END "SET", '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''10'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END OCT, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''11'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END NOV, '
       +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''12'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END DIC  '
       +     'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
       +    'WHERE to_char(FEC_CRE_COB_FSC,''YYYY'') = ''1900'' '
       +      'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
       +      'AND NUM_DEV_EXC IS NULL '
       +      'AND A.NUM_DEU=B.NUM_DEU(+) '
       +        ') '
       + 'GROUP BY FORPAGABR '
       + 'ORDER BY FORPAGABR';

  DM1.cdsUtilidades.Close;
  DM1.cdsUtilidades.DataRequest( xSQL );
  DM1.cdsUtilidades.Open;

  xSQL:='SELECT '' '' FORPAGODES, FORPAGABR FRMPAG,SUM(NVL(IMP_COB_DEU,0)) DEVFSC '
       +  'FROM ( '
       +     'SELECT A.ASOID,IMP_APL_FSC,FORPAGABR,FEC_APL_FSC,IMP_COB_DEU,FEC_CRE_COB_FSC '
       +       'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
       +      'WHERE to_char(FEC_CRE_COB_FSC,''YYYYMM'') = ''190001'' '
       +  'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
       +  'AND NUM_DEV_EXC IS NULL '
       +  'AND A.NUM_DEU=B.NUM_DEU(+)) '
       +  'GROUP BY FORPAGABR '
       + 'ORDER BY FORPAGABR';

  DM1.cdsCuotasAnu.Close;
  DM1.cdsCuotasAnu.DataRequest( xSQL );
  DM1.cdsCuotasAnu.Open;

  xSQL:='SELECT TO_CHAR(FEC_APL_FSC,''YYYY'') AÑO,SUM(NVL(IMP_APL_FSC,0)) APLFSC ,SUM(NVL(IMP_COB_DEU,0)) DEVFSC '
       +  'FROM ( '
       +     'SELECT A.ASOID,IMP_APL_FSC,FORPAGABR,FEC_APL_FSC,IMP_COB_DEU,FEC_CRE_COB_FSC '
       +        'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
       +       'WHERE to_char(FEC_CRE_COB_FSC,''YYYYMM'') = ''190001'' '
       +       'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
       +       'AND NUM_DEV_EXC IS NULL '
       +       'AND A.NUM_DEU=B.NUM_DEU(+) '
       +       ') '
       +       'GROUP BY TO_CHAR(FEC_APL_FSC,''YYYY'') '
       +       'ORDER BY TO_CHAR(FEC_APL_FSC,''YYYY'')';
  DM1.cdsQry31.Close;
  DM1.cdsQry31.DataRequest( xSQL );
  DM1.cdsQry31.Open;

  xSQL:='SELECT TO_CHAR(FEC_APL_FSC,''YYYY'') AÑO,FORPAGABR FRMPAG,SUM(NVL(IMP_APL_FSC,0)) APLFSC, '
       +  'SUM(NVL(IMP_COB_DEU,0)) DEVFSC '
       +  'FROM ( '
       +     'SELECT A.ASOID,IMP_APL_FSC,FORPAGABR,FEC_APL_FSC,IMP_COB_DEU,FEC_CRE_COB_FSC '
       +       'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
       +  'WHERE to_char(FEC_CRE_COB_FSC,''YYYYMM'') = ''190001'' '
       +    'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
       +    'AND NUM_DEV_EXC IS NULL '
       +    'AND A.NUM_DEU=B.NUM_DEU(+) '
       +       ') '
       +  'GROUP BY TO_CHAR(FEC_APL_FSC,''YYYY''),FORPAGABR '
       +  'ORDER BY TO_CHAR(FEC_APL_FSC,''YYYY''),FORPAGABR';

  DM1.cdsQry32.Close;
  DM1.cdsQry32.DataRequest( xSQL );
  DM1.cdsQry32.Open;

  lblMesDes.Caption:='';

  dbgMesFP.ColumnByName('APLFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgMesFP.ColumnByName('DEVFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);

  dbgAno.ColumnByName('DEVFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);

  dbgForPag.ColumnByName('ENE').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('FEB').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('MAR').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('ABR').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('MAY').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('JUN').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('JUL').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('AGO').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('SET').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('OCT').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('NOV').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgForPag.ColumnByName('DIC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);

  dbgMesApl.ColumnByName('APLFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
  dbgMesApl.ColumnByName('DEVFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);

  dbgMes.ColumnByName('DEVFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', 0)), ffNumber, 15, 2);
end;


procedure TFCobranzaFSC.BitProcesarClick(Sender: TObject);
var
   xSQL : String;
begin
   xSQL:='SELECT FORPAGODES, a.FORPAGABR FRMPAG, SUM(NVL(IMP_COB_DEU,0)) DEVFSC '
        +  'FROM '
        +    '(SELECT A.ASOID, IMP_APL_FSC, a.FORPAGID, FORPAGABR, FEC_APL_FSC, IMP_COB_DEU, FEC_CRE_COB_FSC '
        +       'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
        +      'WHERE to_char(FEC_CRE_COB_FSC,''YYYY'') = '''+ dblcPeriodo.Text + ''' '
        +        'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
        +        'AND NUM_DEV_EXC IS NULL '
        +        'AND A.NUM_DEU=B.NUM_DEU(+) '
        +    ') a, COB101 b '
        + 'WHERE a.forpagid=b.forpagoid(+) '
        + 'GROUP BY FORPAGABR, FORPAGODES '
        + 'ORDER BY FORPAGABR';
   DM1.cdsAcuerdos.Close;
   DM1.cdsAcuerdos.DataRequest( xSQL );
   DM1.cdsAcuerdos.Open;

   dbgAno.DataSource:=DM1.dsAcuerdos;
   dbgAno.Selected.Clear;
   dbgAno.Selected.Add('FORPAGODES'#9'18'#9'Forma de Pago');
   dbgAno.Selected.Add('DEVFSC'#9'13'#9'Importe');
   dbgAno.ApplySelected;

   TNumericField(DM1.cdsAcuerdos.FieldByName('DEVFSC')).DisplayFormat := '##,###,##0.00';
   dbgAno.ColumnByName('DEVFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsAcuerdos, 'SUM(DEVFSC)',''))), ffNumber, 15, 2);

/////////////////

   xSQL:='SELECT FORPAGODES, a.FORPAGABR FRMPAG, '
        +   'SUM(ENE) ENE,SUM(FEB) FEB,SUM(MAR) MAR, '
        +   'SUM(ABR) ABR,SUM(MAY) MAY,SUM(JUN) JUN, '
        +   'SUM(JUL) JUL,SUM(AGO) AGO,SUM("SET") "SET", '
        +   'SUM(OCT) OCT,SUM(NOV) NOV,SUM(DIC) DIC '
        +  'FROM ( '
        +     'SELECT A.ASOID,IMP_APL_FSC,a.FORPAGID, FORPAGABR,FEC_APL_FSC,IMP_COB_DEU,FEC_CRE_COB_FSC, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''01'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END ENE, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''02'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END FEB, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''03'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END MAR, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''04'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END ABR, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''05'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END MAY, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''06'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END JUN, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''07'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END JUL, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''08'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END AGO, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''09'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END "SET", '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''10'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END OCT, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''11'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END NOV, '
        +        'CASE WHEN TO_CHAR(FEC_CRE_COB_FSC,''MM'')=''12'' THEN NVL(IMP_COB_DEU,0) ELSE 0 END DIC  '
        +     'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
        +    'WHERE to_char(FEC_CRE_COB_FSC,''YYYY'') = '''+dblcPeriodo.Text+''' '
        +      'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
        +      'AND NUM_DEV_EXC IS NULL '
        +      'AND A.NUM_DEU=B.NUM_DEU(+) '
        +        ') a, COB101 b '
        + 'WHERE a.forpagid=b.forpagoid(+) '
        + 'GROUP BY FORPAGABR, FORPAGODES '
        + 'ORDER BY FORPAGABR';

   DM1.cdsUtilidades.Close;
   DM1.cdsUtilidades.DataRequest( xSQL );
   DM1.cdsUtilidades.Open;

   dbgForPag.DataSource:=DM1.dsUtilidades;

   dbgForPag.Selected.Clear;
   dbgForPag.Selected.Add('FORPAGODES'#9'7'#9'Forma~de Pago');
   dbgForPag.Selected.Add('ENE'#9'10'#9'Enero');
   dbgForPag.Selected.Add('FEB'#9'10'#9'Febrero');
   dbgForPag.Selected.Add('MAR'#9'10'#9'Marzo');
   dbgForPag.Selected.Add('ABR'#9'10'#9'Abril');
   dbgForPag.Selected.Add('MAY'#9'10'#9'Mayo');
   dbgForPag.Selected.Add('JUN'#9'10'#9'Junio');
   dbgForPag.Selected.Add('JUL'#9'10'#9'Julio');
   dbgForPag.Selected.Add('AGO'#9'10'#9'Agosto');
   dbgForPag.Selected.Add('SET'#9'10'#9'Setiembre');
   dbgForPag.Selected.Add('OCT'#9'10'#9'Octubre');
   dbgForPag.Selected.Add('NOV'#9'10'#9'Noviembre');
   dbgForPag.Selected.Add('DIC'#9'10'#9'Diciembre');
   dbgForPag.ApplySelected;

   TNumericField(DM1.cdsUtilidades.FieldByName('ENE')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('FEB')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('MAR')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('ABR')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('MAY')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('JUN')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('JUL')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('AGO')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('SET')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('OCT')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('NOV')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsUtilidades.FieldByName('DIC')).DisplayFormat := '##,###,##0.00';

   dbgForPag.ColumnByName('ENE').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(ENE)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('FEB').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(FEB)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('MAR').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(MAR)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('ABR').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(ABR)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('MAY').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(MAY)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('JUN').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(JUN)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('JUL').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(JUL)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('AGO').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(AGO)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('SET').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(SET)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('OCT').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(OCT)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('NOV').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(NOV)',''))), ffNumber, 15, 2);
   dbgForPag.ColumnByName('DIC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsUtilidades, 'SUM(DIC)',''))), ffNumber, 15, 2);

   dbgForPagTitleButtonClick(Self,'ENE');

end;

procedure TFCobranzaFSC.dbgForPagTitleButtonClick(Sender: TObject;
  AFieldName: String);
var
  xMes, xSQL : String;
begin
  if AFieldName='ENE' THEN begin xMes:='01'; lblMesDes.Caption:='Enero del '+dblcPeriodo.Text; end;
  if AFieldName='FEB' THEN begin xMes:='02'; lblMesDes.Caption:='Febrero del '+dblcPeriodo.Text; end;
  if AFieldName='MAR' THEN begin xMes:='03'; lblMesDes.Caption:='Marzo del '+dblcPeriodo.Text; end;
  if AFieldName='ABR' THEN begin xMes:='04'; lblMesDes.Caption:='Abril del '+dblcPeriodo.Text; end;
  if AFieldName='MAY' THEN begin xMes:='05'; lblMesDes.Caption:='Mayo del '+dblcPeriodo.Text; end;
  if AFieldName='JUN' THEN begin xMes:='06'; lblMesDes.Caption:='Junio del '+dblcPeriodo.Text; end;
  if AFieldName='JUL' THEN begin xMes:='07'; lblMesDes.Caption:='Julio del '+dblcPeriodo.Text; end;
  if AFieldName='AGO' THEN begin xMes:='08'; lblMesDes.Caption:='Agosto del '+dblcPeriodo.Text; end;
  if AFieldName='SET' THEN begin xMes:='09'; lblMesDes.Caption:='Setiembre del '+dblcPeriodo.Text; end;
  if AFieldName='OCT' THEN begin xMes:='10'; lblMesDes.Caption:='Octubre del '+dblcPeriodo.Text; end;
  if AFieldName='NOV' THEN begin xMes:='11'; lblMesDes.Caption:='Noviembre del '+dblcPeriodo.Text; end;
  if AFieldName='DIC' THEN begin xMes:='12'; lblMesDes.Caption:='Diciembre del '+dblcPeriodo.Text; end;

  lblMes.Caption:=dblcPeriodo.Text+xMes;

  xSQL:='SELECT FORPAGODES, a.FORPAGABR FRMPAG, SUM(NVL(IMP_COB_DEU,0)) DEVFSC '
       +  'FROM ( '
       +     'SELECT A.ASOID,IMP_APL_FSC, a.FORPAGID, FORPAGABR,FEC_APL_FSC,IMP_COB_DEU,FEC_CRE_COB_FSC '
       +       'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
       +      'WHERE to_char(FEC_CRE_COB_FSC,''YYYYMM'') = '''+dblcPeriodo.Text+xMes  + ''' '
       +  'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
       +  'AND NUM_DEV_EXC IS NULL '
       +  'AND A.NUM_DEU=B.NUM_DEU(+) '
       +  ')  a, COB101 b '
       + 'WHERE a.forpagid=b.forpagoid(+) '
       + 'GROUP BY FORPAGABR, FORPAGODES '
       + 'ORDER BY FORPAGABR';

  DM1.cdsCuotasAnu.Close;
  DM1.cdsCuotasAnu.DataRequest( xSQL );
  DM1.cdsCuotasAnu.Open;

  dbgMes.DataSource:=DM1.dsCuotasAnu;

  dbgMes.Selected.Clear;
  dbgMes.Selected.Add('FORPAGODES'#9'18'#9'Forma~de Pago');
  dbgMes.Selected.Add('DEVFSC'#9'13'#9'Importe');
  dbgMes.ApplySelected;

  TNumericField(DM1.cdsCuotasAnu.FieldByName('DEVFSC')).DisplayFormat := '##,###,##0.00';
  dbgMes.ColumnByName('DEVFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(DEVFSC)',''))), ffNumber, 15, 2);


  xSQL:='SELECT TO_CHAR(FEC_APL_FSC,''YYYY'') AÑO, SUM(NVL(IMP_APL_FSC,0)) APLFSC, SUM(NVL(IMP_COB_DEU,0)) DEVFSC '
       +  'FROM ( '
       +     'SELECT A.ASOID,IMP_APL_FSC,FORPAGABR,FEC_APL_FSC,IMP_COB_DEU,FEC_CRE_COB_FSC '
       +        'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
       +       'WHERE to_char(FEC_CRE_COB_FSC,''YYYYMM'') = '''+dblcPeriodo.Text+xMes  + ''''
       +       'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
       +       'AND NUM_DEV_EXC IS NULL '
       +       'AND A.NUM_DEU=B.NUM_DEU(+) '
       +       ') '
       +       'GROUP BY TO_CHAR(FEC_APL_FSC,''YYYY'') '
       +       'ORDER BY TO_CHAR(FEC_APL_FSC,''YYYY'')';
  DM1.cdsQry31.Close;
  DM1.cdsQry31.DataRequest( xSQL );
  DM1.cdsQry31.Open;

  dbgMesApl.DataSource:=DM1.dsQry31;

  dbgMesApl.Selected.Clear;
  dbgMesApl.Selected.Add('AÑO'#9'6'#9'Año~Aplicado');
  dbgMesApl.Selected.Add('APLFSC'#9'12'#9'Importe~Aplicado');
  dbgMesApl.Selected.Add('DEVFSC'#9'12'#9'Importe~Cobrado');
  dbgMesApl.ApplySelected;

  TNumericField(DM1.cdsQry31.FieldByName('APLFSC')).DisplayFormat := '##,###,##0.00';
  dbgMesApl.ColumnByName('APLFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsQry31, 'SUM(APLFSC)',''))), ffNumber, 15, 2);
  TNumericField(DM1.cdsQry31.FieldByName('DEVFSC')).DisplayFormat := '##,###,##0.00';
  dbgMesApl.ColumnByName('DEVFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsQry31, 'SUM(DEVFSC)',''))), ffNumber, 15, 2);



  xSQL:='SELECT TO_CHAR(FEC_APL_FSC,''YYYY'') AÑO, FORPAGABR FRMPAG, '
       +  'SUM(NVL(IMP_APL_FSC,0)) APLFSC, '
       +  'SUM(NVL(IMP_COB_DEU,0)) DEVFSC '
       +  'FROM ( '
       +     'SELECT A.ASOID,IMP_APL_FSC,FORPAGABR,FEC_APL_FSC,IMP_COB_DEU,FEC_CRE_COB_FSC '
       +       'FROM cob_fsc_pagos_al_fsc A,COB_FSC_DEUDA_FSC_CAB B '
       +  'WHERE to_char(FEC_CRE_COB_FSC,''YYYYMM'') = '''+dblcPeriodo.Text+xMes+''' '
       +    'AND EST_COB_COD NOT IN (''13'', ''04'', ''99'') '
       +    'AND NUM_DEV_EXC IS NULL '
       +    'AND A.NUM_DEU=B.NUM_DEU(+) '
       +       ') '
       +  'GROUP BY TO_CHAR(FEC_APL_FSC,''YYYY''),FORPAGABR '
       +  'ORDER BY TO_CHAR(FEC_APL_FSC,''YYYY''),FORPAGABR';

  DM1.cdsQry32.Close;
  DM1.cdsQry32.DataRequest( xSQL );
  DM1.cdsQry32.Open;

  dbgMesFP.DataSource:=DM1.dsQry32;

  dbgMesFP.Selected.Clear;
  dbgMesFP.Selected.Add('AÑO'#9'6'#9'Año~Aplicado');
  dbgMesFP.Selected.Add('FRMPAG'#9'8'#9'Forma~de Pago');
  dbgMesFP.Selected.Add('APLFSC'#9'12'#9'Importe~Aplicado');
  dbgMesFP.Selected.Add('DEVFSC'#9'12'#9'Importe~Cobrado');
  dbgMesFP.ApplySelected;

  TNumericField(DM1.cdsQry32.FieldByName('APLFSC')).DisplayFormat := '##,###,##0.00';
  dbgMesFP.ColumnByName('APLFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsQry32, 'SUM(APLFSC)',''))), ffNumber, 15, 2);
  TNumericField(DM1.cdsQry32.FieldByName('DEVFSC')).DisplayFormat := '##,###,##0.00';
  dbgMesFP.ColumnByName('DEVFSC').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsQry32, 'SUM(DEVFSC)',''))), ffNumber, 15, 2);


end;

procedure TFCobranzaFSC.bbtnGraficoClick(Sender: TObject);
begin
   if DM1.cdsAcuerdos.RecordCount<=0 then
   begin
      MessageDlg('No existe información para el Grafico...!', mtError, [mbOk], 0);
      Exit;
   end;

   FGraficoFSC := tFGraficoFSC.create(self);
   FGraficoFSC.sTipGraf:='1';
   FGraficoFSC.sAno:=dblcPeriodo.Text;
   FGraficoFSC.sMes:=lblMesDes.Caption;
   FGraficoFSC.ShowModal;
   FGraficoFSC.Free;
end;

procedure TFCobranzaFSC.bbtnGrafMesClick(Sender: TObject);
begin
   if DM1.cdsAcuerdos.RecordCount<=0 then
   begin
      MessageDlg('No existe información para el Grafico...!', mtError, [mbOk], 0);
      Exit;
   end;
   
   FGraficoFSC := tFGraficoFSC.create(self);
   FGraficoFSC.sAno:=dblcPeriodo.Text;
   FGraficoFSC.sTipGraf:='2';
   FGraficoFSC.ShowModal;
   FGraficoFSC.Free;
end;

procedure TFCobranzaFSC.btnAExcelClick(Sender: TObject);
Var
   xArchivo: String;
Begin

   If Length(trim(xgrid)) = 0 Then
   Begin
      ShowMessage('Debe seleccionar uno de los cuadros de la pantalla.');
      exit;
   End;

   If XGRID = '1' Then
   Begin
      If DM1.cdsAcuerdos.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      xArchivo := 'Forma de Pago del Año '+dblcPeriodo.Text;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dbgAno, xArchivo);
   End;

   If XGRID = '2' Then
   Begin
      If DM1.cdsUtilidades.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      xArchivo := 'Forma de Pago por Meses del año '+dblcPeriodo.Text;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dbgForPag, xArchivo);
   End;

   If XGRID = '3' Then
   Begin
      If DM1.cdsCuotasAnu.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      xArchivo := 'Forma de Pago por Mes '+lblMes.Caption;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dbgMes, xArchivo);
   End;

   If XGRID = '4' Then
   Begin
      If DM1.cdsQry31.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      xArchivo := 'Años de Aplicacion del mes '+lblMes.Caption;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dbgMesApl, xArchivo);
   End;

   If XGRID = '5' Then
   Begin
      If DM1.cdsQry32.RecordCount <= 0 Then
      Begin
         ShowMessage('No existe información para exportar a Excel.');
         exit;
      End;
      xArchivo := 'Años de Aplicacion y forma de Pago del mes '+lblMes.Caption;
      If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
      DM1.ExportaGridExcel(dbgMesFP, xArchivo);
   End;


end;

procedure TFCobranzaFSC.dbgAnoEnter(Sender: TObject);
begin
   If dbgAno.Focused Then XGRID := '1';
end;

procedure TFCobranzaFSC.dbgForPagEnter(Sender: TObject);
begin
   If dbgForPag.Focused Then XGRID := '2';
end;

procedure TFCobranzaFSC.dbgMesEnter(Sender: TObject);
begin
   If dbgMes.Focused Then XGRID := '3';
end;

procedure TFCobranzaFSC.dbgMesAplEnter(Sender: TObject);
begin
   If dbgMesApl.Focused Then XGRID := '4';
end;

procedure TFCobranzaFSC.dbgMesFPEnter(Sender: TObject);
begin
   If dbgMesFP.Focused Then XGRID := '5';
end;

procedure TFCobranzaFSC.dblcPeriodoChange(Sender: TObject);
begin
   LimpiarGrids;
end;

procedure TFCobranzaFSC.btnSalirClick(Sender: TObject);
begin
   Close;
end;

end.
