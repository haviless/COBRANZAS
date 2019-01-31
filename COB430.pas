unit COB430;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, fcTreeView, FileCtrl, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache,
  DB, DBClient, fcButton, fcImgBtn, fcShapeBtn, wwdblook, Wwdbdlg, ComCtrls,
  ppVar, DBGrids, Mask, fcLabel, ppDBBDE, ppParameter;

type
    TFCtaRecBcoNac = class(TForm)
    btnEnvio: TBitBtn;
    BtnCerrar: TBitBtn;
    btnDesOra: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppRepDescargo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    Edit1: TEdit;
    cdsFantasmas: TClientDataSet;
    dsFantasmas: TDataSource;
    btnInconsistencias: TBitBtn;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgCabecera: TwwDBGrid;
    dbgdetalle: TwwDBGrid;
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
    TabSheet4: TTabSheet;
    TabTeletransfer: TPageControl;
    fcLabel1: TfcLabel;
    TabSheet5: TTabSheet;
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
    btnimpboldep: TBitBtn;
    btnimpresdia: TBitBtn;
    btnelides: TBitBtn;
    btnrepfecpag: TBitBtn;
    btnmarapo: TBitBtn;
    dbgnoregistrados: TwwDBGrid;
    btnpagnoreg: TBitBtn;
    btndesaut: TBitBtn;
    dbginconsistencias: TwwDBGrid;
    btnrepcuodes: TBitBtn;
    ppbdepcuodes: TppBDEPipeline;
    pprcuodes: TppReport;
    ppDetailBand5: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppHeaderBand5: TppHeaderBand;
    ppShape18: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLine5: TppLine;
    ppShape21: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppDBText34: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppShape26: TppShape;
    ppLabel48: TppLabel;
    ppShape27: TppShape;
    ppLabel49: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine9: TppLine;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape22: TppShape;
    ppLabel58: TppLabel;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppLabel59: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    pplObservacion: TppLabel;
    ppLabel70: TppLabel;
    pplTitulo02: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLine10: TppLine;
    ppLabel77: TppLabel;
    pplImpresopor: TppLabel;
    ppbdeprepfecreg: TppBDEPipeline;
    pprrepfecreg: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBText9: TppDBText;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppLabel71: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel81: TppLabel;
    ppLabel83: TppLabel;
    ppShape45: TppShape;
    ppDBText23: TppDBText;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    btnmigconinc: TBitBtn;
    ppShape13: TppShape;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppDBText27: TppDBText;
    pnlapenom: TPanel;
    Label3: TLabel;
    pnlasoapenomdni: TPanel;
    edtBuscarDet: TEdit;
    procedure BtnCerrarClick(Sender: TObject);
    procedure btnEnvioClick(Sender: TObject);
    procedure btnDesOraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnEliminaClick(Sender: TObject);
    procedure btnVerCobClick(Sender: TObject);
    procedure TabTeletransferChange(Sender: TObject);
    procedure fcsbDesAutClick(Sender: TObject);
    procedure edtBuscarDetChange(Sender: TObject);
    procedure edtBuscarDetKeyPress(Sender: TObject; var Key: Char);
    procedure ppHeaderBand4BeforePrint(Sender: TObject);
    procedure dbgCabeceraCellChanged(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure fcShapeBtn5Click(Sender: TObject);
    procedure btnelidesClick(Sender: TObject);
    procedure btnimpboldepClick(Sender: TObject);
    procedure btnimpresdiaClick(Sender: TObject);
    procedure btnrepfecpagClick(Sender: TObject);
    procedure btnmarapoClick(Sender: TObject);
    procedure btnpagnoregClick(Sender: TObject);
    procedure btndesautClick(Sender: TObject);
    procedure btnmigconincClick(Sender: TObject);
    procedure btnrepcuodesClick(Sender: TObject);
    procedure pplObservacionPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function verificaNoRegistrado:String;
    procedure descargoPago;
    procedure validardatos;
    procedure btnsinvalida;
    procedure btnconvalida;
  end;

var
  FCtaRecBcoNac: TFCtaRecBcoNac;

implementation

uses COBDM1, COB439, COB440, COB441, COB442, COB443, COB444;

{$R *.dfm}

procedure TFCtaRecBcoNac.BtnCerrarClick(Sender: TObject);
begin
  FCtaRecBcoNac.Close;
end;

Procedure TFCtaRecBcoNac.btnEnvioClick(Sender: TObject);
Begin
  Try
    Finfgenbannac := TFinfgenbannac.create(Self);
    Finfgenbannac.ShowModal;
  Finally
    Finfgenbannac.Free;
  end;
End;

Procedure TFCtaRecBcoNac.btnDesOraClick(Sender: TObject);
Var xSql, vfecpag:String;
Begin
  Try
    Fdescuerecbconac := TFdescuerecbconac.create(Self);
    Fdescuerecbconac.ShowModal;
  Finally
    Fdescuerecbconac.Free;
  End;
  xSql := 'SELECT CODREG, FECPRO, CANTOT, MONTOT, CIERRE FROM COB_CUE_REC_BAN_NAC_CAB ORDER BY CODREG DESC';
  DM1.cdsCuentas.Close;
  DM1.cdsCuentas.DataRequest(xSql);
  DM1.cdsCuentas.Open;
  DM1.cdsCuentas.First;
  vfecpag := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  dbgCabecera.Refresh;
  TabTeletransfer.TabIndex := 1;
 // pnlasoapenomdni.Visible := True;
  xSql := 'SELECT ROWNUM NUMERO, CODREGBEN, NUMDOCCOB, APENOMCLI, DESOFI, FECPAG, MONPAG, IDEPER, DESTIP, CIERRE, ASOID FROM ('
  +' SELECT A.CODREGBEN, ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, A.APENOMCLI, C.DESOFI, A.FECPAG, A.MONPAG, A.IDEPER, D.DESTIP, A.CIERRE, A.ASOID'
  +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C, COB_TIP_DES_CUE_REC D WHERE FECPAG = '+QuotedStr(vfecpag)
  +' AND A.ASOID = B.ASOID(+) AND A.CODOFI = C.CODOFI(+) AND A.CIERRE = D.CODTIP(+) ORDER BY A.APENOMCLI)';
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(xSql);
  DM1.cdsDFam.Open;
  dbgdetalle.Selected.Clear;
  dbgdetalle.Selected.Add('NUMERO'#9'3'#9'Correlativo'#9#9);
  dbgdetalle.Selected.Add('CODREGBEN'#9'10'#9'Código del~beneficiario'#9#9);
  dbgdetalle.Selected.Add('NUMDOCCOB'#9'10'#9'Documento de~Cobranza'#9#9);
  dbgdetalle.Selected.Add('APENOMCLI'#9'50'#9'Apellidos y~Nombre(s)'#9#9);
  dbgdetalle.Selected.Add('DESOFI'#9'20'#9'Oficina de~deposito'#9#9);
  dbgdetalle.Selected.Add('FECPAG'#9'10'#9'Fecha de~pago'#9#9);
  dbgdetalle.Selected.Add('MONPAG'#9'10'#9'Monto~depositado'#9#9);
  dbgdetalle.Selected.Add('IDEPER'#9'12'#9'Número de~operación'#9#9);
  dbgdetalle.Selected.Add('DESTIP'#9'25'#9'Estado del~pago'#9#9);
  dbgdetalle.ApplySelected;
  TNumericField(DM1.cdsDFam.FieldByName('MONPAG')).DisplayFormat := '###,###,##0.00';
  dbgdetalle.Refresh;
  pnlapenom.Visible := True;
  edtBuscarDet.SetFocus;
End;

Procedure TFCtaRecBcoNac.btnVerCobClick(Sender: TObject);
Var vUsuario, vDocPag, vfecpag, vAsoId, xSql, fechaProceso:String;
    MontoTot:Currency;
Begin
  DM1.cdsDFam.First;
  While Not DM1.cdsDFam.Eof Do
  Begin
    If Trim(DM1.cdsDFam.FieldByName('ASOID').AsString) = '' Then
    Begin
      MessageDlg('Existen registros con inconsistencia'+#13+'primero corrija', mtInformation,[mbOk],0);
      Exit;
    End;
    DM1.cdsDFam.Next;
  End;
  vfecpag := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  DM1.xSgr := 'N';
  validardatos;
  If DM1.xSgr = 'S' Then
  Begin
    DM1.validarpagosbanconacion(vfecpag);
    MessageDlg('Validación Concluida', mtInformation,[mbOk],0);
  End;
  xSql := 'SELECT ROWNUM NUMERO, CODREGBEN, NUMDOCCOB, APENOMCLI, DESOFI, FECPAG, MONPAG, IDEPER, DESTIP, CIERRE, ASOID FROM ('
  +' SELECT A.CODREGBEN , ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, A.APENOMCLI, C.DESOFI, A.FECPAG, A.MONPAG, A.IDEPER, D.DESTIP, A.CIERRE, A.ASOID'
  +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C, COB_TIP_DES_CUE_REC D WHERE FECPAG = '+QuotedStr(vfecpag)
  +' AND A.ASOID = B.ASOID(+) AND A.CODOFI = C.CODOFI(+) AND A.CIERRE = D.CODTIP(+) ORDER BY A.APENOMCLI)';
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(xSql);
  DM1.cdsDFam.Open;
  dbgdetalle.Refresh;
End;

Procedure TFCtaRecBcoNac.FormActivate(Sender: TObject);
Var xSql:String;
Begin
  btnsinvalida;
  xSql := 'SELECT OFDESID, OFDESNOM FROM APO110';
  DM1.cdsOfDes.Close;
  DM1.cdsOfDes.DataRequest(xSql);
  DM1.cdsOfDes.Open;
  TabTeletransfer.TabIndex := 0;
  xSql := 'SELECT CODREG, FECPRO, CANTOT, MONTOT, CIERRE FROM COB_CUE_REC_BAN_NAC_CAB ORDER BY CODREG DESC';
  DM1.cdsCuentas.Close;
  DM1.cdsCuentas.DataRequest(xSql);
  DM1.cdsCuentas.Open;
  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('CODREG'#9'5'#9'Código de~Registro'#9#9);
  dbgCabecera.Selected.Add('FECPRO'#9'10'#9'Fecha de~pago'#9#9);
  dbgCabecera.Selected.Add('CANTOT'#9'10'#9'Cantidad de Pagos~Realizados'#9#9);
  dbgCabecera.Selected.Add('MONTOT'#9'12'#9'Monto~Pagado'#9#9);
  dbgCabecera.Selected.Add('CIERRE'#9'12'#9'Estado'#9#9);
  dbgCabecera.ApplySelected;
  TNumericField(DM1.cdsCuentas.FieldByName('CANTOT')).DisplayFormat := '###,###,##0';
  TNumericField(DM1.cdsCuentas.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
End;

procedure TFCtaRecBcoNac.btnEliminaClick(Sender: TObject);
Var xSql, fecPag:String;
begin
   fecPag := copy(DM1.cdsQry4.FieldByName('FECPRO').AsString,7,4)+copy(DM1.cdsQry4.FieldByName('FECPRO').AsString,4,2)+copy(DM1.cdsQry4.FieldByName('FECPRO').AsString,1,2);
   xSql := 'DELETE COB_CUE_REC_BAN_NAC_CAB WHERE FECPRO = '+QuotedStr(fecPag);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Execute;
   xSql := 'DELETE COB_CUE_REC_BAN_NAC_DET WHERE FECPAG = '+QuotedStr(fecPag);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Execute;
end;


procedure TFCtaRecBcoNac.TabTeletransferChange(Sender: TObject);
Var mensaje, vfecpag, xSql:String;
begin
  vfecpag := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  If TabTeletransfer.TabIndex  = 0 Then
  Begin
    btnsinvalida;
    // Actualizar el registro COB347
    xSql := 'SELECT * FROM COB_CUE_REC_BAN_NAC_DET WHERE FECPAG = '+QuotedStr(DM1.cdsCuentas.FieldByname('FECPRO').AsString)+ ' AND NVL(CIERRE, ''X'') NOT IN (''K'', ''D'', ''A'',''C'',''O'') ';
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;
    If DM1.cdsQry1.RecordCount = 0 Then
    Begin
       DM1.cdsCuentas.Edit;
       DM1.cdsCuentas.FieldByName('CIERRE').AsString := 'OK';
       DM1.cdsCuentas.ApplyUpdates(0);
       dbgCabecera.Refresh;
    End;
  End;
  // Detalle de Pagos
  If TabTeletransfer.TabIndex  = 1 Then
  Begin
    btnconvalida;
    xSql := 'SELECT ROWNUM NUMERO, CODREGBEN, NUMDOCCOB, APENOMCLI, DESOFI, FECPAG, MONPAG, IDEPER, DESTIP, CIERRE, ASOID FROM ('
    +' SELECT A.CODREGBEN, ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, A.APENOMCLI, C.DESOFI, A.FECPAG, A.MONPAG, A.IDEPER, D.DESTIP, A.CIERRE, A.ASOID'
    +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C, COB_TIP_DES_CUE_REC D WHERE FECPAG = '+QuotedStr(vfecpag)
    +' AND A.ASOID = B.ASOID(+) AND A.CODOFI = C.CODOFI(+) AND A.CIERRE = D.CODTIP(+) ORDER BY A.APENOMCLI)';
    DM1.cdsDFam.Close;
    DM1.cdsDFam.DataRequest(xSql);
    DM1.cdsDFam.Open;
    dbgdetalle.Selected.Clear;
    dbgdetalle.Selected.Add('NUMERO'#9'3'#9'Correlativo'#9#9);
    dbgdetalle.Selected.Add('CODREGBEN'#9'10'#9'Código del~beneficiario'#9#9);
    dbgdetalle.Selected.Add('NUMDOCCOB'#9'10'#9'Documento de~Cobranza'#9#9);
    dbgdetalle.Selected.Add('APENOMCLI'#9'50'#9'Apellidos y~Nombre(s)'#9#9);
    dbgdetalle.Selected.Add('DESOFI'#9'20'#9'Oficina de~deposito'#9#9);
    dbgdetalle.Selected.Add('FECPAG'#9'10'#9'Fecha de~pago'#9#9);
    dbgdetalle.Selected.Add('MONPAG'#9'10'#9'Monto~depositado'#9#9);
    dbgdetalle.Selected.Add('IDEPER'#9'12'#9'Número de~operación'#9#9);
    dbgdetalle.Selected.Add('DESTIP'#9'25'#9'Estado del~pago'#9#9);
    dbgdetalle.ApplySelected;
    TNumericField(DM1.cdsDFam.FieldByName('MONPAG')).DisplayFormat := '###,###,##0.00';
    edtBuscarDet.SetFocus;
  End;
  // Pagos no Registrados
  If TabTeletransfer.TabIndex = 2 Then
  Begin
    btnsinvalida;
    xSql := 'SELECT  ROWNUM NUMERO, CODREGBEN, NUMDOCCOB, APENOMCLI, DESOFI, FECPAG, MONPAG, IDEPER, DESTIP, CIERRE, ASOID FROM('
    +' SELECT A.CODREGBEN, ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, SUBSTR(A.APENOMCLI,1,31) APENOMCLI, C.DESOFI, A.FECPAG,'
    +' A.MONPAG, A.IDEPER, D.DESTIP, A.CIERRE, A.ASOID FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C, COB_TIP_DES_CUE_REC D'
    +' WHERE A.FECPAG = '+QuotedStr(vfecpag)+' AND NVL(A.CIERRE, ''X'') = ''R'' AND A.ASOID = B.ASOID'
    +' AND A.CODOFI = C.CODOFI(+) AND A.CIERRE = D.CODTIP ORDER BY B.ASOAPENOMDNI)';
    DM1.cdsDLabo.Close;
    DM1.cdsDLabo.DataRequest(xSql);
    DM1.cdsDLabo.Open;
    dbgnoregistrados.Selected.Clear;
    dbgnoregistrados.Selected.Add('NUMERO'#9'3'#9'Correlativo'#9#9);
    dbgnoregistrados.Selected.Add('CODREGBEN'#9'10'#9'Código del~beneficiario'#9#9);
    dbgnoregistrados.Selected.Add('NUMDOCCOB'#9'10'#9'Documento de~Cobranza'#9#9);
    dbgnoregistrados.Selected.Add('APENOMCLI'#9'50'#9'Apellidos y~Nombre(s)'#9#9);
    dbgnoregistrados.Selected.Add('DESOFI'#9'20'#9'Oficina de~deposito'#9#9);
    dbgnoregistrados.Selected.Add('FECPAG'#9'10'#9'Fecha de~pago'#9#9);
    dbgnoregistrados.Selected.Add('MONPAG'#9'10'#9'Monto~depositado'#9#9);
    dbgnoregistrados.Selected.Add('IDEPER'#9'12'#9'Número de~operación'#9#9);
    dbgnoregistrados.Selected.Add('DESTIP'#9'25'#9'Estado del~pago'#9#9);
    dbgnoregistrados.ApplySelected;
    TNumericField(DM1.cdsDLabo.FieldByName('MONPAG')).DisplayFormat := '###,###,##0.00';
    mensaje := 'PAGOS DETECTADOS COMO NO REGISTRADOS '+chr(13)+' DEL DIA : '+DM1.cdsCuentas.FieldByName('FECPRO').AsString
    +chr(13)+'VERIFIQUE SI REALMENTE NO FUERON DESCARGADOS'+chr(13)+'ANTES DE PROCEDER A SU DESCARGO AUTOMATICO'
    +chr(13)+chr(13)+'VALIDE LA INFORMACION DEL DIA ANTES DE DESCARGAR';
    MessageDlg(mensaje, mtInformation,[mbOk],0);
  End;
  // Inconsistencias
  If TabTeletransfer.TabIndex = 3 Then
  Begin
    btnsinvalida;
    If Not DM1.cdsRegCob.Active  Then
    Begin
      btnInconsistencias.Visible := False;
    //  pnlasoapenomdni.Visible := False;
      xSql := 'SELECT  ROWNUM NUMERO, CODREGBEN, NUMDOCCOB, APENOMCLI, DESOFI, FECPAG, MONPAG,'
      +' IDEPER, DESTIP, CIERRE FROM(SELECT A.CODREGBEN, SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, SUBSTR(A.APENOMCLI,1,31) APENOMCLI,'
      +' C.DESOFI, A.FECPAG, A.MONPAG, A.IDEPER, D.DESTIP, A.CIERRE FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C, COB_TIP_DES_CUE_REC D'
      +' WHERE NVL(A.CIERRE, ''X'') NOT IN (''K'',''D'',''A'',''C'',''O'',''R'')'
      +' AND A.ASOID = B.ASOID AND A.CODOFI = C.CODOFI(+) AND A.CIERRE = D.CODTIP ORDER BY B.ASOAPENOMDNI)';
      DM1.cdsTRela.Close;
      DM1.cdsTRela.DataRequest(xSql);
      DM1.cdsTRela.Open;
      dbginconsistencias.Selected.Clear;
      dbginconsistencias.Selected.Add('NUMERO'#9'3'#9'Correlativo'#9#9);
      dbginconsistencias.Selected.Add('CODREGBEN'#9'10'#9'Código del~beneficiario'#9#9);
      dbginconsistencias.Selected.Add('NUMDOCCOB'#9'10'#9'Documento de~Cobranza'#9#9);
      dbginconsistencias.Selected.Add('APENOMCLI'#9'50'#9'Apellidos y~Nombre(s)'#9#9);
      dbginconsistencias.Selected.Add('DESOFI'#9'20'#9'Oficina de~deposito'#9#9);
      dbginconsistencias.Selected.Add('FECPAG'#9'10'#9'Fecha de~pago'#9#9);
      dbginconsistencias.Selected.Add('MONPAG'#9'10'#9'Monto~depositado'#9#9);
      dbginconsistencias.Selected.Add('IDEPER'#9'12'#9'Número de~operación'#9#9);
      dbginconsistencias.Selected.Add('DESTIP'#9'25'#9'Estado del~pago'#9#9);
      dbginconsistencias.ApplySelected;
      TNumericField(DM1.cdsTRela.FieldByName('MONPAG')).DisplayFormat := '###,###,##0.00';
    End;
  End;
end;

procedure TFCtaRecBcoNac.fcsbDesAutClick(Sender: TObject);
Var
  montoRestante, montoDescontadoCuo, montoCapital, montoInteres, montoFlat, tipoCambio: Currency;
  xSql, xCampos, xValores: String;
  xcreestadoant, xcreestidant, xmesExc, xcredidExc: String;
begin
  // verificando si el monto ya fue pagado o si tiene algun tipo de inconsistencias.
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
  +' AND BANCOID = ''04'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'' ';
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
  +' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+' AND BANCOID = ''04'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'' ';
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
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+' AND BANCOID = ''04'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'' ';
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
  +' AND CREESTID NOT IN (''04'', ''13'') AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString);
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
          +' CRECAPITAL = '+DM1.cdsCuotas.FieldByName('CREAMORT').AsString
          +',CREMTOINT = '+DM1.cdsCuotas.FieldByName('CREINTERES').AsString
          +',CREMTOFLAT = '+DM1.cdsCuotas.FieldByName('CREFLAT').AsString
          +',CREMTOCOB = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString
          +',CREMONLOC = '+DM1.cdsCuotas.FieldByName('CREMTO').AsString
          +',CRESALDO = 0'
          +',CREESTID = ''21'' ,CREESTADO = ''CANCELADO'' ,CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)
          +',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
          +',FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
          +',HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
          xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')
          +','+QuotedStr('21')+','+QuotedStr('CANCELADO')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
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
            xSql := 'UPDATE CRE302 SET'
            +' CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)
            +',CREMTOINT = NVL(CREMTOINT,0)+'+CurrToStr(montoInteres)
            +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)
            +',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
            +',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)
            +',CRESALDO = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
            +',CREESTID = ''27'', CREESTADO = ''PARCIAL'''
            +',CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)
            +',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
            +',USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
            +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            //  Añadiendo detalles de pago
            xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
            +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
            +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
            +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
            xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
            +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
            +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
            +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
            +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')
            +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
            +', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
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
          xSql := 'UPDATE CRE302 SET'
          +' CRECAPITAL = '+DM1.cdsCuotas.FieldByName('CREAMORT').AsString
          +',CREMTOINT = '+CurrToStr(0.00)
          +',CREMTOFLAT = '+DM1.cdsCuotas.FieldByName('CREFLAT').AsString
          +',CREMTOCOB = '+CurrToStr(montoDescontadoCuo)
          +',CREMONLOC = '+CurrToStr(montoDescontadoCuo)
          +',CRESALDO = 0 ,CREESTID = ''23'' ,CREESTADO = ''CANCELADO A'' ,CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)
          +',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
          +',FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,USUARIO = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
          xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)
          +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')
          +','+QuotedStr('23')+','+QuotedStr('CANCELADO A')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL''';
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
            xSql := 'UPDATE CRE302 SET'
            +' CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)
            +',CREMTOINT = 0.00'
            +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)
            +',CREMTOCOB = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
            +',CREMONLOC = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)
            +',CRESALDO = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
            +',CREESTID = ''27'' ,CREESTADO = ''PARCIAL'' ,CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)
            +',NROOPE = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+',CREFPAG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
            +',FOPERAC = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,USUARIO = '+QuotedStr(DM1.wUsuario)
            +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
            +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            //  Añadiendo detalles de pago
            xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
            +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
            +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
            +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
            xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
            +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
            +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)
            +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
            +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
            +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
            +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
            +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')
            +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
            +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
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
      xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
      +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
      +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTOCUO').AsString
      +','+CurrToStr(montoRestante)+','+CurrToStr(montoRestante)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)
      +','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
      +','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)+','+QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
      +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(montoRestante)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'') , SYSDATE'
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)
      +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)+','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('EXC')
      +','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')+','+QuotedStr('21')+','+QuotedStr('CANCELADO')
      +','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)+', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
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
    // Actualizar el registro COB348
    xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsRegCob.FieldByName('ASOID').AsString)
    +' AND CREDOCPAG = '+QuotedStr(DM1.cdsRegCob.FieldByName('DNI').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsRegCob.FieldByName('FECPAG').AsString)
    +' AND BANCOID = ''04'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'' ';
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSql);
    DM1.cdsQry5.Open;
    If DM1.cdsRegCob.FieldByName('MONTOT').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
    Begin
      xSql := 'UPDATE COB_CUE_REC_BAN_NAC_DET SET CIERRE = ''K'' WHERE ASOID = '+DM1.cdsRegCob.FieldByName('ASOID').AsString
      +' AND IDEPER = '+QuotedStr(DM1.cdsRegCob.FieldByName('NUMOPE').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'SELECT A.ASOID, SUBSTR(B.ASOAPENOM,1,31) ASOAPENOM,  A.FECPAG, A.MONPAG MONTOT, A.IDEPER NUMOPE, C.DESOFI'
      +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C WHERE NVL(CIERRE, ''X'') NOT IN (''K'', ''A'')'
      +' AND A.ASOID = B.ASOID AND A.CODOFI = C.CODOFI ORDER BY B.ASOAPENOM';
      DM1.cdsRegCob.Close;
      DM1.cdsRegCob.DataRequest(xSql);
      DM1.cdsRegCob.Open;
    End;
    // Actualizar el registro COB347
    xSql := 'SELECT * FROM COB_CUE_REC_BAN_NAC_DET WHERE FECPAG = '+QuotedStr(DM1.cdsCuentas.FieldByname('FECPRO').AsString)+ ' AND NVL(CIERRE, ''Z'') NOT IN (''K'',''A'') ';
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

Procedure TFCtaRecBcoNac.edtBuscarDetChange(Sender: TObject);
Begin
  If TabTeletransfer.TabIndex = 1 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
      DM1.cdsDFam.Locate('APENOMCLI', VarArrayOf([TRIM(edtBuscarDet.Text)]), [loPartialKey]);
  End;
End;

procedure TFCtaRecBcoNac.edtBuscarDetKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key=#13 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
    Begin
      edtBuscarDet.Text := '';
      dbgdetalle.SetFocus;
    End
    Else
    Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
      edtBuscarDet.SetFocus;
    End;
  End;
end;

procedure TFCtaRecBcoNac.ppHeaderBand4BeforePrint(Sender: TObject);
begin
  ppLabel14.Caption := 'PAGOS EFECTUADOS EN CUENTA RECAUDARORA DEL : '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  ppLabel28.Caption := 'NO DETECTADOS COMO REGISTRADOS EN EL SISTEMA';
  ppLabel29.Caption := 'IMPRESO POR : '+DM1.wUsuario;
end;

procedure TFCtaRecBcoNac.dbgCabeceraCellChanged(Sender: TObject);
begin
  TabSheet2.Caption := 'Detalle del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
  TabSheet4.Caption := 'Pagos no registrados del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
end;


Function TFCtaRecBcoNac.verificaNoRegistrado: String;
Var xSql:String;
Begin
  // verificando si el monto ya fue pagado o si tiene algun tipo de inconsistencias.
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
  +' AND BANCOID = ''04'' AND FORPAGID = ''03'' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('MONPAG').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
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
  +' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+' AND BANCOID = ''04'' AND FORPAGID = ''03'' '
  +' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('MONPAG').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End;
  // Chequeando que solo la fecha este mal
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+' AND BANCOID = ''04'' AND FORPAGID = ''03'' '
  +' AND CREESTID NOT IN (''04'', ''13'') AND CCBCOID = ''0000-003905'' ';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('MONPAG').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End;
  // Chequeando que solo exista error en la cuenta
  xSql := ' SELECT NVL(SUM(NVL(CREMTOCOB,0)),0) MONTOT FROM CRE310 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
  +' AND CREESTID NOT IN (''04'', ''13'') AND CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
  +' AND CREFPAG = '+ QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString);
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsDLabo.FieldByName('MONPAG').AsCurrency = DM1.cdsQry5.FieldByName('MONTOT').AsCurrency Then
  Begin
    Result := 'N';
    Exit;
  End;
  Result := 'S';
  Exit;
End;

Procedure TFCtaRecBcoNac.descargoPago;
Var montoRestante, montoDescontadoCuo: Currency;
  montoCapital, montoInteres, montoFlat, tipoCambio: Currency;
  xSql, xCampos, xValores, xflging: String;
  xcreestadoant, xcreestidant, xasoid, xmesExc, xcredidExc: String;
Begin
  xSql := 'UPDATE CRE302 SET CRECAPITAL = 0, CREMTOINT=0, CREMTOFLAT = 0 WHERE  ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)+' AND NVL(CREMTOCOB,0) = 0';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
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
  montoRestante := DM1.cdsDLabo.FieldByName('MONPAG').AsCurrency;
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
      xasoid     := DM1.cdsCuotas.FieldByName('ASOID').AsString;
      xmesExc    := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
      xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      montoCapital := 0;
      montoInteres := 0;
      montoFlat    := 0;
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
        +' CRECAPITAL = CREAMORT'
        +',CREMTOINT  = CREINTERES'
        +',CREMTOFLAT = CREFLAT'
        +',CREMTOCOB  = CREMTO'
        +',CREMONLOC  = CREMTO'
        +',CRESALDO   = 0'
        +',CREESTID = ''21'' ,CREESTADO = ''CANCELADO'' '
        +',CREDOCPAG = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
        +',NROOPE    = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
        +',CREFPAG   = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',FOPERAC   = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',USUARIO = '+QuotedStr(DM1.wUsuario)
        +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')'
        +',HREG = SYSDATE'
        +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas  .FieldByName('ASOID').AsString)
        +' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        //  Añadiendo detalles de pago
        xCampos := 'CIAID, ASOID, ASOCODMOD,'
        +' ASOCODAUX , USEID , UPROID,'
        +' UPAGOID,  TIPCREID, CREDID,'
        +' CRECUOTA, CREMTOCUO, CREMONLOC, CREMTOCOB,'
        +' TMONID, CREAMORT, CREINTERES, CREFLAT,'
        +' NROOPETMP, CREDOCPAG, NROOPE,'
        +' FOPERACTMP, CREFPAG, FOPERAC,'
        +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG,'
        +' HREG, ASOAPENOM, DPTOID,'
        +' CIUDID, CREANO, CREMES,'
        +' AREAID, FORPAGID, FORPAGABR,  TRANSINTID, BANCOID, CCBCOID, CREOBS,'
        +' CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
        xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)+','   +QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)   +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
        +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
        +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/DESCARGO AUTOMATICO CR/BN')
        +','+QuotedStr('21')+','+QuotedStr('CANCELADO')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)+', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
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
          xSql := 'UPDATE CRE302 SET'
          +' CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)
          +',CREMTOINT  = NVL(CREMTOINT,0)+'+CurrToStr(montoInteres)
          +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)
          +',CREMTOCOB  = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
          +',CREMONLOC  = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)
          +',CRESALDO   = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
          +',CREESTID   = ''27'', CREESTADO = ''PARCIAL'''
          +',CREDOCPAG  = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
          +',NROOPE     = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
          +',CREFPAG    = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',FOPERAC    = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',USUARIO    = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
          xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)   +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)   +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')
          +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
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
      xasoid     := DM1.cdsCuotas.FieldByName('ASOID').AsString;
      xmesExc    := DM1.cdsCuotas.FieldByName('CREANO').AsString+DM1.cdsCuotas.FieldByName('CREMES').AsString;
      xcredidExc := DM1.cdsCuotas.FieldByName('CREDID').AsString;
      montoCapital := 0;
      montoInteres := 0;
      montoFlat    := 0;
      // Cuando el monto a pagar en la cuota es menor que el saldo disponible
      If montoRestante >= (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency+DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency) Then
      Begin
        montoRestante   := montoRestante - ((DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency)+(DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency));
        montoDescontadoCuo := (DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency-DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency)+(DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency-DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency);
        montoCapital    := DM1.cdsCuotas.FieldByName('CREAMORT').AsCurrency - DM1.cdsCuotas.FieldByName('CRECAPITAL').AsCurrency;
        montoInteres    := 0.00;
        montoFlat       := DM1.cdsCuotas.FieldByName('CREFLAT').AsCurrency - DM1.cdsCuotas.FieldByName('CREMTOFLAT').AsCurrency;
        xcreestadoant   := DM1.cdsCuotas.FieldByName('CREESTADO').AsString;
        xcreestidant    := DM1.cdsCuotas.FieldByName('CREESTID').AsString;
        xSql := 'UPDATE CRE302 SET'
        +' CRECAPITAL  = CREAMORT'
        +',CREMTOINT   = 0'
        +',CREMTOFLAT  = CREFLAT'
        +',CREMTOCOB   =  NVL(CREAMORT,0) + NVL(CREFLAT,0)'
        +',CREMONLOC   =  NVL(CREAMORT,0) + NVL(CREFLAT,0)'
        +',CRESALDO    = 0 ,CREESTID = ''23'' ,CREESTADO = ''CANCELADO A'''
        +',CREDOCPAG   = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
        +',NROOPE      = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
        +',CREFPAG     = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',FOPERAC     = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +',USUARIO     = '+QuotedStr(DM1.wUsuario)+',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+'), HREG = SYSDATE'
        +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)+' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        //  Añadiendo detalles de pago
        xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
        +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
        +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
        +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
        xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)   +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)   +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
        +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
        +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')
        +','+QuotedStr('23')+','+QuotedStr('CANCELADO A')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
        +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL''';
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
          // no hay interes
          montoInteres := 0;
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
          xSql := 'UPDATE CRE302 SET'
          +' CRECAPITAL = NVL(CRECAPITAL,0)+'+CurrToStr(montoCapital)
          +',CREMTOINT  = NVL(CREMTOINT,0)+'+CurrToStr(montoInteres)
          +',CREMTOFLAT = NVL(CREMTOFLAT,0)+'+CurrToStr(montoFlat)
          +',CREMTOCOB  = NVL(CREMTOCOB,0)+'+CurrToStr(montoDescontadoCuo)
          +',CREMONLOC  = NVL(CREMONLOC,0)+'+CurrToStr(montoDescontadoCuo)
          +',CRESALDO   = NVL(CRESALDO,0)-'+CurrToStr(montoDescontadoCuo)
          +',CREESTID   = ''27'' ,CREESTADO = ''PARCIAL'''
          +',CREDOCPAG  = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
          +',NROOPE     = '+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
          +',CREFPAG    = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',FOPERAC    = '+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +',USUARIO = '+QuotedStr(DM1.wUsuario)
          +',FREG = TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+') ,HREG = SYSDATE'
          +' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +' AND CRECUOTA ='+QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //  Añadiendo detalles de pago
          xCampos := 'CIAID, ASOID, ASOCODMOD, ASOCODAUX , USEID , UPROID, UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
          +' CREMONLOC, CREMTOCOB, TMONID, CREAMORT, CREINTERES, CREFLAT,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
          +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
          +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
          xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
          +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
          +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString+','+CurrToStr(montoDescontadoCuo)+','+CurrToStr(montoDescontadoCuo)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)+','+CurrToStr(montoCapital)+','+CurrToStr(montoInteres)+','+CurrToStr(montoFlat)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
          +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)   +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)   +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
          +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(0)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'')'
          +', SYSDATE'+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)
          +','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
          +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('CUO')+','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')
          +','+QuotedStr('27')+','+QuotedStr('PARCIAL')+','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)
          +', TO_CHAR(SYSDATE, ''YYYYMM''), TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
          xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        End;
      End;
      DM1.cdsCuotas.Next;
    End;
  End;
  // Proceso para el descargo en forma automatica del monto depositado en el Banco
  // Proceso de cobranza
  If xflging = 'S' Then
  Begin
    // Verificando si hay monto restante para ser enviado a Exceso
    If montoRestante > 0 Then
    Begin
      xSql := 'SELECT * FROM CRE302 WHERE ASOID = '+QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(xcredidExc)
      +' AND CREANO||CREMES ='+QuotedStr(xmesExc);
      DM1.cdsCuotas.Close;
      DM1.cdsCuotas.DataRequest(xSql);
      DM1.cdsCuotas.Open;
      If (DM1.cdsCuotas.FieldByName('ASOID').AsString <> '') And (xcredidExc <> '') And (xmesExc <> '') Then
      Begin
        // Modificando campo en el CRE302
        xSql := 'UPDATE CRE302 SET CREMTOEXC =  '+CurrToStr(montoRestante)+' WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(xcredidExc)
        +' AND CREANO||CREMES ='+QuotedStr(xmesExc);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        //  Añadiendo detalles de pago
          xCampos := 'CIAID,   ASOID,    ASOCODMOD, ASOCODAUX ,   USEID ,   UPROID,   UPAGOID,  TIPCREID, CREDID, CRECUOTA, CREMTOCUO,'
        +' CREMONLOC, CREMTOCOB, TMONID,  NROOPETMP, CREDOCPAG, NROOPE, FOPERACTMP, CREFPAG, FOPERAC, '
        +' CREMONEXT, CREMTOEXC,  TCAMBIO, USUARIO, FREG, HREG, ASOAPENOM, DPTOID, CIUDID, CREANO, CREMES, AREAID, FORPAGID, FORPAGABR,  TRANSINTID, '
        +' BANCOID, CCBCOID, CREOBS, CREESTID, CREESTADO, CREESTANT, CREESTANTDES, PERCONTA, CNTANOMM, TIPOCONT';
        xValores := QuotedStr('02')+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString)
        +','+DM1.cdsCuotas.FieldByName('CRECUOTA').AsString+','+DM1.cdsCuotas.FieldByName('CREMTO').AsString
        +','+CurrToStr(montoRestante)+','+CurrToStr(montoRestante)+','+QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)+','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)   +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)   +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+CurrToStr(montoDescontadoCuo/TipoCambio)+','+CurrToStr(montoRestante)+','+CurrToStr(TipoCambio)+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, ''DD/MM/YYY'') , SYSDATE'
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CIUDID').AsString)
        +','+QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString)+','+QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString)
        +','+QuotedStr('COB')+','+QuotedStr('03')+','+QuotedStr('BAN')+','+QuotedStr('EXC')
        +','+QuotedStr('04')+','+QuotedStr('0000-003905')+','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')+','+QuotedStr('21')+','+QuotedStr('CANCELADO')
        +','+QuotedStr(xcreestidant)+','+QuotedStr(xcreestadoant)+', TO_CHAR(SYSDATE, ''YYYYMM'')'+', TO_CHAR(SYSDATE, ''YYYYMM''), ''BOL'' ';
        xSql := 'INSERT INTO CRE310 ('+xCampos+') VALUES ('+xValores+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      End;
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
End;

Procedure TFCtaRecBcoNac.ppHeaderBand1BeforePrint(Sender: TObject);
begin
 pplImpreso.Caption := 'IMPRESO POR : '+DM1.wUsuario;
 ppLabel13.Caption := 'FECHA DEL ARCHIVO '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
end;

procedure TFCtaRecBcoNac.validardatos;
Var xSql:String;
begin
  DM1.xSgr := 'S';
end;

procedure TFCtaRecBcoNac.fcShapeBtn5Click(Sender: TObject);
Var xfecpro, xSql:String;
begin
end;

Procedure TFCtaRecBcoNac.btnelidesClick(Sender: TObject);
Var xSql, xcodreg:String;
Begin
  If MessageDlg('se eliminara registros descargado del banco.  Seguro?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    xcodreg := DM1.cdsCuentas.FieldByName('CODREG').AsString;
    xSql := 'DELETE COB_CUE_REC_BAN_NAC_CAB WHERE CODREG = '+QuotedStr(xcodreg);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    xSql := 'DELETE COB_CUE_REC_BAN_NAC_DET WHERE CODREG = '+QuotedStr(xcodreg);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    xSql := 'SELECT CODREG, FECPRO, CANTOT, MONTOT, CIERRE FROM COB_CUE_REC_BAN_NAC_CAB ORDER BY CODREG DESC';
    DM1.cdsCuentas.Close;
    DM1.cdsCuentas.DataRequest(xSql);
    DM1.cdsCuentas.Open;
    dbgCabecera.Refresh;
  End;
End;

procedure TFCtaRecBcoNac.btnimpboldepClick(Sender: TObject);
begin
  Try
    FRepPagBcoNac := TFRepPagBcoNac.create(Self);
    FRepPagBcoNac.ShowModal;
  Finally
    FRepPagBcoNac.Free;
  end;
end;

procedure TFCtaRecBcoNac.btnimpresdiaClick(Sender: TObject);
begin
  Try
    Frepresbannac := TFrepresbannac.create(Self);
    Frepresbannac.ShowModal;
  Finally
    Frepresbannac.Free;
  end;
end;

procedure TFCtaRecBcoNac.btnrepfecpagClick(Sender: TObject);
begin
  ppRepDescargo.Print;
  ppRepDescargo.Stop;
end;

procedure TFCtaRecBcoNac.btnmarapoClick(Sender: TObject);
Var xSql, vfecpag:String;
begin
  DM1.xCnd := 'N';
  If DM1.cdsDFam.FieldByName('CIERRE').AsString <> 'R' Then
  Begin
    MessageDlg('Pago ya descargado o con inconsistencias', mtInformation,[mbOk],0);
    Exit;
  End;

  If DM1.cdsDFam.FieldByName('ASOID').AsString = '' Then
  Begin
    MessageDlg('El pago fue descargado con inconsistencias', mtInformation,[mbOk],0);
    Exit;
  End;

  Try
    Fpagosobservados := TFpagosobservados.create(Self);
    Fpagosobservados.ShowModal;
  Finally
    Fpagosobservados.Free;
  End;
  vfecpag := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  xSql := 'SELECT ROWNUM NUMERO, CODREGBEN, NUMDOCCOB, APENOMCLI, DESOFI, FECPAG, MONPAG, IDEPER, DESTIP, CIERRE, ASOID FROM ('
  +' SELECT A.CODREGBEN , ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, A.APENOMCLI, C.DESOFI, A.FECPAG, A.MONPAG, A.IDEPER, D.DESTIP, A.CIERRE, A.ASOID'
  +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C, COB_TIP_DES_CUE_REC D WHERE FECPAG = '+QuotedStr(vfecpag)
  +' AND A.ASOID = B.ASOID(+) AND A.CODOFI = C.CODOFI(+) AND A.CIERRE = D.CODTIP(+) ORDER BY A.APENOMCLI)';
  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(xSql);
  DM1.cdsDFam.Open;
  dbgdetalle.Refresh;
End;

procedure TFCtaRecBcoNac.btnpagnoregClick(Sender: TObject);
begin
  pprNoReg.Print;
  pprNoReg.Stop;
end;

Procedure TFCtaRecBcoNac.btndesautClick(Sender: TObject);
Var vfecpag, xSql:String;
Begin
  vfecpag := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  If MessageDlg('Se va a proceder a descargar todos estos registros en el Sistema.  Seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    DM1.cdsDLabo.First;
    While Not DM1.cdsDLabo.Eof Do
    Begin
      If verificaNoRegistrado = 'S' Then
      Begin
        xSql := 'BEGIN SP_DESCARGA_RECAUDADORA('
        +QuotedStr(DM1.cdsDLabo.FieldByName('ASOID').AsString)
        +','+DM1.cdsDLabo.FieldByName('MONPAG').AsString
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('NUMDOCCOB').AsString)
        +','+QuotedStr(DM1.cdsDLabo.FieldByName('FECPAG').AsString)
        +','+QuotedStr(DM1.wUsuario)
        +','+QuotedStr('0000-003905')
        +','+QuotedStr('CUOTA PAGADA EN BANCO/CUENTA RECAUDADORA BANCO DE LA NACION')
        +', ''04''); END;';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      End;
      DM1.cdsDLabo.Next;
    End;
    DM1.validarpagosbanconacion(vfecpag);
    xSql := 'SELECT  ROWNUM NUMERO, CODREGBEN, NUMDOCCOB, APENOMCLI, DESOFI, FECPAG, MONPAG, IDEPER, DESTIP, CIERRE, ASOID FROM('
    +' SELECT A.CODREGBEN, ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, SUBSTR(A.APENOMCLI,1,31) APENOMCLI, C.DESOFI, A.FECPAG,'
    +' A.MONPAG, A.IDEPER, D.DESTIP, A.CIERRE, A.ASOID FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C, COB_TIP_DES_CUE_REC D'
    +' WHERE A.FECPAG = '+QuotedStr(vfecpag)+' AND NVL(A.CIERRE, ''X'') = ''R'' AND A.ASOID = B.ASOID'
    +' AND A.CODOFI = C.CODOFI(+) AND A.CIERRE = D.CODTIP ORDER BY SUBSTR(A.APENOMCLI,1,31))';
    DM1.cdsDLabo.Close;
    DM1.cdsDLabo.DataRequest(xSql);
    DM1.cdsDLabo.Open;
    dbgnoregistrados.Refresh;
    MessageDlg('Proceso de descargo Concluido', mtInformation,[mbOk],0);
  End;
End;

{Var
  montoRestante, montoDescontadoCuo, montoCapital, montoInteres, montoFlat, tipoCambio: Currency;
  xSql, xCampos, xValores, vfecpag: String;
  xcreestadoant, xcreestidant, xmesExc, xcredidExc: String;
Begin
  vfecpag := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
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
    DM1.validarpagosbanconacion(vfecpag);
    xSql := 'SELECT  ROWNUM NUMERO, CODREGBEN, NUMDOCCOB, APENOMCLI, DESOFI, FECPAG, MONPAG, IDEPER, DESTIP, CIERRE, ASOID FROM('
    +' SELECT A.CODREGBEN, ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, SUBSTR(A.APENOMCLI,1,31) APENOMCLI, C.DESOFI, A.FECPAG,'
    +' A.MONPAG, A.IDEPER, D.DESTIP, A.CIERRE, A.ASOID FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C, COB_TIP_DES_CUE_REC D'
    +' WHERE A.FECPAG = '+QuotedStr(vfecpag)+' AND NVL(A.CIERRE, ''X'') = ''R'' AND A.ASOID = B.ASOID'
    +' AND A.CODOFI = C.CODOFI(+) AND A.CIERRE = D.CODTIP ORDER BY SUBSTR(A.APENOMCLI,1,31))';
    DM1.cdsDLabo.Close;
    DM1.cdsDLabo.DataRequest(xSql);
    DM1.cdsDLabo.Open;
    dbgnoregistrados.Refresh;
    MessageDlg('Proceso de descargo Concluido', mtInformation,[mbOk],0);
  End;
End;
}

Procedure TFCtaRecBcoNac.btnmigconincClick(Sender: TObject);
Var xfecpro, xSql :String;
Begin
  xfecpro := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  xSql := 'SELECT A.APENOMCLI, A.NUMDOCCOB, A.MONPAG, A.FECPAG, A.HORPAG, A.IDEPER, B.DESOFI, A.ASOID'
  +' FROM COB_CUE_REC_BAN_NAC_DET A, COB_OFI_BAN_NAC B WHERE FECPAG = '+QuotedStr(xfecpro)
  +' AND A.CODOFI = B.CODOFI AND A.ASOID IS NULL';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  If DM1.cdsQry5.RecordCount > 0 Then
  Begin
    Try
      Fvalincdesnac := TFvalincdesnac.create(Self);
      Fvalincdesnac.ShowModal;
    Finally
      Fvalincdesnac.Free;
    end;
    xSql := 'SELECT ROWNUM NUMERO, CODREGBEN, NUMDOCCOB, APENOMCLI, DESOFI, FECPAG, MONPAG, IDEPER, DESTIP, CIERRE, ASOID FROM ('
    +' SELECT A.CODREGBEN , ''N-''||SUBSTR(A.NUMDOCCOB,3,8) NUMDOCCOB, A.APENOMCLI, C.DESOFI, A.FECPAG, A.MONPAG, A.IDEPER, D.DESTIP, A.CIERRE, A.ASOID'
    +' FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C, COB_TIP_DES_CUE_REC D WHERE FECPAG = '+QuotedStr(xfecpro)
    +' AND A.ASOID = B.ASOID(+) AND A.CODOFI = C.CODOFI(+) AND A.CIERRE = D.CODTIP(+) ORDER BY A.APENOMCLI)';
    DM1.cdsDFam.Close;
    DM1.cdsDFam.DataRequest(xSql);
    DM1.cdsDFam.Open;
    dbgdetalle.Refresh;
  End
  Else
    MessageDlg(' ! No se encontro registros errados ! ', mtInformation,[mbOk],0);
End;

Procedure TFCtaRecBcoNac.btnrepcuodesClick(Sender: TObject);
Var vfecpag, xSql:String;
Begin
  vfecpag := DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  xSql := 'SELECT A.ASOCODMOD, A.ASOAPENOMDNI, A.FECPAG, A.NUMDOCCOB, A.MONPAG, A.DESOFI, SUBSTR(A.CU_CREDID,11,5) CU_CREDID, A.CU_CRECUOTA, A.CU_CREAMORT,'
  +' A.CU_CREINTERES, A.CU_CREFLAT, A.CU_CREMTOEXC, A.CU_CREMTOCOB, B.CREAMORT PAC_CREAMORT, B.CREINTERES PAC_CREINTERES, B.CREFLAT PAC_CREFLAT, B.CREFVEN PAC_CREFVEN,'
  +' B.CREMTO PAC_CREMTO, B.CRECAPITAL PA_CRECAPITAL, B.CREMTOEXC PA_CREMTOEXC, B.CREMTOINT  PA_CREMTOINT, B.CREMTOFLAT PA_CREMTOFLAT, B.CREMTOCOB PA_CREMTOCOB, B.CREESTADO PA_CREESTADO'
  +' FROM (SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOMDNI, A.FECPAG, A.NUMDOCCOB, A.MONPAG, A.DESOFI, B.CREDID CU_CREDID, B.CRECUOTA CU_CRECUOTA, B.CREAMORT CU_CREAMORT,'
  +' B.CREINTERES CU_CREINTERES, B.CREFLAT CU_CREFLAT, NVL(B.CREMTOCOB,0)-NVL(B.CREMTOEXC,0) CU_CREMTOCOB, NVL(B.CREMTOEXC,0) CU_CREMTOEXC FROM (SELECT A.ASOID, B.ASOCODMOD, B.ASOAPENOMDNI,'
  +' A.FECPAG, ''N-''||SUBSTR(A.NUMDOCCOB,3,8)NUMDOCCOB,  MONPAG, C.DESOFI FROM COB_CUE_REC_BAN_NAC_DET A, APO201 B, COB_OFI_BAN_NAC C WHERE FECPAG = '+QuotedStr(vfecpag)+' AND A.ASOID = B.ASOID'
  +' AND A.CODOFI = C.CODOFI ) A, CRE310 B WHERE A.ASOID = B.ASOID AND A.NUMDOCCOB = B.CREDOCPAG AND A.FECPAG = B.CREFPAG AND B.CREESTID NOT IN (''04'', ''13'')) A, CRE302 B'
  +' WHERE A.ASOID = B.ASOID AND A.CU_CREDID = B.CREDID AND A.CU_CRECUOTA = B.CRECUOTA';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  ppltitulo02.Caption   := 'DEL '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  pplImpresopor.Caption := 'IMPRESO POR : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  pprcuodes.Print;
  pprcuodes.Stop;
End;

procedure TFCtaRecBcoNac.pplObservacionPrint(Sender: TObject);
begin
 // Chequeando
 pplObservacion.Caption := 'Descargo Ok';
 If FloatToStrF(DM1.cdsReporte.FieldByName('CU_CREAMORT').AsFloat+DM1.cdsReporte.FieldByName('CU_CREINTERES').AsFloat+DM1.cdsReporte.FieldByName('CU_CREFLAT').AsFloat,ffNumber,10,2) <> FloatToStrF(DM1.cdsReporte.FieldByName('CU_CREMTOCOB').AsFloat, ffNumber,10,2) Then
   pplObservacion.Caption := 'Dist. Dif. a lo Pagado';
 If FloatToStrF(DM1.cdsReporte.FieldByName('PA_CRECAPITAL').AsFloat+DM1.cdsReporte.FieldByName('PA_CREMTOINT').AsFloat+DM1.cdsReporte.FieldByName('PA_CREMTOFLAT').AsFloat, ffNumber,10,2) <> FloatToStrF(DM1.cdsReporte.FieldByName('PA_CREMTOCOB').AsFloat, ffNumber,10,2) Then
   pplObservacion.Caption := 'Crono. mal distribuido';
end;

procedure TFCtaRecBcoNac.btnconvalida;
begin
  pnlapenom.Visible := True;
  btnDesOra.Visible := True;
  btnInconsistencias.Visible := True;
  btnEnvio.Visible := True;
  btnEnvio.Top    := 344;
  btnEnvio.Left   := 356;
  btnEnvio.Height := 29;
  btnEnvio.Width  := 167;
  BtnCerrar.Visible := True;
  BtnCerrar.Top    := 344;
  BtnCerrar.Left   := 529;
  BtnCerrar.Height := 29;
  BtnCerrar.Width  := 81;
end;

procedure TFCtaRecBcoNac.btnsinvalida;
begin
  pnlapenom.Visible := False;
  btnDesOra.Visible := True;
  btnInconsistencias.Visible := False;
  btnEnvio.Visible := True;
  btnEnvio.Top    := 344;
  btnEnvio.Left   := 192;
  btnEnvio.Height := 29;
  btnEnvio.Width  := 167;
  BtnCerrar.Visible := True;
  BtnCerrar.Top    := 344;
  BtnCerrar.Left   := 365;
  BtnCerrar.Height := 29;
  BtnCerrar.Width  := 81;
end;

End.
