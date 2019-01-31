// Inicio: HPP_201113_COB por RMEDINA
// Memorándum 251-2011-DM-COB - SAR-2011-0201 - DAF-2011-042-COB
unit COBF006;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, fcButton, fcImgBtn,
  fcShapeBtn, StdCtrls, Buttons, Wwdbdlg, wwdblook,DB;

type
  TfSolicDevExcFsc = class(TForm)
    grbAsociados: TGroupBox;
    EdtCodMod: TEdit;
    BitBuscar: TBitBtn;
    fcShapeBtn3: TfcShapeBtn;
    Panel3: TPanel;
    edtNomGen: TEdit;
    grbPrestamos: TGroupBox;
    dtgPrestamo: TwwDBGrid;
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
    grbacciones: TGroupBox;
    Label3: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    edtRevierte: TEdit;
    fcShapeBtn1: TfcShapeBtn;
    BtnDesembolso: TBitBtn;
    pnlTipodesembolso: TPanel;
    Shape3: TShape;
    Label21: TLabel;
    lblAgencia: TLabel;
    lblCtaAhorros: TLabel;
    Label10: TLabel;
    DBLkuCTipDes: TwwDBLookupCombo;
    EdtTipDes: TEdit;
    DBLkCDAgencias: TwwDBLookupComboDlg;
    EdtCodAgen: TEdit;
    EdtDepGir: TEdit;
    BtnCerrar: TButton;
    BtnSalir: TBitBtn;
    EdtCtaAhorros: TEdit;
    EdtSitCta: TEdit;
    pnlOficinas: TPanel;
    Label12: TLabel;
    Panel4: TPanel;
    EdtOfiDes: TEdit;
    DBLkOfiDes: TwwDBLookupCombo;
    GroupBox1: TGroupBox;
    MotDevo: TMemo;
    procedure BitBuscarClick(Sender: TObject);
    procedure EdtCodModChange(Sender: TObject);
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCuentaClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure dtgAsociadoDblClick(Sender: TObject);
    procedure BtnDesembolsoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLkuCTipDesChange(Sender: TObject);
    procedure DBLkCDAgenciasChange(Sender: TObject);
    procedure DBLkOfiDesChange(Sender: TObject);
    procedure BtnSalirClick(Sender: TObject);
    procedure BtnCerrarClick(Sender: TObject);
    procedure DBLkuCTipDesExit(Sender: TObject);
    procedure DBLkuCTipDesKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fcShapeBtn1Click(Sender: TObject);
    Function verifdevpend(asoid: String): boolean;
    procedure EdtCodModExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdtCodModKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure FiltraExcesos(xAsoid:STRING);
    Procedure LimpiaGrids();
    Procedure actfootExcFSC();
  public
    { Public declarations }
  end;

var
  fSolicDevExcFsc: TfSolicDevExcFsc;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfSolicDevExcFsc.BitBuscarClick(Sender: TObject);
begin
   pnlSeleccion.Visible := True;
   pnlSeleccion.Top := 73;
   pnlSeleccion.Left := 21;
   grbAsociados.Enabled := False;
   grbacciones.Enabled := False;
   DBLkuCTipDes.Text := '';
   rbtApeNomClick(SELF);
end;

procedure TfSolicDevExcFsc.EdtCodModChange(Sender: TObject);
begin
  edtRevierte.Text:='';;
  FiltraExcesos('');
end;

