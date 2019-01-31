Unit COB830;

// Inicio Uso Estándares         : 01/08/2011
// Unidad                        : COB830
// Formulario                    : FToolIncoIng
// Fecha de Creación             :
// Autor                         : Área de Desarrollo
// Objetivo                      : Inconsistencia de Planillas

// Actualizaciones:
//                               : HPP_200921_COB - Memo 0606-2009-DM-COB  SAR2009-0531   DAD-IR-2009-0129 ISAAC REVILLA 3/7/2009
//                               : HPP_201007_COB - por JCARBONEL ubicacion de los temporales del reportbuilder
//                               : HPC_201203_COB - RMZ Registro de Inconsistencia de Planilla
// DPP_201204_COB                : Pase a realizar a partir del HPC_201103_COB
// HPC_201310_COB                : 04/10/2013  Devolución de Inconsistencias
// SPP_201312_COB                : Se realiza el pase a producción a partir del documento HPC_201310_COB
// HPC_201311_COB                : 31/10/2013 - Validar el importe de la devolución mayor o igual a 5 Soles
// SPP_201313_COB                : Se realiza el pase a producción a partir de lo indicado en el documento HPC_201311_COB.
// HPC_201519_COB                : Modificación al momento de Validar que no se haya registrado en la pre aprobacion una misma devolucion 
// HPC_201612_COB                : Se implemento un aopción de apliación de pagos al FSC de pagos inconsistentes
// HPC_201820_COB                : Se añade envio a devolución cronogramas cerrados montos minimos y asociados fallecidos 
// COB_201824_HPC                : Mejoras en la aplicación de Pagos por Resolver
Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   wwdblook, Wwdbdlg, StdCtrls, Buttons, Spin, ComCtrls, ExtCtrls, ppCtrls,
   ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppComm,
   ppRelatv, ppProd, ppReport, ppEndUsr, ppParameter;

Type
   TFToolIncoIng = Class(TForm)
      pnlTool: TPanel;
      gbPorTransferencia: TGroupBox;
      Label7: TLabel;
      seAno: TSpinEdit;
      seMes: TSpinEdit;
      gbPorArchivo: TGroupBox;
      bbtnModifica: TBitBtn;
      BitBtn1: TBitBtn;
      pnlEstado: TPanel;
      lbEstado: TLabel;
      pbEstado: TProgressBar;
      ppReport1: TppReport;
      ppDBPipeline1: TppDBPipeline;
      BitBtn2: TBitBtn;
      Label6: TLabel;
      dblcdUPro: TwwDBLookupComboDlg;
      Label1: TLabel;
      dblcdUPag: TwwDBLookupComboDlg;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      rgtipaso: TRadioGroup;
      ppDesigner1: TppDesigner;
      ppParameterList1: TppParameterList;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppDBText4: TppDBText;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLine1: TppLine;
      ppLabel17: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppDBText10: TppDBText;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText15: TppDBText;
      ppLabel21: TppLabel;
      ppLine2: TppLine;
      ppDBText16: TppDBText;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppGroup2: TppGroup;
      ppGroupHeaderBand2: TppGroupHeaderBand;
      ppDBText11: TppDBText;
      ppLabel16: TppLabel;
      ppDBText17: TppDBText;
      ppGroupFooterBand2: TppGroupFooterBand;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppDBText12: TppDBText;
      ppLabel18: TppLabel;
      ppGroupFooterBand3: TppGroupFooterBand;
      ppLine3: TppLine;
      ppDBCalc1: TppDBCalc;
      ppLabel15: TppLabel;
      ppLabel22: TppLabel;
      grAplicaInconsistencia: TGroupBox;
      bbtnApInconsis: TBitBtn;
// Inicio: SPP_201312_COB              : 04/10/2013  Devolución de Inconsistencias
      bbtnEnvDev: TBitBtn;
      bbtnImpDev: TBitBtn;
      ppdb1: TppDBPipeline;
      ppd2: TppDesigner;
      ppr1: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppLabel23: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppDBText18: TppDBText;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLine4: TppLine;
      ppLabel37: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppDBText19: TppDBText;
      ppDetailBand2: TppDetailBand;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppFooterBand2: TppFooterBand;
      ppGroup4: TppGroup;
      ppGroupHeaderBand4: TppGroupHeaderBand;
      ppDBText30: TppDBText;
      ppLabel40: TppLabel;
      ppLine5: TppLine;
      ppDBText31: TppDBText;
      ppGroupFooterBand4: TppGroupFooterBand;
      ppGroup5: TppGroup;
      ppGroupHeaderBand5: TppGroupHeaderBand;
      ppDBText32: TppDBText;
      ppLabel41: TppLabel;
      ppDBText33: TppDBText;
      ppGroupFooterBand5: TppGroupFooterBand;
      ppGroup6: TppGroup;
      ppGroupHeaderBand6: TppGroupHeaderBand;
      ppDBText34: TppDBText;
      ppLabel42: TppLabel;
      ppGroupFooterBand6: TppGroupFooterBand;
      ppLine6: TppLine;
      ppDBCalc2: TppDBCalc;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppParameterList2: TppParameterList;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc5: TppDBCalc;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppDBCalc6: TppDBCalc;
      ppLine7: TppLine;
      btnNotaDev: TBitBtn;
      Bevel1: TBevel;
