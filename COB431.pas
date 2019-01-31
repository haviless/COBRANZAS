unit COB431;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, fcTreeView, FileCtrl, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache,
  DB, DBClient, fcButton, fcImgBtn, fcShapeBtn, wwdblook, Wwdbdlg, ComCtrls,
  ppVar, DBGrids, Mask, fcLabel, ppDBBDE, ActnMan, ActnColorMaps, ToolWin,
  ActnCtrls, XPMan, SimpleDS;

type
    TFCtaRecBcoCon = class(TForm)
    BtnCerrar: TBitBtn;
    Memo1: TMemo;
    Label1: TLabel;
    btnDesOra: TBitBtn;
    gbDriver: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppRepDescargo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBPipeline2: TppDBPipeline;
    ppRepInconsistencias: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    Edit1: TEdit;
    cdsFantasmas: TClientDataSet;
    dsFantasmas: TDataSource;
    btnInconsistencias: TBitBtn;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgCabecera: TwwDBGrid;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    dbgDetalle: TwwDBGrid;
    ppLabel1: TppLabel;
    pplblFecha: TppLabel;
    pplblHora: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape5: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape6: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel13: TppLabel;
    ppDBText16: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    pplImpreso: TppLabel;
    gbTrans: TGroupBox;
    pbtransfiere: TProgressBar;
    lblMensaje: TLabel;
    fcShapeBtn3: TfcShapeBtn;
    gbBuscaInco: TGroupBox;
    Label2: TLabel;
    EdtBuscarInc: TEdit;
    fcsbDetDia: TfcShapeBtn;
    gbBuscaDet: TGroupBox;
    Label3: TLabel;
    edtBuscarDet: TEdit;
    TabSheet4: TTabSheet;
    TabTeletransfer: TPageControl;
    fcShapeBtn4: TfcShapeBtn;
    dbgNoReg: TDBGrid;
    fcsbImpNoReg: TfcShapeBtn;
    fcLabel1: TfcLabel;
    TabSheet5: TTabSheet;
    dbgIncon: TDBGrid;
    bdeNoReg: TppBDEPipeline;
    pprNoReg: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppShape7: TppShape;
    ppLabel17: TppLabel;
    ppShape8: TppShape;
    ppLabel18: TppLabel;
    ppShape9: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppShape10: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppShape11: TppShape;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppShape12: TppShape;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel28: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel29: TppLabel;
    fcsbAportes: TfcShapeBtn;
    cdsAsoid: TClientDataSet;
    dsAsoid: TDataSource;
    btnEnviar: TBitBtn;
    gbProceso: TGroupBox;
    Edit2: TEdit;
    procedure BtnCerrarClick(Sender: TObject);
    procedure btnDesOraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnEliminaClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure btnVerCobClick(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure TabTeletransferChange(Sender: TObject);
    procedure EdtBuscarIncChange(Sender: TObject);
    procedure EdtBuscarIncKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure fcsbDetDiaClick(Sender: TObject);
    procedure fcsbDesAutClick(Sender: TObject);
    procedure edtBuscarDetChange(Sender: TObject);
    procedure edtBuscarDetKeyPress(Sender: TObject; var Key: Char);
    procedure fcsbImpNoRegClick(Sender: TObject);
    procedure ppHeaderBand4BeforePrint(Sender: TObject);
    procedure dbgCabeceraCellChanged(Sender: TObject);
    procedure fcShapeBtn4Click(Sender: TObject);
    procedure fcsbAportesClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    Function  cadena(cadena:String; cantidad:Integer):String;
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function verificaNoRegistrado:String;
    procedure descargoPago;
    procedure validarPagos;
  end;

var
  FCtaRecBcoCon: TFCtaRecBcoCon;

implementation

uses COBDM1, COB314, COB429, COB428, COB437, COB438;

{$R *.dfm}

procedure TFCtaRecBcoCon.BtnCerrarClick(Sender: TObject);
begin
FCtaRecBcoCre.Close;
end;

procedure TFCtaRecBcoCon.btnDesOraClick(Sender: TObject);
begin
  gbDriver.Visible := True;
  gbDriver.Left := 110;
  gbDriver.Top  := 30;
end;

procedure TFCtaRecBcoCon.FormCreate(Sender: TObject);
var xSql:String;
begin
   gbDriver.Visible := False;
   xSql := 'SELECT FECPRO FEC, SUBSTR(FECPRO,7,2)||''/''||SUBSTR(FECPRO,5,2)||''/''||SUBSTR(FECPRO,1,4) FECPRO,'
   +' NUMDEP, MONTOT, CUEREC, DECODE(TIPMON, ''PEN'', ''MN'', ''ME'') CODMON,'
   +' CIERRE FROM COB_CUE_REC_BAN_CON_CAB ORDER BY FEC';
   // WHERE CIERRE IS NULL';
   DM1.cdsCuentas.Close;
   DM1.cdsCuentas.DataRequest(xSql);
   DM1.cdsCuentas.Open;

   dbgCabecera.Selected.Clear;
   dbgCabecera.Selected.Add('CIERRE'#9'10'#9'Estado~Transacción'#9#9);
   dbgCabecera.Selected.Add('FECPRO'#9'10'#9'Fecha~de Pago'#9#9);
   dbgCabecera.Selected.Add('NUMDEP'#9'10'#9'Cantidad de~Registros'#9#9);
   dbgCabecera.Selected.Add('MONTOT'#9'12'#9'Monto total~Cobrado'#9#9);
   dbgCabecera.Selected.Add('CUEREC'#9'20'#9'Núumero de la~Cuenta'#9#9);
   dbgCabecera.Selected.Add('CODMON'#9'7'#9'Tipo de~Moneda'#9#9);
   dbgCabecera.ApplySelected;

   


end;

procedure TFCtaRecBcoCon.btnVerCobClick(Sender: TObject);
Var vUsuario, vDocPag, vfecpag, vAsoId, xSql, fechaProceso:String;
MontoTot:Currency;
Begin
  validarPagos;
  MessageDlg('Validación Concluida', mtInformation,[mbOk],0);
End;

procedure TFCtaRecBcoCon.BitBtn1Click(Sender: TObject);
Var
  archivo: TextFile;
  S, origen, vFecPag: string;
  canCab, monCab:Currency;
  canDet, monDet:Currency;
  xSql:String;
begin
  origen := FileListBox1.FileName;
  assignfile(archivo,origen);
  Reset(archivo);
  Readln(archivo, S);
  Edit1.Text := S;
  // Verificando que no se haya descargado
  vFecPag := Copy(Edit1.Text,20,8);
  xSql := 'SELECT * FROM COB_CUE_REC_BAN_CON_CAB WHERE FECPRO = '+QuotedStr(vFecPag);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  if DM1.cdsQry.RecordCount = 0 Then
  begin
    xSql := 'SELECT * FROM COB_CUE_REC_BAN_CON_CAB';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    xSql := 'SELECT * FROM COB_CUE_REC_BAN_CON_DET';
    DM1.cdsQry3.Close;
    DM1.cdsQry3.DataRequest(xSql);
    DM1.cdsQry3.Open;
    DM1.cdsQry2.Insert;
    DM1.cdsQry2.FieldByName('TIPREG').AsString  := Copy(Edit1.Text,1,2);
    DM1.cdsQry2.FieldByName('RUCEMP').AsString  := Copy(Edit1.Text,3,11);
    DM1.cdsQry2.FieldByName('CODCLA').AsString  := Copy(Edit1.Text,14,3);
    DM1.cdsQry2.FieldByName('TIPMON').AsString  := Copy(Edit1.Text,17,3);
    DM1.cdsQry2.FieldByName('FECPRO').AsString  := Copy(Edit1.Text,20,8);
    DM1.cdsQry2.FieldByName('CUEREC').AsString  := Copy(Edit1.Text,28,18);
    DM1.cdsQry2.FieldByName('VACIO').AsString   := Copy(Edit1.Text,46,105);
    DM1.cdsQry2.ApplyUpdates(0);
    While Not EoF(Archivo) Do
    Begin
      Readln(archivo, S);
      Edit1.Text := S;
      If Copy (Edit1.Text,1,2) = '02' Then
      Begin
        xSql := ' SELECT * FROM COB_CUE_REC_BAN_CON_DET WHERE FECPAG = '+QuotedStr(Copy(Edit1.Text,136,8))+' AND OFIPAG = '+QuotedStr(Copy(Edit1.Text,126,4))
        +' AND NUMMOV = '+QuotedStr(Copy(Edit1.Text,130,6))+' AND REFERENCIAS = '+QuotedStr(Copy(Edit1.Text,33,48));
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSql);
        DM1.cdsQry.Open;
        If DM1.cdsQry.RecordCount = 0 Then
        Begin
          DM1.cdsQry3.Insert;
          DM1.cdsQry3.FieldByName('TIPREG').AsString    := Copy(Edit1.Text,1,2);
          DM1.cdsQry3.FieldByName('NOMCLI').AsString    := Copy(Edit1.Text,3,30);
          DM1.cdsQry3.FieldByName('REFERENCIAS').AsString    := Copy(Edit1.Text,33,48);
          DM1.cdsQry3.FieldByName('IMPORI').AsCurrency  := StrToCurr(Copy(Edit1.Text,81,13)+'.'+ Copy(Edit1.Text,94,2));
          DM1.cdsQry3.FieldByName('IMPDEP').AsCurrency  := StrToCurr(Copy(Edit1.Text,96,13)+'.'+Copy(Edit1.Text,109,2));
          DM1.cdsQry3.FieldByName('IMPMOR').AsCurrency  := StrToCurr(Copy(Edit1.Text,111,13)+'.'+Copy(Edit1.Text,124,2));
          DM1.cdsQry3.FieldByName('OFIPAG').AsString    := Copy(Edit1.Text,126,4);
          DM1.cdsQry3.FieldByName('NUMMOV').AsString    := Copy(Edit1.Text,130,6);
          DM1.cdsQry3.FieldByName('FECPAG').AsString    := Copy(Edit1.Text,136,8);
          DM1.cdsQry3.FieldByName('TIPVAL').AsString    := Copy(Edit1.Text,144,2);
          DM1.cdsQry3.FieldByName('CANENT').AsString    := Copy(Edit1.Text,146,2);
          DM1.cdsQry3.FieldByName('VACIO').AsString     := Copy(Edit1.Text,148,5);
          DM1.cdsQry3.ApplyUpdates(0);
        End;
      End;
      If Copy (Edit1.Text,1,2) = '03' Then
      Begin
        monCab := StrToCurr(Copy (Edit1.Text,27,13)+'.'+Copy (Edit1.Text,40,2));
        canCab := StrToCurr(Copy(Edit1.Text,3,9));
        xSql := 'UPDATE COB_CUE_REC_BAN_CON_CAB SET NUMDEP = '+CurrToStr(canCab)+','
        +'MONTOT = '+CurrToStr(monCab)+' WHERE FECPRO = '+QuotedStr(vFecPag);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      End;
    End;
    // Verificando lo descargado del detalle
    xSql := 'SELECT COUNT(*) CANTIDAD, SUM(NVL(IMPDEP,0)) MONTO FROM COB_CUE_REC_BAN_CON_DET WHERE FECPAG = '+QuotedStr(vFecPag);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    canDet := DM1.cdsQry.FieldByName('CANTIDAD').AsCurrency;
    monDet := DM1.cdsQry.FieldByName('MONTO').AsCurrency;
    // Verificando lo descargado en la cabecera
    xSql := 'SELECT NUMDEP, MONTOT FROM COB_CUE_REC_BAN_CON_CAB WHERE FECPRO = '+QuotedStr(vFecPag);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    canCab := DM1.cdsQry.FieldByName('NUMDEP').AsCurrency;
    monCab := DM1.cdsQry.FieldByName('MONTOT').AsCurrency;
    If (canDet <> canCab) Or (monCab  <> monDet) Then
       MessageDlg('Información descargada con error entre la cabecera y el detalle', mtInformation,[mbOk],0)
    Else
       MessageDlg('Información descargada Ok.', mtInformation,[mbOk],0);
  end
  Else
  Begin
    MessageDlg('El archivo seleccionado ya fue descargado anteriormente', mtInformation,[mbOk],0);
  End;
  CloseFile(archivo);
  xSql := 'SELECT SUBSTR(FECPRO,7,2)||''/''||SUBSTR(FECPRO,5,2)||''/''||SUBSTR(FECPRO,1,4) FECPRO,'
  +' NUMDEP, TO_CHAR(MONTOT, ''9,999,999.99'') MONTOT, CUEREC, DECODE(TIPMON, ''PEN'', ''MN'', ''ME'') CODMON, CIERRE FROM'
  +' COB_CUE_REC_BAN_CON_CAB WHERE CIERRE IS NULL';
  DM1.cdsCuentas.Close;
  DM1.cdsCuentas.DataRequest(xSql);
  DM1.cdsCuentas.Open;
  dbgCabecera.Refresh;
  gbDriver.Visible := False;
end;

procedure TFCtaRecBcoCon.BitBtn3Click(Sender: TObject);
begin
 gbDriver.Visible := False;
end;



procedure TFCtaRecBcoCon.FormActivate(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT OFDESID, OFDESNOM FROM APO110';
  DM1.cdsOfDes.Close;
  DM1.cdsOfDes.DataRequest(xSql);
  DM1.cdsOfDes.Open;
  FCtaRecBcoCon.Left := 3;
  FCtaRecBcoCon.Top  := 60;
  FCtaRecBcoCon.Height := 484;
  gbDriver.Visible   := False;
  gbTrans.Visible    := False;
  TabTeletransfer.TabIndex := 0;
  DM1.cdsRegCob.Close;
  gbBuscaInco.Visible := False;
  gbBuscaDet.Visible := False;
  gbProceso.Visible := False;
end;

procedure TFCtaRecBcoCon.btnEliminaClick(Sender: TObject);
Var xSql, fecPag:String;
begin
   fecPag := copy(DM1.cdsQry4.FieldByName('FECPRO').AsString,7,4)+copy(DM1.cdsQry4.FieldByName('FECPRO').AsString,4,2)+copy(DM1.cdsQry4.FieldByName('FECPRO').AsString,1,2);
   xSql := 'DELETE COB_CUE_REC_BAN_CON_CAB WHERE FECPRO = '+QuotedStr(fecPag);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Execute;
   xSql := 'DELETE COB_CUE_REC_BAN_CON_DET WHERE FECPAG = '+QuotedStr(fecPag);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Execute;
end;


procedure TFCtaRecBcoCon.fcShapeBtn1Click(Sender: TObject);
begin
 Try
    FRepPagBcosCon := TFRepPagBcosCon.create(Self);
    FRepPagBcosCon.ShowModal;
  Finally
    FRepPagBcosCon.Free;
  end;
end;

procedure TFCtaRecBcoCon.fcShapeBtn2Click(Sender: TObject);
Var xSql, fecPag:String;
begin
  If MessageDlg('se eliminara registros descargado del banco.  Seguro?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    fecPag := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
    xSql := 'DELETE COB_CUE_REC_BAN_CON_CAB WHERE FECPRO = '+QuotedStr(fecPag);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Execute;
    xSql := 'DELETE COB_CUE_REC_BAN_CON_DET WHERE FECPAG = '+QuotedStr(fecPag);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Execute;
  End;
end;


procedure TFCtaRecBcoCon.TabTeletransferChange(Sender: TObject);
Var mensaje, vfecpag, xSql:String;
begin
  gbBuscaInco.Visible := False;
  gbBuscaDet.Visible := False;
  vfecpag := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  // Detalle de Pagos
  If TabTeletransfer.TabIndex  = 1 Then
  begin
    xSql := 'SELECT ROWNUM NUMERO,  ASOCODMOD, ASOAPENOM , IMPDEP, ''C-00''||NUMMOV NUMMOV, AGENBCODES, CIERRE, ASOID,'
    +' TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG FROM (SELECT B.ASOCODMOD, B.ASOAPENOM, A.IMPDEP, A.NUMMOV, A.REFERENCIAS, C.AGENBCODES,'
    +' A.CIERRE, B.ASOID, A.FECPAG  FROM COB_CUE_REC_BAN_CON_DET A, APO201 B, COB102 C WHERE FECPAG = '+QuotedStr(vfecpag)
    +' AND SUBSTR(REFERENCIAS,9,10) = B.ASOID AND C.BANCOID(+) = ''05'' AND A.OFIPAG = C.AGENBCOID(+) ORDER BY C.AGENBCODES) ORDER BY ASOAPENOM';
    DM1.cdsDFam.Close;
    DM1.cdsDFam.DataRequest(xSql);
    DM1.cdsDFam.Open;
    gbBuscaDet.Visible := True;
    gbBuscaDet.Top := 95;
    gbBuscaDet.Left := 112;
    edtBuscarDet.SetFocus;
  End;
  // Pagos no Registrados
  If TabTeletransfer.TabIndex = 2 Then
  Begin
    xSql := 'SELECT ROWNUM CUENTA, ASOID, ASOCODMOD, ASOAPENOM, FECPAG, NUMMOV, AGENBCODES, IMPDEP'
    +' FROM( SELECT SUBSTR(A.REFERENCIAS,9,10) ASOID, B.ASOCODMOD ASOCODMOD, SUBSTR(B.ASOAPENOM,1,31) ASOAPENOM,'
    +' TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, IMPDEP, ''C-00''||NUMMOV NUMMOV, C.AGENBCODES'
    +' FROM COB_CUE_REC_BAN_CON_DET A, APO201 B, COB102 C WHERE FECPAG = '+QuotedStr(vfecpag)
    +' AND NVL(CIERRE, ''X'') = ''N'' AND SUBSTR(A.REFERENCIAS,9,10) = B.ASOID AND C.BANCOID(+) = ''05'''
    +' AND  A.OFIPAG = C.AGENBCOID(+) ORDER BY B.ASOAPENOM)';
    DM1.cdsDLabo.Close;
    DM1.cdsDLabo.DataRequest(xSql);
    DM1.cdsDLabo.Open;
    mensaje := 'PAGOS DETECTADOS COMO NO REGISTRADOS '+chr(13)+' DEL DIA : '+DM1.cdsCuentas.FieldByName('FECPRO').AsString
    +chr(13)+'VERIFIQUE SI REALMENTE NO FUERON DESCARGADOS'+chr(13)+'ANTES DE PROCEDER A SU DESCARGO AUTOMATICO'
    +chr(13)+chr(13)+'VALIDE LA INFORMACION DEL DIA ANTES DE DESCARGAR';
    MessageDlg(mensaje, mtInformation,[mbOk],0);
    fcsbImpNoReg.Hint := 'Impresión de pagos no registrados del dia '+DM1.cdsCuentas.FieldByName('FECPRO').AsString
  End;
  // Inconsistencias
  If TabTeletransfer.TabIndex = 3 Then
  Begin
    If Not DM1.cdsRegCob.Active  Then
    Begin
      xSql := 'SELECT SUBSTR(A.REFERENCIAS,21,10) ASOID, SUBSTR(B.ASOAPENOM,1,31) ASOAPENOM,'
      +' TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, IMPDEP, ''C-00''||NUMMOV NUMMOV, C.AGENBCODES'
      +' FROM COB_CUE_REC_BAN_CON_DET A, APO201 B, COB102 C WHERE NVL(CIERRE, ''X'') <> ''K'' AND SUBSTR(A.REFERENCIAS,9,10) = B.ASOID'
      +' AND A.OFIPAG = C.AGENBCOID ORDER BY B.ASOAPENOM';
      DM1.cdsTRela.Close;
      DM1.cdsTRela.DataRequest(xSql);
      DM1.cdsTRela.Open;
    End;
    gbBuscaInco.Visible := True;
    gbBuscaInco.Top := 95;
    gbBuscaInco.Left := 112;
    EdtBuscarInc.SetFocus;
  End;
end;

procedure TFCtaRecBcoCon.EdtBuscarIncChange(Sender: TObject);
begin
If Length(Trim(EdtBuscarInc.Text))>0 Then
   DM1.cdsTRela.Locate('ASOAPENOM', VarArrayOf([TRIM(EdtBuscarInc.Text)]), [loPartialKey]);

end;

procedure TFCtaRecBcoCon.EdtBuscarIncKeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 Then
  Begin
    If Length(Trim(EdtBuscarInc.Text))>0 Then
    Begin
      EdtBuscarInc.Text := '';
      dbgIncon.SetFocus;
    End
    Else
    Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
      EdtBuscarInc.SetFocus;
    End;
  End;
end;

procedure TFCtaRecBcoCon.fcShapeBtn3Click(Sender: TObject);
begin
 Try
    FRepResCon := TFRepResCon.create(Self);
    FRepResCon.ShowModal;
  Finally
    FRepResCon.Free;
  end;
end;

procedure TFCtaRecBcoCon.fcsbDetDiaClick(Sender: TObject);
begin
  ppRepDescargo.Print;
  ppRepDescargo.Stop;
end;


Procedure TFCtaRecBcoCon.fcsbDesAutClick(Sender: TObject);
Var
  montoRestante, montoDescontadoCuo, montoCapital, montoInteres, montoFlat, tipoCambio: Currency;
  xSql, xCampos, xValores: String;
  xcreestadoant, xcreestidant, xmesExc, xcredidExc: String;
Begin
  // verificando si el monto ya fue pagado o si tiene algun tipo de inconsistencias.
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
  +' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    MessageDlg(' En el Sistema ya existe registro de este pago ', mtInformation,[mbOk],0);
    Exit;
  End
  Else
  Begin
    If DM1.cdsQry5.FieldByName('MONTOT').AsCurrency > 0 Then
    Begin
      MessageDlg(' Se ha detectado registro de este pago,'+chr(13)+'pero con inconsistencias en el monto.'+chr(13)+'Verifique y registre en forma manual', mtInformation,[mbOk],0);
      Exit;
    End;
  End;
  // Chequeando que solo el numero de documento este mal
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
  +' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    MessageDlg('En el sistema ya existe registro de este pago,'+chr(13)+'pero con otro número de documento.'+chr(13)+' Verifique, y registre en forma manual', mtInformation,[mbOk],0);
    Exit;
  End;
  // Chequeando que solo la fecha este mal
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    MessageDlg('En el sistema ya existe registro de este pago,'+chr(13)+'pero con otra fecha de deposito.'+chr(13)+' Verifique, y registre en forma manual', mtInformation,[mbOk],0);
    Exit;
  End;
  // Chequeando que solo exista error en la cuenta
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
  +' AND CREESTID NOT IN (''04'', ''13'') AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString);
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    MessageDlg('En el sistema ya existe registro de este pago,'+chr(13)+'pero en otra cuenta.'+chr(13)+' Verifique, y registre en forma manual', mtInformation,[mbOk],0);
    Exit;
  End;
  If MessageDlg('No se ha logrado detectar pagos en el sistema para este registro'+chr(13)+' ¿ Desea descargar este registro ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    xSql := 'SELECT TCAMVBC FROM TGE107 WHERE FECHA = (SELECT MAX(FECHA) FROM TGE107 WHERE FECHA <= '+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+')';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    tipoCambio := DM1.cdsQry.FieldByName('TCAMVBC').AsCurrency;
    // Tomando datos del APO201
    xSql := 'SELECT * FROM APO201 WHERE ASOID ='+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString);
    DM1.cdsAsociados.Close;
    DM1.cdsAsociados.DataRequest(xSql);
    DM1.cdsAsociados.Open;
    montoRestante := DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency;
    // Proceso para el descargo en forma automatica del monto depositado en el Banco
    // Cuotas Vencidas
    xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
    +' AND TO_CHAR(A.CREFOTORG, ''YYYYMMDD'')  < '+QuotedStr(Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 4,2)+ Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 1,2))
    +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') <= '+QuotedStr(Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 4,2))
    +' ORDER BY CREFVEN, CREMTO';
    DM1.cdsCuotas.Close;
    DM1.cdsCuotas.DataRequest(xSql);
    DM1.cdsCuotas.Open;
    If DM1.cdsCuotas.RecordCount >= 1 Then
    Begin
      While Not DM1.cdsCuotas.Eof Do
      Begin
        xmesExc := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
        xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
        // Cuando el monto a pagar en la cuota es menor que el saldo disponible
        If montoRestante >= (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency) Then
        Begin
          montoRestante   := montoRestante - (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency);
          montoDescontadoCuo := DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency;
          montoCapital    := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
          montoInteres    := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
          montoFlat       := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
          xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
          xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
          xSql := 'UPDATE CRE302 SET'
          +' CRECAPITAL = '+DM1.cdsCuotas.FieldByName('CREAMORT').AsString+',CREMTOINT = '+DM1.cdsCuotas.FieldByName('CREINTERES').AsString
          +',CREMTOFLAT = '+DM1.cdsCuotas.FieldByName('CREFLAT').AsString+',CREMTOCOB = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString
          +',CREMONLOC = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString+',CRESALDO = 0'
          +',CREESTID = ''21'' ,CREESTADO = ''CANCELADO'' ,CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)
          +',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
          +',FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
          +',HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
          xValores := ' ''02'','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
          +','+QuotedStr('21')+','+QuotedStr('CANCELADO')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' , '+QuotedStr(dm1.xOfiDes);
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        end
        Else
        // Cuando el monto a pagar en la cuota es mayor que el saldo disponible
        Begin
          If montoRestante > 0 Then
          Begin
            montoDescontadoCuo := montoRestante;
            // Controlando el Flat
            If DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency < DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
                montoFlat := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
              End
              Else
              Begin
                montoFlat := montoRestante;
                montoRestante := 0;
              End;
            End;
            // Controlando el Interes
            If DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency < DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency);
                montoInteres := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
              End
              Else
              Begin
                montoInteres := montoRestante;
                montoRestante := 0;
              End;
            End;
            // Controlando el Capital
            If DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency < DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency);
                montoCapital := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
              End
              Else
              Begin
                montoCapital := montoRestante;
                montoRestante := 0;
              End;
            End;
            xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
            xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
            xSql := 'UPDATE CRE302 SET CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)+',CREMTOINT = NVL(CREMTOINT,0)+'+CurrToStr(montoInteres)
            +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)+',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
            +',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)+',CRESALDO = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
            +',CREESTID = ''27'', CREESTADO = ''PARCIAL'''
            +',CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)
            +',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
            +',USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
            +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            //  Añadiendo detalles de pago
            xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
            +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
            +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
            +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
            xValores := ' ''02'' ,'+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
            +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
            +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
            +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
            +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
            +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
            +', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(DM1.xOfiDes);
            xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          End;
        End;
        DM1.cdsCuotas.Next;
      End;
    End;
    // Proceso para el descargo en forma automatica del monto depositado en el Banco
    // Cuotas No Vencidas
    xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
    +' AND TO_CHAR(A.CREFOTORG, ''YYYYMMDD'')  < '+QuotedStr(Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 4,2)+ Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 1,2))
    +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') > '+QuotedStr(Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString, 4,2))
    +' ORDER BY CREFVEN DESC, CREMTO DESC';
    DM1.cdsCuotas.Close;
    DM1.cdsCuotas.DataRequest(xSql);
    DM1.cdsCuotas.Open;
    If DM1.cdsCuotas.RecordCount >= 1 Then
    Begin
      While Not DM1.cdsCuotas.Eof Do
      Begin
        xmesExc := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
        xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
        // Cuando el monto a pagar en la cuota es menor que el saldo disponible
        If montoRestante >= (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency+DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
        Begin
          montoRestante   := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency+DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
          montoDescontadoCuo := (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency)+(DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
          montoCapital    := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
          montoInteres    := 0.00;
          montoFlat       := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
          xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
          xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
          xSql := 'UPDATE CRE302 SET CRECAPITAL = '+DM1.cdsCuotas.FieldByName('CREAMORT').AsString
          +',CREMTOINT = '+CurrToStr(0.00)+',CREMTOFLAT = '+DM1.cdsCuotas.FieldByName('CREFLAT').AsString
          +',CREMTOCOB = '+CurrToStr(montoDescontadoCuo)+',CREMONLOC = '+CurrToStr(montoDescontadoCuo)
          +',CRESALDO = 0 ,CREESTID = ''23'' ,CREESTADO = ''CANCELADO A'' ,CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)
          +',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
          +',FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
          xValores := ' ''02'' ,'+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
          +','+QuotedStr('23')+','+QuotedStr('CANCELADO A')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(DM1.xOfiDes);
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        end
        Else
        // Cuando el monto a pagar en la cuota es mayor que el saldo disponible
        Begin
          If montoRestante > 0 Then
          Begin
            montoDescontadoCuo := montoRestante;
            // Controlando el Flat
            If DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency < DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
                montoFlat := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
              End
              Else
              Begin
                montoFlat := montoRestante;
                montoRestante := 0.00;
              End;
            End;
            // Controlando el Interes
            montoInteres := 0.00;
            // Controlando el Capital
            If DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency < DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then
            Begin
              If montoRestante > (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency) Then
              Begin
                montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency);
                montoCapital := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
              End
              Else
              Begin
                montoCapital := montoRestante;
                montoRestante := 0.00;
              End;
            End;
            xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
            xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
            xSql := 'UPDATE CRE302 SET CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)+',CREMTOINT = 0.00'
            +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)+',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
            +',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)+',CRESALDO = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
            +',CREESTID = ''27'' ,CREESTADO = ''PARCIAL'' ,CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)
            +',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
            +',FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,USUARIO = '+QuotedStr(DM1.wUsuario)
            +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
            +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            //  Añadiendo detalles de pago
            xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
            +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
            +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
            +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
            xValores := ' ''02'' ,'+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
            +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
            +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
            +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
            +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
            +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
            +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(DM1.xOfiDes);
            xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          End;
        End;
        DM1.cdsCuotas.Next;
      End;
    End;
    // Verificando si hay monto restante para ser enviado a Exceso
    If montoRestante > 0 Then
    Begin
      // Modificando campo en el CRE302
      xSql := 'UPDATE CRE302 SET CREMTOEXC =  '+CurrToStr(montoRestante)+' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+xcredidExc
      +' AND CREANO||CREMES ='+xmesExc;
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      //  Añadiendo detalles de pago
      xCampos := 'CIAID,   ASOID,    ASOCODMOD, ASOCODAUX ,   USEID ,   UPROID,   UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
      +' CREMONLOC, CREMTOCOB, TMONID,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
      +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
      +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
      xValores := ' ''02''  ,'+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
      +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
      +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTOCUO').AsString
      +','+CurrToStr(montoRestante)+','+CurrToStr(montoRestante)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)
      +','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
      +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
      +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(montoRestante)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'') , SYSDATE'
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)+','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('EXC')
      +','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')+','+QuotedStr('21')+','+QuotedStr('CANCELADO')
      +','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)+', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), '''' ';
      xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    end;
    // Actualizando el CRE301
    xSql := 'SELECT * FROM CRE301 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)+'  AND CREESTID <> ''13'' ';
    DM1.cdsCredito.Close;
    DM1.cdsCredito.DataRequest(xSql);
    DM1.cdsCredito.Open;
    While Not DM1.cdsCredito.Eof Do
    Begin
     DM1.xCnd := 'S';
     DM1.AplicaSaldoPre(DM1.cdsCredito.FieldByName('ASOID').AsString, DM1.cdsCredito.FieldByName('CREDID').AsString);
     DM1.cdsCredito.Next;
    End;
    // Actualizar el registro COB_CUE_REC_BAN_CON_DET
    xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
    +' AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
    +' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' ';
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSql);
    DM1.cdsQry5.Open;
    If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
    Begin
      xSql := 'UPDATE COB_CUE_REC_BAN_CON_DET SET CIERRE = ''K'' WHERE SUBSTR(REFERENCIAS,9,10) = '+DM1.cdsRegCob.FieldByName('ASOID').AsString
      +' AND NUMMOV = SUBSTR('+QuotedStr(DM1.cdsRegCob.FieldByName('NUMMOV').AsString)+',5,6)';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := ' SELECT SUBSTR(A.REFERENCIAS,9,10) ASOID, SUBSTR(B.ASOAPENOM,1,31) ASOAPENOM, TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, MONTOT, ''C-00''||NUMMOV NUMMOV, C.AGENBCODES'
      +' FROM COB_CUE_REC_BAN_CON_DET A, APO201 B, COB102 C WHERE NVL(CIERRE, ''X'') <> ''K'' AND SUBSTR(A.REFERENCIAS,9,10) = B.ASOID AND A.OFIPAG = C.AGENBCOID ORDER BY B.ASOAPENOM';
      DM1.cdsRegCob.Close;
      DM1.cdsRegCob.DataRequest(xSql);
      DM1.cdsRegCob.Open;
    End;
    // Actualizar el registro COB_CUE_REC_BAN_CON_CAB
    xSql := 'SELECT * FROM COB_CUE_REC_BAN_CON_DET WHERE FECPAG = '+QuotedStr(DM1.cdsCuentas.FieldByname('FECPRO').AsString)+ ' AND NVL(CIERRE, ''Z'') <> ''K'' ';
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;
    If DM1.cdsQry1.RecordCount = 0 Then
    Begin
       DM1.cdsCuentas.Edit;
       DM1.cdsCuentas.FieldByName('CIERRE').AsString := 'Ok';
       DM1.cdsCuentas.ApplyUpdates(0);
    end;
    MessageDlg('El monto pagado por banco fue descargado,'+chr(13)+'satisfactoriamente en el sistema.'+chr(13)+'Verifique', mtInformation,[mbOk],0);
  end;
end;



procedure TFCtaRecBcoCon.edtBuscarDetChange(Sender: TObject);
begin
If Length(Trim(edtBuscarDet.Text))>0 Then
   DM1.cdsDFam.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscarDet.Text)]), [loPartialKey]);
end;

procedure TFCtaRecBcoCon.edtBuscarDetKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key=#13 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
    Begin
      edtBuscarDet.Text := '';
      dbgDetalle.SetFocus;
    End
    Else
    Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
      edtBuscarDet.SetFocus;
    End;
  End;
end;

procedure TFCtaRecBcoCon.fcsbImpNoRegClick(Sender: TObject);
begin
  pprNoReg.Print;
  pprNoReg.Stop;
end;

procedure TFCtaRecBcoCon.ppHeaderBand4BeforePrint(Sender: TObject);
begin
  ppLabel14.Caption := 'PAGOS EFECTUADOS EN CUENTA RECAUDARORA DEL : '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  ppLabel28.Caption := 'NO DETECTADOS COMO REGISTRADOS EN EL SISTEMA';
  ppLabel29.Caption := 'IMPRESO POR : '+DM1.wUsuario;
end;

procedure TFCtaRecBcoCon.dbgCabeceraCellChanged(Sender: TObject);
begin
  TabSheet2.Caption := 'Detalle del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
  TabSheet4.Caption := 'Pagos no registrados del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
end;

Procedure TFCtaRecBcoCon.fcShapeBtn4Click(Sender: TObject);
Var
  montoRestante, montoDescontadoCuo, montoCapital, montoInteres, montoFlat, tipoCambio: Currency;
  xSql, xCampos, xValores, vfecpag: String;
  xcreestadoant, xcreestidant, xmesExc, xcredidExc: String;
Begin
   vfecpag := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
   If MessageDlg('Se va a proceder a descargar todos estos registros en el Sistema.  Seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
     DM1.cdsDLabo.First;
     While Not DM1.cdsDLabo.Eof Do
     Begin
       If verificaNoRegistrado = 'S' Then
       Begin
         descargoPago;
       End;
       DM1.cdsDLabo.Next;
     End;
     validarPagos;
     xSql := 'SELECT ROWNUM CUENTA, ASOID, ASOCODMOD, ASOAPENOM, FECPAG, NUMMOV, AGENBCODES, IMPDEP FROM'
     +'( SELECT SUBSTR(A.REFERENCIAS,9,10) ASOID, B.ASOCODMOD ASOCODMOD, SUBSTR(B.ASOAPENOM,1,31) ASOAPENOM, TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG, IMPDEP, ''C-00''||NUMMOV NUMMOV, C.AGENBCODES'
     +' FROM COB_CUE_REC_BAN_CON_DET A, APO201 B, COB102 C'
     +' WHERE FECPAG = '+QuotedStr(vfecpag)
     +' AND NVL(CIERRE, ''X'') = ''N'' AND SUBSTR(A.REFERENCIAS,9,10) = B.ASOID AND A.OFIPAG = C.AGENBCOID'
     +' ORDER BY B.ASOAPENOM)';
     DM1.cdsDLabo.Close;
     DM1.cdsDLabo.DataRequest(xSql);
     DM1.cdsDLabo.Open;
     dbgNoReg.Refresh;
     MessageDlg('Proceso de descargo Concluido', mtInformation,[mbOk],0);
   End;
End;

Function TFCtaRecBcoCon.verificaNoRegistrado: String;
Var xSql:String;
Begin
  // verificando si el monto ya fue pagado o si tiene algun tipo de inconsistencias.
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
  +' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('IMPDEP').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End
  Else
  Begin
    If DM1.cdsQry5.FieldByName('MONTOT').AsCurrency > 0 Then
    Begin
      Result := 'N';
      Exit;
    End;
  End;
  // Chequeando que solo el numero de documento este mal
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+' AND BANCOID = ''05'' AND FORPAGID = ''03'' '
  +' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('IMPDEP').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End;
  // Chequeando que solo la fecha este mal
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+' AND BANCOID = ''05'' AND FORPAGID = ''03'' '
  +' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('IMPDEP').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End;
  // Chequeando que solo exista error en la cuenta
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREESTID NOT IN (''04'', ''13'') AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
  +' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString);
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('IMPDEP').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End;
  Result := 'S';
  Exit;
End;

Procedure TFCtaRecBcoCon.descargoPago;
Var  montoRestante, montoDescontadoCuo, montoCapital, montoInteres, montoFlat, tipoCambio: Currency;
  xSql, xCampos, xValores, xflging: String;
  xcreestadoant, xcreestidant, xmesExc, xcredidExc: String;
Begin
  xflging := 'N';
  xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND A.CREESTID = ''02'' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'')';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount = 0 Then Exit;

  xSql := 'SELECT TCAMVBC FROM TGE107 WHERE FECHA = (SELECT MAX(FECHA) FROM TGE107 WHERE FECHA <= '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+')';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  tipoCambio := DM1.cdsQry.FieldByName('TCAMVBC').AsCurrency;
  // Tomando datos del APO201
  xSql := 'SELECT * FROM APO201 WHERE ASOID ='+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString);
  DM1.cdsAsociados.Close;
  DM1.cdsAsociados.DataRequest(xSql);
  DM1.cdsAsociados.Open;
  montoRestante := DM1.cdsDLabo.FieldByName('IMPDEP').AsCurrency;
  // Proceso para el descargo en forma automatica del monto depositado en el Banco
  // Cuotas Vencidas
  xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND TO_CHAR(A.CREFOTORG, ''YYYYMMDD'')  < '+QuotedStr(Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 4,2)+ Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 1,2))
  +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') <= '+QuotedStr(Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 4,2))
  +' ORDER BY CREFVEN, CREMTO';
  DM1.cdsCuotas.Close;
  DM1.cdsCuotas.DataRequest(xSql);
  DM1.cdsCuotas.Open;
  If DM1.cdsCuotas.RecordCount >= 1 Then
  Begin
    xflging := 'S';
    While Not DM1.cdsCuotas.Eof Do
    Begin
      xmesExc    := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
      xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      // Cuando el monto a pagar en la cuota es menor que el saldo disponible
      If montoRestante >= (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency) Then
      Begin
        montoRestante      := montoRestante - (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency);
        montoDescontadoCuo := DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency;
        montoCapital       := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
        montoInteres       := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
        montoFlat          := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
        xcreestadoant      := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
        xcreestidant       := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
        xSql := 'UPDATE CRE302 SET '
        +' CRECAPITAL = '+DM1.cdsCuotas.FieldByName('CREAMORT').AsString
        +',CREMTOINT = '+DM1.cdsCuotas.FieldByName('CREINTERES').AsString
        +',CREMTOFLAT = '+DM1.cdsCuotas.FieldByName('CREFLAT').AsString
        +',CREMTOCOB = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString
        +',CREMONLOC = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString
        +',CRESALDO = 0'
        +',CREESTID = ''21'' ,CREESTADO = ''CANCELADO'' '
        +',CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
        +',NROOPE = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
        +',CREFPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',FOPERAC = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',USUARIO = '+QuotedStr(DM1.wUsuario)
        +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
        +',HREG = SYSDATE'
        +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)
        +' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        //  Añadiendo detalles de pago
        xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
        +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
        +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
        +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
        xValores := ' ''02'' ,'+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
        +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
        +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DE LA CUENTA RECAUDADORA')
        +','+QuotedStr('21')+','+QuotedStr('CANCELADO')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
        +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(DM1.xOfiDes)  ;
        xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      end
      Else
      // Cuando el monto a pagar en la cuota es mayor que el saldo disponible
      Begin
        If montoRestante > 0 Then
        Begin
          montoDescontadoCuo := montoRestante;
          // Controlando el Flat
          If DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency < DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
              montoFlat := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
            End
            Else
            Begin
              montoFlat := montoRestante;
              montoRestante := 0;
            End;
          End;
          // Controlando el Interes
          If DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency < DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency);
              montoInteres := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
            End
            Else
            Begin
              montoInteres := montoRestante;
              montoRestante := 0;
            End;
          End;
          // Controlando el Capital
          If DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency < DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency);
              montoCapital := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
            End
            Else
            Begin
              montoCapital := montoRestante;
              montoRestante := 0;
            End;
          End;
          xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
          xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
          xSql := 'UPDATE CRE302 SET CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)+',CREMTOINT = NVL(CREMTOINT,0)+'+CurrToStr(montoInteres)
          +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)+',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
          +',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)+',CRESALDO = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
          +',CREESTID = ''27'', CREESTADO = ''PARCIAL'''
          +',CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+',NROOPE = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
          +',CREFPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',FOPERAC = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
          xValores := ' ''02''  ,'+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DE LA CUENTA RECAUDADORA')
          +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(DM1.xOfiDes);
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        End;
      End;
      DM1.cdsCuotas.Next;
    End;
  End;
  // Proceso para el descargo en forma automatica del monto depositado en el Banco
  // Cuotas No Vencidas
  xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND TO_CHAR(A.CREFOTORG, ''YYYYMMDD'')  < '+QuotedStr(Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 4,2)+ Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 1,2))
  +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'',''11'',''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') > '+QuotedStr(Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 4,2))
  +' ORDER BY CREFVEN DESC, CREMTO DESC';
  DM1.cdsCuotas.Close;
  DM1.cdsCuotas.DataRequest(xSql);
  DM1.cdsCuotas.Open;
  If DM1.cdsCuotas.RecordCount >= 1 Then
  Begin
    xflging := 'S';
    While Not DM1.cdsCuotas.Eof Do
    Begin
      xmesExc := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
      xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      // Cuando el monto a pagar en la cuota es menor que el saldo disponible
      If montoRestante >= (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency+DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
      Begin
        montoRestante   := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency+DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
        montoDescontadoCuo := (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency)+(DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
        montoCapital    := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
        montoInteres    := 0.00;
        montoFlat       := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
        xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
        xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
        xSql := 'UPDATE CRE302 SET CRECAPITAL = NVL(CRECAPITAL,0)+'+DM1.cdsCuotas.FieldByName('CREAMORT').AsString
        +',CREMTOINT = NVL(CREMTOINT,0)+'+CurrToStr(0.00)+',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+DM1.cdsCuotas.FieldByName('CREFLAT').AsString
        +',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)+',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)
        +',CRESALDO = 0 ,CREESTID = ''23'' ,CREESTADO = ''CANCELADO A'' ,CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
        +',NROOPE = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
        +',CREFPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',FOPERAC = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), HREG = SYSDATE'
        +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        //  Añadiendo detalles de pago
        xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
        +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
        +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
        +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
        xValores := ' ''02''  ,'+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
        +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
        +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
        +','+QuotedStr('23')+','+QuotedStr('CANCELADO A')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
        +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(DM1.xOfiDes);
        xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      end
      Else
      // Cuando el monto a pagar en la cuota es mayor que el saldo disponible
      Begin
        If montoRestante > 0 Then
        Begin
          montoDescontadoCuo := montoRestante;
          // Controlando el Flat
          If DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency < DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
              montoFlat := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
            End
            Else
            Begin
              montoFlat := montoRestante;
              montoRestante := 0.00;
            End;
          End;
          // Controlando el Interes
          montoInteres := 0.00;
          // Controlando el Capital
          If DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency < DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency);
              montoCapital := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
            End
            Else
            Begin
              montoCapital := montoRestante;
              montoRestante := 0.00;
            End;
          End;
          xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
          xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
          xSql := 'UPDATE CRE302 SET CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)+',CREMTOINT = 0.00'
          +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)+',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
          +',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)+',CRESALDO = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
          +',CREESTID = ''27'' ,CREESTADO = ''PARCIAL'' ,CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
          +',NROOPE = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
          +',CREFPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',FOPERAC = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',USUARIO = '+QuotedStr(DM1.wUsuario)
          +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
          xValores := ' ''02'','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')
          +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(DM1.xOfiDes);
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        End;
      End;
      DM1.cdsCuotas.Next;
    End;
  End;

  // Proceso para el descargo en forma automatica del monto depositado en el Banco
  // Cuotas en proceso de cobranzas

  {
  xSql := 'SELECT B.* FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND TO_CHAR(A.CREFOTORG, ''YYYYMMDD'')  < '+QuotedStr(Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 7,4)+Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 4,2)+ Copy(DM1.cdsDLabo.FieldByName('FECPAG').AsString, 1,2))
  +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''14'')'
  +' ORDER BY CREFVEN, CREMTO';
  DM1.cdsCuotas.Close;
  DM1.cdsCuotas.DataRequest(xSql);
  DM1.cdsCuotas.Open;
  If DM1.cdsCuotas.RecordCount >= 1 Then
  Begin
    xflging := 'S';
    While Not DM1.cdsCuotas.Eof Do
    Begin
      xmesExc    := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
      xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      // Cuando el monto a pagar en la cuota es menor que el saldo disponible
      If montoRestante >= (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency) Then
      Begin
        montoRestante      := montoRestante - (DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency);
        montoDescontadoCuo := DM1.cdsCuotas.FieldByName('CREMTO').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOCOB').AsCurrency;
        montoCapital       := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
        montoInteres       := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
        montoFlat          := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
        xcreestadoant      := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
        xcreestidant       := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
        xSql := 'UPDATE CRE302 SET '
        +' CRECAPITAL = '+DM1.cdsCuotas.FieldByName('CREAMORT').AsString
        +',CREMTOINT = '+DM1.cdsCuotas.FieldByName('CREINTERES').AsString
        +',CREMTOFLAT = '+DM1.cdsCuotas.FieldByName('CREFLAT').AsString
        +',CREMTOCOB = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString
        +',CREMONLOC = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString
        +',CRESALDO = 0'
        +',CREESTID = ''21'' ,CREESTADO = ''CANCELADO'' '
        +',CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
        +',NROOPE = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
        +',CREFPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',FOPERAC = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',USUARIO = '+QuotedStr(DM1.wUsuario)
        +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
        +',HREG = SYSDATE'
        +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)
        +' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        //  Añadiendo detalles de pago
        xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
        +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
        +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
        +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
        xValores := ' ''02'' ,'+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
        +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
        +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DE LA CUENTA RECAUDADORA')
        +','+QuotedStr('21')+','+QuotedStr('CANCELADO')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
        +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(DM1.xOfiDes)  ;
        xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      end
      Else
      // Cuando el monto a pagar en la cuota es mayor que el saldo disponible
      Begin
        If montoRestante > 0 Then
        Begin
          montoDescontadoCuo := montoRestante;
          // Controlando el Flat
          If DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency < DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
              montoFlat := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
            End
            Else
            Begin
              montoFlat := montoRestante;
              montoRestante := 0;
            End;
          End;
          // Controlando el Interes
          If DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency < DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency);
              montoInteres := DM1.cdsCuotas.FieldByName('CREINTERES').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOINT').AsCurrency;
            End
            Else
            Begin
              montoInteres := montoRestante;
              montoRestante := 0;
            End;
          End;
          // Controlando el Capital
          If DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency < DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency Then
          Begin
            If montoRestante > (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency) Then
            Begin
              montoRestante := montoRestante - (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency);
              montoCapital := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
            End
            Else
            Begin
              montoCapital := montoRestante;
              montoRestante := 0;
            End;
          End;
          xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
          xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
          xSql := 'UPDATE CRE302 SET CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)+',CREMTOINT = NVL(CREMTOINT,0)+'+CurrToStr(montoInteres)
          +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)+',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
          +',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)+',CRESALDO = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
          +',CREESTID = ''27'', CREESTADO = ''PARCIAL'''
          +',CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+',NROOPE = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
          +',CREFPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',FOPERAC = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
          xValores := ' ''02''  ,'+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DE LA CUENTA RECAUDADORA')
          +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(DM1.xOfiDes);
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        End;
      End;
      DM1.cdsCuotas.Next;
    End;
  End;
  }

  If xflging = 'S' Then
  Begin
    // Verificando si hay monto restante para ser enviado a Exceso
    If montoRestante > 0 Then
    Begin
      // Modificando campo en el CRE302
      xSql := 'UPDATE CRE302 SET CREMTOEXC =  '+CurrToStr(montoRestante)+' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(xcredidExc)
      +' AND CREANO||CREMES ='+QuotedStr(xmesExc);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'SELECT * FROM CRE302 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(xcredidExc)
      +' AND CREANO||CREMES ='+QuotedStr(xmesExc);
      DM1.cdsCuotas.Close;
      DM1.cdsCuotas.DataRequest(xSql);
      DM1.cdsCuotas.Open;
      //  Añadiendo detalles de pago
      xCampos := 'CIAID,   ASOID,    ASOCODMOD, ASOCODAUX ,   USEID ,   UPROID,   UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
      +' CREMONLOC, CREMTOCOB, TMONID,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
      +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
      +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT, OFDESID';
      xValores := ' ''02'','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
      +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
      +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString
      +','+CurrToStr(montoRestante)+','+CurrToStr(montoRestante)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)
      +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
      +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
      +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(montoRestante)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'') , SYSDATE'
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)+','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('EXC')
      +','+QuotedStr('05')+','+QuotedStr('0011-0661-67-0100024327')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO DEL TELETRANSFER')+','+QuotedStr('21')+','+QuotedStr('CANCELADO')
      +','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)+', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'', '+QuotedStr(dm1.xOfiDes);
      xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    End;
  End;
  // Actualizando el CRE301
  xSql := 'SELECT * FROM CRE301 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)+'  AND CREESTID <> ''13'' ';
  DM1.cdsCredito.Close;
  DM1.cdsCredito.DataRequest(xSql);
  DM1.cdsCredito.Open;
  While Not DM1.cdsCredito.Eof Do
  Begin
    DM1.xCnd := 'S';
    DM1.AplicaSaldoPre(DM1.cdsCredito.FieldByName('ASOID').AsString, DM1.cdsCredito.FieldByName('CREDID').AsString);
    DM1.cdsCredito.Next;
  End;
  // Actualizar el registro COB_CUE_REC_BAN_CON_DET
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
  +' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('IMPDEP').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    xSql := 'UPDATE COB_CUE_REC_BAN_CON_DET SET CIERRE = ''K'' WHERE SUBSTR(REFERENCIAS,9,10) = '+DM1.cdsDLabo.FieldByName('ASOID').AsString
    +' AND NUMMOV = SUBSTR('+QuotedStr(DM1.cdsDLabo.FieldByName('NUMMOV').AsString)+',5,6)';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  End;
  // Actualizar el registro COB_CUE_REC_BAN_CON_CAB
  xSql := 'SELECT * FROM COB_CUE_REC_BAN_CON_DET WHERE FECPAG = '+QuotedStr(DM1.cdsCuentas.FieldByname('FECPRO').AsString)+ ' AND NVL(CIERRE, ''Z'') <> ''K'' ';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  If DM1.cdsQry1.RecordCount = 0 Then
  Begin
     DM1.cdsCuentas.Edit;
     DM1.cdsCuentas.FieldByName('CIERRE').AsString := 'Ok';
     DM1.cdsCuentas.ApplyUpdates(0);
  end;
