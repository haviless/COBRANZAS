Unit COBD11;

// Inicio Uso Estándares:   01/08/2011
// Unidad               :   COBD11
// Formulario           :   RefiSeleAso
// Fecha de Creación    :   01/01/2011
// Autor                :   Hugo Noriega
// Objetivo             :   Refinanciar los créditos con deuda

// Actualizaciones      :
//////////////////////////////////////////////////////////////////////
// HPP_200903_COB (F1)
// forma modificada en HPP_200903_COB(F1) por Hugo Noriega
// el cambio se debe considerar como una forma nueva ya que
// el acceso se realiza desde el menú principal
// desde las opciones de:
//       Solicitud de Refinanciados (COBD12) FRefiBusca con parámetro 'S'
//       Aprobación de Refinanciados (COBD12) FRefiBusca  con parámetro 'A'
//////////////////////////////////////////////////////////////////////
// HPP_200908_COB - HNORIEGA
//////////////////////////////////////////////////////////////////////
// HPP_200916_COB - SAR 2009-0502 - DAD HN-2009-0118
// realizado por: HUGO NORIEGA 18/06/2009
// Se cambia modalidad de evaluación de categoría a días de vencimiento
// mayor a 9.
//////////////////////////////////////////////////////////////////////
// HPP_200923_COB Memorándum 686-2009-DM-COB - SAR2009-0593 - DAD-JD-2009-0117
//////////////////////////////////////////////////////////////////////
// HPP_201121_COB
// realizado por: HUGO NORIEGA 08/09/2011
// Se cambia Metodo calculo de dias de atraso.
// Ahora el calculo se realiza EN LINEA a la fecha de Refinanciación
// ya no se toma la calificación de la Cartera
//////////////////////////////////////////////////////////////////////
// HPP_201122_COB
// Se ajusta para que no lea los datos de la cartera, sólo del cálculo con la fecha vcmto de la cuota (CRE302)
// Pase a Producción: Se ha asignado el número HPP_201122_COB

// DPP_201202_COB : Se realiza el pase a partir del HPC_201205
// HPC_201216_COB : Restricciones para no mas de 2 refinanciados
// DPP_201210_COB : Se realiza el pase a partir del HPC_201216
// SPP_201401_COB : Aplicación de restricción en la operación de refinanciamiento;
// HPC_201402_COB : No permitir refinanciación a los créditos con % de tasa de desgravamen > 0.
// SPP_201402_COB : Se realiza el pase a producción a partir del HPC_201402_COB
// HPC_201503_COB : Modificar la Refinanciación Individual
// HPC_201510_COB : Retirar las restricción de las operaciones de refinanciamiento a las cuentas con atraso ENTRE 0-8 DÍAS.
// HPC_201703_COB : Mensaje de alerta para operaciones de refinanciamiento descuento vía ONP ,MEMO 1072-2016-DM-CO
Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Db,
   DBClient, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
   IdFTP, ComCtrls, IniFiles, fcButton, fcImgBtn, fcShapeBtn, ppBands,
   ppStrtch, ppMemo, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm, ppRelatv,
   ppProd, ppReport;

Type
   TfRefiSeleAso = Class(TForm)
      gpbDatos: TGroupBox;
      EdtCodMod: TEdit;
      Label1: TLabel;
      GroupBox2: TGroupBox;
      BitSalir: TBitBtn;
      BitBuscar: TBitBtn;
      bFirma: TBevel;
      bFoto: TBevel;
      ImagAso: TImage;
      BitReprograma: TBitBtn;
      Panel2: TPanel;
      Label2: TLabel;
      EdtNomGen: TEdit;
      Panel1: TPanel;
      Label3: TLabel;
      Label5: TLabel;
      Label9: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      EdtDNI: TEdit;
      EdtCtaAho: TEdit;
      EdtSitCta: TEdit;
      EdtSitDes: TEdit;
      EdtNumRes: TEdit;
      EdtFecRes: TEdit;
      EdtCodUse: TEdit;
      EdtDesUse: TEdit;
      BitGenCrono: TBitBtn;
      ImaFirma: TImage;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      TabSheet2: TTabSheet;
      dtgPrestamos: TwwDBGrid;
      dtgHistoricos: TwwDBGrid;
      BitBtn1: TBitBtn;
      BitAnulaRep: TBitBtn;
      BitMstApo: TfcShapeBtn;
      Panel3: TPanel;
      BitAsociado: TBitBtn;
      Label8: TLabel;
      EdtCodLug: TEdit;
      EdtDesLug: TEdit;
      Label10: TLabel;
      edtLiquidado: TEdit;
      EdtTipAso: TEdit;
      EdtDesAso: TEdit;
      Label4: TLabel;
      BitAutDes: TBitBtn;
      rpCartaAutDes: TppReport;
      ppHeaderBand1: TppHeaderBand;
      lblFechaCarta: TppLabel;
      ppMemo1: TppMemo;
      ppLabel119: TppLabel;
      ppMemo3: TppMemo;
      lblNombresa: TppLabel;
      lblAsoDnia: TppLabel;
      ppLabel124: TppLabel;
      ppLabel125: TppLabel;
      ppLabel126: TppLabel;
      lblDirReg01: TppLabel;
      lblDirReg02: TppLabel;
      lblDirReg03: TppLabel;
      lblCargo: TppLabel;
      lblDireccion: TppLabel;
      lblTelefono: TppLabel;
      lblDirReg04: TppLabel;
      lblDirReg05: TppLabel;
      lblMonto: TppLabel;
      lblMonCuo: TppLabel;
      lblPlazo: TppLabel;
      lblNunLetras: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      IdFTP1: TIdFTP;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure EdtCodModKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitBuscarClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure dtgPrestamosDblClick(Sender: TObject);
      Procedure dtgPrestamosKeyPress(Sender: TObject; Var Key: Char);
      Procedure dtgPrestamosDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure EdtCodModChange(Sender: TObject);
      Procedure BitReprogramaClick(Sender: TObject);
      Procedure BitGenCronoClick(Sender: TObject);
      Procedure ImaFirmaClick(Sender: TObject);
      Procedure ImagAsoClick(Sender: TObject);
      Procedure PageControl1Change(Sender: TObject);
      Procedure dtgHistoricosDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure BitAnulaRepClick(Sender: TObject);
      Procedure BitMstApoClick(Sender: TObject);
      Procedure BitAsociadoClick(Sender: TObject);
      Procedure dtgHistoricosDblClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure BitAutDesClick(Sender: TObject);
   Private
    { Private declarations }
      Function Busca302(xAsoId, xCreDid: String): String;
      Procedure Botones(xLogic: Boolean);
      Procedure AnulaCuoAct(xAsoId, xCreDid, xCreCuota, xCnd: String);
      Procedure AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, xCnd: String; tCremtoCob: Currency);
      Function Busca310(xAsoId, xCreDid: String): String;
      Procedure ControlaBotones;
   Public
    { Public declarations }

      Procedure CrgPrestamos();
      Procedure LimPrestamos();
      Procedure BorraFotos();
      Procedure CrgPrestamosHis();
      Procedure LImPrestamosHis();
      Procedure AnulaPrestamo(xAsoId, xCreDid, xNroNabo, xFecPre, xCnd: String);
      Procedure AnulaAct(xAsoId, xCreDid, xCnd: String);
      Procedure LimpiaDatosRef;
      Procedure CrgDatosRef;

   End;

Var
   fRefiSeleAso: TfRefiSeleAso;

Implementation

Uses COBDM1, COB902, COB903, COB905, COB907, COB913, COB915, COB914,
   CRE908, COB943, COB959, COB979, COBD06, COBD08, COBD10, CRE944, COB906, COB001,
  COB901;

{$R *.dfm}

