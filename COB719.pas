unit COB719;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn,
  Mask, wwdbedit, Wwdbspin, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppTypes, ppCache, ppDB, ppDBPipe, wwdblook, ppBands, ppCtrls, ppPrnabl, ppVar,
  Grids, Wwdbigrd, Wwdbgrid, ppViewr;

type
  TFToolCtaxCobxMes = class(TForm)
    pnlBot: TPanel;
    gbPeriodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    dblcUProId: TwwDBLookupCombo;
    ppdbRepCtaxCobxMes: TppDBPipeline;
    ppRepCtaxCobxMes: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText5: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel22: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBText13: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    dbeUPro: TwwDBEdit;
    speMes: TwwDBSpinEdit;
    dbeMes: TwwDBEdit;
    speAno: TwwDBSpinEdit;
    bbtnRep: TfcShapeBtn;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    pplblUPro: TppLabel;
    procedure dblcUProIdExit(Sender: TObject);
    procedure speMesExit(Sender: TObject);
    procedure bbtnRepClick(Sender: TObject);
    procedure ppRepCtaxCobxMesPreviewFormCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlBotClick(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolCtaxCobxMes: TFToolCtaxCobxMes;

implementation

uses COBDM1, COB001;

{$R *.DFM}


procedure TFToolCtaxCobxMes.dblcUProIdExit(Sender: TObject);
var
  xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(dblcUProId.Text);
   dbeUPro.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
end;

procedure TFToolCtaxCobxMes.speMesExit(Sender: TObject);
begin
   dbeMes.Text := DM1.NombreMes(speMes.Text);
end;

procedure TFToolCtaxCobxMes.bbtnRepClick(Sender: TObject);
var
   xSQL, Fecha : String;
   x10 : Integer;
begin
   If Length(dblcUProId.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese la Unidad de Proceso', mtInformation, [mbOk], 0);
     dblcUProId.SetFocus;
     Exit;
    end;

   If Length(speMes.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese el Mes', mtInformation, [mbOk], 0);
     speMes.SetFocus;
     Exit;
    end;

   If Length(speAno.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese el Año', mtInformation, [mbOk], 0);
     speAno.SetFocus;
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   dblcUProIdExit(Sender);
   speMesExit(Sender);

   Fecha := (dbeMes.Text)+'/'+(speAno.Text);

   DM1.cdsReporte.DisableControls;
   xSQL := 'SELECT B.ASOID ASOID, B.UPROID UPROID, MAX(B.USEID),  SUM(B.CUOTA_DEV), SUM(B.PAGO_DEV), SUM(SALDO_DEV) SALDO_DEV, SUM(B.PARCIALES), MAX(B.CREESTID) CREESTID,'
          +' SUM(CONTDEV) CONTDEV, B.CIADES, MAX(B.USENOM), B.TIPCREID, B.TIPCREDES, MAX(CREANO) CREANO, MAX(CREMES) CREMES'
          +' FROM ( SELECT CRE302.ASOID, CRE302.UPROID, CRE302.USEID, CRE302.TIPCREID, CRE302.CREESTID,'
          +' CASE WHEN To_Number(To_Char(CREFVEN, ''MM'')) <= '+speMes.Text
          +'      And  To_Number(To_Char(CREFVEN, ''YYYY'')) <= '+speAno.Text
          +' THEN (CREAMORT + CREINTERES + CREFLAT) ELSE 0 end CUOTA_DEV,'
          +' CASE WHEN To_Number(To_Char(CREFVEN, ''MM'')) <= '+speMes.Text
          +'      And  To_Number(To_Char(CREFVEN, ''YYYY'')) <= '+speAno.Text
          +' THEN (CRECAPITAL + CREMTOINT + CREMTOFLAT)  ELSE 0 end PAGO_DEV,'
          +' CASE WHEN To_Number(To_Char(CREFVEN, ''MM'')) <= '+speMes.Text
          +'      And  To_Number(To_Char(CREFVEN, ''YYYY'')) <= '+speAno.Text
          +' THEN ((CREAMORT + CREINTERES + CREFLAT ) - (CRECAPITAL + CREMTOINT + CREMTOFLAT)) ELSE 0 end SALDO_DEV,'
          +' CASE WHEN To_Number(To_Char(CREFVEN, ''MM'')) <= '+speMes.Text
          +'      And  To_Number(To_Char(CREFVEN, ''YYYY'')) <= '+speAno.Text
          +' THEN 1 ELSE 0 end CONTDEV,'
          +' CASE WHEN To_Number(To_Char(CREFVEN, ''MM'')) <= '+speMes.Text
          +'      And  To_Number(To_Char(CREFVEN, ''YYYY'')) <= '+speAno.Text
          +' AND CREESTID =''27'' THEN (CREMTO-CREMTOCOB) ELSE 0 end PARCIALES,'
          +' CIADES, TIPCREDES, USENOM, CREANO, CREMES'
          +' FROM CRE302, TGE101 , CRE110, APO101'
          +' WHERE (CRE302.CREESTID = ''11'' OR CRE302.CREESTID = ''27'')'
          +' AND CRE302.UPROID='+QuotedStr(dblcUProId.Text)
          +' AND CRE302.CIAID = TGE101.CIAID'
          +' AND CRE302.TIPCREID = CRE110.TIPCREID'
          +' AND CRE302.USEID = APO101.USEID'
          +' AND (To_Number(To_Char(CREFVEN, ''MM'')) <='+speMes.Text
          +' And To_Number(To_Char(CREFVEN, ''YYYY'')) <='+speAno.Text+')'
          +' ) B'
          +' GROUP BY UPROID, TIPCREID, TIPCREDES, ASOID, CIADES';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   xSQL := 'SELECT B.ASOID ASOID, B.UPROID, MAX(B.USEID), MAX(B.CREESTID) CREESTID,'
          +' SUM(CUOTA_DIF), SUM(PAGO_DIF), B.TIPCREID, B.TIPCREDES, SUM(SALDO_DIF) SALDO_DIF,'
          +' SUM(CONTDIF) CONTDIF, B.CIADES, MAX(B.USENOM)'
          +' FROM ( SELECT CRE302.ASOID, CRE302.UPROID, CRE302.USEID, CRE302.TIPCREID, CRE302.CREESTID,'
          +' CASE WHEN To_Number(To_Char(CREFVEN, ''MM'')) <= '+speMes.Text
          +'      And  To_Number(To_Char(CREFVEN, ''YYYY'')) <= '+speAno.Text
          +' THEN  (CREAMORT  +CREINTERES +CREFLAT)     ELSE 0 end CUOTA_DIF,'
          +' CASE WHEN To_Number(To_Char(CREFVEN, ''MM'')) <= '+speMes.Text
          +'      And  To_Number(To_Char(CREFVEN, ''YYYY'')) <= '+speAno.Text
          +' THEN  (CRECAPITAL+CREMTOINT+CREMTOFLAT)  ELSE 0 end PAGO_DIF,'
          +' CASE WHEN To_Number(To_Char(CREFVEN, ''MM'')) <= '+speMes.Text
          +'      And  To_Number(To_Char(CREFVEN, ''YYYY'')) <= '+speAno.Text
          +' THEN  1 ELSE 0 end CONTDIF,'
          +' CASE WHEN To_Number(To_Char(CREFVEN, ''MM'')) <= '+speMes.Text
          +'      And  To_Number(To_Char(CREFVEN, ''YYYY'')) <= '+speAno.Text
          +' THEN ((CREAMORT + CREINTERES + CREFLAT )-(CRECAPITAL + CREMTOINT + CREMTOFLAT)) ELSE 0 end SALDO_DIF,'
          +' CIADES, TIPCREDES, USENOM'
          +' FROM CRE302, TGE101 , CRE110, APO101'
          +' WHERE   (CRE302.CREESTID=''11'' OR CRE302.CREESTID=''27'') AND'
          +' CRE302.UPROID ='+QuotedStr(dblcUProId.Text)+' AND CRE302.CIAID = TGE101.CIAID AND  CRE302.TIPCREID = CRE110.TIPCREID AND'
          +' CRE302.USEID =APO101.USEID'
          +' AND (To_Number(To_Char(CREFVEN, ''MM'')) <='+speMes.Text
          +' And To_Number(To_Char(CREFVEN, ''YYYY'')) <='+speAno.Text+')'
          +' ) B'
          +' GROUP BY UPROID, TIPCREID, TIPCREDES, ASOID, CIADES';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   xSQL := 'Select Cast(''AAAA'' As Varchar2(40)) CIADES,'
          +' Cast(''AAAA'' As Varchar2(10)) ASOID,'
          +' Cast(''AAAA'' As Varchar2(6)) UPROID,'
          +' Cast(''AAAA'' As Varchar2(6)) TIPCREID,'
          +' Cast(''AAAA'' As Varchar2(50)) TIPCREDES,'
          +' Cast(''9999'' As Number(15,2)) NUMDEV,'
          +' Cast(''9999'' As Number(15,2)) MTODEV,'
          +' Cast(''9999'' As Number(15,2)) NUMDIF,'
          +' Cast(''9999'' As Number(15,2)) MTODIF,'
          +' Cast(''9999'' As Number(15,2)) NUM,'
          +' Cast(''9999'' As Number(15,2)) MTO'
          +' From TGE901';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.PacketRecords := -1;   
   DM1.cdsReporte.Open;
   DM1.cdsReporte.Delete;
   FPrincipal.Mtx.UsuarioSQL.Clear;
   FPrincipal.Mtx.FMant.wTabla := 'VWCOBCTAXCOBXAN';
   FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
   FPrincipal.Mtx.NewQuery;

   DM1.cdsQry.First;
   While Not DM1.cdsQry.Eof do
    begin
     DM1.cdsReporte.Insert;
     DM1.cdsReporte.FieldByName('CIADES').AsString    := DM1.cdsQry.FieldByName('CIADES').AsString;
     DM1.cdsReporte.FieldByName('ASOID').AsString     := DM1.cdsQry.FieldByName('ASOID').AsString;
     DM1.cdsReporte.FieldByName('UPROID').AsString    := DM1.cdsQry.FieldByName('UPROID').AsString;
     DM1.cdsReporte.FieldByName('TIPCREID').AsString  := DM1.cdsQry.FieldByName('TIPCREID').AsString;
     DM1.cdsReporte.FieldByName('TIPCREDES').AsString := DM1.cdsQry.FieldByName('TIPCREDES').AsString;
     DM1.cdsReporte.FieldByName('NUMDEV').AsInteger   := DM1.cdsQry.FieldByName('CONTDEV').AsInteger;
     DM1.cdsReporte.FieldByName('MTODEV').AsFloat     := DM1.cdsQry.FieldByName('SALDO_DEV').AsFloat;
     DM1.cdsReporte.FieldByName('NUMDIF').AsInteger   := 0;
     DM1.cdsReporte.FieldByName('MTODIF').AsFloat     := 0;
     DM1.cdsReporte.Post;
     DM1.cdsQry.Next;
    end;

   DM1.cdsReporte.IndexFieldNames := 'ASOID; TIPCREID';

   DM1.cdsQry2.First;
   While Not DM1.cdsQry2.Eof do
    begin
     DM1.cdsReporte.SetKey;
     DM1.cdsReporte.FieldByName('ASOID').AsString    := DM1.cdsQry2.FieldByName('ASOID').AsString;
     DM1.cdsReporte.FieldByName('TIPCREID').AsString := DM1.cdsQry2.FieldByName('TIPCREID').AsString;
     If DM1.cdsReporte.GotoKey THEN
      begin
       DM1.cdsReporte.Edit;
       DM1.cdsReporte.FieldByName('CIADES').AsString    := DM1.cdsQry2.FieldByName('CIADES').AsString;
       DM1.cdsReporte.FieldByName('ASOID').AsString     := DM1.cdsQry2.FieldByName('ASOID').AsString;
       DM1.cdsReporte.FieldByName('UPROID').AsString    := DM1.cdsQry2.FieldByName('UPROID').AsString;
       DM1.cdsReporte.FieldByName('TIPCREID').AsString  := DM1.cdsQry2.FieldByName('TIPCREID').AsString;
       DM1.cdsReporte.FieldByName('TIPCREDES').AsString := DM1.cdsQry2.FieldByName('TIPCREDES').AsString;
       DM1.cdsReporte.FieldByName('NUMDIF').AsString    := DM1.cdsQry2.FieldByName('CONTDIF').AsString;
       DM1.cdsReporte.FieldByName('MTODIF').AsString    := DM1.cdsQry2.FieldByName('SALDO_DIF').AsString;
       DM1.cdsReporte.Post;
      end;
     DM1.cdsQry2.Next;
    end;

   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.Eof do
    begin
     DM1.cdsReporte.Edit;
     DM1.cdsReporte.FieldByName('NUM').AsFloat := ((DM1.cdsReporte.FieldByName('NUMDEV').AsFloat) + DM1.cdsReporte.FieldByName('NUMDIF').AsFloat);
     DM1.cdsReporte.FieldByName('MTO').AsFloat := ((DM1.cdsReporte.FieldByName('MTODEV').AsFloat) + DM1.cdsReporte.FieldByName('MTODIF').AsFloat);
     DM1.cdsReporte.Post;
     DM1.cdsReporte.Next;
    end;

   DM1.cdsReporte.IndexFieldNames := 'TIPCREID';
   DM1.cdsReporte.First;

   ppDBRepCtaxCobxMes.DataSource := DM1.dsReporte;
   ppRepCtaxCobxMes.Template.FileName := wRutaRpt +'\CtaxCobxMes.rtm';
   ppRepCtaxCobxMes.Template.LoadFromFile ;
   ppLabel20.Caption := 'CUENTAS POR COBRAR AL MES DE '+dbeMes.Text+' DEL  AÑO '+(speAno.Text);

   DM1.cdsReporte.EnableControls;
   ppRepCtaxCobxMes.Print;
   ppRepCtaxCobxMes.Stop;

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

procedure TFToolCtaxCobxMes.ppRepCtaxCobxMesPreviewFormCreate(
  Sender: TObject);
begin
   ppRepCtaxCobxMes.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepCtaxCobxMes.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolCtaxCobxMes.FormCreate(Sender: TObject);
var
   Present: TDateTime;
   Ano, Mes, Dia : Word;
begin
   Present := Now;
   DecodeDate(Present, Ano, Mes, Dia);
   speAno.Text := CurrToStr(Ano);
   speMes.Text := CurrToStr(Mes);
   speMesExit(Sender);
end;

procedure TFToolCtaxCobxMes.pnlBotClick(Sender: TObject);
begin
   If Length(speMes.Text) > 0 Then
    begin
     dblcUProIdExit(Sender);
     speMesExit(Sender);
    end;
end;

procedure TFToolCtaxCobxMes.ppHeaderBand2BeforePrint(Sender: TObject);
begin
   pplblUPro.Caption := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', 'UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPROID').AsString), 'UPRONOM');
end;

end.


