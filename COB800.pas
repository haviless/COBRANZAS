unit COB800;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, Mask, wwdbedit,
  StdCtrls, wwdblook, ExtCtrls, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppCache, ppDB, ppDBPipe, ppVar, ppPrnabl, ppCtrls, ppBands, ppViewr,
  ppTypes, ppEndUsr, Grids, Wwdbigrd, Wwdbgrid;

type
  TFToolResCtasPagadas = class(TForm)
    pnlCtasPag: TPanel;
    bbtnRep: TfcShapeBtn;
    ppRepResCtasPag: TppReport;
    ppdbResCtasPag: TppDBPipeline;
    ppDesigner1: TppDesigner;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    pplblTitulo: TppLabel;
    pplblFPago: TppLabel;
    pplblUProceso: TppLabel;
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
    ppLabel5: TppLabel;
    ppdbFecPago: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppdbUSE: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel20: TppLabel;
    ppLine8: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel21: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppLabel22: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppdbTipCred: TppDBText;
    ppLabel8: TppLabel;
    pplblTipoCred: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel24: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBCalc12: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppDBText24: TppDBText;
    ppLabel9: TppLabel;
    pplblUSE: TppLabel;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel23: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    dblcUProId: TwwDBLookupCombo;
    chkUProc: TCheckBox;
    dbeUPro: TwwDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    dbdtpDesde: TwwDBDateTimePicker;
    Label4: TLabel;
    dbdtpHasta: TwwDBDateTimePicker;
    dblcdFPagoId: TwwDBLookupCombo;
    dbeFormaPago: TwwDBEdit;
    Label2: TLabel;
    procedure dblcUProIdExit(Sender: TObject);
    procedure bbtnRepClick(Sender: TObject);
    procedure dblcdFPagoIdExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppGroupHeaderBand5BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand6BeforePrint(Sender: TObject);
    procedure ppRepResCtasPagPreviewFormCreate(Sender: TObject);
    procedure chkUProcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolResCtasPagadas: TFToolResCtasPagadas;

implementation

uses COBDM1, COB001;

{$R *.DFM}

procedure TFToolResCtasPagadas.dblcUProIdExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(dblcUProId.Text);
   dbeUPro.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
end;

procedure TFToolResCtasPagadas.bbtnRepClick(Sender: TObject);
var
  xSQL : String;
  x10 : Integer;
