unit COBF005;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COBF005
// Formulario                    : fDetalleDevFSC
// Fecha de Creación             : 26/09/2013
// Autor                         : Sistemas
// Objetivo                      : Detalle de las Devoluciones al FSC

// Actualizaciones               :
// Inicio: HPP_201008_COB por RMEDINA
// Memorándum 962-2009-DM-COB - SAR-2009-0893 - DAF-2010-004-COB
// HPC_201312_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
// SPP_201314_COB : Se realiza el pase a producción a partir del documento HPC_201312_COB
// HPC_201606_COB : Se adiciona marca de BLOQUEADA en impresión

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid,DB, ExtCtrls, ppEndUsr,
  ppParameter, ppBands, ppClass, ppReport, ppStrtch, ppSubRpt, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe,
//Inicio HPC_201606_COB --Bloqueo de impresion
  StdCtrls, ppDBBDE,wwExport, shellapi, wwriched, jpeg;
//Final HPC_201606_COB

type
  TfDetalleDevFSC = class(TForm)
    dbgDetDevFSC: TwwDBGrid;
// Inicio: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
    BitPrintDet: TBitBtn;
// Fin: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
    BtnExcel: TBitBtn;
    ppD1: TppDesigner;
    ppRepDetCob: TppReport;
    ppBDE1: TppBDEPipeline;
    ppParameterList2: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
//Inicio HPC_201606_COB --Bloqueo de impresion
//  ppLabel21: TppLabel;
//Fibal HPC_201606_COB
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    LblCodMod5: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    lblTipCre2: TppLabel;
    lblNomGen3: TppLabel;
    lblNumPre2: TppLabel;
    ppLabel30: TppLabel;
    lblFecPre2: TppLabel;
    ppLabel32: TppLabel;
    lblUse2: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    lblLugarGenera: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
  //Inicio: HPP_201107_COB RMZ
  //Se Elimina en el reporte la columna cd Ano/mes
  //ppDBText7: TppDBText;
  //ppLabel55: TppLabel;
  //Final: HPP_201107_COB RMZ
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText2: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand2: TppFooterBand;
    lblUser: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel3: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel7: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel42: TppLabel;
    ppLabel53: TppLabel;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppVariable5: TppVariable;
    ppVariable6: TppVariable;
    ppLabel56: TppLabel;
    ppVariable7: TppVariable;
    ppLine7: TppLine;
    ppLine8: TppLine;
    BitSalir: TBitBtn;
//Inicio HPC_201606_COB --Bloqueo de impresion
    IMGBLOQUEA: TppImage;
    ppImage1: TppImage;
//Final HPC_201606_COB
    procedure FormCreate(Sender: TObject);
    procedure actfootDetFSC;
    procedure FormActivate(Sender: TObject);
    procedure dbgDetDevFSCCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
// Inicio: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
    procedure BitPrintDetClick(Sender: TObject);
// Fin: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppVariable2Print(Sender: TObject);
    procedure BtnExcelClick(Sender: TObject);
    procedure dbgDetDevFSCDblClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private

    { Private declarations }
  public
   VTOTCOB,VIMP_APL_FSC,VIMP_COB_FSC,VIMP_EXC_DEU,VIMP_EXC_DEV : CURRENCY;
   Procedure Opciones(AOptions: TwwExportOptions);
    { Public declarations }
  end;

var
  fDetalleDevFSC: TfDetalleDevFSC;

implementation

uses COBDM1;

{$R *.dfm}


procedure TfDetalleDevFSC.actfootDetFSC;
Var
   B: TBookmark;
   xEnvio: currency;

Begin

   dbgDetDevFSC.ColumnByName('COR_COB_DEU').FooterValue := 'Total';

  //Guardo la posicion
   B := DM1.CdsDetalle.GetBookmark;
   DM1.CdsDetalle.DisableControls;
   DM1.CdsDetalle.First;
   xEnvio:=0;
    While Not DM1.CdsDetalle.Eof Do
      Begin
         If (Dm1.cdsDetalle.FieldByName('TIP_MOV_DEU').AsString='COB') or
            (Dm1.cdsDetalle.FieldByName('TIP_MOV_DEU').AsString='EXC') Then
             xEnvio := xEnvio + DM1.CdsDetalle.FieldByName('IMP_COB_DEU').AsCurrency;

         If (Dm1.cdsDetalle.FieldByName('TIP_MOV_DEU').AsString='DEV') Then
             xEnvio := xEnvio - DM1.CdsDetalle.FieldByName('IMP_COB_DEU').AsCurrency;

         DM1.CdsDetalle.Next
      End;
      VTOTCOB:=xEnvio;
      dbgDetDevFSC.ColumnByName('IMP_COB_DEU').FooterValue := FormatCurr('###,##0.#0', xEnvio);

  //Me posiciono nuevamente en el posicion marcada
   DM1.CdsDetalle.GotoBookmark(B);
   DM1.CdsDetalle.EnableControls;
   DM1.CdsDetalle.FreeBookmark(B);

end;


