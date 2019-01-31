unit COB711;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Buttons, Mant, Db, Wwdatsrc, DBClient, wwclient, ppDB,
  ppDBPipe, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppTypes, ppProd, ppReport, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, fcButton,
  fcImgBtn, fcShapeBtn, ppVar, ppRegion, ppStrtch, ppSubRpt,
  ControlGridDisp, Mask, wwdbedit, Wwdbspin, ppViewr, wwdblook, ppEndUsr,
  TXComp;

type
  TFToolRegCobTel = class(TForm)
    pnlBot: TPanel;
    GroupBox1: TGroupBox;
    speMes: TwwDBSpinEdit;
    speAno: TwwDBSpinEdit;
    edtAsociado: TEdit;
    lblApeMat: TLabel;
    bbtnAceptar: TfcShapeBtn;
    bbtnImprimir: TfcShapeBtn;
    ppdbTel: TppDBPipeline;
    ppRepCobTel: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel39: TppLabel;
    ppLabel36: TppLabel;
    ppLabel32: TppLabel;
    ppLabel35: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    pplblTitulo: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand4: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText12: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppdbProvBco: TppDBText;
    ppDBText1: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel4: TppLabel;
    ppDBCalc5: TppDBCalc;
    pplblEfectividad: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel48: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLine3: TppLine;
    ppLine4: TppLine;
    rgTipAso: TRadioGroup;
    rgEnca: TRadioGroup;
    dblcEnca: TwwDBLookupCombo;
    RGUProceso: TRadioGroup;
    dblcUproceso: TwwDBLookupCombo;
    fcImprimeResumen: TfcShapeBtn;
    pprResumen: TppReport;
    ppdbResumen: TppDBPipeline;
    ppDesigner1: TppDesigner;
    bbtnAceptarResumen: TfcShapeBtn;
    ppHeaderBand2: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    pplblTitulo1: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppSystemVariable6: TppSystemVariable;
    pplblTitulo2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText16: TppDBText;
    ppDBText3: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel26: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppVariable1: TppVariable;
    ExtraOptions1: TExtraOptions;
    procedure bbtnAceptarClick(Sender: TObject);
    procedure bbtnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppRepCobTelPreviewFormCreate(Sender: TObject);
    procedure NotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure rgEncaClick(Sender: TObject);
    procedure RGUProcesoClick(Sender: TObject);
    procedure fcImprimeResumenClick(Sender: TObject);
    procedure pprResumenPreviewFormCreate(Sender: TObject);
    procedure bbtnAceptarResumenClick(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    //grid : TwwDBGrid;
    //procedure OnEditRepAportes (Sender : TObject; MantFields: TFields);
  public
    { Public declarations }
    xSQL : String;
    Mtx2, Mtx1 : TMant;
    procedure OnNoDelete (Sender : TObject; MantFields: TFields);
  end;

var
  FToolRegCobTel: TFToolRegCobTel;
  xMtoCob, xMto : Real;

implementation

uses COB001, COB511, MsgDlgs, COBDM1;

{$R *.DFM}

procedure TFToolRegCobTel.OnNoDelete(Sender: TObject; MantFields: TFields);
begin
   Errormsg(Caption, ' No se Puede Eliminar este Registro ');
end;

procedure TFToolRegCobTel.bbtnAceptarClick(Sender: TObject);
var
   xSQL : String;
begin
   If Length(edtAsociado.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingresar un Apellido', mtInformation, [mbOk], 0);
     Exit;
    end;

   If Length(Trim(edtAsociado.Text)) > 0 Then
   xSQL := ' Select A.UPROID, A.ASOID, A.ASOAPENOM, A.CREANO, A.CREMES, COUNT(A.CRECUOTA) ENVIADOS,'
           +' SUM(A.CREMTO) CREMTO, A.FORPAGOID, B.PROVBCOID,'
           +' Cast(''0'' As Integer) PAGADOS,'
           +' Cast(''0'' As Decimal(15, 2)) CREMTOCOB,'
           +' COUNT(A.CRECUOTA) DIFCUOTAS,'
           +' SUM(A.CREMTO) DIFMONTO,'
           +' Cast(''0'' As Decimal(15,2)) EFECTIVIDAD From CRE302 A, APO102 B'
           +' Where A.ASOAPENOM Like '+QuotedStr(Trim(edtAsociado.Text+'%'))
           +' And A.CREANO ='+QuotedStr(speAno.Text)
           +' And A.CREMES ='+QuotedStr(DM1.strZero(speMes.Text,2))
           +' And A.FORPAGOID ='+QuotedStr('18')
           +' And A.CREINFO ='+QuotedStr('S')
           +' And A.UPROID = B.UPROID'
           +' Group By A.UPROID, A.ASOID, A.ASOAPENOM, A.CREANO, A.CREMES, A.FORPAGOID, B.PROVBCOID';

   FPrincipal.Mtx.UsuarioSQL.Clear;
   FPrincipal.Mtx.FMant.wTabla := 'VWCOBCARTEL';
   FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
   FPrincipal.Mtx.NewQuery;

  //FRepCobCargoTel.Mtx.FMant.cds2.Filter:= ' And C.ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%')) ;
   Screen.Cursor := crDefault;
end;

procedure TFToolRegCobTel.bbtnImprimirClick(Sender: TObject);
var
   x10 : Integer;
begin
   If Length(speAno.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingresar el año', mtInformation, [mbOk], 0);
     speAno.SetFocus;
     Exit;
    end;

   If Length(speMes.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingresar el Mes', mtInformation, [mbOk], 0);
     speMes.SetFocus;
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   xMtoCob := 0;
   xMto    := 0;
//   DM1.cdsReporte.DisableControls;

//Para el CRE302
   If Length(Trim(edtAsociado.Text)) > 0 Then
    begin
     xSQL := 'Select A.UPROID, A.ASOID, A.ASOAPENOM, A.CREANO, A.CREMES, COUNT(A.CRECUOTA) ENVIADOS,'
             +' SUM(A.CREMTO) CREMTO, A.FORPAGOID, B.PROVBCOID,'
             +' Cast(''0'' As Integer) PAGADOS,'
             +' Cast(''0'' As Decimal(15, 2)) CREMTOCOB,'
             +' COUNT(A.CRECUOTA) DIFCUOTAS,'
             +' SUM(A.CREMTO) DIFMONTO,'
             +' Cast(''0'' As Decimal(15,2)) EFECTIVIDAD From CRE302 A, APO102 B'
             +' Where A.ASOAPENOM Like '+QuotedStr(Trim(edtAsociado.Text+'%'))
             +' And A.CREANO ='+QuotedStr(speAno.Text)
             +' And A.CREMES ='+QuotedStr(DM1.strZero(speMes.Text,2))
             +' And A.FORPAGOID ='+QuotedStr('18')
             +' And A.CREINFO ='+QuotedStr('S')
             +' And A.UPROID = B.UPROID'
             +' Group By A.UPROID, A.ASOID, A.ASOAPENOM, A.CREANO, A.CREMES, A.FORPAGOID, B.PROVBCOID';
    end
   Else
    begin
     xSQL := 'Select A.UPROID, A.ASOID, A.ASOAPENOM, A.CREANO, A.CREMES, COUNT(A.CRECUOTA) ENVIADOS,'
             +' SUM(A.CREMTO) CREMTO, A.FORPAGOID, B.PROVBCOID,'
             +' Cast(''0'' As Integer) PAGADOS,'
             +' Cast(''0'' As Decimal(15, 2)) CREMTOCOB,'
             +' COUNT(A.CRECUOTA) DIFCUOTAS,'
             +' SUM(A.CREMTO) DIFMONTO,'
             +' Cast(''0'' As Decimal(15,2)) EFECTIVIDAD From CRE302 A, APO102 B'
             +' Where A.CREANO ='+QuotedStr(speAno.Text)
             +' And A.CREMES ='+QuotedStr(DM1.strZero(speMes.Text,2))
             +' And A.FORPAGOID ='+QuotedStr('18')
             +' And A.CREINFO ='+QuotedStr('S')
             +' And A.UPROID = B.UPROID'
             +' Group By A.UPROID, A.ASOID, A.ASOAPENOM, A.CREANO, A.CREMES, A.FORPAGOID, B.PROVBCOID';
     end;

   DM1.cdsReporte.Filter   := '';
   DM1.cdsReporte.Filtered := False;
   DM1.cdsReporte.IndexFieldNames := '';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.PacketRecords := -1;
   DM1.cdsReporte.Open;

   if DM1.cdsReporte.RecordCount = 0 Then
   begin
     Beep;
     MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
     Screen.Cursor := crDefault;
     Exit;
   end;

//Para el CRE310
   If Length(Trim(edtAsociado.Text)) > 0 Then
    begin
     xSQL := 'Select UPROID, ASOID, ASOAPENOM, CREANO, CREMES, COUNT(CREMTOCOB) PAGADOS,'
            +' SUM(CREMTOCOB) CREMTOCOB, FORPAGOID From CRE310'
            +' Where ASOAPENOM Like '+QuotedStr(Trim(edtAsociado.Text+'%'))
            +' And CREANO = '+QuotedStr(speAno.Text)
            +' And CREMES = '+QuotedStr(DM1.strZero(speMes.Text,2))
            +' And FORPAGOID = '+QuotedStr('18')
            +' AND CREESTID NOT IN (''04'',''13'') '
            +' Group By UPROID, ASOID, ASOAPENOM, CREANO, CREMES, FORPAGOID';
    end
   Else
    begin
     xSQL := 'Select UPROID, ASOID, ASOAPENOM, CREANO, CREMES, COUNT(CREMTOCOB) PAGADOS,'
            +' SUM(CREMTOCOB) CREMTOCOB, FORPAGOID From CRE310'
            +' Where CREANO = '+QuotedStr(speAno.Text)
            +' And CREMES = '+QuotedStr(DM1.strZero(speMes.Text,2))
            +' And FORPAGOID = '+QuotedStr('18')
            +' Group By UPROID, ASOID, ASOAPENOM, CREANO, CREMES, FORPAGOID';
    end;

   DM1.cdsQry2.Filter   := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

//   DM1.cdsReporte.IndexFieldNames := 'UPROID; ASOID; CREANO; CREMES';
   DM1.cdsReporte.IndexFieldNames := 'ASOID; CREANO; CREMES';

   DM1.cdsQry2.First;
   While Not DM1.cdsQry2.EOF do
    begin
     DM1.cdsReporte.SetKey;
//     DM1.cdsReporte.FieldByName('UPROID').AsString := DM1.cdsQry2.FieldByName('UPROID').AsString;
     DM1.cdsReporte.FieldByName('ASOID').AsString  := DM1.cdsQry2.FieldByName('ASOID').AsString;
     DM1.cdsReporte.FieldByName('CREANO').AsString := DM1.cdsQry2.FieldByName('CREANO').AsString;
     DM1.cdsReporte.FieldByName('CREMES').AsString := DM1.cdsQry2.FieldByName('CREMES').AsString;
     If DM1.cdsReporte.GotoKey Then
      begin
       DM1.cdsReporte.Edit;
//       DM1.cdsReporte.FieldByName('PROVBCOID').AsString  := DM1.DisplayDescrip('prvSQL', 'APO102', 'PROVBCOID', 'UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPROID').AsString), 'PROVBCOID');
       DM1.cdsReporte.FieldByName('PAGADOS').AsInteger   := DM1.cdsQry2.FieldByName('PAGADOS').AsInteger;
       DM1.cdsReporte.FieldByName('CREMTOCOB').AsFloat   := DM1.cdsQry2.FieldByName('CREMTOCOB').AsFloat;
       DM1.cdsReporte.FieldByName('DIFCUOTAS').AsInteger := DM1.cdsReporte.FieldByName('ENVIADOS').AsInteger - DM1.cdsQry2.FieldByName('PAGADOS').AsInteger;
       DM1.cdsReporte.FieldByName('DIFMONTO').AsFloat    := DM1.cdsReporte.FieldByName('CREMTO').AsFloat - DM1.cdsQry2.FieldByName('CREMTOCOB').AsFloat;
       DM1.cdsReporte.FieldByName('EFECTIVIDAD').AsFloat := (DM1.cdsQry2.FieldByName('CREMTOCOB').AsFloat*100)/DM1.cdsReporte.FieldByName('CREMTO').AsFloat;
      end;
     DM1.cdsQry2.Next;
    end;

   DM1.cdsReporte.IndexFieldNames := 'PROVBCOID';

   ppRepCobTel.Template.FileName := wRutaRpt +'\CobxUse.rtm';
   ppRepCobTel.Template.LoadFromFile ;
   pplblTitulo.Caption := 'EFECTIVIDAD DE COBRANZAS DEL MES DE '+UpperCase(DM1.NombreMes(speMes.Text))+' DEL AÑO '+(speAno.Text);
   DM1.cdsReporte.EnableControls;
   ppRepCobTel.Print;
   ppRepCobTel.Stop;

   x10 := Self.ComponentCount - 1;
   While x10 > 0 do
    begin
     If Self.Components[x10].ClassName = 'TppGroup' Then
      begin
       Self.Components[x10].Free;
      end;
     x10 := x10 - 1;
    end;
   Screen.Cursor := crDefault;
end;

procedure TFToolRegCobTel.FormCreate(Sender: TObject);
var
   Present: TDateTime;
   Ano, Mes, Dia : Word;
begin
   Present := Now;
   DecodeDate(Present, Ano, Mes, Dia);
   speAno.Text := CurrToStr(Ano);
   speMes.Text := CurrToStr(Mes);
   dblcEnca.Selected.Clear;
   dblcEnca.Selected.Add('PROVBCOID'#9'5'#9'Código'#9'F');
   dblcEnca.Selected.Add('PROVBCODES'#9'20'#9'Descripción'#9'F');

   dblcUproceso.Selected.Clear;
   dblcUproceso.Selected.Add('UPROID'#9'5'#9'Código'#9'F');
   dblcUproceso.Selected.Add('UPRONOM'#9'20'#9'Descripción'#9'F');
   fcImprimeResumen.enabled:=False;
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

procedure TFToolRegCobTel.ppRepCobTelPreviewFormCreate(Sender: TObject);
begin
   ppRepCobTel.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepCobTel.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolRegCobTel.NotInList(Sender: TObject; LookupTable: TDataSet;
  NewValue: String; var Accept: Boolean);
begin
  Accept:=Lookuptable.locate(TwwDBCustomLookupCombo(Sender).Lookupfield,Newvalue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(sender).dropdown;
end;

procedure TFToolRegCobTel.rgEncaClick(Sender: TObject);
begin
  dblcEnca.enabled:=(rgEnca.itemindex=0);
  if not dblcEnca.enabled then dblcEnca.text:='';
end;

procedure TFToolRegCobTel.RGUProcesoClick(Sender: TObject);
begin
  dblcUproceso.enabled:=(rgUProceso.itemindex=0);
  if not dblcUproceso.enabled then dblcUproceso.text:='';
end;

procedure TFToolRegCobTel.fcImprimeResumenClick(Sender: TObject);
var
    x10 : Integer;
    sTitulo:string;
begin
   if DM1.cdsReporte.RecordCount=0 then
   Raise Exception.create('No hay registros para imprimir');
   pprResumen.Template.FileName := wRutaRpt +'\CobxUseResumen.rtm';
   pprResumen.Template.LoadFromFile;
   //sTitulo:='T. Asociado: '+rgTipAso.Items[rgTipAso.itemindex];
   if rgEnca.ItemIndex=0 then
   sTitulo:=sTitulo+' Enca: '+dblcEnca.text;
   if rgUProceso.ItemIndex=0 then
   sTitulo:=sTitulo+'  U. Proceso: '+dblcUProceso.text;
   pplblTitulo1.Caption := 'EFECTIVIDAD DE COBRANZAS DEL MES DE '+UpperCase(DM1.NombreMes(speMes.Text))+' DEL AÑO '+(speAno.Text);
   pplblTitulo2.Caption := sTitulo;
   pprResumen.Print;
//   ppDesigner1.Show;
end;

procedure TFToolRegCobTel.pprResumenPreviewFormCreate(Sender: TObject);
begin
   pprResumen.PreviewForm.WindowState := wsMaximized;
   TppViewer(pprResumen.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolRegCobTel.bbtnAceptarResumenClick(Sender: TObject);
var sTAso,sEnca,sUpro:string;
begin
  sTAso:='';
  if (rgEnca.itemindex=0) AND (dblcEnca.text='') then
  begin
    if dblcEnca.Enabled then
      dblcEnca.SetFocus;
    Raise Exception.Create('Ingrese Enca');
  end;
  if (rgUproceso.itemindex=0) AND (dblcUproceso.text='') then
  begin
    if dblcUproceso.Enabled then
      dblcUproceso.SetFocus;
    Raise Exception.Create('Ingrese U. Proceso');
  end;
  case rgTipAso.itemindex of
    0: sTAso:=' (A.ASOTIPID=''AC'') ';
    1: sTAso:=' (A.ASOTIPID=''CE'') ';
    2: sTAso:=' (A.ASOTIPID=''AC'' OR A.ASOTIPID=''CE'') ';
  end;
  if rgEnca.itemindex=0 then
    sEnca:=' (B.PROVBCOID='+QuotedStr(dblcEnca.text)+') '
  else
    sEnca := '';
  if rgUProceso.itemindex=0 then
    sUpro:=' (A.UPROID='+QuotedStr(dblcUProceso.text)+') '
  else
    sUpro := '';


   If Length(speAno.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingresar el año', mtInformation, [mbOk], 0);
     speAno.SetFocus;
     Exit;
    end;

   If Length(speMes.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingresar el Mes', mtInformation, [mbOk], 0);
     speMes.SetFocus;
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   xMtoCob := 0;
   xMto    := 0;

//Para el CRE302
    xSQL:=' SELECT PROVBCOID,CREANO,CREMES,SUM(ENVIADOS) ENVIADOS, SUM(CREMTO) CREMTO, PAGADOS,CREMTOCOB,DIFCUOTAS, '+
          ' DIFMONTO,EFECTIVIDAD,PROVBCODES FROM ( '+
          ' SELECT B.PROVBCOID,'+QuotedStr(speAno.Text)+' CREANO,'+QuotedStr(DM1.strZero(speMes.Text,2))+' CREMES,SUM(NVL(ENVIADOS,0)) ENVIADOS,SUM(NVL(CREMTO,0)) CREMTO, '+
            ' 0 PAGADOS,0.00 CREMTOCOB,0.00 DIFCUOTAS,0.00 DIFMONTO,0.00 EFECTIVIDAD, '+
            ' ''                                        '' PROVBCODES '+
            ' FROM (SELECT A.CREANO,A.CREMES,A.UPROID,COUNT(1) ENVIADOS, SUM(CRESALDO) CREMTO '+
            ' From CRE404 A Where A.CREANO ='+QuotedStr(speAno.Text)+' And A.CREMES ='+
            QuotedStr(DM1.strZero(speMes.Text,2))+' And A.FORPAGOID =''18'' ';
    If Length(Trim(edtAsociado.Text)) > 0 Then
    xSQL:=xSQL+' AND A.ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));
    if Length(Trim(sTAso))>0 then
    xSQL:=xSQL+' AND '+sTAso;
    xSQL:=xSQL+' GROUP BY A.CREANO,A.CREMES,A.UPROID) A, APO102 B '+
          ' WHERE A.UPROID(+)=B.UPROID AND B.PROVBCOID IS NOT NULL ';                
    if Length(sUpro)>0 then
      xSQL:=xSQL+' AND '+sUpro;
    if Length(sEnca)>0 then
      xSQL:=xSQL+' AND '+sEnca;
    xSQL:=xSQL+' GROUP BY B.PROVBCOID,A.CREANO,A.CREMES '+
           ' ) GROUP BY PROVBCOID,CREANO,CREMES,PAGADOS,CREMTOCOB,DIFCUOTAS, '+
           ' DIFMONTO,EFECTIVIDAD,PROVBCODES ';

   DM1.cdsReporte.Filter   := '';
   DM1.cdsReporte.Filtered := False;
   DM1.cdsReporte.IndexFieldNames := '';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.PacketRecords := -1;
   DM1.cdsReporte.Open;

   if DM1.cdsReporte.RecordCount = 0 Then
   begin
     Beep;
     MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
     Screen.Cursor := crDefault;
     Exit;
   end;
//Para el CRE310


   xSQL:=' SELECT PROVBCOID,CREANO,CREMES,COUNT(PAGADOS) PAGADOS,SUM(CREMTOCOB) CREMTOCOB FROM ( '+
         ' SELECT B.PROVBCOID,A.CREANO, A.CREMES, A.ASOID, COUNT(A.CREMTOCOB) PAGADOS, '+
         ' SUM(A.CREMTOCOB) CREMTOCOB From CRE310 A,APO102 B,COB325 D '+
         ' WHERE A.CREANO='+QuotedStr(speAno.Text)+' AND A.CREMES='+QuotedStr(DM1.strZero(speMes.Text,2))+
         ' AND A.FORPAGOID=''18'' ';
   If Length(Trim(edtAsociado.Text)) > 0 Then
   xSQL:=xSQL+' AND A.ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));
   xSQL:=xSQL+' AND A.UPROID=B.UPROID AND A.CREANO=D.NAANO AND A.CREMES=D.NAMES AND D.NANRO=A.NROOPETMP ';
    if Length(sEnca)>0 then
      xSQL:=xSQL+' AND '+sEnca;
    if Length(sUpro)>0 then
      xSQL:=xSQL+' AND '+sUpro;
   xSQL:=xSQL+' GROUP BY B.PROVBCOID,A.CREANO, A.CREMES,A.ASOID)XX '+
       ' GROUP BY PROVBCOID,CREANO,CREMES ';

   DM1.cdsQry2.Filter   := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   DM1.cdsReporte.DisableControls;
   DM1.cdsReporte.IndexFieldNames := 'PROVBCOID;CREANO; CREMES';
   DM1.cdsReporte.First;
   while not DM1.cdsReporte.EOF do
   begin
     DM1.cdsReporte.Edit;
     //DM1.cdsReporte.FieldByName('DIFCUOTAS').AsFloat:=DM1.cdsReporte.FieldByName('ENVIADOS').AsFloat;
     //DM1.cdsReporte.FieldByName('DIFMONTO').AsFloat:=DM1.cdsReporte.FieldByName('CREMTO').AsFloat;
     DM1.cdsReporte.FieldByName('PROVBCODES').AsString:=DM1.DisplayDescrip('prvSQL','APO213','PROVBCODES','PROVBCOID='+QuotedStr(DM1.cdsReporte.FieldByName('PROVBCOID').AsString),'PROVBCODES');
     DM1.cdsReporte.Post;
     DM1.cdsReporte.Next;
   end;

   DM1.cdsQry2.First;
   While Not DM1.cdsQry2.EOF do
   begin
     DM1.cdsReporte.SetKey;
     DM1.cdsReporte.FieldByName('PROVBCOID').AsString := DM1.cdsQry2.FieldByName('PROVBCOID').AsString;
     DM1.cdsReporte.FieldByName('CREANO').AsString := DM1.cdsQry2.FieldByName('CREANO').AsString;
     DM1.cdsReporte.FieldByName('CREMES').AsString := DM1.cdsQry2.FieldByName('CREMES').AsString;
     If DM1.cdsReporte.GotoKey Then
      begin
       DM1.cdsReporte.Edit;
       DM1.cdsReporte.FieldByName('PAGADOS').AsInteger   := DM1.cdsQry2.FieldByName('PAGADOS').AsInteger;
       DM1.cdsReporte.FieldByName('CREMTOCOB').AsFloat   := DM1.cdsQry2.FieldByName('CREMTOCOB').AsFloat;
       DM1.cdsReporte.FieldByName('DIFCUOTAS').AsInteger := DM1.cdsReporte.FieldByName('ENVIADOS').AsInteger - DM1.cdsQry2.FieldByName('PAGADOS').AsInteger;
       DM1.cdsReporte.FieldByName('DIFMONTO').AsFloat    := DM1.cdsReporte.FieldByName('CREMTO').AsFloat - DM1.cdsQry2.FieldByName('CREMTOCOB').AsFloat;
       TRY
         DM1.cdsReporte.FieldByName('EFECTIVIDAD').AsFloat := (DM1.cdsQry2.FieldByName('CREMTOCOB').AsFloat*100)/DM1.cdsReporte.FieldByName('CREMTO').AsFloat;
       EXCEPT
         DM1.cdsReporte.FieldByName('EFECTIVIDAD').AsFloat := 0.00;
       END;
      end;
     DM1.cdsQry2.Next;
   end;
   DM1.cdsReporte.EnableControls;
   Screen.Cursor := crDefault;
   fcImprimeResumen.enabled:=(DM1.cdsReporte.RecordCount>0);
end;

procedure TFToolRegCobTel.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
   try
     value:=DM1.FRound((ppDBCalc6.Value/ppDBCalc8.value)*100,15,2);
   except
     value:=0;
   end;
end;

end.
