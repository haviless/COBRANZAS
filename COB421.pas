unit COB421;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Mask, wwdbedit,
  DBCtrls, Wwdbspin, ComCtrls, wwdblook, fcButton, fcImgBtn,
  FileCtrl, fcShapeBtn, Wwdbdlg, Spin, wwriched, ppDB, ppDBPipe, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  db, ppReport, ppViewr, dbclient, dbtables, ppStrtch, ppRichTx, ppDBBDE,
  ppEndUsr, pptypes;

type
  TFPlantManEnv = class(TForm)
    pnlPlantillas: TPanel;
    dbgDetal: TwwDBGrid;
    dbgCabec: TwwDBGrid;
    Label2: TLabel;
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
    pnlTransf: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    dblcdbanco: TwwDBLookupComboDlg;
    dblcdUPro: TwwDBLookupComboDlg;
    dblcdFPago: TwwDBLookupComboDlg;
    seMes: TSpinEdit;
    seAno: TSpinEdit;
    pnlBar: TPanel;
    Label18: TLabel;
    lblTReg: TLabel;
    pbData: TProgressBar;
    bbtnCancT: TfcShapeBtn;
    bbtnPrevio: TfcShapeBtn;
    bbtnDocumento: TfcShapeBtn;
    bbtnImportar: TfcShapeBtn;
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
    dbedescri: TwwDBEdit;
    dbefpago: TwwDBEdit;
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
    bbtnTransferir: TfcShapeBtn;
    edtOficio: TEdit;
    lblOficio: TLabel;
    rptOficio: TppReport;
    wwDBRichEdit1: TwwDBRichEdit;
    wwDBRichEdit2: TwwDBRichEdit;
    rgAporte: TRadioGroup;
    bdeppOficio: TppBDEPipeline;
    ppDesigner1: TppDesigner;
    dblcSituacion: TwwDBLookupCombo;
    edtSituacion: TEdit;
    lblSitAso: TLabel;
    pnlTiempo: TPanel;
    lblInicio: TLabel;
    lblFin: TLabel;
    lblTiempo: TLabel;
    lblTInicio: TLabel;
    lblTFin: TLabel;
    lblTtiempo: TLabel;
    fcShapeBtn1: TfcShapeBtn;
    lblProceso: TLabel;
    SpeedButton1: TSpeedButton;
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
    rgVariosPer: TRadioGroup;
    Memo1: TMemo;
    dbcdEspBlank: TDBCheckBox;
    Label22: TLabel;
    procedure bbtnImportarClick(Sender: TObject);
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
    procedure bbtnPrevioClick(Sender: TObject);
    procedure dbcbsepdecExit(Sender: TObject);
    procedure dblcdFPagoExit(Sender: TObject);
    procedure bbtnTransferirClick(Sender: TObject);
    procedure seMesExit(Sender: TObject);
    procedure dblcdUProExit(Sender: TObject);
    procedure bbtnCancTClick(Sender: TObject);
    procedure seAnoExit(Sender: TObject);
    procedure bbtnDocumentoClick(Sender: TObject);
    procedure dbcbascClick(Sender: TObject);
    procedure dbenroordExit(Sender: TObject);
    procedure dbcbascExit(Sender: TObject);
    procedure pprRepResTelPreviewFormCreate(Sender: TObject);
    procedure dblcdbancoExit(Sender: TObject);
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
    procedure dblcSituacionExit(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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
    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
    Procedure BuscaCorre; //** para constatar que nop exista el numero del crédito
    procedure  Correlativo; //** llama a CorreCred y BuscaCorre
    function CargaModelo : Boolean;
  public
    { Public declarations }
    wFPagoId, wAno, wMes, wUProid, wBcoid : string;
  end;

  function WinExecAndWait32(FileName:String; Visibility:integer):integer;

var
  FPlantManEnv: TFPlantManEnv;
  xWhere, wflggrp : string;
  xAnaSitAso : String;
  HDes, HHas : String;

implementation

{$R *.DFM}

USES COBDM1, MsgDlgs, COB001;

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

//** 22/01/2003 - PJSV
procedure TFPlantManEnv.bbtnImportarClick(Sender: TObject);
var
   xStr, xcampo, xRegistro, xSQL, xWhere, xNomArch : string;
   xflgexi : boolean;
   xi : integer;
   xRegDbf : ttable;
   xRegDb : tdatabase;
   xGraba : Integer;
   xNombreTabla, xFieldName, xDataType, xSize : String;
   xPos1, xPos, I : Integer;
//   xestidEnP, xestidCob, xestidPar,
   xWhere1,xCia, xname, xestid, xestdes, xxx : string;
begin
    lblProceso.Visible:=False;
   lblTInicio.Caption:='--:--';
   lblTFin.Caption:='--:--';
   HDes := TimeToStr(Time);
   lblTInicio.Caption:=HDes;
   pnlTiempo.Visible:=True;

   xAnaSitAso:='';
   If rgAporte.Visible = True Then
    If rgAporte.ItemIndex = -1 Then
     begin
      Information(Caption, 'Debe Seleccionar SI Desea Incluir o NO Aportes');
      Exit;
     end;

   If rgAporte.Visible = True Then
    If rgAporte.itemindex = 0 Then
     begin
      xSQL := 'SELECT * FROM APO117'
             +' WHERE APOANO='+QuotedStr(wAno)
             +' AND APOMES='+QuotedStr(wMes);

      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;
      If DM1.cdsQry2.RecordCount = 0 Then
       begin
        ErrorMsg(Caption,'No Existe Información para el Periodo en la Tabla de Aportes por Periodo');
        Exit;
       end;

     end;
   xSQL := 'SELECT * FROM TGE101 WHERE CIARETIGV ='+QuotedStr('N');
   DM1.cdsQry.close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.open;
   xCia := DM1.cdsQry.FieldByName('CIAID').AsString;

   xSQL := 'SELECT '
          +' COUNT(CREANO) TOTAL'
          +' FROM CRE302, CRE113 WHERE ';

   If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString='SDB' Then // TeleAhorro
    xWhere := 'CRE302.CREANO='+QuotedStr(wAno)
             +' AND CRE302.CREMES='+QuotedStr(wMes)
             +' AND CRE302.FORPAGOID='+QuotedStr(wFpagoId)
             +' AND CRE302.BANCOID='+QuotedStr(wBcoId)
             +' AND CRE302.CREESTID = CRE113.ESTID(+) And CRE113.FLGENVIO = '+QuotedStr('S')
             +'AND (CRE302.CREBLOQ<>'+QuotedStr('S')+' OR CRE302.CREBLOQ IS NULL)'
   Else
    xWhere := 'CREANO ='+QuotedStr(wAno)
             +' AND CREMES ='+QuotedStr(wMes)
             +' AND FORPAGOID ='+QuotedStr(wFpagoId)
             +' AND UPROID='+QuotedStr(wUproId)
             +' AND CRE302.CREESTID = CRE113.ESTID(+) And CRE113.FLGENVIO = '+QuotedStr('S')
             +' AND (CREBLOQ<>'+QuotedStr('S')+' OR CREBLOQ IS NULL)';

   xSQL := xSQL+xWhere;

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.FieldByName('TOTAL').AsFloat = 0 Then
    begin
     Information(Caption, 'No Existe Información a Enviar');
     Exit;
    end;

  ////////////////////////////////////////////////////////////////////////////////
  // Para ver si Existe Informacion en el CRE404 ya Transferida
   If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString = 'SDB' Then // TeleAhorro
    begin
     xWhere := 'PERIODO ='+QuotedStr(wAno+wMes)
             +' AND FORPAGOID ='+QuotedStr(wFpagoId)
             +' AND BANCOID ='+QuotedStr(wBcoId)
             +' AND ASOSITID ='+QuotedStr(dblcSituacion.text);
    end
   Else
    begin
     xWhere := 'PERIODO ='+QuotedStr(wAno+wMes)
             +' AND FORPAGOID ='+QuotedStr(wFpagoId)
             +' AND UPROID ='+QuotedStr(wUproId)
             +' AND ASOSITID ='+QuotedStr(dblcSituacion.text);
    end;
   xSQL := 'SELECT COUNT(PERIODO) TOTAL FROM CRE404 WHERE '+xWhere;
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.FieldByName('TOTAL').AsFloat > 0 Then
    begin
     xflgexi := True;
     If Question(Caption, 'Ya fueron Generados los Asociados para este Período '+#13+#13+'Desea Volver a Generar?') Then
      begin
         If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString = 'SDB' Then // TeleAhorro
          begin
           xWhere := 'PERIODO ='+QuotedStr(wAno+wMes)
                   +' AND FORPAGOID ='+QuotedStr(wFpagoId)
                   +' AND BANCOID ='+QuotedStr(wBcoId);
          end
         Else
          begin
           xWhere := 'PERIODO ='+QuotedStr(wAno+wMes)
                   +' AND FORPAGOID ='+QuotedStr(wFpagoId)
                   +' AND UPROID ='+QuotedStr(wUproId);
          end;

       xSQL := 'DELETE FROM CRE404 WHERE '+xWhere;
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

       xSQL := 'DELETE FROM COB322 WHERE '+xWhere;
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      end
     Else
      Exit;
    end;

   try
    Screen.Cursor := crHourGlass;
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest('SELECT COUNT(''ITEM'') TOTAL FROM COB321');
    DM1.cdsQry2.Open;
    If DM1.cdsQry2.FieldByName('TOTAL').AsFloat = 0 Then
      Exit;
    // Obtiene estado del crédito
    xWhere:='FLGTIPO='+QuotedStr('3');
    xestid := DM1.DisplayDescrip('prvSQL','CRE113','ESTID,ESTDES',xWhere,'ESTID');
    xestdes:=DM1.cdsqry.FieldByName('ESTDES').AsString;
    // Verifica la existencia del archivo
    xflgexi:=False;
    If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString='SDB' Then // TeleAhorro
      xWhere:='PERIODO='+QuotedStr(wAno+wMes)+
              ' AND FORPAGOID='+QuotedStr(wFpagoId)+
              ' AND BANCOID='+QuotedStr(wBcoId)+
              ' AND ASOSITID ='+QuotedStr(dblcSituacion.text)
    Else
      xWhere:='PERIODO='+QuotedStr(wAno+wMes)+
              ' AND FORPAGOID='+QuotedStr(wFpagoId)+
              ' AND UPROID='+QuotedStr(wUproId)+
              ' AND ASOSITID ='+QuotedStr(dblcSituacion.text);

    xSQL := 'SELECT COUNT(PERIODO) TOTAL FROM COB322 WHERE '+xWhere;

    DM1.cdsQry2.close;
    DM1.cdsQry2.DataRequest(xSQL);
    DM1.cdsQry2.open;
    If DM1.cdsqry2.FieldByName('TOTAL').AsFloat > 0 Then
    begin
      xflgexi:=True;
      Showmessage('Ya fué Generado el Descuento para este Periodo, Forma de Pago y U. de Proceso / Banco y Situación del Asociado');
      Exit;
    end;

    xSQL:='SELECT NVL(NOFID,''X'') NOFID, PERIODO, UPROID, BANCOID, FORPAGOID '+
          'FROM COB322 '+
          'WHERE NOFID IS NULL ';
    If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString<>'SDB' Then // TeleAhorro
      xSQL := xSQL + 'AND UPROID='+QuotedStr(wUproId)
    Else
      xSQL := xSQL + 'AND BANCOID='+QuotedStr(wBcoId);

    xSql := xSql + ' AND ASOSITID ='+QuotedStr(dblcSituacion.text);

    DM1.cdsQry2.close;
    DM1.cdsQry2.DataRequest(xSQL);
    DM1.cdsQry2.open;
    If DM1.cdsqry2.FieldByName('NOFID').AsString = 'X' Then
    begin
      xflgexi:=True;
      If dblcdUPro.Visible = True Then
        Showmessage('El Descuento Para el Periodo : '+DM1.cdsqry2.FieldByName('PERIODO').AsString+', '+#13+
                    'Forma de Pago : '+DM1.cdsqry2.FieldByName('FORPAGOID').AsString+' '+#13+
                    'y U. de Proceso : '+DM1.cdsqry2.FieldByName('UPROID').AsString+#13+#13+
                    'No Tiene Oficio Generado')
      Else
        Showmessage('El Descuento Para el Periodo : '+DM1.cdsqry2.FieldByName('PERIODO').AsString+' '+#13+
                    'Forma de Pago : '+DM1.cdsqry2.FieldByName('FORPAGOID').AsString+' '+#13+
                    'y Banco : '+DM1.cdsqry2.FieldByName('BANCOID').AsString+' '+#13+#13+
                    'No Tiene Oficio Generado');
      Exit;
    end;
    //** 25/11/2002 - pjsv
    lblProceso.Visible:=True;
    lblProceso.Refresh;
    If dblcdbanco.Visible Then
      ///xSQL:= 'CREATE TABLE CRE404 TABLESPACE US6 AS SELECT * FROM CRE302 A, APO201 B'+
      xSQL:='INSERT INTO CRE404 ('+
            'ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,CRESALDO2, CRECUOTA, CREMTO, CREAMORT, CREINTERES, '+
            'CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, '+
            'CREMONLOC, CREMONEXT, USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL, '+
            'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR, CRETCALABR, TIPDESABR, TIPCREABR, '+
            'FORPAGOABR, LISTAABR, CIAID, CREESTID, CREESTADO, CRECOM, CRESEG, CREPOR, CREGADM, CRECOMP, CREMORA, CREMTOCOM, '+
            'CREMTOSEG, CREMTOPOR, CREMTOGADM, CREMTOCOMP, CREMTOMORA, LISTAID, ASOCODAUX, NRONABO, CIUDID, FLGPAG, ARCHIVOFTP, '+
            'CREBLOQ, CREBLOQFEC, CREBLOQOBS, CREDIDNABO, CREINFO, CREMTOEXC, AREAID, CREDOCPAG, FLAGVAR, CRECAPCRON, '+
            'CREINTCRON, CREFLACRON, CREMTOAN, CREAMORTAN, CREINTERESAN, CREFLATAN, FLAGNVINT, DESBLOFEC, USUBLOQ, USUDESBLOQ, '+
            'NROREFINAN, PERIODO, NOFID,ASOSITID )'+
            'SELECT '+
            'A.ASOID, B.ASOCODMOD, B.ASOCODPAGO, A.TIPCREID, A.TMONID, A.CREANO, A.CREMES, NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0),A.CRESALDO, A.CRECUOTA, A.CREMTO, A.CREAMORT, A.CREINTERES, '+
            'A.CREFLAT, A.CREFVEN, A.CREFPAG, B.USEID, B.UPROID, B.DPTOID, B.UPAGOID, A.BANCOID, A.CCBCOID, A.NROOPE, A.FOPERAC, A.TCAMBIO, A.CREMTOCOB, '+
            'A.CREMONLOC, A.CREMONEXT, A.USUARIO, A.FREG, A.HREG, A.FORPAGOID, A.CREFDEV, A.CREFRECL, B.ASOAPENOM, A.AGENBCOID, A.CRECAPITAL, '+
            'A.CREMTOINT, A.CREMTOFLAT, A.CRENEWID, A.FNABONO, A.CREDID, A.CRETCALID, A.TIPDESEID, A.TMONABR, A.CRETCALABR, A.TIPDESABR, A.TIPCREABR, '+
            'A.FORPAGOABR, A.LISTAABR, A.CIAID, A.CREESTID, A.CREESTADO, A.CRECOM, A.CRESEG, A.CREPOR, A.CREGADM, A.CRECOMP, A.CREMORA, A.CREMTOCOM, '+
            'A.CREMTOSEG, A.CREMTOPOR, A.CREMTOGADM, A.CREMTOCOMP, A.CREMTOMORA, A.LISTAID, B.ASOCODAUX, A.NRONABO, B.CIUDID, A.FLGPAG, A.ARCHIVOFTP, '+
            'A.CREBLOQ, A.CREBLOQFEC, A.CREBLOQOBS, A.CREDIDNABO, A.CREINFO, A.CREMTOEXC, A.AREAID, A.CREDOCPAG, A.FLAGVAR, A.CRECAPCRON, '+
            'A.CREINTCRON, A.CREFLACRON, A.CREMTOAN, A.CREAMORTAN, A.CREINTERESAN, A.CREFLATAN, A.FLAGNVINT, A.DESBLOFEC, A.USUBLOQ, A.USUDESBLOQ, '+
            'A.NROREFINAN, A.CREANO||A.CREMES,'+quotedstr(edtOficio.text)+
            ',B.ASOSITID '+
            ' FROM CRE302 A, APO201 B, CRE113 C  '+
            ' WHERE A.ASOID=B.ASOID '+
            ' AND A.CREANO='+QuotedStr(wAno)+' '+
            ' AND A.CREMES='+QuotedStr(wMes)+' '+
            ' AND A.FORPAGOID='+QuotedStr(wFpagoId)+' '+
            ' AND A.BANCOID='+QuotedStr(wBcoId)+' '+
            ' AND C.ESTID(+) = A.CREESTID And C.FLGENVIO = '+QuotedStr('S')+
            ' AND (A.CREBLOQ<>'+QuotedStr('S')+' OR A.CREBLOQ IS NULL)'
    Else
    If dblcdUPro.Visible Then
      xSQL:='INSERT INTO CRE404 ('+
            'ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,CRESALDO2, CRECUOTA, CREMTO, CREAMORT, CREINTERES, '+
            'CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, '+
            'CREMONLOC, CREMONEXT, USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL, '+
            'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR, CRETCALABR, TIPDESABR, TIPCREABR, '+
            'FORPAGOABR, LISTAABR, CIAID, CREESTID, CREESTADO, CRECOM, CRESEG, CREPOR, CREGADM, CRECOMP, CREMORA, CREMTOCOM, '+
            'CREMTOSEG, CREMTOPOR, CREMTOGADM, CREMTOCOMP, CREMTOMORA, LISTAID, ASOCODAUX, NRONABO, CIUDID, FLGPAG, ARCHIVOFTP, '+
            'CREBLOQ, CREBLOQFEC, CREBLOQOBS, CREDIDNABO, CREINFO, CREMTOEXC, AREAID, CREDOCPAG, FLAGVAR, CRECAPCRON, '+
            'CREINTCRON, CREFLACRON, CREMTOAN, CREAMORTAN, CREINTERESAN, CREFLATAN, FLAGNVINT, DESBLOFEC, USUBLOQ, USUDESBLOQ, '+
            'NROREFINAN, PERIODO, NOFID,ASOSITID) '+
            'SELECT '+
            'A.ASOID, B.ASOCODMOD, B.ASOCODPAGO, A.TIPCREID, A.TMONID, A.CREANO, A.CREMES, NVL(A.CREMTO,0)-NVL(A.CREMTOCOB,0),A.CRESALDO, A.CRECUOTA, A.CREMTO, A.CREAMORT, A.CREINTERES, '+
            'A.CREFLAT, A.CREFVEN, A.CREFPAG, B.USEID, B.UPROID, B.DPTOID, B.UPAGOID, A.BANCOID, A.CCBCOID, A.NROOPE, A.FOPERAC, A.TCAMBIO, A.CREMTOCOB, '+
            'A.CREMONLOC, A.CREMONEXT, A.USUARIO, A.FREG, A.HREG, A.FORPAGOID, A.CREFDEV, A.CREFRECL, B.ASOAPENOM, A.AGENBCOID, A.CRECAPITAL, '+
            'A.CREMTOINT, A.CREMTOFLAT, A.CRENEWID, A.FNABONO, A.CREDID, A.CRETCALID, A.TIPDESEID, A.TMONABR, A.CRETCALABR, A.TIPDESABR, A.TIPCREABR, '+
            'A.FORPAGOABR, A.LISTAABR, A.CIAID, A.CREESTID, A.CREESTADO, A.CRECOM, A.CRESEG, A.CREPOR, A.CREGADM, A.CRECOMP, A.CREMORA, A.CREMTOCOM, '+
            'A.CREMTOSEG, A.CREMTOPOR, A.CREMTOGADM, A.CREMTOCOMP, A.CREMTOMORA, A.LISTAID, B.ASOCODAUX, A.NRONABO, B.CIUDID, A.FLGPAG, A.ARCHIVOFTP, '+
            'A.CREBLOQ, A.CREBLOQFEC, A.CREBLOQOBS, A.CREDIDNABO, A.CREINFO, A.CREMTOEXC, A.AREAID, A.CREDOCPAG, A.FLAGVAR, A.CRECAPCRON, '+
            'A.CREINTCRON, A.CREFLACRON, A.CREMTOAN, A.CREAMORTAN, A.CREINTERESAN, A.CREFLATAN, A.FLAGNVINT, A.DESBLOFEC, A.USUBLOQ, A.USUDESBLOQ, '+
            'A.NROREFINAN, A.CREANO||A.CREMES PERIODO,'+quotedstr(edtOficio.text)+
            ',B.ASOSITID'+
            ' FROM CRE302 A ,APO201 B, CRE113 C '+
            ' WHERE A.ASOID=B.ASOID '+
            ' AND A.CREANO='+QuotedStr(wAno)+' '+
            ' AND A.CREMES='+QuotedStr(wMes)+' '+
            ' AND A.FORPAGOID='+QuotedStr(wFpagoId)+' '+
            ' AND B.UPROID='+QuotedStr(wUProid)+' '+
            ' AND C.ESTID(+) = A.CREESTID And C.FLGENVIO = '+QuotedStr('S')+
            ' AND (A.CREBLOQ<>'+QuotedStr('S')+' OR A.CREBLOQ IS NULL)';

    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    xSQL:='UPDATE CRE404 SET '+
          'ASOTIPID=(SELECT DISTINCT ASOSITID FROM APO201 WHERE APO201.ASOID=CRE404.ASOID) '+
          'WHERE CREANO='+QuotedStr(wAno)+' '+
          'AND CREMES='+QuotedStr(wMes)+' '+
          'AND FORPAGOID='+QuotedStr(wFpagoId)+' ';

    If dblcdbanco.Visible Then
      xSQL:=xSQL+'AND BANCOID='+QuotedStr(wBcoId)
    Else
      xSQL:=xSQL+'AND UPROID='+QuotedStr(wUProid);

    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    //** 21/01/2003 - PJSV

    If CargaModelo Then;
    begin
      If xConta > 0 Then
      begin
        // HNY SAQUE LA GENERACION DEL TXT Y LO PUSO EN EL 3er BOTON
      end
      Else
      begin
        ShowMessage('No existe información a transferir !');
        Screen.Cursor:=crDefault;
        exit;
      end;

      // Actualiza estado de credito
      If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString='SDB' Then // TeleAhorro
      begin
        xSQL:='UPDATE CRE302'
             +' SET CREESTID='+QuotedStr(xestid)+', CREESTADO='+QuotedStr(xestdes)+','
             +' CREINFO='+QuotedStr('S')
             +' WHERE CREANO='+QuotedStr(wAno)
             +' AND CREMES='+QuotedStr(wMes)
             +' AND FORPAGOID='+QuotedStr(wFpagoId)
             +' AND BANCOID='+QuotedStr(wBcoId)
             +' AND (CREBLOQ<>'+QuotedStr('S')+' OR CREBLOQ IS NULL) '
             +' AND CREESTID IN (SELECT ESTID FROM CRE113'
             +' WHERE FLGENVIO = '+QuotedStr('S')+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        If xflgexi=False Then
        begin
          xSQL:='INSERT INTO COB322(PERIODO, FORPAGOID, BANCOID, USUARIO, FREG, HREG, UPROID, NOFID, ARCHTXT, ARCHDBF, CIAID, PLANTILLA,ASOSITID)'
               +' VALUES('+QuotedStr(wAno+wMes)+', '+
                           QuotedStr(wFpagoId)+', '+
                           QuotedStr(wBcoId)+', '+
                           QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
                           QuotedStr(wUproId)+','+QuotedStr(xCorreoFicio)+','+
                           QuotedStr(xNomArch)+','+QuotedStr(xNomArch)+','+
                           QuotedStr(xcia)+', '+
                           QuotedStr(DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString)+','+
                           quotedstr(dblcSituacion.text)+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        end
        Else
        begin
          xSQL:='UPDATE COB322 '
               +'SET HREG=SYSDATE, '
               +' FREG=TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), '
               +' USUARIO='+QuotedStr(Dm1.wUsuario)
               +' WHERE PERIODO='+QuotedStr(wAno+wMes)
               +' AND BANCOID='+QuotedStr(wBcoId)
               +' AND FORPAGOID='+QuotedStr(wFpagoId)
               +' AND ASOSITID='+QuotedStr(dblcSituacion.text);

          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        end;
        FPrincipal.Mtx.RefreshFilter;
      end
      Else//PLANILLA
      begin
        xSQL:='UPDATE CRE302'
             +' SET CREESTID='+QuotedStr(xestid)+', CREESTADO='+QuotedStr(xestdes)+','
             +' CREINFO='+QuotedStr('S')
             +' WHERE'
             +' CREANO='+QuotedStr(wAno)
             +' AND CREMES='+QuotedStr(wMes)
             +' AND FORPAGOID='+QuotedStr(wFpagoId)
             +' AND UPROID='+QuotedStr(wUproId)
             +' AND (CREBLOQ<>'+QuotedStr('S')+' OR CREBLOQ IS NULL) '
//           +' AND CREESTID IN ('+QuotedStr(xestidCob+', '+QuotedStr(xestidPar)+', '+QuotedStr(xestidEnP)+') '
             +' AND CREESTID IN(SELECT ESTID FROM CRE113'
             +' WHERE FLGENVIO = '+QuotedStr('S')+')'
             +' AND ASOID=(SELECT B.ASOID FROM APO201 B WHERE CRE302.ASOID=B.ASOID AND B.UPROID='+QuotedStr(wUproId)+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        If xflgexi=False Then
        begin
          xSQL:='INSERT INTO COB322(PERIODO, FORPAGOID, BANCOID, USUARIO, FREG, HREG, UPROID, NOFID, ARCHTXT, ARCHDBF, CIAID, PLANTILLA,ASOSITID)'
               +' VALUES('+QuotedStr(wAno+wMes)+', '
                          +QuotedStr(wFpagoId)+', '
                          +QuotedStr(wBcoId)+', '+
                           QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), SYSDATE, '+
                           QuotedStr(wUproId)+','+QuotedStr(xCorreoFicio)+','+
                           QuotedStr(xNomArch)+','+QuotedStr(xNomArch)+','+
                           QuotedStr(xcia)+', '+
                           QuotedStr(DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString)+','+
                           quotedstr(dblcSituacion.text)+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        end
        Else
        begin
          xSQL:='UPDATE COB322'
               +' SET HREG=SYSDATE,'
               +' FREG=TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), '
               +' USUARIO='+QuotedStr(Dm1.wUsuario)
               +' WHERE PERIODO='+QuotedStr(wAno+wMes)
               +' AND UPROID='+QuotedStr(wUproId)
               +' AND FORPAGOID='+QuotedStr(wFpagoId)
               +' AND ASOSITID='+QuotedStr(dblcSituacion.text);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        end;
        FPrincipal.Mtx.RefreshFilter;
      end;

      DM1.cdsModelo.EnableControls;
      HHas :=  TimeToStr(Time);
      lblTFin.Caption:=HHas;
      lblTtiempo.Caption:= TimeToStr(StrToTime(HHas) - StrToTime(HDes));

      ShowMessage('Proceso Concluido');
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFPlantManEnv.FormActivate(Sender: TObject);
var
  xSQL : string;
begin
  // Campos del Archivo a Transferir

  dblcSituacion.Selected.Clear;
  dblcSituacion.Selected.Add('ASOSITID'#9'5'#9'Código'#9'F');
  dblcSituacion.Selected.Add('ASOSITDES'#9'20'#9'Descripción'#9'F');

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
        +' ARCHIVO IN('+QuotedStr('CRE302')+','+QuotedStr('APO201')+','+QuotedStr('APO102')+')';
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

  // Información de Créditos
{  xSQL:='SELECT * FROM CRE302'
       +'WHERE '
       +'CREANO='+QuotedStr(copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString,1,4))+' '
       +'AND CREMES='+QuotedStr(copy(DM1.cdsDetalle.FieldByname('PERIODO').AsString,5,2))+' '
       +'AND UPROID='+QuotedStr(DM1.cdsDetalle.FieldByname('UPROID').AsString);
  DM1.cdsEjecuta.Close;
  DM1.cdsEjecuta.PacketRecords:=100;
  DM1.cdsEjecuta.DataRequest(xSQL);
  DM1.cdsEjecuta.Open;}

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
     xSQL:='SELECT * FROM COB324 '
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

  DM1.cdsformapago.filter:='FLGDCT='+QuotedStr('S');
  DM1.cdsformapago.filtered:=True;
end;

procedure TFPlantManEnv.wwDBGrid3IButtonClick(Sender: TObject);
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
   DM1.cdsPlantilla.FieldByName('FLGGRP').AsString:='N';   
   If DM1.cdsQry.FieldByName('NUMERO').AsString='' Then
      DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString:='0001'
   Else
      DM1.cdsPlantilla.FieldByName('PLANTILLA').AsString:=
         DM1.StrZero(IntToStr(StrToInt(TRIM(DM1.cdsQry.FieldByName('NUMERO').AsString))+1),4);

   wModoPC:='A';
end;

procedure TFPlantManEnv.bbtnCancCClick(Sender: TObject);
begin
   pnlCab.Visible:=False;
   pnlPlantillas.Enabled:=True;
   pnlPlantUsa.Enabled:=True;

   DM1.cdsPlantilla.CancelUpdates;
end;

procedure TFPlantManEnv.bbtnOkCClick(Sender: TObject);
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

procedure TFPlantManEnv.wwDBGrid2IButtonClick(Sender: TObject);
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

procedure TFPlantManEnv.bbtnOkDClick(Sender: TObject);
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

procedure TFPlantManEnv.bbtnCancDClick(Sender: TObject);
begin
   DM1.cdsPlanDet.CancelUpdates;
   pnlPlantillas.Enabled:=True;
   pnlPlantUsa.Enabled:=True;
   pnlDet.Visible:=False;
end;

procedure TFPlantManEnv.dbgCabecDblClick(Sender: TObject);
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

procedure TFPlantManEnv.dbgDetalDblClick(Sender: TObject);
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

procedure TFPlantManEnv.bbtnCargarClick(Sender: TObject);
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

  DM1.cdsModelo.ApplyUpdates(0);

  Screen.Cursor:=crDefault;
end;

procedure TFPlantManEnv.dbgCabecKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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


procedure TFPlantManEnv.dbgDetalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFPlantManEnv.bbtnEliminarClick(Sender: TObject);
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


procedure TFPlantManEnv.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 Then
  begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFPlantManEnv.BitBtn1Click(Sender: TObject);
begin
   dbgPrevio.TitleFont.Size:=7;
   dbgPrevio.Font.Size     :=7;
   dbgPrevio.RefreshDisplay;
end;

procedure TFPlantManEnv.BitBtn4Click(Sender: TObject);
begin
   dbgPrevio.TitleFont.Size:=8;
   dbgPrevio.Font.Size     :=8;
   dbgPrevio.RefreshDisplay;
end;

procedure TFPlantManEnv.dbgCabecRowChanged(Sender: TObject);
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

procedure TFPlantManEnv.dblcdcampoExit(Sender: TObject);
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

procedure TFPlantManEnv.dbeNombreExit(Sender: TObject);
begin
   If bbtnCancC.focused Then exit;
end;

procedure TFPlantManEnv.spDesdeExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;
end;

procedure TFPlantManEnv.spHastaExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;
end;

procedure TFPlantManEnv.dbcbCeroExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=dbcbCero.parent.name) and
      (activecontrol.taborder<dbcbCero.taborder) Then
      exit;
end;

procedure TFPlantManEnv.spLongCeroExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;
end;

procedure TFPlantManEnv.bbtnCancelaCabeceraClick(Sender: TObject);
begin
   pnlTransf.Enabled:=True;
   dbgPrevio.DataSource:=nil;
   pnlPrevio.Visible:=False;
end;

procedure TFPlantManEnv.bbtnPrevioClick(Sender: TObject);
var
   xSQL, xRegistro, xcampo : string;
   xindices, xgrupos, xStr : string;
   xlon, xi : word;
begin
   Screen.Cursor := crHourGlass;

  // Determinar un espacio para el contenido de la información a transferir
   xlon := 0;
   DM1.cdsModelo.First;
   while not DM1.cdsModelo.Eof do
    begin
     If (Dm1.cdsModelo.FieldByName('SEPDEC').AsString='S') Then
      xlon:=xlon+DM1.cdsModelo.FieldByName('LONGITUD').AsInteger+1
     Else
      xlon:=xlon+DM1.cdsModelo.FieldByName('LONGITUD').AsInteger;

     DM1.cdsModelo.Next;
    end;

  // Prepara información
   xSQL := '';
   If (DM1.cdsModelo.recordcount>0) and
     (xlon>0) Then
    begin
     xStr := '';
     for xi := 1 to xlon do
      begin
       xStr:=xStr+' ';
      end;

     xSQL:='SELECT '+QuotedStr(xStr)+' TEXTO';
     xgrupos:='';

     DM1.cdsModelo.First;
     while not DM1.cdsModelo.eof do
     begin
        If DM1.cdsModelo.FieldByName('FLGGRP').AsString='N' Then
        begin
           If DM1.cdsModelo.FieldByName('OPERAC').AsString='SUMATORIA' Then
              xSQL:=xSQL+', SUM('+DM1.cdsModelo.FieldByName('ARCHIVO').AsString+'.'+
                                  DM1.cdsModelo.FieldByName('CAMPO').AsString+
                                  ') '+
                                  DM1.cdsModelo.FieldByName('CAMPO').AsString
           Else
              xSQL:=xSQL+', COUNT(DISTINCT '+DM1.cdsModelo.FieldByName('ARCHIVO').AsString+'.'+
                                             DM1.cdsModelo.FieldByName('CAMPO').AsString+
                                             ') '+
                                             DM1.cdsModelo.FieldByName('CAMPO').AsString;
        end
        Else
        begin
           If DM1.cdsModelo.FieldByName('TIPODET').AsString='S' Then
              xSQL:=xSQL+', '+DM1.cdsModelo.FieldByName('ARCHIVO').AsString+'.'+
                              DM1.cdsModelo.FieldByName('CAMPO').AsString
           Else
              xSQL:=xSQL+', '+QuotedStr(DM1.cdsModelo.FieldByName('VALOR').AsString)+' '+
                              DM1.cdsModelo.FieldByName('NOMBRE').AsString+
                              DM1.cdsModelo.FieldByName('ITEM').AsString;

           If DM1.cdsModelo.FieldByName('FLGGRP').AsString='S' Then
           begin
              If DM1.cdsModelo.FieldByName('TIPODET').AsString='S' Then
              begin
                 If xgrupos='' Then
                    xgrupos:='GROUP BY '+DM1.cdsModelo.FieldByName('ARCHIVO').AsString+'.'+
                                         DM1.cdsModelo.FieldByName('CAMPO').AsString
                 Else
                    xgrupos:=xgrupos+', '+DM1.cdsModelo.FieldByName('ARCHIVO').AsString+'.'+
                                          DM1.cdsModelo.FieldByName('CAMPO').AsString;
              end;
           end;
        end;

        DM1.cdsModelo.Next;
     end;

     DM1.cdsModelo.filter:='FLDASC='+QuotedStr('S');
     DM1.cdsModelo.filtered:=True;
     DM1.cdsModelo.IndexFieldNames:='ORDASC';

     DM1.cdsModelo.First;
     while not DM1.cdsModelo.eof do
     begin
        If xindices='' Then
           xindices:=DM1.cdsModelo.FieldByName('CAMPO').AsString
        Else
           xindices:=xindices+';'+DM1.cdsModelo.FieldByName('CAMPO').AsString;

        DM1.cdsModelo.Next;
     end;

     DM1.cdsModelo.filter:='';
     DM1.cdsModelo.filtered:=False;
     DM1.cdsModelo.IndexFieldNames:='ITEM';
     //** 25/11/2002 - pjsv
     If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString='SDB' Then // TeleAhorro
     begin
        xSQL:=xSQL+' FROM CRE302, APO201, APO102'
                  +' WHERE'
                  +' CRE302.CREANO='+QuotedStr(wAno)
                  +' AND CRE302.CREMES='+QuotedStr(wMes)
                  +' AND CRE302.FORPAGOID='+QuotedStr(wFpagoId)
                  +' AND CRE302.BANCOID='+QuotedStr(wBcoId)
                  +' AND (CRE302.CREBLOQ<>'+QuotedStr('S')+' OR CRE302.CREBLOQ IS NULL)'
                  +' AND APO201.ASOID=CRE302.ASOID'
                  +' AND APO201.ASOSITID='+QuotedStr(dblcSituacion.Text)+' '
                  +' AND APO201.UPROID = APO102.UPROID';
     end
     Else
     begin
        xSQL:=xSQL+' FROM CRE302, APO201,APO102'
                  +' WHERE'
                  +' CRE302.CREANO='+QuotedStr(wAno)
                  +' AND CRE302.CREMES='+QuotedStr(wMes)
                  +' AND CRE302.FORPAGOID='+QuotedStr(wFpagoId)
                  +' AND CRE302.UPROID='+QuotedStr(wUproId)
                  +' AND (CRE302.CREBLOQ<>'+QuotedStr('S')+' OR CRE302.CREBLOQ IS NULL)'
                  +' AND APO201.ASOID=CRE302.ASOID'
                  +' AND APO201.UPROID = APO102.UPROID';
     end;

     xSQL:=xSQL+' '+xgrupos;

     DM1.cdsqry.Close;
     DM1.cdsqry.IndexFieldNames:=xindices;
     DM1.cdsqry.datarequest(xSQL);
     DM1.cdsqry.open;

     If DM1.cdsqry.recordcount>0 Then
     begin
        while not DM1.cdsQry.EOF do
        begin
           xRegistro:='';

           DM1.cdsModelo.First;
           while not DM1.cdsModelo.EOF do
           begin
              If (DM1.cdsModelo.FieldByName('TIPODET').AsString='S') Then
                 xcampo:=DM1.cdsModelo.FieldByName('CAMPO').AsString
              Else
                 xcampo:=DM1.cdsModelo.Fieldbyname('NOMBRE').AsString+
                         DM1.cdsModelo.Fieldbyname('ITEM').AsString;

              xStr:=DM1.cdsqry.Fieldbyname(xcampo).Asstring;

              If (DM1.cdsModelo.FieldByName('TIPO').AsString='NUMBER') or
                 (DM1.cdsModelo.FieldByName('TIPO').AsString='INTEGER') Then
              begin
                 If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
                    xStr:=DM1.strzero(xStr,DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger);

                 If DM1.cdsModelo.FieldByName('SEPDEC').AsString<>'S' Then
                 begin
                    xi:=pos('.',xStr);
                    If xi>0 Then
                    begin
                       If xi=1 Then
                          xStr:=copy(xStr,xi+1,length(xStr)-xi)
                       Else
                          xStr:=copy(xStr,1,xi-1)+copy(xStr,xi+1,length(xStr)-xi);
                    end;
                 end;
              end
              Else
              begin
                 If (DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger>length(xStr)) Then
                 begin
                    while (DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger>length(xStr)) do
                    begin
                       xStr:=xStr+' ';
                    end;
                 end
                 Else
                 begin
                    xStr:=copy(xStr,1,DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger);
                 end;
              end;

              xRegistro:=xRegistro+xStr;

              DM1.cdsModelo.Next;
           end;

           DM1.cdsQry.edit;
           DM1.cdsQry.FieldByName('TEXTO').AsString:=xRegistro;
           DM1.cdsQry.post;

           DM1.cdsQry.Next;
        end;

        dbgPrevio.Selected.Clear;
        dbgPrevio.Selected.Add('TEXTO'+#9+inttostr(xlon)+#9+'Texto');
        dbgPrevio.DataSource:=DM1.dsqry;

        pnlTransf.Enabled:=False;
        pnlPrevio.Height:=262;
        pnlPrevio.Left:=15;
        pnlPrevio.Top:=118;
        pnlPrevio.BringToFront;
        pnlPrevio.Visible:=True;
     end
     Else
        ShowMessage('No existe información !');
  end
  Else
     ShowMessage('No existe plantilla a usar !');

  Screen.Cursor:=crDefault;
end;

procedure TFPlantManEnv.dbcbsepdecExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=dbcbsepdec.parent.name) and
      (activecontrol.taborder<dbcbsepdec.taborder) Then
      exit;
end;

procedure TFPlantManEnv.dblcdFPagoExit(Sender: TObject);
begin   If bbtnCancT.focused Then exit;

   If (activecontrol.parent.name=dblcdFPago.parent.name) and
      (activecontrol.taborder<dblcdFPago.taborder) Then
      exit;

   //** 23/12/2002 - PJSV
   rgAporte.ItemIndex := -1;
   //**
   //** 03/01/2003 - PJSV
   dblcdUPro.Text := '';
   //**

   If Dm1.cdsformapago.IndexFieldNames<>'FORPAGOID' Then
      Dm1.cdsformapago.IndexFieldNames:='FORPAGOID';

   Dm1.cdsformapago.setkey;
   Dm1.cdsformapago.FieldByName('FORPAGOID').AsString:=dblcdFPago.Text;
   If not DM1.cdsFormaPago.gotokey Then
   begin
      showmessage('Forma de Pago no es válida');
      dbefpago.text:='';
      dblcdFPago.SetFocus;
      exit;
   end;
   dbefpago.text:=Dm1.cdsformapago.FieldByName('FORPAGODES').AsString;
   wFpagoId:=dblcdFPago.Text;

   dbedescri.Visible:=True;

   If Dm1.cdsformapago.FieldByName('FORPAGFAPO').AsString='SDB' Then
   begin
      rgAporte.Visible := False;
      dblcdUPro.Visible:=False;
      dblcdBanco.Visible:=True;
      label17.caption:='Banco';
      dblcdBanco.SetFocus;
      lblSitAso.Visible:=True;
      dblcSituacion.Visible:=True;
      edtSituacion.Visible:=True;
   end
   Else
   begin
      rgAporte.Visible := True;
      dblcdUPro.Visible:=True;
      dblcdBanco.Visible:=False;
      label17.caption:='Unid Proceso';

      lblSitAso.Visible:=True;
      dblcSituacion.Visible:=True;
      edtSituacion.Visible:=True;

      dblcdUPro.SetFocus;
   end;
end;

procedure TFPlantManEnv.bbtnTransferirClick(Sender: TObject);
begin
  pnlPlantillas.Enabled:=False;
  pnlPlantUsa.Enabled:=False;
  pnlTransf.Visible:=True;
  pnlTransf.BringToFront;

  seAno.Text:=Copy(DateTimeToStr(Date),7,4);
  wAno:=seAno.Text;
  seMes.Text:=Copy(DateTimeToStr(Date),4,2);
  wMes:=DM1.strzero(semes.text,2);
end;

procedure TFPlantManEnv.seMesExit(Sender: TObject);
begin
   wMes:=DM1.strzero(semes.text,2); semes.text:=DM1.strzero(semes.text,2);
   If bbtnCancT.focused Then exit;

   If (activecontrol.parent.name=seMes.parent.name) and
      (activecontrol.taborder<seMes.taborder) Then
      exit;

   wMes:=DM1.strzero(semes.text,2);
end;

procedure TFPlantManEnv.dblcdUProExit(Sender: TObject);
begin
   If bbtnCancT.focused Then exit;

   If (activecontrol.parent.name=dblcdUPro.parent.name) and
      (activecontrol.taborder<dblcdUPro.taborder) Then
      exit;

   If Dm1.cdsUPro.IndexFieldNames<>'UPROID' Then
      Dm1.cdsUPro.IndexFieldNames:='UPROID';

   DM1.cdsUPro.setkey;
   DM1.cdsUPro.FieldByName('UPROID').AsString:=dblcdUPro.Text;
   If not DM1.cdsUPro.gotokey Then
   begin
      showmessage('Unidad de Proceso no es válida');
      dbedescri.text:='';
      dblcdUPro.SetFocus;
      exit;
   end;
   dbedescri.text:=DM1.cdsUPro.FieldByName('UPRONOM').AsString;
   wUProid:=dblcdUPro.text;
end;

procedure TFPlantManEnv.bbtnCancTClick(Sender: TObject);
begin
  //lblOficio.Visible := False;
  //edtOficio.Visible := False;

  pnlPlantillas.Enabled:=True;
  pnlPlantUsa.Enabled:=True;
  pnlTransf.Visible:=False;

  label17.caption:='';
  dbedescri.Visible:=False;
  dbedescri.text:='';
  dblcdbanco.Visible:=False;
  dblcdbanco.text:='';
  dblcdUPro.Visible:=False;
  dblcdUPro.text:='';
  dblcdFPago.text:='';
  dbeFPago.text:='';

  xSQL:='SELECT * FROM COB204';

  FPrincipal.Mtx.UsuarioSQL.Clear;
  FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
  FPrincipal.Mtx.NewQuery;
end;

procedure TFPlantManEnv.seAnoExit(Sender: TObject);
begin
   If bbtnCancT.focused Then exit;

   wAno:=DM1.strzero(seano.text,4);
end;

//** 22/01/2003 - PJSV
procedure TFPlantManEnv.bbtnDocumentoClick(Sender: TObject);
//////// Para sustituir tipo CTRL + R del DELPHI
  Function Sustituir(pCadena,pEsto,pPor : String) : STring;
  var
    xPos : Integer;
  begin
    xPos := Pos(pEsto,pCadena);
    Result := '';
    while (xPos <> 0 ) do
    begin
      Result := Result + copy(pCadena,1,xPos-1)+pPor;
      Delete(pCadena,1,xPos+Length(pEsto)-1);
      xPos := Pos(pEsto,pCadena);
    end;
    Result := Result + pCadena;
  end;

  const
    cMeses : Array[1..12] of String = ('Enero','Febrero','Marzo','Abril','Mayo','Junio',
                                       'Julio','Agosto','Setiembre','Octubre','Noviembre','Diciembre');
var
  xStr, xcampo,  xSQL, xWhere, xNomArch, xRegistro,xMtoTemp : string;
  xMeses, xCampo1, xCampo2, xCampo3, xCampo4, xCampo5, xCampo6, xCampo7, xCampo8,
  xCiudad, xLinea, xTmonAbr, xTmondes, xCampo9, xCampo10, xCampo11, xCampo12, xCampo13, xCampo14, xCampo15 : String;
  xAno, xMes, xDia : Word;
  xTotalCount, xFalta, xI ,xCM: Integer;
  xTotal : double;
  xPos1, xPos, I : Integer;
  xCtaDerra, xCia, xAgen, xDpto, xNuevoCampo1, xNuevoCampo, xAgencias, xRutaWord : String;
  xflgexi, xTrue : Boolean;
begin
   lblProceso.Visible:=False;
   lblTInicio.Caption:='--:--';
   lblTFin.Caption:='--:--';
   HDes := TimeToStr(Time);
   lblTInicio.Caption:=HDes;
   pnlTiempo.Visible:=True;

   xAnaSitAso:='S';
   If rgAporte.Visible = True Then
    If rgAporte.ItemIndex = -1 Then
     begin
      Information(Caption, 'Debe Seleccionar SI Desea Incluir o NO Aportes');
      Exit;
     end;

  If Length(Trim(dblcSituacion.text)) = 0 Then
  begin
    ErrorMsg(Caption, 'No Existe Información del Tipo de Asociado');
    dblcSituacion.SetFocus;
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  If rgAporte.Visible = True Then
    If rgAporte.itemindex = 0 Then
    begin
      xSQL:='SELECT * FROM APO117 '+
            'WHERE APOANO='+QuotedStr(wAno)+' '+
            'AND APOMES='+QuotedStr(wMes);

      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;
      If DM1.cdsQry2.RecordCount = 0 Then
      begin
        Screen.Cursor := crDefault;
        ErrorMsg(Caption, 'No Existe Información para el Período Seleccionado en la Tabla de Períodos');
        Exit;
      end;
    end;

  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest('SELECT COUNT(''ITEM'') TOTAL FROM COB321');
  DM1.cdsQry2.Open;
  If DM1.cdsQry2.FieldByName('TOTAL').AsFloat = 0 Then
    Exit;

  Try
    xflgexi := False;
    If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString='SDB' Then // TeleAhorro
      xWhere := 'PERIODO='+QuotedStr(wAno+wMes)
               +' AND FPAGOID='+QuotedStr(wFpagoId)
               +' AND BANCOID='+QuotedStr(wBcoId)
               +' AND ASOSITID='+quotedstr(dblcSituacion.text)
    Else
      xWhere := 'PERIODO ='+QuotedStr(wAno+wMes)
               +' AND FPAGOID ='+QuotedStr(wFpagoId)
               +' AND UPROID ='+QuotedStr(wUproId)
               +' AND ASOSITID='+quotedstr(dblcSituacion.text);

    xSQL := 'SELECT COUNT(PERIODO) TOTAL FROM COB204 WHERE '+xWhere;
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSQL);
    DM1.cdsQry2.Open;
    If DM1.cdsQry2.FieldByName('TOTAL').AsFloat > 0 Then
     begin
      xflgexi := True;
      Screen.Cursor := crDefault;
      If Question(Caption, 'Ya fué Generado el Descuento para este Periodo, Forma de Pago y U. de Proceso / Banco '+#13+#13+'Desea Volver a Generar?') Then
       begin
        xSQL := 'Delete FROM COB204 WHERE '+xWhere;
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        xSQL := 'Delete FROM COB319 Where NROFICIO ='+quotedstr(edtOficio.text)
               +' AND COBANO ='+QuotedStr(wAno)
               +' AND COBMES ='+QuotedStr(wMes)
               +' AND FORPAGOID ='+QuotedStr(wFpagoId)
               +' AND ASOSITID='+quotedstr(dblcSituacion.text);
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       end
      Else
       Exit;
    end;

    xSQL := 'SELECT NVL(NOFID,''X'') NOFID, PERIODO, UPROID, BANCOID, FPAGOID'
           +' FROM COB204'
           +' WHERE NOFID IS NULL ';
    If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString<>'SDB' Then // TeleAhorro
      xSQL := xSQL + ' AND UPROID='+QuotedStr(wUproId)
    Else
      xSQL := xSQL + ' AND BANCOID='+QuotedStr(wBcoId);

    xSql := xSql + ' AND ASOSITID ='+QuotedStr(dblcSituacion.text);

    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSQL);
    DM1.cdsQry2.Open;
    If DM1.cdsQry2.FieldByName('NOFID').AsString = 'X' Then
     begin
      xflgexi := True;
      Screen.Cursor := crDefault;
      If DM1.cdsQry2.FieldByName('UPROID').AsString <> '' Then
        ShowMessage('El Descuento Para el Período : '+DM1.cdsQry2.FieldByName('PERIODO').AsString+', '+#13+
                    'Forma de Pago : '+DM1.cdsQry2.FieldByName('FORPAGOID').AsString+' '+#13+
                    'y U. de Proceso : '+DM1.cdsQry2.FieldByName('UPROID').AsString+#13+#13+
                    'No Tiene Oficio Generado')
      Else
        Showmessage('El Descuento Para el Período : '+DM1.cdsQry2.FieldByName('PERIODO').AsString+' '+#13+
                    'Forma de Pago : '+DM1.cdsQry2.FieldByName('FORPAGOID').AsString+' '+#13+
                    'y Banco : '+DM1.cdsQry2.FieldByName('BANCOID').AsString+' '+#13+#13+
                    'No Tiene Oficio Generado');
      Exit;
     end;

    ///////////////////////////////////////////// Fin del chequeo de si ya existe //////////////////////////////////////////////////

    xSQL := 'SELECT COUNT(NOFID) TOTAL FROM COB322 WHERE PERIODO='+QuotedStr(IntToStr(seAno.Value)+DM1.StrZero(IntToStr(seMes.Value),2))+
            ' AND FORPAGOID='+QuotedStr(dblcdFPago.Text)+' AND ';
    If dblcdbanco.Visible Then
     xSQL := xSQL + 'BANCOID = '+QuotedStr(dblcdbanco.Text)
    Else
    If dblcdUPro.Visible Then
      xSQL := xSQL + 'UPROID='+QuotedStr(dblcdUPro.text);

    xSql := xSql + ' AND ASOSITID ='+QuotedStr(dblcSituacion.text);

    xSQL := xSQL + ' AND NOFID IS NULL';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    If DM1.cdsQry.FieldByName('TOTAL').AsFloat = 0 Then
     begin
      ////////////////////////////////////////////////////////////////////////////////
      // Se paso del Boton Grabar
      xSQL := '';
      odLeer.DefaultExt := '*.TXT';
      odLeer.Filter := 'Archivos TXT|*.TXT|Archivos LIS|*.LIS|Archivos DBF|*.DBF';
      If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString = 'SDB' Then
        odLeer.FileName:='DCT'+wano+wmes+'B'+wBcoid+wFpagoId+Trim(dblcSituacion.Text)
      Else
        odLeer.FileName:='DCT'+wano+wmes+'U'+wUProid+wFpagoId+Trim(dblcSituacion.Text);
      Screen.Cursor := crDefault;
      If not odLeer.Execute Then
        Exit;

      Screen.Cursor := crHourGlass;
      //** 03/01/2003 - PJSV PARA CAPTURAR SOLO EL NOMBRE SIN LA RUTA
      xPos := Pos('.',odLeer.FileName);
      I := xPos;
      xPos1 := 0;
      Repeat
        If copy(odLeer.FileName,I-1,1) <> '\' Then
        begin
          xPos1 := xPos1 +1;
          I := I -1;
        end
        Else
          I := 0;
      until I = 0;
      xNomArch :=  copy(odLeer.FileName,xPos-xPos1,xPos1);

      // Se paso del Boton Grabar
      ////////////////////////////////////////////////////////////////////////////////
      lblProceso.Visible:=True;
      lblProceso.Refresh;
      If CargaModelo Then
      begin
        DM1.DCOM1.AppServer.EjeQryBatchMove(xSqlE, xNomArch);

        //Archivo texto
        xRegTxt := TStringList.Create;
        try
          DM1.cdsejecuta.First;
          xRegTxt.BeginUpdate;
          xMonto := 0;
          xMontoAC := 0;
          xMontoCE := 0;


          while not DM1.cdsejecuta.EOF do
          begin

            If rgAporte.ItemIndex = 0 Then
              begin
                If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'AC' Then
                   xMonto := xMonto + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat +
                                     DM1.cdsejecuta.FieldByName('APOVALOR').AsFloat
                Else
                   If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'CE' Then
                      xMonto := xMonto + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat ;


                If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'AC' Then
                   xMontoAC := xMontoAC + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat +
                                        DM1.cdsejecuta.FieldByName('APOVALOR').AsFloat
                Else
                   If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'CE' Then
                      xMontoCE := xMontoCE + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat ;
              end
            Else
              begin
                xMonto := xMonto + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat;
                 If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'AC' Then
                    xMontoAC := xMontoAC + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat
                 Else
                   If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'CE' Then
                      xMontoCE := xMontoCE + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat;

              end;


          xRegistro:='';
          DM1.cdsModelo.First;
          while not DM1.cdsModelo.EOF do
            begin
              If (DM1.cdsModelo.FieldByName('TIPODET').AsString='S') Then
                xcampo:=DM1.cdsModelo.FieldByName('CAMPO').AsString
              Else
                xcampo:=DM1.cdsModelo.Fieldbyname('NOMBRE').AsString+
                        DM1.cdsModelo.Fieldbyname('ITEM').AsString;
              If (xcampo='CREMTO') OR (xcampo='CRESALDO') Then
              begin

                 If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString='SDB' Then // TeleAhorro
                     xMtoTemp :=FloatToStrF( DM1.cdsejecuta.Fieldbyname(xcampo).AsFloat, ffNumber, 6, 2)
                 Else//Planilla
                 begin
                    If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'AC' Then
                    begin
                       If rgAporte.ItemIndex = 0 Then
                          xMtoTemp :=FloatToStrF( (DM1.cdsejecuta.Fieldbyname(xcampo).AsFloat+DM1.cdsejecuta.Fieldbyname('APOVALOR').AsFloat), ffNumber, 6, 2)
                       Else
                          xMtoTemp :=FloatToStrF( DM1.cdsejecuta.Fieldbyname(xcampo).AsFloat, ffNumber, 6, 2);
                    end
                    Else
                       If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'CE' Then
                          xMtoTemp :=FloatToStrF( DM1.cdsejecuta.Fieldbyname(xcampo).AsFloat, ffNumber, 6, 2);

                 end;

                  xStr:=xMtoTemp;
              end
              Else
                  xStr := DM1.cdsEjecuta.Fieldbyname(xcampo).Asstring;

              If (DM1.cdsModelo.FieldByName('TIPO').AsString='NUMBER') or
                 (DM1.cdsModelo.FieldByName('TIPO').AsString='INTEGER') Then
              begin
                If DM1.cdsModelo.FieldByName('CEROIZQ').AsString='S' Then
                  xStr:=DM1.strzero(xStr,DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger);
                If DM1.cdsModelo.FieldByName('SEPDEC').AsString<>'S' Then
                begin
                  xi:=pos('.',xStr);
                  If xi > 0 Then
                  begin
                    If xi = 1 Then
                      xStr:= DM1.strzero(copy(xStr,xi+1,length(xStr)-xi),DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger)
                    Else
                      xStr:= DM1.strzero(copy(xStr,1,xi-1)+copy(xStr,xi+1,length(xStr)-xi),DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger);
                  end;
                end;
              end
              Else
              begin
                If (DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger>length(xStr)) Then
                begin
                  while (DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger>length(xStr)) do
                    xStr:=xStr+' '
                end
                Else
                  xStr:=copy(xStr,1,DM1.cdsModelo.Fieldbyname('LONGITUD').AsInteger)
              end;
              //----TTRIM='S' CONSIDERA ESPACIOS EN BLANC0 --RICMZ
                if DM1.cdsModelo.FieldByName('TTRIM').AsString = 'S' then
                   xRegistro:=xRegistro+xStr
                else
                   //xRegistro:=Trim(xRegistro)+Trim(xStr);
                    xRegistro:=xRegistro+Trim(xStr);
             //-----//

              DM1.cdsModelo.Next;
          end; //---While cdsModelo

