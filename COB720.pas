unit COB720;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppEndUsr, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppProd, ppReport,
  ppTypes, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ExtCtrls, ComCtrls, StdCtrls,
  fcButton, fcImgBtn, fcShapeBtn, Wwdbdlg, wwdblook, Mask, wwdbedit,
  Wwdbspin, ppViewr;

type
  TFToolCobUse = class(TForm)
    pnlTool: TPanel;
    sbtnAceptar: TfcShapeBtn;
    bbtnImprime: TfcShapeBtn;
    gbFechas: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtpDesde: TDateTimePicker;
    dtpHasta: TDateTimePicker;
    rbTipoPer: TRadioGroup;
    ppData: TppDBPipeline;
    ppCobUse: TppReport;
    ppDesigner1: TppDesigner;
    gbPeriodo: TGroupBox;
    sbAnoD: TwwDBSpinEdit;
    sbMesD: TwwDBSpinEdit;
    lblAno: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    pplblPeriodo: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel7: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel8: TppLabel;
    sbAnoH: TwwDBSpinEdit;
    sbMesH: TwwDBSpinEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    rbTipoSQL: TRadioGroup;
    pnlUProc: TPanel;
    lblUnidadProceso: TLabel;
    lblUse: TLabel;
    edtUProceso: TEdit;
    edtUPago: TEdit;
    dblcdUse: TwwDBLookupComboDlg;
    edtUse: TEdit;
    dblcdUPago: TwwDBLookupComboDlg;
    pnlRepr: TPanel;
    dblcdRepresentante: TwwDBLookupComboDlg;
    edtRepresentante: TwwDBEdit;
    lblRepre: TLabel;
    dblcdUProceso: TwwDBLookupComboDlg;
    procedure dblcUProcesoExit(Sender: TObject);
    procedure dblcdUPagoExit(Sender: TObject);
    procedure dblcdUseExit(Sender: TObject);
    procedure sbtnAceptarClick(Sender: TObject);
    procedure rbTipoPerClick(Sender: TObject);
    procedure sbMesDExit(Sender: TObject);
    procedure ppCobUsePreviewFormCreate(Sender: TObject);
    procedure bbtnImprimeClick(Sender: TObject);
    procedure sbMesHExit(Sender: TObject);
    procedure sbAnoDExit(Sender: TObject);
    procedure dblcdRepresentanteExit(Sender: TObject);
    procedure rbTipoSQLClick(Sender: TObject);
    procedure dblcdUProcesoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolCobUse: TFToolCobUse;
  xWhere, xSQL : String;

implementation

uses COBDM1, COB001, MsgDlgs;

{$R *.DFM}

