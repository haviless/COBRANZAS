unit COB716;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, fcButton, fcImgBtn, fcShapeBtn, ppDB,
  ppDBPipe, ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache,
  ppTypes, ppComm, ppRelatv, ppProd, ppReport, ppViewr;

type
  TFToolsBol = class(TForm)
    pnlTool: TPanel;
    bbtnImprimir: TfcShapeBtn;
    pprBoletaPago: TppReport;
    ppdbBoletaPago: TppDBPipeline;
    pprAnexoPago: TppReport;
    ppHeaderBand1: TppHeaderBand;
    pplblCia: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    pplblAreaPersonal: TppLabel;
    pplbltitulo: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppLabel22: TppLabel;
    ppDBText14: TppDBText;
    ppLabel3: TppLabel;
    ppDBText13: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel48: TppLabel;
    ppDBText41: TppDBText;
    ppLabel19: TppLabel;
    ppDBText19: TppDBText;
    ppLabel13: TppLabel;
    ppDBText18: TppDBText;
    ppLabel16: TppLabel;
    ppDBText9: TppDBText;
    ppDBText20: TppDBText;
    ppLabel18: TppLabel;
    ppDBText11: TppDBText;
    ppLine5: TppLine;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppLabel5: TppLabel;
    ppLabel23: TppLabel;
    ppLine6: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDBText5: TppDBText;
    ppDBText15: TppDBText;
    ppDBText1: TppDBText;
    pplblast: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppLine1: TppLine;
    ppvtotal: TppVariable;
    ppLine7: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine8: TppLine;
    ppLabel46: TppLabel;
    pplblAnexo: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel4: TppLabel;
    ppDBText12: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc3: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBText21: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText16: TppDBText;
    ppLabel24: TppLabel;
    ppDBText17: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel25: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppHeaderBand2: TppHeaderBand;
    pplblAreaPersonal1: TppLabel;
    pplblcia1: TppLabel;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel20: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel26: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLine2: TppLine;
    ppLabel27: TppLabel;
    ppLine3: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel30: TppLabel;
    ppvfecha: TppVariable;
    ppvnrobol: TppVariable;
    ppvnroofi: TppVariable;
    ppDetailBand2: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText22: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel41: TppLabel;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    procedure bbtnImprimirClick(Sender: TObject);
    procedure ppDBText4Print(Sender: TObject);
    procedure ppDBText5Print(Sender: TObject);
    procedure ppDBText15Print(Sender: TObject);
    procedure pprBoletaPagoPreviewFormCreate(Sender: TObject);
    procedure ppvtotalPrint(Sender: TObject);
    procedure pplblastPrint(Sender: TObject);
    procedure pprAnexoPagoPreviewFormCreate(Sender: TObject);
    procedure pprBoletaPagoAfterPrint(Sender: TObject);
    procedure ppvfechaPrint(Sender: TObject);
    procedure ppvnrobolPrint(Sender: TObject);
    procedure ppvnroofiPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sSQL:string;
  end;

var
  FToolsBol: TFToolsBol;
  wtotal : double;
  wfecha, wnrobol, wnroofi : string;

implementation

uses COBDM1, COB315, MsgDlgs;

{$R *.DFM}

procedure TFToolsBol.bbtnImprimirClick(Sender: TObject);
var
	xwhere, xSQL, xTitulo : string;
  x10 : Integer;
