unit COB718;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ppEndUsr,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppProd, ppReport, ppComm,
  ppRelatv, ppCache, ppDB, ppDBPipe, DBCtrls, ppViewr, pptypes, ppParameter;

type
  TFToolIngLotVerApo = class(TForm)
    pnlTool: TPanel;
    sbtnAceptar: TfcShapeBtn;
    bbtnImprime: TfcShapeBtn;
    gbPeriodo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtpDesde: TDateTimePicker;
    dtpHasta: TDateTimePicker;
    RbTipo: TRadioGroup;
    ppData: TppDBPipeline;
    ppVefAportes: TppReport;
    ppDesigner1: TppDesigner;
    ppResVerApor: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLabel30: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc2: TppDBCalc;
    ppLabel14: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel29: TppLabel;
    ppLine5: TppLine;
    fcShapeBtn1: TfcShapeBtn;
    ppResUPago: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine6: TppLine;
    ppLabel36: TppLabel;
    ppDBText19: TppDBText;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine7: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLabel45: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    rdgTipo: TRadioGroup;
    ppVefCredito: TppReport;
    ppResVerCred: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    ppLabel19: TppLabel;
    ppDBText8: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText17: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine4: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel27: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppHeaderBand5: TppHeaderBand;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine11: TppLine;
    ppLabel68: TppLabel;
    ppDBText37: TppDBText;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDetailBand5: TppDetailBand;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppLine12: TppLine;
    ppDBCalc14: TppDBCalc;
    ppLabel77: TppLabel;
    ppDBCalc15: TppDBCalc;
    fcShapeBtn2: TfcShapeBtn;
    ppLabel78: TppLabel;
    ppdbPeriodo: TppDBText;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel93: TppLabel;
    ppDBText14: TppDBText;
    ppLabel31: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel44: TppLabel;
    ppDBText18: TppDBText;
    ppLabel46: TppLabel;
    ppDBText20: TppDBText;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppParameterList1: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine8: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLine9: TppLine;
    ppDBCalc10: TppDBCalc;
    ppLabel59: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppLabel60: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel61: TppLabel;
    ppDBText36: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc12: TppDBCalc;
    ppLabel62: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLabel63: TppLabel;
    ppLine10: TppLine;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnImprimeClick(Sender: TObject);
    procedure ppVefAportesPreviewFormCreate(Sender: TObject);
    procedure ppResVerAporPreviewFormCreate(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ppResUPagoPreviewFormCreate(Sender: TObject);
    procedure ppVefCreditoPreviewFormCreate(Sender: TObject);
    procedure ppResVerCredPreviewFormCreate(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   FToolIngLotVerApo: TFToolIngLotVerApo;
   xSQL : String;

implementation

uses COBDM1, MsgDlgs;

{$R *.DFM}

procedure TFToolIngLotVerApo.FormKeyPress(Sender: TObject; var Key: Char);
begin
	 If Key = #13 Then
    begin
     If Self.ActiveControl Is TDBMemo Then Exit;
     	Key := #0;
     Perform(CM_DialogKey,VK_TAB,0);
    end;
end;

procedure TFToolIngLotVerApo.bbtnImprimeClick(Sender: TObject);
var
   sdesde, shasta,sAnoper,sMesper: String;
   x10 : Integer ;
begin
   sDesde   := QuotedStr(FormatDateTime(wFormatFecha, dtpDesde.DateTime));
   sHasta   := QuotedStr(FormatDateTime(wFormatFecha, dtpHasta.DateTime));
   sAnoper  := QuotedStr(DM1.cdsDetRegGlob.FieldByName('RCOBANO').AsString);
   sMesper  := QuotedStr(DM1.cdsDetRegGlob.FieldByName('RCOBMES').AsString);

  {DM1.cdsReporte.Close;
  DM1.cdsReporte.IndexFieldNames;
  DM1.cdsReporte.Filter:='';}

   Screen.Cursor := CrHourglass;

   If rdgTipo.ItemIndex = 0 Then//APORTES
    begin
     If RbTipo.ItemIndex = 0 Then//DETALLADO
      begin
//       xSQL := 'SELECT * FROM APO301'
       xSQL := 'SELECT ASOID, ASOCODMOD, UPROID, UPAGOID, USEID, USEABR, TRANSNOPE, TRANSFOPE,'
              +' ASOAPENOM, TRANSANO, TRANSMES, TRANSMTO, Cast(''AAAAAA'' As Varchar2(6)) PERIODOAPO,'
              +' Cast(''AAAAAA'' As Varchar2(6)) PERIODOCOB FROM APO301'
              +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
              +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
              +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
              +' ORDER BY UPROID, UPAGOID, USEID';
      end
     else
      If RbTipo.ItemIndex = 1 Then//RESUMIDO
       begin
        xSQL := 'SELECT UPROID, UPAGOID, USEID, USEABR, TRANSNOPE, TRANSFOPE, TRANSANO,'
               +' TRANSMES, COUNT(ASOID) NUM, SUM(TRANSMTO) MONTO, Cast(''AAAAAA'' As Varchar2(6)) PERIODOAPO,'
               +' Cast(''AAAAAA'' As Varchar2(6)) PERIODOCOB'
               +' FROM APO301'
               +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
               +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
               +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
               +' GROUP BY UPROID, UPAGOID, USEID, USEABR, TRANSNOPE, TRANSFOPE, TRANSANO, TRANSMES'
               +' ORDER BY UPROID, UPAGOID, USEID';
       end;

     DM1.cdsReporte.Close;
     ppData.DataSource := DM1.dsReporte;
     DM1.cdsReporte.DataRequest(xSQL);
     DM1.cdsReporte.Open;

     If DM1.cdsReporte.RecordCount = 0 Then
      begin
       Showmessage ('No Hay Información Transferida');
       Screen.Cursor := CrDefault;
       Exit;
      end;

     ppData.DataSource := DM1.dsreporte;

     If RbTipo.ItemIndex = 0 Then
      begin
       ppVefAportes.Template.FileName := wRutaRpt+'\VerifAportes.rtm';
       ppVefAportes.Template.LoadFromFile;
       Screen.Cursor := CrDefault;
       //ppDesigner1.ShowModal;
       ppVefAportes.Print;
       ppVefAportes.Stop;
      end
     else
      If RbTipo.ItemIndex = 1 Then
       begin
        ppResVerApor.Template.FileName := wRutaRpt+'\VerifAporRes.rtm';
        ppResVerApor.Template.LoadFromFile;
        Screen.Cursor := CrDefault;
       //ppDesigner1.ShowModal;
        ppResVerApor.Print;
        ppResVerApor.Stop;
       end;
    end
   else
    If rdgTipo.ItemIndex = 1 Then//CREDITOS
     begin
      If RbTipo.ItemIndex = 0 Then  //DETALLADO
       begin
       {xSQL := 'SELECT * FROM CRE310'
               +' WHERE RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
               +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
               +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
               +' ORDER BY UPROID, UPAGOID, USEID'; }

       //MODIFICACION EN PRUEBA PARA QUE SALGA EN EL REPORTE LOS INGRESOS QUE NO HALLAN SIDO DESCARGADOS EN LOTE PERO
       //SI SE HAN INGRESADO INDIVIDUALMENTE POR INGRESO DE CUOTAS..(RMZ)
        xSql := 'SELECT UPROID,UPAGOID,USEID,ASOID,MAX(ASOAPENOM) ASOAPENOM,SUM(CREMTOCOB) CREMTOCOB,'
                +'MAX(NROOPE) NROOPE,MAX(FOPERAC) FOPERAC,'
                + sMesper+' CREMES,'+sAnoper+' CREANO '
                +'FROM CRE310'
                +' WHERE CREFPAG=' + QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString)
                +' AND  CREDOCPAG='+ QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)
                +' AND FORPAGABR=' + QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)
                +' AND UPROID ='   + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)
                +' AND CREESTID NOT IN (''04'',''13'') '
                +' GROUP BY UPROID,UPAGOID,USEID,ASOID ORDER BY UPROID,UPAGOID,USEID' ;
       end
      else
       If RbTipo.ItemIndex = 1 Then
        begin
   {      xSQL := 'SELECT A.UPROID, A.UPAGOID, A.USEID, B.USEABRE USEABR, A.NROOPE, A.FOPERAC, A.CREANO, A.CREMES, COUNT(A.ASOID) NUM, SUM(A.CREMTOCOB) MONTO'
                +' FROM CRE310 A, APO101 B'
                +' WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
                +' AND A.UPROID  = B.UPROID(+)'
                +' AND A.UPAGOID = B.UPAGOID(+)'
                //'AND A.UPAGOID=B.UPROID(+) '+
                +' AND A.USEID = B.USEID(+)'
                +' GROUP BY A.UPROID, A.UPAGOID, A.USEID, B.USEABRE, A.NROOPE, A.FOPERAC, A.CREANO, A.CREMES'
                +' ORDER BY A.UPROID, A.UPAGOID, A.USEID';  }

       //(SELECT RCOBID,MAX(TO_CHAR(DOCFECHA,'MM')) MES,MAX(TO_CHAR(DOCFECHA,'YYYY')) ANO FROM COB302 WHERE RCOBID  = '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString) GROUP BY RCOBID

       //RMZ
        xSQL := 'SELECT A.UPROID, A.UPAGOID, A.USEID, B.USEABRE USEABR, A.NROOPE, A.FOPERAC, C.CREANO, C.CREMES, COUNT(A.ASOID) NUM, SUM(A.CREMTOCOB) MONTO'
                +' FROM CRE310 A,'
                +' APO101 B, '
                +'(SELECT RCOBID,MAX(TO_CHAR(DOCFECHA,''MM'')) CREMES,MAX(TO_CHAR(DOCFECHA,''YYYY'')) CREANO FROM COB302 WHERE RCOBID  = '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                +  'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                +  ' GROUP BY RCOBID ) C'
                +' WHERE A.RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                +' AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                +' AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
                +' AND A.UPROID  = B.UPROID(+)'
                +' AND A.UPAGOID = B.UPAGOID(+)'
                +' AND A.USEID = B.USEID(+)'
                +' AND A.RCOBID = C.RCOBID '
                +' GROUP BY A.UPROID, A.UPAGOID, A.USEID, B.USEABRE, A.NROOPE, A.FOPERAC, C.CREANO, C.CREMES'
                +' ORDER BY A.UPROID, A.UPAGOID, A.USEID';


        end;

      DM1.cdsReporte.Close;
      ppData.DataSource := DM1.dsReporte;
      DM1.cdsReporte.DataRequest(xSQL);
      DM1.cdsReporte.Open;

      If DM1.cdsReporte.RecordCount = 0 Then
       begin
        Showmessage ('No Hay Información Transferida');
        Screen.Cursor := CrDefault;
        Exit;
       end;

      ppData.DataSource := DM1.dsreporte;

      If RbTipo.ItemIndex = 0 Then
       begin
        ppVefCredito.Template.FileName := wRutaRpt+'\VerifCredito.rtm';
        ppVefCredito.Template.LoadFromFile;
        Screen.Cursor := crDefault;
        //ppDesigner1.ShowModal;
        ppVefCredito.Print;
       // ppVefCredito.Stop;
       end
      else
       If RbTipo.ItemIndex = 1 Then
        begin
         ppResVerCred.Template.FileName := wRutaRpt+'\VerifCredRes.rtm';
         ppResVerCred.Template.LoadFromFile;
         Screen.Cursor := CrDefault;
