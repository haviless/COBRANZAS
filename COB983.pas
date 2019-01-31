unit COB983;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, ppDB, ppDBPipe, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport;

type
  TfCobPorcPer = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    rpCobPorc: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    Titulo: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLabel27: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText10: TppDBText;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine13: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLabel26: TppLabel;
    ppLine18: TppLine;
    dbCobPorc: TppDBPipeline;
    dbCobPorcppField1: TppField;
    dbCobPorcppField2: TppField;
    dbCobPorcppField3: TppField;
    dbCobPorcppField4: TppField;
    dbCobPorcppField5: TppField;
    dbCobPorcppField6: TppField;
    dbCobPorcppField7: TppField;
    dbCobPorcppField8: TppField;
    dbCobPorcppField9: TppField;
    dbCobPorcppField10: TppField;
    dbCobPorcppField11: TppField;
    dbCobPorcppField12: TppField;
    dbCobPorcppField13: TppField;
    dbCobPorcppField14: TppField;
    dbCobPorcppField15: TppField;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCobPorcPer: TfCobPorcPer;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfCobPorcPer.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfCobPorcPer.FormActivate(Sender: TObject);
begin
  DtpFecIni.Date:=DM1.FechaSys;
  DtpFecFin.Date:=DM1.FechaSys;
end;

procedure TfCobPorcPer.BitPrintClick(Sender: TObject);
var xSQL:String;
begin
    Screen.Cursor := crHourglass;
    xSQL:='SELECT TO_DATE(A.HREG) FECHA,A.ASOID,CREDID,SUBSTR(CREDID,7,2)||''-''||SUBSTR(CREDID,11,5)||''-''||SUBSTR(CREDID,3,4) NUMERO,CRECUOTA,B.ASOAPENOMDNI,CRESALDO,PORENVIO,CREMONENV,CREESTID,CREESTADO,CREFVEN, '+
          'A.USUARIO,USUANU,FECANU FROM COB_CUO_DES_PRO A,APO201 B WHERE TO_DATE(A.HREG) BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' AND A.ASOID=B.ASOID';
    DM1.cdsDpto.Close;
    DM1.cdsDpto.DataRequest(xSQL);
    DM1.cdsDpto.Open;
    If DM1.cdsDpto.RecordCount > 0 Then
       Begin
         Titulo.Caption:='DETALLES DE REGISTROS POR COBRANZA PORCENTUAL DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
         rpCobPorc.Print;
         rpCobPorc.Cancel;
       End
    Else
       Begin
           Screen.Cursor := crDefault;
           MessageDlg('NO EXISTE INFORMACION PARA ESTE RANGO!!!', mtError, [mbOk], 0);
           Exit;
       End;
       DM1.cdsDpto.Close;
       Screen.Cursor := crDefault;
end;

end.
