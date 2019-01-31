unit COB982;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, ppDB, ppDBPipe, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport;

type
  TfRepAtenReclamos = class(TForm)
    BitSalir: TBitBtn;
    BitPrint: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    rdbSeleccion: TRadioGroup;
    rpReclamos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    Tit01: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    Tit02: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine11: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText5: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine9: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel24: TppLabel;
    ppLine12: TppLine;
    dbReclamos: TppDBPipeline;
    procedure BitSalirClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepAtenReclamos: TfRepAtenReclamos;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfRepAtenReclamos.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfRepAtenReclamos.BitPrintClick(Sender: TObject);
var xSQL,xWhere:String;
begin
     If rdbSeleccion.ItemIndex=-1 Then
        Begin
           MessageDlg('DEBE SELECCIONAR UN TIPO DE RESULTADO!!!', mtError, [mbOk], 0);
           Exit;
        End;
     Case rdbSeleccion.ItemIndex Of 0:xWhere:=' AND RECCONC=''01'' '; 1:xWhere:=' AND RECCONC=''02'' ';  2:xWhere:=' AND RECCONC=''03'' ';  3:xWhere:=' ';  End; Screen.Cursor := crHourglass;
     xSQL:='SELECT RECIDE,RECDNI,RECAPENOM,RECTIPIDE,B.REC_DESC,RECDESC,RECRECUSU,RECFECREC, '+
           'RECCONC,C.DES_TIPCON,FRECFECCON,RECUSUCON,RECDESCCON FROM TGE310  A,(SELECT ID_RECLAMO,REC_DESC FROM TGE311 WHERE ID_AREA=''COB'') B,TGE312 C '+
           'WHERE RECFECREC BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' AND RECAREA=''COB'' AND A.RECTIPIDE=B.ID_RECLAMO(+) AND A.RECCONC=C.ID_TIPCON(+) '+xWhere+' ORDER BY RECFECREC,RECIDE';
     DM1.cdsDpto.Close;
     DM1.cdsDpto.DataRequest(xSQL);
     DM1.cdsDpto.Open;
     If DM1.cdsDpto.RecordCount > 0 Then
        Begin
           Tit01.Caption:='ATENCION DE RECLAMOS DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
           Tit02.Caption:='RESULTADOS AL  : '+DateToStr(DM1.FechaSys)+'  -  '+UpperCase(rdbSeleccion.Items.Strings[rdbSeleccion.ItemIndex]) ;
           rpReclamos.Print;
           rpReclamos.Cancel;
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

procedure TfRepAtenReclamos.FormActivate(Sender: TObject);
begin
  DtpFecIni.Date:=DM1.FechaSys;
  DtpFecFin.Date:=DM1.FechaSys;
end;

end.