//      ppDesigner1.ShowModal;
         ppResVerCred.Print;
         ppResVerCred.Stop;
        end;
    end;

   x10 := Self.ComponentCount-1;
	 While x10 >= 0 do
  	begin
	   If Self.Components[ x10 ].ClassName = 'TppGroup' Then
		  begin
		   Self.Components[ x10 ].Free ;
		  end;
		 x10 := x10-1;
	  end;
   ppData.DataSource := nil;
end;

procedure TFToolIngLotVerApo.ppVefAportesPreviewFormCreate(Sender: TObject);
begin
{   ppVefAportes.PreviewForm.ClientHeight := 500;
	 ppVefAportes.PreviewForm.ClientWidth  := 650;
	 TppViewer(ppVefAportes.PreviewForm.Viewer).ZoomSetting := zsPagewidth; }
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;  
end;

procedure TFToolIngLotVerApo.ppResVerAporPreviewFormCreate(Sender: TObject);
begin
{	 ppResVerApor.PreviewForm.ClientHeight := 500;
	 ppResVerApor.PreviewForm.ClientWidth  := 650;
	 TppViewer(ppResVerApor.PreviewForm.Viewer).ZoomSetting := zsPagewidth;}
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolIngLotVerApo.fcShapeBtn1Click(Sender: TObject);
var
   xWhere : String;
   x10 : Integer ;
