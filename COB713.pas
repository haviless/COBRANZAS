unit COB713;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, Buttons,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppTypes, ppBands, ppCtrls, ppVar, ppPrnabl, ppViewr, wwdbdatetimepicker;

type
  TFToolRelDepPrest = class(TForm)
    pnlBot: TPanel;
    gbPeriodo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ppdbPPrest: TppDBPipeline;
    ppRepPrest: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText7: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBText8: TppDBText;
    ppdbPPrestUse: TppDBPipeline;
    ppRepPrestUse: TppReport;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    pplblTitulo: TppLabel;
    ppLabel9: TppLabel;
    bbtnRep: TfcShapeBtn;
    rgReporte: TRadioGroup;
    ppHeaderBand2: TppHeaderBand;
    ppLabel17: TppLabel;
    ppDBText9: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText14: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel24: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppLabel30: TppLabel;
    ppLabel29: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel23: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    dbdtpDesde: TwwDBDateTimePicker;
    dbdtpHasta: TwwDBDateTimePicker;
    ppLine10: TppLine;
    procedure bbtnRepClick(Sender: TObject);
    procedure ppRepPrestUsePreviewFormCreate(Sender: TObject);
    procedure ppRepPrestPreviewFormCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolRelDepPrest: TFToolRelDepPrest;

implementation

uses COB001, COBDM1;

{$R *.DFM}

procedure TFToolRelDepPrest.bbtnRepClick(Sender: TObject);
var
   xSQL : String;
   x10 : Integer;
begin
   Screen.Cursor := crHourGlass;
   If dbdtpDesde.Date > dbdtpHasta.Date Then
    begin
     Beep;
     MessageDlg('Fecha de Inicio Mayor que la Fecha Final', mtInformation, [mbOk], 0);
     Screen.Cursor := crDefault;
     Exit;
    end;

   DM1.cdsReporte.DisableControls;
   If rgReporte.ItemIndex = 0 Then
    begin
     xSQL := 'Select A.DPTOID, C.CIADES, A.ASOAPENOM, B.BANCONOM, A.NROOPE, A.CCBCOID,'
            +' SUM(A.CREMTOCOB) CREMTOCOB, A.CREFPAG, A.FREG, D.DPTODES, A.UPROID,'
            +' A.USEID, E.USENOM From CRE310 A, TGE105 B, TGE101 C, APO158 D, APO101 E'
            +' Where A.CIAID = C.CIAID And A.BANCOID = B.BANCOID'
            +' And A.DPTOID = D.DPTOID And A.USEID = E.USEID'
            +' And A.FORPAGID ='+QuotedStr('03')
            +' And A.FREG >= '+QuotedStr(DateToStr(dbdtpDesde.Date))
            +' And A.FREG <= '+QuotedStr(DateToStr(dbdtpHasta.Date))
            +' Group By A.FREG, A.DPTOID, C.CIADES, A.ASOAPENOM, B.BANCONOM,'
            +' A.NROOPE, A.CCBCOID, A.CREFPAG, D.DPTODES, A.UPROID, A.USEID, E.USENOM'
            +' Order By A.FREG';

{     DM1.cdsReporte.Close;
     DM1.cdsReporte.DataRequest(xSQL);
     DM1.cdsReporte.PacketRecords := -1;
     DM1.cdsReporte.Open;}

     FPrincipal.Mtx.UsuarioSQL.Clear;
     FPrincipal.Mtx.FMant.wTabla := 'VWCOBRELBOLDEPX';
     FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
     FPrincipal.Mtx.NewQuery;

{     If DM1.cdsReporte.RecordCount = 0 Then
      begin
       Beep;
       MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
       Screen.Cursor := crDefault;
       Exit;
      end;}

     ppRepPrest.Template.FileName := wRutaRpt +'\RelDepPrest.rtm';
     ppRepPrest.Template.LoadFromFile ;
     ppLblTitulo.Caption := 'RELACIÓN DE BOLETAS DE DEPÓSITO DE PRESTAMOS DEL '+DateToStr(dbdtpDesde.Date)+' AL '+DateToStr(dbdtpHasta.Date);
     ppRepPrest.Print;
     ppRepPrest.Stop;
    end
   Else
    begin
     xSQL := 'Select A.DPTOID, D.DPTODES, A.UPROID, A.USEID, A.FREG, A.ASOAPENOM,'
            +' B.USENOM, C.CIADES, E.BANCONOM, A.CREFPAG, SUM(A.CREMTOCOB) CREMTOCOB,'
            +' A.NROOPE, A.CCBCOID From CRE310 A,'
            +' APO101 B, TGE101 C, APO158 D, TGE105 E'
            +' Where A.FORPAGID ='+QuotedStr('03')
            +' And A.USEID = B.USEID And A.CIAID = C.CIAID And A.DPTOID = D.DPTOID'
            +' And A.BANCOID = E.BANCOID'
            +' And A.FREG >= '+QuotedStr(DateToStr(dbdtpDesde.Date))
            +' And A.FREG <= '+QuotedStr(DateTostr(dbdtpHasta.Date))
            +' Group By A.DPTOID, D.DPTODES, A.UPROID, A.USEID, A.FREG, A.ASOAPENOM,'
            +' B.USENOM, C.CIADES, E.BANCONOM, A.CREFPAG, A.NROOPE, A.CCBCOID'
            +' Order By A.DPTOID, A.USEID, A.FREG';

{     DM1.cdsReporte.Close;
     DM1.cdsReporte.DataRequest(xSQL);
     DM1.cdsReporte.PacketRecords := -1;
     DM1.cdsReporte.Open;}

     FPrincipal.Mtx.UsuarioSQL.Clear;
     FPrincipal.Mtx.FMant.wTabla := 'VWCOBRELBOLDEPX';
     FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
     FPrincipal.Mtx.NewQuery;

{     If DM1.cdsReporte.RecordCount = 0 Then
      begin
       Beep;
       MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
       Screen.Cursor := crDefault;
       Exit
      end;}

     ppRepPrestUse.Template.FileName := wRutaRpt +'\RelDepPrestUse.rtm';
     ppRepPrestUse.Template.LoadFromFile ;
     ppRepPrestUse.Print;
     ppRepPrestUse.Stop;
    end;

   DM1.cdsReporte.First;
   DM1.cdsReporte.EnableControls;
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

procedure TFToolRelDepPrest.ppRepPrestUsePreviewFormCreate(
  Sender: TObject);
begin
   ppRepPrestUse.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepPrestUse.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolRelDepPrest.ppRepPrestPreviewFormCreate(Sender: TObject);
begin
   ppRepPrest.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepPrest.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolRelDepPrest.FormCreate(Sender: TObject);
var
   Present : TDate;
begin
   Present := Date;
   dbdtpDesde.Date := Present;
   dbdtpHasta.Date := Present;
end;

end.
