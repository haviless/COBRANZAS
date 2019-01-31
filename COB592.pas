unit COB592;

// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Cobranzas
// Unidad                    : COB592
// Formulario                : FCalParaleloVencido
// Fecha de Creación         :
// Autor                     : Desarrollo Sistemas Derrama
// Objetivo                  : Reporte de Calendario Paralelo / Vencido
//
// Actualizaciones:
// HPC_201307_COB            : 14/06/2013   Agregar Campos de Padron, del Credito y Cartera
// SPP_201309_COB            : Se realiza el pase a producción a partir del HPC_201307_COB


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdblook, Wwdbdlg, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, DBGrids, ppEndUsr, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache;

type
  TFCalParaleloVencido = class(TForm)
    gbTipoReporte: TGroupBox;
    rbCalParalelo: TRadioButton;
    rbCalSaldoVencido: TRadioButton;
    gbFecha: TGroupBox;
    Label1: TLabel;
    gbUnidadProceso: TGroupBox;
    dblcdUPro: TwwDBLookupComboDlg;
    meUPro: TMaskEdit;
    gbUnidadPago: TGroupBox;
    dblcdUPago: TwwDBLookupComboDlg;
    meUPago: TMaskEdit;
    gbTipoDocente: TGroupBox;
    rbDocentes: TRadioButton;
    rbContratados: TRadioButton;
    rbCesantes: TRadioButton;
    rbTodos: TRadioButton;
    btnFiltrar: TBitBtn;
    dbgResultado: TwwDBGrid;
    btnAExcel: TBitBtn;
    btnSalir: TBitBtn;
    dtFecha: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure dblcdUProChange(Sender: TObject);
    procedure CargarUPago;
    procedure btnAExcelClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure dblcdUPagoChange(Sender: TObject);
    procedure CalendarioParalelo;
    procedure CalendarioVencido;
    procedure rbCalParaleloClick(Sender: TObject);
    procedure rbCalSaldoVencidoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgResultadoTitleButtonClick(Sender: TObject;
      AFieldName: String);
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
    procedure rbDocentesClick(Sender: TObject);
    procedure rbContratadosClick(Sender: TObject);
    procedure rbCesantesClick(Sender: TObject);
    procedure rbTodosClick(Sender: TObject);
// fin: HPP_201003_COB
  private
    { Private declarations }
    procedure CalcularFecha;
  public
    { Public declarations }
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
// limpia el grid
    procedure Limpiar;
// fin: HPP_201003_COB
  end;

var
  FCalParaleloVencido: TFCalParaleloVencido;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFCalParaleloVencido.FormCreate(Sender: TObject);
var xSql: String;
begin
  DM1.cdsReporte.Close;
    
  //Fecha hasta
  CalcularFecha;
// Unidades de proceso
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
//  xSql := 'select UPROID, UPRONOM, UPROABR, DPTOID from APO102 order by UPROID';
// Muestra sólo las UProceso de las UGELs activas
  xSql := 'SELECT DISTINCT UP.UPROID, UP.UPRONOM, UP.UPROABR, UP.DPTOID'
    + ' FROM APO102 UP INNER JOIN APO101 UG ON UP.UPROID = UG.UPROID WHERE NVL(UG.FDESHABILITADO,''N'') = ''N'''
    + ' ORDER BY UP.UPROID';
  DM1.cdsUPro.Close;
  DM1.cdsUPro.DataRequest(xSQL);
  DM1.cdsUPro.Open;

  DM1.cdsUPago.Close;
