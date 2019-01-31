unit COB470;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB470
// Formulario           : FFSCxDpto
// Fecha de Creación    : 09/02/2015
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Consultas de FSC Por Departamento
//
// Actualizaciones      :
// HPC_201508_COB       : Consultas de FSC Por Departamento

//Inicio HPC_201508_COB
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, Buttons, db, ppEndUsr, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppCache, ppParameter, jpeg;

type
  TFFSCxDpto = class(TForm)
    Panel1: TPanel;
    BitProcesar: TBitBtn;
    pnlfecha: TPanel;
    Label3: TLabel;
    dtpHasta: TwwDBDateTimePicker;
    dbgDepa: TwwDBGrid;
    Panel2: TPanel;
    btnSalir: TBitBtn;
    bbtnImprimir: TBitBtn;
    btnAExcel: TBitBtn;
    rgTipAso: TRadioGroup;
    rgCausal: TRadioGroup;
    ppDBPipeline1: TppDBPipeline;
    ppr1: TppReport;
    ppd1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel3: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLabel15: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppImage1: TppImage;
    procedure FormActivate(Sender: TObject);
    procedure BitProcesarClick(Sender: TObject);
    procedure rgTipAsoClick(Sender: TObject);
    procedure rgCausalClick(Sender: TObject);
    procedure dtpHastaExit(Sender: TObject);
    procedure bbtnImprimirClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure dtpHastaChange(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
    sHasta : String;
    sTipAso : String;
    sCausal : String;
    sTitAso : String;
    sTitCau : String;
    sTitPro : String;
    procedure LimpiaGrid;

  public
    { Public declarations }
  end;

var
  FFSCxDpto: TFFSCxDpto;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFFSCxDpto.FormActivate(Sender: TObject);
begin
   dtpHasta.Date := DM1.FechaSys;
   sHasta:=FormatDateTime(wFormatFecha, dtpHasta.DateTime);
   rgCausalClick(Self);
   rgTipAsoClick(Self);
   dtpHastaExit(Self);
   LimpiaGrid;
end;

procedure TFFSCxDpto.BitProcesarClick(Sender: TObject);
var
  xSQL : String;
begin
  sTitPro := ', ''Consulta al '+dtpHasta.Text+''' titulo4 ';

  xSQL:='Select d.dptoid, d.dptodes, '
       +   'sum(nvl(a.imp_apl_fsc, 0)) env_imp, count(*) env_con, sum(nvl(impcob, 0)) cob_imp, '
       +   'sum(nvl(cant, 0)) cob_con, sum(nvl(a.imp_apl_fsc, 0)) - sum(nvl(impcob, 0)) saldo, '
       +   'round(sum(nvl(impcob, 0)) * 100 / sum(imp_apl_fsc), 2) efectividad '
       +   sTitAso
       +   sTitCau
       +   sTitPro
       +  'from cob_fsc_deuda_fsc_cab a, '
       +      ' (select num_deu, asoid, sum(nvl(imp_cob_deu, 0)) impcob, 1 cant '
       +         ' from cob_fsc_pagos_al_fsc '
       +        ' where est_cob_cod not in (''13'', ''04'', ''99'') and fec_cob_deu <= '''+sHasta+''' '
       +          ' and NUM_DEV_EXC IS NULL '
       +        ' group by num_deu, asoid ) b, '
       +      ' (select distinct num_deu, asoid, dptoid from cob_fsc_deuda_fsc_det ) c, '
       +      ' apo158 d '
       + 'where a.fec_apl_fsc >= ''01/01/2000'' and a.fec_apl_fsc <= '''+sHasta+''' '
       +  ' and id_est_fsc not in (''13'', ''04'', ''99'') '
       +  ' and a.tip_aso_origen IN (''DO'', ''CE'', ''CO'') '
       +  sTipAso
       +  sCausal
       +  ' and a.num_deu = b.num_deu(+) and a.asoid=b.asoid(+) '
       +  ' and a.num_deu = c.num_deu(+) and a.asoid=c.asoid(+) '
       +  ' and c.dptoid = d.dptoid(+) '
       + 'group by d.dptoid, d.dptodes '
       + 'order by dptodes';

    DM1.cdsCuotasAnu.Close;
    DM1.cdsCuotasAnu.DataRequest( xSQL );
    DM1.cdsCuotasAnu.Open;

    dbgDepa.Selected.Clear;
    dbgDepa.Selected.Add('dptoid'#9'11'#9'Código~Departamento');
    dbgDepa.Selected.Add('dptodes'#9'18'#9'Departamento');
    dbgDepa.Selected.Add('env_imp'#9'18'#9'FSC Aplicado~Importe');
    dbgDepa.Selected.Add('env_con'#9'12'#9'FSC Aplicado~Asociados');
    dbgDepa.Selected.Add('cob_imp'#9'16'#9'Cobrado~Importe');
    dbgDepa.Selected.Add('Saldo'#9'18'#9'Saldo');
    dbgDepa.ApplySelected;

    TNumericField(DM1.cdsCuotasAnu.FieldByName('efectividad')).DisplayFormat := '##0.00';
    TNumericField(DM1.cdsCuotasAnu.FieldByName('env_imp')).DisplayFormat := '###,###,##0.00';
    TNumericField(DM1.cdsCuotasAnu.FieldByName('cob_imp')).DisplayFormat := '###,###,##0.00';
    TNumericField(DM1.cdsCuotasAnu.FieldByName('env_con')).DisplayFormat := '###,###,##0';
    TNumericField(DM1.cdsCuotasAnu.FieldByName('cob_con')).DisplayFormat := '###,###,##0';
    TNumericField(DM1.cdsCuotasAnu.FieldByName('Saldo')).DisplayFormat   := '###,###,##0.00';

    dbgDepa.ColumnByName('env_imp').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(env_imp)',''))), ffNumber, 15, 2);
    dbgDepa.ColumnByName('cob_imp').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(cob_imp)',''))), ffNumber, 15, 2);
    dbgDepa.ColumnByName('Saldo').FooterValue   :=FloatToStrF(StrToFloat(FormatFloat('########0.00', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(Saldo)',''))),   ffNumber, 15, 2);

    dbgDepa.ColumnByName('env_con').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(env_con)',''))), ffNumber, 15, 0);
    dbgDepa.ColumnByName('cob_con').FooterValue :=FloatToStrF(StrToFloat(FormatFloat('########0', DM1.OperClientDataSet(DM1.cdsCuotasAnu, 'SUM(cob_con)',''))), ffNumber, 15, 0);
end;

procedure TFFSCxDpto.rgTipAsoClick(Sender: TObject);
begin
   LimpiaGrid;

   if rgTipAso.ItemIndex=0 then sTipAso:=' and a.tip_aso_origen IN (''DO'',''CE'',''CO'') ';
   if rgTipAso.ItemIndex=1 then sTipAso:=' and a.tip_aso_origen=''DO'' ';
   if rgTipAso.ItemIndex=2 then sTipAso:=' and a.tip_aso_origen=''CE'' ';
   if rgTipAso.ItemIndex=3 then sTipAso:=' and a.tip_aso_origen=''CO'' ';

   if rgTipAso.ItemIndex=0 then sTitAso:=', ''Tipos de Asociados : Todos''       titulo1 ';
   if rgTipAso.ItemIndex=1 then sTitAso:=', ''Tipos de Asociados : Docentes''    titulo1 ';
   if rgTipAso.ItemIndex=2 then sTitAso:=', ''Tipos de Asociados : Cesantes''    titulo1 ';
   if rgTipAso.ItemIndex=3 then sTitAso:=', ''Tipos de Asociados : Contratados'' titulo1 ';

end;

procedure TFFSCxDpto.rgCausalClick(Sender: TObject);
begin
   LimpiaGrid;
   
   if rgCausal.ItemIndex=0 then sCausal:='';
   if rgCausal.ItemIndex=1 then sCausal:=' and a.forpagid=''23'' ';
   if rgCausal.ItemIndex=2 then sCausal:=' and a.forpagid=''24'' ';
   if rgCausal.ItemIndex=3 then sCausal:=' and a.forpagid=''44'' ';

   if rgCausal.ItemIndex=0 then sTitCau:=', ''Causal : Todas''          titulo2 ';
   if rgCausal.ItemIndex=1 then sTitCau:=', ''Causal : Fallecidos ''    titulo2 ';
   if rgCausal.ItemIndex=2 then sTitCau:=', ''Causal : Incobrabilidad'' titulo2 ';
   if rgCausal.ItemIndex=3 then sTitCau:=', ''Causal : Invalidez''      titulo2 ';
end;

procedure TFFSCxDpto.dtpHastaExit(Sender: TObject);
begin
   sHasta:=FormatDateTime(wFormatFecha, dtpHasta.DateTime);
end;

procedure TFFSCxDpto.bbtnImprimirClick(Sender: TObject);
begin
  If DM1.cdsCuotasAnu.RecordCount <= 0 Then
  Begin
       ShowMessage('No existe información para el Reporte');
       exit;
  End;

  ppDBPipeline1.DataSource:=DM1.dsCuotasAnu;
  ppr1.Print;
  //ppd1.ShowModal;
end;

procedure TFFSCxDpto.btnAExcelClick(Sender: TObject);
Var
   xArchivo: String;
begin
    If DM1.cdsCuotasAnu.RecordCount <= 0 Then
    Begin
       ShowMessage('No existe información para exportar a Excel.');
       exit;
    End;

    xArchivo := 'FSC x Dpto';

    If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');

    DM1.ExportaGridExcel(dbgDepa, xArchivo);
end;

procedure TFFSCxDpto.dtpHastaChange(Sender: TObject);
begin
   LimpiaGrid;
end;

procedure TFFSCxDpto.LimpiaGrid;
Var
  xSQL : String;
begin
  xSQL:='Select d.dptoid, d.dptodes, '
       +   'sum(nvl(a.imp_apl_fsc, 0)) env_imp, count(*) env_con, sum(nvl(impcob, 0)) cob_imp, '
       +   'sum(nvl(cant, 0)) cob_con, sum(nvl(a.imp_apl_fsc, 0)) - sum(nvl(impcob, 0)) saldo, '
       +   'round(sum(nvl(impcob, 0)) * 100 / sum(imp_apl_fsc), 2) efectividad '
       +   sTitAso
       +   sTitCau
       +   sTitPro
       +  'from cob_fsc_deuda_fsc_cab a, '
       +      ' (select num_deu, asoid, sum(nvl(imp_cob_deu, 0)) impcob, 1 cant '
       +         ' from cob_fsc_pagos_al_fsc '
       +        ' where est_cob_cod not in (''13'', ''04'', ''99'') and fec_cob_deu <= '''+sHasta+''' '
       +          ' and NUM_DEV_EXC IS NULL '
       +        ' group by num_deu, asoid ) b, '
       +      ' (select distinct num_deu, asoid, dptoid from cob_fsc_deuda_fsc_det ) c, '
       +      ' apo158 d '
       + 'where a.fec_apl_fsc >= ''01/01/2000'' and a.fec_apl_fsc <= '''+sHasta+''' '
       +  ' and a.asoid=''hhjj'' '
       +  ' and id_est_fsc not in (''13'', ''04'', ''99'') '
       +  ' and a.tip_aso_origen IN (''DO'', ''CE'', ''CO'') '
       +  ' and a.num_deu = b.num_deu(+) and a.asoid=b.asoid(+) '
       +  ' and a.num_deu = c.num_deu(+) and a.asoid=c.asoid(+) '
       +  ' and c.dptoid = d.dptoid(+) '
       + 'group by d.dptoid, d.dptodes '
       + 'order by dptodes';

    DM1.cdsCuotasAnu.Close;
    DM1.cdsCuotasAnu.DataRequest( xSQL );
    DM1.cdsCuotasAnu.Open;

    dbgDepa.DataSource:=DM1.dsCuotasAnu;
end;


procedure TFFSCxDpto.btnSalirClick(Sender: TObject);
begin
   DM1.cdsCuotasAnu.Close;
   Close;
end;

end.
//Final HPC_201508_COB
