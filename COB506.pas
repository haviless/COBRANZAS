// Inicio Uso Estándares : 01/08/2011
// Unidad                :COB506.pas
// Formulario            : Fcredsinpagpricuo
// Fecha de Creación     : 01/08/2018
// Autor                 : Equipo de Desarrollo de Sistemas DM
// Objetivo              : Reporte de creditos sin pago en la primera cuota
// Actualizaciones:
// 
//Inicio HPC_201814_COB
// Reporte de creditos sin pago en la primera cuota
unit COB506;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdblook, StdCtrls, wwdbdatetimepicker, Mask, Buttons, ExtCtrls,
  Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, DBGrids;

type
  TFcredsinpagpricuo = class(TForm)
    GroupBox1: TGroupBox;
    gbfecha: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dbdtpInicial: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    gbunidadgestion: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dblcdCodUniPag: TwwDBLookupCombo;
    btnprocesar: TBitBtn;
    meDescUniPag: TMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    rgfiltro: TRadioGroup;
    dbgReporte: TwwDBGrid;
    BitSalir: TBitBtn;
    btnAExcel: TBitBtn;
    gbOficina: TGroupBox;
    Label6: TLabel;
    Label12: TLabel;
    dblcdOficina: TwwDBLookupCombo;
    meOficina: TMaskEdit;
    cdsReporte: TClientDataSet;
    dsReporte: TDataSource;
    Label13: TLabel;
    dblcdCodUniGes: TwwDBLookupCombo;
    Label16: TLabel;
    dblcdCodUniPro: TwwDBLookupCombo;
    meDescUniPro: TMaskEdit;
    meDescUniGes: TMaskEdit;
    DBGAExcel: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnprocesarClick(Sender: TObject);
    procedure rgfiltroClick(Sender: TObject);
    procedure dblcdOficinaExit(Sender: TObject);
    procedure dblcdCodUniProExit(Sender: TObject);
    procedure dblcdCodUniPagExit(Sender: TObject);
    procedure dblcdCodUniGesExit(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure dbdtpInicialChange(Sender: TObject);
    procedure dbdtpFinalChange(Sender: TObject);
    procedure dblcdCodUniProChange(Sender: TObject);
    procedure dblcdCodUniPagChange(Sender: TObject);
    procedure dblcdCodUniGesChange(Sender: TObject);
    procedure dblcdOficinaChange(Sender: TObject);
  private
     procedure inicializa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcredsinpagpricuo: TFcredsinpagpricuo;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFcredsinpagpricuo.FormActivate(Sender: TObject);
Var xSql:String;
begin

   xSql := 'SELECT OFDESID, OFDESNOM FROM APO110 ORDER BY OFDESID';
   DM1.cdsOfDes.Close;
   DM1.cdsOfDes.DataRequest(xSql);
   DM1.cdsOfDes.Open;
   dblcdOficina.Selected.Clear;
   dblcdOficina.Selected.Add('OFDESID'#9'4'#9'Código'#9#9);
   dblcdOficina.Selected.Add('OFDESNOM'#9'30'#9'Descripción'#9#9);

   xSql := 'SELECT UPROID, UPRONOM FROM APO102 ORDER BY UPROID';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSql);
   DM1.cdsUPro.Open;
   dblcdCodUniPro.Selected.Clear;
   dblcdCodUniPro.Selected.Add('UPROID'#9'4'#9'Código'#9#9);
   dblcdCodUniPro.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);

   rgfiltro.ItemIndex := 0;
   gbunidadgestion.Visible := True;
   gbunidadgestion.Top := 14;
   gbunidadgestion.Left := 271;
   gbOficina.Visible := False;

end;



procedure TFcredsinpagpricuo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFcredsinpagpricuo.btnprocesarClick(Sender: TObject);
Var xSql,xsql2, xFiltro, xperiodo:String;
begin
   If dbdtpInicial.Text = '' Then
   Begin
      MessageDlg('Ingrese la fecha inicial', mtInformation, [mbOk], 0);
      dbdtpInicial.SetFocus;
      Exit;
   End;
   If dbdtpFinal.Text = '' Then
   Begin
      MessageDlg('Ingrese la fecha final', mtInformation, [mbOk], 0);
      dbdtpFinal.SetFocus;
      Exit;
   End;
   If dbdtpInicial.Date > dbdtpFinal.Date Then
   Begin
      MessageDlg('Ingrese una fecha inicial menor o igual a la fecha final', mtInformation, [mbOk], 0);
      dbdtpInicial.SetFocus;
      Exit;
   End;
   xFiltro := '';
   If rgfiltro.ItemIndex = 0 Then
   Begin
      If dblcdCodUniPro.Text <> '' Then
         xFiltro := xFiltro +' AND B.UPROID = '+QuotedStr(dblcdCodUniPro.Text);
      If dblcdCodUniPag.Text <> '' Then
         xFiltro := xFiltro +' AND B.UPAGOID = '+QuotedStr(dblcdCodUniPag.Text);
      If dblcdCodUniGes.Text <> '' Then
         xFiltro := xFiltro +' AND B.USEID = '+QuotedStr(dblcdCodUniGes.Text);
   End;
   If rgfiltro.ItemIndex = 1 Then
   Begin
      If dblcdOficina.Text <> '' Then
         xFiltro := xFiltro +' AND B.OFDESID = '+QuotedStr(dblcdOficina.Text);
   End;
   Screen.Cursor := crHourGlass;
   xSql := 'SELECT MAX(PERIODO) PERIODO FROM CFC000';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xperiodo := DM1.cdsQry.FieldByName('PERIODO').AsString;
   xSql2 := 'BEGIN EXECUTE IMMEDIATE (''Alter session set nls_date_format=''''dd/mm/yyyy hh24:mi:ss'''' ''); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql2);


   xSql  := 'SELECT A.ASOID CODIGO_ASOCIADO,'
   +' B.ASOCODMOD COD_MOD,'
   +' B.ASODNI DNI_ASO,'
   +' B.ASOAPENOM APELL_NOMBRE,'
   +' B.ASOTIPID TIP_ASO_OTO,'
   +' D.OFDESNOM CANAL_OTORG,'
   +' E.USENOM UGEL_OTORG,'
   +' G.USENOM UGEL_ACTUAL,'
   +' B.CREDID NUMERO_CREDITO,'
   +' B.CREMTOOTOR IMPORTE_OTORG,'
   +' B.CREFOTORG FECHA_OTORG,'
   +' B.CRENUMCUO PLAZO_OTORG,'
   +' B.CRECUOTA IMPORTE_CUOTA,'
   +' A.CREESTADO ESTADO_CUOTA1_ACTUAL,'
   +' TO_DATE(B.CREFINIPAG,''YYYYMMDD'') VEN_PRI_CUO_ORI,'
   +' TO_DATE(B.CREFFINPAG,''YYYYMMDD'') VEN_ULT_CUO_ORI,'
   +'(SELECT CFCDES_F FROM CFC000 WHERE ASOID=A.ASOID AND PERIODO='+QuotedStr(xperiodo)+') ULT_CALIF_REGIST,'
   +'(SELECT CRECUOTA FROM CRE302 WHERE ASOID=A.ASOID AND CREDID=A.CREDID AND CREFVEN<>CREFVENINI AND CREFVENINI IS NOT NULL AND NUMCUOORI=1) CUOTA_DIFERIDA_ACTUAL '
   +' FROM CRE302 A, CRE301 B, APO110 D, APO101 E, APO201 F, APO101 G '
   +' WHERE A.CREFVEN   >= '+QuotedStr(dbdtpInicial.Text+' 00:00:00')+' AND A.CREFVEN   <= '+QuotedStr(dbdtpFinal.Text+' 23:59:59')+' AND A.CREESTID IN (''02'',''11'',''14'',''19'', ''27'') AND A.CRECUOTA = 1 '
   +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID = ''02'''
   +' AND B.OFDESID = D.OFDESID'
   +' AND B.UPROID = E.UPROID AND B.UPAGOID = E.UPAGOID AND B.USEID = E.USEID'
   +' AND A.ASOID = F.ASOID'
   +' AND F.UPROID = G.UPROID AND F.UPAGOID = G.UPAGOID AND F.USEID = G.USEID';
   xSql := xSql + xfiltro;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   If DM1.cdsReporte.RecordCount = 0 Then
   Begin
      MessageDlg('No Existe Información según los criterios de busqueda', mtInformation, [mbOk], 0);
      Screen.Cursor := crDefault;
      Exit;
   End;
   btnAExcel.Enabled := True;
   cdsReporte.EmptyDataSet;
   While Not DM1.cdsReporte.Eof Do
   Begin
      cdsReporte.Append;
      cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString       := DM1.cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString;
      cdsReporte.FieldByName('COD_MOD').AsString               := DM1.cdsReporte.FieldByName('COD_MOD').AsString;
      cdsReporte.FieldByName('DNI_ASO').AsString               := DM1.cdsReporte.FieldByName('DNI_ASO').AsString;
      cdsReporte.FieldByName('APELL_NOMBRE').AsString          := DM1.cdsReporte.FieldByName('APELL_NOMBRE').AsString;
      cdsReporte.FieldByName('TIP_ASO_OTO').AsString           := DM1.cdsReporte.FieldByName('TIP_ASO_OTO').AsString;
      cdsReporte.FieldByName('CANAL_OTORG').AsString           := DM1.cdsReporte.FieldByName('CANAL_OTORG').AsString;
      cdsReporte.FieldByName('UGEL_OTORG').AsString            := DM1.cdsReporte.FieldByName('UGEL_OTORG').AsString;
      cdsReporte.FieldByName('UGEL_ACTUAL').AsString           := DM1.cdsReporte.FieldByName('UGEL_ACTUAL').AsString;
      cdsReporte.FieldByName('NUMERO_CREDITO').AsString        := DM1.cdsReporte.FieldByName('NUMERO_CREDITO').AsString;
      cdsReporte.FieldByName('IMPORTE_OTORG').AsFloat          := DM1.cdsReporte.FieldByName('IMPORTE_OTORG').AsFloat;
      cdsReporte.FieldByName('FECHA_OTORG').AsString           := DM1.cdsReporte.FieldByName('FECHA_OTORG').AsString;
      cdsReporte.FieldByName('PLAZO_OTORG').AsInteger          := DM1.cdsReporte.FieldByName('PLAZO_OTORG').AsInteger;
      cdsReporte.FieldByName('IMPORTE_CUOTA').AsFloat          := DM1.cdsReporte.FieldByName('IMPORTE_CUOTA').AsFloat;
      cdsReporte.FieldByName('ESTADO_CUOTA1_ACTUAL').AsString  := DM1.cdsReporte.FieldByName('ESTADO_CUOTA1_ACTUAL').AsString;
      cdsReporte.FieldByName('VEN_PRI_CUO_ORI').AsString      := DM1.cdsReporte.FieldByName('VEN_PRI_CUO_ORI').AsString;
      cdsReporte.FieldByName('VEN_ULT_CUO_ORI').AsString       := DM1.cdsReporte.FieldByName('VEN_ULT_CUO_ORI').AsString;
      cdsReporte.FieldByName('ULT_CALIF_REGIST').AsString      := DM1.cdsReporte.FieldByName('ULT_CALIF_REGIST').AsString;
      cdsReporte.FieldByName('CUOTA_DIFERIDA_ACTUAL').AsString := DM1.cdsReporte.FieldByName('CUOTA_DIFERIDA_ACTUAL').AsString;
      DM1.cdsReporte.Next;
      cdsReporte.Post;
   End;
   cdsReporte.First;
   While Not cdsReporte.Eof Do
   Begin
      // NUMERO DE CUOTAS PENDIENTES
      xSql := 'SELECT COUNT(*) CUOPEN FROM CRE302 B WHERE ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)+' AND CREDID = '+QuotedStr(cdsReporte.FieldByName('NUMERO_CREDITO').AsString)+' AND CREESTID IN (''02'',''11'',''14'',''19'', ''27'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      // CREDITO ANTERIOR
      xSql := 'SELECT MAX(CREDID) NUMCREDIDANT FROM CRE301 WHERE ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)
      +' AND CREFOTORG IN (SELECT MAX(CREFOTORG) FROM CRE301 WHERE ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)
      +' AND CREFOTORG <> (SELECT MAX(CREFOTORG) FROM CRE301 WHERE ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)+' AND CREESTID NOT IN (''04'',''13''))'
      +' AND CREESTID NOT IN (''04'',''13''))';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSql);
      DM1.cdsQry2.Open;

      // ULTIMA FORMA DE PAGO DEL CREDITO ANTERIOR
      xSql := 'SELECT MAX(B.FORPAGODES) ULTFORPAGCREANT, MAX(A.FOPERAC) FECCANCREANT FROM CRE310 A, COB101 B WHERE A.ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)+' AND A.CREDID = '+QuotedStr(DM1.cdsQry2.FieldByName('NUMCREDIDANT').AsString)
      +' AND A.FOPERAC IN (SELECT MAX(FOPERAC) FROM CRE310 WHERE ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsQry2.FieldByName('NUMCREDIDANT').AsString)
      +' AND CREESTID NOT IN (''04'',''13'',''99'') AND NUMDEV IS NULL) AND A.FORPAGID = B.FORPAGOID';
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(xSql);
      DM1.cdsQry3.Open;

      // ESTADO DEL CREDITO ANTERIOR
      xSql := 'SELECT CREESTADO ESTCREANT FROM CRE301 WHERE ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsQry2.FieldByName('NUMCREDIDANT').AsString);
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xSql);
      DM1.cdsQry4.Open;
      // CUOTAS PENDIENTES DEL CREDITO ANTERIOR
      xSql := 'SELECT COUNT(1) CUOPENCREANT FROM CRE302 WHERE ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)+' AND CREDID = '+QuotedStr(DM1.cdsQry2.FieldByName('NUMCREDIDANT').AsString)
      +' AND CREESTID IN (''02'',''11'',''14'',''19'',''27'')';
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(xSql);
      DM1.cdsQry5.Open;
      // NUMERO DE CREDITOS ACTIVOS
      xSql := 'SELECT COUNT(1) NUMCREACT FROM CRE301 WHERE ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)+' AND CREESTID = ''02''';
      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSql);
      DM1.cdsQry6.Open;

      xSql := 'SELECT MAX(B.CREFVEN) FECHA_VEN_ACTUAL FROM CRE302 B WHERE ASOID = '+QuotedStr(cdsReporte.FieldByName('CODIGO_ASOCIADO').AsString)+' AND CREDID = '+QuotedStr(cdsReporte.FieldByName('NUMERO_CREDITO').AsString);
      DM1.cdsQry26.Close;
      DM1.cdsQry26.DataRequest(xSql);
      DM1.cdsQry26.Open;

      cdsReporte.Edit;
      cdsReporte.FieldByName('CUO_PEND_NUMERO').AsInteger  := DM1.cdsQry.FieldByName('CUOPEN').AsInteger;
      cdsReporte.FieldByName('FECHA_VEN_ACTUAL').AsDateTime := DM1.cdsQry26.FieldByName('FECHA_VEN_ACTUAL').AsDateTime;
      cdsReporte.FieldByName('ULTFORPAGCREANT').AsString   := DM1.cdsQry3.FieldByName('ULTFORPAGCREANT').AsString;
      cdsReporte.FieldByName('ESTCREANT').AsString         := DM1.cdsQry4.FieldByName('ESTCREANT').AsString;
      cdsReporte.FieldByName('FECCANCREANT').AsDateTime    := DM1.cdsQry3.FieldByName('FECCANCREANT').AsDateTime;
      cdsReporte.FieldByName('CUOPENCREANT').AsInteger     := DM1.cdsQry5.FieldByName('CUOPENCREANT').AsInteger;
      cdsReporte.FieldByName('NUMCREACT').AsInteger        := DM1.cdsQry6.FieldByName('NUMCREACT').AsInteger;
      cdsReporte.Post;
      cdsReporte.Next;
   End;
   Screen.Cursor := crDefault;
end;

procedure TFcredsinpagpricuo.rgfiltroClick(Sender: TObject);
begin
   inicializa;
   If rgfiltro.ItemIndex = 0 Then
   Begin
      gbunidadgestion.Visible := True;
      gbunidadgestion.Top := 14;
      gbunidadgestion.Left := 271;
      gbOficina.Visible := False;
   End;
   If rgfiltro.ItemIndex = 1 Then
   Begin
      gbOficina.Visible := True;
      gbOficina.Top := 14;
      gbOficina.Left := 271;
      gbunidadgestion.Visible := False;
   End;
end;


procedure TFcredsinpagpricuo.dblcdOficinaExit(Sender: TObject);
begin
  If dblcdOficina.Text = '' Then
  Begin
     meOficina.Text := '';
     Exit;
  End;
  If DM1.cdsOfDes.Locate('OFDESID', dblcdOficina.Text, []) Then
  Begin
     meOficina.Text := DM1.cdsOfDes.FieldByName('OFDESNOM').AsString;
  End
  Else
  Begin
     MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
     dblcdOficina.Text := '';
     dblcdOficina.SetFocus;
  End;
end;


procedure TFcredsinpagpricuo.dblcdCodUniProExit(Sender: TObject);
Var xSql:String;
begin
   If dblcdCodUniPro.Text = '' Then
   Begin
      meDescUniPro.Text := '';
      dblcdCodUniPag.Text := '';
      meDescUniPag.Text := '';
      dblcdCodUniPag.Enabled := False;
      dblcdCodUniGes.Text := '';
      meDescUniGes.Text := '';
      dblcdCodUniGes.Enabled := False;
      Exit;
   End;
   If DM1.cdsUPro.Locate('UPROID', dblcdCodUniPro.Text, []) Then
   Begin
      meDescUniPro.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
      dblcdCodUniPag.Text := '';
      meDescUniPag.Text := '';
      dblcdCodUniGes.Text := '';
      meDescUniGes.Text := '';
      dblcdCodUniPag.Enabled := True;
      dblcdCodUniGes.Enabled := False;
      xSql := 'SELECT UPROID, UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcdCodUniPro.Text)+' ORDER BY UPAGOID';
      DM1.cdsUPago.Close;
      DM1.cdsUPago.DataRequest(xSql);
      DM1.cdsUPago.Open;
      dblcdCodUniPag.Selected.Clear;
      dblcdCodUniPag.Selected.Add('UPAGOID'#9'4'#9'Código'#9#9);
      dblcdCodUniPag.Selected.Add('UPAGONOM'#9'30'#9'Descripción'#9#9);
      dblcdCodUniPag.SetFocus;
   End
   Else
   Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdCodUniPro.Text := '';
      dblcdCodUniPag.Text := '';
      meDescUniPag.Text := '';
      dblcdCodUniGes.Text := '';
      meDescUniGes.Text := '';
      meDescUniPro.SetFocus;
      dblcdCodUniPag.Enabled := False;
      dblcdCodUniGes.Enabled := False;
   End;
end;

procedure TFcredsinpagpricuo.dblcdCodUniPagExit(Sender: TObject);
Var xSql:String;
begin
   If dblcdCodUniPag.Text = '' Then
   Begin
      meDescUniPag.Text := '';
      dblcdCodUniGes.Text := '';
      meDescUniGes.Text := '';
      dblcdCodUniGes.Enabled := False;
      Exit;
   End;
   If DM1.cdsUPago.Locate('UPROID;UPAGOID', VarArrayOf([dblcdCodUniPro.Text,dblcdCodUniPag.Text]),[]) Then
   Begin
      meDescUniPag.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
      dblcdCodUniGes.Text := '';
      meDescUniGes.Text := '';
      dblcdCodUniGes.Enabled := True;
      xSql := 'SELECT UPROID, UPAGOID, USEID, USENOM FROM APO101 WHERE UPROID = '+QuotedStr(dblcdCodUniPro.Text)+' AND UPAGOID = '+QuotedStr(dblcdCodUniPag.Text);
      DM1.cdsUSES.Close;
      DM1.cdsUSES.DataRequest(xSql);
      DM1.cdsUSES.Open;
      dblcdCodUniGes.Selected.Clear;
      dblcdCodUniGes.Selected.Add('USEID'#9'4'#9'Código'#9#9);
      dblcdCodUniGes.Selected.Add('USENOM'#9'30'#9'Descripción'#9#9);
      dblcdCodUniGes.SetFocus;
   End
   Else
   Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdCodUniPag.Text := '';
      dblcdCodUniGes.Text := '';
      meDescUniGes.Text := '';
      meDescUniPag.SetFocus;
   End;
end;

procedure TFcredsinpagpricuo.dblcdCodUniGesExit(Sender: TObject);
begin
   If dblcdCodUniGes.Text = '' Then
   Begin
      meDescUniGes.Text := '';
      Exit;
   End;
   If DM1.cdsUSES.Locate('UPROID;UPAGOID;USEID', VarArrayOf([dblcdCodUniPro.Text,dblcdCodUniPag.Text,dblcdCodUniGes.Text]),[]) Then
   Begin
      meDescUniGes.Text := DM1.cdsUSES.FieldByName('USENOM').AsString;
   End
   Else
   Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdCodUniGes.Text := '';
      meDescUniGes.Text   := '';
   End;
end;

procedure TFcredsinpagpricuo.btnAExcelClick(Sender: TObject);
var
  xArchivo : String;
begin
   Try
      DM1.HojaExcel('Rep_Cuotas_1_sinPago', dsReporte, DBGAExcel);
   Except
      On Ex: Exception Do
         Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
   End;
end;

procedure TFcredsinpagpricuo.inicializa;
begin
   btnAExcel.Enabled := False;
   cdsReporte.EmptyDataSet;
   DM1.cdsReporte.Close;
end;

procedure TFcredsinpagpricuo.dbdtpInicialChange(Sender: TObject);
begin
   inicializa;
end;

procedure TFcredsinpagpricuo.dbdtpFinalChange(Sender: TObject);
begin
   inicializa;
end;

procedure TFcredsinpagpricuo.dblcdCodUniProChange(Sender: TObject);
begin
   inicializa;
end;

procedure TFcredsinpagpricuo.dblcdCodUniPagChange(Sender: TObject);
begin
   inicializa;
end;

procedure TFcredsinpagpricuo.dblcdCodUniGesChange(Sender: TObject);
begin
   inicializa;
end;

procedure TFcredsinpagpricuo.dblcdOficinaChange(Sender: TObject);
begin
   inicializa;
end;

end.
//Final HPC_201814_COB