// Fin: SPP_201312_COB                : 04/10/2013  Devolución de Inconsistencias

      Procedure BitBtn1Click(Sender: TObject);
      Procedure bbtnModificaClick(Sender: TObject);
      Procedure BitBtn2Click(Sender: TObject);
      Procedure dblcdUProExit(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure bbtnApInconsisClick(Sender: TObject);
// Inicio: SPP_201312_COB               : 04/10/2013  Devolución de Inconsistencias
      procedure bbtnEnvDevClick(Sender: TObject);
    procedure bbtnImpDevClick(Sender: TObject);
    procedure btnNotaDevClick(Sender: TObject);
// Fin: SPP_201312_COB                  : 04/10/2013  Devolución de Inconsistencias
 
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FToolIncoIng: TFToolIncoIng;

Implementation

Uses COBDM1, COB001,
// Inicio: SPP_201312_COB             : 04/10/2013  Devolución de Inconsistencias
   COBD001, COB467, COB468;
// Fin: SPP_201312_COB                : 04/10/2013  Devolución de Inconsistencias

{$R *.DFM}

Procedure TFToolIncoIng.BitBtn1Click(Sender: TObject);
Var
   xSQL: String;
   xPeriodo: String;
   xTipAso: String;
Begin
   If rgtipaso.ItemIndex = 0 Then xtipaso := 'DO';
   If rgtipaso.ItemIndex = 1 Then xtipaso := 'CE';
   xPeriodo := seAno.Text + DM1.strZero(seMes.text, 2);
   xSQL := ' select A.ARCHIVO, A.ASOID, A.ASONCTA, A.TRANSANO, A.TRANSMES, A.TMONID, A.IMPORTE, A.COMISION, '
      + '        A.APOSEC, A.ASOAPENOM, A.ASOAPENOMA, A.FL_EXISTE, A.FL_NODEST, A.FL_NOORIG, A.USUARIO, '
      + '        A.FREG, A.HREG, A.FL_CTACTE, A.FLAG, A.FL_COBSS, A.CIAID, A.CREFPAG, A.NROOPE, A.FOPERAC, '
      + '        A.CREMTODEV, A.CREDOCPAG, A.FORPAGID, A.FORPAGABR, A.ASOCODMOD, A.ASOCODAUX, A.ASOCODPAGO, '
      + '        A.UPROID, A.UPAGOID, A.USEID, A.BANCOID, A.CCBCOID, A.AGENBCOID, A.DETRCOBID, A.USERCOBID, '
      + '        A.RCOBID, A.TRANSINTID, A.AREAID, A.FLGFPAG, A.TRANOBS, A.FLGTA, A.FOPERACTMP, A.NROOPETMP, '
      + '        A.FL_NASOID, A.FL_CUOTPAG, A.FL_MTODIF, A.FL_NOCREDI, A.FL_NENVIA, A.FL_OK, B.ASOTIPID, '
      // Inicio: HPC_201820_COB
      // Se añade campo FALLECIDO
      // + '        C.UPRONOM, D.UPAGONOM '
      + '        C.UPRONOM, D.UPAGONOM, NVL(B.FALLECIDO,''N'') FALLECIDO'
      // Fin: HPC_201820_COB
      + ' FROM COB340 A, APO201 B, APO102 C, APO103 D '
      + ' WHERE TRANSANO=' + Quotedstr(seAno.Text)
      + '  AND TRANSMES=' + Quotedstr(DM1.strZero(seMes.Text, 2));
   If length(dblcdUPro.text) > 0 Then xSQL := xSQL + ' AND a.UPROID=' + Quotedstr(dblcdUPro.text);
   If Length(trim(dblcdUPag.Text)) > 0 Then xSQL := xSQL + ' AND a.UPAGOID=' + QuotedStr(TRIM(dblcdUPag.Text));
   xSQL := xSQL + ' AND(a.FLGTA<>''S'' OR  a.FLGTA IS NULL )';
   xSQL := xSQL + ' AND A.ASOID = B.ASOID '
      + ' AND C.UPROID(+)=A.UPROID '
      + ' AND D.UPROID(+)=A.UPROID and D.UPAGOID(+)=A.UPAGOID ';
   If (rgtipaso.ItemIndex = 0) Or (rgtipaso.ItemIndex = 1) Then xSQL := xSQL + ' AND B.ASOTIPID = ' + QuotedStr(xtipaso);
   FPrincipal.MtxD.UsuarioSQL.Clear;
   FPrincipal.MtxD.UsuarioSQL.Add(XSQL);
   FPrincipal.MtxD.NewQuery;

End;

Procedure TFToolIncoIng.bbtnModificaClick(Sender: TObject);
Var
   xSQL: String;
   iAno, iMEs: integer;
Begin

   pbEstado.Position := 0;
   If DM1.cdsQry5.recordcount = 0 Then
   Begin
      ShowMessage('No Existen Registros ');
      exit;
   End;

   iMes := strtoint(seMes.text);
   If (iMes < 1) Or (iMes > 12) Then
      Raise exception.Create('Mes inválido');

   pnlEstado.Visible := True;
   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := ' Verificando Datos ...';
   lbEstado.Refresh;
   pbEstado.Max := 8;
   pbEstado.Min := 0;
   pbEstado.Position := pbEstado.Position + 1;

   xSQL := ' UPDATE COB340 SET FL_CTACTE=''N'' ' +
      ' WHERE TRANSANO=' + Quotedstr(seAno.Text) +
      ' AND TRANSMES=' + Quotedstr(DM1.strZero(seMes.text, 2)) +
      ' AND NVL(FL_CTACTE,''D'')=''D'' ' +
      ' AND NVL(FLGTA,''D'')=''D'' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := ' Marcando Inconsistencias ...';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   xSQL := ' UPDATE COB340 SET FL_NASOID=''S'' ' +
      ' WHERE TRANSANO=' + Quotedstr(seAno.Text) +
      ' AND TRANSMES=' + Quotedstr(DM1.strZero(seMes.text, 2)) +
      ' AND NVL(ASOID,''D'')=''D'' ' +
      ' AND NVL(FL_CTACTE,''D'')<>''S'' ' +
      ' AND NVL(FLGTA,''D'')=''D'' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando Codigo de Derrama';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   xSQL := ' UPDATE COB340 A SET A.FL_CUOTPAG=''S'' ' +
      ' WHERE A.TRANSANO=' + Quotedstr(seAno.Text) +
      ' AND A.TRANSMES=' + Quotedstr(DM1.strZero(seMes.text, 2)) +
      ' AND NVL(A.FL_CUOTPAG,''D'')<>''S'' ' +
      ' AND NVL(A.FL_CTACTE,''D'')<>''S'' ' +
      ' AND NVL(A.FLGTA,''D'')=''D'' ' +
      ' AND A.ASOID= (SELECT B.ASOID FROM CRE302 B ' +
      'WHERE B.CREANO=A.TRANSANO AND ' +
      'B.CREMES=A.TRANSMES AND ' +
      'B.ASOID=A.ASOID AND ' +
      'B.FORPAGOID=''01'' AND ' +
//                     'B.CREINFO=''S'' AND '+
   '(B.CREESTID=''21'' OR B.CREESTID=''23'') AND ' +
      'B.CREESTID<>''14'' ' +
      'GROUP BY B.ASOID) ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando si la Cuota está cancelada';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   xSQL := ' UPDATE COB340 A SET A.FL_MTODIF=''S'' ' +
      ' WHERE A.TRANSANO=' + Quotedstr(seAno.Text) +
      ' AND A.TRANSMES=' + Quotedstr(DM1.strZero(seMes.text, 2)) +
      ' AND NVL(A.FL_MTODIF,''D'')<>''S'' ' +
      ' AND NVL(A.FL_CTACTE,''D'')<>''S'' ' +
      ' AND NVL(A.FLGTA,''D'')=''D'' ' +
      ' AND A.IMPORTE<> (SELECT SUM(B.CREMTO-B.CREMTOCOB) IMPORTE FROM CRE302 B ' +
      'WHERE B.CREANO=A.TRANSANO AND ' +
      'B.CREMES=A.TRANSMES AND ' +
      'B.ASOID=A.ASOID AND ' +
      'B.FORPAGOID=''01'' AND ' +
//                     'B.CREINFO=''S'' AND '+
   'B.CREESTID=''14'' ' +
      'GROUP BY B.ASOID ' +
      'HAVING COUNT(CREANO)>=1) ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando montos Diferentes';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   xSQL := ' UPDATE COB340 A SET A.FL_NOCREDI=''S'' ' +
      ' WHERE A.TRANSANO=' + Quotedstr(seAno.Text) +
      ' AND A.TRANSMES=' + Quotedstr(DM1.strZero(seMes.text, 2)) +
      ' AND NVL(A.FL_NOCREDI,''D'')<>''S'' ' +
      ' AND NVL(A.FL_CTACTE,''D'')<>''S'' ' +
      ' AND NVL(A.FLGTA,''D'')=''D'' ' +
      ' AND A.ASOID IS NOT NULL ' +
      ' AND NOT EXISTS (SELECT B.ASOID FROM CRE302 B ' +
      'WHERE B.CREANO=A.TRANSANO AND ' +
      'B.CREMES=A.TRANSMES AND ' +
      'B.ASOID=A.ASOID AND ' +
      'B.FORPAGOID=''01'' ) ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando si no tiene Créditos';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   xSQL := ' UPDATE COB340 A SET A.FL_CUOTPAG=''S'' ' +
      ' WHERE A.TRANSANO=' + Quotedstr(seAno.Text) +
      ' AND A.TRANSMES=' + Quotedstr(DM1.strZero(seMes.text, 2)) +
      ' AND NVL(A.FL_CUOTPAG,''D'')<>''S'' ' +
      ' AND NVL(A.FL_CTACTE,''D'')<>''S'' ' +
      ' AND NVL(A.FLGTA,''D'')=''D'' ' +
      ' AND A.ASOID IS NOT NULL ' +
      ' AND A.ASOID= (SELECT B.ASOID FROM CRE302 B ' +
      'WHERE B.CREANO=A.TRANSANO AND ' +
      'B.CREMES=A.TRANSMES AND ' +
      'B.ASOID=A.ASOID AND ' +
      'B.FORPAGOID=''01'' AND ' +
//                     'B.CREINFO=''S'' AND '+
   '(B.CREESTID=''04'' OR B.CREESTID=''07'') AND ' +
      'B.CREESTID<>''14'' ' +
      'GROUP BY B.ASOID) ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando si tiene Créditos Extornados o Anulados';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   xSQL := ' UPDATE COB340 A SET A.FL_NENVIA=''S'' ' +
      ' WHERE A.TRANSANO=' + Quotedstr(seAno.Text) +
      ' AND A.TRANSMES=' + Quotedstr(DM1.strZero(seMes.text, 2)) +
      ' AND NVL(A.FL_NENVIA,''D'')<>''S'' ' +
      ' AND NVL(A.FL_CTACTE,''D'')<>''S'' ' +
      ' AND NVL(A.FLGTA,''D'')=''D'' ' +
      ' AND NVL(A.FL_NOCREDI,''D'')<>''S'' ' +
      ' AND A.ASOID= (SELECT B.ASOID FROM CRE302 B ' +
      'WHERE B.CREANO=A.TRANSANO AND ' +
      'B.CREMES=A.TRANSMES AND ' +
      'B.ASOID=A.ASOID AND ' +
      'B.FORPAGOID=''01'' AND ' +
      '(NVL(B.CREINFO,''D'')<>''S'' ) AND ' +
      '(B.CREESTID=''02'' OR B.CREESTID=''14'' OR B.CREESTID=''27'' )  ' +
      'GROUP BY B.ASOID) ';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Verificando si tiene Créditos no enviados';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;

   xSQL := ' UPDATE COB340 A SET A.FL_OK=''S'' ' +
      ' WHERE A.TRANSANO=' + Quotedstr(seAno.Text) +
      ' AND A.TRANSMES=' + Quotedstr(DM1.strZero(seMes.text, 2)) +
      ' AND NVL(A.FL_OK,''D'')<>''S'' ' +
      ' AND NVL(A.FL_CTACTE,''D'')<>''S'' ' +
      ' AND NVL(A.FLGTA,''D'')=''D'' ' +
      ' AND A.IMPORTE= (SELECT SUM(B.CREMTO-B.CREMTOCOB) IMPORTE FROM CRE302 B ' +
      'WHERE B.CREANO=A.TRANSANO AND ' +
      'B.CREMES=A.TRANSMES AND ' +
      'B.ASOID=A.ASOID AND ' +
      'B.FORPAGOID=''01'' AND ' +
//                     'B.CREINFO=''S'' AND '+
   'B.CREESTID=''14'' ' +
      'GROUP BY B.ASOID) ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

   lbEstado.Caption := '';
   lbEstado.Refresh;
   lbEstado.Caption := 'Finalizando ...';
   lbEstado.Refresh;
   pbEstado.Position := pbEstado.Position + 1;
   pnlEstado.visible := False;

End;

Procedure TFToolIncoIng.BitBtn2Click(Sender: TObject);
Begin
   ppDBPipeline1.dataSource := DM1.dsQry5;
//   ppdesigner1.Report := ppReport1;
//   ppdesigner1.ShowModal;
   ppLabel1.Caption := 'REPORTE DE INCONSISTENCIAS POR PLANILLA - ' + UPPERCASE(rgtipaso.Items[rgtipaso.ItemIndex]);
   ppReport1.print;
End;

Procedure TFToolIncoIng.dblcdUProExit(Sender: TObject);
Var
   XSQL: String;
Begin
   XSQL := 'SELECT Upagoid,Upagonom FROM APO103 WHERE UPROID=''' + TRIM(dblcdUPro.Text) + ''' ';
   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(XSQL);
   DM1.cdsUPago.Open;
End;

Procedure TFToolIncoIng.FormCreate(Sender: TObject);
//INICIO: DPP_201204_COB
var
   wAno, wMes, wDia : word;
//FINAL: DPP_201204_COB
Begin
   ppDesigner1.IniStorageName := '.\rbuilder.ini';
   decodedate(DM1.FechaSys, wAno, wMes, wDia);
   seAno.Value := wAno;
// Inicio: SPP_201312_COB             : 04/10/2013  Devolución de Inconsistencias
   seMes.Value := wMes;
// Fin: SPP_201312_COB                : 04/10/2013  Devolución de Inconsistencias
End;

//INICIO: DPP_201204_COB
//Registro de Inconsistencia de Planilla

Procedure TFToolIncoIng.bbtnApInconsisClick(Sender: TObject);
Begin
   if FPrincipal.MtxD.ClientDataSet.RecordCount=0 then
   begin
      ShowMessage('No hay registros filtrados');
      exit;
   end
   else
   begin
      // Inicio: SPP_201312_COB               : 04/10/2013  Devolución de Inconsistencias
      xSQL:='SELECT NVL(SUM((NVL(CREMTO,0)-NVL(CREMTOCOB,0))),0) SALDO '
           +  'FROM CRE302 '
           + 'WHERE ASOID='''+DM1.cdsQry5.FieldByName('ASOID').AsString+''' '
           +  ' AND CREESTID IN (''02'',''11'',''14'',''27'',''31'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;

//Inicio HPC_201612_COB
//Se implemento una opción de apliación de pagos al FSC de pagos inconsistentes - Saldo al FSC
If DM1.cdsQry.FieldByName('SALDO').AsFloat=0 Then
Begin
   XSQL:= 'SELECT SUM(NVL(IMP_SAL_FSC,0)) SALDO '
         +'FROM COB_FSC_DEUDA_FSC_CAB '
         +'WHERE ASOID = '''+DM1.cdsQry5.FieldByName('ASOID').AsString+''' '
         +' AND ID_EST_FSC IN (''02'', ''27'', ''14'') ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
End;
//Final HPC_201612_COB

// Inicio: SPP_201313_COB             : 31/10/2013 - Validar el importe de la devolución saldo 0 y Devolución menor a 5 Soles
      if (DM1.cdsQry.FieldByName('SALDO').AsFloat>0) or
         ((DM1.cdsQry.FieldByName('SALDO').AsFloat=0) and (DM1.cdsQry5.FieldByName('IMPORTE').AsFloat<5)) then
      begin
// Fin: SPP_201313_COB                : 31/10/2013 - Validar el importe de la devolución saldo 0 y Devolución menor a 5 Soles
          Dm1.vsCobranza := 'P';
          Try
             FNuevoPago := TFNuevoPago.Create(self);
             FNuevoPago.Caption := 'Reg. Inconsistencia - ' + dm1.cdsQry5.fieldbyname('ASOAPENOM').AsString;
             FNuevoPago.ShowModal;
          Finally
             FNuevoPago.Free;
          End;
          BitBtn1Click(SELF);
      end
      else
      begin
          ShowMessage('No existen creditos con saldo para Aplicar devoluciones');
          exit;
      end;
      // Fin: SPP_201312_COB                : 04/10/2013  Devolución de Inconsistencias
   End;
End;
//FINAL: DPP_201204_COB


// Inicio: SPP_201312_COB                : 04/10/2013  Devolución de Inconsistencias
// Inicio: HPC_201820_COB
// Se modifica opción de devoluciones por exceso en cronogramas cerrados
procedure TFToolIncoIng.bbtnEnvDevClick(Sender: TObject);
var
  // xSQL : String;
  xSQL, xflgDev : String;
  xSaldo: Double;
//Inicio COB_201824_HPC 
//Mejoras en la aplicación de Pagos por Resolver
  xSQL2 : String;
//Fin COB_201804_HPC
begin
   xSQL := 'SELECT NVL(SUM((NVL(CREMTO,0)-NVL(CREMTOCOB,0))),0) SALDO FROM CRE302 WHERE ASOID='''+DM1.cdsQry5.FieldByName('ASOID').AsString+''''
   +' AND CREESTID IN (''02'',''11'',''14'',''27'',''31'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xSaldo := DM1.cdsQry.FieldByName('SALDO').AsFloat;
   If DM1.cdsQry.FieldByName('SALDO').AsFloat=0 then
   begin
      xSQL:='SELECT ASOID, CREDID, CRECUOTA FROM CRE302 WHERE ASOID='''+DM1.cdsQry5.FieldByName('ASOID').AsString+''''
      +' AND CREESTID IN (''19'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      if DM1.cdsQry.RecordCount>0 then
      begin
         ShowMessage('No se puede enviar a Devolución por que tiene BLOQUEADA la cuota '+DM1.cdsQry.FieldByName('CRECUOTA').AsString
                    +' del Crédito '+DM1.cdsQry.FieldByName('CREDID').AsString+'. Revisar...');
         Exit;
      end;
   End
   Else
   Begin
      ShowMessage('No se puede enviar a Devolución por que tiene Saldo ('+FloatToStrF(xSaldo,ffNumber,15,2)+'). Revisar...');
      Exit;
   End;
   XSQL:='select ASOID from PRE_APR_DEV '
          +'where asoid='   +QuotedStr(DM1.cdsQry5.FieldByName('asoid').AsString)
          + ' and transano='+QuotedStr(DM1.cdsQry5.FieldByName('transano').AsString)
          + ' and transmes='+QuotedStr(DM1.cdsQry5.FieldByName('transmes').AsString)
          + ' and uproid='  +QuotedStr(DM1.cdsQry5.FieldByName('uproid').AsString)
          + ' and upagoid=' +QuotedStr(DM1.cdsQry5.FieldByName('upagoid').AsString)
          + ' and useid='   +QuotedStr(DM1.cdsQry5.FieldByName('useid').AsString)
          + ' and NVL(FLADEVEFE,''X'')<>''S'' '
          + ' and NVL(FLAAPR,''X'')<>''N'' AND NVL(FLAANU,''X'')<>''S'' ';
   DM1.cdsQry2.CLOSE;
   DM1.cdsQry2.DataRequest(XSQL);
   DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
   begin
      ShowMessage('Solicitud para este asociado ya fue registrada. Verificar...');
      exit;
   end;
   xflgDev := 'N';
   If DM1.cdsQry5.FieldByName('IMPORTE').AsFloat<5 then
   Begin
      If MessageDlg('¿Marcará como "pago por resolver", está seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         xSQL := 'INSERT INTO COB_DES_CRO_CERRADO_DET (ASOID, OFIDES, FORPAGID, NRO_OPERACION, FEC_OPERACION, UPROID, UPAGOID, USEID,'
         +' ASOCODMOD, ASOAPENOM, BANCOID, CCBCOID, IMPORTE, FREG, HREG, USERID, RCOBID, DETRCOBID, USERCOBID, FLGEST,USU_PRO_PAG_RES, FEC_PRO_PAG_RES)'
         +' VALUES ('
         +QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString)+', '
         +'''01'','
         +QuotedStr(DM1.cdsQry5.FieldByName('FORPAGID').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('UPROID').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('UPAGOID').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('USEID').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('ASOCODMOD').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('ASOAPENOM').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('BANCOID').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('CCBCOID').AsString)+', '
         +DM1.cdsQry5.FieldByName('IMPORTE').AsString+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('FREG').AsString)+','
         +'TO_DATE('+QuotedStr(DM1.cdsQry5.FieldByName('HREG').AsString)+',''DD/MM/YYYY hh24:mi:ss''),'
         +QuotedStr(DM1.cdsQry5.FieldByName('USUARIO').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('RCOBID').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('DETRCOBID').AsString)+', '
         +QuotedStr(DM1.cdsQry5.FieldByName('USERCOBID').AsString)+','
         +QuotedStr('32')+','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE))';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         xSQL := 'DELETE FROM COB340 WHERE ASOID = '+QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString)
         +' AND FOPERAC = '+QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString)
         +' AND NROOPE = '+QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         BitBtn1Click(SELF);
         xflgDev := 'S';
      End;
      Exit;
   End
   Else
   Begin
