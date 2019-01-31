unit COB978;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdblook, wwdbdatetimepicker, ppDB, ppDBPipe,
  ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppCache;

type
  TFRepAnuIngLote = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    gbFiltro: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    dblUpro: TwwDBLookupCombo;
    edtUpro: TEdit;
    dblUpago: TwwDBLookupCombo;
    edtUpag: TEdit;
    btnImprimir: TBitBtn;
    BtnCancelar: TBitBtn;
    RepAnulacion: TppReport;
    ppBDEP1: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel49: TppLabel;
    ppLFecha2: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel8: TppLabel;
    ppShape1: TppShape;
    ppLabel9: TppLabel;
    ppDBText14: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel10: TppLabel;
    ppDBText15: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppDBText16: TppDBText;
    procedure btnImprimirClick(Sender: TObject);
    procedure dblUproChange(Sender: TObject);
    procedure dblUproExit(Sender: TObject);
    procedure dblUpagoChange(Sender: TObject);
    procedure dblUpagoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepAnuIngLote: TFRepAnuIngLote;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFRepAnuIngLote.btnImprimirClick(Sender: TObject);
VAR XSQL,xWhere1,xWhere2:STRING;
begin

If Length(Trim(dblUpro.Text))  = 3 Then xWhere1:='And A.UPROID='''+Trim(dblUpro.Text)+''' '   Else xWhere1:='' ;
If Length(Trim(dblUpago.Text)) = 2 Then xWhere2:='And A.UPAGOID='''+Trim(dblUpago.Text)+''' ' Else xWhere2:='' ;

XSQL:='Select A.UPROID,C.UPRONOM,A.UPAGOID,B.UPAGONOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.TRANSNOPE,A.TRANSFOPE,A.TRANSANO,A.TRANSMES,A.TRANSAPO,A.TRANSCUO,A.USUANU,A.FECANU '+
      'From APO_ANU_ING_LOT A,APO103 B,APO102 C '+
      'Where TO_DATE(FECANU)>='''+dbdtpInicio.Text+''' AND TO_DATE(FECANU)<='''+dbdtpFinal.Text+''' '+
      'AND A.UPROID=C.UPROID(+) AND A.UPROID=B.UPROID(+) AND A.UPAGOID=B.UPAGOID(+) '+xWhere1+xWhere2 +
      'ORDER BY A.UPROID,A.UPAGOID,A.ASOAPENOM ';
DM1.cdsQry.Close;
DM1.cdsQry.DataRequest(XSQL);
DM1.cdsQry.Open;

If Dm1.cdsQry.RecordCount=0 Then
   Begin
     ShowMessage('No Existe Información para Procesar');
     DM1.cdsQry.Close;
     DM1.cdsQry.IndexFieldNames:='';
     Exit;
   End;
ppBDEP1.DataSource := DM1.dsQry;
ppLFecha2.Caption := 'Fechas de Anulación del '+dbdtpInicio.Text+' al '+dbdtpFinal.Text;

RepAnulacion.Print;
RepAnulacion.Stop;

end;

procedure TFRepAnuIngLote.dblUproChange(Sender: TObject);
begin
  edtUpro.Text := DM1.cdsQry3.FieldByName('UPRONOM').AsString;
  dblUpago.Text:=''; edtUpag.Text:='';
  if Length(trim(dblUpago.Text))=0  Then dblUpago.Enabled := False ;
end;

procedure TFRepAnuIngLote.dblUproExit(Sender: TObject);
var xsql:string;
begin
  if Length(Trim(dblUpro.Text))=0 Then edtUpro.Text:='' Else
  edtUpro.Text := DM1.cdsQry3.FieldByName('UPRONOM').AsString;
  XSQL:='SELECT UPAGOID,UPAGONOM FROM APO103 WHERE UPROID='''+dblUpro.Text +''' ';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(XSQL);
  DM1.cdsQry4.Open;
  if DM1.cdsQry4.RecordCount > 0 then  dblUpago.Enabled:= True else dblUpago.Enabled:=False;
  dblUpago.LookupTable := DM1.cdsQry4;
  dblUpago.LookupField := 'UPAGOID';
end;

procedure TFRepAnuIngLote.dblUpagoChange(Sender: TObject);
begin
edtUpag.Text := DM1.cdsQry4.FieldByName('UPAGONOM').AsString;
end;

procedure TFRepAnuIngLote.dblUpagoExit(Sender: TObject);
begin
  if Length(Trim(dblUpago.Text))=0 Then edtUpag.Text:='' Else
  edtUpag.Text := DM1.cdsQry4.FieldByName('UPAGONOM').AsString;
end;

procedure TFRepAnuIngLote.FormCreate(Sender: TObject);
var xsql:string;
begin
  Xsql:='SELECT UPROID,UPRONOM FROM APO102 ';
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(Xsql);
  DM1.cdsQry3.Open;
  dblUpro.LookupTable := DM1.cdsQry3;
  dblUpro.LookupField := 'UPROID';
  if DM1.cdsQry3.RecordCount > 0 then  dblUpro.Enabled:= True else dblUpro.Enabled:=False;
end;

procedure TFRepAnuIngLote.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;
end;

procedure TFRepAnuIngLote.BtnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFRepAnuIngLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM1.cdsQry.Close;
DM1.cdsQry3.Close;
DM1.cdsQry4.Close;
DM1.cdsQry.IndexFieldNames:='';
DM1.cdsQry3.IndexFieldNames:='';
DM1.cdsQry4.IndexFieldNames:='';
end;

end.
