unit APO718;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, ExtCtrls, ComCtrls, ppVar,
  ppPrnabl, ppClass, ppCtrls, ppEndUsr, ppBands, ppProd, ppReport, ppComm,
  ppRelatv, ppCache, ppDB, ppDBPipe, ppViewr, db,	wwdbdatetimepicker,
  wwriched, Mask, wwdbedit, wwdblook, Wwdbspin, Buttons, pptypes,
  Wwdbigrd, Grids, Wwdbgrid, Wwdotdot, Wwdbdlg,wwClient, Wwkeycb, DBCtrls;

type
  TFToolIngLote = class(TForm)
    pnlTool: TPanel;
    sbtnAceptar: TfcShapeBtn;
    bbtnImprime: TfcShapeBtn;
    gbPeriodo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtpDesde: TDateTimePicker;
    dtpHasta: TDateTimePicker;
    ppDBIngUnidaP: TppDBPipeline;
    ppIngUnidaP: TppReport;
    ppDesigner1: TppDesigner;
    RbTipo: TRadioGroup;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    pplblTipo: TppLabel;
    ppLabel5: TppLabel;
    pplblfecha: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
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
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel4: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel8: TppLabel;
    ppDBText2: TppDBText;
    ppLabel9: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    procedure sbtnAceptarClick(Sender: TObject);
    procedure bbtnImprimeClick(Sender: TObject);
    procedure RbTipoClick(Sender: TObject);
    procedure dtpHastaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppIngUnidaPPreviewFormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    xTipoRep : string;
  public
    { Public declarations }
  end;

var
  FToolIngLote: TFToolIngLote;
  xSQL : String;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFToolIngLote.sbtnAceptarClick(Sender: TObject);