//          xRegTxt.Add(xRegistro+chr(13));
            xRegTxt.Add(xRegistro);
            DM1.cdsejecuta.Next;

       end; //--While cdsEjecuta
          xRegTxt.EndUpdate;
          xRegTxt.SaveToFile(odLeer.FileName);
        finally
          xRegTxt.Free;
        end;                        // Del Try de Generación de TXT

        If Length(edtOficio.text) <= 0 Then
        begin
          //** 6 = tipo del correlativo
          xTipocorre := '6';
          xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''003''','MODULOID');
          xCorreWhere :=  ' CREAREA = '+QuotedStr(xArea)+' AND CORREANO = '+QuotedStr(FloatToStr(xAnoSys))+
                          ' and substr(nroficio,1,2) = '+QuotedStr('01')+
                          ' and substr(nroficio,3,2) = '+QuotedStr(dblcdFPago.text)+' and '+
                          ' TIPO ='+QuotedStr(xTipocorre)+' and ';
          xCorreWherex :=  ' x.CREAREA = '+QuotedStr(xArea)+' AND x.CORREANO = '+QuotedStr(FloatToStr(xAnoSys))+
                           ' and substr(x.nroficio,1,2) = '+QuotedStr('01')+
                           ' and substr(x.nroficio,3,2) = '+QuotedStr(dblcdFPago.text)+' and '+
                           ' x.TIPO ='+QuotedStr(xTipocorre)+' and ';
          xCorreWherey := ' y.CREAREA = '+QuotedStr(xArea)+' AND y.CORREANO = '+QuotedStr(FloatToStr(xAnoSys))+
                          ' and substr(y.nroficio,1,2) = '+QuotedStr('01')+
                          ' and substr(y.nroficio,3,2) = '+QuotedStr(dblcdFPago.text)+' and '+
                          ' y.TIPO ='+QuotedStr(xTipocorre);
          xTabla := 'COB218';
          xCeros := 5;
          xCorreCampo := 'NROFICIO';
          xCorreCadena := '01'+dblcdFPago.text;
          Correlativo;
          xCorreoFicio := xCorreCadena+xcorre;
          edtOficio.text := xCorreoFicio;
        end
        Else
        begin
          xMonto := FPrincipal.Mtx.FMant.cds2.FieldByName('MONTOTOT').AsFloat;
          xCorreoFicio := edtOficio.text;
        end;

        If xConta > 0 Then
        begin
          DM1.cdsejecuta.First;
          xMonto := 0;
          xMontoAC := 0;
          xMontoCE := 0;
          while not DM1.cdsejecuta.EOF do
          begin
            If rgAporte.ItemIndex = 0 Then
            begin
               If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'AC' Then
                  xMonto := xMonto + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat +
                                     DM1.cdsejecuta.FieldByName('APOVALOR').AsFloat
               Else
                  If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'CE' Then
                     xMonto := xMonto + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat ;

               If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'AC' Then
                  xMontoAC := xMontoAC + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat +
                                          DM1.cdsejecuta.FieldByName('APOVALOR').AsFloat
               Else
                   If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'CE' Then
                      xMontoCE := xMontoCE + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat ;
            end
            Else
            begin
              xMonto := xMonto + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat;
              If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'AC' Then
                 xMontoAC := xMontoAC + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat
              Else
                 If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'CE' Then
                    xMontoCE := xMontoCE + DM1.cdsejecuta.FieldByName('CRESALDO').AsFloat;
            end;
            DM1.cdsejecuta.Next;
          end;
          //xConta := xConta + 1;
        end;

        xSQL := 'SELECT CIAID FROM TGE101 WHERE CNTCONSOL='+QuotedStr('S');
        DM1.cdsQry.close;
        DM1.cdsQry.DataRequest(xSQL);
        DM1.cdsQry.open;
        xCia := DM1.cdsQry.FieldByName('CIAID').AsString;


        xSQL := 'SELECT * FROM COB204';
        DM1.cdsQry5.close;
        DM1.cdsQry5.DataRequest(xSQL);
        DM1.cdsQry5.open;

        DM1.cdsQry5.Insert;
        DM1.cdsQry5.FieldByName('NOFID').AsString    := xCorreoFicio;
        DM1.cdsQry5.FieldByName('MODOFIC').AsString  := DM1.wmodulo;
        DM1.cdsQry5.FieldByName('BANCOID').AsString  := wBcoid;
        DM1.cdsQry5.FieldByName('FPAGOID').AsString  := wFpagoId;
        DM1.cdsQry5.FieldByName('CREUSER').AsString  := DM1.wUsuario;
        DM1.cdsQry5.FieldByName('FREG').AsDateTime   := Date;
        DM1.cdsQry5.FieldByName('HREG').AsDateTime   := Date+Time;
        DM1.cdsQry5.FieldByName('CREMOD').AsString   := DM1.wmodulo;
        DM1.cdsQry5.FieldByName('MONTOTOT').AsString := FloattoStrF(xMonto,ffFixed,15,2);
        DM1.cdsQry5.FieldByName('MONTOAC').AsString  := FloattoStrF(xMontoAC,ffFixed,15,2);
        DM1.cdsQry5.FieldByName('MONTOCE').AsString  := FloattoStrF(xMontoCE,ffFixed,15,2);
        DM1.cdsQry5.FieldByName('TMONID').AsString   := DM1.wTMonLoc;
        DM1.cdsQry5.FieldByName('FECINIC').AsString  := DateToStr(xFechasys);
        DM1.cdsQry5.FieldByName('FECFIN').AsString   := DateToStr(xFechasys);
        DM1.cdsQry5.FieldByName('CIAID').AsString    := xcia;
        DM1.cdsQry5.FieldByName('OFIESTADO').AsString:= 'INICIAL';
        DM1.cdsQry5.FieldByName('CREANO').AsString   := seAno.text;
        DM1.cdsQry5.FieldByName('CREMES').AsString   := DM1.strzero(seMes.text,2);
        DM1.cdsQry5.FieldByName('PERIODO').AsString  := seAno.text+DM1.strzero(seMes.text,2);
        DM1.cdsQry5.FieldByName('UPROID').AsString   := dblcdUPro.text;
        DM1.cdsQry5.FieldByName('TOTREG').AsInteger  := xConta;
        DM1.cdsQry5.FieldByName('ASOSITID').AsString  := dblcSituacion.Text;

     // DM1.cdsQry5.Post;
        DM1.AplicaDatos(DM1.cdsQry5,'');

        xSQl := 'SELECT COUNT(NROFICIO) TOTAL FROM COB319 WHERE NROFICIO='+QuotedStr(xCorreoFicio);
        Dm1.cdsQry.Close;
        Dm1.cdsQry.DataRequest(xSQL);
        Dm1.cdsQry.Open;
        xTotalCount := 0;
        xTotalCount := Dm1.cdsQry.FieldByName('TOTAL').AsInteger;
        //** Tabla con registros del mes descontado (COB319)
        DM1.cdsEjecuta.First;
        while not DM1.cdsEjecuta.eof do
        begin
          If xTotalCount <= 0 Then
          begin
            If dblcdbanco.Visible Then
              xSQL:='INSERT INTO COB319 (ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, '+
                    'UPROID, CREMTOCUO, CREMTOAPO, ASONCTA, NROFICIO, COBANO, COBMES,'+
                    'FORPAGOID,ASOSITID,USUARIO,FREG,HREG) VALUES ('
            Else
              xSQL:='INSERT INTO COB319 (ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPENOM, '+
                    'UPROID, CREMTOCUO, CREMTOAPO, NROFICIO, COBANO, COBMES,'+
                    'USEID, UPAGOID,FORPAGOID,ASOSITID,USUARIO,FREG,HREG) VALUES (';

            xSQL := xSQL +QuotedStr(DM1.cdsEjecuta.FieldByName('ASOID').AsString)+','+
                    QuotedStr(DM1.cdsEjecuta.FieldByName('ASOCODMOD').AsString)+','+
                    QuotedStr(DM1.cdsEjecuta.FieldByName('ASOCODAUX').AsString)+','+
                    QuotedStr(DM1.cdsEjecuta.FieldByName('ASOCODPAGO').AsString)+',';

            xTrue := False;
            for xI := 1 to 100 do
            begin
              If xCampos[xI] <> '' Then
                If xCampos[xI] = 'ASOAPENOM' Then
                begin
                  xSQL := xSQL + QuotedStr(DM1.cdsEjecuta.FieldByName('ASOAPENOM').AsString)+', ';
                  xTrue := True;
                  break;
                end;
            end;

            If not xTrue Then
              xSQL := xSQL + 'null, ';

            xSQL := xSQL +QuotedStr(DM1.cdsEjecuta.FieldByName('UPROID').AsString)+', '+
                          DM1.cdsEjecuta.FieldByName('CRESALDO').AsString+', ';
            If rgAporte.Itemindex = 0 Then
             begin
              If DM1.cdsejecuta.FieldByName('ASOTIPID').AsString = 'AC' Then
               xSQL := xSQL + DM1.cdsEjecuta.FieldByName('APOVALOR').AsString
              Else
               xSQL := xSQL + '0.00';
             end
            Else
              xSQL := xSQL + '0.00';

            try
              If dblcdbanco.Visible Then
                xSQL := xSQL + ', '+QuotedStr(DM1.cdsEjecuta.FieldByName('ASONCTA').AsString)
            except
            end;

            xSQL := xSQL +', '+QuotedStr(xCorreoFicio)+', '+QuotedStr(seAno.Text)+
                          ', '+QuotedStr(DM1.strzero(seMes.text,2));

            xTrue := False;
            for xI := 1 to 100 do
            begin
              If xCampos[xI] <> '' Then
                If xCampos[xI] = 'USEID' Then
                begin
                  xSQL := xSQL +', '+ QuotedStr(DM1.cdsEjecuta.FieldByName('USEID').AsString);
                  xSQL := xSQL +', '+ QuotedStr(DM1.cdsEjecuta.FieldByName('UPAGOID').AsString);
                  xTrue := True;
                  break;
                end;
            end;

            If dblcdbanco.Visible Then
             begin
               If xTrue = False Then
                 xSQL := xSQL +','+
                         quotedstr(dblcdFPago.text)+','+quotedstr(dblcSituacion.text)+','+
                         quotedstr(dm1.wUsuario)+','+quotedstr(DateToStr(xFechasys))+',SYSDATE)'
               Else
                 xSQL := xSQL +','+
                         quotedstr(dblcdFPago.text)+','+quotedstr(dblcSituacion.text)+','+
                         quotedstr(dm1.wUsuario)+','+quotedstr(DateToStr(xFechasys))+',SYSDATE)';
             end
            Else
             If dblcdUPro.Visible Then
              begin
               If xTrue = False Then
                 xSQL := xSQL +','+
                         quotedstr(dblcdFPago.text)+','+quotedstr(dblcSituacion.text)+','+
                         quotedstr(dm1.wUsuario)+','+quotedstr(DateToStr(xFechasys))+',SYSDATE)'
               Else
                 xSQL := xSQL +','+
                         quotedstr(dblcdFPago.text)+','+quotedstr(dblcSituacion.text)+','+
                         quotedstr(dm1.wUsuario)+','+quotedstr(DateToStr(xFechasys))+',SYSDATE)';
              end;

            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          end;
          DM1.cdsEjecuta.Next;
        end;                                            // Del While de Ejecuta

        //** cargo el oficio generado
        xSQL := 'SELECT * FROM COB204 WHERE NOFID='+QuotedStr(xCorreoFicio)+' '+
                'AND CREANO='+QuotedStr(seAno.text)+' '+
                'AND CREMES='+QuotedStr(DM1.strzero(seMes.text,2))+' '+
                'AND OFIESTADO='+QuotedStr('INICIAL');
        DM1.cdsQry4.Close;
        DM1.cdsQry4.DataRequest(xSQL);
        DM1.cdsQry4.open;

        //** MES
        DM1.cdsQry4.DisableControls;
        Case seMes.Value of
         1 : xMeses := cMeses[seMes.value];
         2 : xMeses := cMeses[seMes.value];
         3 : xMeses := cMeses[seMes.value];
         4 : xMeses := cMeses[seMes.value];
         5 : xMeses := cMeses[seMes.value];
         6 : xMeses := cMeses[seMes.value];
         7 : xMeses := cMeses[seMes.value];
         8 : xMeses := cMeses[seMes.value];
         9 : xMeses := cMeses[seMes.value];
         10 : xMeses := cMeses[seMes.value];
         11 : xMeses := cMeses[seMes.value];
         12 : xMeses := cMeses[seMes.value];
        end;

        //** DATOS DEL EMCABEZADO
        xSQL := 'SELECT CIADES CAMPO01,'+QuotedStr('Sistema de Seguridad y Bienestar')+' '+
                'CAMPO02,'+QuotedStr('Social del Magisterio')+' CAMPO03,CIALUGAR ||'+
                QuotedStr(','+FloatToStr(xDiaSys)+' de '+xMeses+' del '+FloatToStr(xAnoSys))+' '+
                'CAMPO04 FROM TGE101 WHERE CNTCONSOL='+QuotedStr('S');
        Dm1.cdsQry.Close;
        Dm1.cdsQry.DataRequest(xSQL);
        Dm1.cdsQry.Open;

        xCampo1 := Dm1.cdsQry.FieldByName('CAMPO01').AsString;
        xCampo2 := Dm1.cdsQry.FieldByName('CAMPO02').AsString;
        xCampo3 := Dm1.cdsQry.FieldByName('CAMPO03').AsString;
        xCampo4 := Dm1.cdsQry.FieldByName('CAMPO04').AsString;

        xCampo5 := Copy(Dm1.cdsQry4.FieldByName('NOFID').AsString,1,4)+'-'+
                   Dm1.cdsQry4.FieldByName('CREANO').AsString+'-'+
                   Copy(Dm1.cdsQry4.FieldByName('NOFID').AsString,5,5);
        xGlosa := 'OFICIO N° '+ xCampo5+' -DM-COB';

        xSQL := 'TMONID='+QuotedStr(Dm1.cdsQry4.FieldByName('TMONID').AsString);
        xTMonAbr := Dm1.DisplayDescrip('prvSQL','TGE103','TMONDES,TMONABR',xSQL,'TMONABR');
        xTmondes := Dm1.cdsQry.FieldByName('TMONDES').AsString;

        //** esto es para el oficio de planilla
        If dblcdUPro.Visible Then
        begin
          xCampo6 := 'DIRECTOR DE LA '+ dbedescri.Text;
          xCAmpo7 := xMeses;
          xCAmpo8 := DM1.strzero(seAno.text,4);//DM1.strzero(seAno.text,2);
          xCampo9 := xTmonAbr;
          xCampo10 := FloatToStrF(xMonto,ffFixed,15,2);
          xSQL := 'FLGCAR='+QuotedStr('SC');
          xCampo11 :=  Dm1.DisplayDescrip('prvSQL','CRE107','REPCAR,REPNOM',xSQL,'REPNOM');
          xCampo12 := DM1.cdsQry.FieldByName('REPCAR').AsString;

          //** para la carta
          rptOficio.Template.FileName := wRutaRpt+'\Oficios.rtm';
          rptOficio.Template.LoadFromFile ;

          wwDBRichEdit1.Width := 800;
          wwDBRichEdit2.Width := 800;
          wwDBRichEdit1.Lines.LoadFromFile(wRutaRpt+'\Plantilla0_Oficio.RTF');
          wwDBRichEdit2.Lines.Clear;
          wwDBRichEdit1.Font.Name := 'Courier New';
          wwDBRichEdit2.Font.Name := 'Courier New';
          wwDBRichEdit1.Font.Size := 9;
          wwDBRichEdit2.Font.Size := 9;
          //**

          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit1.Lines.Text,'CAMPO01',xCampo1);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO02',xCampo2);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO03',xCampo3);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO04',xCampo4);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO05',xCampo5);

          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO06',xCampo6);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO07',xCampo7);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO08',xCampo8);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO09',xCampo9);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO10',xCampo10);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO11',xCampo11);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO12',xCampo12);

          wwDBRichEdit2.Lines.SaveToFile(wRutaRpt+'\Oficio0_'+Trim(xCampo5)+'.RTF');
          //rchtPagina.LoadFromFile(wRutaRpt+'\Oficio0_'+Trim(xCampo5)+'.RTF');
          xRutaWord := ExtractFilePath('C:\Archivos de programa\Microsoft Office\Office\Winword.exe') ;
          WinExecAndWait32(xRutaWord+'Winword.exe ' +wRutaRpt+'\Oficio0_'+Trim(xCampo5)+'.RTF',1);
          //WinExecAndWait32(xRutaWord+'Winword.exe ' +ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio1_'+Trim(xCampo5)+'.RTF',1);
          //rptOficio.Print;
          //rptOficio.stop;

          //** Para la Plantilla0_1_oficio, sustento
          xSQL :='SELECT C.USENOM, A.USEID, A.ASONCTA, SUM(A.CREMTOCUO) CREMTOCUO, A.ASOAPENOM, '+
                 'A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, SUM(A.CREMTOCUO + A.CREMTOAPO) TOTAL, A.UPROID, '+
                 'SUM(A.CREMTOAPO) CREMTOAPO, '+
                 'CASE WHEN A.COBMES=''01'' THEN ''DESCUENTOS DEL MES DE ENERO DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''02'' THEN ''DESCUENTOS DEL MES DE FEBRERO DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''03'' THEN ''DESCUENTOS DEL MES DE MARZO DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''04'' THEN ''DESCUENTOS DEL MES DE ABRIL DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''05'' THEN ''DESCUENTOS DEL MES DE MAYO DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''06'' THEN ''DESCUENTOS DEL MES DE JUNIO DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''07'' THEN ''DESCUENTOS DEL MES DE JULIO DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''08'' THEN ''DESCUENTOS DEL MES DE AGOSTO DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''09'' THEN ''DESCUENTOS DEL MES DE SETIEMBRE DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''10'' THEN ''DESCUENTOS DEL MES DE OCTUBRE DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''11'' THEN ''DESCUENTOS DEL MES DE NOVIEMBRE DE''||''  ''||A.COBANO ELSE '+
                 'CASE WHEN A.COBMES=''12'' THEN ''DESCUENTOS DEL MES DE DICIEMBRE DE''||''  ''||A.COBANO '+
                 'END END END END END END END END END END END END TITULO,B.UPRONOM '+
                 'FROM COB319 A, APO102 B, APO101 C '+
                 'WHERE A.NROFICIO ='+QuotedStr(xCorreoFicio)+' '+
                 'AND A.UPROID=B.UPROID '+
                 'AND A.UPROID=C.UPROID(+) '+
                 'AND A.UPAGOID=C.UPAGOID(+) '+
                 'AND A.USEID=C.USEID(+) '+
                 'GROUP BY A.USEID, C.USENOM, A.ASONCTA, A.ASOAPENOM, A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, A.UPROID, A.COBMES, A.COBANO, B.UPRONOM';
          Dm1.cdsReporte1.close;
          Dm1.cdsReporte1.DataRequest(xSQL);
          Dm1.cdsReporte1.open;
          bdeppOficio.DataSource := Dm1.dsReporte1;
          rptOficio.Template.FileName := wRutaRpt+'\Oficios_SUS.rtm';
          rptOficio.Template.LoadFromFile ;
          rptOficio.Print;
          rptOficio.stop;
          //ppDesigner1.Show;
        end
        Else //** esto es para el teleahorro
        begin
          xSQL := 'SELECT CCBCOID FROM TGE106 WHERE BANCOID='+QuotedStr(dblcdbanco.text)+
                  ' AND CIAID=''02''';
          Dm1.cdsQry2.Close;
          Dm1.cdsQry2.DataRequest(xSQL);
          Dm1.cdsQry2.Open;
          xCtaDerra := Dm1.cdsQry2.FieldByName('CCBCOID').AsString;

          xSQL:='SELECT TGE105.BANCOID, '+
                'CASE WHEN FLGCAR=''GOL'' THEN REPNOM ELSE NULL END RGOL, '+
                'CASE WHEN FLGCAR=''GOL'' THEN REPCAR ELSE NULL END CGOL, '+
                'TGE105.BANCONOM '+
                'FROM CRE107 G, TGE105 '+
                'WHERE G.BANCOID='+QuotedStr(dblcdbanco.text)+' '+
                'AND G.FLGCAR=''GOL'' '+
                'AND G.BANCOID=TGE105.BANCOID';
          Dm1.cdsQry2.Close;
          Dm1.cdsQry2.DataRequest(xSQL);
          Dm1.cdsQry2.Open;

          //** Para el sustento
          //** 06/01/2003 - PJSV, esto es para el reporte del sustento del teleahorro