procedure TfSolicDevExcFsc.FiltraExcesos(xAsoid:string);
var xsql:string;
begin

   Xsql:='SELECT ASOID,NUM_DEU,COR_COB_DEU,FEC_COB_DEU CREFPAG,NROOPE,FOPERAC,FORPAGABR,IMP_EXC_DEU,IMP_EXC_DEV,FORPAGID,TIP_MOV_DEU '+
         'FROM COB_FSC_PAGOS_AL_FSC '+
       //Inicio: HPP_201114_COB
       //  'WHERE ASOID='''+XaSOID+''' AND TIP_MOV_DEU=''EXC'' AND EST_COB_COD NOT IN (''13'',''04'') AND NVL(IMP_EXC_DEU,0)-NVL(IMP_EXC_DEV,0)>0 ';
         'WHERE ASOID='''+XaSOID+''' AND TIP_MOV_DEU=''EXC'' AND EST_COB_COD NOT IN (''13'',''04'') AND NVL(IMP_EXC_DEU,0)>0 AND NUM_DEV_EXC IS NULL ';
       //fin: HPP_201114_COB
   Dm1.cdsPlanDet.Close;
   Dm1.cdsPlanDet.DataRequest(xsql);
   Dm1.cdsPlanDet.Open;

end;

procedure TfSolicDevExcFsc.rbtApeNomClick(Sender: TObject);
begin
   edtBuscar.Text := '';
   LimpiaGrids;
   gbbuscar.Width := 420;
   gbbuscar.Height := 40;
   edtBuscar.Width := 400;
   edtBuscar.Height := 28;
   GbAsociados.Caption := 'Buscar Por ' + rbtApeNom.Caption;
   edtBuscar.SetFocus;
end;

procedure TfSolicDevExcFsc.rbtDniClick(Sender: TObject);
begin
   edtBuscar.Text := '';
   LimpiaGrids;
   gbbuscar.Width := 137;
   gbbuscar.Height := 40;
   edtBuscar.Width := 114;
   edtBuscar.Height := 24;
   GbAsociados.Caption := 'Buscar Por ' + rbtDni.Caption;
   edtBuscar.SetFocus;
end;

procedure TfSolicDevExcFsc.rbtCuentaClick(Sender: TObject);
begin
   edtBuscar.Text := '';
   LimpiaGrids;
   gbbuscar.Width := 137;
   gbbuscar.Height := 40;
   edtBuscar.Width := 114;
   edtBuscar.Height := 24;
   GbAsociados.Caption := 'Buscar Por ' + rbtCuenta.Caption;
   edtBuscar.SetFocus;
end;

procedure TfSolicDevExcFsc.rbtCodModClick(Sender: TObject);
begin
   edtBuscar.Text := '';
   LimpiaGrids;
   gbbuscar.Width := 137;
   gbbuscar.Height := 40;
   edtBuscar.Width := 114;
   edtBuscar.Height := 24;
   GbAsociados.Caption := 'Buscar Por ' + rbtCodMod.Caption;
   edtBuscar.SetFocus;
end;

procedure TfSolicDevExcFsc.BitMostrarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If Length(Trim(edtBuscar.Text)) > 0 Then
   Begin
      If rbtApeNom.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
            + 'FROM APO201 '
            + 'WHERE ASOAPENOMDNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      If rbtDni.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
            + 'FROM APO201 '
            + 'WHERE ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      If rbtCuenta.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
            + 'FROM APO201 '
            + 'WHERE ASONCTA LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      If rbtCodMod.Checked Then
         xSQL := 'SELECT ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
            + 'FROM APO201 '
            + 'WHERE ASOCODMOD LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest(xSQL);
      DM1.cdsAso.Open;
   End
   Else
   Begin
      MessageDlg('Debe Ingresar Un Criterio Para La Busqueda', mtError, [mbOk], 0);
      edtBuscar.SetFocus;
   End;
end;

procedure TfSolicDevExcFsc.BitSalirClick(Sender: TObject);
begin
   pnlSeleccion.Visible := False;
   pnlSeleccion.Top := 10;
   pnlSeleccion.Left := 8;
   grbAsociados.Enabled := True;
   grbacciones.Enabled := True;
end;

procedure TfSolicDevExcFsc.dtgAsociadoDblClick(Sender: TObject);
begin

   If Dm1.isAsociadoFallecido('ASOID',DM1.cdsAso.fieldbyname('ASOID').AsString) Then
    Begin
      ShowMessage('Asociado es Fallecido');
      Exit;
     End;

   If verifdevpend(DM1.cdsAso.fieldbyname('ASOID').AsString) Then
    Begin
      ShowMessage('Tiene Devolucuiones por Excesos al FSC Pendientes...');
      Exit;
    End;
   EdtCodMod.Text:=DM1.cdsAso.fieldbyname('ASOCODMOD').AsString;
  edtNomGen.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   FiltraExcesos(DM1.cdsAso.fieldbyname('ASOID').AsString);
   BitSalirClick(self);
   actfootExcFSC;
end;

procedure TfSolicDevExcFsc.LimpiaGrids;
begin
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest('Select ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
      + 'From APO201 Where 1=2 ');
   DM1.cdsAso.Open;
end;

procedure TfSolicDevExcFsc.BtnDesembolsoClick(Sender: TObject);
begin
   grbAsociados.Enabled := False;
   grbPrestamos.Enabled := False;
   grbacciones.Enabled  := False;
   EdtCtaAhorros.Text := '';
   EdtSitCta.Text := '';
   DBLkuCTipDes.Text := '';
   DBLkCDAgencias.Text := '';
   pnlTipodesembolso.left := 51;
   pnlTipodesembolso.Top := 187;
   pnlTipodesembolso.Visible := True;
end;

procedure TfSolicDevExcFsc.actfootExcFSC;
Var
   B: TBookmark;
   ximp_dev_exc:currency;
Begin

   dtgPrestamo.ColumnByName('NUM_DEU').FooterValue := 'Total';

  //Guardo la posicion
   B := DM1.cdsPlanDet.GetBookmark;
   DM1.cdsPlanDet.DisableControls;
   DM1.cdsPlanDet.First;
   ximp_dev_exc := 0;


    While Not DM1.cdsPlanDet.Eof Do
      Begin
         ximp_dev_exc := ximp_dev_exc + DM1.cdsPlanDet.FieldByName('IMP_EXC_DEU').AsCurrency;
         DM1.cdsPlanDet.Next
      End;

      dtgPrestamo.ColumnByName('IMP_EXC_DEU').FooterValue := FormatCurr('###,##0.#0', ximp_dev_exc);
      edtRevierte.Text := FormatCurr('###,###,##0.00', ximp_dev_exc);

  //Me posiciono nuevamente en el posicion marcada
   DM1.cdsPlanDet.GotoBookmark(B);
   DM1.cdsPlanDet.EnableControls;
   DM1.cdsPlanDet.FreeBookmark(B);

end;

procedure TfSolicDevExcFsc.FormActivate(Sender: TObject);
begin
   MotDevo.Text := 'Devolución de Excesos por FSC';
   DM1.cdsFormPago.Close;
   DM1.cdsFormPago.DataRequest('SELECT TIPDESEID,TIPDESEABR FROM CRE104 WHERE TIPDESEID IN (''04'',''05'',''06'') ORDER BY TIPDESEID');
   DM1.cdsFormPago.Open;
   DBLkuCTipDes.LookupTable := dm1.cdsFormPago;
   DM1.cdsAgenciaBco.Close;
   DM1.cdsAgenciaBco.DataRequest('Select a.AGENBCOID,a.AGENBCODES,A.DPTOID,B.DPTODES FROM COB102 A, APO158 B WHERE A.DPTOID=B.DPTOID ORDER BY A.DPTOID,A.AGENBCODES');
   DM1.cdsAgenciaBco.Open;
   DBLkCDAgencias.LookupTable := dm1.cdsAgenciaBco;
   FiltraExcesos('');
   dtgPrestamo.Selected.Clear;
   dtgPrestamo.Selected.Add('NUM_DEU'#9'15'#9'Deuda');
   dtgPrestamo.Selected.Add('COR_COB_DEU'#9'3'#9'Ing.');
   dtgPrestamo.Selected.Add('CREFPAG'#9'10'#9'Fec.Cobranza');
   dtgPrestamo.Selected.Add('NROOPE'#9'15'#9'Nro.Operac.');
   dtgPrestamo.Selected.Add('FOPERAC'#9'10'#9'Fec.Operac.');
   dtgPrestamo.Selected.Add('FORPAGABR'#9'4'#9'Pago');
   dtgPrestamo.Selected.Add('IMP_EXC_DEU'#9'17'#9'Exceso'#9'F');
   dtgPrestamo.ApplySelected;
   dtgPrestamo.DataSource := DM1.dsPlandet;

end;

procedure TfSolicDevExcFsc.DBLkuCTipDesChange(Sender: TObject);
Var
   xSQL: String;
Begin
   If DM1.cdsFormPago.Locate('TIPDESEID', VarArrayof([DBLkuCTipDes.text]), []) Then
   Begin
      EdtTipDes.Text := DM1.cdsFormPago.fieldbyname('TIPDESEABR').AsString;
      pnlOficinas.Visible := False;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '04' Then
      Begin
         xSQL := 'SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID';
         DM1.cdsOfDes.Close;
         DM1.cdsOfDes.DataRequest(xSQL);
         DM1.cdsOfDes.Open;
         lblCtaAhorros.Enabled := False;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := '';
         EdtSitCta.Text := '';
         pnlOficinas.Visible := True;
      End;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '05' Then
      Begin
        { If DM1.xSgr = '1' Then
         Begin}
            lblAgencia.Enabled := True;
            DBLkCDAgencias.Enabled := True;
        { End;}
         lblCtaAhorros.Enabled := False;
         EdtCtaAhorros.Text := '';
         EdtSitCta.Text := '';
         BtnSalir.Enabled := True;
         BtnCerrar.Enabled := True;
      End;
      If DM1.cdsFormPago.fieldbyname('TIPDESEID').AsString = '06' Then
      Begin
         If Trim(DM1.cdsAso.FieldByName('SITCTA').AsString) <> 'A' Then
         Begin
            ShowMessage('CUENTA NO ESTA ACTIVA');
            Exit;
         End;
         lblCtaAhorros.Enabled := True;
         lblAgencia.Enabled := False;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
         DBLkCDAgencias.Text := '';
         DBLkCDAgencias.Enabled := False;
         EdtCtaAhorros.Text := DM1.cdsAso.FieldByName('ASONCTA').AsString;
         EdtSitCta.Text := DM1.CrgDescrip('SITCTAID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)), 'COB103', 'SITCTADES');
         BtnSalir.Enabled := True;
         BtnCerrar.Enabled := True; 
      End
   End
   Else
   Begin
      If Length(DBLkuCTipDes.Text) <> 2 Then
      Begin
         Beep;
         EdtTipDes.Text := '';
      End;
   End
End;

procedure TfSolicDevExcFsc.DBLkCDAgenciasChange(Sender: TObject);
begin
   If DM1.cdsAgenciaBco.Locate('AGENBCODES', VarArrayof([DBLkCDAgencias.text]), []) Then
   Begin
      EdtCodAgen.Text := DM1.cdsAgenciaBco.fieldbyname('AGENBCOID').AsString;
      EdtDepGir.Text := DM1.cdsAgenciaBco.fieldbyname('DPTOID').AsString + '-' + DM1.cdsAgenciaBco.fieldbyname('DPTODES').AsString;
   End
   Else
   Begin
      If Length(DBLkCDAgencias.Text) = 0 Then
      Begin
         Beep;
         EdtCodAgen.Text := '';
         EdtDepGir.Text := '';
      End;
   End
end;

procedure TfSolicDevExcFsc.DBLkOfiDesChange(Sender: TObject);
begin
   If DM1.cdsOfdes.Locate('OFDESID', VarArrayof([DBLkOfiDes.Text]), []) Then
   Begin
      EdtOfiDes.Text := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString;
      If DBLkuCTipDes.Text = '04' Then
      Begin

         Begin
            BtnSalir.Enabled := True;
            BtnCerrar.Enabled := True;
         End;
      End;
   End
   Else
   Begin
      If Length(DBLkOfiDes.Text) <> 2 Then
      Begin
         Beep;
         EdtOfiDes.Text := '';
      End;
   End;
end;

procedure TfSolicDevExcFsc.BtnSalirClick(Sender: TObject);
begin
   grbacciones.Enabled := True;
   grbAsociados.Enabled:= True;
   If DBLkuCTipDes.Text = '04' Then
   Begin
      If Length(trim(DBLkOfiDes.Text)) = 0 Then
      Begin
         ShowMessage('Debe ingresar la oficina que desembolsa.');
         Exit;
      End;
   End;

   If DBLkuCTipDes.Text = '05' Then
   Begin
      If Length(trim(DBLkCDAgencias.Text)) = 0 Then
      Begin
         ShowMessage('Debe ingresar la Agencia Bancaria');
         Exit;
      End;

   End;

   pnlTipodesembolso.Visible := False;
end;

procedure TfSolicDevExcFsc.BtnCerrarClick(Sender: TObject);
begin
   grbacciones.Enabled := True;
   grbAsociados.Enabled:= True;
   pnlTipodesembolso.Visible := False;
end;

procedure TfSolicDevExcFsc.DBLkuCTipDesExit(Sender: TObject);
begin
DBLkuCTipDesChange(self);
end;

procedure TfSolicDevExcFsc.DBLkuCTipDesKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
end;

procedure TfSolicDevExcFsc.fcShapeBtn3Click(Sender: TObject);
begin
close;
end;

procedure TfSolicDevExcFsc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DM1.cdsPlanDet.Close;
 DM1.cdsPlanDet.IndexName:='';
 DM1.cdsPlanDet.Filter:='';

 DM1.cdsFormPago.Close;
 DM1.cdsFormPago.IndexName:='';
 DM1.cdsFormPago.Filter:='';

 DM1.cdsAso.Close;
 DM1.cdsAso.IndexName:='';
 DM1.cdsAso.Filter:='';

 DM1.cdsAgenciaBco.Close;
 DM1.cdsAgenciaBco.IndexName:='';
 DM1.cdsAgenciaBco.Filter:='';

 DM1.cdsOfDes.Close;
 DM1.cdsOfDes.IndexName:='';
 DM1.cdsOfDes.Filter:='';

end;

procedure TfSolicDevExcFsc.fcShapeBtn1Click(Sender: TObject);
Var
   xmsg1, xflgExtorno, xsql: String;
   XCORR: INTEGER;
Begin


   If Dm1.cdsPlanDet.RecordCount=0 Then
   Begin
     ShowMessage('No existe información para procesar');
     exit;
   End;

   If DM1.Valores(edtRevierte.Text) = 0 Then
   Begin
      ShowMessage('Los Importes a Revertir son CERO');
      exit;
   End;

   If Length(Trim(MotDevo.Lines.Text)) < 20 Then
   Begin
      ShowMessage('Debe ingresar motivo de devolucion mas consistente..');
      MotDevo.SetFocus;
      exit;
   End;
   If (DBLkuCTipDes.Text = '06') And (Length(Trim(EdtCtaAhorros.Text)) = 0) Then
   Begin
      ShowMessage('Existe inconsistencia en el tipo de desembolso');
      MotDevo.SetFocus;
      exit;
   End;
   If DBLkuCTipDes.Text = '04' Then
   Begin
      If Length(trim(DBLkOfiDes.Text)) = 0 Then
      Begin
         ShowMessage('Debe ingresar la oficina que desembolsa');
         Exit;
      End;
   End;
   If (DM1.Valores(edtRevierte.Text) > 0) And (Length(trim(DBLkuCTipDes.Text)) = 0) Then
   Begin
      ShowMessage('Debe ingresar el Tipo de Desembolso de la Devolución');
      BtnDesembolso.SetFocus;
      exit;
   End;

   If MessageDlg('ESTA SEGURO DE GRABAR LA SOLICITUD DE DEVOLUCION ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin


      If MessageDlg('Importe a Devolver :' + edtRevierte.Text + ' Esta seguro(a) ', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         //GENERA CORRELATIVO DE PRE APROBACION DE DEVOLUCION
         XSQL := 'SELECT ANODEV,MAX(CORDEV) CORDEV FROM COB_SOLICITUD_DEV_EXC_FSC_CAB WHERE ANODEV=''' + FormatDateTime('YYYY', DM1.FechaSys) + ''' GROUP BY ANODEV';
         DM1.cdsQry2.CLOSE;
         DM1.cdsQry2.DataRequest(XSQL);
         DM1.cdsQry2.Open;
         If DM1.cdsQry2.RecordCount = 0 Then
            XCORR := 1
         Else
            XCORR := StrToInt(DM1.cdsQry2.FieldByName('CORDEV').asstring) + 1;

         //GENERA REGISTRO DE PREAPROBACION   (CABECERA)
         XSQL := 'INSERT INTO COB_SOLICITUD_DEV_EXC_FSC_CAB (ASOID,ASOAPENOM,ASOCODMOD,IMPREV,IMPDEV,USUCRE,FECCRE,HORCRE,MOTDEV,ANODEV,CORDEV,FORPAGID,AGEBAN,OFDESPAG) VALUES (' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
            CurrToStr(DM1.Valores(edtRevierte.Text)) + ',' +
            CurrToStr(DM1.Valores(edtRevierte.Text)) + ',' +
            QuotedStr(DM1.wUsuario) + ',' +
            QuotedStr(DateToStr(DM1.FechaSys)) + ',' +
            'TO_DATE(' + QuotedStr(DateToStr(DM1.FechaSys) + DM1.HoraSys) + ',''dd/mm/yyyy hh24:mi:ss''),' +
            QuotedStr(Trim(MotDevo.Lines.Text)) + ',' +
            QuotedStr(FormatDateTime('YYYY', DM1.FechaSys)) + ',' +
            QuotedStr(Format('%.10d', [XCORR])) + ',' +
            QuotedStr(TRIM(DBLkuCTipDes.Text)) + ',' +
            QuotedStr(TRIM(DBLkCDAgencias.Text)) + ',' + QuotedStr(TRIM(DBLkOfiDes.Text)) + ')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        //GENERA DETALLE DE PREAPROBACION
         DM1.cdsPlanDet.First;
         While Not DM1.cdsPlanDet.Eof Do
         Begin
            XSQL := 'INSERT INTO COB_SOLICITUD_DEV_EXC_FSC_DET (ANODEV,CORDEV,ASOID,NUM_DEU,COR_COB_DEU,MONREV,NROOPE,FOPERAC,TIP_MOV_DEU,FORPAGID,CREFPAG) VALUES (' +
               QuotedStr(FormatDateTime('YYYY', DM1.FechaSys)) + ',' +
               QuotedStr(Format('%.10d', [XCORR])) + ',' +
               QuotedStr(DM1.cdsPlanDet.FieldByName('ASOID').AsString) + ',' +
               QuotedStr(DM1.cdsPlanDet.FieldByName('NUM_DEU').AsString) + ',' +
               QuotedStr(DM1.cdsPlanDet.FieldByName('COR_COB_DEU').AsString) + ',' +
               CurrToStr(DM1.cdsPlanDet.FieldByName('IMP_EXC_DEU').AsCurrency) + ',' +
               QuotedStr(DM1.cdsPlanDet.FieldByName('NROOPE').AsString) + ',' +
               QuotedStr(DM1.cdsPlanDet.FieldByName('FOPERAC').AsString) + ',' +
               QuotedStr(DM1.cdsPlanDet.FieldByName('TIP_MOV_DEU').AsString) + ',' +
               QuotedStr(DM1.cdsPlanDet.FieldByName('FORPAGID').AsString) + ',' +
               QuotedStr(DM1.cdsPlanDet.FieldByName('CREFPAG').AsString) + ')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
            DM1.cdsPlanDet.Next;
         End;

      FiltraExcesos('');
      actfootExcFSC;
      edtRevierte.Text:='';
      EdtCodMod.Text:='';
      EdtCodMod.SetFocus;
      End;
   End;
        
End;

function TfSolicDevExcFsc.verifdevpend(asoid: String): boolean;
Var
   XSQL: String;
Begin
   XSQL := 'SELECT ASOID, ANODEV, CORDEV, ASOAPENOM, ASOCODMOD, IMPREV, IMPDEV, IMPAPL, '
      + '       USUCRE, FECCRE, HORCRE, FLAAPR, USUAPR, FECAPR, HORAPR, '
      + '       MOTDES, MOTDEV, FLADEVEFE, USUDEV, FECDEV, HORDEV, ANODEV, CORDEV, '
      + '       FLAANU, FECANU, HORANU, USUANU, FORPAGID, AGEBAN, DEVEFE, APLEFE, '
      + '       FLAIMPREV, OFDESPAG '
      + 'FROM COB_SOLICITUD_DEV_EXC_FSC_CAB '
      + 'WHERE ASOID=''' + asoid + ''' AND NVL(FLADEVEFE,''X'')<>''S'' '
      + '  AND NVL(FLAAPR,''X'')<>''N'' AND NVL(FLAANU,''X'')<>''S'' ';
   dm1.cdsCEdu.close;
   dm1.cdsCEdu.DataRequest(XSQL);
   dm1.cdsCEdu.Open;
   If dm1.cdsCEdu.RecordCount > 0 Then
      result := True
   Else
      result := False;
   dm1.cdsCEdu.Close;
End;

procedure TfSolicDevExcFsc.EdtCodModExit(Sender: TObject);
begin

   If Length(Trim(EdtCodMod.Text)) = 0 Then
   Begin
      BitBuscarClick(self);
      exit;
   End;

   If Length(Trim(EdtCodMod.Text)) > 10 Then
   Begin
      MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
      EdtCodMod.Text := '';
      Exit;
   End;
   EdtCodMod.Text := Format('%.10d', [StrToInt(EdtCodMod.Text)]);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest('Select ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
      + 'From APO201 '
      + 'Where ASOCODMOD LIKE ' + QuotedStr(Trim(EdtCodMod.Text) + '%'));
   DM1.cdsAso.Open;
   If DM1.cdsAso.RecordCount = 1 Then
   Begin

     If Dm1.isAsociadoFallecido('ASOID',DM1.cdsAso.fieldbyname('ASOID').AsString) Then
       Begin
        ShowMessage('Asociado es Fallecido');
        Exit;
       End;

     If verifdevpend(DM1.cdsAso.fieldbyname('ASOID').AsString) Then
        Begin
          ShowMessage('Tiene Devolucuiones por Excesos al FSC Pendientes...');
          LimpiaGrids;
          Exit;
        End;
     FiltraExcesos(DM1.cdsAso.fieldbyname('ASOID').AsString);
     edtNomGen.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
     actfootExcFSC;
   End
   Else
      If DM1.cdsAso.RecordCount > 1 Then
      Begin
         pnlSeleccion.Visible := True;
         pnlSeleccion.Top := 144;
         pnlSeleccion.Left := 8;
         grbAsociados.Enabled := False;
         grbacciones.Enabled := False;
      End
      Else
      Begin
         LimpiaGrids;
         MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
         EXIT;
      End;

end;



procedure TfSolicDevExcFsc.Button1Click(Sender: TObject);
begin
BitSalirClick(self);
end;

procedure TfSolicDevExcFsc.EdtCodModKeyPress(Sender: TObject;
  var Key: Char);
begin

   If Key = #13 Then
   Begin

     If Length(Trim(EdtCodMod.Text)) = 0 Then
        Begin
         BitBuscarClick(self);
         exit;
        End;

      If Length(Trim(EdtCodMod.Text)) > 10 Then
      Begin
         MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
         EdtCodMod.Text := '';
         Exit;
      End;
      EdtCodMod.Text := Format('%.10d', [StrToInt(EdtCodMod.Text)]);
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest('Select ASOID, ASOCODMOD, ASOAPENOM, SITCTA, ASONCTA '
         + 'From APO201 '
         + 'Where ASOCODMOD like ' + QuotedStr(Trim(EdtCodMod.Text) + '%'));
      DM1.cdsAso.Open;
      If DM1.cdsAso.RecordCount = 1 Then
      Begin
        If Dm1.isAsociadoFallecido('ASOID',DM1.cdsAso.fieldbyname('ASOID').AsString) Then
           Begin
            ShowMessage('Asociado es Fallecido');
            Exit;
           End;

        If verifdevpend(DM1.cdsAso.fieldbyname('ASOID').AsString) Then
           Begin
             ShowMessage('Tiene Devolucuiones por Excesos al FSC Pendientes...');
             LimpiaGrids;
             Exit;
           End;
         FiltraExcesos(DM1.cdsAso.fieldbyname('ASOID').AsString);
         edtNomGen.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
         actfootExcFSC;
      End
      Else
         If DM1.cdsAso.RecordCount > 1 Then
         Begin
           pnlSeleccion.Visible := True;
           pnlSeleccion.Top := 144;
           pnlSeleccion.Left := 8;
           grbAsociados.Enabled := False;
           grbacciones.Enabled := False;
         End
         Else
         Begin
            LimpiaGrids;
            MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
            EXIT;
         End;

   End;

end;

end.
// Final: HPP_201113_COB por RMEDINA
