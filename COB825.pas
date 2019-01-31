// Inicio : HPP_200914_COB - SAR2009-0405 - DAD-IR-2009-0089
// AUTOR: Isaac Revilla
// FECHA DE CAMBIO: 28/5/2009
// Mantenimiento de autorización de descuento de crédito por Gestión
Unit COB825;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Mask, ExtCtrls, StdCtrls, wwdblook, Wwdbdlg, Buttons, Wwdbigrd,
   wwExport, shellapi, Grids, Wwdbgrid, db, ppDB, ppDBPipe, ppComm,
   ppRelatv, ppProd, ppClass, ppReport, ppVar, ppPrnabl, ppCtrls, ppBands,
   ppCache,
// inicio HPP_201105_COB
   ComCtrls;
// fin HPP_201105_COB
Type
   TFAutDesxGes = Class(TForm)
      // inicio HPP_201105_COB
      gbSeleccion: TGroupBox; // HPP_201105_COB ex GroupBox1
      // fin HPP_201105_COB
      btnprocesar: TBitBtn;
      Label1: TLabel;
      dblcdunipro: TwwDBLookupComboDlg;
      Panel2: TPanel;
      medesunipro: TMaskEdit;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      dblcdasotipid: TwwDBLookupComboDlg;
      Panel1: TPanel;
      medestipaso: TMaskEdit;
      dbgprocesar: TwwDBGrid;
      btnImprimir: TBitBtn;
      // inicio HPP_201105_COB
      btnCerrar: TBitBtn; // HPP_201105_COB ex btncerrar
      // fin HPP_201105_COB
      pnlactualiza: TPanel;
      btnActualizar: TBitBtn;
      sttitulo: TStaticText;
      BitBtn1: TBitBtn;
      GroupBox3: TGroupBox;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Panel3: TPanel;
      meestactaurges: TMaskEdit;
      GroupBox4: TGroupBox;
      Label8: TLabel;
      Panel4: TPanel;
      meestactusuact: TMaskEdit;
      Label9: TLabel;
      Panel5: TPanel;
      meestactfecaut: TMaskEdit;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      Panel6: TPanel;
      menueestaurges: TMaskEdit;
      Panel7: TPanel;
      menueestusuact: TMaskEdit;
      Panel8: TPanel;
      menueestfecaut: TMaskEdit;
      GroupBox2: TGroupBox;
      Label17: TLabel;
      Label18: TLabel;
      // inicio HPP_201105_COB
      lblNumCredito: TLabel; // HPP_201105_COB ex Label19
      // fin HPP_201105_COB
      Panel9: TPanel;
      measocodpago: TMaskEdit;
      Panel10: TPanel;
      measoapenom: TMaskEdit;
      Label20: TLabel;
      Label21: TLabel;
      // inicio HPP_201105_COB
      pnlNumCredito: TPanel; // HPP_201105_COB ex Panel11
      // fin HPP_201105_COB
      mecredid: TMaskEdit;
      // inicio HPP_201105_COB
      lblDosPuntosNumCredito: TLabel; // HPP_201105_COB ex Label22
      // fin HPP_201105_COB
      Label23: TLabel;
      Label24: TLabel;
      Panel12: TPanel;
      measocodmod: TMaskEdit;
      Label25: TLabel;
      Label26: TLabel;
      Panel13: TPanel;
      mecargo: TMaskEdit;
      Label27: TLabel;
      Label28: TLabel;
      Panel14: TPanel;
      mecresdoact: TMaskEdit;
      // inicio HPP_201105_COB
      gbAsociado: TGroupBox; // HPP_201105_COB ex GroupBox5
      // fin HPP_201105_COB
      Panel17: TPanel;
      edtBuscarDet: TEdit;
      // inicio HPP_201105_COB
      btnExcel: TBitBtn; // HPP_201105_COB ex BitBtn2
      // fin HPP_201105_COB
      btnEditar: TBitBtn;
      pprReporte: TppReport;
      ppDBPipeline1: TppDBPipeline;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      pplTitulo: TppLabel;
      pplActualizado: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppShape1: TppShape;
      ppShape2: TppShape;
      ppShape3: TppShape;
      ppShape4: TppShape;
      ppShape5: TppShape;
      ppShape6: TppShape;
      ppShape7: TppShape;
      ppShape8: TppShape;
      ppShape9: TppShape;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppShape10: TppShape;
      ppLabel18: TppLabel;
      ppShape11: TppShape;
      ppLabel19: TppLabel;
      ppLine1: TppLine;
      pplImpresopor: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      pplUnipro: TppLabel;
      pplAsociados: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      pplCantidad: TppLabel;