begin
   If DM1.cdsCobxUse.RecordCount = 0 Then
    begin
     ErrorMsg(Caption, 'No Existe Información a Imprimir');
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   xWhere := '';
   DM1.cdsCobxUse.First;
   While not DM1.cdsCobxUse.Eof do
    begin
     If Length(xWhere) = 0 Then
      xWhere := '(RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
               +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
               +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+')'
     else
      xWhere := xWhere+' OR (RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
               +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
               +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+') ';

     DM1.cdsCobxUse.Next;
    end;

   xSQL := 'SELECT UPROID, UPAGOID, UPAGOABR, TRANSNOPE, TRANSFOPE, TRANSANO, TRANSMES, COUNT(ASOID), SUM(TRANSMTO),'
          +' Cast (''AAAAAA'' As Varchar2(6)) PERIODOAPO, Cast (''AAAAAA'' As Varchar2(6)) PERIODOCOB' 
          +' FROM APO301'
          +' WHERE '+xWhere+' '+
           'GROUP BY UPROID, UPAGOID, UPAGOABR, TRANSNOPE, TRANSFOPE, TRANSANO, TRANSMES'
          +' ORDER BY UPROID, UPAGOID';

   DM1.cdsReporte.Close;
	 ppData.DataSource := DM1.dsReporte;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;

   If DM1.cdsReporte.RecordCount = 0 Then
    begin
     Showmessage ('No Hay Información Transferida');
     Screen.Cursor := crDefault;
     Exit;
    end;

   ppData.DataSource := DM1.dsreporte;

   ppResUPago.Template.FileName := wRutaRpt+'\VerifAporResUPago.rtm';
   ppResUPago.Template.LoadFromFile;
   Screen.Cursor := crDefault;
  //ppDesigner1.ShowModal;
   ppResUPago.Print;
   ppResUPago.Stop;

   x10 := Self.ComponentCount-1;
   While x10 >= 0 do
	  begin
		 If Self.Components[ x10 ].ClassName='TppGroup' Then
		  begin
		  Self.Components[ x10 ].Free ;
		  end;
		 x10 := x10-1;
	  end;
   ppData.DataSource:=nil;