begin
  if dm1.cdsBoletaCob.recordcount = 0 then
    exit;

  Screen.Cursor:=crHourGlass;

  Dm1.cdsReporte.indexfieldnames:= '';
  Dm1.cdsReporte.Close;
  ppdbBoletaPago.DataSource:=Nil;

  // Total
  xSQL:='SELECT '+
        'SUM(CASE WHEN DETBOL.SIGNO='+quotedstr('+')+' THEN DETBOL.CONCMTN ELSE DETBOL.CONCMTN*-1 END) TOTAL '+
        'FROM COB209 DETBOL '+
        'WHERE '+
        'DETBOL.BOLRNUMB='+quotedstr(dm1.cdsBoletaCob.fieldbyname('BOLRNUMB').AsString);
  Dm1.cdsReporte.Close;
  Dm1.cdsReporte.DataRequest(xSQL);
  Dm1.cdsReporte.indexfieldnames:='';
  Dm1.cdsReporte.Open;

  wtotal:=0;

  if dm1.cdsBoletaCob.fieldbyname('TIPBID').AsString='L' then
  begin
    xTitulo:='LIQUIDACION OTORGADA A RECAUDADORES';
    if Dm1.cdsReporte.recordcount = 0 then
      wtotal:=0.00
    else
      wtotal:=Dm1.cdsReporte.fieldbyname('TOTAL').AsFloat;
  end
  else
  begin
    xTitulo:='ADELANTO OTORGADO A RECAUDADORES';
    if Dm1.cdsReporte.recordcount = 0 then
      wtotal:=0.00
    else
      wtotal:=Dm1.cdsReporte.fieldbyname('TOTAL').AsFloat*-1;
  end;

  xSQL:='SELECT CABBOL.FREG, CABBOL.BOLRNUMB, DETBOL.BOLRNUMBD, CABBOL.NROOFI, CABBOL.REPRID, '+
        'REPR.REPRAPENOM, FORR.FORREPRDES, '+
        'TRIM(DEPTO.DPTODES)||'+quotedstr(' / ')+'||TRIM(PROVI.CIUDDES)||'+quotedstr(' / ')+'||TRIM(DISTR.ZIPDES) UBIGEO, '+
        'REPR.REPRDIR, PAGR.REPRPAGD, REPR.BANCOID, BCO.BANCONOM, REPR.REPRNCTA, '+
        'DETBOL.TIPCID, TIPC.TIPCDES, CCOS.CCOSDES, '+
        'DETBOL.CONCID, CONC.CONCDES, DETBOL.BOLRREF, DETBOL.CONCMTO, DETBOL.CONCPORC, DETBOL.CONCMTN, TIPC.TIPORD, '+
        'CASE WHEN TIPC.SIGNO=''+'' THEN ''INGRESOS'' ELSE ''EGRESOS'' END TIPOCOND '+
        'FROM COB208 CABBOL, COB209 DETBOL, COB201 REPR, COB105 FORR, APO158 DEPTO, TGE203 CCOS, '+
        'APO123 PROVI, APO122 DISTR, COB215 PAGR, TGE105 BCO, COB211 TIPC, COB212 CONC '+
        'WHERE '+
        'CABBOL.BOLRNUMB='+quotedstr(dm1.cdsBoletaCob.fieldbyname('BOLRNUMB').AsString)+' '+
        'AND DETBOL.BOLRNUMB=CABBOL.BOLRNUMB '+
        'AND REPR.REPRID=CABBOL.REPRID '+
        'AND REPR.FORREPRID(+)=FORR.FORREPRID '+
        'AND PAGR.REPRPAGO(+)=REPR.REPRPAGO '+
        'AND DEPTO.DPTOID(+)=REPR.DPTOID '+
        'AND PROVI.DPTOID(+)=REPR.DPTOID '+
        'AND PROVI.CIUDID(+)=REPR.CIUDID '+
        'AND DISTR.DPTOID(+)=REPR.DPTOID '+
        'AND DISTR.CIUDID(+)=REPR.CIUDID '+
        'AND DISTR.ZIPID(+)=REPR.ZIPID '+
        'AND CCOS.CCOSID(+)=REPR.CCOSID '+
        'AND BCO.BANCOID(+)=REPR.BANCOID '+
        'AND TIPC.TIPCID(+)=DETBOL.TIPCID '+
        'AND CONC.CONCID(+)=DETBOL.CONCID';
  Dm1.cdsReporte.indexfieldnames:=''; //
  Dm1.cdsReporte.Close;
  Dm1.cdsReporte.DataRequest(xSQL);
  Dm1.cdsReporte.indexfieldnames:= 'TIPORD;TIPCID;CONCID;BOLRNUMBD';
  Dm1.cdsReporte.Open;

  if Dm1.cdsReporte.RecordCount = 0 then
  begin
    Screen.Cursor:=crDefault;
    Information(Caption, 'No existe Información a Mostrar');
    Exit;
  end;

  Dm1.cdsReporte.Close;
  ppdbBoletaPago.DataSource:=DM1.dsReporte;

  // REPORTE BOLETA
  pprBoletaPago.template.FileName := wRutaRpt + '\RepBoletaPago.rtm' ;
  pprBoletaPago.template.LoadFromFile;

  pplblCia.caption:=DM1.wciades;
  pplblAreaPersonal.caption:=DM1.wAreaPersonal;
  pplbltitulo.caption:=xTitulo;

  if dm1.cdsBoletaCob.fieldbyname('TIPBID').AsString<>'L' then
    pplblAnexo.Visible:=False;

  Screen.Cursor:=crDefault;
  pprBoletaPago.Print;
  pprBoletaPago.Stop;

  // ANEXO BOLETA
  if dm1.cdsBoletaCob.fieldbyname('TIPBID').AsString='L' then
  begin
    Screen.Cursor:=crHourGlass;

    // Obtiene item en boleta
    xwhere:='TIPO='+quotedstr('C');
    if length(dm1.DisplayDescrip('prvTGE','COB212','CONCID',xWhere,'CONCID'))>0 then
    begin
      xwhere:='BOLRNUMB='+quotedstr(DM1.cdsBoletaCob.fieldbyname('BOLRNUMB').AsString)+
              ' AND CONCID='+quotedstr(DM1.cdsqry.fieldbyname('CONCID').AsString);
      if length(dm1.DisplayDescrip('prvTGE','COB209','BOLRNUMB, BOLRNUMBD',xWhere,'BOLRNUMB'))>0 then
      begin
        xSQL:=' SELECT APO103.UPAGOID, APO103.UPAGONOM, COB301.RCOBANO, COB301.RCOBMES, COB301.RCOBNOPE, COB301.RCOBFOPE,'
             +' NVL(SUM(NVL(APO301.TRANSMTO,0)),0) APORTE'
             +' FROM COB301, APO301, APO103'
             +' WHERE'
             +' APO103.UPAGOID=APO301.UPAGOID'
             +' AND COB301.BOLRNUMB='+quotedstr(DM1.cdsqry.fieldbyname('BOLRNUMB').AsString)
             +' AND COB301.BOLRNUMBD='+quotedstr(DM1.cdsqry.fieldbyname('BOLRNUMBD').AsString)
             +' AND APO301.TRANSINTID='+quotedstr('APO')
             +' AND APO301.TRANSANO=COB301.RCOBANO'
             +' AND APO301.TRANSMES=COB301.RCOBMES'
             +' AND APO301.TRANSNOPE=COB301.RCOBNOPE'
             +' AND APO301.TRANSFOPE=COB301.RCOBFOPE'
             +' AND APO301.BANCOIDG=COB301.BANCOID'
             +' AND NVL(APO301.AGENCIDG,'+quotedstr('N')+')=NVL(COB301.AGENBCOID,'+quotedstr('N')+')'
             +' GROUP BY APO103.UPAGOID, APO103.UPAGONOM, COB301.RCOBANO, COB301.RCOBMES, COB301.RCOBNOPE, COB301.RCOBFOPE';
        Dm1.cdsReporte.indexfieldnames:=''; //
        Dm1.cdsReporte.Close;
        Dm1.cdsReporte.DataRequest(xSQL);
        Dm1.cdsReporte.indexfieldnames:= 'UPAGOID;UPAGONOM;RCOBANO;RCOBMES;RCOBNOPE;RCOBFOPE';
        Dm1.cdsReporte.Open;

        if Dm1.cdsReporte.RecordCount = 0 then
        begin
          Screen.Cursor:=crDefault;

          x10:=Self.ComponentCount-1;
          While x10>=0 Do
          Begin
            If Self.Components[x10].ClassName='TppGroup' Then
            Begin
              Self.Components[x10].Free;
            End;
            x10:=x10-1;
          End;

          Dm1.cdsReporte.indexfieldnames:= '';
          Dm1.cdsReporte.Close;
          ppdbBoletaPago.DataSource:=Nil;

          Information(Caption, 'No existe Información a Mostrar');
          Exit;
        end;

        pprAnexoPago.template.FileName := wRutaRpt + '\RepAnexoPago.rtm' ;
        pprAnexoPago.template.LoadFromFile;

        pplblCia1.caption:=DM1.wciades;
        pplblAreaPersonal1.caption:=DM1.wAreaPersonal;

        wfecha:=dm1.cdsBoletaCob.fieldbyname('FREG').AsString;
        wnrobol:=dm1.cdsBoletaCob.fieldbyname('BOLRNUMB').AsString;
        wnroofi:=dm1.cdsBoletaCob.fieldbyname('NROOFI').AsString;

        Screen.Cursor:=crDefault;
        pprAnexoPago.Print;
        pprAnexoPago.Stop;
      end;
    end;
    Screen.Cursor:=crDefault;
  end;

  x10:=Self.ComponentCount-1;
  While x10>=0 Do
  Begin
    If Self.Components[x10].ClassName='TppGroup' Then
    Begin
      Self.Components[x10].Free;
    End;
    x10:=x10-1;
  End;

  Dm1.cdsReporte.indexfieldnames:= '';
  Dm1.cdsReporte.Close;
  ppdbBoletaPago.DataSource:=Nil;
