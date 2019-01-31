// Unidad               : COB456
// Formulario           : FAplDesOnp
// Fecha de Creación    : 01/03/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Muestra el detalle los montos descontados por la ONP.
// Actualizaciones      :
// HPC_201303_COB       : 13/03/2013 - Creación de la opción.
// SPP_201305_COB       : Se realiza el pase a producción a partir del HPC_201303_COB.
// HPC_201402_COB       :  Grabar Excesos en forma automatica
// SPP_201402_COB       : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
// HPC_201611_COB       : En reporte agregar descargo ONP
// HPC_201806_COB       : Exceso en Cronogramas Cerrados (ONP, BANCO)

unit COB456;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls, DB,
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
  wwdbdatetimepicker, Mask, ppBands, ppClass, ppCtrls, jpeg, ppVar,
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppParameter;
// Fin HPC_201806_COB 
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
type
  TFAplDesOnp = class(TForm)
    DBGDetRetorno: TwwDBGrid;
    dbgcabconIButton: TwwIButton;
    btnCerrar: TBitBtn;
    btnImpArc: TBitBtn;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    pnlAnoMes: TPanel;
    pnlNumOfi: TPanel;
    pnlFenGen: TPanel;
    btnValidaAsociado: TBitBtn;
    btnAplCuotas: TBitBtn;
// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
    shpInconsistencia: TShape;
    lblInconsistencia: TLabel;
    chbOrden: TCheckBox;
    btnExportar: TBitBtn;
    dbgDatos: TwwDBGrid;
    wwIButton1: TwwIButton;
    btnImprimir: TBitBtn;
    rgCuotas: TRadioButton;
    rgControl: TRadioButton;
    shpImprimir: TShape;
    ppdbRepCuotas: TppDBPipeline;
    pprRepCuotas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape14: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    lblTitulo01: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    lblTitulo02: TppLabel;
    ppImage1: TppImage;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel3: TppLabel;
    ppLabel8: TppLabel;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape18: TppShape;
    ppLabel19: TppLabel;
    ppLabel6: TppLabel;
    ppDBCalc2: TppDBCalc;
    pprRepControl: TppReport;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    ppdbRepControl: TppDBPipeline;
    ppParameterList1: TppParameterList;
// Fin HPC_201806_COB 
    ppHeaderBand4: TppHeaderBand;
    ppShape21: TppShape;
    ppShape20: TppShape;
    ppShape19: TppShape;
    ppShape17: TppShape;
    ppShape15: TppShape;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    lblTitulo03: TppLabel;
    ppLabel18: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppImage2: TppImage;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    lblNumOpe: TppLabel;
    lblFecOpe: TppLabel;
    ppLine5: TppLine;
    ppLabel46: TppLabel;
    ppLabel50: TppLabel;
    ppLabel56: TppLabel;
    ppDBText22: TppDBText;
    ppLabel57: TppLabel;
    ppShape16: TppShape;
    ppDBText7: TppDBText;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
// Inicio HPC_201611_COB       : En reporte agregar descargo ONP
    //lblPagFsc: TppLabel;
// Fin   HPC_201611_COB       : En reporte agregar descargo ONP
    ppLabel61: TppLabel;
    ppDBText9: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    lblNumPer: TppLabel;
    ppDBText25: TppDBText;
    lblMesDes: TppLabel;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    //ppDetailBand4: TppDetailBand;
    //ppFooterBand4: TppFooterBand;
    //ppSummaryBand4: TppSummaryBand;
    //ppdbRepControl: TppDBPipeline;
    //ppLabel17: TppLabel;
// Fin HPC_201806_COB
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
// Inicio HPC_201611_COB       : En reporte agregar descargo ONP
    ppDBText1: TppDBText;
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
    ppShape1: TppShape;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppDBText8: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
// Fin HPC_201806_COB 
// Fin   HPC_201611_COB       : En reporte agregar descargo ONP
    procedure btnCerrarClick(Sender: TObject);
    procedure btnImpArcClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);    
    procedure actulizaretorno(xOrden:String);    
    procedure btnValidaAsociadoClick(Sender: TObject);
    procedure btnAplCuotasClick(Sender: TObject);
    procedure DBGDetRetornoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure chbOrdenClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAplDesOnp: TFAplDesOnp;

