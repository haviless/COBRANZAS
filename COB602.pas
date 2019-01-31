unit COB602;

// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Cobranzas
// Unidad                    : COB602
// Formulario                : FEstEnvCob
// Fecha de Creación         :
// Autor                     : Desarrollo Sistemas Derrama
// Objetivo                  : Estadisticas de Envio vs. Cobrado
//
// Actualizaciones:
// HPC_201307_COB            : Estadistica de la Cobranza
// SPP_201309_COB            : Se realiza el pase a producción a partir del HPC_201307_COB
// SPP_201401_COB 06/03/2014 : Mejorar la Velocidad de la Consulta

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Spin, Buttons, db,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppVar, DBGrids;

type
  TFEstEnvCob = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    rgtipo: TRadioGroup;
    btnprocesar: TBitBtn;
    seanopro: TSpinEdit;
    semespro: TSpinEdit;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    btnimprimir: TBitBtn;
    Panel1: TPanel;
    lblanomes: TLabel;
    lbltipdoc: TLabel;
    btnaexcel: TBitBtn;
    dtgData: TDBGrid;
    dbgprepri: TwwDBGrid;
    pprepxdep: TppReport;
    ppBDEPipeline1: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    pplimpresopor: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    pplperiodo: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppltipaso: TppLabel;
// Inicio: SPP_201309_COB            : Estadistica de la Cobranza
    rgTipoEst: TRadioGroup;
    lblEstadistica: TLabel;
    pprRetorno: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape5: TppShape;
    ppLabel13: TppLabel;
    ppShape6: TppShape;
    ppLabel14: TppLabel;
    ppShape7: TppShape;
    ppLabel15: TppLabel;
    ppShape8: TppShape;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    pplperiodo2: TppLabel;
    ppltipaso2: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel26: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    pplImpresoPor2: TppLabel;
    ppdbRetorno: TppBDEPipeline;
    ppShape9: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText9: TppDBText;
// Fin: SPP_201309_COB            : Estadistica de la Cobranza
    procedure btnprocesarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure rgtipoClick(Sender: TObject);
    procedure seanoproChange(Sender: TObject);
    procedure semesproChange(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
    procedure dbgprepri1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
// Inicio: SPP_201309_COB            : Estadistica de la Cobranza
    procedure rgTipoEstClick(Sender: TObject);
// Fin: SPP_201309_COB            : Estadistica de la Cobranza
  private
    { Private declarations }
// Inicio: SPP_201309_COB            : Estadistica de la Cobranza
    Procedure Proceso_Retorno;
// Fin: SPP_201309_COB            : Estadistica de la Cobranza
  public
    xtotpor :Double;
    { Public declarations }
  end;

var
  FEstEnvCob: TFEstEnvCob;

implementation

uses VarUtils, COBDM1, COB603;

{$R *.dfm}

Procedure TFEstEnvCob.btnprocesarClick(Sender: TObject);
Var xperano, xpermes, xSql, xsqltipaso:String;
    xmoncuoenv, xmoncuoapl:Double;
Begin
// Inicio: SPP_201309_COB            : Estadistica de la Cobranza
  if rgTipoEst.ItemIndex=0 then
  begin
      xmoncuoenv := 0;
      xmoncuoapl := 0;
      xperano := seanopro.Text;
      xpermes := DM1.strzero(semespro.Text,2);
      If rgtipo.ItemIndex = 0 Then
      Begin
        xsqltipaso  := ' AND ASOTIPID = '+QuotedStr('DO');
        DM1.xtipaso := 'DOCENTES';
      End;
      If rgtipo.ItemIndex = 1 Then
      Begin
        xsqltipaso := ' AND ASOTIPID = '+QuotedStr('CE');
        DM1.xtipaso := 'CESANTES';
      End;
      If rgtipo.ItemIndex = 2 Then
      Begin
        xsqltipaso := '';
        DM1.xtipaso := 'TODOS';
      End;
      Screen.Cursor := crHourGlass;
// Inicio SPP_201401_COB  -  Mejorar la Velocidad de la Consulta
      xSql := 'SELECT C.DPTOID, C.DPTODES, SUM(NVL(MONCUOENV,0)) MONCUOENV, SUM(NVL(MONCUOAPL,0)) MONCUOAPL'
      +' FROM COB319 A, APO101 B, APO158 C '
      +' WHERE COBANO = '+QuotedStr(xperano)+' and COBMES = '+QuotedStr(xpermes) + xsqltipaso
      +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+) AND B.DPTOID = C.DPTOID(+)'
      +' GROUP BY C.DPTOID, C.DPTODES'
      +' ORDER BY C.DPTODES';