end;

procedure TFCtaRecBcoCon.validarPagos;
Var vUsuario, vDocPag, vfecpag, vAsoId, xSql, fechaProceso:String;
    MontoTot:Currency;
begin
  fechaProceso := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  // Limpiando Campos para validar información
  xSql := 'UPDATE COB_CUE_REC_BAN_CON_DET SET CIERRE=NULL, OFIREG=NULL, MONREG=NULL WHERE FECPAG = '+QuotedStr(fechaProceso)+' AND CIERRE <> ''A'' ';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  xSql := 'SELECT * FROM COB_CUE_REC_BAN_CON_DET WHERE FECPAG = '+QuotedStr(fechaProceso);
  DM1.cdsRegCob.Close;
  DM1.cdsRegCob.DataRequest(xSql);
  DM1.cdsRegCob.Open;
  While Not DM1.cdsRegCob.Eof Do
  Begin
    vasoid := copy(DM1.cdsRegCob.FieldByName('REFERENCIAS').AsString,9,10);
    vfecpag := copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString,7,2)+'/'+copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString,5,2)+'/'+copy(DM1.cdsRegCob.FieldByName('FECPAG').AsString,1,4);
    vDocPag := 'C-00'+DM1.cdsRegCob.FieldByName('NUMMOV').AsString;
    // Chequeando los registros Ok
    If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
    Begin
      xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE '
      +' ASOID = '+QuotedStr(vasoid)+' AND CREDOCPAG = '+QuotedStr(vDocPag)+' AND CREFPAG = '+ QuotedStr(vfecpag)
      +' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' '
      +' GROUP BY USUARIO';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsQry5.First;
      vUsuario := DM1.cdsQry5.FieldByName('USUARIO').AsString;
      MontoTot := 0;
      While Not DM1.cdsQry5.Eof Do
      Begin
        MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
        DM1.cdsQry5.Next;
      End;
      If DM1.cdsRegCob.FieldByName('IMPDEP').AsCurrency = MontoTot Then
      Begin
        DM1.cdsRegCob.Edit;
        DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
        DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'K';
        DM1.cdsRegCob.ApplyUpdates(0);
      End
      Else
      Begin
        If MontoTot > 0 Then
        Begin
          DM1.cdsRegCob.Edit;
          DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
          DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'M';
          DM1.cdsRegCob.ApplyUpdates(0);
        End;
      End;
    End;
    // Chequeando con error en el numero de documento
    If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
    Begin
      xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE '
      +' ASOID = '+QuotedStr(vasoid)+' AND CREFPAG = '+ QuotedStr(vfecpag)
      +' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' '
      +' GROUP BY USUARIO';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsQry5.First;
      MontoTot := 0;
      While Not DM1.cdsQry5.Eof Do
      Begin
        MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
        DM1.cdsQry5.Next;
      End;
      If DM1.cdsRegCob.FieldByName('IMPDEP').AsCurrency = MontoTot Then
      Begin
        DM1.cdsRegCob.Edit;
        DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
        DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'D';
        DM1.cdsRegCob.ApplyUpdates(0);
      End;
    End;
    // Chequeando con error en la fecha
    If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
    Begin
      xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE '
      +' ASOID = '+QuotedStr(vasoid)+' AND CREDOCPAG = '+QuotedStr(vDocPag)
      +' AND BANCOID = ''05'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0011-0661-67-0100024327'' '
      +' GROUP BY USUARIO';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsQry5.First;
      MontoTot := 0;
      While Not DM1.cdsQry5.Eof Do
      Begin
        MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
        DM1.cdsQry5.Next;
      End;
      If DM1.cdsRegCob.FieldByName('IMPDEP').AsCurrency = MontoTot Then
      Begin
        DM1.cdsRegCob.Edit;
        DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
        DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'F';
        DM1.cdsRegCob.ApplyUpdates(0);
      End;
    End;
    // Chequeando con error en la cuenta
    If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
    Begin
      xSql := ' SELECT USUARIO, NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE '
      +' ASOID = '+QuotedStr(vasoid)+' AND CREDOCPAG = '+QuotedStr(vDocPag)+' AND CREFPAG = '+ QuotedStr(vfecpag)
      +' AND CREESTID NOT IN (''04'', ''13'') GROUP BY USUARIO';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      DM1.cdsQry5.First;
      MontoTot := 0;
      While Not DM1.cdsQry5.Eof Do
      Begin
        MontoTot := MontoTot + DM1.cdsQry5.FieldByName('MONTOT').AsCurrency;
        DM1.cdsQry5.Next;
      End;
      If DM1.cdsRegCob.FieldByName('IMPDEP').AsCurrency = MontoTot Then
      Begin
        DM1.cdsRegCob.Edit;
        DM1.cdsRegCob.FieldByName('MONREG').AsCurrency := MontoTot;
        DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'C';
        DM1.cdsRegCob.ApplyUpdates(0);
      End;
    End;
    // Poniendo Flag de no registrado
    If DM1.cdsRegCob.FieldByName('CIERRE').AsString = '' Then
    Begin
      DM1.cdsRegCob.Edit;
      DM1.cdsRegCob.FieldByName('CIERRE').AsString := 'N';
      DM1.cdsRegCob.ApplyUpdates(0);
    End;
    // Recuperando oficina de Usuario que registro
    xSql := 'SELECT ORIGEN FROM USERTABLE WHERE USERID = '+QuotedStr(vUsuario);
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSql);
    DM1.cdsQry5.Open;
    DM1.cdsRegCob.Edit;
    DM1.cdsRegCob.FieldByName('OFIREG').AsString := DM1.cdsQry5.FieldByName('ORIGEN').AsString;
    DM1.cdsRegCob.ApplyUpdates(0);
    DM1.cdsRegCob.Next;
  End;
  xSql := 'SELECT * FROM COB_CUE_REC_BAN_CON_DET WHERE FECPAG = '+QuotedStr(fechaProceso)+' AND NVL(CIERRE,''X'') <> ''K'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsQry5.RecordCount = 0 Then
  Begin
     DM1.cdsCuentas.Edit;
     DM1.cdsCuentas.FieldByName('CIERRE').AsString := 'Ok';
     xSql := 'UPDATE COB_CUE_REC_BAN_CON_CAB SET CIERRE = ''Ok'' WHERE FECPRO = '+QuotedStr(fechaProceso);
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  End
  Else
  Begin
     DM1.cdsCuentas.Edit;
     DM1.cdsCuentas.FieldByName('CIERRE').AsString := '  ';
     xSql := 'UPDATE COB_CUE_REC_BAN_CON_CAB SET CIERRE = NULL WHERE FECPRO = '+QuotedStr(fechaProceso);
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  End;
  dbgCabecera.Refresh;