implementation

uses COBDM1, COB457, COB458;

{$R *.dfm}

// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
procedure TFAplDesOnp.actulizaretorno(xOrden:String);
Var xSql,xWhere:String;
    xCanTot, xMonTot: Double;
begin
// Grabar Excesos en forma automatica
   If xOrden='S' Then
      xWhere:=' ORDER BY ASOAPENOMDNI'
   Else
      xWhere:=' ORDER BY ASOID';

   xSql := 'SELECT CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI, MONDES, ASOID, FLADES FROM COB_ONP_RET_DET '
         + 'WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+' '+xWhere;
// Grabar Excesos en forma automatica
   DM1.cdsDetRegCob.Close;
   DM1.cdsDetRegCob.DataRequest(xSql);
   DM1.cdsDetRegCob.Open;
   xCanTot := 0;
   xMonTot := 0;
   While Not DM1.cdsDetRegCob.Eof Do
   Begin
      xCanTot := xCanTot + 1;
      xMonTot := xMonTot + DM1.cdsDetRegCob.FieldByName('MONDES').AsFloat;
      DM1.cdsDetRegCob.Next;
   End;
   DM1.cdsDetRegCob.First;
   DBGDetRetorno.Selected.Clear;
   DBGDetRetorno.Selected.Add('CODPEN'#9'7'#9'Código de~Pensión'#9#9);
   DBGDetRetorno.Selected.Add('ASOAPENOMDNI'#9'52'#9'Apellidos y Nombre(s)'#9#9);
   DBGDetRetorno.Selected.Add('CODLEYPEN'#9'7'#9'Ley de~Pensión'#9#9);
   DBGDetRetorno.Selected.Add('CODPRE'#9'10'#9'Código de~Prestación'#9#9);
   DBGDetRetorno.Selected.Add('MONDES'#9'15'#9'Monto~Descontado'#9#9);
   DBGDetRetorno.Selected.Add('ASOID'#9'10'#9'Código~Derrama'#9#9);
   DBGDetRetorno.Selected.Add('FLADES'#9'10'#9'Descargado'#9#9);
   DBGDetRetorno.ApplySelected;
   TNumericField(DM1.cdsDetRegCob.FieldByName('MONDES')).DisplayFormat := '##,###,##0.00';
   DBGDetRetorno.ColumnByName('CODLEYPEN').FooterValue :='Total';
   DBGDetRetorno.ColumnByName('CODPRE').FooterValue := FloatToStrF(xCanTot, ffNumber, 6, 0);
   DBGDetRetorno.ColumnByName('MONDES').FooterValue := FloatToStrF(xMonTot, ffNumber, 10, 2);
end;

procedure TFAplDesOnp.btnCerrarClick(Sender: TObject);
begin
 FAplDesOnp.Close;
end;

procedure TFAplDesOnp.btnImpArcClick(Sender: TObject);
begin
   Try
      FImpDesOnp := TFImpDesOnp.create(Self);
      FImpDesOnp.ShowModal;
   Finally
      FImpDesOnp.Free;
   End;
   actulizaretorno('S');
end;

procedure TFAplDesOnp.FormActivate(Sender: TObject);
begin
   pnlNumOfi.Caption := DM1.cdsRegCob.FieldByName('NUMOFI').AsString;
   pnlAnoMes.Caption := Copy(DM1.cdsRegCob.FieldByName('PERCOB').AsString,1,4)+' - '+DM1.DesMes(StrToInt(Copy(DM1.cdsRegCob.FieldByName('PERCOB').AsString,5,2)),'N');
   pnlFenGen.Caption := DM1.cdsRegCob.FieldByName('FECGEN').AsString;
   actulizaretorno('N');
end;

// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP

// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
procedure TFAplDesOnp.btnValidaAsociadoClick(Sender: TObject);
Var xSql:String;
begin
   If DM1.cdsRegCob.FieldByName('FLADES').AsString = 'S' Then
   Begin
      MessageDlg('Información para este periodo ya fue descargado', mtInformation, [mbOk], 0);
      Exit;
   End;
  // Validar codigos de asociado
  If MessageDlg('¿ Seguro de actualizar los códigos del asociados ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
  Begin
     Screen.Cursor := crHourGlass;
     DM1.cdsDetRegCob.First;
     While Not DM1.cdsDetRegCob.Eof Do
     Begin
        xSql := 'SELECT ASOID FROM APO201 WHERE CODPENSION = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('CODPEN').AsString);
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSql);
        DM1.cdsQry.Open;
        xSql := 'UPDATE COB_ONP_RET_DET SET ASOID = '+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)+' WHERE CODPEN = '+QuotedStr(DM1.cdsDetRegCob.FieldByName('CODPEN').AsString)
        +' AND PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        DM1.cdsDetRegCob.Edit;
        DM1.cdsDetRegCob.FieldByName('ASOID').AsString := DM1.cdsQry.FieldByName('ASOID').AsString;
        DM1.cdsDetRegCob.ApplyUpdates(0);
        DM1.cdsDetRegCob.Next;
     End;
     DM1.cdsDetRegCob.First;
     Screen.Cursor := crDefault;
     MessageDlg('La actualización de códigos del asociado ha concluido', mtInformation, [mbOk], 0);
  End;
end;
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP

procedure TFAplDesOnp.btnAplCuotasClick(Sender: TObject);
Var xSql:String;
begin
   If DM1.cdsRegCob.FieldByName('FLADES').AsString = 'S' Then
   Begin
      MessageDlg('Información para este periodo ya fue descargado', mtInformation, [mbOk], 0);
      Exit;
   End;
   // Aplicación de cuotas
   xSql := 'SELECT COUNT(*) REGISTROS FROM COB_ONP_RET_DET WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+' AND ASOID IS NULL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   // Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
   If DM1.cdsQry.FieldByName('REGISTROS').AsInteger > 0 Then
   Begin
      MessageDlg('NO SE PUEDE REALIZAR EL DESCARGO, EXISTEN DOCENTES SIN CÓDIGO DE PENSIÓN EN EL MAESTRO DE ASOCIADOS', mtError, [mbOk], 0);
      DM1.cdsDetRegCob.First;
      Exit;
   End;
   // Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
  Try
     FAplCuotas := TFAplCuotas.create(Self);
     FAplCuotas.ShowModal;
  Finally
     FAplCuotas.Free;
  End;
end;

// Inicio HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
procedure TFAplDesOnp.DBGDetRetornoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   If (Length(Trim(DM1.cdsDetRegCob.FieldByName('ASOID').AsString))=0) Or (Trim(DM1.cdsDetRegCob.FieldByName('FLADES').AsString)<>'S') Then
     Begin
        DBGDetRetorno.Canvas.Font.Color := clFuchsia;
        DBGDetRetorno.DefaultDrawDataCell(rect, Field, State);
     End
   Else
     Begin
        DBGDetRetorno.Canvas.Font.Color := clNone;
        DBGDetRetorno.DefaultDrawDataCell(rect, Field, State);
     End;
end;

procedure TFAplDesOnp.chbOrdenClick(Sender: TObject);
begin
If chbOrden.Checked Then
   actulizaretorno('S')
Else
   actulizaretorno('N')
end;

procedure TFAplDesOnp.btnExportarClick(Sender: TObject);
var  xArchivo,xSQL : String;
  xAno, xMes, xDia : word;
begin
  xSQL := 'SELECT CODPEN, CODLEYPEN, CODPRE, ASOAPENOMDNI, MONDES, ASOID, FLADES FROM COB_ONP_RET_DET '
        + 'WHERE PERCOB = '+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' AND NUMOFI = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+' AND (ASOID IS NULL OR FLADES IS NULL)';
  DM1.cdsEjecuta.Close;
  DM1.cdsEjecuta.DataRequest(xSQL);
  DM1.cdsEjecuta.Open;
  If DM1.cdsEjecuta.RecordCount > 0 Then
     Begin
        decodedate(DM1.FechaSys,xAno,xMes,xDia);
        xArchivo := 'DET_INCON_ONP_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
        xArchivo := xArchivo;
        If FileExists(xArchivo+'.slk') Then DeleteFile(xArchivo+'.slk');
        DM1.ExportaGridExcel(dbgDatos,xArchivo);
     End;
end;

procedure TFAplDesOnp.btnImprimirClick(Sender: TObject);
var xSQL:String;
begin
If rgCuotas.Checked Then
   Begin
      xSQL:='SELECT X.UPROID,UPRONOM,X.UPAGOID,X.USEID,USENOM,ASOID,ASOCODMOD,ASOAPENOM, '+
            'CREDID,CRECUOTA,SUM(NVL(CREMTOCOB,0)) CREMTOCOB,CREDOCPAG,CREFPAG  '+
            'FROM CRE310 X,APO101 Y,APO102 Z WHERE  '+
            'CREFPAG='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'FOPERAC'))+' AND NROOPE='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'NROOPE'))+' '+
            'AND FORPAGID=''43'' AND CREESTID NOT IN (''04'',''13'',''99'') '+
            'AND X.UPROID=Y.UPROID(+) AND X.UPAGOID=Y.UPAGOID(+) AND X.USEID=Y.USEID(+) '+
            'AND X.UPROID=Z.UPROID(+) '+
            'GROUP BY X.UPROID,UPRONOM,X.UPAGOID,X.USEID,USENOM,ASOID,ASOCODMOD,ASOAPENOM, '+
            'CREDID,CRECUOTA,CREDOCPAG,CREFPAG '+
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
            'UNION ALL '+
            'SELECT '+
            'UPROID, '+
            ''''' UPRONOM, '+
            'UPAGOID, '+
            'USEID, '+
            ''''' USENOM, '+
            'ASOID, '+
            'ASOCODMOD, '+
            'ASOAPENOM, '+
            '''Cronograma Cerrado'' CREDID, '+
            '0 CRECUOTA, '+
            'IMPORTE CREMTOCOB, '+
            'NRO_OPERACION, '+
            'FEC_OPERACION '+
            'FROM DB2ADMIN.COB_DES_CRO_CERRADO_DET WHERE '+
            'FEC_OPERACION='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'FOPERAC'))+' AND NRO_OPERACION='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'NROOPE'))+' '+
// Fin HPC_201806_COB 
            'ORDER BY ASOAPENOM';
      DM1.cdsEjecuta.Close;
      DM1.cdsEjecuta.DataRequest(xSQL);
      DM1.cdsEjecuta.Open;
      If DM1.cdsEjecuta.RecordCount > 0 Then
         Begin
            lblTitulo02.Caption:='PERIODO: '+UpperCase(Copy(pnlAnoMes.Caption,7,20))+' - '+Copy(pnlAnoMes.Caption,1,4);
            pprRepCuotas.Print;
            pprRepCuotas.Stop;
         End;
         DM1.cdsEjecuta.Close;
   End;
If rgControl.Checked Then
   Begin
// Inicio HPC_201611_COB       : En reporte agregar descargo ONP
      xSQL:='SELECT DISTINCT ASOID FROM ( ' +
            'SELECT ASOID FROM CRE310 WHERE '+
            'CREFPAG='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'FOPERAC'))+'  '+
            'AND NROOPE='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'NROOPE'))+'  '+
            'AND FORPAGID=''43'' AND CREESTID NOT IN (''04'',''13'',''99'') GROUP BY ASOID '+
            'UNION ALL '+
            'select ASOID from cob_fsc_pagos_al_fsc '+
             'where FORPAGID=''43'' '+
              ' and to_char(FEC_CRE_COB_FSC,''yyyymm'')='+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' '+
              ' and EST_COB_COD NOT IN (''04'',''13'') '+
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO) 
            'UNION ALL '+
            'SELECT ASOID FROM COB_DES_CRO_CERRADO_DET '+
                   ' WHERE FEC_OPERACION='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'FOPERAC'))+' '+
                   ' AND NRO_OPERACION='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'NROOPE'))+'  '+
                   ' AND FORPAGID = ''43'' '+
                   ' AND FLGEST NOT IN (''04'', ''13'', ''99'') '+
// Fin HPC_201806_COB
             'GROUP BY ASOID )';

      lblNumPer.Caption:='0';
      If DM1.CountReg(xSQL) > 0 Then
         Begin
             lblNumPer.Caption:=IntToStr(DM1.CountReg(xSQL));
             xSQL:='SELECT SUM(NVL(MONDES,0)) MONRET, '+
                   'SUM(NVL(CREMTOCOB,0)) MONDES, '+
                   'SUM(NVL(DEVFSC,0)) MONDEV, '+
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)                   
                   'SUM(NVL(CREMTOCOB,0))+SUM(NVL(DEVFSC,0))+SUM(NVL(EXCESOS,0)) MONTOT, '+
                   'SUM(NVL(EXCESOS, 0)) MONTOTEXC, '+
                   'SUM(NVL(MONDES,0))-SUM(NVL(CREMTOCOB,0))-SUM(NVL(DEVFSC,0))-SUM(NVL(EXCESOS,0)) MONDIF FROM   '+
// Fin HPC_201806_COB
                   '(SELECT ASOID,SUM(NVL(MONDES,0)) MONDES FROM COB_ONP_RET_DET WHERE PERCOB='+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' '+
                   'AND NUMOFI='+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOFI').AsString)+' '+
                   'GROUP BY ASOID) X,(SELECT ASOID,SUM(NVL(CREMTOCOB,0)) CREMTOCOB FROM CRE310 '+
                   'WHERE CREFPAG='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'FOPERAC'))+' '+
                   'AND NROOPE='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'NROOPE'))+'  '+
                   'AND FORPAGID=''43'' AND CREESTID NOT IN (''04'',''13'',''99'') '+
                   'GROUP BY ASOID) Y, '+
                   '( select ASOID, SUM(IMP_COB_DEU) DEVFSC from cob_fsc_pagos_al_fsc '+
                      'where FORPAGID=''43'' '+
                       ' and to_char(FEC_CRE_COB_FSC,''yyyymm'')='+QuotedStr(DM1.cdsRegCob.FieldByName('PERCOB').AsString)+' '+
                       ' and EST_COB_COD NOT IN (''04'',''13'') '+
                       'GROUP BY ASOID '+
// Inicio HPC_201806_COB 
// Exceso en Cronogramas Cerrados (ONP, BANCO)
                   ') Z, '+

                   '(SELECT ASOID, SUM(NVL(IMPORTE, 0)) EXCESOS '+
                   ' FROM COB_DES_CRO_CERRADO_DET '+
                   ' WHERE FEC_OPERACION='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'FOPERAC'))+' '+
                   ' AND NRO_OPERACION='+QuotedStr(DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'NROOPE'))+'  '+
                   ' AND FORPAGID = ''43'' '+
                   ' AND FLGEST NOT IN (''04'', ''13'', ''99'') '+
                   ' GROUP BY ASOID) W '+


                   'WHERE X.ASOID=Y.ASOID(+) '+
                    ' AND X.ASOID=Z.ASOID(+) '+
                    ' AND X.ASOID=W.ASOID(+)';
// Fin HPC_201806_COB 
             DM1.cdsEjecuta.Close;
             DM1.cdsEjecuta.DataRequest(xSQL);
             DM1.cdsEjecuta.Open;
             lblNumOpe.Caption:=DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'NROOPE');
             lblFecOpe.Caption:=DM1.CrgDescrip('NUMOFI=' + QuotedStr(pnlNumOfi.Caption), 'COB_ONP_RET_CAB', 'FOPERAC');
             lblMesDes.Caption:=UpperCase(Copy(pnlAnoMes.Caption,7,20))+' - '+Copy(pnlAnoMes.Caption,1,4);
             pprRepControl.Print;
             pprRepControl.Stop;
         End;
         DM1.cdsEjecuta.Close;
// Fin HPC_201611_COB       : En reporte agregar descargo ONP
   End;

end;
// Fin HPC_201513_COB       : Envio y descargo cesantes 19990 - ONP
end.
