unit COB960;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, ppBands, ppClass,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe;

type
  TfRepReclas = class(TForm)
    GroupBox1: TGroupBox;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    rdb02: TRadioButton;
    rdb01: TRadioButton;
    pnlReclas: TPanel;
    rdbOD: TRadioButton;
    rdbOT: TRadioButton;
    DbRepDetx: TppDBPipeline;
    RepDetx: TppReport;
    ppHeaderBand36: TppHeaderBand;
    lblTitulo01: TppLabel;
    ppLabel677: TppLabel;
    ppLabel678: TppLabel;
    ppLabel689: TppLabel;
    ppLabel732: TppLabel;
    ppLabel733: TppLabel;
    ppSystemVariable77: TppSystemVariable;
    ppSystemVariable78: TppSystemVariable;
    ppSystemVariable79: TppSystemVariable;
    ppLabel734: TppLabel;
    ppLabel735: TppLabel;
    ppLabel736: TppLabel;
    ppLine169: TppLine;
    ppLine199: TppLine;
    ppDetailBand38: TppDetailBand;
    ppDBText277: TppDBText;
    ppDBText279: TppDBText;
    ppDBText289: TppDBText;
    ppDBText291: TppDBText;
    ppDBText309: TppDBText;
    ppDBText310: TppDBText;
    ppFooterBand31: TppFooterBand;
    ppSummaryBand36: TppSummaryBand;
    ppLabel737: TppLabel;
    ppLine164: TppLine;
    ppDBCalc203: TppDBCalc;
    ppDBCalc233: TppDBCalc;
    ppLabel750: TppLabel;
    ppLine133: TppLine;
    ppGroup50: TppGroup;
    ppGroupHeaderBand50: TppGroupHeaderBand;
    ppDBText305: TppDBText;
    ppLabel831: TppLabel;
    ppGroupFooterBand50: TppGroupFooterBand;
    ppLabel738: TppLabel;
    ppDBCalc205: TppDBCalc;
    ppLabel741: TppLabel;
    ppDBCalc242: TppDBCalc;
    ppLine196: TppLine;
    ppGroup51: TppGroup;
    ppGroupHeaderBand51: TppGroupHeaderBand;
    ppDBText333: TppDBText;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLabel744: TppLabel;
    ppLabel745: TppLabel;
    ppLabel747: TppLabel;
    ppLabel748: TppLabel;
    ppLabel749: TppLabel;
    ppLabel755: TppLabel;
    ppLabel828: TppLabel;
    ppLabel829: TppLabel;
    ppLabel830: TppLabel;
    ppLabel832: TppLabel;
    ppGroupFooterBand51: TppGroupFooterBand;
    ppLabel742: TppLabel;
    ppLabel743: TppLabel;
    ppDBCalc244: TppDBCalc;
    ppDBCalc245: TppDBCalc;
    ppLine166: TppLine;
    DbRepDety: TppDBPipeline;
    DbRepDetyppField1: TppField;
    DbRepDetyppField2: TppField;
    DbRepDetyppField3: TppField;
    DbRepDetyppField4: TppField;
    DbRepDetyppField5: TppField;
    DbRepDetyppField6: TppField;
    DbRepDetyppField7: TppField;
    DbRepDetyppField8: TppField;
    DbRepDetyppField9: TppField;
    DbRepDetyppField10: TppField;
    RepDety: TppReport;
    ppHeaderBand1: TppHeaderBand;
    Titulo02: TppLabel;
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
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText7: TppDBText;
    ppLabel12: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel13: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel14: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine5: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText8: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine8: TppLine;
    rdb00: TRadioButton;
    ppLabel1: TppLabel;
    ppDBText9: TppDBText;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure rdb02Click(Sender: TObject);
    procedure rdb01Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepReclas: TfRepReclas;

implementation

uses COBDM1;

{$R *.dfm}

procedure TfRepReclas.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfRepReclas.FormActivate(Sender: TObject);
begin
DtpFecIni.Date:=DM1.FechaSys; DtpFecFin.Date:=DM1.FechaSys;
end;

procedure TfRepReclas.BitPrintClick(Sender: TObject);
var xSQL,xWhere,xTitulo:String;
begin
If rdb00.Checked Then
   Begin
      xSQL:='SELECT NVL(C.DPTODES,''NO IDENTIFICADO'') DPTODES,NVL(B.USENOM,''NO IDENTIFICADO'') USENOM,A.UPROID,A.UPAGOID,A.USEID,ASOAPENOM,ASOCODMOD,CREFPAG,CREDID, '+
            'A.FREG,CREDOCPAG,SUM(CREMTOCOB) CREMTOCOB,A.USUARIO FROM CRE310 A,APO101 B,APO158 C WHERE FORPAGID=''06'' AND A.USEID=B.USEID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.UPROID=B.UPROID(+) AND A.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
            'AND B.DPTOID=C.DPTOID(+) GROUP BY NVL(C.DPTODES,''NO IDENTIFICADO'') ,NVL(B.USENOM,''NO IDENTIFICADO'') ,A.UPROID, A.UPAGOID,A.USEID,ASOAPENOM,ASOCODMOD,CREFPAG,CREDID, A.FREG,CREDOCPAG,A.USUARIO  ORDER BY A.FREG,DPTODES,USENOM,CREDOCPAG';
      DM1.cdsUPro.Close;
      DM1.cdsUPro.DataRequest(xSQL);
      DM1.cdsUPro.Open;
      If DM1.cdsUPro.RecordCount > 0 Then
         Begin
             lblTitulo01.Caption:='APLICACION NORMAL DE EXCESOS DEL   :   '+DateToStr(DtpFecIni.Date)+'   AL   '+DateToStr(DtpFecFin.Date);
             RepDetx.Print;
             RepDetx.Cancel;
         End;
         DM1.cdsUPro.Close;

   End;