end;

procedure TFToolIngLotVerApo.ppResUPagoPreviewFormCreate(Sender: TObject);
begin
{	ppResUPago.PreviewForm.ClientHeight := 500;
	ppResUPago.PreviewForm.ClientWidth  := 650;
	TppViewer(ppResUPago.PreviewForm.Viewer).ZoomSetting := zsPagewidth;}
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolIngLotVerApo.ppVefCreditoPreviewFormCreate(Sender: TObject);
begin
{   ppVefCredito.PreviewForm.ClientHeight := 500;
   ppVefCredito.PreviewForm.ClientWidth  := 650;
   TppViewer(ppVefCredito.PreviewForm.Viewer).ZoomSetting := zsPagewidth;}
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolIngLotVerApo.ppResVerCredPreviewFormCreate(Sender: TObject);
begin
{	 ppResVerCred.PreviewForm.ClientHeight := 500;
	 ppResVerCred.PreviewForm.ClientWidth  := 650;
	 TppViewer(ppResVerCred.PreviewForm.Viewer).ZoomSetting := zsPagewidth;     }
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolIngLotVerApo.fcShapeBtn2Click(Sender: TObject);
var
   xWhere : String;
   x10 : Integer ;
begin
   If DM1.cdsCobxUse.RecordCount = 0 Then
    begin
     ErrorMsg(Caption, 'No Existe Información a Imprimir');
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   xWhere:='';
   DM1.cdsCobxUse.First;
   While not DM1.cdsCobxUse.Eof do
    {begin
      If Length(xWhere) = 0 Then
        xWhere := '(RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+')'
      else
       xWhere := xWhere+' OR (RCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                +' AND USERCOBID ='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+') ';

      DM1.cdsCobxUse.Next;
    end;}

    //---RMZ ES PRUEBA
    begin
      If Length(xWhere)= 0 Then
         xWhere := '( A.CREFPAG='+ QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString)
                   +' AND A.CREDOCPAG='+ QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)
                   +' AND A.FORPAGABR='+ QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)
                   +' AND A.UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+ ') '
       else
         xWhere := xWhere +'OR ( A.CREFPAG='+ QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsString)
                   +' AND A.CREDOCPAG='+ QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)
                   +' AND A.FORPAGABR='+ QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)
                   +' AND A.UPROID =' + QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+ ') ' ;

      DM1.cdsCobxUse.Next;
    end;

 //RICMZ OJO SE LE CAMBIA FOPERAC POR CREFPAFG


   xSQL := 'SELECT A.UPROID, A.UPAGOID, A.USEID, B.USEABRE USEABR, A.NROOPE, A.CREFPAG FOPERAC, C.CREANO, C.CREMES, COUNT(A.ASOID) NUM, SUM(A.CREMTOCOB) MONTO'
          +' FROM CRE310 A, APO101 B,'
                  +'(SELECT MAX(RCOBMES) CREMES,MAX(RCOBANO) CREANO FROM COB302 WHERE RCOBID  = '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
                  +'AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
                  +' GROUP BY RCOBID ) C'
          +' WHERE '+'('+xWhere+')'+' '+
            'AND A.UPROID = B.UPROID(+) '+
            'AND A.UPAGOID = B.UPAGOID(+) '+
            'AND A.USEID = B.USEID(+) '+
            'AND A.CREESTID<>''13'' '+
            'AND A.CREESTID<>''04'' '+
            'GROUP BY A.UPROID, A.UPAGOID, A.USEID, B.USEABRE, A.NROOPE, A.CREFPAG, C.CREANO, C.CREMES '+
            'ORDER BY A.UPROID, A.UPAGOID, A.USEID';

   DM1.cdsReporte.Close;
	 ppData.DataSource := DM1.dsReporte;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;

   If DM1.cdsReporte.RecordCount = 0 Then
    begin
     Showmessage ('No Hay Información Transferida');
     Screen.Cursor := crDefault;
     Exit;
    end;

   ppData.DataSource := DM1.dsReporte;

   ppResVerCred.Template.FileName := wRutaRpt+'\VerifCredRes.rtm';
   ppResVerCred.Template.LoadFromFile;
   Screen.Cursor := crDefault;
   ppResVerCred.Print;
   ppResVerCred.Stop;

   x10 := Self.ComponentCount-1;
   While x10>=0 do
  	begin
	   If Self.Components[ x10 ].ClassName='TppGroup' Then
		  begin
		   Self.Components[ x10 ].Free ;
		  end;
		 x10:=x10-1;
	  end;
   ppData.DataSource := nil;