begin
  {Screen.Cursor:=crHourGlass;
  xSQL:='SELECT * FROM COB302 '+
        'WHERE REPRID='+QuotedStr(DM1.cdsDetRegGlob.FieldByName('REPRID').AsString)+' '+
        'AND UPROID='+QuotedStr(DM1.cdsDetRegGlob.FieldByName('UPROID').AsString)+' '+
        'AND RCOBANO='+QuotedStr(DM1.cdsDetRegGlob.FieldByName('RCOBANO').AsString)+' '+
        'AND RCOBMES='+QuotedStr(DM1.cdsDetRegGlob.FieldByName('RCOBMES').AsString);

  FDetOper:=TFDetOper.Create(Self);

  FDetOper.dbgDetOper.Selected.Clear;
  FDetOper.dbgDetOper.Selected.Add('RCOBANO'#9'5'#9'Año');
  FDetOper.dbgDetOper.Selected.Add('RCOBMES'#9'3'#9'Mes');
  FDetOper.dbgDetOper.Selected.Add('UPROID'#9'4'#9'Unidad~Proceso');
  FDetOper.dbgDetOper.Selected.Add('BANCOID'#9'2'#9'Id~Banco');
  FDetOper.dbgDetOper.Selected.Add('UPAGOID'#9'3'#9'Unidad~Pago');
  FDetOper.dbgDetOper.Selected.Add('FPAGOID'#9'3'#9'Id Forma~Pago');
  FDetOper.dbgDetOper.Selected.Add('RCOBNOPE'#9'7'#9'Nº~Operac.');
  //FDetOper.dbgDetOper.Selected.Add('RCOBESTADO'#9'10'#9'Estado');
  FDetOper.dbgDetOper.Selected.Add('RCOBFOPE'#9'10'#9'Fecha~Operac.');
  FDetOper.dbgDetOper.Selected.Add('REPRID'#9'5'#9'Id~Repres.');
  FDetOper.dbgDetOper.Selected.Add('REPREPENOM'#9'10'#9'Representante');
  //FDetOper.dbgDetOper.Selected.Add('FORPAGOID'#9'10'#9'Mo7nto');
  FDetOper.dbgDetOper.Selected.Add('TMONID'#9'2'#9'Tipo~Moneda');
  //FDetOper.dbgDetOper.Selected.Add('CPAGOID'#9'10'#9'2Monto');
  FDetOper.dbgDetOper.Selected.Add('CPAGOFECHA'#9'10'#9'Fecha');
  FDetOper.dbgDetOper.Selected.Add('CPAGOMTO'#9'10'#9'Pago~Monto');
  FDetOper.dbgDetOper.Selected.Add('DOCID'#9'10'#9'Id~Docum.');
  FDetOper.dbgDetOper.Selected.Add('DOCFECHA'#9'10'#9'Fecha~Docum.');
  FDetOper.dbgDetOper.Selected.Add('DOCMTO'#9'10'#9'Monto~Docum.');
  //FDetOper.dbgDetOper.Selected.Add('NRODOCDED'#9'10'#9'8Monto');
  FDetOper.dbgDetOper.Selected.Add('USUARIO'#9'10'#9'Usuario');
  FDetOper.dbgDetOper.RefreshDisplay;

  DM1.cdsReporte1.Close;
  DM1.cdsReporte1.DataRequest(xSQL);
  DM1.cdsReporte1.Open;

  FDetOper.ShowModal;
  FDetOper.Free;}
end;

procedure TFToolIngLote.bbtnImprimeClick(Sender: TObject);
var
   xSQL, sDesde, sHasta, xPagoId : String;
   x10 : Integer ;
begin
   sDesde   := QuotedStr(FormatDateTime(wFormatFecha, dtpDesde.DateTime));
	 sHasta   := QuotedStr(FormatDateTime(wFormatFecha, dtpHasta.DateTime));

   DM1.cdsReporte.Close;
   DM1.cdsReporte.IndexFieldNames;
   DM1.cdsReporte.Filter := '';

   Screen.Cursor := crHourGlass;

   DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID', 'FLGPAGAUTDISK =''S''', 'FORPAGOID');
   DM1.cdsQry.First;
   While not DM1.cdsQry.Eof do
    begin
     If Length(xPagoId) = 0 Then
      begin
       xPagoId := ''+DM1.cdsQry.FieldByName('FORPAGOID').AsString+''
      end
     Else
      xPagoId := xPagoId+', '''+DM1.cdsQry.FieldByName('FORPAGOID').AsString+'';
      DM1.cdsQry.Next;
    end;

{   While not DM1.cdsQry.Eof do
    begin
     If Length(xPagoId) = 0 Then
      begin
       xPagoId := ''+DM1.cdsQry.FieldByName('FORPAGOID').AsString+''
      end
     Else
      xPagoId := xPagoId +''', '''+DM1.cdsQry.FieldByName('FORPAGOID').AsString+'';
//      xPagoId := xPagoId+', '''+DM1.cdsQry.FieldByName('FORPAGOID').AsString+'';
      DM1.cdsQry.Next;
    end;}

   If xTipoRep = 'APORTE' Then
    begin
     xSQL := 'SELECT MAX(G.DOCID) DOCID, A.UPAGOID, A.USEID, A.UPROID, A.TRANSFOPE, A.CCBCOID, A.TRANSNOPE, '
            +'A.TRANSMES||''-''||A.TRANSANO PERIODO, NVL(SUM(A.TRANSMTO),0) MONTO, '
            +'A.TRANSANO, A.TRANSMES, '
            +'NVL(SUM(TRANSMTO),0) INGRESO, NVL(SUM(TRANSMTODEV),0) DEVOLUCION, ''APORTE'' TIPO, '
            +'MAX(B.CIADES) CIADES, MAX(C.USEABRE) USENOM, MAX(D.UPAGONOM) UPAGONOM '
            +'FROM APO301 A, COB302 G, TGE101 B, APO101 C, APO103 D '
            +'WHERE A.TRANSID =''APORTE'' AND A.TRANSFOPE >='+sDesde+' AND A.TRANSFOPE <='+sHasta+' '
            +'AND A.FORPAGOID IN ('+QuotedStr(xPagoId)+') '
            +'AND B.CNTCONSOL =''S'' AND A.USEID = C.USEID AND A.UPAGOID = D.UPAGOID '
            +'AND A.UPROID = G.UPROID(+) AND A.UPAGOID = G.UPAGOID(+) AND A.TRANSNOPE = G.RCOBNOPE(+) '
            +'GROUP BY A.UPAGOID, A.USEID, A.UPROID, A.TRANSNOPE, A.CCBCOID, A.TRANSFOPE, A.TRANSANO, A.TRANSMES '
            +'ORDER BY A.UPAGOID, A.USEID, A.UPROID, A.TRANSNOPE, A.CCBCOID, A.TRANSFOPE, A.TRANSANO, A.TRANSMES';
    end
   else
    If xTipoRep = 'PRESTAMO' Then
     begin
      xSQL := 'SELECT MAX(E.DOCID) DOCID, A.USEID, A.UPAGOID, A.UPROID, A.FOPERAC TRANSFOPE, A.CCBCOID, A.NROOPE TRANSNOPE, '
             +'A.CREMES||''-''||A.CREANO PERIODO, NVL(SUM(A.CREMTOCOB),0) MONTO, '
             +'NVL(SUM(A.CREMTOCOB),0) INGRESO, NVL(SUM(A.CREMTODEV),0) DEVOLUCION, ''PRESTAMO'' TIPO, '
             +'MAX(B.CIADES) CIADES, MAX(C.USEABRE) USENOM, MAX(UPAGONOM) UPAGONOM, '' '' FOPERAC, '
             +''' '' NROOPE, '' '' CREANO, '' '' CREMES '
             +'FROM CRE310 A, COB302 E, TGE101 B, APO101 C, APO103 D '
             +'WHERE A.FOPERAC>='+sDesde+' AND A.FOPERAC<='+sHasta+' '
             +'AND B.CNTCONSOL =''S'' AND A.USEID = C.USEID AND A.UPAGOID = D.UPAGOID '
             +'AND A.UPROID = E.UPROID(+) AND A.UPAGOID = E.UPAGOID(+) AND A.NROOPE = E.RCOBNOPE(+) '
             +'AND A.FORPAGOID IN ('+QuotedStr(xPagoId)+') '
             //+'AND A.FORPAGOABR IN (''REG'',''PLA'',''CER'',''TEL'') '
             +'GROUP BY A.UPAGOID, A.USEID, A.UPROID, A.FOPERAC, A.CCBCOID, A.NROOPE, A.CREANO, A.CREMES '
             +'ORDER BY A.UPAGOID, A.USEID, A.UPROID, A.FOPERAC, A.CCBCOID, A.NROOPE, A.CREANO, A.CREMES ';
     end;

{   If xTipoRep = 'APORTE' Then
    begin
     xSQL := 'SELECT MAX(G.DOCID) DOCID, A.UPAGOID, A.USEID, A.UPROID, A.TRANSFOPE, A.CCBCOID, A.TRANSNOPE, '
            +'A.TRANSMES||''-''||A.TRANSANO PERIODO, NVL(SUM(A.TRANSMTO), 0) MONTO, '
            +'A.TRANSANO, A.TRANSMES, '
            +'NVL(SUM(TRANSMTO), 0) INGRESO, NVL(SUM(TRANSMTODEV),0) DEVOLUCION, ''APORTE'' TIPO, '
            +'MAX(B.CIADES) CIADES, MAX(C.USEABRE) USENOM, MAX(D.UPAGONOM) UPAGONOM '
            +'FROM APO301 A, COB302 G, TGE101 B, APO101 C, APO103 D '
            +'WHERE A.TRANSINTID =''APO'' AND A.TRANSFOPE>='+sDesde+' AND A.TRANSFOPE<='+sHasta+' '
//            +'AND A.FORPAGOID IN ('+QuotedStr(xPagoId)+') '
            +'AND A.FORPAGOID IN ('''+xPagoId+''') '
            +'AND B.CNTCONSOL=''S'' AND A.USEID=C.USEID AND A.UPAGOID=D.UPAGOID '
            +'AND A.UPROID=G.UPROID(+) AND A.UPAGOID=G.UPAGOID(+) AND A.TRANSNOPE=G.RCOBNOPE(+) '
            +'GROUP BY A.UPAGOID, A.USEID, A.UPROID, A.TRANSNOPE, A.CCBCOID, A.TRANSFOPE, A.TRANSANO, A.TRANSMES '
            +'ORDER BY A.UPAGOID, A.USEID, A.UPROID, A.TRANSNOPE, A.CCBCOID, A.TRANSFOPE, A.TRANSANO, A.TRANSMES';
    end
   Else
    If xTipoRep = 'PRESTAMO' Then
     begin
      xSQL := 'SELECT MAX(E.DOCID) DOCID, A.USEID, A.UPAGOID, A.UPROID, A.FOPERAC TRANSFOPE, A.CCBCOID, A.NROOPE TRANSNOPE, '
             +'A.CREMES||''-''||A.CREANO PERIODO, NVL(SUM(A.CREMTOCOB),0) MONTO, '
             +'NVL(SUM(A.CREMTOCOB),0) INGRESO, NVL(SUM(A.CREMTODEV),0) DEVOLUCION, ''PRESTAMO'' TIPO, '
             +'MAX(B.CIADES) CIADES, MAX(C.USEABRE) USENOM, MAX(UPAGONOM) UPAGONOM, '' '' FOPERAC, '
             +''' '' NROOPE, '' '' CREANO, '' '' CREMES '
             +'FROM CRE310 A, COB302 E, TGE101 B, APO101 C, APO103 D '
             +'WHERE A.FOPERAC >= '+sDesde+' AND A.FOPERAC <='+sHasta+' '
             +'AND B.CNTCONSOL=''S'' AND A.USEID=C.USEID AND A.UPAGOID=D.UPAGOID '
             +'AND A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+) AND A.NROOPE=E.RCOBNOPE(+) '
//             +'AND A.FORPAGOID IN ('+QuotedStr(xPagoId)+') '
             +'AND A.FORPAGOID IN ('''+xPagoId+''') '
             //+'AND A.FORPAGOABR IN (''REG'',''PLA'',''CER'',''TEL'') '
             +'GROUP BY A.UPAGOID, A.USEID, A.UPROID, A.FOPERAC, A.CCBCOID, A.NROOPE, A.CREANO, A.CREMES '
             +'ORDER BY A.UPAGOID, A.USEID, A.UPROID, A.FOPERAC, A.CCBCOID, A.NROOPE, A.CREANO, A.CREMES ';
     end;}
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;

   If DM1.cdsReporte.RecordCount = 0 Then
    begin
     ShowMessage ('No Existe Información a Mostrar');
     Screen.Cursor := CrDefault;
  	 Exit;
    end;

   ppDBIngUnidaP.DataSource := DM1.dsreporte;
   If xTipoRep = 'APORTE' Then
    ppIngUnidaP.Template.FileName := wRutaRpt+'\IngUniPagoAporte.rtm' ;
   If xTipoRep = 'PRESTAMO' Then
    ppIngUnidaP.Template.FileName := wRutaRpt+'\IngUniPagoPrestamo.rtm' ;
   ppIngUnidaP.Template.LoadFromFile;

   pplblFecha.Caption := 'Del   '+ DateToStr(dtpDesde.DateTime)+'   Al   '+DateToStr(dtpHasta.DateTime);
   If xTipoRep = 'APORTE' Then
    pplblTipo.Caption := 'APORTE';
   If xTipoRep = 'PRESTAMO' Then
    pplblTipo.Caption := 'PRESTAMOS';

   Screen.Cursor := CrDefault;
	//ppDesigner1.ShowModal;
	 ppIngUnidaP.Print;
	 ppIngUnidaP.Stop;

   x10 := Self.ComponentCount-1;
   While x10>=0 do
	  begin
		 If Self.Components[ x10 ].ClassName = 'TppGroup' Then
		  begin
			 Self.Components[ x10 ].Free ;
		  end;
		 x10 := x10 - 1;
	  end;
   ppDBIngUnidaP.DataSource := nil;
end;

procedure TFToolIngLote.RbTipoClick(Sender: TObject);
begin
   If RbTipo.ItemIndex = 0 Then
    xTipoRep := 'APORTE'
   Else
    If RbTipo.ItemIndex = 1 Then
     xTipoRep := 'PRESTAMO';
end;

procedure TFToolIngLote.dtpHastaExit(Sender: TObject);
begin
   If dtpHasta.date < dtpDesde.date Then
    begin
     Showmessage('La Fecha de Término debe ser Mayor o igual a la Fecha de Inicio');
     Exit;
    end;
end;

procedure TFToolIngLote.FormCreate(Sender: TObject);
begin
   RbTipo.ItemIndex := 0;
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

procedure TFToolIngLote.ppIngUnidaPPreviewFormCreate(Sender: TObject);
begin
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolIngLote.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     If Self.ActiveControl Is TDBMemo Then Exit;
  	  Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

end.
