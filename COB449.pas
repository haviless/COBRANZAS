// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB449
// Formulario           : FRepCuotas
// Fecha de Creación    : 02/01/2017
// Autor                : Isaac Revilla Chávez
// Objetivo             : Opción principal de Reprogramación de cuotas.
// Actualizaciones      :
// HPC_201701           : Creación
// HPC_201727_COB       : Se modifica reportes de la información reprogramada
// HPC_201817_COB       : Se adiciona control de accesos para el Nivel 0 para que realice solo consultas,
// HPC_201818_COB       : Se añade un control para corregir la inconsistencia de los reportes cuando hay un asociado con dos fecha de
//                        reprogramación.
unit COB449;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppPrnabl, ppCtrls,
  // Inicio: HPC_201727_COB
  // Se añaden unidades a usar
  // ppBands, ppCache, ppVar, jpeg, DBGrids;
  ppBands, ppCache, ppVar, jpeg, DBGrids, ppModule, daDataModule;
  // Fin: HPC_201727_COB
type
  TFRepCuotas = class(TForm)
    BitSalir: TBitBtn;
    GroupBox1: TGroupBox;
    dbgDetGru: TwwDBGrid;
    dbgbDetGru: TwwIButton;
    ppbdepResumenProcesado: TppBDEPipeline;
    pprResumenProcesado: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppImage1: TppImage;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppltitulo: TppLabel;
    pplImpresopor: TppLabel;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape8: TppShape;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    btnproinf: TBitBtn;
    GroupBox2: TGroupBox;
    dbgDetArc: TwwDBGrid;
    dbgbDetArc: TwwIButton;
    btnautpro: TBitBtn;
    btnEliArc: TBitBtn;
    btnEligru: TBitBtn;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    btninfarcimp: TBitBtn;
    gbinformacionprocesada: TGroupBox;
    btnimpresinfprocesada: TBitBtn;
    btnexcelinformacionprocesada: TBitBtn;
    gbinformacionreprogramada: TGroupBox;
    btnimpresinfreprogramada: TBitBtn;
    btnexcelinformacionreprogramada: TBitBtn;
    bdepResumenReprogramado: TppBDEPipeline;
    pprResumenReprogramado: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppImage2: TppImage;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    pplTituloReprogramado: TppLabel;
    ppShape16: TppShape;
    ppLabel34: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel35: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel36: TppLabel;
    ppLine4: TppLine;
    GroupBox5: TGroupBox;
    dbgProCab: TwwDBGrid;
    dbgbCab: TwwIButton;
    btncanrep: TBitBtn;
    dbgImpAExcel2: TwwDBGrid;
    // Inicio: HPC_201727_COB
    // Se añaden variables a usar en el nuevo reporte
    daDataModule1: TdaDataModule;
    ppShape17: TppShape;
    ppLabel33: TppLabel;
    ppDBText19: TppDBText;
    // Fin: HPC_201727_COB
    procedure dbgbCabClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgbDetGruClick(Sender: TObject);
    procedure btnimpresinfprocesadaClick(Sender: TObject);
    procedure btnproinfClick(Sender: TObject);
    procedure dbgbDetArcClick(Sender: TObject);
    procedure btnautproClick(Sender: TObject);
    procedure btnEliArcClick(Sender: TObject);
    procedure btnEligruClick(Sender: TObject);
    procedure btnexcelinformacionprocesadaClick(Sender: TObject);
    procedure btnexcelinformacionreprogramadaClick(Sender: TObject);
    procedure btninfarcimpClick(Sender: TObject);
    procedure btnimpresinfreprogramadaClick(Sender: TObject);
    procedure dbgProCabRowChanged(Sender: TObject);
    procedure btncanrepClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MueCab;
    procedure MueDetGrupo;
    procedure MueDetArchivo;
    procedure HabAccesos;
    procedure CargaInfPro;
  end;

var
  FRepCuotas: TFRepCuotas;

implementation

uses COB471, COBDM1, COB472, COB473;

{$R *.dfm}


procedure TFRepCuotas.dbgbCabClick(Sender: TObject);
Var xSql :String;
begin
//Inicio HPC_201817_COB
//Se adiciona controles de acceso para el usuario Nivel 0
   If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL')) = 0 Then
   Begin
     ShowMessage('OPCION NO PERMITIDA PARA EL NIVEL 0 ...');
     Exit;
   End;
//Final HPC_201817_COB
 xSql := 'SELECT ANOMESREP FROM COB_REP_CUO_MAE WHERE ESTREP <> ''CONCLUIDO''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
     MessageDlg('Todos los procesos deben estar CONCLUIDOS antes de aperturar uno nuevo.', mtInformation,[mbOk],0);
     Exit;
   End;
   xSql := 'SELECT ANOMESREP FROM COB_REP_CUO_MAE WHERE ANOMESREP = TO_CHAR(SYSDATE,''YYYYMM'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('ANOMESREP').AsString <> '' Then
   Begin
      MessageDlg('Año y mes de proceso ya fue aperturado. Nueva apertura, el próximo mes.', mtInformation,[mbOk],0);
      Exit;
   End;
   FNueMesRep := TFNueMesRep.Create(Self);
   FNueMesRep.Top :=  FRepCuotas.Top  + 60;
   FNueMesRep.Left := FRepCuotas.Left + 40;
   Try
      FNueMesRep.ShowModal
   Finally
      FNueMesRep.free
   End;
   HabAccesos;
end;


procedure TFRepCuotas.FormActivate(Sender: TObject);
Begin
  MueCab;
  MueDetGrupo;
  MueDetArchivo;
  HabAccesos;
end;

procedure TFRepCuotas.MueCab;
Var xSql:String;
begin
   xSql := 'SELECT IDEREP, SUBSTR(ANOMESREP,5,2)||''/''||SUBSTR(ANOMESREP,1,4) PERIODO,  ANOMESREP, TIPREP, USUREG, FECREG, USUMOD, FECMOD, ESTREP'
   +' FROM COB_REP_CUO_MAE WHERE TIPREP = ''DIF'' ORDER BY ANOMESREP DESC';
   DM1.cdsGrupos.Close;
   DM1.cdsGrupos.DataRequest(xSql);
   DM1.cdsGrupos.Open;
