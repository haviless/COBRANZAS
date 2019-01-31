unit COB603;

// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Cobranzas
// Unidad                    : COB603
// Formulario                : Festuniges
// Fecha de Creación         :
// Autor                     : Desarrollo Sistemas Derrama
// Objetivo                  : Estadisticas por Unidad de Gestion
//
// Actualizaciones:
// HPC_201307_COB            : Estadisticas por Unidad de Gestion
// SPP_201309_COB            : Se realiza el pase a producción a partir del HPC_201307_COB
// SPP_201401_COB            : Se modficaron las consulta para procesar los Cobrado

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, db, StdCtrls, Buttons, ExtCtrls,
  ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppParameter, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppReport, ppVar, DBGrids,
// Inicio: SPP_201309_COB            : Estadisticas por Unidad de Gestion
  Mask, DBCtrls, ComCtrls;
// Fin: SPP_201309_COB            : Estadisticas por Unidad de Gestion

type
  TFestuniges = class(TForm)
    dbgestuniges: TwwDBGrid;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    edtofdes: TEdit;
    btnimprimir: TBitBtn;
    btnaexcel: TBitBtn;
    dtgData: TDBGrid;
    btnverdetalle: TBitBtn;
    ppBDEPipeline1: TppBDEPipeline;
    pprreporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppltitulo01: TppLabel;
    ppltitulo03: TppLabel;
    ppltitulo02: TppLabel;
    pplimpresopor: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel15: TppLabel;
    ppSummaryBand1: TppSummaryBand;
// Inicio: SPP_201309_COB            : Estadisticas por Unidad de Gestion
    BitProcesoPag: TBitBtn;
    Label1: TLabel;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    pbPago: TProgressBar;
// Fin: SPP_201309_COB            : Estadisticas por Unidad de Gestion
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgestunigesDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure btnaexcelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnverdetalleClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
// Inicio: SPP_201309_COB            : Estadisticas por Unidad de Gestion
    procedure BitProcesoPagClick(Sender: TObject);
// Fin: SPP_201309_COB            : Estadisticas por Unidad de Gestion
  private
    { Private declarations }
    // Inicio: SPP_201309_COB            : Estadisticas por Unidad de Gestion
    sMes0, sMes1, sMes2  : String;
    // Fin: SPP_201309_COB           : Estadisticas por Unidad de Gestion
  public
    xtotpor:Double;
    xmontotenvpla :Double;
    xtotcarcob:Double;
    { Public declarations }
  end;

var
  Festuniges: TFestuniges;

implementation

// Inicio: SPP_201309_COB            : Estadisticas por Unidad de Gestion
uses COBDM1, COB604, COB602;
// Fin: SPP_201309_COB            : Estadisticas por Unidad de Gestion


{$R *.dfm}

procedure TFestuniges.BitBtn1Click(Sender: TObject);
begin
  Festuniges.Close;
end;


procedure TFestuniges.dbgestunigesDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
begin
  dbgestuniges.Canvas.Font.Style := [fsBold];
end;

procedure TFestuniges.btnaexcelClick(Sender: TObject);
begin
  dtgData.DataSource := DM1.dsReporte1;
  DM1.HojaExcel('Resumen',DM1.dsReporte1, dtgData);
end;

procedure TFestuniges.FormActivate(Sender: TObject);
// Inicio: SPP_201309_COB            : Estadisticas por Unidad de Gestion
Var  xmoncuoenv, xmoncuoapl, xmoncuonoapl, xmonefe, xmonbco, xmonotr : Double;
     nTotReg, nTotCob : Integer;
     nMes0, nMes1, nMes2, nMesN : Double;
     nConMes : Byte;
// Inicio SPP_201401_COB            : Mejorar la Velocidad de la Consulta
     nPer : integer;
// Fin  SPP_201401_COB            : Mejorar la Velocidad de la Consulta
begin

