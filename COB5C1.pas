unit COB5C1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, StdCtrls, Mask, wwdbedit, Wwdbspin, fcButton,
  fcImgBtn, fcShapeBtn, ExtCtrls, ppViewr, Grids, Wwdbigrd, Wwdbgrid, ppDB,
  ppDBPipe, ppDBBDE, ppStrtch, ppSubRpt, DBGrids;

type
  TFRepEvalCxC = class(TForm)
    pnlFondo16: TPanel;
    Z2bbtnProceso: TfcShapeBtn;
    ppRepEvalCxC: TppReport;
    GroupBox1: TGroupBox;
    dbseMes: TwwDBSpinEdit;
    dbseAno: TwwDBSpinEdit;
    Label1: TLabel;
    bdepEvalua: TppBDEPipeline;
    Z2bbtnCuadro: TfcShapeBtn;
    lblProceso: TLabel;
    Z2bbtnResumen: TfcShapeBtn;
    Z2bbtnDetalle: TfcShapeBtn;
    bdepCab: TppBDEPipeline;
    bdepDet: TppBDEPipeline;
    ppRepEval: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppImage1: TppImage;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape6: TppShape;
    ppLabel24: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppTitleBand1: TppTitleBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppImage2: TppImage;
    ppLabel26: TppLabel;
    ppLabel7: TppLabel;
    dbtFechaCar1: TppDBText;
    ppDetailBand2: TppDetailBand;
    dbtResuCar1: TppDBText;
    dbtResudesCar1: TppDBText;
    dbtTtalCuoCar1: TppDBText;
    dbtMontoCar1: TppDBText;
    ppLine1: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel36: TppLabel;
    dbcTotalCuoCar1: TppDBCalc;
    dbcMontoCar1: TppDBCalc;
    procedure Z2bbtnProcesoClick(Sender: TObject);
    procedure ppRepEvalCxCPreviewFormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Z2bbtnCuadroClick(Sender: TObject);
    procedure Z2bbtnResumenClick(Sender: TObject);
    procedure Z2bbtnDetalleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepEvalCxC: TFRepEvalCxC;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFRepEvalCxC.Z2bbtnProcesoClick(Sender: TObject);
var
 xMin,xMax,xEstadoP,xEstadoA,xEstidA,xEstidP,xSql : String;
 xMesN,xanoN : Integer;
 xNuevaFecha : String;
 xFechaRepor : TDate;
