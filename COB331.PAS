unit COB331;
// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB331
// Formulario           : FApruebaAjuste
// Fecha de Creación    : 23/11/2015
// Autor                : Ricardo Medina.
// Objetivo             : Aprobación de cancelación de Crédito por concepto de Ajuste
// Actualizaciones      :
// HPC_201523_COB       : Creacion de Opción
// HPC_201721_COB       : Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
// HPC_201733_COB       : Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)

//Inicio  HPC_201523_COB
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, DB, DBClient, StdCtrls,
  Buttons, DBGrids, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppEndUsr, ppDBBDE,
  ppBands, ppCache, ppCtrls, ppPrnabl, ppParameter, jpeg, ppVar;

type
  TFApruebaAjuste = class(TForm)
    DSAJUSTE: TDataSource;
    lblTituloAJUSTE: TLabel;
    grbfiltro: TGroupBox;
    GroupBox2: TGroupBox;
    DBGAPRUEBA: TwwDBGrid;
    btnAprobar: TBitBtn;
    fcShapeBtn3: TfcShapeBtn;
    btnFiltrar: TBitBtn;
    CDSAJUSTE: TClientDataSet;
    chkAprobados: TCheckBox;
    chkProcesados: TCheckBox;
    chkNoProcesados: TCheckBox;
    chkNoAprobador: TCheckBox;
    btnAnula: TSpeedButton;
    grbArea: TGroupBox;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
    //Label4: TLabel;
// Fin HPC_201721_COB
    Panel3: TPanel;
    edtAREA: TEdit;
    btnImprime: TSpeedButton;
    rpDetalleAJUSTE: TppReport;
    DSG1: TppDesigner;
    BDEP1: TppBDEPipeline;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel7: TppLabel;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel19: TppLabel;
    ppImage1: TppImage;
    lblPeriodoCartera: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    lblusuariocob: TppLabel;
    lblfecusuariocob: TppLabel;
    lblusuariocon: TppLabel;
    lblfecusuariocon: TppLabel;
    lblusuarioprocesa: TppLabel;
    lblfecusuarioprocesa: TppLabel;
    ppShape4: TppShape;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    lblimpreso: TppLabel;
    ppLabel16: TppLabel;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
    chkRechazados: TCheckBox;
