unit COB939;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TfDetGestAso = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    dtgResGesAso: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    lblDatos: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblUses: TLabel;
    DbOfides: TppDBPipeline;
    RepOfides: TppReport;
    ppHeaderBand29: TppHeaderBand;
    lblTitulo: TppLabel;
    ppLabel599: TppLabel;
    ppLabel600: TppLabel;
    ppLabel601: TppLabel;
    ppLabel602: TppLabel;
    ppLabel603: TppLabel;
    ppSystemVariable56: TppSystemVariable;
    ppSystemVariable57: TppSystemVariable;
    ppSystemVariable58: TppSystemVariable;
    ppLabel604: TppLabel;
    ppLabel605: TppLabel;
    ppLabel606: TppLabel;
    lblTitulo01: TppLabel;
    ppDetailBand31: TppDetailBand;
    ppDBText251: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText255: TppDBText;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    ppDBText258: TppDBText;
    ppDBText259: TppDBText;
    ppLabel590: TppLabel;
    ppLabel591: TppLabel;
    ppLabel592: TppLabel;
    ppLine151: TppLine;
    ppFooterBand24: TppFooterBand;
    ppSummaryBand29: TppSummaryBand;
    ppLabel610: TppLabel;
    ppLabel613: TppLabel;
    ppLine155: TppLine;
    ppLine152: TppLine;
    ppDBCalc217: TppDBCalc;
    ppGroup40: TppGroup;
    ppGroupHeaderBand40: TppGroupHeaderBand;
    ppDBText249: TppDBText;
    ppLabel594: TppLabel;
    ppGroupFooterBand40: TppGroupFooterBand;
    ppLabel609: TppLabel;
    ppLabel612: TppLabel;
    ppLine154: TppLine;
    ppDBCalc216: TppDBCalc;
    ppGroup41: TppGroup;
    ppGroupHeaderBand41: TppGroupHeaderBand;
    ppDBText250: TppDBText;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLabel595: TppLabel;
    ppLabel596: TppLabel;
    ppLabel597: TppLabel;
    ppLabel593: TppLabel;
    ppGroupFooterBand41: TppGroupFooterBand;
    ppLabel608: TppLabel;
    ppLabel611: TppLabel;
    ppDBCalc215: TppDBCalc;
    BitPrint: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetGestAso: TfDetGestAso;

implementation

uses COBDM1, COB929;

{$R *.dfm}

procedure TfDetGestAso.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfDetGestAso.BitPrintClick(Sender: TObject);
var xSQL:String;
begin

  xSQL:='SELECT B.UPROID,B.UPAGOID,B.USEID,G.USENOM,B.ASOCODMOD,A.ASOID,B.ASOAPENOM,A.IDMET,C.DESCRIPCION DESCRIPCION01, A.IDJUS,D.DESCRIPCION DESCRIPCION02, '+
        'A.IDSOL,E.DESCRIPCION DESCRIPCION03,H.USERNOM USUARIO,A.FREG,A.OFDESID,F.OFDESNOM,A.OTMET,A.OTJUS,A.OTOSOL FROM COB907 A,APO201 B,COB904 C,COB905 D,COB906 E,APO110 F,APO101 G,TGE006 H '+
        'WHERE A.FREG BETWEEN '+QuotedStr(DateToStr(fRepDetGest.DtpFecIni.Date))+' AND '+QuotedStr(DateToStr(fRepDetGest.DtpFecFin.Date))+' AND A.OFDESID='+QuotedStr(DM1.cdsDetRegCob.FieldByName('OFDESID').AsString)+' AND A.ASOID=B.ASOID AND  A.IDMET=C.ID AND A.IDJUS=D.ID AND '+
        'A.IDSOL=E.ID AND A.OFDESID=F.OFDESID AND B.UPROID=G.UPROID AND B.UPAGOID=G.UPAGOID AND B.USEID=G.USEID AND B.UPROID=G.UPROID AND B.UPAGOID=G.UPAGOID AND B.USEID=G.USEID AND A.USUARIO=H.USERID AND  G.UPROID='+QuotedStr(DM1.cdsDetRegCob1.FieldByName('UPROID').AsString)+' AND G.UPAGOID='+QuotedStr(DM1.cdsDetRegCob1.FieldByName('UPAGOID').AsString)+' AND G.USEID='+QuotedStr(DM1.cdsDetRegCob1.FieldByName('USEID').AsString)+' '+
        'ORDER BY A.FREG,F.OFDESNOM,G.USENOM';


  DM1.cdsAbonoCuotas.Close;
  DM1.cdsAbonoCuotas.DataRequest(xSQL);
  DM1.cdsAbonoCuotas.Open;
  If DM1.cdsAbonoCuotas.RecordCount>0 Then
     Begin
         lblTitulo.Caption:='DETALLE DE GESTION DE COBRANZA - '+DM1.cdsDetRegCob1.FieldByName('USEID').AsString+' - '+DM1.cdsDetRegCob1.FieldByName('USENOM').AsString;
         lblTitulo01.Caption:='DEL '+DateToStr(fRepDetGest.DtpFecIni.Date)+' AL  '+DateToStr(fRepDetGest.DtpFecFin.Date)+' - POR USES/UGEL ESPECIFICA';
         RepOfides.Print;
         RepOfides.Cancel;
     End;
     DM1.cdsAbonoCuotas.Close;
end;

procedure TfDetGestAso.CheckBox1Click(Sender: TObject);
begin
     MessageDlg('Opción En Etapa De Desarrollo...!', mtInformation, [mbOk], 0);
end;

end.