Procedure TfRefiSeleAso.BitSalirClick(Sender: TObject);
Begin
   DM1.cdsAso.Close;
   Close;
End;

Procedure TfRefiSeleAso.FormActivate(Sender: TObject);
Begin
   LimPrestamos;
   EdtCodMod.SetFocus;
End;

Procedure TfRefiSeleAso.EdtCodModKeyPress(Sender: TObject; Var Key: Char);
Var
   xCondicion: String;
Begin
   If Key = #13 Then
   Begin
      BorraFotos;
      ImagAso.Visible := False;
      ImaFirma.Visible := False;
      If Length(Trim(EdtCodMod.Text)) > 10 Then
      Begin
         MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
         EdtCodMod.Text := '';
         Exit;
      End;

      EdtCodMod.Text := Format('%.10d', [StrToInt(EdtCodMod.Text)]);
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest('Select * From APO201 Where ASOCODMOD LIKE ' + QuotedStr(Trim(EdtCodMod.Text) + '%'));
      DM1.cdsAso.Open;
      If DM1.cdsAso.RecordCount = 1 Then
      Begin
         DM1.xSgr := '1';

         DM1.CargaImagenesDNI(trim(DM1.cdsAso.FieldByName('ASODNI').AsString), 'Refinan');

         LimpiaDatosRef;
         CrgDatosRef;
         PageControl1.TabIndex := 0;
      End
      Else
      Begin
         If DM1.cdsAso.RecordCount > 1 Then
         Begin
            DM1.xSgr := '0';
            // Inicio HPC_201503_COB
            LimpiaDatosRef;
            //DM1.LimpiaDatos;
            // Fin HPC_201503_COB
            fSeleccion := TfSeleccion.create(self);
            fSeleccion.BitMostrar.Enabled := False;
            fSeleccion.edtBuscar.Text := EdtCodMod.Text;
            fSeleccion.edtBuscar.ReadOnly := True;
            fSeleccion.rbtDni.Enabled := False;
            fSeleccion.rbtCuenta.Enabled := False;
            fSeleccion.rbtCodMod.Enabled := False;
            fSeleccion.rbtApeNom.Enabled := False;
            fSeleccion.Showmodal;
            fSeleccion.free;
         End
         Else
         Begin
            // Inicio HPC_201503_COB
            LimpiaDatosRef;
            //DM1.LimpiaDatos;
            // Fin HPC_201503_COB
            LimPrestamos;
            MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
         End;
      End;
   End;
End;

Procedure TfRefiSeleAso.LimpiaDatosRef;
Begin
   If DM1.xSgr <> '0' Then EdtCodMod.Text := '';
   EdtNomGen.Text := '';
   EdtDNI.Text := '';
   EdtTipAso.Text := '';
   EdtDesAso.Text := '';
   EdtCtaAho.Text := '';
   EdtSitCta.Text := '';
   EdtSitDes.Text := '';
   EdtNumRes.Text := '';
   EdtFecRes.Text := '';
   EdtCodUse.Text := '';
   EdtDesUse.Text := '';
   EdtCodLug.Text := '';
   EdtDesLug.Text := '';
End;

Procedure TfRefiSeleAso.CrgDatosRef;
Var
   xAsoId, xCondicion: String;
Begin
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   EdtCodMod.Text := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   EdtNomGen.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   EdtDNI.Text := DM1.cdsAso.FieldByName('ASODNI').AsString;
   EdtTipAso.Text := DM1.cdsAso.FieldByName('ASOTIPID').AsString;
   EdtDesAso.Text := DM1.CrgDescrip('ASOTIPID='
      + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOTIPID').AsString)), 'APO107', 'ASOTIPDES');
   EdtCtaAho.Text := DM1.cdsAso.FieldByName('ASONCTA').AsString;
   EdtSitCta.Text := DM1.cdsAso.FieldByName('SITCTA').AsString;
   EdtSitDes.Text := DM1.CrgDescrip('SITCTAID='
      + QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)), 'COB103', 'SITCTADES');
   EdtNumRes.Text := DM1.cdsAso.FieldByName('ASORESNOM').AsString;
   EdtFecRes.Text := DM1.cdsAso.FieldByName('ASOFRESNOM').AsString;
   EdtCodUse.Text := DM1.cdsAso.FieldByName('USEID').AsString;
   xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString))
      + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString))
      + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
   EdtDesUse.Text := DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');
   EdtCodLug.Text := DM1.cdsAso.FieldByName('UPROID').AsString;
   EdtDesLug.Text := DM1.CrgDescrip('UPROID='
      + QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)), 'APO102', 'UPRONOM');
   If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE' Then
   Begin
      edtLiquidado.Text := DM1.CrgDescrip('TIPBENEF='
         + QuotedStr(Trim(DM1.CrgDescrip('ASOID='
         + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)), 'PVS301', 'PVSTIPBEN'))), 'TGE186', 'BENEFABR');
      edtLiquidado.Font.Color := clRed;
   End
   Else
   Begin
      edtLiquidado.Text := 'ACTIVO';
      edtLiquidado.Font.Color := clNavy;
   End;

   CrgPrestamos;

   If DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), 'APO201', 'ASOTIPID') = 'DO' Then
   Begin
      If DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), 'APO201', 'AUTDESAPO') = 'S' Then
      Else
      Begin
         MessageDlg('ASOCIADO NO TIENE AUTORIZACION DE DESCUENTO FIRMADA!!! ', mtWarning, [mbYes], 0);
      End;
   End;
End;

Procedure TfRefiSeleAso.BitBuscarClick(Sender: TObject);
Begin
   DM1.xSgr := 'R';
   BorraFotos;
   ImagAso.Visible := False;
   ImaFirma.Visible := False;
   LimpiaDatosRef;
   LimPrestamos;
   fSeleccion := TfSeleccion.create(self);
   fSeleccion.gbbuscar.Width := 430;
   fSeleccion.gbbuscar.Height := 40;
   fSeleccion.edtBuscar.Width := 407;
   fSeleccion.edtBuscar.Height := 28;
   fSeleccion.Showmodal;
   fSeleccion.free;
End;

Procedure TfRefiSeleAso.CrgPrestamos;
Var
   xAsoId: String;
Begin
   LimPrestamos;
   xAsoId := Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* '
      + 'FROM CRE301 a,CRE110 b '
      + 'Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId))
      + ' Order By a.CREFOTORG ');
   DM1.cdsSolicitud.Open;
   TNumericField(DM1.cdsSolicitud.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsSolicitud.fieldbyname('CRESDOACT')).DisplayFormat := '###,###.#0';
   If DM1.cdsSolicitud.RecordCount > 0 Then DM1.cdsSolicitud.Last;
End;

Procedure TfRefiSeleAso.Button1Click(Sender: TObject);
Begin
   CrgPrestamos;
End;

Procedure TfRefiSeleAso.LimPrestamos;
Begin
   DM1.cdsSolicitud.Close;
   DM1.cdsSolicitud.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* FROM CRE301 a,CRE110 b Where a.TIPCREID=b.TIPCREID AND a.ASOID =' + QuotedStr('!@#$%^&*+/*') + ' Order By a.CREFOTORG ');
   DM1.cdsSolicitud.Open;
End;

Procedure TfRefiSeleAso.dtgPrestamosDblClick(Sender: TObject);
Var
   xAsoId, xCreDid, xCreEstid, xSQL: String;
   Puntero: TBookmark;