//Inicio HPC_201817_COB
//Se adiciona controles de acceso para el usuario Nivel 0
   If (DM1.cdsGrupos.RecordCount > 0) And (DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'INICIO') AND
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL'))<>0) Then
//Final HPC_201817_COB
   Begin
      dbgbDetGru.Enabled := True;
      dbgbDetArc.Enabled := True;
   End
   Else
   Begin
      dbgbDetGru.Enabled := False;
      dbgbDetArc.Enabled := False;
   End;
   dbgProCab.Selected.Clear;
   dbgProCab.Selected.Add('IDEREP'#9'11'#9'Código~unico'#9);
   dbgProCab.Selected.Add('PERIODO'#9'14'#9'Periodo del~proceso'#9);
   dbgProCab.Selected.Add('TIPREP'#9'12'#9'Tipo de~reprogramación'#9);
   dbgProCab.Selected.Add('USUREG'#9'15'#9'Usuario que~registra'#9);
   dbgProCab.Selected.Add('FECREG'#9'20'#9'Fecha de~registro'#9);
   dbgProCab.Selected.Add('ESTREP'#9'12'#9'Estado del~proceso'#9);
   dbgProCab.ApplySelected;
end;

procedure TFRepCuotas.MueDetGrupo;
Var xSql:String;
begin
   // Inicio: HPC_201727_COB
   // Se añade el campo "CODMOTDIF"
   // xSql := 'SELECT A.ASOTIPID, D.ASOTIPDES, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, A.USEID, B.USENOM, A.IDEREP, A.ANOMESREP, A.TIPGEN, A.MOTREP'
   xSql := 'SELECT A.ASOTIPID, D.ASOTIPDES, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, A.USEID, B.USENOM, A.IDEREP, A.ANOMESREP, A.TIPGEN, A.MOTREP, A.CODMOTDIF'
   // Fin: HPC_201727_COB
   +' FROM COB_REP_CUO_DET A, APO101 B, APO158 C, APO107 D'
   +' WHERE A.IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)+' AND A.ASOTIPID = D.ASOTIPID'
   +' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID AND B.DPTOID = C.DPTOID ORDER BY C.DPTOID, A.USEID';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSql);
   DM1.cdsMGrupo.Open;
   dbgDetGru.Selected.Clear;
   dbgDetGru.Selected.Add('TIPGEN'#9'11'#9'Tipo de~generación'#9);
   dbgDetGru.Selected.Add('ASOTIPDES'#9'11'#9'Tipo de~asociado'#9);
   dbgDetGru.Selected.Add('DPTODES'#9'15'#9'Departamento~Ugel'#9);
   dbgDetGru.Selected.Add('UPROID'#9'11'#9'Unidad de~proceso'#9);
   dbgDetGru.Selected.Add('UPAGOID'#9'11'#9'Unidad de~pago'#9);
   dbgDetGru.Selected.Add('USEID'#9'11'#9'Unidad de~gestión'#9);
   dbgDetGru.Selected.Add('USENOM'#9'25'#9'Descripción~unidad de gestión'#9);
   dbgDetGru.Selected.Add('ANOMESREP'#9'6'#9'Año y mes a ~diferir'#9);
   dbgDetGru.ApplySelected;
end;

procedure TFRepCuotas.MueDetArchivo;
Var xSql:String;
begin
   // Inicio: HPC_201727_COB
   // Se añade el campo "CODMOTDIF"
   // xSql := 'SELECT A.ASOTIPID, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, A.USEID, B.USENOM, A.ANOMESREP, A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI'
   xSql := 'SELECT A.ASOTIPID, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, A.USEID, B.USENOM, A.ANOMESREP, A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, A.CODMOTDIF'
   // Fin: HPC_201727_COB
   +' FROM COB_REP_CUO_DET_ASO A, APO101 B, APO158 C'
   +' WHERE A.IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
   +' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID AND B.DPTOID = C.DPTOID'
   +' ORDER BY A.ANOMESREP, C.DPTOID, B.USEID';
   DM1.cdsCuentas.Close;
   DM1.cdsCuentas.DataRequest(xSql);
   DM1.cdsCuentas.Open;
   dbgDetArc.Selected.Clear;
   dbgDetArc.Selected.Add('ANOMESREP'#9'6'#9'Año y mes a ~diferir'#9);
   dbgDetArc.Selected.Add('DPTODES'#9'13'#9'Departamento'#9);
   dbgDetArc.Selected.Add('USENOM'#9'25'#9'Descripción~unidad de gestión'#9);
   dbgDetArc.Selected.Add('ASODNI'#9'8'#9'DNI~del asociado'#9);
   dbgDetArc.Selected.Add('ASOAPENOMDNI'#9'42'#9'Apellidos y nombre(s)~del asociado'#9);
   dbgDetArc.Selected.Add('ASOCODMOD'#9'10'#9'Código modular~del asociado'#9);
   dbgDetArc.Selected.Add('ASOTIPID'#9'11'#9'Tipo de~asociado'#9);
   dbgDetArc.Selected.Add('UPROID'#9'3'#9'Unidad de~proceso'#9);
   dbgDetArc.Selected.Add('UPAGOID'#9'3'#9'Unidad de~pago'#9);
   dbgDetArc.Selected.Add('USEID'#9'3'#9'Código~unidad de gestión'#9);
   dbgDetArc.ApplySelected;
end;

procedure TFRepCuotas.dbgbDetGruClick(Sender: TObject);
begin
   DM1.xSgr := 'A';
   FRegDetAso := TFRegDetAso.Create(Self);
   Try
      FRegDetAso.ShowModal
   Finally
      FRegDetAso.free
   End;
   HabAccesos;
end;

procedure TFRepCuotas.btnimpresinfprocesadaClick(Sender: TObject);
Var xSql:String;
begin
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString <> 'INICIO' Then
   Begin
      xSql := 'SELECT A.TIPGEN, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, B.USEID, B.USENOM, A.ASOTIPID, C.TIPREP, TO_CHAR(A.CREFVENINI,''YYYY/MM'') PERREP, COUNT(*) CANREGASO'
      +' FROM COB_REP_CUO_CAR A, APO101 B, APO158 C, COB_REP_CUO_MAE C'
      +' WHERE A.IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
      +' AND A.IDEREP = C.IDEREP AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID'
      +' AND B.DPTOID = C.DPTOID'
      +' GROUP BY A.TIPGEN, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, B.USEID, B.USENOM, A.ASOTIPID, C.TIPREP, TO_CHAR(A.CREFVENINI,''YYYY/MM'')'
      +' ORDER BY A.TIPGEN DESC, C.DPTOID, B.USEID';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No hay información para mostrar.', mtInformation,[mbOk],0);
         Exit;
      End;
      ppltitulo.Caption := 'PERIODO DE CARTERA : '+ UpperCase(DM1.DesMes(StrToInt(Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,5,2)),'N'))+'/'+Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,1,4);
      pprResumenProcesado.Print;
   End
   Else
      MessageDlg('El estado de la cartera no debe estar en "INICIO" para ejecutar esta opción.', mtError,[mbOk],0);
end;

procedure TFRepCuotas.btnproinfClick(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT USERID FROM SIS000 WHERE USERID = '+QuotedStr(DM1.wUsuario)+' AND COMPONENTE = ''btnproinf''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If Trim(DM1.cdsQry.FieldByName('USERID').AsString) = '' Then
   Begin
      MessageDlg('Usuario no permitido para procesar la información.', mtError,[mbOk],0);
      Exit;
   End;
   
   If (DM1.cdsMGrupo.RecordCount = 0) And (DM1.cdsCuentas.RecordCount = 0) Then
   Begin
      MessageDlg('No existe información para procesar.', mtInformation,[mbOk],0);
      Exit;
   End;
   If MessageDlg('¿Seguro que va a procesar la información?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      Screen.Cursor := crHourGlass;
      // Insertar registros por grupos
      xSql := 'SELECT B.ASOCODMOD, B.ASOAPENOMDNI, B.USEID, B.UPAGOID, B.UPROID, B.ASOTIPID, F.DPTODES, E.USENOM, B.ASODNI, C.CREFOTORG, C.CREMTOOTOR,'
      +' C.CRENUMCUO NUMCUOCRE,  C.CRECUOTA MONCUOCRE, D.CREESTADO, D.CREFVEN CREFVENINI, D.ASOID, D.CREDID, D.CRECUOTA CRENUMCUOINI, NVL(D.CREAMORT,0)-NVL(D.CRECAPITAL,0) SAL_AMOR,'
      +' NVL(D.CREINTERES,0)-NVL(D.CREMTOINT,0) SAL_INTE, NVL(D.CREFLAT,0)-NVL(D.CREMTOFLAT,0) SAL_FLAT, NVL(D.MONPACDESGRAV,0)-NVL(D.MONCOBDESGRAV,0) SAL_DESG, NVL(D.CREMTO,0)-NVL(D.CREMTOCOB,0) SAL_CUOT'
      +' FROM COB_REP_CUO_DET A, APO201 B, CRE301 C, CRE302 D, APO101 E, APO158 F'
      +' WHERE A.IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
      +' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID AND A.ASOTIPID = B.ASOTIPID'
      +' AND B.ASOID = C.ASOID AND C.CREESTID = ''02'' AND C.ASOID = D.ASOID AND C.CREDID = D.CREDID'
      +' AND D.CREESTID IN (''02'',''11'',''14'',''27'') AND TO_CHAR(D.CREFVEN,''YYYYMM'') = A.ANOMESREP'
      +' AND D.CREFVEN = D.CREFVENINI AND B.UPROID = E.UPROID(+) AND B.UPAGOID = E.UPAGOID(+) AND B.USEID = E.USEID(+)'
      +' AND E.DPTOID = F.DPTOID(+) AND TO_CHAR(D.CREFVEN,''YYYYMM'') = A.ANOMESREP AND D.CREFVEN = D.CREFVENINI';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      While Not DM1.cdsQry.Eof Do
      Begin
         xSql := 'INSERT INTO COB_REP_CUO_CAR (IDEREP, ASOCODMOD, ASOID, ASOAPENOMDNI, USEID, UPAGOID, UPROID, ASOTIPID, DPTODES, USENOM, ASODNI, CREDID, CREFOTORG,'
         +' CREMTOOTOR, NUMCUOCRE, MONCUOCRE, CREFVENINI, CRENUMCUOINI,  SALAMOR, SALINTE, SALFLAT, SALDESG, SALCUOT, ESTCUO, CRENUMCUOREP, TIPGEN) VALUES ( '
         +QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ASOCODMOD').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)
         +','+QuotedStr(DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('UPAGOID').AsString)
         +','+QuotedStr(DM1.cdsQry.FieldByName('UPROID').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ASOTIPID').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('DPTODES').AsString)
         +','+QuotedStr(DM1.cdsQry.FieldByName('USENOM').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ASODNI').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString)
         +','+QuotedStr(DM1.cdsQry.FieldByName('CREFOTORG').AsString)+','+DM1.cdsQry.FieldByName('CREMTOOTOR').AsString+','+DM1.cdsQry.FieldByName('NUMCUOCRE').AsString
         +','+DM1.cdsQry.FieldByName('MONCUOCRE').AsString+','+QuotedStr(DM1.cdsQry.FieldByName('CREFVENINI').AsString)+','+DM1.cdsQry.FieldByName('CRENUMCUOINI').AsString
         +','+DM1.cdsQry.FieldByName('SAL_AMOR').AsString+','+DM1.cdsQry.FieldByName('SAL_INTE').AsString+','+DM1.cdsQry.FieldByName('SAL_FLAT').AsString
         +','+DM1.cdsQry.FieldByName('SAL_DESG').AsString+','+DM1.cdsQry.FieldByName('SAL_CUOT').AsString+','+QuotedStr(DM1.cdsQry.FieldByName('CREESTADO').AsString)
         +','+DM1.cdsQry.FieldByName('NUMCUOCRE').AsString+', ''GRU'')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         DM1.cdsQry.Next;
      End;
      // Insertar registros por archivos
      xSql := 'SELECT B.ASOCODMOD, B.ASOAPENOMDNI, B.USEID, B.UPAGOID, B.UPROID, B.ASOTIPID, F.DPTODES, E.USENOM, B.ASODNI, C.CREFOTORG, C.CREMTOOTOR,'
      +' C.CRENUMCUO NUMCUOCRE,  C.CRECUOTA MONCUOCRE, D.CREESTADO, D.CREFVEN CREFVENINI, D.ASOID, D.CREDID, D.CRECUOTA CRENUMCUOINI,'
      +' NVL(D.CREAMORT,0)-NVL(D.CRECAPITAL,0) SAL_AMOR, NVL(D.CREINTERES,0)-NVL(D.CREMTOINT,0) SAL_INTE, NVL(D.CREFLAT,0)-NVL(D.CREMTOFLAT,0) SAL_FLAT,'
      +' NVL(D.MONPACDESGRAV,0)-NVL(D.MONCOBDESGRAV,0) SAL_DESG, NVL(D.CREMTO,0)-NVL(D.CREMTOCOB,0) SAL_CUOT'
      +' FROM COB_REP_CUO_DET_ASO A, APO201 B, CRE301 C, CRE302 D, APO101 E, APO158 F'
      +' WHERE A.IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
      +' AND A.ASOID = B.ASOID AND B.ASOID = C.ASOID AND C.CREESTID = ''02'''
      +' AND C.ASOID = D.ASOID AND C.CREDID = D.CREDID AND D.CREESTID IN (''02'',''11'',''14'',''27'') AND TO_CHAR(D.CREFVEN,''YYYYMM'') = A.ANOMESREP'
      +' AND D.CREFVEN = D.CREFVENINI AND B.UPROID = E.UPROID AND B.UPAGOID = E.UPAGOID AND B.USEID = E.USEID'
      +' AND E.DPTOID = F.DPTOID';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      While Not DM1.cdsQry.Eof Do
      Begin
        xSql := 'SELECT ASOID FROM COB_REP_CUO_CAR WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
        +' AND ASOID = '+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)
        +' AND CREDID = '+QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString)
        +' AND CREFVENINI = '+QuotedStr(DM1.cdsQry.FieldByName('CREFVENINI').AsString);
        DM1.cdsQry1.Close;
        DM1.cdsQry1.DataRequest(xSql);
        DM1.cdsQry1.Open;
        If DM1.cdsQry1.RecordCount = 0 Then
        Begin
           xSql := 'INSERT INTO COB_REP_CUO_CAR (IDEREP, ASOCODMOD, ASOID, ASOAPENOMDNI, USEID, UPAGOID, UPROID, ASOTIPID, DPTODES, USENOM, ASODNI, CREDID, CREFOTORG,'
           +' CREMTOOTOR, NUMCUOCRE, MONCUOCRE, CREFVENINI, CRENUMCUOINI,  SALAMOR, SALINTE, SALFLAT, SALDESG, SALCUOT, ESTCUO, CRENUMCUOREP, TIPGEN) VALUES ( '
           +QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ASOCODMOD').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)
           +','+QuotedStr(DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('UPAGOID').AsString)
           +','+QuotedStr(DM1.cdsQry.FieldByName('UPROID').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ASOTIPID').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('DPTODES').AsString)
           +','+QuotedStr(DM1.cdsQry.FieldByName('USENOM').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ASODNI').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString)
           +','+QuotedStr(DM1.cdsQry.FieldByName('CREFOTORG').AsString)+','+DM1.cdsQry.FieldByName('CREMTOOTOR').AsString+','+DM1.cdsQry.FieldByName('NUMCUOCRE').AsString
           +','+DM1.cdsQry.FieldByName('MONCUOCRE').AsString+','+QuotedStr(DM1.cdsQry.FieldByName('CREFVENINI').AsString)+','+DM1.cdsQry.FieldByName('CRENUMCUOINI').AsString
           +','+DM1.cdsQry.FieldByName('SAL_AMOR').AsString+','+DM1.cdsQry.FieldByName('SAL_INTE').AsString+','+DM1.cdsQry.FieldByName('SAL_FLAT').AsString
           +','+DM1.cdsQry.FieldByName('SAL_DESG').AsString+','+DM1.cdsQry.FieldByName('SAL_CUOT').AsString+','+QuotedStr(DM1.cdsQry.FieldByName('CREESTADO').AsString)
           +','+DM1.cdsQry.FieldByName('NUMCUOCRE').AsString+',''ARC'')';
           DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        End;
        DM1.cdsQry.Next;
      End;
      // Actualizando registro de la nueva cuota
      xSql := 'SELECT A.ASOID, A.CREDID, A.CRENUMCUOINI FROM COB_REP_CUO_CAR A WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      While Not DM1.cdsQry.Eof Do
      Begin
         xSql := 'SELECT MAX(CREFVEN) ULTFECVEN, MAX(ADD_MONTHS(CREFVEN,1)) FECVENREP  FROM CRE302 WHERE ASOID = '+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString);
         DM1.cdsQry10.Close;
         DM1.cdsQry10.DataRequest(xSql);
         DM1.cdsQry10.Open;
         xSql := 'UPDATE COB_REP_CUO_CAR SET CREFVENULTCUOINI = '+QuotedStr(DM1.cdsQry10.FieldByName('ULTFECVEN').AsString)+', CREFVENREP = '+QuotedStr(DM1.cdsQry10.FieldByName('FECVENREP').AsString)
         +' WHERE ASOID = '+QuotedStr(DM1.cdsQry.FieldByName('ASOID').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsQry.FieldByName('CREDID').AsString)+' AND CRENUMCUOINI = '+QuotedStr(DM1.cdsQry.FieldByName('CRENUMCUOINI').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         DM1.cdsQry.Next;
      End;
      xSql := 'UPDATE COB_REP_CUO_CAR SET DIASPRORROGA = CREFVENREP-CREFVENINI WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'UPDATE COB_REP_CUO_MAE SET ESTREP = ''PROCESADO'', USUPRO = '+QuotedStr(DM1.wUsuario)+', FECPRO = SYSDATE WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      // Guardando en resumen en el detalle
      xSql := 'SELECT ASOTIPID, UPROID, UPAGOID, USEID, ANOMESREP, MOTREP, COUNT(*) CANTIDAD FROM COB_REP_CUO_DET_ASO'
      +' WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
      +' GROUP BY ASOTIPID, UPROID, UPAGOID, USEID, ANOMESREP, MOTREP';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         While Not DM1.cdsQry.Eof Do
         Begin
            xSql := 'INSERT INTO COB_REP_CUO_DET (IDEREP, ASOTIPID, UPROID, UPAGOID, USEID, ANOMESREP, MOTREP, USUREG, FECREG, TIPGEN, CANREGASO) VALUES ('
            +QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ASOTIPID').AsString)+','
            +QuotedStr(DM1.cdsQry.FieldByName('UPROID').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('UPAGOID').AsString)+','
            +QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('ANOMESREP').AsString)+','
            +QuotedStr(DM1.cdsQry.FieldByName('MOTREP').AsString)+','+QuotedStr(DM1.wUsuario)+', SYSDATE, ''ARC'','+DM1.cdsQry.FieldByName('CANTIDAD').AsString+')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            DM1.cdsQry.Next;
         End;
      End;
      MueCab;
      MueDetGrupo;
      MueDetArchivo;
      Screen.Cursor := crDefault;
      MessageDlg('La información ha sido procesada.', mtInformation,[mbOk],0);
   End;
   HabAccesos;
end;

procedure TFRepCuotas.dbgbDetArcClick(Sender: TObject);
begin
   FInsAso := TFInsAso.Create(Self);
   Try
      FInsAso.ShowModal
   Finally
      FInsAso.free
   End;
   HabAccesos;
end;

procedure TFRepCuotas.btnautproClick(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT USERID FROM SIS000 WHERE USERID = '+QuotedStr(DM1.wUsuario)+' AND COMPONENTE = ''btnautpro''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If Trim(DM1.cdsQry.FieldByName('USERID').AsString) = '' Then
   Begin
      MessageDlg('Usuario no permitido para autorizar el proceso.', mtError,[mbOk],0);
      Exit;
   End;

   If DM1.cdsGrupos.FieldByName('ESTREP').AsString <> 'PROCESADO' Then
   Begin
      MessageDlg('Para poder autorizar el estado del proceso debe encontrase en estado de "PROCESADO".', mtInformation,[mbOk],0);
      Exit;
   End;
   If MessageDlg('¿Seguro que va a autorizar la reprogramación?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xSql := 'UPDATE COB_REP_CUO_MAE SET ESTREP = ''AUTORIZADO'', USUAUT = '+QuotedStr(DM1.wUsuario)+', FECAUT = SYSDATE WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
     MessageDlg('La información ha sido autorizada.', mtInformation,[mbOk],0);
     MueCab;
   End;
   HabAccesos;
end;

procedure TFRepCuotas.btnEliArcClick(Sender: TObject);
Var xSql:String;
begin
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'INICIO' Then
   Begin
      If MessageDlg('¿Seguro de cancelar archivo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
         xSql := 'DELETE FROM  COB_REP_CUO_DET_ASO WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         MessageDlg('El archivo ha sido cancelado.', mtInformation,[mbOk],0);
         MueDetArchivo;
         HabAccesos;
      End;
   End
   Else
      MessageDlg('Archivo no puede ser cancelado. Debe estar en estado de "INICIO".', mtInformation,[mbOk],0);
end;


procedure TFRepCuotas.btnEligruClick(Sender: TObject);
begin
   If DM1.cdsMGrupo.RecordCount = 0 Then
   Begin
      MessageDlg('No existen registros para eliminar.', mtInformation,[mbOk],0);
      Exit;
   End;
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString <> 'INICIO' Then
   Begin
      MessageDlg('Registro no puede ser cancelado. Debe estar en estado de "INICIO".', mtInformation,[mbOk],0);
      Exit;
   End;
   DM1.xSgr := 'E';
   FRegDetAso := TFRegDetAso.Create(Self);
   Try
      FRegDetAso.ShowModal
   Finally
      FRegDetAso.free
   End;
   HabAccesos;
end;

procedure TFRepCuotas.HabAccesos;
Var xSql:String;
begin
//Inicio HPC_201817_COB
//Se adiciona controles de acceso para el usuario Nivel 0
      dbgbDetArc.Enabled   := False;
      btncanrep.Enabled    := False;
      btnEligru.Enabled    := False;
      btnEliArc.Enabled    := False;
      btnproinf.Enabled    := False;
      btninfarcimp.Enabled := False;
      dbgbCab.Enabled      := False;
      btnautpro.Enabled    := False;
      btnEligru.Enabled    := False;
      btnEliArc.Enabled    := False;
      btnproinf.Enabled    := False;
      btnimpresinfprocesada.Enabled           := False;
      btnexcelinformacionprocesada.Enabled    := False;
      btnimpresinfreprogramada.Enabled        := False;
      btnexcelinformacionreprogramada.Enabled := False;

   If (DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'INICIO') AND
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL'))<>0)  Then
   Begin

     If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL'))<>0 Then
     Begin
      dbgbDetGru.Enabled := True;
      dbgbDetArc.Enabled := True;
     End;
//Final HPC_201817_COB
      btncanrep.Enabled := True;
      btnEligru.Enabled := True;
      btnEliArc.Enabled := True;
      btnproinf.Enabled := True;
//Inicio HPC_201817_COB
//Se adiciona controles de acceso para el usuario Nivel 0
      btninfarcimp.Enabled := True;
      dbgbCab.Enabled := False;
//Final HPC_201817_COB
      btnautpro.Enabled := False;
      btnimpresinfprocesada.Enabled := False;
      btnexcelinformacionprocesada.Enabled := False;
      btnimpresinfreprogramada.Enabled := False;
      btnexcelinformacionreprogramada.Enabled := False;
      If DM1.cdsMGrupo.RecordCount = 0 Then
         btnEligru.Enabled := False
      Else
         btnEligru.Enabled := True;
      If DM1.cdsCuentas.RecordCount = 0 Then
         btnEliArc.Enabled := False
      Else
         btnEliArc.Enabled := True;
      If (DM1.cdsMGrupo.RecordCount > 0)  Or (DM1.cdsCuentas.RecordCount > 0) Then
         btnproinf.Enabled := True
      Else
         btnproinf.Enabled := False;
   End;
//Inicio HPC_201817_COB
//Se adiciona controles de acceso para el usuario Nivel 0
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'PROCESADO'  Then
   Begin
      dbgbCab.Enabled := False;
      btncanrep.Enabled := False;
      dbgbDetGru.Enabled := False;
      btnEligru.Enabled := False;
      dbgbDetArc.Enabled := False;
      btninfarcimp.Enabled := True;
      btnEliArc.Enabled := False;
      btnproinf.Enabled := False;
      If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL'))<>0 Then
      btnautpro.Enabled := True else btnautpro.Enabled := False;
      btnimpresinfprocesada.Enabled := True;
      btnexcelinformacionprocesada.Enabled := True;
      btnimpresinfreprogramada.Enabled := False;
      btnexcelinformacionreprogramada.Enabled := False;
   End;
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'AUTORIZADO' Then
   Begin
      dbgbCab.Enabled := False;
      If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL'))<>0 Then
//Final HPC_201817_COB
      btncanrep.Enabled := True;
      dbgbDetGru.Enabled := False;
      btnEligru.Enabled := False;
      dbgbDetArc.Enabled := False;
      btninfarcimp.Enabled := True;
      btnEliArc.Enabled := False;
      btnproinf.Enabled := False;
      btnautpro.Enabled := False;
      btnimpresinfprocesada.Enabled := True;
      btnexcelinformacionprocesada.Enabled := True;
      btnimpresinfreprogramada.Enabled := False;
      btnexcelinformacionreprogramada.Enabled := False;
   End;
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'CONCLUIDO' Then
   Begin
      dbgbCab.Enabled := False;
      btncanrep.Enabled := False;
      dbgbDetGru.Enabled := False;
      btnEligru.Enabled := False;
      dbgbDetArc.Enabled := False;
      btninfarcimp.Enabled := True;
      btnEliArc.Enabled := False;
      btnproinf.Enabled := False;
      btnautpro.Enabled := False;
      btnimpresinfprocesada.Enabled := True;
      btnexcelinformacionprocesada.Enabled := True;
      btnimpresinfreprogramada.Enabled := True;
      btnexcelinformacionreprogramada.Enabled := True;
   End;
   // excepción
   If DM1.cdsGrupos.RecordCount = 0 Then
      dbgbCab.Enabled := True
   Else
   Begin
      xSql := 'SELECT COUNT (1) CANTIDAD FROM COB_REP_CUO_MAE WHERE ESTREP <> ''CONCLUIDO''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
//Inicio HPC_201817_COB
//Se adiciona controles de acceso para el usuario Nivel 0      
      If (DM1.cdsQry.FieldByName('CANTIDAD').AsInteger = 0) AND
         (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL'))<>0)  Then
//Final HPC_201817_COB         
         dbgbCab.Enabled := True
      Else
         dbgbCab.Enabled := False;
   End;
   If DM1.cdsCuentas.RecordCount = 0 Then btninfarcimp.Enabled := False
   Else btninfarcimp.Enabled := True;
end;
procedure TFRepCuotas.btnexcelinformacionprocesadaClick(Sender: TObject);
Var xSql:String;
begin
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString <> 'INICIO' Then
   Begin
      xSql := 'SELECT ASOID, ASOCODMOD, ASOAPENOMDNI, USEID, UPAGOID, UPROID, ASOTIPID, DPTODES, USENOM, ASODNI, CREDID, CREFOTORG, CREMTOOTOR,'
      +' NUMCUOCRE, MONCUOCRE, CREFVENINI, CRENUMCUOINI, CREFVENULTCUOINI, CREFVENREP, CRENUMCUOREP, DIASPRORROGA, SALAMOR, SALINTE, SALFLAT,'
      +' SALDESG, SALCUOT, ESTCUO FROM COB_REP_CUO_CAR WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No hay información para mostrar.', mtInformation,[mbOk],0);
         Exit;
      End;
      dbgImpAExcel2.DataSource := DM1.dsReporte;
      CargaInfPro;
      DM1.ExportaGridExcel(dbgImpAExcel2, 'REP_INF_PROCESADA');
   End
   Else
      MessageDlg('El estado de la cartera no debe estar en "INICIO" para ejecutar esta opción.', mtError,[mbOk],0);
end;

procedure TFRepCuotas.btnexcelinformacionreprogramadaClick(Sender: TObject);
Var xSql:String;
begin
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'CONCLUIDO' Then
   Begin
      // Inicio: HPC_201727_COB
      // Se modifica Qry del reporte del resumen por Ugeles
      // xSql := 'SELECT ASOID, ASOCODMOD, ASOAPENOMDNI, USEID, UPAGOID, UPROID, ASOTIPID, DPTODES, USENOM, ASODNI, CREDID, CREFOTORG, CREMTOOTOR,'
      // +' NUMCUOCRE, MONCUOCRE, CREFVENINI, CRENUMCUOINI, CREFVENULTCUOINI, CREFVENREP, CRENUMCUOREP, DIASPRORROGA, SALAMOR, SALINTE, SALFLAT,'
      // +' SALDESG, SALCUOT, ESTCUO FROM COB_REP_CUO_CAR WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
      // +' AND NVL(ESTREG,''X'') = ''S''';
      xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOMDNI, A.USEID, A.UPAGOID, A.UPROID, A.ASOTIPID, A.DPTODES, A.USENOM, A.ASODNI, A.CREDID,'
      +' A.CREFOTORG, A.CREMTOOTOR, A.NUMCUOCRE, A.MONCUOCRE, A.CREFVENINI, A.CRENUMCUOINI, A.CREFVENULTCUOINI, A.CREFVENREP,'
      + 'A.CRENUMCUOREP, A.DIASPRORROGA, A.SALAMOR, A.SALINTE, A.SALFLAT, A.SALDESG, A.SALCUOT, A.ESTCUO, B.MOTREP, B.CODMOTDIF'
      +' FROM COB_REP_CUO_CAR A, COB_REP_CUO_DET B'
      +' WHERE A.IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)+' AND NVL(A.ESTREG,''X'') = ''S'''
      // Inicio: HPC_201818_COB
      // Se modifica el Qry al momento de mostrar información de las cuotas diferidas
      // +' AND A.IDEREP = B.IDEREP AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID AND A.ASOTIPID = B.ASOTIPID';
      // +' NVL(Select crecuota from cre302 where asoid=a.asoid and credid=a.credid and  numcuoori=a.CRENUMCUOINI and crefven<>cefvenini),A.CRENUMCUOREP) CRENUMCUOREPn,'
      +' AND A.IDEREP = B.IDEREP AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID AND A.ASOTIPID = B.ASOTIPID'
      +' AND TO_CHAR(A.CREFVENINI,''YYYYMM'') = B.ANOMESREP';
      // Fin: HPC_201818_COB


      // Fin: HPC_201727_COB
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No hay información para mostrar.', mtInformation,[mbOk],0);
         Exit;
      End;
      dbgImpAExcel2.DataSource := DM1.dsReporte;
      CargaInfPro;
      DM1.ExportaGridExcel(dbgImpAExcel2, 'REP_INF_REPROGRAMADA');
   End
   Else
      MessageDlg('El estado de la cartera debe estar "CONCLUIDO" para ejecutar esta opción.', mtError,[mbOk],0);
end;

procedure TFRepCuotas.btninfarcimpClick(Sender: TObject);
begin
   If DM1.cdsCuentas.RecordCount = 0 Then
   Begin
      MessageDlg('No hay registros que mostrar.', mtInformation,[mbOk],0);
      Exit;
   End;
   dbgImpAExcel2.DataSource := DM1.dsCuentas;
   DM1.ExportaGridExcel(dbgImpAExcel2, 'REP_ASOCIADOS');
end;

procedure TFRepCuotas.CargaInfPro;
begin
   dbgImpAExcel2.Selected.Clear;
   dbgImpAExcel2.Selected.Add('ASOID'#9'10'#9'Código~asociado DERRAMA'#9);
   dbgImpAExcel2.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9);
   dbgImpAExcel2.Selected.Add('ASOAPENOMDNI'#9'60'#9'Apellidos y~nombre(s)'#9);
   dbgImpAExcel2.Selected.Add('USEID'#9'3'#9'Código~UGEL'#9);
   dbgImpAExcel2.Selected.Add('UPAGOID'#9'3'#9'Código unidad~de pago'#9);
   dbgImpAExcel2.Selected.Add('UPROID'#9'3'#9'Código unidad~de proceso'#9);
   dbgImpAExcel2.Selected.Add('ASOTIPID'#9'2'#9'Tipo de~asociado'#9);
   dbgImpAExcel2.Selected.Add('DPTODES'#9'25'#9'Descripción~departamento UGEL'#9);
   dbgImpAExcel2.Selected.Add('USENOM'#9'31'#9'Descripción~UGEL'#9);
   dbgImpAExcel2.Selected.Add('ASODNI'#9'8'#9'DNI~asociado'#9);
   dbgImpAExcel2.Selected.Add('CREDID'#9'15'#9'Número de~crédito'#9);
   dbgImpAExcel2.Selected.Add('CREFOTORG'#9'10'#9'Fecha de~otorgamiento'#9);
   dbgImpAExcel2.Selected.Add('CREMTOOTOR'#9'12'#9'Monto~otorgado'#9);
   dbgImpAExcel2.Selected.Add('NUMCUOCRE'#9'6'#9'Número cuotas~de credito'#9);
   dbgImpAExcel2.Selected.Add('MONCUOCRE'#9'12'#9'Monto cuota~del crédito'#9);
   dbgImpAExcel2.Selected.Add('CREFVENINI'#9'10'#9'Fecha vencimiento~a reprogramar'#9);
   dbgImpAExcel2.Selected.Add('CRENUMCUOINI'#9'3'#9'Número cuota~a reprogramar'#9);
   dbgImpAExcel2.Selected.Add('CREFVENULTCUOINI'#9'10'#9'Fecha vencimiento~última cuota'#9);
   dbgImpAExcel2.Selected.Add('CREFVENREP'#9'6'#9'Nueva fecha~vencimiento reprogramada'#9);
   dbgImpAExcel2.Selected.Add('CRENUMCUOREP'#9'6'#9'Nuevo numero~cuota reprogramada'#9);
   dbgImpAExcel2.Selected.Add('DIASPRORROGA'#9'10'#9'Dias de~prorroga'#9);
   dbgImpAExcel2.Selected.Add('SALAMOR'#9'12'#9'Saldo~amortización'#9);
   dbgImpAExcel2.Selected.Add('SALINTE'#9'12'#9'Saldo~interés'#9);
   dbgImpAExcel2.Selected.Add('SALFLAT'#9'12'#9'Saldo~flat'#9);
   dbgImpAExcel2.Selected.Add('SALDESG'#9'12'#9'Saldo~desgravamen'#9);
   dbgImpAExcel2.Selected.Add('SALCUOT'#9'12'#9'Saldo~cuota'#9);
   dbgImpAExcel2.Selected.Add('ESTCUO'#9'25'#9'Estado~cuota'#9);
   // Inicio: HPC_201727_COB
   // Se añaden columnas para ser mostrado en la exportación de excel
   dbgImpAExcel2.Selected.Add('MOTREP'#9'80'#9'Motivo de diferimiento'#9);
   dbgImpAExcel2.Selected.Add('CODMOTDIF'#9'6'#9'Código~motivo diferimiento'#9);
   // Fin: HPC_201727_COB
   dbgImpAExcel2.ApplySelected;
end;

procedure TFRepCuotas.btnimpresinfreprogramadaClick(Sender: TObject);
Var xSql:String;
begin
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'CONCLUIDO' Then
   Begin
      // Inicio: HPC_201727_COB
      // Se modifica Qry para la exportación a excel 
      // Inicio: HPC_201727_COB
      // xSql := 'SELECT A.TIPGEN, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, B.USEID, B.USENOM, A.ASOTIPID, C.TIPREP, TO_CHAR(A.CREFVENINI,''YYYY/MM'') PERREP, COUNT(*) CANREGASO'
      // +' FROM COB_REP_CUO_CAR A, APO101 B, APO158 C, COB_REP_CUO_MAE C'
      // +' WHERE A.IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
      // +' AND NVL(ESTREG,''X'') = ''S'' AND A.IDEREP = C.IDEREP AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID'
      // +' AND B.DPTOID = C.DPTOID'
      // +' GROUP BY A.TIPGEN, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, B.USEID, B.USENOM, A.ASOTIPID, C.TIPREP, TO_CHAR(A.CREFVENINI,''YYYY/MM'')'
      // +' ORDER BY A.TIPGEN DESC, C.DPTOID, B.USEID';
      // Inicio: HPC_201818_COB
      // Se añade condición para que se controle a un mismo asociado con dos meses de reprogramación diferente.
      xSql := 'SELECT A.TIPGEN, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, B.USEID, B.USENOM, A.ASOTIPID, E.TIPREP,'
      +' TO_CHAR(A.CREFVENINI,''YYYY/MM'') PERREP, D.MOTREP, D.CODMOTDIF, COUNT(*) CANREGASO'
      +' FROM COB_REP_CUO_CAR A, APO101 B, APO158 C, COB_REP_CUO_MAE E, COB_REP_CUO_DET D'
      +' WHERE A.IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString)
      +' AND NVL(ESTREG,''X'') = ''S'' AND A.IDEREP = E.IDEREP'
      +' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID AND B.DPTOID = C.DPTOID'
      +' AND TO_CHAR(A.CREFVENINI,''YYYYMM'') = D.ANOMESREP'
      +' AND A.ASOTIPID = D.ASOTIPID'
      +' AND A.IDEREP = D.IDEREP AND A.UPROID = D.UPROID AND A.UPAGOID = D.UPAGOID AND A.USEID = D.USEID'
      +' GROUP BY A.TIPGEN, C.DPTOID, C.DPTODES, A.UPROID, A.UPAGOID, B.USEID, B.USENOM, A.ASOTIPID, E.TIPREP,'
      +' TO_CHAR(A.CREFVENINI,''YYYY/MM''), D.MOTREP, D.CODMOTDIF'
      +' ORDER BY A.TIPGEN DESC, C.DPTOID, B.USEID';
      // Fin: HPC_201818_COB
      // Fin: HPC_201727_COB

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No hay información para mostrar.', mtInformation,[mbOk],0);
         Exit;
      End;
      pplTituloReprogramado.Caption := 'PERIODO DE CARTERA : '+ UpperCase(DM1.DesMes(StrToInt(Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,5,2)),'N'))+'/'+Copy(DM1.cdsGrupos.FieldByName('ANOMESREP').AsString,1,4);
      pprResumenReprogramado.Print;
   End
   Else
      MessageDlg('El estado de la cartera debe estar "CONCLUIDO" para ejecutar esta opción.', mtError,[mbOk],0);
end;



procedure TFRepCuotas.dbgProCabRowChanged(Sender: TObject);
begin
   If DM1.cdsGrupos.Active = True Then
   Begin
      MueDetGrupo;
      MueDetArchivo;
      HabAccesos;
//Inicio HPC_201817_COB
//Se adiciona controles de acceso para el usuario Nivel 0
      If (DM1.cdsGrupos.RecordCount > 0) And (DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'INICIO') AND
         (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' and AREA=''COB''', 'USERTABLE', 'NIVEL'))<>0)Then
//Final HPC_201817_COB
      Begin
         dbgbDetGru.Enabled := True;
         dbgbDetArc.Enabled := True;
      End
      Else
      Begin
         dbgbDetGru.Enabled := False;
         dbgbDetArc.Enabled := False;
      End;
   End;
end;


procedure TFRepCuotas.btncanrepClick(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT USERID FROM SIS000 WHERE USERID = '+QuotedStr(DM1.wUsuario)+' AND COMPONENTE = ''btncanrep''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If Trim(DM1.cdsQry.FieldByName('USERID').AsString) = '' Then
   Begin
      MessageDlg('Usuario no permitido para cancelar la reprogramación.', mtError,[mbOk],0);
      Exit;
   End;
   If DM1.cdsGrupos.FieldByName('ESTREP').AsString = 'CONCLUIDO' Then
   Begin
      MessageDlg('La reprogramación no puede ser cancelada, porque ya se encuentra en estado "CONCLUIDO".', mtInformation,[mbOk],0);
      Exit;
   End;
   If MessageDlg('¿Seguro de cancelar la reprogramación?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
      xSql := 'DELETE FROM COB_REP_CUO_CAR  WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'DELETE FROM COB_REP_CUO_DET WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'DELETE FROM COB_REP_CUO_DET_ASO WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'DELETE FROM COB_REP_CUO_MAE  WHERE IDEREP = '+QuotedStr(DM1.cdsGrupos.FieldByName('IDEREP').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
     MueCab;
     MueDetGrupo;
     MueDetArchivo;
     HabAccesos;
     MessageDlg('La reprogramación ha sido cancelado.', mtInformation,[mbOk],0);
   End;
end;

procedure TFRepCuotas.FormCreate(Sender: TObject);
begin
   DM1.cdsGrupos.Close;
   DM1.cdsMGrupo.Close;
   DM1.cdsCuentas.Close;
end;

end.
