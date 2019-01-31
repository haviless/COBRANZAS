Unit COBF001;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COBF001
// Formulario           : fCanstigaFSC
// Fecha de Creación    : 16/09/2013
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Castigo del FSC
// Actualizaciones      :
// HPP_201008_COB       : RMEDINA
// HPC_201222_COB       : 20/06/2012  Cobranza de Fondo de Desgravamen
// DPP_201217_COB       : El pase a producción se realiza a partir del HPC_201222.
// HPC_201310_COB       : 16/09/2013  Se agrega forma de Pago 44 = FSC por Invalidez
// SPP_201312_COB       : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201402_COB       : Condiderar en el cálculo y aplicación del FSC las cuotas bloquedas.
// SPP_201402_COB       : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201502_COB       : Permitir aplicar por incobrabilidad al asociado que tenga créditos paralelos y que al menos
//                      : un crédito tenga el exceso de dias de atraso segun DO O CE
// HPC_201508_COB       : Se adiciona Opción para reimpresión
Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, fcButton,
   fcImgBtn, fcShapeBtn, Buttons, wwdblook, ppParameter, ppVar, ppBands,
   ppCtrls, ppReport, ppSubRpt, ppStrtch, ppMemo, ppPrnabl, ppClass,
   ppCache, ppComm, ppRelatv, ppProd, DB, DBClient, ppDB, ppDBPipe, ppEndUsr,
   ppModule, daDataModule, ComCtrls;

Type
   TfCanstigaFSC = Class(TForm)
      grbAsociados: TGroupBox;
      EdtCodMod: TEdit;
      BitBuscar: TBitBtn;
      Panel3: TPanel;
      edtNomGen: TEdit;
      pnlSeleccion: TPanel;
      Shape1: TShape;
      Label7: TLabel;
      GbAsociados: TGroupBox;
      BitMostrar: TBitBtn;
      gbBuscar: TGroupBox;
      edtBuscar: TEdit;
      dtgAsociado: TwwDBGrid;
      BitSalir: TBitBtn;
      rbtApeNom: TRadioButton;
      rbtDni: TRadioButton;
      rbtCuenta: TRadioButton;
      rbtCodMod: TRadioButton;
      Button1: TButton;
      grbDatosRequeridos: TGroupBox;
      grbCronoaplicar: TGroupBox;
      dblkForPago: TwwDBLookupCombo;
      EdtTipDes: TEdit;
      Label9: TLabel;
      MotDevo: TMemo;
      GroupBox3: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Panel1: TPanel;
      edtTipAso: TEdit;
      Panel2: TPanel;
      edtUProceso: TEdit;
      Panel5: TPanel;
      edtUgel: TEdit;
      Label4: TLabel;
      fcShapeBtn3: TfcShapeBtn;
      fcShapeBtn1: TfcShapeBtn;
      Label5: TLabel;
      BitBtn1: TBitBtn;
      lblfallecido: TLabel;
      ppRepDevol: TppReport;
      ppParameterList1: TppParameterList;
      CDSAPLICADOS: TClientDataSet;
      DSAPLICADOS: TDataSource;
      ppDBPi2: TppDBPipeline;
      ppDesigner1: TppDesigner;
      DBPi1: TppDBPipeline;
      Label6: TLabel;
      DtpFecAct: TDateTimePicker;
      dbgCastigaFSC: TwwDBGrid;
    Panel4: TPanel;
    edtNroOperacion: TEdit;
    ppHeaderBand2: TppHeaderBand;
    ppLabel27: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    xxx: TppLabel;
    ppp: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLblNomGen: TppLabel;
    ppLblCodMod: TppLabel;
    ppLblFecDoc: TppLabel;
    ppLblDpto: TppLabel;
    ppLblCodPag: TppLabel;
    ppLblUproc: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLblDesem: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    PPLblDni: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    pplbFormapago: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppMeses: TppMemo;
    ppFooterBand1: TppFooterBand;
    ppLblUsuario: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLTotal: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLblMonDev: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel50: TppLabel;
    ppLine14: TppLine;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppShape2: TppShape;
    ppDBText11: TppDBText;
    ppdbCREMTOCOBNEW: TppDBText;
    ppLine1: TppLine;
    ppLine13: TppLine;
    ppLine3: TppLine;
    ppDBCalc3: TppDBCalc;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape1: TppShape;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine11: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLbNumActa: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    pplbFecActa: TppLabel;
// Inicio: SPP_201312_COB    : 16/09/2013  Se agrega forma de Pago 44 = FSC por Invalidez
    lblInvalidez: TLabel;
// Inicio: HPC_201508_COB
    grbReimpresion: TGroupBox;
    DFecActa: TDateTimePicker;
    Label8: TLabel;
    Label10: TLabel;
    edtActa: TEdit;
    chkReimp: TCheckBox;