Begin
   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xAsoId := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
   xCreEstid := DM1.cdsSolicitud.fieldbyname('CREESTID').AsString;
   Puntero := DM1.cdsSolicitud.GetBookmark;
   Case StrToInt(xCreEstid) Of
      4:
         Begin
         End;
      12:
         Begin
         End;
      13:
         Begin
         End;
      22:
         Begin
         End;
      29:
         Begin
         End;
   Else
      Begin
         DM1.EvaluaSaldos(xAsoId, xCreDid);
         CrgDatosRef;
      End;
   End;
   DM1.cdsSolicitud.GotoBookmark(Puntero);
   If Trim(DM1.cdsSolicitud.fieldbyname('CREESTID').AsString) = '02' Then
   Begin
      DM1.cdsProvin.Close;
   End;
   fCronoPag := Nil;
   fCronoPag := TfCronoPag.create(self);
   DM1.xHis := 'N';
   // Inicio HPC_201503_COB
   DM1.xSgr := 'R';
   // Fin HPC_201503_COB
   fCronoPag.LimpiaFlgvar(xAsoId, xCreDid);
   DM1.CargaCronograma(xAsoId, xCreDid);
   fCronoPag.Caption := 'Cronograma De Pagos';
   fCronoPag.Showmodal;
   fCronoPag.free;
   // Inicio HPC_201503_COB
   //DM1.xSgr := 'R';
   // Fin HPC_201503_COB
End;

Procedure TfRefiSeleAso.dtgPrestamosKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key = #13 Then
      dtgPrestamos.OnDblClick(dtgPrestamos)
End;


Procedure TfRefiSeleAso.dtgPrestamosDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '21') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '23') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '26') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '24') Then
   Begin
      dtgPrestamos.Canvas.Font.Color := clGreen;
      dtgPrestamos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '12') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '22') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '29') Then
   Begin
      dtgPrestamos.Canvas.Font.Color := $00FF5BFF;
      dtgPrestamos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '13') Or
      (DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '04') Then
   Begin
      dtgPrestamos.Canvas.Font.Color := clRed;
      dtgPrestamos.DefaultDrawDataCell(rect, Field, State);
   End;

   If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '30' Then
   Begin
      dtgPrestamos.Canvas.Font.Color := clTeal;
      dtgPrestamos.DefaultDrawDataCell(rect, Field, State);
   End;
End;

Procedure TfRefiSeleAso.BorraFotos;
Var
   search: TSearchRec;
   nFiles: integer;
