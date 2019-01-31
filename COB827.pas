// Inicio: HPP_200910_COB - CREADA EN SAR2009-0409
// DAD2009IR-0090

// Inicio: HPP_200935_COB por IREVILLA
// Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
// Se añade el campo ASOCODMOD en reporte
// Fin: HPP_200935_COB

Unit COB827;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   shellapi, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, wwExport, Dialogs,
   ppDB, ppDBPipe, ppDBBDE, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
   ppCache, ppComm, ppRelatv, ppProd, ppReport, ppEndUsr, ppParameter;
Type
   TFdetGesdom = Class(TForm)
    btncerrar: TBitBtn;
    BitBtn2: TBitBtn;
    dbgprocesar: TwwDBGrid;
    btnimprimir: TBitBtn;
    BDEPDetalle: TppBDEPipeline;
    ppRDetalle: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
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
    pplfechas: TppLabel;
    ppShape4: TppShape;
    ppLabel13: TppLabel;
    ppShape5: TppShape;
    ppLabel14: TppLabel;
    ppShape6: TppShape;
    ppLabel15: TppLabel;
    ppShape7: TppShape;
    ppLabel16: TppLabel;
    ppShape8: TppShape;
    ppLabel17: TppLabel;
    ppShape9: TppShape;
    ppLabel18: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    pplimpresopor: TppLabel;
// Inicio: HPP_200935_COB por IREVILLA
// Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
    ppShape2: TppShape;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
// Fin: HPP_200935_COB
    Procedure BitBtn2Click(Sender: TObject);
    Procedure FormActivate(Sender: TObject);
    Procedure btncerrarClick(Sender: TObject);
    Procedure btnimprimirClick(Sender: TObject);
    Procedure FormKeyPress(Sender: TObject; Var Key: Char);
    //    procedure FormCreate(Sender: TObject);
   Private

   Public
    // constructor Create(Sender: TObject;xFecha:string); overload;
   End;

Var
   FdetGesdom: TFdetGesdom;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFdetGesdom.BitBtn2Click(Sender: TObject);
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
   xArchivo:='DET_GESDOM_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
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

Procedure TFdetGesdom.FormActivate(Sender: TObject);
Begin
   dbgprocesar.Selected.Clear;
   dbgprocesar.Selected.Add('IDGTNDET'#9'9'#9'Código de~Gestión'#9#9);
   dbgprocesar.Selected.Add('DESCRIPCION'#9'32'#9'Descripción del~tipo de Gestión'#9#9);
// Inicio: HPP_200935_COB por IREVILLA
// Memorándum 808-2009-DM-COB   -   SAR-2009-0717   -   DAD-IR-2009-0150
//   dbgprocesar.Selected.Add('IDEGESDOM'#9'9'#9'Código del~Gestor'#9#9);
   dbgprocesar.Selected.Add('IDEGESDOM'#9'10'#9'Código del~Gestor'#9#9);
   dbgprocesar.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);   
// Fin: HPP_200935_COB
   dbgprocesar.Selected.Add('DESGESDOM'#9'42'#9'Apellidos y nombres~del gestor'#9#9);
   dbgprocesar.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y Nombres~del asociado'#9#9);
   dbgprocesar.Selected.Add('USUREG'#9'15'#9'Usuario que~registra la gestión'#9#9);
   dbgprocesar.Selected.Add('FECHORREG'#9'22'#9'Fecha y Hora~del registro'#9#9);
   dbgprocesar.Selected.Add('COMGES'#9'100'#9'Observación de la~Gestión'#9#9);
   dbgprocesar.ApplySelected;
End;

Procedure TFdetGesdom.btncerrarClick(Sender: TObject);
Begin
   FdetGesdom.Close;
End;

Procedure TFdetGesdom.btnimprimirClick(Sender: TObject);
Begin
   pplfechas.Caption := 'DEL ' + DM1.cdsQry1.FieldByName('FECINI').AsString + ' AL ' + DM1.cdsQry1.FieldByName('FECFIN').AsString;
   pplimpresopor.Caption := 'Impreso por : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');

   ppRDetalle.Print;
End;


Procedure TFdetGesdom.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
End;
// Fin: HPP_200910_COB

End.

