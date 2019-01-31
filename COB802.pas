// Inicio Uso Estándares     : 01/08/2011
// Unidad                    : COB802
// Formulario                : FResEvaFPD
// Fecha de Creación         :
// Autor                     : Equipo de Sistemas
// Objetivo                  : Resultados evaluaciones del FPD
// Equipo Solicitante        : Cobranzas
// COB_201823_HPC            : Creación

//Inicio COB_201823_HPC
//Resultado de evaluación del FPD
unit COB802;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, Buttons, ExtCtrls, wwdbdatetimepicker, ppCtrls, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv,
  ppProd, ppReport, ppVar, jpeg, DBGrids;

type
  TFResEvaFPD = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dbdtpInicial: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    rgTipoSolicitus: TRadioGroup;
    btnProcesar: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    btnImprimir: TBitBtn;
    btnExcel: TBitBtn;
    fcShapeBtn3: TfcShapeBtn;
    ppRReport: TppReport;
    BDEPReport: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppImage3: TppImage;
    ppLabel114: TppLabel;
    pplTitulo: TppLabel;
    pplFecha: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel117: TppLabel;
    ppLabel116: TppLabel;
    ppLabel115: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    dbgreporte: TwwDBGrid;
    pplImpresopor: TppLabel;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    procedure btnProcesarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rgTipoSolicitusClick(Sender: TObject);
    procedure dbdtpInicialChange(Sender: TObject);
    procedure dbdtpFinalChange(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    xArchivo:String;  
    Procedure Limpia;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FResEvaFPD: TFResEvaFPD;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFResEvaFPD.btnProcesarClick(Sender: TObject);
Var xSql: String;
begin
   If Trim(dbdtpInicial.Text) = '' Then
   Begin
      MessageDlg('Ingrese la fecha inicial', mtInformation, [mbOk], 0);
      dbdtpInicial.SetFocus;
      Exit;
   End;
   If Trim(dbdtpFinal.Text) = '' Then
   Begin
      MessageDlg('Ingrese la fecha final', mtInformation, [mbOk], 0);
      dbdtpFinal.SetFocus;
      Exit;
   End;
   If dbdtpInicial.Date > dbdtpFinal.Date Then
   Begin
      MessageDlg('Ingrese una fecha inicial menor o igual a la fecha final', mtInformation, [mbOk], 0);
      dbdtpInicial.SetFocus;
      Exit;
   End;
   If rgTipoSolicitus.ItemIndex = -1 Then
   Begin
      MessageDlg('Seleccione el tipo de reporte', mtInformation, [mbOk], 0);
      dbdtpInicial.SetFocus;
      Exit;
   End;
   If rgTipoSolicitus.ItemIndex = 0 Then
   Begin
      xArchivo := 'Solicitud_Aplicada';
      pplTitulo.Caption := 'SOLICITUDES APLICADAS';
      xSql := 'SELECT A.ASODNI DNI_ASOCIADO, A.ASOAPENOMDNI APELLIDOS_NOMBRES, C.BENEFABR OCURRENCIA, A.FECFALGES FECHA_OCURRENCIA, B.USUREG SOLICITADO_POR,'
      +' TO_DATE(B.FECREG) FECHA_SOLICITUD, B.OBSMEM OBSERVACION, A.SUSAPRDES SUSTENTO'
      +' FROM ASO_FAC_GES_DET A, ASO_FAC_GES_CAB B, TGE186 C'
      +' WHERE A.ESTAPRDES = ''APLICADO'' AND A.IDEGESFAL = B.IDEGESFAL'
      +' AND B.FECREG >= '+QuotedStr(dbdtpInicial.Text)+' AND B.FECREG <= '+QuotedStr(dbdtpFinal.Text)
      +' AND B.PVSTIPBEN = C.TIPBENEF';
   End;
   If rgTipoSolicitus.ItemIndex = 1 Then
   Begin
      xArchivo := 'Solicitud_Rechazada';
      pplTitulo.Caption := 'SOLICITUDES RECHAZADAS';
      xSql := 'SELECT A.ASODNI DNI_ASOCIADO, A.ASOAPENOMDNI APELLIDOS_NOMBRES, C.BENEFABR OCURRENCIA, A.FECFALGES FECHA_OCURRENCIA, B.USUREG SOLICITADO_POR,'
      +' TO_DATE(B.FECREG) FECHA_SOLICITUD, B.OBSMEM OBSERVACION, A.SUSAPRDES SUSTENTO'
      +' FROM ASO_FAC_GES_DET A, ASO_FAC_GES_CAB B, TGE186 C'
      +' WHERE A.ESTAPRDES = ''NO APLICA'' AND A.IDEGESFAL = B.IDEGESFAL'
      +' AND B.FECREG >= '+QuotedStr(dbdtpInicial.Text)+' AND B.FECREG <= '+QuotedStr(dbdtpFinal.Text)
      +' AND B.PVSTIPBEN = C.TIPBENEF';
   End;
   If rgTipoSolicitus.ItemIndex = 2 Then
   Begin
      xArchivo := 'Solicitud_Anulada';
      pplTitulo.Caption := 'SOLICITUDES ANULADAS';
      xSql := 'SELECT A.ASODNI DNI_ASOCIADO, A.ASOAPENOMDNI APELLIDOS_NOMBRES, C.BENEFABR OCURRENCIA, A.FECFALGES FECHA_OCURRENCIA, B.USUREG SOLICITADO_POR,'
      +' TO_DATE(B.FECREG) FECHA_SOLICITUD, B.OBSMEM OBSERVACION, A.SUSAPRDES SUSTENTO'
      +' FROM ASO_FAC_GES_DET A, ASO_FAC_GES_CAB B, TGE186 C'
      +' WHERE A.ESTADO = ''13'' AND A.IDEGESFAL = B.IDEGESFAL'
      +' AND B.FECREG >= '+QuotedStr(dbdtpInicial.Text)+' AND B.FECREG <= '+QuotedStr(dbdtpFinal.Text)
      +' AND B.PVSTIPBEN = C.TIPBENEF';
   End;
   Screen.Cursor := crHourGlass;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsReporte.RecordCount = 0 Then
   Begin
      Limpia;
      MessageDlg('No existe información para mostrar', mtCustom, [mbOk], 0);
      btnImprimir.Enabled := False;
      btnExcel.Enabled := False;
      Exit;
   End;

   btnImprimir.Enabled := True;
   btnExcel.Enabled    := True;

   dbgreporte.Selected.Clear;
   dbgreporte.Selected.Add('DNI_ASOCIADO'#9'8'#9'DNI~Asociado'#9#9);
   dbgreporte.Selected.Add('APELLIDOS_NOMBRES'#9'42'#9'Apellidos y~nombre(s)'#9#9);
   dbgreporte.Selected.Add('OCURRENCIA'#9'12'#9'Tipo de~ocurrencia'#9#9);
   dbgreporte.Selected.Add('FECHA_OCURRENCIA'#9'10'#9'Fecha~ocurrencia'#9#9);
   dbgreporte.Selected.Add('SOLICITADO_POR'#9'15'#9'Solicitado~por'#9#9);
   dbgreporte.Selected.Add('FECHA_SOLICITUD'#9'10'#9'Fecha~solicitud'#9#9);
   dbgreporte.Selected.Add('OBSERVACION'#9'32'#9'Observación'#9#9);
   dbgreporte.Selected.Add('SUSTENTO'#9'32'#9'Sustento~aprobación/desaprobación'#9#9);
   dbgreporte.ApplySelected;

End;

procedure TFResEvaFPD.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

procedure TFResEvaFPD.fcShapeBtn3Click(Sender: TObject);
begin
   Close;
end;

procedure TFResEvaFPD.Limpia;
Begin
   If DM1.cdsReporte.Active Then DM1.cdsReporte.Close;
   btnImprimir.Enabled := False;
   btnExcel.Enabled := False;
end;

procedure TFResEvaFPD.FormActivate(Sender: TObject);
begin
   Limpia;
end;

procedure TFResEvaFPD.rgTipoSolicitusClick(Sender: TObject);
begin
   Limpia;
end;

procedure TFResEvaFPD.dbdtpInicialChange(Sender: TObject);
begin
   Limpia;
end;

procedure TFResEvaFPD.dbdtpFinalChange(Sender: TObject);
begin
   Limpia;
end;

procedure TFResEvaFPD.btnExcelClick(Sender: TObject);
begin
   If FileExists(xArchivo+'.slk') Then
      DeleteFile(xArchivo+'.slk');
   DM1.ExportaGridExcel(dbgreporte,xArchivo);
end;

procedure TFResEvaFPD.btnImprimirClick(Sender: TObject);
begin
   pplFecha.Caption := ' DEL '+dbdtpInicial.Text+' AL '+dbdtpFinal.Text;
   pplImpresopor.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
   ppRReport.Print;
end;

end.
//Fin COB_201823_HPC