// Fin: HPC_201508_COB
// Fin: SPP_201312_COB       : 16/09/2013  Se agrega forma de Pago 44 = FSC por Invalidez

      Procedure BitBuscarClick(Sender: TObject);
      Procedure EdtCodModExit(Sender: TObject);
      Procedure BitMostrarClick(Sender: TObject);
      Procedure dtgAsociadoDblClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure rbtApeNomClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure rbtDniClick(Sender: TObject);
      Procedure rbtCuentaClick(Sender: TObject);
      Procedure rbtCodModClick(Sender: TObject);
      Procedure dblkForPagoChange(Sender: TObject);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure acfooter();
      Procedure fcShapeBtn3Click(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure CaptDestinoAplicado(xasoid, xcredid, xnroope: String);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure DtpFecActExit(Sender: TObject);
    procedure MotDevoExit(Sender: TObject);
    procedure MotDevoKeyPress(Sender: TObject; var Key: Char);
// Inicio: HPC_201508_COB
    procedure chkReimpClick(Sender: TObject);
// Fin: HPC_201508_COB
   Private
    { Private declarations }
      Function GnrCorrApl(): String;
      Function VerDifDistribucion(xasoid:String;xcredid:string):currency;
   Public
    { Public declarations }
      VTOTOFSC, ZAplicacion: currency;
      VNUMACTA : String;
   End;

Var
   fCanstigaFSC: TfCanstigaFSC;

Implementation

Uses COBDM1, COB904;

{$R *.dfm}

Procedure TfCanstigaFSC.BitBuscarClick(Sender: TObject);
Begin
   pnlSeleccion.Visible := True;
   pnlSeleccion.Top := 144;
   pnlSeleccion.Left := 0;
   grbAsociados.Enabled := False;
   rbtApeNomClick(SELF);
End;

Procedure TfCanstigaFSC.EdtCodModExit(Sender: TObject);
Begin

   If Length(Trim(EdtCodMod.Text)) = 0 Then
   Begin
      BitBuscarClick(self);
      exit;
   End;

   If Length(Trim(EdtCodMod.Text)) > 10 Then
   Begin
      MessageDlg('Código Modular no puede tener más de 10 Caracteres...!', mtError, [mbOk], 0);
      EdtCodMod.Text := '';
      Exit;
   End;

   EdtCodMod.Text := Format('%.10d', [StrToInt(EdtCodMod.Text)]);
   DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest('SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA,ASOTIPID,UPROID,UPAGOID,USEID,ASODNI,DPTOID,ASOCODPAGO '
      + 'From APO201 '
      + 'Where ASOCODMOD LIKE ' + QuotedStr(Trim(EdtCodMod.Text) + '%'));
   DM1.cdsAso.Open;
   If DM1.cdsAso.RecordCount = 1 Then
   Begin
      //LimPrestamos;
      //LimCronograma;
      //LimCDS;
      //LimTedit;
      //crgPrestamos;
   End
   Else
      If DM1.cdsAso.RecordCount > 1 Then
      Begin
         //LimPrestamos;
         //LimCronograma;
         //LimCDS;
         //LimTedit;
         pnlSeleccion.Visible := True;
         pnlSeleccion.Top := 144;
         pnlSeleccion.Left := 8;
         grbAsociados.Enabled := False;
         //grbacciones.Enabled := False;
      End
      Else
      Begin
         //LimPrestamos;
         //LimCronograma;
         //LimCDS;
         //LimTedit;
         MessageDlg('Código Modular No Existe...!', mtError, [mbOk], 0);
      End;

End;

Procedure TfCanstigaFSC.BitMostrarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If Length(Trim(edtBuscar.Text)) > 0 Then
   Begin
      If rbtApeNom.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA,ASOTIPID,UPROID,UPAGOID, '
                +'       USEID,ASODNI,DPTOID,ASOCODPAGO '
                +'FROM APO201 '
                +'WHERE ASOAPENOMDNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      If rbtDni.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA,ASOTIPID,UPROID,UPAGOID, '
                +'       USEID,ASODNI,DPTOID,ASOCODPAGO '
                +'FROM APO201  '
                +'WHERE ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      If rbtCuenta.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA,ASOTIPID,UPROID,UPAGOID, '
                +'       USEID,ASODNI,DPTOID,ASOCODPAGO '
                +'FROM APO201 '
                +'WHERE ASONCTA LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      If rbtCodMod.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA,ASOTIPID,UPROID,UPAGOID, '
                +'       USEID,ASODNI,DPTOID,ASOCODPAGO '
                + 'FROM APO201 '
                + 'WHERE ASOCODMOD LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest(xSQL);
      DM1.cdsAso.Open;
   End
   Else
   Begin
      MessageDlg('Debe ingresar un criterio para la búsqueda', mtError, [mbOk], 0);
      edtBuscar.SetFocus;
   End;
End;

Procedure TfCanstigaFSC.dtgAsociadoDblClick(Sender: TObject);
Var
   xsql, xuproid, xupagoid, xuseid, xasotipid, xcondicion, xforpago: String;
Begin
   EdtCodMod.Text := Dm1.cdsAso.fieldbyname('ASOCODMOD').AsString;
   edtNomGen.Text := Dm1.cdsAso.fieldbyname('ASOAPENOM').AsString;
   xuproid := Dm1.cdsAso.fieldbyname('UPROID').AsString;
   xupagoid := Dm1.cdsAso.fieldbyname('UPAGOID').AsString;
   xuseid := Dm1.cdsAso.fieldbyname('USEID').AsString;
   xasotipid := Dm1.cdsAso.fieldbyname('ASOTIPID').AsString;

   xCondicion := 'UPROID=''' + xuproid + '''';
   edtUProceso.text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xCondicion, 'UPRONOM');

   xCondicion := 'UPROID=''' + xuproid + ''' AND UPAGOID=''' + xupagoid + ''' AND USEID=''' + xuseid + '''';
   edtUgel.text := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xCondicion, 'USENOM');

   xCondicion := 'ASOTIPID=''' + xasotipid + '''';
   edtTipAso.text := DM1.DisplayDescrip('prvSQL', 'APO107', 'ASOTIPDES', xCondicion, 'ASOTIPDES'); //13 anula 04 extornado,

   If Dm1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)),'APO201','FALLECIDO') = 'S' Then
   Begin
      lblfallecido.Visible := True;
      XSQL := 'SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGOABR=''FSC'' and FORPAGOID=''23''  ';
      xforpago := '23';
   End
   Else
   Begin
       // Inicio: SPP_201312_COB       : 16/09/2013  Se agrega forma de Pago 44 = FSC por Invalidez
       If Dm1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)),'APO201','INVALIDEZ') = 'S' Then
       Begin
          lblfallecido.Visible := False;
          lblInvalidez.Visible := True;
          XSQL := 'SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGOABR=''FSC'' and FORPAGOID=''44''';
          xforpago := '44';
       End
       Else
       Begin
          lblfallecido.Visible := False;
          lblInvalidez.Visible := False;
          XSQL := 'SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGOABR=''FSC'' and FORPAGOID=''24'' ';
          xforpago := '24';
       End;
       // Fin: SPP_201312_COB       : 16/09/2013  Se agrega forma de Pago 44 = FSC por Invalidez
   End;
   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.DataRequest(XSQL);
   DM1.cdsFormaPago.Open;
   dblkForPago.Text := DM1.cdsFormaPago.FieldByName('FORPAGOID').AsString;
   dblkForPagoChange(self);

   xSQL := 'Select a.asoid,a.credid,a.crecuota,a.creinteres '
          +'from CRE310 a, CRE302 b '
          +'Where a.asoid='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
          +'  and (a.rcobid is not null or a.forpagid in (''01'',''09'',''22'')) '
          +'  and a.asoid=b.asoid and a.credid=b.credid and a.crecuota=b.crecuota '
          +'  and b.creestid=''27'' and to_char(B.crefven,''YYYYMM'')>TO_CHAR(sysdate,''YYYYMM'') '
          +'  and (CREFVENINI=CREFVEN or CREFVENINI IS NULL) and nvl(a.creinteres,0)>0 ';
   Dm1.cdsQry6.Close;
   Dm1.cdsQry6.DataRequest(xsql);
   Dm1.cdsQry6.Open;
   If Dm1.cdsQry6.RecordCount > 0 Then
   Begin
      ShowMessage('Existe un pago a futuro por Planilla con INTERES, debe solucionar este problema para continuar.');
      exit;
   End;

   If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))
                              + ' AND PVSESTADO NOT IN (''04'',''13'')', 'PVS301', 'PVSTIPBEN') = '02' Then
      lblfallecido.Visible := True
   Else
      lblfallecido.Visible := False;

   If (Length(TRIM(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))
                              + ' AND PVSESTADO NOT IN (''04'',''13'')', 'PVS301', 'ASOID'))) > 0) And
                   (Length(TRIM(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))
                              + ' AND PVSESTADO NOT IN (''04'',''13'')', 'PVS301', 'PVSLBENNR'))) = 0) Then
   Begin
      ShowMessage('Existe un expediente de Beneficios sin liquidar, Previsión Social debe concluir el proceso');
      grbDatosRequeridos.Enabled:=False;
      Exit;
   End;

   xSQL := 'SELECT ''N'' FLAG,ASOID,CREDIDT,CREDID,ASOTIPID,TIPCREID,TIPCREDES,CREFOTORG,FEC_VEN_ANT,NUM_CUOTA, '
          +'       NVL(DIAS_ATRA,0)DIAS_ATRA,CUO_VEN,TOT_VEN,CUO_DIF,TOT_DIF,CUO_PEN,TOT_PEN, '
          +'       (NVL(TOT_VEN,0)+NVL(TOT_DIF,0)+NVL(TOT_PEN,0)) TOT_CAS '
          +'FROM (SELECT D.ASOID,B.Credid CredidT,substr(B.Credid,9,7)Credid,D.Asotipid,B.Tipcreid,D.Tipcredes, '
          +'             D.Crefotorg,MIN(B.Crefven) FEC_VEN_ANT, max(B.Crecuota)NUM_CUOTA, '
          +'             max(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'')) '
          +'                      THEN TO_DATE(SYSDATE)-TO_DATE(B.CREFVEN) END) DIAS_ATRA,'
          +'             sum(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'')) '
          +'                  AND (B.CREFVEN=B.CREFVENINI OR B.CREFVENINI IS NULL) THEN 1 END) CUO_VEN,'
          +'             sum(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')<=TO_CHAR(SYSDATE,''YYYYMM'')) '
          +'                  AND (B.CREFVEN=B.CREFVENINI OR B.CREFVENINI IS NULL) '
          +'                      THEN NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0)  END) TOT_VEN,'
          +'             sum(CASE WHEN (B.CREFVENINI IS NOT NULL) AND (B.CREFVEN<>B.CREFVENINI)  THEN 1 END) CUO_DIF,'
          +'             sum(CASE WHEN (B.CREFVENINI IS NOT NULL) AND (B.CREFVEN<>CREFVENINI) '
          +'                      THEN NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0)  END) TOT_DIF,'
          +'             sum(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) '
          +'                       AND (B.CREFVEN=B.CREFVENINI OR B.CREFVENINI IS NULL) THEN 1 END) CUO_PEN,'
          +'             sum(CASE WHEN (TO_CHAR(B.CREFVEN,''YYYYMM'')>TO_CHAR(SYSDATE,''YYYYMM'')) '
          +'                  AND (B.CREFVEN=B.CREFVENINI OR B.CREFVENINI IS NULL) '