procedure TFToolCobUse.dblcUProcesoExit(Sender: TObject);
begin
   xWhere := 'UPROID='''+dblcdUProceso.Text+'''';
   edtUProceso.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
   edtUPago.Text    := '';
   dblcdUse.Text    := '';
   edtUse.Text      := '';

   xSQL := 'SELECT * '
          +' FROM APO103'
          +' WHERE UPROID ='''+dblcdUProceso.Text+'''';

   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
end;

procedure TFToolCobUse.dblcdUPagoExit(Sender: TObject);
begin
   xWhere := 'UPROID='+QuotedStr(dblcdUProceso.Text)+' AND UPAGOID ='+QuotedStr(dblcdUPago.Text);
   edtUPago.Text := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
   edtUse.Text   := '';

   xSQL := 'SELECT * '
          +' FROM APO101'
          +' WHERE UPROID='+QuotedStr(dblcdUProceso.Text)+' '+
          'AND UPAGOID='+QuotedStr(dblcdUPago.Text)+' '+
          'ORDER BY USEID';
   DM1.FiltraCDS(DM1.cdsUSES,xSQL);
end;

procedure TFToolCobUse.dblcdUseExit(Sender: TObject);
begin
   xWhere := 'UPROID ='+QuotedStr(dblcdUProceso.Text)+' AND UPAGOID ='+QuotedStr(dblcdUPago.Text)+ ' AND USEID ='+QuotedStr(dblcdUse.Text);
   edtUSE.Text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
end;

procedure TFToolCobUse.sbMesDExit(Sender: TObject);
begin
	sbMesD.Text:=DM1.StrZero(sbMesD.Text,2);
  sbMesH.Text:=sbMesD.Text;
end;

procedure TFToolCobUse.rbTipoPerClick(Sender: TObject);
begin
    If rbTipoPer.ItemIndex = 0 Then
     begin
      gbFechas.Visible:=True;
      gbPeriodo.Visible:=False;
     end
    Else
     If rbTipoPer.ItemIndex = 1 Then
      begin
       gbFechas.Visible:=False;
       gbPeriodo.Visible:=True;
      end;
end;

procedure TFToolCobUse.sbtnAceptarClick(Sender: TObject);
var
   sDesde, sHasta, sAnoD, sMesD, sAnoH, sMesH : String;
begin
   If rbTipoSQL.ItemIndex = 0 Then
    begin
     If Length(Trim(edtUProceso.Text)) = 0 Then
      begin
       ErrorMsg(Caption, 'Unidad de Proceso no Existe');
       Exit;
      end;
     If Length(Trim(edtUPago.Text)) = 0 Then
      begin
       ErrorMsg(Caption, 'Unidad de Pago no Existe');
       Exit;
      end;
    {If Length(Trim(edtUse.Text)) = 0 Then
    begin
      ErrorMsg(Caption, 'USE no Existe');
      Exit;
    end;}
    end
   Else
    If rbTipoSQL.ItemIndex = 1 Then
     begin
      If Length(Trim(edtRepresentante.Text)) = 0 Then
       begin
        ErrorMsg(Caption, 'Representante no Existe');
        Exit;
       end;
     end;

    If rbTipoPer.ItemIndex = 0 Then
     begin
      If dtpHasta.DateTime < dtpDesde.DateTime Then
       begin
        ErrorMsg(Caption, 'La Fecha Hasta Debe Ser Menor a la Fecha Desde');
        Exit;
       end;
     end
    Else
     If rbTipoPer.ItemIndex = 1 Then
      begin
       If sbAnoH.Value < sbAnoD.Value Then
        begin
         ErrorMsg(Caption, 'El Periodo Hasta Debe Ser Menor al Periodo Desde');
         Exit;
        end;

       If sbMesH.Value < sbMesD.Value Then
        begin
         ErrorMsg(Caption, 'El Periodo Hasta Debe Ser Menor al Periodo Desde');
         Exit;
        end;
      end;

   Screen.Cursor := crHourGlass;

   sDesde := QuotedStr(FormatDateTime(wFormatFecha,dtpDesde.DateTime));
   sHasta := QuotedStr(FormatDateTime(wFormatFecha,dtpHasta.DateTime));

   sAnoD  := QuotedStr(DM1.StrZero(sbAnoD.Text,4));
   sMesD  := QuotedStr(DM1.StrZero(sbMesD.Text,2));

   sAnoH  := QuotedStr(DM1.StrZero(sbAnoH.Text,4));
   sMesH  := QuotedStr(DM1.StrZero(sbMesH.Text,2));

   If rbTipoSQL.ItemIndex = 0 Then
    begin
     xSQL := 'SELECT * FROM COB304'
            +' WHERE UPROID='+QuotedStr(dblcdUProceso.Text)+' '+
             'AND UPAGOID='+QuotedStr(dblcdUPago.Text)+' ';
     If Length(Trim(edtUse.Text)) > 0 Then
      xSQL := xSQL+'AND USEID ='+QuotedStr(dblcdUse.Text)+' ';
    end
   Else
    If rbTipoSQL.ItemIndex = 1 Then
     begin
      xSQL := 'SELECT * FROM COB303'
             +' WHERE REPRID='+QuotedStr(dblcdRepresentante.Text)+' ';
     end;

   If rbTipoPer.ItemIndex = 0 Then
    begin
     xSQL := xSQL+'AND TRANSFOPE>='+sDesde+' '+
                  'AND TRANSFOPE<='+sHasta;
    end
   Else
    If rbTipoPer.ItemIndex = 1 Then
     begin
      If rbTipoSQL.ItemIndex = 0 Then
       begin
        xSQL := xSQL+'AND (TRANSANO>='+sAnoD+' AND TRANSANO<='+sAnoH+') '+
                     'AND (TRANSMES>='+sMesD+' AND TRANSMES<='+sMesH+')';
       end
      Else
       If rbTipoSQL.ItemIndex = 1 Then
        begin
         xSQL := xSQL+'AND (RCOBANO>='+sAnoD+' AND RCOBANO<='+sAnoH+') '+
                      'AND (RCOBMES>='+sMesD+' AND RCOBMES<='+sMesH+')';
        end
     end;

   FPrincipal.Mtx.UsuarioSQL.Clear;
   FPrincipal.Mtx.FMant.wTabla := 'COB304';
   FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
   FPrincipal.Mtx.NewQuery;
end;

procedure TFToolCobUse.ppCobUsePreviewFormCreate(Sender: TObject);
begin
   ppCobUse.PreviewForm.ClientHeight := 500;
   ppCobUse.PreviewForm.ClientWidth  := 650;
   TppViewer(ppCobUse.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;

procedure TFToolCobUse.bbtnImprimeClick(Sender: TObject);
var
  x10 : Integer;
begin
   sbtnAceptar.Click;

   If DM1.cdsDetRegGlob.RecordCount = 0 Then
    begin
     Showmessage ('No Existe Información a Mostrar');
     Screen.Cursor := CrDefault;
     Exit;
    end;

   ppData.DataSource := DM1.dsDetRegGlob;
   ppCobUse.Template.FileName := wRutaRpt+'\RepCobxUse.rtm' ;
   ppCobUse.Template.LoadFromFile;

   If rbTipoPer.ItemIndex = 0 Then
    begin
     pplblPeriodo.Caption := 'Del '+ DateToStr(dtpDesde.DateTime)+' Al '+DateToStr(dtpHasta.DateTime);
    end
   Else
    If rbTipoPer.ItemIndex = 1 Then
     begin
      pplblPeriodo.Caption := 'Del Periodo  '+sbAnoD.Text+sbMesD.Text+' Hasta  '+sbAnoH.Text+sbMesH.Text;
     end;
   Screen.Cursor := CrDefault;
   DM1.cdsDetRegGlob.DisableControls;
   //ppDesigner1.ShowModal;
   ppCobUse.Print;
   DM1.cdsDetRegGlob.EnableControls;
   ppCobUse.Stop;

   x10 := Self.ComponentCount-1;
   While x10 >= 0 do
    begin
     If Self.Components[ x10 ].ClassName = 'TppGroup' Then
      begin
       Self.Components[ x10 ].Free ;
      end;
     x10:=x10-1;
    end;

   ppData.DataSource := nil;
   DM1.cdsDetRegGlob.First;
end;

procedure TFToolCobUse.sbMesHExit(Sender: TObject);
begin
   sbMesH.Text := DM1.StrZero(sbMesH.Text,2);
end;

procedure TFToolCobUse.sbAnoDExit(Sender: TObject);
begin
   sbAnoH.Text := sbAnoD.Text;
end;

procedure TFToolCobUse.dblcdRepresentanteExit(Sender: TObject);
begin
   xWhere := 'REPRID ='+ QuotedStr(dblcdRepresentante.Text);
   edtRepresentante.Text := DM1.DisplayDescrip('prvSQL', 'COB201', 'REPRAPENOM', xWhere, 'REPRAPENOM');
end;

procedure TFToolCobUse.rbTipoSQLClick(Sender: TObject);
begin
   If RbTipoSQL.ItemIndex = 0 Then
    begin
     pnlUProc.Visible := True;
     pnlRepr.Visible  := False;
    end
   Else
    If RbTipoSQL.ItemIndex = 1 Then
     begin
      pnlUProc.Visible := False;
      pnlRepr.Visible  := True;
     end;
end;

procedure TFToolCobUse.dblcdUProcesoExit(Sender: TObject);
begin
   xWhere := 'UPROID='''+dblcdUProceso.Text+'''';
   edtUProceso.Text := DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');
   edtUPago.Text := '';
   dblcdUse.Text := '';
   edtUse.Text   := '';

   xSQL := 'SELECT * '
          +' FROM APO103 '
          +' WHERE UPROID ='''+dblcdUProceso.Text+'''';

   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSQL);
   DM1.cdsUPago.Open;
end;

procedure TFToolCobUse.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

end.
