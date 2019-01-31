unit COB504;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB504
// Formulario                    : fReportesONP
// Fecha de Creación             : 02/05/2013
// Autor                         : Hugo Noriega
// Objetivo                      : Reportes de Cobranzas por ONP a cesantes de Ley 19990

// Actualizaciones:
// HPC_201306_COB                : 02/05/2013 - Reportes de Cobranzas por ONP a cesantes de Ley 19990
// SPP_201308_COB                : Se realiza el pase a producción a partir del HPC_201308_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls, wwdblook,
  ppEndUsr, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppBands, ppCache, ppCtrls, ppVar, ppPrnabl, ppParameter, ppModule,
  daDataModule;

type
  TfReportesONP = class(TForm)
    GroupBox1: TGroupBox;
    rgReporte: TRadioGroup;
    DBGrid: TDBGrid;
    BitPrint: TBitBtn;
    BitBtn1: TBitBtn;
    BitSalir: TBitBtn;
    rgTipo: TRadioGroup;
    dblcPeriodo: TwwDBLookupCombo;
    ppdbONP: TppDBPipeline;
    pprONP_ER: TppReport;
    ppd1: TppDesigner;
    pprONP_ED: TppReport;
    pprONP_NR: TppReport;
    pprONP_ND: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel99: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBText2: TppDBText;
    ppParameterList2: TppParameterList;
    ppParameterList3: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppShape5: TppShape;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel39: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel44: TppLabel;
    ppDBText26: TppDBText;
    ppLabel45: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel46: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape6: TppShape;
    ppLabel47: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBText33: TppDBText;
    ppHeaderBand3: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel23: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel28: TppLabel;
    ppDBText7: TppDBText;
    ppLabel29: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel30: TppLabel;
    ppLabel4: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText17: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel31: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBText22: TppDBText;
    ppParameterList4: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppShape7: TppShape;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel58: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppLabel63: TppLabel;
    ppDBText40: TppDBText;
    ppLabel64: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLabel65: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppShape8: TppShape;
    ppLabel71: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    daDataModule1: TdaDataModule;
    procedure BitPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
    nPorcentaje : Double;
  public
    { Public declarations }
    procedure ConsultaData;
  end;

var
  fReportesONP: TfReportesONP;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfReportesONP.BitPrintClick(Sender: TObject);
begin
  ppdbONP.DataSource:= nil;
  pprONP_ER.DataPipeline:=nil;
  pprONP_ED.DataPipeline:=nil;
  pprONP_NR.DataPipeline:=nil;
  pprONP_ND.DataPipeline:=nil;

  ConsultaData;

  ppdbONP.DataSource:=DM1.dsCambios;

  if (rgReporte.ItemIndex=0) and (rgTipo.ItemIndex=0) then begin pprONP_ER.DataPipeline:=ppdbONP; ppd1.Report:=pprONP_ER; end;
  if (rgReporte.ItemIndex=0) and (rgTipo.ItemIndex=1) then begin pprONP_ED.DataPipeline:=ppdbONP; ppd1.Report:=pprONP_ED; end;
  if (rgReporte.ItemIndex=1) and (rgTipo.ItemIndex=0) then begin pprONP_NR.DataPipeline:=ppdbONP; ppd1.Report:=pprONP_NR; end;
  if (rgReporte.ItemIndex=1) and (rgTipo.ItemIndex=1) then begin pprONP_ND.DataPipeline:=ppdbONP; ppd1.Report:=pprONP_ND; end;


  if (rgReporte.ItemIndex=0) and (rgTipo.ItemIndex=0) then pprONP_ER.Print;
  if (rgReporte.ItemIndex=0) and (rgTipo.ItemIndex=1) then pprONP_ED.Print;
  if (rgReporte.ItemIndex=1) and (rgTipo.ItemIndex=0) then pprONP_NR.Print;
  if (rgReporte.ItemIndex=1) and (rgTipo.ItemIndex=1) then pprONP_ND.Print;

  //ppd1.ShowModal;
end;

procedure TfReportesONP.ConsultaData;
var
    xSQL, sTitulo1, sTitulo2, sNoDes : String;
    nTotPro, nTotDes : Double;
