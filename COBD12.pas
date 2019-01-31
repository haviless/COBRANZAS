unit COBD12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, Mask, wwdbedit, wwdblook, Wwdbdlg, DB, ppEndUsr,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppParameter,
// Inicio: HPP_200925_COB por HNORIEGA
// Memorandum 674-2009-DM-COB - SAR2009-0572(13/7/2009) - DAD-HN-2009-0138(22/7/2009)
  DBGrids;
// Fin: HPP_200925_COB

type
  TFRefiBusca = class(TForm)
    Panel1: TPanel;
    rgUsu: TRadioGroup;
    rgEstado: TRadioGroup;
    dbgRefi: TwwDBGrid;
    bbtnFiltra: TBitBtn;
    pnlUsuario: TPanel;
    dblcdUsureg: TwwDBLookupComboDlg;
    pnlusureg: TPanel;
    meusureg: TMaskEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Timer1: TTimer;
    dbgRefiIButton: TwwIButton;
    gbFec: TGroupBox;
    bbtnCierre: TBitBtn;
    bbtnApertura: TBitBtn;
    Label2: TLabel;
    dtpFecha: TwwDBDateTimePicker;
    Panel2: TPanel;
    lblEstado: TMaskEdit;
    bbtnReporte: TBitBtn;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    ppd1: TppDesigner;
    ppParameterList1: TppParameterList;
    rgOfi: TRadioGroup; // HPP_200907_COB
    pnlOfides: TPanel;
    dblcUniDesc: TwwDBLookupCombo;
    edtunidesc: TEdit;
    BitSalir: TBitBtn;
    Shape4: TShape;
    Label5: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine4: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel15: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppDBCalc17: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText4: TppDBText;
    ppLabel16: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine3: TppLine;
    ppDBText13: TppDBText;
    ppLabel29: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText6: TppDBText;
    ppLabel13: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine6: TppLine;
    ppDBText14: TppDBText;
    ppLabel30: TppLabel;
    ppDBCalc15: TppDBCalc;
// Inicio: HPP_200925_COB por HNORIEGA
// Memorándum 672-2009-DM-COB - SAR-2009-0571 - DAD-HN-2009-0136
// Modificación de Reporte de Solicitudes de Refinanciación
    ppDBText16: TppDBText;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    btnAExcel: TBitBtn;
    dtgData: TDBGrid;
    bbtnDesbloquea: TBitBtn;
