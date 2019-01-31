unit COB469;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB469
// Formulario           : FOperacionesFSC
// Fecha de Creación    : 10/02/2015
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Consultas de Operaciones del FSC
//
// Actualizaciones      :
// HPC_201508_COB       : Consultas de Operaciones del FSC - Anuladas

// Inicio  HPC_201508_COB
// HPC_201808_COB : Se desarrolla reporte "Resumen a Nivel Nacional de Aplicaciones al FSC"  
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, wwdbdatetimepicker, ppParameter,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppRelatv, ppDB, ppDBPipe, ppComm, ppEndUsr, ppStrtch, ppMemo, Grids,
  // Inicio: HPC_201808_COB 
  // Se añade nueva unidad a usar
  // Wwdbigrd, Wwdbgrid, db, jpeg;
  Wwdbigrd, Wwdbgrid, db, jpeg, DBGrids;
  // Fin: HPC_201808_COB 

type
  TFOperacionesFSC = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dtpFinal: TwwDBDateTimePicker;
    dtpInicio: TwwDBDateTimePicker;
    btnimprimir: TBitBtn;
    btnaexcel: TBitBtn;
    btncerrar: TBitBtn;
    rgTipo: TRadioGroup;
    ppd1: TppDesigner;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    ppParameterList9: TppParameterList;
    ppHeaderBand9: TppHeaderBand;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppSystemVariable25: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppSystemVariable27: TppSystemVariable;
    ppDBText62: TppDBText;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel127: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText6: TppDBText;
    ppDBText45: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppSummaryBand9: TppSummaryBand;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppLabel111: TppLabel;
    ppLine44: TppLine;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppDBText63: TppDBText;
    ppLabel105: TppLabel;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppDBText72: TppDBText;
    ppLine47: TppLine;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    // Inicio: HPC_201808_COB
    // Se retira grid no usado
    // dbgOpe: TwwDBGrid;
    // Fin: HPC_201808_COB
    ppImage1: TppImage;

    // Inicio: HPC_201808_COB
    // Variables para el nuevo reporte
    ppdb2: TppDBPipeline;
    ppr2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppImage2: TppImage;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    dbgAExcel: TDBGrid;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppShape7: TppShape;
    ppDBText12: TppDBText;
    ppShape9: TppShape;
    ppLabel20: TppLabel;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppLabel21: TppLabel;
    ppShape13: TppShape;
    ppLabel22: TppLabel;
    ppShape14: TppShape;
    ppLabel23: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel24: TppLabel;
    pplfecha: TppLabel;
    ppLabel25: TppLabel;
    ppLine1: TppLine;
    pplimpresopor: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBText19: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppShape15: TppShape;
    ppLabel26: TppLabel;
    ppShape16: TppShape;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel12: TppLabel;
    // Fin: HPC_201808_COB

    procedure FormActivate(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    // Inicio: HPC_201808_COB
    // Se añade procedimiento para el control del teclado
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    // Fin: HPC_201808_COB
  private
    { Private declarations }
    procedure Consulta00;
    // Inicio: HPC_201808_COB
    // Se añade procedimiento para filtrar información de la nueva consulta 
    procedure Consulta01;
    // Fin: HPC_201808_COB
  public
    { Public declarations }
  end;

var
  FOperacionesFSC: TFOperacionesFSC;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFOperacionesFSC.FormActivate(Sender: TObject);
begin
   dtpInicio.Date := Date;
   dtpFinal.Date := Date;
end;

// Inicio: HPC_201808_COB
// Se modifica procedimiento para la genereación del reporte del nuevo proceso
procedure TFOperacionesFSC.btnimprimirClick(Sender: TObject);
Var
   xSQL: String;
Begin
   DM1.cdsReporte.Close;
   If dtpInicio.Date = 0 Then
   Begin
      ShowMessage('Error : Debe ingresar la fecha de Inicio');
      dtpInicio.SetFocus;
      Exit;
   End;
   If dtpFinal.Date = 0 Then
   Begin
      ShowMessage('Error : Debe ingresar la fecha Final');
      dtpFinal.SetFocus;
      Exit;
   End;
   If dtpFinal.Date < dtpInicio.Date Then
   Begin
      ShowMessage('Error : Fecha Final debe ser mayor o igual a fecha de Inicio');
      dtpFinal.SetFocus;
      Exit;
   End;
   If rgTipo.ItemIndex = 0 Then
   Begin
      Consulta00;
      ppd1.Report := ppr1;
   End;
   If rgTipo.ItemIndex = 1 Then
   Begin
      Consulta01;
   End;
   If DM1.cdsReporte.Recordcount <= 0 Then
   Begin
      ShowMessage('No existe información para el filtro seleccionado');
      Exit;
   End;
   If rgTipo.ItemIndex = 0 Then
   Begin
      ppDB1.DataSource := DM1.dsReporte;
      ppr1.Print;
      ppr2.Cancel;
   End;
   If rgTipo.ItemIndex = 1 Then
   Begin
      pplimpresopor.Caption := 'Impreso por : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
      pplfecha.Caption := ' Del '+dtpInicio.Text+' al '+dtpFinal.Text;
      ppr2.Print;
      ppr2.Cancel;
   End;
end;
// Fin: HPC_201808_COB


procedure TFOperacionesFSC.Consulta00;
Var
   xSQL : String;
begin
      xSQL:='select num_deu, nro_ref_fsc, forpagid, fec_ref_fsc, a.asoid, fec_apl_fsc, imp_apl_fsc, '
           +   'id_est_fsc, usu_apl_fsc, obs_fsc, ult_fec_cob, imp_cob_fsc, imp_sal_fsc, hor_apl_fsc, '
           +   'user_anula, to_date(freg_anula) freg_anula, obs_anula, '
           +   'tip_aso_origen, '
           +   'b.asoapenom, b.asocodmod, b.useid, b.asotipid, ';

      If dtpInicio.Text = dtpFinal.Text Then
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ''' Rango '
      Else
         xSQL := xSQL + ''' Del ' + dtpInicio.text + ' al ' + dtpFinal.Text + ''' Rango ';

      xSQL := xSQL
           +  'from COB_FSC_DEUDA_FSC_CAB a, APO201 b '
           + 'where a.fec_apl_fsc >= ''01/01/2000'' '
           +   'and a.fec_apl_fsc>=''' + dtpInicio.text + ''' and fec_apl_fsc<=''' + dtpFinal.Text + ''' '
           +   'and a.id_est_fsc in (''13'', ''04'', ''99'') '
           +   'and a.tip_aso_origen IN (''DO'', ''CE'', ''CO'') '
           +   'and a.user_anula is not null '
           +   'and a.asoid=b.asoid(+) '
           + 'order by freg_anula, num_deu';

   screen.Cursor := crHourGlass;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;

   TNumericField(DM1.cdsReporte.FieldByName('imp_apl_fsc')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('imp_cob_fsc')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('imp_sal_fsc')).DisplayFormat := '###,###,##0.00';

   screen.Cursor := crDefault;
end;

// Inicio: HPC_201808_COB
// Se modifica procedimiento para exportación a Excel del nuevo proceso
procedure TFOperacionesFSC.btnaexcelClick(Sender: TObject);
Var
   xArchivo: String;
begin
   DM1.cdsReporte.Close;
   If dtpInicio.Date = 0 Then
   Begin
      ShowMessage('Error : Debe ingresar la fecha de Inicio');
      dtpInicio.SetFocus;
      Exit;
   End;
   If dtpFinal.Date = 0 Then
   Begin
      ShowMessage('Error : Debe ingresar la fecha Final');
      dtpFinal.SetFocus;
      Exit;
   End;
   If dtpFinal.Date < dtpInicio.Date Then
   Begin
      ShowMessage('Error : Fecha Final debe ser mayor o igual a fecha de Inicio');
      Exit;
   End;
   If rgTipo.ItemIndex = 0 Then
   Begin
      Consulta00;
   End;
   If rgTipo.ItemIndex = 1 Then
   Begin
      Consulta01;
   End;
   If DM1.cdsReporte.RecordCount <= 0 Then
   Begin
      ShowMessage('No existe información para exportar a Excel.');
      dtpInicio.SetFocus;
      exit;
   End;
   If rgTipo.ItemIndex = 0 Then
      DM1.HojaExcel('RES_NAC_FSC_ANU', DM1.dsReporte, dbgAExcel);
   If rgTipo.ItemIndex = 1 Then
      DM1.HojaExcel('RES_NAC_FSC', DM1.dsReporte, dbgAExcel);
   // dbgOpe.DataSource := DM1.dsReporte;
   // xArchivo := 'Operaciones del FSC Anuladas';
   // try
   //   If FileExists(xArchivo + '.slk') Then DeleteFile(xArchivo + '.slk');
   //   DM1.ExportaGridExcel(dbgOpe, xArchivo);
   // except
   //    ShowMessage('Cierre el Excel y Genere nuevamente.');
   // end;
end;
// Fin: HPC_201808_COB

procedure TFOperacionesFSC.btncerrarClick(Sender: TObject);
begin
   DM1.cdsReporte.Close;
   Close;
end;
// Inicio: HPC_201808_COB
// Qry del nuevo proceso
procedure TFOperacionesFSC.Consulta01;
Var
   xSQL: String;
begin
   xSQL := 'SELECT A.UPROID UNID_PROCESO, G.UPRONOM DESC_UNID_PROCESO, A.UPAGOID UNID_PAGO, H.UPAGONOM DESC_UNID_PAGO, A.USEID UNID_UGEL, I.USENOM DESC_UNID_UGEL,'
   +' C.OFDESNOM OFIDES, D.ASOCODMOD CODIGO_MODULAR, D.ASOTIPID TIPO_ASOCIADO,'
   +' D.ASODNI DNI, D.ASOAPENOM NOMBRES_Y_APELLIDOS, A.CRE_APL_FSC NUMERO_CREDITO, A.IMP_APL_FSC MONTO_APLICADO, A.FEC_APL_FSC FECHA_APLICACION,'
   +' A.CAP_APL_FSC AMORTIZACION, A.INT_APL_FSC INTERES, A.DSG_APL_FSC DESGRAVAMEN, A.FLA_APL_FSC FLAT, A.NUM_DEU NUMERO_DEUDA, E.IMP_SAL_FSC SALDO_ACTUAL,'
   +' F.ESTDES ESTADO'
   +' FROM COB_FSC_DEUDA_FSC_DET A, CRE301 B, APO110 C, APO201 D, COB_FSC_DEUDA_FSC_CAB E, CRE113 F, APO102 G, APO103 H, APO101 I'
   +' WHERE A.FEC_APL_FSC> =TO_DATE('+QuotedStr(dtpInicio.text)+',''DD/MM/YYYY'') AND A.FEC_APL_FSC<=TO_DATE('+QuotedStr(dtpFinal.Text)+',''DD/MM/YYYY'')'
   +' AND A.CRE_APL_FSC = B.CREDID AND B.OFDESID = C.OFDESID AND A.ASOID = D.ASOID AND A.ASOID = E.ASOID AND A.NUM_DEU = E.NUM_DEU'
   +' AND E.ID_EST_FSC = F.ESTID'
   +' AND D.UPROID = G.UPROID'
   +' AND D.UPROID = H.UPROID AND D.UPAGOID = H.UPAGOID'
   +' AND D.UPROID = I.UPROID AND D.UPAGOID = I.UPAGOID AND D.USEID = I.USEID'
   +' ORDER BY A.NUM_DEU';
   screen.Cursor := crHourGlass;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   screen.Cursor := crDefault;
end;
// Fin: HPC_201808_COB


// Inicio: HPC_201808_COB
// Se adiciona el keypress
procedure TFOperacionesFSC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 Then
    If (ActiveControl is TCheckBox) then
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End
    Else
    Begin
      Key:=#0;
      Perform(CM_DialogKey,VK_TAB,0);
    End;
end;
// Fin: HPC_201808_COB

end.
// Final  HPC_201508_COB