// Fin SPP_201401_COB  -  Mejorar la Velocidad de la Consulta
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
        Screen.Cursor := crDefault;
        ShowMessage('MENSAJE : NO SE HA ENCONTRADO LA INFORMACION SOLICITADA!!!');
        Exit;
      End;

      DM1.cdsReporte.First;
      While Not DM1.cdsReporte.Eof Do
      Begin
        xmoncuoenv := xmoncuoenv + DM1.cdsReporte.FieldByName('MONCUOENV').AsFloat;
        xmoncuoapl := xmoncuoapl + DM1.cdsReporte.FieldByName('MONCUOAPL').AsFloat;
        DM1.cdsReporte.Next;
      End;
      dbgprepri.Selected.Clear;
      dbgprepri.Selected.Add('DPTOID'#9'2'#9'Código~departamento'#9#9);
      dbgprepri.Selected.Add('DPTODES'#9'26'#9'Descripción~de departamento'#9#9);
      dbgprepri.Selected.Add('MONCUOENV'#9'15'#9'Planilla~enviada'#9#9);
      dbgprepri.Selected.Add('MONCUOAPL'#9'15'#9'Planilla~cobrada'#9#9);
      dbgprepri.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('MONCUOENV')).DisplayFormat := '##,###,##0.00';
      TNumericField(DM1.cdsReporte.FieldByName('MONCUOAPL')).DisplayFormat := '##,###,##0.00';
      dbgprepri.ColumnByName('DPTODES').FooterValue := 'TOTALES :';
      dbgprepri.ColumnByName('MONCUOENV').FooterValue := FloatToStrF(xmoncuoenv, ffNumber, 15,2);
      dbgprepri.ColumnByName('MONCUOAPL').FooterValue := FloatToStrF(xmoncuoapl, ffNumber, 15,2);
  end
  else
  begin
      Proceso_Retorno;
  end;
// Fin: SPP_201309_COB            : Estadistica de la Cobranza
  Screen.Cursor := crDefault;
End;

Procedure TFEstEnvCob.BitBtn2Click(Sender: TObject);
Begin
  FEstEnvCob.Close;
End;


procedure TFEstEnvCob.rgtipoClick(Sender: TObject);
begin
  DM1.cdsReporte.Close;
  dbgprepri.Selected.Clear;
  lbltipdoc.Caption     := 'TIPO DE SELECCION : '+UpperCase(rgtipo.Items.Strings[rgtipo.itemindex]);
end;


procedure TFEstEnvCob.seanoproChange(Sender: TObject);
begin
  DM1.cdsReporte.Close;
  dbgprepri.Selected.Clear;
  lblanomes.Caption := 'PROCESO : '+DM1.NombreMes(DM1.strzero(semespro.Text,2))+' DEL '+seanopro.Text;
end;

procedure TFEstEnvCob.semesproChange(Sender: TObject);
begin
  DM1.cdsReporte.Close;
  dbgprepri.Selected.Clear;
  lblanomes.Caption := 'PROCESO : '+DM1.NombreMes(DM1.strzero(semespro.Text,2))+' DEL '+seanopro.Text;
end;



procedure TFEstEnvCob.btnaexcelClick(Sender: TObject);
begin
// Inicio: SPP_201309_COB   : Exportar a Excel
  If not DM1.cdsReporte.Active Then Exit;
  dtgData.DataSource := DM1.dsReporte;
  DM1.HojaExcel('Resumen',DM1.dsReporte, dtgData);
// Fin: SPP_201309_COB     

end;

procedure TFEstEnvCob.dbgprepri1DblClick(Sender: TObject);
Var xperano, xpermes, xsqltipaso, xSql:String;
begin
  Screen.Cursor:=crHourGlass;

// Inicio: SPP_201309_COB            : Estadistica de la Cobranza
  if rgTipoEst.ItemIndex=0 then
  begin
      xperano := seanopro.Text;
      xpermes := DM1.strzero(semespro.Text,2);
      If rgtipo.ItemIndex = 0 Then xsqltipaso := ' AND A.ASOTIPID IN ('+QuotedStr('DO')+','+QuotedStr('CO')+')'; // xsqltipaso := ' AND A.ASOTIPID = '+QuotedStr('DO');
      If rgtipo.ItemIndex = 1 Then xsqltipaso := ' AND A.ASOTIPID = '+QuotedStr('CE');
      If rgtipo.ItemIndex = 2 Then xsqltipaso := '';

// Inicio SPP_201401_COB  -  Mejorar la Velocidad de la Consulta
      xSql := 'SELECT A.ASOTIPID, A.COBANO, A.COBMES, B.UPROID, B.UPAGOID, B.USEID, B.USENOM, SUM(NVL(MONCUOENV,0)) MONCUOENV,'
      +' SUM(CASE WHEN  NVL(MONCUOAPL,0) > 0 THEN NVL(MONCUOAPL,0) END) MONCUOAPL,'
      +' SUM(CASE WHEN  NVL(MONCUOAPL,0) = 0 THEN NVL(MONCUOENV,0) END) MONCUONOAPL,'
      +' SUM(NVL(MONRECEFE,0)) MONRECEFE, SUM(NVL(MONRECBCO,0)) MONRECBCO, SUM(NVL(MONRECOTR,0)) MONRECOTR, '
      + 'count(*) REGISTROS, '
      + ' SUM(CASE WHEN NVL(MONCUOENV, 0) > 0 THEN 1 else 0 END) NROENV, '
      + ' SUM(CASE WHEN NVL(MONCUOAPL, 0) > 0 THEN 1 else 0 END) NROCOB '
      +' FROM COB319 A, APO101 B, APO158 C, ASO_EST_GEN_REC D'
      +' WHERE A.COBANO = '+QuotedStr(xperano)+' AND A.COBMES = '+QuotedStr(xpermes)
      +xsqltipaso
      +' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID'
      +' AND B.DPTOID = '+QuotedStr(DM1.cdsReporte.FieldByName('DPTOID').AsString)
      +' AND A.ASOID = D.ASOID AND B.DPTOID = C.DPTOID(+) AND D.PERCOB = '+QuotedStr(xperano+xpermes)
      +' GROUP BY A.ASOTIPID, A.COBANO, A.COBMES, B.UPROID, B.UPAGOID, B.USEID, B.USENOM';
// Fin   SPP_201401_COB  -  Mejorar la Velocidad de la Consulta
   end
   else
   begin
      xperano := seanopro.Text;
      xpermes := DM1.strzero(semespro.Text,2);
      If rgtipo.ItemIndex = 0 Then xsqltipaso := ' AND A.ASOTIPID IN ('+QuotedStr('DO')+','+QuotedStr('CO')+')'; // xsqltipaso := ' AND A.ASOTIPID = '+QuotedStr('DO');
      If rgtipo.ItemIndex = 1 Then xsqltipaso := ' AND A.ASOTIPID = '+QuotedStr('CE');
      If rgtipo.ItemIndex = 2 Then xsqltipaso := '';

// Inicio SPP_201401_COB  -  Mejorar la Velocidad de la Consulta
      xSql := 'SELECT A.ASOTIPID, A.COBANO, A.COBMES, B.UPROID, B.UPAGOID, B.USEID, B.USENOM, SUM(NVL(MONCUOENV,0)) MONCUOENV,'
      + ' SUM(CASE WHEN  NVL(MONCUOAPL,0) > 0 THEN NVL(MONCUOAPL,0) END) MONCUOAPL,'
      + ' SUM(CASE WHEN  NVL(MONCUOAPL,0) = 0 THEN NVL(MONCUOENV,0) END) MONCUONOAPL,'
      + ' CASE WHEN SUM(NVL(MONCUOENV,0))>0 THEN ROUND(SUM(NVL(MONCUOAPL,0)) / SUM(NVL(MONCUOENV,0)) * 100,2) ELSE 0 END EFECTIVIDAD, '
      + ' 0 MONCUONOAPL,'
      + ' 0 MONRECEFE, 0 MONRECBCO, 0 MONRECOTR, count(*) REGISTROS, '
      + ' SUM(CASE WHEN NVL(MONCUOENV, 0) > 0 THEN 1 else 0 END) NROENV, '
      + ' SUM(CASE WHEN NVL(MONCUOAPL, 0) > 0 THEN 1 else 0 END) NROCOB, '
      + ' 0.00 MES_0, 0.00 MES_1, 0.00 MES_2, 0.00 MES_N '
      +' FROM COB319 A, APO101 B, APO158 C '
      +' WHERE A.COBANO = '+QuotedStr(xperano)+' AND A.COBMES = '+QuotedStr(xpermes)
      +xsqltipaso
      +' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID'
      +' AND B.DPTOID = '+QuotedStr(DM1.cdsReporte.FieldByName('DPTOID').AsString)
      +' AND B.DPTOID = C.DPTOID(+) '
      +' GROUP BY A.ASOTIPID, A.COBANO, A.COBMES, B.UPROID, B.UPAGOID, B.USEID, B.USENOM '
      +'ORDER BY B.UPROID, B.UPAGOID, B.USEID, A.ASOTIPID';
// Fin   SPP_201401_COB  -  Mejorar la Velocidad de la Consulta
   end;

// Fin: SPP_201309_COB            : Estadistica de la Cobranza


  DM1.cdsReporte1.Close;
  DM1.cdsReporte1.DataRequest(xSql);
  DM1.cdsReporte1.Open;

  Screen.Cursor:=crDefault;

  If DM1.cdsReporte1.RecordCount = 0 Then
  Begin
    Screen.Cursor := crDefault;
    ShowMessage('MENSAJE : NO SE HA ENCONTRADO LA INFORMACION SOLICITADA!!!');
    Exit;
  End;
  Try
    Festuniges := TFestuniges.Create(Self);
    Festuniges.ShowModal;
  Finally
    Festuniges.Free;
  End;
end;

procedure TFEstEnvCob.FormActivate(Sender: TObject);
begin
// Inicio: SPP_201309_COB            : Estadistica de la Cobranza
  lblEstadistica.Caption := 'ESTADISTICA : '+UpperCase(rgTipoEst.Items.Strings[rgTipoEst.itemindex]);
  lbltipdoc.Caption      := 'TIPO DE SELECCION : '+UpperCase(rgtipo.Items.Strings[rgtipo.itemindex]);
// Fin: SPP_201309_COB            : Estadistica de la Cobranza
  seanopro.Text := Copy(DateToStr(Date),7,4);
  semespro.Text := Copy(DateToStr(Date),4,2);
end;

procedure TFEstEnvCob.btnimprimirClick(Sender: TObject);
begin
// Inicio: SPP_201309_COB            : Estadistica de la Cobranza
  If not DM1.cdsReporte.Active Then Exit;

  If DM1.cdsReporte.RecordCount = 0 Then
  Begin
    Beep;
    Showmessage('No Existen Datos a Imprimir');
    Exit;
  End;
  if rgTipoEst.ItemIndex=0 then
  begin
      pplperiodo.Caption    := 'PERIODO : '+seanopro.Text+'/'+semespro.Text;
      pplimpresopor.Caption := 'Impreso por : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
      ppltipaso.Caption     := 'TIPO DE ASOCIADO : '+DM1.xtipaso;
      pprepxdep.Print;
  end
  else
  begin
      pplperiodo2.Caption    := 'PERIODO : '+seanopro.Text+'/'+semespro.Text;
      pplimpresopor2.Caption := 'Impreso por : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
      ppltipaso2.Caption     := 'TIPO DE ASOCIADO : '+DM1.xtipaso;
      pprRetorno.Print;
  end;
// Fin: SPP_201309_COB            : Estadistica de la Cobranza
end;

// Inicio: SPP_201309_COB            : Estadistica de la Cobranza
Procedure TFEstEnvCob.Proceso_Retorno;
Var xperano, xpermes, xSql, xsqltipaso:String;
    xmoncuoenv, xmoncuoapl:Double;
begin
   xmoncuoenv := 0;
   xmoncuoapl := 0;
   xperano := seanopro.Text;
   xpermes := DM1.strzero(semespro.Text,2);
   If rgtipo.ItemIndex = 0 Then
   Begin
     xsqltipaso  := ' AND ASOTIPID = '+QuotedStr('DO');
     DM1.xtipaso := 'DOCENTES';
   End;
   If rgtipo.ItemIndex = 1 Then
   Begin
     xsqltipaso := ' AND ASOTIPID = '+QuotedStr('CE');
     DM1.xtipaso := 'CESANTES';
   End;
   If rgtipo.ItemIndex = 2 Then
   Begin
     xsqltipaso := '';
     DM1.xtipaso := 'TODOS';
   End;
   Screen.Cursor := crHourGlass;
// Inicio SPP_201401_COB  -  Mejorar la Velocidad de la Consulta
   xSql := 'SELECT C.DPTOID, C.DPTODES, SUM(NVL(MONCUOENV,0)) MONCUOENV, SUM(NVL(MONCUOAPL,0)) MONCUOAPL, '
         +   'ROUND(SUM(NVL(MONCUOAPL,0)) / SUM(NVL(MONCUOENV,0)) * 100,2) EFECTIVIDAD '
   +' FROM COB319 A, APO101 B, APO158 C '
   +' WHERE COBANO = '+QuotedStr(xperano)+' and COBMES = '+QuotedStr(xpermes) + xsqltipaso
   +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+) AND B.DPTOID = C.DPTOID(+)'
   +' GROUP BY C.DPTOID, C.DPTODES'
   +' ORDER BY C.DPTODES';
// Fin  SPP_201401_COB  - Mejorar la Velocidad de la Consulta
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   If DM1.cdsReporte.RecordCount = 0 Then
   Begin
     Screen.Cursor := crDefault;
     ShowMessage('MENSAJE : NO SE HA ENCONTRADO LA INFORMACION SOLICITADA!!!');
     Exit;
   End;

   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.Eof Do
   Begin
     xmoncuoenv := xmoncuoenv + DM1.cdsReporte.FieldByName('MONCUOENV').AsFloat;
     xmoncuoapl := xmoncuoapl + DM1.cdsReporte.FieldByName('MONCUOAPL').AsFloat;
     DM1.cdsReporte.Next;
   End;
   dbgprepri.Selected.Clear;
   dbgprepri.Selected.Add('DPTOID'#9'2'#9'Código~departamento'#9#9);
   dbgprepri.Selected.Add('DPTODES'#9'26'#9'Descripción~de departamento'#9#9);
   dbgprepri.Selected.Add('MONCUOENV'#9'15'#9'Planilla~enviada'#9#9);
   dbgprepri.Selected.Add('MONCUOAPL'#9'15'#9'Planilla~cobrada'#9#9);
   dbgprepri.Selected.Add('EFECTIVIDAD'#9'15'#9'Efectividad~%'#9#9);
   dbgprepri.ApplySelected;
   TNumericField(DM1.cdsReporte.FieldByName('MONCUOENV')).DisplayFormat := '##,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('MONCUOAPL')).DisplayFormat := '##,###,##0.00';
   dbgprepri.ColumnByName('DPTODES').FooterValue := 'TOTALES :';
   dbgprepri.ColumnByName('MONCUOENV').FooterValue := FloatToStrF(xmoncuoenv, ffNumber, 15,2);
   dbgprepri.ColumnByName('MONCUOAPL').FooterValue := FloatToStrF(xmoncuoapl, ffNumber, 15,2);
end;
// Fin: SPP_201309_COB            : Estadistica de la Cobranza


// Inicio: SPP_201309_COB            : Estadistica de la Cobranza
procedure TFEstEnvCob.rgTipoEstClick(Sender: TObject);
begin
  DM1.cdsReporte.Close;
  dbgprepri.Selected.Clear;
  lblEstadistica.Caption     := 'ESTADISTICA : '+UpperCase(rgTipoEst.Items.Strings[rgTipoEst.itemindex]);
end;
// Fin: SPP_201309_COB           : Estadistica de la Cobranza

end.
