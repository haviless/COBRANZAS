unit COB436;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, ComCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid,
  DB, DBClient, ppCtrls, ppBands, ppClass, ppPrnabl, ppDB,
  ppCache, Wwdatsrc, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE,
  ppVar;

type
  TFCrtlCobFtp = class(TForm)
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    TdFecARch: TDateTimePicker;
    dblcOfcDes: TwwDBLookupCombo;
    edtOficina: TEdit;
    GroupBox1: TGroupBox;
    wwDBGrid1: TwwDBGrid;
    BitBtn2: TBitBtn;
    btnProc: TBitBtn;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText10: TppDBText;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppxdatos: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppShape2: TppShape;
    ppLabel11: TppLabel;
    ppShape3: TppShape;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel16: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    procedure FormActivate(Sender: TObject);
    procedure dblcOfcDesChange(Sender: TObject);
    procedure btnProcClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCrtlCobFtp: TFCrtlCobFtp;

implementation

uses COBDM1;

{$R *.dfm}

procedure TFCrtlCobFtp.FormActivate(Sender: TObject);
VAR xSql: string;

begin
  xSQL := ' SELECT OFDESID,OFDESNOM,substr(OFDESABR,1,3) OFDESABR'+
          ' FROM APO110 WHERE OFDESID <> '+QuotedStr('01');
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  DM1.cdsQry5.IndexFieldNames := 'OFDESID';

  xSql:='SELECT ASOCODMOD,ASOAPENOM,CREDID,CRECUOTA,CREFPAG,FORPAGABR,CREMTOCOB,CREAMORT,CREINTERES,CREFLAT,CREMTOEXC,ARCHIVOFTP  FROM CRE310 WHERE ASOID=''XXXX'' ';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSql);
  DM1.cdsQry2.Open;

  GroupBox3.Enabled := True;
  GroupBox1.Enabled := False;
end;



procedure TFCrtlCobFtp.dblcOfcDesChange(Sender: TObject);

begin
edtOficina.Text := dm1.cdsQry5.fieldbyname('OFDESNOM').AsString;
end;


procedure TFCrtlCobFtp.btnProcClick(Sender: TObject);
var xSql,xArch3,xArch4:string;
    VCREMTOCOB,VCREAMORT,VCREINTERES,VCREFLAT,VCREMTOEXC :currency;
begin

 //Ubica el archivo descargado en CRE115
   xArch3:=dm1.cdsQry5.Fieldbyname('OFDESABR').AsString+'3'+copy(DateToStr(TdFecARch.Date),1,2)+copy(DateToStr(TdFecARch.Date),4,2);
   xArch4:=dm1.cdsQry5.Fieldbyname('OFDESABR').AsString+'4'+copy(DateToStr(TdFecARch.Date),1,2)+copy(DateToStr(TdFecARch.Date),4,2);

   xSql:='Select * FROM CRE115 WHERE FILEFECH='''+DateToStr(TdFecARch.Date)+''' AND SUBSTR(FILENAME,1,8)='''+xArch3+''' ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;

   If DM1.cdsQry1.RecordCount = 0 then
      begin
       ShowMessage('No se Descargo informaciòn via FTP');
       exit;
      end
   else
      begin
        xSql:='Select * FROM CRE115 WHERE FILEFECH='''+DateToStr(TdFecARch.Date)+''' AND SUBSTR(FILENAME,1,8)='''+xArch4+''' ';
        DM1.cdsQry1.Close;
        DM1.cdsQry1.DataRequest(xSql);
        DM1.cdsQry1.Open;
        If DM1.cdsQry1.RecordCount = 0 then
           begin
            ShowMessage('No se Descargo informaciòn via FTP');
            exit;
           end;
      end;

 //Busca la informacion de los Pagos en los pagos en el CRE310
   DM1.cdsQry2.Close;
   xSql:='Select ASOCODMOD,ASOAPENOM,CREDID,CRECUOTA,CREFPAG,FORPAGABR,CREMTOCOB,CREAMORT,CREINTERES,CREFLAT,CREMTOEXC,ARCHIVOFTP '+
         ' From CRE310 '+
         ' WHERE ARCHIVOFTP='''+xArch4+ copy(DateToStr(TdFecARch.Date),7,4)+''' ';
   DM1.cdsQry2.DataRequest(xSql);
   DM1.cdsQry2.Open;

   //Totales
   DM1.cdsQry4.Close;
   xSql :='Select sum(CREMTOCOB) as TOTCREMTOCOB,SUM(CREAMORT) as TOTCREAMORT,sum(CREINTERES) as TOTCREINTERES,SUM(CREFLAT) as TOTCREFLAT,SUM(CREMTOEXC) as TOTCREMTOEXC'+
          ' From CRE310 '+
          ' WHERE ARCHIVOFTP='''+xArch4+ copy(DateToStr(TdFecARch.Date),7,4)+'''';
   DM1.cdsQry4.DataRequest(xSql);
   DM1.cdsQry4.Open;

   VCREMTOCOB  := DM1.cdsQry4.FieldByName('TOTCREMTOCOB').AsFloat;
   VCREAMORT   := DM1.cdsQry4.FieldByName('TOTCREAMORT').AsFloat;
   VCREINTERES := DM1.cdsQry4.FieldByName('TOTCREINTERES').AsFloat;
   VCREFLAT    := DM1.cdsQry4.FieldByName('TOTCREFLAT').AsFloat;
   VCREMTOEXC  := DM1.cdsQry4.FieldByName('TOTCREMTOEXC').AsFloat;

   wwDBGrid1.ColumnByName('CREMTOCOB').FooterValue  := FormatFloat( '###,###,###.00', VCREMTOCOB );
   wwDBGrid1.ColumnByName('CREAMORT').FooterValue   := FormatFloat( '###,###,###.00', VCREAMORT);
   wwDBGrid1.ColumnByName('CREINTERES').FooterValue := FormatFloat( '###,###,###.00', VCREINTERES);
   wwDBGrid1.ColumnByName('CREFLAT').FooterValue    := FormatFloat( '###,###,###.00', VCREFLAT);
   wwDBGrid1.ColumnByName('CREMTOEXC').FooterValue  := FormatFloat( '###,###,###.00', VCREMTOEXC);
 //----
  GroupBox3.Enabled := False;
  GroupBox1.Enabled := True;


end;

procedure TFCrtlCobFtp.BitBtn2Click(Sender: TObject);
var Xsql:string;
begin
  GroupBox3.Enabled := True;
  GroupBox1.Enabled := False;

  xSql:='SELECT ASOCODMOD,ASOAPENOM,CREDID,CRECUOTA,CREFPAG,FORPAGABR,CREMTOCOB,CREAMORT,CREINTERES,CREFLAT,CREMTOEXC,ARCHIVOFTP  FROM CRE310 WHERE ASOID=''XXXX'' ';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSql);
  DM1.cdsQry2.Open;
end;

procedure TFCrtlCobFtp.BitPrintClick(Sender: TObject);
begin
ppxdatos.Caption :=  edtOficina.Text+'  '+DateToStr(TdFecARch.Date);
ppBDEPipeline1.DataSource  := DM1.dsQry2;
ppReport1.Print;
end;

procedure TFCrtlCobFtp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm1.cdsQry1.Close;
DM1.cdsQry1.IndexFieldNames := '';
dm1.cdsQry2.Close;
DM1.cdsQry2.IndexFieldNames := '';
dm1.cdsQry5.Close;
DM1.cdsQry5.IndexFieldNames := '';
end;

end.