procedure TfDetalleDevFSC.FormCreate(Sender: TObject);
begin
// Inicio: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
   DM1.BlqComponentes(Self);
// Fin: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC

   dbgDetDevFSC.Selected.clear;
   dbgDetDevFSC.Selected.Add('COR_COB_DEU'#9'05'#9'Corr.~Deuda'#9#9);
   dbgDetDevFSC.Selected.Add('IMP_COB_DEU'#9'10'#9'Importe~Cobrado'#9#9);
   dbgDetDevFSC.Selected.Add('TIP_MOV_DEU'#9'4'#9'Tip~Mov'#9#9);
   dbgDetDevFSC.Selected.Add('FEC_COB_DEU'#9'10'#9'Fecha~Cobro'#9#9);
   dbgDetDevFSC.Selected.Add('FORPAGABR'#9'10'#9'For.~Pag.'#9#9);
   dbgDetDevFSC.Selected.Add('NROOPE'#9'12'#9'Numero~Operación'#9#9);
   dbgDetDevFSC.Selected.Add('FOPERAC'#9'10'#9'Fecha~Operación'#9#9);
   dbgDetDevFSC.Selected.Add('EST_COB_DES'#9'13'#9'Estado'#9#9);
   dbgDetDevFSC.Selected.Add('FORPAGABR'#9'5'#9'For.~Pag.'#9#9);
   dbgDetDevFSC.Selected.Add('OFDESNOM'#9'15'#9'Oficina'#9#9);
   dbgDetDevFSC.DataSource := Dm1.dsDetalle;
   TNumericField(Dm1.CdsDetalle.fieldbyname('IMP_COB_DEU')).DisplayFormat:='###,###.#0';


end;

procedure TfDetalleDevFSC.FormActivate(Sender: TObject);
VAR XSQL,vOFI_CREACION,vFORPAGID:STRING;
begin
  actfootDetFSC;


  XSQL:='Select NUM_DEU,FEC_APL_FSC,FORPAGID,OFI_CREACION ,'+
        ' IMP_APL_FSC,IMP_COB_FSC,IMP_EXC_DEU,IMP_EXC_DEV '+
        ' From COB_FSC_DEUDA_FSC_CAB '+
        'Where Asoid='''+dm1.cdsDetalle.FieldByname('Asoid').AsString+''' '+
        'And Num_Deu='''+dm1.cdsDetalle.FieldByname('Num_deu').AsString+''' ';
  Dm1.cdsDFam.Close;
  Dm1.cdsDFam.DataRequest(xsql);
  Dm1.cdsDFam.Open;
  lblNumPre2.Caption := Dm1.cdsDFam.FieldByname('NUM_DEU').AsString;
  lblFecPre2.Caption := Dm1.cdsDFam.FieldByname('FEC_APL_FSC').AsString;
  VOFI_CREACION      := Dm1.cdsDFam.FieldByname('OFI_CREACION').AsString;
  VFORPAGID          := Dm1.cdsDFam.FieldByname('FORPAGID').AsString;
  VIMP_APL_FSC       := Dm1.cdsDFam.FieldByname('IMP_APL_FSC').AsCurrency;
  VIMP_COB_FSC       := Dm1.cdsDFam.FieldByname('IMP_COB_FSC').AsCurrency;
  VIMP_EXC_DEU       := Dm1.cdsDFam.FieldByname('IMP_EXC_DEU').AsCurrency;
  VIMP_EXC_DEV       := Dm1.cdsDFam.FieldByname('IMP_EXC_DEV').AsCurrency;

  TNumericField(Dm1.cdsDFam.FieldByname('IMP_APL_FSC')).DisplayFormat:='###,###.#0';


  XSQL:='Select OFDESNOM From APO110 WHERE OFDESID='''+vOFI_CREACION+''' ';
  Dm1.cdsDFam.Close;
  Dm1.cdsDFam.DataRequest(xsql);
  Dm1.cdsDFam.Open;
  lblLugarGenera.Caption:=Dm1.cdsDFam.FieldByName('OFDESNOM').AsString;

  XSQL:='Select FORPAGODES From COB101 WHERE FORPAGOID='''+vFORPAGID+''' ';
  Dm1.cdsDFam.Close;
  Dm1.cdsDFam.DataRequest(xsql);
  Dm1.cdsDFam.Open;
  lblTipCre2.Caption:=Dm1.cdsDFam.FieldByName('FORPAGODES').AsString;

end;

procedure TfDetalleDevFSC.dbgDetDevFSCCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

    If   (DM1.cdsDetalle.FieldByName('TIP_MOV_DEU').asstring = 'COB') Then AFont.Color  := clGreen ;
    If   (DM1.cdsDetalle.FieldByName('TIP_MOV_DEU').asstring = 'EXC') Then AFont.Color  := clBlue;
    If   (DM1.cdsDetalle.FieldByName('TIP_MOV_DEU').asstring = 'DEV') Then AFont.Color  := clRed;

    If Highlight then
      begin
         ABrush.Color := clblue;
         If (DM1.cdsDetalle.FieldByName('TIP_MOV_DEU').asstring = 'EXC') Then
            Begin
             Afont.Color := clyellow;
             //AFont.Style := [fsBold];
            End;
         If (DM1.cdsDetalle.FieldByName('TIP_MOV_DEU').asstring = 'DEV') Then
            Begin
             Afont.Color := $008C8CFF;
             //AFont.Style := [fsBold];
            End;

         If (DM1.cdsDetalle.FieldByName('TIP_MOV_DEU').asstring = 'COB') Then
            Begin
             Afont.Color := clwhite;
             //AFont.Style := [fsBold];
           end;
     End;
end;

// Inicio: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
procedure TfDetalleDevFSC.BitPrintDetClick(Sender: TObject);
// Fin: SPP_201314_COB : 20/12/2013  Restricción de Impresión de Reportes del FSC
begin

  If DM1.CdsDetalle.RecordCount=0 Then
    Begin
      ShowMessage('No existe información para mostrar');
      exit;
    End;

//Inicio HPC_201606_COB --Bloqueo de impresion
   IMGBLOQUEA.Visible := False;
   If DM1.cdsMGrupo.Fieldbyname('ID_EST_FSC').AsString = '19' Then IMGBLOQUEA.Visible := True;
//Final HPC_201606_COB

  ppBDE1.DataSource  := dm1.dsDetalle;
  LblCodMod5.Caption := dm1.cdsAso.fieldbyname('ASOCODMOD').AsString;
  lblNomGen3.Caption := dm1.cdsAso.fieldbyname('ASOAPENOM').AsString;
  lblUse2.Caption    := dm1.cdsAso.fieldbyname('USEID').AsString;
  lblUser.Caption    := Dm1.wUsuario;
  ppRepDetCob.Print;
  ppRepDetCob.Stop;
 //ppD1.ShowModal;
end;

procedure TfDetalleDevFSC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Dm1.cdsDFam.Close;
 Dm1.cdsDFam.IndexFieldNames:='';
 Dm1.cdsDFam.Filter:='';
end;

procedure TfDetalleDevFSC.ppVariable2Print(Sender: TObject);
begin
  ppVariable2.Value :=  VIMP_APL_FSC;
  ppVariable3.Value  := VIMP_COB_FSC-VIMP_EXC_DEU;
  ppVariable4.Value :=  VIMP_APL_FSC - ( VIMP_COB_FSC-VIMP_EXC_DEU );
  ppVariable5.Value :=  VIMP_EXC_DEU;
  ppVariable6.Value :=  VIMP_EXC_DEV;
  ppVariable7.Value :=  VIMP_EXC_DEU-VIMP_EXC_DEV;
end;

procedure TfDetalleDevFSC.BtnExcelClick(Sender: TObject);

 Begin

   If DM1.CdsDetalle.RecordCount=0 Then
    Begin
      ShowMessage('No existe información para mostrar');
      exit;
    End;

   With dbgDetDevFSC, dbgDetDevFSC.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Reporte.slk';
      Opciones(dbgDetDevFSC.ExportOptions);
      dbgDetDevFSC.ExportOptions.TitleName := 'Detalle de la Devolución al FSC';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgDetDevFSC.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;


 End;

procedure TfDetalleDevFSC.Opciones(AOptions: TwwExportOptions);
begin
   AOptions.Options := [esoDblQuoteFields, esoShowFooter];
   AOptions.Options := AOptions.Options + [esoShowTitle];
   AOptions.Options := AOptions.Options + [esoShowHeader];
   AOptions.Options := AOptions.Options + [esoShowRecordNo];
   AOptions.Options := AOptions.Options + [esoEmbedURL];
   AOptions.Options := AOptions.Options + [esoDynamicColors];
   AOptions.Options := AOptions.Options + [esoShowAlternating];
end;

procedure TfDetalleDevFSC.dbgDetDevFSCDblClick(Sender: TObject);
begin
   If FormatDateTime('DD/MM/YYYY',Dm1.cdsDetalle.FieldByName('HOR_COB_DEU').AsDateTime)<>
         FormatDateTime('DD/MM/YYYY',Dm1.cdsDetalle.FieldByName('FEC_COB_DEU').AsDateTime) Then
      ShowMessage('Usuario :  '+DM1.cdsDetalle.FieldByName('USU_COB_DEU').AsString+#13+#13
                +'Fecha De Registro :  '+DM1.cdsDetalle.FieldByName('FEC_COB_DEU').AsString+#13+#13
                +'Observ. :  '+DM1.cdsDetalle.FieldByName('OBS_COB_DEU').AsString  )
   Else
      ShowMessage('Usuario :  '+DM1.cdsDetalle.FieldByName('USU_COB_DEU').AsString+#13+#13
                +'Fecha De Registro :  '+DM1.cdsDetalle.FieldByName('HOR_COB_DEU').AsString+#13+#13
                +'Observ. :  '+DM1.cdsDetalle.FieldByName('OBS_COB_DEU').AsString  );
end;

procedure TfDetalleDevFSC.BitSalirClick(Sender: TObject);
begin
  close;
end;

// Fin: HPP_201008_COB
end.
