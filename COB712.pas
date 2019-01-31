unit COB712;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcButton, fcImgBtn, fcShapeBtn, Mask, wwdbedit, Wwdbspin,
  ExtCtrls, ComCtrls, Buttons, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppTypes, ppCache, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  wwdbdatetimepicker, ppViewr, Grids, Wwdbigrd, Wwdbgrid;

type
  TFToolRelDepApo = class(TForm)
    pnlBot: TPanel;
    gbPeriodo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ppDBPApo: TppDBPipeline;
    ppRepApo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    pplblTitulo: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText2: TppDBText;
    ppLabel16: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBPApoUse: TppDBPipeline;
    ppRepApoUse: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    pplblTitulo1: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText9: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText10: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppLabel30: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel25: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    dbdtpDesde: TwwDBDateTimePicker;
    dbdtpHasta: TwwDBDateTimePicker;
    bbtnRep: TfcShapeBtn;
    rgReporte: TRadioGroup;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel14: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine11: TppLine;
    ppLine12: TppLine;
    procedure bbtnRepClick(Sender: TObject);
    procedure ppRepApoUsePreviewFormCreate(Sender: TObject);
    procedure ppRepApoPreviewFormCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolRelDepApo: TFToolRelDepApo;

implementation

uses COB001, COBDM1;

{$R *.DFM}

procedure TFToolRelDepApo.bbtnRepClick(Sender: TObject);
var
   xSQL : String;
   x10 : Integer;
begin
   If dbdtpDesde.Date > dbdtpHasta.Date Then
    begin
     Beep;
     MessageDlg('Fecha de Inicio es Mayor que la Fecha Final', mtInformation, [mbOk], 0);
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   DM1.cdsAportes.DisableControls;

   xSQL := 'Select A.DPTOID, B.DPTODES, A.USEID, C.USENOM,'
          +' D.CIADES, A.ASOAPENOM, A.BANCOID,'
          +' MAX(A.TRANSNOPE) TRANSNOPE, MAX(A.CCBCOID) CCBCOID,'
          +' MAX(A.TRANSMTO) TRANSMTO, MAX(A.TRANSFOPE) TRANSFOPE,'
          +' A.FREG, E.BANCONOM'
          +' From APO301 A, APO158 B, APO101 C, TGE101 D, TGE105 E'
          +' Where TRANSINTID = '+QuotedStr('APO')
          +' And A.FREG >= '+QuotedStr(DateToStr(dbdtpDesde.Date))
          +' And A.FREG <= '+QuotedStr(DateToStr(dbdtpHasta.Date))
          +' And A.FORPAGOID = '+QuotedStr('03')
          +' And A.DPTOID = B.DPTOID'
          +' And A.USEID = C.USEID'
          +' And A.BANCOID = E.BANCOID'
//          +' And A.BANCOID = E.BANCOID(+)'
          +' And A.CIAID = D.CIAID'
          +' Group By A.DPTOID, B.DPTODES, A.USEID, C.USENOM, A.BANCOID,'
          +' A.FREG, E.BANCONOM, D.CIADES, A.ASOAPENOM, A.FREG'
          +' Order By A.FREG';

{     DM1.cdsAportes.Filter   := '';
     DM1.cdsAportes.Filtered := False;
     DM1.cdsAportes.IndexFieldNames := '';
     DM1.cdsAportes.Close;
     DM1.cdsAportes.DataRequest(xSQL);
     DM1.cdsAportes.PacketRecords := -1;
     DM1.cdsAportes.Open;}

     FPrincipal.Mtx.UsuarioSQL.Clear;
     FPrincipal.Mtx.FMant.wTabla := 'VWCOBDEPBCOSAPO';
     FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
     FPrincipal.Mtx.NewQuery;

{   If DM1.cdsAportes.RecordCount = 0 Then
    begin
     Beep;
     MessageDlg('No Existen Datos para Imprimir', mtInformation, [mbOk], 0);
     Screen.Cursor := crDefault;
     Exit;
    end;}

   If rgReporte.ItemIndex = 0 Then
    begin
     ppRepApo.Template.FileName := wRutaRpt +'\RelDepApo.rtm';
     ppRepApo.Template.LoadFromFile;
     pplblTitulo.Caption := 'RELACIÓN DE BOLETAS DE DEPÓSITO DE APORTES DEL '+DateToStr(dbdtpDesde.Date)+' AL '+DateToStr(dbdtpHasta.Date);
     ppRepApo.Print;
     ppRepApo.Stop;
    end
   Else
    begin
     ppRepApoUse.Template.FileName := wRutaRpt +'\RelDepApoUse.rtm';
     ppRepApoUse.Template.LoadFromFile ;
     pplblTitulo1.Caption := 'RELACIÓN DE BOLETAS DE DEPÓSITO DE APORTES POR USE DEL '+DateToStr(dbdtpDesde.Date)+' AL '+DateToStr(dbdtpHasta.Date);
     ppRepApoUse.Print;
     ppRepApoUse.Stop;
    end;

   DM1.cdsAportes.EnableControls;

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

procedure TFToolRelDepApo.ppRepApoUsePreviewFormCreate(Sender: TObject);
begin
   ppRepApoUse.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepApoUse.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolRelDepApo.ppRepApoPreviewFormCreate(Sender: TObject);
begin
   ppRepApo.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepApo.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolRelDepApo.FormCreate(Sender: TObject);
var
   Present : TDate;
begin
   Present := Date;
   dbdtpDesde.Date := Present;
   dbdtpHasta.Date := Present;
end;

end.