Begin
   nFiles := FindFirst('C:\SOLEXES\*.JPG', faAnyFile, search);
   While nFiles = 0 Do
   Begin
      SysUtils.DeleteFile('C:\SOLEXES\' + Search.Name);
      nFiles := FindNext(Search);
   End;
   FindClose(Search);
End;

Procedure TfRefiSeleAso.EdtCodModChange(Sender: TObject);
Begin
   BorraFotos;
   If DM1.xSgr <> '1' Then
   Begin
      ImagAso.Visible := False;
      ImaFirma.Visible := False;
   End;
End;

Procedure TfRefiSeleAso.BitReprogramaClick(Sender: TObject);
Var
   xAsoId, xCreDid, xPreCre, XSQL: String;
   Boton: Integer;
   nDiasAtraso : Integer;

Begin

//INICIO SPP_201401_COB
// xSQL := 'select CREDID, CREFOTORG, CRESDOACT, NUMREFI '
//        +'  from CRE301 '
//        +' where ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
//        +'   and CREDID='+quotedstr(DM1.cdsSolicitud.FieldByName('CREDID').AsString)
//        +'   and TIPDESEID=''10'' '
//        +'   and CREESTID not in (''04'',''13'') '
//        +'   and CREFOTORG>=''01/10/2008'' '
//        +' order by CREFOTORG';
// DM1.cdsQry.Close;
// DM1.cdsQry.DataRequest(xSQL);
// DM1.cdsQry.Open;
// if DM1.cdsQry.RecordCount>0 then
// begin
//    if pos('R',DM1.cdsQry.FieldByName('NUMREFI').AsString)>0 then
//    begin
//       xSQL := '<< No se permite REFINANCIAR, El Asociado cuenta con 2 o más operaciones refinanciadas. '+chr(13)
//              +'    Restricción de las Políticas del Equipo de Cobranzas; vigente desde el 17/02/2012    '+char(13)
//              +'                           (Código PO-ECO, Versión: 03)>>                            ';
//       DM1.cdsQry.Close;
//       ShowMessage(xSQL);
//       exit;
//    end;
// end;
   //Inicio : HPC_201703_COB  Mensaje de alerta para operaciones de refinanciamiento descuento vía ONP ,MEMO 1072-2016-DM-CO
   xSQL:='SELECT COUNT(1) TOTAL FROM APO201 WHERE ASOTIPID=''CE'' AND REGPENID=''02'' AND ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('TOTAL').ASINTEGER>0 Then
   begin
       xSQL:='Select COUNT(1) TOTAL FROM APO201 '+
         'WHERE ASOTIPID=''CE'' ' +
         'AND REGPENID=''02'' '+
         'AND CODLEYPEN IS NOT NULL ' +
         'AND CODPENSION IS NOT NULL ' +
         'AND CODPRE IS NOT NULL '+
         'AND ASOID ='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('TOTAL').ASINTEGER>0 Then
      begin
          xSQL := 'Se encuentra APTO para el descuento de la O.N.P. Proceda con '+
               'la evaluación de la Operación de Refinanciamiento.';
          DM1.cdsQry.Close;
          ShowMessage(xSQL);
      end
      Else
      begin
          xSQL := 'No se encuentra APTO para el descuento de la O.N.P. Sírvase actualizar sus datos '+
               'en Previsión Social, sobre sus Códigos de Pensión y de Prestación.';
          DM1.cdsQry.Close;
          ShowMessage(xSQL);
          exit;
      end;
   end;
   //Fin : HPC_201703_COB  Mensaje de alerta para operaciones de refinanciamiento descuento vía ONP ,MEMO 1072-2016-DM-CO
   xSQL:='Select CREDID, CREFOTORG, CRESDOACT, NUMREFI '
        +'From CRE301 '
        +'where  ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
        +'  and TIPDESEID=''10'' '
        +'  and CREESTID not in (''04'',''13'') '
        +'Order by CREFOTORG' ;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount>=2 then
   begin
     xSQL := '<< No se permite REFINANCIAR, El Asociado cuenta con 2 o más operaciones REFIN/RECAL/REPR/ETC. '+chr(13)
            +'    Restricción de las Políticas del Equipo de Cobranzas; vigente desde el 17/02/2012    '+char(13)
            +'                           (Código PO-ECO, Versión: 03)>>                            ';
     DM1.cdsQry.Close;
     ShowMessage(xSQL);
     exit;
   end;


//FINAL SPP_201401_COB
  DM1.cdsQry.Close;
  // Inicio: SPP_201402_COB

  // Inicio HPC_201503_COB
  (*If DM1.cdsSolicitud.FieldByName('TASFONDES').AsFloat > 0 Then
     Begin
         MessageDlg('No se permite REFINANCIAR, el crédito tiene Fondo de Desgravamen', mtError, [mbOk], 0);
         Exit;
     End; *)
  // Fin HPC_201503_COB


  // Fin: SPP_201402_COB
   If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '12' Then
   Begin
      // Verifica Nivel de Usuario de la Tabla Usertable
      If DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) >= 3 Then
      Begin
         If DM1.cdsSolicitud.FieldByName('IMPCARAUT').AsString = '1' Then
         Begin
            Boton := Application.MessageBox('SEGURO DE AUTORIZAR LA REIMPRESION DE DOCUMENTOS',
               'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
            If Boton = ID_YES Then
            Begin
               xSQL := 'UPDATE CRE301 '
                  + 'SET IMPCARAUT=''0'' '
                  + 'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid)
                  + '  AND CREESTID IN (''01'',''02'') AND IMPCARAUT=''1'' ';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            End;
         End;
      End;
      fRepCronog1 := TfRepCronog1.create(self);
      fRepCronog1.lblAsociado.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString
         + ' - (' + DM1.cdsAso.FieldByName('ASOTIPID').AsString + ')';
      fRepCronog1.lblCreditos.Caption := Copy(xCreDid, 11, 5) + '-' + Copy(xCreDid, 3, 4)
         + '-' + DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(xCreDid, 7, 2)), 'CRE110', 'TIPCREDES');
      fRepCronog1.gbCab.Visible := False;
      fRepCronog1.gbDet.Visible := False;
      fRepCronog1.BitGrabar.Visible := False;
      fRepCronog1.z2bbtnImprime.Enabled := True;
      fRepCronog1.gbBoton.Top := 10;
      fRepCronog1.Height := 100;

      fRepCronog1.xCreditoIdRef := DM1.cdsSolicitud.FieldByName('CRENEWID').AsString;
      If DM1.cdsSolicitud.FieldByName('CRENEWID').AsString <> '' Then
         fRepCronog1.Showmodal
      Else
         ShowMessage('Refinanciado no tiene registrado el número del Nuevo Crédito');
      fRepCronog1.Free;
      Exit;
   End;

   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
   xPreCre := Copy(DateToStr(DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime), 7, 4) + Copy(DateToStr(DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime), 4, 2);

   If xPreCre >= Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2) Then
   Begin
      MessageDlg(' No Aplicable a Operaciones en el Mismo Mes...!! ', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.cdsSolicitud.fieldbyname('CREESTID').AsString <> '02' Then
   Begin
      MessageDlg('El Prestamo No Esta Pendiente De Pago!! ', mtError, [mbOk], 0);
      Exit;
   End;

   DM1.cdsFormaPago.Close;
   If DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'DO' Then
      DM1.cdsFormaPago.DataRequest('SELECT ID,DESCRIPCION FROM COB805 WHERE ID IN (''01'',''02'') ORDER BY ID')
   Else
      If DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'CE' Then
         DM1.cdsFormaPago.DataRequest('SELECT ID,DESCRIPCION FROM COB805 WHERE ID IN (''01'',''02'',''03'') ORDER BY ID');

   DM1.cdsFormaPago.Open;
   DM1.cdsTtransaccion.Close;
   DM1.cdsTtransaccion.DataRequest('SELECT * FROM COB101 WHERE FLGDCT=''S'' ');
   DM1.cdsTtransaccion.Open;
   xAsoId := DM1.cdsAso.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;

// Se cambia Metodo calculo de dias de atraso.
// Ahora el calculo se realiza en Linea a la fecha de Refinanciación
   xSQL:='SELECT TO_DATE(SYSDATE)-MIN(CREFVEN) DIASTRANS '
        +'FROM CRE302 '
        +'WHERE ASOID='+ QuotedStr(xAsoId)+' AND CREESTID IN (''02'',''11'',''27'',''14'',''19'')';

   DM1.cdsQry.Close;
   DM1.cdsQry.Datarequest(xSQL);
   DM1.cdsQry.Open;

   nDiasAtraso:=DM1.cdsQry.FieldByname('DIASTRANS').ASINTEGER;
   // INICIO : HPC_201510_COB
   (*
   If DM1.cdsQry.FieldByname('DIASTRANS').ASINTEGER < 9 Then
   Begin
      MessageDlg('No se puede REFINANCIAR Créditos con días de atraso entre 0 y 8, según su última Calificación.!! ', mtError, [mbOk], 0);
      Exit;
   End;
   *)
   // FIN : HPC_201510_COB
   xSQL := 'select A.*, ROWID from EVAL_REF_CAB A '
      + 'where ASOID=''' + DM1.cdsSolicitud.FieldByName('ASOID').AsString + ''' '
      + '  AND CREDID=''' + DM1.cdsSolicitud.FieldByName('CREDID').AsString + ''' AND IDRESEVAL=''0''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If cRefi = 'A' Then
   Begin
      If DM1.cdsQry.RecordCount < 1 Then
      Begin
         ShowMessage('No existen Solicitud para Refinanciar Crédito...');
         Exit;
      End;
   End;

   xSQL := 'SELECT MAX(A.CRESDOACT)-(sum(NVL(B.cremto,0)-NVL(B.cremtocob,0))) DIFE '
      + 'FROM CRE301 A, CRE302 B '
      + 'WHERE A.ASOID=' + QuotedStr(xAsoId) + ' AND A.CREDID=' + QuotedStr(xCreDid)
      + ' AND A.ASOID=B.ASOID(+) AND A.CREDID=B.CREDID(+) '
   + ' AND B.CREESTID IN (''02'',''11'',''27'',''14'',''19'') '
   + 'GROUP BY A.ASOID, A.CREDID';
   DM1.cdsQry.Close;
   DM1.cdsQry.Datarequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByname('DIFE').AsFloat <> 0 Then
   Begin
      ShowMessage('Existen inconsistencias en el Cronograma de Pago, favor de revisar');
      Exit;
   End;

   xSQL := 'SELECT ASOID FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(xAsoId)
      + ' and CREDID=' + QuotedStr(xCredid)
      + ' and CREESTID=''14'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.Datarequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      If Application.MessageBox(pChar(' El cronograma tiene Cuotas en Proceso de Cobranza ¿Continuar? '),
         'Refinanciación', MB_YESNO + MB_ICONQUESTION) = ID_NO Then
         exit;

   fRepCronog1 := TfRepCronog1.create(self);
   fRepCronog1.lblAsociado.Caption := DM1.cdsAso.FieldByName('ASOAPENOM').AsString
      + ' - (' + DM1.cdsAso.FieldByName('ASOTIPID').AsString + ')';
   fRepCronog1.lblCreditos.Caption := Copy(xCreDid, 11, 5) + '-' + Copy(xCreDid, 3, 4)
      + '-' + DM1.CrgDescrip('TIPCREID=' + QuotedStr(Copy(xCreDid, 7, 2)), 'CRE110', 'TIPCREDES');

   fRepCronog1.dbeAtraso.text:=IntToStr(nDiasAtraso);

   fRepCronog1.Showmodal;

   DM1.cdsFormaPago.Close;
   DM1.cdsTtransaccion.Close;

   If Not fRepCronog1.gbCab.Enabled Then
   Begin
      fRepCronog1.Free;
      fRefiSeleAso.Close;
   End
   Else
   Begin
      fRepCronog1.Free;
   End;
End;

Procedure TfRefiSeleAso.BitGenCronoClick(Sender: TObject);
Var
   xAsoId, xCreDid, xSQL: String;
   xInteres, xFlat, xMonto, xCuoIni: Real;
   xNumCuo, Boton: Integer;
   xFecPre, xFecDes: tDateTime;
Begin
   xAsoId := DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   xInteres := DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat;
   xFlat := DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat;
   xMonto := DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat;
   xCuoIni := DM1.cdsSolicitud.FieldByName('CUOTAINI').AsFloat;
   xNumCuo := DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger;
   xFecPre := DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime;
   xFecDes := DM1.cdsSolicitud.FieldByName('CREFDES').AsDateTime;

   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;

   If Length(Trim(DM1.cdsSolicitud.FieldByName('CREFDES').AsString)) = 0 Then
   Begin
      MessageDlg('Prestamo sin Fecha De Desembolso , No Generara Cronograma De Pagos !!! ', mtError, [mbOk], 0);
      Exit;
   End;
   If Busca302(xAsoId, xCreDid) = 'S' Then
   Begin
      MessageDlg('Imposible, Cronograma De Pagos Ya Fue Generado ...!', mtError, [mbOk], 0);
      Exit;
   End;
   Boton := Application.MessageBox('Seguro De Generar El Cronograma De Pagos ', 'Reprogramación De Cronogramas', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
      DM1.GnrCronograma(xAsoid, xCreDid, xInteres, xFlat, xMonto - xCuoIni, xFecDes, xNumCuo);
      xSQL := 'UPDATE CRE301 SET CREESTID=''02'',CREESTADO=''POR COBRAR'',CRECUOTA=' + FloattoStr(DM1.CalculaCuota(xInteres, xFlat, xMonto - xCuoIni, xNumCuo)) + ', CRESDOACT=' + FloatToStr(DM1.CalculaCuota(xInteres, xFlat, xMonto - xCuoIni, xNumCuo) * xNumCuo) + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREDID=' + QuotedStr(xCreDid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      CrgDatosRef;
      MessageDlg('Cronograma De Pagos se Genero Con Exito...!', mtInformation, [mbOk], 0);
   End;
End;

Function TfRefiSeleAso.Busca302(xAsoId, xCreDid: String): String;
Begin
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest('SELECT ASOID,CREDID,CRECUOTA '
      + 'FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(Trim(xAsoId))
      + ' AND CREDID=' + QuotedStr(Trim(xCreDid)));
   DM1.cdsCEdu.Open;
   If DM1.cdsCEdu.RecordCount > 0 Then
      Result := 'S'
   Else
      Result := 'N';

   DM1.cdsCEdu.Close;
End;

Procedure TfRefiSeleAso.ImaFirmaClick(Sender: TObject);
Begin
   If Length(Trim(EdtNomGen.Text)) = 0 Then
   Begin
      MessageDlg('Debe Seleccionar Un Asociado ...!', mtError, [mbOk], 0);
      Exit;
   End
   Else
   Begin
      DM1.xSgr := 'IDE';
      fIdentAso := TfIdentAso.Create(self);
      fIdentAso.ImagAso.Picture := ImagAso.Picture;
      fIdentAso.ImaFirma.Picture := ImaFirma.Picture;
      fIdentAso.Showmodal;
      fIdentAso.free;
   End;
End;

Procedure TfRefiSeleAso.ImagAsoClick(Sender: TObject);
Begin
   If Length(Trim(EdtNomGen.Text)) = 0 Then
   Begin
      MessageDlg('Debe Seleccionar Un Asociado ...!', mtError, [mbOk], 0);
      Exit;
   End
   Else
   Begin
      DM1.xSgr := 'IDE';
      fIdentAso := TfIdentAso.Create(self);
      fIdentAso.ImagAso.Picture := ImagAso.Picture;
      fIdentAso.ImaFirma.Picture := ImaFirma.Picture;
      fIdentAso.Showmodal;
      fIdentAso.free;
   End;
End;


Procedure TfRefiSeleAso.Botones(xLogic: Boolean);
Begin

End;

Procedure TfRefiSeleAso.PageControl1Change(Sender: TObject);
Begin
   If Length(Trim(EdtNomGen.Text)) > 0 Then
      CrgPrestamosHis
   Else
      LImPrestamosHis;
   If PageControl1.ActivePageIndex = 0 Then
   Begin
      ControlaBotones;
   End
   Else
   Begin
      BitReprograma.Enabled := False;
      BitGenCrono.Enabled := False;
      BitMstApo.Enabled := False;
      BitAnulaRep.Enabled := False;
   End;
End;

Procedure TfRefiSeleAso.CrgPrestamosHis;
Var
   xAsoId: String;
Begin
   LImPrestamosHis;
   xAsoId := Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsSolicitudA.Close;
   DM1.cdsSolicitudA.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* '
      + 'FROM PREST a,CRE110 b '
      + 'Where a.TIP_PRE=b.TIPCREID AND a.ASOID =' + QuotedStr(Trim(xAsoId))
      + ' Order By a.CREFOTORG ');
   DM1.cdsSolicitudA.Open;
   If DM1.cdsSolicitudA.RecordCount > 0 Then DM1.cdsSolicitudA.Last;
   TNumericField(DM1.cdsSolicitudA.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsSolicitudA.fieldbyname('CRESDOACT')).DisplayFormat := '###,###.#0';
End;

Procedure TfRefiSeleAso.dtgHistoricosDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '21') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '23') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '26') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '24') Then
   Begin
      dtgHistoricos.Canvas.Font.Color := clGreen;
      dtgHistoricos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '12') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '22') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '29') Then
   Begin
      dtgHistoricos.Canvas.Font.Color := $00FF5BFF;
      dtgHistoricos.DefaultDrawDataCell(rect, Field, State);
   End;

   If (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '13') Or
      (DM1.cdsSolicitudA.FieldByName('CREESTID').AsString = '04') Then
   Begin
      dtgHistoricos.Canvas.Font.Color := clRed;
      dtgHistoricos.DefaultDrawDataCell(rect, Field, State);
   End;
End;

Procedure TfRefiSeleAso.LImPrestamosHis;
Begin
   DM1.cdsSolicitudA.Close;
   DM1.cdsSolicitudA.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* '
      + 'FROM PREST a,CRE110 b '
      + 'Where a.TIP_PRE=b.TIPCREID AND a.ASOID =' + QuotedStr('#$%^&*!@+*')
      + ' Order By a.CREFOTORG ');
   DM1.cdsSolicitudA.Open;
   If DM1.cdsSolicitudA.RecordCount > 0 Then DM1.cdsSolicitudA.Last;
   TNumericField(DM1.cdsSolicitudA.fieldbyname('CREMTOOTOR')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsSolicitudA.fieldbyname('CRESDOACT')).DisplayFormat := '###,###.#0';
End;

Procedure TfRefiSeleAso.BitAnulaRepClick(Sender: TObject);
Var
   Boton: Integer;
   xAsoId, xCreDid: String;
Begin
   If (DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'AREA') = 'COB') And
      (DM1.Valores(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'USERTABLE', 'NIVEL')) < 2) Then
   Begin
      Showmessage('Solo permitida para el Nivel 2 ó superior.!');
      exit;
   End;
   If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
   If Length(Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString)) > 0 Then
   Begin
      If DM1.cdsSolicitud.FieldByName('CREESTID').AsString = '02' Then
      Begin
         Boton := Application.MessageBox('Seguro De Anular Este Prestamo Refinanciado ',
            'Refinanciación De Cronogramas', MB_YESNO + MB_ICONQUESTION);
         If Boton = ID_YES Then
         Begin
            xAsoId := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
            xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;

            If Busca310(xAsoId, xCreDid) = 'S' Then
            Begin
               MessageDlg('No se puede Anular tiene Pagos Efectuados!', mtError, [mbOk], 0);
               Exit;
            End;

            If MessageDlg('¿ Esta seguro De Anular este Prestamo ?', mtconfirmation, [mbYes, mbNo], 0) = mrYes Then
            Begin
               DM1.xSgr := 'REP';
               fMenObs := Nil;
               fMenObs := tfMenObs.Create(Self);
               fMenObs.Caption := 'Anulación De Prestamos Refinanciados';
               fMenObs.Showmodal;
               fMenObs.Free;
            End;
         End
      End
      Else
      Begin
         MessageDlg('Solo Apliacable a Prestamos Refinanciados Por Cobrar...!', mtError, [mbOk], 0);
         Exit;
      End;
   End
   Else
   Begin
      MessageDlg('Solo Apliacable a Prestamos Refinanciados...!', mtError, [mbOk], 0);
      Exit;
   End;
End;

Procedure TfRefiSeleAso.AnulaAct(xAsoId, xCreDid, xCnd: String);
Var
   xSQL: String;
Begin
   DM1.cdsAportes.Close;
   DM1.cdsAportes.DataRequest('SELECT ASOID,CREDID,CREESTID,CREESTADO,CRESDOACT,CREMENOBS FROM CRE301 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)));
   DM1.cdsAportes.Open;
   If DM1.cdsAportes.RecordCount = 1 Then
   Begin
      DM1.cdsAportes.Edit;
      DM1.cdsAportes.FieldByName('CREESTID').AsString := '13';
      DM1.cdsAportes.FieldByName('CREESTADO').AsString := 'ANULADO';
      DM1.cdsAportes.FieldByName('CRESDOACT').AsFloat := 0;
      DM1.cdsAportes.FieldByName('CREMENOBS').AsString := Trim(fMenObs.mObsDat.Lines.Text);
      DM1.cdsAportes.ApplyUpdates(0);
   End;

   DM1.cdsAportes.Close;
   DM1.cdsAportes.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREESTADO FROM CRE302 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)));
   DM1.cdsAportes.Open;
   If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      DM1.cdsAportes.First;
      While Not DM1.cdsAportes.Eof Do
      Begin
         AnulaCuoAct(DM1.cdsAportes.FieldByName('ASOID').AsString, DM1.cdsAportes.FieldByName('CREDID').AsString, DM1.cdsAportes.FieldByName('CRECUOTA').AsString, xCnd);
         DM1.cdsAportes.Next;
      End;
   End;
End;

Procedure TfRefiSeleAso.AnulaPrestamo(xAsoId, xCreDid, xNroNabo, xFecPre, xCnd: String);
Var
   tAsoid, tCreDid, tCreCuota, tEstado, xSQL: String;
   tCremtoCob: Currency;
Begin
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREFPAG,CREMTOCOB,FORPAGID,CREESTID,CREESTADO,CREESTANT,CREESTANTDES FROM CRE310 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND NRONABO=' + QuotedStr(Trim(xNroNabo)) + ' AND FORPAGID IN (''12'',''27'',''28'')  AND CREESTID<>''13'' AND  CREFPAG =To_Date(' + QuotedStr(Trim(xFecPre)) + ',''dd/mm/yyyy'') Order By CREDID,CRECUOTA ');
   DM1.cdsQry3.Open;
   If DM1.cdsQry3.RecordCount > 0 Then
   Begin
      DM1.cdsQry3.First;
      While Not DM1.cdsQry3.Eof Do
      Begin
         tAsoid := DM1.cdsQry3.FieldByName('ASOID').AsString;
         tCreDid := DM1.cdsQry3.FieldByName('CREDID').AsString;
         tCreCuota := DM1.cdsQry3.FieldByName('CRECUOTA').AsString;
         tCremtoCob := DM1.cdsQry3.FieldByName('CREMTOCOB').AsFloat;
         tEstado := Trim(DM1.cdsQry3.FieldByName('CREESTANT').AsString)
            + Trim(DM1.cdsQry3.FieldByName('CREESTANTDES').AsString);
         AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, xCnd, tCremtoCob);
         DM1.cdsQry3.Next;
      End;
      DM1.cdsQry3.First;
      While Not DM1.cdsQry3.Eof Do
      Begin
         DM1.cdsQry3.Edit;
         DM1.cdsQry3.FieldByName('CREESTID').AsString := '13';
         DM1.cdsQry3.FieldByName('CREESTADO').AsString := 'ANULADO';
         DM1.cdsQry3.Next;
      End;
      DM1.cdsQry3.ApplyUpdates(0);
      xSQL := 'UPDATE CRE301 SET CREESTID=''02'',CREESTADO=''POR COBRAR'' '
         + 'WHERE ASOID=' + QuotedStr(tAsoId) + 'AND CREDID=' + QuotedStr(tCreDid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
   DM1.cdsQry3.Close;
End;

Procedure TfRefiSeleAso.AnulaCuoAct(xAsoId, xCreDid, xCreCuota, xCnd: String);
Begin
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREESTADO '
      + 'FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid))
      + ' AND CRECUOTA=' + QuotedStr(Trim(xCreCuota)));
   DM1.cdsCuotas.Open;
   If DM1.cdsCuotas.RecordCount = 1 Then
   Begin
      DM1.cdsCuotas.Edit;
      DM1.cdsCuotas.FieldByName('CREESTID').AsString := '13';
      DM1.cdsCuotas.FieldByName('CREESTADO').AsString := 'ANULADO';
      DM1.cdsCuotas.ApplyUpdates(0);
   End;
   DM1.cdsCuotas.Close;
End;

Procedure TfRefiSeleAso.AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, xCnd: String; tCremtoCob: Currency);
Var
   xCreEstid, xCreEstado, xSQL: String;
   xCrefPag, xCrefVen, xfCalc, xfVen: String;
   xCremtoCob, xCremtoExc: Currency;
   xCreAmort, xCreInteres, xCreFlat, xCremtoInt: Currency;
Begin
   DM1.cdsAportes.Close;
   DM1.cdsAportes.DataRequest('SELECT ASOID,CREDID, CREFVEN, CRECUOTA, CREMTOCOB, CREMONLOC, CREANO, CREMES, '
      + '       CREAMORT,CREINTERES,CREFLAT,CREMONEXT,CRECAPITAL,CREMTOINT,CREMTOFLAT,FORPAGOABR,'
      + '       CREESTID,CREESTADO,NRONABO,FLGPAG,CREDIDNABO,CRESALDO, '
      + '       FNABONO,TCAMBIO,CREMTO FROM CRE302 '
      + 'WHERE ASOID=' + QuotedStr(Trim(tAsoId)) + ' AND CREDID=' + QuotedStr(Trim(tCreDid))
      + '  AND CRECUOTA=' + QuotedStr(Trim(tCreCuota)));
   DM1.cdsAportes.Open;
   If DM1.cdsAportes.RecordCount > 0 Then
   Begin
      DM1.cdsAportes.Edit;
      DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat := DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat - tCremtoCob;
      If DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat > 0 Then
      Begin
         DM1.cdsAportes.FieldByName('CREMONLOC').AsFloat := DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat;
         If DM1.cdsAportes.FieldByName('TCAMBIO').AsFloat > 0 Then
            DM1.cdsAportes.FieldByName('CREMONEXT').AsFloat := (DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat / DM1.cdsAportes.FieldByName('TCAMBIO').AsFloat)
         Else
            DM1.cdsAportes.FieldByName('CREMONEXT').AsFloat := 0;
      End
      Else
      Begin
         DM1.cdsAportes.FieldByName('CREMONLOC').AsFloat := 0;
         DM1.cdsAportes.FieldByName('CREMONEXT').AsFloat := 0;
         DM1.cdsAportes.FieldByName('TCAMBIO').AsFloat := 0;
      End;

      // vhndema
      xCrefVen := DM1.cdsAportes.FieldByName('CREFVEN').AsString;
      xCreAmort := DM1.cdsAportes.FieldByName('CREAMORT').AsFloat;
      xCreInteres := DM1.cdsAportes.FieldByName('CREINTERES').AsFloat;
      xCreFlat := DM1.cdsAportes.FieldByName('CREFLAT').AsFloat;
      xCremtoInt := DM1.cdsAportes.FieldByName('CREMTOINT').AsFloat;
      // end vhndema

      DM1.cdsAportes.FieldByName('CREESTID').AsString := Copy(tEstado, 1, 2);
      DM1.cdsAportes.FieldByName('CREESTADO').AsString := Copy(tEstado, 3, 25);
      DM1.cdsAportes.FieldByName('NRONABO').AsString := '';
      DM1.cdsAportes.FieldByName('CRECAPITAL').AsFloat := 0;
      DM1.cdsAportes.FieldByName('CREMTOINT').AsFloat := 0;
      DM1.cdsAportes.FieldByName('CREMTOFLAT').AsFloat := 0;
      DM1.cdsAportes.FieldByName('FLGPAG').AsString := '';
      DM1.cdsAportes.FieldByName('CREDIDNABO').AsString := '';
      DM1.cdsAportes.FieldByName('FNABONO').AsString := '';
      DM1.cdsAportes.FieldByName('CRESALDO').AsFloat := (DM1.cdsAportes.FieldByName('CREMTO').AsFloat - DM1.cdsAportes.FieldByName('CREMTOCOB').AsFloat);
      DM1.cdsAportes.ApplyUpdates(0);
   End;

// vhndema
// Recupera el Saldo Actual Regraba Pagos
   xSQL := 'SELECT MAX(CREFPAG) CREFPAG,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '
      + 'FROM CRE310 '
      + 'WHERE ASOID=' + QuotedStr(Trim(tAsoId))
      + '  AND CREDID=' + QuotedStr(Trim(tCreDid))
      + '  AND CRECUOTA=' + QuotedStr(Trim(tCreCuota))
      + '  AND CREESTID NOT IN (''04'',''13'')    ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xCremtoCob := DM1.cdsQry1.FieldByName('CREMTOCOB').AsCurrency - tCremtoCob;
      xCrefPag := DM1.cdsQry1.FieldByName('CREFPAG').AsString;
      If xCremtoCob > 0 Then
      Begin
         If (Copy(xCrefVen, 7, 4) + Copy(xCrefVen, 4, 2) > Copy(xCrefPag, 7, 4) + Copy(xCrefPag, 4, 2)) And (xCremToInt = 0) Then
         Begin
            If xCremtoCob > (xCreAmort + xCreFlat) Then
               xCremtoExc := xCremtoCob - (xCreAmort + xCreFlat)
            Else
               xCremtoExc := 0;

            If xCremtoCob >= (xCreAmort + xCreFlat) Then
            Begin
               xCreEstid := '23';
               xCreEstado := 'CANCELADO A';
            End
            Else
            Begin
               xCreEstid := '27';
               xCreEstado := 'PARCIAL';
            End;
            fDetPagos.DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid, xCreEstado, xCrefPag, xCremtoCob, xCremtoInt, xCremtoExc);
         End
         Else
         Begin
            If xCremtoCob > (xCreAmort + xCreInteres + xCreFlat) Then
               xCremtoExc := xCremtoCob - (xCreAmort + xCreInteres + xCreFlat)
            Else
               xCremtoExc := 0;

            If xCremtoCob >= (xCreAmort + xCreInteres + xCreFlat) Then
            Begin
               xCreEstid := '21';
               xCreEstado := 'CANCELADO';
            End
            Else
            Begin
               xCreEstid := '27';
               xCreEstado := 'PARCIAL';
            End;
            fDetPagos.DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid, xCreEstado, xCrefPag, xCremtoCob, xCremtoInt, xCremtoExc);
         End
      End
      Else
      Begin

         xfCalc := Trim(Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2));
         xfVen := DM1.cdsAportes.FieldByName('CREANO').AsString + DM1.cdsAportes.FieldByName('CREMES').AsString;
         DM1.cdsHijo.Close;
         DM1.cdsHijo.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREESTADO FROM CRE302 WHERE ASOID =' + QuotedStr(Trim(tAsoId)) + ' And CREDID=' + QuotedStr(Trim(tCredId)) + ' And  CRECUOTA=' + QuotedStr(Trim(tCreCuota)));
         DM1.cdsHijo.Open;
         If DM1.cdsHijo.RecordCount = 1 Then
         Begin
            If xfCalc > xfVen Then
            Begin
               xCreEstid := '11';
               xCreEstado := 'NO PAGADO';
               fDetPagos.DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid, xCreEstado, xCrefPag, xCremtoCob, xCremtoInt, xCremtoExc);
            End
            Else
            Begin
               xCreEstid := '02';
               xCreEstado := 'POR COBRAR';
               fDetPagos.DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid, xCreEstado, xCrefPag, xCremtoCob, xCremtoInt, xCremtoExc);
            End;
         End;
      End;
   End;
   DM1.cdsQry1.Close;
   DM1.cdsAportes.Close;
End;

Function TfRefiSeleAso.Busca310(xAsoId, xCreDid: String): String;
Begin
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest('SELECT ASOID,CREDID,CREESTID FROM CRE310 WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CREESTID<>''13'' ');
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount > 0 Then
      Result := 'S'
   Else
      Result := 'N';

   DM1.cdsQry4.Close;
End;

Procedure TfRefiSeleAso.BitMstApoClick(Sender: TObject);
Begin
   Try
      fRegApor := TfRegApor.create(self);
      fRegApor.Showmodal;
   Finally
      fRegApor.free;
   End;
End;

Procedure TfRefiSeleAso.BitAsociadoClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   Try
      Botones(False);
      If Length(Trim(EdtNomGen.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN ASOCIADO !!! ', mtError, [mbOk], 0);
         Exit;
      End;
      xSQL := 'SELECT * FROM TGE158';
      DM1.cdsPadre.Close;
      DM1.cdsPadre.DataRequest(xSQL);
      DM1.cdsPadre.Open;
      DM1.cdsRec.Close;
      DM1.cdsRec.DataRequest(xSQL);
      DM1.cdsRec.Open;
      xSQL := 'SELECT ID,DESCRIP FROM TGE817 ';
      DM1.cdsSexo.Close;
      DM1.cdsSexo.DataRequest(xSQL);
      DM1.cdsSexo.Open;
      xSQL := 'SELECT ASOTIPID,ASOTIPDES FROM APO107';
      DM1.cdsTAso.Close;
      DM1.cdsTAso.DataRequest(xSQL);
      DM1.cdsTAso.Open;
      xSQL := 'SELECT REGPENID,REGPENDES FROM APO105';
      DM1.cdsResol.Close;
      DM1.cdsResol.DataRequest(xSQL);
      DM1.cdsResol.Open;
      xSQL := 'SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE SUBSTR(PROV,1,1)=''A'' ';
      DM1.cdsTCredito.Close;
      DM1.cdsTCredito.DataRequest(xSQL);
      DM1.cdsTCredito.Open;
      fMatAso := TfMatAso.create(self);
      fMatAso.lkcDpto.Text := DM1.cdsAso.fieldbyname('ASODPTO').AsString;
      fMatAso.lkcProv.Text := DM1.cdsAso.fieldbyname('CIUDID').AsString;
      fMatAso.lkcDist.Text := DM1.cdsAso.fieldbyname('ZIPID').AsString;
      fMatAso.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
      fMatAso.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
      fMatAso.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
      fMatAso.ImagAso.Picture := ImagAso.Picture;
      fMatAso.ImaFirma.Picture := ImaFirma.Picture;
      fMatAso.lblAsoApeNom.Caption := DM1.cdsAso.fieldbyname('ASOAPENOM').AsString + ' (Dato de Planillas)';
      fMatAso.EdtApePatDni.Enabled := False;
      fMatAso.EdtApeMatDni.Enabled := False;
      fMatAso.EdtAsoNomDni.Enabled := False;
      fMatAso.dbeCodPag.Enabled := False;
      fMatAso.dbeLibDni.Enabled := False;
      fMatAso.BitModifica.Enabled := False;
      fMatAso.ShowModal;
   Finally
      DM1.cdsPadre.Close;
      DM1.cdsHijo.Close;
      DM1.cdsCAso.Close;
      DM1.cdsRec.Close;
      DM1.cdsTRela.Close;
      DM1.cdsQry6.Close;
      DM1.cdsSexo.Close;
      DM1.cdsTAso.Close;
      DM1.cdsResol.Close;
      DM1.cdsTCredito.Close;
      fMatAso.Free;
      Botones(True);
   End;
End;

Procedure TfRefiSeleAso.dtgHistoricosDblClick(Sender: TObject);
Var
   xAsoId, xCreDid, xCreEstid, xSQL: String;
Begin
   If dtgHistoricos.DataSource.DataSet.RecordCount = 0 Then Exit;
   DM1.xHis := 'S';
   fCronoPag := Nil;
   fCronoPag := TfCronoPag.create(self);
   xAsoId := DM1.cdsSolicitudA.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSolicitudA.fieldbyname('CREDID').AsString;
   xCreEstid := DM1.cdsSolicitudA.fieldbyname('CREESTID').AsString;
   DM1.CargaCronograma(xAsoId, xCreDid);
   fCronoPag.Caption := 'Cronograma De Pagos - Historicos';
   fCronoPag.Showmodal;
   fCronoPag.free;
End;

Procedure TfRefiSeleAso.FormCreate(Sender: TObject);
Begin
   DM1.BlqComponentes(Self);
End;

Procedure TfRefiSeleAso.ControlaBotones;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT USERID '
      + 'FROM SIS000 '
      + 'WHERE USERID=' + QuotedStr(DM1.wUsuario) + ' AND TABLA=''Detalles'' '
      + '  AND CAMPO=''Boton'' AND COMPONENTE=''BitReprograma'' AND MODULOID=''COB'' ';
   BitReprograma.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID '
      + 'FROM SIS000 '
      + 'WHERE USERID=' + QuotedStr(DM1.wUsuario) + ' AND TABLA=''Detalles'' '
      + '  AND CAMPO=''Boton'' AND COMPONENTE=''BitGenCrono'' AND MODULOID=''COB'' ';
   BitGenCrono.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID '
      + 'FROM SIS000 '
      + 'WHERE USERID=' + QuotedStr(DM1.wUsuario) + ' AND TABLA=''Detalles'' '
      + '  AND CAMPO=''Boton'' AND COMPONENTE=''BitMstApo'' AND MODULOID=''COB'' ';
   BitMstApo.Enabled := DM1.VrfCtrAccUsr(xSQL);
   xSQL := 'SELECT USERID '
      + 'FROM SIS000 '
      + 'WHERE USERID=' + QuotedStr(DM1.wUsuario) + ' AND TABLA=''Detalles'' '
      + '  AND CAMPO=''Boton'' AND COMPONENTE=''BitAnulaRep'' AND MODULOID=''COB'' ';
   BitAnulaRep.Enabled := DM1.VrfCtrAccUsr(xSQL);
End;

Procedure TfRefiSeleAso.BitAutDesClick(Sender: TObject);
Var
   xInteres, xFlat, xMonto, xCuoIni, xTasEfe: Real;
   xNumCuo, Boton: Integer;
   xFecPre, xFecDes: tDateTime;
   xFecEval, xCad, xAsoId, xCreDid, xSQL, xTexto, xFecVen, xCreEstid: String;
   xCreMto, xCreAmort, xCreInteres, xCreFlat, xTot, xSaldo: Real;
   xImprime, xImp: Boolean;
Begin
    //Cambio realizado por el Memo 326 - 2008 - Eduardo Alva
   If Length(Trim(EdtNomGen.Text)) = 0 Then
   Begin
      MessageDlg('ERROR, DEBE SELECCIONAR UN ASOCIADO!!!', mtError, [mbOk], 0);
      Exit;
   End;
   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   Case DM1.cdsSolicitud.FieldByName('CREESTID').AsInteger Of
      1: xImprime := True;
      2: xImprime := True;
   Else
      xImprime := False;
   End;
   If Not xImprime Then
   Begin
      MessageDlg('CREDITO NO SE ENCUENTRA PENDIENTE DE PAGO!!!', mtError, [mbOk], 0);
      Exit;
   End;

   If DM1.NivelUsuario(DM1.wUsuario) >= '02' Then
   Begin
      If DM1.cdsSolicitud.FieldByName('IMPCARAUT').AsString = '1' Then
      Begin
         Boton := Application.MessageBox('SEGURO DE AUTORIZAR LA REIMPRESION DE DOCUMENTOS',
            'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
         If Boton = ID_YES Then
         Begin
            xSQL := 'UPDATE CRE301 SET IMPCARAUT=''0'' '
               + 'WHERE ASOID=' + QuotedStr(xAsoId)
               + '  AND CREESTID IN (''01'',''02'') AND IMPCARAUT=''1'' ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         End;
      End;
   End;

   lblAsoDnia.Caption := DM1.cdsSolicitud.FieldByName('ASODNI').AsString;
   lblNombresa.Caption := DM1.cdsSolicitud.FieldByName('ASOAPENOM').AsString;
   lblFechaCarta.Caption := 'Lima,  ' + FormatDateTime('d "de" mmmm "del" yyyy', now);
   lblDirReg01.Caption := DM1.CrgDescrip('USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString))
      + ' AND UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString))
      + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString)),
      'APO101', 'USENOM');
   lblDirReg02.Caption := lblDirReg01.Caption;
   lblDirReg03.Caption := lblDirReg02.Caption;
   lblDirReg04.Caption := lblDirReg03.Caption;
   lblDirReg05.Caption := lblDirReg04.Caption;
   lblCargo.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'CARGO');
   lblDireccion.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASODIR');
   lblTelefono.Caption := DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId)), 'APO201', 'ASOTELF1');
   lblMonto.Caption := DM1.MontoPendiente(xAsoId);
   lblMonCuo.Caption := DM1.CuotasPendiente(xAsoId);
   lblPlazo.Caption := DM1.MaximoPlazo(xAsoId);
   xTot := Int(DM1.Valores(lblMonto.Caption));
   lblNunLetras.Caption := trim(DM1.xIntToLletras(StrToInt(FloatToStr(xTot)), (DM1.Valores(lblMonto.Caption))));
   If DM1.Valores(DM1.MontoPendiente(xAsoId)) > 0 Then
   Begin
      xSQL := 'SELECT ASOID,CREDID '
         + 'FROM CRE301 '
         + 'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID IN (''01'',''02'') AND NVL(IMPCARAUT,''0'')=''0'' ';
      If DM1.CountReg(xSQL) > 0 Then
      Begin
         rpCartaAutDes.Print;
         rpCartaAutDes.Cancel;
         If Length(Trim(DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId))
            + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'USUAUTDES'))) = 0 Then
         Begin
            Boton := Application.MessageBox('Confirme, si el docente firmó' + #13
               + 'CARTA DE AUTORIZACION DE DESCUENTO POR PLANILLA', 'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
            If Boton = ID_YES Then
            Begin
               xSQL := 'UPDATE CRE301 '
                  + 'SET IMPCARAUT=''1'',AUTDESCRE=' + QuotedStr('S') + ',FECAUTDES=SYSDATE,USUAUTDES=' + QuotedStr(DM1.wUsuario) + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CREESTID IN (''01'',''02'') AND AUTDESCRE IS NULL ';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            End;
         End;
         If DM1.CrgDescrip('ASOID=' + QuotedStr(Trim(xAsoId))
            + ' AND CREDID=' + QuotedStr(Trim(xCreDid)), 'CRE301', 'IMPCARAUT') = '0' Then
         Begin
            Boton := Application.MessageBox('SEGURO QUE REIMPRIMIO LOS DOCUMENTOS NECESARIOS, DESEA TERMINAR ',
               'Sistema De Créditos', MB_YESNO + MB_ICONQUESTION);
            If Boton = ID_YES Then
            Begin
               xSQL := 'UPDATE CRE301 '
                  + 'SET IMPCARAUT=''1'' '
                  + 'WHERE ASOID=' + QuotedStr(xAsoId)
                  + '  AND CREESTID IN (''01'',''02'') AND IMPCARAUT=''0'' ';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            End;
         End;
      End;
   End;
End;

End.