// inicio HPP_201105_COB
      pcPrincipal: TPageControl;
      tsSinAutDscto: TTabSheet;
      tsCastigadosFSC: TTabSheet;
      dbgFSC: TwwDBGrid;
      pprReporte1: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppShape12: TppShape;
      ppShape13: TppShape;
      ppShape14: TppShape;
      ppShape16: TppShape;
      ppShape17: TppShape;
      ppShape18: TppShape;
      ppShape19: TppShape;
      ppShape20: TppShape;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable6: TppSystemVariable;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      pplTitulo1: TppLabel;
      pplActualizado1: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppShape21: TppShape;
      ppLabel45: TppLabel;
      ppShape22: TppShape;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      pplUnipro1: TppLabel;
      pplAsociados1: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      pplImpresopor1: TppLabel;
      ppLine2: TppLine;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      pplCantidad1: TppLabel;
      ppDBPipeline2: TppDBPipeline;
      Panel15: TPanel;
      meCuotaPactada: TMaskEdit;
      lblCuotaPactada: TLabel;
    rgGestion: TRadioGroup;
// fin HPP_201105_COB
//
      Procedure FormActivate(Sender: TObject);
      Procedure dblcduniproExit(Sender: TObject);
      Procedure btnprocesarClick(Sender: TObject);
      Procedure dblcdasotipidExit(Sender: TObject);
      Procedure btnCerrarClick(Sender: TObject); // HPP_201105_COB ex btncerrarClick
      Procedure BitBtn1Click(Sender: TObject);
      Procedure btnActualizarClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtBuscarDetChange(Sender: TObject);
      Procedure edtBuscarDetKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtBuscarDetClick(Sender: TObject);
      Procedure rgGestionClick(Sender: TObject);
      Procedure btnExcelClick(Sender: TObject); // HPP_201105_COB ex BitBtn2Click
      Procedure btnEditarClick(Sender: TObject);
      Procedure btnImprimirClick(Sender: TObject);
      Procedure dbgprocesarDblClick(Sender: TObject);
// inicio HPP_201105_COB
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
// fin HPP_201105_COB
   Private
// inicio HPP_201105_COB
      Procedure activarControles(IEstado: boolean);
// fin HPP_201105_COB
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FAutDesxGes: TFAutDesxGes;

Implementation

Uses COBDM1;

{$R *.dfm}