// Fin HPC_201733_COB   
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGAPRUEBADblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edtMesKeyPress(Sender: TObject; var Key: Char);
    procedure edtSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnAprobarClick(Sender: TObject);
    procedure btnAnulaClick(Sender: TObject);
    procedure DBGAPRUEBARowChanged(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
    procedure chkAprobadosClick(Sender: TObject);
    procedure chkNoAprobadorClick(Sender: TObject);
    procedure chkProcesadosClick(Sender: TObject);
    procedure chkNoProcesadosClick(Sender: TObject);
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
    procedure chkRechazadosClick(Sender: TObject);
    procedure DBGAPRUEBADrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
// Fin HPC_201733_COB   
// Fin HPC_201721_COB    
  private
    { Private declarations }
    procedure cargadatos(VFILTRO: String);

  public
    { Public declarations }
    vsuma:double;
    xconsulta:String;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
    xcargo,xinstancia:String;
// Fin HPC_201721_COB
  end;

var
  FApruebaAjuste: TFApruebaAjuste;

implementation
Uses COBDM1;

{$R *.dfm}




procedure TFApruebaAjuste.fcShapeBtn3Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFApruebaAjuste.FormCreate(Sender: TObject);
VAR XSQL:String;
begin

   DBGAPRUEBA.Selected.Clear;
   DBGAPRUEBA.Selected.Add('NUMAJU'#9'15'#9'Numero~Ajuste'#9'F');
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
   DBGAPRUEBA.Selected.Add('IMPCARAJU'#9'14'#9'Imp. Saldo~Aplicar'#9'F');
   DBGAPRUEBA.Selected.Add('IMPAJU'#9'12'#9'Importe~Aplicado'#9'F');
   DBGAPRUEBA.Selected.Add('USUAPRCOB'#9'10'#9'Usuario'#9'F'#9'Jefatura');
   DBGAPRUEBA.Selected.Add('FECAPRCOB'#9'10'#9'Fecha'#9'F'#9'Jefatura');
   DBGAPRUEBA.Selected.Add('USUAPRCON'#9'10'#9'Usuario'#9'F'#9'Sub Jefatura');
   DBGAPRUEBA.Selected.Add('FECAPRCON'#9'10'#9'Fecha'#9'F'#9'Sub Jefatura');
// Fin HPC_201721_COB
   DBGAPRUEBA.Selected.Add('USUPRO'#9'10'#9'Usuario'#9'F'#9'Procesado');
   DBGAPRUEBA.Selected.Add('FECPRO'#9'10'#9'Fecha'#9'F'#9'Procesado');
   DBGAPRUEBA.Selected.Add('FECAJU'#9'10'#9'Fecha~Ajuste'#9'F');
// Inicio HPC_201721_COB
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
   DBGAPRUEBA.Selected.Add('USURECHAZA'#9'10'#9'Usuario'#9'F'#9'Rechazado');
   DBGAPRUEBA.Selected.Add('FECRECHAZA'#9'10'#9'Fecha'#9'F'#9'Rechazado');
// Fin HPC_201733_COB   
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
   XSQL:='SELECT CARGO,INSTANCIA FROM USERTABLE WHERE USERID=' + QuotedStr(DM1.wUsuario);
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(XSQL);
   DM1.cdsQry1.Open;
   If (Length(trim(DM1.cdsQry1.FieldByname('CARGO').AsString))=0) Then
   Begin
     ShowMessage('El Usuario no cuenta con Cargo registrado, verifique...');
     exit;
   End;
   xcargo:= DM1.cdsQry1.FieldByName('CARGO').AsString;
   xinstancia:= DM1.cdsQry1.FieldByName('INSTANCIA').AsString;
   DM1.xArea := xcargo;

   {DM1.xArea := Copy(DM1.CrgArea(DM1.wUsuario), 1, 3);
   XSQL:='Select USERID,AREA From USERTABLE '+
         'Where USERID in (Select A.USERID  '+
         '                  From TGE007 A, TGE006 B '+
         '                  Where A.GRUPOID IN (''GRPCONTASEDE'',''GRPCONTADM'') '+
         '                        and B.USERID=A.USERID '+
         '                        and B.FECEXP is null '+
         '                        and B.OFDESID=''01'') '+
         'and USERID='''+DM1.wUsuario+''' AND AREA=''COB''  ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(XSQL);
   DM1.cdsQry1.Open;
   If DM1.cdsQry1.RecordCount<>0 Then  DM1.xArea :='CNT';}
// Fin HPC_201721_COB

   edtAREA.Text:=DM1.xArea;
end;

procedure TFApruebaAjuste.DBGAPRUEBADblClick(Sender: TObject);
begin

  DBGAPRUEBA.Columns[0].ReadOnly  := True;
  DBGAPRUEBA.Columns[1].ReadOnly  := True;
  DBGAPRUEBA.Columns[2].ReadOnly  := True;
  DBGAPRUEBA.Columns[3].ReadOnly  := True;
  DBGAPRUEBA.Columns[4].ReadOnly  := True;
  DBGAPRUEBA.Columns[5].ReadOnly  := True;
  DBGAPRUEBA.Columns[6].ReadOnly  := True;
  DBGAPRUEBA.Columns[7].ReadOnly  := True;
  DBGAPRUEBA.Columns[8].ReadOnly  := True;
  DBGAPRUEBA.Columns[9].ReadOnly  := True;
  DBGAPRUEBA.Columns[10].ReadOnly  := True;
  DBGAPRUEBA.Columns[11].ReadOnly  := True;
  DBGAPRUEBA.Columns[12].ReadOnly  := True;
end;

procedure TFApruebaAjuste.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DM1.cdsQry1.Close;
 DM1.cdsQry1.IndexFieldNames:='';
 DM1.cdsQry2.Close;
 DM1.cdsQry2.IndexFieldNames:='';
end;

procedure TFApruebaAjuste.edtAnoKeyPress(Sender: TObject; var Key: Char);
begin
   If key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
   Begin
      Key := #0;
   End;
end;

procedure TFApruebaAjuste.edtMesKeyPress(Sender: TObject; var Key: Char);
begin
   If key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
   Begin
      Key := #0;
   End;
end;

procedure TFApruebaAjuste.edtSaldoKeyPress(Sender: TObject;
  var Key: Char);
begin
   If key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
   Begin
      Key := #0;
   End;
end;

procedure TFApruebaAjuste.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
end;

Procedure TFApruebaAjuste.cargadatos(VFILTRO: String);
VAR XSQL:String;
begin
  CDSAJUSTE.EmptyDataSet;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
  XSQL:='Select numaju, fecaju, impcaraju, impaju,impapl, usuaprcon, fecaprcon, usuaprcob, fecaprcob, usupro, fecpro, percar, refsal, usucre, feccre, codest, USURECHAZA, TRUNC(FECRECHAZA) FECRECHAZA '+
// Fin HPC_201733_COB
// Fin HPC_201721_COB
       'From  COB_APL_AJUSTE_CAB '+VFILTRO;

  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(XSQL);
  DM1.cdsQry1.Open;
  If DM1.cdsQry1.RecordCount=0 Then
  Begin
    ShowMessage('No existe información a mostrar según filtro seleccionado');
    exit;
  End;

  Dm1.cdsQry1.First;
  While Not Dm1.cdsQry1.Eof Do
  Begin
    CDSAJUSTE.Append;
    CDSAJUSTE.FieldByName('NUMAJU').AsString      := DM1.cdsQry1.FieldByName('NUMAJU').AsString;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
    CDSAJUSTE.FieldByName('IMPCARAJU').AsFloat    := DM1.cdsQry1.FieldByName('IMPAJU').AsFloat;
    CDSAJUSTE.FieldByName('IMPAJU').AsFloat       := DM1.cdsQry1.FieldByName('IMPAPL').AsFloat;
// Fin HPC_201721_COB
    CDSAJUSTE.FieldByName('USUAPRCON').AsString   := DM1.cdsQry1.FieldByName('USUAPRCON').AsString;
    CDSAJUSTE.FieldByName('USUAPRCOB').AsString   := DM1.cdsQry1.FieldByName('USUAPRCOB').AsString;
    CDSAJUSTE.FieldByName('USUPRO').AsString      := DM1.cdsQry1.FieldByName('USUPRO').AsString;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
    CDSAJUSTE.FieldByName('PERCAR').AsString      := DM1.cdsQry1.FieldByName('PERCAR').AsString;
// Fin HPC_201733_COB

    If  DM1.cdsQry1.FieldByName('FECAJU').AsString <> '' Then
        CDSAJUSTE.FieldByName('FECAJU').AsDateTime    := DM1.cdsQry1.FieldByName('FECAJU').AsDateTime;
    If  DM1.cdsQry1.FieldByName('FECAPRCON').AsString <> '' Then
        CDSAJUSTE.FieldByName('FECAPRCON').AsDateTime := DM1.cdsQry1.FieldByName('FECAPRCON').AsDateTime;
    If  DM1.cdsQry1.FieldByName('FECAPRCOB').AsString <> '' Then
        CDSAJUSTE.FieldByName('FECAPRCOB').AsDateTime := DM1.cdsQry1.FieldByName('FECAPRCOB').AsDateTime;
    If  DM1.cdsQry1.FieldByName('FECPRO').AsString <> '' Then
        CDSAJUSTE.FieldByName('FECPRO').AsDateTime := DM1.cdsQry1.FieldByName('FECPRO').AsDateTime;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
    CDSAJUSTE.FieldByName('CODEST').AsString      := DM1.cdsQry1.FieldByName('CODEST').AsString;
    CDSAJUSTE.FieldByName('USURECHAZA').AsString      := DM1.cdsQry1.FieldByName('USURECHAZA').AsString;
    CDSAJUSTE.FieldByName('FECRECHAZA').AsString      := DM1.cdsQry1.FieldByName('FECRECHAZA').AsString;
// Fin HPC_201733_COB


   Dm1.cdsQry1.Next;
  End;
  DBGAPRUEBA.DataSource := DSAJUSTE;


end;


procedure TFApruebaAjuste.btnFiltrarClick(Sender: TObject);
var xwhere : String;
begin
 xwhere:='Where numaju is not null and nvl(codest,''02'')<>''13'' ';
 If chkAprobados.Checked Then
     xwhere := xwhere+' and (usuaprcon is not null and usuaprcob is not null )';
 If chkNoAprobador.Checked Then
     xwhere :=xwhere+'  and (usuaprcon is null or usuaprcob is null) ';
 If chkProcesados.Checked Then
     xwhere := xwhere+' and (usupro is not null )';
 If chkNoProcesados.Checked Then
     xwhere := xwhere+' and (usupro is null) ';
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
 If chkRechazados.Checked Then
     xwhere := 'where (NVL(codest,''02'')=''13'') ';
// Fin HPC_201733_COB
  cargadatos(xwhere);
end;

procedure TFApruebaAjuste.btnAprobarClick(Sender: TObject);
var xsql:String;
begin

 If MessageDlg('¿Esta Seguro(a) de Aprobar el AJUSTE? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
 Begin
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
   //If DM1.xArea = 'COB' then
   If xinstancia = '2' then
// Fin HPC_201721_COB
   Begin
     If Length(Trim(CDSAJUSTE.FieldByName('USUAPRCOB').AsString))<>0 then
     Begin
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
       //ShowMessage('AJUSTE ya esta APROBADO por COBRANZAS');
       ShowMessage('AJUSTE ya esta APROBADO por JEFATURA');
// Fin HPC_201721_COB
       exit;
     End;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
     If ((Length(Trim(CDSAJUSTE.FieldByName('USUAPRCON').AsString))=0) And (xinstancia='2')) then
     Begin
       ShowMessage('AJUSTE No esta APROBADO por SUBJEFATURA');
       exit;
     End;
// Fin HPC_201721_COB
     xsql:='Update COB_APL_AJUSTE_CAB Set USUAPRCOB='''+DM1.wUsuario+''',FECAPRCOB=SYSDATE  WHERE NUMAJU='''+CDSAJUSTE.FieldByname('NUMAJU').AsString+''' ';
   End;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
   //If DM1.xArea = 'CNT' then
   If xinstancia = '1' then
// Fin HPC_201721_COB
   Begin
     If Length(Trim(CDSAJUSTE.FieldByName('USUAPRCON').AsString))<>0 then
     Begin
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
       //ShowMessage('AJUSTE ya esta APROBADO por CONTABILIDAD');
       ShowMessage('AJUSTE ya esta APROBADO por SUBJEFATURA');
// Fin HPC_201721_COB
       exit;
     End;
     xsql:='Update COB_APL_AJUSTE_CAB Set USUAPRCON='''+DM1.wUsuario+''',FECAPRCON=SYSDATE  WHERE NUMAJU='''+CDSAJUSTE.FieldByname('NUMAJU').AsString+''' ';
   End;

   Try
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
     btnAnula.Enabled:=true;
// Fin HPC_201721_COB
   except
     ShowMessage('No se pudo actualizar la aprobación del ajuste..');
     exit;
   end;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
   //If DM1.xArea = 'COB' then
   If xinstancia = '2' then
// Fin HPC_201721_COB
   Begin
     CDSAJUSTE.Edit;
     CDSAJUSTE.FieldByName('USUAPRCOB').AsString   := DM1.wUsuario;
     CDSAJUSTE.FieldByName('FECAPRCOB').AsDateTime := DM1.FechaSys;
   End;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
   //If DM1.xArea = 'CNT' then
   If xinstancia = '1' then
// Fin HPC_201721_COB
   Begin
     CDSAJUSTE.Edit;
     CDSAJUSTE.FieldByName('USUAPRCON').AsString   := DM1.wUsuario;
     CDSAJUSTE.FieldByName('FECAPRCON').AsDateTime := DM1.FechaSys;
   End;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
   btnFiltrarClick(self);
// Fin HPC_201733_COB   
 End;

end;

procedure TFApruebaAjuste.btnAnulaClick(Sender: TObject);
var xsql:String;
begin
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
  If MessageDlg('¿Está Seguro(a) de Rechazar el AJUSTE? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
// Fin HPC_201733_COB
 Begin
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
   //If DM1.xArea = 'COB' then
   If xinstancia = '2' then
// Fin HPC_201721_COB
   Begin
// Inicio HPC_201733_COB
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
     //xsql:='Update COB_APL_AJUSTE_CAB Set USUAPRCOB=null,FECAPRCOB=null  WHERE NUMAJU='''+CDSAJUSTE.FieldByname('NUMAJU').AsString+''' ';
     xsql:='Update COB_APL_AJUSTE_CAB Set USUAPRCOB=null,FECAPRCOB=null,USURECHAZA='+QuotedStr(DM1.wUsuario)+',FECRECHAZA=SYSDATE,INSRECHAZA='+xinstancia+', CODEST='+QuotedStr('13')+' WHERE NUMAJU='''+CDSAJUSTE.FieldByname('NUMAJU').AsString+''' ';
// Fin HPC_201733_COB   
   End;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
   //If DM1.xArea = 'CNT' then
   If xinstancia = '1' then
// Fin HPC_201721_COB
   Begin
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
     //xsql:='Update COB_APL_AJUSTE_CAB Set USUAPRCON=null,FECAPRCON=null  WHERE NUMAJU='''+CDSAJUSTE.FieldByname('NUMAJU').AsString+''' ';
      xsql:='Update COB_APL_AJUSTE_CAB Set USUAPRCON=null,FECAPRCON=null,USURECHAZA='+QuotedStr(DM1.wUsuario)+',FECRECHAZA=SYSDATE,INSRECHAZA='+xinstancia+', CODEST='+QuotedStr('13')+' WHERE NUMAJU='''+CDSAJUSTE.FieldByname('NUMAJU').AsString+''' ';
// Fin HPC_201733_COB   
   End;

   Try
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
     xsql:='UPDATE COB_APL_AJUSTE_DET SET CODEST='+QuotedStr('13')+' WHERE NUMAJU='''+CDSAJUSTE.FieldByname('NUMAJU').AsString+''' ';
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
// Fin HPC_201733_COB
   except
// Inicio HPC_201733_COB
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
     ShowMessage('No se pudo actualizar el Rechazo del ajuste..');
// Fin HPC_201733_COB
     exit;
   end;
// Inicio HPC_201733_COB
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
   btnFiltrarClick(self);
// Fin HPC_201733_COB
End;
end;

procedure TFApruebaAjuste.DBGAPRUEBARowChanged(Sender: TObject);
begin
// Inicio HPC_201733_COB
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
  {If  ((Length(trim(CDSAJUSTE.fIELDbYNAME('USUPRO').AsString))=0) and
      ((Length(trim(CDSAJUSTE.fIELDbYNAME('USUAPRCON').AsString))<>0) or (Length(trim(CDSAJUSTE.fIELDbYNAME('USUAPRCOB').AsString))<>0)) ) Then
    btnAnula.Enabled := True
  Else
    btnAnula.Enabled := False; }
  {If CDSAJUSTE.RecordCount >0 Then
  Begin}
      If (CDSAJUSTE.fIELDbYNAME('CODEST').AsString<>'13') And (Length(trim(CDSAJUSTE.fIELDbYNAME('USUPRO').AsString))=0) Then
      Begin
        btnAnula.Enabled := True
      End
      Else
      Begin
        btnAnula.Enabled := False;
        btnAprobar.Enabled := False;
      End;
  {End;}
// Fin HPC_201733_COB
end;

procedure TFApruebaAjuste.btnImprimeClick(Sender: TObject);
var xsql:String;
begin

  DM1.cdsQry1.Close;
  XSQL:='Select numaju, asoid, asocodmod, asoapenom, credid, impcaraju, impaju, impapl, codest, calificacion, cremtootor, crefotorg, usupro, fecpro, usucre, feccre '+
        'From COB_APL_AJUSTE_DET Where numaju='''+CDSAJUSTE.FieldByname('NUMAJU').AsString+''' ';
  DM1.cdsQry1.DataRequest(XSQL);
  DM1.cdsQry1.Open;
  If Dm1.cdsQry1.RecordCount=0 Then
  Begin
   ShowMessage('No existe información para imprimir, verifique el filtro e inténtelo nuevamente');
   exit;
  End;
  BDEP1.DataSource := DM1.dsQry1;
  lblusuariocob.Caption     := CDSAJUSTE.FieldByname('USUAPRCOB').AsString;
  lblfecusuariocob.Caption  := CDSAJUSTE.FieldByname('FECAPRCOB').AsString;
// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
  lblusuariocon.Caption     := CDSAJUSTE.FieldByname('USUAPRCON').AsString;
  lblfecusuariocon.Caption  := CDSAJUSTE.FieldByname('FECAPRCON').AsString;
// Fin HPC_201721_COB
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
  If chkRechazados.Checked Then
  Begin
      ppLabel12.Caption := 'RECHAZADO POR ';
      lblusuarioprocesa.Caption := CDSAJUSTE.FieldByname('USURECHAZA').AsString;
      lblfecusuarioprocesa.Caption  := CDSAJUSTE.FieldByname('FECRECHAZA').AsString;
  End
  Else
  Begin
      ppLabel12.Caption := 'PROCESADO POR ';
      lblusuarioprocesa.Caption := CDSAJUSTE.FieldByname('USUPRO').AsString;
      lblfecusuarioprocesa.Caption  := CDSAJUSTE.FieldByname('FECPRO').AsString;
  End;
// Fin HPC_201733_COB 
  lblimpreso.Caption        := 'Impreso por: '+dm1.wUsuario;
  lblPeriodoCartera.Caption := 'Periodo Cartera: '+CDSAJUSTE.FieldByname('PERCAR').AsString;
  rpDetalleAJUSTE.Print;
  rpDetalleAJUSTE.Cancel;

end;

procedure TFApruebaAjuste.FormShow(Sender: TObject);
begin
   If xconsulta <>'S' Then
   Begin
    chkNoAprobador.Checked := True;
    btnFiltrarClick(self);
   End;
end;

// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
procedure TFApruebaAjuste.chkAprobadosClick(Sender: TObject);
begin

 If chkAprobados.Checked then
  Begin
     chkNoProcesados.Checked:= False;
     chkNoAprobador.Checked:= False;
     chkProcesados.Checked:= False;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
     chkRechazados.Checked:= False;
     CDSAJUSTE.EmptyDataSet;
// Fin HPC_201733_COB 
  End;

end;
// Fin HPC_201721_COB

// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
procedure TFApruebaAjuste.chkNoAprobadorClick(Sender: TObject);
begin
  If chkNoAprobador.Checked then
  Begin
     chkAprobados.Checked:= False;
     chkNoProcesados.Checked:= False;
     chkProcesados.Checked:= False;
// Inicio HPC_201733_COB
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
     chkRechazados.Checked:= False;
     CDSAJUSTE.EmptyDataSet;
// Fin HPC_201733_COB 
  End;
end;
// Fin HPC_201721_COB

// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
procedure TFApruebaAjuste.chkProcesadosClick(Sender: TObject);
begin
  If chkProcesados.Checked then
  Begin
     chkAprobados.Checked:= False;
     chkNoAprobador.Checked:= False;
     chkNoProcesados.Checked:= False;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
     chkRechazados.Checked:= False;
     CDSAJUSTE.EmptyDataSet;
// Fin HPC_201733_COB
  End;
end;
// Fin HPC_201721_COB

// Inicio HPC_201721_COB
// Optimización del Proceso de aplicación por Ajuste (Cancelación Deudas Onerosas)
procedure TFApruebaAjuste.chkNoProcesadosClick(Sender: TObject);
begin
  If chkNoProcesados.Checked then
  Begin
     chkAprobados.Checked:= False;
     chkNoAprobador.Checked:= False;
     chkProcesados.Checked:= False;
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
     chkRechazados.Checked:= False;
     CDSAJUSTE.EmptyDataSet;
// Fin HPC_201733_COB
  End;
end;
// Fin HPC_201721_COB
// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
procedure TFApruebaAjuste.chkRechazadosClick(Sender: TObject);
begin
   If chkRechazados.Checked then
  Begin
     chkAprobados.Checked:= False;
     chkNoAprobador.Checked:= False;
     chkProcesados.Checked:= False;
     chkNoProcesados.Checked:= False;
     CDSAJUSTE.EmptyDataSet;
  End;
end;
// Fin HPC_201733_COB

// Inicio HPC_201733_COB   
//Mejoras en el proceso de Ajuste de créditos de menor cuantía (CDO)
procedure TFApruebaAjuste.DBGAPRUEBADrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   If (Length(TRIM(CDSAJUSTE.FieldByname('USURECHAZA').AsString)) > 0) Then
   Begin
         DBGAPRUEBA.Canvas.Font.Color := clRed;
         DBGAPRUEBA.DefaultDrawDataCell(Rect, Field, State);
   End;
end;
// Fin HPC_201733_COB
end.
//Fin HPC_201523_COB