// Fin: HPP_200925_COB
    procedure bbtnFiltraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rgUsuClick(Sender: TObject);
    procedure dbgRefiCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgRefiDblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dbgRefiIButtonClick(Sender: TObject);
    procedure bbtnAperturaClick(Sender: TObject);
    procedure bbtnCierreClick(Sender: TObject);
    procedure dtpFechaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnReporteClick(Sender: TObject);
    procedure rgOfiClick(Sender: TObject);
    procedure dblcUniDescExit(Sender: TObject);
    procedure dblcdUsuregExit(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure rgEstadoClick(Sender: TObject);
// Inicio: HPP_200925_COB por HNORIEGA
// Memorándum 672-2009-DM-COB - SAR-2009-0571 - DAD-HN-2009-0136
// se añade botón para exportar a Excel
    procedure btnAExcelClick(Sender: TObject);
    procedure bbtnDesbloqueaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
// Fin: HPP_200925_COB
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRefiBusca: TFRefiBusca;

implementation

{$R *.dfm}

//////////////////////////////////////////////////////////////////////
// HPP_200903_COB (F1)
// forma modificada en HPP_200903_COB(F1) por Hugo Noriega
// el cambio se debe considerar como una forma nueva ya que
// el acceso se realiza desde el menú principal
// desde las opciones de:
//       Solicitud de Refinanciados (COBD12) FRefiBusca con parámetro 'S'
//       Aprobación de Refinanciados (COBD12) FRefiBusca  con parámetro 'A'
//////////////////////////////////////////////////////////////////////

USES COBDM1, COB001, COBD10, COBD11;

procedure TFRefiBusca.bbtnFiltraClick(Sender: TObject);
var
   xSQL : String;
begin
   If DM1.Valores( DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' and AREA=''COB''' ,'USERTABLE','NIVEL') )>=3 then
   begin
      xSQL:='Select Fecha, USUAPE, USUCIE from EVAL_REF_APE_CIE '
           +'WHERE FECHA='''+dtpFecha.Text+'''';
      if dblcUniDesc.TEXT<>'' then
         xSQL:=xSQL+' AND OFDESID LIKE '''+dblcUniDesc.TEXT+''' ';
   end
   else
   begin
      xSQL:='Select Fecha, USUAPE, USUCIE from EVAL_REF_APE_CIE '
           +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA='''+dtpFecha.Text+'''';
   end;

   if dblcUniDesc.TEXT<>'' then
   begin
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      DM1.cdsQry.Open;
      if DM1.cdsQry.RecordCount<1 then
      begin
         lblEstado.Font.Color:=clBlue;
         lblEstado.text      :='NO Aperturado';
      end
      else
      begin
         if DM1.cdsQry.fieldByname('USUCIE').AsString<>'' then
         begin
            lblEstado.Font.Color:=clRed;
            lblEstado.Text      :='Cerrado';
         end
         else
         begin
            lblEstado.Font.Color:=clGreen;
            lblEstado.Text      :='Aperturado';
         end;
      end;
   end
   else
      lblEstado.text      :='';

// Inicio: HPP_200925_COB por HNORIEGA
// Memorándum 672-2009-DM-COB   -   SAR-2009-0571   -   DAD-HN-2009-0136
// se cambia SQL, se añade DEUDATOT como nueva columna
   // Inicio: HPP_200919_COB - realizado por JCARBONEL
   // se cambia select *
   xSQL:='select a.IDEVAL, a.FECEVAL, a.IDRESEVAL, a.USUARIO, a.FREG, a.HREG, a.USUAUT, a.FECAUT, a.MENAUT, a.USUANU, '
        +  'a.FECANU, a.MENANU, a.OFDESID, a.ASOID, a.CREFOTORG, a.CREDID, a.TIPOPE, a.FORPAGOID, a.INIMES, a.CAPPAG, '
        +  'a.NUMCUO, a.MONCUO, a.NUESAL, a.MENOBS, a.IMPCAP, a.IMPINT, a.IMPREP, a.CREDNEW, a.USUCREANU, a.FECCREANU, '
        +  'a.MENCREANU, a.CREANU, a.FLG_BLOQ_REF, a.USU_BLOQ_REF, a.FREG_BLOQ_REF, '
        +  'B.ASOAPENOM, B.ASODNI, B.ASOTIPID, A.OFDESID||''-''||C.OFDESNOM OFIDES, DEUDATOT '
        +'from EVAL_REF_CAB A, APO201 B, APO110 C '
        +'where a.FECEVAL='''+dtpFecha.Text+''' ';
// Fin: HPP_200925_COB

   if dblcdUsureg.TEXT<>'' then
      xSQL:=xSQL+' AND a.USUARIO LIKE '''+dblcdUsureg.TEXT+''' ';

   if dblcUniDesc.TEXT<>'' then
      xSQL:=xSQL+' AND a.OFDESID LIKE '''+dblcUniDesc.TEXT+''' ';

   xSQL:=xSQL+' AND A.ASOID=B.ASOID(+) '
             +' AND A.OFDESID=C.OFDESID(+)';

   IF rgEstado.ItemIndex=0 then xSQL:=xSQL+' AND IDRESEVAL in (''0'',''1'',''2'')';
   IF rgEstado.ItemIndex=1 then xSQL:=xSQL+' AND IDRESEVAL=''0'' and USUCREANU is null';
   IF rgEstado.ItemIndex=2 then xSQL:=xSQL+' AND IDRESEVAL=''1'' and USUCREANU is null';
   IF rgEstado.ItemIndex=3 then xSQL:=xSQL+' AND IDRESEVAL=''2'' and USUCREANU is null';
   IF rgEstado.ItemIndex=4 then xSQL:=xSQL+' AND USUCREANU is not null';

   DM1.cdsSoliRefi.Close;
   DM1.cdsSoliRefi.DataRequest( xSQL );
   DM1.cdsSoliRefi.Open;

   dbgRefi.Selected.Clear;
   dbgRefi.Selected.Add('IDEVAL'#9'9'#9'Número'#9#9);
   dbgRefi.Selected.Add('IDRESEVAL'#9'2'#9'Sit.'#9#9);
   dbgRefi.Selected.Add('CREANU'#9'06'#9'Crédito~Anulado'#9'F'#9#9);
   dbgRefi.Selected.Add('OFIDES'#9'15'#9'Oficina~Solicitud'#9#9);
   dbgRefi.Selected.Add('USUARIO'#9'12'#9'Usuario~Solicitud'#9#9);
   dbgRefi.Selected.Add('ASOAPENOM'#9'28'#9'Asociado'#9#9);
   dbgRefi.Selected.Add('ASODNI'#9'9'#9'D.N.I.'#9#9);
   dbgRefi.Selected.Add('CREDID'#9'15'#9'Crédito por~Refinanciar'#9#9);
   dbgRefi.Selected.Add('NUESAL'#9'8'#9'Saldo Total~Refinanc.'#9#9);
   dbgRefi.Selected.Add('USUAUT'#9'11'#9'Usuario~Aprueba'#9'F'#9#9);
   dbgRefi.Selected.Add('USUANU'#9'11'#9'Usuario~DesAprueba'#9'F'#9#9);
   dbgRefi.Selected.Add('USUCREANU'#9'11'#9'Usuario~Anula'#9'F'#9#9);
   dbgRefi.Selected.Add('CREFOTORG'#9'10'#9'Fecha~Crédito'#9#9);
   dbgRefi.ApplySelected;

   TNumericField(DM1.cdsSoliRefi.FieldByName('NUESAL')).DisplayFormat := '###,##0.00';

end;

procedure TFRefiBusca.FormActivate(Sender: TObject);
var
   xSQL : String;
begin
  xSQL:='SELECT A.USERID, UPPER(A.USERNOM) USERNOM, OFDESID FROM USERTABLE A, TGE006 B '
       +'WHERE AREA = ''COB'' AND A.USERID=B.USERID(+)';
  DM1.cdsUser.Close;
  DM1.cdsUser.DataRequest(xSql);
  DM1.cdsUser.Open;

  dblcdusureg.LookupTable := DM1.cdsUser;
  dblcdusureg.LookupField := 'USERID';
  dblcdusureg.Selected.Clear;
  dblcdusureg.Selected.Add('USERID'#9'15'#9'Código'#9#9);
  dblcdusureg.Selected.Add('USERNOM'#9'30'#9'Descripción'#9#9);

  DM1.cdsOfdes.Close;
  DM1.cdsOfdes.DataRequest('SELECT OFDESID,OFDESNOM FROM APO110 ORDER BY OFDESID');
  DM1.cdsOfdes.Open;


  if cRefi='S' then
  begin
     Caption:='REFINANCIACION - SOLICITUD';
     rgUsu.ItemIndex :=1;
     rgUsu.Enabled   :=False;
     rgOfi.ItemIndex :=1;
     rgOfi.Enabled   :=False;
     dblcUniDesc.Text:=DM1.xOfiDes;
     dblcUniDescExit(Self);
     dblcdUsureg.Text:=DM1.wUsuario;
     dblcdUsuregExit(Self);
     pnlUsuario.Enabled  :=False;
     pnlOfides.Enabled   :=False;
     bbtnApertura.visible:=False;
     bbtnCierre.visible  :=False;
  end
  else
  begin
     If DM1.Valores( DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' and AREA=''COB''' ,'USERTABLE','NIVEL') )>=3 then
     begin
        bbtnApertura.Visible  :=true;
        bbtnCierre.Visible    :=true;
     end
     else
     begin
        rgUsu.ItemIndex :=0;
        rgUsu.Enabled   :=True;
        rgOfi.ItemIndex :=1;
        rgOfi.Enabled   :=False;
        dblcUniDesc.Text:=DM1.xOfiDes;
        dblcUniDescExit(Self);
        pnlUsuario.Enabled  :=True;
        pnlOfides.Enabled   :=False;
        bbtnApertura.visible:=True;
        bbtnCierre.visible  :=True;
     end;
     dbgRefiIButton.Visible:=False;
     Caption:='REFINANCIACION - APROBAR / ANULAR';
  end;

  bbtnApertura.Visible  :=False;
  bbtnCierre.Visible    :=False;