end;

procedure TFToolsBol.ppDBText4Print(Sender: TObject);
begin
  if DM1.cdsReporte.fieldbyname('CONCMTO').AsFloat > 0 then
    ppDBText4.visible:=true
  else
    ppDBText4.visible:=false;
end;

procedure TFToolsBol.ppDBText5Print(Sender: TObject);
begin
  if DM1.cdsReporte.fieldbyname('CONCPORC').AsFloat>0 then
    ppDBText5.visible:=true
  else
    ppDBText5.visible:=false;
end;

procedure TFToolsBol.ppDBText15Print(Sender: TObject);
begin
  if DM1.cdsReporte.fieldbyname('CONCMTN').AsFloat>0 then
    ppDBText15.visible:=true
  else
    ppDBText15.visible:=false;
end;

procedure TFToolsBol.pprBoletaPagoPreviewFormCreate(Sender: TObject);
begin
	pprBoletaPago.PreviewForm.ClientHeight := 500;
	pprBoletaPago.PreviewForm.ClientWidth  := 650;
	TppViewer(pprBoletaPago.PreviewForm.Viewer).ZoomSetting := zsPagewidth;

  //pprBoletaPago.PreviewForm.WindowState:=WsMaximized;
  //TppViewer(pprBoletaPago.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFToolsBol.ppvtotalPrint(Sender: TObject);