//          xSQL := 'SELECT C.PROVBCOID, SUM(A.CREMTOCUO) CREMTO, COUNT(C.PROVBCOID) MOVIMIENTO, '+
          xSQL := 'SELECT XX.*, APO213.PROVBCODES UPRONOM FROM( '+
                  'SELECT C.PROVBCOID, SUM(A.CREMTOCUO) CREMTO, COUNT(C.PROVBCOID) MOVIMIENTO '+
                  'FROM COB319 A, APO102 C '+
                  'WHERE A.NROFICIO='+QuotedStr(xCorreoFicio)+' '+
                  'AND A.UPROID=C.UPROID(+) '+
//                  'GROUP BY C.PROVBCOID, C.UPRONOM ';
                  'GROUP BY C.PROVBCOID '+
                  ')XX, APO213 WHERE XX.PROVBCOID=APO213.PROVBCOID(+)';

//                  'HAVING COUNT(C.PROVBCOID)>0';

          Dm1.cdsReporte1.close;
          Dm1.cdsReporte1.DataRequest(xSQL);
          Dm1.cdsReporte1.open;

          xCampo6  := Dm1.cdsQry2.FieldByName('RGOL').AsString;
          //xCampo7  := Dm1.cdsQry2.FieldByName('RGOL').AsString;
          xCampo8  := Dm1.cdsQry2.FieldByName('CGOL').AsString + ' - OF. PRINCIPAL';
          xCampo9  := xMeses;
          xCampo10 := DM1.strzero(seAno.text,4);
          xCampo11 := xTmonAbr;
          xCampo12 := FloatToStrF(xMonto,ffFixed,15,2);
          xCampo13 := IntToStr(xConta);
          xCAmpo14 := IntToStr(Dm1.cdsReporte1.RecordCount);
          xCampo15 := xCtaDerra;

          // xSQL := 'FLGCAR='+QuotedStr('SC');
          // xCampo11 :=  Dm1.DisplayDescrip('prvSQL','CRE107','REPCAR,REPNOM',xSQL,'REPNOM');
          // xCampo12 := DM1.cdsQry.FieldByName('REPCAR').AsString;

          //** para la carta
          rptOficio.Template.FileName := wRutaRpt+'\Oficios.rtm';
          rptOficio.Template.LoadFromFile ;

          wwDBRichEdit1.Width := 800;
          wwDBRichEdit2.Width := 800;
          wwDBRichEdit1.Lines.LoadFromFile(wRutaRpt+'\Plantilla0_2_Oficio.RTF');
          wwDBRichEdit2.Lines.Clear;
          wwDBRichEdit1.Font.Name := 'Courier New';
          wwDBRichEdit2.Font.Name := 'Courier New';
          wwDBRichEdit1.Font.Size := 9;
          wwDBRichEdit2.Font.Size := 9;
          //**

          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit1.Lines.Text,'CAMPO01',xCampo1);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO02',xCampo2);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO03',xCampo3);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO04',xCampo4);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO05',xCampo5);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO06',xCampo6);
          //wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO07',xCampo7);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO08',xCampo8);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO09',xCampo9);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO10',xCampo10);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO11',xCampo11);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO12',xCampo12);

          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO13',xCampo13);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO14',xCampo14);
          wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO15',xCampo15);

          wwDBRichEdit2.Lines.SaveToFile(wRutaRpt+'\Oficio0_2_'+Trim(xCampo5)+'.RTF');
          xRutaWord := ExtractFilePath('C:\Archivos de programa\Microsoft Office\Office\Winword.exe') ;
          WinExecAndWait32(xRutaWord+'Winword.exe ' +wRutaRpt+'\Oficio0_2_'+Trim(xCampo5)+'.RTF',1);
          //rchtPagina.LoadFromFile(wRutaRpt+'\Oficio0_2_'+Trim(xCampo5)+'.RTF');
          //rptOficio.Print;
          //rptOficio.stop;

          bdeppOficio.DataSource := Dm1.dsReporte1;
          rptOficio.Template.FileName := wRutaRpt+'\Oficios_TELE.rtm';
          rptOficio.Template.LoadFromFile;
          plblTitTel.caption := 'COBRANZA POR ENCARGO - '+dbedescri.Text+' - MES DE '+xMeses+' DE '+seAno.text;
          rptOficio.Print;
          rptOficio.stop;
        end;
        {xSQL := 'UPDATE COB204 SET OFIESTADO='+QuotedStr('IMPRESO')+
                ', OFIGLOSA='+QuotedStr(xGlosa)+' '+
                'WHERE NOFID='+QuotedStr(Trim(xCampo5));
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);}

        DM1.cdsQry5.Edit;
        DM1.cdsQry5.FieldByName('OFIESTADO').AsString:='IMPRESO';
        DM1.cdsQry5.FieldByName('OFIGLOSA').AsString:=xGlosa;
        DM1.cdsQry5.Post;

        DM1.cdsQry5.ApplyUpdates(0);

        //** 21/01/2003 - PJSV, actualzia el # de oficio
        xSQL := 'UPDATE COB322 SET NOFID='+QuotedStr(xCorreoFicio)+' '+
                'WHERE PERIODO='+QuotedStr(IntToStr(seAno.value)+Dm1.StrZero(IntToStr(seMes.value),2))+' '+
                'AND FORPAGOID='+QuotedStr(dblcdFPago.text)+' AND ';
        If dblcdbanco.Visible Then
          xSQL := xSQL + 'BANCOID='+QuotedStr(dblcdbanco.text)
        Else
        If dblcdUPro.Visible Then
          xSQL := xSQL + 'UPROID='+QuotedStr(dblcdUPro.text);

        xSql := xSql + ' AND ASOSITID='+QuotedStr(dblcSituacion.text);

        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        DM1.cdsModelo.EnableControls;
        HHas :=  TimeToStr(Time);
        lblTFin.Caption:=HHas;
        lblTtiempo.Caption:= TimeToStr(StrToTime(HHas) - StrToTime(HDes));

        Showmessage('Proceso Concluido');
      end;
    end;                                              // Fin del Qry  Total = 0
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFPlantManEnv.dbcbascClick(Sender: TObject);
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