begin
  Screen.Cursor := crHourGlass;

  dblcdFPagoIdExit(Sender);

  If Length(dblcdFPagoId.Text) = 0 Then
  begin
    Beep;
    MessageDlg('Ingrese la Forma de Pago', mtInformation, [mbOk], 0);
    dblcdFPagoId.SetFocus;
    Screen.Cursor := crDefault;
    Exit;
  end;

  if Length(dblcUProId.Text) = 0 Then
  begin
    xSQL :='SELECT CREFPAG, FOPERAC, TIPCREID, UPROID, UPAGOID, USEID, ASOCODMOD, '+
           'SUBSTR(CREDID, 11, 5) CREDID, ASOAPENOM, '+
           'CREDOCPAG, '+
           'CASE WHEN CREESTID = '+QuotedStr('21')+' THEN SUM(CREAMORT) + SUM(CREFLAT) ELSE '+
           'CASE WHEN CREESTID = '+QuotedStr('23')+' THEN SUM(CREAMORT) + SUM(CREFLAT) + SUM(CREINTERES) END END CREMTO, '+
           'SUM(CREMTOCOB) CREMTOCOB, SUM(CREAMORT) CRECAPITAL, '+
           'SUM(CREINTERES) CREMTOINT, SUM(CREFLAT) CREMTOFLAT, 0 CREMTOEXC '+//SUM(CREMTOEXC) CREMTOEXC '+
           ' FROM CRE310 '+
           ' WHERE ( FOPERAC>='+QuotedStr(DateToStr(dbdtpDesde.Date))+
           ' AND FOPERAC<='+QuotedStr(DateToStr(dbdtpHasta.Date))+
           ' ) AND FORPAGID='+QuotedStr(dblcdFPagoId.Text)+
           ' GROUP BY CREFPAG, FOPERAC, TIPCREID, UPROID, UPAGOID, USEID, CREDID, ASOAPENOM, ASOCODMOD, CREDOCPAG, CREESTID '+
           ' ORDER BY FOPERAC, TIPCREID, USEID';
  end
  else
  begin
    dblcdFPagoIdExit(Sender);
    xSQL :='SELECT CREFPAG, FOPERAC, TIPCREID, UPROID, UPAGOID, USEID, ASOCODMOD, '+
           'SUBSTR(CREDID, 11, 5) CREDID, ASOAPENOM, '+
           'CREDOCPAG, '+
           'CASE WHEN CREESTID='+QuotedStr('21')+' THEN SUM(CREAMORT) + SUM(CREFLAT) ELSE '+
           'CASE WHEN CREESTID='+QuotedStr('23')+' THEN SUM(CREAMORT) + SUM(CREFLAT) + SUM(CREINTERES) END END CREMTO, '+
           'SUM(CREMTOCOB) CREMTOCOB, SUM(CREAMORT) CRECAPITAL, '+
           'SUM(CREINTERES) CREMTOINT, SUM(CREFLAT) CREMTOFLAT, 0 CREMTOEXC '+//, SUM(CREMTOEXC) CREMTOEXC '+
           ' FROM CRE310 '+
           ' WHERE ( FOPERAC>='+QuotedStr(DateToStr(dbdtpDesde.Date))+
           ' AND FOPERAC<='+QuotedStr(DateToStr(dbdtpHasta.Date))+
           ' ) AND FORPAGID = '+QuotedStr(dblcdFPagoId.Text)+
           ' AND UPROID ='+QuotedStr(dblcUProId.Text)+
           ' GROUP BY CREFPAG, FOPERAC, TIPCREID, UPROID, UPAGOID, USEID, CREDID, ASOAPENOM, ASOCODMOD, CREDOCPAG, CREESTID '+
           ' ORDER BY FOPERAC, TIPCREID, USEID';
  end;

  DM1.cdsPadre.Filter   := '';
  DM1.cdsPadre.Filtered := False;
  DM1.cdsPadre.IndexFieldNames := '';
  DM1.cdsPadre.PacketRecords := -1;
  DM1.cdsPadre.Close;
  DM1.cdsPadre.DataRequest(xSQL);
  DM1.cdsPadre.Open;

  //DM1.cdsPadre.IndexFieldNames := 'CREFPAG; TIPCREID; USEID';

  FPrincipal.Mtx.UsuarioSQL.Clear;
  FPrincipal.Mtx.FMant.wTabla := 'VWCOBRESCTASPAG';
  FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
  FPrincipal.Mtx.NewQuery;

  If DM1.cdsPadre.RecordCount = 0 Then
  begin
    Beep;
    Screen.Cursor := crDefault;
    MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
    Exit;
  end;

  ppRepResCtasPag.Template.FileName  := wRutaRpt+'\ResCtasPagadas.rtm';
  ppRepResCtasPag.Template.LoadFromFile;
  pplblTitulo.Caption   := 'RESUMEN DE CUOTAS PAGADAS DEL '+DateToStr(dbdtpDesde.Date)+' AL '+DateToStr(dbdtpHasta.Date);
  pplblFPago.Caption    := 'FORMA DE PAGO ...: '+dbeFormaPago.Text;
  if Length(dblcUProId.Text) = 0 Then
    pplblUProceso.Caption := 'LUGAR DE PROCESO ...: GENERAL'
  else
    pplblUProceso.Caption := 'LUGAR DE PROCESO ...: '+dbeUPro.Text;

  //ppDesigner1.Report := ppRepResCtasPag;
  //ppDesigner1.Show;
  //Exit;
  
  ppRepResCtasPag.Print;
  ppRepResCtasPag.Stop;

  x10 := Self.ComponentCount - 1;
  while x10 > 0 do
  begin
    if Self.Components[x10].ClassName = 'TppGroup' Then
    begin
      Self.Components[x10].Free;
    end;
    x10 := x10 - 1;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFToolResCtasPagadas.dblcdFPagoIdExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'FORPAGOID ='+QuotedStr(dblcdFPagoId.Text);
   dbeFormaPago.Text := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGODES', xWhere, 'FORPAGODES');
end;

procedure TFToolResCtasPagadas.FormCreate(Sender: TObject);
var
   Present : TDate;
begin
   Present := Date;
   dbdtpDesde.Date := Present;
   dbdtpHasta.Date := Present;
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

procedure TFToolResCtasPagadas.ppGroupHeaderBand5BeforePrint(
  Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'TIPCREID ='+QuotedStr(DM1.cdsPadre.FieldByName('TIPCREID').AsString);
   pplblTipoCred.Caption := DM1.DisplayDescrip('prvSQL', 'CRE110', 'TIPCREDES', xWhere, 'TIPCREDES');
end;

procedure TFToolResCtasPagadas.ppGroupHeaderBand6BeforePrint(
  Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsPadre.FieldByName('UPROID').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsPadre.FieldByName('UPAGOID').AsString)
            +' And USEID ='+QuotedStr(DM1.cdsPadre.FieldByName('USEID').AsString);
   pplblUse.Text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
end;

procedure TFToolResCtasPagadas.ppRepResCtasPagPreviewFormCreate(
  Sender: TObject);
begin
   ppRepResCtasPag.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepResCtasPag.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolResCtasPagadas.chkUProcClick(Sender: TObject);
begin
  if chkUProc.Checked then
  begin
    dblcUProId.Enabled:=False;
    dbeUPro.Enabled:=False;
  end
  else
  begin
    dblcUProId.Enabled:=True;
    dbeUPro.Enabled:=True;
  end;
end;

end.