End;

procedure TFCtaRecBcoCon.fcsbAportesClick(Sender: TObject);
Var xSql :String;
begin
   // Chequear aportes

   If DM1.cdsDFam.FieldByName('CIERRE').AsString = 'A' Then
   Begin
     MessageDlg('Pago ya se encuentra marcado con aporte', mtInformation,[mbOk],0);
     Exit;
   End;

   If DM1.cdsDFam.FieldByName('CIERRE').AsString <> 'N' Then
      MessageDlg('Pago ya descargado o con inconsistencias', mtInformation,[mbOk],0)
   Else
   Begin
     xSql := 'UPDATE COB_CUE_REC_BAN_CON_DET SET CIERRE = ''A'' WHERE SUBSTR(REFERENCIAS,9,10) = '+QuotedStr(DM1.cdsDFam.FieldByName('ASOID').AsString)
     +' AND NUMMOV = '+QuotedStr(Copy(DM1.cdsDFam.FieldByName('NUMMOV').AsString,5,6))
     +' AND FECPAG = '+QuotedStr(Copy(DM1.cdsDFam.FieldByName('FECPAG').AsString,7,4)+Copy(DM1.cdsDFam.FieldByName('FECPAG').AsString,4,2)+Copy(DM1.cdsDFam.FieldByName('FECPAG').AsString,1,2));
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
     MessageDlg('Pago marcado como Aporte', mtInformation,[mbOk],0)
   End;
