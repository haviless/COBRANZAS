// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB525
// Formulario           : FCandidatosFSCDet
// Fecha de Creación    :
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Detalle - Candidatos al Fondo Solidario de Contingencia
// Actualizaciones      :
// inicio: HPP_200944_COB por DFERNANDEZ
// Memorándum 820-2009-DM-COB - SAR-2009-0737 - DAD-DF-2009-0076
// Detalle de los candidatos al Fondo Solidario de Contingencia,
// para un periodo, tipo de asociado y rango de meses de atraso
//HPC_201504_COB        :14/01/2015 Se cambia la forma de calculo de los candidatos al FSC
//HPC_201510_COB : AGREGAR LA CALIFICIACION ACTUAL AL DETALLE DE CANDIDATOS AL FSC
unit COB525;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons;

type
  TFCandidatosFSCDet = class(TForm)
    dbgCandidatos: TwwDBGrid;
    Label1: TLabel;
    lblTipoAsociado: TLabel;
    Label2: TLabel;
    lblPeriodo: TLabel;
    Label3: TLabel;
    lblMesesAtraso: TLabel;
    btnAExcel: TBitBtn;
    btnCerrar: TBitBtn;
    procedure btnCerrarClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgCandidatosTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   //Inicio HPC_201504_COB
    procedure FormShow(Sender: TObject);
   //Final HPC_201504_COB
  private
    { Private declarations }
  public
    { Public declarations }
    MesInicial, MesFinal: integer;
    Periodo, ASOTIPID, TipoAsociado, MesesAtraso: string;
    //Inicio HPC_201504_COB
    Diasatraso: string;
    //Final HPC_201504COB
    procedure DeshabilitarBotones;
    procedure HabilitarBotones;
  end;

var
  FCandidatosFSCDet: TFCandidatosFSCDet;

implementation
//Inicio HPC_201504_COB
uses COBDM1, DB;
//Final HPC_201504_COB
{$R *.dfm}

procedure TFCandidatosFSCDet.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFCandidatosFSCDet.btnAExcelClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
  try
    if DM1.cdsQry1.RecordCount <= 0 then
      exit;

    DeshabilitarBotones;

    decodedate(DM1.FechaSys,xAno,xMes,xDia);
    xArchivo:='CAND_FSC_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
    xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
    xArchivo:=xArchivo;

    if FileExists(xArchivo+'.slk') then
      DeleteFile(xArchivo+'.slk');

    DM1.ExportaGridExcel(dbgCandidatos, xArchivo);
  finally
    HabilitarBotones;
  end;
end;

procedure TFCandidatosFSCDet.DeshabilitarBotones;
begin
  btnAExcel.Enabled := false;
end;

procedure TFCandidatosFSCDet.HabilitarBotones;
begin
  btnAExcel.Enabled := true;
end;

procedure TFCandidatosFSCDet.FormActivate(Sender: TObject);
//Inicio HPC_201504_COB
{var
  xSql: string; }
//Final HPC_201504_COB
begin

