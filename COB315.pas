unit COB315;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, fcButton, fcImgBtn, fcShapeBtn, ppDB,
  ppDBPipe, ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache,
  ppTypes, ppComm, ppRelatv, ppProd, ppReport, wwdbdatetimepicker, wwdblook, ppViewr;

type
  TFRangoFechas = class(TForm)
    pnlTool: TPanel;
    Panel2: TPanel;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    dbdtpfecini: TwwDBDateTimePicker;
    dbdtpfecfin: TwwDBDateTimePicker;
    dblcsitrecl: TwwDBLookupCombo;
    edtsitrecl: TEdit;
    ppRepReclamos: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    pplbltitulor: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppImage1: TppImage;
    ppLabel26: TppLabel;
    ppLabel29: TppLabel;
    ppLabel13: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape3: TppShape;
    ppLine1: TppLine;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel36: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppdbReclamos: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    ppField36: TppField;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    ppField44: TppField;
    ppField45: TppField;
    ppField46: TppField;
    ppField47: TppField;
    ppField48: TppField;
    ppField49: TppField;
    ppField50: TppField;
    ppField51: TppField;
    ppField52: TppField;
    ppField53: TppField;
    ppField54: TppField;
    ppField55: TppField;
    ppField56: TppField;
    ppField57: TppField;
    ppField58: TppField;
    ppField59: TppField;
    ppField60: TppField;
    ppField61: TppField;
    ppField62: TppField;
    ppField63: TppField;
    ppField64: TppField;
    lblsitrecl: TLabel;
    ppRepConclusiones: TppReport;
    ppTitleBand2: TppTitleBand;
    ppShape4: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    pplbltituloc: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppImage2: TppImage;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel18: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel21: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppdbConclusiones: TppDBPipeline;
    ppField65: TppField;
    ppField66: TppField;
    ppField67: TppField;
    ppField68: TppField;
    ppField69: TppField;
    ppField70: TppField;
    ppField71: TppField;
    ppField72: TppField;
    ppField73: TppField;
    ppField74: TppField;
    ppField75: TppField;
    ppField76: TppField;
    ppField77: TppField;
    ppField78: TppField;
    ppField79: TppField;
    ppField80: TppField;
    ppField81: TppField;
    ppField82: TppField;
    ppField83: TppField;
    ppField84: TppField;
    ppField85: TppField;
    ppField86: TppField;
    ppField87: TppField;
    ppField88: TppField;
    ppField89: TppField;
    ppField90: TppField;
    ppField91: TppField;
    ppField92: TppField;
    ppField93: TppField;
    ppField94: TppField;
    ppField95: TppField;
    ppField96: TppField;
    ppField97: TppField;
    ppField98: TppField;
    ppField99: TppField;
    ppField100: TppField;
    ppField101: TppField;
    ppField102: TppField;
    ppField103: TppField;
    ppField104: TppField;
    ppField105: TppField;
    ppField106: TppField;
    ppField107: TppField;
    ppField108: TppField;
    ppField109: TppField;
    ppField110: TppField;
    ppField111: TppField;
    ppField112: TppField;
    ppField113: TppField;
    ppField114: TppField;
    ppField115: TppField;
    ppField116: TppField;
    ppField117: TppField;
    ppField118: TppField;
    ppField119: TppField;
    ppField120: TppField;
    ppField121: TppField;
    ppField122: TppField;
    ppField123: TppField;
    ppField124: TppField;
    ppField125: TppField;
    ppField126: TppField;
    ppField127: TppField;
    ppField128: TppField;
    ppLine4: TppLine;
    ppLine5: TppLine;
    procedure sbtnDLabClick(Sender: TObject);
    procedure sbtnDFamClick(Sender: TObject);
    procedure sbtnResolClick(Sender: TObject);
    procedure sbtnEfectividadClick(Sender: TObject);
    procedure sbtnCtaIndClick(Sender: TObject);
    procedure sbtnCtasBancClick(Sender: TObject);
    procedure sbtnSituClick(Sender: TObject);
    procedure sbtnFirmaClick(Sender: TObject);
    procedure sbtnDSocioEClick(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcsitreclExit(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure dbdtpfeciniExit(Sender: TObject);
    procedure dbdtpfecfinExit(Sender: TObject);
    procedure ppRepReclamosPreviewFormCreate(Sender: TObject);
    procedure ppRepConclusionesPreviewFormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    wopcion : string;
  end;

var
  FRangoFechas: TFRangoFechas;

implementation

uses COB206, COBDM1, COB207, COB205, COB208, COB209, COB210, COB2A1, COB2A2,
  COB212, COB001;

{$R *.DFM}

procedure TFRangoFechas.sbtnDLabClick(Sender: TObject);
begin
  try
    FDLab:=TFDLab.Create(Self);
    FDLab.ShowModal;
  finally
    FDLab.Free;
    DM1.cdsDLabo.Close;
  end;
end;

procedure TFRangoFechas.sbtnDFamClick(Sender: TObject);
begin
  try
    FDFam:=TFDFam.Create(Self);
    FDFam.ShowModal;
  finally
    FDFam.Free;
    DM1.cdsDFam.Close;
  end;
end;

procedure TFRangoFechas.sbtnResolClick(Sender: TObject);
begin
  try
    Screen.Cursor:=crHourGlass;
    sSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASONRES, ASOFRES, RESID, RESFVIG, FREG, HREG '+
            'FROM APO205 WHERE ASOID='+DM1.cdsAso.FieldByName('ASOID').AsString;
    DM1.FiltraCDS(DM1.cdsResol,sSQL);

    FResoluciones:=TFResoluciones.Create(Self);
    Screen.Cursor:=crDefault;    
    FResoluciones.ShowModal;
  finally
    FResoluciones.Free;
    DM1.cdsResol.Close;
  end;
end;

procedure TFRangoFechas.sbtnEfectividadClick(Sender: TObject);
var
   xSQL, xSQL1 : string;
   xi : integer;
begin
   xSQL1:=FPrincipal.Mtx.FMant.SQL;

   xi:=pos('WHERE',xSQL1)+6;

   // Datos de Envio
   xSQL:='SELECT '+
         ' CRE302.CREANO, CRE302.CREMES, CRE302.USEID, APO101.USENOM, SUM(CRE302.CREMTO), COUNT(*)'+
         ' FROM CRE302, APO101'+
         ' WHERE'+
         ' APO101.USEID=CRE302.USEID AND'+
         ' '+copy(xSQL1,xi,length(xSQL1)-xi)+
         ' GROUP BY CRE302.CREANO, CRE302.CREMES, CRE302.USEID, APO101.USENOM';
   Dm1.cdsReporte.Close;
   Dm1.cdsReporte.DataRequest(xSQL);
   Dm1.cdsReporte.indexfieldnames:='CREANO;CREMES;USEID;USENOM';
   Dm1.cdsReporte.Open;

   // Datos de Cobranza
   xSQL:='SELECT '+
         ' CRE302.CREANO, CRE302.CREMES, CRE302.USEID,'+
         ' SUM(CRE302.CREMTOCOB),'+
         ' COUNT(DISTINCT CRE302.CREDID||TO_CHAR(CRE302.CRECUOTA))'+
         ' FROM CRE310 CRE302'+
         ' WHERE'+
         ' CRE302.FORPAGOID'+quotedstr('')+' AND'+
         ' '+copy(xSQL1,xi,length(xSQL1)-xi)+
         ' GROUP BY CRE302.CREANO, CRE302.CREMES, CRE302.USEID';
   Dm1.cdsReporte.Close;
   Dm1.cdsReporte.DataRequest(xSQL);
   Dm1.cdsReporte.indexfieldnames:='CREANO;CREMES;USEID;USENOM';
   Dm1.cdsReporte.Open;

end;

procedure TFRangoFechas.sbtnCtaIndClick(Sender: TObject);
begin
 try
    FDCtaInd:=TFDCtaInd.Create(Self);
    FDCtaInd.ShowModal;
  finally
    FDCtaInd.Free;
  end;
end;

procedure TFRangoFechas.sbtnCtasBancClick(Sender: TObject);
begin
 try
    FDCtasBcos:=TFDCtasBcos.Create(Self);
    FDCtasBcos.ShowModal;
  finally
    FDCtasBcos.Free;
  end;
end;

procedure TFRangoFechas.sbtnSituClick(Sender: TObject);
begin
 try
    FDSituaciones:=TFDSituaciones.Create(Self);
    FDSituaciones.ShowModal;
  finally
    FDSituaciones.Free;
  end;
end;

procedure TFRangoFechas.sbtnFirmaClick(Sender: TObject);
begin
 try
    FDFirmaHuella:=TFDFirmaHuella.Create(Self);
    FDFirmaHuella.ShowModal;
  finally
    FDFirmaHuella.Free;
  end;
end;

procedure TFRangoFechas.sbtnDSocioEClick(Sender: TObject);
begin
   try
      FDSocioEco:=TFDSocioEco.Create(Self);
      FDSocioEco.ShowModal;
   finally
      FDSocioEco.Free;
   end;
end;

procedure TFRangoFechas.Z2bbtnCancelClick(Sender: TObject);
begin
   close;
end;

procedure TFRangoFechas.FormActivate(Sender: TObject);
begin
   // Llena cds situación de reclamo
   dblcsitrecl.selected.clear;
   dblcsitrecl.selected.add('RECLSITID'#9'2'#9'Id');
   dblcsitrecl.selected.add('RECLSITDES'#9'30'#9'Descripción');

   dbdtpfecini.date:=0;
   dbdtpfecfin.date:=0;
   dblcsitrecl.text:='';
   edtsitrecl.text:='';   
end;

procedure TFRangoFechas.dblcsitreclExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (activecontrol.parent.name=dblcsitrecl.parent.name) and
      (activecontrol.taborder<dblcsitrecl.taborder) then
      exit;

   DM1.cdssitreclamo.setkey;
   DM1.cdssitreclamo.fieldbyname('RECLSITID').AsString:=dblcsitrecl.text;
   if not DM1.cdssitreclamo.gotokey then
   begin
      showmessage('Situación de Reclamo no es válida');
      edtsitrecl.text:='';
      dblcsitrecl.setfocus;
      exit;
   end;
   edtsitrecl.text:=DM1.cdssitreclamo.fieldbyname('RECLSITDES').AsString;
end;

procedure TFRangoFechas.Z2bbtnAceptarClick(Sender: TObject);
var
   xSQL, xcampo, xcondicion : string;
begin
   Screen.Cursor:=crHourGlass;

   if (wopcion='1') then // Reporte de Reclamos
   begin
      ppRepReclamos.template.FileName := wRutaRpt + '\RepReclamos.rtm' ;
      ppRepReclamos.template.LoadFromFile;

      pplbltitulor.caption:='Reporte Estadístico de Reclamos Recibidos del '+dbdtpfecini.text+' al '+dbdtpfecfin.text;

      if (DM1.cdsSitReclamo.fieldbyname('TIPO').AsString='R') then
      begin
         xcampo:=' RECLFINI';
         xcondicion:='';
      end
      else if (DM1.cdsSitReclamo.fieldbyname('TIPO').AsString='U') then
      begin
         xcampo:=' RECLFFIN';
         xcondicion:=' RECLSITID='+quotedstr(dblcsitrecl.text)+' AND ';
      end
      else if (DM1.cdsSitReclamo.fieldbyname('TIPO').AsString='E') then
      begin
         xcampo:=' RECLFFIN';
         xcondicion:=' RECLSITID='+quotedstr(dblcsitrecl.text)+' AND ';
      end;

      // Cuotas
      xSQL:=' SELECT'+
            xcampo+' FECHA, COUNT(*) CNTCUO'+
            ' FROM COB308'+
            ' WHERE'+
            xcondicion+
            xcampo+' BETWEEN TO_DATE('+quotedstr(formatdatetime(wFormatFecha,dbdtpfecini.date))+') AND TO_DATE('+quotedstr(formatdatetime(wFormatFecha,dbdtpfecfin.date))+')'+
            ' GROUP BY '+xcampo;
      DM1.cdsejecuta.Close;
      DM1.cdsejecuta.indexfieldnames:='FECHA';
      DM1.cdsejecuta.datarequest(xSQL);
      DM1.cdsejecuta.open;

      // Aportes
      xSQL:=' SELECT'+
            ' RECLFINI FECHA,'+
            ' COUNT(*) CNTAPO,'+
            ' 0 CNTCUO,'+
            ' 0 CNTOTR,'+
            ' 0 TOTAL'+
            ' FROM APO303'+
            ' WHERE'+
            ' RECLSITID='+quotedstr(dblcsitrecl.text)+
            ' AND RECLFINI BETWEEN TO_DATE('+quotedstr(formatdatetime(wFormatFecha,dbdtpfecini.date))+') AND TO_DATE('+quotedstr(formatdatetime(wFormatFecha,dbdtpfecfin.date))+')'+
            ' GROUP BY RECLFINI';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.indexfieldnames:='FECHA';
      DM1.cdsReporte.datarequest(xSQL);
      DM1.cdsReporte.open;

      // Acumula contadores de Aporte y Cuota
      dm1.cdsEjecuta.first;
      while not dm1.cdsEjecuta.eof do
      begin
         dm1.cdsReporte.setkey;
         dm1.cdsReporte.fieldbyname('FECHA').AsDateTime:=dm1.cdsEjecuta.fieldbyname('FECHA').AsDateTime;
         if dm1.cdsReporte.gotokey then
         begin
            dm1.cdsReporte.edit;
            dm1.cdsReporte.fieldbyname('CNTCUO').AsInteger:=dm1.cdsReporte.fieldbyname('CNTCUO').AsInteger+
                                                            dm1.cdsEjecuta.fieldbyname('CNTCUO').AsInteger;
            dm1.cdsReporte.post;
         end
         else
         begin
            dm1.cdsReporte.insert;
            dm1.cdsReporte.fieldbyname('FECHA').AsDateTime:=dm1.cdsEjecuta.fieldbyname('FECHA').AsDateTime;
            dm1.cdsReporte.fieldbyname('CNTCUO').AsInteger:=dm1.cdsEjecuta.fieldbyname('CNTCUO').AsInteger;
            dm1.cdsReporte.fieldbyname('CNTAPO').AsInteger:=0;
            dm1.cdsReporte.fieldbyname('CNTOTR').AsInteger:=0;
            dm1.cdsReporte.fieldbyname('TOTAL').AsInteger :=0;
            dm1.cdsReporte.post;
         end;
         dm1.cdsEjecuta.next;
      end;

      // Totaliza Aporte y Cuota
      dm1.cdsReporte.first;
      while not dm1.cdsReporte.eof do
      begin
         dm1.cdsReporte.edit;
         dm1.cdsReporte.fieldbyname('TOTAL').AsInteger:=dm1.cdsReporte.fieldbyname('CNTAPO').AsInteger+
                                                        dm1.cdsReporte.fieldbyname('CNTCUO').AsInteger+
                                                        dm1.cdsReporte.fieldbyname('CNTOTR').AsInteger;
         dm1.cdsReporte.post;

         dm1.cdsReporte.next;
      end;

      Screen.Cursor:=crDefault;

      ppRepReclamos.print;
   end
   else // Reporte de Conclusiones
   begin
      ppRepConclusiones.template.FileName := wRutaRpt + '\RepConclusiones.rtm' ;
      ppRepConclusiones.template.LoadFromFile;

      pplbltituloc.caption:='Reporte Estadístico de Conclusión de Reclamos del '+dbdtpfecini.text+' al '+dbdtpfecfin.text;

      // Cuotas
      xSQL:=' SELECT'+
            ' RECLFFIN-RECLFINI DIAS,'+
            ' SUM(CASE WHEN COBFNP='+quotedstr('S')+' THEN 1 ELSE 0 END) CNTEMP,'+
            ' SUM(CASE WHEN RECLFDEV='+quotedstr('S')+' THEN 1 ELSE 0 END) CNTUSU'+
            ' FROM COB308'+
            ' WHERE'+
            ' RECLFFIN IS NOT NULL'+
            ' AND RECLFFIN BETWEEN TO_DATE('+quotedstr(formatdatetime(wFormatFecha,dbdtpfecini.date))+') AND TO_DATE('+quotedstr(formatdatetime(wFormatFecha,dbdtpfecfin.date))+')'+
            ' GROUP BY RECLFFIN-RECLFINI';
      DM1.cdsejecuta.Close;
      DM1.cdsejecuta.indexfieldnames:='DIAS';
      DM1.cdsejecuta.datarequest(xSQL);
      DM1.cdsejecuta.open;

      // Aportes
      xSQL:=' SELECT'+
            ' RECLFFIN-RECLFINI DIAS,'+
            ' SUM(CASE WHEN APOFNP='+quotedstr('S')+' THEN 1 ELSE 0 END) CNTEMP,'+
            ' SUM(CASE WHEN RECLFDEV='+quotedstr('S')+' THEN 1 ELSE 0 END) CNTUSU,'+
            ' 0 TOTAL'+
            ' FROM APO303'+
            ' WHERE'+
            ' RECLFFIN IS NOT NULL'+
            ' AND RECLFFIN BETWEEN TO_DATE('+quotedstr(formatdatetime(wFormatFecha,dbdtpfecini.date))+') AND TO_DATE('+quotedstr(formatdatetime(wFormatFecha,dbdtpfecfin.date))+')'+
            ' GROUP BY RECLFFIN-RECLFINI';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.indexfieldnames:='DIAS';
      DM1.cdsReporte.datarequest(xSQL);
      DM1.cdsReporte.open;

      // Acumula contadores de Aporte y Cuota
      dm1.cdsEjecuta.first;
      while not dm1.cdsEjecuta.eof do
      begin
         dm1.cdsReporte.setkey;
         dm1.cdsReporte.fieldbyname('DIAS').AsFloat:=dm1.cdsEjecuta.fieldbyname('DIAS').AsFloat;
         if dm1.cdsReporte.gotokey then
         begin
            dm1.cdsReporte.edit;
            dm1.cdsReporte.fieldbyname('CNTEMP').AsInteger:=dm1.cdsReporte.fieldbyname('CNTEMP').AsInteger+
                                                            dm1.cdsEjecuta.fieldbyname('CNTEMP').AsInteger;
            dm1.cdsReporte.fieldbyname('CNTUSU').AsInteger:=dm1.cdsReporte.fieldbyname('CNTUSU').AsInteger+
                                                            dm1.cdsEjecuta.fieldbyname('CNTUSU').AsInteger;
            dm1.cdsReporte.post;
         end
         else
         begin
            dm1.cdsReporte.insert;
            dm1.cdsReporte.fieldbyname('DIAS').AsFloat:=dm1.cdsEjecuta.fieldbyname('DIAS').AsFloat;
            dm1.cdsReporte.fieldbyname('CNTEMP').AsInteger:=dm1.cdsEjecuta.fieldbyname('CNTEMP').AsInteger;
            dm1.cdsReporte.fieldbyname('CNTUSU').AsInteger:=dm1.cdsEjecuta.fieldbyname('CNTUSU').AsInteger;
            dm1.cdsReporte.post;
         end;
         dm1.cdsEjecuta.next;
      end;

      // Totaliza Contadores de Aporte y Cuota
      dm1.cdsReporte.first;
      while not dm1.cdsReporte.eof do
      begin
         dm1.cdsReporte.edit;
         dm1.cdsReporte.fieldbyname('TOTAL').AsInteger:=dm1.cdsReporte.fieldbyname('CNTEMP').AsInteger+
                                                        dm1.cdsReporte.fieldbyname('CNTUSU').AsInteger;
         dm1.cdsReporte.post;

         dm1.cdsReporte.next;
      end;

      Screen.Cursor:=crDefault;

      ppRepConclusiones.print;
   end;
end;

procedure TFRangoFechas.dbdtpfeciniExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (dbdtpfecini.date=0) then
   begin
      showmessage('Fecha de Inicio no es válida');
      dbdtpfecini.setfocus;
      exit;
   end;
end;

procedure TFRangoFechas.dbdtpfecfinExit(Sender: TObject);
begin
   if Z2bbtnCancel.focused then exit;

   if (activecontrol.parent.name=dbdtpfecfin.parent.name) and
      (activecontrol.taborder<dbdtpfecfin.taborder) then
      exit;

   if (dbdtpfecfin.date=0) then
   begin
      showmessage('Fecha Fin no es válida');
      dbdtpfecfin.setfocus;
      exit;
   end;

   if (dbdtpfecfin.date<dbdtpfecini.date) then
   begin
      showmessage('Fecha de Inicio es mayor a Fecha Fin');
      dbdtpfecini.setfocus;
      exit;
   end;
end;

procedure TFRangoFechas.ppRepReclamosPreviewFormCreate(Sender: TObject);
begin
   ppRepReclamos.PreviewForm.WindowState:=WsMaximized;
   TppViewer(ppRepReclamos.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFRangoFechas.ppRepConclusionesPreviewFormCreate(
  Sender: TObject);
begin
   ppRepConclusiones.PreviewForm.WindowState:=WsMaximized;
   TppViewer(ppRepConclusiones.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFRangoFechas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsEjecuta.indexfieldnames:='';
end;

end.