begin
  Screen.Cursor := crHourglass;
  DM1.cdsCambios.IndexFieldNames :='';

  sTitulo1:='';
  sTitulo2:='';
  if rgTipo.ItemIndex=0 then sTitulo1:='RESUMEN DE ';
  if rgTipo.ItemIndex=1 then sTitulo1:='DETALLE DE ';
  If rgReporte.ItemIndex=0 then sTitulo1:=sTitulo1+'EFECTIVIDAD DE LA COBRANZA EFECTUADA POR ONP';
  If rgReporte.ItemIndex=1 then sTitulo1:=sTitulo1+'COBRANZA NO EFECTUADA O PARCIAL POR ONP';

  sNoDes:='';
  If rgReporte.ItemIndex=1 then sNoDes:=' HAVING case when nvl(max(C.MONENVCOB), 0) > 0 then nvl(max(C.MONENVCOB), 0) - nvl(max(D.MONDES), 0) else NULL end>0 ';


  sTitulo2:='( GENERAL )';


  if rgTipo.ItemIndex=0 then
  xSQL:='SELECT DPTODES, DPTOID, COUNT(*) MOVIMIENTOS, SUM(nvl(MONENVCOB,0)) MONENVCOB, '
       +   'SUM(nvl(DESCONTADO,0)) DESCONTADO, SUM(nvl(MONTO_NO_DES,0)) MONTO_NO_DES, '
       +   'ROUND(case when SUM(nvl(MONENVCOB,0))>0 then SUM(nvl(DESCONTADO,0)) /SUM(nvl(MONENVCOB,0))*100 else NULL end,0) Porcentaje, '
       +   ''''+sTitulo1+''' Titulo1, '''+sTitulo2+''' Titulo2, 0.00 PORC_TOTAL, '
       +   'TRIM(TO_CHAR(to_date(''01/'+Copy(dblcPeriodo.Text,5,2)+'/'+Copy(dblcPeriodo.Text,1,4)+'''), ''MONTH''))||'' DEL ''||'''+Copy(dblcPeriodo.Text,1,4)+''' PERIODO '
       +'FROM ( '
       +        'SELECT E.DPTODES, G.DPTOID, B.UPROID, B.UPAGOID, B.USEID, B.ASOID, B.ASOAPENOM, B.ASOTIPID, '
       +            'nvl(max(C.MONENVCOB),0) MONENVCOB, nvl(max(D.MONDES),0) DESCONTADO, '
       +            'case when nvl(max(C.MONENVCOB),0)>0 then nvl(max(C.MONENVCOB),0)-nvl(max(D.MONDES),0) else NULL end MONTO_NO_DES, '
       +            'round(case when nvl(max(C.MONENVCOB),0)>0 then nvl(max(D.MONDES),0)/nvl(max(C.MONENVCOB),0)*100 else NULL end,0) Porcentaje '
       +        'FROM '
       +              '( SELECT ASOID FROM COB_ONP_PRO_DET WHERE PERCOB='''+dblcPeriodo.Text+''' '
       +               ' UNION '
       +               ' SELECT ASOID FROM COB_ONP_RET_DET WHERE PERCOB='''+dblcPeriodo.Text+''' '
       +              ') A, APO201 B, COB_ONP_PRO_DET C, COB_ONP_RET_DET D, APO101 G, APO158 E '
       +        'WHERE A.ASOID = B.ASOID(+) '
       +         ' AND A.ASOID = C.ASOID(+) AND C.PERCOB(+)='''+dblcPeriodo.Text+''' '
       +         ' AND A.ASOID = D.ASOID(+) AND D.PERCOB(+)='''+dblcPeriodo.Text+''' '
       +         ' AND B.USEID=G.USEID(+) AND B.UPAGOID=G.UPAGOID(+) AND B.UPROID=G.UPROID(+) '
       +         ' AND G.DPTOID = E.DPTOID(+) '
       +        'GROUP BY B.ASOID, B.ASOAPENOM, G.DPTOID, E.DPTODES, B.UPROID, B.UPAGOID, B.USEID, B.ASOTIPID '
       +        sNoDes
       +    ' ) '
       +'GROUP BY DPTODES, DPTOID '
       +'ORDER BY DPTODES'
  else
  xSQL:='SELECT E.DPTODES, G.DPTOID, B.UPROID, B.UPAGOID, B.USEID, B.ASOID, B.ASOAPENOM, B.ASOTIPID, '
       +   'nvl(max(C.MONENVCOB),0) MONENVCOB, nvl(max(D.MONDES),0) DESCONTADO, '
       +   'case when nvl(max(C.MONENVCOB),0)>0 then nvl(max(C.MONENVCOB),0)-nvl(max(D.MONDES),0) else NULL end MONTO_NO_DES, '
       +   'round(case when nvl(max(C.MONENVCOB),0)>0 then nvl(max(D.MONDES),0)/nvl(max(C.MONENVCOB),0)*100 else NULL end,0) Porcentaje, '
       +   ''''+sTitulo1+''' Titulo1, '''+sTitulo2+''' Titulo2, 0.00 PORC_TOTAL, '
       +   'case when nvl(max(C.MONENVCOB),0)>0 then case when nvl(max(D.MONDES),0)=0 then ''NO DSCTO'' else ''PARCIAL'' end else '' '' end DETALLE, '
       +   'TRIM(TO_CHAR(to_date(''01/'+Copy(dblcPeriodo.Text,5,2)+'/'+Copy(dblcPeriodo.Text,1,4)+'''), ''MONTH''))||'' DEL ''||'''+Copy(dblcPeriodo.Text,1,4)+''' PERIODO '
       +        'FROM '
       +              '( SELECT ASOID FROM COB_ONP_PRO_DET WHERE PERCOB='''+dblcPeriodo.Text+''' '
       +               ' UNION '
       +               ' SELECT ASOID FROM COB_ONP_RET_DET WHERE PERCOB='''+dblcPeriodo.Text+''' '
       +              ') A, APO201 B, COB_ONP_PRO_DET C, COB_ONP_RET_DET D, APO101 G, APO158 E '
       +        'WHERE A.ASOID = B.ASOID(+) '
       +         ' AND A.ASOID = C.ASOID(+) AND C.PERCOB(+)='''+dblcPeriodo.Text+''' '
       +         ' AND A.ASOID = D.ASOID(+) AND D.PERCOB(+)='''+dblcPeriodo.Text+''' '
       +         ' AND B.USEID=G.USEID(+) AND B.UPAGOID=G.UPAGOID(+) AND B.UPROID=G.UPROID(+) '
       +         ' AND G.DPTOID = E.DPTOID(+) '
       +        'GROUP BY E.DPTODES, B.ASOID, B.ASOAPENOM, G.DPTOID, B.UPROID, B.UPAGOID, B.USEID, B.ASOTIPID '
       +'ORDER BY DPTODES, B.UPROID, B.UPAGOID, B.USEID, B.ASOAPENOM';

   DM1.cdsCambios.Close;
   DM1.cdsCambios.DataRequest(xSQL);
   DM1.cdsCambios.Open;

   DM1.cdsCambios.Filtered:=False;
   If rgReporte.ItemIndex=1 then
   begin
      DM1.cdsCambios.Filter:='MONTO_NO_DES>0';
      DM1.cdsCambios.Filtered:=True;
   end;

   nTotPro:=0; nTotDes:=0;

   DM1.cdsCambios.First;
   while not DM1.cdsCambios.Eof do
   begin
      nTotPro:=nTotPro+DM1.cdsCambios.FieldByname('MONENVCOB').Asfloat;
      nTotDes:=nTotDes+DM1.cdsCambios.FieldByname('DESCONTADO').Asfloat;
      DM1.cdsCambios.Next;
   end;
   DM1.cdsCambios.First;

   if nTotDes>0 then
      nPorcentaje:= DM1.FRound( nTotDes / nTotPro * 100 , 5, 0 );

   while not DM1.cdsCambios.Eof do
   begin
      DM1.cdsCambios.Edit;
      DM1.cdsCambios.FieldByname('PORC_TOTAL').Asfloat:=nPorcentaje;
      DM1.cdsCambios.Next;
   end;
   DM1.cdsCambios.First;

   Screen.Cursor := crDefault;
end;


procedure TfReportesONP.FormActivate(Sender: TObject);
var
   xSQL, sMes : String;
begin
  If DM1.cdsCambios.Active = True Then DM1.cdsCambios.Close;

   xSQL:='SELECT DISTINCT PERCOB FROM COB_ONP_PRO_CAB '
//        +'UNION '
//        +'SELECT DISTINCT PERCOB FROM COB_ONP_RET_CAB '
        +'ORDER BY PERCOB DESC';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;

   dblcPeriodo.LookupTable:=DM1.cdsQry4;
   dblcPeriodo.LookupField:='PERCOB';
end;

procedure TfReportesONP.BitBtn1Click(Sender: TObject);
begin
  ConsultaData;

  If DM1.cdsCambios.RecordCount = 0 Then
  Begin
     MessageDlg(' No Existe Información Para Este Rango ó El Criterio Seleccionado ', mtError,[mbOk],0);
     Exit;
  End;

  DBGrid.DataSource := DM1.dsCambios;
  DM1.HojaExcel('REPORTE', DM1.dsCambios, DBGrid);

end;

procedure TfReportesONP.BitSalirClick(Sender: TObject);
begin
  Close;
end;

end.