// Inicio:  HPP_201106_COB
// Inicio: HPP_200938_COB
// Este cambio es colocado de manera provisional hasta que desarrollo haga los cambios necesarios
//bbtnDesbloquea.Visible := ((DM1.wUsuario='LMANCO') or (DM1.wUsuario='RESPINOZA'));
  bbtnDesbloquea.Visible := False;
// Fin: HPP_200938_COB
// Final:  HPP_201106_COB

  dtpFecha.Date:=DM1.FechaSys;
  bbtnFiltraClick(Self);
end;

procedure TFRefiBusca.rgUsuClick(Sender: TObject);
begin
   if rgUsu.ItemIndex=0 then
   begin
      pnlUsuario.Enabled:=False;
      dblcdUsureg.Text  :='';
      meusureg.Text     :='';
   end
   else
      pnlUsuario.Enabled:=True;
end;

procedure TFRefiBusca.dbgRefiCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
   if Field.FieldName ='IDRESEVAL' then
   begin
      if DM1.cdsSoliRefi.FieldByname('IDRESEVAL').AsString='0' then ABrush.Color:=clAqua;
      if DM1.cdsSoliRefi.FieldByname('IDRESEVAL').AsString='1' then ABrush.Color:=clGreen;
      if DM1.cdsSoliRefi.FieldByname('IDRESEVAL').AsString='2' then ABrush.Color:=clRed;
   end;
   if Field.FieldName ='CREANU' then
   begin
      if DM1.cdsSoliRefi.FieldByname('CREANU').AsString='S'    then ABrush.Color:=clBlue;
   end;
end;

procedure TFRefiBusca.dbgRefiDblClick(Sender: TObject);
var xAsoId,xCreDid,xPreCre,XSQL:String;
    Boton:Integer;
