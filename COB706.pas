unit COB706;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, ComCtrls, StdCtrls, ppEndUsr, Mant, 
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppViewr,
  ppTypes, ppBands, ppCtrls, ppVar, ppPrnabl, Mask, wwdbedit, wwdblook, Wwdbdlg, db;

type
  TFToolRegGlobal = class(TForm)
    pnlTool: TPanel;
    bbtnImprime: TfcShapeBtn;
    gbPeriodo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtpDesde: TDateTimePicker;
    dtpHasta: TDateTimePicker;
    Datos: TppDBPipeline;
    ppBDeposito: TppReport;
    ppDesigner1: TppDesigner;
    pnlRepre: TPanel;
    dblcdRepresentante: TwwDBLookupComboDlg;
    lblRepsen: TLabel;
    rdgTipo: TRadioGroup;
    bbtnAceptar: TfcShapeBtn;
    pnlUPago: TPanel;
    lblUPago: TLabel;
    dblcdUPago: TwwDBLookupComboDlg;
    edtRepresentante: TEdit;
    lblUnidadProceso: TLabel;
    dblcdUProceso: TwwDBLookupComboDlg;
    dbeUProceso: TwwDBEdit;
    dbeUPago: TwwDBEdit;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppUsuario: TppLabel;
    ppFecha: TppLabel;
    ppDBText4: TppDBText;
    ppLabel14: TppLabel;
    ppLabel18: TppLabel;
    ppLabel1: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText11: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel17: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel16: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText13: TppDBText;
    ppLabel12: TppLabel;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    rgFecha: TRadioGroup;
    procedure bbtnImprimeClick(Sender: TObject);
    procedure ppBDepositoPreviewFormCreate(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure rdgTipoClick(Sender: TObject);
    procedure dblcdUPagoExit(Sender: TObject);
    procedure dblcdRepresentanteExit(Sender: TObject);
    procedure dblcUProcesoExit(Sender: TObject);
    procedure OnEditRegGlobalCob1(Sender: TObject; MantFields: TFields);
    procedure dblcdUProcesoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolRegGlobal: TFToolRegGlobal;
  sWhere : String;

implementation

uses COBDM1, MsgDlgs, COB430, COB001, COB316;

{$R *.DFM}

procedure TFToolRegGlobal.bbtnImprimeClick(Sender: TObject);
var
   xSQL, sDesde, sHasta : String;
   x10 : Integer;
begin
   sDesde := QuotedStr(FormatDateTime(wFormatFecha, dtpDesde.DateTime));
   sHasta := QuotedStr(FormatDateTime(wFormatFecha, dtpHasta.DateTime));
{
   xSQL := 'SELECT A.RCOBID, A.REPRID, A.REPRAPENOM, A.RCOBMTO, A.CCBCOID, '
          +' B.RCOBANOAPO||RCOBMESAPO PERIOAPO,'
          +' A.RCOBANO||A.RCOBMES PERIODO, A.RCOBNOPE,'
//          +' B.CPAGOMTO, B.CPAGOFECHA, B.UPAGOID,'
          +' B.CPAGOMTO, A.RCOBFOPE CPAGOFECHA, B.UPAGOID,'
          +' C.BANCONOM, D.UPAGONOM, E.MESDESC||''-''||A.RCOBMES MES, F.CIADES'
          +' FROM COB301 A, COB302 B, TGE105 C, APO103 D, TGE181 E, TGE101 F'
          +' WHERE A.RCOBID=B.RCOBID'
          +' AND A.BANCOID=C.BANCOID'
          +' AND B.UPROID=D.UPROID'
          +' AND B.UPAGOID=D.UPAGOID'
          +' AND A.RCOBMES=E.MESIDR'
          +' AND F.CNTCONSOL=''S''';}
   if rgFecha.ItemIndex=0 then
   xSQL := 'SELECT A.RCOBID, A.REPRID, A.REPRAPENOM, A.RCOBMTO, A.CCBCOID, '
          +' B.RCOBANOAPO||RCOBMESAPO PERIOAPO,'
          +' A.RCOBANO||A.RCOBMES PERIODO, A.RCOBNOPE,'
          +' B.CPAGOMTO, B.CPAGOLIQ, B.CPAGOFECHA, B.UPAGOID,'
          +' C.BANCONOM, D.UPAGONOM, E.MESDESC||''-''||A.RCOBMES MES, F.CIADES'
          +' FROM COB301 A, COB302 B, TGE105 C, APO103 D, TGE181 E, TGE101 F'
          +' WHERE A.RCOBID=B.RCOBID'
          +' AND A.BANCOID=C.BANCOID'
          +' AND B.UPROID=D.UPROID'
          +' AND B.UPAGOID=D.UPAGOID'
          +' AND A.RCOBMES=E.MESIDR'
          +' AND F.CNTCONSOL=''S'''
          +' AND To_Date(To_Char(A.FREG, ''DD/MM/YYYY'')) >='+sDesde+' '+
           'AND To_Date(To_Char(A.FREG, ''DD/MM/YYYY'')) <='+sHasta+' '+
           'ORDER BY REPRID, RCOBID, CPAGOFECHA'
   else
   xSQL := 'SELECT A.RCOBID, A.REPRID, A.REPRAPENOM, A.RCOBMTO, A.CCBCOID, '
          +' B.RCOBANOAPO||RCOBMESAPO PERIOAPO,'
          +' A.RCOBANO||A.RCOBMES PERIODO, A.RCOBNOPE,'
          +' B.CPAGOMTO, B.CPAGOLIQ, A.RCOBFOPE CPAGOFECHA, B.UPAGOID,'
          +' C.BANCONOM, D.UPAGONOM, E.MESDESC||''-''||A.RCOBMES MES, F.CIADES'
          +' FROM COB301 A, COB302 B, TGE105 C, APO103 D, TGE181 E, TGE101 F'
          +' WHERE A.RCOBID=B.RCOBID'
          +' AND A.BANCOID=C.BANCOID'
          +' AND B.UPROID=D.UPROID'
          +' AND B.UPAGOID=D.UPAGOID'
          +' AND A.RCOBMES=E.MESIDR'
          +' AND F.CNTCONSOL=''S'''
          +' AND To_Date(To_Char(A.RCOBFOPE, ''DD/MM/YYYY'')) >='+sDesde+' '+
           'AND To_Date(To_Char(A.RCOBFOPE, ''DD/MM/YYYY'')) <='+sHasta+' '+
           'ORDER BY REPRID, RCOBID, CPAGOFECHA';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest( xSQL );
   DM1.cdsReporte.Open;

   Screen.Cursor := crDefault;
   if DM1.cdsReporte.RecordCount = 0 then
   begin
      Information('Modulo de Cobranzas','No Existe Información a Mostrar');
      Exit;
   end;

   Datos.DataSource:=DM1.dsReporte;
   ppBDeposito.Template.FileName := wRutaRpt+'\BoletasDep.rtm' ;
   ppBDeposito.Template.LoadFromFile;

   ppUsuario.Text  := DM1.wUsuario;

   if rgFecha.ItemIndex=0 then
      ppFecha.Caption := 'Por Fecha de Registro : Del '+ DateToStr(dtpDesde.DateTime)+' Al '+DateToStr(dtpHasta.DateTime)
   else
      ppFecha.Caption := 'Por Fecha de Deposito : Del '+ DateToStr(dtpDesde.DateTime)+' Al '+DateToStr(dtpHasta.DateTime);

   ppdesigner1.Report:=ppBDeposito;
   ppDesigner1.ShowModal;
   Datos.DataSource:=nil;

{   ppBDeposito.Print;
   ppBDeposito.Stop;

   x10 := Self.ComponentCount-1;
   While x10 >= 0 do
    begin
     if Self.Components[ x10 ].ClassName='TppGroup' then
      begin
       Self.Components[ x10 ].Free ;
      end;
     x10 := x10-1;
    end;
}
end;

procedure TFToolRegGlobal.ppBDepositoPreviewFormCreate(Sender: TObject);
begin
{   ppBDeposito.PreviewForm.ClientHeight := 500;
   ppBDeposito.PreviewForm.ClientWidth  := 650;
   TppViewer(ppBDeposito.PreviewForm.Viewer).ZoomSetting := zsPagewidth;}
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolRegGlobal.bbtnAceptarClick(Sender: TObject);
begin
   If rdgTipo.ItemIndex = 0 Then
    begin
     If Length(dblcdUProceso.Text) = 0 Then
      begin
       Beep;
       MessageDlg('Ingrese la Unidad de Proceso', mtInformation, [mbOk], 0);
       dblcdUProceso.SetFocus;
       Exit;
      end;
     If Length(dblcdUPago.Text) = 0 Then
      begin
       Beep;
       MessageDlg('Ingrese la Unidad de Pago', mtInformation, [mbOk], 0);
       dblcdUPago.SetFocus;
       Exit;
      end;
    end
   Else
    begin
    If Length(dblcdRepresentante.Text) = 0 Then
     begin
      Beep;
      MessageDlg('Ingrese el Representante', mtInformation, [mbOk], 0);
      dblcdRepresentante.SetFocus;
      Exit;
     end;
    end;

   Screen.Cursor := crHourGlass;
   FRegGlobalCob1  := TFRegGlobalCob1.create(Self);
   MtxD := TMant.Create(Self);
   try
    MtxD.Admin          := DM1.wAdmin;
    MtxD.User           := DM1.wUsuario;
    MtxD.TableName      := 'COB302';
    MtxD.ClientDataSet  := DM1.cdsEjecuta;
    MtxD.DComC          := DM1.DCOM1;
    MtxD.Module         := DM1.wModulo;

    if rdgTipo.ItemIndex = 0 then
     MtxD.Filter        := 'UPROID ='+QuotedStr(dblcdUProceso.Text)+' AND UPAGOID ='+QuotedStr(dblcdUPago.Text)
    else
    if rdgTipo.ItemIndex = 1 then
     MtxD.Filter       := 'REPRID='+QuotedStr(dblcdRepresentante.Text);
    if rdgTipo.ItemIndex = 0 then
     MtxD.Titulo       := 'U. Pago - '+dbeUPago.Text
    else
    if rdgTipo.ItemIndex = 1 then
     MtxD.Titulo     	:= 'Representante - '+edtRepresentante.Text;

    MtxD.OnCreateMant    := Nil;
    MtxD.OnInsert 	 := Nil;
    MtxD.OnEdit 	 := OnEditRegGlobalCob1;
    MtxD.OnDelete 	 := Nil;
    MtxD.OnShow 	 := nil;
    MtxD.ControlGridDisp := FPrincipal.cgdPrincipal;
    MtxD.SectionName	 := 'COBDetRegGlobal';
    MtxD.FileNameIni     := '\SOLCOB.INI';
    //MtxD.UserCheckB.Add('FLAG');
    MtxD.Execute;
   Finally
    MtxD.Free;
    FRegGlobalCob1.Free;
   end;
   Screen.Cursor := crDefault;

  {Try
    FMueDatRep := TFMueDatRep.Create(Self);
    FMueDatRep.ShowModal;
  Finally
    FMueDatRep.Free;
  end;}
end;

procedure TFToolRegGlobal.OnEditRegGlobalCob1(Sender: TObject; MantFields: TFields);
begin
   If DM1.cdsEjecuta.RecordCount = 0 Then
    begin
     ShowMessage('No Existen Registros a Editar');
     Exit;
    end;
   DM1.wModo := 'M';
   FRegGlobalCob1.ShowModal;
end;

procedure TFToolRegGlobal.rdgTipoClick(Sender: TObject);
begin
   if rdgTipo.ItemIndex = 0 then
    begin
     sSQL := 'SELECT * FROM APO102 ORDER BY UPROID';
     DM1.FiltraCDS(DM1.cdsUPro, sSQL);

     pnlUPago.Visible := True;
     dblcdUProceso.SetFocus;
    end
   else
    if rdgTipo.ItemIndex = 1 then
     pnlUPago.Visible := False;
end;

procedure TFToolRegGlobal.dblcdUPagoExit(Sender: TObject);
begin
   sWhere := 'UPAGOID='+QuotedStr(dblcdUPago.Text);
   DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM, UPAGOABR', sWhere, 'UPAGONOM');
   dbeUPago.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
end;

procedure TFToolRegGlobal.dblcdRepresentanteExit(Sender: TObject);
begin
   sWhere := 'REPRID = '+ QuotedStr(dblcdRepresentante.Text);
   edtRepresentante.Text := DM1.DisplayDescrip('prvSQL', 'COB201', 'REPRAPENOM', sWhere, 'REPRAPENOM');
  //xNomRep:=Trim(DM1.DisplayDescrip('prvSQL','COB201','REPRAPENOM',sWhere,'REPRAPENOM'));
end;

procedure TFToolRegGlobal.dblcUProcesoExit(Sender: TObject);
begin
   sWhere := 'UPROID='''+dblcdUProceso.Text+'''';
   dbeUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', sWhere, 'UPRONOM');

   xSQL := 'SELECT UPAGOID, UPAGONOM'
          +' FROM APO103'
          +' WHERE UPROID ='+QuotedStr(dblcdUProceso.Text);

   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
end;

procedure TFToolRegGlobal.dblcdUProcesoExit(Sender: TObject);
begin
   sWhere := 'UPROID ='''+dblcdUProceso.Text+'''';
   dbeUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', sWhere, 'UPRONOM');

   xSQL := 'SELECT UPAGOID, UPAGONOM'
          +' FROM APO103'
          +' WHERE UPROID ='+QuotedStr(dblcdUProceso.Text);

   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   dbeUPago.Clear;

{   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;}
end;

procedure TFToolRegGlobal.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

end.
