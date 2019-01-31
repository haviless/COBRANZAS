unit COB955;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Mask,
  wwdbedit, Wwdbspin, Db, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe;

type
  TfIncDesc = class(TForm)
    dtgAplTelDet: TwwDBGrid;
    BitSalir: TBitBtn;
    pnlAcepta: TPanel;
    dtgAso: TwwDBGrid;
    grbParametros: TGroupBox;
    lblNomMes: TLabel;
    dbsAnoIni: TwwDBSpinEdit;
    dbsMesIni: TwwDBSpinEdit;
    BitCerrar: TBitBtn;
    Shape1: TShape;
    dbCadena: TwwDBSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    EdtAsoApeNom: TEdit;
    EdtCuenta: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Shape2: TShape;
    BitPrint: TBitBtn;
    BitCargaDatos: TBitBtn;
    DbRepDetx: TppDBPipeline;
    RepDetx: TppReport;
    ppHeaderBand36: TppHeaderBand;
    lblTitulo04: TppLabel;
    ppLabel677: TppLabel;
    ppLabel103: TppLabel;
    ppLabel689: TppLabel;
    ppLabel732: TppLabel;
    ppLabel733: TppLabel;
    ppSystemVariable77: TppSystemVariable;
    ppSystemVariable78: TppSystemVariable;
    ppSystemVariable79: TppSystemVariable;
    ppLabel734: TppLabel;
    ppLabel735: TppLabel;
    ppLabel736: TppLabel;
    ppDetailBand38: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText305: TppDBText;
    ppFooterBand31: TppFooterBand;
    ppSummaryBand36: TppSummaryBand;
    ppLabel737: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppLabel750: TppLabel;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure dtgAplTelDetDblClick(Sender: TObject);
    procedure BitCerrarClick(Sender: TObject);
    procedure BitCargaDatosClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIncDesc: TfIncDesc;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfIncDesc.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfIncDesc.dtgAplTelDetDblClick(Sender: TObject);
var xSQL:String;
begin
dtgAplTelDet.Enabled:=False; BitSalir.Enabled:=False;  BitPrint.Enabled:=False; dbCadena.Enabled:=False;
pnlAcepta.Visible:=True;
xSQL:='SELECT ASOID,ASOAPENOM,ASODNI,ASONCTA,SITCTA FROM APO201 WHERE ASOAPENOM LIKE '+QuotedStr(Copy(Trim(DM1.cdsProf.FieldByName('ASOAPENOM').AsString),1,StrToInt(FloatToStr(dbCadena.Value)))+'%');
DM1.cdsPlantilla.Close;
DM1.cdsPlantilla.DataRequest(xSQL);
DM1.cdsPlantilla.Open;
If DM1.cdsPlantilla.RecordCount > 0 Then
   Begin
        If Length(Trim(DM1.cdsProf.FieldByName('ASOID').AsString))=0 Then
           BitCargaDatos.Enabled:=True Else BitCargaDatos.Enabled:=False;
   End
Else BitCargaDatos.Enabled:=False;

EdtAsoApeNom.Text:=DM1.cdsProf.FieldByName('ASOAPENOM').AsString;
EdtCuenta.Text:=DM1.cdsProf.FieldByName('ASONCTA').AsString;
end;

procedure TfIncDesc.BitCerrarClick(Sender: TObject);
begin
   dtgAplTelDet.Enabled:=True; BitSalir.Enabled:=True; BitPrint.Enabled:=True; dbCadena.Enabled:=True;
   pnlAcepta.Visible:=False;
end;

procedure TfIncDesc.BitCargaDatosClick(Sender: TObject);
var xSQL,xPeriodo:String;
begin
  Screen.Cursor := crHourGlass;
  xPeriodo   := DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2);
  xSQL:='UPDATE COB351 A SET ASOID='+QuotedStr(DM1.cdsPlantilla.FieldByName('ASOID').AsString)+',FLAINC=''S'',USUARIO='+QuotedStr(DM1.wUsuario)+',HREG=SYSDATE,VALIDA=NULL WHERE PERIODO='+QuotedStr(xPeriodo)+' AND ASOID IS NULL AND ASONCTA='+QuotedStr(DM1.cdsProf.FieldByName('ASONCTA').AsString) ;
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  dtgAplTelDet.Enabled:=True; BitSalir.Enabled:=True; BitPrint.Enabled:=True; dbCadena.Enabled:=True;
  pnlAcepta.Visible:=False;
  xSQL:='SELECT ASOID,ASOAPENOM,ASONCTA,MONTO FROM COB351 WHERE PERIODO='+QuotedStr(xPeriodo)+' AND FLAINC=''S'' ';
  DM1.cdsProf.Close;
  DM1.cdsProf.DataRequest(xSQL);
  DM1.cdsProf.Open;
  TNumericField(DM1.cdsProf.fieldbyname('MONTO')).DisplayFormat:='###,###,##0.#0';
  Screen.Cursor := crDefault;
end;

procedure TfIncDesc.BitPrintClick(Sender: TObject);
var xSQL,xPeriodo:String;
begin
   Screen.Cursor := crHourglass;
   xPeriodo   := DM1.StrZero(dbsAnoIni.Text,4)+DM1.StrZero(dbsMesIni.Text,2);
   xSQL:='SELECT ASOID,ASONCTA,ASOAPENOM,MONTO FROM COB351 WHERE PERIODO='+QuotedStr(xPeriodo)+' AND FLAINC IN (''S'' ) ORDER BY ASOAPENOM ';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;
   If DM1.cdsQry4.RecordCount > 0 Then
      Begin
          lblTitulo04.Caption:='INCONSISTENCIA DE CUENTAS DE AHORRO - '+Trim(lblNomMes.Caption)+'-'+Trim(dbsAnoIni.Text)  ;
          RepDetx.Print;
          RepDetx.Cancel;
      End;
      DM1.cdsQry4.Close;
   Screen.Cursor := crDefault;
end;

end.