//Inicio COB_201824_HPC 
//Mejoras en la aplicación de Pagos por Resolver
      xSQL:='SELECT ASOID,NRO_OPERACION,FEC_OPERACION,RCOBID,DETRCOBID,FLA_APROBADO FROM COB_DES_CRO_CERRADO_DET '
           +'Where ASOID='+QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString)
           +'  And RCOBID='+QuotedStr(DM1.cdsQry5.FieldByName('RCOBID').AsString)
           +'  And DETRCOBID='+QuotedStr(DM1.cdsQry5.FieldByName('DETRCOBID').AsString)
           +'  And IMPORTE='+DM1.cdsQry5.FieldByName('IMPORTE').AsString ;
      Dm1.cdsDLabo.Close;
      Dm1.cdsDLabo.DataRequest(xSQL);
      DM1.cdsDLabo.Open;
      If DM1.cdsDLabo.FieldByName('FLA_APROBADO').AsString='N' Then
      Begin
         If MessageDlg('La Solicitud de Pagos por Resolver fue DESAPROBADA,' + #13 + #13 +'¿Esta  Seguro(a) de continuar con el proceso? ',
                        mtConfirmation, [mbNo,mbYes], 0) = mrNo Then  Exit;
      End;
//Fin COB_201824_HPC 
      If (DM1.cdsQry5.FieldByName('FALLECIDO').AsString = 'S') Then
      Begin
         If MessageDlg('FALLECIDO - ¿Desea generar una Solicitud de Pago por Resolver?',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         Begin
            xflgDev := 'S';
//Inicio COB_201824_HPC
//No debe realizar ninguna operación si no se desea generar solicitud de Pago por Resolver por Fallecimiento
            xSQL2 := 'DELETE FROM COB340 WHERE ASOID = '+QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString)
            +' AND FOPERAC = '+QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString)
            +' AND NROOPE = '+QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString);

            If DM1.cdsDLabo.RecordCount>0 Then
            Begin
            xSQL := 'UPDATE COB_DES_CRO_CERRADO_DET SET FLGEST = ''10'' '
            +', USU_SOLICITA = '+QuotedStr(DM1.wUsuario)+', FEC_SOLICITA = SYSDATE'
            +', FALLECIDO = ''S'',FLA_APROBADO=NULL '
            +' WHERE ASOID = '+QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString)
            +' AND NRO_OPERACION = '+QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString)
            +' AND FEC_OPERACION = '+QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString);
            End
            Else
            Begin
            xSQL := 'INSERT INTO COB_DES_CRO_CERRADO_DET (ASOID, OFIDES, FORPAGID, NRO_OPERACION, FEC_OPERACION, UPROID, UPAGOID, USEID,'
            +' ASOCODMOD, ASOAPENOM, BANCOID, CCBCOID, IMPORTE, FREG, HREG, USERID, RCOBID, DETRCOBID, USERCOBID, FLGEST, FALLECIDO,FEC_SOLICITA,USU_SOLICITA)'
            +' VALUES ('
            +QuotedStr(DM1.cdsQry5.FieldByName('ASOID').AsString)+', '
            +'''01'','
            +QuotedStr(DM1.cdsQry5.FieldByName('FORPAGID').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('NROOPE').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('FOPERAC').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('UPROID').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('UPAGOID').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('USEID').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('ASOCODMOD').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('ASOAPENOM').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('BANCOID').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('CCBCOID').AsString)+','
            +DM1.cdsQry5.FieldByName('IMPORTE').AsString+', '
            +QuotedStr(FormatDateTime('DD/MM/YYYY',DM1.cdsQry5.FieldByName('FREG').AsDateTime))+','
            +'TO_DATE('+QuotedStr(DM1.cdsQry5.FieldByName('HREG').AsString)+',''DD/MM/YYYY hh24:mi:ss''),'
            +QuotedStr(DM1.cdsQry5.FieldByName('USUARIO').AsString)+','
            +QuotedStr(DM1.cdsQry5.FieldByName('RCOBID').AsString)+', '
            +QuotedStr(DM1.cdsQry5.FieldByName('DETRCOBID').AsString)+','
            +QuotedStr(DM1.cdsQry5.FieldByName('USERCOBID').AsString)+','
            +QuotedStr('10')+',''S'',TO_DATE(SYSDATE),'''+DM1.wUsuario+''')';
            End;
            Try
             DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
             DM1.DCOM1.AppServer.EjecutaSQL(xSQL2);
             BitBtn1Click(SELF);
            Except
             ShowMessage('Error al actualizar las tablas, salga del sistema he inténtelo nuevamente');
             Exit;
            End;
         End
         Else  Exit;
//Fin COB_201824_HPC
      End;
   End;
   If xflgDev = 'N' Then
   Begin
      Try
         FSolicitudDevo:=TFSolicitudDevo.Create(self);
         FSolicitudDevo.ShowModal;
      Finally
         FSolicitudDevo.Free;
         BitBtn1Click(SELF);
      End;
   End;
end;
// Fin: HPC_201820_COB
// Fin: SPP_201312_COB                : 04/10/2013  Devolución de Inconsistencias

// Inicio: SPP_201312_COB                : 04/10/2013  Devolución de Inconsistencias
procedure TFToolIncoIng.bbtnImpDevClick(Sender: TObject);
var
   xSQL: String;
   xPeriodo: String;
   xTipAso: String;
begin
   If rgtipaso.ItemIndex = 0 Then xtipaso := 'DO';
   If rgtipaso.ItemIndex = 1 Then xtipaso := 'CE';
   xPeriodo := seAno.Text + DM1.strZero(seMes.text, 2);

   xSQL:='select  A.ASOID, A.TRANSANO, A.TRANSMES, ''N'' TMONID, E.MONREV IMPORTE, B.ASOAPENOM, '
        +   'USUCRE USUARIO, A.FECCRE FREG, A.HORCRE HREG, E.CREFPAG, E.NROOPE, E.FOPERAC, '
        +   'A.FORPAGID, B.ASOCODMOD, A.UPROID, A.UPAGOID, A.USEID, '
        +   'B.ASOTIPID, C.UPRONOM, D.UPAGONOM  '
        +' FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D '
        +' WHERE A.TRANSANO=' + Quotedstr(seAno.Text)
        +  ' AND A.TRANSMES=' + Quotedstr(DM1.strZero(seMes.Text, 2))
        +  ' AND A.ANODEV=E.ANODEV AND A.CORDEV=E.CORDEV ';

   If length(dblcdUPro.text) > 0 Then xSQL := xSQL + ' AND a.UPROID=' + Quotedstr(dblcdUPro.text);

   If Length(trim(dblcdUPag.Text)) > 0 Then xSQL := xSQL + ' AND a.UPAGOID=' + QuotedStr(TRIM(dblcdUPag.Text));

   xSQL := xSQL + ' AND A.ASOID = B.ASOID '
      + ' AND C.UPROID(+)=A.UPROID '
      + ' AND D.UPROID(+)=A.UPROID and D.UPAGOID(+)=A.UPAGOID ';

   If (rgtipaso.ItemIndex = 0) Or (rgtipaso.ItemIndex = 1) Then xSQL := xSQL + ' AND B.ASOTIPID = ' + QuotedStr(xtipaso);

   DM1.cdsRepDev.Close;
   DM1.cdsRepDev.DataRequest( xSQL );
   DM1.cdsRepDev.Open;

   ppdb1.DataSource:=DM1.dsRepDev;
   ppR1.print;
end;
// Fin: SPP_201312_COB                : 04/10/2013  Devolución de Inconsistencias

// Inicio: SPP_201312_COB               : 04/10/2013  Devolución de Inconsistencias
procedure TFToolIncoIng.btnNotaDevClick(Sender: TObject);
var
   xSQL: String;
   xPeriodo: String;
   xTipAso: String;
begin
   If rgtipaso.ItemIndex = 0 Then xtipaso := 'DO';
   If rgtipaso.ItemIndex = 1 Then xtipaso := 'CE';
   xPeriodo := seAno.Text + DM1.strZero(seMes.text, 2);

   xSQL:='select  A.ASOID, A.TRANSANO, A.TRANSMES, ''N'' TMONID, E.MONREV IMPORTE, B.ASOAPENOM, '
        +   'USUCRE USUARIO, A.FECCRE FREG, A.HORCRE HREG, E.CREFPAG, E.NROOPE, E.FOPERAC, '
        +   'A.FORPAGID, B.ASOCODMOD, A.UPROID, A.UPAGOID, A.USEID, '
        +   'B.ASOTIPID, C.UPRONOM, D.UPAGONOM, '
        +   'F.CODOFI, G.OFDESNOM, H.LUGGIRO, H.CODGIRO, H.DEPGIRO, '
        +   'I.AGENBCODES, J.DPTODES, H.ASOCTAAHO, H.ASOOBSERV, H.ASONUMDEV, H.ASOANODEV, H.ASOFECDEV, H.ASOMONDEV '
        +' FROM PRE_APR_DEV A, PRE_APR_DEV_DET E, APO201 B, APO102 C, APO103 D, DES_DEV_EFE F, '
        +  'APO110 G, MDEVCAB H, COB102 I, APO158 J '
        +' WHERE A.TRANSANO=' + Quotedstr(seAno.Text)
        +  ' AND A.TRANSMES=' + Quotedstr(DM1.strZero(seMes.Text, 2))
        +  ' AND A.ANODEV=E.ANODEV AND A.CORDEV=E.CORDEV';

   If length(dblcdUPro.text) > 0 Then xSQL := xSQL + ' AND a.UPROID=' + Quotedstr(dblcdUPro.text);

   If Length(trim(dblcdUPag.Text)) > 0 Then xSQL := xSQL + ' AND a.UPAGOID=' + QuotedStr(TRIM(dblcdUPag.Text));

   xSQL := xSQL + ' AND A.ASOID = B.ASOID '
      + ' AND C.UPROID(+)=A.UPROID '
      + ' AND D.UPROID(+)=A.UPROID and D.UPAGOID(+)=A.UPAGOID ';
   xSQL := xSQL
      + ' AND E.ASOID=F.ASOID(+) '
      + ' AND E.ASONUMDEV=F.ASONUMDEV(+) '
      + ' AND E.ANODEV=F.ASOANODEV(+) '
      + ' AND F.CODOFI=G.OFDESID(+) '
      + ' AND E.ASONUMDEV=H.ASONUMDEV(+) '
      + ' AND E.ANODEV=H.ASOANODEV(+) '
      + ' AND H.CODGIRO=I.AGENBCOID(+) '
      + ' AND H.DEPGIRO=J.DPTOID(+) ';

   If (rgtipaso.ItemIndex = 0) Or (rgtipaso.ItemIndex = 1) Then xSQL := xSQL + ' AND B.ASOTIPID = ' + QuotedStr(xtipaso);

   xSQL := xSQL
      + ' order by H.ASOANODEV, H.ASONUMDEV';
   DM1.cdsRepDev.Close;
   DM1.cdsRepDev.DataRequest( xSQL );
   DM1.cdsRepDev.Open;

   try
     FDevoInconsis:=TFDevoInconsis.create(self);
     FDevoInconsis.ShowModal;
   finally
     FDevoInconsis.Free;
   end;
end;
// Fin: SPP_201312_COB                : 04/10/2013  Devolución de Inconsistencias

End.

