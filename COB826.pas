// Inicio: HPP_200910_COB - CREADA EN SAR2009-0409
// DAD2009IR-0090
Unit COB826;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, wwdbdatetimepicker, wwExport,
   Db, DBTables, DBGrids, ExtCtrls, shellapi, ComCtrls, ToolWin, Mask, wwdbedit,
   clipbrd, ImgList, wwclearbuttongroup, wwcheckbox,
   Wwdotdot, Wwdbcomb, Wwdatsrc, Wwquery, ppDB, ppDBPipe, ppDBBDE, ppComm,
   ppRelatv, ppProd, ppClass, ppReport,
   ppCache, ppPrnabl, ppVar, ppBands, ppCtrls;

Type
   TFResgesdom = Class(TForm)
      GroupBox1: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      dbdtpinicial: TwwDBDateTimePicker;
      dbdtpfinal: TwwDBDateTimePicker;
      btnprocesar: TBitBtn;
      Label3: TLabel;
      Label4: TLabel;
      dbgprocesar: TwwDBGrid;
      btncerrar: TBitBtn;
      btnexportar: TBitBtn;
      // Inicio: HPP_200935_COB por IREVILLA
      // Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
      //  BitBtn1: TBitBtn;
      btndetalle: TBitBtn;
      // Fin: HPP_200935_COB
      btnimprimir: TBitBtn;
      ppRResumen: TppReport;
      ppBDEPResumen: TppBDEPipeline;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppSummaryBand1: TppSummaryBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppShape1: TppShape;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppShape2: TppShape;
      ppShape3: TppShape;
      pplfechas: TppLabel;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppLine1: TppLine;
      pplimpresopor: TppLabel;
      ppLabel13: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppLine2: TppLine;
      Procedure btncerrarClick(Sender: TObject);
      Procedure btnprocesarClick(Sender: TObject);
      Procedure btnexportarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      // Inicio: HPP_200935_COB por IREVILLA
      // Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
      // Procedure BitBtn1Click(Sender: TObject);
      Procedure btndetalleClick(Sender: TObject);
      // Fin: HPP_200935_COB
      Procedure btnimprimirClick(Sender: TObject);
      // Inicio: HPP_200935_COB por IREVILLA
      // Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
      // Fin: HPP_200935_COB
   Private
      // Inicio: HPP_200935_COB por IREVILLA
      // Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
     procedure inicializa;
      // Fin: HPP_200935_COB
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FResgesdom: TFResgesdom;

Implementation

Uses COBDM1, COB827;

{$R *.dfm}

Procedure TFResgesdom.btncerrarClick(Sender: TObject);
Begin
   FResgesdom.Close;
End;

Procedure TFResgesdom.btnprocesarClick(Sender: TObject);
Var
   xSql: String;