end;

procedure TFCtaRecBcoCon.ppHeaderBand1BeforePrint(Sender: TObject);
begin
 pplImpreso.Caption := 'IMPRESO POR : '+DM1.wUsuario;
 ppLabel13.Caption := 'FECHA DEL ARCHIVO '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
end;

function TFCtaRecBcoCon.cadena(cadena:String; cantidad: Integer): String;
var i:Integer;
respuesta:String;
begin
  for i := 1 to cantidad Do
    respuesta := respuesta + cadena ;
  Result := respuesta;
end;

Procedure TFCtaRecBcoCon.btnEnviarClick(Sender: TObject);
Var fichero, xSql, xfecha, linea, xano:String;
registros:Double;
f: textfile;
xMax, xDiv, xAct, ncanreg:Integer;
fechaVencimiento:String;
Begin
  gbProceso.Visible := True;
  gbProceso.Left := 110;
  gbProceso.Top  := 30;
  If MessageDlg('Se va a generar información para el banco.  Seguro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    gbTrans.Left := 120;
    gbTrans.Top  := 48;
    gbTrans.Visible := True;
    lblMensaje.Caption := 'GENERANDO INFORMACION PARA SER ENVIADA A TEXTO';
    xano := copy(DateToStr(DM1.FechaSys),7,4);
    xfecha := copy(DateToStr(DM1.FechaSys),7,4)+copy(DateToStr(DM1.FechaSys),4,2)+copy(DateToStr(DM1.FechaSys),1,2);
    xSql := 'SELECT ''01''||''20136424867''||''000''||''PEN''||'+QuotedStr(xfecha)+'||''000''||LPAD('' '',330,'' '') CABECERA FROM DUAL';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    fichero := 'D:\R153'+copy(DateToStr(DM1.FechaSys),4,2)+copy(DateToStr(DM1.FechaSys),1,2)+'.TXT';
    AssignFile(f,fichero);
    Rewrite(f);
    linea := DM1.cdsQry2.FieldByName('CABECERA').AsString;
    Memo1.Lines.Add(linea);
    writeln(f,linea);

   {
    xSql := 'SELECT A.ASOID, SUBSTR(A.ASOAPENOMDNI,1,30) ASOAPENOMDNI, SUBSTR(A.ASODNI,1,8) ASODNI'
    +' FROM APO201 A, CRE301 B WHERE A.ASODNI IS NOT NULL AND LENGTH(TRIM(A.ASODNI)) = 8'
    +' AND A.ASOID = B.ASOID AND B.CREESTID = ''02'' GROUP BY A.ASOID, SUBSTR(A.ASOAPENOMDNI,1,30), SUBSTR(A.ASODNI,1,8)';
   }


       xSql := 'SELECT ASOID, SUBSTR(ASOAPENOMDNI,1,30) ASOAPENOMDNI, SUBSTR(ASODNI,1,8) ASODNI FROM APO201'
    +' WHERE ASODNI IS NOT NULL AND LENGTH(TRIM(ASODNI)) = 8';





    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    ncanreg := DM1.cdsQry.RecordCount;
    DM1.cdsQry.First;
    registros := 0;
    While Not DM1.cdsQry.Eof dO
    Begin
      registros := registros + 1;
      linea := '02'+DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString+cadena(' ',30-Length(DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString));
//    linea := linea + Copy(DM1.cdsQry.FieldByName('ASODNI').AsString,1,8)+DM1.cdsQry.FieldByName('ASOID').AsString+'                              '+Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2)+Copy(DateToStr(DM1.FechaSys),1,2)+'20051231'+Copy(DateToStr(DM1.FechaSys),4,2);
      linea := linea + Copy(DM1.cdsQry.FieldByName('ASODNI').AsString,1,8)+DM1.cdsQry.FieldByName('ASOID').AsString+'                              '+Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2)+Copy(DateToStr(DM1.FechaSys),1,2)+xano+'1231'+Copy(DateToStr(DM1.FechaSys),4,2);
      linea := linea + '0000000010000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
      linea := linea + '00000000000000000000000000000000000000000000000000L000000000000000                                    ';
      Memo1.Lines.Add(linea);
      writeln(f,linea);
      DM1.cdsQry.Next;
      Edit2.Text := IntToStr(DM1.cdsQry.RecNo)+' registros de '+IntToStr(ncanreg);
      FCtaRecBcoCon.Refresh;
    End;
    xSql := 'SELECT ''03''||LPAD('+CurrToStr(registros)      +', 9, ''0'' )||'+'LPAD('+FloatToStr(registros*10000)+', 16, ''0'' )||''00''||'
    +'LPAD('+CurrToStr(registros)      +', 16, ''0'' )||''00''||'+'''000000000000000000''||LPAD('' '',295, '' '') TEXTO FROM DUAL';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    linea := DM1.cdsQry.FieldByName('TEXTO').AsString;
    Memo1.Lines.Add(linea);
    Writeln(f,linea);
    CloseFile(f);
    MessageDlg(' Diskette Se Grabo Con Exito ', mtInformation,[mbOk],0);
    gbProceso.Visible := False;
  End;
End;

end.
