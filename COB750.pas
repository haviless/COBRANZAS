unit COB750;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdblook, Wwdbdlg, wwdbedit, StdCtrls,
  Mask, Wwdbspin, ExtCtrls, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppCache, ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppBands, ppViewr,
  ppTypes, ppEndUsr, Grids, Wwdbigrd, Wwdbgrid;

type
  TFRepCtasNoCob = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    bbtnImpDetallado: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    speAno: TwwDBSpinEdit;
    speMes: TwwDBSpinEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    dblcdFPago: TwwDBLookupComboDlg;
    dbeFPago: TwwDBEdit;
    GroupBox3: TGroupBox;
    dblcdUPro: TwwDBLookupComboDlg;
    dbeUPro: TwwDBEdit;
    dblcdUPago: TwwDBLookupComboDlg;
    dbeUPago: TwwDBEdit;
    dblcdUSE: TwwDBLookupComboDlg;
    dbeUSE: TwwDBEdit;
    bbtnImpResumen: TfcShapeBtn;
    ppdbRepRes: TppDBPipeline;
    ppRepRes: TppReport;
    ppdbRepDet: TppDBPipeline;
    ppRepDet: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    pplblTitulo: TppLabel;
    ppRepResTele: TppReport;
    ppRepDetTele: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel25: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel26: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppdbUSEResTele: TppDBText;
    ppdbUProResTele: TppDBText;
    ppDBText1: TppDBText;
    pplblUSE: TppLabel;
    ppDBText3: TppDBText;
    ppdbUPagoResTele: TppDBText;
//    ppHeaderBand2: TppHeaderBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel13: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel14: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel15: TppLabel;
    ppdbUProDet: TppDBText;
    ppLabel10: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine3: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppdbUPagoDet: TppDBText;
    ppdbUSEDet: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLabel47: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel22: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine4: TppLine;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine10: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppLabel28: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc10: TppDBCalc;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppSummaryBand3: TppSummaryBand;
    ppdbUSE: TppDBText;
    ppdbUPro: TppDBText;
    ppdbUPago: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel31: TppLabel;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppHeaderBand4: TppHeaderBand;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel37: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLabel39: TppLabel;
    ppdbUProDetTel: TppDBText;
    ppLabel32: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel58: TppLabel;
    ppLine11: TppLine;
    ppLine14: TppLine;
    ppDBCalc13: TppDBCalc;
    ppdbUPagoDetTel: TppDBText;
    ppdbUSEDetTel: TppDBText;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppGroupFooterBand14: TppGroupFooterBand;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine6: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine7: TppLine;
    ppLabel44: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel59: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure dblcdFPagoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure dblcdUProExit(Sender: TObject);
    procedure dblcdUPagoExit(Sender: TObject);
    procedure dblcdUSEExit(Sender: TObject);
    procedure bbtnImpResumenClick(Sender: TObject);
    procedure bbtnImpDetalladoClick(Sender: TObject);
    procedure ppRepResPreviewFormCreate(Sender: TObject);
    procedure ppRepDetPreviewFormCreate(Sender: TObject);
    procedure ppRepResTelePreviewFormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppRepDetTelePreviewFormCreate(Sender: TObject);
    procedure speAnoKeyPress(Sender: TObject; var Key: Char);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand8BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand9BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand13BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand7BeforePrint(Sender: TObject);
    procedure speMesExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepCtasNoCob: TFRepCtasNoCob;

implementation

uses COBDM1;

{$R *.DFM}

procedure TFRepCtasNoCob.FormCreate(Sender: TObject);
var
   xSQL, xPagoId : String;
   Present: TDateTime;
   nYear, nMonth, nDay : word;
