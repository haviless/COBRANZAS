unit COB950;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, wwdbedit,
  Wwdbspin, Buttons, ExtCtrls, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppSubRpt, Db;

type
  TfAplDesTel = class(TForm)
    GroupBox1: TGroupBox;
    dtgAplTelDet: TwwDBGrid;
    grbProcesos: TGroupBox;
    prbAvances: TProgressBar;
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    BitSalir: TBitBtn;
    grbBuscar: TGroupBox;
    Label8: TLabel;
    EdtBuscar: TEdit;
    rdbAsoApe: TRadioButton;
    rdbAsoCta: TRadioButton;
    BitCtasInac: TBitBtn;
    BitMostar: TBitBtn;
    btnImporta: TBitBtn;
    BitDescarga: TBitBtn;
    BitIncons: TBitBtn;
    chkCampo: TCheckBox;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitCtasInacClick(Sender: TObject);
    procedure EdtBuscarChange(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitMostarClick(Sender: TObject);
    procedure rdbAsoApeClick(Sender: TObject);
    procedure rdbAsoCtaClick(Sender: TObject);
    procedure btnImportaClick(Sender: TObject);
    procedure BitDescargaClick(Sender: TObject);
    procedure BitInconsClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimpiaGrid;
  public
    { Public declarations }
  end;

var
  fAplDesTel: TfAplDesTel;

implementation

uses COB948, COBDM1, COB947, COB951, COB952, COB955;

{$R *.dfm}

procedure TfAplDesTel.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfAplDesTel.FormActivate(Sender: TObject);
var xCreSaldo,xMonEnvio,xMonRecup:Currency;
    xNumAso:Integer;
    xSQL:String;
begin
    LimpiaGrid;
end;

procedure TfAplDesTel.BitCtasInacClick(Sender: TObject);
var xCreSaldo,xMonEnvio,xMonRecup:Currency;
    xNumAso:Integer;
    xSQL:String;
begin
    Screen.Cursor := crHourglass;
    xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,NVL(MONRECUP,0) MONRECUP ,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) '  ;
    DM1.cdsDetalle.Close;
    DM1.cdsDetalle.DataRequest(xSQL);
    DM1.cdsDetalle.Open;
    TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
    TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='###';
    xSQL:='SELECT SUM(NVL(CRESALDO,0)) CRESALDO,SUM(NVL(MONENVIO,0)) MONENVIO,SUM(NVL(MONRECUP,0)) MONRECUP ,NVL(COUNT(*),0) NUMASO FROM COB402 WHERE PERCOB='+QuotedStr(Trim(fGenCobTel.dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(fGenCobTel.dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) ' ;
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    xCreSaldo:=DM1.cdsQry.FieldByName('CRESALDO').AsCurrency;
    xMonEnvio:=DM1.cdsQry.FieldByName('MONENVIO').AsCurrency;
    xMonRecup:=DM1.cdsQry.FieldByName('MONRECUP').AsCurrency;
    xNumAso:=DM1.cdsQry.FieldByName('NUMASO').AsInteger;
    dtgAplTelDet.ColumnByName('ASOAPENOM').FooterValue :='Total';
    dtgAplTelDet.ColumnByName('CRESALDO').FooterValue := FloatToStrF(xCreSaldo,ffNumber, 10, 2);
    dtgAplTelDet.ColumnByName('MONENVIO').FooterValue := FloatToStrF(xMonEnvio,ffNumber, 10, 2);
    dtgAplTelDet.ColumnByName('MONRECUP').FooterValue := FloatToStrF(xMonRecup,ffNumber, 10, 2);
    dtgAplTelDet.ColumnByName('ASONCTA').FooterValue := FloatToStrF(xNumAso,ffNumber, 7, 0)+' Reg.';
    Screen.Cursor := crDefault;

end;

procedure TfAplDesTel.EdtBuscarChange(Sender: TObject);
begin
If Length(Trim(EdtBuscar.Text))>0 Then
   Begin
      If rdbAsoApe.Checked Then
         DM1.cdsDetalle.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey])
      Else
         DM1.cdsDetalle.Locate('ASONCTA', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
   End;

end;

procedure TfAplDesTel.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
    Begin
      If Length(Trim(EdtBuscar.Text))>0 Then
         Begin
           EdtBuscar.Text:='';
           dtgAplTelDet.SetFocus;
         End
       Else
         Begin
           MessageDlg('Debe Digitar El Criterio,  Para Iniciar La Busqueda', mtError,[mbOk], 0 );
           EdtBuscar.SetFocus;
         End;
    End;

end;

procedure TfAplDesTel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfAplDesTel.BitMostarClick(Sender: TObject);
var xSQL,xSQL1,xCampo:String;
begin
If chkCampo.Checked Then
   xCampo:='MONRECPRE' Else xCampo:='MONRECUP';
If rdbAsoApe.Checked Then
   xSQL1:=' AND ASOAPENOM LIKE '+QuotedStr(Trim(EdtBuscar.Text)+'%');
If rdbAsoCta.Checked Then
   xSQL1:=' AND ASONCTA LIKE  '+QuotedStr(Trim(EdtBuscar.Text)+'%');
Screen.Cursor := crHourglass;
xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,NVL('+xCampo+',0) MONRECUP ,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE PERCOB='+QuotedStr(Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))])))+' AND SITCTA IN (''A'',''V'' ) '+xSQL1  ;
DM1.cdsDetalle.Close;
DM1.cdsDetalle.DataRequest(xSQL);
DM1.cdsDetalle.Open;
TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='###';
Screen.Cursor := crDefault;




end;

procedure TfAplDesTel.rdbAsoApeClick(Sender: TObject);
begin
EdtBuscar.Width:=368;  grbBuscar.Width:=567; EdtBuscar.Text:=''; BitMostar.Left:=521;
end;

procedure TfAplDesTel.rdbAsoCtaClick(Sender: TObject);
begin
  EdtBuscar.Width:=96;  grbBuscar.Width:=300; EdtBuscar.Text:=''; BitMostar.Left:=252;
end;

procedure TfAplDesTel.LimpiaGrid;
var xSQL:String;
begin
Screen.Cursor := crHourglass;
xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,SITCTA,CRESALDO,PORENVIO,MONENVIO,NVL(MONRECUP,0) MONRECUP ,IDTIPCOB,USUARIO,HREG FROM COB402 WHERE ASOID=''$%#@#$%%'' AND PERCOB='+QuotedStr('@!#$%^')+' AND SITCTA IN (''$'',''%'' ) '  ;
DM1.cdsDetalle.Close;
DM1.cdsDetalle.DataRequest(xSQL);
DM1.cdsDetalle.Open;
TNumericField(DM1.cdsDetalle.fieldbyname('CRESALDO')).DisplayFormat:='###,###,##0.#0';
TNumericField(DM1.cdsDetalle.fieldbyname('MONENVIO')).DisplayFormat:='###,###,##0.#0';
TNumericField(DM1.cdsDetalle.fieldbyname('PORENVIO')).DisplayFormat:='###';
dtgAplTelDet.ColumnByName('ASOAPENOM').FooterValue :='Total';
dtgAplTelDet.ColumnByName('CRESALDO').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgAplTelDet.ColumnByName('MONENVIO').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgAplTelDet.ColumnByName('MONRECUP').FooterValue := FloatToStrF(0,ffNumber, 10, 2);
dtgAplTelDet.ColumnByName('ASONCTA').FooterValue := FloatToStrF(0,ffNumber, 7, 0)+' Reg.';
Screen.Cursor := crDefault;
end;

procedure TfAplDesTel.btnImportaClick(Sender: TObject);
begin
  Try
    fImpTelTex := TfImpTelTex.Create(Self);
    fImpTelTex.dbsAnoIni.Text:=dbsAnoIni.Text;
    fImpTelTex.dbsMesIni.Text:=dbsMesIni.Text;
    fImpTelTex.lblNomMes.Caption:=lblNomMes.Caption;
    fImpTelTex.ShowModal;
  Finally
    fImpTelTex.Free;
  end;
end;

procedure TfAplDesTel.BitDescargaClick(Sender: TObject);
var xSQL,xPeriodo:String;
begin
  Screen.Cursor := crHourGlass;
  xPeriodo   := DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2);
  xSQL:='UPDATE COB351 A SET VALIDA=''N'',FLAINC=''S'',USUARIO='+QuotedStr(DM1.wUsuario)+',HREG=SYSDATE WHERE PERIODO='+QuotedStr(xPeriodo)+' AND ASOID IS NULL ';
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  Screen.Cursor := crDefault;
  Try
    fAplCroTel := TfAplCroTel.Create(Self);
    fAplCroTel.dbsAnoIni.Text:=dbsAnoIni.Text;
    fAplCroTel.dbsMesIni.Text:=dbsMesIni.Text;
    fAplCroTel.lblNomMes.Caption:=lblNomMes.Caption;
    fAplCroTel.ShowModal;
  Finally
    fAplCroTel.Free;
  end;

