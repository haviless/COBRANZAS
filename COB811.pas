unit COB811;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, ExtCtrls, Buttons,
  DB, DBClient, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, ppBands, ppCache, DBGrids, ppCtrls, ppVar, ppPrnabl;

type
  TFinfenv = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Panel1: TPanel;
    meidecon: TMaskEdit;
    Panel2: TPanel;
    medescon: TMaskEdit;
    Label2: TLabel;
    Panel3: TPanel;
    medesper: TMaskEdit;
    Label8: TLabel;
    Panel11: TPanel;
    measotipid: TMaskEdit;
    GroupBox2: TGroupBox;
    dbgPrevio: TwwDBGrid;
    GroupBox3: TGroupBox;
    rgTipDes: TRadioGroup;
    btnprevio: TBitBtn;
    rgTipInf: TRadioGroup;
    btnexportar: TBitBtn;
    btnimprimir: TBitBtn;
    ppbdereporte: TppBDEPipeline;
    pprreporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    dtgData: TDBGrid;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape1: TppShape;
    ppLabel9: TppLabel;
    ppShape2: TppShape;
    ppLabel10: TppLabel;
    ppShape3: TppShape;
    ppLabel11: TppLabel;
    ppShape4: TppShape;
    ppLabel12: TppLabel;
    ppShape5: TppShape;
    ppLabel13: TppLabel;
    ppShape6: TppShape;
    ppLabel14: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    pplimpresopor: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppldescon: TppLabel;
    pplperiodo: TppLabel;
    ppltipaso: TppLabel;
    ppLabel24: TppLabel;
    ppDBCalc2: TppDBCalc;
    pnlprocesado: TPanel;
    btnCerrar: TBitBtn; // HPP_200901_COB IR Se renombre nombre de botón
    procedure FormActivate(Sender: TObject);
    procedure btnprevioClick(Sender: TObject);
    procedure btnexportarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Finfenv: TFinfenv;

implementation

///////////////////////////
// HPP_200901_COB  IR
// SE RETIRA BOTON DE PROCESAR, OCASIONABA DOBLE PROCESO GENERANDOSE REGISTROS DUPLICADOS
// NO ES NECESARIO

uses COBDM1;

{$R *.dfm}

procedure TFinfenv.FormActivate(Sender: TObject);
Var
   xSql, tipaso, xFlg:String;
begin
  // HPP_200901_COB IR
  // SAR2009JC-0089
  // Se procede a retirar el boton de procesar.

   xFlg := 'S';
   meidecon.Text   := DM1.cdsGrupos.FieldByName('IDECON').AsString;
   medescon.Text   := DM1.cdsGrupos.FieldByName('DESCON').AsString;
   medesper.Text   := DM1.cdsGrupos.FieldByName('DESPER').AsString;
   If DM1.cdsGrupos.FieldByName('ASOTIPID').AsString = 'DO' Then tipaso := 'DOCENTE' Else tipaso := 'CESANTE';
   measotipid.Text := tipaso;
   If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
End;

procedure TFinfenv.btnprevioClick(Sender: TObject);
Var xTipenv, xTipinf, xSql:String;
begin
  // Filtrar información procesada
  xTipenv := '';
  If      rgTipDes.ItemIndex = 1 Then xTipenv := ' AND TIPENV = ''C'''
  Else If rgTipDes.ItemIndex = 2 Then xTipenv := ' AND TIPENV = ''A''';

  xTipinf := '';
  If      rgTipInf.ItemIndex = 1 Then xTipinf := ' AND FLATIPENV  = ''A'''
  Else If rgTipInf.ItemIndex = 2 Then xTipinf := ' AND FLATIPENV  = ''M'''
  Else If rgTipInf.ItemIndex = 3 Then xTipinf := ' AND FLATIPENV  = ''E'''
  Else If rgTipInf.ItemIndex = 4 Then xTipinf := ' AND FLATIPENV  = ''I''';

  xSql := 'SELECT IDECON, COBANO, COBMES, ASOID, ASOCODMOD, ASOTIPID, ASOAPENOM, MONENV, CUOPEN, TIPENV,'
  // inicio HPP_201105_COB
{
  +' CASE WHEN TIPENV = ''A'' THEN ''APORTE'' ELSE ''CUOTAS'' END DESTIPENV,'
}
  +' CASE WHEN TIPENV = ''A'' THEN ''APORTE'' ELSE ''CUOTAS + FSC'' END DESTIPENV,'
  // fin HPP_201105_COB
  +' FLATIPENV, CASE WHEN FLATIPENV = ''A'' THEN ''ADICIONAR'''
  +'                 WHEN FLATIPENV = ''M'' THEN ''MODIFICAR'''
  +'                 WHEN FLATIPENV = ''E'' THEN ''ELIMINAR'''
  +'                 ELSE ''IGUAL'' END DESFLATIPENV'
  +' FROM COB_INF_ENV_VAR WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
  +' AND COBANO = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREANO').AsString)
  +' AND COBMES = '+QuotedStr(DM1.cdsGrupos.FieldByName('CREMES').AsString)
  +' AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)
  + xTipenv
  + xTipinf
  +' ORDER BY TIPENV, FLATIPENV, ASOCODMOD';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;

  dbgPrevio.Selected.Clear;
  dbgPrevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbgPrevio.Selected.Add('ASOAPENOM'#9'52'#9'Apellidos y Nombre(s)'#9#9);
  dbgPrevio.Selected.Add('MONENV'#9'12'#9'Monto a~procesar'#9#9);
  dbgPrevio.Selected.Add('DESTIPENV'#9'15'#9'Tipo de~envio'#9#9);
  dbgPrevio.Selected.Add('DESFLATIPENV'#9'15'#9'Estado~descuento'#9#9);
  dbgPrevio.Selected.Add('CUOPEN'#9'10'#9'Nº Cuotas~pendientes'#9#9);
  dbgPrevio.ApplySelected;

end;



procedure TFinfenv.btnexportarClick(Sender: TObject);
begin
  DM1.HojaExcel('RESUMEN',DM1.dsReporte, dtgData);
end;

procedure TFinfenv.btnimprimirClick(Sender: TObject);
begin
  ppldescon.Caption  := meidecon.Text+' / '+medescon.Text;
  pplperiodo.Caption := medesper.Text;
  ppltipaso.Caption  := measotipid.Text;
  pplImpresopor.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  pprreporte.Print;
end;

procedure TFinfenv.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

end.