// fin: HPP_201003_COB

  dblcdUPro.LookupField:='';
  dblcdUPro.LookupTable:=DM1.cdsUPro;
  dblcdUPro.LookupField:='UPROID';
  dblcdUPro.Selected.Clear;
  dblcdUPro.Selected.Add('UPROID'#9'5'#9'UProceso'#9#9);
  dblcdUPro.Selected.Add('UPRONOM'#9'35'#9'Nombre'#9#9);

// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
{
  //Lista los datos para esa fecha
  xSql := 'SELECT ROWNUM FILA, UPROID, UPAGOID, ASOTIPID, DEPARTAMENTO,'
    + ' UNIDADPROCESO, UNIDADPAGO, UGEL,'
    + ' CODIGOMODULAR, NOMBREDOCENTE, REGPENDES,'
    + ' TIPOCREDITO, CUOSINPROCOB, SALDOSINPROCOB,'
    + ' CUOPROCOB, SALDOPROCOB, CUOSALDOTOTAL,'
    + ' SALDOTOTAL, CUODIFER, COBDIFER,'
    + ' MONTODIFER, CUOSALDOVENC, SALDOVENCIDO,'
    + ' ULTFORPAGDES, ULTFECPAG, VALORCUOTA, CUOATRASO '
    + 'FROM COB_CAL_PARALELO '
    + 'WHERE 1 = 2';

  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;

  dbgResultado.Selected.Clear;
  dbgResultado.Selected.Add('FILA'#9'6'#9'Fila'#9#9);
  dbgResultado.Selected.Add('DEPARTAMENTO'#9'15'#9'Departamento'#9#9);
  dbgResultado.Selected.Add('UNIDADPROCESO'#9'20'#9'U. Proceso'#9#9);
  dbgResultado.Selected.Add('UNIDADPAGO'#9'20'#9'U. Pago'#9#9);
  dbgResultado.Selected.Add('UGEL'#9'15'#9'Ugel'#9#9);
  dbgResultado.Selected.Add('CODIGOMODULAR'#9'12'#9'Cod.Mod'#9#9);
  dbgResultado.Selected.Add('NOMBREDOCENTE'#9'40'#9'Docente'#9#9);
  dbgResultado.Selected.Add('ASOTIPID'#9'10'#9'Tipo~Asociado'#9#9);
  dbgResultado.Selected.Add('REGPENDES'#9'10'#9'Regimen~Pensión'#9#9);
  dbgResultado.Selected.Add('CREDID'#9'20'#9'Crédito'#9#9);
  dbgResultado.Selected.Add('TIPOCREDITO'#9'25'#9'Tip.Cred.'#9#9);
  dbgResultado.Selected.Add('CUOSINPROCOB'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Sin Proc.Cobranza');
  dbgResultado.Selected.Add('SALDOSINPROCOB'#9'12'#9'Monto Total'#9'F'#9'Saldo Sin Proc.Cobranza');
  dbgResultado.Selected.Add('CUOPROCOB'#9'10'#9'Nº Cuotas'#9'F'#9'Cuotas en Proc.Cob');
  dbgResultado.Selected.Add('SALDOPROCOB'#9'12'#9'Monto Total'#9'F'#9'Cuotas en Proc.Cob');
  dbgResultado.Selected.Add('CUOSALDOTOTAL'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Total');
  dbgResultado.Selected.Add('SALDOTOTAL'#9'12'#9'Monto Total'#9'F'#9'Saldo Total');
  dbgResultado.Selected.Add('CUODIFER'#9'10'#9'Nº Cuotas'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('COBDIFER'#9'10'#9'Cobranzas'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('MONTODIFER'#9'12'#9'Monto Total'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('CUOSALDOVENC'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Vencido');
  dbgResultado.Selected.Add('SALDOVENCIDO'#9'12'#9'Monto Total'#9'F'#9'Saldo Vencido');
  dbgResultado.Selected.Add('ULTFORPAGDES'#9'10'#9'Forma Cob'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('ULTFECPAG'#9'12'#9'Fecha Cob'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('VALORCUOTA'#9'12'#9'Valor Cuota'#9'F'#9'Cuota Pactada');
  dbgResultado.Selected.Add('CUOATRASO'#9'12'#9'Días Atraso'#9'F'#9'Cuota Pactada');
  dbgResultado.ApplySelected;
}
// limpia el grid
  dblcdUPago.Enabled := false;
  Limpiar;
// fin: HPP_201003_COB

end;

procedure TFCalParaleloVencido.CalcularFecha;
var
  xSql: String;
begin
  if rbCalParalelo.Checked then
  begin
    xSql := 'SELECT MAX(FECHA) FECHA FROM COB_CALENDARIO WHERE TIPO = ''P''';
  end
  else
  begin
    xSql := 'SELECT MAX(FECHA) FECHA FROM COB_CALENDARIO WHERE TIPO = ''V''';
  end;
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;

  if DM1.cdsQry.RecordCount > 0 then
  begin
    dtFecha.Text := DM1.cdsQry.FieldByName('FECHA').AsString;
    if dtFecha.Text = '' then
    begin
      gbFecha.Caption := 'Datos generados: No hay datos';
    end
    else
    begin
      gbFecha.Caption := 'Datos generados';
    end;
  end
  else
  begin
    gbFecha.Caption := 'Datos generados: No hay datos';
    dtFecha.Text := '';
  end;
end;

procedure TFCalParaleloVencido.dblcdUProChange(Sender: TObject);
begin
  If DM1.cdsUPro.Locate('UPROID',VarArrayof([dblcdUPro.text]),[]) Then
  begin
    meUPro.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
    dblcdUPago.Enabled := true;
// fin: HPP_201003_COB
    CargarUPago;
  end
  else
  begin
    meUPro.text := '';
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
    dblcdUPago.Text := '';
    meUPago.Text := '';
    dblcdUPago.Enabled := false;
    DM1.cdsUPago.Close;
  end;

  Limpiar;
// fin: HPP_201003_COB
end;

procedure TFCalParaleloVencido.CargarUPago;
var xSql : String;
begin
  xSql := 'select UPROID, UPAGOID, UPAGONOM, UPAGOABR, DPTOID from APO103 '
    + 'where UPROID = ' + QuotedStr(Trim(dblcdUPro.Text)) + ' order by UPAGOID';
  DM1.cdsUPago.Close;
  DM1.cdsUPago.DataRequest(xSQL);
  DM1.cdsUPago.Open;

  dblcdUPago.LookupField:='';
  dblcdUPago.LookupTable:=DM1.cdsUPago;
  dblcdUPago.LookupField:='UPAGOID';
  dblcdUPago.Selected.Clear;
  dblcdUPago.Selected.Add('UPAGOID'#9'5'#9'UPago'#9#9);
  dblcdUPago.Selected.Add('UPAGONOM'#9'35'#9'Nombre'#9#9);
end;

procedure TFCalParaleloVencido.btnAExcelClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
   if DM1.cdsReporte.RecordCount=0 then
   begin
      ShowMessage('No hay registros para mostrar');
      exit;
   end;
// fin: HPP_201003_COB

   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='CRED_PAR_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   Screen.Cursor := crHourGlass;
   DM1.ExportaGridExcel(dbgResultado,xArchivo);
   Screen.Cursor := crDefault;
end;

procedure TFCalParaleloVencido.btnFiltrarClick(Sender: TObject);
begin
  if dtFecha.Text = '' then
  begin
    ShowMessage('No existen datos para ese tipo de reporte');
    Exit;
  end;

// Inicio: SPP_201309_COB            : 14/06/2013   Agregar Campos de Padron, del Credito y Cartera
  if Trim(dblcdUPro.Text) = '' then
  begin
    ShowMessage('Debe Seleccionar la Unidad de proceso');
    Exit;
  end;
// Fin: SPP_201309_COB            : 14/06/2013   Agregar Campos de Padron, del Credito y Cartera

  if rbCalParalelo.Checked then
    CalendarioParalelo
  else
    CalendarioVencido;
end;

procedure TFCalParaleloVencido.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFCalParaleloVencido.dblcdUPagoChange(Sender: TObject);
begin
  If DM1.cdsUPago.Locate('UPAGOID',VarArrayof([dblcdUPago.text]),[]) Then
  begin
    meUPago.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
  end
  else
  begin
    meUPago.text := '';
  end;
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
  Limpiar;
// fin: HPP_201003_COB
end;

procedure TFCalParaleloVencido.CalendarioParalelo;
var
  xSql: String;
  xWhere: String;
// Inicio: SPP_201309_COB            Agregar Campos de Padron, del Credito y Cartera
  sSQL, sPeriodoCob : String;
// Fin: SPP_201309_COB            Agregar Campos de Padron, del Credito y Cartera
begin
  Screen.Cursor := crHourGlass;

  xWhere := '';

// Inicio: SPP_201309_COB            Agregar Campos de Padron, del Credito y Cartera
  sSQL:='SELECT MAX(PERIODO) PERIODO, UPROID, UPAGOID, USEID, ASOTIPID '
       +  'FROM COB_PROG_DES_PLANILLA '
       + 'WHERE FLGPRO=''X'' AND FLGANU IS NULL '
       +   'AND UPROID = ' + quotedstr(dblcdUPro.Text);
  if Trim(dblcdUPago.Text)<>'' then
     sSQL:=sSQL + ' AND UPAGOID = ' + quotedstr(dblcdUPro.Text);
  if not rbTodos.Checked then
  begin
    if rbDocentes.Checked    then sSql := sSql + ' AND ASOTIPID = ''DO''';
    if rbContratados.Checked then sSql := sSql + ' AND ASOTIPID = ''CO''';
    if rbCesantes.Checked    then sSql := sSql + ' AND ASOTIPID = ''CE''';
  end;
  sSQL:=sSQL + ' GROUP BY UPROID,UPAGOID,USEID,ASOTIPID '
             + ' ORDER BY PERIODO DESC';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;

  sPeriodoCob:=DM1.cdsQry.FieldByName('PERIODO').AsString;

  sSQL:='SELECT max(CODPAD) CODPAD FROM ASO_PAD_DET_HIS';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;

  xSql:='SELECT ROWNUM FILA, '
       +   'a.UPROID, a.UPAGOID,   a.ASOTIPID,   DEPARTAMENTO,   UNIDADPROCESO, UNIDADPAGO,   UGEL,          CODIGOMODULAR,  NOMBREDOCENTE,  REGPENDES, '
       +   'a.CREDID, TIPOCREDITO, CUOSINPROCOB, SALDOSINPROCOB, CUOPROCOB,     SALDOPROCOB,  CUOSALDOTOTAL, SALDOTOTAL,     CUODIFER, '
       +   'COBDIFER, MONTODIFER,  NROCUOPENDIF, SDOPENCUODIF,   CUOSALDOVENC,  SALDOVENCIDO, ULTFORPAGDES,  ULTFECPAG,      VALORCUOTA,     CUOATRASO, '
       +   'CREMTOOTOR, CRENUMCUO, B.CRECUOTA, CREFOTORG, '
       +   'CASE WHEN TIPDESEID=''10'' THEN ''REFINANCIADO'' '
       +       ' WHEN TIPDESEID<>''10'' AND NVL(CREMTONABO,0)>0 THEN ''REVOLVENTE'' '
       +       ' WHEN TIPDESEID<>''10'' AND NVL(CREMTONABO,0)=0 THEN ''NO REVOLVENTE'' '
       +   'END TIPO_CREDITO, '
       +   'C.CARGO, C.ASOCODPAGO, C.SITUACION, '
       +   'D.CFCDES_F, '
       +   'E.MONCUOENV, E.MONCUOAPL, ROUND(E.MONCUOAPL/E.MONCUOENV*100,2) PORC_EFE '

    //+ 'FROM COB_CAL_PARALELO ';
       +'FROM COB_CAL_PARALELO a, CRE301 b, '
       +   '( SELECT ASOID, MAX(CARGO) CARGO, MAX(ASOCODPAGO) ASOCODPAGO, MAX(SITUACION) SITUACION FROM ASO_PAD_DET_HIS '
       +   '  WHERE CODPAD='''+DM1.cdsQry.FieldByName('CODPAD').AsString+''' GROUP BY ASOID ) c, '
       +   ' CFC000 d, '
       +   ' COB319 e ';

  if Trim(dblcdUPro.Text) <> '' then
  begin
    if xWhere = '' then
       begin
         xSql   := xSql + 'WHERE A.UPROID = ' + quotedstr(dblcdUPro.Text);
         xWhere := 'WHERE A.UPROID = ' + quotedstr(dblcdUPro.Text);
       end
    else
      xSql := xSql + ' AND A.UPROID = ' + quotedstr(dblcdUPro.Text);
  end;

  if Trim(dblcdUPago.Text) <> '' then
     begin
        if Trim(dblcdUPro.Text) <> '' then
           begin
             if xWhere = '' then
               xSql := xSql + 'WHERE A.UPAGOID = ' + quotedstr(dblcdUPago.Text)
             else
               xSql := xSql + ' AND A.UPAGOID = ' + quotedstr(dblcdUPago.Text);
           end
        else
           begin
             ShowMessage('Debe seleccionar primero la Unidad de Proceso.');
             Screen.Cursor := crDefault;
             exit;
        end;
     end;

  if not rbTodos.Checked then
  begin
    if rbDocentes.Checked then
    begin
      if xWhere = '' then
        xSql := xSql + 'WHERE A.ASOTIPID = ''DO'''
      else
        xSql := xSql + ' AND A.ASOTIPID = ''DO''';
    end;
    if rbContratados.Checked then
    begin
      if xWhere = '' then
        xSql := xSql + 'WHERE A.ASOTIPID = ''CO'''
      else
        xSql := xSql + ' AND A.ASOTIPID = ''CO''';
    end;
    if rbCesantes.Checked then
    begin
      if xWhere = '' then
        xSql := xSql + 'WHERE A.ASOTIPID = ''CE'''
      else
        xSql := xSql + ' AND A.ASOTIPID = ''CE''';
    end;
  end;

  // Periodo de Cartera
  sSQL:='SELECT MAX(PERIODO) PERIODO FROM CFC000';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;
  xSql:=xSql + ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) '
             + ' and A.ASOID=C.ASOID(+) '
             + ' and A.ASOID=D.ASOID(+) AND D.PERIODO(+)='''+ DM1.cdsQry.fieldByname('PERIODO').AsString+''' '
             + ' and A.ASOID = E.ASOID(+) AND E.COBANO(+) = '''+Copy(sPeriodoCob,1,4)+''' '
             + ' and E.COBMES(+) = '''+Copy(sPeriodoCob,5,2)+'''';

  DM1.cdsReporte.IndexFieldNames:='';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;

  dbgResultado.Selected.Clear;
  dbgResultado.Selected.Add('FILA'#9'6'#9'Fila'#9#9);
  dbgResultado.Selected.Add('DEPARTAMENTO'#9'15'#9'Departamento'#9#9);
  dbgResultado.Selected.Add('UNIDADPROCESO'#9'20'#9'U. Proceso'#9#9);
  dbgResultado.Selected.Add('UNIDADPAGO'#9'20'#9'U. Pago'#9#9);
  dbgResultado.Selected.Add('UGEL'#9'15'#9'Ugel'#9#9);
  dbgResultado.Selected.Add('CODIGOMODULAR'#9'12'#9'Cod.Mod'#9#9);

  dbgResultado.Selected.Add('CARGO'#9'12'#9'Cargo'#9#9);
  dbgResultado.Selected.Add('ASOCODPAGO'#9'12'#9'Cod.Pago'#9#9);
  dbgResultado.Selected.Add('SITUACION'#9'12'#9'Situa'#9#9);

  dbgResultado.Selected.Add('NOMBREDOCENTE'#9'40'#9'Docente'#9#9);
  dbgResultado.Selected.Add('ASOTIPID'#9'10'#9'Tipo~Asociado'#9#9);
  dbgResultado.Selected.Add('REGPENDES'#9'10'#9'Regimen~Pensión'#9#9);
  dbgResultado.Selected.Add('CREDID'#9'20'#9'Crédito'#9#9);
  dbgResultado.Selected.Add('TIPOCREDITO'#9'25'#9'Tip.Cred.'#9#9);

  dbgResultado.Selected.Add('CREFOTORG'#9'11'#9'Fecha~Crédito'#9#9);
  dbgResultado.Selected.Add('CREMTOOTOR'#9'12'#9'Monto~Crédito'#9#9);
  dbgResultado.Selected.Add('CRENUMCUO'#9'8'#9'Nro.~Cuotas'#9#9);
  dbgResultado.Selected.Add('CRECUOTA'#9'12'#9'Cuota~Pactada'#9#9);
  dbgResultado.Selected.Add('TIPO_CREDITO'#9'15'#9'Tipo de~Crédito'#9#9);

  dbgResultado.Selected.Add('CUOSINPROCOB'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Sin Proc.Cobranza');
  dbgResultado.Selected.Add('SALDOSINPROCOB'#9'12'#9'Monto Total'#9'F'#9'Saldo Sin Proc.Cobranza');
  dbgResultado.Selected.Add('CUOPROCOB'#9'10'#9'Nº Cuotas'#9'F'#9'Cuotas en Proc.Cob');
  dbgResultado.Selected.Add('SALDOPROCOB'#9'12'#9'Monto Total'#9'F'#9'Cuotas en Proc.Cob');
  dbgResultado.Selected.Add('CUOSALDOTOTAL'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Total');
  dbgResultado.Selected.Add('SALDOTOTAL'#9'12'#9'Monto Total'#9'F'#9'Saldo Total');
  dbgResultado.Selected.Add('CUODIFER'#9'10'#9'Nº Cuotas'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('COBDIFER'#9'10'#9'Cobranzas'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('MONTODIFER'#9'12'#9'Monto Total'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('NROCUOPENDIF'#9'12'#9'Nº Pendientes'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('SDOPENCUODIF'#9'12'#9'Monto Pendiente'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('CUOSALDOVENC'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Vencido');
  dbgResultado.Selected.Add('SALDOVENCIDO'#9'12'#9'Monto Total'#9'F'#9'Saldo Vencido');

  dbgResultado.Selected.Add('MONCUOENV'#9'10'#9'Imp.Enviado'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('MONCUOAPL'#9'10'#9'Imp.Cobrado'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('PORC_EFE'#9'10'#9'% Efectivid.'#9'F'#9'Ultima Cobranza');

  dbgResultado.Selected.Add('ULTFORPAGDES'#9'10'#9'Forma Cob'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('ULTFECPAG'#9'12'#9'Fecha Cob'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('VALORCUOTA'#9'12'#9'Valor Cuota'#9'F'#9'Cuota Pactada');
  dbgResultado.Selected.Add('CUOATRASO'#9'12'#9'Días Atraso'#9'F'#9'Cuota Pactada');

  dbgResultado.Selected.Add('CFCDES_F'#9'15'#9'Calificación~Derrama'#9#9);

  dbgResultado.ApplySelected;
// Fin: SPP_201309_COB            Agregar Campos de Padron, del Credito y Cartera

  Screen.Cursor := crDefault;
end;

procedure TFCalParaleloVencido.CalendarioVencido;
var
  xSql: String;
  xWhere: String;
// Inicio: SPP_201309_COB            Agregar Campos de Padron, del Credito y Cartera
  sSQL, sPeriodoCob : String;
// Fin: SPP_201309_COB            Agregar Campos de Padron, del Credito y Cartera
begin
  Screen.Cursor := crHourGlass;

  xWhere := '';

// Inicio: SPP_201309_COB            Agregar Campos de Padron, del Credito y Cartera
  sSQL:='SELECT MAX(PERIODO) PERIODO, UPROID, UPAGOID, USEID, ASOTIPID '
       +  'FROM COB_PROG_DES_PLANILLA '
       + 'WHERE FLGPRO=''X'' AND FLGANU IS NULL '
       +   'AND UPROID = ' + quotedstr(dblcdUPro.Text);
  if Trim(dblcdUPago.Text)<>'' then
     sSQL:=sSQL + ' AND UPAGOID = ' + quotedstr(dblcdUPro.Text);
  if not rbTodos.Checked then
  begin
    if rbDocentes.Checked    then sSql := sSql + ' AND ASOTIPID = ''DO''';
    if rbContratados.Checked then sSql := sSql + ' AND ASOTIPID = ''CO''';
    if rbCesantes.Checked    then sSql := sSql + ' AND ASOTIPID = ''CE''';
  end;
  sSQL:=sSQL + ' GROUP BY UPROID,UPAGOID,USEID,ASOTIPID '
             + ' ORDER BY PERIODO DESC';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;

  sPeriodoCob:=DM1.cdsQry.FieldByName('PERIODO').AsString;

  sSQL:='SELECT max(CODPAD) CODPAD FROM ASO_PAD_DET_HIS';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;


// Lista los datos para esa fecha
  xSql:= 'SELECT ROWNUM FILA, a.UPROID, a.UPAGOID, a.ASOTIPID, DEPARTAMENTO,'
       + ' UNIDADPROCESO, UNIDADPAGO, UGEL,'
       + ' CODIGOMODULAR, NOMBREDOCENTE, REGPENDES,'
       + ' a.CREDID, TIPOCREDITO, CUOSINPROCOB, SALDOSINPROCOB,'
       + ' CUOPROCOB, SALDOPROCOB, CUOSALDOTOTAL,'
       + ' SALDOTOTAL, CUODIFER, COBDIFER,'
       + ' MONTODIFER, NROCUOPENDIF, SDOPENCUODIF, CUOSALDOVENC, SALDOVENCIDO,'
       + ' ULTFORPAGDES, ULTFECPAG, VALORCUOTA, CUOATRASO, '
       +   'CREMTOOTOR, CRENUMCUO, B.CRECUOTA, CREFOTORG, '
       +   'CASE WHEN TIPDESEID=''10'' THEN ''REFINANCIADO'' '
       +       ' WHEN TIPDESEID<>''10'' AND NVL(CREMTONABO,0)>0 THEN ''REVOLVENTE'' '
       +       ' WHEN TIPDESEID<>''10'' AND NVL(CREMTONABO,0)=0 THEN ''NO REVOLVENTE'' '
       +   'END TIPO_CREDITO, '
       +   'C.CARGO, C.ASOCODPAGO, C.SITUACION, '
       +   'D.CFCDES_F, '
       +   'E.MONCUOENV, E.MONCUOAPL, ROUND(E.MONCUOAPL/E.MONCUOENV*100,2) PORC_EFE '
//    + 'FROM COB_CAL_VENCIDO ';
       +'FROM COB_CAL_VENCIDO a, CRE301 b, '
       +   '( SELECT ASOID, MAX(CARGO) CARGO, MAX(ASOCODPAGO) ASOCODPAGO, MAX(SITUACION) SITUACION FROM ASO_PAD_DET_HIS '
       +   '  WHERE CODPAD='''+DM1.cdsQry.FieldByName('CODPAD').AsString+''' GROUP BY ASOID ) c, '
       +   ' CFC000 d, '
       +   ' COB319 e ';

  if Trim(dblcdUPro.Text) <> '' then
  begin
    if xWhere = '' then
      begin
        xSql   := xSql + 'WHERE A.UPROID = ' + quotedstr(dblcdUPro.Text);
        xWhere := 'WHERE A.UPROID = ' + quotedstr(dblcdUPro.Text);
      end
    else
      xSql := xSql + ' AND A.UPROID = ' + quotedstr(dblcdUPro.Text);
  end;

  if Trim(dblcdUPago.Text) <> '' then
     begin
        if Trim(dblcdUPro.Text) <> '' then
           begin
             if xWhere = '' then
               xSql := xSql + 'WHERE A.UPAGOID = ' + quotedstr(dblcdUPago.Text)
             else
               xSql := xSql + ' AND A.UPAGOID = ' + quotedstr(dblcdUPago.Text);
           end
        else
           begin
             ShowMessage('Debe seleccionar primero la Unidad de Proceso.');
             Screen.Cursor := crDefault;
             exit;
        end;
     end;

  if not rbTodos.Checked then
  begin
    if rbDocentes.Checked then
    begin
      if xWhere = '' then
        xSql := xSql + 'WHERE A.ASOTIPID = ''DO'''
      else
        xSql := xSql + ' AND A.ASOTIPID = ''DO''';
    end;
    if rbContratados.Checked then
    begin
      if xWhere = '' then
        xSql := xSql + 'WHERE A.ASOTIPID = ''CO'''
      else
        xSql := xSql + ' AND A.ASOTIPID = ''CO''';
    end;
    if rbCesantes.Checked then
    begin
      if xWhere = '' then
        xSql := xSql + 'WHERE A.ASOTIPID = ''CE'''
      else
        xSql := xSql + ' AND A.ASOTIPID = ''CE''';
    end;
  end;

  // Periodo de Cartera
  sSQL:='SELECT MAX(PERIODO) PERIODO FROM CFC000';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest( sSQL );
  DM1.cdsQry.Open;
  xSql:=xSql + ' and A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) '
             + ' and A.ASOID=C.ASOID(+) '
             + ' and A.ASOID=D.ASOID(+) AND D.PERIODO(+)='''+ DM1.cdsQry.fieldByname('PERIODO').AsString+''' '
             + ' and A.ASOID = E.ASOID(+) AND E.COBANO(+) = '''+Copy(sPeriodoCob,1,4)+''' '
             + ' and E.COBMES(+) = '''+Copy(sPeriodoCob,5,2)+'''';

  DM1.cdsReporte.IndexFieldNames:='';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;

  dbgResultado.Selected.Clear;
  dbgResultado.Selected.Add('FILA'#9'6'#9'Fila'#9#9);
  dbgResultado.Selected.Add('DEPARTAMENTO'#9'15'#9'Departamento'#9#9);
  dbgResultado.Selected.Add('UNIDADPROCESO'#9'20'#9'U. Proceso'#9#9);
  dbgResultado.Selected.Add('UNIDADPAGO'#9'20'#9'U. Pago'#9#9);
  dbgResultado.Selected.Add('UGEL'#9'15'#9'Ugel'#9#9);
  dbgResultado.Selected.Add('CODIGOMODULAR'#9'12'#9'Cod.Mod'#9#9);

  dbgResultado.Selected.Add('CARGO'#9'12'#9'Cargo'#9#9);
  dbgResultado.Selected.Add('ASOCODPAGO'#9'12'#9'Cod.Pago'#9#9);
  dbgResultado.Selected.Add('SITUACION'#9'12'#9'Situa'#9#9);

  dbgResultado.Selected.Add('NOMBREDOCENTE'#9'40'#9'Docente'#9#9);
  dbgResultado.Selected.Add('ASOTIPID'#9'10'#9'Tipo~Asociado'#9#9);
  dbgResultado.Selected.Add('REGPENDES'#9'10'#9'Regimen~Pensión'#9#9);
  dbgResultado.Selected.Add('CREDID'#9'20'#9'Crédito'#9#9);
  dbgResultado.Selected.Add('TIPOCREDITO'#9'25'#9'Tip.Cred.'#9#9);

  dbgResultado.Selected.Add('CREFOTORG'#9'11'#9'Fecha~Crédito'#9#9);
  dbgResultado.Selected.Add('CREMTOOTOR'#9'12'#9'Monto~Crédito'#9#9);
  dbgResultado.Selected.Add('CRENUMCUO'#9'8'#9'Nro.~Cuotas'#9#9);
  dbgResultado.Selected.Add('CRECUOTA'#9'12'#9'Cuota~Pactada'#9#9);
  dbgResultado.Selected.Add('TIPO_CREDITO'#9'15'#9'Tipo de~Crédito'#9#9);

  dbgResultado.Selected.Add('CUOSINPROCOB'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Sin Proc.Cobranza');
  dbgResultado.Selected.Add('SALDOSINPROCOB'#9'12'#9'Monto Total'#9'F'#9'Saldo Sin Proc.Cobranza');
  dbgResultado.Selected.Add('CUOPROCOB'#9'10'#9'Nº Cuotas'#9'F'#9'Cuotas en Proc.Cob');
  dbgResultado.Selected.Add('SALDOPROCOB'#9'12'#9'Monto Total'#9'F'#9'Cuotas en Proc.Cob');
  dbgResultado.Selected.Add('CUOSALDOTOTAL'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Total');
  dbgResultado.Selected.Add('SALDOTOTAL'#9'12'#9'Monto Total'#9'F'#9'Saldo Total');
  dbgResultado.Selected.Add('CUODIFER'#9'10'#9'Nº Cuotas'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('COBDIFER'#9'10'#9'Cobranzas'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('MONTODIFER'#9'12'#9'Monto Total'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('NROCUOPENDIF'#9'12'#9'Nº Pendientes'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('SDOPENCUODIF'#9'12'#9'Monto Pendiente'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('CUOSALDOVENC'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Vencido');
  dbgResultado.Selected.Add('SALDOVENCIDO'#9'12'#9'Monto Total'#9'F'#9'Saldo Vencido');

  dbgResultado.Selected.Add('MONCUOENV'#9'10'#9'Imp.Enviado'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('MONCUOAPL'#9'10'#9'Imp.Cobrado'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('PORC_EFE'#9'10'#9'% Efectivid.'#9'F'#9'Ultima Cobranza');

  dbgResultado.Selected.Add('ULTFORPAGDES'#9'10'#9'Forma Cob'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('ULTFECPAG'#9'12'#9'Fecha Cob'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('VALORCUOTA'#9'12'#9'Valor Cuota'#9'F'#9'Cuota Pactada');
  dbgResultado.Selected.Add('CUOATRASO'#9'12'#9'Días Atraso'#9'F'#9'Cuota Pactada');

  dbgResultado.Selected.Add('CFCDES_F'#9'15'#9'Calificación~Derrama'#9#9);

  dbgResultado.ApplySelected;
  Screen.Cursor := crDefault;
// Fin: SPP_201309_COB            Agregar Campos de Padron, del Credito y Cartera
end;

procedure TFCalParaleloVencido.rbCalParaleloClick(Sender: TObject);
begin
  CalcularFecha;
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
  // limpia el grid
  Limpiar;
// fin: HPP_201003_COB
end;

procedure TFCalParaleloVencido.rbCalSaldoVencidoClick(Sender: TObject);
begin
  CalcularFecha;
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
// limpia el grid
  Limpiar;
// fin: HPP_201003_COB
end;

procedure TFCalParaleloVencido.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
end;

procedure TFCalParaleloVencido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsReporte.IndexFieldNames:='';
   DM1.cdsReporte.Close;
end;

procedure TFCalParaleloVencido.dbgResultadoTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
  try
    DM1.cdsReporte.IndexFieldNames := AFieldName;
  except
  end;
// fin: HPP_201003_COB
end;

procedure TFCalParaleloVencido.Limpiar;
var
  xSql: String;
begin
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
// limpia el grid
  xSql := 'SELECT ROWNUM FILA, UPROID, UPAGOID, ASOTIPID, DEPARTAMENTO,'
    + ' UNIDADPROCESO, UNIDADPAGO, UGEL,'
    + ' CODIGOMODULAR, NOMBREDOCENTE, REGPENDES,'
    + ' TIPOCREDITO, CUOSINPROCOB, SALDOSINPROCOB,'
    + ' CUOPROCOB, SALDOPROCOB, CUOSALDOTOTAL,'
    + ' SALDOTOTAL, CUODIFER, COBDIFER,'
    + ' MONTODIFER, CUOSALDOVENC, SALDOVENCIDO,'
    + ' ULTFORPAGDES, ULTFECPAG, VALORCUOTA, CUOATRASO '
    + 'FROM COB_CAL_PARALELO '
    + 'WHERE 1 = 2';

  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;

  dbgResultado.Selected.Clear;
  dbgResultado.Selected.Add('FILA'#9'6'#9'Fila'#9#9);
  dbgResultado.Selected.Add('DEPARTAMENTO'#9'15'#9'Departamento'#9#9);
  dbgResultado.Selected.Add('UNIDADPROCESO'#9'20'#9'U. Proceso'#9#9);
  dbgResultado.Selected.Add('UNIDADPAGO'#9'20'#9'U. Pago'#9#9);
  dbgResultado.Selected.Add('UGEL'#9'15'#9'Ugel'#9#9);
  dbgResultado.Selected.Add('CODIGOMODULAR'#9'12'#9'Cod.Mod'#9#9);
  dbgResultado.Selected.Add('NOMBREDOCENTE'#9'40'#9'Docente'#9#9);
  dbgResultado.Selected.Add('ASOTIPID'#9'10'#9'Tipo~Asociado'#9#9);
  dbgResultado.Selected.Add('REGPENDES'#9'10'#9'Regimen~Pensión'#9#9);
  dbgResultado.Selected.Add('CREDID'#9'20'#9'Crédito'#9#9);
  dbgResultado.Selected.Add('TIPOCREDITO'#9'25'#9'Tip.Cred.'#9#9);
  dbgResultado.Selected.Add('CUOSINPROCOB'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Sin Proc.Cobranza');
  dbgResultado.Selected.Add('SALDOSINPROCOB'#9'12'#9'Monto Total'#9'F'#9'Saldo Sin Proc.Cobranza');
  dbgResultado.Selected.Add('CUOPROCOB'#9'10'#9'Nº Cuotas'#9'F'#9'Cuotas en Proc.Cob');
  dbgResultado.Selected.Add('SALDOPROCOB'#9'12'#9'Monto Total'#9'F'#9'Cuotas en Proc.Cob');
  dbgResultado.Selected.Add('CUOSALDOTOTAL'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Total');
  dbgResultado.Selected.Add('SALDOTOTAL'#9'12'#9'Monto Total'#9'F'#9'Saldo Total');
  dbgResultado.Selected.Add('CUODIFER'#9'10'#9'Nº Cuotas'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('COBDIFER'#9'10'#9'Cobranzas'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('MONTODIFER'#9'12'#9'Monto Total'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('NROCUOPENDIF'#9'12'#9'Nº Pendientes'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('SDOPENCUODIF'#9'12'#9'Monto Pendiente'#9'F'#9'Cuotas Diferidas');
  dbgResultado.Selected.Add('CUOSALDOVENC'#9'10'#9'Nº Cuotas'#9'F'#9'Saldo Vencido');
  dbgResultado.Selected.Add('SALDOVENCIDO'#9'12'#9'Monto Total'#9'F'#9'Saldo Vencido');
  dbgResultado.Selected.Add('ULTFORPAGDES'#9'10'#9'Forma Cob'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('ULTFECPAG'#9'12'#9'Fecha Cob'#9'F'#9'Ultima Cobranza');
  dbgResultado.Selected.Add('VALORCUOTA'#9'12'#9'Valor Cuota'#9'F'#9'Cuota Pactada');
  dbgResultado.Selected.Add('CUOATRASO'#9'12'#9'Días Atraso'#9'F'#9'Cuota Pactada');
  dbgResultado.ApplySelected;
// fin: HPP_201003_COB
end;

procedure TFCalParaleloVencido.rbDocentesClick(Sender: TObject);
begin
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
// limpia el grid
  Limpiar;
// fin: HPP_201003_COB
end;

procedure TFCalParaleloVencido.rbContratadosClick(Sender: TObject);
begin
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
// limpia el grid
  Limpiar;
// fin: HPP_201003_COB
end;

procedure TFCalParaleloVencido.rbCesantesClick(Sender: TObject);
begin
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
// limpia el grid
  Limpiar;
// fin: HPP_201003_COB
end;

procedure TFCalParaleloVencido.rbTodosClick(Sender: TObject);
begin
// inicio: HPP_201003_COB POR DFERNANDEZ
// Memorándum 1020-2009-DM-COB - SAR-2009-0940 - DAD-DF-2009-0078
// limpia el grid
  Limpiar;
// fin: HPP_201003_COB
end;

end.