end;

procedure TfAplDesTel.BitInconsClick(Sender: TObject);
var xSQL,xPeriodo:String;
begin
  Screen.Cursor := crHourGlass;
  xPeriodo   := DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2);
  xSQL:='UPDATE COB351 A SET VALIDA=''N'',FLAINC=''S'',USUARIO='+QuotedStr(DM1.wUsuario)+',HREG=SYSDATE WHERE PERIODO='+QuotedStr(xPeriodo)+' AND ASOID IS NULL ';
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,MONTO FROM COB351 WHERE PERIODO='+QuotedStr(xPeriodo)+' AND FLAINC=''S'' ';
  DM1.cdsProf.Close;
  DM1.cdsProf.DataRequest(xSQL);
  DM1.cdsProf.Open;
  TNumericField(DM1.cdsProf.fieldbyname('MONTO')).DisplayFormat:='###,###,##0.#0';
  If DM1.cdsProf.RecordCount > 0 Then
     Begin
       Try
         fIncDesc := TfIncDesc.Create(Self);
         fIncDesc.dbsAnoIni.Text:=dbsAnoIni.Text;
         fIncDesc.dbsMesIni.Text:=dbsMesIni.Text;
         fIncDesc.lblNomMes.Caption:=lblNomMes.Caption;
         fIncDesc.ShowModal;
       Finally
         fIncDesc.Free;
       end;
     End
  Else
     Begin
        MessageDlg('No Existen Inconsistencias Para Este Periodo', mtInformation,[mbOk], 0 );
        DM1.cdsProf.Close;
     End;
  Screen.Cursor := crDefault;

end;

end.