procedure TFPlantManEnv.dbenroordExit(Sender: TObject);
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

procedure TFPlantManEnv.dbcbascExit(Sender: TObject);
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

procedure TFPlantManEnv.pprRepResTelPreviewFormCreate(Sender: TObject);
begin
   pprRepResTel.PreviewForm.WindowState:=WsMaximized;
   TppViewer(pprRepResTel.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFPlantManEnv.dblcdbancoExit(Sender: TObject);
begin
   If bbtnCancT.focused Then exit;

   If (activecontrol.parent.name=dblcdbanco.parent.name) and
      (activecontrol.taborder<dblcdbanco.taborder) Then
      exit;

   If DM1.cdsBcos.IndexFieldNames<>'BANCOID' Then
      DM1.cdsBcos.IndexFieldNames:='BANCOID';

   DM1.cdsBcos.setkey;
   DM1.cdsBcos.FieldByName('BANCOID').AsString:=dblcdBanco.Text;
   If not DM1.cdsBcos.gotokey Then
   begin
      showmessage('Banco no es válido');
      dbedescri.text:='';
      dblcdBanco.SetFocus;
      exit;
   end;
   dbedescri.text:=DM1.cdsBcos.FieldByName('BANCONOM').AsString;
   wBcoid:=dblcdBanco.text;
end;

procedure TFPlantManEnv.pprRepResNTelPreviewFormCreate(Sender: TObject);
begin
   pprRepResNTel.PreviewForm.WindowState:=WsMaximized;
   TppViewer(pprRepResNTel.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFPlantManEnv.pprRepDetallePreviewFormCreate(Sender: TObject);
begin
   pprRepDetalle.PreviewForm.WindowState:=WsMaximized;
   TppViewer(pprRepDetalle.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TFPlantManEnv.pprRepResTelAfterPrint(Sender: TObject);
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

procedure TFPlantManEnv.pprRepDetalleAfterPrint(Sender: TObject);
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

procedure TFPlantManEnv.dbcbgrpExit(Sender: TObject);
begin
   If bbtnCancC.focused Then exit;

   If (activecontrol.parent.name=dbcbgrp.parent.name) and
      (activecontrol.taborder<dbcbgrp.taborder) Then
      exit;
end;

procedure TFPlantManEnv.rgtipagrClick(Sender: TObject);
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

procedure TFPlantManEnv.dblctipopeExit(Sender: TObject);
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

   If (dblctipope.text<>'CONTADOR') and
      (dblctipope.text<>'SUMATORIA') Then
   begin
      showmessage('Tipo de operación no es válido');
      dblctipope.SetFocus;
      exit;
   end;
end;

procedure TFPlantManEnv.rgtipagrExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=rgtipagr.parent.name) and
      (activecontrol.taborder<rgtipagr.taborder) Then
      exit;
end;

procedure TFPlantManEnv.dbelongExit(Sender: TObject);
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

procedure TFPlantManEnv.rgtipdetClick(Sender: TObject);
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

procedure TFPlantManEnv.dbevalorExit(Sender: TObject);
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

procedure TFPlantManEnv.rgtipdetExit(Sender: TObject);
begin
   If bbtnCancD.focused Then exit;

   If (activecontrol.parent.name=rgtipdet.parent.name) and
      (activecontrol.taborder<rgtipdet.taborder) Then
      exit;
end;

procedure TFPlantManEnv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsformapago.filter:='';
  DM1.cdsformapago.filtered:=False;
  DM1.cdsEjecuta.IndexFieldNames:='';  
end;

procedure TFPlantManEnv.Correlativo;
begin
  //** cuando es primera vez, se pasa el nombre del campo del cual se sacara el correlativo
  xCorre := xCorreCampo;
  Repeat
    //** si esto se repitiera más de una vez, xCorre será igual al correlativo que se
    //** encontro más 1
    CorreCred(xcorre);
    //** verifica en la tabla auxiliar que el correlativo no este tomado por otro usuario
    BuscaCorre;
    //** esta busqueda se repitirá hasta que se encuentra un correlativo que no haya
    //** sido tomado
  until xPaso = True;
end;

procedure TFPlantManEnv.CorreCred(pCorre: String);
var
 xCadena,xSQL : String;
begin
 //** dependiendo del pCorre, lleno xCadena para el Sql
 If pCorre = 'CREDID' Then
   xCadena := 'substr(CREDID,9,7)'
 Else
   xCadena := pCorre;

   xSQL := 'select '+xCadena+' +1 NUMCRED from CRE206 '+
           'where '+ xCorreWhere +
           xCorreCampo+' IN (select x.'+xCorreCampo+' from CRE206 x, CRE206 y '+
          ' where '+ xCorreWherex + xCorreWherey +')';
   Dm1.cdsQry.Close;
   Dm1.cdsQry.DataRequest(xSQL);
   Dm1.cdsQry.Open;
   //** asigno el nuevo correlativo
   If Dm1.cdsQry.FieldByName('NUMCRED').AsInteger > 0 Then
    xCorre := DM1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger),xCeros)
   Else
    xCorre := DM1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger + 1),xCeros)