If rdb01.Checked Then
   Begin
      xSQL:='SELECT NVL(C.DPTODES,''NO IDENTIFICADO'') DPTODES,NVL(B.USENOM,''NO IDENTIFICADO'') USENOM,A.UPROID,A.UPAGOID,A.USEID,ASOAPENOM,ASOCODMOD,CREFPAG,CREDID, '+
            'A.FREG,CREDOCPAG,SUM(CREMTOCOB) CREMTOCOB,A.USUARIO FROM CRE310 A,APO101 B,APO158 C WHERE FORPAGID=''31'' AND A.USEID=B.USEID(+) AND A.UPAGOID=B.UPAGOID(+) AND A.UPROID=B.UPROID(+) AND A.FREG BETWEEN '+QuotedStr(DateToStr(DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(DtpFecFin.Date))+' '+
            'AND B.DPTOID=C.DPTOID(+) GROUP BY NVL(C.DPTODES,''NO IDENTIFICADO'') ,NVL(B.USENOM,''NO IDENTIFICADO'') ,A.UPROID, A.UPAGOID,A.USEID,ASOAPENOM,ASOCODMOD,CREFPAG,CREDID, A.FREG,CREDOCPAG,A.USUARIO  ORDER BY A.FREG,DPTODES,USENOM,CREDOCPAG';
      DM1.cdsUPro.Close;
      DM1.cdsUPro.DataRequest(xSQL);
      DM1.cdsUPro.Open;
      If DM1.cdsUPro.RecordCount > 0 Then
         Begin
             lblTitulo01.Caption:='APLICACION EXTEMPORANEA DE EXCESOS DEL   :   '+DateToStr(DtpFecIni.Date)+'   AL   '+DateToStr(DtpFecFin.Date);
             RepDetx.Print;
             RepDetx.Cancel;
         End;
         DM1.cdsUPro.Close;
   End;

If rdb02.Checked Then
   Begin
       If rdbOD.Checked Then
          Begin
             xWhere:=' AND CREESTID=''SP'' ';
             xTitulo:= 'RECLASIFICACION DE CREDITOS DEL  :  '+DateToStr(DtpFecIni.Date)+'   AL   '+DateToStr(DtpFecFin.Date)+' ('+Trim(rdbOD.Caption)+')';
          End
       Else
          Begin
             xWhere:=' AND CREESTID=''FT'' ';
             xTitulo:= 'RECLASIFICACION DE CREDITOS DEL  :  '+DateToStr(DtpFecIni.Date)+'   AL   '+DateToStr(DtpFecFin.Date)+' ('+Trim(rdbOT.Caption)+')';
          End;
       xSQL:='SELECT NVL(D.DPTODES,''NO IDENTIFICADO'') DPTODES,NVL(C.USENOM,''NO IDENTIFICADO'') USENOM,B.ASOCODMOD,B.ASOAPENOM,A.CREFOTORG,A.CREDID,A.CREMTOOTOR,  '+
             'FREC,CREESTID,CREESTADO FROM REC_CON_CRE A,APO201 B,APO101 C,APO158 D WHERE A.ASOID=B.ASOID AND B.USEID=C.USEID(+) AND B.UPAGOID=C.UPAGOID(+) AND B.UPROID=C.UPROID(+) AND C.DPTOID=D.DPTOID(+) '+xWhere+' ORDER BY A.FREC,DPTODES,USENOM ';
      DM1.cdsUPro.Close;
      DM1.cdsUPro.DataRequest(xSQL);
      DM1.cdsUPro.Open;
      If DM1.cdsUPro.RecordCount > 0 Then
         Begin
             Titulo02.Caption:=xTitulo;
             RepDetY.Print;
             RepDetY.Cancel;
         End;
         DM1.cdsUPro.Close;

   End;


end;

procedure TfRepReclas.rdb02Click(Sender: TObject);
begin
  If pnlReclas.Enabled Then
     pnlReclas.Enabled:=False
  Else
     pnlReclas.Enabled:=True;
end;

procedure TfRepReclas.rdb01Click(Sender: TObject);
begin
  pnlReclas.Enabled:=False;
end;

end.