begin

   If DM1.cdsSoliRefi.RecordCount <= 0 Then Exit;

   if DM1.cdsSoliRefi.FieldByName('IDRESEVAL').AsString='2' then
   begin
      ShowMessage('Solicitud para Refinanciar crédito desaprobada...');
      Exit;
   end;

   if DM1.cdsSoliRefi.FieldByName('CREANU').AsString='S' then
   begin
      ShowMessage('El Crédito Refinanciado fue Anulado...');
      Exit;
   end;

   Timer1.Enabled:=False;

   xSQL:='SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES, '
        +  'a.TIPCREID, a.ASOID, a.ASOCODMOD, a.ASOCODPAGO, a.ASOAPENOM, a.USEID, a.CREFOTORG, a.CREFECINI, a.CREMTOSOL, a.CREMTOOTOR, '
        +  'a.CREMTOGIR, a.CREINTERES, a.CREDFLAT, a.CRECUOTA, a.CRENUMCUO, a.CRELUGGIRO, a.BANCOID, a.CRENUMCTA, a.CREMTOPAG, a.CRESDOACT, '
        +  'a.CREPERGRA, a.CRECUOPAG, a.CRECUOENV, a.CREPERIODI, a.CREMTOTAL, a.CRECAPPGO, a.CRENEWID, a.CRESALDOT, a.USUARIO, a.FREG, a.HREG, '
        +  'a.OFDESID, a.CALIFICAID, a.APRUEBAID, a.CREESTADO, a.TMONID, a.CUOTAINI, a.UPAGOID, a.UPROID, a.DPTOID, a.LISTAID, a.CREDID, a.CRECOM, '
        +  'a.CRESEG, a.CREPOR, a.CREGADM, a.CRECOMP, a.CREMORA, a.FORPAGOID, a.CRETCALID, a.TMONABR, a.CRETCALABR, a.LISTAABR, a.FORPAGOABR, '
        +  'a.CIAID, a.CREFRECL, a.CREESTID, a.CREANOMES, a.NROPAGARE, a.NROAUTDES, a.TIPCREDES, a.GARAPENOM, a.GARASOID, a.ASOCODAUX, a.NRONABO, '
        +  'a.NUMREF, a.FECREF, a.TIPOREF, a.NROFICIO, a.CIUDID, a.ARCHIVOFTP, a.AGENBANCOID, a.DPTOGIRO, a.USEIDGAR, a.TIPDESEID, a.BCOGIRO, '
        +  'a.CREMTONABO, a.CREFFINPAG, a.CREFINIPAG, a.CREBLOQFEC, a.USUBLOQ, a.CREBLOQ, a.FLGCAJA, a.FECHACAJA, a.CRENUMCOMP, a.CCOSID, '
        +  'a.CUENTAH, a.CUENTAD, a.CREGENCOB, a.FLGAUTOMA, a.REFANOMES, a.NROREFINAN, a.CAJAUSU, a.HORACAJA, a.ASOTIPID, a.ASODNI, a.ANULACAJA, '
        +  'a.MEN_ANU, a.MOT_PRE, a.NUMREFI, a.FLGREFI, a.CREFCAN, a.FLGINCONSIS, a.PERCONTA, a.C_ABN, a.CNTANOMM, a.FEC_RCP, a.CRECAPLIQ, a.CREFDES, '
        +  'a.CREMENOBS, a.TIPOCONT, a.CNTFLAG, a.CREMTODEP, a.CREFANUL, a.USERANUL, a.CRESUMCUO, a.CREMOTEXT, a.NROFICIO_BCK, a.MIGRADO, '
        +  'a.USUAUTCRE, a.FECAUTCRE, a.ESTAUTCRE, a.COMAUTCRE, a.USUANUSUP, a.FECANUSUP, a.MOTANUSUP, a.ESTANUSUP, a.DOCID, a.CCSERIE, a.CCNODOC, '
        +  'a.CIASER, a.CREMONINS, a.IMPCON, a.DNIRUC, a.FECIMPCON, a.CODARCHIVO, a.CREMTOAPO, a.AUTDESCRE, a.FECAUTDES, a.USUAUTDES, a.IMPCARAUT, '
        +  'a.NROCARAUT, a.DIASPROC, a.DESCENV, a.AUTDESGES, a.USUDESGES, a.FECHORDESGES '
        +'FROM CRE301 a, CRE110 b '
        +'Where a.TIPCREID=b.TIPCREID '
        + ' and a.ASOID=' +QuotedStr(DM1.cdsSoliRefi.FieldByname('ASOID').AsString )
        + ' and a.credid='+QuotedStr(DM1.cdsSoliRefi.FieldByname('CREDID').AsString )
        +' Order By a.CREFOTORG';
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest(xSQL);
   DM1.cdsSolicitud.Open;

   // Inicio: HPP_200919_COB se cambia select *
   xSQL:='Select ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, '
        +   'ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, '
        +   'ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, '
        +   'ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, '
        +   'GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, '
        +   'ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, '
        +   'ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, '
        +   'FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, '
        +   'ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, '
        +   'ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, '
        +   'CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, '
        +   'OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO, GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, '
        +   'NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, '
        +   'ANOENV, ENVIO, CODOTRDOCIDE, NUMOTRDOCIDE, CODMOTDESTAPO, AUTDESCUO, FECAUTDESCUO, USUREGAUTDESCUO, '
        +   'OFIREGAUTDESCUO, CODMODAUTDESCUO, MDFASODIR, MDFZIPID, MDFCNTREG, MDFUSRMOD, MDFFECMOD, EMICARTA, DESMANVIV, '
        +   'CODMOTDESTCUO, FECACTPAD, CENEDUID '
        +'From APO201 Where ASOID='+QuotedStr(DM1.cdsSoliRefi.FieldByname('ASOID').AsString);
   DM1.cdsAso.Close;

   DM1.cdsAso.DataRequest( xSQL );
   DM1.cdsAso.Open;

   if ( (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='12') and
        (DM1.cdsSoliRefi.FieldByName('IDRESEVAL').AsString='1') )
    or( (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='02') and
        (DM1.cdsSoliRefi.FieldByName('IDRESEVAL').AsString='1') ) then
   begin
      // Verifica Nivel de Usuario de la Tabla Usertable
      if DM1.Valores(DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND AREA=''COB''','USERTABLE','NIVEL'))>=3 then
      begin
         if DM1.cdsSolicitud.FieldByName('IMPCARAUT').AsString='1' Then
         begin
            Boton := Application.MessageBox ('SEGURO DE AUTORIZAR LA REIMPRESION DE DOCUMENTOS','Sistema De Créditos',MB_YESNO+MB_ICONQUESTION);
            if Boton = ID_YES Then
            begin
               xSQL:='UPDATE CRE301 SET IMPCARAUT=''0'' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID IN (''01'',''02'') AND IMPCARAUT=''1'' ';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            end;
         end;
      end;
      fRepCronog1 := TfRepCronog1.create(self);
      fRepCronog1.lblAsociado.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString+' - ('+DM1.cdsAso.FieldByName('ASOTIPID').AsString+')';
      fRepCronog1.lblCreditos.Caption := Copy(xCreDid,11,5)+'-'+Copy(xCreDid,3,4)+'-'+DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(xCreDid,7,2)),'CRE110','TIPCREDES');
      fRepCronog1.gbCab.Visible :=False;
      fRepCronog1.gbDet.Visible :=False;
      fRepCronog1.BitGrabar.Visible :=False;
      fRepCronog1.z2bbtnImprime.Enabled:=True;
      fRepCronog1.gbBoton.Top :=10;
      fRepCronog1.Height :=100;

      fRepCronog1.xCreditoIdRef:=DM1.cdsSolicitud.FieldByName('CRENEWID').AsString;
      IF DM1.cdsSolicitud.FieldByName('CRENEWID').AsString<>'' then
         fRepCronog1.Showmodal
      else
         ShowMessage('Refinanciado no tiene registrado el número del nuevo Crédito.');
      fRepCronog1.Free;

      // Inicio: HPP_200919_COB, se añade Timer realizado por JCARBONEL
      Timer1.Enabled:=True;
      // Fin: HPP_200919_COB
      Exit;
   end;

   If dbgRefi.DataSource.DataSet.RecordCount = 0 Then Exit;

   xPreCre:=Copy(DateToStr(DM1.cdsSoliRefi.FieldByName('CREFOTORG').AsDateTime),7,4)+Copy(DateToStr(DM1.cdsSoliRefi.FieldByName('CREFOTORG').AsDateTime),4,2);

   If xPreCre>=Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2) Then
   Begin
      MessageDlg(' No aplicable a operaciones en el mismo mes...!! ', mtError,[mbOk],0);
      // Inicio: HPP_200919_COB, se añade Timer realizado por JCARBONEL
      Timer1.Enabled:=True;
      // Fin: HPP_200919_COB
      Exit;
   End;

   If DM1.cdsSolicitud.fieldbyname('CREESTID').AsString<>'02' Then
   Begin
     MessageDlg('El Préstamo no esta pendiente de pago.!! ', mtError, [mbOk], 0);
     // Inicio: HPP_200919_COB, se añade Timer realizado por JCARBONEL
      Timer1.Enabled:=True;
     // Fin: HPP_200919_COB
     Exit;
   End;

   DM1.cdsFormaPago.Close;
   If DM1.cdsSoliRefi.fieldbyname('ASOTIPID').AsString='DO' Then
      DM1.cdsFormaPago.DataRequest('SELECT ID,DESCRIPCION FROM COB805 WHERE ID IN (''01'',''02'') ORDER BY ID')
   Else
      If DM1.cdsSoliRefi.fieldbyname('ASOTIPID').AsString='CE' Then
         DM1.cdsFormaPago.DataRequest('SELECT ID,DESCRIPCION FROM COB805 WHERE ID IN (''01'',''02'',''03'') ORDER BY ID');

   DM1.cdsFormaPago.Open;
   DM1.cdsTtransaccion.Close;
   // Inicio: HPP_200919_COB - se cambia select * - realizado por HNORIEGA
   // DM1.cdsTtransaccion.DataRequest('SELECT * FROM COB101 WHERE FLGDCT=''S'' ');
   DM1.cdsTtransaccion.DataRequest('select FORPAGOID, FORPAGOABR, USUARIO, DREG, HREG, FORPAGFAPO, FPAGFDEV, '
                                  +'       FORPAGODES, FLGDCT, FLGTEL, FLGDEV, TIPO, FLGCANC, FOROPEBCON, '
                                  +'       FLGPAGAUTDISK, FPLANILLA, ACTIVO, FORPAGACT, PERANUCUO '
                                  +'from COB101 '
                                  +'where FLGDCT=''S'' ');
   DM1.cdsTtransaccion.Open;
   xAsoId  := DM1.cdsSoliRefi.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSoliRefi.fieldbyname('CREDID').AsString;
   // Fin: HPP_200919_COB

   // Inicio HPP_201106_COB
   //Se adiciona en el SELECT el campo IP_BLOQ_REF
   // Inicio: HPP_200919_COB - se cambia select * y where  - realizado por HNORIEGA
   //    xSQL:='select A.*, ROWID from EVAL_REF_CAB A '
   xSQL:=' select A.IDEVAL, A.FECEVAL, A.IDRESEVAL, A.USUARIO, A.FREG, A.HREG, A.USUAUT, A.FECAUT, A.MENAUT, '
        +'       A.USUANU, A.FECANU, A.MENANU, A.OFDESID, A.ASOID, A.CREFOTORG, A.CREDID, A.TIPOPE, A.FORPAGOID, '
        +'       A.INIMES, A.CAPPAG, A.NUMCUO, A.MONCUO, A.NUESAL, A.MENOBS, A.IMPCAP, A.IMPINT, A.IMPREP, A.CREDNEW, '
        +'       A.USUCREANU, A.FECCREANU, A.MENCREANU, A.CREANU, A.FLG_BLOQ_REF, A.USU_BLOQ_REF, A.FREG_BLOQ_REF,A.IP_BLOQ_REF '
        +' from EVAL_REF_CAB A '
        +' WHERE ASOID     = ''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString  + ''' '
        +'   AND IDEVAL    = ''' + DM1.cdsSoliRefi.FieldByName('IDEVAL').AsString  + ''' '
        +'   AND IDRESEVAL=''0''';
  // Final  HPP_201106_COB
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   // Fin: HPP_200919_COB

   if cRefi='A' then
   begin
      if DM1.cdsQry.RecordCount<1 then
      begin
         ShowMessage('No existen solicitud para refinanciar Crédito...');
         // Inicio: HPP_200919_COB, se añade Timer realizado por JCARBONEL
         Timer1.Enabled:=True;
         // Fin: HPP_200919_COB
         Exit;
      end;
   end;

   // Inicio: HPP_200919_COB, inicio de Control de bloqueo
   if DM1.cdsQry.fieldbyname('FLG_BLOQ_REF').AsString='S' then
   begin
  // Inicio HPP_201106_COB
  // Se adiciona al If el dato de la IP de la maquina, para que si un usuario le da su contraseña a otro usuario siga bloqueado
  // y no corra el riego que dos aprueben el mismo refinanciado
    if (DM1.cdsQry.fieldbyname('USU_BLOQ_REF').AsString<>DM1.wUsuario)  OR
       ((DM1.cdsQry.fieldbyname('USU_BLOQ_REF').AsString=DM1.wUsuario) and (TRIM(DM1.cdsQry.fieldbyname('IP_BLOQ_REF').AsString)<>DM1.Xcodip)) Then
      begin
         MessageDlg('Registro Bloqueado por '+DM1.cdsQry.fieldbyname('USU_BLOQ_REF').AsString+' IP-'+TRIM(DM1.cdsQry.fieldbyname('IP_BLOQ_REF').AsString)+' desde '+DM1.cdsQry.fieldbyname('FREG_BLOQ_REF').AsString+'!! ', mtError, [mbOk], 0);
         Timer1.Enabled:=True;
         Exit;
      end;
  // Final HPP_201106_COB
   end
   else
   begin
     // Inicio  HPP_201106_COB
     // Se adiciona guardar el IP de la maquina, para que si un usuario le da su contraseña a otro usuario siga bloqueado
     // y no corra el riego que dos aprueben el mismo refinanciado
      xSQL := 'UPDATE EVAL_REF_CAB SET FLG_BLOQ_REF=''S'', IP_BLOQ_REF='''+DM1.Xcodip+''', USU_BLOQ_REF='''+dm1.wUsuario+''', FREG_BLOQ_REF=SYSDATE '
            + 'WHERE ASOID   =''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString  + ''' '
            + '  AND IDEVAL  =''' + DM1.cdsSoliRefi.FieldByName('IDEVAL').AsString + ''' '
            + '  AND FECEVAL =''' + DateToStr(DM1.FechaSys)                         + ''' '
            + '  AND NVL(FLG_BLOQ_REF,''N'')<>''S''';
    // Final HPP_201106_COB
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      try
        dm1.cdsQry.Execute;
      except
      end;

      // Inicio  HPP_201106_COB
      //Se adiciona en el SELECT el campo IP_BLOQ_REF
      xSQL:='select ASOID, IDEVAL, FLG_BLOQ_REF, USU_BLOQ_REF, FREG_BLOQ_REF,IP_BLOQ_REF from EVAL_REF_CAB A '
               + 'WHERE ASOID     = ''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString  + ''' '
               + '  AND IDEVAL    = ''' + DM1.cdsSoliRefi.FieldByName('IDEVAL').AsString + ''' ';
      // Final HPP_201106_COB
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      DM1.cdsQry.Open;

      if DM1.cdsQry.fieldbyname('FLG_BLOQ_REF').AsString='S' then
      begin
          // Inicio  HPP_201106_COB
          // Se adiciona al If el dato de la IP de la maquina, para que si un usuario le da su contraseña a otro usuario siga bloqueado
          // y no corra el riego que dos aprueben el mismo refinanciado
       if (DM1.cdsQry.fieldbyname('USU_BLOQ_REF').AsString<>DM1.wUsuario)  OR
          ((DM1.cdsQry.fieldbyname('USU_BLOQ_REF').AsString=DM1.wUsuario) and (TRIM(DM1.cdsQry.fieldbyname('IP_BLOQ_REF').AsString)<>DM1.Xcodip)) Then
          begin
              MessageDlg('Registro Bloqueado por '+DM1.cdsQry.fieldbyname('USU_BLOQ_REF').AsString+' desde '+DM1.cdsQry.fieldbyname('FREG_BLOQ_REF').AsString+'!! ', mtError, [mbOk], 0);
              Timer1.Enabled:=True;
              Exit;
          end;
          // Final  HPP_201106_COB
      end
   end;
   // Fin: HPP_200919_COB, fin de control de bloqueo

   
   xSQL:='SELECT MAX(A.CRESDOACT)-(sum(NVL(B.cremto,0)-NVL(B.cremtocob,0))) DIFE '
        +'  FROM CRE301 A, CRE302 B '
        +' WHERE A.ASOID='+QuotedStr(xAsoId)+' AND A.CREDID='+QuotedStr(xCreDid)
        + '  AND A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) '
        //Inicio: HPP_200908_COB - HNORIEGA
        + '  AND B.CREESTID IN (''02'',''11'',''27'',''14'',''19'') '
        //Fin: HPP_200908_COB - 05/05/2009
        +' GROUP BY A.ASOID, A.CREDID';
   DM1.cdsQry.Close;
   DM1.cdsQry.Datarequest(xSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.FieldByname('DIFE').AsFloat<>0 then
   begin
      ShowMessage('Existen inconsistencias en el Cronograma de Pago, favor de revisar');
      // Inicio: HPP_200919_COB, se añade Timer
      Timer1.Enabled:=True;
      // Fin: HPP_200919_COB
      Exit;
   end;

   fRepCronog1:=TfRepCronog1.create(self);
   fRepCronog1.lblAsociado.Caption := DM1.cdsSoliRefi.FieldByName('ASOAPENOM').AsString+' - ('+DM1.cdsSoliRefi.FieldByName('ASOTIPID').AsString+')';
   fRepCronog1.lblCreditos.Caption := Copy(xCreDid,11,5)+'-'+Copy(xCreDid,3,4)+'-'+DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(xCreDid,7,2)),'CRE110','TIPCREDES');
   fRepCronog1.Showmodal;
   fRepCronog1.Free;

   // Inicio  HPP_201106_COB
   // Se adiciona en el SELECT el campo IP_BLOQ_REF
   // Inicio: HPP_200919_COB, control de bloqueo
   xSQL:='select ASOID, IDEVAL, FLG_BLOQ_REF, USU_BLOQ_REF, FREG_BLOQ_REF,IP_BLOQ_REF from EVAL_REF_CAB A '
            + 'WHERE ASOID     = ''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString  + ''' '
            + '  AND IDEVAL    = ''' + DM1.cdsSoliRefi.FieldByName('IDEVAL').AsString + ''' ';
   // Final  HPP_201106_COB
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;

   if DM1.cdsQry.fieldbyname('FLG_BLOQ_REF').AsString='S' then
   begin
      // Inicio  HPP_201106_COB
      // Se adiciona al If el dato de la IP de la maquina, para el control del bloqueo
      if ((DM1.cdsQry.fieldbyname('USU_BLOQ_REF').AsString=DM1.wUsuario) and (TRIM(DM1.cdsQry.fieldbyname('IP_BLOQ_REF').AsString)=DM1.Xcodip)) Then
      begin
         xSQL := 'UPDATE EVAL_REF_CAB SET FLG_BLOQ_REF=''N'', USU_BLOQ_REF=NULL, FREG_BLOQ_REF=NULL,IP_BLOQ_REF=NULL '
               + 'WHERE ASOID     = ''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString  + ''' '
               + '  AND IDEVAL    = ''' + DM1.cdsSoliRefi.FieldByName('IDEVAL').AsString + ''' '
               + '  AND NVL(FLG_BLOQ_REF,''N'')=''S''';
      // Final HPP_201106_COB
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         try
           dm1.cdsQry.Execute;
         except
         end;
      end;
   end;
   // Fin: HPP_200919_COB, fin de control de Bloqueo


   ///////////////////////////////////////////////////////////////////
   //                   Fin: HPP_200919_COB F1                      //
   ///////////////////////////////////////////////////////////////////

   DM1.cdsFormaPago.Close;
   DM1.cdsTtransaccion.Close;

  //Inicio: HPP_200908_COB realizado por: HNORIEGA
  bbtnFiltraClick(Self);
  Timer1.Enabled:=True;
  //Fin: HPP_200908_COB Fecha: 27/04/2009
end;


procedure TFRefiBusca.Timer1Timer(Sender: TObject);
begin
   bbtnFiltraClick(Self);
end;

procedure TFRefiBusca.dbgRefiIButtonClick(Sender: TObject);
var
  xSQL : String;
begin
   xSQL:='Select Fecha, USUAPE, USUCIE from EVAL_REF_APE_CIE '
        +'WHERE OFDESID='''+DM1.xOfiDes+''' AND FECHA='''+dtpFecha.Text+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount<1 then
   begin
      ShowMessage('DIA NO APERTURADO');
      Exit;
   end
   else
   begin
      if DM1.cdsQry.fieldByname('USUCIE').AsString<>'' then
      begin
         ShowMessage('Dia ya fue Cerrado');
         Exit;
      end;
   end;

   if dtpFecha.Text<>Datetostr(DM1.FechaSys) then
   begin
      ShowMessage('Error : Solo se pueden crear Solicitudes de Refinanciación con Fecha '+Datetostr(DM1.FechaSys) );
      Exit;
   end;

   cRefi:='S';
   fRefiSeleAso:= tfRefiSeleAso.create(self);
   fRefiSeleAso.PageControl1.TabIndex := 0 ;
   fRefiSeleAso.Showmodal;
   fRefiSeleAso.free;
end;

procedure TFRefiBusca.bbtnAperturaClick(Sender: TObject);
var
   xSQL, xMensaje : String;
   Boton : Integer;
begin

   if dblcUniDesc.TEXT='' then
   begin
      ShowMessage('Error : Debe seleccionar Oficina...');
      Exit;
   end;


   xSQL:='Select Fecha, OFDESID, USUAPE, USUCIE from EVAL_REF_APE_CIE '
        +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA<'''+dtpFecha.Text+''' and USUCIE IS NULL';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
   begin
      ShowMessage('Faltan Cerrar Periodo Anterior');
      Exit;
   end;

   xSQL:='Select Fecha, OFDESID, USUAPE, USUCIE from EVAL_REF_APE_CIE '
        +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA='''+dtpFecha.Text+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if DM1.cdsQry.fieldByname('USUCIE').AsString<>'' then
   begin
      ShowMessage('Día ya fue Cerrado');
      Exit;
   end;

   if DM1.cdsQry.fieldByname('USUAPE').AsString<>'' then
   begin
      ShowMessage('Dia ya fue Aperturado');
      Exit;
   end;

   xMensaje:=' ¿ Está Seguro de Aperturar el Día '+Trim(dtpFecha.Text)+' ? ';
   Boton := Application.MessageBox (pChar(xMensaje) ,'Refinanciación',MB_YESNO+MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
     xSQL:='INSERT INTO EVAL_REF_APE_CIE( FECHA, OFDESID, USUAPE, FECAPE ) '
          + 'Values( '''+dtpFecha.Text+''', '''+dblcUniDesc.TEXT+''', '''+dm1.wUsuario+''', SYSDATE )';
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest( xSQL );
     DM1.cdsQry.Execute;
     bbtnFiltraClick(Self);
     ShowMessage('Dia Aperturado');
   end;
end;


procedure TFRefiBusca.bbtnCierreClick(Sender: TObject);
var
   xSQL, xMensaje : String;
   Boton : Integer;
begin
   if dblcUniDesc.TEXT='' then
   begin
      ShowMessage('Error : Debe seleccionar Oficina...');
      Exit;
   end;

   xSQL:='Select Fecha, USUAPE, USUCIE  from EVAL_REF_APE_CIE '
        +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA='''+dtpFecha.Text+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount<1 then
   begin
      ShowMessage('Dia NO fue Aperturado');
      Exit;
   end;

   if DM1.cdsQry.fieldByname('USUCIE').AsString<>'' then
   begin
      ShowMessage('Día ya fue Cerrado');
      Exit;
   end;

   xMensaje:=' ¿ Está Seguro de Cerrar el Día '+Trim(dtpFecha.Text)+' ? ';
   Boton := Application.MessageBox (pChar(xMensaje) ,'Refinanciación',MB_YESNO+MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
      xSQL:='update EVAL_REF_CAB set USUANU='''+dm1.wUsuario+''', '
           +  'FECANU='''+DateToStr(DM1.FechaSys)+''', '
           +  'MENANU=''Por Cierre Operativo'', IDRESEVAL=''2'' '
           +'where OFDESID='''+dblcUniDesc.TEXT+''' AND FECEVAL='''+dtpFecha.Text+''' AND IDRESEVAL=''0''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      dm1.cdsQry.Execute;

      xSQL:='Update EVAL_REF_APE_CIE set USUCIE='''+dm1.wUsuario+''', FECCIE=SYSDATE '
           +'WHERE OFDESID='''+dblcUniDesc.TEXT+''' AND FECHA='''+dtpFecha.Text+'''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL );
      DM1.cdsQry.Execute;
      bbtnFiltraClick(Self);
      ShowMessage('Dia Cerrado');
   end;
end;


procedure TFRefiBusca.dtpFechaExit(Sender: TObject);
begin
  bbtnFiltraClick(Self);
end;

procedure TFRefiBusca.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFRefiBusca.bbtnReporteClick(Sender: TObject);
var
   xSQL : String;
begin
   If DM1.cdsSoliRefi.RecordCount <= 0 Then
   begin
      ShowMessage('No existe información para el Filtro seleccionado.');
      Exit;
   end;

   // Inicio: HPP_200919_COB se cambia select * - realizado por JCARBONEL
   //   xSQL:='select A.*, B.ASOAPENOM, B.ASOTIPID, A.OFDESID||''-''||C.OFDESNOM OFIDES, '
   xSQL:='select a.IDEVAL, a.FECEVAL, a.IDRESEVAL, a.USUARIO, a.FREG, a.HREG, a.USUAUT, a.FECAUT, a.MENAUT, a.USUANU, '
        +  'a.FECANU, a.MENANU, a.OFDESID, a.ASOID, a.CREFOTORG, a.CREDID, a.TIPOPE, a.FORPAGOID, a.INIMES, a.CAPPAG, '
        +  'a.NUMCUO, a.MONCUO, a.NUESAL, a.MENOBS, a.IMPCAP, a.IMPINT, a.IMPREP, a.CREDNEW, a.USUCREANU, a.FECCREANU, '
        +  'a.MENCREANU, a.CREANU, a.FLG_BLOQ_REF, a.USU_BLOQ_REF, a.FREG_BLOQ_REF, '
        +  'B.ASOAPENOM, B.ASOTIPID, A.OFDESID||''-''||C.OFDESNOM OFIDES, '
        +  'CASE WHEN A.USUCREANU is not null then ''ANULADO'' '
        +'       ELSE CASE '
        +       'WHEN A.IDRESEVAL=''0'' THEN ''SOLICITUD'' '
        +       'WHEN A.IDRESEVAL=''1'' THEN ''APROBADO'' '
        +       'WHEN A.IDRESEVAL=''2'' THEN ''DESAPROBADO'' END END ESTADO, '
        +  'CASE WHEN A.IDRESEVAL=''1'' and USUCREANU is null THEN 1 ELSE 0 END REGAPROB, '
        +  'CASE WHEN A.IDRESEVAL=''2'' and USUCREANU is null THEN 1 ELSE 0 END REGDESAP, '
        // HPP_200907_COB - SAR 2009-0248
        +  'CASE WHEN A.IDRESEVAL=''1'' and USUCREANU is null THEN IMPCAP ELSE 0 END IMPAPROB, '
        +  'CASE WHEN A.IDRESEVAL=''1'' and USUCREANU is null THEN IMPREP ELSE 0 END IMPCANCELADO, '
        // Inicio: HPP_200925_COB por HNORIEGA
        +  'CASE WHEN A.IDRESEVAL=''1'' and USUCREANU is null THEN a.NUESAL ELSE 0 END IMPNUESAL, '
        // Fin: HPP_200925_COB
        +  'CASE WHEN A.IDRESEVAL=''2'' and USUCREANU is null THEN IMPREP ELSE 0 END IMODESAP, '
        +  'case WHEN USUCREANU is not null THEN 1 else 0 end REGANUL '
        +'  FROM EVAL_REF_CAB A, APO201 B, APO110 C '
        +' WHERE a.FECEVAL='''+dtpFecha.Text+''' ';
   // HPP_200907_COB - SAR 2009-0248
   // Fin: HPP_200919_COB se cambia select *

   if dblcdUsureg.TEXT<>'' then
      xSQL:=xSQL+' AND a.USUARIO='''+dblcdUsureg.TEXT+''' ';

   if dblcUniDesc.TEXT<>'' then
      xSQL:=xSQL+' AND a.OFDESID LIKE '''+dblcUniDesc.TEXT+''' ';

   xSQL:=xSQL
        + ' AND A.ASOID=B.ASOID(+)'
        + ' AND A.OFDESID=C.OFDESID(+) ';
   IF rgEstado.ItemIndex=0 then xSQL:=xSQL+' AND IDRESEVAL in (''0'',''1'',''2'') ';
   IF rgEstado.ItemIndex=1 then xSQL:=xSQL+' AND IDRESEVAL=''0'' and USUCREANU is null ';
   IF rgEstado.ItemIndex=2 then xSQL:=xSQL+' AND IDRESEVAL=''1'' and USUCREANU is null ';
   IF rgEstado.ItemIndex=3 then xSQL:=xSQL+' AND IDRESEVAL=''2'' and USUCREANU is null ';
   IF rgEstado.ItemIndex=4 then xSQL:=xSQL+' AND USUCREANU is not null ';

   xSQL:=xSQL
        +'ORDER BY a.OFDESID, A.IDEVAL';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest( xSQL );
   DM1.cdsReporte.Open;
   ppr1.Print;
end;


procedure TFRefiBusca.rgOfiClick(Sender: TObject);
var
   xSQL : String;
begin
   if rgOfi.ItemIndex=0 then
   begin
      pnlOfides.Enabled:=False;
      dblcUniDesc.Text  :='';
      edtunidesc.Text     :='';
      xSQL := 'SELECT a.USERID, UPPER(a.USERNOM) USERNOM '
            + 'FROM USERTABLE a '
            + 'WHERE AREA = ''COB'' ';
      DM1.cdsUser.Close;
      DM1.cdsUser.DataRequest(xSql);
      DM1.cdsUser.Open;
   end
   else
      pnlOfides.Enabled:=True;
end;


procedure TFRefiBusca.dblcUniDescExit(Sender: TObject);
var
   xSQL : String;
begin
   if length(dblcunidesc.Text)>0 then
   begin
      DM1.cdsOfDes.setkey;
      DM1.cdsOfDes.fieldbyname('OFDESID').AsString:=dblcunidesc.Text;
      if not DM1.cdsOfDes.gotokey then
      begin
         showmessage('Unidad Desconcentrada no es válida');
         edtunidesc.text:='';
         dblcunidesc.setfocus;
         exit;
      end;
      edtunidesc.text:=DM1.cdsOfDes.fieldbyname('OFDESNOM').AsString;
      xSQL := 'SELECT a.USERID, UPPER(a.USERNOM) USERNOM '
            + 'FROM USERTABLE a, TGE006 b '
            + 'WHERE AREA = ''COB'' '
            +  ' and a.USERID=b.USERID(+) '
            +  ' and B.OFDESID='''+dblcUniDesc.Text+'''';
      DM1.cdsUser.Close;
      DM1.cdsUser.DataRequest(xSql);
      DM1.cdsUser.Open;

      bbtnFiltraClick(Self);
   end;
end;

procedure TFRefiBusca.dblcdUsuregExit(Sender: TObject);
begin
  If Trim(dblcdusureg.Text) = '' Then
  Begin
    dblcdusureg.Text := '';
    meusureg.Text := '';
  End;

  If DM1.cdsUser.Locate('USERID', dblcdusureg.Text, []) Then
     meusureg.Text := DM1.cdsUser.FieldByName('USERNOM').AsString
  else
  begin
     ShowMessage('Usuario No esta relacionado a Oficina Desconcentrada');
     dblcdusureg.Text := '';
     meusureg.Text := '';
  end;
end;

procedure TFRefiBusca.BitSalirClick(Sender: TObject);
begin
    close;
end;

procedure TFRefiBusca.rgEstadoClick(Sender: TObject);
begin
   bbtnFiltra.Click;
end;


// Inicio: HPP_200925_COB
// Memorándum 672-2009-DM-COB - SAR-2009-0571 - DAD-HN-2009-0136
// se añade botón para exportar a Excel
procedure TFRefiBusca.btnAExcelClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='REF'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   xArchivo:=xArchivo;

   if FileExists(xArchivo+'.slk') then
      DeleteFile(xArchivo+'.slk');
   DM1.ExportaGridExcel(dbgRefi,xArchivo);
//   DM1.HojaExcel('Refinanciados', self.dtgData.DataSource, self.dtgData);
// Fin: HPP_200925_COB
end;


// Inicio: HPP_200938_COB
procedure TFRefiBusca.bbtnDesbloqueaClick(Sender: TObject);
var
   xSQL : String;
begin
   if DM1.cdsSoliRefi.FieldByname('FLG_BLOQ_REF').AsString<>'S' then
   begin
      ShowMessage('La Solocitud No está Bloqueda.');
      exit;
   end
   else
   begin
      xSQL := 'UPDATE EVAL_REF_CAB '
             +'SET FLG_BLOQ_REF=NULL,FREG_BLOQ_REF=NULL,USU_BLOQ_REF=NULL '
             +'WHERE ASOID='+quotedstr(DM1.cdsSoliRefi.FieldByname('ASOID').AsString)
             +' AND FECEVAL='+quotedstr(DatetoStr(DM1.cdsSoliRefi.FieldByname('FECEVAL').AsDateTime))
             +' AND IDEVAL='+quotedstr(DM1.cdsSoliRefi.FieldByname('IDEVAL').AsString);
      try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      except
         ShowMessage('No se pudo desbloquear.');
         exit;
      end;
      ShowMessage('El desbloqueo se realizó con exito.');
      bbtnFiltra.Click;
   end;
end;
// Fin: HPP_200938_COB


procedure TFRefiBusca.FormCreate(Sender: TObject);
begin
   //Inicio: HPP_201007_COB por JCARBONEL
   ppD1.IniStorageName := '.\rbuilder.ini';
   //Fin: HPP_201007_COB por JCARBONEL
end;

end.