// Inicio: DPP_201217_COB
//        +'                      THEN (NVL(B.CREAMORT,0)+NVL(B.CREFLAT,0))-NVL(B.CREMTOCOB,0) END) TOT_PEN  '
          +'                      THEN (NVL(B.CREAMORT,0)+NVL(B.CREFLAT,0)+NVL(B.MONPACDESGRAV,0))-NVL(B.CREMTOCOB,0) END) TOT_PEN  '
// Final: DPP_201217_COB
          +'      FROM CRE302 B,CRE301 D '
          +'      WHERE B.asoid='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
          // Inicio: SPP_201402_COB
          +'        AND B.CREESTID IN (''14'',''02'',''27'',''11'',''19'') '
          // Fin: SPP_201402_COB
          +'        AND (B.ASOID=D.ASOID(+) AND B.CREDID=D.CREDID(+)) '
          +'      GROUP BY D.ASOID,B.Credid,D.Asotipid,B.Tipcreid,D.Crefotorg,D.Tipcredes)';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(XSQL);
   DM1.cdsMGrupo.Open;
   TNumericField(Dm1.cdsMGrupo.fieldbyname('DIAS_ATRA')).DisplayFormat := '###,##0';
   TNumericField(Dm1.cdsMGrupo.fieldbyname('TOT_VEN')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsMGrupo.fieldbyname('TOT_PEN')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsMGrupo.fieldbyname('TOT_DIF')).DisplayFormat := '###,###.#0';
   TNumericField(Dm1.cdsMGrupo.fieldbyname('TOT_CAS')).DisplayFormat := '###,###.#0';

   If Dm1.cdsMGrupo.RecordCount = 0 Then
   Begin
      ShowMessage('No existe información para aplicar el Fondo Solidario de Contingencia.');
      MotDevo.Text:='';
      grbDatosRequeridos.Enabled:=False;
      Exit;
   End;

   acfooter;
   Button1Click(SELF);
   dblkForPago.Text := xforpago;
   MotDevo.Text := Dm1.cdsFormaPago.fieldbyname('FORPAGODES').AsString;
   grbDatosRequeridos.Enabled := True;
   grbCronoaplicar.Enabled    := True;

End;

Procedure TfCanstigaFSC.FormCreate(Sender: TObject);
Var
   xsql: String;