Begin
  // Inicio: HPP_200935_COB por IREVILLA
  // Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
  inicializa;
  // Fin: HPP_200935_COB
   xSql := 'SELECT B.IDGTNDET, B.DESCRIPCION, COUNT(*) CANTIDAD'
         + '  FROM COB_GES_DOM_HIS A, (SELECT IDGTNDET,DESCRIPCION '
         + '                             FROM GES_REF_SEG_DET      '
         + '                            WHERE IDGTN = ''03'' ORDER BY IDGTNDET) B'
         + ' WHERE TRUNC(A.FECHORREG) >= ' + QuotedStr(dbdtpinicial.Text)
         + '   AND TRUNC(A.FECHORREG) <= ' + QuotedStr(dbdtpfinal.Text)
         + '   AND A.IDGTNDET          = B.IDGTNDET '
         + ' GROUP BY B.IDGTNDET, B.DESCRIPCION';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;

   // Inicio: HPP_200935_COB por IREVILLA
   // Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
   If DM1.cdsReporte.RecordCount = 0 Then
   Begin
     MessageDlg(' No existe información procesada Para estas fechas ', mtError,[mbOk],0);
     Exit;
   End;
   btndetalle.Enabled  := True;
   btnimprimir.Enabled := True;
   btnexportar.Enabled := True;
   // Fin: HPP_200935_COB

   dbgprocesar.Selected.Clear;
   dbgprocesar.Selected.Add('IDGTNDET'#9'9'#9'Código de~Gestión'#9#9);
   dbgprocesar.Selected.Add('DESCRIPCION'#9'35'#9'Descripción de~Gestión'#9#9);
   dbgprocesar.Selected.Add('CANTIDAD'#9'8'#9'Cantidad'#9#9);
   dbgprocesar.ApplySelected;
   TNumericField(DM1.cdsReporte.FieldByName('CANTIDAD')).DisplayFormat := '###,##0';

End;

Procedure TFResgesdom.btnexportarClick(Sender: TObject);
var
   // Inicio: HPP_200935_COB por IREVILLA
   // Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
   xArchivo : String;
   xAno, xMes, xDia : word;
   // Fin: HPP_200935_COB
Begin
   // Inicio: HPP_200935_COB por IREVILLA
   // Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='RESUM_GESDOM_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   xArchivo:=xArchivo;

   if FileExists(xArchivo+'.slk') then
      DeleteFile(xArchivo+'.slk');
   DM1.ExportaGridExcel(dbgprocesar,xArchivo);

{
   With dbgprocesar, dbgprocesar.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Res_Gesdom.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgprocesar.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
}
// Fin: HPP_200935_COB
End;

Procedure TFResgesdom.FormActivate(Sender: TObject);
Begin
   If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
// Inicio: HPP_200935_COB por IREVILLA
// Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
   inicializa;
// Fin: HPP_200935_COB
End;

Procedure TFResgesdom.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
End;

Procedure TFResgesdom.btndetalleClick(Sender: TObject);
Var
   xSql: String;
Begin
// Inicio: HPP_200935_COB por IREVILLA
// Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
// Detalle
  // xSql := 'SELECT A.USUREG, A.IDGTNDET, C.DESCRIPCION, A.IDEGESDOM, '
  xSql := 'SELECT B.ASOCODMOD, A.USUREG, A.IDGTNDET, C.DESCRIPCION, A.IDEGESDOM, '
// Fin: HPP_200935_COB
         + '       D.DESGESDOM, B.ASOAPENOM, A.FECHORREG, A.COMGES '
         + '  FROM COB_GES_DOM_HIS A, APO201 B, (SELECT IDGTNDET,DESCRIPCION '
         + '                                       FROM GES_REF_SEG_DET WHERE IDGTN= ''03'''
         + '                                      ORDER BY IDGTNDET) C,'
         + '       COB_GES_DOM D '
         + ' WHERE TO_DATE(A.FECHORREG) >= ' + QuotedStr(dbdtpinicial.Text)
         + '   AND TO_DATE(A.FECHORREG) <= ' + QuotedStr(dbdtpfinal.Text)
         + '   AND A.IDGTNDET            = ' + QuotedStr(DM1.cdsReporte.FieldByName('IDGTNDET').AsString)
         + '   AND A.IDGTNDET            = C.IDGTNDET '
         + '   AND A.IDEGESDOM           = D.IDEGESDOM '
         + '   AND A.ASOID               = B.ASOID';
   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSql);
   DM1.cdsReporte1.Open;
   xSql := ' SELECT ' + QuotedStr(dbdtpinicial.Text) + ' FECINI,' + QuotedStr(dbdtpfinal.Text) + ' FECFIN FROM DUAL';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;

   Try
      FdetGesdom := TFdetGesdom.Create(Self);
      FdetGesdom.ShowModal;
   Finally
      FdetGesdom.Free;
   End;
End;

Procedure TFResgesdom.btnimprimirClick(Sender: TObject);
Begin
  // Imprimir
   pplfechas.Caption := 'DEL ' + dbdtpinicial.Text + ' AL ' + dbdtpfinal.Text;
   pplimpresopor.Caption := 'Impreso por : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
   ppRResumen.Print;

End;
// Fin: HPP_200910_COB

procedure TFResgesdom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Inicio: HPP_200935_COB por IREVILLA
  DM1.cdsReporte.Close;
  DM1.cdsReporte.Filter:='';
  DM1.cdsReporte.IndexFieldNames:='';
  DM1.cdsReporte.Filtered := False;

  DM1.cdsReporte1.Close;
  DM1.cdsReporte1.Filter:='';
  DM1.cdsReporte1.IndexFieldNames:='';
  DM1.cdsReporte1.Filtered := False;

  DM1.cdsQry1.Close;
  DM1.cdsReporte1.Filter:='';
  DM1.cdsReporte1.IndexFieldNames:='';
  DM1.cdsReporte1.Filtered := False;

  Action := caFree;

// Fin: HPP_200935_COB
end;

// Inicio: HPP_200935_COB por IREVILLA
// Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
procedure TFResgesdom.inicializa;
var 
   xSql:String;
begin
  btndetalle.Enabled  := False;
  btnimprimir.Enabled := False;
  btnexportar.Enabled := False;
  xSql := 'SELECT B.IDGTNDET, B.DESCRIPCION, COUNT(*) CANTIDAD'
  +' FROM COB_GES_DOM_HIS A, (SELECT IDGTNDET,DESCRIPCION'
  +' FROM GES_REF_SEG_DET'
  +' WHERE IDGTN = ''03'' ORDER BY IDGTNDET) B'
  +' WHERE TRUNC(A.FECHORREG) >= ''01/01/2009'' AND TRUNC(A.FECHORREG) <= ''01/01/2009'''
  +' AND A.IDGTNDET = B.IDGTNDET GROUP BY B.IDGTNDET, B.DESCRIPCION';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   dbgprocesar.Selected.Clear;
   dbgprocesar.Selected.Add('IDGTNDET'#9'9'#9'Código de~Gestión'#9#9);
   dbgprocesar.Selected.Add('DESCRIPCION'#9'35'#9'Descripción de~Gestión'#9#9);
   dbgprocesar.Selected.Add('CANTIDAD'#9'8'#9'Cantidad'#9#9);
   dbgprocesar.ApplySelected;
   TNumericField(DM1.cdsReporte.FieldByName('CANTIDAD')).DisplayFormat := '###,##0';
   dbdtpinicial.SetFocus;
end;
// Fin: HPP_200935_COB


End.