end;

procedure TFToolIngLotVerApo.ppDetailBand2BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
            +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString);
   DM1.cdsReporte.Edit;
   DM1.cdsReporte.FieldByName('PERIODOAPO').AsString := DM1.DisplayDescrip('prvSQL', 'COB302', 'RCOBANOAPO||RCOBMESAPO PERIODO, RCOBANO, RCOBMES', xWhere, 'PERIODO');
   DM1.cdsReporte.FieldByName('PERIODOCOB').AsString := DM1.cdsQry.FieldByName('RCOBANO').AsString+DM1.cdsQry.FieldByName('RCOBMES').AsString;
end;

procedure TFToolIngLotVerApo.ppHeaderBand1BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
            +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString);
   DM1.cdsReporte.Edit;
   DM1.cdsReporte.FieldByName('PERIODOAPO').AsString := DM1.DisplayDescrip('prvSQL', 'COB302', 'RCOBANOAPO||RCOBMESAPO PERIODO, RCOBANO, RCOBMES', xWhere, 'PERIODO');
   DM1.cdsReporte.FieldByName('PERIODOCOB').AsString := DM1.cdsQry.FieldByName('RCOBANO').AsString+DM1.cdsQry.FieldByName('RCOBMES').AsString;
end;

procedure TFToolIngLotVerApo.ppDetailBand3BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'RCOBID  ='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
            +' AND DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString);
   DM1.cdsReporte.Edit;
   DM1.cdsReporte.FieldByName('PERIODOAPO').AsString := DM1.DisplayDescrip('prvSQL', 'COB302', 'RCOBANOAPO||RCOBMESAPO PERIODO, RCOBANO, RCOBMES', xWhere, 'PERIODO');
   DM1.cdsReporte.FieldByName('PERIODOCOB').AsString := DM1.cdsQry.FieldByName('RCOBANO').AsString+DM1.cdsQry.FieldByName('RCOBMES').AsString;
end;

procedure TFToolIngLotVerApo.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

end.