Procedure TFAutDesxGes.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin

   If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
   pnlactualiza.Visible := False;

   xsql := 'SELECT UPROID, UPRONOM FROM APO102';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSql);
   DM1.cdsUPro.Open;
   dblcdunipro.Selected.Clear;
   dblcdunipro.Selected.Add('UPROID'#9'3'#9'Código'#9#9);
   dblcdunipro.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);

   xSql := 'SELECT ASOTIPID,ASOTIPDES FROM APO107';
   DM1.cdsTAso.Close;
   DM1.cdsTAso.DataRequest(xSQL);
   DM1.cdsTAso.Open;
   dblcdasotipid.Selected.Clear;
   dblcdasotipid.Selected.Add('ASOTIPID'#9'2'#9'Código'#9#9);
   dblcdasotipid.Selected.Add('ASOTIPDES'#9'15'#9'Descripción'#9#9);
// inicio HPP_201105_COB
   pcPrincipal.Enabled := False;
   pcPrincipal.ActivePage := tsSinAutDscto;
// fin HPP_201105_COB

End;

Procedure TFAutDesxGes.dblcduniproExit(Sender: TObject);
Begin
   If DM1.cdsUPro.Locate('UPROID', dblcdunipro.Text, []) Then
      medesunipro.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString
   Else
   Begin
      dblcdunipro.Text := '';
      medesunipro.Text := '';
   End;
End;

Procedure TFAutDesxGes.btnprocesarClick(Sender: TObject);
Var
   xSql: String;
Begin
// inicio HPP_201105_COB
   If (dblcdunipro.Text = '') Or (dblcdasotipid.Text = '') Then
   Begin
      MessageDlg('Debe ingresar La Unidad de Proceso y el Tipo de Asociado.', mtInformation, [mbOk], 0);
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   // SE AGREGO LA LINEA :  '   AND B.AUTDESGES = 'N'
   // PORQUE LA CONSULTA ES MUY PESADA PARA CARGAR TODA LA DATA, CUANDO NUNCA SE MUESTRAN LOS QUE TIENEN UN
   // ESTADO DISTINTO A 'N', XQ EXISTE UN FILTRO LINEAS ABAJO, QUE OCULTA A TODOS LOS QUE NO SON = 'N'

   xSql := 'SELECT A.ASOID, A.ASODNI, A.ASOCODMOD, A.CARGO, A.ASOCODPAGO, A.ASOAPENOM, B.CREDID, B.CRESDOACT, '
      + '        B.CRECUOTA, NVL(B.AUTDESGES, ''N'') AUTDESGES, B.USUDESGES, B.FECHORDESGES '
      + '   FROM (SELECT ASOID, ASODNI, ASOCODMOD, CARGO, ASOCODPAGO, ASOAPENOM '
      + '            FROM APO201 '
      + '           WHERE ASOTIPID = ' + QuotedStr(dblcdasotipid.Text)
      + '             AND UPROID = ' + QuotedStr(dblcdunipro.Text)
      + '             AND NVL(FALLECIDO, ''N'') = ''N'') A, '
      + '        (SELECT ASOID, CREDID, CRESDOACT, CRECUOTA, AUTDESGES, USUDESGES, FECHORDESGES '
      + '            FROM CRE301  '
      + '           WHERE CREESTID = ''02'' '
      + '             AND NVL(AUTDESCRE, ''N'') = ''N'' '
      + '             AND NVL(AUTDESGES, ''N'') = ''N'') B '
      + '  WHERE A.ASOID = B.ASOID '
      + '  ORDER BY A.ASODNI';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   dbgprocesar.Selected.Clear;
   dbgprocesar.Selected.Add('ASODNI'#9'10'#9'DNI~del asociado'#9#9);
   dbgprocesar.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.~del asociado'#9#9);
   dbgprocesar.Selected.Add('CARGO'#9'8'#9'Código~cargo'#9#9);
   dbgprocesar.Selected.Add('ASOCODPAGO'#9'10'#9'Código~de pago'#9#9);
   dbgprocesar.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos y Nombre(s)'#9#9);
   dbgprocesar.Selected.Add('CREDID'#9'15'#9'Número de~credito'#9#9);
   dbgprocesar.Selected.Add('CRESDOACT'#9'12'#9'Saldo~actual'#9#9);
   dbgprocesar.Selected.Add('CRECUOTA'#9'12'#9'Cuota del~Crédito'#9#9);
   dbgprocesar.Selected.Add('AUTDESGES'#9'11'#9'Autorizado~por gestión'#9#9);
   dbgprocesar.Selected.Add('USUDESGES'#9'11'#9'Usuario que~registra'#9#9);
   dbgprocesar.Selected.Add('FECHORDESGES'#9'20'#9'Fecha y hora~del registro'#9#9);
   dbgprocesar.ApplySelected;
   dbgprocesar.GroupFieldName := 'ASODNI';
   TNumericField(DM1.cdsReporte.FieldByName('CRESDOACT')).DisplayFormat := '##,##0.00';
   dbgprocesar.ColumnByName('ASOCODMOD').FooterValue := FloatToStrF(DM1.cdsReporte.RecordCount, ffNumber, 5, 0);
   xSql := 'AUTDESGES = ''N''';
   DM1.cdsReporte.Filtered := False;
   DM1.cdsReporte.Filter := '';
   DM1.cdsReporte.Filter := xSql;
   DM1.cdsReporte.Filtered := True;
   dbgprocesar.ColumnByName('ASODNI').FooterValue := 'REGISTROS :';
   dbgprocesar.ColumnByName('ASOCODMOD').FooterValue := FloatToStrF(DM1.cdsReporte.RecordCount, ffNumber, 5, 0);

   DM1.cdsReporte.IndexFieldNames := 'ASOAPENOM';
   DM1.cdsReporte.First;

   //cargar el grid con los castigados por fsc que aun tienen saldo pendiente
   
   xSql := 'SELECT A.ASOID, A.ASODNI, A.ASOCODMOD, A.CARGO, A.ASOCODPAGO, A.ASOAPENOM, '
      + '       (NVL(B.IMP_APL_FSC, 0) - NVL(B.IMP_COB_FSC, 0)) SALACT, B.CRECUOENV, '
      + '       NVL(B.AUTDESGES, ''N'') AUTDESGES, B.USUDESGES, B.FECHORDESGES '
      + '  FROM (SELECT ASOID, ASODNI, ASOCODMOD, CARGO, ASOCODPAGO, ASOAPENOM '
      + '          FROM APO201 '
      + '         WHERE ASOTIPID = ' + QuotedStr(dblcdasotipid.Text)
      + '           AND UPROID = ' + QuotedStr(dblcdunipro.Text)
      + '           AND NVL(FALLECIDO, ''N'') = ''N'' ';
   if dblcdasotipid.Text='CE' then
      xSQL := xSQL+ '           AND REGPENID=''01'' '; // sólo Régimen de Pensión 20530
   xSQL := xSQL+ '        ) A, '
      + '       (SELECT ASOID, IMP_APL_FSC, IMP_COB_FSC, CRECUOENV, AUTDESGES, USUDESGES, FECHORDESGES '
      + '          FROM COB_FSC_DEUDA_FSC_CAB '
      + '         WHERE ID_EST_FSC  IN (''02'',''27'') '
      //+ '           AND NVL(AUTDESGES, ''N'') = ''N'' '
      + '           AND (NVL(IMP_APL_FSC, 0) - NVL(IMP_COB_FSC, 0)) > 0) B '
      + ' WHERE A.ASOID = B.ASOID '
      + ' ORDER BY A.ASODNI';

   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSql);
   DM1.cdsQry2.Open;
   dbgFSC.DataSource := DM1.dsQry2;
   dbgFSC.Selected.Clear;
   dbgFSC.Selected.Add('ASODNI'#9'10'#9'DNI~del asociado'#9#9);
   dbgFSC.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.~del asociado'#9#9);
   dbgFSC.Selected.Add('CARGO'#9'8'#9'Código~cargo'#9#9);
   dbgFSC.Selected.Add('ASOCODPAGO'#9'10'#9'Código~de pago'#9#9);
   dbgFSC.Selected.Add('ASOAPENOM'#9'45'#9'Apellidos y Nombre(s)'#9#9);
   dbgFSC.Selected.Add('SALACT'#9'12'#9'Saldo~actual'#9#9);
   dbgFSC.Selected.Add('CRECUOENV'#9'12'#9'Cuota a Cobrar'#9#9);
   dbgFSC.Selected.Add('AUTDESGES'#9'11'#9'Autorizado~por gestión'#9#9);
   dbgFSC.Selected.Add('USUDESGES'#9'11'#9'Usuario que~registra'#9#9);
   dbgFSC.Selected.Add('FECHORDESGES'#9'20'#9'Fecha y hora~del registro'#9#9);
   dbgFSC.ApplySelected;
   dbgFSC.GroupFieldName := 'ASODNI';
   TNumericField(DM1.cdsQry2.FieldByName('SALACT')).DisplayFormat := '##,##0.00';
   dbgFSC.ColumnByName('ASODNI').FooterValue := 'REGISTROS :';
   dbgFSC.ColumnByName('ASOCODMOD').FooterValue := FloatToStrF(DM1.cdsQry2.RecordCount, ffNumber, 5, 0);
   //DM1.cdsQry2.Filtered := False;
   //DM1.cdsQry2.Filter := 'AUTDESGES = ''N'''; // p q se oculten los registros cuando pasan a AUTDESGES = 'S'
   //DM1.cdsQry2.Filtered := True;
   DM1.cdsQry2.IndexFieldNames := 'ASOAPENOM';
   DM1.cdsQry2.First;

   pcPrincipal.Enabled := True;
   Screen.Cursor := crDefault;
// fin HPP_201105_COB
End;

Procedure TFAutDesxGes.dblcdasotipidExit(Sender: TObject);
Begin
   If DM1.cdsTAso.Locate('ASOTIPID', dblcdasotipid.Text, []) Then
      medestipaso.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').AsString
   Else
   Begin
      dblcdasotipid.Text := '';
      medestipaso.Text := '';
   End;
End;

// inicio HPP_201105_COB
// HPP_201105_COB ex btncerrarClick, se cambio la letra "c" por "C" para respetar 
// el estandar utilizado en esta forma a la hora de colocar nombres a los controles
Procedure TFAutDesxGes.btnCerrarClick(Sender: TObject); 
Begin
  // Salir
   FAutDesxGes.Close;
End;
// Fin HPP_201105_COB

Procedure TFAutDesxGes.BitBtn1Click(Sender: TObject);
Begin
   pnlactualiza.Visible := False;

// inicio HPP_201105_COB
   activarControles(true);
// fin HPP_201105_COB
End;

Procedure TFAutDesxGes.btnActualizarClick(Sender: TObject);
Var
   xSql, xSi: String;

// inicio HPP_201105_COB
// validar que el monto de la cuota ingresada sea mayor que cero y que sea menor que el saldo actual.
   Function isCuotaPactadaValida(ICad: String; saldo: double): boolean;
   Var
      xCuota: double;
   Begin
      If (TryStrToFloat(ICad, xCuota)) Then
      Begin
         If (xCuota <= 0) Then
         Begin
            showmessage('El Monto de la Cuota Pactada debe ser Mayor que Cero');
            result := false;
         End
         Else
         Begin
            If (xCuota > saldo) Then
            Begin
               showmessage('El Monto de la Cuota Pactada no debe Exceder el Saldo Actual');
               result := false;
            End
            Else
               result := true;
         End;
      End
      Else
      Begin
         showmessage('Ingrese un monto valido para la Cuota Pactada!');
         result := false;
      End;
   End;
// fin HPP_201105_COB

Begin
// inicio HPP_201105_COB
// grabar el monto de la cuota pactada, la cual sera tomada en el momento de generar la planilla
   pnlactualiza.Visible := True;
   If MessageDlg('¿Seguro de actualizar la gestión ?', mtconfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      If meestactaurges.Text = 'SI' Then
         xSi := 'S'
      Else
         xSi := 'N';
      If meestactusuact.Text = 'Nulo' Then xSi := 'X';
      If pcPrincipal.ActivePage = tsSinAutDscto Then
      Begin
            // Guardando información actual
         xSql := 'INSERT INTO COB_AUT_DES_GES(ASOID, CREDID,AUTDESGES, USUDESGES, FECHORDESGES,USUREG, FECHORREG)'
            + ' SELECT ASOID, CREDID,AUTDESGES, USUDESGES, FECHORDESGES,' + QuotedStr(DM1.wUsuario) + ', SYSDATE '
            + '   FROM CRE301 '
            + '  WHERE ASOID  = ' + QuotedStr(DM1.cdsReporte.FieldByName('ASOID').AsString)
            + '    AND CREDID = ' + QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            // Actualizando registro en el CRE301
         xSql := 'UPDATE CRE301 '
            + '   SET AUTDESGES    = ' + QuotedStr(Copy(menueestaurges.Text, 1, 1)) + ','
            + '       USUDESGES    = ' + QuotedStr(DM1.wUsuario) + ','
            + '       FECHORDESGES = SYSDATE'
            + ' WHERE ASOID        = ' + QuotedStr(DM1.cdsReporte.FieldByName('ASOID').AsString)
            + '   AND CREDID       = ' + QuotedStr(DM1.cdsReporte.FieldByName('CREDID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            // Actualización temporal del client
         DM1.cdsReporte.Edit;
         DM1.cdsReporte.FieldByName('AUTDESGES').AsString := menueestaurges.Text;
         DM1.cdsReporte.FieldByName('USUDESGES').AsString := DM1.wUsuario;
         DM1.cdsReporte.FieldByName('FECHORDESGES').AsString := DateToStr(date) + TimeToStr(Time);
         DM1.cdsReporte.Post;
         dbgprocesar.ColumnByName('ASOCODMOD').FooterValue := FloatToStrF(DM1.cdsReporte.RecordCount, ffNumber, 5, 0);
      End
      Else
      Begin
         If (Not isCuotaPactadaValida(meCuotaPactada.Text, DM1.cdsQry2.FieldByName('SALACT').AsFloat)) Then
         Begin
            meCuotaPactada.Focused;
            exit;
         End;

            // Guardando información actual
         xSql := 'INSERT INTO COB_AUT_DES_GES(ASOID, CREDID,AUTDESGES, USUDESGES, FECHORDESGES,USUREG, FECHORREG, ORIDAT)'
            + ' SELECT ASOID, NULL, AUTDESGES, USUDESGES, FECHORDESGES,' + QuotedStr(DM1.wUsuario) + ', SYSDATE, ''FSC'' '
            + '   FROM COB_FSC_DEUDA_FSC_CAB '
            + '  WHERE ASOID  = ' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            // Actualizando registro en el CRE301
         xSql := 'UPDATE COB_FSC_DEUDA_FSC_CAB '
            + '   SET AUTDESGES    = ' + QuotedStr(Copy(menueestaurges.Text, 1, 1)) + ','
            + '       USUDESGES    = ' + QuotedStr(DM1.wUsuario) + ','
            + '       FECHORDESGES = SYSDATE, '
            + '       CRECUOENV = ' + meCuotaPactada.Text
            + ' WHERE ASOID        = ' + QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            // Actualización temporal del client
         DM1.cdsQry2.Edit;
         DM1.cdsQry2.FieldByName('AUTDESGES').AsString := menueestaurges.Text;
         DM1.cdsQry2.FieldByName('USUDESGES').AsString := DM1.wUsuario;
         DM1.cdsQry2.FieldByName('FECHORDESGES').AsString := DateToStr(date) + TimeToStr(Time);
         DM1.cdsQry2.FieldByName('CRECUOENV').AsString := meCuotaPactada.Text;
         DM1.cdsQry2.Post;
         dbgprocesar.ColumnByName('ASOCODMOD').FooterValue := FloatToStrF(DM1.cdsQry2.RecordCount, ffNumber, 5, 0);

      End;
      MessageDlg('El registro ha sido actualizado', mtInformation, [mbOk], 0);
      pnlactualiza.Visible := False;
      activarControles(true);
   End;
// fin HPP_201105_COB
End;

Procedure TFAutDesxGes.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
End;

Procedure TFAutDesxGes.edtBuscarDetChange(Sender: TObject);
Begin
   If Length(Trim(edtBuscarDet.Text)) > 0 Then
      DM1.cdsReporte.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscarDet.Text)]), [loPartialKey]);
End;

Procedure TFAutDesxGes.edtBuscarDetKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      If Length(Trim(edtBuscarDet.Text)) > 0 Then
      Begin
         edtBuscarDet.Text := '';
         dbgprocesar.SetFocus;
      End
      Else
      Begin
         MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError, [mbOk], 0);
         edtBuscarDet.SetFocus;
      End;
   End;
End;

Procedure TFAutDesxGes.edtBuscarDetClick(Sender: TObject);
Begin
   DM1.cdsReporte.IndexFieldNames := 'ASOAPENOM';
   DM1.cdsReporte.First;
End;

Procedure TFAutDesxGes.rgGestionClick(Sender: TObject);
Var
   xSql: String;
Begin
   If DM1.cdsReporte.Active = False Then Exit;
   If rgGestion.ItemIndex = 0 Then xSql := 'AUTDESGES = ''N''';
   If rgGestion.ItemIndex = 1 Then xSql := 'AUTDESGES = ''S''';
   If rgGestion.ItemIndex = 2 Then xSql := '';
   DM1.cdsReporte.Filtered := False;
   DM1.cdsReporte.Filter := '';
   DM1.cdsReporte.Filter := xSql;
   DM1.cdsReporte.Filtered := True;
   dbgprocesar.ColumnByName('ASOCODMOD').FooterValue := FloatToStrF(DM1.cdsReporte.RecordCount, ffNumber, 5, 0);
End;

Procedure TFAutDesxGes.btnExcelClick(Sender: TObject);  // HPP_201105_COB ex BitBtn2Click
Begin
// inicio HPP_201105_COB
// exportar a excel Excel
   If DM1.cdsReporte.Active = False Then
   Begin
      MessageDlg('Seleccione La Unidad de Proceso y el Tipo de Asociado a procesar.', mtInformation, [mbOk], 0);
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   If pcPrincipal.ActivePage = tsSinAutDscto Then
   Begin
      If (DM1.cdsReporte.RecordCount = 0) Then
      Begin
         MessageDlg('No hay registros para exportar', mtInformation, [mbOk], 0);
         Exit;
      End;
      With dbgprocesar, dbgprocesar.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'Res_Gesdom.slk';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgprocesar.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
   End
   Else
   Begin
      If (DM1.cdsQry2.RecordCount = 0) Then
      Begin
         MessageDlg('No hay registros para exportar', mtInformation, [mbOk], 0);
         Exit;
      End;
      With dbgFSC, dbgFSC.ExportOptions Do
      Begin
         ExportType := wwgetSYLK;
         FileName := 'Res_GesdomFSC.slk';
         Save;
         If Not (esoClipboard In Options) Then
            ShellExecute(Handle, 'Open', PChar(dbgFSC.exportoptions.Filename), Nil, Nil, sw_shownormal);
      End;
   End;
   Screen.Cursor := crDefault;
// fin HPP_201105_COB
End;

Procedure TFAutDesxGes.btnEditarClick(Sender: TObject);
Begin
   If DM1.cdsReporte.Active = False Then
   Begin
      MessageDlg('Seleccione La Unidad de Proceso y el Tipo de Asociado a procesar.', mtInformation, [mbOk], 0);
      Exit;
   End;

// inicio HPP_201105_COB
   If pcPrincipal.ActivePage = tsSinAutDscto Then
   Begin
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No hay registros para actualizar', mtInformation, [mbOk], 0);
         Exit;
      End;
        // Datos actuales
      If Trim(DM1.cdsReporte.FieldByName('USUDESGES').AsString) = '' Then
      Begin
         meestactaurges.Text := 'X';
         meestactusuact.Text := 'Nulo';
         meestactfecaut.Text := 'Nulo'
      End
      Else
      Begin
         meestactaurges.Text := DM1.cdsReporte.FieldByName('AUTDESGES').AsString;
         meestactusuact.Text := DM1.cdsReporte.FieldByName('USUDESGES').AsString;
         meestactfecaut.Text := DM1.cdsReporte.FieldByName('FECHORDESGES').AsString;
      End;

      If DM1.cdsReporte.FieldByName('AUTDESGES').AsString = 'S' Then
      Begin
         sttitulo.Caption := 'DESAUTORIZACIÓN COBRANZA POR GESTIÓN';
         menueestaurges.Text := 'N';
      End
      Else
      Begin
         sttitulo.Caption := 'AUTORIZACIÓN COBRANZA POR GESTIÓN';
         menueestaurges.Text := 'S';
      End;

      menueestusuact.Text := DM1.wUsuario;
      menueestfecaut.Text := DateToStr(Date);

      pnlactualiza.Top := 83;
      pnlactualiza.Left := 96;
      pnlactualiza.Visible := True;

      measocodmod.Text := DM1.cdsReporte.FieldByName('ASOCODMOD').AsString;
      measoapenom.Text := DM1.cdsReporte.FieldByName('ASOAPENOM').AsString;
      mecredid.Text := DM1.cdsReporte.FieldByName('CREDID').AsString;
      mecargo.Text := DM1.cdsReporte.FieldByName('CARGO').AsString;
      measocodpago.Text := DM1.cdsReporte.FieldByName('ASOCODPAGO').AsString;
      mecresdoact.Text := FloatToStrF(DM1.cdsReporte.FieldByName('CRESDOACT').AsFloat, ffNumber, 10, 2);

      mecredid.Visible := true;
      lblNumCredito.Visible := true;
      lblDosPuntosNumCredito.Visible := true;
      pnlNumCredito.Visible := true;
      lblCuotaPactada.Visible := false;
      meCuotaPactada.Visible := false;

   End
   Else
   Begin
      If DM1.cdsQry2.RecordCount = 0 Then
      Begin
         MessageDlg('No hay registros para actualizar', mtInformation, [mbOk], 0);
         Exit;
      End;
        // Datos actuales
      If Trim(DM1.cdsQry2.FieldByName('USUDESGES').AsString) = '' Then
      Begin
         meestactaurges.Text := 'X';
         meestactusuact.Text := 'Nulo';
         meestactfecaut.Text := 'Nulo'
      End
      Else
      Begin
         meestactaurges.Text := DM1.cdsQry2.FieldByName('AUTDESGES').AsString;
         meestactusuact.Text := DM1.cdsQry2.FieldByName('USUDESGES').AsString;
         meestactfecaut.Text := DM1.cdsQry2.FieldByName('FECHORDESGES').AsString;
      End;

      (*  esto es en el caso de se desautorize
      If DM1.cdsQry2.FieldByName('AUTDESGES').AsString = 'S' Then
      Begin
         sttitulo.Caption := 'DESAUTORIZACIÓN COBRANZA POR GESTIÓN - FSC';
         menueestaurges.Text := 'N';
      End
      Else
      Begin
         sttitulo.Caption := 'AUTORIZACIÓN COBRANZA POR GESTIÓN - FSC';
         menueestaurges.Text := 'S';
      End;
      *)

      sttitulo.Caption := 'AUTORIZACIÓN COBRANZA POR GESTIÓN - FSC';
      menueestaurges.Text := 'S';


      menueestusuact.Text := DM1.wUsuario;
      menueestfecaut.Text := DateToStr(Date);

      pnlactualiza.Top := 83;
      pnlactualiza.Left := 96;
      pnlactualiza.Visible := True;

      measocodmod.Text := DM1.cdsQry2.FieldByName('ASOCODMOD').AsString;
      measoapenom.Text := DM1.cdsQry2.FieldByName('ASOAPENOM').AsString;
        //mecredid.Text := DM1.cdsQry2.FieldByName('CREDID').AsString;
      mecargo.Text := DM1.cdsQry2.FieldByName('CARGO').AsString;
      measocodpago.Text := DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString;
      mecresdoact.Text := FloatToStrF(DM1.cdsQry2.FieldByName('SALACT').AsFloat, ffNumber, 10, 2);
      meCuotaPactada.Text := FloatToStrF(DM1.cdsQry2.FieldByName('CRECUOENV').AsFloat, ffNumber, 10, 2);

      mecredid.Visible := false;
      lblNumCredito.Visible := false;
      lblDosPuntosNumCredito.Visible := false;
      pnlNumCredito.Visible := false;
      lblCuotaPactada.Visible := true;
      meCuotaPactada.Visible := true;

   End;
   activarControles(false);
// fin HPP_201105_COB
End;

Procedure TFAutDesxGes.btnImprimirClick(Sender: TObject);
Begin
   If DM1.cdsReporte.Active = False Then
   Begin
     MessageDlg('Seleccione La Unidad de Proceso y el Tipo de Asociado a procesar.', mtInformation, [mbOk], 0);
     Exit;
   End;
// inicio HPP_201105_COB
   Screen.Cursor := crHourGlass;
   If pcPrincipal.ActivePage = tsSinAutDscto Then
   Begin
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No hay registros para imprimir', mtInformation, [mbOk], 0);
         Exit;
      End;
      pplImpresopor.Caption := 'IMPRESO POR : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
      pplUnipro.Caption := medesunipro.Text;
      pplAsociados.Caption := medestipaso.Text;
      pplCantidad.Caption := IntToStr(DM1.cdsReporte.RecordCount);
      pprReporte.Print;
   End
   Else
   Begin
      If DM1.cdsQry2.RecordCount = 0 Then
      Begin
         MessageDlg('No hay registros para imprimir', mtInformation, [mbOk], 0);
         Exit;
      End;
      pplImpresopor1.Caption := 'IMPRESO POR : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
      pplUnipro1.Caption := medesunipro.Text;
      pplAsociados1.Caption := medestipaso.Text;
      pplCantidad1.Caption := IntToStr(DM1.cdsQry2.RecordCount);
      pprReporte1.Print;
   End;
   Screen.Cursor := crDefault;
// fin HPP_201105_COB
End;

Procedure TFAutDesxGes.dbgprocesarDblClick(Sender: TObject);
Begin
   OnClick(btnEditar);
End;

Procedure TFAutDesxGes.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
// inicio HPP_201105_COB
   DM1.cdsQry2.Close;
   DM1.cdsQry2.Filter := '';
   DM1.cdsQry2.IndexFieldNames := '';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter := '';
   DM1.cdsReporte.IndexFieldNames := '';

   DM1.cdsTAso.Close;
   DM1.cdsTAso.Filter := '';
   DM1.cdsTAso.IndexFieldNames := '';

   DM1.cdsUPro.Close;
   DM1.cdsUPro.Filter := '';
   DM1.cdsUPro.IndexFieldNames := '';

   Action := caFree;
// fin HPP_201105_COB
End;

Procedure TFAutDesxGes.activarControles(IEstado: boolean);
Begin
// inicio HPP_201105_COB
   pcPrincipal.Enabled := IEstado;
   gbSeleccion.Enabled := IEstado;
   rgGestion.Enabled := IEstado;
   gbAsociado.Enabled := IEstado;
   btnEditar.Enabled := IEstado;
   btnExcel.Enabled := IEstado;
   btnImprimir.Enabled := IEstado;
   btnCerrar.Enabled := IEstado;
// fin HPP_201105_COB
End;

End.

