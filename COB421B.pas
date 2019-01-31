unit COB421B;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Mask, wwdbedit,
  DBCtrls, Wwdbspin, ComCtrls, wwdblook, fcButton, fcImgBtn,
  FileCtrl, fcShapeBtn, Wwdbdlg, Spin, wwriched, ppDB, ppDBPipe, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  db, ppReport, ppViewr, dbclient, dbtables, ppStrtch, ppRichTx, ppDBBDE,
  ppEndUsr, pptypes,ShellAPI;

type
  TFPlantEnv = class(TForm)
    pnlPlantillas: TPanel;
    dbgDetal: TwwDBGrid;
    dbgCabec: TwwDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    wwDBGrid3IButton: TwwIButton;
    wwDBGrid2IButton: TwwIButton;
    pgProc: TProgressBar;
    odLeer: TOpenDialog;
    pprRepResTel: TppReport;
    ppdbRepDcto: TppDBPipeline;
    pprRepResNTel: TppReport;
    pprRepDetalle: TppReport;
    ppHeaderBand3: TppHeaderBand;
    pplblcia2: TppLabel;
    pplblareapersonal2: TppLabel;
    pplbltitulo2: TppLabel;
    ppLabel28: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel29: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel30: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLine9: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine10: TppLine;
    ppLabel34: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel36: TppLabel;
    ppLine11: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText19: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc7: TppDBCalc;
    ppLine8: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel13: TppLabel;
    bbtnCargar: TfcShapeBtn;
    pnlPrevio: TPanel;
    Label12: TLabel;
    dbgPrevio: TwwDBGrid;
    bbtnCancelaCabecera: TfcShapeBtn;
    BitBtn4: TfcShapeBtn;
    BitBtn1: TfcShapeBtn;
    pnlCab: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label20: TLabel;
    dbeCodigo: TwwDBEdit;
    dbeNombre: TwwDBEdit;
    dbcbgrp: TDBCheckBox;
    bbtnOkC: TfcShapeBtn;
    bbtnCancC: TfcShapeBtn;
    pnlDet: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    dbeItem: TwwDBEdit;
    dbcbCero: TDBCheckBox;
    dbcbsepdec: TDBCheckBox;
    dbenroord: TwwDBEdit;
    rgtipagr: TRadioGroup;
    dblctipope: TComboBox;
    dbcbasc: TCheckBox;
    bbtnCancD: TfcShapeBtn;
    bbtnOkD: TfcShapeBtn;
    dbelong: TwwDBEdit;
    rgtipdet: TRadioGroup;
    dbevalor: TwwDBEdit;
    ppHeaderBand2: TppHeaderBand;
    pplblcia1: TppLabel;
    pplblareapersonal1: TppLabel;
    pplbltitulo1: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel16: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel17: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLine3: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine4: TppLine;
    ppLabel21: TppLabel;
    pplblsubtitulo1: TppLabel;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel23: TppLabel;
    ppLine7: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppHeaderBand1: TppHeaderBand;
    pplblCia: TppLabel;
    pplblAreaPersonal: TppLabel;
    pplbltitulo: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine5: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLabel10: TppLabel;
    pplblsubtitulo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText1: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBText6: TppDBText;
    ppLabel22: TppLabel;
    ppLabel4: TppLabel;
    dblcdcampo: TwwDBLookupComboDlg;
    pnlPlantUsa: TPanel;
    Label14: TLabel;
    dbgmodelo: TwwDBGrid;
    rptOficio: TppReport;
    wwDBRichEdit1: TwwDBRichEdit;
    bdeppOficio: TppBDEPipeline;
    ppDesigner1: TppDesigner;
    pnlTiempo: TPanel;
    lblInicio: TLabel;
    lblFin: TLabel;
    lblTiempo: TLabel;
    lblTInicio: TLabel;
    lblTFin: TLabel;
    lblTtiempo: TLabel;
    fcShapeBtn1: TfcShapeBtn;
    lblProceso: TLabel;
    ppHeaderBand4: TppHeaderBand;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine2: TppLine;
    ppLine12: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    plblTitTel: TppLabel;
    rchtPagina: TppRichText;
    ppDetailBand4: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText24: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel52: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppLine13: TppLine;
    Memo1: TMemo;
    dbcdEspBlank: TDBCheckBox;
    Label22: TLabel;
    bbtnTransferir: TBitBtn;
    Panel1: TPanel;
    mebusca: TMaskEdit;
    btnbuscar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure wwDBGrid3IButtonClick(Sender: TObject);
    procedure bbtnCancCClick(Sender: TObject);
    procedure bbtnOkCClick(Sender: TObject);
    procedure wwDBGrid2IButtonClick(Sender: TObject);
    procedure bbtnOkDClick(Sender: TObject);
    procedure bbtnCancDClick(Sender: TObject);
    procedure dbgCabecDblClick(Sender: TObject);
    procedure dbgDetalDblClick(Sender: TObject);
    procedure bbtnCargarClick(Sender: TObject);
    procedure dbgCabecKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgDetalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbtnEliminarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dbgCabecRowChanged(Sender: TObject);
    procedure dblcdcampoExit(Sender: TObject);
    procedure dbeNombreExit(Sender: TObject);
    procedure spDesdeExit(Sender: TObject);
    procedure spHastaExit(Sender: TObject);
    procedure dbcbCeroExit(Sender: TObject);
    procedure spLongCeroExit(Sender: TObject);
    procedure bbtnCancelaCabeceraClick(Sender: TObject);
    procedure dbcbsepdecExit(Sender: TObject);
    procedure dbcbascClick(Sender: TObject);
    procedure dbenroordExit(Sender: TObject);
    procedure dbcbascExit(Sender: TObject);
    procedure pprRepResTelPreviewFormCreate(Sender: TObject);
    procedure pprRepResNTelPreviewFormCreate(Sender: TObject);
    procedure pprRepDetallePreviewFormCreate(Sender: TObject);
    procedure pprRepResTelAfterPrint(Sender: TObject);
    procedure pprRepDetalleAfterPrint(Sender: TObject);
    procedure dbcbgrpExit(Sender: TObject);
    procedure rgtipagrClick(Sender: TObject);
    procedure dblctipopeExit(Sender: TObject);
    procedure rgtipagrExit(Sender: TObject);
    procedure dbelongExit(Sender: TObject);
    procedure rgtipdetClick(Sender: TObject);
    procedure dbevalorExit(Sender: TObject);
    procedure rgtipdetExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rptOficioPreviewFormCreate(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CreaArchivotxt(vxsql,xArchivo:string);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure bbtnTransferirClick(Sender: TObject);
    procedure btnbuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    xRegTxt : tstringlist;
    xSqlE,wModoPC, wModoPD : String;
    idPlantilla,xSQL: String;
    xCorreCampo,xTabla,xOrigen,xCorreWhere,xCorreWherex,xCorreWherey,xArea,xTipocorre : String;
    xcorre,xCorreoFicio,xCorreCadena : STring;
    xPaso : Boolean;
    xGlosa : STring;
    xConta,xCeros : Integer;
    xMonto : Double;
    xMontoAC,xMontoCE : double; // Montos para Activos y Cesantes
    xCampos : Array [1..100] of String;
    function cargaplantilla: String;    
  public
    { Public declarations }
    wFPagoId, wAno, wMes, wUProid, wBcoid,xNomArch : string;

  end;

  function WinExecAndWait32(FileName:String; Visibility:integer):integer;





var
  FPlantEnv: TFPlantEnv;
  xWhere, wflggrp : string;
  xAnaSitAso : String;
  HDes, HHas : String;

implementation

{$R *.DFM}

USES COBDM1, MsgDlgs, COB001,
  COB992;

function WinExecAndWait32(FileName:String; Visibility:integer):integer;
var
  zAppName:array[0..512] of char;
  zCurDir:array[0..255] of char;
  WorkDir:String;
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
  Resultado,exitCode: DWord;
begin
  StrPCopy(zAppName,FileName);
  GetDir(0,WorkDir);
  StrPCopy(zCurDir,WorkDir);
  FillChar(StartupInfo,Sizeof(StartupInfo),#0);
  StartupInfo.cb := Sizeof(StartupInfo);

  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  CreateProcess(nil,
    zAppName,                      { pointer to command line string }
    nil,                           { pointer to process security attributes}
    nil,                           { pointer to thread security attributes}
    False,                         { handle inheritance flag }
    CREATE_NEW_CONSOLE or          { creation flags }
    NORMAL_PRIORITY_CLASS,
    nil,                           { pointer to new environment block }
    nil,                           { pointer to current directory name }
    StartupInfo,                   { pointer to STARTUPINFO }
    ProcessInfo);

  {Espera a que termine la ejecucion}
  {Wait until execution finish}
  repeat
    exitCode := WaitForSingleObject( ProcessInfo.hProcess,1000);
    Application.ProcessMessages;
  until (exitCode <> WAIT_TIMEOUT);
  GetExitCodeProcess(ProcessInfo.hProcess,Resultado);
  MessageBeep(0);
  CloseHandle(ProcessInfo.hProcess );
  Result:=Resultado;
end;

procedure TFPlantEnv.FormActivate(Sender: TObject);
var
  xSQL : string;
begin
  // Campos del Archivo a Transferir
  xSQL:=' SELECT '
        +' CASE WHEN ARCHIVO=''CRE302''  THEN ''A'' ELSE '
        +' CASE WHEN ARCHIVO=''APO102''  THEN ''C'' ELSE '
        +' CASE WHEN ARCHIVO=''APO201''  THEN ''B'' END END END ALIAS,'
        +' CASE WHEN DESCRIPCION IS NULL THEN'
        +' CASE WHEN ARCHIVO='+QuotedStr('CRE302')+' THEN'
        +' '+QuotedStr('Cobza. - ')+'||TRIM(CAMPO)'
        +' ELSE'
        +' '+QuotedStr('Asociado - ')+'||TRIM(CAMPO)'
        +' END'
        +' ELSE'
        +' CASE WHEN ARCHIVO='+QuotedStr('CRE302')+' THEN'
        +' '+QuotedStr('Cobza. - ')+'||TRIM(DESCRIPCION)'
        +' ELSE'
        +' '+QuotedStr('Asociado - ')+'||TRIM(DESCRIPCION)'
        +' END'
        +' END DESCRI,'
        +' TIPO, CAMPO, ARCHIVO'
        +' FROM PLAN04 '
        +' WHERE'
        +' ARCHIVO IN('+QuotedStr('CRE302')+','+QuotedStr('APO201')+','+QuotedStr('APO102')+','+QuotedStr('COB319')+')';
  DM1.cdsCambios.Close;
  DM1.cdsCambios.DataRequest(xSQL);
  DM1.cdsCambios.Indexfieldnames:='DESCRI';
  DM1.cdsCambios.Open;

  dblcdcampo.lookuptable:=DM1.cdsCambios;
  dblcdcampo.lookupfield:='DESCRI';

  dblcdcampo.selected.clear;
  dblcdcampo.Selected.Add('DESCRI'#9'30'#9'Descripción');
  dblcdcampo.Selected.Add('CAMPO'#9'15'#9'Campo');
  dblcdcampo.Selected.Add('ARCHIVO'#9'15'#9'Archivo');

  // Plantilla a Usar
  DM1.cdsModelo.Close;
  DM1.cdsModelo.DataRequest('SELECT * FROM COB321');
  DM1.cdsModelo.IndexFieldNames := 'ITEM';
  DM1.cdsModelo.Open;

  dbgmodelo.selected.clear;
  dbgmodelo.Selected.Add('ITEM'#9'10'#9'Item');
  dbgmodelo.Selected.Add('NOMBRE'#9'30'#9'Descripción');
  dbgmodelo.Selected.Add('ARCHIVO'#9'15'#9'Archivo');
  dbgmodelo.Selected.Add('CAMPO'#9'15'#9'Campo');
  dbgmodelo.Selected.Add('TIPO'#9'15'#9'Tipo');
  dbgmodelo.Selected.Add('LONGITUD'#9'15'#9'Longitud');
  dbgmodelo.Selected.Add('DECIMALES'#9'15'#9'Decimal');
  dbgmodelo.Selected.Add('ORDASC'#9'10'#9'Orden');
  dbgmodelo.Applyselected;

  // Cabecera de Plantilla
  DM1.cdsPlantilla.Close;
  DM1.cdsPlantilla.DataRequest('SELECT * FROM COB323');
  DM1.cdsPlantilla.Open;
  DM1.cdsPlantilla.IndexFieldNames:='PLANTILLA';
  dbgCabec.datasource:=DM1.dsPlantilla;
  dbgCabec.Selected.Clear;
  dbgCabec.Selected.Add('PLANTILLA'+#9+'5'+#9+'Id');
  dbgCabec.Selected.Add('NOMBRE'+#9+'20'+#9+'Plantilla');
  dbgCabec.Selected.Add('FLGGRP'+#9+'1'+#9+'Agrup.');

  If DM1.cdsPlantilla.recordcount>0 Then
  begin
     xSQL:='SELECT * FROM COB324 WHERE PLANTILLA = '+QuotedStr(DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString);
     DM1.cdsPlanDet.Close;
     DM1.cdsPlanDet.IndexFieldNames:='ITEM';
     DM1.cdsPlanDet.Datarequest(xSQL);
     DM1.cdsPlanDet.Open;

     dbgdetal.selected.clear;
     dbgdetal.Selected.Add('ITEM'#9'10'#9'Item');
     dbgdetal.Selected.Add('NOMBRE'#9'30'#9'Descripción');
     dbgdetal.Selected.Add('ARCHIVO'#9'15'#9'Archivo');
     dbgdetal.Selected.Add('CAMPO'#9'15'#9'Campo');
     dbgdetal.Selected.Add('TIPO'#9'15'#9'Tipo');
     dbgdetal.Selected.Add('LONGITUD'#9'15'#9'Longitud');
     dbgdetal.Selected.Add('DECIMALES'#9'15'#9'Decimal');
     dbgdetal.Selected.Add('ORDASC'#9'10'#9'Orden');
     dbgdetal.Applyselected;
  end;

  mebusca.SetFocus;

end;

procedure TFPlantEnv.wwDBGrid3IButtonClick(Sender: TObject);
var
   xSQL : String;
begin
   pnlCab.Visible:=True;
   pnlCab.BringToFront;
   pnlPlantillas.Enabled:=False;
   pnlPlantUsa.Enabled:=False;

   dbeCodigo.Enabled:=False;

   xSQL:='SELECT MAX(NVL(PLANTILLA,'+QuotedStr('0')+')) NUMERO FROM COB323';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   DM1.cdsPlantilla.Append;
   DM1.cdsPlantilla.FieldByName('FLGGRP').AsString := 'N';

   If DM1.cdsQry.FieldByName('NUMERO').AsString='' Then
      DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString:='0001'
   Else
      DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString:=
         DM1.StrZero(IntToStr(StrToInt(TRIM(DM1.cdsQry.FieldByName('NUMERO').AsString))+1),4);

   wModoPC:='A';
end;

procedure TFPlantEnv.bbtnCancCClick(Sender: TObject);
begin
  pnlCab.Visible:=False;
  pnlPlantillas.Enabled:=True;
  pnlPlantUsa.Enabled:=True;
  DM1.cdsPlantilla.CancelUpdates;
end;

procedure TFPlantEnv.bbtnOkCClick(Sender: TObject);
var
  xSQL : String;
begin
   pnlCab.Visible:=False;
   pnlPlantillas.Enabled:=True;
   pnlPlantUsa.Enabled:=True;

   DM1.cdsPlantilla.ApplyUpdates(0);

   If wModoPC='M' Then
   begin
      If (wflggrp<>'S') and (dbcbgrp.checked) Then
      begin
         xSQL:='UPDATE COB324'
              +' SET FLGGRP='+QuotedStr('S')+', OPERAC=NULL'
              +' WHERE PLANTILLA='+QuotedStr(DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest( xSQL );
         DM1.cdsQry.Execute;
      end
      Else If (wflggrp='S') and (not dbcbgrp.checked) Then
      begin
         xSQL:='UPDATE COB324'
              +' SET FLGGRP=NULL, OPERAC=NULL'
              +' WHERE PLANTILLA='+QuotedStr(DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest( xSQL );
         DM1.cdsQry.Execute;
      end;
   end;

   xSQL:='SELECT * FROM COB324'
        +' WHERE PLANTILLA='+QuotedStr(DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString);
   DM1.cdsPlanDet.Close;
   DM1.cdsPlanDet.IndexFieldNames:='ITEM';
   DM1.cdsPlanDet.Datarequest( xSQL );
   DM1.cdsPlanDet.Open;

   dbgdetal.selected.clear;
   dbgdetal.Selected.Add('ITEM'#9'10'#9'Item');
   dbgdetal.Selected.Add('NOMBRE'#9'30'#9'Descripción');
   dbgdetal.Selected.Add('ARCHIVO'#9'15'#9'Archivo');
   dbgdetal.Selected.Add('CAMPO'#9'15'#9'Campo');
   dbgdetal.Selected.Add('TIPO'#9'15'#9'Tipo');
   dbgdetal.Selected.Add('LONGITUD'#9'15'#9'Longitud');
   dbgdetal.Selected.Add('DECIMALES'#9'15'#9'Decimal');
   dbgdetal.Selected.Add('ORDASC'#9'10'#9'Orden');
   dbgdetal.Applyselected;
end;

procedure TFPlantEnv.wwDBGrid2IButtonClick(Sender: TObject);
begin
   pnlDet.Visible:=True;
   pnlDet.Enabled:=True;
   pnlDet.BringToFront;
   pnlPlantillas.Enabled:=False;
   pnlPlantUsa.Enabled:=False;
   dbeItem.Enabled:=False;

   If DM1.cdsPlantilla.recordcount=0 Then exit;

   xSQL:='SELECT MAX(NVL(ITEM,0)) NUMERO '
        +'FROM COB324'
        +' WHERE PLANTILLA='+Dm1.cdsPlantilla.FieldByName('PLANTILLA').AsString;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;

   DM1.cdsPlanDet.Append;
   DM1.cdsPlanDet.FieldByName('PLANTILLA').AsString:=  DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString;
   If Dm1.cdsqry.recordcount=0 Then
      DM1.cdsPlanDet.FieldByName('ITEM').AsInteger:=1
   Else
      DM1.cdsPlanDet.FieldByName('ITEM').AsInteger:= DM1.cdsqry.FieldByName('NUMERO').AsInteger+1;

   DM1.cdsPlanDet.FieldByName('CEROIZQ').AsString:='N';
   DM1.cdsPlanDet.FieldByName('SEPDEC').AsString:='N';

   wModoPD:='A';

   // Setea control de tipo de operacion
   dblctipope.Visible:=False;
   If DM1.cdsPlantilla.FieldByName('FLGGRP').AsString='S' Then
   begin
      rgtipagr.Visible:=True;
      DM1.cdsPlandet.FieldByName('FLGGRP').AsString:='S';
      rgtipagr.itemindex:=0;
   end
   Else
   begin
      rgtipagr.Visible:=False;
      DM1.cdsPlandet.FieldByName('FLGGRP').Clear;
   end;

   DM1.cdsPlanDet.FieldByName('FLDASC').AsString:='N';
   dbcbasc.checked:=False;

   // Inicializa tipo de campo
   dblcdcampo.Visible:=True;
   dbevalor.Visible:=False;

   rgtipdet.itemindex:=0;
   DM1.cdsPlandet.FieldByName('TIPODET').AsString:='S';

   //
   dblcdcampo.text:='';
   dblcdcampo.SetFocus;
end;

procedure TFPlantEnv.bbtnOkDClick(Sender: TObject);
begin
   DM1.cdsPlandet.FieldByName('USUARIO').AsString:=DM1.wusuario;
   DM1.cdsPlandet.FieldByName('FREG').AsDateTime:=date;
   DM1.cdsPlandet.FieldByName('HREG').AsDateTime:=time;

   If  dbcdEspBlank.Checked then
      DM1.cdsPlanDet.FieldByName('TTRIM').AsString := 'S'
   Else
      DM1.cdsPlanDet.FieldByName('TTRIM').AsString := 'N';

   If dbcbasc.checked Then
      DM1.cdsPlandet.FieldByName('FLDASC').AsString:='S'
   Else
      DM1.cdsPlandet.FieldByName('FLDASC').AsString:='N';

      

   DM1.cdsPlandet.FieldByName('OPERAC').AsString:=dblctipope.text;
   DM1.cdsPlandet.FieldByName('NOMBRE').AsString:=dblcdcampo.text;

   DM1.cdsPlanDet.ApplyUpdates(0);

   pnlPlantillas.Enabled:=True;
   pnlPlantUsa.Enabled:=True;
   pnlDet.Visible:=False;
   pnlDet.Enabled:=False;
end;

procedure TFPlantEnv.bbtnCancDClick(Sender: TObject);
begin
   DM1.cdsPlanDet.CancelUpdates;
   pnlPlantillas.Enabled:=True;
   pnlPlantUsa.Enabled:=True;
   pnlDet.Visible:=False;
end;

procedure TFPlantEnv.dbgCabecDblClick(Sender: TObject);
begin
   If Dm1.cdsplantilla.recordcount>0 Then
   begin
      pnlCab.Visible:=True;
      pnlCab.BringToFront;
      DM1.cdsPlantilla.Edit;
      wModoPC:='M';

      // Flag de Agrupación
      wflggrp:=DM1.cdsPlantilla.FieldByName('FLGGRP').AsString;
   end;
end;

procedure TFPlantEnv.dbgDetalDblClick(Sender: TObject);
begin
   pnlDet.Visible:=True;
   pnlDet.BringToFront;
   pnlDet.Enabled:=True;
   dbeItem.Enabled:=False;
   DM1.cdsPlanDet.Edit;

   If (Dm1.cdsPlandet.FieldByName('TIPODET').AsString='S') Then
   begin
      rgtipdet.itemindex:=0;
      dblcdcampo.Visible:=True;
      dblcdcampo.text:=Dm1.cdsPlandet.FieldByName('NOMBRE').AsString;
      dbevalor.Visible:=False;

      // Búsqueda en campos de archivos utilizables
      Dm1.cdsCambios.setkey;
      Dm1.cdsCambios.FieldByName('DESCRI').AsString:=trim(Dm1.cdsPlandet.FieldByName('NOMBRE').AsString);
      If Dm1.cdsCambios.gotokey Then
      begin
         If (Dm1.cdsPlandet.FieldByName('TIPO').AsString='INTEGER') or
            (Dm1.cdsPlandet.FieldByName('TIPO').AsString='NUMBER') Then
         begin
            label13.Visible:=True;
            dbcbcero.Visible:=True;
         end
         Else
         begin
            label13.Visible:=False;
            dbcbcero.Visible:=False;
         end;

         If (Dm1.cdsPlandet.FieldByName('DECIMALES').AsInteger>0) Then
         begin
            label15.Visible:=True;
            dbcbsepdec.Visible:=True
         end
         Else
         begin
            label15.Visible:=False;
            dbcbsepdec.Visible:=False;
         end;
      end;
   end
   Else
   begin
      rgtipdet.itemindex:=1;
      dblcdcampo.text:='';
      dblcdcampo.Visible:=False;
      dbevalor.Visible:=True;
   end;

   If DM1.cdsPlantilla.FieldByName('FLGGRP').AsString='S' Then
   begin
      rgtipagr.Visible:=True;
      If DM1.cdsPlandet.FieldByName('FLGGRP').AsString='S' Then
      begin
         rgtipagr.itemindex:=0;
         dblctipope.Visible:=False;
      end
      Else
      begin
         rgtipagr.itemindex:=1;
         dblctipope.Visible:=True;
         dblctipope.text:=DM1.cdsPlandet.FieldByName('OPERAC').AsString;
      end;
   end
   Else
   begin
      rgtipagr.Visible:=False;
      dblctipope.Visible:=False;
   end;

   If DM1.cdsPlandet.FieldByName('FLDASC').AsString='S' Then
   begin
      dbenroord.Visible:=True;
      dbcbasc.checked:=True;
   end
   Else
   begin
      dbenroord.Visible:=False;
      dbcbasc.checked:=False;
   end;

   If DM1.cdsPlandet.FieldByName('FLGGRP').AsString='N' Then
   begin
      dbcbasc.Visible:=False;
      label19.Visible:=False;
   end
   Else
   begin
      dbcbasc.Visible:=True;
      label19.Visible:=True;
   end;
end;

procedure TFPlantEnv.bbtnCargarClick(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;

  pgProc.Visible:=True;
  pgProc.Max:=DM1.cdsModelo.RecordCount+
              DM1.cdsPlandet.RecordCount;
  pgProc.Min:=0;
  pgProc.Position:=1;

  xSQL:='DELETE FROM COB321';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  pgProc.Position:=pgProc.Position+DM1.cdsModelo.RecordCount;

  // Plantilla a Usar
  DM1.cdsModelo.Close;
  DM1.cdsModelo.DataRequest('SELECT * FROM COB321');
  DM1.cdsModelo.IndexFieldNames:='ITEM';
  DM1.cdsModelo.Open;

  dbgmodelo.selected.clear;
  dbgmodelo.Selected.Add('ITEM'#9'10'#9'Item');
  dbgmodelo.Selected.Add('NOMBRE'#9'30'#9'Descripción');
  dbgmodelo.Selected.Add('ARCHIVO'#9'15'#9'Archivo');
  dbgmodelo.Selected.Add('CAMPO'#9'15'#9'Campo');
  dbgmodelo.Selected.Add('TIPO'#9'15'#9'Tipo');
  dbgmodelo.Selected.Add('LONGITUD'#9'15'#9'Longitud');
  dbgmodelo.Selected.Add('DECIMALES'#9'15'#9'Decimal');
  dbgmodelo.Selected.Add('ORDASC'#9'10'#9'Orden');
  dbgmodelo.Selected.Add('TTRIM'#9'1'#9'Esp.');
  dbgmodelo.Applyselected;

  DM1.cdsPlandet.disablecontrols;
  DM1.cdsPlandet.First;
  while not DM1.cdsPlandet.Eof do
  begin
     Application.ProcessMessages;
     //** inserta en cob321
     DM1.cdsModelo.Insert;

     DM1.cdsModelo.FieldByName('ITEM').AsString      :=DM1.cdsPlanDet.FieldByName('ITEM').AsString;
     DM1.cdsModelo.FieldByName('CAMPO').AsString     :=DM1.cdsPlanDet.FieldByName('CAMPO').AsString;
     Dm1.cdsModelo.FieldByName('ARCHIVO').AsString   :=DM1.cdsPlandet.FieldByName('ARCHIVO').AsString;
     DM1.cdsModelo.FieldByName('NOMBRE').AsString    :=DM1.cdsPlanDet.FieldByName('NOMBRE').AsString;
     DM1.cdsModelo.FieldByName('TIPO').AsString      :=DM1.cdsPlanDet.FieldByName('TIPO').AsString;
     DM1.cdsModelo.FieldByName('CEROIZQ').AsString   :=DM1.cdsPlanDet.FieldByName('CEROIZQ').AsString;
     DM1.cdsModelo.FieldByName('SEPDEC').AsString    :=DM1.cdsPlanDet.FieldByName('SEPDEC').AsString;
     DM1.cdsModelo.FieldByName('LONGITUD').AsString  :=DM1.cdsPlanDet.FieldByName('LONGITUD').AsString;
     DM1.cdsModelo.FieldByName('FLDASC').AsString    :=DM1.cdsPlanDet.FieldByName('FLDASC').AsString;
     DM1.cdsModelo.FieldByName('ORDASC').AsString    :=DM1.cdsPlanDet.FieldByName('ORDASC').AsString;
     DM1.cdsModelo.FieldByName('FLGGRP').AsString    :=DM1.cdsPlanDet.FieldByName('FLGGRP').AsString;
     DM1.cdsModelo.FieldByName('OPERAC').AsString    :=DM1.cdsPlanDet.FieldByName('OPERAC').AsString;
     DM1.cdsModelo.FieldByName('LONGITUD').AsString  :=DM1.cdsPlanDet.FieldByName('LONGITUD').AsString;
     DM1.cdsModelo.FieldByName('DECIMALES').AsString :=DM1.cdsPlanDet.FieldByName('DECIMALES').AsString;
     DM1.cdsModelo.FieldByName('TIPODET').AsString   :=DM1.cdsPlanDet.FieldByName('TIPODET').AsString;
     DM1.cdsModelo.FieldByName('VALOR').AsString     :=DM1.cdsPlanDet.FieldByName('VALOR').AsString;
     DM1.cdsModelo.FieldByName('ALIAS').AsString     :=DM1.cdsPlanDet.FieldByName('ALIAS').AsString;
     DM1.cdsModelo.FieldByName('PLANTILLA').AsString :=DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString;
     DM1.cdsModelo.FieldByName('TTRIM').AsString     :=DM1.cdsPlanDet.FieldByName('TTRIM').AsString;

     pgProc.Position:=pgProc.Position+1;
     DM1.cdsModelo.Post;

     DM1.cdsPlandet.Next;
  end;
  DM1.cdsPlandet.enablecontrols;

  pgProc.Visible:=False;

  DM1.cdsModelo.ApplyUpdates(-1);

  Screen.Cursor:=crDefault;
end;

procedure TFPlantEnv.dbgCabecKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  xSQL : String;
begin
  If (key=VK_Delete) and (ssCtrl in Shift) Then
  begin
    If MessageDlg(' ¿ Eliminar Plantilla ? ' ,mtConfirmation, [mbYes, mbNo], 0)=mrYes Then
    begin
      If DM1.cdsPlantilla.recordcount>0 Then
      begin
         xSQL:='DELETE FROM COB324 WHERE PLANTILLA='+QuotedStr(DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest( xSQL );
         try
            DM1.cdsQry.Execute;
         except
         end;

         DM1.cdsPlantilla.Delete;
         DM1.cdsPlantilla.ApplyUpdates(0);
      end;
    end
  end;
end;


procedure TFPlantEnv.dbgDetalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_Delete) and (ssCtrl in Shift) Then
  begin
    If MessageDlg( ' ¿ Eliminar Registro ? ' ,mtConfirmation, [mbYes, mbNo], 0)=mrYes Then
    begin
      DM1.cdsPlandet.Delete;
      DM1.cdsPlanDet.ApplyUpdates( 0 );
    end
  end;
end;

procedure TFPlantEnv.bbtnEliminarClick(Sender: TObject);
begin
   If MessageDlg('¿Esta Seguro de Eliminar los Registros?', mtconfirmation,[mbYes,MbNo],0)=mrNo Then Exit;

   Screen.Cursor:=crHourGlass;
   pgProc.Visible:=True;
   pgProc.Max:=6;
   pgProc.Min:=0;
   pgProc.Position:=1;

   xSQL:='DELETE COB310 '
        +'WHERE ARCHIVO='''+DM1.cdsDetalle.FieldByname('ARCHIVO').AsString+''' AND '
        +'TRANSANO=''' +Copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString,1,4)+''' '
        +'AND TRANSMES=''' +Copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString,5,2)+'''';

   DM1.cdsQry.Close;
   pgProc.Position:=pgProc.Position+1;
   DM1.cdsQry.DataRequest(xSQL);
   pgProc.Position:=pgProc.Position+1;
   DM1.cdsQry.Execute;
   pgProc.Position:=pgProc.Position+1;

   DM1.cdsDetalle.Edit;
   pgProc.Position:=pgProc.Position+1;
   DM1.cdsDetalle.FieldByName('FL_IMPORT').Clear;
   pgProc.Position:=pgProc.Position+1;
   DM1.cdsDetalle.ApplyUpdates(-1);
   pgProc.Position:=pgProc.Position+1;
   pgProc.Visible:=False;
   Screen.Cursor:=crDefault;
   ShowMessage('Los Datos Importados se Eliminaron ');
end;


procedure TFPlantEnv.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 Then
  begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFPlantEnv.BitBtn1Click(Sender: TObject);
begin
   dbgPrevio.TitleFont.Size:=7;
   dbgPrevio.Font.Size     :=7;
   dbgPrevio.RefreshDisplay;
end;

procedure TFPlantEnv.BitBtn4Click(Sender: TObject);
begin
   dbgPrevio.TitleFont.Size:=8;
   dbgPrevio.Font.Size     :=8;
   dbgPrevio.RefreshDisplay;
end;

procedure TFPlantEnv.dbgCabecRowChanged(Sender: TObject);
var
  xSQL : string;
begin
  If Dm1.cdsplantilla.recordcount>0 Then
  begin
     idPlantilla := DM1.cdsplantilla.FieldByName('PLANTILLA').AsString;

     xSQL:='SELECT * FROM COB324 '
          +' WHERE PLANTILLA='+QuotedStr(DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString);
     DM1.cdsPlanDet.Close;
     DM1.cdsPlanDet.Datarequest(xSQL);
     DM1.cdsPlanDet.Open;
     DM1.cdsPlanDet.IndexFieldNames:='ITEM';     
     dbgdetal.selected.clear;
     dbgdetal.Selected.Add('ITEM'#9'10'#9'Item');
     dbgdetal.Selected.Add('NOMBRE'#9'30'#9'Descripción');
     dbgdetal.Selected.Add('ARCHIVO'#9'15'#9'Archivo');
     dbgdetal.Selected.Add('CAMPO'#9'15'#9'Campo');
     dbgdetal.Selected.Add('TIPO'#9'15'#9'Tipo');
     dbgdetal.Selected.Add('LONGITUD'#9'15'#9'Longitud');
     dbgdetal.Selected.Add('DECIMALES'#9'15'#9'Decimales');
     dbgdetal.Selected.Add('ORDASC'#9'10'#9'Orden');
     dbgdetal.Applyselected;
  end;
end;

procedure TFPlantEnv.dblcdcampoExit(Sender: TObject);
var
	xStr, xwhere : string;
  xi, xj, xk : integer;
begin
   If bbtnCancD.focused Then exit;

   If DM1.cdsCambios.Indexfieldnames<>'DESCRI' Then DM1.cdsCambios.Indexfieldnames:='DESCRI';

   If (
      (activecontrol.parent.name=dblcdcampo.parent.name) and
      (activecontrol.taborder<dblcdcampo.taborder)
      )
      or
      (
      (activecontrol.name='') and
      (activecontrol.parent.taborder<dblcdcampo.taborder)
      )
      Then
      exit;

   Dm1.cdsCambios.setkey;
   Dm1.cdsCambios.FieldByName('DESCRI').AsString:=trim(dblcdcampo.text);
   If not Dm1.cdsCambios.gotokey Then
   begin
      showmessage('Campo no es válido');
      dblcdcampo.SetFocus;
      exit;
   end
   Else
   begin
      xWhere:='PLANTILLA='+QuotedStr(DM1.cdsPlandet.FieldByName('PLANTILLA').AsString)
             +' AND ITEM<>'+DM1.cdsPlandet.FieldByName('ITEM').AsString
             +' AND CAMPO='+QuotedStr(Dm1.cdsCambios.FieldByName('CAMPO').AsString);
      If length(trim(DM1.DisplayDescrip('prvSQL','COB324','CAMPO',xWhere,'CAMPO')))>0 Then
      begin
         showmessage('Campo ya elegido');
         dblcdcampo.SetFocus;
         exit;
      end;
   end;

   //
   xStr:=Dm1.cdsCambios.FieldByName('TIPO').AsString;

   xi:=pos('(',xStr);
   xj:=pos(',',xStr);
   xk:=pos(')',xStr);

   // Inicializa nombre de campo y archivo
   DM1.cdsPlandet.FieldByName('CAMPO').AsString:=
      Dm1.cdsCambios.FieldByName('CAMPO').AsString;
   DM1.cdsPlandet.FieldByName('ALIAS').AsString:=
      Dm1.cdsCambios.FieldByName('ALIAS').AsString;
   DM1.cdsPlandet.FieldByName('ARCHIVO').AsString:=
      Dm1.cdsCambios.FieldByName('ARCHIVO').AsString;

   // Inicializa la parte decimal del campo
   DM1.cdsPlandet.FieldByName('TIPO').AsString:=copy(xStr,1,xi-1);

   // Inicializa la longitud del campo
   If (xj>0) and ((xj-xi-1)>0) Then
      DM1.cdsPlandet.FieldByName('LONGITUD').AsInteger:=strtoint(copy(xStr,xi+1,xj-xi-1))
   Else
      DM1.cdsPlandet.FieldByName('LONGITUD').AsInteger:=strtoint(copy(xStr,xi+1,xk-xi-1));

   // Inicializa la parte decimal del campo
   If (xj>0) and ((xk-xj-1)>0) Then
      DM1.cdsPlandet.FieldByName('DECIMALES').AsInteger:=strtoint(copy(xStr,xj+1,xk-xj-1));

   // Habilita separador decimal
   If (xj>0) Then
   begin
      label15.Visible:=True;
      dbcbsepdec.Visible:=True
   end
   Else
   begin
      label15.Visible:=False;
      dbcbsepdec.Visible:=False;
   end;

   // Habilita ceros a la izquierda
   If (copy(Dm1.cdsCambios.FieldByName('TIPO').AsString,1,7)='INTEGER') or
      (copy(Dm1.cdsCambios.FieldByName('TIPO').AsString,1,6)='NUMBER') Then
   begin
      label13.Visible:=True;
      dbcbcero.Visible:=True;
   end
   Else
   begin
      label13.Visible:=False;
      dbcbcero.Visible:=False;
   end;

   dbelong.SetFocus;
end;

procedure TFPlantEnv.dbeNombreExit(Sender: TObject);
begin
   If bbtnCancC.focused Then exit;
end;

procedure TFPlantEnv.spDesdeExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;
end;

procedure TFPlantEnv.spHastaExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;
end;

procedure TFPlantEnv.dbcbCeroExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=dbcbCero.parent.name) and
      (activecontrol.taborder<dbcbCero.taborder) Then
      exit;
end;

procedure TFPlantEnv.spLongCeroExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;
end;

procedure TFPlantEnv.bbtnCancelaCabeceraClick(Sender: TObject);
begin
   dbgPrevio.DataSource:=nil;
   pnlPrevio.Visible:=False;
end;

procedure TFPlantEnv.dbcbsepdecExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=dbcbsepdec.parent.name) and
      (activecontrol.taborder<dbcbsepdec.taborder) Then
      exit;
end;

procedure TFPlantEnv.dbcbascClick(Sender: TObject);
begin
   If dbcbasc.checked Then
   begin
      dbenroord.Visible:=True;
      dbenroord.SetFocus;
   end
   Else
   begin
      DM1.cdsPlandet.FieldByName('ORDASC').Clear;
      dbenroord.Visible:=False;
      bbtnOkD.SetFocus;
   end;
end;

procedure TFPlantEnv.dbenroordExit(Sender: TObject);
var
   xWhere : string;
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=dbenroord.parent.name) and
      (activecontrol.taborder<dbenroord.taborder) Then
      exit;

   If length(trim(dbenroord.text))>0 Then
   begin
      xWhere := 'PLANTILLA='+QuotedStr(DM1.cdsplantilla.FieldByName('PLANTILLA').AsString)+
                ' AND ITEM<>'+dbeitem.text+
                ' AND ORDASC='+dbenroord.text;
      If length(trim(DM1.DisplayDescrip('prvSQL','COB324','ITEM',xWhere,'ITEM')))>0 Then
      begin
         showmessage('Orden ya fué definido en detalle');
         dbenroord.SetFocus;
         exit
      end;
   end
   Else
   begin
      showmessage('Orden no es válido');
      dbenroord.SetFocus;
      exit
   end;

   bbtnOKd.SetFocus;
end;

procedure TFPlantEnv.dbcbascExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=dbcbasc.parent.name) and
      (activecontrol.taborder<dbcbasc.taborder) Then
      exit;

   If dbcbasc.checked Then
      dbenroord.SetFocus
   Else
      bbtnOkd.SetFocus;
end;

procedure TFPlantEnv.pprRepResTelPreviewFormCreate(Sender: TObject);
begin
   pprRepResTel.PreviewForm.WindowState:=WsMaximized;
   TppViewer(pprRepResTel.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFPlantEnv.pprRepResNTelPreviewFormCreate(Sender: TObject);
begin
   pprRepResNTel.PreviewForm.WindowState:=WsMaximized;
   TppViewer(pprRepResNTel.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFPlantEnv.pprRepDetallePreviewFormCreate(Sender: TObject);
begin
   pprRepDetalle.PreviewForm.WindowState:=WsMaximized;
   TppViewer(pprRepDetalle.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFPlantEnv.pprRepResTelAfterPrint(Sender: TObject);
var
   x : integer;
begin
   x:=pprRepResTel.GroupCount-1;
   While x>=0 do
   begin
      pprRepResTel.Groups[x].Free;
      x:=x-1;
   end;
end;

procedure TFPlantEnv.pprRepDetalleAfterPrint(Sender: TObject);
var
   x : integer;
begin
   x:=pprRepDetalle.GroupCount-1;
   While x>=0 do
   begin
      pprRepDetalle.Groups[x].Free;
      x:=x-1;
   end;
end;

procedure TFPlantEnv.dbcbgrpExit(Sender: TObject);
begin
   If bbtnCancC.focused Then exit;

   If (activecontrol.parent.name=dbcbgrp.parent.name) and
      (activecontrol.taborder<dbcbgrp.taborder) Then
      exit;
end;

procedure TFPlantEnv.rgtipagrClick(Sender: TObject);
begin
   If rgtipagr.itemindex=0 Then
   begin
      dblctipope.Visible:=False;
      DM1.cdsPlandet.FieldByName('FLGGRP').AsString:='S';
      dblctipope.text:='';
      dbcbasc.Visible:=True;
      label19.Visible:=True;
      dbcbasc.SetFocus;
   end
   Else
   begin
      dblctipope.Visible:=True;
      DM1.cdsPlandet.FieldByName('FLGGRP').AsString:='N';
      dbcbasc.Visible:=False;
      label19.Visible:=False;
      dblctipope.SetFocus;
   end;
end;

procedure TFPlantEnv.dblctipopeExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (
      (activecontrol.parent.name=dblctipope.parent.name) and
      (activecontrol.taborder<dblctipope.taborder)
      )
      or
      (
      (activecontrol.name='') and
      (activecontrol.parent.taborder<dblctipope.taborder)
      )
      Then
      exit;

   If (dblctipope.text <> 'CONTADOR') and
      (dblctipope.text <> 'SUMATORIA') Then
   begin
      showmessage('Tipo de operación no es válido');
      dblctipope.SetFocus;
      exit;
   end;
end;

procedure TFPlantEnv.rgtipagrExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=rgtipagr.parent.name) and
      (activecontrol.taborder<rgtipagr.taborder) Then
      exit;
end;

procedure TFPlantEnv.dbelongExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=dbelong.parent.name) and
      (activecontrol.taborder<dbelong.taborder) Then
      exit;

   If (length(trim(dbelong.text))=0) or
      (strtoint(dbelong.text)<1) or
      (strtoint(dbelong.text)>255) Then
   begin
      showmessage('Longitud no es válida');
      dbelong.SetFocus;
      exit;
   end;

   If (strtoint(dbelong.text)<=Dm1.cdsplandet.FieldByName('DECIMALES').AsInteger) Then
   begin
      showmessage('La longitud no es mayor que la parte decimal');
      dbelong.SetFocus;
      exit;
   end;

end;

procedure TFPlantEnv.rgtipdetClick(Sender: TObject);
begin
   If rgtipdet.itemindex=0 Then
    begin
      dblcdcampo.Visible:=True;
      dbevalor.Visible:=False;
      DM1.cdsPlandet.FieldByName('TIPODET').AsString:='S';
      DM1.cdsPlandet.FieldByName('VALOR').Clear;

      If rgtipagr.Visible=False Then
       begin
         If DM1.cdsPlandet.FieldByName('FLGGRP').AsString='S' then
          rgtipagr.itemindex:=0
         else
          begin
           rgtipagr.Visible:=True;
           rgtipagr.itemindex:=1;
          end;

//         dblctipope.Visible:=False;
//         DM1.cdsPlandet.FieldByName('FLGGRP').AsString:='S';
//         DM1.cdsPlandet.FieldByName('OPERAC').Clear;

      end;

      dblcdcampo.SetFocus;
   end
   Else
   begin
      dblcdcampo.Visible:=False;
      dbevalor.Visible:=True;
      DM1.cdsPlandet.FieldByName('TIPODET').AsString:='N';
      DM1.cdsPlandet.FieldByName('CAMPO').Clear;

      rgtipagr.Visible:=False;
      dblctipope.Visible:=False;
      DM1.cdsPlandet.FieldByName('FLGGRP').Clear;
      DM1.cdsPlandet.FieldByName('OPERAC').Clear;

      dbevalor.SetFocus;
   end;
end;

procedure TFPlantEnv.dbevalorExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (
      (activecontrol.parent.name=dbevalor.parent.name) and
      (activecontrol.taborder<dbevalor.taborder)
      )
      or
      (
      (activecontrol.name='') and
      (activecontrol.parent.taborder<dbevalor.taborder)
      )
      Then
      exit;

   If (length(dbevalor.text)=0) Then
   begin
      showmessage('Valor de constante no es válido');
      dbevalor.SetFocus;
      exit;
   end;

   Dm1.cdsplandet.FieldByName('LONGITUD').AsInteger:=length(dbevalor.text);
   DM1.cdsPlandet.FieldByName('TIPO').AsString:='VARCHAR2';
   DM1.cdsPlandet.FieldByName('NOMBRE').AsString:='Filler';
   DM1.cdsPlandet.FieldByName('CAMPO').Clear;
   DM1.cdsPlandet.FieldByName('ARCHIVO').Clear;
   DM1.cdsPlandet.FieldByName('DECIMALES').Clear;
end;

procedure TFPlantEnv.rgtipdetExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=rgtipdet.parent.name) and
      (activecontrol.taborder<rgtipdet.taborder) Then
      exit;
end;

procedure TFPlantEnv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsformapago.filter:='';
  DM1.cdsformapago.filtered:=False;
  DM1.cdsEjecuta.IndexFieldNames:='';
end;



procedure TFPlantEnv.rptOficioPreviewFormCreate(Sender: TObject);
begin
	rptOficio.PreviewForm.ClientHeight := 500;
	rptOficio.PreviewForm.ClientWidth  := 650;
	TppViewer(rptOficio.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;

procedure TFPlantEnv.fcShapeBtn1Click(Sender: TObject);
begin
  pnlTiempo.Visible:=False;
end;

procedure TFPlantEnv.SpeedButton1Click(Sender: TObject);


begin



end;





//Crea Archivo TXt
procedure TFPlantEnv.CreaArchivotxt(vxsql,xArchivo: string);

var f: textfile;
  fichero,linea:string;

begin

    fichero := Trim(xArchivo);
    AssignFile(f,fichero);
    Rewrite(f);

    Dm1.cdsQry6.Close;
    Dm1.cdsQry6.DataRequest(vxsql);
    Dm1.cdsQry6.Open;

    DM1.cdsQry6.First;
    While not DM1.cdsQry6.Eof do
    begin
      linea := DM1.cdsQry6.FieldByName('TEXTO').AsString;
      Memo1.Lines.Add(linea);
      writeln(f,linea);
      DM1.cdsQry6.Next;
    end;
    CloseFile(f);
end;

procedure TFPlantEnv.fcShapeBtn2Click(Sender: TObject);

var xpar:pchar;
begin
  xpar:= pchar(xNomArch);
  ShellExecute(FPlantEnv.Handle,nil,'Wordpad.exe',xpar,nil, 5);
end;




procedure TFPlantEnv.bbtnTransferirClick(Sender: TObject);
Var xtiparc, xtipaso, xsql, xselect:String;
    xPos1, xPos, I:Integer;
    xNomArch:String;
begin
  If MessageDlg('¿Esta seguro de generar archivo?', mtConfirmation,[mbYes,mbNo],0)=mrNo Then Exit;
  xSQL := '';
  odLeer.DefaultExt := '*.TXT';
  odLeer.Filter := 'Archivos TXT|*.TXT|Archivos LIS|*.LIS|Archivos DBF|*.DBF';
  odLeer.FileName := 'DCT'+DM1.cdsGrupos.FieldByName('PERIODO').AsString;
  If not odLeer.Execute Then  exit;
  if FileExists(odLeer.FileName) then DeleteFile(odLeer.FileName);
  Screen.Cursor := crHourGlass;
  xPos := Pos('.',odLeer.FileName);
  I := xPos;
  xPos1 := 0;
  Repeat
    If copy(odLeer.FileName,I-1,1) <> '\' Then
    begin
      xPos1 := xPos1 +1;
      I := I -1;
    end
    Else I := 0;
  until I = 0;
  xNomArch   :=  Trim(odLeer.FileName);
  // revisando el tipo de asociado
  xtipaso := '';
(*  If DM1.xtipaso = '0' Then xtipaso := ' AND ASOTIPID = '+QuotedStr('DO'); *)
  If DM1.xtipaso = '0' Then xtipaso := ' AND ASOTIPID IN (''DO'',''CO'',''VO'')';
  If DM1.xtipaso = '1' Then xtipaso := ' AND ASOTIPID = '+QuotedStr('CE');
  // Tipo de archivo
// inicio HPP_201105_COB
  If DM1.xtiparc = '0' Then xtiparc := ' AND NVL(MONCUOENV,0) + NVL(MONCUOENVFSC,0) > 0'; //HPP_201105_COB
  If DM1.xtiparc = '1' Then xtiparc := ' AND NVL(MONAPOENV,0) > 0';
  If DM1.xtiparc = '2' Then xtiparc := ' AND NVL(MONCUOENV,0) + NVL(MONCUOENVFSC,0) + NVL(MONAPOENV,0) > 0';//HPP_201105_COB
  xSelect := cargaplantilla;
  xSql := 'SELECT '+xSelect+' FROM COB319 WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
  +' AND COBANO = '+QuotedStr(Copy(DM1.cdsGrupos.FieldByName('PERIODO').AsString,1,4))+' AND COBMES = '+QuotedStr(Copy(DM1.cdsGrupos.FieldByName('PERIODO').AsString,5,2))
  +xtipaso+xtiparc+' ORDER BY ASOAPENOM';
  Screen.Cursor := crHourGlass;
  CreaArchivotxt(xsql,xNomArch);
{
  xSql := 'UPDATE COB204 SET CHKGENDIS = ''S'', ESTADO = ''1'' WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)+' AND PERIODO = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
  +' AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString);
}
  xSql := 'BEGIN '
         +'    UPDATE COB204 '
         +'       SET CHKGENDIS = ''S'', '
         +'           ESTADO = ''1'' '
         +'     WHERE IDECON = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
         +'       AND PERIODO = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
         +'       AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)+'; '
         +'    UPDATE COB_PRO_GEN_PLA_CON '
         +'       SET ESTADO = ''PROGRPROCOB'','
         +'           USUPROCOB = ' + QuotedStr(DM1.wUsuario)+','
         +'           FECPROGPROCOB = SYSDATE'
         +'     WHERE IDECON= '+QuotedStr(DM1.cdsGrupos.FieldByName('IDECON').AsString)
         +'       AND ANOPRO||MESPRO = '+QuotedStr(DM1.cdsGrupos.FieldByName('PERIODO').AsString)
         +'       AND ASOTIPID = '+QuotedStr(DM1.cdsGrupos.FieldByName('ASOTIPID').AsString)
         +'       AND ESTADO = ''PROCE'';'
         +'    COMMIT; '
         +'END;';
// fin HPP_201105_COB

  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  MessageDlg('Generación de disquete a concluido', mtInformation, [mbOk], 0);
  Screen.Cursor := crDefault;
end;

function TFPlantEnv.cargaplantilla: String;
Var xreg, xregvan, xlongitud, xdecimal:Integer;
  xvar, xSql, xstring, xceroizq, xttrim, xsepdec, xespacio, xcoma:String;
  // inicio HPP_201105_COB
  xCampo : String;
  // fin HPP_201105_COB
begin
  Dm1.cdsModelo.First;
  xreg := dm1.cdsModelo.RecordCount;
  xregvan := 0;
  While Not Dm1.cdsModelo.eof Do
  Begin
    xceroizq :=  Dm1.cdsModelo.FieldByName('ceroizq').AsString;
    xlongitud:=  Dm1.cdsModelo.FieldByName('longitud').AsInteger;
    xdecimal :=  Dm1.cdsModelo.FieldByName('decimales').AsInteger;
    xttrim   :=  Dm1.cdsModelo.FieldByName('ttrim').AsString;
    xsepdec  :=  Dm1.cdsModelo.FieldByName('sepdec').AsString;
    xespacio :=  '                                                ';
    xregvan:=xregvan+1;
    // inicio HPP_201105_COB
    xCampo := Dm1.cdsModelo.FieldByName('Campo').AsString;
    if xCampo = 'MONCUOENV' then
    begin
       xCampo := '(MONCUOENV+MONCUOENVFSC)';
    end;

    If  Length(Trim(xCampo))>0 then
    Begin
      If xregvan=xreg Then xcoma := 'TEXTO' Else xcoma:='||';
      If (xceroizq='S')      And (xdecimal=0)                      Then xstring:='Lpad(nvl('+xCampo+',0),'+IntToStr(xlongitud)+','+QuotedStr('0')+')'
      Else If (xceroizq='N') And (xdecimal=0)                      Then xstring := 'Rpad(nvl('+xCampo+','' ''),'+IntToStr(xlongitud)+','+QuotedStr(' ')+')'
      Else If (xdecimal>0)   And (xceroizq='S') And (xsepdec<>'S') Then xstring:='Lpad(nvl('+xCampo+'*100,0),'+IntToStr(xlongitud)+','+QuotedStr('0')+')'
      Else If (xceroizq='N') And (xdecimal>0)   And (xsepdec<>'S') Then xstring:='Lpad(nvl('+xCampo+'*100,0),'+IntToStr(xlongitud)+','+QuotedStr(' ')+')'
      Else If (xdecimal>0)   And (xceroizq='S') And (xsepdec='S')  Then xstring:='Lpad(TRIM(TO_CHAR(NVL('+xCampo+',0),''99,999,999.99'')),'+IntToStr(xlongitud)+','+QuotedStr('0')+')'
      Else If (xceroizq='N') And (xdecimal>0)   And (xsepdec='S')  Then  xstring:='Lpad(TRIM(TO_CHAR(NVL('+xCampo+',0),''99,999,999.99'')),'+IntToStr(xlongitud)+','+QuotedStr(' ')+')';
      If xttrim<>'S'                                               Then xstring := Trim(xstring); xSql := xSql + xstring+xcoma;
    End
    Else
    Begin
      If xregvan=xreg Then xcoma:='TEXTO' else xcoma:='||';
      If Length(Trim(Dm1.cdsModelo.FieldByName('Valor').AsString))= 0 Then xvar:=' ' Else xvar:=Dm1.cdsModelo.FieldByName('Valor').AsString;
      xstring := 'LPAD('+QuotedStr(xvar)+','+IntToStr(xlongitud)+','+QuotedStr(' ')+')';
      If xttrim<>'S' Then xstring := Trim(xstring);
      xSql:=XsqL+xstring+xcoma;
    End;
    // fin HPP_201105_COB    
    Dm1.cdsModelo.Next
  End;
  Result := xSql;
end;

procedure TFPlantEnv.btnbuscarClick(Sender: TObject);
Var xSql:String;
begin
  If Trim(mebusca.Text) <> '' Then
    xSql := 'SELECT * FROM COB323 WHERE NOMBRE LIKE '+QuotedStr('%'+Trim(mebusca.Text)+'%')
    +' ORDER BY NOMBRE'
  Else
    xSql := 'SELECT * FROM COB323 ORDER BY NOMBRE';
  DM1.cdsPlantilla.Close;
  DM1.cdsPlantilla.DataRequest(xSql);
  DM1.cdsPlantilla.Open;
End;

procedure TFPlantEnv.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

end.