//Inicio HPC_201504_COB
{
// Inicio: HPP_201107_COB
  if MesInicial = 4 then
    MesesAtraso := ' 4 a 12'
  else if MesInicial = 13 then
    MesesAtraso := '13 a 23'
  else if MesInicial = 24 then
// Fin: HPP_201107_COB
    MesesAtraso := '24 a 36'
  else if MesInicial = 37 then
    MesesAtraso := '37 a 48'
  else if MesInicial = 49 then
    MesesAtraso := '49 a 60'
  else if MesInicial = 61 then
    MesesAtraso := '61 a 72'
  else if MesInicial = 73 then
    MesesAtraso := '73 a 84'
  else if MesInicial = 85 then
    MesesAtraso := '85 a 96'
  else if MesInicial = 97 then
    MesesAtraso := '97 a 108'
  else if MesInicial = 109 then
    MesesAtraso := '109 a 120'
  else if MesInicial = 121 then
    MesesAtraso := '121 a 132'
  else if MesInicial = 133 then
    MesesAtraso := 'Mas de 133';

  lblPeriodo.Caption := Periodo;
  lblTipoAsociado.Caption := TipoAsociado;
  lblMesesAtraso.Caption := MesesAtraso;

  try
    Screen.Cursor := crHourGlass;

    xSql := 'SELECT ROWNUM FILA,'
      + '    dpt.DPTODES dptlab,'
      + '    ug.USENOM ugel,'
      + '    a.ASOTIPID,'
      + '    a.ASOID,'
      + '    a.ASOAPENOM,'
      + '    a.ASODIR,'
      + '    dpt2.DPTODES dptdom,'
      + '    prv2.CIUDDES prvdom,'
      + '    dis2.ZIPDES disdom,'
      + '    a.ASOTELF1,'
      + '    a.ASOTELF2,'
      + '    a.ASOTELLAB,'
      + '    cfc.SALVEN,'
      + '    cfc.CUOVEN,'
      + '    cfc.SALPEN,'
      + '    cfc.CUOPEN,'
      + '    cfc.SALTOT SALDOS_PERIODO,'
      + '    cfc.CUOVEN + cfc.CUOPEN CUOPER,'
      + '    cfc.SALDOS_FT,'
      + '    cfc.SALTOT,'
      + '    trunc(cfc.DIASTRANS / 30) MesesAtraso,'
      + '    cfc.DIASTRANS '
      + 'FROM'
// Inicio: HPP_201107_COB
      + '    CFC000 cfc'
// Fin: HPP_201107_COB
      + '        inner join'
      + '    apo201 a on'
      + '    cfc.ASOID = a.ASOID'
      + '        left join'
      + '    tge121 prv on'
      + '    substr(a.asodstlabid,1,2) = prv.dptoid'
      + '    and substr(a.asodstlabid,3,2) = substr(prv.ciudid,1,2)'
      + '        left join'
      + '    tge122 dis on'
      + '    substr(a.asodstlabid,1,2) = dis.DPTOID'
      + '    and substr(a.asodstlabid,3,2) = dis.CIUDID'
      + '    and substr(a.asodstlabid,5,2) = substr(dis.zipid,1,2)'
      + '        left join'
      + '    tge158 dpt2 on'
      + '    substr(a.zipid,1,2) = dpt2.dptoid'
      + '        left join'
      + '    tge121 prv2 on'
      + '    substr(a.zipid,1,2) = prv2.dptoid'
      + '    and substr(a.zipid,3,2) = substr(prv2.ciudid,1,2)'
      + '        left join'
      + '    tge122 dis2 on'
      + '    substr(a.zipid,1,2) = dis2.DPTOID'
      + '    and substr(a.zipid,3,2) = dis2.CIUDID'
      + '    and substr(a.zipid,5,2) = substr(dis2.zipid,1,2)'
      + '        left join'
      + '    apo101 ug on'
      + '    a.UPROID = ug.UPROID'
      + '    and a.UPAGOID = ug.UPAGOID'
      + '    and a.USEID = ug.USEID '
      + '        left join'
      + '    tge158 dpt on'
      + '    ug.DPTOID = dpt.DPTOID '
      + 'where'
      + '    cfc.PERIODO = ' + QuotedStr(Periodo)
      + '    and trunc(cfc.DIASTRANS / 30) between ' + IntToStr(MesInicial) + ' and ' + IntToStr(MesFinal)
      + '    and cfc.ASOTIPID = ' + QuotedStr(ASOTIPID);

    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSql);
    DM1.cdsQry5.Open;

    dbgCandidatos.Selected.Clear;
    dbgCandidatos.Selected.Add('FILA'#9'6'#9'Fila'#9#9);
    dbgCandidatos.Selected.Add('dptlab'#9'15'#9'Dpt. Laboral'#9#9);
    dbgCandidatos.Selected.Add('ugel'#9'15'#9'Ugel'#9#9);
    dbgCandidatos.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso'#9#9);
    dbgCandidatos.Selected.Add('ASOID'#9'10'#9'ID Asociado'#9#9);
    dbgCandidatos.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos y Nombres'#9#9);
    dbgCandidatos.Selected.Add('ASODIR'#9'30'#9'Dirección'#9#9);
    dbgCandidatos.Selected.Add('dptdom'#9'20'#9'Dpt. Dom'#9#9);
    dbgCandidatos.Selected.Add('prvdom'#9'20'#9'Prov. Dom'#9#9);
    dbgCandidatos.Selected.Add('disdom'#9'20'#9'Dis. Dom'#9#9);
    dbgCandidatos.Selected.Add('ASOTELF1'#9'12'#9'Telf. 1'#9#9);
    dbgCandidatos.Selected.Add('ASOTELF2'#9'12'#9'Telf. 2'#9#9);
    dbgCandidatos.Selected.Add('ASOTELLAB'#9'12'#9'Telf. Lab'#9#9);
    dbgCandidatos.Selected.Add('SALVEN'#9'12'#9'Saldo Vencido'#9#9);
    dbgCandidatos.Selected.Add('CUOVEN'#9'12'#9'Cuotas Vencidas'#9#9);
    dbgCandidatos.Selected.Add('SALPEN'#9'12'#9'Saldo por Vencer'#9#9);
    dbgCandidatos.Selected.Add('CUOPEN'#9'12'#9'Cuotas Pendientes'#9#9);
    dbgCandidatos.Selected.Add('SALDOS_PERIODO'#9'12'#9'Saldo Periodo'#9#9);
    dbgCandidatos.Selected.Add('CUOPER'#9'12'#9'Cuotas Periodo'#9#9);
    dbgCandidatos.Selected.Add('SALDOS_FT'#9'12'#9'Saldo Capital'#9#9);
    dbgCandidatos.Selected.Add('SALTOT'#9'12'#9'Saldo Total'#9#9);
    dbgCandidatos.Selected.Add('MesesAtraso'#9'12'#9'Meses Atraso'#9#9);
    dbgCandidatos.Selected.Add('DIASTRANS'#9'12'#9'Días Atraso'#9#9);
    dbgCandidatos.ApplySelected;
  finally
    Screen.Cursor := crDefault;
  end; }
//Final HPC_201504_COB


end;

procedure TFCandidatosFSCDet.dbgCandidatosTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  DM1.cdsQry5.IndexFieldNames := AFieldName;
end;

procedure TFCandidatosFSCDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry5.IndexFieldNames := '';
  DM1.cdsQry5.Close;
end;
// Fin: HPP_200944_COB


//Inicio HPC_201504_COB
procedure TFCandidatosFSCDet.FormShow(Sender: TObject);
var  xSql: string;
  xRango : sTring;
  xsaldo_ven,xsaldo_dpe,xsaldo_pen,xsaldo_tot,xsaldo_cap,xprovision : currency;
begin
   if     DM1.cdsQry1.FieldByname('ORDEN').AsInteger = 120 then
   Begin
    xRango      := ' A.dias_atra>=120 and A.dias_atra<=360 AND ';
    Diasatraso  := ' de 120 a 360 días de atraso';
   End
  else if DM1.cdsQry1.FieldByname('ORDEN').AsInteger  = 361 then
   Begin
    xRango      := ' A.dias_atra>=361 and A.dias_atra<=720 AND ';
    Diasatraso  := ' de 361 a 720 días de atraso';
   End
  else if DM1.cdsQry1.FieldByname('ORDEN').AsInteger  = 721 then
   Begin
    xRango      := ' A.dias_atra>=721 and A.dias_atra<=1080 AND ';
    Diasatraso  := ' de 721 a 1080 días de atraso';
   End
  else if DM1.cdsQry1.FieldByname('ORDEN').AsInteger  = 1081 then
   Begin
    xRango      := ' A.dias_atra>=1081 and A.dias_atra<=1800 AND ';
    Diasatraso  := ' de 1081 a 1801 días de atraso';
   End
  else if DM1.cdsQry1.FieldByname('ORDEN').AsInteger  = 1801 then
   Begin
    xRango      := ' A.dias_atra>=1801 and A.dias_atra<=3600 AND ';
    Diasatraso  := ' de 1801 a 3600 días de atraso';
   End
  else if DM1.cdsQry1.FieldByname('ORDEN').AsInteger  = 3601 then
   Begin
    xRango      := ' A.dias_atra>=3601 AND ';
    Diasatraso  := ' de 3601 a mas días de atraso';
   End;

  lblPeriodo.Caption      := PERIODO;
  lblTipoAsociado.Caption := ASOTIPID;
  lblMesesAtraso.Caption  := Diasatraso;

  // INICIO : HPC_201510_COB
  xSql:='SELECT rownum FILA,A.periodo,A.asoid, A.credid, A.numcre, A.asotipid,A.tipcredid, A.tipcredes, A.ofdesid,J.ofdesnom,'
       +'A.crefotorg,A.crefven, A.dias_atra,nvl(A.saldo_ven,0)saldo_ven,nvl(A.cuo_ven,0)cuo_ven,nvl(A.saldo_dpe,0)saldo_dpe,nvl(A.cuo_dpe,0)cuo_dpe,'
       +'nvl(A.saldo_pen,0)saldo_pen,nvl(A.cuo_pen,0)cuo_pen,nvl(A.saldo_ven,0)+nvl(A.saldo_pen,0)+nvl(A.saldo_dpe,0) saldo_tot, A.saldo_cap,A.provision,A.provisionpor,'
       +'A.fec_proc,I.DPTODES dptlab,H.USENOM ugel,B.ASOTIPID,B.ASOID,B.ASOCODMOD,B.ASODNI,B.ASOAPENOM,B.ASODIR,E.DPTODES dptdom,F.CIUDDES prvdom,G.ZIPDES disdom,'
       +'B.ASOTELF1,B.ASOTELF2,B.ASOTELLAB,a.PROVISION '
       + ' ,K.CFC_F, K.CFCDES_F '
       +'FROM  COB_FSC_CARTERA A,APO201 B,TGE121 C,TGE122 D, '
       +'      TGE158 E,TGE121 F,TGE122 G,APO101 H,TGE158 I,'
       +'      APO110 J, '
       +' (SELECT ASOID, CFC_F, CFCDES_F '
       +'    FROM CFC000 '
       +'   WHERE PERIODO = TO_CHAR(ADD_MONTHS(TO_DATE('''+PERIODO+''',''YYYYMM''),-1),''YYYYMM'')) K '
       +'WHERE A.periodo='''+PERIODO+''' AND '
       +'      A.ASOTIPID='''+ASOTIPID+''' AND '
       +xRango
       +' A.ASOID=B.ASOID AND '
       +' C.dptoid(+)  = substr(B.asodstlabid, 1, 2)  AND substr(C.ciudid(+), 1, 2) = substr(B.asodstlabid, 3, 2) AND '
       +' D.DPTOID(+)  = substr(B.asodstlabid, 1, 2)  AND D.CIUDID(+) = substr(B.asodstlabid, 3, 2)  AND substr(D.zipid(+), 1, 2) = substr(B.asodstlabid, 5, 2) AND '
       +' E.dptoid (+) = substr(B.zipid, 1, 2) AND '
       +' F.dptoid (+) = substr(B.zipid, 1, 2) AND substr(F.ciudid(+), 1, 2) =substr(B.zipid, 3, 2) AND '
       +' G.DPTOID (+) = substr(B.zipid, 1, 2) AND G.CIUDID (+)=substr(B.zipid, 3, 2) AND substr(G.zipid (+), 1, 2)=substr(B.zipid, 5, 2) AND '
       +' H.uproid (+) = B.UPROID AND H.UPAGOID(+) = B.UPAGOID AND H.USEID (+)  = B.USEID AND '
       + 'I.DPTOID (+) = H.DPTOID AND '
       + 'J.OFDESID(+) = A.OFDESID  '
       + ' AND A.ASOID = K.ASOID(+) ';
  // FIN : HPC_201510_COB
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  Screen.Cursor := crHourGlass;
  DM1.cdsQry5.Open;
  Screen.Cursor := crDefault;

  dm1.cdsQry5.First;
  xsaldo_ven := 0;
  xsaldo_dpe := 0;
  xsaldo_pen := 0;
  xsaldo_tot := 0;
  xsaldo_cap := 0;
  xprovision := 0;

  TNumericField(DM1.cdsQry5.FieldByName('SALDO_VEN')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('SALDO_DPE')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('SALDO_PEN')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('SALDO_TOT')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('SALDO_CAP')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('PROVISION')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsQry5.FieldByName('PROVISIONPOR')).DisplayFormat:='###,###,##0.00';

  While Not dm1.cdsQry5.eof Do
  Begin
     xsaldo_ven := xsaldo_ven + DM1.cdsQry5.FieldbyName('saldo_ven').AsCurrency ;
     xsaldo_dpe := xsaldo_dpe + DM1.cdsQry5.FieldbyName('saldo_dpe').AsCurrency ;
     xsaldo_pen := xsaldo_pen + DM1.cdsQry5.FieldbyName('saldo_pen').AsCurrency ;
     xsaldo_tot := xsaldo_tot + DM1.cdsQry5.FieldbyName('saldo_tot').AsCurrency ;
     xsaldo_cap := xsaldo_cap + DM1.cdsQry5.FieldbyName('saldo_cap').AsCurrency ;
     xprovision := xprovision + DM1.cdsQry5.FieldbyName('provisionpor').AsCurrency ;
     dm1.cdsQry5.Next;
  End;

  dbgCandidatos.ColumnByName('dptlab').FooterValue := 'Total';
  dbgCandidatos.ColumnByName('SALDO_VEN').FooterValue := FloatTostrf(xsaldo_ven, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('SALDO_DPE').FooterValue := FloatTostrf(xsaldo_dpe, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('SALDO_PEN').FooterValue := FloatTostrf(xsaldo_pen, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('SALDO_CAP').FooterValue := FloatTostrf(xsaldo_cap, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('SALDO_TOT').FooterValue := FloatTostrf(xsaldo_tot, ffnumber, 15, 2);
  dbgCandidatos.ColumnByName('PROVISIONPOR').FooterValue := FloatTostrf(xprovision, ffnumber, 15, 2);
  dbgCandidatos.RefreshDisplay;

  dbgCandidatos.DataSource := DM1.dsqry5;
  dbgCandidatos.Selected.Clear;
  dbgCandidatos.Selected.Add('FILA'#9'6'#9'Fila'#9#9);
  dbgCandidatos.Selected.Add('dptlab'#9'15'#9'Dpt. Laboral'#9#9);
  dbgCandidatos.Selected.Add('ugel'#9'15'#9'Ugel'#9#9);
  dbgCandidatos.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso'#9#9);
  dbgCandidatos.Selected.Add('ASOID'#9'10'#9'ID Asociado'#9#9);
  dbgCandidatos.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Modular'#9#9);
  dbgCandidatos.Selected.Add('asodni'#9'08'#9'DNI'#9#9);
  dbgCandidatos.Selected.Add('ASOAPENOM'#9'30'#9'Apellidos y Nombres'#9#9);
  dbgCandidatos.Selected.Add('ASODIR'#9'30'#9'Dirección'#9#9);
  dbgCandidatos.Selected.Add('dptdom'#9'20'#9'Dpt. Dom'#9#9);
  dbgCandidatos.Selected.Add('prvdom'#9'20'#9'Prov. Dom'#9#9);
  dbgCandidatos.Selected.Add('disdom'#9'20'#9'Dis. Dom'#9#9);
  dbgCandidatos.Selected.Add('ASOTELF1'#9'12'#9'Telf. 1'#9#9);
  dbgCandidatos.Selected.Add('ASOTELF2'#9'12'#9'Telf. 2'#9#9);
  dbgCandidatos.Selected.Add('ASOTELLAB'#9'12'#9'Telf. Lab'#9#9);
  dbgCandidatos.Selected.Add('credid'#9'15'#9'N° Crédito'#9#9);
  dbgCandidatos.Selected.Add('tipcredes'#9'20'#9'Tipo de Crédito'#9#9);
  dbgCandidatos.Selected.Add('crefotorg'#9'20'#9'Fec. de Otorgamiento'#9#9);
  dbgCandidatos.Selected.Add('ofdesnom'#9'20'#9'Oficina de Otorgamiento'#9#9);
  dbgCandidatos.Selected.Add('saldo_ven'#9'12'#9'Saldo Vencido'#9#9);
  dbgCandidatos.Selected.Add('cuo_ven'#9'12'#9'Cuotas Vencidas'#9#9);
  dbgCandidatos.Selected.Add('saldo_dpe'#9'12'#9'Saldo Dif.Pendiente'#9#9);
  dbgCandidatos.Selected.Add('cuo_dpe'#9'12'#9'Cuotas Dif.Pendiente'#9#9);
  dbgCandidatos.Selected.Add('saldo_pen'#9'12'#9'Saldo por Vencer'#9#9);
  dbgCandidatos.Selected.Add('cuo_pen'#9'12'#9'Cuotas Pendientes'#9#9);
  dbgCandidatos.Selected.Add('saldo_tot'#9'12'#9'Saldo Total'#9#9);
  dbgCandidatos.Selected.Add('saldo_cap'#9'12'#9'Saldo Capital'#9#9);
  dbgCandidatos.Selected.Add('provision'#9'12'#9'Provisión Tot.'#9#9);
  dbgCandidatos.Selected.Add('provisionPOR'#9'12'#9'Provisión Porc.'#9#9);  
  dbgCandidatos.Selected.Add('dias_atra'#9'12'#9'Días Atraso'#9#9);
  // INICIO : HPC_201510_COB
  dbgCandidatos.Selected.Add('CFC_F'#9'12'#9'Codigo Calificación'#9#9);
  dbgCandidatos.Selected.Add('CFCDES_F'#9'12'#9'Descripcion Calificación'#9#9);
  // FIN : HPC_201510_COB
  dbgCandidatos.ApplySelected;
end;
//Final HPC_201504_COB

end.