begin
   ppvtotal.value:=wtotal;
end;

procedure TFToolsBol.pplblastPrint(Sender: TObject);
begin
   if (DM1.cdsReporte.fieldbyname('TIPCID').AsString='I') then
      pplblast.visible:=true
   else
      pplblast.visible:=false;
end;

procedure TFToolsBol.pprAnexoPagoPreviewFormCreate(Sender: TObject);
begin
	pprAnexoPago.PreviewForm.ClientHeight := 500;
	pprAnexoPago.PreviewForm.ClientWidth  := 650;
	TppViewer(pprAnexoPago.PreviewForm.Viewer).ZoomSetting := zsPagewidth;

  //pprAnexoPago.PreviewForm.WindowState:=WsMaximized;
  //TppViewer(pprAnexoPago.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFToolsBol.pprBoletaPagoAfterPrint(Sender: TObject);
var
   xi : integer;
begin
   xi:=pprBoletaPago.GroupCount-1;
   While xi>=0 do
   begin
      pprBoletaPago.Groups[xi].Free;
      xi:=xi-1;
   end;
end;

procedure TFToolsBol.ppvfechaPrint(Sender: TObject);
begin
   ppvfecha.value:=wfecha;
end;

procedure TFToolsBol.ppvnrobolPrint(Sender: TObject);
begin
   ppvnrobol.value:=wnrobol;
end;

procedure TFToolsBol.ppvnroofiPrint(Sender: TObject);
begin
   ppvnroofi.value:=wnroofi;
end;

end.