// Inicio: SPP_201401_COB            : Mejorar la Velocidad de la Consulta
  sMes0:=DM1.cdsReporte1.FieldByName('COBANO').AsString+DM1.cdsReporte1.FieldByName('COBMES').AsString;
  nConMes:=strtoint(DM1.cdsReporte1.FieldByName('COBMES').AsString);
  if nConMes=12 then begin nConMes:=1; nPer:= DM1.cdsReporte1.FieldByName('COBANO').AsInteger+1; end
                else begin nConMes:=nConMes+1; nPer:= DM1.cdsReporte1.FieldByName('COBANO').AsInteger; end;
  sMes1:=DM1.StrZero(inttostr( nPer ),4)+DM1.StrZero(IntToStr(nConMes),2);

  if nConMes=12 then begin nConMes:=1; nPer:= nPer+1; end
                else begin nConMes:=nConMes+1; nPer:= nPer end;
  sMes2:=DM1.StrZero(inttostr( nPer ),4)+DM1.StrZero(IntToStr(nConMes),2);
// Fin: SPP_201401_COB            : Mejorar la Velocidad de la Consulta

  edtofdes.Text := DM1.cdsReporte.FieldByName('DPTODES').AsString;
  xmoncuoenv := 0; xmoncuoapl := 0; xmoncuonoapl := 0;
  xmonefe    := 0; xmonbco    := 0; xmonotr      := 0;
  nTotReg    := 0; nTotCob    := 0;
  nMes0:=0; nMes1:=0; nMes2:=0; nMesN:=0;
  DM1.cdsReporte1.First;
  While Not DM1.cdsReporte1.Eof Do
  Begin
    xmoncuoenv   := xmoncuoenv   + DM1.cdsReporte1.FieldByName('MONCUOENV').AsFloat;
    xmoncuoapl   := xmoncuoapl   + DM1.cdsReporte1.FieldByName('MONCUOAPL').AsFloat;
    xmoncuonoapl := xmoncuonoapl + DM1.cdsReporte1.FieldByName('MONCUONOAPL').AsFloat;
    xmonefe      := xmonefe      + DM1.cdsReporte1.FieldByName('MONRECEFE').AsFloat;
    xmonbco      := xmonbco      + DM1.cdsReporte1.FieldByName('MONRECBCO').AsFloat;
    xmonotr      := xmonotr      + DM1.cdsReporte1.FieldByName('MONRECOTR').AsFloat;
    nTotReg      := nTotReg      + DM1.cdsReporte1.FieldByName('NROENV').AsInteger;
    nTotCob      := nTotCob      + DM1.cdsReporte1.FieldByName('NROCOB').AsInteger;
    if FEstEnvCob.rgTipoEst.ItemIndex=1 then
    begin
      nMes0 :=nMes0 + DM1.cdsReporte1.FieldByName('MES_0').AsFloat;
      nMes1 :=nMes1 + DM1.cdsReporte1.FieldByName('MES_1').AsFloat;
      nMes2 :=nMes2 + DM1.cdsReporte1.FieldByName('MES_2').AsFloat;
      nMesN :=nMesN + DM1.cdsReporte1.FieldByName('MES_N').AsFloat;
    end;
    DM1.cdsReporte1.Next;
  End;
  dbgestuniges.Selected.Clear;

  if FEstEnvCob.rgTipoEst.ItemIndex=0 then
  begin
  dbgestuniges.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9#9);
  dbgestuniges.Selected.Add('COBANO'#9'2'#9'Año~proceso'#9#9);
  dbgestuniges.Selected.Add('COBMES'#9'2'#9'Mes~proceso'#9#9);
  dbgestuniges.Selected.Add('UPROID'#9'2'#9'Unidad~proceso'#9#9);
  dbgestuniges.Selected.Add('UPAGOID'#9'2'#9'Unidad~pago'#9#9);
  dbgestuniges.Selected.Add('USEID'#9'2'#9'Código~UGEL'#9#9);
  dbgestuniges.Selected.Add('USENOM'#9'26'#9'Descripción~de UGEL'#9#9);
  dbgestuniges.Selected.Add('MONCUOENV'#9'15'#9'Planilla~enviada'#9#9);
  dbgestuniges.Selected.Add('MONCUOAPL'#9'15'#9'Planilla~cobrada'#9#9);
  dbgestuniges.Selected.Add('MONCUONOAPL'#9'15'#9'Planilla~no cobrada'#9#9);
  dbgestuniges.Selected.Add('MONRECEFE'#9'15'#9'Pagos en~efectivo'#9#9);
  dbgestuniges.Selected.Add('MONRECBCO'#9'15'#9'Pagos en~banco'#9#9);
  dbgestuniges.Selected.Add('MONRECOTR'#9'15'#9'Otros~pagos'#9#9);
  end
  else
  begin
  dbgestuniges.Selected.Add('ASOTIPID'#9'4'#9'Tipo~Aso.'#9#9);
  dbgestuniges.Selected.Add('UPROID'#9'2'#9'Unidad~proceso'#9#9);
  dbgestuniges.Selected.Add('UPAGOID'#9'2'#9'Unidad~pago'#9#9);
  dbgestuniges.Selected.Add('USEID'#9'2'#9'Código~UGEL'#9#9);
  dbgestuniges.Selected.Add('USENOM'#9'22'#9'Descripción~de UGEL'#9#9);
  dbgestuniges.Selected.Add('NROENV'#9'08'#9'Nro.~Enviado'#9#9);
  dbgestuniges.Selected.Add('MONCUOENV'#9'15'#9'Planilla~enviada'#9#9);
  dbgestuniges.Selected.Add('NROCOB'#9'08'#9'Nro.~Cobrado'#9#9);
  dbgestuniges.Selected.Add('MONCUOAPL'#9'15'#9'Planilla~cobrada'#9#9);
  dbgestuniges.Selected.Add('MONCUONOAPL'#9'12'#9'Planilla~no cobrada'#9#9);
  dbgestuniges.Selected.Add('EFECTIVIDAD'#9'08'#9'Efectividad~%'#9#9);
  dbgestuniges.Selected.Add('MES_0'#9'12'#9''+sMes0+''#9#9);
  dbgestuniges.Selected.Add('MES_1'#9'15'#9''+sMes1+''#9#9);
  dbgestuniges.Selected.Add('MES_2'#9'13'#9''+sMes2+''#9#9);
  dbgestuniges.Selected.Add('MES_N'#9'12'#9'Mes(n)'#9#9);
  end;

  dbgestuniges.ApplySelected;

  TNumericField(DM1.cdsReporte1.FieldByName('MONCUOENV')).DisplayFormat   := '##,###,##0.00';
  TNumericField(DM1.cdsReporte1.FieldByName('MONCUOAPL')).DisplayFormat   := '##,###,##0.00';
  TNumericField(DM1.cdsReporte1.FieldByName('MONCUONOAPL')).DisplayFormat := '##,###,##0.00';
  TNumericField(DM1.cdsReporte1.FieldByName('MONRECEFE')).DisplayFormat   := '##,###,##0.00';
  TNumericField(DM1.cdsReporte1.FieldByName('MONRECBCO')).DisplayFormat   := '##,###,##0.00';
  TNumericField(DM1.cdsReporte1.FieldByName('MONRECOTR')).DisplayFormat   := '##,###,##0.00';
  TNumericField(DM1.cdsReporte1.FieldByName('NROENV')).DisplayFormat   := '##,###,##0';
  TNumericField(DM1.cdsReporte1.FieldByName('NROCOB')).DisplayFormat   := '##,###,##0';

  if FEstEnvCob.rgTipoEst.ItemIndex=1 then
  begin
    TNumericField(DM1.cdsReporte1.FieldByName('EFECTIVIDAD')).DisplayFormat   := '#,##0.00';
    TNumericField(DM1.cdsReporte1.FieldByName('MES_0')).DisplayFormat   := '##,###,##0.00';
    TNumericField(DM1.cdsReporte1.FieldByName('MES_1')).DisplayFormat   := '##,###,##0.00';
    TNumericField(DM1.cdsReporte1.FieldByName('MES_2')).DisplayFormat   := '##,###,##0.00';
    TNumericField(DM1.cdsReporte1.FieldByName('MES_N')).DisplayFormat   := '##,###,##0.00';
  end;

  dbgestuniges.ColumnByName('USENOM').FooterValue := 'TOTALES :';
  dbgestuniges.ColumnByName('MONCUOENV').FooterValue   := FloatToStrF(xmoncuoenv,   ffNumber, 15,2);
  dbgestuniges.ColumnByName('MONCUOAPL').FooterValue   := FloatToStrF(xmoncuoapl,   ffNumber, 15,2);
  dbgestuniges.ColumnByName('MONCUONOAPL').FooterValue := FloatToStrF(xmoncuonoapl, ffNumber, 15,2);



  dbgestuniges.ColumnByName('MONRECEFE').FooterValue   := FloatToStrF(xmonefe,      ffNumber, 15,2);
  dbgestuniges.ColumnByName('MONRECBCO').FooterValue   := FloatToStrF(xmonbco,      ffNumber, 15,2);
  dbgestuniges.ColumnByName('MONRECOTR').FooterValue   := FloatToStrF(xmonotr,      ffNumber, 15,2);
  if FEstEnvCob.rgTipoEst.ItemIndex=1 then
  begin
    dbgestuniges.ColumnByName('NROENV').FooterValue   := FloatToStrF(nTotReg,      ffNumber, 15,0);
    dbgestuniges.ColumnByName('NROCOB').FooterValue      := FloatToStrF(nTotCob,      ffNumber, 15,0);
    dbgestuniges.ColumnByName('MES_0').FooterValue       := FloatToStrF(nMes0,        ffNumber, 15,2);
    dbgestuniges.ColumnByName('MES_1').FooterValue       := FloatToStrF(nMes1,        ffNumber, 15,2);
    dbgestuniges.ColumnByName('MES_2').FooterValue       := FloatToStrF(nMes2,        ffNumber, 15,2);
    dbgestuniges.ColumnByName('MES_N').FooterValue       := FloatToStrF(nMesN,        ffNumber, 15,2);
  end;
// Fin: SPP_201309_COB            : Estadisticas por Unidad de Gestion

  Screen.Cursor := crDefault;
end;

procedure TFestuniges.btnverdetalleClick(Sender: TObject);
Var xSql:String;
begin
  Screen.Cursor:=crHourGlass;
  xSql := 'SELECT A.ASOCODMOD, A.ASOCODPAGO, A.ASOAPENOM, A.CARGO,'
  +' SUM(NVL(A.MONCUOENV,0)) MONCUOENV, '
  +' SUM(CASE WHEN  NVL(A.MONCUOAPL,0) > 0 THEN NVL(A.MONCUOAPL,0) END) MONCUOAPL,'
  +' SUM(CASE WHEN  NVL(A.MONCUOAPL,0) = 0 THEN NVL(A.MONCUOENV,0) END) MONCUONOAPL, '
  +' SUM(NVL(B.MONRECEFE,0)) MONRECEFE,'
  +' SUM(NVL(B.MONRECBCO,0)) MONRECBCO, SUM(NVL(B.MONRECOTR,0)) MONRECOTR'
  +' FROM COB319 A, ASO_EST_GEN_REC B'
  +' WHERE A.COBANO = '+QuotedStr(DM1.cdsReporte1.FieldByName('COBANO').AsString)
  +' AND A.COBMES = '+QuotedStr(DM1.cdsReporte1.FieldByName('COBMES').AsString)
  +' AND A.ASOTIPID = '+QuotedStr(DM1.cdsReporte1.FieldByName('ASOTIPID').AsString)
  +' AND A.UPROID = '+QuotedStr(DM1.cdsReporte1.FieldByName('UPROID').AsString)
  +' AND A.UPAGOID = '+QuotedStr(DM1.cdsReporte1.FieldByName('UPAGOID').AsString)
  +' AND A.USEID = '+QuotedStr(DM1.cdsReporte1.FieldByName('USEID').AsString)
  +' AND A.ASOID = B.ASOID(+) AND A.COBANO||A.COBMES = B.PERCOB(+) GROUP BY A.ASOCODMOD, A.ASOCODPAGO, A.ASOAPENOM, A.CARGO';


  DM1.cdsAsociados1.Close;
  DM1.cdsAsociados1.DataRequest(xSql);
  DM1.cdsAsociados1.Open;

  Screen.Cursor:=crDefault;

  Try
    Fdetenvxugel := TFdetenvxugel.Create(Self);
    Fdetenvxugel.ShowModal;
  Finally
    Fdetenvxugel.Free;
  End;
end;

procedure TFestuniges.btnimprimirClick(Sender: TObject);
begin
  If DM1.cdsReporte1.RecordCount = 0 Then
  Begin
    Beep;
    Showmessage('No Existen Datos a Imprimir');
    Exit;
  End;
  ppltitulo01.Caption   := 'COBRANZAS POR UGELES (DEPARTAMENTO DE: '+DM1.cdsReporte.FieldByName('DPTODES').AsString+')';
  ppltitulo02.Caption   := 'TIPO DE ASOCIADO : '+DM1.xtipaso;
  ppltitulo03.Caption   := 'PERIODO : '+DM1.cdsReporte1.FieldByName('COBANO').AsString+'/'+DM1.cdsReporte1.FieldByName('COBMES').AsString;
  pplimpresopor.Caption := 'Impreso por : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  pprreporte.Print;
end;

// Inicio: SPP_201309_COB            : Estadisticas por Unidad de Gestion
procedure TFestuniges.BitProcesoPagClick(Sender: TObject);
var
   sSQL : String;
   nConMes : Byte;
   sTipAsoDes : String;
// Inicio SPP_201401_COB            : Mejorar la Velocidad de la Consulta
   nPer : Integer;
// Fin  SPP_201401_COB            : Mejorar la Velocidad de la Consulta
begin
  Screen.Cursor:=crHourGlass;

  pbPago.Visible:=True;
  pbPago.Position:=0;
  pbPago.Max:=DM1.cdsReporte1.RecordCount+1;

// Inicio SPP_201401_COB            : Mejorar la Velocidad de la Consulta
  sMes0:=DM1.cdsReporte1.FieldByName('COBANO').AsString+DM1.cdsReporte1.FieldByName('COBMES').AsString;
  nConMes:=strtoint(DM1.cdsReporte1.FieldByName('COBMES').AsString);

  if nConMes=12 then begin nConMes:=1; nPer:= DM1.cdsReporte1.FieldByName('COBANO').AsInteger+1; end
                else begin nConMes:=nConMes+1; nPer:= DM1.cdsReporte1.FieldByName('COBANO').AsInteger; end;
  sMes1:=DM1.StrZero(inttostr( nPer ),4)+DM1.StrZero(IntToStr(nConMes),2);

  if nConMes=12 then begin nConMes:=1; nPer:= nPer+1; end
                else begin nConMes:=nConMes+1; nPer:= nPer end;
  sMes2:=DM1.StrZero(inttostr( nPer ),4)+DM1.StrZero(IntToStr(nConMes),2);

  {if nConMes=12 then nConMes:=1 else nConMes:=nConMes+1;
  sMes1:=DM1.cdsReporte1.FieldByName('COBANO').AsString+DM1.StrZero(IntToStr(nConMes),2);
  if nConMes=12 then nConMes:=1 else nConMes:=nConMes+1;
  sMes2:=DM1.cdsReporte1.FieldByName('COBANO').AsString+DM1.StrZero(IntToStr(nConMes),2);
  }
// Fin  SPP_201401_COB            : Mejorar la Velocidad de la Consulta

  if DM1.xtipaso='DOCENTES' then sTipAsoDes := ' AND ASOTIPID = '+QuotedStr('DO');
  if DM1.xtipaso='CESANTES' then sTipAsoDes := ' AND ASOTIPID = '+QuotedStr('CE');
  if DM1.xtipaso='TODOS'    then sTipAsoDes := '';

  pbPago.Position:=pbPago.Position+1;
  DM1.cdsReporte1.First;
  while not DM1.cdsReporte1.Eof do
  begin
// Inicio SPP_201401_COB            : Mejorar la Velocidad de la Consulta
      sSQL:='SELECT SUM(MES_0) MES_0,SUM(MES_1) MES_1,SUM(MES_2) MES_2,SUM(MES_N) MES_N FROM ( '
           +   'SELECT ASOID, ASOAPENOM, MONCUOAPL, SUM(MES_0) MES_0,SUM(MES_1) MES_1,SUM(MES_2) MES_2,SUM(MES_N) MES_N FROM ( '
           +      'SELECT A.ASOID, A.ASOAPENOM, MONCUOAPL, '
           +          'CASE WHEN TO_CHAR(B.FREG,''YYYYMM'')='''+sMes0+''' THEN NVL(B.CREMTOCOB,0) ELSE 0 END MES_0, '
           +          'CASE WHEN TO_CHAR(B.FREG,''YYYYMM'')='''+sMes1+''' THEN NVL(B.CREMTOCOB,0) ELSE 0 END MES_1, '
           +          'CASE WHEN TO_CHAR(B.FREG,''YYYYMM'')='''+sMes2+''' THEN NVL(B.CREMTOCOB,0) ELSE 0 END MES_2, '
           +          'CASE WHEN TO_CHAR(B.FREG,''YYYYMM'')>'''+sMes2+''' THEN NVL(B.CREMTOCOB,0) ELSE 0 END MES_N '
           +        'FROM COB319 A, CRE310 B, COB302 C '
           +       'WHERE A.COBANO ='''+DM1.cdsReporte1.FieldByName('COBANO').AsString +''' '
           +        ' AND A.COBMES ='''+DM1.cdsReporte1.FieldByName('COBMES').AsString +''' '
           +        ' AND A.UPROID ='''+DM1.cdsReporte1.FieldByName('UPROID').AsString +''' '
           +        ' AND A.UPAGOID='''+DM1.cdsReporte1.FieldByName('UPAGOID').AsString+''' '
           +        ' AND A.USEID  ='''+DM1.cdsReporte1.FieldByName('USEID').AsString  +''' '
           +        ' AND NVL(A.MONCUOENV,0)>0 '
           +        ' AND A.ASOTIPID ='''+DM1.cdsReporte1.FieldByName('ASOTIPID').AsString  +''' '
           +        ' AND A.ASOID=B.ASOID(+) AND (B.TRANSINTID=''CUO'' OR B.TRANSINTID=''EXC'') '
           +        ' AND B.RCOBID IS NOT NULL AND B.CREESTID NOT IN (''13'',''04'',''99'') '
           +        ' AND B.RCOBID=C.RCOBID(+) AND B.DETRCOBID=C.DETRCOBID(+) '
           //+        ' AND C.RCOBANO||C.RCOBMES='''+DM1.cdsReporte1.FieldByName('COBANO').AsString+DM1.cdsReporte1.FieldByName('COBMES').AsString+''' '
           +        ' AND C.RCOBANO = '''+DM1.cdsReporte1.FieldByName('COBANO').AsString +''' '
           +        ' AND C.RCOBMES = '''+DM1.cdsReporte1.FieldByName('COBMES').AsString +''' '
           +   ') GROUP BY ASOID, ASOAPENOM, MONCUOAPL '
           +') A ';
// Fin SPP_201401_COB            : Mejorar la Velocidad de la Consulta
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(sSQL);
      DM1.cdsQry.Open;

      DM1.cdsReporte1.Edit;
      DM1.cdsReporte1.FieldByName('MES_0').AsFloat := DM1.cdsQry.FieldByName('MES_0').AsFloat;
      DM1.cdsReporte1.FieldByName('MES_1').AsFloat := DM1.cdsQry.FieldByName('MES_1').AsFloat;
      DM1.cdsReporte1.FieldByName('MES_2').AsFloat := DM1.cdsQry.FieldByName('MES_2').AsFloat;
      DM1.cdsReporte1.FieldByName('MES_N').AsFloat := DM1.cdsQry.FieldByName('MES_N').AsFloat;
      DM1.cdsReporte1.Post;
      DM1.cdsReporte1.Next;
      pbPago.Position:=pbPago.Position+1;
  end;
  FormActivate(Self);
  Screen.Cursor := crDefault;
  ShowMessage('Proceso Finalizado!!!');
  pbPago.Visible:=False;;
end;
// Fin: SPP_201309_COB            : Estadisticas por Unidad de Gestion


End.