Begin

   dbgCastigaFSC.Selected.clear;
   VNUMACTA:='';
   dbgCastigaFSC.ControlType.Add('FLAG;CheckBox;S;N');
   dbgCastigaFSC.Selected.Add('FLAG'#9'2'#9' ');
   dbgCastigaFSC.Selected.Add('ASOTIPID'#9'03'#9'Tip.~Aso.'#9#9);
   dbgCastigaFSC.Selected.Add('CREDID'#9'07'#9'Num.~Crédito'#9#9);
   dbgCastigaFSC.Selected.Add('TIPCREID'#9'04'#9'Cod.'#9'F'#9'Crédito');
   dbgCastigaFSC.Selected.Add('TIPCREDES'#9'20'#9'Descripción'#9'F'#9'Crédito');
   dbgCastigaFSC.Selected.Add('FEC_VEN_ANT'#9'10'#9'Fec.Ven~Antigua'#9#9);
   dbgCastigaFSC.Selected.Add('NUM_CUOTA'#9'04'#9'Num~Cuo'#9#9);
//Inicio HPC_201502_COB
   dbgCastigaFSC.Selected.Add('DIAS_ATRA'#9'06'#9'Dias~Atraso'#9#9);
//Final HPC_201502_COB
   dbgCastigaFSC.Selected.Add('TOT_CAS'#9'10'#9'Total~Castigar'#9#9);
   dbgCastigaFSC.Selected.Add('CUO_VEN'#9'04'#9'Cuo.'#9'F'#9'Vencidas');
   dbgCastigaFSC.Selected.Add('TOT_VEN'#9'10'#9'Importe'#9'F'#9'Vencidas');
   dbgCastigaFSC.Selected.Add('CUO_DIF'#9'04'#9'Cuo.'#9'F'#9'Diferida');
   dbgCastigaFSC.Selected.Add('TOT_DIF'#9'10'#9'Importe'#9'F'#9'Diferida');
   dbgCastigaFSC.Selected.Add('CUO_PEN'#9'04'#9'Cuo.'#9'F'#9'Pendiente');
   dbgCastigaFSC.Selected.Add('TOT_PEN'#9'10'#9'Importe'#9'F'#9'Pendiente');
   dbgCastigaFSC.DataSource := Dm1.dsMGrupo;

   xSQL := 'SELECT ''N'' FLAG,''   '' ASOTIPID, '' '' Credid, '' '' Tipcreid, '' '' Tipcredes, '
          +'       '' '' FEC_VEN_ANT, '' '' NUM_CUOTA, '' '' DIAS_ATRA, 0 TOT_CAS,'
          +'       '' '' CUO_VEN, '' '' TOT_VEN, '' '' CUO_DIF, '' '' TOT_DIF, '' '' CUO_PEN, '' '' TOT_PEN '
          +'FROM DUAL ';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(XSQL);
   DM1.cdsMGrupo.Open;
   acfooter;

   dtgAsociado.Selected.clear;
   dtgAsociado.Selected.Add('ASOID'#9'10'#9'Cod.Derrama'#9#9);
   dtgAsociado.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.'#9#9);
   dtgAsociado.Selected.Add('ASOAPENOM'#9'50'#9'Aplellidos y Nombres'#9#9);
   dtgAsociado.Selected.Add('SITCTA'#9'04'#9'Sit.'#9#9);
   dtgAsociado.Selected.Add('ASONCTA'#9'15'#9'Cuenta'#9#9);
   dtgAsociado.DataSource := Dm1.dsAso;
   XSQL := 'SELECT '' ''ASOID,'' ''ASOCODMOD,'' ''ASOAPENOM,'' ''SITCTA,'' ''ASONCTA FROM DUAL ';
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSQL);
   DM1.cdsAso.Open;

   XSQL := 'SELECT FORPAGOID,FORPAGODES FROM COB101 WHERE FORPAGOABR=''FSC'' ';
   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.DataRequest(XSQL);
   DM1.cdsFormaPago.Open;

   DtpFecAct.DateTime := Dm1.FechaSys;

End;

Procedure TfCanstigaFSC.rbtApeNomClick(Sender: TObject);
Begin
   edtBuscar.Text := '';
   Dm1.cdsAso.EmptyDataSet;
   gbbuscar.Width := 430;
   gbbuscar.Height := 40;
   edtBuscar.Width := 407;
   edtBuscar.Height := 28;
   GbAsociados.Caption := 'Buscar Por ' + rbtApeNom.Caption;
   edtBuscar.SetFocus;
End;

Procedure TfCanstigaFSC.Button1Click(Sender: TObject);
Begin
   pnlSeleccion.Visible := False;
   pnlSeleccion.Top := 449;
   pnlSeleccion.Left := 8;
   grbAsociados.Enabled := True;
End;

Procedure TfCanstigaFSC.rbtDniClick(Sender: TObject);
Begin
   edtBuscar.Text := '';
   Dm1.cdsAso.EmptyDataSet;
   gbbuscar.Width := 137;
   gbbuscar.Height := 40;
   edtBuscar.Width := 114;
   edtBuscar.Height := 24;
   GbAsociados.Caption := 'Buscar Por ' + rbtDni.Caption;
   edtBuscar.SetFocus;
End;

Procedure TfCanstigaFSC.rbtCuentaClick(Sender: TObject);
Begin
   edtBuscar.Text := '';
   Dm1.cdsAso.EmptyDataSet;
   gbbuscar.Width := 137;
   gbbuscar.Height := 40;
   edtBuscar.Width := 114;
   edtBuscar.Height := 24;
   GbAsociados.Caption := 'Buscar Por ' + rbtCuenta.Caption;
   edtBuscar.SetFocus;
End;

Procedure TfCanstigaFSC.rbtCodModClick(Sender: TObject);
Begin
   edtBuscar.Text := '';
   Dm1.cdsAso.EmptyDataSet;
   gbbuscar.Width := 137;
   gbbuscar.Height := 40;
   edtBuscar.Width := 114;
   edtBuscar.Height := 24;
   GbAsociados.Caption := 'Buscar Por ' + rbtCodMod.Caption;
   edtBuscar.SetFocus;
End;

Procedure TfCanstigaFSC.dblkForPagoChange(Sender: TObject);
Begin
  if dm1.cdsFormaPago.Locate('FORPAGOID',VarArrayOf([dblkForPago.Text]),[]) then
     EdtTipDes.Text := dm1.cdsFormaPago.fieldbyname('FORPAGODES').AsString
  else  EdtTipDes.Text := '' ;
End;

Procedure TfCanstigaFSC.fcShapeBtn1Click(Sender: TObject);
Var
   XSQL, VASOID, VCREDID, VOPERACION, VTIPOPAGO, VOBSERVACION, VUSUARIO, XNUMFSC: String;
   VFEC_OTORG, VULT_FEC_VEN, VDIA_ATRASO, VNRO_REF_FSC,VFEC_REF_FSC, xCondicion, XASOTIPID: String;
   VAPLICO: Currency;
   I:integer;
   // Inicio: DPP_201217_COB
    xano,xmes,xper,xper2 :String;
   // Inicio: SPP_201402_COB 
    xAsoId,xCreDid: String; 
   // Fin: SPP_201402_COB
   // Fin: DPP_201217_COB
   //Inicio HPC_201502_COB
    vFSC:integer;
   //Final  HPC_201502_COB


Begin

   If Dm1.cdsMGrupo.RecordCount = 0 Then
   Begin
      ShowMessage('No existe créditos para aplicar Fondo Solidario de Contingencia.');
      screen.Cursor := crdefault;
      Exit;
   End;

   If Length(Trim(dblkForPago.Text)) = 0 Then
   Begin
      ShowMessage('Debe ingresar Forma de Pago..');
      screen.Cursor := crdefault;
      Exit;
   End;

   If Length(Trim(MotDevo.Text)) = 0 Then
   Begin
      ShowMessage('Debe ingresar Observación de la Aplicación.');
      screen.Cursor := crdefault;
      Exit;
   End;

    If StrToDate(FormatDateTime('dd/mm/yyyy',DtpFecAct.Date))>
     StrToDate(FormatDateTime('dd/mm/yyyy',dm1.FechaSys)) Then
     Begin
        ShowMessage('Fecha de Acta no puede ser superior a la acta fecha actual'+
                    FormatDateTime('dd/mm/yyyy',DtpFecAct.Date)+' > '+FormatDateTime('dd/mm/yyyy',dm1.FechaSys));
        screen.Cursor := crdefault;
        Exit;
     End;

    screen.Cursor := crhourglass;

    VASOID := Dm1.cdsAso.FieldByName('ASOID').AsString;
    VTIPOPAGO := dblkForPago.Text;
    VOBSERVACION := '';
    For I := 0 To Motdevo.Lines.count - 1 Do
    Begin
      VOBSERVACION := VOBSERVACION + ' ' + Trim(Motdevo.Lines.Strings[i]);
    End;
    VOBSERVACION := Trim(VOBSERVACION);

   VUSUARIO := Dm1.wUsuario;
   VTOTOFSC := 0;
   acfooter;

    //Verifico si existe algun credito donde la amortizacion interes y gastos no cuadra con el mto cobrado
    Dm1.cdsMGrupo.First;
    While Not Dm1.cdsMGrupo.Eof Do
    Begin
      If (Dm1.cdsMGrupo.FieldByName('FLAG').AsString = 'S') Then
      Begin
         If VerDifDistribucion(Dm1.cdsMGrupo.FieldbyName('Asoid').AsString,
                               Dm1.cdsMGrupo.FieldbyName('CredidT').AsString)<>0 Then
         Begin
            ShowMessage('La Distribución Amort+Int+Gatos+Exc<>Mto.cobrado, Crédito:'+Dm1.cdsMGrupo.FieldbyName('Credid').AsString);
            screen.Cursor := crdefault;
            exit;
         End;
      End;
      Dm1.cdsMGrupo.Next;
    End;

    //Verifico que todos tengan el mismo tipo de asociado en el otrogamiento
    Dm1.cdsMGrupo.First;
    //Inicio HPC_201502_COB
    vFSC := 0;
    //Final HPC_201502_COB
    While Not Dm1.cdsMGrupo.Eof Do
    Begin
      If (Dm1.cdsMGrupo.FieldByName('FLAG').AsString = 'S') Then
      Begin
        XASOTIPID := Dm1.cdsMGrupo.FieldByName('ASOTIPID').AsString;
        Break;
      End;
      Dm1.cdsMGrupo.Next;
    End;
    Dm1.cdsMGrupo.First;
    While Not Dm1.cdsMGrupo.Eof Do
    Begin
      If (Dm1.cdsMGrupo.FieldByName('FLAG').AsString = 'S') Then
       Begin
         VTOTOFSC := VTOTOFSC + DM1.cdsMGrupo.FieldByName('TOT_CAS').AsCurrency;
         If (Dm1.cdsMGrupo.FieldByName('ASOTIPID').AsString <> XASOTIPID) Then
         Begin
            ShowMessage('Marcó prestamos con diferente tipo de Asociado en el Origen del Préstamo.');
            screen.Cursor := crdefault;
            exit;
         End;

        //Inicio: HPP_201109_COB RMZ
        //Verifica que lo marcado no tenga menos de 720 dias o 360 dias segun el tipo de asociado y que sea por incobrabilidad
        //y si tiene menos debes haber estado anteriormente aplicado al FSC
        If (dblkForPago.Text='24') AND
           ((Dm1.cdsMGrupo.FieldByName('ASOTIPID').AsString<>'CO') or (Length(trim(Dm1.cdsMGrupo.FieldByName('ASOTIPID').AsString))=0) ) AND
           (Dm1.cdsMGrupo.FieldByName('DIAS_ATRA').AsCurrency<720) Then
           Begin
             XSQL:='Select Cre_apl_fsc From Cob_fsc_Deuda_fsc_det '+
                   'Where Asoid='''+Dm1.cdsMGrupo.FieldByName('ASOID').AsString+''' AND substr(Cre_apl_fsc,9,7)='''+Dm1.cdsMGrupo.FieldByName('CREDID').AsString+''' AND  FLG_ANU_EXT IS NULL ';
             Dm1.cdsDFam.Close;
             Dm1.cdsDFam.DataRequest(Xsql);
             Dm1.cdsDFam.Open;
             If Dm1.cdsDFam.RecordCount=0 Then
               Begin
                 //Inicio HPC_201502_COB
                 //ShowMessage('Ud. ha marcado un crédito que tiene menos de 24 meses o 720 días de atraso. Verifique' );
                 //screen.Cursor := crdefault;
                 //Exit;
                 vFSC:=720;
                 //Final HPC_201502_COB
               end;
           End;
        If (dblkForPago.Text='24') AND
           (Dm1.cdsMGrupo.FieldByName('ASOTIPID').AsString='CO') AND
           (Dm1.cdsMGrupo.FieldByName('DIAS_ATRA').AsCurrency<360) Then
           Begin
             XSQL:='Select Cre_apl_fsc From Cob_fsc_Deuda_fsc_det '+
                   'Where Asoid='''+Dm1.cdsMGrupo.FieldByName('ASOID').AsString+''' AND substr(Cre_apl_fsc,9,7)='''+Dm1.cdsMGrupo.FieldByName('CREDID').AsString+''' AND  FLG_ANU_EXT IS NULL ';
             Dm1.cdsDFam.Close;
             Dm1.cdsDFam.DataRequest(Xsql);
             Dm1.cdsDFam.Open;
             If Dm1.cdsDFam.RecordCount=0 Then
               Begin
                 //Inicio HPC_201502_COB
                 //ShowMessage('Ud. ha marcado un crédito que tiene menos de 12 meses o 360 días de atraso. Verifique' );
                 //screen.Cursor := crdefault;
                 //Exit;
                 vFSC:=360;
                 //Final HPC_201502_COB
               end;
           End;
        //Final: HPP_201109_COB RMZ

       End;
      Dm1.cdsMGrupo.Next;
    End;

    //Inicio HPC_201502_COB
    If vFSC=720 Then
    Begin
      If MessageDlg('Ud. ha marcado un crédito que tiene menos de 24 meses o 720 días de atraso, Desea Continuar? ',
          mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
        screen.Cursor := crdefault;
        Exit;
      End;
    End;

    If vFSC=360 Then
    Begin
      If MessageDlg('Ud. ha marcado un crédito que tiene menos de 12 meses o 360 días de atraso, Desea Continuar? ',
         mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Begin
        screen.Cursor := crdefault;
        Exit;
      End;
    End;
    //Final HPC_201502_COB

   // Se autogenera el número del Acta en base a la fecha
    edtNroOperacion.Text:='AC'+FormatDateTime('yyyymmdd',DtpFecAct.Date)+XASOTIPID;

   edtNroOperacion.Text := trim(edtNroOperacion.Text);
   VOPERACION := edtNroOperacion.Text;

   xCondicion := 'ASOID='+quotedstr(Dm1.cdsAso.FieldByName('ASOID').AsString)
               + ' AND NRO_REF_FSC='+quotedstr(TRIM(edtNroOperacion.Text))
               + ' AND FEC_REF_FSC='+quotedstr(DateToStr(DtpFecAct.Date))
               + ' AND USER_ANULA IS NULL ';

   If Length(TRIM(DM1.DisplayDescrip('prvSQL','COB_FSC_DEUDA_FSC_CAB','NRO_REF_FSC',xCondicion,'NRO_REF_FSC')))>0 Then
   Begin
      ShowMessage('El número de Acta ya existe.');
      screen.Cursor := crdefault;
      Exit;
   End;

   If VTOTOFSC = 0 Then
   Begin
      ShowMessage('No marcó ningún Créditos para Cancelar con FSC, verifique.');
      screen.Cursor := crdefault;
      exit;
   End;

   If MessageDlg('¿ Aplicará con el Fondo Solidario de Contingencia : ' + FloatToStrF(VTOTOFSC, ffCurrency, 10, 2), mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
      screen.Cursor := crdefault;
      Exit;
   End;

// Inicio: SPP_201402_COB

   xAsoid:=Dm1.cdsAso.FieldByName('ASOID').AsString;
   Dm1.cdsMGrupo.First;
   While Not Dm1.cdsMGrupo.Eof Do
   Begin
      If Dm1.cdsMGrupo.FieldByName('FLAG').AsString = 'S' Then
         Begin
            xCreDid:= Dm1.cdsMGrupo.FieldByName('CREDIDT').AsString;
            xSQL:='UPDATE CRE302 SET CREESTID=CASE WHEN NVL(CREMTOCOB,0)>0 THEN ''27'' ELSE ''11'' END, '+
                  'CREESTADO=CASE WHEN NVL(CREMTOCOB,0)>0 THEN ''PARCIAL'' ELSE ''NO PAGADADO'' END,CREBLOQ=''N'',FORPAGOID=''01'' '+
                  'WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid)+' AND CREESTID=''19'' ';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         End;
      Dm1.cdsMGrupo.Next;
    End;
// Fin: SPP_201402_COB


   //Grabar Informacion
   //Genera numero de deuda
   XNUMFSC := GnrCorrApl;
   //Inicio HPC_201508_COB
   If XNUMFSC='0' Then
   Begin
     ShowMessage('No se genero correctamente el correlativo, Intentelo nuevamente mas tarde...');
     screen.Cursor := crdefault;
     exit;
   End;
   //Final HPC_201508_COB

   Dm1.cdsMGrupo.First;
   While Not Dm1.cdsMGrupo.Eof Do
   Begin
      If Dm1.cdsMGrupo.FieldByName('FLAG').AsString = 'S' Then
      Begin
         VCREDID      := Dm1.cdsMGrupo.FieldByName('CREDIDT').AsString;
         VAPLICO      := Dm1.cdsMGrupo.FieldByName('TOT_CAS').AsCurrency;
         VFEC_OTORG   := Dm1.cdsMGrupo.FieldByName('CREFOTORG').AsString;
         VULT_FEC_VEN := Dm1.cdsMGrupo.FieldByName('FEC_VEN_ANT').AsString;
         VDIA_ATRASO  := Dm1.cdsMGrupo.FieldByName('DIAS_ATRA').AsString;
         VNRO_REF_FSC := tRIM(edtNroOperacion.Text);
         VFEC_REF_FSC := FormatDateTime('dd/mm/yyyy',DtpFecAct.Date);
         // Inicio: DPP_201217_COB
         //xSQL := 'Begin SP_COB_APLI_FSC('+quotedstr(XNUMFSC)+','+quotedstr(VASOID)+','+quotedstr(VCREDID)+','
         xSQL := 'Begin SP_COB_APLI_FSC_V2('+quotedstr(XNUMFSC)+','+quotedstr(VASOID)+','+quotedstr(VCREDID)+','
         // Fin: DPP_201217_COB
                +quotedstr(VOPERACION)+','+quotedstr(VTIPOPAGO)+','+quotedstr(VOBSERVACION)+','+quotedstr(VUSUARIO)+','
                +quotedstr(VFEC_OTORG)+','+quotedstr(VULT_FEC_VEN)+','+VDIA_ATRASO+','+quotedstr(VNRO_REF_FSC)+','
                +CurrToStr(VAPLICO)+','+quotedstr(VFEC_REF_FSC)+ '); End;';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
      Dm1.cdsMGrupo.Next;
   End;

   // Graba Cabecera de Deuda Castigada por Fondo Solidario (COB_FSC_DEUDA_FSC_CAB)
   //Inicio HPC_201508_COB
   // xSQL := 'INSERT INTO COB_FSC_DEUDA_FSC_CAB'
   //                 +'(TIP_ASO_ORIGEN, NUM_DEU, FORPAGID, NRO_REF_FSC, '
   //                 +' FEC_REF_FSC, ASOID, FEC_APL_FSC, '
   //                 +' HOR_APL_FSC, IMP_APL_FSC, IMP_SAL_FSC, '
   //                 +' ID_EST_FSC, USU_APL_FSC, OBS_FSC, OFI_CREACION) '
   //        +'VALUES('+quotedstr(XASOTIPID)+','+quotedstr(XNUMFSC)+','+quotedstr(VTIPOPAGO)+','+quotedstr(VOPERACION)+','
   //                  +quotedstr(DateToStr(DtpFecAct.Date))+','+quotedstr(VASOID)+','+'TO_DATE(SYSDATE),'
   //                  +'SYSDATE,' + CurrToStr(VTOTOFSC) + ',' + CurrToStr(VTOTOFSC) + ','
   //                  +' ''02'',' +quotedstr(VUSUARIO)+',' + quotedstr(VOBSERVACION) + ',' + quotedstr(DM1.xOfiDes) + ')';
   xSQL := 'UPDATE COB_FSC_DEUDA_FSC_CAB SET '
          +'TIP_ASO_ORIGEN='+quotedstr(XASOTIPID)+','
          +'FORPAGID='+quotedstr(VTIPOPAGO)+','
          +'ASOID='+quotedstr(VASOID)+','
          +'FEC_APL_FSC=trunc(sysdate),'
          +'HOR_APL_FSC=sysdate,'
          +'IMP_APL_FSC='+CurrToStr(VTOTOFSC)+','
          +'IMP_SAL_FSC='+CurrToStr(VTOTOFSC)+','
          +'ID_EST_FSC=''02'', '
          +'OBS_FSC='+quotedstr(VOBSERVACION)+','
          +'OFI_CREACION='+quotedstr(DM1.xOfiDes)+' '
          +'WHERE NUM_DEU='''+XNUMFSC+''' And NRO_REF_FSC='''+VNRO_REF_FSC+''' And USU_APL_FSC='''+VUSUARIO+''' And FEC_APL_FSC='+quotedstr(DateToStr(DtpFecAct.Date));
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  //Final HPC_201508_COB

  screen.Cursor := crdefault;
  VNUMACTA:=VOPERACION;
  ShowMessage('Aplicación Concluida');

 dtgAsociadoDblClick(Self);
 acfooter;

End;

Procedure TfCanstigaFSC.acfooter;
Var
   B: TBookmark;
   xEnvio: currency;
Begin
   dbgCastigaFSC.ColumnByName('TIPCREDES').FooterValue := 'Totales a aplicar';

  //Guardo la posicion
   B := DM1.cdsMGrupo.GetBookmark;
   DM1.cdsMGrupo.DisableControls;
   DM1.cdsMGrupo.First;
   xEnvio := 0;
   While Not DM1.cdsMGrupo.Eof Do
   Begin
      xEnvio := xEnvio + DM1.cdsMGrupo.FieldByName('TOT_CAS').AsCurrency;
      DM1.cdsMGrupo.Next
   End;
   dbgCastigaFSC.ColumnByName('TOT_CAS').FooterValue := FormatCurr('###,##0.#0', xEnvio);

  //Me posiciono nuevamente en el posicion marcada
   DM1.cdsMGrupo.GotoBookmark(B);
   DM1.cdsMGrupo.EnableControls;
   DM1.cdsMGrupo.FreeBookmark(B);

End;

Procedure TfCanstigaFSC.fcShapeBtn3Click(Sender: TObject);
Begin
   close;
End;

Function TfCanstigaFSC.GnrCorrApl: String;
Var
   xCorrAct: Int64;
   xSQL: String;
Begin
   //Inicio HPC_201508_COB
   //xSQL := 'SELECT TO_CHAR(SYSDATE,''YYYY'') ANHO,NVL(MAX(NUM_DEU),0) NUM_DEU '
   //       +'FROM COB_FSC_DEUDA_FSC_CAB '
   //       +'WHERE TO_CHAR(FEC_APL_FSC,''YYYY'')=TO_CHAR(SYSDATE,''YYYY'') ';
   //DM1.cdsQry6.Close;
   //DM1.cdsQry6.DataRequest(XSQL);
   //DM1.cdsQry6.Open;

   //If StrToInt64(DM1.cdsQry6.FieldByName('NUM_DEU').AsString) = 0 Then
   //Begin
   //   xCorrAct := StrToInt64(Dm1.cdsQry6.FieldByName('ANHO').asstring + '000001');
   //End
   //Else
   //Begin
   //   xCorrAct := StrToInt64(Dm1.cdsQry6.FieldByName('ANHO').asstring + 1;
   //End;

   Try
      xSQL :='INSERT INTO COB_FSC_DEUDA_FSC_CAB(NUM_DEU,ASOID,NRO_REF_FSC,USU_APL_FSC,FEC_REF_FSC,FEC_APL_FSC)  '
            +'                           VALUES(NVL((SELECT  NVL(MAX(NUM_DEU),0)+1 '
            +'                                       FROM COB_FSC_DEUDA_FSC_CAB  '
            +'                                       WHERE TO_CHAR(FEC_APL_FSC,''YYYY'')=TO_CHAR(SYSDATE,''YYYY'')),TO_CHAR(SYSDATE,''YYYY'')||''00001''),'
            +QuotedStr(DM1.cdsAso.FieldbyName('ASOID').AsString)+','+QuotedStr(edtNroOperacion.Text)+','+QuotedStr(dm1.wUsuario)+','+quotedstr(DateToStr(DtpFecAct.Date))+',TRUNC(SYSDATE))';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   Except
      ShowMessage('Error al generar el correlativo...');
      xCorrAct:= 0;
      Result := IntToStr(xCorrAct);
      Exit;
   End;

   xSQL:= 'Select NUM_DEU,NRO_REF_FSC,USU_APL_FSC,FEC_APL_FSC '
         +'From  COB_FSC_DEUDA_FSC_CAB '
         +'Where NRO_REF_FSC='+QuotedStr(edtNroOperacion.Text)+' and '
         +'      FEC_APL_FSC=TRUNC(SYSDATE)  and '
         +'      ASOID='+QuotedStr(DM1.cdsAso.FieldbyName('ASOID').AsString)+' and '
         +'      USU_APL_FSC='+QuotedStr(dm1.wUsuario);
    DM1.cdsQry6.Close;
    DM1.cdsQry6.DataRequest(XSQL);
    DM1.cdsQry6.Open;

    If DM1.cdsQry6.RecordCount=1 Then
         xCorrAct:= StrToInt64(Dm1.cdsQry6.FieldByName('NUM_DEU').asstring)
    Else
    Begin
    If DM1.cdsQry6.RecordCount>1 Then
    Begin
      ShowMessage('El mismo USUARIO NO PUEDE HACER LA MISMA OPERACION EN MAS DE UN TERMINAL..,');
      xCorrAct:= 0;
    End
    Else xCorrAct:= 0;
    End;
   //Final HPC_201508_COB

    Result := IntToStr(xCorrAct);
End;

Procedure TfCanstigaFSC.BitBtn1Click(Sender: TObject);
Var
   xSql, xTipDes, xMeses, xNroDev, xdiasatra, ximpaplfsc,VOBSERVACION: String;
   xCremToCob: Currency;
   xLin,I: Integer;
   //Incicio HPC_201508_COB
   xActa:String;
   xFecActa: TDate;
   //Final HPC_201508_COB
Begin

   {VOBSERVACION := '';
   For I := 0 To Motdevo.Lines.count - 1 Do
   Begin
      VOBSERVACION := VOBSERVACION + ' ' + Trim(Motdevo.Lines.Strings[i]);
   End;
   VOBSERVACION := Trim(VOBSERVACION);}
   //Incicio HPC_201508_COB
   If  (chkReimp.Checked) and (Length(TRim(VNUMACTA))=0) Then
   Begin
     xActa   :=edtActa.Text;
     xFecActa:= DFecActa.DateTime;
   End
   Else
   Begin
     xActa   := VNUMACTA;
     xFecActa:= DtpFecAct.Date;
   End;
   //Final HPC_201508_COB
   
   xTipDes := 'CON EL FONDO SOLIDARIO DE CONTINGENCIA SEGUN ACTA - ';
   ppLblDesem.Caption := xTipDes + edtNroOperacion.Text;
   ppLTotal.Caption := 'TOTAL APLICADO CON EL FONDO SOLIDARIO DE CONTINGENCIA:';
   ppMeses.Lines.Text := '';
   xCremToCob := 0;
   xMeses := '';
   CDSAPLICADOS.EmptyDataSet;

   
   xSql := 'Select B.NUM_DEU,B.ASOID,B.CRE_APL_FSC,substr(B.CRE_APL_FSC,9,7) CREDITO,B.IMP_APL_FSC,B.FEC_OTORG, '
          +'       B.ULT_FEC_VEN,B.DIA_ATRASO,B.NRO_REF_FSC,B.FEC_APL_FSC,A.OBS_FSC,A.FEC_REF_FSC,C.FORPAGODES '
          +'From COB_FSC_DEUDA_FSC_CAB A, COB_FSC_DEUDA_FSC_DET B,COB101 C '
          +'Where A.Asoid='+quotedstr(Dm1.cdsAso.fieldbyname('asoid').AsString)
          //Incicio HPC_201508_OB
          //+'  AND A.NRO_REF_FSC='+quotedstr(Trim(VNUMACTA))
          //+'  AND A.FEC_REF_FSC='+quotedstr(DateToStr(DtpFecAct.Date))
          +'  AND A.NRO_REF_FSC='+quotedstr(Trim(xActa))
          +'  AND A.FEC_REF_FSC='+quotedstr(DateToStr(xFecActa))
          //Incicio HPC_201508_COB
          +'  AND A.ID_EST_FSC NOT IN (''13'',''04'') '
          +'  AND A.NUM_DEU=B.NUM_DEU '
          +'  AND B.FLG_ANU_EXT IS NULL'
          +'  AND A.FORPAGID=C.FORPAGOID(+) ';
   Dm1.cdsQry6.Close;
   Dm1.cdsQry6.DataRequest(xSql);
   Dm1.cdsQry6.Open;
   TNumericField(Dm1.cdsQry6.fieldbyname('DIA_ATRASO')).DisplayFormat := '0####';
   TNumericField(Dm1.cdsQry6.fieldbyname('IMP_APL_FSC')).DisplayFormat := '###,###.#0';

   If Dm1.cdsQry6.RecordCount=0 Then
      Begin
        ShowMessage('No existe información para Imprimir.');
        Exit;
      End;

   ppLblTitulo.Text      := 'APLICACION CON EL FONDO SOLIDARIO DE CONTINGENCIA N° '+Dm1.cdsQry6.fieldbyname('NUM_DEU').AsString;
   pplbFecActa.Text      := Dm1.cdsQry6.fieldbyname('FEC_REF_FSC').AsString;
   ppLbNumActa.Text      := Dm1.cdsQry6.fieldbyname('NRO_REF_FSC').AsString;
   pplbFormapago.Caption := Dm1.cdsQry6.fieldbyname('FORPAGODES').AsString;
   xLin := 0;

   While Not Dm1.cdsQry6.Eof Do
   Begin
      xNroDev := Dm1.cdsQry6.FieldByname('NRO_REF_FSC').AsString;
      CaptDestinoAplicado(Dm1.cdsAso.fieldbyname('ASOID').AsString,
                          Dm1.cdsQry6.FieldByname('CRE_APL_FSC').AsString,
                          Dm1.cdsQry6.FieldByname('NRO_REF_FSC').AsString);
      xLin := xLin + 1;
      xCremToCob := xCremToCob + Dm1.cdsQry6.FieldByname('IMP_APL_FSC').AsFloat;
      If xLin < 1 Then
         xMeses := xMeses + 'Crédito:' + Dm1.cdsQry6.FieldByname('CREDITO').AsString
                 + '  Fecha Otorg.:' + Dm1.cdsQry6.FieldByname('FEC_OTORG').AsString
                 + '  Días Atraso:' + Dm1.cdsQry6.FieldByname('DIA_ATRASO').AsString
                 + '  Total Aplicado:' + Dm1.cdsQry6.FieldByname('IMP_APL_FSC').AsString + '  '
      Else
      Begin
         xLin := 0;
         xMeses := xMeses + 'Crédito:' + Dm1.cdsQry6.FieldByname('CREDITO').AsString
                 + '  Fecha Otorg.:' + Dm1.cdsQry6.FieldByname('FEC_OTORG').AsString
                 + '  Días Atraso:' + Dm1.cdsQry6.FieldByname('DIA_ATRASO').AsString
                 + '  Total Aplicado:' + Dm1.cdsQry6.FieldByname('IMP_APL_FSC').AsString + #13
      End;
      Dm1.cdsQry6.Next;
   End;

   ppMeses.Lines.Add('CONCEPTO : APLICACION CON EL FONDO SOLIDARIO DE CONTINGENCIA');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('A LOS CRÉDITOS QUE SE DETALLA :  (En Nuevos Soles)');
   ppMeses.Lines.Add('----------------------------------------------------');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add(Copy(xMeses, 1, Length(Trim(xMeses))));
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('');
   ppMeses.Lines.Add('Nota :' + Dm1.cdsQry6.FieldByname('OBS_FSC').AsString);

   PPLblDni.Caption := DM1.cdsAso.FieldByName('ASODNI').AsString;
   ppLblNomGen.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   ppLblCodMod.Caption := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   ppLblDpto.Caption := DM1.CrgDescrip('DPTOID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('DPTOID').AsString)), 'APO158', 'DPTODES');
   ppLblCodPag.Caption := DM1.cdsAso.FieldByName('ASOCODPAGO').AsString;
   ppLblUproc.Caption := DM1.CrgDescrip('UPROID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
   ppLblMonDev.Caption := FormatFloat('###,###.#0', xCremToCob);
   ppLblUsuario.Caption := 'Hecho Por :' + Trim(DM1.wUsuario);
   ppLblFecDoc.Caption := Dm1.cdsQry6.fieldbyname('FEC_APL_FSC').AsString;
   //pplbFormapago.Caption := EdtTipDes.Text;

   CDSAPLICADOS.First;
   Dm1.cdsQry6.First;
   DBPi1.DataSource := Dm1.dsQry6;

   ppRepDevol.Print;
   ppRepDevol.Cancel;

End;

Procedure TfCanstigaFSC.CaptDestinoAplicado(xasoid, xcredid, xnroope: String);
Var
   xsql: String;
Begin
   XSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB CREMTOCOBNEW,NROOPE,SUBSTR(CREOBS,17,15) CREDIDOLD, '
          +'       SUBSTR(CREOBS,33,3) CRECUOTAOLD, CREFPAG, CREDOCPAG '
          +'FROM CRE310 '
          +'WHERE TIPOCONT=''FSC'' AND ASOID=''' + xasoid + ''' '
          +'  AND CREDID=''' + xcredid + ''' AND NROOPE=''' + xnroope + ''' '
          +'  AND CREESTID NOT IN (''13'',''04'') '
          +'ORDER BY CRECUOTA DESC ';
   Dm1.cdsResol.Close;
   Dm1.cdsResol.DataRequest(xsql);
   Dm1.cdsResol.Open;

   Dm1.cdsResol.First;
   ZAplicacion := 0;
   If dm1.cdsResol.RecordCount > 0 Then
   Begin
      While Not dm1.cdsResol.Eof Do
      Begin
         CDSAPLICADOS.Insert;
         CDSAPLICADOS.FieldByName('ASOID').AsString := DM1.cdsResol.FieldByName('ASOID').AsString;
         CDSAPLICADOS.FieldByName('CREDID').AsString := copy(DM1.cdsResol.FieldByName('CREDID').AsString, 9, 7);
         CDSAPLICADOS.FieldByName('CRECUOTA').AsString := DM1.cdsResol.FieldByName('CRECUOTA').AsString;
         CDSAPLICADOS.FieldByName('NROOPE').AsString := DM1.cdsResol.FieldByName('NROOPE').AsString;
         CDSAPLICADOS.FieldByName('CREMTOCOBNEW').AsCurrency := DM1.cdsResol.FieldByName('CREMTOCOBNEW').AsCurrency;
         ZAplicacion := ZAplicacion + DM1.cdsResol.FieldByName('CREMTOCOBNEW').AsCurrency;
         dm1.cdsResol.Next;
      End;
   End;

End;

Procedure TfCanstigaFSC.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TfCanstigaFSC.BitSalirClick(Sender: TObject);
Begin
   pnlSeleccion.Visible := False;
   pnlSeleccion.Top := 449;
   pnlSeleccion.Left := 8;
   grbAsociados.Enabled := True;
End;

Procedure TfCanstigaFSC.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   Dm1.cdsAso.Close;
   Dm1.cdsAso.IndexFieldNames := '';
   Dm1.cdsAso.Filter := '';

   Dm1.cdsFormaPago.Close;
   Dm1.cdsFormaPago.IndexFieldNames := '';
   Dm1.cdsFormaPago.Filter := '';

   Dm1.cdsQry6.Close;
   Dm1.cdsQry6.IndexFieldNames := '';
   Dm1.cdsQry6.Filter := '';

   Dm1.cdsMGrupo.Close;
   Dm1.cdsMGrupo.IndexFieldNames := '';
   Dm1.cdsMGrupo.Filter := '';

   Dm1.cdsConvenio.Close;
   Dm1.cdsConvenio.IndexFieldNames := '';
   Dm1.cdsConvenio.Filter := '';

   Dm1.cdsResol.Close;
   Dm1.cdsResol.IndexFieldNames := '';
   Dm1.cdsResol.Filter := '';

End;

procedure TfCanstigaFSC.DtpFecActExit(Sender: TObject);
begin
    If StrToDate(FormatDateTime('dd/mm/yyyy',DtpFecAct.Date))>
     StrToDate(FormatDateTime('dd/mm/yyyy',dm1.FechaSys)) Then
     Begin
        ShowMessage('Fecha de Acta '+FormatDateTime('dd/mm/yyyy',DtpFecAct.Date)
                   +' no puede ser superior a la acta fecha actual '
                   +FormatDateTime('dd/mm/yyyy',dm1.FechaSys));
        Exit;
     End;
     //edtNroOperacion.Text:='AC'+FormatDateTime('ddmmyyyy',DtpFecAct.Date)+Dm1.cdsMGrupo.FieldByName('ASOTIPID').AsString;
     MotDevo.SetFocus;
end;

procedure TfCanstigaFSC.MotDevoExit(Sender: TObject);
begin
 // edtNroOperacion.Text:='AC'+FormatDateTime('ddmmyyyy',DtpFecAct.Date)+Dm1.cdsMGrupo.FieldByName('ASOTIPID').AsString;
end;

//Verifica diferencia en la distribucion
function TfCanstigaFSC.VerDifDistribucion(xasoid,
  xcredid: string): currency;
Var xsql: String;
begin
// Inicio: DPP_201217_COB
   Result:= 0;
   xsql:='Select asoid,credid,'+
         'sum(nvl(cremtocob,0))cremtocob,'+
         'sum(nvl(creamort,0)+nvl(creinteres,0)+nvl(creflat,0)+nvl(cremtoexc,0))distribucion,'+
//       'sum(nvl(cremtocob,0)-(nvl(creamort,0)+nvl(creinteres,0)+nvl(creflat,0)+nvl(cremtoexc,0))) Dif '+
//       'sum(nvl(creamort,0)+nvl(creinteres,0)+nvl(creflat,0)+nvl(cremtoexc,0)+nvl(moncobdesgrav,0))distribucion,'+
         'sum(nvl(cremtocob,0)-(nvl(creamort,0)+nvl(creinteres,0)+nvl(creflat,0)+nvl(cremtoexc,0)+nvl(moncobdesgrav,0))) Dif '+
         'From cre310 '+
         'where asoid='''+xasoid+''' and credid='''+xcredid+''' and numdev is null and creestid not in (''13'',''04'',''99'') '+
         'group by asoid,credid ';
   Dm1.cdsResol.Close;
   Dm1.cdsResol.DataRequest(xsql);
   Dm1.cdsResol.Open;
   If Dm1.cdsResol.RecordCount=0 Then
   Result:=0 Else Result:=Dm1.cdsResol.FieldByName('Dif').AsCurrency;
// Fin: DPP_201217_COB
end;

procedure TfCanstigaFSC.MotDevoKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #39 Then
   Begin
      Key := #0;
   End;
end;

// Fin: HPP_201008_COB

//Inicio HPC_201508_COB
procedure TfCanstigaFSC.chkReimpClick(Sender: TObject);
begin
 If chkReimp.Checked Then
 Begin
  DFecActa.DateTime := DM1.FechaSys;
  edtActa.Text      :='';
  grbReimpresion.Visible:=True;
 End
 Else
 Begin
  DFecActa.DateTime := DM1.FechaSys;
  edtActa.Text      := '';
  grbReimpresion.Visible:=False;
 End;
//Final HPC_201508_COB

end;

End.

