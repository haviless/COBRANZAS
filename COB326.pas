unit COB326;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB326
// Formulario                    : FChequesAnu
// Fecha de Creación             : 26/09/2013
// Autor                         : Sistemas
// Objetivo                      : Consulta de Cheques Anulados

// Actualizaciones               :
// HPC_201310_COB    26/09/2013  : Opción nueva de Control de Cheques Anulados
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201312_COB    03/12/2013  : Debe mostrar el mensaje si no existen registros en la cabecera
// SPP_201314_COB                : Se realiza el pase a producción a partir del documento HPC_201312_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  ComCtrls, Mask, wwdbedit, wwdblook, Wwdbdlg, fcButton, fcImgBtn,
  fcShapeBtn, fcLabel, wwdbdatetimepicker, ppEndUsr, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppParameter, ppStrtch, ppSubRpt, db;

type
  TFChequesAnu = class(TForm)
    Panel1: TPanel;
    fclTitulo: TfcLabel;
    pnlTool: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    bbtnAceptar: TfcShapeBtn;
    pnlUPago: TPanel;
    lblUPago: TLabel;
    lblUnidadProceso: TLabel;
    dblcdUPago: TwwDBLookupComboDlg;
    dblcdUProceso: TwwDBLookupComboDlg;
    dbeUProceso: TwwDBEdit;
    dbeUPago: TwwDBEdit;
    pnlPie: TPanel;
    bbtnSalir: TBitBtn;
    dbgFiltro: TwwDBGrid;
    BtnCerrar: TBitBtn;
    dtpDesde: TwwDBDateTimePicker;
    dtpHasta: TwwDBDateTimePicker;
    Label2: TLabel;
    Label5: TLabel;
    dtpDesReg: TwwDBDateTimePicker;
    dtpHasReg: TwwDBDateTimePicker;
    cbFReg: TCheckBox;
    cbFChe: TCheckBox;
    bitImprimir: TfcShapeBtn;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    ppd1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppdb2: TppDBPipeline;
    rgRegu: TRadioGroup;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel2: TppLabel;
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
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel27: TppLabel;
    ppLine13: TppLine;
    ppLabel29: TppLabel;
    ppLine19: TppLine;
    ppLabel33: TppLabel;
    ppDBText21: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine18: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine17: TppLine;
    ppLabel28: TppLabel;
    ppLine2: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppDBText20: TppDBText;
    ppLine20: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine16: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel32: TppLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure FormActivate(Sender: TObject);
    procedure dbgFiltroDblClick(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure FiltrarData;
    procedure bitImprimirClick(Sender: TObject);
    procedure BtnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFRegClick(Sender: TObject);
    procedure cbFCheClick(Sender: TObject);
    procedure dblcdUProcesoChange(Sender: TObject);
    procedure dblcdUPagoChange(Sender: TObject);
    procedure rgReguClick(Sender: TObject);
  private
    { Private declarations }
    procedure FiltrarCheques;
    procedure LimpiaData;
  public
    { Public declarations }
  end;

var
  FChequesAnu: TFChequesAnu;

implementation

uses COBDM1, COB328;

{$R *.dfm}

procedure TFChequesAnu.FormActivate(Sender: TObject);
var
   xSQL : String;
begin
   dtpDesde.Date  := DM1.FechaSys;
   dtpHasta.Date  := DM1.FechaSys;
   dtpDesReg.Date := DM1.FechaSys;
   dtpHasReg.Date := DM1.FechaSys;

   FiltrarData;

   xSQL := 'SELECT upagoid, uproid, upagonom FROM APO103 ORDER BY UPAGOID';
   DM1.FiltraCDS(DM1.cdsQry3, xSQL);

   xSQL := 'SELECT uproid, upronom, uproabr FROM APO102 ORDER BY UPROID';
   DM1.FiltraCDS(DM1.cdsQry2, xSQL);
   DM1.cdsQry2.IndexFieldNames := 'UPROID';

// Inicio: SPP_201314_COB    03/12/2013  : Debe mostrar el mensaje si no existen registros en la cabecera
   dblcdUProceso.LookupTable:=DM1.cdsQry2;
// Fin: SPP_201314_COB       03/12/2013  : Debe mostrar el mensaje si no existen registros en la cabecera

end;


procedure TFChequesAnu.FiltrarData;
var
   xSQL: String;
   sTitulo2 : String;
begin
   sTitulo2:='';
   if trim(dblcdUProceso.text)<>'' then sTitulo2:=sTitulo2+'UPRO '+dblcdUProceso.text+'  |  ';
   if trim(dblcdUPago.text)<>'' then    sTitulo2:=sTitulo2+'UPAGO '+dblcdUPago.text+'  |  ';
   if cbFReg.Checked then
      sTitulo2:=sTitulo2+'Fecha de Registro Desde '+dtpDesReg.Text+' hasta '+dtpHasReg.Text+'  |  ';
   if cbFChe.Checked then
      sTitulo2:=sTitulo2+'Fecha de Cheque Anulado Desde '+dtpDesde.Text+' hasta '+dtpHasta.Text+'  |  ';

   if rgRegu.ItemIndex=0 then sTitulo2:=sTitulo2+'Estado: Regularizados Si';
   if rgRegu.ItemIndex=1 then sTitulo2:=sTitulo2+'Estado: Regularizados No';
   if rgRegu.ItemIndex=2 then sTitulo2:=sTitulo2+'Estado: Todos';

   xSQL:='select numreg, perori, fecche, numche, monche, numope, monope, uproid, upagoid, useid, '
        +  'asotipid, rcobid, detrcobid, usuregche, fecregche, feccon, numcon, fecrec, usuregcon, '
        +  'fecregcon, fecofi, numofi, usuregofi, fecregofi, numcheuno, usureguno, fecreguno, '
        +  'numchedos, usuregdos, fecregdos, numchetres, usuregtres, fecregtres, numchecuatro, '
        +  'usuregcuatro, fecregcuatro, nvl(estreg,''N'') estreg, '
        +'monche - (   nvl(to_number( substr(numcheuno, instr(numcheuno,''||'',1,3)+2,  (instr(numcheuno,''||'',1,4)-1) - instr(numcheuno,''||'',1,3)-1 ), ''999999999.99''),0) '
        +          ' + nvl(to_number( substr(numchedos, instr(numchedos,''||'',1,3)+2,  (instr(numchedos,''||'',1,4)-1) - instr(numchedos,''||'',1,3)-1 ), ''999999999.99''),0) '
        +          ' + nvl(to_number( substr(numchetres, instr(numchetres,''||'',1,3)+2,  (instr(numchetres,''||'',1,4)-1) - instr(numchetres,''||'',1,3)-1 ), ''999999999.99''),0) '
        +          ' + nvl(to_number( substr(numchecuatro, instr(numchecuatro,''||'',1,3)+2,  (instr(numchecuatro,''||'',1,4)-1) - instr(numchecuatro,''||'',1,3)-1 ), ''999999999.99''),0) '
        +        ' ) saldo, '
        +  ''''+sTitulo2+''' Titulo2 '
        +'from cob_che_anu '
        +'Where uproid like ''' +dblcdUProceso.text+'%'' '
        + ' and upagoid like '''+dblcdUPago.Text   +'%'' ';

   if cbFReg.Checked then
   xSQL:=xSQL
        + ' and to_date(fecregche)>='''+dtpDesReg.Text+''' '
        + ' and to_date(fecregche)<='''+dtpHasReg.Text+''' ';

   if cbFChe.Checked then
   xSQL:=xSQL
        + ' and fecche>='''+dtpDesde.Text+''' '
        + ' and fecche<='''+dtpHasta.Text+''' ';

   if rgRegu.ItemIndex=0 then xSQL:=xSQL+ ' and nvl(estreg,''N'')=''S'' ';
   if rgRegu.ItemIndex=1 then xSQL:=xSQL+ ' and nvl(estreg,''N'')=''N'' ';

   xSQL:=xSQL
        +'order by numreg desc';

   DM1.cdsAcuerdos.Close;
   DM1.cdsAcuerdos.Datarequest(xSQL);
   DM1.cdsAcuerdos.Open;

   dbgFiltro.Selected.Clear;
   dbgFiltro.Selected.Add('numreg'#9'08'#9'Registro');
   dbgFiltro.Selected.Add('perori'#9'08'#9'Periodo~Cobranza');
   dbgFiltro.Selected.Add('fecche'#9'11'#9'Fecha de~Cheque');
   dbgFiltro.Selected.Add('numche'#9'12'#9'Número de~Cheque');
   dbgFiltro.Selected.Add('monche'#9'12'#9'Monto de~Cheque');
   dbgFiltro.Selected.Add('numope'#9'12'#9'Número de~Operación');
   dbgFiltro.Selected.Add('uproid'#9'08'#9'UPRO');
   dbgFiltro.Selected.Add('upagoid'#9'08'#9'UPAGO');
   dbgFiltro.Selected.Add('asotipid'#9'08'#9'Tipo de~Asociado');
   dbgFiltro.Selected.Add('usuregche'#9'15'#9'Usuario~Registro');
   dbgFiltro.Selected.Add('fecregche'#9'10'#9'Fecha~Registro');
   dbgFiltro.Selected.Add('rcobid'#9'08'#9'Registro~Cobranza');
   dbgFiltro.Selected.Add('estreg'#9'10'#9'Regularizado~[S]i/[N]o/[P]arcial');
   dbgFiltro.ApplySelected;

   TNumericField(DM1.cdsAcuerdos.FieldByName('monche')).DisplayFormat:= '##,###,##0.00';

end;

procedure TFChequesAnu.LimpiaData;
var
   xSQL: String;
begin
   xSQL:='select numreg, perori, fecche, numche, monche, numope, monope, uproid, upagoid, useid, '
        +  'asotipid, rcobid, detrcobid, usuregche, fecregche, feccon, numcon, fecrec, usuregcon, '
        +  'fecregcon, fecofi, numofi, usuregofi, fecregofi, numcheuno, usureguno, fecreguno, '
        +  'numchedos, usuregdos, fecregdos, numchetres, usuregtres, fecregtres, numchecuatro, '
        +  'usuregcuatro, fecregcuatro, nvl(estreg,''N'') estreg, '
        +  '0.00 saldo, '
        +  ''' '' Titulo2 '
        +'from cob_che_anu '
        +'Where numreg = 0';

   DM1.cdsAcuerdos.Close;
   DM1.cdsAcuerdos.Datarequest(xSQL);
   DM1.cdsAcuerdos.Open;

   dbgFiltro.Selected.Clear;
   dbgFiltro.Selected.Add('numreg'#9'08'#9'Registro');
   dbgFiltro.Selected.Add('perori'#9'08'#9'Periodo~Cobranza');
   dbgFiltro.Selected.Add('fecche'#9'11'#9'Fecha de~Cheque');
   dbgFiltro.Selected.Add('numche'#9'12'#9'Número de~Cheque');
   dbgFiltro.Selected.Add('monche'#9'12'#9'Monto de~Cheque');
   dbgFiltro.Selected.Add('numope'#9'12'#9'Número de~Operación');
   dbgFiltro.Selected.Add('uproid'#9'08'#9'UPRO');
   dbgFiltro.Selected.Add('upagoid'#9'08'#9'UPAGO');
   dbgFiltro.Selected.Add('asotipid'#9'08'#9'Tipo de~Asociado');
   dbgFiltro.Selected.Add('usuregche'#9'15'#9'Usuario~Registro');
   dbgFiltro.Selected.Add('fecregche'#9'10'#9'Fecha~Registro');
   dbgFiltro.Selected.Add('rcobid'#9'08'#9'Registro~Cobranza');
   dbgFiltro.Selected.Add('estreg'#9'10'#9'Regularizado~[S]i/[N]o/[P]arcial');
   dbgFiltro.ApplySelected;

   TNumericField(DM1.cdsAcuerdos.FieldByName('monche')).DisplayFormat:= '##,###,##0.00';

end;




procedure TFChequesAnu.dbgFiltroDblClick(Sender: TObject);
begin
   Try
      DM1.cdsUtilidades.Close;

      FAnulaChequeEdit := TFAnulaChequeEdit.Create(Self);
      FAnulaChequeEdit.ShowModal;
   Finally
      FAnulaChequeEdit.Free;
   End;

end;

procedure TFChequesAnu.bbtnAceptarClick(Sender: TObject);
begin
   FiltrarData;
end;

procedure TFChequesAnu.bitImprimirClick(Sender: TObject);
begin
   FiltrarCheques;

// Inicio: SPP_201314_COB    03/12/2013  : Debe mostrar el mensaje si no existen registros en la cabecera
// if DM1.cdsCuotasAnu.RecordCount<=0 then
   if DM1.cdsAcuerdos.RecordCount<=0 then
// Fin: SPP_201314_COB       03/12/2013  : Debe mostrar el mensaje si no existen registros en la cabecera
   begin
      ShowMessage('No existe información para mostrar.');
      Exit;
   end;


   DM1.cdsAcuerdos.IndexFieldNames:='numreg';
   DM1.cdsCuotasAnu.MasterSource:=DM1.dsAcuerdos;
   DM1.cdsCuotasAnu.MasterFields:='numreg';

   ppdb1.DataSource:=DM1.dsAcuerdos;
   ppdb2.DataSource:=DM1.dsCuotasAnu;
   ppr1.Print;
   //ppd1.ShowModal;

   DM1.cdsAcuerdos.IndexFieldNames:='';
   DM1.cdsCuotasAnu.MasterSource:=nil;
   DM1.cdsCuotasAnu.MasterFields:='';

end;



procedure TFChequesAnu.FiltrarCheques;
var
  xSQL : String;
begin
  xSQL:='select * from ( '
       +'select numreg, 1 cheord, '
       +'substr(numcheuno, 1, instr(numcheuno,''||'',1,1)-1) numche, '
       +'substr(numcheuno, instr(numcheuno,''||'',1,1)+2,  (instr(numcheuno,''||'',1,2)-1) - instr(numcheuno,''||'',1,1)-1 ) fecche, '
       +'substr(numcheuno, instr(numcheuno,''||'',1,2)+2,  (instr(numcheuno,''||'',1,3)-1) - instr(numcheuno,''||'',1,2)-1 ) numope, '
       +'to_number( substr(numcheuno, instr(numcheuno,''||'',1,3)+2,  (instr(numcheuno,''||'',1,4)-1) - instr(numcheuno,''||'',1,3)-1 ), ''999999999.99'') monche, '
       +'substr(numcheuno, instr(numcheuno,''||'',1,4)+2,  (instr(numcheuno,''||'',1,5)-1) - instr(numcheuno,''||'',1,4)-1 ) observ  '
       +'from cob_che_anu '
       +'union all '
       +'select numreg, 2 cheord, '
       +'substr(numchedos, 1, instr(numchedos,''||'',1,1)-1) numche, '
       +'substr(numchedos, instr(numchedos,''||'',1,1)+2,  (instr(numchedos,''||'',1,2)-1) - instr(numchedos,''||'',1,1)-1 ) fecche, '
       +'substr(numchedos, instr(numchedos,''||'',1,2)+2,  (instr(numchedos,''||'',1,3)-1) - instr(numchedos,''||'',1,2)-1 ) numope, '
       +'to_number( substr(numchedos, instr(numchedos,''||'',1,3)+2,  (instr(numchedos,''||'',1,4)-1) - instr(numchedos,''||'',1,3)-1 ), ''999999999.99'') monche, '
       +'substr(numchedos, instr(numchedos,''||'',1,4)+2,  (instr(numchedos,''||'',1,5)-1) - instr(numchedos,''||'',1,4)-1 ) observ  '
       +'from cob_che_anu '
       +'union all '
       +'select numreg, 3 cheord, '
       +'substr(numchetres, 1, instr(numchetres,''||'',1,1)-1) numche, '
       +'substr(numchetres, instr(numchetres,''||'',1,1)+2,  (instr(numchetres,''||'',1,2)-1) - instr(numchetres,''||'',1,1)-1 ) fecche, '
       +'substr(numchetres, instr(numchetres,''||'',1,2)+2,  (instr(numchetres,''||'',1,3)-1) - instr(numchetres,''||'',1,2)-1 ) numope, '
       +'to_number( substr(numchetres, instr(numchetres,''||'',1,3)+2,  (instr(numchetres,''||'',1,4)-1) - instr(numchetres,''||'',1,3)-1 ), ''999999999.99'') monche, '
       +'substr(numchetres, instr(numchetres,''||'',1,4)+2,  (instr(numchetres,''||'',1,5)-1) - instr(numchetres,''||'',1,4)-1 ) observ  '
       +'from cob_che_anu '
       +'union all '
       +'select numreg, 4 cheord, '
       +'substr(numchecuatro, 1, instr(numchecuatro,''||'',1,1)-1) numche, '
       +'substr(numchecuatro, instr(numchecuatro,''||'',1,1)+2,  (instr(numchecuatro,''||'',1,2)-1) - instr(numchecuatro,''||'',1,1)-1 ) fecche, '
       +'substr(numchecuatro, instr(numchecuatro,''||'',1,2)+2,  (instr(numchecuatro,''||'',1,3)-1) - instr(numchecuatro,''||'',1,2)-1 ) numope, '
       +'to_number( substr(numchecuatro, instr(numchecuatro,''||'',1,3)+2,  (instr(numchecuatro,''||'',1,4)-1) - instr(numchecuatro,''||'',1,3)-1 ), ''999999999.99'') monche, '
       +'substr(numchecuatro, instr(numchecuatro,''||'',1,4)+2,  (instr(numchecuatro,''||'',1,5)-1) - instr(numchecuatro,''||'',1,4)-1 ) observ  '
       +'from cob_che_anu '
       +') '
       +'where numche is not null '
       +'order by numreg, cheord';

   DM1.cdsCuotasAnu.Close;
   DM1.cdsCuotasAnu.DataRequest( xSQL );
   DM1.cdsCuotasAnu.Open;
end;

procedure TFChequesAnu.BtnCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TFChequesAnu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsAcuerdos.IndexFieldNames:='';
   DM1.cdsCuotasAnu.MasterSource:=nil;
   DM1.cdsCuotasAnu.MasterFields:='';
   DM1.cdsQry2.IndexFieldNames  := '';
end;

procedure TFChequesAnu.cbFRegClick(Sender: TObject);
begin
  LimpiaData;
end;

procedure TFChequesAnu.cbFCheClick(Sender: TObject);
begin
  LimpiaData;
end;

procedure TFChequesAnu.dblcdUProcesoChange(Sender: TObject);
begin
  LimpiaData;
end;

procedure TFChequesAnu.dblcdUPagoChange(Sender: TObject);
begin
  LimpiaData;
end;

procedure TFChequesAnu.rgReguClick(Sender: TObject);
begin
  LimpiaData;
end;

end.