end;

procedure TFPlantManEnv.BuscaCorre;
var
 xSQL : String;
begin
  //** por defecto
  xPaso := True;
  //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
  //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
  //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
  //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
  xSQL := 'SELECT count(NUMERO) TOTAL FROM '+xTabla+' WHERE NUMERO='+QuotedStr(xCorre)+
           ' AND TIPO ='+QuotedStr(dblcdFPago.text);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSQL);
  Dm1.cdsQry.Open;
  //** False = para que siga repitiendo la busqueda
  If Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 Then
    xPaso := False
  Else
   //** sino graba en la tabla auxiliar (cre201)
    begin
     xSQL := 'INSERT INTO '+xTabla+' (NUMERO,TIPO) VALUES (';
     If xCorreCampo = 'CREDID' Then
      xSQL := xSQL + QuotedStr(xCorreCadena+xCorre)+','
     Else
      xSQL := xSQL + QuotedStr(xCorre)+',';
     xSQL := xSQL + QuotedStr(dblcdFPago.text)+')';

     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     If StrtoInt(xCorre) = 1 Then
      begin
       If xCorreCampo = 'CREDID' Then
        xSQL := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,CORREANO,TIPO) VALUES ('+QuotedStr(xCorreCadena+xCorre)+
                ','+QuotedStr(xArea)+','+QuotedStr(floatToStr(xAnoSys))+','+QuotedStr(xTipocorre)+')'
       Else
       If xCorreCampo = 'NROFICIO' Then
        xSQL := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,CORREANO,TIPO) VALUES ('+QuotedStr(xCorreCadena+xCorre)+
                ','+QuotedStr(xArea)+','+QuotedStr(floatToStr(xAnoSys))+','+QuotedStr(xTipocorre)+')'
       Else
        xSQL := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,CORREANO,TIPO) VALUES ('+QuotedStr(xCorre)+
                ','+QuotedStr(xArea)+','+QuotedStr(floatToStr(xAnoSys))+','+QuotedStr(xTipocorre)+')';
      end
     Else
      begin
       If xCorreCampo = 'CREDID' Then
        xSQL := 'UPDATE CRE206 SET '+xCorreCampo+' ='+QuotedStr(xCorreCadena+xCorre)+
                ' WHERE CREAREA ='+QuotedStr(xArea)+' AND CORREANO='+QuotedStr(floatToStr(xAnoSys))+
                ' AND SUBSTR(CREDID,1,2)='+QuotedStr(copy(xCorreCadena,1,2))+
                ' AND SUBSTR(CREDID,3,4)='+QuotedStr(copy(xCorreCadena,3,4))+
                ' AND SUBSTR(CREDID,7,2)='+QuotedStr(copy(xCorreCadena,7,2))+
                ' AND TIPO ='+QuotedStr(xTipocorre)
       Else
        If xCorreCampo = 'NROFICIO' Then
         xSQL := 'UPDATE CRE206 SET '+xCorreCampo+' ='+QuotedStr(xCorreCadena+xCorre)+
                ' WHERE CREAREA ='+QuotedStr(xArea)+' AND CORREANO='+QuotedStr(floatToStr(xAnoSys))+
                ' AND SUBSTR(NROFICIO,1,2)='+QuotedStr(copy(xCorreCadena,1,2))+
                ' AND SUBSTR(NROFICIO,3,2)='+QuotedStr(copy(xCorreCadena,3,2))+
                ' AND TIPO ='+QuotedStr(xTipocorre)
        Else
         xSQL := 'UPDATE CRE206 SET '+xCorreCampo+' ='+QuotedStr(xCorre)+
                 ' WHERE CREAREA ='+QuotedStr(xArea)+' AND CORREANO='+QuotedStr(floatToStr(xAnoSys))+
                ' AND TIPO ='+QuotedStr(xTipocorre);
      end;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    end;
end;

Function TFPlantManEnv.CargaModelo : Boolean;
var
   xIndices, xGrupos, xComa : string;
   xI : Integer;
   xMonto : Double;
begin
   Try
    xSQLE := 'APOANO='+QuotedStr(wAno)+' AND APOMES='+QuotedStr(wMes);
    DM1.DisplayDescrip('prvSQL', 'APO117', 'APOVALOR', xSQLE, 'APOVALOR');
    xMonto :=  DM1.cdsQry.FieldByName('APOVALOR').AsFloat;

    xSQLE   := 'SELECT ';
    xComa   := '';
    xGrupos := '';
    DM1.cdsModelo.DisableControls;
    DM1.cdsModelo.First;
    while not DM1.cdsModelo.eof do
    begin
      If DM1.cdsModelo.FieldByName('FLGGRP').AsString='N' Then
      begin
        If DM1.cdsModelo.FieldByName('OPERAC').AsString='SUMATORIA' Then
          xSQLE := xSQLE+xcoma+'SUM('+DM1.cdsModelo.FieldByName('ALIAS').AsString+'.'+
                                DM1.cdsModelo.FieldByName('CAMPO').AsString+') '+
                                DM1.cdsModelo.FieldByName('CAMPO').AsString
        Else
          xSQLE := xSQLE+xcoma+'COUNT(DISTINCT '+DM1.cdsModelo.FieldByName('ALIAS').AsString+'.'+
                                            DM1.cdsModelo.FieldByName('CAMPO').AsString+') '+
                                            DM1.cdsModelo.FieldByName('CAMPO').AsString;
      end
      Else
      begin
        If DM1.cdsModelo.FieldByName('TIPODET').AsString='S' Then
          xSQLE := xSQLE+xcoma+DM1.cdsModelo.FieldByName('ALIAS').AsString+'.'+
                          DM1.cdsModelo.FieldByName('CAMPO').AsString
        Else
          xSQLE := xSQLE+xcoma+QuotedStr(DM1.cdsModelo.FieldByName('VALOR').AsString)+' '+
                                DM1.cdsModelo.FieldByName('NOMBRE').AsString+
                                DM1.cdsModelo.FieldByName('ITEM').AsString;

        If DM1.cdsModelo.FieldByName('FLGGRP').AsString='S' Then
         begin
          If DM1.cdsModelo.FieldByName('TIPODET').AsString='S' Then
           begin
            If xgrupos='' Then
              xgrupos:='GROUP BY '+DM1.cdsModelo.FieldByName('ALIAS').AsString+'.'+
                                   DM1.cdsModelo.FieldByName('CAMPO').AsString
            Else
              xgrupos:=xgrupos+', '+DM1.cdsModelo.FieldByName('ALIAS').AsString+'.'+
                                    DM1.cdsModelo.FieldByName('CAMPO').AsString;
           end;
         end;
       end;
      xcoma:=', ';
      DM1.cdsModelo.Next;
     end;

    DM1.cdsModelo.filter:='FLDASC='+QuotedStr('S');
    DM1.cdsModelo.filtered:=True;
    DM1.cdsModelo.IndexFieldNames:='ORDASC';

    xindices:='';
    DM1.cdsModelo.First;
    while not DM1.cdsModelo.eof do
     begin
      If xindices='' Then
       xindices:=DM1.cdsModelo.FieldByName('CAMPO').AsString
      Else
       xindices:=xindices+';'+DM1.cdsModelo.FieldByName('CAMPO').AsString;
      DM1.cdsModelo.Next;
     end;

    DM1.cdsModelo.filter:='';
    DM1.cdsModelo.filtered:=False;
    DM1.cdsModelo.IndexFieldNames:='ITEM';

    //** 23/12/2002 - PJSV
    If rgAporte.ItemIndex = 0 Then
     xSqlE := xSqlE + ', A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, '+
                      'SUM(A.CREMTO + APOVALOR) TOTAL, A.UPROID, A.ASOTIPID'
    Else
     xSqlE := xSqlE + ', A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, '+
                      'SUM(A.CREMTO) TOTAL, A.UPROID, A.ASOTIPID';

    If dblcdbanco.Visible Then
      xSQLE := xSQLE + ', ASONCTA';

    If not dblcdbanco.Visible Then
      xSqlE := xSqlE + ', B.USEID, B.UPAGOID';

    If DM1.cdsformapago.FieldByName('FORPAGFAPO').AsString='SDB' Then // TeleAhorro
    begin
      xSQLE:=xSQLE+' FROM CRE404 A, APO201 B, APO102 C '+
                   'WHERE A.CREANO='+QuotedStr(IntTostr(seAno.value))+' '+
                   'AND A.CREMES='+QuotedStr(DM1.StrZero(IntToStr(seMes.value),2))+' '+
                   'AND A.BANCOID='+QuotedStr(wBcoId)+' '+
                   'AND A.ASOID=B.ASOID AND B.UPROID=C.UPROID';
      If xAnaSitAso = 'S' Then
      begin
        xSQLE:=xSQLE+' AND A.ASOTIPID='+QuotedStr(dblcSituacion.Text)+
                     ' AND (B.SITCTA=''A'' OR B.SITCTA=''V'') ';
      end;
    end
    Else
    begin
      If rgAporte.itemindex = 0 Then
      begin
        //xSQLE:=xSQLE+', SUM(APOVALOR) APOVALOR FROM CRE404 A, APO201 B, APO102 C, APO117 'xMonto
        xSQLE:=xSQLE+', '+FloattoStr(xMonto)+' APOVALOR '+
                     ' FROM CRE404 A, APO201 B, APO102 C, APO117 '+
                     'WHERE A.CREANO='+QuotedStr(IntTostr(seAno.value))+' '+
                     'AND A.CREMES='+QuotedStr(DM1.StrZero(IntToStr(seMes.value),2))+' '+
                     'AND A.ASOID=B.ASOID AND B.UPROID=C.UPROID '+
                     'AND APOANO='+QuotedStr(IntTostr(seAno.value))+' '+
                     'AND A.UPROID='+QuotedStr(wUproId)+' '+
                     'AND APOMES='+QuotedStr(DM1.StrZero(IntToStr(seMes.value),2))+' '+
                     'and A.FORPAGOID='+quotedstr(wFPagoId);

        If xAnaSitAso = 'S' Then
          xSQLE:=xSQLE+' AND A.ASOSITID='+QuotedStr(dblcSituacion.Text)
      end
      Else
      begin
        xSQLE:=xSQLE+' FROM CRE404 A, APO201 B, APO102 C '+
                     'WHERE A.CREANO='+QuotedStr(IntTostr(seAno.value))+' '+
                     'AND A.CREMES='+QuotedStr(DM1.StrZero(IntToStr(seMes.value),2))+' '+
                     'AND A.UPROID='+QuotedStr(wUproId)+' '+
                     'AND A.ASOID=B.ASOID AND B.UPROID=C.UPROID'+' '+
                     'and A.FORPAGOID='+quotedstr(wFPagoId);
        If xAnaSitAso = 'S' Then
          xSQLE:=xSQLE+' AND A.ASOSITID='+QuotedStr(dblcSituacion.Text);
      end;
    end;
    xSQLE:=xSQLE+' AND a.FORPAGOID ='+quotedstr(dblcdFPago.text)
             +xgrupos+', A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, A.UPROID, A.ASOTIPID';

    If dblcdbanco.Visible Then
      xSQLE := xSQLE + ', ASONCTA';

    If not dblcdbanco.Visible Then
      xSqlE := xSqlE + ', B.USEID, B.UPAGOID';

      //** este SQL me sirve para armar el  TXT y el sustento del oficio
      DM1.cdsejecuta.Close;
      DM1.cdsejecuta.datarequest(xSQLE);
      DM1.cdsejecuta.open;

      For xI := 1 to DM1.cdsEjecuta.FieldCount -1 do
      begin
        xCampos[xI] := '';
      end;

      //** Se cargan los campos que se usaran en la generacion del oficio
      For xI := 1 to DM1.cdsEjecuta.FieldCount -1 do
      begin
        xCampos[xI] := Dm1.cdsEjecuta.Fields[xI].FieldName;
      end;
      //**
       DM1.cdsejecuta.IndexFieldNames:=xindices;

      xConta := 0;
      DM1.cdsejecuta.First;
      while not DM1.cdsejecuta.eof do
      begin
        xconta := xConta + 1;
        DM1.cdsejecuta.Next;
        //break;
      end;
   Result := True;
  except
   Result := False;
  end;
end;

procedure TFPlantManEnv.rptOficioPreviewFormCreate(Sender: TObject);
begin
	rptOficio.PreviewForm.ClientHeight := 500;
	rptOficio.PreviewForm.ClientWidth  := 650;
	TppViewer(rptOficio.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;

procedure TFPlantManEnv.dblcSituacionExit(Sender: TObject);
begin
  xWhere:='ASOSITID='''+dblcSituacion.Text+'''';
  edtSituacion.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');
end;

procedure TFPlantManEnv.fcShapeBtn1Click(Sender: TObject);
begin
  pnlTiempo.Visible:=False;
end;

procedure TFPlantManEnv.SpeedButton1Click(Sender: TObject);
var
  xSQL : string;
begin
  xSQL:='SELECT A.ASOAPENOM, B.SITCTA, B.ASONCTA, C.PROVBCOID, SUM(A.CREMTO) CREMTO, A.ASOID, A.ASOCODMOD, '+
        'A.ASOCODAUX, A.ASOCODPAGO, SUM(A.CREMTO) TOTAL, A.UPROID, A.ASOTIPID, ASONCTA, B.ASODNI '+
        'FROM CRE404 A, APO201 B, APO102 C '+
        'WHERE A.CREANO='+Quotedstr(seAno.Text)+' AND A.CREMES='+Quotedstr(seMes.text)+' AND A.BANCOID='+Quotedstr(wBcoid)+' '+
        'AND A.ASOID=B.ASOID AND B.UPROID=C.UPROID AND A.ASOTIPID=''CE'' '+
        'AND B.SITCTA<>''A'' '+
        'GROUP BY A.ASOAPENOM,B.SITCTA, B.ASONCTA, C.PROVBCOID, A.ASOID, A.ASOCODMOD, A.ASOCODAUX, '+
        'A.ASOCODPAGO, A.UPROID, A.ASOTIPID, ASONCTA, B.ASODNI';

  {DM1.cdsHijo.Close;
  DM1.cdsHijo.IndexFieldNames := '';
  DM1.cdsHijo.Filter :='';
  DM1.cdsHijo.Filtered :=}


end;


procedure TFPlantManEnv.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

end.