begin
  xMesN:=0;
  lblProceso.Visible := True;
  lblProceso.Refresh;
  xAnoN := StrtoInt(dbseAno.text);
  xMesN := xMesN + 1;
  If xMesN > 12 then
   begin
    xAnoN := xAnoN + 1;
    xMesN := 1;
   end;
  xNuevaFecha := '01/'+IntToStr(xMesN)+'/'+IntToStr(xAnoN);
  xFechaRepor := StrToDate(xNuevaFecha) - 1;

  // descripciones
  xSql := 'select a.provisid,cuomin,cuomax,provision,resumeid,resumedes'+
          ' from cob112 a,cob113 b where  a.provisid=b.provisid';
  Dm1.cdsReporte.Close;
  Dm1.cdsReporte.DataRequest(xSql);
  Dm1.cdsReporte.Open;

  //** TABLA TONTA
  xSql :='SELECT ''  '' ITEM,''                    '' CUOTAS,0.00 MONTOS,0.00 PROVISIO,0.00 MTOPROV '+
         ',0 TOTALCUO,''  '' RESUID,''                        '' RESUDES,'+
         '''          '' FECHA FROM TGE901 '+
         ' WHERE DUME ='+quotedstr('PER');
  Dm1.cdsQry2.Close;
  Dm1.cdsQry2.DataRequest(xSql);
  Dm1.cdsQry2.Open;
  Dm1.cdsQry2.IndexFieldNames := 'ITEM';

  xEstadoP := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('V'),'ESTDES');
  xEstidP  := DM1.cdsQry.FieldByName('ESTID').AsString;
  xEstadoA := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
  xEstidA  := DM1.cdsQry.FieldByName('ESTID').AsString;

  //*** CALCULO DEL CUADRO Y DEL RESUMEN
  // PARA DEVENGADOS ( NO PAGADOS)
  Dm1.cdsReporte.First;
  While not dm1.cdsReporte.eof do
   begin
     xMin := dm1.cdsReporte.FieldByName('CUOMIN').AsString;
     xMax := dm1.cdsReporte.FieldByName('CUOMAX').AsString;
      //** sql para captar los datos
      xSQL := 'select b.LLAVE,sum(b.aC) TOTALCUOTA,sum(b.ATOTAL) BTOTAL from (select a.TOTAL,sum(a.TOTAL) ATOTAL ,sum(a.ab) AC,''1'' LLAVE'+
              ' from (select credid,count(credid) total,sum(creamort+creinteres+creflat ) ab'+
              ' from cre302 a where (a.creestid = '+quotedstr(xEstidA)+'  ) and'+
              ' ((a.creano <= '+quotedstr(dbseAno.text)+' and a.cremes < '+quotedstr(dbseMes.text)+'))'+
              ' group by credid) a group by TOTAL having TOTAL >= '+xMIN+' and TOTAL <= '+xMax+') b group by LLAVE';
      Dm1.cdsQry1.Close;
      Dm1.cdsQry1.DataRequest(xSql);
      Dm1.cdsQry1.Open;
      Dm1.cdsQry1.First;
      //** inserto en la tabla tonta
      If Dm1.cdsQry1.RecordCount > 0 then
       begin
        Dm1.cdsQry2.Insert;
        Dm1.cdsQry2.FieldByName('ITEM').AsString := dm1.cdsReporte.FieldByName('PROVISID').AsString ;
        Dm1.cdsQry2.FieldByName('CUOTAS').AsString := 'CON '+xMin+' Y '+xMax+' CUOTAS';
        Dm1.cdsQry2.FieldByName('MONTOS').AsFloat := Dm1.cdsQry1.FieldByName('TOTALCUOTA').AsFloat;
        Dm1.cdsQry2.FieldByName('TOTALCUO').AsFloat := Dm1.cdsQry1.FieldByName('BTOTAL').AsFloat;
        Dm1.cdsQry2.FieldByName('FECHA').AsString := DateToStr(xFechaRepor);
        Dm1.cdsQry2.Post;
       end;
    dm1.cdsReporte.Next;
   end;

  // PARA DEVENGADOS ( PARCIALES NO PAGADOS)
  Dm1.cdsReporte.First;
  While not dm1.cdsReporte.eof do
   begin
     xMin := dm1.cdsReporte.FieldByName('CUOMIN').AsString;
     xMax := dm1.cdsReporte.FieldByName('CUOMAX').AsString;
     //** capto los datos
      xSQL := 'select b.LLAVE,sum(b.aC) TOTALCUOTA,sum(b.ATOTAL) BTOTAL from (select a.TOTAL,sum(a.TOTAL) ATOTAL ,sum(a.ab) AC,''1'' LLAVE'+
              ' from (select credid,count(credid) total,sum((creamort+creinteres+creflat)-'+
              ' (CRECAPITAL + CREMTOINT + CREMTOFLAT) ) ab'+
              ' from cre302 a where (a.creestid = '+quotedstr(xEstidA)+'  ) and'+
              ' ((a.creano <= '+quotedstr(dbseAno.text)+' and a.cremes < '+quotedstr(dbseMes.text)+'))'+
              ' group by credid) a group by TOTAL having TOTAL >= '+xMIN+' and TOTAL <= '+xMax+') b group by LLAVE';
      Dm1.cdsQry1.Close;
      Dm1.cdsQry1.DataRequest(xSql);
      Dm1.cdsQry1.Open;
      Dm1.cdsQry1.First;
      //** actualizo tabla tonta
      If Dm1.cdsQry1.RecordCount > 0 then
       begin
        Dm1.cdsQry2.SetKey;
        Dm1.cdsQry2.FieldByName('ITEM').AsString := dm1.cdsReporte.FieldByName('PROVISID').AsString ;
        If dm1.cdsQry2.gotokey then
         begin
          Dm1.cdsQry2.Edit;
          Dm1.cdsQry2.FieldByName('MONTOS').AsFloat := Dm1.cdsQry2.FieldByName('MONTOS').AsFloat +
                                                       Dm1.cdsQry1.FieldByName('TOTALCUOTA').AsFloat;
          Dm1.cdsQry2.FieldByName('TOTALCUO').AsFloat := Dm1.cdsQry2.FieldByName('TOTALCUO').AsFloat +
                                                         Dm1.cdsQry1.FieldByName('BTOTAL').AsFloat;
          Dm1.cdsQry2.FieldByName('FECHA').AsString := DateToStr(xFechaRepor);
         end
        else
         begin
          Dm1.cdsQry2.Insert;
          Dm1.cdsQry2.FieldByName('ITEM').AsString := dm1.cdsReporte.FieldByName('PROVISID').AsString ;
          Dm1.cdsQry2.FieldByName('CUOTAS').AsString := 'CON '+xMin+' Y '+xMax+' CUOTAS';
          Dm1.cdsQry2.FieldByName('MONTOS').AsFloat := Dm1.cdsQry1.FieldByName('TOTALCUOTA').AsFloat;
          Dm1.cdsQry2.FieldByName('TOTALCUO').AsFloat := Dm1.cdsQry2.FieldByName('TOTALCUO').AsFloat +
                                                         Dm1.cdsQry1.FieldByName('BTOTAL').AsFloat;
          Dm1.cdsQry2.FieldByName('FECHA').AsString := DateToStr(xFechaRepor);
         end;
         Dm1.cdsQry2.Post;
       end;
    dm1.cdsReporte.Next;
   end;

  Dm1.cdsReporte.First;
  While not dm1.cdsReporte.eof do
   begin
     Dm1.cdsQry2.SetKey;
     Dm1.cdsQry2.FieldByName('ITEM').AsString := dm1.cdsReporte.FieldByName('PROVISID').AsString ;
     If dm1.cdsQry2.gotokey then
      begin
        Dm1.cdsQry2.Edit;
        Dm1.cdsQry2.FieldByName('PROVISIO').AsFloat := Dm1.cdsReporte.FieldByName('PROVISION').AsFloat;
        Dm1.cdsQry2.FieldByName('MTOPROV').AsFloat := (Dm1.cdsQry2.FieldByName('MONTOS').AsFloat *
                                                     Dm1.cdsReporte.FieldByName('PROVISION').AsFloat) / 100;
        Dm1.cdsQry2.FieldByName('RESUID').AsString := Dm1.cdsReporte.FieldByName('RESUMEID').AsString;
        Dm1.cdsQry2.FieldByName('RESUDES').AsSTring :=Dm1.cdsReporte.FieldByName('RESUMEDES').AsString;
      end;
     Dm1.cdsReporte.next;
   end;

  //*** CALCULO DETALLADO

  //** tipos de creditos
{  xSql := 'SELECT TIPCREID,TIPCREDES FROM TGE110';
  Dm1.cdsTipCreA.cdsSolicitudA.Close;
  Dm1.cdsTipCreA.DataRequest(xSql);
  Dm1.cdsTipCreA.Open;
}
  //** CABECERA DEL DETALLE
  xSql :='SELECT ''  '' TIPCREID,''                              '' TIPCREABR, '+
         '''          '' FECHA,0 TOTALCUO,0.00 MONTO FROM TGE901 '+
         ' WHERE DUME ='+quotedstr('PER');
  Dm1.cdsSolicitud.Close;
  Dm1.cdsSolicitud.DataRequest(xSql);
  Dm1.cdsSolicitud.Open;
  Dm1.cdsSolicitud.IndexFieldNames := 'TIPCREID';

  //** LA PARTE DETALLADA
  xSql :='SELECT ''  '' TIPCREID,''  '' ITEM,0.00 MONTOS,'+
         '0 TOTALCUO,''  '' RESUID,''                        '' RESUDES,'+
         '''          '' FECHA FROM TGE901 '+
         ' WHERE DUME ='+quotedstr('PER');
  Dm1.cdsSolicitudA.Close;
  Dm1.cdsSolicitudA.DataRequest(xSql);
  Dm1.cdsSolicitudA.Open;
  Dm1.cdsSolicitudA.IndexFieldNames := 'TIPCREID;RESUDES';

  //** CDS con la descripciones del Resumen
  Dm1.cdsReporte.First;
  While not dm1.cdsReporte.eof do
   begin
     xMin := dm1.cdsReporte.FieldByName('CUOMIN').AsString;
     xMax := dm1.cdsReporte.FieldByName('CUOMAX').AsString;
     xSql := 'Select b.tipcreid,b.tipcreabr,b.LLAVE,sum(b.aC) TOTALCUOTA,sum(b.ATOTAL) BTOTAL,sysdate'+
             ' from (select a.tipcreid,a.tipcreabr,a.TOTAL,sum(a.TOTAL) ATOTAL , sum(a.ab) AC,''1'' LLAVE'+
             ' from (select tipcreid,tipcreabr,credid,count(credid) total,sum(creamort+creinteres+creflat ) ab'+
             ' from cre302 a where (a.creestid = '+quotedstr(xEstidA)+
             ' ) and ((a.creano <= '+quotedstr(dbseAno.text)+' and a.cremes < '+quotedstr(dbseMes.text)+'))'+
             ' group by tipcreid,tipcreabr,credid) a '+
             ' group by a.tipcreid,a.tipcreabr,TOTAL having TOTAL >= '+xMin+' and TOTAL <= '+xMax+') b'+
             ' group by b.tipcreid,b.tipcreabr,LLAVE';
      Dm1.cdsConcre.Close;
      Dm1.cdsConcre.DataRequest(xSql);
      Dm1.cdsConcre.Open;
      Dm1.cdsConcre.IndexFieldNames:='TIPCREID';
      Dm1.cdsConcre.First;
      //** inserto en el cds de la cabecera
      If Dm1.cdsConcre.RecordCount > 0 then
       begin
        while not dm1.cdsConcre.eof do
         begin
          //** cabecera
          Dm1.cdsSolicitud.SetKey;
          Dm1.cdsSolicitud.FieldByName('TIPCREID').AsString := dm1.cdsConcre.FieldByName('TIPCREID').AsString ;
          If not Dm1.cdsSolicitud.gotokey then
           begin
            Dm1.cdsSolicitud.Insert;
            Dm1.cdsSolicitud.FieldByName('TIPCREID').AsString  := dm1.cdsConcre.FieldByName('TIPCREID').AsString ;
            Dm1.cdsSolicitud.FieldByName('TIPCREABR').AsString := dm1.cdsConcre.FieldByName('TIPCREABR').AsString ;
            Dm1.cdsSolicitud.FieldByName('FECHA').AsString := DateToStr(xFechaRepor);
            Dm1.cdsSolicitud.FieldByName('TOTALCUO').AsFloat := dm1.cdsConcre.FieldByName('BTOTAL').AsFloat ;
            Dm1.cdsSolicitud.FieldByName('MONTO').AsFloat := dm1.cdsConcre.FieldByName('TOTALCUOTA').Asfloat;
           end
          else
           begin
            Dm1.cdsSolicitud.Edit;
            Dm1.cdsSolicitud.FieldByName('TOTALCUO').AsFloat :=
                     Dm1.cdsSolicitud.FieldByName('TOTALCUO').AsFloat +
                     dm1.cdsConcre.FieldByName('BTOTAL').AsFloat;
            Dm1.cdsSolicitud.FieldByName('MONTO').AsFloat :=
                     dm1.cdsConcre.FieldByName('TOTALCUOTA').AsFloat +
                     Dm1.cdsSolicitud.FieldByName('MONTO').AsFloat;
           end;
            Dm1.cdsSolicitud.Post;

          //** detalle
          Dm1.cdsSolicitudA.SetKey;
          Dm1.cdsSolicitudA.FieldByName('TIPCREID').AsString := dm1.cdsConcre.FieldByName('TIPCREID').AsString ;
          Dm1.cdsSolicitudA.FieldByName('RESUDES').AsString  := dm1.cdsReporte.FieldByName('RESUMEDES').AsString ;
          If not Dm1.cdsSolicitudA.gotokey then
           begin
            Dm1.cdsSolicitudA.Insert;
            Dm1.cdsSolicitudA.FieldByName('TIPCREID').AsString  := dm1.cdsConcre.FieldByName('TIPCREID').AsString ;
            Dm1.cdsSolicitudA.FieldByName('ITEM').AsString := dm1.cdsReporte.FieldByName('PROVISID').AsString ;
            Dm1.cdsSolicitudA.FieldByName('RESUID').AsString := dm1.cdsReporte.FieldByName('RESUMEID').AsString ;
            Dm1.cdsSolicitudA.FieldByName('RESUDES').AsString := dm1.cdsReporte.FieldByName('RESUMEDES').AsString ;
            Dm1.cdsSolicitudA.FieldByName('MONTOS').AsFloat := Dm1.cdsConcre.FieldByName('TOTALCUOTA').AsFloat;
            Dm1.cdsSolicitudA.FieldByName('TOTALCUO').AsFloat := Dm1.cdsConcre.FieldByName('BTOTAL').AsFloat;
            Dm1.cdsSolicitudA.FieldByName('FECHA').AsString := DateToStr(xFechaRepor);
           end
          else
           begin
            Dm1.cdsSolicitudA.Edit;
            Dm1.cdsSolicitudA.FieldByName('MONTOS').AsFloat :=
                 Dm1.cdsSolicitudA.FieldByName('MONTOS').AsFloat +
                 Dm1.cdsConcre.FieldByName('TOTALCUOTA').AsFloat;
            Dm1.cdsSolicitudA.FieldByName('TOTALCUO').AsFloat :=
                 Dm1.cdsSolicitudA.FieldByName('TOTALCUO').AsFloat +
                 Dm1.cdsConcre.FieldByName('BTOTAL').AsFloat;
           end;
          Dm1.cdsSolicitudA.Post;
          dm1.cdsConcre.next;
         end;
       end;
    dm1.cdsReporte.Next;
   end;

  Z2bbtnCuadro.enabled := True;
  Z2bbtnResumen.enabled := True;
  Z2bbtnDetalle.enabled := True;
  lblProceso.Visible := False;
  lblProceso.Refresh;
end;

procedure TFRepEvalCxC.ppRepEvalCxCPreviewFormCreate(Sender: TObject);
begin
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

procedure TFRepEvalCxC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFRepEvalCxC.Z2bbtnCuadroClick(Sender: TObject);
var
 x10 : integer;
begin
  ppRepEvalCxC.DataPipeline := bdepEvalua;
  bdepEvalua.DataSource := Dm1.dsQry2;
  ppRepEvalCxC.Template.FileName := wRutaRpt+'\CARTERA.rtm';
  ppRepEvalCxC.Template.LoadFromFile ;
  ppRepEvalCxC.Print;
  ppRepEvalCxC.Stop;
  x10:=Self.ComponentCount-1;
  While x10>=0 Do
  Begin
    If Self.Components[x10].ClassName='TppGroup' Then
    Begin
      Self.Components[x10].Free;
    End;
    x10:=x10-1;
  End;
end;

procedure TFRepEvalCxC.Z2bbtnResumenClick(Sender: TObject);
var
 x10 : integer;
begin
  ppRepEvalCxC.DataPipeline := bdepEvalua;
  bdepEvalua.DataSource := Dm1.dsQry2;
  ppRepEvalCxC.Template.FileName := wRutaRpt+'\CARTERA1.rtm';
  ppRepEvalCxC.Template.LoadFromFile ;
  ppRepEvalCxC.Print;
  ppRepEvalCxC.Stop;
  x10:=Self.ComponentCount-1;
  While x10>=0 Do
  Begin
    If Self.Components[x10].ClassName='TppGroup' Then
    Begin
      Self.Components[x10].Free;
    End;
    x10:=x10-1;
  End;
end;

procedure TFRepEvalCxC.Z2bbtnDetalleClick(Sender: TObject);
var
 x10 : integer;
begin
  Dm1.cdsSolicitud.IndexFieldNames := 'TIPCREID';
  Dm1.cdsSolicitudA.IndexFieldNames := 'TIPCREID';
  bdepCab.DataSource := dm1.dsSolicitud;
  Dm1.cdsSolicitudA.MasterSource := Dm1.dsSolicitud;
  Dm1.cdsSolicitudA.MasterFields := 'TIPCREID';
  bdepDet.DataSource := dm1.dsSolicitudA;
  ppRepEval.Template.FileName := wRutaRpt+'\CARTERA2.rtm';
  ppRepEval.Template.LoadFromFile ;
  ppRepEval.Print;
  ppRepEval.Stop;

  x10:=Self.ComponentCount-1;
  While x10>=0 Do
  Begin
    If Self.Components[x10].ClassName='TppGroup' Then
    Begin
      Self.Components[x10].Free;
    End;
    x10:=x10-1;
  End;

  Dm1.cdsSolicitudA.MasterSource := NIL;
  Dm1.cdsSolicitudA.MasterFields := '';
  Dm1.cdsSolicitudA.IndexFieldNames := '';
  Dm1.cdsSolicitud.IndexFieldNames := '';
end;

end.