begin
//GAR
   Screen.Cursor := crHourGlass;
   DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID', 'FLGPAGAUTDISK =''S''', 'FORPAGOID');
   DM1.cdsQry.First;
   While not DM1.cdsQry.Eof do
    begin
     If Length(xPagoId) = 0 Then
      xPagoId := 'FORPAGOID ='+QuotedStr(DM1.cdsQry.FieldByName('FORPAGOID').AsString)
     Else
      xPagoId := xPagoId+' OR FORPAGOID ='+QuotedStr(DM1.cdsQry.FieldByName('FORPAGOID').AsString);
     DM1.cdsQry.Next;
    end;

   xSQL := 'SELECT * FROM COB101'
          +' WHERE '+xPagoId;
          //+' WHERE FORPAGOABR ='+QuotedStr('PLA')
          //+' OR FORPAGOABR ='+QuotedStr('REG')
          //+' OR FORPAGOABR ='+QuotedStr('TEL');
   DM1.FiltraCDS(DM1.cdsFormaPago, xSQL);

   xSQL := 'SELECT * FROM APO101';
   DM1.FiltraCDS(DM1.cdsUSES, xSQL);

   xSQL := 'SELECT * FROM APO102';
   DM1.FiltraCDS(DM1.cdsUPro, xSQL);

   xSQL := 'SELECT * FROM APO103';
   DM1.FiltraCDS(DM1.cdsUPago, xSQL);

   Present := Now;
   DecodeDate(Present, nYear, nMonth, nDay);
   speAno.Value := nYear;
   speMes.Value := nMonth;
   If Length(speMes.Text) = 1 Then
    speMes.Text := DM1.StrZero(speMes.Text, 2);
   Screen.Cursor := crDefault;
end;

procedure TFRepCtasNoCob.dblcdFPagoExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'FORPAGOID ='+QuotedStr(dblcdFPago.Text);
   dbeFPago.Text := DM1.DisplayDescrip('prvSQL', 'COB101', 'FORPAGOID, FORPAGODES', xWhere, 'FORPAGODES');
   If (DM1.cdsQry.FieldByName('FORPAGOID').AsString = '01') Or (DM1.cdsQry.FieldByName('FORPAGOID').AsString = '09') Then
    begin
     dblcdUPro.Enabled  := True;
     dblcdUPago.Enabled := True;
     dblcdUSE.Enabled   := True;
    end
   Else
    begin
     dblcdUPro.Enabled  := False;
     dblcdUPago.Enabled := False;
     dblcdUSE.Enabled   := False;
    end;
end;

procedure TFRepCtasNoCob.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFRepCtasNoCob.bbtnCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TFRepCtasNoCob.dblcdUProExit(Sender: TObject);
var
   xWhere, xSQL : String;
begin
   If Length(Trim(dblcdUPro.Text)) > 0 Then
    begin
     xWhere := 'UPROID ='+QuotedStr(dblcdUPro.Text);
     dbeUPro.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
     xSQL := 'Select * From APO103'
            +' Where UPROID ='+QuotedStr(dblcdUPro.Text);
     DM1.FiltraCDS(DM1.cdsUPago, xSQL);
     xSQL := 'Select * From APO101'
            +' Where UPROID ='+QuotedStr(dblcdUPro.Text);
     DM1.FiltraCDS(DM1.cdsUSES, xSQL);
     dbeUPago.Clear;
     dbeUSE.Clear;
    end;
end;

procedure TFRepCtasNoCob.dblcdUPagoExit(Sender: TObject);
var
   xSQL, xWhere : String;
begin
   If Length(Trim(dblcdUPago.Text)) > 0 Then
    begin
     xWhere := 'UPROID ='+Quotedstr(dblcdUPro.Text)
              +' And UPAGOID ='+QuotedStr(dblcdUPago.Text);
     dbeUPago.Text := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
     xSQL := 'Select * From APO101'
            +' Where UPROID ='+QuotedStr(dblcdUPro.Text)
            +' And UPAGOID ='+QuotedStr(dblcdUPago.Text);
     DM1.FiltraCDS(DM1.cdsUSES, xSQL);
     dbeUSE.Clear;
    end
   Else
    dbeUPago.Clear;
end;

procedure TFRepCtasNoCob.dblcdUSEExit(Sender: TObject);
var
   xWhere : String;
begin
   If Length(Trim(dblcdUSE.Text)) > 0 Then
    begin
     xWhere := 'USEID ='+QuotedStr(dblcdUSE.Text)
              +' And UPROID ='+QuotedStr(dblcdUPro.Text)
              +' And UPAGOID ='+QuotedStr(dblcdUPago.Text);
     dbeUSE.Text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
    end
   Else
    dbeUSE.Clear;
end;

procedure TFRepCtasNoCob.bbtnImpResumenClick(Sender: TObject);
var
   xSQL : String;
   x10 : Integer;
begin
   If Length(dblcdFPago.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese la Forma de Pago', mtInformation, [mbOk], 0);
     dblcdFPago.SetFocus;
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   If (Trim(dblcdFPago.Text) = '01') Or (Trim(dblcdFPago.Text) = '09') Then
    begin //Si es Planilla Ministerial o Planilla de Regiones
     If Length(dblcdUPro.Text) > 0 Then
      begin //Si la Unidad de Proceso está llena
       If Length(dblcdUPago.Text) > 0 Then
        begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago está llena
         If Length(dblcdUSE.Text) > 0 Then //Si la Unidad de Proceso está llena y Si la Unidad de Pago está llena y la USE está llena
          begin
           xSQL := 'Select x.*, APO101.USEID From'
                  +' (Select UPROID, UPAGOID, USEID, SUM(CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA From CRE302'
                  +' Where CREANO = '+QuotedStr(speAno.Text)
                  +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And UPROID = '+QuotedStr(dblcdUPro.Text)
                  +' And UPAGOID = '+QuotedStr(dblcdUPago.Text)
                  +' And USEID ='+QuotedStr(dblcdUSE.Text)
                  +' And CREMTOCOB = 0'
                  +' Group By UPROID, UPAGOID, USEID) x, APO101'
                  +' Where x.UPROID = APO101.UPROID'
                  +' And x.UPAGOID = APO101.UPAGOID'
                  +' And x.USEID = APO101.USEID';
          end
         Else
          begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago está llena y la USE No está llena
           xSQL := 'Select x.*, APO101.USEID From'
                  +' (Select UPROID, UPAGOID, USEID, SUM(CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA From CRE302'
                  +' Where CREANO = '+QuotedStr(speAno.Text)
                  +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And UPROID = '+QuotedStr(dblcdUPro.Text)
                  +' And UPAGOID = '+QuotedStr(dblcdUPago.Text)
                  +' And CREMTOCOB = 0'
                  +' Group By UPROID, UPAGOID, USEID) x, APO101'
                  +' Where x.UPROID = APO101.UPROID'
                  +' And x.UPAGOID = APO101.UPAGOID'
                  +' And x.USEID = APO101.USEID';
          end;
        end
       Else
        begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago No está llena
         If Length(dblcdUSE.Text) = 0 Then
          begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago está Vacía y la USE está vacía
           xSQL := 'Select x.*, APO101.USEID From'
                  +' (Select UPROID, UPAGOID, USEID, SUM(CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA From CRE302'
                  +' Where CREANO = '+QuotedStr(speAno.Text)
                  +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And UPROID = '+QuotedStr(dblcdUPro.Text)
                  +' And CREMTOCOB = 0'
                  +' Group By UPROID, UPAGOID, USEID) x, APO101'
                  +' Where x.UPROID = APO101.UPROID'
                  +' And x.UPAGOID = APO101.UPAGOID'
                  +' And x.USEID = APO101.USEID';
          end
         Else
          begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago está vacía y la USE No está vacía
           xSQL := 'Select x.*, APO101.USEID From'
                  +' (Select UPROID, UPAGOID, USEID, SUM(CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA From CRE302'
                  +' Where CREANO = '+QuotedStr(speAno.Text)
                  +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And UPROID = '+QuotedStr(dblcdUPro.Text)
                  +' And USEID ='+QuotedStr(dblcdUSE.Text)
                  +' And CREMTOCOB = 0'
                  +' Group By UPROID, UPAGOID, USEID) x, APO101'
                  +' Where x.UPROID = APO101.UPROID'
                  +' And x.UPAGOID = APO101.UPAGOID'
                  +' And x.USEID = APO101.USEID';
          end;
        end;
      end
     Else //Si la Unidad de Proceso está Vacía
      begin
       If Length(dblcdUPago.Text) = 0 Then
        begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está Vacía
         If Length(dblcdUSE.Text) = 0 Then
          begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está Vacía y la USE está Vacía
           Beep;
           MessageDlg('Debe Ingresar la Unidad de Proceso'+#13+' o la Unidad de Pago'+#13+' o la USE', mtInformation, [mbOk], 0);
           dblcdUPro.SetFocus;
           Screen.Cursor := crDefault;
           Exit;
          end
         Else
          begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está Vacía y la USE está Llena
           xSQL := 'Select x.*, APO101.USEID From'
                  +' (Select UPROID, UPAGOID, USEID, SUM(CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA From CRE302'
                  +' Where CREANO = '+QuotedStr(speAno.Text)
                  +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And USEID ='+QuotedStr(dblcdUSE.Text)
                  +' And CREMTOCOB = 0'
                  +' Group By UPROID, UPAGOID, USEID) x, APO101'
                  +' Where x.UPROID = APO101.UPROID'
                  +' And x.UPAGOID = APO101.UPAGOID'
                  +' And x.USEID = APO101.USEID';
          end;
        end
       Else
        begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está llena
         If Length(dblcdUSE.Text) = 0 Then
          begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está llena y la USE está Vacía
           xSQL := 'Select x.*, APO101.USEID From'
                  +' (Select UPROID, UPAGOID, USEID, SUM(CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA From CRE302'
                  +' Where CREANO = '+QuotedStr(speAno.Text)
                  +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And UPAGOID = '+QuotedStr(dblcdUPago.Text)
                  +' And CREMTOCOB = 0'
                  +' Group By UPROID, UPAGOID, USEID) x, APO101'
                  +' Where x.UPROID = APO101.UPROID'
                  +' And x.UPAGOID = APO101.UPAGOID'
                  +' And x.USEID = APO201.USEID';
          end
         Else
          begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está llena y la USE está Llena
           xSQL := 'Select x.*, APO101.USEID From'
                  +' (Select UPROID, UPAGOID, USEID, SUM(CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA From CRE302'
                  +' Where CREANO = '+QuotedStr(speAno.Text)
                  +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And UPAGOID = '+QuotedStr(dblcdUPago.Text)
                  +' And USEID ='+QuotedStr(dblcdUSE.Text)
                  +' And CREMTOCOB = 0'
                  +' Group By UPROID, UPAGOID, USEID) x, APO101'
                  +' Where x.UPROID = APO101.UPROID'
                  +' And x.UPAGOID = APO101.UPAGOID'
                  +' And x.USEID = APO201.USEID';
          end;
        end;
      end;

     DM1.cdsQry2.Filter   := '';
     DM1.cdsQry2.Filtered := False;
     DM1.cdsQry2.IndexFieldNames := '';
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest(xSQL);
     DM1.cdsQry2.Open;
     DM1.cdsQry2.IndexFieldNames := 'UPROID; UPAGOID; USEID';

     If DM1.cdsQry2.RecordCount = 0 Then
      begin
       Beep;
       MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
       Screen.Cursor := crDefault;
       Exit;
      end;

     ppRepRes.Template.FileName  := wRutaRpt+'\RepResCtasNoCob.rtm';
     ppRepRes.Template.LoadFromFile;
     pplblTitulo.Caption := 'RESUMEN DE CUOTAS NO COBRADAS '+dblcdUPro.Text+'-'+DM1.StrZero(speMes.Text, 2)+'-'+speAno.Text;

     ppRepRes.Print;
     ppRepRes.Stop;
    end
   Else //Si es por TeleAhorro
    begin
     Beep;
     MessageDlg('Este Proceso tardará unos minutos', mtCustom, [mbOk], 0);
     {xSQL := 'Select ''AAA'' UPROID, ''AAA'' UPAGOID, ''AAA'' USEID,'
            +' 0.00 CREMTO, ''99999999'' CRECUOTA From TGE901'
            +' Where 1 <> 1';

     DM1.cdsQry2.Filter   := '';
     DM1.cdsQry2.Filtered := False;
     DM1.cdsQry2.IndexFieldNames := '';
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest(xSQL);
     DM1.cdsQry2.Open;
     DM1.cdsQry2.IndexFieldNames := 'UPROID; UPAGOID; USEID';

     xSQL := 'Select UPROID, UPAGOID, USEID, CREMTO, CRECUOTA From CRE302'
            +' Where CREANO = '+QuotedStr(speAno.Text)
            +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
            +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
            +' And CREMTOCOB = 0';

     DM1.cdsQry4.Filter   := '';
     DM1.cdsQry4.Filtered := False;
     DM1.cdsQry4.IndexFieldNames := '';
     DM1.cdsQry4.Close;
     DM1.cdsQry4.DataRequest(xSQL);
     DM1.cdsQry4.Open;
     DM1.cdsQry4.IndexFieldNames := 'UPROID; UPAGOID; USEID';

     DM1.cdsQry4.First;
     While Not DM1.cdsQry4.EOF do
      begin
       DM1.cdsQry2.SetKey;
       DM1.cdsQry2.FieldByName('UPROID').AsString  := DM1.cdsQry4.FieldByName('UPROID').AsString;
       DM1.cdsQry2.FieldByName('UPAGOID').AsString := DM1.cdsQry4.FieldByName('UPAGOID').AsString;
       DM1.cdsQry2.FieldByName('USEID').AsString   := DM1.cdsQry4.FieldByName('USEID').AsString;
       If Not DM1.cdsQry3.GotoKey Then
        begin
         DM1.cdsQry2.Append;
         DM1.cdsQry2.FieldByName('UPROID').AsString    := DM1.cdsQry4.FieldByName('UPROID').AsString;
         DM1.cdsQry2.FieldByName('UPAGOID').AsString   := DM1.cdsQry4.FieldByName('UPAGOID').AsString;
         DM1.cdsQry2.FieldByName('USEID').AsString     := DM1.cdsQry4.FieldByName('USEID').AsString;
         DM1.cdsQry2.FieldByName('CREMTO').AsFloat     := DM1.cdsQry4.FieldByName('CREMTO').AsFloat;
         DM1.cdsQry2.FieldByName('CRECUOTA').AsInteger := 1;
        end
       Else
        begin
         DM1.cdsQry2.Edit;
         DM1.cdsQry2.FieldByName('CREMTO').AsFloat     := DM1.cdsQry2.FieldByName('CREMTO').AsFloat + DM1.cdsQry4.FieldByName('CREMTO').AsFloat;
         DM1.cdsQry2.FieldByName('CRECUOTA').AsInteger := DM1.cdsQry2.FieldByName('CRECUOTA').AsInteger + 1;
        end;
       DM1.cdsQry4.Next;
      end;}

//Por Si acaso demora 6 Minutos
     xSQL := 'Select SUM(X.CREMTO) CREMTO, COUNT(X.CRECUOTA) CRECUOTA,'
            +' APO101.UPROID, APO101.UPAGOID, APO101.USEID From'
            +' (Select UPROID, UPAGOID, USEID, CREMTO, CRECUOTA From CRE302'
            +' Where CREANO = '+QuotedStr(speAno.Text)
            +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
            +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
            +' And CREMTOCOB = 0) X, APO101'
            +' Where X.UPROID = APO101.UPROID'
            +' And X.UPAGOID = APO101.UPAGOID'
            +' And X.USEID = APO101.USEID'
            +' Group By APO101.UPROID, APO101.UPAGOID, APO101.USEID';

{     xSQL := 'Select X.*, APO101.USEID From'
            +' (Select UPROID, UPAGOID, USEID, SUM(CREMTO) CREMTO,'
            +' COUNT(CRECUOTA) CRECUOTA From CRE302'
            +' Where CREANO = '+QuotedStr(speAno.Text)
            +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
            +' And FORPAGOID = '+QuotedStr(dblcdFPago.Text)
            +' And CREMTOCOB = 0'
            +' Group By UPROID, UPAGOID, USEID) X, APO101'
            +' Where X.UPROID = APO101.UPROID'
            +' And X.UPAGOID = APO101.UPAGOID And X.USEID = APO101.USEID';}

     DM1.cdsQry2.Filter   := '';
     DM1.cdsQry2.Filtered := False;
     DM1.cdsQry2.IndexFieldNames := '';
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest(xSQL);
     DM1.cdsQry2.Open;
     DM1.cdsQry2.IndexFieldNames := 'UPROID; UPAGOID; USEID';

     If DM1.cdsQry2.RecordCount = 0 Then
      begin
       Beep;
       MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
       Screen.Cursor := crDefault;
       Exit;
      end;  

     ppRepResTele.Template.FileName  := wRutaRpt+'\RepResCtasNoCobTel.rtm';
     ppRepResTele.Template.LoadFromFile;
     ppLabel27.Caption := 'RESUMEN DE CUOTAS NO COBRADAS '+DM1.StrZero(speMes.Text, 2)+'-'+speAno.Text;

     ppRepResTele.Print;
     ppRepResTele.Stop;
    end;

   DM1.cdsQry2.Close;

   Screen.Cursor := crDefault;

   x10 := Self.ComponentCount - 1;
   While x10 >= 0 do
    begin
     If Self.Components[x10].ClassName = 'TppGroup' Then
      begin
       Self.Components[x10].Free;
      end;
     x10 := x10-1;
    end;
end;

procedure TFRepCtasNoCob.bbtnImpDetalladoClick(Sender: TObject);
var
   xSQL : String;
   x10 : Integer;
begin
   If Length(dblcdFPago.Text) = 0 Then
    begin
     Beep;
     MessageDlg('Ingrese la Forma de Pago', mtInformation, [mbOk], 0);
     dblcdFPago.SetFocus;
     Exit;
    end;

   Screen.Cursor := crHourGlass;
   If (Trim(dblcdFPago.Text) = '01') Or (Trim(dblcdFPago.Text) = '09') Then
    begin //Si es Planilla Ministerial o Planilla de Regiones
     If Length(dblcdUPro.Text) > 0 Then
      begin //Si la Unidad de Proceso está llena
       If Length(dblcdUPago.Text) > 0 Then
        begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago está llena
         If Length(dblcdUSE.Text) > 0 Then //Si la Unidad de Proceso está llena y Si la Unidad de Pago está llena y la USE está llena
          begin
           xSQL := 'Select X.*, APO101.USEID From'
                  +' (Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID, SUM(A.CREMTO) CREMTO,'
                  +' COUNT(A.CRECUOTA) CRECUOTA, B.ASOAPENOM From CRE302 A, APO201 B'
                  +' Where A.CREANO = '+QuotedStr(speAno.Text)
                  +' And A.CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And A.FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And A.UPROID = '+QuotedStr(dblcdUPro.Text)
                  +' And A.UPAGOID = '+QuotedStr(dblcdUPago.Text)
                  +' And A.USEID = '+QuotedStr(dblcdUSE.Text)
                  +' And A.CREMTOCOB = 0 And A.ASOID = B.ASOID'
                  +' Group By A.ASOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOAPENOM) X, APO101'
                  +' Where X.UPROID = APO101.UPROID'
                  +' And X.UPAGOID  = APO101.UPAGOID'
                  +' And X.USEID    = APO101.USEID';
          end
         Else
          begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago está llena y la USE está Vacía
           xSQL := 'Select X.*, APO101.USEID From'
                  +' (Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID, SUM(A.CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA, B.ASOAPENOM From CRE302 A, APO201 B'
                  +' Where A.CREANO = '+QuotedStr(speAno.Text)
                  +' And A.CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And A.FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And A.UPROID = '+QuotedStr(dblcdUPro.Text)
                  +' And A.UPAGOID = '+QuotedStr(dblcdUPago.Text)
                  +' And A.CREMTOCOB = 0 And A.ASOID = B.ASOID'
                  +' Group By A.ASOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOAPENOM) X, APO101'
                  +' Where X.UPROID = APO101.UPROID'
                  +' And X.UPAGOID  = APO101.UPAGOID'
                  +' And X.USEID    = APO101.USEID';
          end;
        end
       Else
        begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago No está llena
         If Length(dblcdUSE.Text) = 0 Then
          begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago está Vacía y la USE está vacía
           xSQL := 'Select X.*, APO101.USEID From'
                  +' (Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID, SUM(A.CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA, B.ASOAPENOM From CRE302 A, APO201 B'
                  +' Where A.CREANO = '+QuotedStr(speAno.Text)
                  +' And A.CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And A.FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And A.UPROID = '+QuotedStr(dblcdUPro.Text)
                  +' And A.CREMTOCOB = 0 And A.ASOID = B.ASOID'
                  +' Group By A.ASOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOAPENOM) X, APO101'
                  +' Where X.UPROID = APO101.UPROID'
                  +' And X.UPAGOID  = APO101.UPAGOID'
                  +' And X.USEID    = APO101.USEID';
          end
         Else
          begin //Si la Unidad de Proceso está llena y Si la Unidad de Pago está vacía y la USE No está vacía
           xSQL := 'Select X.*, APO101.USEID From'
                  +' (Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID, SUM(A.CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA, B.ASOAPENOM From CRE302 A, APO201 B'
                  +' Where A.CREANO = '+QuotedStr(speAno.Text)
                  +' And A.CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And A.FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And A.UPROID = '+QuotedStr(dblcdUPro.Text)
                  +' And A.USEID = '+QuotedStr(dblcdUSE.Text)
                  +' And A.CREMTOCOB = 0 And A.ASOID = B.ASOID'
                  +' Group By A.ASOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOAPENOM) X, APO101'
                  +' Where X.UPROID = APO101.UPROID'
                  +' And X.UPAGOID  = APO101.UPAGOID'
                  +' And X.USEID    = APO101.USEID';
          end;
        end;
      end
     Else //Si la Unidad de Proceso está Vacía
      begin
       If Length(dblcdUPago.Text) = 0 Then
        begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está Vacía
         If Length(dblcdUSE.Text) = 0 Then
          begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está Vacía y la USE está Vacía
           Beep;
           MessageDlg('Debe Ingresar la Unidad de Proceso'+#13+' o la Unidad de Pago'+#13+' o la USE', mtInformation, [mbOk], 0);
           dblcdUPro.SetFocus;
           Screen.Cursor := crDefault;
           Exit;
          end
         Else
          begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está Vacía y la USE está Llena
           xSQL := 'Select X.*, APO101.USEID From'
                  +' (Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID, SUM(A.CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA, B.ASOAPENOM From CRE302 A, APO201 B'
                  +' Where A.CREANO = '+QuotedStr(speAno.Text)
                  +' And A.CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And A.FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And A.USEID = '+QuotedStr(dblcdUSE.Text)
                  +' And A.CREMTOCOB = 0 And A.ASOID = B.ASOID'
                  +' Group By A.ASOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOAPENOM) X, APO101'
                  +' Where X.UPROID = APO101.UPROID'
                  +' And X.UPAGOID  = APO101.UPAGOID'
                  +' And X.USEID    = APO101.USEID';
          end;
        end
       Else
        begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está llena
         If Length(dblcdUSE.Text) = 0 Then
          begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está llena y la USE está Vacía
           xSQL := 'Select X.*, APO101.USEID From'
                  +' (Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID, SUM(A.CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA, B.ASOAPENOM From CRE302 A, APO201 B'
                  +' Where A.CREANO = '+QuotedStr(speAno.Text)
                  +' And A.CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And A.FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And A.UPAGOID = '+QuotedStr(dblcdUPago.Text)
                  +' And A.CREMTOCOB = 0 And A.ASOID = B.ASOID'
                  +' Group By A.ASOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOAPENOM) X, APO101'
                  +' Where X.UPROID = APO101.UPROID'
                  +' And X.UPAGOID  = APO101.UPAGOID'
                  +' And X.USEID    = APO101.USEID';
          end
         Else
          begin //Si la Unidad de Proceso está Vacía y la Unidad de Pago está llena y la USE está Llena
           xSQL := 'Select X.*, APO101.USEID From'
                  +' (Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID, SUM(A.CREMTO) CREMTO,'
                  +' COUNT(CRECUOTA) CRECUOTA, B.ASOAPENOM From CRE302 A, APO201 B'
                  +' Where A.CREANO = '+QuotedStr(speAno.Text)
                  +' And A.CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
                  +' And A.FORPAGOID = '+QuotedStr(dblcdFPago.Text)
                  +' And A.UPAGOID = '+QuotedStr(dblcdUPago.Text)
                  +' And A.USEID = '+QuotedStr(dblcdUSE.Text)
                  +' And A.CREMTOCOB = 0 And A.ASOID = B.ASOID'
                  +' Group By A.ASOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOAPENOM) X, APO101'
                  +' Where X.UPROID = APO101.UPROID'
                  +' And X.UPAGOID  = APO101.UPAGOID';
          end;
        end;
      end;

     DM1.cdsQry3.Filter   := '';
     DM1.cdsQry3.Filtered := False;
     DM1.cdsQry3.IndexFieldNames := '';
     DM1.cdsQry3.Close;
     DM1.cdsQry3.DataRequest(xSQL);
     DM1.cdsQry3.Open;
     DM1.cdsQry3.IndexFieldNames := 'UPROID; UPAGOID; USEID';

     If DM1.cdsQry3.RecordCount = 0 Then
      begin
       Beep;
       MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
       Screen.Cursor := crDefault;
       Exit;
      end;

     ppRepDet.Template.FileName  := wRutaRpt+'\RepDetCtasNoCob.rtm';
     ppRepDet.Template.LoadFromFile;
     ppLabel15.Caption := 'DETALLE DE CUOTAS NO COBRADAS '+dblcdUPro.Text+'-'+DM1.StrZero(speMes.Text, 2)+'-'+speAno.Text;

     ppRepDet.Print;
     ppRepDet.Stop;
    end
   Else //Si es por TeleAhorro
    begin
     xSQL := 'Select X.*, APO101.USEID From'
            +' (Select A.ASOID, A.UPROID, A.UPAGOID, A.USEID,'
            +' SUM(A.CREMTO) CREMTO, COUNT(A.CRECUOTA) CRECUOTA,'
            +' B. ASOAPENOM From CRE302 A, APO201 B'
            +' Where A.CREANO = '+QuotedStr(speAno.Text)
            +' And A.CREMES   = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
            +' And A.FORPAGOID = '+QuotedStr(dblcdFPago.Text)
            +' And A.CREMTOCOB = 0'
            +' And A.ASOID = B.ASOID'
            +' Group By A.ASOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOAPENOM) X, APO101'
            +' Where X.UPROID = APO101.UPROID'
            +' And X.UPAGOID  = APO101.UPAGOID'
            +' And X.USEID    = APO101.USEID';

     DM1.cdsQry3.Filter   := '';
     DM1.cdsQry3.Filtered := False;
     DM1.cdsQry3.IndexFieldNames := '';
     DM1.cdsQry3.Close;
     DM1.cdsQry3.DataRequest(xSQL);
     DM1.cdsQry3.Open;
     DM1.cdsQry3.IndexFieldNames := 'UPROID; UPAGOID; USEID';

     If DM1.cdsQry3.RecordCount = 0 Then
      begin
       Beep;
       MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
       Screen.Cursor := crDefault;
       Exit;
      end;

     ppRepDetTele.Template.FileName  := wRutaRpt+'\RepDetCtasNoCobTel.rtm';
     ppRepDetTele.Template.LoadFromFile;
     ppLabel27.Caption := 'DETALLE DE CUOTAS NO COBRADAS -'+DM1.StrZero(speMes.Text, 2)+'-'+speAno.Text;

     ppRepDetTele.Print;
     ppRepDetTele.Stop;
    end;

   DM1.cdsQry3.Close;

   Screen.Cursor := crDefault;

   x10 := Self.ComponentCount - 1;
   While x10 >= 0 do
    begin
     If Self.Components[x10].ClassName = 'TppGroup' Then
      begin
       Self.Components[x10].Free;
      end;
     x10 := x10-1;
    end;
end;

procedure TFRepCtasNoCob.ppRepResPreviewFormCreate(Sender: TObject);
begin
   ppRepRes.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepRes.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFRepCtasNoCob.ppRepDetPreviewFormCreate(Sender: TObject);
begin
   ppRepDet.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepDet.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFRepCtasNoCob.ppRepResTelePreviewFormCreate(Sender: TObject);
begin
   ppRepResTele.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepResTele.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFRepCtasNoCob.ppRepDetTelePreviewFormCreate(Sender: TObject);
begin
   ppRepDetTele.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepDetTele.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFRepCtasNoCob.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsQry2.Filter               := '';
   DM1.cdsQry2.Filtered             := False;
   DM1.cdsQry2.IndexFieldNames      := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry3.Filter               := '';
   DM1.cdsQry3.Filtered             := False;
   DM1.cdsQry3.IndexFieldNames      := '';
   DM1.cdsQry3.Close;
   DM1.cdsFormaPago.Filter          := '';
   DM1.cdsFormaPago.Filtered        := False;
   DM1.cdsFormaPago.IndexFieldNames := '';
   DM1.cdsFormaPago.Close;
   DM1.cdsUPro.Filter               := '';
   DM1.cdsUPro.Filtered             := False;
   DM1.cdsUPro.IndexFieldNames      := '';
   DM1.cdsUPro.Close;
   DM1.cdsUPago.Filter              := '';
   DM1.cdsUPago.Filtered            := False;
   DM1.cdsUPago.IndexFieldNames     := '';
   DM1.cdsUPago.Close;
   DM1.cdsUSES.Filter               := '';
   DM1.cdsUSES.Filtered             := False;
   DM1.cdsUSES.IndexFieldNames      := '';
   DM1.cdsUSES.Close;
end;

procedure TFRepCtasNoCob.ppGroupHeaderBand3BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString);
   ppLabel45.Caption := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
end;

procedure TFRepCtasNoCob.ppGroupHeaderBand4BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPAGOID ='+QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString);
   ppLabel46.Caption := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
end;

procedure TFRepCtasNoCob.ppGroupHeaderBand8BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString);
   ppLabel53.Caption := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
end;

procedure TFRepCtasNoCob.ppGroupHeaderBand9BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPAGOID ='+QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString);
   ppLabel54.Caption := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
end;

procedure TFRepCtasNoCob.ppGroupHeaderBand13BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPAGOID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPAGOID').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString);
   ppLabel55.Caption := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPAGOID').AsString)
            +' And USEID ='+QuotedStr(DM1.cdsQry3.FieldByName('USEID').AsString);
   ppLabel56.Caption := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString);
   ppLabel57.Caption := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
end;

procedure TFRepCtasNoCob.ppGroupHeaderBand1BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString);
   ppLabel59.Caption := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
end;

procedure TFRepCtasNoCob.ppGroupHeaderBand7BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPAGOID').AsString)
            +' And USEID ='+QuotedStr(DM1.cdsQry3.FieldByName('USEID').AsString);
   ppLabel48.Caption := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   xWhere := 'UPAGOID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPAGOID').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsQry3.FieldByName('UPROID').AsString);
   ppLabel49.Caption := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
end;

procedure TFRepCtasNoCob.speAnoKeyPress(Sender: TObject; var Key: Char);
begin
   If Key In [' ', 'A'..'Z', 'a'..'z',
              '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
              '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
              ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
              '.', '-', '_'] Then
    Key := #0;
end;

procedure TFRepCtasNoCob.speMesExit(Sender: TObject);
begin
   speMes.Text := DM1.StrZero(speMes.Text, 2);
end;

end.
